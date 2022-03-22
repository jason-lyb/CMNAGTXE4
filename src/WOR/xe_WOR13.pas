unit xe_WOR13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxStyles, cxCustomData, MSXML2_TLB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxButtons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_WOR13 = class(TForm)
    Panel1: TPanel;
    lb_wk_info: TLabel;
    lb_bad_score: TLabel;
    lb_good_score: TLabel;
    cxPlusLog_List: TcxGridDBTableView;
    cxPlusLog_Level: TcxGridLevel;
    cxPlusLog: TcxGrid;
    dtStDate: TcxDateEdit;
    dtEdDate: TcxDateEdit;
    Label2: TLabel;
    btnSearch: TcxButton;
    cxPlusLog_ListColumn1: TcxGridDBColumn;
    cxPlusLog_ListColumn2: TcxGridDBColumn;
    cxPlusLog_ListColumn3: TcxGridDBColumn;
    cxPlusLog_ListColumn4: TcxGridDBColumn;
    cxPlusLog_ListColumn5: TcxGridDBColumn;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxLblActive: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure Proc_Init;
    procedure Proc_Wk_PlusLog(types: string);
  public
    { Public declarations }
    procedure SetData_Param(Data: String);
  end;

var
  Frm_WOR13: TFrm_WOR13;

implementation

{$R *.dfm}

uses xe_Func, xe_packet, xe_Msg, xe_GNL;

var
  sWkSabun: string;

procedure TFrm_WOR13.SetData_Param(Data: string);
begin
  sWkSabun := Data;
end;

procedure TFrm_WOR13.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR13.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WOR13.FormCreate(Sender: TObject);
var
  Save: Integer;
  i : Integer;
begin
  try
    // 날짜형식이 'yy/mm/dd'일경우 오류 발생 가능성으로 인해 자체 Display 포맷 변경
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TcxDateEdit then
      begin
        (Components[i] as TcxDateEdit).Properties.DisplayFormat := 'yyyy/mm/dd';
        (Components[i] as TcxDateEdit).Properties.EditFormat    := 'yyyy/mm/dd';
      end;
    end;
  except
  end;

  // 폼 타이틀 제거..
  if BorderStyle = bsNone then
    Exit;
  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable:
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;
end;

procedure TFrm_WOR13.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR13.FormDestroy(Sender: TObject);
begin
  Frm_WOR13 := Nil;
end;

procedure TFrm_WOR13.Proc_Init;
begin
  frm_WOR13.Width := 657;
  frm_WOR13.Height := 423;
  //날짜 셋팅 (현재날짜에서 6개월 까지)
  dtEdDate.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd'), 1, 10))+2;
  dtStDate.Date := dtEdDate.Date - 180;

  //라벨 캠션 셋팅
  lb_wk_info.Caption := '기사정보[]';
  lb_bad_score.Caption := '페널티점수[]';
  lb_good_score.Caption := '플러스점수[]';
  //그리드 셋팅
  cxPlusLog_List.Columns[0].DataBinding.ValueType := 'String';
  cxPlusLog_List.Columns[1].DataBinding.ValueType := 'String';
  cxPlusLog_List.Columns[2].DataBinding.ValueType := 'String';
  cxPlusLog_List.Columns[3].DataBinding.ValueType := 'String';
  cxPlusLog_List.Columns[4].DataBinding.ValueType := 'String';
end;

procedure TFrm_WOR13.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR13, GS_FONTNAME);

  Proc_Init;
  Proc_Wk_PlusLog('1');
  Proc_Wk_PlusLog('2');
end;

procedure TFrm_WOR13.Proc_Wk_PlusLog(types: string);
var
  XmlData, Param, ErrMsg : string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode, iRow: Integer;
begin
  param := types + '│' + sWkSabun + '│' + StringReplace(DateToStr(dtStDate.Date), '-', '', [rfReplaceAll]) + '│' + StringReplace(DateToStr(dtEdDate.Date), '-', '', [rfReplaceAll]);

  if not RequestBase(GetSel05('GETWKPENALY', 'worker.get_plus_log', '10000', param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('기사정보 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);

    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
    if lst_Result.length > 0 then
    begin
      ls_Rcrd := TStringList.Create;
      try
        if types = '1' then
        begin
          GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
          lb_wk_info.Caption := '기사정보[ ' + ls_Rcrd[0] + ' ' + ls_Rcrd[1] + ' ]';
          if Copy(ls_Rcrd[2],0,1) = '.' then
            lb_bad_score.Caption := '페널티점수[ 0' + ls_Rcrd[2] + ' ]'
          else
            lb_bad_score.Caption := '페널티점수[ ' + ls_Rcrd[2] + ' ]';

          if Copy(ls_Rcrd[3],0,1) = '.' then
            lb_good_score.Caption := '플러스점수[ 0' + ls_Rcrd[3] + ' ]'
          else
            lb_good_score.Caption := '플러스점수[ ' + ls_Rcrd[3] + ' ]';
        end
        else if types = '2' then
        begin
          cxPlusLog_List.DataController.SetRecordCount(0);
          cxPlusLog_List.BeginUpdate;
          try
            for I := 0 to lst_Result.length - 1 do
            begin
              if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then
                Continue;
              GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

              iRow := cxPlusLog_List.DataController.AppendRecord;
              cxPlusLog_List.DataController.Values[iRow, 0] := ls_Rcrd[0];
              cxPlusLog_List.DataController.Values[iRow, 1] := ls_Rcrd[1] + '/' + ls_Rcrd[2] + '(' + ls_Rcrd[3] + ')';
              cxPlusLog_List.DataController.Values[iRow, 2] := ls_Rcrd[5];
              cxPlusLog_List.DataController.Values[iRow, 3] := ls_Rcrd[4];
              cxPlusLog_List.DataController.Values[iRow, 4] := ls_Rcrd[6];
            end;
          finally
            cxPlusLog_List.EndUpdate;
          end;
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WOR13.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_WOR13.btnSearchClick(Sender: TObject);
begin
  Proc_Wk_PlusLog('2');
end;

end.

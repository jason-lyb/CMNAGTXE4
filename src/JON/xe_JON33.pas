unit xe_JON33;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, MSXML2_TLB,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxContainer, dxSkinsCore, dxSkinscxPCPainter, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_JON33 = class(TForm)
    cxGrid_PenaltyList: TcxGridDBTableView;
    cxGrid_PenaltyLevel: TcxGridLevel;
    cxGridPenalty: TcxGrid;
    cxGrid_PenaltyListColumn1: TcxGridDBColumn;
    cxGrid_PenaltyListColumn2: TcxGridDBColumn;
    cxGrid_PenaltyListColumn3: TcxGridDBColumn;
    cxGrid_PenaltyListColumn4: TcxGridDBColumn;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxLblActive: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure Proc_PunishList;
  public
    { Public declarations }
  end;

var
  Frm_JON33: TFrm_JON33;

implementation

{$R *.dfm}

uses xe_GNL, xe_xml, xe_Msg, xe_packet, xe_Func, Main;


procedure TFrm_JON33.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_JON33.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON33.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON33.FormCreate(Sender: TObject);
var
  Save: LongInt;
begin
  if BorderStyle = bsNone then
    Exit;

  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  //====================================================
  // 폼 타이틀 제거..
  Save := GetWindowLong(Handle,  GWL_STYLE);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSizeable:
        SetWindowLong(Handle, GWL_STYLE, Save and (not (WS_CAPTION)) or WS_BORDER);
    end;
    Height := Height - getSystemMetrics(SM_CYCAPTION);
    Self.Refresh;
  end;
end;

procedure TFrm_JON33.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON33.FormDestroy(Sender: TObject);
begin
  Frm_JON33 := Nil;
end;

procedure tFrm_JON33.Proc_PunishList;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_ResultCnt, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode, iRow, xmlCnt: Integer;
begin
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := GT_SEL_BRNO.HDNO
  else
    Param := GT_USERIF.HD;

  if not RequestBase(GetSel05('GETPUNISHINFO', 'worker.get_punish_table', '100', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('페널티 벌점표 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  xdom := ComsDomDocument.Create;
  xdom.loadXML(XmlData);

  cxGrid_PenaltyList.Columns[0].DataBinding.ValueType := 'Integer';
  cxGrid_PenaltyList.Columns[1].DataBinding.ValueType := 'String';
  cxGrid_PenaltyList.Columns[2].DataBinding.ValueType := 'String';
  cxGrid_PenaltyList.Columns[3].DataBinding.ValueType := 'String';
  
  cxGrid_PenaltyList.DataController.SetRecordCount(0);
  cxGrid_PenaltyList.DataController.BeginUpdate;
  try
    lst_ResultCnt := xdom.documentElement.selectNodes('/cdms/Service/Data');
    xmlCnt := StrToIntDef(lst_ResultCnt.item[0].attributes.getNamedItem('Count').Text,0);

    if xmlCnt > 0 then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
          iRow := cxGrid_PenaltyList.DataController.AppendRecord;
          cxGrid_PenaltyList.DataController.Values[iRow, 0] := I+1;
          cxGrid_PenaltyList.DataController.Values[iRow, 1] := '패널티 점수 ' + ls_Rcrd[0] + '점';
          cxGrid_PenaltyList.DataController.Values[iRow, 2] := ls_Rcrd[0];
          cxGrid_PenaltyList.DataController.Values[iRow, 3] := ls_Rcrd[1] + '일';
        end;
      finally
        ls_Rcrd.Free;
      end;
    end else
    begin
      GMessagebox('등록된 페널티 벌점표가 없습니다.',CDMSE);
      Exit;
    end;

  finally
    cxGrid_PenaltyList.DataController.EndUpdate;
    xDom := Nil;
  end;
end;

procedure TFrm_JON33.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON33, GS_FONTNAME);
  fSetSkin(Frm_JON33);
  Proc_PunishList;
end;

procedure TFrm_JON33.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

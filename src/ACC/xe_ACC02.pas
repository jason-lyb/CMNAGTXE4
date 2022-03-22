unit xe_ACC02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, dxCore,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, GradientLabel, MSXML2_TLB, cxGridExportLink, ShellAPI,
  cxCurrencyEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  ExtCtrls, cxLookAndFeels, cxNavigator, dxSkinsCore, dxSkinscxPCPainter,
  dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_ACC02 = class(TForm)
    Grid1: TcxGrid;
    cxgGrid1: TcxGridDBTableView;
    cxgGrid1Column1: TcxGridDBColumn;
    cxgGrid1Column2: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxgGrid1Column3: TcxGridDBColumn;
    cxgGrid1Column4: TcxGridDBColumn;
    cxgGrid1Column5: TcxGridDBColumn;
    cxgGrid1Column6: TcxGridDBColumn;
    cxgGrid1Column7: TcxGridDBColumn;
    cxgGrid1Column8: TcxGridDBColumn;
    cxgGrid1Column9: TcxGridDBColumn;
    cxgGrid1Column10: TcxGridDBColumn;
    cxgGrid1Column11: TcxGridDBColumn;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    cxButton1: TcxButton;
    cxLblActive: TLabel;
    procedure cxgGrid1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cxgGrid1DataControllerSortingChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;
  public
    { Public declarations }
    procedure proc_init;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
  end;

var
  Frm_ACC02: TFrm_ACC02;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_packet, xe_xml;

procedure TFrm_ACC02.cxgGrid1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC02.cxgGrid1DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxgGrid1, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC02.proc_init;
var
  i: Integer;
begin
  try
    // 그리드 초기화
    cxgGrid1.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxgGrid1.ColumnCount - 1 do
    begin
      cxgGrid1.Columns[i].DataBinding.ValueType := 'String';
    end;
    cxgGrid1.Columns[9].DataBinding.ValueType := 'Currency';

    cxgGrid1.DataController.SetRecordCount(0);
  except
  end;
end;

procedure TFrm_ACC02.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_Msg_Err, sTemp : string;
  lst_Result: IXMLDomNodeList;
  i, j, iRow: Integer;
  ls_rxxml: WideString;
  ls_Rcrd: TStringList;
begin
  try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      ls_rxxml := slList[0];
      if not xdom.loadXML(ls_rxxml) then
      begin
        Screen.Cursor := crDefault;
        Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        cxgGrid1.BeginUpdate;
        cxgGrid1.DataController.SetRecordCount(0);
        for j := 0 to slList.Count - 1 do
        begin
          Application.ProcessMessages;
          ls_rxxml := slList.Strings[j];
          if not xdom.loadXML(ls_rxxml) then
          begin
            Exit;
          end;
          if (0 < GetXmlRecordCount(ls_rxxml)) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              for i := 0 to lst_Result.length - 1 do
              begin
                GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                iRow := cxgGrid1.DataController.AppendRecord;
                // 1 Record 추가
                ls_Rcrd.Insert(0, IntToStr(iRow + 1));
                if StrToIntDef(ls_Rcrd[9], -1) = -1 then
                  ls_Rcrd[9] := '0';
                cxgGrid1.DataController.Values[iRow, 0] := ls_Rcrd[0];
                cxgGrid1.DataController.Values[iRow, 1] := ls_Rcrd[1];
                cxgGrid1.DataController.Values[iRow, 2] := ls_Rcrd[2];
                cxgGrid1.DataController.Values[iRow, 3] := ls_Rcrd[3];
                cxgGrid1.DataController.Values[iRow, 4] := ls_Rcrd[4];
                sTemp := ls_Rcrd[5];
                if sTemp <> '' then
                begin
                  sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                  sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                  sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                  sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) +
                    '-'
                    + Copy(sTemp, 7, 2) + ' '
                    + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':'
                    +
                    Copy(sTemp, 13, 2);
                end;
                cxgGrid1.DataController.Values[iRow, 5] := sTemp;
                cxgGrid1.DataController.Values[iRow, 6] := ls_Rcrd[6];
                cxgGrid1.DataController.Values[iRow, 7] := ls_Rcrd[7];
                cxgGrid1.DataController.Values[iRow, 8] := ls_Rcrd[8];
                cxgGrid1.DataController.Values[iRow, 9] := ls_Rcrd[9];
                cxgGrid1.DataController.Values[iRow, 10] := ls_Rcrd[10];
              end;
            finally
              ls_Rcrd.Free;
            end;
          end
        end;
        cxgGrid1.EndUpdate;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      xdom := Nil;
    end;
  except
  end;
end;

procedure TFrm_ACC02.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_ACC02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACC02.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
begin
  //====================================================
  // 폼 타이틀 제거..
  Save := GetWindowLong(Handle, gwl_Style);
  if (Save and ws_Caption) = ws_Caption then
  begin
    case BorderStyle of
      bsSingle, bsSizeable:
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or
          ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;

  proc_init;
end;

procedure TFrm_ACC02.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_ACC02.FormDestroy(Sender: TObject);
begin
  Frm_ACC02 := Nil;
end;

procedure TFrm_ACC02.FormShow(Sender: TObject);
begin
  fSetFont(Frm_ACC02, GS_FONTNAME);
end;

procedure TFrm_ACC02.cxButton20Click(Sender: TObject);
begin
  if cxgGrid1.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '기사사용료내역.xls';
  Frm_Main.sgRpExcel := Format('정산>기사사용료내역]%s건', [GetMoneyStr(cxgGrid1.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := Grid1;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC02.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_ACC02.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.


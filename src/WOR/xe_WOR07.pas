unit xe_WOR07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, MSXML2_TLB,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxLabel, Vcl.Menus, cxContainer, cxTextEdit, cxGroupBox,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_WOR07 = class(TForm)
    cxedTelNo: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel1: TcxLabel;
    cxedSNum: TcxTextEdit;
    cxButton1: TcxButton;
    cxGridWkConnect: TcxGrid;
    cxgWkHistory: TcxGridDBTableView;
    cxgWkHistoryColumn1: TcxGridDBColumn;
    cxgWkHistoryColumn2: TcxGridDBColumn;
    cxgWkHistoryColumn3: TcxGridDBColumn;
    cxgWkHistoryColumn4: TcxGridDBColumn;
    cxgWkHistoryColumn5: TcxGridDBColumn;
    cxgWkHistoryColumn6: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxgWkHistoryColumn7: TcxGridDBColumn;
    cxgWkHistoryColumn8: TcxGridDBColumn;
    cxgWkHistoryColumn9: TcxGridDBColumn;
    cxgWkHistoryColumn10: TcxGridDBColumn;
    cxgWkHistoryColumn11: TcxGridDBColumn;
    cxlbCnt: TcxLabel;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    cxButton20: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Shape6: TShape;
    Shape1: TShape;
    Shape2: TShape;
    cxLblActive: TLabel;
    procedure cxButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxedTelNoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCloseClick(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxedTelNoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    FIsBlackList: Boolean;
    { Private declarations }
    procedure proc_init;
    procedure SetIsBlackList(const Value: Boolean);
  public
    { Public declarations }
    property IsBlackList: Boolean read FIsBlackList write SetIsBlackList;

    procedure proc_recieve(ls_rxxml: Widestring);
    procedure proc_search;
    procedure proc_blacklist(APhone, ASsn: string);
  end;

var
  Frm_WOR07: TFrm_WOR07;

implementation


{$R *.dfm}

uses xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_Func, xe_xml, xe_Query, xe_Dm, xe_Lib,
  Main;

procedure TFrm_WOR07.cxButton7Click(Sender: TObject);
begin
 Hide;
end;

procedure TFrm_WOR07.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR07.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WOR07.FormCreate(Sender: TObject);
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
        SetWindowLong(Handle, gwl_Style, Save and (not (ws_Caption)) or ws_border);
    end;
    Height := Height - getSystemMetrics(sm_cyCaption);
    Refresh;
  end;
  proc_init;
end;

procedure TFrm_WOR07.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR07.FormDestroy(Sender: TObject);
begin
  Frm_WOR07 := Nil;
end;

procedure TFrm_WOR07.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR07, GS_FONTNAME);
end;

procedure TFrm_WOR07.proc_init;
var
  i: integer;
begin
  IsBlackList := False;

  cxedTelNo.Text := '';
  cxedSNum.Text := '';
  cxgWkHistory.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxgWkHistory.ColumnCount - 1 do
  begin
    cxgWkHistory.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxgWkHistory.DataController.SetRecordCount(0);
  cxlbCnt.Caption := '총 건수 : 0';
end;

procedure TFrm_WOR07.proc_search;
var
  sTelNo, sWkSNum, sWhere: string;
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  rv_str: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  cxgWkHistory.DataController.SetRecordCount(0);
  cxlbCnt.Caption := '총 건수 : 0';
  sTelNo := Trim(Param_Filtering(cxedTelNo.Text));
  sTelNo := StringReplace(sTelNo, '-', '', [rfReplaceAll]);
  sWkSNum := Trim(Param_Filtering(cxedSNum.Text));
  sWkSNum := StringReplace(sWkSNum, '-', '', [rfReplaceAll]);
  if (sTelNo = '') and (sWkSNum = '') then
  begin
    GMessagebox('검색조건을 입력하세요!', CDMSE);
    Exit;
  end;
  sWhere := '';

  if sTelNo <> '' then
    sWhere := sWhere + ' AND A.WK_HP = ''' + sTelNo + ''' ';
  if sWkSNum <> '' then
    sWhere := sWhere + ' AND A.WK_SNUM = ''' + sWkSNum + ''' ';

  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
  fGet_BlowFish_Query(GSQ_WK_HISTORY, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR071', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        Application.ProcessMessages;
        proc_recieve(ls_rxxml);
      end;
    end;
  finally
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_WOR07.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR07.proc_blacklist(APhone, ASsn: string);
var
  sWhere, ls_TxQry, ls_TxLoad, sQueryTemp : string;
  rv_str: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  cxgWkHistory.DataController.SetRecordCount(0);

  IsBlackList := True;

  cxlbCnt.Caption := '총 건수 : 0';
  APhone := StringReplace(APhone, '-', '', [rfReplaceAll]);
  ASsn := StringReplace(ASsn, '-', '', [rfReplaceAll]);

  if (APhone = '') and (ASsn = '') then
  begin
    GMessagebox('검색조건이 부족합니다.', CDMSE);
    Exit;
  end;

  sWhere := '';
  if APhone <> '' then
    sWhere := sWhere + ' AND WK_HP = ''' + APhone + ''' ';
  if ASsn <> '' then
    sWhere := sWhere + ' AND WK_SNUM = ''' + ASsn + ''' ';

  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
  fGet_BlowFish_Query(GSQ_WK_BLACKLIST02, sQueryTemp);
  ls_TxQry := sQueryTemp + sWhere;
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR071', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];
      if rv_str <> '' then
      begin
        Application.ProcessMessages;
        proc_recieve(rv_str);
      end;
    end;
  finally
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_WOR07.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_WOR07.cxButton1Click(Sender: TObject);
begin
  proc_search;
end;

procedure TFrm_WOR07.cxButton20Click(Sender: TObject);
begin
  if cxgWkHistory.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.WOR_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '기사이력사항.xls';
  Frm_Main.sgRpExcel := Format('기사>기사이력사항]%s건', [GetMoneyStr(cxgWkHistory.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridWkConnect;
  Frm_Main.cxGridDBViewExcel := cxgWkHistory;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR07.proc_recieve(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err : string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  i, iRow: Integer;
begin
  try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      if not xdom.loadXML(ls_rxxml) then
      begin
        Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
        case StrToIntDef(ls_ClientKey, 1) of
          1:
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              if lst_Result.length > 0 then
              begin
                cxgWkHistory.BeginUpdate;
                ls_Rcrd := TStringList.Create;
                try
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

                    if ls_Rcrd.Count = 10 then
                    begin
                      iRow := cxgWkHistory.DataController.AppendRecord;

                      cxgWkHistory.DataController.Values[iRow, 0] := IntToStr(i + 1);
                      cxgWkHistory.DataController.Values[iRow, 1] := ls_Rcrd[0];
                      cxgWkHistory.DataController.Values[iRow, 2] := ls_Rcrd[1];
                      cxgWkHistory.DataController.Values[iRow, 3] := ls_Rcrd[2];
                      cxgWkHistory.DataController.Values[iRow, 4] := ls_Rcrd[3];
                      cxgWkHistory.DataController.Values[iRow, 5] := ls_Rcrd[4];
                      cxgWkHistory.DataController.Values[iRow, 6] := ls_Rcrd[5];
                      cxgWkHistory.DataController.Values[iRow, 7] := strtocall(ls_Rcrd[6]);
                      cxgWkHistory.DataController.Values[iRow, 8] := strtocall(ls_Rcrd[7]);
                      cxgWkHistory.DataController.Values[iRow, 9] := StrToSsn(ls_Rcrd[8], FIsBlackList);
                      cxgWkHistory.DataController.Values[iRow, 10] := ls_Rcrd[9];
                    end;
                  end;
                finally
                  ls_Rcrd.Free;
                end;
                cxgWkHistory.EndUpdate;
                cxlbCnt.Caption := '총 건수 : ' + IntToStr(cxgWkHistory.DataController.RecordCount);
              end;
            end;
        end;
        Screen.Cursor := crDefault;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
  end;
end;

procedure TFrm_WOR07.cxedTelNoKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    cxButton1Click(cxButton1)
  else
    if key in ['0'..'9', #8, '-'] then
  else
    key := #0;
end;

procedure TFrm_WOR07.cxedTelNoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_WOR07.SetIsBlackList(const Value: Boolean);
begin
  FIsBlackList := Value;

  if FIsBlackList then
    PnlTitle.Caption := '   기사 이력 사항'
  else
    PnlTitle.Caption := '   기사 이력 사항(블랙리스트)';
end;

end.


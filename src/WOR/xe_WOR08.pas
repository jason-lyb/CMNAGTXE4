unit xe_WOR08;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, MSXML2_TLB,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, 
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxLabel, cxCurrencyEdit, Vcl.Menus, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxListBox, cxCheckBox, cxMaskEdit, cxGroupBox, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxSpinEdit, dxSkinsCore,
  dxSkinscxPCPainter, dxSkinOffice2010Silver, dxDateRanges, cxCustomListBox, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_WOR08 = class(TForm)
    cxbInit: TcxButton;
    cxbSave: TcxButton;
    cxbDel: TcxButton;
    cxLabel4: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxGridWkConnect: TcxGrid;
    cxgWkIncentive: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxgWkIncentiveColumn1: TcxGridDBColumn;
    cxgWkIncentiveColumn2: TcxGridDBColumn;
    cxgWkIncentiveColumn3: TcxGridDBColumn;
    cxgWkIncentiveColumn4: TcxGridDBColumn;
    cxgWkIncentiveColumn5: TcxGridDBColumn;
    cxgWkIncentiveColumn6: TcxGridDBColumn;
    cxgWkIncentiveColumn7: TcxGridDBColumn;
    cxgWkIncentiveColumn8: TcxGridDBColumn;
    cxgWkIncentiveColumn9: TcxGridDBColumn;
    cxgWkIncentiveColumn10: TcxGridDBColumn;
    cxlbBrNo: TcxLabel;
    cxlbSeq: TcxLabel;
    cxLabel17: TcxLabel;
    cxcbWkCommcd: TcxComboBox;
    cxbExcel: TcxButton;
    cxcbWkStatus: TcxComboBox;
    cxcbWkComm: TcxComboBox;
    cxcbWkAttend: TcxComboBox;
    cxckBefore: TcxCheckBox;
    cxedDay: TcxCurrencyEdit;
    cxdtSendDate: TcxDateEdit;
    cxdtEndDate: TcxDateEdit;
    cxedMemo: TcxTextEdit;
    chk1DaySMS: TcxCheckBox;
    cxListBox2: TcxListBox;
    btn1: TcxButton;
    btn2: TcxButton;
    cxLabel15: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxgWkIncentiveColumn11: TcxGridDBColumn;
    cxgWkIncentiveColumn12: TcxGridDBColumn;
    cxgWkIncentiveColumn13: TcxGridDBColumn;
    cxgWkIncentiveColumn14: TcxGridDBColumn;
    pnlTitle: TPanel;
    BtnClose: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    PnlTop: TPanel;
    PnlMain: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    cxedCash: TcxSpinEdit;
    cxLblActive: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxbInitClick(Sender: TObject);
		procedure cxbExcelClick(Sender: TObject);
		procedure cxgWkIncentiveCellClick(Sender: TcxCustomGridTableView;
			ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
		procedure cxbDelClick(Sender: TObject);
		procedure cxbSaveClick(Sender: TObject);
		procedure cxckBeforeClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chk1DaySMSClick(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
	private
		{ Private declarations }
		procedure proc_Select(iRow: Integer);
		procedure proc_save;
	public
		{ Public declarations }
    WorA1Tag : Integer;
		procedure proc_init;
		procedure proc_BrChange;
		procedure proc_Search;
    procedure proc_recieve(ls_rxxml: Widestring);
	end;

var
  Frm_WOR08: TFrm_WOR08;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_xml, xe_Query,
  xe_system, xe_WOR;

procedure TFrm_WOR08.FormCreate(Sender: TObject);
var
  Save: LongInt; // 폼타이틀 제거용.
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
	cxgWkIncentive.Columns[0].DataBinding.ValueType := 'Integer';
	cxgWkIncentive.Columns[1].DataBinding.ValueType := 'Currency';
	for i := 2 to cxgWkIncentive.ColumnCount - 1 do
		cxgWkIncentive.Columns[i].DataBinding.ValueType := 'String';
  cxgWkIncentive.DataController.SetRecordCount(0);
  proc_init;
end;

procedure TFrm_WOR08.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR08.FormDestroy(Sender: TObject);
begin
  Frm_WOR08 := Nil;
end;

procedure TFrm_WOR08.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR08, GS_FONTNAME);
end;

procedure TFrm_WOR08.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR08.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WOR08.proc_init;
begin
  cxedCash.Text := '0';
  cxcbWkStatus.ItemIndex := 0;
	cxcbWkAttend.ItemIndex := 0;
	cxckBefore.Checked := False;
	cxedDay.Enabled := False;
	cxdtSendDate.Text := FormatDateTime('yyyy-mm-dd', Now + 1);
	cxdtSendDate.Enabled := True;
	cxdtEndDate.Text := '';
  cxedMemo.Text := '';
  cxgWkIncentive.DataController.SetRecordCount(0);
  cxbSave.Caption := '신규저장';
	cxlbSeq.Caption := '';

	chk1DaySMS.Checked := False;
	cxTextEdit1.Text := '';
	cxListBox2.Clear;
end;

procedure TFrm_WOR08.cxbInitClick(Sender: TObject);
begin
	proc_init;
  proc_Search;
end;

procedure TFrm_WOR08.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR08.proc_BrChange;
var
  ls_TxQry, ls_TxLoad, rv_str, sQueryTemp : string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  //기사입금방식 리스트를 불러온다.
  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
  fGet_BlowFish_Query(GSQ_WK_INCENTIVE_LIST, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [cxlbBrNo.Caption]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR081', [rfReplaceAll]);
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

procedure TFrm_WOR08.proc_recieve(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err, Charge, StartDate, Types, Term, EndDate, WkStatus, WorkDates,
  CommissionType, ChargeYn, Memo, Sequence: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  i, iRow, AttendCnt: Integer;
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
              cxcbWkComm.Properties.Items.Clear;
              cxcbWkCommcd.Properties.Items.Clear;
              cxcbWkCommcd.Properties.Items.Add('');
              cxcbWkComm.Properties.Items.Add('전체');
              if (0 < GetXmlRecordCount(ls_rxxml)) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                ls_Rcrd := TStringList.Create;
                try
									for i := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    cxcbWkComm.Properties.Items.Add(ls_Rcrd[1]);
                    cxcbWkCommcd.Properties.Items.Add(ls_Rcrd[0]);
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
              cxcbWkComm.ItemIndex := 0;
            end;
          2:
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Reserves/Reserve');
              if lst_Result.length > 0 then
              begin
                cxgWkIncentive.BeginUpdate;
                cxgWkIncentive.DataController.SetRecordCount(0);
                for i := 0 to lst_Result.length - 1 do
                begin
                  Sequence := lst_Result.item[i].attributes.getNamedItem('Sequence').text;
									if Sequence <> '' then
									begin
                    Charge := lst_Result.item[i].attributes.getNamedItem('Charge').text;
										StartDate := lst_Result.item[i].attributes.getNamedItem('StartDate').text;
                    Types := lst_Result.item[i].attributes.getNamedItem('Type').text;
                    Term := lst_Result.item[i].attributes.getNamedItem('Term').text;
                    EndDate := lst_Result.item[i].attributes.getNamedItem('EndDate').text;
                    WkStatus := lst_Result.item[i].attributes.getNamedItem('WkStatus').text;
                    CommissionType := lst_Result.item[i].attributes.getNamedItem('CommissionType').text;
                    ChargeYn := lst_Result.item[i].attributes.getNamedItem('ChargeYn').text;
                    AttendCnt := StrToIntDef(lst_Result.item[i].attributes.getNamedItem('AttendCnt').text, 0);
                    WorkDates := lst_Result.item[i].attributes.getNamedItem('WorkDates').text;
										Memo := lst_Result.item[i].attributes.getNamedItem('RsvMemo').text;

                    //기사상태
                    WkStatus := Frm_Main.Frm_WORA1[WorA1Tag].GetWkStateStr(WkStatus);

                    //기사별수수료 그룹
                    if CommissionType <> '' then
                      cxcbWkComm.ItemIndex := cxcbWkCommcd.Properties.Items.IndexOf(CommissionType)
                    else
                      cxcbWkComm.ItemIndex := 0;

                    CommissionType := cxcbWkComm.Text;

                    //기사 근무기간
                    if WorkDates = '' then
                      WorkDates := '무시'
                    else if WorkDates = '0' then
                      WorkDates := '30일미만'
                    else if WorkDates = '1' then
                      WorkDates := '90일미만'
                    else if WorkDates = '2' then
                      WorkDates := '90 ~ 180일까지'
                    else if WorkDates = '3' then
                      WorkDates := '180 ~ 270일까지'
                    else if WorkDates = '4' then
                      WorkDates := '270 ~ 365일까지'
                    else if WorkDates = '5' then
                      WorkDates := '365 ~ 730일까지'
                    else if WorkDates = '6' then
                      WorkDates := '730일 이상'
                    ;

                    //그리드에 추가 ...
                    iRow := cxgWkIncentive.DataController.AppendRecord;
                    cxgWkIncentive.DataController.Values[iRow, 0] := IntToStr(i + 1);
                    cxgWkIncentive.DataController.Values[iRow, 1] := Charge;
                    cxgWkIncentive.DataController.Values[iRow, 2] := WkStatus;
                    cxgWkIncentive.DataController.Values[iRow, 3] := CommissionType;
                    cxgWkIncentive.DataController.Values[iRow, 4] := WorkDates;
                    cxgWkIncentive.DataController.Values[iRow, 5] := IntToStr(AttendCnt);
                    cxgWkIncentive.DataController.Values[iRow, 6] := Copy(StartDate, 1, 10);
                    cxgWkIncentive.DataController.Values[iRow, 7] := Copy(EndDate, 1, 10);
                    cxgWkIncentive.DataController.Values[iRow, 8] := Memo;
										cxgWkIncentive.DataController.Values[iRow, 9] := Sequence;
										if lst_Result.item[i].attributes.getNamedItem('FromNum1').text <> '' then
											cxgWkIncentive.DataController.Values[iRow, 10] := strtocall(lst_Result.item[i].attributes.getNamedItem('FromNum1').text)
										else
											cxgWkIncentive.DataController.Values[iRow, 10] := '';

										if lst_Result.item[i].attributes.getNamedItem('FromNum2').text <> '' then
											cxgWkIncentive.DataController.Values[iRow, 11] := strtocall(lst_Result.item[i].attributes.getNamedItem('FromNum2').text)
										else
											cxgWkIncentive.DataController.Values[iRow, 11] := '';

										if lst_Result.item[i].attributes.getNamedItem('FromNum3').text <> '' then
											cxgWkIncentive.DataController.Values[iRow, 12] := strtocall(lst_Result.item[i].attributes.getNamedItem('FromNum3').text)
										else
											cxgWkIncentive.DataController.Values[iRow, 12] := '';
										if lst_Result.item[i].attributes.getNamedItem('SmsYn').text <> '' then
											cxgWkIncentive.DataController.Values[iRow, 13] := lst_Result.item[i].attributes.getNamedItem('SmsYn').text
										else
											cxgWkIncentive.DataController.Values[iRow, 13] := '';
									end;
								end;
                cxgWkIncentive.EndUpdate;
              end;
            end;
          3:
            begin
              GMessagebox('인센티브 삭제하였습니다.!', CDMSI);
              cxgWkIncentive.DataController.DeleteRecord(cxgWkIncentive.DataController.FocusedRecordIndex);
            end;
          4:
            begin
              GMessagebox('인센티브를 생성하였습니다.', CDMSI);
              proc_Search;
            end;
          5:
            begin
              GMessagebox('인센티브를 수정하였습니다.', CDMSI);
              proc_Search;
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

procedure TFrm_WOR08.proc_Search;
var
  ls_TxQry, ls_TxLoad, rv_str: string;
  ls_rxxml: WideString;
  lst_Node: IXMLDOMNodeList;
  xdom: msDomDocument;
  slReceive: TStringList;
  ErrCode: integer;
begin
  //등록된 리스트를 불러온다 (기사입금방식 리스트가 있을경우만 리스트를 보여준다.)
	ls_rxxml := GTx_UnitXmlLoad('C029.XML');
	xdom := ComsDomDocument.Create;
  try
	  if not xdom.loadXML(ls_rxxml) then
	  begin
      Exit;
    end;

    lst_Node := xdom.documentElement.selectNodes('/cdms/header/ClientKey');
    lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR082';
    lst_Node := xdom.documentElement.selectNodes('/cdms/header/UserID');
    lst_Node.item[0].attributes.getNamedItem('Value').text :=
      En_Coding(GT_USERIF.ID);
    lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Reserves');
    lst_Node.item[0].attributes.getNamedItem('action').Text := 'SELECT';
    lst_Node.item[0].attributes.getNamedItem('BrNo').Text := cxlbBrNo.Caption;
    lst_Node.item[0].attributes.getNamedItem('ChargeType').Text := '3';
    lst_Node.item[0].attributes.getNamedItem('ChargeYn').Text := 'n';
    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

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
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WOR08.cxbExcelClick(Sender: TObject);
begin
  if cxgWkIncentive.DataController.RecordCount = 0 then
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
		ShowMessage('[조회된엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '기사인센티브설정.xls';
  Frm_Main.sgRpExcel := Format('기사>기사 인센티브 지급 스케줄]%s건', [GetMoneyStr(cxgWkIncentive.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridWkConnect;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR08.cxgWkIncentiveCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	proc_Select(cxgWkIncentive.DataController.FocusedRecordIndex);
end;

procedure TFrm_WOR08.proc_Select(iRow: Integer);
var
  Charge, StartDate, EndDate, WkStatus, WorkDates, CommissionType, Memo, AttendCnt: string;
begin
	if iRow = -1 then
		exit;
  cxbSave.Caption := '수정';
  //월지급금액,기사상태,기사별입금방식,기사근무기간,전달운행일수,지급일자,종료일자,송금메모,시퀀스
  Charge := cxgWkIncentive.DataController.Values[iRow, 1];
  Charge := StringReplace(Charge, ',', '', [rfReplaceAll]);
  WkStatus := cxgWkIncentive.DataController.Values[iRow, 2];
  CommissionType := cxgWkIncentive.DataController.Values[iRow, 3];
  WorkDates := cxgWkIncentive.DataController.Values[iRow, 4];
  AttendCnt := cxgWkIncentive.DataController.Values[iRow, 5];
  StartDate := cxgWkIncentive.DataController.Values[iRow, 6];
  EndDate := cxgWkIncentive.DataController.Values[iRow, 7];
	Memo := cxgWkIncentive.DataController.Values[iRow, 8];
	cxlbSeq.Caption := cxgWkIncentive.DataController.Values[iRow, 9];

	cxedCash.Text := Charge;

	if WkStatus = '전체' then
		cxcbWkStatus.ItemIndex := 0
  else
    if WkStatus = '정상' then
    cxcbWkStatus.ItemIndex := 1
  else
    if WkStatus = '정상(지사대납)' then
    cxcbWkStatus.ItemIndex := 2
  else
    if WkStatus = '수수료미납' then
    cxcbWkStatus.ItemIndex := 3
  else
    if WkStatus = '보험료미납' then
    cxcbWkStatus.ItemIndex := 4
  else
    if WkStatus = '사용료미납' then
    cxcbWkStatus.ItemIndex := 5
  else
    if WkStatus = '보험료+사용료미납' then
    cxcbWkStatus.ItemIndex := 6
  else
    if WkStatus = '비인증' then
    cxcbWkStatus.ItemIndex := 7
  else
    if WkStatus = '기타정지' then
    cxcbWkStatus.ItemIndex := 8
  else
    if WkStatus = '퇴직' then
    cxcbWkStatus.ItemIndex := 9
  else
    if WkStatus = '본사정지' then
    cxcbWkStatus.ItemIndex := 10;

  if CommissionType = '' then
    CommissionType := '전체';

  cxcbWkComm.ItemIndex := cxcbWkComm.Properties.Items.IndexOf(CommissionType);
  cxcbWkCommcd.ItemIndex := cxcbWkComm.ItemIndex;

  if WorkDates = '무시' then
    cxcbWkAttend.ItemIndex := 0
  else if WorkDates = '30일미만' then
    cxcbWkAttend.ItemIndex := 1
  else if WorkDates = '90일미만' then
    cxcbWkAttend.ItemIndex := 2
  else if WorkDates = '90 ~ 180일까지' then
    cxcbWkAttend.ItemIndex := 3
  else if WorkDates = '180 ~ 270일까지' then
    cxcbWkAttend.ItemIndex := 4
  else if WorkDates = '270 ~ 365일까지' then
    cxcbWkAttend.ItemIndex := 5
  else if WorkDates = '365 ~ 730일까지' then
    cxcbWkAttend.ItemIndex := 6
  else if WorkDates = '730일 이상' then
    cxcbWkAttend.ItemIndex := 7
  ;

	if AttendCnt <> '' then
  begin
		if AttendCnt = '0' then
    begin
			cxckBefore.Checked := False;
      cxedDay.Text := AttendCnt;
			cxedDay.Enabled := False;
    end
		else
    begin
			cxckBefore.Checked := True;
      cxedDay.Text := AttendCnt;
			cxedDay.Enabled := True;
    end;
	end
	else
	begin
    cxckBefore.Checked := False;
    cxedDay.Text := '';
		cxedDay.Enabled := False;
  end;

	if StartDate <> '' then
	begin
		cxdtSendDate.Text := StartDate;
		cxdtSendDate.Enabled := False;
	end;

	cxdtEndDate.Clear;
	if EndDate <> '' then
  begin
    if Copy(EndDate, 1, 4) = '9999' then
    begin
      cxdtEndDate.Text := FormatDateTime('yyyy-mm-dd', Now);
    end
    else
    begin
      cxdtEndDate.Text := EndDate;
    end;
  end;
	cxedMemo.Text := Memo;

	cxListBox2.Clear;
	if cxgWkIncentive.DataController.Values[iRow, 10] <> '' then
	begin
		cxListBox2.Items.Add(calltostr(cxgWkIncentive.DataController.Values[iRow, 10]));
		chk1DaySMS.Checked := True;
	end;
	if cxgWkIncentive.DataController.Values[iRow, 11] <> '' then
	begin
		cxListBox2.Items.Add(calltostr(cxgWkIncentive.DataController.Values[iRow, 11]));
		chk1DaySMS.Checked := True;
	end;
	if cxgWkIncentive.DataController.Values[iRow, 12] <> '' then
	begin
		cxListBox2.Items.Add(calltostr(cxgWkIncentive.DataController.Values[iRow, 12]));
		chk1DaySMS.Checked := True;
	end;
	if cxgWkIncentive.DataController.Values[iRow, 13] = 'y' then
		chk1DaySMS.Checked := True
	else
		chk1DaySMS.Checked := False;
end;

procedure TFrm_WOR08.cxbDelClick(Sender: TObject);
var
  ls_TxLoad, rv_str: string;
  ls_rxxml: WideString;
  lst_Node: IXMLDOMNodeList;
  xdom: msDomDocument;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if cxlbSeq.Caption = '' then
  begin
    GMessagebox('삭제할 인센티브 스케쥴을 클릭하세요', CDMSE);
    exit;
  end;

	ls_rxxml := GTx_UnitXmlLoad('C029.XML');
	xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
    begin
      Exit;
    end;

    lst_Node := xdom.documentElement.selectNodes('/cdms/header/ClientKey');
    lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR083';
    lst_Node := xdom.documentElement.selectNodes('/cdms/header/UserID');
    lst_Node.item[0].attributes.getNamedItem('Value').text := En_Coding(GT_USERIF.ID);
    lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Reserves');
    lst_Node.item[0].attributes.getNamedItem('action').Text := 'CANCEL';
    lst_Node.item[0].attributes.getNamedItem('Cnt').Text := '1';
    lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Reserves/Reserve');
    lst_Node.item[0].attributes.getNamedItem('Sequence').Text := cxlbSeq.Caption;
    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

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
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WOR08.cxbSaveClick(Sender: TObject);
begin
 	if Not func_EucKr_Check(cxedMemo, 0) then Exit;

	proc_Save;
end;

procedure TFrm_WOR08.proc_save;
var
  Charge, WkStatus, CommissionType, WorkDates, AttendCnt, StartDate, EndDate, Memo, Sequence : string;
  ls_TxLoad, rv_str: string;
  ls_rxxml: WideString;
  lst_Node: IXMLDOMNodeList;
  xdom: msDomDocument;
  slReceive: TStringList;
	ErrCode: integer;
begin
	Charge := cxedCash.Text;
  Charge := StringReplace(Charge, ',', '', [rfReplaceAll]);
  WkStatus := IntToStr(cxcbWkStatus.ItemIndex);
  if WkStatus = '0' then
    WkStatus := ''
  else
    if WkStatus = '1' then
    WkStatus := '00'
	else
    if WkStatus = '2' then
    WkStatus := '01'
  else
    if WkStatus = '3' then
    WkStatus := '10'
  else
    if WkStatus = '4' then
    WkStatus := '21'
  else
    if WkStatus = '5' then
    WkStatus := '22'
  else
    if WkStatus = '6' then
    WkStatus := '23'
  else
    if WkStatus = '7' then
    WkStatus := '30'
  else
    if WkStatus = '8' then
    WkStatus := '40'
  else
    if WkStatus = '9' then
    WkStatus := '50'
  else
    if WkStatus = '10' then
    WkStatus := '60';

  CommissionType := cxcbWkCommcd.Properties.Items.Strings[cxcbWkComm.ItemIndex];
  case cxcbWkAttend.ItemIndex of
    0: WorkDates := '';
    1..7: WorkDates := IntToStr(cxcbWkAttend.ItemIndex - 1);
  end;

  AttendCnt := cxedDay.Text;
	StartDate := cxdtSendDate.Text;
  StartDate := StringReplace(StartDate, '-', '', [rfReplaceAll]);
	StartDate := StartDate + '090000';
	if cxdtEndDate.Text <> '' then
	begin
		if cxdtSendDate.Date >= cxdtEndDate.Date then
		begin
			ShowMessage('종료일자가 지급일자보다 빠릅니다.');
			exit;
		end;
		EndDate := cxdtEndDate.Text;
		EndDate := StringReplace(EndDate, '-', '', [rfReplaceAll]);
    EndDate := EndDate + '090000';
	end
  else
  begin
//    EndDate := '';
		ShowMessage('종료일자를 지정하여야 합니다.');
		exit;
  end;
  Memo := cxedMemo.Text;
	Sequence := cxlbSeq.Caption;

	ls_rxxml := GTx_UnitXmlLoad('C029.XML');
	xdom := ComsDomDocument.Create;
  try
	  if not xdom.loadXML(ls_rxxml) then
    begin
	  	Exit;
	  end;

	  lst_Node := xdom.documentElement.selectNodes('/cdms/header/UserID');
    lst_Node.item[0].attributes.getNamedItem('Value').text := En_Coding(GT_USERIF.ID);

    if cxbSave.Caption = '신규저장' then
    begin
	  	lst_Node := xdom.documentElement.selectNodes('/cdms/header/ClientKey');
      lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR084';
	  	lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Reserves');
	  	lst_Node.item[0].attributes.getNamedItem('action').Text := 'INSERT';
      lst_Node :=
        xdom.documentElement.selectNodes('/cdms/Service/Reserves/Reserve');
      lst_Node.item[0].attributes.getNamedItem('Sequence').Text := '';
    end else
    begin
      lst_Node := xdom.documentElement.selectNodes('/cdms/header/ClientKey');
      lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR085';
      lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Reserves');
	  	lst_Node.item[0].attributes.getNamedItem('action').Text := 'UPDATE';
      lst_Node :=
	  		xdom.documentElement.selectNodes('/cdms/Service/Reserves/Reserve');
	  	lst_Node.item[0].attributes.getNamedItem('Sequence').Text :=
        cxlbSeq.Caption;
    end;
    lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Reserves');
    lst_Node.item[0].attributes.getNamedItem('Cnt').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('BrNo').Text := cxlbBrNo.Caption;
    lst_Node.item[0].attributes.getNamedItem('ChargeType').Text := '3';
    lst_Node.item[0].attributes.getNamedItem('ChargeYn').Text := 'n';
    lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Reserves/Reserve');
    lst_Node.item[0].attributes.getNamedItem('RsvDate').Text := StartDate;
	  lst_Node.item[0].attributes.getNamedItem('InId').Text := En_Coding(GT_USERIF.ID);
    lst_Node.item[0].attributes.getNamedItem('BrNo').Text := cxlbBrNo.Caption;
	  lst_Node.item[0].attributes.getNamedItem('WkStatus').Text := WkStatus;
	  lst_Node.item[0].attributes.getNamedItem('RsvMemo').Text := Memo;
	  lst_Node.item[0].attributes.getNamedItem('ChargeType').Text := '3';
    lst_Node.item[0].attributes.getNamedItem('Charge').Text := Charge;
    lst_Node.item[0].attributes.getNamedItem('WkCount').Text := '0';
	  lst_Node.item[0].attributes.getNamedItem('Memo').Text := '인센티브';
    lst_Node.item[0].attributes.getNamedItem('StartDate').Text := StartDate;
    if cxcbWkStatus.ItemIndex = 0 then
      lst_Node.item[0].attributes.getNamedItem('Type').Text := '3'
    else if cxcbWkStatus.ItemIndex > 0 then
      lst_Node.item[0].attributes.getNamedItem('Type').Text := '1';
	  lst_Node.item[0].attributes.getNamedItem('Term').Text := '2';

    lst_Node.item[0].attributes.getNamedItem('EndDate').Text := EndDate;

    if cxckBefore.Checked then
      lst_Node.item[0].attributes.getNamedItem('AttendCnt').Text := AttendCnt
    else
      lst_Node.item[0].attributes.getNamedItem('AttendCnt').Text := '';

	  lst_Node.item[0].attributes.getNamedItem('WorkDates').Text := WorkDates;
    lst_Node.item[0].attributes.getNamedItem('ChargeYn').Text := 'n';
	  lst_Node.item[0].attributes.getNamedItem('CommissionType').Text := CommissionType;

	  if chk1DaySMS.Checked then
	  	lst_Node.item[0].attributes.getNamedItem('SmsYn').Text := 'y'
	  else
	  	lst_Node.item[0].attributes.getNamedItem('SmsYn').Text := 'n';

	  if cxListBox2.Items.Count = 3 then
	  begin
	  	lst_Node.item[0].attributes.getNamedItem('FromNum1').Text := cxListBox2.Items.Strings[0];
	  	lst_Node.item[0].attributes.getNamedItem('FromNum2').Text := cxListBox2.Items.Strings[1];
	  	lst_Node.item[0].attributes.getNamedItem('FromNum3').Text := cxListBox2.Items.Strings[2];
	  end;
	  if cxListBox2.Items.Count = 2 then
	  begin
	  	lst_Node.item[0].attributes.getNamedItem('FromNum1').Text := cxListBox2.Items.Strings[0];
	  	lst_Node.item[0].attributes.getNamedItem('FromNum2').Text := cxListBox2.Items.Strings[1];
	  	lst_Node.item[0].attributes.getNamedItem('FromNum3').Text := '';
	  end;
	  if cxListBox2.Items.Count = 1 then
	  begin
	  	lst_Node.item[0].attributes.getNamedItem('FromNum1').Text := cxListBox2.Items.Strings[0];
	  	lst_Node.item[0].attributes.getNamedItem('FromNum2').Text := '';
	  	lst_Node.item[0].attributes.getNamedItem('FromNum3').Text := '';
	  end;

	  ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;
	  if cxbSave.Caption = '신규저장' then
	  begin
	  	if cxdtSendDate.date <= now then
	  	begin
	  		showmessage('이전일자(당일포함) 예약 스케줄은' + #13#10 + ' 등록이 되지 않습니다.');
	  		Exit;
	  	end;
	  end;

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
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WOR08.cxckBeforeClick(Sender: TObject);
begin
  if cxckBefore.Checked then
    cxedDay.Enabled := true
  else
    cxedDay.Enabled := False;
end;

procedure TFrm_WOR08.btn2Click(Sender: TObject);
begin
	cxListBox2.Items.Delete(cxListBox2.ItemIndex);
end;

procedure TFrm_WOR08.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_WOR08.btn1Click(Sender: TObject);
begin
	if cxListBox2.Items.Count > 2 then
	begin
		ShowMessage('전송될 SMS번호는 3개까지입니다.');
		cxTextEdit1.SetFocus;
		exit;
	end
	else
	begin
		cxListBox2.Items.Add(calltostr(cxTextEdit1.Text));
		cxTextEdit1.Text := '';
		cxTextEdit1.SetFocus;
	end;
end;

procedure TFrm_WOR08.btn1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_return then
		btn1.click;
end;

procedure TFrm_WOR08.chk1DaySMSClick(Sender: TObject);
begin
	if chk1DaySMS.Checked then
	begin
		cxTextEdit1.Enabled := True;
		btn1.Enabled := True;
		btn2.Enabled := True;
		cxListBox2.Enabled := True;
	end
	else
	begin
		cxTextEdit1.Enabled := False;
		btn1.Enabled := False;
		btn2.Enabled := False;
		cxListBox2.Enabled := False;
	end;
end;

procedure TFrm_WOR08.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then
		btn1.Click;
end;

end.


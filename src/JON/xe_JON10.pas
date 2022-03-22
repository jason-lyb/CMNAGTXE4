unit xe_JON10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, MSXML2_TLB,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxGroupBox, cxMemo, cxGridLevel, cxGridCustomTableView, cxGridTableView,
	cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit, IniFiles,
	cxTextEdit, cxCheckBox, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit,
	Vcl.ExtCtrls, dxSkinsCore, dxSkinscxPCPainter, dxDateRanges, dxSkinOffice2010Silver, 
	dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_JON10 = class(TForm)
    Panel1: TPanel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Edit13: TEdit;
    edt2: TEdit;
    Edit10: TEdit;
    Edit1: TEdit;
    Edit15: TEdit;
		cb_Branch: TcxComboBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    whbtn_Accept: TcxButton;
    RbCheckBox1: TcxCheckBox;
    Edit2: TcxTextEdit;
    edt1: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel24: TcxLabel;
    btnSelect: TcxButton;
    edtHdnOrderDate: TEdit;
		pnlClient: TPanel;
    lbl1: TcxLabel;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    btnRbButton2: TcxButton;
    Edit4: TcxCurrencyEdit;
    Edit14: TcxCurrencyEdit;
    lbl6: TcxLabel;
    edtWkSelHdName: TcxTextEdit;
    lbl7: TcxLabel;
    edtWkSelBrName: TcxTextEdit;
    lbl8: TcxLabel;
    edtWkSelName: TcxTextEdit;
    lbl9: TcxLabel;
    edtWkSelSabun: TcxTextEdit;
    lbl10: TcxLabel;
    edtWkSelWSabun: TcxTextEdit;
    lbl4: TcxLabel;
    edtWkName: TcxTextEdit;
    lbl5: TcxLabel;
    edtWkSabun: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxViewWorker: TcxGridDBTableView;
    cxColView_WkList_ViewColumn1: TcxGridDBColumn;
    cxColView_WkList_ViewColumn9: TcxGridDBColumn;
    cxColView_WkList_ViewColumn2: TcxGridDBColumn;
    cxColView_WkList_ViewColumn3: TcxGridDBColumn;
    cxColView_WkList_ViewColumn4: TcxGridDBColumn;
    cxColView_WkList_ViewColumn5: TcxGridDBColumn;
    cxColView_WkList_ViewColumn6: TcxGridDBColumn;
    cxColView_WkList_ViewColumn7: TcxGridDBColumn;
    cxColView_WkList_ViewColumn8: TcxGridDBColumn;
    cxColView_WkList_ViewColumn10: TcxGridDBColumn;
    cxColView_WkList_ViewColumn11: TcxGridDBColumn;
    cxLevel1: TcxGridLevel;
    mmoPayoutSearch: TcxMemo;
    lbl11: TcxLabel;
    edtConfSlip: TcxTextEdit;
    lbl12: TcxLabel;
    edtPhoneNo: TcxTextEdit;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    grp1: TcxGroupBox;
    grp2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    grpWorker: TcxGroupBox;
    grpWorkerSel: TcxGroupBox;
    pnlPayoffCmd: TcxGroupBox;
    cxLblActive: TLabel;
    btn_Help: TcxButton;
    pnl_Help: TPanel;
    cxGroupBox5: TcxGroupBox;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    edtMemo: TcxTextEdit;
    lbTitle: TListBox;
    popGrid: TPopupMenu;
    N2: TMenuItem;
    procedure whbtn_AcceptClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btnRbButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxViewWorkerCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure btn_HelpClick(Sender: TObject);
    procedure cxGroupBox5MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxViewWorkerColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxViewWorkerColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
    FJonPrice: Integer;
    FTotalCash: Integer;
    procedure RequestSendpaySearch(ABrNo, ASlipNo, AOrderDtm: string);
		function func_BRNMSearch: string;
		function func_BRNOSearch: string;
		function func_HDNOSearch: string;
		procedure proc_Cell_Read;
		procedure proc_Cell_Save;
		procedure proc_Cell_Clear;
	public
    { Public declarations }
    gs_Search: string;
    Jon03Tag : Integer;
    pJON10Dock : TUNDOCKMNG;
    procedure proc_recieve(ls_rxxml: Widestring);
    procedure proc_init;
    // 출,도착지 초기화 처리 한다. CDS.

  end;

var
  Frm_JON10: TFrm_JON10;

implementation

{$R *.dfm}

uses xe_Func, xe_xml, xe_Msg, xe_Query, xe_Dm, Main, xe_gnl3;

 const
	 COLUUMNLIST : array[0..10] of TSortList = (
		 (cName : '사번'    ;  cWid : 055 ),
		 (cName : '자체사번';  cWid : 068 ),
		 (cName : '기사명'  ;  cWid : 079 ),
		 (cName : '상태'    ;  cWid : 064 ),
		 (cName : '단말기'  ;  cWid : 062 ),
		 (cName : '휴대폰'  ;  cWid : 064 ),
		 (cName : '유선전화';  cWid : 063 ),
		 (cName : '본사명'  ;  cWid : 076 ),
		 (cName : '지사명'  ;  cWid : 077 ),
		 (cName : '본사코드';  cWid : 064 ),
		 (cName : '지사코드';  cWid : 064 )
	 );

procedure TFrm_JON10.whbtn_AcceptClick(Sender: TObject);
var
  ls_TxQry, ls_TxLoad, ls_Condition, ls_Status, sQueryTemp: string;
  rv_str: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if (RbCheckBox1.Checked) and ((Trim(Edit2.Text) = '') and (Trim(edt1.Text) = '')) then
  begin
    GMessagebox('전체 체크시는 검색조건을 입력하셔야 합니다.', CDMSE);
    if Trim(Edit2.Text) = '' then
      Edit2.SetFocus;
    if Trim(edt1.Text) = '' then
      edt1.SetFocus;
    exit;
  end;

  cxViewWorker.DataController.SetRecordCount(0);

  FJonPrice := -1;

  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
  ls_Status := ''; // 접속상태 변수 초기화.  2007-12-21 최도순
  ls_Condition := 'WHERE A.WK_STATUS != ''50'' AND A.WK_YN = ''y'' AND A.WK_SABUN = B.WK_SABUN(+) ';

  if not RbCheckBox1.Checked then
    ls_Condition := ls_Condition + Format(' AND A.HD_NO = ''%s'' ', [Edit13.Text]);

  if Edit2.Text <> '' then
    ls_Condition := ls_Condition + Format('AND A.WK_SABUN LIKE ''%s'' || ''%s'' ', ['%', Edit2.Text]);

  if Edt1.Text <> '' then
    ls_Condition := ls_Condition + Format('AND A.WK_NAME LIKE ''%s'' || ''%s'' || ''%s'' ', ['%', edt1.Text, '%']);

  fGet_BlowFish_Query(GSQ_BRCASH_WKLST, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [ls_Condition]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '1', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

	Screen.Cursor := crHourGlass;
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
		Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_JON10.btnSelectClick(Sender: TObject);
var iCol, iRow: Integer;
begin
  if (not cxGrid1.Visible) or (cxViewWorker.DataController.FocusedRecordIndex = -1) then Exit;

  grpWorkerSel.Visible := True;
  grpWorker.Visible := False;
  pnlPayoffCmd.Visible := True;
  cxGrid1.Visible := False;

  iRow := cxViewWorker.DataController.FocusedRecordIndex;
	iCol := cxViewWorker.GetColumnByFieldName('본사명').Index;
	edtWkSelHdName.Text := cxViewWorker.DataController.Values[iRow, iCol];
	
	iCol := cxViewWorker.GetColumnByFieldName('지사명').Index;
	edtWkSelBrName.Text := cxViewWorker.DataController.Values[iRow, iCol];
	
	iCol := cxViewWorker.GetColumnByFieldName('기사명').Index;
	edtWkSelName.Text   := cxViewWorker.DataController.Values[iRow, iCol];
	
	iCol := cxViewWorker.GetColumnByFieldName('사번').Index;
	edtWkSelSabun.Text  := cxViewWorker.DataController.Values[iRow, iCol];
	
	iCol := cxViewWorker.GetColumnByFieldName('자체사번').Index;
	edtWkSelWSabun.Text := cxViewWorker.DataController.Values[iRow, iCol];
	
	iCol := cxViewWorker.GetColumnByFieldName('본사코드').Index;
	Edit1.Text := cxViewWorker.DataController.Values[iRow, iCol];
	
	iCol := cxViewWorker.GetColumnByFieldName('지사코드').Index;
	Edit10.Text := cxViewWorker.DataController.Values[iRow, iCol];
  Edit4.SetFocus;
end;

procedure TFrm_JON10.btn_HelpClick(Sender: TObject);
begin
	Pnl_Help.Left := 373;
	Pnl_Help.Top := 76;

	if Pnl_Help.Visible then Pnl_Help.Visible := False
	                    else Pnl_Help.Visible := True;
end;

procedure TFrm_JON10.btnRbButton2Click(Sender: TObject);
const
	ls_sabun = '<Worker Sabun="WkSabunString" WkNm="WkNmString" WkBrNo="WkBrNoString" OutBrNo="OutBrNoString" OutBrNm="OutBrNmString" OutHdNo="OutHdNoString" WkHdNo="WkHdNoString" ConfSlip="ConfSlipString" />';
var
	ls_TxLoad, sBrNm, sBrNo, sHdNo: string;
  rv_str, sCash: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
	msg, sWKName, sWKName2, sTmp: string;
	ls_Msg_Err: string;
begin
	try
    if grpWorker.Visible then
    begin
      if (edtWkSabun.Text = '') then
      begin
        GMessagebox('기사사번이 없습니다.', CDMSE);
        exit;
      end;
    end else
    begin
      Edit15.text := '';
      if (edtWkSelSabun.Text = '') then
      begin
        GMessagebox('기사사번이 없습니다.', CDMSE);
        exit;
      end;
    end;
    sCash := StringReplace(Edit4.Text, ',', '', [rfReplaceAll]);

    if StrToIntDef(sCash, 0) <= 0 then
    begin
      GMessagebox('입금캐쉬 0이하이면 전송할수 없습니다.', CDMSE);
      Edit4.SetFocus;
      exit;
    end;

    if (GT_USERIF.LV = '10') and (StrToInt(sCash) > StrToInt(Edit14.Text)) then
    begin
      GMessagebox('접수오더 요금이하로만 입금 가능합니다.', CDMSE);
      Edit4.Text := Edit14.Text;
      exit;
    end;

    if (FJonPrice > -1) and (-FTotalCash + StrToIntDef(sCash, 0) > FJonPrice) then
    begin
      GMessagebox(Format('접수오더 요금이하로만 입금 가능합니다.' + #13#10 +
        '접수오더 요금 : %s 원(총 요청 금액: %s 원)' + #13#10 +
        '기존입금 금액 : %s 원' + #13#10 + '입금 요청금액 : %s 원', [
        FormatCash(FJonPrice),
        FormatCash(-FTotalCash + StrToIntDef(sCash, 0)),
        FormatCash(FTotalCash),
        FormatCash(StrToIntDef(sCash, 0))
      ]), CDMSE);
      Exit;
    end;
    if cb_Branch.text = '' then
    begin
      GMessagebox('출금지사를 선택하여 주십시오.', CDMSE);
      Exit;
    end;

  	if Not func_EucKr_Check(edtMemo, 0) then Exit;

    msg := Format('[%s] 원을 입금하시겠습니까?', [sCash]);
    if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO +
      MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
    begin
      Exit;
    end;

    if grpWorker.Visible then
    begin
      if frm_Main.in_Person = Trim(edtWkSabun.text) then
      begin
        GMessagebox('10초 이내 동일 기사에게 입금하실 경우 중복의 문제가 있을 수 있습니다' + #13#10 +
          '10초 후에 입금하여 주세요.', CDMSE);
        Exit;
      end;
    end else
    begin
      if frm_Main.in_Person = Trim(edtWkSelSabun.text) then
      begin
        GMessagebox('10초 이내 동일 기사에게 입금하실 경우 중복의 문제가 있을 수 있습니다' + #13#10 +
          '10초 후에 입금하여 주세요.', CDMSE);
        Exit;
      end;
    end;
    ls_TxLoad := GTx_UnitXmlLoad('C022N1.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WKSH1001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'TypeString', '00', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CashString', sCash, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'MemoString', En_Coding(edtMemo.Text), [rfReplaceAll]);

    if grpWorker.Visible then
    begin
			sWKName := StringReplace(edtWkName.Text, '&', '&amp;', [rfReplaceAll]);
//			sSabun := StringReplace(ls_sabun, 'WkSabunString', edtWkSabun.Text, [rfReplaceAll]);
//			sSabun := StringReplace(sSabun, 'WkNmString', sWKName, [rfReplaceAll]);
			sTmp := StringReplace(ls_sabun, 'WkSabunString', edtWkSabun.Text, [rfReplaceAll]);
		end else
		begin
			sWKName := StringReplace(edtWkSelName.Text, '&', '&amp;', [rfReplaceAll]);
			sTmp := StringReplace(ls_sabun, 'WkSabunString', edtWkSelSabun.Text, [rfReplaceAll]);
		end;
		sTmp := StringReplace(sTmp, 'WkNmString', sWKName, [rfReplaceAll]);
		
		sTmp := StringReplace(sTmp, 'WkBrNoString', Edit10.Text, [rfReplaceAll]);
		sWKName2 := StringReplace(Edit1.Text, '&', '&amp;', [rfReplaceAll]);
		sTmp := StringReplace(sTmp, 'WkHdNoString', sWKName2, [rfReplaceAll]);

    if Not pJON10Dock.bUnDock then pJON10Dock.HDNO  := GT_SEL_BRNO.HDNO;

    if grpWorker.Visible then
    begin
			sBrNo := func_BRNOSearch;
			sHdNo := func_HDNOSearch;
			sTmp := StringReplace(sTmp, 'OutBrNoString', sBrNo, [rfReplaceAll]);
			sTmp := StringReplace(sTmp, 'OutHdNoString', sHdNo, [rfReplaceAll]);
		end else
    begin
			sTmp := StringReplace(sTmp, 'OutBrNoString', edt2.Text, [rfReplaceAll]);
			sTmp := StringReplace(sTmp, 'OutHdNoString', Edit13.Text, [rfReplaceAll]);
		end;

		sBrNm := func_BRNMSearch;
		sTmp := StringReplace(sTmp, 'OutBrNmString', En_Coding(sBrNm), [rfReplaceAll]);
		sTmp := StringReplace(sTmp, 'ConfSlipString', edtConfSlip.Text, [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', '1', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', sTmp, [rfReplaceAll]);
    slReceive := TStringList.Create;
    btnRbButton2.Enabled := False;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
					ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
					if ('0000' = ls_Msg_Err) then
					begin
						GMessagebox('충전 되었습니다.', CDMSI);
						btnCloseClick(Self);
					end else
					begin
            Assert(False, 'C022N1.XML Send :' + ls_TxLoad);
						GMessagebox(ls_Msg_Err, CDMSE);
					end;
				end;
      end;
    finally
      FreeAndNil(slReceive);

      btnRbButton2.Enabled := True;
      if grpWorker.Visible then
      begin
        frm_Main.in_Person := Trim(edtWkSabun.text);
      end else
      begin
        frm_Main.in_Person := Trim(edtWkSelSabun.text);
      end;
      frm_Main.Time_per.Enabled := True;
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
      btnRbButton2.Enabled := True;
      Frm_Main.Frm_JON03[Jon03Tag].N44.Enabled := True;
    end;
  end;
end;

procedure TFrm_JON10.proc_recieve(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
	ls_ClientKey, ls_Msg_Err: string;
	lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
	i, j, iRow: Integer;
	iTitle: array[0..10] of integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
      Exit;
    ls_ClientKey := GetXmlClientKey(ls_rxxml);
    if Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5) = '1' then
    begin
			if (0 < GetXmlRecordCount(ls_rxxml)) then
      begin
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
        cxViewWorker.DataController.SetRecordCount(0);
        ls_Rcrd := TStringList.Create;
				try
					proc_Cell_Read;
					for i := 0 to lbTitle.Items.Count - 1 do
						iTitle[i] := cxViewWorker.GetColumnByFieldName(lbTitle.Items.Strings[i]).Index;
						
					for i := 0 to lst_Result.length - 1 do
					begin
						GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
						iRow := cxViewWorker.DataController.AppendRecord;
						for j := 0 to ls_Rcrd.Count - 1 do
							cxViewWorker.DataController.Values[iRow, iTitle[j]] := ls_Rcrd[j];
          end;
        finally
          ls_Rcrd.Free;
        end;
      end;
      gs_Search := Edit2.Text + edt1.Text;

      mmoPayoutSearch.Top := 4;
      mmoPayoutSearch.Height := 96;

      cxGrid1.Visible := True;
      grpWorker.Visible := False;
      grpWorkerSel.Visible := False;
      pnlPayoffCmd.Visible := False;

      cxLabel24.Caption := '[' + IntToStr(cxViewWorker.DataController.RecordCount) + ']';
    end else
    if Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5) = '2' then
    begin
      mmoPayoutSearch.Clear;
      FTotalCash := 0;
      if (0 < GetXmlRecordCount(ls_rxxml)) then
      begin
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

        ls_Rcrd := TStringList.Create;
        try
          for i := 0 to lst_Result.length - 1 do
          begin
            GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
            mmoPayoutSearch.Lines.Add(Format('시간: %s, 금액: %s, 적요: %s, 입금ID: %s',
              [
                GetStrToLongDateTimeStr(ls_Rcrd[0]), ls_Rcrd[1], ls_Rcrd[2], ls_Rcrd[3]
              ])
            );
            FTotalCash := FTotalCash + StrToIntDef(ls_Rcrd[1], 0);
          end;
        finally
          ls_Rcrd.Free;
        end;

        mmoPayoutSearch.Lines.Add(Format('총 [%d 건], [%s 원] 의 입금 내역이 있습니다.', [
          lst_Result.length,
          FormatCash(FTotalCash)
        ]));
      end else
      begin
        mmoPayoutSearch.Lines.Add('입금 내역이 없습니다.');
      end;;
    end else
    if ls_ClientKey = 'WKSH1001' then
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_Msg_Err) then
      begin
        GMessagebox('충전 되었습니다.', CDMSI);
        btnCloseClick(Self);
      end else
      begin
        GMessagebox(ls_Msg_Err, CDMSE);
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_JON10.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON10.proc_Cell_Clear;
var
	i: Integer;
	ln_env: TIniFile;
	Column: TcxGridDBColumn;
begin
	try
		ln_env := TIniFile.Create(ENVPATHFILE);
		ln_env.EraseSection('ConfJON10');
		ln_env.EraseSection('ConfJON10Size');
		cxViewWorker.DataController.BeginUpdate;
		try
			for i := 0 to Length(COLUUMNLIST) - 1 do
			begin
				Column := cxViewWorker.GetColumnByFieldName(COLUUMNLIST[i].CName);
				Column.Index := i;
				Column.Width := COLUUMNLIST[i].CWid;
			end;

		finally
			cxViewWorker.DataController.EndUpdate;
			FreeAndNil(ln_env);
		end;
	except
		on e: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_JON10.proc_Cell_Read;
var
	i, j, iRow, ciWid : Integer;
	ln_env: TIniFile;
	ShowList, WidthList: TStringList;
	Column: TcxGridDBColumn;
	sTmp : string;
begin
	ln_Env := TIniFile.Create(ENVPATHFILE);
	ShowList := TStringList.Create;
	WidthList := TStringList.Create;

	try
		ln_env.ReadSectionValues('ConfJON10', ShowList);
		ln_env.ReadSectionValues('ConfJON10Size', WidthList);

    if (ShowList.Count > 0) and (ShowList.Count = WidthList.Count) then
    begin
      for I := 0 to ShowList.Count - 1 do
      begin
				Column := cxViewWorker.GetColumnByFieldName(ShowList.Values[IntToStr(I)]);

				for j := 0 to Length(COLUUMNLIST) - 1 do
				begin
					sTmp := ShowList.Values[IntToStr(i)];
					if (COLUUMNLIST[j].CName = sTmp ) then
					begin
						ciWid := COLUUMNLIST[j].CWid;
						Break;
					end;
        end;

        if Assigned(Column) then
        begin
					Column.Index := I;
					Column.Width := StrToIntDef(WidthList.Values[IntToStr(I)], ciWid);
				end;
      end;
		end else
		begin
			proc_Cell_Clear;
		end;
	finally
		FreeAndNil(ShowList);
		FreeAndNil(WidthList);
    FreeAndNil(ln_env);
  end;
end;

procedure TFrm_JON10.proc_Cell_Save;
var
	i: Integer;
	ln_env: TIniFile;
	sTmp: string;
begin
	try
		// 접속기사 그리드 컬럼이동 설정값 저장.
		ln_env := TIniFile.Create(ENVPATHFILE);
		try
			ln_env.EraseSection('ConfJON10');
			ln_env.EraseSection('ConfJON10Size');
			for i := 0 to cxViewWorker.ColumnCount - 1 do
			begin
				sTmp := cxViewWorker.Columns[i].DataBinding.FieldName;
				ln_env.WriteString('ConfJON10', IntToStr(i), sTmp);
				ln_env.WriteInteger('ConfJON10Size', IntToStr(i), cxViewWorker.Columns[i].Width);
			end;
		finally
			FreeAndNil(ln_env);
		end;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_JON10.proc_init;
var
  i: Integer;
begin
	gs_Search := '';
  case StrToInt(GT_USERIF.LV) of
    10:
			begin
//				grp1.Enabled := False;
				cb_Branch.Enabled := False;
//				grp2.Enabled := False;
				Edit2.Enabled := False;
				edt1.Enabled := False;
				whbtn_Accept.Enabled := False;
				RbCheckBox1.Enabled := False;   
				
				btnSelect.Enabled := False;
        Edit4.SetFocus;
      end;
    40:
      begin
//				grp1.Enabled := False;
				cb_Branch.Enabled := False;
//				grp2.Enabled := True;
				Edit2.Enabled := True;
				edt1.Enabled := True;
				whbtn_Accept.Enabled := True;
				RbCheckBox1.Enabled := True;   

				btnSelect.Enabled := True;
				Edit2.SetFocus;
      end;
    60:
      begin
//				grp1.Enabled := True;
				cb_Branch.Enabled := True;
//				grp2.Enabled := True;
				Edit2.Enabled := True;
				edt1.Enabled := True;
				whbtn_Accept.Enabled := True;
				RbCheckBox1.Enabled := True;   

				btnSelect.Enabled := True;
        Edit2.SetFocus;
      end;
  end;
  for i := 0 to cxViewWorker.ColumnCount - 1 do
    cxViewWorker.Columns[i].DataBinding.ValueType := 'String';

  mmoPayoutSearch.Clear;

  grpWorker.Left := grpWorkerSel.Left;
  grpWorker.Top  := grpWorkerSel.Top;

  edit2.Clear;
  edt1.Clear;

  mmoPayoutSearch.Top := 30;
  mmoPayoutSearch.Height := 70;

  grpWorker.Visible := True;
  grpWorkerSel.Visible := False;
	cxGrid1.Align := alClient;
  cxGrid1.Visible := False;

  FJonPrice := StrToIntDef(RemoveAll(Edit4.Text, ','), -1);

	RequestSendpaySearch(edt2.Text, Edit15.Text, RemoveDatetimeSeparator(edtHdnOrderDate.Text));
end;

procedure TFrm_JON10.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFrm_JON10.FormCreate(Sender: TObject);
begin
  cxGrid1.Left := 4;
  cxGrid1.Top  := 4;
end;

procedure TFrm_JON10.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON10.FormDestroy(Sender: TObject);
begin
  Frm_JON10 := Nil;
end;

procedure TFrm_JON10.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON10, GS_FONTNAME);
  fSetSkin(Frm_JON10);
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  proc_init;
end;

function TFrm_JON10.func_BRNMSearch: string;
var iTmp : integer;
begin
	iTmp := Pos(')', cb_Branch.Text);
	Result := Copy(cb_Branch.Text, iTmp + 1 , length(cb_Branch.Text) - iTmp); 
end;

function TFrm_JON10.func_BRNOSearch: string;
var iTmp : integer;
begin
	iTmp := Pos(',', cb_Branch.Text);
	Result := Copy(cb_Branch.Text, iTmp + 1 , 4); 
end;

function TFrm_JON10.func_HDNOSearch: string;
var iTmp : integer;
begin
	iTmp := Pos(',', cb_Branch.Text);
	Result := Copy(cb_Branch.Text, 2, iTmp-2); //'(A100,O501)SN테스트지사_01/콜마너본사'
end;

procedure TFrm_JON10.N2Click(Sender: TObject);
begin
	proc_Cell_Clear;
end;

procedure TFrm_JON10.cxButton1Click(Sender: TObject);
begin
	Pnl_Help.Visible := False;
end;

procedure TFrm_JON10.cxGroupBox5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnl_Help.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON10.cxViewWorkerCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelectClick(btnSelect);
end;

procedure TFrm_JON10.cxViewWorkerColumnPosChanged(Sender: TcxGridTableView;
	AColumn: TcxGridColumn);
begin
	proc_Cell_Save;
end;

procedure TFrm_JON10.cxViewWorkerColumnSizeChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_Cell_Save;
end;

procedure TFrm_JON10.RequestSendpaySearch(ABrNo, ASlipNo, AOrderDtm: string);
var
  xdom: msDomDocument;
  ls_rxxml: WideString;
  ls_TxLoad, rv_str, sNode: string;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
    xdom := ComsDomDocument.Create;
    try
      if (not xdom.loadXML(ls_rxxml)) then
      begin
        Screen.Cursor := crDefault;
        ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
        Exit;
      end;

      sNode := '/cdms/header/UserID';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
      sNode := '/cdms/header/ClientVer';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
      sNode := '/cdms/header/ClientKey';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Value').Text := Self.Caption + '2';

      sNode := '/cdms/Service/Data/Query';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRTOWKS01';
      sNode := '/cdms/Service/Data/Query/Param';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_clon := lst_node.item[0].cloneNode(True);

      sNode := '/cdms/Service/Data/Query';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].appendChild(lst_clon);
      sNode := '/cdms/Service/Data/Query/Param';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_clon := lst_node.item[0].cloneNode(True);

      sNode := '/cdms/Service/Data/Query';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].appendChild(lst_clon);

      sNode := '/cdms/Service/Data/Query/Param';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
      lst_Node.item[0].attributes.getNamedItem('Value').Text := ABrNo;
      lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
      lst_Node.item[1].attributes.getNamedItem('Value').Text := ASlipNo;
      lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
      lst_Node.item[2].attributes.getNamedItem('Value').Text := AOrderDtm;

      ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

      slReceive := TStringList.Create;

      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if trim(rv_str) <> '' then
        begin
          ls_rxxml := rv_str;
          proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
      xdom := Nil;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON10.btnCloseClick(Sender: TObject);
begin
  if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
  begin
    if Frm_Main.JON03MNG[Jon03Tag].Use then
    begin
      if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
        Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
      else
      if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
        Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
    end;
	end;

  Frm_Main.Frm_JON03[Jon03Tag].N44.Enabled := True;
  Close;
end;

end.

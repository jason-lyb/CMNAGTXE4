unit xe_BTN01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls,
  cxContainer, cxEdit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxTextEdit, cxDropDownEdit, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit, Vcl.StdCtrls,
	cxRadioGroup, cxMaskEdit, cxMemo, Vcl.ExtCtrls, cxButtons, MSXML2_TLB,
  dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  Tfrm_BTN01 = class(TForm)
    PnlCallBellCust: TPanel;
    pnlTitle: TPanel;
    cxLblActive: TLabel;
    BtnClose: TcxButton;
    clbCuSeq: TcxLabel;
    Shape25: TShape;
    cxLabel32: TcxLabel;
    Shape23: TShape;
    Shape24: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
		Shape29: TShape;
    Shape30: TShape;
		Shape31: TShape;
		Shape32: TShape;
    Shape33: TShape;
    meoCallBellUpsoMemo: TcxMemo;
    btnSave: TcxButton;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cboBranch: TcxComboBox;
    cboStatus: TcxComboBox;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    edtUpsoName: TcxTextEdit;
    rb_Declining: TcxRadioButton;
    rb_Straight: TcxRadioButton;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    edtCalValue: TcxCurrencyEdit;
    edtBankNameCust: TcxTextEdit;
    cxLabel27: TcxLabel;
    edtBankNumberCust: TcxTextEdit;
    edtBankOwnerCust: TcxTextEdit;
    lbBankNameCust: TcxLabel;
    lbBankNumberCust: TcxLabel;
    lbBankOwnerCust: TcxLabel;
    cxLabel31: TcxLabel;
    cboKeynumber: TcxComboBox;
    cboUpsoWK: TcxComboBox;
    cxGrid6: TcxGrid;
    cxUpsoTel: TcxGridBandedTableView;
    cxUpsoTelColumn1: TcxGridBandedColumn;
    cxUpsoTelColumn2: TcxGridBandedColumn;
    cxUpsoTelColumn3: TcxGridBandedColumn;
    cxUpsoTelColumn4: TcxGridBandedColumn;
    cxUpsoTelColumn5: TcxGridBandedColumn;
    cxUpsoTelColumn6: TcxGridBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxLabel33: TcxLabel;
    meoCallBellArea: TcxTextEdit;
    btnAddrSearch: TcxButton;
    lbUpsoAreaName: TcxLabel;
    RbButton23: TcxButton;
    RbButton24: TcxButton;
    pnlMain: TPanel;
    edtUpsoWKID: TcxTextEdit;
    cboBankName: TcxComboBox;
    cboBankCode: TcxComboBox;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    Shape2: TShape;
    cxLabel2: TcxLabel;
    edtUpsoHP: TcxTextEdit;
    edtUpsoAreaDetail: TcxLabel;
    edtXval: TcxLabel;
    edtYval: TcxLabel;
    cxLabel43: TcxLabel;
    btnCUT011: TcxButton;
    procedure lbBankNameCustClick(Sender: TObject);
    procedure lbBankNumberCustClick(Sender: TObject);
    procedure lbBankOwnerCustClick(Sender: TObject);
    procedure edtBankNameCustEnter(Sender: TObject);
    procedure edtBankNameCustExit(Sender: TObject);
    procedure edtBankNameCustFocusChanged(Sender: TObject);
    procedure edtBankNameCustPropertiesChange(Sender: TObject);
    procedure edtBankNumberCustPropertiesChange(Sender: TObject);
    procedure edtBankNumberCustEnter(Sender: TObject);
    procedure edtBankNumberCustExit(Sender: TObject);
    procedure edtBankNumberCustFocusChanged(Sender: TObject);
    procedure edtBankOwnerCustEnter(Sender: TObject);
    procedure edtBankOwnerCustExit(Sender: TObject);
    procedure edtBankOwnerCustFocusChanged(Sender: TObject);
    procedure edtBankOwnerCustPropertiesChange(Sender: TObject);
		procedure BtnCloseClick(Sender: TObject);
    procedure btnAddrSearchClick(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure RbButton23Click(Sender: TObject);
		procedure RbButton24Click(Sender: TObject);
		procedure btnSaveClick(Sender: TObject);
		procedure rb_StraightClick(Sender: TObject);
    procedure rb_DecliningClick(Sender: TObject);
    procedure cboBankNamePropertiesChange(Sender: TObject);
    procedure meoCallBellAreaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cboBranchPropertiesChange(Sender: TObject);
    procedure cboKeynumberPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtUpsoAreaDetailPropertiesChange(Sender: TObject);
		procedure cboUpsoWKPropertiesChange(Sender: TObject);
    procedure cboBranchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cboKeynumberKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cboUpsoWKKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtUpsoNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cboStatusKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtUpsoHPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rb_StraightKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rb_DecliningKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCalValueKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cboBankNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBankNumberCustKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBankOwnerCustKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxUpsoTelEditKeyPress(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure cxUpsoTelEditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure cboBranchKeyPress(Sender: TObject; var Key: Char);
    procedure meoCallBellAreaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCalValueKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCalValueExit(Sender: TObject);
    procedure btnCUT011Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtUpsoNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meoCallBellUpsoMemoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlMainMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
	private
		{ Private declarations }
		procedure Proc_AreaSearchKDown_Added;
		// 선택된 지사정보에서 본사코드를 추출 한다.
		function Proc_HDNOSearch: string;
		// 고객번호 중복체크(0 : 신규, 1 : 수정)
		function func_tel_check(iType: Integer): Boolean;
		procedure proc_saveUpso(iType: Integer);
	public
		{ Public declarations }
		lcsCallBell1,lcsCallBell2,lcsCallBell3 : string;
		sl_WkID, sl_WkNM : TStringList;
		procedure proc_Init;
		procedure lcs_Clear(Panel: string);
		procedure Hide_Panel(Panel: string; Showhide : integer);
		procedure Grid_Clear(Panel: string; Grid: Integer);
		// 선택된 지사정보에서 지사코드호를 추출 한다.
		function Proc_BRNOSearch: string;
	end;

var
  frm_BTN01: Tfrm_BTN01;

implementation

{$R *.dfm}

uses xe_JON30, xe_GNL, xe_GNL2, xe_Func, xe_Msg, xe_packet, xe_Xml, xe_Query, xe_Dm, xe_Flash, xe_BTN, xe_CUT011;

{ Tfrm_BTN01 }

procedure Tfrm_BTN01.btnAddrSearchClick(Sender: TObject);
begin
	lcsActiveEdit := 'meoCallBell';
	if (Length(WideString(meoCallBellArea.text)) >= 2) then
	begin
		Proc_AreaSearchKDown_Added;
	end;
end;

procedure Tfrm_BTN01.BtnCloseClick(Sender: TObject);
begin
	Hide_Panel('meoCallBell',1);
	close;
end;

procedure Tfrm_BTN01.btnCUT011Click(Sender: TObject);
begin
	if clbCuSeq.Caption = '' then exit;
	
	// 6 : 수정창에서 고객수정 4 : 접수창에서 고객수정
	if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);
  Frm_CUT011.FControlInitial(False);
  Frm_CUT011.Tag := 6;
  Frm_CUT011.Hint := IntToStr(Self.Tag);
	Frm_CUT011.clbCuSeq.Caption := clbCuSeq.Caption;
	Frm_CUT011.proc_search_brKeyNum(Proc_BRNOSearch, CallToStr(cboKeynumber.Text));
	if Frm_CUT011.top <= 10 then Frm_CUT011.top := 10;

	if not Frm_CUT011.Showing then
	begin
		Frm_CUT011.Left := (Screen.Width  - Frm_CUT011.Width) div 2;
		Frm_CUT011.top  := (Screen.Height - Frm_CUT011.Height) div 2;
		Frm_CUT011.Show;
	end;
	Frm_CUT011.proc_cust_Intit;
end;

procedure Tfrm_BTN01.btnSaveClick(Sender: TObject);
begin
	SetDebugeWrite('TFrm_BTN01.btnSaveClick');
	Try
		if pnlTitle.Hint = 'Insert' then
		begin
//			if func_tel_check(0) then
			proc_saveUpso(0)
		end else
		begin
//			if func_tel_check(1) then
			proc_saveUpso(1);
		end;
		Hide_Panel('meoCallBell',1);

	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_BTN01.cboBankNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edtBankNumberCust.SetFocus;
end;

procedure Tfrm_BTN01.cboBankNamePropertiesChange(Sender: TObject);
begin
	cboBankCode.ItemIndex := cboBankName.ItemIndex;
end;

procedure Tfrm_BTN01.cboBranchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then cboKeynumber.SetFocus;
end;

procedure Tfrm_BTN01.cboBranchKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else
		key := #0;
end;

procedure Tfrm_BTN01.cboBranchPropertiesChange(Sender: TObject);
var i : integer;
	sBrNo : string;
begin
	sBrNo := Proc_BRNOSearch;
	cboKeynumber.Properties.Items.Clear;
	for i := 0 to Frm_BTN.Scb_CallBell_KeyNumber.count -1 do
	begin
		if sBrNo = Frm_BTN.Scb_CallBell_BrNo[i] then
			cboKeynumber.Properties.Items.Add(StrToCall(Frm_BTN.Scb_CallBell_KeyNumber[i]));
	end;
	cboKeynumber.ItemIndex := 0;
end;

procedure Tfrm_BTN01.cboKeynumberKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then cboUpsoWK.SetFocus;
end;

procedure Tfrm_BTN01.cboKeynumberPropertiesChange(Sender: TObject);
var i, j : integer;
	sKeyNumber : string;
	slWkNM, slWkID : TStringList;
begin
	sl_WkID.Clear;
	sl_WkNM.Clear;
	sKeyNumber := CallToStr(cboKeynumber.Text);
	cboUpsoWK.Properties.Items.Clear;
	slWkNM := TStringList.Create;
	slWkID := TStringList.Create;
	for i := 0 to Frm_BTN.Scb_CallBell_WKID.count -1 do
	begin
		if sKeyNumber = Frm_BTN.Scb_CallBell_KeyNumber[i] then
		begin
			slWkID.Clear;
			slWkID.Delimiter     := ',';
			slWkID.DelimitedText := Frm_BTN.Scb_CallBell_WKID[i];
			slWkNM.Clear;
			slWkNM.Delimiter     := ',';
			slWkNM.DelimitedText := Frm_BTN.Scb_CallBell_WKNM[i];

			for j := 0 to slWkID.count -1 do
			begin
				cboUpsoWK.Properties.Items.Add(slWkNM[j] + '[' + slWkID[j] + ']');
				sl_WkID.Add(slWkID[j]);
				sl_WkNM.Add(slWkNM[j]);
			end;
			Break;
		end;
	end;
	cboUpsoWK.Properties.Items.insert(0, '영업사원없음');
	cboUpsoWK.ItemIndex := 0;
end;

procedure Tfrm_BTN01.cboStatusKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then RbButton23.SetFocus;
end;

procedure Tfrm_BTN01.cboUpsoWKKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edtUpsoName.SetFocus;
end;

procedure Tfrm_BTN01.cboUpsoWKPropertiesChange(Sender: TObject);
var sTmp : string;
begin
	sTmp := Copy(cboUpsoWK.Text, Pos('[', cboUpsoWK.Text) + 1, Pos(']',
		cboUpsoWK.Text) - (Pos('[', cboUpsoWK.Text) + 1)); //지사코드

	edtUpsoWKID.Text := sTmp;
end;

procedure Tfrm_BTN01.cxUpsoTelEditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then rb_Straight.SetFocus;
end;

procedure Tfrm_BTN01.cxUpsoTelEditKeyPress(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else
		key := #0;
end;

procedure Tfrm_BTN01.edtBankNameCustEnter(Sender: TObject);
begin
	lbBankNameCust.Visible := False;
end;

procedure Tfrm_BTN01.edtBankNameCustExit(Sender: TObject);
begin
	lbBankNameCust.Visible := (edtBankNameCust.Text = '');
end;

procedure Tfrm_BTN01.edtBankNameCustFocusChanged(Sender: TObject);
begin
	lbBankNameCust.Visible := ( Not edtBankNameCust.Focused ) And (edtBankNameCust.Text = '');
end;

procedure Tfrm_BTN01.edtBankNameCustPropertiesChange(Sender: TObject);
begin
	if ( Not edtBankNameCust.Focused ) then
		lbBankNameCust.Visible := (edtBankNameCust.Text = ''); // 은행명 입력 잔상.
end;

procedure Tfrm_BTN01.edtBankNumberCustEnter(Sender: TObject);
begin
	lbBankNumberCust.Visible := False;
end;

procedure Tfrm_BTN01.edtBankNumberCustExit(Sender: TObject);
begin
	lbBankNumberCust.Visible := (edtBankNumberCust.Text = '');
end;

procedure Tfrm_BTN01.edtBankNumberCustFocusChanged(Sender: TObject);
begin
	lbBankNumberCust.Visible := ( Not edtBankNumberCust.Focused ) And (edtBankNumberCust.Text = '');
end;

procedure Tfrm_BTN01.edtBankNumberCustKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edtBankOwnerCust.SetFocus;
end;

procedure Tfrm_BTN01.edtBankNumberCustPropertiesChange(Sender: TObject);
begin
	if ( Not edtBankNumberCust.Focused ) then
		lbBankNumberCust.Visible := (edtBankNumberCust.Text = ''); // 은행계좌 입력 잔상.
end;

procedure Tfrm_BTN01.edtBankOwnerCustEnter(Sender: TObject);
begin
	lbBankOwnerCust.Visible := False;
end;

procedure Tfrm_BTN01.edtBankOwnerCustExit(Sender: TObject);
begin
	lbBankOwnerCust.Visible := (edtBankOwnerCust.Text = '');
end;

procedure Tfrm_BTN01.edtBankOwnerCustFocusChanged(Sender: TObject);
begin
	lbBankOwnerCust.Visible := ( Not edtBankOwnerCust.Focused ) And (edtBankOwnerCust.Text = '');
end;

procedure Tfrm_BTN01.edtBankOwnerCustKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then meoCallBellArea.SetFocus;
end;

procedure Tfrm_BTN01.edtBankOwnerCustPropertiesChange(Sender: TObject);
begin
	if ( Not edtBankOwnerCust.Focused ) then
		lbBankOwnerCust.Visible := (edtBankOwnerCust.Text = ''); // 예금주 입력 잔상.
end;

procedure Tfrm_BTN01.edtCalValueExit(Sender: TObject);
begin
	if rb_Straight.checked then
	begin
		if edtCalValue.Value > 5000 then
		begin
			edtCalValue.Value := 5000;
			GMessagebox('일정금액으로 설정 시 최대 5,000원을 넘을 수 없습니다.', CDMSE);
			edtCalValue.SetFocus;
			Exit;
		end;
	end else
  if rb_Declining.Checked then
	begin
		if edtCalValue.Value > 50 then
		begin
			edtCalValue.Value := 50;
			GMessagebox('매출비율로 설정 시 최대 50%을 넘을 수 없습니다.', CDMSE);
			edtCalValue.SetFocus;
			Exit;
		end;
	end;
end;

procedure Tfrm_BTN01.edtCalValueKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then 
	begin
		cboBankName.SetFocus;
		if rb_Declining.Checked then
		begin
			if edtCalValue.Value > 50 then
			begin
				edtCalValue.Value := 50;
				GMessagebox('매출비율로 설정 시 최대 50%을 넘을 수 없습니다.', CDMSE);
				Exit;
			end;
		end;
	end;
end;

procedure Tfrm_BTN01.edtCalValueKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if rb_Straight.checked then
	begin
		if edtCalValue.Value > 5000 then
		begin
			edtCalValue.Value := 5000;
			GMessagebox('일정금액으로 설정 시 최대 5,000원을 넘을 수 없습니다.', CDMSE);
			edtCalValue.SetFocus;
			Exit;
		end;
	end	else
  if rb_Declining.Checked then
	begin
		if edtCalValue.Value > 50 then
		begin
			edtCalValue.Value := 50;
			GMessagebox('매출비율로 설정 시 최대 50%을 넘을 수 없습니다.', CDMSE);
			edtCalValue.SetFocus;
			Exit;
		end;
	end;
end;

procedure Tfrm_BTN01.edtUpsoAreaDetailPropertiesChange(Sender: TObject);
begin
//	meoCallBellArea.Text := edtUpsoAreaDetail.Text; 
end;

procedure Tfrm_BTN01.edtUpsoHPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then cboStatus.SetFocus;
end;

procedure Tfrm_BTN01.edtUpsoNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edtUpsoHP.SetFocus;
end;

procedure Tfrm_BTN01.edtUpsoNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure Tfrm_BTN01.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure Tfrm_BTN01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	FreeAndNil(sl_WkID);
	FreeAndNil(sl_WkNM);
	Action := caFree;
end;

procedure Tfrm_BTN01.FormCreate(Sender: TObject);
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
	cxUpsoTel.OptionsView.NoDataToDisplayInfoText := '';
	proc_Init;
end;

procedure Tfrm_BTN01.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure Tfrm_BTN01.FormDestroy(Sender: TObject);
begin
	Frm_BTN01 := Nil;
end;

procedure Tfrm_BTN01.FormShow(Sender: TObject);
begin
  fSetFont(Frm_BTN01, GS_FONTNAME);
end;

function Tfrm_BTN01.func_tel_check(iType: Integer): Boolean;
var
	ls_TxLoad, ls_TxQry, rv_str, ls_Msg_Err : string;
  sHdNo, sBrNo, sKeyNum, sTel, sQueryTemp : string;
	ls_rxxml: WideString;
	i: Integer;
	xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
	slReceive: TStringList;
	ErrCode: integer;
begin
	Result := True;
	sHdNo := Proc_HDNOSearch;
  sBrNo := Proc_BRNOSearch;
	sKeyNum := CallToStr(cboKeynumber.Text);
	for i := 0 to cxUpsoTel.DataController.RecordCount - 1 do
	begin
		sTel := StringReplace(cxUpsoTel.DataController.Values[i, 0], '-', '', [rfReplaceAll]);

		ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
		fGet_BlowFish_Query(GSQ_CUSTOMER_TEL_CHECK, sQueryTemp);
		ls_TxQry := Format(sQueryTemp, [sHdNo, sBrNo, sKeyNum, sTel]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CUSTTELCHECK', [rfReplaceAll]);
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
          try
            xdom := ComsDomDocument.Create;
            if not xdom.loadXML(ls_rxxml) then
              Exit;
            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_MSG_Err) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              ls_Rcrd := TStringList.Create;
              try
                GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
                if iType = 0 then
                begin
                  if ls_Rcrd[0] <> '' then
                  begin
										Result := False;
										GMessagebox(strtocall(sTel) + ' 번호는 [' + ls_Rcrd[2]
											+
                      '] [' + ls_Rcrd[1] +
											'] 고객으로 등록되어 있는 전화번호 입니다.'
											+ #13#10 + '저장 할수 없습니다.', CDMSE);
										exit;
									end;
								end else
								if iType = 1 then
								begin
									if (clbCuSeq.Caption <> ls_Rcrd[0]) then
									begin
										if ls_Rcrd[0] = '' then
											continue;
										Result := False;
										GMessagebox(strtocall(sTel) + ' 번호는 [' + ls_Rcrd[2]
											+
											'] [' + ls_Rcrd[1] +
											'] 고객으로 등록되어 있는 전화번호 입니다.'
											+ #13#10 + '저장 할수 없습니다.', CDMSE);
                    exit;
                  end;
								end;
              finally
                ls_Rcrd.Free;
              end;
            end
            else
              GMessagebox(ls_Msg_Err, CDMSE);

            xdom := Nil;
          except
          end;
				end;
      end;
    finally
      Frm_Flash.Hide;
      FreeAndNil(slReceive);
    end;
  end;
  Result := True;
end;

procedure Tfrm_BTN01.Grid_Clear(Panel: string; Grid: Integer);
begin
	if Panel = 'meoCallBell' then
  begin
    if Grid = 1 then
    begin
      Frm_JON30.AdvStringGrid1.Clear;
      Frm_JON30.AdvStringGrid1.RowCount := 2;

      Frm_JON30.AdvStringGrid1.Cells[0, 0] := '시도';
      Frm_JON30.AdvStringGrid1.Cells[1, 0] := '시군구';
      Frm_JON30.AdvStringGrid1.Cells[2, 0] := '읍면동';
      Frm_JON30.AdvStringGrid1.Cells[3, 0] := '세부지명';
      Frm_JON30.AdvStringGrid1.Cells[4, 0] := '인근POI';
      Frm_JON30.AdvStringGrid1.Cells[5, 0] := '거리(m)';
      Frm_JON30.AdvStringGrid1.Cells[6, 0] := 'X좌표';
      Frm_JON30.AdvStringGrid1.Cells[7, 0] := 'Y좌표';
      Frm_JON30.AdvStringGrid1.ShowSelection := False;
    end else
    if Grid = 2 then
    begin
      Frm_JON30.AdvStringGrid2.Clear;
      Frm_JON30.AdvStringGrid2.RowCount := 1;
      Frm_JON30.AdvStringGrid2.ShowSelection := False;
    end else
    if Grid = 3 then
    begin
      Frm_JON30.AdvStringGrid3.Clear;
			Frm_JON30.AdvStringGrid3.RowCount := 1;
      Frm_JON30.AdvStringGrid3.ShowSelection := False;
    end;
  end;
end;

procedure Tfrm_BTN01.Hide_Panel(Panel: string; Showhide: integer);
begin
	if Showhide = 0 then Frm_JON30.Show
	else
	if Showhide = 1 then
	begin
		if (Panel = 'meoCallBell') then
		begin
			Frm_JON30.Hide;
		end else
		begin
			Frm_JON30.Hide;
		end;
	end;

	if Panel = 'meoCallBell' then
	begin
		Frm_JON30.pnl_01START.Visible := False;
		Frm_JON30.pnl_02END.Visible := True;
		Frm_JON30.pnl_03VIA.Visible := False;
	end;
end;

procedure Tfrm_BTN01.lbBankNameCustClick(Sender: TObject);
begin
	edtBankNameCust.Setfocus;
end;

procedure Tfrm_BTN01.lbBankNumberCustClick(Sender: TObject);
begin
	edtBankNumberCust.Setfocus;
end;

procedure Tfrm_BTN01.lbBankOwnerCustClick(Sender: TObject);
begin
	edtBankOwnerCust.SetFocus;
end;

procedure Tfrm_BTN01.lcs_Clear(Panel: string);
begin
	lcsCallBell1 := '';
	lcsCallBell2 := '';
	lcsCallBell3 := '';
	lbUpsoAreaName.Caption := '';
	edtUpsoAreaDetail.Caption := '';
	edtXval.Caption := '';
	edtYval.Caption := '';
end;

procedure Tfrm_BTN01.meoCallBellAreaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then 
	begin
		btnAddrSearch.Click;
	end
	else
  if Key = VK_BACK then
	begin
		if (Length(meoCallBellArea.Text) <= 1) then
    begin
      // 키워드가 모두 지워진 상태에서 한번더 BACK 키를 누를경우 컨트롤 초기화 처리.
      lcs_Clear(lcsActiveEdit);

      gKWComp := '';

      gmap_forword := '';

			Frm_JON30.sPreSearchWord := '';
			
			Grid_Clear(lcsActiveEdit,1);
      Grid_Clear(lcsActiveEdit,2);
      Grid_Clear(lcsActiveEdit,3);
      Hide_Panel(lcsActiveEdit,1);
      Exit;
    end else
		if (Length(meoCallBellArea.Text) <= 2) then
    begin
      gmap_forword := '';
{    end else
    if (Length(meoStartAreaCUT.Text) < Length(map_ls_Text)) then
    begin
      map_ls_Text := '';
      gmap_forword := '';
-}
    end;
  end;
end;

procedure Tfrm_BTN01.meoCallBellAreaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);	
	if ( ( Key in [VK_DOWN] ) ) then
	begin
		if Frm_JON30.AdvStringGrid5.Cells[0,1] = '' then
		begin
			if Frm_JON30.AdvStringGrid4.Cells[0,0] = '' then
			begin
				if Frm_JON30.AdvStringGrid6.Cells[0,0] <> '' then
				begin
					Frm_JON30.AdvStringGrid5.ShowSelection := False;
					Frm_JON30.AdvStringGrid4.ShowSelection := False;
					Frm_JON30.AdvStringGrid6.ShowSelection := True;
					if Frm_JON30.AdvStringGrid6.CanFocus then
						Frm_JON30.AdvStringGrid6.SetFocus;
				end;
			end else
			begin
				Frm_JON30.AdvStringGrid5.ShowSelection := False;
				Frm_JON30.AdvStringGrid4.ShowSelection := True;
				Frm_JON30.AdvStringGrid6.ShowSelection := False;
				if Frm_JON30.AdvStringGrid4.CanFocus then
					Frm_JON30.AdvStringGrid4.SetFocus;
				Frm_JON30.AdvStringGrid4.FocusCell(0,0);
			end;
		end else
		begin
			Frm_JON30.AdvStringGrid5.ShowSelection := True;
			Frm_JON30.AdvStringGrid4.ShowSelection := False;
			Frm_JON30.AdvStringGrid6.ShowSelection := False;
			if Frm_JON30.AdvStringGrid5.CanFocus then
				Frm_JON30.AdvStringGrid5.SetFocus;
		end;
	end;
end;

procedure Tfrm_BTN01.meoCallBellUpsoMemoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if fCheckMaxLength(TcxMemo(sender), 300) then Key := 0;
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure Tfrm_BTN01.pnlMainMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_BTN01.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_BTN01.Proc_AreaSearchKDown_Added;
begin
	if not Frm_JON30.noSearch then      //advgrid3 클릭 시 재 검색 안됨.
	begin
		if GS_MAP_AREA_AUTOSHOW then
		begin
		 Hide_Panel(lcsActiveEdit,0);
		end else
		if GS_MAP_AREA_AUTOSHOW = False then
		begin
			Frm_JON30.chk_Map(False);
			Hide_Panel(lcsActiveEdit,0);
		end;
		Frm_JON30.tmThread.Interval := 90;
		Frm_JON30.tmThread.Enabled := True;
	end else
	begin
		Frm_JON30.noSearch := False;
	end;
end;

function Tfrm_BTN01.Proc_BRNOSearch: string;
begin
	Result := Copy(cboBranch.Text, Pos('.', cboBranch.Text) + 1, Pos(':',
		cboBranch.Text) - (Pos('.', cboBranch.Text) + 1)); //지사코드
end;

function Tfrm_BTN01.Proc_HDNOSearch: string;
begin
	Result := Copy(cboBranch.Text, 1, Pos('.', cboBranch.Text) - 1); // 본사코드
end;

procedure Tfrm_BTN01.proc_Init;
begin
	if Not Assigned(sl_WkID) then sl_WkID := TStringList.Create;
	if Not Assigned(sl_WkNM) then sl_WkNM := TStringList.Create;

	clbCuSeq.Caption := '';
	cxUpsoTel.DataController.SetRecordCount(0);
	cxUpsoTel.Columns[0].DataBinding.ValueType := 'String';

	cboBranch.ItemIndex := 0;
	cboKeynumber.ItemIndex := 0;
	cboUpsoWK.ItemIndex := 0;
	cboStatus.ItemIndex := 0;
	edtUpsoWKID.Text := '';
	edtUpsoName.Text := '';
	rb_Straight.Checked := True;
	rb_Straight.Hint := '';
	rb_Declining.Hint := '';
	edtCalValue.value := 0;
	edtBankNameCust.Text := '';
	edtBankNumberCust.Text := '';
	edtBankOwnerCust.Text := '';
	lcsCallBell1 := '';
	lcsCallBell2 := '';
	lcsCallBell3 := '';
	meoCallBellArea.Text := '';
	lbUpsoAreaName.Caption := '';
	edtUpsoAreaDetail.Caption := '';
	edtXval.Caption := '';
	edtYval.Caption := '';
	meoCallBellUpsoMemo.Lines.Clear;
	pnlTitle.Hint := '';
	cxLabel26.Caption := '원';
end;

procedure Tfrm_BTN01.proc_saveUpso(iType: Integer);
var	XmlData, ErrMsg, param : string;
		ErrCode, i : Integer;
		sBrNo, sHdNo, sKeyNumber, sTmp, sTel : string;
begin
	SetDebugeWrite('TFrm_BTN01.btnSaveClick');
	Try
		sBrNo := Proc_BRNOSearch;
		sHdNo := Proc_HDNOSearch;
		sKeyNumber := CallToStr(cboKeynumber.Text) ;

		if cboBranch.Text = '' then 
		begin
			GMessagebox(Format('지사를 선택하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
			cboBranch.setFocus;
			exit;
		end;   

		if (frm_Btn.Scb_RealCallBell_BrNo.indexOf(sBrNo) < 0) and (cboStatus.ItemIndex = 0) then 
		begin
			GMessagebox(Format(sBrNo + '지사는 콜벨사용 지사가 아닙니다.' + #13#10 
											+ '대표번호에 실착신번호가 설정되어 있는지 확인하십시오.' + #13#10 + #13#10
											+ '[관련메뉴]회사관리>지사정보>지사상세정보>대표번호관리', [ErrCode, ErrMsg]), CDMSE);
			cboBranch.setFocus;
			exit;
		end;   

		
		if cboKeynumber.Text = '' then 
		begin
			GMessagebox(Format('대표번호를 선택하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
			cboKeynumber.setFocus;
			exit;
		end;   

		if (frm_Btn.Scb_RealCallBell_KeyNumber.indexOf(sKeyNumber) < 0) and (cboStatus.ItemIndex = 0) then 
		begin
			GMessagebox(Format(sKeyNumber + '번호는 콜벨사용 대표번호가 아닙니다.' + #13#10 
											+ '대표번호에 실착신번호가 설정되어 있는지 확인하십시오.' + #13#10 + #13#10
											+ '[관련메뉴]회사관리>지사정보>지사상세정보>대표번호관리', [ErrCode, ErrMsg]), CDMSE);
			cboKeynumber.setFocus;
			exit;
		end;   

		if cboStatus.ItemIndex = 0 then //콜벨일경우 체크
		begin
			if cboUpsoWK.Text = '' then 
			begin
				GMessagebox(Format('콜벨영업사원을 선택하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
				cboUpsoWK.setFocus;
				exit;
			end;   
			if (cboUpsoWK.itemindex = 0) and (cboStatus.ItemIndex = 0) then 
			begin
				GMessagebox(Format('콜벨영업사원을 선택하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
				cboUpsoWK.setFocus;
				exit;
			end;   
			if edtUpsoName.Text = '' then 
			begin
				GMessagebox(Format('업소명을 입력하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
				edtUpsoName.setFocus;
				exit;
			end;   
			if edtUpsoHP.Text = '' then 
			begin
				GMessagebox(Format('대표핸드폰을 입력하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
				edtUpsoHP.setFocus;
				exit;
			end;   
			if (Length(Trim(CallToStr(edtUpsoHP.Text))) > 11) or (Length(Trim(CallToStr(edtUpsoHP.Text))) < 10) then
			begin
				GMessagebox(Format('업소 대표핸드폰번호를 자릿수 오류' + #13#10 + '업소 대표핸드폰번호를 정확히 입력하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
				edtUpsoHP.setFocus;
				exit;
			end;

			if lbUpsoAreaName.Caption = '' then
			begin
				GMessagebox(Format('주소정보를 입력하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
				meoCallBellArea.setFocus;
				exit;
			end;
			if (edtXval.Caption = '') or (edtYval.Caption = '')then
			begin
				GMessagebox(Format('주소정보(좌표)가 정확하지 않습니다.' + #13#10 + #13#10 + '주소를 다시 입력하여 주십시오.', [ErrCode, ErrMsg]), CDMSE);
				meoCallBellArea.setFocus;
				exit;
			end;
		end;
		if cxUpsoTel.DataController.RowCount = 0 then
		begin
			GMessagebox(Format('업소번호를 추가하여 주십시오.' , [ErrCode, ErrMsg]), CDMSE);
			exit;
		end;   

		if rb_Straight.checked then
		begin
			if edtCalValue.Value > 5000 then
			begin
				edtCalValue.Value := 5000;
				GMessagebox('일정금액으로 설정 시 최대 5,000원을 넘을 수 없습니다.', CDMSE);
				edtCalValue.SetFocus;
				Exit;
			end;
		end else
    if rb_Declining.Checked then
		begin
			if edtCalValue.Value > 50 then
			begin
				edtCalValue.Value := 50;
				GMessagebox('매출비율로 설정 시 최대 50%을 넘을 수 없습니다.', CDMSE);
				edtCalValue.SetFocus;
				Exit;
			end;
		end;

   	if Not func_EucKr_Check(edtUpsoName, 0) then Exit;
   	if Not func_EucKr_Check(meoCallBellArea, 0) then Exit;
   	if Not func_EucKr_Check(meoCallBellUpsoMemo, 0) then Exit;
   	if Not func_EucKr_Check(edtBankOwnerCust, 0) then Exit;

		param := '';
		Param := sHdNo;
		Param := Param + '│' + sBrNo;
		Param := Param + '│' + sKeyNumber;
		Param := Param + '│' + edtUpsoWKID.Text;
		Param := Param + '│' + Trim(clbCuSeq.Caption);
		Param := Param + '│' + Trim(edtUpsoName.Text);
		if cboStatus.ItemIndex = 0 then Param := Param + '│' + '1' else Param := Param + '│' + '2';
		for i := 0 to cxUpsoTel.DataController.RowCount - 1 do
		begin
			if cxUpsoTel.DataController.Values[i, 0] = null then continue;
			sTel := StringReplace(cxUpsoTel.DataController.Values[i, 0], '-', '', [rfReplaceAll]);
			if (Length(sTel) < 8) or (Length(sTel) > 12) then
			begin
				GMessagebox('업소 착신번호 자릿수 오류' + #13#10 + '업소 착신번호를 정확히 입력하여 주십시오.', CDMSE);
				exit;
			end;
			if i = 0 then
				sTmp := StringReplace(cxUpsoTel.DataController.Values[i, 0], '-', '', [rfReplaceAll])
			else sTmp := sTmp + ',' + StringReplace(cxUpsoTel.DataController.Values[i, 0], '-', '', [rfReplaceAll]);
    end;
		Param := Param + '│' + sTmp;
		if rb_Declining.Checked then Param := Param + '│' + '2' else Param := Param + '│' + '1';
		Param := Param + '│' + StringReplace(Trim(edtCalValue.Text), ',', '', [rfReplaceAll]);

		Param := Param + '│' + Trim(cboBankCode.Text);
		Param := Param + '│' + Trim(edtBankNumberCust.Text);
		Param := Param + '│' + Trim(edtBankOwnerCust.Text);
		Param := Param + '│' + Trim(lcsCallBell1);
		Param := Param + '│' + Trim(lcsCallBell2);
		Param := Param + '│' + Trim(lcsCallBell3);
		Param := Param + '│' + Trim(edtUpsoAreaDetail.Caption);
		Param := Param + '│' + Trim(meoCallBellArea.Text); //lcsCallBell1,lcsCallBell2,lcsCallBell3                     
		
		Param := Param + '│' + Trim(edtXval.Caption) + '/' + Trim(edtYval.Caption) ;

		sTmp := meoCallBellUpsoMemo.Text;
		sTmp := ReplaceAll(sTmp, #$D#$A, '¶');
		sTmp := ReplaceAll(sTmp, #13#10, '¶');
		sTmp := ReplaceAll(sTmp, #10#13, '¶');
		Param := Param + '│' + Trim(sTmp);

		Param := Param + '│' + Trim(CallToStr(edtUpsoHP.Text));  //업소핸드폰
		
//  Param := En_Coding(Param_Filtering(Param));

		if iType = 0 then
		begin
			if not RequestBase(GetCallable06('SET_CUSTOMER_SAVE', 'BIZ_CUST.SET_CUSTOMER_SAVE', param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('업소정보등록 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				exit;
			end;
			GMessagebox('업소정보가 등록되었습니다.', CDMSI);
		end
		else if iType = 1 then
		begin
//			if cboStatus.ItemIndex = 0 then	Param := '1' + '│' + Param else Param := '2' + '│' + Param;
			Param := '1' + '│' + Param; //수정창에서는 무조건 수정모드로
			if not RequestBase(GetCallable06('SET_CUSTOMER_UPDATE', 'BIZ_CUST.SET_CUSTOMER_UPDATE', param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('업소정보수정 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				exit;
			end;
			GMessagebox('업소정보가 수정되었습니다.', CDMSI);
		end;

		if self.Tag = 0 then //업소에서 열었을때만 갱신 조회
			frm_BTN.btn_3_1.Click;
		BtnClose.Click;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_BTN01.RbButton23Click(Sender: TObject);
Var iRow : Integer;
begin
	if (cxUpsoTel.DataController.RecordCount <= 15) then
  begin
		iRow := cxUpsoTel.DataController.AppendRecord;
		cxUpsoTel.DataController.Values[iRow, 0] := '';
		cxUpsoTel.DataController.FocusedRecordIndex := iRow;
		if cxGrid6.CanFocus then 
			cxGrid6.SetFocus;  
	end;
end;

procedure Tfrm_BTN01.RbButton24Click(Sender: TObject);
Var iSelRow : Integer;
begin
	iSelRow := cxUpsoTel.DataController.FocusedRecordIndex;
	if iSelRow = -1 then Exit;

	if ( cxUpsoTel.DataController.Values[iSelRow, 0] <> '' ) And
		 ( cxUpsoTel.DataController.Values[iSelRow, 0] <> Null ) then
	begin
		if GMessagebox(cxUpsoTel.DataController.Values[iSelRow, 0] + ' 번호를 삭제하시겠습니까?', CDMSQ) = idOK then
			cxUpsoTel.DataController.DeleteRecord(iSelRow);
  end else
  begin
		cxUpsoTel.DataController.DeleteRecord(iSelRow);
  end;
end;

procedure Tfrm_BTN01.rb_DecliningClick(Sender: TObject);
begin
	if rb_Declining.checked then 
	begin
		cxLabel26.Caption := '%';
		if rb_Declining.Hint <> '' then
			edtCalValue.value := StrToIntDef(rb_Declining.Hint, 0)
		else
			edtCalValue.value := 0;

		if self.Showing then
			edtCalValue.SetFocus;
	end;
end;

procedure Tfrm_BTN01.rb_DecliningKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edtCalValue.SetFocus;
end;

procedure Tfrm_BTN01.rb_StraightClick(Sender: TObject);
begin
	if rb_Straight.checked then
	begin
		cxLabel26.Caption := '원';
		if rb_Straight.Hint <> '' then
			edtCalValue.value := StrToIntDef(rb_Straight.Hint, 0)
		else
			edtCalValue.value := 0;

		if self.Showing then
			edtCalValue.SetFocus;
	end;
end;

procedure Tfrm_BTN01.rb_StraightKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edtCalValue.SetFocus;
end;

end.

unit xe_JON34;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxTextEdit, cxCurrencyEdit, Mask,
  StdCtrls, AdvGroupBox, AdvOfficeButtons, cxButtons, cxControls, System.StrUtils,
  cxContainer, cxEdit, cxLabel, GradientLabel, ExtCtrls, MSXML2_TLB,
  cxRadioGroup, cxGroupBox, cxDBEdit, Buttons, cxCheckBox, cxGraphics, System.Math,
  cxLookAndFeels, dxSkinsCore, cxMaskEdit, cxDropDownEdit, dxSkinOffice2010Blue,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxButtonEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxGDIPlusClasses, cxImage, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_JON34 = class(TForm)
    Panel1: TPanel;
    pnl1: TPanel;
    cxDBRadioGroup1: TcxDBRadioGroup;
    pnl2: TPanel;
    medCancel: TMemo;
    btnApproveCancelReq: TcxButton;
    btnSubClose: TcxButton;
    cxLabel5: TcxLabel;
    cxLabel1: TcxLabel;
    medLimiteDate: TMaskEdit;
    cxCurDRate: TcxCurrencyEdit;
    cxCurDecRate: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    cxCurTerm: TcxCurrencyEdit;
    medCardNum: TMaskEdit;
    cxLabel4: TcxLabel;
    cxConfigSet: TcxButton;
    sb_ApproveReq: TcxButton;
    sb_ApproveOK: TcxButton;
    sb_ApproveCancle: TcxButton;
    cxConfigSave: TcxButton;
    pnl3: TPanel;
    cxDBRadioGroup2: TcxDBRadioGroup;
		medtCashCardNum: TMaskEdit;
    cxCurDecRate_Cash: TcxCurrencyEdit;
    btn_CashSMS: TcxButton;
    sb_ApproveReceipt: TcxButton;
    lblCouponStatus: TLabel;
    medtCouponNum: TMaskEdit;
    cxCurDecRate_Coupon: TcxCurrencyEdit;
    cxCurDec_Coupon: TcxCurrencyEdit;
    sb_ApproveRed: TcxButton;
    cxCurDec_Coupon1: TcxCurrencyEdit;
    Label1: TLabel;
    Lbl_ChangeMile: TLabel;
    lblPaySeq_Coupon: TLabel;
    Label4: TLabel;
    pnlTitle: TPanel;
    sb_Exit: TcxButton;
    rg_charge_ser2: TcxRadioButton;
    rg_charge_ser1: TcxRadioButton;
    rb_Card1: TcxRadioButton;
    rb_BaRo_Card1: TcxRadioButton;
    cxGroupBox1: TcxGroupBox;
    btn_wRef1: TcxButton;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    pnApproveCancle: TcxGroupBox;
    pnConfigSet: TcxGroupBox;
    pnl4: TcxGroupBox;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    pnl6: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    Panel2: TPanel;
    chkConfigCardset: TcxCheckBox;
    cxLblActive: TLabel;
    rbConfigVATset1: TcxRadioButton;
    rbConfigVATset2: TcxRadioButton;
    rbConfigVATset3: TcxRadioButton;
    pnl5: TPanel;
    cxGroupBox4: TcxGroupBox;
    cb_BillKey: TcxComboBox;
    cxLabel3: TcxLabel;
		Label3: TcxLabel;
    lbl11: TcxLabel;
    lbl12: TcxLabel;
    lblPaySeq: TcxLabel;
    lbl13: TcxLabel;
    lbl6: TcxLabel;
    lbl7: TcxLabel;
    lbl8: TcxLabel;
    lbl9: TcxLabel;
    lblCardStatus: TcxLabel;
    lblTranNo: TcxLabel;
    lbMaxLimiteMoney: TcxLabel;
    lbNowLimiteMoney: TcxLabel;
    lbResultMsg: TcxLabel;
    lbl20: TcxLabel;
    lblCardStatus_Cash: TcxLabel;
    lblPaySeq_Cash: TcxLabel;
    lblTranNo_Cash: TcxLabel;
    cxCurVATvalue: TcxTextEdit;
    btn_Coupon: TcxButton;
    lb_CouponNotice: TcxLabel;
    edt_CustTel: TMaskEdit;
    lb_CustTel: TcxLabel;
    cxLabel16: TcxLabel;
    pnl_BillKeyMng: TPanel;
    pnl_BillKeyMng1: TPanel;
    Panel3: TPanel;
    MaskEdit2: TMaskEdit;
    cxImage2: TcxImage;
    MaskEdit1: TMaskEdit;
    btn_AddBillKey: TcxButton;
    cxGrid6: TcxGrid;
    cxGridBillKey: TcxGridDBTableView;
    cxGridBillKeyColumn01: TcxGridDBColumn;
    cxGridBillKeyColumn02: TcxGridDBColumn;
    cxGridBillKeyColumn03: TcxGridDBColumn;
    cxGridBillKeyColumn04: TcxGridDBColumn;
    cxGridBillKeyColumn05: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxBtnCardDel: TcxButton;
    btn_Billkey: TcxButton;
		lb_BillKey: TcxLabel;
    chk_AgreeYn: TcxCheckBox;
    procedure sb_ApproveReqClick(Sender: TObject);
    procedure sb_ApproveCancleClick(Sender: TObject);
    procedure sb_ApproveOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnApproveCancelReqClick(Sender: TObject);
    procedure btnSubCloseClick(Sender: TObject);
    procedure medCardNumKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure medLimiteDateKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCurDRateKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCurDecRateKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCurTermKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxConfigSetClick(Sender: TObject);
    procedure cxConfigSaveClick(Sender: TObject);
    procedure cxCurDRatePropertiesChange(Sender: TObject);
    procedure chkConfigVATsetClick(Sender: TObject);
    procedure rb_BaRo_Card1Click(Sender: TObject);
    procedure rb_Card1Click(Sender: TObject);
		procedure btn_CashSMSClick(Sender: TObject);
    procedure sb_ApproveReceiptClick(Sender: TObject);
		procedure sb_ApproveRedClick(Sender: TObject);
    procedure medtCouponNumChange(Sender: TObject);
    procedure cxCurDecRate_CouponPropertiesChange(Sender: TObject);
    procedure sb_ExitClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rbConfigVATset1Click(Sender: TObject);
    procedure medtCashCardNumKeyPress(Sender: TObject; var Key: Char);
    procedure cxCurVATvalueKeyPress(Sender: TObject; var Key: Char);
    procedure btn_CouponClick(Sender: TObject);
    procedure medtCouponNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rg_charge_ser1Click(Sender: TObject);
		procedure btn_BillkeyClick(Sender: TObject);
    procedure cb_BillKeyPropertiesChange(Sender: TObject);
    procedure cxBtnCardDelClick(Sender: TObject);
    procedure cxGridBillKeyColumn03PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
		gBillKeySeq, gBillKeyCard, gBillKeyCardNum : TStringList;
		procedure RequestData(AData: string);
    procedure proc_recieve(ls_rxxml : WideString);
    procedure SetCouponAmount;
		procedure proc_DelBillKey(ASEQ:string);
	public
    { Public declarations }
    lcBRNO, lcMainNum, lcCustTel, lcCustSeq, lcPaySeq, lcTranNo, lcPaySite, lcAppModify : string;
		lcJON_IDX : Integer;

		Card_Gubun : integer; //0: ���ݿ�����. 1: ī�����, 2: ����� ���� ����

    Jon03Tag : Integer;

		procedure proc_init;
    // ī�� ���� ���� ���� ��� ȸ�� ó�� ��.
		function ResponseCardProcess(AXml: string; var AMsg: String): Boolean;
    // ī�� ���� ������ ��ȸ �Ѵ�.
    procedure ProCardInfoSelect(ConfSlip : string);
    // �����ݾ� �������� ��ȸ
    function proc_getSvrCardCharge ( sBrNo : String; iAmt : Double ) : Double;
		procedure proc_BillKeyList;
	end;

var
  Frm_JON34: TFrm_JON34;

implementation

{$R *.dfm}

uses xe_GNL, xe_Dm, xe_Func, xe_Msg, FastStringFuncs, xe_xml, Main, xe_packet,
     xe_CUT1, xe_Flash;

procedure TFrm_JON34.proc_init;
var i : integer;
begin
	medCardNum.Clear;
	medtCashCardNum.Clear;
	edt_CustTel.Text := '';
	medtCouponNum.Clear;
  medLimiteDate.Clear;
  cxCurDRate.Value := 0;
	cxCurDecRate.Value := 0;
	cxCurDecRate_Cash.Value := 0;
  cxCurDec_Coupon.Value := 0;
  cxCurDec_Coupon1.Value := 0;
	cxCurDecRate_Coupon.Value := 0;
	lbMaxLimiteMoney.Caption := '0';
	lbNowLimiteMoney.Caption := '0';
  lbResultMsg.Caption := '-';
  cxCurTerm.Value := 0;

  sb_ApproveReq.Enabled := True;
	sb_ApproveOK.Enabled  := False;
	sb_ApproveCancle.Enabled := False;
	sb_ApproveReceipt.Enabled := False;

	lcBRNO     := '';
  lcMainNum  := '';
  lcCustTel  := '';
  lcCustSeq  := '';
  lcPaySeq   := '';
  lcTranNo   := '';
  lcPaySite  := '';
  lblPaySeq.Caption := '';
	lblTranNo.Caption := '';

	lblPaySeq_Cash.Caption := '';
	lblTranNo_Cash.Caption := '';

	lblPaySeq_Coupon.Caption := '';

	lblCardStatus.Caption := '';
	lblCardStatus_Cash.Caption := '';
	lblCouponStatus.Caption := '';

  lcJON_IDX := 0;

	gBillKeySeq    .Clear;
	gBillKeyCard   .Clear;
	gBillKeyCardNum.Clear;
	cb_BillKey.Tag := 99;
	cb_BillKey     .Clear;
	cb_BillKey.Tag := 0;
	lb_BillKey.Hint := '';
//	medLimiteDate.Enabled := not lb_BillKey.Visible;
	chk_AgreeYn.Checked := False;
	

	if (Card_Gubun = 0) or (Card_Gubun = 10) then
	begin
		cxConfigSet.Visible := False;
		rg_charge_ser2.Checked := True;
		rg_charge_ser2.Enabled := True;
		rg_charge_ser1.Checked := False;
		rg_charge_ser1.Enabled := True;
	end else
  if (Card_Gubun = 1) or (Card_Gubun = 11) then
	begin
		cxConfigSet.Visible := True;
		rb_Card1.Checked := True;
		rb_Card1.Enabled := True;
		rb_BaRo_Card1.Checked := False;
		rb_BaRo_Card1.Enabled := True;
	end else
  if Card_Gubun = 2 then
	begin
    sb_ApproveReq.Enabled := False;
		cxConfigSet.Visible := False;
    sb_ApproveReq.Enabled := False;
		sb_ApproveReceipt.Visible := False;
	end;

	for i := 0 to cxGridBillKey.ColumnCount - 1 do
		cxGridBillKey.Columns[i].DataBinding.ValueType := 'String';
end;

procedure TFrm_JON34.sb_ApproveReqClick(Sender: TObject);
var
	ls_TxLoad : string;
  rv_str: string;
	ls_rxxml: WideString;
  slReceive: TStringList;
	ErrCode: integer;
	Msg, sTemp : string;

  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err : string;
  lst_Result: IXMLDomNodeList;
	sTmp: string;
begin
	try
		if (Card_Gubun = 1) or (Card_Gubun = 11) then
		begin
		// ī����� ���ο�û.
			if not rb_BaRo_Card1.Checked then
			begin

{				if Length(StringReplace( medCardNum.Text, ' ' , '', [rfreplaceall])) < 16 then
				begin
					GMessagebox('ī���ȣ�� �Է� ���ּ���!', CDMSI);
					medCardNum.SetFocus;
					Exit;
				end;     }

				if not lb_BillKey.visible then
				begin
{					sTemp := StringReplace(medCardNum.Text, ' ','',[rfReplaceAll]);
					sTemp := StringReplace(sTemp, '-','',[rfReplaceAll]);
					if Length(sTemp) < 15 then
					begin
						GMessagebox('[ī���ȣ �Է¿���]'  + #13#10 + 'ī���ȣ�� Ȯ�����ּ���.', CDMSI);
						medCardNum.SetFocus;
						Exit;
					end;      }  //�ڸ��� üũ�� �������� �� 20200616 KHS
				
					if Length(StringReplace( medLimiteDate.Text, ' ' , '', [rfreplaceall])) < 5 then
					begin
						GMessagebox('��ȿ�Ⱓ�� �Է� ���ּ���!', CDMSI);
						medLimiteDate.SetFocus;
						Exit;
					end;
					if (StrToIntDef(leftstr(medLimiteDate.Text,2),0) > 12) or (StrToIntDef(leftstr(medLimiteDate.Text,2),0) < 1) then
					begin
						GMessagebox('��ȿ�Ⱓ �� ��(��) �߸� �Է� �Ͽ����ϴ�.', CDMSI);
						medLimiteDate.SetFocus;
						Exit;
					end;
					if (StrToIntDef(RightStr(medLimiteDate.Text,2),0) > 50) or (StrToIntDef(RightStr(medLimiteDate.Text,2),0) < 11) then
					begin
						GMessagebox('��ȿ�Ⱓ �� ��(��) �߸� �Է� �Ͽ����ϴ�.', CDMSI);
						medLimiteDate.SetFocus;
						Exit;
					end;
				end;
			end;

			if cxCurDecRate.Value < 50000 then
			begin
				if (cxCurTerm.Value > 0) and (cxCurTerm.Value <> 60) then
				begin
					GMessagebox('�����ݾ��� 5���� �̻� �϶��� �Һ� ���� �մϴ�.', CDMSI);
					cxCurTerm.Value := 0;   // 0 = �Ͻú�
					cxCurTerm.SetFocus;
					Exit;
				end;
			end;
			if lblCardStatus.Caption = '�����Ϸ�' then
			begin
				GMessagebox('"�����Ϸ�" ���� �϶� "���ο�û"�� �� �� �����ϴ�.', CDMSI);
				Exit;
			end;
		end	else
		if (Card_Gubun = 0) or (Card_Gubun = 10) then
		begin

			medtCashCardNum.Text := StringReplace( medtCashCardNum.Text, '-' , '', [rfreplaceall]);
			if rg_charge_ser1.checked then 
			begin
				if Length(StringReplace( medtCashCardNum.Text, ' ' , '', [rfreplaceall])) <> 10 then
				begin
					sTmp := '';
					if Length(StringReplace( medtCashCardNum.Text, ' ' , '', [rfreplaceall])) < 10 then
						sTmp := '������ȣ�� �ڸ����� �����մϴ�.'
					else if Length(StringReplace( medtCashCardNum.Text, ' ' , '', [rfreplaceall])) > 10 then
						sTmp := '������ȣ�� �ڸ����� �ʰ��Ͽ����ϴ�.';
					
					GMessagebox('���������� ��� ����ڹ�ȣ�� �����մϴ�' + #13#10 + sTmp + #10#13 + '��ȣ�� �ٽ� Ȯ�����ּ���', CDMSI);
					medtCashCardNum.SetFocus;
					Exit;
				end;
			end
			else
			if rg_charge_ser2.checked then 
			begin
				if Length(StringReplace( medtCashCardNum.Text, ' ' , '', [rfreplaceall])) < 11 then
				begin
					GMessagebox('������ȣ �ڸ����� �����մϴ�' + #13#10 + '��ȣ�� �ٽ� Ȯ�����ּ���', CDMSI);
					medtCashCardNum.SetFocus;
					Exit;
				end;
				if Length(StringReplace( medtCashCardNum.Text, ' ' , '', [rfreplaceall])) > 16 then
				begin
					GMessagebox('������ȣ �ڸ����� �ʰ��Ͽ����ϴ�.', CDMSI);
					medtCashCardNum.SetFocus;
					Exit;
				end;
			end;

			if lblCardStatus_Cash.Caption = '�����Ϸ�' then
			begin
				GMessagebox('"�����Ϸ�" ���� �϶� "������û"�� �� �� �����ϴ�.', CDMSI);
				Exit;
			end;
		end	else
		if Card_Gubun = 2 then
		begin
       if lblCouponStatus.Caption <> '�����Ϸ�' then
       begin
 				GMessagebox('������û �� ���� ��û ���ּ���!', CDMSI);
 				Exit;
       end;
		end;

		if (Card_Gubun = 1) or (Card_Gubun = 11) then
		begin
			//��ư ��Ȱ��ȭ �߰� 20190227 KHS
			sb_ApproveReq.Enabled   := False;
			medCardNum.Enabled      := False;
			medLimiteDate.Enabled   := False;
			cxCurDRate.Enabled      := False;
			cxCurDecRate.Enabled    := False;
			cxCurTerm.Enabled       := False;
			//��ư ��Ȱ��ȭ �߰� 20190227 KHS

			ls_TxLoad := GTx_UnitXmlLoad('C501N1.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CARD_APPROVE_REQ', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '�����ڵ�', lcBRNO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '��ǥ��ȣ', lcMainNum, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '����ȭ��ȣ', lcCustTel, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '���Ϸù�ȣ', lcCustSeq, [rfReplaceAll]);

			if rb_BaRo_Card1.checked then lcPaySite := 'BARO'
															 else lcPaySite := 'KCP';

			ls_TxLoad := StringReplace(ls_TxLoad, 'ī���������Ʈ����', lcPaySite, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '�����Ϸù�ȣ', lcPaySeq, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ī���ȣ', StringReplace(medCardNum.Text,'-', '',[rfReplaceAll]) , [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '��ȿ�Ⱓ(��)', RightStr(medLimiteDate.text,2), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '��ȿ�Ⱓ(��)', LeftStr(medLimiteDate.text,2), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '�ҺαⰣ(01~12)', RightStr('00' + cxCurTerm.text,2), [rfReplaceAll]);

	//    ls_TxLoad := StringReplace(ls_TxLoad, 'GoodMoney="�����ݾ�"', 'GoodMoney="�����ݾ�" Confslip="������ȣ"', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'GoodMoney="�����ݾ�"', 'GoodMoney="�����ݾ�" ConfCharge="�븮���" Confslip="������ȣ"', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '�����ݾ�', StringReplace(cxCurDecRate.Text,',','',[rfReplaceAll]), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '�븮���', StringReplace(cxCurDRate.Text,',','',[rfReplaceAll]), [rfReplaceAll]);
			if (Pos('����', Frm_Main.Frm_JON01N[lcJON_IDX].Caption) > 0 ) or (Pos('������', Frm_Main.Frm_JON01N[lcJON_IDX].Caption) > 0 ) then    // ����â������ ������ȣ ���� Ȯ�� �߰� 20190808 KHS
			begin
				if Trim(Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text) = '' then
				begin
					GMessagebox('ī������� �ʿ��� ���������� �����ϴ�.' + #13#10 + #13#10
										+ '����â ����� �ٽ� ī������� �����Ͽ� �ֽʽÿ�.' + #13#10 + #13#10
										+ '* ���� ����â�� �ڵ�����˴ϴ�.', CDMSI);
					Frm_Main.Frm_JON01N[lcJON_IDX].btnCmdExit.Click;
					exit;
				end;
				if Not Frm_Main.Frm_JON01N[lcJON_IDX].pCheck_Modify(2, En_Coding(Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text)) then Exit;
			end;
			ls_TxLoad := StringReplace(ls_TxLoad, '������ȣ', Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strBillSeq', lb_BillKey.Hint, [rfReplaceAll]);
			if chk_AgreeYn.checked then sTmp := 'y' else sTmp := 'n'; 
			ls_TxLoad := StringReplace(ls_TxLoad, 'strAgreeYn', sTmp, [rfReplaceAll]);
			// ���� ī�� ���� �� Ȯ��

{				ls_TxLoad := GTx_UnitXmlLoad('C501.XML');
				ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CARD_APPROVE_REQ', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '�����ڵ�', lcBRNO, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '��ǥ��ȣ', lcMainNum, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '����ȭ��ȣ', lcCustTel, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '���Ϸù�ȣ', lcCustSeq, [rfReplaceAll]);

				if rb_BaRo_Card1.checked then lcPaySite := 'BARO' else
				if rb_Card1.checked      then lcPaySite := 'KCP';

				ls_TxLoad := StringReplace(ls_TxLoad, 'ī���������Ʈ����', lcPaySite, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '�����Ϸù�ȣ', lcPaySeq, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ī���ȣ', StringReplace(medCardNum.Text,'-', '',[rfReplaceAll]) , [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '��ȿ�Ⱓ(��)', RightStr(medLimiteDate.text,2), [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '��ȿ�Ⱓ(��)', LeftStr(medLimiteDate.text,2), [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '�ҺαⰣ(01~12)', RightStr('00' + cxCurTerm.text,2), [rfReplaceAll]);

		//    ls_TxLoad := StringReplace(ls_TxLoad, 'GoodMoney="�����ݾ�"', 'GoodMoney="�����ݾ�" Confslip="������ȣ"', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'GoodMoney="�����ݾ�"', 'GoodMoney="�����ݾ�" ConfCharge="�븮���" Confslip="������ȣ"', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '�����ݾ�', StringReplace(cxCurDecRate.Text,',','',[rfReplaceAll]), [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '�븮���', StringReplace(cxCurDRate.Text,',','',[rfReplaceAll]), [rfReplaceAll]);
				if (Pos('����', Frm_Main.Frm_JON01[lcJON_IDX].Caption) > 0 ) or (Pos('������', Frm_Main.Frm_JON01[lcJON_IDX].Caption) > 0 ) then    // ����â������ ������ȣ ���� Ȯ�� �߰� 20190808 KHS
				begin
					if Trim(Frm_Main.Frm_JON01[lcJON_IDX].cxtJoinNum.Text) = '' then
					begin
						GMessagebox('ī������� �ʿ��� ���������� �����ϴ�.' + #13#10 + #13#10
											+ '����â ����� �ٽ� ī������� �����Ͽ� �ֽʽÿ�.' + #13#10 + #13#10
											+ '* ���� ����â�� �ڵ�����˴ϴ�.', CDMSI);
	//					Frm_Main.Frm_JON01[lcJON_IDX].btnCmdExit.OnClick(Frm_Main.Frm_JON01[lcJON_IDX].btnCmdExit);					
						Frm_Main.Frm_JON01[lcJON_IDX].btnCmdExit.Click;					
						exit;				
					end;
				end;
				ls_TxLoad := StringReplace(ls_TxLoad, '������ȣ', Frm_Main.Frm_JON01[lcJON_IDX].cxtJoinNum.Text, [rfReplaceAll]);
			}
		end	else
		if (Card_Gubun = 0) or (Card_Gubun = 10) then
		begin
//      lcCustTel := medtCashCardNum.Text;
			ls_TxLoad := GTx_UnitXmlLoad('C503.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'Cash_APPROVE_REQ', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '�����ڵ�', lcBRNO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '��ǥ��ȣ', lcMainNum, [rfReplaceAll]);//lcMainNum, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '����ȭ��ȣ', lcCustTel, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '���Ϸù�ȣ', lcCustSeq, [rfReplaceAll]);
			if rg_charge_ser2.checked then lcPaySite := '0' else
			if rg_charge_ser1.checked then lcPaySite := '1';

			ls_TxLoad := StringReplace(ls_TxLoad, '����뵵', lcPaySite, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '�ź�Ȯ��ID', StringReplace(medtCashCardNum.text,'-','',[rfReplaceAll]), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '�ŷ��ݾ�����', StringReplace(cxCurDecRate_Cash.Text,',', '',[rfReplaceAll]) , [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '������ȣ', Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '������ȣ', lcPaySeq, [rfReplaceAll]);

		end	else
		if Card_Gubun = 2 then
		begin
			ls_TxLoad := GTx_UnitXmlLoad('C702.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'COUPON_APPROVE_REQ', [rfReplaceAll]);
      lcPaySite := '2';
			ls_TxLoad := StringReplace(ls_TxLoad, '������û��ȣ', lblPaySeq_Coupon.Caption, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '���������ݾ�', StringReplace(cxCurDec_Coupon1.Text,',','',[rfReplaceAll]), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '���ϸ��������ݾ�', StringReplace('0',',', '',[rfReplaceAll]) , [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '���ݰ����ݾ�', StringReplace('0',',', '',[rfReplaceAll]) , [rfReplaceAll]);
    end;
		Screen.Cursor := crHourGlass;
		slReceive := TStringList.Create;
		try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
			begin
				rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
          if ('0000' = ls_MSG_Err) then
					begin
            ls_ClientKey  := GetXmlClientKey(ls_rxxml);
            xdom := ComsDomDocument.Create;
            try
              if not xdom.loadXML(ls_rxxml) then Exit;

              if lcPaySite <> '2' then  // ���� ������ ����
							begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/CardPay/Data');
	  				  	lcPaySeq := lst_Result.item[0].attributes.getNamedItem('PaySeq').Text;
		  			  	lcTranNo := lst_Result.item[0].attributes.getNamedItem('TranNo').Text;
              end;
            finally
              xdom := Nil;
            end;
          end;
          Application.ProcessMessages;
					if ResponseCardProcess(ls_rxxml, Msg) then
					begin
            lblPaySeq.Caption := lcPaySeq;
            Application.ProcessMessages;
            if lcPaySite = 'KCP' then
            begin
              lbResultMsg.Caption := Msg;
							//��ư ��Ȱ��ȭ �߰� 20190227 KHS
							sb_ApproveReq.Enabled   := False;
							medCardNum.Enabled      := False;
							medLimiteDate.Enabled   := False;
							cxCurDRate.Enabled      := False;
							cxCurDecRate.Enabled    := False;
							cxCurTerm.Enabled       := False;
							//��ư ��Ȱ��ȭ �߰� 20190227 KHS

							GMessagebox('ī������� �Ϸ� �Ǿ����ϴ�.' + #13#10 + #13#10 + Msg, CDMSI);
							lblCardStatus.Caption     := '�����Ϸ�';
							rb_Card1.Enabled := True;
							sb_ApproveOK.Enabled      := True;
							sb_ApproveCancle.Enabled  := True;
							sb_ApproveReceipt.Enabled  := True;
							
							if GT_USERIF.HD <> 'A2309' then //[�ϳ�]�ѿ츮�ݼ�Ÿ �� ����Աݾ� ����ȵǵ��� ��. 20170331 KHS
							begin
                //�Աݾ����� ��쿡�� ���۱ݾ� ������� 20180111KHS . ��ȸ������� ����
								if Frm_Main.Frm_JON01N[lcJON_IDX].cbbPostTime.Text <> POST_TIME_NOPAY then
                begin
                  //ī����� �� ����Աݾ� �Բ� ����. ������� > �����ݾ� = �����ݾ�, ������� <= �����ݾ� = ������� 20160823KHS
                  if cxCurDecRate.Value > Frm_Main.Frm_JON01N[lcJON_IDX].curRate.Value then
                    Frm_Main.Frm_JON01N[lcJON_IDX].edtPostPay.Value := Frm_Main.Frm_JON01N[lcJON_IDX].curRate.Value
                  else
                    Frm_Main.Frm_JON01N[lcJON_IDX].edtPostPay.Value := cxCurDecRate.Value;
                end;
							end;
							Frm_Main.Frm_JON01N[lcJON_IDX].gCardStatus := lblCardStatus.Caption;
						end else
            if lcPaySite = 'BARO' then
						begin
              lbResultMsg.Caption := Msg;
							GMessagebox('�� �ڵ������� ������û �Ǿ����ϴ�.' + #13#10 + #13#10 + Msg, CDMSI);
							lblCardStatus.Caption     := '������û����';
							rb_BaRo_Card1.Enabled := True;
						end else
            if (lcPaySite = '0') or (lcPaySite = '1') then
						begin
              lbResultMsg.Caption := Msg;
							if (length(Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text) > 1) then
							begin
								if (length(Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text) > 1) or (lcPaySeq <> '') then
                begin
									if Card_Gubun < 10 then
										ProCardInfoSelect(Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text + '��' + lcPaySeq)   // ī����� ������ ��ȸ �Ѵ�.
                  else //���ο�����
                    ProCardInfoSelect(lcPaySeq);   // ī����� ������ ��ȸ �Ѵ�.
                end;
							end else
							if (lcPaySeq <> '') then
              begin
                if Card_Gubun < 10 then
  								ProCardInfoSelect('' + '��' + lcPaySeq)   // ī����� ������ ��ȸ �Ѵ�.
                else //���ο�����
  								ProCardInfoSelect(lcPaySeq);   // ī����� ������ ��ȸ �Ѵ�.
              end;
							GMessagebox('����(��������)������ �߱��� �Ϸ� �Ǿ����ϴ�.' + #13#10 + #13#10 + Msg, CDMSI);
							lblCardStatus_Cash.Caption     := '�����Ϸ�';
							rg_charge_ser2.Enabled := True;
							rg_charge_ser1.Enabled := True;
							sb_ApproveOK.Enabled      := True;
							sb_ApproveCancle.Enabled  := True;
							sb_ApproveReceipt.Enabled := False;
							btn_CashSMS.Enabled       := True;

							if lcPaySite = '0' then
							begin
								edt_CustTel.visible := False;
								lb_CustTel.visible  := False;
							end else
							if lcPaySite = '1' then
							begin
								edt_CustTel.visible := True;
								lb_CustTel.visible  := True;
							end;      

						end else
            if lcPaySite = '2' then
            begin
	  					lcPaySeq := lblPaySeq_Coupon.Caption;
              ProCardInfoSelect(lcPaySeq);  // 20130708  LYB ���� ��û ���� ǥ��
              GMessagebox('�������ο�û�� �Ϸ� �Ǿ����ϴ�.' + #13#10 + #13#10 + Msg, CDMSI);
							lblCouponStatus.Caption     := '���οϷ�';
              medtCouponNum.Enabled     := False;

              sb_ApproveOK.Click;  // ���οϷ� �� ���� �Ϸ� Ŭ�� �� �ݱ�

							sb_ApproveReq.Enabled     := False;
							sb_ApproveOK.Enabled      := True;
							sb_ApproveCancle.Enabled  := True;
							sb_ApproveReceipt.Enabled := False;
						end;
					  // ��ư ó��.
						if (Card_Gubun = 1) or (Card_Gubun = 11) then
						begin
							sb_ApproveReq.Enabled     := False;
							medCardNum.Enabled      := False;
							medLimiteDate.Enabled   := False;
							cxCurDRate.Enabled      := False;
							cxCurDecRate.Enabled    := False;
							cxCurTerm.Enabled       := False;
						end	else
						if (Card_Gubun = 0) or (Card_Gubun = 10) then
						begin
							sb_ApproveReq.Enabled     := False;
							medtCashCardNum.Enabled   := False;
							cxCurDecRate_Cash.Enabled := False;
						end
					end else
					begin
						if (Card_Gubun = 1) or (Card_Gubun = 11) then
						begin
							//��ư ��Ȱ��ȭ �߰� 20190227 KHS
							sb_ApproveReq.Enabled   := True;
							medCardNum.Enabled      := True;
							medLimiteDate.Enabled   := True;
							cxCurDRate.Enabled      := True;
							cxCurDecRate.Enabled    := True;
							cxCurTerm.Enabled       := True;
							//��ư ��Ȱ��ȭ �߰� 20190227 KHS
						end;	
						lbResultMsg.Caption := Msg;
						GMessagebox(Msg, CDMSI);
					end;
        end else
				begin
					if (Card_Gubun = 1) or (Card_Gubun = 11) then
					begin
						//��ư ��Ȱ��ȭ �߰� 20190227 KHS
						sb_ApproveReq.Enabled   := True;
						medCardNum.Enabled      := True;
						medLimiteDate.Enabled   := True;
						cxCurDRate.Enabled      := True;
						cxCurDecRate.Enabled    := True;
						cxCurTerm.Enabled       := True;
						//��ư ��Ȱ��ȭ �߰� 20190227 KHS
					end;	
					GMessagebox('[Error]�������� ����� �������� ���Ͽ����ϴ�.', CDMSI);
        end;
      end;
    finally
			FreeAndNil(slReceive);
			Screen.Cursor := crDefault;
    end;
	except
    on e:Exception do
    begin
			if (Card_Gubun = 1) or (Card_Gubun = 11) then
			begin
				//��ư ��Ȱ��ȭ �߰� 20190227 KHS
				sb_ApproveReq.Enabled   := True;
				medCardNum.Enabled      := True;
				medLimiteDate.Enabled   := True;
				cxCurDRate.Enabled      := True;
				cxCurDecRate.Enabled    := True;
				cxCurTerm.Enabled       := True;
				//��ư ��Ȱ��ȭ �߰� 20190227 KHS
			end;	
			sTemp := 'JON34[sb_ApproveReqClick]:' + e.Message;
			Log(sTemp, LOGDATAPATHFILE);
      Assert(False, 'JON34[sb_ApproveReqClick]:' + E.Message);
    end;
	end;
end;

procedure TFrm_JON34.sb_ApproveCancleClick(Sender: TObject);
begin
	if (Card_Gubun = 1) or (Card_Gubun = 11) then
	begin
		if Length(lblPaySeq.Caption) < 1 then
		begin
			GMessagebox('�����Ϸù�ȣ�� ������ ������Ҹ� �� �� �����ϴ�.', CDMSI);
			Exit;
		end;
		if Length(lblTranNo.Caption) < 1 then
		begin
			GMessagebox('�ŷ���ȣ�� ������ ������Ҹ� �� �� �����ϴ�.', CDMSI);
			Exit;
		end;
	end	else
	if (Card_Gubun = 0) or (Card_Gubun = 10) then
	begin
		if Length(lblPaySeq_Cash.Caption) < 1 then
		begin
			GMessagebox('�����Ϸù�ȣ�� ������ ������Ҹ� �� �� �����ϴ�.', CDMSI);
			Exit;
		end;
		if Length(lblTranNo_Cash.Caption) < 1 then
		begin
			GMessagebox('�ŷ���ȣ�� ������ ������Ҹ� �� �� �����ϴ�.', CDMSI);
			Exit;
		end;
	end	else
	if Card_Gubun = 2 then
	begin
		if Length(lblPaySeq_Coupon.Caption) < 1 then
		begin
			GMessagebox('�����Ϸù�ȣ�� ������ ������Ҹ� �� �� �����ϴ�.', CDMSI);
			Exit;
		end;

    if Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Hint = '2' then
    begin
			GMessagebox('���� �Ϸ� ���¿����� ���� ��Ҹ� �Ҽ� �����ϴ�.' + CRLF +
                  '���� ��� �� ���� ��� �ٶ��ϴ�.', CDMSI);
			Exit;
    end;
	end;

	pnApproveCancle.left := 47;
  pnApproveCancle.top  := 173;
	medCancel.text := '';
	pnApproveCancle.Visible := True;
	medCancel.SetFocus;
end;

procedure TFrm_JON34.sb_ApproveOKClick(Sender: TObject);
var sTemp, Param : string;
    UserMile, TotMile : Real;
  ErrCode: integer;
  ErrMsg, XmlData : string;
begin
  try
    // ī����� ���οϷ� ����� ����â�� �ѱ�� �ݱ�.
    if Length(lcPaySeq) > 1 then
    begin
			if Card_Gubun = 1 then
      begin
        Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := lcPaySeq;   // �����Ϸù�ȣ
        Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := lcTranNo;   // �ŷ���ȣ
				Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDRate.Text + '|' + cxCurDecRate.Text + '|' + cxCurTerm.Text + '|' + lblCardStatus.Caption + '|' + medCardNum.Text + '|' + medLimiteDate.text
			end else
      if Card_Gubun = 0 then
      begin
        Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := lcPaySeq;   // �����Ϸù�ȣ
        Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := lcTranNo;   // �ŷ���ȣ
				Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDecRate_Cash.Text + '|' + lblCardStatus_Cash.Caption + '|' + medtCashCardNum.Text;  // �������� ���� ����.
      end else
      if Card_Gubun = 2 then
      begin
        Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := lcPaySeq;   // �����Ϸù�ȣ
        Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := lcTranNo;   // �ŷ���ȣ
        if ( lblCouponStatus.Caption <> '' ) And ( lblCouponStatus.Caption <> '�����Ϸ�' ) then
        begin
		  		Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDecRate_Coupon.Text + '|' + cxCurDec_Coupon1.Text + '|' +
                                                           lblCouponStatus.Caption + '|' + medtCouponNum.Text;  // �������� ���� ����.

					UserMile := StrToIntDef(StringReplace(Frm_Main.Frm_JON01N[lcJON_IDX].lblCuMile.Caption,',','',[rfReplaceAll]), 0);
					if cxCurDec_Coupon.Value >= cxCurDecRate_Coupon.Value then
            Frm_Main.Frm_JON01N[lcJON_IDX].edtPostPay.Value := cxCurDecRate_Coupon.Value
          else
          begin
            TotMile := cxCurDec_Coupon.Value + UserMile;
            if cxCurDecRate_Coupon.Value > TotMile then
              Frm_Main.Frm_JON01N[lcJON_IDX].edtPostPay.Value := TotMile
            else
              Frm_Main.Frm_JON01N[lcJON_IDX].edtPostPay.Value := cxCurDecRate_Coupon.Value;
          end;

          Frm_Main.Frm_JON01N[lcJON_IDX].AppendPostDesc;
        end;

        // ������ ������ �ϰ� ���� �ÿ��� ���� �Ϸ� ��ȣ�� �������� �ʴ´�.
        if lblCouponStatus.Caption = '�����Ϸ�' then
        begin
      		Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := '';   // �����Ϸù�ȣ
      		Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := '';   // �ŷ���ȣ
        end;
      end else
      if Card_Gubun = 11 then
      begin
        Frm_CUT1.BBINCardPayInfo  := lcPaySeq;   // �����Ϸù�ȣ
        Frm_CUT1.BBINCardTranNo   := lcTranNo;   // �ŷ���ȣ
        Frm_CUT1.lb_CalInfo4.caption :=  'ī��';
        Frm_CUT1.lb_CalInfo5.caption :=  lcPaySeq;
        Param := '';
        Param := Frm_CUT1.ABubinParam + '��' + lcPaySeq + '��' + '1';
        if not RequestBase(GetCallable06('SET_BGROUP_PAY_SEQ', 'MNG_BGROUP.SET_BGROUP_PAY_SEQ', En_Coding(Param)), XmlData, ErrCode, ErrMsg) then
        begin
          GMessagebox(Format('�������� ī��������� ������Ʈ �� �����߻�.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
          Exit;
        end;
      end else
      if Card_Gubun = 10 then
      begin
        Frm_CUT1.BBINCardPayInfo  := lcPaySeq;   // �����Ϸù�ȣ
        Frm_CUT1.BBINCardTranNo   := lcTranNo;   // �ŷ���ȣ
        Frm_CUT1.lb_CalInfo4.caption :=  '����';
        Frm_CUT1.lb_CalInfo5.caption :=  lcPaySeq;
        Param := '';
        Param := Frm_CUT1.ABubinParam + '��' + lcPaySeq + '��' + '0';
        if not RequestBase(GetCallable06('SET_BGROUP_PAY_SEQ', 'MNG_BGROUP.SET_BGROUP_PAY_SEQ', En_Coding(Param)), XmlData, ErrCode, ErrMsg) then
        begin
          GMessagebox(Format('�������� ���ݰ������� ������Ʈ �� �����߻�.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
          Exit;
        end;
      end;
		end;

    // â �ݱ�.
    if lcAppModify <> 'Y' then
    begin
      lcAppModify := 'N';
      hide;
    end else
      lcAppModify := 'N';
  except
    on e:Exception do
    begin
      sTemp := 'JON34[sb_ApproveOKClick]:' + e.Message;
      Log(sTemp, LOGDATAPATHFILE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON34.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
  if Card_Gubun < 10 then
  begin
    cxCurDecRate_Cash.Properties.AssignedValues.MaxValue := True;
//    cxCurDRate.Properties.AssignedValues.MaxValue := True;
//    cxCurDecRate.Properties.AssignedValues.MaxValue := True;
  end;
end;

procedure TFrm_JON34.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	FreeAndNil(gBillKeySeq);
	FreeAndNil(gBillKeyCard);
	FreeAndNil(gBillKeyCardNum);
	Action := caFree;
end;

procedure TFrm_JON34.FormCreate(Sender: TObject);
Var iVatG : Integer;
begin
	gBillKeySeq := TStringList.Create;
	gBillKeyCard := TStringList.Create;
	gBillKeyCardNum  := TStringList.Create;

	proc_init;

  Self.Height := 375;
  Self.Width := 388;

  // �����ݾ׿� �ΰ��� ���� ����.
  iVatG := GS_EnvFile.ReadInteger('CARDINFOSET', 'CARD_VAT_YN', 1);

	cxCurVATvalue.Enabled := False;
  if iVatG = 0 then rbConfigVATset1.Checked := True else
  if iVatG = 1 then
  begin
    rbConfigVATset2.Checked := True;
		cxCurVATvalue.Enabled := True;
  end else
  if iVatG = 2 then rbConfigVATset3.Checked := True;

	cxCurVATvalue.Text      := GS_EnvFile.ReadString('CARDINFOSET', 'CARD_VAT_VALUE', '2');
  chkConfigCardset.Checked := GS_EnvFile.ReadBool('CARDINFOSET', 'CARD_MEMO_YN', False);

end;

procedure TFrm_JON34.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON34.FormDestroy(Sender: TObject);
begin
  Frm_JON34 := nil;
end;

// ī�� ���� ���� ���� ��� ȸ�� ó�� ��.
function TFrm_JON34.ResponseCardProcess(AXml: string; var AMsg: String): Boolean;
var
  xdom: msDomDocument;
  lst_Node: IXMLDomNodeList;
  ErrorCode, ls_ClientKey, sTm, sBigo, sCardNm : string;
  iP1, iP2 : Integer;
begin
	Result := False;

  xdom := ComsDomDocument.Create;
  Screen.Cursor := crHourGlass;
  try
    try
			if not xdom.loadXML(AXml) then Exit;

      //-------------------------- Client Key Read -----------------------------
      lst_Node := xdom.documentElement.selectNodes('/cdms/header/ClientKey');
      ls_ClientKey := lst_Node.item[0].attributes.getNamedItem('Value').Text;
      //------------------------------------------------------------------------

			if ls_ClientKey = 'CARD_APPROVE_REQ' then
			begin
				ErrorCode := GetXmlErrorCode(AXml);
				if ('0000' = ErrorCode) then
				begin
					lst_Node := xdom.documentElement.selectNodes('/cdms/Service/CardPay/Data');
          if Assigned(lst_Node.item[0].attributes.getNamedItem('PaySeq')) then
            lcPaySeq := lst_Node.item[0].attributes.getNamedItem('PaySeq').Text;
          if Assigned(lst_Node.item[0].attributes.getNamedItem('TranNo')) then
            lcTranNo := lst_Node.item[0].attributes.getNamedItem('TranNo').Text;
					if Assigned(lst_Node.item[0].attributes.getNamedItem('Desc')) then
            sTm := lst_Node.item[0].attributes.getNamedItem('Desc').Text;

          if (Length(lcPaySeq) > 0) and (Length(lcTranNo) > 0) then
					begin
						if (Card_Gubun = 1) or (Card_Gubun = 11) then
						begin
							lblPaySeq.Caption := lcPaySeq;
							lblTranNo.Caption := lcTranNo;
						end else
						begin
							lblPaySeq_Cash.Caption := lcPaySeq;
							lblTranNo_Cash.Caption := lcTranNo;
						end;
						AMsg := '(�Ϸ�)�����Ϸù�ȣ: ' + lcPaySeq + '       (�Ϸ�)�ŷ���ȣ: ' + lcTranNo + #13#10 + '���: ' + sTm;
          end else
          begin
						AMsg := sTm;
          end;

          // ����â �޸�1�� ����ī��� ǥ��
          try
            if chkConfigCardset.Checked then
            begin
              // ���� ī�� ���� ������ ������ ���� �� ǥ��
              sBigo := Frm_Main.Frm_JON01N[lcJON_IDX].meoBigo.Text;
              iP1  := Pos  ('[', sBigo);
              iP2  := PosEx(']', sBigo, iP1 + 1);
              sCardNm := Copy(sBigo, iP1, (iP2 - (iP1-1)) );
              if Pos('ī��', sCardNm) > 0 then
                Frm_Main.Frm_JON01N[lcJON_IDX].meoBigo.Text := StringReplace(sBigo, sCardNm, '', [rfReplaceAll]);

              // --------------------------------------------------
              iP1  := Pos  (',', sTm);
              sCardNm := Copy(sTm, 1, iP1-1);
              sCardNm := StringReplace(sCardNm, 'ī������:' , '', [rfreplaceall]);
              if Pos('ī��', sCardNm) > 0 then
                Frm_Main.Frm_JON01N[lcJON_IDX].meoBigo.Text := '[' + sCardNm + '����]' + Frm_Main.Frm_JON01N[lcJON_IDX].meoBigo.Text;
            end;
          except
            on e: exception do
            begin
              Assert(False, 'frmJON34[CARD_APPROVE_REQ]: ' + sTm + '-' + E.Message);
            end;
          end;

					Result := True;
        end else
        begin
          try
            // ���� ���и� �ص� ī���Ϸù�ȣ�� �Ѿ���� ��찡 �ִµ�,, �̷��� �� �Ϸù�ȣ�� ����� ��û�� ������ �Ѱ���� ��.
            lst_Node := xdom.documentElement.selectNodes('/cdms/Service/CardPay/Data');
            if Assigned(lst_Node.item[0].attributes.getNamedItem('PaySeq')) then
              lcPaySeq := lst_Node.item[0].attributes.getNamedItem('PaySeq').Text;
          except
          end;
          AMsg := GetXmlErrorMsg(AXml);
        end;
        if Length(lcPaySeq) > 1 then
        begin
          Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := lcPaySeq;   // �����Ϸù�ȣ
          Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := lcTranNo;   // �ŷ���ȣ
					if (Card_Gubun = 1) or (Card_Gubun = 11) then
						Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDRate.Text + '|' + cxCurDecRate.Text + '|' + cxCurTerm.Text + '|' + lblCardStatus.Caption + '|' + medCardNum.Text + '|' + medLimiteDate.text
					else
						Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDecRate_Cash.Text + '|' + lblCardStatus_Cash.Caption + '|' + medtCashCardNum.Text;
				end;                         // �������� ���� ����.
      end else
      if ls_ClientKey = 'CARD_APPROVE_CANCEL' then
      begin
				ErrorCode := GetXmlErrorCode(AXml);
        if ('0000' = ErrorCode) then
        begin
          //lst_Node := xdom.documentElement.selectNodes('/cdms/Service/CardPay/Data');
          //if Assigned(lst_Node.item[0].attributes.getNamedItem('PaySeq')) then
          //  lcPaySeq := lst_Node.item[0].attributes.getNamedItem('PaySeq').Text;
          AMsg := GetXmlErrorMsg(AXml);

          // ����â �޸�1�� ����ī��� ����
          try
            if chkConfigCardset.Checked then
            begin
{              sTm := Frm_Main.Frm_JON01[lcJON_IDX].meoBigo.Text;
              iP1  := Pos  ('[', sTm);
              iP2  := PosEx(']', sTm, iP1 + 1);
              sCardNm := Copy(sTm, iP1, (iP2 - (iP1-1)) );
              if Pos('ī��', sCardNm) > 0 then
                Frm_Main.Frm_JON01[lcJON_IDX].meoBigo.Text := StringReplace(sTm, sCardNm, '', [rfReplaceAll]);
}
              sTm := Frm_Main.Frm_JON01N[lcJON_IDX].meoBigo.Text;
              iP1  := Pos  ('[', sTm);
              iP2  := PosEx(']', sTm, iP1 + 1);
              sCardNm := Copy(sTm, iP1, (iP2 - (iP1-0)) );
              if Pos('ī��', sCardNm) > 0 then
                Frm_Main.Frm_JON01N[lcJON_IDX].meoBigo.Text := StringReplace(sTm, sCardNm, sCardNm+'���', [rfReplaceAll]);
            end;
          except
            on e: exception do
            begin
              Assert(False, 'frmJON34[CARD_APPROVE_CANCEL]: ' + sTm + '-' + E.Message);
            end;
          end;
          Result := True;
        end
        else
          AMsg := '[' + ErrorCode + '] ';// + GetXmlErrorMsg(AXml);
			end else
			if ls_ClientKey = 'Cash_APPROVE_REQ' then
			begin
				ErrorCode := GetXmlErrorCode(AXml);
				if ('0000' = ErrorCode) then
				begin
					lst_Node := xdom.documentElement.selectNodes('/cdms/Service/CardPay/Data');
          if Assigned(lst_Node.item[0].attributes.getNamedItem('PaySeq')) then
            lcPaySeq := lst_Node.item[0].attributes.getNamedItem('PaySeq').Text;
          if Assigned(lst_Node.item[0].attributes.getNamedItem('TranNo')) then
            lcTranNo := lst_Node.item[0].attributes.getNamedItem('TranNo').Text;
          if Assigned(lst_Node.item[0].attributes.getNamedItem('Desc')) then
            sTm := lst_Node.item[0].attributes.getNamedItem('Desc').Text;

          if (Length(lcPaySeq) > 0) and (Length(lcTranNo) > 0) then
					begin
						if (Card_Gubun = 1) or (Card_Gubun = 11) then
						begin
							lblPaySeq.Caption := lcPaySeq;
							lblTranNo.Caption := lcTranNo;
						end
						else
						begin
							lblPaySeq_Cash.Caption := lcPaySeq;
							lblTranNo_Cash.Caption := lcTranNo;
						end;
						AMsg := '(�Ϸ�)�����Ϸù�ȣ: ' + lcPaySeq + '       (�Ϸ�)�ŷ���ȣ: ' + lcTranNo + #13#10 + '���: ' + sTm;
          end else
          begin
						AMsg := sTm;
          end;

					Result := True;
        end else
        begin
          try
            // ���� ���и� �ص� ī���Ϸù�ȣ�� �Ѿ���� ��찡 �ִµ�,, �̷��� �� �Ϸù�ȣ�� ����� ��û�� ������ �Ѱ���� ��.
            lst_Node := xdom.documentElement.selectNodes('/cdms/Service/CardPay/Data');
            if Assigned(lst_Node.item[0].attributes.getNamedItem('PaySeq')) then
              lcPaySeq := lst_Node.item[0].attributes.getNamedItem('PaySeq').Text;
          except
          end;
          AMsg := GetXmlErrorMsg(AXml);
        end;
        if Length(lcPaySeq) > 1 then
        begin
          if Card_Gubun < 10 then
          begin
            Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := lcPaySeq;   // �����Ϸù�ȣ
            Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := lcTranNo;   // �ŷ���ȣ
            if Card_Gubun = 1 then
              Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDRate.Text + '|' + cxCurDecRate.Text + '|' + cxCurTerm.Text + '|' + lblCardStatus.Caption + '|' + medCardNum.Text + '|' + medLimiteDate.text
            else
              Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDecRate_Cash.Text + '|' + lblCardStatus_Cash.Caption + '|' + medtCashCardNum.Text;
          end else
          begin
            if Card_Gubun = 11 then
            begin
              Frm_CUT1.BBINCardPayInfo := cxCurDRate.Text + '|' + cxCurDecRate.Text + '|' + cxCurTerm.Text + '|' + lblCardStatus.Caption + '|' + medCardNum.Text + '|' + medLimiteDate.text;
              Frm_CUT1.BBINCardPaySeq  := lcPaySeq;   // �����Ϸù�ȣ
              Frm_CUT1.BBINCardTranNo  := lcTranNo;   // �ŷ���ȣ
              Frm_CUT1.lb_CalInfo4.caption :=  'ī��';
              Frm_CUT1.lb_CalInfo5.caption :=  lcPaySeq;
            end
            else if Card_Gubun = 10 then
            begin
              Frm_CUT1.BBINCardPayInfo := cxCurDecRate_Cash.Text + '|' + lblCardStatus_Cash.Caption + '|' + medtCashCardNum.Text;
              Frm_CUT1.BBINCardPaySeq  := lcPaySeq;   // �����Ϸù�ȣ
              Frm_CUT1.BBINCardTranNo  := lcTranNo;   // �ŷ���ȣ
              Frm_CUT1.lb_CalInfo4.caption :=  '����';
              Frm_CUT1.lb_CalInfo5.caption :=  lcPaySeq;
            end;

          end;
				end;                         // �������� ���� ����.
      end else
      if ls_ClientKey = 'CARD_APPROVE_CANCEL' then
      begin
				ErrorCode := GetXmlErrorCode(AXml);
        if ('0000' = ErrorCode) then
        begin
          //lst_Node := xdom.documentElement.selectNodes('/cdms/Service/CardPay/Data');
          //if Assigned(lst_Node.item[0].attributes.getNamedItem('PaySeq')) then
          //  lcPaySeq := lst_Node.item[0].attributes.getNamedItem('PaySeq').Text;

          AMsg := GetXmlErrorMsg(AXml);
          Result := True;
        end
        else
          AMsg := '[' + ErrorCode + '] ';// + GetXmlErrorMsg(AXml);
      end else      
      if ls_ClientKey = 'COUPON_APPROVE_REQ' then
      begin
				ErrorCode := GetXmlErrorCode(AXml);
        if ('0000' = ErrorCode) then
        begin
          AMsg := GetXmlErrorMsg(AXml);
          Result := True;
        end
        else
          AMsg := '[' + ErrorCode + '] ';// + GetXmlErrorMsg(AXml);
      end else
      if ls_ClientKey = 'COUPON_APPROVE_CANCEL' then
      begin
				ErrorCode := GetXmlErrorCode(AXml);
        if ('0000' = ErrorCode) then
        begin
          //lst_Node := xdom.documentElement.selectNodes('/cdms/Service/CardPay/Data');
          //if Assigned(lst_Node.item[0].attributes.getNamedItem('PaySeq')) then
          //  lcPaySeq := lst_Node.item[0].attributes.getNamedItem('PaySeq').Text;

          AMsg := GetXmlErrorMsg(AXml);
          Result := True;
        end
        else
          AMsg := '[' + ErrorCode + '] ';// + GetXmlErrorMsg(AXml);
      end;

    except
      on e: exception do
			begin
        Assert(False, 'frmJON34[ResponseCardProcess]:' + E.Message);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
  end;
end;

procedure TFrm_JON34.rg_charge_ser1Click(Sender: TObject);
begin
	if self.Showing then 
		medtCashCardNum.SetFocus;
  if rg_charge_ser2.Checked then
		lbl20.Caption := '���ݿ����� ����� ���� ��ȣ : �޴�����ȣ'
  else
	if rg_charge_ser1.Checked then
	begin
		lbl20.Caption := '�������������� ����� ���� ��ȣ : ����ڵ�Ϲ�ȣ, ���ݿ�����ī�� ��'
	end
{	if Length(Frm_Main.Frm_JON01[lcJON_IDX].locCardPaySeq) > 1 then exit;	
	if rg_charge_ser1.checked then	
	begin
		edt_CustTel.visible := True;
		lb_CustTel.visible := True;
	end else 
	begin
		edt_CustTel.visible := False;
		lb_CustTel.visible := False;
	end;    }

end;

procedure TFrm_JON34.btnApproveCancelReqClick(Sender: TObject);
var
  ls_TxLoad : string;
  rv_str: string;
  ls_rxxml: WideString;
	slReceive: TStringList;
  ErrCode : integer;
  Msg, sTemp, sDlg, sUseAmt : string;
begin
	if Not func_EucKr_Check(medCancel, 0) then Exit;

	try
    // ī����� ������� ��û.
		if (Card_Gubun = 1) or (Card_Gubun = 11) then
		begin
			if Length(lcPaySeq) < 1 then
			begin
				GMessagebox('�����Ϸù�ȣ�� ������ ������Ҹ� �� �� �����ϴ�.', CDMSI);
				Exit;
			end;
			if Length(lcTranNo) < 1 then
			begin
				GMessagebox('�ŷ���ȣ�� ������ ������Ҹ� �� �� �����ϴ�.', CDMSI);
				Exit;
			end;
			if lblCardStatus.Caption = '�������' then
			begin
				GMessagebox('"�������" ���� �϶� "�������"�� �� �� �����ϴ�.', CDMSI);
				Exit;
			end;

			ls_TxLoad := GTx_UnitXmlLoad('C502.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CARD_APPROVE_CANCEL', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '�����Ϸù�ȣ', lcPaySeq, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '�ŷ���ȣ', lcTranNo, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '��һ���', En_Coding(medCancel.Text), [rfReplaceAll]);
		end	else
    if (Card_Gubun = 0) or (Card_Gubun = 10) then
		begin
			if Length(lcPaySeq) < 1 then
			begin
				GMessagebox('�����Ϸù�ȣ�� ������ ������Ҹ� �� �� �����ϴ�.', CDMSI);
				Exit;
			end;

			if lblCardStatus.Caption = '�������' then
			begin
				GMessagebox('"�������" ���� �϶� "�������"�� �� �� �����ϴ�.', CDMSI);
				Exit;
			end;

			ls_TxLoad := GTx_UnitXmlLoad('C504.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CARD_APPROVE_CANCEL', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '�����Ϸù�ȣ', lcPaySeq, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '��һ���', En_Coding(medCancel.Text), [rfReplaceAll]);
		end	else
    if Card_Gubun = 2 then
		begin
			if Length(lcPaySeq) < 1 then
			begin
				GMessagebox('�����Ϸù�ȣ�� ������ ������Ҹ� �� �� �����ϴ�.', CDMSI);
				Exit;
			end;

			if lblCouponStatus.Caption = '�������' then
			begin
				GMessagebox('"�������" ���� �϶� "�������"�� �� �� �����ϴ�.', CDMSI);
				Exit;
			end;

      if cxCurDec_Coupon.Value > cxCurDecRate_Coupon.Value then
        sUseAmt := cxCurDecRate_Coupon.Text
      else
        sUseAmt := cxCurDec_Coupon.Text;

      sDlg := Format(' ���� ��Ҹ� �ϰ� �Ǹ� �Ʒ��� ���� ó�� �˴ϴ�. ' + CRLF + CRLF +
                     ' ���� ��� �ݾ� : %s �� -> 0 �� (����/���ÿ���) ' + CRLF +
                     ' ���� ��� ���� :  �������  -> ������ ' + CRLF +
                     ' ���� ��� ���� : �ĺ�(����) -> ���� ' + CRLF + CRLF +
                     ' �׷��� ���� ��� ��Ҹ� �Ͻðڽ��ϱ�? ', [sUseAmt]);

      if Application.MessageBox(PChar(sDlg), CDMSI, MB_YESNO +
        MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
      begin
        Exit;
      end;

			ls_TxLoad := GTx_UnitXmlLoad('C703.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'COUPON_APPROVE_CANCEL', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '������û��ȣ', lcPaySeq, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '��һ���', En_Coding(medCancel.Text), [rfReplaceAll]);
		end;
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
          if ResponseCardProcess(ls_rxxml, Msg) then
          begin
						if (Card_Gubun = 1) or (Card_Gubun = 11) then
						begin
  						lbResultMsg.Caption := Msg;
							lblCardStatus.Caption     := '�������';
							Application.ProcessMessages;

							if GT_USERIF.HD <> 'A2309' then //[�ϳ�]�ѿ츮�ݼ�Ÿ �� ����Աݾ� ����ȵǵ��� ��. 20170331 KHS
							begin
                //�Աݾ����� ��쿡�� ���۱ݾ� ������� 20180111KHS . ��ȸ������� ����
								if Frm_Main.Frm_JON01N[lcJON_IDX].cbbPostTime.Text <> POST_TIME_NOPAY then
                begin
  								//ī����� �� ����Աݾ� ����������� ����. 20160823KHS
	  							Frm_Main.Frm_JON01N[lcJON_IDX].edtPostPay.Value := Frm_Main.Frm_JON01N[lcJON_IDX].curRate.Value;
                end;
							end;
							Frm_Main.Frm_JON01N[lcJON_IDX].gCardStatus := lblCardStatus.Caption;
							GMessagebox(Msg, CDMSI);
							// ��ư ó��.
						end	else
						if (Card_Gubun = 0) or (Card_Gubun = 10) then
						begin
  						lbResultMsg.Caption := Msg;
							lblCardStatus_Cash.Caption := '�������';
							medtCashCardNum.Enabled := True;
							edt_CustTel.Visible     := False;
							btn_CashSMS.Enabled     := False;
							Application.ProcessMessages;
							GMessagebox(Msg, CDMSI);
						end	else
						if Card_Gubun = 2 then
						begin
							lblCouponStatus.Caption     := '�������';
							Application.ProcessMessages;
              sb_ApproveRed.Enabled := True;
              medtCouponNum.Enabled := True;
							GMessagebox(Msg, CDMSI);
              sb_Exit.Click;
              Frm_Main.Frm_JON01N[lcJON_IDX].cbbPayMethod.ItemIndex := 0; // ���ݰ��� ó��
              Frm_Main.Frm_JON01N[lcJON_IDX].cbbPayMethodPropertiesChange(Sender);
						end;
						if Card_Gubun = 2 then
  						sb_ApproveReq.Enabled    := False
            else
  						sb_ApproveReq.Enabled    := True;
						sb_ApproveOK.Enabled     := False;
						sb_ApproveCancle.Enabled := False;
						sb_ApproveReceipt.Enabled := False;
						pnApproveCancle.Visible  := False;
						if not rb_BaRo_Card1.checked then
						begin
							medCardNum.Enabled      := True;
							medLimiteDate.Enabled   := True;
							cxCurTerm.Enabled       := True;
              cxCurDRatePropertiesChange(cxCurDRate);
						end;
						cxCurDRate.Enabled      := True;
						cxCurDecRate.Enabled    := True;
						rb_Card1.Enabled        := True;
						rb_BaRo_Card1.Enabled   := True;
					end else
					begin
            lbResultMsg.Caption := Msg;
            GMessagebox(Msg, CDMSI);
          end;
        end else
        begin
          GMessagebox('[Error]�������� ����� �������� ���Ͽ����ϴ�.', CDMSI);
        end;
      end;
    finally
      FreeAndNil(slReceive);
      Screen.Cursor := crDefault;
    end;
  except
    on e:Exception do
    begin
      sTemp := 'JON34[sb_ApproveCancleClick]:' + e.Message;
      Log(sTemp, LOGDATAPATHFILE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON34.sb_ExitClick(Sender: TObject);
begin
  if Length(lcPaySeq) > 1 then
	begin
		Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := lcPaySeq;   // �����Ϸù�ȣ
		Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := lcTranNo;   // �ŷ���ȣ

		if (Card_Gubun = 1) or (Card_Gubun = 11) then
			Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDRate.Text + '|' + cxCurDecRate.Text + '|' + cxCurTerm.Text + '|' + lblCardStatus.Caption + '|' + medCardNum.Text + '|' + medLimiteDate.text
    else
    if (Card_Gubun = 0) or (Card_Gubun = 10) then
			Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDecRate_Cash.Text + '|' + lblCardStatus_Cash.Caption + '|' + medtCashCardNum.Text
    else
    if Card_Gubun = 2 then
    begin
      if ( lblCouponStatus.Caption <> '' ) And ( lblCouponStatus.Caption <> '�����Ϸ�' ) then
      begin
  			Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDecRate_Coupon.Text + '|' + cxCurDec_Coupon1.Text + '|' +
                                                        lblCouponStatus.Caption + '|' + medtCouponNum.Text;  // �������� ���� ����.
//        Frm_Main.Frm_JON01[lcJON_IDX].edtPostPay.Value := cxCurDec_Coupon1.Value;
      end;

      // ������ ������ �ϰ� ���� �ÿ��� ���� �Ϸ� ��ȣ�� �������� �ʴ´�.
      if lblCouponStatus.Caption = '�����Ϸ�' then
      begin
    		Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := '';   // �����Ϸù�ȣ
    		Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := '';   // �ŷ���ȣ
      end;
    end;
	end;                         // �������� ���� ����.
  lcAppModify := 'N';
  Close;
end;

procedure TFrm_JON34.btnSubCloseClick(Sender: TObject);
begin
  pnApproveCancle.Visible := False;
end;

procedure TFrm_JON34.btn_CouponClick(Sender: TObject);
var XmlData, Param, ErrMsg, sTmp : string;
	ErrCode : Integer;
	iCurMlg, iPrizeCnt, iPrizeMlg: Integer;
	iUserMile, iCoupon, iPrice: Integer;
begin
	Try
		//�����ڵ妢������ȣ����seq
		sTmp  := StringReplace(Trim(medtCouponNum.Text),'-','',[rfReplaceAll]); 
		Param := lcBRNO + '��' + sTmp + '��' + lcCustSeq;                                   

		if not RequestBase(GetCallable06('SET_SELF_COUPON_USE', 'SELF_COUPON.SET_SELF_COUPON_USE', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('���������ἳ�� ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end else
		begin
			lbResultMsg.Caption := '����Ͻ� ����[' + cxCurDec_Coupon.Text + '��]��' +#13#10
													 + '���ϸ����� �����Ǿ����ϴ�';

			iprizeMlg := StrToIntDef(ReplaceAll(Frm_Main.Frm_JON01N[lcJON_IDX].lblCuMile.Caption, ',', ''), 0);
			iCurMlg := iprizeMlg + StrToIntDef(ReplaceAll(cxCurDec_Coupon.Text, ',', ''), 0);
			iPrizeCnt := StrToIntDef(Frm_Main.Frm_JON01N[lcJON_IDX].lblCuMileCnt.Caption, 0) + 1;

			Frm_Main.Frm_JON01N[lcJON_IDX].lblCuMile.Caption := FormatFloat('#,##0', iCurMlg);
			Frm_Main.Frm_JON01N[lcJON_IDX].lblCuMileCnt.Caption := IntToStr(iPrizeCnt);

      // ���ϸ����� �ѵ������� ����
			iPrice := Frm_Main.Frm_JON01N[lcJON_IDX].curRate.Value;
			iUserMile := StrToIntDef(StringReplace(Frm_Main.Frm_JON01N[lcJON_IDX].lblCuMile.Caption,',','',[rfReplaceAll]), 0)
								+ StrToIntDef(StringReplace(Frm_Main.Frm_JON01N[lcJON_IDX].lblMoCuMile.Caption,',','',[rfReplaceAll]), 0);

			iCoupon := StrToIntDef(RemoveComma(Frm_Main.Frm_JON01N[lcJON_IDX].edtPostPay.Hint), 0);  // 20130603  LYB  ������

			if iCoupon = 0 then
			begin
				if iPrice >= iUserMile then
				begin
					Frm_Main.Frm_JON01N[lcJON_IDX].edtPostPay.Value := Trunc(iUserMile / 1000) * 1000;
				end
				else
					Frm_Main.Frm_JON01N[lcJON_IDX].edtPostPay.Value := iPrice;
			end else
			begin
				Frm_Main.Frm_JON01N[lcJON_IDX].edtPostPay.Value := IfThen(iPrice > (iUserMile + iCoupon), iUserMile + iCoupon, iPrice);
			end;
    	btn_Coupon.Enabled := False;
		end;

	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_JON34.medCardNumKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var sCardNum : String;
begin
  if Key = VK_RETURN then medLimiteDate.SetFocus;

  sCardNum := Trim(medCardNum.Text);
  sCardNum := StringReplace(sCardNum, ' ','',[rfReplaceAll]);
  if ( Length(sCardNum) = 19 ) And ( medCardNum.SelStart = 19 ) then
  begin
    if ( Key = VK_UP ) Or ( Key = VK_DOWN ) Or ( Key = VK_LEFT ) Or ( Key = VK_RIGHT ) then Exit;   
    medLimiteDate.SetFocus;
  end;
end;

procedure TFrm_JON34.medLimiteDateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Astring : string;
begin
{  Astring := StringReplace(medCardNum.Text, ' ','',[rfReplaceAll]);
  Astring := StringReplace(Astring, '-','',[rfReplaceAll]);
  if Length(Astring) < 14 then
  begin
    GMessagebox('[ī���ȣ �Է¿���]'  + #13#10 + 'ī���ȣ�� Ȯ�����ּ���.', CDMSI);
		medCardNum.SetFocus;
    exit;
	end;    }

  if Key = VK_RETURN then cxCurDRate.SetFocus;

  Astring := Trim(medLimiteDate.Text);
  Astring := StringReplace(Astring, ' ','',[rfReplaceAll]);
  if ( Length(Astring) = 5 ) And ( medLimiteDate.SelStart = 5 ) then
  begin
    if ( Key = VK_UP ) Or ( Key = VK_DOWN ) Or ( Key = VK_LEFT ) Or ( Key = VK_RIGHT ) then Exit;
    cxCurDRate.SetFocus;
  end;
end;

procedure TFrm_JON34.cxCurDRateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = VK_RETURN then
	begin
		cxCurDecRate.SetFocus;
	end;
end;

procedure TFrm_JON34.cxCurDecRateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if rb_Card1.Checked then
      cxCurTerm.SetFocus;
  end;
end;

procedure TFrm_JON34.cxCurTermKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    sb_ApproveReq.SetFocus;
  end;
end;

procedure TFrm_JON34.cxCurVATvalueKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8, '.'] then
  else
		key := #0;
end;

procedure TFrm_JON34.cxGridBillKeyColumn03PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var iRow, iCol: Integer;
	sTmp, sMsg, sCard : string;
begin
	SetDebugeWrite('TFrm_JON34.cxGridBillKeyColumn03PropertiesButtonClick');
	Try
		iRow := cxGridBillKey.DataController.FocusedRecordIndex;
		if iRow  = -1 then Exit;
		iCol := cxGridBillKey.GetColumnByFieldName('BillSeq').Index;
		sTmp := cxGridBillKey.DataController.Values[iRow, iCol];
		iCol := cxGridBillKey.GetColumnByFieldName('BillSeq').Index;
		sCard := cxGridBillKey.DataController.Values[iRow, iCol];

		sMsg := '������ ī�������� �����Ͻðڽ��ϱ�?.';
		if Application.MessageBox(pChar(sMsg), 'CDMS', MB_YESNO +
			MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
		begin
			proc_DelBillKey(sTmp);
		end;

	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_JON34.cxConfigSetClick(Sender: TObject);
begin
  pnConfigSet.left := 3;
  pnConfigSet.top  := 215;

  // ȯ�漳�� �ǳ� ����.
	pnConfigSet.Visible := True;
end;

procedure TFrm_JON34.cxConfigSaveClick(Sender: TObject);
Var iVatG : Integer;
begin
	if (rbConfigVATset2.Checked) and (StrToFloatDef(cxCurVATvalue.Text, 0.0) < 1) then
	begin
		GMessagebox('�ΰ��� ������(%)�� �ּ� 1 % �̻� �Է� �ؾ� �մϴ�.', CDMSI);
    cxCurVATvalue.SetFocus;
    Exit;
  end;

  // ���� ���Ͽ� ����.
  if rbConfigVATset1.Checked then iVatG := 0 else
  if rbConfigVATset2.Checked then iVatG := 1 else
  if rbConfigVATset3.Checked then iVatG := 2;

  GS_EnvFile.WriteInteger('CARDINFOSET', 'CARD_VAT_YN', iVatG);
	GS_EnvFile.WriteString('CARDINFOSET', 'CARD_VAT_VALUE', cxCurVATvalue.Text);
	GS_EnvFile.WriteBool('CARDINFOSET', 'CARD_MEMO_YN', chkConfigCardset.Checked);

  // ȯ�ἳ�� �ǳ� �ݱ�.
  pnConfigSet.Visible := False;
end;

procedure TFrm_JON34.cxCurDRatePropertiesChange(Sender: TObject);
begin
	if rbConfigVATset1.Checked then
		cxCurDecRate.Value := cxCurDRate.Value
  else
  if rbConfigVATset2.Checked then
    // �������.  ������ �ΰ��� ����.
		cxCurDecRate.Value := cxCurDRate.Value + (cxCurDRate.Value * (StrToFloatDef(cxCurVATvalue.Text, 0.0) / 100))
  else
	if rbConfigVATset3.Checked then
	begin
		if cxCurDRate.Value > 0 then
			cxCurDecRate.Value := proc_getSvrCardCharge(lcBRNO, cxCurDRate.Value);
	end;

end;

procedure TFrm_JON34.cb_BillKeyPropertiesChange(Sender: TObject);
var iTmp : integer;
begin
	if cb_BillKey.Tag = 99 then exit;
	if cb_BillKey.ItemIndex = 0 then
	begin
		lb_BillKey.Visible := false;
		lb_BillKey.Hint := '';
	end else
	if cb_BillKey.ItemIndex > 0 then
	begin
		lb_BillKey.Visible := True;
		lb_BillKey.Left := 72;
		lb_BillKey.Top := 2;
		lb_BillKey.caption := cb_BillKey.Text;
		iTmp := cb_BillKey.ItemIndex;
		if iTmp > 0 then 
			lb_BillKey.Hint := gBillKeySeq[iTmp - 1] else lb_BillKey.Hint := '';
	end;
	medLimiteDate.Enabled := not lb_BillKey.Visible;
	chk_AgreeYn.Enabled := not lb_BillKey.Visible;
end;

procedure TFrm_JON34.chkConfigVATsetClick(Sender: TObject);
begin

end;

// ī�� ���� ������ ��ȸ �Ѵ�.
procedure TFrm_JON34.ProCardInfoSelect(ConfSlip : string);
begin
	if Card_Gubun = 1 then
		RequestData(GetSel05('GET_CARD_INFO_KCP', 'pay_card.card_pay_info', '100', ConfSlip))
	else
	if Card_Gubun = 0 then
		RequestData(GetSel05('GET_CASH_INFO_KCP', 'PAY_CASH.CASH_INFO', '100', ConfSlip))
	else
	if Card_Gubun = 2 then
		RequestData(GetSel05('GET_COUPON_INFO_KCP', 'PAY_COUPON.COUPON_INFO', '100', ConfSlip))
  else
  if Card_Gubun = 11 then
		RequestData(GetSel05('GET_BGROUP_CARD_PAY_INFO', 'pay_card.BGROUP_CARD_PAY_INFO', '100', ConfSlip))
  else
  if Card_Gubun = 10 then
		RequestData(GetSel05('GET_BGROUP_CASH_INFO', 'PAY_CASH.BGROUP_CASH_INFO', '100', ConfSlip));
end;

procedure TFrm_JON34.RequestData(AData: string);
var
  ReceiveStr: string;
  StrList: TStringList;
  ErrCode: integer;
begin
	StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    if dm.SendSock(AData, StrList, ErrCode, False) then
    begin
      ReceiveStr := StrList[0];

      if trim(ReceiveStr) <> '' then
      begin
        Application.ProcessMessages;
				proc_recieve(ReceiveStr);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    StrList.Free
  end;
end;

procedure TFrm_JON34.proc_recieve(ls_rxxml : WideString);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err : string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd : TStringList;
  ErrDesc : string;
  I : Integer;
begin
	try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      if not xdom.loadXML(ls_rxxml) then
        Exit;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey  := GetXmlClientKey(ls_rxxml);

				if ls_ClientKey = 'GET_CARD_INFO_KCP' then
        begin
          // KCP ī�� ���� �� ���� ��ȸ.(���� ���� ����:������ȣ �ϳ��� ������ ������,,)
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          ls_Rcrd := TStringList.Create;
          try
            for I := 0 to lst_Result.length - 1 do
            begin
              GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

              lcPaySeq                  := ls_Rcrd[0];      // ī������Ϸù�ȣ �߰�. 2011-10-20
              lblPaySeq.Caption         := lcPaySeq;
              cxCurDecRate.Text         := ls_Rcrd[1];      // ī������ݾ� �߰�. 2011-10-20
              lblCardStatus.Caption     := ls_Rcrd[2];      // ��������.
              lblTranNo.Caption         := ls_Rcrd[3];      // �ŷ���ȣ.
							lcTranNo                  := ls_Rcrd[3];
							lbResultMsg.Caption       := 'ó���Ͻ�: ' + ls_Rcrd[6] + '     ���ι�ȣ: ' + ls_Rcrd[4];
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + 'ó��������: ' + ls_Rcrd[7] + '/' + ls_Rcrd[8] + '     ����: ' + ls_Rcrd[2];
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '���: ' + ls_Rcrd[5];
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '��һ���: ' + ls_Rcrd[9];
							if (ls_Rcrd[10] = '03') or (ls_Rcrd[10] = '06') then
							begin
								lcPaySite := 'KCP';
                rb_Card1.Checked := True;
								rb_BaRo_Card1.Enabled := False;
							end else
              if ls_Rcrd[10] = '05' then
              begin
                lcPaySite := 'BARO';
								rb_BaRo_Card1.Checked := True;
								rb_Card1.Enabled := False;
							end;
            end;
          finally
            ls_Rcrd.Free;
					end;
				end else
				if ls_ClientKey = 'GET_CASH_INFO_KCP' then
				begin
          // KCP ī�� ���� �� ���� ��ȸ.(���� ���� ����:������ȣ �ϳ��� ������ ������,,)
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
          try
            for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

							lcPaySeq                  := ls_Rcrd[0];      // ���ݿ����������Ϸù�ȣ �߰�. 2013-01-31
							lblPaySeq_Cash.Caption    := lcPaySeq;
							cxCurDecRate_Cash.Text    := ls_Rcrd[1];      // ī������ݾ� �߰�. 2011-10-20
							lblCardStatus_Cash.Caption:= ls_Rcrd[2];      // ��������.
							lblTranNo_Cash.Caption    := ls_Rcrd[3];      // �ŷ���ȣ.
							lcTranNo                  := ls_Rcrd[3];
							lbResultMsg.Caption       := 'ó���Ͻ�: ' + ls_Rcrd[6] + '     ���ι�ȣ: ' + ls_Rcrd[4];      // ó���Ͻ�.
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + 'ó��������: ' + ls_Rcrd[7] + '/' + ls_Rcrd[8] + '     ����: ' + ls_Rcrd[2];// ó���� ����.
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '���: ' + ls_Rcrd[5];            // ���
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '��һ���: ' + ls_Rcrd[9];        // ��һ���
							if (ls_Rcrd[10] = '03') or (ls_Rcrd[10] = '06') then
							begin
								lcPaySite := 'KCP';
								rb_Card1.Checked := True;
								rb_BaRo_Card1.Enabled := False;
							end else
              if ls_Rcrd[10] = '05' then
							begin
								lcPaySite := 'BARO';
								rb_BaRo_Card1.Checked := True;
								rb_Card1.Enabled := False;
							end	else
              if ls_Rcrd[10] = '13' then
							begin
								lcPaySite := ls_Rcrd[11];
								if lcPaySite = '0' then
									rg_charge_ser2.Checked := True
								else if lcPaySite = '1' then
									rg_charge_ser1.Checked := True;
							end;
						end;
					finally
						ls_Rcrd.Free;
					end;
				end else
				if ls_ClientKey = 'GET_COUPON_INFO_KCP' then
				begin
          // ����� ���� ���� �� ���� ��ȸ.(���� ���� ����:������ȣ �ϳ��� ������ ������,,)
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
          try
            for I := 0 to lst_Result.length - 1 do
						begin
              // 186��2013-06-25��sntest���ݸ��ʦ����οϷᦢ��0��0��0��������
							GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);


							lcPaySeq                  := ls_Rcrd[0];      // ������û��ȣ 20130619  LYB
							lblPaySeq_Coupon.Caption  := lcPaySeq;

              if ls_Rcrd[4] <> '�����Ϸ�' then
              begin
                medtCouponNum.Text         := ls_Rcrd[13];                       // ������ȣ. 20130614
                cxCurDec_Coupon.Value      := StrToFloatDef(ls_Rcrd[5], 0);      // �����ݾ� �߰�. 20130614
	  						cxCurDec_Coupon1.Value     := StrToFloatDef(ls_Rcrd[6], 0);      // ��������ݾ� �߰�. 20130614                
				  			lblCouponStatus.Caption   := ls_Rcrd[4];      // ��������.
              end else
              begin
                cxCurDec_Coupon.Text      := '0';
	  						cxCurDec_Coupon1.Text     := '0';
              end;

              if cxCurDec_Coupon.Value > cxCurDecRate_Coupon.Value then
              begin
                Lbl_ChangeMile.Caption := FormatFloat('#,', cxCurDec_Coupon.Value - cxCurDecRate_Coupon.Value);
              end else
              begin
                Lbl_ChangeMile.Caption := '0';
              end;

              if ls_Rcrd[4] <> '�����Ϸ�' then
              begin
  							lbResultMsg.Caption       := 'ó���Ͻ�: ' + ls_Rcrd[1] + '     ���ι�ȣ: ' + ls_Rcrd[0];      // ó���Ͻ�.
	  						lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + 'ó��������: ' + ls_Rcrd[2] + '/' + ls_Rcrd[3] + '     ����: ' + ls_Rcrd[4];// ó���� ����.
		  					lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '���: ' + ls_Rcrd[5];            // ���
			  				lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '��һ���: ' + ls_Rcrd[12];        // ��һ���
                lbResultMsg.Refresh;
              end;
						end;
					finally
						ls_Rcrd.Free;
					end;
				end	else
				if ls_ClientKey = 'GET_BGROUP_CARD_PAY_INFO' then
        begin
          // KCP ī�� ���� �� ���� ��ȸ.(���� ���� ����:������ȣ �ϳ��� ������ ������,,)
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          ls_Rcrd := TStringList.Create;
          try
            for I := 0 to lst_Result.length - 1 do
            begin
              GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

              lcPaySeq                  := ls_Rcrd[0];      // ī������Ϸù�ȣ �߰�. 2011-10-20
              lblPaySeq.Caption         := lcPaySeq;
              cxCurDecRate.Text         := ls_Rcrd[1];      // ī������ݾ� �߰�. 2011-10-20
              lblCardStatus.Caption     := ls_Rcrd[2];      // ��������.
              lblTranNo.Caption         := ls_Rcrd[3];      // �ŷ���ȣ.
              lcTranNo                  := ls_Rcrd[3];
							lbResultMsg.Caption       := 'ó���Ͻ�: ' + ls_Rcrd[6] + '     ���ι�ȣ: ' + ls_Rcrd[4];
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + 'ó��������: ' + ls_Rcrd[7] + '/' + ls_Rcrd[8] + '     ����: ' + ls_Rcrd[2];
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '���: ' + ls_Rcrd[5];
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '��һ���: ' + ls_Rcrd[9];
							if (ls_Rcrd[10] = '03') or (ls_Rcrd[10] = '06') then
              begin
                lcPaySite := 'KCP';
                rb_Card1.Checked := True;
                rb_BaRo_Card1.Enabled := False;
              end else
              if ls_Rcrd[10] = '05' then
              begin
                lcPaySite := 'BARO';
								rb_BaRo_Card1.Checked := True;
								rb_Card1.Enabled := False;
              end;
            end;
          finally
            ls_Rcrd.Free;
					end;
				end	else
				if ls_ClientKey = 'GET_BGROUP_CASH_INFO' then
        begin
          // KCP ī�� ���� �� ���� ��ȸ.(���� ���� ����:������ȣ �ϳ��� ������ ������,,)
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
          try
            for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

							lcPaySeq                  := ls_Rcrd[0];      // ���ݿ����������Ϸù�ȣ �߰�. 2013-01-31
							lblPaySeq_Cash.Caption    := lcPaySeq;
							cxCurDecRate_Cash.Text    := ls_Rcrd[1];      // ī������ݾ� �߰�. 2011-10-20
							lblCardStatus_Cash.Caption:= ls_Rcrd[2];      // ��������.
							lblTranNo_Cash.Caption    := ls_Rcrd[3];      // �ŷ���ȣ.
							lcTranNo                  := ls_Rcrd[3];
							lbResultMsg.Caption       := 'ó���Ͻ�: ' + ls_Rcrd[6] + '     ���ι�ȣ: ' + ls_Rcrd[4];      // ó���Ͻ�.
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + 'ó��������: ' + ls_Rcrd[7] + '/' + ls_Rcrd[8] + '     ����: ' + ls_Rcrd[2];// ó���� ����.
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '���: ' + ls_Rcrd[5];            // ���
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '��һ���: ' + ls_Rcrd[9];        // ��һ���
							if (ls_Rcrd[10] = '03') or (ls_Rcrd[10] = '06') then
							begin
								lcPaySite := 'KCP';
								rb_Card1.Checked := True;
								rb_BaRo_Card1.Enabled := False;
							end else
              if ls_Rcrd[10] = '05' then
							begin
								lcPaySite := 'BARO';
								rb_BaRo_Card1.Checked := True;
								rb_Card1.Enabled := False;
							end	else
              if ls_Rcrd[10] = '13' then
							begin
								lcPaySite := ls_Rcrd[11];
								if lcPaySite = '0' then
									rg_charge_ser2.Checked := True
								else if lcPaySite = '1' then
									rg_charge_ser1.Checked := True;
							end;
						end;
					finally
						ls_Rcrd.Free;
					end;
        end else
				if ls_ClientKey = 'JON34' then
				begin
					GMessagebox('����(��������)������ �߱� ���ڹ߼� �Ϸ�', CDMSI);
				end
				else
				if ls_ClientKey = 'JON34CARD' then
				begin
					GMessagebox('ī����������� ���ڹ߼� �Ϸ�', CDMSI);
				end;

			end else
			begin
        if ls_ClientKey = 'SET_BGROUP_PAY_SEQ' then
        begin
  				ErrDesc := GetXmlErrorMsg(ls_rxxml) + '���ο����� ���� ��� ����';
				end
        else
  				ErrDesc := GetXmlErrorMsg(ls_rxxml);
				GMessagebox(ErrDesc, CDMSI);
      end;

    except
      on e : Exception do
      begin
				Assert(False, 'frmJON34.proc_recieve:' + E.Message);
      end;
    end;

  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
  end;
end;

procedure TFrm_JON34.rbConfigVATset1Click(Sender: TObject);
begin
  if rbConfigVATset2.Checked then
    cxCurVATvalue.Enabled := True
  else
    cxCurVATvalue.Enabled := False;
end;

procedure TFrm_JON34.rb_BaRo_Card1Click(Sender: TObject);
begin
	if rb_BaRo_Card1.Checked then
  begin
    medCardNum.Enabled := False;
    medLimiteDate.Enabled := False;
		cxCurTerm.Enabled := False;

    medCardNum.text := '';
    medLimiteDate.text := '';
		cxCurTerm.text := '0';
	end;
end;

procedure TFrm_JON34.rb_Card1Click(Sender: TObject);
begin
	medCardNum.Enabled := True;
	medLimiteDate.Enabled := True;
  cxCurTerm.Enabled := True;
end;

procedure TFrm_JON34.btn_BillkeyClick(Sender: TObject);
begin
	if pnl_BillKeyMng.Visible then 
	begin
		pnl_BillKeyMng.Visible := False;
		btn_Billkey.Caption := 'ī���������'; 
	end else 
	begin
		pnl_BillKeyMng.Visible := True;
		proc_BillKeyList;
		btn_Billkey.Caption := 'ī������ݱ�'; 
	end;
	pnl_BillKeyMng.Top := 1;
	pnl_BillKeyMng.Left := 0;
end;

procedure TFrm_JON34.btn_CashSMSClick(Sender: TObject);
var
	ls_TxLoad: string;
	rv_str: string;
	ls_rxxml: WideString;
	slReceive: TStringList;
	ErrCode: integer;
	sSmsTel : string;
begin
	try
		ls_TxLoad := GTx_UnitXmlLoad('SMS01.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON34', [rfReplaceAll]);

		if rg_charge_ser2.checked then sSmsTel := medtCashCardNum.text else
		if rg_charge_ser1.checked then
		begin
			sSmsTel := edt_CustTel.text;
			if length(sSmsTel) < 10 then 
			begin
				GMessagebox('SMS ���Ź�ȣ Ȯ���ϼ���', CDMSI);
				edt_CustTel.Setfocus;
				exit;
			end;
			if length(sSmsTel) > 11 then 
			begin
				GMessagebox('SMS ���Ź�ȣ Ȯ���ϼ���', CDMSI);
				edt_CustTel.Setfocus;
				exit;
			end;
			if (copy(sSmsTel, 1,3) <> '011') and (copy(sSmsTel, 1,3) <> '010') then 
			begin
				GMessagebox('SMS ���Ź�ȣ Ȯ���ϼ���', CDMSI);
				edt_CustTel.Setfocus;
				exit;
			end
		end;
//		ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString', En_Coding(medtCashCardNum.text), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString', En_Coding(sSmsTel), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString', En_Coding(lcMainNum), [rfReplaceAll]);    //��ǥ��ȣ
		ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString', En_Coding(lcPaySeq), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', '', [rfReplaceAll]);

		if Frm_Main.Frm_JON03[Jon03Tag].BtnAutoRe.Tag = 1 then
		begin
			 Frm_Main.Frm_JON03[Jon03Tag].AAutoSearch_Stop := False;
			 Frm_Main.Frm_JON03[Jon03Tag].tmr_dis.Enabled := True;
       Frm_Main.Frm_JON03[Jon03Tag].PnlAuto.Visible := True;
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
  except on E: Exception do
    Assert(False, E.Message);
  end;

end;

procedure TFrm_JON34.cxBtnCardDelClick(Sender: TObject);
var sTmp : string;
	iTmp : integer;
begin

	if cb_BillKey.ItemIndex <= 0 then exit;
	
	sTmp := '������ ī�������� �����Ͻðڽ��ϱ�?.';
						
	if Application.MessageBox(PChar(sTmp), 'CDMS', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
	begin
		iTmp := cb_BillKey.ItemIndex-1;
		sTmp := gBillKeySeq[iTmp];
		proc_DelBillKey(sTmp);	
  end;
end;

procedure TFrm_JON34.cxButton2Click(Sender: TObject);
begin
  if lcPaySeq = '' then exit;
  if Card_Gubun < 10 then
    ProCardInfoSelect('' + '��' + lcPaySeq)   // ī����� ������ ��ȸ �Ѵ�.
  else //���ο�����
    ProCardInfoSelect(lcPaySeq);   // ī����� ������ ��ȸ �Ѵ�.
end;

procedure TFrm_JON34.sb_ApproveReceiptClick(Sender: TObject);
var
	ls_TxLoad: string;
	rv_str: string;
	ls_rxxml: WideString;
	slReceive: TStringList;
	ErrCode: integer;
begin
	try
		ls_TxLoad := GTx_UnitXmlLoad('SMS01.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON34CARD', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString', En_Coding(Frm_Main.Frm_JON01N[lcJON_IDX].cxtCuTel.Text), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString', En_Coding(lcMainNum), [rfReplaceAll]);      //��ǥ��ȣ
		ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString', En_Coding(lcPaySeq), [rfReplaceAll]);      // �����Ϸù�ȣ
		ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', '', [rfReplaceAll]);

//-    if frm_jon03.cb_UpDate.ItemIndex > 0 then frm_jon03.tmr_dis.Enabled := True;

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
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON34.sb_ApproveRedClick(Sender: TObject);
var
	ls_TxLoad : string;
  rv_str: string;
	ls_rxxml: WideString;
  slReceive: TStringList;
	ErrCode: integer;
	Msg, sTemp : string;

  fCouponAmt : Real;

	xdom: msDomDocument;
	ls_ClientKey, ls_Msg_Err : string;
	lst_Result: IXMLDomNodeList;
	I, j : Integer;

	Param, XmlData, ErrMsg, sTmp : String;
	ls_Rcrd, slList : TStringList;
begin
	try
		if btn_Coupon.Hint = 'y' then //���� ��ȸ
		begin
			slList := TStringList.Create;
			Try
				sTmp := StringReplace(Trim(medtCouponNum.Text),'-','',[rfReplaceAll]); 
				Param := lcBRNO + '��' + sTmp;
				if not RequestBasePaging(GetSEL06('GET_SELF_COUPON', 'SELF_COUPON.GET_SELF_COUPON', '1', Param), slList, ErrCode, ErrMsg) then
				begin
					GMessagebox(Format('��ü�������� ������ȸ ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
					Screen.Cursor := crDefault;
					FreeAndNil(slList);
					Exit;
				end;

				xdom := ComsDomDocument.Create;
				try
					Frm_Flash.cxPBar1.Properties.Max := slList.Count;
					Frm_Flash.cxPBar1.Position := 0;
					for j := 0 to slList.Count - 1 do
					begin
						Frm_Flash.cxPBar1.Position := j + 1;
						Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
						Application.ProcessMessages;
						xmlData := slList.Strings[j];
						xdom.loadXML(XmlData);

						if (0 < GetXmlRecordCount(XmlData)) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									//��뿩��{x:�̻��, y:���, n:������}�������������ݾצ�������(YYYYMMDD)��������(YYYYMMDD
									cxCurDec_Coupon.value := StrToIntDef(ls_Rcrd[2],0);
									sTmp := ls_Rcrd[1];
									if ls_Rcrd[0] = 'x' then sTmp := sTmp + ' : ��밡������' else
									if ls_Rcrd[0] = 'y' then sTmp := sTmp + ' : ���Ұ�����' else
									if ls_Rcrd[0] = 'n' then sTmp := sTmp + ' : ��밡������';

									if (Trim(ls_Rcrd[4]) <> '') and (ls_Rcrd[0] <> 'y') then
										sTmp := sTmp + ' [������:' + GetStrToDateTimeGStr(ls_Rcrd[4], 4) + ']';
									
									lbResultMsg.Caption := sTmp;
									if (ls_Rcrd[0] = 'n') or (ls_Rcrd[0] = 'x') then
									begin
										sb_ApproveRed.Enabled := False;
										btn_Coupon.Enabled := True;
									end else
									begin
										sb_ApproveRed.Enabled := True;
										btn_Coupon.Enabled := False;
									end;
									
								end;
							finally
								ls_Rcrd.Free;
							end;
						end;
					end;
				finally
					xdom := Nil;
					Frm_Flash.hide;    
					Screen.Cursor := crDefault;
					FreeAndNil(slList);
				end;
      Finally
				slList.Free;
      End;
		end else
		if (btn_Coupon.Hint = '') or (btn_Coupon.Hint = 'n') then
		begin
			if Length(StringReplace( medtCouponNum.Text, ' ' , '', [rfreplaceall])) < 11 then
			begin
				GMessagebox('������ȣ�� �Է� ���ּ���!', CDMSI);
				medtCouponNum.SetFocus;
				Exit;
			end;

			ls_TxLoad := GTx_UnitXmlLoad('C701.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'COUPON_APPROVE_RED', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '���Ϸù�ȣ', lcCustSeq, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '������ȣ', medtCouponNum.Text, [rfReplaceAll]);
			if (Pos('����', Frm_Main.Frm_JON01N[lcJON_IDX].Caption) = 0 ) and (Pos('������', Frm_Main.Frm_JON01N[lcJON_IDX].Caption) = 0 ) then
				ls_TxLoad := StringReplace(ls_TxLoad, '������ȣ', '', [rfReplaceAll])
			else
				ls_TxLoad := StringReplace(ls_TxLoad, '������ȣ', Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text, [rfReplaceAll]);

			Screen.Cursor := crHourGlass;
			slReceive := TStringList.Create;
			try
				if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
				begin
					rv_str := slReceive[0];
					if rv_str <> '' then
					begin
						ls_rxxml := rv_str;
						ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
						if ('0000' = ls_MSG_Err) then
						begin
							ls_ClientKey  := GetXmlClientKey(ls_rxxml);

							xdom := ComsDomDocument.Create;
							try
								if not xdom.loadXML(ls_rxxml) then Exit;
								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/CouponCert/Data');
								lcPaySeq := lst_Result.item[0].attributes.getNamedItem('CouponSeq').Text;
								lblPaySeq_Coupon.Caption := lcPaySeq;
								fCouponAmt := StrToFloatDef(lst_Result.item[0].attributes.getNamedItem('CouponAmt').Text, 0);

								if fCouponAmt > 0 then
								begin
									lblPaySeq.Caption := lcPaySeq;
									Application.ProcessMessages;

									cxCurDec_Coupon.Value := fCouponAmt;
									lblCouponStatus.Caption     := '�����Ϸ�';
									lbResultMsg.Caption := '-';
									lbResultMsg.Refresh;
									SetCouponAmount;

									sb_ApproveReq.Enabled     := True;
									sb_ApproveOK.Enabled      := False;
									sb_ApproveCancle.Enabled  := False;
									medtCouponNum.Enabled  := False;
								end;
							finally
								xdom := Nil;
							end;
						end else
						begin
							Msg := '[' + ls_MSG_Err + '] ';
	//						lbResultMsg.Caption := Msg;
							GMessagebox(Msg, CDMSI);
						end;
					end else
					begin
						GMessagebox('[Error]�������� ����� �������� ���Ͽ����ϴ�.', CDMSI);
					end;
				end;
			finally
				FreeAndNil(slReceive);
				Screen.Cursor := crDefault;
			end;
		end;
	except
    on e:Exception do
    begin
      sTemp := 'JON34[sb_ApproveRedClick]:' + e.Message;
      Log(sTemp, LOGDATAPATHFILE);
      Assert(False, 'JON34[sb_ApproveRedClick]:' + E.Message);
    end;
	end;
end;

procedure TFrm_JON34.SetCouponAmount;
begin
  if cxCurDec_Coupon.Value > cxCurDecRate_Coupon.Value then
  begin
    cxCurDec_Coupon1.Value := cxCurDecRate_Coupon.Value;
    Lbl_ChangeMile.Caption := FormatFloat('#,', cxCurDec_Coupon.Value - cxCurDec_Coupon1.Value);
  end else
  begin
    cxCurDec_Coupon1.Value := cxCurDec_Coupon.Value;
    Lbl_ChangeMile.Caption := '0';
  end;
  
  if lblCouponStatus.Caption = '���οϷ�' then
  begin
    lcAppModify := 'Y';
    sb_ApproveOK.Click;
  end;
end;

procedure TFrm_JON34.medtCashCardNumKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8, #22] then      //Ctrl+v = #22 or #$16
	else
		key := #0;
end;

procedure TFrm_JON34.medtCouponNumChange(Sender: TObject);
begin
  lblCouponStatus.Caption := '';
end;

procedure TFrm_JON34.medtCouponNumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then sb_ApproveRed.Click;
end;

procedure TFrm_JON34.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON34.cxCurDecRate_CouponPropertiesChange(Sender: TObject);
begin
	SetCouponAmount;
end;

procedure TFrm_JON34.proc_BillKeyList;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
begin
	SetDebugeWrite('TFrm_JON34B.proc_BillKeyList');
	Try
		cxGridBillKey.DataController.SetRecordCount(0);

		Param := lcBRNO;
		Param := Param + '��' + lcCustTel;


		Screen.Cursor := crHourGlass;
		btn_Billkey.Enabled := False;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_BILLKEY_LIST', 'MNG.GET_BILLKEY_LIST', '10', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('���ī�� ��ȸ ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				btn_Billkey.Enabled := True;
				Exit;
			end;

			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				xdom := ComsDomDocument.Create;
				cxGridBillKey.DataController.SetRecordCount(0);

				try
					if not xdom.loadXML(XmlData) then Exit;

					ls_MSG_Err := GetXmlErrorCode(XmlData);
					gBillKeySeq    .Clear;
					gBillKeyCard   .Clear;
					gBillKeyCardNum.Clear;
					if ('0000' = ls_MSG_Err) then
					begin
						if (0 < GetXmlRecordCount(XmlData)) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
							cxGridBillKey.BeginUpdate;
							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx2('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

									if gBillKeySeq.IndexOf(ls_Rcrd[0]) > -1 then Continue;
									
									iRow := cxGridBillKey.DataController.AppendRecord; // 1 Record �߰�
									//��) 1,[��]5612
									cxGridBillKey.DataController.Values[iRow, 0] := '';               //��ǥī��
									cxGridBillKey.DataController.Values[iRow, 1] := ls_Rcrd[1] + ' ' + ls_Rcrd[2];       //ī���� + ������4�ڸ�
									cxGridBillKey.DataController.Values[iRow, 2] := '';               //������ư
									cxGridBillKey.DataController.Values[iRow, 3] := ls_Rcrd[1];       //ī���
									cxGridBillKey.DataController.Values[iRow, 4] := ls_Rcrd[0];       //BillSeq

									gBillKeySeq.Add(ls_Rcrd[0]); //BillSeq
									gBillKeyCard.Add(ls_Rcrd[1]); //ī���
									gBillKeyCardNum.Add(ls_Rcrd[2]); //������4�ڸ�
								end;
							finally
								ls_Rcrd.Free;
							end;
							cxGridBillKey.EndUpdate;
	
							cb_BillKey.Properties.items.clear;
							cb_BillKey.Properties.items.add('ī�� ���� ���� �Է�');
							cb_BillKey.Tag := 99;
							for i := 0 to gBillKeySeq.Count -1 do
							begin
								if cb_BillKey.Properties.items.IndexOf(gBillKeyCard[i] + ' ' + gBillKeyCardNum[i]) > -1 then Continue;
								cb_BillKey.Properties.items.add(gBillKeyCard[i] + ' ' + gBillKeyCardNum[i]);
							end;
							cb_BillKey.Tag := 0;
							if gBillKeySeq.Count > 0 then 
							begin
								if Trim(StringReplace(medCardNum.Text, '-' , '', [rfreplaceall])) = '' then 
								begin
									if (Pos('����', Frm_Main.Frm_JON01N[lcJON_IDX].Caption) > 0 ) or (Pos('������', Frm_Main.Frm_JON01N[lcJON_IDX].Caption) > 0 ) then
									begin
										//ī���ȣ �Է��� �����ѻ���(������� ��)�� �ڵ�����
										if medCardNum.Enabled then cb_BillKey.ItemIndex := 1 else cb_BillKey.ItemIndex := 0;
									end
									else
										cb_BillKey.ItemIndex := 1;

								end else cb_BillKey.ItemIndex := 0;
							end;       
						end else
						begin
							cb_BillKey.Properties.items.clear;
							cb_BillKey.Properties.items.add('ī�� ���� ���� �Է�');
							cb_BillKey.ItemIndex := 0;
						end;
					end;
				finally
					xdom := Nil;
				end;
			end;
		finally
			Frm_Flash.hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			btn_Billkey.Enabled := True;
		end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_JON34.proc_DelBillKey(ASEQ: string);
var
	ls_TxLoad : string;
  rv_str: string;
	ls_rxxml: WideString;
  slReceive: TStringList;
	ErrCode: integer;
  ls_Msg_Err : string;
	lst_Result: IXMLDomNodeList;
begin
	SetDebugeWrite('TFrm_JON34.proc_DelBillKey');
	try

		ls_TxLoad := GTx_UnitXmlLoad('C505.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BillKeyDel', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strBrNo', lcBRNO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'strBillSeq', ASEQ, [rfReplaceAll]);

		Screen.Cursor := crHourGlass;
		slReceive := TStringList.Create;
		try
			if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
			begin
				rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
					ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
					if ('0000' = ls_MSG_Err) then
					begin
						GMessagebox('�����Ͻ� ī�� ������ �����Ǿ����ϴ�.', CDMSI);
					end else
						GMessagebox(Format('[%d] %s', [ErrCode, 'ī������ ���� ����']), CDMSE);
					proc_BillKeyList;
				end;
			end;
		finally
			FreeAndNil(slReceive);
			Screen.Cursor := crDefault;
    end;
	except
    on e:Exception do
    begin
			Assert(False, 'JON34[proc_DelBillKey]:' + E.Message);
    end;
	end;
end;

function TFrm_JON34.proc_getSvrCardCharge( sBrNo : String; iAmt : Double ) : Double;
var XmlData, Param, ErrMsg: string;
  ErrCode: Integer;
	xdom: MSDomDocument;
  lst_Result : IXMLDomNodeList;
begin
  SetDebugeWrite('Frm_JON34.proc_getSvrCardCharge');
  try
    Result := iAmt;
    Param := sBrNo + '��' + FloatToStr(iAmt);
  	if not RequestBase(GetCallable05('GET_BRANCH_CARD_CHARGE', 'MNG_BRANCH.GET_BRANCH_CARD_CHARGE', Param), XmlData, ErrCode, ErrMsg) then
	  begin
  		ShowMessage(Format('[%d] %s', [ErrCode, ErrMsg]));
  		Exit;
  	end else
    begin
      try
        xdom := ComsDomDocument.Create;
        try
          xdom.loadXML(XmlData);
          if not xdom.loadXML(XmlData) then
          begin
            Screen.Cursor := crDefault;
            Exit;
          end;
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          Result := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Value').Text, 0);
        finally
          xdom := Nil;
        end;
      except
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

end.

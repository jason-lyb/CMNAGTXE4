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

		Card_Gubun : integer; //0: 현금영수증. 1: 카드결제, 2: 모바일 쿠폰 결제

    Jon03Tag : Integer;

		procedure proc_init;
    // 카드 결제 관련 서버 결과 회신 처리 함.
		function ResponseCardProcess(AXml: string; var AMsg: String): Boolean;
    // 카드 결제 정보를 조회 한다.
    procedure ProCardInfoSelect(ConfSlip : string);
    // 결제금액 서버에서 조회
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
		// 카드결제 승인요청.
			if not rb_BaRo_Card1.Checked then
			begin

{				if Length(StringReplace( medCardNum.Text, ' ' , '', [rfreplaceall])) < 16 then
				begin
					GMessagebox('카드번호를 입력 해주세요!', CDMSI);
					medCardNum.SetFocus;
					Exit;
				end;     }

				if not lb_BillKey.visible then
				begin
{					sTemp := StringReplace(medCardNum.Text, ' ','',[rfReplaceAll]);
					sTemp := StringReplace(sTemp, '-','',[rfReplaceAll]);
					if Length(sTemp) < 15 then
					begin
						GMessagebox('[카드번호 입력오류]'  + #13#10 + '카드번호를 확인해주세요.', CDMSI);
						medCardNum.SetFocus;
						Exit;
					end;      }  //자리수 체크는 서버에서 함 20200616 KHS
				
					if Length(StringReplace( medLimiteDate.Text, ' ' , '', [rfreplaceall])) < 5 then
					begin
						GMessagebox('유효기간을 입력 해주세요!', CDMSI);
						medLimiteDate.SetFocus;
						Exit;
					end;
					if (StrToIntDef(leftstr(medLimiteDate.Text,2),0) > 12) or (StrToIntDef(leftstr(medLimiteDate.Text,2),0) < 1) then
					begin
						GMessagebox('유효기간 중 월(을) 잘못 입력 하였습니다.', CDMSI);
						medLimiteDate.SetFocus;
						Exit;
					end;
					if (StrToIntDef(RightStr(medLimiteDate.Text,2),0) > 50) or (StrToIntDef(RightStr(medLimiteDate.Text,2),0) < 11) then
					begin
						GMessagebox('유효기간 중 년(을) 잘못 입력 하였습니다.', CDMSI);
						medLimiteDate.SetFocus;
						Exit;
					end;
				end;
			end;

			if cxCurDecRate.Value < 50000 then
			begin
				if (cxCurTerm.Value > 0) and (cxCurTerm.Value <> 60) then
				begin
					GMessagebox('결제금액이 5만원 이상 일때만 할부 가능 합니다.', CDMSI);
					cxCurTerm.Value := 0;   // 0 = 일시불
					cxCurTerm.SetFocus;
					Exit;
				end;
			end;
			if lblCardStatus.Caption = '결제완료' then
			begin
				GMessagebox('"결제완료" 상태 일땐 "승인요청"를 할 수 없습니다.', CDMSI);
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
						sTmp := '증빙번호의 자리수가 부족합니다.'
					else if Length(StringReplace( medtCashCardNum.Text, ' ' , '', [rfreplaceall])) > 10 then
						sTmp := '증빙번호의 자리수를 초과하였습니다.';
					
					GMessagebox('지출증빙의 경우 사업자번호만 가능합니다' + #13#10 + sTmp + #10#13 + '번호를 다시 확인해주세요', CDMSI);
					medtCashCardNum.SetFocus;
					Exit;
				end;
			end
			else
			if rg_charge_ser2.checked then 
			begin
				if Length(StringReplace( medtCashCardNum.Text, ' ' , '', [rfreplaceall])) < 11 then
				begin
					GMessagebox('증빙번호 자리수가 부족합니다' + #13#10 + '번호를 다시 확인해주세요', CDMSI);
					medtCashCardNum.SetFocus;
					Exit;
				end;
				if Length(StringReplace( medtCashCardNum.Text, ' ' , '', [rfreplaceall])) > 16 then
				begin
					GMessagebox('증빙번호 자리수를 초과하였습니다.', CDMSI);
					medtCashCardNum.SetFocus;
					Exit;
				end;
			end;

			if lblCardStatus_Cash.Caption = '증빙완료' then
			begin
				GMessagebox('"증빙완료" 상태 일땐 "증빙요청"를 할 수 없습니다.', CDMSI);
				Exit;
			end;
		end	else
		if Card_Gubun = 2 then
		begin
       if lblCouponStatus.Caption <> '인증완료' then
       begin
 				GMessagebox('인증요청 후 승인 요청 해주세요!', CDMSI);
 				Exit;
       end;
		end;

		if (Card_Gubun = 1) or (Card_Gubun = 11) then
		begin
			//버튼 비활성화 추가 20190227 KHS
			sb_ApproveReq.Enabled   := False;
			medCardNum.Enabled      := False;
			medLimiteDate.Enabled   := False;
			cxCurDRate.Enabled      := False;
			cxCurDecRate.Enabled    := False;
			cxCurTerm.Enabled       := False;
			//버튼 비활성화 추가 20190227 KHS

			ls_TxLoad := GTx_UnitXmlLoad('C501N1.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CARD_APPROVE_REQ', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '지사코드', lcBRNO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '대표번호', lcMainNum, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '고객전화번호', lcCustTel, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '고객일련번호', lcCustSeq, [rfReplaceAll]);

			if rb_BaRo_Card1.checked then lcPaySite := 'BARO'
															 else lcPaySite := 'KCP';

			ls_TxLoad := StringReplace(ls_TxLoad, '카드결제사이트구분', lcPaySite, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '결제일련번호', lcPaySeq, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '카드번호', StringReplace(medCardNum.Text,'-', '',[rfReplaceAll]) , [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '유효기간(년)', RightStr(medLimiteDate.text,2), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '유효기간(월)', LeftStr(medLimiteDate.text,2), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '할부기간(01~12)', RightStr('00' + cxCurTerm.text,2), [rfReplaceAll]);

	//    ls_TxLoad := StringReplace(ls_TxLoad, 'GoodMoney="결제금액"', 'GoodMoney="결제금액" Confslip="접수번호"', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'GoodMoney="결제금액"', 'GoodMoney="결제금액" ConfCharge="대리요금" Confslip="접수번호"', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '결제금액', StringReplace(cxCurDecRate.Text,',','',[rfReplaceAll]), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '대리요금', StringReplace(cxCurDRate.Text,',','',[rfReplaceAll]), [rfReplaceAll]);
			if (Pos('수정', Frm_Main.Frm_JON01N[lcJON_IDX].Caption) > 0 ) or (Pos('앱접수', Frm_Main.Frm_JON01N[lcJON_IDX].Caption) > 0 ) then    // 수정창에서는 접수번호 여부 확인 추가 20190808 KHS
			begin
				if Trim(Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text) = '' then
				begin
					GMessagebox('카드결제에 필요한 접수정보가 없습니다.' + #13#10 + #13#10
										+ '수정창 종료뒤 다시 카드결제를 진행하여 주십시오.' + #13#10 + #13#10
										+ '* 현재 수정창은 자동종료됩니다.', CDMSI);
					Frm_Main.Frm_JON01N[lcJON_IDX].btnCmdExit.Click;
					exit;
				end;
				if Not Frm_Main.Frm_JON01N[lcJON_IDX].pCheck_Modify(2, En_Coding(Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text)) then Exit;
			end;
			ls_TxLoad := StringReplace(ls_TxLoad, '접수번호', Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'strBillSeq', lb_BillKey.Hint, [rfReplaceAll]);
			if chk_AgreeYn.checked then sTmp := 'y' else sTmp := 'n'; 
			ls_TxLoad := StringReplace(ls_TxLoad, 'strAgreeYn', sTmp, [rfReplaceAll]);
			// 이전 카드 결제 건 확인

{				ls_TxLoad := GTx_UnitXmlLoad('C501.XML');
				ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CARD_APPROVE_REQ', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '지사코드', lcBRNO, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '대표번호', lcMainNum, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '고객전화번호', lcCustTel, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '고객일련번호', lcCustSeq, [rfReplaceAll]);

				if rb_BaRo_Card1.checked then lcPaySite := 'BARO' else
				if rb_Card1.checked      then lcPaySite := 'KCP';

				ls_TxLoad := StringReplace(ls_TxLoad, '카드결제사이트구분', lcPaySite, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '결제일련번호', lcPaySeq, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '카드번호', StringReplace(medCardNum.Text,'-', '',[rfReplaceAll]) , [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '유효기간(년)', RightStr(medLimiteDate.text,2), [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '유효기간(월)', LeftStr(medLimiteDate.text,2), [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '할부기간(01~12)', RightStr('00' + cxCurTerm.text,2), [rfReplaceAll]);

		//    ls_TxLoad := StringReplace(ls_TxLoad, 'GoodMoney="결제금액"', 'GoodMoney="결제금액" Confslip="접수번호"', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'GoodMoney="결제금액"', 'GoodMoney="결제금액" ConfCharge="대리요금" Confslip="접수번호"', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '결제금액', StringReplace(cxCurDecRate.Text,',','',[rfReplaceAll]), [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, '대리요금', StringReplace(cxCurDRate.Text,',','',[rfReplaceAll]), [rfReplaceAll]);
				if (Pos('수정', Frm_Main.Frm_JON01[lcJON_IDX].Caption) > 0 ) or (Pos('앱접수', Frm_Main.Frm_JON01[lcJON_IDX].Caption) > 0 ) then    // 수정창에서는 접수번호 여부 확인 추가 20190808 KHS
				begin
					if Trim(Frm_Main.Frm_JON01[lcJON_IDX].cxtJoinNum.Text) = '' then
					begin
						GMessagebox('카드결제에 필요한 접수정보가 없습니다.' + #13#10 + #13#10
											+ '수정창 종료뒤 다시 카드결제를 진행하여 주십시오.' + #13#10 + #13#10
											+ '* 현재 수정창은 자동종료됩니다.', CDMSI);
	//					Frm_Main.Frm_JON01[lcJON_IDX].btnCmdExit.OnClick(Frm_Main.Frm_JON01[lcJON_IDX].btnCmdExit);					
						Frm_Main.Frm_JON01[lcJON_IDX].btnCmdExit.Click;					
						exit;				
					end;
				end;
				ls_TxLoad := StringReplace(ls_TxLoad, '접수번호', Frm_Main.Frm_JON01[lcJON_IDX].cxtJoinNum.Text, [rfReplaceAll]);
			}
		end	else
		if (Card_Gubun = 0) or (Card_Gubun = 10) then
		begin
//      lcCustTel := medtCashCardNum.Text;
			ls_TxLoad := GTx_UnitXmlLoad('C503.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'Cash_APPROVE_REQ', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '지사코드', lcBRNO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '대표번호', lcMainNum, [rfReplaceAll]);//lcMainNum, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '고객전화번호', lcCustTel, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '고객일련번호', lcCustSeq, [rfReplaceAll]);
			if rg_charge_ser2.checked then lcPaySite := '0' else
			if rg_charge_ser1.checked then lcPaySite := '1';

			ls_TxLoad := StringReplace(ls_TxLoad, '발행용도', lcPaySite, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '신분확인ID', StringReplace(medtCashCardNum.text,'-','',[rfReplaceAll]), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '거래금액총합', StringReplace(cxCurDecRate_Cash.Text,',', '',[rfReplaceAll]) , [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '접수번호', Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '결제번호', lcPaySeq, [rfReplaceAll]);

		end	else
		if Card_Gubun = 2 then
		begin
			ls_TxLoad := GTx_UnitXmlLoad('C702.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'COUPON_APPROVE_REQ', [rfReplaceAll]);
      lcPaySite := '2';
			ls_TxLoad := StringReplace(ls_TxLoad, '쿠폰요청번호', lblPaySeq_Coupon.Caption, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '쿠폰결제금액', StringReplace(cxCurDec_Coupon1.Text,',','',[rfReplaceAll]), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '마일리지결제금액', StringReplace('0',',', '',[rfReplaceAll]) , [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '현금결제금액', StringReplace('0',',', '',[rfReplaceAll]) , [rfReplaceAll]);
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

              if lcPaySite <> '2' then  // 쿠폰 승인은 제외
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
							//버튼 비활성화 추가 20190227 KHS
							sb_ApproveReq.Enabled   := False;
							medCardNum.Enabled      := False;
							medLimiteDate.Enabled   := False;
							cxCurDRate.Enabled      := False;
							cxCurDecRate.Enabled    := False;
							cxCurTerm.Enabled       := False;
							//버튼 비활성화 추가 20190227 KHS

							GMessagebox('카드결제가 완료 되었습니다.' + #13#10 + #13#10 + Msg, CDMSI);
							lblCardStatus.Caption     := '결제완료';
							rb_Card1.Enabled := True;
							sb_ApproveOK.Enabled      := True;
							sb_ApproveCancle.Enabled  := True;
							sb_ApproveReceipt.Enabled  := True;
							
							if GT_USERIF.HD <> 'A2309' then //[하나]한우리콜센타 는 기사입금액 변경안되도록 함. 20170331 KHS
							begin
                //입금없을일 경우에는 기사송금액 변경안함 20180111KHS . 정회귀팀장과 협의
								if Frm_Main.Frm_JON01N[lcJON_IDX].cbbPostTime.Text <> POST_TIME_NOPAY then
                begin
                  //카드승인 시 기사입금액 함께 변경. 오더요금 > 결제금액 = 결제금액, 오더요금 <= 결제금액 = 오더요금 20160823KHS
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
							GMessagebox('고객 핸드폰으로 결제요청 되었습니다.' + #13#10 + #13#10 + Msg, CDMSI);
							lblCardStatus.Caption     := '결제요청성공';
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
										ProCardInfoSelect(Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text + '│' + lcPaySeq)   // 카드결제 정보를 조회 한다.
                  else //법인월정산
                    ProCardInfoSelect(lcPaySeq);   // 카드결제 정보를 조회 한다.
                end;
							end else
							if (lcPaySeq <> '') then
              begin
                if Card_Gubun < 10 then
  								ProCardInfoSelect('' + '│' + lcPaySeq)   // 카드결제 정보를 조회 한다.
                else //법인월정산
  								ProCardInfoSelect(lcPaySeq);   // 카드결제 정보를 조회 한다.
              end;
							GMessagebox('현금(지출증빙)영수증 발급이 완료 되었습니다.' + #13#10 + #13#10 + Msg, CDMSI);
							lblCardStatus_Cash.Caption     := '증빙완료';
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
              ProCardInfoSelect(lcPaySeq);  // 20130708  LYB 승인 요청 정보 표시
              GMessagebox('쿠폰승인요청이 완료 되었습니다.' + #13#10 + #13#10 + Msg, CDMSI);
							lblCouponStatus.Caption     := '승인완료';
              medtCouponNum.Enabled     := False;

              sb_ApproveOK.Click;  // 승인완료 휴 결제 완료 클릭 후 닫기

							sb_ApproveReq.Enabled     := False;
							sb_ApproveOK.Enabled      := True;
							sb_ApproveCancle.Enabled  := True;
							sb_ApproveReceipt.Enabled := False;
						end;
					  // 버튼 처리.
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
							//버튼 비활성화 추가 20190227 KHS
							sb_ApproveReq.Enabled   := True;
							medCardNum.Enabled      := True;
							medLimiteDate.Enabled   := True;
							cxCurDRate.Enabled      := True;
							cxCurDecRate.Enabled    := True;
							cxCurTerm.Enabled       := True;
							//버튼 비활성화 추가 20190227 KHS
						end;	
						lbResultMsg.Caption := Msg;
						GMessagebox(Msg, CDMSI);
					end;
        end else
				begin
					if (Card_Gubun = 1) or (Card_Gubun = 11) then
					begin
						//버튼 비활성화 추가 20190227 KHS
						sb_ApproveReq.Enabled   := True;
						medCardNum.Enabled      := True;
						medLimiteDate.Enabled   := True;
						cxCurDRate.Enabled      := True;
						cxCurDecRate.Enabled    := True;
						cxCurTerm.Enabled       := True;
						//버튼 비활성화 추가 20190227 KHS
					end;	
					GMessagebox('[Error]서버에서 결과를 수신하지 못하였습니다.', CDMSI);
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
				//버튼 비활성화 추가 20190227 KHS
				sb_ApproveReq.Enabled   := True;
				medCardNum.Enabled      := True;
				medLimiteDate.Enabled   := True;
				cxCurDRate.Enabled      := True;
				cxCurDecRate.Enabled    := True;
				cxCurTerm.Enabled       := True;
				//버튼 비활성화 추가 20190227 KHS
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
			GMessagebox('결제일련번호가 없으면 승인취소를 할 수 없습니다.', CDMSI);
			Exit;
		end;
		if Length(lblTranNo.Caption) < 1 then
		begin
			GMessagebox('거래번호가 없으면 승인취소를 할 수 없습니다.', CDMSI);
			Exit;
		end;
	end	else
	if (Card_Gubun = 0) or (Card_Gubun = 10) then
	begin
		if Length(lblPaySeq_Cash.Caption) < 1 then
		begin
			GMessagebox('결제일련번호가 없으면 승인취소를 할 수 없습니다.', CDMSI);
			Exit;
		end;
		if Length(lblTranNo_Cash.Caption) < 1 then
		begin
			GMessagebox('거래번호가 없으면 승인취소를 할 수 없습니다.', CDMSI);
			Exit;
		end;
	end	else
	if Card_Gubun = 2 then
	begin
		if Length(lblPaySeq_Coupon.Caption) < 1 then
		begin
			GMessagebox('쿠폰일련번호가 없으면 승인취소를 할 수 없습니다.', CDMSI);
			Exit;
		end;

    if Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Hint = '2' then
    begin
			GMessagebox('오더 완료 상태에서는 쿠폰 취소를 할수 없습니다.' + CRLF +
                  '오더 취소 후 쿠폰 취소 바랍니다.', CDMSI);
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
    // 카드결제 승인완료 결과를 접수창에 넘기고 닫기.
    if Length(lcPaySeq) > 1 then
    begin
			if Card_Gubun = 1 then
      begin
        Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := lcPaySeq;   // 결제일련번호
        Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := lcTranNo;   // 거래번호
				Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDRate.Text + '|' + cxCurDecRate.Text + '|' + cxCurTerm.Text + '|' + lblCardStatus.Caption + '|' + medCardNum.Text + '|' + medLimiteDate.text
			end else
      if Card_Gubun = 0 then
      begin
        Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := lcPaySeq;   // 결제일련번호
        Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := lcTranNo;   // 거래번호
				Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDecRate_Cash.Text + '|' + lblCardStatus_Cash.Caption + '|' + medtCashCardNum.Text;  // 결제관련 정보 저장.
      end else
      if Card_Gubun = 2 then
      begin
        Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := lcPaySeq;   // 결제일련번호
        Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := lcTranNo;   // 거래번호
        if ( lblCouponStatus.Caption <> '' ) And ( lblCouponStatus.Caption <> '인증완료' ) then
        begin
		  		Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDecRate_Coupon.Text + '|' + cxCurDec_Coupon1.Text + '|' +
                                                           lblCouponStatus.Caption + '|' + medtCouponNum.Text;  // 결제관련 정보 저장.

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

        // 접수시 인증만 하고 종료 시에는 쿠폰 일련 번호를 저장하지 않는다.
        if lblCouponStatus.Caption = '인증완료' then
        begin
      		Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := '';   // 결제일련번호
      		Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := '';   // 거래번호
        end;
      end else
      if Card_Gubun = 11 then
      begin
        Frm_CUT1.BBINCardPayInfo  := lcPaySeq;   // 결제일련번호
        Frm_CUT1.BBINCardTranNo   := lcTranNo;   // 거래번호
        Frm_CUT1.lb_CalInfo4.caption :=  '카드';
        Frm_CUT1.lb_CalInfo5.caption :=  lcPaySeq;
        Param := '';
        Param := Frm_CUT1.ABubinParam + '│' + lcPaySeq + '│' + '1';
        if not RequestBase(GetCallable06('SET_BGROUP_PAY_SEQ', 'MNG_BGROUP.SET_BGROUP_PAY_SEQ', En_Coding(Param)), XmlData, ErrCode, ErrMsg) then
        begin
          GMessagebox(Format('법인정산 카드결제정보 업데이트 중 에러발생.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
          Exit;
        end;
      end else
      if Card_Gubun = 10 then
      begin
        Frm_CUT1.BBINCardPayInfo  := lcPaySeq;   // 결제일련번호
        Frm_CUT1.BBINCardTranNo   := lcTranNo;   // 거래번호
        Frm_CUT1.lb_CalInfo4.caption :=  '현금';
        Frm_CUT1.lb_CalInfo5.caption :=  lcPaySeq;
        Param := '';
        Param := Frm_CUT1.ABubinParam + '│' + lcPaySeq + '│' + '0';
        if not RequestBase(GetCallable06('SET_BGROUP_PAY_SEQ', 'MNG_BGROUP.SET_BGROUP_PAY_SEQ', En_Coding(Param)), XmlData, ErrCode, ErrMsg) then
        begin
          GMessagebox(Format('법인정산 현금결제정보 업데이트 중 에러발생.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
          Exit;
        end;
      end;
		end;

    // 창 닫기.
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

  // 결제금액에 부가세 적용 여부.
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

// 카드 결제 관련 서버 결과 회신 처리 함.
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
						AMsg := '(완료)결제일련번호: ' + lcPaySeq + '       (완료)거래번호: ' + lcTranNo + #13#10 + '결과: ' + sTm;
          end else
          begin
						AMsg := sTm;
          end;

          // 접수창 메모1에 승인카드명 표시
          try
            if chkConfigCardset.Checked then
            begin
              // 기존 카드 승인 내역이 있으면 삭제 후 표시
              sBigo := Frm_Main.Frm_JON01N[lcJON_IDX].meoBigo.Text;
              iP1  := Pos  ('[', sBigo);
              iP2  := PosEx(']', sBigo, iP1 + 1);
              sCardNm := Copy(sBigo, iP1, (iP2 - (iP1-1)) );
              if Pos('카드', sCardNm) > 0 then
                Frm_Main.Frm_JON01N[lcJON_IDX].meoBigo.Text := StringReplace(sBigo, sCardNm, '', [rfReplaceAll]);

              // --------------------------------------------------
              iP1  := Pos  (',', sTm);
              sCardNm := Copy(sTm, 1, iP1-1);
              sCardNm := StringReplace(sCardNm, '카드종류:' , '', [rfreplaceall]);
              if Pos('카드', sCardNm) > 0 then
                Frm_Main.Frm_JON01N[lcJON_IDX].meoBigo.Text := '[' + sCardNm + '승인]' + Frm_Main.Frm_JON01N[lcJON_IDX].meoBigo.Text;
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
            // 승인 실패를 해도 카드일련번호가 넘어오는 경우가 있는데,, 이럴땐 이 일련번호로 재승인 요청시 서버에 넘겨줘야 함.
            lst_Node := xdom.documentElement.selectNodes('/cdms/Service/CardPay/Data');
            if Assigned(lst_Node.item[0].attributes.getNamedItem('PaySeq')) then
              lcPaySeq := lst_Node.item[0].attributes.getNamedItem('PaySeq').Text;
          except
          end;
          AMsg := GetXmlErrorMsg(AXml);
        end;
        if Length(lcPaySeq) > 1 then
        begin
          Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := lcPaySeq;   // 결제일련번호
          Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := lcTranNo;   // 거래번호
					if (Card_Gubun = 1) or (Card_Gubun = 11) then
						Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDRate.Text + '|' + cxCurDecRate.Text + '|' + cxCurTerm.Text + '|' + lblCardStatus.Caption + '|' + medCardNum.Text + '|' + medLimiteDate.text
					else
						Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDecRate_Cash.Text + '|' + lblCardStatus_Cash.Caption + '|' + medtCashCardNum.Text;
				end;                         // 결제관련 정보 저장.
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

          // 접수창 메모1에 승인카드명 삭제
          try
            if chkConfigCardset.Checked then
            begin
{              sTm := Frm_Main.Frm_JON01[lcJON_IDX].meoBigo.Text;
              iP1  := Pos  ('[', sTm);
              iP2  := PosEx(']', sTm, iP1 + 1);
              sCardNm := Copy(sTm, iP1, (iP2 - (iP1-1)) );
              if Pos('카드', sCardNm) > 0 then
                Frm_Main.Frm_JON01[lcJON_IDX].meoBigo.Text := StringReplace(sTm, sCardNm, '', [rfReplaceAll]);
}
              sTm := Frm_Main.Frm_JON01N[lcJON_IDX].meoBigo.Text;
              iP1  := Pos  ('[', sTm);
              iP2  := PosEx(']', sTm, iP1 + 1);
              sCardNm := Copy(sTm, iP1, (iP2 - (iP1-0)) );
              if Pos('카드', sCardNm) > 0 then
                Frm_Main.Frm_JON01N[lcJON_IDX].meoBigo.Text := StringReplace(sTm, sCardNm, sCardNm+'취소', [rfReplaceAll]);
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
						AMsg := '(완료)결제일련번호: ' + lcPaySeq + '       (완료)거래번호: ' + lcTranNo + #13#10 + '결과: ' + sTm;
          end else
          begin
						AMsg := sTm;
          end;

					Result := True;
        end else
        begin
          try
            // 승인 실패를 해도 카드일련번호가 넘어오는 경우가 있는데,, 이럴땐 이 일련번호로 재승인 요청시 서버에 넘겨줘야 함.
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
            Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := lcPaySeq;   // 결제일련번호
            Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := lcTranNo;   // 거래번호
            if Card_Gubun = 1 then
              Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDRate.Text + '|' + cxCurDecRate.Text + '|' + cxCurTerm.Text + '|' + lblCardStatus.Caption + '|' + medCardNum.Text + '|' + medLimiteDate.text
            else
              Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDecRate_Cash.Text + '|' + lblCardStatus_Cash.Caption + '|' + medtCashCardNum.Text;
          end else
          begin
            if Card_Gubun = 11 then
            begin
              Frm_CUT1.BBINCardPayInfo := cxCurDRate.Text + '|' + cxCurDecRate.Text + '|' + cxCurTerm.Text + '|' + lblCardStatus.Caption + '|' + medCardNum.Text + '|' + medLimiteDate.text;
              Frm_CUT1.BBINCardPaySeq  := lcPaySeq;   // 결제일련번호
              Frm_CUT1.BBINCardTranNo  := lcTranNo;   // 거래번호
              Frm_CUT1.lb_CalInfo4.caption :=  '카드';
              Frm_CUT1.lb_CalInfo5.caption :=  lcPaySeq;
            end
            else if Card_Gubun = 10 then
            begin
              Frm_CUT1.BBINCardPayInfo := cxCurDecRate_Cash.Text + '|' + lblCardStatus_Cash.Caption + '|' + medtCashCardNum.Text;
              Frm_CUT1.BBINCardPaySeq  := lcPaySeq;   // 결제일련번호
              Frm_CUT1.BBINCardTranNo  := lcTranNo;   // 거래번호
              Frm_CUT1.lb_CalInfo4.caption :=  '현금';
              Frm_CUT1.lb_CalInfo5.caption :=  lcPaySeq;
            end;

          end;
				end;                         // 결제관련 정보 저장.
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
		lbl20.Caption := '현금영수증 등록을 위한 번호 : 휴대폰번호'
  else
	if rg_charge_ser1.Checked then
	begin
		lbl20.Caption := '지출증빙영수증 등록을 위한 번호 : 사업자등록번호, 현금영수증카드 등'
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
    // 카드결제 승인취소 요청.
		if (Card_Gubun = 1) or (Card_Gubun = 11) then
		begin
			if Length(lcPaySeq) < 1 then
			begin
				GMessagebox('결제일련번호가 없으면 승인취소를 할 수 없습니다.', CDMSI);
				Exit;
			end;
			if Length(lcTranNo) < 1 then
			begin
				GMessagebox('거래번호가 없으면 승인취소를 할 수 없습니다.', CDMSI);
				Exit;
			end;
			if lblCardStatus.Caption = '결제취소' then
			begin
				GMessagebox('"결제취소" 상태 일땐 "승인취소"를 할 수 없습니다.', CDMSI);
				Exit;
			end;

			ls_TxLoad := GTx_UnitXmlLoad('C502.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CARD_APPROVE_CANCEL', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '결제일련번호', lcPaySeq, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '거래번호', lcTranNo, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '취소사유', En_Coding(medCancel.Text), [rfReplaceAll]);
		end	else
    if (Card_Gubun = 0) or (Card_Gubun = 10) then
		begin
			if Length(lcPaySeq) < 1 then
			begin
				GMessagebox('결제일련번호가 없으면 승인취소를 할 수 없습니다.', CDMSI);
				Exit;
			end;

			if lblCardStatus.Caption = '결제취소' then
			begin
				GMessagebox('"결제취소" 상태 일땐 "승인취소"를 할 수 없습니다.', CDMSI);
				Exit;
			end;

			ls_TxLoad := GTx_UnitXmlLoad('C504.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CARD_APPROVE_CANCEL', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '결제일련번호', lcPaySeq, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '취소사유', En_Coding(medCancel.Text), [rfReplaceAll]);
		end	else
    if Card_Gubun = 2 then
		begin
			if Length(lcPaySeq) < 1 then
			begin
				GMessagebox('쿠폰일련번호가 없으면 승인취소를 할 수 없습니다.', CDMSI);
				Exit;
			end;

			if lblCouponStatus.Caption = '승인취소' then
			begin
				GMessagebox('"승인취소" 상태 일땐 "승인취소"를 할 수 없습니다.', CDMSI);
				Exit;
			end;

      if cxCurDec_Coupon.Value > cxCurDecRate_Coupon.Value then
        sUseAmt := cxCurDecRate_Coupon.Text
      else
        sUseAmt := cxCurDec_Coupon.Text;

      sDlg := Format(' 쿠폰 취소를 하게 되면 아래와 같이 처리 됩니다. ' + CRLF + CRLF +
                     ' 쿠폰 사용 금액 : %s 원 -> 0 원 (접수/대기시에만) ' + CRLF +
                     ' 쿠폰 사용 여부 :  쿠폰사용  -> 사용취소 ' + CRLF +
                     ' 결재 방식 변경 : 후불(마일) -> 현금 ' + CRLF + CRLF +
                     ' 그래도 쿠폰 사용 취소를 하시겠습니까? ', [sUseAmt]);

      if Application.MessageBox(PChar(sDlg), CDMSI, MB_YESNO +
        MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
      begin
        Exit;
      end;

			ls_TxLoad := GTx_UnitXmlLoad('C703.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'COUPON_APPROVE_CANCEL', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '쿠폰요청번호', lcPaySeq, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '취소사유', En_Coding(medCancel.Text), [rfReplaceAll]);
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
							lblCardStatus.Caption     := '결제취소';
							Application.ProcessMessages;

							if GT_USERIF.HD <> 'A2309' then //[하나]한우리콜센타 는 기사입금액 변경안되도록 함. 20170331 KHS
							begin
                //입금없을일 경우에는 기사송금액 변경안함 20180111KHS . 정회귀팀장과 협의
								if Frm_Main.Frm_JON01N[lcJON_IDX].cbbPostTime.Text <> POST_TIME_NOPAY then
                begin
  								//카드취소 시 기사입금액 오더요금으로 변경. 20160823KHS
	  							Frm_Main.Frm_JON01N[lcJON_IDX].edtPostPay.Value := Frm_Main.Frm_JON01N[lcJON_IDX].curRate.Value;
                end;
							end;
							Frm_Main.Frm_JON01N[lcJON_IDX].gCardStatus := lblCardStatus.Caption;
							GMessagebox(Msg, CDMSI);
							// 버튼 처리.
						end	else
						if (Card_Gubun = 0) or (Card_Gubun = 10) then
						begin
  						lbResultMsg.Caption := Msg;
							lblCardStatus_Cash.Caption := '증빙취소';
							medtCashCardNum.Enabled := True;
							edt_CustTel.Visible     := False;
							btn_CashSMS.Enabled     := False;
							Application.ProcessMessages;
							GMessagebox(Msg, CDMSI);
						end	else
						if Card_Gubun = 2 then
						begin
							lblCouponStatus.Caption     := '승인취소';
							Application.ProcessMessages;
              sb_ApproveRed.Enabled := True;
              medtCouponNum.Enabled := True;
							GMessagebox(Msg, CDMSI);
              sb_Exit.Click;
              Frm_Main.Frm_JON01N[lcJON_IDX].cbbPayMethod.ItemIndex := 0; // 현금결제 처리
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
          GMessagebox('[Error]서버에서 결과를 수신하지 못하였습니다.', CDMSI);
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
		Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := lcPaySeq;   // 결제일련번호
		Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := lcTranNo;   // 거래번호

		if (Card_Gubun = 1) or (Card_Gubun = 11) then
			Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDRate.Text + '|' + cxCurDecRate.Text + '|' + cxCurTerm.Text + '|' + lblCardStatus.Caption + '|' + medCardNum.Text + '|' + medLimiteDate.text
    else
    if (Card_Gubun = 0) or (Card_Gubun = 10) then
			Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDecRate_Cash.Text + '|' + lblCardStatus_Cash.Caption + '|' + medtCashCardNum.Text
    else
    if Card_Gubun = 2 then
    begin
      if ( lblCouponStatus.Caption <> '' ) And ( lblCouponStatus.Caption <> '인증완료' ) then
      begin
  			Frm_Main.Frm_JON01N[lcJON_IDX].locCardPayInfo := cxCurDecRate_Coupon.Text + '|' + cxCurDec_Coupon1.Text + '|' +
                                                        lblCouponStatus.Caption + '|' + medtCouponNum.Text;  // 결제관련 정보 저장.
//        Frm_Main.Frm_JON01[lcJON_IDX].edtPostPay.Value := cxCurDec_Coupon1.Value;
      end;

      // 접수시 인증만 하고 종료 시에는 쿠폰 일련 번호를 저장하지 않는다.
      if lblCouponStatus.Caption = '인증완료' then
      begin
    		Frm_Main.Frm_JON01N[lcJON_IDX].locCardPaySeq  := '';   // 결제일련번호
    		Frm_Main.Frm_JON01N[lcJON_IDX].locCardTranNo  := '';   // 거래번호
      end;
    end;
	end;                         // 결제관련 정보 저장.
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
		//지사코드│쿠폰번호│고객seq
		sTmp  := StringReplace(Trim(medtCouponNum.Text),'-','',[rfReplaceAll]); 
		Param := lcBRNO + '│' + sTmp + '│' + lcCustSeq;                                   

		if not RequestBase(GetCallable06('SET_SELF_COUPON_USE', 'SELF_COUPON.SET_SELF_COUPON_USE', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('자율수수료설정 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end else
		begin
			lbResultMsg.Caption := '사용하신 쿠폰[' + cxCurDec_Coupon.Text + '원]이' +#13#10
													 + '마일리지로 적립되었습니다';

			iprizeMlg := StrToIntDef(ReplaceAll(Frm_Main.Frm_JON01N[lcJON_IDX].lblCuMile.Caption, ',', ''), 0);
			iCurMlg := iprizeMlg + StrToIntDef(ReplaceAll(cxCurDec_Coupon.Text, ',', ''), 0);
			iPrizeCnt := StrToIntDef(Frm_Main.Frm_JON01N[lcJON_IDX].lblCuMileCnt.Caption, 0) + 1;

			Frm_Main.Frm_JON01N[lcJON_IDX].lblCuMile.Caption := FormatFloat('#,##0', iCurMlg);
			Frm_Main.Frm_JON01N[lcJON_IDX].lblCuMileCnt.Caption := IntToStr(iPrizeCnt);

      // 마일리지는 한도내에서 적용
			iPrice := Frm_Main.Frm_JON01N[lcJON_IDX].curRate.Value;
			iUserMile := StrToIntDef(StringReplace(Frm_Main.Frm_JON01N[lcJON_IDX].lblCuMile.Caption,',','',[rfReplaceAll]), 0)
								+ StrToIntDef(StringReplace(Frm_Main.Frm_JON01N[lcJON_IDX].lblMoCuMile.Caption,',','',[rfReplaceAll]), 0);

			iCoupon := StrToIntDef(RemoveComma(Frm_Main.Frm_JON01N[lcJON_IDX].edtPostPay.Hint), 0);  // 20130603  LYB  쿠폰결

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
    GMessagebox('[카드번호 입력오류]'  + #13#10 + '카드번호를 확인해주세요.', CDMSI);
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

		sMsg := '선택한 카드정보를 삭제하시겠습니까?.';
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

  // 환경설정 판넬 오픈.
	pnConfigSet.Visible := True;
end;

procedure TFrm_JON34.cxConfigSaveClick(Sender: TObject);
Var iVatG : Integer;
begin
	if (rbConfigVATset2.Checked) and (StrToFloatDef(cxCurVATvalue.Text, 0.0) < 1) then
	begin
		GMessagebox('부가세 적용율(%)은 최소 1 % 이상 입력 해야 합니다.', CDMSI);
    cxCurVATvalue.SetFocus;
    Exit;
  end;

  // 설정 파일에 저장.
  if rbConfigVATset1.Checked then iVatG := 0 else
  if rbConfigVATset2.Checked then iVatG := 1 else
  if rbConfigVATset3.Checked then iVatG := 2;

  GS_EnvFile.WriteInteger('CARDINFOSET', 'CARD_VAT_YN', iVatG);
	GS_EnvFile.WriteString('CARDINFOSET', 'CARD_VAT_VALUE', cxCurVATvalue.Text);
	GS_EnvFile.WriteBool('CARDINFOSET', 'CARD_MEMO_YN', chkConfigCardset.Checked);

  // 환결설정 판넬 닫기.
  pnConfigSet.Visible := False;
end;

procedure TFrm_JON34.cxCurDRatePropertiesChange(Sender: TObject);
begin
	if rbConfigVATset1.Checked then
		cxCurDecRate.Value := cxCurDRate.Value
  else
  if rbConfigVATset2.Checked then
    // 결제요금.  설정된 부가세 적용.
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

// 카드 결제 정보를 조회 한다.
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
          // KCP 카드 결제 상세 내역 조회.(최종 결제 정보:접수번호 하나에 여러건 결제시,,)
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          ls_Rcrd := TStringList.Create;
          try
            for I := 0 to lst_Result.length - 1 do
            begin
              GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

              lcPaySeq                  := ls_Rcrd[0];      // 카드결제일련번호 추가. 2011-10-20
              lblPaySeq.Caption         := lcPaySeq;
              cxCurDecRate.Text         := ls_Rcrd[1];      // 카드결제금액 추가. 2011-10-20
              lblCardStatus.Caption     := ls_Rcrd[2];      // 결제상태.
              lblTranNo.Caption         := ls_Rcrd[3];      // 거래번호.
							lcTranNo                  := ls_Rcrd[3];
							lbResultMsg.Caption       := '처리일시: ' + ls_Rcrd[6] + '     승인번호: ' + ls_Rcrd[4];
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '처리자정보: ' + ls_Rcrd[7] + '/' + ls_Rcrd[8] + '     상태: ' + ls_Rcrd[2];
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '비고: ' + ls_Rcrd[5];
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '취소사유: ' + ls_Rcrd[9];
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
          // KCP 카드 결제 상세 내역 조회.(최종 결제 정보:접수번호 하나에 여러건 결제시,,)
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
          try
            for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

							lcPaySeq                  := ls_Rcrd[0];      // 현금영수증결제일련번호 추가. 2013-01-31
							lblPaySeq_Cash.Caption    := lcPaySeq;
							cxCurDecRate_Cash.Text    := ls_Rcrd[1];      // 카드결제금액 추가. 2011-10-20
							lblCardStatus_Cash.Caption:= ls_Rcrd[2];      // 결제상태.
							lblTranNo_Cash.Caption    := ls_Rcrd[3];      // 거래번호.
							lcTranNo                  := ls_Rcrd[3];
							lbResultMsg.Caption       := '처리일시: ' + ls_Rcrd[6] + '     승인번호: ' + ls_Rcrd[4];      // 처리일시.
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '처리자정보: ' + ls_Rcrd[7] + '/' + ls_Rcrd[8] + '     상태: ' + ls_Rcrd[2];// 처리자 정보.
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '비고: ' + ls_Rcrd[5];            // 비고
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '취소사유: ' + ls_Rcrd[9];        // 취소사유
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
          // 모바일 쿠폰 결제 상세 내역 조회.(최종 결제 정보:접수번호 하나에 여러건 결제시,,)
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
          try
            for I := 0 to lst_Result.length - 1 do
						begin
              // 186│2013-06-25│sntest│콜마너│승인완료││0│0│0││││
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);


							lcPaySeq                  := ls_Rcrd[0];      // 쿠폰요청번호 20130619  LYB
							lblPaySeq_Coupon.Caption  := lcPaySeq;

              if ls_Rcrd[4] <> '인증완료' then
              begin
                medtCouponNum.Text         := ls_Rcrd[13];                       // 쿠폰번호. 20130614
                cxCurDec_Coupon.Value      := StrToFloatDef(ls_Rcrd[5], 0);      // 쿠폰금액 추가. 20130614
	  						cxCurDec_Coupon1.Value     := StrToFloatDef(ls_Rcrd[6], 0);      // 쿠폰결재금액 추가. 20130614                
				  			lblCouponStatus.Caption   := ls_Rcrd[4];      // 결제상태.
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

              if ls_Rcrd[4] <> '인증완료' then
              begin
  							lbResultMsg.Caption       := '처리일시: ' + ls_Rcrd[1] + '     승인번호: ' + ls_Rcrd[0];      // 처리일시.
	  						lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '처리자정보: ' + ls_Rcrd[2] + '/' + ls_Rcrd[3] + '     상태: ' + ls_Rcrd[4];// 처리자 정보.
		  					lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '비고: ' + ls_Rcrd[5];            // 비고
			  				lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '취소사유: ' + ls_Rcrd[12];        // 취소사유
                lbResultMsg.Refresh;
              end;
						end;
					finally
						ls_Rcrd.Free;
					end;
				end	else
				if ls_ClientKey = 'GET_BGROUP_CARD_PAY_INFO' then
        begin
          // KCP 카드 결제 상세 내역 조회.(최종 결제 정보:접수번호 하나에 여러건 결제시,,)
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          ls_Rcrd := TStringList.Create;
          try
            for I := 0 to lst_Result.length - 1 do
            begin
              GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

              lcPaySeq                  := ls_Rcrd[0];      // 카드결제일련번호 추가. 2011-10-20
              lblPaySeq.Caption         := lcPaySeq;
              cxCurDecRate.Text         := ls_Rcrd[1];      // 카드결제금액 추가. 2011-10-20
              lblCardStatus.Caption     := ls_Rcrd[2];      // 결제상태.
              lblTranNo.Caption         := ls_Rcrd[3];      // 거래번호.
              lcTranNo                  := ls_Rcrd[3];
							lbResultMsg.Caption       := '처리일시: ' + ls_Rcrd[6] + '     승인번호: ' + ls_Rcrd[4];
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '처리자정보: ' + ls_Rcrd[7] + '/' + ls_Rcrd[8] + '     상태: ' + ls_Rcrd[2];
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '비고: ' + ls_Rcrd[5];
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '취소사유: ' + ls_Rcrd[9];
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
          // KCP 카드 결제 상세 내역 조회.(최종 결제 정보:접수번호 하나에 여러건 결제시,,)
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
          try
            for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

							lcPaySeq                  := ls_Rcrd[0];      // 현금영수증결제일련번호 추가. 2013-01-31
							lblPaySeq_Cash.Caption    := lcPaySeq;
							cxCurDecRate_Cash.Text    := ls_Rcrd[1];      // 카드결제금액 추가. 2011-10-20
							lblCardStatus_Cash.Caption:= ls_Rcrd[2];      // 결제상태.
							lblTranNo_Cash.Caption    := ls_Rcrd[3];      // 거래번호.
							lcTranNo                  := ls_Rcrd[3];
							lbResultMsg.Caption       := '처리일시: ' + ls_Rcrd[6] + '     승인번호: ' + ls_Rcrd[4];      // 처리일시.
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '처리자정보: ' + ls_Rcrd[7] + '/' + ls_Rcrd[8] + '     상태: ' + ls_Rcrd[2];// 처리자 정보.
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '비고: ' + ls_Rcrd[5];            // 비고
							lbResultMsg.Caption       := lbResultMsg.Caption + #13#10 + '취소사유: ' + ls_Rcrd[9];        // 취소사유
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
					GMessagebox('현금(지출증빙)영수증 발급 문자발송 완료', CDMSI);
				end
				else
				if ls_ClientKey = 'JON34CARD' then
				begin
					GMessagebox('카드결제영수증 문자발송 완료', CDMSI);
				end;

			end else
			begin
        if ls_ClientKey = 'SET_BGROUP_PAY_SEQ' then
        begin
  				ErrDesc := GetXmlErrorMsg(ls_rxxml) + '법인월정산 내역 기록 오류';
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
		btn_Billkey.Caption := '카드관리열기'; 
	end else 
	begin
		pnl_BillKeyMng.Visible := True;
		proc_BillKeyList;
		btn_Billkey.Caption := '카드관리닫기'; 
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
				GMessagebox('SMS 수신번호 확인하세요', CDMSI);
				edt_CustTel.Setfocus;
				exit;
			end;
			if length(sSmsTel) > 11 then 
			begin
				GMessagebox('SMS 수신번호 확인하세요', CDMSI);
				edt_CustTel.Setfocus;
				exit;
			end;
			if (copy(sSmsTel, 1,3) <> '011') and (copy(sSmsTel, 1,3) <> '010') then 
			begin
				GMessagebox('SMS 수신번호 확인하세요', CDMSI);
				edt_CustTel.Setfocus;
				exit;
			end
		end;
//		ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString', En_Coding(medtCashCardNum.text), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString', En_Coding(sSmsTel), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString', En_Coding(lcMainNum), [rfReplaceAll]);    //대표번호
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
	
	sTmp := '선택한 카드정보를 삭제하시겠습니까?.';
						
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
    ProCardInfoSelect('' + '│' + lcPaySeq)   // 카드결제 정보를 조회 한다.
  else //법인월정산
    ProCardInfoSelect(lcPaySeq);   // 카드결제 정보를 조회 한다.
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
		ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString', En_Coding(lcMainNum), [rfReplaceAll]);      //대표번호
		ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString', En_Coding(lcPaySeq), [rfReplaceAll]);      // 결제일련번호
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
		if btn_Coupon.Hint = 'y' then //쿠폰 조회
		begin
			slList := TStringList.Create;
			Try
				sTmp := StringReplace(Trim(medtCouponNum.Text),'-','',[rfReplaceAll]); 
				Param := lcBRNO + '│' + sTmp;
				if not RequestBasePaging(GetSEL06('GET_SELF_COUPON', 'SELF_COUPON.GET_SELF_COUPON', '1', Param), slList, ErrCode, ErrMsg) then
				begin
					GMessagebox(Format('자체발행쿠폰 내역조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
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
									GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									//사용여부{x:미사용, y:사용, n:사용취소}│쿠폰명│쿠폰금액│발행일(YYYYMMDD)│만료일(YYYYMMDD
									cxCurDec_Coupon.value := StrToIntDef(ls_Rcrd[2],0);
									sTmp := ls_Rcrd[1];
									if ls_Rcrd[0] = 'x' then sTmp := sTmp + ' : 사용가능쿠폰' else
									if ls_Rcrd[0] = 'y' then sTmp := sTmp + ' : 사용불가쿠폰' else
									if ls_Rcrd[0] = 'n' then sTmp := sTmp + ' : 사용가능쿠폰';

									if (Trim(ls_Rcrd[4]) <> '') and (ls_Rcrd[0] <> 'y') then
										sTmp := sTmp + ' [만료일:' + GetStrToDateTimeGStr(ls_Rcrd[4], 4) + ']';
									
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
				GMessagebox('쿠폰번호를 입력 해주세요!', CDMSI);
				medtCouponNum.SetFocus;
				Exit;
			end;

			ls_TxLoad := GTx_UnitXmlLoad('C701.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'COUPON_APPROVE_RED', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '고객일련번호', lcCustSeq, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, '쿠폰번호', medtCouponNum.Text, [rfReplaceAll]);
			if (Pos('수정', Frm_Main.Frm_JON01N[lcJON_IDX].Caption) = 0 ) and (Pos('앱접수', Frm_Main.Frm_JON01N[lcJON_IDX].Caption) = 0 ) then
				ls_TxLoad := StringReplace(ls_TxLoad, '접수번호', '', [rfReplaceAll])
			else
				ls_TxLoad := StringReplace(ls_TxLoad, '접수번호', Frm_Main.Frm_JON01N[lcJON_IDX].cxtJoinNum.Text, [rfReplaceAll]);

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
									lblCouponStatus.Caption     := '인증완료';
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
						GMessagebox('[Error]서버에서 결과를 수신하지 못하였습니다.', CDMSI);
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
  
  if lblCouponStatus.Caption = '승인완료' then
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
		Param := Param + '│' + lcCustTel;


		Screen.Cursor := crHourGlass;
		btn_Billkey.Enabled := False;
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_BILLKEY_LIST', 'MNG.GET_BILLKEY_LIST', '10', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('등록카드 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
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
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

									if gBillKeySeq.IndexOf(ls_Rcrd[0]) > -1 then Continue;
									
									iRow := cxGridBillKey.DataController.AppendRecord; // 1 Record 추가
									//예) 1,[비씨]5612
									cxGridBillKey.DataController.Values[iRow, 0] := '';               //대표카드
									cxGridBillKey.DataController.Values[iRow, 1] := ls_Rcrd[1] + ' ' + ls_Rcrd[2];       //카드사명 + 마지막4자리
									cxGridBillKey.DataController.Values[iRow, 2] := '';               //삭제버튼
									cxGridBillKey.DataController.Values[iRow, 3] := ls_Rcrd[1];       //카드사
									cxGridBillKey.DataController.Values[iRow, 4] := ls_Rcrd[0];       //BillSeq

									gBillKeySeq.Add(ls_Rcrd[0]); //BillSeq
									gBillKeyCard.Add(ls_Rcrd[1]); //카드사
									gBillKeyCardNum.Add(ls_Rcrd[2]); //마지막4자리
								end;
							finally
								ls_Rcrd.Free;
							end;
							cxGridBillKey.EndUpdate;
	
							cb_BillKey.Properties.items.clear;
							cb_BillKey.Properties.items.add('카드 정보 직접 입력');
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
									if (Pos('수정', Frm_Main.Frm_JON01N[lcJON_IDX].Caption) > 0 ) or (Pos('앱접수', Frm_Main.Frm_JON01N[lcJON_IDX].Caption) > 0 ) then
									begin
										//카드번호 입력이 가능한상태(승인취소 등)는 자동선택
										if medCardNum.Enabled then cb_BillKey.ItemIndex := 1 else cb_BillKey.ItemIndex := 0;
									end
									else
										cb_BillKey.ItemIndex := 1;

								end else cb_BillKey.ItemIndex := 0;
							end;       
						end else
						begin
							cb_BillKey.Properties.items.clear;
							cb_BillKey.Properties.items.add('카드 정보 직접 입력');
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
						GMessagebox('선택하신 카드 정보가 삭제되었습니다.', CDMSI);
					end else
						GMessagebox(Format('[%d] %s', [ErrCode, '카드정보 삭제 실패']), CDMSE);
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
    Param := sBrNo + '│' + FloatToStr(iAmt);
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

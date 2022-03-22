unit xe_CMP01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Imm,
  Dialogs, MSXML2_TLB, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, StrUtils,
  Vcl.Menus, cxControls, cxContainer, cxEdit, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxCurrencyEdit, Vcl.ExtCtrls, cxGroupBox, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMemo, Vcl.StdCtrls, cxRadioGroup, cxMaskEdit,
  cxDropDownEdit, cxTextEdit, cxPC, cxButtons, dxBarBuiltInMenu, dxSkinsCore,
  dxSkinscxPCPainter, dxGDIPlusClasses, cxImage,
  cxSpinEdit, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TBranchBase = record
    head_no,
    head_name,
		no,
    use,
    name,
    area_code,
    master_id,
    master_pw,
    company_no,
    ceo,
    mobile,
    phone,
    fax,
    zipcode,
    address1,
    address2,
		Memo,
    br_jumin_no,
    BrName,
    BrSnum,
    biz_sales_no,
    biz_Name,
    br_biz_tel
     : string;
  end;

  TBranchDetail = record
    cybank,
    cybank_account,
    smsbank,
    smsbank_account, 
    cash,
    callcenter,
    callcenter2,
    callrouting,
    management_fee,
    program_value,
    cybank_yn,
    insurance_yn,
    pn_worker,
    pn_center,
    program_fee_type,
    cms_method,
    cms_type,
    cms_value,
    vphone_yn,
    vphone_wkview,
    main_phone,
    cuinfo_dayopen,
    cuinfo_safe_time,
    route_mgr_wk,
    route_mgr_cu,
		route_mgr_etc,
		kd_share_yn: string;
  end;

  TBranchEtc = record
    share_level,
    lbs_yn,
    match_yn,
    vm_touch,
    cancel_yn,
		order_view,
    max_area,
    order_block,
    sms_deposit,
    sms_price_ad,
    sms_price_real,
		sms_delay,
		card_email,
		BechaCallcenterYn,  
		support_charge_use_yn,
		support_charge1,
		support_charge2,
		support_charge3,
		KaKaoCallByInsure,
    KaKaoCallByInsureAutoApplySec
		: string;
	end;

	TFrm_CMP01 = class(TForm)
    PnlMain: TPanel;
    btnEdit: TcxButton;
    btnCancel: TcxButton;
    cxPageControl1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    lblSelBranch: TcxLabel;
    lbl3: TcxLabel;
    cxtbsht2: TcxTabSheet;
    cxtbsht3: TcxTabSheet;
    lbl4: TcxLabel;
    edtBaseHeadName: TcxTextEdit;
    edtBaseHeadCode: TcxTextEdit;
    lbl8: TcxLabel;
    edtBaseBrName: TcxTextEdit;
    edtBaseBrCode: TcxTextEdit;
    lbl10: TcxLabel;
    cbbBaseServiceArea: TcxComboBox;
    lbl11: TcxLabel;
    edtBaseMID: TcxTextEdit;
    lbl12: TcxLabel;
    edtBaseOwner: TcxTextEdit;
    lbl9: TcxLabel;
    pnl4: TPanel;
    rbBaseBrUseY: TcxRadioButton;
    rbBaseBrUseN: TcxRadioButton;
    lbl13: TcxLabel;
    edtBaseHP: TcxTextEdit;
    cbbBaseHP: TcxComboBox;
    lbl14: TcxLabel;
    edtBasePhone: TcxTextEdit;
    lb_BaseSsn: TcxLabel;
    edtBaseSsn: TcxTextEdit;
    lbl16: TcxLabel;
    edtBaseFax: TcxTextEdit;
    lbl17: TcxLabel;
    edtBaseAddr: TcxTextEdit;
    btnBaseAddr: TcxButton;
    lbl18: TcxLabel;
    edtBaseAddrDetail: TcxTextEdit;
    lbl5: TcxLabel;
    mmoBaseMemo: TcxMemo;
    lbl6: TcxLabel;
    edtDtlKeyPhone: TcxTextEdit;
    lbl7: TcxLabel;
    pnl1: TPanel;
    rbDtlWorkVirY: TcxRadioButton;
    rbDtlWorkVirN: TcxRadioButton;
    cbbDtlCallCenter: TcxComboBox;
    btnDtlCall: TcxButton;
    lbl19: TcxLabel;
    cbbDtlPhoneRouting: TcxComboBox;
    btnDtlKeyPhone: TcxButton;
    cxGridKeyPhone: TcxGrid;
    cxViewKeyPhone: TcxGridDBTableView;
    cxColView1Column1: TcxGridDBColumn;
    cxColView1Column2: TcxGridDBColumn;
    cxColView1Column3: TcxGridDBColumn;
    cxColView1Column4: TcxGridDBColumn;
    cxColView1Column5: TcxGridDBColumn;
    cxColView1Column6: TcxGridDBColumn;
    cxLevelKeyPhone: TcxGridLevel;
    lbl21: TcxLabel;
    lbl22: TcxLabel;
    lbl23: TcxLabel;
    lbl24: TcxLabel;
    lbl26: TcxLabel;
    pnlDtlVirUse: TPanel;
    rbDtlVirUseY: TcxRadioButton;
    rbDtlVirUseN: TcxRadioButton;
    lbl27: TcxLabel;
    pnl3: TPanel;
    rbDtlBohumY: TcxRadioButton;
    rbDtlBohumN: TcxRadioButton;
    lbl28: TcxLabel;
    pnlDtlViewHP: TPanel;
    rbDtlViewHPY: TcxRadioButton;
    rbDtlViewHPN: TcxRadioButton;
    lbl29: TcxLabel;
    cbbDtlCnlPntWork: TcxComboBox;
    cbbDtlCnlPntCall: TcxComboBox;
    lbl30: TcxLabel;
    lbl31: TcxLabel;
    pnl6: TPanel;
    rbDtlWorkPayType1: TcxRadioButton;
    rbDtlWorkPayType2: TcxRadioButton;
    rbDtlWorkPayType3: TcxRadioButton;
    rbDtlWorkPayType4: TcxRadioButton;
    rbDtlWorkPayType5: TcxRadioButton;
    lbl32: TcxLabel;
    pnl7: TPanel;
    rbDtlBohumTypeAll: TcxRadioButton;
    rbDtlBohumTypeGroup: TcxRadioButton;
    lblDtlWorkFee: TcxLabel;
    pnlDtlWorkFee: TPanel;
    rbDtlWorkFee1: TcxRadioButton;
    rbDtlWorkFee2: TcxRadioButton;
    rbDtlWorkFee3: TcxRadioButton;
    rbDtlWorkFee6: TcxRadioButton;
    rbDtlWorkFee7: TcxRadioButton;
    rbDtlWorkFee5: TcxRadioButton;
    rbDtlWorkFee8: TcxRadioButton;
    rbDtlWorkFee9: TcxRadioButton;
    btnDtlFeeGroup: TcxButton;
    lblDtlWorkFeeCalc: TcxLabel;
    edtDtlWorkFeeCalc: TcxTextEdit;
    btnDtlWorkFee: TcxButton;
    lbl37: TcxLabel;
    lbl39: TcxLabel;
    pnl10: TPanel;
    rbOrderVirAccountUseY: TcxRadioButton;
    rbOrderVirAccountUseN: TcxRadioButton;
    lbl40: TcxLabel;
    cbbOrderLocationCall: TcxComboBox;
    lbl41: TcxLabel;
    pnl11: TPanel;
    rbOrderLBSUseY: TcxRadioButton;
    rbOrderLBSUseN: TcxRadioButton;
    lbl42: TcxLabel;
    pnl12: TPanel;
    rbOrderOneTouch: TcxRadioButton;
    rbOrderTwoTouch: TcxRadioButton;
    lbl43: TcxLabel;
    pnl13: TPanel;
    rbOrderWorkCnlY: TcxRadioButton;
    rbOrderWorkCnlN: TcxRadioButton;
    lbl45: TcxLabel;
    chkOVStart: TcxCheckBox;
    cbbOVEnd: TcxComboBox;
    cbbOVSymbol: TcxComboBox;
    cbbOVPrice: TcxComboBox;
    lbl46: TcxLabel;
    cbbOVMaxRange: TcxComboBox;
    lbl47: TcxLabel;
    edtOVClosePay: TcxTextEdit;
    lbl49: TcxLabel;
    edtSMSCash: TcxTextEdit;
    edtSMSDelayTime: TcxTextEdit;
    lbl50: TcxLabel;
    lbl51: TcxLabel;
    edtSMSCommercial: TcxTextEdit;
    edtSMSNormal: TcxTextEdit;
    lbl52: TcxLabel;
    cbbDtlCallCenterCode: TcxComboBox;
    rbDtlWorkFee4: TcxRadioButton;
    lbl2: TcxLabel;
    edtBasePwd: TcxTextEdit;
    lbl53: TcxLabel;
    edtBasePwdRe: TcxTextEdit;
    btnBaseMID: TcxButton;
    lblMID: TLabel;
    btnDtlFeeGroupTop: TcxButton;
    btnDtlWorkFeeTop: TcxButton;
    btnDtlKeyPhoneTop: TcxButton;
    edtBaseZipCode: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edtDtlMainPhone: TcxTextEdit;
    chkDtlCuInfoDayOpen: TcxCheckBox;
    edtDtlCuInfoMin: TcxTextEdit;
    cxButton1: TcxButton;
    lblDtlSMSAccount: TcxLabel;
    chkRouteMgrWk: TcxCheckBox;
    chkRouteMgrCu: TcxCheckBox;
    chkRouteMgrEtc: TcxCheckBox;
    cbb_ShareLevel: TcxComboBox;
    btn1: TcxButton;
    PnlTitle: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape5: TShape;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    Shape18: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    cxGroupBox6: TcxGroupBox;
    Shape37: TShape;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label9: TcxLabel;
    Label12: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label13: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Shape54: TShape;
    Shape55: TShape;
    Shape56: TShape;
    Shape57: TShape;
    Shape58: TShape;
    Shape59: TShape;
    Shape60: TShape;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    edtBaseOwnerJumin: TcxTextEdit;
    cxLblActive: TLabel;
    cxButton2: TcxButton;
    PnlSPSet: TPanel;
    Shape65: TShape;
    Shape66: TShape;
    Shape67: TShape;
    Shape68: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    chkTimePaySet: TcxCheckBox;
    cbbPayTime1: TcxComboBox;
    cbbPayTime2: TcxComboBox;
    cbbPayTime3: TcxComboBox;
    cbbPayTime4: TcxComboBox;
    chkOrderUse4: TcxCheckBox;
    chkOrderUse3: TcxCheckBox;
    chkOrderUse2: TcxCheckBox;
    chkOrderUse1: TcxCheckBox;
    cxPayAmt1: TcxCurrencyEdit;
    cxPayAmt2: TcxCurrencyEdit;
    cxPayAmt4: TcxCurrencyEdit;
    cxPayAmt3: TcxCurrencyEdit;
    cxEdtPayMemo1: TcxTextEdit;
    cxEdtPayMemo2: TcxTextEdit;
    cxEdtPayMemo4: TcxTextEdit;
    cxEdtPayMemo3: TcxTextEdit;
    btnSPSetSave: TcxButton;
    Shape69: TShape;
    btnSoNumCheck: TcxButton;
    edtBaseOwnerJumin1: TcxTextEdit;
    cxLabel7: TcxLabel;
    GrpPayTimeUse: TcxGroupBox;
    GrpPayTimeUse1: TcxGroupBox;
    Shape70: TShape;
    Label20: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Shape71: TShape;
    Shape72: TShape;
    Shape73: TShape;
    Shape74: TShape;
    cbbPayTimeA1: TcxComboBox;
    cbbPayTimeA2: TcxComboBox;
    cbbPayTimeA3: TcxComboBox;
    cbbPayTimeA4: TcxComboBox;
    chkOrderUseA1: TcxCheckBox;
    chkOrderUseA2: TcxCheckBox;
    chkOrderUseA3: TcxCheckBox;
    chkOrderUseA4: TcxCheckBox;
    cxEdtPayMemoA1: TcxTextEdit;
    cxEdtPayMemoA2: TcxTextEdit;
    cxEdtPayMemoA3: TcxTextEdit;
    cxEdtPayMemoA4: TcxTextEdit;
    cxPayAmtA1: TcxCurrencyEdit;
    cxPayAmtA2: TcxCurrencyEdit;
    cxPayAmtA3: TcxCurrencyEdit;
    cxPayAmtA4: TcxCurrencyEdit;
    btnSPSetSaveA: TcxButton;
    chkTimePaySet1: TcxCheckBox;
    chkTimePaySet2: TcxCheckBox;
    GrpPayTimeUse2: TcxGroupBox;
    Shape75: TShape;
    Label29: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Shape76: TShape;
    Shape77: TShape;
    Shape78: TShape;
    Shape79: TShape;
    cbbPayTimeB1: TcxComboBox;
    cbbPayTimeB2: TcxComboBox;
    cbbPayTimeB3: TcxComboBox;
    cbbPayTimeB4: TcxComboBox;
    chkOrderUseB1: TcxCheckBox;
    chkOrderUseB2: TcxCheckBox;
    chkOrderUseB3: TcxCheckBox;
    chkOrderUseB4: TcxCheckBox;
    cxEdtPayMemoB1: TcxTextEdit;
    cxEdtPayMemoB2: TcxTextEdit;
    cxEdtPayMemoB3: TcxTextEdit;
    cxEdtPayMemoB4: TcxTextEdit;
    cxPayAmtB1: TcxCurrencyEdit;
    cxPayAmtB2: TcxCurrencyEdit;
    cxPayAmtB3: TcxCurrencyEdit;
    cxPayAmtB4: TcxCurrencyEdit;
    btnSPSetSaveB: TcxButton;
    cbbDtlCallCenterCode2: TcxComboBox;
    cbbDtlCallCenter2: TcxComboBox;
    cxLabel8: TcxLabel;
    Shape80: TShape;
    chkCardMailYn: TcxCheckBox;
    cxLabel9: TcxLabel;
    cxColView1Column7: TcxGridDBColumn;
    Label1: TcxLabel;
    lbl33: TcxLabel;
    lbl38: TcxLabel;
    lbl25: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    Label24: TcxLabel;
    Label25: TcxLabel;
    Label30: TcxLabel;
    Label31: TcxLabel;
    Label32: TcxLabel;
    Label33: TcxLabel;
    Label34: TcxLabel;
    btnGetList: TcxButton;
    Panel1: TPanel;
    Shape82: TShape;
    rbBechaCallCenterY: TcxRadioButton;
    rbBechaCallCenterN: TcxRadioButton;
    cxLabel10: TcxLabel;
    Panel2: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    btnSPSetExit: TcxButton;
    cxLabel11: TcxLabel;
    Panel3: TPanel;
    Shape84: TShape;
    rbKDshareY: TcxRadioButton;
    rbKDshareN: TcxRadioButton;
    pnl_Notice: TPanel;
    Label41: TLabel;
    cxMemo1: TcxMemo;
    cxImage1: TcxImage;
    btnClose: TcxButton;
    btn_KDAgree: TcxButton;
    btn_Cancel: TcxButton;
    pnl_KaKaoInsure: TPanel;
    Shape85: TShape;
    Label39: TLabel;
    img_KDDrive: TcxImage;
    chk_KDAgree: TcxCheckBox;
    pnl_MasterOnly: TPanel;
    curInSureSharePee: TcxSpinEdit;
    Label40: TLabel;
    Label42: TLabel;
    rbDtlWorkPayType6: TcxRadioButton;
    lblSafeTimeHint: TcxLabel;
    cxGroupBox7: TcxGroupBox;
    edt_Kidibizname: TcxTextEdit;
    cxLabel12: TcxLabel;
    edt_Kidibiznum: TcxTextEdit;
    cxLabel13: TcxLabel;
    lbl20: TcxLabel;
    cxGroupBox8: TcxGroupBox;
    chk_CMPSupportUseYN: TcxCheckBox;
    cxLabel14: TcxLabel;
    edt_CMPSupportAMT1: TcxSpinEdit;
    edt_CMPSupportAMT2: TcxSpinEdit;
    cxLabel15: TcxLabel;
    edt_CMPSupportAMT3: TcxSpinEdit;
    cxLabel16: TcxLabel;
    chk_CMPSupportBigo2: TcxCheckBox;
    edt_CMPSupportBigo2: TcxTextEdit;
    pnl_KaKaoCallByInsure: TcxGroupBox;
    chk_KaKaoCallByInsure: TcxCheckBox;
    Image1: TImage;
    edt_KaKaoCallByInsureAutoApplySec: TcxSpinEdit;
    lb_KaKaoCallByInsureAutoApplySec: TcxLabel;
    cb_ddd: TcxComboBox;
    edtBasePhone2: TcxTextEdit;
    edtBasePhone1: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    edt_biz_sales_no: TcxTextEdit;
    chk_BizNumUse: TcxCheckBox;
    edt_biz_Name: TcxTextEdit;
    cxLabel20: TcxLabel;
    Shape1: TShape;
    cxLabel21: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbDtlCallCenterPropertiesChange(Sender: TObject);
    procedure btnBaseAddrClick(Sender: TObject);
    procedure edtBaseHPKeyPress(Sender: TObject; var Key: Char);
    procedure edtBaseHPExit(Sender: TObject);
    procedure cbbDtlCallCenterCodePropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnDtlCallClick(Sender: TObject);
    procedure btnDtlKeyPhoneClick(Sender: TObject);
    procedure btnDtlWorkFeeClick(Sender: TObject);
    procedure btnDtlFeeGroupClick(Sender: TObject);
    procedure edtBaseMIDKeyPress(Sender: TObject; var Key: Char);
    procedure edtBaseMIDEditing(Sender: TObject; var CanEdit: Boolean);
    procedure rbDtlBohumTypeAllClick(Sender: TObject);
    procedure rbDtlBohumTypeGroupClick(Sender: TObject);
    procedure btnBaseMIDClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkDtlCuInfoDayOpenClick(Sender: TObject);
    procedure edtDtlCuInfoMinKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1Click(Sender: TObject);
    procedure rbBaseBrUseYClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnSoNumCheckClick(Sender: TObject);
    procedure edtBaseOwnerJuminKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBaseOwnerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBaseOwnerJuminKeyPress(Sender: TObject; var Key: Char);
    procedure chkTimePaySetClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btnSPSetSaveClick(Sender: TObject);
    procedure cbbPayTime2PropertiesChange(Sender: TObject);
    procedure chkTimePaySet1Click(Sender: TObject);
    procedure chkTimePaySet2Click(Sender: TObject);
    procedure btnSPSetSaveAClick(Sender: TObject);
    procedure btnSPSetSaveBClick(Sender: TObject);
    procedure cbbPayTimeA1PropertiesChange(Sender: TObject);
    procedure cbbPayTimeB1PropertiesChange(Sender: TObject);
    procedure cbbDtlCallCenter2PropertiesChange(Sender: TObject);
    procedure cbbDtlCallCenterCode2PropertiesChange(Sender: TObject);
    procedure edtBaseSsnKeyPress(Sender: TObject; var Key: Char);
    procedure edtSMSDelayTimeKeyPress(Sender: TObject; var Key: Char);
    procedure btnGetListClick(Sender: TObject);
    procedure mmoBaseMemoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBaseBrNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSPSetExitClick(Sender: TObject);
    procedure chkOrderUse1PropertiesChange(Sender: TObject);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chk_KDAgreePropertiesChange(Sender: TObject);
		procedure btn_KDAgreeClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure pnl_NoticeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edt_KidibiznumKeyPress(Sender: TObject; var Key: Char);
    procedure edt_KidibiznameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_CMPSupportAMT1KeyPress(Sender: TObject; var Key: Char);
    procedure cb_dddKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBasePhone1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBasePhone2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chk_BizNumUsePropertiesChange(Sender: TObject);
    procedure edtBasePhoneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_biz_NameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBaseSsnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBaseFaxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_biz_sales_noKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBaseOwnerJumin1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBaseAddrDetailKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FDataChanged: Boolean;

    jCheck : Boolean;

    FBankCodeList: TStringList;
    FServiceAreaList: TStringList;
    FShareLevelList: TStringList;

    FIdChecked: Boolean;
    FBranchNo: string;
    FBranchName: string;

    FRefreshEvent: TNotifyEvent;

    procedure proc_init;
    procedure proc_init_base;
    procedure proc_init_detail;
    procedure proc_init_etc;

    procedure ClearFormAll;
    procedure ClearFormBase;
    procedure ClearFormDetail;
    procedure ClearFormEtc;
    procedure EnableControl;

    // 요청부
    procedure RequestData(AData: string);
    procedure RequestDataSACode; // 지사기본정보 - 서비스지역 목록
    procedure RequestDataCallCenter; // 지사상세정보 - 콜센터 목록
    procedure RequestDataBankCode; // 지사상세정보 - 은행코드 요청
    procedure RequestDataHeadInfo(AHdNo: string);
    procedure RequestDataBranchTel(ABrNo: string);
    procedure RequestDataIdCheck(AID: string);
    procedure RequestDataBranch(ABrNo: string);
    procedure RequestDataSTCode;    //공유레벨 목록

    // 수신부
    procedure ResponseDataBase(ADataStr: WideString); // 처음 데이터를 수신하는 함수
    procedure ResponseDataSA(AXmlStr: WideString); // 지사기본정보 - 서비스지역
    procedure ResponseDataCallCenter(AXmlStr: WideString); // 지사상세정보 - 콜센터
    procedure ResponseDataBankCode(AXmlStr: WideString); // 지사상세정보 - 은행코드조회
    procedure ResponseDataHeadInfo(AXmlStr: WideString); // 지사기본 - 본사명
    procedure ResponseDataBranchTel(AXmlStr: WideString); // 지사상세정보 - 대표번호
    procedure ResponseDataIdCheck(AXmlStr: WideString); // 지사기본정보 - ID체크
    procedure ResponseDataBranchBase(AXmlStr: WideString); // 지사기본정보
    procedure ResponseDataBranchDetail(AXmlStr: WideString); // 지사상세정보
    procedure ResponseDataBranchEtc(AXmlStr: WideString); // 지사기타정보
    procedure ResponseDataST(AXmlStr: WideString);

    function MakeDataBranchBase: TBranchBase;
    function MakeDataBranchDetail: TBranchDetail;
    function MakeDataBranchEtc: TBranchEtc;

    function MakePacketBranchBase(ABrCode, AType, AKey: string; AData: TBranchBase; APacket: string = ''): string;
    function MakePacketBranchDetail(ABrCode, AType, AKey: string; AData: TBranchDetail; APacket: string = ''): string;
    function MakePacketBranchEtc(ABrCode, AType, AKey: string; AData: TBranchEtc; APacket: string = ''): string;

    procedure InsertDataBranch;
		procedure UpdateDataBranch(ABrCode: string);

    procedure ExecuteData(APacket: string);

    function FieldNullCheck(Sender: TObject; AFieldName: string): Boolean;
    function FormFieldCheck(AIndex: Integer): Boolean;

    function GetObjectIndex(ACombo: TcxCombobox; AValue: string): Integer;
    procedure SetOnlyAlphanumeric(aHandle: HWND);
    procedure EditWindowProc(var Message: TMessage);
    procedure proc_KakaoShareAgree;
	public
    { Public declarations }
    rbBaseBrUseY_Chk : Integer;     // 2011.12.26 지사사용유무 수도권만 적용하기위한 체크 값설정 KHS

    property OnRefreshEvent: TNotifyEvent read FRefreshEvent write FRefreshEvent;
    function DataChanged: Boolean;
    procedure SetBranchNo(ANo: string);
  end;

var
  Frm_CMP01: TFrm_CMP01;

implementation

{$R *.dfm}

uses xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_CMP011, xe_CMP012, xe_CMP013, xe_CMP014, xe_CMP015,
  xe_CMP016, Main, xe_Flash, xe_JON057, xe_SearchWord, xe_RoadAddr;

var
  FOldMethod: TWndMethod;

procedure TFrm_CMP01.FormCreate(Sender: TObject);
begin
	if GT_USERIF.ID = 'sntest' then btnGetList.Visible := True;

  btnDtlKeyPhoneTop.Enabled := (TCK_USER_PER.CMP_BrchKeyNum = '1');
  btnDtlKeyPhone.Enabled    := (TCK_USER_PER.CMP_BrchKeyNum = '1');

  btnDtlWorkFeeTop.Enabled  := (TCK_USER_PER.CMP_BrchWkCom = '1');
  btnDtlWorkFee.Enabled     := (TCK_USER_PER.CMP_BrchWkCom = '1');

  btnDtlFeeGroupTop.Enabled := (TCK_USER_PER.CMP_BrchWkPayment = '1');
  btnDtlFeeGroup.Enabled    := (TCK_USER_PER.CMP_BrchWkPayment = '1');

	pnl_KaKaoCallByInsure.Visible := GT_Kakao_CallByInsureFee;

	proc_init;
end;

procedure TFrm_CMP01.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_CMP01.FormDestroy(Sender: TObject);
begin
  if Assigned(FBankCodeList) then
    FBankCodeList.Free;

  if Assigned(FServiceAreaList) then
    FreeAndNil(FServiceAreaList);

  if Assigned(FShareLevelList) then
    FreeAndNil(FShareLevelList);

  Frm_CMP01 := Nil;
end;

procedure TFrm_CMP01.FormShow(Sender: TObject);
begin
  fSetFont(Frm_CMP01, GS_FONTNAME);
  cxPageControl1.ActivePageIndex := 0;
  
	lblSafeTimeHint.Top := 46;
  lblSafeTimeHint.Left := 130;
  lblSafeTimeHint.BringToFront;
  lblSafeTimeHint.Hide;
	cxViewKeyPhone.Columns[6].Visible := gs_CallBellUse;
end;

procedure TFrm_CMP01.pnl_NoticeMouseDown(Sender: TObject; Button: TMouseButton;
	Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(pnl_Notice.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CMP01.proc_init;
var
  Save: Integer;
	sTmp : string;
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

  FDataChanged := False;

	edt_Kidibizname.Text := '';
	edt_Kidibiznum.Text  := '';
	proc_init_base;
	proc_init_detail;
	proc_init_etc;

	// 2011.04.08 수도권만 지사명 변경 못함.
	if (GS_PRJ_AREA = 'S') then	edtBaseBrName.Enabled:=false;
	// 지방은 대전연합 및 청주연합만 처리  20190923 신성현과장님 요청 KHS
	if (GS_PRJ_AREA = 'S') Or
     (IsDaeJeonShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo)) Or
     (GT_USERIF.ShareNo = 'G23') Or
     (GT_USERIF.ShareNo = 'G00') Or
     (GT_USERIF.HD = 'A100') then
	begin
		btn1.Visible := True;
		sTmp := copy(GetPlusCallYN(GT_SEL_BRNO.BRNO),3,1);//'ynyyn'   체크옵션,지사,본사,연합, (가능여부확인)
		if sTmp = 'y' then                                //y(접수창 사용)y(지사)y(본사)y(연합)y(가능여부확인) 플러스콜 사용여부[지사,본사,연합] --> 예) 사용:'yyy' or 미사용:'nyy' (n 1개라도 있으면 미사용)
			btn1.Enabled := True
		else
			btn1.Enabled := False;
	end;

//		if (GT_USERIF.ShareNo <> 'G09') then	    //천안연합제외 정승훈팀장요청 20181101   해제 20181108 신성현차장
	if (GS_PRJ_AREA = 'S') or (GT_KAKAOUse) then
	begin
		pnl_KaKaoInsure.visible := True;	
		self.Height := 805;
		curInSureSharePee.Value := 500;

		pnl_MasterOnly.visible := False;
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' )	 then
			pnl_MasterOnly.visible := True
		else
		if ( GT_USERIF.LV = '60' )	 then	pnl_MasterOnly.visible := True;

		pnl_MasterOnly.visible := False;
	end	else
	begin
		pnl_KaKaoInsure.visible := False;
		self.Height := 741;
	end;
end;

procedure TFrm_CMP01.proc_init_base;
begin
  FIdChecked := False;

  FBankCodeList := TStringList.Create;
  FServiceAreaList := TSTringList.Create;
  FShareLevelList := TStringList.Create;
  FOldMethod := edtBaseMID.WindowProc;
  edtBaseMID.WindowProc := EditWindowProc;

  RequestDataSACode;
  RequestDataSTCode
end;

procedure TFrm_CMP01.proc_init_detail;
var
  I: Integer;
begin
  try
    for I := 0 to cxViewKeyPhone.ColumnCount - 1 do
    begin
      case I of
        2:
          begin
            cxViewKeyPhone.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
            cxViewKeyPhone.Columns[I].Properties := Frm_Main.gCurProperties;
          end;
      else
        cxViewKeyPhone.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
      end;
    end;
  Except
  end;

  // 지방권의 경우 "가상번호사용(미사용)", "기사연락처 보기(보기)" 변경 불가
  if GS_PRJ_AREA = 'O' then
  begin
    rbDtlViewHPY.Checked := True;

    pnlDtlViewHP.Enabled := False;
    rbDtlViewHPY.Enabled := False;
    rbDtlViewHPN.Enabled := False;

//지방일 경우 수정 불가하도록 수정 2011.12.19 KHS
    cbb_ShareLevel.Enabled := False;
    rbOrderVirAccountUseY.Enabled := False;
    rbOrderVirAccountUseN.Enabled := False;
    rbOrderLBSUseY.Enabled := False;
    rbOrderLBSUseN.Enabled := False;
    rbOrderOneTouch.Enabled := False;
    rbOrderTwoTouch.Enabled := False;
    rbOrderWorkCnlY.Enabled := False;
    rbOrderWorkCnlN.Enabled := False;
    edtOVClosePay.Enabled := False;
//지방일 경우 수정 불가하도록 수정 2011.12.19 KHS
  end;

  lblDtlSMSAccount.Visible := False;
  Label10.Visible := False;
  Label11.Visible := False;

  RequestDataCallCenter;
  RequestDataBankCode;
end;

procedure TFrm_CMP01.proc_init_etc;
begin
	cbbPayTime1.Enabled := False; cxEdtPayMemo1.Enabled := False;	cxPayAmt1.Enabled := False;
	cbbPayTime2.Enabled := False; cxEdtPayMemo2.Enabled := False;	cxPayAmt2.Enabled := False;
	cbbPayTime3.Enabled := False; cxEdtPayMemo3.Enabled := False;	cxPayAmt3.Enabled := False;
	cbbPayTime4.Enabled := False; cxEdtPayMemo4.Enabled := False;	cxPayAmt4.Enabled := False;
	cbbPayTimeA1.Enabled := False; cxEdtPayMemoA1.Enabled := False;	cxPayAmtA1.Enabled := False;
	cbbPayTimeA2.Enabled := False; cxEdtPayMemoA2.Enabled := False;	cxPayAmtA2.Enabled := False;
	cbbPayTimeA3.Enabled := False; cxEdtPayMemoA3.Enabled := False;	cxPayAmtA3.Enabled := False;
	cbbPayTimeA4.Enabled := False; cxEdtPayMemoA4.Enabled := False;	cxPayAmtA4.Enabled := False;
	cbbPayTimeB1.Enabled := False; cxEdtPayMemoB1.Enabled := False;	cxPayAmtB1.Enabled := False;
	cbbPayTimeB2.Enabled := False; cxEdtPayMemoB2.Enabled := False;	cxPayAmtB2.Enabled := False;
	cbbPayTimeB3.Enabled := False; cxEdtPayMemoB3.Enabled := False;	cxPayAmtB3.Enabled := False;
	cbbPayTimeB4.Enabled := False; cxEdtPayMemoB4.Enabled := False;	cxPayAmtB4.Enabled := False;
end;

procedure TFrm_CMP01.proc_KakaoShareAgree;
const
	BRANCH_UPDATE_KEY = 'BRIF000U';
var
	PacketStr: string;
	ADetail: TBranchDetail;
begin
	Try
		ADetail := MakeDataBranchDetail;
		PacketStr := MakePacketBranchDetail(FBranchNo, 'Setting', BRANCH_UPDATE_KEY, ADetail);
		ExecuteData(PacketStr);

		if chk_KDAgree.checked then
			ShowMessage('동의 완료되었습니다.') else
			ShowMessage('동의해제 완료되었습니다.');
		
	except
	End;

end;

procedure TFrm_CMP01.SetBranchNo(ANo: string);
var
  LabelColor: TColor;
begin
  FBranchNo := ANo;

  ClearFormAll;

  if FBranchNo <> '' then
  begin
    LabelColor := $00FAE1CD;

    RequestDataBranch(ANo);
    RequestDataBranchTel(ANo);
  end else
  begin
    LabelColor := $00FFBBFF;
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    begin
      edtBaseHeadCode.Text := GT_SEL_BRNO.HDNO;
      RequestDataHeadInfo(GT_SEL_BRNO.HDNO);
    end else
    begin
      edtBaseHeadCode.Text := GT_USERIF.HD;
      RequestDataHeadInfo(GT_USERIF.HD);
    end;
	end;

	edtDtlMainPhone.Enabled := IsUseChangeMainKeynum(ANo);

	lbl11.Style.Color := LabelColor;
  lbl2.Style.Color := LabelColor;
  lbl53.Style.Color := LabelColor;
end;

procedure TFrm_CMP01.btnCancelClick(Sender: TObject);
Var sMsg : String;
begin
  if GS_NICE_CHK then
  begin
    sMsg := '본인인증 후 수정/저장 없이 종료하시겠습니까?';
    if Application.MessageBox(PChar(sMsg), '', MB_YESNO + MB_ICONINFORMATION) = IDNO then Exit;
  end;
	GS_NICE_CHK := False;
  Close;
end;

procedure TFrm_CMP01.btnCloseClick(Sender: TObject);
begin
	pnl_Notice.hide;

	chk_KDAgree.Tag := 99;
	chk_KDAgree.checked := False;
	chk_KDAgree.Tag := 0;
end;

{*==============================================================================
 데이터 요청부
==============================================================================*}
procedure TFrm_CMP01.RequestData(AData: string);
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
				ResponseDataBase(ReceiveStr);
      end;
    end;
  finally
    Frm_Flash.Hide;
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_CMP01.RequestDataSACode;
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_COMMON_CODE, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, ['SA']);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'SACD0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP01.RequestDataSTCode;
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_COMMON_CODE, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, ['ST']);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'STCD0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP01.RequestDataCallCenter;
var
  ls_TxLoad: string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('C053N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRCC0001', [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP01.RequestDataBankCode;
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_COMMON_CODE, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, ['BK']);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BKCD0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP01.RequestDataHeadInfo(AHdNo: string);
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_HEAD_NAME, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [AHdNo]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HDNM0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP01.RequestDataBranchTel(ABrNo: string);
var
	ls_TxLoad: string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('C049N1.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRPN0001', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'SELECT', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ABrNo, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_메세지', '', [rfReplaceAll]);

		RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP01.RequestDataIdCheck(AID: string);
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_MID_CHECK, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [AID]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'MIDC0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    RequestData(ls_TxLoad);
  except
  end;
end;

procedure TFrm_CMP01.RequestDataBranch(ABrNo: string);
var
  ls_TxLoad: string;
begin
  try
		ls_TxLoad := GTx_UnitXmlLoad('C047N2.xml');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRIF000S', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'SELECT', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ABrNo, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_TYPE', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'Memo="VAL_Memo"', 'Memo="VAL_Memo" br_jumin_no="VAL_JUMIN"', [rfReplaceAll]);
    RequestData(ls_TxLoad);
  except
  end;
end;

{*==============================================================================
 데이터 수신부
==============================================================================*}
procedure TFrm_CMP01.ResponseDataBase(ADataStr: WideString);
var
  xdom: msDomDocument;
  XmlData: WideString;
  ErrorCode, ClientKey: string;
begin
	xdom := ComsDomDocument.Create;
  Screen.Cursor := crHourGlass;
  try
    try
      XmlData := ADataStr;
      if not xdom.loadXML(XmlData) then
        Exit;

      ErrorCode := GetXmlErrorCode(XmlData);
      if ('0000' = ErrorCode) then
      begin
        ClientKey := GetXmlClientKey(XmlData);

        if ClientKey = 'SACD0001' then
          ResponseDataSA(XmlData)
        else if ClientKey = 'BRCC0001' then
          ResponseDataCallCenter(XmlData)
        else if ClientKey = 'BKCD0001' then
          ResponseDataBankCode(XmlData)
        else if ClientKey = 'HDNM0001' then
          ResponseDataHeadInfo(XmlData)
				else if ClientKey = 'BRPN0001' then
					ResponseDataBranchTel(XmlData)
        else if ClientKey = 'MIDC0001' then
          ResponseDataIdCheck(XmlData)
				else if ClientKey = 'BRIF000S' then
        begin
          ResponseDataBranchBase(XmlData);
          ResponseDataBranchDetail(XmlData);
					ResponseDataBranchEtc(XmlData);
        end
        else if ClientKey = 'STCD0001' then
        begin
          ResponseDataST(XmlData)
        end
				else if ClientKey = 'BRIF000U' then
        begin
          FDataChanged := True;
//          ShowMessage('수정되었습니다.')
        end
        else if ClientKey = 'BRIF000I' then
        begin
          FDataChanged := True;
          ShowMessage('저장되었습니다.')
        end;
      end
      else
      begin
				GMessagebox(MSG012 + CRLF + ErrorCode, CDMSE);
      end;
    except

    end;
  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
  end;
end;

procedure TFrm_CMP01.ResponseDataSA(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I: Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      cbbBaseServiceArea.Properties.Items.Clear;
      FServiceAreaList.Clear;
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

          if cbbBaseServiceArea.Properties.Items.IndexOf(ls_Rcrd[2]) < 0 then
          begin
            cbbBaseServiceArea.Properties.Items.Add(ls_Rcrd[2]);
            FServiceAreaList.Add(ls_Rcrd[3]);
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

procedure TFrm_CMP01.ResponseDataST(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I: Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      cbb_ShareLevel.Properties.Items.Clear;
      FShareLevelList.Clear;
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

          if cbb_ShareLevel.Properties.Items.IndexOf(ls_Rcrd[1]) < 0 then
          begin
            cbb_ShareLevel.Properties.Items.Add(ls_Rcrd[1]);
            FShareLevelList.Add(ls_Rcrd[0]);
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

procedure TFrm_CMP01.ResponseDataCallCenter(AXmlStr: WideString);
var
  I: Integer;
  xdom: msDomDocument;
  ResultList: IXMLDomNodeList;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    ResultList := xdom.documentElement.selectNodes('/cdms/Service/CallCenter/Item');

    cbbDtlCallCenter.Properties.Items.Clear;

    for I := 0 to ResultList.length - 1 do
    begin
      cbbDtlCallCenter.Properties.Items.Add(ResultList[I].attributes.getNamedItem('name').text);
      cbbDtlCallCenterCode.Properties.Items.Add(ResultList[I].attributes.getNamedItem('no').text);

      cbbDtlCallCenter2.Properties.Items.Add(ResultList[I].attributes.getNamedItem('name').text);
      cbbDtlCallCenterCode2.Properties.Items.Add(ResultList[I].attributes.getNamedItem('no').text);
    end;

    cbbDtlCallCenter2.Properties.Items.Insert(0, '선택');
    cbbDtlCallCenterCode2.Properties.Items.Insert(0, '선택');
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP01.ResponseDataBankCode(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I: Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      FBankCodeList.Clear;
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
//          ls_Rcrd := GetTextSeperation('│', lst_Result.item[i].attributes.getNamedItem('Value').Text);

          FBankCodeList.Add(Format('%s=%s', [ls_Rcrd[0], ls_Rcrd[1]]));
//          FBankCodeList.AddObject(ls_Rcrd[0], TObject(ls_Rcrd[1]));
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP01.ResponseDataHeadInfo(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I: Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      for I := 0 to lst_Result.length - 1 do
      begin
        edtBaseHeadName.Text := lst_Result.item[i].attributes.getNamedItem('Value').Text;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP01.ResponseDataBranchTel(AXmlStr: WideString);
var
  I, Cnt: Integer;
  xdom: msDomDocument;
  ResultList: IXMLDomNodeList;
begin
	xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    ResultList := xdom.documentElement.selectNodes('/cdms/Service/BranchTel');

    Cnt := StrToIntDef(ResultList[0].attributes.getNamedItem('cnt').text, 0);

    ResultList := xdom.documentElement.selectNodes('/cdms/Service/BranchTel/Item');

    cxViewKeyPhone.DataController.SetRecordCount(0);

    if Cnt = 0 then
      Exit;
    cxViewKeyPhone.BeginUpdate;
    for I := 0 to ResultList.length - 1 do
    begin
      cxViewKeyPhone.DataController.AppendRecord;

      with ResultList[I].attributes do
      begin
        cxViewKeyPhone.DataController.SetValue(I, 0, strtocall(getNamedItem('phone').text));
        cxViewKeyPhone.DataController.SetValue(I, 1, getNamedItem('order_type').text);
        cxViewKeyPhone.DataController.SetValue(I, 2, StrToFloatDef(getNamedItem('base_charge').text, 0.0));
        cxViewKeyPhone.DataController.SetValue(I, 3, getNamedItem('sido').text);
        cxViewKeyPhone.DataController.SetValue(I, 4, getNamedItem('gugun').text);
				cxViewKeyPhone.DataController.SetValue(I, 5, ResultList[I].text);
				cxViewKeyPhone.DataController.SetValue(I, 6, strtocall(getNamedItem('real_incoming_tel').text));
			end;
		end;
		cxViewKeyPhone.EndUpdate;
		edtDtlKeyPhone.Text := IntToStr(cxViewKeyPhone.DataController.RecordCount);
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CMP01.ResponseDataIdCheck(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I: Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      for I := 0 to lst_Result.length - 1 do
      begin
        if StrToIntDef(lst_Result.item[i].attributes.getNamedItem('Value').Text, 0) = 1 then
        begin
          FIdChecked := False;
          ShowMessage('사용할 수 없는 ID 입니다.');
          edtBaseMID.Clear;
          edtBaseMID.SetFocus;
        end
        else
        begin
          FIdChecked := True;
          ShowMessage('사용할 수 있는 ID 입니다.');
          edtBasePwd.SetFocus;
        end;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

// 지사 기본정보(수신)

procedure TFrm_CMP01.ResponseDataBranchBase(AXmlStr: WideString);
var iTmp, i : integer;
  xdom: msDomDocument;
  ResultList: IXMLDomNodeList;
  sTmp, sTmp2, sDDD, sKuk, sB4: string;
  slTmp : TStringList;
begin
  xdom := ComsDomDocument.Create;
  if not xdom.loadXML(AXmlStr) then
    Exit;

  ResultList := xdom.documentElement.selectNodes('/cdms/Service/Branch/Base');

  if ResultList.length > 0 then
  begin
    with ResultList[0].attributes do
    begin
      FBranchName := getNamedItem('name').text;

      lblSelBranch.Caption := Format('[%s] %s', [FBranchNo, FBranchName]);

      edtBaseHeadName.Text := getNamedItem('head_name').text;
      edtBaseHeadCode.Text := getNamedItem('head_no').text;
      edtBaseBrName.Text := getNamedItem('name').text;
      edtBaseBrCode.Text := getNamedItem('no').text;
      edtBaseMID.Text := getNamedItem('master_id').text;
      // 비밀번호는 Insert 시만
      edtBasePwd.Text := '************'; //getNamedItem('master_pw').text;
      edtBasePwdRe.Text := '************'; //getNamedItem('master_pw').text;
      if (UpperCase(getnamedItem('use').text) = 'Y') =  true then rbBaseBrUseY_Chk := 1  // 2011.12.26 지사사용유무 수도권만 적용하기위한 체크 값설정       KHS
                                                             else rbBaseBrUseY_Chk := 0;
      rbBaseBrUseY.Checked := (UpperCase(getnamedItem('use').text) = 'Y');
      rbBaseBrUseN.Checked := (UpperCase(getnamedItem('use').text) = 'N');
      edtBaseOwner.Text := getNamedItem('ceo').text;
      cbbBaseServiceArea.ItemIndex := GetObjectIndex(cbbBaseServiceArea, getnamedItem('area_code').text);
      sTmp := strtocall(getNamedItem('mobile').text);
      if System.Length(sTmp) > 3 then
      begin
        cbbBaseHP.ItemIndex := cbbBaseHP.Properties.Items.IndexOf(Copy(sTmp, 1, 3));
        edtBaseHP.Text := Trim(Copy(sTmp, 4, System.Length(sTmp)));
      end;

      cbbBaseHP.Enabled := (GT_USERIF.ID = edtBaseMID.Text);
      edtBaseHP.Enabled := (GT_USERIF.ID = edtBaseMID.Text);

      if getNamedItem('br_biz_sales_no').text = 'VAL_br_biz_sales_no' then
        edt_biz_sales_no.Text := '' else edt_biz_sales_no.Text := getNamedItem('br_biz_sales_no').text;

      if getNamedItem('br_biz_name').text = 'VAL_br_biz_name' then
        edt_biz_Name.Text := '' else edt_biz_Name.Text := getNamedItem('br_biz_name').text;

      edtBaseSsn.Text := getNamedItem('company_no').text;
      lb_BaseSsn.Hint := getNamedItem('company_no').text;
      if edtBaseSsn.Text = '0000000000' then chk_BizNumUse.Checked := True;

      edtBasePhone.Text := strToCall(getnamedItem('phone').text);

      sDDD := ''; sKuk := ''; sB4 := '';
      sTmp := getnamedItem('br_biz_tel').text;
      slTmp := TStringList.Create;
      Try
        GetTextSeperationEx('-', sTmp, slTmp);
        for I := 0 to slTmp.Count-1 do
        begin
          if i = 0 then sDDD := slTmp[0] else
          if i = 1 then sKuk := slTmp[1] else
          if i = 2 then sB4  := slTmp[2];
        end;
          
        iTmp := cb_ddd.Properties.Items.IndexOf(sDDD);
        if iTmp > -1 then cb_ddd.ItemIndex := iTmp else cb_ddd.ItemIndex := -1; 
        edtBasePhone1.Text := sKuk;
        edtBasePhone2.Text := sB4;
      Finally
        slTmp.Free;
      End;

      edtBaseFax.Text := strtocall(getNamedItem('fax').text);
      edtBaseZipCode.Text := getNamedItem('zipcode').text;
      edtBaseAddr.Text := getNamedItem('address1').text;
      edtBaseAddrDetail.Text := getNamedItem('address2').text;

      mmoBaseMemo.Text := getNamedItem('Memo').text;

      if pos('[본인인증성공]', mmoBaseMemo.Text) > 0 then
      begin
				btnSoNumCheck.Enabled := False;
        btnSoNumCheck.Tag := 99;
        mmoBaseMemo.Text := StringReplace(mmoBaseMemo.Text, '[본인인증성공]', '', [rfReplaceAll]);
      end else
      begin
				btnSoNumCheck.Enabled := True;
      	btnSoNumCheck.Tag := 0;
      end;

			if getNamedItem('br_jumin_no').text = '' then
			begin
				edtBaseOwnerJumin.Text := '';
				edtBaseOwnerJumin1.Text := '';
			end	else
			begin
				edtBaseOwnerJumin.Text  := Copy(getNamedItem('br_jumin_no').text, 1, 6);
				edtBaseOwnerJumin1.Text := Copy(getNamedItem('br_jumin_no').text, 7, 7);
			end;

			//보험개발원
			if Assigned(getNamedItem('kidi_biz_name')) then
				edt_Kidibizname.Text := getNamedItem('kidi_biz_name').Text;
			if Assigned(getNamedItem('kidi_biz_num')) then
				edt_Kidibiznum.Text := getNamedItem('kidi_biz_num').Text;
		end;                        
	end;                               
end;

procedure TFrm_CMP01.ResponseDataBranchDetail(AXmlStr: WideString);
var
  xdom: msDomDocument;
  ResultList: IXMLDomNodeList;
  sTemp: string;
begin
  xdom := ComsDomDocument.Create;
  if not xdom.loadXML(AXmlStr) then
    Exit;

  ResultList := xdom.documentElement.selectNodes('/cdms/Service/Branch/Setting');

  if ResultList.length > 0 then
  begin
    with ResultList[0].attributes do
    begin
      sTemp := getNamedItem('callcenter').text;
      cbbDtlCallCenter.ItemIndex := cbbDtlCallCenterCode.Properties.Items.IndexOf(sTemp);
      sTemp := getNamedItem('callcenter2').text;
      cbbDtlCallCenter2.ItemIndex := cbbDtlCallCenterCode2.Properties.Items.IndexOf(sTemp);

      chkDtlCuInfoDayOpen.Checked := Trim(getNamedItem('cuinfo_dayopen').text) = 'y';
      edtDtlCuInfoMin.Text := getNamedItem('cuinfo_safe_time').text;

      chkRouteMgrWk.Checked := Trim(getNamedItem('route_mgr_wk').text) = 'y';
      chkRouteMgrCu.Checked := Trim(getNamedItem('route_mgr_cu').text) = 'y';
			chkRouteMgrEtc.Checked := Trim(getNamedItem('route_mgr_etc').text) = 'y';

      sTemp := getnamedItem('callrouting').text;
      if sTemp = '' then
        cbbDtlPhoneRouting.ItemIndex := 0
      else if sTemp = 'M' then
        cbbDtlPhoneRouting.ItemIndex := 1
      else if sTemp = 'S' then
        cbbDtlPhoneRouting.ItemIndex := 2
      ;
      edtDtlMainPhone.Text := getNamedItem('main_phone').text;
      Label7.Caption := FBankCodeList.Values[getNamedItem('cybank').text];       //취소율

      if Assigned(getNamedItem('cybank2')) then
        Label5.Caption := FBankCodeList.Values[getNamedItem('cybank2').text];

      Label8.Caption := getNamedItem('cybank_account').text;
      if Assigned(getNamedItem('cybank_account2')) then
        Label6.Caption := getNamedItem('cybank_account2').text;
      if (getNamedItem('cybank_sms').text <> '') and (getNamedItem('cybank_sms_account').Text <> '') then
      begin
        lblDtlSMSAccount.Visible := True;
        Label10.Visible := True;
        Label11.Visible := True;

        Label10.Caption := FBankCodeList.Values[getNamedItem('cybank_sms').text];
        Label11.Caption := getNamedItem('cybank_sms_account').text;
      end else
      begin
        lblDtlSMSAccount.Visible := False;
        Label10.Visible := False;
        Label11.Visible := False;

        Label10.Caption := '';
        Label11.Caption := '';
      end;
      Label9.Caption := FormatFloat('#,##0.#', StrToIntDef(getNamedItem('cash').text,0));
//      edtDtlVirCash.Text := getnamedItem('cash').text;
      Label12.Caption := FormatFloat('#,##0.#', StrToIntDef(getNamedItem('management_fee').text,0));
      Label13.Caption := FormatFloat('#,##0.#', StrToIntDef(getNamedItem('program_value').text,0));
      rbDtlWorkVirY.Checked := (UpperCase(getnamedItem('cybank_yn').text) = 'Y');
      rbDtlWorkVirN.Checked := (UpperCase(getnamedItem('cybank_yn').text) = 'N');
      rbDtlVirUseY.Checked := (UpperCase(getnamedItem('vphone_yn').text) = 'Y');
      rbDtlVirUseN.Checked := (UpperCase(getnamedItem('vphone_yn').text) = 'N');
      rbDtlBohumY.Checked := (UpperCase(getnamedItem('insurance_yn').text) = 'Y');
      rbDtlBohumN.Checked := (UpperCase(getnamedItem('insurance_yn').text) = 'N');
      rbDtlViewHPY.Checked := (UpperCase(getnamedItem('vphone_wkview').text) = 'Y');
      rbDtlViewHPN.Checked := (UpperCase(getnamedItem('vphone_wkview').text) = 'N');

      // 기사수수료 그룹 선택 시 '기사수수료관리', '입금표관리' 버튼 사용가능
      btnDtlFeeGroup.Visible := rbDtlBohumTypeGroup.Checked;
			btnDtlWorkFee.Visible := rbDtlBohumTypeGroup.Checked;

      cbbDtlCnlPntWork.Text := getnamedItem('pn_worker').text;
      cbbDtlCnlPntCall.Text := getnamedItem('pn_center').text;

			case StrToIntDef(getNamedItem('program_fee_type').text, 0) of    //DB코멘트와 맞춤. 20190807 KHS
				1: rbDtlWorkPayType1.Checked := True;   //1:일별 
				2: rbDtlWorkPayType2.Checked := True;   //2:10일기준
				5: rbDtlWorkPayType3.Checked := True;   //5:출근일기준-후불
				6: rbDtlWorkPayType4.Checked := True;   //6:완료오더기준-하루단위
				7: rbDtlWorkPayType5.Checked := True;   //7:완료오더기준-지사대납(완료콜당100원)
{				1: rbDtlWorkPayType1.Checked := True;   
				2: rbDtlWorkPayType2.Checked := True;   
				3: rbDtlWorkPayType3.Checked := True;
				4: rbDtlWorkPayType4.Checked := True;
				5: rbDtlWorkPayType5.Checked := True; }
			end;

      case StrToIntDef(getNamedItem('cms_method').text, 1) of
        1: rbDtlBohumTypeAll.Checked := True;
        2: rbDtlBohumTypeGroup.Checked := True;
      end;

      case StrToIntDef(getNamedItem('cms_type').text, 0) of
        1: rbDtlWorkFee1.Checked := True;
        2: rbDtlWorkFee2.Checked := True;
        3: rbDtlWorkFee3.Checked := True;
        4: rbDtlWorkFee4.Checked := True;
        5: rbDtlWorkFee5.Checked := True;
        6: rbDtlWorkFee6.Checked := True;
        7: rbDtlWorkFee7.Checked := True;
        8: rbDtlWorkFee8.Checked := True;
        9: rbDtlWorkFee9.Checked := True;
      end;

      edtDtlWorkFeeCalc.Text := StrToMoney(getNamedItem('cms_value').text);

			if getNamedItem('kd_share_yn').text = 'y' then
			begin
				chk_KDAgree.Tag := 99;
				chk_KDAgree.checked := True;
				chk_KDAgree.Tag := 0;
			end else chk_KDAgree.checked := False;
		end;
  end;
end;

procedure TFrm_CMP01.ResponseDataBranchEtc(AXmlStr: WideString);
var
  xdom: msDomDocument;
  ResultList: IXMLDomNodeList;
  sTemp: string;
begin
  xdom := ComsDomDocument.Create;
  if not xdom.loadXML(AXmlStr) then
    Exit;

  ResultList :=
		xdom.documentElement.selectNodes('/cdms/Service/Branch/WkSetting');

  if ResultList.length > 0 then
  begin
		with ResultList[0].attributes do
    begin
      // 오더배차설정
      cbb_ShareLevel.ItemIndex := StrToIntDef(getNamedItem('share_level').text, 0);

      // 2010.12.02
      if GS_PRJ_AREA <> 'S' then
        if FShareLevelList[cbb_ShareLevel.ItemIndex] ='10' then
           cbb_ShareLevel.Enabled := False
				else
//           cbb_ShareLevel.Enabled := True
           cbb_ShareLevel.Enabled := False     //지방일 경우 수정 불가하도록 수정 2011.12.19 KHS
      else
        cbb_ShareLevel.Enabled := False;

      rbOrderVirAccountUseY.Checked := (UpperCase(getNamedItem('match_yn').text) = 'Y');
      rbOrderVirAccountUseN.Checked := (UpperCase(getNamedItem('match_yn').text) = 'N');
			rbOrderLBSUseY.Checked := (UpperCase(getNamedItem('lbs_yn').text) = 'Y');
			rbOrderLBSUseN.Checked := (UpperCase(getNamedItem('lbs_yn').text) = 'N');
			rbOrderWorkCnlY.Checked := (UpperCase(getNamedItem('cancel_yn').text) = 'M');
			rbOrderWorkCnlN.Checked := (UpperCase(getNamedItem('cancel_yn').text) = 'N');
			rbOrderOneTouch.Checked := (getNamedItem('vm_touch').text = '1');
			rbOrderTwoTouch.Checked := (getNamedItem('vm_touch').text = '2');

{			rbBechaCallCenterY.Checked := (UpperCase(getNamedItem('bc_view_cc_name').text) = 'Y');
			rbBechaCallCenterN.Checked := (UpperCase(getNamedItem('bc_view_cc_name').text) = 'N');
			rbBechaCallCenterN.Checked := (UpperCase(getNamedItem('bc_view_cc_name').text) = '');  }
			if UpperCase(getNamedItem('bc_view_cc_name').text) = 'Y' then rbBechaCallCenterY.Checked := True else
			if UpperCase(getNamedItem('bc_view_cc_name').text) = 'N' then rbBechaCallCenterN.Checked := True else rbBechaCallCenterN.Checked := True;
			
			// 단말기에서 오더보기설정
      sTemp := getNamedItem('order_view').text;
      cbbOVEnd.ItemIndex := StrToIntDef(sTemp[6], 0);
      cbbOVSymbol.ItemIndex := StrToIntDef(sTemp[1], 0);
      cbbOVPrice.ItemIndex := StrToIntDef(sTemp[5], 0);
      cbbOVMaxRange.ItemIndex := cbbOVMaxRange.Properties.Items.IndexOf(getNamedItem('max_area').text + 'Km');
      edtOVClosePay.Text := StrToMoney(getNamedItem('order_block_price').text);

      // SMS캐쉬 /요금정보
      edtSMSCash.Text := StrToMoney(getNamedItem('sms_deposit').text);
			edtSMSCommercial.Text := StrToMoney(getNamedItem('sms_price_ad').text);
			edtSMSDelayTime.Text := StrToMoney(getNamedItem('sms_delay').text);
			edtSMSNormal.Text := StrToMoney(getNamedItem('sms_price_real').text);

			// 카드사용시 결제내역 이메일 전송 여부
			chkCardMailYn.Checked := (UpperCase(getNamedItem('cardemail_yn').text) = 'Y');

			if (UpperCase(getNamedItem('support_charge_use_yn').text) = 'Y') then	chk_CMPSupportUseYN.Checked := True 
																																			 else	chk_CMPSupportUseYN.Checked := False;
			edt_CMPSupportAMT1.text := Trim(getNamedItem('support_charge1').text);
			edt_CMPSupportAMT2.text := Trim(getNamedItem('support_charge2').text);
			edt_CMPSupportAMT3.text := Trim(getNamedItem('support_charge3').text);
			if Trim(getNamedItem('is_insurance_fee_free').text) = 'y' then
				chk_KaKaoCallByInsure.checked := True else
				chk_KaKaoCallByInsure.checked := False;
				
			edt_KaKaoCallByInsureAutoApplySec.Text := Trim(getNamedItem('auto_ins_fee_free_delay').text);
//			chk_CMPSupportBigo2.Checked := (UpperCase(getNamedItem('cardemail_yn').text) = 'Y');
//			edt_CMPSupportBigo2.Text := Trim(getNamedItem('sms_price_ad').text);
		end;
	end;
end;

procedure TFrm_CMP01.cbbDtlCallCenterPropertiesChange(Sender: TObject);
begin
  cbbDtlCallCenterCode.ItemIndex := cbbDtlCallCenter.ItemIndex;
end;

procedure TFrm_CMP01.cbbPayTime2PropertiesChange(Sender: TObject);
begin
  if cbbPayTime1.Tag = 1 then Exit;

  if ( cbbPayTime1.ItemIndex >= cbbPayTime2.ItemIndex ) And ( cbbPayTime2.ItemIndex >= 0 )  then
  begin
    ShowMessage('2단계 시간은 1단계 시간보다 작을수 없습니다');
    cbbPayTime2.ItemIndex := -1;
    if cbbPayTime2.CanFocus then cbbPayTime2.SetFocus;
  end;

  if ( cbbPayTime2.ItemIndex >= cbbPayTime3.ItemIndex ) And ( cbbPayTime3.ItemIndex >= 0 )  then
  begin
    ShowMessage('3단계 시간은 2단계 시간보다 작을수 없습니다');
    cbbPayTime3.ItemIndex := -1;
    if cbbPayTime3.CanFocus then cbbPayTime3.SetFocus;
  end;

  if ( cbbPayTime3.ItemIndex >= cbbPayTime4.ItemIndex ) And ( cbbPayTime4.ItemIndex >= 0 )  then
  begin
    ShowMessage('4단계 시간은 3단계 시간보다 작을수 없습니다');
    cbbPayTime4.ItemIndex := -1;
    if cbbPayTime4.CanFocus then cbbPayTime4.SetFocus;
  end;
end;

procedure TFrm_CMP01.cbbPayTimeA1PropertiesChange(Sender: TObject);
begin
  if cbbPayTimeA1.Tag = 1 then Exit;

  if ( cbbPayTimeA1.ItemIndex >= cbbPayTimeA2.ItemIndex ) And ( cbbPayTimeA2.ItemIndex >= 0 )  then
  begin
    ShowMessage('2단계 시간은 1단계 시간보다 작을수 없습니다');
    cbbPayTimeA2.ItemIndex := -1;
    if cbbPayTimeA2.CanFocus then cbbPayTimeA2.SetFocus;
  end;

  if ( cbbPayTimeA2.ItemIndex >= cbbPayTimeA3.ItemIndex ) And ( cbbPayTimeA3.ItemIndex >= 0 )  then
  begin
    ShowMessage('3단계 시간은 2단계 시간보다 작을수 없습니다');
    cbbPayTimeA3.ItemIndex := -1;
    if cbbPayTimeA3.CanFocus then cbbPayTimeA3.SetFocus;
  end;

  if ( cbbPayTimeA3.ItemIndex >= cbbPayTimeA4.ItemIndex ) And ( cbbPayTimeA4.ItemIndex >= 0 )  then
  begin
    ShowMessage('4단계 시간은 3단계 시간보다 작을수 없습니다');
    cbbPayTimeA4.ItemIndex := -1;
    if cbbPayTimeA4.CanFocus then cbbPayTimeA4.SetFocus;
  end;
end;

procedure TFrm_CMP01.cbbPayTimeB1PropertiesChange(Sender: TObject);
begin
  if cbbPayTimeB1.Tag = 1 then Exit;

  if ( cbbPayTimeB1.ItemIndex >= cbbPayTimeB2.ItemIndex ) And ( cbbPayTimeB2.ItemIndex >= 0 )  then
  begin
    ShowMessage('2단계 시간은 1단계 시간보다 작을수 없습니다');
    cbbPayTimeB2.ItemIndex := -1;
    if cbbPayTimeB2.CanFocus then cbbPayTimeB2.SetFocus;
  end;

  if ( cbbPayTimeB2.ItemIndex >= cbbPayTimeB3.ItemIndex ) And ( cbbPayTimeB3.ItemIndex >= 0 )  then
  begin
    ShowMessage('3단계 시간은 2단계 시간보다 작을수 없습니다');
    cbbPayTimeB3.ItemIndex := -1;
    if cbbPayTimeB3.CanFocus then cbbPayTimeB3.SetFocus;
  end;

  if ( cbbPayTimeB3.ItemIndex >= cbbPayTimeB4.ItemIndex ) And ( cbbPayTimeB4.ItemIndex >= 0 )  then
  begin
    ShowMessage('4단계 시간은 3단계 시간보다 작을수 없습니다');
    cbbPayTimeB4.ItemIndex := -1;
    if cbbPayTimeB4.CanFocus then cbbPayTimeB4.SetFocus;
  end;
end;

procedure TFrm_CMP01.cb_dddKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then edtBasePhone1.SetFocus;  
end;

procedure TFrm_CMP01.cbbDtlCallCenter2PropertiesChange(Sender: TObject);
begin
  cbbDtlCallCenterCode2.ItemIndex := cbbDtlCallCenter2.ItemIndex;
end;

procedure TFrm_CMP01.cbbDtlCallCenterCode2PropertiesChange(Sender: TObject);
begin
  cbbDtlCallCenter2.ItemIndex := cbbDtlCallCenterCode2.ItemIndex;
end;

procedure TFrm_CMP01.cbbDtlCallCenterCodePropertiesChange(Sender: TObject);
begin
  cbbDtlCallCenter.ItemIndex := cbbDtlCallCenterCode.ItemIndex;
end;

procedure TFrm_CMP01.ClearFormAll;
begin
  ClearFormBase;
  ClearFormDetail;
  ClearFormEtc;

  EnableControl;
end;

procedure TFrm_CMP01.ClearFormBase;
begin
  edtBaseHeadName.Clear;
  edtBaseHeadCode.Clear;
  edtBaseBrName.Clear;
  edtBaseBrCode.Clear;
  edtBaseMID.Clear;
  edtBasePwd.Clear;
  edtBasePwdRe.Clear;
  rbBaseBrUseY.Checked := True;
  edtBaseOwner.Clear;
  cbbBaseServiceArea.ItemIndex := -1;
  cbbBaseHP.ItemIndex := 0;
  edtBaseHP.Clear;
  edtBaseSsn.Clear;
  lb_BaseSsn.hint := '';
  edtBasePhone.Clear;
  cb_ddd.ItemIndex := -1;
  edtBasePhone1.Clear;
  edtBasePhone2.Clear;
  edtBaseFax.Clear;
  edtBaseZipCode.Clear;
  edtBaseAddr.Clear;
  edtBaseAddrDetail.Clear;
  mmoBaseMemo.Clear;

  edt_biz_Name.Clear;
  edt_biz_sales_no.Clear;
  chk_BizNumUse.Checked := False;
end;

procedure TFrm_CMP01.ClearFormDetail;
const
  SELF_CALLCENTER = '자사콜센터사용';
begin
	btnDtlKeyPhoneTop.Enabled := (FBranchNo <> '');
  btnDtlWorkFeeTop.Enabled := (FBranchNo <> '');
  btnDtlFeeGroupTop.Enabled := (FBranchNo <> '');

  // 콜센터
  if (cbbDtlCallCenter.Properties.Items.Count > 0) and
    (cbbDtlCallCenter.Properties.Items[0] = SELF_CALLCENTER) then
  begin
    cbbDtlCallCenter.Properties.Items.Delete(0);
    cbbDtlCallCenterCode.Properties.Items.Delete(0);

    cbbDtlCallCenter2.Properties.Items.Delete(0);
    cbbDtlCallCenterCode2.Properties.Items.Delete(0);
  end;

  if FBranchNo = '' then
  begin
    cbbDtlCallCenter.Properties.Items.Insert(0, SELF_CALLCENTER);
    cbbDtlCallCenterCode.Properties.Items.Insert(0, GT_USERIF.BR);

    cbbDtlCallCenter.ItemIndex := 0;
    cbbDtlCallCenterCode.ItemIndex := 0;

    cbbDtlCallCenter2.Properties.Items.Insert(0, SELF_CALLCENTER);
    cbbDtlCallCenterCode2.Properties.Items.Insert(0, GT_USERIF.BR);

    cbbDtlCallCenter2.ItemIndex := 0;
    cbbDtlCallCenterCode2.ItemIndex := 0;
  end else
  begin
    cbbDtlCallCenter.ItemIndex := -1;
    cbbDtlCallCenterCode.ItemIndex := -1;
    cbbDtlCallCenter2.ItemIndex := -1;
    cbbDtlCallCenterCode2.ItemIndex := -1;
  end;

  cbbDtlPhoneRouting.ItemIndex := 0;
  edtDtlKeyPhone.Text := '0';
  cxViewKeyPhone.DataController.SetRecordCount(0);
  Label7.Caption := '';
  Label8.Caption := '';
  Label5.Caption := '';;
  Label6.Caption := '';;
  Label9.Caption := '';;
  Label12.Caption := '55000';
  Label13.Caption := '15000';
  rbDtlWorkVirY.Checked := True;
  rbDtlVirUseY.Checked := True;
  rbDtlBohumN.Checked := True;
  rbDtlViewHPY.Checked := True;
  cbbDtlCnlPntWork.ItemIndex := 0;
  cbbDtlcnlpntCall.ItemIndex := 0;
	rbDtlWorkPayType1.Checked := True;
  rbDtlBohumTypeAll.Checked := True;
  rbDtlWorkFee4.Checked := True;
  edtDtlWorkFeeCalc.Text := '20';
end;

procedure TFrm_CMP01.ClearFormEtc;
begin
  cbb_ShareLevel.ItemIndex := 0;
  rbOrderVirAccountUseN.Checked := True;
  cbbOrderLocationCall.ItemIndex := -1;
  rbOrderLBSUseN.Checked := True;
  rbOrderWorkCnlY.Checked := True;
  rbOrderTwoTouch.Checked := True;

  chkOVStart.Checked := True;
  cbbOVEnd.ItemIndex := 0;
  cbbOVSymbol.ItemIndex := 0;
  cbbOVPrice.ItemIndex := 0;
  cbbOVMaxRange.ItemIndex := 8;
  edtOVClosePay.Text := '1000';

  edtSMSCash.Text := '0';
  edtSMSCommercial.Text := '13';
  edtSMSDelayTime.Text := '30';
  edtSMSNormal.Text := '15';
end;

procedure TFrm_CMP01.EnableControl;
var
  IsNew: Boolean;
begin
  {*==============================================================================
   신규/수정 일경우 컨트롤 감추기
  ==============================================================================*}
  IsNew := (FBranchNo = ''); // '' 신규

  // 지사기본
  edtBaseMID.Enabled := IsNew;
  cbbBaseHP.Enabled := IsNew;
  edtBaseHP.Enabled := IsNew;

  // 지사상세
  if IsNew then
  begin
    btnEdit.Caption := '저장';
  end else
  begin
    btnEdit.Caption := '수정';
  end;

  btnDtlCall.Visible := not IsNew;
  btnDtlKeyPhone.Visible := not IsNew;
  btnDtlFeeGroup.Visible := not IsNew;
  btnDtlWorkFee.Visible := not IsNew;

  btnBaseMID.Visible := IsNew;
  lblMID.Visible := IsNew;
  edtBasePwd.Enabled := IsNew;
  edtBasePwdRe.Enabled := IsNew;
end;

function TFrm_CMP01.GetObjectIndex(ACombo: TcxCombobox; AValue: string):
  Integer;
begin
  Result := FServiceAreaList.IndexOf(AValue);
end;

procedure TFrm_CMP01.btnBaseAddrClick(Sender: TObject);
begin
  if Not Assigned(Frm_RoadAddr) Or ( Frm_RoadAddr = Nil ) then
  begin
    Frm_RoadAddr := TFrm_RoadAddr.Create(nil);
    Frm_RoadAddr.ShowModal;
    edtBaseAddrDetail.SetFocus;
  end;
{  if ( Not Assigned(Frm_CMP011) ) Or ( Frm_CMP011 = Nil ) then Frm_CMP011 := TFrm_CMP011.Create(Nil);
  Frm_CMP011.SetEdit(TEdit(edtBaseZipCode), TEdit(edtBaseAddr), TEdit(edtBaseAddrDetail));
  Frm_CMP011.ShowModal; }
end;

procedure TFrm_CMP01.edtBaseHPKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8, '-'] then
	else
		key := #0;
end;

procedure TFrm_CMP01.edtBaseAddrDetailKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then mmoBasememo.SetFocus;
end;

procedure TFrm_CMP01.edtBaseBrNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_CMP01.edtBaseFaxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then edt_biz_sales_no.SetFocus;
end;

procedure TFrm_CMP01.edtBaseHPExit(Sender: TObject);
begin
  TcxTextEdit(Sender).Text := strtocall(TcxTextEdit(Sender).Text)
end;

procedure TFrm_CMP01.btnDtlCallClick(Sender: TObject);
begin
  if ( Not Assigned(Frm_CMP012) ) Or ( Frm_CMP012 = Nil ) then Frm_CMP012 := TFrm_CMP012.Create(Nil);
  Frm_CMP012.SetBrCode(FBranchNo, FBranchName);
  Frm_CMP012.ShowModal;
end;

procedure TFrm_CMP01.btnDtlKeyPhoneClick(Sender: TObject);
begin
//	if ( btnSoNumCheck.Enabled ) Or (btnSoNumCheck.Tag = 0) then    2016.08.04 정회귀팀장님 삭제 요청 LYB
//  begin
//    GMessagebox('지사 대표자 본인인증 완료후 대표번호관리 메뉴 사용 가능합니다.', cdmse);
//		Exit;
//  end;

  if ( Not Assigned(Frm_CMP013) ) Or ( Frm_CMP013 = Nil ) then Frm_CMP013 := TFrm_CMP013.Create(Nil);
  Frm_CMP013.SetBrCode(FBranchNo, FBranchName);
  Frm_CMP013.ShowModal;

  RequestDataBranchTel(FBranchNo);
end;

procedure TFrm_CMP01.btnDtlWorkFeeClick(Sender: TObject);
begin
  if ( Not Assigned(Frm_CMP014) ) Or ( Frm_CMP014 = Nil ) then Frm_CMP014 := TFrm_CMP014.Create(Nil);

	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    frm_CMP014.SetBrCode(GT_SEL_BRNO.HDNO, FBranchNo, FBranchName)
  else
    frm_CMP014.SetBrCode(GT_USERIF.HD, FBranchNo, FBranchName);
	frm_CMP014.ShowModal;
end;

procedure TFrm_CMP01.btnDtlFeeGroupClick(Sender: TObject);
begin
	if ( Not Assigned(Frm_CMP015) ) Or ( Frm_CMP015 = Nil ) then Frm_CMP015 := TFrm_CMP015.Create(Nil);

	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		Frm_CMP015.SetBrCode(GT_SEL_BRNO.HDNO, FBranchNo, FBranchName)
	else
		Frm_CMP015.SetBrCode(GT_USERIF.HD, FBranchNo, FBranchName);
  Frm_CMP015.ShowModal;
end;

procedure TFrm_CMP01.EditWindowProc(var Message: TMessage);
begin
  case Message.Msg of
    WM_SETFOCUS, WM_IME_COMPOSITION:
			begin
        SetOnlyAlphanumeric(edtBaseMID.Handle);
        if Message.Msg = WM_IME_COMPOSITION then
          Exit;
      end;
  end;
  FOldMethod(Message);
end;

procedure TFrm_CMP01.SetOnlyAlphanumeric(aHandle: HWND);
var
  lhIMC: HIMC;
  ldSentence, ldConversion: DWORD;
begin
  lhIMC := ImmGetContext(aHandle);
  ImmGetConversionStatus(lhIMC, ldConversion, ldSentence);
  if ldConversion = IME_CMODE_NATIVE then
    ImmSetConversionStatus(lhIMC, IME_CMODE_ALPHANUMERIC, ldSentence);
  ImmReleaseContext(aHandle, lhIMC);
end;

procedure TFrm_CMP01.edtBaseMIDKeyPress(Sender: TObject; var Key: Char);
begin
  FIdChecked := False;
end;

procedure TFrm_CMP01.edtBaseOwnerJumin1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then edtBasePhone.SetFocus;
end;

procedure TFrm_CMP01.edtBaseOwnerJuminKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	btnSoNumCheck.Enabled := True;
  if key = vk_Return then edtBaseOwnerJumin1.SetFocus;
end;

procedure TFrm_CMP01.edtBaseOwnerJuminKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else
		key := #0;
end;

procedure TFrm_CMP01.edtBaseOwnerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	btnSoNumCheck.Enabled := True;
end;

procedure TFrm_CMP01.edtBasePhone1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then edtBasePhone2.SetFocus;
end;

procedure TFrm_CMP01.edtBasePhone2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then edtBaseSsn.SetFocus;
end;

procedure TFrm_CMP01.edtBasePhoneKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then edt_biz_Name.SetFocus;
  
end;

procedure TFrm_CMP01.edtBaseSsnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then edtBaseFax.SetFocus;
end;

procedure TFrm_CMP01.edtBaseSsnKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8, '-'] then
	else
		key := #0;
end;

procedure TFrm_CMP01.edtBaseMIDEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  FIdChecked := False;
end;

procedure TFrm_CMP01.rbDtlBohumTypeAllClick(Sender: TObject);
begin
  if FBranchNo <> '' then
    // 수정
  begin
    btnDtlWorkFee.Visible := True;
  end;

  lblDtlWorkFee.Visible := True;
  pnlDtlWorkFee.Visible := True;
  lblDtlWorkFeeCalc.Visible := True;
  edtDtlWorkFeeCalc.Visible := True;
end;

procedure TFrm_CMP01.rbDtlBohumTypeGroupClick(Sender: TObject);
begin
  if FBranchNo <> '' then
  begin
    btnDtlWorkFee.Visible := False;
    btnDtlFeeGroup.Visible := True;
  end;

  lblDtlWorkFee.Visible := False;
  pnlDtlWorkFee.Visible := False;
  lblDtlWorkFeeCalc.Visible := False;
  edtDtlWorkFeeCalc.Visible := False;
end;

procedure TFrm_CMP01.btnBaseMIDClick(Sender: TObject);
begin
  if edtBaseMID.text = '' then
  begin
    ShowMessage('M-ID를 입력하십시요');
    edtBaseMID.SetFocus;
    Exit;
  end;
  RequestDataIdCheck(edtBaseMID.text);
end;

function TFrm_CMP01.FormFieldCheck(AIndex: Integer): Boolean;
Var	sTemp : string;
    stSno1, stSno2: string;
begin
  Result := False;

  if not FieldNullCheck(edtBaseOwnerJumin, '주민번호1') then
    Exit;
  if not FieldNullCheck(edtBaseOwnerJumin1, '주민번호2') then
    Exit;
	sTemp := StringReplace(edtBaseOwnerJumin.Text + edtBaseOwnerJumin1.Text, '-', '', [rfReplaceAll]);
  stSno1:=Copy(sTemp,1,6);
	stSno2:=Copy(sTemp,7,7);
	if (Length(sTemp) = 13) then
  begin
    if Length(stemp) = 13 then
		begin
			jCheck := func_SoNumCheck(sTemp);
			if jCheck then
			begin
				// 수도권만 외국인 신규등록 불가능 하도록 제한. 2011.08.01
				if (GS_PRJ_AREA = 'S') and (LeftStr(stSno2, 1) <> '1') and (LeftStr(stSno2, 1) <> '2') and 
					 (LeftStr(stSno2, 1) <> '3') and (LeftStr(stSno2, 1) <> '4') then
				begin
					GMessagebox('지사등록 불가한(임시거주 제2외국인, 외국인,, 등등) 주민번호를 입력하였습니다.', CDMSE);
					Exit;
				end;
			end else
			begin
				GMessagebox('주민등록 번호를 잘못 입력하였습니다.', CDMSE);
				Exit;
      end;
		end;
	end else
  begin
		GMessagebox('주민등록 번호를 잘못 입력하였습니다.', CDMSE);
  	Exit;
	end;

  // 2015.02.03  본인인증과 상관없이 저장 가능 처리
//	if btnSoNumCheck.Enabled then
//	begin
//    GMessagebox('본인인증이 완료되지않았습니다.',cdmse);
//		Exit;
//	end;

  if (AIndex = -1) or (AIndex = 0) then
  begin
    if not FieldNullCheck(edtBaseBrName, '지사명') then
      Exit;
    if cbbBaseServiceArea.ItemIndex = -1 then
    begin
      ShowMessage('서비스 지역을 선택하셔야 합니다.');
      cbbBaseServiceArea.SetFocus;
      Exit;
    end;
    // 신규저장시만
    if FBranchNo = '' then
    begin
      if not FIdChecked then
      begin
        ShowMessage('마스터 ID를 검색해 주세요.');
        Exit;
      end;
      if not FieldNullCheck(edtBaseMID, '마스터ID') then
        Exit;
      if not FieldNullCheck(edtBasePwd, '비밀번호') then
        Exit;
      if (edtBasePwd.Text <> edtBasePwdRe.Text) then
      begin
        ShowMessage('비밀번호와 비밀번호 확인이 동일하지 않습니다.');
        edtBasePwdRe.Clear;
        edtBasePwd.SetFocus;
        Exit;
      end;
    end;

    if not FieldNullCheck(edt_biz_Name, '사업장명') then
      Exit;

    if not FieldNullCheck(edtBaseHP, '핸드폰') then
      Exit;
    if not FieldNullCheck(edtBaseSsn, '사업자번호') then
			Exit;
    if cb_ddd.ItemIndex = -1 then
    begin
      ShowMessage('지역번호를 정확히 입력하여 주십시오.');
      cb_ddd.SetFocus;
      Exit;
    end;
    if not FieldNullCheck(edtBasePhone1, '국번') then
      Exit;
    if (Length(edtBasePhone1.Text) < 3) then
    begin
      ShowMessage('국번을 정확히 입력하여 주십시오.');
      edtBasePhone1.SetFocus;
      Exit;
    end;
    if not FieldNullCheck(edtBasePhone2, '뒷4자리') then
      Exit;
    if (Length(edtBasePhone2.Text) < 4) then
    begin
      ShowMessage('뒷4자리를 정확히 입력하여 주십시오.');
      edtBasePhone2.SetFocus;
      Exit;
    end;
    if edtBaseZipCode.Text = '' then
    begin
      ShowMessage('우편번호를 입력하여 주십시오.');
      btnBaseAddr.SetFocus;
      Exit;
    end;
    if edtBaseAddr.Text = '' then
    begin
      ShowMessage('주소를 입력하여 주십시오.');
      btnBaseAddr.SetFocus;
      Exit;
    end;
  end;

  if (AIndex = -1) or (AIndex = 1) then
  begin
  end;

  if (AIndex = -1) or (AIndex = 2) then
  begin
  end;

  Result := True;
end;

function TFrm_CMP01.FieldNullCheck(Sender: TObject; AFieldName: string):
  Boolean;
begin
  Result := False;
  if Assigned(Sender) then
  begin
    if (TEdit(Sender).Enabled) and (TEdit(Sender).Text = '') then
    begin
      ShowMessage(Format('''%s''을(를) 입력하셔야 합니다.', [AFieldName]));
      TEdit(Sender).SetFocus;

      Exit;
    end;
  end;

  Result := True;
end;

procedure TFrm_CMP01.btnEditClick(Sender: TObject);
begin
	if Not func_EucKr_Check(edtBaseMID, 0) then
  begin
		cxPageControl1.ActivePageIndex := 0;
    Exit;
  end;

	if Not func_EucKr_Check(mmoBaseMemo, 0) then
  begin
		cxPageControl1.ActivePageIndex := 0;
    Exit;
  end;

	if FBranchNo = '' then
  begin
    if not FormFieldCheck(-1) then Exit;
    InsertDataBranch;
  end else
  begin
    if not FormFieldCheck(cxPageControl1.ActivePageIndex) then Exit;
		UpdateDataBranch(FBranchNo);
  end;

  GS_NICE_CHK := False;

  // 수도권만 지사명 변경 못함.
  if GS_PRJ_AREA = 'S' then
  begin
    // 2011.04.08
    edtBaseBrName.Enabled := False;
  end;
end;

procedure TFrm_CMP01.btnGetListClick(Sender: TObject);
begin
//	pGetComponentListCMP01;
end;

procedure TFrm_CMP01.btnSoNumCheckClick(Sender: TObject);
Var sMsg, slBrNo : String;
begin
	sMsg := '본인인증 서비스 이용시(인증실패시에도) 60원의 이용료가 발생합니다.' + #13 +
          '(지사캐쉬에서 차감)' + #13 +
          '본인인증 서비스를 이용하시겠습니까?' + #13#13 +
          '※ 본인인증후에는 지사정보 "수정" 버튼을 꼭 누르셔야 정상처리됩니다.';

  if Application.MessageBox(PChar(sMsg), '', MB_YESNO + MB_ICONINFORMATION) = IDNO then Exit;

  slBrNo := edtBaseBrCode.Text;

  if fGetBrCash(slBrNo) < 60 then
  begin
    ShowMessage('지사 캐쉬 잔액이 부족하여 본인 인증 서비스를 이용할 수 없습니다');
    Exit;
  end;

  try
    if ( not Assigned(Frm_JON057) ) Or ( Frm_JON057 = Nil ) then Frm_JON057 := TFrm_JON057.Create(nil);

    Frm_JON057.sBrNo := slBrNo;

    if GS_PRJ_AREA = 'S' then Frm_JON057.sArea := '1'
                         else Frm_JON057.sArea := '2';
	  Frm_JON057.ShowModal;
  Finally
    if GS_NICE_CHK then
    begin
      edtBaseOwner.Text := GS_NICE_Name;
      edtBaseOwnerJumin.Text := Copy(GS_NICE_Birth, 3, 6);

{      ShowMessage('성명 : ' + GS_NICE_Name + #13#10 +
                  '생년월일 : ' + GS_NICE_Birth + #13#10 +
                  '성별 : ' + GS_NICE_Sex + #13#10 +
                  '본인인증 성공');}

      ShowMessage('NICE평가정보 본인인증 성공' + #13#10 +
                  '수정 및 저장을 해주세요');
    	btnSoNumCheck.Tag := 99;
      btnSoNumCheck.Enabled := False;
    end else
    begin
    	btnSoNumCheck.Tag := 0;
      if GS_NICE_Err <> '' then
        ShowMessage('NICE평가정보 본인인증 실패 : ' + GS_NICE_Err);
    end;
  end;
end;

{*==============================================================================
 데이터 생성
==============================================================================*}
function TFrm_CMP01.MakeDataBranchBase: TBranchBase;
var
  AData: TBranchBase;
begin
  AData.head_no := edtBaseHeadCode.Text;
  AData.head_name := edtBaseHeadName.Text;
  AData.no := edtBaseBrCode.Text;
  if rbBaseBrUseY.Checked then
    AData.use := 'y'
  else
    AData.use := 'n';
  AData.name := edtBaseBrName.Text;
  AData.area_code := FServiceAreaList[cbbBaseServiceArea.ItemIndex];//string(cbbBaseServiceArea.Properties.Items.Objects[cbbBaseServiceArea.ItemIndex]);
  AData.master_id := edtBaseMID.Text;
  AData.master_pw := edtBasePwd.Text;
  AData.company_no := edtBaseSsn.Text;
  AData.ceo := edtBaseOwner.Text;
  AData.mobile := CallToStr(cbbBaseHP.Text + edtBaseHP.Text);
  AData.phone := CallToStr(edtBasePhone.Text);
  AData.fax := CallToStr(edtBaseFax.Text);
  AData.zipcode := edtBaseZipCode.Text;
  AData.address1 := edtBaseAddr.Text;
  AData.address2 := edtBaseAddrDetail.Text;
  AData.br_biz_tel := cb_ddd.Text + '-' + edtBasePhone1.Text + '-' + edtBasePhone2.Text;
  AData.biz_Name := edt_biz_Name.Text;
  AData.biz_sales_no  := edt_biz_sales_no.Text;
  
	if ( Not btnSoNumCheck.Enabled ) And (btnSoNumCheck.Tag = 99) then
  begin
    if pos('[본인인증성공]', mmoBaseMemo.Text) < 1 then
  		AData.Memo := '[본인인증성공]' + mmoBaseMemo.Text
    else
  		AData.Memo := mmoBaseMemo.Text;
  end else
  begin
		AData.Memo := mmoBaseMemo.Text;
  end;
	AData.br_jumin_no := StringReplace(edtBaseOwnerJumin.Text + edtBaseOwnerJumin1.Text, '-', '', [rfReplaceAll]);

	
	AData.BrName := edt_Kidibizname.Text;
	AData.BrSnum := edt_Kidibiznum.Text;

	Result := AData;
end;

function TFrm_CMP01.MakeDataBranchDetail: TBranchDetail;
var
	sTemp: string;
  AData: TBranchDetail;
begin
  sTemp := '';

  AData.route_mgr_wk := IfThen(chkRouteMgrWk.Checked, 'y', 'n');
  AData.route_mgr_cu := IfThen(chkRouteMgrCu.Checked, 'y', 'n');
  AData.route_mgr_etc := IfThen(chkRouteMgrEtc.Checked, 'y', 'n');
	AData.cash := Label9.Caption;
  AData.callcenter := cbbDtlCallCenterCode.Text;
  if cbbDtlCallCenterCode2.ItemIndex = 0 then
    AData.callcenter2 := ''
  else
    AData.callcenter2 := cbbDtlCallCenterCode2.Text;
  case cbbDtlPhoneRouting.ItemIndex of
    0: AData.callrouting := '';
    1: AData.callrouting := 'M';
    2: AData.callrouting := 'S';
  end;
  AData.cuinfo_dayopen := IfThen(chkDtlCuInfoDayOpen.Checked, 'y', 'n');
  AData.cuinfo_safe_time := IntToStr(StrTointdef(edtDtlCuInfoMin.Text, 0));
  AData.main_phone := edtDtlMainPhone.Text;
  AData.management_fee := Label12.Caption;
  AData.program_value := Label13.Caption;
  if rbDtlWorkVirY.Checked then
    AData.cybank_yn := 'y'
  else
    AData.cybank_yn := 'n';

  if rbDtlVirUseY.Checked then
    AData.vphone_yn := 'y'
  else
    AData.vphone_yn := 'n';

  if rbDtlBohumY.Checked then
    AData.insurance_yn := 'y'
  else
    AData.insurance_yn := 'n';

  if rbDtlViewHPY.Checked then
    AData.vphone_wkview := 'y'
  else
    AData.vphone_wkview := 'n';

  AData.pn_worker := cbbDtlCnlPntWork.Text;
  AData.pn_center := cbbDtlCnlPntCall.Text;

	if rbDtlWorkPayType1.Checked then
		AData.program_fee_type := '1'
	else if rbDtlWorkPayType2.Checked then
		AData.program_fee_type := '2'
	else if rbDtlWorkPayType3.Checked then
		AData.program_fee_type := '5'
	else if rbDtlWorkPayType4.Checked then
		AData.program_fee_type := '6'
	else if rbDtlWorkPayType5.Checked then
		AData.program_fee_type := '7';

  if rbDtlBohumTypeAll.Checked then
    AData.cms_method := '1'
  else
    AData.cms_method := '2';

  if rbDtlWorkFee1.Checked then
    AData.cms_type := '1'
  else if rbDtlWorkFee2.Checked then
    AData.cms_type := '2'
  else if rbDtlWorkFee3.Checked then
    AData.cms_type := '3'
  else if rbDtlWorkFee4.Checked then
    AData.cms_type := '4'
  else if rbDtlWorkFee5.Checked then
		AData.cms_type := '5'
  else if rbDtlWorkFee6.Checked then
    AData.cms_type := '6'
  else if rbDtlWorkFee7.Checked then
    AData.cms_type := '7'
  else if rbDtlWorkFee8.Checked then
    AData.cms_type := '8'
  else if rbDtlWorkFee9.Checked then
    AData.cms_type := '9';

  AData.cms_value := edtDtlWorkFeeCalc.Text;

	if chk_KDAgree.checked then	AData.kd_share_yn := 'y' else AData.kd_share_yn := 'n';

	Result := AData;
end;

function TFrm_CMP01.MakeDataBranchEtc: TBranchEtc;
var
  AData: TBranchEtc;
  sTemp: string;
begin

  AData.share_level := IntToStr(cbb_ShareLevel.ItemIndex);

  if rbOrderVirAccountUseY.Checked then
    AData.match_yn := 'y'
  else
    AData.match_yn := 'n';

  if rbOrderLBSUseY.Checked then
    AData.lbs_yn := 'y'
  else
    AData.lbs_yn := 'n';

  if rbOrderWorkCnlY.Checked then
    AData.cancel_yn := 'm'
  else
    AData.cancel_yn := 'n';

  if rbOrderOneTouch.Checked then
    AData.vm_touch := '1'
  else
    AData.vm_touch := '2';

  sTemp := '000000';
  if chkOVStart.Checked then
    sTemp[2] := '1';
  //도착지 표시
  if cbbOVEnd.ItemIndex = 0 then
    sTemp[6] := '0'
  else if cbbOVEnd.ItemIndex = 1 then
    sTemp[6] := '1'
  else if cbbOVEnd.ItemIndex = 2 then
    sTemp[6] := '2'
  else if cbbOVEnd.ItemIndex = 3 then
    sTemp[6] := '3'
  else
    sTemp[6] := '0';
  //기호 표시
  if cbbOVSymbol.ItemIndex = 0 then
    sTemp[1] := '0'
  else if cbbOVSymbol.ItemIndex = 1 then
    sTemp[1] := '1'
  else if cbbOVSymbol.ItemIndex = 2 then
    sTemp[1] := '2'
  else if cbbOVSymbol.ItemIndex = 3 then
    sTemp[1] := '3'
	else if cbbOVSymbol.ItemIndex = 4 then
		sTemp[1] := '4'
	else
    sTemp[1] := '0';
  //요금 표시
  if cbbOVPrice.ItemIndex = 0 then
    sTemp[5] := '0'
  else if cbbOVPrice.ItemIndex = 1 then
    sTemp[5] := '1'
  else if cbbOVPrice.ItemIndex = 2 then
    sTemp[5] := '2'
  else if cbbOVPrice.ItemIndex = 3 then
    sTemp[5] := '3'
  else
    sTemp[5] := '0';

  AData.order_view := sTemp;
  AData.max_area := StringReplace(cbbOVMaxRange.Text, 'Km', '', [rfReplaceAll]);

  //2010.12.27 오더보기차단요금 저장시 ,로 오류 수정
//  AData.order_block := edtOVClosePay.Text;
   AData.order_block := IntToStr(strtointdef(StringReplace(edtOVClosePay.Text,',','',[rfreplaceall]),0));
	AData.sms_deposit := edtSMSCash.Text;
  AData.sms_price_ad := edtSMSCommercial.Text;
  AData.sms_price_real := edtSMSNormal.Text;
	Adata.sms_delay := edtSMSDelayTime.Text;
	if chkCardMailYn.Checked then Adata.card_email := 'y'
													 else Adata.card_email := 'n';

	if rbBechaCallCenterY.Checked then Adata.BechaCallcenterYn := 'y'
																else Adata.BechaCallcenterYn := 'n';

	if chk_CMPSupportUseYN.Checked then	AData.support_charge_use_yn := 'y'
																 else	AData.support_charge_use_yn := 'n';
	AData.support_charge1 := RemoveAll(edt_CMPSupportAMT1.text, ',');
	AData.support_charge2 := RemoveAll(edt_CMPSupportAMT2.text, ',');
	AData.support_charge3 := RemoveAll(edt_CMPSupportAMT3.text, ',');
	AData.support_charge3 := RemoveAll(edt_CMPSupportAMT3.text, ',');
	if chk_KaKaoCallByInsure.Checked then AData.KaKaoCallByInsure := 'y' else AData.KaKaoCallByInsure := 'n';

	AData.KaKaoCallByInsureAutoApplySec := RemoveAll(edt_KaKaoCallByInsureAutoApplySec.Text, ',');

	Result := AData;
end;

{*==============================================================================
 패킷생성
==============================================================================*}

function TFrm_CMP01.MakePacketBranchBase(ABrCode, AType, AKey: string;
  AData: TBranchBase; APacket: string): string;
var
  ls_TxLoad: string;
begin
  try
    if APacket = '' then
    begin
			ls_TxLoad := GTx_UnitXmlLoad('C047N2.xml');
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', AKey, [rfReplaceAll]);

      ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'UPDATE', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ABrCode, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_TYPE', AType, [rfReplaceAll]);
    end
    else
      ls_TxLoad := APacket;

    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_head_no', AData.head_no, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_head_name', AData.head_name, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_no', AData.no, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_use', AData.use, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_name', AData.name, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_area_code', AData.area_code, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_master_id', AData.master_id, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_master_pw', AData.master_pw, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_company_no', AData.company_no, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_ceo', AData.ceo, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_mobile', AData.mobile, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_phone', AData.phone, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_fax', AData.fax, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_zipcode', AData.zipcode, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_address1', AData.address1, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_address2', AData.address2, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'Memo="VAL_Memo"', 'Memo="VAL_Memo" br_jumin_no="VAL_JUMIN"', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_Memo', AData.Memo, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_JUMIN', AData.br_jumin_no, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_kidi_biz_name', AData.BrName, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_kidi_biz_num', AData.BrSnum, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_br_biz_name', AData.biz_Name, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_br_biz_tel', AData.br_biz_tel, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_br_biz_sales_no', AData.biz_sales_no, [rfReplaceAll]);

    Result := ls_TxLoad;
  except
  end;
end;

function TFrm_CMP01.MakePacketBranchDetail(ABrCode, AType, AKey: string;
  AData: TBranchDetail; APacket: string): string;
var
  ls_TxLoad: string;
begin
	try
    if APacket = '' then
    begin
			ls_TxLoad := GTx_UnitXmlLoad('C047N2.xml');
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRIF000U', [rfReplaceAll]);

      ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'UPDATE', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ABrCode, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_TYPE', AType, [rfReplaceAll]);
    end
    else
      ls_TxLoad := APacket;

    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_cash', AData.cash, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_callcenter', AData.callcenter, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_call2center', AData.callcenter2, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_callrouting', AData.callrouting, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_management_fee', AData.management_fee, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_program_value', AData.program_value, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_cybank_yn', AData.cybank_yn, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_insurance_yn', AData.insurance_yn, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_pn_worker', AData.pn_worker, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_pn_center', AData.pn_center, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_program_fee_type', AData.program_fee_type, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_cms_method', AData.cms_method, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_cms_type', AData.cms_type, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_cms_value', AData.cms_value, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_vphone_yn', AData.vphone_yn, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_vphone_wkview', AData.vphone_wkview, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_main_phone', AData.main_phone, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_cuinfo_dayopen', AData.cuinfo_dayopen, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_cuinfo_safe_time', AData.cuinfo_safe_time, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_route_mgr_wk', AData.route_mgr_wk, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_route_mgr_cu', AData.route_mgr_cu, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_route_mgr_etc', AData.route_mgr_etc, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_kd_share_yn', AData.kd_share_yn, [rfReplaceAll]);

    Result := ls_TxLoad;
  except
  end;
end;

function TFrm_CMP01.MakePacketBranchEtc(ABrCode, AType, AKey: string;
  AData: TBranchEtc; APacket: string): string;
var
  ls_TxLoad: string;
begin
	try
		if APacket = '' then
    begin
			ls_TxLoad := GTx_UnitXmlLoad('C047N2.xml');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRIF000U', [rfReplaceAll]);

			ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_ACTION', 'UPDATE', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_지사코드', ABrCode, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'KEY_TYPE', AType, [rfReplaceAll]);
    end
    else
      ls_TxLoad := APacket;

    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_share_level', AData.share_level, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_lbs_yn', AData.lbs_yn, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_match_yn', AData.match_yn, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_vm_touch', AData.vm_touch, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_cancel_yn', AData.cancel_yn, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_order_view', AData.order_view, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_max_area', AData.max_area, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_order_block', AData.order_block, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_sms_deposit', AData.sms_deposit, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_sms_price_ad', AData.sms_price_ad, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_sms_price_real', AData.sms_price_real, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_sms_delay', AData.sms_delay, [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_cardemail_yn', AData.card_email, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_bc_view_cc_name', AData.BechaCallcenterYn, [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_support_charge_use_yn', AData.support_charge_use_yn, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_support_charge1', AData.support_charge1, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_support_charge2', AData.support_charge2, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_support_charge3', AData.support_charge3, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_is_insurance_fee_free', AData.KaKaoCallByInsure, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'VAL_auto_ins_fee_free_delay', AData.KaKaoCallByInsureAutoApplySec, [rfReplaceAll]);
		

		Result := ls_TxLoad;
	except                                                               		
	end;

end;

procedure TFrm_CMP01.mmoBaseMemoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_CMP01.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(PnlSPSet.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CMP01.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CMP01.InsertDataBranch;
const
  BRANCH_UPDATE_KEY = 'BRIF000I';
var
  PacketStr: string;
  ABase: TBranchBase;
  ADetail: TBranchDetail;
  AEtc: TBranchEtc;
begin
  // Insert는 통짜로(한번에 3가지 정보 모두)
  try
		PacketStr := GTx_UnitXmlLoad('C047N2.xml');
    PacketStr := StringReplace(PacketStr, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    PacketStr := StringReplace(PacketStr, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    PacketStr := StringReplace(PacketStr, 'ClientKeyString', BRANCH_UPDATE_KEY, [rfReplaceAll]);

		PacketStr := StringReplace(PacketStr, 'KEY_ACTION', 'INSERT', [rfReplaceAll]);
    PacketStr := StringReplace(PacketStr, 'KEY_지사코드', '', [rfReplaceAll]);
    PacketStr := StringReplace(PacketStr, 'KEY_TYPE', '', [rfReplaceAll]);
  except
  end;

  ABase := MakeDataBranchBase;
  PacketStr := MakePacketBranchBase('', '', BRANCH_UPDATE_KEY, ABase, PacketStr);

  ADetail := MakeDataBranchDetail;
  PacketStr := MakePacketBranchDetail('', '', BRANCH_UPDATE_KEY, ADetail, PacketStr);

  AEtc := MakeDataBranchEtc;
  PacketStr := MakePacketBranchEtc('', '', BRANCH_UPDATE_KEY, AEtc, PacketStr);

  ExecuteData(PacketStr);
end;

procedure TFrm_CMP01.UpdateDataBranch(ABrCode: string);
const
	BRANCH_UPDATE_KEY = 'BRIF000U';
var
	PacketStr: string;
	ABase: TBranchBase;
	ADetail: TBranchDetail;
	AEtc: TBranchEtc;
begin
  // Update는 구분해서
	PacketStr := '';
	case cxPageControl1.ActivePageIndex of
    0:
      begin
				if (edt_Kidibizname.Text <> '') and (edt_Kidibiznum.Text <> '') then
				begin
					if (edt_Kidibizname.Text = '') then 
					begin
						GMessagebox('연동 대리업체명을 입력하세요', CDMSE);
						edt_Kidibizname.SetFocus;
						Exit;
					end;
					if (edt_Kidibiznum.Text = '') then 
					begin
						GMessagebox('연동 사업자번호를 입력하세요', CDMSE);
						edt_Kidibiznum.SetFocus;
						Exit;
					end;
					if Length(edt_Kidibiznum.Text) <> 10 then 
					begin
						GMessagebox('연동 사업자번호를 확인하세요', CDMSE);
						edt_Kidibiznum.SetFocus;
						Exit;
					end;

					if GetOnlyNumber(edt_Kidibiznum.Text) then
					begin
						GMessagebox('연동 사업자번호는 숫자만 입력하여 주십시오', CDMSE);
						edt_Kidibiznum.SetFocus;
						Exit;
					end;
		
					if not CheckIdNo(edt_Kidibiznum.Text) then
					begin
						GMessagebox('연동 사업자번호 유효성검사 실패' + #13#10 + #13#10 
											+ '사업자번호를 다시 확인해주세요', CDMSE);
						edt_Kidibiznum.SetFocus;
						Exit;
					end;
				end;

				ABase := MakeDataBranchBase;
        PacketStr := MakePacketBranchBase(ABrCode, 'Base', BRANCH_UPDATE_KEY, ABase);
				ExecuteData(PacketStr);

				ADetail := MakeDataBranchDetail;
				PacketStr := MakePacketBranchDetail(ABrCode, 'Setting', BRANCH_UPDATE_KEY, ADetail);
				ExecuteData(PacketStr);
			end;
		1:
			begin
				ADetail := MakeDataBranchDetail;
				PacketStr := MakePacketBranchDetail(ABrCode, 'Setting', BRANCH_UPDATE_KEY, ADetail);
				ExecuteData(PacketStr);
			end;
		2:
			begin
				ADetail := MakeDataBranchDetail;
				PacketStr := MakePacketBranchDetail(ABrCode, 'Setting', BRANCH_UPDATE_KEY, ADetail);
				ExecuteData(PacketStr);

				AEtc := MakeDataBranchEtc;
				PacketStr := MakePacketBranchEtc(ABrCode, 'WkSetting', BRANCH_UPDATE_KEY, AEtc);
				ExecuteData(PacketStr);
			end;
	end;
	ShowMessage('수정되었습니다.') ;
end;

procedure TFrm_CMP01.ExecuteData(APacket: string);
var
  ReceiveStr: string;
  StrList: TStringList;
  ErrCode: integer;
begin
	StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    if dm.SendSock(APacket, StrList, ErrCode, False) then
    begin
      ReceiveStr := StrList[0];

      if trim(ReceiveStr) <> '' then
      begin
        Application.ProcessMessages;
				ResponseDataBase(ReceiveStr);
      end;
    end;
  finally
    Frm_Flash.Hide;
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

function TFrm_CMP01.DataChanged: Boolean;
begin
  // 수정/저장 시 데이터 변경 여부 할당 후 참조페이지에서 해당 함수 호출하여
  // 리스트 다시 표시할지 여부 확인
  Result := FDataChanged;
  FDataChanged := False;
end;

procedure TFrm_CMP01.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_CMP01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(OnRefreshEvent) then OnRefreshEvent(Self);
  Action := caFree;
end;

procedure TFrm_CMP01.chkDtlCuInfoDayOpenClick(Sender: TObject);
begin
  edtDtlCuInfoMin.Enabled := TcxCheckBox(Sender).Checked;
end;

procedure TFrm_CMP01.chkOrderUse1PropertiesChange(Sender: TObject);
var iTag : Integer;
begin
	iTag := TcxCheckBox(Sender).Tag;
	if TcxCheckBox(Sender).checked then
	begin
		case iTag of
			1:
			begin
				cbbPayTime1.Enabled := True; cxEdtPayMemo1.Enabled := True;	cxPayAmt1.Enabled := True;
			end;
			2:
			begin
				cbbPayTime2.Enabled := True; cxEdtPayMemo2.Enabled := True;	cxPayAmt2.Enabled := True;
			end;
			3:
			begin
				cbbPayTime3.Enabled := True; cxEdtPayMemo3.Enabled := True;	cxPayAmt3.Enabled := True;
			end;
			4:
			begin
				cbbPayTime4.Enabled := True; cxEdtPayMemo4.Enabled := True;	cxPayAmt4.Enabled := True;
			end;
			11:
			begin
				cbbPayTimeA1.Enabled := True; cxEdtPayMemoA1.Enabled := True;	cxPayAmtA1.Enabled := True;
			end;
			12:
			begin
				cbbPayTimeA2.Enabled := True; cxEdtPayMemoA2.Enabled := True;	cxPayAmtA2.Enabled := True;
			end;
			13:
			begin
				cbbPayTimeA3.Enabled := True; cxEdtPayMemoA3.Enabled := True;	cxPayAmtA3.Enabled := True;
			end;
			14:
			begin
				cbbPayTimeA4.Enabled := True; cxEdtPayMemoA4.Enabled := True;	cxPayAmtA4.Enabled := True;
			end;
			21:
			begin
				cbbPayTimeB1.Enabled := True; cxEdtPayMemoB1.Enabled := True;	cxPayAmtB1.Enabled := True;
			end;
			22:
			begin
				cbbPayTimeB2.Enabled := True; cxEdtPayMemoB2.Enabled := True;	cxPayAmtB2.Enabled := True;
			end;
			23:
			begin
				cbbPayTimeB3.Enabled := True; cxEdtPayMemoB3.Enabled := True;	cxPayAmtB3.Enabled := True;
			end;
			24:
			begin
				cbbPayTimeB4.Enabled := True; cxEdtPayMemoB4.Enabled := True;	cxPayAmtB4.Enabled := True;
			end;
		end;
	end else
	begin
		case iTag of
			1:
			begin
				cbbPayTime1.Enabled := False; cxEdtPayMemo1.Enabled := False;	cxPayAmt1.Enabled := False;
			end;
			2:
			begin
				cbbPayTime2.Enabled := False; cxEdtPayMemo2.Enabled := False;	cxPayAmt2.Enabled := False;
			end;
			3:
			begin
				cbbPayTime3.Enabled := False; cxEdtPayMemo3.Enabled := False;	cxPayAmt3.Enabled := False;
			end;
			4:
			begin
				cbbPayTime4.Enabled := False; cxEdtPayMemo4.Enabled := False;	cxPayAmt4.Enabled := False;
			end;
			11:
			begin
				cbbPayTimeA1.Enabled := False; cxEdtPayMemoA1.Enabled := False;	cxPayAmtA1.Enabled := False;
			end;
			12:
			begin
				cbbPayTimeA2.Enabled := False; cxEdtPayMemoA2.Enabled := False;	cxPayAmtA2.Enabled := False;
			end;
			13:
			begin
				cbbPayTimeA3.Enabled := False; cxEdtPayMemoA3.Enabled := False;	cxPayAmtA3.Enabled := False;
			end;
			14:
			begin
				cbbPayTimeA4.Enabled := False; cxEdtPayMemoA4.Enabled := False;	cxPayAmtA4.Enabled := False;
			end;
			21:
			begin
				cbbPayTimeB1.Enabled := False; cxEdtPayMemoB1.Enabled := False;	cxPayAmtB1.Enabled := False;
			end;
			22:
			begin
				cbbPayTimeB2.Enabled := False; cxEdtPayMemoB2.Enabled := False;	cxPayAmtB2.Enabled := False;
			end;
			23:
			begin
				cbbPayTimeB3.Enabled := False; cxEdtPayMemoB3.Enabled := False;	cxPayAmtB3.Enabled := False;
			end;
			24:
			begin
				cbbPayTimeB4.Enabled := False; cxEdtPayMemoB4.Enabled := False;	cxPayAmtB4.Enabled := False;
			end;
		end;
	end;
end;

procedure TFrm_CMP01.chkTimePaySet1Click(Sender: TObject);
begin
	if chkTimePaySet1.Checked then GrpPayTimeUse1.Enabled := True
	else 
	begin
		GrpPayTimeUse1.Enabled := False;
		chkOrderUseA1.Checked :=	chkTimePaySet1.Checked;											 
		chkOrderUseA2.Checked :=	chkTimePaySet1.Checked;											 
		chkOrderUseA3.Checked :=	chkTimePaySet1.Checked;											 
		chkOrderUseA4.Checked :=	chkTimePaySet1.Checked;	 
	end;
end;

procedure TFrm_CMP01.chkTimePaySet2Click(Sender: TObject);
begin
	if chkTimePaySet2.Checked then GrpPayTimeUse2.Enabled := True
	else 
	begin
		GrpPayTimeUse2.Enabled := False;
		chkOrderUseB1.Checked :=	chkTimePaySet2.Checked;											 
		chkOrderUseB2.Checked :=	chkTimePaySet2.Checked;											 
		chkOrderUseB3.Checked :=	chkTimePaySet2.Checked;
		chkOrderUseB4.Checked :=	chkTimePaySet2.Checked;
	end;
end;

procedure TFrm_CMP01.chkTimePaySetClick(Sender: TObject);
begin
	if chkTimePaySet.Checked then GrpPayTimeUse.Enabled := True
	else 
	begin
		GrpPayTimeUse.Enabled := False;
		chkOrderUse1.Checked :=	chkTimePaySet.Checked;											 
		chkOrderUse2.Checked :=	chkTimePaySet.Checked;											 
		chkOrderUse3.Checked :=	chkTimePaySet.Checked;											 
		chkOrderUse4.Checked :=	chkTimePaySet.Checked;											 
	end;
end;

procedure TFrm_CMP01.chk_BizNumUsePropertiesChange(Sender: TObject);
begin
  if chk_BizNumUse.Checked then 
  begin
    edtBaseSsn.Enabled := False;
    edtBaseSsn.text := '0000000000';
  end else
  begin
    edtBaseSsn.Enabled := true;
    edtBaseSsn.text := lb_BaseSsn.Hint;
  end;
end;

procedure TFrm_CMP01.chk_KDAgreePropertiesChange(Sender: TObject);
var sMsg : string;
begin
	btnEdit.enabled := True;
	if chk_KDAgree.Tag = 99 then exit;
	
	if chk_KDAgree.checked then	
	begin
		pnl_Notice.Top := 28;
		pnl_Notice.Left := 2;
		pnl_Notice.visible := True;
		btnEdit.enabled := False;
		cxMemo1.SetFocus;
	end else 
	begin
		sMsg := '카카오모빌리티에 보험정보 동의를 해제 하시겠습니까?' +#13#10 +#13#10
					+ '동의해제시 기사보험공유는 적용되지 않으며' +#13#10
					+ '배차지원금도 지원되지 않습니다.' +#13#10 +#13#10
					+ '     [YES:동의해제]        [NO:동의유지]';
		if Application.MessageBox(
				PChar(sMsg), '보험정보 동의', MB_YESNO + MB_ICONQUESTION) = IDYES then
		begin
			proc_KakaoShareAgree;

			pnl_Notice.visible := False;
			btnEdit.enabled := True;
		end else
		begin
			chk_KDAgree.Tag := 99;
			chk_KDAgree.checked := True;
			chk_KDAgree.Tag := 0;
		end;
	end;	
end;

procedure TFrm_CMP01.edtDtlCuInfoMinKeyPress(Sender: TObject;
	var Key: Char);
begin
  if not (Key in ['0'..'9']) then
    Key := #0;
end;

procedure TFrm_CMP01.edtSMSDelayTimeKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else
		key := #0;
end;

procedure TFrm_CMP01.edt_biz_NameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then cb_ddd.SetFocus;
end;

procedure TFrm_CMP01.edt_biz_sales_noKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then btnBaseAddr.SetFocus;
end;

procedure TFrm_CMP01.edt_CMPSupportAMT1KeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else
		key := #0;
end;

procedure TFrm_CMP01.edt_KidibiznameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then edt_Kidibiznum.SetFocus;
end;

procedure TFrm_CMP01.edt_KidibiznumKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
  else
		key := #0;
end;

procedure TFrm_CMP01.cxButton1Click(Sender: TObject);
begin
  lblSafeTimeHint.Visible := not lblSafeTimeHint.Visible;
end;

procedure TFrm_CMP01.cxButton2Click(Sender: TObject);
var
	XmlData, Param, ErrMsg : string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd : TStringList;
	I, ErrCode : Integer;
begin
  try
    chkTimePaySet.Checked := False;
    chkTimePaySetClick(chkTimePaySet);

    chkOrderUse1.Checked := False;
    chkOrderUse2.Checked := False;
    chkOrderUse3.Checked := False;
    chkOrderUse4.Checked := False;

    cbbPayTime1.Tag := 1;
    cbbPayTime1.ItemIndex := -1;
    cbbPayTime2.ItemIndex := -1;
    cbbPayTime3.ItemIndex := -1;
    cbbPayTime4.ItemIndex := -1;
    cbbPayTime1.Tag := 0;

    cxPayAmt1.Value := 0;
    cxPayAmt2.Value := 0;
    cxPayAmt3.Value := 0;
    cxPayAmt4.Value := 0;

    cxEdtPayMemo1.Text := '';
    cxEdtPayMemo2.Text := '';
    cxEdtPayMemo3.Text := '';
    cxEdtPayMemo4.Text := '';
    //-------------------------------------------

    chkTimePaySet1.Checked := False;
    chkTimePaySet1Click(chkTimePaySet1);

    chkOrderUseA1.Checked := False;
    chkOrderUseA2.Checked := False;
    chkOrderUseA3.Checked := False;
    chkOrderUseA4.Checked := False;

    cbbPayTimeA1.Tag := 1;
    cbbPayTimeA1.ItemIndex := -1;
    cbbPayTimeA2.ItemIndex := -1;
    cbbPayTimeA3.ItemIndex := -1;
    cbbPayTimeA4.ItemIndex := -1;
    cbbPayTimeA1.Tag := 0;

    cxPayAmtA1.Value := 0;
    cxPayAmtA2.Value := 0;
    cxPayAmtA3.Value := 0;
    cxPayAmtA4.Value := 0;

    cxEdtPayMemoA1.Text := '';
    cxEdtPayMemoA2.Text := '';
    cxEdtPayMemoA3.Text := '';
    cxEdtPayMemoA4.Text := '';
    //-------------------------------------------

    chkTimePaySet2.Checked := False;
    chkTimePaySet2Click(chkTimePaySet2);

    chkOrderUseB1.Checked := False;
    chkOrderUseB2.Checked := False;
    chkOrderUseB3.Checked := False;
    chkOrderUseB4.Checked := False;

    cbbPayTimeB1.Tag := 1;
    cbbPayTimeB1.ItemIndex := -1;
    cbbPayTimeB2.ItemIndex := -1;
    cbbPayTimeB3.ItemIndex := -1;
    cbbPayTimeB4.ItemIndex := -1;
    cbbPayTimeB1.Tag := 0;

    cxPayAmtB1.Value := 0;
    cxPayAmtB2.Value := 0;
    cxPayAmtB3.Value := 0;
    cxPayAmtB4.Value := 0;

    cxEdtPayMemoB1.Text := '';
    cxEdtPayMemoB2.Text := '';
    cxEdtPayMemoB3.Text := '';
    cxEdtPayMemoB4.Text := '';
    //-------------------------------------------

		chkTimePaySet.Hint := '';
		chkOrderUse1.Hint  := 'n';
		cbbPayTime1.Hint   := '';
		cxPayAmt1.Hint     := '';
		cxEdtPayMemo1.Hint := '';
		chkOrderUse2.Hint  := 'n';
		cbbPayTime2.Hint   := '';
		cxPayAmt2.Hint     := '';
		cxEdtPayMemo2.Hint := '';
		chkOrderUse3.Hint  := 'n';
		cbbPayTime3.Hint   := '';
		cxPayAmt3.Hint     := '';
		cxEdtPayMemo3.Hint := '';
		chkOrderUse4.Hint  := 'n';
		cbbPayTime4.Hint   := '';
		cxPayAmt4.Hint     := '';
		cxEdtPayMemo4.Hint := '';
		
		chkTimePaySet1.Hint := '';
		chkOrderUseA1.Hint  := 'n';
		cbbPayTimeA1.Hint   := '';
		cxPayAmtA1.Hint     := '';
		cxEdtPayMemoA1.Hint := '';
		chkOrderUseA2.Hint  := 'n';
		cbbPayTimeA2.Hint   := '';
		cxPayAmtA2.Hint     := '';
		cxEdtPayMemoA2.Hint := '';
		chkOrderUseA3.Hint  := 'n';
		cbbPayTimeA3.Hint   := '';
		cxPayAmtA3.Hint     := '';
		cxEdtPayMemoA3.Hint := '';
		chkOrderUseA4.Hint  := 'n';
		cbbPayTimeA4.Hint   := '';
		cxPayAmtA4.Hint     := '';
		cxEdtPayMemoA4.Hint := '';
		
		chkTimePaySet2.Hint := '';
		chkOrderUseB1.Hint  := 'n';
		cbbPayTimeB1.Hint   := '';
		cxPayAmtB1.Hint     := '';
		cxEdtPayMemoB1.Hint := '';
		chkOrderUseB2.Hint  := 'n';
		cbbPayTimeB2.Hint   := '';
		cxPayAmtB2.Hint     := '';
		cxEdtPayMemoB2.Hint := '';
		chkOrderUseB3.Hint  := 'n';
		cbbPayTimeB3.Hint   := '';
		cxPayAmtB3.Hint     := '';
		cxEdtPayMemoB3.Hint := '';
		chkOrderUseB4.Hint  := 'n';
		cbbPayTimeB4.Hint   := '';
		cxPayAmtB4.Hint     := '';
		cxEdtPayMemoB4.Hint := '';
		
		Param := FBranchNo;

  	if not RequestBase(GetSel05('GET_BRANCH_TIME_PAY', 'MNG_BRANCH.GET_BRANCH_TIME_PAY', '100', Param), XmlData, ErrCode, ErrMsg) then
    begin
			GMessagebox(Format('시간별 결제 설정 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

    xdom := ComsDomDocument.Create;
    try
      xdom.loadXML(XmlData);

      lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

      if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
      begin
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
        ls_Rcrd := TStringList.Create;
        try
          cbbPayTime1.Tag := 1;
          cbbPayTimeA1.Tag := 1;
          cbbPayTimeB1.Tag := 1;
          for I := 0 to lst_Result.length - 1 do
          begin
            GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

						if ls_Rcrd[6] = '0' then  // 현금
						begin
							if ls_Rcrd[0] = 'y' then chkTimePaySet.Checked := True
																	else chkTimePaySet.Checked := False;
							chkTimePaySet.Hint := ls_Rcrd[0];
							chkTimePaySetClick(chkTimePaySet);

							if ls_Rcrd[1] = '1' then
							begin
								if ls_Rcrd[2] = 'y' then chkOrderUse1.Checked := True
																		else chkOrderUse1.Checked := False;
								cbbPayTime1.Text := ls_Rcrd[3] + '분 후';
								cxPayAmt1.Value := StrToFloatDef(ls_Rcrd[4], 0);
								cxEdtPayMemo1.Text := StringReplace(ls_Rcrd[5], ']', '', [rfReplaceAll]);

								chkOrderUse1.Hint := ls_Rcrd[2];
								cbbPayTime1.Hint := cbbPayTime1.Text;
								cxPayAmt1.Hint := cxPayAmt1.Text;
								cxEdtPayMemo1.Hint := cxEdtPayMemo1.Text;
							end;

							if ls_Rcrd[1] = '2' then
							begin
								if ls_Rcrd[2] = 'y' then chkOrderUse2.Checked := True
																		else chkOrderUse2.Checked := False;
								cbbPayTime2.Text := ls_Rcrd[3] + '분 후';
								cxPayAmt2.Value := StrToFloatDef(ls_Rcrd[4], 0);
								cxEdtPayMemo2.Text := StringReplace(ls_Rcrd[5], ']', '', [rfReplaceAll]);

								chkOrderUse2.Hint := ls_Rcrd[2];
								cbbPayTime2.Hint := cbbPayTime2.Text;
								cxPayAmt2.Hint := cxPayAmt2.Text;
								cxEdtPayMemo2.Hint := cxEdtPayMemo2.Text;
							end;

							if ls_Rcrd[1] = '3' then
              begin
                if ls_Rcrd[2] = 'y' then chkOrderUse3.Checked := True
																		else chkOrderUse3.Checked := False;
								cbbPayTime3.Text := ls_Rcrd[3] + '분 후';
								cxPayAmt3.Value := StrToFloatDef(ls_Rcrd[4], 0);
								cxEdtPayMemo3.Text := StringReplace(ls_Rcrd[5], ']', '', [rfReplaceAll]);

								chkOrderUse3.Hint := ls_Rcrd[2];
								cbbPayTime3.Hint := cbbPayTime3.Text;
								cxPayAmt3.Hint := cxPayAmt3.Text;
								cxEdtPayMemo3.Hint := cxEdtPayMemo3.Text;
							end;

              if ls_Rcrd[1] = '4' then
              begin
                if ls_Rcrd[2] = 'y' then chkOrderUse4.Checked := True
																		else chkOrderUse4.Checked := False;
								cbbPayTime4.Text := ls_Rcrd[3] + '분 후';
								cxPayAmt4.Value := StrToFloatDef(ls_Rcrd[4], 0);
								cxEdtPayMemo4.Text := StringReplace(ls_Rcrd[5], ']', '', [rfReplaceAll]);

								chkOrderUse4.Hint := ls_Rcrd[2];
								cbbPayTime4.Hint := cbbPayTime4.Text;
								cxPayAmt4.Hint := cxPayAmt4.Text;
								cxEdtPayMemo4.Hint := cxEdtPayMemo4.Text;
							end;
            end else
            if ls_Rcrd[6] = '2' then  // 후불
            begin
              if ls_Rcrd[0] = 'y' then chkTimePaySet1.Checked := True
                                  else chkTimePaySet1.Checked := False;
							chkTimePaySet1.Hint := ls_Rcrd[0];
							chkTimePaySet1Click(chkTimePaySet1);

              if ls_Rcrd[1] = '1' then
              begin
								if ls_Rcrd[2] = 'y' then chkOrderUseA1.Checked := True
                                    else chkOrderUseA1.Checked := False;
								cbbPayTimeA1.Text := ls_Rcrd[3] + '분 후';
								cxPayAmtA1.Value := StrToFloatDef(ls_Rcrd[4], 0);
								cxEdtPayMemoA1.Text := StringReplace(ls_Rcrd[5], ']', '', [rfReplaceAll]);

								chkOrderUseA1.Hint := ls_Rcrd[2];
								cbbPayTimeA1.Hint := cbbPayTimeA1.Text;
								cxPayAmtA1.Hint := cxPayAmtA1.Text;
								cxEdtPayMemoA1.Hint := cxEdtPayMemoA1.Text;
							end;

              if ls_Rcrd[1] = '2' then
              begin
                if ls_Rcrd[2] = 'y' then chkOrderUseA2.Checked := True
																		else chkOrderUseA2.Checked := False;
								cbbPayTimeA2.Text := ls_Rcrd[3] + '분 후';
								cxPayAmtA2.Value := StrToFloatDef(ls_Rcrd[4], 0);
								cxEdtPayMemoA2.Text := StringReplace(ls_Rcrd[5], ']', '', [rfReplaceAll]);

								chkOrderUseA2.Hint := ls_Rcrd[2];
								cbbPayTimeA2.Hint := cbbPayTimeA2.Text;
								cxPayAmtA2.Hint := cxPayAmtA2.Text;
								cxEdtPayMemoA2.Hint := cxEdtPayMemoA2.Text;
							end;

              if ls_Rcrd[1] = '3' then
              begin
                if ls_Rcrd[2] = 'y' then chkOrderUseA3.Checked := True
																		else chkOrderUseA3.Checked := False;
								cbbPayTimeA3.Text := ls_Rcrd[3] + '분 후';
								cxPayAmtA3.Value := StrToFloatDef(ls_Rcrd[4], 0);
								cxEdtPayMemoA3.Text := StringReplace(ls_Rcrd[5], ']', '', [rfReplaceAll]);

								chkOrderUseA3.Hint := ls_Rcrd[2];
								cbbPayTimeA3.Hint := cbbPayTimeA3.Text;
								cxPayAmtA3.Hint := cxPayAmtA3.Text;
								cxEdtPayMemoA3.Hint := cxEdtPayMemoA3.Text;
							end;

              if ls_Rcrd[1] = '4' then
              begin
                if ls_Rcrd[2] = 'y' then chkOrderUseA4.Checked := True
																		else chkOrderUseA4.Checked := False;
								cbbPayTimeA4.Text := ls_Rcrd[3] + '분 후';
								cxPayAmtA4.Value := StrToFloatDef(ls_Rcrd[4], 0);
								cxEdtPayMemoA4.Text := StringReplace(ls_Rcrd[5], ']', '', [rfReplaceAll]);

								chkOrderUseA4.Hint := ls_Rcrd[2];
								cbbPayTimeA4.Hint := cbbPayTimeA4.Text;
								cxPayAmtA4.Hint := cxPayAmtA4.Text;
								cxEdtPayMemoA4.Hint := cxEdtPayMemoA4.Text;
							end;
            end else
            if ls_Rcrd[6] = '8' then    // 후불(마일)
            begin
							if ls_Rcrd[0] = 'y' then chkTimePaySet2.Checked := True
                                  else chkTimePaySet2.Checked := False;
							chkTimePaySet2.Hint := ls_Rcrd[0];
							chkTimePaySet2Click(chkTimePaySet2);

              if ls_Rcrd[1] = '1' then
              begin
                if ls_Rcrd[2] = 'y' then chkOrderUseB1.Checked := True
																		else chkOrderUseB1.Checked := False;
								cbbPayTimeB1.Text := ls_Rcrd[3] + '분 후';
								cxPayAmtB1.Value := StrToFloatDef(ls_Rcrd[4], 0);
								cxEdtPayMemoB1.Text := StringReplace(ls_Rcrd[5], ']', '', [rfReplaceAll]);

								chkOrderUseB1.Hint := ls_Rcrd[2];
								cbbPayTimeB1.Hint := cbbPayTimeB1.Text;
								cxPayAmtB1.Hint := cxPayAmtB1.Text;
								cxEdtPayMemoB1.Hint := cxEdtPayMemoB1.Text;
							end;

              if ls_Rcrd[1] = '2' then
              begin
								if ls_Rcrd[2] = 'y' then chkOrderUseB2.Checked := True
                                    else chkOrderUseB2.Checked := False;
								cbbPayTimeB2.Text := ls_Rcrd[3] + '분 후';
								cxPayAmtB2.Value := StrToFloatDef(ls_Rcrd[4], 0);
								cxEdtPayMemoB2.Text := StringReplace(ls_Rcrd[5], ']', '', [rfReplaceAll]);

								chkOrderUseB2.Hint := ls_Rcrd[2];
								cbbPayTimeB2.Hint := cbbPayTimeB2.Text;
								cxPayAmtB2.Hint := cxPayAmtB2.Text;
								cxEdtPayMemoB2.Hint := cxEdtPayMemoB2.Text;
							end;

              if ls_Rcrd[1] = '3' then
              begin
								if ls_Rcrd[2] = 'y' then chkOrderUseB3.Checked := True
                                    else chkOrderUseB3.Checked := False;
								cbbPayTimeB3.Text := ls_Rcrd[3] + '분 후';
								cxPayAmtB3.Value := StrToFloatDef(ls_Rcrd[4], 0);
								cxEdtPayMemoB3.Text := StringReplace(ls_Rcrd[5], ']', '', [rfReplaceAll]);

								chkOrderUseB3.Hint := ls_Rcrd[2];
								cbbPayTimeB3.Hint := cbbPayTimeB3.Text;
								cxPayAmtB3.Hint := cxPayAmtB3.Text;
								cxEdtPayMemoB3.Hint := cxEdtPayMemoB3.Text;
							end;

              if ls_Rcrd[1] = '4' then
              begin
                if ls_Rcrd[2] = 'y' then chkOrderUseB4.Checked := True
																		else chkOrderUseB4.Checked := False;
								cbbPayTimeB4.Text := ls_Rcrd[3] + '분 후';
								cxPayAmtB4.Value := StrToFloatDef(ls_Rcrd[4], 0);
								cxEdtPayMemoB4.Text := StringReplace(ls_Rcrd[5], ']', '', [rfReplaceAll]);

								chkOrderUseB4.Hint := ls_Rcrd[2];
								cbbPayTimeB4.Hint := cbbPayTimeB4.Text;
								cxPayAmtB4.Hint := cxPayAmtB4.Text;
								cxEdtPayMemoB4.Hint := cxEdtPayMemoB4.Text;
							end;
            end;
          end;
					cbbPayTime1.Tag := 0;
					cbbPayTimeA1.Tag := 0;
					cbbPayTimeB1.Tag := 0;
				finally
					Frm_Flash.Hide;
					Screen.Cursor := crDefault;
					ls_Rcrd.Free;
        end;
      end;
    finally
      xdom := Nil;
    end;

    PnlSPSet.Left := (cxtbsht2.Width - PnlSPSet.Width) div 2;
    PnlSPSet.Top  := (cxtbsht2.Height - PnlSPSet.Height) div 2;
    PnlSPSet.Visible := True;
  except

  end;
end;

procedure TFrm_CMP01.btnSPSetExitClick(Sender: TObject);
begin
	PnlSPSet.Visible := False;
end;

procedure TFrm_CMP01.btnSPSetSaveAClick(Sender: TObject);
Var Param, XmlData, ErrMsg, Sec : String;     // 서버실제위치파일명
		ErrCode : Integer;
		sResult : string;
    i : Integer;
		tmpTextEdit : TcxTextEdit;
		tmpcxCheckBox : TcxCheckBox;
begin
	try
		if (IfThen(chkTimePaySet1.Checked, 'y', 'n') = chkTimePaySet1.Hint) and 
			 (IfThen(chkOrderUseA1 .Checked, 'y', 'n') = chkOrderUseA1 .Hint) and 
							(cbbPayTimeA1  .Hint = cbbPayTimeA1  .Text) and (cxPayAmtA1.Hint = cxPayAmtA1.Text) and 
							(cxEdtPayMemoA1.Hint = cxEdtPayMemoA1.Text) and 
			 (IfThen(chkOrderUseA2 .Checked, 'y', 'n') =  chkOrderUseA2 .Hint) and 
							(cbbPayTimeA2  .Hint = cbbPayTimeA2  .Text) and (cxPayAmtA2.Hint = cxPayAmtA2.Text) and 
							(cxEdtPayMemoA2.Hint = cxEdtPayMemoA2.Text) and 
			 (IfThen(chkOrderUseA3 .Checked, 'y', 'n') =  chkOrderUseA3 .Hint) and 
							(cbbPayTimeA3  .Hint = cbbPayTimeA3  .Text) and (cxPayAmtA3.Hint = cxPayAmtA3.Text) and 
							(cxEdtPayMemoA3.Hint = cxEdtPayMemoA3.Text) and 
			 (IfThen(chkOrderUseA4 .Checked, 'y', 'n') =  chkOrderUseA4 .Hint) and 
							(cbbPayTimeA4  .Hint = cbbPayTimeA4  .Text) and (cxPayAmtA4.Hint = cxPayAmtA4.Text) and 
							(cxEdtPayMemoA4.Hint = cxEdtPayMemoA4.Text) Then exit; 

		if chkOrderUseA1.Checked then
    begin
      if cbbPayTimeA1.ItemIndex = -1 then
      begin
        ShowMessage('1단계 시간을 설정해 주세요.');
        cbbPayTimeA1.SetFocus;
        Exit;
      end;

      if cxPayAmtA1.Value <= 0 then
      begin
        ShowMessage('1단계 기사송금을 설정해 주세요.');
        cxPayAmtA1.SetFocus;
        Exit;
      end;
    end;

    if chkOrderUseA2.Checked then
    begin
      if cbbPayTimeA2.ItemIndex = -1 then
      begin
        ShowMessage('2단계 시간을 설정해 주세요.');
        cbbPayTimeA2.SetFocus;
        Exit;
      end;

      if cxPayAmtA2.Value <= 0 then
      begin
        ShowMessage('2단계 기사송금을 설정해 주세요.');
        cxPayAmtA2.SetFocus;
        Exit;
      end;
    end;

    if chkOrderUseA3.Checked then
    begin
      if cbbPayTimeA3.ItemIndex = -1 then
      begin
        ShowMessage('3단계 시간을 설정해 주세요.');
        cbbPayTimeA3.SetFocus;
        Exit;
      end;

      if cxPayAmtA3.Value <= 0 then
      begin
        ShowMessage('3단계 기사송금을 설정해 주세요.');
        cxPayAmtA3.SetFocus;
        Exit;
      end;
    end;

    if chkOrderUseA4.Checked then
    begin
      if cbbPayTimeA4.ItemIndex = -1 then
      begin
        ShowMessage('4단계 시간을 설정해 주세요.');
        cbbPayTimeA4.SetFocus;
        Exit;
      end;

      if cxPayAmtA4.Value <= 0 then
      begin
        ShowMessage('4단계 기사송금을 설정해 주세요.');
        cxPayAmtA4.SetFocus;
        Exit;
      end;
    end;

		for i := 1 to 4 do
		begin
			tmpTextEdit := TcxTextEdit(FindComponent('cxEdtPayMemoA' + IntToStr(I)));	
			tmpcxCheckBox := TcxCheckBox(FindComponent('chkOrderUseA' + IntToStr(I)));	
			sResult := func_EucKr_CheckSMS(tmpTextEdit.Text);
			if sResult <> '' then
			begin
				GMessagebox(Format('         [%s] <<< 문자오류' + #13#10 + #13#10 + '이 문자는 올바른 표기가 아닙니다. '  + #13#10 
					+ '정확히 입력하여 주십시오.', [sResult]), CDMSE);
				if tmpcxCheckBox.checked then
					tmpTextEdit.SetFocus;
				Exit;
			end;
		end;
		Param := FBranchNo;

    if chkTimePaySet1.Checked then Param := Param + '│y'
                              else Param := Param + '│n';

    if chkOrderUseA1.Checked then Param := Param + '│1,y,'
                             else Param := Param + '│1,n,';
    Sec := Copy(cbbPayTimeA1.Text, 1, Pos('분 후', cbbPayTimeA1.Text) - 1);
    Param := Param + Sec + ',' + FloatToStr(cxPayAmtA1.Value) + ',' + En_Coding(StringReplace(cxEdtPayMemoA1.Text, ']', '', [rfReplaceAll])) + IfThen(Trim(cxEdtPayMemoA1.Text) = '', '', ']');

    if chkOrderUseA2.Checked then Param := Param + '│2,y,'
                             else Param := Param + '│2,n,';
    Sec := Copy(cbbPayTimeA2.Text, 1, Pos('분 후', cbbPayTimeA2.Text) - 1);
    Param := Param + Sec + ',' + FloatToStr(cxPayAmtA2.Value) + ',' + En_Coding(StringReplace(cxEdtPayMemoA2.Text, ']', '', [rfReplaceAll])) + IfThen(Trim(cxEdtPayMemoA2.Text) = '', '', ']');

    if chkOrderUseA3.Checked then Param := Param + '│3,y,'
                             else Param := Param + '│3,n,';
    Sec := Copy(cbbPayTimeA3.Text, 1, Pos('분 후', cbbPayTimeA3.Text) - 1);
    Param := Param + Sec + ',' + FloatToStr(cxPayAmtA3.Value) + ',' + En_Coding(StringReplace(cxEdtPayMemoA3.Text, ']', '', [rfReplaceAll])) + IfThen(Trim(cxEdtPayMemoA3.Text) = '', '', ']');

    if chkOrderUseA4.Checked then Param := Param + '│4,y,'
                             else Param := Param + '│4,n,';
    Sec := Copy(cbbPayTimeA4.Text, 1, Pos('분 후', cbbPayTimeA4.Text) - 1);
    Param := Param + Sec + ',' + FloatToStr(cxPayAmtA4.Value) + ',' + En_Coding(StringReplace(cxEdtPayMemoA4.Text, ']', '', [rfReplaceAll])) + IfThen(Trim(cxEdtPayMemoA4.Text) = '', '', ']');

    Param := Param + '│2';

		if not RequestBase(GetCallable05('SET_BRANCH_TIME_PAY', 'MNG_BRANCH.SET_BRANCH_TIME_PAY', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
    end;

		chkTimePaySet1.Hint := ifThen(chkTimePaySet1.checked, 'y', 'n');
		chkOrderUseA1.Hint  := ifThen(chkOrderUseA1.checked, 'y', 'n');
		cbbPayTimeA1.Hint   := cbbPayTimeA1.Text;
		cxPayAmtA1.Hint     := cxPayAmtA1.Text;
		cxEdtPayMemoA1.Hint := cxEdtPayMemoA1.Text;
		chkOrderUseA2.Hint  := ifThen(chkOrderUseA2.checked, 'y', 'n');
		cbbPayTimeA2.Hint   := cbbPayTimeA2.Text  ;
		cxPayAmtA2.Hint     := cxPayAmtA2.Text    ;
		cxEdtPayMemoA2.Hint := cxEdtPayMemoA2.Text;
		chkOrderUseA3.Hint  := ifThen(chkOrderUseA3.checked, 'y', 'n');
		cbbPayTimeA3.Hint   := cbbPayTimeA3.Text  ;
		cxPayAmtA3.Hint     := cxPayAmtA3.Text    ;
		cxEdtPayMemoA3.Hint := cxEdtPayMemoA3.Text;
		chkOrderUseA4.Hint  := ifThen(chkOrderUseA4.checked, 'y', 'n');
		cbbPayTimeA4.Hint   := cbbPayTimeA4.Text  ;
		cxPayAmtA4.Hint     := cxPayAmtA4.Text    ;
		cxEdtPayMemoA4.Hint := cxEdtPayMemoA4.Text;

		ShowMessage('저장되었습니다.');
  except
    ShowMessage('저장 중 오류 발생');
  end;
end;

procedure TFrm_CMP01.btnSPSetSaveBClick(Sender: TObject);
Var Param, XmlData, ErrMsg, Sec : String;     // 서버실제위치파일명
    ErrCode : Integer;
		sResult : string;
    i : Integer;
		tmpTextEdit : TcxTextEdit;
		tmpcxCheckBox : TcxCheckBox;
begin
	try
		if (IfThen(chkTimePaySet2.Checked, 'y', 'n') =  chkTimePaySet2.Hint) and 
			 (IfThen(chkOrderUseB1 .Checked, 'y', 'n') =  chkOrderUseB1 .Hint) and 
							(cbbPayTimeB1  .Hint = cbbPayTimeB1  .Text) and (cxPayAmtB1.Hint = cxPayAmtB1.Text) and 
							(cxEdtPayMemoB1.Hint = cxEdtPayMemoB1.Text) and 
			 (IfThen(chkOrderUseB2 .Checked, 'y', 'n') =  chkOrderUseB2 .Hint) and 
							(cbbPayTimeB2  .Hint = cbbPayTimeB2  .Text) and (cxPayAmtB2.Hint = cxPayAmtB2.Text) and 
							(cxEdtPayMemoB2.Hint = cxEdtPayMemoB2.Text) and 
			 (IfThen(chkOrderUseB3 .Checked, 'y', 'n') =  chkOrderUseB3 .Hint) and 
							(cbbPayTimeB3  .Hint = cbbPayTimeB3  .Text) and (cxPayAmtB3.Hint = cxPayAmtB3.Text) and 
							(cxEdtPayMemoB3.Hint = cxEdtPayMemoB3.Text) and 
			 (IfThen(chkOrderUseB4 .Checked, 'y', 'n') =  chkOrderUseB4 .Hint) and 
							(cbbPayTimeB4  .Hint = cbbPayTimeB4  .Text) and (cxPayAmtB4.Hint = cxPayAmtB4.Text) and 
							(cxEdtPayMemoB4.Hint = cxEdtPayMemoB4.Text) Then exit; 

		if chkOrderUseB1.Checked then
    begin
      if cbbPayTimeB1.ItemIndex = -1 then
      begin
        ShowMessage('1단계 시간을 설정해 주세요.');
        cbbPayTimeB1.SetFocus;
        Exit;
      end;

      if cxPayAmtB1.Value <= 0 then
      begin
        ShowMessage('1단계 기사송금을 설정해 주세요.');
        cxPayAmtB1.SetFocus;
        Exit;
      end;
    end;

    if chkOrderUseB2.Checked then
    begin
      if cbbPayTimeB2.ItemIndex = -1 then
      begin
        ShowMessage('2단계 시간을 설정해 주세요.');
        cbbPayTimeB2.SetFocus;
        Exit;
      end;

      if cxPayAmtB2.Value <= 0 then
      begin
        ShowMessage('2단계 기사송금을 설정해 주세요.');
        cxPayAmtB2.SetFocus;
        Exit;
      end;
    end;

    if chkOrderUseB3.Checked then
    begin
      if cbbPayTimeB3.ItemIndex = -1 then
      begin
        ShowMessage('3단계 시간을 설정해 주세요.');
        cbbPayTimeB3.SetFocus;
        Exit;
      end;

      if cxPayAmtB3.Value <= 0 then
      begin
        ShowMessage('3단계 기사송금을 설정해 주세요.');
        cxPayAmtB3.SetFocus;
        Exit;
      end;
    end;

    if chkOrderUseB4.Checked then
    begin
      if cbbPayTimeB4.ItemIndex = -1 then
      begin
        ShowMessage('4단계 시간을 설정해 주세요.');
        cbbPayTimeB4.SetFocus;
        Exit;
      end;

      if cxPayAmtB4.Value <= 0 then
      begin
        ShowMessage('4단계 기사송금을 설정해 주세요.');
        cxPayAmtB4.SetFocus;
        Exit;
      end;
    end;

		for i := 1 to 4 do
		begin
			tmpTextEdit := TcxTextEdit(FindComponent('cxEdtPayMemoB' + IntToStr(I)));	
			tmpcxCheckBox := TcxCheckBox(FindComponent('chkOrderUseB' + IntToStr(I)));	
			sResult := func_EucKr_CheckSMS(tmpTextEdit.Text);
			if sResult <> '' then
			begin
				GMessagebox(Format('         [%s] <<< 문자오류' + #13#10 + #13#10 + '이 문자는 올바른 표기가 아닙니다. '  + #13#10 
					+ '정확히 입력하여 주십시오.', [sResult]), CDMSE);
				if tmpcxCheckBox.checked then
					tmpTextEdit.SetFocus;
				Exit;
			end;
		end;
		Param := FBranchNo;

    if chkTimePaySet2.Checked then Param := Param + '│y'
                              else Param := Param + '│n';

    if chkOrderUseB1.Checked then Param := Param + '│1,y,'
                             else Param := Param + '│1,n,';
    Sec := Copy(cbbPayTimeB1.Text, 1, Pos('분 후', cbbPayTimeB1.Text) - 1);
    Param := Param + Sec + ',' + FloatToStr(cxPayAmtB1.Value) + ',' + En_Coding(StringReplace(cxEdtPayMemoB1.Text, ']', '', [rfReplaceAll])) + IfThen(Trim(cxEdtPayMemoB1.Text) = '', '', ']');

    if chkOrderUseB2.Checked then Param := Param + '│2,y,'
                             else Param := Param + '│2,n,';
    Sec := Copy(cbbPayTimeB2.Text, 1, Pos('분 후', cbbPayTimeB2.Text) - 1);
    Param := Param + Sec + ',' + FloatToStr(cxPayAmtB2.Value) + ',' + En_Coding(StringReplace(cxEdtPayMemoB2.Text, ']', '', [rfReplaceAll])) + IfThen(Trim(cxEdtPayMemoB2.Text) = '', '', ']');

    if chkOrderUseB3.Checked then Param := Param + '│3,y,'
                             else Param := Param + '│3,n,';
    Sec := Copy(cbbPayTimeB3.Text, 1, Pos('분 후', cbbPayTimeB3.Text) - 1);
    Param := Param + Sec + ',' + FloatToStr(cxPayAmtB3.Value) + ',' + En_Coding(StringReplace(cxEdtPayMemoB3.Text, ']', '', [rfReplaceAll])) + IfThen(Trim(cxEdtPayMemoB3.Text) = '', '', ']');

    if chkOrderUseB4.Checked then Param := Param + '│4,y,'
                             else Param := Param + '│4,n,';
    Sec := Copy(cbbPayTimeB4.Text, 1, Pos('분 후', cbbPayTimeB4.Text) - 1);
    Param := Param + Sec + ',' + FloatToStr(cxPayAmtB4.Value) + ',' + En_Coding(StringReplace(cxEdtPayMemoB4.Text, ']', '', [rfReplaceAll])) + IfThen(Trim(cxEdtPayMemoB4.Text) = '', '', ']');

    Param := Param + '│8';

		if not RequestBase(GetCallable05('SET_BRANCH_TIME_PAY', 'MNG_BRANCH.SET_BRANCH_TIME_PAY', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

		chkTimePaySet2.Hint := ifThen(chkTimePaySet2.checked, 'y', 'n');
		chkOrderUseB1.Hint  := ifThen(chkOrderUseB1.checked, 'y', 'n');
		cbbPayTimeB1.Hint   := cbbPayTimeB1.Text;
		cxPayAmtB1.Hint     := cxPayAmtB1.Text;
		cxEdtPayMemoB1.Hint := cxEdtPayMemoB1.Text;
		chkOrderUseB2.Hint  := ifThen(chkOrderUseB2.checked, 'y', 'n');
		cbbPayTimeB2.Hint   := cbbPayTimeB2.Text  ;
		cxPayAmtB2.Hint     := cxPayAmtB2.Text    ;
		cxEdtPayMemoB2.Hint := cxEdtPayMemoB2.Text;
		chkOrderUseB3.Hint  := ifThen(chkOrderUseB3.checked, 'y', 'n');
		cbbPayTimeB3.Hint   := cbbPayTimeB3.Text  ;
		cxPayAmtB3.Hint     := cxPayAmtB3.Text    ;
		cxEdtPayMemoB3.Hint := cxEdtPayMemoB3.Text;
		chkOrderUseB4.Hint  := ifThen(chkOrderUseB4.checked, 'y', 'n');
		cbbPayTimeB4.Hint   := cbbPayTimeB4.Text  ;
		cxPayAmtB4.Hint     := cxPayAmtB4.Text    ;
		cxEdtPayMemoB4.Hint := cxEdtPayMemoB4.Text;

		ShowMessage('저장되었습니다.');
	except
    ShowMessage('저장 중 오류 발생');
  end;
end;

procedure TFrm_CMP01.btnSPSetSaveClick(Sender: TObject);
Var Param, XmlData, ErrMsg, Sec : String;     // 서버실제위치파일명
		ErrCode : Integer;
		bTmp3 : Boolean;
		sResult : string; iTmp, i : Integer;
		tmpTextEdit : TcxTextEdit;
		tmpcxCheckBox : TcxCheckBox;
begin
	try
		if (IfThen(chkTimePaySet.Checked, 'y', 'n') =  chkTimePaySet.Hint) and 
			 (IfThen(chkOrderUse1 .Checked, 'y', 'n') =  chkOrderUse1 .Hint) and 
							(cbbPayTime1  .Hint = cbbPayTime1  .Text) and (cxPayAmt1.Hint = cxPayAmt1.Text) and 
							(cxEdtPayMemo1.Hint = cxEdtPayMemo1.Text) and 
			 (IfThen(chkOrderUse2 .Checked, 'y', 'n') =  chkOrderUse2 .Hint) and 
							(cbbPayTime2  .Hint = cbbPayTime2  .Text) and (cxPayAmt2.Hint = cxPayAmt2.Text) and 
							(cxEdtPayMemo2.Hint = cxEdtPayMemo2.Text) and 
			 (IfThen(chkOrderUse3 .Checked, 'y', 'n') =  chkOrderUse3 .Hint) and 
							(cbbPayTime3  .Hint = cbbPayTime3  .Text) and (cxPayAmt3.Hint = cxPayAmt3.Text) and 
							(cxEdtPayMemo3.Hint = cxEdtPayMemo3.Text) and 
			 (IfThen(chkOrderUse4 .Checked, 'y', 'n') =  chkOrderUse4 .Hint) and 
							(cbbPayTime4  .Hint = cbbPayTime4  .Text) and (cxPayAmt4.Hint = cxPayAmt4.Text) and 
							(cxEdtPayMemo4.Hint = cxEdtPayMemo4.Text) Then exit; 

		if chkOrderUse1.Checked then
		begin
			if cbbPayTime1.ItemIndex = -1 then
      begin
        ShowMessage('1단계 시간을 설정해 주세요.');
        cbbPayTime1.SetFocus;
        Exit;
      end;

      if cxPayAmt1.Value <= 0 then
      begin
        ShowMessage('1단계 기사송금을 설정해 주세요.');
        cxPayAmt1.SetFocus;
        Exit;
      end;
    end;

    if chkOrderUse2.Checked then
    begin
      if cbbPayTime2.ItemIndex = -1 then
      begin
        ShowMessage('2단계 시간을 설정해 주세요.');
        cbbPayTime2.SetFocus;
        Exit;
      end;

      if cxPayAmt2.Value <= 0 then
      begin
        ShowMessage('2단계 기사송금을 설정해 주세요.');
        cxPayAmt2.SetFocus;
        Exit;
      end;
    end;

    if chkOrderUse3.Checked then
    begin
      if cbbPayTime3.ItemIndex = -1 then
      begin
        ShowMessage('3단계 시간을 설정해 주세요.');
        cbbPayTime3.SetFocus;
        Exit;
      end;

      if cxPayAmt3.Value <= 0 then
      begin
        ShowMessage('3단계 기사송금을 설정해 주세요.');
        cxPayAmt3.SetFocus;
        Exit;
      end;
    end;

    if chkOrderUse4.Checked then
    begin
      if cbbPayTime4.ItemIndex = -1 then
      begin
        ShowMessage('4단계 시간을 설정해 주세요.');
        cbbPayTime4.SetFocus;
        Exit;
      end;

      if cxPayAmt4.Value <= 0 then
      begin
        ShowMessage('4단계 기사송금을 설정해 주세요.');
        cxPayAmt4.SetFocus;
        Exit;
      end;
    end;

		for i := 1 to 4 do
		begin
			tmpTextEdit := TcxTextEdit(FindComponent('cxEdtPayMemo' + IntToStr(I)));	
			tmpcxCheckBox := TcxCheckBox(FindComponent('chkOrderUse' + IntToStr(I)));	
			sResult := func_EucKr_CheckSMS(tmpTextEdit.Text);
			if sResult <> '' then
			begin
				GMessagebox(Format('         [%s] <<< 문자오류' + #13#10 + #13#10 + '이 문자는 올바른 표기가 아닙니다. '  + #13#10 
					+ '정확히 입력하여 주십시오.', [sResult]), CDMSE);
				if tmpcxCheckBox.checked then
					tmpTextEdit.SetFocus;

				Exit;
			end;
		end;

		Param := FBranchNo;

    if chkTimePaySet.Checked then Param := Param + '│y'
                             else Param := Param + '│n';

    if chkOrderUse1.Checked then Param := Param + '│1,y,'
                            else Param := Param + '│1,n,';
    Sec := Copy(cbbPayTime1.Text, 1, Pos('분 후', cbbPayTime1.Text) - 1);
    Param := Param + Sec + ',' + FloatToStr(cxPayAmt1.Value) + ',' + En_Coding(StringReplace(cxEdtPayMemo1.Text, ']', '', [rfReplaceAll])) + IfThen(Trim(cxEdtPayMemo1.Text) = '', '', ']');

    if chkOrderUse2.Checked then Param := Param + '│2,y,'
                            else Param := Param + '│2,n,';
    Sec := Copy(cbbPayTime2.Text, 1, Pos('분 후', cbbPayTime2.Text) - 1);
    Param := Param + Sec + ',' + FloatToStr(cxPayAmt2.Value) + ',' + En_Coding(StringReplace(cxEdtPayMemo2.Text, ']', '', [rfReplaceAll])) + IfThen(Trim(cxEdtPayMemo2.Text) = '', '', ']');

    if chkOrderUse3.Checked then Param := Param + '│3,y,'
                            else Param := Param + '│3,n,';
    Sec := Copy(cbbPayTime3.Text, 1, Pos('분 후', cbbPayTime3.Text) - 1);
    Param := Param + Sec + ',' + FloatToStr(cxPayAmt3.Value) + ',' + En_Coding(StringReplace(cxEdtPayMemo3.Text, ']', '', [rfReplaceAll])) + IfThen(Trim(cxEdtPayMemo3.Text) = '', '', ']');

    if chkOrderUse4.Checked then Param := Param + '│4,y,'
                            else Param := Param + '│4,n,';
    Sec := Copy(cbbPayTime4.Text, 1, Pos('분 후', cbbPayTime4.Text) - 1);
    Param := Param + Sec + ',' + FloatToStr(cxPayAmt4.Value) + ',' + En_Coding(StringReplace(cxEdtPayMemo4.Text, ']', '', [rfReplaceAll])) + IfThen(Trim(cxEdtPayMemo4.Text) = '', '', ']');

    Param := Param + '│0';

		if not RequestBase(GetCallable05('SET_BRANCH_TIME_PAY', 'MNG_BRANCH.SET_BRANCH_TIME_PAY', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

		chkTimePaySet.Hint := ifThen(chkTimePaySet.checked, 'y', 'n');
		chkOrderUse1.Hint  := ifThen(chkOrderUse1.checked, 'y', 'n');
		cbbPayTime1.Hint   := cbbPayTime1.Text;
		cxPayAmt1.Hint     := cxPayAmt1.Text;
		cxEdtPayMemo1.Hint := cxEdtPayMemo1.Text;
		chkOrderUse2.Hint  := ifThen(chkOrderUse2.checked, 'y', 'n');
		cbbPayTime2.Hint   := cbbPayTime2.Text  ;
		cxPayAmt2.Hint     := cxPayAmt2.Text    ;
		cxEdtPayMemo2.Hint := cxEdtPayMemo2.Text;
		chkOrderUse3.Hint  := ifThen(chkOrderUse3.checked, 'y', 'n');
		cbbPayTime3.Hint   := cbbPayTime3.Text  ;
		cxPayAmt3.Hint     := cxPayAmt3.Text    ;
		cxEdtPayMemo3.Hint := cxEdtPayMemo3.Text;
		chkOrderUse4.Hint  := ifThen(chkOrderUse4.checked, 'y', 'n');
		cbbPayTime4.Hint   := cbbPayTime4.Text  ;
		cxPayAmt4.Hint     := cxPayAmt4.Text    ;
		cxEdtPayMemo4.Hint := cxEdtPayMemo4.Text;

		ShowMessage('저장되었습니다.');
  except
		ShowMessage('저장 중 오류 발생');
  end;
end;

procedure TFrm_CMP01.btn_CancelClick(Sender: TObject);
begin
	btnClose.click;
end;

procedure TFrm_CMP01.btn_KDAgreeClick(Sender: TObject);
const
	BRANCH_UPDATE_KEY = 'BRIF000U';
begin
	pnl_Notice.visible := False;
	chk_KDAgree.checked := True;

	proc_KakaoShareAgree; //카카오 동의 저장

	btnEdit.enabled := True;
end;

procedure TFrm_CMP01.rbBaseBrUseYClick(Sender: TObject);
begin
//  if rbBaseBrUseY.Checked = True then
//  Exit;
  // 수도권만 지사명 변경 못함.       2011.12.26 지사사용유무 수도권만 적용       KHS
  // 사용함->사용안함 변경가능, 사용안함->사용함 변경불가
	// 지사 사용유무 변경 못하게 수도권/지방권 모두 적용  2018.06.05 LYB .. 정회귀 팀장님 요청
//  if (GS_PRJ_AREA <> 'O') then
  begin
    if rbBaseBrUseN.Checked = False then
    begin
      if rbBaseBrUseY_Chk = 1 then
      begin
        rbBaseBrUseY_Chk := 0;
        Exit;
      end else
      begin
        rbBaseBrUseY.Checked := False;
        rbBaseBrUseN.Checked := True;
      end;
    end;
  end;
end;

procedure TFrm_CMP01.btn1Click(Sender: TObject);
begin
	if ( Not Assigned(Frm_CMP016) ) Or ( Frm_CMP016 = Nil ) then Frm_CMP016 := TFrm_CMP016.Create(Nil);
	Frm_CMP016.SetBrCode(FBranchNo, FBranchName);
  Frm_CMP016.ShowModal;
end;

end.

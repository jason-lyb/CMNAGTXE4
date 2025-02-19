unit xe_SETA1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, xe_GNL2, xe_GNL, xe_JON016, ShellAPI,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MMSystem, cxGraphics, cxControls,
  cxLookAndFeels, System.Math, System.StrUtils, MSXML2_TLB,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCheckBox,
  cxLabel, Vcl.StdCtrls, Vcl.Buttons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxListBox, cxRadioGroup, cxButtons, cxTextEdit,
  cxGroupBox, cxScrollBox, dxGDIPlusClasses, Vcl.ExtCtrls, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, Vcl.ComCtrls, cxTreeView,
  cxMaskEdit, cxDropDownEdit, cxPCdxBarPopupMenu, cxPC, AdvGlowButton, IniFiles,
  cxCheckListBox, dxBarBuiltInMenu, dxSkinsCore,
  dxSkinscxPCPainter, cxMemo, cxRichEdit, cxImage,
  cxSplitter, dxDateRanges, cxCustomListBox, dxSkinOffice2010Silver, dxSkinSharp, cxProgressBar, cxFontNameComboBox, dxSkinMetropolisDark,
  dxSkinOffice2007Silver, cxCurrencyEdit, dxScrollbarAnnotations;

type
  TFrm_SETA1 = class(TForm)
    ColorDialog1: TColorDialog;
    dlgOpen: TOpenDialog;
    PnlTitle: TPanel;
    pnlLeft: TPanel;
    cxTreeView1: TcxTreeView;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel177: TcxLabel;
    cxLabel176: TcxLabel;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    cxTabSheet12: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    rb_View_DayTime: TcxRadioButton;
    rb_View_Time: TcxRadioButton;
    cxGroupBox6: TcxGroupBox;
    cxLabellbl15: TcxLabel;
    lb_FastFind: TcxListBox;
    btnFastFindIn: TcxButton;
    btnFastFindOut: TcxButton;
    btnFastFindSave: TcxButton;
    cxGroupBox7: TcxGroupBox;
    lb_stat: TcxListBox;
    btn_StatUp: TcxButton;
    btn_StatDn: TcxButton;
    btn_StatSave: TcxButton;
    cxGroupBox8: TcxGroupBox;
    rb_IDNAME: TcxRadioButton;
    rb_ID: TcxRadioButton;
    cxGroupBox10: TcxGroupBox;
    cxCheckBox2: TcxCheckBox;
    RDO_OR_COLOR1: TcxRadioButton;
    RDO_OR_COLOR2: TcxRadioButton;
    cxButton59: TcxButton;
    cxButton60: TcxButton;
    cxGroupBox9: TcxGroupBox;
    btn_wR1: TSpeedButton;
    btn_wR2: TSpeedButton;
    chkJONAddRing: TcxCheckBox;
    btnAddRing: TcxButton;
    ed_AddRing: TcxTextEdit;
    chkJONDelRing: TcxCheckBox;
    btnDelRing: TcxButton;
    ed_DelRing: TcxTextEdit;
    cxGroupBox12: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxListBox1: TcxListBox;
    btnNmlAcceptReset: TcxButton;
    btnNmlAcceptReload: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton3: TcxButton;
    cxListBox2: TcxListBox;
    cxLabel14: TcxLabel;
    lbl1: TcxLabel;
    cxGroupBox13: TcxGroupBox;
    lbl5: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    chkOrderColor: TcxCheckBox;
    lblOrderColor4: TcxLabel;
    lblOrderColor3: TcxLabel;
    lblOrderColor2: TcxLabel;
    lblOrderColor1: TcxLabel;
    cbbOrderTime1: TcxComboBox;
    cbbOrderTime2: TcxComboBox;
    cbbOrderTime3: TcxComboBox;
    cbbOrderTime4: TcxComboBox;
    chkOrderUse4: TcxCheckBox;
    chkOrderUse3: TcxCheckBox;
    chkOrderUse2: TcxCheckBox;
    chkOrderUse1: TcxCheckBox;
    cxGroupBox11: TcxGroupBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    chkNmlAutoScrollTop: TcxCheckBox;
    cxLabel3: TcxLabel;
    chkNmlRetryNoShowWin: TcxCheckBox;
    chkNmlReadyNoShowWin: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    BtnClose: TcxButton;
    cxTabSheet13: TcxTabSheet;
    cxTabSheet14: TcxTabSheet;
    cxTabSheet15: TcxTabSheet;
    cxTabSheet16: TcxTabSheet;
    cxTabSheet17: TcxTabSheet;
    cxTabSheet18: TcxTabSheet;
    cxTabSheet19: TcxTabSheet;
    cxTabSheet20: TcxTabSheet;
    cxTabSheet21: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    cxRadioButton16: TcxRadioButton;
    cxRadioButton17: TcxRadioButton;
    cxRadioButton18: TcxRadioButton;
    cxRadioButton19: TcxRadioButton;
    cxRadioButton20: TcxRadioButton;
    cxRadioButton21: TcxRadioButton;
    cxRadioButton22: TcxRadioButton;
    cxRadioButton23: TcxRadioButton;
    cxRadioButton24: TcxRadioButton;
    cxRadioButton25: TcxRadioButton;
    cxRadioButton26: TcxRadioButton;
    cxRadioButton27: TcxRadioButton;
    cxRadioButton28: TcxRadioButton;
    cxRadioButton29: TcxRadioButton;
    cxRadioButton30: TcxRadioButton;
    cxRadioButton31: TcxRadioButton;
    cxRadioButton32: TcxRadioButton;
    chkCustTelAddDDD: TcxCheckBox;
    cxGroupBox14: TcxGroupBox;
    lb_map: TcxListBox;
    lb_sel_map: TcxListBox;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton6: TcxButton;
    cxGroupBox15: TcxGroupBox;
    rg_charge_pc: TcxRadioButton;
    rg_charge_ser: TcxRadioButton;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    RbButton19: TcxButton;
    ed_port: TcxTextEdit;
    ed_id: TcxTextEdit;
    ed_pw: TcxTextEdit;
    cxLabelcxlbl1: TcxLabel;
    ed_db_sid: TcxTextEdit;
    cxGroupBox16: TcxGroupBox;
    rb_charge_cal0: TcxRadioButton;
    rb_charge_cal1: TcxRadioButton;
    RbCheckBox1: TcxCheckBox;
    cxLabel41: TcxLabel;
    cxGroupBox17: TcxGroupBox;
    rb_prg_Main: TcxRadioButton;
    rb_prg_Sub: TcxRadioButton;
    cxGroupBox18: TcxGroupBox;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    ed_MaddBrchName: TcxComboBox;
    ed_Key_Number: TcxComboBox;
    ed_MaddBrch: TcxTextEdit;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    edtAcceptBrName: TcxTextEdit;
    edtAcceptKeyNum: TcxTextEdit;
    edtAcceptBrNo: TcxTextEdit;
    cxGroupBox19: TcxGroupBox;
    chkJON01_UPMODE: TcxCheckBox;
    cxGroupBox21: TcxGroupBox;
    chkJON01_AUTOLOCK: TcxCheckBox;
    cxGroupBox20: TcxGroupBox;
    rbMainTelRateY: TcxRadioButton;
    rbMainTelRateN: TcxRadioButton;
    cxLabel178: TcxLabel;
    chkOrderChargeCheck: TcxCheckBox;
    rbchkMainTelRate: TcxCheckBox;
    rbRateRemarkMaintain: TcxCheckBox;
    chkJONBubinMenu: TcxCheckBox;
    cxLabel43: TcxLabel;
    PnlchkMainTelRate: TcxGroupBox;
    cxTabSheet22: TcxTabSheet;
    cxTabSheet23: TcxTabSheet;
    cxTabSheet24: TcxTabSheet;
    cxTabSheet25: TcxTabSheet;
    cxTabSheet26: TcxTabSheet;
    cxTabSheet27: TcxTabSheet;
    cxTabSheet28: TcxTabSheet;
    cxTabSheet29: TcxTabSheet;
    cxTabSheet30: TcxTabSheet;
    cxGroupBox23: TcxGroupBox;
    cxChkAfterMoney: TcxCheckBox;
    cxChkCreditMoney: TcxCheckBox;
    cxLbAfterMoney: TcxLabel;
    cbb_AfterMoney: TcxComboBox;
    cxChkAfterMoneyWordUse: TcxCheckBox;
    cxGroupBox24: TcxGroupBox;
    RbButton22: TcxButton;
    btn3: TcxButton;
    rb_Local_Both: TcxRadioButton;
    rb_Local_Data: TcxRadioButton;
    rb_Local_DB: TcxRadioButton;
    rbNmlShopCallCenterY: TcxRadioButton;
    rbNmlShopCallCenterN: TcxRadioButton;
    cxGroupBox25: TcxGroupBox;
    cxGroupBox26: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    pnl_Accept: TcxLabel;
    gbx2: TcxGroupBox;
    chk_LevelColor: TcxCheckBox;
    RbRadioButton3: TcxRadioButton;
    RbRadioButton4: TcxRadioButton;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxGroupBox27: TcxGroupBox;
    chkWKCONAutoScrollTop: TcxCheckBox;
    cxGroupBox28: TcxGroupBox;
    cxTabSheet31: TcxTabSheet;
    cxTabSheet32: TcxTabSheet;
    cxTabSheet33: TcxTabSheet;
    cxTabSheet34: TcxTabSheet;
    cxTabSheet35: TcxTabSheet;
    cxTabSheet36: TcxTabSheet;
    lblNmlTRSPenaltySetInfo: TcxLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lblNmlTRSType1Name: TcxLabel;
    lblNmlTRSType1Cap1: TcxLabel;
    lblNmlTRSType1Cap3: TcxLabel;
    lblNmlTRSType1Cap2: TcxLabel;
    edtNmlTRSType1Name: TcxTextEdit;
    lblNmlTRSType1Step1: TcxLabel;
    chkNmlTRSType1StepUse1: TcxCheckBox;
    lblNmlTRSType1Step2: TcxLabel;
    chkNmlTRSType1StepUse2: TcxCheckBox;
    lblNmlTRSType1Step3: TcxLabel;
    chkNmlTRSType1StepUse3: TcxCheckBox;
    chkNmlTRSType1Unlock1: TcxCheckBox;
    edtNmlTRSType1Unlock1: TcxTextEdit;
    chkNmlTRSType1Unlock2: TcxCheckBox;
    edtNmlTRSType1Unlock2: TcxTextEdit;
    chkNmlTRSType1Unlock3: TcxCheckBox;
    edtNmlTRSType1Unlock3: TcxTextEdit;
    btnNmlTRSType1Save: TcxButton;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lblNmlTRSType2Name: TcxLabel;
    lblNmlTRSType2Cap1: TcxLabel;
    lblNmlTRSType2Cap3: TcxLabel;
    lblNmlTRSType2Cap2: TcxLabel;
    edtNmlTRSType2Name: TcxTextEdit;
    lblNmlTRSType2Step1: TcxLabel;
    chkNmlTRSType2StepUse1: TcxCheckBox;
    lblNmlTRSType2Step2: TcxLabel;
    chkNmlTRSType2StepUse2: TcxCheckBox;
    lblNmlTRSType2Step3: TcxLabel;
    chkNmlTRSType2StepUse3: TcxCheckBox;
    chkNmlTRSType2Unlock1: TcxCheckBox;
    edtNmlTRSType2Unlock1: TcxTextEdit;
    chkNmlTRSType2Unlock2: TcxCheckBox;
    edtNmlTRSType2Unlock2: TcxTextEdit;
    chkNmlTRSType2Unlock3: TcxCheckBox;
    edtNmlTRSType2Unlock3: TcxTextEdit;
    btnNmlTRSType2Save: TcxButton;
    grpNmlTRSPenaltySet: TcxGroupBox;
    grpNmlTRSPenaltyType1: TcxGroupBox;
    grpNmlTRSPenaltyType2: TcxGroupBox;
    cxRadioButton7: TcxRadioButton;
    cxRadioButton8: TcxRadioButton;
    grp11: TcxGroupBox;
    lbl3: TcxLabel;
    pnl1: TPanel;
    rbNmlInputTypeNone: TcxRadioButton;
    rbNmlInputTypeIn: TcxRadioButton;
    rbNmlInputTypeOut: TcxRadioButton;
    lbl4: TcxLabel;
    pnl2: TPanel;
    rbNmlInputPayTypeNone: TcxRadioButton;
    rbNmlInputPayTypeCash: TcxRadioButton;
    rbNmlInputPayTypeBank: TcxRadioButton;
    rbNmlInputPayTypeEtc: TcxRadioButton;
    chkNmlInputNoMsg: TcxCheckBox;
    chkNmlInputAutoClose: TcxCheckBox;
    chkNmlInputFixedAccTab: TcxCheckBox;
    grp3: TcxGroupBox;
    RbRadioButton1: TcxRadioButton;
    RbRadioButton2: TcxRadioButton;
    grp7: TcxGroupBox;
    cxRdoAutoClose: TcxRadioButton;
    cxRdoAutoCloseNot: TcxRadioButton;
    grp10: TcxGroupBox;
    rbchk_msg_close: TcxCheckBox;
		cb_msg_close: TcxComboBox;
    grp4: TcxGroupBox;
    chkNmlXlsAutoOpen: TcxCheckBox;
		rbNmlXls2007: TcxRadioButton;
    rbNmlXls2003: TcxRadioButton;
    grp14: TcxGroupBox;
    pnlMain: TPanel;
    Shape6: TShape;
    PnlBotom: TPanel;
    cxTabSheet37: TcxTabSheet;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    chkWorkerPenalty: TcxCheckBox;
    chkSendWorker: TcxCheckBox;
    Shape5: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Pnl_LocalData: TPanel;
    btnAll1: TcxButton;
    btnAll2: TcxButton;
    Edt_PW: TcxTextEdit;
    btn4: TcxButton;
    btn5: TcxButton;
    btn6: TcxButton;
    Edt_PPw: TcxTextEdit;
    Edt_APw: TcxTextEdit;
    Edt_BPw: TcxTextEdit;
    Edt_RePW: TcxTextEdit;
    cxGroupBox22: TcxGroupBox;
    cxLabel4: TcxLabel;
    Shape9: TShape;
    cxLabel16: TcxLabel;
    Shape10: TShape;
    cxGroupBox29: TcxGroupBox;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    cxLabel17: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    cxLabel23: TcxLabel;
    Shape18: TShape;
    cxLabel15: TcxLabel;
    Shape19: TShape;
    cxTabSheet38: TcxTabSheet;
    cxButton1: TcxButton;
    chk_wk_tr_use: TcxCheckBox;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cb_tr_brnm: TcxComboBox;
    wk_tr_ip: TcxTextEdit;
    wk_tr_port: TcxTextEdit;
    Edit3: TcxTextEdit;
    cxLabel126: TcxLabel;
    cb_tr_brnm2: TcxComboBox;
    grp5: TcxGroupBox;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    cxTabSheet39: TcxTabSheet;
    cxGroupBox30: TcxGroupBox;
    chkJONAreaAutoSET: TcxCheckBox;
    cxTabSheet40: TcxTabSheet;
    cxGroupBox31: TcxGroupBox;
    cxRadioButton5: TcxRadioButton;
    cxRadioButton6: TcxRadioButton;
    cxRadioButton11: TcxRadioButton;
    cxRadioButton12: TcxRadioButton;
    cxRadioButton13: TcxRadioButton;
    cxRadioButton14: TcxRadioButton;
    cxRadioButton15: TcxRadioButton;
    cxTabSheet41: TcxTabSheet;
    cxGroupBox32: TcxGroupBox;
    chkJONAreaAutoShow: TcxCheckBox;
    cxTabSheet42: TcxTabSheet;
    cxGroupBox33: TcxGroupBox;
    chkAutoCmdQuestion: TcxCheckBox;
    cxGroupBox34: TcxGroupBox;
    chkFileCallingUse: TcxCheckBox;
    cxTabSheet43: TcxTabSheet;
    cxGroupBox35: TcxGroupBox;
    CbAcceptMemo1: TcxCheckBox;
    Ed_AcceptMemo1: TcxTextEdit;
    cxButton8: TcxButton;
    cxGroupBox36: TcxGroupBox;
    rb_PassTime1: TcxRadioButton;
    rb_PassTime2: TcxRadioButton;
    Shape25: TShape;
    cxLabel54: TcxLabel;
    EdtSearch: TcxTextEdit;
    BtnSearch: TcxButton;
    cxGridSch: TcxGrid;
    cxGridSchView: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel1: TPanel;
    cxTabSheet44: TcxTabSheet;
    cxGroupBox37: TcxGroupBox;
    cxChkAddrB: TcxCheckListBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxChkSchB: TcxCheckListBox;
    cxBtnAddrBSave: TcxButton;
    cxBtnSchBSave: TcxButton;
    cxGridBRCOLOR: TcxGrid;
    cxBRListSetColor: TcxGridDBTableView;
    CustView1ViewNoticeListBRListSetColorColumn1: TcxGridDBColumn;
    CustView1ViewNoticeListBRListSetColorColumn3: TcxGridDBColumn;
    CustView1BRListSetColorColumn1: TcxGridDBColumn;
    CustView1ViewNoticeListBRListSetColorColumn4: TcxGridDBColumn;
    CustView1BRListSetColorColumn2: TcxGridDBColumn;
    cxGridLevel17: TcxGridLevel;
    cxTabSheet45: TcxTabSheet;
    cxGroupBox38: TcxGroupBox;
    chkJONFinishMsg: TcxCheckBox;
    chkJON01_BackKeyUse: TcxCheckBox;
    chkJON01_Bubhu: TcxCheckBox;
    cxGroupBox39: TcxGroupBox;
    cxGroupBox40: TcxGroupBox;
    chkDitanceUse: TcxCheckBox;
    cxLabel38: TcxLabel;
    cxGroupBox41: TcxGroupBox;
    cxRBViaEnd: TcxRadioButton;
    cxRBViaStart: TcxRadioButton;
    chkAutoReloadHg: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxRadioButton9: TcxRadioButton;
    cxRadioButton10: TcxRadioButton;
    chkMultiSch: TcxCheckBox;
    cxLblActive: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    rb_IDUp: TcxRadioButton;
    rb_IDIn: TcxRadioButton;
    CB_Stat2: TcxComboBox;
    rb_View_DayTimes: TcxRadioButton;
    chkJON01_UPMODE1: TcxCheckBox;
    chkJON01_UPMODE2: TcxCheckBox;
    chkLocalMapSET: TcxCheckBox;
    cxChkAfterMoneyWordUse1: TcxCheckBox;
    chkNmlXlsDTypeUse: TcxCheckBox;
    cxGroupBox42: TcxGroupBox;
    rbRSSvr1: TcxRadioButton;
    rbRSSvr2: TcxRadioButton;
    cxRadioButton33: TcxRadioButton;
    cxRadioButton34: TcxRadioButton;
    cxGroupBox43: TcxGroupBox;
    cxGroupBox44: TcxGroupBox;
    chkJON01_SexM: TcxCheckBox;
    cxChkPOITelSearch: TcxCheckBox;
    btnFastFindInit: TcxButton;
    cxChkViewWkInfo: TcxCheckBox;
    cxChkWkCallPopup: TcxCheckBox;
    cxRBViaNo: TcxRadioButton;
    cbMyMainRateNoChange: TcxCheckBox;
    chkLeftBrListViewMode: TcxCheckBox;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxChkNoSMSConfirm: TcxCheckBox;
    rb_View_YearDayTime: TcxRadioButton;
    cxTabSheet46: TcxTabSheet;
    cxGroupBox45: TcxGroupBox;
    CB_Stat3: TcxComboBox;
    cxTS215: TcxTabSheet;
    cxGrp215: TcxGroupBox;
    cxGroupBox47: TcxGroupBox;
    cxRBJon01VTypeB: TcxRadioButton;
    cxRBJon01VTypeA: TcxRadioButton;
    cxGroupBox49: TcxGroupBox;
    cxCbFontSize: TcxComboBox;
    cxLabel36: TcxLabel;
    lblFont: TcxLabel;
    rg_Cancelchoice: TcxRadioGroup;
    chkJON54AutoRun: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    btnFSizeS: TcxButton;
    cxLabel37: TcxLabel;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridSchViewColumn1: TcxGridDBColumn;
    lblHelp: TcxLabel;
    cxSplitter1: TcxSplitter;
    chkJon012DestSearchUSE: TcxCheckBox;
    cxGroupBox48: TcxGroupBox;
    chkJONAutoLock_End: TcxCheckBox;
    chkJONAutoLock_Charge: TcxCheckBox;
    chkJONAutoLock_Start: TcxCheckBox;
    lb_FastFindOut: TcxListBox;
    cxLabel42: TcxLabel;
    Label1: TcxLabel;
    Shape27: TShape;
    Label2: TLabel;
    cxGrid1: TcxGrid;
    cxBubHuList: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    btn_BubHuListSave: TcxButton;
    chkBubHuList: TcxCheckBox;
    cxLabel63: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    edt_msg_close: TcxTextEdit;
    btn_msg_close: TcxButton;
    cxLabel46: TcxLabel;
    cxLabel47: TcxLabel;
    cxTabSheet47: TcxTabSheet;
    cxGroupBox50: TcxGroupBox;
    chk_AIQuestion: TcxCheckBox;
    cxGroupBox51: TcxGroupBox;
    cb_Duration: TcxComboBox;
    cxLabel49: TcxLabel;
    cxLabel48: TcxLabel;
    cxLabel50: TcxLabel;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    chk_FontBold: TcxCheckBox;
    cxGroupBox52: TcxGroupBox;
    cxLabel53: TcxLabel;
    cbOrderBellTime: TcxComboBox;
    chkOrderBellUse: TcxCheckBox;
    edtOrderBellFile: TcxTextEdit;
    btnOrderBellSet: TcxButton;
    cxLabel55: TcxLabel;
    chk_ResToJoin: TcxCheckBox;
    cxTabSheet48: TcxTabSheet;
    cxGroupBox53: TcxGroupBox;
    Shape26: TShape;
    btn_AllPopUpPosition: TcxButton;
    cxLabel56: TcxLabel;
    cxLabel57: TcxLabel;
    chkJON01_ENDAUTOLOCK: TcxCheckBox;
    chk_ShortCut_Space_NoUse: TcxCheckBox;
    chk_memo3Use: TcxCheckBox;
    cxTabSheet49: TcxTabSheet;
    cxGroupBox54: TcxGroupBox;
    Shape28: TShape;
    Shape29: TShape;
    chk_CallCust: TcxCheckBox;
    chk_CallWorker: TcxCheckBox;
    lb_PayGubun5: TcxLabel;
    lb_PayGubun1: TcxLabel;
    lb_PayGubun3: TcxLabel;
    lb_PayGubun4: TcxLabel;
    cxLabel64: TcxLabel;
    cxLabel65: TcxLabel;
    lb_PayGubun2: TcxLabel;
    chk_BlockCidAdd: TcxCheckBox;
    cxLabel58: TcxLabel;
    btn215Save: TcxButton;
    chkInMenu: TcxCheckBox;
    cxTabSheet51: TcxTabSheet;
    cxTabSheet52: TcxTabSheet;
    cxTabSheet53: TcxTabSheet;
    grp216: TcxGroupBox;
    grp217: TcxGroupBox;
    cxGroupBox57: TcxGroupBox;
    rbConfigVATset2: TcxRadioButton;
    cxConfigSave: TcxButton;
    chkConfigCardset: TcxCheckBox;
    rbConfigVATset1: TcxRadioButton;
    rbConfigVATset3: TcxRadioButton;
    cxCurVATvalue: TcxTextEdit;
    chkJon_Multi_Modify: TcxCheckBox;
    cxProgressBar1: TcxProgressBar;
    cxCheckBox7: TcxCheckBox;
    chkJON01_UPMODE3: TcxCheckBox;
    chkCloseConfirm: TcxCheckBox;
    grpChargeType: TcxGroupBox;
    rbChargeType1: TcxRadioButton;
    rbChargeType2: TcxRadioButton;
    chkJONMapViewSET: TcxCheckBox;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel62: TcxLabel;
    cxLabel66: TcxLabel;
    cbViewDateType1: TcxComboBox;
    cbViewDateType2: TcxComboBox;
    cbViewDateType3: TcxComboBox;
    cbViewDateType4: TcxComboBox;
    cbViewDateType5: TcxComboBox;
    chkMileUnitUse: TcxCheckBox;
    chk_COUNSEL_TITLE_VIEW1: TcxCheckBox;
    chk_COUNSEL_TITLE_VIEW2: TcxCheckBox;
    rb_OnLineServer: TcxRadioButton;
    btn_ConnectTest: TcxButton;
    btnFontSave: TcxButton;
    cxLabel67: TcxLabel;
    cbFontList: TcxFontNameComboBox;
    cxLabel68: TcxLabel;
    chk_OutCallCidSync: TcxCheckBox;
    cxTabSheet50: TcxTabSheet;
    cxGroupBox46: TcxGroupBox;
    rbAMode: TcxRadioButton;
    rbBMode: TcxRadioButton;
    cxLabel69: TcxLabel;
    cxLabel70: TcxLabel;
    imgAMode: TImage;
    imgBMode: TImage;
    btnModeSave: TcxButton;
    cxLabel71: TcxLabel;
    grpFirstMode: TcxGroupBox;
    cxLabel72: TcxLabel;
    cxLabel73: TcxLabel;
    cxLabel74: TcxLabel;
    cxLabel75: TcxLabel;
    chkAutoStandBy: TcxCheckBox;
    cxGroupBox55: TcxGroupBox;
    rb_AppOrder: TcxRadioButton;
    rb_NewOrder: TcxRadioButton;
    chk_MenuOver: TcxCheckBox;
    cxGroupBox56: TcxGroupBox;
    rbAutoUpsoY: TcxRadioButton;
    rbAutoUpsoN: TcxRadioButton;
    cxLabel76: TcxLabel;
    cxLabel77: TcxLabel;
    cxTabSheet54: TcxTabSheet;
    cxGroupBox58: TcxGroupBox;
    rbFexedPinN: TcxRadioButton;
    rbFexedPinY: TcxRadioButton;
    cxLabel78: TcxLabel;
    cxLabel79: TcxLabel;
    cxLabel80: TcxLabel;
    grbDriverCharge: TcxGroupBox;
    rbDriverChargeLocalUseY: TcxRadioButton;
    rbDriverChargeLocalUseN: TcxRadioButton;
    Shape30: TShape;
    cxLabel81: TcxLabel;
    cbDriverChargeLocalValue: TcxComboBox;
    chkMultiCallNum: TcxCheckBox;
    Chk_SelfCard: TcxCheckBox;
    chkCardBigoUse: TcxCheckBox;
    chkProgSize: TcxCheckBox;
    cxTabSheet55: TcxTabSheet;
    cxGroupBox60: TcxGroupBox;
    gxWORSOSOK_VIEW: TcxGroupBox;
    rbWORSOSOK_VIEW1: TcxRadioButton;
    rbWORSOSOK_VIEW2: TcxRadioButton;
    pnl_TypeB: TPanel;
    rb_TypeBUse: TcxRadioButton;
    rb_TypeBSearch: TcxRadioButton;
    cxMemo1: TcxMemo;
    pnlSelTabType2: TPanel;
    cxImage2: TcxImage;
    pnlSelTabType1: TPanel;
    cxImage1: TcxImage;
    chkPostBigoUse: TcxCheckBox;
    grpDistanceType: TcxGroupBox;
    cxGroupBox62: TcxGroupBox;
    rbRouteType1: TcxRadioButton;
    rbRouteType2: TcxRadioButton;
    cxGroupBox63: TcxGroupBox;
    rbRoadType1: TcxRadioButton;
    rbRoadType2: TcxRadioButton;
    cxGroupBox64: TcxGroupBox;
    rbTollType1: TcxRadioButton;
    rbTollType2: TcxRadioButton;
    btnDown: TcxButton;
    pnlSvr: TPanel;
    btnSave: TcxButton;
    cxLabel82: TcxLabel;
    lbCustCompany: TcxLabel;
    pnlSvrOpt: TPanel;
    cxLabel83: TcxLabel;
    cxLabel84: TcxLabel;
    btnUp: TcxButton;
    btnCn: TcxButton;
    cxGroupBox59: TcxGroupBox;
    rbSelA: TcxRadioButton;
    rbSelB: TcxRadioButton;
    cxLabel85: TcxLabel;
    cxLabel86: TcxLabel;
    cxLabel40: TcxLabel;
    cxLabel39: TcxLabel;
    chk_Mileage: TcxCheckBox;
    chk_CMPSupportY: TcxCheckBox;
    chk_CMPSupportN: TcxCheckBox;
    chkChangeOrderScrollTop: TcxCheckBox;
    btnConfigExit: TcxButton;
    btnDelete: TcxButton;
    grpConfigSave: TcxGroupBox;
    btnConfigSave: TcxButton;
    chk_JON03DetailExcelView: TcxCheckBox;
    chk_MNG1501NoUse: TcxCheckBox;
    chk_PostPayNoUpdate: TcxCheckBox;
    chk_KMAiRate: TcxCheckBox;
    img_KMAiRate: TImage;
    cbo_KMAiRate: TcxComboBox;
    cxCheckBox8: TcxCheckBox;
    chkJon01ShortMenu: TcxCheckBox;
    cxGroupBox61: TcxGroupBox;
    rbFixModeA: TcxRadioButton;
    rbFixModeB: TcxRadioButton;
    cxLabel87: TcxLabel;
    chkBaechaAllCheck: TcxCheckBox;
    cxLabel88: TcxLabel;
    cbViewDateType6: TcxComboBox;
    procedure cxScrollBox1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure imToolBarMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure cxTreeView1Click(Sender: TObject);
    procedure btnOrderCancelReason0Click(Sender: TObject);
    procedure chkNmlRetryNoShowWinClick(Sender: TObject);
    procedure chkNmlReadyNoShowWinClick(Sender: TObject);
    procedure rb_View_DayTimeClick(Sender: TObject);
    procedure btnFastFindInClick(Sender: TObject);
    procedure btnFastFindOutClick(Sender: TObject);
    procedure btnFastFindSaveClick(Sender: TObject);
    procedure btn_StatUpClick(Sender: TObject);
    procedure btn_StatDnClick(Sender: TObject);
    procedure btn_StatSaveClick(Sender: TObject);
    procedure rb_IDNAMEClick(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure RDO_OR_COLOR1Click(Sender: TObject);
    procedure RDO_OR_COLOR2Click(Sender: TObject);
    procedure cxBRListSetColorCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBRListSetColorCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton59Click(Sender: TObject);
    procedure cxButton60Click(Sender: TObject);
    procedure btnNmlAcceptResetClick(Sender: TObject);
    procedure btnNmlAcceptReloadClick(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure chkOrderColorClick(Sender: TObject);
    procedure lblOrderColor1DblClick(Sender: TObject);
    procedure cbbOrderTime1PropertiesChange(Sender: TObject);
    procedure chkNmlAutoScrollTopClick(Sender: TObject);
    procedure cxCheckBox3Click(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure rg_CancelchoiceClick(Sender: TObject);
    procedure cxRadioButton16Click(Sender: TObject);
    procedure chkCustTelAddDDDClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure rg_charge_pcClick(Sender: TObject);
    procedure rg_charge_serClick(Sender: TObject);
    procedure ed_pwKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RbButton19Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
		procedure btn_wR1Click(Sender: TObject);
		procedure chkOrderUse1Click(Sender: TObject);
    procedure chkWorkerPenaltyClick(Sender: TObject);
    procedure chkSendWorkerClick(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxCheckBox4Click(Sender: TObject);
    procedure rb_charge_cal0Click(Sender: TObject);
    procedure RbCheckBox1Click(Sender: TObject);
    procedure rb_prg_MainClick(Sender: TObject);
    procedure rb_prg_SubClick(Sender: TObject);
    procedure ed_MaddBrchNameClick(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure chkJON01_UPMODEClick(Sender: TObject);
    procedure chkJON01_AUTOLOCKClick(Sender: TObject);
    procedure rbchkMainTelRateClick(Sender: TObject);
    procedure rbMainTelRateYClick(Sender: TObject);
    procedure chkOrderChargeCheckClick(Sender: TObject);
    procedure rbRateRemarkMaintainClick(Sender: TObject);
    procedure chkJONBubinMenuClick(Sender: TObject);
    procedure chkJONFinishMsgClick(Sender: TObject);
    procedure chkJON01_BackKeyUseClick(Sender: TObject);
    procedure chkJON01_BubhuClick(Sender: TObject);
    procedure cxChkAfterMoneyClick(Sender: TObject);
    procedure cxChkCreditMoneyClick(Sender: TObject);
    procedure cbb_AfterMoneyClick(Sender: TObject);
    procedure cxChkAfterMoneyWordUseClick(Sender: TObject);
    procedure RbButton22Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btnAll1Click(Sender: TObject);
    procedure btnAll2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure rb_Local_BothClick(Sender: TObject);
    procedure rbNmlShopCallCenterNClick(Sender: TObject);
    procedure pnl_AcceptDblClick(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure chk_LevelColorClick(Sender: TObject);
    procedure RbRadioButton3Click(Sender: TObject);
    procedure chkWKCONAutoScrollTopClick(Sender: TObject);
    procedure lblNmlTRSType1Step1DblClick(Sender: TObject);
    procedure chkNmlTRSType1StepUse1Click(Sender: TObject);
    procedure edtNmlTRSType1Unlock1KeyPress(Sender: TObject; var Key: Char);
    procedure edtNmlTRSType1Unlock1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure changeTRSPenaltyType1(Sender: TObject);
    procedure changeTRSPenaltyType2(Sender: TObject);
    procedure edtNmlTRSType2NameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNmlTRSType2SaveClick(Sender: TObject);
    procedure lblNmlTRSType2Step1Click(Sender: TObject);
    procedure chkNmlTRSType2StepUse1Click(Sender: TObject);
    procedure chkNmlTRSType2Unlock1Click(Sender: TObject);
    procedure edtNmlTRSType2Unlock1KeyPress(Sender: TObject; var Key: Char);
    procedure edtNmlTRSType2Unlock1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxRadioButton7Click(Sender: TObject);
    procedure rbNmlInputTypeNoneClick(Sender: TObject);
    procedure rbNmlInputPayTypeNoneClick(Sender: TObject);
    procedure chkNmlInputNoMsgClick(Sender: TObject);
    procedure chkNmlInputAutoCloseClick(Sender: TObject);
    procedure chkNmlInputFixedAccTabClick(Sender: TObject);
    procedure RbRadioButton1Click(Sender: TObject);
    procedure cxRdoAutoCloseClick(Sender: TObject);
    procedure cxRdoAutoCloseNotClick(Sender: TObject);
    procedure rbchk_msg_closeClick(Sender: TObject);
    procedure rbNmlXls2007Click(Sender: TObject);
    procedure chkNmlXlsAutoOpenClick(Sender: TObject);
    procedure chk_wk_tr_useClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure chkJONAreaAutoSETClick(Sender: TObject);
    procedure cxRadioButton5Click(Sender: TObject);
    procedure chkJONAreaAutoShowClick(Sender: TObject);
    procedure chkAutoCmdQuestionClick(Sender: TObject);
    procedure chkFileCallingUseClick(Sender: TObject);
    procedure CbAcceptMemo1Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure rb_PassTime1Click(Sender: TObject);
    procedure cxLabel5Click(Sender: TObject);
    procedure cxTreeView1CustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure BtnSearchClick(Sender: TObject);
    procedure EdtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridSchViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxBtnAddrBSaveClick(Sender: TObject);
    procedure cxBtnSchBSaveClick(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure chkAutoStandByClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure chkDitanceUseClick(Sender: TObject);
    procedure cxRBViaStartClick(Sender: TObject);
    procedure chkAutoReloadHgClick(Sender: TObject);
    procedure cxCheckBox5Click(Sender: TObject);
    procedure cxRadioButton9Click(Sender: TObject);
    procedure chkMultiSchClick(Sender: TObject);
    procedure rb_IDInClick(Sender: TObject);
    procedure chkJON01_UPMODE1Click(Sender: TObject);
    procedure chkJON01_UPMODE2Click(Sender: TObject);
    procedure Edt_PWKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edt_PPwKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edt_BPwKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkLocalMapSETClick(Sender: TObject);
    procedure cxChkAfterMoneyWordUse1Click(Sender: TObject);
    procedure chkNmlXlsDTypeUseClick(Sender: TObject);
    procedure rbRSSvr1Click(Sender: TObject);
    procedure cxRadioButton33Click(Sender: TObject);
    procedure chkJON01_SexMClick(Sender: TObject);
    procedure cxChkPOITelSearchClick(Sender: TObject);
    procedure btnFastFindInitClick(Sender: TObject);
    procedure chkJONAddRingClick(Sender: TObject);
    procedure chkJONDelRingClick(Sender: TObject);
    procedure btnAddRingClick(Sender: TObject);
    procedure cxChkViewWkInfoClick(Sender: TObject);
    procedure cxChkWkCallPopupClick(Sender: TObject);
    procedure cbMyMainRateNoChangeClick(Sender: TObject);
    procedure chkLeftBrListViewModeClick(Sender: TObject);
    procedure cxChkNoSMSConfirmClick(Sender: TObject);
    procedure cxRBJon01VTypeAClick(Sender: TObject);
    procedure chkJON54AutoRunClick(Sender: TObject);
    procedure cxCheckBox6Click(Sender: TObject);
    procedure cxRBJon01TypeAClick(Sender: TObject);
    procedure cxImage1Click(Sender: TObject);
    procedure cxImage2Click(Sender: TObject);
    procedure btnFSizeSClick(Sender: TObject);
    procedure cxGridSchViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure chkJon012DestSearchUSEClick(Sender: TObject);
    procedure chkJONAutoLock_StartClick(Sender: TObject);
    procedure chkJONAutoLock_ChargeClick(Sender: TObject);
    procedure chkJONAutoLock_EndClick(Sender: TObject);
    procedure lb_FastFindDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lb_FastFindDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lb_FastFindMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lb_FastFindOutDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lb_FastFindOutDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure chkBubHuListClick(Sender: TObject);
    procedure btn_BubHuListSaveClick(Sender: TObject);
    procedure cxGridDBColumn6PropertiesChange(Sender: TObject);
    procedure edt_msg_closeKeyPress(Sender: TObject; var Key: Char);
    procedure btn_msg_closeClick(Sender: TObject);
    procedure edt_msg_closeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chk_AIQuestionClick(Sender: TObject);
    procedure cb_DurationPropertiesChange(Sender: TObject);
    procedure chkOrderBellUsePropertiesChange(Sender: TObject);
    procedure cbOrderBellTimePropertiesChange(Sender: TObject);
    procedure btnOrderBellSetClick(Sender: TObject);
    procedure chk_ResToJoinClick(Sender: TObject);
    procedure btn_AllPopUpPositionClick(Sender: TObject);
    procedure chkJON01_ENDAUTOLOCKClick(Sender: TObject);
    procedure chk_ShortCut_Space_NoUsePropertiesChange(Sender: TObject);
    procedure chk_memo3UseClick(Sender: TObject);
    procedure chk_CallCustClick(Sender: TObject);
    procedure chk_CallWorkerClick(Sender: TObject);
    procedure lb_PayGubun1Click(Sender: TObject);
    procedure chk_BlockCidAddClick(Sender: TObject);
    procedure cxConfigSaveClick(Sender: TObject);
    procedure chkJon_Multi_ModifyClick(Sender: TObject);
    procedure cxCheckBox7Click(Sender: TObject);
    procedure chkJON01_UPMODE3Click(Sender: TObject);
    procedure chkCloseConfirmClick(Sender: TObject);
    procedure rbChargeType1Click(Sender: TObject);
    procedure rbChargeType2Click(Sender: TObject);
    procedure chkJONMapViewSETClick(Sender: TObject);
    procedure cbViewDateType1PropertiesChange(Sender: TObject);
    procedure cbViewDateType2PropertiesChange(Sender: TObject);
    procedure cbViewDateType3PropertiesChange(Sender: TObject);
    procedure cbViewDateType4PropertiesChange(Sender: TObject);
    procedure cbViewDateType5PropertiesChange(Sender: TObject);
    procedure chkMileUnitUseClick(Sender: TObject);
    procedure chk_COUNSEL_TITLE_VIEW1Click(Sender: TObject);
    procedure chk_COUNSEL_TITLE_VIEW2Click(Sender: TObject);
    procedure btn_ConnectTestClick(Sender: TObject);
    procedure rb_OnLineServerClick(Sender: TObject);
    procedure btnFontSaveClick(Sender: TObject);
    procedure chk_OutCallCidSyncClick(Sender: TObject);
    procedure imgAModeClick(Sender: TObject);
    procedure btnModeSaveClick(Sender: TObject);
    procedure imgBModeClick(Sender: TObject);
    procedure rb_AppOrderClick(Sender: TObject);
    procedure rb_NewOrderClick(Sender: TObject);
    procedure chk_MenuOverClick(Sender: TObject);
    procedure rbAutoUpsoYClick(Sender: TObject);
    procedure rbFexedPinNClick(Sender: TObject);
    procedure rbDriverChargeLocalUseYClick(Sender: TObject);
    procedure cbDriverChargeLocalValuePropertiesChange(Sender: TObject);
    procedure chkMultiCallNumClick(Sender: TObject);
    procedure Chk_SelfCardClick(Sender: TObject);
    procedure chkCardBigoUseClick(Sender: TObject);
    procedure chkProgSizeClick(Sender: TObject);
    procedure rbWORSOSOK_VIEW1Click(Sender: TObject);
    procedure rb_TypeBUseClick(Sender: TObject);
    procedure rb_TypeBSearchClick(Sender: TObject);
    procedure btn215SaveClick(Sender: TObject);
    procedure chkPostBigoUseClick(Sender: TObject);
    procedure rbRouteType1Click(Sender: TObject);
    procedure rbRoadType1Click(Sender: TObject);
    procedure rbTollType1Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure cxGroupBox59MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnUpClick(Sender: TObject);
    procedure btnCnClick(Sender: TObject);
    procedure chkChangeOrderScrollTopClick(Sender: TObject);
    procedure btnConfigSaveClick(Sender: TObject);
    procedure btnConfigExitClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure chk_JON03DetailExcelViewClick(Sender: TObject);
    procedure chk_MNG1501NoUseClick(Sender: TObject);
    procedure chk_PostPayNoUpdateClick(Sender: TObject);
    procedure chk_KMAiRateClick(Sender: TObject);
    procedure cbo_KMAiRatePropertiesChange(Sender: TObject);
    procedure cxCheckBox8Click(Sender: TObject);
    procedure chkJon01ShortMenuClick(Sender: TObject);
    procedure rbFixModeAClick(Sender: TObject);
    procedure chkBaechaAllCheckClick(Sender: TObject);
    procedure cbViewDateType6PropertiesChange(Sender: TObject);
  private
    { Private declarations }
    slFile, slChkAddrB, slChkSchB: TStringList;
    NumX, NumY: Integer;
    SearchMenu : array of TSearchMenu;

		Frm_JON016 : array[0..1] of TFrm_JON016;

    procedure SetAcceptTitle;
    procedure CheckTRSPenaltyChange(AType: Integer;
      ATypeRec: TTRSPenaltyTypeRec);
    procedure GetValueTRSPenalty(AType: Integer;
      var ATypeRec: TTRSPenaltyTypeRec);
    procedure SetValueTRSPenalty(AType: Integer; ATypeRec: TTRSPenaltyTypeRec);
    procedure proc_init;
    procedure proc_general;
    procedure proc_Accept;
    procedure proSetSET06Item;

    procedure SetProc_Set_Grid;
    procedure SetLoadFastFindControls;
    procedure proc_SetBRcolor;
		procedure proc_BRList_BubHu;

    procedure pSetMakeSearchMenu;
    procedure pSetComponentFontColor( iTag : Integer; sWord : String );
    function GetDragSourceListBox(Source: TObject): TcxListBox;
    procedure SetFontFaceList;
    procedure pDriverChargeLocalSetting;
    procedure pSetJON01TabSelectView;
	public
    { Public declarations }
    procedure SetOption(iGubun: Integer);
		procedure proc_MySQLTOLocalDATA;
		procedure proc_Sync_DataTime_Set;
    procedure SetTreeSelItem(idx: Integer);
	end;

var
  Frm_SETA1: TFrm_SETA1;

implementation

{$R *.dfm}

uses main, xe_Func, xe_msg, xe_progress, xe_packet, xe_Media_2, xe_xml,
	xe_gnl3, xe_charge, xe_Dm, xe_SET06, xe_JON54, xe_SET, xe_JON30,
	xe_SearchWord, xe_CUT, xe_JON30S, xe_JON01N, xe_WOR01;

procedure TFrm_SETA1.changeTRSPenaltyType1(Sender: TObject);
begin
  CheckTRSPenaltyChange(1, GS_TRS_PENALTY.Type1);
end;

procedure TFrm_SETA1.changeTRSPenaltyType2(Sender: TObject);
begin
  CheckTRSPenaltyChange(2, GS_TRS_PENALTY.Type2);
end;

procedure TFrm_SETA1.btn215SaveClick(Sender: TObject);
Var i : Integer;
    isRun : Boolean;
begin
  isRun := False;

  if GS_JON01_TAB = 1 then
  begin
    for i := 0 to JON_MAX_CNT - 1 do
    begin
      if ( Frm_Main.JON01MNG[i].Use ) And ( Frm_Main.JON01MNG[i].Dock ) then
      begin
        isRun := True;
        Break;
      end;
    end;
  end;

  if ( isRun ) then
  begin
		GMessagebox('싱글창일 경우 접수창 종류 변경시 접수창을 모두 닫고 설정해주세요', CDMSE);

    cxRBJon01VTypeB.Checked := True;
    Exit;
  end;

  if cxRBJon01VTypeA.Checked then GS_JON01_TAB := 0 else
  if cxRBJon01VTypeB.Checked then GS_JON01_TAB := 1;

  GS_EnvFile.WriteInteger('COUNSEL', 'GS_JON01_TAB', GS_JON01_TAB);
  pSetJON01TabSelectView;
end;

procedure TFrm_SETA1.pSetJON01TabSelectView;
begin
  if cxRBJon01VTypeA.Checked then
  begin
    pnlSelTabType1.BorderWidth := 2;
    pnlSelTabType1.Color := $008000FF;

    pnlSelTabType2.BorderWidth := 0;
    pnlSelTabType2.Color := clBtnFace;
  end else
  if cxRBJon01VTypeB.Checked then
  begin
    pnlSelTabType1.BorderWidth := 0;
    pnlSelTabType1.Color := clBtnFace;

    pnlSelTabType2.BorderWidth := 2;
    pnlSelTabType2.Color := $008000FF;
  end;
  pnlSelTabType1.Repaint;
  pnlSelTabType2.Repaint;
end;

procedure TFrm_SETA1.btn3Click(Sender: TObject);
begin
  Try
    if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
    begin
      proc_MySQLTOLocalDATA;
      GMessagebox('서버내용을 내려받았습니다.', cdmsi);
    end;
  except
    GMessagebox('서버내용 내려받기에 실패 하였습니다.', cdmsE);
  end;
end;

procedure TFrm_SETA1.btn4Click(Sender: TObject);
var
  sQuery, sDate: string;
begin
  if TcxButton(Sender).Caption = '확  인' then
  begin
    if Trim(Edt_PW.Text) = '' then
    begin
      GMessagebox('비밀번호를 입력하십시오.', CDMSE);
      Edt_PW.SetFocus;
      Exit;
    end;
    sQuery := 'SELECT * FROM CDMS_LOCAL_MASTER WHERE MASTER_PW = ''' + Trim(Edt_PW.Text) + ''' ';
    dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
    dmCharge.FDQuery1.Open;
    if dmCharge.FDQuery1.eof then
    begin
      GMessagebox('비밀번호가 일치하지 않습니다.', CDMSE);
      Edt_PW.SetFocus;
      Exit;
    end else
    begin
      Pnl_LocalData.Visible := False;
      if (not Assigned(Frm_SET06)) Or (Frm_SET06 = Nil) then
        Frm_SET06 := TFrm_SET06.Create(nil);
      proSetSET06Item;
      Frm_SET06.ShowModal;
    end;
  end else
  if TcxButton(Sender).Caption = '설 정' then
  begin
    Try
      if Edt_PW.Text = '' then
        Exit;
      if length(Edt_PW.Text) < 4 then
      begin
        GMessagebox('비밀번호자릿수는 4자리입니다.', CDMSE);
        Edt_PW.Text := '';
        Edt_PW.SetFocus;
      end;
      if Trim(Edt_PW.Text) <> Trim(Edt_RePW.Text) then
      begin
        GMessagebox('비밀번호와 비밀번호확인이 일치하지 않습니다.', CDMSE);
        Edt_RePW.SetFocus;
        Exit;
      end;
      sDate := '1900-01-01 01:01:01';
      // FormatDateTime('yyyy-mm-dd hh:mm:ss', now);
      sQuery := 'INSERT INTO CDMS_LOCAL_MASTER VALUES(''' + Trim(Edt_PW.Text) +
        ''', ''' + sDate + ''' )';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := sQuery;
      dmCharge.FDQuery1.ExecSQL;

      GMessagebox('비밀번호가 설정되었습니다.', CDMSI);

      Pnl_LocalData.Visible := False;
      if (not Assigned(Frm_SET06)) Or (Frm_SET06 = Nil) then
        Frm_SET06 := TFrm_SET06.Create(nil);
      proSetSET06Item;
      Frm_SET06.ShowModal;
    except
      ShowMessage('비밀번호설정 시 오류가 발생하였습니다.');
    end;
  end;
end;

procedure TFrm_SETA1.btn5Click(Sender: TObject);
begin
  Edt_PW.Text := '';
  Edt_PPw.Text := '';
  Edt_APw.Text := '';
  Edt_BPw.Text := '';
  Pnl_LocalData.Visible := False;
end;

procedure TFrm_SETA1.btn6Click(Sender: TObject);
begin
  Pnl_LocalData.Height := 245;
  Edt_PPw.SetFocus;
end;

procedure TFrm_SETA1.btnAddRingClick(Sender: TObject);
begin
	dlgOpen.Filter := '알림음(*.mp3;*.Wav)|*.mp3;*.Wav';
	dlgOpen.InitialDir := SOUNDDIRECTORY;
												
	if dlgOpen.Execute then
	begin
		if TcxButton(sender).Tag = 0 then
		begin
      if Trim(dlgOpen.FileName) <> '' then
      begin
  			ed_AddRing.Text := dlgOpen.Filename;
	  		GS_ADD_RING_PATH := ed_AddRing.Text;
		  	GS_EnvFile.WriteString('COUNSEL', 'GS_ADD_RING_PATH', GS_ADD_RING_PATH);
        chkJONAddRing.Enabled := True;
      end;
		end else
		if TcxButton(sender).Tag = 1 then
		begin
      if Trim(dlgOpen.FileName) <> '' then
      begin
   			ed_DelRing.Text := dlgOpen.FileName;
 	   		GS_DEL_RING_PATH := ed_DelRing.Text;
		   	GS_EnvFile.WriteString('COUNSEL', 'GS_DEL_RING_PATH', GS_DEL_RING_PATH);
        chkJONDelRing.Enabled := True;
      end;
		end;
	end;
end;

procedure TFrm_SETA1.btnAll1Click(Sender: TObject);
var
  sQuery: string;
begin
  if Trim(Edt_PPw.Text) = '' then
  begin
    GMessagebox('현재 비밀번호를 입력하십시오.', CDMSE);
    Edt_PPw.SetFocus;
    Exit;
  end;

  if Trim(Edt_APw.Text) = '' then
  begin
    GMessagebox('변경 비밀번호를 입력하십시오.', CDMSE);
    Edt_APw.SetFocus;
    Exit;
  end;

  if Trim(Edt_BPw.Text) = '' then
  begin
    GMessagebox('확인 비밀번호를 입력하십시오.', CDMSE);
    Edt_BPw.SetFocus;
    Exit;
  end;

  if Trim(Edt_APw.Text) <> Trim(Edt_BPw.Text) then
  begin
    GMessagebox('비밀번호변경과 비밀번호확인이 일치하지 않습니다.', CDMSE);
    Edt_APw.SetFocus;
    Exit;
  end;

  sQuery := 'SELECT * FROM CDMS_LOCAL_MASTER WHERE MASTER_PW = ''' + Trim(Edt_PPw.Text) + ''' ';
  dmCharge.proc_mysql_init;
  dmCharge.FDQuery1.Close;
  dmCharge.FDQuery1.SQL.Text := sQuery;
  dmCharge.FDQuery1.Open;
  if dmCharge.FDQuery1.eof then
  begin
    GMessagebox('현재 비밀번호가 일치하지 않습니다.', CDMSE);
    Edt_PPw.SetFocus;
    Exit;
  end else
  begin
    sQuery := 'UPDATE CDMS_LOCAL_MASTER SET  MASTER_PW = ''' + Trim(Edt_APw.Text) + ''' ';
    dmCharge.proc_mysql_init('update');
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
    dmCharge.FDQuery1.ExecSQL;

    GMessagebox('비밀번호가 변경 되었습니다.', CDMSI);
    btnAll2.Click;
  end;
end;

procedure TFrm_SETA1.btnAll2Click(Sender: TObject);
begin
  Pnl_LocalData.Height := 114;
end;

procedure TFrm_SETA1.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_SETA1.btnFSizeSClick(Sender: TObject);
var i, iTH, iAH : Integer;
begin
	GS_JON_FONTSIZE := StrToIntDef(cxCbFontSize.Text, 9);
	GS_JON_GRIDHEIGHT := GS_JON_FONTSIZE + 14;

	lblFont.Style.Font.Size := GS_JON_FONTSIZE;
	GS_EnvFile.WriteInteger('Confirm', 'FontSize', GS_JON_FONTSIZE);
	if chk_FontBold.Checked then GS_JON_FONTBOLD := True else GS_JON_FONTBOLD := False;
	GS_EnvFile.WriteBool('Confirm', 'FontBold', GS_JON_FONTBOLD);
	if GS_JON_FONTBOLD then GS_JON_FontStyle := [fsBold] else GS_JON_FontStyle := [];

	for i := 0 to JON03_MAX_CNT - 1 do
	begin
		if ( Frm_Main.JON03MNG[i].Use ) And ( Frm_Main.JON03MNG[i].CreateYN ) then
		begin
			Frm_Main.Frm_JON03[i].cxBtnInitialSearch.Click;
		end;

		if ( Frm_Main.WORA1MNG[i].Use ) And ( Frm_Main.WORA1MNG[i].CreateYN ) then
		begin
			Frm_Main.Frm_WORA1[i].btnSearchA1.Click;
		end;
  end;

  if Assigned(Frm_JON30) then
  begin
    Frm_JON30.AdvStringGrid2.Font.Size := GS_JON_FONTSIZE;
    Frm_JON30.AdvStringGrid3.Font.Size := GS_JON_FONTSIZE;
    Frm_JON30.AdvStringGrid1.Font.Size := GS_JON_FONTSIZE;
    Frm_JON30.AdvStringGrid1L.Font.Size := GS_JON_FONTSIZE;
    Frm_JON30.AdvStringGrid4.Font.Size := GS_JON_FONTSIZE;
    Frm_JON30.AdvStringGrid6.Font.Size := GS_JON_FONTSIZE;
    Frm_JON30.AdvStringGrid5.Font.Size := GS_JON_FONTSIZE;
    Frm_JON30.AdvStringGrid5L.Font.Size := GS_JON_FONTSIZE;
    Frm_JON30.AdvStringGrid7.Font.Size := GS_JON_FONTSIZE;
    Frm_JON30.AdvStringGrid9.Font.Size := GS_JON_FONTSIZE;
    Frm_JON30.AdvStringGrid8.Font.Size := GS_JON_FONTSIZE;
    Frm_JON30.AdvStringGrid8L.Font.Size := GS_JON_FONTSIZE;

    if GS_JON_FONTSIZE = 9 then
    begin
      iTH := 22;
      iAH := 20;
    end else
    if GS_JON_FONTSIZE = 10 then
    begin
      iTH := 22;
      iAH := 21;
    end else
    if ( GS_JON_FONTSIZE >= 11 ) And ( GS_JON_FONTSIZE <= 15 )  then
    begin
      iTH := 22 + ( GS_JON_FONTSIZE - 11 );
      iAH := iTH
    end else
    begin
      iTH := 22 + (( GS_JON_FONTSIZE - 11 ) * 2);
      iAH := iTH
    end;

    Frm_JON30.AdvStringGrid2.DefaultRowHeight := iTH;
    Frm_JON30.AdvStringGrid3.DefaultRowHeight := iAH;
    Frm_JON30.AdvStringGrid1.DefaultRowHeight := iAH;
    Frm_JON30.AdvStringGrid1.FixedRowHeight := 5;
    Frm_JON30.AdvStringGrid1L.DefaultRowHeight := iAH;

    Frm_JON30.AdvStringGrid4.DefaultRowHeight := iTH;
    Frm_JON30.AdvStringGrid6.DefaultRowHeight := iAH;
    Frm_JON30.AdvStringGrid5.DefaultRowHeight := iAH;
    Frm_JON30.AdvStringGrid5.FixedRowHeight := 5;
    Frm_JON30.AdvStringGrid5L.DefaultRowHeight := iAH;

    Frm_JON30.AdvStringGrid7.DefaultRowHeight := iTH;
    Frm_JON30.AdvStringGrid9.DefaultRowHeight := iAH;
    Frm_JON30.AdvStringGrid8.DefaultRowHeight := iAH;
    Frm_JON30.AdvStringGrid8.FixedRowHeight := 5;
    Frm_JON30.AdvStringGrid8L.DefaultRowHeight := iAH;
  end;
end;

procedure TFrm_SETA1.btnModeSaveClick(Sender: TObject);
Var sMsg : String;
    hProc : THandle;
    seFile: TIniFile;
begin
  if ( Not rbAMode.Checked ) And ( Not rbBMode.Checked ) then
  begin
    GMessagebox('테마를 선택해 주세요.', CDMSE);
    Exit;
  end;

  if rbAMode.Tag = Integer(rbAMode.Checked) then Exit;
  if rbBMode.Tag = Integer(rbBMode.Checked) then Exit;

  GB_DARKMODE := rbBMode.Checked;
  GS_EnvFile.WriteBool('GER', 'DARK_MODE', GB_DARKMODE);

  // 개별환경 사용시 공통 ini 파일에도 저장 ( 개별환경파일별로 체크 하지 못함 )
  try
    if ( ENVPATHFILE <> (EXECDIRECTORY + ENVFILENAME) ) then
    begin
      seFile := TIniFile.Create(EXECDIRECTORY + ENVFILENAME);
      try
        seFile.WriteBool('GER', 'DARK_MODE', GB_DARKMODE);
      finally
        FreeAndNil(seFile);
      end;
    end;
  except
  end;

  rbBMode.Tag := Integer(GB_DARKMODE);
  rbAMode.Tag := Integer(Not GB_DARKMODE);

  if GB_DARKMODE then sMsg := '다크 모드'
                 else sMsg := '기본 모드';

  if ( GB_FIRSTMODE ) And (rbAMode.Checked) then
  begin
    GMessagebox('기본 모드를 선택했습니다.', CDMSE);
    GB_FIRSTMODE := False;
    Close;
    Self.ModalResult := mrCancel;
  end else
  begin
    if GB_FIRSTMODE then
    begin
      GMessagebox(PChar(sMsg + '로 테마 설정이 변경되었습니다.' + #13#10 +
                '테마적용을 위해 프로그램 종료 후 재시작합니다.'), CDMSE);
      Frm_Main.acAwayTimer1.Tag := 99;
      Frm_Main.IdTCPClient1.Tag := 99;
      Close;
      Self.ModalResult := mrOK;
    end else
    begin
      if Application.MessageBox(PChar(sMsg + '로 테마 설정이 변경되었습니다.' + #13#10 +
                '테마적용을 위해 프로그램을 종료하시겠습니까?' + #13#10 +
                '(종료 후 재시작합니다.)'), 'CDMS', MB_YESNO +
         MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
      begin
        GMessagebox('테마 적용은 다음에 프로그램 재시작시 적용됩니다.', CDMSE);
        if GB_FIRSTMODE then Close;
      end else
      begin
        pRestart_program;
        ShellExecute(Handle, 'open', PChar(EXECDIRECTORY + 'restart.bat'), nil, nil, SW_HIDE);

        hProc := OpenProcess(PROCESS_TERMINATE, False, GetCurrentProcessId);
        TerminateProcess(hProc, 0);
      end;
    end;
  end;
end;

procedure TFrm_SETA1.btnNmlAcceptReloadClick(Sender: TObject);
begin
  SetAcceptTitle;
end;

procedure TFrm_SETA1.btnNmlAcceptResetClick(Sender: TObject);
var
  ln_envfile: TIniFile;
begin
  ln_envfile := TIniFile.Create(ENVPATHFILE);
  try
    ln_envfile.EraseSection('Accept_Title');
    ln_envfile.EraseSection('Accept_Not_Title');
    ln_envfile.EraseSection('Accept_Title_Size');
  finally
    ln_envfile.Free;
	end;
  SetProc_Set_Grid;
  SetAcceptTitle;
end;

procedure TFrm_SETA1.btnNmlTRSType2SaveClick(Sender: TObject);
begin
  // 페널티 명
  if edtNmlTRSType2Name.Text = '' then
  begin
    GMessagebox(Format('[%s] ''%s''를 입력해 주세요.', [grpNmlTRSPenaltyType2.Caption,
      lblNmlTRSType2Name.Caption]), cdmsE);
    edtNmlTRSType2Name.SetFocus;
    Exit;
  end;

  // 단계1
  if chkNmlTRSType2Unlock1.Checked and (edtNmlTRSType2Unlock1.Text = '') then
  begin
    GMessagebox(Format('[%s] ''%s''의 ''%s''를 입력해 주세요.',
      [grpNmlTRSPenaltyType2.Caption, lblNmlTRSType2Cap1.Caption,
      chkNmlTRSType2Unlock1.Caption]), cdmsE);
    edtNmlTRSType2Unlock1.SetFocus;
    Exit;
  end;

  // 단계2
  if chkNmlTRSType2Unlock2.Checked and (edtNmlTRSType2Unlock2.Text = '') then
  begin
    GMessagebox(Format('[%s] ''%s''의 ''%s''를 입력해 주세요.',
      [grpNmlTRSPenaltyType2.Caption, lblNmlTRSType2Cap2.Caption,
      chkNmlTRSType2Unlock2.Caption]), cdmsE);
    edtNmlTRSType2Unlock2.SetFocus;
    Exit;
  end;

  // 단계3
  if chkNmlTRSType2Unlock3.Checked and (edtNmlTRSType2Unlock3.Text = '') then
  begin
    GMessagebox(Format('[%s] ''%s''의 ''%s''를 입력해 주세요.',
      [grpNmlTRSPenaltyType2.Caption, lblNmlTRSType2Cap3.Caption,
      chkNmlTRSType2Unlock3.Caption]), cdmsE);
    edtNmlTRSType2Unlock3.SetFocus;
    Exit;
  end;

  GetValueTRSPenalty(2, GS_TRS_PENALTY.Type2);
  GS_EnvFile.WriteString('TRSPenalty', 'Type2Name', GS_TRS_PENALTY.Type2.Name);
  WriteIniTRSPenalty('TRSPenalty', 'Type2', 'Step1', GS_EnvFile, GS_TRS_PENALTY.Type2.Step1);
  WriteIniTRSPenalty('TRSPenalty', 'Type2', 'Step2', GS_EnvFile, GS_TRS_PENALTY.Type2.Step2);
  WriteIniTRSPenalty('TRSPenalty', 'Type2', 'Step3', GS_EnvFile, GS_TRS_PENALTY.Type2.Step3);

	// frm_JON08.SetPopupDescript;

  GMessagebox('저장하였습니다', cdmsi);
  TcxButton(Sender).Enabled := False;
end;

procedure TFrm_SETA1.btnOrderBellSetClick(Sender: TObject);
begin
	dlgOpen.Filter := '알림음(*.Wav)|*.Wav';
	dlgOpen.InitialDir := SOUNDDIRECTORY;
	if dlgOpen.Execute then
	begin
		edtOrderBellFile.Text := dlgOpen.Filename;
		gJONOrderBell.Path    := dlgOpen.Filename;
		GS_EnvFile.WriteString('OrderColor', 'OrderBellPath', gJONOrderBell.Path);
	end;
end;

procedure TFrm_SETA1.btnOrderCancelReason0Click(Sender: TObject);
var
  i: Integer;
begin
  if TAdvGlowButton(Sender).Down then
  begin
    for i := 0 to 9 do
    begin
      if TAdvGlowButton(Sender).Tag = i then
      begin
        TAdvGlowButton(FindComponent('btnOrderCancelReason' + IntToStr(i))).Down := True;
      end
      else
        TAdvGlowButton(FindComponent('btnOrderCancelReason' + IntToStr(i))).Down := False;
    end;
    gbOrderCancelSelect := TAdvGlowButton(Sender).Tag;
    GS_EnvFile.WriteInteger('Confirm', 'ORDERCANCELSELECT', gbOrderCancelSelect);
  end
  else
    TAdvGlowButton(Sender).Down := True;
end;

procedure TFrm_SETA1.btnSaveClick(Sender: TObject);
begin
  pnlSvrOpt.Left := (Self.Width - pnlSvrOpt.Width) div 2;
  pnlSvrOpt.top := (Self.Height - pnlSvrOpt.Height) div 2;
  pnlSvrOpt.BringToFront;
  pnlSvrOpt.Visible := True;
end;

procedure TFrm_SETA1.BtnSearchClick(Sender: TObject);
Var
  i, iRow: Integer;
  sG, sMnuA, sMenu : String;
begin
  if Trim(EdtSearch.Text) = '' then
  begin
    cxGridSch.Visible := False;
    pSetComponentFontColor(999, '');
    Exit;
  end;

  cxGridSchView.DataController.SetRecordCount(0);
  if Trim(EdtSearch.Text) <> '' then
  begin
    cxGridSchView.BeginUpdate;
    try
      if chkInMenu.Checked then
      begin
        for i := 0 to Length(SchAllMenu) - 1 do
        begin
          if Pos(Trim(UpperCase(EdtSearch.Text)), UpperCase(SchAllMenu[i].Text)) > 0 then
          begin
            sG := IntToStr(SchAllMenu[i].Code);
            iRow := cxGridSchView.DataController.AppendRecord;

            pGetMenuCodeToName( SchAllMenu[i].Code, sMnuA, sMenu );

            cxGridSchView.DataController.Values[iRow, 0] := sG;
            cxGridSchView.DataController.Values[iRow, 1] := sMnuA;
            cxGridSchView.DataController.Values[iRow, 2] := sMenu;
            cxGridSchView.DataController.Values[iRow, 3] := '1';
            cxGridSchView.DataController.Values[iRow, 4] := SchAllMenu[i].Text;
            cxGridSchView.DataController.Values[iRow, 5] := SchAllMenu[i].Menu;
          end;
        end;
      end;

      for i := 0 to Length(SearchMenu) - 1 do
      begin
        if Pos(Trim(UpperCase(EdtSearch.Text)), ReplaceStr(UpperCase(SearchMenu[i].Word), ' ', '')) > 0 then
        begin
          if (SearchMenu[i].Code <> 100) And
             (SearchMenu[i].Code <> 200) And
             (SearchMenu[i].Code <> 300) And
             (SearchMenu[i].Code <> 400) And
             (SearchMenu[i].Code <> 900) then
          begin
            sG := IntToStr(SearchMenu[i].Code);
            iRow := cxGridSchView.DataController.AppendRecord;

            cxGridSchView.DataController.Values[iRow, 0] := sG;
            if Copy(AnsiString(sG), 1, 1) = '1' then
              cxGridSchView.DataController.Values[iRow, 1] := '접수현황설정'
            else if Copy(AnsiString(sG), 1, 1) = '2' then
              cxGridSchView.DataController.Values[iRow, 1] := '접수창설정'
            else if Copy(AnsiString(sG), 1, 1) = '3' then
              cxGridSchView.DataController.Values[iRow, 1] := '고객설정'
            else if Copy(AnsiString(sG), 1, 1) = '4' then
              cxGridSchView.DataController.Values[iRow, 1] := '기사설정'
            else if Copy(AnsiString(sG), 1, 1) = '5' then
              cxGridSchView.DataController.Values[iRow, 1] := '요금설정'
            else if Copy(AnsiString(sG), 1, 1) = '9' then
              cxGridSchView.DataController.Values[iRow, 1] := '공통설정';

            cxGridSchView.DataController.Values[iRow, 2] := SearchMenu[i].Text;
            cxGridSchView.DataController.Values[iRow, 4] := '';
            cxGridSchView.DataController.Values[iRow, 5] := '';
          end;
        end;
      end;
    finally
      cxGridSchView.EndUpdate;
    end;
    cxGridSch.Visible := True;
    pSetComponentFontColor(cxPageControl1.Pages[cxPageControl1.ActivePageIndex].Tag, Trim(EdtSearch.Text));
  end;
end;

procedure TFrm_SETA1.btnUpClick(Sender: TObject);
Var slTmp : TStringList;
    sMsg, sOpt : String;
begin
  try
    if rbSelA.Checked then sOpt := '0' else
    if rbSelB.Checked then sOpt := '1';

    slTmp := TStringList.Create;
		slTmp.LoadFromFile(ENVPATHFILE);
    if Frm_Main.fSetIniFile('1', GT_SEL_BRNO.HDNO, sOpt, slTmp) then
		begin
      GMessagebox('저장되었습니다.', CDMSE);
      pnlSvrOpt.Visible := False;
      btnConfigExit.Click;
    end;
  finally
    FreeAndNil(slTmp);
  end;
end;

procedure TFrm_SETA1.btn_AllPopUpPositionClick(Sender: TObject);
begin
	gPositionClear := True;

{
	try   //모니터 크기
		if Screen.MonitorCount = 1 then iScreenWidth := Screen.Width
															 else iScreenWidth := Screen.Monitors[Monitor.MonitorNum].Width;
	except
		iScreenWidth := Screen.Width;
	end;
	//  GS_JON01_TYPE : Integer = 0;  // 접수창 타입 선택 0.기본, 1.디자인, 2.타입2
	//  GS_JON01_TAB  : Integer = 0;  // 접수창 보기 : 0.기본, 1.탭방식

	if GS_JON01_TYPE = 1 then iJon01Width := 417
											 else iJon01Width := 615;
	if GS_JON01_TYPE = 0 then
	begin
		if GS_JON01_TAB = 1 then //탭방식
		begin
			Frm_JON00.Left := iScreenWidth - (Frm_JON00.Width + 5);
			Frm_JON00.Top := 60;
			Frm_JON00.show;
		end else
		begin
			for i := 0 to JON_MAX_CNT - 1 do
			begin
				if Frm_Main.JON01MNG[i].USE then
				begin
					if Frm_Main.JON01MNG[i].FrmGubun = 2 then
					begin
						if Assigned(Frm_Main.Frm_JON01B[i]) then
						begin
							Frm_Main.Frm_JON01B[i].Left := iScreenWidth - (iJon01Width + 5);
							Frm_Main.Frm_JON01B[i].Top := 60;
							Frm_Main.Frm_JON01B[i].Show
						end;
					end else
					begin
						if Assigned(Frm_Main.Frm_JON01[i]) then
						begin
							Frm_Main.Frm_JON01[i].Left := iScreenWidth - (iJon01Width + 5);
							Frm_Main.Frm_JON01[i].Top := 60;
							Frm_Main.Frm_JON01[i].Show;
						end;
					end;
				end;
			end;
		end;
	end;
	GS_EnvFile.WriteInteger('WinPos', 'Jon01Left', iScreenWidth - (iJon01Width + 5));
	GS_EnvFile.WriteInteger('WinPos', 'Jon01Top' , Self.Top );
}
	GS_JON012_POSFIX  := False;
	GS_JON019_POSFIX  := False;
	GS_JON021_POSFIX  := False;
	GS_JON30_POSFIX   := False;

	GS_EnvFile.WriteBool('AcceptWin', 'Jon012Fix', GS_JON012_POSFIX);
	GS_EnvFile.WriteBool('AcceptWin', 'Jon019Fix', GS_JON012_POSFIX);
	GS_EnvFile.WriteBool('AcceptWin', 'Jon30Fix', GS_JON012_POSFIX);
	GS_EnvFile.WriteInteger('AcceptWin', 'Jon63Top' , 500);
	GS_EnvFile.WriteInteger('AcceptWin', 'Jon63Left', 600);

	showmessage('버튼위치가 초기화 되었습니다.' +#13#10+#13#10
						+ '상담원 프로그램을 재실행 해야 적용됩니다.');
end;

procedure TFrm_SETA1.btn_BubHuListSaveClick(Sender: TObject);
var
	i : Integer;
begin
	SetDebugeWrite('TFrm_SETA1.btn_BubHuListSaveClick');
	Try
		GS_EnvFile.EraseSection('BR_BubHu');
		GS_BubHu_LIST.Clear;
		for I := 0 to cxBubHuList.DataController.RecordCount -1 do
		begin
			if cxBubHuList.DataController.Values[i, 0] = True then
			begin
				GS_BubHu_LIST.Add(cxBubHuList.DataController.Values[i, 3]);
				GS_EnvFile.WriteString('BR_BubHu', cxBubHuList.DataController.Values[i, 3], '');
			end;
		end;
		showmessage('법후명칭 사용지사 설정 완료');
	except
		on e: exception do
			Assert(False, e.Message);
  end;
end;

procedure TFrm_SETA1.btn_ConnectTestClick(Sender: TObject);
Var i : Integer;
begin
  if Not rb_OnLineServer.Checked then Exit;

  try
		CHARGE_GUBUN := 'O'; //Online
		dmCharge.FDC_OnLine_41.Connected := False;
		dmCharge.FDC_OnLine_41.Params.Clear;
		dmCharge.FDC_OnLine_41.Params.Add('DriverID=MySQL');
		dmCharge.FDC_OnLine_41.Params.Add('CharacterSet=utf8');
		dmCharge.FDC_OnLine_41.Params.Add('Database='  + CHARGE_Online_DBNAME);
		dmCharge.FDC_OnLine_41.Params.Add('Password='  + CHARGE_Online_PW);
		dmCharge.FDC_OnLine_41.Params.Add('User_name=' + CHARGE_Online_ID);
		dmCharge.FDC_OnLine_41.Params.Add('PORT='      + CHARGE_Online_PORT);
		dmCharge.FDC_OnLine_41.Params.Add('Server='    + CHARGE_Online_IP1);
		dmCharge.FDC_OnLine_41.Connected := True;

    // 2011.02.14(부팅없이심야요금제테이블튜닝)
    Try
      SVRPREM_TUN;
    except
    end;

		if dmCharge.FDC_OnLine_41.Connected then
    begin
      Frm_Main.pLOCAL_SYNC_CHECK;
			GMessagebox('접속 하였습니다.', cdmsi);

      RbButton22.Enabled := True;
			if (CHARGE_GUBUN = 'O') and (GS_LOCALDATA_USE in [0, 2]) then
        btn3.Enabled := True; // DB POI DATA 받아오기
      rb_Local_Both.Enabled := True;
      rb_Local_Data.Enabled := True;
      rb_Local_DB.Enabled := True;

      for i := 0 to JON03_MAX_CNT - 1 do
      begin
        if ( Frm_Main.JON03MNG[i].Use ) And ( Frm_Main.JON03MNG[i].CreateYN ) then
        begin
          if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE in [0,2]) then Frm_Main.Frm_JON03[i].btnMySqlPoiSync.Visible := True
                                                                                            else Frm_Main.Frm_JON03[i].btnMySqlPoiSync.Visible := False;
        end;
      end;
    end else
    begin
      if GS_EXEC_GUBUN = 1 then
      begin
        GS_EnvFile.WriteString('CHARGE', 'CH_GUBUN', 'P');
				CHARGE_GUBUN := 'P';
				GMessagebox('접속 실패 하였습니다.', CDMSE);
        RbButton22.Enabled := False;
				btn3.Enabled := False; // DB POI DATA 받아오기
				rb_Local_Both.Enabled := False;
        rb_Local_Data.Enabled := False;
        rb_Local_DB.Enabled := False;
      end;
    end;
  except
		GMessagebox('접속 실패 하였습니다.', CDMSE);
    GS_EnvFile.WriteString('CHARGE', 'CH_GUBUN', 'P');
		CHARGE_GUBUN := 'P';
		dmCharge.FDC_OnLine_41.Connected := False;
  end;
end;

procedure TFrm_SETA1.btn_msg_closeClick(Sender: TObject);
var sTmp : string;
	iTmp : integer;
begin
	if Trim(edt_msg_close.Text) = ''  then
	begin
		showmessage('설정시간을 입력하세요.');
		edt_msg_close.SetFocus;
		Exit;
	end;
	if StrToFloatDef(edt_msg_close.Text,0.0) < 0 then
	begin
		showmessage('0초보다 작은 수는 입력할 수 없습니다.');
		edt_msg_close.SetFocus;
		Exit;
	end;
	if StrToFloatDef(edt_msg_close.Text,0.0) > 10 then
	begin
		showmessage('10초보다 큰 수는 입력할 수 없습니다.');
		edt_msg_close.SetFocus;
		Exit;
	end;
	iTmp := pos('.', edt_msg_close.Text);
	if iTmp > 0 then
	begin
		sTmp := copy(edt_msg_close.Text, iTmp+1, length(edt_msg_close.Text) - iTmp);
		if length(sTmp) > 1 then
		begin
			showmessage('소수점 1자리까지만 입력할 수 없습니다.');
			edt_msg_close.SetFocus;
			Exit;
		end;
	end;

	GS_EnvFile.WriteString('GER', 'Time_Close', edt_msg_close.Text);
	GMessagebox('적용되었습니다.', CDMSI);
end;

procedure TFrm_SETA1.btn_StatDnClick(Sender: TObject);
var
	CurIndex: Integer;
begin
	CurIndex := lb_stat.ItemIndex;

	if CurIndex < 0 then
	begin
		GMessagebox('선택된 항목이 없습니다.', CDMSE);
		Exit;
	end;

  if CurIndex = lb_stat.Count - 1 then
    Exit
  else if CurIndex < lb_stat.Count - 1 then
  begin
    lb_stat.Items.Move(CurIndex, CurIndex + 1);
    lb_stat.ItemIndex := CurIndex + 1;
  end;
end;

procedure TFrm_SETA1.btn_StatSaveClick(Sender: TObject);
var
  i: Integer;
begin
  GS_EnvFile.EraseSection('StatusSort');
  // ini파일에 상태순 저장
  for i := 0 to lb_stat.Items.Count - 1 do
  begin
    if i < 10 then
    begin
      GS_EnvFile.WriteString('StatusSort', lb_stat.Items.Strings[i], IntToStr(i));
    end else
    begin
      case i of
        10 : GS_EnvFile.WriteString('StatusSort', lb_stat.Items.Strings[i], 'A');
      end;
    end;
  end;

	if CB_Stat2.ItemIndex >= 0 then
	begin
		GS_EnvFile.WriteString('COUNSEL', 'StatusSort2', CB_Stat2.Text);
		GS_EnvFile.WriteString('COUNSEL', 'StatusSort3', CB_Stat3.Text);
	end else
	begin
    GS_EnvFile.WriteString('COUNSEL', 'StatusSort2', '');
		GS_EnvFile.WriteString('COUNSEL', 'StatusSort3', '');
	end;

	GMessagebox('저장되었습니다.', cdmsi);
end;

procedure TFrm_SETA1.btn_StatUpClick(Sender: TObject);
var
  CurIndex: Integer;
begin
  CurIndex := lb_stat.ItemIndex;

  if CurIndex < 0 then
  begin
    GMessagebox('선택된 항목이 없습니다.', CDMSE);
    Exit;
  end;

  if CurIndex = 0 then
    Exit
  else if (CurIndex > 0) and (CurIndex <= lb_stat.Count - 1) then
  begin
    lb_stat.Items.Move(CurIndex, CurIndex - 1);
    lb_stat.ItemIndex := CurIndex - 1;
  end;
end;

procedure TFrm_SETA1.btn_wR1Click(Sender: TObject);
begin
	if TSpeedButton(Sender).Tag = 0 then
	begin
		if ed_AddRing.Text = '' then Exit;
		if not FileExists(ed_AddRing.Text) then
		begin
			GMessagebox('지정된 파일이 존재하지 않습니다.', CDMSE);
			Exit;
		end;
		sndPlaySound(PChar(ed_AddRing.Text), SND_FILENAME);
	end else
	begin
		if ed_DelRing.Text = '' then Exit;
		if not FileExists(ed_DelRing.Text) then
		begin
			GMessagebox('지정된 파일이 존재하지 않습니다.', CDMSE);
			Exit;
		end;
		sndPlaySound(PChar(ed_DelRing.Text), SND_FILENAME);
	end;  
end;

procedure TFrm_SETA1.CbAcceptMemo1Click(Sender: TObject);
begin
  gJONAcceptMemo.Use := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('AcceptMemo', 'Use', gJONAcceptMemo.Use);
end;

procedure TFrm_SETA1.cbbOrderTime1PropertiesChange(Sender: TObject);
var
	Sec: string;
	Time: Integer;
begin
	Sec := Copy(TcxComboBox(Sender).Text, 1,
		Pos('분 후', TcxComboBox(Sender).Text) - 1);

	Time := StrToIntDef(Sec, -1);
	if TcxComboBox(Sender) = cbbOrderTime1 then
	begin
		gJONOrderColor.Step1.Time := Time;
		GS_EnvFile.WriteInteger('OrderColor', 'Step1Time', Time);
	end else
	if TcxComboBox(Sender) = cbbOrderTime2 then
	begin
		gJONOrderColor.Step2.Time := Time;
		GS_EnvFile.WriteInteger('OrderColor', 'Step2Time', Time);
	end else
	if TcxComboBox(Sender) = cbbOrderTime3 then
	begin
		gJONOrderColor.Step3.Time := Time;
		GS_EnvFile.WriteInteger('OrderColor', 'Step3Time', Time);
	end else
	if TcxComboBox(Sender) = cbbOrderTime4 then
	begin
		gJONOrderColor.Step4.Time := Time;
		GS_EnvFile.WriteInteger('OrderColor', 'Step4Time', Time);
	end;
end;

procedure TFrm_SETA1.cbb_AfterMoneyClick(Sender: TObject);
begin
  // 2011.03.02 후불기본값
  GT_USERIF.AfterPayMidx := cbb_AfterMoney.ItemIndex;
	GS_EnvFile.WriteInteger('JON01AFTERMONEYUSE', 'AFTERMONEYDEFAULT', GT_USERIF.AfterPayMidx);
end;

procedure TFrm_SETA1.cbDriverChargeLocalValuePropertiesChange(Sender: TObject);
begin
  try
    GS_JON_DRIVERCHARGELOCAL := cbDriverChargeLocalValue.Text;
    GS_EnvFile.WriteString('CHARGE', 'JON_DRIVERCHARGELOCAL', GS_JON_DRIVERCHARGELOCAL);
    pDriverChargeLocalSetting;
  except
  end;
end;

procedure TFrm_SETA1.cbMyMainRateNoChangeClick(Sender: TObject);
begin
	gsMyMainRateNoChange := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('MYMAINTELUSE', 'RateNoChange', gsMyMainRateNoChange);
end;

procedure TFrm_SETA1.cb_DurationPropertiesChange(Sender: TObject);
var iTime: Integer;
begin
	if cb_Duration.Tag = 99 then exit;
	case cb_Duration.ItemIndex of
		0: iTime := 20;
		1: iTime := 30; 
		2: iTime := 40; 
		3: iTime := 50; 
		4: iTime := 60; 
	end;
	GS_Duration := iTime;
	GS_EnvFile.WriteInteger('COUNSEL', 'GS_Duration', GS_Duration);
end;

procedure TFrm_SETA1.chkAutoCmdQuestionClick(Sender: TObject);
begin
  GS_JON_AUTOCMDQUESTION := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('Confirm', 'AutoCmdQuestion', TcxCheckBox(Sender).Checked);
end;

procedure TFrm_SETA1.chkAutoReloadHgClick(Sender: TObject);
begin
  GS_COUNSEL_AUTORELOADHG := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'AutoReloadHIG', GS_COUNSEL_AUTORELOADHG);
end;

procedure TFrm_SETA1.chkAutoStandByClick(Sender: TObject);
begin
	GS_JON_AutoStandBy := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('Confirm', 'AutoStandBy', TcxCheckBox(Sender).Checked);
end;

procedure TFrm_SETA1.chkBubHuListClick(Sender: TObject);
var
	i: Integer;
begin
	cxBubHuList.DataController.BeginUpdate;
	try
		for I := 0 to cxBubHuList.DataController.RecordCount - 1 do
		begin
			cxBubHuList.DataController.Values[I, 0] := chkBubHuList.Checked;
			if chkBubHuList.Checked then
				cxBubHuList.DataController.Values[I, 2] := '법후'
			else
				cxBubHuList.DataController.Values[I, 2] := '';
		end;
	finally
		cxBubHuList.DataController.EndUpdate;
  end;
end;

procedure TFrm_SETA1.chkCardBigoUseClick(Sender: TObject);
begin
  gsJON01CardBigoUse := chkCardBigoUse.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'gsJON01CardBigoUse', gsJON01CardBigoUse);
end;

procedure TFrm_SETA1.chkChangeOrderScrollTopClick(Sender: TObject);
begin
	GS_COUNSEL_CHNORDERSCROLLTOP := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'ChangeOrderScrollTop', GS_COUNSEL_CHNORDERSCROLLTOP);
end;

procedure TFrm_SETA1.chkCloseConfirmClick(Sender: TObject);
begin
	GB_JON_CLOSE_CONFIRM := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GB_JON_CLOSE_CONFIRM', GB_JON_CLOSE_CONFIRM);
end;

procedure TFrm_SETA1.chkCustTelAddDDDClick(Sender: TObject);
begin
  GS_DDD_Add := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('RouteMS', 'AddDDD', TcxCheckBox(Sender).Checked);
end;

procedure TFrm_SETA1.chkDitanceUseClick(Sender: TObject);
begin
  GT_DISTANCE_ST := IfThen(chkDitanceUse.Checked, 1, 0);
  GS_EnvFile.WriteString('CHARGE', 'GT_DISTANCE_ST', IntToStr(GT_DISTANCE_ST));

  if GT_DISTANCE_ST = 1 then
  begin
    if rb_charge_cal0.Checked then
    begin
      rb_charge_cal1.Checked := True;
      rb_charge_cal0Click(rb_charge_cal1);
    end;
  end;
end;

procedure TFrm_SETA1.chkFileCallingUseClick(Sender: TObject);
begin
  GS_JON_FILECALLINGUSE := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('Confirm', 'FileCallingUse',
    TcxCheckBox(Sender).Checked);
  // 2013.11.1 cid.info 파일 사용 KHS
  if GS_JON_FILECALLINGUSE then
    frm_Main.tmr_CidInfo.Enabled := True
  else
    frm_Main.tmr_CidInfo.Enabled := False;
end;

procedure TFrm_SETA1.chkJon012DestSearchUSEClick(Sender: TObject);
begin
	GB_JON012_DESTSEARCH_USE := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GB_JON012_DESTSEARCH_USE', GB_JON012_DESTSEARCH_USE);
end;

procedure TFrm_SETA1.chkJon01ShortMenuClick(Sender: TObject);
begin
	GB_JON01_SHORTMENU_USE := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GB_JON01_SHORTMENU_USE', GB_JON01_SHORTMENU_USE);
end;

procedure TFrm_SETA1.chkJON01_AUTOLOCKClick(Sender: TObject);
begin
	GS_START_AUTOLOCK := chkJON01_AUTOLOCK.Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'START_AUTOLOCK', GS_START_AUTOLOCK);
end;

procedure TFrm_SETA1.chkJON01_BackKeyUseClick(Sender: TObject);
begin
  GB_JON_BACKKEYUSE := chkJON01_BackKeyUse.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'seBackKeyUse', GB_JON_BACKKEYUSE);
end;

procedure TFrm_SETA1.chkJON01_BubhuClick(Sender: TObject);
begin
  GB_JON_BUBHUUSE := chkJON01_Bubhu.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'seBubhuuse', GB_JON_BUBHUUSE);
end;

procedure TFrm_SETA1.chkJON01_ENDAUTOLOCKClick(Sender: TObject);
begin
	GS_END_AUTOLOCK := chkJON01_ENDAUTOLOCK.Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'END_AUTOLOCK', GS_END_AUTOLOCK);
end;

procedure TFrm_SETA1.chkJON01_SexMClick(Sender: TObject);
begin
  GB_JON_SEXM := chkJON01_SexM.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'seSexMuse', GB_JON_SEXM);
end;

procedure TFrm_SETA1.chkJON01_UPMODE1Click(Sender: TObject);
begin
  GS_UPMODE1_START_CHANGE := chkJON01_UPMODE1.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'UPMODE1_START_CHANGE', GS_UPMODE1_START_CHANGE);
end;

procedure TFrm_SETA1.chkJON01_UPMODE2Click(Sender: TObject);
begin
  GS_UPMODE2_START_CHANGE := chkJON01_UPMODE2.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'UPMODE2_START_CHANGE', GS_UPMODE2_START_CHANGE);
end;

procedure TFrm_SETA1.chkJON01_UPMODE3Click(Sender: TObject);
begin
  GS_UPMODE3_START_CHANGE := chkJON01_UPMODE3.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'UPMODE3_START_CHANGE', GS_UPMODE3_START_CHANGE);
end;

procedure TFrm_SETA1.chkJON01_UPMODEClick(Sender: TObject);
begin
  GS_UPMODE_START_CHANGE := chkJON01_UPMODE.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'UPMODE_START_CHANGE', GS_UPMODE_START_CHANGE);
end;

procedure TFrm_SETA1.chkJON54AutoRunClick(Sender: TObject);
begin
	GS_JON54AutoRunNew := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'JON54AutoRunNew', GS_JON54AutoRunNew);
end;

procedure TFrm_SETA1.chkJONAddRingClick(Sender: TObject);
begin
	GS_ADD_RING_YN := chkJONAddRing.Checked;
  if ( Trim(ed_AddRing.Text) = '' ) And ( GS_ADD_RING_YN ) then
  begin
    GMessagebox('설정파일이 없습니다. 파일 선택후 체크하세요.', cdmsi);
  	GS_ADD_RING_YN := False;
  end;
 	GS_EnvFile.WriteBool('COUNSEL', 'GS_ADD_RING', GS_ADD_RING_YN);
end;

procedure TFrm_SETA1.chkJONAreaAutoSETClick(Sender: TObject);
begin
	GS_AREA_AUTO_SET := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'GS_AREA_AUTO_SET', GS_AREA_AUTO_SET);
end;

procedure TFrm_SETA1.chkJONAreaAutoShowClick(Sender: TObject);
begin
  GS_MAP_AREA_AUTOSHOW := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('AcceptMap', 'AreaAutoShow', GS_MAP_AREA_AUTOSHOW);
	if Assigned(Frm_Jon30) then Frm_Jon30.chkUseMiniMap.Checked := GS_MAP_AREA_AUTOSHOW;
end;

procedure TFrm_SETA1.chkJONAutoLock_ChargeClick(Sender: TObject);
begin
	GS_AUTO_LOCK_CHARGE := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GS_AUTO_LOCK_CHARGE', GS_AUTO_LOCK_CHARGE);
end;

procedure TFrm_SETA1.chkJONAutoLock_EndClick(Sender: TObject);
begin
	GS_AUTO_LOCK_END := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GS_AUTO_LOCK_END', GS_AUTO_LOCK_END);
end;

procedure TFrm_SETA1.chkJONAutoLock_StartClick(Sender: TObject);
begin
	GS_AUTO_LOCK_START := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GS_AUTO_LOCK_START', GS_AUTO_LOCK_START);
end;

procedure TFrm_SETA1.chkJONBubinMenuClick(Sender: TObject);
begin
  GB_JON_USEBUBIN := chkJONBubinMenu.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'UseBubInMenu', chkJONBubinMenu.Checked);
end;

procedure TFrm_SETA1.chkJONDelRingClick(Sender: TObject);
begin
	GS_DEL_RING_YN := chkJONDelRing.Checked;
  if ( Trim(ed_DelRing.Text) = '' ) And ( GS_DEL_RING_YN ) then
  begin
    GMessagebox('설정파일이 없습니다. 파일 선택후 체크하세요.', cdmsi);
  	GS_DEL_RING_YN := False;
  end;
 	GS_EnvFile.WriteBool('COUNSEL', 'GS_DEL_RING', GS_DEL_RING_YN);
end;

procedure TFrm_SETA1.chkJONFinishMsgClick(Sender: TObject);
begin
  GB_JON_FINISHMSG := chkJONFinishMsg.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'FinishMsg', GB_JON_FINISHMSG);
end;

procedure TFrm_SETA1.chkJONMapViewSETClick(Sender: TObject);
begin
	GS_MODIFY_MAP_VIEW := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'GS_MODIFY_MAP_VIEW', GS_MODIFY_MAP_VIEW);
end;

procedure TFrm_SETA1.chkJon_Multi_ModifyClick(Sender: TObject);
Var i : Integer;
begin
  try
    if chkJon_Multi_Modify.Checked then
    begin
      if chkJon_Multi_Modify.Tag = 0 then
      begin
        Screen.Cursor := crHourGlass;
        try
          cxProgressBar1.Visible := True;
          cxProgressBar1.Properties.Max := 3;
          for i := 8 to JON_MAX_CNT - 1 do
          begin
            cxProgressBar1.Position := i - 7;

            Application.ProcessMessages;
            if Not Assigned(Frm_Main.Frm_JON01N[i]) Or ( Frm_Main.Frm_JON01N[i] = Nil ) then
            begin
              Frm_Main.Frm_JON01N[i] := TFrm_JON01N.Create(nil); // 폼 객체를 생성한다.
              Frm_Main.Frm_JON01N[i].Tag := i;
              Frm_Main.Frm_JON01N[i].Caption := '';
              Frm_Main.JON01MNG[i].CreateYN := True;
              Frm_Main.JON01MNG[i].CidInputPhoneNumber := ''; //CID로 들어온 고객연락처
            end;
          end;
        finally
          Screen.Cursor := crDefault;
          cxProgressBar1.Position := 3;
          cxProgressBar1.Visible := False;
        end;
      end;
      GB_JON_MULTI_MODIFY := True;
    end else
    begin
      GB_JON_MULTI_MODIFY := False;
    end;

    for i := 0 to JON03_MAX_CNT - 1 do
    begin
      if ( Frm_Main.JON03MNG[i].Use ) And ( Frm_Main.JON03MNG[i].CreateYN ) then
      begin
        Frm_Main.Frm_Jon03[i].chkJon_Multi_Modify.Checked := GB_JON_MULTI_MODIFY;
      end;
    end;
  except

  end;
end;

procedure TFrm_SETA1.chkLeftBrListViewModeClick(Sender: TObject);
begin
	GS_BRLISTVIEWMODE := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'BRLISTVIEWMODE', GS_BRLISTVIEWMODE);
end;

procedure TFrm_SETA1.chkLocalMapSETClick(Sender: TObject);
begin
  GS_LocalMapSET := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'LocalMapSET', GS_LocalMapSET);
end;

procedure TFrm_SETA1.chkNmlAutoScrollTopClick(Sender: TObject);
begin
	GS_COUNSEL_AUTOSCROLLTOP := not TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'AutoScrollTop', GS_COUNSEL_AUTOSCROLLTOP);
end;

procedure TFrm_SETA1.chkNmlInputAutoCloseClick(Sender: TObject);
begin
  GS_WKCASH_AUTOCLOSE := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('WKCASH_DEFAULT', 'FINISH_AUTOCLOSE', GS_WKCASH_AUTOCLOSE);
end;

procedure TFrm_SETA1.chkNmlInputFixedAccTabClick(Sender: TObject);
begin
  GS_WKCASH_FIXACCOUNT := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('WKCASH_DEFAULT', 'FIXIED_ACCOUNTTAB', GS_WKCASH_FIXACCOUNT);
end;

procedure TFrm_SETA1.chkNmlInputNoMsgClick(Sender: TObject);
begin
  GS_WKCASH_NOMSG := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('WKCASH_DEFAULT', 'FINISH_NOMSG', GS_WKCASH_NOMSG);
end;

procedure TFrm_SETA1.chkNmlReadyNoShowWinClick(Sender: TObject);
begin
  GB_JONLIST_READY_NOSHOW := chkNmlReadyNoShowWin.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'ReadyNoShow', GB_JONLIST_READY_NOSHOW);
end;

procedure TFrm_SETA1.chkNmlRetryNoShowWinClick(Sender: TObject);
begin
  GB_JONLIST_RETRY_NOSHOW := chkNmlRetryNoShowWin.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'RetryNoShow', GB_JONLIST_RETRY_NOSHOW);
end;

procedure TFrm_SETA1.chkNmlTRSType1StepUse1Click(Sender: TObject);
begin
  CheckTRSPenaltyChange(1, GS_TRS_PENALTY.Type1);
end;

procedure TFrm_SETA1.chkNmlTRSType2StepUse1Click(Sender: TObject);
begin
  CheckTRSPenaltyChange(2, GS_TRS_PENALTY.Type2);
end;

procedure TFrm_SETA1.chkNmlTRSType2Unlock1Click(Sender: TObject);
begin
  CheckTRSPenaltyChange(2, GS_TRS_PENALTY.Type2);
end;

procedure TFrm_SETA1.chkNmlXlsAutoOpenClick(Sender: TObject);
begin
  GS_XLS_AUTOOPEN := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('GER', 'XlsAutoOpen', GS_XLS_AUTOOPEN);
end;

procedure TFrm_SETA1.chkNmlXlsDTypeUseClick(Sender: TObject);
begin
  GS_XLS_DTypeUse := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('GER', 'XlsDTypeUse', GS_XLS_DTypeUse);
end;

procedure TFrm_SETA1.chkOrderBellUsePropertiesChange(Sender: TObject);
begin
	gJONOrderBell.Use := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('OrderColor', 'OrderBell', TcxCheckBox(Sender).Checked);

	cbOrderBellTime.Enabled := gJONOrderBell.Use;
	btnOrderBellSet.Enabled := gJONOrderBell.Use;
	gJONOrderBell.Path   := '';
	if gJONOrderBell.Use then
	begin
		gJONOrderBell.Time   := GS_EnvFile.ReadInteger('OrderColor', 'OrderBellTime', -1);
		cbOrderBellTime.Text := IntToStr(gJONOrderBell.Time) + '분';

		gJONOrderBell.Path   := GS_EnvFile.ReadString('OrderColor', 'OrderBellPath', '');
		edtOrderBellFile.Text := gJONOrderBell.Path;
	end;
end;
			
procedure TFrm_SETA1.cbOrderBellTimePropertiesChange(Sender: TObject);
var
	Sec: string;
	iTime: Integer;
begin
	Sec := Copy(TcxComboBox(Sender).Text, 1,
		Pos('분', TcxComboBox(Sender).Text) - 1);

	iTime := StrToIntDef(Sec, -1);
	gJONOrderBell.Time := iTime;
	GS_EnvFile.WriteInteger('OrderColor', 'OrderBellTime', iTime);
end;

procedure TFrm_SETA1.cbViewDateType1PropertiesChange(Sender: TObject);
begin
  GT_MAIN_VIEW_TIME1 := TcxComBoBox(Sender).ItemIndex;
  GS_EnvFile.WriteInteger('MAIN_VIEW', 'TIME1', GT_MAIN_VIEW_TIME1);
end;

procedure TFrm_SETA1.cbViewDateType2PropertiesChange(Sender: TObject);
begin
	GT_MAIN_VIEW_TIME2 := TcxComBoBox(Sender).ItemIndex;
  GS_EnvFile.WriteInteger('MAIN_VIEW', 'TIME2', GT_MAIN_VIEW_TIME2);
end;

procedure TFrm_SETA1.cbViewDateType3PropertiesChange(Sender: TObject);
begin
  GT_MAIN_VIEW_TIME3 := TcxComBoBox(Sender).ItemIndex;
  GS_EnvFile.WriteInteger('MAIN_VIEW', 'TIME3', GT_MAIN_VIEW_TIME3);
end;

procedure TFrm_SETA1.cbViewDateType4PropertiesChange(Sender: TObject);
begin
  GT_MAIN_VIEW_TIME4 := TcxComBoBox(Sender).ItemIndex;
  GS_EnvFile.WriteInteger('MAIN_VIEW', 'TIME4', GT_MAIN_VIEW_TIME4);
end;

procedure TFrm_SETA1.cbViewDateType5PropertiesChange(Sender: TObject);
begin
  GT_MAIN_VIEW_TIME5 := TcxComBoBox(Sender).ItemIndex;
  GS_EnvFile.WriteInteger('MAIN_VIEW', 'TIME5', GT_MAIN_VIEW_TIME5);
end;

procedure TFrm_SETA1.cbViewDateType6PropertiesChange(Sender: TObject);
begin
  GT_MAIN_VIEW_TIME6 := TcxComBoBox(Sender).ItemIndex;
  GS_EnvFile.WriteInteger('MAIN_VIEW', 'TIME6', GT_MAIN_VIEW_TIME6);
end;

procedure TFrm_SETA1.chkOrderChargeCheckClick(Sender: TObject);
begin
	GSMyMainTelOrderChargeCheck := chkOrderChargeCheck.Checked;
	GS_EnvFile.WriteBool('MYMAINTELUSE', 'OrderChargeCheck', GSMyMainTelOrderChargeCheck);
end;

procedure TFrm_SETA1.chkOrderColorClick(Sender: TObject);
begin
	gJONOrderColor.Use := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('OrderColor', 'Use', gJONOrderColor.Use);
end;

procedure TFrm_SETA1.chkOrderUse1Click(Sender: TObject);
begin
	if TcxCheckBox(Sender) = chkOrderUse1 then
  begin
		gJONOrderColor.Step1.Use := TcxCheckBox(Sender).Checked;
		GS_EnvFile.WriteBool('OrderColor', 'Step1Use', TcxCheckBox(Sender).Checked);
	end else
  if TcxCheckBox(Sender) = chkOrderUse2 then
  begin
    gJONOrderColor.Step2.Use := TcxCheckBox(Sender).Checked;
    GS_EnvFile.WriteBool('OrderColor', 'Step2Use', TcxCheckBox(Sender).Checked);
  end else
  if TcxCheckBox(Sender) = chkOrderUse3 then
  begin
    gJONOrderColor.Step3.Use := TcxCheckBox(Sender).Checked;
    GS_EnvFile.WriteBool('OrderColor', 'Step3Use', TcxCheckBox(Sender).Checked);
  end else
  if TcxCheckBox(Sender) = chkOrderUse4 then
  begin
    gJONOrderColor.Step4.Use := TcxCheckBox(Sender).Checked;
    GS_EnvFile.WriteBool('OrderColor', 'Step4Use', TcxCheckBox(Sender).Checked);
  end;
end;

procedure TFrm_SETA1.chkPostBigoUseClick(Sender: TObject);
begin
  gsJON01PostBigoUse := chkPostBigoUse.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'gsJON01PostBigoUse', gsJON01PostBigoUse);
end;

procedure TFrm_SETA1.chkProgSizeClick(Sender: TObject);
begin
	GB_PorgramSize := TcxCheckBox(Sender).Checked;

  if GB_PorgramSize then
  begin
    Frm_Main.Constraints.MinHeight := 0;
    Frm_Main.Constraints.MinWidth  := 0;
  end else
  begin
    Frm_Main.Constraints.MinHeight := 900;
    Frm_Main.Constraints.MinWidth  := 1280;
  end;

  GS_EnvFile.WriteBool('GER', 'PorgramSize', GB_PorgramSize);
end;

procedure TFrm_SETA1.chkSendWorkerClick(Sender: TObject);
begin
	GS_JON_SENDWORKER_CONF := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('Confirm', 'SendWorker', TcxCheckBox(Sender).Checked);
end;

procedure TFrm_SETA1.chkWKCONAutoScrollTopClick(Sender: TObject);
begin
	GS_WKCON_AUTOSCROLLTOP := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'WKAutoScrollTop', GS_WKCON_AUTOSCROLLTOP);
end;

procedure TFrm_SETA1.chkWorkerPenaltyClick(Sender: TObject);
begin
  GS_JON_WKPANELTY_CONF := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('Confirm', 'WorkerPanelty', TcxCheckBox(Sender).Checked);
end;

procedure TFrm_SETA1.chk_MNG1501NoUseClick(Sender: TObject);
begin
	GS_MNG1501NoUse := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'MNG1501NoUse', GS_MNG1501NoUse);
end;

procedure TFrm_SETA1.chk_AIQuestionClick(Sender: TObject);
begin
	GS_COUNSEL_AIQuestion := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'AIQuestion', GS_COUNSEL_AIQuestion);
end;

procedure TFrm_SETA1.chk_BlockCidAddClick(Sender: TObject);
begin
	GS_COUNSEL_BLOCKCIDADD := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'BlockCidAdd', GS_COUNSEL_BLOCKCIDADD);
end;

procedure TFrm_SETA1.chk_CallCustClick(Sender: TObject);
begin
	GS_COUNSEL_CallCustColClick := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'CallCustColClick', GS_COUNSEL_CallCustColClick);
end;

procedure TFrm_SETA1.chk_CallWorkerClick(Sender: TObject);
begin
	GS_COUNSEL_CallWorkerColClick := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'CallWorkerColClick', GS_COUNSEL_CallWorkerColClick);
end;

procedure TFrm_SETA1.chk_COUNSEL_TITLE_VIEW1Click(Sender: TObject);
begin
	GB_COUNSEL_TITLE_VIEW1 := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GS_COUNSEL_TITLE_VIEW1', GB_COUNSEL_TITLE_VIEW1);
end;

procedure TFrm_SETA1.chk_COUNSEL_TITLE_VIEW2Click(Sender: TObject);
begin
	GB_COUNSEL_TITLE_VIEW2 := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GS_COUNSEL_TITLE_VIEW2', GB_COUNSEL_TITLE_VIEW2);
end;

procedure TFrm_SETA1.chk_JON03DetailExcelViewClick(Sender: TObject);
begin
	GS_JON03DetailExcelView := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'JON03DetailExcelView', GS_JON03DetailExcelView);
end;

procedure TFrm_SETA1.chk_KMAiRateClick(Sender: TObject);
var sTmp : string;
begin
	if chk_KMAiRate.Tag = 99 then exit;
	GB_KMAiRateUSE := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('MYMAINTELUSE', 'KMAiRateUSE', GB_KMAiRateUSE);
	if GB_KMAiRateUSE then 
	begin
		cbo_KMAiRate.enabled := True;
		case cbo_KMAiRate.itemindex of
			0: sTmp := 'AiFare';
			1: sTmp := 'VipFare';
			2: sTmp := 'EconomyFare';
		end;
		GS_KMAiRateName := sTmp;
		GS_EnvFile.WriteString('MYMAINTELUSE', 'KMAiRateName', GS_KMAiRateName);
	end else cbo_KMAiRate.enabled := False;
end;

procedure TFrm_SETA1.cbo_KMAiRatePropertiesChange(Sender: TObject);
var sTmp : string;
begin
	if cbo_KMAiRate.Tag = 99 then exit;
	case cbo_KMAiRate.itemindex of
		0: sTmp := 'AiFare';
		1: sTmp := 'VipFare';
		2: sTmp := 'EconomyFare';
	end;
	GS_KMAiRateName := sTmp;
	GS_EnvFile.WriteString('MYMAINTELUSE', 'KMAiRateName', GS_KMAiRateName);
end;

procedure TFrm_SETA1.chk_LevelColorClick(Sender: TObject);
begin
	GS_LevelColor := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('LevelColor', 'LevelColor', TcxCheckBox(Sender).Checked);
end;

procedure TFrm_SETA1.chk_ResToJoinClick(Sender: TObject);
begin
	GB_ResToJoin_USE := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GB_ResToJoin_USE', GB_ResToJoin_USE);
end;

procedure TFrm_SETA1.Chk_SelfCardClick(Sender: TObject);
begin
	// 접수창에서 결제구분(현장카드) 사용여부 설정.
	// 추가 : 20210128 KHS
	if Chk_SelfCard.Checked = False then
	begin
		gsJON01SelfCard := 'TRUE';
	end else
	begin
		gsJON01SelfCard := 'FALSE';
	end;
	GS_EnvFile.WriteString('JON01AFTERMONEYUSE', 'SELFCARD',  gsJON01SelfCard);
end;

procedure TFrm_SETA1.chk_ShortCut_Space_NoUsePropertiesChange(Sender: TObject);
var i, iTmp : integer;
begin
	GS_SHORTCUT_SPACENOUSE := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'SHORTCUT_SPACENOUSE', GS_SHORTCUT_SPACENOUSE);
	if GS_SHORTCUT_SPACENOUSE then  iTmp := strToint('0x07') else iTmp := VK_Space;

	for i := 0 to 4 do
	begin
		if Assigned(frm_Main.Frm_JON03[i]) then
		begin
			frm_Main.Frm_JON03[i].pm_smsRecon.ShortCut := iTmp;
		end;
	end;

end;

procedure TFrm_SETA1.chk_wk_tr_useClick(Sender: TObject);
begin
  cb_tr_brnm.Enabled := chk_wk_tr_use.Checked;
  cb_tr_brnm2.Enabled := chk_wk_tr_use.Checked;
  wk_tr_ip.Enabled := chk_wk_tr_use.Checked;
  wk_tr_port.Enabled := chk_wk_tr_use.Checked;
  cxButton3.Enabled := chk_wk_tr_use.Checked;
  Edit3.Enabled := chk_wk_tr_use.Checked;
end;

procedure TFrm_SETA1.cxBRListSetColorCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  Row, Col: Integer;
begin
  Try
    if (GS_JON_BRCOLOR_SET_USE = 0) then
    begin
      Row := ACellViewInfo.GridRecord.Index;
      if cxBRListSetColor.DataController.Values[Row, 0] = True then
      begin
        ColorDialog1.Color := ACellViewInfo.Style.Color;
        Row := ACellViewInfo.GridRecord.Index;
        Col := cxBRListSetColor.GetColumnByFieldName('RGB').Index;
        if (ColorDialog1.Execute) then
        begin
          cxBRListSetColor.DataController.Values[Row, Col] := '$' + IntToHex(ColorToRGB(ColorDialog1.Color), 8);
          GS_EnvFile.WriteString('BR_COLOR', cxBRListSetColor.DataController.Values[Row, 3],  cxBRListSetColor.DataController.Values[Row, Col]);
        end;
      end;
      GS_EnvFile.ReadSection('BR_COLOR', GS_LOCAL_BRCOLOR_LIST);
    end else
    if (GS_JON_BRCOLOR_SET_USE = 1) then
    begin
      Row := ACellViewInfo.GridRecord.Index;
      if cxBRListSetColor.DataController.Values[Row, 0] = True then
      begin
        ColorDialog1.Color := ACellViewInfo.Style.Color;
        Row := ACellViewInfo.GridRecord.Index;
        Col := cxBRListSetColor.GetColumnByFieldName('RGB').Index;
        if (ColorDialog1.Execute) then
        begin
          cxBRListSetColor.DataController.Values[Row, Col] := '$' + IntToHex(ColorToRGB(ColorDialog1.Color), 8);
        end;
      end;
    end;
  except
    on e: exception do
      Assert(False, e.Message);
  end;
end;

procedure TFrm_SETA1.cxBRListSetColorCustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
Var
  AView: TcxGridDBTableView;
  Inx: Integer;
begin
  AView := Sender as TcxGridDBTableView;

  Inx := AView.GetColumnByFieldName('RGB').Index;

  if AViewInfo.Item.ID = 2 then
    if Trim(AViewInfo.GridRecord.Values[Inx]) <> '' then
      ACanvas.Brush.Color := AViewInfo.GridRecord.Values[Inx];
end;

procedure TFrm_SETA1.cxBtnAddrBSaveClick(Sender: TObject);
Var
  i, iCnt: Integer;
begin
  if GS_EnvFile.SectionExists('ServerPoiAddr') then
  begin
    slChkAddrB.Clear;
    GS_EnvFile.EraseSection('ServerPoiAddr');
  end;

  iCnt := 0;
  GS_SEARCH_POI_ADDR := '';
  for i := 0 to cxChkAddrB.Items.Count - 1 do
  begin
    if cxChkAddrB.Items.Items[i].Checked then
    begin
      slChkAddrB.Add(cxChkAddrB.Items.Items[i].Text);
      GS_EnvFile.WriteString('ServerPoiAddr', cxChkAddrB.Items.Items[i].Text,
        IntToStr(iCnt));
      if GS_SEARCH_POI_ADDR = '' then
        GS_SEARCH_POI_ADDR := Trim(cxChkAddrB.Items.Items[i].Text)
      else
        GS_SEARCH_POI_ADDR := GS_SEARCH_POI_ADDR + ',' +
          Trim(cxChkAddrB.Items.Items[i].Text);

      Inc(iCnt);
    end;
  end;

  GMessagebox('저장되었습니다.', cdmsi);
end;

procedure TFrm_SETA1.cxBtnSchBSaveClick(Sender: TObject);
Var
  i, iCnt: Integer;
begin
  if GS_EnvFile.SectionExists('ServerPoiSch') then
  begin
    slChkSchB.Clear;
    GS_EnvFile.EraseSection('ServerPoiSch');
  end;

  iCnt := 0;
  GS_SEARCH_POI_SCH := '';
  for i := 0 to cxChkSchB.Items.Count - 1 do
  begin
    if cxChkSchB.Items.Items[i].Checked then
    begin
      slChkSchB.Add(cxChkSchB.Items.Items[i].Text);
      GS_EnvFile.WriteString('ServerPoiSch', cxChkSchB.Items.Items[i].Text, IntToStr(iCnt));
      Inc(iCnt);
      if GS_SEARCH_POI_SCH = '' then
        GS_SEARCH_POI_SCH := Trim(cxChkAddrB.Items.Items[i].Text)
      else
        GS_SEARCH_POI_SCH := GS_SEARCH_POI_SCH + ',' + Trim(cxChkAddrB.Items.Items[i].Text);
    end;
  end;

  GMessagebox('저장되었습니다.', cdmsi);
end;

procedure TFrm_SETA1.cxButton13Click(Sender: TObject);
begin
  if ed_Key_Number.Text = '' then
  begin
    GMessagebox('대표번호는 공백을 넣을 수 없습니다.', cdmsE);
    Exit;
  end;

  GS_EnvFile.WriteString(Format('%s-%s', ['AcceptWin', GT_USERIF.BR]), 'KeyNumber', ed_Key_Number.Text);
  GS_EnvFile.WriteString(Format('%s-%s', ['AcceptWin', GT_USERIF.BR]), 'MaddBrch', ed_MaddBrch.Text);
  GS_EnvFile.WriteString(Format('%s-%s', ['AcceptWin', GT_USERIF.BR]), 'MaddBrchName', ed_MaddBrchName.Text);
  // 전역변수 저장하기..
  GS_MainBranch.sBrName := ed_MaddBrchName.Text;
  GS_MainBranch.sBrNo := ed_MaddBrch.Text;
  GS_MainBranch.sKeyNumber := ed_Key_Number.Text;

  edtAcceptBrName.Text := GS_MainBranch.sBrName;
  edtAcceptKeyNum.Text := GS_MainBranch.sKeyNumber;
  edtAcceptBrNo.Text := GS_MainBranch.sBrNo;

  GMessagebox('저장되었습니다.', cdmsi);
end;

procedure TFrm_SETA1.cxButton14Click(Sender: TObject);
begin
	GS_EnvFile.EraseSection(Format('%s-%s', ['AcceptWin', GT_USERIF.BR]));

  edtAcceptBrName.Clear;
  edtAcceptKeyNum.Clear;
  edtAcceptBrNo.Clear;

	GS_MainBranch.sKeyNumber := '';
	GS_MainBranch.sBrNo := '';
	GS_MainBranch.sBrName := '';

	GMessagebox('지웠습니다.', cdmsi);
end;

procedure TFrm_SETA1.cxButton1Click(Sender: TObject);
begin
  if chk_wk_tr_use.Checked then
  begin
    if (wk_tr_ip.Text = '') or (wk_tr_port.Text = '') then
    begin
      GMessagebox('IP와 Port는 입력하셔야 합니다.', cdmsE);
      Exit;
    end;

    if cb_tr_brnm.ItemIndex < 0 then
    begin
      GMessagebox('지사1을 선택하셔야 합니다.', cdmsE);
      Exit;
    end;

    try
      GT_TR_INFO.Use := 'y';
      GT_TR_INFO.IP := wk_tr_ip.Text;
      GT_TR_INFO.PORT := wk_tr_port.Text;
      if (GT_USERIF.Family = 'y') And (GT_USERIF.LV = '60') then // 20120629 LYB
        GT_TR_INFO.BrNo := scb_FamilyBrCode[cb_tr_brnm.ItemIndex]
      else
        GT_TR_INFO.BrNo := scb_BranchCode[cb_tr_brnm.ItemIndex];

      if cb_tr_brnm.ItemIndex = cb_tr_brnm2.ItemIndex then
        cb_tr_brnm2.ItemIndex := -1;
      if cb_tr_brnm2.ItemIndex > -1 then
      begin
        if (GT_USERIF.Family = 'y') And (GT_USERIF.LV = '60') then
        // 20120629 LYB
          GT_TR_INFO.BrNo2 := scb_FamilyBrCode[cb_tr_brnm2.ItemIndex]
        else
          GT_TR_INFO.BrNo2 := scb_BranchCode[cb_tr_brnm2.ItemIndex]
      end
      else
        GT_TR_INFO.BrNo2 := '';
      GT_TR_INFO.No := Edit3.Text;
      GS_EnvFile.WriteString('WORKER_TR', 'USE', 'y');
      GS_EnvFile.WriteString('WORKER_TR', 'IP', wk_tr_ip.Text);
      GS_EnvFile.WriteString('WORKER_TR', 'PORT', wk_tr_port.Text);
      GS_EnvFile.WriteString('WORKER_TR', 'BRNO', GT_TR_INFO.BrNo);
      GS_EnvFile.WriteString('WORKER_TR', 'BRNO2', GT_TR_INFO.BrNo2);
      GS_EnvFile.WriteString('WORKER_TR', 'NO', Edit3.Text);

      frm_JON54.imgTRS.Visible := True;
      Frm_Main.cxCIDImgList.GetIcon(4, frm_JON54.imgTRS.Picture.Icon);
      // TRS ON;
      { frm_main.sc_wk_tr.Active := False;
        frm_main.sc_wk_tr.Host := wk_tr_ip.Text;
        frm_main.sc_wk_tr.Port := StrToIntDef(wk_tr_port.Text, 2002);
        frm_main.sc_wk_tr.Active := True;
      }
      GMessagebox('저장하였습니다', cdmsi);
    except
      // -      Frm_Main.imgTRS.Visible := False;
      Frm_Main.cxCIDImgList.GetIcon(5, frm_JON54.imgTRS.Picture.Icon);
      // TRS OFF;
      GMessagebox('실패하였습니다' + #13#10 + '무전기 서버가 활성화 되어있는지 확인하세요', cdmsE);
      GS_EnvFile.WriteString('WORKER_TR', 'USE', 'n');
      frm_Main.sc_wk_tr.Active := False;
      GT_TR_INFO.Use := 'n';
      Exit;
    end;
  end else
  begin
    GS_EnvFile.WriteString('WORKER_TR', 'USE', 'n');
    // -    Frm_Main.imgTRS.Visible := False;
    frm_Main.sc_wk_tr.Active := False;
    GT_TR_INFO.Use := 'n';
  end;
end;

procedure TFrm_SETA1.btnFastFindInitClick(Sender: TObject);
begin
  try
    lb_FastFind.Items.Clear;
    lb_FastFind.Items.Delimiter     := '|';
		lb_FastFind.Items.DelimitedText := GS_FASTFIND;

    lb_FastFindOut.Items.Clear;
    lb_FastFindOut.Items.Delimiter     := '|';
		lb_FastFindOut.Items.DelimitedText := GS_FASTFINDOUT;
  except
  end;
end;

procedure TFrm_SETA1.cxButton3Click(Sender: TObject);
var
  i: Integer;
begin
  try
    GS_EnvFile.EraseSection('Accept_Title');
    GS_EnvFile.EraseSection('Accept_Not_Title');
    for i := 0 to cxListBox1.Items.Count - 1 do
      GS_EnvFile.WriteString('Accept_Title', IntToStr(i), cxListBox1.Items.Strings[i]);
    for i := 0 to cxListBox2.Items.Count - 1 do
      GS_EnvFile.WriteString('Accept_Not_Title', IntToStr(i), cxListBox2.Items.Strings[i]);
    SetProc_Set_Grid;
  except
  end;
end;

procedure TFrm_SETA1.btnCnClick(Sender: TObject);
begin
  pnlSvrOpt.Visible := False;
end;

procedure TFrm_SETA1.btnConfigExitClick(Sender: TObject);
begin
  grpConfigSave.Visible := True;
end;

procedure TFrm_SETA1.btnConfigSaveClick(Sender: TObject);
begin
  if GT_USERIF.LV = '60' then
  begin
    btnSave.Visible := True; // 관리자만 표시
    btnDelete.Visible := True; // 관리자만 표시
  end else
  begin
    btnSave.Visible := False;
    btnDelete.Visible := False;
  end;

  if (GS_PRJ_AREA = 'S') and (GT_USERIF.HD = 'A1531') then
  begin
    if (GT_USERIF.ID = 'kd1000') Or (GT_USERIF.ID = 'KD_문지현') Or (GT_USERIF.ID = 'KD_김동순') Or (GT_USERIF.ID = 'KD_김선미') then
    begin
      btnSave.Visible := True;
      btnDelete.Visible := True;
    end else
    begin
      btnSave.Visible := False;
      btnDelete.Visible := False;
    end;
  end;

  grpConfigSave.Visible := False;
end;

procedure TFrm_SETA1.btnDeleteClick(Sender: TObject);
Var slTmp : TStringList;
begin
  try
    slTmp := TStringList.Create;
    if Frm_Main.fSetIniFile('3', GT_SEL_BRNO.HDNO, '', slTmp) then
    begin
      GMessagebox('미사용으로 처리되었습니다.', CDMSE);
      btnConfigExit.Click;
    end;

    btnConfigExit.Click;
  finally
    FreeAndNil(slTmp);
  end;
end;

procedure TFrm_SETA1.btnDownClick(Sender: TObject);
Var slTmp : TStringList;
begin
  try
    slTmp := TStringList.Create;
    Frm_Main.fSetIniFile('2', GT_SEL_BRNO.HDNO, '', slTmp);
    btnConfigExit.Click;
  finally
    FreeAndNil(slTmp);
  end;
end;

procedure TFrm_SETA1.btnFastFindInClick(Sender: TObject);
var
  CurIndex: Integer;
begin
  CurIndex := lb_FastFindOut.ItemIndex;

  if CurIndex < 0 then
  begin
    GMessagebox('선택된 항목이 없습니다.', CDMSE);
    Exit;
  end;

  if (CurIndex >= 0) and (CurIndex <= lb_FastFindOut.Count - 1) then
  begin
    lb_FastFind.Items.Add(lb_FastFindOut.Items.Strings[CurIndex]);
    lb_FastFind.ItemIndex := lb_FastFind.Count - 1;

    lb_FastFindOut.Items.Delete(CurIndex);
  end;
end;

procedure TFrm_SETA1.btnFastFindOutClick(Sender: TObject);
var
  CurIndex: Integer;
begin
  CurIndex := lb_FastFind.ItemIndex;

  if CurIndex < 0 then
  begin
    GMessagebox('선택된 항목이 없습니다.', CDMSE);
    Exit;
  end;

  if (CurIndex >= 0) and (CurIndex <= lb_FastFind.Count - 1) then
  begin
    lb_FastFindOut.Items.Add(lb_FastFind.Items.Strings[CurIndex]);
    lb_FastFindOut.ItemIndex := lb_FastFindOut.Count - 1;

    lb_FastFind.Items.Delete(CurIndex);
  end;
end;

procedure TFrm_SETA1.btnFastFindSaveClick(Sender: TObject);
var
  i : Integer;
begin
	GS_EnvFile.EraseSection('FastFindSort');
  GS_EnvFile.EraseSection('FastFindSortOut');

  // ini파일에 상태순 저장
  for i := 0 to lb_FastFind.Items.Count - 1 do
    GS_EnvFile.WriteString('FastFindSort', lb_FastFind.Items.Strings[i], IntToStr(i));

  // ini파일에 상태순 저장
  for i := 0 to lb_FastFindOut.Items.Count - 1 do
    GS_EnvFile.WriteString('FastFindSortOut', lb_FastFindOut.Items.Strings[i], IntToStr(i));

  if lb_FastFind.Items.Count >=  1 then gJONFastFind.Key1  := lb_FastFind.Items.Strings[00]
                                   else gJONFastFind.Key1  := '';
  if lb_FastFind.Items.Count >=  2 then gJONFastFind.Key2  := lb_FastFind.Items.Strings[01]
																	 else gJONFastFind.Key2  := '';
  if lb_FastFind.Items.Count >=  3 then gJONFastFind.Key3  := lb_FastFind.Items.Strings[02]
                                   else gJONFastFind.Key3  := '';
  if lb_FastFind.Items.Count >=  4 then gJONFastFind.Key4  := lb_FastFind.Items.Strings[03]
                                   else gJONFastFind.Key4  := '';
  if lb_FastFind.Items.Count >=  5 then gJONFastFind.Key5  := lb_FastFind.Items.Strings[04]
                                   else gJONFastFind.Key5  := '';
  if lb_FastFind.Items.Count >=  6 then gJONFastFind.Key6  := lb_FastFind.Items.Strings[05]
                                   else gJONFastFind.Key6  := '';
  if lb_FastFind.Items.Count >=  7 then gJONFastFind.Key7  := lb_FastFind.Items.Strings[06]
                                   else gJONFastFind.Key7  := '';
  if lb_FastFind.Items.Count >=  8 then gJONFastFind.Key8  := lb_FastFind.Items.Strings[07]
                                   else gJONFastFind.Key8  := '';
  if lb_FastFind.Items.Count >=  9 then gJONFastFind.Key9  := lb_FastFind.Items.Strings[08]
                                   else gJONFastFind.Key9  := '';
  if lb_FastFind.Items.Count >= 10 then gJONFastFind.Key10 := lb_FastFind.Items.Strings[09]
                                   else gJONFastFind.Key10 := '';
  if lb_FastFind.Items.Count >= 11 then gJONFastFind.Key11 := lb_FastFind.Items.Strings[10]
                                   else gJONFastFind.Key11 := '';
  if lb_FastFind.Items.Count >= 12 then gJONFastFind.Key12 := lb_FastFind.Items.Strings[11]
                                   else gJONFastFind.Key12 := '';
  if lb_FastFind.Items.Count >= 13 then gJONFastFind.Key13 := lb_FastFind.Items.Strings[12]
                                   else gJONFastFind.Key13 := '';
  if lb_FastFind.Items.Count >= 14 then gJONFastFind.Key14 := lb_FastFind.Items.Strings[13]
                                   else gJONFastFind.Key14 := '';
  if lb_FastFind.Items.Count >= 15 then gJONFastFind.Key15 := lb_FastFind.Items.Strings[14]
                                   else gJONFastFind.Key15 := '';
  if lb_FastFind.Items.Count >= 16 then gJONFastFind.Key16 := lb_FastFind.Items.Strings[15]
                                   else gJONFastFind.Key16 := '';
  if lb_FastFind.Items.Count >= 17 then gJONFastFind.Key17 := lb_FastFind.Items.Strings[16]
                                   else gJONFastFind.Key17 := '';
  if lb_FastFind.Items.Count >= 18 then gJONFastFind.Key18 := lb_FastFind.Items.Strings[17]
                                   else gJONFastFind.Key18 := '';
  if lb_FastFind.Items.Count >= 19 then gJONFastFind.Key19 := lb_FastFind.Items.Strings[18]
                                   else gJONFastFind.Key19 := '';
  if lb_FastFind.Items.Count >= 20 then gJONFastFind.Key20 := lb_FastFind.Items.Strings[19]
                                   else gJONFastFind.Key20 := '';

	GS_JON03Mileage     := chk_Mileage.Checked;
	GS_JON03CMPSupportY := chk_CMPSupportY.Checked;
	GS_JON03CMPSupportN := chk_CMPSupportN.Checked;

	GS_EnvFile.WriteBool('COUNSEL', 'JON03Mileage'    , GS_JON03Mileage);     // [접수현황] 마일리지 옵션추가
	GS_EnvFile.WriteBool('COUNSEL', 'JON03CMPSupportY', GS_JON03CMPSupportY); // [접수현황] 지원금 옵션추가
	GS_EnvFile.WriteBool('COUNSEL', 'JON03CMPSupportN', GS_JON03CMPSupportN); // [접수현황] 지원금제외 옵션추가

	SetLoadFastFindControls;

  GMessagebox('저장되었습니다.', cdmsi);
end;

procedure TFrm_SETA1.btnFontSaveClick(Sender: TObject);
Var i : Integer;
begin
  GS_FONTNAME := cbFontList.EditValue;
	GS_EnvFile.WriteString('GER', 'FONT_NAME', GS_FONTNAME);

  for i := 0 to GFormInfo.Font.Count - 1 do
  begin
    GFormInfo.Font.Strings[i] := 'n';
  end;

  for i := 0 to pred(Frm_Main.cxStyleRepository1.Count) do
  begin
    TcxStyle(Frm_Main.cxStyleRepository1.Items[i]).Font.Name := GS_FONTNAME;
  end;

  fSetFont(Frm_Main, GS_FONTNAME);
	GMessagebox('적용되었습니다.', CDMSI);
end;

procedure TFrm_SETA1.cxButton59Click(Sender: TObject);
begin
  Proc_BRANCH_COLORList;
  proc_SetBRcolor;
end;

procedure TFrm_SETA1.cxButton60Click(Sender: TObject);
var
  ErrCode: Integer;
  XmlData, Param, ErrMsg, aColor: string;
  aCnt, i: Integer;
begin
  aCnt := cxBRListSetColor.DataController.RowCount;
  if cxBRListSetColor.DataController.RowCount < 1 then
    Exit;

  try
    aCnt := cxBRListSetColor.DataController.RowCount - 1;
    Param := IntToStr(aCnt) + '│';
    for i := 0 to cxBRListSetColor.DataController.RowCount - 1 do
    begin
      if cxBRListSetColor.DataController.Values[i, 0] = True then
      begin
        if cxBRListSetColor.DataController.Values[i, 4] = '' then
          aColor := '$00FFFFFF'
        else
          aColor := cxBRListSetColor.DataController.Values[i, 4];
        Param := Param + cxBRListSetColor.DataController.Values[i, 3] + ',' +
          aColor + ',' + '1';
        Param := Param + '│';
      end else
      begin
        if cxBRListSetColor.DataController.Values[i, 4] = '' then
          aColor := '$00FFFFFF'
        else
          aColor := cxBRListSetColor.DataController.Values[i, 4];
        Param := Param + cxBRListSetColor.DataController.Values[i, 3] + ',' +
          aColor + ',' + '0';
        Param := Param + '│';
      end;
    end;

    if not RequestBase(GetCallable05('SET_BRANCH_COLOR', 'CAS.SET_BRANCH_COLOR',
      Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('지사별 색상 저장 시 오류발생'#13#10'[%d]%s',
        [ErrCode, ErrMsg]), cdmsE);
      Exit;
    end;
    cxButton59Click(nil);
    GMessagebox('지사별 색상이 저장 되었습니다.', cdmsi);

  except
    GMessagebox('지사별 색상 저장중 오류가 발생했습니다.', cdmsE);
  end;
end;

procedure TFrm_SETA1.cxButton6Click(Sender: TObject);
var
  i: Integer;
begin
  try
    if lb_sel_map.Items.Count = 0 then
    begin
      GMessagebox('지역을 하나도 선택을 안하셨습니다.' + #13#10 + '로드할 지역을 선택하세요', cdmsE);
      Exit;
    end;
    GS_EnvFile.EraseSection('LocalMap');
    for i := 0 to lb_sel_map.Items.Count - 1 do
      GS_EnvFile.WriteString('LocalMap', lb_sel_map.Items.Strings[i], IntToStr(i));

    // 환경설정 화면에서 지역설정 버튼 클릭하면[gb_MapSet = True] 설정파일 체크 안함.  CDS.
    if Assigned(Frm_SET) then
    begin
      Frm_SET.cb_chart_stcity.Properties.Items.Clear;
      Frm_SET.cb_chart_stcity.Properties.Items.Assign(lb_sel_map.Items);

      Frm_SET.cb_chart_edcity.Properties.Items.Clear;
      Frm_SET.cb_chart_edcity.Properties.Items.Assign(lb_sel_map.Items);

      Frm_SET.cb_dis_stcity.Properties.Items.Clear;
      Frm_SET.cb_dis_stcity.Properties.Items.Assign(lb_sel_map.Items);

      Frm_SET.cb_dis_edcity.Properties.Items.Clear;
      Frm_SET.cb_dis_edcity.Properties.Items.Assign(lb_sel_map.Items);

      Frm_SET.cb_term_stcity.Properties.Items.Clear;
      Frm_SET.cb_term_stcity.Properties.Items.Assign(lb_sel_map.Items);

      Frm_SET.cb_term_edcity.Properties.Items.Clear;
      Frm_SET.cb_term_edcity.Properties.Items.Assign(lb_sel_map.Items);

      Frm_SET.cb_First_stcity.Properties.Items.Clear;
      Frm_SET.cb_First_stcity.Properties.Items.Assign(lb_sel_map.Items);

      Frm_SET.cb_First_edcity.Properties.Items.Clear;
      Frm_SET.cb_First_edcity.Properties.Items.Assign(lb_sel_map.Items);
    end;

    for i := 0 to JON03_MAX_CNT - 1 do
    begin
			if ( Frm_Main.JON03MNG[i].Use = True ) And ( Frm_Main.JON03MNG[i].CreateYN = True ) then
      begin
				Frm_Main.Frm_Jon03[i].cb_City.Properties.Items.Clear;
        Frm_Main.Frm_Jon03[i].cb_City.Properties.Items.Add('지역전체');
				Frm_Main.Frm_Jon03[i].cb_City.Properties.Items.AddStrings(lb_sel_map.Items);
        Frm_Main.Frm_Jon03[i].cb_City.ItemIndex := 0;

        Frm_Main.Frm_Jon03[i].cb_ward.Properties.Items.Clear;
        Frm_Main.Frm_Jon03[i].cb_ward.Properties.Items.Add('전체');
        Frm_Main.Frm_Jon03[i].cb_ward.ItemIndex := 0;
      end;
    end;

    gb_MapSet := True;

    Frm_progress := TFrm_progress.Create(Self);
    try
      Frm_progress.GS_GUBUN := 20;
      Application.ProcessMessages;
      Frm_progress.ShowModal;
    Finally
      Frm_progress.Free;
    end;

    // 서울,경기,인천 지역은 다음POI검색시 기준위치와 상관없으므로 API키 사용안함으로 검색 2021.08.10
    // API키 사용안함일 경우 검색이 잘됨(주소및상호)
    if (slstLocalMapOrder[0] = '서울') Or (slstLocalMapOrder[0] = '경기') Or (slstLocalMapOrder[0] = '인천') then
      if Assigned(Frm_JON30) then Frm_JON30.chkUseAPIKey.Enabled := False
    else
      if Assigned(Frm_JON30) then Frm_JON30.chkUseAPIKey.Enabled := True;
  except
  end;
end;

procedure TFrm_SETA1.cxButton8Click(Sender: TObject);
begin
  gJONAcceptMemo.Memo := Ed_AcceptMemo1.Text;
  GS_EnvFile.WriteString('AcceptMemo', 'Memo', gJONAcceptMemo.Memo);
end;

procedure TFrm_SETA1.cxButton9Click(Sender: TObject);
var
  CurIndex: Integer;
begin
  case TButton(Sender).Tag of
    1:
      begin
        CurIndex := cxListBox1.ItemIndex;
        if CurIndex < 0 then
          Exit;

        cxListBox2.Items.Insert(cxListBox2.ItemIndex + 1,
          cxListBox1.Items.Strings[CurIndex]);
        cxListBox1.Items.Delete(CurIndex);
        if cxListBox1.Count >= CurIndex - 1 then
          cxListBox1.ItemIndex := CurIndex;
      end;
    2:
      begin
        CurIndex := cxListBox2.ItemIndex;
        if CurIndex < 0 then
          Exit;
        cxListBox1.Items.Insert(cxListBox1.ItemIndex + 1,
          cxListBox2.Items.Strings[CurIndex]);
        cxListBox2.Items.Delete(CurIndex);
        if CurIndex >= cxListBox2.Items.Count then
          cxListBox2.ItemIndex := cxListBox2.Items.Count - 1
        else
          cxListBox2.ItemIndex := CurIndex;
      end;
    3:
      begin
        CurIndex := cxListBox1.ItemIndex;
        if (CurIndex <= 0) then
          Exit;
        cxListBox1.Items.Move(CurIndex, CurIndex - 1);
        cxListBox1.ItemIndex := CurIndex - 1;
      end;
    4:
      begin
        CurIndex := cxListBox1.ItemIndex;
        if (CurIndex < 0) or (CurIndex = cxListBox1.Items.Count - 1) then
          Exit;
        cxListBox1.Items.Move(CurIndex, CurIndex + 1);
        cxListBox1.ItemIndex := CurIndex + 1;
      end;
    5:
      begin
        CurIndex := lb_map.ItemIndex;
        if CurIndex < 0 then Exit;
        if lb_sel_map.Items.IndexOf(lb_map.Items.Strings[lb_map.ItemIndex]) = -1 then
        begin
          if lb_sel_map.ItemIndex = -1 then  // 선택지역이 없을 경우 맨 아래에 추가
            lb_sel_map.Items.Insert(lb_sel_map.Count, lb_map.Items.Strings[CurIndex])
          else
            lb_sel_map.Items.Insert(lb_sel_map.ItemIndex + 1, lb_map.Items.Strings[CurIndex]);
        end;

        lb_sel_map.ItemIndex := lb_sel_map.Items.Count - 1;
      end;
    6:
      begin
        CurIndex := lb_sel_map.ItemIndex;
        if CurIndex < 0 then
          Exit;
        lb_sel_map.Items.Delete(CurIndex);
        if CurIndex >= lb_sel_map.Items.Count then
          lb_sel_map.ItemIndex := lb_sel_map.Items.Count - 1
        else
          lb_sel_map.ItemIndex := CurIndex;
      end;
    7:
      begin
        CurIndex := lb_sel_map.ItemIndex;
        if (CurIndex <= 0) then
          Exit;
        lb_sel_map.Items.Move(CurIndex, CurIndex - 1);
        lb_sel_map.ItemIndex := CurIndex - 1;
      end;
    8:
      begin
        CurIndex := lb_sel_map.ItemIndex;
        if (CurIndex < 0) or (CurIndex = lb_sel_map.Items.Count - 1) then
          Exit;
        lb_sel_map.Items.Move(CurIndex, CurIndex + 1);
        lb_sel_map.ItemIndex := CurIndex + 1;
      end;
  end;
end;

procedure TFrm_SETA1.cxCheckBox1Click(Sender: TObject);
begin
  GB_JONLIST_READY_NOSHOW_MSG := cxCheckBox1.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'ReadyNoShowMsg', GB_JONLIST_READY_NOSHOW_MSG);
end;

procedure TFrm_SETA1.cxCheckBox3Click(Sender: TObject);
begin
  if cxCheckBox3.Checked then
    GS_STARTDONG := True
  else
    GS_STARTDONG := False;
  GS_EnvFile.WriteBool('COUNSEL', 'STARTDONG ', GS_STARTDONG);
end;

procedure TFrm_SETA1.cxCheckBox4Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Checked then
    gbWorkerChargeYN := 0
  else
    gbWorkerChargeYN := 1;

  GS_EnvFile.WriteString('WORKER', 'CALLSMSDEF', IntToStr(gbWorkerChargeYN));
end;

procedure TFrm_SETA1.cxCheckBox5Click(Sender: TObject);
begin
  GB_DEBUG_USE := cxCheckBox5.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'GB_DEBUG_USE', GB_DEBUG_USE);
end;

procedure TFrm_SETA1.cxCheckBox6Click(Sender: TObject);
begin
	GB_J03_NOSHOW_MSG := cxCheckBox6.Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'J03NoShowMsg', GB_J03_NOSHOW_MSG);
end;

procedure TFrm_SETA1.cxCheckBox7Click(Sender: TObject);
begin
	if cxCheckBox7.Checked then GB_CIDDEBUG_USE := True
												 else GB_CIDDEBUG_USE := False;
end;

procedure TFrm_SETA1.cxCheckBox8Click(Sender: TObject);
begin
  GB_DEBUG_BARO := cxCheckBox8.Checked;
end;

procedure TFrm_SETA1.chkBaechaAllCheckClick(Sender: TObject);
begin
  GS_COUNSEL_BAECHA_ALLCHECK := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'BAECHA_ALLCHECK', GS_COUNSEL_BAECHA_ALLCHECK);
end;

procedure TFrm_SETA1.chk_MenuOverClick(Sender: TObject);
begin
	GB_JON01_MENU_OVER := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GB_JON01_MENU_OVER', GB_JON01_MENU_OVER);
end;

procedure TFrm_SETA1.chk_memo3UseClick(Sender: TObject);
begin
	GB_JON_MEMO3_USE := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GB_JON_MEMO3_USE', GB_JON_MEMO3_USE);
end;

procedure TFrm_SETA1.chk_OutCallCidSyncClick(Sender: TObject);
begin
	GS_COUNSEL_OutCallCidSync := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'OutCallCidSync', GS_COUNSEL_OutCallCidSync);
end;

procedure TFrm_SETA1.chk_PostPayNoUpdateClick(Sender: TObject);
begin
	GB_PostPayNoUpdate := TcxCheckBox(Sender).Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GB_PostPayNoUpdate', GB_PostPayNoUpdate);
end;

procedure TFrm_SETA1.cxChkPOITelSearchClick(Sender: TObject);
begin
  GB_JON_POITELSEARCH := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'GB_JON_POITELSEARCH', GB_JON_POITELSEARCH);
end;

procedure TFrm_SETA1.cxChkViewWkInfoClick(Sender: TObject);
begin
  GB_JON_VIEWWKIFNO := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'GB_JON_VIEWWKIFNO', GB_JON_VIEWWKIFNO);
end;

procedure TFrm_SETA1.cxChkWkCallPopupClick(Sender: TObject);
begin
  GB_JON_WKCALLPOPUP := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'GB_JON_WKCALLPOPUP', GB_JON_WKCALLPOPUP);
end;

procedure TFrm_SETA1.cxConfigSaveClick(Sender: TObject);
Var iVatG : Integer;
begin
	if (rbConfigVATset2.Checked) and (StrToFloatDef(cxCurVATvalue.Text, 0.0) < 1) then
	begin
    GMessagebox('부가세 적용율(%)은 최소 1 % 이상 입력 해야 합니다.', CDMSE);
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
end;

procedure TFrm_SETA1.chkMileUnitUseClick(Sender: TObject);
begin
  gsJON01MileUnitUse := chkMileUnitUse.Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'gsJON01MileUnitUse', gsJON01MileUnitUse);
end;

procedure TFrm_SETA1.chkMultiCallNumClick(Sender: TObject);
begin
  GB_COUNSEL_MULTICALLNUMBER := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'MULTICALLNUMBER', GB_COUNSEL_MULTICALLNUMBER);
end;

procedure TFrm_SETA1.chkMultiSchClick(Sender: TObject);
begin
  GS_COUNSEL_MULTICHECK := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'MULTIUSECHECK', GS_COUNSEL_MULTICHECK);
end;

procedure TFrm_SETA1.cxChkAfterMoneyClick(Sender: TObject);
begin
  // 접수창에서 결제구분(현금,후불,외상) 사용여부 설정.
  // 추가 : 2008-10-10 choi do soon
  // 후불 사용여부 설정.
  if cxChkAfterMoney.Checked = False then
  begin
    gsJON01AfterMoneyYN := 'TRUE';
  end else
  begin
    gsJON01AfterMoneyYN := 'FALSE';
  end;

  GS_EnvFile.WriteString('JON01AFTERMONEYUSE', 'AFTERMONEY', gsJON01AfterMoneyYN);

  if gsJON01AfterMoneyYN = 'TRUE' then
  begin
    cxLbAfterMoney.Visible := True;
    cbb_AfterMoney.Visible := True;
    cxChkAfterMoneyWordUse.Visible := True;
    cxChkAfterMoneyWordUse1.Visible := True;
  end else
  begin
    cxLbAfterMoney.Visible := False;
    cbb_AfterMoney.Visible := False;
    cxChkAfterMoneyWordUse.Visible := False;
    cxChkAfterMoneyWordUse1.Visible := False;
  end;
end;

procedure TFrm_SETA1.cxChkAfterMoneyWordUse1Click(Sender: TObject);
begin
  gsJON01AfterMoneyWordUse1 := cxChkAfterMoneyWordUse1.Checked;
  GS_EnvFile.WriteBool('JON01AFTERMONEYUSE', 'AFTERMONEYWORDUSE1', gsJON01AfterMoneyWordUse1);
end;

procedure TFrm_SETA1.cxChkAfterMoneyWordUseClick(Sender: TObject);
begin
  gsJON01AfterMoneyWordUse := cxChkAfterMoneyWordUse.Checked;
  GS_EnvFile.WriteBool('JON01AFTERMONEYUSE', 'AFTERMONEYWORDUSE', gsJON01AfterMoneyWordUse);
end;

procedure TFrm_SETA1.cxChkCreditMoneyClick(Sender: TObject);
begin
  // 접수창에서 결제구분(현금,후불,외상) 사용여부 설정.
  // 추가 : 2008-10-10 choi do soon
  // 외상 사용여부 설정.
  if cxChkCreditMoney.Checked = False then
  begin
    gsJON01CreditMoneyYN := 'TRUE';
  end else
  begin
    gsJON01CreditMoneyYN := 'FALSE';
  end;
  GS_EnvFile.WriteString('JON01AFTERMONEYUSE', 'CREDITMONEY',  gsJON01CreditMoneyYN);
end;

procedure TFrm_SETA1.cxChkNoSMSConfirmClick(Sender: TObject);
begin
  GB_JON_NOSMSCONFIRM := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'GB_JON_NOSMSCONFIRM', GB_JON_NOSMSCONFIRM);
end;

procedure TFrm_SETA1.cxGridDBColumn6PropertiesChange(Sender: TObject);
var iRow : integer;
begin
	iRow := cxBubHuList.DataController.FocusedRecordIndex;
	if cxBubHuList.DataController.Values[iRow,0] = True then cxBubHuList.DataController.Values[iRow,2] := '법후'
																											else cxBubHuList.DataController.Values[iRow,2] := '';
end;

procedure TFrm_SETA1.cxGridSchViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
Var
  iRow, iTag: Integer;
  sText : String;
begin
	iRow := cxGridSchView.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  if Trim(cxGridSchView.DataController.Values[iRow, 4]) = '' then
  begin
    iTag := StrToIntDef(cxGridSchView.DataController.Values[iRow, 0], 0);
    SetTreeSelItem(iTag);

    pSetComponentFontColor(iTag,  edtSearch.Text );
  end else
  begin
    try
      iRow := cxGridSchView.DataController.FocusedRecordIndex;

      try
        cxGridSch.Enabled := False;
    		Screen.Cursor := crHourGlass;

        iTag := StrToIntDef(cxGridSchView.DataController.Values[iRow, 0], 0);
        if iTag = 0 then Exit;

        if Not fGetPermission(iTag) then
        begin
          ShowMessage('권한이 없습니다.');
          Exit;
        end;

        if GS_DefaultColor.Form <> '' then
          pFormComponentFontColor(0);

        GS_DefaultColor.Tag := iTag;
        GS_DefaultColor.ID := cxGridSchView.DataController.Values[iRow, 5];
        Case iTag of
          407, 408 :
            begin
              GS_DefaultColor.Form := 'Frm_CUT';
            end;
          811 :
            begin
              GS_DefaultColor.Form := 'Frm_APP';
            end;
          801, 8021, 8022, 8023, 803, 8031, 8032, 8033,
          80331, 80332, 80333, 80334, 80335,
          8034, 805 :
            begin
              if iTag = 8021 then iTag := 802 else
              if iTag = 8022 then iTag := 802 else
              if iTag = 8023 then iTag := 802;

              if iTag = 8031 then iTag := 803 else
              if iTag = 8032 then iTag := 803 else
              if iTag = 8033 then iTag := 803 else
              if iTag = 80331 then iTag := 803 else
              if iTag = 80332 then iTag := 803 else
              if iTag = 80333 then iTag := 803 else
              if iTag = 80334 then iTag := 803 else
              if iTag = 80335 then iTag := 803 else
              if iTag = 8034 then iTag := 803;

              GS_DefaultColor.Form := 'Frm_CMP';
            end;
          3001, 3002, 3003 :
            begin
              GS_DefaultColor.Form := 'Frm_JON30S';
            end;
          1403, 1404, 1405, 1406, 1407 :
            begin
              GS_DefaultColor.Form := 'Frm_SET';
            end;
          1602, 1603, 1604, 1605, 1606 :
            begin
              GS_DefaultColor.Form := 'Frm_BTN';
            end;
        End;


        sText := cxGridSchView.DataController.Values[iRow, 2];
        case iTag of
          100, 200, 301 : Frm_Main.procMainMenuCreateActive(iTag);
          3001, 3002, 3003 :
           begin
             if Not Assigned(Frm_JON30S) Or (Frm_JON30S = Nil) then Frm_JON30S := TFrm_JON30S.Create(Nil);
             Frm_JON30S.Show;
             if iTag = 3001 then Frm_JON30S.cxPageControl1.ActivePageIndex := 0 else
             if iTag = 3002 then Frm_JON30S.cxPageControl1.ActivePageIndex := 1 else
             if iTag = 3003 then Frm_JON30S.cxPageControl1.ActivePageIndex := 2;
           end
        else
          Frm_Main.procMenuCreateActive(iTag, sText);
        end;

//        if Assigned(Frm_CMP) then
//        begin
//          if GS_DefaultColor.Tag = 8031 then Frm_CMP.cxPageControl2.ActivePageIndex := 0 else
//          if GS_DefaultColor.Tag = 8032 then Frm_CMP.cxPageControl2.ActivePageIndex := 1 else
//          if GS_DefaultColor.Tag = 8033 then Frm_CMP.cxPageControl2.ActivePageIndex := 2 else
//          if GS_DefaultColor.Tag = 80331 then
//          begin
//            Frm_CMP.cxPageControl2.ActivePageIndex := 2;
//            Frm_CMP.cxPageControl3.ActivePageIndex := 0;
//          end else
//          if GS_DefaultColor.Tag = 80332 then
//          begin
//            Frm_CMP.cxPageControl2.ActivePageIndex := 2;
//            Frm_CMP.cxPageControl3.ActivePageIndex := 1;
//          end else
//          if GS_DefaultColor.Tag = 80333 then
//          begin
//            Frm_CMP.cxPageControl2.ActivePageIndex := 2;
//            Frm_CMP.cxPageControl3.ActivePageIndex := 2;
//          end else
//          if GS_DefaultColor.Tag = 80334 then
//          begin
//            Frm_CMP.cxPageControl2.ActivePageIndex := 2;
//            Frm_CMP.cxPageControl3.ActivePageIndex := 3;
//          end else
//          if GS_DefaultColor.Tag = 80335 then
//          begin
//            Frm_CMP.cxPageControl2.ActivePageIndex := 2;
//						Frm_CMP.cxPageControl3.ActivePageIndex := 4;
//          end else
//					if GS_DefaultColor.Tag = 8034 then Frm_CMP.cxPageControl2.ActivePageIndex := 3;
//        end;
//
//        if Assigned(Frm_CMP01) then
//        begin
//          if GS_DefaultColor.Tag = 8021 then Frm_CMP01.cxPageControl1.ActivePageIndex := 0 else
//          if GS_DefaultColor.Tag = 8022 then Frm_CMP01.cxPageControl1.ActivePageIndex := 1 else
//          if GS_DefaultColor.Tag = 8023 then Frm_CMP01.cxPageControl1.ActivePageIndex := 2;
//        end;

        pFormComponentFontColor(1);
      finally
        cxGridSch.Enabled := True;
        Screen.Cursor := crDefault;
      end;
    except on E: Exception do
      Assert(False, E.Message);
    end;
  end;

  // 407 고객등급설정   Frm_CUT
  // 408 마일리지설정   Frm_CUT

  // 811 앱/스마트푸시설정   Frm_APP

  // 801 본사관리         Frm_CMP
  // 8021 지사기본정보    Frm_CMP
  // 8022 지사상세정보    Frm_CMP
  // 8023 오더/요금정보   Frm_CMP

  // 805 오토콜설정       Frm_CMP

  // 803  자동SMS설정     Frm_CMP
  // 8031 실시간SMS1      Frm_CMP
  // 8032 실시간SMS2      Frm_CMP
  // 8033 다음날SMS       Frm_CMP
  // 8034 다음날SMS-개인고객등급별  Frm_CMP

  // 3001 검색설정         Frm_JON30S
  // 3002 검색APIKey관리   Frm_JON30S
  // 3003 검색POI치환관리  Frm_JON30S

  // 1403 요금제편집       Frm_SET
  // 1404 요금제설정[대표번호]   Frm_SET
  // 1405 요금제설정[법인]       Frm_SET
  // 1406 심야할증요금           Frm_SET
  // 1407 CID대표번호DNIS관리    Frm_SET
end;

procedure TFrm_SETA1.cxGridSchViewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_UP] then
  begin
    if cxGridSchView.Controller.FocusedRecordIndex = 0 then
      EdtSearch.SetFocus;
  end
  else if Key in [VK_ESCAPE] then
    EdtSearch.SetFocus;
end;

procedure TFrm_SETA1.cxGroupBox59MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnlSvrOpt.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SETA1.cxImage1Click(Sender: TObject);
begin
  cxRBJon01VTypeA.Checked := True;
end;

procedure TFrm_SETA1.cxImage2Click(Sender: TObject);
begin
  cxRBJon01VTypeB.Checked := True;
end;

procedure TFrm_SETA1.SetTreeSelItem(idx: Integer);
var
  i: Integer;
begin
  for i := 0 to cxTreeView1.Items.Count - 1 do
  begin
    if (idx = cxTreeView1.Items[i].SelectedIndex) then
    begin
      cxTreeView1.Items[i].Selected := True;
      cxTreeView1Click(cxTreeView1);
      Break;
    end;
  end;
end;

procedure TFrm_SETA1.cxLabel5Click(Sender: TObject);
var
  s: string;
  i: Integer;
begin
  ColorDialog1.Color := TPanel(Sender).Color;
  if (ColorDialog1.Execute) then
  begin
    if TPanel(Sender).Tag in [9, 10, 11] then
    begin
      if TPanel(Sender).Tag = 9 then
        s := 'CB_0C'
      else if TPanel(Sender).Tag = 10 then
        s := 'CB_0B'
      else if TPanel(Sender).Tag = 11 then
        s := 'CB_0D';
      SetIniColor(ENVPATHFILE, 'Status', s, ColorToString(ColorDialog1.Color));
    end else
    begin
      s := 'CB_0' + IntToStr(TPanel(Sender).Tag);
      SetIniColor(ENVPATHFILE, 'Status', s, ColorToString(ColorDialog1.Color));
    end;
  end;

	for i := 0 to 4 do
	begin
		if Assigned(frm_Main.Frm_JON03[i]) then
		begin
			// 접수 검색의 즉시 배차 지사 변경
			TcxLabel(Sender).Style.Color := ColorDialog1.Color;
			case TcxLabel(Sender).Tag of
				0:
					frm_Main.Frm_JON03[i].lb_Common0.Color := ColorDialog1.Color;
				1:
					frm_Main.Frm_JON03[i].lb_Common1.Color := ColorDialog1.Color;
        2:
					frm_Main.Frm_JON03[i].lb_Common2.Color := ColorDialog1.Color;
				3:
					frm_Main.Frm_JON03[i].lb_Common3.Color := ColorDialog1.Color;
				4:
					frm_Main.Frm_JON03[i].lb_Common4.Color := ColorDialog1.Color;
				5:
					frm_Main.Frm_JON03[i].lb_Common5.Color := ColorDialog1.Color;
				7:
					frm_Main.Frm_JON03[i].lb_Common7.Color := ColorDialog1.Color;
				8:
					frm_Main.Frm_JON03[i].lb_Common8.Color := ColorDialog1.Color;
				9:
					frm_Main.Frm_JON03[i].lb_Common9.Color := ColorDialog1.Color;
				10:
					frm_Main.Frm_JON03[i].lb_Common10.Color := ColorDialog1.Color;
				11:
					frm_Main.Frm_JON03[i].lb_Common11.Color := ColorDialog1.Color;
			end;
			frm_Main.lbWkRun.Style.Color := frm_Main.Frm_JON03[i].lb_Common1.Color;
		end;
	end;
end;

procedure TFrm_SETA1.cxCheckBox2Click(Sender: TObject);
begin
  GS_JON_BRCOLOR_SET := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('BR_COLOR', 'BR_COLOR_USE', TcxCheckBox(Sender).Checked);
  cxGridBRCOLOR.Enabled := GS_JON_BRCOLOR_SET;
  if GS_JON_BRCOLOR_SET then
  begin
    RDO_OR_COLOR1.Enabled := True;
    RDO_OR_COLOR2.Enabled := True;
    if GS_JON_BRCOLOR_SET_USE = 1 then
    begin
      if GT_USERIF.LV < '60' then
      begin
        cxButton59.Visible := True;
        cxButton60.Visible := False;
      end else
      begin
        cxButton59.Visible := True;
        cxButton60.Visible := True;
      end;
    end;
  end else
  begin
    RDO_OR_COLOR1.Enabled := False;
    RDO_OR_COLOR2.Enabled := False;
    cxButton59.Visible := False;
    cxButton60.Visible := False;
  end;
end;

procedure TFrm_SETA1.cxRBViaStartClick(Sender: TObject);
begin
  // 경유지를 출발지에 적용할지 도착지에 적용할지 선택
  if cxRBViaStart.Checked then gsViaStartEndCheck := 'Y' else
  if cxRBViaEnd.Checked   then gsViaStartEndCheck := 'N' else
  if cxRBViaNo.Checked    then gsViaStartEndCheck := 'X';

  GS_EnvFile.WriteString('COUNSEL', 'ViaStartEndCheck', gsViaStartEndCheck);
end;

procedure TFrm_SETA1.cxRadioButton16Click(Sender: TObject);
begin
  if cxGroupBox2.Tag = 100 then  Exit; // 상담원 지역설정위해 사용됨.

  if TcxRadioButton(Sender).Tag <> -1 then
  begin
    GS_EnvFile.WriteString('RouteMS', 'Current', TcxRadioButton(Sender).Hint);
  end else
  begin
    GS_EnvFile.WriteString('RouteMS', 'Current', '');
  end;

  GS_COUNSEL_AREA := TcxRadioButton(Sender).Hint;
  // 상담지역 설정값 저장.[전화번호 검색시 사용함]  CDS. 08082.
  GS_DDD_Num := GS_COUNSEL_AREA;
end;

procedure TFrm_SETA1.cxRadioButton1Click(Sender: TObject);
var
  sTemp, sPath: string;
  bFileLoad: Boolean;
begin
  bFileLoad := False;
  if FileExists('C:\CDMS\cdms_env.ini') then
  begin
    bFileLoad := True;
    sPath := 'C:\CDMS\cdms_env.ini';
  end else
  if FileExists('C:\CDMSCN\cdms_env.ini') then
  begin
    bFileLoad := True;
    sPath := 'C:\CDMSCN\cdms_env.ini';
  end;

  cxGroupBox26.Tag := TcxRadioButton(Sender).Tag;
  sTemp := GS_EnvFile.ReadString('MOUSE_OVER', 'WK_HINT', '');
  sTemp := '1';
  if (sTemp <> '') then
  begin
    case TcxRadioButton(Sender).Tag of
      0:
        begin
          pnl_Accept.Caption := '일반';
          pnl_Accept.Style.Color := GetIniColor(ENVPATHFILE, 'AcceptWin',  'General', '$00ED7328');
        end;
      1:
        begin
          pnl_Accept.Caption := '업소';
          pnl_Accept.Style.Color := GetIniColor(ENVPATHFILE, 'AcceptWin',  'STORE', '$0077FF77');
        end;
      2:
        begin
          pnl_Accept.Caption := '법인';
          pnl_Accept.Style.Color := GetIniColor(ENVPATHFILE, 'AcceptWin',  'CompanyColor', '$00FFA4FF');
        end;
      3:
        begin
          pnl_Accept.Caption := '기사';
          pnl_Accept.Style.Color := GetIniColor(ENVPATHFILE, 'AcceptWin',  'WorkerColor', '$00FFFF8E');
        end;
    end;
  end else
  if bFileLoad then
  begin
    case TcxRadioButton(Sender).Tag of
      0:
        begin
          pnl_Accept.Caption := '일반';
          pnl_Accept.Style.Color := GetIniColor(ENVPATHFILE, 'AcceptWin', 'General', '$00ED7328');
        end;
      1:
        begin
          pnl_Accept.Caption := '업소';
          pnl_Accept.Style.Color := GetIniColor(ENVPATHFILE, 'AcceptWin', 'STORE', '$0077FF77');
        end;
      2:
        begin
          pnl_Accept.Caption := '법인';
          pnl_Accept.Style.Color := GetIniColor(ENVPATHFILE, 'AcceptWin', 'CompanyColor', '$00FFA4FF');
        end;
      3:
        begin
          pnl_Accept.Caption := '기사';
          pnl_Accept.Style.Color := GetIniColor(ENVPATHFILE, 'AcceptWin', 'WorkerColor', '$00FFFF8E');
        end;
    end;
  end;
end;

procedure TFrm_SETA1.cxRadioButton33Click(Sender: TObject);
begin
  if cxRadioButton33.Checked then gJONOrderColor.ColorG := 0 else
  if cxRadioButton34.Checked then gJONOrderColor.ColorG := 1;
  GS_EnvFile.WriteInteger('OrderColor', 'ColorG', gJONOrderColor.ColorG);
end;

procedure TFrm_SETA1.rbWORSOSOK_VIEW1Click(Sender: TObject);
begin
  GB_WORSOSOK_VIEW := TcxRadioButton(Sender).Tag = 1;
  GS_EnvFile.WriteBool('WORKER', 'GB_WORSOSOK_VIEW', GB_WORSOSOK_VIEW);
end;

procedure TFrm_SETA1.cxRBJon01TypeAClick(Sender: TObject);
begin
  btn215Save.Tag := 1;
end;

procedure TFrm_SETA1.cxRBJon01VTypeAClick(Sender: TObject);
begin
  btn215Save.Tag := 1;
end;

procedure TFrm_SETA1.cxRadioButton5Click(Sender: TObject);
begin
  CHARGE_DIS := TcxRadioButton(Sender).Caption;
  GS_EnvFile.WriteString('CHARGE', 'dis_type', CHARGE_DIS);
end;

procedure TFrm_SETA1.cxRadioButton7Click(Sender: TObject);
begin
  GT_SUM_DEFAULT := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteString('WORKER', 'SUMDEF', IntToStr(GT_SUM_DEFAULT));
end;

procedure TFrm_SETA1.cxRadioButton9Click(Sender: TObject);
begin
  if cxRadioButton9.Checked  then gJONOrderColor.Gubun := 0 else
  if cxRadioButton10.Checked then gJONOrderColor.Gubun := 1;
  GS_EnvFile.WriteInteger('OrderColor', 'Gubun', gJONOrderColor.Gubun);
end;

procedure TFrm_SETA1.cxRdoAutoCloseClick(Sender: TObject);
begin
  GS_EnvFile.WriteString('AUTOCLOSE', 'MINUTE60YN', 'YES');
  // 컴퓨터 마우스 움직임이 60분동안 없을경우 자동으로 로그아웃 처리 해준다.
  frm_Main.acAwayTimer1.Enabled := True;
end;

procedure TFrm_SETA1.cxRdoAutoCloseNotClick(Sender: TObject);
begin
  GS_EnvFile.WriteString('AUTOCLOSE', 'MINUTE60YN', 'NO');
  // 컴퓨터 마우스 움직임이 60분동안 없을경우 자동으로 로그아웃 처리 해준다.
  frm_Main.acAwayTimer1.Enabled := False;
end;

procedure TFrm_SETA1.cxScrollBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SETA1.edt_msg_closeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = VK_Return then btn_msg_close.Click;
end;

procedure TFrm_SETA1.edt_msg_closeKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['.', '0'..'9', #13, #8] then
//  if key in ['0'..'9', #13, #8] then
	else
		key := #0;
end;

procedure TFrm_SETA1.cxTreeView1Click(Sender: TObject);
var
	i: Integer;
begin
  if (cxTreeView1.Selected.SelectedIndex = 100) Or
		 (cxTreeView1.Selected.SelectedIndex = 200) Or
     (cxTreeView1.Selected.SelectedIndex = 300) Or
     (cxTreeView1.Selected.SelectedIndex = 400) Or
		 (cxTreeView1.Selected.SelectedIndex = 900) then
    cxPageControl1.ActivePageIndex := 0;

  if (cxTreeView1.Selected.SelectedIndex = 905) then
  begin
    SetFontFaceList;
    cbFontList.EditValue := GS_FontName;
  end;

  if cxTreeView1.Selected.Level > 0 then
  begin
    for i := 0 to cxPageControl1.PageCount - 1 do
    begin
      if cxPageControl1.Pages[i].Tag = cxTreeView1.Selected.SelectedIndex then
      begin
        cxPageControl1.ActivePage := cxPageControl1.Pages[i];
        if cxPageControl1.Pages[i].Tag = 216 then
        begin
          if ( not Assigned(Frm_JON016[0]) ) Or ( Frm_JON016[0] = Nil ) then
            Frm_JON016[0] := TFrm_JON016.Create(Nil);

          Frm_JON016[0].Parent := grp216;
          Frm_JON016[0].Align := alClient;
          Frm_JON016[0].Tag := 1;
          Frm_JON016[0].pnlTitle.Caption := '   [접수창] 출발지/도착지 상용구 설정';
          Frm_JON016[0].pnlTitle.Visible := False;
          Frm_JON016[0].Show;
          Frm_JON016[0].LoadData;
          Frm_JON016[0].BringToFront;
        end else
        if cxPageControl1.Pages[i].Tag = 217 then
        begin
          if ( not Assigned(Frm_JON016[1]) ) Or ( Frm_JON016[1] = Nil ) then
            Frm_JON016[1] := TFrm_JON016.Create(Nil);

          Frm_JON016[1].Parent := grp217;
          Frm_JON016[1].Align := alClient;
          Frm_JON016[1].Tag := 2;
          Frm_JON016[1].pnlTitle.Caption := '   [접수창] 적요 상용구 설정';
          Frm_JON016[1].pnlTitle.Visible := False;
          Frm_JON016[1].Show;
          Frm_JON016[1].LoadData;
          Frm_JON016[1].BringToFront;
        end;
        Break;
      end;
    end;
  end else
  begin
    for i := 0 to cxPageControl1.PageCount - 1 do
    begin
      if cxPageControl1.Pages[i].Tag = cxTreeView1.Selected.StateIndex then
        cxPageControl1.ActivePage := cxPageControl1.Pages[i];
    end;
  end;

  if ( cxTreeView1.Selected.SelectedIndex >= 100 ) And ( cxTreeView1.Selected.SelectedIndex <= 199 ) then PnlTitle.Caption := '접수현황설정' else
  if ( cxTreeView1.Selected.SelectedIndex >= 200 ) And ( cxTreeView1.Selected.SelectedIndex <= 299 ) then PnlTitle.Caption := '접수창설정' else
  if ( cxTreeView1.Selected.SelectedIndex >= 300 ) And ( cxTreeView1.Selected.SelectedIndex <= 399 ) then PnlTitle.Caption := '고객설정' else
	if ( cxTreeView1.Selected.SelectedIndex >= 400 ) And ( cxTreeView1.Selected.SelectedIndex <= 499 ) then PnlTitle.Caption := '기사설정' else
	if ( cxTreeView1.Selected.SelectedIndex >= 500 ) And ( cxTreeView1.Selected.SelectedIndex <= 599 ) then PnlTitle.Caption := '요금설정' else
  if ( cxTreeView1.Selected.SelectedIndex >= 900 ) And ( cxTreeView1.Selected.SelectedIndex <= 999 ) then PnlTitle.Caption := '공통설정';

  if GB_FIRSTMODE then PnlTitle.Caption := '프로그램 테마 설정';

  GS_EnvFile.WriteInteger('GER', 'SETIDX', cxTreeView1.Selected.SelectedIndex);
end;

procedure TFrm_SETA1.cxTreeView1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
	if Node.Selected then
  begin
		cxTreeView1.Canvas.Font.Color := clWhite;      //Win10 KHS
		cxTreeView1.Canvas.Brush.Color := $00FF9933;
//    Sender.Canvas.Font.Color := clWhite;
//		Sender.Canvas.Brush.Color := $00FF9933;
	end;
end;

procedure TFrm_SETA1.edtNmlTRSType1Unlock1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['0' .. '9', #13, #8, '-'] then
  else
    Key := #0;
end;

procedure TFrm_SETA1.edtNmlTRSType1Unlock1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  changeTRSPenaltyType1(Sender);
end;

procedure TFrm_SETA1.edtNmlTRSType2NameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  changeTRSPenaltyType2(Sender);
end;

procedure TFrm_SETA1.edtNmlTRSType2Unlock1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['0' .. '9', #13, #8, '-'] then
  else
    Key := #0;
end;

procedure TFrm_SETA1.edtNmlTRSType2Unlock1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  changeTRSPenaltyType2(Sender);
end;

procedure TFrm_SETA1.EdtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    BtnSearch.Click;
end;

procedure TFrm_SETA1.EdtSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_DOWN] then
  begin
    cxGridSch.SetFocus;
  end
  else
    BtnSearch.Click;
end;

procedure TFrm_SETA1.Edt_BPwKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ActiveControl <> nil) and (key = VK_RETURN) then btnAll1.SetFocus;
end;

procedure TFrm_SETA1.Edt_PPwKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ActiveControl <> nil) and (key = VK_RETURN) then
  begin
    Key := 0;
    SelectNext(TWinControl(ActiveControl), True, True);
  end;
end;

procedure TFrm_SETA1.Edt_PWKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ActiveControl <> nil) and (key = VK_RETURN) then btn4.Click;
end;

procedure TFrm_SETA1.ed_MaddBrchNameClick(Sender: TObject);
var
  i: Integer;
  ss_Value: string;
begin
  if (GT_USERIF.Family = 'y') And (GT_USERIF.LV = '60') then // 20120629 LYB
    ss_Value := scb_FamilyBrCode.Strings[ed_MaddBrchName.ItemIndex]
  else
    ss_Value := scb_BranchCode.Strings[ed_MaddBrchName.ItemIndex];

  ed_Key_Number.Properties.Items.Clear;
  for i := 0 to GT_BR_KN_CNT do
  begin
    if ss_Value = GSL_HD_LIST[i, 0] then
      if (GSL_HD_LIST[i, 2] <> '') then
        ed_Key_Number.Properties.Items.Add(GSL_HD_LIST[i, 2]);
  end;
  ed_MaddBrch.Text := ss_Value;
  ed_Key_Number.ItemIndex := 0;
end;

procedure TFrm_SETA1.ed_pwKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    RbButton19.Click;
end;

procedure TFrm_SETA1.FormActivate(Sender: TObject);
begin
	cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_SETA1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if GS_DefaultColor.Form <> '' then
  begin
    pFormComponentFontColor(0);
    GS_DefaultColor.Form := '';
  end;

  if Assigned(Frm_JON016[0]) then Frm_JON016[0].Close;
  if Assigned(Frm_JON016[1]) then Frm_JON016[1].Close;

  FreeAndNil(slFile);
  FreeAndNil(slChkAddrB);
  FreeAndNil(slChkSchB);
  Action := caFree;
end;

procedure TFrm_SETA1.FormCreate(Sender: TObject);
Var
  i: Integer;
  Save: LongInt; // 폼타이틀 제거용.
begin
	try
    SetDebugeWrite('Frm_JON012.FormCreate');
    //====================================================
    // 폼 타이틀 제거..
//    if BorderStyle = bsNone then Exit;
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
  except
  end;

  for i := 0 to cxPageControl1.PageCount - 1 do
    cxPageControl1.Pages[i].TabVisible := False;

  for i := 0 to cxGridSchView.ColumnCount - 1 do
    cxGridSchView.Columns[i].DataBinding.ValueType := 'String';

  cxGridSchView.DataController.SetRecordCount(0);
  pSetLoadMenuAll;

  if (GB_365System) Or (GB_CallLine) then cxLabel72.Visible := False;
  if GB_FIRSTMODE then Exit;

  grpConfigSave.BringToFront;
  grpConfigSave.Align := alClient;

  if ( Not GB_365System) And ( GT_USERIF.ID <> 'sntest' ) then
  begin
    for i := 0 to cxTreeView1.Items.Count - 1 do
    begin
      if (215 = cxTreeView1.Items[i].SelectedIndex) then
      begin
        cxTreeView1.Items[i].Delete;
        Break;
      end;
    end;
  end;

	chk_KMAiRate.Visible := GT_Kakao_KMAiRate;
	cbo_KMAiRate.Visible := GT_Kakao_KMAiRate;
	img_KMAiRate.Visible := GT_Kakao_KMAiRate;

	pSetMakeSearchMenu;
  proc_init;
  proc_general;
  proc_Accept;
	proc_BRList_BubHu;
end;

procedure TFrm_SETA1.proc_init;
var
  i, j: Integer;
  sTemp, sPath: string;
  iOldEnvfile: TIniFile;
  bFileLoad: Boolean;
begin
	if CHARGE_Online_USE = 'y' then
	begin
		rb_OnLineServer.Enabled := True;
		btn_ConnectTest.Enabled := True;
	end else
	begin
		rb_OnLineServer.Enabled := False;
		btn_ConnectTest.Enabled := False;
	end;

  lbCustCompany.Caption := Format('[%s]%s', [GT_SEL_BRNO.HDNO, scb_HdNm[scb_HdNo.IndexOf(GT_SEL_BRNO.HDNO)]]);

  bFileLoad := False;
  slFile := TStringList.Create;
  slChkAddrB := TStringList.Create;
  slChkSchB := TStringList.Create;

  if FileExists('C:\CDMS\cdms_env.ini') then
  begin
    bFileLoad := True;
    sPath := 'C:\CDMS\cdms_env.ini';
  end else
  if FileExists('C:\CDMSCN\cdms_env.ini') then
  begin
    bFileLoad := True;
    sPath := 'C:\CDMSCN\cdms_env.ini';
  end;
  iOldEnvfile := TIniFile.Create(sPath);

  GS_EnvFile.ReadSection('ServerPoiAddr', slChkAddrB);
  GS_EnvFile.ReadSection('ServerPoiSch', slChkSchB);

  if slChkAddrB.Count <= 0 then
  begin
    if GS_PRJ_AREA = 'S' then
    begin
      cxChkAddrB.Items.Items[00].Checked := True;
      cxChkAddrB.Items.Items[01].Checked := True;
      cxChkAddrB.Items.Items[02].Checked := True;
      cxChkAddrB.Items.Items[09].Checked := True;
      cxChkAddrB.Items.Items[10].Checked := True;
    end;
  end else
  begin
    for i := 0 to slChkAddrB.Count - 1 do
    begin
      for j := 0 to cxChkAddrB.Items.Count - 1 do
      begin
        if slChkAddrB.Strings[i] = cxChkAddrB.Items.Items[j].Text then
        begin
          cxChkAddrB.Items.Items[j].Checked := True;
          Continue;
        end;
      end;
    end;
  end;

  if slChkSchB.Count <= 0 then
  begin
    if GS_PRJ_AREA = 'S' then
    begin
      cxChkSchB.Items.Items[00].Checked := True;
      cxChkSchB.Items.Items[01].Checked := True;
      cxChkSchB.Items.Items[02].Checked := True;
      cxChkSchB.Items.Items[09].Checked := True;
      cxChkSchB.Items.Items[10].Checked := True;
    end;
  end else
  begin
    for i := 0 to slChkSchB.Count - 1 do
    begin
      for j := 0 to cxChkSchB.Items.Count - 1 do
      begin
        if slChkSchB.Strings[i] = cxChkSchB.Items.Items[j].Text then
        begin
          cxChkSchB.Items.Items[j].Checked := True;
          Continue;
        end;
      end;
    end;
  end;

  // 컴퓨터 마우스 움직임이 60분동안 없을경우 자동으로 로그아웃 처리.  CDS. 080911.
  sTemp := GS_EnvFile.ReadString('AUTOCLOSE', 'MINUTE60YN', 'YES');
  if sTemp = 'YES' then cxRdoAutoClose.Checked := True
                   else cxRdoAutoCloseNot.Checked := True;

  // 접수창 결제구분에서 후불 사용여부.  CDS. 081010.
  gsJON01AfterMoneyYN := GS_EnvFile.ReadString('JON01AFTERMONEYUSE', 'AFTERMONEY', 'TRUE');
  if gsJON01AfterMoneyYN = 'TRUE' then cxChkAfterMoney.Checked := False
                                  else cxChkAfterMoney.Checked := True;

  // 2011.03.02 후불기본값
  cbb_AfterMoney.ItemIndex := GT_USERIF.AfterPayMidx;

  // 접수창 결제구분에서 외상 사용여부.  CDS. 081010.
  gsJON01CreditMoneyYN := GS_EnvFile.ReadString('JON01AFTERMONEYUSE', 'CREDITMONEY', 'FALSE');
  if gsJON01CreditMoneyYN = 'TRUE' then cxChkCreditMoney.Checked := False
                                   else cxChkCreditMoney.Checked := True;

	// 접수창에서 결제구분(현장카드) 사용여부 설정. 20210128 KHS
	gsJON01SelfCard := GS_EnvFile.ReadString('JON01AFTERMONEYUSE', 'SELFCARD', 'TRUE');
	if gsJON01SelfCard = 'TRUE' then Chk_SelfCard.Checked := False
															else Chk_SelfCard.Checked := True;

  gsJON01AfterMoneyWordUse  := GS_EnvFile.ReadBool('JON01AFTERMONEYUSE', 'AFTERMONEYWORDUSE', False);
  cxChkAfterMoneyWordUse.Checked := gsJON01AfterMoneyWordUse;

  gsJON01AfterMoneyWordUse1  := GS_EnvFile.ReadBool('JON01AFTERMONEYUSE', 'AFTERMONEYWORDUSE1', False);
  cxChkAfterMoneyWordUse1.Checked := gsJON01AfterMoneyWordUse1;

  gsJON01MileUnitUse := GS_EnvFile.ReadBool('COUNSEL', 'gsJON01MileUnitUse', (GS_PRJ_AREA = 'O') AND (GT_USERIF.ShareNo = 'G03') );  // 부산콜 연합만 기본 사용
  chkMileUnitUse.Checked := gsJON01MileUnitUse;

  gsJON01CardBigoUse := GS_EnvFile.ReadBool('COUNSEL', 'gsJON01CardBigoUse', False );
  chkCardBigoUse.Checked := gsJON01CardBigoUse;

  gsJON01PostBigoUse := GS_EnvFile.ReadBool('COUNSEL', 'gsJON01PostBigoUse', False );
  chkPostBigoUse.Checked := gsJON01PostBigoUse;

  for i := 0 to cxBRListSetColor.ColumnCount - 1 do
    cxBRListSetColor.Columns[i].DataBinding.ValueType := 'String';
  cxBRListSetColor.DataController.SetRecordCount(0);

	for i := 0 to cxBubHuList.ColumnCount - 1 do
		cxBubHuList.Columns[i].DataBinding.ValueType := 'String';
	cxBubHuList.DataController.SetRecordCount(0);

  if Not GB_FIRSTMODE then
  begin
    // 다크모드는 로그인전에 가져오고 무조건 재시작이기 때문에 중간에 변경이 불가
//    GB_DARKMODE := GS_EnvFile.ReadBool('GER', 'DARK_MODE', False);
    if GB_DARKMODE then
    begin
      rbBMode.Checked := True;
      rbBMode.Font.Style := [fsBold];
      rbBMode.Tag := 1;
      rbAMode.Tag := 0;
      rbAMode.Font.Style := [];
    end else
    begin
      rbAMode.Checked := True;
      rbAMode.Font.Style := [fsBold];
      rbBMode.Tag := 0;
      rbAMode.Tag := 1;
      rbBMode.Font.Style := [];
    end;
  end;
end;

procedure TFrm_SETA1.proc_general;
var
  iVatG : Integer;
  sTmp, sPath: string;
begin
  if FileExists('C:\CDMS\cdms_env.ini') then
  begin
    sPath := 'C:\CDMS\cdms_env.ini';
  end else
  if FileExists('C:\CDMSCN\cdms_env.ini') then
  begin
		sPath := 'C:\CDMSCN\cdms_env.ini';
  end;

  SetAcceptTitle;

	GB_COUNSEL_TITLE_VIEW1 := GS_EnvFile.ReadBool('COUNSEL', 'GS_COUNSEL_TITLE_VIEW1', False);
  chk_COUNSEL_TITLE_VIEW1.Checked := GB_COUNSEL_TITLE_VIEW1;
	GB_COUNSEL_TITLE_VIEW2 := GS_EnvFile.ReadBool('COUNSEL', 'GS_COUNSEL_TITLE_VIEW2', False);
  chk_COUNSEL_TITLE_VIEW2.Checked := GB_COUNSEL_TITLE_VIEW2;

  chk_wk_tr_use.Checked := False;
  cb_tr_brnm.Properties.Items.Clear;
  cb_tr_brnm2.Properties.Items.Clear;

  // -  Frm_Main.imgTRS.Visible := False;
  Frm_Main.cxCIDImgList.GetIcon(5, frm_JON54.imgTRS.Picture.Icon); // TRS OFF;

  if (GT_USERIF.Family = 'y') And (GT_USERIF.LV = '60') then // 20120629 LYB
  begin
    cb_tr_brnm.Properties.Items.Assign(scb_FamilyBrName);
    cb_tr_brnm2.Properties.Items.Assign(scb_FamilyBrName);
  end else
  begin
    cb_tr_brnm.Properties.Items.Assign(scb_BranchName);
    cb_tr_brnm2.Properties.Items.Assign(scb_BranchName);
  end;
  wk_tr_ip.Text := '';
  wk_tr_port.Text := '';
  GT_TR_INFO.Use := 'n';
  Edit3.Text := '';
  cb_tr_brnm.Enabled := False;
  cb_tr_brnm2.Enabled := False;
  wk_tr_ip.Enabled := False;
  wk_tr_port.Enabled := False;
  Edit3.Enabled := False;

  GT_MOUSE_HINT := StrToIntDef(GS_EnvFile.ReadString('MOUSE_OVER', 'MOUSE_OVER', '1'), 1);
  if GT_MOUSE_HINT = 1 then
    RbRadioButton1.Checked := True
  else
    RbRadioButton2.Checked := True;

  GT_WK_HINT := StrToIntDef(GS_EnvFile.ReadString('MOUSE_OVER', 'WK_HINT', '0'), 0);
  if GT_WK_HINT = 0 then
    RbRadioButton3.Checked := True
  else
    RbRadioButton4.Checked := True;

  GBJON01_AUTO_UPSO_YN := GS_EnvFile.ReadBool('COUNSEL',  'JON01_AUTO_UPSO_YN', GB_365System);
  if GBJON01_AUTO_UPSO_YN then rbAutoUpsoY.Checked := True
                          else rbAutoUpsoN.Checked := True;

  GT_MAIN_VIEW_TIME := StrToIntDef(GS_EnvFile.ReadString('MAIN_VIEW', 'TIME', '0'), 0);
  if GT_MAIN_VIEW_TIME = 0 then rb_View_DayTime.Checked := True else
  if GT_MAIN_VIEW_TIME = 1 then rb_View_Time.Checked := True else
  if GT_MAIN_VIEW_TIME = 2 then rb_View_DayTimes.Checked := True else
  if GT_MAIN_VIEW_TIME = 3 then rb_View_YearDayTime.Checked := True;

  GT_MAIN_VIEW_TIME1 := GS_EnvFile.ReadInteger('MAIN_VIEW', 'TIME1', GT_MAIN_VIEW_TIME);
  GT_MAIN_VIEW_TIME2 := GS_EnvFile.ReadInteger('MAIN_VIEW', 'TIME2', GT_MAIN_VIEW_TIME);
  GT_MAIN_VIEW_TIME3 := GS_EnvFile.ReadInteger('MAIN_VIEW', 'TIME3', GT_MAIN_VIEW_TIME);
  GT_MAIN_VIEW_TIME4 := GS_EnvFile.ReadInteger('MAIN_VIEW', 'TIME4', GT_MAIN_VIEW_TIME);
  GT_MAIN_VIEW_TIME5 := GS_EnvFile.ReadInteger('MAIN_VIEW', 'TIME5', GT_MAIN_VIEW_TIME);
  GT_MAIN_VIEW_TIME6 := GS_EnvFile.ReadInteger('MAIN_VIEW', 'TIME6', 0);

  cbViewDateType1.ItemIndex := GT_MAIN_VIEW_TIME1;
  cbViewDateType2.ItemIndex := GT_MAIN_VIEW_TIME2;
  cbViewDateType3.ItemIndex := GT_MAIN_VIEW_TIME3;
  cbViewDateType4.ItemIndex := GT_MAIN_VIEW_TIME4;
  cbViewDateType5.ItemIndex := GT_MAIN_VIEW_TIME5;
  cbViewDateType6.ItemIndex := GT_MAIN_VIEW_TIME6;

  GT_SUM_DEFAULT := StrToIntDef(GS_EnvFile.ReadString('WORKER', 'SUMDEF', '0'),
    0); // 기사 일괄차람 기본 선택값( 0 : 수수료차감, 1
  if GT_SUM_DEFAULT = 0 then
  begin
    cxRadioButton7.Checked := True;
    cxRadioButton8.Checked := False;
  end else
  begin
    cxRadioButton7.Checked := False;
    cxRadioButton8.Checked := True;
  end;
  gbWorkerChargeYN := StrToIntDef(GS_EnvFile.ReadString('WORKER',  'CALLSMSDEF', '1'), 1);
  // 환경설정에 문자배차 수수료 차감 옵션이 체크 되어 있으면 항상 차감설정을 한다.
  if gbWorkerChargeYN = 0 then cxCheckBox4.Checked := True
                          else cxCheckBox4.Checked := False;

  cxCheckBox5.Checked := GB_DEBUG_USE;
  cxCheckBox7.Checked := GB_CIDDEBUG_USE;

  GB_WORSOSOK_VIEW := GS_EnvFile.ReadBool('WORKER', 'GB_WORSOSOK_VIEW', True);
  if GB_WORSOSOK_VIEW then rbWORSOSOK_VIEW1.Checked := True
                      else rbWORSOSOK_VIEW2.Checked := True;

  gsViaStartEndCheck := GS_EnvFile.ReadString('COUNSEL', 'ViaStartEndCheck', 'Y');
  if gsViaStartEndCheck = 'Y' then cxRBViaStart.Checked := True else
  if gsViaStartEndCheck = 'N' then cxRBViaEnd.Checked := True else
	if gsViaStartEndCheck = 'X' then cxRBViaNo.Checked := True;

  SetValueTRSPenalty(1, GS_TRS_PENALTY.Type1);
  SetValueTRSPenalty(2, GS_TRS_PENALTY.Type2);

	GS_COUNSEL_AUTOSCROLLTOP := GS_EnvFile.ReadBool('COUNSEL',  'AutoScrollTop', True);
	chkNmlAutoScrollTop.Checked := not GS_COUNSEL_AUTOSCROLLTOP;

	GS_COUNSEL_CHNORDERSCROLLTOP := GS_EnvFile.ReadBool('COUNSEL',  'ChangeOrderScrollTop', False);
	chkChangeOrderScrollTop.Checked := GS_COUNSEL_CHNORDERSCROLLTOP;

	GS_WKCON_AUTOSCROLLTOP := GS_EnvFile.ReadBool('COUNSEL',   'WKAutoScrollTop', True);
	chkWKCONAutoScrollTop.Checked := GS_WKCON_AUTOSCROLLTOP;

	GS_SHORTCUT_SPACENOUSE := GS_EnvFile.ReadBool('COUNSEL',  'SHORTCUT_SPACENOUSE', False);
	chk_ShortCut_Space_NoUse.Checked := GS_SHORTCUT_SPACENOUSE;

	GS_BRLISTVIEWMODE := GS_EnvFile.ReadBool('COUNSEL', 'BRLISTVIEWMODE', False);
	chkLeftBrListViewMode.Checked := GS_BRLISTVIEWMODE;

	GS_JON54AutoRunNew := GS_EnvFile.ReadBool('COUNSEL', 'JON54AutoRunNew', True);
	chkJON54AutoRun.Checked := GS_JON54AutoRunNew;

	GS_JON03DetailExcelView := GS_EnvFile.ReadBool('COUNSEL', 'JON03DetailExcelView', False);
	chk_JON03DetailExcelView.Checked := GS_JON03DetailExcelView;

	GS_COUNSEL_AIQuestion := GS_EnvFile.ReadBool('COUNSEL', 'AIQuestion', False);
	chk_AIQuestion.Checked := GS_COUNSEL_AIQuestion;

	GS_COUNSEL_CallCustColClick := GS_EnvFile.ReadBool('COUNSEL', 'CallCustColClick', False);
	chk_CallCust.Checked := GS_COUNSEL_CallCustColClick;

	GS_COUNSEL_CallWorkerColClick := GS_EnvFile.ReadBool('COUNSEL', 'CallWorkerColClick', False);
	chk_CallWorker.Checked := GS_COUNSEL_CallWorkerColClick;

	GS_LocalMapSET := GS_EnvFile.ReadBool('COUNSEL', 'LocalMapSET', False);
  chkLocalMapSET.Checked := GS_LocalMapSET;

  GS_WKCASH_TYPE_DEFAULT := GS_EnvFile.ReadString('WKCASH_DEFAULT', 'INPUT_TYPE', rbNmlInputTypeNone.Caption);
  rbNmlInputTypeNone.Checked := (GS_WKCASH_TYPE_DEFAULT = rbNmlInputTypeNone.Caption);
  rbNmlInputTypeIn.Checked := (GS_WKCASH_TYPE_DEFAULT = rbNmlInputTypeIn.Caption);
  rbNmlInputTypeOut.Checked := (GS_WKCASH_TYPE_DEFAULT = rbNmlInputTypeOut.Caption);

  GS_WKCASH_PAYTYPE_DEFAULT := GS_EnvFile.ReadString('WKCASH_DEFAULT', 'INPUT_PAYTYPE', rbNmlInputPayTypeNone.Caption);
  rbNmlInputPayTypeNone.Checked := (GS_WKCASH_PAYTYPE_DEFAULT = rbNmlInputPayTypeNone.Caption);
  rbNmlInputPayTypeCash.Checked := (GS_WKCASH_PAYTYPE_DEFAULT = rbNmlInputPayTypeCash.Caption);
  rbNmlInputPayTypeBank.Checked := (GS_WKCASH_PAYTYPE_DEFAULT = rbNmlInputPayTypeCash.Caption);
  rbNmlInputPayTypeEtc.Checked :=  (GS_WKCASH_PAYTYPE_DEFAULT = rbNmlInputPayTypeEtc.Caption);

  GS_WKCASH_NOMSG := GS_EnvFile.ReadBool('WKCASH_DEFAULT',  'FINISH_NOMSG', False);
  chkNmlInputNoMsg.Checked := GS_WKCASH_NOMSG;

  GS_WKCASH_AUTOCLOSE := GS_EnvFile.ReadBool('WKCASH_DEFAULT', 'FINISH_AUTOCLOSE', False);
  chkNmlInputAutoClose.Checked := GS_WKCASH_AUTOCLOSE;

  GS_WKCASH_FIXACCOUNT := GS_EnvFile.ReadBool('WKCASH_DEFAULT',  'FIXIED_ACCOUNTTAB', False);
  chkNmlInputFixedAccTab.Checked := GS_WKCASH_FIXACCOUNT;

  GB_JONLIST_RETRY_NOSHOW := GS_EnvFile.ReadBool('COUNSEL', 'RetryNoShow', False);
  chkNmlRetryNoShowWin.Checked := GB_JONLIST_RETRY_NOSHOW;
  GB_JONLIST_READY_NOSHOW := GS_EnvFile.ReadBool('COUNSEL', 'ReadyNoShow', False);
  chkNmlReadyNoShowWin.Checked := GB_JONLIST_READY_NOSHOW;

	GB_JONLIST_READY_NOSHOW_MSG := GS_EnvFile.ReadBool('COUNSEL', 'ReadyNoShowMsg', False);
	cxCheckBox1.Checked := GB_JONLIST_READY_NOSHOW_MSG;

	GB_J03_NOSHOW_MSG := GS_EnvFile.ReadBool('COUNSEL', 'J03NoShowMsg', False);
	cxCheckBox6.Checked := GB_J03_NOSHOW_MSG;

  if GS_EnvFile.ReadString('WORKER_TR', 'USE', 'n') = 'y' then
  begin
    chk_wk_tr_use.Checked := True;
    wk_tr_ip.Text := GS_EnvFile.ReadString('WORKER_TR', 'IP', '');
    wk_tr_port.Text := GS_EnvFile.ReadString('WORKER_TR', 'PORT', '');
    Edit3.Text := GS_EnvFile.ReadString('WORKER_TR', 'NO', '1');
    GT_TR_INFO.Use := 'y';
    GT_TR_INFO.IP := wk_tr_ip.Text;
    GT_TR_INFO.PORT := wk_tr_port.Text;
    GT_TR_INFO.BrNo := GS_EnvFile.ReadString('WORKER_TR', 'BRNO', '');
    GT_TR_INFO.BrNo2 := GS_EnvFile.ReadString('WORKER_TR', 'BRNO2', '');
    GT_TR_INFO.No := Edit3.Text;
    if (GT_USERIF.Family = 'y') And (GT_USERIF.LV = '60') then // 20120629 LYB
    begin
      cb_tr_brnm.ItemIndex := scb_FamilyBranch.IndexOf(GT_TR_INFO.BrNo);
      cb_tr_brnm2.ItemIndex := scb_FamilyBranch.IndexOf(GT_TR_INFO.BrNo2);
    end else
    begin
      cb_tr_brnm.ItemIndex := scb_BranchCode.IndexOf(GT_TR_INFO.BrNo);
      cb_tr_brnm2.ItemIndex := scb_BranchCode.IndexOf(GT_TR_INFO.BrNo2);
    end;
    cb_tr_brnm.Enabled := True;
    cb_tr_brnm2.Enabled := True;
    wk_tr_ip.Enabled := True;
    wk_tr_port.Enabled := True;
    Edit3.Enabled := True;
  end;


  chkJon_Multi_Modify.Tag := 1;
  if GB_JON_MULTI_MODIFY then chkJon_Multi_Modify.Checked := True
                         else chkJon_Multi_Modify.Checked := False;
  chkJon_Multi_Modify.Tag := 0;

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

	cxCurVATvalue.Text       := GS_EnvFile.ReadString('CARDINFOSET', 'CARD_VAT_VALUE', '2');
	chkConfigCardset.Checked := GS_EnvFile.ReadBool('CARDINFOSET', 'CARD_MEMO_YN', False);

	cxLabel5.Style.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_00',
		ColorToString(clWhite));                                                //cxLabel5 = lb_Common0.Color
	cxLabel6.Style.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_01',
		ColorToString($00B5FFFF));                                              //cxLabel6 = lb_Common1.Colo1
	cxLabel7.Style.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_02',
		ColorToString($00FFDFDF));                                              //cxLabel7 = lb_Common2.Color
  cxLabel9.Style.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_03',
		ColorToString($00CEFFCE));                                              //cxLabel9 = lb_Common3.Color
	cxLabel11.Style.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_04',
		ColorToString($00FFFFC1));                                              //cxLabel11 = lb_Common4.Color
	cxLabel12.Style.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_05',
		ColorToString($00A0CFCF));                                              //cxLabel12 = lb_Common5.Color
	cxLabel10.Style.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_07',
		ColorToString($0093C9FF));                                              //cxLabel10 = lb_Common7.Color
	cxLabel8.Style.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_08',
		ColorToString($00DDDDFF));                                              //cxLabel8 = lb_Common8.Color
	cxLabel176.Style.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_0C',
    ColorToString($0084E3FB));
	cxLabel177.Style.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_0B', ColorToString($0000D9D9));
	cxLabel58.Style.Color  := GetIniColor(ENVPATHFILE, 'Status', 'CB_0D', ColorToString($00FFC78E));

	lb_PayGubun1.Style.TextColor := GetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun1', ColorToString(clRed));        
	lb_PayGubun2.Style.TextColor := GetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun2', ColorToString(clGreen));      
	lb_PayGubun3.Style.TextColor := GetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun3', ColorToString(clBlue));       
	lb_PayGubun4.Style.TextColor := GetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun4', ColorToString(clBlue));       
	lb_PayGubun5.Style.TextColor := GetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun5', ColorToString(clPurple));     
		
//	cb_msg_close.Text := '';
	edt_msg_close.Text := '';
	if GS_EnvFile.ReadString('GER', 'Message_Close', '0') = '0' then
		rbchk_msg_close.Checked := False
	else
	begin
		rbchk_msg_close.Checked := True;
//		edt_msg_close.Text := GS_EnvFile.ReadString('GER', 'Time_Close', '2');
	end;

  case GS_EnvFile.ReadInteger('GER', 'XlsVer', 0) of
    2003, 2007:
      GS_XLS_VERSION := TXlsVersion(GS_EnvFile.ReadInteger('GER', 'XlsVer', 0));
  else
    GS_XLS_VERSION := xvUnknown;
  end;
  if GS_XLS_VERSION = xvUnknown then
  begin
    sTmp := GetRegistry(HKEY_CLASSES_ROOT, 'Excel.Application\CurVer', '');
    sTmp := ReplaceAll(sTmp, 'Excel.Application.', '');
    if StrToIntDef(sTmp, 0) > XLS_2003_NUM then //
      GS_XLS_VERSION := xv2007Over
    else
      GS_XLS_VERSION := xv2003Under;
    GS_EnvFile.WriteInteger('GER', 'XlsVer', Integer(GS_XLS_VERSION));
  end;
  if GS_XLS_VERSION = xv2007Over then
    rbNmlXls2007.Checked := True
  else
    rbNmlXls2003.Checked := True;

  GS_XLS_AUTOOPEN := GS_EnvFile.ReadBool('GER', 'XlsAutoOpen', True);
  chkNmlXlsAutoOpen.Checked := GS_XLS_AUTOOPEN;

  GS_XLS_DTypeUse := GS_EnvFile.ReadBool('GER', 'XlsDTypeUse', False);
  chkNmlXlsDTypeUse.Checked := GS_XLS_DTypeUse;

	gbJON01UseShortCut := GS_EnvFile.ReadBool('COUNSEL', 'CancelShortCut', False);
  cxCheckBox2.Checked := GS_JON_BRCOLOR_SET;

	GB_PorgramSize := GS_EnvFile.ReadBool('GER', 'PorgramSize', False);
  chkProgSize.Checked := GB_PorgramSize;

	GS_MNG1501NoUse := GS_EnvFile.ReadBool('COUNSEL', 'MNG1501NoUse', False);
	chk_MNG1501NoUse.Checked := GS_MNG1501NoUse;

	rg_Cancelchoice.ItemIndex := gbOrderCancelSelect;
end;

procedure TFrm_SETA1.proc_Accept;
var
  i, j, idx : Integer;
	bFind21, bFind22, bFind23, bFind24, bFind25, bFind26 : Boolean;
	sTmp : String;
begin
  cxRadioButton1.Checked := True;
  cxRadioButton1Click(cxRadioButton1);

  if (GT_USERIF.Family = 'y') And (GT_USERIF.LV = '60') then // 20120629 LYB
    ed_MaddBrchName.Properties.Items.Assign(scb_FamilyBrName)
  else
    ed_MaddBrchName.Properties.Items.Assign(scb_BranchName);

  if ed_MaddBrchName.Properties.Items.IndexOf
    (GS_EnvFile.ReadString(Format('%s-%s', ['AcceptWin', GT_USERIF.BR]),
    'MaddBrchName', '')) >= 0 then
  begin
    ed_MaddBrchName.ItemIndex := ed_MaddBrchName.Properties.Items.IndexOf
      (GS_EnvFile.ReadString(Format('%s-%s', ['AcceptWin', GT_USERIF.BR]),
      'MaddBrchName', ''));
    ed_MaddBrchNameClick(Self);
    if ed_Key_Number.Properties.Items.IndexOf
      (GS_EnvFile.ReadString(Format('%s-%s', ['AcceptWin', GT_USERIF.BR]),
      'KeyNumber', '')) >= 0 then
      ed_Key_Number.ItemIndex := ed_Key_Number.Properties.Items.IndexOf
        (GS_EnvFile.ReadString(Format('%s-%s', ['AcceptWin', GT_USERIF.BR]),
        'KeyNumber', ''))
    else
    begin
      ed_Key_Number.Properties.Items.Clear;
      ed_Key_Number.Properties.Items.Add
        (GS_EnvFile.ReadString(Format('%s-%s', ['AcceptWin', GT_USERIF.BR]),
        'KeyNumber', ''));
      ed_Key_Number.ItemIndex := 0;
    end;
  end else
  begin
    ed_MaddBrchName.ItemIndex := -1;
  end;

  edtAcceptBrName.Text := GS_MainBranch.sBrName;
  edtAcceptKeyNum.Text := GS_MainBranch.sKeyNumber;
  edtAcceptBrNo.Text := GS_MainBranch.sBrNo;
  {
    cxGroupBox7.Visible := False;
    if UpperCase(GT_USERIF.RouteMS)[1] in ['M', 'S'] then
    begin
    cxGroupBox7.Visible := True;
    end;
  }
  cxGroupBox2.Tag := 100; // 상담원 지역설정위해 사용됨.
  i := StrToIntDef(GS_EnvFile.ReadString('RouteMS', 'Current', '-1'), -1);
  case i of
    2:
      cxRadioButton16.Checked := True;
    31:
      cxRadioButton17.Checked := True;
    32:
      cxRadioButton18.Checked := True;
    42:
      cxRadioButton19.Checked := True;
    41:
      cxRadioButton20.Checked := True;
    43:
      cxRadioButton21.Checked := True;
    33:
      cxRadioButton22.Checked := True;
    53:
      cxRadioButton23.Checked := True;
    54:
      cxRadioButton24.Checked := True;
    51:
      cxRadioButton25.Checked := True;
    52:
      cxRadioButton26.Checked := True;
    55:
      cxRadioButton27.Checked := True;
    63:
      cxRadioButton28.Checked := True;
    62:
      cxRadioButton29.Checked := True;
    61:
      cxRadioButton30.Checked := True;
    64:
      cxRadioButton31.Checked := True;
    -1:
      cxRadioButton32.Checked := True;
  end;
  chkCustTelAddDDD.Checked := GS_EnvFile.ReadBool('RouteMS', 'AddDDD', False);
  cxGroupBox2.Tag := 0;
	gsMyMainTelUse := GS_EnvFile.ReadString('MYMAINTELUSE', 'USEYN', 'FALSE');
  gsMyMainTelUseYN := GS_EnvFile.ReadString('MYMAINTELUSE', 'OPTYN', 'Y');

  GSMyMainTelOrderChargeCheck := GS_EnvFile.ReadBool('MYMAINTELUSE', 'OrderChargeCheck', False);
  chkOrderChargeCheck.Checked := GSMyMainTelOrderChargeCheck;

	gsMyMainRateNoChange := GS_EnvFile.ReadBool('MYMAINTELUSE', 'RateNoChange', False);
	cbMyMainRateNoChange.Checked := gsMyMainRateNoChange;

	chk_KMAiRate.Tag := 99;
	GB_KMAiRateUSE := GS_EnvFile.ReadBool('MYMAINTELUSE', 'KMAiRateUSE', False);
	chk_KMAiRate.Checked := GB_KMAiRateUSE;
	cbo_KMAiRate.enabled := GB_KMAiRateUSE;
	chk_KMAiRate.Tag := 0;
	
	cbo_KMAiRate.Tag := 99;
	GS_KMAiRateName := GS_EnvFile.ReadString('MYMAINTELUSE', 'KMAiRateName', 'AiFare');
	if GS_KMAiRateName = 'AiFare'      then sTmp := '스탠다드' else
	if GS_KMAiRateName = 'VipFare'     then sTmp := '프리미엄' else
	if GS_KMAiRateName = 'EconomyFare' then sTmp := '이코노미' else sTmp := '스탠다드';
	cbo_KMAiRate.ItemIndex := cbo_KMAiRate.properties.Items.IndexOf(sTmp);
	cbo_KMAiRate.Tag := 0;

	if GB_365System then gsMyRateRemarkMaintain := GS_EnvFile.ReadString('MYRREMARKMAT', 'USEYN', 'TRUE')
									else gsMyRateRemarkMaintain := GS_EnvFile.ReadString('MYRREMARKMAT', 'USEYN', 'FALSE');

  chkJON01_UPMODE .Checked := GS_UPMODE_START_CHANGE;
  chkJON01_UPMODE1.Checked := GS_UPMODE1_START_CHANGE;
  chkJON01_UPMODE2.Checked := GS_UPMODE2_START_CHANGE;
  chkJON01_UPMODE3.Checked := GS_UPMODE3_START_CHANGE;

  chkJONAreaAutoSET.Checked := GS_AREA_AUTO_SET;
	chkJONAutoLock_Start.Checked  := GS_AUTO_LOCK_START;
	chkJONAutoLock_End.Checked    := GS_AUTO_LOCK_END;
	chkJONAutoLock_Charge.Checked := GS_AUTO_LOCK_CHARGE;
  chkJONMapViewSET.Checked := GS_MODIFY_MAP_VIEW;

  if gsMyMainTelUseYN = 'Y' then
    rbMainTelRateY.Checked := True
  else
    rbMainTelRateN.Checked := True;

  rbchkMainTelRate.Checked := (gsMyMainTelUse <> 'FALSE');

  if rbchkMainTelRate.Checked then
    PnlchkMainTelRate.Enabled := True
  else
    PnlchkMainTelRate.Enabled := False;
  rbRateRemarkMaintain.Checked := (gsMyRateRemarkMaintain <> 'FALSE');
  CHARGE_DIS := GS_EnvFile.ReadString('CHARGE', 'dis_type', '1.0');

  if CHARGE_DIS = '1.0' then cxRadioButton5.Checked := True else
  if CHARGE_DIS = '1.1' then cxRadioButton6.Checked := True else
  if CHARGE_DIS = '1.2' then cxRadioButton11.Checked := True else
  if CHARGE_DIS = '1.25' then cxRadioButton12.Checked := True else
  if CHARGE_DIS = '1.3' then cxRadioButton13.Checked := True else
  if CHARGE_DIS = '1.4' then cxRadioButton14.Checked := True else
  if CHARGE_DIS = '1.5' then cxRadioButton15.Checked := True;

  GT_DEFAULT_ST := StrToIntDef(GS_EnvFile.ReadString('CHARGE',  'GT_DEFAULT_ST', '0'), 0);

  if GT_DEFAULT_ST = 0 then RbCheckBox1.Checked := False else
  if GT_DEFAULT_ST = 1 then RbCheckBox1.Checked := True;

  GT_CHARGE_CAL := StrToIntDef(GS_EnvFile.ReadString('CHARGE', 'CAL', '0'), 0);
//  if GT_DEFAULT_ST = 1 then GT_CHARGE_CAL := 0;

  if GT_CHARGE_CAL = 0 then rb_charge_cal0.Checked := True
                       else rb_charge_cal1.Checked := True;

  GT_DISTANCE_SVR := StrToIntDef(GS_EnvFile.ReadString('CHARGE', 'SERVER', '2'), 2);
  if GT_DISTANCE_SVR = 1 then rbRSSvr1.Checked := True else
  if GT_DISTANCE_SVR = 2 then rbRSSvr2.Checked := True
                         else rbRSSvr1.Checked := True;

  if ((GS_PRJ_AREA = 'S') and ((GT_USERIF.HD = 'A1531') Or (GT_USERIF.HD = 'A100')) ) then grpDistanceType.Visible := True;

  GT_DISTANCE_ROUTETYPE := StrToIntDef(GS_EnvFile.ReadString('CHARGE', 'GT_DISTANCE_ROUTETYPE', '2'), 2);
  if GT_DISTANCE_ROUTETYPE = 1 then rbRouteType1.Checked := True else
  if GT_DISTANCE_ROUTETYPE = 2 then rbRouteType2.Checked := True;

  GT_DISTANCE_ROADTYPE := StrToIntDef(GS_EnvFile.ReadString('CHARGE', 'GT_DISTANCE_ROADTYPE', '1'), 1);
  if GT_DISTANCE_ROADTYPE = 1 then rbRoadType1.Checked := True else
  if GT_DISTANCE_ROADTYPE = 2 then rbRoadType2.Checked := True;

  GT_DISTANCE_TOLLTYPE := StrToIntDef(GS_EnvFile.ReadString('CHARGE', 'GT_DISTANCE_TOLLTYPE', '2'), 2);
  if GT_DISTANCE_TOLLTYPE = 1 then rbTollType1.Checked := True else
  if GT_DISTANCE_TOLLTYPE = 2 then rbTollType2.Checked := True;

  CHARGE_GUBUN := GS_EnvFile.ReadString('CHARGE', 'CH_GUBUN', 'P');
  if CHARGE_GUBUN = 'P' then
  begin
    rg_charge_pc.Checked := True;
    rg_charge_pc.OnClick(rg_charge_pc);
  end else
  if CHARGE_GUBUN = 'S' then
  begin
    rg_charge_ser.Checked := True;
    rg_charge_serClick(rg_charge_ser);

		GS_ALL_SEVEN := GS_EnvFile.ReadBool('CHARGE', 'CH_TYPE2', False);
		if GS_ALL_SEVEN then 
		begin
			rbChargeType2.Checked := True;
			pnl_TypeB.Visible := True;
			GS_All7Type2 := GS_EnvFile.ReadBool('CHARGE', 'CH_TYPE2USE', False);
			if GS_All7Type2 then begin rb_TypeBUse.checked := False;  rb_TypeBSearch.checked := True; end
											else begin rb_TypeBUse.checked := True;   rb_TypeBSearch.checked := False;  end;
			Frm_Main.Menu1220.visible := GS_All7Type2;
		end else
		begin
			rbChargeType1.Checked := True;
			pnl_TypeB.visible := False;
			GS_All7Type2 := GS_ALL_SEVEN;
			Frm_Main.Menu1220.visible := GS_All7Type2;
		end;
	end else
	if CHARGE_GUBUN = 'O' then
	begin
		rb_OnLineServer.Checked := True;
		rb_OnLineServerClick(rb_OnLineServer);
  end;

  GT_DISTANCE_ST := StrToIntDef(GS_EnvFile.ReadString('CHARGE',  'GT_DISTANCE_ST', '1'), 1);

  if GT_DISTANCE_ST = 0 then chkDitanceUse.Checked := False else
  if GT_DISTANCE_ST = 1 then chkDitanceUse.Checked := True;

  grbDriverCharge.Visible := GB_365System;

  GS_JON_DRIVERCHARGELOCAL := GS_EnvFile.ReadString('CHARGE', 'JON_DRIVERCHARGELOCAL', 'n');
  if GS_JON_DRIVERCHARGELOCAL = 'n' then
    rbDriverChargeLocalUseN.Checked := True
  else
  begin
    rbDriverChargeLocalUseY.Checked := True;
    idx := cbDriverChargeLocalValue.Properties.Items.IndexOf(GS_JON_DRIVERCHARGELOCAL);
    if idx >= 0 then
    begin
      cbDriverChargeLocalValue.ItemIndex := idx;
    end else
    begin
      GS_JON_DRIVERCHARGELOCAL := 'n';
      GS_EnvFile.WriteString('CHARGE', 'JON_DRIVERCHARGELOCAL', GS_JON_DRIVERCHARGELOCAL);
    end;
  end;

  lb_sel_map.Items.Clear;
  GS_EnvFile.ReadSection('LocalMap', lb_sel_map.Items);
  if lb_sel_map.Items.Count = 0 then
  begin
    case StrToIntDef(GT_USERIF.SA, 0) of
      0:
        lb_sel_map.Items.Assign(lb_map.Items);
      1:
        begin
          lb_sel_map.Items.Add('서울');
          lb_sel_map.Items.Add('경기');
          lb_sel_map.Items.Add('인천');
        end;
      2:
        begin
          lb_sel_map.Items.Add('대전');
          lb_sel_map.Items.Add('충남');
          lb_sel_map.Items.Add('충북');
        end;
      4:
        lb_sel_map.Items.Add('강원');
      5:
        begin
          lb_sel_map.Items.Add('대구');
          lb_sel_map.Items.Add('경북');
        end;
      6:
        begin
          lb_sel_map.Items.Add('부산');
          lb_sel_map.Items.Add('울산');
          lb_sel_map.Items.Add('경남');
        end;
      8:
        begin
          lb_sel_map.Items.Add('광주');
          lb_sel_map.Items.Add('전남');
          lb_sel_map.Items.Add('전북');
        end;
      9:
        lb_sel_map.Items.Add('제주');
    end;
    GS_EnvFile.EraseSection('LocalMap');
    for i := 0 to lb_sel_map.Items.Count - 1 do
      GS_EnvFile.WriteString('LocalMap', lb_sel_map.Items.Strings[i],
        IntToStr(i));
  end;

  GB_SHOPTYPE_CALLCENTER := GS_EnvFile.ReadInteger('COUNSEL', 'ShopTypeCheck', 0);
  rbNmlShopCallCenterY.Checked := (GB_SHOPTYPE_CALLCENTER = 1);
  rbNmlShopCallCenterN.Checked := (GB_SHOPTYPE_CALLCENTER <> 1);

  GB_JON_USEBUBIN := GS_EnvFile.ReadBool('COUNSEL', 'UseBubInMenu', True);
  chkJONBubinMenu.Checked := GB_JON_USEBUBIN;
  GB_JON_FINISHMSG := GS_EnvFile.ReadBool('COUNSEL', 'FinishMsg', True);
  chkJONFinishMsg.Checked := GB_JON_FINISHMSG;
  GB_JON_BACKKEYUSE := GS_EnvFile.ReadBool('COUNSEL', 'seBackKeyUse', False);
  // 2011.05.25 CDS. ADD.
  chkJON01_BackKeyUse.Checked := GB_JON_BACKKEYUSE;

  // 즉후->법후로 변경 2012.08.01 KHS
  GB_JON_BUBHUUSE := GS_EnvFile.ReadBool('COUNSEL', 'seBubhuuse', False);
  chkJON01_Bubhu.Checked := GB_JON_BUBHUUSE;

  GB_JON_SEXM := GS_EnvFile.ReadBool('COUNSEL', 'seSexMuse', False);
  chkJON01_SexM.Checked := GB_JON_SEXM;

  GS_LOCALDATA_USE := StrToIntDef(GS_EnvFile.ReadString('LOCAL',
    'GS_LOCALDATA_USE', '0'), 0);
  Case GS_LOCALDATA_USE of
    0:
      rb_Local_Both.Checked := True;
    1:
      rb_Local_Data.Checked := True;
    2:
      rb_Local_DB.Checked := True;
  end;

  GS_IDNAME := StrToIntDef(GS_EnvFile.ReadString('COUNSEL', 'IDNAME', '0'), 0);
  if GS_IDNAME = 0 then rb_IDNAME.Checked := True
                   else rb_ID.Checked := True;

  GS_IDINUP := StrToIntDef(GS_EnvFile.ReadString('COUNSEL', 'IDINUP', '0'), 0);
  if GS_IDINUP = 0 then rb_IDIn.Checked := True
                   else rb_IDUp.Checked := True;

  GS_PASSTIMECHK := StrToIntDef(GS_EnvFile.ReadString('COUNSEL', 'PASSTIMECHK', '0'), 0);
  if GS_PASSTIMECHK = 0 then rb_PassTime1.Checked := True
												else rb_PassTime2.Checked := True;

  GS_STARTDONG := GS_EnvFile.ReadBool('COUNSEL', 'STARTDONG', False);
  cxCheckBox3.Checked := GS_STARTDONG;

	GS_MAP_AREA_AUTOSHOW := GS_EnvFile.ReadBool('AcceptMap', 'AreaAutoShow', False);
  chkJONAreaAutoShow.Checked := GS_MAP_AREA_AUTOSHOW;

  GS_JON_WKPANELTY_CONF := GS_EnvFile.ReadBool('Confirm', 'WorkerPanelty', True);
  chkWorkerPenalty.Checked := GS_JON_WKPANELTY_CONF;

  GS_JON_SENDWORKER_CONF := GS_EnvFile.ReadBool('Confirm', 'SendWorker', True);
  chkSendWorker.Checked := GS_JON_SENDWORKER_CONF;

  // 20120801 LYB 수정
  GS_JON_AUTOCMDQUESTION := GS_EnvFile.ReadBool('Confirm', 'AutoCmdQuestion', False);
  chkAutoCmdQuestion.Checked := GS_JON_AUTOCMDQUESTION;

  GS_COUNSEL_AUTORELOADHG := GS_EnvFile.ReadBool('COUNSEL', 'AutoReloadHIG', False);
  chkAutoReloadHg.Checked := GS_COUNSEL_AUTORELOADHG;

	GS_COUNSEL_BLOCKCIDADD := GS_EnvFile.ReadBool('COUNSEL', 'BlockCidAdd', False);
	chk_BlockCidAdd.Checked := GS_COUNSEL_BLOCKCIDADD;

	GS_COUNSEL_OutCallCidSync := GS_EnvFile.ReadBool('COUNSEL', 'OutCallCidSync', False);
	chk_OutCallCidSync.Checked := GS_COUNSEL_OutCallCidSync;

  if GS_JON01_Tab = 0 then cxRBJon01VTypeA.Checked := True
                      else cxRBJon01VTypeB.Checked := True;
  pSetJON01TabSelectView;

  GS_COUNSEL_MULTICHECK := GS_EnvFile.ReadBool('COUNSEL', 'MULTIUSECHECK', True);
  chkMultiSch.Checked := GS_COUNSEL_MULTICHECK;

  GB_COUNSEL_MULTICALLNUMBER := GS_EnvFile.ReadBool('COUNSEL', 'MULTICALLNUMBER', GB_365System);
  chkMultiCallNum.Checked := GB_COUNSEL_MULTICALLNUMBER;
  chkMultiCallNum.Visible := GB_365System;

  GB_JON_POITELSEARCH := GS_EnvFile.ReadBool('COUNSEL', 'GB_JON_POITELSEARCH', False);
  cxChkPOITelSearch.Checked := GB_JON_POITELSEARCH;

  GB_JON_MEMO3_USE := GS_EnvFile.ReadBool('COUNSEL', 'GB_JON_MEMO3_USE', False);
  chk_memo3Use.Checked := GB_JON_MEMO3_USE;

  GB_JON01_MENU_OVER := GS_EnvFile.ReadBool('COUNSEL', 'GB_JON01_MENU_OVER', False);
  chk_MenuOver.Checked := GB_JON01_MENU_OVER;

  GS_COUNSEL_BAECHA_ALLCHECK := GS_EnvFile.ReadBool('COUNSEL', 'BAECHA_ALLCHECK', False);
  chkBaechaAllCheck.Checked := GS_COUNSEL_BAECHA_ALLCHECK;

  GB_JON01_SHORTMENU_USE := GS_EnvFile.ReadBool('COUNSEL', 'GB_JON01_SHORTMENU_USE', False);
  chkJon01ShortMenu.Checked := GB_JON01_SHORTMENU_USE;

  GB_JON_CLOSE_CONFIRM := GS_EnvFile.ReadBool('COUNSEL', 'GB_JON_CLOSE_CONFIRM', False);
  chkCloseConfirm.Checked := GB_JON_CLOSE_CONFIRM;

  GB_JON_FIXEDPIN := GS_EnvFile.ReadBool('COUNSEL', 'GB_JON_FIXEDPIN', GB_365System);
  if GB_JON_FIXEDPIN then rbFexedPinY.Checked := True
                     else rbFexedPinN.Checked := True;

  GB_JON_FIXMODE := GS_EnvFile.ReadBool('COUNSEL', 'GB_JON_FIXMODE', True);
  if GB_JON_FIXMODE then rbFixModeA.Checked := True
                    else rbFixModeB.Checked := True;

  GB_JON_VIEWWKIFNO := GS_EnvFile.ReadBool('COUNSEL', 'GB_JON_VIEWWKIFNO', False);
  cxChkViewWkInfo.Checked := GB_JON_VIEWWKIFNO;

  GB_JON_WKCALLPOPUP := GS_EnvFile.ReadBool('COUNSEL', 'GB_JON_WKCALLPOPUP', False);
  cxChkWkCallPopup.Checked := GB_JON_WKCALLPOPUP;

  GB_JON_NOSMSCONFIRM := GS_EnvFile.ReadBool('COUNSEL', 'GB_JON_NOSMSCONFIRM', False);
  cxChkNoSMSConfirm.Checked := GB_JON_NOSMSCONFIRM;

	GB_JON012_DESTSEARCH_USE := GS_EnvFile.ReadBool('COUNSEL', 'GB_JON012_DESTSEARCH_USE', False);
	chkJon012DestSearchUSE.Checked := GB_JON012_DESTSEARCH_USE;

	GB_ResToJoin_USE := GS_EnvFile.ReadBool('COUNSEL', 'GB_ResToJoin_USE', False);
	chk_ResToJoin.Checked := GB_ResToJoin_USE;

	GB_PostPayNoUpdate := GS_EnvFile.ReadBool('COUNSEL', 'GB_PostPayNoUpdate', False);
	chk_PostPayNoUpdate.Checked := GB_PostPayNoUpdate;

	GS_JON_AutoStandBy := GS_EnvFile.ReadBool('Confirm', 'AutoStandBy', False);
	chkAutoStandBy.Checked := GS_JON_AutoStandBy;

  GB_JON01_APPORDER := GS_EnvFile.ReadBool('Confirm', 'AppOrder', True);
  rb_AppOrder.Tag := 99;
  if GB_JON01_APPORDER then rb_AppOrder.Checked := True
                       else rb_NewOrder.Checked := True;
  rb_AppOrder.Tag := 0;

  // 상담원 메인/서브 사용여부 2011.06.21
  GT_PRG_DUAL_MAIN := StrToIntDef(GS_EnvFile.ReadString('GER', 'PRG_DUAL_MAIN', '0'), 0);
  if GT_PRG_DUAL_MAIN = 0 then
    rb_prg_Main.Checked := True
  else
    rb_prg_Sub.Checked := True;

  // 2010.08.10 상태 정렬 관련 수정 lej
  if GS_EnvFile.SectionExists('StatusSort') then
  begin
    lb_stat.Items.Clear;
    GS_EnvFile.ReadSection('StatusSort', lb_stat.Items); // ini 설정대로 상태순서 set

    if lb_stat.Items.IndexOf('운행') < 0 then
    begin
      lb_stat.Items.Add('운행');
    end;
  end;

  if Not GS_EnvFile.SectionExists('FastFindSort') then pInitFastFind;

  // 20120801 빠른검색 순서 설정  LYB
  if GS_EnvFile.SectionExists('FastFindSort') then
  begin
    lb_FastFind.Items.Clear;
    GS_EnvFile.ReadSection('FastFindSort', lb_FastFind.Items);
    // ini 설정대로 상태순서 set
  end;

  if lb_FastFind.Items.Count > 20 then
  begin
    j := 0;
    lb_FastFindOut.Items.Clear;
    for i := 20 to lb_FastFind.Items.Count - 1 do
    begin
      GS_EnvFile.WriteString('FastFindSortOut', lb_FastFind.Items.Strings[i], IntToStr(j));
      Inc(j);
    end;

    for i := lb_FastFind.Items.Count - 1 downto 20 do
    begin
      lb_FastFind.Items.Delete(i);
    end;
  end;

  if GS_EnvFile.SectionExists('FastFindSortOut') then
  begin
    lb_FastFindOut.Items.Clear;
    GS_EnvFile.ReadSection('FastFindSortOut', lb_FastFindOut.Items);
    // ini 설정대로 상태순서 set
  end;

  bFind21 := False;
  bFind22 := False;
  bFind23 := False;
  for i := 0 to lb_FastFind.Items.Count - 1 do
  begin
    if lb_FastFind.Items.Strings[i] = '경과시간(분단위)' then bFind21 := True;
    if lb_FastFind.Items.Strings[i] = '접수시간(분단위)' then bFind22 := True;
    if lb_FastFind.Items.Strings[i] = '수수료'           then bFind23 := True;
    if lb_FastFind.Items.Strings[i] = '출발동'           then bFind24 := True;
		if lb_FastFind.Items.Strings[i] = '부서명'           then bFind25 := True;
   	if lb_FastFind.Items.Strings[i] = '카드승인'         then bFind26 := True;
  end;

  for i := 0 to lb_FastFindOut.Items.Count - 1 do
  begin
		if lb_FastFindOut.Items.Strings[i] = '경과시간(분단위)' then bFind21 := True;
    if lb_FastFindOut.Items.Strings[i] = '접수시간(분단위)' then bFind22 := True;
    if lb_FastFindOut.Items.Strings[i] = '수수료'           then bFind23 := True;
    if lb_FastFindOut.Items.Strings[i] = '출발동'           then bFind24 := True;
    if lb_FastFindOut.Items.Strings[i] = '부서명'           then bFind25 := True;
   	if lb_FastFindOut.Items.Strings[i] = '카드승인'         then bFind26 := True;
  end;

  if Not bFind21 then lb_FastFindOut.Items.Add('경과시간(분단위)');
  if Not bFind22 then lb_FastFindOut.Items.Add('접수시간(분단위)');
  if Not bFind23 then lb_FastFindOut.Items.Add('수수료');
  if Not bFind24 then lb_FastFindOut.Items.Add('출발동');
	if Not bFind25 then lb_FastFindOut.Items.Add('부서명');
	if Not bFind26 then lb_FastFindOut.Items.Add('카드승인');

	GS_JON03Mileage     := GS_EnvFile.ReadBool('COUNSEL', 'JON03Mileage'    , False);  // [접수현황] 마일리지 옵션추가
	GS_JON03CMPSupportY := GS_EnvFile.ReadBool('COUNSEL', 'JON03CMPSupportY', False);  // [접수현황] 지원금 옵션추가
	GS_JON03CMPSupportN := GS_EnvFile.ReadBool('COUNSEL', 'JON03CMPSupportN', False);  // [접수현황] 지원금제외 옵션추가

	chk_Mileage.Checked     := GS_JON03Mileage    ;
	chk_CMPSupportY.Checked := GS_JON03CMPSupportY;
	chk_CMPSupportN.Checked := GS_JON03CMPSupportN;

	GS_ADD_RING_PATH := GS_EnvFile.ReadString('COUNSEL', 'GS_ADD_RING_PATH', '');
  if FileExists(GS_ADD_RING_PATH) then
  begin
    chkJONAddRing.Enabled := True;
    ed_AddRing.Text := GS_ADD_RING_PATH;
    GS_ADD_RING_YN := GS_EnvFile.ReadBool('COUNSEL', 'GS_ADD_RING', False);
    chkJONAddRing.Checked := GS_ADD_RING_YN;
  end else
  begin
    chkJONAddRing.Enabled := False;
    GS_ADD_RING_YN := False;
    GS_EnvFile.WriteBool('COUNSEL', 'GS_ADD_RING', GS_ADD_RING_YN);
    GS_EnvFile.WriteString('COUNSEL', 'GS_ADD_RING_PATH', '');
  end;

  GS_DEL_RING_PATH := GS_EnvFile.ReadString('COUNSEL', 'GS_DEL_RING_PATH', '');
  if FileExists(GS_DEL_RING_PATH) then
  begin
    ed_DelRing.Text := GS_DEL_RING_PATH;
    GS_DEL_RING_YN := GS_EnvFile.ReadBool('COUNSEL', 'GS_DEL_RING', False);
    chkJONDelRing.Checked := GS_DEL_RING_YN;
    chkJONDelRing.Enabled := True;
  end else
  begin
    GS_DEL_RING_YN := False;
    GS_EnvFile.WriteBool('COUNSEL', 'GS_DEL_RING', GS_DEL_RING_YN);
    GS_EnvFile.WriteString('COUNSEL', 'GS_DEL_RING_PATH', '');
    chkJONDelRing.Enabled := False
  end;

	GS_JON_FILECALLINGUSE := GS_EnvFile.ReadBool('Confirm', 'FileCallingUse',  False); // 2013.11.1 cid.info 파일 사용 KHS
	chkFileCallingUse.Checked := GS_JON_FILECALLINGUSE;

  chkOrderColor.Checked := gJONOrderColor.Use;

  if gJONOrderColor.Gubun = 0 then cxRadioButton9.Checked := True else
  if gJONOrderColor.Gubun = 1 then cxRadioButton10.Checked := True;

  if gJONOrderColor.ColorG = 0 then cxRadioButton33.Checked := True else
  if gJONOrderColor.ColorG = 1 then cxRadioButton34.Checked := True;

  lblOrderColor1.Style.Color := gJONOrderColor.Step1.Color;
	cbbOrderTime1.Text := IntToStr(gJONOrderColor.Step1.Time) + '분 후';
	chkOrderUse1.Checked := gJONOrderColor.Step1.Use;

  lblOrderColor2.Style.Color := gJONOrderColor.Step2.Color;
  cbbOrderTime2.Text := IntToStr(gJONOrderColor.Step2.Time) + '분 후';
  chkOrderUse2.Checked := gJONOrderColor.Step2.Use;

  lblOrderColor3.Style.Color := gJONOrderColor.Step3.Color;
	cbbOrderTime3.Text := IntToStr(gJONOrderColor.Step3.Time) + '분 후';
	chkOrderUse3.Checked := gJONOrderColor.Step3.Use;

	lblOrderColor4.Style.Color := gJONOrderColor.Step4.Color;
	cbbOrderTime4.Text := IntToStr(gJONOrderColor.Step4.Time) + '분 후';
	chkOrderUse4.Checked := gJONOrderColor.Step4.Use;

	gJONOrderBell.Use := GS_EnvFile.ReadBool('OrderColor', 'OrderBell',  False);
	chkOrderBellUse.Checked := gJONOrderBell.Use;
	gJONOrderBell.Time   := GS_EnvFile.ReadInteger('OrderColor', 'OrderBellTime', -1);
	cbOrderBellTime.Text := IntToStr(gJONOrderBell.Time) + '분';
	gJONOrderBell.Path   := GS_EnvFile.ReadString('OrderColor', 'OrderBellPath', '');
	edtOrderBellFile.Text := gJONOrderBell.Path;

	cb_Duration.Tag := 99;
	case GS_Duration of
		20 : cb_Duration.ItemIndex := 0;
		30 : cb_Duration.ItemIndex := 1;
		40 : cb_Duration.ItemIndex := 2;
		50 : cb_Duration.ItemIndex := 3;
		60 : cb_Duration.ItemIndex := 4;
	end;
	cb_Duration.Tag := 0;

  CbAcceptMemo1.Checked := gJONAcceptMemo.Use;
  Ed_AcceptMemo1.Text := gJONAcceptMemo.Memo;

	chkJON01_AUTOLOCK.Checked := GS_START_AUTOLOCK;
	chkJON01_ENDAUTOLOCK.Checked := GS_END_AUTOLOCK;

  // cbbJONFastFind1.Properties.Items.Clear;
  // for I := 0 to Length(KeyTypeValue) - 1 do
  // if KeyTypeValue[I].Value <> '법인명' then
  // cbbJONFastFind1.Properties.Items.Add(KeyTypeValue[I].Value);
  // cbbJONFastFind2.Properties.Items.Assign(cbbJONFastFind1.Properties.Items);
  // cbbJONFastFind3.Properties.Items.Assign(cbbJONFastFind1.Properties.Items);
  // cbbJONFastFind4.Properties.Items.Assign(cbbJONFastFind1.Properties.Items);
  //
  // cbbJONFastFind1.Text    := gJONFastFind.Key1;
  // cbbJONFastFind2.Text    := gJONFastFind.Key2;
  // cbbJONFastFind3.Text    := gJONFastFind.Key3;
  // cbbJONFastFind4.Text    := gJONFastFind.Key4;

  chk_LevelColor.Checked := GS_LevelColor;

	GS_JON_FONTSIZE := GS_EnvFile.ReadInteger('Confirm', 'FontSize', 9);
	GS_JON_GRIDHEIGHT := GS_JON_FONTSIZE + 14;
	cxCbFontSize.Text := IntToSTr(GS_JON_FONTSIZE);
	lblFont.Style.Font.Size := GS_JON_FONTSIZE;

	GS_JON_FONTBOLD := GS_EnvFile.ReadBool('Confirm', 'FontBold', False);
	chk_FontBold.Checked := GS_JON_FONTBOLD;

	proc_SetBRcolor;
end;

procedure TFrm_SETA1.proc_BRList_BubHu;
var
	i, iRow: Integer;
begin
	try
    Screen.Cursor := crHourGlass;
		cxBubHuList.DataController.SetRecordCount(0);
		cxBubHuList.BeginUpdate;
		if (GT_USERIF.Family = 'y') And (GT_USERIF.LV = '60') then
		begin
			for i := 0 to scb_FamilyBrCode.Count - 1 do
			begin
				iRow := cxBubHuList.DataController.AppendRecord;
				// 1 Record 추가
				Application.ProcessMessages;

				SetGridData(cxBubHuList, iRow, 0, False);
				SetGridData(cxBubHuList, iRow, 1, scb_FamilyBrName[i]);
				SetGridData(cxBubHuList, iRow, 2, '');
				SetGridData(cxBubHuList, iRow, 3, scb_FamilyBrCode[i]);
			end;
		end else
		begin
			for i := 0 to scb_BranchCode.Count - 1 do
			begin
				iRow := cxBubHuList.DataController.AppendRecord;
				// 1 Record 추가
				Application.ProcessMessages;

				SetGridData(cxBubHuList, iRow, 0, False);
				SetGridData(cxBubHuList, iRow, 1, scb_BranchName[i]);
				SetGridData(cxBubHuList, iRow, 2, '');
				SetGridData(cxBubHuList, iRow, 3, scb_BranchCode[i]);
			end;
		end;
		cxBubHuList.EndUpdate;
		for i := 0 to cxBubHuList.DataController.RowCount - 1 do
		begin
			cxBubHuList.DataController.Values[i, 0] := 0;
		end;
		for i := 0 to GS_BubHu_LIST.Count - 1 do
		begin
			iRow := cxBubHuList.DataController.FindRecordIndexByText(0, 3, GS_BubHu_LIST[i], True, False, True);
			if iRow > -1 then
			begin
				cxBubHuList.DataController.Values[iRow, 0] := True;
				cxBubHuList.DataController.Values[iRow, 2] := '법후';
			end;
		end;

		Screen.Cursor := crDefault;
	except
		on e: exception do
		begin
			Screen.Cursor := crDefault;
			Assert(False, e.Message);
		end;
	end;
end;

procedure TFrm_SETA1.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_SETA1.FormDestroy(Sender: TObject);
begin
  Frm_SETA1 := Nil;
end;

procedure TFrm_SETA1.FormShow(Sender: TObject);
Var iTag, i : Integer;
begin
  fSetFont(Frm_SETA1, GS_FONTNAME);

  // XE3에서는 메뉴 숨김
  if GS_APPNAME = '콜마너 XE 3' then
  begin
    GB_FIRSTMODE := False;   // XE3는 다크모드 선택이 없음
    for i := 0 to cxTreeView1.Items.Count - 1 do
    begin
      if (cxTreeView1.Items[i].SelectedIndex = 906) then
      begin
        cxTreeView1.Items[i].Delete;
        Break;
      end;
    end;
  end;

  if GB_FIRSTMODE then iTag := 906
                  else iTag := GS_EnvFile.ReadInteger('GER', 'SETIDX', 0);
  if iTag <> 0 then SetTreeSelItem(iTag);
end;

procedure TFrm_SETA1.imgAModeClick(Sender: TObject);
begin
  rbAMode.Checked := True;
  rbAMode.Font.Style := [fsBold];
  rbBMode.Font.Style := [];
end;

procedure TFrm_SETA1.imgBModeClick(Sender: TObject);
begin
  rbBMode.Checked := True;
  rbBMode.Font.Style := [fsBold];
  rbAMode.Font.Style := [];
end;

procedure TFrm_SETA1.imToolBarMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SETA1.lblNmlTRSType1Step1DblClick(Sender: TObject);
begin
  ColorDialog1.Color := TcxLabel(Sender).Style.Color;
  if (ColorDialog1.Execute) then
  begin
    TcxLabel(Sender).Style.Color := ColorDialog1.Color;
    changeTRSPenaltyType1(Sender);
  end;
end;

procedure TFrm_SETA1.lblNmlTRSType2Step1Click(Sender: TObject);
begin
  ColorDialog1.Color := TcxLabel(Sender).Style.Color;
  if (ColorDialog1.Execute) then
  begin
    TcxLabel(Sender).Style.Color := ColorDialog1.Color;
    changeTRSPenaltyType2(Sender);
  end;
end;

procedure TFrm_SETA1.lblOrderColor1DblClick(Sender: TObject);
begin
  ColorDialog1.Color := TcxLabel(Sender).Style.Color;
  if (ColorDialog1.Execute) then
  begin
    TcxLabel(Sender).Style.Color := ColorDialog1.Color;
    if TcxLabel(Sender) = lblOrderColor1 then
    begin
      gJONOrderColor.Step1.Color := ColorDialog1.Color;
      GS_EnvFile.WriteInteger('OrderColor', 'Step1Color',
        ColorToRGB(gJONOrderColor.Step1.Color));
    end else
    if TcxLabel(Sender) = lblOrderColor2 then
    begin
      gJONOrderColor.Step2.Color := ColorDialog1.Color;
      GS_EnvFile.WriteInteger('OrderColor', 'Step2Color',
        ColorToRGB(gJONOrderColor.Step2.Color));
    end else
    if TcxLabel(Sender) = lblOrderColor3 then
    begin
      gJONOrderColor.Step3.Color := ColorDialog1.Color;
      GS_EnvFile.WriteInteger('OrderColor', 'Step3Color',
        ColorToRGB(gJONOrderColor.Step3.Color));
    end else
    if TcxLabel(Sender) = lblOrderColor4 then
    begin
      gJONOrderColor.Step4.Color := ColorDialog1.Color;
      GS_EnvFile.WriteInteger('OrderColor', 'Step4Color',
        ColorToRGB(gJONOrderColor.Step4.Color));
    end;
  end;
end;

procedure TFrm_SETA1.lb_FastFindDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  Num1, Num2: Integer;
  Point1, Point2: TPoint;
  cxLb, cxLbOut : TcxListBox;
begin
  try
    cxLb := Sender as TcxListBox;
    cxLbOut := GetDragSourceListBox(Source);

    if cxLbOut = Nil then Exit;

    if cxLbOut.Name = 'lb_FastFind' then
    begin
      Point1.X:=NumX;
      Point1.Y:=NumY;
      Point2.X:=X;
      Point2.Y:=Y;
      with cxLb do
      begin
        Num2 := ItemAtPos(Point1,True);
        Num1 := ItemAtPos(Point2,True);
        Items.Move(Num2, Num1);

        ItemIndex := Num1;
      end;
    end else
    if cxLbOut.Name = 'lb_FastFindOut' then
    begin
      Point1.X:=NumX;
      Point1.Y:=NumY;
      Point2.X:=X;
      Point2.Y:=Y;

      Num2 := cxLbOut.ItemAtPos(Point1,True);
      Num1 := cxLb.ItemAtPos(Point2,True);

      cxLb.Items.Insert(Num1, cxLbOut.Items.Strings[Num2]);
      cxLbOut.Items.Delete(Num2);
    end;
  except

  end;
end;

function TFrm_SETA1.GetDragSourceListBox(Source: TObject): TcxListBox;
begin
  if (TDragControlObject(Source).Control is TcxListBox) then
     Result := TcxListBox(TDragControlObject(Source).Control)
  else
     Result := nil;
end;

procedure TFrm_SETA1.lb_FastFindDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if Source = lb_FastFind then Accept:=True;
end;

procedure TFrm_SETA1.lb_FastFindMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  NumY := Y;
  NumX := X;
end;

procedure TFrm_SETA1.lb_FastFindOutDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  Num1, Num2: Integer;
  Point1, Point2: TPoint;
  cxLb, cxLbOut : TcxListBox;
begin
  try
    cxLbOut := Sender as TcxListBox;
    cxLb := GetDragSourceListBox(Source);

    if cxLb = Nil then Exit;

    if cxLb.Name = 'lb_FastFindOut' then
    begin
      Point1.X:=NumX;
      Point1.Y:=NumY;
      Point2.X:=X;
      Point2.Y:=Y;
      with cxLb do
      begin
        Num2 := ItemAtPos(Point1,True);
        Num1 := ItemAtPos(Point2,True);
        Items.Move(Num2, Num1);

        ItemIndex := Num1;
      end;
    end else
    if cxLb.Name = 'lb_FastFind' then
    begin
      Point1.X:=NumX;
      Point1.Y:=NumY;
      Point2.X:=X;
      Point2.Y:=Y;

      Num2 := cxLb.ItemAtPos(Point1,True);
      Num1 := cxLbOut.ItemAtPos(Point2,True);

      cxLbOut.Items.Insert(Num1, cxLb.Items.Strings[Num2]);
      cxLb.Items.Delete(Num2);
    end;
  except

  end;
end;

procedure TFrm_SETA1.lb_FastFindOutDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source = lb_FastFindOut then Accept:=True;
end;

procedure TFrm_SETA1.lb_PayGubun1Click(Sender: TObject);
begin
	ColorDialog1.Color := TPanel(Sender).Color;
	if (ColorDialog1.Execute) then
	begin
		case TcxLabel(Sender).Tag of
			0 :
				begin
					SetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun1', ColorToString(ColorDialog1.Color));
					lb_PayGubun1.Style.TextColor := ColorDialog1.Color;
					GS_COUNSEL_PayGubun1 := ColorDialog1.Color;
				end;
			1 :
				begin
					SetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun2', ColorToString(ColorDialog1.Color));
					lb_PayGubun2.Style.TextColor := ColorDialog1.Color;
					GS_COUNSEL_PayGubun2 := ColorDialog1.Color;
				end;
			2 :
				begin
					SetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun3', ColorToString(ColorDialog1.Color));
					lb_PayGubun3.Style.TextColor := ColorDialog1.Color;
					GS_COUNSEL_PayGubun3 := ColorDialog1.Color;
				end;
			3 :
				begin
					SetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun4', ColorToString(ColorDialog1.Color));
					lb_PayGubun4.Style.TextColor := ColorDialog1.Color;
					GS_COUNSEL_PayGubun4 := ColorDialog1.Color;
				end;
			4 :
				begin
					SetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun5', ColorToString(ColorDialog1.Color));
					lb_PayGubun5.Style.TextColor := ColorDialog1.Color;
					GS_COUNSEL_PayGubun5 := ColorDialog1.Color;
				end;
		end;
	end;
end;

procedure TFrm_SETA1.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SETA1.proc_SetBRcolor;
var
  i, iRow: Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    if GS_JON_BRCOLOR_SET then
    begin
      cxCheckBox2.Checked := GS_JON_BRCOLOR_SET;
      cxBRListSetColor.DataController.SetRecordCount(0);
      cxBRListSetColor.BeginUpdate;
      if (GT_USERIF.Family = 'y') And (GT_USERIF.LV = '60') then
      begin
        for i := 0 to scb_FamilyBrCode.Count - 1 do
        begin
          iRow := cxBRListSetColor.DataController.AppendRecord;
          // 1 Record 추가
          Application.ProcessMessages;

          SetGridData(cxBRListSetColor, iRow, 0, False);
          SetGridData(cxBRListSetColor, iRow, 1, scb_FamilyBrName[i]);
          SetGridData(cxBRListSetColor, iRow, 2, '');
          SetGridData(cxBRListSetColor, iRow, 3, scb_FamilyBrCode[i]);
          SetGridData(cxBRListSetColor, iRow, 4, GS_EnvFile.ReadString('BR_COLOR', scb_FamilyBrCode[i],  '$00FFFFFF'));
        end;
      end else
      begin
        for i := 0 to scb_BranchCode.Count - 1 do
        begin
          iRow := cxBRListSetColor.DataController.AppendRecord;
          // 1 Record 추가
          Application.ProcessMessages;

          SetGridData(cxBRListSetColor, iRow, 0, False);
          SetGridData(cxBRListSetColor, iRow, 1, scb_BranchName[i]);
          SetGridData(cxBRListSetColor, iRow, 2, '');
          SetGridData(cxBRListSetColor, iRow, 3, scb_BranchCode[i]);
          SetGridData(cxBRListSetColor, iRow, 4, GS_EnvFile.ReadString('BR_COLOR', scb_BranchCode[i], '$00FFFFFF'));
        end;
      end;
      cxBRListSetColor.EndUpdate;
      if GS_JON_BRCOLOR_SET_USE = 1 then
      begin
        for i := 0 to cxBRListSetColor.DataController.RowCount - 1 do
        begin
          cxBRListSetColor.DataController.Values[i, 4] := '$00FFFFFF';
        end;
        for i := 0 to GS_BRCOLOR_LIST.Count - 1 do
        begin
          iRow := cxBRListSetColor.DataController.FindRecordIndexByText(0, 3,
            GS_BRCOLOR_LIST[i], True, False, True);
          if iRow > -1 then
          begin
            if GS_BRCOLOR_LIST.Values[GS_BRCOLOR_LIST[i]] = '' then
              cxBRListSetColor.DataController.Values[iRow, 4] := '$00FFFFFF'
            else
              cxBRListSetColor.DataController.Values[iRow, 4] :=
                GS_BRCOLOR_LIST.Values[GS_BRCOLOR_LIST[i]];
            if cxBRListSetColor.DataController.Values[iRow, 4] <> '$00FFFFFF'
            then
            begin
              cxBRListSetColor.DataController.Values[iRow, 0] := True;
            end;
          end;
        end;
      end else
      begin
        for i := 0 to cxBRListSetColor.DataController.RowCount - 1 do
        begin
          if cxBRListSetColor.DataController.Values[i, 4] <> '$00FFFFFF' then
          begin
            cxBRListSetColor.DataController.Values[i, 0] := True;
          end;
        end;
      end;
      if (GS_JON_BRCOLOR_SET_USE = 1) then
      begin
        RDO_OR_COLOR1.Checked := True;
      end
    end;
    Screen.Cursor := crDefault;
  except
    on e: exception do
    begin
      Screen.Cursor := crDefault;
      Assert(False, e.Message);
    end;
  end;
end;

procedure TFrm_SETA1.RbButton19Click(Sender: TObject);
Var i : Integer;
begin
  if Not rg_charge_ser.Checked then Exit;

  try
    CHARGE_IP := ed_db_sid.Text;
    if Trim(CHARGE_IP) = '' then
    begin
      GMessagebox('IP를 입력하세요',CDMSE);
      ed_db_sid.SetFocus;
      Exit;
    end;

    CHARGE_PORT := StrToIntDef(ed_port.Text, 3306);

    CHARGE_ID := ed_id.Text;
    if Trim(CHARGE_ID) = '' then
    begin
      GMessagebox('ID를 입력하세요',CDMSE);
      ed_id.SetFocus;
      Exit;
    end;

    CHARGE_PW := ed_pw.Text;
    if Trim(CHARGE_PW) = '' then
    begin
      GMessagebox('패스워드를 입력하세요',CDMSE);
      ed_pw.SetFocus;
      Exit;
    end;

    CHARGE_GUBUN := 'S';
    GS_EnvFile.WriteString('CHARGE', 'CH_IP', CHARGE_IP);
    GS_EnvFile.WriteString('CHARGE', 'CH_PORT', IntToStr(CHARGE_PORT));
    GS_EnvFile.WriteString('CHARGE', 'CH_ID', CHARGE_ID);
    GS_EnvFile.WriteString('CHARGE', 'CH_PW', CHARGE_PW);
    GS_EnvFile.WriteString('CHARGE', 'CH_GUBUN', 'S');

    dmCharge.FDConnection1.Connected := False;
    dmCharge.FDConnection1.Params.Clear;
    dmCharge.FDConnection1.Params.Add('DriverID=MySQL');
    dmCharge.FDConnection1.Params.Add('CharacterSet=utf8');
    dmCharge.FDConnection1.Params.Add('Database=Chargedb');
    dmCharge.FDConnection1.Params.Add('Password='+CHARGE_PW);
    dmCharge.FDConnection1.Params.Add('User_name='+CHARGE_ID);
    dmCharge.FDConnection1.Params.Add('PORT='+ inttostr(CHARGE_PORT));
    dmCharge.FDConnection1.Params.Add('Server='+CHARGE_IP);
    dmCharge.FDConnection1.Connected := True;

    // 2011.02.14(부팅없이심야요금제테이블튜닝)
    Try
      SVRPREM_TUN;
    except
    end;

    if dmCharge.FDConnection1.Connected then
    begin
      Frm_Main.pLOCAL_SYNC_CHECK;
      GMessagebox('접속 하였습니다.', cdmsi);
			
      RbButton22.Enabled := True;
			if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE in [0, 2]) then
        btn3.Enabled := True; // DB POI DATA 받아오기
      rb_Local_Both.Enabled := True;
      rb_Local_Data.Enabled := True;
      rb_Local_DB.Enabled := True;

      for i := 0 to JON03_MAX_CNT - 1 do
      begin
        if ( Frm_Main.JON03MNG[i].Use ) And ( Frm_Main.JON03MNG[i].CreateYN ) then
        begin
          if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE in [0,2]) then Frm_Main.Frm_JON03[i].btnMySqlPoiSync.Visible := True
                                                                                            else Frm_Main.Frm_JON03[i].btnMySqlPoiSync.Visible := False;
        end;
      end;
    end else
    begin
      if GS_EXEC_GUBUN = 1 then
      begin
        GS_EnvFile.WriteString('CHARGE', 'CH_GUBUN', 'P');
        CHARGE_GUBUN := 'P';
        GMessagebox('접속 실패 하였습니다.', cdmsE);
        RbButton22.Enabled := False;
        btn3.Enabled := False; // DB POI DATA 받아오기
        rb_Local_Both.Enabled := False;
        rb_Local_Data.Enabled := False;
        rb_Local_DB.Enabled := False;
      end;
    end;
  except
    GMessagebox('접속 실패 하였습니다.', cdmsE);
    GS_EnvFile.WriteString('CHARGE', 'CH_GUBUN', 'P');
    CHARGE_GUBUN := 'P';
    dmCharge.FDConnection1.Connected := False;
  end;
end;

procedure TFrm_SETA1.RbButton22Click(Sender: TObject);
var
  sQuery: string;
begin
  Try
		if (rg_charge_ser.Checked) or (rb_OnLineServer.Checked) then
    begin
      Edt_PW.Text := '';
      Edt_PPw.Text := '';
      Edt_APw.Text := '';
      Edt_BPw.Text := '';

      Try
        SVRPREM_Local;
				sQuery := 'Select * from CDMS_LOCAL_MASTER';
				dmCharge.proc_mysql_init('select');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.Open;
      except
				GMessagebox('접속 실패 하였습니다.', CDMSE);
        GS_EnvFile.WriteString('CHARGE', 'CH_GUBUN', 'P');
				CHARGE_GUBUN := 'P';
        dmCharge.FDConnection1.Connected := False;
        Exit;
      end;
      if dmCharge.FDQuery1.eof then
      begin
				GMessagebox('인증번호가 설정되지 않았습니다.' + #13#10 +
					'본사관리자 이상의 사용자가 설정하여야 합니다', CDMSE);
        if GT_USERIF.LV < '60' then
          Exit;

        btn4.Caption := '설 정';
        btn6.Enabled := False;

        Edt_RePW.Visible := True;
        cxLabel16.Visible := True;
        Shape10.Visible := True;
        btn4.Top := 79;
        btn5.Top := 79;
        btn6.Top := 79;

        Pnl_LocalData.Height := 114;
      end else
      begin
        btn4.Caption := '확  인';
        if GT_USERIF.LV < '60' then
          btn6.Enabled := False
        else
          btn6.Enabled := True;

        Edt_RePW.Visible := False;
        cxLabel16.Visible := False;
        Shape10.Visible := False;

        Pnl_LocalData.Height := 114;
      end;

	  	Pnl_LocalData.Left := (Width - Pnl_LocalData.Width) div 2;
  		Pnl_LocalData.top := (Height - Pnl_LocalData.Height) div 2;
      Pnl_LocalData.BringToFront;
      Pnl_LocalData.Visible := True;
      Edt_PW.SetFocus;
    end else
    if rg_charge_pc.Checked then
    begin
      if (not Assigned(Frm_SET06)) Or (Frm_SET06 = Nil) then
        Frm_SET06 := TFrm_SET06.Create(nil);
      Frm_SET06.cxTextEdit2.Enabled := False;
      Frm_SET06.cxButton6.Enabled := False;
      Frm_SET06.cxButton12.Enabled := False;
      Frm_SET06.cxTextEdit3.Enabled := False;
      Frm_SET06.cxTextEdit4.Enabled := False;
      Frm_SET06.cxTextEdit5.Enabled := False;
      Frm_SET06.cxTextEdit6.Enabled := False;
      Frm_SET06.cxTextEdit7.Enabled := False;
      Frm_SET06.cxTextEdit10.Enabled := False;
      Frm_SET06.cxButton9.Enabled := False;
      Frm_SET06.cxButton10.Enabled := False;
      Frm_SET06.btn4.Enabled := False;
      Frm_SET06.btn2.Enabled := False;
      Frm_SET06.btn3.Enabled := False;
      Frm_SET06.btn5.Enabled := False;
      Frm_SET06.ctxGrid.Enabled := True;;
      Frm_SET06.cxGrid1.Enabled := False;
      Frm_SET06.ShowModal;
    end;
  except
  end;
end;

procedure TFrm_SETA1.rbChargeType1Click(Sender: TObject);
begin
	GS_ALL_SEVEN := False;
	pnl_TypeB.visible := GS_ALL_SEVEN;
	GS_All7Type2 := GS_ALL_SEVEN;
	Frm_Main.Menu1220.visible := GS_All7Type2;
	GS_EnvFile.WriteBool('CHARGE', 'CH_TYPE2', GS_ALL_SEVEN);
end;

procedure TFrm_SETA1.rbChargeType2Click(Sender: TObject);
begin
	GS_ALL_SEVEN := True;
	pnl_TypeB.visible := GS_ALL_SEVEN;
	GS_All7Type2 := GS_ALL_SEVEN;
	Frm_Main.Menu1220.visible := GS_All7Type2;
	GS_EnvFile.WriteBool('CHARGE', 'CH_TYPE2', GS_ALL_SEVEN);
end;

procedure TFrm_SETA1.RbCheckBox1Click(Sender: TObject);
begin
  GT_DEFAULT_ST := IfThen(RbCheckBox1.Checked, 1, 0);
  GS_EnvFile.WriteString('CHARGE', 'GT_DEFAULT_ST', IntToStr(GT_DEFAULT_ST));
end;

procedure TFrm_SETA1.rbchkMainTelRateClick(Sender: TObject);
begin
  // 대표번호 별 등록 된 기본요금 값을 고정으로 사용할지의 여부를 저장한다.
  // 추가 : 2007-11-23 choi do soon
  gsMyMainTelUse := IfThen(rbchkMainTelRate.Checked, 'TRUE', 'FALSE');
  GS_EnvFile.WriteString('MYMAINTELUSE', 'USEYN', gsMyMainTelUse);
  if rbchkMainTelRate.Checked then
  begin
    PnlchkMainTelRate.Enabled := True;
    rbMainTelRateYClick(rbMainTelRateY); // 20121101  LYB
    chkOrderChargeCheck.Enabled := True;
  end
  else
    PnlchkMainTelRate.Enabled := False;
end;

procedure TFrm_SETA1.rbchk_msg_closeClick(Sender: TObject);
var sTmp : string;
begin
	if rbchk_msg_close.Checked then
	begin
		edt_msg_close.Enabled := True;
		btn_msg_close.Enabled := True;
		GS_EnvFile.WriteString('GER', 'Message_Close', '1');
		if edt_msg_close.CanFocus then edt_msg_close.SetFocus;
		sTmp := GS_EnvFile.ReadString('GER', 'Time_Close', '2');
		if Trim(sTmp) = '' then edt_msg_close.Text := '2' else edt_msg_close.Text := sTmp;
	end else
	begin
//		cb_msg_close.Enabled := False;
//		cb_msg_close.Text := '';
		edt_msg_close.Enabled := False;
		btn_msg_close.Enabled := False;
		edt_msg_close.Text := '';
		GS_EnvFile.WriteString('GER', 'Message_Close', '0');
//		GS_EnvFile.WriteString('GER', 'Time_Close', '');
	end;
end;

procedure TFrm_SETA1.rbDriverChargeLocalUseYClick(Sender: TObject);
begin
  if rbDriverChargeLocalUseY.Checked then
  begin
    cbDriverChargeLocalValue.Enabled := True;
    GS_JON_DRIVERCHARGELOCAL := cbDriverChargeLocalValue.Text;

    Area_Charge_YN := 'y';
  end else
  begin
    cbDriverChargeLocalValue.Enabled := False;
    GS_JON_DRIVERCHARGELOCAL := 'n';
  end;

  GS_EnvFile.WriteString('CHARGE', 'JON_DRIVERCHARGELOCAL', GS_JON_DRIVERCHARGELOCAL);
  pDriverChargeLocalSetting;
end;

procedure TFrm_SETA1.pDriverChargeLocalSetting;
Var i, idx : Integer;
begin
  try
    if GS_JON_DRIVERCHARGELOCAL <> 'n' then
    begin
			for i := 0 to JON_MAX_CNT - 1 do
			begin
				if Frm_Main.JON01MNG[i].CreateYN then
				begin
          Frm_Main.Frm_JON01N[i].cxDriverCharge.Left := 234;
          Frm_Main.Frm_JON01N[i].cxDriverCharge.Width := 48;
          Frm_Main.Frm_JON01N[i].cbDriverChargeLocalValue.Visible := True;
          idx := cbDriverChargeLocalValue.Properties.Items.IndexOf(GS_JON_DRIVERCHARGELOCAL);
          if idx >= 0 then
          begin
            Frm_Main.Frm_JON01N[i].cbDriverChargeLocalValue.ItemIndex := idx;
          end;

          Frm_Main.Frm_JON01N[i].LbDriverCharge.Visible := True;
          if Area_Edit_Charge_YN = 'y' then
          begin
            Frm_Main.Frm_JON01N[i].cxDriverCharge.Properties.ReadOnly := False;
            Frm_Main.Frm_JON01N[i].cxDriverCharge.Visible := True;
          end else
          begin
            Frm_Main.Frm_JON01N[i].cxDriverCharge.Properties.ReadOnly := True;
            Frm_Main.Frm_JON01N[i].cxDriverCharge.Visible := True;
          end;

          Frm_Main.Frm_JON01N[i].cbbPayMethod.Left := 281;
          Frm_Main.Frm_JON01N[i].cbbPayMethod.Width := 84;

          Frm_Main.Frm_JON01N[i].cbbPostTime.Left  := 365;
          Frm_Main.Frm_JON01N[i].cbbPostTime.Width := 113;
        end;
      end;
    end else
    begin
			for i := 0 to JON_MAX_CNT - 1 do
			begin
				if Frm_Main.JON01MNG[i].CreateYN then
				begin
          Frm_Main.Frm_JON01N[i].cbDriverChargeLocalValue.Visible := False;
          Frm_Main.Frm_JON01N[i].cxDriverCharge.Left := 193;
          Frm_Main.Frm_JON01N[i].cxDriverCharge.Width := 89;
        end;
      end;
    end;
  except

  end;
end;

procedure TFrm_SETA1.rbFexedPinNClick(Sender: TObject);
begin
  GB_JON_FIXEDPIN := rbFexedPinY.Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GB_JON_FIXEDPIN', GB_JON_FIXEDPIN);
end;

procedure TFrm_SETA1.rbFixModeAClick(Sender: TObject);
begin
  GB_JON_FIXMODE := rbFixModeA.Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'GB_JON_FIXMODE', GB_JON_FIXMODE);
end;

procedure TFrm_SETA1.rbMainTelRateYClick(Sender: TObject);
begin
  // 대표번호 별 등록 된 기본요금 값의 옵션을 분리 2012-06-18 LYB
  if rbMainTelRateY.Checked then
    gsMyMainTelUseYN := 'Y'
  else
  begin
    gsMyMainTelUseYN := 'N';
    rbRateRemarkMaintain.Checked := False;
    // 20121101  LYB 무조건변경안됨.. -> 복수콜입력시 요금 해제
    rbRateRemarkMaintainClick(rbRateRemarkMaintain);
  end;
  GS_EnvFile.WriteString('MYMAINTELUSE', 'OPTYN', gsMyMainTelUseYN);
end;

procedure TFrm_SETA1.rbNmlInputPayTypeNoneClick(Sender: TObject);
begin
  GS_WKCASH_PAYTYPE_DEFAULT := TcxRadioButton(Sender).Caption;
  GS_EnvFile.WriteString('WKCASH_DEFAULT', 'INPUT_PAYTYPE', GS_WKCASH_PAYTYPE_DEFAULT);
end;

procedure TFrm_SETA1.rbNmlInputTypeNoneClick(Sender: TObject);
begin
  GS_WKCASH_TYPE_DEFAULT := TcxRadioButton(Sender).Caption;
  GS_EnvFile.WriteString('WKCASH_DEFAULT', 'INPUT_TYPE', GS_WKCASH_TYPE_DEFAULT);
end;

procedure TFrm_SETA1.rbNmlShopCallCenterNClick(Sender: TObject);
begin
  GB_SHOPTYPE_CALLCENTER := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteInteger('COUNSEL', 'ShopTypeCheck', GB_SHOPTYPE_CALLCENTER);
end;

procedure TFrm_SETA1.rbNmlXls2007Click(Sender: TObject);
begin
  if rbNmlXls2007.Checked then
    GS_XLS_VERSION := xv2007Over
  else
    GS_XLS_VERSION := xv2003Under;
  GS_EnvFile.WriteInteger('GER', 'XlsVer', Integer(GS_XLS_VERSION));
end;

procedure TFrm_SETA1.RbRadioButton1Click(Sender: TObject);
begin
  GT_MOUSE_HINT := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteString('MOUSE_OVER', 'MOUSE_OVER', IntToStr(GT_MOUSE_HINT));
end;

procedure TFrm_SETA1.RbRadioButton3Click(Sender: TObject);
begin
  GT_WK_HINT := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteString('MOUSE_OVER', 'WK_HINT', IntToStr(GT_WK_HINT));
end;

procedure TFrm_SETA1.rbRateRemarkMaintainClick(Sender: TObject);
begin
  // 복수콜 입력시 요금과 적요란에 값을 유지시킬지 여부를 저장한다.
  // 추가 : 2007-11-23 choi do soon
  gsMyRateRemarkMaintain := IfThen(rbRateRemarkMaintain.Checked, 'TRUE', 'FALSE');
  GS_EnvFile.WriteString('MYRREMARKMAT', 'USEYN', gsMyRateRemarkMaintain);

  if gsMyRateRemarkMaintain = 'TRUE' then
  // 20121101  LYB 복수콜입력시 요금.. -> 무조건변경안됨 해제
  begin
    rbMainTelRateY.Checked := True;
    rbMainTelRateYClick(rbMainTelRateY);
  end;
end;

procedure TFrm_SETA1.rbRoadType1Click(Sender: TObject);
begin
  GT_DISTANCE_ROADTYPE := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteString('CHARGE', 'GT_DISTANCE_ROADTYPE', IntToStr(GT_DISTANCE_ROADTYPE));
end;

procedure TFrm_SETA1.rbRouteType1Click(Sender: TObject);
begin
  GT_DISTANCE_ROUTETYPE := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteString('CHARGE', 'GT_DISTANCE_ROUTETYPE', IntToStr(GT_DISTANCE_ROUTETYPE));
end;

procedure TFrm_SETA1.rbRSSvr1Click(Sender: TObject);
begin
  GT_DISTANCE_SVR := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteString('CHARGE', 'SERVER', IntToStr(GT_DISTANCE_SVR));
end;

procedure TFrm_SETA1.rbTollType1Click(Sender: TObject);
begin
  GT_DISTANCE_TOLLTYPE := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteString('CHARGE', 'GT_DISTANCE_TOLLTYPE', IntToStr(GT_DISTANCE_TOLLTYPE));
end;

procedure TFrm_SETA1.rb_AppOrderClick(Sender: TObject);
begin
   if rb_AppOrder.Tag = 99 then exit;
   if rb_AppOrder.Checked then GB_JON01_APPORDER := True else GB_JON01_APPORDER := False;
   GS_EnvFile.WriteBool('Confirm', 'AppOrder', GB_JON01_APPORDER);
end;

procedure TFrm_SETA1.rb_charge_cal0Click(Sender: TObject);
begin
  if ( GT_DISTANCE_ST = 1 ) And ( rb_charge_cal0.Checked) then
  begin
     GMessagebox('[경로 탐색 거리 계산] 사용시 즉시계산 사용금지', CDMSE);
     rb_charge_cal1.Checked := True;
  end;
  GT_CHARGE_CAL := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteString('CHARGE', 'CAL', IntToStr(GT_CHARGE_CAL));
end;

procedure TFrm_SETA1.rb_IDInClick(Sender: TObject);
begin
  GS_IDINUP := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteString('COUNSEL', 'IDINUP', IntToStr(GS_IDINUP));
end;

procedure TFrm_SETA1.rb_IDNAMEClick(Sender: TObject);
begin
  GS_IDNAME := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteString('COUNSEL', 'IDNAME', IntToStr(GS_IDNAME));
end;

procedure TFrm_SETA1.rb_Local_BothClick(Sender: TObject);
begin
  if TcxRadioButton(Sender).Checked then
    GS_LOCALDATA_USE := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteString('LOCAL', 'GS_LOCALDATA_USE',
    IntToStr(GS_LOCALDATA_USE));
end;

procedure TFrm_SETA1.rb_NewOrderClick(Sender: TObject);
begin
   if rb_AppOrder.Tag = 99 then exit;
   if rb_NewOrder.Checked then GB_JON01_APPORDER := False else GB_JON01_APPORDER := True;
   GS_EnvFile.WriteBool('Confirm', 'AppOrder', GB_JON01_APPORDER);
end;

procedure TFrm_SETA1.rb_OnLineServerClick(Sender: TObject);
begin
	Try
		ed_db_sid.Enabled := False;
		RbButton19.Enabled := False;
		ed_port.Enabled := False;
		ed_id.Enabled := False;
		ed_pw.Enabled := False;
		ed_port.Text := '';
		ed_id.Text := '';
		ed_pw.Text := '';
		ed_db_sid.Text := '';
		CHARGE_GUBUN := 'O'; //Online

		RbButton22.Enabled := False;
//		CHARGE_Online_PORT := '22306';
//		CHARGE_Online_DBNAME := 'B100_chargedb';
//		CHARGE_Online_ID  := 'b100charge';
//		CHARGE_Online_PW  := 'a6618**';
//		CHARGE_Online_IP1 := '203.251.202.18';
//		CHARGE_Online_IP2 := '61.77.191.104';

		dmCharge.FDC_OnLine_41.Connected := False;
		dmCharge.FDC_OnLine_41.Params.Clear;
		dmCharge.FDC_OnLine_41.Params.Add('DriverID=MySQL');
		dmCharge.FDC_OnLine_41.Params.Add('CharacterSet=utf8');
		dmCharge.FDC_OnLine_41.Params.Add('Database='  + CHARGE_Online_DBNAME);
		dmCharge.FDC_OnLine_41.Params.Add('Password='  + CHARGE_Online_PW);
		dmCharge.FDC_OnLine_41.Params.Add('User_name=' + CHARGE_Online_ID);
		dmCharge.FDC_OnLine_41.Params.Add('PORT='      + CHARGE_Online_PORT);
		dmCharge.FDC_OnLine_41.Params.Add('Server='    + CHARGE_Online_IP1);
		dmCharge.FDC_OnLine_41.Connected := True;

		if dmCharge.FDC_OnLine_41.Connected = False then
		begin
			GMessagebox('접속 실패 하였습니다.', CDMSE);
			Exit;
		end;

		dmCharge.FDQuery1.Connection := dmCharge.FDC_OnLine_41;
		dmCharge.FDQuery2.Connection := dmCharge.FDC_OnLine_41;
		CHARGE_Online_SetIP := CHARGE_Online_IP1;
		RbButton22.Enabled := True;

		if (CHARGE_GUBUN = 'O') and (GS_LOCALDATA_USE in [0, 2]) then
			btn3.Enabled := True; // DB POI DATA 받아오기
		rb_Local_Both.Enabled := True;
		rb_Local_Data.Enabled := True;
		rb_Local_DB.Enabled := True;

		dmCharge.FDC_OnLine_117.Connected := False;
		dmCharge.FDC_OnLine_117.Params.Clear;
		dmCharge.FDC_OnLine_117.Params.Add('DriverID=MySQL');
		dmCharge.FDC_OnLine_117.Params.Add('CharacterSet=utf8');
		dmCharge.FDC_OnLine_117.Params.Add('Database='  + CHARGE_Online_DBNAME);
		dmCharge.FDC_OnLine_117.Params.Add('Password='  + CHARGE_Online_PW);
		dmCharge.FDC_OnLine_117.Params.Add('User_name=' + CHARGE_Online_ID);
		dmCharge.FDC_OnLine_117.Params.Add('PORT='      + CHARGE_Online_PORT);
		dmCharge.FDC_OnLine_117.Params.Add('Server='    + CHARGE_Online_IP2);
		dmCharge.FDC_OnLine_117.Connected := True;

		GS_EnvFile.WriteString('CHARGE', 'CH_GUBUN', 'O');
  except
		GMessagebox('접속 실패 하였습니다.', CDMSE);
		dmCharge.FDC_OnLine_41.Connected := False;
		dmCharge.FDC_OnLine_117.Connected := False;
	end;
end;

procedure TFrm_SETA1.rb_PassTime1Click(Sender: TObject);
begin
  GS_PASSTIMECHK := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteString('COUNSEL', 'PASSTIMECHK', IntToStr(GS_PASSTIMECHK));
end;

procedure TFrm_SETA1.rb_prg_MainClick(Sender: TObject);
begin
  // 2011.06.17  add.  메인(기본) : 상담원 요금 과 지역파일을 듀얼로 사용 할 수 있도록 함.
  GT_PRG_DUAL_MAIN := 0;
  GS_EnvFile.WriteString('GER', 'PRG_DUAL_MAIN', IntToStr(GT_PRG_DUAL_MAIN));
end;

procedure TFrm_SETA1.rb_prg_SubClick(Sender: TObject);
begin
  // 2011.06.17  add.  서브 : 상담원 요금 과 지역파일을 듀얼로 사용 할 수 있도록 함.
  GT_PRG_DUAL_MAIN := 1;
  GS_EnvFile.WriteString('GER', 'PRG_DUAL_MAIN', IntToStr(GT_PRG_DUAL_MAIN));
end;

procedure TFrm_SETA1.rb_TypeBSearchClick(Sender: TObject);
begin
	GS_All7Type2 := True;
	Frm_Main.Menu1220.visible := GS_All7Type2;
	GS_EnvFile.WriteBool('CHARGE', 'CH_TYPE2USE', GS_All7Type2);
end;

procedure TFrm_SETA1.rb_TypeBUseClick(Sender: TObject);
begin
	GS_All7Type2 := False;
	Frm_Main.Menu1220.visible := GS_All7Type2;
	GS_EnvFile.WriteBool('CHARGE', 'CH_TYPE2USE', GS_All7Type2);
end;

procedure TFrm_SETA1.rb_View_DayTimeClick(Sender: TObject);
begin
  GT_MAIN_VIEW_TIME := TcxRadioButton(Sender).Tag;
  GS_EnvFile.WriteString('MAIN_VIEW', 'TIME', IntToStr(GT_MAIN_VIEW_TIME));
end;

procedure TFrm_SETA1.RDO_OR_COLOR1Click(Sender: TObject);
begin
  if GT_USERIF.LV < '60' then
  begin
    if TcxRadioButton(Sender).Checked then
    begin
      GS_JON_BRCOLOR_SET_USE := 1;
      cxButton59.Visible := True;
      cxButton60.Visible := False;
      cxGridBRCOLOR.Enabled := False;
    end;
  end else
  begin
    if TcxRadioButton(Sender).Checked then
    begin
      GS_JON_BRCOLOR_SET_USE := 1;
      cxButton59.Visible := True;
      cxButton60.Visible := True;
    end else
    begin
      GS_JON_BRCOLOR_SET_USE := 0;
      cxButton59.Visible := False;
      cxButton60.Visible := False;
    end;
    cxGridBRCOLOR.Enabled := True;
    GS_EnvFile.WriteInteger('BR_COLOR', 'BR_COLOR_USE_ALL',
      GS_JON_BRCOLOR_SET_USE);
  end;
  cxButton59Click(nil);
end;

procedure TFrm_SETA1.RDO_OR_COLOR2Click(Sender: TObject);
begin
  cxGridBRCOLOR.Enabled := True;
  if TcxRadioButton(Sender).Checked then
    GS_JON_BRCOLOR_SET_USE := 0;

  GS_EnvFile.WriteInteger('BR_COLOR', 'BR_COLOR_USE_ALL', GS_JON_BRCOLOR_SET_USE);
  cxButton59.Visible := False;
  cxButton60.Visible := False;
  proc_SetBRcolor;
end;

procedure TFrm_SETA1.rg_CancelchoiceClick(Sender: TObject);
begin
  gbOrderCancelSelect := rg_Cancelchoice.ItemIndex;
  GS_EnvFile.WriteInteger('Confirm', 'ORDERCANCELSELECT', gbOrderCancelSelect);
end;

procedure TFrm_SETA1.rg_charge_pcClick(Sender: TObject);
begin
  grpChargeType.Visible := False;
	GS_ALL_SEVEN := False;
	GS_EnvFile.WriteBool('CHARGE', 'CH_TYPE2', GS_ALL_SEVEN);

	pnl_TypeB.visible := GS_ALL_SEVEN;
	GS_All7Type2 := GS_ALL_SEVEN;
	Frm_Main.Menu1220.visible := GS_All7Type2;

	ed_db_sid.Enabled := False;
  RbButton19.Enabled := False;
  ed_port.Enabled := False;
  ed_id.Enabled := False;
  ed_pw.Enabled := False;
  ed_port.Text := '';
  ed_id.Text := '';
  ed_pw.Text := '';
  ed_db_sid.Text := '';
  GS_EnvFile.WriteString('CHARGE', 'CH_GUBUN', 'P');
  GS_EnvFile.WriteString('CHARGE', 'CH_IP', '');
  GS_EnvFile.WriteString('CHARGE', 'CH_PORT', '');
  GS_EnvFile.WriteString('CHARGE', 'CH_ID', '');
  GS_EnvFile.WriteString('CHARGE', 'CH_PW', '');
  CHARGE_GUBUN := 'P';
  // 2011.02.14(부팅없이심야요금제테이블튜닝)
  LOCPREM_TUN;
  if GS_EXEC_GUBUN = 1 then
  begin
    dmCharge.FDConnection1.Connected := False;
  end;
  { RbButton22.Enabled := True;
    btn3.Enabled := False;             //DB POI DATA 받아오기
    rb_Local_Both.Enabled := False;
    rb_Local_Data.Enabled := False;
    rb_Local_DB.Enabled := False; }
  proc_LocalTOLocallist;
end;

procedure TFrm_SETA1.rg_charge_serClick(Sender: TObject);
begin
  Try
    ed_db_sid.Enabled := True;
    RbButton19.Enabled := True;

    grpChargeType.Visible := True;

    ed_port.Enabled := True;
    ed_id.Enabled := True;
    ed_pw.Enabled := True;

    CHARGE_IP := GS_EnvFile.ReadString('CHARGE', 'CH_IP', '');
    CHARGE_PORT := StrToIntDef(GS_EnvFile.ReadString('CHARGE', 'CH_PORT',
      '3306'), 3306);
    CHARGE_ID := GS_EnvFile.ReadString('CHARGE', 'CH_ID', '');
    CHARGE_PW := GS_EnvFile.ReadString('CHARGE', 'CH_Pw', '');
    ed_db_sid.Text := CHARGE_IP;
    ed_id.Text := CHARGE_ID;
    ed_port.Text := IntToStr(CHARGE_PORT);
    ed_pw.Text := CHARGE_PW;
    if (CHARGE_IP = '') or (CHARGE_PORT <> 3306) or (CHARGE_ID = '') or
      (CHARGE_PW = '') then
    begin
      Exit;
    end;
    RbButton22.Enabled := False;
    dmCharge.FDConnection1.Connected := False;
    dmCharge.FDConnection1.Params.Clear;
    dmCharge.FDConnection1.Params.Add('DriverID=MySQL');
    dmCharge.FDConnection1.Params.Add('CharacterSet=utf8');
    dmCharge.FDConnection1.Params.Add('Database=Chargedb');
    dmCharge.FDConnection1.Params.Add('Password='+CHARGE_PW);
    dmCharge.FDConnection1.Params.Add('User_name='+CHARGE_ID);
    dmCharge.FDConnection1.Params.Add('PORT='+ inttostr(CHARGE_PORT));
    dmCharge.FDConnection1.Params.Add('Server='+CHARGE_IP);
    dmCharge.FDConnection1.Connected := True;

    if dmCharge.FDConnection1.Connected = False then
    begin
//-      CHARGE_GUBUN := 'P';
      GMessagebox('접속 실패 하였습니다.', cdmsE);
{      RbButton22.Enabled := False;
      btn3.Enabled := False; // DB POI DATA 받아오기
      rb_Local_Both.Enabled := False;
      rb_Local_Data.Enabled := False;
      rb_Local_DB.Enabled := False;}
//      Exit;
    end;

    begin
      ed_db_sid.Text := CHARGE_IP;
      ed_port.Text := IntToStr(CHARGE_PORT);
      ed_id.Text := CHARGE_ID;
      ed_pw.Text := CHARGE_PW;
      CHARGE_GUBUN := 'S';
      RbButton22.Enabled := True;
      if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE in [0, 2]) then
        btn3.Enabled := True; // DB POI DATA 받아오기
      rb_Local_Both.Enabled := True;
      rb_Local_Data.Enabled := True;
      rb_Local_DB.Enabled := True;
    end;
    GS_EnvFile.WriteString('CHARGE', 'CH_GUBUN', 'S');
  except
    GMessagebox('접속 실패 하였습니다.', cdmsE);
//    GS_EnvFile.WriteString('CHARGE', 'CH_GUBUN', 'P');
//    CHARGE_GUBUN := 'P';
    dmCharge.FDConnection1.Connected := False;
  end;
end;

procedure TFrm_SETA1.SetAcceptTitle;
var
  i: Integer;
begin
  try
    cxListBox1.Items.Clear;
    cxListBox2.Items.Clear;
		CB_Stat2.Properties.Items.Clear;

    if ( Frm_Main.JON03MNG[GI_JON03_LastFromIdx].Use ) And ( Frm_Main.JON03MNG[GI_JON03_LastFromIdx].CreateYN ) then
    begin
      for i := 0 to frm_Main.Frm_JON03[GI_JON03_LastFromIdx].sg_counsel.ColumnCount - 1 do
      begin
        if frm_Main.Frm_JON03[GI_JON03_LastFromIdx].sg_counsel.Columns[i].Visible then
        begin
          if frm_Main.Frm_JON03[GI_JON03_LastFromIdx].sg_counsel.Columns[i].Width > 0 then
            cxListBox1.Items.Add(frm_Main.Frm_JON03[GI_JON03_LastFromIdx].sg_counsel.Columns[i].Caption)
          else
            cxListBox2.Items.Add(frm_Main.Frm_JON03[GI_JON03_LastFromIdx].sg_counsel.Columns[i].Caption);
  			end;
  		end;
    end;

    CB_Stat2.Properties.Items := cxListBox1.Items;
    CB_Stat2.Properties.Items.Insert(0, '');
		CB_Stat2.ItemIndex := CB_Stat2.Properties.Items.IndexOf(GS_EnvFile.ReadString('COUNSEL', 'StatusSort2', ''));
		CB_Stat3.ItemIndex := CB_Stat3.Properties.Items.IndexOf(GS_EnvFile.ReadString('COUNSEL', 'StatusSort3', '내림차순'));
	except
		on e: exception do
      Assert(False, e.Message);
	end;
end;

procedure TFrm_SETA1.SetLoadFastFindControls;
Var
  i: Integer;
begin
  for i := 0 to JON03_MAX_CNT - 1 do
  begin
    if frm_Main.JON03MNG[i].CreateYN then
			frm_Main.Frm_JON03[i].LoadFastFindControls;
  end;
end;

procedure TFrm_SETA1.SetOption(iGubun: Integer);
Var
  i: Integer;
begin
  cxPageControl1.ActivePageIndex := 0;
  btn215Save.Tag := 0;
  cxTreeView1.FullCollapse;
  if iGubun = 0 then
  begin
    PnlTitle.Caption := '접수설정';
    for i := 0 to cxTreeView1.Items.Count - 1 do
    begin
      if (cxTreeView1.Items.Item[i].SelectedIndex = 100) Or
        (cxTreeView1.Items.Item[i].SelectedIndex = 200) then
      begin
        cxTreeView1.Items.Item[i].Expanded := True;
      end;

      if (cxTreeView1.Items.Item[i].SelectedIndex = 100) then
      begin
        cxTreeView1.Items.Item[i].Selected := True;
        cxTreeView1Click(cxTreeView1);
      end;
    end;
  end else
  if iGubun = 1 then
  begin
    PnlTitle.Caption := '일반설정';
    for i := 0 to cxTreeView1.Items.Count - 1 do
    begin
      if (cxTreeView1.Items.Item[i].SelectedIndex = 300) Or
        (cxTreeView1.Items.Item[i].SelectedIndex = 400) Or
        (cxTreeView1.Items.Item[i].SelectedIndex = 500) then
      begin
        cxTreeView1.Items.Item[i].Expanded := True;
      end;

      if (cxTreeView1.Items.Item[i].SelectedIndex = 300) then
      begin
        cxTreeView1.Items.Item[i].Selected := True;
        cxTreeView1Click(cxTreeView1);
      end;
    end;
  end else
  if iGubun = 2 then   // 119.폰트설정
  begin
    PnlTitle.Caption := '접수설정';
    for i := 0 to cxTreeView1.Items.Count - 1 do
    begin
      if (cxTreeView1.Items.Item[i].SelectedIndex = 100) then
      begin
        cxTreeView1.Items.Item[i].Expanded := True;
      end;

      if (cxTreeView1.Items.Item[i].SelectedIndex = 199) then
      begin
        cxTreeView1.Items.Item[i].Selected := True;
        cxTreeView1Click(cxTreeView1);
      end;
    end;
  end else
  if iGubun = 3 then   // 110.타이틀숨김설정
  begin
    PnlTitle.Caption := '접수설정';
    for i := 0 to cxTreeView1.Items.Count - 1 do
    begin
      if (cxTreeView1.Items.Item[i].SelectedIndex = 100) then
      begin
        cxTreeView1.Items.Item[i].Expanded := True;
      end;

      if (cxTreeView1.Items.Item[i].SelectedIndex = 110) then
      begin
        cxTreeView1.Items.Item[i].Selected := True;
        cxTreeView1Click(cxTreeView1);
      end;
    end;
  end else
  if iGubun = 4 then   // 215.접수창 종류 및 보기 방식 설정
  begin
    PnlTitle.Caption := '접수설정';
    for i := 0 to cxTreeView1.Items.Count - 1 do
    begin
      if (cxTreeView1.Items.Item[i].SelectedIndex = 200) then
      begin
        cxTreeView1.Items.Item[i].Expanded := True;
      end;

      if (cxTreeView1.Items.Item[i].SelectedIndex = 215) then
      begin
        cxTreeView1.Items.Item[i].Selected := True;
        cxTreeView1Click(cxTreeView1);
      end;
    end;
  end;
end;

procedure TFrm_SETA1.SetProc_Set_Grid;
Var
  i: Integer;
begin
  for i := 0 to JON03_MAX_CNT - 1 do
  begin
    if frm_Main.JON03MNG[i].CreateYN then
      frm_Main.Frm_JON03[i].proc_Set_Grid;
  end;
end;

procedure TFrm_SETA1.pnl_AcceptDblClick(Sender: TObject);
begin
  ColorDialog1.Color := pnl_Accept.Style.Color;
  if (ColorDialog1.Execute) then
  begin
    case cxGroupBox26.Tag of
      0: begin
           GC_CULEVEL_COLOR.cGeneral := ColorDialog1.Color;
           SetIniColor(ENVPATHFILE, 'AcceptWin', 'General'     , ColorToString(GC_CULEVEL_COLOR.cGeneral));
         end;
      1: begin
           GC_CULEVEL_COLOR.cSTORE := ColorDialog1.Color;
           SetIniColor(ENVPATHFILE, 'AcceptWin', 'STORE'       , ColorToString(GC_CULEVEL_COLOR.cSTORE));
         end;
      2: begin
           GC_CULEVEL_COLOR.cCompanyColor := ColorDialog1.Color;
           SetIniColor(ENVPATHFILE, 'AcceptWin', 'CompanyColor', ColorToString(GC_CULEVEL_COLOR.cCompanyColor));
         end;
      3: begin
           GC_CULEVEL_COLOR.cWorkerColor := ColorDialog1.Color;
           SetIniColor(ENVPATHFILE, 'AcceptWin', 'WorkerColor' ,  ColorToString(GC_CULEVEL_COLOR.cWorkerColor));
         end;
    end;
  end;
  pnl_Accept.Style.Color := ColorDialog1.Color;
end;

procedure TFrm_SETA1.proc_MySQLTOLocalDATA;
var
  sQuery, sTemp, gsPath, sDate: string;
  sl_Local: TStringList;
begin
  Try
    sl_Local := TStringList.Create;
    gsPath := DBDIRECTORY + 'LOCAL_MAP_NEW.DAT';
    if FileExists(gsPath) then
      sl_Local.LoadFromFile(gsPath);
    sl_Local.Sorted := True;

    sQuery := 'select * from CDMS_LOCAL_POI';
    dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
    dmCharge.FDQuery1.Open;

    while not dmCharge.FDQuery1.eof do
    begin
      Try
        sTemp := dmCharge.FDQuery1.Fields[0].AsString + '|' +
          dmCharge.FDQuery1.Fields[1].AsString + '|' +
          dmCharge.FDQuery1.Fields[2].AsString + '|' +
          dmCharge.FDQuery1.Fields[3].AsString + '|' +
          dmCharge.FDQuery1.Fields[4].AsString + '|' +
          dmCharge.FDQuery1.Fields[5].AsString + '|' +
          dmCharge.FDQuery1.Fields[6].AsString;
        if sl_Local.IndexOf(sTemp + '|' + '999') < 0 then
        begin
          sl_Local.Add(sTemp + '|' + '999');
          GT_MAPLocal.slCity.Add(dmCharge.FDQuery1.Fields[0].AsString);
          GT_MAPLocal.slWard.Add(dmCharge.FDQuery1.Fields[1].AsString);
          GT_MAPLocal.slStre.Add(dmCharge.FDQuery1.Fields[2].AsString);
          GT_MAPLocal.slSSub.Add
            (StringReplace(dmCharge.FDQuery1.Fields[3].AsString, ' ', '',
            [rfReplaceAll]));
          if Copy(dmCharge.FDQuery1.Fields[4].AsString, 1, 2) = '03' then
          begin
            GT_MAPLocal.slSPOI.Add('');
            GT_MAPLocal.slMapX.Add(dmCharge.FDQuery1.Fields[4].AsString);
            GT_MAPLocal.slMapY.Add(dmCharge.FDQuery1.Fields[5].AsString);
          end else
          begin
            GT_MAPLocal.slSPOI.Add(dmCharge.FDQuery1.Fields[4].AsString);
            GT_MAPLocal.slMapX.Add(dmCharge.FDQuery1.Fields[5].AsString);
            GT_MAPLocal.slMapY.Add(dmCharge.FDQuery1.Fields[6].AsString);
          end;
        end else
        begin
          sl_Local.Delete(sl_Local.IndexOf(sTemp + '|' + '999'));
          sl_Local.Add(sTemp + '|' + '999');
        end;
        dmCharge.FDQuery1.Next;
      except
      end;
    end;
    sl_Local.SaveToFile(gsPath);
    if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE in [0, 2]) then
    begin
      sQuery := 'Select * from CDMS_LOCAL_MASTER   ';
      dmCharge.proc_mysql_init;
      dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := sQuery;
      dmCharge.FDQuery1.Open;

      sDate := FormatDateTime('yyyy-mm-dd hh:mm:ss',
        dmCharge.FDQuery1.FieldByName('IN_DATE').AsDateTime);
      GS_SYNC_DATETIME := sDate;
      GS_EnvFile.WriteString('LOCAL', 'GS_SYNC_DATETIME', GS_SYNC_DATETIME);
    end;
  except
  end;
end;

procedure TFrm_SETA1.CheckTRSPenaltyChange(AType: Integer;
  ATypeRec: TTRSPenaltyTypeRec);
label
  SetEnabledFlow;
var
  btnSave: TcxButton;
begin
  btnSave := nil;
  case AType of
    1:
      begin
        btnSave := btnNmlTRSType1Save;

        if (edtNmlTRSType1Name.Text <> ATypeRec.Name) then
          goto SetEnabledFlow;
        if (edtNmlTRSType1Name.Text <> ATypeRec.Name) then
          goto SetEnabledFlow;

        if (lblNmlTRSType1Step1.Style.Color <> ATypeRec.Step1.Color) then
          goto SetEnabledFlow;
        if (chkNmlTRSType1StepUse1.Checked <> ATypeRec.Step1.Use) then
          goto SetEnabledFlow;
        if (chkNmlTRSType1Unlock1.Checked <> ATypeRec.Step1.Unlock) then
          goto SetEnabledFlow;
        if StrToIntDef(edtNmlTRSType1Unlock1.Text, -1) <> ATypeRec.Step1.UnlockTime
        then
          goto SetEnabledFlow;

        if (lblNmlTRSType1Step2.Style.Color <> ATypeRec.Step2.Color) then
          goto SetEnabledFlow;
        if (chkNmlTRSType1StepUse2.Checked <> ATypeRec.Step2.Use) then
          goto SetEnabledFlow;
        if (chkNmlTRSType1Unlock2.Checked <> ATypeRec.Step2.Unlock) then
          goto SetEnabledFlow;
        if StrToIntDef(edtNmlTRSType1Unlock2.Text, -1) <> ATypeRec.Step2.UnlockTime
        then
          goto SetEnabledFlow;

        if (lblNmlTRSType1Step3.Style.Color <> ATypeRec.Step3.Color) then
          goto SetEnabledFlow;
        if (chkNmlTRSType1StepUse3.Checked <> ATypeRec.Step3.Use) then
          goto SetEnabledFlow;
        if (chkNmlTRSType1Unlock3.Checked <> ATypeRec.Step3.Unlock) then
          goto SetEnabledFlow;
        if StrToIntDef(edtNmlTRSType1Unlock3.Text, -1) <> ATypeRec.Step3.UnlockTime
        then
          goto SetEnabledFlow;
      end;
    2:
      begin
        btnSave := btnNmlTRSType2Save;

        if (edtNmlTRSType2Name.Text <> ATypeRec.Name) then
          goto SetEnabledFlow;

        if (lblNmlTRSType2Step1.Style.Color <> ATypeRec.Step1.Color) then
          goto SetEnabledFlow;
        if (chkNmlTRSType2StepUse1.Checked <> ATypeRec.Step1.Use) then
          goto SetEnabledFlow;
        if (chkNmlTRSType2Unlock1.Checked <> ATypeRec.Step1.Unlock) then
          goto SetEnabledFlow;
        if StrToIntDef(edtNmlTRSType2Unlock1.Text, -1) <> ATypeRec.Step1.UnlockTime
        then
          goto SetEnabledFlow;

        if (lblNmlTRSType2Step2.Style.Color <> ATypeRec.Step2.Color) then
          goto SetEnabledFlow;
        if (chkNmlTRSType2StepUse2.Checked <> ATypeRec.Step2.Use) then
          goto SetEnabledFlow;
        if (chkNmlTRSType2Unlock2.Checked <> ATypeRec.Step2.Unlock) then
          goto SetEnabledFlow;
        if StrToIntDef(edtNmlTRSType2Unlock2.Text, -1) <> ATypeRec.Step2.UnlockTime
        then
          goto SetEnabledFlow;

        if (lblNmlTRSType2Step3.Style.Color <> ATypeRec.Step3.Color) then
          goto SetEnabledFlow;
        if (chkNmlTRSType2StepUse3.Checked <> ATypeRec.Step3.Use) then
          goto SetEnabledFlow;
        if (chkNmlTRSType2Unlock3.Checked <> ATypeRec.Step3.Unlock) then
          goto SetEnabledFlow;
        if StrToIntDef(edtNmlTRSType2Unlock3.Text, -1) <> ATypeRec.Step3.UnlockTime
        then
          goto SetEnabledFlow;
      end;
  end;

  if Assigned(btnSave) then
    btnSave.Enabled := False; // 위의 조건이 만족하지 않으면 내용이 변경되지 않음
  Exit;

SetEnabledFlow:
  btnSave.Enabled := True;
end;

procedure TFrm_SETA1.GetValueTRSPenalty(AType: Integer;
  var ATypeRec: TTRSPenaltyTypeRec);
begin
  case AType of
    1:
      begin
        ATypeRec.Name := edtNmlTRSType1Name.Text;

        ATypeRec.Step1.Color := lblNmlTRSType1Step1.Style.Color;
        ATypeRec.Step1.Use := chkNmlTRSType1StepUse1.Checked;
        ATypeRec.Step1.Unlock := chkNmlTRSType1Unlock1.Checked;
        ATypeRec.Step1.UnlockTime := StrToIntDef(edtNmlTRSType1Unlock1.Text, -1);

        ATypeRec.Step2.Color := lblNmlTRSType1Step2.Style.Color;
        ATypeRec.Step2.Use := chkNmlTRSType1StepUse2.Checked;
        ATypeRec.Step2.Unlock := chkNmlTRSType1Unlock2.Checked;
        ATypeRec.Step2.UnlockTime := StrToIntDef(edtNmlTRSType1Unlock2.Text, -1);

        ATypeRec.Step3.Color := lblNmlTRSType1Step3.Style.Color;
        ATypeRec.Step3.Use := chkNmlTRSType1StepUse3.Checked;
        ATypeRec.Step3.Unlock := chkNmlTRSType1Unlock3.Checked;
        ATypeRec.Step3.UnlockTime := StrToIntDef(edtNmlTRSType1Unlock3.Text, -1);
      end;
    2:
      begin
        ATypeRec.Name := edtNmlTRSType2Name.Text;

        ATypeRec.Step1.Color := lblNmlTRSType2Step1.Style.Color;
        ATypeRec.Step1.Use := chkNmlTRSType2StepUse1.Checked;
        ATypeRec.Step1.Unlock := chkNmlTRSType2Unlock1.Checked;
        ATypeRec.Step1.UnlockTime := StrToIntDef(edtNmlTRSType2Unlock1.Text, -1);

        ATypeRec.Step2.Color := lblNmlTRSType2Step2.Style.Color;
        ATypeRec.Step2.Use := chkNmlTRSType2StepUse2.Checked;
        ATypeRec.Step2.Unlock := chkNmlTRSType2Unlock2.Checked;
        ATypeRec.Step2.UnlockTime := StrToIntDef(edtNmlTRSType2Unlock2.Text, -1);

        ATypeRec.Step3.Color := lblNmlTRSType2Step3.Style.Color;
        ATypeRec.Step3.Use := chkNmlTRSType2StepUse3.Checked;
        ATypeRec.Step3.Unlock := chkNmlTRSType2Unlock3.Checked;
        ATypeRec.Step3.UnlockTime := StrToIntDef(edtNmlTRSType2Unlock3.Text, -1);
      end;
  end;
end;

procedure TFrm_SETA1.SetValueTRSPenalty(AType: Integer;
  ATypeRec: TTRSPenaltyTypeRec);
begin
  case AType of
    1:
      begin
        edtNmlTRSType1Name.Text := ATypeRec.Name;

        chkNmlTRSType1StepUse1.Checked := ATypeRec.Step1.Use;
        lblNmlTRSType1Step1.Style.Color := ATypeRec.Step1.Color;
        chkNmlTRSType1Unlock1.Checked := ATypeRec.Step1.Unlock;
        if ATypeRec.Step1.UnlockTime > -1 then
          edtNmlTRSType1Unlock1.Text := IntToStr(ATypeRec.Step1.UnlockTime);

        chkNmlTRSType1StepUse2.Checked := ATypeRec.Step2.Use;
        lblNmlTRSType1Step2.Style.Color := ATypeRec.Step2.Color;
        chkNmlTRSType1Unlock2.Checked := ATypeRec.Step2.Unlock;
        if ATypeRec.Step2.UnlockTime > -1 then
          edtNmlTRSType1Unlock2.Text := IntToStr(ATypeRec.Step2.UnlockTime);

        chkNmlTRSType1StepUse3.Checked := ATypeRec.Step3.Use;
        lblNmlTRSType1Step3.Style.Color := ATypeRec.Step3.Color;
        chkNmlTRSType1Unlock3.Checked := ATypeRec.Step3.Unlock;
        if ATypeRec.Step3.UnlockTime > -1 then
          edtNmlTRSType1Unlock3.Text := IntToStr(ATypeRec.Step3.UnlockTime);

        btnNmlTRSType1Save.Enabled := False;
      end;
    2:
      begin
        edtNmlTRSType2Name.Text := ATypeRec.Name;

        chkNmlTRSType2StepUse1.Checked := ATypeRec.Step1.Use;
        lblNmlTRSType2Step1.Style.Color := ATypeRec.Step1.Color;
        chkNmlTRSType2Unlock1.Checked := ATypeRec.Step1.Unlock;
        if ATypeRec.Step1.UnlockTime > -1 then
          edtNmlTRSType2Unlock1.Text := IntToStr(ATypeRec.Step1.UnlockTime);

        chkNmlTRSType2StepUse2.Checked := ATypeRec.Step2.Use;
        lblNmlTRSType2Step2.Style.Color := ATypeRec.Step2.Color;
        chkNmlTRSType2Unlock2.Checked := ATypeRec.Step2.Unlock;
        if ATypeRec.Step2.UnlockTime > -1 then
          edtNmlTRSType2Unlock2.Text := IntToStr(ATypeRec.Step2.UnlockTime);

        chkNmlTRSType2StepUse3.Checked := ATypeRec.Step3.Use;
        lblNmlTRSType2Step3.Style.Color := ATypeRec.Step3.Color;
        chkNmlTRSType2Unlock3.Checked := ATypeRec.Step3.Unlock;
        if ATypeRec.Step3.UnlockTime > -1 then
          edtNmlTRSType2Unlock3.Text := IntToStr(ATypeRec.Step3.UnlockTime);

        btnNmlTRSType2Save.Enabled := False;
      end;
  end;
end;

procedure TFrm_SETA1.proc_Sync_DataTime_Set;
var
  sQuery, sDate: string;
begin
  try
    if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE in [0, 2]) then
    begin
      sDate := frm_Main.func_sysdate;
      // FormatDateTime('yyyy-mm-dd hh:mm:ss', now);
      sDate := Copy(sDate, 1, 4) + '-' + Copy(sDate, 5, 2) + '-' +
        Copy(sDate, 7, 2) + ' ' + Copy(sDate, 9, 2) + ':' + Copy(sDate, 11, 2) +
        ':' + Copy(sDate, 13, 2);

      sQuery := 'UPDATE CDMS_LOCAL_MASTER SET  IN_DATE = ''' + sDate + ''' ';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := sQuery;
      dmCharge.FDQuery1.ExecSQL;

      GS_SYNC_DATETIME := sDate;
      GS_EnvFile.WriteString('LOCAL', 'GS_SYNC_DATETIME', GS_SYNC_DATETIME);
    end;
  except
  end;
end;

procedure TFrm_SETA1.proSetSET06Item;
begin
  if rb_Local_Both.Checked then
  begin
    btn3.Enabled := True;
    proc_CServer_LOCALtoList; // 전체사용

    Frm_SET06.edt1.Enabled := True;
    Frm_SET06.cxButton3.Enabled := True;
    Frm_SET06.btn1.Enabled := True;
    Frm_SET06.cxButton5.Enabled := True;
    Frm_SET06.edt2.Enabled := True;
    Frm_SET06.Edit1.Enabled := True;
    Frm_SET06.Edit2.Enabled := True;
    Frm_SET06.Edit3.Enabled := True;
    Frm_SET06.cxTextEdit1.Enabled := True;
    Frm_SET06.Edit6.Enabled := True;
    Frm_SET06.cxButton2.Enabled := True;
    Frm_SET06.cxButton4.Enabled := True;

    Frm_SET06.cxTextEdit2.Enabled := True;
    Frm_SET06.cxButton6.Enabled := True;
    Frm_SET06.cxButton12.Enabled := True;
    Frm_SET06.cxTextEdit3.Enabled := True;
    Frm_SET06.cxTextEdit4.Enabled := True;
    Frm_SET06.cxTextEdit5.Enabled := True;
    Frm_SET06.cxTextEdit6.Enabled := True;
    Frm_SET06.cxTextEdit7.Enabled := True;
    Frm_SET06.cxTextEdit10.Enabled := True;
    Frm_SET06.cxButton9.Enabled := True;
    Frm_SET06.cxButton10.Enabled := True;

    Frm_SET06.btn4.Enabled := True;
    Frm_SET06.btn2.Enabled := True;
    Frm_SET06.btn3.Enabled := True;
    Frm_SET06.btn5.Enabled := True;

    Frm_Main.pLOCAL_SYNC_CHECK;
  end;

  if rb_Local_Data.Checked then
  begin
    btn3.Enabled := False;
    proc_LocalTOLocallist; // 로컬데이터를 메모리에 올린다.

    Frm_SET06.edt1.Enabled := False;
    Frm_SET06.cxButton3.Enabled := False;
    Frm_SET06.btn1.Enabled := False;
    Frm_SET06.cxButton5.Enabled := False;
    Frm_SET06.edt2.Enabled := False;
    Frm_SET06.Edit1.Enabled := False;
    Frm_SET06.Edit2.Enabled := False;
    Frm_SET06.Edit3.Enabled := False;
    Frm_SET06.cxTextEdit1.Enabled := False;
    Frm_SET06.Edit6.Enabled := False;
    Frm_SET06.cxButton2.Enabled := False;
    Frm_SET06.cxButton4.Enabled := False;

    Frm_SET06.cxTextEdit2.Enabled := True;
    Frm_SET06.cxButton6.Enabled := True;
    Frm_SET06.cxButton12.Enabled := True;
    Frm_SET06.cxTextEdit3.Enabled := True;
    Frm_SET06.cxTextEdit4.Enabled := True;
    Frm_SET06.cxTextEdit5.Enabled := True;
    Frm_SET06.cxTextEdit6.Enabled := True;
    Frm_SET06.cxTextEdit7.Enabled := True;
    Frm_SET06.cxTextEdit10.Enabled := True;
    Frm_SET06.cxButton9.Enabled := True;
    Frm_SET06.cxButton10.Enabled := True;

    Frm_SET06.btn4.Enabled := False;
    Frm_SET06.btn2.Enabled := False;
    Frm_SET06.btn3.Enabled := False;
    Frm_SET06.btn5.Enabled := False;
  end;

  if rb_Local_DB.Checked then
  begin
    btn3.Enabled := True;
    proc_CServerTOLocallist; // MySQL데이터를 메모리에 올린다.

    Frm_SET06.edt1.Enabled := True;
    Frm_SET06.cxButton3.Enabled := True;
    Frm_SET06.btn1.Enabled := True;
    Frm_SET06.cxButton5.Enabled := True;
    Frm_SET06.edt2.Enabled := True;
    Frm_SET06.Edit1.Enabled := True;
    Frm_SET06.Edit2.Enabled := True;
    Frm_SET06.Edit3.Enabled := True;
    Frm_SET06.cxTextEdit1.Enabled := True;
    Frm_SET06.Edit6.Enabled := True;
    Frm_SET06.cxButton2.Enabled := True;
    Frm_SET06.cxButton4.Enabled := True;

    Frm_SET06.cxTextEdit2.Enabled := False;
    Frm_SET06.cxButton6.Enabled := False;
    Frm_SET06.cxButton12.Enabled := False;
    Frm_SET06.cxTextEdit3.Enabled := False;
    Frm_SET06.cxTextEdit4.Enabled := False;
    Frm_SET06.cxTextEdit5.Enabled := False;
    Frm_SET06.cxTextEdit6.Enabled := False;
    Frm_SET06.cxTextEdit7.Enabled := False;
    Frm_SET06.cxTextEdit10.Enabled := False;
    Frm_SET06.cxButton9.Enabled := False;
    Frm_SET06.cxButton10.Enabled := False;

    Frm_SET06.btn4.Enabled := False;
    Frm_SET06.btn2.Enabled := False;
    Frm_SET06.btn3.Enabled := False;
    Frm_SET06.btn5.Enabled := False;

    Frm_Main.pLOCAL_SYNC_CHECK;
  end;
end;

procedure TFrm_SETA1.pSetMakeSearchMenu;
Var i, ii, j : integer;
		sG : String;
begin
  SetLength(SearchMenu, cxTreeView1.Items.Count);
  for i := 0 to cxTreeView1.Items.Count - 1 do
  begin
    SearchMenu[i].Code := cxTreeView1.Items[i].SelectedIndex;
    sG := IntToStr(SearchMenu[i].Code);
    if Copy(AnsiString(sG), 1, 1) = '1' then SearchMenu[i].Menu := '접수현황설정' else
    if Copy(AnsiString(sG), 1, 1) = '2' then SearchMenu[i].Menu := '접수창설정'   else
    if Copy(AnsiString(sG), 1, 1) = '3' then SearchMenu[i].Menu := '고객설정'     else
    if Copy(AnsiString(sG), 1, 1) = '4' then SearchMenu[i].Menu := '기사설정'     else
    if Copy(AnsiString(sG), 1, 1) = '5' then SearchMenu[i].Menu := '요금설정'     else
    if Copy(AnsiString(sG), 1, 1) = '9' then SearchMenu[i].Menu := '공통설정';
    SearchMenu[i].Text := cxTreeView1.Items[i].Text;
    SearchMenu[i].Word := cxTreeView1.Items[i].Text;

    if SearchMenu[i].Code = 112 then
     SearchMenu[i].Word := SearchMenu[i].Word + '서울;경기;인천;대전;충남;충북;강원;대구;경북;부산;울산;경남;전북;광주;전남;제주;사용안함';

    for ii := 0 to ComponentCount - 1 do
    begin
      if Components[ii] is TcxLabel then
      begin
        if ( (Components[ii] as TcxLabel).Tag  = SearchMenu[i].Code ) Or
           ( (Components[ii] as TcxLabel).Hint = sG ) then
          SearchMenu[i].Word := SearchMenu[i].Word + ';' + (Components[ii] as TcxLabel).Caption;
      end else
      if Components[ii] is TcxCheckBox then
      begin
        if ( (Components[ii] as TcxCheckBox).Tag  = SearchMenu[i].Code ) Or
           ( (Components[ii] as TcxCheckBox).Hint = sG ) then
          SearchMenu[i].Word := SearchMenu[i].Word + ';' + (Components[ii] as TcxCheckBox).Caption;
      end else
      if Components[ii] is TcxRadioButton then
      begin
        if ( (Components[ii] as TcxRadioButton).Tag  = SearchMenu[i].Code ) Or
           ( (Components[ii] as TcxRadioButton).Hint = sG ) then
          SearchMenu[i].Word := SearchMenu[i].Word + ';' + (Components[ii] as TcxRadioButton).Caption;
      end else
      if Components[ii] is TcxGroupBox then
      begin
        if ( (Components[ii] as TcxGroupBox).Tag  = SearchMenu[i].Code ) Or
           ( (Components[ii] as TcxGroupBox).Hint = sG ) then
          SearchMenu[i].Word := SearchMenu[i].Word + ';' + (Components[ii] as TcxGroupBox).Caption;
      end else
      if Components[ii] is TcxRadioGroup then
      begin
        if ( (Components[ii] as TcxRadioGroup).Tag  = SearchMenu[i].Code ) Or
           ( (Components[ii] as TcxRadioGroup).Hint = sG ) then
        begin
          for j := 0 to (Components[ii] as TcxRadioGroup).Properties.Items.Count - 1 do
          begin
            SearchMenu[i].Word := SearchMenu[i].Word + ';' + (Components[ii] as TcxRadioGroup).Properties.Items[j].Caption;
          end;
        end;
      end else
      if Components[ii] is TcxListBox then
      begin
        if ( (Components[ii] as TcxListBox).Tag  = SearchMenu[i].Code ) Or
           ( (Components[ii] as TcxListBox).Hint = sG ) then
        begin
          for j := 0 to (Components[ii] as TcxListBox).Items.Count - 1 do
          begin
            SearchMenu[i].Word := SearchMenu[i].Word + ';' + (Components[ii] as TcxListBox).Items[j];
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrm_SETA1.rbAutoUpsoYClick(Sender: TObject);
begin
	GBJON01_AUTO_UPSO_YN := rbAutoUpsoY.Checked;
	GS_EnvFile.WriteBool('COUNSEL', 'JON01_AUTO_UPSO_YN', GBJON01_AUTO_UPSO_YN);
end;

procedure TFrm_SETA1.pSetComponentFontColor(iTag : Integer; sWord : String );
Var j, ii : Integer;
begin
  // Hint = 'Pass'이면 폰트 색상을 변경하지 않는다.( 설정중에 폰트 색상 설정이 있으면 hint에 Pass 표기
  for ii := 0 to ComponentCount - 1 do
  begin
    if Components[ii] is TcxLabel then
    begin
      if (Components[ii] as TcxLabel).Tag = 1000 then Continue;

      if ( (Components[ii] as TcxLabel).Hint <> 'Pass' ) then
       (Components[ii] as TcxLabel).Style.TextColor := clBlack;

      if ( (Components[ii] as TcxLabel).Tag  = iTag ) Or
         ( (Components[ii] as TcxLabel).Hint = IntToStr(iTag) ) then
      begin
        if Pos(Trim(UpperCase(sWord)), ReplaceStr(UpperCase((Components[ii] as TcxLabel).Caption), ' ', '')) > 0  then
          (Components[ii] as TcxLabel).Style.TextColor := clRed
      end;
    end else
    if Components[ii] is TcxCheckBox then
    begin
      if ( (Components[ii] as TcxCheckBox).Hint <> 'Pass' ) then
        (Components[ii] as TcxCheckBox).Style.TextColor := clBlack;

      if ( (Components[ii] as TcxCheckBox).Tag  = iTag ) Or
         ( (Components[ii] as TcxCheckBox).Hint = IntToStr(iTag) ) then
      begin
        if Pos(Trim(UpperCase(sWord)), ReplaceStr(UpperCase((Components[ii] as TcxCheckBox).Caption), ' ', '')) > 0 then
          (Components[ii] as TcxCheckBox).Style.TextColor := clRed;
      end;
    end else
    if Components[ii] is TcxRadioButton then
    begin
      if ( (Components[ii] as TcxRadioButton).Hint <> 'Pass' ) then
        (Components[ii] as TcxRadioButton).Font.Color := clBlack;

      if ( (Components[ii] as TcxRadioButton).Tag  = iTag ) Or
         ( (Components[ii] as TcxRadioButton).Hint = IntToStr(iTag) ) then
      begin
        if Pos(Trim(UpperCase(sWord)), ReplaceStr(UpperCase((Components[ii] as TcxRadioButton).Caption), ' ', '')) > 0 then
          (Components[ii] as TcxRadioButton).Font.Color := clRed;
      end;

      if iTag = 112 then
      begin
        if cxRadioButton16.Caption = sWord then cxRadioButton16.Font.Color := clRed;
        if cxRadioButton17.Caption = sWord then cxRadioButton17.Font.Color := clRed;
        if cxRadioButton18.Caption = sWord then cxRadioButton18.Font.Color := clRed;
        if cxRadioButton19.Caption = sWord then cxRadioButton19.Font.Color := clRed;
        if cxRadioButton20.Caption = sWord then cxRadioButton20.Font.Color := clRed;
        if cxRadioButton21.Caption = sWord then cxRadioButton21.Font.Color := clRed;
        if cxRadioButton22.Caption = sWord then cxRadioButton22.Font.Color := clRed;
        if cxRadioButton23.Caption = sWord then cxRadioButton23.Font.Color := clRed;
        if cxRadioButton24.Caption = sWord then cxRadioButton24.Font.Color := clRed;
        if cxRadioButton25.Caption = sWord then cxRadioButton25.Font.Color := clRed;
        if cxRadioButton26.Caption = sWord then cxRadioButton26.Font.Color := clRed;
        if cxRadioButton27.Caption = sWord then cxRadioButton27.Font.Color := clRed;
        if cxRadioButton28.Caption = sWord then cxRadioButton28.Font.Color := clRed;
        if cxRadioButton29.Caption = sWord then cxRadioButton29.Font.Color := clRed;
        if cxRadioButton30.Caption = sWord then cxRadioButton30.Font.Color := clRed;
        if cxRadioButton31.Caption = sWord then cxRadioButton31.Font.Color := clRed;
        if cxRadioButton32.Caption = sWord then cxRadioButton32.Font.Color := clRed;
      end;
    end else
    if Components[ii] is TcxGroupBox then
    begin
      if ( (Components[ii] as TcxGroupBox).Hint <> 'Pass' ) then
        (Components[ii] as TcxGroupBox).Style.TextColor := clBlack;

      if ( (Components[ii] as TcxGroupBox).Tag  = iTag ) Or
         ( (Components[ii] as TcxGroupBox).Hint = IntToStr(iTag) ) then
      begin
        if Pos(Trim(UpperCase(sWord)), ReplaceStr(UpperCase((Components[ii] as TcxGroupBox).Caption), ' ', '')) > 0 then
          (Components[ii] as TcxGroupBox).Style.TextColor := clRed;
      end;
    end else
    if Components[ii] is TcxRadioGroup then
    begin
      if ( (Components[ii] as TcxRadioGroup).Hint <> 'Pass' ) then
        (Components[ii] as TcxRadioGroup).Style.TextColor := clBlack;

      if ( (Components[ii] as TcxRadioGroup).Tag  = iTag ) Or
         ( (Components[ii] as TcxRadioGroup).Hint = IntToStr(iTag) ) then
      begin
        for j := 0 to (Components[ii] as TcxRadioGroup).Properties.Items.Count - 1 do
        begin
          if Pos(Trim(UpperCase(sWord)), ReplaceStr(UpperCase((Components[ii] as TcxRadioGroup).Properties.Items[j].Caption), ' ', '')) > 0 then
            (Components[ii] as TcxRadioGroup).Style.TextColor := clRed;
        end;
      end;
    end else
    if Components[ii] is TcxListBox then
    begin
      if ( (Components[ii] as TcxListBox).Hint <> 'Pass' ) then
        (Components[ii] as TcxListBox).Style.TextColor := clBlack;

      if ( (Components[ii] as TcxListBox).Tag  = iTag ) Or
         ( (Components[ii] as TcxListBox).Hint = IntToStr(iTag) ) then
      begin
        for j := 0 to (Components[ii] as TcxListBox).Items.Count - 1 do
        begin
          if Pos(Trim(UpperCase(sWord)), ReplaceStr(UpperCase((Components[ii] as TcxListBox).Items[j]), ' ', '')) > 0 then
            (Components[ii] as TcxListBox).Style.TextColor := clRed;
        end;
      end;
    end;
  end;
end;

procedure TFrm_SETA1.SetFontFaceList;
  function EnumFamToLines(lplf : PLOGFONT; lpntm:PNEWTEXTMETRIC; FontType:DWORD; Lines:LPARAM):Integer; stdcall;
  begin
    with lplf^ do
      if (lfCharSet = HANGEUL_CHARSET) and (Pos('@', lplf^.lfFaceName)=0) then
        TStrings(Lines).Add(lplf.lfFaceName);
     Result := 1;
  end;
Var sList : TStringList;
    i : Integer;
    DC : HDC;
begin
  sList := TStringList.Create;
  cbFontList.Properties.Items.Clear;
  try
    DC := GetDC(0);
    EnumFontFamilies(DC, nil, @EnumFamToLines, LongInt(sList));
    sList.Sort;
    for i := 0 To sList.Count - 1 do
      cbFontList.Properties.Items.Add(sList[i])
  finally
    sList.Free;
  end;
end;

end.

unit xe_CUT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.StrUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, clipbrd,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit, cxCheckBox, System.Math,
  cxDropDownEdit, cxImageComboBox, cxTL, cxTLdxBarBuiltInMenu, AdvProgressBar,
  Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls, cxCheckComboBox, cxGridBandedTableView,
  cxSplitter, cxInplaceContainer, cxMemo, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxRadioGroup, cxMaskEdit, cxCalendar, cxButtons, cxGroupBox, Registry,
  IniFiles, MSXML2_TLB, Vcl.ExtCtrls, cxPC, DateUtils, ComObj, cxScrollBox,
  dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

Type
	TCuData = record
		CuName : string;
		CuMemo : string;
		CuArea : string;
		CuStart1: string;
		CuStart2: string;
		CuStart3: string;
		CuAreaDetail: string;
		CuXval: string;
		CuYVal: string;
		CuTelList: string;
	end;

Type
	TMileData = record
		mType  : string;
		mGubun : string;
		mCash  : string;
		mPost  : string;
		mCard  : string;
		mMile  : string;
		mReceipNo : string;
		mFirstAdd : string;
		mOverAdd  : string;
	end;

type
  TFrm_CUT = class(TForm)
    Pop_Ymd: TPopupMenu;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
		MenuItem36: TMenuItem;
		MenuItem37: TMenuItem;
		pm_Date: TPopupMenu;
    N_Today: TMenuItem;
    N_Yesterday: TMenuItem;
    N_Week: TMenuItem;
    N_Month: TMenuItem;
    N_1Start31End: TMenuItem;
    pmCustMgr: TPopupMenu;
    mniN9: TMenuItem;
    mniN10: TMenuItem;
    mniN8: TMenuItem;
    cxStyleCustLevel: TcxStyleRepository;
    stlCustLevelColor: TcxStyle;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    PopupMenu6: TPopupMenu;
    MenuItem53: TMenuItem;
    MenuItem54: TMenuItem;
    MenuItem55: TMenuItem;
    pmDetail: TPopupMenu;
    mniDetailCustLevel: TMenuItem;
    MenuItem71: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    pnl_CUTA1: TPanel;
    Shape15: TShape;
    cxGroupBox1: TcxGroupBox;
    lbCustCompany01: TcxLabel;
    btn_1_2: TcxButton;
    btn_1_7: TcxButton;
    btn_1_5: TcxButton;
    btn_1_6: TcxButton;
		btn_1_1: TcxButton;
    cxGroupBox4: TcxGroupBox;
    cbBCustList: TcxComboBox;
    cbGubun1_1: TcxComboBox;
    cbKeynumber01: TcxComboBox;
    cbLevel01: TcxComboBox;
    cbSmsUse01: TcxComboBox;
    chkBubinName: TcxCheckBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel3: TcxLabel;
    edCustName01: TcxTextEdit;
    edCustTel01: TcxTextEdit;
    chkBubinCust: TcxCheckBox;
    chkNmlPhoneOut01: TcxCheckBox;
    lbCount01: TcxLabel;
    btn_1_3: TcxButton;
    cxLabel8: TcxLabel;
    cbOutBound1: TcxComboBox;
    cxGroupBox6: TcxGroupBox;
    cbBCustListCd: TcxComboBox;
    chkSearchAdd: TcxCheckBox;
    btn_Date1_6: TcxButton;
    btn_1_8: TcxButton;
    cxCheckBox4: TcxCheckBox;
    de_4stDate: TcxDateEdit;
    de_4edDate: TcxDateEdit;
    de_5stDate: TcxDateEdit;
		de_5edDate: TcxDateEdit;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    edUseCnt01: TcxTextEdit;
    edUseCnt02: TcxTextEdit;
    btn_Date1_5: TcxButton;
    rbFirstUseDate01: TcxRadioButton;
    rbUseCnt01: TcxRadioButton;
    rbUseDate01: TcxRadioButton;
    cxGrid1: TcxGrid;
		CustView1: TcxGridDBTableView;
    CustView1Column1: TcxGridDBColumn;
    CustView1Column2: TcxGridDBColumn;
    CustView1Column3: TcxGridDBColumn;
    CustView1Column4: TcxGridDBColumn;
    CustView1Column5: TcxGridDBColumn;
    CustView1Column6: TcxGridDBColumn;
    CustView1Column23: TcxGridDBColumn;
    CustView1Column24: TcxGridDBColumn;
    CustView1Column7: TcxGridDBColumn;
    CustView1Column8: TcxGridDBColumn;
    CustView1Column9: TcxGridDBColumn;
    CustView1Column10: TcxGridDBColumn;
    CustView1Column11: TcxGridDBColumn;
    CustView1Column12: TcxGridDBColumn;
    CustView1Column13: TcxGridDBColumn;
    CustView1Column14: TcxGridDBColumn;
    CustView1Column15: TcxGridDBColumn;
    CustView1Column16: TcxGridDBColumn;
    CustView1Column17: TcxGridDBColumn;
    CustView1Column18: TcxGridDBColumn;
    CustView1Column19: TcxGridDBColumn;
    CustView1Column20: TcxGridDBColumn;
    CustView1Column21: TcxGridDBColumn;
    CustView1Column22: TcxGridDBColumn;
    CustView1Column25: TcxGridDBColumn;
    CustView1Column26: TcxGridDBColumn;
    CustView1Column27: TcxGridDBColumn;
    CustView1Column28: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
		pnl_Chang_select: TPanel;
    cxGroupBox8: TcxGroupBox;
    mmoMilelistError: TcxMemo;
    btnAll6: TcxButton;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCurrencyEdit7: TcxCurrencyEdit;
    cxlbl7: TcxLabel;
    cxTextEdit16: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxGroupBox9: TcxGroupBox;
    chkNMCNG1: TcxRadioButton;
    chkNMCNG2: TcxRadioButton;
    cxGroupBox10: TcxGroupBox;
    cxRMileM: TcxRadioButton;
    cxRMileP: TcxRadioButton;
    cxRMileS: TcxRadioButton;
    btnAll7: TcxButton;
    cxTabSheet2: TcxTabSheet;
    pnl_CUTA2: TPanel;
    Shape19: TShape;
    cxGrid2: TcxGrid;
    CustView2: TcxGridDBTableView;
    CustView2Column1: TcxGridDBColumn;
    CustView2Column22: TcxGridDBColumn;
    CustView2Column2: TcxGridDBColumn;
    CustView2Column3: TcxGridDBColumn;
    CustView2Column4: TcxGridDBColumn;
    CustView2Column5: TcxGridDBColumn;
    CustView2Column6: TcxGridDBColumn;
    CustView2Column7: TcxGridDBColumn;
    CustView2Column8: TcxGridDBColumn;
    CustView2Column9: TcxGridDBColumn;
    CustView2Column10: TcxGridDBColumn;
    CustView2Column11: TcxGridDBColumn;
    CustView2Column12: TcxGridDBColumn;
    CustView2Column13: TcxGridDBColumn;
		CustView2Column14: TcxGridDBColumn;
    CustView2Column15: TcxGridDBColumn;
    CustView2Column16: TcxGridDBColumn;
    CustView2Column17: TcxGridDBColumn;
    CustView2Column18: TcxGridDBColumn;
    CustView2Column19: TcxGridDBColumn;
    CustView2Column20: TcxGridDBColumn;
    CustView2Column21: TcxGridDBColumn;
    CustView2Column23: TcxGridDBColumn;
    CustView2Column24: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrdCuList: TcxGrid;
    sg_notsms_list: TcxGridDBTableView;
    cxGrdCol1: TcxGridDBColumn;
    cxGrdCol2: TcxGridDBColumn;
    cxGrdCol3: TcxGridDBColumn;
    cxGrdCuListLevel1: TcxGridLevel;
    lb_Status: TListBox;
    cxGroupBox11: TcxGroupBox;
    lbCustCompany02: TcxLabel;
    cxGroupBox12: TcxGroupBox;
    rg_SType: TPanel;
    rbAll01: TcxRadioButton;
    rbNew01: TcxRadioButton;
    rbUseList01: TcxRadioButton;
    cxLabel9: TcxLabel;
    cbKeynumber02: TcxComboBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    edCustName02: TcxTextEdit;
    cbGubun2_1: TcxComboBox;
    GroupBox4: TcxGroupBox;
    rrb_st_all: TcxRadioButton;
		rrb_st_comp: TcxRadioButton;
    rrb_st_cancel: TcxRadioButton;
    rrb_st_req: TcxRadioButton;
    chk_Before: TcxCheckBox;
    chk_Before_Finish: TcxCheckBox;
    chk_Before_New: TcxCheckBox;
    lbCount02: TcxLabel;
    cxLabel13: TcxLabel;
    cbOutBound2: TcxComboBox;
    cxGroupBox13: TcxGroupBox;
    cxLabel12: TcxLabel;
    btn_Date2_1: TcxButton;
    cxDate2_1S: TcxDateEdit;
    cxDate2_1E: TcxDateEdit;
    cxLabel60: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cb_Sms_Gubun: TcxComboBox;
    edCustMemo01: TcxTextEdit;
    edCustTel02: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cb_S_Cnt1: TcxTextEdit;
    cb_S_CCnt1: TcxTextEdit;
    cb_S_Grad: TcxComboBox;
    cxLabel20: TcxLabel;
    cxLabel53: TcxLabel;
    cb_S_Cnt2: TcxTextEdit;
    cb_S_CCnt2: TcxTextEdit;
    cxLabel21: TcxLabel;
		cb_st_city: TcxComboBox;
    cxLabel22: TcxLabel;
    cb_st_ward: TcxComboBox;
    cxGroupBox14: TcxGroupBox;
    btn_2_5: TcxButton;
    chk_All_Select: TcxCheckBox;
    chkCust02Type04: TcxCheckBox;
    chkNmlPhoneOut02: TcxCheckBox;
    btn_2_3: TcxButton;
    btn_2_2: TcxButton;
    btn_2_4: TcxButton;
    btn_2_1: TcxButton;
    cxLabel210: TcxLabel;
    cxGroupBox15: TcxGroupBox;
    cxLabel39: TcxLabel;
    cxTabSheet3: TcxTabSheet;
		pnl_CUTA3: TPanel;
    Shape35: TShape;
    cxGroupBox17: TcxGroupBox;
    lbCustCompany03: TcxLabel;
    cxGroupBox18: TcxGroupBox;
    Pnl_A3Chk3: TPanel;
    Label1: TLabel;
    de_A33stDate: TcxDateEdit;
    de_A33edDate: TcxDateEdit;
    btn_Date3_3: TcxButton;
    Pnl_A3Chk2: TPanel;
    Label2: TLabel;
    de_A32stDate: TcxDateEdit;
    de_A32edDate: TcxDateEdit;
    btn_Date3_4: TcxButton;
    Pnl_A3Chk1: TPanel;
    Label4: TLabel;
    de_A31stDate: TcxDateEdit;
    de_A31edDate: TcxDateEdit;
    btn_Date3_2: TcxButton;
    chkCust03Type02: TcxCheckBox;
    chkCust03Type01: TcxCheckBox;
    chkCust03Type03: TcxCheckBox;
    cxGroupBox19: TcxGroupBox;
		rbCust03Type05: TcxRadioButton;
    rbCust03Type07: TcxRadioButton;
    rbCust03Type06: TcxRadioButton;
    cxGroupBox20: TcxGroupBox;
    Shape40: TShape;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    lbCount03: TcxLabel;
    cbKeynumber03: TcxComboBox;
    cbGubun3_1: TcxComboBox;
    cbSmsUse03: TcxComboBox;
    btn_3_1: TcxButton;
    cxLabel33: TcxLabel;
    cbOutBound3: TcxComboBox;
    cxGroupBox21: TcxGroupBox;
    rbCust03Type01: TcxRadioButton;
    rbCust03Type02: TcxRadioButton;
    btn_Date3_1: TcxButton;
    cxDate3_1S: TcxDateEdit;
    cxDate3_1E: TcxDateEdit;
    cxLabel70: TcxLabel;
    cxLabel72: TcxLabel;
    cxGroupBox22: TcxGroupBox;
    cbCustLastNumber: TcxComboBox;
    cxLabel74: TcxLabel;
    cxLabel75: TcxLabel;
    cxLabel76: TcxLabel;
    cxLabel77: TcxLabel;
    cxLabel78: TcxLabel;
    cxLabel79: TcxLabel;
    edMlgCount01: TcxTextEdit;
    edMlgCount02: TcxTextEdit;
		edMlgScore01: TcxTextEdit;
    edMlgScore02: TcxTextEdit;
    rbCust03Type03: TcxRadioButton;
    rbCust03Type04: TcxRadioButton;
    btn_3_2: TcxButton;
    btn_3_4: TcxButton;
    btn_3_5: TcxButton;
    btn_3_3: TcxButton;
    chkCust03Type04: TcxCheckBox;
    chkCust03Type06: TcxCheckBox;
    chkCust03Type05: TcxCheckBox;
    chkCust03Type07: TcxCheckBox;
    cxGrid3: TcxGrid;
    CustView3: TcxGridDBTableView;
    CustView3Column1: TcxGridDBColumn;
    CustView3Column2: TcxGridDBColumn;
    CustView3Column3: TcxGridDBColumn;
    CustView3Column4: TcxGridDBColumn;
    CustView3Column5: TcxGridDBColumn;
    CustView3Column6: TcxGridDBColumn;
    CustView3Column7: TcxGridDBColumn;
    CustView3Column8: TcxGridDBColumn;
    CustView3Column9: TcxGridDBColumn;
    CustView3Column10: TcxGridDBColumn;
    CustView3Column11: TcxGridDBColumn;
    CustView3Column12: TcxGridDBColumn;
    CustView3Column13: TcxGridDBColumn;
    CustView3Column14: TcxGridDBColumn;
    CustView3Column15: TcxGridDBColumn;
    CustView3Column16: TcxGridDBColumn;
    CustView3Column17: TcxGridDBColumn;
    CustView3Column18: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxTabSheet4: TcxTabSheet;
    pnl_CUTA4: TPanel;
    Shape45: TShape;
    cxGroupBox16: TcxGroupBox;
    lbCustCompany04: TcxLabel;
    btn_4_3: TcxButton;
		btn_4_5: TcxButton;
    btn_4_6: TcxButton;
    btn_4_4: TcxButton;
    chkCust04Type08: TcxCheckBox;
    chkCust04Type11: TcxCheckBox;
    chkCust04Type12: TcxCheckBox;
    cxGroupBox23: TcxGroupBox;
    Shape50: TShape;
    Shape52: TShape;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cxLabel40: TcxLabel;
    cbSmsUse04: TcxComboBox;
    cbGubun4_1: TcxComboBox;
    cbLevel04: TcxComboBox;
    cbKeynumber04: TcxComboBox;
    edtCuEmail: TcxTextEdit;
    chkCust04Type06: TcxCheckBox;
    chkCust04Type10: TcxCheckBox;
    lbCount04: TcxLabel;
    cxLabel41: TcxLabel;
    cbOutBound4: TcxComboBox;
    cxGroupBox24: TcxGroupBox;
    Shape56: TShape;
    chkCust04Type01: TcxCheckBox;
    cxDate4_1S: TcxDateEdit;
    cxLabel82: TcxLabel;
    cxDate4_1E: TcxDateEdit;
    chkCust04Type03: TcxCheckBox;
    cbArea03: TcxComboBox;
		cbArea04: TcxComboBox;
    cbBCustList4: TcxComboBox;
    chkCust04Type07: TcxCheckBox;
    btn_4_1: TcxButton;
    btn_Date4_1: TcxButton;
    chkCust04Type02: TcxCheckBox;
    cxDate4_2S: TcxDateEdit;
    cxDate4_2E: TcxDateEdit;
    btn_Date4_2: TcxButton;
    cxlbl1: TcxLabel;
    chkCust04Type09: TcxCheckBox;
    cxDate4_3S: TcxDateEdit;
    cxlbl2: TcxLabel;
    cxDate4_3E: TcxDateEdit;
    btn_Date4_3: TcxButton;
    chkCust04Type04: TcxCheckBox;
    chkCust04Type05: TcxCheckBox;
    edCust04Type01: TcxTextEdit;
    cxLabel85: TcxLabel;
    edCust04Type02: TcxTextEdit;
    edCust04Type03: TcxTextEdit;
    cxLabel86: TcxLabel;
    edCust04Type04: TcxTextEdit;
    cxLabel84: TcxLabel;
    cbCustLastNumber4: TcxComboBox;
    btn_4_2: TcxButton;
    cbBCustList4Cd: TcxComboBox;
    rbCust04Type01: TcxRadioButton;
    rbCust04Type02: TcxRadioButton;
    cxGrid4: TcxGrid;
    CustView4: TcxGridDBTableView;
    CustView4Column1: TcxGridDBColumn;
    CustView4Column2: TcxGridDBColumn;
    CustView4Column3: TcxGridDBColumn;
    CustView4Column4: TcxGridDBColumn;
    CustView4Column5: TcxGridDBColumn;
    CustView4Column6: TcxGridDBColumn;
    CustView4Column7: TcxGridDBColumn;
    CustView4Column8: TcxGridDBColumn;
    CustView4Column9: TcxGridDBColumn;
    CustView4Column10: TcxGridDBColumn;
		CustView4Column11: TcxGridDBColumn;
    CustView4Column12: TcxGridDBColumn;
    CustView4Column13: TcxGridDBColumn;
    CustView4Column14: TcxGridDBColumn;
    CustView4Column15: TcxGridDBColumn;
    CustView4Column16: TcxGridDBColumn;
    CustView4Column17: TcxGridDBColumn;
    CustView4Column18: TcxGridDBColumn;
    CustView4Column19: TcxGridDBColumn;
    CustView4Column20: TcxGridDBColumn;
    CustView4Column21: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    cxTabSheet5: TcxTabSheet;
    pnl_CUTA5: TPanel;
    Shape60: TShape;
    cxGroupBox25: TcxGroupBox;
    lbCustCompany05: TcxLabel;
    cxGroupBox26: TcxGroupBox;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel46: TcxLabel;
    cbKeynumber05: TcxComboBox;
    cxTextEdit18: TcxTextEdit;
    cxTextEdit19: TcxTextEdit;
    btn_5_1: TcxButton;
    btn_5_2: TcxButton;
    btn_5_3: TcxButton;
    btn_5_4: TcxButton;
    cxGroupBox27: TcxGroupBox;
    pnl4: TPanel;
    cxGridBrOrder: TcxGrid;
    cxVirtureList: TcxGridDBTableView;
    CustView1ViewNoticeListVirtureColumn1: TcxGridDBColumn;
    CustView1ViewNoticeListVirtureColumn3: TcxGridDBColumn;
    CustView1VirtureListColumn1: TcxGridDBColumn;
    cxGrid19: TcxGridLevel;
		pnl2: TPanel;
    cxLabel242: TcxLabel;
    cxLabel243: TcxLabel;
    cxLabel244: TcxLabel;
    cxLabel245: TcxLabel;
    cxLabel246: TcxLabel;
    cxLabel247: TcxLabel;
    cxLabel248: TcxLabel;
    cxTextEdit20: TcxTextEdit;
    cxLabel249: TcxLabel;
    cxLabel250: TcxLabel;
    btn_5_5: TcxButton;
    btn_5_7: TcxButton;
    btn_5_6: TcxButton;
    pnl5: TPanel;
    cxLabel252: TcxLabel;
    cxLabel253: TcxLabel;
    cxLabel254: TcxLabel;
    cxLabel240: TcxLabel;
    cxLabel251: TcxLabel;
    cxGrid14: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    CustView1GridDBTableView1Column1: TcxGridDBColumn;
    CustView1GridDBTableView1Column2: TcxGridDBColumn;
    CustView1GridDBTableView1Column3: TcxGridDBColumn;
    CustView1GridDBTableView1Column4: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    cxTabSheet6: TcxTabSheet;
		pnl_CUTA6: TPanel;
    Shape70: TShape;
    cxGrid5: TcxGrid;
    CustView6: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    CustView6Column1: TcxGridDBColumn;
    CustView6Column2: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxGroupBox28: TcxGroupBox;
    lbCustCompany06: TcxLabel;
    cxGroupBox29: TcxGroupBox;
    Shape75: TShape;
    cxLabel49: TcxLabel;
    cxLabel50: TcxLabel;
    cxLabel51: TcxLabel;
    cbGubun6_1: TcxComboBox;
    cbKeynumber06: TcxComboBox;
    cbLevel06: TcxComboBox;
    cbSmsUse06: TcxComboBox;
    chkCust06Type02: TcxCheckBox;
    chkCust06Type06: TcxCheckBox;
    lbCount06: TcxLabel;
		rbCust06Type01: TcxRadioButton;
    cxDate6_1: TcxDateEdit;
    cxLabel88: TcxLabel;
    btn_6_1: TcxButton;
    btn_6_2: TcxButton;
    btn_6_3: TcxButton;
    btn_6_4: TcxButton;
    btn_6_5: TcxButton;
    chkCust06Type01: TcxCheckBox;
    rbCust06Type02: TcxRadioButton;
    cxDate14: TcxDateEdit;
    cxDate15: TcxDateEdit;
    cxLabel91: TcxLabel;
    cxLabel229: TcxLabel;
    btn_6_6: TcxButton;
    btn_6_8: TcxButton;
    btn_6_9: TcxButton;
    btn_6_7: TcxButton;
    chkCust06Type03: TcxCheckBox;
    chkCust06Type05: TcxCheckBox;
    chkCust06Type04: TcxCheckBox;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    pnl_CUTA7: TPanel;
    Shape87: TShape;
    Panel22: TPanel;
    Shape88: TShape;
    cxGroupBox33: TcxGroupBox;
    btn_7_2: TcxButton;
    btn_7_3: TcxButton;
    btn_7_4: TcxButton;
    btn_7_5: TcxButton;
    cxGridCustGroup: TcxGrid;
    cxGridBandedTableView3: TcxGridBandedTableView;
    cxViewCustGroup: TcxGridTableView;
    cxColCGGroupName: TcxGridColumn;
    cxColCGSortNo: TcxGridColumn;
    cxColCGLevelName: TcxGridColumn;
		cxColCGMileage: TcxGridColumn;
    cxColCGColor: TcxGridColumn;
    cxColCGLevelUpDesc: TcxGridColumn;
    cxColCGGroupSeq: TcxGridColumn;
    cxColCGLevelSeq: TcxGridColumn;
    cxColCGDefaultYN: TcxGridColumn;
    cxLevelCustGroup: TcxGridLevel;
    cxGroupBox34: TcxGroupBox;
    cxGridCustLevel: TcxGrid;
    cxGridBandedTableView2: TcxGridBandedTableView;
    cxViewCustLevel: TcxGridTableView;
    cxColCLBranchTel: TcxGridColumn;
    cxColCLGroup: TcxGridColumn;
    cxColCLAutoUp: TcxGridColumn;
    cxColCLGroupSeq: TcxGridColumn;
    cxLevelCustLevel: TcxGridLevel;
    cxGridGroupLevel: TcxGrid;
    cxGridBandedTableView1: TcxGridBandedTableView;
    cxViewGroupLevel: TcxGridTableView;
    cxColGLSortNo: TcxGridColumn;
    cxColGLLevelName: TcxGridColumn;
    cxColGLMileage: TcxGridColumn;
    cxColGLColor: TcxGridColumn;
    cxColGLLevelUpDesc: TcxGridColumn;
    cxColGLDefaultYN: TcxGridColumn;
    cxLevelGroupLevel: TcxGridLevel;
    cxGroupBox35: TcxGroupBox;
    lbCustCompany07: TcxLabel;
    btn_7_1: TcxButton;
    pnl_CUTA8: TPanel;
    cxGroupBox36: TcxGroupBox;
    lbCustCompany08: TcxLabel;
		pnl_CUTA10: TPanel;
    Shape76: TShape;
    cxGroupBox30: TcxGroupBox;
    lbCustCompany10: TcxLabel;
    cxGroupBox31: TcxGroupBox;
    Shape81: TShape;
    Shape82: TShape;
    Shape83: TShape;
    cxLabel56: TcxLabel;
    cxLabel57: TcxLabel;
    cxLabel58: TcxLabel;
    cbGubun10_1: TcxComboBox;
    cbKeynumber10: TcxComboBox;
    lbCount10: TcxLabel;
    edCustName03: TcxTextEdit;
    chkCust10Type02: TcxCheckBox;
    btn_Date10_1: TcxButton;
    cxDate10_1S: TcxDateEdit;
    cxDate10_1E: TcxDateEdit;
    rbCust10Type01: TcxRadioButton;
    rbCust10Type02: TcxRadioButton;
    rbCust10Type03: TcxRadioButton;
    cxLabel59: TcxLabel;
    edCustTel03: TcxTextEdit;
    cxLabel139: TcxLabel;
    cxCbMileGubun: TcxComboBox;
    cxLabel140: TcxLabel;
    cxLabel141: TcxLabel;
    btn_10_2: TcxButton;
		btn_10_1: TcxButton;
    cxedCuSEQ: TcxTextEdit;
    cxGrid8: TcxGrid;
		CustView10: TcxGridDBTableView;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
		cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    CustView10Column1: TcxGridDBColumn;
    CustView10Column2: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    pnl_CUTA11: TPanel;
    Shape86: TShape;
    cxGroupBox32: TcxGroupBox;
    lbCustCompany11: TcxLabel;
    cxGroupBox40: TcxGroupBox;
    btn_Date11_1: TcxButton;
    dtOKCStDate: TcxDateEdit;
    dtOKCEdDate: TcxDateEdit;
    cxLabel144: TcxLabel;
    cxLabel145: TcxLabel;
    btn_11_2: TcxButton;
    btn_11_1: TcxButton;
    cxGridOKC: TcxGrid;
    cxViewOKC: TcxGridDBTableView;
    cxColViewKeyColumn1: TcxGridDBColumn;
    cxColViewKeyColumn2: TcxGridDBColumn;
    cxColViewOKCColumn1: TcxGridDBColumn;
    cxColViewKeyColumn3: TcxGridDBColumn;
    cxColViewKeyColumn4: TcxGridDBColumn;
    cxColViewKeyColumn5: TcxGridDBColumn;
    cxColViewKeyColumn6: TcxGridDBColumn;
    cxColViewKeyColumn7: TcxGridDBColumn;
    cxColViewKeyColumn8: TcxGridDBColumn;
		cxColViewKeyColumn9: TcxGridDBColumn;
    cxColViewKeyColumn10: TcxGridDBColumn;
    cxColViewKeyColumn11: TcxGridDBColumn;
    cxColViewKeyColumn12: TcxGridDBColumn;
    cxLevelOKC: TcxGridLevel;
    pnl_CUTA9: TPanel;
    Shape129: TShape;
    cxGroupBox37: TcxGroupBox;
    lbCustCompany09: TcxLabel;
    cxGroupBox38: TcxGroupBox;
    Shape134: TShape;
    cxLabel105: TcxLabel;
    cxLabel106: TcxLabel;
    cxLabel107: TcxLabel;
    cbGubun9_1: TcxComboBox;
    cbKeynumber09: TcxComboBox;
    lbCount09: TcxLabel;
    edCustName09: TcxTextEdit;
    btn_9_3: TcxButton;
    cxGroupBox39: TcxGroupBox;
    Shape135: TShape;
    cxLabel119: TcxLabel;
    cxLabel180: TcxLabel;
		chkCust09Type02: TcxCheckBox;
    cxDate9_1S: TcxDateEdit;
    cxDate9_1E: TcxDateEdit;
    btn_Date9_1: TcxButton;
		btn_9_1: TcxButton;
    cxLabel181: TcxLabel;
    cxLabel182: TcxLabel;
    cxLabel183: TcxLabel;
    cxLabel184: TcxLabel;
		edMileage01: TcxCurrencyEdit;
    edSupplyEnd01: TcxCurrencyEdit;
    cxLabel257: TcxLabel;
    edCouponM01: TcxCurrencyEdit;
    cxLabel259: TcxLabel;
    cxLabel120: TcxLabel;
    edEvent01: TcxCurrencyEdit;
    chkCust09Type01: TcxCheckBox;
    btn_9_2: TcxButton;
		cxGrid6: TcxGrid;
    CustView9: TcxGridDBTableView;
    CustView9Column1: TcxGridDBColumn;
    CustView9Column15: TcxGridDBColumn;
    CustView9Column16: TcxGridDBColumn;
    CustView9Column2: TcxGridDBColumn;
    CustView9Column3: TcxGridDBColumn;
    CustView9Column4: TcxGridDBColumn;
    CustView9Column5: TcxGridDBColumn;
    CustView9Column6: TcxGridDBColumn;
    CustView9Column7: TcxGridDBColumn;
    CustView9Column8: TcxGridDBColumn;
    CustView9Column9: TcxGridDBColumn;
    CustView9Column10: TcxGridDBColumn;
    CustView9Column11: TcxGridDBColumn;
    CustView9Column12: TcxGridDBColumn;
    CustView9Column13: TcxGridDBColumn;
    CustView9Column17: TcxGridDBColumn;
    CustView9Column18: TcxGridDBColumn;
    CustView9Column14: TcxGridDBColumn;
    CustView9Column19: TcxGridDBColumn;
    CustView9Column20: TcxGridDBColumn;
    CustView9Column21: TcxGridDBColumn;
    cxGrid6Level1: TcxGridLevel;
    cxBrNo1: TcxTextEdit;
    cxHdNo1: TcxTextEdit;
    cxHdNo2: TcxTextEdit;
    cxBrNo2: TcxTextEdit;
    cxBrNo3: TcxTextEdit;
    cxHdNo3: TcxTextEdit;
    cxBrNo4: TcxTextEdit;
    cxHdNo4: TcxTextEdit;
		cxBrNo5: TcxTextEdit;
    cxHdNo5: TcxTextEdit;
    cxBrNo6: TcxTextEdit;
    cxHdNo6: TcxTextEdit;
    cxBrNo8: TcxTextEdit;
    cxHdNo8: TcxTextEdit;
    cxBrNo9: TcxTextEdit;
    cxHdNo9: TcxTextEdit;
    cxHdNo10: TcxTextEdit;
    cxBrNo10: TcxTextEdit;
    cxBrNo11: TcxTextEdit;
    cxHdNo11: TcxTextEdit;
    pm_excel8_1: TPopupMenu;
    MenuItem4: TMenuItem;
    pm_excel8_2: TPopupMenu;
    MenuItem5: TMenuItem;
    pm_excel8_3: TPopupMenu;
    MenuItem8: TMenuItem;
    btn_1_4: TcxButton;
    cxLabel4: TcxLabel;
    cxCheckBox9: TcxCheckBox;
    btn_Date1_1: TcxButton;
    de_6stDate: TcxDateEdit;
    de_6edDate: TcxDateEdit;
    cxLabel237: TcxLabel;
    cxTextEdit17: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    Pnl_Chk3: TPanel;
    Label6: TLabel;
    de_3stDate: TcxDateEdit;
    de_3edDate: TcxDateEdit;
    btn_Date1_3: TcxButton;
    Pnl_Chk2: TPanel;
    Label3: TLabel;
    de_2stDate: TcxDateEdit;
    de_2edDate: TcxDateEdit;
    btn_Date1_4: TcxButton;
    Pnl_Chk1: TPanel;
    Label13: TLabel;
		de_1stDate: TcxDateEdit;
    de_1edDate: TcxDateEdit;
    btn_Date1_2: TcxButton;
    Cb_DelDate: TcxCheckBox;
    CB_SetDate: TcxCheckBox;
    CB_UseDate: TcxCheckBox;
    cxGroupBox3: TcxGroupBox;
    Rb_SetupA: TcxRadioButton;
    Rb_SetupN: TcxRadioButton;
    Rb_SetupY: TcxRadioButton;
    cxScrollBox1: TcxScrollBox;
    Shape91: TShape;
    Shape92: TShape;
    Shape93: TShape;
    Shape94: TShape;
    Shape95: TShape;
    Shape96: TShape;
    Shape97: TShape;
    Shape98: TShape;
    Shape99: TShape;
    Shape100: TShape;
    Shape101: TShape;
    Shape102: TShape;
    Shape103: TShape;
    Shape104: TShape;
    Shape105: TShape;
    Shape106: TShape;
    Shape107: TShape;
    Shape108: TShape;
    Shape109: TShape;
    Shape110: TShape;
    Shape111: TShape;
    Shape112: TShape;
    Shape113: TShape;
    Shape114: TShape;
    Shape115: TShape;
    Shape116: TShape;
    Shape117: TShape;
    Shape118: TShape;
    Shape119: TShape;
    Shape120: TShape;
		Shape121: TShape;
    Shape122: TShape;
    Shape123: TShape;
    Shape124: TShape;
    cxLabel93: TcxLabel;
    cxLabel96: TcxLabel;
    cxLabel97: TcxLabel;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    cxLabel100: TcxLabel;
    cxLabel101: TcxLabel;
    cxLabel102: TcxLabel;
    chkCust08Type01: TcxCheckBox;
    cxLabel109: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel110: TcxLabel;
    cxLabel111: TcxLabel;
    cxLabel112: TcxLabel;
    cxLabel113: TcxLabel;
    cxLabel114: TcxLabel;
    cxLabel115: TcxLabel;
    cxLabel116: TcxLabel;
    cxLabel117: TcxLabel;
    cxLabel118: TcxLabel;
    cxLabel129: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxLabel130: TcxLabel;
    cxLabel131: TcxLabel;
    cxLabel132: TcxLabel;
    cxLabel133: TcxLabel;
    cxLabel134: TcxLabel;
    cxLabel135: TcxLabel;
    cxLabel136: TcxLabel;
    cxLabel137: TcxLabel;
    cxLabel138: TcxLabel;
    cxLabel149: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxLabel150: TcxLabel;
    cxLabel151: TcxLabel;
    cxLabel152: TcxLabel;
    cxLabel153: TcxLabel;
		cxLabel154: TcxLabel;
    cxLabel155: TcxLabel;
    cxLabel156: TcxLabel;
    cxLabel157: TcxLabel;
    cxLabel158: TcxLabel;
    cxLabel169: TcxLabel;
    cxTextEdit12: TcxTextEdit;
    cxLabel170: TcxLabel;
    cxLabel171: TcxLabel;
    cxLabel172: TcxLabel;
    cxLabel173: TcxLabel;
    cxTextEdit2: TcxCurrencyEdit;
    cxTextEdit5: TcxCurrencyEdit;
    cxTextEdit8: TcxCurrencyEdit;
    cxTextEdit11: TcxCurrencyEdit;
    chkBRNoMile: TcxCheckBox;
    chkCDNoMile: TcxCheckBox;
    chkLTNoMile: TcxCheckBox;
    cxLabel234: TcxLabel;
    chkReceipNoMile: TcxCheckBox;
    Panel10: TPanel;
    Shape125: TShape;
    cxCheckBox5: TcxCheckBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxLabel260: TcxLabel;
    cxLabel92: TcxLabel;
    cxlbl4: TcxLabel;
    cxTextEdit1: TcxCurrencyEdit;
    Panel11: TPanel;
    cxRadioButton10: TcxRadioButton;
    cxRadioButton11: TcxRadioButton;
    cxRadioButton12: TcxRadioButton;
    CEMiOver1: TcxCurrencyEdit;
    cxLabel65: TcxLabel;
    cxLabel66: TcxLabel;
    cxLabel67: TcxLabel;
    Panel12: TPanel;
    Shape126: TShape;
    cxCheckBox6: TcxCheckBox;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxLabel128: TcxLabel;
    cxlbl3: TcxLabel;
    cxTextEdit4: TcxCurrencyEdit;
    Panel13: TPanel;
    cxRadioButton13: TcxRadioButton;
    cxRadioButton14: TcxRadioButton;
    cxRadioButton15: TcxRadioButton;
    CEMiOver2: TcxCurrencyEdit;
    cxLabel68: TcxLabel;
    cxLabel69: TcxLabel;
    cxLabel71: TcxLabel;
    Panel14: TPanel;
    Shape127: TShape;
    cxCheckBox7: TcxCheckBox;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxLabel148: TcxLabel;
    cxlbl5: TcxLabel;
    cxTextEdit7: TcxCurrencyEdit;
    Panel15: TPanel;
    cxRadioButton16: TcxRadioButton;
    cxRadioButton17: TcxRadioButton;
    cxRadioButton18: TcxRadioButton;
    CEMiOver3: TcxCurrencyEdit;
    cxLabel73: TcxLabel;
    cxLabel80: TcxLabel;
    cxLabel81: TcxLabel;
    Panel16: TPanel;
    Shape128: TShape;
    cxCheckBox8: TcxCheckBox;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxLabel168: TcxLabel;
    cxlbl6: TcxLabel;
    cxTextEdit10: TcxCurrencyEdit;
    Panel17: TPanel;
    cxRadioButton19: TcxRadioButton;
    cxRadioButton20: TcxRadioButton;
    cxRadioButton21: TcxRadioButton;
    CEMiOver4: TcxCurrencyEdit;
    cxLabel83: TcxLabel;
		Panel18: TPanel;
    rbPEventY: TcxRadioButton;
    rbPEventN: TcxRadioButton;
    cxLabel87: TcxLabel;
    cxLabel89: TcxLabel;
    Panel19: TPanel;
    rbUEventY: TcxRadioButton;
    rbUEventN: TcxRadioButton;
    cxLabel90: TcxLabel;
    cxLabel94: TcxLabel;
    Panel20: TPanel;
    rbBEventY: TcxRadioButton;
    rbBEventN: TcxRadioButton;
    cxLabel95: TcxLabel;
    btn_8_3: TcxButton;
    btn_8_4: TcxButton;
    btn_8_5: TcxButton;
    rb_Straight: TcxRadioButton;
    rb_Declining: TcxRadioButton;
    cxLabel190: TcxLabel;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox10: TcxCheckBox;
    cxCheckBox11: TcxCheckBox;
    cxLabel191: TcxLabel;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxLabel192: TcxLabel;
    Shape226: TShape;
    cxLabel193: TcxLabel;
    cxLabel217: TcxLabel;
    cxLabel225: TcxLabel;
    Shape227: TShape;
    cxLabel226: TcxLabel;
    cxLabel227: TcxLabel;
    chkCallBell: TcxCheckBox;
    menuCallBell: TMenuItem;
    CustView1Column29: TcxGridDBColumn;
    CustView1Column30: TcxGridDBColumn;
    lbCustCounselTitle: TListBox;
    N1: TMenuItem;
    CustView1Column31: TcxGridDBColumn;
		Label26: TcxLabel;
    Label5: TcxLabel;
    Label7: TcxLabel;
    CustView9Column22: TcxGridDBColumn;
    btn_9_4: TcxButton;
    CustView9Column23: TcxGridDBColumn;
    CustView9Column24: TcxGridDBColumn;
    cxLabel236: TcxLabel;
    lbMileLostMonth: TcxLabel;
    menuUpsoPee: TMenuItem;
    gbUpsoPee: TcxGroupBox;
    btn_UpsoPee_Save: TcxButton;
    btn_UpsoPee_Close: TcxButton;
    cxLabel228: TcxLabel;
    cxLabel230: TcxLabel;
    cxLabel231: TcxLabel;
    cxLabel232: TcxLabel;
    rb_Straight_Upso: TcxRadioButton;
    rb_Declining_Upso: TcxRadioButton;
    cxLabel233: TcxLabel;
    edtCalValue: TcxCurrencyEdit;
    cxLabel235: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxLabel255: TcxLabel;
    edCuMilet01: TcxCurrencyEdit;
    cxLabel256: TcxLabel;
    cxLabel258: TcxLabel;
    edCuMilet02: TcxCurrencyEdit;
    cxLabel261: TcxLabel;
    CustView1Column32: TcxGridDBColumn;
    CustView1Column33: TcxGridDBColumn;
    cxLabel238: TcxLabel;
    cxLabel239: TcxLabel;
    cxLabel241: TcxLabel;
    edMlgLost01: TcxTextEdit;
    edMlgLost02: TcxTextEdit;
    CustView3Column19: TcxGridDBColumn;
		CustView3Column20: TcxGridDBColumn;
    cxLabel270: TcxLabel;
    cxLabel272: TcxLabel;
    edMileageLost01: TcxCurrencyEdit;
    Shape231: TShape;
    cxLabel273: TcxLabel;
    chkCust09Type03: TcxCheckBox;
    cxDate9_2S: TcxDateEdit;
    cxDate9_2E: TcxDateEdit;
    btn_Date9_2: TcxButton;
    CustView9Column25: TcxGridDBColumn;
    CustView9Column26: TcxGridDBColumn;
    Label18: TcxLabel;
    CustView1Column34: TcxGridDBColumn;
    CustView1Column35: TcxGridDBColumn;
    CustView1Column36: TcxGridDBColumn;
    CustView1Column37: TcxGridDBColumn;
    chkMileSaveMile: TcxCheckBox;
    cxLabel23: TcxLabel;
    chkMileSaveCash: TcxCheckBox;
    cxButton1: TcxButton;
    cxLabel32: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel47: TcxLabel;
    cxLabel52: TcxLabel;
    cxLabel63: TcxLabel;
    cxLabel103: TcxLabel;
    cxLabel108: TcxLabel;
    cxLabel54: TcxLabel;
    cxLabel121: TcxLabel;
    cxLabel122: TcxLabel;
    cxLabel123: TcxLabel;
    cxLabel124: TcxLabel;
    cxLabel125: TcxLabel;
    cxLabel126: TcxLabel;
    cxLabel127: TcxLabel;
    cxLabel142: TcxLabel;
    cxLabel146: TcxLabel;
    cxLabel147: TcxLabel;
    cxLabel25: TcxLabel;
    cxPageControl2: TcxPageControl;
    cxTabSheet81: TcxTabSheet;
    cxTabSheet82: TcxTabSheet;
    btn_8_1: TcxButton;
    btn_8_2: TcxButton;
    cxScrollBox2: TcxScrollBox;
    cxLabel159: TcxLabel;
    cxLabel160: TcxLabel;
    edtCashValue0: TcxCurrencyEdit;
    lblCashUnit0: TcxLabel;
    cbCashType0: TcxComboBox;
    cxLabel163: TcxLabel;
    edtPostValue0: TcxCurrencyEdit;
    lblPostUnit0: TcxLabel;
    cbPostType0: TcxComboBox;
    cxLabel165: TcxLabel;
    edtCardValue0: TcxCurrencyEdit;
    lblCardUnit0: TcxLabel;
    cbCardType0: TcxComboBox;
    cxLabel167: TcxLabel;
    edtMileValue0: TcxCurrencyEdit;
    lblMileUnit0: TcxLabel;
    cbMileType0: TcxComboBox;
    cxLabel176: TcxLabel;
    cxLabel161: TcxLabel;
    edtFirstAdd0: TcxCurrencyEdit;
    cxLabel177: TcxLabel;
    edtOverAdd0: TcxCurrencyEdit;
    cxLabel179: TcxLabel;
    cxLabel185: TcxLabel;
    cxLabel186: TcxLabel;
    cxLabel187: TcxLabel;
    chkReceipNoMile0: TcxCheckBox;
    cxLabel175: TcxLabel;
    cxLabel197: TcxLabel;
    btnMultiSch: TcxButton;
    btnMultiSave: TcxButton;
    grpExcel_OPT: TcxGroupBox;
    btnAll1: TcxButton;
    btnAll2: TcxButton;
    RdExcel1: TcxRadioButton;
    RdExcel2: TcxRadioButton;
    cxLabel199: TcxLabel;
    edtCashValue1: TcxCurrencyEdit;
    lblCashUnit1: TcxLabel;
    cbCashType1: TcxComboBox;
    cxLabel201: TcxLabel;
    edtPostValue1: TcxCurrencyEdit;
    lblPostUnit1: TcxLabel;
    cbPostType1: TcxComboBox;
    cxLabel203: TcxLabel;
    edtCardValue1: TcxCurrencyEdit;
    lblCardUnit1: TcxLabel;
    cbCardType1: TcxComboBox;
    cxLabel205: TcxLabel;
    edtMileValue1: TcxCurrencyEdit;
    lblMileUnit1: TcxLabel;
    cbMileType1: TcxComboBox;
    cxLabel207: TcxLabel;
    cxLabel208: TcxLabel;
    edtFirstAdd1: TcxCurrencyEdit;
    cxLabel209: TcxLabel;
    edtOverAdd1: TcxCurrencyEdit;
    cxLabel211: TcxLabel;
    cxCheckBox12: TcxCheckBox;
    cxLabel216: TcxLabel;
    cxLabel219: TcxLabel;
    edtCashValue3: TcxCurrencyEdit;
    lblCashUnit3: TcxLabel;
    cbCashType3: TcxComboBox;
    cxLabel221: TcxLabel;
    edtPostValue3: TcxCurrencyEdit;
    lblPostUnit3: TcxLabel;
    cbPostType3: TcxComboBox;
    cxLabel223: TcxLabel;
    edtCardValue3: TcxCurrencyEdit;
    lblCardUnit3: TcxLabel;
    cbCardType3: TcxComboBox;
    cxLabel262: TcxLabel;
    edtMileValue3: TcxCurrencyEdit;
    lblMileUnit3: TcxLabel;
    cbMileType3: TcxComboBox;
    cxLabel264: TcxLabel;
    cxLabel265: TcxLabel;
    edtFirstAdd3: TcxCurrencyEdit;
    cxLabel266: TcxLabel;
    edtOverAdd3: TcxCurrencyEdit;
    cxLabel267: TcxLabel;
    cxCheckBox13: TcxCheckBox;
    cxLabel275: TcxLabel;
    cxLabel281: TcxLabel;
    cxLabel282: TcxLabel;
    chkReceipNoMile1: TcxCheckBox;
    chkReceipNoMile3: TcxCheckBox;
    cxLabel283: TcxLabel;
    cxLabel284: TcxLabel;
    cxLabel285: TcxLabel;
    edtCashValue0A: TcxCurrencyEdit;
    lblCashUnit0A: TcxLabel;
    cbCashType0A: TcxComboBox;
    cxLabel287: TcxLabel;
    edtPostValue0A: TcxCurrencyEdit;
    lblPostUnit0A: TcxLabel;
    cbPostType0A: TcxComboBox;
    cxLabel289: TcxLabel;
    edtCardValue0A: TcxCurrencyEdit;
    lblCardUnit0A: TcxLabel;
    cbCardType0A: TcxComboBox;
    cxLabel291: TcxLabel;
    edtMileValue0A: TcxCurrencyEdit;
    lblMileUnit0A: TcxLabel;
    cbMileType0A: TcxComboBox;
    cxLabel293: TcxLabel;
    cxLabel294: TcxLabel;
    edtFirstAdd0A: TcxCurrencyEdit;
    cxLabel295: TcxLabel;
    edtOverAdd0A: TcxCurrencyEdit;
    cxLabel296: TcxLabel;
    cxLabel297: TcxLabel;
    cxLabel298: TcxLabel;
    cxLabel299: TcxLabel;
    chkReceipNoMile0A: TcxCheckBox;
    cxLabel304: TcxLabel;
    cxLabel306: TcxLabel;
    edtCashValue1A: TcxCurrencyEdit;
    lblCashUnit1A: TcxLabel;
    cbCashType1A: TcxComboBox;
    cxLabel308: TcxLabel;
    edtPostValue1A: TcxCurrencyEdit;
    lblPostUnit1A: TcxLabel;
    cbPostType1A: TcxComboBox;
    cxLabel310: TcxLabel;
    edtCardValue1A: TcxCurrencyEdit;
    lblCardUnit1A: TcxLabel;
    cbCardType1A: TcxComboBox;
    cxLabel312: TcxLabel;
    edtMileValue1A: TcxCurrencyEdit;
    lblMileUnit1A: TcxLabel;
    cbMileType1A: TcxComboBox;
    cxLabel314: TcxLabel;
    cxLabel315: TcxLabel;
    edtFirstAdd1A: TcxCurrencyEdit;
    cxLabel316: TcxLabel;
    edtOverAdd1A: TcxCurrencyEdit;
    cxLabel317: TcxLabel;
    cxCheckBox17: TcxCheckBox;
    cxLabel322: TcxLabel;
    cxLabel324: TcxLabel;
    edtCashValue3A: TcxCurrencyEdit;
    lblCashUnit3A: TcxLabel;
    cbCashType3A: TcxComboBox;
    cxLabel326: TcxLabel;
    edtPostValue3A: TcxCurrencyEdit;
    lblPostUnit3A: TcxLabel;
    cbPostType3A: TcxComboBox;
    cxLabel328: TcxLabel;
    edtCardValue3A: TcxCurrencyEdit;
    lblCardUnit3A: TcxLabel;
    cbCardType3A: TcxComboBox;
    cxLabel330: TcxLabel;
    edtMileValue3A: TcxCurrencyEdit;
    lblMileUnit3A: TcxLabel;
    cbMileType3A: TcxComboBox;
    cxLabel332: TcxLabel;
    cxLabel333: TcxLabel;
    edtFirstAdd3A: TcxCurrencyEdit;
    cxLabel334: TcxLabel;
    edtOverAdd3A: TcxCurrencyEdit;
    cxLabel335: TcxLabel;
    cxCheckBox18: TcxCheckBox;
    cxLabel340: TcxLabel;
    cxLabel346: TcxLabel;
    cxLabel347: TcxLabel;
    chkReceipNoMile1A: TcxCheckBox;
    chkReceipNoMile3A: TcxCheckBox;
    cxLabel348: TcxLabel;
    cxLabel349: TcxLabel;
    cxLabel162: TcxLabel;
    cxLabel164: TcxLabel;
    cxLabel166: TcxLabel;
    cxLabel174: TcxLabel;
    cxLabel188: TcxLabel;
    cxLabel189: TcxLabel;
    cxLabel194: TcxLabel;
    cxLabel195: TcxLabel;
    cxTabSheet12: TcxTabSheet;
    pnl_CUTA12: TPanel;
    pnl_CUTA121: TPanel;
    cxLabel35: TcxLabel;
    cxLabel43: TcxLabel;
    cxLabel48: TcxLabel;
    cxLabel62: TcxLabel;
    cxLabel64: TcxLabel;
    cxLabel104: TcxLabel;
    cxLabel55: TcxLabel;
    cxLabel143: TcxLabel;
    cxGroupBox7: TcxGroupBox;
    lbCustCompany12: TcxLabel;
    cxGroupBox41: TcxGroupBox;
    btn_12_2: TcxButton;
    btn_12_1: TcxButton;
    cxLabel200: TcxLabel;
    cbKeynumber12: TcxComboBox;
    cxLabel196: TcxLabel;
    cxLabel198: TcxLabel;
    edCustTel12: TcxTextEdit;
    cxLabel202: TcxLabel;
    edReCmdCode: TcxTextEdit;
    cxRCMD: TcxGrid;
    cxViewRCMD: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Shape1: TShape;
    cxGroupBox42: TcxGroupBox;
    cxGroupBox43: TcxGroupBox;
    Shape2: TShape;
    cxRCMD_D: TcxGrid;
    cxViewRCMD_D: TcxGridDBTableView;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxRBA: TcxRadioButton;
    cxRBB: TcxRadioButton;
    cxDate12_1S: TcxDateEdit;
    Label8: TLabel;
    cxDate12_1E: TcxDateEdit;
    btn_Date12_1: TcxButton;
    cxLabel204: TcxLabel;
    lblRCMD: TcxLabel;
    cxViewRCMD_DColumn1: TcxGridDBColumn;
    cxViewRCMD_DColumn2: TcxGridDBColumn;
    cxViewRCMD_DColumn3: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    btn_12_3: TcxButton;
    btn_12_4: TcxButton;
    btn_12_5: TcxButton;
    CustView1Column38: TcxGridDBColumn;
    CustView2Column25: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure rbFirstUseDate01Click(Sender: TObject);
    procedure edCustName01KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure _retenTel01KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbGubun1_1Click(Sender: TObject);
    procedure cbLevel01MouseEnter(Sender: TObject);
    procedure chkBubinNameClick(Sender: TObject);
    procedure cxTextEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure cxCheckBox9Click(Sender: TObject);
    procedure btn_1_4Click(Sender: TObject);
    procedure CB_SetDateClick(Sender: TObject);
		procedure Cb_DelDateClick(Sender: TObject);
    procedure CB_UseDateClick(Sender: TObject);
    procedure MenuItem33Click(Sender: TObject);
		procedure MenuItem34Click(Sender: TObject);
    procedure MenuItem35Click(Sender: TObject);
    procedure MenuItem36Click(Sender: TObject);
    procedure MenuItem37Click(Sender: TObject);
		procedure cxCheckBox4Click(Sender: TObject);
    procedure btn_1_8Click(Sender: TObject);
    procedure RbButton1MouseDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_1_5Click(Sender: TObject);
    procedure btn_1_6Click(Sender: TObject);
    procedure btn_1_7Click(Sender: TObject);
		procedure btn_1_1Click(Sender: TObject);
    procedure btn_1_2Click(Sender: TObject);
    procedure btnAll2Click(Sender: TObject);
    procedure btnAll6Click(Sender: TObject);
    procedure btnAll7Click(Sender: TObject);
    procedure CustView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CustView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CustView1DataControllerSortingChanged(Sender: TObject);
    procedure CustView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mniN9Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure rbAll01Click(Sender: TObject);
    procedure cb_st_cityPropertiesChange(Sender: TObject);
    procedure btn_2_2Click(Sender: TObject);
    procedure chk_BeforeClick(Sender: TObject);
    procedure chk_Before_FinishClick(Sender: TObject);
		procedure chk_Before_NewClick(Sender: TObject);
		procedure btn_Date2_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb_S_Cnt1PropertiesChange(Sender: TObject);
    procedure btn_2_3Click(Sender: TObject);
    procedure btn_2_4Click(Sender: TObject);
		procedure btn_2_5Click(Sender: TObject);
    procedure chk_All_SelectClick(Sender: TObject);
    procedure btn_2_1Click(Sender: TObject);
    procedure rbCust03Type01Click(Sender: TObject);
    procedure rbCust03Type02Click(Sender: TObject);
    procedure btn_Date3_1Click(Sender: TObject);
    procedure rbCust03Type03Click(Sender: TObject);
    procedure rbCust03Type04Click(Sender: TObject);
    procedure N_YesterdayClick(Sender: TObject);
    procedure N_WeekClick(Sender: TObject);
    procedure N_MonthClick(Sender: TObject);
    procedure N_1Start31EndClick(Sender: TObject);
    procedure btn_3_2Click(Sender: TObject);
    procedure btn_3_3Click(Sender: TObject);
    procedure btn_3_4Click(Sender: TObject);
    procedure btn_3_5Click(Sender: TObject);
    procedure chkCust03Type07Click(Sender: TObject);
    procedure CustView3ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CustView3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CustView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbKeynumber01PropertiesChange(Sender: TObject);
    procedure btn_4_3Click(Sender: TObject);
    procedure btn_4_2Click(Sender: TObject);
    procedure mniDetailCustLevelClick(Sender: TObject);
    procedure chkCust04Type01Click(Sender: TObject);
    procedure chkCust04Type02Click(Sender: TObject);
    procedure chkCust04Type09Click(Sender: TObject);
    procedure chkCust04Type03Click(Sender: TObject);
    procedure chkCust04Type07Click(Sender: TObject);
		procedure btn_4_1Click(Sender: TObject);
    procedure chkCust04Type04Click(Sender: TObject);
    procedure chkCust04Type05Click(Sender: TObject);
		procedure chkCust04Type12Click(Sender: TObject);
    procedure btn_5_1Click(Sender: TObject);
    procedure btn_5_2Click(Sender: TObject);
    procedure btn_5_3Click(Sender: TObject);
    procedure btn_5_5Click(Sender: TObject);
    procedure btn_5_6Click(Sender: TObject);
    procedure btn_5_7Click(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btn_5_4Click(Sender: TObject);
    procedure btn_6_6Click(Sender: TObject);
    procedure btn_6_7Click(Sender: TObject);
    procedure btn_6_9Click(Sender: TObject);
    procedure btn_6_1Click(Sender: TObject);
    procedure N_TodayClick(Sender: TObject);
    procedure btn_1_3Click(Sender: TObject);
    procedure cb_S_GradClick(Sender: TObject);
    procedure btn_3_1Click(Sender: TObject);
    procedure btn_Date3_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date3_2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbGubun4_1Click(Sender: TObject);
    procedure cbGubun6_1Click(Sender: TObject);
    procedure rbCust06Type01Click(Sender: TObject);
    procedure rbCust06Type02Click(Sender: TObject);
    procedure CustView6ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CustView6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_7_1Click(Sender: TObject);
		procedure btn_7_2Click(Sender: TObject);
    procedure btn_7_3Click(Sender: TObject);
		procedure btn_7_4Click(Sender: TObject);
    procedure btn_7_5Click(Sender: TObject);
    procedure cxViewCustGroupCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxViewCustLevelFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxViewCustLevelCanSelectRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxRadioButton10Click(Sender: TObject);
		procedure btn_8_3Click(Sender: TObject);
    procedure cxRadioButton19Click(Sender: TObject);
    procedure chkBRNoMileClick(Sender: TObject);
    procedure cxRadioButton13Click(Sender: TObject);
    procedure cxRadioButton16Click(Sender: TObject);
    procedure chkCust09Type02Click(Sender: TObject);
    procedure btn_Date9_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
		procedure btn_9_1Click(Sender: TObject);
		procedure btn_9_2Click(Sender: TObject);
    procedure btn_9_3Click(Sender: TObject);
    procedure CustView9CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CustView9ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CustView9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chkCust09Type01Click(Sender: TObject);
    procedure btn_Date10_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_10_1Click(Sender: TObject);
    procedure btn_10_2Click(Sender: TObject);
    procedure chkCust10Type02Click(Sender: TObject);
		procedure CustView10ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CustView10KeyDown(Sender: TObject; var Key: Word;
			Shift: TShiftState);
    procedure CustView10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date11_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_11_1Click(Sender: TObject);
    procedure btn_8_1Click(Sender: TObject);
    procedure btn_Date14_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date16_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbKeynumber01Click(Sender: TObject);
    procedure cbKeynumber02PropertiesChange(Sender: TObject);
    procedure cbKeynumber04PropertiesChange(Sender: TObject);
    procedure cbKeynumber06PropertiesChange(Sender: TObject);
    procedure btn_8_2Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure btnAll1Click(Sender: TObject);
    procedure btn_4_6Click(Sender: TObject);
    procedure chkCust06Type04Click(Sender: TObject);
    procedure cxColGLColorStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxColCGColorStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxColGLLevelNameStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxColCGLevelNameStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure Label7Click(Sender: TObject);
    procedure btn_Date1_2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date1_3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date1_4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date1_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
		procedure btn_Date1_5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date1_6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chkCust03Type01Click(Sender: TObject);
    procedure chkCust03Type02Click(Sender: TObject);
    procedure chkCust03Type03Click(Sender: TObject);
    procedure btn_Date4_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date13_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_4_5Click(Sender: TObject);
    procedure btn_6_8Click(Sender: TObject);
    procedure btn_11_2Click(Sender: TObject);
    procedure cxTextEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEdit19KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rb_StraightClick(Sender: TObject);
    procedure cxCheckBox3Click(Sender: TObject);
    procedure chkCust08Type01Click(Sender: TObject);
    procedure chkLTNoMileClick(Sender: TObject);
    procedure cbGubun1_1PropertiesChange(Sender: TObject);
    procedure pmCustMgrPopup(Sender: TObject);
		procedure menuCallBellClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure CustView1ColumnPosChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure btn_9_4Click(Sender: TObject);
    procedure menuUpsoPeeClick(Sender: TObject);
    procedure btn_UpsoPee_SaveClick(Sender: TObject);
    procedure btn_UpsoPee_CloseClick(Sender: TObject);
    procedure chkCust09Type03Click(Sender: TObject);
    procedure CustView1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure edCustName09KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbCashType0PropertiesChange(Sender: TObject);
    procedure cbCardType0PropertiesChange(Sender: TObject);
    procedure cbPostType0PropertiesChange(Sender: TObject);
    procedure cbMileType0PropertiesChange(Sender: TObject);
    procedure cbCashType1PropertiesChange(Sender: TObject);
    procedure cbCashType3PropertiesChange(Sender: TObject);
    procedure cbCashType0APropertiesChange(Sender: TObject);
    procedure cbCashType1APropertiesChange(Sender: TObject);
    procedure cbCardType1APropertiesChange(Sender: TObject);
    procedure cbCashType3APropertiesChange(Sender: TObject);
    procedure cbCardType1PropertiesChange(Sender: TObject);
    procedure cbCardType3PropertiesChange(Sender: TObject);
    procedure cbCardType0APropertiesChange(Sender: TObject);
    procedure cbCardType3APropertiesChange(Sender: TObject);
    procedure cbPostType1PropertiesChange(Sender: TObject);
    procedure cbPostType3PropertiesChange(Sender: TObject);
    procedure cbPostType0APropertiesChange(Sender: TObject);
    procedure cbPostType1APropertiesChange(Sender: TObject);
    procedure cbPostType3APropertiesChange(Sender: TObject);
    procedure cbMileType1PropertiesChange(Sender: TObject);
    procedure cbMileType3PropertiesChange(Sender: TObject);
    procedure cbMileType0APropertiesChange(Sender: TObject);
    procedure cbMileType1APropertiesChange(Sender: TObject);
    procedure cbMileType3APropertiesChange(Sender: TObject);
    procedure btnMultiSchClick(Sender: TObject);
    procedure btnMultiSaveClick(Sender: TObject);
    procedure cxRBAClick(Sender: TObject);
    procedure btn_Date12_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_12_1Click(Sender: TObject);
    procedure btn_12_3Click(Sender: TObject);
    procedure cxViewRCMDDataControllerSortingChanged(Sender: TObject);
    procedure edCustTel12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxViewRCMDCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_12_2Click(Sender: TObject);
    procedure btn_12_4Click(Sender: TObject);
    procedure cxViewRCMD_DDataControllerSortingChanged(Sender: TObject);
    procedure cxViewRCMDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
	private
    { Private declarations }
    UsrNameReg: TRegistry;
    sFooter, sHeader, dt_sysdate2: string;
    gbControlKeyDown: Boolean;

    SCboLevelSeq : TStringList;

    // 엑셀다운 내용(조회시 조회조건 기록)
    FDetailKeyNum,
		FExcelDownMng,
    FExcelDownNormal,
    FExcelDownHigh,
		FExcelDownDetail,
    FExcelDownSleep,
    FExcelDownMile,
    FExcelDownMileDetail,
    FExcelDownRCMD,
    FExcelDownRCMDD : string;
		nFocus : integer;

		AIndex : Integer;

		bTag_Page2 : Boolean;
		FCuData : TCuData;

    FSchData, FSaveData : Array[1..6] of TMileData;

		gslUpsoPeeSeq : TStringList;
		
    procedure proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean = True);
    procedure cxGridCopy(ASource, ATarget: TcxGridDBTableView; AKeyIndex: Integer; AKeyValue: string);
    function DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
    function DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
    procedure ResponseBATCH_CUST_MLG(AXmlStr: WideString);
    procedure ChageCustLevel(AKeyNumber: string; ACombo: TcxComboBox);
    procedure RequestData(AData: string);
    procedure RequestDataCustLevel;
    procedure RequestDataLevelFromGroupSeq(AGroupSeq: string);
    procedure OnRefreshCustLevel(Sender: TObject);
    procedure DelCustLevel(ALevelSeq: string);
    procedure DelCustGroup(AGroupSeq: string);
    function GetActiveDateControl(AIndex : integer; var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure CustSetDateControl(AGubun: Integer; AStDt, AEdDt: TcxDateEdit);
    procedure proc_bubin_init;
    procedure proc_DetailSearch;
    procedure proc_VirtureNum;
    procedure proc_VirtureNum_init;
		function func_ChkPhone: Boolean;
		procedure proc_Cust_PhoneSel(Aidx: integer);
    procedure proc_SleepSearch;

    procedure proc_HighSearch;
		procedure ResponseCustLevel(AXmlStr: WideString);
		procedure ResponseCustGroup(AXmlStr: WideString);
		procedure ResponseLevelFromGroupSeq(AXmlStr: WideString);
    procedure ShowCustLevelWindow(AGroupName, AGroupSeq:string; AOneYear : Boolean; ALevelSeq: string = '');
    procedure proc_EventCnt_Init( iGuBun : Integer );
    procedure proc_init_mileage;
		procedure proc_MileageAcc;
		procedure proc_OKCashBack;

		function func_Cust_Search(AHdNo, ABrNo, AKeyNumber, ASeq : string):Boolean;

		procedure proc_CustCounsel_Title;
		procedure proc_CustCounsel_Clear;
		procedure proc_CustCounsel_Save;
    procedure pSetMultiMileSave( pData : TMileData);
    procedure pSetMultiMileInit;
	public
		{ Public declarations }
		CutSeqList : TStringList;
    iAddCnt : integer;
		Click_chk : integer;
		iFlag : integer;
    // 좌측 메뉴 지사선택
    lb_st_customer, lbNoSms: TStringList;

    procedure proc_MileageSet;
    procedure proc_MileageSet_Multi;
		procedure proc_init;
    procedure proc_BrNameSet;
		procedure proc_GeneralSearch;
		procedure proc_New_his(iType: Integer);
		procedure proc_NotSMS(Br_no: string);
		procedure proc_before_his;
		procedure proc_before_comp;
		procedure proc_before_new;
		procedure proc_CustSearch(iType: Integer);
		procedure proc_Branch_Change;

    // 전문 응답 처리
		procedure proc_recieve(slList: TStringList);
    function func_buninSearch(sBrNo, sKeyNum, sCode: string): string;
		function GetDeptCustomerCount(AHdNo, ABrNo, ADeptCode: string): Integer;
		function func_recieve(slList: TStringList): Boolean;
		procedure proc_MileageDetail;
  end;

var
  Frm_CUT: TFrm_CUT;

implementation

{$R *.dfm}
uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_Query,
  xe_packet, xe_xml, xe_CUT012, xe_CUT011, xe_Flash, xe_SMS, xe_structure,
	xe_CUT03, xe_CUT02, xe_CUT07 , xe_CUT09, xe_CUT013, xe_CUT019,
  xe_Jon03, xe_JON51, xe_BTN01, xe_BTN, xe_SearchWord;

procedure TFrm_CUT.btnAll2Click(Sender: TObject);
begin
	grpExcel_OPT.Visible := False;
end;

procedure TFrm_CUT.btn_1_2Click(Sender: TObject);
var i, iSeq, iKeynumber, iCnt : Integer;
  CutSeq : string;
begin
	try
		cxGrid1.Enabled := False;
    CutSeqList := TStringList.Create;
    cxRMileP.Checked := False;
    cxRMileM.Checked := False;
    cxRMileS.Checked := False;
		chkNMCNG1.Checked := True;
    cxCurrencyEdit7.text := '0';
    cxTextEdit16.text := '';
    mmoMilelistError.Clear;
    CutSeq := '';
    iCnt := 0;
    iAddCnt := 0;
    iSeq  := CustView1.GetColumnByFieldName('SEQ').Index;
		iKeynumber  := CustView1.GetColumnByFieldName('대표번호').Index;
    for I := 0 to CustView1.DataController.RecordCount - 1 do
    begin
      if (CustView1.ViewData.Records[i].Selected) then
      begin
        if CutSeq = '' then
        begin
          CutSeq := StringReplace(CustView1.ViewData.Records[I].Values[iKeynumber], '-', '', [rfreplaceAll]) + '/' + CustView1.ViewData.Records[I].Values[iSeq];
        end else
        begin
          CutSeq := CutSeq + ',' + StringReplace(CustView1.ViewData.Records[I].Values[iKeynumber], '-', '', [rfreplaceAll]) + '/' + CustView1.ViewData.Records[I].Values[iSeq];
        end;
        Inc(iCnt);
        Inc(iAddCnt);
      end;
      if iAddCnt = 1000 then
      begin
        CutSeqList.Add(CutSeq);
        CutSeq := '';
        iAddCnt := 0;
      end;
    end;
    CutSeqList.Add(CutSeq);
    if icnt < 1 then
    begin
			cxGrid1.Enabled := True;
      GMessagebox('고객이 선택되지 않았습니다.', CDMSE);
      Exit;
    end;

    cxlbl7.Caption := inttostr(icnt) + ' 명';
    cxCurrencyEdit5.Text := inttostr(iAddCnt);

    pnl_Chang_select.Visible := True;
  except
  end;
end;

procedure TFrm_CUT.btn_1_3Click(Sender: TObject);
begin
	proc_bubin_init;
end;

procedure TFrm_CUT.btnAll6Click(Sender: TObject);
var i : Integer;
  ErrCode: integer;
  XmlData, sTemp, ErrMsg: string;
	chkNum : string;
begin
  Try
    if (cxRMileP.Checked = False) and (cxRMileM.Checked = False) and (cxRMileS.Checked = False) then
    begin
      GMessagebox('마일리지 적용구분이 선택되지 않았습니다.', CDMSE);
      Exit;
    end;

		if ( Trim(cxTextEdit16.TEXT) = '' ) And ( chkNMCNG2.Checked ) then
    begin
      if GMessagebox('고객명이 없습니다.' + #13#10 + '그래도 진행 하시겠습니까?', CDMSQ) = IDOK then
      begin
        mmoMilelistError.Lines.Add('고객명+마일리지 일괄변경 시작');
        mmoMilelistError.Lines.Add('==============================');
        if cxRMileP.Checked then chkNum := '1'
        else if cxRMileM.Checked then chkNum := '2'
        else if cxRMileS.Checked then chkNum := '3';
        for i := 0 to CutSeqList.Count -1 do
        begin
          sTemp := '';
          if i = CutSeqList.Count -1 then
            sTemp := cxCurrencyEdit5.Text
          else
            sTemp := '1000';

					if chkNMCNG1.Checked then
						sTemp := sTemp + '│' + CutSeqList[i] +  '│' + cxTextEdit16.Text +  '│'  + chkNum +  '│' + StringReplace(cxCurrencyEdit7.Text, ',', '', [rfreplaceAll]) +  '│' + '0'
					else
						sTemp := sTemp + '│' + CutSeqList[i] +  '│' + cxTextEdit16.Text +  '│'  + chkNum +  '│' + StringReplace(cxCurrencyEdit7.Text, ',', '', [rfreplaceAll]) +  '│' + '1';

          if not RequestBase_ErrorResult(GetCallable05('BATCH_CUST_MLG', 'MNG_CUST.BATCH_CUST_MLG', sTemp), XmlData, ErrCode, ErrMsg) then
          begin
            mmoMilelistError.Lines.Add(ErrMsg);
          end else
            ResponseBATCH_CUST_MLG(XmlData);
          mmoMilelistError.Lines.Add('[' + IntToStr(i) + ']' + ErrMsg);
        end;
      end else Exit;
    end else
    begin
			mmoMilelistError.Lines.Add('고객명+마일리지 일괄변경 시작');
      mmoMilelistError.Lines.Add('==============================');
			if cxRMileP.Checked then chkNum := '1'
      else if cxRMileM.Checked then chkNum := '2'
			else if cxRMileS.Checked then chkNum := '3';
      for i := 0 to CutSeqList.Count -1 do
			begin
				sTemp := '';
        if i = CutSeqList.Count -1 then
          sTemp := cxCurrencyEdit5.Text
				else
          sTemp := '1000';

				if chkNMCNG1.Checked then
					sTemp := sTemp + '│' + CutSeqList[i] +  '│' + cxTextEdit16.Text +  '│'  + chkNum +  '│' + StringReplace(cxCurrencyEdit7.Text, ',', '', [rfreplaceAll]) +  '│' + '0'
				else
					sTemp := sTemp + '│' + CutSeqList[i] +  '│' + cxTextEdit16.Text +  '│'  + chkNum +  '│' + StringReplace(cxCurrencyEdit7.Text, ',', '', [rfreplaceAll]) +  '│' + '1';

				if not RequestBase_ErrorResult(GetCallable05('BATCH_CUST_MLG', 'MNG_CUST.BATCH_CUST_MLG', sTemp), XmlData, ErrCode, ErrMsg) then
				begin
          mmoMilelistError.Lines.Add(ErrMsg);
        end else
          ResponseBATCH_CUST_MLG(XmlData);

        mmoMilelistError.Lines.Add('[' + IntToStr(i+1) + ']' + ErrMsg);
        mmoMilelistError.Lines.Add('==============================');
      end;
    end;
  except
    cxGrid1.Enabled := True;
    CutSeqList.Free;
    mmoMilelistError.Lines.Add('고객명+마일리지 일괄변경 중 오류 발생');
  end;
  if not chkSearchAdd.Checked then
    CustView1.DataController.SetRecordCount(0);
	proc_CustSearch(Click_chk);

  cxCheckBox4.Checked := False;
  FreeAndNil(CutSeqList);
end;

procedure TFrm_CUT.btnAll7Click(Sender: TObject);
begin
  cxGrid1.Enabled := True;
	pnl_Chang_select.Visible := False;
end;

procedure TFrm_CUT.btnMultiSchClick(Sender: TObject);
begin
  proc_MileageSet_Multi;
end;

procedure TFrm_CUT.proc_MileageSet_Multi;
  function fgetType( sValue : String ) : Integer;
  begin
    if StrToFloatDef(sValue, 0)  = 0 then Result := 0 else
    if StrToFloatDef(sValue, 0) <= 1 then Result := 2
                                     else Result := 1
  end;

  function fgetValue( sValue : String ) : Integer;
  begin
    if StrToFloatDef(sValue, 0)  = 0 then Result := 0 else
    if StrToFloatDef(sValue, 0) <= 1 then Result := Trunc(StrToFloatDef(sValue, 0) * 100)
                                     else Result := StrToIntDef(sValue, 0);
  end;
var
  msg, sBrNo, sBrName, Param : string;

  XmlData, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode, idx : Integer;
begin
	try
		sBrNo := cxBrNo8.Text;

    if sBrNo = '' then
    begin
			GMessagebox('마일리지 설정은 지사를 선택하셔야 합니다.', CDMSE);
			proc_init_mileage;
      Exit;
    end;

    if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
    begin
      msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
      sBrName := GetBrName(sBrNo);
      GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSE);
      proc_init_mileage;
      Exit;
    end;

    if fGetChk_Search_HdBrNo('마일리지설정') then Exit;

		Pnl_CUTA8.Enabled := True;

    Param := sBrNo;
    if not RequestBase(GetSel06('GET_MILEAGE_CFG_LIST', 'MNG_BR_MLG_CFG.GET_MILEAGE_CFG_LIST', '100', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('마일리지 복합결제 설정 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

    pSetMultiMileInit;

    xdom := ComsDomDocument.Create;
    try
      xdom.loadXML(XmlData);
      lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
      if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
      begin
        // 초기화
        for i := 1 to 6 do
        begin
          if i in [1,2,3] then FSchData[i].mType := 'T'
                          else FSchData[i].mType := 'A';
          if i in [1,4] then FSchData[i].mGubun := '0' else
          if i in [2,5] then FSchData[i].mGubun := '1' else
          if i in [3,6] then FSchData[i].mGubun := '3';
          FSchData[i].mCash     := '0';
          FSchData[i].mPost     := '0';
          FSchData[i].mCard     := '0';
          FSchData[i].mMile     := '0';
          FSchData[i].mReceipNo := 'n';
          FSchData[i].mFirstAdd := '0';
          FSchData[i].mOverAdd  := '0';
        end;

        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
        ls_Rcrd := TStringList.Create;

        try
          for I := 0 to lst_Result.length - 1 do
          begin
            GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

            if ls_Rcrd[0] = 'T' then
            begin
              if ls_Rcrd[1] = '0' then
              begin
                idx := 1;
                cbCashType0.ItemIndex := fgetType(ls_Rcrd[2]);
                edtCashValue0.Value   := fgetValue(ls_Rcrd[2]);

                cbPostType0.ItemIndex := fgetType(ls_Rcrd[3]);
                edtPostValue0.Value   := fgetValue(ls_Rcrd[3]);

                cbCardType0.ItemIndex := fgetType(ls_Rcrd[4]);
                edtCardValue0.Value   := fgetValue(ls_Rcrd[4]);

                cbMileType0.ItemIndex := fgetType(ls_Rcrd[5]);
                edtMileValue0.Value   := fgetValue(ls_Rcrd[5]);

                chkReceipNoMile0.Checked := Trim(ls_Rcrd[6]) = 'y';
                edtFirstAdd0.EditValue := ls_Rcrd[7];
                edtOverAdd0.EditValue := ls_Rcrd[8];
              end else
              if ls_Rcrd[1] = '1' then
              begin
                idx := 2;
                cbCashType1.ItemIndex := fgetType(ls_Rcrd[2]);
                edtCashValue1.Value   := fgetValue(ls_Rcrd[2]);

                cbPostType1.ItemIndex := fgetType(ls_Rcrd[3]);
                edtPostValue1.Value   := fgetValue(ls_Rcrd[3]);

                cbCardType1.ItemIndex := fgetType(ls_Rcrd[4]);
                edtCardValue1.Value   := fgetValue(ls_Rcrd[4]);

                cbMileType1.ItemIndex := fgetType(ls_Rcrd[5]);
                edtMileValue1.Value   := fgetValue(ls_Rcrd[5]);

                chkReceipNoMile1.Checked := Trim(ls_Rcrd[6]) = 'y';
                edtFirstAdd1.EditValue := ls_Rcrd[7];
                edtOverAdd1.EditValue := ls_Rcrd[8];
              end else
              if ls_Rcrd[1] = '3' then
              begin
                idx := 3;
                cbCashType3.ItemIndex := fgetType(ls_Rcrd[2]);
                edtCashValue3.Value   := fgetValue(ls_Rcrd[2]);

                cbPostType3.ItemIndex := fgetType(ls_Rcrd[3]);
                edtPostValue3.Value   := fgetValue(ls_Rcrd[3]);

                cbCardType3.ItemIndex := fgetType(ls_Rcrd[4]);
                edtCardValue3.Value   := fgetValue(ls_Rcrd[4]);

                cbMileType3.ItemIndex := fgetType(ls_Rcrd[5]);
                edtMileValue3.Value   := fgetValue(ls_Rcrd[5]);

                chkReceipNoMile3.Checked := Trim(ls_Rcrd[6]) = 'y';
                edtFirstAdd3.EditValue := ls_Rcrd[7];
                edtOverAdd3.EditValue := ls_Rcrd[8];
              end;
            end else
            if ls_Rcrd[0] = 'A' then
            begin
              if ls_Rcrd[1] = '0' then
              begin
                idx := 4;
                cbCashType0A.ItemIndex := fgetType(ls_Rcrd[2]);
                edtCashValue0A.Value   := fgetValue(ls_Rcrd[2]);

                cbPostType0A.ItemIndex := fgetType(ls_Rcrd[3]);
                edtPostValue0A.Value   := fgetValue(ls_Rcrd[3]);

                cbCardType0A.ItemIndex := fgetType(ls_Rcrd[4]);
                edtCardValue0A.Value   := fgetValue(ls_Rcrd[4]);

                cbMileType0A.ItemIndex := fgetType(ls_Rcrd[5]);
                edtMileValue0A.Value   := fgetValue(ls_Rcrd[5]);

                chkReceipNoMile0A.Checked := Trim(ls_Rcrd[6]) = 'y';
                edtFirstAdd0A.EditValue := ls_Rcrd[7];
                edtOverAdd0A.EditValue := ls_Rcrd[8];
              end else
              if ls_Rcrd[1] = '1' then
              begin
                idx := 5;
                cbCashType1A.ItemIndex := fgetType(ls_Rcrd[2]);
                edtCashValue1A.Value   := fgetValue(ls_Rcrd[2]);

                cbPostType1A.ItemIndex := fgetType(ls_Rcrd[3]);
                edtPostValue1A.Value   := fgetValue(ls_Rcrd[3]);

                cbCardType1A.ItemIndex := fgetType(ls_Rcrd[4]);
                edtCardValue1A.Value   := fgetValue(ls_Rcrd[4]);

                cbMileType1A.ItemIndex := fgetType(ls_Rcrd[5]);
                edtMileValue1A.Value   := fgetValue(ls_Rcrd[5]);

                chkReceipNoMile1A.Checked := Trim(ls_Rcrd[6]) = 'y';
                edtFirstAdd1A.EditValue := ls_Rcrd[7];
                edtOverAdd1A.EditValue := ls_Rcrd[8];
              end else
              if ls_Rcrd[1] = '3' then
              begin
                idx := 6;
                cbCashType3A.ItemIndex := fgetType(ls_Rcrd[2]);
                edtCashValue3A.Value   := fgetValue(ls_Rcrd[2]);

                cbPostType3A.ItemIndex := fgetType(ls_Rcrd[3]);
                edtPostValue3A.Value   := fgetValue(ls_Rcrd[3]);

                cbCardType3A.ItemIndex := fgetType(ls_Rcrd[4]);
                edtCardValue3A.Value   := fgetValue(ls_Rcrd[4]);

                cbMileType3A.ItemIndex := fgetType(ls_Rcrd[5]);
                edtMileValue3A.Value   := fgetValue(ls_Rcrd[5]);

                chkReceipNoMile3A.Checked := Trim(ls_Rcrd[6]) = 'y';
                edtFirstAdd3A.EditValue := ls_Rcrd[7];
                edtOverAdd3A.EditValue := ls_Rcrd[8];
              end;
            end;

            FSchData[idx].mType  := ls_Rcrd[0];
            FSchData[idx].mGubun := ls_Rcrd[1];
            FSchData[idx].mCash  := ls_Rcrd[2];
            FSchData[idx].mPost  := ls_Rcrd[3];
            FSchData[idx].mCard  := ls_Rcrd[4];
            FSchData[idx].mMile  := ls_Rcrd[5];
            FSchData[idx].mReceipNo := ls_Rcrd[6];
            FSchData[idx].mFirstAdd := ls_Rcrd[7];
            FSchData[idx].mOverAdd  := ls_Rcrd[8];
					end;
        finally
					ls_Rcrd.Free;
          Screen.Cursor := crDefault;
					Frm_Flash.Hide;
        end;
      end;
    finally
      xdom := Nil;
		end;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT.btn_3_3Click(Sender: TObject);
begin
  DeleteCustomer(CustView3, lbCount01);
end;

procedure TFrm_CUT.btn_1_7Click(Sender: TObject);
begin
	DeleteCustomer(CustView1, lbCount01);
end;

procedure TFrm_CUT.btn_2_3Click(Sender: TObject);
begin
	DeleteCustomer(CustView2, lbCount02);
end;

procedure TFrm_CUT.cbCardType0APropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblCardUnit0A.Caption := '%'
                                       else lblCardUnit0A.Caption := '원';
end;

procedure TFrm_CUT.cbCardType0PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblCardUnit0.Caption := '%'
                                       else lblCardUnit0.Caption := '원';
end;

procedure TFrm_CUT.cbCardType1APropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblCardUnit1A.Caption := '%'
                                       else lblCardUnit1A.Caption := '원';
end;

procedure TFrm_CUT.cbCardType1PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblCardUnit1.Caption := '%'
                                       else lblCardUnit1.Caption := '원';
end;

procedure TFrm_CUT.cbCardType3APropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblCardUnit3A.Caption := '%'
                                       else lblCardUnit3A.Caption := '원';
end;

procedure TFrm_CUT.cbCardType3PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblCardUnit3.Caption := '%'
                                       else lblCardUnit3.Caption := '원';
end;

procedure TFrm_CUT.cbCashType0APropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblCashUnit0A.Caption := '%'
                                       else lblCashUnit0A.Caption := '원';
end;

procedure TFrm_CUT.cbCashType0PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblCashUnit0.Caption := '%'
                                       else lblCashUnit0.Caption := '원';
end;

procedure TFrm_CUT.cbCashType1APropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblCashUnit1A.Caption := '%'
                                       else lblCashUnit1A.Caption := '원';
end;

procedure TFrm_CUT.cbCashType1PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblCashUnit1.Caption := '%'
                                       else lblCashUnit1.Caption := '원';
end;

procedure TFrm_CUT.cbCashType3APropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblCashUnit3A.Caption := '%'
                                       else lblCashUnit3A.Caption := '원';
end;

procedure TFrm_CUT.cbCashType3PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblCashUnit3.Caption := '%'
                                       else lblCashUnit3.Caption := '원';
end;

procedure TFrm_CUT.cbGubun1_1Click(Sender: TObject);
begin
	if cbGubun1_1.ItemIndex = 0 then
  begin
    chkBubinCust.Enabled := True;
    cbBCustList.Enabled := False;
		btn_1_3.Enabled := False;
  end else
	if cbGubun1_1.ItemIndex = 3 then
  begin
		proc_bubin_init;
    chkBubinCust.Enabled := False;
    cbBCustList.Enabled := True;
		btn_1_3.Enabled := True;
  end else
  begin
    chkBubinCust.Enabled := False;
    cbBCustList.Enabled := False;
    cbBCustList.ItemIndex := 0;
    btn_1_3.Enabled := False;
  end;
end;

procedure TFrm_CUT.cbGubun1_1PropertiesChange(Sender: TObject);
begin
	if cbGubun1_1.ItemIndex = 2 then
	begin
		if gs_CallBellUse then 
		begin
			chkCallBell.visible := True;
			chkCallBell.Checked := False;
			cbLevel01.Left := 222;
			cbLevel01.width := 97;
		end;
	end
	else
	begin
		chkCallBell.visible := False;
		chkCallBell.Checked := False;
		cbLevel01.Left := 175;
		cbLevel01.width := 144;
	end;

end;

procedure TFrm_CUT.cbGubun4_1Click(Sender: TObject);
begin
	if cbGubun4_1.ItemIndex = 0 then
  begin
    chkCust04Type06.Enabled := True;
    chkCust04Type07.Enabled := False;
    chkCust04Type07Click(chkCust04Type07);
		btn_4_1.Enabled := False;
  end else
  if cbGubun4_1.ItemIndex = 3 then
	begin
    proc_bubin_init;
    chkCust04Type06.Enabled := False;
    chkCust04Type07.Enabled := True;
		btn_4_1.Enabled := True;
		chkCust04Type07Click(chkCust04Type07);
	end else
  begin
    chkCust04Type06.Enabled := False;
    chkCust04Type07.Enabled := False;
    chkCust04Type07Click(chkCust04Type07);
		btn_4_1.Enabled := False;
  end;
end;

procedure TFrm_CUT.cbGubun6_1Click(Sender: TObject);
begin
	if cbGubun6_1.ItemIndex = 0 then
  begin
		chkCust06Type02.Enabled := True;
  end else
  if cbGubun6_1.ItemIndex = 3 then
  begin
    chkCust06Type02.Enabled := False;
	end;
end;

procedure TFrm_CUT.cbKeynumber01Click(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
  iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then Exit;
  if GT_USERIF.LV = '60' then
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      if TcxComboBox(Sender).Text = '전체' then
      begin
				sName := '[' + GT_SEL_BRNO.HDNO + '] 전체';
        sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := '';
      end else
      begin
        sHdNo := GT_SEL_BRNO.HDNO;
				if cxPageControl1.ActivePageIndex in [11, 10] then
        begin
          sBrNo := GT_SEL_BRNO.BrNo;
        end else
        begin
          if (TcxComboBox(Sender).Properties.Items.Count > 1) and (TcxComboBox(Sender).ItemIndex > 0) then
          begin
            if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
							sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(TcxComboBox(Sender).Text)]
            else
              sBrNo := scb_DsBranchCode.Strings[TcxComboBox(Sender).ItemIndex - 1]
          end else
          begin
            if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
							sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(TcxComboBox(Sender).Text)]
						else
              sBrNo := scb_DsBranchCode.Strings[TcxComboBox(Sender).ItemIndex];
          end;  
        end;
				iIdx := scb_BranchCode.IndexOf(sBrNo);
        if iIdx >= 0 then
					sBrName := scb_BranchName[iIdx]
        else
					sBrName := '';
				sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
			end;
    end else
    begin
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
      iIdx := scb_BranchCode.IndexOf(sBrNo);
      if iIdx >= 0 then
        sBrName := scb_BranchName[iIdx]
      else
        sBrName := '';
      sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
    end;
  end else
  begin
    sHdNo := GT_SEL_BRNO.HDNO;
    sBrNo := GT_SEL_BRNO.BrNo;
		iIdx := scb_BranchCode.IndexOf(sBrNo);
		if iIdx >= 0 then
			sBrName := scb_BranchName[iIdx]
		else
      sBrName := '';
    sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
  end;
	case cxPageControl1.ActivePageIndex of
    0:
      begin
        lbCustCompany01.Caption := sName;
				cxHdNo1.Text := sHdNo;
				cxBrNo1.Text := sBrNo;
				proc_bubin_init;
			end;
    1:
			begin
				lbCustCompany02.Caption := sName;
				cxHdNo2.Text := sHdNo;
				cxBrNo2.Text := sBrNo;
      end;
    2:
      begin
				lbCustCompany03.Caption := sName;
				cxHdNo3.Text := sHdNo;
				cxBrNo3.Text := sBrNo;
      end;
    3:
      begin
				lbCustCompany04.Caption := sName;
				cxHdNo4.Text := sHdNo;
				cxBrNo4.Text := sBrNo;
				proc_bubin_init;
      end;
		4:
      begin
				lbCustCompany05.Caption := sName;
				cxHdNo5.Text := sHdNo;
				cxBrNo5.Text := sBrNo;
				if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
				begin
					ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
										+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');
					Exit;
				end;
				proc_VirtureNum_init;
			end;
		5:
			begin
				lbCustCompany06.Caption := sName;
				cxHdNo6.Text := sHdNo;
				cxBrNo6.Text := sBrNo;
			end;
		6:
			begin
				lbCustCompany07.Caption := sName;
			end;
		7:
			begin
				lbCustCompany08.Caption := sName;
				cxHdNo8.Text := sHdNo;
				cxBrNo8.Text := sBrNo;
			end;
		8:
			begin
				lbCustCompany09.Caption := sName;
				cxHdNo9.Text := sHdNo;
				cxBrNo9.Text := sBrNo;
			end;
    9:
      begin
				lbCustCompany10.Caption := sName;
				cxHdNo10.Text := sHdNo;
				cxBrNo10.Text := sBrNo;
			end;
		10:
			begin
				lbCustCompany11.Caption := sName;
				cxHdNo11.Text := sHdNo;
				cxBrNo11.Text := sBrNo;
			end;
	end;
end;

procedure TFrm_CUT.cbKeynumber01PropertiesChange(Sender: TObject);
begin
	ChageCustLevel(TcxComboBox(Sender).Text, cbLevel01);
end;

procedure TFrm_CUT.cbKeynumber02PropertiesChange(Sender: TObject);
begin
	ChageCustLevel(TcxComboBox(Sender).Text, cb_S_Grad);
end;

procedure TFrm_CUT.cbKeynumber04PropertiesChange(Sender: TObject);
begin
	ChageCustLevel(TcxComboBox(Sender).Text, cbLevel04);
end;

procedure TFrm_CUT.cbKeynumber06PropertiesChange(Sender: TObject);
begin
	ChageCustLevel(TcxComboBox(Sender).Text, cbLevel06);
end;

procedure TFrm_CUT.cbLevel01MouseEnter(Sender: TObject);
begin
  TcxComboBox(Sender).Hint := TcxComboBox(Sender).Text;
end;

procedure TFrm_CUT.cbMileType0APropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblMileUnit0A.Caption := '%'
                                       else lblMileUnit0A.Caption := '원';
end;

procedure TFrm_CUT.cbMileType0PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblMileUnit0.Caption := '%'
                                       else lblMileUnit0.Caption := '원';
end;

procedure TFrm_CUT.cbMileType1APropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblMileUnit1A.Caption := '%'
                                       else lblMileUnit1A.Caption := '원';
end;

procedure TFrm_CUT.cbMileType1PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblMileUnit1.Caption := '%'
                                       else lblMileUnit1.Caption := '원';
end;

procedure TFrm_CUT.cbMileType3APropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblMileUnit3A.Caption := '%'
                                       else lblMileUnit3A.Caption := '원';
end;

procedure TFrm_CUT.cbMileType3PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblMileUnit3.Caption := '%'
                                       else lblMileUnit3.Caption := '원';
end;

procedure TFrm_CUT.cbPostType0APropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblPostUnit0A.Caption := '%'
                                       else lblPostUnit0A.Caption := '원';
end;

procedure TFrm_CUT.cbPostType0PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblPostUnit0.Caption := '%'
                                       else lblPostUnit0.Caption := '원';
end;

procedure TFrm_CUT.cbPostType1APropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblPostUnit1A.Caption := '%'
                                       else lblPostUnit1A.Caption := '원';
end;

procedure TFrm_CUT.cbPostType1PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblPostUnit1.Caption := '%'
                                       else lblPostUnit1.Caption := '원';
end;

procedure TFrm_CUT.cbPostType3APropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblPostUnit3A.Caption := '%'
                                       else lblPostUnit3A.Caption := '원';
end;

procedure TFrm_CUT.cbPostType3PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 2 then lblPostUnit3.Caption := '%'
                                       else lblPostUnit3.Caption := '원';
end;

procedure TFrm_CUT.Cb_DelDateClick(Sender: TObject);
begin
	if CB_DelDate.Checked then
  begin
    Pnl_Chk3.Enabled := True;
    de_3stDate.Enabled := True;
    de_3edDate.Enabled := True;
  end else
  begin
    Pnl_Chk3.Enabled := False;
    de_3stDate.Enabled := False;
    de_3edDate.Enabled := False;
  end;
end;

procedure TFrm_CUT.CB_SetDateClick(Sender: TObject);
begin
	if CB_SetDate.Checked then
  begin
		Pnl_Chk1.Enabled := True;
    de_1stDate.Enabled := True;
    de_1edDate.Enabled := True;
  end else
  begin
    Pnl_Chk1.Enabled := False;
		de_1stDate.Enabled := False;
    de_1edDate.Enabled := False;
  end;
end;

procedure TFrm_CUT.cb_st_cityPropertiesChange(Sender: TObject);
var
  i, k: Integer;
  sl_City: TStringList;
begin
  try
    if cb_st_city.Tag = 1 then
      Exit;
    cb_st_ward.Properties.Items.Clear;
    cb_st_ward.Properties.Items.Add('지역전체');
    sl_City := TStringList.Create;
    sl_city.Clear;
    sl_city.Assign(GT_MAPOrigi.slCity); // 20080616.
    if cb_st_city.ItemIndex > 1 then
    begin
      for k := 0 to 2 do
      begin
        i := sl_City.IndexOf(cb_st_City.Text);
        if i > 1 then
        begin
          if (cb_st_City.Text <> sl_city.Strings[i - 1]) and
            (cb_st_City.Text = sl_city.Strings[i])
            and (cb_st_City.Text <> sl_city.Strings[i + 1]) then
          begin
            sl_City.Delete(i);
            sl_City.Insert(i, ' ');
          end;
        end;
      end;
    end;
    if cb_st_city.ItemIndex = 0 then
      Exit;
    // 20080616.
    for i := sl_city.IndexOf(cb_st_City.Text) to GT_MAPOrigi.slCity.Count - 1 do
    begin
      if i > 1 then
      begin
        if (cb_st_City.Text <> GT_MAPOrigi.slCity[i]) and (cb_st_City.Text <> GT_MAPOrigi.slCity[i + 1]) then
          break;
      end;
      if (cb_st_city.Text = sl_city.Strings[i]) and (cb_st_Ward.Properties.Items.IndexOf(GT_MAPOrigi.slWard[i]) < 0) and (GT_MAPOrigi.slWard[i] <> '' ) then
        cb_st_Ward.Properties.Items.Add(GT_MAPOrigi.slWard[i]);
    end;
    cb_st_Ward.ItemIndex := 0;
  finally
    freeandnil(sl_city);
  end;
end;

procedure TFrm_CUT.cb_S_Cnt1PropertiesChange(Sender: TObject);
begin
  if (Trim(cb_S_Cnt1.Text) <> '') or (Trim(cb_S_Cnt2.Text) <> '')
    or (Trim(cb_S_CCnt1.Text) <> '') or (Trim(cb_S_CCnt2.Text) <> '') then
  begin
		cxDate2_1S.Enabled := False;
		cxDate2_1E.Enabled := False;
		cxDate2_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
		cxDate2_1E.Date := cxDate2_1S.Date + 1;
    chk_Before.Checked := False;
    chk_Before_Finish.Checked := False;
  end else
  begin
		cxDate2_1S.Enabled := True;
		cxDate2_1E.Enabled := True;
  end;
end;

procedure TFrm_CUT.cb_S_GradClick(Sender: TObject);
begin
  if cb_S_Grad.ItemIndex > 0 then
  begin
		cxDate2_1S.Enabled := False;
		cxDate2_1E.Enabled := False;
		cxDate2_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
		cxDate2_1E.Date := cxDate2_1S.Date + 1;
  end else
  begin
		cxDate2_1S.Enabled := True;
    cxDate2_1E.Enabled := True;
  end;
end;

procedure TFrm_CUT.CB_UseDateClick(Sender: TObject);
begin
	if CB_UseDate.Checked then
	begin
    Pnl_Chk2.Enabled := True;
    de_2stDate.Enabled := True;
    de_2edDate.Enabled := True;
  end else
  begin
    Pnl_Chk2.Enabled := False;
    de_2stDate.Enabled := False;
    de_2edDate.Enabled := False;
  end;
end;

procedure TFrm_CUT.ChageCustLevel(AKeyNumber: string; ACombo: TcxComboBox);
var
  I : Integer;
  CustGroup: TCustGroup;
begin
	ACombo.Properties.Items.Clear;
  SCboLevelSeq.Clear;

  ACombo.Properties.Items.Add('전체');
	SCboLevelSeq.Add('');

  if AKeyNumber = '전체' then
  begin
    for I := 0 to Length(scb_CustGroupInfo) - 1 do
    begin
      ACombo.Properties.Items.Add(Format('%s - %s', [scb_CustGroupInfo[i].GroupName, scb_CustGroupInfo[i].LevelName]));
      SCboLevelSeq.Add(scb_CustGroupInfo[I].LevelSeq);
    end;
  end else
  begin
    GetCustGroup(AKeyNumber, CustGroup);

    for i := 0 to Length(CustGroup.LevelInfo) - 1 do
    begin
      ACombo.Properties.Items.Add(Format('%s - %s', [CustGroup.GroupName, CustGroup.LevelInfo[i].LevelName]));
      SCboLevelSeq.Add(CustGroup.LevelInfo[i].LevelSeq);
    end;
  end;

  ACombo.ItemIndex := 0;
end;

procedure TFrm_CUT.chkCust04Type12Click(Sender: TObject);
begin
  cxGridSelectAll(CustView4, TcxCheckBox(Sender).Checked);
end;

procedure TFrm_CUT.chkCust06Type04Click(Sender: TObject);
begin
  cxGridSelectAll(CustView6, TcxCheckBox(Sender).Checked);
end;

procedure TFrm_CUT.chkCust08Type01Click(Sender: TObject);
begin
	if chkCust08Type01.Checked then
	begin
		if cxRadioButton10.Checked then
		begin
			cxRadioButton13.Checked := True;
			cxRadioButton13Click(cxRadioButton13);
			cxRadioButton16.Checked := True;
			cxRadioButton16Click(cxRadioButton16);
			cxRadioButton19.Checked := True;
			cxRadioButton19Click(cxRadioButton19);
		end
		else
			if cxRadioButton11.Checked then
		begin
			cxRadioButton14.Checked := True;
			cxRadioButton13Click(cxRadioButton14);
			cxRadioButton17.Checked := True;
			cxRadioButton16Click(cxRadioButton17);
			cxRadioButton20.Checked := True;
			cxRadioButton19Click(cxRadioButton20);
    end
    else
      if cxRadioButton12.Checked then
    begin
      cxRadioButton15.Checked := True;
      cxRadioButton13Click(cxRadioButton15);
      cxRadioButton18.Checked := True;
			cxRadioButton16Click(cxRadioButton18);
			cxRadioButton21.Checked := True;
      cxRadioButton19Click(cxRadioButton21);
    end;
		cxTextEdit4.Value := cxTextEdit1.Value;
		cxTextEdit5.Value := cxTextEdit2.Value;
		cxTextEdit6.Text := cxTextEdit3.Text;
    cxTextEdit7.Value := cxTextEdit1.Value;
		cxTextEdit8.Value := cxTextEdit2.Value;
    cxTextEdit9.Text := cxTextEdit3.Text;
    cxTextEdit10.Value := cxTextEdit1.Value;
    cxTextEdit11.Value := cxTextEdit2.Value;
    cxTextEdit12.Text := cxTextEdit3.Text;
	end;
end;

procedure TFrm_CUT.chkBRNoMileClick(Sender: TObject);
begin
  if chkBRNoMile.Checked then
  begin
    chkBRNoMile.Tag := 1;

    cxTextEdit7.Value := 0;
    cxTextEdit8.Value := 0;
    cxTextEdit9.Text := '';
    cxLabel148.Caption := '원';
    cxRadioButton16.Checked := True;
  end;
end;

procedure TFrm_CUT.chkBubinNameClick(Sender: TObject);
begin
	if chkBubinName.Checked then
  begin
    cbBCustList.Enabled := True;
		btn_1_3.Enabled := True;
	end else
  begin
    cbBCustList.Enabled := False;
		btn_1_3.Enabled := False;
  end;
end;

procedure TFrm_CUT.chkCust03Type01Click(Sender: TObject);
begin
  if chkCust03Type01.Checked then
  begin
    Pnl_A3Chk1.Enabled := True;
    de_A31stDate.Enabled := True;
    de_A31edDate.Enabled := True;
  end else
  begin
    Pnl_A3Chk1.Enabled := False;
    de_A31stDate.Enabled := False;
    de_A31edDate.Enabled := False;
  end;
end;

procedure TFrm_CUT.chkCust03Type02Click(Sender: TObject);
begin
  if chkCust03Type02.Checked then
  begin
    Pnl_A3Chk3.Enabled := True;
    de_A33stDate.Enabled := True;
    de_A33edDate.Enabled := True;
  end else
  begin
    Pnl_A3Chk3.Enabled := False;
    de_A33stDate.Enabled := False;
    de_A33edDate.Enabled := False;
  end;
end;

procedure TFrm_CUT.chkCust03Type03Click(Sender: TObject);
begin
  if chkCust03Type03.Checked then
  begin
    Pnl_A3Chk2.Enabled := True;
    de_A32stDate.Enabled := True;
    de_A32edDate.Enabled := True;
  end else
  begin
    Pnl_A3Chk2.Enabled := False;
    de_A32stDate.Enabled := False;
    de_A32edDate.Enabled := False;
  end;
end;

procedure TFrm_CUT.chkCust03Type07Click(Sender: TObject);
begin
  cxGridSelectAll(CustView3, TcxCheckBox(Sender).Checked);
end;

procedure TFrm_CUT.chkCust04Type01Click(Sender: TObject);
begin
  if chkCust04Type01.Checked then
  begin
		cxDate4_1S.Enabled := True;
		cxDate4_1E.Enabled := True;
    btn_Date4_1.Enabled := True;
  end else
  begin
		cxDate4_1S.Enabled := False;
		cxDate4_1E.Enabled := False;
    btn_Date4_1.Enabled := False;
  end;
end;

procedure TFrm_CUT.chkCust04Type02Click(Sender: TObject);
begin
  if chkCust04Type02.Checked then
  begin
		cxDate4_2S.Enabled := True;
		cxDate4_2E.Enabled := True;
    btn_Date4_2.Enabled := True;
	end else
	begin
		cxDate4_2S.Enabled := False;
		cxDate4_2E.Enabled := False;
    btn_Date4_2.Enabled := False;
	end;
end;

procedure TFrm_CUT.chkCust04Type03Click(Sender: TObject);
begin
  if chkCust04Type03.Checked then
  begin
    cbArea03.Enabled := True;
    cbArea04.Enabled := True;
    rbCust04Type01.Enabled := True;
    rbCust04Type02.Enabled := True;
    cbArea03.Tag := 1;
    cbArea03.ItemIndex := 0;
    cbArea03.Tag := 0;
  end else
  begin
    cbArea03.Enabled := False;
    cbArea04.Enabled := False;
    rbCust04Type01.Enabled := False;
    rbCust04Type02.Enabled := False;
  end;
end;

procedure TFrm_CUT.chkCust04Type04Click(Sender: TObject);
begin
  if chkCust04Type04.Checked then
  begin
    edCust04Type01.Enabled := True;
    edCust04Type02.Enabled := True;
  end else
  begin
    edCust04Type01.Enabled := False;
    edCust04Type02.Enabled := False;
  end;
end;

procedure TFrm_CUT.chkCust04Type05Click(Sender: TObject);
begin
  if chkCust04Type05.Checked then
  begin
    edCust04Type03.Enabled := True;
    edCust04Type04.Enabled := True;
  end else
  begin
    edCust04Type03.Enabled := False;
    edCust04Type04.Enabled := False;
  end;
end;

procedure TFrm_CUT.chkCust04Type07Click(Sender: TObject);
begin
  if chkCust04Type07.Checked then
  begin
		cbBCustList4.Enabled := True;
		btn_4_1.Enabled := True;
  end else
  begin
    cbBCustList4.Enabled := False;
		btn_4_1.Enabled := False;
  end;
end;

procedure TFrm_CUT.chkCust04Type09Click(Sender: TObject);
begin
  if chkCust04Type09.Checked then
  begin
		cxDate4_3S.Enabled := True;
		cxDate4_3E.Enabled := True;
    btn_Date4_3.Enabled := True;
  end else
  begin
		cxDate4_3S.Enabled := False;
		cxDate4_3E.Enabled := False;
    btn_Date4_3.Enabled := False;
  end;
end;

procedure TFrm_CUT.chkCust09Type01Click(Sender: TObject);
begin
  cxGridSelectAll(CustView9, TcxCheckBox(Sender).Checked);
end;

procedure TFrm_CUT.chkCust09Type02Click(Sender: TObject);
begin
	if chkCust09Type02.Checked then
  begin
		cxDate9_1S.Enabled := True;
		cxDate9_1E.Enabled := True;
    btn_Date9_1.Enabled := True;
  end else
  begin
		cxDate9_1S.Enabled := False;
		cxDate9_1E.Enabled := False;
    btn_Date9_1.Enabled := False;
  end;
end;

procedure TFrm_CUT.chkCust09Type03Click(Sender: TObject);
begin
	if chkCust09Type03.Checked then
  begin
		cxDate9_2S.Enabled := True;
		cxDate9_2E.Enabled := True;
    btn_Date9_2.Enabled := True;
  end else
  begin
		cxDate9_2S.Enabled := False;
		cxDate9_2E.Enabled := False;
    btn_Date9_2.Enabled := False;
  end;
end;

procedure TFrm_CUT.chkCust10Type02Click(Sender: TObject);
begin
	if chkCust10Type02.Checked then
  begin
		cxDate10_1S.Enabled := True;
		cxDate10_1E.Enabled := True;
    btn_Date10_1.Enabled := True;
  end else
	begin
		cxDate10_1S.Enabled := False;
		cxDate10_1E.Enabled := False;
    btn_Date10_1.Enabled := False;
  end;
end;

procedure TFrm_CUT.chkLTNoMileClick(Sender: TObject);
begin
	if (chkLTNoMile.checked) and (chkCDNoMile.checked) and (cxCheckBox3.checked) then
	begin
		cxCheckBox3.checked := False;
	end;
	if (chkLTNoMile.checked) and (Not chkCDNoMile.checked) then
	begin
		cxCheckBox3.Caption := '"후불(카드)" 별도 적립 사용';		
	end else
	if (Not chkLTNoMile.checked) and (chkCDNoMile.checked) then
	begin
		cxCheckBox3.Caption := '"후불" 별도 적립 사용';
	end	else
	if (Not chkLTNoMile.checked) and (Not chkCDNoMile.checked) then
	begin
		cxCheckBox3.Caption := '"후불" + "후불(카드)" 별도 적립 사용';		
	end	else
	if (chkLTNoMile.checked) and (chkCDNoMile.checked) then
	begin
		cxCheckBox3.Caption := '"후불" + "후불(카드)" 별도 적립 사용';		
	end;
end;

procedure TFrm_CUT.chk_All_SelectClick(Sender: TObject);
begin
	cxGridSelectAll(CustView2, TcxCheckBox(Sender).Checked);
end;

procedure TFrm_CUT.chk_BeforeClick(Sender: TObject);
begin
	if bTag_Page2 then Exit;
	if chk_Before.Checked then
  begin
//    chk_Before.Checked := True;
		cxDate2_1S.Enabled := False;
		cxDate2_1E.Enabled := False;
		cxDate2_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
		cxDate2_1E.Date := cxDate2_1S.Date + 1;
//////////////////////////체크박스 연동안되도록 //////////////////////////
		bTag_Page2 := True;
		chk_Before_New.Checked := False;
		chk_Before_Finish.Checked := False;
		bTag_Page2 := False;
//////////////////////////체크박스 연동안되도록 //////////////////////////
		GroupBox4.Enabled := False;
		cb_st_city.Enabled := False;
    cb_st_ward.Enabled := False;
    cb_S_Cnt1.Text := '';
    cb_S_Cnt2.Text := '';
    cb_s_CCnt1.Text := '';
    cb_s_CCnt2.Text := '';
    cb_S_Cnt1.Enabled := False;
		cb_S_Cnt2.Enabled := False;
    cb_S_CCnt1.Enabled := False;
    cb_S_CCnt2.Enabled := False;
    cb_S_Grad.Enabled := False;
    rg_SType.Enabled := False;
    rrb_st_all.Checked := True;
    rrb_st_comp.Checked := False;
    rrb_st_cancel.Checked := False;
    rrb_st_req.Checked := False;
  end else
  begin
//    chk_Before.Checked := False;
		cxDate2_1S.Enabled := True;
		cxDate2_1E.Enabled := True;
		cxDate2_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
		cxDate2_1E.Date := cxDate2_1S.Date + 1;
//////////////////////////체크박스 연동안되도록 //////////////////////////
		bTag_Page2 := True;
		chk_Before_New.Checked := False;
		chk_Before_Finish.Checked := False;
		bTag_Page2 := False;
//////////////////////////체크박스 연동안되도록 //////////////////////////
		GroupBox4.Enabled := True;
    cb_st_city.Enabled := True;
    cb_st_ward.Enabled := True;
    cb_S_Cnt1.Text := '';
    cb_S_Cnt2.Text := '';
    cb_s_CCnt1.Text := '';
    cb_s_CCnt2.Text := '';
    cb_S_Cnt1.Enabled := True;
    cb_S_Cnt2.Enabled := True;
    cb_S_CCnt1.Enabled := True;
    cb_S_CCnt2.Enabled := True;
    cb_S_Grad.Enabled := True;
    rg_SType.Enabled := True;
    rrb_st_all.Checked := True;
    rrb_st_comp.Checked := False;
    rrb_st_cancel.Checked := False;
    rrb_st_req.Checked := False;

    cbGubun2_1.ItemIndex := 0;
    if rbUseList01.Checked then
    begin
      cb_st_city.Enabled := True;
      cb_st_ward.Enabled := True;
      cb_S_Cnt1.Enabled := False;
      cb_S_Cnt2.Enabled := False;
      cb_S_CCnt1.Enabled := False;
      cb_S_CCnt2.Enabled := False;
      cb_S_Grad.Enabled := False;
      GroupBox4.Enabled := True;
      rrb_st_all.Checked := True;
    end else
    begin
      cb_st_city.Enabled := False;
      cb_st_ward.Enabled := False;
      cbKeynumber02.ItemIndex := 0;
      cbGubun2_1.ItemIndex := 0;
      cb_Sms_Gubun.ItemIndex := 0;
      cb_S_Grad.ItemIndex := 0;
      cb_Sms_Gubun.Enabled := True;
      cb_S_Cnt1.Enabled := True;
      cb_S_Cnt2.Enabled := True;
      cb_S_CCnt1.Enabled := True;
      cb_S_CCnt2.Enabled := True;
      cb_S_Grad.Enabled := True;
      GroupBox4.Enabled := False;
      rrb_st_all.Checked := True;
      rrb_st_comp.Checked := False;
      rrb_st_cancel.Checked := False;
      rrb_st_req.Checked := False;
    end;
  end;
end;

procedure TFrm_CUT.chk_Before_NewClick(Sender: TObject);
begin
	if bTag_Page2 then exit;

	if chk_Before_New.Checked then
  begin
//    chk_Before_New.Checked := True;
		cxDate2_1S.Enabled := False;
    cxDate2_1E.Enabled := False;
		cxDate2_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
		cxDate2_1E.Date := cxDate2_1S.Date + 1;
//////////////////////////체크박스 연동안되도록 //////////////////////////
		bTag_Page2 := True;
		chk_Before.Checked := False;
		chk_Before_Finish.Checked := False;
		bTag_Page2 := False;
//////////////////////////체크박스 연동안되도록 //////////////////////////
		GroupBox4.Enabled := False;
    cb_st_city.Enabled := False;
    cb_st_ward.Enabled := False;
    cb_S_Cnt1.Text := '';
    cb_S_Cnt2.Text := '';
    cb_s_CCnt1.Text := '';
    cb_s_CCnt2.Text := '';
    cb_S_Cnt1.Enabled := False;
    cb_S_Cnt2.Enabled := False;
    cb_S_CCnt1.Enabled := False;
    cb_S_CCnt2.Enabled := False;
    cb_S_Grad.Enabled := False;
    rg_SType.Enabled := False;
    rrb_st_all.Checked := True;
    rrb_st_comp.Checked := False;
    rrb_st_cancel.Checked := False;
    rrb_st_req.Checked := False;
  end else
  begin
//    chk_Before_New.Checked := False;
		cxDate2_1S.Enabled := True;
		cxDate2_1E.Enabled := True;
		cxDate2_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
		cxDate2_1E.Date := cxDate2_1S.Date + 1;
//////////////////////////체크박스 연동안되도록 //////////////////////////
		bTag_Page2 := True;
		chk_Before.Checked := False;
		chk_Before_Finish.Checked := False;
		bTag_Page2 := False;
//////////////////////////체크박스 연동안되도록 //////////////////////////
		GroupBox4.Enabled := True;
    cb_st_city.Enabled := True;
    cb_st_ward.Enabled := True;
    cb_S_Cnt1.Text := '';
    cb_S_Cnt2.Text := '';
    cb_s_CCnt1.Text := '';
    cb_s_CCnt2.Text := '';
    cb_S_Cnt1.Enabled := True;
    cb_S_Cnt2.Enabled := True;
    cb_S_CCnt1.Enabled := True;
    cb_S_CCnt2.Enabled := True;
    cb_S_Grad.Enabled := True;
    rg_SType.Enabled := True;
    rrb_st_all.Checked := True;
    rrb_st_comp.Checked := False;
    rrb_st_cancel.Checked := False;
    rrb_st_req.Checked := False;

		cbGubun2_1.ItemIndex := 0;
    if rbUseList01.Checked then
    begin
      cb_st_city.Enabled := True;
      cb_st_ward.Enabled := True;
      cb_S_Cnt1.Enabled := False;
      cb_S_Cnt2.Enabled := False;
      cb_S_CCnt1.Enabled := False;
      cb_S_CCnt2.Enabled := False;
      cb_S_Grad.Enabled := False;
      GroupBox4.Enabled := True;
      rrb_st_all.Checked := True;
    end else
    begin
      cb_st_city.Enabled := False;
      cb_st_ward.Enabled := False;
      cbKeynumber02.ItemIndex := 0;
      cbGubun2_1.ItemIndex := 0;
      cb_Sms_Gubun.ItemIndex := 0;
      cb_S_Grad.ItemIndex := 0;
      cb_Sms_Gubun.Enabled := True;
      cb_S_Cnt1.Enabled := True;
      cb_S_Cnt2.Enabled := True;
      cb_S_CCnt1.Enabled := True;
      cb_S_CCnt2.Enabled := True;
      cb_S_Grad.Enabled := True;
      GroupBox4.Enabled := False;
      rrb_st_all.Checked := True;
      rrb_st_comp.Checked := False;
      rrb_st_cancel.Checked := False;
      rrb_st_req.Checked := False;
    end;
  end;
end;

procedure TFrm_CUT.CustSetDateControl(AGubun: Integer; AStDt, AEdDt: TcxDateEdit);
begin
	case AGubun of
	 0: //오늘
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
			AEdDt.Date := AStDt.Date + 1;
		end;
	 1: //어제
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
			AEdDt.Date := AStDt.Date + 1;
		end;
	 2: //최근일주일
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
			AEdDt.Date := AStDt.Date + 7;
		end;
	 3: //1~31일
		begin
			AStDt.Date := StartOfTheMonth(now);
			AEdDt.Date := EndOfTheMonth(Now);
		end;
	 11: //최근한달
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
			AEdDt.Date := AStDt.Date + 31;
    end;
	 12: //3개월
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 91;
			AEdDt.Date := AStDt.Date + 91;
		end;
	 13: //6개월
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 181;
			AEdDt.Date := AStDt.Date + 181;
		end;
	 14: //1년
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 365;
      AEdDt.Date := AStDt.Date + 365;
    end;
  end;
end;

procedure TFrm_CUT.CustView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iKeyNum, iSeq, iRow: Integer;
  sBrNo, sKeyNum, sSeq: string;
begin
	// 권한 적용 (지호 2008-08-19)
  if TCK_USER_PER.COM_CustModify <> '1' then
  begin
    GMessagebox('고객 수정권한이 없습니다.', CDMSE);
    Exit;
  end;

	iRow := CustView1.DataController.FocusedRecordIndex;
	if iRow = -1 then
		Exit;

	iBrNo   := CustView1.GetColumnByFieldName('지사코드').Index;
	iKeyNum := CustView1.GetColumnByFieldName('대표번호').Index;
	iSeq    := CustView1.GetColumnByFieldName('SEQ').Index;
	sBrNo   := CustView1.DataController.Values[iRow, iBrNo];
	sKeyNum := CustView1.DataController.Values[iRow, iKeyNum];
	sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
	sSeq    := CustView1.DataController.Values[iRow, iSeq];

  // 6 : 수정창에서 고객수정 4 : 접수창에서 고객수정
  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Self);
	Frm_CUT011.FControlInitial(False);
	Frm_CUT011.Tag := 6;
	Frm_CUT011.Hint := IntToStr(Self.Tag);
	Frm_CUT011.clbCuSeq.Caption := sSeq;
	Frm_CUT011.proc_search_brKeyNum(sBrNo, sKeyNum);

//	Frm_CUT011.Left := (Screen.Width  - Frm_CUT011.Width) div 2;
//	Frm_CUT011.top  := (Screen.Height - Frm_CUT011.Height) div 2;
//  if Frm_CUT011.top <= 10 then Frm_CUT011.top := 10;

  Frm_CUT011.Show;
	Frm_CUT011.proc_cust_Intit;
end;

procedure TFrm_CUT.CustView1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUT.CustView1ColumnPosChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	proc_CustCounsel_Save;
end;

procedure TFrm_CUT.CustView1DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(CustView1, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUT.CustView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and ((Key = Ord('c')) or (Key = Ord('C')) or (Key = VK_INSERT)) then
  begin
    ShowMessage('고객 정보를 복사 할 수 없습니다.');
    Key := 0;
  end;

  if Key = VK_CONTROL then
  begin
		gbControlKeyDown := True;
    CustView1.OptionsSelection.CellMultiSelect := False;
		CustView1.OptionsSelection.CellSelect := False;
    CustView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUT.CustView1KeyUp(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := False;
  end;
end;

procedure TFrm_CUT.CustView1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView1.OptionsSelection.CellMultiSelect := True;
    CustView1.OptionsSelection.CellSelect := True;
    CustView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUT.CustView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
	iCU_tel1, iCU_tel2, iCU_tel3, iCU_SMS1, iCU_SMS2, iCU_SMS3, iRow : Integer;
	sCU_SMS1, sCU_SMS2, sCU_SMS3 : string;
begin
	iCU_tel1 := CustView1.GetColumnByFieldName('고객번호').Index;
	iCU_tel2 := CustView1.GetColumnByFieldName('고객번호2').Index;
	iCU_tel3 := CustView1.GetColumnByFieldName('고객번호3').Index;
	iCU_SMS1 := CustView1.GetColumnByFieldName('SMS수신거부').Index;
	iCU_SMS2 := CustView1.GetColumnByFieldName('SMS수신거부2').Index;
	iCU_SMS3 := CustView1.GetColumnByFieldName('SMS수신거부3').Index;

	iRow := CustView1.DataController.GetRowInfo(ARecord.Index).RecordIndex;
	sCU_SMS1 := ''; sCU_SMS2 := ''; sCU_SMS3 := '';

	sCU_SMS1 := CustView1.DataController.Values[iRow, iCU_SMS1];
	sCU_SMS2 := CustView1.DataController.Values[iRow, iCU_SMS2];
	sCU_SMS3 := CustView1.DataController.Values[iRow, iCU_SMS3];

	if (AItem.Index = iCU_tel1) and (sCU_SMS1 = '수신') then
	begin
		AStyle := Frm_Main.cxStyle2;
	end;
	if (AItem.Index = iCU_tel2) and (sCU_SMS2 = 'y') then
	begin
		AStyle := Frm_Main.cxStyle2;
	end;
	if (AItem.Index = iCU_tel3) and (sCU_SMS3 = 'y') then
	begin
		AStyle := Frm_Main.cxStyle2;
	end;
end;

procedure TFrm_CUT.CustView2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and ((Key = Ord('c')) or (Key = Ord('C'))) then
  begin
    ShowMessage('고객 정보를 복사 할 수 없습니다.');
    Key := 0;
  end;

  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    CustView2.OptionsSelection.CellMultiSelect := False;
    CustView2.OptionsSelection.CellSelect := False;
    CustView2.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUT.CustView2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := False;
  end;
end;

procedure TFrm_CUT.CustView2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView2.OptionsSelection.CellMultiSelect := True;
    CustView2.OptionsSelection.CellSelect := True;
    CustView2.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUT.CustView3ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUT.CustView3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and ((Key = Ord('c')) or (Key = Ord('C'))) then
  begin
    ShowMessage('고객 정보를 복사 할 수 없습니다.');
    Key := 0;
  end;

  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    CustView3.OptionsSelection.CellMultiSelect := False;
    CustView3.OptionsSelection.CellSelect := False;
    CustView3.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUT.CustView3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView3.OptionsSelection.CellMultiSelect := True;
    CustView3.OptionsSelection.CellSelect := True;
    CustView3.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUT.CustView6ColumnHeaderClick(Sender: TcxGridTableView;
	AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUT.CustView6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if (ssCtrl in Shift) and ((Key = Ord('c')) or (Key = Ord('C'))) then
  begin
    ShowMessage('고객 정보를 복사 할 수 없습니다.');
    Key := 0;
  end;

  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    CustView6.OptionsSelection.CellMultiSelect := False;
		CustView6.OptionsSelection.CellSelect := False;
		CustView6.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUT.CustView6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView6.OptionsSelection.CellMultiSelect := True;
    CustView6.OptionsSelection.CellSelect := True;
    CustView6.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUT.CustView9CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iRow: Integer;
  sBrNo, sSeq, sHdno, sType, sName, sBrName,
  sTel, sInfo, sTotalMlg, sCurMlg, sBrMlg, sCnt, sPrize: string;
begin
	iRow := CustView9.DataController.FocusedRecordIndex;
  if iRow = -1 then
    Exit;
  sBrNo := CustView9.DataController.Values[iRow, 2];
  sBrName := CustView9.DataController.Values[iRow, 3];
  sSeq := CustView9.DataController.Values[iRow, 1];
	sHdno := frm_Main.func_search_hdNo(sBrNo);
  sType := CustView9.DataController.Values[iRow, 5];
  sName := CustView9.DataController.Values[iRow, 6];
  sTel := CustView9.DataController.Values[iRow, 7];
  sInfo := CustView9.DataController.Values[iRow, 12];
  sTotalMlg := CustView9.DataController.Values[iRow, 8];
  sCurMlg := CustView9.DataController.Values[iRow, 9];
  sCnt := CustView9.DataController.Values[iRow, 10];
  sBrMlg := CustView9.DataController.Values[iRow, 15];
  sPrize := CustView9.DataController.Values[iRow, 16];

	if ( Not Assigned(Frm_CUT07) ) Or ( Frm_CUT07 = NIl ) then Frm_CUT07 := TFrm_CUT07.Create(Nil);
  Frm_CUT07.cxlbBrNo.Caption := sBrNo;
  Frm_CUT07.cxlbCode.Caption := sSeq;
  Frm_CUT07.cxLabel14.Caption := sHdno;
  Frm_CUT07.cxTextEdit4.Text := sBrName;
  Frm_CUT07.cxedEdit1.Text := sType;
  Frm_CUT07.cxTextEdit1.Text := sName;
  Frm_CUT07.cxTextEdit2.Text := sTel;
  Frm_CUT07.cxmmMemo.Text := sInfo;
	Frm_CUT07.edMileage01.Text := sTotalMlg;
  Frm_CUT07.cxCurrencyEdit1.Text := sCurMlg;
  Frm_CUT07.cxCurrencyEdit2.Text := sBrMlg;
  Frm_CUT07.cxCurrencyEdit3.Text := sCnt;
  Frm_CUT07.cxCurrencyEdit4.Text := '0';
  Frm_CUT07.cxCurrencyEdit5.Text := sBrMlg;
	Frm_CUT07.cxTextEdit3.Text := sPrize;
  Frm_CUT07.Show;
end;

procedure TFrm_CUT.CustView9ColumnHeaderClick(Sender: TcxGridTableView;
	AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_CUT.CustView9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    CustView9.OptionsSelection.CellMultiSelect := False;
    CustView9.OptionsSelection.CellSelect := False;
		CustView9.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUT.CustView9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView9.OptionsSelection.CellMultiSelect := True;
    CustView9.OptionsSelection.CellSelect := True;
		CustView9.OptionsSelection.MultiSelect := True;
	end;
end;

procedure TFrm_CUT.CustView10ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUT.CustView10KeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
		CustView10.OptionsSelection.CellMultiSelect := False;
    CustView10.OptionsSelection.CellSelect := False;
    CustView10.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUT.CustView10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	if (gbControlKeyDown = False) and (Button = mbLeft) then
	begin
		CustView10.OptionsSelection.CellMultiSelect := True;
		CustView10.OptionsSelection.CellSelect := True;
		CustView10.OptionsSelection.MultiSelect := True;
	end;
end;

procedure TFrm_CUT.btn_2_2Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;
	if not chkCust02Type04.Checked then
		CustView2.DataController.SetRecordCount(0);
	proc_GeneralSearch;
end;

procedure TFrm_CUT.btn_2_1Click(Sender: TObject);
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  sBrNo: string;
  sWhere: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
	dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
	begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    Exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
    or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSE);
    Exit;
  end;

  DoubleBuffered := True;
	sBrNo := cxBrNo2.Text;

  if sBrNo <> '' then
		sWhere := ' AND B.HD_NO = ''' + cxHdNo2.Text + ''' AND B.BR_NO = ''' +
			sBrNo + ''' '
	else
		sWhere := ' AND B.HD_NO = ''' + cxHdNo2.Text + ''' ';

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_BRANCH_SMS2, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '5', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '20000', [rfReplaceAll]);

  lbNoSms.Clear;
  Screen.Cursor := crHourGlass;
  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
    begin
      Application.ProcessMessages;
			proc_recieve(slReceive);
    end;
  finally
		frm_Main.proc_SocketWork(True);
    FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUT.btn_2_5Click(Sender: TObject);
begin
	proc_SND_SMS(CustView2);
end;

procedure TFrm_CUT.btn_2_4Click(Sender: TObject);
begin
  if CustView2.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

	grpExcel_OPT.Left := (Width - grpExcel_OPT.Width) div 2;
	grpExcel_OPT.top := (Height - grpExcel_OPT.Height) div 2;
	grpExcel_OPT.Visible := True;
	grpExcel_OPT.BringToFront;
end;

procedure TFrm_CUT.btn_3_1Click(Sender: TObject);
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
  sBrNo: string;
  sWhere: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
	dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    Exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
		or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSE);
    Exit;
  end;

  //////////////////////////////////////////////////////////////////////////////
  // 고객>고급검색]2000건/콜센터(통합)/지사별수신거부고객전체검색
  FExcelDownHigh := Format('%s/지사별 수신거부고객 전체검색', [GetSelBrInfo]);
  //////////////////////////////////////////////////////////////////////////////

  DoubleBuffered := True;
	sBrNo := cxBrNo3.Text;

  if sBrNo <> '' then
		sWhere := ' AND B.HD_NO = ''' + cxHdNo3.Text + ''' AND B.BR_NO = ''' + sBrNo + ''' '
  else
    sWhere := ' AND B.HD_NO = ''' + cxHdNo3.Text + ''' ';

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_BRANCH_SMS2, sQueryTemp);
	ls_TxQry := Format(sQueryTemp, [sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '5', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '20000', [rfReplaceAll]);

  lbNoSms.Clear;
  Screen.Cursor := crHourGlass;
  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
		begin
      Application.ProcessMessages;
			proc_recieve(slReceive);
    end;
  finally
    frm_Main.proc_SocketWork(True);
    FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUT.btn_3_2Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;
	if not chkCust03Type04.Checked then
    CustView3.DataController.SetRecordCount(0);
	proc_HighSearch;
end;

procedure TFrm_CUT.btn_3_4Click(Sender: TObject);
begin
  if CustView3.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

	grpExcel_OPT.Left := (Width - grpExcel_OPT.Width) div 2;
	grpExcel_OPT.top := (Height - grpExcel_OPT.Height) div 2;
	grpExcel_OPT.Visible := True;
	grpExcel_OPT.BringToFront;
end;

procedure TFrm_CUT.btn_3_5Click(Sender: TObject);
begin
  proc_SND_SMS(CustView3, chkCust03Type06.Checked);
end;

procedure TFrm_CUT.btn_4_3Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;
	if not chkCust04Type08.Checked then
		CustView4.DataController.SetRecordCount(0);
	proc_DetailSearch;
end;

procedure TFrm_CUT.btn_4_5Click(Sender: TObject);
begin
  if CustView4.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

	grpExcel_OPT.Left := (Width - grpExcel_OPT.Width) div 2;
	grpExcel_OPT.top := (Height - grpExcel_OPT.Height) div 2;
	grpExcel_OPT.Visible := True;
	grpExcel_OPT.BringToFront;
end;

procedure TFrm_CUT.btn_4_6Click(Sender: TObject);
begin
  proc_SND_SMS(CustView4, chkCust03Type06.Checked);
end;

procedure TFrm_CUT.btn_6_6Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;
	if not chkCust06Type03.Checked then
    CustView6.DataController.SetRecordCount(0);
	proc_SleepSearch;
end;

procedure TFrm_CUT.btn_6_1Click(Sender: TObject);
begin
	cxDate6_1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - StrToIntDef(TcxButton(Sender).Caption, 1);
end;

procedure TFrm_CUT.btn_6_9Click(Sender: TObject);
begin
	proc_SND_SMS(CustView6, chkCust06Type05.Checked);
end;

procedure TFrm_CUT.btn_7_1Click(Sender: TObject);
begin
	RequestDataCustLevel;
end;

procedure TFrm_CUT.btn_7_2Click(Sender: TObject);
begin
	ShowCustLevelWindow('', '', False);
end;

procedure TFrm_CUT.btn_7_3Click(Sender: TObject);
var
  Row: Integer;
  GroupName, GroupSeq: string;
begin
  Row := cxViewCustGroup.DataController.FocusedRecordIndex;

  if Row < 0 then
  begin
    GMessageBox('그룹을 선택해 주세요.', CDMSE);
    Exit;
  end;

  GroupName := cxViewCustGroup.DataController.Values[Row, cxColCGGroupName.Index];
  GroupName := Copy(GroupName, Pos(']', GroupName) + 1, Length(GroupName));
	GroupSeq := cxViewCustGroup.DataController.Values[Row, cxColCGGroupSeq.Index];

  if Application.MessageBox(PChar(Format('[%s]그룹을 삭제할까요?', [GroupName])), CDMSI, MB_YESNO +
    MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    DelCustGroup(GroupSeq);
  end;
end;

procedure TFrm_CUT.btn_7_4Click(Sender: TObject);
var
  Row: Integer;
  GroupName,
  GroupSeq: string;
  bOneYear : Boolean;
begin
	Row := cxViewCustGroup.DataController.FocusedRecordIndex;

  if Row < 0 then
  begin
    GMessageBox('등급 추가할 그룹을 선택해 주세요.', CDMSE);
    Exit;
  end;

  bOneYear := False;
  GroupName := cxViewCustGroup.DataController.Values[Row, cxColCGGroupName.Index];
  GroupName := Copy(GroupName, Pos(']', GroupName) + 1, Length(GroupName));
  if Pos('[최근 1년 유지]', GroupName) > 0 then
  begin
    GroupName := StringReplace(GroupName, ' [최근 1년 유지]', '', [rfReplaceAll]);
    bOneYear := True;
  end;
  GroupSeq := cxViewCustGroup.DataController.Values[Row, cxColCGGroupSeq.Index];

  ShowCustLevelWindow(GroupName, GroupSeq, bOneYear);
end;

procedure TFrm_CUT.btn_7_5Click(Sender: TObject);
var
  Row: Integer;
  GroupName, LevelName, LevelSeq: string;
begin
  Row := cxViewCustGroup.DataController.FocusedRecordIndex;

  if Row < 0 then
  begin
    GMessageBox('삭제하실 등급을 선택해 주세요.', CDMSE);
		Exit;
  end;

  GroupName := cxViewCustGroup.DataController.Values[Row, cxColCGGroupName.Index];
  LevelName := cxViewCustGroup.DataController.Values[Row, cxColCGLevelName.Index];
  LevelSeq := cxViewCustGroup.DataController.Values[Row, cxColCGLevelSeq.Index];

  if Application.MessageBox(PChar(Format('[%s>%s]등급을 삭제할까요?', [GroupName, LevelName])), CDMSI, MB_YESNO +
    MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    DelCustLevel(LevelSeq);
  end;
end;

procedure TFrm_CUT.btn_8_1Click(Sender: TObject);
begin
	proc_MileageSet;
end;

procedure TFrm_CUT.btn_8_2Click(Sender: TObject);
var
	sTemp, XmlData, ErrMsg: string;
	i, ErrCode: integer;
	asParam: array[1..41] of string;
begin
	asParam[1] := cxBrNo8.Text;    //지사코드

	if asParam[1] = '' then
	begin
		GMessagebox('마일리지 설정은 지사를 선택하셔야 합니다.', CDMSE);
		Exit; // [hjf]
	end;

	if (cxCheckBox3.checked) and (cxCurrencyEdit6.Value < 1) then
	begin
		GMessagebox('후불(마일)+후불(카드) 사용시 입력값은 1이상이어야 합니다. ', CDMSE);
		cxCurrencyEdit6.SetFocus;
		Exit;
	end;

	if (cxCheckBox3.checked) and (cxCurrencyEdit6.Value > 100) and (rb_Declining.checked) then
	begin
		GMessagebox('후불(마일)+후불(카드) 정률 사용시 100%를 넘을 수 없습니다.', CDMSE);
		cxCurrencyEdit6.SetFocus;
		Exit;
	end;

	if Not func_EucKr_Check(cxTextEdit3, 0) then Exit;
	if Not func_EucKr_Check(cxTextEdit6, 0) then Exit;
	if Not func_EucKr_Check(cxTextEdit9, 0) then Exit;

	if cxRadioButton10.Checked then asParam[2] := '0' else      //개인-마일리지부여
	if cxRadioButton11.Checked then asParam[2] := '1' else
  if cxRadioButton12.Checked then asParam[2] := '2';

	asParam[3] := StringReplace(cxTextEdit1.Text, ',', '', [rfReplaceAll]);   //개인-마일리지부여 금액
	asParam[4] := StringReplace(cxTextEdit2.Text, ',', '', [rfReplaceAll]);   //개인-지사단위설정금액
	asParam[5] := cxTextEdit3.Text;                                           //개인-지급상품

	if cxRadioButton13.Checked then asParam[6] := '0' else                    //업소-마일리지부여
  if cxRadioButton14.Checked then asParam[6] := '1' else
  if cxRadioButton15.Checked then asParam[6] := '2';

	asParam[7] := StringReplace(cxTextEdit4.Text, ',', '', [rfReplaceAll]);   //업소-마일리지부여 금액
	asParam[8] := StringReplace(cxTextEdit5.Text, ',', '', [rfReplaceAll]);   //업소-지사단위설정금액
	asParam[9] := cxTextEdit6.Text;                                           //업소-지급상품

	if cxRadioButton16.Checked then asParam[10] := '0' else                   //법인-마일리지부여
  if cxRadioButton17.Checked then asParam[10] := '1' else
  if cxRadioButton18.Checked then asParam[10] := '2';

	asParam[11] := StringReplace(cxTextEdit7.Text, ',', '', [rfReplaceAll]);  //법인-마일리지부여 금액
	asParam[12] := StringReplace(cxTextEdit8.Text, ',', '', [rfReplaceAll]);  //법인-지사단위설정금액
	asParam[13] := cxTextEdit9.Text;                                          //법인-지급상품

	if cxRadioButton19.Checked then asParam[14] := '0' else                   //불량-마일리지부여
  if cxRadioButton20.Checked then asParam[14] := '1' else
  if cxRadioButton21.Checked then asParam[14] := '2';

	asParam[15] := StringReplace(cxTextEdit10.Text, ',', '', [rfReplaceAll]); //불량-마일리지부여 금액
	asParam[16] := StringReplace(cxTextEdit11.Text, ',', '', [rfReplaceAll]); //불량-지사단위설정금액
	asParam[17] := cxTextEdit12.Text;                                         //불량-지급상품
	
	if chkCDNoMile.checked = True then asParam[18] := 'n'                     //"후불(카드)"  마일리지 적립 안함
																else asParam[18] := 'y';

	if chkLTNoMile.checked = True then asParam[19] := 'n'                     //"후불" 마일리지 적립안함
                                else asParam[19] := 'y';

	if cxCheckBox5.checked = True then asParam[20] := 'y'                         //개인-1회완료시추가적립
																else asParam[20] := 'n';
	asParam[21] := StringReplace(cxCurrencyEdit1.text, ',', '', [rfReplaceAll]);  //개인-1회완료시추가금액

	if cxCheckBox6.checked = True then asParam[22] := 'y'                         //업소-1회완료시추가적립
																else asParam[22] := 'n';
	asParam[23] := StringReplace(cxCurrencyEdit2.text, ',', '', [rfReplaceAll]);  //업소-1회완료시추가금액

	if cxCheckBox7.checked = True then asParam[24] := 'y'                         //법인-1회완료시추가적립
																else asParam[24] := 'n';
	asParam[25] := StringReplace(cxCurrencyEdit3.text, ',', '', [rfReplaceAll]);  //법인-1회완료시추가금액

	if cxCheckBox8.checked = True then asParam[26] := 'y'                         //불량-1회완료시추가적립
																else asParam[26] := 'n';
	asParam[27] := StringReplace(cxCurrencyEdit4.text, ',', '', [rfReplaceAll]);  //불량-1회완료시추가금액

	if chkReceipNoMile.checked = True then asParam[28] := 'n'                     //"현금영수증" 발행시 마일리지 적립 안함
																		else asParam[28] := 'y';

	asParam[29] := StringReplace(CEMiOver1.Text, ',', '', [rfReplaceAll]);        //개인-오더요금
	asParam[30] := StringReplace(CEMiOver2.Text, ',', '', [rfReplaceAll]);        //개인-오더요금
	asParam[31] := StringReplace(CEMiOver3.Text, ',', '', [rfReplaceAll]);        //개인-오더요금
	asParam[32] := StringReplace(CEMiOver4.Text, ',', '', [rfReplaceAll]);        //개인-오더요금

	if rbPEventY.checked then asParam[33] := 'y'                                  //개인-이벤트횟수
											 else asParam[33] := 'n';
	if rbUEventY.checked then asParam[34] := 'y'                                  //업소-이벤트횟수
											 else asParam[34] := 'n';
	if rbBEventY.checked then asParam[35] := 'y'                                  //법인-이벤트횟수
											 else asParam[35] := 'n';
	asParam[36] := 'n';                                                           // 불량고객 사용 안함

	if cxCheckBox3.checked then
	begin
		asParam[37] := StringReplace(cxCurrencyEdit6.Text, ',', '', [rfReplaceAll]);//"후불" + "후불(카드)" 별도 적립 사용금액
		if cxCheckBox2.checked then sTemp := 'y' else sTemp := 'n';                  //고객구분 별 적용 -개인
		if cxCheckBox10.checked then sTemp := sTemp + 'y' else sTemp := sTemp + 'n'; //고객구분 별 적용 -업소
		if cxCheckBox11.checked then sTemp := sTemp + 'y' else sTemp := sTemp + 'n'; //고객구분 별 적용 -법인
		asParam[38] := sTemp;                                                        //고객구분 별 적용 -개인,업소,법인

		if rb_Straight.checked  then asParam[39] := '1' else                         //"후불" + "후불(카드)" 별도 적립 사용금액-정액/정률
		if rb_Declining.checked then asParam[39] := '2' else asParam[39] := '0';
	end
	else
	begin
		asParam[37] := '0';
		asParam[38] := 'nnn';
		asParam[39] := '0';
	end;
	if chkMileSaveCash.checked then asParam[40] := 'y' else asParam[40] := 'n'; //"후불(마일)" 결제 시 현금액 마일리지 적립
	if chkMileSaveMile.checked then asParam[41] := 'y' else asParam[41] := 'n'; //"후불(마일)" 결제 시 마일리지액 마일리지 적립

	sTemp := '';
	for i := 1 to 41 do
	begin
		if i = 1 then sTemp := asParam[1]
		else
		begin
			sTemp := sTemp + '│' + asParam[i];
		end;
	end;

  if not RequestBase(GetCallable05('SET_BRANCH_MLG', 'MNG_CUST.SET_BRANCH_MLG', sTemp), XmlData, ErrCode, ErrMsg) then
  begin
		GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
		Exit;
	end;
  GMessagebox('마일리지 설정이 완료 되었습니다.', CDMSI);
end;

procedure TFrm_CUT.btn_8_3Click(Sender: TObject);
begin
  proc_EventCnt_Init(TcxButton(Sender).Tag);
end;

procedure TFrm_CUT.btn_9_1Click(Sender: TObject);
var
  iRow, iSeq: Integer;
  sSeq: string;
begin
	iRow := CustView9.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

	iSeq := CustView9.GetColumnByFieldName('고객코드').Index;
  sSeq := CustView9.DataController.Values[iRow, iSeq];

	Frm_Main.procMenuCreateActive(410, '마일리지상세(적립+지급)');

	cxedCuSEQ.Text := sSeq;
//	CustView9.DataController.SetRecordCount(0);
	proc_MileageDetail;
end;

procedure TFrm_CUT.btn_9_2Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;
	CustView9.DataController.SetRecordCount(0);
	proc_MileageAcc;
end;

procedure TFrm_CUT.btn_9_3Click(Sender: TObject);
begin
  if CustView9.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

	grpExcel_OPT.Left := (Width - grpExcel_OPT.Width) div 2;
	grpExcel_OPT.top := (Height - grpExcel_OPT.Height) div 2;
	grpExcel_OPT.Visible := True;
	grpExcel_OPT.BringToFront;
end;

procedure TFrm_CUT.btn_9_4Click(Sender: TObject);
begin
	proc_SND_SMS(CustView9);
end;

procedure TFrm_CUT.btn_6_7Click(Sender: TObject);
begin
	DeleteCustomer(CustView6, lbCount06);
end;

procedure TFrm_CUT.btn_6_8Click(Sender: TObject);
begin
  if CustView6.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

	grpExcel_OPT.Left := (Width - grpExcel_OPT.Width) div 2;
	grpExcel_OPT.top := (Height - grpExcel_OPT.Height) div 2;
	grpExcel_OPT.Visible := True;
	grpExcel_OPT.BringToFront;
end;

procedure TFrm_CUT.btn_4_1Click(Sender: TObject);
begin
  proc_bubin_init;
end;

procedure TFrm_CUT.btn_Date2_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT.btn_Date3_1Click(Sender: TObject);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT.btn_Date3_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT.btn_Date3_2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	Pop_Ymd.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT.btn_Date4_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT.btn_Date9_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT.btn_UpsoPee_CloseClick(Sender: TObject);
begin
	cxGrid1.Enabled := True;
	gbUpsoPee.visible := False;
end;

procedure TFrm_CUT.btn_UpsoPee_SaveClick(Sender: TObject);
var	XmlData, ErrMsg, param, sTmp : string;
		ErrCode, i : Integer;
begin
	Try
		sTmp := cxLabel230.Caption + '개 업소의 수수료를';
		if rb_Straight_Upso.checked then
			sTmp := sTmp + #13#10 + rb_Straight_Upso.Caption + ' 으로 1콜완료시' + edtCalValue.text + cxLabel235.Caption else
		if rb_Straight_Upso.checked then
			sTmp := sTmp + #13#10 + rb_Declining_Upso.Caption + ' 으로 1콜완료시' + edtCalValue.text + cxLabel235.Caption;
		sTmp := sTmp + #13#10 + #13#10 + '위와같이 일괄 설정하시겠습니까?';

		if Application.MessageBox(PChar(sTmp), '', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
		begin
			exit;
		end;

		param := '';
		if rb_Declining_Upso.Checked then Param := '2' else Param := '1';
		param := Param + '│' + edtCalValue.text;

		Screen.Cursor := crHourGlass;
		for i := 0 to gslUpsoPeeSeq.count - 1 do
		begin
			Param := Param + '│' + gslUpsoPeeSeq[i];
			if not RequestBase(GetCallable06('SET_BATCH_CUST_MILE', 'BIZ_CUST.SET_BATCH_CUST_MILE', param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('업소수수료 일괄 등록 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				cxGrid1.Enabled := True;
				exit;
			end;
		end;
		GMessagebox('업소수수료 일괄등록이 완료되었습니다.', CDMSI);
	Finally
		cxGrid1.Enabled := True;
		gslUpsoPeeSeq.Free;
		btn_UpsoPee_Close.Click;
		Screen.Cursor := crDefault;
	End;
end;

procedure TFrm_CUT.btn_Date10_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT.btn_Date11_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT.btn_Date12_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	Pop_Ymd.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT.btn_Date13_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT.btn_Date14_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT.btn_Date16_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT.btn_Date1_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pm_Date.Tag := 11;
end;

procedure TFrm_CUT.btn_Date1_2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_Ymd.Tag := 12;
end;

procedure TFrm_CUT.btn_Date1_3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_Ymd.Tag := 13;
end;

procedure TFrm_CUT.btn_Date1_4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_Ymd.Tag := 14;
end;

procedure TFrm_CUT.btn_Date1_5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pm_Date.Tag := 15;
end;

procedure TFrm_CUT.btn_Date1_6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pm_Date.Tag := 16;
end;

procedure TFrm_CUT.btn_1_4Click(Sender: TObject);
begin
	if not chkSearchAdd.Checked then
    CustView1.DataController.SetRecordCount(0);
	proc_CustSearch(0);
	Click_chk := 0;
end;

procedure TFrm_CUT.btn_4_2Click(Sender: TObject);
begin
	mniDetailCustLevel.Click;
end;

procedure TFrm_CUT.btn_5_1Click(Sender: TObject);
begin
	proc_Cust_PhoneSel(0);
end;

procedure TFrm_CUT.btn_5_2Click(Sender: TObject);
var iRow, iPhone, iIndex, iIndex1  : Integer;
	sBrNo : string;
begin
	sBrNo := cxBrNo5.Text;
	if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
	begin
		ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
							+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');

		Screen.Cursor := crDefault;
		Exit;
	end;
	if (cbKeynumber05.ItemIndex < 0) or (cbKeynumber05.Text = '전체') then
	begin
		ShowMessage('대표번호를 선택하여 주십시오.');
		Exit;
	end;
	if cxTextEdit19.Text = '' then
	begin
		ShowMessage('안심번호를 입력하신 뒤 검색하여 주십시오.');
		Screen.Cursor := crDefault;
		Exit;
	end else
	if (cxTextEdit19.Text  <> '') then
	begin
		iRow   := cxGridDBTableView1.GetColumnByFieldName('4num').Index;
		iPhone := cxGridDBTableView1.GetColumnByFieldName('4Phone').Index;

		iIndex  := cxGridDBTableView1.DataController.FindRecordIndexByText(nFocus,iRow  ,cxTextEdit19.Text,True,False,True);
		iIndex1 := cxGridDBTableView1.DataController.FindRecordIndexByText(nFocus,iPhone,cxTextEdit19.Text,True,False,True);
		if (iIndex < 0) and (iIndex1 < 0) then
		begin
			ShowMessage('검색하신 4자리 번호가 없습니다.');
			Exit;
		end;

		if (iIndex > -1) or (iIndex1 > -1) then
		begin
			if (iIndex <= iIndex1) then
			begin
				if iIndex = -1 then cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex1
				else        				cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex;
				cxGrid14.SetFocus;
				nFocus := iIndex+1;
			end else
      if (iIndex > iIndex1) then
			begin
				if iIndex1 = -1 then cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex
				else        			 	 cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex1;
				cxGrid14.SetFocus;
				nFocus := iIndex1+1;
			end;
		end;
	end;
end;

procedure TFrm_CUT.btn_5_4Click(Sender: TObject);
begin
  if cxGridDBTableView1.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

	grpExcel_OPT.Left := (Width - grpExcel_OPT.Width) div 2;
	grpExcel_OPT.top := (Height - grpExcel_OPT.Height) div 2;
	grpExcel_OPT.Visible := True;
	grpExcel_OPT.BringToFront;
end;

procedure TFrm_CUT.btn_5_5Click(Sender: TObject);
var XmlData, Param, ErrMsg: string;
	ErrCode: Integer;
	I, iRow, iIndex : Integer;
	sVnum : AnsiString;
  sType, sMsg, sBrNo  : string;
begin
	sBrNo := cxBrNo5.text;
	if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
	begin
		ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
							+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');

		Exit;
	end;
	if (cbKeynumber05.ItemIndex < 0) or (cbKeynumber05.Text = '전체') then
	begin
		ShowMessage('대표번호를 선택하여 주십시오.');
		Exit;
	end;
	if Sender = btn_5_5 then
	begin
		sType := 'y';
		sMsg := '등록 되었습니다.' ;

		Param := cxHdNo5.Text  + '│' + cxTextEdit18.Text + '│';
		if not RequestBase(GetSel05('CHK_VIRTUAL_TEL', 'MNG_CUST.CHK_VIRTUAL_TEL', '10',Param), XmlData, ErrCode, ErrMsg) then
		begin
			ShowMessage(strtocall(cxTextEdit18.Text) + '번호는 동일 본사내 다른 지사에 안심번호가 등록되어 있습니다.');
			iRow   := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;
			iIndex  := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow, strtocall(cxTextEdit18.Text),True,False,True);
			cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex;
			Exit;
		end;
	end else
	if Sender = btn_5_7 then
	begin
		sType := '';
		sMsg := '수정 되었습니다.'
	end else
	if Sender = btn_5_6 then
	begin
		sType := 'n';
		sMsg := '해제 되었습니다.'
	end;

  iIndex := cxVirtureList.GetColumnByFieldName('').Index;
  i := 0;
	for iRow := 0 to cxVirtureList.DataController.RecordCount -1 do
	begin
		if cxVirtureList.DataController.Values[iRow, iIndex] = True then
		begin
			sVnum := cxVirtureList.DataController.Values[iRow, iIndex + 1] ;
			inc(i);
		end;
	end;
	if (sType = 'y') or (sType = 'n') then   //등록일때
	begin
		if i > 1 then
		begin
			ShowMessage('한개 이상의 고객번호를 선택 하셨습니다.');
			Exit;
		end else
    if i = 0 then
		begin
			ShowMessage('고객번호가 선택되지 않았습니다.');
			Exit;
		end;
		if (sType = 'y') then
		begin
			if cxLabel240.Caption <> '' then
			begin
				ShowMessage('할당된 안심번호가 있습니다.' + #13#10 + '할당된 번호를 해제해 주십시오.');
				Exit;
			end;
			if (cxLabel250.Caption)= '' then
			begin
				ShowMessage('안심번호가 선택되지 않았습니다.' + #13#10 + '하단의 안심번호를 선택해 주십시오.');
				Exit;
			end;
		end else
    if (sType = 'n') then
		begin
			if (cxLabel250.Caption = '') and (cxLabel240.Caption = '') then
			begin
				ShowMessage('할당된 안심번호가 없습니다.');
				Exit;
			end;
			cxTextEdit20.Text := '';
		end;
	end;
	if cxLabel251.Caption = '' then
	begin
		ShowMessage('선택된 고객이 없습니다.' + #13#10 + '고객전화번호검색을 통하여 검색해 주십시오.');
		Exit;
  end;

	Param := '';
	Param := Param + cxLabel251.Caption + '│';
	Param := Param + calltostr(sVnum) + '│';
	Param := Param + cxTextEdit20.Text + '│';
	Param := Param + calltostr(cxLabel250.Caption) + '│' + sType + '│';
	if not RequestBase(GetCallable05('SET_VIRTUAL_TEL', 'MNG_CUST.SET_VIRTUAL_TEL', Param), XmlData, ErrCode, ErrMsg) then
	begin
		ShowMessage(Format('[%d] %s', [ErrCode, ErrMsg]));
		Exit;
	end;
	ShowMessage(sMsg);

	if sType = 'n' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('안심번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,strtocall(cxLabel250.caption),True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,2] := '';
			cxGridDBTableView1.DataController.Values[iIndex,3] := '';
			cxGridDBTableView1.DataController.Values[iIndex,4] := '';
			cxGridDBTableView1.DataController.Values[iIndex,5] := '';
			cxGridDBTableView1.DataController.Values[iIndex,6] := '';
			cxGridDBTableView1.DataController.Values[iIndex,7] := '';
			cxGridDBTableView1.DataController.Values[iIndex,8] := '';
			cxGridDBTableView1.DataController.Values[iIndex,10] := '';
			cxGridDBTableView1.DataController.Values[iIndex,11] := '';
//			cxTextEdit18.Text := '';
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end else
  if sType = 'y' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('안심번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,strtocall(cxLabel250.caption),True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,2] := sVnum;
			cxGridDBTableView1.DataController.Values[iIndex,3] := cxLabel243.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,4] := cxLabel245.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,5] := cxLabel247.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,6] := cbKeynumber05.Text
																									+ ' - ' + scb_BranchName[ scb_BranchCode.IndexOf(cxBrNo5.Text)];
			cxGridDBTableView1.DataController.Values[iIndex,7] := cxTextEdit20.Text;
			cxGridDBTableView1.DataController.Values[iIndex,8] := cxLabel251.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,10] := cxBrNo5.Text;
			cxGridDBTableView1.DataController.Values[iIndex,11] := RightStr(sVnum,4);
//			cxTextEdit18.Text := '';
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end else
  if sType = '' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,sVnum,True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,7] := cxTextEdit20.Text;
//			cxTextEdit18.Text := '';
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end;
//	cxButton63Click(nil);
	cxTextEdit18.Text := '';
end;

procedure TFrm_CUT.btn_5_7Click(Sender: TObject);
var XmlData, Param, ErrMsg: string;
	ErrCode: Integer;
	I, iRow, iIndex : Integer;
	sVnum, sType, sMsg, sBrNo  : string;
begin
	sBrNo := cxBrNo5.text;
	if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
	begin
		ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
							+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');
		Exit;
	end;
	if (cbKeynumber05.ItemIndex < 0) or (cbKeynumber05.Text = '전체') then
	begin
		ShowMessage('대표번호를 선택하여 주십시오.');
		Exit;
	end;
	if Sender = btn_5_5 then
	begin
		sType := 'y';
		sMsg := '등록 되었습니다.' ;

		Param := cxHdNo5.Text  + '│' + cxTextEdit18.Text + '│';
		if not RequestBase(GetSel05('CHK_VIRTUAL_TEL', 'MNG_CUST.CHK_VIRTUAL_TEL', '10',Param), XmlData, ErrCode, ErrMsg) then
		begin
			ShowMessage(strtocall(cxTextEdit18.Text) + '번호는 동일 본사내 다른 지사에 안심번호가 등록되어 있습니다.');
			iRow   := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;
			iIndex  := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow, strtocall(cxTextEdit18.Text),True,False,True);
			cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex;
			Exit;
		end;
	end else
	if Sender = btn_5_7 then
	begin
		sType := '';
		sMsg := '수정 되었습니다.'
	end else
	if Sender = btn_5_6 then
	begin
		sType := 'n';
		sMsg := '해제 되었습니다.'
	end;

  iIndex := cxVirtureList.GetColumnByFieldName('').Index;
  i := 0;
	for iRow := 0 to cxVirtureList.DataController.RecordCount -1 do
	begin
		if cxVirtureList.DataController.Values[iRow, iIndex] = True then
		begin
			sVnum := cxVirtureList.DataController.Values[iRow, iIndex + 1] ;
			inc(i);
		end;
	end;
	if (sType = 'y') or (sType = 'n') then   //등록일때
	begin
		if i > 1 then
		begin
			ShowMessage('한개 이상의 고객번호를 선택 하셨습니다.');
			Exit;
		end else
    if i = 0 then
		begin
			ShowMessage('고객번호가 선택되지 않았습니다.');
			Exit;
		end;
		if (sType = 'y') then
		begin
			if cxLabel240.Caption <> '' then
			begin
				ShowMessage('할당된 안심번호가 있습니다.' + #13#10 + '할당된 번호를 해제해 주십시오.');
				Exit;
			end;
			if (cxLabel250.Caption)= '' then
			begin
				ShowMessage('안심번호가 선택되지 않았습니다.' + #13#10 + '하단의 안심번호를 선택해 주십시오.');
				Exit;
			end;
		end	else
    if (sType = 'n') then
		begin
			if (cxLabel250.Caption = '') and (cxLabel240.Caption = '') then
			begin
				ShowMessage('할당된 안심번호가 없습니다.');
				Exit;
			end;
			cxTextEdit20.Text := '';
		end;
	end;
	if cxLabel251.Caption = '' then
	begin
		ShowMessage('선택된 고객이 없습니다.' + #13#10 + '고객전화번호검색을 통하여 검색해 주십시오.');
		Exit;
  end;

	Param := '';
	Param := Param + cxLabel251.Caption + '│';
	Param := Param + calltostr(sVnum) + '│';
	Param := Param + cxTextEdit20.Text + '│';
	Param := Param + calltostr(cxLabel250.Caption) + '│' + sType + '│';
	if not RequestBase(GetCallable05('SET_VIRTUAL_TEL', 'MNG_CUST.SET_VIRTUAL_TEL', Param), XmlData, ErrCode, ErrMsg) then
	begin
		ShowMessage(Format('[%d] %s', [ErrCode, ErrMsg]));
		Exit;
	end;
	ShowMessage(sMsg);

	if sType = 'n' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('안심번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,strtocall(cxLabel250.caption),True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,2] := '';
			cxGridDBTableView1.DataController.Values[iIndex,3] := '';
			cxGridDBTableView1.DataController.Values[iIndex,4] := '';
			cxGridDBTableView1.DataController.Values[iIndex,5] := '';
			cxGridDBTableView1.DataController.Values[iIndex,6] := '';
			cxGridDBTableView1.DataController.Values[iIndex,7] := '';
			cxGridDBTableView1.DataController.Values[iIndex,8] := '';
			cxGridDBTableView1.DataController.Values[iIndex,10] := '';
			cxGridDBTableView1.DataController.Values[iIndex,11] := '';

			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end else
  if sType = 'y' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('안심번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,strtocall(cxLabel250.caption),True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,2] := sVnum;
			cxGridDBTableView1.DataController.Values[iIndex,3] := cxLabel243.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,4] := cxLabel245.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,5] := cxLabel247.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,6] := cbKeynumber05.Text
																									+ ' - ' + scb_BranchName[ scb_BranchCode.IndexOf(cxBrNo5.Text)];
			cxGridDBTableView1.DataController.Values[iIndex,7] := cxTextEdit20.Text;
			cxGridDBTableView1.DataController.Values[iIndex,8] := cxLabel251.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,10] := cxBrNo5.Text;
			cxGridDBTableView1.DataController.Values[iIndex,11] := RightStr(sVnum,4);

			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end else
  if sType = '' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,sVnum,True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,7] := cxTextEdit20.Text;
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end;
	cxTextEdit18.Text := '';
end;

procedure TFrm_CUT.btn_5_6Click(Sender: TObject);
var XmlData, Param, ErrMsg: string;
	ErrCode: Integer;
	I, iRow, iIndex : Integer;
	sVnum, sType, sMsg, sBrNo  : string;
begin
	sBrNo := cxBrNo5.text;
	if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
	begin
		ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
							+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');

		Exit;
	end;
	if (cbKeynumber05.ItemIndex < 0) or (cbKeynumber05.Text = '전체') then
	begin
		ShowMessage('대표번호를 선택하여 주십시오.');
		Exit;
	end;
	if Sender = btn_5_5 then
	begin
		sType := 'y';
		sMsg := '등록 되었습니다.' ;

		Param := cxHdNo5.Text  + '│' + cxTextEdit18.Text + '│';
		if not RequestBase(GetSel05('CHK_VIRTUAL_TEL', 'MNG_CUST.CHK_VIRTUAL_TEL', '10',Param), XmlData, ErrCode, ErrMsg) then
		begin
			ShowMessage(strtocall(cxTextEdit18.Text) + '번호는 동일 본사내 다른 지사에 안심번호가 등록되어 있습니다.');
			iRow   := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;
			iIndex  := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow, strtocall(cxTextEdit18.Text),True,False,True);
			cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex;
			Exit;
		end;
	end else
	if Sender = btn_5_7 then
	begin
		sType := '';
		sMsg := '수정 되었습니다.'
	end else
	if Sender = btn_5_6 then
	begin
		sType := 'n';
		sMsg := '해제 되었습니다.'
	end;

  iIndex := cxVirtureList.GetColumnByFieldName('').Index;
  i := 0;
	for iRow := 0 to cxVirtureList.DataController.RecordCount -1 do
	begin
		if cxVirtureList.DataController.Values[iRow, iIndex] = True then
		begin
			sVnum := cxVirtureList.DataController.Values[iRow, iIndex + 1] ;
			inc(i);
		end;
	end;
	if (sType = 'y') or (sType = 'n') then   //등록일때
	begin
		if i > 1 then
		begin
			ShowMessage('한개 이상의 고객번호를 선택 하셨습니다.');
			Exit;
		end else
    if i = 0 then
		begin
			ShowMessage('고객번호가 선택되지 않았습니다.');
			Exit;
		end;
		if (sType = 'y') then
		begin
			if cxLabel240.Caption <> '' then
			begin
				ShowMessage('할당된 안심번호가 있습니다.' + #13#10 + '할당된 번호를 해제해 주십시오.');
				Exit;
			end;
			if (cxLabel250.Caption)= '' then
			begin
				ShowMessage('안심번호가 선택되지 않았습니다.' + #13#10 + '하단의 안심번호를 선택해 주십시오.');
				Exit;
			end;
		end	else
    if (sType = 'n') then
		begin
			if (cxLabel250.Caption = '') and (cxLabel240.Caption = '') then
			begin
				ShowMessage('할당된 안심번호가 없습니다.');
				Exit;
			end;
			cxTextEdit20.Text := '';
		end;
	end;
	if cxLabel251.Caption = '' then
	begin
		ShowMessage('선택된 고객이 없습니다.' + #13#10 + '고객전화번호검색을 통하여 검색해 주십시오.');
		Exit;
  end;

	Param := '';
	Param := Param + cxLabel251.Caption + '│';
	Param := Param + calltostr(sVnum) + '│';
	Param := Param + cxTextEdit20.Text + '│';
	Param := Param + calltostr(cxLabel250.Caption) + '│' + sType + '│';
	if not RequestBase(GetCallable05('SET_VIRTUAL_TEL', 'MNG_CUST.SET_VIRTUAL_TEL', Param), XmlData, ErrCode, ErrMsg) then
	begin
		ShowMessage(Format('[%d] %s', [ErrCode, ErrMsg]));
		Exit;
	end;
	ShowMessage(sMsg);

	if sType = 'n' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('안심번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,strtocall(cxLabel250.caption),True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,2] := '';
			cxGridDBTableView1.DataController.Values[iIndex,3] := '';
			cxGridDBTableView1.DataController.Values[iIndex,4] := '';
			cxGridDBTableView1.DataController.Values[iIndex,5] := '';
			cxGridDBTableView1.DataController.Values[iIndex,6] := '';
			cxGridDBTableView1.DataController.Values[iIndex,7] := '';
			cxGridDBTableView1.DataController.Values[iIndex,8] := '';
			cxGridDBTableView1.DataController.Values[iIndex,10] := '';
			cxGridDBTableView1.DataController.Values[iIndex,11] := '';
//			cxTextEdit18.Text := '';
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end else
  if sType = 'y' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('안심번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,strtocall(cxLabel250.caption),True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,2] := sVnum;
			cxGridDBTableView1.DataController.Values[iIndex,3] := cxLabel243.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,4] := cxLabel245.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,5] := cxLabel247.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,6] := cbKeynumber05.Text
																									+ ' - ' + scb_BranchName[ scb_BranchCode.IndexOf(cxBrNo5.Text)];
			cxGridDBTableView1.DataController.Values[iIndex,7] := cxTextEdit20.Text;
			cxGridDBTableView1.DataController.Values[iIndex,8] := cxLabel251.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,10] := cxBrNo5.Text;
			cxGridDBTableView1.DataController.Values[iIndex,11] := RightStr(sVnum,4);
//			cxTextEdit18.Text := '';
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end else
  if sType = '' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,sVnum,True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,7] := cxTextEdit20.Text;
//			cxTextEdit18.Text := '';
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end;
//	cxButton63Click(nil);
	cxTextEdit18.Text := '';
end;

procedure TFrm_CUT.btn_5_3Click(Sender: TObject);
begin
	proc_VirtureNum;
end;

procedure TFrm_CUT.btn_1_5Click(Sender: TObject);
begin
	if not chkSearchAdd.Checked then
		CustView1.DataController.SetRecordCount(0);
	proc_CustSearch(1);
  Click_chk := 1;
end;

procedure TFrm_CUT.btn_1_6Click(Sender: TObject);
begin
	// 7 : 접수창에서 신규등록 4 : 수정창에서 신규등록
  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Self);
  Frm_CUT011.Tag := 7;
  Frm_CUT011.Hint := IntToStr(Self.Tag);
  Frm_CUT011.clbCuSeq.Caption := '';
  Frm_CUT011.FControlInitial(False);
	Frm_CUT011.proc_search_brKeyNum(cxBrNo1.Text, StringReplace(cbKeynumber01.Text, '-', '', [rfReplaceAll]));

	Frm_CUT011.Left := (Screen.Width  - Frm_CUT011.Width) div 2;
	Frm_CUT011.top  := (Screen.Height - Frm_CUT011.Height) div 2;
  if Frm_CUT011.top <= 10 then Frm_CUT011.top := 10;

  Frm_CUT011.Show;
  Frm_CUT011.proc_cust_Intit;
end;

procedure TFrm_CUT.btn_1_8Click(Sender: TObject);
begin
	if CustView1.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

	grpExcel_OPT.Left := (Width - grpExcel_OPT.Width) div 2;
	grpExcel_OPT.top := (Height - grpExcel_OPT.Height) div 2;
	grpExcel_OPT.Visible := True;
	grpExcel_OPT.BringToFront;
end;

procedure TFrm_CUT.btn_10_1Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;
	cxedCuSEQ.Text := '';
	CustView10.DataController.SetRecordCount(0);
	proc_MileageDetail;
end;

procedure TFrm_CUT.btn_10_2Click(Sender: TObject);
begin
	if CustView10.DataController.RecordCount = 0 then
	begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

	grpExcel_OPT.Left := (Width - grpExcel_OPT.Width) div 2;
	grpExcel_OPT.top := (Height - grpExcel_OPT.Height) div 2;
	grpExcel_OPT.Visible := True;
	grpExcel_OPT.BringToFront;
end;

procedure TFrm_CUT.btn_11_1Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;
	proc_OKCashBack;
end;

procedure TFrm_CUT.btn_11_2Click(Sender: TObject);
begin
  if cxViewOKC.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

	grpExcel_OPT.Left := (Width - grpExcel_OPT.Width) div 2;
	grpExcel_OPT.top := (Height - grpExcel_OPT.Height) div 2;
	grpExcel_OPT.Visible := True;
	grpExcel_OPT.BringToFront;
end;

procedure TFrm_CUT.btn_12_1Click(Sender: TObject);
var
  ls_TxLoad, sNode, sWhere, sTemp, sTel1, sTel2, sCbcode, strTemp: string;
  ls_rxxml: WideString;
	lst_Node: IXMLDOMNodeList;
	lst_clon: IXMLDOMNode;
	slReceive: TStringList;

	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j, iIdx : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sHdNo, sBrNo, sEndDate : string ;
begin
	dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    Exit;
  end;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('추천인관리(앱)') then Exit;
	Try
		//////////////////////////////////////////////////////////////////////////////
		// 고객>추천인관리(앱)]20000건/콜센터(통합)/대표번호:전체/등록기간:20100101~20100131/마일리지11이상/지급완료24이상
		FExcelDownRCMD := Format('%s/대표번호:%s',
			[
					GetSelBrInfo
				, cbKeynumber12.Text
      ]);
    //////////////////////////////////////////////////////////////////////////////

		Param := '';

		if (GT_SEL_BRNO.GUBUN <> '1') then
		begin
			if (GT_USERIF.LV = '60') then
			begin
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					sHdNo := GT_SEL_BRNO.HDNO
				else
					sHdNo := GT_USERIF.HD;
			end else
			begin
				sHdNo := GT_USERIF.HD;
				sBrNo := GT_USERIF.BR;
			end
		end else
		begin
			sHdNo := GT_USERIF.HD;
			sBrNo := GT_SEL_BRNO.BrNo;
		end;
		Param := sHdNo + '│' + sBrNo;                 //본사, 지사코드
  	Param := Param + '│' + StringReplace(cbKeynumber12.Text, '-', '', [rfReplaceAll]);  // 대표번호

    if Trim(edCustTel12.Text) = '' then strTemp := ''
                                   else strTemp := edCustTel12.Text;
    Param := Param + '│' + strTemp;   //고객전화번호

    if Trim(edReCmdCode.Text) = '' then strTemp := ''
                                   else strTemp := edReCmdCode.Text;
    Param := Param + '│' + strTemp;   //추천코드

		slList := TStringList.Create;
		Screen.Cursor := crHourGlass;
		Try
			if not RequestBasePaging(GetSel05('GET_LIST_CUST_RECOMMEND', 'MNG_CUST_RECOMMEND.GET_LIST_CUST_RECOMMEND', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				Frm_Flash.hide;
				Application.ProcessMessages;
				GMessagebox(Format('추천인관리(앱) 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Frm_Main.Enabled := True;
				Screen.Cursor := crDefault;
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				cxViewRCMD.DataController.SetRecordCount(0);
				cxViewRCMD_D.DataController.SetRecordCount(0);
        lblRCMD.Caption := '';

				Application.ProcessMessages;
				cxViewRCMD.BeginUpdate;
				for j := 0 to slList.Count - 1 do
				begin
					Frm_Flash.cxPBar1.Position := j + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);

					ls_MSG_Err := GetXmlErrorCode(XmlData);
					if ('0000' = ls_MSG_Err) then
					begin
						if (0 < GetXmlRecordCount(XmlData)) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
//									Application.ProcessMessages;

									iRow := cxViewRCMD.DataController.AppendRecord;

									cxViewRCMD.DataController.Values[iRow, 0] := iRow + 1;
									cxViewRCMD.DataController.Values[iRow, 1] := ls_rcrd[0];
									cxViewRCMD.DataController.Values[iRow, 2] := strtocall(ls_rcrd[1]);
									cxViewRCMD.DataController.Values[iRow, 3] := ls_Rcrd[2];
									cxViewRCMD.DataController.Values[iRow, 4] := StrToFloatDef(ls_rcrd[3], 0);
									cxViewRCMD.DataController.Values[iRow, 5] := ls_rcrd[4];
								end;
							finally
								ls_Rcrd.Free;
							end;
						end	else
						begin
							GMessagebox('검색된 내용이 없습니다.', CDMSE);
						end;

						Screen.Cursor := crDefault;
					end	else
					begin
						Frm_Flash.hide;
						Application.ProcessMessages;
						GMessagebox('검색된 내용이 없습니다', CDMSE);
					end;
				end;
			finally
				cxViewRCMD.EndUpdate;
				xdom := Nil;
			end;
    Finally
			frm_Main.proc_SocketWork(True);
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
		End;
	except
		Frm_Flash.hide;
		Frm_Main.Enabled := True;
		Screen.Cursor := crDefault;
	End;
end;

procedure TFrm_CUT.btn_12_2Click(Sender: TObject);
begin
  if cxViewRCMD.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

//	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
//	begin
//    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
//		Exit;
//  end;

	grpExcel_OPT.Left := (Width - grpExcel_OPT.Width) div 2;
	grpExcel_OPT.top := (Height - grpExcel_OPT.Height) div 2;
	grpExcel_OPT.Visible := True;
  grpExcel_OPT.Tag := 0;
	grpExcel_OPT.BringToFront;
end;

procedure TFrm_CUT.btn_12_3Click(Sender: TObject);
var
  ls_TxLoad, sNode, sWhere, sTemp, sTel1, sTel2, sCbcode, strTemp: string;
  ls_rxxml: WideString;
	lst_Node: IXMLDOMNodeList;
	lst_clon: IXMLDOMNode;
	slReceive: TStringList;

	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, iSel, i, j, iIdx : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sHdNo, sBrNo, sSelRmd, sSelCuSeq : string;
begin
	dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('추천인관리(앱)-상세') then Exit;

  if TcxButton(Sender).Tag = 3 then
  begin
  	iSel := cxViewRCMD.DataController.FocusedRecordIndex;
    sSelRmd   := cxViewRCMD.DataController.Values[iSel, 1];
    sSelCuSeq := cxViewRCMD.DataController.Values[iSel, 5];   //추천인고객번호
  end else
  if TcxButton(Sender).Tag = 5 then
  begin
    sSelCuSeq := '0';
    sSelRmd := '전체';
  end;

  lblRCMD.Caption := sSelRmd;

	Try
		//////////////////////////////////////////////////////////////////////////////
		// 고객>추천인관리(앱)]20000건/콜센터(통합)/대표번호:전체/등록기간:20100101~20100131/마일리지11이상/지급완료24이상
		FExcelDownRCMDD := Format('%s/대표번호:%s-추천인코드:%s',
			[
					GetSelBrInfo
				, cbKeynumber12.Text
        , sSelRmd
      ]);
    //////////////////////////////////////////////////////////////////////////////

		Param := '';

		if (GT_SEL_BRNO.GUBUN <> '1') then
		begin
			if (GT_USERIF.LV = '60') then
			begin
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					sHdNo := GT_SEL_BRNO.HDNO
				else
					sHdNo := GT_USERIF.HD;
			end else
			begin
				sHdNo := GT_USERIF.HD;
				sBrNo := GT_USERIF.BR;
			end
		end else
		begin
			sHdNo := GT_USERIF.HD;
			sBrNo := GT_SEL_BRNO.BrNo;
		end;
		Param := sHdNo + '│' + sBrNo;                 //본사, 지사코드
  	Param := Param + '│' + StringReplace(cbKeynumber12.Text, '-', '', [rfReplaceAll]);  // 대표번호
    Param := Param + '│' + sSelCuSeq;   //추천인고객번호

    if cxRBA.Checked then
      strTemp := '│'
    else
      strTemp := formatdatetime('yyyymmdd', cxDate12_1S.Date) + '│' + formatdatetime('yyyymmdd', cxDate12_1E.Date);

    Param := Param + '│' + strTemp;     //등록일자

		slList := TStringList.Create;
		Screen.Cursor := crHourGlass;
		Try
			if not RequestBasePaging(GetSel05('GET_LIST_CUST_RECOMMEND_DETAIL', 'MNG_CUST_RECOMMEND.GET_LIST_CUST_RECOMMEND_DETAIL', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				Frm_Flash.hide;
				Application.ProcessMessages;
				GMessagebox(Format('추천인관리(앱) 상세 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Frm_Main.Enabled := True;
				Screen.Cursor := crDefault;
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				cxViewRCMD_D.DataController.SetRecordCount(0);
				Application.ProcessMessages;
				cxViewRCMD_D.BeginUpdate;
				for j := 0 to slList.Count - 1 do
				begin
					Frm_Flash.cxPBar1.Position := j + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);

					ls_MSG_Err := GetXmlErrorCode(XmlData);
					if ('0000' = ls_MSG_Err) then
					begin
						if (0 < GetXmlRecordCount(XmlData)) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									iRow := cxViewRCMD_D.DataController.AppendRecord;

									cxViewRCMD_D.DataController.Values[iRow, 0] := iRow + 1;
									cxViewRCMD_D.DataController.Values[iRow, 1] := strtocall(ls_rcrd[0]);
									cxViewRCMD_D.DataController.Values[iRow, 2] := ls_rcrd[1];
									cxViewRCMD_D.DataController.Values[iRow, 3] := StrToFloatDef(ls_rcrd[2], 0);           //이용횟수
									cxViewRCMD_D.DataController.Values[iRow, 4] := StrToFloatDef(ls_rcrd[3], 0);           //완료횟수
									cxViewRCMD_D.DataController.Values[iRow, 5] := GetStrToDateTimeGStr(ls_Rcrd[4], 4);    //소멸예정일
									cxViewRCMD_D.DataController.Values[iRow, 6] := GetStrToDateTimeGStr(ls_Rcrd[5], 4);    //소멸예정일
									cxViewRCMD_D.DataController.Values[iRow, 7] := GetStrToDateTimeGStr(ls_Rcrd[6], 4);    //소멸예정일
									cxViewRCMD_D.DataController.Values[iRow, 8] := ls_rcrd[7];                             //추천인코드
								end;
							finally
								ls_Rcrd.Free;
							end;
						end	else
						begin
        			Application.ProcessMessages;
							GMessagebox('검색된 내용이 없습니다.', CDMSE);
						end;
						Screen.Cursor := crDefault;
					end	else
					begin
						Frm_Flash.hide;
      			Application.ProcessMessages;
						GMessagebox('검색된 내용이 없습니다', CDMSE);
					end;
				end;
			finally
				cxViewRCMD_D.EndUpdate;
				xdom := Nil;
			end;
    Finally
			frm_Main.proc_SocketWork(True);
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
		End;
	except
		Frm_Flash.hide;
		Frm_Main.Enabled := True;
		Screen.Cursor := crDefault;
	End;
end;

procedure TFrm_CUT.btn_12_4Click(Sender: TObject);
begin
  if cxViewRCMD_D.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

//	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
//	begin
//    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
//		Exit;
//  end;

	grpExcel_OPT.Left := (Width - grpExcel_OPT.Width) div 2;
	grpExcel_OPT.top := (Height - grpExcel_OPT.Height) div 2;
	grpExcel_OPT.Visible := True;
  grpExcel_OPT.Tag := 1;
	grpExcel_OPT.BringToFront;
end;

procedure TFrm_CUT.btn_1_1Click(Sender: TObject);
begin
	proc_SND_SMS(CustView1);
end;

procedure TFrm_CUT.cxButton1Click(Sender: TObject);
var
	Param, ErrMsg : string;
	ErrCode : Integer;
	slList : TStringList;
	sHdNo, sBrNo, strTemp : string ;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;
	if not chkCust02Type04.Checked then
		CustView2.DataController.SetRecordCount(0);

	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
	begin
		GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
		Exit;
	end;

  if fGetChk_Search_HdBrNo('일반검색') then Exit;

	if not chkCust02Type04.Checked then
  begin
    if CustView2.DataController.RecordCount > 0 then
      Exit;
	end;

	//////////////////////////////////////////////////////////////////////////////
	// 고객>일반검색]2000건/콜센터(통합)/이용내역/대표번호:16886618/기간:20100101~20100131/완료:1~10/취소:1~10/SMS전체
	FExcelDownNormal := Format('%s/구분:%s/대표번호:%s/기간:%s~%s%s%s/%s',
		[
        GetSelBrInfo
      , IfThen(rbAll01.Checked, '전체', IfThen(rbNew01.Checked, '신규등록', '이용내역'))
      , cbKeynumber02.Text
			, cxDate2_1S.Text, cxDate2_1E.Text
      , IfThen(cb_S_Cnt1.Text + cb_S_Cnt2.Text = '', '', Format('/완료:%s~%s', [cb_S_Cnt1.Text, cb_S_Cnt2.Text]))
      , IfThen(cb_S_CCnt1.Text + cb_S_CCnt2.Text = '', '', Format('/취소:%s~%s', [cb_S_CCnt1.Text, cb_S_CCnt2.Text]))
      , cb_Sms_Gubun.Text
    ]);
  //////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------
//     전일이용고객
//------------------------------------------------------------------------------
  if chk_Before.Checked then
		proc_before_his
//------------------------------------------------------------------------------
//     전일완료고객
//------------------------------------------------------------------------------
	else if chk_Before_Finish.Checked then
		proc_before_comp
//------------------------------------------------------------------------------
//     전일 신규고객
//------------------------------------------------------------------------------
	else if chk_Before_New.Checked then
		proc_before_new
	else
	begin
		Try
			dt_sysdate2 := frm_main.func_sysdate;

			if Trim(dt_sysdate2) = '' then
			begin
				GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
				Exit;
			end;

			if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
				2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
			begin
				GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSE);
				Exit;
			end;

			lb_st_customer.Clear;

			sBrNo := cxBrNo2.Text;

			chk_All_Select.Checked := False;
			chk_All_Select.OnClick(chk_All_Select);

			Param := '';

			Param := IntToStr(rg_SType.Tag);
		
			if (GT_SEL_BRNO.GUBUN <> '1') then
			begin
				if (GT_USERIF.LV = '60') then
				begin
					if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
						sHdNo := GT_SEL_BRNO.HDNO
					else
						sHdNo := GT_USERIF.HD;
				end else
				begin
					sHdNo := GT_USERIF.HD;
					sBrNo := GT_USERIF.BR;
				end
			end else
			begin
				sHdNo := GT_USERIF.HD;
				sBrNo := GT_SEL_BRNO.BrNo;
			end;
			Param := Param + '│' + sHdNo + '│' + sBrNo;                 //본사, 지사코드
		

			strTemp := RemoveComma(cb_S_Cnt1.Text);
			Param := Param + '│' + strTemp;   //완료횟수S
			strTemp := RemoveComma(cb_S_Cnt2.Text);
			Param := Param + '│' + strTemp;   //완료횟수E
			strTemp := RemoveComma(cb_S_CCnt1.Text);
			Param := Param + '│' + strTemp;   //취소횟수S
			strTemp := RemoveComma(cb_S_CCnt2.Text);
			Param := Param + '│' + strTemp;   //취소횟수E
			strTemp := SCboLevelSeq[cb_S_Grad.itemindex];
			Param := Param + '│' + strTemp;   //등급
				
			case cb_S_Grad.ItemIndex of
				1: Param := Param + '│' + '0';
				2: Param := Param + '│' + '1';
				3: Param := Param + '│' + '3';
			end;

			if cb_Sms_Gubun.ItemIndex = 1 then Param := Param + '│' + 'y' else Param := Param + '│' + 'n';
			Param := Param + '│' + IntToStr(cbOutBound1.ItemIndex);
		
			if rg_SType.Tag = 2 then
			begin
				if cb_Sms_Gubun.ItemIndex > 0 then
				begin
					if (sg_notsms_list.DataController.RecordCount > 0) and
						(sg_notsms_list.DataController.Values[0, 0] <> sBrno) then
						proc_NotSMS(sBrNo);
				end;
			end;

			if (cbKeynumber02.Text <> '전체') and (cbKeynumber02.Text <> '') then
				Param := Param + '│' + StringReplace(cbKeynumber02.Text, '-', '', [rfReplaceAll]) else Param := Param + '│' + '';

			if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex > 0) then
				Param := Param + '│' + cb_st_city.Text + '│' + cb_st_ward.Text
			else if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex < 1) then
				Param := Param + '│' + cb_st_city.Text + '│' + ''
			else Param := Param + '│' + '' + '│' + '' ;


			if cxDate2_1S.Enabled then
				Param := Param + '│' + formatdatetime('yyyymmdd', cxDate2_1S.Date) + '│' + formatdatetime('yyyymmdd', cxDate2_1E.Date)
			else
				Param := Param + '│' + '' + '│' + '' ;

			case cbGubun2_1.ItemIndex of
				1: Param := Param + '│' + '0';
				2: Param := Param + '│' + '1';
				3: Param := Param + '│' + '3';
			end;

			Param := Param + '│' + edCustMemo01.Text;
			Param := Param + '│' + edCustName02.Text;
			Param := Param + '│' + edCustTel02.Text;


			slList := TStringList.Create;
			Screen.Cursor := crHourGlass;
			Try
				if not RequestBasePaging(GetSel06('GET_LIST_CUST_GENERAL', 'CUSTOMER.GET_LIST_CUST_GENERAL', '1000', Param), slList, ErrCode, ErrMsg) then
				begin
					Frm_Flash.hide;
					Application.ProcessMessages;
					GMessagebox(Format('고객조회-일반 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
					Frm_Main.Enabled := True;
					Screen.Cursor := crDefault;
					Exit;
				end;

{				xdom := ComsDomDocument.Create;
				try
					Frm_Flash.cxPBar1.Properties.Max := slList.Count;
					Frm_Flash.cxPBar1.Position := 0;
					CustView2.DataController.SetRecordCount(0);
					CustView2.BeginUpdate;
					for j := 0 to slList.Count - 1 do
					begin
						Frm_Flash.cxPBar1.Position := j + 1;
						Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
						Application.ProcessMessages;
						xmlData := slList.Strings[j];
						xdom.loadXML(XmlData);

						ls_MSG_Err := GetXmlErrorCode(XmlData);
						if ('0000' = ls_MSG_Err) then
						begin                                                                                            
							if (0 < GetXmlRecordCount(XmlData)) then
							begin
								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

								ls_Rcrd := TStringList.Create;
								try
									for i := 0 to lst_Result.length - 1 do
									begin
										GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
										Application.ProcessMessages;

										sEndDate := ls_rcrd[10];
										//----------------------------------------------------------------------------------------------
										//                  대표번호 길이가 8보다 큰경우만 생성
										//----------------------------------------------------------------------------------------------
										if (trim(ls_rcrd[1]) <> '') then
										begin
											iRow := CustView2.DataController.FindRecordIndexByText(0, 18 + 1, ls_rcrd[1] + ls_rcrd[3], True, True, True);
											//----------------------------------------------------------------------------------------------
											//                  대표번호 + 고객번호가 같은게 없을때만 생성
											//----------------------------------------------------------------------------------------------
											if (irow < 0) then
											begin
												iRow := CustView2.DataController.FindRecordIndexByText(0, 14 + 1, ls_rcrd[0], True, True, True);
												//----------------------------------------------------------------------------------------------
												//                  고객순번이 중복이면 생략
												//----------------------------------------------------------------------------------------------
												if iRow > 0 then
													continue;

												if chkNmlPhoneOut02.Checked then
												begin
													if not CheckHPType(ls_rcrd[3], ErrDesc) then
														Continue;
												end;

												iRow := CustView2.DataController.AppendRecord;
												CustView2.DataController.Values[iRow, 18 + 1] := ls_rcrd[1] + ls_rcrd[3];
												CustView2.DataController.Values[iRow, 17 + 1] := ls_rcrd[12];
												CustView2.DataController.Values[iRow, 15 + 1] := ls_rcrd[11];
												CustView2.DataController.Values[iRow, 9 + 1]  := ls_rcrd[13];
												CustView2.DataController.Values[iRow, 10 + 1] := ls_rcrd[14];
												CustView2.DataController.Values[iRow, 1 + 1] := strtocall(ls_rcrd[1]);
												CustView2.DataController.Values[iRow, 2 + 1] := ls_rcrd[2];
												CustView2.DataController.Values[iRow, 3 + 1] := strtocall(ls_rcrd[3]);
												CustView2.DataController.Values[iRow, 4 + 1] := ls_rcrd[4];
												//----------------------------------------------------------------------------------------------
												//                  고객등급 생성(지사별 설정값 반영)
												//----------------------------------------------------------------------------------------------
												iComCnt := StrToIntDef(ls_rcrd[5], 0);
												iCanCnt := StrToIntDef(ls_rcrd[6], 0);
												iTotal := iComcnt + iCanCnt;
												if iTotal = 0 then
													iCanRate := 0
												else
													iCanRate := Round((iCanCnt / iTotal * 100));
												CustView2.DataController.Values[iRow, 5 + 1] := IntToStr(iComCnt) + '/' + IntToStr(iCanCnt);
												CustView2.DataController.Values[iRow, 6 + 1] := intToStr(iCanRate) + '%';
												CustView2.DataController.Values[iRow, 7 + 1] := ls_rcrd[7];
												CustView2.DataController.Values[iRow, 8 + 1] := ls_rcrd[8];
												CustView2.DataController.Values[iRow, 11 + 1] := ls_rcrd[15];
												if Trim(sEndDate) <> '' then
													CustView2.DataController.Values[iRow, 12 + 1] := copy(sEndDate, 1, 4) + '-'
														+ copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
												else
													CustView2.DataController.Values[iRow, 12 + 1] := '';
												CustView2.DataController.Values[iRow, 13 + 1] := ls_rcrd[9];
												CustView2.DataController.Values[iRow, 14 + 1] := ls_rcrd[0];
												CustView2.DataController.Values[iRow, 15 + 1] := '';
												if rg_SType.Tag in [0, 1] then
													CustView2.DataController.Values[iRow, 19 + 1] := '0'
												else
													CustView2.DataController.Values[iRow, 19 + 1] := '1';
												CustView2.DataController.Values[iRow, 20 + 1] := func_buninSearch(ls_rcrd[9], ls_rcrd[1], ls_rcrd[16]);
												iIdx := scb_BranchCode.IndexOf(ls_rcrd[9]);
												if iIdx >= 0 then
													CustView2.DataController.Values[iRow, 1] := scb_BranchName[iIdx]
												else
													CustView2.DataController.Values[iRow, 1] := '';
												CustView2.DataController.Values[iRow, 21 + 1] := ls_rcrd[17];
												CustView2.DataController.Values[iRow, 22 + 1] := ls_rcrd[18];
											end;
										end;
									end;
								finally
									ls_Rcrd.Free;
								end;
							end
							else
							begin
								GMessagebox('검색된 내용이 없습니다.', CDMSE);
							end;

							lbCount09.Caption := '총 ' + IntToStr(CustView9.DataController.RecordCount) + '명';
							frm_Main.sbar_Message.Panels[4].Text := '';

							Screen.Cursor := crDefault;
						end
						else
						begin
							Frm_Flash.hide;
							Application.ProcessMessages;
							GMessagebox('검색된 내용이 없습니다', CDMSE);
						end;
					end;
				finally
					CustView9.EndUpdate;
					xdom := Nil;
				end; }
			Finally
				frm_Main.proc_SocketWork(True);
				Screen.Cursor := crDefault;
				Frm_Flash.hide;
				Frm_Main.Enabled := True;
			End;
		except
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Screen.Cursor := crDefault;
		End;
	end;
end;

procedure TFrm_CUT.btnMultiSaveClick(Sender: TObject);
  function fSetValue( idx : Integer;  sValue : Real ) : String;
  begin
    if idx = 0 then Result := '0' else
    if idx = 1 then Result := FloatToStr(sValue) else
    if idx = 2 then
    begin
      if sValue <= 100 then
        Result := FormatFloat('#,###.##', sValue/100)
      else
        Result := '0';
    end;
  end;
var
  i : Integer;
begin
	if cxBrNo8.Text = '' then    //지사코드
	begin
		GMessagebox('마일리지 설정은 지사를 선택하셔야 합니다.', CDMSE);
		Exit;
	end;

  try
    // 초기화
    for i := 1 to 6 do
    begin
      FSaveData[i].mType     := '';
      FSaveData[i].mGubun    := '';
      FSaveData[i].mCash     := '';
      FSaveData[i].mPost     := '';
      FSaveData[i].mCard     := '';
      FSaveData[i].mMile     := '';
      FSaveData[i].mReceipNo := '';
      FSaveData[i].mFirstAdd := '';
      FSaveData[i].mOverAdd  := '';
    end;

    FSaveData[1].mType := 'T';
    FSaveData[1].mGubun := '0';
    FSaveData[1].mCash := fSetValue(cbCashType0.ItemIndex, edtCashValue0.Value);
    FSaveData[1].mPost := fSetValue(cbPostType0.ItemIndex, edtPostValue0.Value);
    FSaveData[1].mCard := fSetValue(cbCardType0.ItemIndex, edtCardValue0.Value);
    FSaveData[1].mMile := fSetValue(cbMileType0.ItemIndex, edtMileValue0.Value);
    if chkReceipNoMile0.Checked then FSaveData[1].mReceipNo := 'y'
                                else FSaveData[1].mReceipNo := 'n';
    FSaveData[1].mFirstAdd := edtFirstAdd0.EditValue;
    FSaveData[1].mOverAdd  := edtOverAdd0.EditValue;

    FSaveData[2].mType := 'T';
    FSaveData[2].mGubun := '1';
    FSaveData[2].mCash := fSetValue(cbCashType1.ItemIndex, edtCashValue1.Value);
    FSaveData[2].mPost := fSetValue(cbPostType1.ItemIndex, edtPostValue1.Value);
    FSaveData[2].mCard := fSetValue(cbCardType1.ItemIndex, edtCardValue1.Value);
    FSaveData[2].mMile := fSetValue(cbMileType1.ItemIndex, edtMileValue1.Value);
    if chkReceipNoMile1.Checked then FSaveData[2].mReceipNo := 'y'
                                else FSaveData[2].mReceipNo := 'n';
    FSaveData[2].mFirstAdd := edtFirstAdd1.EditValue;
    FSaveData[2].mOverAdd  := edtOverAdd1.EditValue;

    FSaveData[3].mType := 'T';
    FSaveData[3].mGubun := '3';
    FSaveData[3].mCash := fSetValue(cbCashType3.ItemIndex, edtCashValue3.Value);
    FSaveData[3].mPost := fSetValue(cbPostType3.ItemIndex, edtPostValue3.Value);
    FSaveData[3].mCard := fSetValue(cbCardType3.ItemIndex, edtCardValue3.Value);
    FSaveData[3].mMile := fSetValue(cbMileType3.ItemIndex, edtMileValue3.Value);
    if chkReceipNoMile3.Checked then FSaveData[3].mReceipNo := 'y'
                                else FSaveData[3].mReceipNo := 'n';
    FSaveData[3].mFirstAdd := edtFirstAdd3.EditValue;
    FSaveData[3].mOverAdd  := edtOverAdd3.EditValue;

    FSaveData[4].mType := 'A';
    FSaveData[4].mGubun := '0';
    FSaveData[4].mCash := fSetValue(cbCashType0A.ItemIndex, edtCashValue0A.Value);
    FSaveData[4].mPost := fSetValue(cbPostType0A.ItemIndex, edtPostValue0A.Value);
    FSaveData[4].mCard := fSetValue(cbCardType0A.ItemIndex, edtCardValue0A.Value);
    FSaveData[4].mMile := fSetValue(cbMileType0A.ItemIndex, edtMileValue0A.Value);
    if chkReceipNoMile0A.Checked then FSaveData[4].mReceipNo := 'y'
                                 else FSaveData[4].mReceipNo := 'n';
    FSaveData[4].mFirstAdd := edtFirstAdd0A.EditValue;
    FSaveData[4].mOverAdd  := edtOverAdd0A.EditValue;

    FSaveData[5].mType := 'A';
    FSaveData[5].mGubun := '1';
    FSaveData[5].mCash := fSetValue(cbCashType1A.ItemIndex, edtCashValue1A.Value);
    FSaveData[5].mPost := fSetValue(cbPostType1A.ItemIndex, edtPostValue1A.Value);
    FSaveData[5].mCard := fSetValue(cbCardType1A.ItemIndex, edtCardValue1A.Value);
    FSaveData[5].mMile := fSetValue(cbMileType1A.ItemIndex, edtMileValue1A.Value);
    if chkReceipNoMile1A.Checked then FSaveData[5].mReceipNo := 'y'
                                 else FSaveData[5].mReceipNo := 'n';
    FSaveData[5].mFirstAdd := edtFirstAdd1A.EditValue;
    FSaveData[5].mOverAdd  := edtOverAdd1A.EditValue;

    FSaveData[6].mType := 'A';
    FSaveData[6].mGubun := '3';
    FSaveData[6].mCash := fSetValue(cbCashType3A.ItemIndex, edtCashValue3A.Value);
    FSaveData[6].mPost := fSetValue(cbPostType3A.ItemIndex, edtPostValue3A.Value);
    FSaveData[6].mCard := fSetValue(cbCardType3A.ItemIndex, edtCardValue3A.Value);
    FSaveData[6].mMile := fSetValue(cbMileType3A.ItemIndex, edtMileValue3A.Value);
    if chkReceipNoMile3A.Checked then FSaveData[6].mReceipNo := 'y'
                                 else FSaveData[6].mReceipNo := 'n';
    FSaveData[6].mFirstAdd := edtFirstAdd3A.EditValue;
    FSaveData[6].mOverAdd  := edtOverAdd3A.EditValue;

    for i := 1 to 6 do
    begin
      if ( ( FSchData[i].mType     <> FSaveData[i].mType     ) Or
           ( FSchData[i].mGubun    <> FSaveData[i].mGubun    ) Or
           ( FSchData[i].mCash     <> FSaveData[i].mCash     ) Or
           ( FSchData[i].mPost     <> FSaveData[i].mPost     ) Or
           ( FSchData[i].mCard     <> FSaveData[i].mCard     ) Or
           ( FSchData[i].mMile     <> FSaveData[i].mMile     ) Or
           ( FSchData[i].mReceipNo <> FSaveData[i].mReceipNo ) Or
           ( FSchData[i].mFirstAdd <> FSaveData[i].mFirstAdd ) Or
           ( FSchData[i].mOverAdd  <> FSaveData[i].mOverAdd  ) ) then pSetMultiMileSave(FSaveData[i]);
    end;

    GMessagebox('마일리지 설정이 완료 되었습니다.', CDMSI);
  except
  end;
end;

procedure TFrm_CUT.cxCheckBox3Click(Sender: TObject);
begin
	if cxCheckBox3.checked then
	begin
		cxCheckBox3.Tag := 0;
		
		if (chkLTNoMile.checked) and (chkCDNoMile.checked) then
		begin
			cxCheckBox3.checked := False;
			cxCheckBox3.Tag := 99;
		end;
		if cxCheckBox3.Tag = 99 then exit;
		
		rb_Straight.Enabled := True;
		rb_Declining.Enabled := True;
		cxCurrencyEdit6.Enabled := True;
		cxLabel190.Enabled := True;

		cxCheckBox2.Enabled := True;
		cxCheckBox10.Enabled := True;
		cxCheckBox11.Enabled := True;
		if (Not cxCheckBox2.checked) and (Not cxCheckBox10.checked) and (Not cxCheckBox11.checked) then cxCheckBox2.checked := True;
		//전부 미체크 시 고객만 자동체크
	end	else
	begin
		rb_Straight.Enabled := False;
		rb_Declining.Enabled := False;
		cxCurrencyEdit6.Enabled := False;
		cxLabel190.Enabled := False;

		cxCheckBox2.Enabled := False;
		cxCheckBox10.Enabled := False;
		cxCheckBox11.Enabled := False;
	end;
end;

procedure TFrm_CUT.cxCheckBox4Click(Sender: TObject);
begin
  cxGridSelectAll(CustView1, TcxCheckBox(Sender).Checked);
end;

procedure TFrm_CUT.cxCheckBox9Click(Sender: TObject);
begin
	if cxCheckBox9.checked then
  begin
		de_6stDate.Enabled := True;
		de_6edDate.Enabled := True;
		btn_Date1_1.Enabled := True;
	end else
	begin
		de_6stDate.Enabled := False;
		de_6edDate.Enabled := False;
		btn_Date1_1.Enabled := False;
	end;
end;

procedure TFrm_CUT.cxColCGColorStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Idx: Integer;
begin
  Idx := Sender.DataController.GetRowInfo(ARecord.Index).RecordIndex;

  AStyle := stlCustLevelColor;
  AStyle.Color := Hex6ToColor(Sender.DataController.Values[Idx, AItem.Index]);
end;

procedure TFrm_CUT.cxColCGLevelNameStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Idx: Integer;
begin
  Idx := Sender.DataController.GetRowInfo(ARecord.Index).RecordIndex;

  if UpperCase(Sender.DataController.Values[Idx, cxColCGDefaultYN.Index]) <> 'Y' then
    Exit;

  AStyle := stlCustLevelColor;
  AStyle.Color := clWhite;
  AStyle.Font.Style := [fsBold];
end;

procedure TFrm_CUT.cxColGLColorStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Idx: Integer;
begin
  Idx := Sender.DataController.GetRowInfo(ARecord.Index).RecordIndex;

  if Sender.DataController.Values[Idx, AItem.Index] = Null then
    Exit;

  AStyle := stlCustLevelColor;
  AStyle.Color := Hex6ToColor(Sender.DataController.Values[Idx, AItem.Index]);
end;

procedure TFrm_CUT.cxColGLLevelNameStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Idx: Integer;
begin
  Idx := Sender.DataController.GetRowInfo(ARecord.Index).RecordIndex;

  if Sender.DataController.Values[Idx, cxColGLDefaultYN.Index] = Null then
    Exit;

  if UpperCase(Sender.DataController.Values[Idx, cxColGLDefaultYN.Index]) <> 'Y' then
    Exit;

  AStyle := stlCustLevelColor;
  AStyle.Color := clWhite;
  AStyle.Font.Style := [fsBold];
end;

procedure TFrm_CUT.cxGridCopy(ASource, ATarget: TcxGridDBTableView;
  AKeyIndex: Integer; AKeyValue: string);
var
  I, J,
  Row: Integer;
	KeyData: string;
begin
  if AKeyIndex < 0 then
    Exit;

  if Trim(AKeyValue) = '' then
    Exit;

  for I := 0 to ASource.DataController.RecordCount - 1 do
  begin
    KeyData := ASource.DataController.GetValue(I, AKeyIndex);
    if Pos(AKeyValue, KeyData) > 0 then
    begin
      Row := ATarget.DataController.AppendRecord;

      ATarget.DataController.Values[Row, 0] := Row + 1;
      for J := 1 to ASource.ColumnCount - 1 do
        ATarget.DataController.Values[Row, J] := ASource.DataController.GetValue(I, J);
    end;
  end;
end;

procedure TFrm_CUT.cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iIndex : integer;
begin
	iRow := cxGridDBTableView1.DataController.FocusedRecordIndex;
	iIndex := cxGridDBTableView1.GetColumnByFieldName('cuseq').Index;
	if cxGridDBTableView1.DataController.Values[iRow, iIndex] <> '' then
	begin
		cxLabel251.Caption := cxGridDBTableView1.DataController.Values[iRow, iIndex] ;

		iIndex := cxGridDBTableView1.GetColumnByFieldName('고객명').Index;
		cxLabel243.Caption := cxGridDBTableView1.DataController.Values[iRow, iIndex] ;

		iIndex := cxGridDBTableView1.GetColumnByFieldName('이용횟수').Index;
		cxLabel245.Caption := cxGridDBTableView1.DataController.Values[iRow, iIndex] ;

		iIndex := cxGridDBTableView1.GetColumnByFieldName('최종일자').Index;
		cxLabel247.Caption := cxGridDBTableView1.DataController.Values[iRow, iIndex] ;
		if cxLabel247.Caption <> '' then
			cxLabel247.Caption := copy(cxLabel247.Caption, 1,4) + '-' + copy(cxLabel247.Caption, 5,2) + '-' + copy(cxLabel247.Caption, 7,2);  // 최종이용일자

		iIndex := cxGridDBTableView1.GetColumnByFieldName('메모').Index;
		cxTextEdit20.Text := cxGridDBTableView1.DataController.Values[iRow, iIndex] ;

		iIndex := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;
		cxTextEdit18.Text := strtocall(cxGridDBTableView1.DataController.Values[iRow, iIndex]) ;
		cxLabel250.Caption := cxGridDBTableView1.DataController.Values[iRow, 1] ;
		if cxTextEdit18.Text <> '' then
		begin
			proc_Cust_PhoneSel(1);
			cxTextEdit18.Text := '';
		end;
		iFlag := 2;
	end else
  if iFlag <> 1 then
	begin
		cxTextEdit18.Text := '';
		cxTextEdit19.Text := '';
		cxTextEdit20.Text := '';
		cxLabel243.Caption := '';
		cxLabel245.Caption := '';
		cxLabel247.Caption := '';
		cxLabel250.Caption := '';
		cxLabel240.Caption := '';
		cxLabel251.Caption := '';
		cxVirtureList.DataController.SetRecordCount(0);
		pnl5.Visible := False;
		cxTextEdit20.Enabled := True;
	end	else
	begin
		if func_ChkPhone then
			cxLabel250.Caption := strtocall(cxGridDBTableView1.DataController.Values[iRow, 1]) ;
	end
end;

procedure TFrm_CUT.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
	Exit;
end;

procedure TFrm_CUT.cxGridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_CUT.cxPageControl1Change(Sender: TObject);
Var iTag : Integer;
begin
  if cxPageControl1.Tag = 1 then Exit;
  
	iTag := cxPageControl1.Pages[cxPageControl1.ActivePageIndex].Tag;
	if Assigned(Frm_JON51) then
			if TCK_USER_PER.BTM_MENUSCH = '1' then Frm_JON51.Menu_Use_Mark('ADD', iTag);
	case cxPageControl1.ActivePageIndex of
		4:
			begin
				cbKeynumber05.ItemIndex := 1;
				cbKeynumber01Click(cbKeynumber05);
				if (cxBrNo5.text = '') then//(GT_USERIF.LV = '60') or
				begin
					ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
										+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');
					Exit;
				end;
				proc_VirtureNum_init;
				if cxGridDBTableView1.DataController.RowCount < 1 then
					cxGridDBTableView1.DataController.SetRecordCount(0);
//        proc_VirtureNum; // 가상번호 리스트 조회
			end;
		7: proc_MileageSet; // [hjf] 090223 - 마일리지 설정 화면 이동 시 지사선택이 아닌경우 메시지 표출
		10: proc_branch_change;
  end;
end;

procedure TFrm_CUT.cxRadioButton10Click(Sender: TObject);
begin
	cxTextEdit1.Value := 0;
  cxTextEdit2.Value := 0;
  cxTextEdit3.Text := '';
	if cxRadioButton12.Checked then cxLabel92.Caption := '%'
                             else cxLabel92.Caption := '원';
end;

procedure TFrm_CUT.cxRadioButton13Click(Sender: TObject);
begin
  cxTextEdit4.Value := 0;
  cxTextEdit5.Value := 0;
  cxTextEdit6.Text := '';
  if cxRadioButton15.Checked then cxLabel128.Caption := '%'
                             else cxLabel128.Caption := '원';
end;

procedure TFrm_CUT.cxRadioButton16Click(Sender: TObject);
begin
  cxTextEdit7.Value := 0;
  cxTextEdit8.Value := 0;
  cxTextEdit9.Text := '';
  if cxRadioButton18.Checked then
  begin
    cxLabel148.Caption := '%';
    chkBRNoMile.Checked := False;
  end else
  if cxRadioButton17.Checked then
  begin
    cxLabel148.Caption := '원';
    chkBRNoMile.Checked := False;
  end else
  if cxRadioButton16.Checked then
  begin
    cxLabel148.Caption := '원';
  end;
end;

procedure TFrm_CUT.cxRadioButton19Click(Sender: TObject);
begin
  cxTextEdit10.Value := 0;
  cxTextEdit11.Value := 0;
  cxTextEdit12.Text := '';
  if cxRadioButton21.Checked then cxLabel168.Caption := '%'
                             else cxLabel168.Caption := '원';
end;

procedure TFrm_CUT.cxRBAClick(Sender: TObject);
begin
  cxDate12_1S.Enabled := cxRBB.Checked;
  cxDate12_1E.Enabled := cxRBB.Checked;
  btn_Date12_1.Enabled := cxRBB.Checked;
end;

procedure TFrm_CUT.cxTextEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
    btn_1_4Click(nil);
end;

procedure TFrm_CUT.cxTextEdit17KeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8, #22] then      //Ctrl+v = #22 or #$16
	else
		key := #0;
end;

procedure TFrm_CUT.cxTextEdit18KeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = vk_Return then btn_5_1.Click;
end;

procedure TFrm_CUT.cxTextEdit19KeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = vk_Return then btn_5_2.Click;
end;

procedure TFrm_CUT.cxViewCustGroupCellDblClick(Sender: TcxCustomGridTableView;
	ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
var
  Row: Integer;
  GroupName, GroupSeq, LevelSeq: string;
begin
  Row := cxViewCustGroup.DataController.FocusedRecordIndex;

	GroupName := cxViewCustGroup.DataController.Values[Row, cxColCGGroupName.Index];
  GroupName := Copy(GroupName, Pos(']', GroupName) + 1, Length(GroupName));
	GroupSeq := cxViewCustGroup.DataController.Values[Row, cxColCGGroupSeq.Index];
  LevelSeq := cxViewCustGroup.DataController.Values[Row, cxColCGLevelSeq.Index];

  ShowCustLevelWindow(GroupName, GroupSeq, False, LevelSeq);
end;

procedure TFrm_CUT.cxViewCustLevelCanSelectRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
var
  GroupSeq: string;
begin
  GroupSeq := cxViewCustLevel.DataController.Values[ARecord.Index, cxColCLGroupSeq.Index];
  RequestDataLevelFromGroupSeq(GroupSeq);
end;

procedure TFrm_CUT.cxViewCustLevelFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
	AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  GroupSeq: string;
begin
  if not Assigned(AFocusedRecord) then Exit;

  GroupSeq := cxViewCustLevel.DataController.Values[AFocusedRecord.Index, cxColCLGroupSeq.Index];
  RequestDataLevelFromGroupSeq(GroupSeq);
end;

procedure TFrm_CUT.cxViewRCMDCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
Var iRow : Integer;
begin
	iRow := cxViewRCMD.DataController.FocusedRecordIndex;
	if iRow = -1 then	Exit;

  btn_12_3.Click;
end;

procedure TFrm_CUT.cxViewRCMDDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxViewRCMD, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUT.cxViewRCMDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  AGridSite: TcxGridSite;
  AGridView: TcxGridTableView;
  AValue: string;
begin
  if (Key = Ord('C')) and (ssCtrl in Shift) then
  begin
    AGridSite := Sender as TcxGridSite;
    AGridView := AGridSite.GridView as TcxGridDBTableView;
    Clipboard.AsText := AGridView.Controller.FocusedRow.Values[AGridView.Controller.FocusedColumn.Index];
    Key := 0;
  end;
end;

procedure TFrm_CUT.cxViewRCMD_DDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxViewRCMD_D, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUT.DelCustGroup(AGroupSeq: string);
var
  XmlData, ErrMsg: string;
  ErrCode: Integer;
begin
  if not RequestBase(GetCallable05('DelCustLevelItem', 'cust_level.group_delete', AGroupSeq), XmlData, ErrCode, ErrMsg) then
  begin
    GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  RequestDataCustLevel;
end;

procedure TFrm_CUT.DelCustLevel(ALevelSeq: string);
var
  XmlData, ErrMsg: string;
  ErrCode: Integer;
begin
  if not RequestBase(GetCallable05('DelCustLevelItem', 'cust_level.lv_delete', ALevelSeq), XmlData, ErrCode, ErrMsg) then
  begin
    GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  RequestDataCustLevel;
end;

function TFrm_CUT.DeleteCustomer(AView: TcxGridDBTableView;
  ALabel: TcxLabel): Boolean;
var
  I, Cnt: Integer;
  iColBrNo, iColKeyNum, iColCustNum, iColSeq : Integer;
  HdNo, BrNo, KeyNum, CustNum, CuSeq : string;
  FailedCount: Integer;
  Msg, FailedList: string;
  DelRows: TStringList;
begin
  Result := False;

  Cnt := AView.DataController.GetSelectedCount;

  if (Cnt = 0) then
  begin
    GMessagebox('고객을 선택해 주세요.', CDMSE);
    Exit;
  end;

  Msg := Format('[%d]명의 고객을 삭제하시겠습니까?'#13#10'삭제시 고객정보, 이용횟수, 마일리지가 삭제됩니다.', [Cnt]);

  if GMessagebox(Msg, CDMSQ) <> IDOK then Exit;

  iColBrNo    := AView.GetColumnByFieldName('지사코드').Index;
  iColKeyNum  := AView.GetColumnByFieldName('대표번호').Index;
  iColCustNum := AView.GetColumnByFieldName('고객번호').Index;
  iColSeq     := AView.GetColumnByFieldName('SEQ').Index;

  HdNo := GT_USERIF.HD;
  FailedCount := 0;

  try
    // 읽어서 바로 삭제 시 DataController와 ViewData 데이터 인덱스 Sync가 틀어져서 리스트에 추가후 제거
    DelRows := TStringList.Create;
    try
      for I := AView.DataController.RecordCount - 1 downto 0 do
      begin
        if AView.ViewData.Rows[I].Selected then
        begin
          BrNo    := AView.ViewData.Rows[I].Values[iColBrNo];
          KeyNum  := AView.ViewData.Rows[I].Values[iColKeyNum];
          CustNum := AView.ViewData.Rows[I].Values[iColCustNum];
          CuSeq   := AView.ViewData.Rows[I].Values[iColSeq];

          if not DeleteCustomerData(HdNo, BrNo, KeyNum, CustNum, CuSeq) then
          begin
            FailedList := Format('대표번호: %s, 고객번호: %s', [KeyNum, CustNum])  + #13#10 + FailedList;
            Inc(FailedCount);
          end else
          begin
            DelRows.Add(Format('%.10d', [AView.ViewData.Rows[I].RecordIndex]));
          end;
        end;
      end;

      AView.DataController.BeginUpdate;
      try
        DelRows.Sort;
        for I := DelRows.Count -1 downto 0 do
        begin
          AView.DataController.DeleteRecord(StrToInt(DelRows[I]));
        end;
      finally
        AView.DataController.EndUpdate;
      end;
    finally
      DelRows.Free;
    end;

    if FailedCount = 0 then
    begin
      Msg := Format('[%d]의 고객을 삭제했습니다.', [Cnt]);
  		GMessagebox(Msg, CDMSI);
    end else
    begin
      Msg := Format('[%d]의 고객 삭제 중 [%d]명 고객정보 삭제에 실패했습니다.'#13#10#13#10, [Cnt, FailedCount]);
      Msg := Msg + '[실패고객 정보]'#13#10 + FailedList;
  		GMessagebox(Msg, CDMSE);
		end;

    Result := True;
  except on E: Exception do
    begin
      GMessagebox(Format('고객삭제 중 오류가 발생했습니다.[오류: %s]', [E.Message]), CDMSE);
      Assert(False, E.Message);
    end;
  end;
  ALabel.Caption := '총 ' + IntToStr(AView.DataController.RecordCount) + '명';
end;

function TFrm_CUT.DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum,
  ACuSeq: string): Boolean;
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, ls_Msg_Err, sMsg: string;
  sTemp, sParam: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  Result := False;

  AKeyNum   := StringReplace(AKeyNum, '-', '', [rfReplaceAll]);
  ACustNum  := StringReplace(ACustNum, '-', '', [rfReplaceAll]);

  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE.xml');

  sTemp := 'PROC_DELETE_CUSTOMER_NEW1(?,?,?,?,?,?)';
  sParam := StringReplace(ls_Param, 'ParamString', AHdNo, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', ABrNo, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', AKeynum, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', ACustNum, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', ACuSeq, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'DELETECUST', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(5), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sParam, [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
			rv_str := slReceive[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        try
          ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
          sMsg := GetXmlErrorMsg(ls_rxxml);

          if ('0000' = ls_Msg_Err) and ('1' = sMsg) then
          begin
            Result := True;
          end;
        except on E: Exception do
        end;
      end;
    end;
  finally
    FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUT.edCustName01KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then
		btn_1_4Click(nil);
end;

procedure TFrm_CUT.edCustName09KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then btn_9_2.click;
end;

procedure TFrm_CUT.edCustTel12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then
		btn_12_1Click(nil);
end;

procedure TFrm_CUT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UsrNameReg.WriteString('footer', sFooter);
  UsrNameReg.WriteString('header', sHeader);
  UsrNameReg.CloseKey;
  FreeAndNil(UsrNameReg);
  FreeAndNil(lb_st_customer);
  FreeAndNil(lbNoSms);
  FreeAndNil(SCboLevelSeq);
  Action := caFree;
end;

procedure TFrm_CUT.FormCreate(Sender: TObject);
var i : Integer;
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

	lb_st_customer := TStringList.Create;
  lbNoSms := TStringList.Create;
  SCboLevelSeq := TStringList.Create;

	cxPageControl1.ActivePageIndex := 0;
  cxPageControl1.Tag := 1;

  cxPageControl1.Pages[0].TabVisible := TCK_USER_PER.CUR_Manager = '1';    // 401.고객관리
	cxPageControl1.Pages[1].TabVisible := TCK_USER_PER.CUR_General = '1';    // 402.일반검색
	cxPageControl1.Pages[2].TabVisible := TCK_USER_PER.CUR_High = '1';       // 403.고급검색
	cxPageControl1.Pages[3].TabVisible := TCK_USER_PER.CUR_Detail = '1';     // 404.상세검색
	cxPageControl1.Pages[4].TabVisible := TCK_USER_PER.CUR_Virture = '1';    // 405.안심번호관리
	cxPageControl1.Pages[5].TabVisible := TCK_USER_PER.CUR_Dormancy = '1';   // 406.휴먼고객
	cxPageControl1.Pages[6].TabVisible := TCK_USER_PER.CUR_CustLevel = '1';  // 407.고객등급관리
	cxPageControl1.Pages[7].TabVisible := TCK_USER_PER.CUR_Mileage = '1';       // 408.마일리지설정
	cxPageControl1.Pages[8].TabVisible := TCK_USER_PER.CUR_MileageStat = '1';   // 409.마일리지현황(고객별)
	cxPageControl1.Pages[9].TabVisible := TCK_USER_PER.CUR_MileageDetail = '1'; // 410.마일리지상세(적립+지급)
	cxPageControl1.Pages[10].TabVisible := False; // TCK_USER_PER.CUR_OKCashBack = '1';    // 411.OK캐쉬백적립현황 메뉴 제거 20201020.CDS
//  cxPageControl1.Pages[11].TabVisible := False;

  cxPageControl1.Tag := 0;

  pnl5.Left := 4;
  pnl5.Top  := 0;

	proc_init;

	UsrNameReg := TRegistry.Create;
  UsrNameReg.RootKey := HKEY_CURRENT_USER;
  UsrNameReg.OpenKey('Software\Microsoft\Internet Explorer\PageSetup', True);

  if UsrNameReg.KeyExists('footer') then
  begin
    sFooter := UsrNameReg.ReadString('footer');
    UsrNameReg.WriteString('footer', '');
  end else
  begin
    UsrNameReg.CreateKey('footer');
    UsrNameReg.WriteString('footer', '');
    sFooter := '&u&b&d';
  end;
  if UsrNameReg.KeyExists('header') then
  begin
    sHeader := UsrNameReg.ReadString('header');
    UsrNameReg.WriteString('header', '');
  end else
  begin
    UsrNameReg.CreateKey('header');
    UsrNameReg.WriteString('header', '');
    sHeader := '&w&bPage &p of &P';
  end;
end;

procedure TFrm_CUT.FormDestroy(Sender: TObject);
begin
	Frm_CUT := Nil;
end;

procedure TFrm_CUT.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_CUT, GS_FONTNAME);
  for i := 0 to pred(cxStyleCustLevel.Count) do
  begin
    TcxStyle(cxStyleCustLevel.Items[i]).Font.Name := GS_FONTNAME;
  end;

  for i := 0 to pred(cxStyleRepository1.Count) do
  begin
    TcxStyle(cxStyleRepository1.Items[i]).Font.Name := GS_FONTNAME;
  end;

  for i := 0 to pred(cxStyleRepository2.Count) do
  begin
    TcxStyle(cxStyleRepository2.Items[i]).Font.Name := GS_FONTNAME;
  end;
end;

function TFrm_CUT.func_buninSearch(sBrNo, sKeyNum, sCode: string): string;
var
  i: Integer;
begin
  Result := '';
  for i := 0 to GT_BUBIN_INFO.brNo_KeyNum.Count - 1 do
  begin
    if (GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(sbrNo, 5, ' ') + Rpad(StringReplace(sKeyNum, '-', '', [rfReplaceAll]), 15, ' '))
      and (GT_BUBIN_INFO.cbcode[i] = sCode + ',' + sBrNo) then
    begin
      Result := Trim(GT_BUBIN_INFO.cbCorpNm.Strings[i]) + ' / ' +
                Trim(GT_BUBIN_INFO.cbDeptNm.Strings[i]);
      Break;
    end;
  end;
end;

function TFrm_CUT.func_ChkPhone: Boolean;
var iRow, iCnt : integer;
begin
	iCnt := 0;
	for iRow := 0 to cxVirtureList.DataController.RowCount - 1 do
	begin
		if cxVirtureList.DataController.Values[iRow, 2] <> '' then
			inc(iCnt);
	end;
	if iCnt > 0 then Result := False
	            else Result := True;
end;

function TFrm_CUT.func_recieve(slList: TStringList): Boolean;
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  ls_MSG_Err, ls_ClientKey: string;
  ls_XML: Widestring;
  ls_RV_Cnt: Integer;
  i, j, iRow: Integer;
  ls_rxxml: string;
begin
  try
    Screen.Cursor := crHourGlass;
    ls_XML := slList[0];
    xdom := ComsDomDocument.Create;
    try
      result := True;
      if not xdom.loadXML(ls_XML) then
      begin
        Result := False;
        Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_XML);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_RV_Cnt := GetXmlRecordCount(ls_XML);
        if (0 < ls_RV_Cnt) then
        begin
          ls_ClientKey := GetXmlClientKey(ls_XML);
          if ls_ClientKey = 'NOSM0002' then
          begin
            sg_notsms_list.BeginUpdate;
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
                    iRow := sg_notsms_list.DataController.AppendRecord;
                    sg_notsms_list.DataController.Values[iRow, 0] := ls_Rcrd[1];
                    sg_notsms_list.DataController.Values[iRow, 1] := ls_Rcrd[0];
                    sg_notsms_list.DataController.Values[iRow, 2] := ls_Rcrd[1] + ls_Rcrd[0];
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
            end;
            sg_notsms_list.EndUpdate;
            result := False;
          end;
        end else
        begin
          Result := False;
        end;
      end else
      begin
        Result := False;
        GMessagebox(MSG012 + CRLF + ls_Msg_Err, CDMSE);
      end;
      Application.ProcessMessages;
    finally
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
    Result := False;
  end;
end;

function TFrm_CUT.GetActiveDateControl(AIndex : integer; var AStDt, AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;
	case AIndex of
		11 : begin
					 AStDt := de_6stDate;
					 AEdDt := de_6edDate;
				 end;
		12 : begin
					 AStDt := de_1stDate;
					 AEdDt := de_1edDate;
				 end;
		13 : begin
					 AStDt := de_3stDate;
					 AEdDt := de_3edDate;
				 end;
		14 : begin
					 AStDt := de_2stDate;
					 AEdDt := de_2edDate;
				 end;
		15 : begin
					 AStDt := de_4stDate;
					 AEdDt := de_4edDate;
				 end;
		16 : begin
					 AStDt := de_5stDate;
					 AEdDt := de_5edDate;
				 end;
		21 : begin
					 AStDt := cxDate2_1S;
					 AEdDt := cxDate2_1E;
				 end;
		31 : begin
					 AStDt := cxDate3_1S;
					 AEdDt := cxDate3_1E;
				 end;
		32 : begin
					 AStDt := de_A31stDate;
					 AEdDt := de_A31edDate;
				 end;
		33 : begin
					 AStDt := de_A33stDate;
					 AEdDt := de_A33edDate;
				 end;
		34 : begin
					 AStDt := de_A32stDate;
					 AEdDt := de_A32edDate;
				 end;
		41 : begin
					 AStDt := cxDate4_1S;
					 AEdDt := cxDate4_1E;
				 end;
		42 : begin
					 AStDt := cxDate4_2S;
					 AEdDt := cxDate4_2E;
				 end;
		43 : begin
					 AStDt := cxDate4_3S;
					 AEdDt := cxDate4_3E;
				 end;
		91 : begin
					 AStDt := cxDate9_1S;
					 AEdDt := cxDate9_1E;
				 end;
		92 : begin
					 AStDt := cxDate9_2S;
					 AEdDt := cxDate9_2E;
				 end;
		101: begin
					 AStDt := cxDate10_1S;
					 AEdDt := cxDate10_1E;
				 end;
		111: begin
					 AStDt := dtOKCStDate;
					 AEdDt := dtOKCEdDate;
				 end;
		112: begin
					 AStDt := cxDate12_1S;
					 AEdDt := cxDate12_1E;
				 end;
	end;
end;

function TFrm_CUT.GetDeptCustomerCount(AHdNo, ABrNo,
  ADeptCode: string): Integer;
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_TxLoad, ls_TxQry, sQueryTemp,
  XmlStr, ErrorCode: string;
  StrList: TStringList;
  ErrCode: Integer;
begin
  Result := -1;

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_CUST_BUBIN_COUNT_SEARCH, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [AHdNo, ABrNo, ADeptCode]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '14', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '500', [rfReplaceAll]);

  StrList := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, StrList, ErrCode, False, 30000) then
    begin
      Application.ProcessMessages;

      xdom := ComsDomDocument.Create;
      try
        XmlStr := StrList[0];
        if not xdom.loadXML(XmlStr) then
          Exit;

        ErrorCode := GetXmlErrorCode(XmlStr);
        if ('0000' = ErrorCode) then
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

          Result := StrToIntDef(GetTextSeperationFirst('│', lst_Result.item[0].attributes.getNamedItem('Value').Text), -1);
        end;
      finally
        xdom := Nil;
      end;
    end;
  finally
    Frm_Flash.Hide;
    FreeAndNil(StrList);
  end;
end;

procedure TFrm_CUT.Label7Click(Sender: TObject);
  procedure RunDownload;
  var
    IE: Variant;
  begin
    try
      IE := CreateOleObject('InternetExplorer.Application');

      IE.height := 100;
      IE.width := 100;
      IE.left := 0;
      IE.top := 0;

      IE.MenuBar := False;
      IE.AddressBar := True;
      IE.Resizable := False;
      IE.StatusBar := False;
      IE.ToolBar := False;
      IE.Silent := false;

      sleep(1);

      IE.Navigate('http://www.callmaner.com/download/콜마너_고객등급변경신청서.xls');
      IE.Visible := True;

      Application.ProcessMessages;
      sleep(1);
    except on E: Exception do
			GMessagebox(Format('신청서 다운로드 시 오류(Err: %s)가 발생하였습니다.'#13#10
												+ '(다시시도 바랍니다.)' , [E.Message]), CDMSE);
		end;
  end;
begin
	RunDownload;
end;

procedure TFrm_CUT.menuCallBellClick(Sender: TObject);
var sTmp : string;
	i, j, iTmp, iAddRow : integer;
	slTmp : TStringList;
	iHdNo, iBrNo, iKeyNum, iSeq, iCuName, iRow: Integer;
	sHdNo, sBrNo, sKeyNum, sSeq, sCuName: string;
begin
	iRow := CustView1.DataController.FocusedRecordIndex;
	if iRow = -1 then
		Exit;

	iHdNo   := CustView1.GetColumnByFieldName('hdno').Index;
	iBrNo   := CustView1.GetColumnByFieldName('지사코드').Index;
	iKeyNum := CustView1.GetColumnByFieldName('대표번호').Index;
	iSeq    := CustView1.GetColumnByFieldName('SEQ').Index;
	iCuName := CustView1.GetColumnByFieldName('고객명').Index;
	sHdNo   := CustView1.DataController.Values[iRow, iHdNo];
	sBrNo   := CustView1.DataController.Values[iRow, iBrNo];
	sKeyNum := CustView1.DataController.Values[iRow, iKeyNum];
	sSeq    := CustView1.DataController.Values[iRow, iSeq];
	sCuName := CustView1.DataController.Values[iRow, iCuName];

	if Frm_BTN.Scb_CallBell_KeyNumber.IndexOf(CallToStr(sKeyNum)) < 0 then
	begin
		GMessagebox('콜벨업소로 변경이 불가능합니다.', CDMSE);//'실착신번호가 연결되지 않은 대표번호로' + #13#10 + '콜벨업소로 변경이 불가능합니다.', CDMSI);
		exit;
	end;
	if ( Not Assigned(Frm_BTN01) ) Or ( Frm_BTN01 = Nil ) then 
		Frm_BTN01 := TFrm_BTN01.Create(Nil)
	else Frm_BTN01.proc_Init;

	sTmp := '';
	for i := 0 to Frm_BTN.Scb_CallBell_BrNo.Count - 1 do
	begin
		iTmp := scb_DsBranchCode.IndexOf(Frm_BTN.Scb_CallBell_BrNo[i]);
		if iTmp < 0 then Continue;

		if sTmp = Frm_BTN.Scb_CallBell_BrNo[i] then Continue;
		// 본사코드   // 지사코드   // 지사명   // 대표번호
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		begin
			if sHdNo = scb_HeadCode[iTmp] then
			begin
				Frm_BTN01.cboBranch.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
					Frm_BTN.Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
				sTmp := Frm_BTN.Scb_CallBell_BrNo[i];
			end;
		end else
		begin
			Frm_BTN01.cboBranch.Properties.Items.Add(scb_HeadCode[iTmp] + '.' +
				Frm_BTN.Scb_CallBell_BrNo[i] + ': ' + scb_DsBranchName[iTmp]);
			sTmp := Frm_BTN.Scb_CallBell_BrNo[i];
		end;
	end;


	Frm_BTN01.cboBankCode.Properties.Items.Clear;
	Frm_BTN01.cboBankName.Properties.Items.Clear;
	Frm_BTN01.cboBankCode.Properties.Items.Assign(Frm_BTN.Scb_BankCd);
	Frm_BTN01.cboBankName.Properties.Items.Assign(Frm_BTN.Scb_BankNm);
	Frm_BTN01.cboBankName.ItemIndex := 0;

	if not Frm_BTN.func_CallBellUpso(sBrNo, sSeq) then    
	begin              
		if func_Cust_Search(sHdNo, sBrNo, sKeyNum, sSeq) then 
		begin
			//콜벨업소로 등록되지 않았다면
			Frm_BTN01.clbCuSeq.Caption := sSeq;

			for j := 0 to Frm_BTN01.cboBranch.Properties.Items.Count - 1 do
			begin
				sTmp := Copy(Frm_BTN01.cboBranch.Properties.Items[j], Pos('.', Frm_BTN01.cboBranch.Properties.Items[j]) + 1, Pos(':',
								Frm_BTN01.cboBranch.Properties.Items[j]) - (Pos('.', Frm_BTN01.cboBranch.Properties.Items[j]) + 1)); //지사코드
				if sBrNo = sTmp then
				begin
					Frm_BTN01.cboBranch.ItemIndex := j;
					Break;
				end;
			end;
			Frm_BTN01.cboKeynumber.ItemIndex := Frm_BTN01.cboKeynumber.Properties.Items.Indexof(StrToCall(sKeyNum));
			Frm_BTN01.cboUpsoWK.ItemIndex := 0;

			Frm_BTN01.edtUpsoName.Text := FCuData.CuName;
			Frm_BTN01.edtUpsoHP.Text := '';

			Frm_BTN01.cboStatus.ItemIndex := 0;
			Frm_BTN01.btnSave.Enabled := True;


			
			slTmp := TStringList.Create;
			try
				slTmp.Clear;
				slTmp.Delimiter     := '|';
				slTmp.DelimitedText := FCuData.CuTelList;
				Try
					Frm_BTN01.cxUpsoTel.BeginUpdate;
					Frm_BTN01.cxUpsoTel.DataController.SetRecordCount(0);
					for i := 0 to slTmp.Count - 1 do
					begin
						iAddRow := Frm_BTN01.cxUpsoTel.DataController.AppendRecord;
						Frm_BTN01.cxUpsoTel.DataController.Values[iAddRow, 0] := slTmp[i];
					end;
					Frm_BTN01.cxUpsoTel.EndUpdate;
				except
					Frm_BTN01.cxUpsoTel.EndUpdate;
        End;

				Frm_BTN01.rb_Straight.Checked := True;

				Frm_BTN01.edtCalValue.Text := '';
				Frm_BTN01.cboBankName.ItemIndex := 0;
				Frm_BTN01.edtBankNumberCust.Text := '';
				Frm_BTN01.edtBankOwnerCust.Text  := '';

				Frm_BTN01.lcsCallBell1 := FCuData.CuStart1;
				Frm_BTN01.lcsCallBell2 := FCuData.CuStart2;
				Frm_BTN01.lcsCallBell3 := FCuData.CuStart3;
				Frm_BTN01.lbUpsoAreaName.Caption  := FCuData.CuStart1 + ' ' + FCuData.CuStart2 + ' ' + FCuData.CuStart3;
				Frm_BTN01.edtUpsoAreaDetail.Caption := FCuData.CuAreaDetail;
				Frm_BTN01.meoCallBellArea.Text := FCuData.CuArea;
				Frm_BTN01.edtXval.Caption := FCuData.CuXval;
				Frm_BTN01.edtYval.Caption := FCuData.CuYVal;
		
				if Trim(FCuData.CuMemo) <> '' then
				begin
					GetTextSeperationEx2('¶', FCuData.CuMemo, slTmp);
					for j := 0 to slTmp.Count - 1 do
					begin
						Frm_BTN01.meoCallBellUpsoMemo.Lines.Add(slTmp[j]);
					end;
				end;   

			finally
				slTmp.Free;
			end;    
		end;
	end;

			
	Frm_BTN01.btnSave.Caption := '수정';

	Frm_BTN01.pnlTitle.Caption := '   콜벨 업소 수정';
	Frm_BTN01.pnlTitle.Hint := 'Update';
	Frm_BTN01.cboBranch.Enabled := False;
	Frm_BTN01.cboKeynumber.Enabled := False;

	if not Frm_BTN01.Showing then
	begin
		Frm_BTN01.Left := (Screen.Width  - Frm_BTN01.Width) div 2;
		Frm_BTN01.top  := (Screen.Height - Frm_BTN01.Height) div 2;
		if Frm_BTN01.top <= 10 then Frm_BTN01.top := 10;

		Frm_BTN01.Tag := 1;
		Frm_BTN01.Show;
  end;
end;


procedure TFrm_CUT.N1Click(Sender: TObject);
begin
	proc_CustCounsel_Clear;
end;

procedure TFrm_CUT.MenuItem6Click(Sender: TObject);
begin
	btn_1_8Click(nil);
end;

procedure TFrm_CUT.menuUpsoPeeClick(Sender: TObject);
var i, iSeq, iCnt, iGubun : integer;
	sCutSeq : string;
begin
	cxGrid1.Enabled := False;
	gslUpsoPeeSeq := TStringList.Create;
	Try
    iCnt := 0;
		iAddCnt := 0;
		sCutSeq := '';
		iSeq  := CustView1.GetColumnByFieldName('SEQ').Index;
		iGubun  := CustView1.GetColumnByFieldName('구분').Index;
		Screen.Cursor := crHourGlass;
		for I := 0 to CustView1.DataController.RecordCount - 1 do
		begin
			if (CustView1.ViewData.Records[i].Selected) and (CustView1.ViewData.Records[I].Values[iGubun] = '업소') then
			begin
				if sCutSeq = '' then
				begin
					sCutSeq := Trim(CustView1.ViewData.Records[I].Values[iSeq]);
				end else
				begin
					sCutSeq := sCutSeq + ',' + Trim(CustView1.ViewData.Records[I].Values[iSeq]);
				end;
				Inc(iCnt);
				Inc(iAddCnt);
			end;
			if iAddCnt = 100 then
			begin
				gslUpsoPeeSeq.Add(sCutSeq);
				sCutSeq := '';
				iAddCnt := 0;
			end;
		end;
		gslUpsoPeeSeq.Add(sCutSeq);

    if icnt < 1 then
    begin
			cxGrid1.Enabled := True;
      GMessagebox('고객이 선택되지 않았습니다.', CDMSE);
  		Screen.Cursor := crDefault;
      Exit;
    end;

		gbUpsoPee.Left := (frm_main.Width - gbUpsoPee.Width) div 2;
		gbUpsoPee.top := ((frm_main.Height - gbUpsoPee.Height) div 2) - 50;
		gbUpsoPee.visible := True;
		edtCalValue.value := 0;
		gbUpsoPee.BringToFront;

		cxLabel230.Caption := inttostr(icnt) + ' 개';
		Screen.Cursor := crDefault;
	except
		gslUpsoPeeSeq.Free;
		Screen.Cursor := crDefault;
	End;
end;

procedure TFrm_CUT.mniDetailCustLevelClick(Sender: TObject);
var
  I: Integer;
	iSeq: Integer;
begin
  if FDetailKeyNum = '' then
  begin
    GMessageBox('고객등급 변경은 대표번호 선택하여 검색된 내역으로 시도바랍니다.', CDMSE);
		cbKeynumber04.SetFocus;
    Exit;
	end;

  if CustView4.DataController.GetSelectedCount = 0 then
  begin
    GMessageBox('고객을 선택해 주세요.', CDMSE);
    Exit;
  end;

  if ( not Assigned(Frm_CUT03) ) Or ( Frm_CUT03 = Nil ) then Frm_CUT03 := TFrm_CUT03.Create(Self);

  Frm_CUT03.SetData(GetBrNoFromKeyNum(FDetailKeyNum), FDetailKeyNum);

  iSeq := CustView4.GetColumnByFieldName('SEQ').Index;
  for I := 0 to CustView4.DataController.RecordCount - 1 do
  begin
    if not CustView4.ViewData.Rows[I].Selected then Continue;

    Frm_CUT03.AddCustSeq(CustView4.ViewData.Rows[I].Values[iSeq]);
  end;

  Frm_CUT03.DispData;
  Frm_CUT03.Show;
end;

procedure TFrm_CUT.mniN9Click(Sender: TObject);
var
  iBrNo, iKeyNum, iSeq, iCustTel, iRow: Integer;
  sBrNo, sKeyNum, sSeq, sCustTel: string;
begin
  // 권한 적용 (지호 2008-08-19)
  if TCK_USER_PER.COM_CustModify <> '1' then
  begin
    GMessagebox('고객 수정권한이 없습니다.', CDMSE);
    Exit;
  end;

  iRow := CustView1.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  iBrNo   := CustView1.GetColumnByFieldName('지사코드').Index;
  iKeyNum := CustView1.GetColumnByFieldName('대표번호').Index;
  iSeq    := CustView1.GetColumnByFieldName('SEQ').Index;
  iCustTel:= CustView1.GetColumnByFieldName('고객번호').Index;
  sBrNo   := CustView1.DataController.Values[iRow, iBrNo];
  sKeyNum := CustView1.DataController.Values[iRow, iKeyNum];
  sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
  sSeq    := CustView1.DataController.Values[iRow, iSeq];
  sCustTel:= CustView1.DataController.Values[iRow, iCustTel];

  if sCustTel = '' then
  begin
    GMessagebox('고객 전화번호가 없습니다.', CDMSE);
    Exit;
  end;

  if ( not Assigned(Frm_CUT012) ) Or ( Frm_CUT012 = Nil ) then Frm_CUT012 := TFrm_CUT012.Create(Self);
  Frm_CUT012.Show(sBrNo, sKeyNum, sSeq, sCustTel);
end;

procedure TFrm_CUT.N_TodayClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(0, StDt, EdDt);
end;

procedure TFrm_CUT.N_YesterdayClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(1, StDt, EdDt);
end;

procedure TFrm_CUT.N_WeekClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(2, StDt, EdDt);
end;

procedure TFrm_CUT.N_MonthClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(11, StDt, EdDt);
end;

procedure TFrm_CUT.N_1Start31EndClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(3, StDt, EdDt);
end;

procedure TFrm_CUT.MenuItem33Click(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(Pop_Ymd.Tag, StDt, EdDt) then     //오늘
		CustSetDateControl(0, StDt, EdDt);
end;

procedure TFrm_CUT.MenuItem34Click(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(Pop_Ymd.Tag, StDt, EdDt) then     //1개월
		CustSetDateControl(11, StDt, EdDt);
end;

procedure TFrm_CUT.MenuItem35Click(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(Pop_Ymd.Tag, StDt, EdDt) then     //3개월
		CustSetDateControl(12, StDt, EdDt);
end;

procedure TFrm_CUT.MenuItem36Click(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(Pop_Ymd.Tag, StDt, EdDt) then     //6개월
		CustSetDateControl(13, StDt, EdDt);
end;

procedure TFrm_CUT.MenuItem37Click(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(Pop_Ymd.Tag, StDt, EdDt) then     //1년
		CustSetDateControl(14, StDt, EdDt);
end;

procedure TFrm_CUT.OnRefreshCustLevel(Sender: TObject);
begin
  RequestDataCustLevel;
end;

procedure TFrm_CUT.pmCustMgrPopup(Sender: TObject);
var iRow, iTmp : integer;
begin
	menuCallBell.visible := False;
	if gs_CallBellUse then
	begin
		iRow := CustView1.DataController.FocusedRecordIndex;
		if iRow = -1 then
			Exit;

		iTmp := CustView1.GetColumnByFieldName('구분').Index;
		if CustView1.DataController.Values[iRow, iTmp] = '업소' then 
		begin
			menuCallBell.Caption := '콜벨업소로 변경';
			menuCallBell.visible := True;
			menuCallBell.Tag := 1;
		end else
		if CustView1.DataController.Values[iRow, iTmp] = '콜벨업소' then 
		begin
			menuCallBell.Caption := '콜벨업소 정보수정';
			menuCallBell.visible := True;
			menuCallBell.Tag := 2;
		end;
	end;
end;

procedure TFrm_CUT.proc_before_comp;
var
	ls_TxQry, ls_TxLoad, sQueryTemp : string;
  lg_sWhere, sBrNo, sClientKey: string;
	sCGubun, sCName, sCTel, sCmemo, sSql: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
	dt_sysdate2 := frm_main.func_sysdate;
  chk_All_Select.Checked := False;
  chk_All_Select.OnClick(chk_All_Select);

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    Exit;
	end;

	if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
		or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
		GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSE);
    Exit;
  end;

  lb_st_customer.Clear;

	sBrNo := cxBrNo2.Text;

  lg_swhere := '';

  if sBrNo <> '' then
		lg_sWhere := Format(' AND A.CONF_HEAD = ''%s'' AND A.CONF_BRCH = ''%s'' AND A.CONF_STATUS = ''2'' ', [cxHdNo2.Text, sBrNo])
  else
		lg_sWhere := Format(' AND A.CONF_HEAD = ''%s'' AND A.CONF_STATUS = ''2'' ', [cxHdNo2.Text]);

  sCGubun := 'A.CONF_BAR';
  sCName := 'A.CONF_USER';
  sCTel := 'A.CONF_CUST_TEL';
  sCmemo := 'A.CONF_MEMO';
  sClientKey := self.Caption + '4';

  fGet_BlowFish_Query(GSQ_HISTORY_LIST, sQueryTemp);
  sSql := sQueryTemp;

  if cb_Sms_Gubun.ItemIndex > 0 then
  begin
    if (sg_notsms_list.DataController.RecordCount > 0) and
      (sg_notsms_list.DataController.Values[0, 0] <> sBrno) then
      proc_NotSMS(sBrNo);
  end;

  if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex > 0) then
    lg_sWhere := lg_sWhere + Format(' AND A.CONF_AREA = ''%s'' AND A.CONF_AREA2 = ''%s'' ', [cb_st_city.Text, cb_st_ward.Text])
  else
    if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex < 1) then
    lg_sWhere := lg_sWhere + Format(' AND A.CONF_AREA = ''%s'' ', [cb_st_city.Text]);

  if (cbKeynumber02.Text <> '전체') and (cbKeynumber02.Text <> '') then
    lg_sWhere := lg_sWhere + format(' AND (A.KEY_NUMBER = ''%s'') ', [StringReplace(cbKeynumber02.Text, '-', '', [rfReplaceAll])]);

  lg_sWhere := lg_sWhere +
    format(' AND A.IN_DATE BETWEEN TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') '
    , [formatdatetime('yyyymmdd', cxDate2_1S.Date), formatdatetime('yyyymmdd', cxDate2_1E.Date)]);

  case cbGubun2_1.ItemIndex of
    1: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''0'' ';
    2: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''1'' ';
    3: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''3'' ';
  end;

  if Trim(edCustMemo01.Text) <> '' then
    lg_sWhere := lg_sWhere + Format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCmemo, '%', trim(edCustMemo01.Text), '%']);

  if trim(edCustName02.Text) <> '' then
    lg_sWhere := lg_sWhere + Format(' AND (%s LIKE ''%s'' || ''%s'') ', [sCName, trim(edCustName02.Text), '%']);

  if trim(edCustTel02.Text) <> '' then
    lg_sWhere := lg_sWhere + Format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCTel, '%', trim(edCustTel02.Text), '%']);

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');

  ls_TxQry := Format(sSql, [lg_sWhere]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', sClientKey, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '3000', [rfReplaceAll]);

	cxPageControl1.Enabled := False;

	Screen.Cursor := crHourGlass;
  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
    begin
      Application.ProcessMessages;
      proc_recieve(slReceive);
    end;
  finally
    frm_Main.proc_SocketWork(True);
    FreeAndNil(slReceive);
		Screen.Cursor := crDefault;
		cxPageControl1.Enabled := True;
    Frm_Flash.Hide;
  end;
  lbCount02.Caption := '총 ' + IntToStr(CustView2.DataController.RecordCount) + '명';
end;

procedure TFrm_CUT.proc_before_his;
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
  lg_sWhere, sBrNo, sClientKey: string;
  sCGubun, sCName, sCTel, sCmemo, sSql: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if CustView2.DataController.RecordCount > 0 then
    Exit;

  dt_sysdate2 := frm_main.func_sysdate;
  chk_All_Select.Checked := False;
  chk_All_Select.OnClick(chk_All_Select);

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    Exit;
  end;

	if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
    or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSE);
    Exit;
  end;

  lb_st_customer.Clear;

	sBrNo := cxBrNo2.Text;

  lg_swhere := '';

  if sBrNo <> '' then
		lg_sWhere := Format(' AND A.CONF_HEAD = ''%s'' AND A.CONF_BRCH = ''%s'' ', [cxHdNo2.Text, sBrNo])
  else
		lg_sWhere := Format(' AND A.CONF_HEAD = ''%s'' ',	[cxHdNo2.Text]);
  sCGubun := 'A.CONF_BAR';
  sCName := 'A.CONF_USER';
  sCTel := 'A.CONF_CUST_TEL';
  sCmemo := 'A.CONF_MEMO';
  sClientKey := Self.Caption + '4';

  fGet_BlowFish_Query(GSQ_HISTORY_LIST, sQueryTemp);
  sSql := sQueryTemp;

  if cb_Sms_Gubun.ItemIndex > 0 then
  begin
    if (sg_notsms_list.DataController.RecordCount > 0) and
      (sg_notsms_list.DataController.Values[0, 0] <> sBrno) then
      proc_NotSMS(sBrNo);
  end;

  lg_sWhere := lg_sWhere + ' AND A.CONF_STATUS IN (''2'', ''4'', ''8'') ';

  if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex > 0) then
    lg_sWhere := lg_sWhere + Format(' AND A.CONF_AREA = ''%s'' AND A.CONF_AREA2 = ''%s'' ', [cb_st_city.Text, cb_st_ward.Text])
  else if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex < 1) then
    lg_sWhere := lg_sWhere + Format(' AND A.CONF_AREA = ''%s'' ', [cb_st_city.Text]);

  if (cbKeynumber02.Text <> '전체') and (cbKeynumber02.Text <> '') then
    lg_sWhere := lg_sWhere + format(' AND (A.KEY_NUMBER = ''%s'') ', [StringReplace(cbKeynumber02.Text, '-', '', [rfReplaceAll])]);

  lg_sWhere := lg_sWhere +
    format(' AND A.IN_DATE BETWEEN TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') '
		, [formatdatetime('yyyymmdd', cxDate2_1S.Date), formatdatetime('yyyymmdd', cxDate2_1E.Date)]);

  case cbGubun2_1.ItemIndex of
    1: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''0'' ';
    2: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''1'' ';
    3: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''3'' ';
  end;

  if Trim(edCustMemo01.Text) <> '' then
    lg_sWhere := lg_sWhere +
      format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCmemo, '%', trim(edCustMemo01.Text), '%']);

  if trim(edCustName02.Text) <> '' then
    lg_sWhere := lg_sWhere + format(' AND (%s LIKE ''%s'' || ''%s'') ', [sCName, trim(edCustName02.Text), '%']);

  if trim(edCustTel02.Text) <> '' then
    lg_sWhere := lg_sWhere + format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCTel, '%', trim(edCustTel02.Text), '%']);

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');

  ls_TxQry := Format(sSql, [lg_sWhere]);

	ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', sClientKey, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '3000', [rfReplaceAll]);

	cxPageControl1.Enabled := False;

	Screen.Cursor := crHourGlass;
  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
    begin
      Application.ProcessMessages;
      proc_recieve(slReceive);
    end;
  finally
    frm_Main.proc_SocketWork(True);
		FreeAndNil(slReceive);
		Screen.Cursor := crDefault;
		cxPageControl1.Enabled := True;
		Frm_Flash.Hide;
  end;
  lbCount02.Caption := '총 ' + IntToStr(CustView2.DataController.RecordCount) +  '명';
end;

procedure TFrm_CUT.proc_before_new;
var
	ls_TxQry, ls_TxLoad, sQueryTemp: string;
  lg_sWhere, sBrNo, sClientKey: string;
  sCGubun, sCName, sCTel, sCmemo, sSql: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
	dt_sysdate2 := frm_main.func_sysdate;
  chk_All_Select.Checked := False;
  chk_All_Select.OnClick(chk_All_Select);

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    Exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
    or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.',  CDMSE);
    Exit;
  end;

  lb_st_customer.Clear;

	sBrNo := cxBrNo2.Text;

  lg_swhere := '';

  if sBrNo <> '' then
    lg_sWhere :=
			Format(' AND A.HD_NO = ''%s'' AND A.BR_NO = ''%s'' ', [cxHdNo2.Text, sBrNo])
  else
		lg_sWhere :=
			Format(' AND A.HD_NO = ''%s'' ', [cxHdNo2.Text]);

  sCGubun := 'A.CU_TYPE';
  sCName := 'A.CMP_NM';
  sCTel := 'B.CU_TEL';
  sCmemo := 'A.CU_INFO';
  sClientKey := self.Caption + '4';

  fGet_BlowFish_Query(GSQ_CUSTOMER_LIST, sQueryTemp);
  sSql := sQueryTemp;

  if cb_Sms_Gubun.ItemIndex = 1 then
    lg_sWhere := lg_sWhere + ' AND (B.CU_SMSYN = ''y'') '
  else
    if cb_Sms_Gubun.ItemIndex = 2 then
    lg_sWhere := lg_sWhere + ' AND (B.CU_SMSYN = ''n'') ';

  if (cbKeynumber02.Text <> '전체') and (cbKeynumber02.Text <> '') then
    lg_sWhere := lg_sWhere + format(' AND (A.KEY_NUMBER = ''%s'') ',
      [StringReplace(cbKeynumber02.Text, '-', '', [rfReplaceAll])]);

  lg_sWhere := lg_sWhere +
    format(' AND A.IN_DATE BETWEEN TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') '
		, [formatdatetime('yyyymmdd', cxDate2_1S.Date), formatdatetime('yyyymmdd', cxDate2_1E.Date)]);

  case cbGubun2_1.ItemIndex of
    1: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''0'' ';
    2: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''1'' ';
    3: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''3'' ';
  end;

  if Trim(edCustMemo01.Text) <> '' then
    lg_sWhere := lg_sWhere +
      format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCmemo, '%',
      trim(edCustMemo01.Text), '%']);

  if trim(edCustName02.Text) <> '' then
    lg_sWhere := lg_sWhere + format(' AND (%s LIKE ''%s'' || ''%s'') ',
      [sCName, trim(edCustName02.Text), '%']);

  if trim(edCustTel02.Text) <> '' then
    lg_sWhere := lg_sWhere +
      format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCTel, '%',
			trim(edCustTel02.Text), '%']);

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');

  ls_TxQry := Format(sSql, [lg_sWhere]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', sClientKey, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '3000', [rfReplaceAll]);

	cxPageControl1.Enabled := False;

	Screen.Cursor := crHourGlass;
	slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
    begin
      Application.ProcessMessages;
      proc_recieve(slReceive);
    end;
  finally
    frm_Main.proc_SocketWork(True);
    FreeAndNil(slReceive);
		Screen.Cursor := crDefault;
		cxPageControl1.Enabled := True;
    Frm_Flash.Hide;
  end;
  lbCount02.Caption := '총 ' + IntToStr(CustView2.DataController.RecordCount) +  '명';
end;

procedure TFrm_CUT.proc_Branch_Change;
begin
	proc_BrNameSet;
end;

procedure TFrm_CUT.proc_BrNameSet;
var
	sName, sBrNo, sHdNo : string;
	StrList: TStringList;
	iCol : integer;
begin
	iCol := CustView1.GetColumnByFieldName('콜벨등록일').Index;
	if gs_CallBellUse then 
	begin
		if cbGubun1_1.Properties.Items.Count = 4 then	
		begin
			cbGubun1_1.Properties.Items.add('콜벨업소');
		end;

		if (gs_CallBellUse) then  //콜벨업소이면서 
		begin
			if Not Assigned(Frm_BTN) then Frm_BTN := TFrm_BTN.Create(Nil);
			Frm_BTN.proc_CallBell_BRANCH_INFO;
			if Frm_BTN.Scb_BankCd.count = 0 then
				Frm_BTN.proc_Bank;
		end;

		CustView1.Columns[iCol].visible := True;
	end else
	begin
		if cbGubun1_1.Properties.Items.Count > 4 then
		begin
			cbGubun1_1.Properties.Items.delete(4);
		end;
		CustView1.Columns[iCol].visible := False;
	end;
	StrList := TStringList.Create;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
			GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
			cbKeynumber01.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumber01.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
	end;
  sName := GetSosokInfo;
	cxHdNo1.Text := sHdNo;
	cxBrNo1.Text := sBrNo;
	cxHdNo2.Text := sHdNo;
	cxBrNo2.Text := sBrNo;
	cxHdNo3.Text := sHdNo;
	cxBrNo3.Text := sBrNo;
	cxHdNo4.Text := sHdNo;
	cxBrNo4.Text := sBrNo;
	cxHdNo5.Text := sHdNo;
	cxBrNo5.Text := sBrNo;
	cxHdNo6.Text := sHdNo;
	cxBrNo6.Text := sBrNo;
	cxHdNo8.Text := sHdNo;
	cxBrNo8.Text := sBrNo;
	cxHdNo9.Text := sHdNo;
	cxBrNo9.Text := sBrNo;
	cxHdNo10.Text := sHdNo;
	cxBrNo10.Text := sBrNo;
	cxHdNo11.Text := sHdNo;
	cxBrNo11.Text := sBrNo;
	lbCustCompany01.Caption := sName;
	lbCustCompany02.Caption := sName;
  lbCustCompany03.Caption := sName;
	lbCustCompany04.Caption := sName;
	lbCustCompany05.Caption := sName;
	lbCustCompany06.Caption := sName;
	lbCustCompany07.Caption := sName;
  lbCustCompany08.Caption := sName;
  lbCustCompany09.Caption := sName;
  lbCustCompany10.Caption := sName;
	lbCustCompany11.Caption := sName;
	lbCustCompany12.Caption := sName;
	cbKeynumber12.Properties.Items.Assign(cbKeynumber01.Properties.Items);   // 전체가 없어야 됨
	if cbKeynumber01.Properties.Items.Count >= 1 then
    cbKeynumber01.Properties.Items.Insert(0, '전체');
	cbKeynumber02.Properties.Items.Assign(cbKeynumber01.Properties.Items);
	cbKeynumber03.Properties.Items.Assign(cbKeynumber01.Properties.Items);
	cbKeynumber04.Properties.Items.Assign(cbKeynumber01.Properties.Items);
  cbKeynumber05.Properties.Items.Assign(cbKeynumber01.Properties.Items);
	cbKeynumber06.Properties.Items.Assign(cbKeynumber01.Properties.Items);
	cbKeynumber09.Properties.Items.Assign(cbKeynumber01.Properties.Items);
	cbKeynumber10.Properties.Items.Assign(cbKeynumber01.Properties.Items);
	cbKeynumber01.Tag := 1;
	cbKeynumber02.Tag := 1;
	cbKeynumber03.Tag := 1;
	cbKeynumber04.Tag := 1;
  cbKeynumber05.Tag := 1;
	cbKeynumber06.Tag := 1;
	cbKeynumber09.Tag := 1;
	cbKeynumber10.Tag := 1;
	cbKeynumber12.Tag := 1;
	cbKeynumber01.ItemIndex := 0;
	cbKeynumber02.ItemIndex := 0;
	cbKeynumber03.ItemIndex := 0;
	cbKeynumber04.ItemIndex := 0;
  cbKeynumber05.ItemIndex := 0;
	cbKeynumber06.ItemIndex := 0;
	cbKeynumber09.ItemIndex := 0;
	cbKeynumber10.ItemIndex := 0;
	cbKeynumber12.ItemIndex := 0;
	cbKeynumber01.Tag := 0;
	cbKeynumber02.Tag := 0;
	cbKeynumber03.Tag := 0;
	cbKeynumber04.Tag := 0;
  cbKeynumber05.Tag := 0;
	cbKeynumber06.Tag := 0;
	cbKeynumber09.Tag := 0;
	cbKeynumber10.Tag := 0;
	cbKeynumber12.Tag := 0;
end;

procedure TFrm_CUT.proc_bubin_init;
var
	i: Integer;
  sBrNo, sKeyNum: string;
begin
	if cxPageControl1.ActivePageIndex = 0 then
  begin
		if ( cbGubun1_1.ItemIndex = 3 ) Or ( chkBubinName.Checked ) then
		begin
			sBrNo := cxBrNo1.Text;
			sKeyNum := cbKeynumber01.Text;
			cbBCustList.Properties.Items.Clear;
			cbBCustListCd.Properties.Items.Clear;
			cbBCustList.Properties.Items.Add('선택');
			cbBCustListCd.Properties.Items.Add('');
			if (sBrNo = '') or (sKeyNum = '전체') then Exit;

      for i := 0 to GT_BUBIN_INFO.brNo_KeyNum.Count - 1 do
      begin
        if GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(sbrNo, 5, ' ') +
          Rpad(StringReplace(sKeyNum, '-', '', [rfReplaceAll]), 15, ' ') then
        begin
          cbBCustList.Properties.Items.Add(Trim(GT_BUBIN_INFO.cbCorpNm.Strings[i]) + ' / ' +
                                           Trim(GT_BUBIN_INFO.cbDeptNm.Strings[i]));
          cbBCustListCd.Properties.Items.Add(GT_BUBIN_INFO.cbcode.Strings[i]);
        end;
      end;

			cbBCustList.ItemIndex := 0;
		end;
	end else
  if cxPageControl1.ActivePageIndex = 3 then
  begin
    if ( cbGubun4_1.ItemIndex = 3 ) Or ( chkCust04Type07.Checked ) then
    begin
      sBrNo := cxBrNo1.Text;
      sKeyNum := cbKeynumber04.Text;
			cbBCustList4.Properties.Items.Clear;
			cbBCustList4Cd.Properties.Items.Clear;
			cbBCustList4.Properties.Items.Add('선택');
			cbBCustList4Cd.Properties.Items.Add('');
      if (sBrNo = '') or (sKeyNum = '전체') then
        Exit
      else
      begin
        for i := 0 to GT_BUBIN_INFO.brNo_KeyNum.Count - 1 do
        begin
          if GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(sbrNo, 5, ' ') +
            Rpad(StringReplace(sKeyNum, '-', '', [rfReplaceAll]), 15, ' ') then
          begin
						cbBCustList4.Properties.Items.Add(Trim(GT_BUBIN_INFO.cbCorpNm.Strings[i]) + ' / ' +
                                              Trim(GT_BUBIN_INFO.cbDeptNm.Strings[i]));
						cbBCustList4Cd.Properties.Items.Add(GT_BUBIN_INFO.cbcode.Strings[i]);
          end;
        end;
      end;
      cbBCustList4.ItemIndex := 0;
    end;
  end;
end;

procedure TFrm_CUT.proc_CustCounsel_Clear;
var
  i, iRow: Integer;
  ln_env: TIniFile;
  sTemp: string;
  Column: TcxGridDBColumn;
begin
	SetDebugeWrite('proc_CustCounsel_Clear');
	try
    ln_env := TIniFile.Create(ENVPATHFILE);
		ln_env.EraseSection('CustCounsel');
		CustView1.DataController.BeginUpdate;
		try
			for i := 0 to CustView1.ColumnCount - 1 do
			begin
				Column := CustView1.Columns[i];
				if Column.Tag = 0 then
					Continue;

				sTemp := Column.DataBinding.FieldName;
				iRow := lbCustCounselTitle.Items.IndexOf(sTemp);
				Column.Index := iRow;
			end;

			CustView1.GetColumnByFieldName('No').Index := 0;
    finally
			CustView1.DataController.EndUpdate;
      FreeAndNil(ln_env);
    end;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT.proc_CustCounsel_Save;
var
  i: Integer;
  ln_envfile: TIniFile;
  sTemp: string;
	nShow : Integer;
begin
	try
		// 접속기사 그리드 컬럼이동 설정값 저장.
		ln_envfile := TIniFile.Create(ENVPATHFILE);
		try
			nShow := 0;
			ln_envfile.EraseSection('CustCounsel');
			for i := 0 to CustView1.ColumnCount - 1 do
			begin
				if CustView1.Columns[I].Tag = 0 then      //보이는 칼럼은 Tag = 1, 숨긴칼럼은 Tag = 0
					Continue;
				sTemp := CustView1.Columns[i].DataBinding.FieldName;
				if CustView1.Columns[I].Visible then
				begin
					ln_envfile.WriteString('CustCounsel', IntToStr(nShow), sTemp);
					Inc(nShow);
				end;
			end;
		finally
      FreeAndNil(ln_envfile);
		end;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_CUT.proc_CustCounsel_Title;
var
	i : Integer;
	ln_env: TIniFile;
	ShowList : TStringList;
	Column: TcxGridDBColumn;
begin
	ln_Env := TIniFile.Create(ENVPATHFILE);
	ShowList := TStringList.Create;

	try
		ln_env.ReadSectionValues('CustCounsel', ShowList);

		if (ShowList.Count > 0) then
    begin
      for I := 0 to ShowList.Count - 1 do
      begin
				Column := CustView1.GetColumnByFieldName(ShowList.Values[IntToStr(I)]);
        if Column.Tag = 0 then
          Continue;
				if Assigned(Column) then
        begin
					Column.Index := I;
				end;
			end;
		end else
		begin
			proc_CustCounsel_Clear;
    end;
  finally
    FreeAndNil(ShowList);
		FreeAndNil(ln_env);
  end;
end;

procedure TFrm_CUT.proc_CustSearch(iType: Integer);
var
	sWhere, sCbcode, sFBr_no: string;
  ls_TxQry, ls_TxLoad, sQueryTemp: string; // XML File Load
  slReceive: TStringList;
  ErrCode, i: integer;
  sRangeType, sTmp : string;
begin
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

	if fGetChk_Search_HdBrNo('고객관리') then Exit;

	if not chkSearchAdd.Checked then
  begin
		if CustView1.DataController.RecordCount > 0 then Exit;
  end;

  ////////////////////////////////////////////////////////////////////////////////
  // 고객>고객관리]2000건/콜센터(통합)/대표번호:16886618/최초이용기간:20100110~2010100131/SMS전체
  if iType = 1 then
  begin
    if rbFirstUseDate01.Checked then
    begin
			sRangeType := rbFirstUseDate01.Caption + ':' + de_4stDate.Text + '~' + de_4edDate.Text;
    end else
    if rbUseDate01.Checked then
    begin
			sRangeType := rbUseDate01.Caption + ':' + de_5stDate.Text + '~' + de_5edDate.Text;
    end else
		if rbUseCnt01.Checked then
      sRangeType := rbUseCnt01.Caption + ':' + edUseCnt01.Text + '~' + edUseCnt02.Text;

    sRangeType := '/' + sRangeType;
  end;

	FExcelDownMng := Format('%s/대표번호:%s%s/%s',
    [
        GetSelBrInfo
      , cbKeynumber01.Text
      , sRangeType
			, cbSmsUse01.Text
    ]);
  ////////////////////////////////////////////////////////////////////////////////

  sWhere := '';
	if iType = 1 then
	begin
    if rbFirstUseDate01.Checked then
    begin
			if (de_4stDate.Text <> '') and (de_4edDate.Text <> '') then
				sWhere := ' AND CU.IN_DATE BETWEEN TO_DATE(''' + FormatDateTime('yyyymmdd', de_4stDate.Date) + '0900' + ''',''YYYYMMDDHH24MISS'') '
					+ ' AND TO_DATE(''' + FormatDateTime('yyyymmdd', de_4edDate.Date)  + '0900' +  ''',''YYYYMMDDHH24MISS'') '
			else if (de_4stDate.Text <> '') and (de_4edDate.Text = '') then
				sWhere := ' AND CU.IN_DATE >= TO_DATE(''' + FormatDateTime('yyyymmdd', de_4stDate.Date)  + '0900' +  ''',''YYYYMMDDHH24MISS'') '
			else if (de_4stDate.Text = '') and (de_4edDate.Text <> '') then
				sWhere := ' AND TO_DATE(''' + FormatDateTime('yyyymmdd', de_4edDate.Date)   + '0900' +  ''',''YYYYMMDDHH24MISS'') >= CU.IN_DATE ';
    end else
    if rbUseDate01.Checked then
    begin
			if (de_5stDate.Text <> '') and (de_5edDate.Text <> '') then
				sWhere := ' AND CU.CU_LAST_END BETWEEN ''' + FormatDateTime('yyyymmdd', de_5stDate.Date) + '' + ''' '
					+ ' AND ''' + FormatDateTime('yyyymmdd', de_5edDate.Date) + '' + ''' '
			else if (de_5stDate.Text <> '') and (de_5edDate.Text = '') then
				sWhere := ' AND CU.CU_LAST_END >= ''' + FormatDateTime('yyyymmdd', de_5stDate.Date) + '' + ''' '
			else if (de_5stDate.Text = '') and (de_5edDate.Text <> '') then
				sWhere := ' AND ''' + FormatDateTime('yyyymmdd', de_5edDate.Date) + '' + ''' >= CU.CU_LAST_END ';
    end else
    if rbUseCnt01.Checked then
    begin
			if (edUseCnt01.Text <> '') and (edUseCnt02.Text <> '') then
				sWhere := ' AND CU.CU_ENDCNT BETWEEN ' + IntToStr(StrToIntDef(edUseCnt01.Text, 0)) + ' '
          + ' AND ' + IntToStr(StrToIntDef(edUseCnt02.Text, 0)) + ' '
			else if (edUseCnt01.Text <> '') and (edUseCnt02.Text = '') then
				sWhere := ' AND CU.CU_ENDCNT >= ' + IntToStr(StrToIntDef(edUseCnt01.Text, 0)) + ' '
      else if (edUseCnt01.Text = '') and (edUseCnt02.Text <> '') then
        sWhere := ' AND ' + IntToStr(StrToIntDef(edUseCnt02.Text, 0)) + ' >= CU.CU_ENDCNT ';
    end;
  end;

	if cxBrNo1.Text <> '' then
	begin
		sWhere := sWhere + ' AND CU.BR_NO = ''' + cxBrNo1.Text + ''' ';
	end else
	begin
		if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
		begin
			for i := 0 to scb_FamilyBrCode.Count -1 do
			begin
				if i = 0 then sFBr_no := '''' + scb_FamilyBrCode[i] + '''';
				sFBr_no := sFBr_no + ', ' + '''' + scb_FamilyBrCode[i] + '''';
			end;
			sWhere := ' AND CU.BR_NO IN (' + sFBr_no + ')';
		end;
	end;

	if (cbKeynumber01.ItemIndex > 0) and (cbKeynumber01.Text <> '') then
		sWhere := sWhere + ' AND CU.KEY_NUMBER = ''' + StringReplace(cbKeynumber01.Text, '-', '', [rfReplaceAll]) + ''' ';

	case cbGubun1_1.ItemIndex of
		1: sWhere := sWhere + ' AND CU.CU_TYPE = ''0'' ';
		2:
			begin
				if chkCallBell.checked then sWhere := sWhere + ' AND CU.CU_TYPE = ''1'' '  //전체업소
				else sWhere := sWhere + ' AND CU.CU_TYPE = ''1'' AND ((CU.CALLBELL_STATUS != ''1'') or (CU.CALLBELL_STATUS is null)) ';  //일반업소
			end;
    3: sWhere := sWhere + ' AND CU.CU_TYPE = ''3'' ';
		4: sWhere := sWhere + ' AND CU.CU_TYPE = ''1'' AND CU.CALLBELL_STATUS = ''1'' ';                                       //콜벨업소
	end;

	if cbLevel01.ItemIndex > 0 then
		sWhere := sWhere + ' AND CU.CU_LEVEL_CD = ''' + SCboLevelSeq[cbLevel01.itemindex] + ''' ';

	if chkBubinCust.Checked then
		sWhere := sWhere + ' AND CU.CU_TYPE != ''3'' ';

	if cbOutBound1.ItemIndex > 0 then
		sWhere := sWhere + ' AND CU.CU_OUTBOUND = ''' + IntToStr(cbOutBound1.ItemIndex) + ''' ';

  if (cbBCustList.Enabled) and (cbBCustList.ItemIndex > 0) then
	begin
    sCbcode := cbBCustListCd.Properties.Items[cbBCustList.ItemIndex];
		sCbcode := Copy(sCbcode, 1, Pos(',', sCbcode) - 1);
		sWhere := sWhere + ' AND CU.CB_CODE = ''' + sCbcode + ''' ';
  end;

  if edCustName01.Text <> '' then
    sWhere := sWhere + ' AND CU.CMP_NM LIKE ''%' + Param_Filtering(edCustName01.Text) + '%'' ';

  if edCustTel01.Text <> '' then
  begin
    if Length(edCustTel01.Text) = 4 then
      sWhere := sWhere +
        ' AND CU.CU_SEQ IN (SELECT CU_SEQ FROM CDMS_CUSTOMER_TEL WHERE substr(CU_TEL,-4) = ''' + Param_Filtering(edCustTel01.Text) + ''') '
//        ' AND CU.CU_SEQ IN (SELECT CU_SEQ FROM CDMS_CUSTOMER_TEL WHERE CU_TEL LIKE, ''%' + StringReplace(edCustTel01.Text, '-', '', [rfReplaceAll]) + ''') '
    else
      sWhere := sWhere +
        ' AND CU.CU_SEQ IN (SELECT CU_SEQ FROM CDMS_CUSTOMER_TEL WHERE CU_TEL LIKE ''' + StringReplace(Param_Filtering(edCustTel01.Text), '-', '', [rfReplaceAll]) + '%'') ';
  end;
	if cxTextEdit17.Text <> '' then
  begin
		if Length(cxTextEdit17.Text) = 4 then
			sWhere := sWhere
						 + 'AND cu.cu_seq IN (SELECT cu_seq FROM cdms_customer_tel tel,  (SELECT v_phone, c_phone FROM virtual_number_0507 '
						 + 'WHERE yn_sync = ''y'' AND substr(v_phone,-4) = ''' + Param_Filtering(cxTextEdit17.Text) + ''' '
						 + '  AND c_type = ''3'') vnum WHERE tel.cu_tel = vnum.c_phone) '
		else
			sWhere := sWhere
						 + 'AND cu.cu_seq IN (SELECT cu_seq FROM cdms_customer_tel tel,  (SELECT v_phone, c_phone FROM virtual_number_0507 '
						 + 'WHERE yn_sync = ''y'' AND v_phone LIKE ''' + StringReplace(Param_Filtering(cxTextEdit17.Text), '-', '', [rfReplaceAll]) + '%''  '
						 + '  AND c_type = ''3'') vnum WHERE tel.cu_tel = vnum.c_phone) '
	end;
	if cxCheckBox9.Checked then
	begin
		if (de_6stDate.Text <> '') and (de_6edDate.Text <> '') then
		sWhere := sWhere
					 + 'AND cu.cu_seq IN (SELECT cu_seq FROM cdms_customer_tel tel,  '
					 + '                 (SELECT v_phone, c_phone FROM virtual_number_0507 WHERE yn_sync = ''y'' '
					 + 'AND allot_time BETWEEN TO_DATE( ''' + CallToStr(de_6stDate.Text) + '090000' + ''', ''YYYYMMDDHH24MISS'' ) '
					 + '                                        AND TO_DATE( ''' + CallToStr(de_6edDate.Text) + '090000' + ''', ''YYYYMMDDHH24MISS'' ) '
					 + 'AND c_type = ''3'') vnum WHERE tel.cu_tel = vnum.c_phone) ';
	end;
  if Rb_SetupA.Checked then
	begin
		sWhere := sWhere + ' AND CU.CU_SEQ = APP.CU_SEQ(+)  ';
  end else
  if Rb_SetupY.Checked then
		sWhere := sWhere + ' AND CU.CU_SEQ = APP.CU_SEQ    ' +
                       ' AND CU.CU_SEQ = APP.CU_SEQ(+) ' +
 		                   ' AND APP.DEL_YN = ''n'' '
  else
  if Rb_SetupN.Checked then
		sWhere := sWhere + ' AND CU.CU_SEQ  NOT IN  (SELECT CU_SEQ FROM CDMS_APP_USER WHERE DEL_YN = ''n'') ' +  // 미사용
                       ' AND CU.CU_SEQ = APP.CU_SEQ(+) ';

  if CB_SetDate.Checked then
  begin
		sWhere := sWhere + Format(' AND APP.LAST_REG_DATE BETWEEN TRUNC( TO_DATE( %s, ''yyyymmdd'' ) )     ' +
                              '                           AND TRUNC( TO_DATE( %s, ''yyyymmdd'' ) + 1 ) ', [FormatDateTime('YYYYMMDD', de_1stDate.Date), FormatDateTime('YYYYMMDD', de_1edDate.Date)] ); // 등록일자
  end;

  if CB_DelDate.Checked then
  begin
		sWhere := sWhere + Format(' AND APP.DEL_YN = ''y'' ' +
                              ' AND APP.LAST_DEL_DATE BETWEEN TRUNC( TO_DATE( %s, ''yyyymmdd'' ) )     ' +
                              '                           AND TRUNC( TO_DATE( %s, ''yyyymmdd'' ) + 1 ) ', [FormatDateTime('YYYYMMDD', de_3stDate.Date), FormatDateTime('YYYYMMDD', de_3edDate.Date)] ); // 삭제일자
  end;

	if CB_UseDate.Checked then
	begin
		sWhere := sWhere + Format(' AND APP.LAST_FINISH_DATE BETWEEN %s ' +
                              '                              AND %s ', [FormatDateTime('YYYYMMDD', de_2stDate.Date), FormatDateTime('YYYYMMDD', de_2edDate.Date + 1)] ); // 최종일자
  end;

	if edCuMilet01.Text = '' then edCuMilet01.Text := '0';
	if edCuMilet02.Text = '' then edCuMilet02.Text := '0';
	sTmp := RemoveComma(edCuMilet01.Text);
	if StrToIntDef(sTmp, 0) > 0 then
		sWhere := sWhere + ' AND CU.CU_MILEAGE >= ''' + Param_Filtering(sTmp) + ''' ' ;
	sTmp := RemoveComma(edCuMilet02.Text);
	if StrToIntDef(sTmp, 0) > 0 then
		sWhere := sWhere + ' AND CU.CU_EXPIRE_MILEAGE >= ''' + Param_Filtering(sTmp) + ''' ' ;

	ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
	fGet_BlowFish_Query(GSQ_CUST_MANAGE_SEARCH, sQueryTemp);
	ls_TxQry := Format(sQueryTemp, [cxHdNo1.Text, sWhere]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '2', [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '500', [rfReplaceAll]);

	Screen.Cursor := crHourGlass;
	slReceive := TStringList.Create;
	cxPageControl1.Enabled := False;
//	cxGroupBox1.Enabled := False;
	try
		frm_Main.proc_SocketWork(False);
		if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
		begin
			Application.ProcessMessages;
			proc_recieve(slReceive);
		end;
	finally
		frm_Main.proc_SocketWork(True);
		FreeAndNil(slReceive);
		Screen.Cursor := crDefault;
		Frm_Flash.Hide;
//		cxGroupBox1.Enabled := True;
		cxPageControl1.Enabled := True;
	end;
end;

procedure TFrm_CUT.proc_Cust_PhoneSel(Aidx: integer);
var XmlData, Param, ErrMsg: string;
  ErrCode: Integer;
	StrList, StrList1, StrList2: TStringList;
	I, j, iRow, iChk: Integer;
	tmpCnt: integer;
  tmpCntStr: string;
	k: Integer;
  tmpStr: string;
  ArrSt: array of string;
	sBrNo : string;
begin
	Screen.Cursor := crHourGlass;

	sBrNo := cxBrNo5.Text;
	if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
	begin
		ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
							+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');

		Screen.Cursor := crDefault;
		Exit;
	end;
	if (cbKeynumber05.ItemIndex < 0) or (cbKeynumber05.Text = '전체') then
	begin
		ShowMessage('대표번호를 선택하여 주십시오.');
		cbKeynumber05.SetFocus;
		Screen.Cursor := crDefault;
		Exit;
	end;
	if length(strtocall(cxTextEdit18.Text)) < 7 then
	begin
		ShowMessage('전화번호를 모두 입력하신 뒤 검색하여 주십시오.');
		cxTextEdit18.SetFocus;
		Screen.Cursor := crDefault;
		Exit;
	end;

	cxTextEdit20.Text := '';
	cxLabel243.Caption := '';
	cxLabel245.Caption := '';
	cxLabel247.Caption := '';
	cxLabel250.Caption := '';
	cxLabel240.Caption := '';
	cxLabel251.Caption := '';
	cxVirtureList.DataController.SetRecordCount(0);

	iRow := cxGridDBTableView1.DataController.FocusedRecordIndex;
	if Aidx = 0 then Param := sBrNo
	else Param := cxGridDBTableView1.DataController.Values[iRow, 10];
	Param := Param + '│' + CallToStr(cxTextEdit18.Text);

	if cbKeynumber05.ItemIndex > -1 then
		Param := Param + '│' + CallToStr(cbKeynumber05.Text)
	else
		Param := Param + '│' + '│';

	if not RequestBase(GetSel05('GET_CUSTOMER_INFO_VIRTUAL', 'MNG_CUST.GET_CUSTOMER_INFO_VIRTUAL', '10',Param), XmlData, ErrCode, ErrMsg) then
  begin
		GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

	StrList := TStringList.Create;
	StrList1 := TStringList.Create;
	StrList2 := TStringList.Create;
	try
		if Pos('<Data Count="',xmlData)>0 then
    begin
      tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
      if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
      tmpCnt:=StrToIntDef(tmpCntStr,0);
		end;
		if tmpCnt<1 then
		begin
			if Aidx = 0 then
			begin
				pnl5.Visible := False;
				Exit;
			end;
			iRow := cxGridDBTableView1.DataController.FocusedRecordIndex;
			if iRow > -1 then
			begin
				if cxBrNo5.Text <> cxGridDBTableView1.DataController.Values[iRow, 10] then
				begin
					pnl5.Visible := True;
					cxLabel252.Caption := Format('소속 선택지사(%s, %s)', [cxBrNo5.text, scb_BranchName[ scb_BranchCode.IndexOf(cxBrNo5.Text)]
																											+ ' - ' + cbKeynumber05.Text]);


					cxLabel253.Caption := Format('리스트 선택지사(%s, %s)', [cxGridDBTableView1.DataController.Values[iRow, 10]
																																, cxGridDBTableView1.DataController.Values[iRow, 6]]);
					cxTextEdit20.Enabled := false;
				end
				else pnl5.Visible := False;
				Exit;
			END;
		end;
    if tmpCnt > 1 then
    begin
			ShowMessage('동일한 고객번호가 2개 이상 존재합니다.'  + #13#10 + '대표번호를 확인하세요');
      Exit;
    end;

		SetLength(ArrSt,tmpCnt);
		tmpStr:=xmlData;
    tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);
    if Pos('<Result Value=',XmlData)>0 then
      tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);
		if tmpCnt>0 then
		begin
      cxVirtureList.DataController.SetRecordCount(0);
			cxVirtureList.BeginUpdate;
			iChk := 0;
      for k:=0 to tmpCnt-1 do
      begin
        ArrSt[k]:=tmpStr;
        if Pos('/>',tmpStr)>0 then
        begin
          ArrSt[k]:=Copy(tmpStr,1,Pos('/>',tmpStr)-1);
          if Pos('<Result Value=',ArrSt[k]) > 0 then
            ArrSt[k] := Copy(ArrSt[k],Pos('<Result Value=',ArrSt[k])+14,Length(ArrSt[k])-Pos('<Result Value=',ArrSt[k])+14+1);
          if Pos('/>',ArrSt[k]) > 0 then
            ArrSt[k] := Copy(ArrSt[k],1,Pos('/>',ArrSt[k])-1);
					ArrSt[k]:=StringReplace(ArrSt[k],'"','',[rfReplaceAll]);

          tmpStr:=Copy(tmpStr,Pos('/>',tmpStr)+2,Length(tmpStr)-Pos('/>',tmpStr)+2+1);
          StrList.Clear;
					StrList1.Clear;
					GetTextSeperationEx('│', ArrSt[k], StrList);

					cxLabel251.Caption := StrList.Strings[0];  //고객일련번호
					cxLabel243.Caption := StrList.Strings[1];  // 고객명
					cxLabel245.Caption := StrList.Strings[2];  // 이용횟수
					if length(StrList.Strings[3]) =  8 then
						cxLabel247.Caption := copy(StrList.Strings[3], 1,4) + '-' + copy(StrList.Strings[3], 5,2) + '-' + copy(StrList.Strings[3], 7,2)  // 최종이용일자
					else cxLabel247.Caption := StrList.Strings[3];
					cxTextEdit20.text := StrList.Strings[4];  // 메모

					GetTextSeperationEx(',', StrList.Strings[5], StrList1);
					for i := 0 to StrList1.Count - 1 do
					begin
						StrList2.Clear;
						iRow := cxVirtureList.DataController.AppendRecord;
						GetTextSeperationEx(';', StrList1[i], StrList2);

						cxVirtureList.DataController.Values[iRow, 0] := False;
						for j := 1 to StrList2.Count do
						begin
							cxVirtureList.DataController.Values[iRow, j] := strtocall(StrList2[j-1]);
							if StrList2[1] <> '' then
							begin
								cxLabel240.Caption := strtocall(StrList2[1]);
								cxLabel250.Caption := strtocall(StrList2[1]);
								cxVirtureList.DataController.Values[iRow, 0] := True;
								iChk := 1;
							end;
						end;
					end;
					if iChk = 1 then iFlag := 2
					else iFlag := 1;
        end;
			end;
			cxVirtureList.EndUpdate;
			if iChk = 0 then
			begin
				for iRow := 0 to cxVirtureList.DataController.RecordCount -1 do
				begin
					if calltostr(cxVirtureList.DataController.Values[iRow, 1]) = cxTextEdit18.text then
					begin
						cxVirtureList.DataController.Values[iRow, 0] := True;
					end;
				end;
			end;
			pnl5.Visible := False;
			cxTextEdit20.Enabled := True;
			if cxGridDBTableView1.DataController.RowCount = 0 then proc_VirtureNum;
		end;
	finally
    StrList.Free;
		StrList1.Free;
		StrList2.Free;
		Screen.Cursor := crDefault;
	end;
end;

function TFrm_CUT.func_Cust_Search(AHdNo, ABrNo, AKeyNumber, ASeq: string):Boolean;
var
  ls_TxLoad, sNode, sHdNo, sBrNo, sKeyNumber: string;
  ls_rxxml: WideString;
  xdom: msDOMDocument;
	lst_Node: IXMLDOMNodeList;
	slReceive: TStringList;
  rv_str: string;
	ErrCode: integer;
	lst_Result: IXMLDomNodeList;
	i : integer;
begin
	result := False;
	if StrToIntDef(ASeq, -1) = -1 then
    exit;

	ls_rxxml := GTx_UnitXmlLoad('C034N1.XML');
  xdom := ComsDOMDocument.Create;
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
	  lst_Node.item[0].attributes.getNamedItem('Value').Text := 'CUT111';
    sNode := '/cdms/Service/Customers';
    lst_Node := xdom.documentElement.selectNodes(sNode);

		sHdNo := Trim(AHdNo);
		sBrNo := Trim(ABrNo);
		sKeyNumber := Trim(AKeyNumber);

	  lst_Node.item[0].attributes.getNamedItem('action').Text := 'SELECT';
		lst_Node.item[0].attributes.getNamedItem('CuSeq').Text := Trim(ASeq);
		lst_Node.item[0].attributes.getNamedItem('HdNo').Text := sHdNo;
    lst_Node.item[0].attributes.getNamedItem('BrNo').Text := sBrNo;
		lst_Node.item[0].attributes.getNamedItem('KeyNumber').Text := sKeyNumber;
		ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

	  ls_TxLoad := StringReplace(ls_TxLoad, 'InDate=""', 'InDate="" BrTelYN="" CuEmail=""', [rfReplaceAll]);
	  ls_TxLoad := StringReplace(ls_TxLoad, 'CuSmsYN=""', 'CuSmsYN="" CuSmsMiDate="" CuVirtualYn="" CuVirtualTel="" CuVirtualDate=""', [rfReplaceAll]);
	  ls_TxLoad := StringReplace(ls_TxLoad, 'InDate=""', 'InDate="" AppCode="" AppLastRegDate="" AppLastDelDate="" AppLastFinishDate=""', [rfReplaceAll]);
	  ls_TxLoad := StringReplace(ls_TxLoad, 'AppLastFinishDate=""', 'AppLastFinishDate="" AppCuArea="" AppTermModel="" AppTermOS="" AppDelYn="" CuMemo=""', [rfReplaceAll]);
	  ls_TxLoad := StringReplace(ls_TxLoad, 'AppDelYn=""', 'AppDelYn="" AppGroup="" AppVersion=""' , [rfReplaceAll]);

	  slReceive := TStringList.Create;
	  try
			if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
				rv_str := slReceive[0];
        if rv_str <> '' then
        begin
					ls_rxxml := rv_str;
					Application.ProcessMessages;
					xdom := ComsDomDocument.Create;
					try
						if not xdom.loadXML(ls_rxxml) then Exit;

						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Customers/Customer');

						FCuData.CuName := lst_Result.item[0].attributes.getNamedItem('CmpNm').Text;

						FCuData.CuMemo := StringReplace(lst_Result.item[0].attributes.getNamedItem('CuPdaInfo').Text, '│', '|', [rfReplaceAll]);
						FCuData.CuMemo := StringReplace(FCuData.CuMemo, '|', '¶',  [rfReplaceAll]);

						FCuData.CuArea := lst_Result.item[0].attributes.getNamedItem('CuArea5').Text;
						// 출1/시도, 출2/시군구, 출3/읍면동
						FCuData.CuStart1 := lst_Result.item[0].attributes.getNamedItem('CuArea').Text;
						FCuData.CuStart2 := lst_Result.item[0].attributes.getNamedItem('CuArea2').Text;
						FCuData.CuStart3 := lst_Result.item[0].attributes.getNamedItem('CuArea3').Text;

						FCuData.CuAreaDetail := lst_Result.item[0].attributes.getNamedItem('CuArea4').Text;
						FCuData.CuXval := lst_Result.item[0].attributes.getNamedItem('CuMapX').Text;
						FCuData.CuYVal := lst_Result.item[0].attributes.getNamedItem('CuMapY').Text;

						FCuData.CuTelList := '';
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Customers/TelNums');
						if lst_Result.length > 0 then
						begin
							for i := 0 to lst_Result.length - 1 do
							begin
								if i = 0 then
									FCuData.CuTelList := strtocall(lst_Result.item[i].attributes.getNamedItem('CuTel').Text)
								else
									FCuData.CuTelList := FCuData.CuTelList + '|' + strtocall(lst_Result.item[i].attributes.getNamedItem('CuTel').Text);
								
							end;
						end;
          finally
						result := True;
					end;
				end;
			end;
		finally
			Frm_Flash.Hide;
      FreeAndNil(slReceive);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CUT.proc_DetailSearch;
var
  ls_TxLoad, sWhere, sTemp, sTel1, sTel2, sCbcode: string;
  slReceive: TStringList;
  ErrCode: integer;
  sms_use1, sms_use2: string;
  sExcelAdd: string;
begin
	dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    Exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSE);
    Exit;
  end;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('상세검색') then Exit;

  if not chkCust04Type08.Checked then
  begin
    if CustView4.DataController.RecordCount > 0 then
      Exit;
  end;

  //////////////////////////////////////////////////////////////////////////////
  // 고객>상세검색]2000건/콜센터(통합)/대표번호:16886618/최종이용기간:XX~XX/신규등록기간:XX~XX/완료:0~10/취소:0~20/SMS수신
  sExcelAdd := '';
  if chkCust04Type01.Checked then
    sExcelAdd := sExcelAdd + chkCust04Type01.Caption + ':' + cxDate4_1S.Text + '~' + cxDate4_1E.Text + '/';
  if chkCust04Type02.Checked then
		sExcelAdd := sExcelAdd + chkCust04Type02.Caption + ':' + cxDate4_2S.Text + '~' + cxDate4_2E.Text + '/';

  if chkCust04Type09.Checked then
		sExcelAdd := sExcelAdd + chkCust04Type09.Caption + ':' + cxDate4_3S.Text + '~' + cxDate4_3E.Text + '/';

  if chkCust04Type04.Checked then
    sExcelAdd := sExcelAdd + chkCust04Type04.Caption + ':' + edCust04Type01.Text + '~' + edCust04Type02.Text + '/';
  if chkCust04Type05.Checked then
    sExcelAdd := sExcelAdd + chkCust04Type05.Caption + ':' + edCust04Type03.Text + '~' + edCust04Type04.Text + '/';
  FExcelDownDetail := Format('%s/대표번호:%s/%s%s',
    [
        GetSelBrInfo
      , cbKeynumber04.Text
      , sExcelAdd
			, cbSmsUse04.Text
    ]);
	//////////////////////////////////////////////////////////////////////////////

  sWhere := '';

  if cbCustLastNumber4.ItemIndex = 0 then
  begin
    sTel1 := '0000';
    sTel2 := '9999';
  end else
  if (cbCustLastNumber4.ItemIndex > 0) then
  begin
    sTemp := cbCustLastNumber4.Text;
    sTel1 := Copy(sTemp, 1, 4);
    sTel2 := Copy(sTemp, 6, 4);
    sWhere := sWhere + ' AND EXISTS (SELECT * FROM CDMS_CUSTOMER_TEL WHERE CU_SEQ = C.CU_SEQ AND SUBSTR(CU_TEL, LENGTH(CU_TEL)-3) BETWEEN '''
     + sTel1 + ''' AND ''' + sTel2 + ''') '
  end;

  if cxBrNo4.Text <> '' then
    sWhere := sWhere + ' AND C.BR_NO = ''' + cxBrNo4.Text + ''' ';

  FDetailKeyNum := '';
  if (cbKeynumber04.Text <> '전체') and (cbKeynumber04.Text <> '') then
  begin
    sWhere := sWhere + ' AND C.KEY_NUMBER = ''' + StringReplace(cbKeynumber04.Text, '-', '', [rfReplaceAll]) + ''' ';
    FDetailKeyNum := StringReplace(cbKeynumber04.Text, '-', '', [rfReplaceAll]);
  end;

  case cbGubun4_1.ItemIndex of
    1: sWhere := sWhere + ' AND C.CU_TYPE = ''0'' ';
    2: sWhere := sWhere + ' AND C.CU_TYPE = ''1'' ';
    3: sWhere := sWhere + ' AND C.CU_TYPE = ''3'' ';
  end;
  // [hjf]
  case cbSmsUse04.ItemIndex of
  1:
    begin
      sms_use1 := 'y';
      sms_use2 := '0';
    end;
  2:
    begin
      sms_use1 := '0';
      sms_use2 := 'n';
    end;
  else
    begin
      sms_use1 := 'y';
      sms_use2 := 'n';
    end;
  end;

  if cbLevel04.ItemIndex > 0 then
    sWhere := sWhere + ' AND C.CU_LEVEL_CD = ''' + SCboLevelSeq[cbLevel04.itemindex] + ''' ';

  if cbOutBound4.ItemIndex > 0 then
    sWhere := sWhere + ' AND C.CU_OUTBOUND = ''' + IntToStr(cbOutBound4.ItemIndex) + ''' ';

  if chkCust04Type06.Checked then
    sWhere := sWhere + ' AND C.CU_TYPE != ''3'' ';
  if (chkCust04Type07.Checked) and (cbBCustList4.Enabled) and (cbBCustList4.ItemIndex > 0) then
  begin
    sCbcode := cbBCustList4Cd.Properties.Items[cbBCustList4.ItemIndex];
    sCbcode := Copy(sCbcode, 1, Pos(',', sCbcode) - 1);
    sWhere := sWhere + ' AND C.CB_CODE = ''' + sCbcode + ''' ';
  end;

  if chkCust04Type01.Checked then
  begin
    if cxDate4_1S.Enabled then
    begin
      if (cxDate4_1S.Text <> '') and (cxDate4_1E.Text <> '') then
        sWhere := sWhere + Format(' AND C.CU_LAST_END BETWEEN ''%s'' AND ''%s'' ' , [formatdatetime('yyyymmdd', cxDate4_1S.Date),
          Formatdatetime('yyyymmdd', cxDate4_1E.Date)])
      else
      if (cxDate4_1S.Text <> '') and (cxDate4_1E.Text = '') then
        sWhere := sWhere + Format(' AND C.CU_LAST_END >= ''%s'' ', [formatdatetime('yyyymmdd', cxDate4_1S.Date)])
      else
      if (cxDate4_1S.Text = '') and (cxDate4_1E.Text <> '') then
        sWhere := sWhere + Format(' AND ''%s'' >= C.CU_LAST_END ', [formatdatetime('yyyymmdd', cxDate4_1E.Date)]);
    end;
  end;

  if chkCust04Type02.Checked then
  begin
    if cxDate4_2S.Enabled then
    begin
      if (cxDate4_2S.Text <> '') and (cxDate4_2E.Text <> '') then
        sWhere := sWhere + Format(' AND C.IN_DATE BETWEEN TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') '
          , [Formatdatetime('yyyymmdd', cxDate4_2S.Date), Formatdatetime('yyyymmdd', cxDate4_2E.Date)])
      else
      if (cxDate4_2S.Text <> '') and (cxDate4_2E.Text = '') then
        sWhere := sWhere +
          format(' AND C.IN_DATE >= TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') ', [formatdatetime('yyyymmdd', cxDate4_2S.Date)])
      else
      if (cxDate4_2S.Text = '') and (cxDate4_2E.Text <> '') then
        sWhere := sWhere +
          format(' AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') >= C.IN_DATE ', [formatdatetime('yyyymmdd', cxDate4_2E.Date)]);
    end;
  end;

  if chkCust04Type03.Checked then
  begin
    if rbCust04Type01.Checked then
    begin
      if (cbArea03.Text <> '지역전체') and (cbArea04.ItemIndex > 0) then
        sWhere := sWhere + Format(' AND C.CU_AREA = ''%s'' AND C.CU_AREA2 = ''%s'' ', [cbArea03.Text, cbArea04.Text])
      else
      if (cbArea03.Text <> '지역전체') and (cbArea04.ItemIndex < 1) then
        sWhere := sWhere + Format(' AND C.CU_AREA = ''%s'' ', [cbArea03.Text]);
    end else
    if rbCust04Type02.Checked then
    begin
      if (cbArea03.Text <> '지역전체') and (cbArea04.ItemIndex > 0) then
        sWhere := sWhere + Format(' AND C.CU_EDAREA = ''%s'' AND C.CU_EDAREA2 = ''%s'' ', [cbArea03.Text, cbArea04.Text])
      else if (cbArea03.Text <> '지역전체') and (cbArea04.ItemIndex < 1) then
        sWhere := sWhere + Format(' AND C.CU_EDAREA = ''%s'' ', [cbArea03.Text]);
    end;
  end;

  if chkCust04Type09.Checked then
  begin
    if chkCust04Type04.Checked then
    begin
      if (StrToIntDef(edCust04Type01.Text, -1) > -1) and (StrToIntDef(edCust04Type02.Text, -1) > -1) then
        sWhere := sWhere + ' AND A01.CU_ENDCNT BETWEEN ''' + edCust04Type01.Text + ''' AND ''' + edCust04Type02.Text + ''' '
      else if (StrToIntDef(edCust04Type01.Text, -1) > -1) and (StrToIntDef(edCust04Type02.Text, -1) = -1) then
        sWhere := sWhere + ' AND A01.CU_ENDCNT >= ''' + edCust04Type01.Text + ''' '
      else if (StrToIntDef(edCust04Type01.Text, -1) = -1) and (StrToIntDef(edCust04Type02.Text, -1) > -1) then
        sWhere := sWhere + ' AND ''' + edCust04Type02.Text + ''' >= A01.CU_ENDCNT ';
    end;
    if chkCust04Type05.Checked then
    begin
      if (StrToIntDef(edCust04Type03.Text, -1) > -1) and (StrToIntDef(edCust04Type04.Text, -1) > -1) then
        sWhere := sWhere + ' AND A01.CU_CANCELCNT BETWEEN ''' + edCust04Type03.Text + ''' AND ''' + edCust04Type04.Text + ''' '
      else if (StrToIntDef(edCust04Type03.Text, -1) > -1) and (StrToIntDef(edCust04Type04.Text, -1) = -1) then
        sWhere := sWhere + ' AND A01.CU_CANCELCNT >= ''' + edCust04Type03.Text + ''' '
      else if (StrToIntDef(edCust04Type03.Text, -1) = -1) and (StrToIntDef(edCust04Type04.Text, -1) > -1) then
        sWhere := sWhere + ' AND ''' + edCust04Type04.Text + ''' >= A01.CU_CANCELCNT ';
    end;
  end;

  if (chkCust04Type04.Checked) and (not chkCust04Type09.Checked) then
  begin
    if (StrToIntDef(edCust04Type01.Text, -1) > -1) and
      (StrToIntDef(edCust04Type02.Text, -1) > -1) then
      sWhere := sWhere + ' AND C.CU_ENDCNT BETWEEN ''' + edCust04Type01.Text + ''' AND ''' + edCust04Type02.Text + ''' '
    else if (StrToIntDef(edCust04Type01.Text, -1) > -1) and
      (StrToIntDef(edCust04Type02.Text, -1) = -1) then
      sWhere := sWhere + ' AND C.CU_ENDCNT >= ''' + edCust04Type01.Text + ''' '
    else if (StrToIntDef(edCust04Type01.Text, -1) = -1) and
      (StrToIntDef(edCust04Type02.Text, -1) > -1) then
      sWhere := sWhere + ' AND ''' + edCust04Type02.Text + ''' >= C.CU_ENDCNT ';
  end;

  if (chkCust04Type05.Checked) and (not chkCust04Type09.Checked) then
  begin
    if (StrToIntDef(edCust04Type03.Text, -1) > -1) and (StrToIntDef(edCust04Type04.Text, -1) > -1) then
      sWhere := sWhere + ' AND C.CU_CANCELCNT BETWEEN ''' + edCust04Type03.Text + ''' AND ''' + edCust04Type04.Text + ''' '
    else if (StrToIntDef(edCust04Type03.Text, -1) > -1) and (StrToIntDef(edCust04Type04.Text, -1) = -1) then
      sWhere := sWhere + ' AND C.CU_CANCELCNT >= ''' + edCust04Type03.Text + ''' '
    else if (StrToIntDef(edCust04Type03.Text, -1) = -1) and (StrToIntDef(edCust04Type04.Text, -1) > -1) then
      sWhere := sWhere + ' AND ''' + edCust04Type04.Text + ''' >= C.CU_CANCELCNT ';
  end;

  // 저장된 쿼리가 select ~~ from (select ~ from where [condition] 형식으로 저장되어 있음(우괄호 반드시 필요)
  if edtCuEmail.Text <> '' then sWhere := sWhere + 'AND C.CU_EMAIL Like ''%' + Param_Filtering(edtCuEmail.Text) + '%'' ';
  sWhere := sWhere + ')';
  if chkCust04Type09.Checked then
    ls_TxLoad := GetSel04(self.Caption + '7', 'CUSTOMER25', '', sWhere, [sTel1, sTel2, sms_use1, sms_use2, cxHdNo4.Text,
                          formatdatetime('yyyymmdd', cxDate4_3S.Date), formatdatetime('yyyymmdd', cxDate4_3E.Date), cxHdNo4.Text])
  else
    ls_TxLoad := GetSel04(self.Caption + '7', 'CUSTOMER21', '', sWhere, [sTel1, sTel2, sms_use1, sms_use2, cxHdNo4.Text]);
  Screen.Cursor := crHourGlass;

  cxPageControl1.Enabled := False;

  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
    begin
      Application.ProcessMessages;
      proc_recieve(slReceive);
    end;
  finally
    frm_Main.proc_SocketWork(True);
    FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    cxPageControl1.Enabled := True;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUT.proc_EventCnt_Init(iGuBun: Integer);
var
  msg, sBrNo, sBrName, Param, sHdNo : string;
  XmlData, ErrMsg: string;
  ErrCode : Integer;
begin
	try
		sHdNo := cxHdNo8.Text;
    sBrNo := cxBrNo8.Text;

    if ((Formatdatetime('hhmm', Now) >= '2100') or (Formatdatetime('hhmm', Now) <= '0200')) then
    begin
      GMessagebox('오후 9시부터 오전 2시에는 이벤트 초기화를 할수 없습니다.', CDMSE);
      Exit;
    end;

    if sBrNo = '' then
    begin
			GMessagebox('마일리지 설정은 지사를 선택하셔야 합니다.', CDMSE);
			proc_init_mileage;
      Exit;
    end;

    if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
    begin
      msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
      sBrName := GetBrName(sBrNo);
      GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSE);
      proc_init_mileage;
      Exit;
    end;

    if fGetChk_Search_HdBrNo('마일리지설정') then Exit;

    if GMessagebox('이벤트 횟수가 전체 초기화 됩니다.' + #13#10 +
                   '초기화 하시겠습니까?', CDMSQ) <> idok then Exit;

    Param := sHdNo + '│' + sBrNo + '│' + IntToStr(iGubun);
    if not RequestBase(GetCallable05('SET_BRANCH_EVENT_INIT', 'MNG_CUST.SET_BRANCH_EVENT_INIT', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('마일리지 설정 이벤트 횟수 초기화 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

    GMessagebox('이벤트 횟수 초기화 완료 되었습니다.', CDMSI);
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT.proc_GeneralSearch;
var
	ls_TxQry, ls_TxLoad, sQueryTemp: string;
	lg_sWhere, sBrNo, sClientKey: string;
	sCGubun, sCName, sCTel, sCmemo, sSql: string;
	slReceive: TStringList;
	ErrCode: integer;
begin

	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
	begin
		GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
		Exit;
	end;

	if fGetChk_Search_HdBrNo('일반검색') then Exit;

	if not chkCust02Type04.Checked then
	begin
		if CustView2.DataController.RecordCount > 0 then
			Exit;
	end;

	//////////////////////////////////////////////////////////////////////////////
	// 고객>일반검색]2000건/콜센터(통합)/이용내역/대표번호:16886618/기간:20100101~20100131/완료:1~10/취소:1~10/SMS전체
	FExcelDownNormal := Format('%s/구분:%s/대표번호:%s/기간:%s~%s%s%s/%s',
		[
				GetSelBrInfo
			, IfThen(rbAll01.Checked, '전체', IfThen(rbNew01.Checked, '신규등록', '이용내역'))
			, cbKeynumber02.Text
			, cxDate2_1S.Text, cxDate2_1E.Text
			, IfThen(cb_S_Cnt1.Text + cb_S_Cnt2.Text = '', '', Format('/완료:%s~%s', [cb_S_Cnt1.Text, cb_S_Cnt2.Text]))
			, IfThen(cb_S_CCnt1.Text + cb_S_CCnt2.Text = '', '', Format('/취소:%s~%s', [cb_S_CCnt1.Text, cb_S_CCnt2.Text]))
      , cb_Sms_Gubun.Text
    ]);
	//////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------
//     전일이용고객
//------------------------------------------------------------------------------
  if chk_Before.Checked then
		proc_before_his
//------------------------------------------------------------------------------
//     전일완료고객
//------------------------------------------------------------------------------
	else if chk_Before_Finish.Checked then
		proc_before_comp
//------------------------------------------------------------------------------
//     전일 신규고객
//------------------------------------------------------------------------------
  else if chk_Before_New.Checked then
		proc_before_new
  else
	begin
		dt_sysdate2 := frm_main.func_sysdate;

    if Trim(dt_sysdate2) = '' then
    begin
      GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
      Exit;
    end;

    if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
      2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
    begin
      GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSE);
      Exit;
    end;

    lb_st_customer.Clear;

		sBrNo := cxBrNo2.Text;

    chk_All_Select.Checked := False;
    chk_All_Select.OnClick(chk_All_Select);
    lg_swhere := '';

		if rg_SType.Tag in [0, 1] then
    begin
      if sBrNo <> '' then
				lg_sWhere := Format(' AND A.HD_NO = ''%s'' AND A.BR_NO = ''%s'' ', [cxHdNo2.Text, sBrNo])
      else
				lg_sWhere := Format(' AND A.HD_NO = ''%s'' ', [cxHdNo2.Text]);
      sCGubun := 'A.CU_TYPE';
      sCName := 'A.CMP_NM';
			sCTel := 'B.CU_TEL';
      sCmemo := 'A.CU_INFO';
      sClientKey := Self.Caption + '3';

      fGet_BlowFish_Query(GSQ_CUSTOMER_LIST, sQueryTemp);
      sSql := sQueryTemp;

			if StrToIntDef(Trim(cb_S_Cnt1.Text), -1) > -1 then
				lg_sWhere := lg_sWhere + format(' AND (A.CU_ENDCNT >= %s) ', [Trim(cb_S_Cnt1.Text)]);

			if StrToIntDef(Trim(cb_S_Cnt2.Text), -1) > -1 then
				lg_sWhere := lg_sWhere + format(' AND (%s >= A.CU_ENDCNT) ', [Trim(cb_S_Cnt2.Text)]);

      if StrToIntDef(Trim(cb_S_CCnt1.Text), -1) > -1 then
				lg_sWhere := lg_sWhere + format(' AND (A.CU_CANCELCNT >= %s) ', [Trim(cb_S_CCnt1.Text)]);

      if StrToIntDef(Trim(cb_S_CCnt2.Text), -1) > -1 then
        lg_sWhere := lg_sWhere + format(' AND (%s >= A.CU_CANCELCNT) ', [Trim(cb_S_CCnt2.Text)]);

      if cb_S_Grad.ItemIndex > 0 then
        lg_sWhere := lg_sWhere + ' AND A.CU_LEVEL_CD = ''' + SCboLevelSeq[cb_S_Grad.itemindex] + ''' ';

      if cb_Sms_Gubun.ItemIndex = 1 then
        lg_sWhere := lg_sWhere + ' AND (B.CU_SMSYN = ''y'') '
      else if cb_Sms_Gubun.ItemIndex = 2 then
        lg_sWhere := lg_sWhere + ' AND (B.CU_SMSYN = ''n'') ';

			if cbOutBound1.ItemIndex > 0 then
  	  	lg_sWhere := lg_sWhere + ' AND A.CU_OUTBOUND = ''' + IntToStr(cbOutBound1.ItemIndex) + ''' ';
    end else
		if rg_SType.Tag = 2 then
    begin
      if sBrNo <> '' then
				lg_sWhere := Format(' AND A.CONF_HEAD = ''%s'' AND A.CONF_BRCH = ''%s'' ', [cxHdNo2.Text, sBrNo])
      else
				lg_sWhere := Format(' AND A.CONF_HEAD = ''%s'' ', [cxHdNo2.Text]);
      sCGubun := 'A.CONF_BAR';
      sCName := 'A.CONF_USER';
      sCTel := 'A.CONF_CUST_TEL';
      sCmemo := 'A.CONF_MEMO';
      sClientKey := Self.Caption + '4';
      fGet_BlowFish_Query(GSQ_HISTORY_LIST, sQueryTemp);
			sSql := sQueryTemp;
      if cb_Sms_Gubun.ItemIndex > 0 then
			begin
        if (sg_notsms_list.DataController.RecordCount > 0) and
					(sg_notsms_list.DataController.Values[0, 0] <> sBrno) then
					proc_NotSMS(sBrNo);
      end;

			if rrb_st_comp.Checked then
				lg_sWhere := lg_sWhere + ' AND A.CONF_STATUS = ''2'' '
			else
				lg_sWhere := lg_sWhere + ' AND A.CONF_STATUS IN (''2'', ''4'', ''8'') ';

			if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex > 0) then
        lg_sWhere := lg_sWhere + Format(' AND A.CONF_AREA = ''%s'' AND A.CONF_AREA2 = ''%s'' ', [cb_st_city.Text, cb_st_ward.Text])
      else if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex < 1) then
        lg_sWhere := lg_sWhere + Format(' AND A.CONF_AREA = ''%s'' ', [cb_st_city.Text]);

			if cb_S_Grad.ItemIndex > 0 then
        lg_sWhere := lg_sWhere + ' AND CU.CU_LEVEL_CD = ''' + SCboLevelSeq[cb_S_Grad.itemindex] + ''' ';

			if cbOutBound1.ItemIndex > 0 then
				lg_sWhere := lg_sWhere + ' AND CU.CU_OUTBOUND = ''' + IntToStr(cbOutBound1.ItemIndex) + ''' ';

			if StrToIntDef(Trim(cb_S_Cnt1.Text), -1) > -1 then
				lg_sWhere := lg_sWhere + format(' AND (A.USE_COUNT >= %s) ', [Trim(cb_S_Cnt1.Text)]);

			if StrToIntDef(Trim(cb_S_Cnt2.Text), -1) > -1 then
				lg_sWhere := lg_sWhere + format(' AND (%s >= A.USE_COUNT) ', [Trim(cb_S_Cnt2.Text)]);
		end;

    if (cbKeynumber02.Text <> '전체') and (cbKeynumber02.Text <> '') then
      lg_sWhere := lg_sWhere + format(' AND (A.KEY_NUMBER = ''%s'') ', [StringReplace(cbKeynumber02.Text, '-', '', [rfReplaceAll])]);

		if cxDate2_1S.Enabled then
    begin
			if (cxDate2_1S.Text <> '') and (cxDate2_1E.Text <> '') then
        lg_sWhere := lg_sWhere + format(' AND A.IN_DATE BETWEEN TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') '
					, [formatdatetime('yyyymmdd', cxDate2_1S.Date), formatdatetime('yyyymmdd', cxDate2_1E.Date)])
      else
			if (cxDate2_1S.Text <> '') and (cxDate2_1E.Text = '') then
        lg_sWhere := lg_sWhere + format(' AND A.IN_DATE >= TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'')  '
					, [formatdatetime('yyyymmdd', cxDate2_1S.Date)])
      else
			if (cxDate2_1S.Text = '') and (cxDate2_1E.Text <> '') then
        lg_sWhere := lg_sWhere + format(' AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') >= A.IN_DATE  '
					, [formatdatetime('yyyymmdd', cxDate2_1E.Date)]);
    end;

    case cbGubun2_1.ItemIndex of
      1: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''0'' ';
      2: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''1'' ';
      3: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''3'' ';
    end;

    if Trim(edCustMemo01.Text) <> '' then
      lg_sWhere := lg_sWhere + format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCmemo, '%',
        trim(Param_Filtering(edCustMemo01.Text)), '%']);

    if trim(edCustName02.Text) <> '' then
      lg_sWhere := lg_sWhere + format(' AND (%s LIKE ''%s'' || ''%s'') ', [sCName, trim(Param_Filtering(edCustName02.Text)), '%']);

    if trim(edCustTel02.Text) <> '' then
      lg_sWhere := lg_sWhere + format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCTel, '%',
        trim(StringReplace(Param_Filtering(edCustTel02.Text), '-', '', [rfReplaceAll])), '%']);

    ls_TxQry := Format(sSql, [lg_sWhere]);
    ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', sClientKey, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '5000', [rfReplaceAll]);

		cxPageControl1.Enabled := False;
		Screen.Cursor := crHourGlass;
		slReceive := TStringList.Create;
    try
      frm_Main.proc_SocketWork(False);
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
      begin
        Application.ProcessMessages;
				proc_recieve(slReceive);
      end;
    finally
			frm_Main.proc_SocketWork(True);
			cxPageControl1.Enabled := True;
			FreeAndNil(slReceive);
			Screen.Cursor := crDefault;
			Frm_Flash.Hide;
    end;
  end;
end;

procedure TFrm_CUT.proc_HighSearch;
var
  ls_TxLoad, sWhere, sTemp, sSms1, sSms2, sTel1, sTel2: string;
  slReceive: TStringList;
  ErrCode: integer;
  MileType: string;
begin
	dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    Exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSE);
    Exit;
  end;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('고급검색') then Exit;

	if not chkCust03Type04.Checked then
  begin
    if CustView3.DataController.RecordCount > 0 then
			Exit;
  end;

  //////////////////////////////////////////////////////////////////////////////
  // 고객>고급검색]2000건/콜센터(통합)/대표번호:16886618/전체기간/마일리지:10~100점,1~3회지급/SMS수신
  if rbCust03Type03.Checked then
  begin
		if edMlgScore01.Text + edMlgScore02.Text + edMlgCount01.Text + edMlgCount02.Text = '' then
      MileType := ''
		else
      MileType := '/마일리지:'
				+ IfThen(edMlgScore01.Text + edMlgScore02.Text = '', '', Format('%s~%s점', [edMlgScore01.Text, edMlgScore02.Text]))
        + IfThen(edMlgCount01.Text + edMlgCount02.Text = '', '', Format('%s~%s회지급', [edMlgCount01.Text, edMlgCount02.Text]))
      ;
  end;
	FExcelDownHigh := Format('%s/대표번호:%s/%s%s/%s',
    [
        GetSelBrInfo
      , cbKeynumber03.Text
      , IfThen(rbCust03Type01.Checked, '전체기간', Format('최초등록시간:%s~%s', [cxDate3_1S.Text, cxDate3_1E.Text]))
			, IfThen(rbCust03Type04.Checked,
					Format('전화뒷자리:%s', [cbCustLastNumber.Text]),
					MileType)
      , cbSmsUse03.Text
    ]);
  //////////////////////////////////////////////////////////////////////////////
  if cbSmsUse03.ItemIndex = 0 then
  begin
    sSms1 := 'y';
    sSms2 := 'n';
  end else
  if cbSmsUse03.ItemIndex = 1 then
  begin
    sSms1 := 'y';
    sSms2 := '0';
  end else
  begin
    sSms1 := 'n';
    sSms2 := '0';
  end;

  sWhere := '';

  if cbCustLastNumber.ItemIndex = 0 then
  begin
    sTel1 := '0000';
    sTel2 := '9999';
  end else
  if (rbCust03Type04.Checked) and (cbCustLastNumber.ItemIndex > 0) then
  begin
    sTemp := cbCustLastNumber.Text;
    sTel1 := Copy(sTemp, 1, 4);
    sTel2 := Copy(sTemp, 6, 4);
    sWhere := sWhere +
      ' AND EXISTS (SELECT * FROM CDMS_CUSTOMER_TEL WHERE CU_SEQ = C.CU_SEQ AND SUBSTR(CU_TEL, LENGTH(CU_TEL)-3) BETWEEN ''' + sTel1
      + ''' AND ''' + sTel2 + ''') '
  end;

	if cxBrNo3.Text <> '' then
		sWhere := sWhere + ' AND C.BR_NO = ''' + cxBrNo3.Text + ''' ';

  if (cbKeynumber03.Text <> '전체') and (cbKeynumber03.Text <> '') then
    sWhere := sWhere + ' AND C.KEY_NUMBER = ''' + StringReplace(cbKeynumber03.Text, '-', '', [rfReplaceAll]) + ''' ';

	case cbGubun3_1.ItemIndex of
    1: sWhere := sWhere + ' AND C.CU_TYPE = ''0'' ';
    2: sWhere := sWhere + ' AND C.CU_TYPE = ''1'' ';
    3: sWhere := sWhere + ' AND C.CU_TYPE = ''3'' ';
  end;

  if rbCust03Type02.Checked then
  begin
		if cxDate3_1S.Enabled then
    begin
			if (cxDate3_1S.Text <> '') and (cxDate3_1E.Text <> '') then
        sWhere := sWhere +
          format(' AND C.IN_DATE BETWEEN TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') '
					, [formatdatetime('yyyymmdd', cxDate3_1S.Date), formatdatetime('yyyymmdd', cxDate3_1E.Date)])
      else
			if (cxDate3_1S.Text <> '') and (cxDate3_1E.Text = '') then
        sWhere := sWhere + format(' AND C.IN_DATE >= TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'')  '
					, [formatdatetime('yyyymmdd', cxDate3_1S.Date)])
      else
			if (cxDate3_1S.Text = '') and (cxDate3_1E.Text <> '') then
        sWhere := sWhere + format(' AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') >= C.IN_DATE  '
					, [formatdatetime('yyyymmdd', cxDate3_1E.Date)]);
    end;
  end else
  if rbCust03Type03.Checked then
  begin
		if (StrToIntDef(edMlgScore01.Text, -1) > -1) and
      (StrToIntDef(edMlgScore02.Text, -1) > -1) then
      sWhere := sWhere + ' AND C.CU_MILEAGE BETWEEN ''' + Param_Filtering(edMlgScore01.Text) + ''' AND ''' + Param_Filtering(edMlgScore02.Text) + ''' '
    else if (StrToIntDef(edMlgScore01.Text, -1) > -1) and
      (StrToIntDef(edMlgScore02.Text, -1) = -1) then
      sWhere := sWhere + ' AND C.CU_MILEAGE >= ''' + Param_Filtering(edMlgScore01.Text) + ''' '
    else if (StrToIntDef(edMlgScore01.Text, -1) = -1) and
      (StrToIntDef(edMlgScore02.Text, -1) > -1) then
      sWhere := sWhere + ' AND ''' + Param_Filtering(edMlgScore02.Text) + ''' >= C.CU_MILEAGE ';

    if (StrToIntDef(edMlgCount01.Text, -1) > -1) and
      (StrToIntDef(edMlgCount02.Text, -1) > -1) then
      sWhere := sWhere + ' AND C.CU_PRIZE_CNT BETWEEN ''' + Param_Filtering(edMlgCount01.Text) + ''' AND ''' + Param_Filtering(edMlgCount02.Text) + ''' '
    else if (StrToIntDef(edMlgScore01.Text, -1) > -1) and
      (StrToIntDef(edMlgScore02.Text, -1) = -1) then
      sWhere := sWhere + ' AND C.CU_PRIZE_CNT >= ''' + Param_Filtering(edMlgCount01.Text) + ''' '
    else if (StrToIntDef(edMlgCount01.Text, -1) = -1) and (StrToIntDef(edMlgCount02.Text, -1) > -1) then
      sWhere := sWhere + ' AND ''' + Param_Filtering(edMlgCount02.Text) + ''' >= C.CU_PRIZE_CNT ';

		if (StrToIntDef(edMlgLost01.Text, -1) > -1) and (StrToIntDef(edMlgLost02.Text, -1) > -1) then
			sWhere := sWhere + ' AND C.CU_EXPIRE_MILEAGE BETWEEN ''' + Param_Filtering(edMlgLost01.Text) + ''' AND ''' + Param_Filtering(edMlgLost02.Text) + ''' '
		else if (StrToIntDef(edMlgLost01.Text, -1) > -1) and (StrToIntDef(edMlgLost02.Text, -1) = -1) then
			sWhere := sWhere + ' AND C.CU_EXPIRE_MILEAGE >= ''' + Param_Filtering(edMlgLost01.Text) + ''' '
		else if (StrToIntDef(edMlgLost01.Text, -1) = -1) and (StrToIntDef(edMlgLost02.Text, -1) > -1) then
			sWhere := sWhere + ' AND ''' + Param_Filtering(edMlgLost02.Text) + ''' >= C.CU_EXPIRE_MILEAGE ';
  end;

  if rbCust03Type05.Checked then
  begin
		sWhere := sWhere + ' AND C.CU_SEQ = APP.CU_SEQ(+)  ';
  end else
  if rbCust03Type06.Checked then
		sWhere := sWhere + ' AND C.CU_SEQ = APP.CU_SEQ    ' +
                       ' AND C.CU_SEQ = APP.CU_SEQ(+) ' +
 		                   ' AND APP.DEL_YN = ''n'' '
  else
  if rbCust03Type07.Checked then
		sWhere := sWhere + ' AND C.CU_SEQ  NOT IN  (SELECT CU_SEQ FROM CDMS_APP_USER WHERE DEL_YN = ''n'') ' +  // 미사용
                       ' AND C.CU_SEQ = APP.CU_SEQ(+) ';

	if cbOutBound3.ItemIndex > 0 then
		sWhere := sWhere + ' AND C.CU_OUTBOUND = ''' + IntToStr(cbOutBound3.ItemIndex) + ''' ';

  if chkCust03Type01.Checked then
  begin
		sWhere := sWhere + Format(' AND APP.LAST_REG_DATE BETWEEN TRUNC( TO_DATE( %s, ''yyyymmdd'' ) )     ' +
                              '                           AND TRUNC( TO_DATE( %s, ''yyyymmdd'' ) + 1 ) ', [FormatDateTime('YYYYMMDD', de_A31stDate.Date), FormatDateTime('YYYYMMDD', de_A31edDate.Date)] ); // 등록일자
  end;

  if chkCust03Type02.Checked then
  begin
		sWhere := sWhere + Format(' AND APP.DEL_YN = ''y'' ' +
                              ' AND APP.LAST_DEL_DATE BETWEEN TRUNC( TO_DATE( %s, ''yyyymmdd'' ) )     ' +
                              '                           AND TRUNC( TO_DATE( %s, ''yyyymmdd'' ) + 1 ) ', [FormatDateTime('YYYYMMDD', de_A33stDate.Date), FormatDateTime('YYYYMMDD', de_A33edDate.Date)] ); // 삭제일자
  end;

  if chkCust03Type03.Checked then
  begin
		sWhere := sWhere + Format(' AND APP.LAST_FINISH_DATE BETWEEN TRUNC( TO_DATE( %s, ''yyyymmdd'' ) )     ' +
                              '                              AND TRUNC( TO_DATE( %s, ''yyyymmdd'' ) + 1 ) ', [FormatDateTime('YYYYMMDD', de_A32stDate.Date), FormatDateTime('YYYYMMDD', de_A32edDate.Date)] ); // 최종일자
  end;

  // 저장된 쿼리가 select ~~ from (select ~ from where [condition] 형식으로 저장되어 있음(우괄호 반드시 필요)
  sWhere := sWhere + ')';
	ls_TxLoad := GetSel04(self.Caption + '6', 'CUSTOMER12', '', sWhere, [sSms1, sSms2, sTel1, sTel2, cxHdNo3.Text]);

	cxPageControl1.enabled := False;

	Screen.Cursor := crHourGlass;
  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
    begin
			Application.ProcessMessages;
			proc_recieve(slReceive);
		end;
  finally
    frm_Main.proc_SocketWork(True);
		cxPageControl1.enabled := True;
		FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUT.proc_init;
var
	i, iCol: Integer;
	ln_env: TIniFile;
  sTemp: string;
begin
	proc_BrNameSet;

	de_1stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	de_1edDate.Date := de_1stDate.Date + 1;
	de_2stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	de_2edDate.Date := de_2stDate.Date + 1;
	de_3stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	de_3edDate.Date := de_3stDate.Date + 1;
	
	de_4stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	de_4edDate.Date := de_4stDate.Date + 1;
	de_5stDate.Date := de_4stDate.Date;
	de_5edDate.Date := de_4edDate.Date;

	de_6stDate.Date := de_4stDate.Date;
	de_6edDate.Date := de_4edDate.Date;
  cxCheckBox9.Checked := False;
  cxCheckBox9Click(cxCheckBox9);

	rbFirstUseDate01Click(rbUseDate01);
  edCustName01.Text := '';
  edCustTel01.Text := '';
	cbSmsUse01.ItemIndex := 0;
	cbGubun1_1.ItemIndex := 0;
  cbLevel01.ItemIndex := 0;

  chkBubinName.Checked := False;
  chkBubinCust.Checked := False;

  lbCount01.Caption := '총 000명';
  chkSearchAdd.Checked := False;
  cxCheckBox4.Checked := False;

	// 고객관리 그리드 초기화
//	proc_CustCounsel_Title;

	for i := 1 to CustView1.ColumnCount - 1 do
		CustView1.Columns[i].DataBinding.ValueType := 'String';

	CustView1.BeginUpdate;
	ln_Env := TIniFile.Create(ENVPATHFILE);
	try
		CustView1.DataController.SetRecordCount(0);
		for i := 0 to CustView1.ColumnCount - 1 do
		begin
			sTemp := ln_env.ReadString('CustCounsel', IntToStr(i), '');

			if lbCustCounselTitle.Items.IndexOf(sTemp) < 0 then
			begin
				sTemp := '';
			end;

			if sTemp <> '' then
			begin
				iCol := CustView1.GetColumnByFieldName(sTemp).Index;
				if iCol = -1 then iCol := i;
			end
			else
				iCol := i;
			CustView1.Columns[iCol].Index := i;
			
			if CustView1.Columns[iCol].Tag = 0 then
				CustView1.Columns[iCol].Visible := False;
		end;
	finally
		CustView1.EndUpdate;
		FreeAndNil(ln_Env);
	end;

	if TCK_USER_PER.SMS_Advertisement <> '1' then    //대량SMS발송권한이 없을경우 버튼 비활성화
	begin
		btn_1_1.enabled := False;
		btn_2_5.enabled := False;
		btn_3_5.enabled := False;
		btn_4_6.enabled := False;
		btn_6_9.enabled := False;
		btn_9_4.enabled := False;
	end;

	iCol := CustView1.GetColumnByFieldName('No').Index;
	CustView1.Columns[iCol].DataBinding.ValueType := 'Integer';
	iCol := CustView1.GetColumnByFieldName('이용횟수').Index;
	CustView1.Columns[iCol].DataBinding.ValueType := 'Integer';
	iCol := CustView1.GetColumnByFieldName('완료횟수').Index;
	CustView1.Columns[iCol].DataBinding.ValueType := 'Integer';
	iCol := CustView1.GetColumnByFieldName('마일리지').Index;
	CustView1.Columns[iCol].DataBinding.ValueType := 'Currency';
	iCol := CustView1.GetColumnByFieldName('hdno').Index;
	CustView1.Columns[iCol].Visible := False;
	/////////////////////////////////////sheet1////////////////////////////////////////////////////

//2//
	cxDate2_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDate2_1E.Date := cxDate2_1S.Date + 1;

  rbNew01.Checked := True;
  rbAll01Click(rbNew01);
  cbGubun2_1.ItemIndex := 0;
  edCustName02.Text := '';
  edCustTel02.Text := '';
  cb_Sms_Gubun.ItemIndex := 1;
  edCustTel02.Text := '';
  edCustMemo01.Text := '';
  cb_S_Cnt1.Text := '';
  cb_S_Cnt2.Text := '';
	cb_S_CCnt1.Text := '';
  cb_S_CCnt2.Text := '';
  cb_S_Grad.ItemIndex := 0;

	cb_st_city.Properties.Items.Clear;
 	cb_st_city.Properties.Items.Assign(slstLocalMapOrder);
	cb_st_city.Properties.Items.Insert(0, '지역전체');

  cb_st_city.Tag := 0;
	cb_st_city.ItemIndex := 0;
	cb_st_cityPropertiesChange(cb_st_city);

  cb_st_ward.ItemIndex := 0;

	lbCount02.Caption := '총 0명';
  chkCust02Type04.Checked := False;
  chk_All_Select.Checked := False;

  CustView2.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to CustView2.ColumnCount - 1 do
    CustView2.Columns[i].DataBinding.ValueType := 'String';
  CustView2.Columns[23].DataBinding.ValueType := 'Currency';

  for i := 0 to sg_notsms_list.ColumnCount - 1 do
    sg_notsms_list.Columns[i].DataBinding.ValueType := 'String';
//2//


//3//
	cxDate3_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDate3_1E.Date := cxDate3_1S.Date + 1;

	de_A31stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	de_A31edDate.Date := de_A31stDate.Date + 1;

	de_A32stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	de_A32edDate.Date := de_A32stDate.Date + 1;

	de_A33stDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	de_A33edDate.Date := de_A33stDate.Date + 1;

	lbCount01.Caption := '총 000명';

	cbGubun3_1.ItemIndex := 0;
	edCustName03.Text := '';
	rbCust03Type01.Checked := True;
  rbCust03Type01Click(rbCust03Type01);
	rbCust03Type03.Checked := true;
	rbCust03Type03Click(rbCust03Type03);
	chkCust03Type04.Checked := False;
	chkCust03Type07.Checked := false;

	CustView3.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to CustView3.ColumnCount - 1 do
		CustView3.Columns[i].DataBinding.ValueType := 'String';
	CustView3.Columns[11].DataBinding.valuetype := 'Currency';
	CustView3.Columns[12].DataBinding.valuetype := 'Integer';
//3//


//4//
	cxDate4_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDate4_1E.Date := cxDate4_1S.Date + 1;

	cxDate4_2S.Date := cxDate4_1S.Date;
	cxDate4_2E.Date := cxDate4_1E.Date;

	cxDate4_3S.Date := cxDate4_1S.Date;
	cxDate4_3E.Date := cxDate4_1E.Date;

	cbGubun4_1.ItemIndex := 0;
	cbLevel04.ItemIndex := 0;
	chkCust04Type06.Checked := False;
  lbCount04.Caption := '총 00명';
  chkCust04Type01.Checked := False;
  chkCust04Type01Click(chkCust04Type01);
	chkCust04Type02.Checked := False;
  chkCust04Type02Click(chkCust04Type02);
  chkCust04Type03.Checked := False;
  chkCust04Type03Click(chkCust04Type03);
  chkCust04Type07.Checked := False;
  chkCust04Type07Click(chkCust04Type07);
	chkCust04Type09.Checked := False;
  chkCust04Type09Click(chkCust04Type09);

  chkCust04Type04.Checked := False;
  chkCust04Type04Click(chkCust04Type04);
  chkCust04Type05.Checked := False;
  chkCust04Type05Click(chkCust04Type05);

	cbCustLastNumber4.ItemIndex := 0;
	edCust04Type01.Text := '';
  edCust04Type02.Text := '';
  edCust04Type03.Text := '';
  edCust04Type04.Text := '';
  chkCust04Type08.Checked := False;

  cbArea03.Properties.Items.Clear;
  cbArea03.Properties.Items.Assign(slstLocalMapOrder);
  cbArea03.Properties.Items.Insert(0, '전체');
  cbArea03.ItemIndex := 0;

  CustView4.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to CustView4.ColumnCount - 1 do
		CustView4.Columns[i].DataBinding.ValueType := 'String';
  CustView4.Columns[18].DataBinding.valuetype := 'Currency';
//4//

//5//
	for i := 0 to cxGridDBTableView1.ColumnCount - 1 do
	begin
    cxGridDBTableView1.Columns[i].DataBinding.ValueType := 'String';
	end;
	cxGridDBTableView1.Columns[0].DataBinding.ValueType := 'Integer';
	cxGridDBTableView1.Columns[4].DataBinding.ValueType := 'Integer';

	cxGridDBTableView1.DataController.SetRecordCount(0);

	for i := 0 to cxVirtureList.ColumnCount - 1 do
  begin
    cxVirtureList.Columns[i].DataBinding.ValueType := 'String';
  end;
	cxVirtureList.DataController.SetRecordCount(0);
//5//

//6//
	cbGubun6_1.ItemIndex := 0;
	cbLevel06.ItemIndex := 0;
	chkCust06Type02.Checked := False;
	lbCount06.Caption := '총 00명';
	rbCust06Type01.Checked := True;
	rbCust06Type01Click(rbCust06Type01);
	chkCust06Type03.Checked := False;

	cxDate6_1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 30;

	CustView6.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to CustView6.ColumnCount - 1 do
		CustView6.Columns[i].DataBinding.ValueType := 'String';
	CustView6.Columns[16].DataBinding.valuetype := 'Currency';
//6//

//7//
  cxPageControl2.ActivePageIndex := 0;
//7//

//8//
	cxRadioButton10.Checked := True;
  cxRadioButton10Click(cxRadioButton10);
  rbPEventN.Checked := True;

  cxRadioButton13.Checked := True;
  cxRadioButton13Click(cxRadioButton13);
  rbUEventN.Checked := True;

	cxRadioButton16.Checked := True;
	cxRadioButton16Click(cxRadioButton16);
  rbBEventN.Checked := True;

  cxRadioButton19.Checked := True;
	cxRadioButton19Click(cxRadioButton19);
	pnl_CUTA8.Enabled := False;
//8//

//9//
	cxDate9_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDate9_1E.Date := cxDate9_1S.Date + 1;

	cxDate9_2S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDate9_2E.Date := cxDate9_2S.Date + 1;

	chkCust09Type02.Checked := True;
	chkCust09Type02Click(chkCust09Type02);
	edEvent01.Value := 0;
	edMileage01.Value := 0;
	cbGubun9_1.ItemIndex := 0;
	edCustName09.Text := '';
	edSupplyEnd01.Value := 0;
	lbCount09.Caption := '총 00명';
	chkCust09Type01.Checked := False;

	CustView9.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to CustView9.ColumnCount - 1 do
		CustView9.Columns[i].DataBinding.ValueType := 'String';
	CustView9.Columns[8].DataBinding.ValueType := 'Currency';
	CustView9.Columns[9].DataBinding.ValueType := 'Currency';
	CustView9.Columns[10].DataBinding.ValueType := 'Integer';
	CustView9.Columns[18].DataBinding.ValueType := 'Currency';
	CustView9.Columns[19].DataBinding.ValueType := 'Integer';
	CustView9.Columns[20].DataBinding.ValueType := 'Integer';
//9//

//10//
	cxDate10_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDate10_1E.Date := cxDate10_1S.Date + 1;

	chkCust10Type02.Checked := True;
	chkCust10Type02Click(chkCust10Type02);
	cbGubun10_1.ItemIndex := 0;
	edCustName03.Text := '';
  edCustTel03.Text := '';
	lbCount10.Caption := '총 00명';
	cxedCuSEQ.Text := '';

	CustView10.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to CustView10.ColumnCount - 1 do
		CustView10.Columns[i].DataBinding.ValueType := 'String';
  CustView10.Columns[10].DataBinding.ValueType := 'Currency';
	CustView10.Columns[11].DataBinding.ValueType := 'Currency';
//10//

//11//
	dtOKCStDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	dtOKCEdDate.Date := dtOKCStDate.Date + 1;

	for I := 0 to cxViewOKC.ColumnCount - 1 do
	begin
		case I of
		6, 9, 10:
			begin
				cxViewOKC.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
			end;
		else
			cxViewOKC.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
		end;
	end;
//11//

//12//
	cxDate12_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDate12_1E.Date := cxDate12_1S.Date + 1;

	for I := 0 to cxViewRCMD.ColumnCount - 1 do
	begin
		case I of
		0, 4:
			begin
				cxViewRCMD.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
			end;
		else
			cxViewRCMD.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
		end;
	end;

	for I := 0 to cxViewRCMD_D.ColumnCount - 1 do
	begin
		case I of
		0, 3, 4:
			begin
				cxViewRCMD_D.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
			end;
		else
			cxViewRCMD_D.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
		end;
	end;
//12//
end;

procedure TFrm_CUT.proc_init_mileage;
begin
	cxRadioButton10.Checked := True;
  cxRadioButton10Click(cxRadioButton10);
  rbPEventN.Checked := True;

  cxRadioButton13.Checked := True;
  cxRadioButton13Click(cxRadioButton13);
  rbUEventN.Checked := True;

  cxRadioButton16.Checked := True;
  cxRadioButton16Click(cxRadioButton16);
  rbBEventN.Checked := True;

  cxRadioButton19.Checked := True;
  cxRadioButton19Click(cxRadioButton19);
  pnl_CUTA8.Enabled := False;
end;

procedure TFrm_CUT.proc_MileageAcc;
var
  ls_TxLoad, sNode, sWhere, sTemp, sTel1, sTel2, sCbcode, strTemp: string;
  ls_rxxml: WideString;
	lst_Node: IXMLDOMNodeList;
	lst_clon: IXMLDOMNode;
	slReceive: TStringList;

	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i, j, iIdx : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sHdNo, sBrNo, sEndDate : string ;
begin
	dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    Exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSE);
    Exit;
  end;

  if CustView9.DataController.RecordCount > 0 then
    Exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('마일리지현황') then Exit;
	Try
		//////////////////////////////////////////////////////////////////////////////
		// 고객>마일리지현황]20000건/콜센터(통합)/대표번호:전체/등록기간:20100101~20100131/마일리지11이상/지급완료24이상
		FExcelDownMile := Format('%s/대표번호:%s%s%s%s',
			[
					GetSelBrInfo
				, cbKeynumber09.Text
				, IfThen(chkCust09Type02.Checked, Format('/등록기간:%s~%s', [cxDate10_1S.Text, cxDate10_1E.Text]), '')
        , IfThen(StrToIntDef(edMileage01.Text, -1) = -1, '', Format('/마일리지%s이상', [edMileage01.Text]))
        , IfThen(StrToIntDef(edSupplyEnd01.Text, -1) = -1, '', Format('/지급완료%s이상', [edSupplyEnd01.Text]))
      ]);
    //////////////////////////////////////////////////////////////////////////////

		Param := '';

		if (chkCust09Type02.checked) or ((Not chkCust09Type02.checked) and (Not chkCust09Type03.checked)) then Param := '0'
		else if chkCust09Type03.checked then	Param := '1';

		if (GT_SEL_BRNO.GUBUN <> '1') then
		begin
			if (GT_USERIF.LV = '60') then
			begin
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					sHdNo := GT_SEL_BRNO.HDNO
				else
					sHdNo := GT_USERIF.HD;
			end else
			begin
				sHdNo := GT_USERIF.HD;
				sBrNo := GT_USERIF.BR;
			end
		end else
		begin
			sHdNo := GT_USERIF.HD;
			sBrNo := GT_SEL_BRNO.BrNo;
		end;
		Param := Param + '│' + sHdNo + '│' + sBrNo;                 //본사, 지사코드

		if chkCust09Type02.Checked then
		begin
			if cxDate9_1S.Enabled then
			begin
				if (cxDate9_1S.Text <> '') and (cxDate9_1E.Text <> '') then
				begin
					Param := Param + '│' + formatdatetime('yyyymmdd', cxDate9_1S.Date);
					Param := Param + '│' + formatdatetime('yyyymmdd', cxDate9_1E.Date);
				end else
				if (cxDate9_1S.Text <> '') and (cxDate9_1E.Text = '') then
				begin
					Param := Param + '│' + formatdatetime('yyyymmdd', cxDate9_1S.Date);
					Param := Param + '│' + '';
				end else
				if (cxDate9_1S.Text = '') and (cxDate9_1E.Text <> '') then
				begin
					Param := Param + '│' + '';
					Param := Param + '│' + formatdatetime('yyyymmdd', cxDate9_1E.Date);
				end;
			end else
			begin
				Param := Param + '│' + '';
				Param := Param + '│' + '';
			end;
		end else
		if chkCust09Type03.Checked then
		begin
			Param := Param + '│' + formatdatetime('yyyymmdd', cxDate9_2S.Date);
			Param := Param + '│' + formatdatetime('yyyymmdd', cxDate9_2E.Date);
		end else
		begin
			Param := Param + '│' + '';
			Param := Param + '│' + '';
		end;

		if (cbKeynumber09.Text = '전체') Or (cbKeynumber09.ItemIndex = 0) then
			Param := Param + '│'
		else
			Param := Param + '│' + StringReplace(cbKeynumber09.Text, '-', '', [rfReplaceAll]);

		case cbGubun9_1.ItemIndex of
			0: Param := Param + '│' + '';
			1: Param := Param + '│' + '0';
			2: Param := Param + '│' + '1';
			3: Param := Param + '│' + '3';
		end;
		Param := Param + '│' + Param_Filtering(edCustName09.Text);   //고객명

		strTemp := RemoveComma(edMileage01.Text);
		Param := Param + '│' + strTemp;   //마일리지

		strTemp := RemoveComma(edSupplyEnd01.Text);
		Param := Param + '│' + strTemp;   //지급완료

		strTemp := RemoveComma(edCouponM01.Text);
		Param := Param + '│' + strTemp;   //쿠폰마일

		strTemp := RemoveComma(edEvent01.Text);
		Param := Param + '│' + strTemp;   //이벤트횟수

		strTemp := RemoveComma(edMileageLost01.Text);
		Param := Param + '│' + strTemp;   //소멸예정마일리지
		
		slList := TStringList.Create;
		Screen.Cursor := crHourGlass;
		Try
			if not RequestBasePaging(GetSel06('GET_LIST_CUST_MILEAGE', 'CUSTOMER.GET_LIST_CUST_MILEAGE', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				Frm_Flash.hide;
				Application.ProcessMessages;
				GMessagebox(Format('마일리지(고객별) 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Frm_Main.Enabled := True;
				Screen.Cursor := crDefault;
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				CustView9.DataController.SetRecordCount(0);
				CustView9.BeginUpdate;
				for j := 0 to slList.Count - 1 do
				begin
					Frm_Flash.cxPBar1.Position := j + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
					Application.ProcessMessages;
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);

					ls_MSG_Err := GetXmlErrorCode(XmlData);
					if ('0000' = ls_MSG_Err) then
					begin
						if (0 < GetXmlRecordCount(XmlData)) then
						begin
							lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

							ls_Rcrd := TStringList.Create;
							try
								for i := 0 to lst_Result.length - 1 do
								begin
									GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

									iRow := CustView9.DataController.AppendRecord;
									
									CustView9.DataController.Values[iRow, 0] := iRow + 1;
									CustView9.DataController.Values[iRow, 1] := ls_rcrd[0];
									CustView9.DataController.Values[iRow, 2] := ls_rcrd[1];
									iIdx := scb_BranchCode.IndexOf(ls_rcrd[1]);
									if iIdx >= 0 then
										CustView9.DataController.Values[iRow, 3] := scb_BranchName[iIdx]
									else
										CustView9.DataController.Values[iRow, 3] := '';
									CustView9.DataController.Values[iRow, 4] := strtocall(ls_rcrd[2]);
									case StrToIntDef(ls_rcrd[3], 0) of
										0: CustView9.DataController.Values[iRow, 5] := '일반';
										1: CustView9.DataController.Values[iRow, 5] := '업소';
										3: CustView9.DataController.Values[iRow, 5] := '법인';
										4: CustView9.DataController.Values[iRow, 5] := '주말골프';
									end;
									CustView9.DataController.Values[iRow, 6] := ls_rcrd[4];
									CustView9.DataController.Values[iRow, 7] := strtocall(ls_rcrd[5]);
									if StrToIntDef(ls_Rcrd[6], 0) = 0 then
										ls_Rcrd[6] := '0';
									if StrToIntDef(ls_Rcrd[7], 0) = 0 then
										ls_Rcrd[7] := '0';
									if StrToIntDef(ls_Rcrd[8], 0) = 0 then
										ls_Rcrd[8] := '0';

									CustView9.DataController.Values[iRow, 8] := ls_rcrd[6];
									CustView9.DataController.Values[iRow, 9] := ls_rcrd[7];
									CustView9.DataController.Values[iRow, 10] := ls_rcrd[8];
									if ls_rcrd[9] = 'y' then
										CustView9.DataController.Values[iRow, 11] := '인증'
									else
										CustView9.DataController.Values[iRow, 11] := '미인증';

									CustView9.DataController.Values[iRow, 12] := ls_rcrd[10];
									sEndDate := ls_rcrd[11];
									if Trim(sEndDate) <> '' then
										CustView9.DataController.Values[iRow, 13] := copy(sEndDate, 1, 4) + '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
									else
										CustView9.DataController.Values[iRow, 13] := '';

									sEndDate := ls_rcrd[12];
									if Trim(sEndDate) <> '' then
										CustView9.DataController.Values[iRow, 14] := copy(sEndDate, 1, 4) + '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
									else
										CustView9.DataController.Values[iRow, 14] := '';

									CustView9.DataController.Values[iRow, 15] := ls_rcrd[13];
									CustView9.DataController.Values[iRow, 16] := ls_rcrd[14];
									CustView9.DataController.Values[iRow, 17] := ls_rcrd[15];
									if StrToIntDef(ls_Rcrd[16], 0) = 0 then
										ls_Rcrd[16] := '0';
									CustView9.DataController.Values[iRow, 18] := ls_rcrd[16];
									CustView9.DataController.Values[iRow, 19] := ls_rcrd[17];
									if ls_rcrd.Count > 18 then
										CustView9.DataController.Values[iRow, 20] := StrToFloatDef(ls_rcrd[18], 0);
									if ls_Rcrd[19] = '' then
										CustView9.DataController.Values[iRow, 21] := '0'    //소멸예정마일리지
									else
										CustView9.DataController.Values[iRow, 21] := formatfloat('#,##0', StrToFloatDef(ls_Rcrd[19], 0));    //소멸예정마일리지
									CustView9.DataController.Values[iRow, 22] := GetStrToDateTimeGStr(ls_Rcrd[20], 4);    //소멸예정일
									if ls_rcrd[21] = 'y' then CustView9.DataController.Values[iRow, 23] := '수신'
																			 else CustView9.DataController.Values[iRow, 23] := '거부';
									if ls_rcrd.Count > 22 then
									begin

										CustView9.DataController.Values[iRow, 24] := StrToFloatDef(ls_rcrd[22], 0);   //적립합계
										CustView9.DataController.Values[iRow, 25] := StrToFloatDef(ls_rcrd[23], 0);   //지급합계
									end;
								end;
							finally
								ls_Rcrd.Free;
							end;
						end	else
						begin
							GMessagebox('검색된 내용이 없습니다.', CDMSE);
						end;

						lbCount09.Caption := '총 ' + IntToStr(CustView9.DataController.RecordCount) + '명';
						frm_Main.sbar_Message.Panels[4].Text := '';

						Screen.Cursor := crDefault;
					end
					else
					begin
						Frm_Flash.hide;
						Application.ProcessMessages;
						GMessagebox('검색된 내용이 없습니다', CDMSE);
					end;
				end;
			finally
				CustView9.EndUpdate;
				xdom := Nil;
			end;
    Finally
			frm_Main.proc_SocketWork(True);
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
		End;
	except
		Frm_Flash.hide;
		Frm_Main.Enabled := True;
		Screen.Cursor := crDefault;
	End;
end;

procedure TFrm_CUT.proc_MileageDetail;
var
  slList, StrList : TStringList;
  XmlData, Param, ErrMsg : string;
  ls_TxLoad, sNode, sWhere, sTel1, sTel2, sCbcode, sEndDate: string;
  i, j, iCnt, iRow, iIdx : Integer;
  ErrCode: integer;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
	ArrSt: array of string;
begin
	dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    Exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSE);
    Exit;
  end;  

//	if CustView10.DataController.RecordCount > 0 then Exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('마일리지상세') then Exit;

	//////////////////////////////////////////////////////////////////////////////
	// 고객>마일리지상세]2000건/콜센터(통합)/전체/기간:XXXX~XXXX
	FExcelDownMileDetail := Format('%s/종류:%s%s',
		[
				GetSelBrInfo
			, IfThen(rbCust10Type01.Checked, '전체', IfThen(rbCust10Type02.Checked, '적립', '지급'))
			, IfThen(chkCust10Type02.Checked, Format('/기간:%s~%s', [cxDate10_1S.Text, cxDate10_1E.Text]), '')
		]);
	//////////////////////////////////////////////////////////////////////////////

	param := cxedCuSEQ.Text;
	Param := Param + '│' + cxBrNo10.Text;
	if chkCust10Type02.Checked then Param := Param + '│' + '1'
														 else Param := Param + '│' + '0';
	Param := Param + '│' + FormatDateTime('yyyymmdd090000', cxDate10_1S.Date);
	Param := Param + '│' + FormatDateTime('yyyymmdd090000', cxDate10_1E.Date);

	Param := Param + '│' + IntToStr(0);

	if (cbKeynumber06.Text = '전체') Or (cbKeynumber06.ItemIndex = 0) then
		Param := Param + '│'
	else
		Param := Param + '│' + StringReplace(cbKeynumber06.Text, '-', '', [rfReplaceAll]);

	case cbGubun10_1.ItemIndex of
    1: Param := Param + '│0';
    2: Param := Param + '│1';
    3: Param := Param + '│3';
    else Param := Param + '│';
  end;
	Param := Param + '│' + Param_Filtering(edCustName03.Text);

	sTel1 := Param_Filtering(edCustTel03.Text);
	sTel1 := StringReplace(sTel1, '-', '', [rfReplaceAll]);
	sTel1 := StringReplace(sTel1, ' ', '', [rfReplaceAll]);
	Param := Param + '│' + sTel1;

	if rbCust10Type01.Checked then Param := Param + '│' + '0' else
	if rbCust10Type02.Checked then Param := Param + '│' + '1' else
	if rbCust10Type03.Checked then Param := Param + '│' + '2';

	Param := Param + '│' + cxHdNo9.Text;
	Param := Param + '│' + IntToStr(cxCbMileGubun.ItemIndex);

	slList := TStringList.Create;
	cxPageControl1.Enabled := False;
	Screen.Cursor := crHourGlass;
	try
		if not RequestBasePaging(GetSel05('LIST_MILEAGE_SEARCH', 'MNG_CUST.LIST_MILEAGE_SEARCH', '1000', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('마일리지 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			cxPageControl1.Enabled := True;
			Screen.Cursor := crDefault;
  		Exit;
		end;

    iCnt := 1;
    Frm_Flash.cxPBar1.Properties.Max := slList.Count;
    Frm_Flash.cxPBar1.Position := 0;
    for j := 0 to slList.Count - 1 do
    begin
      Frm_Flash.cxPBar1.Position := j + 1;
      Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
      Application.ProcessMessages;
      xmlData := slList.Strings[j];

      if Pos('<Data Count="',xmlData)>0 then
      begin
        tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
        if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
        tmpCnt:=StrToIntDef(tmpCntStr,0);
      end;

      if tmpCnt < 1 then
      begin
				GMessagebox('검색된 내용이 없습니다.', CDMSE);
        Exit;
      end;

  		CustView10.BeginUpdate;
			StrList := TStringList.Create;
      try
        SetLength(ArrSt,tmpCnt);
        tmpStr:=xmlData;
        tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

        if Pos('<Result Value=',XmlData)>0 then
          tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

        for k:=0 to tmpCnt-1 do
        begin
          ArrSt[k]:=tmpStr;
          if Pos('/>',tmpStr)>0 then
          begin
            ArrSt[k]:=Copy(tmpStr,1,Pos('/>',tmpStr)-1);
            if Pos('<Result Value=',ArrSt[k]) > 0 then
              ArrSt[k] := Copy(ArrSt[k],Pos('<Result Value=',ArrSt[k])+14,Length(ArrSt[k])-Pos('<Result Value=',ArrSt[k])+14+1);
            if Pos('/>',ArrSt[k]) > 0 then
              ArrSt[k] := Copy(ArrSt[k],1,Pos('/>',ArrSt[k])-1);
            ArrSt[k]:=StringReplace(ArrSt[k],'"','',[rfReplaceAll]);

            tmpStr:=Copy(tmpStr,Pos('/>',tmpStr)+2,Length(tmpStr)-Pos('/>',tmpStr)+2+1);
            StrList.Clear;
            GetTextSeperationEx('│', ArrSt[k], StrList);

  					iRow := CustView10.DataController.AppendRecord;
  					CustView10.DataController.Values[iRow, 0] := iRow + 1;
  					CustView10.DataController.Values[iRow, 1] := StrList.Strings[0];
  					CustView10.DataController.Values[iRow, 2] := StrList.Strings[1];
            iIdx := scb_BranchCode.IndexOf(StrList.Strings[1]);
            if iIdx >= 0 then
  						CustView10.DataController.Values[iRow, 3] := scb_BranchName[iIdx]
  					else
  						CustView10.DataController.Values[iRow, 3] := '';
  					CustView10.DataController.Values[iRow, 4] := strtocall(StrList.Strings[2]);
            case StrToIntDef(StrList.Strings[3], 0) of
  						0: CustView10.DataController.Values[iRow, 5] := '일반';
              1: CustView10.DataController.Values[iRow, 5] := '업소';
              3: CustView10.DataController.Values[iRow, 5] := '법인';
              4: CustView10.DataController.Values[iRow, 5] := '주말골프';
            end;
            CustView10.DataController.Values[iRow, 6] := StrList.Strings[4];
            CustView10.DataController.Values[iRow, 7] := strtocall(StrList.Strings[5]);

            if StrList.Strings[6] = 'y' then
              CustView10.DataController.Values[iRow, 8] := '인증'
            else
              CustView10.DataController.Values[iRow, 8] := '미인증';

            sEndDate := StrList.Strings[7];
            if Trim(sEndDate) <> '' then
              CustView10.DataController.Values[iRow, 9] := copy(sEndDate, 1, 4) +
                '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
  					else
              CustView10.DataController.Values[iRow, 9] := '';

            if StrToIntDef(StrList.Strings[8], 0) = 0 then
              StrList.Strings[8] := '0';
            if StrToIntDef(StrList.Strings[9], 0) = 0 then
              StrList.Strings[9] := '0';

  					CustView10.DataController.Values[iRow, 10] := StrList.Strings[8];
            CustView10.DataController.Values[iRow, 11] := StrList.Strings[9];
  					CustView10.DataController.Values[iRow, 12] := StrList.Strings[10];
  					CustView10.DataController.Values[iRow, 13] := StrList.Strings[11];
  					CustView10.DataController.Values[iRow, 14] := StrList.Strings[12];
  					CustView10.DataController.Values[iRow, 15] := StrList.Strings[13];
            if StrList.Count > 14 then
              CustView10.DataController.Values[iRow, 16] := StrList.Strings[14];
          end;
        end;
      finally
    		CustView10.EndUpdate;
        StrList.Free;
      end;
    end;
		lbCount10.Caption := '총 ' + IntToStr(CustView10.DataController.RecordCount) + '명';
    frm_Main.sbar_Message.Panels[4].Text := '';
  finally
    slList.Free;
		Screen.Cursor := crDefault;
		cxPageControl1.Enabled := True;
		Frm_Flash.Hide;
	end;
end;

procedure TFrm_CUT.proc_MileageSet;
var
  msg, sBrNo, sBrName, Param : string;

  XmlData, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode : Integer;
begin
	try
		sBrNo := cxBrNo8.Text;

    if sBrNo = '' then
    begin
			GMessagebox('마일리지 설정은 지사를 선택하셔야 합니다.', CDMSE);
			proc_init_mileage;
      Exit;
    end;

    if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
    begin
      msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
      sBrName := GetBrName(sBrNo);
      GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSE);
      proc_init_mileage;
      Exit;
    end;

    if fGetChk_Search_HdBrNo('마일리지설정') then Exit;

		Pnl_CUTA8.Enabled := True;

    Param := sBrNo;
    if not RequestBase(GetSel05('GET_BRANCH_MLG', 'MNG_CUST.GET_BRANCH_MLG', '100', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('마일리지 설정 조회  중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
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
          for I := 0 to lst_Result.length - 1 do
          begin
            GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

            if ls_Rcrd[0] = '0' then cxRadioButton10.Checked := True else
            if ls_Rcrd[0] = '1' then cxRadioButton11.Checked := True else
            if ls_Rcrd[0] = '2' then cxRadioButton12.Checked := True;

            cxTextEdit1.Value := StrToIntDef(ls_Rcrd[1], 0);
            cxTextEdit2.Value := StrToIntDef(ls_Rcrd[2], 0);
            cxTextEdit3.Text := ls_Rcrd[3];
            if ls_Rcrd[4] = '0' then cxRadioButton13.Checked := True else
	  				if ls_Rcrd[4] = '1' then cxRadioButton14.Checked := True else
	  				if ls_Rcrd[4] = '2' then cxRadioButton15.Checked := True;
		  			cxTextEdit4.Value := StrToIntDef(ls_Rcrd[5], 0);
            cxTextEdit5.Value := StrToIntDef(ls_Rcrd[6], 0);
            cxTextEdit6.Text := ls_Rcrd[7];
		  			if ls_Rcrd[8] = '0' then cxRadioButton16.Checked := True else
            if ls_Rcrd[8] = '1' then cxRadioButton17.Checked := True else
            if ls_Rcrd[8] = '2' then cxRadioButton18.Checked := True;
            cxTextEdit7.Value := StrToIntDef(ls_Rcrd[9], 0);
            cxTextEdit8.Value := StrToIntDef(ls_Rcrd[10], 0);
            cxTextEdit9.Text := ls_Rcrd[11];
						if ls_Rcrd[12] = '0' then cxRadioButton19.Checked := True else
            if ls_Rcrd[12] = '1' then cxRadioButton20.Checked := True else
            if ls_Rcrd[12] = '2' then	cxRadioButton21.Checked := True;
		  			cxTextEdit10.Value := StrToIntDef(ls_Rcrd[13], 0);
		  			cxTextEdit11.Value := StrToIntDef(ls_Rcrd[14], 0);
		  			cxTextEdit12.Text := ls_Rcrd[15];
		  			if ls_Rcrd[16] = 'y' then chkCDNoMile.Checked := False     //후불(카드)고객 마일리지 적립안함
                      		       else chkCDNoMile.Checked := True;
		  			if ls_Rcrd[17] = 'y' then chkLTNoMile.Checked := False     //후불고객 마일리지 적립안함
		  			                     else chkLTNoMile.Checked := True;
		  			if ls_Rcrd[18] = 'y' then chkReceipNoMile.Checked := False     //현금영수증고객 마일리지 적립안함
																 else chkReceipNoMile.Checked := True;

		  			if ls_Rcrd[19] = 'y' then cxCheckBox5.Checked := True
                                 else cxCheckBox5.Checked := False;
		  			cxCurrencyEdit1.Text := ls_Rcrd[20];

		  			if ls_Rcrd[21] = 'y' then cxCheckBox6.Checked := True
                                 else cxCheckBox6.Checked := False;
		  			cxCurrencyEdit2.Text := ls_Rcrd[22];

		  			if ls_Rcrd[23] = 'y' then cxCheckBox7.Checked := True
                                 else cxCheckBox7.Checked := False;
						cxCurrencyEdit3.Text := ls_Rcrd[24];

		  			if ls_Rcrd[25] = 'y' then cxCheckBox8.Checked := True
                                 else cxCheckBox8.Checked := False;
		  			cxCurrencyEdit4.Text := ls_Rcrd[26];

		  			CEMiOver1.Value := StrToIntDef(ls_Rcrd[27], 0);
		  			CEMiOver2.Value := StrToIntDef(ls_Rcrd[28], 0);
		  			CEMiOver3.Value := StrToIntDef(ls_Rcrd[29], 0);
		  			CEMiOver4.Value := StrToIntDef(ls_Rcrd[30], 0);

						if ls_Rcrd.Count > 31 then
            begin
							if ls_Rcrd[31] = 'y' then rbPEventY.Checked := True
                                   else rbPEventY.Checked := False;
							if ls_Rcrd[32] = 'y' then rbUEventY.Checked := True
																	 else rbUEventY.Checked := False;
							if ls_Rcrd[33] = 'y' then rbBEventY.Checked := True
                                   else rbBEventY.Checked := False;
							//   ls_Rcrd[34] = 'y'   불량고객 사용 않함
						end;

						if ls_Rcrd.Count > 35 then   // 35 : 금액, 36 : 고객구분yyy, 37 : 없음/정액/정률-0/1/2
						begin
							//////////////////////후불(마일)  + 후불(카드) 마일리지 별도적립 사용 20161129 KHS
							if StrToFloatDef(ls_Rcrd[35], 0) = 0 then
							begin
								cxCheckBox3.Checked := False;
								rb_Straight.Enabled := False;
								rb_Declining.Enabled := False;
								cxCurrencyEdit6.Enabled := False;
								cxLabel190.Enabled := False;
								
								cxCheckBox2.Enabled := False;
								cxCheckBox10.Enabled := False;
								cxCheckBox11.Enabled := False;

								cxCurrencyEdit6.value := StrToFloatDef(ls_Rcrd[35], 0);

								cxCheckBox2.checked := False;
								cxCheckBox10.checked := False;
								cxCheckBox11.checked := False;
							end else
							if ls_Rcrd[37] = '1' then //정액
							begin
								cxCheckBox3.Checked := True;
								rb_Straight.Enabled := True;
								rb_Declining.Enabled := True;

								rb_Straight.checked := True;
								cxCurrencyEdit6.Enabled := True;
								cxLabel190.Enabled := True;
								
								cxCheckBox2.Enabled := True;
								cxCheckBox10.Enabled := True;
								cxCheckBox11.Enabled := True;

								cxCurrencyEdit6.value := StrToFloatDef(ls_Rcrd[35], 0);
								cxLabel190.Caption := '원';
								if copy(ls_Rcrd[36],1,1) = 'y' then cxCheckBox2.checked := True else cxCheckBox2.checked := False;
								if copy(ls_Rcrd[36],2,1) = 'y' then cxCheckBox2.checked := True else cxCheckBox10.checked := False;
								if copy(ls_Rcrd[36],3,1) = 'y' then cxCheckBox2.checked := True else cxCheckBox11.checked := False;
							end else
							if ls_Rcrd[37] = '2' then //정률
							begin
								cxCheckBox3.Checked := True;
								rb_Straight.Enabled := True;
								rb_Declining.Enabled := True;

								rb_Declining.checked := True;
								cxCurrencyEdit6.Enabled := True;
								cxLabel190.Enabled := True;
								
								cxCheckBox2.Enabled := True;
								cxCheckBox10.Enabled := True;
								cxCheckBox11.Enabled := True;

								cxCurrencyEdit6.value := StrToFloatDef(ls_Rcrd[35], 0);
								cxLabel190.Caption := '%';
								if copy(ls_Rcrd[36],1,1) = 'y' then cxCheckBox2.checked := True else cxCheckBox2.checked := False;
								if copy(ls_Rcrd[36],2,1) = 'y' then cxCheckBox2.checked := True else cxCheckBox10.checked := False;
								if copy(ls_Rcrd[36],3,1) = 'y' then cxCheckBox2.checked := True else cxCheckBox11.checked := False;
							end else
							begin
								cxCheckBox3.Checked := False;
								rb_Straight.Enabled := False;
								rb_Declining.Enabled := False;
								cxCurrencyEdit6.Enabled := False;
								cxLabel190.Enabled := False;
								
								cxCheckBox2.Enabled := False;
								cxCheckBox10.Enabled := False;
								cxCheckBox11.Enabled := False;

								cxCurrencyEdit6.value := StrToFloatDef(ls_Rcrd[35], 0);

								cxCheckBox2.checked := False;
								cxCheckBox10.checked := False;
								cxCheckBox11.checked := False;
							end;
						end;

						// 38 : 마일리지 소멸기간
						if ls_Rcrd.Count > 38 then
            begin
							if ls_Rcrd[38] <> '' then
								lbMileLostMonth.Caption := ls_Rcrd[38] + '개월'
              else
								lbMileLostMonth.Caption := '- 개월'
            end;
						if ls_Rcrd[39] = 'y' then chkMileSaveCash.checked := True else chkMileSaveCash.checked := False; //"후불(마일)" 결제 시 현금액 마일리지 적립
						if ls_Rcrd[40] = 'y' then chkMileSaveMile.checked := True else chkMileSaveMile.checked := False; //"후불(마일)" 결제 시 마일리지액 마일리지 적립
					end;
        finally
					ls_Rcrd.Free;
          Screen.Cursor := crDefault;
					Frm_Flash.Hide;
        end;
      end;
    finally
      xdom := Nil;
		end;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT.proc_New_his(iType: Integer);
begin
  chk_Before.Checked := False;
  chk_Before_New.Checked := False;
  chk_Before_Finish.Checked := False;
	cbGubun2_1.ItemIndex := 0;
  case iType of
    2:
      begin
        cb_st_city.Enabled := True;
        cb_st_ward.Enabled := True;
//        cb_S_Cnt1.Enabled := False;
//        cb_S_Cnt2.Enabled := False;
        cb_S_CCnt1.Enabled := False;
        cb_S_CCnt2.Enabled := False;
        cb_S_Grad.Enabled := False;
				GroupBox4.Enabled := True;
				rrb_st_all.Checked := True;

				rrb_st_all.Enabled := True;
				rrb_st_comp.Enabled := True;
				rrb_st_cancel.Enabled := True;
				rrb_st_req.Enabled := True;
			end;
		0, 1:
      begin
        cb_st_city.Enabled := False;
        cb_st_ward.Enabled := False;
        cbKeynumber02.ItemIndex := 0;
        cbGubun2_1.ItemIndex := 0;
        cb_Sms_Gubun.ItemIndex := 0;
        cb_S_Grad.ItemIndex := 0;
        cb_Sms_Gubun.Enabled := True;
        cb_S_Cnt1.Enabled := True;
        cb_S_Cnt2.Enabled := True;
        cb_S_CCnt1.Enabled := True;
        cb_S_CCnt2.Enabled := True;
        cb_S_Grad.Enabled := True;
        GroupBox4.Enabled := False;
        rrb_st_all.Checked := True;
        rrb_st_comp.Checked := False;
        rrb_st_cancel.Checked := False;
        rrb_st_req.Checked := False;
				rrb_st_all.Enabled := False;
				rrb_st_comp.Enabled := False;
				rrb_st_cancel.Enabled := False;
				rrb_st_req.Enabled := False;
			end;
  end;
end;


procedure TFrm_CUT.proc_NotSMS(Br_no: string);
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  sWhere: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  sg_notsms_list.DataController.SetRecordCount(0);
  sg_notsms_list.DataController.AppendRecord;
  swhere := '';
  if Br_no <> '' then
  begin
    sg_notsms_list.DataController.Values[0, 0] := Br_no;
		sWhere := 'AND B.HD_NO = ''' + cxHdNo1.Text + ''' AND B.BR_NO = ''' + Br_no + ''' ';
  end else
  begin
		sg_notsms_list.DataController.Values[0, 0] := cxHdNo1.Text;
		sWhere := 'AND B.HD_NO = ''' + cxHdNo1.Text + ''' ';
  end;

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_BRANCH_SMS, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'NOSM0002', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '20000', [rfReplaceAll]);

  Screen.Cursor := crHourGlass;
  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
    begin
      Application.ProcessMessages;
      func_recieve(slReceive);
    end;
  finally
    frm_Main.proc_SocketWork(True);
    FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUT.proc_OKCashBack;
var
  ls_TxLoad, sNode, sWhere, sBrNo, sBrName, msg: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
	sBrNo := cxBrNo11.Text;

  if sBrNo = '' then
  begin
    GMessagebox('OK 캐쉬백 현황 조회는 지사를 선택하셔야 합니다.', CDMSE);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    Exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSE);
    Exit;
  end;

  if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    sBrName := GetBrName(sBrNo);
    GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSE);
    Exit;
  end;

  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    sWhere := '';

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := self.Caption + '80';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'OKCBLOG01';
    lst_Node.item[0].attributes.getNamedItem('Backward').Text := sWhere;

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
		lst_Node.item[0].attributes.getNamedItem('Value').Text := cxBrNo11.Text;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := RemoveDatetimeSeparator(dtOKCStDate.Text) + '090000';
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    lst_Node.item[2].attributes.getNamedItem('Value').Text := RemoveDatetimeSeparator(dtOKCEdDate.Text) + '085959';
    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

    Screen.Cursor := crHourGlass;
    slReceive := TStringList.Create;
    try
      frm_Main.proc_SocketWork(False);
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
      begin
				Application.ProcessMessages;
				proc_recieve(slReceive);
      end;
    finally
      frm_Main.proc_SocketWork(True);
      FreeAndNil(slReceive);
      Screen.Cursor := crDefault;
      Frm_Flash.Hide;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CUT.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
	ls_ClientKey, ClientKey, ls_Msg_Err, sMsg, sEndDate, sTmp, sBrNo, sPerMMCode, sTmep, sRate, sTel, sNoSms: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd, sList, slTmp : TStringList;
	icomCnt, iCanCnt, iTotal, iCanRate, i, j, k, iHp, iRegDate, iSNum, iTel, iRow, iIndate, iBrNo, iId, iIdx, iCnt : Integer;
	Node: TcxTreeListNode;
  bCheck: Boolean;
	ls_rxxml: WideString;
  ErrDesc: string;
	iCuTitle: array[0..37] of integer;
	sSmsYn1, sTel1, sSmsYn2, sTel2, sSmsYn3, sTel3 : string;
begin
	try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      ls_rxxml := slList[0];
      if not xdom.loadXML(ls_rxxml) then
      begin
				Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        frm_Main.sbar_Message.Panels[4].Text := '';
				ls_ClientKey  := GetXmlClientKey(ls_rxxml);
        ClientKey     := ls_ClientKey;
				ls_ClientKey  := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);

						 if ClientKey = 'GetCustGroup' 				 then	ResponseCustLevel(ls_rxxml)
				else if ClientKey = 'GetGroupLevel'        then	ResponseCustGroup(ls_rxxml)
				else if ClientKey = 'GetLevelFromGroupSeq' then	ResponseLevelFromGroupSeq(ls_rxxml)
				else
					case StrToIntDef(ls_ClientKey, 1) of
					2:
						begin
							CustView1.BeginUpdate;

							Frm_Flash.cxPBar1.Properties.Max := slList.Count;
							Frm_Flash.cxPBar1.Position := 0;

							for j := 0 to slList.Count - 1 do
							begin
//-                  frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Frm_Flash.cxPBar1.Position := j + 1;
								Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Application.ProcessMessages;
								ls_rxxml := slList.Strings[j];

								if not xdom.loadXML(ls_rxxml) then
								begin
									Continue;
								end;

								ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
								if ('0000' <> ls_MSG_Err) then
								begin
									Continue;
                end;
								if (0 < GetXmlRecordCount(ls_rxxml)) then
								begin
									for i := 0 to lbCustCounselTitle.Items.Count - 1 do
										iCuTitle[i] := CustView1.GetColumnByFieldName(lbCustCounselTitle.Items.Strings[i]).Index;

									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									ls_Rcrd := TStringList.Create;
									slTmp := TStringList.Create;
									try
										for i := 0 to lst_Result.length - 1 do
										begin
											GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
											sTmp := ls_Rcrd[4];
											sSmsYn1 := ''; sTel1 := ''; sSmsYn2 := ''; sTel2 := ''; sSmsYn3 := ''; sTel3 := '';

											slTmp.Clear;
											slTmp.Delimiter     := ',';
											slTmp.DelimitedText := sTmp;

											if slTmp.Count = 1 then //연락처가 1개일경우 나머지는 빈값처리
											begin
												sSmsYn2 := ''; sTel2 := ''; sSmsYn3 := ''; sTel3 := '';
											end;

											for k := 0 to slTmp.Count -1 do
											begin
												if k = 0 then
												begin
													sTel1 := Copy(slTmp[k], 1, pos('/', slTmp[k]) - 1);
													sSmsYn1 := Copy(slTmp[k], Length(slTmp[k]), 1);
												end else
												if k = 1 then
												begin
													sTel2 := Copy(slTmp[k], 1, pos('/', slTmp[k]) - 1);
													sSmsYn2 := Copy(slTmp[k], Length(slTmp[k]), 1);
												end else
												if k = 2 then
												begin
													sTel3 := Copy(slTmp[k], 1, pos('/', slTmp[k]) - 1);
													sSmsYn3 := Copy(slTmp[k], Length(slTmp[k]), 1);
												end;
											end;
											//전화번호 및 SMS수신관련 옵션은 3개 생성후 처리 20181001 KHS
											if chkNmlPhoneOut01.Checked then
											begin
												if (not CheckHPType(sTel1, ErrDesc)) and (not CheckHPType(sTel2, ErrDesc)) and (not CheckHPType(sTel3, ErrDesc))then
												begin
													Continue; //3개 모두 False면
												end;
											end;

                      if sSmsYn1 = '' then sSmsYn1 := 'n';                      
											if cbSmsUse01.ItemIndex = 1 then
											begin
												if sSmsYn1 <> 'y' then Continue;
											end else
											if cbSmsUse01.ItemIndex = 2 then
											begin
												if sSmsYn1 <> 'n' then Continue;
											end;

										 //	if sTel1 <> '' then   //2,3은 설정값(변수)으로 그리드 추가
											begin
												ls_Rcrd[4] := sTel1;
												if sSmsYn1 = 'y' then ls_Rcrd.Insert(15, '수신')
																				 else ls_Rcrd.Insert(15, '거부');
											end;

											iRow := CustView1.DataController.AppendRecord;
											ls_Rcrd.Insert(0, IntToStr(iRow + 1));

											//----------------------------------------------------------------------------------------------
											//                  고객등급 생성(지사별 설정값 반영)
											//----------------------------------------------------------------------------------------------
											iTotal := StrToIntDef(ls_rcrd[8], 0);
											iComCnt := StrToIntDef(ls_rcrd[9], 0);
											iCanCnt := iTotal - icomCnt;
											if iTotal = 0 then
												 iCanRate := 0
											else
												 iCanRate := Round((iCanCnt / iTotal * 100));
											sRate := IntToStr(iCanRate) + '%';
											ls_Rcrd.Insert(10, sRate);
											//-----------------------------------------------------------------------------------------------

											CustView1.DataController.Values[iRow, iCuTitle[0]] := ls_Rcrd[0];
											CustView1.DataController.Values[iRow, iCuTitle[1]] := ls_Rcrd[1];
											CustView1.DataController.Values[iRow, iCuTitle[2]] := ls_Rcrd[2];
											CustView1.DataController.Values[iRow, iCuTitle[3]] := strtocall(ls_Rcrd[3]);
											CustView1.DataController.Values[iRow, iCuTitle[4]] := ls_Rcrd[4];
											CustView1.DataController.Values[iRow, iCuTitle[5]] := strtocall(ls_Rcrd[5]);//전화번호
											CustView1.DataController.Values[iRow, iCuTitle[6]] := strtocall(ls_Rcrd[22]); //virtureTel
											CustView1.DataController.Values[iRow, iCuTitle[7]] := ls_Rcrd[23];
											CustView1.DataController.Values[iRow, iCuTitle[8]] := ls_Rcrd[6];
											CustView1.DataController.Values[iRow, iCuTitle[9]] := ls_Rcrd[7];
											CustView1.DataController.Values[iRow, iCuTitle[10]] := ls_Rcrd[8];
											CustView1.DataController.Values[iRow, iCuTitle[11]] := ls_Rcrd[9];
											CustView1.DataController.Values[iRow, iCuTitle[12]] := ls_Rcrd[10];
											CustView1.DataController.Values[iRow, iCuTitle[13]] := ls_Rcrd[11];
											CustView1.DataController.Values[iRow, iCuTitle[14]] := func_buninSearch(ls_Rcrd[19], ls_Rcrd[3], ls_Rcrd[12]);
											CustView1.DataController.Values[iRow, iCuTitle[15]] := ls_Rcrd[13];
											CustView1.DataController.Values[iRow, iCuTitle[16]] := ls_Rcrd[14];
											CustView1.DataController.Values[iRow, iCuTitle[17]] := StringReplace(ls_Rcrd[15], '/', '', [rfReplaceAll]);
											CustView1.DataController.Values[iRow, iCuTitle[18]] := StringReplace(ls_Rcrd[16], '/', '', [rfReplaceAll]);
											CustView1.DataController.Values[iRow, iCuTitle[19]] := ls_Rcrd[17];
											CustView1.DataController.Values[iRow, iCuTitle[20]] := ls_Rcrd[18];
											CustView1.DataController.Values[iRow, iCuTitle[21]] := ls_Rcrd[19];
											CustView1.DataController.Values[iRow, iCuTitle[22]] := ls_Rcrd[20];
											sEndDate := ls_rcrd[21];
											if Trim(sEndDate) <> '' then
												CustView1.DataController.Values[iRow, iCuTitle[23]] := copy(sEndDate, 1, 4) +
													'-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
											else
												CustView1.DataController.Values[iRow, iCuTitle[23]] := '';

											sEndDate := ls_rcrd[24];
											if Trim(sEndDate) <> '' then
												CustView1.DataController.Values[iRow, iCuTitle[24]] := copy(sEndDate, 1, 4) +
													'-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
											else
												CustView1.DataController.Values[iRow, iCuTitle[24]] := '';

											sEndDate := ls_rcrd[25];
											if Trim(sEndDate) <> '' then
												CustView1.DataController.Values[iRow, iCuTitle[25]] := copy(sEndDate, 1, 4) +
													'-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
											else
												CustView1.DataController.Values[iRow, iCuTitle[25]] := '';

											sEndDate := ls_rcrd[26];
											if Trim(sEndDate) <> '' then
												CustView1.DataController.Values[iRow, iCuTitle[26]] := copy(sEndDate, 1, 4) +
													'-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
											else
												CustView1.DataController.Values[iRow, iCuTitle[26]] := '';

											CustView1.DataController.Values[iRow, iCuTitle[27]] := ls_Rcrd[27];
											CustView1.DataController.Values[iRow, iCuTitle[28]] := ls_Rcrd[28];    //hdno
											if Trim(ls_rcrd[30]) <> '' then                                                       //고객등록일자
												CustView1.DataController.Values[iRow, iCuTitle[29]] := copy(ls_rcrd[30], 1, 4) +
													'-' + copy(ls_rcrd[30], 5, 2) + '-' + copy(ls_rcrd[30], 7, 2)
											else
												CustView1.DataController.Values[iRow, iCuTitle[29]] := '';
											CustView1.DataController.Values[iRow, iCuTitle[30]] := GetStrToDateTimeGStr(ls_Rcrd[29], 3);    //콜벨등록일

											if ls_Rcrd[31] = '' then
												CustView1.DataController.Values[iRow, iCuTitle[31]] := '0'    //소멸예정마일리지
											else
												CustView1.DataController.Values[iRow, iCuTitle[31]] := ls_Rcrd[31];    //소멸예정마일리지
											if CustView1.DataController.Values[iRow, iCuTitle[31]] <> '0' then
												CustView1.DataController.Values[iRow, iCuTitle[32]] := copy(ls_Rcrd[32], 1,10)
											else
												CustView1.DataController.Values[iRow, iCuTitle[32]] := '';    //소멸예정일

											CustView1.DataController.Values[iRow, iCuTitle[33]] := StrToCall(sTel2);    //고객번호2
											CustView1.DataController.Values[iRow, iCuTitle[34]] := StrToCall(sTel3);    //고객번호3
											CustView1.DataController.Values[iRow, iCuTitle[35]] := sSmsYn2;    //SMS수신거부2
											CustView1.DataController.Values[iRow, iCuTitle[36]] := sSmsYn3;    //SMS수신거부3
											CustView1.DataController.Values[iRow, iCuTitle[37]] := ls_Rcrd[33];    //직책
										end;
									finally
										slTmp.Free;
										ls_Rcrd.Free;
									end;
								end else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
							end;
							CustView1.EndUpdate;
							lbCount01.Caption := '총 ' + IntToStr(CustView1.DataController.RecordCount) + '명';
							Screen.Cursor := crDefault;
							frm_Main.sbar_Message.Panels[4].Text := '';
						end;
					3:
						begin
							sNoSms := '';
							for i := 0 to sg_notsms_list.DataController.RecordCount - 1 do
								sNoSms := sNoSms + ',' + sg_notsms_list.DataController.Values[i, 2];
							CustView2.BeginUpdate;

							Frm_Flash.cxPBar1.Properties.Max := slList.Count;
							Frm_Flash.cxPBar1.Position := 0;

							for j := 0 to slList.Count - 1 do
							begin
								Frm_Flash.cxPBar1.Position := j + 1;
								Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Application.ProcessMessages;
								ls_rxxml := slList.Strings[j];
								if not xdom.loadXML(ls_rxxml) then
								begin
									Continue;
								end;
								if (0 < GetXmlRecordCount(ls_rxxml)) then
								begin
									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									ls_Rcrd := TStringList.Create;
									try
										for i := 0 to lst_Result.length - 1 do
										begin
											Application.ProcessMessages;
											GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
											sEndDate := ls_rcrd[10];
											//----------------------------------------------------------------------------------------------
											//                  대표번호 길이가 8보다 큰경우만 생성
											//----------------------------------------------------------------------------------------------
											if (trim(ls_rcrd[1]) <> '') then
											begin
												iRow := CustView2.DataController.FindRecordIndexByText(0, 18 + 1, ls_rcrd[1] + ls_rcrd[3], True, True, True);
												//----------------------------------------------------------------------------------------------
												//                  대표번호 + 고객번호가 같은게 없을때만 생성
												//----------------------------------------------------------------------------------------------
												if (irow < 0) then
												begin
													iRow := CustView2.DataController.FindRecordIndexByText(0, 14 + 1, ls_rcrd[0], True, True, True);
													//----------------------------------------------------------------------------------------------
													//                  고객순번이 중복이면 생략
													//----------------------------------------------------------------------------------------------
													if iRow > 0 then
														continue;

													if chkNmlPhoneOut02.Checked then
													begin
														if not CheckHPType(ls_rcrd[3], ErrDesc) then
															Continue;
													end;

													iRow := CustView2.DataController.AppendRecord;
													CustView2.DataController.Values[iRow, 19 + 1] := ls_rcrd[1] + ls_rcrd[3];
													CustView2.DataController.Values[iRow, 18 + 1] := ls_rcrd[12];
													CustView2.DataController.Values[iRow, 16 + 1] := ls_rcrd[11];
													CustView2.DataController.Values[iRow, 10 + 1] := ls_rcrd[13];
													CustView2.DataController.Values[iRow, 11 + 1] := ls_rcrd[14];
													CustView2.DataController.Values[iRow, 1 + 1] := strtocall(ls_rcrd[1]);
													CustView2.DataController.Values[iRow, 2 + 1] := ls_rcrd[2];
													CustView2.DataController.Values[iRow, 3 + 1] := strtocall(ls_rcrd[3]);
													CustView2.DataController.Values[iRow, 4 + 1] := ls_rcrd[4];
													CustView2.DataController.Values[iRow, 5 + 1] := ls_rcrd[19];
													//----------------------------------------------------------------------------------------------
													//                  고객등급 생성(지사별 설정값 반영)
													//----------------------------------------------------------------------------------------------
													iComCnt := StrToIntDef(ls_rcrd[5], 0);
													iCanCnt := StrToIntDef(ls_rcrd[6], 0);
													iTotal := iComcnt + iCanCnt;
													if iTotal = 0 then
														iCanRate := 0
													else
														iCanRate := Round((iCanCnt / iTotal * 100));
													CustView2.DataController.Values[iRow, 6 + 1] := IntToStr(iComCnt) + '/' + IntToStr(iCanCnt);
													CustView2.DataController.Values[iRow, 7 + 1] := intToStr(iCanRate) + '%';
													CustView2.DataController.Values[iRow, 8 + 1] := ls_rcrd[7];
													CustView2.DataController.Values[iRow, 9 + 1] := ls_rcrd[8];
													CustView2.DataController.Values[iRow, 12 + 1] := ls_rcrd[15];
													if Trim(sEndDate) <> '' then
														CustView2.DataController.Values[iRow, 13 + 1] := copy(sEndDate, 1, 4) + '-'
															+ copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
													else
														CustView2.DataController.Values[iRow, 13 + 1] := '';
													CustView2.DataController.Values[iRow, 14 + 1] := ls_rcrd[9];
													CustView2.DataController.Values[iRow, 15 + 1] := ls_rcrd[0];
													CustView2.DataController.Values[iRow, 16 + 1] := '';
													if rg_SType.Tag in [0, 1] then
														CustView2.DataController.Values[iRow, 20 + 1] := '0'
													else
														CustView2.DataController.Values[iRow, 20 + 1] := '1';
													CustView2.DataController.Values[iRow, 21 + 1] := func_buninSearch(ls_rcrd[9], ls_rcrd[1], ls_rcrd[16]);
													iIdx := scb_BranchCode.IndexOf(ls_rcrd[9]);
													if iIdx >= 0 then
														CustView2.DataController.Values[iRow, 1] := scb_BranchName[iIdx]
													else
														CustView2.DataController.Values[iRow, 1] := '';
													CustView2.DataController.Values[iRow, 22 + 1] := ls_rcrd[17];
													CustView2.DataController.Values[iRow, 23 + 1] := ls_rcrd[18];
												end;
											end;
										end;
									finally
										ls_Rcrd.Free;
									end;
								end else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
							end;
							CustView2.EndUpdate;
							CustView2.BeginUpdate;
							for i := 0 to CustView2.DataController.RecordCount - 1 do
								CustView2.DataController.Values[i, 0] := i + 1;
							CustView2.EndUpdate;
							lbCount02.Caption := '총 ' + IntToStr(CustView2.DataController.RecordCount) + '명';
							Screen.Cursor := crDefault;
							frm_Main.sbar_Message.Panels[4].Text := '';
						end;
					4:
						begin
							for i := 0 to sg_notsms_list.DataController.RecordCount - 1 do
								sNoSms := sNoSms + ',' + sg_notsms_list.DataController.Values[i, 2];
							CustView2.BeginUpdate;

							Frm_Flash.cxPBar1.Properties.Max := slList.Count;
							Frm_Flash.cxPBar1.Position := 0;

							for j := 0 to slList.Count - 1 do
							begin
								Frm_Flash.cxPBar1.Position := j + 1;
								Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Application.ProcessMessages;
								ls_rxxml := slList.Strings[j];
								if not xdom.loadXML(ls_rxxml) then
								begin
									Continue;
								end;
								if (0 < GetXmlRecordCount(ls_rxxml)) then
								begin
									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									ls_Rcrd := TStringList.Create;
									try
										for i := 0 to lst_Result.length - 1 do
										begin
											Application.ProcessMessages;
											GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
											sEndDate := ''; // ls_rcrd[10];

											if (trim(ls_rcrd[1]) <> '') and (length(ls_rcrd[1]) >= 8) then
											begin
												iRow :=
													CustView2.DataController.FindRecordIndexByText(0, 18
													+ 1, ls_rcrd[1] + ls_rcrd[3], True, True, True);
												if (irow < 0) then
												begin
													if cb_Sms_Gubun.ItemIndex in [1, 2] then
													begin
														iRow := pos(ls_rcrd[1] + ls_rcrd[3], sNoSms);
														if (cb_Sms_Gubun.ItemIndex = 1) and (iRow > 0) then
															continue;
														if (cb_Sms_Gubun.ItemIndex = 2) and (iRow = 0) then
															continue;
													end;

													if rrb_st_cancel.Checked then
													begin
														if lb_st_customer.IndexOf(ls_rcrd[1] + ls_rcrd[3]) > 0 then
														begin
															iRow := CustView2.DataController.FindRecordIndexByText(0, 18 + 1,
																ls_rcrd[1] + ls_rcrd[3], True, True, True);
															if iRow >= 0 then
																CustView2.DataController.DeleteRecord(iRow);
															continue;
														end else
														begin
															if ls_rcrd[12] <> '8' then
															begin
																lb_st_customer.Add(ls_rcrd[1] + ls_rcrd[3]);
																continue;
															end;
														end;
													end	else
  												if rrb_st_req.Checked then
													begin
														if lb_st_customer.IndexOf(ls_rcrd[1] + ls_rcrd[3]) > 0 then
														begin
															iRow := CustView2.DataController.FindRecordIndexByText(0, 18 + 1,
																ls_rcrd[1] + ls_rcrd[3], True, True, True);
															if iRow >= 0 then
																CustView2.DataController.DeleteRecord(iRow);
															continue;
														end	else
														begin
															if ls_rcrd[12] <> '4' then
															begin
																lb_st_customer.Add(ls_rcrd[1] + ls_rcrd[3]);
																continue;
															end;
														end;
													end;

													if chkNmlPhoneOut02.Checked then
													begin
														if not CheckHPType(ls_rcrd[3], ErrDesc) then
															Continue;
													end;

													iRow := CustView2.DataController.AppendRecord;
													CustView2.DataController.Values[iRow, 19 + 1] := ls_rcrd[1] + ls_rcrd[3];
													CustView2.DataController.Values[iRow, 18 + 1] := ls_Rcrd[17]; // [hjf] SMS수신여부 추가
													CustView2.DataController.Values[iRow, 17 + 1] := ls_Rcrd[11];
													CustView2.DataController.Values[iRow, 10 + 1] := ls_Rcrd[13];
													CustView2.DataController.Values[iRow, 11 + 1] := ls_Rcrd[14];
													CustView2.DataController.Values[iRow, 1 + 1] := strtocall(ls_rcrd[1]);
													CustView2.DataController.Values[iRow, 2 + 1] := ls_rcrd[2];
													CustView2.DataController.Values[iRow, 3 + 1] := strtocall(ls_rcrd[3]);
													CustView2.DataController.Values[iRow, 4 + 1] := ls_rcrd[4];
													CustView2.DataController.Values[iRow, 5 + 1] := ls_rcrd[19];

													iComCnt := StrToIntDef(ls_rcrd[5], 0);
													iCanCnt := StrToIntDef(ls_rcrd[6], 0);
													iTotal := iComcnt + iCanCnt;
													if iTotal = 0 then
														iCanRate := 0
													else
														iCanRate := Round((iCanCnt / iTotal * 100));
													CustView2.DataController.Values[iRow, 6 + 1] := IntToStr(iComCnt) + '/' +
														IntToStr(iCanCnt);
													CustView2.DataController.Values[iRow, 7 + 1] := intToStr(iCanRate) + '%';
													CustView2.DataController.Values[iRow, 8 + 1] := ls_rcrd[7];
													CustView2.DataController.Values[iRow, 9 + 1] := ls_rcrd[8];
													CustView2.DataController.Values[iRow, 12 + 1] := ls_rcrd[10];
													if Trim(sEndDate) <> '' then
														CustView2.DataController.Values[iRow, 13 + 1] := copy(sEndDate, 1, 4)
															+ '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
													else
														CustView2.DataController.Values[iRow, 13 + 1] := '';
													CustView2.DataController.Values[iRow, 14 + 1] := ls_rcrd[9];
													CustView2.DataController.Values[iRow, 15 + 1] := ls_rcrd[0];
													if rg_SType.Tag in [0, 1] then
														CustView2.DataController.Values[iRow, 20 + 1] := '0'
													else
														CustView2.DataController.Values[iRow, 20 + 1] := '1';

													if ls_Rcrd[12] = 'A' then
														CustView2.DataController.Values[iRow, 16 + 1] := lb_Status.Items.Strings[10]
													else
													if ls_Rcrd[12] = 'D' then
														CustView2.DataController.Values[iRow, 16 + 1] := lb_Status.Items.Strings[14]
													else
													if ls_Rcrd[12] = 'B' then
														CustView2.DataController.Values[iRow, 16 + 1] := lb_Status.Items.Strings[1]
													else
													if ls_Rcrd[12] = 'R' then
														CustView2.DataController.Values[iRow, 16 + 1] := lb_Status.Items.Strings[11]
													else
													if ls_Rcrd[12] = 'L' then
														CustView2.DataController.Values[iRow, 16 + 1] := lb_Status.Items.Strings[12]
													else
													if ls_Rcrd[12] = 'U' then
														CustView2.DataController.Values[iRow, 16 + 1] := lb_Status.Items.Strings[13]
													else
														CustView2.DataController.Values[iRow, 16 + 1] := lb_Status.Items.Strings[StrToIntDef(ls_Rcrd[12], 0)];

													CustView2.DataController.Values[iRow, 21 + 1] := func_buninSearch(ls_rcrd[9],	ls_rcrd[1], ls_rcrd[16]);

													iIdx := scb_BranchCode.IndexOf(ls_rcrd[9]);
													if iIdx >= 0 then
														CustView2.DataController.Values[iRow, 1] := scb_BranchName[iIdx]
													else
														CustView2.DataController.Values[iRow, 1] := '';
												end;
											end;
										end;
									finally
										ls_Rcrd.Free;
									end;
								end else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
							end;
							CustView2.EndUpdate;
							CustView2.BeginUpdate;
							for i := 0 to CustView2.DataController.RecordCount - 1 do
								CustView2.DataController.Values[i, 0] := i + 1;
							CustView2.EndUpdate;
							lbCount02.Caption := '총 ' + IntToStr(CustView2.DataController.RecordCount) + '명';
							frm_Main.sbar_Message.Panels[4].Text := '';
						end;
					5:
						begin
							Frm_Flash.cxPBar1.Properties.Max := slList.Count;
							Frm_Flash.cxPBar1.Position := 0;

							for j := 0 to slList.Count - 1 do
							begin
								Frm_Flash.cxPBar1.Position := j + 1;
								Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Application.ProcessMessages;
								ls_rxxml := slList.Strings[j];
								if not xdom.loadXML(ls_rxxml) then
								begin
									Continue;
								end;
								if (0 < GetXmlRecordCount(ls_rxxml)) then
								begin
									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									for i := 0 to lst_Result.length - 1 do
									begin
										Application.ProcessMessages;
										lbNoSms.Add(GetTextSeperationFirst('│', lst_Result.item[i].attributes.getNamedItem('Value').Text));
									end;
								end;
							end;
							if rg_SType.Tag = 2 then
								cb_Sms_Gubun.ItemIndex := 0;

							sList := TStringList.Create;
							sList.Sorted := True;
							sList.Duplicates := dupignore;
							if FileExists(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT') then
								sLIst.LoadFromFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
							Application.ProcessMessages;
							sList.AddStrings(lbNoSms);
							if sList.IndexOf('0100') = -1 then
							begin
								sList.Add('0100');
								sList.Add('0101');
								sList.Add('0102');
								sList.Add('0103');
								sList.Add('0104');
								sList.Add('0105');
								sList.Add('0106');
								sList.Add('0107');
								sList.Add('0108');
								sList.Add('0109');
								sList.Add('0110');
								sList.Add('0160');
								sList.Add('0170');
								sList.Add('0180');
								sList.Add('0190');
								sList.Add('0200');
							end;
							if sList.IndexOf('0100') > 0 then
							begin
								while sList.Strings[0] <> '0100' do
								begin
									sList.Delete(0);
								end;
							end;
							sList.SaveToFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
							sList.Free;
							lbNoSms.Clear;
							frm_Main.sbar_Message.Panels[4].Text := '';
							Screen.Cursor := crDefault;
						end;
					6:
            begin
              CustView3.BeginUpdate;
              Frm_Flash.cxPBar1.Properties.Max := slList.Count;
							Frm_Flash.cxPBar1.Position := 0;
              for j := 0 to slList.Count - 1 do
							begin
                Frm_Flash.cxPBar1.Position := j + 1;
								Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
                Application.ProcessMessages;
                ls_rxxml := slList.Strings[j];
								if not xdom.loadXML(ls_rxxml) then
								begin
									continue;
                end;
								if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      Application.ProcessMessages;
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      sEndDate := ls_rcrd[12];

											if chkCust03Type05.Checked then
											begin
												if not CheckHPType(ls_rcrd[4], ErrDesc) then
                          Continue;
                      end;

                      if ls_rcrd[4] = '' then
                        Continue;

                      iRow := CustView3.DataController.AppendRecord;
                      CustView3.DataController.Values[iRow, 0] := iRow + 1;
                      CustView3.DataController.Values[iRow, 1] := ls_rcrd[0];
                      CustView3.DataController.Values[iRow, 2] := ls_rcrd[1];
                      CustView3.DataController.Values[iRow, 3] := strtocall(ls_rcrd[2]);
                      CustView3.DataController.Values[iRow, 4] := ls_rcrd[3];
                      CustView3.DataController.Values[iRow, 5] := strtocall(ls_rcrd[4]);
                      CustView3.DataController.Values[iRow, 6] := ls_rcrd[5];
                      CustView3.DataController.Values[iRow, 7] := ls_rcrd[6];
											CustView3.DataController.Values[iRow, 8] := ls_rcrd[7] + '%';
                      CustView3.DataController.Values[iRow, 9] := ls_rcrd[8];
                      CustView3.DataController.Values[iRow, 10] := ls_rcrd[9];
                      CustView3.DataController.Values[iRow, 11] := ls_rcrd[10];
											CustView3.DataController.Values[iRow, 12] := ls_rcrd[11];
                      if Trim(sEndDate) <> '' then
                        CustView3.DataController.Values[iRow, 13] := Copy(sEndDate, 1, 4) + '-' +
                                                                     Copy(sEndDate, 5, 2) + '-' +
                                                                     Copy(sEndDate, 7, 2)
                      else
                        CustView3.DataController.Values[iRow, 13] := '';
                      CustView3.DataController.Values[iRow, 14] := ls_rcrd[13];
                      CustView3.DataController.Values[iRow, 15] := ls_rcrd[14];
                      CustView3.DataController.Values[iRow, 16] := ls_rcrd[15];
                      if ls_rcrd.Count > 16 then
                        CustView3.DataController.Values[iRow, 17] := ls_rcrd[16];

											if ls_Rcrd[17] = '' then
												CustView3.DataController.Values[iRow, 18] := '0'    //소멸예정마일리지
											else
												CustView3.DataController.Values[iRow, 18] := formatfloat('#,##0', StrToFloatDef(ls_Rcrd[17], 0));    //소멸예정마일리지
											CustView3.DataController.Values[iRow, 19] := GetStrToDateTimeGStr(ls_Rcrd[18], 4);    //소멸예정일
                    end;
                  finally
                    ls_Rcrd.Free;
									end;
								end	else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
							end;
              CustView3.EndUpdate;
							lbCount03.Caption := '총 ' + IntToStr(CustView3.DataController.RecordCount) + '명';
							frm_Main.sbar_Message.Panels[4].Text := '';
							Screen.Cursor := crDefault;
						end;
					7:
            begin
							CustView4.BeginUpdate;

							Frm_Flash.cxPBar1.Properties.Max := slList.Count;
							Frm_Flash.cxPBar1.Position := 0;

							for j := 0 to slList.Count - 1 do
							begin
								Frm_Flash.cxPBar1.Position := j + 1;
								Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Application.ProcessMessages;
								ls_rxxml := slList.Strings[j];
								if not xdom.loadXML(ls_rxxml) then
								begin
									continue;
								end;
								if (0 < GetXmlRecordCount(ls_rxxml)) then
								begin
									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									ls_Rcrd := TStringList.Create;
									try
										for i := 0 to lst_Result.length - 1 do
										begin
											Application.ProcessMessages;
											GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

											if chkCust04Type10.Checked then
											begin
												if not CheckHPType(ls_rcrd[4], ErrDesc) then Continue;
											end;

											sEndDate := ls_rcrd[13];

											if ls_rcrd[4] = '' then Continue;

											iRow := CustView4.DataController.AppendRecord;
											CustView4.DataController.Values[iRow, 0] := iRow + 1;
											CustView4.DataController.Values[iRow, 1] := ls_rcrd[0];
											CustView4.DataController.Values[iRow, 2] := ls_rcrd[1];
											CustView4.DataController.Values[iRow, 3] := strtocall(ls_rcrd[2]);
											CustView4.DataController.Values[iRow, 4] := ls_rcrd[3];
											CustView4.DataController.Values[iRow, 5] := strtocall(ls_rcrd[4]);
											CustView4.DataController.Values[iRow, 6] := ls_rcrd[5];
											CustView4.DataController.Values[iRow, 7] := ls_rcrd[6];
											CustView4.DataController.Values[iRow, 8] := ls_rcrd[7];
											CustView4.DataController.Values[iRow, 9] := ls_rcrd[8] + '%';
											CustView4.DataController.Values[iRow, 10] := ls_rcrd[9];
											CustView4.DataController.Values[iRow, 11] := ls_rcrd[10];
											CustView4.DataController.Values[iRow, 12] := ls_rcrd[11];
											CustView4.DataController.Values[iRow, 13] := ls_rcrd[12];
											if Trim(sEndDate) <> '' then
												CustView4.DataController.Values[iRow, 14] := Copy(sEndDate, 1, 4) + '-' +
																																		 Copy(sEndDate, 5, 2) + '-' +
																																		 Copy(sEndDate, 7, 2)
											else
												CustView4.DataController.Values[iRow, 14] := '';
											CustView4.DataController.Values[iRow, 15] := ls_rcrd[14];
											CustView4.DataController.Values[iRow, 16] := ls_rcrd[15];
											CustView4.DataController.Values[iRow, 17] := ls_rcrd[16];
											CustView4.DataController.Values[iRow, 18] := ls_rcrd[17];
											CustView4.DataController.Values[iRow, 19] := ls_rcrd[18];
											if ls_rcrd.Count > 19 then
												CustView4.DataController.Values[iRow, 20] := ls_rcrd[19];
										end;
									finally
										ls_Rcrd.Free;
									end;
								end	else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
							end;
							CustView4.EndUpdate;
							lbCount04.Caption := '총 ' + IntToStr(CustView4.DataController.RecordCount) + '명';
							frm_Main.sbar_Message.Panels[4].Text := '';
							Screen.Cursor := crDefault;
						end;
					8:
						begin
							CustView6.BeginUpdate;

							Frm_Flash.cxPBar1.Properties.Max := slList.Count;
							Frm_Flash.cxPBar1.Position := 0;

							for j := 0 to slList.Count - 1 do
							begin
//-                  frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Frm_Flash.cxPBar1.Position := j + 1;
								Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Application.ProcessMessages;
								ls_rxxml := slList.Strings[j];
								if not xdom.loadXML(ls_rxxml) then
								begin
									continue;
								end;
								if (0 < GetXmlRecordCount(ls_rxxml)) then
								begin
									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									ls_Rcrd := TStringList.Create;
									try
										for i := 0 to lst_Result.length - 1 do
										begin
											Application.ProcessMessages;
											GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

											if chkCust06Type06.Checked then
											begin
												if not CheckHPType(ls_rcrd[4], ErrDesc) then
													Continue;
											end;

											if ls_rcrd[4] = '' then
												Continue;

											sEndDate := ls_rcrd[11];
											iRow := CustView6.DataController.AppendRecord;
											CustView6.DataController.Values[iRow, 0] := iRow + 1;
											CustView6.DataController.Values[iRow, 1] := ls_rcrd[0];
											CustView6.DataController.Values[iRow, 2] := ls_rcrd[1];
											CustView6.DataController.Values[iRow, 3] := strtocall(ls_rcrd[2]);
											CustView6.DataController.Values[iRow, 4] := ls_rcrd[3];
											CustView6.DataController.Values[iRow, 5] := strtocall(ls_rcrd[4]);
											CustView6.DataController.Values[iRow, 6] := ls_rcrd[5];
											CustView6.DataController.Values[iRow, 7] := ls_rcrd[6];
											CustView6.DataController.Values[iRow, 8] := ls_rcrd[7];
											CustView6.DataController.Values[iRow, 9] := ls_rcrd[8] + '%';
											CustView6.DataController.Values[iRow, 10] := ls_rcrd[9];
											CustView6.DataController.Values[iRow, 11] := ls_rcrd[10];
											CustView6.DataController.Values[iRow, 13] := ls_rcrd[12];
											CustView6.DataController.Values[iRow, 14] := ls_rcrd[13];
											CustView6.DataController.Values[iRow, 15] := ls_rcrd[14];
											CustView6.DataController.Values[iRow, 16] := ls_rcrd[15];
											if Trim(sEndDate) <> '' then
												CustView6.DataController.Values[iRow, 12] := copy(sEndDate, 1, 4) +
													'-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
											else
												CustView6.DataController.Values[iRow, 12] := '';
										end;
									finally
										ls_Rcrd.Free;
									end;
								end	else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
							end;
							CustView6.EndUpdate;
							lbCount06.Caption := '총 ' + IntToStr(CustView6.DataController.RecordCount) + '명';
							frm_Main.sbar_Message.Panels[4].Text := '';
							Screen.Cursor := crDefault;
						end;
					10:
						begin
							GMessagebox('마일리지를 설정하였습니다.', CDMSI);
						end;
					11: //sel06으로 대체 후 사용안함 20190420 KHS
						begin
							CustView9.BeginUpdate;

							Frm_Flash.cxPBar1.Properties.Max := slList.Count;
							Frm_Flash.cxPBar1.Position := 0;

							for j := 0 to slList.Count - 1 do
							begin
//--            frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Frm_Flash.cxPBar1.Position := j + 1;
								Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Application.ProcessMessages;
								ls_rxxml := slList.Strings[j];
								if not xdom.loadXML(ls_rxxml) then
								begin
									continue;
								end;
								if (0 < GetXmlRecordCount(ls_rxxml)) then
								begin
									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									ls_Rcrd := TStringList.Create;
									try
										for i := 0 to lst_Result.length - 1 do
										begin
											Application.ProcessMessages;
											GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
											iRow := CustView9.DataController.AppendRecord;
											CustView9.DataController.Values[iRow, 0] := iRow + 1;
											CustView9.DataController.Values[iRow, 1] := ls_rcrd[0];
											CustView9.DataController.Values[iRow, 2] := ls_rcrd[1];
											iIdx := scb_BranchCode.IndexOf(ls_rcrd[1]);
											if iIdx >= 0 then
												CustView9.DataController.Values[iRow, 3] := scb_BranchName[iIdx]
											else
												CustView9.DataController.Values[iRow, 3] := '';
											CustView9.DataController.Values[iRow, 4] := strtocall(ls_rcrd[2]);
											case StrToIntDef(ls_rcrd[3], 0) of
												0: CustView9.DataController.Values[iRow, 5] := '일반';
												1: CustView9.DataController.Values[iRow, 5] := '업소';
												3: CustView9.DataController.Values[iRow, 5] := '법인';
												4: CustView9.DataController.Values[iRow, 5] := '주말골프';
											end;
											CustView9.DataController.Values[iRow, 6] := ls_rcrd[4];
											CustView9.DataController.Values[iRow, 7] := strtocall(ls_rcrd[5]);
											if StrToIntDef(ls_Rcrd[6], 0) = 0 then
												ls_Rcrd[6] := '0';
											if StrToIntDef(ls_Rcrd[7], 0) = 0 then
												ls_Rcrd[7] := '0';
											if StrToIntDef(ls_Rcrd[8], 0) = 0 then
												ls_Rcrd[8] := '0';

											CustView9.DataController.Values[iRow, 8] := ls_rcrd[6];
											CustView9.DataController.Values[iRow, 9] := ls_rcrd[7];
											CustView9.DataController.Values[iRow, 10] := ls_rcrd[8];
											if ls_rcrd[9] = 'y' then
												CustView9.DataController.Values[iRow, 11] := '인증'
											else
												CustView9.DataController.Values[iRow, 11] := '미인증';

											CustView9.DataController.Values[iRow, 12] := ls_rcrd[10];
											sEndDate := ls_rcrd[11];
											if Trim(sEndDate) <> '' then
												CustView9.DataController.Values[iRow, 13] := copy(sEndDate, 1, 4) + '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
											else
												CustView9.DataController.Values[iRow, 13] := '';

											sEndDate := ls_rcrd[12];
											if Trim(sEndDate) <> '' then
												CustView9.DataController.Values[iRow, 14] := copy(sEndDate, 1, 4) + '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
											else
												CustView9.DataController.Values[iRow, 14] := '';

											CustView9.DataController.Values[iRow, 15] := ls_rcrd[13];
											CustView9.DataController.Values[iRow, 16] := ls_rcrd[14];
											CustView9.DataController.Values[iRow, 17] := ls_rcrd[15];
											if StrToIntDef(ls_Rcrd[16], 0) = 0 then
												ls_Rcrd[16] := '0';
											CustView9.DataController.Values[iRow, 18] := ls_rcrd[16];
											CustView9.DataController.Values[iRow, 19] := ls_rcrd[17];
											if ls_rcrd.Count > 18 then
											  CustView9.DataController.Values[iRow, 20] := StrToFloatDef(ls_rcrd[18], 0);
											if ls_Rcrd[19] = '' then
												CustView9.DataController.Values[iRow, 21] := '0'    //소멸예정마일리지
											else
												CustView9.DataController.Values[iRow, 21] := formatfloat('#,##0', StrToFloatDef(ls_Rcrd[19], 0));    //소멸예정마일리지
											CustView9.DataController.Values[iRow, 22] := GetStrToDateTimeGStr(ls_Rcrd[20], 4);    //소멸예정일
											if ls_rcrd[21] = 'y' then CustView9.DataController.Values[iRow, 23] := '수신'
																					 else CustView9.DataController.Values[iRow, 23] := '거부';
											if ls_rcrd.Count > 22 then
											begin

												CustView9.DataController.Values[iRow, 24] := StrToFloatDef(ls_rcrd[22], 0);   //적립합계
												CustView9.DataController.Values[iRow, 25] := StrToFloatDef(ls_rcrd[23], 0);   //지급합계
                      end;
										end;
									finally
										ls_Rcrd.Free;
									end;
								end	else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
							end;
							CustView9.EndUpdate;
							lbCount09.Caption := '총 ' + IntToStr(CustView9.DataController.RecordCount) + '명';
							frm_Main.sbar_Message.Panels[4].Text := '';

							Screen.Cursor := crDefault;
						end;
					12:
						begin
							CustView10.BeginUpdate;

							Frm_Flash.cxPBar1.Properties.Max := slList.Count;
							Frm_Flash.cxPBar1.Position := 0;

							for j := 0 to slList.Count - 1 do
							begin
//-                  frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Frm_Flash.cxPBar1.Position := j + 1;
								Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Application.ProcessMessages;
								ls_rxxml := slList.Strings[j];
								if not xdom.loadXML(ls_rxxml) then
								begin
									continue;
								end;
								if (0 < GetXmlRecordCount(ls_rxxml)) then
								begin
									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									ls_Rcrd := TStringList.Create;
									try
										for i := 0 to lst_Result.length - 1 do
										begin
											Application.ProcessMessages;
											GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
											iRow := CustView10.DataController.AppendRecord;
											CustView10.DataController.Values[iRow, 0] := iRow + 1;
											CustView10.DataController.Values[iRow, 1] := ls_rcrd[0];
											CustView10.DataController.Values[iRow, 2] := ls_rcrd[1];
											iIdx := scb_BranchCode.IndexOf(ls_rcrd[1]);
											if iIdx >= 0 then
												CustView10.DataController.Values[iRow, 3] := scb_BranchName[iIdx]
											else
												CustView10.DataController.Values[iRow, 3] := '';
											CustView10.DataController.Values[iRow, 4] := strtocall(ls_rcrd[2]);
											case StrToIntDef(ls_rcrd[3], 0) of
												0: CustView10.DataController.Values[iRow, 5] := '일반';
												1: CustView10.DataController.Values[iRow, 5] := '업소';
												3: CustView10.DataController.Values[iRow, 5] := '법인';
												4: CustView10.DataController.Values[iRow, 5] := '주말골프';
											end;
											CustView10.DataController.Values[iRow, 6] := ls_rcrd[4];
											CustView10.DataController.Values[iRow, 7] := strtocall(ls_rcrd[5]);

											if ls_rcrd[6] = 'y' then
												CustView10.DataController.Values[iRow, 8] := '인증'
											else
												CustView10.DataController.Values[iRow, 8] := '미인증';

											sEndDate := ls_rcrd[7];
											if Trim(sEndDate) <> '' then
												CustView10.DataController.Values[iRow, 9] := copy(sEndDate, 1, 4) +
													'-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
											else
												CustView10.DataController.Values[iRow, 9] := '';

											if StrToIntDef(ls_Rcrd[8], 0) = 0 then
												ls_Rcrd[8] := '0';
											if StrToIntDef(ls_Rcrd[9], 0) = 0 then
												ls_Rcrd[9] := '0';

											CustView10.DataController.Values[iRow, 10] := ls_rcrd[8];
											CustView10.DataController.Values[iRow, 11] := ls_rcrd[9];
											CustView10.DataController.Values[iRow, 12] := ls_rcrd[10];
											CustView10.DataController.Values[iRow, 13] := ls_rcrd[11];
											CustView10.DataController.Values[iRow, 14] := ls_rcrd[12];
											CustView10.DataController.Values[iRow, 15] := ls_rcrd[13];
										end;
									finally
										ls_Rcrd.Free;
									end;
								end	else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
							end;
							CustView10.EndUpdate;
							lbCount10.Caption := '총 ' + IntToStr(CustView10.DataController.RecordCount) + '명';
							frm_Main.sbar_Message.Panels[4].Text := '';
						end;
					80:
						begin
							cxViewOKC.BeginUpdate;

							Frm_Flash.cxPBar1.Properties.Max := slList.Count;
							Frm_Flash.cxPBar1.Position := 0;

							for j := 0 to slList.Count - 1 do
							begin
//-                frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Frm_Flash.cxPBar1.Position := j + 1;
								Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
								Application.ProcessMessages;
								ls_rxxml := slList.Strings[j];
								if not xdom.loadXML(ls_rxxml) then
								begin
									continue;
								end;
								if (0 < GetXmlRecordCount(ls_rxxml)) then
								begin
									cxViewOKC.DataController.SetRecordCount(0);

									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									ls_Rcrd := TStringList.Create;
									try
										for i := 0 to lst_Result.length - 1 do
										begin
											Application.ProcessMessages;
											GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
											iRow := cxViewOKC.DataController.AppendRecord;

											cxViewOKC.DataController.Values[iRow, 0] := iRow + 1;
											cxViewOKC.DataController.Values[iRow, 1] := GetStrToLongDateTimeStr(ls_rcrd[0]);
											cxViewOKC.DataController.Values[iRow, 2] := ls_rcrd[1];
											cxViewOKC.DataController.Values[iRow, 3] := strtocall(ls_rcrd[2]);
											cxViewOKC.DataController.Values[iRow, 4] := GetOKCashBackStr(ls_rcrd[3]);
											cxViewOKC.DataController.Values[iRow, 5] := ls_rcrd[4];
											cxViewOKC.DataController.Values[iRow, 6] := StrToIntDef(ls_rcrd[5], 0);
											cxViewOKC.DataController.Values[iRow, 7] := ls_rcrd[6];
											cxViewOKC.DataController.Values[iRow, 8] := ls_rcrd[7];
											cxViewOKC.DataController.Values[iRow, 9] := StrToIntDef(ls_rcrd[8], 0);
											cxViewOKC.DataController.Values[iRow, 10] := StrToIntDef(ls_rcrd[9], 0);
											cxViewOKC.DataController.Values[iRow, 11] := GetStrToLongDateTimeStr(ls_rcrd[10]);
											cxViewOKC.DataController.Values[iRow, 12] := ls_rcrd[11];
										end;
									finally
										ls_Rcrd.Free;
									end;
								end	else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
							end;
							cxViewOKC.EndUpdate;
							frm_Main.sbar_Message.Panels[4].Text := '';
						end;
					end;
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
		cxPageControl1.Enabled := True;

{		cxGroupBox1.Enabled := True;
		cxGroupBox11.Enabled := True;
		cxGroupBox17.Enabled := True;
		cxGroupBox16.Enabled := True;
		cxGroupBox28.Enabled := True;
		cxGroupBox37.Enabled := True;
		cxGroupBox30.Enabled := True;

		cxGroupBox46.Enabled := True;
		cxGroupBox50.Enabled := True; }
		Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_CUT.proc_SleepSearch;
var
  ls_TxLoad, sWhere: string;
  slReceive: TStringList;
  ErrCode: integer;
  sms_use1, sms_use2: string;
begin
	dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSE);
    Exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSE);
    Exit;
  end;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
	begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('휴먼고객') then Exit;

	if not chkCust06Type03.Checked then
  begin
		if CustView6.DataController.RecordCount > 0 then
      Exit;
  end;
  //////////////////////////////////////////////////////////////////////////////
  // 고객>휴면고객]10000건/콜마너/대표번호:전체/최종이용:XXXXXXXX/SMS수신
  FExcelDownSleep := Format('%s/대표번호:%s/%s/%s',
    [
        GetSelBrInfo
			, cbKeynumber06.Text
			, IfThen(rbCust06Type01.Checked,
          Format('최종이용일:%s', [cxDate6_1.Text]),
          Format('기간내미사용:%s~%s', [cxDate14.Text, cxDate15.Text]))
			, cbSmsUse06.Text
    ]);
  //////////////////////////////////////////////////////////////////////////////

  sWhere := '';
	if cxBrNo6.Text <> '' then
		sWhere := sWhere + ' AND C.BR_NO = ''' + cxBrNo6.Text + ''' ';

	if (cbKeynumber06.Text <> '전체') and (cbKeynumber06.Text <> '') then
    sWhere := sWhere + ' AND C.KEY_NUMBER = ''' + StringReplace(cbKeynumber06.Text, '-', '', [rfReplaceAll]) + ''' ';

	case cbGubun6_1.ItemIndex of
    1: sWhere := sWhere + ' AND C.CU_TYPE = ''0'' ';
    2: sWhere := sWhere + ' AND C.CU_TYPE = ''1'' ';
    3: sWhere := sWhere + ' AND C.CU_TYPE = ''3'' ';
  end;

  // [hjf]
	case cbSmsUse06.ItemIndex of
  1:
    begin
      sms_use1 := 'y';
      sms_use2 := '0';
    end;
  2:
    begin
      sms_use1 := '0';
      sms_use2 := 'n';
    end;
  else
    begin
      sms_use1 := 'y';
      sms_use2 := 'n';
    end;
  end;

	if cbLevel06.ItemIndex > 0 then
		sWhere := sWhere + ' AND C.CU_LEVEL_CD = ''' + SCboLevelSeq[cbLevel06.itemindex] + ''' ';

	if chkCust06Type02.Checked then
		sWhere := sWhere + ' AND C.CU_TYPE != ''3'' ';

	if rbCust06Type01.Checked then
  begin
		if cxDate6_1.Enabled then
    begin
			if (cxDate6_1.Text <> '') then
      begin
				if chkCust06Type01.Checked then
					sWhere := sWhere + format(' AND (''%s'' >= C.CU_LAST_END or C.CU_LAST_END is null) ' , [formatdatetime('yyyymmdd', cxDate6_1.Date)])
        else
          sWhere := sWhere + format(' AND ''%s'' >= C.CU_LAST_END ' , [formatdatetime('yyyymmdd', cxDate6_1.Date)]);
      end;
    end;

		if chkCust06Type01.Checked then
    begin
      sWhere := sWhere + ' AND C.CU_ENDCNT = 0 ';
    end;
  end else
  if rbCust06Type02.Checked then
  begin
    if cxDate14.Enabled then
    begin
      if (cxDate14.Text <> '') and (cxDate15.Text <> '') then
        sWhere := sWhere + format(' AND C.CU_LAST_END NOT BETWEEN ''%s'' AND ''%s'' ' , [formatdatetime('yyyymmdd', cxDate14.Date),
          formatdatetime('yyyymmdd', cxDate15.Date)])
      else if (cxDate14.Text <> '') and (cxDate15.Text = '') then
        sWhere := sWhere + format(' AND ''%s'' >= C.CU_LAST_END ' , [formatdatetime('yyyymmdd', cxDate14.Date)])
      else if (cxDate14.Text = '') and (cxDate15.Text <> '') then
        sWhere := sWhere + format(' AND C.CU_LAST_END >= ''%s'' ' , [formatdatetime('yyyymmdd', cxDate15.Date)]);
    end;
  end;

  // 최근 6개월 이내 이용고객만 조회
  sWhere := sWhere + Format(' AND C.CU_LAST_END > ''%s'' ', [FormatDateTime('yyyymmdd', IncMonth(Now, -6))]);

  // 저장된 쿼리가 select ~~ from (select ~ from where [condition] 형식으로 저장되어 있음(우괄호 반드시 필요)
  sWhere := sWhere + ')';
  ls_TxLoad := GetSel04(self.Caption + '8', 'CUSTOMER23', '', sWhere, [sms_use1, sms_use2, cxHdNo6.Text]);

  Screen.Cursor := crHourGlass;
	slReceive := TStringList.Create;
	cxPageControl1.Enabled := False;
  try
    frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
		begin
      Application.ProcessMessages;
			proc_recieve(slReceive);
    end;
  finally
    frm_Main.proc_SocketWork(True);
    FreeAndNil(slReceive);
		Screen.Cursor := crDefault;
		cxPageControl1.Enabled := True;
		Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUT.proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean);
var
  i, iBrNo, iCustTel, iCustName, iKeyNum, iCnt, RowIdx, iRow, KeyRow, ikey_cnt, iMile, iSmsYn: Integer;
	sCustTel, sSmsYn: string;
	slTmp : THashedStringList;
begin
	GS_CUTSMS := True;
	if sGrid.Name = 'CustView9' then
	begin
		iBrNo     := sGrid.GetColumnByFieldName('지사코드').Index;
		iCustTel  := sGrid.GetColumnByFieldName('고객번호').Index;
		iCustName := sGrid.GetColumnByFieldName('고객명').Index;
		iKeyNum   := sGrid.GetColumnByFieldName('대표번호').Index;
		iMile     := sGrid.GetColumnByFieldName('현재마일리지').Index;
		iSmsYn    := sGrid.GetColumnByFieldName('SMS수신거부').Index;
	end else
	begin
		iBrNo     := sGrid.GetColumnByFieldName('지사코드').Index;
		iCustTel  := sGrid.GetColumnByFieldName('고객번호').Index;
		iCustName := sGrid.GetColumnByFieldName('고객명').Index;
		iKeyNum   := sGrid.GetColumnByFieldName('대표번호').Index;
		iMile     := sGrid.GetColumnByFieldName('마일리지').Index;
		iSmsYn    := sGrid.GetColumnByFieldName('SMS수신거부').Index;
	end;

	iCnt := 0;

  Frm_Main.procMenuCreateActive(1001, 'SMS발송');

	Frm_SMS.chkBalsin.Enabled := True;
  Frm_SMS.cxViewSms.DataController.SetRecordCount(0);
	Frm_SMS.cxViewKeyNum.DataController.SetRecordCount(0);
  Frm_SMS.cxViewSms.BeginUpdate;
	Frm_SMS.cxViewKeyNum.BeginUpdate;
	slTmp := THashedStringList.Create;
	Try
		Screen.Cursor := crHourGlass;
		for I := 0 to sGrid.DataController.RecordCount - 1 do
		begin
      if sGrid.ViewData.Records[i].Selected then
      begin
			  sCustTel := StringReplace(sGrid.ViewData.Records[I].Values[iCustTel], '-', '', [rfreplaceAll]);

			  if slTmp.IndexOf(sCustTel) > -1 then Continue;

			  slTmp.add(sCustTel);

			  if ASubscribe and (iSmsYn <> -1) then
			  	sSmsYn := sGrid.ViewData.Records[I].Values[iSmsYn]
			  else
			  	sSmsYn := 'y';

			  if (Copy(sCustTel, 1, 2) = '01') and (Length(sCustTel) in [10, 11]) and
           ((sSmsYn = 'y') or (sSmsYn = '수신')) then
			  begin
			  	// 전송내역 구성
			  	RowIdx := Frm_SMS.cxViewSms.DataController.AppendRecord;
			  	// 0, 지사코드
			  	Frm_SMS.cxViewSms.DataController.Values[RowIdx, 0] := sGrid.ViewData.Records[I].Values[iBrNo];
			  	// 1, 대표번호
					Frm_SMS.cxViewSms.DataController.Values[RowIdx, 1] := StringReplace(sGrid.ViewData.Records[I].Values[iKeyNum], '-', '', [rfreplaceAll]);
			  	// 2, 고객번호
			  	Frm_SMS.cxViewSms.DataController.Values[RowIdx, 2] := StringReplace(sGrid.ViewData.Records[I].Values[iCustTel], '-', '', [rfreplaceAll]);
			  	// 3, 고객명
			  	Frm_SMS.cxViewSms.DataController.Values[RowIdx, 3] := sGrid.ViewData.Records[I].Values[iCustName];
			  	// 4, 마일리지
			  	Frm_SMS.cxViewSms.DataController.Values[RowIdx, 6] := sGrid.ViewData.Records[I].Values[iMile];
			  	Inc(icnt);

			  	// 대표전화별 전송수 카운팅
			  	iRow := Frm_SMS.cxViewKeyNum.DataController.FindRecordIndexByText(0, 1,
			  		Frm_SMS.cxViewSms.DataController.Values[RowIdx, 1], True, True, True);

			  	if iRow = -1 then
			  	begin
			  		KeyRow := Frm_SMS.cxViewKeyNum.DataController.AppendRecord;
			  		Frm_SMS.cxViewKeyNum.DataController.Values[KeyRow, 0] := Frm_SMS.cxViewSms.DataController.Values[RowIdx, 0];
			  		Frm_SMS.cxViewKeyNum.DataController.Values[KeyRow, 1] := Frm_SMS.cxViewSms.DataController.Values[RowIdx, 1];
			  		Frm_SMS.cxViewKeyNum.DataController.Values[KeyRow, 2] := 1;
			  	end else
			  	begin
			  		ikey_cnt := Integer(Frm_SMS.cxViewKeyNum.DataController.Values[iRow, 2]);
			  		Inc(ikey_cnt);
			  		Frm_SMS.cxViewKeyNum.DataController.SetValue(iRow, 2, ikey_cnt);
			  	end;
			  end;
      end;
		end;

		Frm_SMS.cxViewSms.EndUpdate;
		Frm_SMS.cxViewKeyNum.EndUpdate;
		Frm_SMS.cxViewSms.Columns[1].SortOrder := soAscending;
		Frm_SMS.mmoAfter.Text := IntToStr(iCnt);
		// 외부에서 호출함수
		Frm_SMS.proc_branch_sms;
		Frm_SMS.Show;
		Frm_SMS.cxBtnHelp.Click;
	Finally
		Screen.Cursor := crDefault;
		slTmp.Free;
  End;
end;

procedure TFrm_CUT.proc_VirtureNum;
var Param, XmlData, ErrMsg: string;
  ErrCode, iCnt : Integer;
  slList, StrList: TStringList;
  j : Integer;
  tmpCnt: integer;
  tmpCntStr: string;
	k: Integer;
	tmpStr: string;
	ArrSt: array of string;
	iRow: integer;
	sBrNo : string;
begin
	sBrNo := cxBrNo5.Text;
	Screen.Cursor := crHourGlass;
	if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
	begin
		ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
							+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');

		Screen.Cursor := crDefault;
    cxGridDBTableView1.DataController.SetRecordCount(0);
		Exit;
	end;

	Param := '';

  slList := TStringList.Create;
  try
		if not RequestBasePaging(GetSel05('GET_VIRTUAL_TEL_LIST', 'MNG_CUST.GET_VIRTUAL_TEL_LIST', '1000',Param), slList, ErrCode, ErrMsg) then
  	begin
  		ShowMessage(Format('[%d] %s', [ErrCode, ErrMsg]));
  		Screen.Cursor := crDefault;
  		Exit;
		end;
  	cxGridDBTableView1.DataController.SetRecordCount(0);

    iCnt := 1;
    Frm_Flash.cxPBar1.Properties.Max := slList.Count;
    Frm_Flash.cxPBar1.Position := 0;
    for j := 0 to slList.Count - 1 do
    begin
      Frm_Flash.cxPBar1.Position := j + 1;
      Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
      Application.ProcessMessages;
      xmlData := slList.Strings[j];

      if Pos('<Data Count="',xmlData)>0 then
      begin
        tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
        if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
        tmpCnt:=StrToIntDef(tmpCntStr,0);
      end;

      if tmpCnt < 1 then
      begin
				GMessagebox('검색된 내용이 없습니다.', CDMSE);
        Exit;
      end;

      cxGridDBTableView1.BeginUpdate;
			StrList := TStringList.Create;
      try
        SetLength(ArrSt,tmpCnt);
        tmpStr:=xmlData;
        tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

        if Pos('<Result Value=',XmlData)>0 then
          tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

        for k:=0 to tmpCnt-1 do
        begin
          ArrSt[k]:=tmpStr;
          if Pos('/>',tmpStr)>0 then
          begin
            ArrSt[k]:=Copy(tmpStr,1,Pos('/>',tmpStr)-1);
            if Pos('<Result Value=',ArrSt[k]) > 0 then
              ArrSt[k] := Copy(ArrSt[k],Pos('<Result Value=',ArrSt[k])+14,Length(ArrSt[k])-Pos('<Result Value=',ArrSt[k])+14+1);
            if Pos('/>',ArrSt[k]) > 0 then
              ArrSt[k] := Copy(ArrSt[k],1,Pos('/>',ArrSt[k])-1);
            ArrSt[k]:=StringReplace(ArrSt[k],'"','',[rfReplaceAll]);

            tmpStr:=Copy(tmpStr,Pos('/>',tmpStr)+2,Length(tmpStr)-Pos('/>',tmpStr)+2+1);
            StrList.Clear;
            GetTextSeperationEx('│', ArrSt[k], StrList);

    				iRow := cxGridDBTableView1.DataController.AppendRecord;
    				cxGridDBTableView1.DataController.Values[iRow, 0] := IntToStr(iCnt);
    				cxGridDBTableView1.DataController.Values[iRow, 1] := StrToCall(StrList.Strings[0]);

            if (IsPassedManagementWk(StrList.Strings[5])) Or ( StrList.Strings[5] = '' ) then
            begin
      				cxGridDBTableView1.DataController.Values[iRow, 2] := StrToCall(StrList.Strings[1]);
      				cxGridDBTableView1.DataController.Values[iRow, 3] := StrList.Strings[2];
      				cxGridDBTableView1.DataController.Values[iRow, 4] := StrToIntDef(StrList.Strings[3], 0);
      				if length(StrList.Strings[4]) = 8 then
      					cxGridDBTableView1.DataController.Values[iRow, 5] := copy(StrList.Strings[4], 1,4) + '-' + copy(StrList.Strings[4], 5,2) + '-' + copy(StrList.Strings[4], 7,2)  // 최종이용일자
      				else cxGridDBTableView1.DataController.Values[iRow, 5] := StrList.Strings[4];
      				if StrList.Strings[9] <> ''  then
      					cxGridDBTableView1.DataController.Values[iRow, 6] := StrList.Strings[9] + ' - ' + StrList.Strings[8]
      				else cxGridDBTableView1.DataController.Values[iRow, 6] := StrList.Strings[9];
      				cxGridDBTableView1.DataController.Values[iRow, 7] := StrList.Strings[6];
      				cxGridDBTableView1.DataController.Values[iRow, 8] := StrList.Strings[7];
      				cxGridDBTableView1.DataController.Values[iRow, 9] := copy(StrList.Strings[0],8,4);
      				cxGridDBTableView1.DataController.Values[iRow, 10] := StrList.Strings[5];
      				cxGridDBTableView1.DataController.Values[iRow, 11] := RightStr(StrList.Strings[1],4);
            end else
            begin
      				cxGridDBTableView1.DataController.Values[iRow, 2] := '***-****-****';
      				cxGridDBTableView1.DataController.Values[iRow, 3] := '***';
      				cxGridDBTableView1.DataController.Values[iRow, 4] := 0;
     					cxGridDBTableView1.DataController.Values[iRow, 5] := '****-**-**';
    					cxGridDBTableView1.DataController.Values[iRow, 6] := '*******';
      				cxGridDBTableView1.DataController.Values[iRow, 7] := '타업체에서 사용중입니다';
      				cxGridDBTableView1.DataController.Values[iRow, 8] := '*******';
      				cxGridDBTableView1.DataController.Values[iRow, 9] := '****';
      				cxGridDBTableView1.DataController.Values[iRow, 10] := '****';
      				cxGridDBTableView1.DataController.Values[iRow, 11] := '****';
            end;
            Inc(iCnt);
          end;
        end;
      finally
        cxGridDBTableView1.endupdate;
        StrList.Free;
      end;
    end;
  finally
    slList.Free;
		Screen.Cursor := crDefault;
    Frm_Flash.Hide;
	end;
end;

procedure TFrm_CUT.proc_VirtureNum_init;
begin
	cxTextEdit18.Text := '';
	cxTextEdit19.Text := '';
	cxTextEdit20.Text := '';
	cxLabel243.Caption := '';
	cxLabel245.Caption := '';
	cxLabel247.Caption := '';
	cxLabel250.Caption := '';
	cxVirtureList.DataController.SetRecordCount(0);
	pnl5.visible := False;
end;

procedure TFrm_CUT.rbAll01Click(Sender: TObject);
begin
	rg_SType.Tag := TcxRadioButton(Sender).Tag;
  if rg_SType.Tag = 0 then
  begin
		cxDate2_1S.Enabled := False;
		cxDate2_1E.Enabled := False;
  end else
  begin
		cxDate2_1S.Enabled := True;
		cxDate2_1E.Enabled := True;
  end;
	proc_New_his(rg_SType.Tag);
  cb_Sms_Gubun.ItemIndex := 1;
end;

procedure TFrm_CUT.RbButton1MouseDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	pm_Date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUT.chk_Before_FinishClick(Sender: TObject);
begin
	if bTag_Page2 then exit;
	
	if chk_Before_Finish.Checked then
  begin
//    chk_Before_Finish.Checked := True;
		cxDate2_1S.Enabled := False;
		cxDate2_1E.Enabled := False;
		cxDate2_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
		cxDate2_1E.Date := cxDate2_1S.Date + 1;
//////////////////////////체크박스 연동안되도록 //////////////////////////
		bTag_Page2 := True;
		chk_Before.Checked := False;
		chk_Before_New.Checked := False;
		bTag_Page2 := False;
//////////////////////////체크박스 연동안되도록 //////////////////////////
		GroupBox4.Enabled := False;
    cb_st_city.Enabled := False;
    cb_st_ward.Enabled := False;
    cb_S_Cnt1.Text := '';
    cb_S_Cnt2.Text := '';
    cb_s_CCnt1.Text := '';
    cb_s_CCnt2.Text := '';
    cb_S_Cnt1.Enabled := False;
    cb_S_Cnt2.Enabled := False;
    cb_S_CCnt1.Enabled := False;
    cb_S_CCnt2.Enabled := False;
    cb_S_Grad.Enabled := False;
    rg_SType.Enabled := False;
    rrb_st_all.Checked := True;
    rrb_st_comp.Checked := False;
    rrb_st_cancel.Checked := False;
    rrb_st_req.Checked := False;
  end else
  begin
//		chk_Before_Finish.Checked := False;
		cxDate2_1S.Enabled := True;
		cxDate2_1E.Enabled := True;
		cxDate2_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
		cxDate2_1E.Date := cxDate2_1S.Date + 1;
//////////////////////////체크박스 연동안되도록 //////////////////////////
		bTag_Page2 := True;
		chk_Before.Checked := False;
		chk_Before_New.Checked := False;
		bTag_Page2 := False;
//////////////////////////체크박스 연동안되도록 //////////////////////////
		GroupBox4.Enabled := True;
    cb_st_city.Enabled := True;
    cb_st_ward.Enabled := True;
    cb_S_Cnt1.Text := '';
    cb_S_Cnt2.Text := '';
    cb_s_CCnt1.Text := '';
    cb_s_CCnt2.Text := '';
    cb_S_Cnt1.Enabled := True;
    cb_S_Cnt2.Enabled := True;
    cb_S_CCnt1.Enabled := True;
    cb_S_CCnt2.Enabled := True;
    cb_S_Grad.Enabled := True;
    rg_SType.Enabled := True;
    rrb_st_all.Checked := True;
    rrb_st_comp.Checked := False;
    rrb_st_cancel.Checked := False;
    rrb_st_req.Checked := False;

		cbGubun2_1.ItemIndex := 0;
    if rbUseList01.Checked then
    begin
      cb_st_city.Enabled := True;
      cb_st_ward.Enabled := True;
      cb_S_Cnt1.Enabled := False;
      cb_S_Cnt2.Enabled := False;
      cb_S_CCnt1.Enabled := False;
      cb_S_CCnt2.Enabled := False;
      cb_S_Grad.Enabled := False;
      GroupBox4.Enabled := True;
      rrb_st_all.Checked := True;
    end else
    begin
      cb_st_city.Enabled := False;
      cb_st_ward.Enabled := False;
      cbKeynumber02.ItemIndex := 0;
			cbGubun2_1.ItemIndex := 0;
      cb_Sms_Gubun.ItemIndex := 0;
      cb_S_Grad.ItemIndex := 0;
      cb_Sms_Gubun.Enabled := True;
      cb_S_Cnt1.Enabled := True;
      cb_S_Cnt2.Enabled := True;
      cb_S_CCnt1.Enabled := True;
      cb_S_CCnt2.Enabled := True;
      cb_S_Grad.Enabled := True;
      GroupBox4.Enabled := False;
      rrb_st_all.Checked := True;
      rrb_st_comp.Checked := False;
      rrb_st_cancel.Checked := False;
      rrb_st_req.Checked := False;
    end;
  end;
end;

procedure TFrm_CUT.rbCust03Type01Click(Sender: TObject);
begin
	if rbCust03Type01.Checked then
  begin
		cxDate3_1S.Enabled := False;
		cxDate3_1E.Enabled := False;
		btn_Date3_1.Enabled := False;
  end;
end;

procedure TFrm_CUT.rbCust03Type02Click(Sender: TObject);
begin
  if rbCust03Type02.Checked then
  begin
		cxDate3_1S.Enabled := True;
		cxDate3_1E.Enabled := True;
		btn_Date3_1.Enabled := True;
  end;
end;

procedure TFrm_CUT.rbCust03Type03Click(Sender: TObject);
begin
	if rbCust03Type03.Checked then
  begin
    rbCust03Type01.Checked := True;
    rbCust03Type01Click(rbCust03Type01);
  end;
  edMlgScore01.Enabled := True;
  edMlgScore02.Enabled := True;
  edMlgCount01.Enabled := True;
  edMlgCount02.Enabled := True;
	cbCustLastNumber.Enabled := False;
end;

procedure TFrm_CUT.rbCust03Type04Click(Sender: TObject);
begin
	edMlgScore01.Enabled := False;
	edMlgScore02.Enabled := False;
  edMlgCount01.Enabled := False;
  edMlgCount02.Enabled := False;
  cbCustLastNumber.Enabled := True;
end;

procedure TFrm_CUT.rbCust06Type01Click(Sender: TObject);
begin
	if rbCust06Type01.Checked then
  begin
		cxDate6_1.Enabled := True;
		btn_6_1.Enabled := True;
		btn_6_2.Enabled := True;
		btn_6_3.Enabled := True;
		btn_6_4.Enabled := True;
		btn_6_5.Enabled := True;
		chkCust06Type01.Enabled := True;
		cxDate14.Enabled := False;
		cxDate15.Enabled := False;
	end else
	begin
		cxDate6_1.Enabled := False;
		btn_6_1.Enabled := False;
		btn_6_2.Enabled := False;
		btn_6_3.Enabled := False;
		btn_6_4.Enabled := False;
		btn_6_5.Enabled := False;
		chkCust06Type01.Enabled := False;
    cxDate14.Enabled := True;
    cxDate15.Enabled := True;
	end;
end;

procedure TFrm_CUT.rbCust06Type02Click(Sender: TObject);
begin
	if rbCust06Type01.Checked then
  begin
		cxDate6_1.Enabled := True;
		btn_6_1.Enabled := True;
		btn_6_2.Enabled := True;
		btn_6_3.Enabled := True;
		btn_6_4.Enabled := True;
		btn_6_5.Enabled := True;
		chkCust06Type01.Enabled := True;
    cxDate14.Enabled := False;
    cxDate15.Enabled := False;
  end else
  begin
		cxDate6_1.Enabled := False;
		btn_6_1.Enabled := False;
		btn_6_2.Enabled := False;
		btn_6_3.Enabled := False;
		btn_6_4.Enabled := False;
		btn_6_5.Enabled := False;
		chkCust06Type01.Enabled := False;
    cxDate14.Enabled := True;
    cxDate15.Enabled := True;
  end;
end;

procedure TFrm_CUT.rbFirstUseDate01Click(Sender: TObject);
begin
	de_4stDate.Enabled := False;
	de_4edDate.Enabled := False;
	btn_Date1_5.Enabled := False;

	de_5stDate.Enabled := False;
	de_5edDate.Enabled := False;
	btn_Date1_6.Enabled := False;

  edUseCnt01.Enabled := False;
  edUseCnt02.Enabled := False;

  case TcxRadioButton(Sender).Tag of
    0:
      begin
				de_4stDate.Enabled := True;
				de_4edDate.Enabled := True;
				btn_Date1_5.Enabled := True;
      end;
    1:
			begin
				de_5stDate.Enabled := True;
        de_5edDate.Enabled := True;
				btn_Date1_6.Enabled := True;
      end;
    2:
      begin
        edUseCnt01.Enabled := True;
        edUseCnt02.Enabled := True;
      end;
  end;
end;

procedure TFrm_CUT.rb_StraightClick(Sender: TObject);
begin
	case TcxRadioButton(Sender).Tag of
		0 : cxLabel190.Caption := '원';
		1 : cxLabel190.Caption := '%';
	end;
end;

procedure TFrm_CUT.RequestData(AData: string);
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
				proc_recieve(StrList);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    StrList.Free;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUT.RequestDataCustLevel;
var
  Param: string;
begin
	if GT_SEL_BRNO.GUBUN <> '1' then
	begin
		GMessagebox(PChar('고객등급관리는 [좌측 상단 지사선택 메뉴에서] 지사를 선택하셔야 합니다.'), CDMSE);
		if cxPageControl1.ActivePageIndex = 6 then
		begin
			cxViewCustGroup.DataController.SetRecordCount(0);
			cxViewCustLevel.DataController.SetRecordCount(0);
			cxViewGroupLevel.DataController.SetRecordCount(0);
		end;
		Exit;
  end;

  Param := GT_SEL_BRNO.BrNo;

	RequestData(GetSel05('GetCustGroup', 'cust_level.lv_select_ext', '100', GT_SEL_BRNO.BrNo+'│1'));
  RequestData(GetSel05('GetGroupLevel', 'cust_level.lv_select_ext', '100', GT_SEL_BRNO.BrNo+'│2'));
end;

procedure TFrm_CUT.RequestDataLevelFromGroupSeq(AGroupSeq: string);
var
  Param: string;
begin
  Param := AGroupSeq;

  RequestData(GetSel05('GetLevelFromGroupSeq', 'cust_level.lv_select', '100', Param));
end;

procedure TFrm_CUT.ResponseBATCH_CUST_MLG(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, j, jj: Integer;
  ls_Rcrd: TStringList;
  sErrorList : TStringList;
  iCustTel, iNo, iCutNM, iSeq : Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    iSeq  := CustView1.GetColumnByFieldName('SEQ').Index;
    iNo  := CustView1.GetColumnByFieldName('NO').Index;
    iCustTel  := CustView1.GetColumnByFieldName('고객번호').Index;
    iCutNM  := CustView1.GetColumnByFieldName('고객명').Index;
    sErrorList := TStringList.Create;

    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

    ls_Rcrd := TStringList.Create;

    for I := 0 to lst_Result.length - 1 do
    begin
      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

      sErrorList.Delimiter  := ',';
      sErrorList.DelimitedText := ls_Rcrd[0];
      mmoMilelistError.Lines.Add('[오류고객정보]');
      for j := 0 to sErrorList.Count -1 do
      begin

        for jj := 0 to CustView1.DataController.RecordCount - 1 do
        begin
          if (CustView1.ViewData.Records[jj].Selected) then
          begin
            if CustView1.ViewData.Records[jj].Values[iSeq] = sErrorList[j] then
            begin
              //오류 고객 정보 메모에 추가
               mmoMilelistError.Lines.Add('NO : '       + inttostr(CustView1.ViewData.Records[jj].Values[iNO]) + ', ' +
                                          '고객명 : '   + CustView1.ViewData.Records[jj].Values[iCutNM]   + ', ' +
                                          '고객번호 : ' + CustView1.ViewData.Records[jj].Values[iCustTel] + ', ');
            end;
          end;
        end;
      end;
    end;
  finally
    sErrorList.Free;
    xdom := Nil;
  end;
end;

procedure TFrm_CUT.ResponseCustGroup(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, Row, Idx: Integer;
  ls_Rcrd: TStringList;
  sOneYear : String;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    Idx := cxViewCustGroup.DataController.FocusedRecordIndex;

    cxViewCustGroup.DataController.SetRecordCount(0);
    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

          if ls_Rcrd[11] = 'y' then sOneYear := ' [최근 1년 유지]'
                               else sOneYear := '';

          Row := cxViewCustGroup.DataController.AppendRecord;
          cxViewCustGroup.DataController.Values[Row, cxColCGGroupName.Index]  := '[' + Lpad(ls_Rcrd[9], '0', 4) + ']' + ls_Rcrd[0] + sOneYear;  // 그룹명
          cxViewCustGroup.DataController.Values[Row, cxColCGSortNo.Index]     := ls_Rcrd[1];  // 정렬
          cxViewCustGroup.DataController.Values[Row, cxColCGLevelName.Index]  := ls_Rcrd[2];  // 등급명
          cxViewCustGroup.DataController.Values[Row, cxColCGMileage.Index]    := IfThen(ls_Rcrd[3] = '0', '', IfThen(StrToIntDef(ls_Rcrd[3], 0) > 100, StrToMoney(ls_Rcrd[3]) + ' 원', ls_Rcrd[3] + '%'));  // 마일리지
          cxViewCustGroup.DataController.Values[Row, cxColCGColor.Index]      := ls_Rcrd[4];  // 색상
          if (UpperCase(ls_Rcrd[7]) = 'Y') Or (UpperCase(ls_Rcrd[11]) = 'Y') then
            cxViewCustGroup.DataController.Values[Row, cxColCGLevelUpDesc.Index] := Format('%s건이상/%s%%이하', [ls_Rcrd[5], ls_Rcrd[6]])
          else
            cxViewCustGroup.DataController.Values[Row, cxColCGLevelUpDesc.Index] := '';
          cxViewCustGroup.DataController.Values[Row, cxColCGDefaultYN.Index]   := ls_Rcrd[8];
          cxViewCustGroup.DataController.Values[Row, cxColCGGroupSeq.Index]   := ls_Rcrd[9];
          cxViewCustGroup.DataController.Values[Row, cxColCGLevelSeq.Index]   := ls_Rcrd[10];
        end;
      finally
        ls_Rcrd.Free;
      end;
      cxGridCustGroup.FocusedView.DataController.Groups.FullExpand;
      if cxViewCustGroup.DataController.RecordCount > Idx then
        cxViewCustGroup.DataController.FocusedRecordIndex := Idx;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CUT.ResponseCustLevel(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, Row: Integer;
  ls_Rcrd: TStringList;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    cxViewCustLevel.DataController.SetRecordCount(0);
    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

          Row := cxViewCustLevel.DataController.AppendRecord;
          cxViewCustLevel.DataController.Values[Row, 0] := ls_Rcrd[0];
          cxViewCustLevel.DataController.Values[Row, 1] := ls_Rcrd[1];
          cxViewCustLevel.DataController.Values[Row, 2] := IfThen(UpperCase(ls_Rcrd[2]) = 'Y', '사용', '미사용');
          cxViewCustLevel.DataController.Values[Row, 3] := ls_Rcrd[3];
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CUT.ResponseLevelFromGroupSeq(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, Row, Idx: Integer;
  ls_Rcrd: TStringList;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    Idx := cxViewGroupLevel.DataController.FocusedRecordIndex;

    cxViewGroupLevel.DataController.SetRecordCount(0);
    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

          Row := cxViewGroupLevel.DataController.AppendRecord;
          cxViewGroupLevel.DataController.Values[Row, cxColGLSortNo.Index]     := ls_Rcrd[1];  // 정렬
          cxViewGroupLevel.DataController.Values[Row, cxColGLLevelName.Index]  := ls_Rcrd[2];  // 등급명
          cxViewGroupLevel.DataController.Values[Row, cxColGLMileage.Index]    := IfThen(ls_Rcrd[3] = '0', '', IfThen(StrToIntDef(ls_Rcrd[3], 0) > 100, StrToMoney(ls_Rcrd[3]) + ' 원', ls_Rcrd[3] + '%'));  // 마일리지
          cxViewGroupLevel.DataController.Values[Row, cxColGLColor.Index]      := ls_Rcrd[4];  // 색상
					if (UpperCase(ls_Rcrd[7]) = 'Y') then
            cxViewGroupLevel.DataController.Values[Row, cxColGLLevelUpDesc.Index] := Format('%s건이상/%s%%이하', [ls_Rcrd[5], ls_Rcrd[6]])
          else
            cxViewGroupLevel.DataController.Values[Row, cxColGLLevelUpDesc.Index] := '';
          cxViewGroupLevel.DataController.Values[Row, cxColGLDefaultYN.Index]   := ls_Rcrd[8];
        end;
      finally
        ls_Rcrd.Free;
      end;
      cxGridGroupLevel.FocusedView.DataController.Groups.FullExpand;
      if cxViewGroupLevel.DataController.RecordCount > Idx then
        cxViewGroupLevel.DataController.FocusedRecordIndex := Idx;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CUT.ShowCustLevelWindow(AGroupName, AGroupSeq: string;
  AOneYear: Boolean; ALevelSeq: string);
begin
	if ( not Assigned(Frm_CUT02) ) Or ( Frm_CUT02 = Nil ) then Frm_CUT02 := TFrm_CUT02.Create(Self);
  Frm_CUT02.SetData(GT_SEL_BRNO.BrNo, AGroupName, AGroupSeq, AOneYear, ALevelSeq);
  Frm_CUT02.OnRefreshEvent := OnRefreshCustLevel;
  Frm_CUT02.Left := (Screen.Width  - Frm_CUT02.Width ) div 2;
  Frm_CUT02.Top  := (Screen.Height - Frm_CUT02.Height) div 2;
  if Frm_CUT02.top <= 10 then Frm_CUT02.top := 10;
  Frm_CUT02.Show;
end;

procedure TFrm_CUT._retenTel01KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then
		btn_1_4Click(nil);
end;

procedure TFrm_CUT.btnAll1Click(Sender: TObject);
var iCol : integer;
begin
	case cxPageControl1.ActivePageIndex of
		0 : begin
          Frm_Main.sgExcel := '고객_고객관리.xls';
          Frm_Main.sgRpExcel := Format('고객>고객관리]%s건/%s', [GetMoneyStr(CustView1.DataController.RecordCount), FExcelDownMng]);
          Frm_Main.cxGridExcel := cxGrid1;
          Frm_Main.cxGridDBViewExcel := CustView1;
          if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
          if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;
		    	if GS_XLS_DTypeUse then
					begin
						iCol := CustView1.GetColumnByFieldName('No').Index;
						CustView1.Columns[iCol].PropertiesClassName := 'TcxCalcEditProperties';
						CustView1.Columns[iCol].Properties := Frm_Main.gCalHCProperties;
						iCol := CustView1.GetColumnByFieldName('이용횟수').Index;
						CustView1.Columns[iCol].PropertiesClassName := 'TcxCalcEditProperties';
						CustView1.Columns[iCol].Properties := Frm_Main.gCalHCProperties;
						iCol := CustView1.GetColumnByFieldName('완료횟수').Index;
						CustView1.Columns[iCol].PropertiesClassName := 'TcxCalcEditProperties';
						CustView1.Columns[iCol].Properties := Frm_Main.gCalHCProperties;
					end else
					begin
						iCol := CustView1.GetColumnByFieldName('No').Index;
						CustView1.Columns[iCol].PropertiesClassName := 'TcxLabelProperties';
						CustView1.Columns[iCol].Properties := Frm_Main.gLblProperties;
						iCol := CustView1.GetColumnByFieldName('이용횟수').Index;
						CustView1.Columns[iCol].PropertiesClassName := 'TcxLabelProperties';
						CustView1.Columns[iCol].Properties := Frm_Main.gLblProperties;
						iCol := CustView1.GetColumnByFieldName('완료횟수').Index;
						CustView1.Columns[iCol].PropertiesClassName := 'TcxLabelProperties';
						CustView1.Columns[iCol].Properties := Frm_Main.gLblProperties;
		    	end;
				end;
		1 :
				begin
          Frm_Main.sgExcel := '고객_일반검색.xls';
          Frm_Main.sgRpExcel := Format('고객>일반검색]%s건/%s', [GetMoneyStr(CustView2.DataController.RecordCount), FExcelDownNormal]);
          Frm_Main.cxGridExcel := cxGrid2;
          Frm_Main.cxGridDBViewExcel := CustView2;
          if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
          if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;
		    	if GS_XLS_DTypeUse then
		    	begin
		    		CustView2.Columns[0].PropertiesClassName := 'TcxCalcEditProperties';
		    		CustView2.Columns[0].Properties := Frm_Main.gCalHCProperties;
		    	end else
		    	begin
		    		CustView2.Columns[0].PropertiesClassName := 'TcxLabelProperties';
		    		CustView2.Columns[0].Properties := Frm_Main.gLblProperties;
		    	end;
		    end;
		2 :
		    begin
          Frm_Main.sgExcel := '고객_고급검색.xls';
          Frm_Main.sgRpExcel := Format('고객>고급검색]%s건/%s', [GetMoneyStr(CustView3.DataController.RecordCount), FExcelDownHigh]);
          Frm_Main.cxGridExcel := cxGrid3;
          Frm_Main.cxGridDBViewExcel := CustView3;
          if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
          if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;
		    	if GS_XLS_DTypeUse then
		    	begin
		    		CustView3.Columns[0].PropertiesClassName := 'TcxCalcEditProperties';
		    		CustView3.Columns[0].Properties := Frm_Main.gCalHCProperties;
		    		CustView3.Columns[12].PropertiesClassName := 'TcxCalcEditProperties';
		    		CustView3.Columns[12].Properties := Frm_Main.gCalHCProperties;
		    	end else
		    	begin
		    		CustView3.Columns[0].PropertiesClassName := 'TcxLabelProperties';
		    		CustView3.Columns[0].Properties := Frm_Main.gLblProperties;
		    		CustView3.Columns[12].PropertiesClassName := 'TcxLabelProperties';
		    		CustView3.Columns[12].Properties := Frm_Main.gLblProperties;
		    	end;
		    end;
		3 :
		    begin
          Frm_Main.sgExcel := '고객_상세검색.xls';
          Frm_Main.sgRpExcel := Format('고객>상세검색]%s건/%s', [GetMoneyStr(CustView4.DataController.RecordCount), FExcelDownDetail]);
          Frm_Main.cxGridExcel := cxGrid4;
          Frm_Main.cxGridDBViewExcel := CustView4;
          if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
          if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;
		    	if GS_XLS_DTypeUse then
		    	begin
		    		CustView4.Columns[0].PropertiesClassName := 'TcxCalcEditProperties';
		    		CustView4.Columns[0].Properties := Frm_Main.gCalHCProperties;
		    	end else
		    	begin
		    		CustView4.Columns[0].PropertiesClassName := 'TcxLabelProperties';
		    		CustView4.Columns[0].Properties := Frm_Main.gLblProperties;
		    	end;
		    end;
		4 :
		    begin
          Frm_Main.sgExcel := '고객_안심번호.xls';
          Frm_Main.sgRpExcel := Format('고객>안심번호]%s건/%s', [GetMoneyStr(cxGridDBTableView1.DataController.RecordCount), FExcelDownSleep]);
          Frm_Main.cxGridExcel := cxGrid14;
          Frm_Main.cxGridDBViewExcel := cxGridDBTableView1;
          if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
          if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;
		    	if GS_XLS_DTypeUse then
		    	begin
		    		cxGridDBTableView1.Columns[0].PropertiesClassName := 'TcxCalcEditProperties';
		    		cxGridDBTableView1.Columns[0].Properties := Frm_Main.gCalHCProperties;
		    		cxGridDBTableView1.Columns[4].PropertiesClassName := 'TcxCalcEditProperties';
		    		cxGridDBTableView1.Columns[4].Properties := Frm_Main.gCalHCProperties;
		    	end else
		    	begin
		    		cxGridDBTableView1.Columns[0].PropertiesClassName := 'TcxLabelProperties';
		    		cxGridDBTableView1.Columns[0].Properties := Frm_Main.gLblProperties;
		    		cxGridDBTableView1.Columns[4].PropertiesClassName := 'TcxLabelProperties';
		    		cxGridDBTableView1.Columns[4].Properties := Frm_Main.gLblProperties;
		    	end;
		    end;
		5 : begin
          Frm_Main.sgExcel := '고객_휴면고객.xls';
          Frm_Main.sgRpExcel := Format('고객>휴면고객]%s건/%s', [GetMoneyStr(CustView6.DataController.RecordCount), FExcelDownSleep]);
          Frm_Main.cxGridExcel := cxGrid5;
          Frm_Main.cxGridDBViewExcel := CustView6;
          if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
          if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;
        end;
		8 : begin
          Frm_Main.sgExcel := '고객_마일리지현황고객별.xls';
          Frm_Main.sgRpExcel := Format('고객>마일리지현황]%s건/%s', [GetMoneyStr(CustView9.DataController.RecordCount), FExcelDownMile]);
          Frm_Main.cxGridExcel := cxGrid6;
          Frm_Main.cxGridDBViewExcel := CustView9;
          if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
          if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;
		    	if GS_XLS_DTypeUse then
		    	begin
		    		CustView9.Columns[0].PropertiesClassName := 'TcxCalcEditProperties';
		    		CustView9.Columns[0].Properties := Frm_Main.gCalHCProperties;
		    		CustView9.Columns[10].PropertiesClassName := 'TcxCalcEditProperties';
		    		CustView9.Columns[10].Properties := Frm_Main.gCalHCProperties;
		    		CustView9.Columns[19].PropertiesClassName := 'TcxCalcEditProperties';
		    		CustView9.Columns[19].Properties := Frm_Main.gCalHCProperties;
		    		CustView9.Columns[20].PropertiesClassName := 'TcxCalcEditProperties';
		    		CustView9.Columns[20].Properties := Frm_Main.gCalHCProperties;
		    	end else
		    	begin
		    		CustView9.Columns[0].PropertiesClassName := 'TcxLabelProperties';
		    		CustView9.Columns[0].Properties := Frm_Main.gLblProperties;
		    		CustView9.Columns[10].PropertiesClassName := 'TcxLabelProperties';
		    		CustView9.Columns[10].Properties := Frm_Main.gLblProperties;
		    		CustView9.Columns[19].PropertiesClassName := 'TcxLabelProperties';
		    		CustView9.Columns[19].Properties := Frm_Main.gLblProperties;
		    		CustView9.Columns[20].PropertiesClassName := 'TcxLabelProperties';
		    		CustView9.Columns[20].Properties := Frm_Main.gLblProperties;
		    	end;
		    end;
		9 : begin
          Frm_Main.sgExcel := '고객_마일리지상세.xls';
					Frm_Main.sgRpExcel := Format('고객>마일리지상세]%s건/%s', [GetMoneyStr(CustView10.DataController.RecordCount), FExcelDownMileDetail]);
          Frm_Main.cxGridExcel := cxGrid8;
          Frm_Main.cxGridDBViewExcel := CustView10;
          if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
          if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;
        end;
		10 :begin
          Frm_Main.sgExcel := '고객_OK캐쉬백적립현황.xls';
          Frm_Main.sgRpExcel := Format('고객_OK캐쉬백적립현황]%s건/%s', [GetMoneyStr(cxViewOKC.DataController.RecordCount), FExcelDownMileDetail]);
          Frm_Main.cxGridExcel := cxGridOKC;
          Frm_Main.cxGridDBViewExcel := cxViewOKC;
          if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
          if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;
        end;
    11 :begin
          if grpExcel_OPT.Tag = 0 then
          begin
            Frm_Main.sgExcel := '고객_추천인관리(앱).xls';
            Frm_Main.sgRpExcel := Format('고객>추천인관리(앱)]%s건/%s', [GetMoneyStr(cxViewRCMD.DataController.RecordCount), FExcelDownRCMD]);
            Frm_Main.cxGridExcel := cxRCMD;
            Frm_Main.cxGridDBViewExcel := cxViewRCMD;
          end else
          if grpExcel_OPT.Tag = 1 then
          begin
            Frm_Main.sgExcel := '고객_추천인관리(앱)상세.xls';
            Frm_Main.sgRpExcel := Format('고객>추천인관리(앱)상세]%s건/%s', [GetMoneyStr(cxViewRCMD_D.DataController.RecordCount), FExcelDownRCMDD]);
            Frm_Main.cxGridExcel := cxRCMD_D;
            Frm_Main.cxGridDBViewExcel := cxViewRCMD_D;
          end;
          if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
          if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;
        end;
	end;
  Frm_Main.proc_excel(0);
	grpExcel_OPT.Visible := False;
end;

procedure TFrm_CUT.pSetMultiMileInit;
Var i : Integer;
    sNm : String;
begin
  try
    for i := 1 to 6 do
    begin
      case i of
        1 : sNm := '0';
        2 : sNm := '1';
        3 : sNm := '3';
        4 : sNm := '0A';
        5 : sNm := '1A';
        6 : sNm := '3A';
      end;
      TcxComBoBox(FindComponent('cbCashType'+sNm)).ItemIndex := 0;
      TcxComBoBox(FindComponent('cbPostType'+sNm)).ItemIndex := 0;
      TcxComBoBox(FindComponent('cbCardType'+sNm)).ItemIndex := 0;
      TcxComBoBox(FindComponent('cbMileType'+sNm)).ItemIndex := 0;

      TcxCurrencyEdit(FindComponent('edtCashValue'+sNm)).EditValue := 0;
      TcxCurrencyEdit(FindComponent('edtPostValue'+sNm)).EditValue := 0;
      TcxCurrencyEdit(FindComponent('edtCardValue'+sNm)).EditValue := 0;
      TcxCurrencyEdit(FindComponent('edtMileValue'+sNm)).EditValue := 0;

      TcxCheckBox(FindComponent('chkReceipNoMile'+sNm)).Checked := False;

      TcxCurrencyEdit(FindComponent('edtFirstAdd'+sNm)).EditValue := 0;
      TcxCurrencyEdit(FindComponent('edtOverAdd' +sNm)).EditValue := 0;
    end;
  except

  end;
end;

procedure TFrm_CUT.pSetMultiMileSave( pData : TMileData);
var
	sTemp, XmlData, ErrMsg: string;
	i, ErrCode: integer;
	asParam: array[1..10] of string;
begin
	asParam[1]  := cxBrNo8.Text;     //지사코드
	asParam[2]  := pData.mType;      // 적립타입(T.전화접수, A.앱접수)
	asParam[3]  := pData.mGubun;     // 고객구분(0:일반 1:업소 3:법인)
	asParam[4]  := pData.mCash;      // 현금설정
	asParam[5]  := pData.mPost;      // 후불(법인)설정
	asParam[6]  := pData.mCard;      // 카드설정
	asParam[7]  := pData.mMile;      // 마일설정
	asParam[8]  := pData.mReceipNo;  // 현금영수증설정
	asParam[9]  := pData.mFirstAdd;  // 첫회추가적립금액
	asParam[10] := pData.mOverAdd;   // 최소적립요금

	sTemp := '';
	for i := 1 to 10 do
	begin
		if i = 1 then sTemp := asParam[1]
		else
		begin
			sTemp := sTemp + '│' + asParam[i];
		end;
	end;

  if not RequestBase(GetCallable06('SET_MILEAGE_CFG', 'MNG_BR_MLG_CFG.SET_MILEAGE_CFG', sTemp), XmlData, ErrCode, ErrMsg) then
  begin
		GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
		Exit;
	end;
end;

end.

unit xe_CUT1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.StrUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit, cxCheckBox, System.Math,
	cxDropDownEdit, cxImageComboBox, cxTL, cxTLdxBarBuiltInMenu, AdvProgressBar,
  Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls, cxCheckComboBox, cxGridBandedTableView,
  cxSplitter, cxInplaceContainer, cxMemo, cxGridLevel, cxGridCustomTableView,
	cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxRadioGroup, cxMaskEdit, cxCalendar, cxButtons, cxGroupBox, Registry,
  IniFiles, MSXML2_TLB, Vcl.ExtCtrls, cxPC, DateUtils, ComObj, cxScrollBox, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver, cxCustomListBox, cxListBox, Vcl.Samples.Gauges,
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

type
  PTreeRec = ^TTreeRec;
  TTreeRec = record
		HDCode: string;
		HDName: string;
		BRCode: string;
		BRName: string;
		FIndex: integer;
	end;

type
  TFrm_CUT1 = class(TForm)
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
    pnl_Excel_OPT: TPanel;
    cxGroupBox7: TcxGroupBox;
    btnAll1: TcxButton;
    btnAll2: TcxButton;
    RdExcel1: TcxRadioButton;
    RdExcel2: TcxRadioButton;
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
    cxTabSheet12: TcxTabSheet;
    cxTabSheet13: TcxTabSheet;
    cxTabSheet14: TcxTabSheet;
    cxTabSheet15: TcxTabSheet;
    cxTabSheet16: TcxTabSheet;
    cxTabSheet17: TcxTabSheet;
    pnl_CUTB1: TPanel;
    Panel2: TPanel;
    Shape142: TShape;
    cxGrid13: TcxGrid;
		cxGridBebinList: TcxGridDBTableView;
    cxGridDBColumnB0: TcxGridDBColumn;
    cxGridDBColumnB29: TcxGridDBColumn;
    cxGridDBColumnB1: TcxGridDBColumn;
    cxGridDBColumnB2: TcxGridDBColumn;
    cxGridDBColumnB3: TcxGridDBColumn;
    cxGridDBColumnB4: TcxGridDBColumn;
    cxGridDBColumnB5: TcxGridDBColumn;
    cxGridDBColumnB6: TcxGridDBColumn;
    cxGridDBColumnB7: TcxGridDBColumn;
    cxGridDBColumnB8: TcxGridDBColumn;
    cxGridDBColumnB9: TcxGridDBColumn;
    cxGridDBColumnB12: TcxGridDBColumn;
    cxGridDBColumnB13: TcxGridDBColumn;
    cxGridDBColumnB14: TcxGridDBColumn;
    cxGridDBColumnB15: TcxGridDBColumn;
    cxGridDBColumnB16: TcxGridDBColumn;
    cxGridDBColumnB17: TcxGridDBColumn;
    cxGridDBColumnB18: TcxGridDBColumn;
    cxGridDBColumnB19: TcxGridDBColumn;
    cxGridDBColumnB20: TcxGridDBColumn;
    cxGridDBColumnB21: TcxGridDBColumn;
    cxGridDBColumnB22: TcxGridDBColumn;
    cxGridDBColumnB23: TcxGridDBColumn;
    cxGridDBColumnB24: TcxGridDBColumn;
    cxGridDBColumnB25: TcxGridDBColumn;
    cxGridDBColumnB26: TcxGridDBColumn;
    cxGridDBColumnB27: TcxGridDBColumn;
    cxGridDBColumnB28: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    CustView12_1: TcxTreeList;
    cxTreeList1cxTreeListColumn1: TcxTreeListColumn;
    CustView8cxTreeListColumn1: TcxTreeListColumn;
    cxTreeList1cxTreeListColumn2: TcxTreeListColumn;
    cxTreeList1cxTreeListColumn3: TcxTreeListColumn;
    cxTreeList1cxTreeListColumn6: TcxTreeListColumn;
    cxtrlstclmnTreeList1cxTreeListColumn4: TcxTreeListColumn;
    cxtrlstclmnTreeList1cxTreeListColumn5: TcxTreeListColumn;
    cxtrlstclmnTreeList1cxTreeListColumn7: TcxTreeListColumn;
    cxtrlstclmnCustView8cxTreeListColumn2: TcxTreeListColumn;
    cxtrlstclmnCustView8cxTreeListColumn3: TcxTreeListColumn;
    cxtrlstclmnCustView8cxTreeListColumn4: TcxTreeListColumn;
    cxGroupBox42: TcxGroupBox;
    Shape143: TShape;
    Shape144: TShape;
    Shape145: TShape;
    Shape146: TShape;
    cxLabel23: TcxLabel;
    lbCustCompany12: TcxLabel;
    cxLabel42: TcxLabel;
    cbKeynumber12: TcxComboBox;
    cxLabel199: TcxLabel;
    cxLabel47: TcxLabel;
    edBubinName01: TcxTextEdit;
    btn_12_1: TcxButton;
    btn_12_3: TcxButton;
    btn_12_2: TcxButton;
    btn_12_4: TcxButton;
    cxLabel52: TcxLabel;
    cb_Contract: TcxComboBox;
    cxSplitter1: TcxSplitter;
    pop_imtrgrd1: TPopupMenu;
    N5: TMenuItem;
    MenuItem2: TMenuItem;
    N4: TMenuItem;
    MenuItem3: TMenuItem;
    N8: TMenuItem;
    pnl_CUTB2: TPanel;
    Panel9: TPanel;
    Shape153: TShape;
    CustView13_1: TcxTreeList;
    cxTreeListColumn1: TcxTreeListColumn;
    custview11cxTreeListColumn1: TcxTreeListColumn;
    cxTreeListColumn2: TcxTreeListColumn;
    cxTreeListColumn3: TcxTreeListColumn;
    cxTreeListColumn4: TcxTreeListColumn;
    cxTreeListColumn5: TcxTreeListColumn;
    cxTreeListColumn7: TcxTreeListColumn;
    cxGroupBox45: TcxGroupBox;
    Shape154: TShape;
    Shape155: TShape;
    Shape156: TShape;
    cxLabel32: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel121: TcxLabel;
    cxLabel122: TcxLabel;
    btn_13_1: TcxButton;
    cbKeynumber13: TcxComboBox;
    lbCustCompany13: TcxLabel;
    cxTextEdit14: TcxTextEdit;
    Panel21: TPanel;
    Shape157: TShape;
    cxGrid9: TcxGrid;
    CustView13_2: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridBandedColumn4: TcxGridBandedColumn;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridBandedColumn8: TcxGridBandedColumn;
    cxGridBandedColumn9: TcxGridBandedColumn;
    cxGridBandedColumn10: TcxGridBandedColumn;
    cxGridBandedColumn11: TcxGridBandedColumn;
    cxGridBandedColumn12: TcxGridBandedColumn;
    cxGridBandedColumn13: TcxGridBandedColumn;
    cxGridBandedColumn14: TcxGridBandedColumn;
    cxGridBandedColumn15: TcxGridBandedColumn;
    cxGridBandedColumn16: TcxGridBandedColumn;
    cxGridBandedColumn17: TcxGridBandedColumn;
    cxGridBandedColumn18: TcxGridBandedColumn;
    cxGridBandedColumn19: TcxGridBandedColumn;
    cxGridBandedColumn20: TcxGridBandedColumn;
    cxGridBandedColumn21: TcxGridBandedColumn;
    cxGridBandedColumn22: TcxGridBandedColumn;
    cxGridBandedColumn23: TcxGridBandedColumn;
    cxGridBandedColumn24: TcxGridBandedColumn;
    cxGridBandedColumn25: TcxGridBandedColumn;
    cxGridBandedColumn26: TcxGridBandedColumn;
    cxGridBandedColumn27: TcxGridBandedColumn;
    cxGridBandedColumn28: TcxGridBandedColumn;
    cxGridBandedColumn29: TcxGridBandedColumn;
    cxGridBandedColumn30: TcxGridBandedColumn;
    cxGridBandedColumn31: TcxGridBandedColumn;
    cxGridBandedColumn32: TcxGridBandedColumn;
    cxGridBandedColumn33: TcxGridBandedColumn;
    cxGridBandedColumn34: TcxGridBandedColumn;
    cxGridBandedColumn35: TcxGridBandedColumn;
    cxGridBandedColumn36: TcxGridBandedColumn;
    cxGridBandedColumn37: TcxGridBandedColumn;
    cxGridBandedColumn38: TcxGridBandedColumn;
    cxGridBandedColumn39: TcxGridBandedColumn;
    cxGridBandedColumn40: TcxGridBandedColumn;
    cxGridBandedColumn41: TcxGridBandedColumn;
    cxGridBandedColumn42: TcxGridBandedColumn;
    cxGridBandedColumn43: TcxGridBandedColumn;
    cxGridBandedColumn44: TcxGridBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxGroupBox46: TcxGroupBox;
    Shape158: TShape;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxTextEdit21: TcxTextEdit;
    btn_13_2: TcxButton;
    btn_Date13_1: TcxButton;
    chkCust13Type01: TcxCheckBox;
    chkCust13Type02: TcxCheckBox;
    cxDate13_1S: TcxDateEdit;
    cxDate13_1E: TcxDateEdit;
    cxSplitter3: TcxSplitter;
    pnl_CUTB3: TPanel;
    Shape159: TShape;
    cxGrid7: TcxGrid;
		cxGBubinStt: TcxGridBandedTableView;
    cxGBubinSttColumn1: TcxGridBandedColumn;
    cxGBubinSttColumn2: TcxGridBandedColumn;
    cxGBubinSttColumn3: TcxGridBandedColumn;
		cxGBubinSttColumn4: TcxGridBandedColumn;
    cxGBubinSttColumn5: TcxGridBandedColumn;
    cxGBubinSttColumn6: TcxGridBandedColumn;
    cxGBubinSttColumn39: TcxGridBandedColumn;
    cxGBubinSttColumn7: TcxGridBandedColumn;
    cxGBubinSttColumn8: TcxGridBandedColumn;
    cxGBubinSttColumn9: TcxGridBandedColumn;
    cxGBubinSttColumn10: TcxGridBandedColumn;
    cxGBubinSttColumn11: TcxGridBandedColumn;
    cxGBubinSttColumn12: TcxGridBandedColumn;
    cxGBubinSttColumn13: TcxGridBandedColumn;
    cxGBubinSttColumn14: TcxGridBandedColumn;
    cxGBubinSttColumn15: TcxGridBandedColumn;
    cxGBubinSttColumn16: TcxGridBandedColumn;
    cxGBubinSttColumn17: TcxGridBandedColumn;
    cxGBubinSttColumn18: TcxGridBandedColumn;
    cxGBubinSttColumn19: TcxGridBandedColumn;
    cxGBubinSttColumn20: TcxGridBandedColumn;
    cxGBubinSttColumn38: TcxGridBandedColumn;
    cxGBubinSttColumn21: TcxGridBandedColumn;
    cxGBubinSttColumn22: TcxGridBandedColumn;
    cxGBubinSttColumn23: TcxGridBandedColumn;
    cxGBubinSttColumn24: TcxGridBandedColumn;
    cxGBubinSttColumn25: TcxGridBandedColumn;
    cxGBubinSttColumn26: TcxGridBandedColumn;
    cxGBubinSttColumn29: TcxGridBandedColumn;
    cxGBubinSttColumn40: TcxGridBandedColumn;
    cxGBubinSttColumn27: TcxGridBandedColumn;
    cxGBubinSttColumn28: TcxGridBandedColumn;
    cxGBubinSttColumn30: TcxGridBandedColumn;
    cxGBubinSttColumn31: TcxGridBandedColumn;
    cxGBubinSttColumn32: TcxGridBandedColumn;
    cxGBubinSttColumn33: TcxGridBandedColumn;
    cxGBubinSttColumn34: TcxGridBandedColumn;
    cxGBubinSttColumn35: TcxGridBandedColumn;
    cxGBubinSttColumn36: TcxGridBandedColumn;
    cxGBubinSttColumn37: TcxGridBandedColumn;
    cxGBubinSttColumn41: TcxGridBandedColumn;
    cxGBubinSttColumn42: TcxGridBandedColumn;
    cxGBubinSttColumn43: TcxGridBandedColumn;
    cxGBubinSttColumn44: TcxGridBandedColumn;
    cxGBubinSttColumn45: TcxGridBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxGroupBox47: TcxGroupBox;
    Shape160: TShape;
    Shape161: TShape;
    Shape162: TShape;
    Shape163: TShape;
    Shape164: TShape;
    Shape165: TShape;
    Shape166: TShape;
    Shape167: TShape;
    Shape168: TShape;
    btn_Date14_1: TcxButton;
    btn_14_2: TcxButton;
    btn_14_6: TcxButton;
    btn_14_1: TcxButton;
    btn_14_5: TcxButton;
    cbBubinSttCondition: TcxComboBox;
    cbKeynumber14: TcxComboBox;
    btn_14_4: TcxButton;
    btn_14_3: TcxButton;
    chkCust14Type01: TcxCheckBox;
    cxChkTitle: TcxCheckComboBox;
    cxdBubinSttSearch: TcxTextEdit;
    cxDate14_1E: TcxDateEdit;
    cxDate14_1S: TcxDateEdit;
    cxLabel124: TcxLabel;
    cxLabel125: TcxLabel;
    cxLabel126: TcxLabel;
    cxLabel127: TcxLabel;
    cxLabel142: TcxLabel;
    cxLabel146: TcxLabel;
    cxLabel147: TcxLabel;
    cxLabel159: TcxLabel;
    cxLabel160: TcxLabel;
    cxLabel161: TcxLabel;
    lbCustCompany14: TcxLabel;
    Panel23: TPanel;
    Shape169: TShape;
    rbCust14Type01: TcxRadioButton;
    rbCust14Type02: TcxRadioButton;
    rbCust14Type03: TcxRadioButton;
    Panel24: TPanel;
    Shape170: TShape;
    chkBubinSttTotal: TcxRadioButton;
    chkBubinSttFinish: TcxRadioButton;
    chkBubinSttNotFinish: TcxRadioButton;
    chkBubinSttNotBubin: TcxRadioButton;
    Panel25: TPanel;
    Shape171: TShape;
    rbCust14Type07: TcxRadioButton;
    rbCust14Type08: TcxRadioButton;
    rbCust14Type09: TcxRadioButton;
    Panel26: TPanel;
    Shape172: TShape;
    Panel27: TPanel;
    Shape173: TShape;
    chkBubinSttPayTotal: TcxRadioButton;
    chkBubinSttPayAfter: TcxRadioButton;
    chkBubinSttPayTick: TcxRadioButton;
    chkBubinSttPayCash: TcxRadioButton;
    Panel28: TPanel;
    Shape174: TShape;
    rbCust14Type04: TcxRadioButton;
    rbCust14Type05: TcxRadioButton;
    rbCust14Type06: TcxRadioButton;
    chkBubinStt: TCheckBox;
    cxLabel162: TcxLabel;
    pnlBubinAccPrt: TPanel;
    cxGroupBox48: TcxGroupBox;
    Shape175: TShape;
    cxLabel163: TcxLabel;
    cxLabel164: TcxLabel;
    cxLabel165: TcxLabel;
    cxLabel166: TcxLabel;
    cxcbBubinAccPage: TcxComboBox;
    btn_14_7: TcxButton;
    btn_14_9: TcxButton;
    btn_14_10: TcxButton;
    btn_14_8: TcxButton;
    lbbubinAccPrintList: TListBox;
    Panel29: TPanel;
    WebBrowser1: TWebBrowser;
    pnl_BubinAccStatus: TPanel;
    cxGroupBox49: TcxGroupBox;
    Shape176: TShape;
    Shape177: TShape;
    Gauge1: TAdvProgressBar;
    cxLabel167: TcxLabel;
    cxLabel174: TcxLabel;
    cxLabel175: TcxLabel;
    cxLabel176: TcxLabel;
    btnClose: TcxButton;
    chkBubinSttOrdTotal: TcxRadioButton;
    chkBubinSttOrdFinish: TcxRadioButton;
    chkBubinSttOrdCancel: TcxRadioButton;
    chkBubinSttOrdReq: TcxRadioButton;
    pnl_CUTB4: TPanel;
    pnl_CUTB4_1: TPanel;
    Shape178: TShape;
    cxGroupBox50: TcxGroupBox;
    Shape179: TShape;
    Shape180: TShape;
    Shape181: TShape;
    Shape182: TShape;
    Shape183: TShape;
    rbBubinAuth01: TcxRadioButton;
    rbBubinAuth02: TcxRadioButton;
    cxLabel218: TcxLabel;
    lbCustCompany15: TcxLabel;
    cxLabel219: TcxLabel;
    cbKeynumber15: TcxComboBox;
    cxLabel220: TcxLabel;
    cxLabel221: TcxLabel;
    cxDate22: TcxDateEdit;
    cxLabel222: TcxLabel;
    cxLabel223: TcxLabel;
    cxDate23: TcxDateEdit;
    cxLabel224: TcxLabel;
    cbBubinWk: TcxComboBox;
    edBubinSearch: TcxTextEdit;
    Panel31: TPanel;
    Shape184: TShape;
    rbBubinAuthchkDate01: TcxRadioButton;
    rbBubinAuthchkDate02: TcxRadioButton;
    cbBubinArea: TcxComboBox;
    edBubinArea: TcxTextEdit;
    btn_15_1: TcxButton;
    btn_15_2: TcxButton;
    cxGrid12: TcxGrid;
    cxGBubinAuth: TcxGridDBTableView;
    cxGBubinAuthColumn1: TcxGridDBColumn;
    cxGBubinAuthColumn2: TcxGridDBColumn;
    cxGBubinAuthColumn3: TcxGridDBColumn;
    cxGBubinAuthColumn4: TcxGridDBColumn;
    cxGBubinAuthColumn5: TcxGridDBColumn;
    cxGBubinAuthColumn6: TcxGridDBColumn;
    cxGBubinAuthColumn7: TcxGridDBColumn;
    cxGBubinAuthColumn8: TcxGridDBColumn;
    cxGBubinAuthColumn9: TcxGridDBColumn;
    cxGBubinAuthColumn10: TcxGridDBColumn;
    cxGBubinAuthColumn11: TcxGridDBColumn;
    cxGBubinAuthColumn12: TcxGridDBColumn;
    cxGBubinAuthColumn13: TcxGridDBColumn;
    cxGBubinAuthColumn14: TcxGridDBColumn;
    cxGBubinAuthColumn15: TcxGridDBColumn;
    cxGBubinAuthColumn16: TcxGridDBColumn;
    cxGBubinAuthColumn17: TcxGridDBColumn;
    cxGrid12Level1: TcxGridLevel;
    pnl_CUTB5: TPanel;
    Panel33: TPanel;
    Shape185: TShape;
    cxGroupBox51: TcxGroupBox;
    Shape186: TShape;
    Shape187: TShape;
    Shape188: TShape;
    Shape189: TShape;
    cxLabel123: TcxLabel;
    lbCustCompany16: TcxLabel;
    cxDate16_1S: TcxDateEdit;
    cxLabel263: TcxLabel;
    cxLabel264: TcxLabel;
    cxDate16_1E: TcxDateEdit;
    cxLabel265: TcxLabel;
    btn_16_1: TcxButton;
    btn_16_2: TcxButton;
    btn_Date16_1: TcxButton;
    cxLabel269: TcxLabel;
    cxComboBox5: TcxComboBox;
    rbo_WKTOT: TcxRadioButton;
    rbo_WKDayByDay: TcxRadioButton;
    cxLabel179: TcxLabel;
    cxGroupBox52: TcxGroupBox;
    Shape190: TShape;
    cxLabel262: TcxLabel;
    cxComboBox4: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxGrid15: TcxGrid;
    cxViewWithholdingTax: TcxGridDBTableView;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    cxBrNo12: TcxTextEdit;
    cxHdNo12: TcxTextEdit;
    cxBrNo13: TcxTextEdit;
    cxHdNo13: TcxTextEdit;
    cxBrNo14: TcxTextEdit;
    cxHdNo14: TcxTextEdit;
    cxBrNo15: TcxTextEdit;
    cxHdNo15: TcxTextEdit;
    cxBrNo16: TcxTextEdit;
    cxHdNo16: TcxTextEdit;
    pnl_CUTB6: TPanel;
    Shape191: TShape;
    cxGrid16: TcxGrid;
    cgrid_CalMonth: TcxGridDBTableView;
    cgrid_CalMonthColumn1: TcxGridDBColumn;
    cgrid_CalMonthColumn2: TcxGridDBColumn;
    cgrid_CalMonthColumn3: TcxGridDBColumn;
    cgrid_CalMonthColumn4: TcxGridDBColumn;
    cgrid_CalMonthColumn5: TcxGridDBColumn;
    cgrid_CalMonthColumn6: TcxGridDBColumn;
    cgrid_CalMonthColumn7: TcxGridDBColumn;
    cgrid_CalMonthColumn8: TcxGridDBColumn;
    cgrid_CalMonthColumn9: TcxGridDBColumn;
    cgrid_CalMonthColumn10: TcxGridDBColumn;
    cgrid_CalMonthColumn11: TcxGridDBColumn;
    cgrid_CalMonthColumn12: TcxGridDBColumn;
    cgrid_CalMonthColumn13: TcxGridDBColumn;
    cgrid_CalMonthColumn24: TcxGridDBColumn;
    cgrid_CalMonthColumn19: TcxGridDBColumn;
    cgrid_CalMonthColumn20: TcxGridDBColumn;
    cgrid_CalMonthColumn21: TcxGridDBColumn;
    cgrid_CalMonthColumn14: TcxGridDBColumn;
    cgrid_CalMonthColumn17: TcxGridDBColumn;
    cgrid_CalMonthColumn15: TcxGridDBColumn;
    cgrid_CalMonthColumn18: TcxGridDBColumn;
    cgrid_CalMonthColumn16: TcxGridDBColumn;
    cgrid_CalMonthColumn22: TcxGridDBColumn;
    cgrid_CalMonthColumn23: TcxGridDBColumn;
    cgrid_CalMonthColumn26: TcxGridDBColumn;
    cgrid_CalMonthColumn27: TcxGridDBColumn;
    cgrid_CalMonthColumn28: TcxGridDBColumn;
    cgrid_CalMonthColumn29: TcxGridDBColumn;
    cxGrid11Level: TcxGridLevel;
    cxGroupBox53: TcxGroupBox;
    Shape192: TShape;
    Shape193: TShape;
    Shape194: TShape;
    Shape195: TShape;
    btBubinSttExcel: TcxButton;
    btn_AllProc2: TcxButton;
    btBubinSttSearch: TcxButton;
    btn_AllProc1: TcxButton;
    cxComboBox1: TcxComboBox;
    cbKeynumber17: TcxComboBox;
    cxCheckBox1: TcxCheckBox;
    cxTextEdit22: TcxTextEdit;
    cxLabel177: TcxLabel;
    cxLabel185: TcxLabel;
    cxLabel186: TcxLabel;
    lbCustCompany17: TcxLabel;
    Panel30: TPanel;
    Shape196: TShape;
    chkCalAll: TcxRadioButton;
    chkCalY: TcxRadioButton;
    chkCalN: TcxRadioButton;
    Panel32: TPanel;
    Shape197: TShape;
    chkBillAll: TcxRadioButton;
    chkBillY: TcxRadioButton;
    chkBillN: TcxRadioButton;
    CheckBox1: TCheckBox;
    cxLabel187: TcxLabel;
    cb_CalMonth: TcxComboBox;
    cxLabel188: TcxLabel;
    cxLabel189: TcxLabel;
    lb_Year: TcxLabel;
    cxBrNo17: TcxTextEdit;
    cxHdNo17: TcxTextEdit;
    pnl_UseList: TPanel;
    pnl_UseListTitle: TPanel;
    cxButton2: TcxButton;
    btBubinSttListExcel: TcxButton;
    cxGrid17: TcxGrid;
    cgrid_UseList: TcxGridDBTableView;
    cgrid_UseListColumn1: TcxGridDBColumn;
    cxGridDBColumn69: TcxGridDBColumn;
    cxGridDBColumn70: TcxGridDBColumn;
    cxGridDBColumn71: TcxGridDBColumn;
    cxGridDBColumn72: TcxGridDBColumn;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridDBColumn74: TcxGridDBColumn;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridDBColumn79: TcxGridDBColumn;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    cxGridDBColumn85: TcxGridDBColumn;
    cxGridDBColumn86: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    pnl_CalCampInfo: TPanel;
    pnl_Title: TPanel;
    cxButton3: TcxButton;
    cxGroupBox55: TcxGroupBox;
    Shape200: TShape;
    Shape201: TShape;
    Shape202: TShape;
    Shape203: TShape;
    Shape204: TShape;
    Shape205: TShape;
    Shape206: TShape;
    Shape207: TShape;
    Shape208: TShape;
    Shape209: TShape;
    Shape210: TShape;
    cxLabel194: TcxLabel;
    lb_CamInfo1: TcxLabel;
    cxLabel195: TcxLabel;
    lb_CamInfo2: TcxLabel;
    cxLabel196: TcxLabel;
    lb_CamInfo3: TcxLabel;
    cxLabel197: TcxLabel;
    lb_CamInfo4: TcxLabel;
    cxLabel198: TcxLabel;
    cxLabel200: TcxLabel;
    lb_CamInfo6: TcxLabel;
    edt_RowNum: TcxTextEdit;
    cxGroupBox56: TcxGroupBox;
    Shape211: TShape;
    Shape212: TShape;
    Shape213: TShape;
    Shape214: TShape;
    Shape215: TShape;
    Shape216: TShape;
    cxLabel201: TcxLabel;
    lb_CalInfo1: TcxLabel;
    cxLabel202: TcxLabel;
    lb_CalInfo2: TcxLabel;
    cxLabel203: TcxLabel;
    lb_CalInfo3: TcxLabel;
    cxGroupBox57: TcxGroupBox;
    Shape217: TShape;
    Shape218: TShape;
    Shape219: TShape;
    Shape220: TShape;
    cxLabel204: TcxLabel;
    cxLabel205: TcxLabel;
    Panel35: TPanel;
    rb_DepositY: TcxRadioButton;
    rb_DepositN: TcxRadioButton;
    Panel36: TPanel;
    rb_BillY: TcxRadioButton;
    rb_BillN: TcxRadioButton;
    cxLabel206: TcxLabel;
    lbDepositDate: TcxLabel;
    cxLabel208: TcxLabel;
    lbBillDate: TcxLabel;
    btn_InfoSave: TcxButton;
    btn_Close: TcxButton;
    edtBubinCode: TcxTextEdit;
    cxLabel209: TcxLabel;
    cxLabel211: TcxLabel;
    cxLabel212: TcxLabel;
    edt_FinishCnt: TcxTextEdit;
    edt_FinishTCharge: TcxTextEdit;
    edt_OrderCnt: TcxTextEdit;
    cxGroupBox58: TcxGroupBox;
    Shape221: TShape;
    Shape222: TShape;
    Shape223: TShape;
    Shape224: TShape;
    Shape225: TShape;
    btn_CashBill: TcxButton;
    btn_Card: TcxButton;
    cxLabel213: TcxLabel;
    edt_CalMoney: TcxCurrencyEdit;
    cxLabel214: TcxLabel;
    lb_CalInfo4: TcxLabel;
    cxLabel215: TcxLabel;
    lb_CalInfo5: TcxLabel;
    edt_CamInfo5: TcxTextEdit;
    pm_excel8_1: TPopupMenu;
    MenuItem4: TMenuItem;
    pm_excel8_2: TPopupMenu;
    MenuItem5: TMenuItem;
    pm_excel8_3: TPopupMenu;
    MenuItem8: TMenuItem;
    menuCallBell: TMenuItem;
    N1: TMenuItem;
    chk_AllPrint: TcxCheckBox;
    cxGrid1: TcxGrid;
		cxGrid_Angel: TcxGridDBTableView;
    cxGrid_AngelColumn1: TcxGridDBColumn;
    cxGrid_AngelColumn2: TcxGridDBColumn;
    cxGrid_AngelColumn3: TcxGridDBColumn;
    cxGrid_AngelColumn4: TcxGridDBColumn;
    cxGrid_AngelColumn5: TcxGridDBColumn;
    cxGrid_AngelColumn6: TcxGridDBColumn;
    cxGrid_AngelColumn7: TcxGridDBColumn;
    cxGrid_AngelColumn8: TcxGridDBColumn;
    cxGrid_AngelColumn9: TcxGridDBColumn;
    cxGrid_AngelColumn10: TcxGridDBColumn;
    cxGrid_AngelColumn11: TcxGridDBColumn;
    cxGrid_AngelColumn12: TcxGridDBColumn;
    cxGrid_AngelColumn13: TcxGridDBColumn;
    cxGrid_AngelColumn14: TcxGridDBColumn;
    cxGrid_AngelColumn15: TcxGridDBColumn;
    cxGrid_AngelColumn16: TcxGridDBColumn;
    cxGrid_AngelColumn17: TcxGridDBColumn;
    cxGrid_AngelColumn18: TcxGridDBColumn;
    cxGrid_AngelColumn19: TcxGridDBColumn;
    cxGrid_AngelColumn20: TcxGridDBColumn;
    cxGrid_AngelColumn21: TcxGridDBColumn;
    cxGrid_AngelColumn22: TcxGridDBColumn;
    cxGrid_AngelColumn23: TcxGridDBColumn;
    cxGrid_AngelColumn24: TcxGridDBColumn;
    cxGrid_AngelColumn25: TcxGridDBColumn;
    cxGrid_AngelColumn26: TcxGridDBColumn;
    cxGrid_AngelColumn27: TcxGridDBColumn;
    cxGrid_AngelColumn28: TcxGridDBColumn;
    cxGrid_AngelColumn29: TcxGridDBColumn;
    cxGrid_AngelColumn30: TcxGridDBColumn;
    cxGrid_AngelColumn31: TcxGridDBColumn;
    cxGrid_AngelColumn32: TcxGridDBColumn;
    cxGrid_AngelColumn35: TcxGridDBColumn;
    cxGrid_AngelColumn36: TcxGridDBColumn;
    cxGrid_AngelColumn37: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid_AngelColumn33: TcxGridDBColumn;
    cxGrid_AngelColumn34: TcxGridDBColumn;
    cxGrid_AngelColumn38: TcxGridDBColumn;
    cxGrid_AngelColumn39: TcxGridDBColumn;
    cxGrid_AngelColumn40: TcxGridDBColumn;
    cxGrid_AngelColumn41: TcxGridDBColumn;
    cxGrid_AngelColumn42: TcxGridDBColumn;
    cxGrid_AngelColumn43: TcxGridDBColumn;
    cxGrid_AngelColumn44: TcxGridDBColumn;
    cxGrid_AngelColumn45: TcxGridDBColumn;
    cxGrid_AngelColumn46: TcxGridDBColumn;
    cxGrid_AngelColumn47: TcxGridDBColumn;
    btn_14_11: TcxButton;
    cxGBubinSttColumn46: TcxGridBandedColumn;
    cxGBubinSttColumn47: TcxGridBandedColumn;
    cxGBubinSttColumn48: TcxGridBandedColumn;
    cxGBubinSttColumn49: TcxGridBandedColumn;
    cxGBubinSttColumn50: TcxGridBandedColumn;
    cxGBubinSttColumn51: TcxGridBandedColumn;
    cxGBubinSttColumn52: TcxGridBandedColumn;
    cxGBubinSttColumn53: TcxGridBandedColumn;
    cxGBubinSttColumn54: TcxGridBandedColumn;
    cxGBubinSttColumn55: TcxGridBandedColumn;
    cxGBubinSttColumn56: TcxGridBandedColumn;
    cxGBubinSttColumn57: TcxGridBandedColumn;
    cxGBubinSttColumn58: TcxGridBandedColumn;
    cxGBubinSttColumn59: TcxGridBandedColumn;
    cxGBubinSttColumn60: TcxGridBandedColumn;
    cxGBubinSttColumn61: TcxGridBandedColumn;
    cxTabSheet18: TcxTabSheet;
    pnl_CUTB7: TPanel;
    pnl_CUTB7Left: TPanel;
    Shape20: TShape;
    CustView18_1: TcxTreeList;
    cxTreeListColumn8: TcxTreeListColumn;
    cxTreeListColumn9: TcxTreeListColumn;
    cxTreeListColumn10: TcxTreeListColumn;
    cxGroupBox4: TcxGroupBox;
    Shape23: TShape;
    cxLabel26: TcxLabel;
    edt_18_1: TcxTextEdit;
    btn_18_3: TcxButton;
    pnl_CUTB7Body: TPanel;
    cxGrid3: TcxGrid;
		cxGrid_Angel2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
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
    cxGridDBColumn87: TcxGridDBColumn;
    cxGridDBColumn88: TcxGridDBColumn;
    cxGridDBColumn89: TcxGridDBColumn;
    cxGridDBColumn90: TcxGridDBColumn;
    cxGridDBColumn91: TcxGridDBColumn;
    cxGridDBColumn92: TcxGridDBColumn;
    cxGridDBColumn93: TcxGridDBColumn;
    cxGridDBColumn94: TcxGridDBColumn;
    cxGridDBColumn95: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    btn_18_1: TcxButton;
    btn_Date18_1: TcxButton;
    cxDate18_1S: TcxDateEdit;
    cxDate18_1E: TcxDateEdit;
    cxLabel1: TcxLabel;
    btn_18_2: TcxButton;
    cxSplitter4: TcxSplitter;
    cxTreeListColumn11: TcxTreeListColumn;
    cxTreeListColumn12: TcxTreeListColumn;
    lst_BRList: TcxListBox;
    cxGridDBColumn96: TcxGridDBColumn;
    cxGridDBColumn97: TcxGridDBColumn;
    cxProgressBar1: TGauge;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
		pnl_Right: TPanel;
    cxSplitter2: TcxSplitter;
    Panel3: TPanel;
    Shape147: TShape;
    cxLabel207: TcxLabel;
    btn_12_13: TcxButton;
    btn_12_14: TcxButton;
    cxGrid11: TcxGrid;
    CustView12_3: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    CustView10Column3: TcxGridDBColumn;
    CustView10Column4: TcxGridDBColumn;
    CustView10Column10: TcxGridDBColumn;
    CustView10Column12: TcxGridDBColumn;
    CustView10Column11: TcxGridDBColumn;
    CustView10Column5: TcxGridDBColumn;
    CustView10Column6: TcxGridDBColumn;
    CustView10Column7: TcxGridDBColumn;
    CustView10Column8: TcxGridDBColumn;
    CustView10Column9: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox43: TcxGroupBox;
    Shape148: TShape;
    Shape149: TShape;
    Shape150: TShape;
    cxLabel63: TcxLabel;
    cbGubun12_1: TcxComboBox;
    cxLabel103: TcxLabel;
    cxLabel108: TcxLabel;
    edCustName05: TcxTextEdit;
    edCustTel04: TcxTextEdit;
    btn_12_11: TcxButton;
    btn_12_12: TcxButton;
    cxLabel216: TcxLabel;
    Panel7: TPanel;
    Shape151: TShape;
    cxGridCustom: TcxGrid;
    cxViewCustom: TcxGridDBTableView;
    cxCol1: TcxGridDBColumn;
    cxCol2: TcxGridDBColumn;
    cxCol3: TcxGridDBColumn;
    cxCol4: TcxGridDBColumn;
    cxCol5: TcxGridDBColumn;
    cxCol6: TcxGridDBColumn;
    cxCol7: TcxGridDBColumn;
    cxCol8: TcxGridDBColumn;
    cxCol9: TcxGridDBColumn;
    cxCol10: TcxGridDBColumn;
    cxCol11: TcxGridDBColumn;
    cxCol12: TcxGridDBColumn;
    cxCol13: TcxGridDBColumn;
    cxCol14: TcxGridDBColumn;
    cxLevelCustom: TcxGridLevel;
    cxGrid10: TcxGrid;
    CustView12_2: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    cxGroupBox44: TcxGroupBox;
    Shape152: TShape;
    edBubinName02: TcxTextEdit;
    btn_12_6: TcxButton;
    btn_12_5: TcxButton;
    btn_12_7: TcxButton;
    btn_12_8: TcxButton;
    btn_12_9: TcxButton;
    btn_12_10: TcxButton;
    cbbResultSearch: TcxComboBox;
    edtResultSearch: TcxTextEdit;
    lbl2: TcxLabel;
    cxTextEdit15: TcxTextEdit;
    pnl_Top: TcxGroupBox;
    cxLabel7: TcxLabel;
    edName03: TcxTextEdit;
    edName01: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel2: TcxLabel;
    dtRegDate: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxLabel8: TcxLabel;
    cxButton1: TcxButton;
    cxLabel19: TcxLabel;
    edWebID: TcxTextEdit;
    edWebPW: TcxTextEdit;
    cxLabel20: TcxLabel;
    btn_WebId: TcxButton;
    btn_WebPw: TcxButton;
    edCbCode: TEdit;
    cxLimitCardVat: TcxComboBox;
    cxButton5: TcxButton;
    pnl_MakeId: TcxGroupBox;
    cxLabel44: TcxLabel;
    edt_WebIdFirst: TcxTextEdit;
    cxLabel45: TcxLabel;
    edt_WebPW1: TcxTextEdit;
    cxLabel46: TcxLabel;
    edt_WebPW2: TcxTextEdit;
    btn_IdCheck: TcxButton;
    btn_Confirm: TcxButton;
    btn_IDCheckClose: TcxButton;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    lb_Date01: TcxLabel;
    lb_Date02: TcxLabel;
    lb_UseCnt01: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel11: TcxLabel;
    edtCustStateMemo: TcxTextEdit;
    edtCustMemo: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel27: TcxLabel;
    dtFinDate: TcxDateEdit;
    pnl_Bill: TPanel;
    Shape2: TShape;
    rbList01: TcxRadioButton;
    rbList02: TcxRadioButton;
    rbPayMethodPost: TcxRadioButton;
    cxLabel15: TcxLabel;
    pnl_Vat: TPanel;
    rb_SurtaxY: TcxRadioButton;
    rb_SurtaxN: TcxRadioButton;
    cxLabel22: TcxLabel;
    cb_Contract2: TcxComboBox;
    Shape4: TShape;
    btn_14_5_C: TcxButton;
    Shape3: TShape;
    chk_Masking: TcxCheckBox;
    cxGrid2: TcxGrid;
    cxGrid_Angel2_Masking: TcxGridDBTableView;
    cxGridDBColumn98: TcxGridDBColumn;
    cxGridDBColumn99: TcxGridDBColumn;
    cxGridDBColumn100: TcxGridDBColumn;
    cxGridDBColumn101: TcxGridDBColumn;
    cxGridDBColumn102: TcxGridDBColumn;
    cxGridDBColumn103: TcxGridDBColumn;
    cxGridDBColumn104: TcxGridDBColumn;
    cxGridDBColumn105: TcxGridDBColumn;
    cxGridDBColumn106: TcxGridDBColumn;
    cxGridDBColumn107: TcxGridDBColumn;
    cxGridDBColumn108: TcxGridDBColumn;
    cxGridDBColumn109: TcxGridDBColumn;
    cxGridDBColumn110: TcxGridDBColumn;
    cxGridDBColumn111: TcxGridDBColumn;
    cxGridDBColumn112: TcxGridDBColumn;
    cxGridDBColumn113: TcxGridDBColumn;
    cxGridDBColumn114: TcxGridDBColumn;
    cxGridDBColumn115: TcxGridDBColumn;
    cxGridDBColumn116: TcxGridDBColumn;
    cxGridDBColumn117: TcxGridDBColumn;
    cxGridDBColumn118: TcxGridDBColumn;
    cxGridDBColumn119: TcxGridDBColumn;
    cxGridDBColumn120: TcxGridDBColumn;
    cxGridDBColumn121: TcxGridDBColumn;
    cxGridDBColumn122: TcxGridDBColumn;
    cxGridDBColumn123: TcxGridDBColumn;
    cxGridDBColumn124: TcxGridDBColumn;
    cxGridDBColumn125: TcxGridDBColumn;
    cxGridDBColumn126: TcxGridDBColumn;
    cxGridDBColumn127: TcxGridDBColumn;
    cxGridDBColumn128: TcxGridDBColumn;
    cxGridDBColumn129: TcxGridDBColumn;
    cxGridDBColumn130: TcxGridDBColumn;
    cxGridDBColumn131: TcxGridDBColumn;
    cxGridDBColumn132: TcxGridDBColumn;
    cxGridDBColumn133: TcxGridDBColumn;
    cxGridDBColumn134: TcxGridDBColumn;
    cxGridDBColumn135: TcxGridDBColumn;
    cxGridDBColumn136: TcxGridDBColumn;
    cxGridDBColumn137: TcxGridDBColumn;
    cxGridDBColumn138: TcxGridDBColumn;
    cxGridDBColumn139: TcxGridDBColumn;
    cxGridDBColumn140: TcxGridDBColumn;
    cxGridDBColumn141: TcxGridDBColumn;
    cxGridDBColumn142: TcxGridDBColumn;
    cxGridDBColumn143: TcxGridDBColumn;
    cxGridDBColumn144: TcxGridDBColumn;
    cxGridDBColumn145: TcxGridDBColumn;
    cxGridDBColumn146: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    pm_excel8_7: TPopupMenu;
    MenuItem9: TMenuItem;
    cbWhere18: TcxComboBox;
    edtKeyWord18: TcxTextEdit;
    CustView12_2Column1: TcxGridDBColumn;
    CustView12_3Column1: TcxGridDBColumn;
    CustView13_2Column1: TcxGridBandedColumn;
    cxViewCustomColumn1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MenuItem33Click(Sender: TObject);
    procedure MenuItem34Click(Sender: TObject);
    procedure MenuItem35Click(Sender: TObject);
    procedure MenuItem36Click(Sender: TObject);
    procedure MenuItem37Click(Sender: TObject);
    procedure RbButton1MouseDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAll2Click(Sender: TObject);
		procedure btn_Date2_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date3_1Click(Sender: TObject);
    procedure N_YesterdayClick(Sender: TObject);
    procedure N_WeekClick(Sender: TObject);
    procedure N_MonthClick(Sender: TObject);
    procedure N_1Start31EndClick(Sender: TObject);
    procedure N_TodayClick(Sender: TObject);
    procedure btn_Date3_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date3_2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date9_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date10_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date11_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb_ContractClick(Sender: TObject);
		procedure btn_12_2Click(Sender: TObject);
    procedure btn_12_3Click(Sender: TObject);
		procedure btn_12_4Click(Sender: TObject);
    procedure CustView12_1SelectionChanged(Sender: TObject);
    procedure btn_12_5Click(Sender: TObject);
    procedure btn_12_6Click(Sender: TObject);
    procedure btn_12_7Click(Sender: TObject);
		procedure btn_12_8Click(Sender: TObject);
    procedure btn_12_9Click(Sender: TObject);
    procedure btn_12_10Click(Sender: TObject);
    procedure cbbResultSearchPropertiesChange(Sender: TObject);
    procedure CustView12_2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
		procedure CustView12_2ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CustView12_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView12_2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edCustName05KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure btn_12_11Click(Sender: TObject);
    procedure btn_12_12Click(Sender: TObject);
    procedure CustView12_3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CustView12_3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView12_3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_13_1Click(Sender: TObject);
		procedure btn_13_2Click(Sender: TObject);
    procedure chkCust13Type01Click(Sender: TObject);
    procedure btn_Date14_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxChkTitlePropertiesChange(Sender: TObject);
    procedure cxdBubinSttSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure btn_14_1Click(Sender: TObject);
    procedure btn_14_2Click(Sender: TObject);
    procedure btn_14_3Click(Sender: TObject);
    procedure btn_14_4Click(Sender: TObject);
    procedure btn_14_5Click(Sender: TObject);
    procedure btn_14_6Click(Sender: TObject);
		procedure cxGBubinSttCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_14_7Click(Sender: TObject);
    procedure btn_14_8Click(Sender: TObject);
    procedure btn_14_9Click(Sender: TObject);
    procedure btn_14_10Click(Sender: TObject);
		procedure cxGroupBox48MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxGroupBox49MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnCloseClick(Sender: TObject);
    procedure btn_15_1Click(Sender: TObject);
    procedure rbBubinAuthchkDate01Click(Sender: TObject);
    procedure btn_15_2Click(Sender: TObject);
    procedure btn_Date16_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_16_1Click(Sender: TObject);
    procedure btn_16_2Click(Sender: TObject);
    procedure chkCalAllClick(Sender: TObject);
    procedure chkBillAllClick(Sender: TObject);
		procedure btBubinSttSearchClick(Sender: TObject);
    procedure btn_AllProc2Click(Sender: TObject);
    procedure btBubinSttExcelClick(Sender: TObject);
		procedure btn_AllProc1Click(Sender: TObject);
    procedure rb_DepositYClick(Sender: TObject);
    procedure rb_BillYClick(Sender: TObject);
    procedure btn_InfoSaveClick(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btn_CardClick(Sender: TObject);
    procedure btn_CashBillClick(Sender: TObject);
    procedure cbKeynumber01Click(Sender: TObject);
    procedure btn_12_13Click(Sender: TObject);
    procedure btn_12_14Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
		procedure cxGridBebinListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxColGLColorStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxColCGColorStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure Label7Click(Sender: TObject);
    procedure cgrid_CalMonthCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure btn_Date1_2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date1_3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date1_4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date1_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Date4_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
		procedure btn_Date13_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
		procedure cxGBubinSttBands1HeaderClick(Sender: TObject);
    procedure chkCust14Type01Click(Sender: TObject);
    procedure cxGBubinSttBands0HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands2HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands3HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands4HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands6HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands32HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands33HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands7HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands8HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands9HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands10HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands11HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands12HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands13HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands14HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands15HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands16HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands17HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands18HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands19HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands47HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands48HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands21HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands22HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands23HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands24HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands25HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands34HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands35HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands36HeaderClick(Sender: TObject);
		procedure cxGBubinSttBands39HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands40HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands37HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands38HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands41HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands42HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands43HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands44HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands28HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands45HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands46HeaderClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure cxcbBubinAccPagePropertiesChange(Sender: TObject);
    procedure edBubinName01KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtResultSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btn_14_11Click(Sender: TObject);
    procedure btn_12_1Click(Sender: TObject);
		procedure btn_18_3Click(Sender: TObject);
		procedure edt_18_1KeyDown(Sender: TObject; var Key: Word;
			Shift: TShiftState);
    procedure edt_18_1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_18_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lst_BRListDblClick(Sender: TObject);
    procedure lst_BRListExit(Sender: TObject);
		procedure lst_BRListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_18_1Enter(Sender: TObject);
    procedure edt_18_1Exit(Sender: TObject);
		procedure btn_18_1Click(Sender: TObject);
    procedure cxDate18_1SKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDate18_1EKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure btn_18_2Click(Sender: TObject);
    procedure btn_Date18_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGrid_Angel2DataControllerSortingChanged(Sender: TObject);
    procedure cxGrid_Angel2ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CustView12_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
		procedure CustView12_1Click(Sender: TObject);
    procedure CustView12_1FocusedColumnChanged(Sender: TcxCustomTreeList;
      APrevFocusedColumn, AFocusedColumn: TcxTreeListColumn);
    procedure btn_WebIdClick(Sender: TObject);
    procedure btn_WebPwClick(Sender: TObject);
    procedure edt_WebPW1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_WebPW2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_WebPW2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_IdCheckClick(Sender: TObject);
		procedure btn_ConfirmClick(Sender: TObject);
    procedure btn_IDCheckCloseClick(Sender: TObject);
    procedure edt_WebIdFirstKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton5Click(Sender: TObject);
    procedure CustView12_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MenuItem9Click(Sender: TObject);
    procedure pm_excel8_7Popup(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGBubinSttDataControllerSortingChanged(Sender: TObject);
    procedure cbWhere18PropertiesChange(Sender: TObject);
    procedure edtKeyWord18KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGBubinSttKeyPress(Sender: TObject; var Key: Char);
    procedure cxGBubinSttCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CustView12_2DataControllerSortingChanged(Sender: TObject);
    procedure CustView12_3DataControllerSortingChanged(Sender: TObject);
    procedure CustView12_3ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
	private
		{ Private declarations }
		UsrNameReg: TRegistry;
    sFooter, sHeader : string;
    gbControlKeyDown: Boolean;

    // �����ٿ� ����(��ȸ�� ��ȸ���� ���)
    FExcelDownBubin,
    FExcelDownBubinCust,
    FExcelDownBubinNormal,
    FExcelDownBubinUsed,
		FExcelDownBubinDaily,
		FExcelDownBubinAuth,
		FExcelDownWithHolding: string;

		FHdNo, FBrNo : string;
		gIndex : Integer;

		iFinishCnt, iOrderCnt, iFinishCharge, iFinishTCharge, iRealCharge, iDeposit, iBill, iBCode, iHdNo, iBrNo : integer;
		giCustView12_1_SelCell : integer;  //���θ���Ʈ ���� cell 20210706 KHS
		gsCustViewParam : string;
		searchBRlist: TStringList;  //���� ����� �˻� �� �ε��� ���� 2017.09.16  KHS
		bRightClick : Boolean;   //��Ŭ���� ��� �ҼӰ�����Ʈ ��ȸ ���� 20210705 KHS 1577��û
		gbCustView12_1_SetFocus : Boolean; //���θ���Ʈ���� Ŀ���̵��� �˻�������� ��Ŀ�� �̵��� �������� ��� 20210728 KHS
		procedure proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean = True);
    procedure cxGridCopy(ASource, ATarget: TcxGridDBTableView; AKeyIndex: Integer; AKeyValue: string);
    procedure RequestData(AData: string);
    function GetActiveDateControl(AIndex : integer; var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure CustSetDateControl(AGubun: Integer; AStDt, AEdDt: TcxDateEdit);
    procedure proc_delete_gbroup(sCode: string);
		procedure proc_BubinCust_Search(iType: Integer);
    procedure proc_NotBubinCust_Search;
		procedure proc_BubinCust_HIS;
		procedure proc_BubinManage2;
		procedure proc_bubinHis;
		procedure proc_BubinStt_Select(iRow: Integer);
		procedure proc_SaveBubinDate(AYyMm, AHdNo, ABrNo, ABubinCode, ADeposit, ABill, AFinishCnt, AFinishCharge, AOrderCnt : string);
    procedure proc_cust_bubin_Modify(iType: Integer; advGrid:TcxGridDBTableView);
		procedure proc_BubinList;
		procedure proc_BrList(AStr : string);
    procedure SetTree_ListItem(sHdcd, sBrcd: String; idx: Integer);
		function func_BrNameList_Search: boolean;
		function Func_CheckBrNo : string;
		procedure proc_init;
		procedure proc_search_bubin_id;
		procedure proc_search_bubin(ACbCode, ABrNo : string);
		procedure proc_Set_ExcelMasking;
	public
		{ Public declarations }
		ABubinParam : string;      //ī������� ��������
		BBINCardPayInfo, BBINCardPaySeq, BBINCardTranNo : string;
		procedure proc_BrNameSet;
		procedure proc_Branch_Change;
		procedure proc_BubinManage;
		// ���� ���� ó��
		procedure proc_recieve(slList: TStringList);
		function func_buninSearch(sBrNo, sKeyNum, sCode: string): string;
		function GetDeptCustomerCount(AHdNo, ABrNo, ADeptCode: string): Integer;
    procedure proc_bubinSttSearch(vType : Integer = 0; vSlip : String = '');
  end;

var
  Frm_CUT1: TFrm_CUT1;

implementation

{$R *.dfm}
uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_Query,
  xe_packet, xe_xml, xe_CUT012, xe_CUT011, xe_Flash, xe_SMS, xe_structure,
	xe_CUT03, xe_CUT02, xe_CUT07 , xe_CUT09, xe_CUT013, xe_CUT019,
  xe_Jon03, xe_JON51, xe_BTN01, xe_BTN, xe_SearchWord, xe_JON34B;

procedure TFrm_CUT1.btBubinSttExcelClick(Sender: TObject);
begin
	if cgrid_CalMonth.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
    Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if TCK_USER_PER.COM_CustExcelDown <> '1' then
	begin
    ShowMessage('[��ȸ�������ٿ�] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
  end;

  if TcxButton(sender).Tag = 0 then
  begin
    Frm_Main.sgExcel := '����_������.xls';
    Frm_Main.sgRpExcel := Format('����>������]%s��/%s', [GetMoneyStr(cgrid_CalMonth.DataController.RecordCount), FExcelDownWithHolding]);
    Frm_Main.cxGridExcel := cxGrid16;
  end else
  if TcxButton(sender).Tag = 1 then
  begin
    Frm_Main.sgExcel := '����_������ �̿� ���� ����Ʈ.xls';
    Frm_Main.sgRpExcel := Format('����>������ �̿� ���� ����Ʈ]%s��/%s', [GetMoneyStr(cgrid_UseList.DataController.RecordCount), FExcelDownWithHolding]);
    Frm_Main.cxGridExcel := cxGrid17;
  end;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_CUT1.btBubinSttSearchClick(Sender: TObject);
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  xdom: MSDomDocument;
	lst_Result: IXMLDomNodeList;
  I, ErrCode, iRow : Integer;
  ls_MSG_Err: string;
  ls_Rcrd: TStringList;
begin
	if (GT_SEL_BRNO.GUBUN <> '1') and (cxPageControl1.ActivePageIndex <> 6) then
	begin
    GMessagebox('���ξ�ü ��ȸ�� ���縦 �����ϼž� �մϴ�.', CDMSE);
    Exit;
  end;

  Try
		Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;

    ls_TxLoad := GTx_UnitXmlLoad('ACC12010.xml');

    case cb_CalMonth.ItemIndex of
      0 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '01');
      1 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '02');
      2 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '03');
      3 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '04');
      4 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '05');
      5 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '06');
      6 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '07');
      7 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '08');
      8 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '09');
      9 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '10');
      10: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '11');
      11: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '12');
    end;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPayment'  , chkCalAll.Hint);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBill', chkBillAll.Hint);
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo'  , GT_SEL_BRNO.HDNO);
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo'  , GT_SEL_BRNO.BrNo);
		end else
		begin
      if GT_SEL_BRNO.GUBUN = '0' then
      begin
        ls_TxLoad := StringReplace(ls_TxLoad, 'strHdNo',     GT_USERIF.HD, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'strBrNo',     GT_USERIF.BR, [rfReplaceAll]);
      end else
      begin
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo'  , GT_SEL_BRNO.HDNO);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo'  , GT_SEL_BRNO.BrNo);
      end;
		end;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strCorpName'  , cxTextEdit22.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString'   , GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
		Screen.Cursor := crHourGlass;
		cxGroupBox53.Enabled := False;
    try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
      begin
				rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
					ls_rxxml := rv_str;
          xdom := CoMSDomDocument.Create;
          try
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
						if not xdom.loadXML(ls_rxxml) then 
						begin
							cxGroupBox53.Enabled := True;
							Exit;
						end;

						cgrid_CalMonth.DataController.SetRecordCount(0);
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');
						ls_Rcrd := TStringList.Create;
						cgrid_CalMonth.BeginUpdate;
						try
							for I := 0 to lst_Result.length - 1 do
							begin
								GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
								iRow := cgrid_CalMonth.DataController.AppendRecord;
								cgrid_CalMonth.DataController.Values[iRow, 0] := inttostr(iRow + 1);
								cgrid_CalMonth.DataController.Values[iRow, 1] := False;
								if ls_Rcrd[2] = 'y' then
									cgrid_CalMonth.DataController.Values[iRow, 2] := '����'
								else
									cgrid_CalMonth.DataController.Values[iRow, 2] := '������';
								cgrid_CalMonth.DataController.Values[iRow, 3] := ls_Rcrd[10];  //�����ڵ�
								cgrid_CalMonth.DataController.Values[iRow, 4] := scb_HdNm[scb_HdNo.IndexOf(ls_Rcrd[10])];  //�����
								cgrid_CalMonth.DataController.Values[iRow, 5] := ls_Rcrd[11];  //�����ڵ�
								cgrid_CalMonth.DataController.Values[iRow, 6] := scb_BranchName[scb_BranchCode.IndexOf(ls_Rcrd[11])];  //�����
								cgrid_CalMonth.DataController.Values[iRow, 7] := ls_Rcrd[0];  //�����ڵ�
								cgrid_CalMonth.DataController.Values[iRow, 8] := ls_Rcrd[1];  //���θ�
								cgrid_CalMonth.DataController.Values[iRow, iFinishCnt]    := ls_Rcrd[3];  //�̿�Ƚ��    9
								cgrid_CalMonth.DataController.Values[iRow, iFinishCharge] := ls_Rcrd[4];  //�̿�ݾ� 10
								if ls_Rcrd[20] = 'y' then
								begin
									cgrid_CalMonth.DataController.Values[iRow, iFinishTCharge] := ls_Rcrd[6];  //���հ�   12
									cgrid_CalMonth.DataController.Values[iRow,11] := ls_Rcrd[5];  //�ΰ���
									cgrid_CalMonth.DataController.Values[iRow,13] := '����';  //�ΰ������뿩��
									cgrid_CalMonth.DataController.Values[iRow,iRealCharge] := StrToIntDef(ls_Rcrd[4],0) + StrToIntDef(ls_Rcrd[5],0);  //������ݾ� 14
								end else
								begin
									cgrid_CalMonth.DataController.Values[iRow, iFinishTCharge] := ls_Rcrd[4];  //���հ�   12
									cgrid_CalMonth.DataController.Values[iRow,11] := 0;  //�ΰ���
									cgrid_CalMonth.DataController.Values[iRow,13] := '������';  //�ΰ������뿩��
									cgrid_CalMonth.DataController.Values[iRow,iRealCharge] := ls_Rcrd[4]; //������ݾ� 14
								end;

								if ls_Rcrd[13] = '0' then
									cgrid_CalMonth.DataController.Values[iRow,15] := '����'  //��������(0.����, 1.ī��)
								else if ls_Rcrd[13] = '1' then
									cgrid_CalMonth.DataController.Values[iRow,15] := 'ī��'  //��������(0.����, 1.ī��)
								else
									cgrid_CalMonth.DataController.Values[iRow,15] := '';  //��������(0.����, 1.ī��)
								cgrid_CalMonth.DataController.Values[iRow, 16] := ls_Rcrd[12];  //������ȣ

								if ls_Rcrd[8] = 'y' then
									cgrid_CalMonth.DataController.Values[iRow,iDeposit] := '�Ա�'      //17
								else
									cgrid_CalMonth.DataController.Values[iRow,iDeposit] := '���Ա�';
								cgrid_CalMonth.DataController.Values[iRow, 18] := ls_Rcrd[22];  //�Ա�ó������

								if ls_Rcrd[7] = 'y' then
									cgrid_CalMonth.DataController.Values[iRow,iBill] := '����'       //19
								else
									cgrid_CalMonth.DataController.Values[iRow,iBill] := '�̹���';
								cgrid_CalMonth.DataController.Values[iRow, 20] := ls_Rcrd[21];  //��꼭����ó������

								cgrid_CalMonth.DataController.Values[iRow, iOrderCnt] := ls_Rcrd[9];  //�����Ǽ�  21
								cgrid_CalMonth.DataController.Values[iRow, 22] := ls_Rcrd[19];  //����Ⱓ  22
								if ls_Rcrd[18] = '����' then
									cgrid_CalMonth.DataController.Values[iRow, 23] := ls_Rcrd[18]
								else if ls_Rcrd[18] = '' then
									cgrid_CalMonth.DataController.Values[iRow, 23] := ''
								else
									cgrid_CalMonth.DataController.Values[iRow, 23] := ls_Rcrd[18] + '��';  //��������  23
								cgrid_CalMonth.DataController.Values[iRow, 24] := ls_Rcrd[16];  //E-mail  24
								cgrid_CalMonth.DataController.Values[iRow, 25] := ls_Rcrd[14];  //�����  25
								cgrid_CalMonth.DataController.Values[iRow, 26] := StrToCall(ls_Rcrd[15]);  //����ڿ���ó 26
								cgrid_CalMonth.DataController.Values[iRow, 27] := ls_Rcrd[17];  //����ڹ�ȣ 27
							end;
						finally
							cgrid_CalMonth.EndUpdate;
							ls_Rcrd.Free;
							Screen.Cursor := crDefault;
							Frm_Flash.Hide;
						end;

						if cgrid_CalMonth.DataController.RecordCount = 0 then
						begin
							GMessagebox('�˻��� ������ �����ϴ�.', CDMSE);
						end;
					finally
            Screen.Cursor := crDefault;
            xdom := Nil;
					end;
				end;
      end;
    finally
      slRcvList.Free;
			Screen.Cursor := crDefault;
			cxGroupBox53.Enabled := True;
    end;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			cxGroupBox53.Enabled := True;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_CUT1.btnAll2Click(Sender: TObject);
begin
	pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUT1.btnCloseClick(Sender: TObject);
var
  i: Integer;
begin
  if Gauge1.Max <> Gauge1.Position then
  begin
    if GMessagebox('���� �۾����� ���Դϴ�.' + #13#10 + '���� �۾��� �����Ͻðڽ��ϱ�?', CDMSQ) = IDOK then
    begin
			cxGBubinStt.BeginUpdate;
      for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
      begin
        cxGBubinStt.DataController.Values[i, 1] := '0';
      end;
      cxGBubinStt.EndUpdate;
      pnl_BubinAccStatus.Visible := False;
    end;
  end else
  begin
    pnl_BubinAccStatus.Visible := False;
  end;
end;

procedure TFrm_CUT1.cbbResultSearchPropertiesChange(Sender: TObject);
begin
  edtResultSearch.Enabled := (TcxComboBox(Sender).Text <> '��ü');

  if edtResultSearch.Enabled then
    edtResultSearch.SetFocus;
end;

procedure TFrm_CUT1.cbKeynumber01Click(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
  iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then Exit;
  if GT_USERIF.LV = '60' then
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      if TcxComboBox(Sender).Text = '��ü' then
      begin
				sName := '[' + GT_SEL_BRNO.HDNO + '] ��ü';
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
				lbCustCompany12.Caption := sName;
				cxHdNo12.Text := sHdNo;
				cxBrNo12.Text := sBrNo;
				CustView12_1.Root.TreeList.Clear;
				proc_BubinManage;
				CustView12_3.DataController.SetRecordCount(0);
				cxGridBebinList.DataController.SetRecordCount(0);
			end;
		1:
			begin
				lbCustCompany13.Caption := sName;
				cxHdNo13.Text := sHdNo;
				cxBrNo13.Text := sBrNo;
				CustView13_1.Root.TreeList.Clear;
				proc_BubinManage2;
			end;
		2:
			begin
				lbCustCompany14.Caption := sName;
				cxHdNo14.Text := sHdNo;
				cxBrNo14.Text := sBrNo;
			end;
		3:
			begin
				lbCustCompany15.Caption := sName;
				cxHdNo15.Text := sHdNo;
				cxBrNo15.Text := sBrNo;
			end;
		4:
			begin
				lbCustCompany16.Caption := sName;
				cxHdNo16.Text := sHdNo;
				cxBrNo16.Text := sBrNo;
			end;
	end;
end;

procedure TFrm_CUT1.cbWhere18PropertiesChange(Sender: TObject);
begin
  if cbWhere18.ItemIndex = 0 then
  begin
    edtKeyWord18.Clear;
    edtKeyWord18.Enabled := False;
  end else edtKeyWord18.Enabled := True;
end;

procedure TFrm_CUT1.cb_ContractClick(Sender: TObject);
begin
	proc_BubinManage;
end;

procedure TFrm_CUT1.cgrid_CalMonthCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
	iCol, iChoiceRow: Integer;
  Param, sYearMm : string;
  iRow, i, ErrCode: Integer;
  xdom: MSDomDocument;
  XmlData, ErrMsg: string;
  lst_Result, lst_Count: IXMLDomNodeList;
  ls_Rcrd: TStringList;
begin
  SetDebugeWrite('Frm_CUT1.cgrid_CalMonthCellDblClick');

  try
    if (AShift = [ssright]) then Exit;
    iCol := ACellViewInfo.Item.FocusedCellViewInfo.Item.Index;
    iChoiceRow := cgrid_CalMonth.DataController.FocusedRecordIndex;
    FHdNo := cgrid_CalMonth.DataController.Values[iChoiceRow, iHDNo];
    FBrNo := cgrid_CalMonth.DataController.Values[iChoiceRow, iBrNo];
    case cb_CalMonth.ItemIndex of
      0 : sYearMm := lb_Year.Caption + '01';
      1 : sYearMm := lb_Year.Caption + '02';
      2 : sYearMm := lb_Year.Caption + '03';
      3 : sYearMm := lb_Year.Caption + '04';
      4 : sYearMm := lb_Year.Caption + '05';
      5 : sYearMm := lb_Year.Caption + '06';
      6 : sYearMm := lb_Year.Caption + '07';
      7 : sYearMm := lb_Year.Caption + '08';
      8 : sYearMm := lb_Year.Caption + '09';
      9 : sYearMm := lb_Year.Caption + '10';
      10: sYearMm := lb_Year.Caption + '11';
      11: sYearMm := lb_Year.Caption + '12';
    end;

    ABubinParam:= FHdNo;
    ABubinParam:= ABubinParam + '��' + FBrNo;
    ABubinParam:= ABubinParam + '��' + sYearMm;
    ABubinParam:= ABubinParam + '��' + cgrid_CalMonth.DataController.Values[iChoiceRow, iBCode];
    Case iCol of
      9 , 21: //�̿�Ƚ��9, �����Ǽ�21
      begin
        Param := cgrid_CalMonth.DataController.Values[iChoiceRow, iBCode];
        Param := Param + '��' + sYearMm;
        Param := Param + '��' + FHdNo;
        Param := Param + '��' + FBrNo;
        if iCol = 9 then
        begin
          Param := Param + '��' + 'y';
          pnl_UseListTitle.Caption := sYearMm + '[' + cgrid_CalMonth.DataController.Values[iChoiceRow, 8] + ']�̿볻�� ����Ʈ(�̿�Ƚ��)';
        end else
        begin
          Param := Param + '��' + 'n';
          pnl_UseListTitle.Caption := sYearMm + '[' + cgrid_CalMonth.DataController.Values[iChoiceRow, 8] + ']�̿볻�� ����Ʈ(����Ƚ��)';
        end;

        if not RequestBase(GetSel06('GET_CUST_BGROUP_STT_SEARCH', 'MNG_BGROUP.GET_CUST_BGROUP_STT_SEARCH', '10000', Param), XmlData, ErrCode, ErrMsg) then
        begin
          GMessagebox(Format('�̿�Ƚ�� ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
          Exit;
        end;

        xdom := ComsDomDocument.Create;
        try
          if not xdom.loadXML(XmlData) then
          begin
            Screen.Cursor := crDefault;
            Exit;
          end;

          lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
          if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text, 0) > 0 then
          begin
           	pnl_UseList.Left := (Width - pnl_UseList.Width) div 2;
          	pnl_UseList.top  := (Height - pnl_UseList.Height) div 2;
            pnl_UseList.Visible := True;
            cgrid_UseList.DataController.SetRecordCount(0);

            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            cgrid_UseList.BeginUpdate;
            try
              for I := 0 to lst_Result.length - 1 do
              begin
                GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
                iRow := cgrid_UseList.DataController.AppendRecord;
                cgrid_UseList.DataController.Values[iRow, 0]  := inttostr(iRow + 1);
                cgrid_UseList.DataController.Values[iRow, 1]  := ls_Rcrd[21];        //�Ϸ�����
                cgrid_UseList.DataController.Values[iRow, 2]  := ls_Rcrd[0];         //�����
                cgrid_UseList.DataController.Values[iRow, 3]  := ls_Rcrd[1];                 // ��ǥ��ȣ
                cgrid_UseList.DataController.Values[iRow, 4]  := '';         //��������
                cgrid_UseList.DataController.Values[iRow, 5]  := ls_Rcrd[2];         //������ȣ
                cgrid_UseList.DataController.Values[iRow, 6]  := ls_Rcrd[3];         //����
                cgrid_UseList.DataController.Values[iRow, 7]  := StrToCall(ls_Rcrd[4]);         //����ȣ
                cgrid_UseList.DataController.Values[iRow, 8]  := ls_Rcrd[ 5] + ' ' + ls_Rcrd[6] + ' ' + ls_Rcrd[7]  + ' ' + ls_Rcrd[8]  + ' ' + ls_Rcrd[9];  //�����1-5
                cgrid_UseList.DataController.Values[iRow, 9]  := ls_Rcrd[10] + ' ' + ls_Rcrd[11]+ ' ' + ls_Rcrd[12] + ' ' + ls_Rcrd[13] + ' ' + ls_Rcrd[14]; //������1-5
                cgrid_UseList.DataController.Values[iRow, 10] := ls_Rcrd[15] + ' ' + ls_Rcrd[16]+ ' ' + ls_Rcrd[17] + ' ' + ls_Rcrd[18] + ' ' + ls_Rcrd[19]; //������1-5
                cgrid_UseList.DataController.Values[iRow, 11] := ls_Rcrd[20];     ;  //���ð�
                cgrid_UseList.DataController.Values[iRow, 12] := '';
                cgrid_UseList.DataController.Values[iRow, 13] := ls_Rcrd[22];       //�Ÿ�
                cgrid_UseList.DataController.Values[iRow, 14] := ls_Rcrd[23];       //�������
                cgrid_UseList.DataController.Values[iRow, 15] := ls_Rcrd[24];       //��������
                cgrid_UseList.DataController.Values[iRow, 16] := ls_Rcrd[25];       //�����޾�
                cgrid_UseList.DataController.Values[iRow, 17] := ls_Rcrd[26];       //�������
                cgrid_UseList.DataController.Values[iRow, 18] := ls_Rcrd[27];       //�⺻���
              end;
            finally
              cgrid_UseList.EndUpdate;
              ls_Rcrd.Free;
              Screen.Cursor := crDefault;
              Frm_Flash.Hide;
              xdom := Nil;
            end;
          end;
        except
          cgrid_UseList.EndUpdate;
          ls_Rcrd.Free;
          Screen.Cursor := crDefault;
          Frm_Flash.Hide;
        end;
      end else
      begin
        ////////////////////////////////////////////////////////////���������� â����//////////////////////////////////////////
       	pnl_CalCampInfo.Left := (Width - pnl_CalCampInfo.Width) div 2;
       	pnl_CalCampInfo.top  := (Height - pnl_CalCampInfo.Height) div 2;
        pnl_CalCampInfo.Visible := True;

        edtBubinCode.Text := cgrid_CalMonth.DataController.Values[iChoiceRow, 7];
        pnl_Title.Caption := '[' + cgrid_CalMonth.DataController.Values[iChoiceRow, 8] + '] �� ���� �� ����';
        lb_CamInfo1.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 25]; //��꼭�����
        lb_CamInfo2.Caption := StrToCall(cgrid_CalMonth.DataController.Values[iChoiceRow, 26]); //��꼭����� ����ó
        lb_CamInfo3.Caption := ''; //�޸�
        lb_CamInfo4.Caption := ''; //�ּ�
        edt_CamInfo5.Text   := cgrid_CalMonth.DataController.Values[iChoiceRow, 24];
        lb_CamInfo6.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 27];
        lb_CalInfo1.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 23];
        lb_CalInfo2.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 22];
        lb_CalInfo3.Caption := '�ΰ��� ' + cgrid_CalMonth.DataController.Values[iChoiceRow, 13];
        if cgrid_CalMonth.DataController.Values[iChoiceRow,iDeposit] = '�Ա�' then rb_DepositY.Checked := True
        else                                                                       rb_DepositN.Checked := True;
        if cgrid_CalMonth.DataController.Values[iChoiceRow,iBill]    = '����' then rb_BillY.Checked    := True
        else                                                                       rb_BillN.Checked    := True;
        lb_CalInfo4.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 15]; //��������
        lb_CalInfo5.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 16]; //�����Ϸù�ȣ
        BBINCardPaySeq      := cgrid_CalMonth.DataController.Values[iChoiceRow, 16]; //�����Ϸù�ȣ

        lbDepositDate.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 18];
        lbBillDate.Caption    := cgrid_CalMonth.DataController.Values[iChoiceRow, 20];

        edt_FinishCnt.Text    := cgrid_CalMonth.DataController.Values[iChoiceRow, iFinishCnt];
        edt_FinishTCharge.Text:= cgrid_CalMonth.DataController.Values[iChoiceRow, iFinishTCharge];
        edt_CalMoney.Text     := cgrid_CalMonth.DataController.Values[iChoiceRow, iFinishCharge];
        edt_OrderCnt.Text     := cgrid_CalMonth.DataController.Values[iChoiceRow, iOrderCnt];
        edt_RowNum.Text       := IntToStr(iChoiceRow);

        proc_SaveBubinDate(sYearMm
                         , FHdNo
                         , FBrNo
                         , cgrid_CalMonth.DataController.Values[iChoiceRow, iBCode]
                         , IfThen(cgrid_CalMonth.DataController.Values[iChoiceRow, iDeposit] = '�Ա�', 'y', 'n')
                         , IfThen(cgrid_CalMonth.DataController.Values[iChoiceRow, iBill]    = '����', 'y', 'n')
                         , cgrid_CalMonth.DataController.Values[iChoiceRow, iFinishCnt]
                         , cgrid_CalMonth.DataController.Values[iChoiceRow, iFinishCharge]
                         , cgrid_CalMonth.DataController.Values[iChoiceRow, iOrderCnt] );
        ////////////////////////////////////////////////////////////���������� â����//////////////////////////////////////////
      end;
    end;
  finally
  end;
end;

procedure TFrm_CUT1.chkBillAllClick(Sender: TObject);
begin
  if chkBillAll.Checked then chkBillAll.Hint := '';
  if chkBillY.Checked then chkBillAll.Hint := 'y';
  if chkBillN.Checked then chkBillAll.Hint := 'n';
end;

procedure TFrm_CUT1.chkCalAllClick(Sender: TObject);
begin
  if chkCalAll.Checked then chkCalAll.Hint := '';
  if chkCalY.Checked then chkCalAll.Hint := 'y';
  if chkCalN.Checked then chkCalAll.Hint := 'n';
end;

procedure TFrm_CUT1.chkCust13Type01Click(Sender: TObject);
begin
	if chkCust13Type01.Checked then
  begin
		cxDate13_1S.Enabled := True;
		cxDate13_1E.Enabled := True;
		btn_Date13_1.Enabled := True;
  end else
  begin
		cxDate13_1S.Enabled := False;
		cxDate13_1E.Enabled := False;
		btn_Date13_1.Enabled := False;
  end;
end;

procedure TFrm_CUT1.chkCust14Type01Click(Sender: TObject);
var
  i: Integer;
  ln_env: TIniFile;
begin
  try
    if cxCheckBox1.Tag = 1 then
      exit;
    if cxCheckBox1.Checked then
    begin
      cxChkTitle.Tag := 1;
      ln_Env := TIniFile.Create(ENVPATHFILE);
      ln_env.EraseSection('ACCBubinList');
			cxGBubinStt.BeginUpdate;
      for i := 0 to 30 do
      begin
        cxGBubinStt.Bands[i].Visible := True;
        cxChkTitle.SetItemState(i, cbsChecked);
      end;
      cxChkTitle.Tag := 0;
      FreeAndNil(ln_env);
			cxGBubinStt.EndUpdate;
    end;
	except

  end;
end;

procedure TFrm_CUT1.CustSetDateControl(AGubun: Integer; AStDt,
  AEdDt: TcxDateEdit);
begin
	case AGubun of
	 0: //����
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
			AEdDt.Date := AStDt.Date + 1;
		end;
	 1: //����
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
			AEdDt.Date := AStDt.Date + 1;
		end;
	 2: //�ֱ�������
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
			AEdDt.Date := AStDt.Date + 7;
		end;
	 3: //1~31��
		begin
			AStDt.Date := StartOfTheMonth(now);
			AEdDt.Date := EndOfTheMonth(Now);
		end;
	 11: //�ֱ��Ѵ�
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
			AEdDt.Date := AStDt.Date + 31;
    end;
	 12: //3����
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 91;
			AEdDt.Date := AStDt.Date + 91;
		end;
	 13: //6����
		begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 181;
			AEdDt.Date := AStDt.Date + 181;
		end;
	 14: //1��
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 365;
      AEdDt.Date := AStDt.Date + 365;
    end;
  end;
end;

procedure TFrm_CUT1.CustView12_1Click(Sender: TObject);
var iTmp : integer;
	Node: TcxTreeListNode;
begin
	if CustView12_1.SelectionCount > 0 then
	begin
//		iTmp := Node.
		if giCustView12_1_SelCell = 2 then    //���θ� (��)Ŭ���� ������Ʈ ��ȸ
		begin
			if bRightClick then Exit;
			if CustView12_1.SelectionCount > 0 then
			begin
				proc_search_bubin(CustView12_1.Selections[0].Values[7], cxBrNo12.Text);
				btn_12_8.Click;
			end
			else
				CustView12_2.DataController.SetRecordCount(0);
		end else
		if giCustView12_1_SelCell = 3 then   //�μ��� (��)Ŭ���� ���� ����â �˾�
		begin
			if ( Not Assigned(Frm_CUT09) ) Or ( Frm_CUT09 = Nil ) then Frm_CUT09 := TFrm_CUT09.Create(Nil);
			Frm_CUT09.PnlTitle.Caption := '����(��ü) ���� �����ϱ�';
			Frm_CUT09.Tag := 1;
			Frm_CUT09.edCbCode.Text := CustView12_1.Selections[0].Values[7];
			Frm_CUT09.edBrNo.Text := cxBrNo12.Text;
			Frm_CUT09.proc_init;
			Frm_CUT09.Show;
		end;
{	end else
	begin
		GMessagebox('�μ��� �����Ͻð� ���� �ٶ��ϴ�.', CDMSE);  }
	end;

end;

procedure TFrm_CUT1.CustView12_1FocusedColumnChanged(Sender: TcxCustomTreeList;
	APrevFocusedColumn, AFocusedColumn: TcxTreeListColumn);
begin
	giCustView12_1_SelCell := AFocusedColumn.ItemIndex;
end;

procedure TFrm_CUT1.CustView12_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var iTmp : integer;
	Node: TcxTreeListNode;
begin

	if (key = vk_UP) or (key = vk_DOWN) then
	begin
		gbCustView12_1_SetFocus := True;
		if CustView12_1.SelectionCount > 0 then
		begin
			proc_search_bubin(CustView12_1.Selections[0].Values[7], cxBrNo12.Text);
			btn_12_8.Click;
		end else CustView12_2.DataController.SetRecordCount(0);
  end;

end;

procedure TFrm_CUT1.CustView12_1MouseDown(Sender: TObject; Button: TMouseButton;
	Shift: TShiftState; X, Y: Integer);
begin
	bRightClick := False; //��Ŭ���� ��� �ҼӰ�����Ʈ ��ȸ ���� 20210705 KHS 1577��û
	if (Shift = [ssright]) then bRightClick := True;
end;

procedure TFrm_CUT1.CustView12_1SelectionChanged(Sender: TObject);
begin
{	if bRightClick then Exit;
	if CustView12_1.SelectionCount > 0 then
    btn_12_8.Click
  else
		CustView12_2.DataController.SetRecordCount(0);    }
end;

procedure TFrm_CUT1.CustView12_2CellDblClick(Sender: TcxCustomGridTableView;
	ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	btn_12_7Click(btn_12_7);
end;

procedure TFrm_CUT1.CustView12_2ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	gIndex := AColumn.Index;
end;

procedure TFrm_CUT1.CustView12_2DataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(CustView12_2, gIndex, GS_SortNoChange);
end;

procedure TFrm_CUT1.CustView12_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
		CustView12_2.OptionsSelection.CellMultiSelect := False;
		CustView12_2.OptionsSelection.CellSelect := False;
    CustView12_2.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUT1.CustView12_2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
		CustView12_2.OptionsSelection.CellMultiSelect := True;
		CustView12_2.OptionsSelection.CellSelect := True;
		CustView12_2.OptionsSelection.MultiSelect := True;
	end;
end;

procedure TFrm_CUT1.CustView12_3CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iKeyNum, iSeq, iRow: Integer;
  sBrNo, sKeyNum, sSeq: string;
begin
  // ���� ���� (��ȣ 2008-08-19)
  if TCK_USER_PER.COM_CustModify <> '1' then
  begin
    GMessagebox('�� ���������� �����ϴ�.', CDMSE);
    Exit;
	end;
	iRow := CustView12_3.DataController.FocusedRecordIndex;
  if iRow = -1 then
    Exit;
	iKeyNum := CustView12_3.GetColumnByFieldName('��ǥ��ȣ').Index;
	iSeq := CustView12_3.GetColumnByFieldName('���ڵ�').Index;
	sBrNo := cxBrNo12.Text;
	sKeyNum := CustView12_3.DataController.Values[iRow, iKeyNum];
  sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
	sSeq := CustView12_3.DataController.Values[iRow, iSeq];
  // 6 : ����â���� ������ 4 : ����â���� ������
  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);
  Frm_CUT011.Tag := 6;
  Frm_CUT011.Hint := IntToStr(Self.Tag);
  Frm_CUT011.clbCuSeq.Caption := sSeq;
  Frm_CUT011.proc_search_brKeyNum(sBrNo, sKeyNum);
  Frm_CUT011.Show;
  Frm_CUT011.proc_cust_Intit;
end;

procedure TFrm_CUT1.CustView12_3ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	gIndex := AColumn.Index;
end;

procedure TFrm_CUT1.CustView12_3DataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(CustView12_3, gIndex, GS_SortNoChange);
end;

procedure TFrm_CUT1.CustView12_3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
		CustView12_3.OptionsSelection.CellMultiSelect := False;
		CustView12_3.OptionsSelection.CellSelect := False;
    CustView12_3.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUT1.CustView12_3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	if (gbControlKeyDown = False) and (Button = mbLeft) then
	begin
		CustView12_3.OptionsSelection.CellMultiSelect := True;
		CustView12_3.OptionsSelection.CellSelect := True;
		CustView12_3.OptionsSelection.MultiSelect := True;
	end;
end;

procedure TFrm_CUT1.btn_AllProc1Click(Sender: TObject);
var
  iRow, i, ErrCode: Integer;
	sCmpCode, sCmpNM, sFinishCnt, sFinishCharge, sOrderCnt: string;
  ls_TxLoad: string;
  xdom: MSDomDocument;
  ls_MSG_Err: string;
  ls_rxxml, rv_str: string;
  iGubun : integer;
	slRcvList : TStringList;
begin
	try
    iGubun := TcxButton(sender).Tag;
    iRow := 0;
    case iGubun of
      0:
      begin
        rb_DepositY.Hint := 'y';
        rb_BillY.Hint    := '';
      end;
      1:
      begin
        rb_DepositY.Hint := '';
        rb_BillY.Hint    := 'y';
      end;
    end;

    for i := 0 to cgrid_CalMonth.DataController.RecordCount - 1 do
    begin
      if (cgrid_CalMonth.DataController.Values[i, 1] = True) then
      begin
        Inc(iRow);
      end;
    end;

    if ( cgrid_CalMonth.DataController.RecordCount = 0 ) Or ( iRow = 0 ) then
    begin
      GMessagebox('���õ� ������ �����ϴ�.', CDMSE);
      Exit;
    end;

    cxLabel175.Caption := IntToStr(iRow);
    cxLabel176.Caption := '0';
    Gauge1.Max := iRow;
    Gauge1.Position := 0;
    iRow := 0;
    if Gauge1.Max > 1 then
    begin
      pnl_BubinAccStatus.Left := frm_Main.Left + ((frm_Main.Width - pnl_BubinAccStatus.Width) div 2);
      pnl_BubinAccStatus.Top := 100;
      pnl_BubinAccStatus.Visible := True;
      pnl_BubinAccStatus.BringToFront;
    end;

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    cgrid_CalMonth.DataController.BeginUpdate;
    for i := 0 to cgrid_CalMonth.DataController.RecordCount - 1 do
    begin
      if cgrid_CalMonth.DataController.Values[i, 1] = True then
      begin
        Inc(iRow);
        cxLabel176.Caption := IntToStr(iRow);
        Gauge1.Position := iRow;
        sCmpNM        := cgrid_CalMonth.DataController.Values[i,  8];
        sCmpCode      := cgrid_CalMonth.DataController.Values[i,  7];
        sFinishCnt    := FloatToStr(cgrid_CalMonth.DataController.Values[i, iFinishCnt]);
        sFinishCharge := FloatToStr(cgrid_CalMonth.DataController.Values[i, iFinishCharge]);
        sOrderCnt     := FloatToStr(cgrid_CalMonth.DataController.Values[i, iOrderCnt]);

        ls_TxLoad := GTx_UnitXmlLoad('ACC12020.xml');
        case cb_CalMonth.ItemIndex of
          0 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '01');
          1 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '02');
          2 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '03');
          3 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '04');
          4 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '05');
          5 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '06');
          6 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '07');
          7 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '08');
          8 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '09');
          9 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '10');
          10: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '11');
          11: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '12');
        end;

        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strCbCode'      , sCmpCode);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo'        , cgrid_CalMonth.DataController.Values[i, iHdNo]);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo'        , cgrid_CalMonth.DataController.Values[i, iBrNo]);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPaymentYn'   , rb_DepositY.Hint);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBillYn'      , rb_BillY.Hint);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCnt'   , sFinishCnt);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCharge', sFinishCharge);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strOrderCnt'    , sOrderCnt);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString'   , GT_USERIF.ID);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
        try
          if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
          begin
            rv_str := slRcvList[0];
            if rv_str <> '' then
            begin
              ls_rxxml := rv_str;
              xdom := CoMSDomDocument.Create;
              try
                xdom.loadXML(ls_rxxml);

								ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
                if ('0000' <> ls_MSG_Err) then
                begin
                  GMessagebox('['+sCmpNM+']ó�� ���� : '+ls_Msg_Err, CDMSE);
                  cgrid_CalMonth.DataController.EndUpdate;
                  Exit;
                end else
                begin
                  if iGubun = 0 then
                    cgrid_CalMonth.DataController.Values[i, iDeposit] := '�Ա�'
                  else if iGubun = 1 then
                    cgrid_CalMonth.DataController.Values[i, iBill]    := '����';
                end;
              finally
                xdom := Nil;
              end;
            end;
          end;
        except
          slRcvList.Free;
          Screen.Cursor := crDefault;
          cgrid_CalMonth.DataController.EndUpdate;
        end;
      end;
    end;
    slRcvList.Free;
    Screen.Cursor := crDefault;
    cgrid_CalMonth.DataController.EndUpdate;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_CUT1.btn_AllProc2Click(Sender: TObject);
var
  iRow, i, ErrCode: Integer;
	sCmpCode, sCmpNM, sFinishCnt, sFinishCharge, sOrderCnt: string;
  ls_TxLoad: string;
  xdom: MSDomDocument;
  ls_MSG_Err: string;
  ls_rxxml, rv_str: string;
  iGubun : integer;
  slRcvList : TStringList;
begin
	try
    iGubun := TcxButton(sender).Tag;
    iRow := 0;
    case iGubun of
      0:
      begin
        rb_DepositY.Hint := 'y';
        rb_BillY.Hint    := '';
      end;
      1:
      begin
        rb_DepositY.Hint := '';
        rb_BillY.Hint    := 'y';
      end;
    end;

    for i := 0 to cgrid_CalMonth.DataController.RecordCount - 1 do
    begin
      if (cgrid_CalMonth.DataController.Values[i, 1] = True) then
      begin
        Inc(iRow);
      end;
    end;

    if ( cgrid_CalMonth.DataController.RecordCount = 0 ) Or ( iRow = 0 ) then
    begin
      GMessagebox('���õ� ������ �����ϴ�.', CDMSE);
      Exit;
    end;

    cxLabel175.Caption := IntToStr(iRow);
    cxLabel176.Caption := '0';
    Gauge1.Max := iRow;
    Gauge1.Position := 0;
    iRow := 0;
    if Gauge1.Max > 1 then
    begin
      pnl_BubinAccStatus.Left := frm_Main.Left + ((frm_Main.Width - pnl_BubinAccStatus.Width) div 2);
      pnl_BubinAccStatus.Top := 100;
      pnl_BubinAccStatus.Visible := True;
      pnl_BubinAccStatus.BringToFront;
    end;

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    cgrid_CalMonth.DataController.BeginUpdate;
    for i := 0 to cgrid_CalMonth.DataController.RecordCount - 1 do
    begin
      if cgrid_CalMonth.DataController.Values[i, 1] = True then
      begin
        Inc(iRow);
        cxLabel176.Caption := IntToStr(iRow);
        Gauge1.Position := iRow;
        sCmpNM        := cgrid_CalMonth.DataController.Values[i,  8];
        sCmpCode      := cgrid_CalMonth.DataController.Values[i,  7];
        sFinishCnt    := FloatToStr(cgrid_CalMonth.DataController.Values[i, iFinishCnt]);
        sFinishCharge := FloatToStr(cgrid_CalMonth.DataController.Values[i, iFinishCharge]);
        sOrderCnt     := FloatToStr(cgrid_CalMonth.DataController.Values[i, iOrderCnt]);

        ls_TxLoad := GTx_UnitXmlLoad('ACC12020.xml');
        case cb_CalMonth.ItemIndex of
          0 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '01');
          1 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '02');
          2 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '03');
          3 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '04');
          4 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '05');
          5 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '06');
          6 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '07');
          7 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '08');
          8 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '09');
          9 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '10');
          10: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '11');
          11: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '12');
        end;

        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strCbCode'      , sCmpCode);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo'        , cgrid_CalMonth.DataController.Values[i, iHdNo]);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo'        , cgrid_CalMonth.DataController.Values[i, iBrNo]);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPaymentYn'   , rb_DepositY.Hint);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBillYn'      , rb_BillY.Hint);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCnt'   , sFinishCnt);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCharge', sFinishCharge);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strOrderCnt'    , sOrderCnt);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString'   , GT_USERIF.ID);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
        try
          if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
          begin
            rv_str := slRcvList[0];
            if rv_str <> '' then
            begin
              ls_rxxml := rv_str;
              xdom := CoMSDomDocument.Create;
              try
                xdom.loadXML(ls_rxxml);

                ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
                if ('0000' <> ls_MSG_Err) then
                begin
                  GMessagebox('['+sCmpNM+']ó�� ���� : '+ls_Msg_Err, CDMSE);
                  cgrid_CalMonth.DataController.EndUpdate;
									Exit;
                end else
                begin
                  if iGubun = 0 then
                    cgrid_CalMonth.DataController.Values[i, iDeposit] := '�Ա�'
                  else if iGubun = 1 then
                    cgrid_CalMonth.DataController.Values[i, iBill]    := '����';
                end;
              finally
                xdom := Nil;
              end;
            end;
          end;
        except
          slRcvList.Free;
          Screen.Cursor := crDefault;
          cgrid_CalMonth.DataController.EndUpdate;
        end;
      end;
    end;
    slRcvList.Free;
    Screen.Cursor := crDefault;
    cgrid_CalMonth.DataController.EndUpdate;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_CUT1.btn_CardClick(Sender: TObject);
begin
//  // ī����� â ����.  2011-10-13.
//	if not Assigned(Frm_JON34B) then
//  begin
//    Frm_JON34B := TFrm_JON34B.Create(self);
//  end;
//
//  Frm_JON34B.cxCurDecRate_Cash.Properties.AssignedValues.MaxValue := False;
//  Frm_JON34B.cxCurDRate.Properties.AssignedValues.MaxValue := False;
//  Frm_JON34B.cxCurDecRate.Properties.AssignedValues.MaxValue := False;
//
//  Frm_JON34B.pnlTitle.Caption := '   ī�����';
//  Frm_JON34B.Card_Gubun := 11;
//  Frm_JON34B.proc_init;
//  if (GT_SEL_BRNO.HDNO = 'A1531') or (GT_SEL_BRNO.HDNO = 'A100')  then
//  begin
//    Frm_JON34B.pnl1.Visible := True;     //ī�����   �ǳ�
//    Frm_JON34B.pnl3.Visible := False;    //���ݿ����� �ǳ�
//    Frm_JON34B.Constraints.MinHeight := 375 - 33;
//    Frm_JON34B.Height := 375 - 33;
//  end	else
//  begin
//    Frm_JON34B.pnl1.Visible := False;    //ī�����   �ǳ�
//    Frm_JON34B.pnl3.Visible := False;    //���ݿ����� �ǳ�
//    Frm_JON34B.Constraints.MinHeight := 375 - (33 + 33);
//    Frm_JON34B.Height := 375 - (33 + 33);
//  end;
//  Frm_JON34B.pnl4.Left := 400;
//  Frm_JON34B.pnl6.Left := 400;
//  Frm_JON34B.cxCurDRate.Value := edt_CalMoney.Value;    // ���.
//
//  //�������///////////////////
//  Frm_JON34B.lcBRNO    := GT_SEL_BRNO.BrNo;           // �����ڵ� ������ �д´�.
//  Frm_JON34B.lcMainNum := '';  // ��ǥ��ȣ ������ �д´�.
//  Frm_JON34B.lcCustTel := '';             // ����ȭ��ȣ.
//  Frm_JON34B.lcCustSeq := '';                 // �� ������.
//  //�������///////////////////
//
//  if Frm_JON34B.rbConfigVATset1.Checked then
//    Frm_JON34B.cxCurDecRate.Value := edt_CalMoney.Value
//  else
//  if Frm_JON34B.rbConfigVATset2.Checked then
//    // �������.  ������ �ΰ��� ����.
//    Frm_JON34B.cxCurDecRate.Value := edt_CalMoney.Value + (edt_CalMoney.Value * (StrToFloatDef(Frm_JON34B.cxCurVATvalue.Text, 0.0) / 100))
//  else
//  if Frm_JON34B.rbConfigVATset3.Checked then
//  begin
//    Frm_JON34B.cxCurDecRate.Value := Frm_JON34B.proc_getSvrCardCharge(Frm_JON34B.lcBRNO, edt_CalMoney.Value);
//  end;
//
//  Frm_JON34B.lcJON_IDX := Self.Tag;   // ����â�� index �� ����.
//
//  // �� ���� ������ ������, �ش� ���� �־��ش�.
//  if Length(BBINCardPayInfo) > 10 then
//  begin
//    try
//      lsTemp := TStringList.Create;
//      lsTemp.Delimiter := '|';
//      lsTemp.DelimitedText := BBINCardPayInfo;
//
//      Frm_JON34B.cxCurDRate.Text       := lsTemp[0];
//      Frm_JON34B.cxCurDecRate.Text     := lsTemp[1];
//      Frm_JON34B.cxCurTerm.Text        := lsTemp[2];
//      Frm_JON34B.lblCardStatus.Caption := lsTemp[3];  // ����
//      if lsTemp.Count = 6 then
//      begin
//        Frm_JON34B.medCardNum.Text       := lsTemp[4];
//        Frm_JON34B.medLimiteDate.text    := lsTemp[5];
//      end;
//
//      // ī��������� ��ȸ
//      if (BBINCardPaySeq <> '') then
//        Frm_JON34B.ProCardInfoSelect(BBINCardPaySeq);
//
//      if Frm_JON34B.lblCardStatus.Caption = '�����Ϸ�' then
//      begin
//        // ī����� ���� ��� �� �غ�.
//        Frm_JON34B.sb_ApproveReq.Enabled    := False;
//        Frm_JON34B.sb_ApproveOK.Enabled     := False;
//        Frm_JON34B.sb_ApproveCancle.Enabled := True;
//        Frm_JON34B.sb_ApproveReceipt.Enabled := True;
//
//        Frm_JON34B.medCardNum.Enabled      := False;
//        Frm_JON34B.medLimiteDate.Enabled   := False;
//        Frm_JON34B.cxCurDRate.Enabled      := False;
//        Frm_JON34B.cxCurDecRate.Enabled    := False;
//        Frm_JON34B.cxCurTerm.Enabled       := False;
//      end	else
//      if Frm_JON34B.lblCardStatus.Caption = '������û�Ϸ�' then
//      begin
//        // ī����� ���� ��� �� �غ�.
//        Frm_JON34B.sb_ApproveReq.Enabled    := False;
//        Frm_JON34B.sb_ApproveOK.Enabled     := False;
//        Frm_JON34B.sb_ApproveCancle.Enabled := False;
//        Frm_JON34B.sb_ApproveReceipt.Enabled := False;
//
//        Frm_JON34B.medCardNum.Enabled      := False;
//        Frm_JON34B.medLimiteDate.Enabled   := False;
//        Frm_JON34B.cxCurDRate.Enabled      := False;
//        Frm_JON34B.cxCurDecRate.Enabled    := False;
//        Frm_JON34B.cxCurTerm.Enabled       := False;
//      end	else
//      begin
//        // ī����� ���� �� �غ�.
//        Frm_JON34B.sb_ApproveReq.Enabled    := True;
//        Frm_JON34B.sb_ApproveOK.Enabled     := False;
//        Frm_JON34B.sb_ApproveCancle.Enabled := False;
//        Frm_JON34B.sb_ApproveReceipt.Enabled := False;
//
//        Frm_JON34B.medCardNum.Enabled      := True;
//        Frm_JON34B.medLimiteDate.Enabled   := True;
//        Frm_JON34B.cxCurDRate.Enabled      := True;
//        Frm_JON34B.cxCurDecRate.Enabled    := True;
//        Frm_JON34B.cxCurTerm.Enabled       := True;
//
//        Frm_JON34B.rb_Card1.Enabled        := True;
//        Frm_JON34B.rb_BaRo_Card1.Enabled   := True;
//      end;
//
//      Frm_JON34B.lcPaySeq := BBINCardPaySeq;   // �����Ϸù�ȣ
//      Frm_JON34B.lcTranNo := BBINCardTranNo;   // �ŷ���ȣ
//
//      Frm_JON34B.lblPaySeq.Caption := BBINCardPaySeq;
//      Frm_JON34B.lblTranNo.Caption := BBINCardTranNo;
//    finally
//      FreeAndNil(lsTemp);
//    end;
//  end	else
//  if Length(BBINCardPaySeq) > 1 then
//  begin
//    Frm_JON34B.lcPaySeq          := BBINCardPaySeq;   // �����Ϸù�ȣ  �� ������ ������� ���� ��.
//    Frm_JON34B.lblPaySeq.Caption := BBINCardPaySeq;
//
//    Frm_JON34B.ProCardInfoSelect(BBINCardPaySeq);   // ī����� ������ ��ȸ �Ѵ�.
//
//    if Frm_JON34B.lblCardStatus.Caption = '�����Ϸ�' then
//    begin
//      // ī����� ���� ��� �� �غ�.
//      Frm_JON34B.sb_ApproveReq.Enabled    := False;
//      Frm_JON34B.sb_ApproveOK.Enabled     := False;
//      Frm_JON34B.sb_ApproveCancle.Enabled := True;
//      Frm_JON34B.sb_ApproveReceipt.Enabled := True;
//
//      Frm_JON34B.medCardNum.Enabled      := False;
//      Frm_JON34B.medLimiteDate.Enabled   := False;
//      Frm_JON34B.cxCurDRate.Enabled      := False;
//      Frm_JON34B.cxCurDecRate.Enabled    := False;
//      Frm_JON34B.cxCurTerm.Enabled       := False;
//    end else
//    if Frm_JON34B.lblCardStatus.Caption = '������û�Ϸ�' then
//    begin
//      // ī����� ���� ��� �� �غ�.
//      Frm_JON34B.sb_ApproveReq.Enabled    := False;
//      Frm_JON34B.sb_ApproveOK.Enabled     := False;
//      Frm_JON34B.sb_ApproveCancle.Enabled := False;
//      Frm_JON34B.sb_ApproveReceipt.Enabled := False;
//
//      Frm_JON34B.medCardNum.Enabled      := False;
//      Frm_JON34B.medLimiteDate.Enabled   := False;
//      Frm_JON34B.cxCurDRate.Enabled      := False;
//      Frm_JON34B.cxCurDecRate.Enabled    := False;
//      Frm_JON34B.cxCurTerm.Enabled       := False;
//    end	else
//    begin
//      // ī����� ���� �� �غ�.
//      Frm_JON34B.sb_ApproveReq.Enabled    := True;
//      Frm_JON34B.sb_ApproveOK.Enabled     := False;
//      Frm_JON34B.sb_ApproveCancle.Enabled := False;
//      Frm_JON34B.sb_ApproveReceipt.Enabled := False;
//
//      Frm_JON34B.medCardNum.Enabled      := True;
//      Frm_JON34B.medLimiteDate.Enabled   := True;
//      Frm_JON34B.cxCurDRate.Enabled      := True;
//      Frm_JON34B.cxCurDecRate.Enabled    := True;
//      Frm_JON34B.cxCurTerm.Enabled       := True;
//      Frm_JON34B.rb_Card1.Enabled        := True;
//      Frm_JON34B.rb_BaRo_Card1.Enabled   := True;
//    end;
//	end	else
//  begin
//    // ī����� ���� �� �غ�.
//    Frm_JON34B.sb_ApproveReq.Enabled    := True;
//    Frm_JON34B.sb_ApproveOK.Enabled     := False;
//    Frm_JON34B.sb_ApproveCancle.Enabled := False;
//    Frm_JON34B.sb_ApproveReceipt.Enabled := False;
//
//    Frm_JON34B.medCardNum.Enabled      := True;
//    Frm_JON34B.medLimiteDate.Enabled   := True;
//    Frm_JON34B.cxCurDRate.Enabled      := True;
//    Frm_JON34B.cxCurDecRate.Enabled    := True;
//    Frm_JON34B.cxCurTerm.Enabled       := True;
//    Frm_JON34B.rb_Card1.Enabled        := True;
//    Frm_JON34B.rb_BaRo_Card1.Enabled   := True;
//  end;
//
//  if Assigned(Frm_JON34B) then
//  begin
//    Frm_JON34B.Left := pnl_CalCampInfo.Left + (pnl_CalCampInfo.Width + 1);
//    Frm_JON34B.Top  := pnl_CalCampInfo.Top;
//  end;
//
//  Frm_JON34B.Show;
end;

procedure TFrm_CUT1.btn_CashBillClick(Sender: TObject);
begin
 // if not Assigned(Frm_JON34B) then
//  begin
//    Frm_JON34B := TFrm_JON34B.Create(self);
//  end;
//
//  Frm_JON34B.cxCurDecRate_Cash.Properties.AssignedValues.MaxValue := False;
//  Frm_JON34B.cxCurDRate.Properties.AssignedValues.MaxValue := False;
//  Frm_JON34B.cxCurDecRate.Properties.AssignedValues.MaxValue := False;
//  Frm_JON34B.pnlTitle.Caption := '   ���ݿ�����(��������) �߱�';
//  // ī����� â ����.  2011-10-13.
//  Frm_JON34B.Card_Gubun := 10;          //���ݿ�����
//  Frm_JON34B.proc_init;
//  Frm_JON34B.pnl1.Visible := False;
//  Frm_JON34B.pnl3.Visible := True;
//  Frm_JON34B.pnl4.Visible := True;
//  Frm_JON34B.pnl6.Visible := False;
//  Frm_JON34B.pnl4.Left := 0;
//  Frm_JON34B.pnl4.Top := 1;
//  Frm_JON34B.Constraints.MinHeight := 375 - 33;
//  Frm_JON34B.Height := 375 - 33;
//
//  Frm_JON34B.cxCurDecRate_Cash.Value := edt_CalMoney.Value;    // ���(���ݿ�����)
//
//  //�������///////////////////
//  Frm_JON34B.lcBRNO    := GT_SEL_BRNO.BrNo;           // �����ڵ� ������ �д´�.
//  Frm_JON34B.lcMainNum := '';  // ��ǥ��ȣ ������ �д´�.
//  Frm_JON34B.lcCustTel := '';             // ����ȭ��ȣ.
//  Frm_JON34B.medtCashCardNum.Text := '';
//  Frm_JON34B.lcCustSeq := '';                 // �� ������.
//  //�������///////////////////
//
//  Frm_JON34B.lcJON_IDX := Self.Tag;   // ����â�� index �� ����.
//
//  // �� ���� ������ ������, �ش� ���� �־��ش�.
//  if Length(BBINCardPayInfo) > 10 then
//  begin
//    try
//      Frm_JON34B.lcCustTel := '';             // ����ȭ��ȣ.
//
//      lsTemp := TStringList.Create;
//      lsTemp.Delimiter := '|';
//      lsTemp.DelimitedText := BBINCardPayInfo;
//
//      Frm_JON34B.cxCurDecRate_Cash.Text  := lsTemp[0];
//      Frm_JON34B.lblCardStatus_Cash.Caption := lsTemp[1];  // ����
//      if lsTemp.Count = 3 then
//      begin
//        Frm_JON34B.medtCashCardNum.Text := lsTemp[2];
//      end;
//
//      // ������ȣ�� ������츸 �������� ����ȸ �Ѵ�.  2011-10-27
//      if (BBINCardPaySeq <> '') then
//        Frm_JON34B.ProCardInfoSelect(BBINCardPaySeq);   // ī����� ������ ��ȸ �Ѵ�.
//
//      if Frm_JON34B.lblCardStatus_Cash.Caption = '�����Ϸ�' then
//      begin
//        // ī����� ���� ��� �� �غ�.
//        Frm_JON34B.sb_ApproveReq.Enabled    := False;
//        Frm_JON34B.sb_ApproveOK.Enabled     := False;
//        Frm_JON34B.sb_ApproveCancle.Enabled := True;
//        Frm_JON34B.sb_ApproveReceipt.Enabled := False;
//        Frm_JON34B.medtCashCardNum.Enabled      := False;
//        Frm_JON34B.cxCurDecRate_Cash.Enabled      := False;
//      end	else
//      if Frm_JON34B.lblCardStatus_Cash.Caption = '������û�Ϸ�' then
//      begin
//        // ī����� ���� ��� �� �غ�.
//        Frm_JON34B.sb_ApproveReq.Enabled    := False;
//        Frm_JON34B.sb_ApproveOK.Enabled     := False;
//        Frm_JON34B.sb_ApproveCancle.Enabled := False;
//        Frm_JON34B.sb_ApproveReceipt.Enabled := False;
//        Frm_JON34B.medtCashCardNum.Enabled      := False;
//        Frm_JON34B.cxCurDecRate_Cash.Enabled    := False;
//      end	else
//      begin
//        // ī����� ���� �� �غ�.
//        Frm_JON34B.sb_ApproveReq.Enabled    := True;
//        Frm_JON34B.cxButton1.Enabled     := False;
//        Frm_JON34B.sb_ApproveOK.Enabled     := False;
//        Frm_JON34B.sb_ApproveCancle.Enabled := False;
//        Frm_JON34B.sb_ApproveReceipt.Enabled := False;
//        Frm_JON34B.medtCashCardNum.Enabled      := True;
//        Frm_JON34B.cxCurDecRate_Cash.Enabled    := True;
//
//        Frm_JON34B.rg_charge_ser2.Enabled   := True;
//        Frm_JON34B.rg_charge_ser1.Enabled   := True;
//      end;
//
//      Frm_JON34B.lcPaySeq := BBINCardPaySeq;   // �����Ϸù�ȣ
//      Frm_JON34B.lcTranNo := BBINCardTranNo;   // �ŷ���ȣ
//
//      Frm_JON34B.lblPaySeq_Cash.Caption := BBINCardPaySeq;
//      Frm_JON34B.lblTranNo_Cash.Caption := BBINCardTranNo;
//    finally
//      FreeAndNil(lsTemp);
//    end;
//  end else
//  if Length(BBINCardPaySeq) > 1 then
//  begin
//    Frm_JON34B.lcCustTel := '';             // ����ȭ��ȣ.
//    Frm_JON34B.lcPaySeq               := BBINCardPaySeq;   // �����Ϸù�ȣ  �� ������ ������� ���� ��.
//    Frm_JON34B.lblPaySeq_Cash.Caption := BBINCardPaySeq;
//
//    Frm_JON34B.ProCardInfoSelect(BBINCardPaySeq);   // ī����� ������ ��ȸ �Ѵ�.
//
//    if Frm_JON34B.lblCardStatus_Cash.Caption =  '�����Ϸ�' then
//    begin
//      // ī����� ���� ��� �� �غ�.
//      Frm_JON34B.sb_ApproveReq.Enabled    := False;
//      Frm_JON34B.sb_ApproveOK.Enabled     := False;
//      Frm_JON34B.sb_ApproveCancle.Enabled := True;
//      Frm_JON34B.sb_ApproveReceipt.Enabled := False;
//      Frm_JON34B.medtCashCardNum.Enabled      := False;
//      Frm_JON34B.cxCurDecRate_cash.Enabled    := False;
//    end else
//    if Frm_JON34B.lblCardStatus_Cash.Caption = '������û�Ϸ�' then
//    begin
//      // ī����� ���� ��� �� �غ�.
//      Frm_JON34B.sb_ApproveReq.Enabled    := False;
//      Frm_JON34B.sb_ApproveOK.Enabled     := False;
//      Frm_JON34B.sb_ApproveCancle.Enabled := False;
//      Frm_JON34B.sb_ApproveReceipt.Enabled := False;
//      Frm_JON34B.medtCashCardNum.Enabled      := False;
//      Frm_JON34B.cxCurDecRate_cash.Enabled    := False;
//    end else
//    begin
//      // ī����� ���� �� �غ�.
//      Frm_JON34B.sb_ApproveReq.Enabled    := True;
//			Frm_JON34B.sb_ApproveOK.Enabled     := False;
//      Frm_JON34B.sb_ApproveCancle.Enabled := False;
//      Frm_JON34B.sb_ApproveReceipt.Enabled := False;
//
//      Frm_JON34B.medtCashCardNum.Enabled      := True;
//      Frm_JON34B.cxCurDecRate_cash.Enabled    := True;
//      Frm_JON34B.rg_charge_ser2.Enabled   := True;
//      Frm_JON34B.rg_charge_ser1.Enabled   := True;
//    end;
//  end else
//  begin
//    // ī����� ���� �� �غ�.
//    Frm_JON34B.sb_ApproveReq.Enabled    := True;
//    Frm_JON34B.sb_ApproveOK.Enabled     := False;
//    Frm_JON34B.sb_ApproveCancle.Enabled := False;
//    Frm_JON34B.sb_ApproveReceipt.Enabled := False;
//    Frm_JON34B.medtCashCardNum.Enabled      := True;
//    Frm_JON34B.cxCurDecRate_cash.Enabled    := True;
//    Frm_JON34B.rg_charge_ser2.Enabled   := True;
//    Frm_JON34B.rg_charge_ser1.Enabled   := True;
//  end;
//
//  if Assigned(Frm_JON34B) then
//  begin
//    {Frm_JON34B.Left := Self.Left - (Frm_JON34B.Width + 1);
//    Frm_JON34B.Top  := Self.Top  + 320;  }
//    Frm_JON34B.Left := pnl_CalCampInfo.Left + (pnl_CalCampInfo.Width + 1);
//    Frm_JON34B.Top  := pnl_CalCampInfo.Top;
//  end;
//  Frm_JON34B.Show;
end;

procedure TFrm_CUT1.btn_CloseClick(Sender: TObject);
begin
  pnl_CalCampInfo.Visible := False;
end;

procedure TFrm_CUT1.btn_ConfirmClick(Sender: TObject);
begin
	if (pnl_Makeid.tag = 1) and (btn_Confirm.Tag = 0) then  //ID�����ε� �ߺ�üũ ����
	begin
		GMessagebox('ID �ߺ�Ȯ���� �����Ͽ� �ֽʽÿ�', CDMSE);
		btn_Confirm.click;
		Exit;
  end;

	if edt_WebPW1.Text <> edt_WebPW2.Text then
	begin
		GMessagebox('��й�ȣ�� ��ġ���� �ʽ��ϴ�', CDMSE);
		edt_WebPW2.Text := '';
		edt_WebPW2.SetFocus;
	end else
	begin
{		if (length(edt_WebIDFirst.Text) < 4) and (pnl_makeid.Tag = 1) then  //�ű�ID�� ��쿡�� üũ
		begin
			GMessagebox('WebID�� 4�� �̻� ���� �մϴ�', CDMSE);
			edt_WebIDFirst.SetFocus;
		end else
		if (length(edt_WebIDFirst.Text) > 20) then
		begin
			GMessagebox('WebID�� 20�� ���ϸ� ���� �մϴ�', CDMSE);
			edt_WebIDFirst.SetFocus;
		end else  }
		if (length(edt_WebPW1.Text) < 4) then
		begin
			GMessagebox('��й�ȣ�� 4�� �̻� ���� �մϴ�', CDMSE);
			edt_WebPW1.Text := '';
			edt_WebPW2.Text := '';
			edt_WebPW1.SetFocus;
		end else
		if (length(edt_WebPW1.Text) > 20) then
		begin
			GMessagebox('��й�ȣ�� 20�� ���ϸ� ���� �մϴ�', CDMSE);
			edt_WebPW1.Text := '';
			edt_WebPW2.Text := '';
			edt_WebPW1.SetFocus;
		end else
		begin
			if pnl_Makeid.Tag = 1 then
			begin
				edWebID.text := edt_WebIDFirst.Text;
				edWebPW.text := edt_WebPW1.Text;
			end else
			if pnl_Makeid.Tag = 2 then
			begin
				edWebPW.text := edt_WebPW1.Text;
			end;
			btn_IDCheckClose.click;
		end;
	end;
end;

procedure TFrm_CUT1.btn_Date2_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT1.btn_Date3_1Click(Sender: TObject);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT1.btn_Date3_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT1.btn_Date3_2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	Pop_Ymd.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT1.btn_Date4_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT1.btn_Date9_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT1.btn_IdCheckClick(Sender: TObject);
begin
	if (length(edt_WebIDFirst.Text) < 4) and (pnl_makeid.Tag = 1) then  //�ű�ID�� ��쿡�� üũ
	begin
		GMessagebox('WebID�� 4�� �̻� ���� �մϴ�', CDMSE);
		edt_WebIDFirst.SetFocus;
	end else
	if (length(edt_WebIDFirst.Text) > 20) then
	begin
		GMessagebox('WebID�� 20�� ���ϸ� ���� �մϴ�', CDMSE);
		edt_WebIDFirst.SetFocus;
	end else
		proc_search_bubin_id;
end;

procedure TFrm_CUT1.btn_IDCheckCloseClick(Sender: TObject);
begin
	btn_Confirm.Tag := 0;
	pnl_MakeId.Visible := False;
end;

procedure TFrm_CUT1.btn_InfoSaveClick(Sender: TObject);
var
  ls_TxLoad: string;
  ls_rxxml: string;
  xdom: MSDomDocument;
  ErrCode, iRow : Integer;
  ls_MSG_Err, rv_str: string;
  slRcvList : TStringList;
begin
  Try
    Screen.Cursor := crHourGlass;

    ls_TxLoad := GTx_UnitXmlLoad('ACC12020.xml');
    slRcvList := TStringList.Create;
    case cb_CalMonth.ItemIndex of
      0 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '01');
      1 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '02');
      2 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '03');
      3 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '04');
      4 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '05');
      5 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '06');
      6 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '07');
      7 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '08');
      8 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '09');
      9 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '10');
      10: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '11');
      11: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '12');
    end;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strCbCode'      , edtBubinCode.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo'        , FHdNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo'        , FBrNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPaymentYn'   , rb_DepositY.Hint);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBillYn'      , rb_BillY.Hint);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCnt'   , edt_FinishCnt.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCharge', edt_CalMoney.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strOrderCnt'    , edt_OrderCnt.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString'   , GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := CoMSDomDocument.Create;
          try
            xdom.loadXML(ls_rxxml);

            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' <> ls_MSG_Err) then
            begin
              GMessagebox('���� ���� : '+ls_Msg_Err, CDMSE);
              Exit;
            end	else
            begin
              GMessagebox('���� �Ϸ�', CDMSE);
              iRow := StrToIntDef(edt_RowNum.Text, -1);
              if iRow > -1 then
              begin
                if rb_DepositY.Hint = 'y' then
                  cgrid_CalMonth.DataController.Values[iRow,iDeposit] := '�Ա�'
                else
                  cgrid_CalMonth.DataController.Values[iRow,iDeposit] := '���Ա�';
                if rb_BillY.Hint = 'y' then
                  cgrid_CalMonth.DataController.Values[iRow,iBill] := '����'
                else
                  cgrid_CalMonth.DataController.Values[iRow,iBill] := '�̹���';
              end;
            end;
          finally
            xdom := Nil;
            slRcvList.Free;
            Screen.Cursor := crDefault;
          end;
        end;
      end;
    except
      slRcvList.Free;
      Screen.Cursor := crDefault;
    end;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_CUT1.btn_WebIdClick(Sender: TObject);
begin
	if (length(edWebID.Text) < 4) then // and (pnl_makeid.Tag = 1) then  //�ű�ID�� ��쿡�� üũ
	begin
		GMessagebox('WebID�� 4�� �̻� ���� �մϴ�', CDMSE);
		edWebID.SetFocus;
	end else
	if (length(edWebID.Text) > 20) then
	begin
		GMessagebox('WebID�� 20�� ���ϸ� ���� �մϴ�', CDMSE);
		edWebID.SetFocus;
	end else
		proc_search_bubin_id;

{	if edCbCode.text = '' then exit;
	edt_WebIdFirst.text := '';
	edt_WebPW1.text := '';
	edt_WebPW2.text := '';

	edt_WebIdFirst.Enabled := True;
	btn_IdCheck.Enabled := True;
	edt_WebPW1.Enabled := False;
	edt_WebPW2.Enabled := False;
	btn_Confirm.Enabled := False;
	
	pnl_MakeId.visible := True;
	edt_WebIdFirst.SetFocus;
	pnl_MakeId.Left := 690;
	pnl_MakeId.Top  := 10;
	pnl_Makeid.tag := 1;
	btn_Confirm.Tag := 0; //�ߺ�üũ ����     }
end;

procedure TFrm_CUT1.btn_WebPwClick(Sender: TObject);
begin
	if edCbCode.text = '' then exit;

	if edWebId.text = '' then 
	begin
		btn_WebId.Click;
	end else
	begin
		edt_WebIdFirst.text := edWebId.text;
		edt_WebPW1.text := '';
		edt_WebPW2.text := '';

		btn_IdCheck.Enabled := False;
		edt_WebPW1.Enabled := True;
		edt_WebPW2.Enabled := True;
		btn_Confirm.Enabled := True;

		pnl_MakeId.visible := True;
		edt_WebIdFirst.Enabled := False;
		pnl_MakeId.Left := 690;
		pnl_MakeId.Top  := 10;
		pnl_Makeid.tag := 2;
	end;
end;

procedure TFrm_CUT1.btn_Date10_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT1.btn_Date11_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT1.btn_Date13_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT1.btn_Date14_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT1.btn_Date16_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT1.btn_Date18_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Tag := TcxButton(Sender).Tag;
end;

procedure TFrm_CUT1.btn_Date1_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pm_Date.Tag := 11;
end;

procedure TFrm_CUT1.btn_Date1_2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_Ymd.Tag := 12;
end;

procedure TFrm_CUT1.btn_Date1_3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_Ymd.Tag := 13;
end;

procedure TFrm_CUT1.btn_Date1_4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_Ymd.Tag := 14;
end;

procedure TFrm_CUT1.btn_12_10Click(Sender: TObject);
var
  KeyIndex: Integer;
  KeyValue: string;
begin
	if CustView12_2.DataController.RecordCount = 0 then
	begin
    GMessagebox('�˻� ��� �������� �����ϴ�.', CDMSE);
    Exit;
  end;

  // ��ü : -1
  KeyIndex := -1;
	if Assigned(CustView12_2.GetColumnByFieldName(cbbResultSearch.Text)) then
		KeyIndex := CustView12_2.GetColumnByFieldName(cbbResultSearch.Text).Index;
  KeyValue := edtResultSearch.Text;

  cxViewCustom.DataController.RecordCount := 0;
	cxGridCopy(CustView12_2, cxViewCustom, KeyIndex, KeyValue);
	if cxViewCustom.DataController.RecordCount = 0 then
	begin
    if KeyIndex >= 0 then
      GMessagebox('�˻� ����� �����ϴ�.', CDMSE);
    cxGridCustom.Visible  := False;
    cxGrid10.Visible      := True;
  end else
  begin
    cxGridCustom.Visible  := True;
    cxGrid10.Visible      := False;
  end;
end;

procedure TFrm_CUT1.btn_12_11Click(Sender: TObject);
begin
	CustView12_3.DataController.SetRecordCount(0);
	proc_NotBubinCust_Search;
end;

procedure TFrm_CUT1.btn_12_12Click(Sender: TObject);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, ls_Msg_Err, sMsg, sBrNo: string;
  sParam, sTemp, sKeynum, sCustTel: string;
  ls_rxxml: WideString;
  iIdx: Integer;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if (CustView12_3.DataController.RecordCount = 0) or
		(CustView12_3.DataController.GetSelectedCount =
		0) then
  begin
    GMessagebox('��ȸ�� ���� �����ϼ���!', CDMSE);
    Exit;
  end;
  iIdx := CustView12_3.DataController.FocusedRecordIndex;
	sBrNo := cxBrNo12.Text;
	sKeynum := StringReplace(cbKeynumber12.Text, '-', '', [rfReplaceAll]);
	sCustTel := CustView12_3.DataController.Values[iIdx, 4];
  //GMessagebox('�����ڵ� : ' + GT_USERIF.HD + #13#10 + '�����ڵ� : '+sBrNo+#13#10+'��ȭ��ȣ : ' + sCustTel + #13#10 + '��ǥ��ȣ : ' + sKeynum, CDMSE);

  if GMessagebox('��������ȣ : ' + sCustTel + #13#10 +
    '������ �������� �̿�Ƚ��, ���ϸ����� �����˴ϴ�.' + #13#10 +
    '�����Ͻðڽ��ϱ�?', CDMSQ) <> idok then
    Exit;

  sKeynum := StringReplace(sKeynum, '-', '', [rfReplaceAll]);
  sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE.xml');

  sTemp := 'PROC_DELETE_CUSTOMER(?,?,?,?,?)';
	sParam := StringReplace(ls_Param, 'ParamString', cxHdNo12.Text, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', sBrNo, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', sKeynum, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', sCustTel, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'DELETECUST', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(4), [rfReplaceAll]);
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
            GMessagebox('�����Ͽ����ϴ�.', CDMSI);
            //proc_search_bubin;
						btn_12_11Click(btn_12_11);
					end else
          if ('0000' = ls_Msg_Err) and ('0' = sMsg) then
          begin
            GMessagebox('�����Ͽ����ϴ�.' + #13#10 + '�ٽ� �ѹ� �õ��� ������', CDMSE);
          end else
          begin
            GMessagebox('�����Ͽ����ϴ�.' + #13#10 + '�ٽ� �ѹ� �õ��� ������', CDMSE);
          end;

        except
          GMessagebox('�����Ͽ����ϴ�.' + #13#10 + '�ٽ� �ѹ� �õ��� ������', CDMSE);
        end;
      end;
    end;
  finally
    FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUT1.btn_12_13Click(Sender: TObject);
var
  iRow: Integer;
  sCustYn, sUseYn : string;
begin
  iRow := GT_BUBIN_INFO.cbcode.IndexOf(cxTextEdit15.Text + ',' + cxBrNo12.Text);

  if iRow = -1 then
  begin
    GMessagebox('�ϴ� ���ξ�ü�� ���� �����ϼž� �մϴ�.', CDMSE);
    Exit;
  end;

  sCustYn := GT_BUBIN_INFO.cbCustYn.Strings[iRow];
  sUseYn  := GT_BUBIN_INFO.cbUseYn.Strings[iRow];

  if sCustYn = 'n' then
  begin
    GMessagebox('���� ���ξ�ü�� ���� �߰��Ҽ� �����ϴ�.', CDMSE);
    Exit;
  end;

  if sUseYn = 'n' then
  begin
    GMessagebox('���� ���ξ�ü�� ����ü�� �ƴմϴ�.', CDMSE);
    Exit;
  end;

	proc_cust_bubin_Modify(0, CustView12_3);
end;

procedure TFrm_CUT1.btn_12_14Click(Sender: TObject);
var
  iRow: Integer;
begin
  iRow := GT_BUBIN_INFO.cbcode.IndexOf(cxTextEdit15.Text + ',' + cxBrNo12.Text);

  if iRow = -1 then
  begin
    GMessagebox('�ϴ� ���ξ�ü�� ���� �����ϼž� �մϴ�.', CDMSE);
    Exit;
  end;

  if cxGridCustom.Visible then
    proc_cust_bubin_Modify(1, cxViewCustom)
  else
		proc_cust_bubin_Modify(1, CustView12_2);
end;

procedure TFrm_CUT1.btn_12_1Click(Sender: TObject);
begin
	proc_BubinManage;
end;

procedure TFrm_CUT1.btn_12_2Click(Sender: TObject);
var
  sBrNo: string;
begin
	sBrNo := cxBrNo12.Text;
	if sBrNo= '' then
  begin
    GMessagebox('���縦 ���� �����ϼ���.', CDMSE);
    Exit;
  end;

	if ( Not Assigned(Frm_CUT09) ) Or ( Frm_CUT09 = Nil ) then Frm_CUT09 := TFrm_CUT09.Create(Nil);
  Frm_CUT09.PnlTitle.Caption := '  ����(��ü) ���� ����ϱ�';
	Frm_CUT09.Tag := 0;
  Frm_CUT09.proc_init;
	Frm_CUT09.edKeyNum.Text := StringReplace(cbKeynumber12.Text, '-', '', [rfReplaceAll]);
	Frm_CUT09.edHdNo.Text := cxHdNo12.Text;
	Frm_CUT09.edBrNo.Text := cxBrNo12.Text;
	Frm_CUT09.Show;
end;

procedure TFrm_CUT1.btn_12_3Click(Sender: TObject);
begin
	if CustView12_1.SelectionCount > 0 then
	begin
		if ( Not Assigned(Frm_CUT09) ) Or ( Frm_CUT09 = Nil ) then Frm_CUT09 := TFrm_CUT09.Create(Nil);
		Frm_CUT09.PnlTitle.Caption := '����(��ü) ���� �����ϱ�';
		Frm_CUT09.Tag := 1;
		Frm_CUT09.edCbCode.Text := CustView12_1.Selections[0].Values[7];
		Frm_CUT09.edBrNo.Text := cxBrNo12.Text;
		Frm_CUT09.proc_init;
		Frm_CUT09.Show;
	end else
	begin
		GMessagebox('�μ��� �����Ͻð� ���� �ٶ��ϴ�.', CDMSE);
	end;
end;

procedure TFrm_CUT1.btn_12_4Click(Sender: TObject);
begin
	if CustView12_1.SelectionCount > 0 then
  begin
		proc_delete_gbroup(CustView12_1.Selections[0].Values[7]);
  end;
end;

procedure TFrm_CUT1.btn_12_5Click(Sender: TObject);
var
  iSeq : Integer;
  sSeq: string;
begin
	if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);
  Frm_CUT011.Tag := 5;
  Frm_CUT011.FControlInitial(False);
  Frm_CUT011.cboBranch.Tag := 5;
  Frm_CUT011.Hint := IntToStr(Self.Tag);
  Frm_CUT011.clbCuSeq.Caption := '';
	Frm_CUT011.proc_search_brKeyNum(cxBrNo12.Text, StringReplace(cbKeynumber12.Text, '-', '', [rfReplaceAll]));
	Frm_CUT011.Left := (Screen.Width - Frm_CUT011.Width) div 2;
	Frm_CUT011.top  := (Screen.Height - Frm_CUT011.Height) div 2;
  if Frm_CUT011.top <= 10 then Frm_CUT011.top := 10;

  Frm_CUT011.Show;
  Frm_CUT011.proc_cust_Intit;
  Frm_CUT011.rdoCuGb3.Checked := True;
  if cxTextEdit15.Text <> '' then
  begin
    sSeq := cxTextEdit15.Text;
    // ���� ���� (��ȣ 2008-08-19)
		iSeq := Frm_CUT011.cboBubinCode.Properties.Items.IndexOf(sSeq + ',' + cxBrNo12.Text);
    if iSeq >= 0 then
    begin
      Frm_CUT011.cboCuBubin.Enabled := False;
      Frm_CUT011.cboCuBubin.ItemIndex := iSeq;
    end;
  end else
  begin
    Frm_CUT011.cboCuBubin.Enabled := True;
    Frm_CUT011.cboCuBubin.ItemIndex := 0;
  end;
end;

procedure TFrm_CUT1.btn_12_6Click(Sender: TObject);
begin
	if ( Not Assigned(Frm_CUT013) ) Or ( Frm_CUT013 = Nil ) then Frm_CUT013 := TFrm_CUT013.Create(Nil);

  Frm_CUT013.FControlInitial(False);
  Frm_CUT013.cboBranch.Tag := 5;
	Frm_CUT013.proc_search_brKeyNum(cxBrNo12.Text, StringReplace(cbKeynumber12.Text, '-', '', [rfReplaceAll]));
  Frm_CUT013.Show;
	Frm_CUT013.proc_bubin_init;
end;

procedure TFrm_CUT1.btn_12_7Click(Sender: TObject);
var
  iKeyNum, iSeq, iRow: Integer;
  sBrNo, sKeyNum, sSeq: string;
  AView: TcxGridDBTableView;
begin
	// ���� ���� (��ȣ 2008-08-19)
  if TCK_USER_PER.COM_CustModify <> '1' then
  begin
    GMessagebox('�� ���������� �����ϴ�.', CDMSE);
    Exit;
	end;

  if cxGridCustom.Visible then
		AView := cxViewCustom
  else
		AView := CustView12_2;

  iRow := AView.DataController.FocusedRecordIndex;
  if iRow = -1 then
    Exit;
    
  iKeyNum   := AView.GetColumnByFieldName('��ǥ��ȣ').Index;
  iSeq      := AView.GetColumnByFieldName('���ڵ�').Index;
	sBrNo     := cxBrNo12.Text;
  sKeyNum   := AView.DataController.Values[iRow, iKeyNum];
  sKeyNum   := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
  sSeq      := AView.DataController.Values[iRow, iSeq];

  // 6 : ����â���� ������ 4 : ����â���� ������
  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);
  Frm_CUT011.Tag := 6;
  Frm_CUT011.FControlInitial(False);
  Frm_CUT011.Hint := IntToStr(Self.Tag);
  Frm_CUT011.clbCuSeq.Caption := sSeq;
  Frm_CUT011.proc_search_brKeyNum(sBrNo, sKeyNum);
	Frm_CUT011.Left := (Screen.Width  - Frm_CUT011.Width) div 2;
	Frm_CUT011.top  := (Screen.Height - Frm_CUT011.Height) div 2;
  if Frm_CUT011.top <= 10 then Frm_CUT011.top := 10;
  Frm_CUT011.Show;
  Frm_CUT011.proc_cust_Intit;
end;

procedure TFrm_CUT1.btn_12_8Click(Sender: TObject);
begin
	if CustView12_1.SelectionCount = 0 then
  begin
		GMessagebox('�ϴ� ���� ��ü���� ������ �ϼž� �մϴ�.', CDMSE);
    Exit;
  end;
	CustView12_2.DataController.SetRecordCount(0);

  cxGrid10.Visible      := True;
  cxGridCustom.Visible  := False;

	proc_BubinCust_Search(0);
end;

procedure TFrm_CUT1.btn_12_9Click(Sender: TObject);
begin
	CustView12_2.DataController.SetRecordCount(0);
	
  cxGrid10.Visible      := True;
  cxGridCustom.Visible  := False;

	proc_BubinCust_Search(1);
end;

procedure TFrm_CUT1.btn_13_1Click(Sender: TObject);
begin
	CustView13_1.Root.TreeList.Clear;
	proc_BubinManage2;
end;

procedure TFrm_CUT1.btn_13_2Click(Sender: TObject);
begin
	if custview13_1.SelectionCount = 0 then
  begin
		GMessagebox('�ϴ� ���� ��ü���� ������ �ϼž� �մϴ�.', CDMSE);
    Exit;
  end;
	CustView13_2.DataController.SetRecordCount(0);
	proc_BubinCust_HIS;
end;

procedure TFrm_CUT1.btn_14_10Click(Sender: TObject);
begin
  pnlBubinAccPrt.Visible := False;
end;

procedure TFrm_CUT1.btn_14_11Click(Sender: TObject);
begin
	if cxGrid_Angel.DataController.RecordCount = 0 then
	begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if TCK_USER_PER.COM_CustExcelDown <> '1' then
	begin
		ShowMessage('[��ȸ�������ٿ�] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	Frm_Main.sgExcel := '��_����������������.xls';
	Frm_Main.sgRpExcel := Format('����>����������-������]%s��/%s', [GetMoneyStr(cxGrid_Angel.DataController.RecordCount), FExcelDownBubinDaily]);
	Frm_Main.cxGridExcel := cxGrid1;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_CUT1.btn_14_1Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSE);
		Exit;
	end;
	proc_bubinSttSearch;
end;

procedure TFrm_CUT1.btn_14_2Click(Sender: TObject);
begin
	if cxGBubinStt.DataController.RecordCount = 0 then
	begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if TCK_USER_PER.COM_CustExcelDown <> '1' then
	begin
		ShowMessage('[��ȸ�������ٿ�] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	Frm_Main.sgExcel := '��_������������.xls';
	Frm_Main.sgRpExcel := Format('����>������������]%s��/%s', [GetMoneyStr(cxGBubinStt.DataController.RecordCount), FExcelDownBubinDaily]);
	Frm_Main.cxGridExcel := cxGrid7;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_CUT1.btn_14_3Click(Sender: TObject);
var
  IE: variant;
begin
  IE := CreateOleObject('InternetExplorer.Application');
  IE.left := 0;
  IE.top := 0;
  IE.Width := Screen.Width;
  IE.Height := Screen.Height;

  IE.Navigate(GS_BUBIN_URL);

  if (GS_PRJ_AREA = 'S') then	IE.Navigate(GS_BUBIN_URL) else
  if (GS_PRJ_AREA = 'O') then IE.Navigate(GS_BUBIN_URL_JI);

  IE.Visible := true;
end;

procedure TFrm_CUT1.btn_14_4Click(Sender: TObject);
var
	i, iRow, iChkCnt: Integer;
  sSlip, ls_TxQry, ls_TxLoad, rv_str, sQueryTemp : string;
  xdom: msDomDocument;
  ls_rxxml: wideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
	iRow := 0;
	iChkCnt := 0;
	for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
	begin
		if (cxGBubinStt.DataController.Values[i, 1] = '1') and (cxGBubinStt.DataController.Values[i,6] = '�Ұ�') and (cxGBubinStt.DataController.Values[i, 5] = '�Ϸ�') then
    begin
      Inc(iRow);
		end;
		if (cxGBubinStt.DataController.Values[i, 1] = '1') then inc(iChkCnt);
	end;

	if ( cxGBubinStt.DataController.RecordCount = 0 ) or (iChkCnt < 1) then
	begin 
		GMessagebox('���õ� ������ �����ϴ�.', CDMSE);
		exit;
	end;
	if ( iRow = 0 ) then
	begin
		GMessagebox('������������ [����-�Ϸ�]������ �����մϴ�.', CDMSE);
		Exit;
	end;
	
  cxLabel175.Caption := IntToStr(iRow);
  cxLabel176.Caption := '0';
  Gauge1.Max := iRow;
  Gauge1.Position := 0;
  iRow := 0;
  if Gauge1.Max > 1 then
  begin
		pnl_BubinAccStatus.Left := pnl_CUTB3.Left + ((pnl_CUTB3.Width - pnl_BubinAccStatus.Width) div 2);
		
		pnl_BubinAccStatus.Top := 150;
		pnl_BubinAccStatus.Visible := True;
		pnl_BubinAccStatus.BringToFront;
		Application.ProcessMessages;
  end;
  for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
  begin
    if (cxGBubinStt.DataController.Values[i, 1] = '1') and (cxGBubinStt.DataController.Values[i, 6] = '�Ұ�') and (cxGBubinStt.DataController.Values[i, 5] = '�Ϸ�') then
    begin
      Application.ProcessMessages;
      sSlip := cxGBubinStt.DataController.Values[i, 4];
      //QUERY.XML ������ ����Ͽ� ������Ʈ �Ѵ�.
      ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
			fGet_BlowFish_Query(GSQ_CUST_BUBIN_ACCWEBVIEWUPDATE, sQueryTemp);
      ls_TxQry := Format(sQueryTemp, [sSlip]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'ACCWEBVIEWUPDATE', [rfReplaceAll]);
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
            xdom := ComsDomDocument.Create;
            try
              if xdom.loadXML(ls_rxxml) then
              begin
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
									Inc(iRow);
                  cxLabel176.Caption := IntToStr(iRow);
                  Gauge1.Position := iRow;
                  cxGBubinStt.DataController.Values[i, 1] := '0';
                  cxGBubinStt.DataController.Values[i, 6] := '����';
                end;
              end;
            finally
              xdom := Nil;
            end;
          end;
        end;
      finally
        FreeAndNil(slReceive);
        Frm_Flash.Hide;
      end;
    end;
    cxGBubinStt.DataController.Values[i, 1] := '0';
  end;

  if (cxLabel175.Caption <> cxLabel176.Caption) then
  begin
    GMessagebox('������ ������ ������ �ֽ��ϴ�.' + #13#10 +
      '�ٽ��ѹ� ������ �����ֱ� ��ư�� �����ּ���', CDMSE);
		pnl_BubinAccStatus.Visible := False;
	end else
  begin
    GMessagebox('�Ϸ� �Ͽ����ϴ�.', CDMSI);
		pnl_BubinAccStatus.Visible := False;
	end;
end;

procedure TFrm_CUT1.btn_14_5Click(Sender: TObject);
var
	i, iRow, iSupply, iTag, iChkCnt : Integer;
	sCharge, sAddCharge, sBaseCharge, sPassCharge, sWaitCharge, sCommission, sSum, sEtcCharge, sSupply, sTax,
	sSlip, ls_TxQry, ls_TxLoad, rv_str, bTax, sQueryTemp, sGubun1, sGubun2, sGubun3, sTmp, sMsg, sBtnName : string;
	xdom: msDomDocument;
  ls_rxxml: wideString;
  slReceive: TStringList;
	ErrCode: integer;
	bTmp : Boolean;
begin
	iTag := TcxButton(Sender).Tag;
	sBtnName := TcxButton(Sender).Caption;
	if iTag = 0 then 
	begin
		sGubun1 := '������';  //����Ʈ ���� �������
		sTmp    := '�Ϸ�';    //update �� ����Ʈ�� ��Ī ����
		sMsg    := '�ϰ�����' // �Ϸ� �� �޼���
	end else
	if iTag = 1 then
	begin
		sGubun1 := '�Ϸ�' ;
		sGubun2 := '��������';  //����Ʈ ���� �������
		sGubun3 := '�Ұ�' ;
		sTmp    := '������';
		sMsg    := '�ϰ��������' // �Ϸ� �� �޼���
	end;
	
	iRow := 0;
	iChkCnt := 0;
	for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
	begin
		if iTag = 0 then //�ϰ�����ó��
		begin
			if (cxGBubinStt.DataController.Values[i, 1] = '1') and (cxGBubinStt.DataController.Values[i, 5] = sGubun1) then
			begin
				Inc(iRow);
			end;
		end else
		if iTag = 1 then //�ϰ�����ó�� ���
		begin
			if (cxGBubinStt.DataController.Values[i, 1] = '1') and
				((cxGBubinStt.DataController.Values[i, 5] = sGubun1) or (cxGBubinStt.DataController.Values[i, 5] = sGubun2)){ and
				 (cxGBubinStt.DataController.Values[i, 6] = sGubun3) }   //�Ϸ� or �������� �� ������ �Ұ��� ������ 
				 //�ϰ���� �� �������� �Ұ��� ���� 20210818 KHS.����� ����
			then
			begin
				Inc(iRow);
			end;
		end;
		if (cxGBubinStt.DataController.Values[i, 1] = '1') then inc(iChkCnt);
		
	end;

	if ( cxGBubinStt.DataController.RecordCount = 0 ) or (iChkCnt < 1) then
	begin 
		GMessagebox('���õ� ������ �����ϴ�.', CDMSE);
		exit;
	end;
	if ( iRow = 0 ) then
	begin
		GMessagebox('���õ� ������ ��� [' + sTmp + ']���� �Դϴ�.' + #13#10 + #13#10
						+ sBtnName + ' �Ͻ÷��� [' + sGubun1 + ']������ �����Ͽ� �ֽʽÿ�', CDMSE);
		Exit;
	end;

	cxLabel175.Caption := IntToStr(iRow);
	cxLabel176.Caption := '0';
  Gauge1.Max := iRow;
  Gauge1.Position := 0;
  iRow := 0;
  if Gauge1.Max > 1 then
  begin
{    pnl_BubinAccStatus.Left := frm_Main.Left + ((frm_Main.Width - pnl_BubinAccStatus.Width) div 2);
		pnl_BubinAccStatus.Top := 150;
		pnl_BubinAccStatus.Visible := True;
		pnl_BubinAccStatus.BringToFront;   }
//		pnl_BubinAccStatus.Left := frm_Main.Left + ((frm_Main.Width - pnl_BubinAccStatus.Width) div 2);
		pnl_BubinAccStatus.Left := pnl_CUTB3.Left + ((pnl_CUTB3.Width - pnl_BubinAccStatus.Width) div 2);
		
		pnl_BubinAccStatus.Top := 150;
		pnl_BubinAccStatus.Visible := True;
		pnl_BubinAccStatus.BringToFront;
	end;
	
	for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
  begin
		bTmp := False;
		if iTag = 0 then
		begin
			if (cxGBubinStt.DataController.Values[i, 1] = '1') and (cxGBubinStt.DataController.Values[i,5] = sGubun1) then bTmp := True;
		end else
		if iTag = 1 then
		begin
			if (cxGBubinStt.DataController.Values[i, 1] = '1') and
				((cxGBubinStt.DataController.Values[i, 5] = sGubun1) or (cxGBubinStt.DataController.Values[i, 5] = sGubun2)) {and
				 (cxGBubinStt.DataController.Values[i, 6] = sGubun3) }   //�Ϸ� or �������� �� ������ �Ұ��� ������ 
				 //�ϰ���� �� �������� �Ұ��� ���� 20210818 KHS.����� ����
			then bTmp := True;
		end;

		if bTmp then
		begin
			Application.ProcessMessages;
      sSlip := cxGBubinStt.DataController.Values[i, 4];
      sCharge := cxGBubinStt.DataController.Values[i, 25]; //�������
      sAddCharge := cxGBubinStt.DataController.Values[i, 28]; //�������
      sPassCharge := cxGBubinStt.DataController.Values[i, 30]; //�������
      sWaitCharge := cxGBubinStt.DataController.Values[i, 31]; //�����
			sBaseCharge := IntToStr(StrToIntDef(sCharge, 0) - StrToIntDef(sAddCharge, 0)
										 - StrToIntDef(sPassCharge, 0) - StrToIntDef(sWaitCharge, 0));
      sCommission := cxGBubinStt.DataController.Values[i, 26]; //��������
      bTax := cxGBubinStt.DataController.Values[i, 43];
			iSupply := StrToIntDef(sBaseCharge, 0) + StrToIntDef(sPassCharge, 0) + StrToIntDef(sWaitCharge, 0);
			if bTax <> 'n' then
				sTax := FloatToStr(iSupply * 0.1)
      else
				sTax := '0';
      sSupply := IntToStr(iSupply);
			sEtcCharge := cxGBubinStt.DataController.Values[i, 34];
			sSum := IntToStr(iSupply + StrToIntDef(sTax, 0) + StrToIntDef(sEtcCharge, 0));
      //QUERY.XML ������ ����Ͽ� ������Ʈ �Ѵ�.
      ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
      fGet_BlowFish_Query(GSQ_CUST_BUBIN_ACCUPDATE, sQueryTemp);
			ls_TxQry := Format(sQueryTemp, [sSupply, sTax, sBaseCharge, sSlip]);

			//�ϰ�������� 20210714KHS
			if iTag = 1 then 
			begin
				ls_TxQry := StringReplace(ls_TxQry, 'APPROVAL_YN=''y''', 'APPROVAL_YN=''n''', [rfReplaceAll]);
				//�������Ұ�ó�� �߰� 20210818KHS ����� ����
				ls_TxQry := StringReplace(ls_TxQry, 'APPROVAL_YN=''n''', 'APPROVAL_YN=''n'', WEBVIEW_YN = ''n''', [rfReplaceAll]);
			end;
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BUBINACCUPDATE', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

      slReceive := TStringList.Create;
			try
        if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
        begin
          rv_str := slReceive[0];
          if rv_str <> '' then
          begin
            ls_rxxml := rv_str;
            xdom := ComsDomDocument.Create;
            try
              if xdom.loadXML(ls_rxxml) then
              begin
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  Inc(iRow);
                  cxLabel176.Caption := IntToStr(iRow);
                  Gauge1.Position := iRow;
                  cxGBubinStt.DataController.Values[i, 1] := '0';
									cxGBubinStt.DataController.Values[i, 5] := sTmp;
									if iTag = 1 then cxGBubinStt.DataController.Values[i, 6] := sGubun3; //�ϰ�����϶��� ������ �Ұ��� ǥ��
                  cxGBubinStt.DataController.Values[i, 29] := sBaseCharge;
                  cxGBubinStt.DataController.Values[i, 32] := sSupply;
                  cxGBubinStt.DataController.Values[i, 33] := sTax;
                  cxGBubinStt.DataController.Values[i, 35] := sSum;
                end;
              end;
            finally
              xdom := Nil;
						end;
          end;
        end;
      finally
				FreeAndNil(slReceive);
				Frm_Flash.Hide;
      end;
    end;
    cxGBubinStt.DataController.Values[i, 1] := '0';
  end;
  if (cxLabel175.Caption <> cxLabel176.Caption) then
  begin
		GMessagebox('������ ������ �ֽ��ϴ�.' + #13#10 + '�ٽ��ѹ� ' + sMsg + '�� �����ּ���', CDMSE);
    pnl_BubinAccStatus.Visible := False;
  end else
  begin
		GMessagebox(sMsg + ' �Ϸ� �Ͽ����ϴ�.', CDMSI);
    pnl_BubinAccStatus.Visible := False;
  end;
end;

procedure TFrm_CUT1.btn_14_6Click(Sender: TObject);
var
  slList: TStringList;
  sUrl, sSlip: string;
  iRow, i: Integer;
begin
  lbbubinAccPrintList.Items.Clear;
  slList := TStringList.Create;
  try
    slList.Clear;
		for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
    begin
      if (cxGBubinStt.DataController.Values[i, 1] = '1') then
      begin
        sSlip := cxGBubinStt.DataController.Values[i, 4];
				if slList.Count <= 2 then
          slList.Add(sSlip)
        else
        begin
          slList.CommaText := slList.CommaText + '/3';
          lbbubinAccPrintList.Items.Add(slList.CommaText);
          slList.Clear;
          slList.Add(sSlip);
        end;
      end;
    end;
		if slList.Count > 0 then
    begin
      slList.CommaText := slList.CommaText + '/' + IntToStr(slList.Count);
      lbbubinAccPrintList.Items.Add(slList.CommaText);
    end;
    if lbbubinAccPrintList.Items.Count > 0 then
    begin
      iRow := lbbubinAccPrintList.Items.count - 1;

      cxcbBubinAccPage.Tag := 99;
			cxcbBubinAccPage.Properties.Items.Clear;
      for i := 0 to iRow do
        cxcbBubinAccPage.Properties.Items.Add(IntToStr(i + 1) + ' Page');
      cxcbBubinAccPage.ItemIndex := 0;
      cxcbBubinAccPage.Tag := 0;

      if (GS_PRJ_AREA = 'S') then sUrl := Format(GS_BUBIN_URL_PRINT, [lbbubinAccPrintList.Items.Strings[cxcbBubinAccPage.ItemIndex]]) else
      if (GS_PRJ_AREA = 'O') then sUrl := Format(GS_BUBIN_URL_PRINT_JI, [lbbubinAccPrintList.Items.Strings[cxcbBubinAccPage.ItemIndex]]);

      WebBrowser1.Navigate(sUrl);
      cxLabel165.Caption := IntToStr(lbbubinAccPrintList.Items.count);
      pnlBubinAccPrt.Left := (Self.Width - pnlBubinAccPrt.Width) div 2;
      pnlBubinAccPrt.Left := ((Self.Height - pnlBubinAccPrt.Height) div 2) - 30;
      pnlBubinAccPrt.Visible := True;
      pnlBubinAccPrt.BringToFront;
    end else
    begin
      GMessagebox('���õ� ������ �����ϴ�.', CDMSE);
    end;
  finally
    slList.Free;
  end;
end;

procedure TFrm_CUT1.btn_14_7Click(Sender: TObject);
begin
  try
    WebBrowser1.ExecWB(OLECMDID_PRINTPREVIEW, OLECMDEXECOPT_DONTPROMPTUSER);
  finally
  end;
end;

procedure TFrm_CUT1.btn_14_8Click(Sender: TObject);
	procedure PrintPage;
	begin
		Application.ProcessMessages;
		WebBrowser1.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_DONTPROMPTUSER);
	end;
var i : integer;
begin
	try
		if chk_AllPrint.checked then    //��ü��� ����׽�Ʈ. ����¡ �Ǵ� ������ ���� ����� �ʹ����� �����. 2019.04.02 KHS
		begin
			Frm_Flash.Show;
			Sleep(10);
			Frm_Flash.BringToFront;

			Frm_Flash.cxPBar1.Properties.Max := cxcbBubinAccPage.properties.items.count -1;
			Frm_Flash.cxPBar1.Position := 0;

			cxcbBubinAccPage.Tag := 99;
			cxcbBubinAccPage.ItemIndex := -1;
			cxcbBubinAccPage.Tag := 0;
			for i := 0 to cxcbBubinAccPage.properties.items.count -1 do
			begin
				Frm_Flash.cxPBar1.Position := I + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(I + 1) + '/' + IntToStr(cxcbBubinAccPage.properties.items.count);
				Application.ProcessMessages;

				cxcbBubinAccPage.ItemIndex := i;
				if i = cxcbBubinAccPage.properties.items.count -1 then
				sleep(500);
			end;
			Frm_Flash.Hide;
			if cxcbBubinAccPage.properties.items.count > 0 then GMessagebox('�μ⸦ ��û�߽��ϴ�.', CDMSI);
		end else  //�������
		begin
			WebBrowser1.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_DONTPROMPTUSER);
			GMessagebox('�μ⸦ ��û�߽��ϴ�.', CDMSI);
		end;
	finally
  end;
end;

procedure TFrm_CUT1.btn_14_9Click(Sender: TObject);
begin
  try
		WebBrowser1.ExecWB(OLECMDID_SAVEAS, OLECMDEXECOPT_PROMPTUSER);
  finally
  end;
end;

procedure TFrm_CUT1.btn_15_1Click(Sender: TObject);
var
  sHdNo, sBrNo, sWhere, sQry, sTable, ls_TxQry, ls_TxLoad, sQueryTemp: string; // XML File Load
  slReceive : TStringList;
  ErrCode: integer;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSE);
		Exit;
	end;
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('���� ������ �Ҽ� ���縸 ��ȸ�Ҽ� �ֽ��ϴ�.', CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('��������') then Exit;

	if GT_USERIF.LV = '60' then
	begin
		if GT_SEL_BRNO.GUBUN <> '1' then
		begin
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := '';
		end else
    if GT_SEL_BRNO.GUBUN = '1' then
		begin
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
		end;
	end else
	begin
		sHdNo := GT_USERIF.HD;
    sBrNo := GT_USERIF.BR;
  end;

  //////////////////////////////////////////////////////////////////////////////
	// ����>��������]1000��/A100-B100/��û����Ʈ/��ǥ��ȣ:��ü/�̿�Ⱓ:20100101~20100131
  FExcelDownBubinAuth := Format('%s/%s/��ǥ��ȣ:%s/�̿�Ⱓ:%s~%s',
    [
        GetSelBrInfo
      , IfThen(rbBubinAuth01.Checked, rbBubinAuth01.Caption, rbBubinAuth02.Caption)
			, cbKeynumber15.Text
      , cxDate22.Text, cxDate23.Text
    ]);
  //////////////////////////////////////////////////////////////////////////////

  sWhere := '';

  if sBrNo <> '' then
    sWhere := Format(' AND A.CONF_HEAD = ''%s'' AND A.CONF_BRCH = ''%s'' ',[sHdNo, sBrNo])
  else
    sWhere := Format(' AND A.CONF_HEAD = ''%s'' ',[sHdNo]);

	if (cbKeynumber15.Text <> '��ü') and (cbKeynumber15.Text <> '') then
		sWhere := sWhere + format(' AND (A.KEY_NUMBER = ''%s'') ',[StringReplace(cbKeynumber15.Text,'-','',[rfReplaceAll])]);

  if rbBubinAuthchkDate02.Checked then
		sWhere := sWhere + format(' AND TO_CHAR(A.IN_DATE,''YYYYMMDDHH24MISS'') BETWEEN ''%s090000'' AND ''%s090000'' ', [formatdatetime('yyyymmdd',cxDate22.Date),formatdatetime('yyyymmdd',cxDate23.Date)]);

	if edBubinSearch.Text <> '' then
  begin
    case cbBubinWk.ItemIndex of
      0 : sQry := ' AND A.CONF_WK_SABUN || A.CONF_WORKER ';
      1 : sQry := ' AND A.CONF_USER ';
      2 : sQry := ' AND A.CONF_CUST_TEL ';
      3 : sQry := ' AND A.CONF_SLIP ';
      4 :
      begin
        if rbBubinAuth01.Checked then
          sQry := ' AND A.CONF_INFO '
        else if rbBubinAuth02.Checked then
          sQry := ' AND B.CONF_INFO ';
      end;
    end;
    sWhere := sWhere + sQry + Format('LIKE ''%s%s%s'' ', ['%', Param_Filtering(edBubinSearch.Text), '%']);
  end;

  if rbBubinAuth01.Checked then
  begin
    if (edBubinArea.Text <> '') and (cbBubinArea.ItemIndex = 0) then
      sWhere := sWhere + format(' AND A.CONF_AREA || A.CONF_AREA2 || A.CONF_AREA3 || A.CONF_AREA5 LIKE ''%s%s%s'' ',['%', Param_Filtering(edBubinArea.Text), '%'])
    else if (edBubinArea.Text <> '') and (cbBubinArea.ItemIndex = 1) then
      sWhere := sWhere + format(' AND A.CONF_EDAREA || A.CONF_EDAREA2 || A.CONF_EDAREA3 || A.CONF_EDAREA5 LIKE ''%s%s%s'' ',['%', Param_Filtering(edBubinArea.Text),'%']);
  end else if rbBubinAuth02.Checked then
  begin
    if (edBubinArea.Text <> '') and (cbBubinArea.ItemIndex = 0) then
      sWhere := sWhere + format(' AND B.DEPART LIKE ''%s%s%s'' ',['%', Param_Filtering(edBubinArea.Text),'%'])
    else if (edBubinArea.Text <> '') and (cbBubinArea.ItemIndex = 1) then
      sWhere := sWhere + format(' AND B.DEST LIKE ''%s%s%s'' ',['%', Param_Filtering(edBubinArea.Text),'%']);
  end;

  if rbBubinAuthchkDate01.Checked then
    sTable := 'CDMS_A01_TODAY '
  else if rbBubinAuthchkDate02.Checked then
    sTable := 'CDMS_A01 ';

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  if rbBubinAuth01.Checked then
  begin
    fGet_BlowFish_Query(GSQ_BUBIN_REQ, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sTable, sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BREQL00020', [rfReplaceAll]);
  end else
  if rbBubinAuth02.Checked then
  begin
    fGet_BlowFish_Query(GSQ_BUBIN_ACC, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sTable, sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BACCL00021', [rfReplaceAll]);
  end;
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', '', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '5000', [rfReplaceAll]);

	Screen.Cursor := crHourGlass;
	cxPageControl1.Enabled := False;
  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
    begin
      Application.ProcessMessages;
			proc_recieve(slReceive);
      Screen.Cursor := crDefault;
    end;
	finally
    frm_Main.proc_SocketWork(True);
    FreeAndNil(slReceive);
		Screen.Cursor := crDefault;
		cxPageControl1.Enabled := True;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUT1.btn_15_2Click(Sender: TObject);
begin
	if cxGBubinAuth.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
    Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if TCK_USER_PER.COM_CustExcelDown <> '1' then
	begin
		ShowMessage('[��ȸ�������ٿ�] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
  end;

  Frm_Main.sgExcel := '��_��������.xls';
  Frm_Main.sgRpExcel := Format('����>��������]%s��/%s', [GetMoneyStr(cxGBubinAuth.DataController.RecordCount), FExcelDownBubinAuth]);
  Frm_Main.cxGridExcel := cxGrid12;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_CUT1.btn_16_1Click(Sender: TObject);
var
	XmlData, Param, ErrMsg, sHdNo, sBrNo : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd : TStringList;
	i, ErrCode, iRow : Integer;
begin
	if fGetChk_Search_HdBrNo('����õ¡����Ȳ') then Exit;

	try
		Param := '';
		Param := Param + FormatDateTime('yyyymmdd', cxDate16_1S.Date) +  '��';
		Param := Param + FormatDateTime('yyyymmdd', cxDate16_1E.Date) +  '��';
		Param := Param + IntToStr(cxComboBox4.ItemIndex) +  '��';
		if GT_USERIF.LV = '60' then
		begin
			if GT_SEL_BRNO.GUBUN <> '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := '';
			end else
      if GT_SEL_BRNO.GUBUN = '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := GT_SEL_BRNO.BrNo;
			end;
		end else
		begin
			sHdNo := GT_USERIF.HD;
			sBrNo := GT_USERIF.BR;
		end;
		Param := Param + sHdNo +  '��' + sBrNo +  '��';
		Param := Param + IntToStr(cxComboBox5.ItemIndex) +  '��';
		if rbo_WKTOT.Checked then
			Param := Param + '0' +  '��'
		else
		if rbo_WKDayByDay.Checked then
			Param := Param + '1' +  '��';

		Param := Param + IntToStr(cxComboBox6.ItemIndex);

		Screen.Cursor := crHourGlass;
		cxPageControl1.Enabled := False;
		if not RequestBase(GetSel05('MNG_CALC', 'MNG_CALC.LIST_TAX_STATS_KEYNUM', '10000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('����õ¡����Ȳ ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			cxPageControl1.Enabled := True;
			Exit;
		end;

		xdom := ComsDomDocument.Create;
    try
		  xdom.loadXML(XmlData);
		  if not xdom.loadXML(XmlData) then
		  begin
				cxPageControl1.Enabled := True;
				Exit;
		  end;
		  lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

		  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
		  begin
		  	if rbo_WKTOT.Checked then
		  	begin
		  		cxViewWithholdingTax.Columns[7].Visible := False;
		  		cxViewWithholdingTax.Columns[8].Visible := False;
		  	end
		  	else if rbo_WKDayByDay.Checked then
		  	begin
		  		cxViewWithholdingTax.Columns[7].Visible := True;
		  		cxViewWithholdingTax.Columns[8].Visible := True;
		  	end;

		  	cxViewWithholdingTax.DataController.SetRecordCount(0);

		  	lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  	ls_Rcrd := TStringList.Create;
		  	cxViewWithholdingTax.BeginUpdate;
		  	try
		  		cxViewWithholdingTax.Columns[0].SortOrder := soAscending;
		  		cxViewWithholdingTax.Columns[0].SortIndex := 0;
		  		for I := 0 to lst_Result.length - 1 do
		  		begin
		  			GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  			iRow := cxViewWithholdingTax.DataController.AppendRecord;
		  			cxViewWithholdingTax.DataController.Values[iRow, 0] := inttostr(iRow + 1);
		  			cxViewWithholdingTax.DataController.Values[iRow, 1] := ls_Rcrd[0];
		  			cxViewWithholdingTax.DataController.Values[iRow, 2] := ls_Rcrd[1];
		  			cxViewWithholdingTax.DataController.Values[iRow, 3] := ls_Rcrd[2];
		  			if Length(ls_Rcrd[3]) > 7 then
		  				cxViewWithholdingTax.DataController.Values[iRow, 4] := Copy(ls_Rcrd[3], 1, 6) + '-' + Copy(ls_Rcrd[3], 7, 7)
		  			else
		  				cxViewWithholdingTax.DataController.Values[iRow, 4] := ls_Rcrd[3];
		  			cxViewWithholdingTax.DataController.Values[iRow, 5] := ls_Rcrd[4];
						if rbo_WKTOT.Checked then
		  			begin
		  				cxViewWithholdingTax.DataController.Values[iRow, 6] := ls_Rcrd[10];
		  				cxViewWithholdingTax.DataController.Values[iRow, 7] := '';
		  				cxViewWithholdingTax.DataController.Values[iRow, 8] := '';
		  				cxViewWithholdingTax.DataController.Values[iRow, 9] := ls_Rcrd[5];
		  				cxViewWithholdingTax.DataController.Values[iRow,10] := StrToIntDef(ls_rcrd[6], 0);
		  				cxViewWithholdingTax.DataController.Values[iRow,11] := StrToIntDef(ls_rcrd[7], 0);
		  				cxViewWithholdingTax.DataController.Values[iRow,12] := StrToIntDef(ls_rcrd[8], 0);
		  				cxViewWithholdingTax.DataController.Values[iRow,13] := StrToIntDef(ls_rcrd[9], 0);
						end else
		  			if rbo_WKDayByDay.Checked then
		  			begin
		  				cxViewWithholdingTax.DataController.Values[iRow, 6] := ls_Rcrd[12];
		  				cxViewWithholdingTax.DataController.Values[iRow, 7] := ls_Rcrd[10];
		  				cxViewWithholdingTax.DataController.Values[iRow, 8] := ls_Rcrd[11];
		  				cxViewWithholdingTax.DataController.Values[iRow, 9] := ls_Rcrd[5];
		  				cxViewWithholdingTax.DataController.Values[iRow,10] := StrToIntDef(ls_rcrd[6], 0);
		  				cxViewWithholdingTax.DataController.Values[iRow,11] := StrToIntDef(ls_rcrd[7], 0);
		  				cxViewWithholdingTax.DataController.Values[iRow,12] := StrToIntDef(ls_rcrd[8], 0);
		  				cxViewWithholdingTax.DataController.Values[iRow,13] := StrToIntDef(ls_rcrd[9], 0);
		  			end;
		  		end;
		  	finally
		  		cxViewWithholdingTax.EndUpdate;
		  		ls_Rcrd.Free;
		  		Screen.Cursor := crDefault;
		  		Frm_Flash.Hide;
		  	end;
		  end else
		  	cxViewWithholdingTax.DataController.SetRecordCount(0);
    finally
			Screen.Cursor := crDefault;
			cxPageControl1.Enabled := True;
      xdom := Nil;
    end;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			cxPageControl1.Enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_CUT1.btn_16_2Click(Sender: TObject);
begin
	if cxViewWithholdingTax.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
    Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if TCK_USER_PER.COM_CustExcelDown <> '1' then
	begin
    ShowMessage('[��ȸ�������ٿ�] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
  end;

  Frm_Main.sgExcel := '����_����õ¡��.xls';
  Frm_Main.sgRpExcel := Format('����>����õ¡��]%s��/%s', [GetMoneyStr(cxViewWithholdingTax.DataController.RecordCount), FExcelDownWithHolding]);
  Frm_Main.cxGridExcel := cxGrid15;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_CUT1.btn_18_1Click(Sender: TObject);
var sBrNo : String;
	ErrCode, iRow, i, j, iCnt: integer;
	Param, ErrMsg, XmlData: string;
	xdom: MSDomDocument;
	ls_MSG_Err: string;
	ls_Rcrd, slList: TStringList;
	ls_rxxml, sTmp: string;
	lst_Count, lst_Result: IXMLDomNodeList;
begin
	Try
		sBrNo := Func_CheckBrNo; 

		if StartDateTime('yyyymmdd') = FormatDateTime('yyyymmdd', cxDate18_1S.Date) then
			Param := 'CDMS_A01_TODAY'
		else
			Param := 'CDMS_A01';
		Param := Param + '��' + FormatDateTime('yyyymmdd', cxDate18_1S.Date) + '090000';
		Param := Param + '��' + FormatDateTime('yyyymmdd', cxDate18_1E.Date) + '090000';
		Param := Param + '��' + sBrNo;

    if cbWhere18.ItemIndex = 0 then Param := Param + '����'
                               else Param := Param + '��' + IntToStr(cbWhere18.ItemIndex) + '��' + edtKeyword18.Text;

		cxPageControl1.Enabled := False;
		Screen.Cursor := crHourGlass;

		slList := TStringList.Create;
		Try
			if not RequestBasePaging(GetSEL06('GET_BGROUP_ORDER_DAYCLOSE', 'MNG_BGROUP.GET_BGROUP_ORDER_DAYCLOSE', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('�ϸ��� ��ȸ ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				cxPageControl1.Enabled := True;
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				cxGrid_Angel2.DataController.SetRecordCount(0);
				for i := 0 to cxGrid_Angel2.ColumnCount - 1 do
				begin
					cxGrid_Angel2.Columns[i].SortIndex := -1;
					cxGrid_Angel2.Columns[i].SortOrder := soNone;
				end;
				for j := 0 to slList.Count - 1 do
				begin
					Frm_Flash.cxPBar1.Position := j + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
					Application.ProcessMessages;
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);

					lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
					if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text, 0) > 0 then
					begin
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
						ls_Rcrd := TStringList.Create;
						cxGrid_Angel2.BeginUpdate;
						try
							for I := 0 to lst_Result.length - 1 do
							begin
								GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

								///////////////////////////�������� ����//////////////////////////////
								iRow := cxGrid_Angel2.DataController.AppendRecord;
								ls_Rcrd.Insert(0, IntToStr(iRow + 1));
								cxGrid_Angel2.DataController.Values[iRow,  0] := ls_Rcrd[ 0];                   //����
								cxGrid_Angel2.DataController.Values[iRow,  1] := ls_Rcrd[ 1];                   //������ȣ

								//���������� ���
								//ls_Rcrd[44] //�������� 
								sTmp := StringReplace(ls_Rcrd[44], ' ', '', [rfReplaceAll]); //in_date �������� ���� 20210707KHS �̺����̻��û
								sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]); 
								sTmp := StringReplace(sTmp, ':', '', [rfReplaceAll]); 
								sTmp := func_JON03SalesDate(sTmp);  
								cxGrid_Angel2.DataController.Values[iRow,  2] := sTmp;                         //������
								cxGrid_Angel2.DataController.Values[iRow,  3] := ls_Rcrd[ 2];                  //�����Ͻ�-���������Ͻ�
								cxGrid_Angel2.DataController.Values[iRow,  4] := ls_Rcrd[ 3];                  //�����

								if ls_Rcrd[ 4] = 'y' then sTmp := 'Ź��' else sTmp := '�븮';
								cxGrid_Angel2.DataController.Values[iRow,  5] := sTmp;                         //���񽺸�

								if ls_Rcrd[ 5] = '2' then sTmp := '�Ϸ�' else
								if ls_Rcrd[ 5] = '4' then sTmp := '����' else
								if ls_Rcrd[ 5] = '8' then sTmp := '���' else
								if ls_Rcrd[ 5] = '0' then sTmp := '����' else
								if ls_Rcrd[ 5] = '1' then sTmp := '����' else
								if ls_Rcrd[ 5] = '3' then sTmp := '����' else
								if ls_Rcrd[ 5] = '5' then sTmp := '���' else
								if ls_Rcrd[ 5] = 'R' then sTmp := '����';							
								cxGrid_Angel2.DataController.Values[iRow,  6] := sTmp      ;                  //��������- ��������
								cxGrid_Angel2.DataController.Values[iRow,  7] := '����';                       //����/�Ϲ� ������ ���θ� ��ȸ�ȴٰ� ��. ���¿����
								cxGrid_Angel2.DataController.Values[iRow,  8] := ls_Rcrd[ 6];                  //����
								cxGrid_Angel2.DataController.Values[iRow,  9] := ls_Rcrd[ 7];                  //����å
								cxGrid_Angel2.DataController.Values[iRow, 10] := strtocall(ls_Rcrd[ 8]);       //����ȭ��ȣ
								cxGrid_Angel2.DataController.Values[iRow, 11] := ls_Rcrd[ 9];                  //��ü ID-�����ڵ�
								cxGrid_Angel2.DataController.Values[iRow, 12] := ls_Rcrd[10];                  //��ü��
								cxGrid_Angel2.DataController.Values[iRow, 13] := ls_Rcrd[11];                  //������
								cxGrid_Angel2.DataController.Values[iRow, 14] := ls_Rcrd[12];                  //������һ���
								cxGrid_Angel2.DataController.Values[iRow, 15] := ls_Rcrd[13];                  //���ID
								cxGrid_Angel2.DataController.Values[iRow, 16] := ls_Rcrd[14];                  //�����
								cxGrid_Angel2.DataController.Values[iRow, 17] := ls_Rcrd[15];                  //����

//����5���Ҽ��̸� �ڱ��(Y) �ƴ� Ÿ���(N) "/" 
//����orKM���̱��(Y), �Ϲ�orKM�Ϲݱ��(N)
//1. �ݸ��� �ý��ۿ� ��ϵ� �����Ҽ�(5������)�� ���鿡 ���ؼ��� "�ڱ��(Y)" �� ó�� �ϰ�, �׿ܴ� "Ÿ���(N)"  �׸��� �ݸ��� �����̾����� Y  �Ϲݱ��� N ��.
//2. KM�� �����̾���簡 ���� �޾����� "�ڱ��(Y)" �̰� "���α��(Y)"  ��.. 
// ''/'/3. KM�� �Ϲݱ�簡 ���� �޾����� "�ڱ��(N)" �̰� "���α��(N)"  ��.. 
//		        5������	�׿�	KM�����̾�	KM�Ϲݱ��
//��.Ÿ����		Y	      N	    Y	          N
//���α���	+	Y	      Y	    Y	
//          -	N	      N		              N

								if ls_Rcrd[13] = '' then
									cxGrid_Angel2.DataController.Values[iRow, 18] := ''
								else
									cxGrid_Angel2.DataController.Values[iRow, 18] := ls_Rcrd[16];                //��/Ÿ��� ����

								//�������� ��� ���� �׸� ���� ��ó�� 20210329KHS ����� ����	
								if ls_Rcrd[15] = '������' then
								begin	
									cxGrid_Angel2.DataController.Values[iRow, 15] := '';                  //���ID
									cxGrid_Angel2.DataController.Values[iRow, 16] := '';                  //�����
									cxGrid_Angel2.DataController.Values[iRow, 17] := '';                  //����
									cxGrid_Angel2.DataController.Values[iRow, 18] := '';
								
                end;
								cxGrid_Angel2.DataController.Values[iRow, 19] := ls_Rcrd[17];                  //�����ð�
								cxGrid_Angel2.DataController.Values[iRow, 20] := ls_Rcrd[18];                  //���ð�
								cxGrid_Angel2.DataController.Values[iRow, 21] := ls_Rcrd[19];                  //��������ð�
								cxGrid_Angel2.DataController.Values[iRow, 22] := ls_Rcrd[20];                  //����� POI
								cxGrid_Angel2.DataController.Values[iRow, 23] := ls_Rcrd[21] + ' ' + ls_Rcrd[22] + ' ' + ls_Rcrd[23];//����ּ�
								cxGrid_Angel2.DataController.Values[iRow, 24] := ls_Rcrd[21];                  //����� ��/��
								cxGrid_Angel2.DataController.Values[iRow, 25] := ls_Rcrd[22];                  //����� ��/��
								cxGrid_Angel2.DataController.Values[iRow, 26] := ls_Rcrd[23];                  //����� ��/��
								cxGrid_Angel2.DataController.Values[iRow, 27] := ls_Rcrd[24];                 //������ POI
								cxGrid_Angel2.DataController.Values[iRow, 28] := ls_Rcrd[25] + ' ' + ls_Rcrd[26] + ' ' + ls_Rcrd[27];//�����ּ�
								cxGrid_Angel2.DataController.Values[iRow, 29] := ls_Rcrd[25];                  //������ ��/��
								cxGrid_Angel2.DataController.Values[iRow, 30] := ls_Rcrd[26];                  //������ ��/��
								cxGrid_Angel2.DataController.Values[iRow, 31] := ls_Rcrd[27];                  //������ ��/��
								//<COL>^����Ǫ��������Ƽ3�����ǽ���</COL><COL>^���̾Ȱ����������Ʈ</COL>
								sTmp := ls_Rcrd[28];
								sTmp := StringReplace(sTmp, '<COL>', '', [rfReplaceAll]);
								sTmp := StringReplace(sTmp, '</COL>', '', [rfReplaceAll]);
								if Copy(sTmp, 1,1) = '^' then sTmp := Copy(sTmp, 2, Length(sTmp));
								cxGrid_Angel2.DataController.Values[iRow, 32] := sTmp;                  //������
								cxGrid_Angel2.DataController.Values[iRow, 33] := ls_Rcrd[29];                  //����Ÿ�

// �������.[0����, 2�ĺ�, 4�ܻ�, 3�����(�̻��), 7�ĺ�(ī��), 8�ĺ�(����), 9���� ]
								if ls_Rcrd[30] = '0' then sTmp := '����'       else
								if ls_Rcrd[30] = '1' then sTmp := '���ϸ���'   else
								if ls_Rcrd[30] = '2' then sTmp := '�ĺ�'       else
								if ls_Rcrd[30] = '3' then sTmp := '����ϰ���' else
								if ls_Rcrd[30] = '4' then sTmp := '�ܻ�'       else
								if ls_Rcrd[30] = '5' then sTmp := 'ī��'       else
								if ls_Rcrd[30] = '6' then sTmp := '���'       else
								if ls_Rcrd[30] = '7' then sTmp := '�ĺ�(ī��)' else
								if ls_Rcrd[30] = '8' then sTmp := '�ĺ�(����)' else 							
								if ls_Rcrd[30] = '9' then sTmp := '����'       else sTmp := ls_Rcrd[30];							
								cxGrid_Angel2.DataController.Values[iRow, 34] := sTmp;                  //�������� //2
								cxGrid_Angel2.DataController.Values[iRow, 35] := StrToIntDef(ls_Rcrd[31],0);                  //�������
								cxGrid_Angel2.DataController.Values[iRow, 36] := StrToIntDef(ls_Rcrd[32],0);                  //�������
								cxGrid_Angel2.DataController.Values[iRow, 37] := StrToIntDef(ls_Rcrd[33],0);                  //�����
								cxGrid_Angel2.DataController.Values[iRow, 38] := StrToIntDef(ls_Rcrd[34],0);                  //��Ÿ���
								cxGrid_Angel2.DataController.Values[iRow, 39] := StrToIntDef(ls_Rcrd[35],0);                  //������
								cxGrid_Angel2.DataController.Values[iRow, 40] := StrToIntDef(ls_Rcrd[36],0);                  //������
								cxGrid_Angel2.DataController.Values[iRow, 41] := StrToIntDef(ls_Rcrd[37],0);                  //���ݰ�����
								cxGrid_Angel2.DataController.Values[iRow, 42] := StrToIntDef(ls_Rcrd[38],0);                  //ī�������
								cxGrid_Angel2.DataController.Values[iRow, 43] := StrToIntDef(ls_Rcrd[39],0); //��������
								cxGrid_Angel2.DataController.Values[iRow, 44] := '20%';                      //����������
								cxGrid_Angel2.DataController.Values[iRow, 45] := ls_Rcrd[40];                  //���޸�
								cxGrid_Angel2.DataController.Values[iRow, 46] := ls_Rcrd[41];                  //���޸�
								cxGrid_Angel2.DataController.Values[iRow, 47] := ls_Rcrd[42];                  //����1
								cxGrid_Angel2.DataController.Values[iRow, 48] := ls_Rcrd[43];                  //����2
							end;
						finally
							ls_Rcrd.Free;
							cxGrid_Angel2.EndUpdate;
						end;
					end else
					begin
						GMessagebox('�˻��� ������ �����ϴ�.', CDMSE);
					end;
				end;
			finally
				xdom := Nil;
				Frm_Flash.hide;
				Screen.Cursor := crDefault;
				cxPageControl1.Enabled := True;
				FreeAndNil(slList);
			end;
    Finally
			slList.Free;
		End;
	except
		on E: Exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			cxPageControl1.Enabled := True;
			Assert(False, E.Message);
			Frm_Flash.Hide;
		end;
	end;
			

end;

procedure TFrm_CUT1.btn_18_2Click(Sender: TObject);
begin
	if cxGrid_Angel2.DataController.RecordCount = 0 then
	begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if TCK_USER_PER.COM_CustExcelDown <> '1' then
	begin
		ShowMessage('[��ȸ�������ٿ�] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if chk_masking.checked then 
	begin
		proc_Set_ExcelMasking;
		Frm_Main.sgExcel := '����_�ϸ���.xlsx';
		Frm_Main.sgRpExcel := Format('����>�ϸ���-�������]%s��/%s', [GetMoneyStr(cxGrid_Angel2_Masking.DataController.RecordCount), FExcelDownBubinDaily]);
		Frm_Main.cxGridExcel := cxGrid2;
		Frm_Main.cxGridDBViewExcel := cxGrid_Angel2_Masking;
		Frm_Main.bgExcelOPT := False;
		Frm_Main.proc_excel(8);
	end else
	begin
		Frm_Main.sgExcel := '����_�ϸ���.xlsx';
		Frm_Main.sgRpExcel := Format('����>�ϸ���-�������]%s��/%s', [GetMoneyStr(cxGrid_Angel2.DataController.RecordCount), FExcelDownBubinDaily]);
		Frm_Main.cxGridExcel := cxGrid3;
		Frm_Main.cxGridDBViewExcel := cxGrid_Angel2;
		Frm_Main.bgExcelOPT := False;
		Frm_Main.proc_excel(8);
	end;
end;

procedure TFrm_CUT1.btn_18_3Click(Sender: TObject);
begin
	proc_BrList(edt_18_1.Text);
end;

procedure TFrm_CUT1.cxButton1Click(Sender: TObject);
var ErrCode: integer;
	Param, ErrMsg, XmlData, sTmp : string;
begin
	if gsCustViewParam = '' then exit;

//	if (Trim(edWebID.text) <> '') and (btn_WebId.Tag = 99) then
//	begin
//		GMessagebox('WebID ������ ���̵�üũ�� �Ͽ��� �մϴ�', CDMSE);
//		btn_WebId.SetFocus;
//		exit;
//	end;
//	if (length(edWebPW.Text) < 4) then
//	begin
//		GMessagebox('��й�ȣ�� 4�� �̻� ���� �մϴ�', CDMSE);
//		edWebPW.SetFocus;
//		exit;
//	end else
//	if (length(edWebPW.Text) > 20) then
//	begin
//		GMessagebox('��й�ȣ�� 20�� ���ϸ� ���� �մϴ�', CDMSE);
//		edWebPW.SetFocus;
//		exit;
//	end;
//	if (Trim(edWebID.text) = '') and (length(edWebPW.Text) > 0) then
//	begin
//		GMessagebox('WebID�� ���� �����ϼ���', CDMSE);
//		edWebID.SetFocus;
//		exit;
//	end;

	gsCustViewParam := StringReplace(gsCustViewParam, '<���θ�]', Trim(edName01.Text), [rfReplaceAll]);
	gsCustViewParam := StringReplace(gsCustViewParam, '<�μ���]', Trim(edName03.text), [rfReplaceAll]);
	gsCustViewParam := StringReplace(gsCustViewParam, '<���λ��¸޸�]', Trim(edtCustStateMemo.Text), [rfReplaceAll]);
	gsCustViewParam := StringReplace(gsCustViewParam, '<���ΰ��޸�]', Trim(edtCustMemo.text), [rfReplaceAll]);
	gsCustViewParam := StringReplace(gsCustViewParam, '<��࿩��]', IntToStr(cb_Contract2.itemindex), [rfReplaceAll]);
	gsCustViewParam := StringReplace(gsCustViewParam, '<�����]', Trim(dtRegDate.text), [rfReplaceAll]);
	gsCustViewParam := StringReplace(gsCustViewParam, '<���������]', Trim(dtFinDate.text), [rfReplaceAll]);

	if rb_SurtaxY.Checked then sTmp := 'y' else	sTmp := 'n';
	gsCustViewParam := StringReplace(gsCustViewParam, '<�ΰ�������]', Trim(sTmp), [rfReplaceAll]);

	if rbList02.Checked then sTmp := '1' else if rbPayMethodPost.Checked then	sTmp := '2'	else sTmp := '0';
	gsCustViewParam := StringReplace(gsCustViewParam, '<������ҹ��]', Trim(sTmp), [rfReplaceAll]);

	gsCustViewParam := StringReplace(gsCustViewParam, '<���̵�]', Trim(edWebID.text), [rfReplaceAll]);
	gsCustViewParam := StringReplace(gsCustViewParam, '<��й�ȣ]', Trim(edWebPW.text), [rfReplaceAll]);

	if not RequestBase(GetCallable06('SET_CUST_BGROUP', 'MNG_BGROUP.SET_CUST_BGROUP', En_Coding(gsCustViewParam)), XmlData, ErrCode, ErrMsg) then
	begin
		GMessagebox(Format('�������� ������ ������ �߻��Ͽ����ϴ�.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  Frm_main.proc_bubinlist_insert;  // ���� �� ���� ���� ����ȸ
  GMessagebox('����Ǿ����ϴ�.', CDMSI);
end;

procedure TFrm_CUT1.cxButton2Click(Sender: TObject);
begin
  pnl_UseList.Visible := False;
end;

procedure TFrm_CUT1.cxButton3Click(Sender: TObject);
begin
  pnl_CalCampInfo.Visible := False;
end;

procedure TFrm_CUT1.cxButton5Click(Sender: TObject);
var
  IE: variant;
begin
  IE := CreateOleObject('InternetExplorer.Application');
  IE.left := 0;
  IE.top := 0;
  IE.Width := Screen.Width;
  IE.Height := Screen.Height;
  if (GS_PRJ_AREA = 'S') then	IE.Navigate(GS_BUBIN_URL) else
  if (GS_PRJ_AREA = 'O') then IE.Navigate(GS_BUBIN_URL_JI);
  IE.Visible := true;
end;

procedure TFrm_CUT1.cxcbBubinAccPagePropertiesChange(Sender: TObject);
Var sUrl : String;
begin
	if cxcbBubinAccPage.Tag = 99 then Exit;

	if (GS_PRJ_AREA = 'S') then sUrl := Format(GS_BUBIN_URL_PRINT, [lbbubinAccPrintList.Items.Strings[cxcbBubinAccPage.ItemIndex]]) else
	if (GS_PRJ_AREA = 'O') then sUrl := Format(GS_BUBIN_URL_PRINT_JI, [lbbubinAccPrintList.Items.Strings[cxcbBubinAccPage.ItemIndex]]);

  WebBrowser1.Navigate(sUrl);
end;

procedure TFrm_CUT1.cxChkTitlePropertiesChange(Sender: TObject);
var
  i: Integer;
  ln_env: TIniFile;
  sTemp: string;
begin
  try
    if TcxCheckComboBox(Sender).Tag = 1 then
      Exit;
		ln_Env := TIniFile.Create(ENVPATHFILE);
    ln_env.EraseSection('ACCBubinList');
		cxGBubinStt.BeginUpdate;
    for i := 0 to cxChkTitle.Properties.Items.Count - 1 do
    begin
      sTemp := cxChkTitle.Properties.Items[i].Description;
      if cxChkTitle.GetItemState(i) = cbsUnchecked then
      begin
        ln_env.WriteString('ACCBubinList', sTemp, '1');
        cxGBubinStt.Bands[i].Visible := False;
				chkCust14Type01.Tag := 1;
				chkCust14Type01.Checked := False;
				chkCust14Type01.Tag := 0;
			end else
      begin
        cxGBubinStt.Bands[i].Visible := True;
      end;
    end;
    FreeAndNil(ln_env);
    cxGBubinStt.EndUpdate;
	except

  end;
end;

procedure TFrm_CUT1.cxColCGColorStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Idx: Integer;
begin
  Idx := Sender.DataController.GetRowInfo(ARecord.Index).RecordIndex;

  AStyle := stlCustLevelColor;
  AStyle.Color := Hex6ToColor(Sender.DataController.Values[Idx, AItem.Index]);
end;

procedure TFrm_CUT1.cxColGLColorStylesGetContentStyle(
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

procedure TFrm_CUT1.cxDate18_1EKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btn_18_1.click;
end;

procedure TFrm_CUT1.cxDate18_1SKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then cxDate18_1E.SetFocus;
end;

procedure TFrm_CUT1.cxdBubinSttSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Ord(Key) = VK_RETURN then
		btn_14_1Click(btn_14_1);
end;

procedure TFrm_CUT1.cxGBubinSttBands0HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 0 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[0].SortOrder = soNone) or
      (cxGBubinStt.Columns[0].SortOrder =
			soDescending) then
      cxGBubinStt.Columns[0].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[0].SortOrder = soAscending then
      cxGBubinStt.Columns[0].SortOrder := soDescending;
    cxGBubinStt.Columns[0].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands10HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 11 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[11].SortOrder = soNone) or
       (cxGBubinStt.Columns[11].SortOrder = soDescending) then
        cxGBubinStt.Columns[11].SortOrder := soAscending
    else
    if cxGBubinStt.Columns[11].SortOrder = soAscending then
       cxGBubinStt.Columns[11].SortOrder := soDescending;
      cxGBubinStt.Columns[11].SortIndex := 0;

    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands11HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 12 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[12].SortOrder = soNone) or
      (cxGBubinStt.Columns[12].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[12].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[12].SortOrder = soAscending then
      cxGBubinStt.Columns[12].SortOrder := soDescending;
    cxGBubinStt.Columns[12].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands12HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 13 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[13].SortOrder = soNone) or
      (cxGBubinStt.Columns[13].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[13].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[13].SortOrder = soAscending then
      cxGBubinStt.Columns[13].SortOrder := soDescending;
    cxGBubinStt.Columns[13].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands13HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 14 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[14].SortOrder = soNone) or
      (cxGBubinStt.Columns[14].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[14].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[14].SortOrder = soAscending then
      cxGBubinStt.Columns[14].SortOrder := soDescending;
    cxGBubinStt.Columns[14].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands14HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 15 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[15].SortOrder = soNone) or
      (cxGBubinStt.Columns[15].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[15].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[15].SortOrder = soAscending then
      cxGBubinStt.Columns[15].SortOrder := soDescending;
    cxGBubinStt.Columns[15].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands15HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 16 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[16].SortOrder = soNone) or
      (cxGBubinStt.Columns[16].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[16].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[16].SortOrder = soAscending then
      cxGBubinStt.Columns[16].SortOrder := soDescending;
    cxGBubinStt.Columns[16].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands16HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 17 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[17].SortOrder = soNone) or
      (cxGBubinStt.Columns[17].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[17].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[17].SortOrder = soAscending then
      cxGBubinStt.Columns[17].SortOrder := soDescending;
    cxGBubinStt.Columns[17].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands17HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 18 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[18].SortOrder = soNone) or
      (cxGBubinStt.Columns[18].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[18].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[18].SortOrder = soAscending then
      cxGBubinStt.Columns[18].SortOrder := soDescending;
    cxGBubinStt.Columns[18].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands18HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 19 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[19].SortOrder = soNone) or
      (cxGBubinStt.Columns[19].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[19].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[19].SortOrder = soAscending then
      cxGBubinStt.Columns[19].SortOrder := soDescending;
    cxGBubinStt.Columns[19].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands19HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 42 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[42].SortOrder = soNone) or
      (cxGBubinStt.Columns[42].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[42].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[42].SortOrder = soAscending then
      cxGBubinStt.Columns[42].SortOrder := soDescending;
    cxGBubinStt.Columns[42].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands1HeaderClick(Sender: TObject);
var
  i: Integer;
begin
  if chkBubinStt.Checked then
  begin
    chkBubinStt.Checked := False;
  end else
  begin
    chkBubinStt.Checked := True;
  end;
  cxGBubinStt.BeginUpdate;
  for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
  begin
    if chkBubinStt.Checked then
      cxGBubinStt.DataController.Values[i, 1] := '1'
    else
      cxGBubinStt.DataController.Values[i, 1] := '0';
  end;
  cxGBubinStt.EndUpdate;
end;

procedure TFrm_CUT1.cxGBubinSttBands21HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 20 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[20].SortOrder = soNone) or
      (cxGBubinStt.Columns[20].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[20].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[20].SortOrder = soAscending then
      cxGBubinStt.Columns[20].SortOrder := soDescending;
    cxGBubinStt.Columns[20].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands22HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 21 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[21].SortOrder = soNone) or
      (cxGBubinStt.Columns[21].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[21].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[21].SortOrder = soAscending then
      cxGBubinStt.Columns[21].SortOrder := soDescending;
    cxGBubinStt.Columns[21].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands23HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 22 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[22].SortOrder = soNone) or
      (cxGBubinStt.Columns[22].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[22].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[22].SortOrder = soAscending then
      cxGBubinStt.Columns[22].SortOrder := soDescending;
    cxGBubinStt.Columns[22].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands24HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 23 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[23].SortOrder = soNone) or
      (cxGBubinStt.Columns[23].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[23].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[23].SortOrder = soAscending then
      cxGBubinStt.Columns[23].SortOrder := soDescending;
    cxGBubinStt.Columns[23].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands25HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 24 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[24].SortOrder = soNone) or
      (cxGBubinStt.Columns[24].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[24].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[24].SortOrder = soAscending then
      cxGBubinStt.Columns[24].SortOrder := soDescending;
    cxGBubinStt.Columns[24].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands28HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 36 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[36].SortOrder = soNone) or
      (cxGBubinStt.Columns[36].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[36].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[36].SortOrder = soAscending then
      cxGBubinStt.Columns[36].SortOrder := soDescending;
    cxGBubinStt.Columns[36].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands2HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 2 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[2].SortOrder = soNone) or
      (cxGBubinStt.Columns[2].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[2].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[2].SortOrder = soAscending then
      cxGBubinStt.Columns[2].SortOrder := soDescending;
    cxGBubinStt.Columns[2].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands32HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 5 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[5].SortOrder = soNone) or
      (cxGBubinStt.Columns[5].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[5].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[5].SortOrder = soAscending then
      cxGBubinStt.Columns[5].SortOrder := soDescending;
    cxGBubinStt.Columns[5].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands33HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 6 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[6].SortOrder = soNone) or
      (cxGBubinStt.Columns[6].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[6].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[6].SortOrder = soAscending then
      cxGBubinStt.Columns[6].SortOrder := soDescending;
    cxGBubinStt.Columns[6].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands34HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 25 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[25].SortOrder = soNone) or
      (cxGBubinStt.Columns[25].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[25].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[25].SortOrder = soAscending then
      cxGBubinStt.Columns[25].SortOrder := soDescending;
    cxGBubinStt.Columns[25].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands35HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 26 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[26].SortOrder = soNone) or
      (cxGBubinStt.Columns[26].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[26].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[26].SortOrder = soAscending then
      cxGBubinStt.Columns[26].SortOrder := soDescending;
    cxGBubinStt.Columns[26].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands36HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 27 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[27].SortOrder = soNone) or
      (cxGBubinStt.Columns[27].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[27].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[27].SortOrder = soAscending then
      cxGBubinStt.Columns[27].SortOrder := soDescending;
    cxGBubinStt.Columns[27].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands37HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 30 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[30].SortOrder = soNone) or
      (cxGBubinStt.Columns[30].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[30].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[30].SortOrder = soAscending then
      cxGBubinStt.Columns[30].SortOrder := soDescending;
    cxGBubinStt.Columns[30].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands38HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 31 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[31].SortOrder = soNone) or
      (cxGBubinStt.Columns[31].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[31].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[31].SortOrder = soAscending then
      cxGBubinStt.Columns[31].SortOrder := soDescending;
    cxGBubinStt.Columns[31].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands39HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 28 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[28].SortOrder = soNone) or
      (cxGBubinStt.Columns[28].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[28].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[28].SortOrder = soAscending then
      cxGBubinStt.Columns[28].SortOrder := soDescending;
    cxGBubinStt.Columns[28].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands3HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 3 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[3].SortOrder = soNone) or
      (cxGBubinStt.Columns[3].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[3].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[3].SortOrder = soAscending then
      cxGBubinStt.Columns[3].SortOrder := soDescending;
    cxGBubinStt.Columns[3].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands40HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 29 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[29].SortOrder = soNone) or
      (cxGBubinStt.Columns[29].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[29].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[29].SortOrder = soAscending then
      cxGBubinStt.Columns[29].SortOrder := soDescending;
    cxGBubinStt.Columns[29].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands41HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 32 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[32].SortOrder = soNone) or
      (cxGBubinStt.Columns[32].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[32].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[32].SortOrder = soAscending then
      cxGBubinStt.Columns[32].SortOrder := soDescending;
    cxGBubinStt.Columns[32].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands42HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 33 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[33].SortOrder = soNone) or
      (cxGBubinStt.Columns[33].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[33].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[33].SortOrder = soAscending then
      cxGBubinStt.Columns[33].SortOrder := soDescending;
    cxGBubinStt.Columns[33].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands43HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 34 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[34].SortOrder = soNone) or
      (cxGBubinStt.Columns[34].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[34].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[34].SortOrder = soAscending then
      cxGBubinStt.Columns[34].SortOrder := soDescending;
    cxGBubinStt.Columns[34].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands44HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 35 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[35].SortOrder = soNone) or
      (cxGBubinStt.Columns[35].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[35].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[35].SortOrder = soAscending then
      cxGBubinStt.Columns[35].SortOrder := soDescending;
    cxGBubinStt.Columns[35].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands45HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 37 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[37].SortOrder = soNone) or
      (cxGBubinStt.Columns[37].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[37].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[37].SortOrder = soAscending then
      cxGBubinStt.Columns[37].SortOrder := soDescending;
    cxGBubinStt.Columns[37].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands46HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 38 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[38].SortOrder = soNone) or
      (cxGBubinStt.Columns[38].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[38].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[38].SortOrder = soAscending then
      cxGBubinStt.Columns[38].SortOrder := soDescending;
    cxGBubinStt.Columns[38].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands47HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 40 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[40].SortOrder = soNone) or
      (cxGBubinStt.Columns[40].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[40].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[40].SortOrder = soAscending then
      cxGBubinStt.Columns[40].SortOrder := soDescending;
    cxGBubinStt.Columns[40].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands48HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 41 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[41].SortOrder = soNone) or
      (cxGBubinStt.Columns[41].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[41].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[41].SortOrder = soAscending then
      cxGBubinStt.Columns[41].SortOrder := soDescending;
    cxGBubinStt.Columns[41].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands4HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 4 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[4].SortOrder = soNone) or
      (cxGBubinStt.Columns[4].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[4].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[4].SortOrder = soAscending then
      cxGBubinStt.Columns[4].SortOrder := soDescending;
    cxGBubinStt.Columns[4].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands6HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
	try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 7 then
      begin
				cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[7].SortOrder = soNone) or
      (cxGBubinStt.Columns[7].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[7].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[7].SortOrder = soAscending then
			cxGBubinStt.Columns[7].SortOrder := soDescending;
		cxGBubinStt.Columns[7].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands7HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 8 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[8].SortOrder = soNone) or
      (cxGBubinStt.Columns[8].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[8].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[8].SortOrder = soAscending then
      cxGBubinStt.Columns[8].SortOrder := soDescending;
    cxGBubinStt.Columns[8].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands8HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 9 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[9].SortOrder = soNone) or
      (cxGBubinStt.Columns[9].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[9].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[9].SortOrder = soAscending then
      cxGBubinStt.Columns[9].SortOrder := soDescending;
    cxGBubinStt.Columns[9].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttBands9HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 10 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[10].SortOrder = soNone) or
      (cxGBubinStt.Columns[10].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[10].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[10].SortOrder = soAscending then
      cxGBubinStt.Columns[10].SortOrder := soDescending;
    cxGBubinStt.Columns[10].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;
      ShowMessage(sTemp);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUT1.cxGBubinSttCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  I, Row, Col: Integer;
begin
  Row := cxGBubinStt.DataController.FocusedRecordIndex;
  if (Row > -1) then
  begin
    if cxGBubinStt.DataController.Values[Row, 1] = '0' then cxGBubinStt.DataController.Values[Row, 1] := '1'
                                                       else cxGBubinStt.DataController.Values[Row, 1] := '0';
  end;
end;

procedure TFrm_CUT1.cxGBubinSttCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iRow: Integer;
begin
	iRow := cxGBubinStt.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;
	proc_BubinStt_Select(iRow);
end;

procedure TFrm_CUT1.cxGBubinSttDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGBubinStt, True);
end;

procedure TFrm_CUT1.cxGBubinSttKeyPress(Sender: TObject; var Key: Char);
Var i : Integer;
begin
  if Key = ^A then
  begin
    cxGBubinStt.BeginUpdate;
    try
      for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
      begin
        cxGBubinStt.DataController.Values[i, 1] := '1'
      end;
    finally
      cxGBubinStt.EndUpdate;
    end;
    chkBubinStt.Checked := True;
    Key := #0;
  end;
end;

procedure TFrm_CUT1.cxGridBebinListCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iKeyNum, iSeq, iRow: Integer;
  sBrNo, sKeyNum, sSeq: string;
begin
  // ���� ���� (��ȣ 2008-08-19)
  if TCK_USER_PER.COM_CustModify <> '1' then
  begin
    GMessagebox('�� ���������� �����ϴ�.', CDMSE);
    Exit;
  end;
	iRow := CustView12_3.DataController.FocusedRecordIndex;
  if iRow = -1 then
    Exit;
	iKeyNum := CustView12_3.GetColumnByFieldName('��ǥ��ȣ').Index;
	iSeq := CustView12_3.GetColumnByFieldName('���ڵ�').Index;
	sBrNo := cxBrNo12.Text;
	sKeyNum := CustView12_3.DataController.Values[iRow, iKeyNum];
  sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
  sSeq := CustView12_3.DataController.Values[iRow, iSeq];
  // 6 : ����â���� ������ 4 : ����â���� ������
  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);
  Frm_CUT011.Tag := 6;
  Frm_CUT011.Hint := IntToStr(Self.Tag);
  Frm_CUT011.clbCuSeq.Caption := sSeq;
  Frm_CUT011.proc_search_brKeyNum(sBrNo, sKeyNum);
  Frm_CUT011.Show;
  Frm_CUT011.proc_cust_Intit;
end;

procedure TFrm_CUT1.cxGridCopy(ASource, ATarget: TcxGridDBTableView;
  AKeyIndex: Integer; AKeyValue: string);
var
  I, J, Row: Integer;
	KeyData: string;
begin
	if AKeyIndex < 0 then
    Exit;

  if Trim(AKeyValue) = '' then
    Exit;

  for I := 0 to ASource.DataController.RecordCount - 1 do
  begin
		KeyData := CallToStr(ASource.DataController.GetValue(I, AKeyIndex));
    if Pos(AKeyValue, KeyData) > 0 then
    begin
      Row := ATarget.DataController.AppendRecord;

      ATarget.DataController.Values[Row, 0] := Row + 1;
      for J := 1 to ASource.ColumnCount - 1 do
        ATarget.DataController.Values[Row, J] := ASource.DataController.GetValue(I, J);
    end;
  end;
end;

procedure TFrm_CUT1.cxGrid_Angel2ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	gIndex := AColumn.Index;
end;

procedure TFrm_CUT1.cxGrid_Angel2DataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(cxGrid_Angel2, gIndex, GS_SortNoChange);
end;

procedure TFrm_CUT1.cxGroupBox48MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
	ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUT1.cxGroupBox49MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
	ReleaseCapture;
	PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUT1.cxPageControl1Change(Sender: TObject);
Var iTag : Integer;
begin
  if (cxPageControl1.Tag = 1) or (cxPageControl1.ActivePageIndex = -1) then Exit;
	
  iTag := cxPageControl1.Pages[cxPageControl1.ActivePageIndex].Tag;
  if Assigned(Frm_JON51) then
      if TCK_USER_PER.BTM_MENUSCH = '1' then Frm_JON51.Menu_Use_Mark('ADD', iTag);
	case cxPageControl1.ActivePageIndex of
		0:
      begin
				if ((GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then//(GT_USERIF.LV = '60') or
				begin
					cbKeynumber12.Properties.Items.Clear;
					GMessagebox('���ξ�ü ��ȸ�� ���縦 �����ϼž� �մϴ�.', CDMSE);
				end else
				begin
					cbKeynumber12.ItemIndex := 0;
					cbKeynumber01Click(cbKeynumber12);
        end;
      end;
    1:
			begin
        if ((GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then//(GT_USERIF.LV = '60') or
				begin
					cbKeynumber13.Properties.Items.Clear;
          GMessagebox('���ξ�ü ��ȸ�� ���縦 �����ϼž� �մϴ�.', CDMSE);
        end else
        begin
					cbKeynumber13.ItemIndex := 0;
					cbKeynumber01Click(cbKeynumber13);
        end;
			end;
		6:
			begin	
				btn_18_3Click(btn_18_3);
      end;
  end;
end;

procedure TFrm_CUT1.edBubinName01KeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if Key = vk_Return then btn_12_1Click(btn_12_1);
end;

procedure TFrm_CUT1.edCustName05KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Ord(Key) = VK_RETURN) then
		btn_12_11Click(btn_12_11);
end;

procedure TFrm_CUT1.edtKeyWord18KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then btn_18_1.Click;  
end;

procedure TFrm_CUT1.edtResultSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then btn_12_10Click(btn_12_10);
end;

procedure TFrm_CUT1.edt_18_1Enter(Sender: TObject);
begin
//	lst_BRList.Visible := False;
end;

procedure TFrm_CUT1.edt_18_1Exit(Sender: TObject);
begin
//	lst_BRList.Visible := (edt_18_1.Text = '');
end;

procedure TFrm_CUT1.edt_18_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var slTmp : TStringList;
begin
	SetDebugeWrite('TFrm_CUT1.edt_18_1KeyDown');
  if Key = VK_BACK then
	begin
		if (Length(edt_18_1.Text) <= 1) then
		begin
			lst_BRList.Items.Clear;
			searchBRlist.Clear;
			lst_BRList.Visible := False;
			Exit;
		end;
	end else
	if Key = VK_DOWN then
	begin
		if lst_BRLIst.ItemIndex < 0 then lst_BRLIst.ItemIndex := 0;
		if lst_BRList.Visible then lst_BRList.SetFocus;
	end else
	if Key = VK_RETURN then
	begin
		slTmp := TStringList.Create;
		Try
			slTmp.Delimiter     := '|';
			slTmp.DelimitedText := searchBRlist[0];
			if slTmp.Count = 3 then
				SetTree_ListItem(slTmp[0], slTmp[1], StrToInt(slTmp[2]));
			lst_BRList.Visible := False;
		Finally
			slTmp.Free;
		End;
		lst_BRList.Visible := False;
	end;
end;

procedure TFrm_CUT1.edt_18_1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i : integer;
begin
	SetDebugeWrite('TFrm_CUT1.edt_18_1KeyUp');

//	if (key <> 229) then //  20191224 �����Է±� ������ ��� �ѱ��� 229�� �Ѿ�� �׷��� ���� KHS
	begin
		if Trim(edt_18_1.Text) = '' then
    begin
			edt_18_1.SetFocus;
      Exit;
		end;

		if Length(Trim(edt_18_1.Text)) >= 1 then
		begin
//      lst_BRList.Visible := True;
			// ��������� ��ȸ..  CDS. 080818.
			if not func_BrNameList_Search then Exit;
		end;
	end;
end;

procedure TFrm_CUT1.edt_18_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	SetDebugeWrite('TFrm_CUT1.edt_18_1MouseDown');
	if lst_BRList.Items.Count > 30 then
    lst_BRList.Height := 500
  else
    lst_BRList.Height := lst_BRList.Items.Count * 18;
	lst_BRList.Left := 78; 
	lst_BRList.Top  := 34;
	lst_BRList.Visible := True;
end;

procedure TFrm_CUT1.edt_WebIdFirstKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then	btn_IdCheck.Click;
end;

procedure TFrm_CUT1.edt_WebPW1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then	edt_WebPW2.SetFocus;
end;

procedure TFrm_CUT1.edt_WebPW2KeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = vk_Return then	btn_Confirm.SetFocus;
end;

procedure TFrm_CUT1.edt_WebPW2KeyUp(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	btn_Confirm.enabled := True;
end;

procedure TFrm_CUT1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	UsrNameReg.WriteString('footer', sFooter);
  UsrNameReg.WriteString('header', sHeader);
	UsrNameReg.CloseKey;
	if Assigned(searchBRlist) then FreeAndNil(searchBRlist);
	FreeAndNil(UsrNameReg);
  Action := caFree;
end;

procedure TFrm_CUT1.FormCreate(Sender: TObject);
var i : Integer;
begin
	try
    // ��¥������ 'yy/mm/dd'�ϰ�� ���� �߻� ���ɼ����� ���� ��ü Display ���� ����
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

	searchBRlist := TStringList.Create;
	proc_init;

	cxPageControl1.ActivePageIndex := -1;
	cxPageControl1.Tag := 1;

  cxPageControl1.Pages[0].TabVisible := (TCK_USER_PER.CUR_BubinMng = '1') or (TCK_USER_PER.CUR_BubinMngModify = '1');  // 501.���ΰ���
  cxPageControl1.Pages[1].TabVisible := (TCK_USER_PER.CUR_BubinHis = '1');                                             // 502.�����̿볻��
  cxPageControl1.Pages[2].TabVisible := (TCK_USER_PER.CUR_BubinAcc = '1');                                             // 503.������������
  cxPageControl1.Pages[3].TabVisible := (TCK_USER_PER.CUR_BubinAuth = '1');                                            // 504.��������
  cxPageControl1.Tag := 0;


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

procedure TFrm_CUT1.FormDestroy(Sender: TObject);
begin
	Frm_CUT1 := Nil;
end;

procedure TFrm_CUT1.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_CUT1, GS_FONTNAME);

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

function TFrm_CUT1.func_BrNameList_Search: boolean;
var
	iOldIdx: integer;
	bRlt: boolean;
	sKey: string;
  i, j : Integer;
	LeftTreePtrA, LeftTreePtrB : PTreeRec;
begin
	SetDebugeWrite('TFrm_CUT1.func_BrNameList_Search');
	try
    bRlt := False;
    lst_BRList.Items.Clear;
		searchBRlist.Clear;
		sKey := edt_18_1.text; // ��ȸ�� ����� �б�.

		lst_BRList.Items.BeginUpdate;
		for i := 0 to CustView18_1.Count - 1 do
		begin
			LeftTreePtrA := CustView18_1.Items[i].Data;
			if (Pos(sKey, LeftTreePtrA^.HDName) > 0) then
			begin
				lst_BRList.Items.Add(LeftTreePtrA^.HDName);
				searchBRlist.Add(LeftTreePtrA^.HDCode + '|' + LeftTreePtrA^.BrCode + '|' + IntToStr(LeftTreePtrA^.FIndex));
				bRlt := True;
			end;
			
			for j := 0 to CustView18_1.Items[i].Count - 1 do
			begin
				LeftTreePtrB := CustView18_1.Items[i].Items[j].Data;
				if (Pos(sKey, LeftTreePtrB^.BRName) > 0) then
				begin
					lst_BRList.Items.Add(LeftTreePtrB^.BRName);
					searchBRlist.Add(LeftTreePtrB^.HDCode + '|' + LeftTreePtrB^.BrCode + '|' + IntToStr(LeftTreePtrB^.FIndex));
					bRlt := True;
				end;
			end;
		end;
		lst_BRList.Items.EndUpdate;

		lst_BRList.Visible := True;
		if lst_BRList.Items.Count > 30 then
			lst_BRList.Height := 500
		else
			lst_BRList.Height := lst_BRList.Items.Count * 18;
		Result := bRlt;
	Except
    on e: exception do
		begin
			Log('proc_BrNameList_Search Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'proc_BrNameList_Search Error :' + E.Message);
		end;
	end;
end;

function TFrm_CUT1.func_buninSearch(sBrNo, sKeyNum, sCode: string): string;
var
  i: Integer;
begin
  Result := '';
  for i := 0 to GT_BUBIN_INFO.brNo_KeyNum.Count - 1 do
  begin
    if (GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(sbrNo, 5, ' ') +
      Rpad(StringReplace(sKeyNum,
      '-', '', [rfReplaceAll]), 15, ' '))
      and (GT_BUBIN_INFO.cbcode[i] = sCode + ',' + sBrNo) then
    begin
      Result := Trim(GT_BUBIN_INFO.cbCorpNm.Strings[i]) + ' / ' +
                Trim(GT_BUBIN_INFO.cbDeptNm.Strings[i]);
      Break;
    end;
  end;
end;

function TFrm_CUT1.Func_CheckBrNo: string;
	procedure _PushTag(AStatus: string; var Value: string);
  begin
    if Value <> '' then
			Value := Value + ',';

    Value := Value + AStatus;
	end;
Var i, j : Integer;
	LeftTreePtr : PTreeRec;
	sTmp : String;
begin
	SetDebugeWrite('TFrm_CUT1.Func_CheckBrNo');

	Result := '';
  try
		for i := 0 to CustView18_1.Count - 1 do
    begin
			for j := 0 to CustView18_1.Items[i].Count - 1 do
      begin
				if CustView18_1.Items[i].Items[j].Checked then
        begin
					 LeftTreePtr := CustView18_1.Items[i].Items[j].Data;
					_PushTag(LeftTreePtr^.BRCode, sTmp );
        end;
      end;
		end;
		Result := sTmp;
  except
		Result := '';
  end;
end;

function TFrm_CUT1.GetActiveDateControl(AIndex : integer; var AStDt, AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;
	case AIndex of
		131: begin
					AStDt := cxDate13_1S;
					AEdDt := cxDate13_1E;
				 end;
		141: begin
					AStDt := cxDate14_1S;
					AEdDt := cxDate14_1E;
				 end;
		161: begin
					AStDt := cxDate16_1S;
					AEdDt := cxDate16_1E;
				 end;
		181: begin
					AStDt := cxDate18_1S;
					AEdDt := cxDate18_1E;
				 end;
	end;
end;

function TFrm_CUT1.GetDeptCustomerCount(AHdNo, ABrNo,
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

          Result := StrToIntDef(GetTextSeperationFirst('��', lst_Result.item[0].attributes.getNamedItem('Value').Text), -1);
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

procedure TFrm_CUT1.Label7Click(Sender: TObject);
  procedure RunDownload;
  var
    IE: Variant;
    EHWND: THandle;
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

      IE.Navigate('http://www.callmaner.com/download/�ݸ���_����޺����û��.xls');
      IE.Visible := True;

      Application.ProcessMessages;
      sleep(1);
    except on E: Exception do
			GMessagebox(Format('��û�� �ٿ�ε� �� ����(Err: %s)�� �߻��Ͽ����ϴ�.'#13#10
												+ '(�ٽýõ� �ٶ��ϴ�.)' , [E.Message]), CDMSE);
		end;
  end;
begin
  RunDownload;
end;

procedure TFrm_CUT1.lst_BRListDblClick(Sender: TObject);
var slTmp : TStringList;
	i : integer;
begin
	SetDebugeWrite('TFrm_CUT1.lst_BRListDblClick');
	slTmp := TStringList.Create;
	Try
		slTmp.Delimiter     := '|';
		slTmp.DelimitedText := searchBRlist[lst_BRList.ItemIndex];
		if slTmp.Count = 3 then
			SetTree_ListItem(slTmp[0], slTmp[1], StrToInt(slTmp[2]));
		lst_BRList.Visible := False;
	Finally
		slTmp.Free;
	End;
end;

procedure TFrm_CUT1.lst_BRListExit(Sender: TObject);
begin
  SetDebugeWrite('TFrm_CUT1.lst_BRListExit');
	lst_BRList.Visible := False;
end;

procedure TFrm_CUT1.lst_BRListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var slTmp : TStringList;
begin
	SetDebugeWrite('TFrm_Main.lst_BRListKeyDown');
	if key = vk_Return then
	begin
		if lst_BRList.ItemIndex < 0 then exit;

		slTmp := TStringList.Create;
		Try
			slTmp.Delimiter     := '|';
			slTmp.DelimitedText := searchBRlist[lst_BRList.ItemIndex];
			if slTmp.Count = 3 then
				SetTree_ListItem(slTmp[0], slTmp[1], StrToInt(slTmp[2]));
			lst_BRList.Visible := False;
		Finally
			slTmp.Free;
		End;
	end else
  if Key = VK_UP then
  begin
		if lst_BRlist.Selected[0] then edt_18_1.SetFocus;
  end;
end;

procedure TFrm_CUT1.N4Click(Sender: TObject);
begin
	if Length(CustView12_1.Selections[0].Values[7]) >= 9 then
  begin
    GMessagebox('����� 2�ܰ������ ��ϵ˴ϴ�.', CDMSE);
    Exit;
  end;

  if ( Not Assigned(Frm_CUT09) ) Or ( Frm_CUT09 = Nil ) then Frm_CUT09 := TFrm_CUT09.Create(Nil);
  Frm_CUT09.PnlTitle.Caption := '  ����(��ü) ���� ����ϱ�';
  Frm_CUT09.Tag := 2;
	Frm_CUT09.edCbCode.Text := CustView12_1.Selections[0].Values[7];
	Frm_CUT09.edBrNo.Text := cxBrNo12.Text;
  Frm_CUT09.edHdNo.Text := cxHdNo12.Text;
  Frm_CUT09.edKeyNum.Text := StringReplace(cbKeynumber12.Text, '-', '', [rfReplaceAll]);
  Frm_CUT09.proc_init;
  Frm_CUT09.Show;
end;

procedure TFrm_CUT1.N5Click(Sender: TObject);
begin
  if CustView12_1.SelectionCount > 0 then
  begin
    if ( Not Assigned(Frm_CUT09) ) Or ( Frm_CUT09 = Nil ) then Frm_CUT09 := TFrm_CUT09.Create(Nil);
    Frm_CUT09.PnlTitle.Caption := '  ����(��ü) ���� �����ϱ�';
    Frm_CUT09.Tag := 1;
    Frm_CUT09.edCbCode.Text := CustView12_1.Selections[0].Values[7];
    Frm_CUT09.edBrNo.Text := cxBrNo12.Text;
    Frm_CUT09.proc_init;
    Frm_CUT09.Show;
  end;
end;

procedure TFrm_CUT1.N8Click(Sender: TObject);
begin
	proc_BubinList;

	if cxGridBebinList.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
    Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if TCK_USER_PER.COM_CustExcelDown <> '1' then
	begin
    ShowMessage('[��ȸ�������ٿ�] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
  end;

  Frm_Main.sgExcel := '��_���ΰ���.xls';
	Frm_Main.sgRpExcel := Format('����>���ΰ���>���ξ�ü]%s��/%s', [GetMoneyStr(CustView12_1.Count), FExcelDownBubin]);
  Frm_Main.cxGridExcel := cxGrid13;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_CUT1.MenuItem8Click(Sender: TObject);
begin
	if custview13_2.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
    Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if TCK_USER_PER.COM_CustExcelDown <> '1' then
	begin
    ShowMessage('[��ȸ�������ٿ�] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
  end;

  Frm_Main.sgExcel := '��_���ΰ���_�����̿볻��.xls';
  Frm_Main.sgRpExcel := Format('����>�����̿볻��]%s��/%s', [GetMoneyStr(custview13_2.DataController.RecordCount), FExcelDownBubinUsed]);
  Frm_Main.cxGridExcel := cxGrid9;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_CUT1.MenuItem9Click(Sender: TObject);
begin
	btn_18_2.click;
end;

procedure TFrm_CUT1.N_TodayClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(0, StDt, EdDt);
end;

procedure TFrm_CUT1.N_YesterdayClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(1, StDt, EdDt);
end;

procedure TFrm_CUT1.N_WeekClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(2, StDt, EdDt);
end;

procedure TFrm_CUT1.N_MonthClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(11, StDt, EdDt);
end;

procedure TFrm_CUT1.N_1Start31EndClick(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(pm_Date.Tag, StDt, EdDt) then
		CustSetDateControl(3, StDt, EdDt);
end;

procedure TFrm_CUT1.MenuItem2Click(Sender: TObject);
begin
  btn_12_2Click(btn_12_2);
end;

procedure TFrm_CUT1.MenuItem33Click(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(Pop_Ymd.Tag, StDt, EdDt) then     //����
		CustSetDateControl(0, StDt, EdDt);
end;

procedure TFrm_CUT1.MenuItem34Click(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(Pop_Ymd.Tag, StDt, EdDt) then     //1����
		CustSetDateControl(11, StDt, EdDt);
end;

procedure TFrm_CUT1.MenuItem35Click(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(Pop_Ymd.Tag, StDt, EdDt) then     //3����
		CustSetDateControl(12, StDt, EdDt);
end;

procedure TFrm_CUT1.MenuItem36Click(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(Pop_Ymd.Tag, StDt, EdDt) then     //6����
		CustSetDateControl(13, StDt, EdDt);
end;

procedure TFrm_CUT1.MenuItem37Click(Sender: TObject);
var
	StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(Pop_Ymd.Tag, StDt, EdDt) then     //1��
		CustSetDateControl(14, StDt, EdDt);
end;

procedure TFrm_CUT1.MenuItem3Click(Sender: TObject);
begin
	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if TCK_USER_PER.COM_CustExcelDown <> '1' then
	begin
    ShowMessage('[��ȸ�������ٿ�] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
  end;

  Frm_Main.sgExcel := '��_���ΰ���.xls';
  Frm_Main.sgRpExcel := Format('����>���ΰ���>���ξ�ü]%s��/%s', [GetMoneyStr(CustView12_1.Count), FExcelDownBubin]);
  Frm_Main.cxTreeView := CustView12_1;
	Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(2);
end;

procedure TFrm_CUT1.MenuItem4Click(Sender: TObject);
begin
	if CustView12_2.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
    Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if TCK_USER_PER.COM_CustExcelDown <> '1' then
	begin
    ShowMessage('[��ȸ�������ٿ�] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
  end;

  Frm_Main.sgExcel := '��_���ΰ���_���ΰ�.xls';
  Frm_Main.sgRpExcel := Format('����>���ΰ���>�ҼӰ�]%s��/%s', [GetMoneyStr(IfThen(CustView12_2.Visible, CustView12_2.DataController.RecordCount, cxViewCustom.DataController.RecordCount)), FExcelDownBubinCust]);
  if CustView12_2.Visible then
    Frm_Main.cxGridExcel := cxGrid10
  else
    Frm_Main.cxGridExcel := cxGridCustom;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_CUT1.MenuItem5Click(Sender: TObject);
begin
	if CustView12_3.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
    Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	if TCK_USER_PER.COM_CustExcelDown <> '1' then
	begin
    ShowMessage('[��ȸ�������ٿ�] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
  end;

  Frm_Main.sgExcel := '��_���ΰ���_�Ϲݰ�.xls';
  Frm_Main.sgRpExcel := Format('����>���ΰ���>�Ϲݰ�]%s��/%s', [GetMoneyStr(CustView12_3.DataController.RecordCount), FExcelDownBubinNormal]);
  Frm_Main.cxGridExcel := cxGrid11;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_CUT1.pm_excel8_7Popup(Sender: TObject);
begin
	MenuItem9.visible := False;
	if cxGrid_Angel2.DataController.RecordCount > 0 then
	begin
		MenuItem9.visible := True;
	end;

end;

procedure TFrm_CUT1.proc_Branch_Change;
begin
	proc_BrNameSet;
end;

procedure TFrm_CUT1.proc_BrList(AStr: string);
var i, iHdNode, iTmp, iNodNo : integer;
	sHd, sBr, sTmp : String;
	aNode, bNode: TcxTreeListNode;
	LeftTreePtr : PTreeRec;
begin
	SetDebugeWrite('TFrm_CUT1.proc_BrList');
	Try
		CustView18_1.Root.TreeList.Clear;
		CustView18_1.Root.CheckGroupType := ncgCheckGroup;
		CustView18_1.BeginUpdate;
		iHdNode := -1;
		i := 0; iNodNo:= -1;
		while i <= scb_BranchCode.Count -1 do
		begin
			inc(iNodNo);
			if sHd <> scb_HdCode[i] then
			begin
{				inc(iHdNode);
				sHd := scb_HdCode[i];
				iTmp := scb_HdNo.Indexof(sHd);
				sTmp := scb_HdNm[iTmp];

				New(LeftTreePtr);
				LeftTreePtr^.HDCode := sHd; // �����ڵ�
				LeftTreePtr^.HDName := sTmp;
				LeftTreePtr^.BRCode := ''; // �����ڵ�
				LeftTreePtr^.BRName := '';
				LeftTreePtr^.FIndex := iHdNode;
				
				aNode := CustView18_1.Add(nil, LeftTreePtr);
				aNode.CheckGroupType := ncgCheckGroup;
//				aNode.Values[0] := True;
				aNode.Texts[1] := LeftTreePtr.HDName; }
				inc(iHdNode);  
				sHd := scb_HdCode[i];
				iTmp := scb_HdNo.Indexof(sHd);
				sTmp := scb_HdNm[iTmp];
				New(LeftTreePtr);
				LeftTreePtr^.HDCode := sHd; // �����ڵ�
				LeftTreePtr^.HDName := sTmp;
				LeftTreePtr^.BRCode := ''; // �����ڵ�
				LeftTreePtr^.BRName := '';
				LeftTreePtr^.FIndex := iNodNo;
				
				aNode := CustView18_1.Add(nil, LeftTreePtr);
//				aNode := CustView18_1.Root.AddChild;
				aNode.CheckGroupType := ncgCheckGroup;
				aNode.Checked := True;
				iTmp := scb_HdNo.Indexof(sHd);
				sTmp := scb_HdNm[iTmp];
				aNode.Values[0] := sTmp;
				aNode.Values[1] := '';//scb_BranchName[i]; // ���θ�
				aNode.Values[2] := '';//scb_BranchName[i]; // �μ���
				aNode.Values[3] := sHd;
				aNode.Values[4] := IntToStr(iNodNo);
			end else
			if sHd = scb_HdCode[i] then
			begin

				iTmp := scb_HdNo.Indexof(sHd);
				sTmp := scb_HdNm[iTmp];
				New(LeftTreePtr);
				LeftTreePtr^.HDCode := sHd; // �����ڵ�
				LeftTreePtr^.HDName := sTmp;
				LeftTreePtr^.BRCode := scb_BranchCode[i]; // �����ڵ�
				LeftTreePtr^.BRName := scb_BranchName[i];
				LeftTreePtr^.FIndex := iNodNo;

				bNode := CustView18_1.AddChild(aNode, LeftTreePtr);
//				bNode := aNode.AddChild;
				bNode.Checked := True;
				bNode.Values[0] := '';
				bNode.Values[1] := scb_BranchName[i]; // ���θ�
				bNode.Values[2] := scb_BranchCode[i]; // �μ���   }
				bNode.Values[3] := sHd;
				bNode.Values[4] := IntToStr(iNodNo);
				inc(i);
			end;
		end;
		CustView18_1.EndUpdate;
		CustView18_1.FullExpand;
//		if CustView18_1.Items[i].Level = 0 then
//			CustView18_1.Items[i].Expand(True);
	Except
    on e: exception do
    begin
			Assert(False, 'proc_BrList Error :' + E.Message);
    end;
  end;

end;

procedure TFrm_CUT1.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
	StrList: TStringList;
begin
	sTemp := copy(GetPlusCallYN(GT_SEL_BRNO.BRNO),3,1);
	if sTemp = 'y' then
		cxPageControl1.Pages[4].TabVisible := TCK_USER_PER.CUR_WithHolding = '1'
	else
		cxPageControl1.Pages[4].TabVisible := False;
	StrList := TStringList.Create;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
			GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
			cbKeynumber14.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumber14.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
	end;
  sName := GetSosokInfo;
	cxHdNo12.Text := sHdNo;
	cxBrNo12.Text := sBrNo;
	cxHdNo13.Text := sHdNo;
	cxBrNo13.Text := sBrNo;
	cxHdNo14.Text := sHdNo;
	cxBrNo14.Text := sBrNo;
	cxHdNo15.Text := sHdNo;
	cxBrNo15.Text := sBrNo;
	cxHdNo16.Text := sHdNo;
	cxBrNo16.Text := sBrNo;
	cxHdNo17.Text := sHdNo;
	cxBrNo17.Text := sBrNo;
	lbCustCompany12.Caption := sName;  
	lbCustCompany13.Caption := sName;  
	lbCustCompany14.Caption := sName;  
	lbCustCompany15.Caption := sName;  
	lbCustCompany16.Caption := sName;  
	lbCustCompany17.Caption := sName;
  { TODO : ���ΰ��� }
	if cbKeynumber14.Properties.Items.Count > 0 then
	begin
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
			cbKeynumber12.Properties.Items.Assign(cbKeynumber14.Properties.Items);
			cbKeynumber13.Properties.Items.Assign(cbKeynumber14.Properties.Items);
    end else
    begin
      cbKeynumber12.Properties.Items.Clear;
      cbKeynumber13.Properties.Items.Clear;
    end;
  end;
	if cbKeynumber14.Properties.Items.Count >= 1 then
    cbKeynumber14.Properties.Items.Insert(0, '��ü');
	cbKeynumber15.Properties.Items.Assign(cbKeynumber14.Properties.Items);
	cbKeynumber17.Properties.Items.Assign(cbKeynumber14.Properties.Items);
	cbKeynumber12.Tag := 1;
	cbKeynumber13.Tag := 1;
	cbKeynumber14.Tag := 1;
	cbKeynumber15.Tag := 1;
	cbKeynumber17.Tag := 1;
	cbKeynumber12.ItemIndex := 0;
	cbKeynumber13.ItemIndex := 0;
	cbKeynumber14.ItemIndex := 0;
	cbKeynumber15.ItemIndex := 0;
	cbKeynumber17.ItemIndex := 0;
	cbKeynumber12.Tag := 0;
	cbKeynumber13.Tag := 0;
	cbKeynumber14.Tag := 0;
	cbKeynumber15.Tag := 0;
	cbKeynumber17.Tag := 0;
end;

procedure TFrm_CUT1.proc_BubinCust_HIS;
var
  sWhere, sTable, sCbCode: string;
  ls_TxQry, ls_TxLoad, sQueryTemp: string; // XML File Load
  slReceive: TStringList;
  ErrCode: integer;
begin
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('���� ������ �Ҽ� ���縸 ��ȸ�Ҽ� �ֽ��ϴ�.', CDMSE);
    Exit;
	end;

  if fGetChk_Search_HdBrNo('�����̿볻��(���ΰ�)') then Exit;

  //////////////////////////////////////////////////////////////////////////////
  // ����>�����̿볻��]1000��/A100-B100/��ǥ��ȣ:12345/�μ�:����SN|����ϰ�����/�̿�Ⱓ:20100101~20100131
  FExcelDownBubinUsed := Format('%s/��ǥ��ȣ:%s/�μ�:%s%s',
    [
        GetSelBrInfo
			, cbKeynumber13.Text
			, IfThen(chkCust13Type02.Checked, '������ü', CustView13_1.Selections[0].Values[2] + ',' + CustView13_1.Selections[0].Values[3])
			, IfThen(chkCust13Type01.Checked, Format('/�̿�Ⱓ:%s~%s', [cxDate13_1S.Text, cxDate13_1E.Text]), '')
		]);
	//////////////////////////////////////////////////////////////////////////////

  sWhere := '';
	if CustView13_1.Count > 0 then
  begin
		sCbCode := CustView13_1.Selections[0].Values[6];
		if (chkCust13Type01.Checked) and (cxDate13_1S.Text <> '') then
    begin
			if (StartDateTime('yyyymmdd') = FormatDateTime('yyyymmdd', cxDate13_1S.Date)) then
        sTable := 'CDMS_A01_TODAY'
      else
      begin
        sTable := 'CDMS_A01';
        sWhere := sWhere +
          Format(' AND A.IN_DATE BETWEEN TO_DATE (''%s'', ''YYYYMMDDHH24MISS'') '
          + ' AND TO_DATE (''%s'', ''YYYYMMDDHH24MISS'') '
					, [FormatDateTime('yyyymmdd', cxDate13_1S.Date) + '090000'
					, FormatDateTime('yyyymmdd', cxDate13_1E.Date) + '090000']);
      end;
    end
    else
      sTable := 'CDMS_A01';

		sWhere := sWhere + ' AND A.CONF_HEAD = ''' + cxHdNo13.Text + ''' AND A.CONF_BRCH = ''' +
			cxBrNo13.Text + ''' ';

    case cxComboBox3.ItemIndex of
      0: sWhere := sWhere + ' AND A.CONF_STATUS IN (''2'',''8'',''4'') ';
      1: sWhere := sWhere + ' AND A.CONF_STATUS = ''2'' ';
      2: sWhere := sWhere + ' AND A.CONF_STATUS = ''8'' ';
      3: sWhere := sWhere + ' AND A.CONF_STATUS = ''4'' ';
    end;

		if chkCust13Type02.Checked then
    begin
      sWhere := sWhere + ' AND A.CB_CODE IS NOT NULL ';
    end else
    begin
      sWhere := sWhere + ' AND A.CB_CODE = ''' + sCbCode + ''' ';
    end;

    if cxTextEdit21.Text <> '' then
    begin
      if cxComboBox2.ItemIndex = 0 then
        sWhere := sWhere + ' AND A.CONF_USER LIKE ''%' + Param_Filtering(cxTextEdit21.Text) + '%'' '
      else
      if cxComboBox2.ItemIndex = 1 then
        sWhere := sWhere + ' AND A.CONF_CUST_TEL LIKE ''%' + StringReplace(Param_Filtering(cxTextEdit21.Text), '-', '', [rfReplaceAll]) + '%'' ';
    end;

    ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
		fGet_BlowFish_Query(GSQ_CUST_BUBIN_STT_SEARCH, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sTable, sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '17', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '500', [rfReplaceAll]);

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
end;

procedure TFrm_CUT1.proc_BubinCust_Search(iType: Integer);
  function _GetRootBubinName: string;
  var
		Node: TcxTreeListNode;
	begin
		Node := CustView12_1.Selections[0];

    Result := Node.Values[2] + ',' + Node.Values[3];
		OutputDebugString(PChar(Result));
    while Node.Level > 0 do
    begin
      Node := Node.Parent;
      Result := Node.Values[2] + ',' + Node.Values[3];
    OutputDebugString(PChar(Result));
    end;
  end;
var
  sWhere, sCbcode: string;
  ls_TxQry, ls_TxLoad, sQueryTemp: string; // XML File Load
  slReceive: TStringList;
  ErrCode: integer;
begin
	if CustView12_2.DataController.RecordCount > 0 then
    Exit;

	if CustView12_1.SelectionCount = 0 then
  begin
    GMessagebox('���ξ�ü�� �����ϼž� �մϴ�.', CDMSE);
    Exit;
  end;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('���� ������ �Ҽ� ���縸 ��ȸ�Ҽ� �ֽ��ϴ�.', CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('���ΰ���(�ҼӰ�)') then Exit;

  //////////////////////////////////////////////////////////////////////////////
  // ����>���ΰ���>�ҼӰ�]10��/A100-B100/��ǥ��ȣ:16886618/�μ�:��ũ��-����ϻ����
  FExcelDownBubinCust := Format('%s/��ǥ��ȣ:%s/���κμ�:%s',
    [
        GetSelBrInfo
			, cbKeynumber12.Text
			, IfThen(iType = 1, _GetRootBubinName + ' ��ü', CustView12_1.Selections[0].Values[2] + '-' + CustView12_1.Selections[0].Values[3])
    ]);
  //////////////////////////////////////////////////////////////////////////////

	sCbcode := CustView12_1.Selections[0].Values[7];

	edBubinName02.Text := CustView12_1.Selections[0].Values[2] + '/' + CustView12_1.Selections[0].Values[3];
  cxTextEdit15.Text := sCbcode;

  if iType = 1 then
  begin
    sCbcode := Copy(sCbcode, 1, 5);
		sWhere := Format(' AND CU.BR_NO = ''%s'' AND CU.CB_CODE LIKE ''%s%%''', [cxBrNo12.Text, sCbcode]);
//    sWhere := ' AND CU.BR_NO = ''' + cxBrNo8.Text + ''' AND CU.CB_CODE LIKE ''' + sCbcode + '%'' ';
  end else
	if iType = 0 then
  begin
		sWhere := Format('AND CU.BR_NO = ''%s'' AND CU.CB_CODE = ''%s''', [cxBrNo12.Text, sCbcode]);
//    sWhere := ' AND CU.BR_NO = ''' + cxBrNo8.Text + ''' AND CU.CB_CODE = ''' + sCbcode + ''' ';
  end;

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_CUST_BUBIN_SEARCH, sQueryTemp);
	ls_TxQry := Format(sQueryTemp, [cxHdNo12.Text, sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '14', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '500', [rfReplaceAll]);

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

procedure TFrm_CUT1.proc_bubinHis;
begin
	CustView13_1.Root.TreeList.Clear;
	proc_BubinManage2;
end;

procedure TFrm_CUT1.proc_BubinList;
var XmlData, Param, ErrMsg: string;
  ErrCode: Integer;

  lst_Result, lst_Count: IXMLDomNodeList;
	I, j: Integer;
  iRow: integer;
	slList, ls_Rcrd: TStringList;
  xdom: MSDomDocument;
begin
	Param := GT_SEL_BRNO.HDNO + '��' + GT_SEL_BRNO.BrNo + '��' + StringReplace(cbKeynumber12.Text, '-', '', [rfReplaceAll]);
	slList := TStringList.Create;
	Screen.Cursor := crHourGlass;
	try
		if not RequestBasePaging(GetSel06('GET_CUST_LIST', 'MNG_BGROUP.GET_CUST_LIST', '100', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxGridBebinList.DataController.SetRecordCount(0);
			cxGridBebinList.BeginUpdate;
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				xdom.loadXML(XmlData);

				lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
				if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text, 0) > 0 then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
					try
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

							iRow := cxGridBebinList.DataController.AppendRecord;

							SetGridData(cxGridBebinList, iRow, 0, IntToStr(iRow+1));
							SetGridData(cxGridBebinList, iRow, 1, ls_Rcrd[0]);
							SetGridData(cxGridBebinList, iRow, 2, ls_Rcrd[1]);
							SetGridData(cxGridBebinList, iRow, 3, ls_Rcrd[2]);
							SetGridData(cxGridBebinList, iRow, 4, ls_Rcrd[3]);
							SetGridData(cxGridBebinList, iRow, 5, ls_Rcrd[4]);
							SetGridData(cxGridBebinList, iRow, 6, ls_Rcrd[5]);
							SetGridData(cxGridBebinList, iRow, 7, ls_Rcrd[6]);
							SetGridData(cxGridBebinList, iRow, 8, ls_Rcrd[7]);
							SetGridData(cxGridBebinList, iRow, 9, ls_Rcrd[8]);
							SetGridData(cxGridBebinList, iRow,10, ls_Rcrd[9]);
							SetGridData(cxGridBebinList, iRow,11, ls_Rcrd[10]);
							SetGridData(cxGridBebinList, iRow,12, ls_Rcrd[11]);
							SetGridData(cxGridBebinList, iRow,13, ls_Rcrd[12]);
							SetGridData(cxGridBebinList, iRow,14, ls_Rcrd[13]);
							SetGridData(cxGridBebinList, iRow,15, ls_Rcrd[14]);
							SetGridData(cxGridBebinList, iRow,16, ls_Rcrd[15]);
							SetGridData(cxGridBebinList, iRow,17, ls_Rcrd[16]);
							SetGridData(cxGridBebinList, iRow,18, ls_Rcrd[17]);
							SetGridData(cxGridBebinList, iRow,19, ls_Rcrd[18]);
							SetGridData(cxGridBebinList, iRow,20, ls_Rcrd[19]);
							SetGridData(cxGridBebinList, iRow,21, ls_Rcrd[20]);
							SetGridData(cxGridBebinList, iRow,22, ls_Rcrd[21]);
							SetGridData(cxGridBebinList, iRow,23, ls_Rcrd[22]);
							SetGridData(cxGridBebinList, iRow,24, ls_Rcrd[23]);
							SetGridData(cxGridBebinList, iRow,25, ls_Rcrd[24]);
							SetGridData(cxGridBebinList, iRow,26, ls_Rcrd[25]);
							SetGridData(cxGridBebinList, iRow,27, ls_Rcrd[26]);
						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			end;
		finally
			xdom := Nil;
			cxGridBebinList.EndUpdate;
			Frm_Flash.hide;
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
		end;
	except
		on E: Exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
			Frm_Flash.Hide;
		end;
	end;

end;

procedure TFrm_CUT1.proc_BubinManage;
var
  ls_TxLoad, sNode, sWhere, msg: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if (GT_SEL_BRNO.GUBUN <> '1') and (cxPageControl1.ActivePageIndex <> 6) then
  begin
    GMessagebox('���ξ�ü ��ȸ�� ���縦 �����ϼž� �մϴ�.', CDMSE);
//-    Panel14.Enabled := False;
//    Panel15.Enabled := False;
//    Panel16.Enabled := False;
    Exit;
  end;

  if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
//-    Panel14.Enabled := False;
//    Panel15.Enabled := False;
//    Panel16.Enabled := False;
    Exit;
  end;

	if fGetChk_Search_HdBrNo('���ΰ���(���ξ�ü)') then Exit;

//-  Panel14.Enabled := True;
//  Panel15.Enabled := True;
//  Panel16.Enabled := True;

	if (cbKeynumber12.Text = '') then
  begin
    CustView12_1.Root.TreeList.Clear;

    edBubinName02.Clear;
    cxTextEdit15.Clear;
    CustView12_2.DataController.SetRecordCount(0);
    cxViewCustom.DataController.SetRecordCount(0);
    Exit;
  end;

  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('���� Error�Դϴ�. �ٽ���ȸ�Ͽ��ֽʽÿ�.');
      Exit;
    end;

    //////////////////////////////////////////////////////////////////////////////
    // ����>���ΰ���>���ξ�ü]10��/A100-B100/��ǥ��ȣ:16886618/����,�μ���:��ũ��
    FExcelDownBubin := Format('%s/��ǥ��ȣ:%s%s',
      [
          GetSelBrInfo
				, cbKeynumber12.Text
        , IfThen(edBubinName01.Text = '', '', Format('/����,�μ���:%s', [edBubinName01.Text]))
      ]);
    //////////////////////////////////////////////////////////////////////////////

    if edBubinName01.Text <> '' then
      sWhere := ' AND ((CB_CORP_NAME LIKE ''%' + En_Coding(Param_Filtering(edBubinName01.Text)) +
        '%'') OR (CB_DEPT_NAME LIKE ''%' + En_Coding(Param_Filtering(edBubinName01.Text)) +
        '%'')) ';

    case cb_Contract.ItemIndex of
     1: sWhere := sWhere + ' AND TAX_TYPE = ''0'' ';
     2: sWhere := sWhere + ' AND TAX_TYPE = ''1'' ';
     3: sWhere := sWhere + ' AND TAX_TYPE = ''2'' ';
    end;

    sWhere := sWhere + ' ORDER BY CB_CODE ';

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := self.Caption + '13';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'CUSTGROUP1';
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
		lst_Node.item[0].attributes.getNamedItem('Value').Text := cxHdNo12.Text;
		lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
		lst_Node.item[1].attributes.getNamedItem('Value').Text := cxBrNo12.Text;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    lst_Node.item[2].attributes.getNamedItem('Value').Text := StringReplace(cbKeynumber12.Text, '-', '', [rfReplaceAll]);

    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;


    Screen.Cursor := crHourGlass;
		slReceive := TStringList.Create;
    try
      frm_Main.proc_SocketWork(False);
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
      begin
				CustView12_1.Root.TreeList.Clear;

        Application.ProcessMessages;
        proc_recieve(slReceive);

        edBubinName02.Clear;
        cxTextEdit15.Clear;
        CustView12_2.DataController.SetRecordCount(0);
        cxViewCustom.DataController.SetRecordCount(0);
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

procedure TFrm_CUT1.proc_BubinManage2;
var
  ls_TxLoad, sNode, sWhere, msg: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if (GT_SEL_BRNO.GUBUN <> '1') and (cxPageControl1.ActivePageIndex <> 6) then
  begin
		GMessagebox('���ξ�ü ��ȸ�� ���縦 �����ϼž� �մϴ�.', CDMSE);
//-    Panel17.Enabled := False;
    Exit;
  end;

  if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
//-    Panel17.Enabled := False;
    Exit;
  end;

  if fGetChk_Search_HdBrNo('�����̿볻��(���ξ�ü)') then Exit;

//-  Panel17.Enabled := True;
  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
			Screen.Cursor := crDefault;
      ShowMessage('���� Error�Դϴ�. �ٽ���ȸ�Ͽ��ֽʽÿ�.');
      Exit;
    end;

    if cxTextEdit14.Text <> '' then
      sWhere := ' AND ((CB_CORP_NAME LIKE ''%' + En_Coding(Param_Filtering(cxTextEdit14.Text)) +
        '%'') OR (CB_DEPT_NAME LIKE ''%' + En_Coding(Param_Filtering(cxTextEdit14.Text)) +
        '%'')) ';
    sWhere := sWhere + ' ORDER BY CB_CODE ';

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := self.Caption + '16';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'CUSTGROUP1';
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
		lst_Node.item[0].attributes.getNamedItem('Value').Text := cxHdNo13.Text;
		lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := GT_SEL_BRNO.BrNo;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
		lst_Node.item[2].attributes.getNamedItem('Value').Text := StringReplace(cbKeynumber13.Text, '-', '', [rfReplaceAll]);

    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;
    ls_TxLoad := StringReplace(ls_TxLoad, 'QeuryForwardString' , ''        , [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QeuryBackwardString', ''        , [rfReplaceAll]);

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

procedure TFrm_CUT1.proc_bubinSttSearch(vType : Integer; vSlip : String);
var
  msg: string;
	ErrCode, iRow, i, j, iCnt, index : integer;
	Param, ErrMsg, XmlData: string;
	xdom: MSDomDocument;
	ls_MSG_Err: string;
	ls_Rcrd, slList : TStringList;
	sTmp : string;
	lst_Result: IXMLDomNodeList;
begin
	if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('������������') then Exit;

  //////////////////////////////////////////////////////////////////////////////
	// ����>������������]1000��/A100-B100/�̿�Ⱓ:20100101~20100131/��������:�Ϸ�
  FExcelDownBubinDaily := Format('%s/��ǥ��ȣ:%s/�̿�Ⱓ:%s~%s/��������:%s',
    [
				GetSelBrInfo
			, cbKeynumber14.Text
			, cxDate14_1S.Text, cxDate14_1E.Text
			, IfThen(chkBubinSttOrdTotal.Checked, '��ü', IfThen(chkBubinSttOrdFinish.Checked, '�Ϸ�', IfThen(chkBubinSttOrdCancel.Checked, '���', '����')))
    ]);
  //////////////////////////////////////////////////////////////////////////////

	Param := '';
  Param := GT_USERIF.LV;
  if GT_SEL_BRNO.GUBUN <> '1' then
  begin
    if GT_USERIF.LV = '60' then
      Param := Param + '��' + GT_SEL_BRNO.HDNO + '��' + ''
    else if GT_USERIF.LV = '40' then
      Param := Param + '��' + GT_USERIF.HD + '��' + GT_USERIF.BR
    else if GT_USERIF.LV = '10' then
      Param := Param + '��' + GT_USERIF.HD + '��' + GT_USERIF.BR
  end else
  if GT_SEL_BRNO.GUBUN = '1' then
  begin
    Param := Param + '��' + GT_SEL_BRNO.HDNO + '��' + GT_SEL_BRNO.BrNo
  end;
  Param := Param + '��' + GT_SEL_BRNO.GUBUN ;

  if StartDateTime('yyyymmdd') = FormatDateTime('yyyymmdd', cxDate14_1S.Date) then
    Param := Param + '��' + 'CDMS_A01_TODAY'
  else
    Param := Param + '��' + 'CDMS_A01';
  Param := Param + '��' + FormatDateTime('yyyymmdd', cxDate14_1S.Date) + '090000';
  Param := Param + '��' + FormatDateTime('yyyymmdd', cxDate14_1E.Date) + '090000';

  if chkBubinSttOrdTotal.Checked then Param := Param + '��' + '0' else
  if chkBubinSttOrdFinish.Checked then Param := Param + '��' + '1' else
  if chkBubinSttOrdCancel.Checked then Param := Param + '��' + '2' else
  if chkBubinSttOrdReq.Checked then Param := Param + '��' + '3';

  if rbCust14Type02.Checked then Param := Param + '��' + 'y' else
  if rbCust14Type03.Checked then Param := Param + '��' + 'n'
                            else Param := Param + '��' + '';

  if rbCust14Type08.Checked then Param := Param + '��' + 'y' else
  if rbCust14Type09.Checked then Param := Param + '��' + 'n'
                            else Param := Param + '��' + '';

  if cbKeynumber14.Text <> '��ü' then
    Param := Param + '��' + StringReplace(cbKeynumber14.Text, '-', '', [rfReplaceAll])
  else
    Param := Param + '��' + '';

  if vType = 0 then
  begin
    Param := Param + '��' + StringReplace(cxdBubinSttSearch.Text, '-', '', [rfReplaceAll]);
    Param := Param + '��' + IntToStr(cbBubinSttCondition.ItemIndex);
  end else
  if vType = 1 then   // ������ �ڷ� 1���� �����ð�� ���
  begin
    Param := Param + '��' + vSlip;
    Param := Param + '��' + '0';
  end;

  if chkBubinSttFinish.Checked then Param := Param + '��' + 'y' else
  if chkBubinSttNotFinish.Checked then Param := Param + '��' + 'n' else
  if chkBubinSttNotBubin.Checked then Param := Param + '��' + 'n'
                                 else Param := Param + '��' + '';

  if chkBubinSttPayAfter.Checked then Param := Param + '��' + '0' else
  if chkBubinSttPayTick.Checked  then Param := Param + '��' + '1' else
  if chkBubinSttPayCash.Checked  then Param := Param + '��' + '2'
                                 else Param := Param + '��' + '';

  if rbCust14Type05.Checked then Param := Param + '��' + 'y'	else
  if rbCust14Type06.Checked then Param := Param + '��' + 'n'
                            else Param := Param + '��' + '';

  if chkBubinSttFinish.Checked then Param := Param + '��' + 'y' else
  if chkBubinSttNotFinish.Checked then Param := Param + '��' + 'y' else
  if chkBubinSttNotBubin.Checked then Param := Param + '��' + 'n'
                                 else Param := Param + '��' + '';

  cxPageControl1.Enabled := False;
  Screen.Cursor := crHourGlass;
  slList := TStringList.Create;
	try
    if not RequestBasePaging(GetSel06('GET_BGROUP_ORDER_LIST', 'MNG_BGROUP.GET_BGROUP_ORDER_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('���� ���� ���� ��ȸ�� ������ �߻��Ͽ����ϴ�.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      cxPageControl1.Enabled := True;
      Screen.Cursor := crDefault;
      Exit;
    end;

    if vType = 0 then
    begin
      cxGBubinStt.DataController.SetRecordCount(0);
      cxGrid_Angel.DataController.SetRecordCount(0);

      for i := 0 to cxGBubinStt.ColumnCount - 1 do
         cxGBubinStt.Columns[i].SortOrder := soNone;
    end;

    Frm_Flash.cxPBar1.Properties.Max := slList.Count;
    Frm_Flash.cxPBar1.Position := 0;
    for j := 0 to slList.Count - 1 do
    begin
  		Frm_Flash.lblCnt.Visible := True;
			Frm_Flash.lblDescription.Visible := True;
      Frm_Flash.cxPBar1.Position := j + 1;
      Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
      Application.ProcessMessages;
      xmlData := slList.Strings[j];

      xdom := ComsDomDocument.Create;
      try
        if not xdom.loadXML(XmlData) then
        begin
          cxPageControl1.Enabled := True;
           Screen.Cursor := crDefault;
          Exit;
        end;

        iCnt := GetXmlRecordCount(XmlData);
        if iCnt > 0 then
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          ls_MSG_Err := GetXmlErrorCode(XmlData);
          if ('0000' = ls_MSG_Err) then
          begin
            frm_Main.sbar_Message.Panels[4].Text := '';
            cxGBubinStt.BeginUpdate;
            cxGrid_Angel.BeginUpdate;
            chkBubinStt.Checked := False;

            ls_Rcrd := TStringList.Create;
            try
              for i := 0 to iCnt - 1 do
              begin
                Application.ProcessMessages;
                GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

                if vType = 0 then
                begin
                  ls_Rcrd.Insert(0, '0');
                  iRow := cxGBubinStt.DataController.AppendRecord;
                end else
                if vType = 1 then
                begin
                  if (vSlip <> ls_Rcrd[2]) then Continue;

                  iRow := cxGBubinStt.DataController.FindRecordIndexByText(0, 4, vSlip, False, True, True);
                  if iRow < 0 then Continue;

                  ls_Rcrd.Insert(0, cxGBubinStt.DataController.Values[iRow, 0]);
                end;

                // 1 Record �߰�
                ls_Rcrd.Insert(0, IntToStr(iRow + 1));
                sTmp := ls_Rcrd[11];
                if sTmp <> '' then
                  ls_Rcrd[11] := Copy(sTmp, 1, 10) + ' ' + Copy(sTmp, 11, 8);
                sTmp := ls_Rcrd[21];
                if sTmp <> '' then
                  ls_Rcrd[21] := Copy(sTmp, 1, 10) + ' ' + Copy(sTmp, 11, 8);
                sTmp := ls_Rcrd[22];
                if StrToFloatDef(sTmp, -9) = -9 then
                  ls_Rcrd[22] := '0.0';
                cxGBubinStt.DataController.Values[iRow, 0] := ls_Rcrd[0];                   //0-����
                cxGBubinStt.DataController.Values[iRow, 1] := ls_Rcrd[1];                   //1-����
                cxGBubinStt.DataController.Values[iRow, 2] := ls_Rcrd[2];                   //2-��������
                cxGBubinStt.DataController.Values[iRow, 3] := ls_Rcrd[3];                   //3-�������
                cxGBubinStt.DataController.Values[iRow, 4] := ls_Rcrd[4];                   //4-������ȣ
                if ls_Rcrd[44] = 'n' then
                  cxGBubinStt.DataController.Values[iRow, 5] := '��������'
                else
                  cxGBubinStt.DataController.Values[iRow, 5] := ls_Rcrd[5];                 //5-���꿩��
                cxGBubinStt.DataController.Values[iRow, 6] := ls_Rcrd[6];                   //6-������
                cxGBubinStt.DataController.Values[iRow, 7] := ls_Rcrd[7];                   //7-���θ�
                cxGBubinStt.DataController.Values[iRow, 8] := ls_Rcrd[8];                   //8-�μ���
                cxGBubinStt.DataController.Values[iRow, 9] := ls_Rcrd[9];                   //9-����
                cxGBubinStt.DataController.Values[iRow, 10] := strtocall(ls_Rcrd[10]);      //10-��ȭ��ȣ
                cxGBubinStt.DataController.Values[iRow, 11] := ls_Rcrd[11];                 //11-���������Ͻ�
                cxGBubinStt.DataController.Values[iRow, 12] := ls_Rcrd[12];                 //12-��õ�
                cxGBubinStt.DataController.Values[iRow, 13] := ls_Rcrd[13];                 //13-��ñ���
                cxGBubinStt.DataController.Values[iRow, 14] := ls_Rcrd[14];                 //14-�����鵿
                cxGBubinStt.DataController.Values[iRow, 15] := ls_Rcrd[15];                 //15-���Է�
                cxGBubinStt.DataController.Values[iRow, 16] := ls_Rcrd[16];                 //16-���õ�
                cxGBubinStt.DataController.Values[iRow, 17] := ls_Rcrd[17];                 //17-���ñ���
                cxGBubinStt.DataController.Values[iRow, 18] := ls_Rcrd[18];                 //18-�����鵿
                cxGBubinStt.DataController.Values[iRow, 19] := ls_Rcrd[19];                 //19-���Է�
                cxGBubinStt.DataController.Values[iRow, 20] := ls_Rcrd[20];                 //20-���ð�
                cxGBubinStt.DataController.Values[iRow, 21] := ls_Rcrd[21];                 //21-�Ϸ�ð�
                cxGBubinStt.DataController.Values[iRow, 22] := ls_Rcrd[22];                 //22-�Ÿ�
                cxGBubinStt.DataController.Values[iRow, 23] := ls_Rcrd[23];                 //23-����1
                cxGBubinStt.DataController.Values[iRow, 24] := ls_Rcrd[24];                 //24����2
                cxGBubinStt.DataController.Values[iRow, 25] := StrToIntDef(ls_Rcrd[25],0);   //25-�������
                cxGBubinStt.DataController.Values[iRow, 26] := StrToIntDef(ls_Rcrd[26],0);   //26-��������
                cxGBubinStt.DataController.Values[iRow, 27] := StrToIntDef(ls_Rcrd[27],0);                 //27-�����޾�
                cxGBubinStt.DataController.Values[iRow, 28] := StrToIntDef(ls_Rcrd[28],0);                 //28-�����ݾ�
                cxGBubinStt.DataController.Values[iRow, 29] := StrToIntDef(ls_Rcrd[29],0);                 //29-�⺻���
                cxGBubinStt.DataController.Values[iRow, 30] := StrToIntDef(ls_Rcrd[30],0);                 //30-�������
                cxGBubinStt.DataController.Values[iRow, 31] := StrToIntDef(ls_Rcrd[31],0);                 //31-�����
                cxGBubinStt.DataController.Values[iRow, 32] := StrToIntDef(ls_Rcrd[32],0);                 //32-���ް�
                cxGBubinStt.DataController.Values[iRow, 33] := StrToIntDef(ls_Rcrd[33],0);                 //33-�ΰ���
                cxGBubinStt.DataController.Values[iRow, 34] := StrToIntDef(ls_Rcrd[34],0);                 //34-��Ÿ���ޱ�
                cxGBubinStt.DataController.Values[iRow, 35] := StrToIntDef(ls_Rcrd[35],0);                 //35-�հ�
                cxGBubinStt.DataController.Values[iRow, 36] := ls_Rcrd[36];                 //36-��Ÿ����
                cxGBubinStt.DataController.Values[iRow, 37] := ls_Rcrd[37];                 //37-����
                cxGBubinStt.DataController.Values[iRow, 38] := ls_Rcrd[38];                 //38-����
                cxGBubinStt.DataController.Values[iRow, 39] := ls_Rcrd[39];                 //39-�Ҽ�
                cxGBubinStt.DataController.Values[iRow, 40] := ls_Rcrd[40];                 //40-����
                cxGBubinStt.DataController.Values[iRow, 41] := ls_Rcrd[41];                 //41-�����
                cxGBubinStt.DataController.Values[iRow, 42] := ls_Rcrd[42];                 //42-������
                cxGBubinStt.DataController.Values[iRow, 43] := ls_Rcrd[43];                 //43-�ΰ�������
                //BGROUP Y/n ls_Rcrd[44]
                cxGBubinStt.DataController.Values[iRow, 44] := ls_Rcrd[45];                 //44-����
                //�����ڵ� ls_Rcrd[46];
                if ls_Rcrd[47] = 'y' then sTmp := 'Ź��' else sTmp := '�븮';
                cxGBubinStt.DataController.Values[iRow, 45] := sTmp;                        //45-���񽺸�
                cxGBubinStt.DataController.Values[iRow, 46] := ls_Rcrd[48];                 //46-����å
                cxGBubinStt.DataController.Values[iRow, 47] := ls_Rcrd[49];                 //47-�����(��ü���)
                cxGBubinStt.DataController.Values[iRow, 48] := ls_Rcrd[50];                 //48-���� ��һ���
                cxGBubinStt.DataController.Values[iRow, 49] := ls_Rcrd[51];                 //49-��/Ÿ��� ����
                cxGBubinStt.DataController.Values[iRow, 50] := copy(ls_Rcrd[52], 1, 10) + ' ' + copy(ls_Rcrd[52], 11, 8);                 //50-�����ð�    '2021-02-2318:18:43'
                cxGBubinStt.DataController.Values[iRow, 51] := StrToIntDef(ls_Rcrd[54], 0);                 //51-��Ÿ���
                cxGBubinStt.DataController.Values[iRow, 52] := StrToIntDef(ls_Rcrd[55], 0);                 //52-������
                cxGBubinStt.DataController.Values[iRow, 53] := StrToIntDef(ls_Rcrd[56], 0);                 //53-���ݰ�����
                cxGBubinStt.DataController.Values[iRow, 54] := StrToIntDef(ls_Rcrd[57], 0);                 //54-ī�������
                cxGBubinStt.DataController.Values[iRow, 55] := ls_Rcrd[58];                 //55-���޸�
                cxGBubinStt.DataController.Values[iRow, 56] := ls_Rcrd[59];                 //56-���޸�
                cxGBubinStt.DataController.Values[iRow, 57] := ls_Rcrd[60];                 //57-������ : ����/����/����
                cxGBubinStt.DataController.Values[iRow, 58] := ls_Rcrd[61];                 //58-������: ������/ID
                cxGBubinStt.DataController.Values[iRow, 59] := ls_Rcrd[62];                 //59-�����ڵ�
                cxGBubinStt.DataController.Values[iRow, 60] := ls_Rcrd[53];                 //60-��������(������)


                //�߰���û�� ���� ls_Rcrd[47] ���ͽ���
                //ls_Rcrd[47] ���񽺸�
                //48 ����å
                //49 �����(��ü���)
                //50 ���� ��һ���
                //51 ��/Ÿ��� ����
                //52 �����ð�
                //53 ��������
                //54 ��Ÿ���
                //55 ������
                //56 ���ݰ�����
                //57 ī�������
                //58 ���޸�
                //59 ���޸�
                //60 ������ : ����/����/����
                //61 ������: ������/ID
                //62 �����ڵ�
                ///////////////////////////�������� ����//////////////////////////////
                iRow := cxGrid_Angel.DataController.AppendRecord;
                cxGrid_Angel.DataController.Values[iRow,  0] := ls_Rcrd[ 0];                   //����
                cxGrid_Angel.DataController.Values[iRow,  1] := ls_Rcrd[ 4];                   //������ȣ

                //���������� ���
                sTmp := StringReplace(ls_Rcrd[11], ' ', '', [rfReplaceAll]);
                sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
                sTmp := StringReplace(sTmp, ':', '', [rfReplaceAll]);
                sTmp := func_JON03SalesDate(sTmp);
                cxGrid_Angel.DataController.Values[iRow,  2] := sTmp;                         //������
                cxGrid_Angel.DataController.Values[iRow,  3] := ls_Rcrd[11];                  //�����Ͻ�-���������Ͻ�
                cxGrid_Angel.DataController.Values[iRow,  4] := ls_Rcrd[60];                  //�����

                if ls_Rcrd[47] = 'y' then sTmp := 'Ź��' else sTmp := '�븮';
                cxGrid_Angel.DataController.Values[iRow,  5] := sTmp;                         //���񽺸�

                if ls_Rcrd[ 2] = '2' then sTmp := '�Ϸ�' else
                if ls_Rcrd[ 2] = '4' then sTmp := '����' else
                if ls_Rcrd[ 2] = '8' then sTmp := '���' else
                if ls_Rcrd[ 2] = '0' then sTmp := '����' else
                if ls_Rcrd[ 2] = '1' then sTmp := '����' else
                if ls_Rcrd[ 2] = '3' then sTmp := '����' else
                if ls_Rcrd[ 2] = '5' then sTmp := '���' else
                if ls_Rcrd[ 2] = 'R' then sTmp := '����';
                cxGrid_Angel.DataController.Values[iRow,  6] := sTmp      ;                  //��������- ��������
                cxGrid_Angel.DataController.Values[iRow,  7] := '����';                       //����/�Ϲ� ������ ���θ� ��ȸ�ȴٰ� ��. ���¿����
                cxGrid_Angel.DataController.Values[iRow,  8] := ls_Rcrd[ 9];                  //����
                cxGrid_Angel.DataController.Values[iRow,  9] := ls_Rcrd[48];                  //����å
                cxGrid_Angel.DataController.Values[iRow, 10] := strtocall(ls_Rcrd[10]);       //����ȭ��ȣ
                cxGrid_Angel.DataController.Values[iRow, 11] := ls_Rcrd[62];                  //��ü ID-�����ڵ�
                cxGrid_Angel.DataController.Values[iRow, 12] := ls_Rcrd[ 7];                  //��ü��
                cxGrid_Angel.DataController.Values[iRow, 13] := ls_Rcrd[61];                  //������
                cxGrid_Angel.DataController.Values[iRow, 14] := ls_Rcrd[50];                  //������һ���
                cxGrid_Angel.DataController.Values[iRow, 15] := ls_Rcrd[41];                  //���ID
                cxGrid_Angel.DataController.Values[iRow, 16] := ls_Rcrd[49];                  //�����
                cxGrid_Angel.DataController.Values[iRow, 17] := ls_Rcrd[40];                  //����
                cxGrid_Angel.DataController.Values[iRow, 18] := ls_Rcrd[51];                  //��/Ÿ��� ����
                cxGrid_Angel.DataController.Values[iRow, 19] := copy(ls_Rcrd[52], 1, 10) + ' ' + copy(ls_Rcrd[52], 11, 8);                  //�����ð�
                cxGrid_Angel.DataController.Values[iRow, 20] := ls_Rcrd[20];                  //���ð�
                cxGrid_Angel.DataController.Values[iRow, 21] := ls_Rcrd[21];                  //��������ð�
                cxGrid_Angel.DataController.Values[iRow, 22] := ls_Rcrd[15];                  //����� POI
                cxGrid_Angel.DataController.Values[iRow, 23] := ls_Rcrd[12] + ' ' + ls_Rcrd[13] + ' ' + ls_Rcrd[14];//����ּ�
                cxGrid_Angel.DataController.Values[iRow, 24] := ls_Rcrd[12];                  //����� ��/��
                cxGrid_Angel.DataController.Values[iRow, 25] := ls_Rcrd[13];                  //����� ��/��
                cxGrid_Angel.DataController.Values[iRow, 26] := ls_Rcrd[14];                  //����� ��/��
                cxGrid_Angel.DataController.Values[iRow, 27] := ls_Rcrd[15];                 //������ POI
                cxGrid_Angel.DataController.Values[iRow, 28] := ls_Rcrd[16] + ' ' + ls_Rcrd[17] + ' ' + ls_Rcrd[18];//�����ּ�
                cxGrid_Angel.DataController.Values[iRow, 29] := ls_Rcrd[16];                  //������ ��/��
                cxGrid_Angel.DataController.Values[iRow, 30] := ls_Rcrd[17];                  //������ ��/��
                cxGrid_Angel.DataController.Values[iRow, 31] := ls_Rcrd[18];                  //������ ��/��
                cxGrid_Angel.DataController.Values[iRow, 32] := ls_Rcrd[42];                  //������
                cxGrid_Angel.DataController.Values[iRow, 33] := ls_Rcrd[22];                  //����Ÿ�

                if ls_Rcrd[53] = '0' then sTmp := '����' else
                if ls_Rcrd[53] = '1' then sTmp := '���ϸ���' else
                if ls_Rcrd[53] = '2' then sTmp := '�ĺ�' else
                if ls_Rcrd[53] = '3' then sTmp := '����ϰ���' else
                if ls_Rcrd[53] = '4' then sTmp := '�ܻ�' else
                if ls_Rcrd[53] = '5' then sTmp := 'ī��' else
                if ls_Rcrd[53] = '6' then sTmp := '���' else
                if ls_Rcrd[53] = '7' then sTmp := '�ĺ�(ī��)' else
                if ls_Rcrd[53] = '8' then sTmp := '�ĺ�(����)';
                cxGrid_Angel.DataController.Values[iRow, 34] := sTmp;                  //�������� //2
                cxGrid_Angel.DataController.Values[iRow, 35] := StrToIntDef(ls_Rcrd[25],0);                  //�������
                cxGrid_Angel.DataController.Values[iRow, 36] := StrToIntDef(ls_Rcrd[30],0);                  //�������
                cxGrid_Angel.DataController.Values[iRow, 37] := StrToIntDef(ls_Rcrd[31],0);                  //�����
                cxGrid_Angel.DataController.Values[iRow, 38] := StrToIntDef(ls_Rcrd[54],0);                  //��Ÿ���
                cxGrid_Angel.DataController.Values[iRow, 39] := StrToIntDef(ls_Rcrd[55],0);                  //������
                cxGrid_Angel.DataController.Values[iRow, 40] := StrToIntDef(ls_Rcrd[28],0);                  //������
                cxGrid_Angel.DataController.Values[iRow, 41] := StrToIntDef(ls_Rcrd[56],0);                  //���ݰ�����
                cxGrid_Angel.DataController.Values[iRow, 42] := StrToIntDef(ls_Rcrd[57],0);                  //ī�������
                cxGrid_Angel.DataController.Values[iRow, 43] := StrToIntDef(ls_Rcrd[26],0); //��������
                cxGrid_Angel.DataController.Values[iRow, 44] := '20%';                  //����������
                cxGrid_Angel.DataController.Values[iRow, 45] := ls_Rcrd[58];                  //���޸�
                cxGrid_Angel.DataController.Values[iRow, 46] := ls_Rcrd[59];                  //���޸�
              end;
            Except
              ls_Rcrd.Free;
              Screen.Cursor := crDefault;
              cxPageControl1.Enabled := True;
              cxGBubinStt.EndUpdate;
              cxGrid_Angel.EndUpdate;
              Frm_Flash.Hide;
              GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
            end;
            ls_Rcrd.Free;
            Screen.Cursor := crDefault;
            cxPageControl1.Enabled := True;
            cxGBubinStt.EndUpdate;
            cxGrid_Angel.EndUpdate;

            // ���������Ͻ÷� �������� ó��
            cxGBubinStt.Columns[11].SortOrder := soAscending;
            gfSetIndexNo(cxGBubinStt, True);

            frm_Main.sbar_Message.Panels[4].Text := '';
          end;
        end else
        begin
          GMessagebox('�˻��� ������ �����ϴ�.', CDMSE);
          cxPageControl1.Enabled := True;
          Screen.Cursor := crDefault;
        end;
      finally
        xdom := Nil;
      end;
    end;
  finally
    cxPageControl1.Enabled := True;
    Screen.Cursor := crDefault;
		Frm_Flash.lblCnt.Visible := False;
  	Frm_Flash.lblDescription.Visible := False;
    Frm_Flash.Hide;
  	FreeAndNil(slList);
  end;
end;

procedure TFrm_CUT1.proc_BubinStt_Select(iRow: Integer);
begin
	if iRow >= 0 then
  begin
		if ( Not Assigned(Frm_CUT019) ) Or ( Frm_CUT019 = Nil ) then Frm_CUT019 := TFrm_CUT019.Create(Nil);
    Frm_CUT019.lbSosokCaption.Caption := cxGBubinStt.DataController.Values[iRow, 39];
		Frm_CUT019.cxlbConfSlip.Caption := cxGBubinStt.DataController.Values[iRow, 4];
    Frm_CUT019.cxlbFirstTime.Caption := cxGBubinStt.DataController.Values[iRow, 11];
    Frm_CUT019.cxlbFinish.Caption := cxGBubinStt.DataController.Values[iRow, 21];

    if cxGBubinStt.DataController.Values[iRow, 3] = '�ĺ�' then
      Frm_CUT019.chkBubinSttPayAfter.Checked := True
    else if cxGBubinStt.DataController.Values[iRow, 3] = '�ܻ�' then
      Frm_CUT019.chkBubinSttPayTick.Checked := True
    else Frm_CUT019.chkBubinSttPayCash.Checked := True;

    if cxGBubinStt.DataController.Values[iRow, 2] = '���' then
      Frm_CUT019.chkBubinSttOrdCancel.Checked := True
    else if cxGBubinStt.DataController.Values[iRow, 2] = '����' then
      Frm_CUT019.chkBubinSttOrdReq.Checked := True
    else
      Frm_CUT019.chkBubinSttOrdFinish.Checked := True;

    if cxGBubinStt.DataController.Values[iRow, 5] = '�Ϸ�' then
      Frm_CUT019.chkBubinSttFinish.Checked := True
    else if cxGBubinStt.DataController.Values[iRow, 5] = '������' then
      Frm_CUT019.chkBubinSttNotFinish.Checked := True
    else if cxGBubinStt.DataController.Values[iRow, 5] = '��������' then
      Frm_CUT019.chkBubinSttNotBubin.Checked := True;

    if cxGBubinStt.DataController.Values[iRow, 6] = '����' then
      Frm_CUT019.chkBubinSttWebView.Checked := True
    else
      Frm_CUT019.chkBubinSttWebViewNo.Checked := True;

    if cxGBubinStt.DataController.Values[iRow, 37] = 'YES' then
    begin
      Frm_CUT019.cxRadioButton1.Checked := True;
      Frm_CUT019.Panel8.Color := $00F3D9BE;
      Frm_CUT019.Panel8.Enabled := False;
    end else
    if cxGBubinStt.DataController.Values[iRow, 37] = '�����ü' then
    begin
      Frm_CUT019.Panel8.Enabled := True;
			Frm_CUT019.Panel8.Color := clWhite;
      Frm_CUT019.cxRadioButton3.checked := True;
    end else
    begin
      Frm_CUT019.cxRadioButton2.Checked := True;
      Frm_CUT019.Panel8.Color := clWhite;
      Frm_CUT019.Panel8.Enabled := True;
    end;

    if cxGBubinStt.DataController.Values[iRow, 38] = '����' then
      Frm_CUT019.chkBubinSttAuth.Checked := True
    else
      Frm_CUT019.chkBubinSttNotAuth.Checked := True;

    if cxGBubinStt.DataController.Values[iRow, 43] = 'n' then
      Frm_CUT019.cxRadioButton5.Checked := True
    else
      Frm_CUT019.cxRadioButton4.Checked := True;

    if Frm_CUT019.cbBubinSttWether.Properties.Items.IndexOf(cxGBubinStt.DataController.Values[iRow, 44]) > -1 then
      Frm_CUT019.cbBubinSttWether.ItemIndex := Frm_CUT019.cbBubinSttWether.Properties.Items.IndexOf(cxGBubinStt.DataController.Values[iRow, 44]);

    Frm_CUT019.cxlbuser.Text := cxGBubinStt.DataController.Values[iRow, 9];
    Frm_CUT019.cxlbCuTel.Text := cxGBubinStt.DataController.Values[iRow, 10];
    Frm_CUT019.cxlbBubin.Caption := cxGBubinStt.DataController.Values[iRow, 7] + ' / ' + cxGBubinStt.DataController.Values[iRow, 8];
    Frm_CUT019.cxtStartAreaDetail.Text := cxGBubinStt.DataController.Values[iRow, 15];
    Frm_CUT019.lblStartAreaName1.Text := cxGBubinStt.DataController.Values[iRow, 12];
    Frm_CUT019.lblStartAreaName2.Text := cxGBubinStt.DataController.Values[iRow, 13];
    Frm_CUT019.lblStartAreaName3.Text := cxGBubinStt.DataController.Values[iRow, 14];

    Frm_CUT019.cxtEndAreaDetail.Text := cxGBubinStt.DataController.Values[iRow, 19];
    Frm_CUT019.lblEndAreaName1.Text := cxGBubinStt.DataController.Values[iRow, 16];
    Frm_CUT019.lblEndAreaName2.Text := cxGBubinStt.DataController.Values[iRow, 17];
    Frm_CUT019.lblEndAreaName3.Text := cxGBubinStt.DataController.Values[iRow, 18];
    Frm_CUT019.cxtViaAreaDetail.Text := cxGBubinStt.DataController.Values[iRow, 42];

    Frm_CUT019.cxlbWkName.Caption := cxGBubinStt.DataController.Values[iRow, 40];
    Frm_CUT019.cxlbWkSabun.Caption := cxGBubinStt.DataController.Values[iRow, 41];

		Frm_CUT019.cxlbCharge.Caption := FormatFloat('#,##0', cxGBubinStt.DataController.Values[iRow, 25]);
		Frm_CUT019.cxtDis.Text := cxGBubinStt.DataController.Values[iRow, 22];
		Frm_CUT019.cxlbCommission.Caption := FormatFloat('#,##0', cxGBubinStt.DataController.Values[iRow, 26]);
		Frm_CUT019.cxlbRealCharge.Caption := FormatFloat('#,##0', cxGBubinStt.DataController.Values[iRow, 27]);
		Frm_CUT019.cxtBaseCharge.Text     := cxGBubinStt.DataController.Values[iRow, 29];
		Frm_CUT019.cxtWaitTime.Text       := cxGBubinStt.DataController.Values[iRow, 20];
		Frm_CUT019.cxtWaitCharge.Text     := cxGBubinStt.DataController.Values[iRow, 31];
		Frm_CUT019.cxtPassCharge.Text     := cxGBubinStt.DataController.Values[iRow, 30];
		Frm_CUT019.cxtAddCharge.Text      := cxGBubinStt.DataController.Values[iRow, 28];       //�������
		Frm_CUT019.lb_OTHER_CHARGE.Caption   := FormatFloat('#,##0', cxGBubinStt.DataController.Values[iRow, 51]);       //��Ÿ���ޱ�
		Frm_CUT019.lb_SUPPORT_CHARGE.Caption := FormatFloat('#,##0', cxGBubinStt.DataController.Values[iRow, 52]);       //������
		Frm_CUT019.meoInfo1.Text          := cxGBubinStt.DataController.Values[iRow, 23];
		Frm_CUT019.meoInfo2.Text          := cxGBubinStt.DataController.Values[iRow, 24];
		Frm_CUT019.cxtCharge1.Text        := cxGBubinStt.DataController.Values[iRow, 32];
		Frm_CUT019.cxtTax.Text            := cxGBubinStt.DataController.Values[iRow, 33];
		Frm_CUT019.cxtEtc.Text            := cxGBubinStt.DataController.Values[iRow, 34];
		Frm_CUT019.cxtSum.Text            := cxGBubinStt.DataController.Values[iRow, 35];
		Frm_CUT019.meoEtc.Text            := cxGBubinStt.DataController.Values[iRow, 36];
		Frm_CUT019.Show;
    Frm_CUT019.btnCalc.Click;
  end;
end;

procedure TFrm_CUT1.proc_cust_bubin_Modify(iType: Integer;
  advGrid: TcxGridDBTableView);
var
  ls_rxxml: WideString;
  ls_TxLoad, rv_str, ls_TxQry, sQueryTemp: string;
  sSet, sCbCode, sWhere, sMsg, ls_Msg_Err: string;
  i, iCnt, sCnt, fCnt, iCuseq: Integer;
  slReceive: TStringList;
  ErrCode: integer;
begin
  sCbCode := cxTextEdit15.Text;

  if iType = 0 then
  begin
    sSet := 'CU_TYPE = ''3'', CB_CODE = ''' + sCbCode + ''' ';
    sMsg := '[%s]���ο� %s���� ��� �Ͻðڽ��ϱ�?';
  end else
  begin
		sSet := 'CU_TYPE = ''0'', CB_CODE = '''' ';
    sMsg := '[%s]���ο��� %s���� ���� �Ͻðڽ��ϱ�?';
  end;
	iCnt := advGrid.DataController.GetSelectedCount;
  iCuseq := advGrid.GetColumnByFieldName('���ڵ�').Index;
  sWhere := '';
  if iCnt < 1 then
  begin
    GMessagebox('���õ� ���� �����ϴ�.' + #13#10 +
      '���� ���� �����ϼ���!', CDMSE);
    Exit;
  end;

  sMsg := Format(sMsg, [sCbCode, IntToStr(iCnt)]);
  if GMessagebox(sMsg, CDMSQ) <> IDOK then
    Exit;
    
  Screen.Cursor := crHandPoint;

  sCnt := 0;
  fCnt := 0;
  try
    for I := 0 to advGrid.DataController.RecordCount - 1 do
    begin
      if advGrid.ViewData.Records[I].Selected then
      begin
        sWhere := advGrid.ViewData.Records[I].Values[iCuseq];
        advGrid.ViewData.Records[I].Selected := False;
        ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
        fGet_BlowFish_Query(GSQ_CUSTOMER_BUBIN_MODIFY, sQueryTemp);
        ls_TxQry := Format(sQueryTemp, [sSet, sWhere]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CUSTBUBINMOD', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

        slReceive := TStringList.Create;
        try
          if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
					begin
            rv_str := slReceive[0];
            if rv_str <> '' then
            begin
              ls_rxxml := rv_str;
              ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
              if ('0000' = ls_Msg_Err) then
              begin
                sCnt := sCnt + 1; //�����Ǽ�
              end else
							begin
                fCnt := fCnt + 1; //���аǼ�
              end;
            end;
          end;
        finally
          FreeAndNil(slReceive);
          Screen.Cursor := crDefault;
          Frm_Flash.Hide;
        end;
      end;
    end;
  except

	end;
	btn_12_8Click(btn_12_8);
  Sleep(1000);
  GMessagebox('�����Ǽ� : ' + IntToStr(sCnt) + #13#10 + '���аǼ� : ' +
    IntToStr(fCnt), CDMSI);
  Screen.Cursor := crDefault;
end;

procedure TFrm_CUT1.proc_delete_gbroup(sCode: string);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, ls_Msg_Err, sMsg, sBrNo: string;
  sParam, sTemp: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
  CustomerCount: Integer;
begin
	if CustView12_1.Selections[0].HasChildren then
	begin
    GMessagebox('���� ����(��ü)�� ������ ������ �� �����ϴ�.', CDMSE);
    Exit;
	end;

	sBrNo := cxBrNo12.Text;
	sTemp := CustView12_1.Selections[0].Values[7];

	CustomerCount := GetDeptCustomerCount(cxHdNo12.Text, cxBrNo12.Text, sTemp);
	case CustomerCount of
    -1:
      begin
        GMessagebox('�����Ͽ����ϴ�.' + #13#10 + '�ٽ� �ѹ� �õ��� ������', CDMSE);
        Exit;
      end;
    0:
      ;
  else
    begin
      GMessagebox(Format('���� �μ��� �Ҽӵ� ������ [%d]�� �����մϴ�.', [CustomerCount]) + #13#10
        + '�ش� ���� �μ�����/���� �� �μ� ������ �õ� �ٶ��ϴ�.', CDMSE);
      Exit;
    end;
  end;

  if GMessagebox('�����Ͻðڽ��ϱ�?', CDMSQ) = IDCANCEL then Exit;

  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE.xml');
  sTemp := 'DELETE_CUST_BGROUP(?,?,?,?)';
  sParam := StringReplace(ls_Param, 'ParamString', sCode, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', sBrNo, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', cxHdNo12.Text, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '14', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(3), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sParam, [rfReplaceAll]);

  Screen.Cursor := crHandPoint;
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
            GMessagebox('�����Ͽ����ϴ�.', CDMSI);
						CustView12_1.Root.TreeList.Clear;
            proc_BubinManage;
						CustView12_2.DataController.SetRecordCount(0);
          end else
          if ('0000' = ls_Msg_Err) and ('2' = sMsg) then
          begin
            GMessagebox('���� ����(��ü)�� ������ ������ �� �����ϴ�.' + #13#10 +
							'���� ���� ����(��ü)�� �����ϼ���!', CDMSE);
          end else
          begin
            GMessagebox('�����Ͽ����ϴ�.' + #13#10 + '�ٽ� �ѹ� �õ��� ������', CDMSE);
          end;
				except
          GMessagebox('�����Ͽ����ϴ�.' + #13#10 + '�ٽ� �ѹ� �õ��� ������', CDMSE);
        end;
      end;
    end;
  finally
		Frm_Main.proc_bubinlist_insert;
    FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUT1.proc_init;
var
	i, iCol : Integer;
	ln_env: TIniFile;
  sTemp: string;
	slHidn: TStringList;
begin
	proc_BrNameSet;

//12 B-1//
  if TCK_USER_PER.CUR_BubinMngModify = '1' then
	begin
		btn_12_2.Enabled := True;
		btn_12_4.Enabled := True;
		btn_12_13.Enabled := True;
		btn_12_14.Enabled := True;
  end else
	begin
		btn_12_2.Enabled := False;
		btn_12_4.Enabled := False;
		btn_12_13.Enabled := False;
		btn_12_14.Enabled := False;
	end;
	gsCustViewParam := '';
	edCbCode.text := '';
	lb_Date01.caption := '';
	lb_Date02.caption := '';
	lb_UseCnt01.caption := '';
	edName01.Text := '';
	edName03.Text := '';
	edtCustStateMemo.Text := '';
	edtCustMemo.Text := '';

	cb_Contract2.ItemIndex := -1;
	dtRegDate.Text := '';
	dtFinDate.Text := '';
	
	edWebID.Text := '';
	edWebPW.Text := '';
	
	edName01.enabled := false;
	edName03.enabled := false;
	edtCustStateMemo.enabled := false;
	edtCustMemo.enabled := false;

	cb_Contract2.enabled := false;
	dtRegDate.enabled := false;
	dtFinDate.enabled := false;
	pnl_Vat.enabled := false;
	pnl_Bill.enabled := false;

	edWebPW.enabled := false;

	for i := 0 to cxGridBebinList.ColumnCount - 1 do
	begin
		cxGridBebinList.Columns[i].DataBinding.ValueType := 'String';
	end;
	cxGridBebinList.DataController.SetRecordCount(0);
	edBubinName01.Text := '';
	cbGubun12_1.ItemIndex := 0;
	edCustName05.Text := '';
	edCustTel04.Text := '';

	edBubinName02.Text := '';
	cxTextEdit15.Text := '';

	for i := 0 to CustView12_1.ColumnCount - 1 do
		CustView12_1.Columns[i].DataBinding.ValueType := 'String';
	CustView12_1.Columns[1].DataBinding.ValueType := 'Integer';

	CustView12_2.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to CustView12_2.ColumnCount - 1 do
		CustView12_2.Columns[i].DataBinding.ValueType := 'String';
	iCol := CustView12_2.GetColumnByFieldName('�������ϸ���').Index;
	CustView12_2.Columns[iCol].DataBinding.ValueType := 'Currency';

	cxViewCustom.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cxViewCustom.ColumnCount - 1 do
		cxViewCustom.Columns[i].DataBinding.ValueType := 'String';
	iCol := cxViewCustom.GetColumnByFieldName('�������ϸ���').Index;
	cxViewCustom.Columns[iCol].DataBinding.ValueType := 'Currency';

	CustView12_3.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to CustView12_3.ColumnCount - 1 do
		CustView12_3.Columns[i].DataBinding.ValueType := 'String';
	iCol := CustView12_3.GetColumnByFieldName('�������ϸ���').Index;
	CustView12_3.Columns[iCol].DataBinding.ValueType := 'Currency';
//12 B-1//

//13 B-2//
	cxDate13_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDate13_1E.Date := cxDate13_1S.Date + 1;

  cxTextEdit21.Text := '';
  cxComboBox2.ItemIndex := 0;
  cxTextEdit14.Text := '';
  cxComboBox3.ItemIndex := 0;
	chkCust13Type01.Checked := True;
	chkCust13Type01Click(chkCust13Type01);
	chkCust13Type02.Checked := False;

	for i := 0 to custview13_1.ColumnCount - 1 do
		custview13_1.Columns[i].DataBinding.ValueType := 'String';
	custview13_1.Columns[1].DataBinding.ValueType := 'Integer';

	custview13_2.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to custview13_2.ColumnCount - 1 do
		custview13_2.Columns[i].DataBinding.ValueType := 'String';
//13 B-2//

//14 B-3//
	cxDate14_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDate14_1E.Date := cxDate14_1S.Date + 1;

  chkBubinSttOrdFinish.Checked := True;
	cbBubinSttCondition.ItemIndex := 0;
  chkBubinSttTotal.Checked := True;
  chkBubinSttPayTotal.Checked := True;

	cxGBubinStt.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cxGBubinStt.ColumnCount - 1 do
	begin
		cxGBubinStt.Columns[i].DataBinding.ValueType := 'String';
	end;
	cxGBubinStt.Columns[25].DataBinding.ValueType := 'Currency';
	cxGBubinStt.Columns[26].DataBinding.ValueType := 'Currency';
	cxGBubinStt.Columns[27].DataBinding.ValueType := 'Currency';
	cxGBubinStt.Columns[28].DataBinding.ValueType := 'Currency';
	cxGBubinStt.Columns[29].DataBinding.ValueType := 'Currency';
	cxGBubinStt.Columns[30].DataBinding.ValueType := 'Currency';
	cxGBubinStt.Columns[31].DataBinding.ValueType := 'Currency';
	cxGBubinStt.Columns[32].DataBinding.ValueType := 'Currency';
	cxGBubinStt.Columns[33].DataBinding.ValueType := 'Currency';
	cxGBubinStt.Columns[34].DataBinding.ValueType := 'Currency';
	cxGBubinStt.Columns[35].DataBinding.ValueType := 'Currency';  
	cxGBubinStt.Columns[51].DataBinding.ValueType := 'Currency';
	cxGBubinStt.Columns[52].DataBinding.ValueType := 'Currency';
	cxGBubinStt.Columns[53].DataBinding.ValueType := 'Currency';
	cxGBubinStt.Columns[54].DataBinding.ValueType := 'Currency';

	cxGBubinStt.DataController.SetRecordCount(0);
	try
		cxChkTitle.Tag := 1;
    slHidn := TStringList.Create;
    ln_Env := TIniFile.Create(ENVPATHFILE);
    ln_env.ReadSection('ACCBubinList', slHidn);
    cxGBubinStt.BeginUpdate;
    for i := 0 to cxChkTitle.Properties.Items.Count - 1 do
    begin
      sTemp := cxChkTitle.Properties.Items[i].Description;
      if slHidn.IndexOf(sTemp) = -1 then
      begin
        cxChkTitle.SetItemState(i, cbsChecked);
        cxGBubinStt.Bands[i].Visible := True;
      end else
      begin
				cxChkTitle.SetItemState(i, cbsUnchecked);
        cxGBubinStt.Bands[i].Visible := False;
      end;
    end;
		FreeAndNil(slHidn);
    FreeAndNil(ln_env);
		cxGBubinStt.EndUpdate;
		cxChkTitle.Tag := 0;
		chkCust14Type01.Tag := 1;
		chkCust14Type01.Checked := False;
		chkCust14Type01.Tag := 0;
		rbCust14Type05.Checked := True;
	except

  end;
	//����뿢��
	for i := 0 to cxGrid_Angel.ColumnCount - 1 do
	begin
		case i of
			35..43 : cxGrid_Angel.Columns[i].DataBinding.ValueType := 'Currency';   
			else cxGrid_Angel.Columns[i].DataBinding.ValueType := 'String';
		end;
		
	end;
	cxGrid_Angel.Columns[0].DataBinding.ValueType := 'Integer';
	cxGrid_Angel.DataController.SetRecordCount(0);
//14 B-3//
	
//15 B-4//
	cxDate22.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
	cxDate23.Date := cxDate22.Date + 1;

	for i := 0 to cxGBubinAuth.ColumnCount - 1 do
		cxGBubinAuth.columns[i].databinding.valuetype := 'String';
//15 B-4//

//16 B-5//
	cxDate16_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
	cxDate16_1E.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) + 1;

	cxViewWithholdingTax.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cxViewWithholdingTax.ColumnCount - 1 do
	begin
		case I of
		9..13:
			begin
				cxViewWithholdingTax.Columns[i].DataBinding.ValueType := 'Currency';
			end;
		else
			cxViewWithholdingTax.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
		end;
	end;
//16 B-5//

//17 B-6//
	cb_CalMonth.Text := IntToStr(StrToInt(copy(StartDateTime('yyyymmdd'), 5, 2)))+ '��';
  lb_Year.Caption := copy(StartDateTime('yyyymmdd'), 1, 4);
  cgrid_CalMonth.Columns[0].DataBinding.ValueType := 'Integer';


  iFinishCnt    := cgrid_CalMonth.GetColumnByFieldName('�̿�Ƚ��').Index;
  iOrderCnt     := cgrid_CalMonth.GetColumnByFieldName('�����Ǽ�').Index;
  iFinishCharge := cgrid_CalMonth.GetColumnByFieldName('�̿�ݾ�').Index;
  iFinishTCharge:= cgrid_CalMonth.GetColumnByFieldName('���հ�').Index;
  iRealCharge   := cgrid_CalMonth.GetColumnByFieldName('������ݾ�').Index;
  iDeposit      := cgrid_CalMonth.GetColumnByFieldName('�Աݿ���').Index;
  iBill         := cgrid_CalMonth.GetColumnByFieldName('��꼭����').Index;
  iBCode := cgrid_CalMonth.GetColumnByFieldName('�����ڵ�').Index;
  iBrNo  := cgrid_CalMonth.GetColumnByFieldName('�����ڵ�').Index;
  iHdNo  := cgrid_CalMonth.GetColumnByFieldName('�����ڵ�').Index;

	for i := 1 to cgrid_CalMonth.ColumnCount - 1 do
		cgrid_CalMonth.Columns[i].DataBinding.ValueType := 'String';
	cgrid_CalMonth.Columns[iFinishCnt].DataBinding.ValueType      := 'Integer';
	cgrid_CalMonth.Columns[iFinishCharge].DataBinding.ValueType   := 'Currency';
	cgrid_CalMonth.Columns[iFinishCharge+1].DataBinding.ValueType := 'Currency'; //�ΰ�����
	cgrid_CalMonth.Columns[iFinishTCharge].DataBinding.ValueType  := 'Currency';
	cgrid_CalMonth.Columns[iRealCharge].DataBinding.ValueType     := 'Currency';   //������ݾ�
	cgrid_CalMonth.Columns[iOrderCnt].DataBinding.ValueType       := 'Integer';


  cgrid_UseList.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cgrid_UseList.ColumnCount - 1 do
		cgrid_UseList.Columns[i].DataBinding.ValueType := 'String';
	cgrid_UseList.Columns[13].DataBinding.ValueType := 'Currency';
	cgrid_UseList.Columns[14].DataBinding.ValueType := 'Currency';
	cgrid_UseList.Columns[15].DataBinding.ValueType := 'Currency';
	cgrid_UseList.Columns[16].DataBinding.ValueType := 'Currency';
	cgrid_UseList.Columns[17].DataBinding.ValueType := 'Currency';
	cgrid_UseList.Columns[18].DataBinding.ValueType := 'Currency';
//17 B-6//

//18 B-7//
	cxDate18_1S.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)))-1;
	cxDate18_1E.Date := cxDate18_1S.Date + 1;

	for i := 0 to cxGrid_Angel2.ColumnCount - 1 do
	begin
		case i of
			35..43 : cxGrid_Angel2.Columns[i].DataBinding.ValueType := 'Currency';   
			else cxGrid_Angel2.Columns[i].DataBinding.ValueType := 'String';
		end;
		
	end;
	cxGrid_Angel2.Columns[0].DataBinding.ValueType := 'Integer';
	cxGrid_Angel2.DataController.SetRecordCount(0);

	for i := 0 to cxGrid_Angel2_Masking.ColumnCount - 1 do
	begin
		case i of
			35..43 : cxGrid_Angel2_Masking.Columns[i].DataBinding.ValueType := 'Currency';   
			else cxGrid_Angel2_Masking.Columns[i].DataBinding.ValueType := 'String';
		end;
		
	end;
	cxGrid_Angel2_Masking.Columns[0].DataBinding.ValueType := 'Integer';
	cxGrid_Angel2_Masking.DataController.SetRecordCount(0);
	
	for i := 0 to CustView18_1.ColumnCount - 1 do
		CustView18_1.Columns[i].DataBinding.ValueType := 'String';
//	CustView18_1.Columns[0].DataBinding.ValueType := 'Boolean';
	CustView18_1.Root.TreeList.Clear;
	edt_18_1.text := '';
end;

procedure TFrm_CUT1.proc_NotBubinCust_Search;
var
  sWhere : string;
  ls_TxQry, ls_TxLoad, sQueryTemp: string; // XML File Load
  slReceive: TStringList;
  ErrCode: integer;
begin
	if CustView12_3.DataController.RecordCount > 0 then Exit;

	if cbKeynumber12.Text = '' then
  begin
    GMessagebox('��ǥ��ȣ�� ������ �ּ���.', CDMSE);
    Exit;
  end;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('���� ������ �Ҽ� ���縸 ��ȸ�Ҽ� �ֽ��ϴ�.', CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('���ΰ���(�Ϲݰ�)') then Exit;

  //////////////////////////////////////////////////////////////////////////////
  // ����>���ΰ���>�Ϲݰ�]10��/A100-B100/��ǥ��ȣ:16886618/������:��ü/����:ȫ�浿/��ȭ:011
  FExcelDownBubinNormal := Format('%s/��ǥ��ȣ:%s/������:%s%s%s',
    [
        GetSelBrInfo
			, cbKeynumber12.Text
			, cbGubun12_1.Text
      , IfThen(edCustName05.Text = '', '', '/����:' + edCustName05.Text)
      , IfThen(edCustTel04.Text = '', '', '/��ȭ:' + edCustTel04.Text)
    ]);
  //////////////////////////////////////////////////////////////////////////////

	sWhere := ' AND CU.BR_NO = ''' + cxBrNo12.Text + ''' AND CU.CB_CODE IS NULL ';

	case cbGubun12_1.ItemIndex of
    1: sWhere := sWhere + ' AND CU.CU_TYPE = ''0'' ';
    2: sWhere := sWhere + ' AND CU.CU_TYPE = ''1'' ';
    3: sWhere := sWhere + ' AND CU.CU_TYPE = ''3'' ';
  end;

  if edCustName05.Text <> '' then
    sWhere := sWhere + ' AND CU.CMP_NM LIKE ''%' + Param_Filtering(edCustName05.Text) + '%'' ';

  if edCustTel04.Text <> '' then
    sWhere := sWhere +
      ' AND CU.CU_SEQ IN (SELECT CU_SEQ FROM CDMS_CUSTOMER_TEL WHERE CU_TEL LIKE ''' +
      StringReplace(Param_Filtering(edCustTel04.Text), '-', '', [rfReplaceAll]) + '%'') ';

	sWhere := sWhere + ' AND KEY_NUMBER = ''' + cbKeynumber12.Text + '''';

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_CUST_NOT_BUBIN_SEARCH, sQueryTemp);
	ls_TxQry := Format(sQueryTemp, [cxHdNo12.Text, sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '15', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '500', [rfReplaceAll]);

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

procedure TFrm_CUT1.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_ClientKey, ClientKey, ls_Msg_Err, sEndDate, sTemp : string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd : TStringList;
	i, j, k, iRow, iIdx, iCnt : Integer;
	Node: TcxTreeListNode;
  bCheck: Boolean;
	ls_rxxml: WideString;
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


				case StrToIntDef(ls_ClientKey, 1) of
				13:
					begin
						CustView12_1.BeginUpdate;
						iCnt := 0;
						try
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
								ls_Rcrd := TSTringList.Create;
								try
									for i := 0 to lst_Result.length - 1 do
									begin
										Application.ProcessMessages;
										GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
										case length(ls_Rcrd[5]) of
											5:
												begin
													Node := CustView12_1.Root.AddChild;
												end;
											8:
												begin
													bCheck := False;
													for iIdx := 0 to
														CustView12_1.Root.Count - 1 do
													begin
														if CustView12_1.Root.Items[iIdx].Values[7] =
															copy(ls_Rcrd[5], 1, 5) then
														begin
															Node := CustView12_1.Root.Items[iIdx].AddChild;
															bCheck := True;
															break;
														end;
													end;
													if not bCheck then
														Node := CustView12_1.Root.AddChild;
												end;
											11:
												begin
													bCheck := False;
													for k := 0 to CustView12_1.Root.Count - 1 do
													begin
														if CustView12_1.Root.Items[k].HasChildren then
														begin
															for iIdx := 0 to CustView12_1.Root.Items[k].Count - 1 do
															begin
																if CustView12_1.Root.Items[k].Items[iIdx].Values[7] = copy(ls_Rcrd[5], 1, 8) then
																begin
																	Node := CustView12_1.Root.Items[k].Items[iIdx].AddChild;
																	bCheck := True;
																	break;
																end;
															end;
														end;
													end;
													if not bCheck then
														Node := CustView12_1.Root.AddChild;
												end;
										end;
										iCnt := iCnt + 1;
										//  ���θ�, �μ���, ����ڸ�, ����ó, �����ڵ�, ���Ÿ��,
										// Node := Node.AddChild;
										Node.Values[0] := ''; // IntToStr(i+1);
										Node.Values[1] := IntToStr(iCnt);
										Node.Values[2] := ls_Rcrd[0]; // ���θ�
										Node.Values[3] := ls_Rcrd[1]; // �μ���
										Node.Values[4] := ls_Rcrd[4]; // ���Ÿ��
										Node.Values[5] := ls_Rcrd[2]; // �����
										Node.Values[6] := ls_Rcrd[3]; // ����ó
										Node.Values[7] := ls_Rcrd[5]; // �����ڵ�
										Node.Values[8] := ls_Rcrd[6]; // ������
										Node.Values[9] := ls_Rcrd[7]; // �����
										Node.Values[10] := ls_Rcrd[8]; // ������
									end;
								finally
									ls_Rcrd.Free;
								end;
								end	else
								begin
									GMessagebox('�˻��� ������ �����ϴ�.', CDMSE);
								end;
							end;
						finally
							CustView12_1.EndUpdate;
							CustView12_1.FullExpand;
							frm_Main.sbar_Message.Panels[4].Text := '';
						end;
					end;
				14:
					begin
						CustView12_2.BeginUpdate;
						try
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
										GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
										iRow := CustView12_2.DataController.AppendRecord;
										CustView12_2.DataController.Values[iRow, 0] := iRow + 1;
										CustView12_2.DataController.Values[iRow, 1] := ls_rcrd[2];
										CustView12_2.DataController.Values[iRow, 2] := ls_rcrd[3];
										CustView12_2.DataController.Values[iRow, 3] := ls_rcrd[4];
										CustView12_2.DataController.Values[iRow, 4] := ls_rcrd[13];        // ��å
										CustView12_2.DataController.Values[iRow, 5] := strtocall(ls_rcrd[5]);
										CustView12_2.DataController.Values[iRow, 6] := ls_rcrd[6];
										CustView12_2.DataController.Values[iRow, 7] := ls_rcrd[7];
										if StrToIntDef(ls_Rcrd[8], 0) = 0 then
											ls_Rcrd[8] := '0';
										CustView12_2.DataController.Values[iRow, 8] := ls_rcrd[8];
										sEndDate := ls_rcrd[9];
										if Trim(sEndDate) <> '' then
											CustView12_2.DataController.Values[iRow, 9] := copy(sEndDate, 1, 4) +
												'-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
										else
											CustView12_2.DataController.Values[iRow, 9] := '';
										CustView12_2.DataController.Values[iRow, 10] := ls_rcrd[10];
										CustView12_2.DataController.Values[iRow, 11] := ls_rcrd[11];
										CustView12_2.DataController.Values[iRow, 12] := ls_rcrd[12];
										CustView12_2.DataController.Values[iRow, 13] := ls_rcrd[0];
										CustView12_2.DataController.Values[iRow, 14] := strtocall(ls_rcrd[1]);
									end;
								finally
									ls_Rcrd.Free;
								end;
								end else
								begin
//								GMessagebox('�˻��� ������ �����ϴ�.', CDMSE); //���ʿ���� 20210727 KHS ����� ����
								end;
							end;
						finally
							CustView12_2.EndUpdate;
							frm_Main.sbar_Message.Panels[4].Text := '';
						end;
						if gbCustView12_1_SetFocus then 
						begin
							gbCustView12_1_SetFocus := False;
							CustView12_1.SetFocus;
						end;
					end;
				15:
					begin
						CustView12_3.BeginUpdate;
						try
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
										GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
										iRow := CustView12_3.DataController.AppendRecord;
										CustView12_3.DataController.Values[iRow, 0] := iRow + 1;
										CustView12_3.DataController.Values[iRow, 1] := ls_rcrd[2];
										CustView12_3.DataController.Values[iRow, 2] := ls_rcrd[11];       // ��å
										CustView12_3.DataController.Values[iRow, 3] := strtocall(ls_rcrd[3]);
										CustView12_3.DataController.Values[iRow, 4] := ls_rcrd[4];
										CustView12_3.DataController.Values[iRow, 5] := ls_rcrd[5];
										CustView12_3.DataController.Values[iRow, 6] := ls_rcrd[6];
										if StrToIntDef(ls_Rcrd[7], 0) = 0 then
											ls_Rcrd[7] := '0';
										CustView12_3.DataController.Values[iRow, 7] := ls_rcrd[7];
										sEndDate := ls_rcrd[8];
										if Trim(sEndDate) <> '' then
											CustView12_3.DataController.Values[iRow, 8] := copy(sEndDate, 1, 4) +
												'-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
										else
											CustView12_3.DataController.Values[iRow, 8] := '';
										CustView12_3.DataController.Values[iRow, 9] := ls_rcrd[9];
										CustView12_3.DataController.Values[iRow, 10] := ls_rcrd[10];
										CustView12_3.DataController.Values[iRow, 11] := ls_rcrd[0];
										CustView12_3.DataController.Values[iRow, 12] := strtocall(ls_rcrd[1]);
									end;
								finally
									ls_Rcrd.Free;
								end;
								end else
								begin
//								GMessagebox('�˻��� ������ �����ϴ�.', CDMSE); //���ʿ���� 20210727 KHS ����� ����
								end;
							end;
						finally
							CustView12_3.EndUpdate;
							frm_Main.sbar_Message.Panels[4].Text := '';
						end;
					end;
				16:
					begin
						CustView13_1.BeginUpdate;
						iCnt := 0;

						try
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
										GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
										case length(ls_Rcrd[5]) of
											5:
												begin
													Node := CustView13_1.Root.AddChild;
												end;
											8:
												begin
													bCheck := False;
													for iIdx := 0 to CustView13_1.Root.Count - 1 do
													begin
														if CustView13_1.Root.Items[iIdx].Values[6] = copy(ls_Rcrd[5], 1, 5) then
														begin
															Node := CustView13_1.Root.Items[iIdx].AddChild;
															bCheck := True;
															break;
														end;
													end;
													if not bCheck then
														Node := CustView13_1.Root.AddChild;
												end;
											11:
												begin
													bCheck := False;
													for k := 0 to CustView13_1.Root.Count - 1 do
													begin
														if CustView13_1.Root.Items[k].HasChildren then
														begin
															for iIdx := 0 to CustView13_1.Root.Items[k].Count - 1 do
															begin
																if CustView13_1.Root.Items[k].Items[iIdx].Values[6] = copy(ls_Rcrd[5], 1, 8) then
																begin
																	Node := CustView13_1.Root.Items[k].Items[iIdx].AddChild;
																	bCheck := True;
																	break;
																end;
															end;
														end;
													end;
													if not bCheck then
														Node := CustView13_1.Root.AddChild;
												end;
										end;
										iCnt := iCnt + 1;
										Node.Values[0] := '';
										Node.Values[1] := IntToStr(iCnt);
										Node.Values[2] := ls_Rcrd[0];
										Node.Values[3] := ls_Rcrd[1];
										Node.Values[4] := ls_Rcrd[2];
										Node.Values[5] := ls_Rcrd[3];
										Node.Values[6] := ls_Rcrd[5];
									end;
								finally
									ls_Rcrd.Free;
								end;
								end else
								begin
									GMessagebox('�˻��� ������ �����ϴ�.', CDMSE);
								end;
							end;
						finally
							CustView13_1.EndUpdate;
							CustView13_1.FullExpand;
							frm_Main.sbar_Message.Panels[4].Text := '';
						end;
					end;
				17:
					begin
						CustView13_2.BeginUpdate;
						try
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
										GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
										ls_Rcrd.Insert(0, 'n');
										iRow := CustView13_2.DataController.AppendRecord;
										// 1 Record �߰�
										ls_Rcrd.Insert(0, IntToStr(iRow + 1));
										sTemp := ls_Rcrd[11];
										if sTemp <> '' then
											ls_Rcrd[11] := Copy(sTemp, 1, 10) + ' ' + Copy(sTemp, 11, 8);
										sTemp := ls_Rcrd[21];
										if sTemp <> '' then
											ls_Rcrd[21] := Copy(sTemp, 1, 10) + ' ' + Copy(sTemp, 11, 8);
										sTemp := ls_Rcrd[22];
										if StrToFloatDef(sTemp, -9) = -9 then
											ls_Rcrd[22] := '0.0';
										CustView13_2.DataController.Values[iRow, 0] := ls_Rcrd[0];
										CustView13_2.DataController.Values[iRow, 1] := ls_Rcrd[1];
										CustView13_2.DataController.Values[iRow, 2] := ls_Rcrd[2];
										CustView13_2.DataController.Values[iRow, 3] := ls_Rcrd[3];
										CustView13_2.DataController.Values[iRow, 4] := ls_Rcrd[4];
										CustView13_2.DataController.Values[iRow, 5] := ls_Rcrd[5];
										CustView13_2.DataController.Values[iRow, 6] := ls_Rcrd[6];
										CustView13_2.DataController.Values[iRow, 7] := ls_Rcrd[7];
										CustView13_2.DataController.Values[iRow, 8] := ls_Rcrd[8];
										CustView13_2.DataController.Values[iRow, 9] := ls_Rcrd[9];
										CustView13_2.DataController.Values[iRow, 10] := ls_Rcrd[44];  // ��å
										CustView13_2.DataController.Values[iRow, 11] := strtocall(ls_Rcrd[10]);
										CustView13_2.DataController.Values[iRow, 12] := ls_Rcrd[11];
										CustView13_2.DataController.Values[iRow, 13] := ls_Rcrd[12];
										CustView13_2.DataController.Values[iRow, 14] := ls_Rcrd[13];
										CustView13_2.DataController.Values[iRow, 15] := ls_Rcrd[14];
										CustView13_2.DataController.Values[iRow, 16] := ls_Rcrd[15];
										CustView13_2.DataController.Values[iRow, 17] := ls_Rcrd[16];
										CustView13_2.DataController.Values[iRow, 18] := ls_Rcrd[17];
										CustView13_2.DataController.Values[iRow, 19] := ls_Rcrd[18];
										CustView13_2.DataController.Values[iRow, 20] := ls_Rcrd[19];
										CustView13_2.DataController.Values[iRow, 21] := ls_Rcrd[20];
										CustView13_2.DataController.Values[iRow, 22] := ls_Rcrd[21];
										CustView13_2.DataController.Values[iRow, 23] := ls_Rcrd[22];
										CustView13_2.DataController.Values[iRow, 24] := ls_Rcrd[23];
										CustView13_2.DataController.Values[iRow, 25] := ls_Rcrd[24];
										CustView13_2.DataController.Values[iRow, 26] := ls_Rcrd[25];
										CustView13_2.DataController.Values[iRow, 27] := ls_Rcrd[26];
										CustView13_2.DataController.Values[iRow, 28] := ls_Rcrd[27];
										CustView13_2.DataController.Values[iRow, 29] := ls_Rcrd[28];
										CustView13_2.DataController.Values[iRow, 30] := ls_Rcrd[29];
										CustView13_2.DataController.Values[iRow, 31] := ls_Rcrd[30];
										CustView13_2.DataController.Values[iRow, 32] := ls_Rcrd[31];
										CustView13_2.DataController.Values[iRow, 33] := ls_Rcrd[32];
										CustView13_2.DataController.Values[iRow, 34] := ls_Rcrd[33];
										CustView13_2.DataController.Values[iRow, 35] := ls_Rcrd[34];
										CustView13_2.DataController.Values[iRow, 36] := ls_Rcrd[35];
										CustView13_2.DataController.Values[iRow, 37] := ls_Rcrd[36];
										CustView13_2.DataController.Values[iRow, 38] := ls_Rcrd[37];
										CustView13_2.DataController.Values[iRow, 39] := ls_Rcrd[38];
										CustView13_2.DataController.Values[iRow, 40] := ls_Rcrd[39];
										CustView13_2.DataController.Values[iRow, 41] := ls_Rcrd[40];
										CustView13_2.DataController.Values[iRow, 42] := ls_Rcrd[41];
										CustView13_2.DataController.Values[iRow, 43] := ls_Rcrd[42];
										CustView13_2.DataController.Values[iRow, 44] := ls_Rcrd[43];
									end;
								finally
									ls_Rcrd.Free;
								end;
								end else
								begin
									GMessagebox('�˻��� ������ �����ϴ�.', CDMSE);
								end;
							end;
						finally
							btn_13_2.Enabled := True;
							CustView13_2.EndUpdate;
							frm_Main.sbar_Message.Panels[4].Text := '';
						end;
					end;
				 20:
					begin
						//�������� ��û
						cxGBubinAuth.BeginUpdate;
						cxGBubinAuth.DataController.SetRecordCount(0);

						try
						Frm_Flash.cxPBar1.Properties.Max := slList.Count;
						Frm_Flash.cxPBar1.Position := 0;
						for j := 0 to slList.Count - 1 do
						begin
							Frm_Flash.cxPBar1.Position := j + 1;
							Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + '/' + IntToStr(slList.Count);
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
										GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
										iRow := cxGBubinAuth.DataController.AppendRecord;

										cxGBubinAuth.DataController.Values[iRow,0] := ls_Rcrd[0];   //�����
										cxGBubinAuth.DataController.Values[iRow,1] := ls_Rcrd[1];   //��ǥ��ȣ
										cxGBubinAuth.DataController.Values[iRow,2] := ls_Rcrd[2];   //����
										cxGBubinAuth.DataController.Values[iRow,3] := ls_Rcrd[3];   //����ȣ
										cxGBubinAuth.DataController.Values[iRow,4] := ls_Rcrd[20];  //��������

										//�����ð�
										if ls_Rcrd[21] <> '' then
											cxGBubinAuth.DataController.Values[iRow, 5] := copy(ls_Rcrd[21],1,10) + ' ' + copy(ls_Rcrd[21],11,18)
										else
											cxGBubinAuth.DataController.Values[iRow,5] := ls_Rcrd[21];

										//�����ð�
										if ls_Rcrd[4] <> '' then
											cxGBubinAuth.DataController.Values[iRow, 6] := copy(ls_Rcrd[4],1,10) + ' ' + copy(ls_Rcrd[4],11,18)
										else
											cxGBubinAuth.DataController.Values[iRow,6] := ls_Rcrd[21];

										//�����ð�
										if ls_Rcrd[5] <> '' then
											cxGBubinAuth.DataController.Values[iRow, 7] := copy(ls_Rcrd[5],1,10) + ' ' + copy(ls_Rcrd[5],11,18)
										else
											cxGBubinAuth.DataController.Values[iRow,7] := ls_Rcrd[5];

										//�Ϸ�ð�
										if ls_Rcrd[6] <> '' then
											cxGBubinAuth.DataController.Values[iRow, 8] := copy(ls_Rcrd[6],1,10) + ' ' + copy(ls_Rcrd[6],11,18)
										else
											cxGBubinAuth.DataController.Values[iRow,8] := ls_Rcrd[6];

										cxGBubinAuth.DataController.Values[iRow,9] := ls_Rcrd[7] + ' ' + ls_Rcrd[8] + ' ' + ls_Rcrd[9] + ' ' + ls_Rcrd[10];    //�����
										cxGBubinAuth.DataController.Values[iRow,10] := ls_Rcrd[11] + ' ' + ls_Rcrd[12] + ' ' + ls_Rcrd[13] + ' ' + ls_Rcrd[14]; //������
										cxGBubinAuth.DataController.Values[iRow,11] := ls_Rcrd[15]; //����
										cxGBubinAuth.DataController.Values[iRow,12] := ls_Rcrd[16]; //���
										cxGBubinAuth.DataController.Values[iRow,13] := ls_Rcrd[17]; //������Ҽ�
										cxGBubinAuth.DataController.Values[iRow,14] := ls_Rcrd[18]; //����
										cxGBubinAuth.DataController.Values[iRow,15] := ls_Rcrd[19]; //�����
										cxGBubinAuth.DataController.Values[iRow,16] := ls_Rcrd[22]; //������ȣ
									end;
								finally
									ls_Rcrd.Free;
								end;
								end else
								begin
									GMessagebox('�˻��� ������ �����ϴ�.', CDMSE);
								end;
							end;
						finally
							cxGBubinAuth.EndUpdate;
							frm_Main.sbar_Message.Panels[4].Text := '';
						end;
					end;

				21:
					begin
						//�������� ����
						cxGBubinAuth.BeginUpdate;
						cxGBubinAuth.DataController.SetRecordCount(0);
						try
						Frm_Flash.cxPBar1.Properties.Max := slList.Count;
						Frm_Flash.cxPBar1.Position := 0;
						for j := 0 to slList.Count - 1 do
						begin
							Frm_Flash.cxPBar1.Position := j + 1;
							Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + '/' + IntToStr(slList.Count);
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
										GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
										iRow := cxGBubinAuth.DataController.AppendRecord;

										cxGBubinAuth.DataController.Values[iRow,0] := ls_Rcrd[0];     //�����
										cxGBubinAuth.DataController.Values[iRow,1] := ls_Rcrd[1];     //��ǥ��ȣ
										cxGBubinAuth.DataController.Values[iRow,2] := ls_Rcrd[2];     //����
										cxGBubinAuth.DataController.Values[iRow,3] := ls_Rcrd[3];     //����ȣ
										cxGBubinAuth.DataController.Values[iRow,4] := ls_Rcrd[14];    //��������

										//�����ð�
										if ls_Rcrd[15] <> '' then
											cxGBubinAuth.DataController.Values[iRow, 5] := copy(ls_Rcrd[15],1,10) + ' ' + copy(ls_Rcrd[15],11,18)
										else
											cxGBubinAuth.DataController.Values[iRow,5] := ls_Rcrd[15];

										//�����ð�
										if ls_Rcrd[4] <> '' then
											cxGBubinAuth.DataController.Values[iRow, 6] := copy(ls_Rcrd[4],1,10) + ' ' + copy(ls_Rcrd[4],11,18)
										else
											cxGBubinAuth.DataController.Values[iRow,6] := ls_Rcrd[4];

										//�����ð�
										if ls_Rcrd[5] <> '' then
											cxGBubinAuth.DataController.Values[iRow, 7] := copy(ls_Rcrd[5],1,10) + ' ' + copy(ls_Rcrd[5],11,18)
										else
											cxGBubinAuth.DataController.Values[iRow,7] := ls_Rcrd[5];

										//�Ϸ�ð�
										if ls_Rcrd[6] <> '' then
											cxGBubinAuth.DataController.Values[iRow, 8] := copy(ls_Rcrd[6],1,10) + ' ' + copy(ls_Rcrd[6],11,18)
										else
											cxGBubinAuth.DataController.Values[iRow,8] := ls_Rcrd[6];

										cxGBubinAuth.DataController.Values[iRow,9] := ls_Rcrd[7];     //�����
										cxGBubinAuth.DataController.Values[iRow,10] := ls_Rcrd[8];    //������
										cxGBubinAuth.DataController.Values[iRow,11] := ls_Rcrd[9];    //����
										cxGBubinAuth.DataController.Values[iRow,12] := ls_Rcrd[10];   //���
										cxGBubinAuth.DataController.Values[iRow,13] := ls_Rcrd[11];   //������Ҽ�
										cxGBubinAuth.DataController.Values[iRow,14] := ls_Rcrd[12];   //����
										cxGBubinAuth.DataController.Values[iRow,15] := ls_Rcrd[13];   //�����
										cxGBubinAuth.DataController.Values[iRow,16] := ls_Rcrd[16];   //������ȣ
									end;
								finally
									ls_Rcrd.Free;
								end;
								end else
								begin
									GMessagebox('�˻��� ������ �����ϴ�.', CDMSE);
								end;
							end;
						finally
							cxGBubinAuth.EndUpdate;
							frm_Main.sbar_Message.Panels[4].Text := '';
						end;
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
    on e: exception do
    begin
      cxPageControl1.Enabled := True;
      Screen.Cursor := crDefault;
      Assert(False, E.Message);
    end;
	end;
end;

procedure TFrm_CUT1.proc_SaveBubinDate(AYyMm, AHdNo, ABrNo, ABubinCode, ADeposit,
  ABill, AFinishCnt, AFinishCharge, AOrderCnt: string);
var
  ls_TxLoad: string;
  ls_rxxml: string;
  xdom: MSDomDocument;
  ErrCode : Integer;
  ls_MSG_Err, rv_str: string;
  slRcvList : TStringList;
begin
  Try
    if ABubinCode = '' then Exit;
    Screen.Cursor := crHourGlass;
    ls_TxLoad := GTx_UnitXmlLoad('ACC12020.xml');
    slRcvList := TStringList.Create;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'       , AYyMm);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo'        , AHdNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo'        , ABrNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strCbCode'      , ABubinCode);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPaymentYn'   , ADeposit);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBillYn'      , ABill);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCnt'   , AFinishCnt);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCharge', AFinishCharge);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strOrderCnt'    , AOrderCnt);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString'   , GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := CoMSDomDocument.Create;
          try
						xdom.loadXML(ls_rxxml);
            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' <> ls_MSG_Err) then
            begin
              GMessagebox('���� �� ��ȸ�� �����߻� : '+ls_Msg_Err, CDMSE);
              Exit;
            end;
          finally
            xdom := Nil;
            slRcvList.Free;
            Screen.Cursor := crDefault;
          end;
        end;
      end;
    except
      slRcvList.Free;
      Screen.Cursor := crDefault;
    end;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_CUT1.proc_search_bubin(ACbCode, ABrNo : string);
var
	XmlData, Param, ErrMsg : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd : TStringList;
	i, j, ErrCode : Integer;
	sDate: string;
	DateTime: TDateTime;
	sParam : string;
begin
	try
		gsCustViewParam := '';
		edCbCode.text := '';

		lb_Date01.caption := '';
		lb_Date02.caption := '';
		lb_UseCnt01.caption := '';
		
		edName01.Text := '';
		edName03.Text := '';
		edtCustStateMemo.Text := '';
		edtCustMemo.Text := '';

		cb_Contract2.ItemIndex := -1;
		dtRegDate.Text := '';
		dtFinDate.Text := '';
	
		edWebID.Text := '';
		edWebPW.Text := '';
	
		edCbCode.Text := ACbCode;
		pnl_makeId.visible := false;
		Param := '';
		Param := ACbCode + '��' + ABrNo;
		if not RequestBase(GetSel06('INFO_CUST_BGROUP', 'MNG_BGROUP.INFO_CUST_BGROUP', '10', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('�������� ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
    try
		  xdom.loadXML(XmlData);
		  if not xdom.loadXML(XmlData) then
		  begin
        Exit;
		  end;
		  lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
		  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
		  begin
		  	lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  	ls_Rcrd := TStringList.Create;
		  	try
					edName01.enabled := True;
					edName03.enabled := True;
					edtCustStateMemo.enabled := True;
					edtCustMemo.enabled := True;

					cb_Contract2.enabled := True;
					dtRegDate.enabled := True;
					dtFinDate.enabled := True;
					pnl_Vat.enabled := True;
					pnl_Bill.enabled := True;

					edWebPW.enabled := True;

					for I := 0 to lst_Result.length - 1 do
		  		begin
		  			GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
///////////////����
            sDate := ls_Rcrd[9];
            if sDate <> '' then
            begin
              sDate := StringReplace(sDate, ':', '', [rfReplaceAll]);
              sDate := StringReplace(sDate, '-', '', [rfReplaceAll]);
              sDate := StringReplace(sDate, ' ', '', [rfReplaceAll]);
              sDate := copy(sDate, 1, 4) + '-' + Copy(sDate, 5, 2) + '-' +
                Copy(sDate, 7, 2);
							lb_Date01.caption := sDate;
						end{ else
							lb_Date01.caption := FormatDateTime('yyyy-mm-dd', now)};

						sDate := ls_Rcrd[11];
            if sDate <> '' then
						begin
              sDate := StringReplace(sDate, ':', '', [rfReplaceAll]);
              sDate := StringReplace(sDate, '-', '', [rfReplaceAll]);
              sDate := StringReplace(sDate, ' ', '', [rfReplaceAll]);
              sDate := copy(sDate, 1, 4) + '-' + Copy(sDate, 5, 2) + '-' +
                Copy(sDate, 7, 2);
							lb_Date02.caption := sDate;
						end{ else
							lb_Date02.caption := FormatDateTime('yyyy-mm-dd', now)};
						lb_UseCnt01.caption := ls_Rcrd[12];


						edName01.Text := ls_Rcrd[0];
						edName03.Text := ls_Rcrd[1];

						edtCustStateMemo.Text := ls_Rcrd[35];
						edtCustMemo.Text := ls_Rcrd[23];

						if TryStrToDate(ls_Rcrd[21], DateTime) then
							dtRegDate.Text := ls_Rcrd[21];
						if TryStrToDate(ls_Rcrd[22], DateTime) then
							dtFinDate.Text := ls_Rcrd[22];

						cb_Contract2.ItemIndex := StrToIntDef(ls_Rcrd[34], 0);
						
            if ls_Rcrd[19] = 'y' then
              rb_SurtaxY.Checked := True
            else
              rb_SurtaxN.Checked := True;

            rbList01.Tag := 1;
            if ls_Rcrd[6] = '0' then
              rbList01.Checked := True
            else if ls_Rcrd[6] = '2' then
              rbPayMethodPost.Checked := True
            else
              rbList02.Checked := True;
            rbList01.Tag := 0;

						edWebID.Text := ls_Rcrd[7];

						if edWebID.Text = '' then
						begin
							edWebID.Enabled := True;
							btn_WebId.Enabled := True;
							btn_WebId.caption := '���̵�üũ';
							btn_WebId.Tag := 99;
						end else
						begin
							edWebID.Enabled := False;
							btn_WebId.Enabled := False;
							btn_WebId.caption := '���̵�üũ';
							btn_WebId.Tag := 0;
						end;
						edWebPW.Text := ls_Rcrd[8];

						//41 ī�����������Ÿ��{0:������, 1:�븮���,2:����Աݾ�,3:ī������ݾ�}
						//42 ī����������ᰪ
						if ls_Rcrd[41] = '0' then cxLimitCardVat.ItemIndex := 0 else
						if ( ls_Rcrd[41] = '1' ) And ( ls_Rcrd[42] = '2' )  then cxLimitCardVat.ItemIndex := 1 else
						if ( ls_Rcrd[41] = '1' ) And ( ls_Rcrd[42] = '3' )  then cxLimitCardVat.ItemIndex := 2 else
						if ( ls_Rcrd[41] = '1' ) And ( ls_Rcrd[42] = '10' ) then cxLimitCardVat.ItemIndex := 3 else
						if ( ls_Rcrd[41] = '2' ) And ( ls_Rcrd[42] = '10' ) then cxLimitCardVat.ItemIndex := 4
																																else cxLimitCardVat.ItemIndex := 0;
						//������ ���� ��ȸ���� ����
						Param := '1';                                            // 0
						Param := Param + '��' + '0';                              // 1
						Param := Param + '��' + edCbCode.Text;                    // 2
						Param := Param + '��' + '<���θ�]'; //���� �� ���氡��      // 3
						Param := Param + '��' + '<�μ���]'; //���� �� ���氡��      // 4
						Param := Param + '��' + ls_Rcrd[2];                       // 5
						Param := Param + '��' + ls_Rcrd[3];                       // 6
						Param := Param + '��' + ls_Rcrd[4];                       // 7
						Param := Param + '��' + ls_Rcrd[5];                       // 8
						Param := Param + '��' + '<������ҹ��]';                 // 9    rbList02.Checked
						Param := Param + '��' + '<���̵�]'; //���� �� ���氡��      //10
						Param := Param + '��' + '<��й�ȣ]'; //���� �� ���氡��    //11
						Param := Param + '��' + En_Coding(GT_USERIF.ID);          //12
						Param := Param + '��' + ls_Rcrd[13];                      //13
						Param := Param + '��' + ls_Rcrd[14];                      //14
						Param := Param + '��' + ls_Rcrd[10];                      //15
						Param := Param + '��' + 'y';                              //16
						Param := Param + '��' + ls_Rcrd[16];                      //17  rbList05
						Param := Param + '��' + ls_Rcrd[17];                      //18
						Param := Param + '��' + ls_Rcrd[18];                      //19
						Param := Param + '��' + '<�ΰ�������]';                   //20  rb_SurtaxY
						Param := Param + '��' + ls_Rcrd[20];                      //21
						Param := Param + '��' + '<�����]';                       //22  dtRegDate.Text
						Param := Param + '��' + '<���������]';                   //23  dtFinDate.Text
						Param := Param + '��' + '<���ΰ��޸�]';                 //24  edtCustMemo
						Param := Param + '��' + ls_Rcrd[24];                      //25  cbbTaxDate
						Param := Param + '��' + ls_Rcrd[25];                      //26  edtTaxMName
						Param := Param + '��' + ls_Rcrd[26];                      //27  edtTaxOwner
						Param := Param + '��' + ls_Rcrd[27];                      //28  edtTaxSNo
						Param := Param + '��' + ls_Rcrd[28];                      //29  edtTaxUpTae
						Param := Param + '��' + ls_Rcrd[29];                      //30  edtTaxUpJong
						Param := Param + '��' + ls_Rcrd[30];                      //31  edtTaxAddr
						Param := Param + '��' + ls_Rcrd[31];                      //32  cb_CalFrom
						Param := Param + '��' + ls_Rcrd[32];                      //33  cb_CalTo
						Param := Param + '��' + ls_Rcrd[33];                      //34  rb_TaxBill
						Param := Param + '��' + '<��࿩��]';                     //35  cb_Contract
						Param := Param + '��' + '<���λ��¸޸�]';                 //36  edtCustStateMemo
						Param := Param + '��' + ls_Rcrd[36];                      //37  chkLimitUse
						Param := Param + '��' + ls_Rcrd[37];                      //38  cbLimitBaseDay
						Param := Param + '��' + ls_Rcrd[38];                      //39  cedtLimitCount
						Param := Param + '��' + ls_Rcrd[39];                      //40  cedtLimitAmt
						Param := Param + '��' + ls_Rcrd[40];                      //41  chkLimitOver
						if Pos('�븮', cxLimitCardVat.Text) > 0 then Param := Param + '��' + '1' else                  //43 ī�����������Ÿ��{0:������, 1:�븮���,2:����Աݾ�,3:ī������ݾ�}
						if Pos('���', cxLimitCardVat.Text) > 0 then Param := Param + '��' + '2' else
						if Pos('ī��', cxLimitCardVat.Text) > 0 then Param := Param + '��' + '3'
																										else Param := Param + '��' + '0';

						Param := Param + '��' + IntToStr(StrToIntRltDef(cxLimitCardVat.Text));            //44 ī����������ᰪ
						gsCustViewParam := Param;
						
{                                          
						edName01.Text := ls_Rcrd[0];              //3
						edName03.Text := ls_Rcrd[1];              //4
						edText01.Text := ls_Rcrd[2];              //5
						edText02.Text := strtocall(ls_Rcrd[3]);   //6
						edText03.Text := ls_Rcrd[4];              //7
						edText04.Text := ls_Rcrd[5];              //8
						rbList01.Tag := 1;
						if ls_Rcrd[6] = '0' then                  //9
							rbList01.Checked := True
            else if ls_Rcrd[6] = '2' then
              rbPayMethodPost.Checked := True
            else
							rbList02.Checked := True;
						rbList01.Tag := 0;                        
						edWebID.Text := ls_Rcrd[7];              //10
						edWebPW.Text := ls_Rcrd[8];             //11 
//						En_Coding(GT_USERIF.ID);                 //12
//						edHdNo.Text := ls_Rcrd[13];                             //13
//						edBrNo.Text := ls_Rcrd[14];                             //14
//						edKeyNum.Text := ls_Rcrd[10];                           //15
//            'y'                                                     //16
//            ls_Rcrd[16]                                            //17	rbList05.Checked := True
//						edName02.Text := ls_Rcrd[17];                          //18
//						edName04.Text := ls_Rcrd[18];                          //19
//            ls_Rcrd[19] = 'y' then                                 //20	rb_SurtaxY.Checked := True
//						edtEmail.Text := ls_Rcrd[20];                          //21
//            ls_Rcrd[21], DateTime) then                            //22 dtRegDate.Text
//            ls_Rcrd[22], DateTime) then                            //23	dtFinDate.Text
//						edtCustMemo.Text := ls_Rcrd[23];                       //24
//            ls_Rcrd[24] then                                       //25	cbbTaxDate.Text 							
//						edtTaxMName.Text := ls_Rcrd[25];                       //26
//						edtTaxOwner.Text := ls_Rcrd[26];                       //27
//						edtTaxSNo.Text := ls_Rcrd[27];                         //28
//						edtTaxUpTae.Text := ls_Rcrd[28];                       //29
//						edtTaxUpJong.Text := ls_Rcrd[29];                      //30
//						edtTaxAddr.Text := ls_Rcrd[30];                        //31
//						cb_CalFrom.ItemIndex := StrToIntDef(ls_Rcrd[31],0)     //32
//						cb_CalTo.ItemIndex   := StrToIntDef(ls_Rcrd[32],0)     //33
//            ls_Rcrd[33], 0)                                        //34 rb_TaxBill.Checked
//            cb_Contract.ItemIndex := StrToIntDef(ls_Rcrd[34], 0);  //35	cb_Contract.itemindex
//            edtCustStateMemo.Text := ls_Rcrd[35];                  //36
//							if ls_Rcrd[36] = 'y' then chkLimitUse.Checked := True //37
//							cbLimitBaseDay.Text := ls_Rcrd[37];                   //38
//							cedtLimitCount.Value := StrToFloatDef(ls_Rcrd[38], 0); //39
//							cedtLimitAmt.Value   := StrToFloatDef(ls_Rcrd[39], 0); //40
//							if ls_Rcrd[40] = 'y' then chkLimitOver.Checked := True  //41
//           Pos('�븮', cxLimitCardVat.Text) > 0 then Param := Param + '��' + '1' else  //42
//       		 Pos('���', cxLimitCardVat.Text) > 0 then Param := Param + '��' + '2' else
//		       Pos('ī��', cxLimitCardVat.Text) > 0 then Param := Param + '��' + '3'
//              if ls_Rcrd[41] = '0' then cxLimitCardVat.ItemIndex := 0 //42   }

{	if Pos('�븮', cxLimitCardVat.Text) > 0 then Param := Param + '��' + '1' else                  //43 ī�����������Ÿ��(0:������, 1:�븮���,2:����Աݾ�,3:ī������ݾ�)
	if Pos('���', cxLimitCardVat.Text) > 0 then Param := Param + '��' + '2' else
	if Pos('ī��', cxLimitCardVat.Text) > 0 then Param := Param + '��' + '3'
																					else Param := Param + '��' + '0';

	Param := Param + '��' + IntToStr(StrToIntRltDef(cxLimitCardVat.Text));            //44 ī����������ᰪ  }





					end;
		  	finally
		  		ls_Rcrd.Free;
		  		Screen.Cursor := crDefault;
		  		Frm_Flash.Hide;
		  	end;
		  end;
    finally
  		Screen.Cursor := crDefault;
      xdom := Nil;
    end;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_CUT1.proc_search_bubin_id;
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
  rv_str : string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;

	xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err : string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
begin
	//2008-09-02 �ۼ��� : ��â�� (SELECT �������� �Է��� ���̵� ��ϵǾ��ִ��� üũ�Ѵ�.)
  //CDMS_CUST_BGROUP ���̺� CB_WEB_ID �÷� ��ȸ
	try
		ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BUBIN_ID_SEARCH, sQueryTemp);
		ls_TxQry := Format(sQueryTemp, [edWebID{edt_WebIDFirst}.text]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BUBINIDCHK', [rfReplaceAll]);
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

					xdom := ComsDomDocument.Create;
					try
						if not xdom.loadXML(ls_rxxml) then
							Exit;

						ls_ClientKey := GetXmlClientKey(ls_rxxml);

						ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
						if ('0000' = ls_Msg_Err) then
						begin
							if (0 < GetXmlRecordCount(ls_rxxml)) then
							begin
								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
								ls_Rcrd := TStringList.Create;
								try
									GetTextSeperationEx('��', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
		//              ls_Rcrd := GetTextSeperation('��', lst_Result.item[0].attributes.getNamedItem('Value').Text);
									if ls_Rcrd[0] = '0' then
									begin
										GMessagebox('��� ������ ���̵� �Դϴ�.', CDMSE);
										btn_WebId.Tag := 0;
{										edt_WebPW1.Enabled := True;
										edt_WebPW2.Enabled := True;
										edt_WebPW1.SetFocus;

										btn_Confirm.Tag := 1; //�ߺ�üũ ��    }

									end
									else
									begin
										GMessagebox('������� ���̵� �Դϴ�.', CDMSE);
										edWebID{edt_WebIdFirst}.SetFocus;
									end;
								finally
									ls_Rcrd.Free;
								end;

							end;
						end;
					finally
						xdom := Nil;
					end;
				end else
				begin
				end;
			end;
		finally
			Frm_Flash.Hide;
			FreeAndNil(slReceive);
		end;
	except
	end;
end;

procedure TFrm_CUT1.proc_Set_ExcelMasking;
var iRow, i: integer;
begin
	Try
		Try
			cxGrid_Angel2_Masking.DataController.SetRecordCount(0);
			cxGrid_Angel2_Masking.beginUpdate;
			for i := 0 to cxGrid_Angel2.DataController.Recordcount - 1 do
			begin
				iRow := cxGrid_Angel2_Masking.DataController.AppendRecord;
				cxGrid_Angel2_Masking.DataController.Values[iRow,  0] := cxGrid_Angel2.DataController.Values[i,  0];                  //����
				cxGrid_Angel2_Masking.DataController.Values[iRow,  1] := cxGrid_Angel2.DataController.Values[i,  1];                   //������ȣ
				cxGrid_Angel2_Masking.DataController.Values[iRow,  2] := cxGrid_Angel2.DataController.Values[i,  2];                         //������
				cxGrid_Angel2_Masking.DataController.Values[iRow,  3] := cxGrid_Angel2.DataController.Values[i,  3];                  //�����Ͻ�-���������Ͻ�
				cxGrid_Angel2_Masking.DataController.Values[iRow,  4] := cxGrid_Angel2.DataController.Values[i,  4];                  //�����
				cxGrid_Angel2_Masking.DataController.Values[iRow,  5] := cxGrid_Angel2.DataController.Values[i,  5];                         //���񽺸�
				cxGrid_Angel2_Masking.DataController.Values[iRow,  6] := cxGrid_Angel2.DataController.Values[i,  6];                  //��������- ��������
				cxGrid_Angel2_Masking.DataController.Values[iRow,  7] := cxGrid_Angel2.DataController.Values[i,  7];                       //����/�Ϲ� ������ ���θ� ��ȸ�ȴٰ� ��. ���¿����
				cxGrid_Angel2_Masking.DataController.Values[iRow,  8] := cxGrid_Angel2.DataController.Values[i,  8];                  //����
				cxGrid_Angel2_Masking.DataController.Values[iRow,  9] := cxGrid_Angel2.DataController.Values[i,  9];                  //����å
				cxGrid_Angel2_Masking.DataController.Values[iRow, 10] := StrToCallMasking(cxGrid_Angel2.DataController.Values[i, 10], 2);    //����ȭ��ȣ
				cxGrid_Angel2_Masking.DataController.Values[iRow, 11] := cxGrid_Angel2.DataController.Values[i, 11];                  //��ü ID-�����ڵ�
				cxGrid_Angel2_Masking.DataController.Values[iRow, 12] := cxGrid_Angel2.DataController.Values[i, 12];                  //��ü��
				cxGrid_Angel2_Masking.DataController.Values[iRow, 13] := cxGrid_Angel2.DataController.Values[i, 13];                  //������
				cxGrid_Angel2_Masking.DataController.Values[iRow, 14] := cxGrid_Angel2.DataController.Values[i, 14];                  //������һ���
				cxGrid_Angel2_Masking.DataController.Values[iRow, 15] := cxGrid_Angel2.DataController.Values[i, 15];                  //���ID
				cxGrid_Angel2_Masking.DataController.Values[iRow, 16] := cxGrid_Angel2.DataController.Values[i, 16];                  //�����
				cxGrid_Angel2_Masking.DataController.Values[iRow, 17] := cxGrid_Angel2.DataController.Values[i, 17];                  //����
				cxGrid_Angel2_Masking.DataController.Values[iRow, 18] := cxGrid_Angel2.DataController.Values[i, 18];                //��/Ÿ��� ����
				cxGrid_Angel2_Masking.DataController.Values[iRow, 19] := cxGrid_Angel2.DataController.Values[i, 19];                  //�����ð�
				cxGrid_Angel2_Masking.DataController.Values[iRow, 20] := cxGrid_Angel2.DataController.Values[i, 20];                  //���ð�
				cxGrid_Angel2_Masking.DataController.Values[iRow, 21] := cxGrid_Angel2.DataController.Values[i, 21];                  //��������ð�
				cxGrid_Angel2_Masking.DataController.Values[iRow, 22] := cxGrid_Angel2.DataController.Values[i, 22];                  //����� POI
				cxGrid_Angel2_Masking.DataController.Values[iRow, 23] := cxGrid_Angel2.DataController.Values[i, 23];//����ּ�
				cxGrid_Angel2_Masking.DataController.Values[iRow, 24] := cxGrid_Angel2.DataController.Values[i, 24];                  //����� ��/��
				cxGrid_Angel2_Masking.DataController.Values[iRow, 25] := cxGrid_Angel2.DataController.Values[i, 25];                  //����� ��/��
				cxGrid_Angel2_Masking.DataController.Values[iRow, 26] := cxGrid_Angel2.DataController.Values[i, 26];                  //����� ��/��
				cxGrid_Angel2_Masking.DataController.Values[iRow, 27] := cxGrid_Angel2.DataController.Values[i, 27];                 //������ POI
				cxGrid_Angel2_Masking.DataController.Values[iRow, 28] := cxGrid_Angel2.DataController.Values[i, 28];//�����ּ�
				cxGrid_Angel2_Masking.DataController.Values[iRow, 29] := cxGrid_Angel2.DataController.Values[i, 29];                  //������ ��/��
				cxGrid_Angel2_Masking.DataController.Values[iRow, 30] := cxGrid_Angel2.DataController.Values[i, 30];                  //������ ��/��
				cxGrid_Angel2_Masking.DataController.Values[iRow, 31] := cxGrid_Angel2.DataController.Values[i, 31];                  //������ ��/��
				cxGrid_Angel2_Masking.DataController.Values[iRow, 32] := cxGrid_Angel2.DataController.Values[i, 32];                  //������
				cxGrid_Angel2_Masking.DataController.Values[iRow, 33] := cxGrid_Angel2.DataController.Values[i, 33];                  //����Ÿ�
				cxGrid_Angel2_Masking.DataController.Values[iRow, 34] := cxGrid_Angel2.DataController.Values[i, 34];                  //�������� //2
				cxGrid_Angel2_Masking.DataController.Values[iRow, 35] := cxGrid_Angel2.DataController.Values[i, 35];                  //�������
				cxGrid_Angel2_Masking.DataController.Values[iRow, 36] := cxGrid_Angel2.DataController.Values[i, 36];                  //�������
				cxGrid_Angel2_Masking.DataController.Values[iRow, 37] := cxGrid_Angel2.DataController.Values[i, 37];                  //�����
				cxGrid_Angel2_Masking.DataController.Values[iRow, 38] := cxGrid_Angel2.DataController.Values[i, 38];                  //��Ÿ���
				cxGrid_Angel2_Masking.DataController.Values[iRow, 39] := cxGrid_Angel2.DataController.Values[i, 39];                  //������
				cxGrid_Angel2_Masking.DataController.Values[iRow, 40] := cxGrid_Angel2.DataController.Values[i, 40];                  //������
				cxGrid_Angel2_Masking.DataController.Values[iRow, 41] := cxGrid_Angel2.DataController.Values[i, 41];                  //���ݰ�����
				cxGrid_Angel2_Masking.DataController.Values[iRow, 42] := cxGrid_Angel2.DataController.Values[i, 42];                  //ī�������
				cxGrid_Angel2_Masking.DataController.Values[iRow, 43] := cxGrid_Angel2.DataController.Values[i, 43]; //��������
				cxGrid_Angel2_Masking.DataController.Values[iRow, 44] := cxGrid_Angel2.DataController.Values[i, 44];                      //����������
				cxGrid_Angel2_Masking.DataController.Values[iRow, 45] := cxGrid_Angel2.DataController.Values[i, 45];                  //���޸�
				cxGrid_Angel2_Masking.DataController.Values[iRow, 46] := cxGrid_Angel2.DataController.Values[i, 46];                  //���޸�
				cxGrid_Angel2_Masking.DataController.Values[iRow, 47] := cxGrid_Angel2.DataController.Values[i, 47];                  //����1
				cxGrid_Angel2_Masking.DataController.Values[iRow, 48] := cxGrid_Angel2.DataController.Values[i, 48];                  //����2
			end;
		finally
			cxGrid_Angel2_Masking.EndUpdate;
		end;
	except
		on E: Exception do
		begin
			Screen.Cursor := crDefault;
			cxPageControl1.Enabled := True;
			Assert(False, E.Message);
			Frm_Flash.Hide;
		end;
	end;
end;

procedure TFrm_CUT1.proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean);
var
  i, iBrNo, iCustTel, iCustName, iKeyNum, iCnt, RowIdx, iRow, KeyRow, ikey_cnt, iMile, iSmsYn: Integer;
	sCustTel, sSmsYn: string;
	slTmp : THashedStringList;
begin
	GS_CUTSMS := True;
  iBrNo     := sGrid.GetColumnByFieldName('�����ڵ�').Index;
  iCustTel  := sGrid.GetColumnByFieldName('����ȣ').Index;
  iCustName := sGrid.GetColumnByFieldName('����').Index;
  iKeyNum   := sGrid.GetColumnByFieldName('��ǥ��ȣ').Index;
  iMile     := sGrid.GetColumnByFieldName('���ϸ���').Index;
  iSmsYn    := sGrid.GetColumnByFieldName('SMS���Űź�').Index;

  iCnt := 0;

  Frm_Main.procMenuCreateActive(1001, 'SMS�߼�');

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
           ((sSmsYn = 'y') or (sSmsYn = '����')) then
			  begin
			  	// ���۳��� ����
			  	RowIdx := Frm_SMS.cxViewSms.DataController.AppendRecord;
			  	// 0, �����ڵ�
			  	Frm_SMS.cxViewSms.DataController.Values[RowIdx, 0] := sGrid.ViewData.Records[I].Values[iBrNo];
			  	// 1, ��ǥ��ȣ
			  	Frm_SMS.cxViewSms.DataController.Values[RowIdx, 1] := StringReplace(sGrid.ViewData.Records[I].Values[iKeyNum], '-', '', [rfreplaceAll]);
			  	// 2, ����ȣ
			  	Frm_SMS.cxViewSms.DataController.Values[RowIdx, 2] := StringReplace(sGrid.ViewData.Records[I].Values[iCustTel], '-', '', [rfreplaceAll]);
			  	// 3, ����
			  	Frm_SMS.cxViewSms.DataController.Values[RowIdx, 3] := sGrid.ViewData.Records[I].Values[iCustName];
			  	// 4, ���ϸ���
			  	Frm_SMS.cxViewSms.DataController.Values[RowIdx, 6] := sGrid.ViewData.Records[I].Values[iMile];
			  	Inc(icnt);

			  	// ��ǥ��ȭ�� ���ۼ� ī����
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
		// �ܺο��� ȣ���Լ�
		Frm_SMS.proc_branch_sms;
		Frm_SMS.Show;
		Frm_SMS.cxBtnHelp.Click;
	Finally
		Screen.Cursor := crDefault;
		slTmp.Free;
  End;
end;

procedure TFrm_CUT1.rbBubinAuthchkDate01Click(Sender: TObject);
begin
  if rbBubinAuthchkDate01.Checked then
  begin
    cxDate22.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
		cxDate23.Date := cxDate22.Date + 1;

    cxDate22.Enabled := False;
    cxDate23.Enabled := False;
  end else
  if rbBubinAuthchkDate02.Checked then
  begin
    cxDate22.Date := now - 1;
		cxDate23.Date := now;

    cxDate22.Enabled := True;
    cxDate23.Enabled := True;
  end;
end;

procedure TFrm_CUT1.RbButton1MouseDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	pm_Date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUT1.rb_BillYClick(Sender: TObject);
begin
  if rb_BillY.Checked then rb_BillY.Hint := 'y';
  if rb_BillN.Checked then rb_BillY.Hint := 'n';
end;

procedure TFrm_CUT1.rb_DepositYClick(Sender: TObject);
begin
  if rb_DepositY.Checked then rb_DepositY.Hint := 'y';
  if rb_DepositN.Checked then rb_DepositY.Hint := 'n';
end;

procedure TFrm_CUT1.RequestData(AData: string);
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

procedure TFrm_CUT1.SetTree_ListItem(sHdcd, sBrcd: String; idx: Integer);
var
	i, j : Integer;
  LeftTreePtr : PTreeRec;
begin
	SetDebugeWrite('Main.SetTree_LeftItem');
  try
		for i := 0 to CustView18_1.Count - 1 do
		begin
			LeftTreePtr := CustView18_1.Items[i].Data;
			if ( LeftTreePtr^.HDCode = sHdcd ) And ( LeftTreePtr^.BrCode = sBrcd ) And ( LeftTreePtr^.FIndex = idx ) then
			begin
				CustView18_1.Items[i].Selected := True;
				CustView18_1.Items[i].Checked := True;
				CustView18_1.Setfocus;
				CustView18_1.Items[i].MakeVisible;
				Break;
			end;

			for j := 0 to CustView18_1.Items[i].Count - 1 do
      begin
				LeftTreePtr := CustView18_1.Items[i].Items[j].Data;
        if ( LeftTreePtr^.HDCode = sHdcd ) And ( LeftTreePtr^.BrCode = sBrcd ) And ( LeftTreePtr^.FIndex = idx ) then
        begin
					CustView18_1.Setfocus;
					CustView18_1.Items[i].Items[j].Selected := True;
					CustView18_1.Items[i].Items[j].Checked := True;
					CustView18_1.Items[i].Expand(True);
					CustView18_1.Items[i].Items[j].MakeVisible;
					Break;
				end;
			end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

end.

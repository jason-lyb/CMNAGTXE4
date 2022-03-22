unit xe_PBX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, System.DateUtils,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels, System.JSON,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, ComObj,
  cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, AdvGrid,
  cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxDropDownEdit, cxMaskEdit, cxCalendar,
  Vcl.StdCtrls, cxButtons, cxGroupBox, Vcl.ExtCtrls, cxPC, cxCheckBox,
  cxImageComboBox, cxGridBandedTableView, cxRadioGroup, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGridChartView, AdvSplitter, Vcl.Samples.Gauges,
  cxTimeEdit, cxButtonEdit, Vcl.OleCtrls, WMPLib_TLB, cxListBox, cxSplitter, AdvProgressBar, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, dxSkinOffice2010Silver, dxDateRanges, cxCustomListBox, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

Type
	TMenteLIST = record
		slCategory: TStringList;
		slCateName: TStringList;
		slCodeID: TStringList;
		slCodeName: TStringList;
		slFilename: TStringList;
		slUse: TStringList;
	end;
	
type
	Tfrm_PBX = class(TForm)
		cxPageControl1: TcxPageControl;
    cxTS_cl: TcxTabSheet;
    PnlMain_cl: TPanel;
		Shape6: TShape;
    cxTS_ca: TcxTabSheet;
    PnlMain_ca: TPanel;
		Shape7: TShape;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTS_wk: TcxTabSheet;
    PnlMain_wk: TPanel;
		Shape47: TShape;
		cxGroupBox11: TcxGroupBox;
    btnSearch_wk: TcxButton;
    btnExcel_wk: TcxButton;
    cxTS_hd: TcxTabSheet;
    cxTS_vi: TcxTabSheet;
    cxTS_bl: TcxTabSheet;
		cxTabSheet4: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Shape2: TShape;
    Shape3: TShape;
    btnDate_cl: TcxButton;
    cxDtStart_cl: TcxDateEdit;
    cxDtEnd_cl: TcxDateEdit;
    btnSearch1: TcxButton;
    btnExcel_cl: TcxButton;
    cxLabel10: TcxLabel;
    cbGrpNm1: TcxComboBox;
    cxLabel13: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    PnlMain_hd: TPanel;
    Shape14: TShape;
    cxGroupBox4: TcxGroupBox;
    btnSearch_hd: TcxButton;
    btnIns_hd: TcxButton;
    pnlMain_vi: TPanel;
    Shape18: TShape;
    cxGroupBox8: TcxGroupBox;
    lblTitle_vi: TcxLabel;
    btnSearch_vi: TcxButton;
    Shape32: TShape;
    cbAgtNm1: TcxComboBox;
    cxLabel49: TcxLabel;
    pm_date: TPopupMenu;
    MiToday: TMenuItem;
    MiYesterday: TMenuItem;
    MiOneWeek: TMenuItem;
    MiOneMonth: TMenuItem;
    MiStartMonth: TMenuItem;
    Shape5: TShape;
    Shape8: TShape;
    btnDate_ca: TcxButton;
    cxDtStart_ca: TcxDateEdit;
    cxDtEnd_ca: TcxDateEdit;
    cxLabel5: TcxLabel;
    btnSearch2: TcxButton;
    btnExcel_ca: TcxButton;
    cxLabel7: TcxLabel;
    cbAgtNm2: TcxComboBox;
    cxLabel14: TcxLabel;
    cxLabel65: TcxLabel;
    Shape59: TShape;
    cbGrpNm2: TcxComboBox;
    cxLabel8: TcxLabel;
    cxTabSheet10: TcxTabSheet;
    btnUp_wk: TcxButton;
    cxGrdPBX_wk: TcxGrid;
    cxGrdVPBX_wk: TcxGridBandedTableView;
    cxGridBandedColumn63: TcxGridBandedColumn;
    cxGridBandedColumn64: TcxGridBandedColumn;
    cxGridBandedColumn65: TcxGridBandedColumn;
    cxGridBandedColumn66: TcxGridBandedColumn;
    cxGridBandedColumn67: TcxGridBandedColumn;
    cxGridBandedColumn68: TcxGridBandedColumn;
    cxGridBandedColumn69: TcxGridBandedColumn;
    cxGridBandedColumn70: TcxGridBandedColumn;
    cxGridBandedColumn71: TcxGridBandedColumn;
    cxGridBandedColumn72: TcxGridBandedColumn;
    cxGridBandedColumn73: TcxGridBandedColumn;
    cxGridBandedColumn74: TcxGridBandedColumn;
    cxGridLevel12: TcxGridLevel;
    cxGrdVPBX_wkColumn1: TcxGridBandedColumn;
    cxGrdVPBX_wkColumn2: TcxGridBandedColumn;
    grpWorkSet: TcxGroupBox;
    cxLabel20: TcxLabel;
    Shape20: TShape;
    cbWorkday: TcxComboBox;
    cxLabel21: TcxLabel;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape25: TShape;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    edtWorkS: TcxTextEdit;
    edtBreakS: TcxTextEdit;
    edtLunchS: TcxTextEdit;
    edtDinnerS: TcxTextEdit;
    cxLabel25: TcxLabel;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    edtWorkE: TcxTextEdit;
    edtBreakE: TcxTextEdit;
    edtLunchE: TcxTextEdit;
    edtDinnerE: TcxTextEdit;
    cxLabel29: TcxLabel;
    Shape30: TShape;
    Shape36: TShape;
    Shape49: TShape;
    Shape50: TShape;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cbUseWork: TcxComboBox;
    cbUseBreak: TcxComboBox;
    cbUseLunch: TcxComboBox;
    cbUseDinner: TcxComboBox;
    btnSave_wk: TcxButton;
    btnExit_wk: TcxButton;
    btnUp_hd: TcxButton;
    btnDel_hd: TcxButton;
    btnExcel_hd: TcxButton;
    cxGrdPBX_hd: TcxGrid;
    cxGrdVPBX_hd: TcxGridBandedTableView;
    cxGridBandedColumn75: TcxGridBandedColumn;
    cxGridBandedColumn76: TcxGridBandedColumn;
    cxGridBandedColumn77: TcxGridBandedColumn;
    cxGridBandedColumn78: TcxGridBandedColumn;
    cxGridBandedColumn79: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    grpHdaySet: TcxGroupBox;
    lblOHday: TcxLabel;
    Shape16: TShape;
    cxLabel34: TcxLabel;
    Shape17: TShape;
    Shape53: TShape;
    cxLabel35: TcxLabel;
    edtContents: TcxTextEdit;
    edtWeekday: TcxTextEdit;
    btnSave_hd: TcxButton;
    btnExit_hd: TcxButton;
    cxDtHDay: TcxDateEdit;
    cxPC_cl: TcxPageControl;
    cxTabSheet11: TcxTabSheet;
    cxTabSheet12: TcxTabSheet;
    cxTabSheet13: TcxTabSheet;
    cxGrdPBX_cl_t: TcxGrid;
    cxGrdVPBX_cl_t: TcxGridBandedTableView;
    cxGridBandedColumn80: TcxGridBandedColumn;
    cxGridBandedColumn81: TcxGridBandedColumn;
    cxGridBandedColumn82: TcxGridBandedColumn;
    cxGridBandedColumn83: TcxGridBandedColumn;
    cxGridBandedColumn84: TcxGridBandedColumn;
    cxGridBandedColumn85: TcxGridBandedColumn;
    cxGridBandedColumn86: TcxGridBandedColumn;
    cxGridBandedColumn87: TcxGridBandedColumn;
    cxGridBandedColumn88: TcxGridBandedColumn;
    cxGridBandedColumn89: TcxGridBandedColumn;
    cxGridBandedColumn90: TcxGridBandedColumn;
    cxGridBandedColumn91: TcxGridBandedColumn;
    cxGridBandedColumn92: TcxGridBandedColumn;
    cxGridBandedColumn93: TcxGridBandedColumn;
    cxGridBandedColumn94: TcxGridBandedColumn;
    cxGridBandedColumn95: TcxGridBandedColumn;
    cxGridBandedColumn96: TcxGridBandedColumn;
    cxGridBandedColumn97: TcxGridBandedColumn;
    cxGridBandedColumn98: TcxGridBandedColumn;
    cxGridBandedColumn99: TcxGridBandedColumn;
    cxGridBandedColumn100: TcxGridBandedColumn;
    cxGridBandedColumn101: TcxGridBandedColumn;
    cxGridLevel13: TcxGridLevel;
    pnlChart_cl_t: TPanel;
    cxGrdCPBX_cl_t: TcxGrid;
    cxGrdCvPBX_cl_t: TcxGridChartView;
    cxGridLevelA1_2: TcxGridLevel;
    Panel4: TPanel;
    Shape54: TShape;
    cbChartKindA1_2: TcxComboBox;
    cxLabel33: TcxLabel;
    cxButton8: TcxButton;
    cbKindA1_2: TcxComboBox;
    btnGraphExit_cl_t: TcxButton;
    AdvSplitter2: TAdvSplitter;
    cxGrdPBX_cl_d: TcxGrid;
    cxGrdVPBX_cl_d: TcxGridBandedTableView;
    cxGridBandedColumn102: TcxGridBandedColumn;
    cxGridBandedColumn103: TcxGridBandedColumn;
    cxGridBandedColumn104: TcxGridBandedColumn;
    cxGridBandedColumn105: TcxGridBandedColumn;
    cxGridBandedColumn106: TcxGridBandedColumn;
    cxGridBandedColumn107: TcxGridBandedColumn;
    cxGridBandedColumn108: TcxGridBandedColumn;
    cxGridBandedColumn109: TcxGridBandedColumn;
    cxGridBandedColumn110: TcxGridBandedColumn;
    cxGridBandedColumn111: TcxGridBandedColumn;
    cxGridBandedColumn112: TcxGridBandedColumn;
    cxGridBandedColumn113: TcxGridBandedColumn;
    cxGridBandedColumn114: TcxGridBandedColumn;
    cxGridBandedColumn115: TcxGridBandedColumn;
    cxGridBandedColumn116: TcxGridBandedColumn;
    cxGridBandedColumn117: TcxGridBandedColumn;
    cxGridBandedColumn118: TcxGridBandedColumn;
    cxGridBandedColumn119: TcxGridBandedColumn;
    cxGridBandedColumn120: TcxGridBandedColumn;
    cxGridBandedColumn121: TcxGridBandedColumn;
    cxGridBandedColumn122: TcxGridBandedColumn;
    cxGridBandedColumn123: TcxGridBandedColumn;
    cxGridLevel16: TcxGridLevel;
    pnlChart_cl_d: TPanel;
    Panel6: TPanel;
    Shape55: TShape;
    cbChartKindA1_3: TcxComboBox;
    cxLabel36: TcxLabel;
    cxButton11: TcxButton;
    cbKindA1_3: TcxComboBox;
    btnGraphExit_cl_d: TcxButton;
    cxGrdCPBX_cl_d: TcxGrid;
    cxGrdCvPBX_cl_d: TcxGridChartView;
    cxGridLevelA1_3: TcxGridLevel;
    AdvSplitter3: TAdvSplitter;
    pnlLeftA1: TPanel;
    cxGrdPBX_cl_a: TcxGrid;
    cxGrdVPBX_cl_a: TcxGridBandedTableView;
    cxGrdVPBX_cl_aColumn1: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn21: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn2: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn3: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn4: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn5: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn6: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn7: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn8: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn9: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn10: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn11: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn12: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn13: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn14: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn15: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn16: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn17: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn18: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn19: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn20: TcxGridBandedColumn;
    cxGrdVPBX_cl_aColumn38: TcxGridBandedColumn;
    cxGridLevel7: TcxGridLevel;
    pnlChart_cl_a: TPanel;
    Panel1: TPanel;
    Shape9: TShape;
    cbChartKindA1_1: TcxComboBox;
    cxLabel6: TcxLabel;
    btnChartA6: TcxButton;
    cbKindA1_1: TcxComboBox;
    btnGraphExit_cl_a: TcxButton;
    cxGrdCPBX_cl_a: TcxGrid;
    cxGrdCvPBX_cl_a: TcxGridChartView;
    cxGrdCvPBX_cl_aSeries1: TcxGridChartSeries;
    cxGrdCvPBX_cl_aSeries2: TcxGridChartSeries;
    cxGrdCvPBX_cl_aSeries3: TcxGridChartSeries;
    cxGridLevelA1_1: TcxGridLevel;
    AdvSplitter1: TAdvSplitter;
    cxGrdPBX_clK_a: TcxGrid;
    cxGrdVPBX_clK_a: TcxGridBandedTableView;
    cxGridBandedColumn124: TcxGridBandedColumn;
    cxGridBandedColumn125: TcxGridBandedColumn;
    cxGridBandedColumn126: TcxGridBandedColumn;
    cxGridBandedColumn127: TcxGridBandedColumn;
    cxGridBandedColumn128: TcxGridBandedColumn;
    cxGridLevel19: TcxGridLevel;
    AdvSplitter4: TAdvSplitter;
    cxPC_ca: TcxPageControl;
    cxTabSheet14: TcxTabSheet;
    cxTabSheet15: TcxTabSheet;
    cxTabSheet16: TcxTabSheet;
    cxGrdPBX_ca_t: TcxGrid;
    cxGrdVPBX_ca_t: TcxGridBandedTableView;
    cxGridBandedColumn42: TcxGridBandedColumn;
    cxGridBandedColumn43: TcxGridBandedColumn;
    cxGridBandedColumn44: TcxGridBandedColumn;
    cxGridBandedColumn45: TcxGridBandedColumn;
    cxGridBandedColumn46: TcxGridBandedColumn;
    cxGridBandedColumn47: TcxGridBandedColumn;
    cxGridBandedColumn48: TcxGridBandedColumn;
    cxGridBandedColumn49: TcxGridBandedColumn;
    cxGridBandedColumn50: TcxGridBandedColumn;
    cxGridBandedColumn51: TcxGridBandedColumn;
    cxGridBandedColumn52: TcxGridBandedColumn;
    cxGridBandedColumn53: TcxGridBandedColumn;
    cxGridBandedColumn54: TcxGridBandedColumn;
    cxGridBandedColumn55: TcxGridBandedColumn;
    cxGridBandedColumn56: TcxGridBandedColumn;
    cxGridBandedColumn57: TcxGridBandedColumn;
    cxGridBandedColumn58: TcxGridBandedColumn;
    cxGridBandedColumn59: TcxGridBandedColumn;
    cxGridBandedColumn60: TcxGridBandedColumn;
    cxGridBandedColumn61: TcxGridBandedColumn;
    cxGridBandedColumn62: TcxGridBandedColumn;
    cxGrdVPBX_ca_tColumn1: TcxGridBandedColumn;
    cxGridLevel9: TcxGridLevel;
    cxGrdPBX_ca_d: TcxGrid;
    cxGrdVPBX_ca_d: TcxGridBandedTableView;
    cxGridBandedColumn129: TcxGridBandedColumn;
    cxGridBandedColumn130: TcxGridBandedColumn;
    cxGridBandedColumn131: TcxGridBandedColumn;
    cxGridBandedColumn132: TcxGridBandedColumn;
    cxGridBandedColumn133: TcxGridBandedColumn;
    cxGridBandedColumn134: TcxGridBandedColumn;
    cxGridBandedColumn135: TcxGridBandedColumn;
    cxGridBandedColumn136: TcxGridBandedColumn;
    cxGridBandedColumn137: TcxGridBandedColumn;
    cxGridBandedColumn138: TcxGridBandedColumn;
    cxGridBandedColumn139: TcxGridBandedColumn;
    cxGridBandedColumn140: TcxGridBandedColumn;
    cxGridBandedColumn141: TcxGridBandedColumn;
    cxGridBandedColumn142: TcxGridBandedColumn;
    cxGridBandedColumn143: TcxGridBandedColumn;
    cxGridBandedColumn144: TcxGridBandedColumn;
    cxGridBandedColumn145: TcxGridBandedColumn;
    cxGridBandedColumn146: TcxGridBandedColumn;
    cxGridBandedColumn147: TcxGridBandedColumn;
    cxGridBandedColumn148: TcxGridBandedColumn;
    cxGridBandedColumn149: TcxGridBandedColumn;
    cxGridBandedColumn150: TcxGridBandedColumn;
    cxGridLevel20: TcxGridLevel;
    pnlLeftA2: TPanel;
    cxGrdPBX_ca_a: TcxGrid;
    cxGrdVPBX_ca_a: TcxGridBandedTableView;
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
    cxGridLevel6: TcxGridLevel;
    cxGrdCvPBX_cl_aSeries4: TcxGridChartSeries;
    cxGrdCvPBX_cl_tSeries1: TcxGridChartSeries;
    cxGrdCvPBX_cl_tSeries2: TcxGridChartSeries;
    cxGrdCvPBX_cl_tSeries3: TcxGridChartSeries;
    cxGrdCvPBX_cl_tSeries4: TcxGridChartSeries;
    cxGrdCvPBX_cl_dSeries1: TcxGridChartSeries;
    cxGrdCvPBX_cl_dSeries2: TcxGridChartSeries;
    cxGrdCvPBX_cl_dSeries3: TcxGridChartSeries;
    cxGrdCvPBX_cl_dSeries4: TcxGridChartSeries;
    cxTabSheet17: TcxTabSheet;
    cxTabSheet18: TcxTabSheet;
    cxTabSheet19: TcxTabSheet;
    AdvSplitter5: TAdvSplitter;
    pnlChart_ca_a: TPanel;
    Panel8: TPanel;
    Shape58: TShape;
    cbChartKindA2_1: TcxComboBox;
    cxLabel37: TcxLabel;
    cxButton22: TcxButton;
    cbKindA2_1: TcxComboBox;
    btnGraphExit_ca_a: TcxButton;
    cxGrdCPBX_ca_a: TcxGrid;
    cxGrdCvPBX_ca_a: TcxGridChartView;
    cxGrdCvPBX_ca_aSeries1: TcxGridChartSeries;
    cxGrdCvPBX_ca_aSeries2: TcxGridChartSeries;
    cxGrdCvPBX_ca_aSeries3: TcxGridChartSeries;
    cxGrdCvPBX_ca_aSeries4: TcxGridChartSeries;
    cxGridLevel5: TcxGridLevel;
    cxGrdPBX_caK_a: TcxGrid;
    cxGrdVPBX_caK_a: TcxGridBandedTableView;
    cxGridBandedColumn151: TcxGridBandedColumn;
    cxGridBandedColumn152: TcxGridBandedColumn;
    cxGridBandedColumn153: TcxGridBandedColumn;
    cxGridBandedColumn154: TcxGridBandedColumn;
    cxGridBandedColumn155: TcxGridBandedColumn;
    cxGridLevel14: TcxGridLevel;
    AdvSplitter6: TAdvSplitter;
    pnlChart_ca_t: TPanel;
    cxGrdCPBX_ca_t: TcxGrid;
    cxGrdCvPBX_ca_t: TcxGridChartView;
    cxGrdCvPBX_ca_tSeries1: TcxGridChartSeries;
    cxGrdCvPBX_ca_tSeries2: TcxGridChartSeries;
    cxGrdCvPBX_ca_tSeries3: TcxGridChartSeries;
    cxGrdCvPBX_ca_tSeries4: TcxGridChartSeries;
    cxGridLevel15: TcxGridLevel;
    Panel10: TPanel;
    Shape60: TShape;
    cbChartKindA2_2: TcxComboBox;
    cxLabel38: TcxLabel;
    cxButton24: TcxButton;
    cbKindA2_2: TcxComboBox;
    btnGraphExit_ca_t: TcxButton;
    AdvSplitter7: TAdvSplitter;
    pnlChart_ca_d: TPanel;
    Panel12: TPanel;
    Shape61: TShape;
    cbChartKindA2_3: TcxComboBox;
    cxLabel39: TcxLabel;
    cxButton26: TcxButton;
    cbKindA2_3: TcxComboBox;
    btnGraphExit_ca_d: TcxButton;
    cxGrdCPBX_ca_d: TcxGrid;
    cxGrdCvPBX_ca_d: TcxGridChartView;
    cxGrdCvPBX_ca_dSeries1: TcxGridChartSeries;
    cxGrdCvPBX_ca_dSeries2: TcxGridChartSeries;
    cxGrdCvPBX_ca_dSeries3: TcxGridChartSeries;
    cxGrdCvPBX_ca_dSeries4: TcxGridChartSeries;
    cxGridLevel17: TcxGridLevel;
    AdvSplitter8: TAdvSplitter;
    pnlLeft_vi: TPanel;
    cxGroupBox5: TcxGroupBox;
    AdvSplitter9: TAdvSplitter;
    cxGrdPBX_vi_s: TcxGrid;
    cxGrdVPBX_vi_s: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Shape62: TShape;
    btnSch_vi_s: TcxButton;
    cxLabel40: TcxLabel;
    Shape63: TShape;
    edtSch_vi: TcxTextEdit;
    btnIns_vi: TcxButton;
    btnUp_vi: TcxButton;
    btnDel_vi: TcxButton;
    btnExcel_vi: TcxButton;
    btnFileUp_vi: TcxButton;
    cxGroupBox6: TcxGroupBox;
    Shape19: TShape;
    cxLabel41: TcxLabel;
    Shape64: TShape;
    cxLabel44: TcxLabel;
    Shape65: TShape;
    cxLabel50: TcxLabel;
    edtCntS_vi: TcxCurrencyEdit;
    edtUCnt_vi: TcxCurrencyEdit;
    edtCntE_vi: TcxCurrencyEdit;
    cxGroupBox7: TcxGroupBox;
    Shape31: TShape;
    cxLabel56: TcxLabel;
    edtCallIdS_vi: TcxTextEdit;
    Shape24: TShape;
    cxLabel43: TcxLabel;
    edtCallNmS_vi: TcxTextEdit;
    ckAll_vi: TcxCheckBox;
    cxLabel58: TcxLabel;
    grpVipSet: TcxGroupBox;
    Shape66: TShape;
    Shape67: TShape;
    Shape68: TShape;
    Shape69: TShape;
    Shape70: TShape;
    Shape73: TShape;
    Shape74: TShape;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel63: TcxLabel;
    cxLabel64: TcxLabel;
    edtSvcNo_vi: TcxTextEdit;
    edtBuzNm_vi: TcxTextEdit;
    edtCallId_vi: TcxTextEdit;
    edtCallDesc_vi: TcxTextEdit;
    cxLabel79: TcxLabel;
    cxLabel80: TcxLabel;
    edtCallNm_vi: TcxTextEdit;
    btnSave_vi: TcxButton;
    btnExit_vi: TcxButton;
    edtUseCnt_vi: TcxCurrencyEdit;
    edtQexen_vi: TcxTextEdit;
    AdvSplitter10: TAdvSplitter;
    grpBListSet: TcxGroupBox;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Shape41: TShape;
    Shape71: TShape;
    Shape72: TShape;
    Shape75: TShape;
    cxLabel42: TcxLabel;
    cxLabel62: TcxLabel;
    cxLabel66: TcxLabel;
    cxLabel67: TcxLabel;
    cxLabel68: TcxLabel;
    edtSvcNo_bl: TcxTextEdit;
    edtBuzNm_bl: TcxTextEdit;
    edtCallId_bl: TcxTextEdit;
    edtCallDesc_bl: TcxTextEdit;
    cxLabel69: TcxLabel;
    cxLabel70: TcxLabel;
    edtCallNm_bl: TcxTextEdit;
    btnSave_bl: TcxButton;
    btnExit_bl: TcxButton;
    edtUseCnt_bl: TcxCurrencyEdit;
    edtQexen_bl: TcxTextEdit;
    pnlLeft_bl: TPanel;
    Shape76: TShape;
    cxGroupBox13: TcxGroupBox;
    Shape77: TShape;
    btnSch_bl_s: TcxButton;
    cxLabel71: TcxLabel;
    edtSch_bl: TcxTextEdit;
    cxGrdPBX_bl_s: TcxGrid;
    cxGrdVPBX_bl_s: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    pnlMain_bl: TPanel;
    Shape78: TShape;
    cxGroupBox15: TcxGroupBox;
    lblTitle_bl: TcxLabel;
    btnSearch_bl: TcxButton;
    btnIns_bl: TcxButton;
    btnUp_bl: TcxButton;
    btnDel_bl: TcxButton;
    btnExcel_bl: TcxButton;
    btnFileUp_bl: TcxButton;
    cxGroupBox16: TcxGroupBox;
    Shape79: TShape;
    Shape80: TShape;
    Shape81: TShape;
    cxLabel81: TcxLabel;
    cxLabel82: TcxLabel;
    cxLabel83: TcxLabel;
    edtCntS_bl: TcxCurrencyEdit;
    edtUCnt_bl: TcxCurrencyEdit;
    edtCntE_bl: TcxCurrencyEdit;
    cxLabel84: TcxLabel;
    cxGroupBox17: TcxGroupBox;
    Shape82: TShape;
    Shape83: TShape;
    cxLabel85: TcxLabel;
    edtCallIdS_bl: TcxTextEdit;
    cxLabel86: TcxLabel;
    edtCallNmS_bl: TcxTextEdit;
    ckAll_bl: TcxCheckBox;
    Shape84: TShape;
    cxLabel87: TcxLabel;
    cbType_bl: TcxComboBox;
    grpFileUpload: TcxGroupBox;
    Shape85: TShape;
    cxLabel18: TcxLabel;
    edtFilename: TcxTextEdit;
    btnFileUpLoad: TcxButton;
    cxGroupBox18: TcxGroupBox;
    btnFileUpSave: TcxButton;
    btnFileUpExit: TcxButton;
    dlgOpen: TOpenDialog;
    cxGroupBox12: TcxGroupBox;
    btnGraph_cl: TcxButton;
    btnGraph_ca: TcxButton;
    cxGrdVPBX_clK_aColumn1: TcxGridBandedColumn;
    cxGrdVPBX_caK_aColumn1: TcxGridBandedColumn;
    Panel3: TPanel;
    Shape86: TShape;
    cxGroupBox19: TcxGroupBox;
    btnSearch_ps: TcxButton;
    btnExcel_ps: TcxButton;
    cxGrdPBX_ps: TcxGrid;
    cxGrdVPBX_ps: TcxGridBandedTableView;
    cxGridBandedColumn170: TcxGridBandedColumn;
    cxGridBandedColumn171: TcxGridBandedColumn;
    cxGridBandedColumn172: TcxGridBandedColumn;
    cxGridBandedColumn173: TcxGridBandedColumn;
    cxGridBandedColumn174: TcxGridBandedColumn;
    cxGridBandedColumn175: TcxGridBandedColumn;
    cxGridBandedColumn176: TcxGridBandedColumn;
    cxGridBandedColumn177: TcxGridBandedColumn;
    cxGridLevel22: TcxGridLevel;
    cxGroupBox20: TcxGroupBox;
    Shape88: TShape;
    btnUp_ps: TcxButton;
    lblIdx_ps: TcxLabel;
    Shape89: TShape;
    lblpdt_ps: TcxLabel;
    Shape90: TShape;
    lblItNm_ps: TcxLabel;
    Shape91: TShape;
    cbUse_ps: TcxComboBox;
    Shape92: TShape;
    Shape93: TShape;
    Shape94: TShape;
    Shape95: TShape;
    cxLabel91: TcxLabel;
    PnlMainA4: TPanel;
    cxGroupBox3: TcxGroupBox;
    Shape12: TShape;
    cbGrpNm4: TcxComboBox;
    cxLabel15: TcxLabel;
    btn_4_1: TcxButton;
    btn_4_2: TcxButton;
    btn_4_3: TcxButton;
    btn_4_4: TcxButton;
    btn_4_5: TcxButton;
    Panel5: TPanel;
    Shape46: TShape;
    cxGroupBox14: TcxGroupBox;
    Shape13: TShape;
    Shape52: TShape;
    cbGrpNm5: TcxComboBox;
    cxLabel12: TcxLabel;
    cxLabel16: TcxLabel;
    btn_5_1: TcxButton;
    btn_5_2: TcxButton;
    btn_5_3: TcxButton;
    btn_5_4: TcxButton;
    btn_5_5: TcxButton;
    edt_5_1: TcxTextEdit;
    PnlMainA6: TPanel;
    Shape42: TShape;
    cxGroupBox10: TcxGroupBox;
    Shape45: TShape;
    cxLabel55: TcxLabel;
    btn_6_1: TcxButton;
    btn_6_2: TcxButton;
    btn_6_3: TcxButton;
    btn_6_4: TcxButton;
    btn_6_5: TcxButton;
    edt_6_1: TcxTextEdit;
    PnlMainA7: TPanel;
    cxGroupBox21: TcxGroupBox;
    Shape56: TShape;
    cxLabel53: TcxLabel;
    btn_7_1: TcxButton;
    btn_7_3: TcxButton;
    btn_7_5: TcxButton;
    cbMngNm7: TcxComboBox;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    PnlMainA9: TPanel;
    Panel14: TPanel;
    lst_ID: TcxListBox;
    tmrSI415A: TTimer;
    cxGrdVPBX_psColumn1: TcxGridBandedColumn;
    lblGu1: TcxLabel;
    meGu1: TcxMaskEdit;
    lblGu2: TcxLabel;
    meGu2: TcxMaskEdit;
    meGu3: TcxTextEdit;
    cuGu4: TcxCurrencyEdit;
    lblGu4: TcxLabel;
    lblTCnt_bl: TcxLabel;
    lblTCnt_vi: TcxLabel;
    grpAgtGroup: TcxGroupBox;
    Shape100: TShape;
    Shape101: TShape;
    Shape102: TShape;
    cxLabel76: TcxLabel;
    cxLabel77: TcxLabel;
    cxLabel78: TcxLabel;
    edtGrpId_ai_g: TcxTextEdit;
    edtGrpDesc_ai_g: TcxTextEdit;
    edtGrpNm_ai_g: TcxTextEdit;
    btnSave_ai_g: TcxButton;
    btnCancel_ai_g: TcxButton;
    grpAgentSet: TcxGroupBox;
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
    cxLabel93: TcxLabel;
    cxLabel94: TcxLabel;
    cxLabel95: TcxLabel;
    edtAgtDesc_ai_s: TcxTextEdit;
    cxLabel96: TcxLabel;
    cbGrpNm5s: TcxComboBox;
    edtAgtPw_ai_s: TcxTextEdit;
    cxLabel97: TcxLabel;
    edtExtNo_ai_s: TcxTextEdit;
    cxLabel98: TcxLabel;
    edtAgtId_ai_s: TcxTextEdit;
    edtAgtNm_ai_s: TcxTextEdit;
    cbAgtType_ai_s: TcxComboBox;
    cxLabel99: TcxLabel;
    edtAutoAnswerSec_ai_s: TcxTextEdit;
    cxLabel100: TcxLabel;
		cbAutoAnswerYn_ai_s: TcxComboBox;
    cxLabel101: TcxLabel;
    edtPrefix_ai_s: TcxTextEdit;
    cxLabel102: TcxLabel;
    cbPrefixYn_ai_s: TcxComboBox;
    cxLabel103: TcxLabel;
    edtAutoWaitSec_ai_s: TcxTextEdit;
    cxLabel104: TcxLabel;
		cbAutoWaitYn_ai_s: TcxComboBox;
    cxLabel105: TcxLabel;
    cxLabel106: TcxLabel;
    cbMarkingYn_ai_s: TcxComboBox;
    cxLabel107: TcxLabel;
    cbAgtLevel_ai_s: TcxComboBox;
    btnSave_ai_s: TcxButton;
    chk_Clear: TcxCheckBox;
    btnCancel_ai_s: TcxButton;
    grpAdminSet: TcxGroupBox;
    Shape118: TShape;
    Shape119: TShape;
    Shape120: TShape;
    Shape121: TShape;
    Shape122: TShape;
    Shape123: TShape;
    cxLabel108: TcxLabel;
    cxLabel109: TcxLabel;
    edt_Desc: TcxTextEdit;
    cxLabel110: TcxLabel;
    edt_PW: TcxTextEdit;
    cxLabel111: TcxLabel;
    edt_ExtNo: TcxTextEdit;
    edt_ID: TcxTextEdit;
    edt_NM: TcxTextEdit;
    cxLabel112: TcxLabel;
    cxLabel113: TcxLabel;
    cb_Level: TcxComboBox;
    btnSave_ad_s: TcxButton;
    btnCancel_ad_s: TcxButton;
    cxGridA7: TcxGrid;
    cxGridPBX7: TcxGridBandedTableView;
    cxGridBandedColumn188: TcxGridBandedColumn;
    cxGridBandedColumn189: TcxGridBandedColumn;
    cxGridBandedColumn190: TcxGridBandedColumn;
    cxGridBandedColumn191: TcxGridBandedColumn;
    cxGridLevel10: TcxGridLevel;
    cxGroupBox22: TcxGroupBox;
    Panel21: TPanel;
    Panel22: TPanel;
    cxGroupBox23: TcxGroupBox;
    edtGrpNm_qe_s: TcxTextEdit;
    lbGrpNm9: TcxLabel;
    cxGroupBox24: TcxGroupBox;
    cxSplitter1: TcxSplitter;
    lbAgtNm9: TcxLabel;
    edtAgtNm_qe_s: TcxTextEdit;
    btnSearch_qe: TcxButton;
    btnUpdate_qe: TcxButton;
    btnCopy_qe: TcxButton;
    cxGrdPBX_grp_qe_s: TcxGrid;
    cxGrdVPBX_grp_qe_s: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel23: TcxGridLevel;
    cxGrdPBX_agt_qe_s: TcxGrid;
    cxGrdVPBX_agt_qe_s: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel29: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    btnSch_grp_qe_s: TcxButton;
    btnSch_agt_qe_s: TcxButton;
    Panel15: TPanel;
    Shape125: TShape;
    cxGrdVPBX_grp_qe_sColumn1: TcxGridDBColumn;
    cxGrdVPBX_agt_qe_sColumn1: TcxGridDBColumn;
    lblSelAgentId_s: TcxLabel;
    btnPaste_qe: TcxButton;
    lblSelGroupId: TcxLabel;
    cxGridA9: TcxGrid;
    cxGridPBX9: TcxGridBandedTableView;
    cxGridBandedColumn192: TcxGridBandedColumn;
    cxGridBandedColumn193: TcxGridBandedColumn;
    cxGridBandedColumn194: TcxGridBandedColumn;
    cxGridBandedColumn195: TcxGridBandedColumn;
    cxGridBandedColumn196: TcxGridBandedColumn;
    cxGridBandedColumn197: TcxGridBandedColumn;
    cxGridLevel30: TcxGridLevel;
    PnlMainA10: TPanel;
    Panel17: TPanel;
    cxGroupBox25: TcxGroupBox;
    btnSearch_qe_p: TcxButton;
    btnDelete_qe_p: TcxButton;
    btnInsert_qe_p: TcxButton;
    btnUpdate_qe_p: TcxButton;
    cxListBox1: TcxListBox;
    Panel18: TPanel;
    Panel19: TPanel;
    Shape127: TShape;
    lblSelAgent_p: TcxLabel;
    cxGridA10: TcxGrid;
    cxGridPBX10: TcxGridBandedTableView;
    cxGridBandedColumn198: TcxGridBandedColumn;
    cxGridBandedColumn199: TcxGridBandedColumn;
    cxGridBandedColumn200: TcxGridBandedColumn;
    cxGridBandedColumn201: TcxGridBandedColumn;
    cxGridLevel26: TcxGridLevel;
    Panel20: TPanel;
    cxGroupBox26: TcxGroupBox;
    edtGrpNm_qe_p: TcxTextEdit;
    lbGrpNm10: TcxLabel;
    cxGrdPBX_grp_qe_p: TcxGrid;
    cxGrdVPBX_grp_qe_p: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel27: TcxGridLevel;
    btnSch_grp_qe_p: TcxButton;
    cxGroupBox27: TcxGroupBox;
    edtAgtNm_qe_p: TcxTextEdit;
    lbAgtNm10: TcxLabel;
    cxGrdPBX_agt_qe_p: TcxGrid;
    cxGrdVPBX_agt_qe_p: TcxGridDBTableView;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridLevel31: TcxGridLevel;
    btnSch_agt_qe_p: TcxButton;
    cxSplitter3: TcxSplitter;
    cxSplitter4: TcxSplitter;
    Panel23: TPanel;
    cxSplitter5: TcxSplitter;
    cxGroupBox28: TcxGroupBox;
    edt_Keynumber10: TcxTextEdit;
    lbKeynumber10: TcxLabel;
    btnSch_Ext_qe_p: TcxButton;
    cxGrdPBX_ext_qe_p: TcxGrid;
    cxGrdVPBX_ext_qe_p: TcxGridDBTableView;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridLevel32: TcxGridLevel;
    lblSelExten_p: TcxLabel;
    Shape128: TShape;
    grpCallDistSet: TcxGroupBox;
    btnSave_qe: TcxButton;
    btnExit_qe: TcxButton;
    Shape129: TShape;
    Shape130: TShape;
    Shape131: TShape;
    cxLabel118: TcxLabel;
    cxLabel119: TcxLabel;
    cbAgtNm10_1: TcxComboBox;
    cxLabel120: TcxLabel;
    edtCallDist: TcxTextEdit;
    cxLabel121: TcxLabel;
    cxLabel122: TcxLabel;
    cbPriority: TcxComboBox;
    cxLabel123: TcxLabel;
    lblSelExtenNo_p: TcxLabel;
    cxGridA5: TcxGrid;
    cxGridPBX5: TcxGridBandedTableView;
    cxGridBandedColumn202: TcxGridBandedColumn;
    cxGridBandedColumn203: TcxGridBandedColumn;
    cxGridBandedColumn204: TcxGridBandedColumn;
    cxGridBandedColumn205: TcxGridBandedColumn;
    cxGridBandedColumn206: TcxGridBandedColumn;
    cxGridBandedColumn207: TcxGridBandedColumn;
    cxGridBandedColumn208: TcxGridBandedColumn;
    cxGridBandedColumn209: TcxGridBandedColumn;
    cxGridBandedColumn210: TcxGridBandedColumn;
    cxGridBandedColumn211: TcxGridBandedColumn;
    cxGridBandedColumn212: TcxGridBandedColumn;
    cxGridBandedColumn213: TcxGridBandedColumn;
    cxGridBandedColumn214: TcxGridBandedColumn;
    cxGridBandedColumn215: TcxGridBandedColumn;
    cxGridBandedColumn216: TcxGridBandedColumn;
    cxGridBandedColumn217: TcxGridBandedColumn;
    cxGridBandedColumn218: TcxGridBandedColumn;
    cxGridLevel33: TcxGridLevel;
    cxGridPBX5Column1: TcxGridBandedColumn;
    cxGridA6: TcxGrid;
    cxGridPBX6: TcxGridBandedTableView;
    cxGridBandedColumn183: TcxGridBandedColumn;
    cxGridBandedColumn184: TcxGridBandedColumn;
    cxGridBandedColumn185: TcxGridBandedColumn;
    cxGridBandedColumn186: TcxGridBandedColumn;
    cxGridBandedColumn187: TcxGridBandedColumn;
    cxGridBandedColumn227: TcxGridBandedColumn;
    cxGridBandedColumn228: TcxGridBandedColumn;
    cxGridBandedColumn229: TcxGridBandedColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrdPBX_vi: TcxGrid;
    cxGrdVPBX_vi: TcxGridBandedTableView;
    cxGridBandedColumn219: TcxGridBandedColumn;
    cxGridBandedColumn220: TcxGridBandedColumn;
    cxGridBandedColumn221: TcxGridBandedColumn;
    cxGridBandedColumn222: TcxGridBandedColumn;
    cxGridBandedColumn223: TcxGridBandedColumn;
    cxGridBandedColumn224: TcxGridBandedColumn;
    cxGridBandedColumn225: TcxGridBandedColumn;
    cxGridBandedColumn226: TcxGridBandedColumn;
    cxGridBandedColumn230: TcxGridBandedColumn;
    cxGridLevel11: TcxGridLevel;
    cxGrdPBX_bl: TcxGrid;
    cxGrdVPBX_bl: TcxGridBandedTableView;
    cxGridBandedColumn156: TcxGridBandedColumn;
    cxGridBandedColumn157: TcxGridBandedColumn;
    cxGridBandedColumn158: TcxGridBandedColumn;
    cxGridBandedColumn159: TcxGridBandedColumn;
    cxGridBandedColumn160: TcxGridBandedColumn;
    cxGridBandedColumn231: TcxGridBandedColumn;
    cxGridBandedColumn232: TcxGridBandedColumn;
    cxGridBandedColumn233: TcxGridBandedColumn;
    cxGridBandedColumn234: TcxGridBandedColumn;
    cxGridBandedColumn235: TcxGridBandedColumn;
    cxGridLevel18: TcxGridLevel;
    PnlMainA8: TPanel;
    Shape97: TShape;
    PnlMainA8_1: TPanel;
    cxGridA8_1: TcxGrid;
    cxGridPBX8_1: TcxGridDBTableView;
    cxGridPBX8_1Column1: TcxGridDBColumn;
    cxGridPBX8_1Column2: TcxGridDBColumn;
    cxGridPBX8_1Column3: TcxGridDBColumn;
    cxGridPBX8_1Column4: TcxGridDBColumn;
    cxGridLevel24: TcxGridLevel;
    btn_8: TcxButton;
    PnlMainA8_2: TPanel;
    cxGridA8_2: TcxGrid;
    cxGridPBX8_2: TcxGridDBTableView;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridLevel25: TcxGridLevel;
    Shape98: TShape;
    Shape99: TShape;
    cb_8_1: TcxComboBox;
    cxLabel54: TcxLabel;
    cb_8_2: TcxComboBox;
    cxLabel75: TcxLabel;
    btn_8_1: TcxButton;
    btn_8_2: TcxButton;
    btn_8_4: TcxButton;
    PnlMainA3: TPanel;
    Shape37: TShape;
    cxGridA3: TcxGrid;
    cxGridPBX3: TcxGridBandedTableView;
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
    cxGridLevel8: TcxGridLevel;
    cxGroupBox9: TcxGroupBox;
    Shape39: TShape;
    Shape57: TShape;
    Shape40: TShape;
    Shape96: TShape;
    btn_3_3: TcxButton;
    btn_3_1: TcxButton;
    btn_3_2: TcxButton;
    cxLabel46: TcxLabel;
    btn_3_5: TcxButton;
    btn_3_4: TcxButton;
    cxLabel48: TcxLabel;
    cxLabel47: TcxLabel;
    cxLabel92: TcxLabel;
    edtSearch_3_2: TcxTextEdit;
    edtSearch_3_1: TcxTextEdit;
    edtSearch_3_3: TcxTextEdit;
    edtSearch_3_4: TcxTextEdit;
    cxButton4: TcxButton;
    cxGridA4: TcxGrid;
    cxGridPBX4: TcxGridBandedTableView;
    cxGridBandedColumn178: TcxGridBandedColumn;
    cxGridBandedColumn179: TcxGridBandedColumn;
    cxGridBandedColumn180: TcxGridBandedColumn;
    cxGridBandedColumn181: TcxGridBandedColumn;
    cxGridBandedColumn182: TcxGridBandedColumn;
    cxGridLevel28: TcxGridLevel;
    btn_8_5: TcxButton;
    Label7: TLabel;
    Label1: TLabel;
    cxLabel1: TcxLabel;
		cxGridPBX3Column1: TcxGridBandedColumn;
    cxGridPBX3Column2: TcxGridBandedColumn;
    cxGridPBX3Column3: TcxGridBandedColumn;
    cxGridPBX3Column4: TcxGridBandedColumn;
    cxGridPBX3Column5: TcxGridBandedColumn;
    btn_6_6: TcxButton;
    pnl_MasterPwChange: TPanel;
    Panel24: TPanel;
    edt_NowPw: TcxTextEdit;
    cxLabel2: TcxLabel;
    Shape1: TShape;
    edt_NewPW: TcxTextEdit;
    cxLabel3: TcxLabel;
    Shape4: TShape;
    edt_ConfirmPw: TcxTextEdit;
    cxLabel4: TcxLabel;
    Shape11: TShape;
    btn_PwChange: TcxButton;
    btn_PwClose: TcxButton;
    chkFirstRowHeader: TcxCheckBox;
    Gauge1: TAdvProgressBar;
    OpenDialog1: TOpenDialog;
    cxGridFileExcelList: TcxGrid;
    cxViewFileExcelList: TcxGridDBTableView;
    cxColXls1: TcxGridDBColumn;
    cxColXls2: TcxGridDBColumn;
    cxColXls3: TcxGridDBColumn;
    cxColXls4: TcxGridDBColumn;
    cxColXls5: TcxGridDBColumn;
    cxColXls6: TcxGridDBColumn;
    cxColXls7: TcxGridDBColumn;
    cxColXls8: TcxGridDBColumn;
    cxColXls9: TcxGridDBColumn;
    cxLevelLeveFilelExcelList: TcxGridLevel;
    pnl7: TPanel;
    img2: TImage;
    cxLabel19: TcxLabel;
    pnl_Notice: TPanel;
    Panel25: TPanel;
    cxLabel45: TcxLabel;
    cxLabel52: TcxLabel;
    cxLabel57: TcxLabel;
    cxLabel73: TcxLabel;
    cxLabel74: TcxLabel;
    btn_HelpClose: TcxButton;
    Panel16: TPanel;
    Image1: TImage;
    cxLabel51: TcxLabel;
    IdHTTP1: TIdHTTP;
    cxGridPBX3Column6: TcxGridBandedColumn;
    cxGrdPBX_vi_Excel: TcxGrid;
    cxGrdVPBX_vi_Excel: TcxGridBandedTableView;
    cxGridBandedColumn161: TcxGridBandedColumn;
    cxGridBandedColumn162: TcxGridBandedColumn;
    cxGridBandedColumn163: TcxGridBandedColumn;
    cxGridBandedColumn164: TcxGridBandedColumn;
    cxGridBandedColumn165: TcxGridBandedColumn;
    cxGridBandedColumn166: TcxGridBandedColumn;
    cxGridBandedColumn167: TcxGridBandedColumn;
    cxGridBandedColumn168: TcxGridBandedColumn;
    cxGridBandedColumn169: TcxGridBandedColumn;
    cxGridLevel21: TcxGridLevel;
    cxGrdPBX_bl_Excel: TcxGrid;
    cxGrdVPBX_bl_Excel: TcxGridBandedTableView;
    cxGridBandedColumn236: TcxGridBandedColumn;
    cxGridBandedColumn237: TcxGridBandedColumn;
    cxGridBandedColumn238: TcxGridBandedColumn;
    cxGridBandedColumn239: TcxGridBandedColumn;
    cxGridBandedColumn240: TcxGridBandedColumn;
    cxGridBandedColumn241: TcxGridBandedColumn;
    cxGridBandedColumn242: TcxGridBandedColumn;
    cxGridBandedColumn243: TcxGridBandedColumn;
    cxGridBandedColumn244: TcxGridBandedColumn;
    cxGridBandedColumn245: TcxGridBandedColumn;
    cxGridLevel34: TcxGridLevel;
    Shape15: TShape;
    Shape38: TShape;
    cxGroupBox29: TcxGroupBox;
    cxLabel9: TcxLabel;
    Shape10: TShape;
    Shape43: TShape;
    cxGroupBox30: TcxGroupBox;
    cxLabel11: TcxLabel;
    Shape44: TShape;
    pnl_MediaBase: TPanel;
    Shape48: TShape;
    procedure FormDestroy(Sender: TObject);
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MiTodayClick(Sender: TObject);
		procedure FormCreate(Sender: TObject);
    procedure btnSearch1Click(Sender: TObject);
    procedure cbGrpNm1PropertiesChange(Sender: TObject);
    procedure cbGrpNm2PropertiesChange(Sender: TObject);
    procedure btnSearch2Click(Sender: TObject);
    procedure btnSearch_wkClick(Sender: TObject);
    procedure btnExit_wkClick(Sender: TObject);
    procedure btnUp_wkClick(Sender: TObject);
    procedure cxGrdVPBX_wkCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSave_wkClick(Sender: TObject);
    procedure btnSearch_hdClick(Sender: TObject);
    procedure btnExit_hdClick(Sender: TObject);
    procedure btnIns_hdClick(Sender: TObject);
    procedure btnUp_hdClick(Sender: TObject);
    procedure cxGrdVPBX_hdCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxDtHDayPropertiesChange(Sender: TObject);
    procedure btnSave_hdClick(Sender: TObject);
    procedure btnDel_hdClick(Sender: TObject);
    procedure MiYesterdayClick(Sender: TObject);
    procedure MiOneWeekClick(Sender: TObject);
    procedure MiOneMonthClick(Sender: TObject);
    procedure MiStartMonthClick(Sender: TObject);
    procedure cbChartKindA1PropertiesChange(Sender: TObject);
    procedure cbKindA1PropertiesChange(Sender: TObject);
    procedure cbChartKindA1_2PropertiesChange(Sender: TObject);
    procedure cbChartKindA1_3PropertiesChange(Sender: TObject);
    procedure cbKindA1_2PropertiesChange(Sender: TObject);
    procedure cbKindA1_3PropertiesChange(Sender: TObject);
    procedure cbChartKindA2_1PropertiesChange(Sender: TObject);
    procedure cbKindA2_1PropertiesChange(Sender: TObject);
    procedure cbChartKindA2_2PropertiesChange(Sender: TObject);
    procedure cbKindA2_2PropertiesChange(Sender: TObject);
    procedure cbChartKindA2_3PropertiesChange(Sender: TObject);
    procedure cbKindA2_3PropertiesChange(Sender: TObject);
    procedure btnSch_vi_sClick(Sender: TObject);
    procedure btnSearch_viClick(Sender: TObject);
    procedure btnIns_viClick(Sender: TObject);
		procedure btnExit_viClick(Sender: TObject);
    procedure btnSave_viClick(Sender: TObject);
    procedure btnDel_viClick(Sender: TObject);
		procedure cxGrdVPBX_viCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnUp_viClick(Sender: TObject);
    procedure cxGrdVPBX_vi_sCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSch_bl_sClick(Sender: TObject);
    procedure btnSearch_blClick(Sender: TObject);
    procedure btnIns_blClick(Sender: TObject);
    procedure btnUp_blClick(Sender: TObject);
    procedure btnDel_blClick(Sender: TObject);
    procedure btnSave_blClick(Sender: TObject);
    procedure btnExit_blClick(Sender: TObject);
    procedure cxGrdVPBX_bl_sCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
		procedure cxGrdVPBX_blCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grpWorkSetMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grpHdaySetMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grpVipSetMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grpBListSetMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnFileUpLoadClick(Sender: TObject);
    procedure btnFileUp_viClick(Sender: TObject);
    procedure btnFileUp_blClick(Sender: TObject);
    procedure btnFileUpExitClick(Sender: TObject);
    procedure grpFileUploadMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnFileUpSaveClick(Sender: TObject);
    procedure btnExcel_blClick(Sender: TObject);
    procedure btnExcel_viClick(Sender: TObject);
    procedure btnExcel_hdClick(Sender: TObject);
		procedure btnExcel_wkClick(Sender: TObject);
    procedure cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure btnGraph_clClick(Sender: TObject);
    procedure btnGraphExit_cl_aClick(Sender: TObject);
    procedure btnGraphExit_cl_tClick(Sender: TObject);
    procedure btnGraphExit_cl_dClick(Sender: TObject);
    procedure btnGraph_caClick(Sender: TObject);
    procedure btnGraphExit_ca_aClick(Sender: TObject);
    procedure btnGraphExit_ca_tClick(Sender: TObject);
    procedure btnGraphExit_ca_dClick(Sender: TObject);
    procedure btnSearch_psClick(Sender: TObject);
    procedure cxGrdVPBX_psCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnUp_psClick(Sender: TObject);
    procedure btn_3_1Click(Sender: TObject);
    procedure btn_3_2Click(Sender: TObject);
    procedure btn_3_3Click(Sender: TObject);
    procedure btn_3_4Click(Sender: TObject);
    procedure cxGridPBX3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_4_1Click(Sender: TObject);
    procedure btn_4_2Click(Sender: TObject);
    procedure btn_4_3Click(Sender: TObject);
    procedure btn_4_4Click(Sender: TObject);
    procedure cxGridPBX4CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridPBX4ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
		procedure cxGridPBX4DataControllerSortingChanged(Sender: TObject);
		procedure btn_5_1Click(Sender: TObject);
    procedure btn_5_2Click(Sender: TObject);
		procedure btn_5_3Click(Sender: TObject);
    procedure btn_5_4Click(Sender: TObject);
    procedure btn_6_1Click(Sender: TObject);
		procedure btn_6_2Click(Sender: TObject);
    procedure btn_6_3Click(Sender: TObject);
		procedure btn_6_4Click(Sender: TObject);
    procedure cxGridPBX6DataControllerSortingChanged(Sender: TObject);
    procedure cxGridPBX6CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridPBX6ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btn_7_1Click(Sender: TObject);
    procedure btn_7_3Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure cxGridPBX8_1DataControllerSortingChanged(Sender: TObject);
    procedure cxGridPBX8_1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridPBX8_1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
		procedure cxGridDBColumn45PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cb_8_1PropertiesChange(Sender: TObject);
    procedure cb_8_2PropertiesChange(Sender: TObject);
		procedure btn_8_1Click(Sender: TObject);
    procedure btn_8_2Click(Sender: TObject);
    procedure btn_8_4Click(Sender: TObject);
    procedure btnSearch_qeClick(Sender: TObject);
    procedure btnUpdate_qeClick(Sender: TObject);
    procedure lbGrpNm9Click(Sender: TObject);
    procedure edtGrpNm_qe_sEnter(Sender: TObject);
    procedure edtGrpNm_qe_sExit(Sender: TObject);
    procedure edtGrpNm_qe_sFocusChanged(Sender: TObject);
    procedure edtGrpNm_qe_sKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lst_IDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lst_IDExit(Sender: TObject);
    procedure lst_IDDblClick(Sender: TObject);
    procedure edtAgtNm_qe_sExit(Sender: TObject);
    procedure edtAgtNm_qe_sFocusChanged(Sender: TObject);
    procedure edtAgtNm_qe_sEnter(Sender: TObject);
    procedure edtAgtNm_qe_sKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_Keynumber10Enter(Sender: TObject);
    procedure edt_Keynumber10Exit(Sender: TObject);
		procedure edt_Keynumber10FocusChanged(Sender: TObject);
    procedure edt_Keynumber10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbKeynumber10Click(Sender: TObject);
    procedure tmrSI415ATimer(Sender: TObject);
    procedure btnCancel_ai_gClick(Sender: TObject);
    procedure btnSave_ai_gClick(Sender: TObject);
    procedure edtGrpId_ai_gKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtGrpNm_ai_gKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtGrpDesc_ai_gKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSave_ai_sClick(Sender: TObject);
    procedure btnCancel_ai_sClick(Sender: TObject);
    procedure cxGridPBX5ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridPBX5DataControllerSortingChanged(Sender: TObject);
    procedure btn_4_5Click(Sender: TObject);
		procedure btn_5_5Click(Sender: TObject);
    procedure cxGridPBX5CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSave_ad_sClick(Sender: TObject);
    procedure btnCancel_ad_sClick(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure btnSch_grp_qe_sClick(Sender: TObject);
    procedure cxGrdVPBX_grp_qe_sCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSch_agt_qe_sClick(Sender: TObject);
    procedure lbAgtNm9Click(Sender: TObject);
    procedure cxGrdVPBX_agt_qe_sCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCopy_qeClick(Sender: TObject);
    procedure btnPaste_qeClick(Sender: TObject);
    procedure btnSearch_qe_pClick(Sender: TObject);
    procedure btnInsert_qe_pClick(Sender: TObject);
    procedure btnSch_Ext_qe_pClick(Sender: TObject);
    procedure btnSch_grp_qe_pClick(Sender: TObject);
    procedure edtGrpNm_qe_pEnter(Sender: TObject);
    procedure edtGrpNm_qe_pExit(Sender: TObject);
    procedure edtGrpNm_qe_pFocusChanged(Sender: TObject);
		procedure edtGrpNm_qe_pKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbGrpNm10Click(Sender: TObject);
    procedure lbAgtNm10Click(Sender: TObject);
    procedure edtAgtNm_qe_pEnter(Sender: TObject);
    procedure edtAgtNm_qe_pExit(Sender: TObject);
    procedure edtAgtNm_qe_pFocusChanged(Sender: TObject);
    procedure edtAgtNm_qe_pKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSch_agt_qe_pClick(Sender: TObject);
    procedure cxGrdVPBX_ext_qe_pCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrdVPBX_grp_qe_pCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
		procedure cxGrdVPBX_agt_qe_pCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnExit_qeClick(Sender: TObject);
    procedure btnUpdate_qe_pClick(Sender: TObject);
    procedure btnSave_qeClick(Sender: TObject);
    procedure btnDelete_qe_pClick(Sender: TObject);
    procedure cxGridPBX10CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridPBX8_2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGridPBX3Bands0HeaderClick(Sender: TObject);
    procedure edt_5_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_3_5Click(Sender: TObject);
    procedure btn_6_5Click(Sender: TObject);
    procedure btn_7_5Click(Sender: TObject);
    procedure btnExcel_psClick(Sender: TObject);
    procedure grpAdminSetMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtSearch_3_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure cbGrpNm4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_6_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbMngNm7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcel_clClick(Sender: TObject);
    procedure btnExcel_caClick(Sender: TObject);
    procedure edtCallIdS_blKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCallNmS_blKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCallIdS_viKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCallNmS_viKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
		procedure edtCallIdS_viKeyPress(Sender: TObject; var Key: Char);
    procedure edtCallId_viKeyPress(Sender: TObject; var Key: Char);
    procedure edtCallId_blKeyPress(Sender: TObject; var Key: Char);
    procedure edtCallIdS_blKeyPress(Sender: TObject; var Key: Char);
    procedure edtLunchSKeyPress(Sender: TObject; var Key: Char);
    procedure edtLunchEKeyPress(Sender: TObject; var Key: Char);
    procedure btn_8_5Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure btn_6_6Click(Sender: TObject);
    procedure btn_PwCloseClick(Sender: TObject);
    procedure btn_PwChangeClick(Sender: TObject);
		procedure edt_NowPwKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_NewPWKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_ConfirmPwKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_HelpCloseClick(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure cbMngNm7PropertiesChange(Sender: TObject);
    procedure cxGridPBX7Bands0HeaderClick(Sender: TObject);
    procedure cxGridPBX6Bands0HeaderClick(Sender: TObject);
    procedure cxGridPBX5Bands0HeaderClick(Sender: TObject);
    procedure cxGridPBX4Bands0HeaderClick(Sender: TObject);
    procedure cxGridPBX9Bands0HeaderClick(Sender: TObject);
    procedure cxGridPBX10Bands0HeaderClick(Sender: TObject);
    procedure cxGrdVPBX_viBands0HeaderClick(Sender: TObject);
    procedure cxGrdVPBX_blBands0HeaderClick(Sender: TObject);
    procedure cxGridBandedColumn3PropertiesEditValueChanged(Sender: TObject);
	private
		{ Private declarations }
		slGrpId : TStringList;
		slAgtId : array[1..10] of TStringList;
		slManagerID : TStringList;

		ACol : integer;
		slGroupTmp, slIDTmp, slCallDistTmp : TStringList;

		FExcelDown_VI, FExcelDown_BL : String;

		giGrpId, giNo : Integer;

		giMenteListGubun : integer;
		
		procedure proc_init;

		procedure pSnd_GroupList;
		procedure pSnd_AgentList( iGId : Integer; aGrpId : String );
		procedure pSnd_ManagerList;

    procedure pAgtGroupInit;
    procedure proc_6100ResultMsg(AData, AResult: string);

    procedure pAgentInit;
		procedure proc_6200ResultMsg(AData, AResult: string);

    procedure PAdminInit;
    procedure proc_6300ResultMsg(AData, AResult: string);

    procedure pProductSInit;
		procedure pProductSLoad;

    procedure pWorkDayInit;
    procedure pWorkDayLoad;

    procedure pHoliDayInit;
    procedure pHoliDayLoad;

    procedure pVipInit;
    procedure pVipLoad;
    procedure pVipSearch;

    procedure pSnd_Vip_InboundList;

    procedure pBlackListInit;
    procedure pBlackListLoad;
    procedure pBlackListSearch;

    procedure pSnd_BlackList_InboundList;

    procedure pSnd_HoGroup( iGubun : Integer; AGrp : String );
    procedure pSnd_HoAgent( iGubun : Integer; AGrp, AAgt : String );

    procedure pSetCallListChart1_1;
    procedure pSetCallListChart1_2;
		procedure pSetCallListChart1_3;

    procedure pSetCallAnalChart1_1;
    procedure pSetCallAnalChart1_2;
    procedure pSetCallAnalChart1_3;

    procedure pShowFileUpload( iG : Integer );

		function ExcelToGridEx(AFilename: string;
						 AView: TcxGridDBTableView; AGauge: TAdvProgressBar): Boolean;

    procedure pSetGraphSlide( Var APanel : TPanel; iType, iWH : Integer );

		procedure pSnd_CallDistribution;
		procedure proc_ResultMsg(APid, AResult, AGubun : string);
		procedure proc_Set_SystemMente;
		procedure proc_Get_MenteList(AMenteID : string; AGubun : integer);    //AGubun =0전체, 1리스트
		function func_FileDown(ALink : string) : Boolean;
	public
		{ Public declarations }

		FMenteCombo, FMente, FSYSMente : TMenteLIST;
		procedure proc_recieve( aStr, aPid : String; bNext : Boolean );
    procedure pRcv_Vip_InboundList( sData : String );
    procedure pRcv_BlackList_InboundList( sData : String );
		procedure pRcv_GroupList( sData : String );
		procedure pRcv_AgentList( sData : String );
		procedure pRcv_ManagerList( sData : String );
		procedure pRcv_HoGroup( sData : String );
		procedure pRcv_HoAgent( sData : String );
		procedure pRcv_CallDistribution( sData : String );


		procedure proc_SI415Receive(AData, ACode: Ansistring);
		procedure proc_6011(AJson, APid: string; ANext : Boolean);
		procedure proc_6111(AJson: string; ANext : Boolean);
		procedure proc_6211(AJson: string; ANext : Boolean);
		procedure proc_6311(AJson: string; ANext : Boolean);
		procedure proc_6361(AJson: string; ANext : Boolean);   //관리자 권한 설정
		procedure proc_6911(AJson: string; ANext : Boolean);   //호분배 권한 조회
		procedure proc_7011(AJson: string; ANext : Boolean);   //호분배 우선순위 권한 조회
		procedure proc_6811(AJson: string; ANext : Boolean);   //시스템멘트 설정 조회
		procedure proc_6831(AJson: string; ANext : Boolean);
		procedure proc_6831_List(AJson: string; ANext : Boolean);
	end;

var
	frm_PBX: Tfrm_PBX;

implementation

{$R *.dfm}

uses xe_Lib, xe_Func, CidSi415Lib, xe_GNL, xe_Msg, Main, xe_PBX01, xe_PBX02,
		 xe_PBX05, xe_PBX06, xe_PBX08, xe_Media_1, xe_Media_2;

function fgetDayOfWeek( Date : TDateTime ) : String;
Var iDay : Integer;
begin
  iDay := dayofweek(Date);
  case iDay of
    1 : Result := '일요일';  
    2 : Result := '월요일';  
    3 : Result := '화요일';  
    4 : Result := '수요일';  
    5 : Result := '목요일';  
    6 : Result := '금요일';
    7 : Result := '토요일';                          
  end;
end;

procedure Tfrm_PBX.btnCancel_ad_sClick(Sender: TObject);
begin
  grpAdminSet.Visible := False;
end;

procedure Tfrm_PBX.btnCancel_ai_gClick(Sender: TObject);
begin
  grpAgtGroup.Visible := False;
end;

procedure Tfrm_PBX.btnCancel_ai_sClick(Sender: TObject);
begin
  grpAgentSet.Visible := False;
end;

procedure Tfrm_PBX.btnCopy_qeClick(Sender: TObject);
var
  i : Integer;
  sQExtenCode : string;
  sl_Role: TStringList;
begin
	try
    if cxGridPBX9.DataController.RecordCount = 0 then Exit;

    sl_Role := TStringList.Create;
    for i := 0 to cxGridPBX9.DataController.RecordCount - 1 do
    begin
			if cxGridPBX9.DataController.Values[i, 0] = True then
      begin
        sQExtenCode := cxGridPBX9.DataController.Values[i, 1];
				sl_Role.Add(sQExtenCode);
			end;
    end;
    sl_Role.SaveToFile(DBDIRECTORY + 'PermissionQExten.tmp');
    btnPaste_qe.Enabled := True;
    GMessagebox('권한을 복사 하였습니다.', CDMSI);

  except
    GMessagebox('권한 복사가 실패하였습니다.', CDMSI);
  end;
  FreeAndNil(sl_Role);
end;

procedure Tfrm_PBX.btnDel_blClick(Sender: TObject);
Var i : Integer;
    sParam, sMsg : String;
begin
  try
    sParam := '';
    for i := 0 to cxGrdVPBX_bl.DataController.RecordCount - 1 do
    begin
      if cxGrdVPBX_bl.DataController.Values[i, 0] = True then
      begin
        if sParam = '' then
          sParam := cxGrdVPBX_bl.DataController.Values[i, 9]
        else
          sParam := sParam + ',' + cxGrdVPBX_bl.DataController.Values[i, 9];
      end;
    end;

    if sParam = '' then Exit;

    sMsg := '선택하신 수신거부고객을 삭제하시겠습니까?';
    if Application.MessageBox(PChar(sMsg), 'CDMS', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
    begin
      pSI_6650_Send(sParam)
    end;
  except
  end;
end;

procedure Tfrm_PBX.btnDel_hdClick(Sender: TObject);
Var i : Integer;
    sParam, sMsg : String;
begin
  try
    sParam := '';
    for i := 0 to cxGrdVPBX_hd.DataController.RecordCount - 1 do
    begin
      if cxGrdVPBX_hd.DataController.Values[i, 0] = True then
      begin
        if sParam = '' then
          sParam := cxGrdVPBX_hd.DataController.Values[i, 1]
        else
          sParam := sParam + ',' + cxGrdVPBX_hd.DataController.Values[i, 1];
      end;
    end;

    if sParam = '' then Exit;

    sMsg := '선택하신 휴일을 삭제하시겠습니까?';
    if Application.MessageBox(PChar(sMsg), 'CDMS', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
    begin
      pSI_6550_Send(sParam)
    end;
  except
  end;
end;

procedure Tfrm_PBX.btnExit_wkClick(Sender: TObject);
begin
  grpWorkSet.Visible := False;
end;

procedure Tfrm_PBX.btnFileUp_blClick(Sender: TObject);
begin
  pShowFileUpload(2);
end;

procedure Tfrm_PBX.btnFileUp_viClick(Sender: TObject);
begin
	pShowFileUpload(1);
end;

procedure Tfrm_PBX.btnGraphExit_ca_aClick(Sender: TObject);
begin
  pSetGraphSlide(pnlChart_ca_a, 4, 0);
end;

procedure Tfrm_PBX.btnGraphExit_ca_dClick(Sender: TObject);
begin
  pSetGraphSlide(pnlChart_ca_d, 2, 0);
end;

procedure Tfrm_PBX.btnGraphExit_ca_tClick(Sender: TObject);
begin
  pSetGraphSlide(pnlChart_ca_t, 2, 0);
end;

procedure Tfrm_PBX.btnGraphExit_cl_aClick(Sender: TObject);
begin
  pSetGraphSlide(pnlChart_cl_a, 4, 0);
end;

procedure Tfrm_PBX.btnGraphExit_cl_dClick(Sender: TObject);
begin
  pSetGraphSlide(pnlChart_cl_d, 2, 0);
end;

procedure Tfrm_PBX.btnGraphExit_cl_tClick(Sender: TObject);
begin
  pSetGraphSlide(pnlChart_cl_t, 2, 0);
end;

procedure Tfrm_PBX.btnGraph_clClick(Sender: TObject);
begin
  if cxPC_cl.ActivePageIndex = 0 then
  begin
    if pnlChart_cl_a.Height < 10 then pSetGraphSlide(pnlChart_cl_a, 3, 194)
                                 else pSetGraphSlide(pnlChart_cl_a, 4, 0);
  end else
  if cxPC_cl.ActivePageIndex = 1 then
  begin
    if pnlChart_cl_t.Width < 10 then pSetGraphSlide(pnlChart_cl_t, 1, 350)
                                else pSetGraphSlide(pnlChart_cl_t, 2, 0);
  end else
  if cxPC_cl.ActivePageIndex = 2 then
  begin
    if pnlChart_cl_d.Width < 10 then pSetGraphSlide(pnlChart_cl_d, 1, 350)
                                else pSetGraphSlide(pnlChart_cl_d, 2, 0);
  end;
end;

procedure Tfrm_PBX.btnSave_wkClick(Sender: TObject);
Var sParam : String;
begin
  try
		if (length(edtLunchS.Text) <> 4) or (StrToIntDef(edtLunchS.Text, -1) < 0) or (StrToIntDef(edtLunchS.Text, -1) > 2359) then
		begin
			showmessage('점심시작시간이 잘못 입력되었습니다.' +#13#10 + '0000 ~ 2359 까지의 값을 설정해주세요');
			edtLunchS.SetFocus;
			exit;
		end;
		if (length(edtLunchE.Text) <> 4) or (StrToIntDef(edtLunchE.Text, -1) < 0) or (StrToIntDef(edtLunchE.Text, -1) > 2359) then
		begin
			showmessage('점심종료시간이 잘못 입력되었습니다.' +#13#10 + '0000 ~ 2359 까지의 값을 설정해주세요');
			edtLunchE.SetFocus;
			exit;
		end;

		if cbWorkDay.ItemIndex = 0 then sParam := '1' else
    if cbWorkDay.ItemIndex = 1 then sParam := '2' else
    if cbWorkDay.ItemIndex = 2 then sParam := '3';

		sParam := sParam + '│' + edtWorkS.Text;
    sParam := sParam + '│' + edtWorkE.Text;
    if cbUseWork.ItemIndex = 0 then sParam := sParam + '│' + 'Y' else
    if cbUseWork.ItemIndex = 1 then sParam := sParam + '│' + 'N';

    sParam := sParam + '│' + edtBreakS.Text;
		sParam := sParam + '│' + edtBreakE.Text;
    if cbUseBreak.ItemIndex = 0 then sParam := sParam + '│' + 'Y' else
    if cbUseBreak.ItemIndex = 1 then sParam := sParam + '│' + 'N';

    sParam := sParam + '│' + edtLunchS.Text;
    sParam := sParam + '│' + edtLunchE.Text;
    if cbUseLunch.ItemIndex = 0 then sParam := sParam + '│' + 'Y' else
    if cbUseLunch.ItemIndex = 1 then sParam := sParam + '│' + 'N';

    sParam := sParam + '│' + edtDinnerS.Text;
    sParam := sParam + '│' + edtDinnerE.Text;
    if cbUseDinner.ItemIndex = 0 then sParam := sParam + '│' + 'Y' else
    if cbUseDinner.ItemIndex = 1 then sParam := sParam + '│' + 'N';

    sParam := sParam + '│' + GT_USERIF.NM;

    pSI_6430_Send(sParam);

    grpWorkSet.Visible := False;
//    pSI_6431_Recv('64115023                    331          00');
  except
  end;
end;

procedure Tfrm_PBX.btnSave_ad_sClick(Sender: TObject);
var sParam, sTmp, sStr : string;
begin
	Try
		if Trim(edt_ID.Text) = '' then
		begin
			GMessagebox('관리자 ID를 입력하세요.', CDMSI);
			Exit;
    end;

		sParam := Trim(edt_ID.Text);
		sParam := sParam + '│' + Trim(edt_PW.Text);
		sParam := sParam + '│' + Trim(edt_NM.Text);
		sParam := sParam + '│' + Trim(edt_Desc.Text);
		sParam := sParam + '│' + Trim(edt_ExtNo.Text);
		if cb_Level.ItemIndex = 0 then sParam := sParam + '│' + '2' else
		if cb_Level.ItemIndex = 1 then sParam := sParam + '│' + '4' else sParam := sParam + '│' + '';
		sParam := sParam + '│' + Trim(GT_Si415_INFO.ID);

		if grpAdminSet.tag = 0 then sTmp := '6320' else sTmp := '6330';
		sStr := fSI_6320_30_Send(sTmp, sParam);
	except
	End;
end;

procedure Tfrm_PBX.btnSave_ai_gClick(Sender: TObject);
var sParam, sStr, sTmp : string;
begin
	Try
		sParam := '';
		sParam := edtGrpId_ai_g.Text;
		sParam := sParam + '│' + edtGrpNm_ai_g.Text;
		sParam := sParam + '│' + edtGrpDesc_ai_g.Text;
		sParam := sParam + '│' + GT_Si415_INFO.ID;
		if grpAgtGroup.Tag = 0 then sTmp := '6120' else sTmp := '6130';
		sStr := fSI_6120_30_Send(sTmp, sParam);
	except
  End;
end;

procedure Tfrm_PBX.btnSave_ai_sClick(Sender: TObject);
var sParam, sStr, sTmp : string;
	idx, iTmp : integer;
	sGId : string;
begin
	if Trim(edtAgtId_ai_s.Text) = '' then
  begin
		GMessagebox('상담원 ID를 입력하세요.', CDMSI);
    Exit;
  end;

	idx := cbGrpNm5s.Properties.Items.IndexOf(cbGrpNm5s.Text);
	if idx < 1 then
  begin
		GMessagebox('상담그룹명을 선택하세요.', CDMSI);
		cbGrpNm5s.setfocus;
		Exit;
	end;
  sGId := slGrpId.Strings[idx];

	iTmp := StrToIntDef(Trim(edtAutoWaitSec_ai_s.Text), 0);
	if iTmp < 5 then 
	begin
		GMessagebox('전화끊고 대기는 5초이상 입력하셔야 합니다.', CDMSI);
		edtAutoWaitSec_ai_s.setfocus;
		Exit;
	end;
	
	Try
		sParam := '';
		sParam := Trim(edtAgtId_ai_s.Text);
		sParam := sParam + '│' + Trim(edtAgtPw_ai_s.Text);
		sParam := sParam + '│' + Trim(edtAgtNm_ai_s.Text);
		sParam := sParam + '│' + Trim(sGId);
		sParam := sParam + '│' + Trim(edtAgtDesc_ai_s.Text);

		sParam := sParam + '│' + '0';
{		if cbAgtType_ai_s.ItemIndex = 0 then sParam := sParam + '│' + '0' else
		if cbAgtType_ai_s.ItemIndex = 1 then sParam := sParam + '│' + '1' else
		if cbAgtType_ai_s.ItemIndex = 2 then sParam := sParam + '│' + '2' ; }

		sParam := sParam + '│' + Trim(edtExtNo_ai_s.Text);
		if cbAutoAnswerYn_ai_s.ItemIndex = 0 then sParam := sParam + '│' + 'N' else sParam := sParam + '│' + 'Y' ;
		sParam := sParam + '│' + Trim(edtAutoAnswerSec_ai_s.Text);
		if cbPrefixYn_ai_s.ItemIndex = 0 then sParam := sParam + '│' + 'N' else sParam := sParam + '│' + 'Y' ;
		sParam := sParam + '│' + Trim(edtPrefix_ai_s.Text);
		if cbMarkingYn_ai_s.ItemIndex = 0 then sParam := sParam + '│' + 'N' else sParam := sParam + '│' + 'Y' ;
		if cbAutoWaitYn_ai_s.ItemIndex = 0 then sParam := sParam + '│' + 'N' else sParam := sParam + '│' + 'Y' ;
		sParam := sParam + '│' + Trim(edtAutoWaitSec_ai_s.Text);
		if cbAgtLevel_ai_s.ItemIndex = 0 then sParam := sParam + '│' + '0' else sParam := sParam + '│' + '6' ;
		sParam := sParam + '│' + Trim(GT_Si415_INFO.ID);

		if grpAgentSet.tag = 0 then sTmp := '6220' else sTmp := '6230';
		sStr := fSI_6220_30_Send(sTmp, sParam);
	except
  End;
end;

procedure Tfrm_PBX.pAgtGroupInit;
begin
	edtGrpId_ai_g.enabled := True;
	edtGrpId_ai_g.text := '';
	edtGrpNm_ai_g.text := '';
	edtGrpDesc_ai_g.text := '';
end;

procedure Tfrm_PBX.proc_6100ResultMsg(AData, AResult: string);
begin
	if AResult = '00' then
	begin
		GMessagebox('저장되었습니다.', CDMSI);
		btn_4_1.click;
		btnCancel_ai_g.Click;
	end else
	begin
		GMessagebox(Format('저장 중 오류발생'#13#10'[에러코드]%s', [ AResult]), CDMSI);
	end;
end;

procedure Tfrm_PBX.pAgentInit;
begin
	edtAgtId_ai_s.enabled := True;

	edtAgtId_ai_s.Text := '';
	edtAgtPw_ai_s.Text := '';
	edtAgtNm_ai_s.Text := '';
  cbGrpNm5s.ItemIndex := 0;
	edtAgtDesc_ai_s.Text := '';
	cbAgtType_ai_s.ItemIndex := 0;
	edtExtNo_ai_s.Text := '';
	edtAutoAnswerSec_ai_s.Text := '';
	cbAutoAnswerYn_ai_s.ItemIndex := 1;
	edtPrefix_ai_s.Text := '';
	cbPrefixYn_ai_s.ItemIndex := 0;
	edtAutoWaitSec_ai_s.Text := '5';
	cbAutoWaitYn_ai_s.ItemIndex := 0;
	cbMarkingYn_ai_s.ItemIndex := 0;
	cbAgtLevel_ai_s.ItemIndex := 0;

	chk_Clear.Visible := True;
	grpAgentSet.Tag := 0;
end;

procedure Tfrm_PBX.proc_6200ResultMsg(AData, AResult: string);
begin
	if AResult = '00' then
	begin
		GMessagebox('저장되었습니다.', CDMSI);
		btn_5_1.click;
		if chk_Clear.Checked then
		begin
			pAgentInit;
			edtAgtId_ai_s.SetFocus;
		end
		else
			btnCancel_ai_s.click;
	end else
	begin
		GMessagebox(Format('저장 중 오류발생'#13#10'[에러코드]%s', [ AResult]), CDMSI);
	end;
end;

procedure Tfrm_PBX.pAdminInit;
begin
	edt_ID.enabled := True;

	edt_id.Text := '';
	edt_PW.Text := '';
	edt_NM.Text := '';
	edt_Desc.Text := '';
	edt_ExtNo.Text := '';
	cb_Level.ItemIndex := 0;

	grpAdminSet.Tag := 0;
end;

procedure Tfrm_PBX.proc_6300ResultMsg(AData, AResult: string);
begin
	if AResult = '00' then
	begin
		GMessagebox('저장되었습니다.', CDMSI);
		btn_6_1.click;
		btnCancel_ad_s.Click;
	end else
	begin
		GMessagebox(Format('저장 중 오류발생'#13#10'[에러코드]%s', [ AResult]), CDMSI);
	end;
end;

procedure Tfrm_PBX.btnSave_blClick(Sender: TObject);
Var sParam : String;
begin
	try
    if edtQexen_bl.Tag = -1 then
    begin
			sParam := edtQexen_bl.Text;
			sParam := sParam + '│' + edtCallId_bl.Text;
			sParam := sParam + '│' + edtCallNm_bl.Text;
			sParam := sParam + '│' + edtCallDesc_bl.Text;
			if cbType_bl.ItemIndex = 0 then
				sParam := sParam + '│5' else
			if cbType_bl.ItemIndex = 1 then
				sParam := sParam + '│2';

			pSI_6620_Send(sParam);
		end else
    begin
      sParam := IntToStr(edtQexen_bl.Tag);
			sParam := sParam + '│' + edtQexen_bl.Text;
			sParam := sParam + '│' + edtCallId_bl.Text;
      sParam := sParam + '│' + edtCallNm_bl.Text;
      sParam := sParam + '│' + edtCallDesc_bl.Text;
      if cbType_bl.ItemIndex = 0 then
        sParam := sParam + '│5' else
      if cbType_bl.ItemIndex = 1 then
        sParam := sParam + '│2';

      pSI_6630_Send(sParam);
    end;

    grpBListSet.Visible := False;
//    pSI_6700_Recv('66215023                    331          00');
  except
  end;
end;

procedure Tfrm_PBX.btnSave_hdClick(Sender: TObject);
Var sParam : String;
begin
  try 
    if Trim(lblOHday.Hint) = '' then
    begin
      sParam := cxDtHDay.Text;
      sParam := sParam + '│' + IntToStr(dayofweek(cxDtHDay.Date));
      sParam := sParam + '│' + edtContents.Text;

			pSI_6520_Send(sParam);
    end else
    begin
      sParam := lblOHday.Hint;
      sParam := sParam + '│' + cxDtHDay.Text;
      sParam := sParam + '│' + IntToStr(dayofweek(cxDtHDay.Date));
      sParam := sParam + '│' + edtContents.Text;

      pSI_6530_Send(sParam);
    end;
    grpHdaySet.Visible := False;
//    pSI_6500_Recv('65215023                    331          00');
  except
  end;
end;

procedure Tfrm_PBX.btnSave_qeClick(Sender: TObject);
var sParam, sStr, sTmp : string;
	  sAId : string;
begin
  if cbAgtNm10_1.ItemIndex <= 0 then
  begin
		GMessagebox('상담원을 선택하세요.', CDMSI);
    Exit;
  end;

  sAId := cbAgtNm10_1.Text;

	Try
		sParam := Trim(edtCallDist.Hint);
		sParam := sParam + '│' + Trim(sAId);
		sParam := sParam + '│' + Trim(cbPriority.Text);

		if grpCallDistSet.Tag = 0 then sTmp := '7020' else sTmp := '7030';
		sStr := fSI_7020_30_Send(sTmp, sParam);
	except
	End;
end;

procedure Tfrm_PBX.btnSch_agt_qe_pClick(Sender: TObject);
Var iRow : Integer;
    sGrp, sAgt : String;
begin
  iRow := cxGrdVPBX_grp_qe_p.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  sGrp := cxGrdVPBX_grp_qe_p.DataController.Values[iRow, 1];
  sAgt := edtAgtNm_qe_p.Text;

  pSnd_HoAgent(2, sGrp, sAgt);
end;

procedure Tfrm_PBX.btnSch_agt_qe_sClick(Sender: TObject);
Var iRow : Integer;
    sGrp, sAgt : String;
begin
  iRow := cxGrdVPBX_grp_qe_s.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  sGrp := cxGrdVPBX_grp_qe_s.DataController.Values[iRow, 1];
  sAgt := edtAgtNm_qe_s.Text;

  pSnd_HoAgent(1, sGrp, sAgt);
end;

procedure Tfrm_PBX.btnSch_bl_sClick(Sender: TObject);
begin
  lblTitle_bl.Hint := '';
  lblTitle_bl.Caption := '';

  cxGrdVPBX_bl.DataController.SetRecordCount(0);

  btnSch_bl_s.Tag := 1;
  pSnd_BlackList_InboundList;
end;

procedure Tfrm_PBX.btnSch_Ext_qe_pClick(Sender: TObject);
begin
  btnSch_Ext_qe_p.Tag := 1;
	pSnd_CallDistribution;
end;

procedure Tfrm_PBX.btnSch_vi_sClick(Sender: TObject);
begin
  lblTitle_vi.Hint := '';
  lblTitle_vi.Caption := '';

  cxGrdVPBX_vi.DataController.SetRecordCount(0);

  btnSch_vi_s.Tag := 1;
  pSnd_Vip_InboundList;
end;

procedure Tfrm_PBX.btnSearch1Click(Sender: TObject);
Var sPId, sGId, sAId : String;
    idx : Integer;
begin
  if cxPC_cl.ActivePageIndex = 0 then
  begin
    sPid := '5410';
    cxGrdVPBX_cl_a.DataController.SetRecordCount(0);
    cxGrdVPBX_clK_a.DataController.SetRecordCount(0);
  end else
  if cxPC_cl.ActivePageIndex = 1 then
  begin
    sPid := '5420';
    cxGrdVPBX_cl_t.DataController.SetRecordCount(0);
  end else
  if cxPC_cl.ActivePageIndex = 2 then
  begin
    sPid := '5430';
    cxGrdVPBX_cl_d.DataController.SetRecordCount(0);
  end;

  idx := cbGrpNm1.Properties.Items.IndexOf(cbGrpNM1.Text);
  if idx <= 0 then sGId := ''
              else sGId := slGrpId.Strings[idx];

  idx := cbAgtNm1.Properties.Items.IndexOf(cbAgtNM1.Text);
  if idx <= 0 then sAId := ''
              else sAId := slAgtId[1].Strings[idx];

  pSI_5455_Send( sPId, FormatDatetime('YYYY-MM-DD', cxDtStart_cl.Date),
                       FormatDatetime('YYYY-MM-DD', cxDtEnd_cl.Date), sGId, sAId );
end;

procedure Tfrm_PBX.cbChartKindA1PropertiesChange(Sender: TObject);
begin
	case TcxComboBox(sender).ItemIndex of
		0 : cxGrdCvPBX_cl_a.DiagramColumn.Active := True;
		1 : cxGrdCvPBX_cl_a.DiagramBar.Active := True;
		2 : cxGrdCvPBX_cl_a.DiagramStackedArea.Active := True;
		3 : cxGrdCvPBX_cl_a.DiagramStackedBar.Active := True;
		4 : cxGrdCvPBX_cl_a.DiagramStackedColumn.Active := True;
		5 : cxGrdCvPBX_cl_a.DiagramLine.Active := True;
		6 : cxGrdCvPBX_cl_a.DiagramArea.Active := True;
		7 : cxGrdCvPBX_cl_a.DiagramPie.Active := True;
	end;
end;

procedure Tfrm_PBX.cbChartKindA1_2PropertiesChange(Sender: TObject);
begin
	case TcxComboBox(sender).ItemIndex of
		0 : cxGrdCvPBX_cl_t.DiagramColumn.Active := True;
		1 : cxGrdCvPBX_cl_t.DiagramBar.Active := True;
		2 : cxGrdCvPBX_cl_t.DiagramStackedArea.Active := True;
		3 : cxGrdCvPBX_cl_t.DiagramStackedBar.Active := True;
		4 : cxGrdCvPBX_cl_t.DiagramStackedColumn.Active := True;
		5 : cxGrdCvPBX_cl_t.DiagramLine.Active := True;
		6 : cxGrdCvPBX_cl_t.DiagramArea.Active := True;
		7 : cxGrdCvPBX_cl_t.DiagramPie.Active := True;
	end;
end;

procedure Tfrm_PBX.cbChartKindA1_3PropertiesChange(Sender: TObject);
begin
	case TcxComboBox(sender).ItemIndex of
		0 : cxGrdCvPBX_cl_d.DiagramColumn.Active := True;
		1 : cxGrdCvPBX_cl_d.DiagramBar.Active := True;
		2 : cxGrdCvPBX_cl_d.DiagramStackedArea.Active := True;
		3 : cxGrdCvPBX_cl_d.DiagramStackedBar.Active := True;
		4 : cxGrdCvPBX_cl_d.DiagramStackedColumn.Active := True;
		5 : cxGrdCvPBX_cl_d.DiagramLine.Active := True;
		6 : cxGrdCvPBX_cl_d.DiagramArea.Active := True;
		7 : cxGrdCvPBX_cl_d.DiagramPie.Active := True;
	end;
end;

procedure Tfrm_PBX.cbChartKindA2_1PropertiesChange(Sender: TObject);
begin
	case TcxComboBox(sender).ItemIndex of
		0 : cxGrdCvPBX_ca_a.DiagramColumn.Active := True;
		1 : cxGrdCvPBX_ca_a.DiagramBar.Active := True;
		2 : cxGrdCvPBX_ca_a.DiagramStackedArea.Active := True;
		3 : cxGrdCvPBX_ca_a.DiagramStackedBar.Active := True;
		4 : cxGrdCvPBX_ca_a.DiagramStackedColumn.Active := True;
		5 : cxGrdCvPBX_ca_a.DiagramLine.Active := True;
		6 : cxGrdCvPBX_ca_a.DiagramArea.Active := True;
		7 : cxGrdCvPBX_ca_a.DiagramPie.Active := True;
	end;
end;

procedure Tfrm_PBX.cbChartKindA2_2PropertiesChange(Sender: TObject);
begin
	case TcxComboBox(sender).ItemIndex of
		0 : cxGrdCvPBX_ca_t.DiagramColumn.Active := True;
		1 : cxGrdCvPBX_ca_t.DiagramBar.Active := True;
		2 : cxGrdCvPBX_ca_t.DiagramStackedArea.Active := True;
		3 : cxGrdCvPBX_ca_t.DiagramStackedBar.Active := True;
		4 : cxGrdCvPBX_ca_t.DiagramStackedColumn.Active := True;
		5 : cxGrdCvPBX_ca_t.DiagramLine.Active := True;
		6 : cxGrdCvPBX_ca_t.DiagramArea.Active := True;
		7 : cxGrdCvPBX_ca_t.DiagramPie.Active := True;
	end;
end;

procedure Tfrm_PBX.cbChartKindA2_3PropertiesChange(Sender: TObject);
begin
	case TcxComboBox(sender).ItemIndex of
		0 : cxGrdCvPBX_ca_d.DiagramColumn.Active := True;
		1 : cxGrdCvPBX_ca_d.DiagramBar.Active := True;
		2 : cxGrdCvPBX_ca_d.DiagramStackedArea.Active := True;
		3 : cxGrdCvPBX_ca_d.DiagramStackedBar.Active := True;
		4 : cxGrdCvPBX_ca_d.DiagramStackedColumn.Active := True;
		5 : cxGrdCvPBX_ca_d.DiagramLine.Active := True;
		6 : cxGrdCvPBX_ca_d.DiagramArea.Active := True;
		7 : cxGrdCvPBX_ca_d.DiagramPie.Active := True;
	end;
end;

procedure Tfrm_PBX.cbGrpNm1PropertiesChange(Sender: TObject);
Var sGId : String;
		idx : Integer;
begin
	if cbGrpNm1.ItemIndex < 1 then Exit;

	idx := cbGrpNm1.Properties.Items.IndexOf(cbGrpNM1.Text);
	sGid := slGrpId.Strings[idx];

	pSnd_AgentList(1, sGId);
end;

procedure Tfrm_PBX.cbGrpNm2PropertiesChange(Sender: TObject);
Var sGId : String;
    idx : Integer;
begin
  if cbGrpNm2.ItemIndex < 1 then Exit;

  idx := cbGrpNm2.Properties.Items.IndexOf(cbGrpNM2.Text);
  sGid := slGrpId.Strings[idx];

  pSnd_AgentList(2, sGId);
end;

procedure Tfrm_PBX.cbGrpNm4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btn_4_1.Click;
end;

procedure Tfrm_PBX.cbKindA1PropertiesChange(Sender: TObject);
begin
  pSetCallListChart1_1;
end;

procedure Tfrm_PBX.cbKindA1_2PropertiesChange(Sender: TObject);
begin
  pSetCallListChart1_2;
end;

procedure Tfrm_PBX.cbKindA1_3PropertiesChange(Sender: TObject);
begin
  pSetCallListChart1_3;
end;

procedure Tfrm_PBX.cbKindA2_1PropertiesChange(Sender: TObject);
begin
  pSetCallAnalChart1_1;
end;

procedure Tfrm_PBX.cbKindA2_2PropertiesChange(Sender: TObject);
begin
  pSetCallAnalChart1_2;
end;

procedure Tfrm_PBX.cbKindA2_3PropertiesChange(Sender: TObject);
begin
  pSetCallAnalChart1_3;
end;

procedure Tfrm_PBX.cbMngNm7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btn_7_1.Click;
end;

procedure Tfrm_PBX.cbMngNm7PropertiesChange(Sender: TObject);
begin
	IF cbMngNm7.Tag = 99 then exit;
	btn_7_1.click;
end;

procedure Tfrm_PBX.cb_8_1PropertiesChange(Sender: TObject);
var i, iDx, iTmp : integer;
	sCodeNM, sCategory : String;
begin
	SetDebugeWrite('Tfrm_PBX.cb_8_1PropertiesChange');
	Try
		if cb_8_1.Tag = 99 then exit;
		sCodeNM := '';
		cb_8_2.Tag := 99;
		cb_8_2.Properties.Items.Clear;

		iDx := FMenteCombo.slCateName.IndexOf(cb_8_1.Text);
		if iDx < 0 then exit;
		sCategory := FMenteCombo.slCategory[iDx];
		for I := 0 to FMenteCombo.slCategory.Count -1 do
		begin
			if sCategory = FMenteCombo.slCategory[i] then
			begin
				sCodeNM := FMenteCombo.slCodeName[i];
				iTmp := cb_8_2.Properties.Items.IndexOf(sCodeNM);  
				if iTmp < 0 then
				begin
					cb_8_2.Properties.Items.add(sCodeNM);
				end;
			end;
		end;
		cb_8_2.Tag := 0;
		cb_8_2.ItemIndex := 0;
	except
	End;
end;

procedure Tfrm_PBX.cb_8_2PropertiesChange(Sender: TObject);
var i, iRow, iDx : Integer;
	AView: TcxGridDBTableView;
	sCategory, sCodeID : string;
begin
	SetDebugeWrite('Tfrm_PBX.cb_8_2PropertiesChange');
	Try
		if cb_8_2.Tag = 99 then Exit;

		iDx := FMenteCombo.slCateName.IndexOf(cb_8_1.Text);
		if iDx < 0 then exit;
		sCategory := FMenteCombo.slCategory[iDx];

		iDx := FMenteCombo.slCodeName.IndexOf(cb_8_2.Text);
		if iDx < 0 then exit;
		sCodeID := FMenteCombo.slCodeID[iDx];

		AView := cxGridPBX8_2;
    AView.DataController.SetRecordCount(0);
		AView.BeginUpdate;
		Try
			for i := 0 to FMente.slCategory.count-1 do
			begin
				if (FMente.slCategory[i] = sCategory) and (FMente.slCodeID[i] = sCodeID) then
				begin
					iRow := AView.DataController.AppendRecord;
					AView.DataController.Values[iRow, 0] := False;

					AView.DataController.Values[iRow, 1] := FMente.slFilename[i]; 
					AView.DataController.Values[iRow, 2] := FMente.slFilename[i];  //		멘트 파일 명
					AView.DataController.Values[iRow, 3] := '';  //		듣기
				end;
			end;
			AView.EndUpdate;

			if AView.DataController.RecordCount < 1 then 
			begin
				GMessagebox('검색된 내용이 없습니다.', CDMSI);
			end;
		except
			AView.EndUpdate;
		End;
	except
	end;
end;

procedure Tfrm_PBX.btnSearch2Click(Sender: TObject);
Var sPId, sGId, sAId : String;
    idx : Integer;
begin
  if cxPC_ca.ActivePageIndex = 0 then
  begin
    sPid := '5510';
    cxGrdVPBX_ca_a.DataController.SetRecordCount(0);
    cxGrdVPBX_caK_a.DataController.SetRecordCount(0);
  end else
  if cxPC_ca.ActivePageIndex = 1 then
  begin
    sPid := '5520';
    cxGrdVPBX_ca_t.DataController.SetRecordCount(0);
  end else
  if cxPC_ca.ActivePageIndex = 2 then
  begin
    sPid := '5530';
    cxGrdVPBX_ca_d.DataController.SetRecordCount(0);
  end;

  idx := cbGrpNm2.Properties.Items.IndexOf(cbGrpNM2.Text);
  if idx <= 0 then sGId := ''
              else sGId := slGrpId.Strings[idx];

  idx := cbAgtNm2.Properties.Items.IndexOf(cbAgtNM2.Text);
  if idx <= 0 then sAId := ''
              else sAId := slAgtId[2].Strings[idx];

  pSI_5455_Send( sPId, FormatDatetime('YYYY-MM-DD', cxDtStart_ca.Date) + ' 09:00:00',
                       FormatDatetime('YYYY-MM-DD', cxDtEnd_ca.Date) + ' 09:00:00', sGId, sAId );
end;

procedure Tfrm_PBX.btnSearch_wkClick(Sender: TObject);
begin
  cxGrdVPBX_wk.DataController.SetRecordCount(0);
  pSI_6410_Send( '' );
end;

procedure Tfrm_PBX.btnSearch_blClick(Sender: TObject);
begin
	pBlackListSearch;
end;

procedure Tfrm_PBX.btnSearch_hdClick(Sender: TObject);
begin
  cxGrdVPBX_hd.DataController.SetRecordCount(0);
  pSI_6510_Send( '' );
end;

procedure Tfrm_PBX.btnSearch_psClick(Sender: TObject);
begin
  cxGrdVPBX_ps.DataController.SetRecordCount(0);
  pProductSInit;

  pSI_7050_Send;
end;

procedure Tfrm_PBX.btnUp_blClick(Sender: TObject);
Var iRow : Integer;
begin
  if lblTitle_bl.Hint = '' then
  begin
    GMessagebox('좌측 서비스명을 선택해 주세요.', CDMSI);
    Exit;
  end;

  pBlackListInit;

  iRow := cxGrdVPBX_bl_s.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  edtQexen_bl.Text := cxGrdVPBX_bl_s.DataController.Values[iRow, 2];
  edtSvcNo_bl.Text := cxGrdVPBX_bl_s.DataController.Values[iRow, 1];
  edtBuzNm_bl.Text := cxGrdVPBX_bl_s.DataController.Values[iRow, 0];

  pBlackListLoad;
end;

procedure Tfrm_PBX.btnUp_hdClick(Sender: TObject);
begin
  pHoliDayLoad;
end;

procedure Tfrm_PBX.btnUp_psClick(Sender: TObject);
Var sParam, sMag : String;
begin
	try
		if lblIdx_ps.Hint = '1' then //Item_Code
		begin
			sMag := '전체착신은 모든 대표번호로 들어오는 전화(호)를 하나의 번로로 착신전환 됩니다.' +#13#10 +#13#10
						+ '전체착신 전환시 [시작시간, 종료시간, 착신번호]를  꼭 확인해주세요';
			GMessagebox(sMag, CDMSI);
		end else
		if lblIdx_ps.Hint = '2' then //Item_Code
		begin
			sMag := '개별착신은 각각의 대표번로호 들어오는 전화(호)를 설정한 개별번호로 착신전환 됩니다.' +#13#10 +#13#10
						+ '개별착신 전환시 메뉴 [인바운드설정]의 [시작시간, 종료시간, 착신번호]를 꼭 확인해주세요';
			GMessagebox(sMag, CDMSI);
		end else
		if lblIdx_ps.Hint = '2001' then //Item_Code
		begin
		 {	sMag := '마술피리의 모든 고객 데이터중 1일 이전 데이터를 매일 오전 7시 이후 *표기 처리 합니다.' +#13#10
						+ '처리후 복구 불가합니다.' +#13#10 +#13#10
						+ '고객데이터 필요시 백업을 받으신 후 날짜를 입력 및 사용으로 저장해주십시오';
			GMessagebox(sMag, CDMSI);  }
		end else
		if lblIdx_ps.Hint = '300' then //Item_Code
		begin
			sMag := '지능형착신전환은 [상담대기(상담원) + 업무처리(상담원) + 설정인원수] 이상부터 착신전환 됩니다';
			GMessagebox(sMag, CDMSI);
		end;
		
		sParam := lblIdx_ps.Hint;
		if cbUse_ps.ItemIndex = 0 then sParam := sParam + '│' + 'N' else
		if cbUse_ps.ItemIndex = 1 then sParam := sParam + '│' + 'Y';
		sParam := sParam + '│' + StringReplace(meGu1.Text, ':', '', [rfReplaceAll]);
		sParam := sParam + '│' + StringReplace(meGu2.Text, ':', '', [rfReplaceAll]);
		sParam := sParam + '│' + meGu3.Text;
		sParam := sParam + '│' + cuGu4.Text;

    pSI_7060_Send(sParam);
//    pSI_7061_Recv('70615023                    331          00');
  except
	end;
end;

procedure Tfrm_PBX.btnExcel_blClick(Sender: TObject);
var i, iRow : integer;
begin
	if cxGrdVPBX_bl.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSI);
		exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	Frm_Main.sgExcel := '수신거부고객현황.xls';
	Frm_Main.sgRpExcel := Format('IPCC>수신거부고객현황]%s건/%s', [GetMoneyStr(cxGrdVPBX_bl.DataController.RecordCount), FExcelDown_BL]);

	if ( GT_USERIF.Excel_Use = 'm' ) then
	begin
		cxGrdVPBX_bl_Excel.DataController.SetRecordCount(0);
		cxGrdVPBX_bl_Excel.BeginUpdate;
		try
			for i := 0 to cxGrdVPBX_bl.DataController.RecordCount - 1 do
			begin
				iRow := cxGrdVPBX_bl_Excel.DataController.AppendRecord;

				cxGrdVPBX_bl_Excel.DataController.Values[iRow, 00] := cxGrdVPBX_bl.DataController.Values[i, 00];
				cxGrdVPBX_bl_Excel.DataController.Values[iRow, 01] := cxGrdVPBX_bl.DataController.Values[i, 01];
				cxGrdVPBX_bl_Excel.DataController.Values[iRow, 02] := '***-****-****';
				cxGrdVPBX_bl_Excel.DataController.Values[iRow, 03] := cxGrdVPBX_bl.DataController.Values[i, 03];
				cxGrdVPBX_bl_Excel.DataController.Values[iRow, 04] := cxGrdVPBX_bl.DataController.Values[i, 04];
				cxGrdVPBX_bl_Excel.DataController.Values[iRow, 05] := cxGrdVPBX_bl.DataController.Values[i, 05];
				cxGrdVPBX_bl_Excel.DataController.Values[iRow, 06] := cxGrdVPBX_bl.DataController.Values[i, 06];
				cxGrdVPBX_bl_Excel.DataController.Values[iRow, 07] := cxGrdVPBX_bl.DataController.Values[i, 07];
				cxGrdVPBX_bl_Excel.DataController.Values[iRow, 08] := cxGrdVPBX_bl.DataController.Values[i, 08];
				cxGrdVPBX_bl_Excel.DataController.Values[iRow, 09] := cxGrdVPBX_bl.DataController.Values[i, 09];
			end;
		finally
			cxGrdVPBX_bl_Excel.EndUpdate;
		end;
		Frm_Main.cxGridExcel := cxGrdPBX_bl_Excel;
	end else 	Frm_Main.cxGridExcel := cxGrdPBX_bl;

	Frm_Main.proc_excel(0);
end;

procedure Tfrm_PBX.btnExcel_caClick(Sender: TObject);
var AView : TcxGridBandedTableView;
	AGrid : TcxGrid;
	sTmp : string;
begin
	case cxPC_ca.ActivePageIndex of
		0 : 
			begin 
				AView := cxGrdVPBX_ca_a;
				AGrid := cxGrdPBX_ca_a;
				sTmp := '통화분석_상담원별';
			end;
		1 : 
			begin 
				AView := cxGrdVPBX_ca_t;
				AGrid := cxGrdPBX_ca_t;
				sTmp := '통화분석_시간대별';
			end;
		2 : 
			begin 
				AView := cxGrdVPBX_ca_d;
				AGrid := cxGrdPBX_ca_d;
				sTmp := '통화분석_일별';
			end;
	end;
	if AView.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSI);
		exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	Frm_Main.sgExcel := sTmp + '.xls';
	Frm_Main.sgRpExcel := Format('IPCC>%s]%s건/%s', [sTmp, GetMoneyStr(cxGridPBX3.DataController.RecordCount), '']);
	Frm_Main.cxGridExcel := AGrid;
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_PBX.btnExcel_clClick(Sender: TObject);
var AView : TcxGridBandedTableView;
	AGrid : TcxGrid;
	sTmp : string;
begin
	case cxPC_cl.ActivePageIndex of
		0 : 
			begin 
				AView := cxGrdVPBX_cl_a;
				AGrid := cxGrdPBX_cl_a;
				sTmp := '통화현황_상담원별';
			end;
		1 : 
			begin 
				AView := cxGrdVPBX_cl_t;
				AGrid := cxGrdPBX_cl_t;
				sTmp := '통화현황_시간대별';
			end;
		2 : 
			begin 
				AView := cxGrdVPBX_cl_d;
				AGrid := cxGrdPBX_cl_d;
				sTmp := '통화현황_일별';
			end;
	end;
	if AView.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSI);
		exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	Frm_Main.sgExcel := sTmp + '.xls';
	Frm_Main.sgRpExcel := Format('IPCC>%s]%s건/%s', [sTmp, GetMoneyStr(cxGridPBX3.DataController.RecordCount), '']);
	Frm_Main.cxGridExcel := AGrid;
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_PBX.btnExcel_hdClick(Sender: TObject);
begin
	if cxGrdVPBX_hd.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

  Frm_Main.sgExcel := '휴일설정현황.xls';
	Frm_Main.sgRpExcel := Format('IPCC>휴일설정현황]%s건/%s', [GetMoneyStr(cxGrdVPBX_hd.DataController.RecordCount), '']);
  Frm_Main.cxGridExcel := cxGrdPBX_hd;
  Frm_Main.proc_excel(0);
end;

procedure Tfrm_PBX.btnExcel_psClick(Sender: TObject);
begin
	if cxGrdVPBX_ps.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSI);
		exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	Frm_Main.sgExcel := '부가서비스설정.xls';
	Frm_Main.sgRpExcel := Format('IPCC>부가서비스설정]%s건/%s', [GetMoneyStr(cxGrdVPBX_ps.DataController.RecordCount), '']);
	Frm_Main.cxGridExcel := cxGrdPBX_ps;
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_PBX.btnExcel_viClick(Sender: TObject);
var i, iRow : integer;
begin
	if cxGrdVPBX_vi.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

  Frm_Main.sgExcel := 'VIP고객현황.xls';
	Frm_Main.sgRpExcel := Format('IPCC>VIP고객현황]%s건/%s', [GetMoneyStr(cxGrdVPBX_vi.DataController.RecordCount), FExcelDown_VI]);

	if ( GT_USERIF.Excel_Use = 'm' ) then
	begin
		cxGrdVPBX_vi_Excel.DataController.SetRecordCount(0);
		cxGrdVPBX_vi_Excel.BeginUpdate;
		try
			for i := 0 to cxGrdVPBX_vi.DataController.RecordCount - 1 do
			begin
				iRow := cxGrdVPBX_vi_Excel.DataController.AppendRecord;

				cxGrdVPBX_vi_Excel.DataController.Values[iRow, 00] := cxGrdVPBX_vi.DataController.Values[iRow, 00];
				cxGrdVPBX_vi_Excel.DataController.Values[iRow, 01] := cxGrdVPBX_vi.DataController.Values[iRow, 01];
				cxGrdVPBX_vi_Excel.DataController.Values[iRow, 02] := '***-****-****';
				cxGrdVPBX_vi_Excel.DataController.Values[iRow, 03] := cxGrdVPBX_vi.DataController.Values[iRow, 03];
				cxGrdVPBX_vi_Excel.DataController.Values[iRow, 04] := cxGrdVPBX_vi.DataController.Values[iRow, 04];
				cxGrdVPBX_vi_Excel.DataController.Values[iRow, 05] := cxGrdVPBX_vi.DataController.Values[iRow, 05];
				cxGrdVPBX_vi_Excel.DataController.Values[iRow, 06] := cxGrdVPBX_vi.DataController.Values[iRow, 06];
				cxGrdVPBX_vi_Excel.DataController.Values[iRow, 07] := cxGrdVPBX_vi.DataController.Values[iRow, 07];
				cxGrdVPBX_vi_Excel.DataController.Values[iRow, 08] := cxGrdVPBX_vi.DataController.Values[iRow, 08];
			end;
		finally
			cxGrdVPBX_vi_Excel.EndUpdate;
		end;
		Frm_Main.cxGridExcel := cxGrdPBX_vi_Excel;
	end else 	Frm_Main.cxGridExcel := cxGrdPBX_vi;
	
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_PBX.btnExcel_wkClick(Sender: TObject);
begin
	if cxGrdVPBX_wk.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

  Frm_Main.sgExcel := '근무시간현황.xls';
	Frm_Main.sgRpExcel := Format('IPCC>근무시간현황]%s건/%s', [GetMoneyStr(cxGrdVPBX_wk.DataController.RecordCount), '']);
  Frm_Main.cxGridExcel := cxGrdPBX_wk;
  Frm_Main.proc_excel(0);
end;

procedure Tfrm_PBX.btnExit_blClick(Sender: TObject);
begin
  grpBListSet.Visible := False;
end;

procedure Tfrm_PBX.btnExit_hdClick(Sender: TObject);
begin
  grpHdaySet.Visible := False;
end;

procedure Tfrm_PBX.btnInsert_qe_pClick(Sender: TObject);
Var iRow, i, iDx : Integer;
begin
  if Trim(lblSelExtenNo_p.Caption) = '' then
  begin
		GMessagebox('대표번호(ACD그룹)를 선택해 주세요!', CDMSI);
    Exit;
  end;

  iRow := cxGrdVPBX_grp_qe_p.DataController.FocusedRecordIndex;
  if iRow < 0 then
  begin
		GMessagebox('상담그룹을 선택해 주세요!', CDMSI);
    Exit;
  end;

  edtCallDist.Text := lblSelExtenNo_p.Caption;
  edtCallDist.Hint := lblSelExtenNo_p.Hint;

  cbAgtNm10_1.Properties.Items.Clear;
  cbAgtNm10_1.Properties.Items.BeginUpdate;
  cbAgtNm10_1.Properties.Items.Add('전체');
  try
    for i := 0 to cxGrdVPBX_agt_qe_p.DataController.RecordCount - 1 do
    begin
			cbAgtNm10_1.Properties.Items.Add(cxGrdVPBX_agt_qe_p.DataController.Values[i, 1]);
    end;
  finally
    cbAgtNm10_1.Properties.Items.EndUpdate;
  end;

	iDx := cbAgtNm10_1.Properties.Items.IndexOf(lblSelAgent_p.Hint) ;

	if iDx < 0 then cbAgtNm10_1.ItemIndex := 0 else cbAgtNm10_1.ItemIndex := iDx;
	
	cbPriority.ItemIndex := 0;
  grpCallDistSet.Tag := 0;
  grpCallDistSet.Caption := '호 분배 우선 순위 등록';
	grpCallDistSet.Left := (cxPageControl1.Width  - grpCallDistSet.Width) div 2;
	grpCallDistSet.Top  := (cxPageControl1.Height - grpCallDistSet.Height) div 2;
	grpCallDistSet.Visible := True;
	grpCallDistSet.BringToFront;
end;

procedure Tfrm_PBX.btnIns_blClick(Sender: TObject);
Var iRow : Integer;
begin
  pBlackListInit;

  iRow := cxGrdVPBX_bl_s.DataController.FocusedRecordIndex;
  if iRow < 0 then
  begin
    GMessagebox('좌측 서비스명을 선택해 주세요.', CDMSI);
    Exit;
  end;

  edtQexen_bl.Text := cxGrdVPBX_bl_s.DataController.Values[iRow, 2];
  edtSvcNo_bl.Text := cxGrdVPBX_bl_s.DataController.Values[iRow, 1];
  edtBuzNm_bl.Text := cxGrdVPBX_bl_s.DataController.Values[iRow, 0];

  grpBListSet.Caption := '수신거부(블랙리스트) 추가';
	grpBListSet.Left := (cxPageControl1.Width  - grpBListSet.Width) div 2;
	grpBListSet.Top  := (cxPageControl1.Height - grpBListSet.Height) div 2;
	grpBListSet.Visible := True;
	grpBListSet.BringToFront;
end;

procedure Tfrm_PBX.btnIns_hdClick(Sender: TObject);
begin
  pHoliDayInit;

	grpHdaySet.Left := (cxPageControl1.Width  - grpHdaySet.Width) div 2;
	grpHdaySet.Top  := (cxPageControl1.Height - grpHdaySet.Height) div 2;
	grpHdaySet.Visible := True;
	grpHdaySet.BringToFront;
end;

procedure Tfrm_PBX.btnIns_viClick(Sender: TObject);
Var iRow : Integer;
begin
  pVipInit;

  iRow := cxGrdVPBX_vi_s.DataController.FocusedRecordIndex;
  if iRow < 0 then
  begin
    GMessagebox('좌측 서비스명을 선택해 주세요.', CDMSI);
    Exit;
  end;

  edtQexen_vi.Text := cxGrdVPBX_vi_s.DataController.Values[iRow, 2];
  edtSvcNo_vi.Text := cxGrdVPBX_vi_s.DataController.Values[iRow, 1];
  edtBuzNm_vi.Text := cxGrdVPBX_vi_s.DataController.Values[iRow, 0];

  grpVipSet.Caption := 'VIP 고객 추가';
	grpVipSet.Left := (cxPageControl1.Width  - grpVipSet.Width) div 2;
	grpVipSet.Top  := (cxPageControl1.Height - grpVipSet.Height) div 2;
	grpVipSet.Visible := True;
	grpVipSet.BringToFront;
end;

procedure Tfrm_PBX.btnPaste_qeClick(Sender: TObject);
var
  iRow, i : Integer;
  sQExtenCode : string;
  sl_Role: TStringList;
begin
  try
    if cxGridPBX9.DataController.RecordCount = 0 then Exit;

    if not FileExists(DBDIRECTORY + 'PermissionQExten.tmp') then
    begin
      GMessagebox('복사할 권한이 없습니다.' + #13#10 +
                  '먼저 권한복사를 하세요', CDMSI);
      Exit;
    end;

    sl_Role := TStringList.Create;
    sl_Role.LoadFromFile(DBDIRECTORY + 'PermissionQExten.tmp');

    for i := 0 to cxGridPBX9.DataController.RecordCount - 1 do
    begin
      sQExtenCode := cxGridPBX9.DataController.Values[i, 1];
      iRow := sl_Role.IndexOf(sQExtenCode);
      if iRow >= 0 then
        cxGridPBX9.DataController.Values[i, 0] := True
      else
        cxGridPBX9.DataController.Values[i, 0] := False;
    end;
    FreeAndNil(sl_Role);
    GMessagebox('권한을 적용 하였습니다.' + #13#10 +
                '권한 저장을 클릭하세요!', CDMSI);
	except
    GMessagebox('권한을 적용 실패 하였습니다!', CDMSI);
  end;
end;

procedure Tfrm_PBX.btnSearch_viClick(Sender: TObject);
begin
	pVipSearch;
end;

procedure Tfrm_PBX.btnUp_viClick(Sender: TObject);
Var iRow : Integer;
begin
  if lblTitle_vi.Hint = '' then
  begin
    GMessagebox('좌측 서비스명을 선택해 주세요.', CDMSI);
    Exit;
  end;

  pVipInit;

  iRow := cxGrdVPBX_vi_s.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  edtQexen_vi.Text := cxGrdVPBX_vi_s.DataController.Values[iRow, 2];
  edtSvcNo_vi.Text := cxGrdVPBX_vi_s.DataController.Values[iRow, 1];
  edtBuzNm_vi.Text := cxGrdVPBX_vi_s.DataController.Values[iRow, 0];

  pVipLoad;
end;

procedure Tfrm_PBX.btnSave_viClick(Sender: TObject);
Var sParam : String;
begin
	try
    if edtQexen_vi.Tag = -1 then
		begin
      sParam := edtQexen_vi.Text;
      sParam := sParam + '│' + edtCallId_vi.Text;
      sParam := sParam + '│' + edtCallNm_vi.Text;
      sParam := sParam + '│' + edtCallDesc_vi.Text;
      sParam := sParam + '│1';

      pSI_6720_Send(sParam);
    end else
    begin
      sParam := IntToStr(edtQexen_vi.Tag);
      sParam := sParam + '│' + edtQexen_vi.Text;
      sParam := sParam + '│' + edtCallId_vi.Text;
      sParam := sParam + '│' + edtCallNm_vi.Text;
      sParam := sParam + '│' + edtCallDesc_vi.Text;
      sParam := sParam + '│1';

      pSI_6730_Send(sParam);
    end;
    grpVipSet.Visible := False;
//    pSI_6700_Recv('67215023                    331          00');
  except
  end;
end;

procedure Tfrm_PBX.btnDel_viClick(Sender: TObject);
Var i : Integer;
    sParam, sMsg : String;
begin
  try
    sParam := '';
    for i := 0 to cxGrdVPBX_vi.DataController.RecordCount - 1 do
    begin
      if cxGrdVPBX_vi.DataController.Values[i, 0] = True then
      begin
        if sParam = '' then
          sParam := cxGrdVPBX_vi.DataController.Values[i, 8]
        else
          sParam := sParam + ',' + cxGrdVPBX_vi.DataController.Values[i, 8];
      end;
    end;

    if sParam = '' then Exit;

    sMsg := '선택하신 VIP고객을 삭제하시겠습니까?';
    if Application.MessageBox(PChar(sMsg), 'CDMS', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
    begin
      pSI_6750_Send(sParam)
    end;
  except
  end;
end;

procedure Tfrm_PBX.btnExit_viClick(Sender: TObject);
begin
  grpVipSet.Visible := False;
end;

procedure Tfrm_PBX.btnUp_wkClick(Sender: TObject);
begin
  pWorkDayLoad;
end;

procedure Tfrm_PBX.btn_3_1Click(Sender: TObject);
var sParam : string;
begin
	Try		
		Screen.Cursor := crHourGlass;
		cxGroupBox9.enabled := False;

		cxGridPBX3.DataController.SetRecordCount(0);
		giNo := 0 ;//인바운드설정 NO
		btn_3_1.Tag := 99;
		sParam := '';
		sParam := GT_Si415_INFO.Id;
		sParam := sParam + '│' + Trim(CallToStr(edtSearch_3_1.Text));
		sParam := sParam + '│' + Trim(CallToStr(edtSearch_3_2.Text));
		sParam := sParam + '│' + Trim(CallToStr(edtSearch_3_3.Text));
		sParam := sParam + '│' + Trim(CallToStr(edtSearch_3_4.Text));

		fSI_6010_Send(sParam);
	except
	End;
end;

procedure Tfrm_PBX.btn_3_2Click(Sender: TObject);
begin
	if ( Not Assigned(Frm_PBX01) ) Or ( Frm_PBX01 = Nil ) then Frm_PBX01 := TFrm_PBX01.Create(Nil);
	Frm_PBX01.proc_Init;
	Frm_PBX01.Show;     
end;

procedure Tfrm_PBX.btn_3_3Click(Sender: TObject);
var iRow, iTmp : integer;
	AView: TcxGridBandedTableView;
begin
	if ( Not Assigned(Frm_PBX01) ) Or ( Frm_PBX01 = Nil ) then Frm_PBX01 := TFrm_PBX01.Create(Nil);
	Frm_PBX01.proc_Init;

	AView := cxGridPBX3;
	iRow := AView.DataController.FocusedRecordIndex;
	if iRow < 0 then exit;

	Frm_PBX01.edt_1.Text := AView.DataController.Values[iRow, 1];     									 //호분배 그룹
	Frm_PBX01.edt_12.Text:= CallToStr(AView.DataController.Values[iRow, 2]);  	       	 //대표번호
	Frm_PBX01.edt_2.Text := CallToStr(AView.DataController.Values[iRow, 3]);		       	 //착신번호
	Frm_PBX01.edt_3.Text :=	AView.DataController.Values[iRow, 4];   	                   //서비스명
	Frm_PBX01.edt_4.Text :=	AView.DataController.Values[iRow, 5];  		                   //명의자/통신사
	Frm_PBX01.edt_5.Text :=	AView.DataController.Values[iRow, 6];   	                   //안내문구
	if AView.DataController.Values[iRow,11] = '사용' then	
		Frm_PBX01.chk_Tell.checked := True    else Frm_PBX01.chk_Tell.checked := False;    //콜마너 OEM 연동 유무 N : 사용안함 Y : 사용
	if AView.DataController.Values[iRow,12] = '사용' then	
		Frm_PBX01.chk_TellTak.checked := True else Frm_PBX01.chk_TellTak.checked := False; //콜마너 탁송 연동 유무 N : 사용안함 Y : 사용
	if AView.DataController.Values[iRow,28] = '사용' then 
		Frm_PBX01.chk_App.checked := True else Frm_PBX01.chk_App.checked := False;         //어플연동

	if AView.DataController.Values[iRow,29] = '사용' then	
		Frm_PBX01.chk_Logi.checked := True    else Frm_PBX01.chk_Logi.checked := False;      //로지 연동 유무 N : 사용안함 Y : 사용
	if AView.DataController.Values[iRow,30] = '사용' then	
		Frm_PBX01.chk_CallMart.checked := True else Frm_PBX01.chk_CallMart.checked := False; //콜마트 연동 유무 N : 사용안함 Y : 사용
	if AView.DataController.Values[iRow,31] = '사용' then	
		Frm_PBX01.chk_ICon.checked := True    else Frm_PBX01.chk_ICon.checked := False;      //아이콘 연동 유무 N : 사용안함 Y : 사용
	if AView.DataController.Values[iRow,32] = '사용' then	                                
		Frm_PBX01.chk_G365.checked := True else Frm_PBX01.chk_G365.checked := False;         //G365 유무 N : 사용안함 Y : 사용
	if AView.DataController.Values[iRow,33] = '사용' then	
		Frm_PBX01.chk_InSung.checked := True    else Frm_PBX01.chk_InSung.checked := False;  //인성 연동 유무 N : 사용안함 Y : 사용
		
	if AView.DataController.Values[iRow,13] = '' then
		iTmp := 0 
	else
		iTmp := Frm_PBX01.cb_2.Properties.Items.IndexOf(AView.DataController.Values[iRow,13]);
	Frm_PBX01.cb_2.ItemIndex := iTmp;                                                    //CTI-Q 대기멘트

	if AView.DataController.Values[iRow,14] = '' then
		iTmp := 0 
	else
		iTmp := Frm_PBX01.cb_3.Properties.Items.IndexOf(AView.DataController.Values[iRow,14]);
	Frm_PBX01.cb_3.ItemIndex := iTmp;                                                    //VIP CTI-Q 대기멘트

	if AView.DataController.Values[iRow, 8] = '사용안함' 			 then Frm_PBX01.cb_6.ItemIndex := 0 else 
	if AView.DataController.Values[iRow, 8] = '개별착신사용' 	 then Frm_PBX01.cb_6.ItemIndex := 1 else 
	if AView.DataController.Values[iRow, 8] = '지능형착신사용' then Frm_PBX01.cb_6.ItemIndex := 2; 	 		//개별착신/지능형착신 사용 유무 
	Frm_PBX01.edt_6.Text :=	CallToStr(AView.DataController.Values[iRow, 7]);     	                      //개별착신 / 지능형 착신 번호 1
	Frm_PBX01.edt_7.Text :=	AView.DataController.Values[iRow, 9];                                       //개별착신 / 지능형 착신 시작시간
	Frm_PBX01.edt_8.Text :=	AView.DataController.Values[iRow,10];      	                                //개별착신 / 지능형 착신 종료시간

	if AView.DataController.Values[iRow,17] = '사용안함' then 
		Frm_PBX01.cb_7.ItemIndex := 0 else Frm_PBX01.cb_7.ItemIndex := 1;                                 //개별 필터링 사용유무 N : 사용안함 Y : 사용

	if AView.DataController.Values[iRow,18] = '' then
		iTmp := 0 
	else
		iTmp := Frm_PBX01.cb_8.Properties.Items.IndexOf(AView.DataController.Values[iRow,18]);
	Frm_PBX01.cb_8.ItemIndex := iTmp;                                                    							  //개별 필터링 멘트 명
	Frm_PBX01.edt_9.Text  := AView.DataController.Values[iRow,19]; 	  	                                //개별 필터 시작 시간
	Frm_PBX01.edt_10.Text := AView.DataController.Values[iRow,20];    	                                //개별 필터 종료 시간

	if AView.DataController.Values[iRow,21] = '사용안함' then 
		Frm_PBX01.cb_9.ItemIndex := 0 else Frm_PBX01.cb_9.ItemIndex := 1;                                //080 수신거부 사용유무 N : 사용안함 Y : 사용

	if AView.DataController.Values[iRow,26] = '' then
		iTmp := 0 
	else
		iTmp := Frm_PBX01.cb_1.Properties.Items.IndexOf(AView.DataController.Values[iRow,26]);
	Frm_PBX01.cb_1.ItemIndex := iTmp;                                                    							 //080 수신거부 파일 명
	
	if AView.DataController.Values[iRow,27] = '1' then 
		Frm_PBX01.cb_14.ItemIndex := 0 else Frm_PBX01.cb_14.ItemIndex := 1; //   호분배 순위 ( 1 or 2 순위)

	Frm_PBX01.edt_1.enabled := False;
	Frm_PBX01.btnEdit.Tag := 1;
	Frm_PBX01.Show;     
end;

procedure Tfrm_PBX.btn_3_4Click(Sender: TObject);
var i, iCnt : integer;
	AView: TcxGridBandedTableView;
	sExten, sTmp, sStr : string;
begin
	AView := cxGridPBX3;
	sExten := '';
	iCnt := 0;
	for I := 0 to AView.DataController.RecordCount -1 do
	begin	
		if AView.DataController.Values[i,0] = true then
		begin
			inc(iCnt);
			if sExten = '' then
				sExten := AView.DataController.Values[i,1]
			else
				sExten := sExten + ',' + AView.DataController.Values[i,1];
		end;
	end;

	sTmp := Format('호분배그룹(%d개)을 삭제하시겠습니까?' +#13#10+#13#10+ '[대상그룹] %s', [iCnt, sExten]);

	if Application.MessageBox(PChar(sTmp), CDMSI,
				MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
	begin
		sStr := fSI_6050_Send(GT_Si415_INFO.Id, Trim(sExten));
	end;
end;

procedure Tfrm_PBX.btn_3_5Click(Sender: TObject);
begin
	if cxGridPBX3.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSI);
		exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	Frm_Main.sgExcel := '인바운드설정.xls';
	Frm_Main.sgRpExcel := Format('IPCC>인바운드설정]%s건/%s', [GetMoneyStr(cxGridPBX3.DataController.RecordCount), '']);
	Frm_Main.cxGridExcel := cxGridA3;
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_PBX.btn_4_1Click(Sender: TObject);
Var sGId : String;
    idx : Integer;
begin
  idx := cbGrpNm4.Properties.Items.IndexOf(cbGrpNM4.Text);
  if idx <= 0 then sGId := ''
              else sGId := slGrpId.Strings[idx];

  cxGridPBX4.DataController.SetRecordCount(0);
	pSI_6110_Send('6110', sGId);
end;

procedure Tfrm_PBX.btn_4_2Click(Sender: TObject);
begin
	pAgtGroupInit;

	grpAgtGroup.Tag := 0;
	grpAgtGroup.Left := (cxPageControl1.Width  - grpAgtGroup.Width) div 2;
	grpAgtGroup.Top  := (cxPageControl1.Height - grpAgtGroup.Height) div 2;
  grpAgtGroup.Visible := True;
	edtGrpId_ai_g.SetFocus;
end;

procedure Tfrm_PBX.btn_4_3Click(Sender: TObject);
var iRow : integer;
begin
  pAgtGroupInit;
  grpAgtGroup.Visible := True;

	iRow := cxGridPBX4.DataController.FocusedRecordIndex;
	if iRow < 0 then exit;

	edtGrpId_ai_g.Text := cxGridPBX4.DataController.Values[iRow, 1];  // 상당그룹ID
	edtGrpNm_ai_g.Text := cxGridPBX4.DataController.Values[iRow, 2];  // 상당그룹명
	edtGrpDesc_ai_g.Text := cxGridPBX4.DataController.Values[iRow, 3];	// 상당그룹설명
	edtGrpId_ai_g.enabled := False;
	grpAgtGroup.Tag := 1;

	grpAgtGroup.Left := (cxPageControl1.Width  - grpAgtGroup.Width) div 2;
	grpAgtGroup.Top  := (cxPageControl1.Height - grpAgtGroup.Height) div 2;
  grpAgtGroup.Visible := True;
end;

procedure Tfrm_PBX.btn_4_4Click(Sender: TObject);
Var i : Integer;
    sParam, sMsg : String;
begin
  try
    sParam := '';
    for i := 0 to cxGridPBX4.DataController.RecordCount - 1 do
    begin
      if cxGridPBX4.DataController.Values[i, 0] = True then
      begin
        if sParam = '' then
          sParam := cxGridPBX4.DataController.Values[i, 1]
        else
          sParam := sParam + ',' + cxGridPBX4.DataController.Values[i, 1];
      end;
    end;

    if sParam = '' then Exit;

    sMsg := '선택하신 상담그룹을 삭제하시겠습니까?';
    if Application.MessageBox(PChar(sMsg), 'CDMS', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
    begin
      pSI_6150_Send(sParam)
    end;
  except
  end;
end;

procedure Tfrm_PBX.btn_4_5Click(Sender: TObject);
begin
	if cxGridPBX4.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

  Frm_Main.sgExcel := '상담그룹설정.xls';
	Frm_Main.sgRpExcel := Format('IPCC>상담그룹설정]%s건/%s', [GetMoneyStr(cxGridPBX4.DataController.RecordCount), '']);
  Frm_Main.cxGridExcel := cxGridA4;
  Frm_Main.proc_excel(0);
end;

procedure Tfrm_PBX.btn_5_1Click(Sender: TObject);
var idx : integer;
	sGId : string;
begin
	idx := cbGrpNm5.Properties.Items.IndexOf(cbGrpNm5.Text);
	if idx < 1  then sGId := ''
							else sGId := slGrpId.Strings[idx];

	cxGridPBX5.DataController.SetRecordCount(0);
	pSI_6210_Send('6210', sGId, Trim(edt_5_1.Text));
end;

procedure Tfrm_PBX.btn_5_2Click(Sender: TObject);
begin
  pAgentInit;

	grpAgentSet.Tag := 0;
	grpAgentSet.Caption := '상담원 추가';
	grpAgentSet.Left := (cxPageControl1.Width  - grpAgentSet.Width) div 2;
	grpAgentSet.Top  := (cxPageControl1.Height - grpAgentSet.Height) div 2;
  grpAgentSet.Visible := True;
	edtAgtId_ai_s.SetFocus;
end;

procedure Tfrm_PBX.btn_5_3Click(Sender: TObject);
var iRow : integer;
    sGId : String;
begin
  pAgentInit;

  grpAgentSet.Caption := '상담원 수정';

	iRow := cxGridPBX5.DataController.FocusedRecordIndex;
	if iRow < 0 then exit;

	edtAgtId_ai_s.Text := cxGridPBX5.DataController.Values[iRow, 1];      //		상담원ID
	edtAgtPw_ai_s.Text := cxGridPBX5.DataController.Values[iRow, 2];  		//		상담원PW
	edtAgtNm_ai_s.Text := cxGridPBX5.DataController.Values[iRow, 3];			//		상담원명

	sGid := cxGridPBX5.DataController.Values[iRow, 17];
//	cbGrpNm5s.ItemIndex := cbGrpNm5s.Properties.Items.IndexOf(sGid);   	//		상담그룹명
	cbGrpNm5s.ItemIndex := slGrpId.IndexOf(sGid);   	//		상담그룹명

	edtAgtDesc_ai_s.Text :=	cxGridPBX5.DataController.Values[iRow, 5];  	//		상담원설명
	cbAgtType_ai_s.ItemIndex := cbAgtType_ai_s.Properties.Items.IndexOf(cxGridPBX5.DataController.Values[iRow, 6]);   	//		상담원타입

	edtExtNo_ai_s.Text :=	cxGridPBX5.DataController.Values[iRow, 7];   	//		내선번호
	edtAutoAnswerSec_ai_s.Text :=	cxGridPBX5.DataController.Values[iRow,8];    	//		자동응답(초)
	cbAutoAnswerYn_ai_s.ItemIndex := cbAutoAnswerYn_ai_s.Properties.Items.IndexOf(cxGridPBX5.DataController.Values[iRow, 9]);   	//		자동응답사용여부
	edtPrefix_ai_s.Text :=	cxGridPBX5.DataController.Values[iRow,10];   //		발신지역번호
	cbPrefixYn_ai_s.ItemIndex := cbPrefixYn_ai_s.Properties.Items.IndexOf(cxGridPBX5.DataController.Values[iRow,11]);   	//		발신지역번호사용여부
	edtAutoWaitSec_ai_s.Text :=	cxGridPBX5.DataController.Values[iRow,14];   //		전화끊고대기(초)
	cbAutoWaitYn_ai_s.ItemIndex := cbAutoWaitYn_ai_s.Properties.Items.IndexOf(cxGridPBX5.DataController.Values[iRow,13]);   	//		전화끊고대기사용여부
	cbMarkingYn_ai_s.ItemIndex := cbMarkingYn_ai_s.Properties.Items.IndexOf(cxGridPBX5.DataController.Values[iRow,12]);   	//		번호마킹여부
	cbAgtLevel_ai_s.ItemIndex := cbAgtLevel_ai_s.Properties.Items.IndexOf(cxGridPBX5.DataController.Values[iRow,15]);   	//		상담원등급

	edtAgtId_ai_s.enabled := False;
	grpAgentSet.Tag := 1;
	chk_Clear.Visible := False;

	grpAgentSet.Left := (cxPageControl1.Width  - grpAgentSet.Width) div 2;
	grpAgentSet.Top  := (cxPageControl1.Height - grpAgentSet.Height) div 2;
  grpAgentSet.Visible := True;
end;

procedure Tfrm_PBX.btn_5_4Click(Sender: TObject);
Var i : Integer;
    sParam, sMsg : String;
begin
  try
    sParam := '';
    for i := 0 to cxGridPBX5.DataController.RecordCount - 1 do
    begin
      if cxGridPBX5.DataController.Values[i, 0] = True then
      begin
        if sParam = '' then
          sParam := cxGridPBX5.DataController.Values[i, 1]
        else
          sParam := sParam + ',' + cxGridPBX5.DataController.Values[i, 1];
      end;
    end;

    if sParam = '' then Exit;

    sMsg := '선택하신 상담원을 삭제하시겠습니까?';
    if Application.MessageBox(PChar(sMsg), 'CDMS', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
    begin
      pSI_6250_Send(sParam)
    end;
  except
  end;
end;

procedure Tfrm_PBX.btn_5_5Click(Sender: TObject);
begin
	if cxGridPBX5.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSI);
		exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	Frm_Main.sgExcel := '상담원설정.xls';
	Frm_Main.sgRpExcel := Format('IPCC>상담원설정]%s건/%s', [GetMoneyStr(cxGridPBX5.DataController.RecordCount), '']);
	Frm_Main.cxGridExcel := cxGridA5;
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_PBX.btn_6_1Click(Sender: TObject);
begin
	cxGridPBX6.DataController.SetRecordCount(0);

	fSI_6310_Send('6310',  Trim(edt_6_1.Text));
end;

procedure Tfrm_PBX.btn_6_2Click(Sender: TObject);
begin
	pAdminInit;

	grpAdminSet.Tag := 0;
	grpAdminSet.Caption := '관리자 추가';
	grpAdminSet.Left := (cxPageControl1.Width  - grpAdminSet.Width) div 2;
	grpAdminSet.Top  := (cxPageControl1.Height - grpAdminSet.Height) div 2;
  grpAdminSet.Visible := True;
	edt_ID.SetFocus;
end;

procedure Tfrm_PBX.btn_6_3Click(Sender: TObject);
var iRow : integer;
begin
	pAdminInit;

	iRow := cxGridPBX6.DataController.FocusedRecordIndex;
	if iRow < 0 then exit;

	edt_ID.Text := cxGridPBX6.DataController.Values[iRow, 1];      //		관리자ID
	edt_PW.Text := cxGridPBX6.DataController.Values[iRow, 7];  		//		관리자PW
	edt_NM.Text := cxGridPBX6.DataController.Values[iRow, 2];			//		관리자명
	edt_Desc.Text  :=	cxGridPBX6.DataController.Values[iRow, 3];  	//		관리자설명
	edt_ExtNo.Text :=	cxGridPBX6.DataController.Values[iRow, 4];   	//		내선번호
	cb_Level.ItemIndex := cb_Level.Properties.Items.IndexOf(cxGridPBX6.DataController.Values[iRow,5]);   	//  관리자 권한 1 : 슈퍼관리자(administrator) 2 : 메인관리자  3 : 서브관리자  4 : 지사장

	edt_ID.enabled := False;
	grpAdminSet.Tag := 1;
	grpAdminSet.Caption := '관리자 수정';
	grpAdminSet.Left := (cxPageControl1.Width  - grpAdminSet.Width) div 2;
	grpAdminSet.Top  := (cxPageControl1.Height - grpAdminSet.Height) div 2;
  grpAdminSet.Visible := True;
end;

procedure Tfrm_PBX.btn_6_4Click(Sender: TObject);
Var i : Integer;
    sParam, sMsg : String;
begin
  try
    sParam := '';
    for i := 0 to cxGridPBX6.DataController.RecordCount - 1 do
    begin
      if cxGridPBX6.DataController.Values[i, 0] = True then
      begin
        if sParam = '' then
          sParam := cxGridPBX6.DataController.Values[i, 1]
        else
          sParam := sParam + ',' + cxGridPBX6.DataController.Values[i, 1];
      end;
    end;

		if sParam = '' then Exit;

		sMsg := '선택하신 관리자를 삭제하시겠습니까?';
    if Application.MessageBox(PChar(sMsg), 'CDMS', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
    begin
      pSI_6350_Send(sParam)
    end;
  except
  end;
end;

procedure Tfrm_PBX.btn_6_5Click(Sender: TObject);
begin
	if cxGridPBX6.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSI);
		exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	Frm_Main.sgExcel := '관리자설정.xls';
	Frm_Main.sgRpExcel := Format('IPCC>관리자설정]%s건/%s', [GetMoneyStr(cxGridPBX6.DataController.RecordCount), '']);
	Frm_Main.cxGridExcel := cxGridA6;
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_PBX.btn_6_6Click(Sender: TObject);
begin
	if not pnl_MasterPwChange.visible then pnl_MasterPwChange.visible := True else pnl_MasterPwChange.visible := False;
	edt_NowPw.Text := '';
	edt_NewPw.Text := '';
	edt_ConfirmPw.Text := '';
	pnl_MasterPwChange.Left := 677;
	pnl_MasterPwChange.Top :=	38;
	edt_NowPw.SetFocus;
end;

procedure Tfrm_PBX.btn_7_1Click(Sender: TObject);
Var idx, i : Integer;
    sMngId : String;
begin
	Screen.Cursor := crHourGlass;
	cxGroupBox21.enabled := False;
	idx := cbMngNm7.Properties.Items.IndexOf(cbMngNm7.Text);
	if idx <= 0 then 
	begin
		cxGridPBX7.DataController.SetRecordCount(0);
		sMngId := '';
	end	else 
	begin      //관리자 지정
		cxGridPBX7.BeginUpdate;
		for i := 0 to cxGridPBX7.DataController.RecordCount -1 do
		begin
			cxGridPBX7.DataController.Values[i, 0] := False;
		end;
		cxGridPBX7.EndUpdate;
				
		sMngId := slManagerID.Strings[idx];
	end;

	fSI_6360_Send('6360', sMngId);
end;

procedure Tfrm_PBX.btn_7_3Click(Sender: TObject);
var sParam : string;
	idx, i, iTmp : integer;
	sMId, sExt : string;
begin
  idx := cbMngNm7.ItemIndex;
  sMId := slManagerID[iDx];

  iTmp := 0;
  sParam := ''; sExt := '';
  sParam := sMId;
  for i := 0 to cxGridPBX7.DataController.RecordCount - 1 do
  begin
    if cxGridPBX7.DataController.Values[i, 0] = True then
    begin
      if iTmp = 0 then
        sExt := cxGridPBX7.DataController.Values[i, 1]
      else
        sExt := sExt + ',' + cxGridPBX7.DataController.Values[i, 1];
      inc(iTmp);
    end;
  end;
  sParam := sParam + '│' + sExt;

  pSI_6370_Send('6370', sParam);
end;

procedure Tfrm_PBX.btn_7_5Click(Sender: TObject);
begin
	if cxGridPBX7.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSI);
		exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	Frm_Main.sgExcel := '관리자권한설정.xls';
	Frm_Main.sgRpExcel := Format('IPCC>관리자권한설정]%s건/%s', [GetMoneyStr(cxGridPBX7.DataController.RecordCount), '']);
	Frm_Main.cxGridExcel := cxGridA7;
	Frm_Main.proc_excel(0);
end;

procedure Tfrm_PBX.btn_8Click(Sender: TObject);
begin
	FSYSMente.slCategory.Clear;
	FSYSMente.slCateName.Clear;
	FSYSMente.slCodeID.Clear;
	FSYSMente.slCodeName.Clear;
	FSYSMente.slFilename.Clear;
	FSYSMente.slUse.Clear;
	cxGridPBX8_1.DataController.SetRecordCount(0);
	proc_Set_SystemMente;
end;

procedure Tfrm_PBX.btn_8_1Click(Sender: TObject);
var iDx : Integer;
	sCodeID : string;
begin
	SetDebugeWrite('Tfrm_PBX.btn_8_1Click');
	Try
		btn_8_1.Tag := 99;
		iDx := FMente.slCodeName.IndexOf(cb_8_2.Text);
		if iDx < 0 then exit;
		sCodeID := FMente.slCodeID[iDx];
		proc_Get_MenteList(sCodeID, 1);
	except
	end;
end;

procedure Tfrm_PBX.btn_8_2Click(Sender: TObject);
var iTmp: integer;
begin
	SetDebugeWrite('Tfrm_PBX.btn_8_2Click');
	Try
		if ( Not Assigned(Frm_PBX06) ) Or ( Frm_PBX06 = Nil ) then Frm_PBX06 := TFrm_PBX06.Create(Nil);
		Frm_PBX06.proc_Init;

		iTmp := FMente.slCateName.IndexOf(cb_8_1.text);
		if iTmp < 0 then exit;
		Frm_PBX06.edt_Type.Text := FMente.slCateName[iTmp];
		Frm_PBX06.edt_Type.Hint := FMente.slCategory[iTmp];

		iTmp := FMente.slCodeName.IndexOf(cb_8_2.text);
		if iTmp < 0 then exit;
		Frm_PBX06.edt_Gubun.Text := FMente.slCodeName[iTmp];
		Frm_PBX06.edt_Gubun.Hint := FMente.slCodeID[iTmp];
		Frm_PBX06.Show;     
	except
	end;
end;

procedure Tfrm_PBX.btn_8_4Click(Sender: TObject);
var iRow, i, iCnt, iDx : integer;
	AView: TcxGridDBTableView;
	sCodeId, sMentNm, sMentID, sStr, sTmp : string;
begin
	AView := cxGridPBX8_2;
	iRow := AView.DataController.FocusedRecordIndex;

	iDx := FMente.slCodeName.IndexOf(cb_8_2.Text);
	if iDx < 0 then exit;
	sCodeId := FMente.slCodeID[iDx];

	sMentNm := AView.DataController.Values[iRow,1] ;
	iCnt := 0;
	for i := 0 to AView.DataController.RecordCount - 1 do
	begin
		if AView.DataController.Values[i,0] = true then
		begin
			if iCnt = 0 then
			begin
//				sMentNm := AView.DataController.Values[i,1] + '[' + AView.DataController.Values[i,2] +']';
				sMentID := AView.DataController.Values[i,1];
			end
			else
			begin
				if (iCnt > 1) and ((iCnt	mod 2) = 0) then sMentNm := sMentNm + #13#10;

//				sMentNm := sMentNm + ', ' + AView.DataController.Values[i,1] + '[' + AView.DataController.Values[i,2] +']';

				sMentID := sMentID + ',' + AView.DataController.Values[i,1];
			end;
			inc(iCnt);
		end;
	end;  
	if iCnt = 0 then 
	begin
		GMessagebox('멘트를 선택해 주세요', CDMSI);
		Exit;
	end;
	
	sTmp := Format('선택하신 %d개의 멘트를 모두 삭제하시겠습니까??', [iCnt]);
	sTmp := sTmp + #13#10 + #13#10 + '[삭제 멘트]';
	sTmp := sTmp + #13#10 + sMentID;

	if Application.MessageBox(PChar(sTmp), CDMSI,
				MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
	begin
		sStr := fSI_6860_Send('6860', sCodeId, Trim(sMentID));
	end;
end;

procedure Tfrm_PBX.btnSearch_qeClick(Sender: TObject);
var idx : integer;
	  sGId, sAId : string;
begin
	idx := cxGrdVPBX_grp_qe_s.DataController.FocusedRecordIndex;
  if idx < 0 then Exit;
  sGId := cxGrdVPBX_grp_qe_s.DataController.Values[idx, 1];
  lblSelGroupId.Caption := sGId;

  idx := cxGrdVPBX_agt_qe_s.DataController.FocusedRecordIndex;
  if idx < 0 then Exit;

  sAId := cxGrdVPBX_agt_qe_s.DataController.Values[idx, 1];

  lblSelAgentId_s.Caption := '  >> 상담원 : ' + cxGrdVPBX_agt_qe_s.DataController.Values[idx, 2] + ' , ' +
                                  '아이디 : ' + cxGrdVPBX_agt_qe_s.DataController.Values[idx, 1];
  lblSelAgentId_s.Hint    := cxGrdVPBX_agt_qe_s.DataController.Values[idx, 1];

	cxGridPBX9.DataController.SetRecordCount(0);
	Screen.Cursor := crHourGlass;
	cxGroupBox22.enabled := False;

	pSI_6910_Send('6910', sGId, sAId);
end;

procedure Tfrm_PBX.btnSearch_qe_pClick(Sender: TObject);
Var	sExt, sAId : string;
begin
	if Trim(lblSelExtenNo_p.Caption) = '' then
	begin
		GMessagebox('대표번호(ACD그룹)를 선택해 주세요!', CDMSI);
		Exit;
	end;

	sExt := lblSelExtenNo_p.Hint;
	sAId := lblSelAgent_p.Hint;

	cxGridPBX10.DataController.SetRecordCount(0);
	pSI_7010_Send('7010', sExt, sAId);
end;

procedure Tfrm_PBX.btnUpdate_qeClick(Sender: TObject);
var sParam, sGId, sAId, sExt : string;
	  i, iCnt : integer;
begin
  sGId := lblSelGroupId.Caption;
  sAId := lblSelAgentId_s.Hint;

	Try
    sExt := '';
    iCnt := 0;
		for i := 0 to cxGridPBX9.DataController.RecordCount - 1 do
		begin
			if cxGridPBX9.DataController.Values[i, 0] = True then
			begin
        Inc(iCnt);
				if sExt = '' then
					sExt := cxGridPBX9.DataController.Values[i, 1]
				else
					sExt := sExt + ',' + cxGridPBX9.DataController.Values[i, 1];
			end;
		end;

    if iCnt = 0 then
    begin
  		GMessagebox('1개이상의 호분배 그룹을 선택해야 됩니다.', CDMSI);
      Exit;
    end;

		sParam := sGId;
		sParam := sParam + '│' + sAId;
		sParam := sParam + '│' + sExt;

		pSI_6920_Send('6920', sParam);
	except
	End;
end;

procedure Tfrm_PBX.btnUpdate_qe_pClick(Sender: TObject);
Var iRow : Integer;
begin
  if Trim(lblSelExtenNo_p.Caption) = '' then
  begin
		GMessagebox('대표번호(ACD그룹)를 선택해 주세요!', CDMSI);
    Exit;
  end;

  iRow := cxGrdVPBX_grp_qe_p.DataController.FocusedRecordIndex;
  if iRow < 0 then
  begin
		GMessagebox('상담그룹을 선택해 주세요!', CDMSI);
    Exit;
  end;

  edtCallDist.Text := lblSelExtenNo_p.Caption;
  edtCallDist.Hint := lblSelExtenNo_p.Hint;

  iRow := cxGridPBX10.DataController.FocusedRecordIndex;
  if iRow < 0 then
  begin
		GMessagebox('상담원을 선택해 주세요!', CDMSI);
    Exit;
  end;

  cbAgtNm10_1.Properties.Items.Clear;
  cbAgtNm10_1.Properties.Items.Add('전체');
  cbAgtNm10_1.Properties.Items.Add(cxGridPBX10.DataController.Values[iRow, 3]);
  cbAgtNm10_1.ItemIndex := 1;

  cbPriority.ItemIndex := cbPriority.Properties.Items.IndexOf(cxGridPBX10.DataController.Values[iRow, 2]);

  grpCallDistSet.Tag := 1;
  grpCallDistSet.Caption := '호 분배 우선 순위 수정';
	grpCallDistSet.Left := (cxPageControl1.Width  - grpCallDistSet.Width) div 2;
	grpCallDistSet.Top  := (cxPageControl1.Height - grpCallDistSet.Height) div 2;
	grpCallDistSet.Visible := True;
	grpCallDistSet.BringToFront;
end;

procedure Tfrm_PBX.btnFileUpLoadClick(Sender: TObject);
var
	I: Integer;
begin
	cxViewFileExcelList.DataController.SetRecordCount(0);

	for I := 0 to cxViewFileExcelList.ColumnCount - 1 do
	begin
		cxViewFileExcelList.Columns[I].Visible := False;
  end;

  try
		dlgOpen.Filter := '엑셀파일(*.xls;*.xlsx;*.csv)|*.xls;*.xlsx;*.csv';
//		dlgOpen.Filter := '*.*';
		if dlgOpen.Execute then
    begin
      edtFilename.Text := dlgOpen.FileName;

			if not ExcelToGridEx(edtFilename.Text, cxViewFileExcelList, Gauge1) then
      begin
				ShowMessage('엑셀파일을 불러오는데 실패했습니다. 엑셀파일을 확인하시고 다시 시도해 주세요.');
				Exit;
			end;

      Application.ProcessMessages;
    end;
  except
  end;
end;

procedure Tfrm_PBX.btnFileUpSaveClick(Sender: TObject);
begin
	try
		if cxViewFileExcelList.DataController.RowCount = 0 then Exit;
    if Trim(edtFileName.Text) = '' then Exit;

  	pSI_7110_Send(Trim(edtFileName.Text));
    btnFileUpExit.Click;
  except
  end;
end;

procedure Tfrm_PBX.btnFileUpExitClick(Sender: TObject);
begin
	cxPageControl1.Enabled := True;
  grpFileUpload.Visible := False;
end;

procedure Tfrm_PBX.btnGraph_caClick(Sender: TObject);
begin
  if cxPC_ca.ActivePageIndex = 0 then
  begin
    if pnlChart_ca_a.Height < 10 then pSetGraphSlide(pnlChart_ca_a, 3, 194)
                                 else pSetGraphSlide(pnlChart_ca_a, 4, 0);
  end else
  if cxPC_ca.ActivePageIndex = 1 then
  begin
    if pnlChart_ca_t.Width < 10 then pSetGraphSlide(pnlChart_ca_t, 1, 350)
                                else pSetGraphSlide(pnlChart_ca_t, 2, 0);
  end else
  if cxPC_ca.ActivePageIndex = 2 then
  begin
    if pnlChart_ca_d.Width < 10 then pSetGraphSlide(pnlChart_ca_d, 1, 350)
																else pSetGraphSlide(pnlChart_ca_d, 2, 0);
  end;
end;

procedure Tfrm_PBX.btnSch_grp_qe_pClick(Sender: TObject);
begin
  pSnd_HoGroup(2, Trim(edtGrpNm_qe_p.Text) );
end;

procedure Tfrm_PBX.btnSch_grp_qe_sClick(Sender: TObject);
begin
  pSnd_HoGroup(1, Trim(edtGrpNm_qe_s.Text) );
end;

procedure Tfrm_PBX.btnExit_qeClick(Sender: TObject);
begin
  grpCallDistSet.Visible := False;
end;

procedure Tfrm_PBX.btnDelete_qe_pClick(Sender: TObject);
Var i, iCnt : Integer;
    sParam, sMsg, sExt, sName : String;
begin
  try
    sParam := '';
  	iCnt := 0;
    for i := 0 to cxGridPBX10.DataController.RecordCount - 1 do
    begin
      if cxGridPBX10.DataController.Values[i, 0] = True then
      begin
        Inc(iCnt);
        if sParam = '' then
        begin
          sParam := cxGridPBX10.DataController.Values[i, 3];
  				sName  := cxGridPBX10.DataController.Values[i,1] + '[' +
                    cxGridPBX10.DataController.Values[i,2] +']';
        end else
        begin
          sParam := sParam + ',' + cxGridPBX10.DataController.Values[i, 3];
  				sName  := sName + #10#13 + cxGridPBX10.DataController.Values[i,1] + '[' +
                                     cxGridPBX10.DataController.Values[i,2] +']';
        end;
      end;
    end;

    if sParam = '' then Exit;

    sExt := lblSelExtenNo_p.Hint;

  	sMsg := Format('선택하신 %d명의 상담원을 모두 삭제하시겠습니까??', [iCnt]);
	  sMsg := sMsg + #13#10 + #13#10 + '[삭제 상담원]';
  	sMsg := sMsg + #13#10 + sName;

    if Application.MessageBox(PChar(sMsg), 'CDMS', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
    begin
      pSI_7042_Send(sExt, sParam)
    end;
  except
  end;
end;

procedure Tfrm_PBX.btn_8_5Click(Sender: TObject);
begin
	btn_8_5.Tag := 99;
	proc_Get_MenteList('',0);
end;

procedure Tfrm_PBX.btn_HelpCloseClick(Sender: TObject);
begin
	pnl_Notice.visible := False;
end;

procedure Tfrm_PBX.btn_PwChangeClick(Sender: TObject);
var sParam, sTmp : string;
begin
	Try
		if Trim(edt_NowPw.Text) <> GT_Si415_INFO.pw then
		begin
			ShowMessage('현재 사용중인 비밀번호가 아닙니다. 확인 후 다시 시도해 주세요.');
			edt_NowPw.Setfocus;
			Exit;
		end;
		if Trim(edt_NewPw.Text) <> Trim(edt_ConfirmPw.Text) then
		begin
			ShowMessage('신규 비밀번호를 다시 확인 후 다시 시도해 주세요.');
			edt_NewPw.Text := '';
			edt_ConfirmPw.Text := '';
			edt_NewPw.Setfocus;	
			Exit;
		end;
		sParam := Trim(GT_Si415_INFO.Id);
		sParam := sParam + '│' + Trim(edt_NewPw.Text);

		sTmp := '6380';
		pSI_6380_Send(sTmp, sParam);
	except
	End;
end;

procedure Tfrm_PBX.btn_PwCloseClick(Sender: TObject);
begin
	pnl_MasterPwChange.visible := False;
	edt_NowPw.Text := '';
	edt_NewPw.Text := '';
	edt_ConfirmPw.Text := '';
end;

procedure Tfrm_PBX.cxButton4Click(Sender: TObject);
begin
	if ( Not Assigned(Frm_PBX08) ) Or ( Frm_PBX08 = Nil ) then Frm_PBX08 := TFrm_PBX08.Create(Nil);
	Frm_PBX08.proc_Init;
	Frm_PBX08.btn_3_1.click;
	Frm_PBX08.Show;
end;

procedure Tfrm_PBX.cxDtHDayPropertiesChange(Sender: TObject);
begin
  edtWeekDay.Text := fgetDayOfWeek(cxDtHDay.Date);
end;

procedure Tfrm_PBX.cxGrdVPBX_wkCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pWorkDayLoad;
end;

procedure Tfrm_PBX.cxGridBandedColumn3PropertiesEditValueChanged(
  Sender: TObject);
var sParam, sStr, sTmp : string;
	iRow : integer;
begin
	if ( Not Assigned(Frm_PBX01) ) Or ( Frm_PBX01 = Nil ) then Frm_PBX01 := TFrm_PBX01.Create(Nil);
	sParam := '';
	iRow := cxGridPBX3.DataController.FocusedRecordIndex;
	if iRow < 0 then exit;
	sParam := GT_Si415_INFO.ID;    //cxGrdMV_List.ViewData.Records[i].Values[j];
	sParam := sParam + '│' + cxGridPBX3.DataController.Values[iRow, 1];     									 //호분배 그룹
	sParam := sParam + '│' + TcxTextedit(Sender).text;  	       	 //대표번호
	sParam := sParam + '│' + cxGridPBX3.DataController.Values[iRow, 3];		       	 //착신번호
	sParam := sParam + '│' + cxGridPBX3.DataController.Values[iRow, 4];   	                   //서비스명
	sParam := sParam + '│' + '││N│0000│2359││N│││││Y│N│N│N│N│N│N│00000│daeri│vip│N│daeri_ars│0000│0000│││2' ;
	sTmp := '6030';
	sStr := fSI_6020_30_Send(sTmp, sParam);
end;

procedure Tfrm_PBX.cxGridDBColumn45PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var iRow, iSpeak, iDx : Integer;
	sSpeak, sUrl, sTmp, sFileName, sIP : string;
begin
	Try
		iRow := cxGridPBX8_2.DataController.FocusedRecordIndex;
		iSpeak := cxGridPBX8_2.GetColumnByFieldName('멘트명').Index;
		sSpeak := cxGridPBX8_2.DataController.Values[iRow, iSpeak] + '.wav';
		sIP := 'http://'+ Trim(GT_Si415_INFO.IP)+':9425' ;
		
		sUrl := sIP+'/ivrment/';
		iDx := FMente.slCateName.IndexOf(cb_8_1.Text);
		sTmp := FMente.slCategory[iDx]; 
	
		if sTmp = 'CTI_MENT_TYPE' then
			sUrl := sIP+'/ctiment/'
		else
			sUrl := sIP+'/ivrment/';
	
		if GT_MediaType = 'Windows' then
		begin
			frm_Main.frm_Media_1[2].winPlayer.mediaCollection.getAll.clear;
			frm_Main.frm_Media_1[2].winPlayer.currentPlaylist.clear;
			try
				frm_Main.frm_Media_1[2].winPlayer.URL := sUrl+sSpeak;
			except
				On E: Exception do
				begin
					ShowMessage(e.Message);
				end;
			end;
		end else
		if GT_MediaType = 'Basic' then
		begin
			if Assigned(frm_Main.frm_Media_2[0]) then frm_Main.frm_Media_2[0].MediaPlayer0.Close;
			if Assigned(frm_Main.frm_Media_2[1]) then frm_Main.frm_Media_2[1].MediaPlayer0.Close;
			frm_Main.frm_Media_2[2].MediaPlayer0.Close;
			sFileName := SOUNDDIRECTORY + 'Tmp.wav';
			
			if FileExists(sFileName) then
				DeleteFile(sFileName);	

			if func_FileDown(sUrl+sSpeak) then
			begin
				frm_Main.frm_Media_2[2].MediaPlayer0.FileName := sFileName;
				frm_Main.frm_Media_2[2].MediaPlayer0.Open;
				frm_Main.frm_Media_2[2].MediaPlayer0.Play;
			end;
		end;
	except
	End;
end;

procedure Tfrm_PBX.cxGridPBX10Bands0HeaderClick(Sender: TObject);
var i : integer;
begin
	cxGridPBX10.BeginUpdate;
	for i := 0 to cxGridPBX10.DataController.RecordCount - 1 do
	begin
		if cxGridPBX10.Bands[0].Tag = 0 then
		begin
			cxGridPBX10.DataController.Values[i, 0] := True;
		end else
		if cxGridPBX10.Bands[0].Tag = 1 then
		begin
			cxGridPBX10.DataController.Values[i, 0] := false;
		end;
	end;
	if cxGridPBX10.Bands[0].Tag = 0 then cxGridPBX10.Bands[0].Tag := 1 else cxGridPBX10.Bands[0].Tag := 0;
	cxGridPBX10.EndUpdate;
end;

procedure Tfrm_PBX.cxGridPBX10CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnUpdate_qe_p.Click;
end;

procedure Tfrm_PBX.cxGridPBX3Bands0HeaderClick(Sender: TObject);
var i : integer;
begin
	cxGridPBX3.BeginUpdate;
	for i := 0 to cxGridPBX3.DataController.RecordCount - 1 do
	begin
		if cxGridPBX3.Bands[0].Tag = 0 then
		begin
			cxGridPBX3.DataController.Values[i, 0] := True;
		end else
		if cxGridPBX3.Bands[0].Tag = 1 then
		begin
			cxGridPBX3.DataController.Values[i, 0] := false;
		end;
	end;
	if cxGridPBX3.Bands[0].Tag = 0 then cxGridPBX3.Bands[0].Tag := 1 else cxGridPBX3.Bands[0].Tag := 0;
	cxGridPBX3.EndUpdate;
end;

procedure Tfrm_PBX.cxGridPBX3CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	btn_3_3Click(btn_3_3);
end;

procedure Tfrm_PBX.cxGridPBX4Bands0HeaderClick(Sender: TObject);
var i : integer;
begin
	cxGridPBX4.BeginUpdate;
	for i := 0 to cxGridPBX4.DataController.RecordCount - 1 do
	begin
		if cxGridPBX4.Bands[0].Tag = 0 then
		begin
			cxGridPBX4.DataController.Values[i, 0] := True;
		end else
		if cxGridPBX4.Bands[0].Tag = 1 then
		begin
			cxGridPBX4.DataController.Values[i, 0] := false;
		end;
	end;
	if cxGridPBX4.Bands[0].Tag = 0 then cxGridPBX4.Bands[0].Tag := 1 else cxGridPBX4.Bands[0].Tag := 0;
	cxGridPBX4.EndUpdate;
end;

procedure Tfrm_PBX.cxGridPBX4CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
begin
	btn_4_3Click(btn_4_3);
end;

procedure Tfrm_PBX.cxGridPBX4ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	ACol := AColumn.Index;
end;

procedure Tfrm_PBX.cxGridPBX4DataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(cxGridPBX4, GS_SortNoChange);
end;

procedure Tfrm_PBX.cxGridPBX5Bands0HeaderClick(Sender: TObject);
var i : integer;
begin
	cxGridPBX5.BeginUpdate;
	for i := 0 to cxGridPBX5.DataController.RecordCount - 1 do
	begin
		if cxGridPBX5.Bands[0].Tag = 0 then
		begin
			cxGridPBX5.DataController.Values[i, 0] := True;
		end else
		if cxGridPBX5.Bands[0].Tag = 1 then
		begin
			cxGridPBX5.DataController.Values[i, 0] := false;
		end;
	end;
	if cxGridPBX5.Bands[0].Tag = 0 then cxGridPBX5.Bands[0].Tag := 1 else cxGridPBX5.Bands[0].Tag := 0;
	cxGridPBX5.EndUpdate;
end;

procedure Tfrm_PBX.cxGridPBX5CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	btn_5_3.Click;
end;

procedure Tfrm_PBX.cxGridPBX5ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	ACol := AColumn.Index;
end;

procedure Tfrm_PBX.cxGridPBX5DataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(cxGridPBX5, GS_SortNoChange);
end;

procedure Tfrm_PBX.cxGridPBX6Bands0HeaderClick(Sender: TObject);
var i : integer;
begin
	cxGridPBX6.BeginUpdate;
	for i := 0 to cxGridPBX6.DataController.RecordCount - 1 do
	begin
		if cxGridPBX6.Bands[0].Tag = 0 then
		begin
			cxGridPBX6.DataController.Values[i, 0] := True;
		end else
		if cxGridPBX6.Bands[0].Tag = 1 then
		begin
			cxGridPBX6.DataController.Values[i, 0] := false;
		end;
	end;
	if cxGridPBX6.Bands[0].Tag = 0 then cxGridPBX6.Bands[0].Tag := 1 else cxGridPBX6.Bands[0].Tag := 0;
	cxGridPBX6.EndUpdate;
end;

procedure Tfrm_PBX.cxGridPBX6CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	btn_6_3Click(btn_6_3);
end;

procedure Tfrm_PBX.cxGridPBX6ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	ACol := AColumn.Index;
end;

procedure Tfrm_PBX.cxGridPBX6DataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(cxGridPBX6, GS_SortNoChange);
end;

procedure Tfrm_PBX.cxGridPBX7Bands0HeaderClick(Sender: TObject);
var i : integer;
begin
	cxGridPBX7.BeginUpdate;
	for i := 0 to cxGridPBX7.DataController.RecordCount - 1 do
	begin
		if cxGridPBX7.Bands[0].Tag = 0 then
		begin
			cxGridPBX7.DataController.Values[i, 0] := True;
		end else
		if cxGridPBX7.Bands[0].Tag = 1 then
		begin
			cxGridPBX7.DataController.Values[i, 0] := false;
		end;
	end;
	if cxGridPBX7.Bands[0].Tag = 0 then cxGridPBX7.Bands[0].Tag := 1 else cxGridPBX7.Bands[0].Tag := 0;
	cxGridPBX7.EndUpdate;
end;

procedure Tfrm_PBX.cxGridPBX8_1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
var iRow, iDx : integer;
	AView: TcxGridDBTableView;
begin
	if ( Not Assigned(Frm_PBX05) ) Or ( Frm_PBX05 = Nil ) then Frm_PBX05 := TFrm_PBX05.Create(Nil);
	Frm_PBX05.proc_Init;

	AView := cxGridPBX8_1;
	iRow := AView.DataController.FocusedRecordIndex;
	if iRow < 0 then exit;

	iDx := Frm_PBX05.cb_Gubun.Properties.Items.IndexOf(AView.DataController.Values[iRow, 1]); //멘트구분
	if iDx < 0 then Frm_PBX05.cb_Gubun.ItemIndex := 0 else Frm_PBX05.cb_Gubun.ItemIndex := iDx; 
	
	iDx := Frm_PBX05.cb_Name.Properties.Items.IndexOf(AView.DataController.Values[iRow, 2]); //멘트이름
	if iDx < 0 then Frm_PBX05.cb_Name.ItemIndex := 0 else Frm_PBX05.cb_Name.ItemIndex := iDx; 
	
	iDx := Frm_PBX05.cb_Use.Properties.Items.IndexOf(AView.DataController.Values[iRow, 3]); //멘트사용
	if iDx < 0 then Frm_PBX05.cb_Use.ItemIndex := 0 else Frm_PBX05.cb_Use.ItemIndex := iDx; 

	Frm_PBX05.Show;     
end;

procedure Tfrm_PBX.cxGridPBX8_1ColumnHeaderClick(Sender: TcxGridTableView;
	AColumn: TcxGridColumn);
begin
	ACol := AColumn.Index;
end;

procedure Tfrm_PBX.cxGridPBX8_1DataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(cxGridPBX8_1, ACol, GS_SortNoChange);
end;

procedure Tfrm_PBX.cxGridPBX8_2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
	iRow, iCol, gnClickedRow: Integer;
begin
	gnClickedRow := cxGridPBX8_2.DataController.FocusedRecordIndex;
	if (AButton = mbLeft) then
	begin
		iRow := ACellViewInfo.GridRecord.Index;
		iCol := cxGridPBX8_2.GetColumnByFieldName('').Index;
		if iCol = ACellViewInfo.item.Index then
			cxGridPBX8_2.DataController.Values[iRow, iCol] := not cxGridPBX8_2.DataController.Values[iRow, iCol];
	end;
end;

procedure Tfrm_PBX.cxGridPBX9Bands0HeaderClick(Sender: TObject);
var i : integer;
begin
	cxGridPBX9.BeginUpdate;
	for i := 0 to cxGridPBX9.DataController.RecordCount - 1 do
	begin
		if cxGridPBX9.Bands[0].Tag = 0 then
		begin
			cxGridPBX9.DataController.Values[i, 0] := True;
		end else
		if cxGridPBX9.Bands[0].Tag = 1 then
		begin
			cxGridPBX9.DataController.Values[i, 0] := false;
		end;
	end;
	if cxGridPBX9.Bands[0].Tag = 0 then cxGridPBX9.Bands[0].Tag := 1 else cxGridPBX9.Bands[0].Tag := 0;
	cxGridPBX9.EndUpdate;
end;

procedure Tfrm_PBX.cxPageControl1Change(Sender: TObject);
begin
	if cxPageControl1.ActivePageIndex = 6 then
	begin
		if PnlMainA7.Tag = 0 then
		begin
			PnlMainA7.Tag := 1;
			cbMngNm7.Tag := 1;
			fSI_6310_Send('6310', '');
		end;
	end
end;

procedure Tfrm_PBX.edtGrpId_ai_gKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then edtGrpNm_ai_g.SetFocus;
end;

procedure Tfrm_PBX.edtGrpNm_ai_gKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then edtGrpDesc_ai_g.SetFocus;
end;

procedure Tfrm_PBX.edtGrpDesc_ai_gKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnSave_ai_g.SetFocus;
end;

procedure Tfrm_PBX.edtAgtNm_qe_pEnter(Sender: TObject);
begin
	lbAgtNm10.Visible := False;
end;

procedure Tfrm_PBX.edtAgtNm_qe_pExit(Sender: TObject);
begin
	lbAgtNm10.Visible := (edtAgtNm_qe_p.Text = '');
end;

procedure Tfrm_PBX.edtAgtNm_qe_pFocusChanged(Sender: TObject);
begin
	lbAgtNm10.Visible := ( Not edtAgtNm_qe_p.Focused ) And (edtAgtNm_qe_p.Text = '');
end;

procedure Tfrm_PBX.edtAgtNm_qe_pKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('Tfrm_PBX.edtAgtNm_qe_pKeyDown');
	if Key = VK_RETURN then
	begin
    btnSch_agt_qe_p.Click;
	end;
end;

procedure Tfrm_PBX.edtAgtNm_qe_sEnter(Sender: TObject);
begin
	lbAgtNm9.Visible := False;
end;

procedure Tfrm_PBX.edtAgtNm_qe_sExit(Sender: TObject);
begin
	lbAgtNm9.Visible := (edtAgtNm_qe_s.Text = '');
end;

procedure Tfrm_PBX.edtAgtNm_qe_sFocusChanged(Sender: TObject);
begin
	lbAgtNm9.Visible := ( Not edtAgtNm_qe_s.Focused ) And (edtAgtNm_qe_s.Text = '');
end;

procedure Tfrm_PBX.edtAgtNm_qe_sKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('Tfrm_PBX.edt_AgtNm9KeyDown');
	if Key = VK_RETURN then
	begin
    btnSch_agt_qe_s.Click;
	end;
end;

procedure Tfrm_PBX.edtCallIdS_blKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnSearch_bl.click;
end;

procedure Tfrm_PBX.edtCallIdS_blKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX.edtCallIdS_viKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = vk_Return then btnSearch_vi.click;
end;

procedure Tfrm_PBX.edtCallIdS_viKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX.edtCallId_blKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX.edtCallId_viKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX.edtCallNmS_blKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = vk_Return then btnSearch_bl.click;
end;

procedure Tfrm_PBX.edtCallNmS_viKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnSearch_vi.click;
end;

procedure Tfrm_PBX.edtGrpNm_qe_pEnter(Sender: TObject);
begin
	lbGrpNm10.Visible := False;
end;

procedure Tfrm_PBX.edtGrpNm_qe_pExit(Sender: TObject);
begin
	lbGrpNm10.Visible := (edtGrpNm_qe_p.Text = '');
end;

procedure Tfrm_PBX.edtGrpNm_qe_pFocusChanged(Sender: TObject);
begin
	lbGrpNm10.Visible := ( Not edtGrpNm_qe_p.Focused ) And (edtGrpNm_qe_p.Text = '');
end;

procedure Tfrm_PBX.edtGrpNm_qe_pKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('Tfrm_PBX.edtGrpNm_qe_pKeyDown');
	if Key = VK_RETURN then
	begin
    btnSch_grp_qe_p.Click;
	end;
end;

procedure Tfrm_PBX.edtGrpNm_qe_sEnter(Sender: TObject);
begin
	lbGrpNm9.Visible := False;
end;

procedure Tfrm_PBX.edtGrpNm_qe_sExit(Sender: TObject);
begin
	lbGrpNm9.Visible := (edtGrpNm_qe_s.Text = '');
end;

procedure Tfrm_PBX.edtGrpNm_qe_sFocusChanged(Sender: TObject);
begin
	lbGrpNm9.Visible := ( Not edtGrpNm_qe_s.Focused ) And (edtGrpNm_qe_s.Text = '');
end;

procedure Tfrm_PBX.edtGrpNm_qe_sKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	SetDebugeWrite('Tfrm_PBX.edt_GrpNm9KeyDown');
	if Key = VK_RETURN then
	begin
    btnSch_grp_qe_s.Click;
	end;
end;

procedure Tfrm_PBX.edtLunchEKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX.edtLunchSKeyPress(Sender: TObject; var Key: Char);
begin
	if key in ['0'..'9', #13, #8] then
	else key := #0;
end;

procedure Tfrm_PBX.edtSearch_3_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then btn_3_1.Click;
end;

procedure Tfrm_PBX.edt_5_1KeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = vk_Return then btn_5_1.Click;
end;

procedure Tfrm_PBX.edt_6_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btn_6_1.Click;
end;

procedure Tfrm_PBX.edt_ConfirmPwKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = VK_Return then
	begin
		btn_PwChange.Setfocus;
	end;
end;

procedure Tfrm_PBX.edt_Keynumber10Enter(Sender: TObject);
begin
	lbKeynumber10.Visible := False;
end;

procedure Tfrm_PBX.edt_Keynumber10Exit(Sender: TObject);
begin
	lbKeynumber10.Visible := (edt_Keynumber10.Text = '');
end;

procedure Tfrm_PBX.edt_Keynumber10FocusChanged(Sender: TObject);
begin
	lbKeynumber10.Visible := ( Not edt_Keynumber10.Focused ) And (edt_Keynumber10.Text = '');
end;

procedure Tfrm_PBX.edt_Keynumber10KeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	SetDebugeWrite('Tfrm_PBX.edt_Keynumber10KeyDown');
	if Key = VK_RETURN then btnSch_Ext_qe_p.Click;
end;

procedure Tfrm_PBX.edt_NewPWKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = VK_Return then
	begin
		edt_ConfirmPw.Setfocus;
	end;
end;

procedure Tfrm_PBX.edt_NowPwKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = VK_Return then
	begin
		edt_NewPw.Setfocus;
	end;
end;

procedure Tfrm_PBX.cxGrdVPBX_agt_qe_pCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
Var iRow : Integer;
begin
  if Trim(lblSelExtenNo_p.Caption) = '' then
  begin
		GMessagebox('대표번호(ACD그룹)를 선택해 주세요!', CDMSI);
    Exit;
  end;

  iRow := cxGrdVPBX_agt_qe_p.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  lblSelAgent_p.Hint    := cxGrdVPBX_agt_qe_p.DataController.Values[iRow, 1];
  lblSelAgent_p.Caption := '  >> 상담원 : ' + cxGrdVPBX_agt_qe_p.DataController.Values[iRow, 2] + ', ' +
                                '아이디 : ' + cxGrdVPBX_agt_qe_p.DataController.Values[iRow, 1];
  btnSearch_qe_p.Click;
end;

procedure Tfrm_PBX.cxGrdVPBX_agt_qe_sCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
	btnSearch_qe.Click;
end;

procedure Tfrm_PBX.cxGrdVPBX_blBands0HeaderClick(Sender: TObject);
var i : integer;
begin
	cxGrdVPBX_bl.BeginUpdate;
	for i := 0 to cxGrdVPBX_bl.DataController.RecordCount - 1 do
	begin
		if cxGrdVPBX_bl.Bands[0].Tag = 0 then
		begin
			cxGrdVPBX_bl.DataController.Values[i, 0] := True;
		end else
		if cxGrdVPBX_bl.Bands[0].Tag = 1 then
		begin
			cxGrdVPBX_bl.DataController.Values[i, 0] := false;
		end;
	end;
	if cxGrdVPBX_bl.Bands[0].Tag = 0 then cxGrdVPBX_bl.Bands[0].Tag := 1 else cxGrdVPBX_bl.Bands[0].Tag := 0;
	cxGrdVPBX_bl.EndUpdate;
end;

procedure Tfrm_PBX.cxGrdVPBX_blCellDblClick(Sender: TcxCustomGridTableView;
	ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
begin
  btnUp_bl.Click;
end;

procedure Tfrm_PBX.cxGrdVPBX_bl_sCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
Var iRow : Integer;
begin
  iRow := cxGrdVPBX_bl_s.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  lblTitle_bl.Hint := cxGrdVPBX_bl_s.DataController.Values[iRow, 2];

  lblTitle_bl.Caption := '  >> 서비스명 : ' + cxGrdVPBX_bl_s.DataController.Values[iRow, 0] + ', ' +
                              '대표번호 : ' + cxGrdVPBX_bl_s.DataController.Values[iRow, 1];

  pBlackListSearch;
end;

procedure Tfrm_PBX.cxGrdVPBX_cl_aTcxGridDataControllerTcxDataSummaryFooterSummaryItems19GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if(TVarData(AValue).VType in [varNull, varEmpty])then AText := ''
  else begin
     if ((Sender as TcxGridTableSummaryItem).Kind = skSum) Or
        ((Sender as TcxGridTableSummaryItem).Kind = skAverage) then
     begin
        AText := FormatDateTime('hh:nn:ss', AValue);
     end;
  end;
end;

procedure Tfrm_PBX.cxGrdVPBX_ext_qe_pCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
Var iRow : Integer;
begin
	iRow := cxGrdVPBX_Ext_qe_p.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  lblSelExten_p.Caption := '  >> 대표번호 : ' + cxGrdVPBX_ext_qe_p.DataController.Values[iRow, 1] + ' , ' +
                                ' ACD그룹 : ' + cxGrdVPBX_ext_qe_p.DataController.Values[iRow, 2];
  lblSelExtenNo_p.Hint    := cxGrdVPBX_ext_qe_p.DataController.Values[iRow, 2];
  lblSelExtenNo_p.Caption := cxGrdVPBX_ext_qe_p.DataController.Values[iRow, 0];

  lblSelAgent_p.Caption := '';
  lblSelAgent_p.Hint    := '';

  btnSearch_qe_p.Click;
end;

procedure Tfrm_PBX.cxGrdVPBX_grp_qe_pCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
Var iRow : Integer;
    sGrp : String;
begin
  iRow := cxGrdVPBX_grp_qe_p.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  sGrp := cxGrdVPBX_grp_qe_p.DataController.Values[iRow, 1];

  pSnd_HoAgent(2, sGrp, '');
end;

procedure Tfrm_PBX.cxGrdVPBX_grp_qe_sCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
Var iRow : Integer;
    sGrp : String;
begin
  iRow := cxGrdVPBX_grp_qe_s.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  sGrp := cxGrdVPBX_grp_qe_s.DataController.Values[iRow, 1];

  pSnd_HoAgent(1, sGrp, '');
end;

procedure Tfrm_PBX.cxGrdVPBX_hdCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pHoliDayLoad;
end;

procedure Tfrm_PBX.cxGrdVPBX_psCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	pProductSLoad;
end;

procedure Tfrm_PBX.cxGrdVPBX_viBands0HeaderClick(Sender: TObject);
var i : integer;
begin
	cxGrdVPBX_vi.BeginUpdate;
	for i := 0 to cxGrdVPBX_vi.DataController.RecordCount - 1 do
	begin
		if cxGrdVPBX_vi.Bands[0].Tag = 0 then
		begin
			cxGrdVPBX_vi.DataController.Values[i, 0] := True;
		end else
		if cxGrdVPBX_vi.Bands[0].Tag = 1 then
		begin
			cxGrdVPBX_vi.DataController.Values[i, 0] := false;
		end;
	end;
	if cxGrdVPBX_vi.Bands[0].Tag = 0 then cxGrdVPBX_vi.Bands[0].Tag := 1 else cxGrdVPBX_vi.Bands[0].Tag := 0;
	cxGrdVPBX_vi.EndUpdate;
end;

procedure Tfrm_PBX.cxGrdVPBX_viCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnUp_vi.Click;
end;

procedure Tfrm_PBX.cxGrdVPBX_vi_sCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
Var iRow : Integer;
begin
  iRow := cxGrdVPBX_vi_s.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  lblTitle_vi.Hint := cxGrdVPBX_vi_s.DataController.Values[iRow, 2];

	lblTitle_vi.Caption := '  >> 서비스명 : ' + cxGrdVPBX_vi_s.DataController.Values[iRow, 0] + ', ' +
                              '대표번호 : ' + cxGrdVPBX_vi_s.DataController.Values[iRow, 1];

	pVipSearch;
end;

procedure Tfrm_PBX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Frm_Main.Proc_IPCCAdminLogOut;  //전문으로 CMNIPCC.exe 종료
	Frm_Main.bSI415_A.Active := False;

	Action := caFree;
end;

procedure Tfrm_PBX.FormCreate(Sender: TObject);
var
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

  cxPageControl1.ActivePageIndex := 0;

	slGrpId := TStringList.Create;
	for I := 1 to 10 do
	begin
		slAgtId[i] := TStringList.Create;
	end;
	slGroupTmp := TStringList.Create;
	slIDTmp := TStringList.Create;
	slCallDistTmp := TStringList.Create;

	slManagerID := TStringList.Create;

  tmrSI415A.Enabled := True;

  edtAgtNm_qe_s.Tag := 1;
  edtAgtNm_qe_p.Tag := 1;

	btn_6_6.visible := False;
	if GT_Si415_INFO.Id = 'administrator' then
	begin
		btn_6_6.visible := True;
	end;

	// 통화관리
	Try
//		if Not Assigned(frm_Main.frm_Media_1[2]) then
			frm_Main.frm_Media_1[2] := Tfrm_Media_1.Create(nil);
		frm_Main.frm_Media_1[2].Parent := pnl_MediaBase;
		frm_Main.frm_Media_1[2].Align := alClient;
		GT_MediaType := 'Windows';
	Except
//		if Not Assigned(frm_Main.frm_Media_2[2]) then
			frm_Main.frm_Media_2[2] := Tfrm_Media_2.Create(nil);
		frm_Main.frm_Media_2[2].Parent := pnl_MediaBase;
		frm_Main.frm_Media_2[2].Align := alClient;
		frm_Main.frm_Media_2[2].MediaPlayer0.visible := True;
		GT_MediaType := 'Basic';
	End;
	
	proc_init;
end;

procedure Tfrm_PBX.FormDestroy(Sender: TObject);
var i : integer;
begin
	FreeAndNil(slGrpId);
	for I := 1 to 10 do
	begin
		FreeAndNil(slAgtId[i]);
	end;

	FreeAndNil(FMenteCombo.slCategory);
	FreeAndNil(FMenteCombo.slCateName);
	FreeAndNil(FMenteCombo.slCodeID);
	FreeAndNil(FMenteCombo.slCodeName);
	FreeAndNil(FMente.slCategory);
	FreeAndNil(FMente.slCodeID);
	FreeAndNil(FMente.slCateName);
	FreeAndNil(FMente.slCodeName);
	FreeAndNil(FMente.slFilename);
	FreeAndNil(FMente.slUse);
	FreeAndNil(FSYSMente.slCategory);
	FreeAndNil(FSYSMente.slCodeID);
	FreeAndNil(FSYSMente.slCateName);
	FreeAndNil(FSYSMente.slCodeName);
	FreeAndNil(FSYSMente.slFilename);
	FreeAndNil(FSYSMente.slUse);
	FreeAndNil(slGroupTmp);
	FreeAndNil(slIDTmp);
	FreeAndNil(slCallDistTmp);
	FreeAndNil(slManagerID);

	if Assigned(Frm_PBX01) then Frm_PBX01.Close;         
	if Assigned(Frm_PBX02) then Frm_PBX02.Close;         
	if Assigned(Frm_PBX05) then Frm_PBX05.Close;         
	if Assigned(Frm_PBX06) then Frm_PBX06.Close;         
	if Assigned(Frm_PBX08) then Frm_PBX08.Close;         

	Frm_PBX := Nil;
end;

function Tfrm_PBX.func_FileDown(ALink : string): Boolean;
var sUrl, sTmp, sFileName : string;
	fsData : TFileStream;
begin
	Result := False;
	Try
		sFileName := SOUNDDIRECTORY + 'Tmp.wav';
		fsData := TFileStream.Create(sFileName, fmCreate);
		try
			sTmp  := GS_EnvFile.ReadString('CID_COMM', 'PBX_IP',  '');
			sUrl := ALink;
			IdHTTP1.Get(sUrl, fsData);
		finally
			fsData.Free;
			Result := True;
		end;	
	Except
		Result := False;
	End;
end;

procedure Tfrm_PBX.grpAdminSetMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(TcxGroupBox(Sender).Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_PBX.grpBListSetMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(TcxGroupBox(Sender).Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_PBX.grpFileUploadMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_PBX.grpHdaySetMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_PBX.grpVipSetMouseDown(Sender: TObject; Button: TMouseButton;
	Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
	PostMessage(TcxGroupBox(Sender).Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_PBX.grpWorkSetMouseDown(Sender: TObject; Button: TMouseButton;
	Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(TcxGroupBox(Sender).Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrm_PBX.img2Click(Sender: TObject);
begin
  pnl_Notice.BringToFront;
	pnl_Notice.visible := True;
	pnl_Notice.Left := 716;
	pnl_Notice.Top := 103;
end;

procedure Tfrm_PBX.Label7Click(Sender: TObject);
	procedure RunDownload(AFileName : STring);
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

			IE.Navigate('http://www.callmaner.com/download/' + AFileName);
			IE.Visible := True;

      Application.ProcessMessages;
      sleep(1);
    except on E: Exception do
			GMessagebox(Format('신청서 다운로드 시 오류(Err: %s)가 발생하였습니다.'#13#10
												+ '(다시시도 바랍니다.)' , [E.Message]), CDMSI);
		end;
  end;
begin
	if TLabel(Sender).Tag = 1 then RunDownload('CMNIPCC_VIP고객.zip') else
	if TLabel(Sender).Tag = 2 then RunDownload('CMNIPCC_수신거부고객.zip');
end;

procedure Tfrm_PBX.lbAgtNm10Click(Sender: TObject);
begin
	edtAgtNm_qe_p.SetFocus;
end;

procedure Tfrm_PBX.lbAgtNm9Click(Sender: TObject);
begin
	edtAgtNm_qe_s.SetFocus;
end;                                                                                    

procedure Tfrm_PBX.lbGrpNm10Click(Sender: TObject);
begin
	edtGrpNm_qe_p.SetFocus;
end;

procedure Tfrm_PBX.lbGrpNm9Click(Sender: TObject);
begin
	edtGrpNm_qe_s.SetFocus;
end;

procedure Tfrm_PBX.lbKeynumber10Click(Sender: TObject);
begin
	edt_Keynumber10.SetFocus;
end;

procedure Tfrm_PBX.lst_IDDblClick(Sender: TObject);
begin
	SetDebugeWrite('Tfrm_PBX.lst_IDDblClick');
	lst_ID.Visible := False;
end;

procedure Tfrm_PBX.lst_IDExit(Sender: TObject);
begin
	SetDebugeWrite('Tfrm_PBX.lst_IDExit');
	lst_ID.Visible := False;
end;

procedure Tfrm_PBX.lst_IDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('Tfrm_PBX.lst_IDKeyDown');
	if key = vk_Return then
	begin
		if lst_ID.ItemIndex < 0 then exit;
		lst_ID.Visible := False;
	end else
	if Key = VK_UP then
	begin
		if lst_ID.Selected[0] then edtAgtNm_qe_s.SetFocus;
	end;
end;

procedure SetDateControl(AStDt, AEdDt: TcxDateEdit; ATerm: TTermDate);
begin
  try
    case ATerm of
			tdToday:
				begin
					AStDt.Date :=
            StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
          AEdDt.Date := AStDt.Date + 1;
        end;
      tdYesterday:
        begin
          AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
            1, 8))) - 1;
          AEdDt.Date := AStDt.Date + 1;
        end;
      tdOneWeek:
        begin
          AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
            1, 8))) - 7;
          AEdDt.Date := AStDt.Date + 7;
        end;
      tdTwoWeek:
        begin
          AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 13;
          AEdDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) + 1;
        end;
      tdOneMonth:
        begin
          AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
            1, 8))) - 31;
          AEdDt.Date := AStDt.Date + 31;
        end;
      tdStartMonth:
        begin
          AStDt.Date := StartOfTheMonth(now);
          AEdDt.Date := EndOfTheMonth(now);
        end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Tfrm_PBX.MiOneMonthClick(Sender: TObject);
begin
	if cxPageControl1.ActivePageIndex = 0 then
		SetDateControl(cxDtStart_cl, cxDtEnd_cl, tdOneMonth)
	else if cxPageControl1.ActivePageIndex = 1 then
		SetDateControl(cxDtStart_ca, cxDtEnd_ca, tdOneMonth);
end;

procedure Tfrm_PBX.MiOneWeekClick(Sender: TObject);
begin
	if cxPageControl1.ActivePageIndex = 0 then
		SetDateControl(cxDtStart_cl, cxDtEnd_cl, tdOneWeek)
	else if cxPageControl1.ActivePageIndex = 1 then
		SetDateControl(cxDtStart_ca, cxDtEnd_ca, tdOneWeek);
end;

procedure Tfrm_PBX.MiStartMonthClick(Sender: TObject);
begin
	if cxPageControl1.ActivePageIndex = 0 then
		SetDateControl(cxDtStart_cl, cxDtEnd_cl, tdStartMonth)
	else if cxPageControl1.ActivePageIndex = 1 then
		SetDateControl(cxDtStart_ca, cxDtEnd_ca, tdStartMonth);
end;

procedure Tfrm_PBX.MiTodayClick(Sender: TObject);
begin
	if cxPageControl1.ActivePageIndex = 0 then
		SetDateControl(cxDtStart_cl, cxDtEnd_cl, tdToday) else
	if cxPageControl1.ActivePageIndex = 1 then
		SetDateControl(cxDtStart_ca, cxDtEnd_ca, tdToday);
end;

procedure Tfrm_PBX.MiYesterdayClick(Sender: TObject);
begin
	if cxPageControl1.ActivePageIndex = 0 then
		SetDateControl(cxDtStart_cl, cxDtEnd_cl, tdYesterday)
	else if cxPageControl1.ActivePageIndex = 1 then
		SetDateControl(cxDtStart_ca, cxDtEnd_ca, tdYesterday);
end;

procedure Tfrm_PBX.pSnd_GroupList;
begin
	try
    cbGrpNm1.Tag := 1;
		pSI_6110_Send('6110', '');   // 상담 그룹 조회
  except
  end;
end;

procedure Tfrm_PBX.pSnd_ManagerList;
begin
	cbMngNm7.Tag := 1;
	fSI_6310_Send('6310', '');
end;

procedure Tfrm_PBX.pRcv_GroupList( sData : String );
Var
  bNext : Boolean;
  sTmp : string;
  subObj : TJSONObject;
  arrjObj : TJSONArray;
  i : Integer;
begin
	try
//    sData := '61105023                    331          00                                5    E[{"GroupID":"001","GroupName":"콜마너1","GroupDesc":"","Muser":""}'+
//             ',{"GroupID":"002","GroupName":"콜마너2","GroupDesc":"","Muser":""},{"GroupID":"003","GroupName":"콜마너3","GroupDesc":"","Muser":""},{"GroupID":"004","GroupName":"콜마너4","GroupDesc":"","Muser":""},{"GroupID":"005","GroupName":"콜마너5","GroupDesc":"","Muser":""}]';

    sTmp := fSI_6111_Recv( sData, bNext);

		cbGrpNm1.Properties.Items.Clear;
		cbGrpNm2.Properties.Items.Clear;
		cbGrpNm4.Properties.Items.Clear;
		cbGrpNm5.Properties.Items.Clear;
		cbGrpNm5s.Properties.Items.Clear;
		slGrpId.Clear;

		slGrpId.Add('전체');
		cbGrpNm1.Properties.Items.Add('전체');
		arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				slGrpId.Add(subObj.Get('GroupID').JsonValue.Value);
				cbGrpNm1.Properties.Items.Add(subObj.Get('GroupName').JsonValue.Value);
			end;
		except
			SetDebugeWrite('[pRcv_GroupList] Json arrjObj error');	
		End;
		cbGrpNm1.ItemIndex := 0;
		
		cbGrpNm2.Properties.Items := cbGrpNm1.Properties.Items;
		cbGrpNm4.Properties.Items := cbGrpNm1.Properties.Items;
		cbGrpNm5.Properties.Items := cbGrpNm1.Properties.Items;
		cbGrpNm5s.Properties.Items := cbGrpNm1.Properties.Items;

		cbGrpNm2.ItemIndex := 0;
		cbGrpNm4.ItemIndex := 0;
		cbGrpNm5.ItemIndex := 0;
		cbGrpNm5s.ItemIndex := 0;

		if PnlMainA9.Tag = 0 then
    begin
      PnlMainA9.Tag := 1;
			cxGrdVPBX_grp_qe_s.Tag := 1;
      cxGrdVPBX_grp_qe_p.Tag := 0;
			pRcv_HoGroup(sData);
		end;

    if PnlMainA10.Tag = 0 then
    begin
			PnlMainA10.Tag := 1;
      cxGrdVPBX_grp_qe_s.Tag := 0;
      cxGrdVPBX_grp_qe_p.Tag := 1;
      pRcv_HoGroup(sData);
    end;
	except
  end;
end;

procedure Tfrm_PBX.pRcv_HoGroup(sData: String);
Var
  bNext : Boolean;
  sTmp : string;
  subObj : TJSONObject;
  arrjObj : TJSONArray;
  i, iRow : Integer;
begin
	try
    sTmp := fSI_6111_Recv( sData, bNext);
		if sTmp = '[]' then exit;

		if cxGrdVPBX_grp_qe_s.Tag = 1 then
    begin
      cxGrdVPBX_grp_qe_s.Tag := 0;
      cxGrdVPBX_grp_qe_s.DataController.SetRecordCount(0);
      cxGrdVPBX_Agt_qe_s.DataController.SetRecordCount(0);

      cxGrdVPBX_grp_qe_s.BeginUpdate;
  		iRow := cxGrdVPBX_grp_qe_s.DataController.AppendRecord;
  		cxGrdVPBX_grp_qe_s.DataController.Values[iRow, 0] := '전 체';
  		cxGrdVPBX_grp_qe_s.DataController.Values[iRow, 1] := '';
  		cxGrdVPBX_grp_qe_s.DataController.Values[iRow, 2] := '';

      try
				arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
				for i := 0 to arrjObj.Size - 1 do
        begin
          subObj := arrjObj.Get(i) as TJSONObject;

					iRow := cxGrdVPBX_grp_qe_s.DataController.AppendRecord;

					cxGrdVPBX_grp_qe_s.DataController.Values[iRow, 0] := subObj.Get('GroupName').JsonValue.Value + '(' +
                                                               subObj.Get('GroupID').JsonValue.Value + ')';
					cxGrdVPBX_grp_qe_s.DataController.Values[iRow, 1] := subObj.Get('GroupID').JsonValue.Value;
					cxGrdVPBX_grp_qe_s.DataController.Values[iRow, 2] := subObj.Get('GroupName').JsonValue.Value;
				end;
				cxGrdVPBX_grp_qe_s.EndUpdate;
			except
				SetDebugeWrite('[pRcv_HoGroup cxGrdVPBX_grp_qe_s] Json arrjObj error');	
				cxGrdVPBX_grp_qe_s.EndUpdate;
			End;

			cxGrdVPBX_grp_qe_s.DataController.FocusedRecordIndex := 0;
      btnSch_agt_qe_s.Click;
    end else
		if cxGrdVPBX_grp_qe_p.Tag = 1 then
    begin
      cxGrdVPBX_grp_qe_p.Tag := 0;
      cxGrdVPBX_grp_qe_p.DataController.SetRecordCount(0);
      cxGrdVPBX_Agt_qe_p.DataController.SetRecordCount(0);

      cxGrdVPBX_grp_qe_p.BeginUpdate;
  		iRow := cxGrdVPBX_grp_qe_p.DataController.AppendRecord;
  		cxGrdVPBX_grp_qe_p.DataController.Values[iRow, 0] := '전 체';
  		cxGrdVPBX_grp_qe_p.DataController.Values[iRow, 1] := '';
  		cxGrdVPBX_grp_qe_p.DataController.Values[iRow, 2] := '';

      try
				arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
				for i := 0 to arrjObj.Size - 1 do
        begin
          subObj := arrjObj.Get(i) as TJSONObject;

					iRow := cxGrdVPBX_grp_qe_p.DataController.AppendRecord;

					cxGrdVPBX_grp_qe_p.DataController.Values[iRow, 0] := subObj.Get('GroupName').JsonValue.Value + '(' +
                                                               subObj.Get('GroupID').JsonValue.Value + ')';
					cxGrdVPBX_grp_qe_p.DataController.Values[iRow, 1] := subObj.Get('GroupID').JsonValue.Value;
					cxGrdVPBX_grp_qe_p.DataController.Values[iRow, 2] := subObj.Get('GroupName').JsonValue.Value;
        end;
				cxGrdVPBX_grp_qe_p.EndUpdate;
			except
				SetDebugeWrite('[pRcv_HoGroup cxGrdVPBX_grp_qe_p] Json arrjObj error');	
				cxGrdVPBX_grp_qe_p.EndUpdate;
			End;

      cxGrdVPBX_grp_qe_p.DataController.FocusedRecordIndex := 0;
      btnSch_agt_qe_p.Click;
    end;
	except
  end;
end;

procedure Tfrm_PBX.pRcv_HoAgent(sData: String);
Var
  bNext : Boolean;
  sTmp : string;
  subObj : TJSONObject;
  arrjObj : TJSONArray;
  i, iRow : Integer;
begin
	try
    sTmp := fSI_6211_Recv( sData, bNext);
		if sTmp = '[]' then exit;

		if cxGrdVPBX_Agt_qe_s.Tag = 1 then
    begin
      cxGrdVPBX_Agt_qe_s.Tag := 0;
      cxGrdVPBX_Agt_qe_s.DataController.SetRecordCount(0);

      cxGrdVPBX_Agt_qe_s.BeginUpdate;
      try
				arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
				for i := 0 to arrjObj.Size - 1 do
        begin
          subObj := arrjObj.Get(i) as TJSONObject;

					iRow := cxGrdVPBX_Agt_qe_s.DataController.AppendRecord;

					cxGrdVPBX_Agt_qe_s.DataController.Values[iRow, 0] := subObj.Get('AgentName').JsonValue.Value + '(' +
                                                               subObj.Get('AgentID').JsonValue.Value + ')';
					cxGrdVPBX_Agt_qe_s.DataController.Values[iRow, 1] := subObj.Get('AgentID').JsonValue.Value;
					cxGrdVPBX_Agt_qe_s.DataController.Values[iRow, 2] := subObj.Get('AgentName').JsonValue.Value;
        end;
				cxGrdVPBX_Agt_qe_s.EndUpdate;
			except
				SetDebugeWrite('[pRcv_HoAgent cxGrdVPBX_Agt_qe_s] Json arrjObj error');	
				cxGrdVPBX_Agt_qe_s.EndUpdate;
			end;
    end;

		if cxGrdVPBX_Agt_qe_p.Tag = 1 then
    begin
      cxGrdVPBX_Agt_qe_p.Tag := 0;
      cxGrdVPBX_Agt_qe_p.DataController.SetRecordCount(0);

      cxGrdVPBX_Agt_qe_p.BeginUpdate;
      try
        arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
				for i := 0 to arrjObj.Size - 1 do
        begin
          subObj := arrjObj.Get(i) as TJSONObject;

					iRow := cxGrdVPBX_Agt_qe_p.DataController.AppendRecord;

					cxGrdVPBX_Agt_qe_p.DataController.Values[iRow, 0] := subObj.Get('AgentName').JsonValue.Value + '(' +
                                                               subObj.Get('AgentID').JsonValue.Value + ')';
					cxGrdVPBX_Agt_qe_p.DataController.Values[iRow, 1] := subObj.Get('AgentID').JsonValue.Value;
					cxGrdVPBX_Agt_qe_p.DataController.Values[iRow, 2] := subObj.Get('AgentName').JsonValue.Value;
				end;
				cxGrdVPBX_Agt_qe_p.EndUpdate;
			except
				SetDebugeWrite('[pRcv_HoAgent cxGrdVPBX_Agt_qe_p] Json arrjObj error');	
				cxGrdVPBX_Agt_qe_p.EndUpdate;
			end;
		end;
	except
  end;
end;

procedure Tfrm_PBX.pRcv_ManagerList(sData: String);
Var
  bNext : Boolean;
  sTmp : string;
  subObj : TJSONObject;
  arrjObj : TJSONArray;
  i : Integer;
begin
	try
		sTmp := fSI_6311_Recv( sData, bNext);

		if gSiSchRevH.sResult <> '00' then exit;
		
		cbMngNm7.Properties.Items.Clear;
		slManagerID.Clear;

		slManagerID.Add('전체');
		cbMngNm7.Properties.Items.Add('전체');
		arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
		try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				slManagerID.Add(subObj.Get('ManagerID').JsonValue.Value);
				cbMngNm7.Properties.Items.Add(subObj.Get('ManagerName').JsonValue.Value);
			end;
		except
			SetDebugeWrite('[pRcv_ManagerList] Json arrjObj error');	
		end;
		cbMngNm7.Tag := 99;
		cbMngNm7.ItemIndex := 0;
		cbMngNm7.Tag := 0;
	except
  end;
end;

procedure Tfrm_PBX.pSnd_HoGroup( iGubun : Integer; AGrp : String );
begin
  if iGubun = 1 then cxGrdVPBX_grp_qe_s.Tag := 1 else
  if iGubun = 2 then cxGrdVPBX_grp_qe_p.Tag := 1;

  pSI_6110_Send('6110', AGrp);   // 상담 그룹 조회
end;

procedure Tfrm_PBX.pSnd_HoAgent( iGubun : Integer; AGrp, AAgt : String );
begin
  if iGubun = 1 then cxGrdVPBX_Agt_qe_s.Tag := 1 else
  if iGubun = 2 then cxGrdVPBX_Agt_qe_p.Tag := 1;

  pSI_6210_Send('6210', AGrp, AAgt);   // 상담원 조회
end;

procedure Tfrm_PBX.pHoliDayInit;
begin
  lblOHday.Hint := '';
  cxDtHDay.Text := FormatDateTime('YYYY-MM-DD', Now);
  edtWeekday.Text := fgetDayOfWeek(Now);
  edtContents.Clear;
end;

procedure Tfrm_PBX.pHoliDayLoad;
Var iRow : Integer;
begin
  try
    iRow := cxGrdVPBX_hd.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;     

    pHoliDayInit;    

    lblOHday.Hint := cxGrdVPBX_hd.DataController.Values[iRow, 1];
    cxDtHDay.Text := cxGrdVPBX_hd.DataController.Values[iRow, 1];
    edtWeekday.Text := cxGrdVPBX_hd.DataController.Values[iRow, 2];
    edtContents.Text := cxGrdVPBX_hd.DataController.Values[iRow, 3];

  	grpHdaySet.Left := (cxPageControl1.Width  - grpHdaySet.Width) div 2;
  	grpHdaySet.Top  := (cxPageControl1.Height - grpHdaySet.Height) div 2;
  	grpHdaySet.Visible := True;
  	grpHdaySet.BringToFront;
  except
  end;
end;

procedure Tfrm_PBX.pVIPInit;
begin
  try
    edtQexen_vi.Tag := -1;
    edtQexen_vi.Clear;
    edtSvcNo_vi.Clear;
    edtBuzNm_vi.Clear;

    edtCallId_vi.Clear;
    edtCallNm_vi.Clear;

    edtCallDesc_vi.Clear;
    edtUseCnt_vi.Value := 0;
  except
  end;
end;

procedure Tfrm_PBX.pVipLoad;
Var iRow : Integer;
begin
  try
    iRow := cxGrdVPBX_vi.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;

    edtCallId_vi.Text := cxGrdVPBX_vi.DataController.Values[iRow, 2];
    edtCallNm_vi.Text := cxGrdVPBX_vi.DataController.Values[iRow, 3];
    edtCallDesc_vi.Text := cxGrdVPBX_vi.DataController.Values[iRow, 4];
    edtUseCnt_vi.Value := cxGrdVPBX_vi.DataController.Values[iRow, 5];
    edtQexen_vi.Tag := StrToIntDef(cxGrdVPBX_vi.DataController.Values[iRow, 8], -1);

    grpVipSet.Caption := 'VIP 고객 수정';
    grpVipSet.Left := (cxPageControl1.Width  - grpVipSet.Width) div 2;
    grpVipSet.Top  := (cxPageControl1.Height - grpVipSet.Height) div 2;
    grpVipSet.Visible := True;
    grpVipSet.BringToFront;
  except
  end;
end;

procedure Tfrm_PBX.pVipSearch;
Var sQexten, sCId, sCNm : String;
begin
  if ( lblTitle_vi.Hint = '' ) And ( Not ckAll_vi.Checked ) then
  begin
    GMessagebox('좌측 서비스명을 선택해 주세요.', CDMSI);
    Exit;
  end;

  cxGrdVPBX_vi.DataController.SetRecordCount(0);
  giViCnt := 0;

  if ckAll_vi.Checked then sQexten := ''
                      else sQexten := lblTitle_vi.Hint;
  sCId := Trim(edtCallIdS_vi.Text);
  sCNm := Trim(edtCallNmS_vi.Text);

  ////////////////////////////////////////////////////////////////////////////
  FExcelDown_VI := '호분배그룹:' + lblTitle_vi.Hint + ',' + '고객전화번호:' + sCId + ',' + '고객명:' + sCNm;
  ////////////////////////////////////////////////////////////////////////////

  pSI_6710_Send( sQexten, sCId, sCNm );
end;

procedure Tfrm_PBX.pBlackListInit;
begin
  try
    edtQexen_bl.Tag := -1;
    edtQexen_bl.Clear;
    edtSvcNo_bl.Clear;
    edtBuzNm_bl.Clear;

    edtCallId_bl.Clear;
    edtCallNm_bl.Clear;

    edtCallDesc_bl.Clear;
    edtUseCnt_bl.Value := 0;
    cbType_bl.ItemIndex := 0;
  except
  end;
end;

procedure Tfrm_PBX.pBlackListLoad;
Var iRow : Integer;
begin
  try
    iRow := cxGrdVPBX_bl.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;

    edtCallId_bl.Text := cxGrdVPBX_bl.DataController.Values[iRow, 2];
    edtCallNm_bl.Text := cxGrdVPBX_bl.DataController.Values[iRow, 3];
    edtCallDesc_bl.Text := cxGrdVPBX_bl.DataController.Values[iRow, 4];
    edtUseCnt_bl.Value := cxGrdVPBX_bl.DataController.Values[iRow, 5];

    if cxGrdVPBX_bl.DataController.Values[iRow, 6]= '전체' then cbType_bl.ItemIndex := 0
                                                           else cbType_bl.ItemIndex := 1;

    edtQexen_bl.Tag := StrToIntDef(cxGrdVPBX_bl.DataController.Values[iRow, 9], -1);

    grpBListSet.Caption := '수신거부(블랙리스트) 수정';
    grpBListSet.Left := (cxPageControl1.Width  - grpBListSet.Width) div 2;
    grpBListSet.Top  := (cxPageControl1.Height - grpBListSet.Height) div 2;
    grpBListSet.Visible := True;
    grpBListSet.BringToFront;
  except
  end;
end;

procedure Tfrm_PBX.pBlackListSearch;
Var sQexten, sCId, sCNm : String;
begin
  if ( lblTitle_bl.Hint = '' ) And ( Not ckAll_bl.Checked ) then
  begin
    GMessagebox('좌측 서비스명을 선택해 주세요.', CDMSI);
    Exit;
  end;

  cxGrdVPBX_bl.DataController.SetRecordCount(0);
  giBlCnt := 0;

  if ckAll_bl.Checked then sQexten := ''
                      else sQexten := lblTitle_bl.Hint;

  sCId := Trim(edtCallIdS_bl.Text);
  sCNm := Trim(edtCallNmS_bl.Text);

  ////////////////////////////////////////////////////////////////////////////
  FExcelDown_BL := '호분배그룹:' + lblTitle_bl.Hint + ',' + '고객전화번호:' + sCId + ',' + '고객명:' + sCNm;
  ////////////////////////////////////////////////////////////////////////////

  pSI_6610_Send( sQexten, sCId, sCNm );
end;

procedure Tfrm_PBX.pSnd_CallDistribution;
var sParam : string;
begin
	try
		sParam := '';
		sParam := GT_Si415_INFO.Id;
		sParam := sParam + '│' + '';
		sParam := sParam + '│' + Trim(CallToStr(edt_Keynumber10.Text));
		sParam := sParam + '│' + '';
		sParam := sParam + '│' + '';
		fSI_6010_Send(sParam);   // 인바운드 조회
	except
	end;
end;

procedure Tfrm_PBX.pRcv_CallDistribution( sData : String );
Var
	bNext : Boolean;
	sTmp, sKeyNumber : string;
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow : Integer;
begin
	try
//		sTmp := fSI_6911_Recv(sData, bNext);
		sTmp := fSI_6011_Recv(sData, bNext);
		cxGrdVPBX_ext_qe_p.DataController.SetRecordCount(0);
		cxGrdVPBX_ext_qe_p.BeginUpdate;
    try
			arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
			for i := 0 to arrjObj.Size - 1 do
      begin
				subObj := arrjObj.Get(i) as TJSONObject;

				iRow := cxGrdVPBX_ext_qe_p.DataController.AppendRecord;
				sKeyNumber := CallToStr(subObj.Get('Service_no').JsonValue.Value);
				cxGrdVPBX_ext_qe_p.DataController.Values[iRow, 0] := StrToCall(sKeyNumber) + '(' +
                                                             subObj.Get('Q_exten').JsonValue.Value + ')';
				cxGrdVPBX_ext_qe_p.DataController.Values[iRow, 1] := StrToCall(sKeyNumber);
				cxGrdVPBX_ext_qe_p.DataController.Values[iRow, 2] := subObj.Get('Q_exten').JsonValue.Value;
			end;
			cxGrdVPBX_ext_qe_p.EndUpdate;
		except
			SetDebugeWrite('[pRcv_CallDistribution] Json arrjObj error');	
			cxGrdVPBX_ext_qe_p.EndUpdate;
		end;
	except
	end;
end;

procedure Tfrm_PBX.pSnd_AgentList( iGId : Integer;  aGrpId : String );
begin
	try
    giGrpId := iGId;
    cbAgtNm1.Hint := '1';
    pSI_6210_Send('6210', aGrpID, '');   // 상담원 조회
  except
  end;
end;

procedure Tfrm_PBX.pRcv_AgentList( sData : String );
Var
  bNext : Boolean;
  sTmp : string;
  subObj : TJSONObject;
  arrjObj : TJSONArray;
  i : Integer;
begin
	try
//    sData := '61105023                    331          00                                                                5    E'+
//            '[{"AgentId":"001", "AgentName":"홍길동", "GroupID":"001","GroupName":"콜마너1","AgentDesc":"","Muser":""},'+
//            '{"AgentId":"001", "AgentName":"이순신","GroupID":"002","GroupName":"콜마너2","AgentDesc":"","Muser":""},'+
//            '{"AgentId":"001", "AgentName":"꼬끼리","GroupID":"003","GroupName":"콜마너3","AgentDesc":"","Muser":""},'+
//            '{"AgentId":"001", "AgentName":"오리","GroupID":"004","GroupName":"콜마너4","AgentDesc":"","Muser":""},'+
//            '{"AgentId":"001", "AgentName":"토끼", "GroupID":"005","GroupName":"콜마너5","AgentDesc":"","Muser":""}]';

    sTmp := fSI_6211_Recv( sData, bNext);

		if giGrpId = 1 then
    begin
      cbAgtNm1.Properties.Items.Clear;
			slAgtId[giGrpId].Clear;
	  	slAgtId[giGrpId].Add('전체');
  		cbAgtNm1.Properties.Items.Add('전체');
			arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
			Try
				for i := 0 to arrjObj.Size - 1 do
				begin
					subObj := arrjObj.Get(i) as TJSONObject;

					slAgtId[giGrpId].Add(subObj.Get('AgentID').JsonValue.Value);
					cbAgtNm1.Properties.Items.Add(subObj.Get('AgentName').JsonValue.Value);
				end;
			except
				SetDebugeWrite('[pRcv_AgentList 1] Json arrjObj error');	
			end; 	
			cbAgtNm1.ItemIndex := 0;
		end else
		if giGrpId = 2 then
		begin
			cbAgtNm2.Properties.Items.Clear;
			slAgtId[giGrpId].Clear;
	  	slAgtId[giGrpId].Add('전체');
  		cbAgtNm2.Properties.Items.Add('전체');
			arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
			try
				for i := 0 to arrjObj.Size - 1 do
				begin
					subObj := arrjObj.Get(i) as TJSONObject;

					slAgtId[giGrpId].Add(subObj.Get('AgentID').JsonValue.Value);
					cbAgtNm2.Properties.Items.Add(subObj.Get('AgentName').JsonValue.Value);
				end;
			except
				SetDebugeWrite('[pRcv_AgentList 2] Json arrjObj error');	
			end; 	
			cbAgtNm2.ItemIndex := 0;
		end else
		if giGrpId = 9 then
		begin
			slAgtId[giGrpId].Clear;
			slAgtId[giGrpId].Add('전체');
			arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
			Try
				for i := 0 to arrjObj.Size - 1 do
				begin
					subObj := arrjObj.Get(i) as TJSONObject;

					slAgtId[giGrpId].Add(subObj.Get('AgentID').JsonValue.Value);
				end;
			except
				SetDebugeWrite('[pRcv_AgentList 9] Json arrjObj error');	
			end; 	
		end else
		if giGrpId = 10 then
		begin
			slAgtId[giGrpId].Clear;
			slAgtId[giGrpId].Add('전체');
			arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
			Try
				for i := 0 to arrjObj.Size - 1 do
				begin
					subObj := arrjObj.Get(i) as TJSONObject;

					slAgtId[giGrpId].Add(subObj.Get('AgentID').JsonValue.Value);
				end;
			except
				SetDebugeWrite('[pRcv_AgentList 10] Json arrjObj error');	
			end; 	
		end;
	except
  end;
end;

procedure Tfrm_PBX.proc_6011(AJson, APid: string; ANext : Boolean);
Var
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow, iPbxKey : Integer;
	AView: TcxGridBandedTableView;
begin
	SetDebugeWrite('Tfrm_PBX.proc_6011');
	Try
		AView := cxGridPBX3;
//		if AJson = '[]' then exit;
		arrjObj := TJSONObject.ParseJSONValue(AJson) as TJSONArray;
//		Log(AJson, LOGDATAPATHFILE); 
		if (not ANext) and (AJson = '[]') then
		begin
//			AView.DataController.SetRecordCount(0);
		end;

		AView.BeginUpdate;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				iRow := AView.DataController.AppendRecord;
				AView.DataController.Values[iRow, 0] := false;
				AView.DataController.Values[iRow, 1] := subObj.Get('Q_exten').JsonValue.Value;         //o		호분배 그룹
				AView.DataController.Values[iRow, 2] := StrToCall(subObj.Get('Service_no').JsonValue.Value);  	   //o		대표번호
				AView.DataController.Values[iRow, 3] := StrToCall(subObj.Get('Dnis_no').JsonValue.Value); 				 //o		착신번호
				AView.DataController.Values[iRow, 4] := subObj.Get('Buz_name').JsonValue.Value;    		 //o		서비스명
				AView.DataController.Values[iRow, 5] := subObj.Get('Buz_desc').JsonValue.Value;   		 //o		명의자/통신사
				AView.DataController.Values[iRow, 6] := subObj.Get('Guidance').JsonValue.Value;   		 //o		안내문구
																																															 
				AView.DataController.Values[iRow, 7] := StrToCall(subObj.Get('Forward_no1').JsonValue.Value);     //o		개별착신 / 지능형 착신 번호1 
				if subObj.Get('Forward_yn').JsonValue.Value = 'N' then AView.DataController.Values[iRow, 8] := '사용안함' else
				if subObj.Get('Forward_yn').JsonValue.Value = 'Y' then AView.DataController.Values[iRow, 8] := '개별착신사용' else
				if subObj.Get('Forward_yn').JsonValue.Value = 'A' then AView.DataController.Values[iRow, 8] := '지능형착신사용' 
				else AView.DataController.Values[iRow, 8] := subObj.Get('Forward_yn').JsonValue.Value;  		 //o		개별착신/지능형착신 사용 유무 N : 사용안함 Y : 개별착신 사용.A : 지능형 착신 사용.
				AView.DataController.Values[iRow, 9] := subObj.Get('Tr_start').JsonValue.Value;     	 //o		개별착신 / 지능형 착신 시작시간
				AView.DataController.Values[iRow,10] := subObj.Get('Tr_end').JsonValue.Value;   			 //o		개별착신 / 지능형 착신 종료시간

				if subObj.Get('Tel_S1').JsonValue.Value = 'N' then AView.DataController.Values[iRow,11] := '' else
				if subObj.Get('Tel_S1').JsonValue.Value = 'Y' then AView.DataController.Values[iRow,11] := '사용' 
				else AView.DataController.Values[iRow,11] := subObj.Get('Tel_S1').JsonValue.Value;          //o		콜마너 OEM 연동 유무 N : 사용안함 Y : 사용

				if subObj.Get('Tel_S2').JsonValue.Value = 'N' then AView.DataController.Values[iRow,12] := '' else
				if subObj.Get('Tel_S2').JsonValue.Value = 'Y' then AView.DataController.Values[iRow,12] := '사용' 
				else AView.DataController.Values[iRow,12] := subObj.Get('Tel_S2').JsonValue.Value;          //o		콜마너 탁송 연동 유무 N : 사용안함 Y : 사용

				AView.DataController.Values[iRow,13] := subObj.Get('Cti_q_ment').JsonValue.Value;      //o 	CTI-Q 대기멘트
				AView.DataController.Values[iRow,14] := subObj.Get('Vip_cti_q_ment').JsonValue.Value;  //o 	VIP CTI-Q 대기멘트

				
				if subObj.Get('Filtering_yn').JsonValue.Value = 'N' then AView.DataController.Values[iRow,17] := '사용안함' else
				if subObj.Get('Filtering_yn').JsonValue.Value = 'Y' then AView.DataController.Values[iRow,17] := '사용' 
				else AView.DataController.Values[iRow,17] := subObj.Get('Filtering_yn').JsonValue.Value;    //		개별 필터링 사용유무 N : 사용안함 Y : 사용
				AView.DataController.Values[iRow,18] := subObj.Get('Filtering_ment').JsonValue.Value;  //o 	개별 필터링 멘트 명
				AView.DataController.Values[iRow,19] := subObj.Get('Filtering_Start').JsonValue.Value; //o  	개별 필터 시작 시간
				AView.DataController.Values[iRow,20] := subObj.Get('Filtering_End').JsonValue.Value;   //o 	개별 필터 종료 시간

				if subObj.Get('Reject_yn').JsonValue.Value = 'N' then AView.DataController.Values[iRow,21] := '사용안함' else
				if subObj.Get('Reject_yn').JsonValue.Value = 'Y' then AView.DataController.Values[iRow,21] := '사용' 
				else AView.DataController.Values[iRow,21] := subObj.Get('Reject_yn').JsonValue.Value;       //o 	080 수신거부 사용유무 N : 사용안함 Y : 사용
				AView.DataController.Values[iRow,26] := subObj.Get('Reject_ment').JsonValue.Value;     //o 	080 수신거부 파일 명
				AView.DataController.Values[iRow,27] := subObj.Get('Priority').JsonValue.Value;        //o   호분배 순위 ( 1 or 2 순위)
				if copy(subObj.Get('App_L').JsonValue.Value,2,1) = '0' then AView.DataController.Values[iRow,28] := '미사용' else
				if copy(subObj.Get('App_L').JsonValue.Value,2,1) = '1' then AView.DataController.Values[iRow,28] := '사용' 
				else AView.DataController.Values[iRow,28] := subObj.Get('App_L').JsonValue.Value;           //o   어플연동
				//1 자리 : 드림드라이브, 0:미사용, 1:사용
				//2 자리 : 어플연동, 0:미사용, 1:사용
				//3 자리 : 뷰링 IN, 0:미사용, 1:사용
				//4 자리 : 뷰링 OUT, 0:미사용, 1:사용
				//5 자리 : 대리 ON, 0:미사용, 1:사용

				if subObj.Get('Tel_S3').JsonValue.Value = 'N' then AView.DataController.Values[iRow,29] := '' else
				if subObj.Get('Tel_S3').JsonValue.Value = 'Y' then AView.DataController.Values[iRow,29] := '사용' 
				else AView.DataController.Values[iRow,29] := subObj.Get('Tel_S3').JsonValue.Value;          //o		로지 연동 유무 N : 사용안함 Y : 사용
				if subObj.Get('Tel_S4').JsonValue.Value = 'N' then AView.DataController.Values[iRow,30] := '' else
				if subObj.Get('Tel_S4').JsonValue.Value = 'Y' then AView.DataController.Values[iRow,30] := '사용' 
				else AView.DataController.Values[iRow,30] := subObj.Get('Tel_S4').JsonValue.Value;          //o		콜마트 연동 유무 N : 사용안함 Y : 사용
				if subObj.Get('Tel_S5').JsonValue.Value = 'N' then AView.DataController.Values[iRow,31] := '' else
				if subObj.Get('Tel_S5').JsonValue.Value = 'Y' then AView.DataController.Values[iRow,31] := '사용' 
				else AView.DataController.Values[iRow,31] := subObj.Get('Tel_S5').JsonValue.Value;          //o		아이콘 연동 유무 N : 사용안함 Y : 사용
				if subObj.Get('Tel_S6').JsonValue.Value = 'N' then AView.DataController.Values[iRow,32] := '' else
				if subObj.Get('Tel_S6').JsonValue.Value = 'Y' then AView.DataController.Values[iRow,32] := '사용' 
				else AView.DataController.Values[iRow,32] := subObj.Get('Tel_S6').JsonValue.Value;          //o		G365 연동 유무 N : 사용안함 Y : 사용
				if subObj.Get('Tel_S7').JsonValue.Value = 'N' then AView.DataController.Values[iRow,33] := '' else
				if subObj.Get('Tel_S7').JsonValue.Value = 'Y' then AView.DataController.Values[iRow,33] := '사용' 
				else AView.DataController.Values[iRow,33] := subObj.Get('Tel_S7').JsonValue.Value;          //o		인성 연동 유무 N : 사용안함 Y : 사용

				cxGridPBX3.DataController.Values[iRow,34] := intToStr(giNo + 1);
				inc(giNo);
			end;

			AView.EndUpdate;

			if AView.DataController.RecordCount < 1 then
			begin
				GMessagebox('검색된 내용이 없습니다.', CDMSI);
			end;
		except
			SetDebugeWrite('[proc_6011] Json arrjObj error');	
			AView.EndUpdate;
		End;
	except
  end;
end;

procedure Tfrm_PBX.proc_6111(AJson: string; ANext: Boolean);
Var
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow : Integer;
begin
	SetDebugeWrite('Tfrm_PBX.proc_6011');
	Try
		if not ANext then
		begin
			cxGridPBX4.DataController.SetRecordCount(0);
		end;

		if AJson = '[]' then exit;
		arrjObj := TJSONObject.ParseJSONValue(AJson) as TJSONArray;
		Try
  		cxGridPBX4.BeginUpdate;
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				iRow := cxGridPBX4.DataController.AppendRecord;
				cxGridPBX4.DataController.Values[iRow, 0] := False;
				cxGridPBX4.DataController.Values[iRow, 1] := subObj.Get('GroupID').JsonValue.Value;      //		상담 그룹 ID
				cxGridPBX4.DataController.Values[iRow, 2] := subObj.Get('GroupName').JsonValue.Value;  	//		상담 그룹 명
				cxGridPBX4.DataController.Values[iRow, 3] := subObj.Get('GroupDesc').JsonValue.Value; 		//		상담 그룹 설명
				cxGridPBX4.DataController.Values[iRow, 4] := subObj.Get('Muser').JsonValue.Value;    		//		생성자
			end;
			cxGridPBX4.EndUpdate;
		except
			SetDebugeWrite('[proc_6111] Json arrjObj error');	
			cxGridPBX4.EndUpdate;
		end;

  	if cxGridPBX4.DataController.RecordCount < 1 then
		begin
			GMessagebox('검색된 내용이 없습니다.', CDMSI);
		end;
	except
  end;
end;

procedure Tfrm_PBX.proc_6211(AJson: string; ANext: Boolean);
Var
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow : Integer;
  sTmp : String;
begin
	SetDebugeWrite('Tfrm_PBX.proc_6211');
	Try
		if AJson = '[]' then exit;
		arrjObj := TJSONObject.ParseJSONValue(AJson) as TJSONArray;

		cxGridPBX5.BeginUpdate;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;

				iRow := cxGridPBX5.DataController.AppendRecord;
				cxGridPBX5.DataController.Values[iRow, 0] := False;
				cxGridPBX5.DataController.Values[iRow, 1] := subObj.Get('AgentID').JsonValue.Value;      		  //	상담원 ID
				cxGridPBX5.DataController.Values[iRow, 2] := subObj.Get('AgentPass').JsonValue.Value;  			  //	상담원 패스워드
				cxGridPBX5.DataController.Values[iRow, 3] := subObj.Get('AgentName').JsonValue.Value; 				//	상담원 명
				cxGridPBX5.DataController.Values[iRow, 4] := subObj.Get('GroupName').JsonValue.Value + '(' +
                                                     subObj.Get('GroupID').JsonValue.Value + ')';    	//	상담그룹명(상담그룹 ID)
				cxGridPBX5.DataController.Values[iRow, 5] := subObj.Get('AgentDesc').JsonValue.Value;  		  	//	상담원 설명

        if subObj.Get('AgentType').JsonValue.Value = '0' then sTmp := 'IN/OUT' else 			          	//	상담원 타입 (인바운드, 아웃바운드 전용)0 : IN / OUT 1 : IN 2 : OUT
        if subObj.Get('AgentType').JsonValue.Value = '1' then sTmp := 'IN' else
        if subObj.Get('AgentType').JsonValue.Value = '2' then sTmp := 'OUT';
				cxGridPBX5.DataController.Values[iRow, 6] := sTmp;
				cxGridPBX5.DataController.Values[iRow, 7] := subObj.Get('Ext_no').JsonValue.Value;      			//	내선 번호
				cxGridPBX5.DataController.Values[iRow, 8] := subObj.Get('Auto_answer_sec').JsonValue.Value; 	//	자동응답 (초)

        if subObj.Get('Auto_answer_yn').JsonValue.Value = 'Y' then sTmp := '사용' else 				      	//	자동 응답 사용 여부 N : 사용안함 Y : 사용
        if subObj.Get('Auto_answer_yn').JsonValue.Value = 'N' then sTmp := '미사용';
				cxGridPBX5.DataController.Values[iRow, 9] := sTmp;
				cxGridPBX5.DataController.Values[iRow,10] := subObj.Get('Prefix').JsonValue.Value;      			//	발신 지역 번호

        if subObj.Get('Prefix_yn').JsonValue.Value = 'Y' then sTmp := '사용' else 				      	    //	발신 지역 번호 사용 여부 N : 사용안함 Y : 사용
        if subObj.Get('Prefix_yn').JsonValue.Value = 'N' then sTmp := '미사용';
				cxGridPBX5.DataController.Values[iRow,11] := sTmp;

        if subObj.Get('Marking_yn').JsonValue.Value = 'Y' then sTmp := '사용' else 				      	    //	고객 번호 마킹 여부 N : 사용안함 Y : 사용
        if subObj.Get('Marking_yn').JsonValue.Value = 'N' then sTmp := '미사용';
				cxGridPBX5.DataController.Values[iRow,12] := sTmp;

        if subObj.Get('Auto_wait_yn').JsonValue.Value = 'Y' then sTmp := '사용' else 				      	  //	전화끊은후 자동대기 사용 여부 N : 사용안함 Y : 사용
        if subObj.Get('Auto_wait_yn').JsonValue.Value = 'N' then sTmp := '미사용';
				cxGridPBX5.DataController.Values[iRow,13] := sTmp;
				cxGridPBX5.DataController.Values[iRow,14] := subObj.Get('Auto_wait_sec').JsonValue.Value;     //	전화끊은후 자동대기 (초)

        if subObj.Get('Agent_level').JsonValue.Value = '0' then sTmp := '일반' else 				      	  //	상담원 등급 6 : 관리자 , 0 : 일반
        if subObj.Get('Agent_level').JsonValue.Value = '6' then sTmp := '관리자';
				cxGridPBX5.DataController.Values[iRow,15] := sTmp;
				cxGridPBX5.DataController.Values[iRow,16] := subObj.Get('Muser').JsonValue.Value;  				  	//	생성자
				cxGridPBX5.DataController.Values[iRow,17] := subObj.Get('GroupID').JsonValue.Value;  				  //	그룹ID
			end;
			cxGridPBX5.EndUpdate;
		except
			SetDebugeWrite('[proc_6211] Json arrjObj error');	
			cxGridPBX5.EndUpdate;
		end;

    if cxGridPBX5.DataController.RecordCount < 1 then
    begin
      GMessagebox('검색된 내용이 없습니다.', CDMSI);
    end;
	except
  end;
end;

procedure Tfrm_PBX.proc_6311(AJson: string; ANext: Boolean);
Var
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow : Integer;
  sTmp : String;
begin
	SetDebugeWrite('Tfrm_PBX.proc_6311');
	Try
		if AJson = '[]' then exit;
		arrjObj := TJSONObject.ParseJSONValue(AJson) as TJSONArray;

		cxGridPBX6.BeginUpdate;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				iRow := cxGridPBX6.DataController.AppendRecord;
				cxGridPBX6.DataController.Values[iRow, 0] := False;
				cxGridPBX6.DataController.Values[iRow, 1] := subObj.Get('ManagerID').JsonValue.Value;    //		관리자 ID
				cxGridPBX6.DataController.Values[iRow, 2] := subObj.Get('ManagerName').JsonValue.Value;  //		관리자 명
				cxGridPBX6.DataController.Values[iRow, 3] := subObj.Get('ManagerDesc').JsonValue.Value;  //		관리자 설명
				cxGridPBX6.DataController.Values[iRow, 4] := subObj.Get('Ext_no').JsonValue.Value;       //		관리자 내선

				if subObj.Get('Agent_level').JsonValue.Value = '1' then sTmp := '슈퍼관리자' else //		관리자 권한 1 : 슈퍼관리자(administrator) 2 : 메인관리자  3 : 서브관리자  4 : 지사장
        if subObj.Get('Agent_level').JsonValue.Value = '2' then sTmp := '메인관리자' else
        if subObj.Get('Agent_level').JsonValue.Value = '3' then sTmp := '서브관리자' else
        if subObj.Get('Agent_level').JsonValue.Value = '4' then sTmp := '지사장';
				cxGridPBX6.DataController.Values[iRow, 5] := sTmp;

				cxGridPBX6.DataController.Values[iRow, 6] := subObj.Get('Muser').JsonValue.Value;     	 //		생성자
				cxGridPBX6.DataController.Values[iRow, 7] := subObj.Get('ManagerPass').JsonValue.Value;  //		비밀번호
			end;
			cxGridPBX6.EndUpdate;
		except
			SetDebugeWrite('[proc_6311] Json arrjObj error');	
			cxGridPBX6.EndUpdate;
		end;

  	if cxGridPBX6.DataController.RecordCount < 1 then
		begin
			GMessagebox('검색된 내용이 없습니다.', CDMSI);
		end;
	except
	end;
end;

procedure Tfrm_PBX.proc_6361(AJson: string; ANext: Boolean);
Var
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	j, i, iRow : Integer;
begin
	SetDebugeWrite('Tfrm_PBX.proc_6351');
	Try
		if AJson = '[]' then exit;
		arrjObj := TJSONObject.ParseJSONValue(AJson) as TJSONArray;
		
		cxGridPBX7.BeginUpdate;
		Try
			if cbMngNm7.ItemIndex = 0 then
			begin
				for i := 0 to arrjObj.Size - 1 do
				begin
					subObj := arrjObj.Get(i) as TJSONObject;
					iRow := cxGridPBX7.DataController.AppendRecord;
					cxGridPBX7.DataController.Values[iRow, 0] := False;
					cxGridPBX7.DataController.Values[iRow, 1] := subObj.Get('Q_exten').JsonValue.Value;      //		호분배 그룹 ( 9000 ~ 9999 까지)
					cxGridPBX7.DataController.Values[iRow, 2] := subObj.Get('Buz_name').JsonValue.Value;  	  //		서비스명
					cxGridPBX7.DataController.Values[iRow, 3] := subObj.Get('Service_no').JsonValue.Value;   //		대표번호
				end;
			end else
			begin
				for i := 0 to cxGridPBX7.DataController.RecordCount -1 do
				begin
					for j := 0 to arrjObj.Size - 1 do
					begin
						subObj := arrjObj.Get(j) as TJSONObject;
						if cxGridPBX7.DataController.Values[i, 1] = subObj.Get('Q_exten').JsonValue.Value then
						begin
							cxGridPBX7.DataController.Values[i, 0] := True;
							break;
						end;
					end;
				end;
			end;
			cxGridPBX7.EndUpdate;
		except
			SetDebugeWrite('[proc_6361] Json arrjObj error');	
			cxGridPBX7.EndUpdate;
		end;

    if cxGridPBX7.DataController.RecordCount < 1 then
    begin
      GMessagebox('검색된 내용이 없습니다.', CDMSI);
    end;
	except
	end;
end;

procedure Tfrm_PBX.proc_6811(AJson: string; ANext: Boolean);
Var
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow : Integer;
	AView: TcxGridDBTableView;
	sTmp1, sTmp2 : string;
begin
	SetDebugeWrite('Tfrm_PBX.proc_6811');
	Try
		if AJson = '[]' then exit;
		arrjObj := TJSONObject.ParseJSONValue(AJson) as TJSONArray;
		
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_HOLIDAY'    then	
				begin
					sTmp1 := 'MENT_HOLIDAY';
					sTmp2 := '휴무일멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_LUNCH'      then	
				begin
					sTmp1 := 'MENT_LUNCH';
					sTmp2 := '점심시간멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_NOTICE'     then	
				begin
					sTmp1 := 'MENT_NOTICE';
					sTmp2 := '업무상황멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_OUT_WORK'   then	
				begin
					sTmp1 := 'MENT_OUT_WORK';
					sTmp2 := '업무종료멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_SYSTEM_ERR' then	
				begin
					sTmp1 := 'MENT_SYSTEM_ERR';
					sTmp2 := '시스템장애멘트';
				end else
				begin
					sTmp1 := subObj.Get('Code_Id').JsonValue.Value;
					sTmp2 := '';
				end;   
				FSYSMente.slCategory.add(subObj.Get('c_category').JsonValue.Value);
				FSYSMente.slCateName.add('시스템 장애 멘트');
				FSYSMente.slCodeID  .add(sTmp1);
				FSYSMente.slCodeName.add(sTmp2);
				FSYSMente.slFilename.add(Trim(subObj.Get('File_name').JsonValue.Value));
				FSYSMente.slUse     .add(subObj.Get('Use').JsonValue.Value);
			end;
		except
			SetDebugeWrite('[proc_6811] Json arrjObj error');	
		End;
			
		AView := cxGridPBX8_1;
		
		AView.BeginUpdate;
		Try
			for i := 0 to FSYSMente.slCategory.Count - 1 do
			begin
				iRow := AView.DataController.AppendRecord;
				AView.DataController.Values[iRow, 0] := iRow +1;

				AView.DataController.Values[iRow, 1] := FSYSMente.slCodeName[i]; 
				AView.DataController.Values[iRow, 2] := FSYSMente.slFilename[i]; 
				if FSYSMente.slUse[i] = 'Y' then	AView.DataController.Values[iRow, 3] := '사용'   else
				if FSYSMente.slUse[i] = 'N' then	AView.DataController.Values[iRow, 3] := '미사용';
			end;
			
			AView.EndUpdate;

			if AView.DataController.RecordCount < 1 then 
			begin
				GMessagebox('검색된 내용이 없습니다.', CDMSI);
			end;
		except
			AView.EndUpdate;
		End;
	except
	end;  
end;

procedure Tfrm_PBX.proc_6831(AJson: string; ANext: Boolean);
Var
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow, iTmp : Integer;

	sCTmp1, sCTmp2, sTmp1, sTmp2, sCategory : string;
begin
	SetDebugeWrite('Tfrm_PBX.proc_6831');
	Try
		for i := 0 to 4 do
		begin
			FMenteCombo.slCategory.Add('IVR_SYS_MENT_TYPE');
			FMenteCombo.slCateName.Add('IVR 시스템 멘트');
			case i of
				0:begin  
						sTmp1 := 'MENT_SYSTEM_ERR';
						sTmp2 := '시스템장애멘트';
					end;
				1:begin  
						sTmp1 := 'MENT_NOTICE';
						sTmp2 := '업무상황멘트';
					end;
				2:begin  
						sTmp1 := 'MENT_LUNCH';
						sTmp2 := '점심시간멘트';
					end;
				3:begin  
						sTmp1 := 'MENT_OUT_WORK';
						sTmp2 := '업무종료멘트';
					end;
				4:begin  
						sTmp1 := 'MENT_HOLIDAY';
						sTmp2 := '휴무일멘트';
					end;
			end;
			FMenteCombo.slCodeID.  Add(sTmp1);
			FMenteCombo.slCodeName.Add(sTmp2);
		end;
		for i := 0 to 1 do
		begin
			FMenteCombo.slCategory.Add('IVR_MENT_TYPE');
			FMenteCombo.slCateName.Add('IVR 멘트');
			case i of
				0:begin  
						sTmp1 := 'MENT_VIP_IVR';
						sTmp2 := '이름없는 VIP IVR멘트';
					end;
				1:begin  
						sTmp1 := 'MENT_VIP_IVR_NM';
						sTmp2 := '이름있는 VIP IVR멘트';
					end;
			end;
			FMenteCombo.slCodeID.  Add(sTmp1);
			FMenteCombo.slCodeName.Add(sTmp2);
		end;
		for i := 0 to 1 do
		begin
			FMenteCombo.slCategory.Add('CTI_MENT_TYPE');
			FMenteCombo.slCateName.Add('CTI 멘트');
			case i of
				0:begin  
						sTmp1 := 'MENT_CTI_Q';
						sTmp2 := 'CTI-Q 대기멘트';
					end;
				1:begin  
						sTmp1 := 'MENT_VIP_CTI_Q';
						sTmp2 := 'VIP CTI-Q 대기멘트';
					end;
			end;
			FMenteCombo.slCodeID.  Add(sTmp1);
			FMenteCombo.slCodeName.Add(sTmp2);
		end;
		for i := 0 to 0 do
		begin
			FMenteCombo.slCategory.Add('MENT_FILETER_TYPE');
			FMenteCombo.slCateName.Add('필터링 멘트');
			case i of
				0:begin  
						sTmp1 := 'MENT_FILTER';
						sTmp2 := '필터링멘트';
					end;
			end;
			FMenteCombo.slCodeID.  Add(sTmp1);
			FMenteCombo.slCodeName.Add(sTmp2);
		end;
		for i := 0 to 0 do
		begin
			FMenteCombo.slCategory.Add('MENT_REJECT_TYPE');
			FMenteCombo.slCateName.Add('수신거부 멘트');
			case i of
				0:begin  
						sTmp1 := 'MENT_REJECT';
						sTmp2 := '수신거부멘트';
					end;
			end;
			FMenteCombo.slCodeID.  Add(sTmp1);
			FMenteCombo.slCodeName.Add(sTmp2);
		end;
		for i := 0 to 0 do
		begin
			FMenteCombo.slCategory.Add('MENT_OUTBOUND_COLORRING_TYPE');
			FMenteCombo.slCateName.Add('Outbound 컬러링');
			case i of
				0:begin  
						sTmp1 := 'MENT_OB_CRING';
						sTmp2 := 'Outbound 컬러링';
					end;
			end;
			FMenteCombo.slCodeID.  Add(sTmp1);
			FMenteCombo.slCodeName.Add(sTmp2);
		end;

		if AJson = '[]' then exit;
		arrjObj := TJSONObject.ParseJSONValue(AJson) as TJSONArray;

//		IVR_SYS_MENT_TYPE IVR 시스템 멘트
//		IVR_MENT_TYPE     IVR 멘트
//		CTI_MENT_TYPE     CTI 멘트
//		MENT_FILETER_TYPE 필터링 멘트
//		MENT_REJECT_TYPE  수신거부 멘트
//		MENT_OUTBOUND_COLORRING_TYPE Outbound 컬러링
		sCTmp1 := ''; sCTmp2 := ''; sTmp1 := ''; sTmp2 := ''; sCategory := ''; 
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;

				if subObj.Get('c_category').JsonValue.Value = 'IVR_SYS_MENT_TYPE'    then	
				begin
					sCTmp1 := 'IVR_SYS_MENT_TYPE';
					sCTmp2 := 'IVR 시스템 멘트';
				end else
				if subObj.Get('c_category').JsonValue.Value = 'IVR_MENT_TYPE'      then	
				begin
					sCTmp1 := 'IVR_MENT_TYPE';
					sCTmp2 := 'IVR 멘트';
				end else
				if subObj.Get('c_category').JsonValue.Value = 'CTI_MENT_TYPE'     then	
				begin
					sCTmp1 := 'CTI_MENT_TYPE';
					sCTmp2 := 'CTI 멘트';
				end else
				if subObj.Get('c_category').JsonValue.Value = 'MENT_FILETER_TYPE'   then	
				begin
					sCTmp1 := 'MENT_FILETER_TYPE';
					sCTmp2 := '필터링 멘트';
				end else
				if subObj.Get('c_category').JsonValue.Value = 'MENT_REJECT_TYPE' then	
				begin
					sCTmp1 := 'MENT_REJECT_TYPE';
					sCTmp2 := '수신거부 멘트';
				end else
				if subObj.Get('c_category').JsonValue.Value = 'MENT_OUTBOUND_COLORRING_TYPE' then	
				begin
					sCTmp1 := 'MENT_OUTBOUND_COLORRING_TYPE';
					sCTmp2 := 'Outbound 컬러링';
				end else
				begin
					sCTmp1 := subObj.Get('c_category').JsonValue.Value;
					sCTmp2 := '';
				end;
				
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_HOLIDAY'    then	
				begin
					sTmp1 := 'MENT_HOLIDAY';
					sTmp2 := '휴무일멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_LUNCH'      then	
				begin
					sTmp1 := 'MENT_LUNCH';
					sTmp2 := '점심시간멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_NOTICE'     then	
				begin
					sTmp1 := 'MENT_NOTICE';
					sTmp2 := '업무상황멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_OUT_WORK'   then	
				begin
					sTmp1 := 'MENT_OUT_WORK';
					sTmp2 := '업무종료멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_SYSTEM_ERR' then	
				begin
					sTmp1 := 'MENT_SYSTEM_ERR';
					sTmp2 := '시스템장애멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_VIP_IVR'    then	
				begin
					sTmp1 := 'MENT_VIP_IVR';
					sTmp2 := '이름없는 VIP IVR멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_VIP_IVR_NM'      then	
				begin
					sTmp1 := 'MENT_VIP_IVR_NM';
					sTmp2 := '이름있는 VIP IVR멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_CTI_Q'     then	
				begin
					sTmp1 := 'MENT_CTI_Q';
					sTmp2 := 'CTI-Q 대기멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_VIP_CTI_Q'   then	
				begin
					sTmp1 := 'MENT_VIP_CTI_Q';
					sTmp2 := 'VIP CTI-Q 대기멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_SYSTEM_ERR' then	
				begin
					sTmp1 := 'MENT_FILTER';
					sTmp2 := '필터링멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_REJECT'   then	
				begin
					sTmp1 := 'MENT_REJECT';
					sTmp2 := '수신거부멘트';
				end else
				if subObj.Get('Code_Id').JsonValue.Value = 'MENT_OB_CRING' then	
				begin
					sTmp1 := 'MENT_OB_CRING';
					sTmp2 := 'Outbound 컬러링';
				end else
				begin
					sTmp1 := subObj.Get('Code_Id').JsonValue.Value;
					sTmp2 := '';
				end;
				
				if FMente.slFilename.IndexOf(subObj.Get('File_name').JsonValue.Value) < 0 then
				begin
					FMente.slCategory.add(sCTmp1);
					FMente.slCateName.add(sCTmp2);
					FMente.slCodeID  .add(sTmp1);
					FMente.slCodeName.add(sTmp2);
					FMente.slFilename.add(subObj.Get('File_name').JsonValue.Value);
					FMente.slUse     .add('');
				end;
			end;
		except
			SetDebugeWrite('[proc_6831] Json arrjObj error');	
		End;
		
		Try
			cb_8_2.Tag := 99;
			cb_8_1.Properties.Items.Clear;
			for i := 0 to FMenteCombo.slCategory.Count - 1 do
			begin
				sCategory := FMenteCombo.slCateName[i];
				if sCategory = '' Then Continue;
				iTmp := cb_8_1.Properties.Items.IndexOf(sCategory);
				if iTmp < 0 then
				begin
					cb_8_1.Properties.Items.add(sCategory);
				end;
			end;
		except
		End;
		cb_8_1.ItemIndex := 0;
	except
	end;
end;

procedure Tfrm_PBX.proc_6831_List(AJson: string; ANext: Boolean);
var i, iRow : Integer;
	AView: TcxGridDBTableView;
	subObj : TJSONObject;
	arrjObj : TJSONArray;
begin
	SetDebugeWrite('Tfrm_PBX.proc_6831_List');
	Try
		btn_8_1.Tag := 0;
		btn_8_5.Tag := 0;
		AView := cxGridPBX8_2;
		if AJson = '[]' then exit;
		arrjObj := TJSONObject.ParseJSONValue(AJson) as TJSONArray;

		AView.DataController.SetRecordCount(0);
		AView.BeginUpdate;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin                                                                            
				subObj := arrjObj.Get(i) as TJSONObject;

				iRow := AView.DataController.AppendRecord;
				AView.DataController.Values[iRow, 0] := False;

				AView.DataController.Values[iRow, 1] := subObj.Get('File_name').JsonValue.Value; 
				AView.DataController.Values[iRow, 2] := subObj.Get('File_name').JsonValue.Value;  //		멘트 파일 명
				AView.DataController.Values[iRow, 3] := '';  //		듣기
			end;
			AView.EndUpdate;

			if AView.DataController.RecordCount < 1 then 
			begin
				GMessagebox('검색된 내용이 없습니다.', CDMSI);
				exit;
			end;
		except
			SetDebugeWrite('[proc_6831_List] Json arrjObj error');	
			AView.EndUpdate;
		End;  
	except
	end;
end;

procedure Tfrm_PBX.proc_6911(AJson: string; ANext: Boolean);
Var
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow : Integer;
	sKeyNumber, sDnis : string;
begin
	SetDebugeWrite('Tfrm_PBX.proc_6911');
	Try
		if AJson = '[]' then exit;
		arrjObj := TJSONObject.ParseJSONValue(AJson) as TJSONArray;

		cxGridPBX9.BeginUpdate;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				iRow := cxGridPBX9.DataController.AppendRecord;

				if subObj.Get('Chack').JsonValue.Value = 'Y' then cxGridPBX9.DataController.Values[iRow, 0] := True      //		권한 유무 (N: 없음, Y: 있음)
																										 else cxGridPBX9.DataController.Values[iRow, 0] := False;
				cxGridPBX9.DataController.Values[iRow, 1] := subObj.Get('Q_exten').JsonValue.Value;     //		호분배 그룹 ( 9000 ~ 9999 까지)
				cxGridPBX9.DataController.Values[iRow, 2] := subObj.Get('Buz_name').JsonValue.Value;  	//		서비스명
				sKeyNumber := CallToStr(subObj.Get('Service_no').JsonValue.Value);
				cxGridPBX9.DataController.Values[iRow, 3] := StrToCall(sKeyNumber);  //		대표번호
				sDnis := CallToStr(subObj.Get('Dnis_no').JsonValue.Value);
				cxGridPBX9.DataController.Values[iRow, 4] := StrToCall(sDnis);  		//		착신번호
				cxGridPBX9.DataController.Values[iRow, 5] := subObj.Get('Priority').JsonValue.Value; 		//		우선순위
			end;
			cxGridPBX9.EndUpdate;
		except
			SetDebugeWrite('[proc_6911] Json arrjObj error');	
			cxGridPBX9.EndUpdate;
		end;

  	if cxGridPBX9.DataController.RecordCount < 1 then
		begin
			GMessagebox('검색된 내용이 없습니다.', CDMSI);
		end;
	except
	end;
end;

procedure Tfrm_PBX.proc_7011(AJson: string; ANext: Boolean);
Var
	subObj : TJSONObject;
	arrjObj : TJSONArray;
	i, iRow : Integer;
begin
	SetDebugeWrite('Tfrm_PBX.proc_7011');
	Try
		if AJson = '[]' then exit;
		arrjObj := TJSONObject.ParseJSONValue(AJson) as TJSONArray;
		
		cxGridPBX10.BeginUpdate;
		Try
			for i := 0 to arrjObj.Size - 1 do
			begin
				subObj := arrjObj.Get(i) as TJSONObject;
				iRow := cxGridPBX10.DataController.AppendRecord;
				cxGridPBX10.DataController.Values[iRow, 0] := False;
				cxGridPBX10.DataController.Values[iRow, 1] := subObj.Get('AgentName').JsonValue.Value + '(' +
                                                      subObj.Get('AgentID').JsonValue.Value   + ')';  //		상담원 명
				cxGridPBX10.DataController.Values[iRow, 2] := subObj.Get('Priority').JsonValue.Value;   //		우선순위(0~5)'상담대기' 중 일때 숫자가 높을 수록 빨리 받을 수 있습니다.
				cxGridPBX10.DataController.Values[iRow, 3] := subObj.Get('AgentID').JsonValue.Value;  	//		상담원 ID
			end;
			cxGridPBX10.EndUpdate;
		except
			SetDebugeWrite('[proc_7011] Json arrjObj error');	
			cxGridPBX10.EndUpdate;
		end;

		if cxGridPBX10.DataController.RecordCount < 1 then
			GMessagebox('검색된 내용이 없습니다.', CDMSI);
	except
	end;
end;

procedure Tfrm_PBX.proc_Get_MenteList(AMenteID: string; AGubun : integer);
begin
	giMenteListGubun := AGubun;
	if AGubun = 0 then
	begin
		FMente.slCategory.Clear;
		FMente.slCodeID.Clear;
		FMente.slCateName.Clear;
		FMente.slCodeName.Clear;
		FMente.slFilename.Clear;
		FMente.slUse.Clear;   
	end;
	
	pSI_6830_Send('6830', Trim(AMenteID));
end;

procedure Tfrm_PBX.proc_init;
var
  i : Integer;
begin
	try
		FMenteCombo.slCategory := TStringList.Create;
		FMenteCombo.slCateName := TStringList.Create;
		FMenteCombo.slCodeID   := TStringList.Create;
		FMenteCombo.slCodeName := TStringList.Create;

		FMente.slCategory := TStringList.Create;
		FMente.slCodeID := TStringList.Create;
		FMente.slCateName := TStringList.Create;
		FMente.slCodeName := TStringList.Create;
		FMente.slFilename := TStringList.Create;
		FMente.slUse := TStringList.Create;
	
		FSYSMente.slCategory := TStringList.Create;
		FSYSMente.slCodeID := TStringList.Create;
		FSYSMente.slCateName := TStringList.Create;
		FSYSMente.slCodeName := TStringList.Create;
		FSYSMente.slFilename := TStringList.Create;
		FSYSMente.slUse := TStringList.Create;

//통화현황----------------------------------------------------------------------
		cxDtStart_cl.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd hh:nn:ss'), 1, 10));
    cxDtEnd_cl.Date := cxDtStart_cl.Date + 1;

		cxGrdVPBX_cl_a.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxGrdVPBX_cl_a.ColumnCount - 1 do
    begin
      if i in [3, 5, 9..19] then
        cxGrdVPBX_cl_a.Columns[i].DataBinding.ValueType := 'Currency' else
      if i in [4, 6, 7, 8, 20, 21] then
      	cxGrdVPBX_cl_a.Columns[i].DataBinding.ValueTypeClass := TcxDateTimeValueType
      else
  			cxGrdVPBX_cl_a.Columns[i].DataBinding.ValueType := 'String';
    end;

    cxGrdVPBX_clK_a.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxGrdVPBX_clK_a.ColumnCount - 1 do
    begin
      if i in [2, 5] then
        cxGrdVPBX_clK_a.Columns[i].DataBinding.ValueType := 'Currency' else
      if i in [3, 4] then
      	cxGrdVPBX_clK_a.Columns[i].DataBinding.ValueTypeClass := TcxDateTimeValueType
      else
  			cxGrdVPBX_clK_a.Columns[i].DataBinding.ValueType := 'String';
    end;

    //--------------------------------------------------------------------------

    cxGrdVPBX_cl_t.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxGrdVPBX_cl_t.ColumnCount - 1 do
    begin
			if i in [3, 5, 9..19] then
        cxGrdVPBX_cl_t.Columns[i].DataBinding.ValueType := 'Currency' else
      if i in [4, 6, 7, 8, 20, 21] then
      	cxGrdVPBX_cl_t.Columns[i].DataBinding.ValueTypeClass := TcxDateTimeValueType
      else
  			cxGrdVPBX_cl_t.Columns[i].DataBinding.ValueType := 'String';
    end;

    //--------------------------------------------------------------------------

		cxGrdVPBX_cl_d.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxGrdVPBX_cl_d.ColumnCount - 1 do
    begin
      if i in [3, 5, 9..19] then
        cxGrdVPBX_cl_d.Columns[i].DataBinding.ValueType := 'Currency' else
      if i in [4, 6, 7, 8, 20, 21] then
      	cxGrdVPBX_cl_d.Columns[i].DataBinding.ValueTypeClass := TcxDateTimeValueType
      else
  			cxGrdVPBX_cl_d.Columns[i].DataBinding.ValueType := 'String';
    end;

    cxPC_cl.ActivePageIndex := 0;

    pSnd_GroupList;

//통화분석----------------------------------------------------------------------
    cxDtStart_ca.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd hh:nn:ss'), 1, 10));
    cxDtEnd_ca.Date := cxDtStart_ca.Date + 1;

    cxGrdVPBX_ca_a.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxGrdVPBX_ca_a.ColumnCount - 1 do
    begin
      if i in [3..11] then
        cxGrdVPBX_ca_a.Columns[i].DataBinding.ValueType := 'Currency'
      else
  			cxGrdVPBX_ca_a.Columns[i].DataBinding.ValueType := 'String';
    end;

    cxGrdVPBX_caK_a.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxGrdVPBX_caK_a.ColumnCount - 1 do
    begin
      if i in [2..5] then
        cxGrdVPBX_caK_a.Columns[i].DataBinding.ValueType := 'Currency'
      else
  			cxGrdVPBX_caK_a.Columns[i].DataBinding.ValueType := 'String';
    end;

    //--------------------------------------------------------------------------

    cxGrdVPBX_ca_t.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxGrdVPBX_ca_t.ColumnCount - 1 do
    begin
      if i in [2..21] then
        cxGrdVPBX_ca_t.Columns[i].DataBinding.ValueType := 'Currency'
      else
  			cxGrdVPBX_ca_t.Columns[i].DataBinding.ValueType := 'String';
    end;

    //--------------------------------------------------------------------------

    cxGrdVPBX_ca_d.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxGrdVPBX_ca_d.ColumnCount - 1 do
    begin
      if i in [2..21] then
        cxGrdVPBX_ca_d.Columns[i].DataBinding.ValueType := 'Currency'
      else
  			cxGrdVPBX_ca_d.Columns[i].DataBinding.ValueType := 'String';
    end;

    cxPC_ca.ActivePageIndex := 0;

//////////////////////////////////////////////////////////////인바운드설정 pageindex = 2 
		for i := 0 to cxGridPBX3.ColumnCount - 1 do
			cxGridPBX3.Columns[i].DataBinding.ValueType := 'String';
		cxGridPBX3.Columns[0].DataBinding.ValueType := 'Boolean';	
//		cxGridPBX3.Columns[34].DataBinding.ValueType := 'integer';	

		edtSearch_3_1.Text := '';
		edtSearch_3_2.Text := '';
		edtSearch_3_3.Text := '';
		edtSearch_3_4.Text := '';

		if GT_Si415_INFO.Level = '4' then 
		begin
			btn_3_2.Enabled := False;
			btn_3_4.Enabled := False;
		end else
		begin
			btn_3_2.Enabled := True;
			btn_3_4.Enabled := True;
		end;
///////////////////////////////////////////////////////////////인바운드설정 pageindex = 2 
		
///////////////////////////////////////////////////////////////상담그룹설정 pageindex = 3 
		for i := 0 to cxGridPBX4.ColumnCount - 1 do
			cxGridPBX4.Columns[i].DataBinding.ValueType := 'String';
  	cxGridPBX4.Columns[0].DataBinding.ValueTypeClass := TcxBooleanValueType;

///////////////////////////////////////////////////////////////상담그룹설정 pageindex = 3 
		
///////////////////////////////////////////////////////////////상담원설정 pageindex = 4 
		for i := 0 to cxGridPBX5.ColumnCount - 1 do
			cxGridPBX5.Columns[i].DataBinding.ValueType := 'String';
  	cxGridPBX5.Columns[0].DataBinding.ValueTypeClass := TcxBooleanValueType;

///////////////////////////////////////////////////////////////상담원설정 pageindex = 4 
		
///////////////////////////////////////////////////////////////관리자설정 pageindex = 5 
		for i := 0 to cxGridPBX6.ColumnCount - 1 do
			cxGridPBX6.Columns[i].DataBinding.ValueType := 'String';
  	cxGridPBX6.Columns[0].DataBinding.ValueTypeClass := TcxBooleanValueType;

///////////////////////////////////////////////////////////////관리자설정 pageindex = 5

///////////////////////////////////////////////////////////////관리자권한설정 pageindex = 6
		for i := 0 to cxGridPBX7.ColumnCount - 1 do
			cxGridPBX7.Columns[i].DataBinding.ValueType := 'String';
  	cxGridPBX7.Columns[0].DataBinding.ValueTypeClass := TcxBooleanValueType;

///////////////////////////////////////////////////////////////관리자권한설정 pageindex = 6 
		
///////////////////////////////////////////////////////////////멘트설정 pageindex = 7 
		for i := 0 to cxGridPBX8_1.ColumnCount - 1 do
			cxGridPBX8_1.Columns[i].DataBinding.ValueType := 'String';
		cxGridPBX8_1.Columns[0].DataBinding.ValueType := 'Integer';	

		for i := 0 to cxGridPBX8_2.ColumnCount - 1 do
			cxGridPBX8_2.Columns[i].DataBinding.ValueType := 'String';
		cxGridPBX8_2.Columns[0].DataBinding.ValueTypeClass := TcxBooleanValueType;	

///////////////////////////////////////////////////////////////멘트설정 pageindex = 7


//호분배권한설정------------------------------------------------------------------

    for i := 0 to cxGrdVPBX_grp_qe_s.ColumnCount - 1 do
			cxGrdVPBX_grp_qe_s.Columns[i].DataBinding.ValueType := 'String';

    for i := 0 to cxGrdVPBX_agt_qe_s.ColumnCount - 1 do
			cxGrdVPBX_agt_qe_s.Columns[i].DataBinding.ValueType := 'String';

    for i := 0 to cxGridPBX9.ColumnCount - 1 do
			cxGridPBX9.Columns[i].DataBinding.ValueType := 'String';
  	cxGridPBX9.Columns[0].DataBinding.ValueTypeClass := TcxBooleanValueType;

//호분배우선순위설정------------------------------------------------------------------

		for i := 0 to cxGrdVPBX_ext_qe_p.ColumnCount - 1 do
			cxGrdVPBX_ext_qe_p.Columns[i].DataBinding.ValueType := 'String';

    for i := 0 to cxGrdVPBX_grp_qe_p.ColumnCount - 1 do
			cxGrdVPBX_grp_qe_p.Columns[i].DataBinding.ValueType := 'String';

    for i := 0 to cxGrdVPBX_agt_qe_p.ColumnCount - 1 do
			cxGrdVPBX_agt_qe_p.Columns[i].DataBinding.ValueType := 'String';

    for i := 0 to cxGridPBX10.ColumnCount - 1 do
			cxGridPBX10.Columns[i].DataBinding.ValueType := 'String';
  	cxGridPBX10.Columns[0].DataBinding.ValueTypeClass := TcxBooleanValueType;

    lblSelExtenNo_p.Caption := '';
    btnSch_Ext_qe_p.Click;

//부가서비스설정------------------------------------------------------------------

    for i := 0 to cxGrdVPBX_ps.ColumnCount - 1 do
			cxGrdVPBX_ps.Columns[i].DataBinding.ValueType := 'String';

    pProductSInit;

//근무시간설정------------------------------------------------------------------

    for i := 0 to cxGrdVPBX_wk.ColumnCount - 1 do
			cxGrdVPBX_wk.Columns[i].DataBinding.ValueType := 'String';

//휴일설정----------------------------------------------------------------------

    for i := 0 to cxGrdVPBX_hd.ColumnCount - 1 do
			cxGrdVPBX_hd.Columns[i].DataBinding.ValueType := 'String';

  	cxGrdVPBX_hd.Columns[0].DataBinding.ValueTypeClass := TcxBooleanValueType;

//VIP관리----------------------------------------------------------------------

		for i := 0 to cxGrdVPBX_vi_s.ColumnCount - 1 do
			cxGrdVPBX_vi_s.Columns[i].DataBinding.ValueType := 'String';

		for i := 0 to cxGrdVPBX_vi.ColumnCount - 1 do
			cxGrdVPBX_vi.Columns[i].DataBinding.ValueType := 'String';

		cxGrdVPBX_vi.Columns[0].DataBinding.ValueTypeClass := TcxBooleanValueType;
		cxGrdVPBX_vi.Columns[5].DataBinding.ValueType := 'Currency';

		//엑셀출력용
		for i := 0 to cxGrdVPBX_vi_Excel.ColumnCount - 1 do
			cxGrdVPBX_vi_Excel.Columns[i].DataBinding.ValueType := 'String';

		cxGrdVPBX_vi_Excel.Columns[0].DataBinding.ValueTypeClass := TcxBooleanValueType;
		cxGrdVPBX_vi_Excel.Columns[5].DataBinding.ValueType := 'Currency';
		
//수신거부관리----------------------------------------------------------------------

    for i := 0 to cxGrdVPBX_bl_s.ColumnCount - 1 do
			cxGrdVPBX_bl_s.Columns[i].DataBinding.ValueType := 'String';

		for i := 0 to cxGrdVPBX_bl.ColumnCount - 1 do
			cxGrdVPBX_bl.Columns[i].DataBinding.ValueType := 'String';

		cxGrdVPBX_bl.Columns[0].DataBinding.ValueTypeClass := TcxBooleanValueType;
		cxGrdVPBX_bl.Columns[5].DataBinding.ValueType := 'Currency';

		//엑셀출력용
		for i := 0 to cxGrdVPBX_bl_Excel.ColumnCount - 1 do
			cxGrdVPBX_bl_Excel.Columns[i].DataBinding.ValueType := 'String';

		cxGrdVPBX_bl_Excel.Columns[0].DataBinding.ValueTypeClass := TcxBooleanValueType;
		cxGrdVPBX_bl_Excel.Columns[5].DataBinding.ValueType := 'Currency';
		
//파일업로드----------------------------------------------------------------------

		for i := 0 to cxViewFileExcelList.ColumnCount - 1 do
			cxViewFileExcelList.Columns[i].DataBinding.ValueType := 'String';

		if GT_Si415_INFO.Level = '4' then //지사장
		begin
			cxPageControl1.Pages[0].TabVisible := False;
			cxPageControl1.Pages[1].TabVisible := False;
			cxPageControl1.Pages[2].TabVisible := True;
			cxPageControl1.Pages[3].TabVisible := False;
			cxPageControl1.Pages[4].TabVisible := False;
			cxPageControl1.Pages[5].TabVisible := False;
			cxPageControl1.Pages[6].TabVisible := False;
			cxPageControl1.Pages[7].TabVisible := False;
			cxPageControl1.Pages[8].TabVisible := False;
			cxPageControl1.Pages[9].TabVisible := False;
			cxPageControl1.Pages[10].TabVisible := False;
			cxPageControl1.Pages[11].TabVisible := False;
			cxPageControl1.Pages[12].TabVisible := False;
			cxPageControl1.Pages[13].TabVisible := False;
			cxPageControl1.Pages[14].TabVisible := False;

			cxPageControl1.ActivePageIndex := 2;
		end;

		proc_Get_MenteList('',0)//멘트리스트 불러오기
  except
  end;
end;

procedure Tfrm_PBX.proc_recieve( aStr, aPid : String; bNext : Boolean );
Var
  sTmp, sPid : string;
  subObj : TJSONObject;
  arrjObj : TJSONArray;
  i, iRow, iTot : Integer;
begin
	try
    if aPid = '5411' then // 상담원별
		begin
			if aStr = '[]' then exit;
			cxGrdVPBX_cl_a.BeginUpdate;
			cxGrdVPBX_clK_a.BeginUpdate;
			try
				arrjObj := TJSONObject.ParseJSONValue(aStr) as TJSONArray;
				Try
					for i := 0 to arrjObj.Size - 1 do
					begin
						subObj := arrjObj.Get(i) as TJSONObject;

						iRow := cxGrdVPBX_cl_a.DataController.AppendRecord;
						cxGrdVPBX_cl_a.DataController.Values[iRow, 00] := (iRow + 1);
						cxGrdVPBX_cl_a.DataController.Values[iRow, 01] := subObj.Get('AgentName').JsonValue.Value;
						cxGrdVPBX_cl_a.DataController.Values[iRow, 02] := subObj.Get('GroupName').JsonValue.Value;
						cxGrdVPBX_cl_a.DataController.Values[iRow, 03] := subObj.Get('Total_cnt').JsonValue.Value;
						cxGrdVPBX_cl_a.DataController.Values[iRow, 04] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Total_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_a.DataController.Values[iRow, 05] := subObj.Get('Agent_resp').JsonValue.Value;
						cxGrdVPBX_cl_a.DataController.Values[iRow, 06] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Total_in_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_a.DataController.Values[iRow, 07] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Total_real_in_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_a.DataController.Values[iRow, 08] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('In_avg_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_a.DataController.Values[iRow, 09] := subObj.Get('Agent_resp_20').JsonValue.Value;
						cxGrdVPBX_cl_a.DataController.Values[iRow, 10] := StringReplace(subObj.Get('Agent_resp_20_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_a.DataController.Values[iRow, 11] := subObj.Get('Agent_ring_20').JsonValue.Value;
						cxGrdVPBX_cl_a.DataController.Values[iRow, 12] := StringReplace(subObj.Get('Agent_ring_20_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_a.DataController.Values[iRow, 13] := subObj.Get('Agent_ring_30').JsonValue.Value;
						cxGrdVPBX_cl_a.DataController.Values[iRow, 14] := StringReplace(subObj.Get('Agent_ring_30_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_a.DataController.Values[iRow, 15] := subObj.Get('Agent_ring_40').JsonValue.Value;
						cxGrdVPBX_cl_a.DataController.Values[iRow, 16] := StringReplace(subObj.Get('Agent_ring_40_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_a.DataController.Values[iRow, 17] := subObj.Get('Agent_ring_40_a').JsonValue.Value;
						cxGrdVPBX_cl_a.DataController.Values[iRow, 18] := StringReplace(subObj.Get('Agent_ring_40_a_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_a.DataController.Values[iRow, 19] := subObj.Get('Total_out_cnt').JsonValue.Value;
						cxGrdVPBX_cl_a.DataController.Values[iRow, 20] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Total_out_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_a.DataController.Values[iRow, 21] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Out_avg_time').JsonValue.Value, 0)));

						iRow := cxGrdVPBX_clK_a.DataController.AppendRecord;
						cxGrdVPBX_clK_a.DataController.Values[iRow, 00] := iRow + 1;
						cxGrdVPBX_clK_a.DataController.Values[iRow, 01] := subObj.Get('AgentName').JsonValue.Value;
						cxGrdVPBX_clK_a.DataController.Values[iRow, 02] := subObj.Get('Agent_resp').JsonValue.Value;
						cxGrdVPBX_clK_a.DataController.Values[iRow, 03] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Total_in_time').JsonValue.Value, 0)));
						cxGrdVPBX_clK_a.DataController.Values[iRow, 04] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('In_avg_time').JsonValue.Value, 0)));
						cxGrdVPBX_clK_a.DataController.Values[iRow, 05] := 0;
					end;
				except
					SetDebugeWrite('[proc_recieve 5411] Json arrjObj error');	
					cxGrdVPBX_cl_a.EndUpdate;
					cxGrdVPBX_clK_a.EndUpdate;
				end;
			finally
				cxGrdVPBX_cl_a.EndUpdate;
				cxGrdVPBX_clK_a.EndUpdate;

        cxGrdVPBX_clK_a.Columns[5].SortOrder := soDescending;
				pSetCallListChart1_1;
      end;
    end else
		if aPid = '5421' then // 시간대별
    begin
			if aStr = '[]' then exit;
			cxGrdVPBX_cl_t.BeginUpdate;
			try
				arrjObj := TJSONObject.ParseJSONValue(aStr) as TJSONArray;
				try
					for i := 0 to arrjObj.Size - 1 do
					begin
						subObj := arrjObj.Get(i) as TJSONObject;

						iRow := cxGrdVPBX_cl_t.DataController.AppendRecord;
						cxGrdVPBX_cl_t.DataController.Values[iRow, 00] := (iRow + 1);
						cxGrdVPBX_cl_t.DataController.Values[iRow, 01] := '';
						cxGrdVPBX_cl_t.DataController.Values[iRow, 02] := subObj.Get('Hour').JsonValue.Value;
						cxGrdVPBX_cl_t.DataController.Values[iRow, 03] := subObj.Get('Total_cnt').JsonValue.Value;
						cxGrdVPBX_cl_t.DataController.Values[iRow, 04] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Total_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_t.DataController.Values[iRow, 05] := subObj.Get('Agent_resp').JsonValue.Value;
						cxGrdVPBX_cl_t.DataController.Values[iRow, 06] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Total_in_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_t.DataController.Values[iRow, 07] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Total_real_in_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_t.DataController.Values[iRow, 08] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('In_avg_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_t.DataController.Values[iRow, 09] := subObj.Get('Agent_resp_20').JsonValue.Value;
						cxGrdVPBX_cl_t.DataController.Values[iRow, 10] := StringReplace(subObj.Get('Agent_resp_20_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_t.DataController.Values[iRow, 11] := subObj.Get('Agent_ring_20').JsonValue.Value;
						cxGrdVPBX_cl_t.DataController.Values[iRow, 12] := StringReplace(subObj.Get('Agent_ring_20_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_t.DataController.Values[iRow, 13] := subObj.Get('Agent_ring_30').JsonValue.Value;
						cxGrdVPBX_cl_t.DataController.Values[iRow, 14] := StringReplace(subObj.Get('Agent_ring_30_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_t.DataController.Values[iRow, 15] := subObj.Get('Agent_ring_40').JsonValue.Value;
						cxGrdVPBX_cl_t.DataController.Values[iRow, 16] := StringReplace(subObj.Get('Agent_ring_40_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_t.DataController.Values[iRow, 17] := subObj.Get('Agent_ring_40_a').JsonValue.Value;
						cxGrdVPBX_cl_t.DataController.Values[iRow, 18] := StringReplace(subObj.Get('Agent_ring_40_a_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_t.DataController.Values[iRow, 19] := subObj.Get('Total_out_cnt').JsonValue.Value;
						cxGrdVPBX_cl_t.DataController.Values[iRow, 20] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Total_out_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_t.DataController.Values[iRow, 21] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Out_avg_time').JsonValue.Value, 0)));
					end;
				except
					SetDebugeWrite('[proc_recieve 5421] Json arrjObj error');	
					cxGrdVPBX_cl_t.EndUpdate;
				end;
			finally
				cxGrdVPBX_cl_t.EndUpdate;
				pSetCallListChart1_2;
			end;
    end else
		if aPid = '5431' then // 일별
		begin
			if aStr = '[]' then exit;
			cxGrdVPBX_cl_d.BeginUpdate;
			try
				arrjObj := TJSONObject.ParseJSONValue(aStr) as TJSONArray;
				Try
					for i := 0 to arrjObj.Size - 1 do
					begin
						subObj := arrjObj.Get(i) as TJSONObject;

						iRow := cxGrdVPBX_cl_d.DataController.AppendRecord;
						cxGrdVPBX_cl_d.DataController.Values[iRow, 00] := (iRow + 1);
						cxGrdVPBX_cl_d.DataController.Values[iRow, 01] := '';
						cxGrdVPBX_cl_d.DataController.Values[iRow, 02] := subObj.Get('Date').JsonValue.Value;
						cxGrdVPBX_cl_d.DataController.Values[iRow, 03] := subObj.Get('Total_cnt').JsonValue.Value;
						cxGrdVPBX_cl_d.DataController.Values[iRow, 04] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Total_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_d.DataController.Values[iRow, 05] := subObj.Get('Agent_resp').JsonValue.Value;
						cxGrdVPBX_cl_d.DataController.Values[iRow, 06] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Total_in_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_d.DataController.Values[iRow, 07] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Total_real_in_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_d.DataController.Values[iRow, 08] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('In_avg_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_d.DataController.Values[iRow, 09] := subObj.Get('Agent_resp_20').JsonValue.Value;
						cxGrdVPBX_cl_d.DataController.Values[iRow, 10] := StringReplace(subObj.Get('Agent_resp_20_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_d.DataController.Values[iRow, 11] := subObj.Get('Agent_ring_20').JsonValue.Value;
						cxGrdVPBX_cl_d.DataController.Values[iRow, 12] := StringReplace(subObj.Get('Agent_ring_20_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_d.DataController.Values[iRow, 13] := subObj.Get('Agent_ring_30').JsonValue.Value;
						cxGrdVPBX_cl_d.DataController.Values[iRow, 14] := StringReplace(subObj.Get('Agent_ring_30_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_d.DataController.Values[iRow, 15] := subObj.Get('Agent_ring_40').JsonValue.Value;
						cxGrdVPBX_cl_d.DataController.Values[iRow, 16] := StringReplace(subObj.Get('Agent_ring_40_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_d.DataController.Values[iRow, 17] := subObj.Get('Agent_ring_40_a').JsonValue.Value;
						cxGrdVPBX_cl_d.DataController.Values[iRow, 18] := StringReplace(subObj.Get('Agent_ring_40_a_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_cl_d.DataController.Values[iRow, 19] := subObj.Get('Total_out_cnt').JsonValue.Value;
						cxGrdVPBX_cl_d.DataController.Values[iRow, 20] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Total_out_time').JsonValue.Value, 0)));
						cxGrdVPBX_cl_d.DataController.Values[iRow, 21] := TimeToStr(pSecondToTime(StrToIntDef(subObj.Get('Out_avg_time').JsonValue.Value, 0)));
					end;
				except
					SetDebugeWrite('[proc_recieve 5421] Json arrjObj error');	
					cxGrdVPBX_cl_d.EndUpdate;
				end;
			finally
				cxGrdVPBX_cl_d.EndUpdate;
				pSetCallListChart1_3;
      end;
    end else
		if ( aPid = '5511' ) then  // 상담원별
    begin
			if aStr = '[]' then exit;
			cxGrdVPBX_ca_a.BeginUpdate;
			cxGrdVPBX_caK_a.BeginUpdate;
			try
				arrjObj := TJSONObject.ParseJSONValue(aStr) as TJSONArray;
        iTot := 0;
				try
					for i := 0 to arrjObj.Size - 1 do
					begin
						subObj := arrjObj.Get(i) as TJSONObject;

						iRow := cxGrdVPBX_ca_a.DataController.AppendRecord;
						cxGrdVPBX_ca_a.DataController.Values[iRow, 00] := (iRow + 1);
						cxGrdVPBX_ca_a.DataController.Values[iRow, 01] := subObj.Get('AgentName').JsonValue.Value;
						cxGrdVPBX_ca_a.DataController.Values[iRow, 02] := subObj.Get('GroupName').JsonValue.Value;
						cxGrdVPBX_ca_a.DataController.Values[iRow, 03] := subObj.Get('Total_call').JsonValue.Value;
						cxGrdVPBX_ca_a.DataController.Values[iRow, 04] := subObj.Get('Agent_con_call').JsonValue.Value;
						cxGrdVPBX_ca_a.DataController.Values[iRow, 05] := StringReplace(subObj.Get('Agent_con_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_a.DataController.Values[iRow, 06] := subObj.Get('Agent_req_call').JsonValue.Value;
						cxGrdVPBX_ca_a.DataController.Values[iRow, 07] := StringReplace(subObj.Get('Agent_req_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_a.DataController.Values[iRow, 08] := subObj.Get('Ivr_cb_from_na_call').JsonValue.Value;
						cxGrdVPBX_ca_a.DataController.Values[iRow, 09] := StringReplace(subObj.Get('Ivr_cb_from_na_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_a.DataController.Values[iRow, 10] := subObj.Get('cb_svc_from_na_call').JsonValue.Value;
						cxGrdVPBX_ca_a.DataController.Values[iRow, 11] := StringReplace(subObj.Get('cb_svc_from_na_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);

						iRow := cxGrdVPBX_caK_a.DataController.AppendRecord;
						cxGrdVPBX_caK_a.DataController.Values[iRow, 00] := (iRow + 1);
						cxGrdVPBX_caK_a.DataController.Values[iRow, 01] := subObj.Get('AgentName').JsonValue.Value;
						cxGrdVPBX_caK_a.DataController.Values[iRow, 02] := subObj.Get('Total_call').JsonValue.Value;
						cxGrdVPBX_caK_a.DataController.Values[iRow, 03] := subObj.Get('Agent_con_call').JsonValue.Value;
						cxGrdVPBX_caK_a.DataController.Values[iRow, 04] := subObj.Get('Agent_req_call').JsonValue.Value;

						iTot := iTot + StrToIntDef(subObj.Get('Total_call').JsonValue.Value, 0);
					end;
				except
					SetDebugeWrite('[proc_recieve 5511] Json arrjObj error');	
					cxGrdVPBX_ca_a.EndUpdate;
					cxGrdVPBX_caK_a.EndUpdate;
				end;
			finally
				cxGrdVPBX_ca_a.EndUpdate;
				cxGrdVPBX_caK_a.EndUpdate;

        cxGrdVPBX_caK_a.BeginUpdate;
        try
          for i := 0 to cxGrdVPBX_caK_a.DataController.RowCount - 1 do
          begin
            cxGrdVPBX_caK_a.ViewData.Records[i].Values[5] := (( cxGrdVPBX_caK_a.ViewData.Records[i].Values[3] / iTot ) * 100 ) -
                                                             (( cxGrdVPBX_caK_a.ViewData.Records[i].Values[4] / iTot ) * 10  );
          end;
        finally
          cxGrdVPBX_caK_a.EndUpdate;
        end;
        cxGrdVPBX_caK_a.Columns[5].SortOrder := soDescending;

        cxGrdVPBX_caK_a.BeginUpdate;
        try
          for i := 0 to cxGrdVPBX_caK_a.DataController.RowCount - 1 do
          begin
            cxGrdVPBX_caK_a.ViewData.Records[i].Values[0] := i + 1;
          end;
        finally
          cxGrdVPBX_caK_a.EndUpdate;
        end;

        pSetCallAnalChart1_1;
      end;
    end else
		if ( aPid = '5521' ) then  // 시간대별
    begin
			if aStr = '[]' then exit;
      cxGrdVPBX_ca_t.BeginUpdate;
			try
				arrjObj := TJSONObject.ParseJSONValue(aStr) as TJSONArray;
				Try
					for i := 0 to arrjObj.Size - 1 do
					begin
						subObj := arrjObj.Get(i) as TJSONObject;

						iRow := cxGrdVPBX_ca_t.DataController.AppendRecord;
						cxGrdVPBX_ca_t.DataController.Values[iRow, 00] := (iRow + 1);
						cxGrdVPBX_ca_t.DataController.Values[iRow, 01] := subObj.Get('Hour').JsonValue.Value;
						cxGrdVPBX_ca_t.DataController.Values[iRow, 02] := subObj.Get('Total_call').JsonValue.Value;
						cxGrdVPBX_ca_t.DataController.Values[iRow, 03] := subObj.Get('Ivr_call').JsonValue.Value;
						cxGrdVPBX_ca_t.DataController.Values[iRow, 04] := StringReplace(subObj.Get('Ivr_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_t.DataController.Values[iRow, 05] := subObj.Get('Agent_Tot_con').JsonValue.Value;
						cxGrdVPBX_ca_t.DataController.Values[iRow, 06] := StringReplace(subObj.Get('Agent_Tot_con_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_t.DataController.Values[iRow, 07] := subObj.Get('Cti_queue_call').JsonValue.Value;
						cxGrdVPBX_ca_t.DataController.Values[iRow, 08] := StringReplace(subObj.Get('Cti_queue_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_t.DataController.Values[iRow, 09] := subObj.Get('Cb_svc_from_q_call').JsonValue.Value;
						cxGrdVPBX_ca_t.DataController.Values[iRow, 10] := StringReplace(subObj.Get('Cb_svc_from_q_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_t.DataController.Values[iRow, 11] := subObj.Get('ivr_cb_from_q_call').JsonValue.Value;
						cxGrdVPBX_ca_t.DataController.Values[iRow, 12] := StringReplace(subObj.Get('ivr_cb_from_q_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_t.DataController.Values[iRow, 13] := subObj.Get('Agent_con_call').JsonValue.Value;
						cxGrdVPBX_ca_t.DataController.Values[iRow, 14] := StringReplace(subObj.Get('Agent_con_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_t.DataController.Values[iRow, 15] := subObj.Get('Agent_req_call').JsonValue.Value;
						cxGrdVPBX_ca_t.DataController.Values[iRow, 16] := StringReplace(subObj.Get('Agent_req_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_t.DataController.Values[iRow, 17] := subObj.Get('Ivr_cb_from_na_call').JsonValue.Value;
						cxGrdVPBX_ca_t.DataController.Values[iRow, 18] := StringReplace(subObj.Get('Ivr_cb_from_na_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_t.DataController.Values[iRow, 19] := subObj.Get('cb_svc_from_na_call').JsonValue.Value;
						cxGrdVPBX_ca_t.DataController.Values[iRow, 20] := StringReplace(subObj.Get('cb_svc_from_na_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_t.DataController.Values[iRow, 21] := StringReplace(subObj.Get('Con_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
					end;
				except
					SetDebugeWrite('[proc_recieve 5521] Json arrjObj error');	
					cxGrdVPBX_ca_t.EndUpdate;
				end;
			finally
				cxGrdVPBX_ca_t.EndUpdate;
				pSetCallAnalChart1_2;
      end;
    end else
		if ( aPid = '5531' ) then
    begin
			if aStr = '[]' then exit;
			cxGrdVPBX_ca_d.BeginUpdate;
			try
				arrjObj := TJSONObject.ParseJSONValue(aStr) as TJSONArray;
				try
					for i := 0 to arrjObj.Size - 1 do
					begin
						subObj := arrjObj.Get(i) as TJSONObject;

						iRow := cxGrdVPBX_ca_d.DataController.AppendRecord;
						cxGrdVPBX_ca_d.DataController.Values[iRow, 00] := (iRow + 1);
						cxGrdVPBX_ca_d.DataController.Values[iRow, 01] := subObj.Get('Date').JsonValue.Value;
						cxGrdVPBX_ca_d.DataController.Values[iRow, 02] := subObj.Get('Total_call').JsonValue.Value;
						cxGrdVPBX_ca_d.DataController.Values[iRow, 03] := subObj.Get('Ivr_call').JsonValue.Value;
						cxGrdVPBX_ca_d.DataController.Values[iRow, 04] := StringReplace(subObj.Get('Ivr_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_d.DataController.Values[iRow, 05] := subObj.Get('Agent_Tot_con').JsonValue.Value;
						cxGrdVPBX_ca_d.DataController.Values[iRow, 06] := StringReplace(subObj.Get('Agent_Tot_con_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_d.DataController.Values[iRow, 07] := subObj.Get('Cti_queue_call').JsonValue.Value;
						cxGrdVPBX_ca_d.DataController.Values[iRow, 08] := StringReplace(subObj.Get('Cti_queue_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_d.DataController.Values[iRow, 09] := subObj.Get('Cb_svc_from_q_call').JsonValue.Value;
						cxGrdVPBX_ca_d.DataController.Values[iRow, 10] := StringReplace(subObj.Get('Cb_svc_from_q_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_d.DataController.Values[iRow, 11] := subObj.Get('ivr_cb_from_q_call').JsonValue.Value;
						cxGrdVPBX_ca_d.DataController.Values[iRow, 12] := StringReplace(subObj.Get('ivr_cb_from_q_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_d.DataController.Values[iRow, 13] := subObj.Get('Agent_con_call').JsonValue.Value;
						cxGrdVPBX_ca_d.DataController.Values[iRow, 14] := StringReplace(subObj.Get('Agent_con_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_d.DataController.Values[iRow, 15] := subObj.Get('Agent_req_call').JsonValue.Value;
						cxGrdVPBX_ca_d.DataController.Values[iRow, 16] := StringReplace(subObj.Get('Agent_req_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_d.DataController.Values[iRow, 17] := subObj.Get('Ivr_cb_from_na_call').JsonValue.Value;
						cxGrdVPBX_ca_d.DataController.Values[iRow, 18] := StringReplace(subObj.Get('Ivr_cb_from_na_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_d.DataController.Values[iRow, 19] := subObj.Get('cb_svc_from_na_call').JsonValue.Value;
						cxGrdVPBX_ca_d.DataController.Values[iRow, 20] := StringReplace(subObj.Get('cb_svc_from_na_call_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
						cxGrdVPBX_ca_d.DataController.Values[iRow, 21] := StringReplace(subObj.Get('Con_rate').JsonValue.Value, '%', '', [rfReplaceAll]);
					end;
				except
					SetDebugeWrite('[proc_recieve 5531] Json arrjObj error');	
					cxGrdVPBX_ca_d.EndUpdate;
				end;	
			finally
				cxGrdVPBX_ca_d.EndUpdate;
				pSetCallAnalChart1_3;
      end;
    end else
		if aPid = '6411' then
    begin
			if aStr = '[]' then exit;
			cxGrdVPBX_wk.BeginUpdate;
			try
				arrjObj := TJSONObject.ParseJSONValue(aStr) as TJSONArray;
				Try
					for i := 0 to arrjObj.Size - 1 do
					begin
						subObj := arrjObj.Get(i) as TJSONObject;

						iRow := cxGrdVPBX_wk.DataController.AppendRecord;
          
						sTmp := '';
						if subObj.Get('Workday').JsonValue.Value = '1' then sTmp := '평일' else
						if subObj.Get('Workday').JsonValue.Value = '2' then sTmp := '토요일' else
						if subObj.Get('Workday').JsonValue.Value = '3' then sTmp := '일요일';
          
						cxGrdVPBX_wk.DataController.Values[iRow, 00] := sTmp;
						cxGrdVPBX_wk.DataController.Values[iRow, 01] := subObj.Get('Work_start').JsonValue.Value;
						cxGrdVPBX_wk.DataController.Values[iRow, 02] := subObj.Get('Work_end').JsonValue.Value;
						sTmp := '';          
						if subObj.Get('Use_Work').JsonValue.Value = 'Y' then sTmp := '사용' else
						if subObj.Get('Use_Work').JsonValue.Value = 'N' then sTmp := '미사용';         
						cxGrdVPBX_wk.DataController.Values[iRow, 03] := sTmp;
          
						cxGrdVPBX_wk.DataController.Values[iRow, 04] := subObj.Get('Breakfast_start').JsonValue.Value;
						cxGrdVPBX_wk.DataController.Values[iRow, 05] := subObj.Get('Breakfast_end').JsonValue.Value;
						sTmp := '';          
						if subObj.Get('Use_Breakfast').JsonValue.Value = 'Y' then sTmp := '사용' else
						if subObj.Get('Use_Breakfast').JsonValue.Value = 'N' then sTmp := '미사용';         
						cxGrdVPBX_wk.DataController.Values[iRow, 06] := sTmp;

						cxGrdVPBX_wk.DataController.Values[iRow, 07] := subObj.Get('Lunch_start').JsonValue.Value;
						cxGrdVPBX_wk.DataController.Values[iRow, 08] := subObj.Get('Lunch_end').JsonValue.Value;
						sTmp := '';          
						if subObj.Get('Use_Lunch').JsonValue.Value = 'Y' then sTmp := '사용' else
						if subObj.Get('Use_Lunch').JsonValue.Value = 'N' then sTmp := '미사용';
						cxGrdVPBX_wk.DataController.Values[iRow, 09] := sTmp;

						cxGrdVPBX_wk.DataController.Values[iRow, 10] := subObj.Get('Dinner_start').JsonValue.Value;
						cxGrdVPBX_wk.DataController.Values[iRow, 11] := subObj.Get('Dinner_end').JsonValue.Value;
						sTmp := '';
						if subObj.Get('Use_Dinner').JsonValue.Value = 'Y' then sTmp := '사용' else
						if subObj.Get('Use_Dinner').JsonValue.Value = 'N' then sTmp := '미사용';
						cxGrdVPBX_wk.DataController.Values[iRow, 12] := sTmp;

						cxGrdVPBX_wk.DataController.Values[iRow, 13] := subObj.Get('Muser').JsonValue.Value;
					end;
				except
					SetDebugeWrite('[proc_recieve 6411] Json arrjObj error');	
					cxGrdVPBX_wk.EndUpdate;
				end;
			finally
				cxGrdVPBX_wk.EndUpdate;
			end;
		end else  
		if aPid = '6511' then
    begin
			if aStr = '[]' then exit;
			cxGrdVPBX_hd.BeginUpdate;
			try
				arrjObj := TJSONObject.ParseJSONValue(aStr) as TJSONArray;
				try
					for i := 0 to arrjObj.Size - 1 do
					begin
						subObj := arrjObj.Get(i) as TJSONObject;

						iRow := cxGrdVPBX_hd.DataController.AppendRecord;

						cxGrdVPBX_hd.DataController.Values[iRow, 00] := False;
						cxGrdVPBX_hd.DataController.Values[iRow, 01] := subObj.Get('Holiday').JsonValue.Value;
						cxGrdVPBX_hd.DataController.Values[iRow, 02] := subObj.Get('Weekday').JsonValue.Value;
						cxGrdVPBX_hd.DataController.Values[iRow, 03] := subObj.Get('Contents').JsonValue.Value;
						cxGrdVPBX_hd.DataController.Values[iRow, 04] := subObj.Get('Muser').JsonValue.Value;
					end;
				except
					SetDebugeWrite('[proc_recieve 6511] Json arrjObj error');	
					cxGrdVPBX_hd.EndUpdate;
				end;
			finally
				cxGrdVPBX_hd.EndUpdate;
			end;
    end else
		if aPid = '6711' then
    begin
			if aStr = '[]' then exit;
			cxGrdVPBX_vi.BeginUpdate;
			try
				arrjObj := TJSONObject.ParseJSONValue(aStr) as TJSONArray;
				try
					for i := 0 to arrjObj.Size - 1 do
					begin
						Inc(giViCnt);
						if ( edtCntS_vi.Value <= giViCnt ) And ( edtCntE_vi.Value >= giViCnt ) then
						begin
							subObj := arrjObj.Get(i) as TJSONObject;
							iRow := cxGrdVPBX_vi.DataController.AppendRecord;

							cxGrdVPBX_vi.DataController.Values[iRow, 00] := False;
							cxGrdVPBX_vi.DataController.Values[iRow, 01] := subObj.Get('Q_exten').JsonValue.Value;
							cxGrdVPBX_vi.DataController.Values[iRow, 02] := subObj.Get('CallerID').JsonValue.Value;
							cxGrdVPBX_vi.DataController.Values[iRow, 03] := subObj.Get('CallerName').JsonValue.Value;
							cxGrdVPBX_vi.DataController.Values[iRow, 04] := subObj.Get('CallerDesc').JsonValue.Value;
							cxGrdVPBX_vi.DataController.Values[iRow, 05] := 0;//subObj.Get('CallerCnt').JsonValue.Value;
							cxGrdVPBX_vi.DataController.Values[iRow, 06] := subObj.Get('Muser').JsonValue.Value;
							cxGrdVPBX_vi.DataController.Values[iRow, 07] := subObj.Get('U_Time').JsonValue.Value;
							cxGrdVPBX_vi.DataController.Values[iRow, 08] := subObj.Get('D_Idx').JsonValue.Value;
						end;
					end;
				except
					SetDebugeWrite('[proc_recieve 6711] Json arrjObj error');	
					cxGrdVPBX_vi.EndUpdate;
				end;
			finally
				cxGrdVPBX_vi.EndUpdate;
				lblTCnt_vi.Caption := FormatFloat('#,##0', cxGrdVPBX_vi.DataController.RecordCount);
			end;
		end else
		if aPid = '6611' then
    begin
			if aStr = '[]' then exit;
			cxGrdVPBX_bl.BeginUpdate;
			try
				arrjObj := TJSONObject.ParseJSONValue(aStr) as TJSONArray;
				try
					for i := 0 to arrjObj.Size - 1 do
					begin
						Inc(giBlCnt);
						if ( edtCntS_bl.Value <= giBlCnt ) And ( edtCntE_bl.Value >= giBlCnt ) then
						begin
							subObj := arrjObj.Get(i) as TJSONObject;
							iRow := cxGrdVPBX_bl.DataController.AppendRecord;

							cxGrdVPBX_bl.DataController.Values[iRow, 00] := False;
							cxGrdVPBX_bl.DataController.Values[iRow, 01] := subObj.Get('Q_exten').JsonValue.Value;
							cxGrdVPBX_bl.DataController.Values[iRow, 02] := subObj.Get('CallerID').JsonValue.Value;
							cxGrdVPBX_bl.DataController.Values[iRow, 03] := subObj.Get('CallerName').JsonValue.Value;
							cxGrdVPBX_bl.DataController.Values[iRow, 04] := subObj.Get('CallerDesc').JsonValue.Value;
							cxGrdVPBX_bl.DataController.Values[iRow, 05] := 0;//subObj.Get('CallerCnt').JsonValue.Value;

							if subObj.Get('Call_Type').JsonValue.Value = '2' then
								cxGrdVPBX_bl.DataController.Values[iRow, 06] := '호분배그룹만' else
							if subObj.Get('Call_Type').JsonValue.Value = '5' then
								cxGrdVPBX_bl.DataController.Values[iRow, 06] := '전체';

							cxGrdVPBX_bl.DataController.Values[iRow, 07] := subObj.Get('Muser').JsonValue.Value;
							cxGrdVPBX_bl.DataController.Values[iRow, 08] := subObj.Get('U_Time').JsonValue.Value;
							cxGrdVPBX_bl.DataController.Values[iRow, 09] := subObj.Get('D_Idx').JsonValue.Value;
						end;
					end;
				except
					SetDebugeWrite('[proc_recieve 6611] Json arrjObj error');	
					cxGrdVPBX_bl.EndUpdate;
				end;
			finally
				cxGrdVPBX_bl.EndUpdate;
				lblTCnt_bl.Caption := FormatFloat('#,##0', giBlCnt);
      end;
    end else
		if aPid = '7051' then
    begin
			if aStr = '[]' then exit;
			cxGrdVPBX_ps.BeginUpdate;
			try
				arrjObj := TJSONObject.ParseJSONValue(aStr) as TJSONArray;
				try
					for i := 0 to arrjObj.Size - 1 do
					begin
						subObj := arrjObj.Get(i) as TJSONObject;

						if Trim(subObj.Get('Item_Name').JsonValue.Value) = '수신거부' then continue;
						if Trim(subObj.Get('Item_Name').JsonValue.Value) = '해피 문자(SMS)' then continue;
						iRow := cxGrdVPBX_ps.DataController.AppendRecord;

						cxGrdVPBX_ps.DataController.Values[iRow, 00] := iRow + 1;//subObj.Get('IDX').JsonValue.Value;
						cxGrdVPBX_ps.DataController.Values[iRow, 01] := subObj.Get('Product').JsonValue.Value;
						cxGrdVPBX_ps.DataController.Values[iRow, 02] := subObj.Get('Item_Name').JsonValue.Value;
						if subObj.Get('USE').JsonValue.Value = 'Y' then
							cxGrdVPBX_ps.DataController.Values[iRow, 03] := '사용함' else
						if subObj.Get('USE').JsonValue.Value = 'N' then
							cxGrdVPBX_ps.DataController.Values[iRow, 03] := '사용안함';
						cxGrdVPBX_ps.DataController.Values[iRow, 04] := subObj.Get('Gubun_1').JsonValue.Value;
						cxGrdVPBX_ps.DataController.Values[iRow, 05] := subObj.Get('Gubun_2').JsonValue.Value;
						cxGrdVPBX_ps.DataController.Values[iRow, 06] := subObj.Get('Gubun_3').JsonValue.Value;
						cxGrdVPBX_ps.DataController.Values[iRow, 07] := subObj.Get('Gubun_4').JsonValue.Value;
						cxGrdVPBX_ps.DataController.Values[iRow, 08] := subObj.Get('Item_Code').JsonValue.Value;
					end;
				except
					SetDebugeWrite('[proc_recieve 7051] Json arrjObj error');	
					cxGrdVPBX_ps.EndUpdate;
				end;
			finally
				cxGrdVPBX_ps.EndUpdate;
			end;
    end;
  except
  end;
end;

procedure Tfrm_PBX.proc_ResultMsg(APid, AResult, AGubun: string);
begin
	if AResult = '00' then
	begin
		GMessagebox(AGubun + '되었습니다.', CDMSI);
		if APid = '6041' then	btn_3_1.click else
		if APid = '6051' then	btn_3_1.click else
		if APid = '6151' then	btn_4_1.click else
		if APid = '6251' then	btn_5_1.click else
		if APid = '6351' then	btn_6_1.click else
		if APid = '6371' then	btn_7_1.click else
		if APid = '6381' then	
		begin
			GT_Si415_INFO.pw := Trim(edt_NewPw.Text);  //변경된 비번으로 적용
			btn_PwClose.click;
		end else
		if APid = '6861' then	btn_8_1.click else
		if APid = '6921' then	btnSearch_qe.click else
		if ( APid = '7021' ) Or
			 ( APid = '7031' ) Or
			 ( APid = '7043' ) then	
		begin
			btnSearch_qe_p.click;
			btnExit_qe.click;
		end else
		if APid = '7061' then	btnSearch_ps.Click;
	end else
	begin
		GMessagebox(Format('%s 중 오류발생'#13#10'[에러코드]%s', [AGubun, AResult]), CDMSI);
	end;
end;

procedure Tfrm_PBX.proc_Set_SystemMente;
begin
	pSi415SendData(fSI_MakeHeader_Only('6810', '0', '')); //현재 설정된 시스템 멘트
end;

procedure Tfrm_PBX.proc_SI415Receive(AData, ACode: Ansistring);
Var
	bNext : Boolean;
	sTmp, sPid : Ansistring;
begin
	if ACode = '6011' then  //6011. 인바운드설정 조회
	begin
		sTmp := fSI_6011_Recv( AData, bNext);
		if (sTmp = '[]') and (Not bNext) then exit;
		if btn_3_1.Tag = 99 then
		begin
			proc_6011(sTmp, sPid, bNext);
			if (Not bNext) then
			begin
				Screen.Cursor := crDefault;
				cxGroupBox9.enabled := True;
				btn_3_1.Tag := 0;
			end;
		end else
		begin
			if ( Not Assigned(Frm_PBX08) ) Or ( Frm_PBX08 = Nil ) then Frm_PBX08 := TFrm_PBX08.Create(Nil);
			frm_PBX08.proc_6011(sTmp, sPid, bNext);
			if (Not bNext) then
			begin
				Screen.Cursor := crDefault;
				frm_PBX08.cxGroupBox9.enabled := True;
			end;
		end;
	end else
	if (ACode = '6021') or (ACode = '6031') then  //6021. 인바운드설정 추가 / 수정
	begin
		if fSI_RecvParser( AData, sTmp, False ) then
		begin
			if (Assigned(frm_PBX08)) and (frm_PBX08.btn_Run.Tag = 99) and (ACode = '6031') then
			begin
				frm_PBX08.mmo_Msg.Lines.Add('호분배그룹 : '+ frm_PBX08.gQExten + ' 설정완료');
				frm_PBX08.tmr_Process.Enabled := True;
			end else frm_PBX01.proc_ResultMsg(sTmp, gSiSchRevH.sResult);
		end else
		begin
			if (Assigned(frm_PBX08)) and (frm_PBX08.btn_Run.Tag = 99) and (ACode = '6031') then
			begin
				if gSiSchRevH.sResult = '90' then
					frm_PBX08.mmo_Msg.Lines.Add('호분배그룹 : '+ frm_PBX08.gQExten + '/변경내용 없음')
				else
					frm_PBX08.mmo_Msg.Lines.Add('호분배그룹 : '+ frm_PBX08.gQExten + '/에러코드['+gSiSchRevH.sResult+']');
				frm_PBX08.tmr_Process.Enabled := True;
			end else frm_PBX01.proc_ResultMsg(sTmp, gSiSchRevH.sResult);
		end;
	end else
	if (ACode = '6041') or (ACode = '6051') then  //6021. 인바운드설정 삭제
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_ResultMsg(ACode, gSiSchRevH.sResult, '삭제');
		end;
	end else
	if ACode = '6111' then                        //6111. 상담그룹 조회
	begin
		sTmp := fSI_6111_Recv( AData, bNext);
		proc_6111(sTmp, bNext);
	end else
			if (ACode = '6121') or (ACode = '6131') then  //6121. 상담그룹 추가 / 수정
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_6100ResultMsg(sTmp, gSiSchRevH.sResult);
		end;
	end else
	if (ACode = '6151') then                      //6151. 상담그룹 삭제
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_ResultMsg(ACode, gSiSchRevH.sResult, '삭제');
		end;
	end else
	if ACode = '6211' then                        //6211. 상담원 조회
	begin
		sTmp := fSI_6211_Recv( AData, bNext);
		proc_6211(sTmp, bNext);
	end else
	if (ACode = '6221') or (ACode = '6231') then  //6221. 상담원 추가 / 수정
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_6200ResultMsg(sTmp, gSiSchRevH.sResult);
		end;
	end else
	if (ACode = '6251') then                      //6251. 상담원 삭제
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_ResultMsg(ACode, gSiSchRevH.sResult, '삭제');
		end;
	end else
	if ACode = '6311' then                        //6311. 관리자 조회
	begin
		sTmp := fSI_6311_Recv( AData, bNext);
		if (gSiSchRevH.sResult = '00') and (sTmp <> '') then
			proc_6311(sTmp, bNext);
	end else
	if (ACode = '6321') or (ACode = '6331') then  //6321. 관리자 추가 / 수정
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_6300ResultMsg(sTmp, gSiSchRevH.sResult);
		end;
	end else
	if (ACode = '6351') then                      //6351. 관리자 삭제
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_ResultMsg(ACode, gSiSchRevH.sResult, '삭제');
		end;
	end else
	if (ACode = '6361') then                      //6351. 관리자 권한 설정
	begin
		sTmp := fSI_6361_Recv( AData, bNext);
		if (gSiSchRevH.sResult = '00') and (sTmp <> '') then
			proc_6361(sTmp, bNext);
		if (Not bNext) then
		begin
			Screen.Cursor := crDefault;
			cxGroupBox21.enabled := True;
		end;
	end else
	if (ACode = '6371') then                      //6361. 관리자 권한 수정
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_ResultMsg(ACode, gSiSchRevH.sResult, '수정');
		end;
	end else
	if (ACode = '6381') then                      //6381. 메인관리자 비번 수정
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_ResultMsg(ACode, gSiSchRevH.sResult, '수정');
		end;
	end else
	if (ACode = '6851') then                      //6851. 멘트 삭제 응답
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_ResultMsg(ACode, gSiSchRevH.sResult, '삭제');
		end;
	end else
	if (ACode = '6911') then                      //6911. 호분배 권한 조회  응답
	begin
    if btnSch_Ext_qe_p.Tag = 1 then
    begin
      btnSch_Ext_qe_p.Tag := 0;
			pRcv_CallDistribution( AData );
    end else
    begin
  		sTmp := fSI_6911_Recv( AData, bNext);
	  	proc_6911(sTmp, bNext);
			if (Not bNext) then
			begin
				Screen.Cursor := crDefault;
				cxGroupBox22.enabled := True;
			end;
		end;
	end else
	if (ACode = '6921') then                      //6921. 호분배 권한 수정
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_ResultMsg(ACode, gSiSchRevH.sResult, '수정');
		end;
	end else
	if (ACode = '7011') then                      //7011. 호분배 우선순위 권한 조회  응답
	begin
		sTmp := fSI_7011_Recv( AData, bNext);
		proc_7011(sTmp, bNext);
	end else
	if (ACode = '7021') or (ACode = '7031') then  //7021. 호분배 우선순위 권한  추가 / 수정
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			if ACode = '7021' then proc_ResultMsg(ACode, gSiSchRevH.sResult, '저장') else
			if ACode = '7031' then proc_ResultMsg(ACode, gSiSchRevH.sResult, '수정') else
		end;
	end else
	if (ACode = '7043') then                      //7043. 호분배 우선순위 권한 삭제  삭제
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_ResultMsg(ACode, gSiSchRevH.sResult, '삭제');
		end;
	end else
	if (ACode = '6811') then                      //6811. 시스템 멘트 조회 응답
	begin
		sTmp := fSI_6811_Recv( AData, bNext);
		proc_6811(sTmp, bNext);
	end else
	if (ACode = '6821') then                      //6821. 시스템 멘트 수정 응답
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			frm_PBX05.proc_ResultMsg(sTmp, gSiSchRevH.sResult);
		end;
	end else
	if (ACode = '6831') then                      //6831. 멘트 리스트 응답
	begin
		sTmp := fSI_6831_Recv( AData, bNext);
		if btn_8_5.Tag = 0 then
		begin
			proc_6831(sTmp, bNext);
			proc_6831_List(sTmp, bNext);
		end
		else if btn_8_1.Tag = 0 then
			proc_6831(sTmp, bNext)
		else if btn_8_1.Tag = 99 then
			proc_6831_List(sTmp, bNext);
	end else
	if (ACode = '6841') then                      //6841. 멘트 등록 응답
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			frm_PBX06.proc_ResultMsg(sTmp, gSiSchRevH.sResult);
		end;
	end else
	if (ACode = '6861') then                      //6861. 멘트 삭제 응답
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_ResultMsg(ACode, gSiSchRevH.sResult, '삭제');
		end;
	end else
	if (ACode = '7061') then                      //8011. 시스템 바로 적용 응답 
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			proc_ResultMsg(ACode, gSiSchRevH.sResult, '저장');
		end;
	end else
	if (ACode = '8011') then                      //8011. 시스템 바로 적용 응답 
	begin
		if fSI_RecvParser( AData, sTmp ) then
		begin
			frm_PBX02.proc_ResultMsg(sTmp, gSiSchRevH.sResult);
		end;
	end;
end;

procedure Tfrm_PBX.pSetCallListChart1_1;
Var i : Integer;
begin
  try
    cxGrdCvPBX_cl_a.DataController.SetRecordCount(0);
    cxGrdCvPBX_cl_a.BeginUpdate();
    try
      if cbKindA1_1.ItemIndex = 0 then
      begin
        cxGrdCvPBX_cl_aSeries1.DisplayText := '전체콜수';
				cxGrdCvPBX_cl_aSeries2.DisplayText := '상담원연결성공';
        cxGrdCvPBX_cl_aSeries3.DisplayText := '아웃바운드콜수';
        cxGrdCvPBX_cl_aSeries4.Visible := False;

        cxGrdCvPBX_cl_a.DataController.RecordCount := cxGrdVPBX_cl_a.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_cl_a.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_cl_a.Categories.Values[I] := cxGrdVPBX_cl_a.DataController.Values[i, 1];
          cxGrdCvPBX_cl_aSeries1.Values[I] := cxGrdVPBX_cl_a.DataController.Values[i, 3];
          cxGrdCvPBX_cl_aSeries2.Values[I] := cxGrdVPBX_cl_a.DataController.Values[i, 5];
          cxGrdCvPBX_cl_aSeries3.Values[I] := cxGrdVPBX_cl_a.DataController.Values[i, 19];
        end;
      end else
      begin
        cxGrdCvPBX_cl_aSeries1.DisplayText := '상담원연결성공';
        cxGrdCvPBX_cl_aSeries2.DisplayText := '20초내응대';
        cxGrdCvPBX_cl_aSeries3.DisplayText := '30초내응대';
        cxGrdCvPBX_cl_aSeries4.DisplayText := '40초내응대';
        cxGrdCvPBX_cl_aSeries4.Visible := True;

        cxGrdCvPBX_cl_a.DataController.RecordCount := cxGrdVPBX_cl_a.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_cl_a.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_cl_a.Categories.Values[I] := cxGrdVPBX_cl_a.DataController.Values[i, 1];
          cxGrdCvPBX_cl_aSeries1.Values[I] := cxGrdVPBX_cl_a.DataController.Values[i, 5];
          cxGrdCvPBX_cl_aSeries2.Values[I] := cxGrdVPBX_cl_a.DataController.Values[i, 11];
          cxGrdCvPBX_cl_aSeries3.Values[I] := cxGrdVPBX_cl_a.DataController.Values[i, 15];
          cxGrdCvPBX_cl_aSeries4.Values[I] := cxGrdVPBX_cl_a.DataController.Values[i, 17];
        end;
      end;
    finally
      cxGrdCvPBX_cl_a.EndUpdate();
    end;
  except
  end;
end;

procedure Tfrm_PBX.pSetCallListChart1_2;
Var i : Integer;
begin
  try
    cxGrdCvPBX_cl_t.DataController.SetRecordCount(0);
    cxGrdCvPBX_cl_t.BeginUpdate();
    try
      if cbKindA1_2.ItemIndex = 0 then
      begin
        cxGrdCvPBX_cl_tSeries1.DisplayText := '전체콜수';
        cxGrdCvPBX_cl_tSeries2.DisplayText := '상담원연결성공';
        cxGrdCvPBX_cl_tSeries3.DisplayText := '아웃바운드콜수';
        cxGrdCvPBX_cl_tSeries4.Visible := False;

        cxGrdCvPBX_cl_t.DataController.RecordCount := cxGrdVPBX_cl_t.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_cl_t.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_cl_t.Categories.Values[I] := cxGrdVPBX_cl_t.DataController.Values[i, 2];
          cxGrdCvPBX_cl_tSeries1.Values[I] := cxGrdVPBX_cl_t.DataController.Values[i, 3];
          cxGrdCvPBX_cl_tSeries2.Values[I] := cxGrdVPBX_cl_t.DataController.Values[i, 5];
          cxGrdCvPBX_cl_tSeries3.Values[I] := cxGrdVPBX_cl_t.DataController.Values[i, 19];
        end;
      end else
      begin
        cxGrdCvPBX_cl_tSeries1.DisplayText := '상담원연결성공';
        cxGrdCvPBX_cl_tSeries2.DisplayText := '20초내응대';
        cxGrdCvPBX_cl_tSeries3.DisplayText := '30초내응대';
        cxGrdCvPBX_cl_tSeries4.DisplayText := '40초내응대';
        cxGrdCvPBX_cl_tSeries4.Visible := True;

        cxGrdCvPBX_cl_t.DataController.RecordCount := cxGrdVPBX_cl_t.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_cl_t.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_cl_t.Categories.Values[I] := cxGrdVPBX_cl_t.DataController.Values[i, 2];
          cxGrdCvPBX_cl_tSeries1.Values[I] := cxGrdVPBX_cl_t.DataController.Values[i, 5];
          cxGrdCvPBX_cl_tSeries2.Values[I] := cxGrdVPBX_cl_t.DataController.Values[i, 11];
          cxGrdCvPBX_cl_tSeries3.Values[I] := cxGrdVPBX_cl_t.DataController.Values[i, 15];
          cxGrdCvPBX_cl_tSeries4.Values[I] := cxGrdVPBX_cl_t.DataController.Values[i, 17];
        end;
      end;
    finally
      cxGrdCvPBX_cl_t.EndUpdate();
    end;
  except
  end;
end;

procedure Tfrm_PBX.pSetCallListChart1_3;
Var i : Integer;
begin
  try
    cxGrdCvPBX_cl_d.DataController.SetRecordCount(0);
    cxGrdCvPBX_cl_d.BeginUpdate();
    try
      if cbKindA1_3.ItemIndex = 0 then
      begin
        cxGrdCvPBX_cl_dSeries1.DisplayText := '전체콜수';
        cxGrdCvPBX_cl_dSeries2.DisplayText := '상담원연결성공';
        cxGrdCvPBX_cl_dSeries3.DisplayText := '아웃바운드콜수';
        cxGrdCvPBX_cl_dSeries4.Visible := False;

        cxGrdCvPBX_cl_d.DataController.RecordCount := cxGrdVPBX_cl_d.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_cl_d.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_cl_d.Categories.Values[I] := cxGrdVPBX_cl_d.DataController.Values[i, 2];
          cxGrdCvPBX_cl_dSeries1.Values[I] := cxGrdVPBX_cl_d.DataController.Values[i, 3];
          cxGrdCvPBX_cl_dSeries2.Values[I] := cxGrdVPBX_cl_d.DataController.Values[i, 5];
          cxGrdCvPBX_cl_dSeries3.Values[I] := cxGrdVPBX_cl_d.DataController.Values[i, 19];
        end;
      end else
      begin
        cxGrdCvPBX_cl_dSeries1.DisplayText := '상담원연결성공';
        cxGrdCvPBX_cl_dSeries2.DisplayText := '20초내응대';
        cxGrdCvPBX_cl_dSeries3.DisplayText := '30초내응대';
        cxGrdCvPBX_cl_dSeries4.DisplayText := '40초내응대';
        cxGrdCvPBX_cl_dSeries4.Visible := True;

        cxGrdCvPBX_cl_d.DataController.RecordCount := cxGrdVPBX_cl_d.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_cl_d.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_cl_d.Categories.Values[I] := cxGrdVPBX_cl_d.DataController.Values[i, 2];
          cxGrdCvPBX_cl_dSeries1.Values[I] := cxGrdVPBX_cl_d.DataController.Values[i, 5];
          cxGrdCvPBX_cl_dSeries2.Values[I] := cxGrdVPBX_cl_d.DataController.Values[i, 11];
          cxGrdCvPBX_cl_dSeries3.Values[I] := cxGrdVPBX_cl_d.DataController.Values[i, 15];
          cxGrdCvPBX_cl_dSeries4.Values[I] := cxGrdVPBX_cl_d.DataController.Values[i, 17];
        end;
      end;
    finally
      cxGrdCvPBX_cl_d.EndUpdate();
    end;
  except
  end;
end;

procedure Tfrm_PBX.pSetGraphSlide(Var APanel : TPanel; iType, iWH: Integer);
begin
// iType : 1.왼쪽 열기, 2.왼쪽 닫기, 3.아래쪽열기, 4.아래쪽 닫기
  if iType = 1 then
  begin
    while APanel.Width < iWH do
    begin
      APanel.Width := APanel.Width + 50;
      if APanel.Width > iWH then APanel.Width := iWH;
      Application.ProcessMessages;
    end;
  end else
  if iType = 2 then
  begin
    while APanel.Width > 0 do
    begin
      APanel.Width := APanel.Width - 50;
      Application.ProcessMessages;
    end;
  end else
  if iType = 3 then
  begin
    while APanel.Height < iWH do
    begin
      APanel.Height := APanel.Height + 50;
      if APanel.Height > iWH then APanel.Height := iWH;
      Application.ProcessMessages;
    end;
  end else
  if iType = 4 then
  begin
    while APanel.Height > 0 do
    begin
      APanel.Height := APanel.Height - 50;
      Application.ProcessMessages;
    end;
  end;
end;

procedure Tfrm_PBX.pShowFileUpload(iG: Integer);
var iRow : integer;
begin
	if iG = 1 then 
	begin
		iRow := cxGrdVPBX_vi_s.DataController.FocusedRecordIndex;
		if iRow < 0 then
		begin
			GMessagebox('좌측 서비스명을 선택해 주세요.', CDMSI);
			Exit;
		end;
		grpFileUpload.Caption := 'VIP 고객 파일 등록';
	end else
	if iG = 2 then 
	begin
		iRow := cxGrdVPBX_bl_s.DataController.FocusedRecordIndex;
		if iRow < 0 then
		begin
			GMessagebox('좌측 서비스명을 선택해 주세요.', CDMSI);
			Exit;
		end;
		grpFileUpload.Caption := '수신거부 고객 파일 등록';
	end;

	chkFirstRowHeader.checked := False;
	cxPageControl1.Enabled := False;

  edtFilename.Clear;
	Gauge1.Position := 0;
  cxViewFileExcelList.DataController.SetRecordCount(0);

  grpFileUpload.Tag := iG;
	grpFileUpload.Left := (Self.Width  - grpFileUpload.Width) div 2;
	grpFileUpload.Top  := (Self.Height - grpFileUpload.Height) div 2;
	grpFileUpload.Visible := True;
	grpFileUpload.BringToFront;
end;

procedure Tfrm_PBX.pSnd_Vip_InboundList;
Var sParam : string;
begin
  try
    sParam := GT_Si415_INFO.Id;               // Admin_ID
    sParam := sParam + '│' + '';              // 호분배그룹
    sParam := sParam + '│' + edtSch_vi.Text;  // 대표번호
    sParam := sParam + '│' + '';              // 착신번호
    sParam := sParam + '│' + '';              // 서비스명

    fSI_6010_Send(sParam);   // 인바운드 조회
  except
  end;
end;

procedure Tfrm_PBX.pRcv_Vip_InboundList( sData : String );
Var
  bNext : Boolean;
	sTmp : string;
  subObj : TJSONObject;
  arrjObj : TJSONArray;
  i, iRow : Integer;
begin
	try
//    sData := '60115023                    331          00                                0000                                                                                                                  5    E'+
//             '[{"Q_exten":"8888","Service_no":"16886618","Dnis_no":"0216886618","Buz_name":"콜마너테스트"}'+
//             ',{"Q_exten":"9108","Service_no":"07081213708","Dnis_no":"0216886618","Buz_name":"콜마너테스트1"},{"Q_exten":"9999","Service_no":"16886618","Dnis_no":"0216886618","Buz_name":"콜마너테스트2"}]';

		sTmp := fSI_6011_Recv( sData, bNext);

		if Trim(sTmp) = '' then Exit;   

		if sTmp = '[]' then exit;
		cxGrdVPBX_vi_s.DataController.SetRecordCount(0);
		cxGrdVPBX_vi_s.BeginUpdate;
		try
			arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
			for i := 0 to arrjObj.Size - 1 do
      begin
        subObj := arrjObj.Get(i) as TJSONObject;

        iRow := cxGrdVPBX_vi_s.DataController.AppendRecord;

        cxGrdVPBX_vi_s.DataController.Values[iRow, 00] := subObj.Get('Buz_name').JsonValue.Value;
        cxGrdVPBX_vi_s.DataController.Values[iRow, 01] := subObj.Get('Service_no').JsonValue.Value;
        cxGrdVPBX_vi_s.DataController.Values[iRow, 02] := subObj.Get('Q_exten').JsonValue.Value;
      end;
			cxGrdVPBX_vi_s.EndUpdate;
		except
			SetDebugeWrite('[pRcv_Vip_InboundList] Json arrjObj error');	
			cxGrdVPBX_vi_s.EndUpdate;
		end;
  except
  end;
end;

procedure Tfrm_PBX.pSnd_BlackList_InboundList;
Var sParam : string;
begin
  try
    sParam := GT_Si415_INFO.Id;               // Admin_ID
    sParam := sParam + '│' + '';              // 호분배그룹
    sParam := sParam + '│' + edtSch_vi.Text;  // 대표번호
    sParam := sParam + '│' + '';              // 착신번호
    sParam := sParam + '│' + '';              // 서비스명

    fSI_6010_Send(sParam);   // 인바운드 조회
  except
  end;
end;

procedure Tfrm_PBX.pRcv_BlackList_InboundList( sData : String );
Var
  bNext : Boolean;
  sTmp : string;
  subObj : TJSONObject;
  arrjObj : TJSONArray;
  i, iRow : Integer;
begin
  try
//    sData := '60115023                    331          00                                0000                                                                                                                  5    E'+
//             '[{"Q_exten":"8888","Service_no":"16886618","Dnis_no":"0216886618","Buz_name":"콜마너테스트"}'+
//             ',{"Q_exten":"9108","Service_no":"07081213708","Dnis_no":"0216886618","Buz_name":"콜마너테스트1"},{"Q_exten":"9999","Service_no":"16886618","Dnis_no":"0216886618","Buz_name":"콜마너테스트2"}]';

		sTmp := fSI_6011_Recv( sData, bNext);
		if sTmp = '[]' then exit;

    cxGrdVPBX_bl_s.DataController.SetRecordCount(0);
    cxGrdVPBX_bl_s.BeginUpdate;
    try
			arrjObj := TJSONObject.ParseJSONValue(sTmp) as TJSONArray;
			for i := 0 to arrjObj.Size - 1 do
      begin
        subObj := arrjObj.Get(i) as TJSONObject;

        iRow := cxGrdVPBX_bl_s.DataController.AppendRecord;

        cxGrdVPBX_bl_s.DataController.Values[iRow, 00] := subObj.Get('Buz_name').JsonValue.Value;
        cxGrdVPBX_bl_s.DataController.Values[iRow, 01] := subObj.Get('Service_no').JsonValue.Value;
        cxGrdVPBX_bl_s.DataController.Values[iRow, 02] := subObj.Get('Q_exten').JsonValue.Value;
      end;
			cxGrdVPBX_bl_s.EndUpdate;
		except
			SetDebugeWrite('[pRcv_BlackList_InboundList] Json arrjObj error');	
			cxGrdVPBX_bl_s.EndUpdate;
		end;
  except
  end;
end;

procedure Tfrm_PBX.pSetCallAnalChart1_1;
Var i : Integer;
begin
  try
    cxGrdCvPBX_ca_a.DataController.SetRecordCount(0);
    cxGrdCvPBX_ca_a.BeginUpdate();
    try
      if cbKindA2_1.ItemIndex = 0 then
      begin
        cxGrdCvPBX_ca_aSeries1.DisplayText := '상담원연결요청';
        cxGrdCvPBX_ca_aSeries2.DisplayText := '상담원연결성공';
        cxGrdCvPBX_ca_aSeries3.DisplayText := '상담원무응답';
        cxGrdCvPBX_ca_aSeries4.Visible := False;

        cxGrdCvPBX_ca_a.DataController.RecordCount := cxGrdVPBX_ca_a.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_ca_a.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_ca_a.Categories.Values[I] := cxGrdVPBX_ca_a.DataController.Values[i, 1];
          cxGrdCvPBX_ca_aSeries1.Values[I] := cxGrdVPBX_ca_a.DataController.Values[i, 3];
          cxGrdCvPBX_ca_aSeries2.Values[I] := cxGrdVPBX_ca_a.DataController.Values[i, 4];
          cxGrdCvPBX_ca_aSeries3.Values[I] := cxGrdVPBX_ca_a.DataController.Values[i, 6];
        end;
      end else
      begin
        cxGrdCvPBX_ca_aSeries1.DisplayText := '상담원연결성공';
        cxGrdCvPBX_ca_aSeries2.DisplayText := '20초내응대';
        cxGrdCvPBX_ca_aSeries3.DisplayText := '30초내응대';
        cxGrdCvPBX_ca_aSeries4.DisplayText := '40초내응대';
        cxGrdCvPBX_ca_aSeries4.Visible := True;

        cxGrdCvPBX_ca_a.DataController.RecordCount := cxGrdVPBX_ca_a.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_ca_a.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_ca_a.Categories.Values[I] := cxGrdVPBX_ca_a.DataController.Values[i, 1];
          cxGrdCvPBX_ca_aSeries1.Values[I] := cxGrdVPBX_ca_a.DataController.Values[i, 5];
          cxGrdCvPBX_ca_aSeries2.Values[I] := cxGrdVPBX_ca_a.DataController.Values[i, 11];
          cxGrdCvPBX_ca_aSeries3.Values[I] := cxGrdVPBX_ca_a.DataController.Values[i, 15];
          cxGrdCvPBX_ca_aSeries4.Values[I] := cxGrdVPBX_ca_a.DataController.Values[i, 17];
        end;
      end;
    finally
      cxGrdCvPBX_ca_a.EndUpdate();
    end;
  except
  end;
end;

procedure Tfrm_PBX.pSetCallAnalChart1_2;
Var i : Integer;
begin
  try
    cxGrdCvPBX_ca_t.DataController.SetRecordCount(0);
    cxGrdCvPBX_ca_t.BeginUpdate();
    try
      if cbKindA2_2.ItemIndex = 0 then
      begin
        cxGrdCvPBX_ca_tSeries1.DisplayText := '전체콜수';
        cxGrdCvPBX_ca_tSeries2.DisplayText := '상담원연결요청';

        cxGrdCvPBX_ca_tSeries3.Visible := True;
        cxGrdCvPBX_ca_tSeries3.DisplayText := '상담원연결성공';
        cxGrdCvPBX_ca_tSeries4.Visible := True;
        cxGrdCvPBX_ca_tSeries4.DisplayText := '무응답';

        cxGrdCvPBX_ca_t.DataController.RecordCount := cxGrdVPBX_ca_t.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_ca_t.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_ca_t.Categories.Values[I] := cxGrdVPBX_ca_t.DataController.Values[i, 1];
          cxGrdCvPBX_ca_tSeries1.Values[I] := cxGrdVPBX_ca_t.DataController.Values[i, 2];
          cxGrdCvPBX_ca_tSeries2.Values[I] := cxGrdVPBX_ca_t.DataController.Values[i, 5];
          cxGrdCvPBX_ca_tSeries3.Values[I] := cxGrdVPBX_ca_t.DataController.Values[i, 13];
          cxGrdCvPBX_ca_tSeries4.Values[I] := cxGrdVPBX_ca_t.DataController.Values[i, 15];
        end;
      end else
      if cbKindA2_2.ItemIndex = 1 then
      begin
        cxGrdCvPBX_ca_tSeries1.DisplayText := '멘트중끊음';
        cxGrdCvPBX_ca_tSeries2.DisplayText := 'CTI큐인입후종료';

        cxGrdCvPBX_ca_tSeries3.Visible := False;
        cxGrdCvPBX_ca_tSeries3.DisplayText := '';
        cxGrdCvPBX_ca_tSeries4.Visible := False;
        cxGrdCvPBX_ca_tSeries4.DisplayText := '';

        cxGrdCvPBX_ca_t.DataController.RecordCount := cxGrdVPBX_ca_t.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_ca_t.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_ca_t.Categories.Values[I] := cxGrdVPBX_ca_t.DataController.Values[i, 1];
          cxGrdCvPBX_ca_tSeries1.Values[I] := cxGrdVPBX_ca_t.DataController.Values[i, 3];
          cxGrdCvPBX_ca_tSeries2.Values[I] := cxGrdVPBX_ca_t.DataController.Values[i, 7];
        end;
      end else
      if cbKindA2_2.ItemIndex = 2 then
      begin
        cxGrdCvPBX_ca_tSeries1.DisplayText := 'CTI큐인입후콜백요청';
        cxGrdCvPBX_ca_tSeries2.DisplayText := 'CTI큐인입후콜백종료';

        cxGrdCvPBX_ca_tSeries3.Visible := True;
        cxGrdCvPBX_ca_tSeries3.DisplayText := '상담원무응답후콜백요청';
        cxGrdCvPBX_ca_tSeries4.Visible := True;
        cxGrdCvPBX_ca_tSeries4.DisplayText := '상담원무응답후콜백종료';

        cxGrdCvPBX_ca_t.DataController.RecordCount := cxGrdVPBX_ca_t.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_ca_t.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_ca_t.Categories.Values[I] := cxGrdVPBX_ca_t.DataController.Values[i, 1];
          cxGrdCvPBX_ca_tSeries1.Values[I] := cxGrdVPBX_ca_t.DataController.Values[i, 9];
          cxGrdCvPBX_ca_tSeries2.Values[I] := cxGrdVPBX_ca_t.DataController.Values[i, 11];
          cxGrdCvPBX_ca_tSeries3.Values[I] := cxGrdVPBX_ca_t.DataController.Values[i, 17];
          cxGrdCvPBX_ca_tSeries4.Values[I] := cxGrdVPBX_ca_t.DataController.Values[i, 19];
        end;
      end;
    finally
      cxGrdCvPBX_ca_t.EndUpdate();
    end;
  except
  end;
end;

procedure Tfrm_PBX.pSetCallAnalChart1_3;
Var i : Integer;
begin
  try
    cxGrdCvPBX_ca_d.DataController.SetRecordCount(0);
    cxGrdCvPBX_ca_d.BeginUpdate();
    try
      if cbKindA2_3.ItemIndex = 0 then
      begin
        cxGrdCvPBX_ca_dSeries1.DisplayText := '전체콜수';
        cxGrdCvPBX_ca_dSeries2.DisplayText := '상담원연결요청';

        cxGrdCvPBX_ca_dSeries3.Visible := True;
        cxGrdCvPBX_ca_dSeries3.DisplayText := '상담원연결성공';
        cxGrdCvPBX_ca_dSeries4.Visible := True;
        cxGrdCvPBX_ca_dSeries4.DisplayText := '무응답';

        cxGrdCvPBX_ca_d.DataController.RecordCount := cxGrdVPBX_ca_d.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_ca_d.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_ca_d.Categories.Values[I] := cxGrdVPBX_ca_d.DataController.Values[i, 1];
          cxGrdCvPBX_ca_dSeries1.Values[I] := cxGrdVPBX_ca_d.DataController.Values[i, 2];
          cxGrdCvPBX_ca_dSeries2.Values[I] := cxGrdVPBX_ca_d.DataController.Values[i, 5];
          cxGrdCvPBX_ca_dSeries3.Values[I] := cxGrdVPBX_ca_d.DataController.Values[i, 13];
          cxGrdCvPBX_ca_dSeries4.Values[I] := cxGrdVPBX_ca_d.DataController.Values[i, 15];
        end;
      end else
      if cbKindA2_3.ItemIndex = 1 then
      begin
        cxGrdCvPBX_ca_dSeries1.DisplayText := '멘트중끊음';
        cxGrdCvPBX_ca_dSeries2.DisplayText := 'CTI큐인입후종료';

        cxGrdCvPBX_ca_dSeries3.Visible := False;
        cxGrdCvPBX_ca_dSeries3.DisplayText := '';
        cxGrdCvPBX_ca_dSeries4.Visible := False;
        cxGrdCvPBX_ca_dSeries4.DisplayText := '';

        cxGrdCvPBX_ca_d.DataController.RecordCount := cxGrdVPBX_ca_d.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_ca_d.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_ca_d.Categories.Values[I] := cxGrdVPBX_ca_d.DataController.Values[i, 1];
          cxGrdCvPBX_ca_dSeries1.Values[I] := cxGrdVPBX_ca_d.DataController.Values[i, 3];
          cxGrdCvPBX_ca_dSeries2.Values[I] := cxGrdVPBX_ca_d.DataController.Values[i, 7];
        end;
      end else
      if cbKindA2_3.ItemIndex = 2 then
      begin
        cxGrdCvPBX_ca_dSeries1.DisplayText := 'CTI큐인입후콜백요청';
        cxGrdCvPBX_ca_dSeries2.DisplayText := 'CTI큐인입후콜백종료';

        cxGrdCvPBX_ca_dSeries3.Visible := True;
        cxGrdCvPBX_ca_dSeries3.DisplayText := '상담원무응답후콜백요청';
        cxGrdCvPBX_ca_dSeries4.Visible := True;
        cxGrdCvPBX_ca_dSeries4.DisplayText := '상담원무응답후콜백종료';

        cxGrdCvPBX_ca_d.DataController.RecordCount := cxGrdVPBX_ca_d.DataController.RecordCount;
        for I := 0 to cxGrdVPBX_ca_d.DataController.RecordCount-1 do
        begin
          cxGrdCvPBX_ca_d.Categories.Values[I] := cxGrdVPBX_ca_d.DataController.Values[i, 1];
          cxGrdCvPBX_ca_dSeries1.Values[I] := cxGrdVPBX_ca_d.DataController.Values[i, 9];
          cxGrdCvPBX_ca_dSeries2.Values[I] := cxGrdVPBX_ca_d.DataController.Values[i, 11];
          cxGrdCvPBX_ca_dSeries3.Values[I] := cxGrdVPBX_ca_d.DataController.Values[i, 17];
          cxGrdCvPBX_ca_dSeries4.Values[I] := cxGrdVPBX_ca_d.DataController.Values[i, 19];
        end;
      end;
    finally
      cxGrdCvPBX_ca_d.EndUpdate();
    end;
  except
  end;
end;

procedure Tfrm_PBX.pProductSInit;
begin
	try
   lblIdx_ps.Caption := '';
   lblIdx_ps.Hint    := '';

   lblpdt_ps.Caption := '';
   lblItNm_ps.Caption := '';

   cbUse_ps.ItemIndex := -1;

   lblGu1.Visible := False;
   lblGu1.Caption := '';
   meGu1.Visible := False;
   meGu1.Clear;

   lblGu2.Visible := False;
   lblGu2.Caption := '';
   meGu2.Visible := False;
   meGu2.Clear;

   meGu3.Visible := False;
   meGu3.Clear;

   lblGu4.Visible := False;
   lblGu4.Caption := '';
   cuGu4.Visible := False;
   cuGu4.Value := 0;
  except
  end;
end;

procedure Tfrm_PBX.pProductSLoad;
Var iRow : Integer;
begin
	try
    iRow := cxGrdVPBX_ps.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;

		pProductSInit;

		lblIdx_ps.Caption := cxGrdVPBX_ps.DataController.Values[iRow, 0];
		lblIdx_ps.Hint    := cxGrdVPBX_ps.DataController.Values[iRow, 8];

    lblpdt_ps.Caption := cxGrdVPBX_ps.DataController.Values[iRow, 1];
    lblItNm_ps.Caption := cxGrdVPBX_ps.DataController.Values[iRow, 2];

    cbUse_ps.Text := cxGrdVPBX_ps.DataController.Values[iRow, 3];

		if ( Trim(lblIdx_Ps.Hint) = '1' ) Or
			 ( Trim(lblIdx_Ps.Hint) = '3' ) then
    begin
      lblGu1.Visible := True;
			lblGu1.Caption := '시간입력';

      meGu1.Visible := True;
      meGu1.Properties.EditMask := '!99:99;1;_';
      meGu1.Text := cxGrdVPBX_ps.DataController.Values[iRow, 4];

      lblGu2.Visible := True;
			lblGu2.Caption := '시간입력';

			meGu2.Visible := True;
			meGu2.Properties.EditMask := '!99:99;1;_';
			meGu2.Text := cxGrdVPBX_ps.DataController.Values[iRow, 5];

      if ( Trim(lblIdx_Ps.Hint) = '1' ) then
      begin
        meGu3.Visible := True;
        meGu3.Text := cxGrdVPBX_ps.DataController.Values[iRow, 6];
      end;
    end else
    if ( Trim(lblIdx_Ps.Hint) = '2001' ) then
    begin
			lblGu1.Visible := True;
      lblGu1.Caption := '보안기간(일)';

      meGu1.Visible := True;
      meGu1.Properties.EditMask := '!999;1;_';
      meGu1.Text := cxGrdVPBX_ps.DataController.Values[iRow, 4];
    end else
		if ( Trim(lblIdx_Ps.Hint) = '3001' ) then
		begin
			lblGu1.Visible := True;
      lblGu1.Caption := '대기중고객(이상)';

      meGu1.Visible := True;
      meGu1.Properties.EditMask := '!999;1;_';
			meGu1.Text := cxGrdVPBX_ps.DataController.Values[iRow, 4];

			lblGu4.Visible := True;
			lblGu4.Caption := '대기(초)';
			cuGu4.Visible := True;
			cuGu4.Text := cxGrdVPBX_ps.DataController.Values[iRow, 7];

		end else
    if ( Trim(lblIdx_Ps.Hint) = '9' ) Or
       ( Trim(lblIdx_Ps.Hint) = '10' ) then
    begin
      lblGu4.Visible := True;
			lblGu4.Caption := '시간입력';

			cuGu4.Visible := True;
			cuGu4.Text := cxGrdVPBX_ps.DataController.Values[iRow, 7];
		end;
  except
  end;
end;

procedure Tfrm_PBX.pWorkDayInit;
begin
  try
    cbWorkDay.ItemIndex := -1;
    cbWorkDay.Enabled := False;

    edtWorkS.Clear;
    edtWorkE.Clear;
    cbUseWork.ItemIndex := -1;
//    edtWorkS.Enabled := False;
//    edtWorkE.Enabled := False;
//    cbUseWork.Enabled := False;

    edtBreakS.Clear;
    edtBreakE.Clear;
		cbUseBreak.ItemIndex := -1;
    edtBreakS.Enabled := False;
    edtBreakE.Enabled := False;
    cbUseBreak.Enabled := False;

    edtLunchS.Clear;
    edtLunchE.Clear;
    cbUseLunch.ItemIndex := -1;

    edtDinnerS.Clear;
    edtDinnerE.Clear;
    cbUseDinner.ItemIndex := -1;
//    edtDinnerS.Enabled := False;
//    edtDinnerE.Enabled := False;
//    cbUseDinner.Enabled := False;
  except
  end;
end;

procedure Tfrm_PBX.pWorkDayLoad;
Var iRow, idx : Integer;
begin
  try
    iRow := cxGrdVPBX_wk.DataController.FocusedRecordIndex;
    if iRow < 0 then Exit;

    pWorkDayInit;

    idx := cbWorkDay.Properties.Items.IndexOf(cxGrdVPBX_wk.DataController.Values[iRow, 0]);
    cbWorkDay.ItemIndex := idx;

    edtWorkS.Text := cxGrdVPBX_wk.DataController.Values[iRow, 1];
    edtWorkE.Text := cxGrdVPBX_wk.DataController.Values[iRow, 2];
    idx := cbUseWork.Properties.Items.IndexOf(cxGrdVPBX_wk.DataController.Values[iRow, 3]);
    cbUseWork.ItemIndex := idx;


    edtBreakS.Text := cxGrdVPBX_wk.DataController.Values[iRow, 4];
    edtBreakE.Text := cxGrdVPBX_wk.DataController.Values[iRow, 5];
    idx := cbUseBreak.Properties.Items.IndexOf(cxGrdVPBX_wk.DataController.Values[iRow, 6]);
    cbUseBreak.ItemIndex := idx;


    edtLunchS.Text := cxGrdVPBX_wk.DataController.Values[iRow, 7];
    edtLunchE.Text := cxGrdVPBX_wk.DataController.Values[iRow, 8];
    idx := cbUseLunch.Properties.Items.IndexOf(cxGrdVPBX_wk.DataController.Values[iRow, 9]);
    cbUseLunch.ItemIndex := idx;

    edtDinnerS.Text := cxGrdVPBX_wk.DataController.Values[iRow, 10];
    edtDinnerE.Text := cxGrdVPBX_wk.DataController.Values[iRow, 11];
    idx := cbUseDinner.Properties.Items.IndexOf(cxGrdVPBX_wk.DataController.Values[iRow, 12]);
    cbUseDinner.ItemIndex := idx;

  	grpWorkSet.Left := (cxPageControl1.Width  - grpWorkSet.Width) div 2;
  	grpWorkSet.Top  := (cxPageControl1.Height - grpWorkSet.Height) div 2;
  	grpWorkSet.Visible := True;
	  grpWorkSet.BringToFront;
  except
  end;
end;

procedure Tfrm_PBX.tmrSI415ATimer(Sender: TObject);
Var sStr : String;
begin
	try
		if tmrSI415A.Tag = 20 then Exit;

		if tmrSI415A.Interval = 500 then
			tmrSI415A.Interval := 3000;

		if Not Frm_Main.bSI415_A.Socket.Connected then
			Frm_Main.bSI415_A.Active := True
		else
		begin
			if iSI415HBeat > 20 then
			begin
				if Frm_Main.bSI415_A.Socket.Connected then
				begin
          // Heart Bit
					sStr := fSI_MakeHeader_Only('9000', '0', '00');
					Frm_Main.bSI415_A.Socket.SendText(sStr);
					iSI415HBeat := 0;
					SetDebugeWrite('tmr_SI415checkTimer : ' + sStr);
					Log('bSI415_A SendText :' + sStr, LOGIPCCSDATAPATHFILE);  //IPCC서버 전송
				end;
			end;
			Inc(iSI415HBeat);
		end;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

function Tfrm_PBX.ExcelToGridEx(AFilename: string;
	AView: TcxGridDBTableView; AGauge: TAdvProgressBar): Boolean;
var
  FExcel: Variant;
  FWorkbook: Variant;
  FWorksheet: Variant;
  FCell: Variant;
  FArray: Variant;
  I, s,z: Integer;
  rangestr:string;
  startstr,endstr:string;
  code: Integer;
  sr,er,sc,ec: Integer;
  ulc: Boolean;
  OldCursor: TCursor;
	ColCount, RowCount, iRow: Integer;
begin
	Result := False;

  OldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  try
    FExcel := CreateOleObject('excel.application');
  except
    Screen.Cursor := OldCursor;
    raise EAdvGridError.Create('Excel OLE server not found');
    Exit;
  end;

  try
    FWorkBook := FExcel.WorkBooks.Open(AFilename);
    FWorkSheet := FWorkBook.ActiveSheet;
    rangestr := FWorkSheet.UsedRange.Address;

    //decode here how many cells are required, $A$1:$D$8 for example
    startstr := '';
    endstr := '';

    sc := -1;
    ec := -1;

    if Pos(':',rangestr) > 0 then
    begin
      startstr := Copy(rangestr,1,pos(':',rangestr)-1);
			endstr := Copy(rangestr,pos(':',rangestr)+1,255);

      if pos('$',startstr) = 1 then
        Delete(startstr,1,1);

      if pos('$',endstr) = 1 then
        Delete(endstr,1,1);

      ulc := not (Pos('$',startstr) > 0);

      if pos('$',startstr) > 0 then
        Val(copy(startstr,pos('$',startstr)+1,255),sr,code)
      else
        Val(startstr,sr,code);

      if code <> 0 then
				sr := -1;

      if pos('$',endstr) > 0 then
        Val(copy(endstr,pos('$',endstr)+1,255),er,code)
      else
        Val(endstr,er,code);

      if code <> 0 then
        er := -1;

      // now decode the Columns
      if ulc then
      begin
        sc := 1;
        ec := 256;
      end else
      begin
        if pos('$',startstr) > 0 then
          startstr := Copy(startstr,1,pos('$',startstr)-1);

        if pos('$',endstr) > 0 then
          endstr := Copy(endstr,1,pos('$',endstr) - 1);

        if startstr <> '' then
          sc := ord(startstr[1]) - 64;

        if Length(startstr)>1 then
          sc := sc * 26 + ord(startstr[2]) - 64;

        if endstr<>'' then
          ec := ord(endstr[1]) - 64;
        if Length(endstr)>1 then
          ec := ec * 26 + ord(endstr[2]) - 64;
      end;
    end else
    begin
      sc := 1;
      sr := 1;
      ec := 1;
			er := 1;
    end;

    if (sr <> -1) and (er <> -1) and (sc <> -1) and (ec <> -1) then
    begin
      ColCount := ec - sc + 1;
      RowCount := er - sr + 1;
		end;

    rangestr := Chr(ord('A') - 1 + sc) + IntToStr(sr)+':';

		if (ColCount > 26) then
    begin
      rangestr := rangestr + chr(ord('A') - 1 + ((ec - sc) div 26));
      rangestr := rangestr + chr(ord('A') + ((ec - sc) mod 26));
    end
    else
			rangestr := rangestr + Chr(ord('A') - 1 + ec);

    rangestr := rangestr + IntToStr(er);

		AGauge.Position := 0;
		AGauge.Max := RowCount;

    for i := 0 to ColCount do    // colCount-1을 안한이유는 순서부분 넣어주기 위해
    begin
      if I > 15 then Break;
			AView.Columns[I].Visible := True;
    end;
			AView.Columns[8].Visible := False;

		FArray := FWorkSheet.Range[RangeStr].Value;

    AView.BeginUpdate;
//		AView.DataController.RecordCount := RowCount;
		if chkFirstRowHeader.Checked then
		AView.DataController.RecordCount := RowCount - 1 else
		AView.DataController.RecordCount := RowCount - 0;
		try
      for s := 1 to RowCount do
      begin
				if (chkFirstRowHeader.Checked) and (s = 1) then Continue;
				for z := 1 to ColCount do
				begin
					if z > 16 then
						Break;

					FCell := FArray[s,z];

					if VarIsClear(FCell) then
						FCell := EmptyStr;
//					AView.DataController.Values[s-1, z-1] := FCell;
					AView.DataController.Values[iRow, z-1] := FCell;
				end;
				if s mod 100 = 0 then
				begin
					AGauge.position := s;
					Application.ProcessMessages;
				end;
				inc(iRow);
			end;
    finally
      AView.EndUpdate;
    end;

    FWorkBook.Close();

    AGauge.Position := AGauge.Max;

    Result := True;
  finally
    FExcel.Quit;
    FExcel := UnAssigned;
    Screen.Cursor := OldCursor;
  end;
end;

end.

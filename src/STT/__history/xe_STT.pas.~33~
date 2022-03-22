unit xe_STT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, MSXML2_TLB,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, DateUtils,
  cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxVariants,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxGridChartView,
  cxDropDownEdit, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxGroupBox,
	Vcl.ExtCtrls, system.Math, AdvSplitter, cxCheckBox, dxSkinsCore, StrUtils,
	dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxProgressBar,
  cxRadioGroup, cxSpinEdit, dxSkinOffice2010Blue, cxGridBandedTableView, AdvGlowButton,
  dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver, cxTimeEdit,
  dxScrollbarAnnotations;

type
  TAdrLst = record
		City: string;
    Ward: string;
	end;
	
type
	TAreaTimeCall = record
		Time : TStringList;
		FCall: TStringList;
		CCall: TStringList;
		QCall: TStringList;
		TCall: TStringList;
	end;

type
  TFrm_STT = class(TForm)
    lblSosokNameA1: TcxLabel;
    cxGridA1: TcxGrid;
    cxViewKey: TcxGridDBTableView;
    cxColViewKeyColumn1: TcxGridDBColumn;
    cxColViewKeyColumn2: TcxGridDBColumn;
    cxLevelKey: TcxGridLevel;
    pop_dateA1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
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
    dlgSave: TSaveDialog;
    pmExcelA1: TPopupMenu;
    mniN1: TMenuItem;
    btnSearchA1: TcxButton;
    btnExcelA1: TcxButton;
    PnlMainA1: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxLabel218: TcxLabel;
    cxLabel31: TcxLabel;
    Shape6: TShape;
    cbKeynumber01: TcxComboBox;
    cbA1: TcxComboBox;
    cxGridA1ChartView1: TcxGridChartView;
    cxGridA1ChartView1Series1: TcxGridChartSeries;
    cxGridA1ChartView1Series2: TcxGridChartSeries;
    cxGridA1ChartView1Series3: TcxGridChartSeries;
    cxGridA1ChartView1Series4: TcxGridChartSeries;
    pnlChartA1: TPanel;
    AdvSplitter1: TAdvSplitter;
    cxGridA1C1Level1: TcxGridLevel;
    cxGridA1C1: TcxGrid;
    cxGridA1C1ChartView1: TcxGridChartView;
    cxGridA1C1ChartView1Series1: TcxGridChartSeries;
    cbChartKindA1: TcxComboBox;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    btnChartA1: TcxButton;
    cbKindA1: TcxComboBox;
    cxGridA1C2: TcxGrid;
    cxGridA1C2ChartALL: TcxGridChartView;
    cxGridA1C2ChartSeries1: TcxGridChartSeries;
    cxGridA1C2ChartSeries2: TcxGridChartSeries;
    cxGridLevel1: TcxGridLevel;
    cxGridA1C2ChartSeries3: TcxGridChartSeries;
    cxGridA1C2ChartSeries4: TcxGridChartSeries;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    pnlChartA2: TPanel;
    cxGridA2C1: TcxGrid;
    cxGridA2C1ChartView1: TcxGridChartView;
    cxGridA2C1ChartView1Series1: TcxGridChartSeries;
    cxGridA2C1Level1: TcxGridLevel;
    Panel3: TPanel;
    cbChartKindA2: TcxComboBox;
    btnChartA2: TcxButton;
    cbKindA2: TcxComboBox;
    cbKindA21: TcxComboBox;
    cxGridA2C2: TcxGrid;
    cxGridA2C2ChartALL: TcxGridChartView;
    cxGridA2C2ChartSeries1: TcxGridChartSeries;
		cxGridA2C2ChartSeries2: TcxGridChartSeries;
    cxGridA2C2ChartSeries3: TcxGridChartSeries;
    cxGridA2C2ChartSeries4: TcxGridChartSeries;
    cxGridLevel2: TcxGridLevel;
    PnlMainA2: TPanel;
    Shape7: TShape;
    cxGroupBox2: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    btnExcelA2: TcxButton;
    btnSearchA2: TcxButton;
    edtWorkerSearchValue: TcxTextEdit;
    lblSosokNameA2: TcxLabel;
    cbbWorkerSearchType: TcxComboBox;
    AdvSplitter2: TAdvSplitter;
    pnlChartA3: TPanel;
    cxGridA3C2: TcxGrid;
    cxGridA3C2ChartALL: TcxGridChartView;
    cxGridA3C2ChartALLSeries1: TcxGridChartSeries;
    cxGridA3C2ChartALLSeries2: TcxGridChartSeries;
    cxGridA3C2ChartALLSeries3: TcxGridChartSeries;
    cxGridA3C2ChartALLSeries4: TcxGridChartSeries;
    cxGridA3C2ChartALLSeries5: TcxGridChartSeries;
    cxGridA3C2ChartALLSeries6: TcxGridChartSeries;
    cxGridA3C2ChartALLSeries7: TcxGridChartSeries;
    cxGrid1Level1: TcxGridLevel;
    Panel6: TPanel;
    cbChartKindA3: TcxComboBox;
    btnChartA3: TcxButton;
    cbKindA3: TcxComboBox;
    cxGridA3C1: TcxGrid;
    cxGridA3C1ChartView1: TcxGridChartView;
    cxGridA3C1ChartView1Series1: TcxGridChartSeries;
    cxGridLevel3: TcxGridLevel;
    PnlMainA3: TPanel;
    Shape12: TShape;
    cxGroupBox3: TcxGroupBox;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    lblSosokNameA3: TcxLabel;
    btnSearchA3: TcxButton;
    btnExcelA3: TcxButton;
    edtA3: TcxTextEdit;
    cxGridA3: TcxGrid;
    cxGridA3View1: TcxGridDBTableView;
    asg1: TcxGridDBColumn;
    asg2: TcxGridDBColumn;
    asg3: TcxGridDBColumn;
    asg4: TcxGridDBColumn;
    asg5: TcxGridDBColumn;
    asg6: TcxGridDBColumn;
    asg7: TcxGridDBColumn;
    asg8: TcxGridDBColumn;
    asg9: TcxGridDBColumn;
    asgView1Column1: TcxGridDBColumn;
    cxLevel1: TcxGridLevel;
    AdvSplitter3: TAdvSplitter;
    AdvSplitter4: TAdvSplitter;
    pnlChartA4: TPanel;
    cxGridA4C1: TcxGrid;
    cxGridA4C1ChartView1: TcxGridChartView;
    cxGridA4C1ChartView1Series1: TcxGridChartSeries;
    cxGridA4C1ChartView1Series2: TcxGridChartSeries;
    cxGridA4C1ChartView1Series3: TcxGridChartSeries;
    cxGridA4C1Level1: TcxGridLevel;
    Panel7: TPanel;
    cbChartKindA4: TcxComboBox;
    btnChartA4: TcxButton;
    cbKindA4: TcxComboBox;
    PnlMainA4: TPanel;
    Shape16: TShape;
    cxGridA4: TcxGrid;
    cxGridA4View1: TcxGridDBTableView;
    asg10: TcxGridDBColumn;
    asg11: TcxGridDBColumn;
    asg12: TcxGridDBColumn;
    asg13: TcxGridDBColumn;
    asg14: TcxGridDBColumn;
    asgView2Column1: TcxGridDBColumn;
    asgView2Column2: TcxGridDBColumn;
    cxGridA4View1Column1: TcxGridDBColumn;
    cxLevel2: TcxGridLevel;
    cxGroupBox4: TcxGroupBox;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    btnDateA4: TcxButton;
    btnSearchA4: TcxButton;
    btnExcelA4: TcxButton;
    cbbA4: TcxComboBox;
    cbb3: TcxComboBox;
    cxDtEndA4: TcxDateEdit;
    cxDtStartA4: TcxDateEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    edtA4: TcxTextEdit;
    PnlMain: TPanel;
    Shape20: TShape;
    cxGroupBox5: TcxGroupBox;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    lblSosokNameA5: TcxLabel;
    btnSearchA5: TcxButton;
    btnExcelA5: TcxButton;
    btnDateA5: TcxButton;
    cbbA5: TcxComboBox;
    cbb1A5: TcxComboBox;
    cxDtEndA5: TcxDateEdit;
    cxDtStartA5: TcxDateEdit;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    edtA5: TcxTextEdit;
    cxGroupBox6: TcxGroupBox;
    cxLabel22: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxGridA5: TcxGrid;
    cxGridA5View1: TcxGridDBTableView;
    cxGridA5View1Column1: TcxGridDBColumn;
    cxGridA5View1Column2: TcxGridDBColumn;
    cxGridA5View1Column3: TcxGridDBColumn;
    cxGridA5View1Column4: TcxGridDBColumn;
    cxGridA5View1Column5: TcxGridDBColumn;
    cxGridA5View1Column6: TcxGridDBColumn;
    cxGridA5View1Column7: TcxGridDBColumn;
    cxGridA5View1Column8: TcxGridDBColumn;
    cxGridA5View1Column9: TcxGridDBColumn;
    cxGridA5View1Column10: TcxGridDBColumn;
    cxGridA5View1Column11: TcxGridDBColumn;
    cxLevel3: TcxGridLevel;
    AdvSplitter5: TAdvSplitter;
    pnlChartA6: TPanel;
    cxGridA6C1: TcxGrid;
    cxGridA6C1ChartView1: TcxGridChartView;
    cxGridA6C1ChartView1Series1: TcxGridChartSeries;
    cxGridA6C1Level1: TcxGridLevel;
    Panel9: TPanel;
    cbChartKindA6: TcxComboBox;
    btnChartA6: TcxButton;
    cbKindA6: TcxComboBox;
    cxGridA6C2: TcxGrid;
    cxGridA6C2ChartALL: TcxGridChartView;
    cxGridA6C2ChartALLSeries1: TcxGridChartSeries;
    cxGridA6C2ChartALLSeries2: TcxGridChartSeries;
    cxGridA6C2ChartALLSeries3: TcxGridChartSeries;
    cxGridA6C2ChartALLSeries4: TcxGridChartSeries;
    cxGridA6C2ChartALLSeries5: TcxGridChartSeries;
    cxGridLevel4: TcxGridLevel;
    PnlMainA6: TPanel;
    Shape25: TShape;
    cxGroupBox7: TcxGroupBox;
    cxLabel30: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    btnDateA6: TcxButton;
    cbb1A6: TcxComboBox;
    cbb2A6: TcxComboBox;
    cbbA6: TcxComboBox;
    cxDtStartA6: TcxDateEdit;
    cxDtEndA6: TcxDateEdit;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    btnSearchA6: TcxButton;
    btnExcelA6: TcxButton;
    cxGridA6: TcxGrid;
    cxcxGridA6View1: TcxGridDBTableView;
    asg30: TcxGridDBColumn;
    asg31: TcxGridDBColumn;
    asg32: TcxGridDBColumn;
    asg33: TcxGridDBColumn;
    asg34: TcxGridDBColumn;
    asg35: TcxGridDBColumn;
    asg36: TcxGridDBColumn;
    asg37: TcxGridDBColumn;
    cxLevel4: TcxGridLevel;
    AdvSplitter6: TAdvSplitter;
    pnlChartA7: TPanel;
    cxGridA7C2: TcxGrid;
    cxGridA7C2ChartALL: TcxGridChartView;
    cxGridA7C2ChartALLSeries1: TcxGridChartSeries;
    cxGridA7C2ChartALLSeries2: TcxGridChartSeries;
    cxGridLevel5: TcxGridLevel;
    Panel11: TPanel;
    cbChartKindA7: TcxComboBox;
    btnChartA7: TcxButton;
    PnlMainA7: TPanel;
    Shape32: TShape;
    cxGroupBox8: TcxGroupBox;
    btnDateA7: TcxButton;
    cxDtStartA7: TcxDateEdit;
    cxDtEndA7: TcxDateEdit;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    btnSearchA7: TcxButton;
    btnExcelA7: TcxButton;
    cxLabel42: TcxLabel;
    cbbA7: TcxComboBox;
    cxLabel43: TcxLabel;
    cxGridA7: TcxGrid;
    cxGrid_NewCust: TcxGridDBTableView;
    cxGrid_NewCustColumn1: TcxGridDBColumn;
    cxGrid_NewCustColumn2: TcxGridDBColumn;
    cxGrid_NewCustColumn3: TcxGridDBColumn;
    cxGrid_NewCustColumn4: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    AdvSplitter7: TAdvSplitter;
    pnlChartA8: TPanel;
    cxGridA8C1: TcxGrid;
    cxGridA8C1ChartView1: TcxGridChartView;
    cxGridA8C1ChartView1Series1: TcxGridChartSeries;
    cxGridA8C1Level1: TcxGridLevel;
    Panel13: TPanel;
    cbChartKindA8: TcxComboBox;
    btnChartA8: TcxButton;
    cbKindA8: TcxComboBox;
    cxGridA8C2: TcxGrid;
    cxGridA8C2ChartALL: TcxGridChartView;
    cxGridA8C2ChartSeries1: TcxGridChartSeries;
    cxGridA8C2ChartSeries2: TcxGridChartSeries;
    cxGridA8C2ChartSeries3: TcxGridChartSeries;
    cxGridLevel7: TcxGridLevel;
    PnlMainA8: TPanel;
    Shape37: TShape;
    cxGroupBox9: TcxGroupBox;
    btnDateA8: TcxButton;
    cxDtStartA8: TcxDateEdit;
    cxDtEndA8: TcxDateEdit;
    cxLabel46: TcxLabel;
    cxLabel47: TcxLabel;
    btnSearchA8: TcxButton;
    btnExcelA8: TcxButton;
    cxLabel48: TcxLabel;
    cbbA8: TcxComboBox;
    cxLabel49: TcxLabel;
    cxGridA8: TcxGrid;
		cxGrid_OrderTimeList: TcxGridDBTableView;
    cxGrid_OrderTimeListColumn1: TcxGridDBColumn;
    cxGrid_OrderTimeListColumn2: TcxGridDBColumn;
    cxGrid_OrderTimeListColumn3: TcxGridDBColumn;
    cxGrid_OrderTimeListColumn4: TcxGridDBColumn;
    cxGrid_OrderTimeListColumn5: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    AdvSplitter8: TAdvSplitter;
    pnlChartA9: TPanel;
    cxGridA9C1: TcxGrid;
    cxGridA9C1ChartView1: TcxGridChartView;
    cxGridA9C1ChartView1Series1: TcxGridChartSeries;
    cxGridA9C1Level1: TcxGridLevel;
    Panel15: TPanel;
    cbChartKindA9: TcxComboBox;
    btnChartA9: TcxButton;
    cbKindA9: TcxComboBox;
    cxGridA9C2: TcxGrid;
    cxGridA9C2ChartALL: TcxGridChartView;
    cxGridA9C2ChartSeries1: TcxGridChartSeries;
    cxGridA9C2ChartSeries2: TcxGridChartSeries;
    cxGridA9C2ChartSeries3: TcxGridChartSeries;
    cxGridLevel9: TcxGridLevel;
    PnlMainA9: TPanel;
    Shape42: TShape;
    cxGroupBox10: TcxGroupBox;
    btnDateA9: TcxButton;
    cxDtStartA9: TcxDateEdit;
    cxDtEndA9: TcxDateEdit;
    cxLabel52: TcxLabel;
    cxLabel53: TcxLabel;
    btnSearchA9: TcxButton;
    btnExcelA9: TcxButton;
    cxLabel54: TcxLabel;
    cbbA9: TcxComboBox;
    cxLabel55: TcxLabel;
    cxGridA9: TcxGrid;
    cxGrid_OrderDayList: TcxGridDBTableView;
    cxGrid_OrderDayListColumn1: TcxGridDBColumn;
    cxGrid_OrderDayListColumn2: TcxGridDBColumn;
    cxGrid_OrderDayListColumn3: TcxGridDBColumn;
    cxGrid_OrderDayListColumn4: TcxGridDBColumn;
    cxGrid_OrderDayListColumn5: TcxGridDBColumn;
    cxGrid_OrderDayListColumn6: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    AdvSplitter9: TAdvSplitter;
    pnlChartA10: TPanel;
    cxGridA10C1: TcxGrid;
    cxGridA10C1ChartView1: TcxGridChartView;
    cxGridA10C1ChartView1Series1: TcxGridChartSeries;
    cxGridA10C1Level1: TcxGridLevel;
    Panel17: TPanel;
    cbChartKindA10: TcxComboBox;
    btnChartA10: TcxButton;
    cbKindA10: TcxComboBox;
    cxGridA10C2: TcxGrid;
    cxGridA10C2ChartALL: TcxGridChartView;
    cxGridA10C2ChartSeries1: TcxGridChartSeries;
    cxGridA10C2ChartSeries2: TcxGridChartSeries;
    cxGridA10C2ChartSeries3: TcxGridChartSeries;
    cxGridA10C2ChartSeries4: TcxGridChartSeries;
    cxGridA10C2Level1: TcxGridLevel;
    PnlMainA10: TPanel;
    Shape47: TShape;
    cxGroupBox11: TcxGroupBox;
    btnDateA10: TcxButton;
    cxDtStartA10: TcxDateEdit;
    cxDtEndA10: TcxDateEdit;
    cxLabel58: TcxLabel;
    cxLabel59: TcxLabel;
    btnSearchA10: TcxButton;
    btnExcelA10: TcxButton;
    cxLabel60: TcxLabel;
    cbbA10: TcxComboBox;
    cxLabel61: TcxLabel;
    cxGridA10: TcxGrid;
    cxGrid_NewOrderDayList: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGrid_OrderDayListColumn7: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel12: TcxGridLevel;
    cxTabSheet11: TcxTabSheet;
    AdvSplitter10: TAdvSplitter;
    pnlChartA11: TPanel;
    Panel4: TPanel;
    cbChartKindA11: TcxComboBox;
    btnChartA11: TcxButton;
    cbKindA11: TcxComboBox;
    cxGridA11C2: TcxGrid;
    cxGridA11C2ChartALL: TcxGridChartView;
    cxGridA11C2Level1: TcxGridLevel;
    PnlMainA11: TPanel;
    Shape52: TShape;
    cxGroupBox12: TcxGroupBox;
    cxLabel63: TcxLabel;
    lblSosokNameA11: TcxLabel;
    btnSearchA11: TcxButton;
    btnExcelA11: TcxButton;
    cxGridA11: TcxGrid;
    cxGrid_CancelList: TcxGridDBTableView;
    cxGrid_CancelListColumn0: TcxGridDBColumn;
    cxGrid_CancelListColumn1: TcxGridDBColumn;
    cxGrid_CancelListColumn2: TcxGridDBColumn;
    cxGrid_CancelListColumn3: TcxGridDBColumn;
    cxGrid_CancelListColumn4: TcxGridDBColumn;
    cxGridLevel15: TcxGridLevel;
    cxGroupBox13: TcxGroupBox;
    cxRBA11_1: TcxRadioButton;
    cxRBA11_2: TcxRadioButton;
    cxRBA11_3: TcxRadioButton;
    cxGrid_CancelListColumn5: TcxGridDBColumn;
    cxGrid_CancelListColumn6: TcxGridDBColumn;
    cxGrid_CancelListColumn7: TcxGridDBColumn;
    cxGrid_CancelListColumn8: TcxGridDBColumn;
    cxGrid_CancelListColumn9: TcxGridDBColumn;
    cxGrid_CancelListColumn10: TcxGridDBColumn;
    cxGrid_CancelListColumn11: TcxGridDBColumn;
    cxGrid_CancelListColumn12: TcxGridDBColumn;
    cxGrid_CancelListColumn13: TcxGridDBColumn;
    cxLabel64: TcxLabel;
    cbKeynumber11: TcxComboBox;
    pnl_Day: TPanel;
    btnDateA11: TcxButton;
    cxDtStartA11: TcxDateEdit;
    cxDtEndA11: TcxDateEdit;
    cxLabel65: TcxLabel;
    cxLabel66: TcxLabel;
    cxLabel67: TcxLabel;
    pnl_Month: TPanel;
    cxLabel71: TcxLabel;
    cxSYYA11: TcxSpinEdit;
    cxSMMA11: TcxSpinEdit;
    cxLabel72: TcxLabel;
    cxEYYA11: TcxSpinEdit;
    cxEMMA11: TcxSpinEdit;
    cxGrid_CancelListColumn14: TcxGridDBColumn;
    cxBrNo11: TcxTextEdit;
    cxHdNo11: TcxTextEdit;
    cxGrid_CancelListColumn15: TcxGridDBColumn;
    cxGrid_CancelListColumn16: TcxGridDBColumn;
    cxGrid_CancelListColumn17: TcxGridDBColumn;
    cxGrid_CancelListColumn18: TcxGridDBColumn;
    cxGrid_CancelListColumn19: TcxGridDBColumn;
    cxGrid_CancelListColumn20: TcxGridDBColumn;
    cxGrid_CancelListColumn21: TcxGridDBColumn;
    cxGrid_CancelListColumn22: TcxGridDBColumn;
    cxGrid_CancelListColumn23: TcxGridDBColumn;
    cxGrid_CancelListColumn24: TcxGridDBColumn;
    cxGridA11C2ChartALLSeries1: TcxGridChartSeries;
    cxGridA11C2ChartALLSeries2: TcxGridChartSeries;
    cxGridA11C2ChartALLSeries3: TcxGridChartSeries;
    cxGridA11C2ChartALLSeries4: TcxGridChartSeries;
    cxGridA11C2ChartALLSeries5: TcxGridChartSeries;
    cxGridA11C2ChartALLSeries6: TcxGridChartSeries;
    cxGridA11C2ChartALLSeries7: TcxGridChartSeries;
    cxGridA11C2ChartALLSeries8: TcxGridChartSeries;
    cxGridA11C2ChartALLSeries9: TcxGridChartSeries;
    cxGridA11C2ChartALLSeries10: TcxGridChartSeries;
    cxGridA11C2ChartALLSeries11: TcxGridChartSeries;
    cxGridA11C1: TcxGrid;
    cxGridA11C1ChartView1: TcxGridChartView;
    cxGridA11C1ChartView1Series1: TcxGridChartSeries;
    cxGridA11C1Level1: TcxGridLevel;
    cxGridA1C2ChartSeries5: TcxGridChartSeries;
    cxGridA1C2ChartSeries6: TcxGridChartSeries;
    cxGridA1C2ChartSeries7: TcxGridChartSeries;
    cxGridA1C2ChartSeries8: TcxGridChartSeries;
    cxSTTStyle: TcxStyleRepository;
    cxSTT_Field1: TcxStyle;
    cxSTT_Field2: TcxStyle;
    cxSTT_Field3: TcxStyle;
    cxSTT_Field4: TcxStyle;
    cxSTT_Field5: TcxStyle;
    cxSTT_Field6: TcxStyle;
    cxSTT_Field7: TcxStyle;
    cxSTT_Field8: TcxStyle;
    cxSTT_Field9: TcxStyle;
    cxSTT_Field10: TcxStyle;
    cxSTT_Field11: TcxStyle;
    cxSTT_Field12: TcxStyle;
    empty1: TcxStyle;
    empty2: TcxStyle;
    empty3: TcxStyle;
    empty4: TcxStyle;
    empty5: TcxStyle;
    cxSTTChart: TcxStyle;
    cxStyleBasic: TcxStyle;
    cxSTTChartGridLine: TcxStyle;
    cxStyleSmartPeek2: TcxStyle;
    cxStyleSmartPeek3: TcxStyle;
    cxStyleSaturday: TcxStyle;
    cxStyleSunDay: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxGridA7C2ChartALLSeries3: TcxGridChartSeries;
    cbKindA7: TcxComboBox;
    cxGridA7C1: TcxGrid;
    cxGridA7C1ChartView1: TcxGridChartView;
    cxGridLevel11: TcxGridLevel;
    cxGridA8C2ChartSeries4: TcxGridChartSeries;
    cxGridA9C2ChartSeries4: TcxGridChartSeries;
    cxGridA10C2ChartSeries5: TcxGridChartSeries;
    Timer1: TTimer;
    pnl_MonthA1: TPanel;
    cxLabel68: TcxLabel;
    cxSYYA1: TcxSpinEdit;
    cxSMMA1: TcxSpinEdit;
    cxLabel69: TcxLabel;
    cxEYYA1: TcxSpinEdit;
    cxEMMA1: TcxSpinEdit;
    pnl_DayA1: TPanel;
    btnDateA1: TcxButton;
    cxDtStartA1: TcxDateEdit;
    cxDtEndA1: TcxDateEdit;
    cxLabel70: TcxLabel;
    cxLabel73: TcxLabel;
    cxLabel74: TcxLabel;
		cxViewKeyColumn1: TcxGridDBColumn;
    cbA2: TcxComboBox;
    pnl_MonthA2: TPanel;
    cxLabel9: TcxLabel;
    cxSYYA2: TcxSpinEdit;
    cxSMMA2: TcxSpinEdit;
    cxLabel10: TcxLabel;
    cxEYYA2: TcxSpinEdit;
    cxEMMA2: TcxSpinEdit;
    pnl_DayA2: TPanel;
    btnDateA2: TcxButton;
    cxDtStartA2: TcxDateEdit;
    cxDtEndA2: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxGridA7C1ChartView1Series1: TcxGridChartSeries;
    cxGridA2C1ChartView1Series2: TcxGridChartSeries;
    cxLabel33: TcxLabel;
    cxGridA4C2: TcxGrid;
    cxGridA4C2ChartALL: TcxGridChartView;
    cxGridA4C2ChartALLSeries1: TcxGridChartSeries;
    cxGridA4C2ChartALLSeries2: TcxGridChartSeries;
    cxGridA4C2ChartALLSeries3: TcxGridChartSeries;
    cxGridA4C2Level1: TcxGridLevel;
    cxGridA4C2ChartALLSeries4: TcxGridChartSeries;
    cxGridA4C2ChartALLSeries5: TcxGridChartSeries;
    cxGridA4C2ChartALLSeries6: TcxGridChartSeries;
    cxGridA4C2ChartALLSeries7: TcxGridChartSeries;
    cxGridA4C2ChartALLSeries8: TcxGridChartSeries;
    cxGridA4C2ChartALLSeries9: TcxGridChartSeries;
    AdvSplitter11: TAdvSplitter;
    Panel2: TPanel;
    cxGridA5C2: TcxGrid;
    cxGridA5C2ChartALL: TcxGridChartView;
    cxGridA5C2Level1: TcxGridLevel;
    cxGridA5C1: TcxGrid;
    cxGridA5C1ChartView1: TcxGridChartView;
    cxGridA5C1Level1: TcxGridLevel;
    Panel5: TPanel;
    cbChartKindA5: TcxComboBox;
    btnChartA5: TcxButton;
    cbKindA5: TcxComboBox;
    cbKindA51: TcxComboBox;
    cxGridA5View1Column12: TcxGridDBColumn;
    cxGridA5View1Column13: TcxGridDBColumn;
    cxGridA5View1Column14: TcxGridDBColumn;
    cxGridA5View1Column15: TcxGridDBColumn;
    cxGridA5View1Column16: TcxGridDBColumn;
    cxGridA5View1Column17: TcxGridDBColumn;
    cxGridA5View1Column18: TcxGridDBColumn;
    cxGridA5View1Column19: TcxGridDBColumn;
    cxGridA5View1Column20: TcxGridDBColumn;
    cxGridA5View1Column21: TcxGridDBColumn;
    cxGridA5View1Column22: TcxGridDBColumn;
    cxGridA5View1Column23: TcxGridDBColumn;
    cxGridA5C2ChartALLSeries1: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries2: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries3: TcxGridChartSeries;
		cxGridA5C2ChartALLSeries4: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries5: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries6: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries7: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries8: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries9: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries10: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries11: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries12: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries13: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries14: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries15: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries16: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries17: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries18: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries19: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries20: TcxGridChartSeries;
    cxGridA5C2ChartALLSeries21: TcxGridChartSeries;
    cxGridA5C1ChartView1Series1: TcxGridChartSeries;
    cxGridA5C1ChartView1Series2: TcxGridChartSeries;
    cxGridA5C1ChartView1Series3: TcxGridChartSeries;
    cxLabel29: TcxLabel;
    cxTabSheet12: TcxTabSheet;
    PnlMainA12: TPanel;
    Shape26: TShape;
    cxGroupBox14: TcxGroupBox;
    cxLabel39: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel51: TcxLabel;
    cxLabel57: TcxLabel;
    cxButton1: TcxButton;
    cbb1A12: TcxComboBox;
    cbb2A12: TcxComboBox;
		cbbA12: TcxComboBox;
    cxDtStartA12: TcxDateEdit;
    cxDtEndA12: TcxDateEdit;
    cxLabel75: TcxLabel;
		cxLabel76: TcxLabel;
    btnSearchA12: TcxButton;
    btnExcelA12: TcxButton;
    cbA12: TcxComboBox;
    cxLabel78: TcxLabel;
    Panel8: TPanel;
		cxGridA12C1: TcxGrid;
    cxGridA12C1ChartView1: TcxGridChartView;
    cxGridA12C1Level1: TcxGridLevel;
    Panel10: TPanel;
    cbChartKindA12: TcxComboBox;
    btnChartA12: TcxButton;
		cbKindA12: TcxComboBox;
    cxGridA12C2: TcxGrid;
		cxGridA12C2ChartALL: TcxGridChartView;
		cxGridA12C2Level1: TcxGridLevel;
    AdvSplitter12: TAdvSplitter;
    cbA12_1: TcxComboBox;
    cxGridA12C2ChartALLSeries2: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries3: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries4: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries1: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries5: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries7: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries8: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries9: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries6: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries10: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries12: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries13: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries14: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries11: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries15: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries17: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries18: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries19: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries16: TcxGridChartSeries;
		cxGridA12C2ChartALLSeries20: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries22: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries23: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries24: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries21: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries25: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries27: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries28: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries29: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries26: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries30: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries32: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries33: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries34: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries31: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries36: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries37: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries38: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries39: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries35: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries41: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries42: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries43: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries44: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries40: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries45: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries47: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries48: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries49: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries46: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries50: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries52: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries53: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries54: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries51: TcxGridChartSeries;
    cxGridA12C2ChartALLSeries55: TcxGridChartSeries;
    cxGridA12C1ChartView1Series1: TcxGridChartSeries;
		cxGridA12C1ChartView1Series2: TcxGridChartSeries;
    cxGridA12C1ChartView1Series3: TcxGridChartSeries;
    cxGridA12C1ChartView1Series4: TcxGridChartSeries;
    cxTabSheet13: TcxTabSheet;
    PnlMainA13: TPanel;
    Shape61: TShape;
    cxGroupBox15: TcxGroupBox;
    cxLabel79: TcxLabel;
    cxLabel82: TcxLabel;
    cxButton2: TcxButton;
    cbbA13: TcxComboBox;
    cxDtStartA13: TcxDateEdit;
    cxDtEndA13: TcxDateEdit;
    cxLabel83: TcxLabel;
    cxLabel84: TcxLabel;
    btnSearchA13: TcxButton;
    btnExcelA13: TcxButton;
    cxGridA13: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridLevel14: TcxGridLevel;
    Panel14: TPanel;
    cxGridA13C1: TcxGrid;
		cxGridA13C1ChartView1: TcxGridChartView;
    cxGridA13C1Level1: TcxGridLevel;
    Panel16: TPanel;
    cbChartKindA13: TcxComboBox;
    btnChartA13: TcxButton;
    cbKindA13: TcxComboBox;
    cxGridA13C2: TcxGrid;
    cxGridA13C2ChartALL: TcxGridChartView;
    cxGridA13C2Level1: TcxGridLevel;
    AdvSplitter13: TAdvSplitter;
    cbA13: TcxComboBox;
		cxGridDBTableView13Column0: TcxGridDBColumn;
    cxGridDBTableView13Column1: TcxGridDBColumn;
    cxGridDBTableView13Column2: TcxGridDBColumn;
    cxGridDBTableView13Column3: TcxGridDBColumn;
		cxGridDBTableView13Column4: TcxGridDBColumn;
    cxGridDBTableView13Column5: TcxGridDBColumn;
    cxGridDBTableView13Column6: TcxGridDBColumn;
    cxGridDBTableView13Column7: TcxGridDBColumn;
    cxGridDBTableView13Column8: TcxGridDBColumn;
    cxGridDBTableView13Column9: TcxGridDBColumn;
    cxGridDBTableView13Column10: TcxGridDBColumn;
    cxGridDBTableView13Column11: TcxGridDBColumn;
		cxGridA13C2ChartALLSeries4: TcxGridChartSeries;
    cxGridA13C2ChartALLSeries1: TcxGridChartSeries;
    cxGridA13C2ChartALLSeries2: TcxGridChartSeries;
    cxGridA13C2ChartALLSeries3: TcxGridChartSeries;
    cxTabSheet14: TcxTabSheet;
    PnlMainA14: TPanel;
    Shape63: TShape;
    cxGroupBox16: TcxGroupBox;
    cxLabel80: TcxLabel;
    cbbA14: TcxComboBox;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxGridA14: TcxGrid;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridLevel16: TcxGridLevel;
    Panel18: TPanel;
    cxGrid2: TcxGrid;
    cxGridChartView1: TcxGridChartView;
    cxGridChartSeries6: TcxGridChartSeries;
    cxGridChartSeries7: TcxGridChartSeries;
    cxGridChartSeries8: TcxGridChartSeries;
    cxGridChartSeries9: TcxGridChartSeries;
    cxGridChartSeries10: TcxGridChartSeries;
    cxGridLevel17: TcxGridLevel;
    Panel19: TPanel;
    cxComboBox3: TcxComboBox;
    cxButton6: TcxButton;
    cxComboBox4: TcxComboBox;
    cxGrid3: TcxGrid;
		cxGridChartView2: TcxGridChartView;
    cxGridChartSeries11: TcxGridChartSeries;
    cxGridChartSeries12: TcxGridChartSeries;
    cxGridChartSeries13: TcxGridChartSeries;
    cxGridChartSeries14: TcxGridChartSeries;
    cxGridLevel18: TcxGridLevel;
    AdvSplitter14: TAdvSplitter;
    cxLabel89: TcxLabel;
    cxLabel81: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxGridDBTableView14Column0: TcxGridDBColumn;
    cxGridDBTableView14Column1: TcxGridDBColumn;
    cxGridDBTableView14Column2: TcxGridDBColumn;
    cxGridDBTableView14Column3: TcxGridDBColumn;
    cxGridDBTableView14Column4: TcxGridDBColumn;
    cxGridDBTableView14Column5: TcxGridDBColumn;
    cxGridDBTableView14Column6: TcxGridDBColumn;
    cxGridDBTableView14Column7: TcxGridDBColumn;
    cxGridDBTableView14Column8: TcxGridDBColumn;
    cxGridDBTableView14Column9: TcxGridDBColumn;
    cxGridDBTableView14Column10: TcxGridDBColumn;
    cxGridDBTableView14Column11: TcxGridDBColumn;
    cxGridDBTableView14Column12: TcxGridDBColumn;
    cxGridDBTableView14Column13: TcxGridDBColumn;
    cxLabel85: TcxLabel;
    cbKindA12_1: TcxComboBox;
    cxGridA12: TcxGrid;
    cxGridBandedTableView12: TcxGridBandedTableView;
		cxGridBandedTableView12Column0: TcxGridBandedColumn;
    cxGridBandedTableView12Column1: TcxGridBandedColumn;
    cxGridBandedTableView12Column2: TcxGridBandedColumn;
    cxGridBandedTableView12Column3: TcxGridBandedColumn;
		cxGridBandedTableView12Column4: TcxGridBandedColumn;
    cxGridBandedTableView12Column5: TcxGridBandedColumn;
    cxGridBandedTableView12Column6: TcxGridBandedColumn;
    cxGridBandedTableView12Column7: TcxGridBandedColumn;
    cxGridBandedTableView12Column9: TcxGridBandedColumn;
		cxGridBandedTableView12Column10: TcxGridBandedColumn;
    cxGridBandedTableView12Column11: TcxGridBandedColumn;
    cxGridBandedTableView12Column12: TcxGridBandedColumn;
    cxGridBandedTableView12Column13: TcxGridBandedColumn;
    cxGridBandedTableView12Column15: TcxGridBandedColumn;
    cxGridBandedTableView12Column16: TcxGridBandedColumn;
    cxGridBandedTableView12Column17: TcxGridBandedColumn;
    cxGridBandedTableView12Column18: TcxGridBandedColumn;
    cxGridBandedTableView12Column19: TcxGridBandedColumn;
    cxGridBandedTableView12Column21: TcxGridBandedColumn;
    cxGridBandedTableView12Column22: TcxGridBandedColumn;
    cxGridBandedTableView12Column23: TcxGridBandedColumn;
    cxGridBandedTableView12Column24: TcxGridBandedColumn;
    cxGridBandedTableView12Column25: TcxGridBandedColumn;
    cxGridBandedTableView12Column27: TcxGridBandedColumn;
    cxGridBandedTableView12Column28: TcxGridBandedColumn;
    cxGridBandedTableView12Column29: TcxGridBandedColumn;
    cxGridBandedTableView12Column30: TcxGridBandedColumn;
    cxGridBandedTableView12Column34: TcxGridBandedColumn;
    cxGridBandedTableView12Column46: TcxGridBandedColumn;
    cxGridBandedTableView12Column31: TcxGridBandedColumn;
    cxGridBandedTableView12Column33: TcxGridBandedColumn;
    cxGridBandedTableView12Column35: TcxGridBandedColumn;
    cxGridBandedTableView12Column36: TcxGridBandedColumn;
    cxGridBandedTableView12Column37: TcxGridBandedColumn;
    cxGridBandedTableView12Column39: TcxGridBandedColumn;
    cxGridBandedTableView12Column40: TcxGridBandedColumn;
    cxGridBandedTableView12Column41: TcxGridBandedColumn;
    cxGridBandedTableView12Column42: TcxGridBandedColumn;
    cxGridBandedTableView12Column43: TcxGridBandedColumn;
    cxGridBandedTableView12Column45: TcxGridBandedColumn;
    cxGridBandedTableView12Column47: TcxGridBandedColumn;
    cxGridBandedTableView12Column48: TcxGridBandedColumn;
    cxGridBandedTableView12Column49: TcxGridBandedColumn;
    cxGridBandedTableView12Column51: TcxGridBandedColumn;
    cxGridLevel13: TcxGridLevel;
    cxGridBandedTableView12Column52: TcxGridBandedColumn;
		cxGridBandedTableView12Column53: TcxGridBandedColumn;
    cxGridBandedTableView12Column54: TcxGridBandedColumn;
    cxGridBandedTableView12Column55: TcxGridBandedColumn;
    cxGridBandedTableView12Column57: TcxGridBandedColumn;
    cxGridBandedTableView12Column58: TcxGridBandedColumn;
    cxGridBandedTableView12Column59: TcxGridBandedColumn;
    cxGridBandedTableView12Column60: TcxGridBandedColumn;
    cxGridBandedTableView12Column61: TcxGridBandedColumn;
    cxGridBandedTableView12Column63: TcxGridBandedColumn;
    cxGridBandedTableView12Column70: TcxGridBandedColumn;
    cxGridBandedTableView12Column71: TcxGridBandedColumn;
    cxGridBandedTableView12Column72: TcxGridBandedColumn;
    cxGridBandedTableView12Column73: TcxGridBandedColumn;
    cxGridBandedTableView12Column75: TcxGridBandedColumn;
    cxGridBandedTableView12Column76: TcxGridBandedColumn;
    cxGridBandedTableView12Column64: TcxGridBandedColumn;
    cxGridBandedTableView12Column65: TcxGridBandedColumn;
    cxGridBandedTableView12Column66: TcxGridBandedColumn;
    cxGridBandedTableView12Column67: TcxGridBandedColumn;
    cxGridBandedTableView12Column69: TcxGridBandedColumn;
    cxGridBandedTableView12Column8: TcxGridBandedColumn;
    cxGridBandedTableView12Column14: TcxGridBandedColumn;
    cxGridBandedTableView12Column20: TcxGridBandedColumn;
    cxGridBandedTableView12Column26: TcxGridBandedColumn;
    cxGridBandedTableView12Column32: TcxGridBandedColumn;
    cxGridBandedTableView12Column38: TcxGridBandedColumn;
    cxGridBandedTableView12Column44: TcxGridBandedColumn;
    cxGridBandedTableView12Column50: TcxGridBandedColumn;
    cxGridBandedTableView12Column56: TcxGridBandedColumn;
    cxGridBandedTableView12Column68: TcxGridBandedColumn;
    cxGridBandedTableView12Column62: TcxGridBandedColumn;
    cxGridBandedTableView12Column74: TcxGridBandedColumn;
		cxGridA13C1ChartView1Series1: TcxGridChartSeries;
    cxGridA13C2ChartALLSeries5: TcxGridChartSeries;
    cb_01: TAdvGlowButton;
    cb_02: TAdvGlowButton;
    cbKindA12_GuDong: TcxComboBox;
		cxStyleGridBG: TcxStyle;
    cbKindA12_Rank: TcxComboBox;
    btnGetList: TcxButton;
    cxGrid_CancelListColumn25: TcxGridDBColumn;
    cxGrid_CancelListColumn26: TcxGridDBColumn;
    cxLabel2: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel38: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel50: TcxLabel;
    cxLabel56: TcxLabel;
    cxLabel62: TcxLabel;
    cxLabel77: TcxLabel;
    cxLabel86: TcxLabel;
    cxLabel87: TcxLabel;
    cxLabel88: TcxLabel;
    cbbA3: TcxComboBox;
    cxGridA2: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
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
    cxGridDBColumn87: TcxGridDBColumn;
		cxGridDBColumn88: TcxGridDBColumn;
    cxGridDBColumn89: TcxGridDBColumn;
    cxGridDBColumn90: TcxGridDBColumn;
    cxViewWorker: TcxGridBandedTableView;
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
    cxGridLevel19: TcxGridLevel;
    cxGridBandedColumn41: TcxGridBandedColumn;
    cxGridBandedColumn42: TcxGridBandedColumn;
    cxGridBandedColumn43: TcxGridBandedColumn;
    cxViewWorkerColumn1: TcxGridBandedColumn;
    cxTabSheet15: TcxTabSheet;
    AdvSplitter15: TAdvSplitter;
    Panel12: TPanel;
    cxGridA15C1: TcxGrid;
    cxGridA15C1ChartView1: TcxGridChartView;
    cxGridA15C1ChartView1Series1: TcxGridChartSeries;
    cxGridA15C1Level1: TcxGridLevel;
    cxGridA15C2: TcxGrid;
    cxGridA15C2ChartALL: TcxGridChartView;
    cxGridA15C2ChartSeries1: TcxGridChartSeries;
    cxGridA15C2ChartSeries2: TcxGridChartSeries;
    cxGridA15C2ChartSeries3: TcxGridChartSeries;
    cxGridA15C2Level1: TcxGridLevel;
    Panel20: TPanel;
    cbChartKindA15: TcxComboBox;
    btnChartA15: TcxButton;
    cbKindA15: TcxComboBox;
		cxLabel90: TcxLabel;
    PnlMainA15: TPanel;
    Shape1: TShape;
    cxGridA15: TcxGrid;
    cxGridA15View1: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel22: TcxGridLevel;
    cxGroupBox17: TcxGroupBox;
    cxLabel91: TcxLabel;
    cxLabel92: TcxLabel;
    btnDateA15: TcxButton;
    btnSearchA15: TcxButton;
    btnExcelA15: TcxButton;
    cbbA15: TcxComboBox;
    cbb15: TcxComboBox;
    cxDtEndA15: TcxDateEdit;
    cxDtStartA15: TcxDateEdit;
    cxLabel93: TcxLabel;
    cxLabel94: TcxLabel;
    edtA15: TcxTextEdit;
    cxGridA15View1Column1: TcxGridDBColumn;
    cxGridA15View1Column2: TcxGridDBColumn;
    cxGridA15View1Column3: TcxGridDBColumn;
    cxGridA15View1Column4: TcxGridDBColumn;
    cxGridA15View1Column5: TcxGridDBColumn;
    cxGridA15View1Column6: TcxGridDBColumn;
    cxGridA15C2ChartSeries4: TcxGridChartSeries;
    cxGridA15C2ChartSeries5: TcxGridChartSeries;
    cxGridA15C2ChartSeries6: TcxGridChartSeries;
    cxGridA15C2ChartSeries7: TcxGridChartSeries;
		cxGridA15C2ChartSeries8: TcxGridChartSeries;
    cxGridA15C2ChartSeries9: TcxGridChartSeries;
    cxGridA15C2ChartSeries10: TcxGridChartSeries;
    cxViewWorkerColumn2: TcxGridBandedColumn;
    cxViewWorkerColumn3: TcxGridBandedColumn;
    cxViewWorkerColumn4: TcxGridBandedColumn;
    cxViewWorkerColumn5: TcxGridBandedColumn;
    cxGridA2C2ChartSeries5: TcxGridChartSeries;
    cxGridA2C2ChartSeries6: TcxGridChartSeries;
    btnChartA1_Next: TcxButton;
		btnChartA1_Previous: TcxButton;
    cxGrid1: TcxGrid;
    cxViewKey_Tmp: TcxGridDBTableView;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridChartView3: TcxGridChartView;
    cxGridChartSeries1: TcxGridChartSeries;
    cxGridChartSeries2: TcxGridChartSeries;
    cxGridChartSeries3: TcxGridChartSeries;
    cxGridChartSeries4: TcxGridChartSeries;
    cxGridLevel20: TcxGridLevel;
    cxViewKey_TmpColumn1: TcxGridDBColumn;
    cxViewKey_TmpColumn2: TcxGridDBColumn;
    cxViewKey_TmpColumn3: TcxGridDBColumn;
    cxViewKey_TmpColumn4: TcxGridDBColumn;
    cxViewKey_TmpColumn5: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSearchA1Click(Sender: TObject);
    procedure MenuItemClick(Sender: TObject);
    procedure btnExcelA1Click(Sender: TObject);
    procedure mniN1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxViewKeyColumnHeaderClick(Sender: TcxGridTableView;
			AColumn: TcxGridColumn);
    procedure cxViewKeyDataControllerSortingChanged(Sender: TObject);
    procedure cxViewKeyTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
		procedure btnChartA1Click(Sender: TObject);
    procedure chkFinishCntPropertiesChange(Sender: TObject);
    procedure cbChartKindPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnChartA2Click(Sender: TObject);
    procedure btnExcelA2Click(Sender: TObject);
    procedure btnSearchA2Click(Sender: TObject);
    procedure cbChartKindA2PropertiesChange(Sender: TObject);
    procedure cbKindA2PropertiesChange(Sender: TObject);
		procedure cxViewWorkerColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxViewWorkerDataControllerSortingChanged(Sender: TObject);
    procedure edtWorkerSearchValueEnter(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
    procedure btnExcelA3Click(Sender: TObject);
    procedure btnChartA3Click(Sender: TObject);
    procedure cbChartKindA3PropertiesChange(Sender: TObject);
    procedure cbKindA3PropertiesChange(Sender: TObject);
    procedure cxGridA3View1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA3View1DataControllerSortingChanged(Sender: TObject);
    procedure btnDateA4Click(Sender: TObject);
    procedure cbChartKindA4PropertiesChange(Sender: TObject);
    procedure cbKindA4PropertiesChange(Sender: TObject);
    procedure cxGridA4View1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA4View1DataControllerSortingChanged(Sender: TObject);
    procedure btnSearchA4Click(Sender: TObject);
    procedure btnExcelA4Click(Sender: TObject);
    procedure btnChartA4Click(Sender: TObject);
    procedure cbbA5PropertiesChange(Sender: TObject);
    procedure cbb1A5PropertiesChange(Sender: TObject);
		procedure cxGridA5View1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA5View1DataControllerSortingChanged(Sender: TObject);
    procedure cxGridA5View1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure btnSearchA5Click(Sender: TObject);
    procedure btnExcelA5Click(Sender: TObject);
    procedure btnSearchA6Click(Sender: TObject);
    procedure cbb1A6PropertiesChange(Sender: TObject);
    procedure cbChartKindA6PropertiesChange(Sender: TObject);
    procedure btnChartA6Click(Sender: TObject);
    procedure cbKindA6PropertiesChange(Sender: TObject);
    procedure cxcxGridA6View1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxcxGridA6View1DataControllerSortingChanged(Sender: TObject);
    procedure asg37GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnExcelA6Click(Sender: TObject);
    procedure btnSearchA7Click(Sender: TObject);
    procedure btnExcelA7Click(Sender: TObject);
    procedure btnChartA7Click(Sender: TObject);
    procedure cbChartKindA7PropertiesChange(Sender: TObject);
    procedure cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure btnSearchA8Click(Sender: TObject);
    procedure btnExcelA8Click(Sender: TObject);
    procedure btnChartA8Click(Sender: TObject);
    procedure cbChartKindA8PropertiesChange(Sender: TObject);
    procedure cbKindA8PropertiesChange(Sender: TObject);
		procedure cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure btnSearchA9Click(Sender: TObject);
    procedure btnExcelA9Click(Sender: TObject);
    procedure btnChartA9Click(Sender: TObject);
    procedure cbKindA9PropertiesChange(Sender: TObject);
    procedure cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cbChartKindA9PropertiesChange(Sender: TObject);
    procedure btnSearchA10Click(Sender: TObject);
    procedure btnExcelA10Click(Sender: TObject);
    procedure btnChartA10Click(Sender: TObject);
    procedure cbChartKindA10PropertiesChange(Sender: TObject);
    procedure cbKindA10PropertiesChange(Sender: TObject);
		procedure cxGridDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems6GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems5GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxRBA11_1Click(Sender: TObject);
    procedure btnSearchA11Click(Sender: TObject);
    procedure btnExcelA11Click(Sender: TObject);
    procedure cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
		procedure cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems5GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems6GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems7GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems8GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItemsGetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems10GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_CancelListColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
		procedure cxGrid_CancelListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnChartA11Click(Sender: TObject);
    procedure cxGrid_CancelListStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cbKeynumber11Click(Sender: TObject);
    procedure cbKindA11PropertiesChange(Sender: TObject);
    procedure cbChartKindA11PropertiesChange(Sender: TObject);
    procedure cxGridA1C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA1C2ChartSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cbKindA1PropertiesChange(Sender: TObject);
    procedure cbKindA21PropertiesChange(Sender: TObject);
    procedure cxGridA2C2ChartALLGetValueHint(Sender: TcxGridChartView;
			ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA2C2ChartSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
		procedure cxGridA1C1ChartView1GetValueHint(Sender: TcxGridChartView;
			ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA1C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA2C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA2C1ChartView1GetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA3C2ChartALLSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA3C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA3C1ChartView1GetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA3C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA4C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA4C1ChartView1GetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA6C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA6C1ChartView1GetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA6C2ChartALLSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA6C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cbKindA7PropertiesChange(Sender: TObject);
    procedure cxGridA7C2ChartALLSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA7C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA7C1ChartView1GetValueHint(Sender: TcxGridChartView;
			ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA7C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA8C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA8C1ChartView1GetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA8C2ChartSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA8C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA9C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA9C1ChartView1GetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA9C2ChartSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA9C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA10C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA10C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA10C2ChartSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA10C1ChartView1GetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
		procedure cxGridA11C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA11C1ChartView1GetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA11C2ChartALLSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA11C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGrid_NewOrderDayListStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
			AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxGrid_OrderDayListStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxGrid_OrderTimeListStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxGrid_NewCustStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure Timer1Timer(Sender: TObject);
    procedure cbA1PropertiesChange(Sender: TObject);
		procedure cbA2PropertiesChange(Sender: TObject);
    procedure edtWorkerSearchValueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtA3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtA4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtA5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb1A6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb3PropertiesChange(Sender: TObject);
    procedure pop_dateA1Popup(Sender: TObject);
    procedure cxGridA4C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA4C2ChartALLSeries7GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure btnChartA5Click(Sender: TObject);
    procedure cbKindA51PropertiesChange(Sender: TObject);
    procedure cbKindA5PropertiesChange(Sender: TObject);
    procedure cxGridA5C2ChartALLSeries1GetValueDisplayText(Sender: TObject;
			const AValue: Variant; var ADisplayText: string);
    procedure cbChartKindA5PropertiesChange(Sender: TObject);
    procedure cxGridA5C2ChartALLGetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA5C1ChartView1Series1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cxGridA5C1ChartView1GetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
		procedure btnSearchA12Click(Sender: TObject);
    procedure btnChartA12Click(Sender: TObject);
    procedure cxGridA12C2ChartALLGetValueHint(Sender: TcxGridChartView; ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cxGridA12C2ChartALLSeries2GetValueDisplayText(Sender: TObject; const AValue: Variant; var ADisplayText: string);
    procedure btnSearchA13Click(Sender: TObject);
    procedure btnChartA13Click(Sender: TObject);
    procedure btnExcelA12Click(Sender: TObject);
    procedure btnExcelA13Click(Sender: TObject);
    procedure cbChartKindA12PropertiesChange(Sender: TObject);
    procedure cbChartKindA13PropertiesChange(Sender: TObject);
    procedure cbKindA13PropertiesChange(Sender: TObject);
		procedure cbKindA12PropertiesChange(Sender: TObject);
		procedure cxGridA13C2ChartALLGetValueHint(Sender: TcxGridChartView; ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
		procedure cbb1A12PropertiesChange(Sender: TObject);
    procedure cbb1A12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbKindA12_1PropertiesChange(Sender: TObject);
    procedure cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems11GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems17GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems23GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems29GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems35GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems41GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems47GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
			AIsFooter: Boolean; var AText: string);
    procedure cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems53GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems59GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems65GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
			AIsFooter: Boolean; var AText: string);
    procedure cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems71GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
		procedure cxGridA12C1ChartView1Series1GetValueDisplayText(Sender: TObject; const AValue: Variant; var ADisplayText: string);
    procedure cxGridA12C1ChartView1GetValueHint(Sender: TcxGridChartView; ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
    procedure cbA13PropertiesChange(Sender: TObject);
    procedure cxGridDBTableView13TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
		procedure cxGridA13C1ChartView1GetValueHint(Sender: TcxGridChartView; ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
		procedure cxGridA13C2ChartALLSeries1GetValueDisplayText(Sender: TObject; const AValue: Variant; var ADisplayText: string);
    procedure cxGridA13C1ChartView1Series1GetValueDisplayText(Sender: TObject; const AValue: Variant; var ADisplayText: string);
    procedure cb_01Click(Sender: TObject);
    procedure cbKindA12_GuDongPropertiesChange(Sender: TObject);
    procedure cbKindA12_GuDongClick(Sender: TObject);
    procedure cxGridBandedTableView12CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cbKindA12_RankPropertiesChange(Sender: TObject);
    procedure btnGetListClick(Sender: TObject);
    procedure cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems11GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridBandedColumn35CompareRowValuesForCellMerging(Sender: TcxGridColumn; ARow1: TcxGridDataRow; AProperties1: TcxCustomEditProperties;
      const AValue1: Variant; ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties; const AValue2: Variant; var AAreEqual: Boolean);
    procedure btnSearchA15Click(Sender: TObject);
    procedure cbb15PropertiesChange(Sender: TObject);
    procedure edtA15KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnChartA15Click(Sender: TObject);
    procedure cxGridA15View1ColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure cbChartKindA15PropertiesChange(Sender: TObject);
    procedure cbKindA15PropertiesChange(Sender: TObject);
    procedure cxGridA15View1DataControllerSortingChanged(Sender: TObject);
    procedure btnExcelA15Click(Sender: TObject);
    procedure btnChartA1_NextClick(Sender: TObject);
    procedure btnChartA1_PreviousClick(Sender: TObject);
  private
		{ Private declarations }
    AIndex : Integer;
		AOrderBy : string;

    iCaCnt, iToCnt : Integer;
		iCust, iNewCust  : integer;
		iTCall_T, iFCall_T, iCCall_T : integer;
		iTCall_D, iFCall_D, iCCall_D : integer;
		iTCall_N, iFCall_N, iCCall_N, iNCall_N : integer;
		iTCall, iFCall, iCCall, iNCall : integer;
		iCanCelTOT, iCanCel0, iCanCel1, iCanCel2, iCanCel3, iCanCel4, iCanCel5, iCanCel6, iCanCel7, iCanCel8, iCanCel9, iCanCel10 : integer;

		i11_0913TCnt, i11_0913FCnt, i11_0913CCnt, i11_0913QCnt, i11_1317TCnt, i11_1317FCnt, i11_1317CCnt, i11_1317QCnt, 
		i11_1820TCnt, i11_1820FCnt, i11_1820CCnt, i11_1820QCnt, i11_21TCnt  , i11_21FCnt  , i11_21CCnt  , i11_21QCnt  , 
		i11_22TCnt  , i11_22FCnt  , i11_22CCnt  , i11_22QCnt  , i11_23TCnt  , i11_23FCnt  , i11_23CCnt  , i11_23QCnt  ,
		i11_00TCnt  , i11_00FCnt  , i11_00CCnt  , i11_00QCnt  , i11_01TCnt  , i11_01FCnt  , i11_01CCnt  , i11_01QCnt  ,
		i11_02TCnt  , i11_02FCnt  , i11_02CCnt  , i11_02QCnt  ,	i11_0304TCnt, i11_0304FCnt, i11_0304CCnt,	i11_0304QCnt,
		i11_0408TCnt, i11_0408FCnt, i11_0408CCnt, i11_0408QCnt : integer;  

		i12_TCnt, i12_CCnt : integer;
		FAreaTimeCall : TAreaTimeCall;

		AView: TcxGridChartView;

		gSortIdx : integer;

		giChartA1_TPage, giChartA1_NPage : integer; //대표번호별 총페이지, 현재페이지
		procedure proc_init_key;
		procedure RequestDataKey; // 대표번호별 통계
		procedure ResponseDataBase(ADataStr: WideString);
		// 처음 데이터를 수신하는 함수
		procedure SetSearchDate(AStart, AEnd: TDate);
		procedure RequestDataWorker;
		procedure ResponseDataWorker(AXmlStr: WideString);
		procedure RequestDataCus;
		function getSttBrCode: string;
		procedure proc_Init_BRS;
		procedure RequestDataBr;
		procedure RequestDataCommCall;
		procedure proc_init_Adr;
		procedure RequestDataLocalCall;
		procedure RequestDataNewCust;
		procedure RequestDataOrderTimeList;
		procedure RequestDataOrderDayList;
		procedure RequestDataNewOrderDayList;
		procedure RequestDataCancelList;
		procedure RequestDataCancelListDetail(sHdNo, sBrNo, sKeyNum, sBrInfo, sDate, sCanCnt : String; iType : integer);
		procedure RequestDataAreaCall;
		procedure RequestDataChagreCall;
		procedure RequestDataBrCallAcc;
		procedure proc_init_Chart;
	public                                  
		{ Public declarations }
		AdrLst: array of TAdrLst;
		procedure proc_init;
		procedure proc_BrNameSet;
  end;

var
  Frm_STT: TFrm_STT;

implementation

{$R *.dfm}

uses Main, xe_Flash, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Dm, xe_Lib, xe_Msg,
  xe_packet, xe_xml, xe_Query, xe_system, xe_JON51, xe_STT01, xe_SearchWord;

procedure TFrm_STT.FormCreate(Sender: TObject);
Var i : Integer;
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
  if GT_USERIF.ID = 'sntest' then btnGetList.Visible := True;

  pnlChartA1.Height := 300;
  pnlMainA2.Height := (Screen.Height div 2) - 200;
  pnlMainA3.Height := (Screen.Height div 2) - 200;
  pnlMainA4.Height := (Screen.Height div 2) - 200;
  pnlMainA6.Height := (Screen.Height div 2) - 200;
  pnlMainA7.Height := (Screen.Height div 2) - 200;
  pnlMainA8.Height := (Screen.Height div 2) - 200;
  pnlMainA9.Height := (Screen.Height div 2) - 200;
  pnlMainA10.Height := (Screen.Height div 2) - 200;
  pnlMainA11.Height := (Screen.Height div 2) - 200;

  cxPageControl1.ActivePageIndex := 0;

	cxPageControl1.Pages[ 0].TabVisible := (TCK_USER_PER.STT_Keynumber   = '1');  // 701.대표번호별통계
	cxPageControl1.Pages[ 1].TabVisible := (TCK_USER_PER.STT_Worker      = '1');  // 702.기사별통계
	cxPageControl1.Pages[ 2].TabVisible := (TCK_USER_PER.STT_Customer    = '1');  // 703.고객별통계
	cxPageControl1.Pages[ 3].TabVisible := (TCK_USER_PER.STT_Owner       = '1');  // 704.자사통계
	cxPageControl1.Pages[ 4].TabVisible := (TCK_USER_PER.STT_OwnerACC    = '1');  // 715.지사별콜정산통계
	cxPageControl1.Pages[ 5].TabVisible := (TCK_USER_PER.STT_Share       = '1');  // 705.공유콜통계
	cxPageControl1.Pages[ 6].TabVisible := (TCK_USER_PER.STT_Local       = '1');  // 706.지역별통계
	cxPageControl1.Pages[ 7].TabVisible := (TCK_USER_PER.STT_NewCustRate = '1');  // 707.신규고객통계
	cxPageControl1.Pages[ 8].TabVisible := (TCK_USER_PER.STT_TimeCall    = '1');  // 708.시간대별콜수통계
	cxPageControl1.Pages[ 9].TabVisible := (TCK_USER_PER.STT_Day    		 = '1');  // 709.일일콜수통계
	cxPageControl1.Pages[10].TabVisible := (TCK_USER_PER.STT_NewCall     = '1');  // 710.신규콜수통계
	cxPageControl1.Pages[11].TabVisible := (TCK_USER_PER.STT_CanCelCall  = '1');  // 711.취소콜통계   (*)
	cxPageControl1.Pages[12].TabVisible := (TCK_USER_PER.STT_TimeLocal   = '1');  // 712.시간대별출/도지역통계
	cxPageControl1.Pages[13].TabVisible := (TCK_USER_PER.STT_OrderCharge = '1');  // 713.오더요금별통계

	cxPageControl1.Pages[14].TabVisible := False;   // 월별통계>과거내역비교

	proc_init;
end;

procedure TFrm_STT.FormDestroy(Sender: TObject);
begin
  Frm_STT := Nil;
end;

procedure TFrm_STT.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_STT, GS_FONTNAME);
  for i := 0 to pred(cxSTTStyle.Count) do
  begin
    TcxStyle(cxSTTStyle.Items[i]).Font.Name := GS_FONTNAME;
  end;
end;

procedure TFrm_STT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := Cafree;

	FreeAndNil(FAreaTimeCall.Time);
	FreeAndNil(FAreaTimeCall.FCall);
	FreeAndNil(FAreaTimeCall.CCall);
	FreeAndNil(FAreaTimeCall.QCall);
	FreeAndNil(FAreaTimeCall.TCall);
end;

procedure TFrm_STT.proc_init;
begin
	AOrderBy := 'sum1';

	proc_init_key;
	proc_init_Adr;
	proc_BrNameSet;
	proc_init_Chart;
end;

procedure TFrm_STT.proc_init_Adr;
var
  i, j : integer;
  StrList, slList : TStringList;
  ErrCode: integer;

  XmlData, Param, ErrMsg: string;
  tmpCnt : integer;
	tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  tmp2: string;
begin
  setlength(AdrLst,0);

  StrList := TStringList.Create;
  slList := TStringList.Create;
  try
    // 통계화면
    Param := '';
    if not RequestBasePaging(GetSel05('GETADLIST', 'STT.GET_ADLIST', '1000', Param), slList, ErrCode, ErrMsg, 600000) then
    begin
      GMessagebox(Format('시도, 시군구 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    for j := 0 to slList.Count - 1 do
    begin
      Application.ProcessMessages;
      xmlData := slList.Strings[j];

      if Pos('<Data Count="',xmlData)>0 then
      begin
        tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
        if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
        tmpCnt:=StrToIntDef(tmpCntStr,0);
      end;
			if tmpCnt<1 then 
			begin
				GMessagebox('검색된 내용이 없습니다.', CDMSI);
				Screen.Cursor := crDefault;
				StrList.Free;
				slList.Free;
				Exit;
			end;

      SetLength(AdrLst,tmpCnt);

      tmpStr:=xmlData;
      tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
      tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
      tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

      if Pos('<Result Value=',XmlData)>0 then
        tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

      if tmpCnt>0 then
      begin
        for k:=0 to tmpCnt-1 do
        begin
          tmp2:=tmpStr;
          if Pos('/>',tmpStr)>0 then
          begin
            tmp2:=Copy(tmpStr,1,Pos('/>',tmpStr)-1);
            StrList.Clear;

            if Pos('<Result Value=',tmp2) > 0 then
							tmp2 := Copy(tmp2,Pos('<Result Value=',tmp2)+14,Length(tmp2)-Pos('<Result Value=',tmp2)+14+1);
            if Pos('/>',tmp2) > 0 then
              tmp2 := Copy(tmp2,1,Pos('/>',tmp2)-1);
            tmp2:=StringReplace(tmp2,'"','',[rfReplaceAll]);
            tmp2:=stringreplace(tmp2,#13,'',[rfReplaceAll]);
            tmp2:=stringreplace(tmp2,#10,'',[rfReplaceAll]);

            tmpStr:=Copy(tmpStr,Pos('/>',tmpStr)+2,Length(tmpStr)-Pos('/>',tmpStr)+2+1);
            GetTextSeperationEx('│', tmp2, StrList);
            AdrLst[k].City:=StrList.Strings[0];
            AdrLst[k].Ward:=StrList.Strings[1];
          end;
        end;
      end;
    end;
  finally
		cbb1A6.Properties.Items.Add('전체');
		if Length(AdrLst)>0 then
		begin
			for i:=0 to Length(AdrLst)-1 do
			begin
				if cbb1A6.Properties.Items.IndexOf(AdrLst[i].city)<0 then
					cbb1A6.Properties.Items.Add(AdrLst[i].city);
			end;
		end;
		cbb1A6.ItemIndex := 0;
		if Pos('서울특별시', Area_CenterName) > 0 then cbb1A6.ItemIndex := 1 else
		if Pos('경기도'    , Area_CenterName) > 0 then cbb1A6.ItemIndex := 2 else
		if Pos('인천광역시', Area_CenterName) > 0 then cbb1A6.ItemIndex := 3 else
		if Pos('대전광역시', Area_CenterName) > 0 then cbb1A6.ItemIndex := 4 else
		if Pos('충청남도'  , Area_CenterName) > 0 then cbb1A6.ItemIndex := 5 else
		if Pos('세종'      , Area_CenterName) > 0 then cbb1A6.ItemIndex := 5 else
		if Pos('충청북도'  , Area_CenterName) > 0 then cbb1A6.ItemIndex := 6 else
		if Pos('강원도'    , Area_CenterName) > 0 then cbb1A6.ItemIndex := 7 else
		if Pos('대구광역시', Area_CenterName) > 0 then cbb1A6.ItemIndex := 8 else
		if Pos('경상북도'  , Area_CenterName) > 0 then cbb1A6.ItemIndex := 9 else
		if Pos('부산광역시', Area_CenterName) > 0 then cbb1A6.ItemIndex := 10 else
		if Pos('울산광역시', Area_CenterName) > 0 then cbb1A6.ItemIndex := 11 else
		if Pos('경상남도'  , Area_CenterName) > 0 then cbb1A6.ItemIndex := 12 else
		if Pos('전라북도'  , Area_CenterName) > 0 then cbb1A6.ItemIndex := 13 else
		if Pos('광주광역시', Area_CenterName) > 0 then cbb1A6.ItemIndex := 14 else
		if Pos('전라남도'  , Area_CenterName) > 0 then cbb1A6.ItemIndex := 15 else
		if Pos('제주'      , Area_CenterName) > 0 then cbb1A6.ItemIndex := 16;
		cbb1A6.Properties.OnChange(Self);

		cbb1A12.Properties.Items.Add('전체');
		if Length(AdrLst)>0 then
		begin
			for i:=0 to Length(AdrLst)-1 do
			begin
				if cbb1A12.Properties.Items.IndexOf(AdrLst[i].city)<0 then
					cbb1A12.Properties.Items.Add(AdrLst[i].city);
			end;
		end;
		cbb1A12.ItemIndex := 0;
		if Pos('서울특별시', Area_CenterName) > 0 then cbb1A12.ItemIndex := 1 else
		if Pos('경기도'    , Area_CenterName) > 0 then cbb1A12.ItemIndex := 2 else
		if Pos('인천광역시', Area_CenterName) > 0 then cbb1A12.ItemIndex := 3 else
		if Pos('대전광역시', Area_CenterName) > 0 then cbb1A12.ItemIndex := 4 else
		if Pos('충청남도'  , Area_CenterName) > 0 then cbb1A12.ItemIndex := 5 else
		if Pos('세종'      , Area_CenterName) > 0 then cbb1A12.ItemIndex := 5 else
		if Pos('충청북도'  , Area_CenterName) > 0 then cbb1A12.ItemIndex := 6 else
		if Pos('강원도'    , Area_CenterName) > 0 then cbb1A12.ItemIndex := 7 else
		if Pos('대구광역시', Area_CenterName) > 0 then cbb1A12.ItemIndex := 8 else
		if Pos('경상북도'  , Area_CenterName) > 0 then cbb1A12.ItemIndex := 9 else
		if Pos('부산광역시', Area_CenterName) > 0 then cbb1A12.ItemIndex := 10 else
		if Pos('울산광역시', Area_CenterName) > 0 then cbb1A12.ItemIndex := 11 else
		if Pos('경상남도'  , Area_CenterName) > 0 then cbb1A12.ItemIndex := 12 else
		if Pos('전라북도'  , Area_CenterName) > 0 then cbb1A12.ItemIndex := 13 else
		if Pos('광주광역시', Area_CenterName) > 0 then cbb1A12.ItemIndex := 14 else
		if Pos('전라남도'  , Area_CenterName) > 0 then cbb1A12.ItemIndex := 15 else
		if Pos('제주'      , Area_CenterName) > 0 then cbb1A12.ItemIndex := 16;
		cbb1A12.Properties.OnChange(Self);

		StrList.Free;
		slList.Free;
  end;
end;

procedure TFrm_STT.proc_Init_BRS;
var
  i, k : integer;
  ErrCode: integer;

  XmlData, Param, ErrMsg: string;
  tmpCnt: integer;
  tmpCntStr: string;
  tmpStr: string;
  ArrSt: array of string;
begin
  try
		cbbA4.Properties.Items.Clear;
    cbbA4.Properties.Items.Add('지사전체');

    // 통계화면
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := GT_SEL_BRNO.HDNO
    else
      Param := GT_USERIF.HD;

		if not RequestBase(GetSel05('GETBRLIST', 'STT.GET_BRLIST', '1000', Param), XmlData, ErrCode, ErrMsg, 600000) then
    begin
      GMessagebox(Format('지사리스트 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
		end;

    if Pos('<Data Count="',xmlData)>0 then
    begin
      tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
      if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
      tmpCnt:=StrToIntDef(tmpCntStr,0);
    end;
		if tmpCnt<1 then 
		begin
			GMessagebox('검색된 내용이 없습니다.', CDMSI);
			Screen.Cursor := crDefault;
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
          if not Check_ID(GT_USERIF.ID, copy(ArrSt[k],1,4)) then
          begin
            cbbA4.Properties.Items.Add(ArrSt[k]);
          end;
        end;
      end;
    end;
  finally
    cbbA4.ItemIndex:=0;
    if (GT_USERIF.lv<>'60') and (cbbA4.Properties.Items.count>1) then
    begin
      i:=-1;
      for k:=1 to cbbA4.Properties.Items.Count-1 do
      begin
        if Pos(GT_USERIF.BR, cbbA4.Properties.Items[k]) = 1 then i:=k;
      end;
      if i<>-1 then
      begin
        cbbA4.ItemIndex:=i;
        cbbA4.Enabled:=false;
      end;
    end;

    cbbA3.Properties.Items.Clear;
    cbbA3.Properties.Items := cbbA4.Properties.Items;
    cbbA3.ItemIndex := cbbA4.ItemIndex;
    cbbA3.Enabled   := cbbA4.Enabled;

    cbbA5.Properties.Items.Clear;
    cbbA5.Properties.Items := cbbA4.Properties.Items;
    cbbA5.ItemIndex := cbbA4.ItemIndex;
    cbbA5.Enabled   := cbbA4.Enabled;

    cbbA6.Properties.Items.Clear;
    cbbA6.Properties.Items := cbbA4.Properties.Items;
    cbbA6.ItemIndex := cbbA4.ItemIndex;
    cbbA6.Enabled   := cbbA4.Enabled;

    cbbA7.Properties.Items.Clear;
    cbbA7.Properties.Items := cbbA4.Properties.Items;
    cbbA7.ItemIndex := cbbA4.ItemIndex;
    cbbA7.Enabled   := cbbA4.Enabled;

    cbbA8.Properties.Items.Clear;
    cbbA8.Properties.Items := cbbA4.Properties.Items;
    cbbA8.ItemIndex := cbbA4.ItemIndex;
    cbbA8.Enabled   := cbbA4.Enabled;

		cbbA9.Properties.Items.Clear;
    cbbA9.Properties.Items := cbbA4.Properties.Items;
    cbbA9.ItemIndex := cbbA4.ItemIndex;
    cbbA9.Enabled   := cbbA4.Enabled;

		cbbA10.Properties.Items.Clear;
		cbbA10.Properties.Items := cbbA4.Properties.Items;
		cbbA10.ItemIndex := cbbA4.ItemIndex;
		cbbA10.Enabled   := cbbA4.Enabled;

		cbbA12.Properties.Items.Clear;
		cbbA12.Properties.Items := cbbA4.Properties.Items;
		cbbA12.ItemIndex := cbbA4.ItemIndex;
		cbbA12.Enabled   := cbbA4.Enabled;

		cbbA13.Properties.Items.Clear;
		cbbA13.Properties.Items := cbbA4.Properties.Items;
		cbbA13.Properties.Items.delete(0);
		cbbA13.ItemIndex := cbbA4.ItemIndex;

    cbbA15.Properties.Items.Clear;
    cbbA15.Properties.Items := cbbA4.Properties.Items;
    cbbA15.ItemIndex := cbbA4.ItemIndex;
    cbbA15.Enabled   := cbbA4.Enabled;
	end;
end;

procedure TFrm_STT.proc_init_Chart;
var AChartView : array[1..26] of TcxGridChartView;
	i : integer;
begin
	AChartView[1] := cxGridA1C2ChartAll;
	AChartView[2] := cxGridA1C1ChartView1;
	AChartView[3] := cxGridA2C2ChartAll;
	AChartView[4] := cxGridA2C1ChartView1;
	AChartView[5] := cxGridA3C2ChartAll;
	AChartView[6] := cxGridA3C1ChartView1;
	AChartView[7] := cxGridA4C2ChartAll;
	AChartView[8] := cxGridA4C1ChartView1;
	AChartView[9] := cxGridA5C2ChartAll;
	AChartView[10] := cxGridA5C1ChartView1;
	AChartView[11] := cxGridA6C2ChartAll;
	AChartView[12] := cxGridA6C1ChartView1;
	AChartView[13] := cxGridA7C2ChartAll;
	AChartView[14] := cxGridA7C1ChartView1;
	AChartView[15] := cxGridA8C2ChartAll;
	AChartView[16] := cxGridA8C1ChartView1;
	AChartView[17] := cxGridA9C2ChartAll;
	AChartView[18] := cxGridA9C1ChartView1;
	AChartView[19] := cxGridA10C2ChartAll;
	AChartView[20] := cxGridA10C1ChartView1;
	AChartView[21] := cxGridA11C2ChartAll;
	AChartView[22] := cxGridA11C1ChartView1;
	AChartView[23] := cxGridA12C2ChartAll;
	AChartView[24] := cxGridA12C1ChartView1;
	AChartView[25] := cxGridA13C2ChartALL;
	AChartView[26] := cxGridA13C1ChartView1;

	for I := 1 to 26 do
	begin
//		if I = 23 then Continue;
		///기본차트 style
		AChartView[i].Styles.ActiveDataLevelInfo := cxSTTChart;
		AChartView[i].Styles.ActiveDataLevelInfo :=  cxSTTChart;
		AChartView[i].Styles.DataLevelActiveValueInfo :=  cxSTTChart;
		AChartView[i].Styles.DataLevelsInfo :=  cxSTTChart;
		AChartView[i].Styles.DiagramSelector :=  cxSTTChart;
		AChartView[i].Styles.Legend :=  cxSTTChart;
		AChartView[i].Styles.Title :=  cxSTTChart;
		AChartView[i].Styles.ToolBox :=  cxSTTChart;

		///DiagramArea style
		AChartView[i].DiagramArea.AxisValue.TickMarkLabelFormat :=  ',0;-,0' ;
		AChartView[i].DiagramArea.EmptyPointsDisplayMode :=  epdmGap;
		AChartView[i].DiagramArea.Styles.Axis :=  cxStyleBasic;
		AChartView[i].DiagramArea.Styles.CategoryGridLines :=  cxSTTChart;
		AChartView[i].DiagramArea.Styles.GridLines :=  cxSTTChartGridLine;
		AChartView[i].DiagramArea.Styles.Plot :=  cxSTTChart;
		AChartView[i].DiagramArea.Values.CaptionPosition :=  ldvcpAbove;
		AChartView[i].DiagramArea.Values.MarkerStyle :=  cmsSquare;

		///DiagramBar style
		AChartView[i].DiagramBar.AxisValue.TickMarkLabelFormat :=  ',0;-,0';
		AChartView[i].DiagramBar.Styles.Axis :=  cxStyleBasic              ;
		AChartView[i].DiagramBar.Styles.AxisTitle :=  cxSTTChart           ;
		AChartView[i].DiagramBar.Styles.CategoryGridLines :=  cxSTTChart;//cxStyleBasic ;
		AChartView[i].DiagramBar.Styles.GridLines :=  cxSTTChartGridLine   ;
		AChartView[i].DiagramBar.Styles.Plot :=  cxSTTChart                ;
		AChartView[i].DiagramBar.Values.CaptionPosition :=  cdvcpOutsideEnd;

		///DiagramColumn style
//		AChartView[i].DiagramColumn.Active :=  True                           ;
		AChartView[i].DiagramColumn.AxisValue.MinMaxValues :=  mmvAuto        ;
		AChartView[i].DiagramColumn.AxisValue.TickMarkLabelFormat :=  ',0;-,0';
		AChartView[i].DiagramColumn.Styles.Axis :=  cxStyleBasic              ;
		AChartView[i].DiagramColumn.Styles.AxisTitle :=  cxSTTChart           ;
		AChartView[i].DiagramColumn.Styles.CategoryGridLines :=  cxStyleBasic ;
		AChartView[i].DiagramColumn.Styles.GridLines :=  cxSTTChartGridLine   ;
		AChartView[i].DiagramColumn.Styles.Plot :=  cxSTTChart                ;
		AChartView[i].DiagramColumn.Values.CaptionPosition :=  cdvcpOutsideEnd;

		///DiagramLine style
		AChartView[i].DiagramLine.AxisValue.TickMarkLabelFormat :=  ',0;-,0' ;
		AChartView[i].DiagramLine.Styles.Axis :=  cxStyleBasic               ;
		AChartView[i].DiagramLine.Styles.AxisTitle :=  cxSTTChart            ;
		AChartView[i].DiagramLine.Styles.CategoryGridLines :=  cxSTTChart    ;
		AChartView[i].DiagramLine.Styles.GridLines :=  cxSTTChartGridLine    ;
		AChartView[i].DiagramLine.Styles.Plot :=  cxSTTChart                 ;
		AChartView[i].DiagramLine.Values.CaptionPosition :=  ldvcpAbove      ;
		AChartView[i].DiagramLine.Values.MarkerStyle :=  cmsSquare           ;

		///DiagramPie style
		AChartView[i].DiagramPie.Legend.Orientation := cpoHorizontal                      ;
		AChartView[i].DiagramPie.Legend.Position := cppNone                               ;
		AChartView[i].DiagramPie.Styles.ValueCaptions := cxStyleBasic                     ;
		AChartView[i].DiagramPie.Styles.SeriesSites := cxSTTChart                         ;
		AChartView[i].DiagramPie.Values.CaptionPosition := pdvcpOutsideEndWithLeaderLines ;
		AChartView[i].DiagramPie.Values.CaptionItems := [pdvciCategory, pdvciPercentage]  ;
																																										 
		///DiagramStackedArea style
		AChartView[i].DiagramStackedArea.AxisValue.TickMarkLabelFormat :=  ',0;-,0'        ;
		AChartView[i].DiagramStackedArea.Styles.Axis :=  cxStyleBasic                      ;
		AChartView[i].DiagramStackedArea.Styles.CategoryGridLines :=  cxSTTChart           ;
		AChartView[i].DiagramStackedArea.Styles.GridLines :=  cxSTTChartGridLine           ;
		AChartView[i].DiagramStackedArea.Styles.Plot :=  cxSTTChart                        ;
		AChartView[i].DiagramStackedArea.Values.CaptionPosition :=  ldvcpAbove             ;
		AChartView[i].DiagramStackedArea.Values.MarkerStyle :=  cmsSquare                  ;
																																										 
		///DiagramStackedBar style                                                       
		AChartView[i].DiagramStackedBar.AxisValue.TickMarkLabelFormat :=  ',0;-,0'         ;
		AChartView[i].DiagramStackedBar.Styles.Axis :=  cxStyleBasic                       ;
		AChartView[i].DiagramStackedBar.Styles.CategoryGridLines :=  cxSTTChart;//cxStyleBasic          ;
		AChartView[i].DiagramStackedBar.Styles.GridLines :=  cxSTTChartGridLine            ;
		AChartView[i].DiagramStackedBar.Styles.Plot :=  cxSTTChart                         ;
		AChartView[i].DiagramStackedBar.Values.CaptionPosition :=  cdvcpOutsideEnd         ;

		///DiagramStackedColumn style
		AChartView[i].DiagramStackedColumn.AxisValue.TickMarkLabelFormat :=  ',0;-,0'      ;
		AChartView[i].DiagramStackedColumn.Styles.Axis :=  cxStyleBasic                    ;
		AChartView[i].DiagramStackedColumn.Styles.CategoryGridLines :=  cxStyleBasic       ;
		AChartView[i].DiagramStackedColumn.Styles.GridLines :=  cxSTTChartGridLine         ;
		AChartView[i].DiagramStackedColumn.Styles.Plot :=  cxSTTChart                      ;
		AChartView[i].DiagramStackedColumn.Values.CaptionPosition :=  cdvcpInsideEnd       ;
	end;
end;

procedure TFrm_STT.proc_init_key;
var
  I: Integer;
  prop: TcxCustomEditProperties;
begin
	try
		cxDtStartA1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),	1, 8))) - 1;
		cxDtEndA1.Date := cxDtStartA1.Date + 1;

		cxSYYA1.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
		cxSYYA1.Properties.MaxValue := cxSYYA1.Value;
		cxSYYA1.Properties.MinValue := cxSYYA1.Value - 1;
		cxEYYA1.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
		cxEYYA1.Properties.MaxValue := cxEYYA1.Value;
		cxEYYA1.Properties.MinValue := cxEYYA1.Value - 1;

		cxSMMA1.Value := StrToIntDef(FormatDateTime('mm', Now), 1);
		cxEMMA1.Value := StrToIntDef(FormatDateTime('mm', Now), 1);

		for I := 0 to cxViewKey.ColumnCount - 1 do
		begin
			case I of
				0:
					cxViewKey.Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType;
				5..12:
					begin
						cxViewKey.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxViewKey.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxViewKey.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
		//그래프 통합데이터 그리드
		for I := 0 to cxViewKey_Tmp.ColumnCount - 1 do
		begin
			case I of
				0,1:
					cxViewKey_Tmp.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
				2..9:
					begin
						cxViewKey_Tmp.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxViewKey_Tmp.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			end;
		end;
		cbA1.ItemIndex := 1;
	except
	end;

  //---------------------------------------------------------------------------- A2
  try
		cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),	1, 8))) - 1;
		cxDtEndA2.Date := cxDtStartA2.Date + 1;

		cxSYYA2.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
		cxSYYA2.Properties.MaxValue := cxSYYA2.Value;
		cxSYYA2.Properties.MinValue := cxSYYA2.Value - 1;
		cxEYYA2.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
		cxEYYA2.Properties.MaxValue := cxEYYA2.Value;
		cxEYYA2.Properties.MinValue := cxEYYA2.Value - 1;

		cxSMMA2.Value := StrToIntDef(FormatDateTime('mm', Now), 1);
		cxEMMA2.Value := StrToIntDef(FormatDateTime('mm', Now), 1);

		prop := cxViewWorker.Columns[1].Properties;
		prop.Alignment.Horz := taCenter;

		// 금액관련 설정
		for I := 0 to cxViewWorker.ColumnCount - 1 do
		begin
			case I of
				0:
					cxViewWorker.Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType;
				6..11:
					begin
						cxViewWorker.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxViewWorker.Columns[I].Properties := Frm_Main.gCurProperties;
					end;
			else
				cxViewWorker.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
		cbA2.ItemIndex := 1;
	except
  end;

	// --------------------------------------------------------------------------- A3 //   고객별통계
	try
		for I := 0 to cxGridA3View1.ColumnCount - 1 do
		begin
			case I of
				0:
					cxGridA3View1.Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType;
				3..9:
					begin
						cxGridA3View1.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxGridA3View1.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxGridA3View1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
	except
	end;

  // --------------------------------------------------------------------------- A4
	cbb3.ItemIndex := 1;
	try
		cxDtStartA4.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),	1, 8))) - 1;
		cxDtEndA4.Date := cxDtStartA4.Date + 1;

		for I := 0 to cxGridA4View1.ColumnCount - 1 do
		begin
			case I of
				0:
					cxGridA4View1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
				4..6:
					begin
						cxGridA4View1.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxGridA4View1.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxGridA4View1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
	except
	end;

  // --------------------------------------------------------------------------- A15
	cbb15.ItemIndex := 1;
	try
		cxDtStartA15.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),	1, 8))) - 1;
		cxDtEndA15.Date := cxDtStartA4.Date + 1;

		for I := 0 to cxGridA15View1.ColumnCount - 1 do
		begin
			case I of
				0:
					cxGridA15View1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
				4..13 :
					begin
						cxGridA15View1.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxGridA15View1.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxGridA15View1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
	except
	end;

	// --------------------------------------------------------------------------- A5
  for i := 0 to cxGridA5View1.ColumnCount - 1 do
		cxGridA5View1.Columns[i].DataBinding.ValueType := 'String';
	try
		for i := 0 to cxGridA5View1.ColumnCount - 1 do
		begin
			case I of
//				0:
				//	cxGridA5View1.Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType;
				10..22:
					begin
						cxGridA5View1.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxGridA5View1.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxGridA5View1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
  except
  end;
	cxDtStartA5.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
	cxDtEndA5.Date := cxDtStartA5.Date + 1;

  // --------------------------------------------------------------------------- A6
	try
		for i := 0 to cxcxGridA6View1.ColumnCount - 1 do
		begin
			case I of
				0, 7:
					cxcxGridA6View1.Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType;
				3..6:
					begin
						cxcxGridA6View1.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxcxGridA6View1.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxcxGridA6View1.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
		cxDtStartA6.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
		cxDtEndA6.Date := cxDtStartA6.Date + 7;
	except
	end;

  // --------------------------------------------------------------------------- A7
  try
    for i := 0 to cxGrid_NewCust.ColumnCount - 1 do
    begin
			case I of
				1,2:
					begin
						cxGrid_NewCust.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxGrid_NewCust.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxGrid_NewCust.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
		cxDtStartA7.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),	1, 8))) - 7;
		cxDtEndA7.Date := cxDtStartA7.Date + 7;
	except
  end;

  // --------------------------------------------------------------------------- A8
  try
		for i := 0 to cxGrid_OrderTimeList.ColumnCount - 1 do
    begin
			case I of
				1..3:
					begin
						cxGrid_OrderTimeList.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxGrid_OrderTimeList.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxGrid_OrderTimeList.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
		cxDtStartA8.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),	1, 8))) - 7;
		cxDtEndA8.Date := cxDtStartA8.Date + 7;
	except
  end;

  // --------------------------------------------------------------------------- A9
  try
		for I := 0 to cxGrid_OrderDayList.ColumnCount - 1 do
		begin
			case I of
				2..4:
					begin
						cxGrid_OrderDayList.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxGrid_OrderDayList.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxGrid_OrderDayList.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
		cxDtStartA9.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),	1, 8))) - 7;
		cxDtEndA9.Date := cxDtStartA9.Date + 7;
	except
	end;

  // --------------------------------------------------------------------------- A10
	try
		for I := 0 to cxGrid_NewOrderDayList.ColumnCount - 1 do
    begin
      cxGrid_NewOrderDayList.Columns[i].DataBinding.ValueType := 'String';
    end;
		cxDtStartA10.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
		cxDtEndA10.Date := cxDtStartA10.Date + 7;
	except
	end;

	// --------------------------------------------------------------------------- A11
	try
		for I := 0 to cxGrid_CancelList.ColumnCount - 1 do
		begin
			cxGrid_CancelList.Columns[i].DataBinding.ValueType := 'String';
		end;

		cxDtStartA11.Date := Now;
		cxDtEndA11.Date := Now + 1;

		cxSYYA11.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
		cxSYYA11.Properties.MaxValue := cxSYYA11.Value;
		cxSYYA11.Properties.MinValue := cxSYYA11.Value - 1;
		cxEYYA11.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
		cxEYYA11.Properties.MaxValue := cxEYYA11.Value;
		cxEYYA11.Properties.MinValue := cxEYYA11.Value - 1;
		
		cxSMMA11.Value := StrToIntDef(FormatDateTime('mm', Now), 1);
		cxEMMA11.Value := StrToIntDef(FormatDateTime('mm', Now), 1);

		cxRBA11_1Click(cxRBA11_1);
	except
	end;

	// --------------------------------------------------------------------------- A12
	try
		for I := 0 to cxGridBandedTableView12.ColumnCount - 1 do
		begin
			case I of
				0:
					cxGridBandedTableView12.Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType;
				1..3, 9, 15, 21, 27, 33, 39, 45, 51, 57, 63, 69, 75, 76:
					cxGridBandedTableView12.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			else
				begin
					cxGridBandedTableView12.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
					cxGridBandedTableView12.Columns[I].Properties := frm_Main.gCurProperties;
				end;
			end;
		end;

		cxDtStartA12.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
		cxDtEndA12.Date := cxDtStartA12.Date + 7;

		FAreaTimeCall.Time  := TStringList.Create;
		FAreaTimeCall.FCall := TStringList.Create;
		FAreaTimeCall.CCall := TStringList.Create;
		FAreaTimeCall.QCall := TStringList.Create;
		FAreaTimeCall.TCall := TStringList.Create;
	except
	end;

	// --------------------------------------------------------------------------- A13
	try
		for I := 0 to cxGridDBTableView13.ColumnCount - 1 do
		begin
			case I of
				0, 6..9:
					begin
						cxGridDBTableView13.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
						cxGridDBTableView13.Columns[I].Properties := frm_Main.gCurProperties;
					end;
			else
				cxGridDBTableView13.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
			end;
		end;
		cxDtStartA13.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
		cxDtEndA13.Date := cxDtStartA13.Date + 7;
		gSortIdx := 0;
	except
	end;
	
	// --------------------------------------------------------------------------- A14
	try
		for I := 0 to cxGridDBTableView14.ColumnCount - 1 do
		begin
			case I of
				0, 6:
					begin
						cxGridDBTableView14.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
					end;
			else
				begin
					cxGridDBTableView14.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
					cxGridDBTableView14.Columns[I].Properties := frm_Main.gCurProperties;
				end;
			end;
		end;
		cxDtStartA13.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
		cxDtEndA13.Date := cxDtStartA13.Date + 7;
	except
	end;
end;

{*==============================================================================
 데이터 요청부
==============================================================================*}
procedure TFrm_STT.RequestDataKey;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i, iTmp : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	strHdNo, strBrNo, sKeyNum, sBrNo, sHdNm : string;
	iNum , PerCancel, iTot, iSortIndex : Integer;
	iFCnt, iCCnt, iQCnt, iTCnt, iNPCnt, iPerPCnt, iRow : integer;
	iNPer, iCPer : Double;
begin
	SetDebugeWrite('TFrm_STT.RequestDataCancelList');

	if fGetChk_Search_HdBrNo('대표번호별 통계') then Exit;

	cxViewKey.DataController.SetRecordCount(0);

	try
		//////////////////////////////////////////////////////////////////////////////////
		//  접수 전문
		//////////////////////////////////////////////////////////////////////////////////
		if cbA1.ItemIndex = 0 then  Param := '0' else
		if cbA1.ItemIndex = 1 then  Param := '1' else
		if cbA1.ItemIndex = 2 then  Param := '2';   

		Param := Param + '│' + GT_USERIF.LV;

		if (cbA1.ItemIndex = 0) or (cbA1.ItemIndex = 1) then  
		begin
			Param := Param + '│' + formatdatetime('yyyymmdd', cxDtStartA1.Date) + '│' + formatdatetime('yyyymmdd', cxDtEndA1.Date);
			Param := Param + '│' + '│';
		end	else
		begin
			Param := Param + '│' + '│';
			Param := Param + '│' + cxSYYA1.Text + LPAD(cxSMMA1.Text, '0', 2) + '│' + cxEYYA1.Text + LPAD(cxEMMA1.Text, '0', 2);
		end;

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			strHdNo := GT_SEL_BRNO.HDNO
		else
			strHdNo := GT_USERIF.HD;
		Param := Param + '│' + strHdNo;

		if (GT_USERIF.lv = '60') then
		begin
			if GT_SEL_BRNO.GUBUN = '1' then
				strBrNo := GT_SEL_BRNO.BrNo
			else
				strBrNo := '';
		end
		else
			strBrNo := GT_USERIF.BR;
			
		Param := Param + '│' + strBrNo;

		if ( cbKeynumber01.ItemIndex > 0 ) And ( cbKeynumber01.Text <> '' ) then
			Param := Param + '│' + cbKeynumber01.Text
		else
			Param := Param + '│' ;

		if (GT_USERIF.lv = '10') then Param := Param + '│' + GT_USERIF.BR else Param := Param + '│' ;

		Screen.Cursor := crHourGlass;

		Timer1.Enabled := True;
		Frm_Main.Enabled := False;

		if not RequestBase(GetSel06('GET_LIST_KEY_NUMBER_STAT', 'STAT_A01.GET_LIST_KEY_NUMBER_STAT', '1000', Param), XmlData, ErrCode, ErrMsg, 600000) then
		begin
			Frm_Flash.hide;
			Timer1.Enabled := False;
			Application.ProcessMessages;
			GMessagebox(Format('대표번호별 통계 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Frm_Main.Enabled := True;
			Screen.Cursor := crDefault;
			Exit;
		end;
		
		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then
			begin
				Frm_Flash.hide;
				Frm_Main.Enabled := True;
				Timer1.Enabled := False;
				Screen.Cursor := crDefault;
				Exit;
			end;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxViewKey.DataController.SetRecordCount(0);
					cxViewKey.BeginUpdate;
					cxViewKey_Tmp.DataController.SetRecordCount(0);
					cxViewKey_Tmp.BeginUpdate;
					ls_Rcrd := TStringList.Create;
					try
						iNum := 0;
						iCaCnt := 0;
						iToCnt := 0;

						giChartA1_TPage := 0;
						giChartA1_NPage := 0;
						iFCnt := 0; iCCnt := 0; iQCnt := 0; iTCnt := 0;
						iNPCnt := 0; iPerPCnt := 0; iNPer := 0; iCPer := 0;						
						sKeyNum := ''; sBrNo := '';//데이터 통합용
						for I := 0 to lst_Result.length - 1 do
						begin
							PerCancel := 0;
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if not Check_ID(GT_USERIF.ID, ls_Rcrd[2]) then
							begin
								ls_Rcrd.Insert(0, IntToStr(iNum + 1));

								if sKeyNum = '' then 
								begin
									sKeyNum := ls_Rcrd[4];
									sBrNo := Format('%s(%s)', [ls_Rcrd[2], ls_Rcrd[3]]);
								end else
								if (sKeyNum <> ls_Rcrd[4]) then
								begin
									iRow := cxViewKey_Tmp.DataController.AppendRecord;
									cxViewKey_Tmp.DataController.SetValue(iRow, 0, sBrNo);
									cxViewKey_Tmp.DataController.SetValue(iRow, 1, StrToCall(sKeyNum));
									cxViewKey_Tmp.DataController.SetValue(iRow, 2, iFCnt);
									cxViewKey_Tmp.DataController.SetValue(iRow, 3, iCCnt);
									cxViewKey_Tmp.DataController.SetValue(iRow, 4, iQCnt);
									cxViewKey_Tmp.DataController.SetValue(iRow, 5, iTCnt);
									cxViewKey_Tmp.DataController.SetValue(iRow, 6, iNPCnt);
									cxViewKey_Tmp.DataController.SetValue(iRow, 7, iPerPCnt);
									cxViewKey_Tmp.DataController.SetValue(iRow, 8, iNPer);
									cxViewKey_Tmp.DataController.SetValue(iRow, 9, iCPer);
									
									iFCnt := 0; iCCnt := 0; iQCnt := 0; iTCnt := 0;
									iNPCnt := 0; iPerPCnt := 0; iNPer := 0; iCPer := 0;						
									sKeyNum := ls_Rcrd[4];
									sBrNo := Format('%s(%s)', [ls_Rcrd[2], ls_Rcrd[3]]);
								end;
								
								cxViewKey.DataController.AppendRecord;
								cxViewKey.DataController.SetValue(iNum, 0, ls_Rcrd[0]);

								cxViewKey.DataController.SetValue(iNum, 1, ls_Rcrd[1]);
								cxViewKey.DataController.SetValue(iNum, 2, Format('%s(%s)', [ls_Rcrd[2], ls_Rcrd[3]]));
								cxViewKey.DataController.SetValue(iNum, 3, StrToCall(ls_Rcrd[4]));
								cxViewKey.DataController.SetValue(iNum, 4, ls_Rcrd[12]);    //요일
								cxViewKey.DataController.SetValue(iNum, 5, ls_Rcrd[5]);     //완료
								cxViewKey.DataController.SetValue(iNum, 6, ls_Rcrd[6]);     //취소
								cxViewKey.DataController.SetValue(iNum, 7, ls_Rcrd[7]);     //문의
								cxViewKey.DataController.SetValue(iNum, 8, ls_Rcrd[8]);     //총건수
								cxViewKey.DataController.SetValue(iNum, 9, ls_Rcrd[9]);     //신규
								cxViewKey.DataController.SetValue(iNum, 10, ls_Rcrd[10]);   //기존
								cxViewKey.DataController.SetValue(iNum, 11, ls_Rcrd[11]);   //신규비율
								iTot := StrToIntDef(ls_Rcrd[5], 0) + StrToIntDef(ls_Rcrd[6], 0);
								if iTot > 0 then
									PerCancel := 100 * StrToIntDef(ls_Rcrd[6], 0) div ( iTot );
								iCaCnt := iCaCnt + StrToIntDef(ls_Rcrd[6], 0);
								iToCnt := iToCnt + iTot;
								cxViewKey.DataController.SetValue(iNum, 12, PerCancel);     //취소율
								iNum := iNum + 1;

								iFCnt := iFCnt + StrToIntDef(ls_Rcrd[5], 0);
								iCCnt := iCCnt + StrToIntDef(ls_Rcrd[6], 0);
								iQCnt := iQCnt + StrToIntDef(ls_Rcrd[7], 0);
								iTCnt := iTCnt + StrToIntDef(ls_Rcrd[8], 0);

								iNPCnt   := iNPCnt + StrToIntDef(ls_Rcrd[9], 0);
								iPerPCnt := iPerPCnt + StrToIntDef(ls_Rcrd[10], 0);
								if iPerPCnt > 0 then
									iNPer    := RoundTo((iNPCnt / (iNPCnt + iPerPCnt)) * 100, 0);

								if ( iFCnt + iCCnt ) > 0 then
									iCPer :=  RoundTo((iCCnt / ( iFCnt + iCCnt )) * 100, 0);

								if ( I = lst_Result.length - 1) then
								begin
									iRow := cxViewKey_Tmp.DataController.AppendRecord;
									cxViewKey_Tmp.DataController.SetValue(iRow, 0, sBrNo);
									cxViewKey_Tmp.DataController.SetValue(iRow, 1, StrToCall(sKeyNum));
									cxViewKey_Tmp.DataController.SetValue(iRow, 2, iFCnt);
									cxViewKey_Tmp.DataController.SetValue(iRow, 3, iCCnt);
									cxViewKey_Tmp.DataController.SetValue(iRow, 4, iQCnt);
									cxViewKey_Tmp.DataController.SetValue(iRow, 5, iTCnt);
									cxViewKey_Tmp.DataController.SetValue(iRow, 6, iNPCnt);
									cxViewKey_Tmp.DataController.SetValue(iRow, 7, iPerPCnt);
									cxViewKey_Tmp.DataController.SetValue(iRow, 8, iNPer);
									cxViewKey_Tmp.DataController.SetValue(iRow, 9, iCPer);
								end;
							end;
						end;
					finally
						ls_Rcrd.Free;
						cxViewKey.EndUpdate;
						cxViewKey_Tmp.EndUpdate;
						iSortIndex := cxViewKey.GetColumnByFieldName('지사(코드)').Index;
						AIndex := iSortIndex;
						cxViewKey.Columns[iSortIndex].SortOrder := soAscending;
						cxViewKey.Columns[iSortIndex].SortIndex := 0;

						cxViewKey_Tmp.Columns[0].SortOrder := soAscending;  //리스트와 정렬 통일
						cxViewKey_Tmp.Columns[0].SortIndex := 0;
						btnChartA1.Click;
					end;
				end	else
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSI);
				end;
			end;
		finally
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			xdom := Nil;
		end;
	except
		on e: Exception do
		begin
			ls_Rcrd.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_STT.RequestDataAreaCall;
var
	ErrCode: integer;
	dt_sysdate2, msg, sTmp: string;

	XmlData, Param, ErrMsg: string;
	ls_Rcrd: TStringList;
	I, j, iTmp : Integer;
	iRow, iColAdd: integer;

	ls_MSG_Err : string;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	iCol_AreaName, {iCol_Ratio,} iCol_TCallCnt, iCol_FCallCnt, iCol_QCallCnt, iCol_CCallCnt, iCol_CCallRatio : Integer;
	iTmp1, iTmp2, iTmp3, iTmp4, iTmp5, iTmp6 : integer;
	iFCnt, iCCnt, iQCnt, iTCnt, iTCharge : integer;
	sCheckTime : string; //시간대가 변경되었는지 확인하기 위한 변수

	iTotSum : integer;
begin
	Try
		if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
		begin
			msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
					+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
			GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
			Exit;
		end;

		if fGetChk_Search_HdBrNo('시간대별 출/도지역 통계') then Exit;

		dt_sysdate2 := frm_main.func_sysdate;

		if Trim(dt_sysdate2) = '' then
		begin
			GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
			Exit;
		end;

		if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
			2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
		begin
			GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
			Exit;
		end;

		i11_0913TCnt := 0; i11_0913FCnt := 0; i11_0913CCnt := 0; i11_0913QCnt := 0; 
		i11_1317TCnt := 0; i11_1317FCnt := 0; i11_1317CCnt := 0; i11_1317QCnt := 0;
		i11_1820TCnt := 0; i11_1820FCnt := 0; i11_1820CCnt := 0; i11_1820QCnt := 0; 
		i11_21TCnt   := 0; i11_21FCnt   := 0; i11_21CCnt   := 0; i11_21QCnt   := 0;
		i11_22TCnt   := 0; i11_22FCnt   := 0; i11_22CCnt   := 0; i11_22QCnt   := 0; 
		i11_23TCnt   := 0; i11_23FCnt   := 0; i11_23CCnt   := 0; i11_23QCnt   := 0;
		i11_00TCnt   := 0; i11_00FCnt   := 0; i11_00CCnt   := 0; i11_00QCnt   := 0; 
		i11_01TCnt   := 0; i11_01FCnt   := 0; i11_01CCnt   := 0; i11_01QCnt   := 0;
		i11_02TCnt   := 0; i11_02FCnt   := 0; i11_02CCnt   := 0; i11_02QCnt   := 0; 
		i11_0304TCnt := 0; i11_0304FCnt := 0; i11_0304CCnt := 0; i11_0304QCnt := 0; 
		i11_0408TCnt := 0; i11_0408FCnt := 0; i11_0408CCnt := 0; i11_0408QCnt := 0; 

		iFCnt := 0; iCCnt := 0; iQCnt := 0; iTCnt := 0; iTCharge := 0;
		iTotSum := 0;

		FAreaTimeCall.Time .Clear;
		FAreaTimeCall.FCall.Clear;
		FAreaTimeCall.CCall.Clear;
		FAreaTimeCall.QCall.Clear;
		FAreaTimeCall.TCall.Clear;

		cxGridBandedTableView12.DataController.SetRecordCount(0);
		cxGridA12C1ChartView1.DataController.SetRecordCount(0);
		cxGridA12C2ChartALL.DataController.SetRecordCount(0);
		
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := GT_SEL_BRNO.HDNO
		else
			Param := GT_USERIF.HD;

		if (GT_USERIF.lv='60') and (cbbA12.itemindex=0) then
			Param := Param + '│' + ''
		else
			Param := Param + '│' + Trim(Copy(cbbA12.Text,1,5));

		if cbb1A12.text = '전체' then
			Param := Param + '│' + ''
		else
			Param := Param + '│' + cbb1A12.text;

		if cbb2A12.text = '전체' then
			Param := Param + '│' + ''
		else
			Param := Param + '│' + cbb2A12.text;

		Param := Param + '│' + StringReplace(cxDtStartA12.text,'-','',[rfReplaceAll]);
		Param := Param + '│' + StringReplace(cxDtEndA12.text,'-','',[rfReplaceAll]);

		Param := Param + '│' + IntToStr(cbA12.ItemIndex);
		Param := Param + '│' + IntToStr(cbA12_1.ItemIndex);

		Screen.Cursor := crHourGlass;
		Timer1.Enabled := True;
		Frm_Main.Enabled := False;
		if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
		begin
			if not RequestBase(GetSel06('GET_LIST_AREA_STAT', 'STAT_A01.GET_LIST_AREA_STAT', '1000', Param), XmlData, ErrCode, ErrMsg, 600000) then
			begin
				Frm_Flash.hide;
				Timer1.Enabled := False;
				Application.ProcessMessages;

				GMessagebox(Format('시간대별 출/도지역 통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Frm_Main.Enabled := True;
				Screen.Cursor := crDefault;
				Exit;
			end;
		end;

		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then
			begin
				Frm_Flash.hide;
				Frm_Main.Enabled := True;
				Timer1.Enabled := False;
				Screen.Cursor := crDefault;
				Exit;
			end;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					if cbA12_1.ItemIndex = 0 then
					begin
						cxGridBandedTableView12.Columns[3].Visible := False;
						cxGridBandedTableView12.Bands[3].Visible := False;
					end else
					begin
						cxGridBandedTableView12.Columns[3].Visible := True;
						cxGridBandedTableView12.Bands[3].Visible := True;
					end;
					
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxGridBandedTableView12.BeginUpdate;
					ls_Rcrd := TStringlist.Create;
					cbKindA12_GuDong.Tag := 99;
					cbKindA12_GuDong.Properties.Items.Clear;
					cbKindA12_GuDong.Properties.Items.Add('전체');
					try
						iCol_AreaName   := 76;//cxGridBandedTableView12.GetBandColumnByFieldName('지역정보').Index;
//						iCol_Ratio      := cxGridBandedTableView12.GetColumnByFieldName('전체비율').Index;
						iCol_TCallCnt   := 70;//cxGridBandedTableView12.GetColumnByFieldName('전체콜수').Index;
						iCol_FCallCnt   := 71;//cxGridBandedTableView12.GetColumnByFieldName('총완료건수').Index;
						iCol_CCallCnt   := 72;//cxGridBandedTableView12.GetColumnByFieldName('총취소건수').Index;
						iCol_QCallCnt   := 73;//cxGridBandedTableView12.GetColumnByFieldName('총문의건수').Index;
						iCol_CCallRatio := 75;//cxGridBandedTableView12.GetColumnByFieldName('총취소율').Index;
						sCheckTime := '';
						
						for I := 0 to lst_Result.length - 1 do
						begin
//            시간│시도│시군구│읍면동│완료건수│취소건수│문의건수│전체건수│요금
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if (sCheckTime <> '') and (sCheckTime <> ls_Rcrd[0]) then
							begin 
								cxGridBandedTableView12.EndUpdate;
								cxGridBandedTableView12.BeginUpdate;
							end;
							
							Try
								sTmp := ls_Rcrd[2]+ls_Rcrd[3];//ls_Rcrd[1]+ls_Rcrd[2]+ls_Rcrd[3];
								sCheckTime := ls_Rcrd[0];
								iRow := cxGridBandedTableView12.DataController.FindRecordIndexByText(0, iCol_AreaName, Trim(sTmp), False, True, True)
							except on E: Exception do
								begin
									iRow := -1;
								end;
							end;
							if iRow = -1 then	 
							begin
								iRow := cxGridBandedTableView12.DataController.AppendRecord;
								cbKindA12_GuDong.properties.Items.add(sTmp);
							end;

							cxGridBandedTableView12.DataController.Values[iRow, 0] := iRow + 1;    //순서
							cxGridBandedTableView12.DataController.Values[iRow, 1] := ls_Rcrd[1];  //시도
							cxGridBandedTableView12.DataController.Values[iRow, 2] := ls_Rcrd[2];  //시군구
							cxGridBandedTableView12.DataController.Values[iRow, 3] := ls_Rcrd[3];  //읍면동

							//시간대에 따른 Col 설정
							if (ls_Rcrd[0] = '09') or (ls_Rcrd[0] = '10') or (ls_Rcrd[0] = '11') or (ls_Rcrd[0] = '12') then 
							begin
								iColAdd := 4;
								FAreaTimeCall.Time.add('0913');
							end else
							if (ls_Rcrd[0] = '13') or (ls_Rcrd[0] = '14') or (ls_Rcrd[0] = '15') or (ls_Rcrd[0] = '16') 
							or (ls_Rcrd[0] = '17') then
							begin
								iColAdd := 10;
								FAreaTimeCall.Time.add('1317');
							end else
							if (ls_Rcrd[0] = '18') or (ls_Rcrd[0] = '19') or (ls_Rcrd[0] = '20') then 
							begin
								iColAdd := 16;
								FAreaTimeCall.Time.add('1820');
							end else
							if  ls_Rcrd[0] = '21' then begin iColAdd := 22; FAreaTimeCall.Time.add('21'); end else   //32 - 7 = 25 - 7 = 18
							if  ls_Rcrd[0] = '22' then begin iColAdd := 28; FAreaTimeCall.Time.add('22'); end else   //37 - 8 = 29 - 8 = 21
							if  ls_Rcrd[0] = '23' then begin iColAdd := 34; FAreaTimeCall.Time.add('23'); end else   //42 - 9 = 33 - 9 = 24
							if  ls_Rcrd[0] = '00' then begin iColAdd := 40; FAreaTimeCall.Time.add('00'); end else   //47 - 10 = 37
							if  ls_Rcrd[0] = '01' then begin iColAdd := 46; FAreaTimeCall.Time.add('01'); end else
							if  ls_Rcrd[0] = '02' then begin iColAdd := 52; FAreaTimeCall.Time.add('02'); end else
							if (ls_Rcrd[0] = '03') or (ls_Rcrd[0] = '04') then begin iColAdd := 58; FAreaTimeCall.Time.add('0304'); end else 
							if (ls_Rcrd[0] = '05') or (ls_Rcrd[0] = '06') or (ls_Rcrd[0] = '07') or (ls_Rcrd[0] = '08') then
							begin
								iColAdd := 64;
								FAreaTimeCall.Time.add('0408'); 
							end;

							iTmp1 := 0;	iTmp2 := 0;	iTmp3 := 0;	iTmp4 := 0;	iTmp5 := 0;

							if cxGridBandedTableView12.DataController.Values[iRow, iColAdd    ] <> Null then												 
								iTmp1 := StrToIntDef(cxGridBandedTableView12.DataController.Values[iRow, iColAdd    ],0);  // 전체건수
							if cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 1] <> Null then												 
								iTmp2 := StrToIntDef(cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 1],0);  // 완료건수
							if cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 2] <> Null then												 
								iTmp3 := StrToIntDef(cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 2],0);  // 취소건수
							if cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 3] <> Null then												 
								iTmp4 := StrToIntDef(cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 3],0);  // 문의건수
							if cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 4] <> Null then												 
								iTmp5 := StrToIntDef(cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 4],0);  // 요금          

							cxGridBandedTableView12.DataController.Values[iRow, iColAdd    ] := FormatFloat('#,##0', iTmp1 + strtoint(ls_Rcrd[7]));//H13_1 전체건수
							cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 1] := FormatFloat('#,##0', iTmp2 + strtoint(ls_Rcrd[4]));//H13_2 완료건수
							cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 2] := FormatFloat('#,##0', iTmp3 + strtoint(ls_Rcrd[5]));//H13_3 취소건수
							cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 3] := FormatFloat('#,##0', iTmp4 + strtoint(ls_Rcrd[6]));//H13_4 문의건수
							cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 4] := FormatFloat('#,##0', iTmp5 + strtoint(ls_Rcrd[8]));//H13_5 요금

							FAreaTimeCall.TCall.Add(ls_Rcrd[7]);
							FAreaTimeCall.FCall.Add(ls_Rcrd[4]);
							FAreaTimeCall.CCall.Add(ls_Rcrd[5]);
							FAreaTimeCall.QCall.Add(ls_Rcrd[6]);
																		
							iTmp1 := StrToIntDef(cxGridBandedTableView12.DataController.Values[iRow, iColAdd    ],0);  // 전체건수
							iTmp2 := StrToIntDef(cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 1],0);  // 완료건수
							iTmp3 := StrToIntDef(cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 2],0);  // 취소건수
							iTmp4 := StrToIntDef(cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 3],0);  // 문의건수
							iTmp5 := StrToIntDef(cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 4],0);  // 요금

							if iTmp3 = 0 then sTmp := '0%'
							else sTmp := FloatToStr(roundto((iTmp3 / iTmp1 * 100),-1)) + '%';
							cxGridBandedTableView12.DataController.Values[iRow, iColAdd + 5] := sTmp;//H13_5 요금

							/////////합계
							iTCnt := iTCnt + StrToIntDef(ls_Rcrd[7],0);         // 전체건수
							iFCnt := iFCnt + StrToIntDef(ls_Rcrd[4],0);         // 완료건수
							iCCnt := iCCnt + StrToIntDef(ls_Rcrd[5],0);         // 취소건수
							iQCnt := iQCnt + StrToIntDef(ls_Rcrd[6],0);         // 문의건수
							iTCharge := iTCharge + StrToIntDef(ls_Rcrd[8],0);   // 요금
							
							if iCCnt = 0 then sTmp := '0%'
							else sTmp := FloatToStr(roundto((iCCnt / iTCnt * 100),-1)) + '%';

							cxGridBandedTableView12.DataController.Values[iRow, 74] := FormatFloat('#,##0', iTCharge);//요금합계
							cxGridBandedTableView12.DataController.Values[iRow, iCol_TCallCnt] := FormatFloat('#,##0', iTCnt);// + '건';//총콜수
							cxGridBandedTableView12.DataController.Values[iRow, iCol_FCallCnt] := FormatFloat('#,##0', iFCnt);// + '건';//총완료건수
							cxGridBandedTableView12.DataController.Values[iRow, iCol_CCallCnt] := FormatFloat('#,##0', iCCnt);;//총취소건수
							cxGridBandedTableView12.DataController.Values[iRow, iCol_QCallCnt] := FormatFloat('#,##0', iQCnt);;//총문의건수
							cxGridBandedTableView12.DataController.Values[iRow, iCol_CCallRatio] := sTmp;//총취소율

							cxGridBandedTableView12.DataController.Values[iRow, iCol_AreaName] := Trim(ls_Rcrd[2]+ls_Rcrd[3]);//Trim(ls_Rcrd[1]+ls_Rcrd[2]+ls_Rcrd[3]);//지역정보
						end;
					finally
						ls_Rcrd.Free;
						cbKindA12_GuDong.ItemIndex := 0;
						cxGridBandedTableView12.EndUpdate;
						cxGridBandedTableView12.Columns[70].SortOrder := soDescending;   //전체콜수
						cxGridBandedTableView12.BeginUpdate;
						for i := 0 to cxGridBandedTableView12.DataController.RecordCount -1 do
						begin
							cxGridBandedTableView12.ViewData.Records[i].Values[0] := i + 1;
						end;
						cxGridBandedTableView12.EndUpdate;	
						btnChartA12.Click;
					end;
				end	else
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSI);
				end;
			end;
		finally
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			xdom := Nil;
		end;
	except
		on e: Exception do
		begin
			ls_Rcrd.Free;
			cxGridBandedTableView12.EndUpdate;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_STT.RequestDataBr; // 자사통계
var
  msg: string;
  StrList, slList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  j, k, iRow, i : Integer;
  tmpCnt, iCnt, iSortIndex : integer;
  tmpCntStr: string;
  tmpStr: string;
  ArrSt: array of string;
begin
	Try
		if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
		begin
			msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
					+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
			GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
			Exit;
		end;

		if fGetChk_Search_HdBrNo('자사통계') then Exit;

		dt_sysdate2 := frm_main.func_sysdate;

		if Trim(dt_sysdate2) = '' then
		begin
			GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
			Exit;
		end;

		if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
			2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
		begin
			GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
			Exit;
		end;

		if (cbb3.itemindex <> 0) and (Trim(edtA4.Text) <> '') and (Length(edtA4.Text)<3) then
		begin
			GMessagebox('검색을 수행하려면 3자이상 입력해야 합니다.', CDMSI);
			Exit;
		end;

		if (cbb3.itemindex = 0) or (cbb3.ItemIndex = 1) then
			Param := '1'
		else
			Param := '2';

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := Param + '│' + GT_SEL_BRNO.HDNO
		else
			Param := Param + '│' + GT_USERIF.HD;

		if (GT_USERIF.lv='60') and (cbbA4.itemindex=0) then
			Param := Param + '│' + '%'
		else
			Param := Param + '│' + Trim(Copy(cbbA4.Text,1,5));
			// GT_USERIF.BR;

		Param := Param + '│';
		Param := Param + '│' + '%' + Param_Filtering(edtA4.text) +'%';

		Param := Param + '│' + StringReplace(cxDtStartA4.text,'-','',[rfReplaceAll]) + '090000';
		Param := Param + '│' + StringReplace(cxDtEndA4.text,'-','',[rfReplaceAll]) + '090000';

		slList := TStringList.Create;
		Screen.Cursor := crHourGlass;
		Timer1.Enabled := True;
		Frm_Main.Enabled := False;
		try
			if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
			begin
				if not RequestBasePaging(GetSel05('GETBRSTT', 'STT.GET_BR_STT', '1000', Param), slList, ErrCode, ErrMsg, 600000) then
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox(Format('자사통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
					Frm_Main.Enabled := True;
					Screen.Cursor := crDefault;
					Exit;
				end;
			end else
			begin
				if not RequestBasePaging(GetSel05('GETBRSTT', 'STT_8282SN.GET_BR_STT', '1000', Param), slList, ErrCode, ErrMsg, 600000) then
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox(Format('자사통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
					Screen.Cursor := crDefault;
					Frm_Main.Enabled := True;
					Exit;
				end;
			end;
      cxGridA4View1.DataController.SetRecordCount(0);
      cxGridA4C1ChartView1.DataController.SetRecordCount(0);

			StrList := TStringList.Create;
			iCnt := 1;
			for j := 0 to slList.Count - 1 do
			begin
				Application.ProcessMessages;
				xmlData := slList.Strings[j];

				if Pos('<Data Count="',xmlData)>0 then
				begin
					tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
					if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
					tmpCnt:=StrToIntDef(tmpCntStr,0);
				end;
				if tmpCnt<1 then
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSI);
					Screen.Cursor := crDefault;
					Frm_Main.Enabled := True;
					Exit;
				end;

				cxGridA4View1.BeginUpdate;
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
							iRow := cxGridA4View1.DataController.AppendRecord;
							if k=tmpCnt-1 then
								SetGridData(cxGridA4View1, iRow, 0, '')
							else
								SetGridData(cxGridA4View1, iRow, 0, IntToStr(iCnt));
							SetGridData(cxGridA4View1, iRow, 1, StrList.Strings[1]);
							if trim(StrList.Strings[3]) <>'' then
								SetGridData(cxGridA4View1, iRow, 2, StrList.Strings[2] + ' (' + StrList.Strings[3]+')')
							else
								SetGridData(cxGridA4View1, iRow, 2, StrList.Strings[2]);
							SetGridData(cxGridA4View1, iRow, 3, '발주');
							SetGridData(cxGridA4View1, iRow, 4, StrList.Strings[4]);
							SetGridData(cxGridA4View1, iRow, 5, StrList.Strings[5]);
							SetGridData(cxGridA4View1, iRow, 6, StrList.Strings[6]);
							SetGridData(cxGridA4View1, iRow, 7, StrList.Strings[2]);

							iRow := cxGridA4View1.DataController.AppendRecord;
							if k=tmpCnt-1 then
								SetGridData(cxGridA4View1, iRow, 0, '')
							else
								SetGridData(cxGridA4View1, iRow, 0, IntToStr(k+1));
							SetGridData(cxGridA4View1, iRow, 1, StrList.Strings[1]);
							if trim(StrList.Strings[3]) <>'' then
								SetGridData(cxGridA4View1, iRow, 2, StrList.Strings[2] + ' (' + StrList.Strings[3]+')')
							else
								SetGridData(cxGridA4View1, iRow, 2, StrList.Strings[2]);
							SetGridData(cxGridA4View1, iRow, 3, '수주');
							SetGridData(cxGridA4View1, iRow, 4, StrList.Strings[7]);
							SetGridData(cxGridA4View1, iRow, 5, StrList.Strings[8]);
							SetGridData(cxGridA4View1, iRow, 6, StrList.Strings[9]);
							SetGridData(cxGridA4View1, iRow, 7, StrList.Strings[2]);

							iRow := cxGridA4View1.DataController.AppendRecord;
							if k=tmpCnt-1 then
								SetGridData(cxGridA4View1, iRow, 0, '')
							else
								SetGridData(cxGridA4View1, iRow, 0, IntToStr(k+1));
							SetGridData(cxGridA4View1, iRow, 1, StrList.Strings[1]);
							if trim(StrList.Strings[3]) <>'' then
								SetGridData(cxGridA4View1, iRow, 2, StrList.Strings[2] + ' (' + StrList.Strings[3]+')')
							else
								SetGridData(cxGridA4View1, iRow, 2, StrList.Strings[2]);
							SetGridData(cxGridA4View1, iRow, 3, '발주비율(%)');
							SetGridData(cxGridA4View1, iRow, 4, StrList.Strings[10]);
							SetGridData(cxGridA4View1, iRow, 5, StrList.Strings[11]);
							SetGridData(cxGridA4View1, iRow, 6, StrList.Strings[12]);
							SetGridData(cxGridA4View1, iRow, 7, StrList.Strings[2]);
							Inc(iCnt);
						end;
					end;
				finally
					cxGridA4View1.endupdate;

          AIndex := cxGridA4View1.ViewData.RowCount - 1;
          for I := cxGridA4View1.ViewData.FixedBottomRowCount - 1 downto 0 do
            if (cxGridA4View1.ViewData.Rows[AIndex].IsData) and
               (TcxGridDataRow(cxGridA4View1.ViewData.Rows[AIndex]).FixedState = rfsFixedToBottom) then
              TcxGridDataRow(cxGridA4View1.ViewData.Rows[AIndex]).FixedState := rfsNotFixed
            else
              Break;

          For i:=0 to cxGridA4View1.ViewData.RowCount-1 do
          begin
            if ( cxGridA4View1.ViewData.Rows[i].Values[2] = '[합계]' ) And
               ( cxGridA4View1.ViewData.Rows[i].Values[3] = '발주' ) then
              (cxGridA4View1.ViewData.Rows[I] as TcxGridDataRow).FixedState:=rfsFixedToBottom;
          end;

          For i:=0 to cxGridA4View1.ViewData.RowCount-1 do
          begin
            if ( cxGridA4View1.ViewData.Rows[i].Values[2] = '[합계]' ) And
               ( cxGridA4View1.ViewData.Rows[i].Values[3] = '수주' ) then
              (cxGridA4View1.ViewData.Rows[I] as TcxGridDataRow).FixedState:=rfsFixedToBottom;
          end;

          For i:=0 to cxGridA4View1.ViewData.RowCount-1 do
          begin
            if ( cxGridA4View1.ViewData.Rows[i].Values[2] = '[합계]' ) And
               ( cxGridA4View1.ViewData.Rows[i].Values[3] = '발주비율(%)' ) then
              (cxGridA4View1.ViewData.Rows[I] as TcxGridDataRow).FixedState:=rfsFixedToBottom;
           end;

         // 합계를 1개만 표시
         (cxGridA4View1.ViewData.Rows[cxGridA4View1.DataController.RecordCount-3] as TcxGridDataRow).Values[2] := '';
         (cxGridA4View1.ViewData.Rows[cxGridA4View1.DataController.RecordCount-1] as TcxGridDataRow).Values[2] := '';

          iSortIndex := cxGridA4View1.GetColumnByFieldName('지사').Index;
          AIndex := iSortIndex;
          cxGridA4View1.Columns[iSortIndex].SortOrder := soAscending;
          cxGridA4View1.Columns[iSortIndex].SortIndex := 0;

          // 순번 다시 처리
          For i:=0 to cxGridA4View1.ViewData.RowCount-1 do
          begin
            (cxGridA4View1.ViewData.Rows[i] as TcxGridDataRow).Values[0] := IntToStr((i div 3) + 1);
          end;

         // 합계쪽 순번 제거
         (cxGridA4View1.ViewData.Rows[cxGridA4View1.DataController.RecordCount-3] as TcxGridDataRow).Values[0] := '';
         (cxGridA4View1.ViewData.Rows[cxGridA4View1.DataController.RecordCount-2] as TcxGridDataRow).Values[0] := '';
         (cxGridA4View1.ViewData.Rows[cxGridA4View1.DataController.RecordCount-1] as TcxGridDataRow).Values[0] := '';

					btnChartA4.Click;
				end;
			end;
		finally
			StrList.Free;
			slList.Free;
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
		end;
	except
		StrList.Free;
		slList.Free;
		Frm_Flash.hide;
		Frm_Main.Enabled := True;
		Timer1.Enabled := False;
		Screen.Cursor := crDefault;
	End;
end;

procedure TFrm_STT.RequestDataBrCallAcc;
var
	XmlData, Param, ErrMsg, ls_MSG_Err, dt_sysdate2 : string;
	ErrCode, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	strHdNo, strBrNo, msg : string;
	iNum , PerCancel, iTot, iSortIndex : Integer;
begin
	Try
		if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
		begin
			msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
					+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
			GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
			Exit;
		end;

		if fGetChk_Search_HdBrNo('지사별콜정산통계') then Exit;

		dt_sysdate2 := frm_main.func_sysdate;

		if Trim(dt_sysdate2) = '' then
		begin
			GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
			Exit;
		end;

		if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
			2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
		begin
			GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
			Exit;
		end;

		if (cbb15.itemindex <> 0) and (Trim(edtA15.Text) <> '') and (Length(edtA15.Text)<3) then
		begin
			GMessagebox('검색을 수행하려면 3자이상 입력해야 합니다.', CDMSI);
			Exit;
		end;

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := GT_SEL_BRNO.HDNO
		else
			Param := GT_USERIF.HD;

		if (GT_USERIF.lv='60') and (cbbA15.itemindex=0) then
			Param := Param + '│'
		else
			Param := Param + '│' + Trim(Copy(cbbA15.Text,1,5));

		if (cbb15.itemindex = 0) or (cbb15.ItemIndex = 1) then
			Param := Param + '│0'
		else
			Param := Param + '│1';

		Param := Param + '│' + Param_Filtering(edtA15.text);

		Param := Param + '│' + StringReplace(cxDtStartA15.text,'-','',[rfReplaceAll]);
		Param := Param + '│' + StringReplace(cxDtEndA15.text,'-','',[rfReplaceAll]);

		Screen.Cursor := crHourGlass;

		Timer1.Enabled := True;
		Frm_Main.Enabled := False;

		if not RequestBase(GetSel06('GET_LIST_BRANCH_CALL_STAT', 'STAT_A01.GET_LIST_BRANCH_CALL_STAT', '1000', Param), XmlData, ErrCode, ErrMsg, 600000) then
		begin
			Frm_Flash.hide;
			Timer1.Enabled := False;
			Application.ProcessMessages;
			GMessagebox(Format('지사별 콜정산 통계 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Frm_Main.Enabled := True;
			Screen.Cursor := crDefault;
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then
			begin
				Frm_Flash.hide;
				Frm_Main.Enabled := True;
				Timer1.Enabled := False;
				Screen.Cursor := crDefault;
				Exit;
			end;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxGridA15View1.DataController.SetRecordCount(0);
					cxGridA15View1.BeginUpdate;
					ls_Rcrd := TStringList.Create;
					try
						iNum := 0;
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if not Check_ID(GT_USERIF.ID, ls_Rcrd[2]) then
							begin
								ls_Rcrd.Insert(0, IntToStr(iNum + 1));

								cxGridA15View1.DataController.AppendRecord;
								cxGridA15View1.DataController.SetValue(iNum,  0, ls_Rcrd[0]);
								cxGridA15View1.DataController.SetValue(iNum,  1, ls_Rcrd[1]);                                   // 본사
								cxGridA15View1.DataController.SetValue(iNum,  2, Format('%s(%s)', [ls_Rcrd[2], ls_Rcrd[3]]));   // 지사명, 지사코드
								cxGridA15View1.DataController.SetValue(iNum,  3, StrToCall(ls_Rcrd[4]));                        // 대표번호
								cxGridA15View1.DataController.SetValue(iNum,  4, StrToIntDef(ls_Rcrd[5], 0));                                   // 총건수
								cxGridA15View1.DataController.SetValue(iNum,  5, StrToIntDef(ls_Rcrd[6], 0));                                   // 완료건수
								cxGridA15View1.DataController.SetValue(iNum,  6, StrToIntDef(ls_Rcrd[7], 0));                                   // 취소건수
								cxGridA15View1.DataController.SetValue(iNum,  7, StrToIntDef(ls_Rcrd[8], 0));                                   // 취소율(%)
								cxGridA15View1.DataController.SetValue(iNum,  8, StrToIntDef(ls_Rcrd[9], 0));                                   // 문의건수
								cxGridA15View1.DataController.SetValue(iNum,  9, StrToIntDef(ls_Rcrd[10], 0));                                  // 신규고객(명)
								cxGridA15View1.DataController.SetValue(iNum, 10, StrToIntDef(ls_Rcrd[11], 0));                                  // 기존고객(명)
								cxGridA15View1.DataController.SetValue(iNum, 11, StrToIntDef(ls_Rcrd[12], 0));                                  // 신규비율(%)
								cxGridA15View1.DataController.SetValue(iNum, 12, StrToIntDef(ls_Rcrd[13], 0));                                  // 운행요금
								cxGridA15View1.DataController.SetValue(iNum, 13, StrToIntDef(ls_Rcrd[14], 0));                                  // 수수료

								iNum := iNum + 1;
							end;
						end;
					finally
						ls_Rcrd.Free;
						cxGridA15View1.EndUpdate;
            iSortIndex := cxGridA15View1.GetColumnByFieldName('지사(코드)').Index;
            AIndex := iSortIndex;
            cxGridA15View1.Columns[iSortIndex].SortOrder := soAscending;
            cxGridA15View1.Columns[iSortIndex].SortIndex := 0;
						btnChartA15.Click;
					end;
				end	else
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSI);
				end;
			end;
		finally
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			xdom := Nil;
		end;
	except
		on e: Exception do
		begin
			ls_Rcrd.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_STT.RequestDataCommCall; // 공유콜통계
var
  msg : string;
  StrList, slList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
	j, iLoop : Integer;
  tmpCnt, iCnt : integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
	iRow, iCol1, iCol2: integer;
	slTmp : TStringList;
begin
	Try
		if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
		begin
			msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
					+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
			GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
			Exit;
		end;

		if fGetChk_Search_HdBrNo('공유콜통계') then Exit;

		dt_sysdate2 := frm_main.func_sysdate;

		if Trim(dt_sysdate2) = '' then
		begin
			GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
			Exit;
		end;

		if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
			2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
		begin
			GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
			Exit;
		end;

		if (cbb1A5.itemindex <> 0) and (Trim(edtA5.Text) <> '') and (Length(edtA5.Text)<3) then
		begin
			GMessagebox('검색을 수행하려면 3자이상 입력해야 합니다.', CDMSI);
			Exit;
		end;

		if (cbb1A5.itemindex = 0) or (cbb1A5.ItemIndex = 2) then
			Param := '1'
		else
			Param := '2';

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := Param + '│' + GT_SEL_BRNO.HDNO
		else
			Param := Param + '│' + GT_USERIF.HD;

		if (GT_USERIF.lv='60') and (cbbA5.itemindex=0) then
			Param := Param + '│' + '%'
		else
			Param := Param + '│' + Trim(Copy(cbbA5.Text,1,5));

		Param := Param + '│';

		if cbbA5.ItemIndex > 0 then
			Param := Param + '│' + Trim(Copy(cbbA5.Text,1,5)) +'%'
		else
			Param := Param + '│' + Param_Filtering(edtA5.text) +'%';

		Param := Param + '│' + StringReplace(cxDtStartA5.text,'-','',[rfReplaceAll]) + '090000';
		Param := Param + '│' + StringReplace(cxDtEndA5.text,'-','',[rfReplaceAll]) + '090000';

		slList := TStringList.Create;
		StrList := TStringList.Create;
		Screen.Cursor := crHourGlass;
		Timer1.Enabled := True;
		Frm_Main.Enabled := False;
		try
			if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
			begin
				if not RequestBasePaging(GetSel05('GETCOMSTT', 'STT.GET_COM_STT_NEW_XE', '1000', Param), slList, ErrCode, ErrMsg, 600000) then
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox(Format('공유콜통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
					Frm_Main.Enabled := True;
					Screen.Cursor := crDefault;
					Exit;
				end;
			end else
			begin
				if not RequestBasePaging(GetSel05('GETCOMSTT', 'STT_8282SN.GET_COM_STT_NEW_XE', '1000', Param), slList, ErrCode, ErrMsg, 600000) then
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox(Format('공유콜통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
					Frm_Main.Enabled := True;
					Screen.Cursor := crDefault;
					Exit;
				end;
			end;

      cxGridA5View1.DataController.SetRecordCount(0);
      Screen.Cursor := crHourGlass;
      iCnt := 1;
      for j := 0 to slList.Count - 1 do
      begin
        Application.ProcessMessages;
        xmlData := slList.Strings[j];

				if Pos('<Data Count="',xmlData) > 0 then
				begin
					tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
					if Pos('"',tmpCntStr) > 0 then tmpCntStr := Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
					tmpCnt:=StrToIntDef(tmpCntStr,0);
				end;
				if tmpCnt < 1 then
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSI);
					Screen.Cursor := crDefault;
					Frm_Main.Enabled := True;
					Exit;
				end;

				cxGridA5View1.BeginUpdate;
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

							iRow := cxGridA5View1.DataController.AppendRecord;
							if k = tmpCnt-1 then
								SetGridData(cxGridA5View1, iRow, 0, '')
							else
								SetGridData(cxGridA5View1, iRow, 0, IntToStr(iCnt));
							SetGridData(cxGridA5View1, iRow, 1, StrList.Strings[1]);
							if trim(StrList.Strings[3]) <>'' then
								SetGridData(cxGridA5View1, iRow, 2, StrList.Strings[2] + ' (' + StrList.Strings[3]+')')
							else
								SetGridData(cxGridA5View1, iRow, 2, StrList.Strings[2]);
							SetGridData(cxGridA5View1, iRow, 3, '발주/자사발주');
							SetGridData(cxGridA5View1, iRow, 4, StrList.Strings[4]);
							SetGridData(cxGridA5View1, iRow, 5, StrList.Strings[5]);
							SetGridData(cxGridA5View1, iRow, 6, StrList.Strings[6]);
							SetGridData(cxGridA5View1, iRow, 7, StrList.Strings[7]);
							SetGridData(cxGridA5View1, iRow, 8, StrList.Strings[8]);
							SetGridData(cxGridA5View1, iRow, 9, StrList.Strings[9]);
							SetGridData(cxGridA5View1, iRow, 10, StrList.Strings[10]);
							/////////////////////분리//////////////////////////////////
							if StrList.Strings[2] <> '[합계]' then
							begin
								slTmp := TStringList.Create;
								Try
									for iLoop := 0 to 5 do
									begin
										if iLoop = 0 then
										begin
											iCol1 := iLoop + 11;
											iCol2 := iLoop + 12;
										end	else
										begin
											iCol1 := iCol2 + 1;
											iCol2 := iCol1 + 1;
										end;
										slTmp.Delimiter := '/';
										slTmp.DelimitedText := StrList.Strings[iLoop + 4];
										SetGridData(cxGridA5View1, iRow, iCol1, Trim(slTmp[0]));
										SetGridData(cxGridA5View1, iRow, iCol2, Trim(slTmp[1]));
									end;
								finally
									slTmp.Free;
								end;
              end;
							/////////////////////분리//////////////////////////////////
							iRow := cxGridA5View1.DataController.AppendRecord;
							if k=tmpCnt-1 then
								SetGridData(cxGridA5View1, iRow, 0, '')
							else
								SetGridData(cxGridA5View1, iRow, 0, IntToStr(k+1));
							SetGridData(cxGridA5View1, iRow, 1, StrList.Strings[1]);
							if trim(StrList.Strings[3]) <>'' then
								SetGridData(cxGridA5View1, iRow, 2, StrList.Strings[2] + ' (' + StrList.Strings[3]+')')
							else
								SetGridData(cxGridA5View1, iRow, 2, StrList.Strings[2]);
							SetGridData(cxGridA5View1, iRow, 3, '수주/자사수주');
							SetGridData(cxGridA5View1, iRow, 4, StrList.Strings[11]);
							SetGridData(cxGridA5View1, iRow, 5, StrList.Strings[12]);
							SetGridData(cxGridA5View1, iRow, 6, StrList.Strings[13]);
							SetGridData(cxGridA5View1, iRow, 7, StrList.Strings[14]);
							SetGridData(cxGridA5View1, iRow, 8, StrList.Strings[15]);
							SetGridData(cxGridA5View1, iRow, 9, StrList.Strings[16]);
							SetGridData(cxGridA5View1, iRow, 10, StrList.Strings[17]);

							/////////////////////분리//////////////////////////////////
							if StrList.Strings[2] <> '[합계]' then
							begin
								slTmp := TStringList.Create;
								Try
									for iLoop := 0 to 5 do
									begin
										if iLoop = 0 then
										begin
											iCol1 := iLoop + 11;
											iCol2 := iLoop + 12;
										end else
										begin
											iCol1 := iCol2 + 1;
											iCol2 := iCol1 + 1;
										end;
										slTmp.Delimiter := '/';
										slTmp.DelimitedText := StrList.Strings[iLoop + 11];
										SetGridData(cxGridA5View1, iRow, iCol1, Trim(slTmp[0]));
										SetGridData(cxGridA5View1, iRow, iCol2, Trim(slTmp[1]));
									end;
								finally
									slTmp.Free;
								end;
              end;
							/////////////////////분리//////////////////////////////////

							iRow := cxGridA5View1.DataController.AppendRecord;
							if k=tmpCnt-1 then
								SetGridData(cxGridA5View1, iRow, 0, '')
							else
								SetGridData(cxGridA5View1, iRow, 0, IntToStr(k+1));
							SetGridData(cxGridA5View1, iRow, 1, StrList.Strings[1]);
							if trim(StrList.Strings[3]) <>'' then
								SetGridData(cxGridA5View1, iRow, 2, StrList.Strings[2] + ' (' + StrList.Strings[3]+')')
							else
								SetGridData(cxGridA5View1, iRow, 2, StrList.Strings[2]);
							SetGridData(cxGridA5View1, iRow, 3, '발주비율(%)');
							SetGridData(cxGridA5View1, iRow, 4, StrList.Strings[18]);
							SetGridData(cxGridA5View1, iRow, 5, StrList.Strings[19]);
							SetGridData(cxGridA5View1, iRow, 6, StrList.Strings[20]);
							SetGridData(cxGridA5View1, iRow, 7, StrList.Strings[21]);
							SetGridData(cxGridA5View1, iRow, 8, StrList.Strings[22]);
							SetGridData(cxGridA5View1, iRow, 9, StrList.Strings[23]);
							SetGridData(cxGridA5View1, iRow, 10, StrList.Strings[24]);
							Inc(iCnt);
						end;
					end;
				finally
					cxGridA5View1.endupdate;
					btnChartA5.Click;
				end;
			end;
		finally
			StrList.Free;
			slList.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			Screen.Cursor := crDefault;
		end;
	except
		StrList.Free;
		slList.Free;
		Frm_Flash.hide;
		Frm_Main.Enabled := True;
		Timer1.Enabled := False;
		Screen.Cursor := crDefault;
	End;
end;

procedure TFrm_STT.RequestDataLocalCall; // 지역콜통계
var
	msg: string;
	StrList, slList : TStringList;
	ErrCode: integer;
	dt_sysdate2: string;

	XmlData, Param, ErrMsg: string;
	j : Integer;
	tmpCnt, iCnt : integer;
	tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
	Try
		if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
		begin
			msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
					+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
			GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
			Exit;
		end;

		if fGetChk_Search_HdBrNo('지역콜통계') then Exit;

		dt_sysdate2 := frm_main.func_sysdate;

		if Trim(dt_sysdate2) = '' then
		begin
			GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
			Exit;
		end;

		if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
			2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
		begin
			GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
			Exit;
		end;

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := GT_SEL_BRNO.HDNO
		else
			Param := GT_USERIF.HD;

		if (GT_USERIF.lv='60') and (cbbA6.itemindex=0) then
			Param := Param + '│' + '%'
		else
			Param := Param + '│' + Trim(Copy(cbbA6.Text,1,5));

		if cbb1A6.text = '전체' then
			Param := Param + '│' + '%'
		else
			Param := Param + '│' + cbb1A6.text;

		if cbb2A6.text = '전체' then
			Param := Param + '│' + '%'
		else
			Param := Param + '│' + cbb2A6.text;

		Param := Param + '│' + StringReplace(cxDtStartA6.text,'-','',[rfReplaceAll]) + '090000';
		Param := Param + '│' + StringReplace(cxDtEndA6.text,'-','',[rfReplaceAll]) + '090000';

		slList := TStringList.Create;
		Screen.Cursor := crHourGlass;
		Timer1.Enabled := True;
		Frm_Main.Enabled := False;
		try
			if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
			begin
				if not RequestBasePaging(GetSel05('GETLOCSTT', 'STT.GET_LOC_STT', '1000', Param), slList, ErrCode, ErrMsg, 600000) then
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;

					GMessagebox(Format('지역콜통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
					Frm_Main.Enabled := True;
					Screen.Cursor := crDefault;
					Exit;
				end;
			end else
			begin
				if not RequestBasePaging(GetSel05('GETLOCSTT', 'STT_8282SN.GET_LOC_STT', '1000', Param), slList, ErrCode, ErrMsg, 600000) then
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;

					GMessagebox(Format('지역콜통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
					Frm_Main.Enabled := True;
					Screen.Cursor := crDefault;
					Exit;
				end;
			end;

      cxcxGridA6View1.DataController.SetRecordCount(0);
      cxGridA6C1ChartView1.DataController.SetRecordCount(0);
      cxGridA6C2ChartALL.DataController.SetRecordCount(0);

			StrList := TStringList.Create;
			iCnt := 1;
			for j := 0 to slList.Count - 1 do
			begin
				Application.ProcessMessages;
				xmlData := slList.Strings[j];

				if Pos('<Data Count="',xmlData)>0 then
				begin
					tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
					if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
					tmpCnt:=StrToIntDef(tmpCntStr,0);
				end;

				if tmpCnt<1 then
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSI);
					Screen.Cursor := crDefault;
					Frm_Main.Enabled := True;
					Exit;
				end;

				cxcxGridA6View1.BeginUpdate;
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

							iRow := cxcxGridA6View1.DataController.AppendRecord;

							SetGridData(cxcxGridA6View1, iRow, 0, IntToStr(iCnt));
							SetGridData(cxcxGridA6View1, iRow, 1, StrList.Strings[0]);
							SetGridData(cxcxGridA6View1, iRow, 2, StrList.Strings[1]);
							SetGridData(cxcxGridA6View1, iRow, 3, StrList.Strings[2]);
							SetGridData(cxcxGridA6View1, iRow, 4, StrList.Strings[3]);
							SetGridData(cxcxGridA6View1, iRow, 5, StrList.Strings[4]);
							SetGridData(cxcxGridA6View1, iRow, 6, StrList.Strings[5]);
							SetGridData(cxcxGridA6View1, iRow, 7, StrList.Strings[6]);
							Inc(iCnt);
						end;
					end;
				finally
					cxcxGridA6View1.endupdate;
					btnChartA6.Click;
				end;
			end;
		finally
			StrList.Free;
			slList.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			Screen.Cursor := crDefault;
		end;
	except
		StrList.Free;
		slList.Free;
		Frm_Flash.hide;
		Frm_Main.Enabled := True;
		Timer1.Enabled := False;
		Screen.Cursor := crDefault;
	End;
end;

procedure TFrm_STT.RequestDataNewCust;
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, ErrCode, iRow : Integer;
  ls_MSG_Err: string;
  ls_Rcrd: TStringList;
  strHdNo, strBrNo : string;
  irNewCust, irCust : integer;
begin
	if fGetChk_Search_HdBrNo('신규고객통계') then Exit;

	try
    //////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////
    cxGrid_NewCust.DataController.SetRecordCount(0);

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      strHdNo := GT_SEL_BRNO.HDNO
    else
			strHdNo := GT_USERIF.HD;

		if (GT_USERIF.lv='60') and (cbbA7.itemindex=0) then
			strBrNo := ''
		else
			strBrNo := Trim(Copy(cbbA7.Text,1,5));

		ls_TxLoad := GTx_UnitXmlLoad('STAT01.XML');
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'STAT01');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo', strHdNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo', strBrNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFromDate', FormatDateTime('YYYYMMDD', cxDtStartA7.Date));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strToDate', FormatDateTime('YYYYMMDD', cxDtEndA7.Date));

		Timer1.Enabled := True;
		Frm_Main.Enabled := False;
		
		Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
			if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 600000) then
      begin
				rv_str := slRcvList[0];
        if rv_str <> '' then
				begin
          ls_rxxml := rv_str;
					xdom := ComsDomDocument.Create;
          try
						xdom.loadXML(ls_rxxml);

            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
						if ('0000' <> ls_MSG_Err) then
						begin
							Frm_Flash.hide;
							Timer1.Enabled := False;
							Application.ProcessMessages;
							GMessagebox(ls_Msg_Err, CDMSI);
							Screen.Cursor := crDefault;
							Frm_Main.Enabled := True;
							Exit;
						end;
						if (0 < GetXmlRecordCount(ls_rxxml)) then
						begin
							Try
								iCust := 0;   iNewCust := 0;
								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Stat');
								cxGrid_NewCust.BeginUpdate;
								ls_Rcrd := TStringList.Create;
								for i := 0 to lst_Result.length -1 do
								begin
									irCust := 0;
									irNewCust := 0;

									iRow := cxGrid_NewCust.DataController.AppendRecord;
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Data').Text, ls_Rcrd);
									cxGrid_NewCust.DataController.Values[iRow, 0] := ls_Rcrd[0];
									irCust := StrTointDef(ls_Rcrd[1], 0);
									cxGrid_NewCust.DataController.Values[iRow, 1] := FormatFloat('#,##0', strtoint(ls_Rcrd[1]));
									irNewCust := StrTointDef(ls_Rcrd[2], 0);
									cxGrid_NewCust.DataController.Values[iRow, 2] := FormatFloat('#,##0', strtoint(ls_Rcrd[2]));
									if irNewCust = 0 then
										cxGrid_NewCust.DataController.Values[iRow, 3] := '0'
									else
										cxGrid_NewCust.DataController.Values[iRow, 3] := FloatToStr(roundto((irNewCust / irCust * 100),-1)) + '%';

									iCust := iCust + irCust;
									iNewCust := iNewCust + irNewCust;
								end;
							Finally
								ls_Rcrd.Free;
								cxGrid_NewCust.EndUpdate;
              End;

							if cxGrid_NewCust.DataController.RecordCount = 0 then
							begin
								GMessagebox('검색된 내용이 없습니다.', CDMSI);
							End;
						end	else
						begin
							Frm_Flash.hide;
							Timer1.Enabled := False;
							Application.ProcessMessages;
							GMessagebox('검색된 내용이 없습니다', CDMSI);
						end;
						finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      slRcvList.Free;
      btnChartA7.Click;
      Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
		end;
  except
    on e: Exception do
    begin
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
      Screen.Cursor := crDefault;
      Assert(False, E.Message);
    end;
	end;
end;

procedure TFrm_STT.RequestDataOrderTimeList;
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, ErrCode, iRow : Integer;
  ls_MSG_Err: string;
  ls_Rcrd: TStringList;
  strHdNo, strBrNo : string;
	irTCall, irCCall : integer;
begin
	if fGetChk_Search_HdBrNo('시간대별콜수통계') then Exit;

	try
    //////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////
    cxGrid_OrderTimeList.DataController.SetRecordCount(0);
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      strHdNo := GT_SEL_BRNO.HDNO
    else
      strHdNo := GT_USERIF.HD;
																																											 
    if (GT_USERIF.lv='60') and (cbbA8.itemindex=0) then
      strBrNo := ''
    else
      strBrNo := Trim(Copy(cbbA8.Text,1,5));

    ls_TxLoad := GTx_UnitXmlLoad('STAT02.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'STAT02');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo', strHdNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo', strBrNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFromDate', FormatDateTime('YYYYMMDD', cxDtStartA8.Date));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strToDate', FormatDateTime('YYYYMMDD', cxDtEndA8.Date));

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
		Timer1.Enabled := True;
		Frm_Main.Enabled := False;
		try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 600000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := ComsDomDocument.Create;
          try
            xdom.loadXML(ls_rxxml);
            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' <> ls_MSG_Err) then
            begin
							Frm_Flash.hide;
							Timer1.Enabled := False;
							Application.ProcessMessages;
							GMessagebox(ls_Msg_Err, CDMSI);
							Screen.Cursor := crDefault;
							Frm_Main.Enabled := True;
							Exit;
						end;
						if (0 < GetXmlRecordCount(ls_rxxml)) then
						begin
							Try
								iTCall_T := 0; iFCall_T := 0; iCCall_T := 0;
								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Stat');
								cxGrid_OrderTimeList.BeginUpdate;
								ls_Rcrd := TStringList.Create;
								for i := 0 to lst_Result.length -1 do
								begin
									irTCall := 0;
									irCCall := 0;

									iRow := cxGrid_OrderTimeList.DataController.AppendRecord;
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Data').Text, ls_Rcrd);
									cxGrid_OrderTimeList.DataController.Values[iRow, 0] := ls_Rcrd[0];
									irTCall := irTCall + StrToIntDef(ls_Rcrd[1],0);
									cxGrid_OrderTimeList.DataController.Values[iRow, 1] := FormatFloat('#,##0', strtoint(ls_Rcrd[1]));
									iFCall_T := iFCall_T + StrToIntDef(ls_Rcrd[2],0);
									cxGrid_OrderTimeList.DataController.Values[iRow, 2] := FormatFloat('#,##0', strtoint(ls_Rcrd[2]));
									irCCall := irCCall + StrToIntDef(ls_Rcrd[3],0);
									cxGrid_OrderTimeList.DataController.Values[iRow, 3] := FormatFloat('#,##0', strtoint(ls_Rcrd[3]));
									if irCCall = 0 then
										cxGrid_OrderTimeList.DataController.Values[iRow, 4] := '0'
									else
										cxGrid_OrderTimeList.DataController.Values[iRow, 4] := FloatToStr(roundto((irCCall / irTCall * 100),-1)) + '%';

									iCCall_T := iCCall_T + irCCall;
									iTCall_T := iTCall_T + irTCall;
								end;
							Finally
								ls_Rcrd.Free;
								cxGrid_OrderTimeList.EndUpdate;
							End;
						end	else
						begin
							Frm_Flash.hide;
							Timer1.Enabled := False;
							Application.ProcessMessages;
							GMessagebox('검색된 내용이 없습니다', CDMSI);
						end;
					finally
            xdom := Nil;
          end;
        end;
      end;
		finally
			slRcvList.Free;
			btnChartA8.Click;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			Screen.Cursor := crDefault;
    end;
  except
		on e: Exception do
    begin
			slRcvList.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_STT.RequestDataOrderDayList;
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, ErrCode, iRow : Integer;
  ls_MSG_Err: string;
  ls_Rcrd: TStringList;
  strHdNo, strBrNo : string;
  irTCall, irCCall : integer;
begin
	if fGetChk_Search_HdBrNo('일별콜수통계') then Exit;

	try
    //////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////
    cxGrid_OrderDayList.DataController.SetRecordCount(0);

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      strHdNo := GT_SEL_BRNO.HDNO
    else
      strHdNo := GT_USERIF.HD;

    if (GT_USERIF.lv='60') and (cbbA9.itemindex=0) then
      strBrNo := ''
    else
      strBrNo := Trim(Copy(cbbA9.Text,1,5));

    ls_TxLoad := GTx_UnitXmlLoad('STAT03.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'STAT03');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo', strHdNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo', strBrNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFromDate', FormatDateTime('YYYYMMDD', cxDtStartA9.Date));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strToDate', FormatDateTime('YYYYMMDD', cxDtEndA9.Date));

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;

		Timer1.Enabled := True;
		Frm_Main.Enabled := False;
		try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 600000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := ComsDomDocument.Create;
          try
						xdom.loadXML(ls_rxxml);

						ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' <> ls_MSG_Err) then
            begin
							Frm_Flash.hide;
							Timer1.Enabled := False;
							Application.ProcessMessages;
							GMessagebox(ls_Msg_Err, CDMSI);
							Screen.Cursor := crDefault;
							Frm_Main.Enabled := True;
							Exit;
						end;
						if (0 < GetXmlRecordCount(ls_rxxml)) then
						begin
							Try
								iTCall_D := 0; iFCall_D := 0; iCCall_D := 0;
								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Stat');
								cxGrid_OrderDayList.BeginUpdate;
								ls_Rcrd := TStringList.Create;
								for i := 0 to lst_Result.length -1 do
								begin
									irTCall := 0;
									irCCall := 0;
									iRow := cxGrid_OrderDayList.DataController.AppendRecord;
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Data').Text, ls_Rcrd);
									cxGrid_OrderDayList.DataController.Values[iRow, 0] := ls_Rcrd[0];
									cxGrid_OrderDayList.DataController.Values[iRow, 1] := ls_Rcrd[1];
									irTCall := StrToIntDef(ls_Rcrd[2],0);
									cxGrid_OrderDayList.DataController.Values[iRow, 2] := FormatFloat('#,##0', strtoint(ls_Rcrd[2]));
									iFCall_D := iFCall_D + StrToIntDef(ls_Rcrd[3],0);
									cxGrid_OrderDayList.DataController.Values[iRow, 3] := FormatFloat('#,##0', strtoint(ls_Rcrd[3]));
									irCCall := StrToIntDef(ls_Rcrd[4],0);
									cxGrid_OrderDayList.DataController.Values[iRow, 4] := FormatFloat('#,##0', strtoint(ls_Rcrd[4]));

									if irCCall = 0 then
										cxGrid_OrderDayList.DataController.Values[iRow, 5] := '0'
									else
										cxGrid_OrderDayList.DataController.Values[iRow, 5] := FloatToStr(roundto((irCCall / irTCall * 100),-1)) + '%';

									iCCall_D := iCCall_D + irCCall;
									iTCall_D := iTCall_D + irTCall;
								end;
							Finally
								ls_Rcrd.Free;
								cxGrid_OrderDayList.EndUpdate;
							End;
						end	else
						begin
							Frm_Flash.hide;
							Timer1.Enabled := False;
							Application.ProcessMessages;
							GMessagebox('검색된 내용이 없습니다', CDMSI);
						end;
					finally
            xdom := Nil;
          end;
        end;
      end;
    finally
			slRcvList.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			btnChartA9.Click;
			Screen.Cursor := crDefault;
    end;
  except
    on e: Exception do
    begin
			slRcvList.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_STT.RequestDataNewOrderDayList;
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, ErrCode, iRow : Integer;
  ls_MSG_Err: string;
  ls_Rcrd: TStringList;
  strHdNo, strBrNo : string;
  irTCall, irNCall, irCCall : integer;
begin
	if fGetChk_Search_HdBrNo('신규콜수통계') then Exit;

	try
		//////////////////////////////////////////////////////////////////////////////////
		//  접수 전문
		//////////////////////////////////////////////////////////////////////////////////
		cxGrid_NewOrderDayList.DataController.SetRecordCount(0);

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			strHdNo := GT_SEL_BRNO.HDNO
		else
			strHdNo := GT_USERIF.HD;

		if (GT_USERIF.lv='60') and (cbbA10.itemindex=0) then
			strBrNo := ''
		else
			strBrNo := Trim(Copy(cbbA10.Text,1,5));

    ls_TxLoad := GTx_UnitXmlLoad('STAT04.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'STAT04');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo', strHdNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo', strBrNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFromDate', FormatDateTime('YYYYMMDD', cxDtStartA10.Date));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strToDate', FormatDateTime('YYYYMMDD', cxDtEndA10.Date));

		Screen.Cursor := crHourGlass;
		slRcvList := TStringList.Create;

		Timer1.Enabled := True;
		Frm_Main.Enabled := False;
		try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 600000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := ComsDomDocument.Create;
          try
            xdom.loadXML(ls_rxxml);

            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' <> ls_MSG_Err) then
            begin
							Frm_Flash.hide;
							Timer1.Enabled := False;
							Application.ProcessMessages;
							GMessagebox(ls_Msg_Err, CDMSI);
							Screen.Cursor := crDefault;
							Frm_Main.Enabled := True;
							Exit;
						end;
						if (0 < GetXmlRecordCount(ls_rxxml)) then
						begin
							Try
								iTCall_N := 0; iFCall_N := 0; iCCall_N := 0;
								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Stat');
								cxGrid_NewOrderDayList.BeginUpdate;
								ls_Rcrd := TStringList.Create;
								for i := 0 to lst_Result.length -1 do
								begin
									irTCall := 0;
									irNCall := 0;
									iRow := cxGrid_NewOrderDayList.DataController.AppendRecord;
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Data').Text, ls_Rcrd);
									cxGrid_NewOrderDayList.DataController.Values[iRow, 0] := ls_Rcrd[0];
									cxGrid_NewOrderDayList.DataController.Values[iRow, 1] := ls_Rcrd[1];
									irTCall := StrToIntDef(ls_Rcrd[5],0);
									cxGrid_NewOrderDayList.DataController.Values[iRow, 2] := FormatFloat('#,##0', strtoint(ls_Rcrd[5]));
									irNCall := StrToIntDef(ls_Rcrd[2],0);
									cxGrid_NewOrderDayList.DataController.Values[iRow, 3] := FormatFloat('#,##0', strtoint(ls_Rcrd[2]));
									iFCall_N := iFCall_N + StrToIntDef(ls_Rcrd[3],0);
									cxGrid_NewOrderDayList.DataController.Values[iRow, 4] := FormatFloat('#,##0', strtoint(ls_Rcrd[3]));
									irCCall := StrToIntDef(ls_Rcrd[4],0);
									cxGrid_NewOrderDayList.DataController.Values[iRow, 5] := FormatFloat('#,##0', strtoint(ls_Rcrd[4]));

									if irNCall = 0 then
										cxGrid_NewOrderDayList.DataController.Values[iRow, 6] := '0'
									else
										cxGrid_NewOrderDayList.DataController.Values[iRow, 6] := FloatToStr(roundto((irNCall / irTCall * 100),-1)) + '%';

									iNCall_N := iNCall_N + irNCall;
									iCCall_N := iCCall_N + irCCall;
									iTCall_N := iTCall_N + irTCall;
								end;
							Finally
								ls_Rcrd.Free;
								cxGrid_NewOrderDayList.EndUpdate;
							End;
						end	else
						begin
							Frm_Flash.hide;
							Timer1.Enabled := False;
							Application.ProcessMessages;
							GMessagebox('검색된 내용이 없습니다', CDMSI);
						end;
					finally
            xdom := Nil;
          end;
        end;
      end;
    finally
			slRcvList.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			btnChartA10.Click;
			Screen.Cursor := crDefault;
		end;
	except
		on e: Exception do
		begin
			slRcvList.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_STT.RequestDataCancelList;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	sTmp, strHdNo, strBrNo : string;
	iCancelCnt, iTmp, iCancelCall : Integer;
begin
	SetDebugeWrite('TFrm_STT.RequestDataCancelList');
	if fGetChk_Search_HdBrNo('취소콜통계') then Exit;
	cxGrid_CancelList.DataController.SetRecordCount(0);

	try
		//////////////////////////////////////////////////////////////////////////////////
		//  접수 전문
		//////////////////////////////////////////////////////////////////////////////////
		if cxRBA11_1.checked then  Param := '0' else
		if cxRBA11_2.checked then  Param := '1' else
		if cxRBA11_3.checked then  Param := '2';
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			strHdNo := GT_SEL_BRNO.HDNO
		else
			strHdNo := GT_USERIF.HD;
		Param := Param + '│' + strHdNo;

		if (GT_USERIF.lv='60') and (cbKeynumber11.itemindex = 0) then
			strBrNo := ''
		else
			strBrNo := cxBrNo11.text;
		Param := Param + '│' + strBrNo;

		if ( cbKeynumber11.ItemIndex > 0 ) And ( cbKeynumber11.Text <> '' ) then
			Param := Param + '│' + cbKeynumber11.Text
		else
			Param := Param + '│' ;

		if (cxRBA11_1.checked) or (cxRBA11_2.checked) then  
		begin
			Param := Param + '│' + formatdatetime('yyyymmdd', cxDtStartA11.Date) + '│' + formatdatetime('yyyymmdd', cxDtEndA11.Date);
			Param := Param + '│' + '│';
		end	else
		begin
			Param := Param + '│' + '│';
			Param := Param + '│' + cxSYYA11.Text + LPAD(cxSMMA11.Text, '0', 2) + '│' + cxEYYA11.Text + LPAD(cxEMMA11.Text, '0', 2);
		end;

    Screen.Cursor := crHourGlass;

		Timer1.Enabled := True;
		Frm_Main.Enabled := False;

		if not RequestBase(GetSel06('GET_LIST_CANCEL_STAT', 'MNG.GET_LIST_CANCEL_STAT ', '1000', Param), XmlData, ErrCode, ErrMsg, 600000) then
		begin
			GMessagebox(Format('취소콜통계 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			Screen.Cursor := crDefault;
			Exit;
		end;
		
		iCanCelTOT := 0; iCanCel0 := 0; iCanCel1 := 0; iCanCel2 := 0; iCanCel3 := 0; iCanCel4 := 0; 
		iCanCel5   := 0; iCanCel6 := 0; iCanCel7 := 0; iCanCel8 := 0; iCanCel9 := 0; iCanCel10 := 0; 
		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then
			begin
				Frm_Flash.hide;
				Frm_Main.Enabled := True;
				Timer1.Enabled := False;
				Screen.Cursor := crDefault;
				Exit;
			end;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxGrid_CancelList.BeginUpdate;
					ls_Rcrd := TStringList.Create;
					try
						for i := 0 to lst_Result.length - 1 do
						begin
							iTmp := 0;
							iCancelCnt := 0;
							iCancelCall := 0;
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							Application.ProcessMessages;

							iRow := cxGrid_CancelList.DataController.AppendRecord; // 1 Record 추가

							if cxRBA11_1.checked then
							begin
								iCanCelTOT := iCanCelTOT + StrToIntDef(ls_Rcrd[2], 0);
								cxGrid_CancelList.DataController.Values[iRow,  0] := ls_Rcrd[0]; //지사명
								cxGrid_CancelList.DataController.Values[iRow,  1] := StrToCall(ls_Rcrd[1]); //대표번호
								cxGrid_CancelList.DataController.Values[iRow,  2] := '';    //요일
								cxGrid_CancelList.DataController.Values[iRow,  3] := StrToIntDef(ls_Rcrd[ 2],0);    //취소콜수

								iCancelCall := StrToIntDef(ls_Rcrd[ 2],0);
								iCanCel0 := iCanCel0 + StrToIntDef(ls_Rcrd[3], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[3], 0);
								if iCancelCnt > 0 then
								begin                                                                   
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  4] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입0 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  4] := '-';//취소타입0 건수
								cxGrid_CancelList.DataController.Values[iRow, 16] := iCancelCnt;
								
								iCanCel1 := iCanCel1 + StrToIntDef(ls_Rcrd[4], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[4], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  5] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입1 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  5] := '-';//취소타입1 건수
								cxGrid_CancelList.DataController.Values[iRow, 17] := iCancelCnt;

								iCanCel2 := iCanCel2 + StrToIntDef(ls_Rcrd[5], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[5], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  6] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입2 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  6] := '-';//취소타입2 건수
								cxGrid_CancelList.DataController.Values[iRow, 18] := iCancelCnt;

								iCanCel3 := iCanCel3 + StrToIntDef(ls_Rcrd[6], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[6], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  7] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입3 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  7] := '-';//취소타입3 건수
								cxGrid_CancelList.DataController.Values[iRow, 19] := iCancelCnt;

								iCanCel4 := iCanCel4 + StrToIntDef(ls_Rcrd[7], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[7], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  8] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입4 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  8] := '-';//취소타입4 건수
								cxGrid_CancelList.DataController.Values[iRow, 20] := iCancelCnt;

								iCanCel5 := iCanCel5 + StrToIntDef(ls_Rcrd[8], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[8], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  9] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입5 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  9] := '-';//취소타입5 건수
								cxGrid_CancelList.DataController.Values[iRow, 21] := iCancelCnt;

								iCanCel6 := iCanCel6 + StrToIntDef(ls_Rcrd[9], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[9], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  10] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입6 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  10] := '-';//취소타입6 건수
								cxGrid_CancelList.DataController.Values[iRow, 22] := iCancelCnt;

								iCanCel7 := iCanCel7 + StrToIntDef(ls_Rcrd[10], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[10], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  11] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입7 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  11] := '-';//취소타입7 건수
								cxGrid_CancelList.DataController.Values[iRow, 23] := iCancelCnt;

								iCanCel8 := iCanCel8 + StrToIntDef(ls_Rcrd[11], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[11], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  12] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입8 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  12] := '-';//취소타입8 건수
								cxGrid_CancelList.DataController.Values[iRow, 24] := iCancelCnt;

								iCanCel9 := iCanCel9 + StrToIntDef(ls_Rcrd[12], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[12], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  13] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입9 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  13] := '-';//취소타입9 건수
								cxGrid_CancelList.DataController.Values[iRow, 25] := iCancelCnt;

								cxGrid_CancelList.DataController.Values[iRow,  14] := '-';
								if ls_Rcrd.count > 14 then
								begin
									iCanCel10 := iCanCel10 + StrToIntDef(ls_Rcrd[14], 0);
									iCancelCnt := StrToIntDef(ls_Rcrd[14], 0);
									if iCancelCnt > 0 then
									begin
										iTmp := 100 * iCancelCnt div ( iCancelCall );
										cxGrid_CancelList.DataController.Values[iRow,  14] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입9 건수
									end
									else
										cxGrid_CancelList.DataController.Values[iRow,  14] := '-';//취소타입10 건수
									cxGrid_CancelList.DataController.Values[iRow, 26] := iCancelCnt;
								end;

								cxGrid_CancelList.DataController.Values[iRow,  15] := ls_Rcrd[13];//지사코드
							end	else
							if (cxRBA11_2.checked) or (cxRBA11_3.checked) then
							begin
								iCanCelTOT := iCanCelTOT + StrToIntDef(ls_Rcrd[3], 0);
								cxGrid_CancelList.DataController.Values[iRow,  0] := ls_Rcrd[0]; //지사명
								cxGrid_CancelList.DataController.Values[iRow,  1] := StrToCall(ls_Rcrd[1]); //대표번호
								cxGrid_CancelList.DataController.Values[iRow,  2] := ls_Rcrd[ 2];    //요일
								cxGrid_CancelList.DataController.Values[iRow,  3] := StrToIntDef(ls_Rcrd[ 3],0);    //취소콜수

								iCancelCall := StrToIntDef(ls_Rcrd[ 3],0);
								iCanCel0 := iCanCel0 + StrToIntDef(ls_Rcrd[4], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[4], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  4] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입0 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  4] := '-';//취소타입0 건수
								cxGrid_CancelList.DataController.Values[iRow, 16] := iCancelCnt;

								iCanCel1 := iCanCel1 + StrToIntDef(ls_Rcrd[5], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[5], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  5] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입1 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  5] := '-';//취소타입1 건수
								cxGrid_CancelList.DataController.Values[iRow, 17] := iCancelCnt;

								iCanCel2 := iCanCel2 + StrToIntDef(ls_Rcrd[6], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[6], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  6] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입2 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  6] := '-';//취소타입2 건수
								cxGrid_CancelList.DataController.Values[iRow, 18] := iCancelCnt;

								iCanCel3 := iCanCel3 + StrToIntDef(ls_Rcrd[7], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[7], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  7] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입3 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  7] := '-';//취소타입3 건수
								cxGrid_CancelList.DataController.Values[iRow, 19] := iCancelCnt;

								iCanCel4 := iCanCel4 + StrToIntDef(ls_Rcrd[8], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[8], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  8] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입4 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  8] := '-';//취소타입4 건수
								cxGrid_CancelList.DataController.Values[iRow, 20] := iCancelCnt;

								iCanCel5 := iCanCel5 + StrToIntDef(ls_Rcrd[9], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[9], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  9] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입5 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  9] := '-';//취소타입5 건수
								cxGrid_CancelList.DataController.Values[iRow, 21] := iCancelCnt;

								iCanCel6 := iCanCel6 + StrToIntDef(ls_Rcrd[10], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[10], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  10] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입6 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  10] := '-';//취소타입6 건수
								cxGrid_CancelList.DataController.Values[iRow, 22] := iCancelCnt;

								iCanCel7 := iCanCel7 + StrToIntDef(ls_Rcrd[11], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[11], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  11] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입7 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  11] := '-';//취소타입7 건수
								cxGrid_CancelList.DataController.Values[iRow, 23] := iCancelCnt;

								iCanCel8 := iCanCel8 + StrToIntDef(ls_Rcrd[12], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[12], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  12] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입8 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  12] := '-';//취소타입8 건수
								cxGrid_CancelList.DataController.Values[iRow, 24] := iCancelCnt;

								iCanCel9 := iCanCel9 + StrToIntDef(ls_Rcrd[13], 0);
								iCancelCnt := StrToIntDef(ls_Rcrd[13], 0);
								if iCancelCnt > 0 then
								begin
									iTmp := 100 * iCancelCnt div ( iCancelCall );
									cxGrid_CancelList.DataController.Values[iRow,  13] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입9 건수
								end
								else
									cxGrid_CancelList.DataController.Values[iRow,  13] := '-';//취소타입9 건수
								cxGrid_CancelList.DataController.Values[iRow, 25] := iCancelCnt;

								cxGrid_CancelList.DataController.Values[iRow,  15] := '-';	
								if ls_Rcrd.count > 15 then
								begin
									iCanCel10 := iCanCel10 + StrToIntDef(ls_Rcrd[15], 0);
									iCancelCnt := StrToIntDef(ls_Rcrd[15], 0);
									if iCancelCnt > 0 then
									begin
										iTmp := 100 * iCancelCnt div ( iCancelCall );
										cxGrid_CancelList.DataController.Values[iRow,  14] := Format('%s/%s', [FormatFloat('#,##0', iCancelCnt) + '건', IntToStr(iTmp)+'%']);//취소타입9 건수
									end
									else
										cxGrid_CancelList.DataController.Values[iRow,  14] := '-';//취소타입10 건수
									cxGrid_CancelList.DataController.Values[iRow, 26] := iCancelCnt;
								end;    

								cxGrid_CancelList.DataController.Values[iRow,  15] := ls_Rcrd[14];//지사코드
							end;
						end;
					finally
						ls_Rcrd.Free;
					end;
					cxGrid_CancelList.EndUpdate;
					cxGrid_CancelList.Columns[15].SortOrder := soAscending;
					cxGrid_CancelList.Columns[1].SortOrder := soAscending;
					cxGrid_CancelList.Columns[2].SortOrder := soAscending;
				end	else
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSI);
				end;
			end;
		finally
			Screen.Cursor := crDefault;
			iCanCelTOT := iCanCelTOT;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			btnChartA11.Click;
			xdom := Nil;
		end;
	except
		on e: Exception do
		begin
			ls_Rcrd.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_STT.RequestDataCancelListDetail(sHdNo, sBrNo, sKeyNum, sBrInfo, sDate, sCanCnt : String; iType : integer);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, iRow, i : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	iCancelCnt, iTmp, iCancelCall : Integer;
begin
	SetDebugeWrite('TFrm_STT.RequestDataCancelListDetail');

	try
		//////////////////////////////////////////////////////////////////////////////////
		//  접수 전문
		//////////////////////////////////////////////////////////////////////////////////

		if cxRBA11_1.checked then  Param := '0' else
		if cxRBA11_2.checked then  Param := '1' else
		if cxRBA11_3.checked then  Param := '2';

		Param := Param + '│' + sHdNo;
		Param := Param + '│' + sBrNo;
		Param := Param + '│' + sKeyNum;

		if (cxRBA11_1.checked)then  
		begin
			Param := Param + '│' + formatdatetime('yyyymmdd', cxDtStartA11.Date) + '│' + formatdatetime('yyyymmdd', cxDtEndA11.Date);
			Param := Param + '│' ;
		end	else
		if (cxRBA11_2.checked) then  
		begin
			Param := Param + '│' + sDate + '│';
			Param := Param + '│' ;
		end	else
		begin
			Param := Param + '│' + '│';
			Param := Param + '│' + sDate ;
		end;

		Param := Param + '│' + IntToStr(iType);
		
		if not RequestBase(GetSel06('GET_DT_LIST_CANCEL_STAT', 'MNG.GET_DT_LIST_CANCEL_STAT', '1000', Param), XmlData, ErrCode, ErrMsg, 600000) then
		begin
			GMessagebox(Format('취소콜통계상세 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;

		if ( Not Assigned(frm_STT01) ) Or ( frm_STT01 = NIl ) then frm_STT01 := Tfrm_STT01.Create(Nil);
		frm_STT01.lbBrInfo.Caption := sBrInfo;
		frm_STT01.Grid11View.DataController.SetRecordCount(0);
		frm_STT01.Grid11View.BeginUpdate;
		iCancelCall := StrToIntDef(sCanCnt, 0);
		frm_STT01.iTot := 0;
		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then Exit;

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
							iTmp := 0;
							iCancelCnt := 0;
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							Application.ProcessMessages;

							iRow := frm_STT01.Grid11View.DataController.AppendRecord; // 1 Record 추가

							frm_STT01.Grid11View.DataController.Values[iRow,  0] := StrToCall(ls_Rcrd[1]); //대표번호
							iCancelCnt := StrToIntDef(ls_Rcrd[2], 0);
							frm_STT01.iTOT := frm_STT01.iTOT + iCancelCnt;
							if iCancelCnt > 0 then
							begin
								iTmp := 100 * iCancelCnt div ( iCancelCall );
								frm_STT01.Grid11View.DataController.Values[iRow,  1] := Format('%s/%s', [ls_Rcrd[2] + '건', IntToStr(iTmp)+'%']);//취소타입0 건수
							end
							else
								frm_STT01.Grid11View.DataController.Values[iRow,  1] := '-';//취소타입0 건수

							frm_STT01.Grid11View.DataController.Values[iRow,  2] := ls_Rcrd[3]; //취소사유

						end;
						if frm_STT01.Grid11View.DataController.RecordCount > 0 then
							frm_STT01.Show
					finally
						ls_Rcrd.Free;
					end;
				end else
				begin
					GMessagebox('조회된 내용이 없습니다.', CDMSI);
				end;
			end;
		finally
			xdom := Nil;
			frm_STT01.Grid11View.EndUpdate;
		end;
	except
		on e: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_STT.RequestDataChagreCall;
var
	ErrCode: integer;
	dt_sysdate2, msg, sTmp: string;

	XmlData, Param, ErrMsg: string;
	ls_Rcrd: TStringList;
	I, iRow : integer;

	ls_MSG_Err : string;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	iCharge : Integer;
	iFCnt, iCCnt, iTCnt, iQCnt : integer;
	sCheckMoney : string; //금액대가 변경되었는지 확인하기 위한 변수
begin
	Try
		if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
		begin
			msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
					+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
			GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
			Exit;
		end;

		if fGetChk_Search_HdBrNo('시간대별 출/도지역 통계') then Exit;

		dt_sysdate2 := frm_main.func_sysdate;

		if Trim(dt_sysdate2) = '' then
		begin
			GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
			Exit;
		end;

		if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
			2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
		begin
			GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
			Exit;
		end;

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := GT_SEL_BRNO.HDNO
		else
			Param := GT_USERIF.HD;

		if (GT_USERIF.lv='60') and (cbA13.itemindex=0) then
			Param := Param + '│' + ''
		else
			Param := Param + '│' + Trim(Copy(cbbA13.Text,1,5));

		Param := Param + '│' + ''; //대표번호
		
		Param := Param + '│' + StringReplace(cxDtStartA13.text,'-','',[rfReplaceAll]);// + '090000';
		Param := Param + '│' + StringReplace(cxDtEndA13.text,'-','',[rfReplaceAll]);// + '090000';

		Param := Param + '│' + IntToStr(cbA13.ItemIndex);

		Screen.Cursor := crHourGlass;
		Timer1.Enabled := True;
		Frm_Main.Enabled := False;

		i12_TCnt := 0; i12_CCnt := 0;
		if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
		begin
			if not RequestBase(GetSel06('GET_LIST_CHARGE', 'STAT_A01.GET_LIST_CHARGE', '1000', Param), XmlData, ErrCode, ErrMsg, 600000) then
			begin
				Frm_Flash.hide;
				Timer1.Enabled := False;
				Application.ProcessMessages;

				GMessagebox(Format('오더요금별통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Frm_Main.Enabled := True;
				Screen.Cursor := crDefault;
				Exit;
			end;
		end;

		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then
			begin
				Frm_Flash.hide;
				Frm_Main.Enabled := True;
				Timer1.Enabled := False;
				Screen.Cursor := crDefault;
				Exit;
			end;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					if cbA13.ItemIndex = 0 then
					begin
						cxGridDBTableView13.Columns[3].Visible := False;
						cxGridDBTableView13.Columns[4].Visible := False;
						cxGridDBTableView13.Columns[5].Visible := False;
					end else
					begin
						cxGridDBTableView13.Columns[3].Visible := True;
						cxGridDBTableView13.Columns[4].Visible := True;
						cxGridDBTableView13.Columns[5].Visible := True;
					end;

					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxGridDBTableView13.DataController.SetRecordCount(0);
					cxGridDBTableView13.BeginUpdate;
					ls_Rcrd := TStringlist.Create;
					try
						iCharge := cxGridDBTableView13.GetColumnByFieldName('요금기준').Index;
						sCheckMoney := '';

						for I := 0 to lst_Result.length - 1 do
						begin
//            요금│본사코드│본사명|지사명│지사코드│대표번호│완료횟수│취소횟수│문의횟수│전체횟수
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if (sCheckMoney <> '') then //and (sCheckMoney <> ls_Rcrd[0]) then
							begin 
								cxGridDBTableView13.EndUpdate;
								cxGridDBTableView13.BeginUpdate;
							end;

							Try
								sCheckMoney := ls_Rcrd[0];
								iRow := cxGridDBTableView13.DataController.FindRecordIndexByText(0, iCharge, ls_Rcrd[0], False, True, True)
							except on E: Exception do
								begin
									iRow := -1;
								end;
							end;
							if iRow = -1 then	
							begin
								iRow := cxGridDBTableView13.DataController.AppendRecord;
							end;
							iFCnt := 0; iCCnt := 0; iTCnt := 0; iQCnt := 0;
							
							cxGridDBTableView13.DataController.Values[iRow, 0] := ls_Rcrd[0];    //요금
							cxGridDBTableView13.DataController.Values[iRow, 1] := ls_Rcrd[1];  //본사코드
							cxGridDBTableView13.DataController.Values[iRow, 2] := ls_Rcrd[2];  //본사명
							cxGridDBTableView13.DataController.Values[iRow, 3] := ls_Rcrd[4];  //지사명
							cxGridDBTableView13.DataController.Values[iRow, 4] := ls_Rcrd[3];  //지사코드
							cxGridDBTableView13.DataController.Values[iRow, 5] := strToCall(ls_Rcrd[5]);  //대표번호

							if cxGridDBTableView13.DataController.Values[iRow, 6] <> Null then												 
								iTCnt := strtoint(cxGridDBTableView13.DataController.Values[iRow,  6]);
							if cxGridDBTableView13.DataController.Values[iRow, 7] <> Null then												 
								iFCnt := strtoint(cxGridDBTableView13.DataController.Values[iRow,  7]);
							if cxGridDBTableView13.DataController.Values[iRow, 8] <> Null then												 
								iCCnt := strtoint(cxGridDBTableView13.DataController.Values[iRow,  8]);
							if cxGridDBTableView13.DataController.Values[iRow, 9] <> Null then												 
								iQCnt := strtoint(cxGridDBTableView13.DataController.Values[iRow,  9]);
							
							iFCnt := iFCnt + strtoint(ls_Rcrd[6]);
							iCCnt := iCCnt + strtoint(ls_Rcrd[7]); 
							iQCnt := iQCnt + strtoint(ls_Rcrd[8]);
							iTCnt := iTCnt + strtoint(ls_Rcrd[9]);
							if iCCnt = 0 then sTmp := '0%'
							else sTmp := FloatToStr(roundto((iCCnt / iTCnt * 100),-1)) + '%';

							cxGridDBTableView13.DataController.Values[iRow,  6] := FormatFloat('#,##0', iTCnt);// 총건수
							cxGridDBTableView13.DataController.Values[iRow,  7] := FormatFloat('#,##0', iFCnt);// 완료건수
							cxGridDBTableView13.DataController.Values[iRow,  8] := FormatFloat('#,##0', iCCnt);// 취소건수
							cxGridDBTableView13.DataController.Values[iRow,  9] := FormatFloat('#,##0', iQCnt);// 문의건수
							cxGridDBTableView13.DataController.Values[iRow, 10] := sTmp;//취소율

							i12_TCnt := i12_TCnt + strtoint(ls_Rcrd[9]); 
							i12_CCnt := i12_CCnt + strtoint(ls_Rcrd[7]); 
							
							cxGridDBTableView13.DataController.Values[iRow, iCharge] := ls_Rcrd[0];//요금기준
						end;
					finally
						ls_Rcrd.Free;
						cxGridDBTableView13.EndUpdate;
						btnChartA13.Click;
					end;
				end	else
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSI);
				end;
			end;
		finally
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			xdom := Nil;
		end;
	except
		on e: Exception do
		begin
			ls_Rcrd.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

{*==============================================================================
 데이터 수신부
==============================================================================*}
procedure TFrm_STT.ResponseDataBase(ADataStr: WideString);
var
  xdom: msDomDocument;
  XmlData: WideString;
  ErrorCode, ClientKey: string;
begin
	xdom := ComsDomDocument.Create;
  try
    try
      XmlData := ADataStr;
      if not xdom.loadXML(XmlData) then Exit;

      ErrorCode := GetXmlErrorCode(XmlData);
			if ('0000' = ErrorCode) then
      begin
				ClientKey := GetXmlClientKey(XmlData);
				if ClientKey = 'STWK0001' then
					ResponseDataWorker(XmlData);
      end else
      begin
				GMessagebox(MSG012 + CRLF + ErrorCode, CDMSE);
			end;
    except
    end;
  finally
		Frm_Flash.JobProcess(False);
    xdom := Nil;
  end;
end;

procedure TFrm_STT.ResponseDataWorker(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, iNum: Integer;
begin
	xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then Exit;

    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

			cxViewWorker.DataController.SetRecordCount(0);
			cxViewWorker.BeginUpdate;
			ls_Rcrd := TStringlist.Create;
			try
				iNum := 0;
				for I := 0 to lst_Result.length - 1 do
				begin
					GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
					if not Check_ID(GT_USERIF.ID, ls_Rcrd[2]) then
					begin
						ls_Rcrd.Insert(0, IntToStr(iNum + 1));

						cxViewWorker.DataController.AppendRecord;
						cxViewWorker.DataController.SetValue(iNum, 0, ls_Rcrd[0]);
						cxViewWorker.DataController.SetValue(iNum, 1, ls_Rcrd[1]);
						cxViewWorker.DataController.SetValue(iNum, 2, Format('%s(%s)', [ls_Rcrd[2], ls_Rcrd[3]]));
						cxViewWorker.DataController.SetValue(iNum, 3, ls_Rcrd[4]);
						cxViewWorker.DataController.SetValue(iNum, 4, ls_Rcrd[5]);
						cxViewWorker.DataController.SetValue(iNum, 5, ls_Rcrd[6]);
						cxViewWorker.DataController.SetValue(iNum, 6, ls_Rcrd[7]);
						cxViewWorker.DataController.SetValue(iNum, 7, ls_Rcrd[8]);
						cxViewWorker.DataController.SetValue(iNum, 8, ls_Rcrd[9]);
						cxViewWorker.DataController.SetValue(iNum, 9, ls_Rcrd[10]);
						iNum := iNum + 1;
					end;
				end;
			finally
				ls_Rcrd.Free;
				cxViewWorker.EndUpdate;
				btnChartA2.Click;
			end;
		end else
    begin
			cxViewWorker.DataController.SetRecordCount(0);
      cxGridA2C1ChartView1.DataController.SetRecordCount(0);
			cxGridA2C2ChartALL.DataController.SetRecordCount(0);
			GMessagebox('검색된 내용이 없습니다.', CDMSI);
		end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_STT.btnSearchA10Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;

	iFCall_N :=0;  iCCall_N :=0;  iNCall_N :=0; iTCall_N :=0;
	cxGrid_NewOrderDayList.DataController.SetRecordCount(0);
	cxGridA10C1ChartView1.DataController.SetRecordCount(0);
	cxGridA10C2ChartALL.DataController.SetRecordCount(0);
	RequestDataNewOrderDayList;
end;

procedure TFrm_STT.btnSearchA11Click(Sender: TObject);
var
  dt_sysdate2: string;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;

	dt_sysdate2 := frm_main.func_sysdate;

	if Trim(dt_sysdate2) = '' then
	begin
		GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
		Exit;
	end;

	if cxRBA11_1.Checked then
	begin
		cxGrid_CancelList.Columns[2].Visible := False;
	end else
	begin
		cxGrid_CancelList.Columns[2].Visible := True;
		if cxRBA11_2.Checked then
		begin
			cxGrid_CancelList.Columns[2].DataBinding.FieldName := '일자(요일)';
		end else
		begin
			cxGrid_CancelList.Columns[2].DataBinding.FieldName := '월';
		end;
	end;
	iCanCelTOT :=0; iCanCel0 :=0; iCanCel1 :=0; iCanCel2 :=0; iCanCel3 :=0; iCanCel4 :=0; iCanCel5 :=0;
	iCanCel6 :=0; iCanCel7 :=0; iCanCel8 :=0; iCanCel9 :=0;

	cxGrid_CancelList.DataController.SetRecordCount(0);
	cxGridA11C1ChartView1.DataController.SetRecordCount(0);
	cxGridA11C2ChartALL.DataController.SetRecordCount(0);

	RequestDataCancelList;
end;

procedure TFrm_STT.btnSearchA12Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;

	RequestDataAreaCall;
end;

procedure TFrm_STT.btnSearchA13Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;

	cxGridDBTableView13.DataController.SetRecordCount(0);
	cxGridA13C1ChartView1.DataController.SetRecordCount(0);
	cxGridA13C2ChartALL.DataController.SetRecordCount(0);
	RequestDataChagreCall;
end;

procedure TFrm_STT.btnSearchA15Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;

	cxGridA15View1.DataController.SetRecordCount(0);
	cxGridA15C1ChartView1.DataController.SetRecordCount(0);
	RequestDataBrCallAcc;
end;

procedure TFrm_STT.btnSearchA1Click(Sender: TObject);
var
	dt_sysdate2: string;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;

  if fGetChk_Search_HdBrNo('대표번호별통계') then Exit;

	dt_sysdate2 := frm_main.func_sysdate;

	if Trim(dt_sysdate2) = '' then
	begin
		GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
		Exit;
	end;

	if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
		2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
	begin
		GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
		Exit;
	end;

	if cbA1.ItemIndex = 0 then
	begin
		cxViewKey.Columns[4].Visible := False;
	end else
	begin
		cxViewKey.Columns[4].Visible := True;
		if cbA1.ItemIndex = 1 then
		begin
			cxViewKey.Columns[4].DataBinding.FieldName := '일자(요일)';
		end else
		begin
			cxViewKey.Columns[4].DataBinding.FieldName := '월';
		end;
	end;
	iToCnt := 0;
	cxViewKey.DataController.SetRecordCount(0);
	cxGridA1C2ChartALL.DataController.SetRecordCount(0);
	cxGridA1C1ChartView1.DataController.SetRecordCount(0);
	btnChartA1_Next.Visible := False;
	btnChartA1_Previous.Visible := False;
	RequestDataKey;
end;

procedure TFrm_STT.btnSearchA2Click(Sender: TObject);
var
	dt_sysdate2, msg: string;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;

	if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
	begin
		msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
				+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
		Exit;
	end;

	if fGetChk_Search_HdBrNo('기사별통계') then Exit;

	dt_sysdate2 := frm_main.func_sysdate;

	if Trim(dt_sysdate2) = '' then
	begin
		GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
		Exit;
	end;

	if cbA2.ItemIndex = 0 then
	begin
		cxViewWorker.Bands[5].Visible := False;
		cxViewWorker.Bands[14].Visible := False;
	end else
	begin
		cxViewWorker.Bands[5].Visible := True;
		cxViewWorker.Bands[14].Visible := True;
		if cbA2.ItemIndex = 1 then
		begin
			cxViewWorker.Bands[5].Caption := '일자(요일)';
		end else
		begin
			cxViewWorker.Bands[5].Caption := '월';
		end;
	end;
	cxViewWorker.DataController.SetRecordCount(0);
	cxGridA2C2ChartALL.DataController.SetRecordCount(0);
	cxGridA2C1ChartView1.DataController.SetRecordCount(0);

	RequestDataWorker;
end;

procedure TFrm_STT.btnSearchA3Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;

	cxGridA3View1.DataController.SetRecordCount(0);
	cxGridA3C1ChartView1.DataController.SetRecordCount(0);
	cxGridA3C2ChartALL.DataController.SetRecordCount(0);

	RequestDataCus;
end;

procedure TFrm_STT.btnSearchA4Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;

	cxGridA4View1.DataController.SetRecordCount(0);
	cxGridA4C1ChartView1.DataController.SetRecordCount(0);
	RequestDataBr;
end;

procedure TFrm_STT.btnSearchA5Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;
	cxGridA5View1.DataController.SetRecordCount(0);
	cxGridA5C2ChartALL.DataController.SetRecordCount(0);
	cxGridA5C1ChartView1.DataController.SetRecordCount(0);
	RequestDataCommCall;
end;

procedure TFrm_STT.btnSearchA6Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;

	cxcxGridA6View1.DataController.SetRecordCount(0);
	cxGridA6C1ChartView1.DataController.SetRecordCount(0);
	cxGridA6C2ChartALL.DataController.SetRecordCount(0);
	RequestDataLocalCall;
end;

procedure TFrm_STT.btnSearchA7Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;

	iNewCust := 0; iCust := 0;
	cxGrid_NewCust.DataController.SetRecordCount(0);
	cxGridA7C1ChartView1.DataController.SetRecordCount(0);
	cxGridA7C2ChartALL.DataController.SetRecordCount(0);
	RequestDataNewCust;
end;

procedure TFrm_STT.btnSearchA8Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;

	iFCall_T := 0;  iCCall_T := 0; iTCall_T := 0;
	cxGrid_OrderTimeList.DataController.SetRecordCount(0);
	cxGridA8C1ChartView1.DataController.SetRecordCount(0);
	cxGridA8C2ChartALL.DataController.SetRecordCount(0);
	RequestDataOrderTimeList;
end;

procedure TFrm_STT.btnSearchA9Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;

	iFCall_D := 0;  iCCall_D := 0; iTCall_D := 0;
	cxGrid_OrderDayList.DataController.SetRecordCount(0);
	cxGridA9C1ChartView1.DataController.SetRecordCount(0);
	cxGridA9C2ChartALL.DataController.SetRecordCount(0);

	RequestDataOrderDayList;
end;

procedure TFrm_STT.cbA13PropertiesChange(Sender: TObject);
begin
	if cbA13.ItemIndex = 0 then
	begin
		cbbA13.enabled := False;
	end else
	begin
		cbbA13.enabled := True;
	end;
end;

procedure TFrm_STT.cbA1PropertiesChange(Sender: TObject);
begin
	if cbA1.ItemIndex = 0 then
	begin
		pnl_MonthA1.visible := False;
		pnl_DayA1.visible := True;
		pnl_DayA1.Left := 303;
		pnl_DayA1.Top := 34;
	end else
	begin
		if cbA1.ItemIndex = 1 then
		begin
			pnl_MonthA1.visible := False;
			pnl_DayA1.visible := True;
			pnl_DayA1.Left := 303;
			pnl_DayA1.Top := 34;
		end else
		begin
			pnl_DayA1.visible := False;
			pnl_MonthA1.visible := True;
			pnl_MonthA1.Left := 303;
			pnl_MonthA1.Top := 34;
		end;
	end;
end;

procedure TFrm_STT.cbA2PropertiesChange(Sender: TObject);
begin
	if cbA2.ItemIndex = 0 then
	begin
		pnl_MonthA2.visible := False;
		pnl_DayA2.visible := True;
		pnl_DayA2.Left := 82;
		pnl_DayA2.Top := 60;
	end else
	begin
		if cbA2.ItemIndex = 1 then
		begin
			pnl_MonthA2.visible := False;
			pnl_DayA2.visible := True;
			pnl_DayA2.Left := 82;
			pnl_DayA2.Top := 60;
		end else
		begin
			pnl_DayA2.visible := False;
			pnl_MonthA2.visible := True;
			pnl_MonthA2.Left := 82;
			pnl_MonthA2.Top := 60;
		end;
	end;
end;

procedure TFrm_STT.cbb15PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 0 then edtA15.enabled := False else edtA15.enabled := True;
end;

procedure TFrm_STT.cbb1A12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then btnSearchA12.Click;
end;

procedure TFrm_STT.cbb1A12PropertiesChange(Sender: TObject);
var
	i: integer;
begin
	cbb2A12.Properties.Items.Clear;
	cbb2A12.Properties.Items.Add('전체');
	if Length(AdrLst)>0 then
	begin
		for i:=0 to Length(AdrLst)-1 do
		begin
			if (cbb1A12.text=adrlst[i].City) then
				cbb2A12.Properties.Items.Add(adrlst[i].ward);
		end;
	end;
	cbb2A12.ItemIndex:=0;
end;

procedure TFrm_STT.cbb1A5PropertiesChange(Sender: TObject);
begin
	if cbb1A5.ItemIndex > 0 then
  begin
		cbbA5.ItemIndex := 0;
		cbbA5.Enabled := False;
  end else
  begin
    cbbA5.Enabled := True;
	end;
	if TcxComboBox(Sender).ItemIndex = 0 then edtA5.enabled := False else edtA5.enabled := True;
end;

procedure TFrm_STT.cbb1A6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnSearchA6.Click;
end;

procedure TFrm_STT.cbb1A6PropertiesChange(Sender: TObject);
var
	i: integer;
begin
	cbb2A6.Properties.Items.Clear;
	cbb2A6.Properties.Items.Add('전체');
	if Length(AdrLst)>0 then
	begin
		for i:=0 to Length(AdrLst)-1 do
		begin
			if (cbb1A6.text=adrlst[i].City) then
				cbb2A6.Properties.Items.Add(adrlst[i].ward);
		end;
	end;
	cbb2A6.ItemIndex:=0;
end;

procedure TFrm_STT.cbb3PropertiesChange(Sender: TObject);
begin
	if TcxComboBox(Sender).ItemIndex = 0 then edtA4.enabled := False else edtA4.enabled := True;
end;

procedure TFrm_STT.cbbA5PropertiesChange(Sender: TObject);
begin
  if cbbA5.ItemIndex > 0 then
  begin
    cbb1A5.ItemIndex := 0;
    cbb1A5.Enabled := False;

    edtA5.Clear;
    edtA5.Enabled := False;
  end else
  begin
    cbb1A5.Enabled := True;
    edtA5.Enabled := True;
  end;
end;

procedure TFrm_STT.cbChartKindA10PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA10C1.Visible = True then AViewChart := cxGridA10C1ChartView1;
	if cxGridA10C2.Visible = True then AViewChart := cxGridA10C2ChartAll;

	case TcxComboBox(sender).ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA10.Click;
end;

procedure TFrm_STT.cbChartKindA11PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA11C1.Visible = True then AViewChart := cxGridA11C1ChartView1;
	if cxGridA11C2.Visible = True then AViewChart := cxGridA11C2ChartAll;

	case TcxComboBox(sender).ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA11.Click;
end;

procedure TFrm_STT.cbChartKindA12PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA12C1.Visible = True then AViewChart := cxGridA12C1ChartView1;
	if cxGridA12C2.Visible = True then AViewChart := cxGridA12C2ChartAll;

	case TcxComboBox(sender).ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA12.Click;
end;

procedure TFrm_STT.cbChartKindA13PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA13C1.Visible = True then AViewChart := cxGridA13C1ChartView1;
	if cxGridA13C2.Visible = True then AViewChart := cxGridA13C2ChartAll;

	case TcxComboBox(sender).ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA13.Click;
end;

procedure TFrm_STT.cbChartKindA15PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA15C1.Visible = True then AViewChart := cxGridA15C1ChartView1;
	if cxGridA15C2.Visible = True then AViewChart := cxGridA15C2ChartAll;

	case TcxComboBox(sender).ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA15.Click;
end;

procedure TFrm_STT.cbChartKindA2PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA2C1.Visible = True then AViewChart := cxGridA2C1ChartView1;
	if cxGridA2C2.Visible = True then AViewChart := cxGridA2C2ChartALL;

	case TcxComboBox(sender).ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
  btnChartA2.Click;
end;

procedure TFrm_STT.cbChartKindA3PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA3C1.Visible = True then AViewChart := cxGridA3C1ChartView1;
	if cxGridA3C2.Visible = True then AViewChart := cxGridA3C2ChartAll;

	case cbChartKindA3.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA3.Click;
end;

procedure TFrm_STT.cbChartKindA4PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA4C1.Visible = True then AViewChart := cxGridA4C1ChartView1;
	if cxGridA4C2.Visible = True then AViewChart := cxGridA4C2ChartAll;

	case cbChartKindA4.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA4.Click;
end;

procedure TFrm_STT.cbChartKindA5PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA5C1.Visible = True then AViewChart := cxGridA5C1ChartView1;
	if cxGridA5C2.Visible = True then AViewChart := cxGridA5C2ChartAll;

	case cbChartKindA5.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA5.Click;
end;

procedure TFrm_STT.cbChartKindA6PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA6C1.Visible = True then AViewChart := cxGridA6C1ChartView1;
	if cxGridA6C2.Visible = True then AViewChart := cxGridA6C2ChartAll;

	case cbChartKindA6.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA6.Click;
end;

procedure TFrm_STT.cbChartKindA7PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA7C1.Visible = True then AViewChart := cxGridA7C1ChartView1;
	if cxGridA7C2.Visible = True then AViewChart := cxGridA7C2ChartAll;

	case TcxComboBox(sender).ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA7.Click;
end;

procedure TFrm_STT.cbChartKindA8PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA8C1.Visible = True then AViewChart := cxGridA8C1ChartView1;
	if cxGridA8C2.Visible = True then AViewChart := cxGridA8C2ChartAll;

	case TcxComboBox(sender).ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA8.Click;
end;

procedure TFrm_STT.cbChartKindA9PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA9C1.Visible = True then AViewChart := cxGridA9C1ChartView1;
	if cxGridA9C2.Visible = True then AViewChart := cxGridA9C2ChartAll;

	case TcxComboBox(sender).ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA9.Click;
end;

procedure TFrm_STT.cbChartKindPropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cxGridA1C1.Visible = True then AViewChart := cxGridA1C1ChartView1;
	if cxGridA1C2.Visible = True then AViewChart := cxGridA1C2ChartAll;

	case TcxComboBox(sender).ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA1.Click;
end;

procedure TFrm_STT.cbKeynumber11Click(Sender: TObject);
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
	lblSosokNameA11.Caption := sName;
	cxHdNo11.Text := sHdNo;
	cxBrNo11.Text := sBrNo;
end;

procedure TFrm_STT.cbKindA10PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	cxGrid_NewOrderDayList.Columns[0].SortOrder := soNone;
	cxGrid_NewOrderDayList.Columns[1].SortOrder := soNone;
	
	cxGrid_NewOrderDayList.Columns[2].SortOrder := soNone;
	cxGrid_NewOrderDayList.Columns[3].SortOrder := soNone;
	cxGrid_NewOrderDayList.Columns[4].SortOrder := soNone;
	cxGrid_NewOrderDayList.Columns[5].SortOrder := soNone;
	cxGrid_NewOrderDayList.Columns[6].SortOrder := soNone;

	if cxGrid_NewOrderDayList.DataController.RecordCount > 0 then
	begin
		cxGrid_NewOrderDayList.DataController.SelectRows(0, 0);
		cxGrid_NewOrderDayList.DataController.FocusedRowIndex := 0;
		cxGrid_NewOrderDayList.DataController.Scroll(0);
	end;

	if cbKindA10.ItemIndex = 0 then
	begin
		cxGridA10C1.Visible := False;
		cxGridA10C2.Visible := True;
	end else
	begin
		cxGridA10C1.Visible := True;
		cxGridA10C2.Visible := False;
	end;

	if cxGridA10C1.Visible = True then AViewChart := cxGridA10C1ChartView1;
	if cxGridA10C2.Visible = True then AViewChart := cxGridA10C2ChartAll;

	case cbChartKindA10.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA10.Click;
end;

procedure TFrm_STT.cbKindA11PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cbKindA11.ItemIndex = 0 then
	begin
		cxGridA11C1.Visible := False;
		cxGridA11C2.Visible := True;
	end else
	begin
		cxGridA11C1.Visible := True;
		cxGridA11C2.Visible := False;
	end;

	if cxGridA11C1.Visible = True then AViewChart := cxGridA11C1ChartView1;
	if cxGridA11C2.Visible = True then AViewChart := cxGridA11C2ChartAll;

	case cbChartKindA11.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA11.Click;
end;

procedure TFrm_STT.cbKindA12PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
		cxGridA12C1ChartView1.DataController.SetRecordCount(0);
		cxGridA12C2ChartALL.DataController.SetRecordCount(0);
	if cbKindA12.ItemIndex = 0 then
	begin
		cxGridA12C1.Visible := False;
		cxGridA12C2.Visible := True;
	end else
	begin
		cxGridA12C1.Visible := True;
		cxGridA12C2.Visible := False;
	end;

	if cxGridA12C1.Visible = True then AViewChart := cxGridA12C1ChartView1;
	if cxGridA12C2.Visible = True then AViewChart := cxGridA12C2ChartAll;

	case cbChartKindA12.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA12.Click;
end;

procedure TFrm_STT.cbKindA12_1PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	cxGridA12C1ChartView1.DataController.SetRecordCount(0);
	cxGridA12C2ChartALL.DataController.SetRecordCount(0);
	if cbKindA12.ItemIndex = 0 then
	begin
		cxGridA12C1.Visible := False;
		cxGridA12C2.Visible := True;
	end else
	begin
		cxGridA12C1.Visible := True;
		cxGridA12C2.Visible := False;
	end;

	if cxGridA12C1.Visible = True then AViewChart := cxGridA12C1ChartView1;
	if cxGridA12C2.Visible = True then AViewChart := cxGridA12C2ChartAll;

	case cbChartKindA12.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA12.Click;
end;

procedure TFrm_STT.cbKindA12_GuDongClick(Sender: TObject);
begin
	cbKindA12_GuDong.Tag := 0;
end;

procedure TFrm_STT.cbKindA12_GuDongPropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cbKindA12_GuDong.Tag = 99 then exit;
	
	cxGridA12C1ChartView1.DataController.SetRecordCount(0);
	cxGridA12C2ChartALL.DataController.SetRecordCount(0);
	if cbKindA12.ItemIndex = 0 then
	begin
		cxGridA12C1.Visible := False;
		cxGridA12C2.Visible := True;
	end else
	begin
		cxGridA12C1.Visible := True;
		cxGridA12C2.Visible := False;
	end;

	if cxGridA12C1.Visible = True then AViewChart := cxGridA12C1ChartView1;
	if cxGridA12C2.Visible = True then AViewChart := cxGridA12C2ChartAll;

	case cbChartKindA12.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA12.Click;
end;

procedure TFrm_STT.cbKindA12_RankPropertiesChange(Sender: TObject);
var iRow : integer;
begin
	gSortIdx := cbKindA12_Rank.ItemIndex;
	cxGridBandedTableView12.DataController.Filter.Active := False; 
	case gSortIdx of
	0: cxGridBandedTableView12.Columns[70].SortOrder := soDescending;   //전체콜수
	1:
		begin
			cxGridBandedTableView12.Columns[70].SortOrder := soDescending;

			cxGridBandedTableView12.DataController.Filter.BeginUpdate;
			try
				cxGridBandedTableView12.DataController.Filter.Clear;

				cxGridBandedTableView12.DataController.Filter.Root.BoolOperatorKind := fboOr;
				cxGridBandedTableView12.DataController.Filter.Root.AddItem(cxGridBandedTableView12.Columns[0], foEqual, '1', '순번');
				cxGridBandedTableView12.DataController.Filter.Root.AddItem(cxGridBandedTableView12.Columns[0], foEqual, '2', '순번');
				cxGridBandedTableView12.DataController.Filter.Root.AddItem(cxGridBandedTableView12.Columns[0], foEqual, '3', '순번');
				cxGridBandedTableView12.DataController.Filter.Root.AddItem(cxGridBandedTableView12.Columns[0], foEqual, '4', '순번');
				cxGridBandedTableView12.DataController.Filter.Root.AddItem(cxGridBandedTableView12.Columns[0], foEqual, '5', '순번');
				cxGridBandedTableView12.DataController.Filter.Active := True;
			finally
				cxGridBandedTableView12.DataController.Filter.EndUpdate;
			end;   
		end;
	2:
		begin 
			cxGridBandedTableView12.Columns[70].SortOrder := soAscending;
			iRow := cxGridBandedTableView12.DataController.RecordCount;
			cxGridBandedTableView12.DataController.Filter.BeginUpdate;
			try
				cxGridBandedTableView12.DataController.Filter.Clear;

				cxGridBandedTableView12.DataController.Filter.Root.BoolOperatorKind := fboOr;
				cxGridBandedTableView12.DataController.Filter.Root.AddItem(cxGridBandedTableView12.Columns[0], foEqual, IntToStr(iRow), '순번');
				cxGridBandedTableView12.DataController.Filter.Root.AddItem(cxGridBandedTableView12.Columns[0], foEqual, IntToStr(iRow-1), '순번');
				cxGridBandedTableView12.DataController.Filter.Root.AddItem(cxGridBandedTableView12.Columns[0], foEqual, IntToStr(iRow-2), '순번');
				cxGridBandedTableView12.DataController.Filter.Root.AddItem(cxGridBandedTableView12.Columns[0], foEqual, IntToStr(iRow-3), '순번');
				cxGridBandedTableView12.DataController.Filter.Root.AddItem(cxGridBandedTableView12.Columns[0], foEqual, IntToStr(iRow-4), '순번');
				cxGridBandedTableView12.DataController.Filter.Active := True;
			finally
				cxGridBandedTableView12.DataController.Filter.EndUpdate;
			end;   
		end;
	end;
	btnChartA12.Click;
end;

procedure TFrm_STT.cbKindA13PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cbKindA13.ItemIndex = 0 then
	begin
		cxGridA13C1.Visible := False;
		cxGridA13C2.Visible := True;
	end else
	begin
		cxGridA13C1.Visible := True;
		cxGridA13C2.Visible := False;
	end;

	if cxGridA13C1.Visible = True then AViewChart := cxGridA13C1ChartView1;
	if cxGridA13C2.Visible = True then AViewChart := cxGridA13C2ChartAll;

	case cbChartKindA13.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA13.Click;
end;

procedure TFrm_STT.cbKindA15PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cbKindA15.ItemIndex = 0 then
	begin
		cxGridA15C1.Visible := False;
		cxGridA15C2.Visible := True;
	end else
	begin
		cxGridA15C1.Visible := True;
		cxGridA15C2.Visible := False;
	end;

	if cxGridA15C1.Visible = True then AViewChart := cxGridA15C1ChartView1;
	if cxGridA15C2.Visible = True then AViewChart := cxGridA15C2ChartAll;

	case cbChartKindA15.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA15.Click;
end;

procedure TFrm_STT.cbKindA1PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	cxViewKey_Tmp.Columns[0].SortOrder := soNone;
	cxViewKey_Tmp.Columns[1].SortOrder := soNone;

	cxViewKey_Tmp.Columns[2].SortOrder := soNone;
	cxViewKey_Tmp.Columns[3].SortOrder := soNone;
	cxViewKey_Tmp.Columns[4].SortOrder := soNone;
	cxViewKey_Tmp.Columns[5].SortOrder := soNone;

	cxViewKey_Tmp.Columns[6].SortOrder := soNone;
	cxViewKey_Tmp.Columns[7].SortOrder := soNone;
	cxViewKey_Tmp.Columns[8].SortOrder := soNone;
	cxViewKey_Tmp.Columns[9].SortOrder := soNone;

	if cxViewKey.DataController.RecordCount > 0 then
	begin
		cxViewKey_Tmp.DataController.SelectRows(0, 0);
		cxViewKey_Tmp.DataController.FocusedRowIndex := 0;
		cxViewKey_Tmp.DataController.Scroll(0);
	end;

	if cbKindA1.ItemIndex > 0 then
		cxViewKey_Tmp.Columns[cbKindA1.ItemIndex+1].SortOrder := soDescending;

	if cbKindA1.ItemIndex = 0 then
	begin
		cxGridA1C1.Visible := False;
		cxGridA1C2.Visible := True;
	end else
	begin
		cxGridA1C1.Visible := True;
		cxGridA1C2.Visible := False;
	end;

	if cxGridA1C1.Visible = True then AViewChart := cxGridA1C1ChartView1;
	if cxGridA1C2.Visible = True then AViewChart := cxGridA1C2ChartAll;

	case cbChartKindA1.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA1.Click;
end;

procedure TFrm_STT.cbKindA21PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cbKindA2.ItemIndex = 0 then
	begin
		cxGridA2C1.Visible := False;
		cxGridA2C2.Visible := True;
	end else
	begin
		cxGridA2C1.Visible := True;
		cxGridA2C2.Visible := False;
	end;

	if cxViewWorker.DataController.RecordCount > 0 then
	begin
		cxViewWorker.DataController.SelectRows(0, 0);
		cxViewWorker.DataController.FocusedRowIndex := 0;
		cxViewWorker.DataController.Scroll(0);
	end;

	if cxGridA2C1.Visible = True then AViewChart := cxGridA2C1ChartView1;
	if cxGridA2C2.Visible = True then AViewChart := cxGridA2C2ChartALL;

	case cbChartKindA2.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA2.Click;
end;

procedure TFrm_STT.cbKindA2PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	cxViewWorker.Columns[0].SortOrder := soNone;
	cxViewWorker.Columns[1].SortOrder := soNone;
	cxViewWorker.Columns[2].SortOrder := soNone;
	cxViewWorker.Columns[3].SortOrder := soNone;
	cxViewWorker.Columns[4].SortOrder := soNone;
	cxViewWorker.Columns[5].SortOrder := soNone;
	case cbKindA2.ItemIndex of
		0 :
		begin
			cxViewWorker.Columns[6].SortOrder := soNone;
			cxViewWorker.Columns[7].SortOrder := soNone;
			cxViewWorker.Columns[8].SortOrder := soNone;
			cxViewWorker.Columns[9].SortOrder := soNone;
			cxViewWorker.Columns[10].SortOrder := soNone;
			cxViewWorker.Columns[11].SortOrder := soNone;
		end;
		1 :
		begin
			AOrderBy := 'sum1';
			cxViewWorker.Columns[6].SortOrder := soNone;
			cxViewWorker.Columns[7].SortOrder := soNone;
			cxViewWorker.Columns[8].SortOrder := soNone;
			cxViewWorker.Columns[9].SortOrder := soNone;
			cxViewWorker.Columns[10].SortOrder := soNone;
			cxViewWorker.Columns[11].SortOrder := soNone;

			cxViewWorker.Columns[6].SortOrder := soDescending;
		end;
		2 :
		begin
			AOrderBy := 'sum2';
			cxViewWorker.Columns[6].SortOrder := soNone;
			cxViewWorker.Columns[7].SortOrder := soNone;
			cxViewWorker.Columns[8].SortOrder := soNone;
			cxViewWorker.Columns[9].SortOrder := soNone;
			cxViewWorker.Columns[10].SortOrder := soNone;
			cxViewWorker.Columns[11].SortOrder := soNone;

			cxViewWorker.Columns[7].SortOrder := soDescending;
		end;
		3 :
		begin
			AOrderBy := '(sum1 + sum2)';
			cxViewWorker.Columns[6].SortOrder := soNone;
			cxViewWorker.Columns[7].SortOrder := soNone;
			cxViewWorker.Columns[8].SortOrder := soNone;
			cxViewWorker.Columns[9].SortOrder := soNone;
			cxViewWorker.Columns[10].SortOrder := soNone;
			cxViewWorker.Columns[11].SortOrder := soNone;

			cxViewWorker.Columns[8].SortOrder := soDescending;
		end;
		4 :
		begin
			AOrderBy := 'sum3';
			cxViewWorker.Columns[6].SortOrder := soNone;
			cxViewWorker.Columns[7].SortOrder := soNone;
			cxViewWorker.Columns[8].SortOrder := soNone;
			cxViewWorker.Columns[9].SortOrder := soNone;
			cxViewWorker.Columns[10].SortOrder := soNone;
			cxViewWorker.Columns[11].SortOrder := soNone;

			cxViewWorker.Columns[9].SortOrder := soDescending;
    end;
		5 :
		begin
			AOrderBy := 'sum4';
			cxViewWorker.Columns[6].SortOrder := soNone;
			cxViewWorker.Columns[7].SortOrder := soNone;
			cxViewWorker.Columns[8].SortOrder := soNone;
			cxViewWorker.Columns[9].SortOrder := soNone;
			cxViewWorker.Columns[10].SortOrder := soNone;
			cxViewWorker.Columns[11].SortOrder := soNone;

			cxViewWorker.Columns[10].SortOrder := soDescending;
    end;
		6 :
		begin
			AOrderBy := 'sum5';
			cxViewWorker.Columns[6].SortOrder := soNone;
			cxViewWorker.Columns[7].SortOrder := soNone;
			cxViewWorker.Columns[8].SortOrder := soNone;
			cxViewWorker.Columns[9].SortOrder := soNone;
			cxViewWorker.Columns[10].SortOrder := soNone;
			cxViewWorker.Columns[11].SortOrder := soNone;

			cxViewWorker.Columns[11].SortOrder := soDescending;
    end;
  end;

	if cxViewWorker.DataController.RecordCount > 0 then
	begin
		cxViewWorker.DataController.SelectRows(0, 0);
		cxViewWorker.DataController.FocusedRowIndex := 0;
		cxViewWorker.DataController.Scroll(0);
	end;

	if cbKindA2.ItemIndex = 0 then
	begin
		cxGridA2C1.Visible := False;
    cxGridA2C2.Visible := True;
  end else
  begin
    cxGridA2C1.Visible := True;
    cxGridA2C2.Visible := False;
  end;

	if cxGridA2C1.Visible = True then AViewChart := cxGridA2C1ChartView1;
	if cxGridA2C2.Visible = True then AViewChart := cxGridA2C2ChartALL;

	case cbChartKindA2.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	cxGridA2C2ChartALL.DataController.SetRecordCount(0);
	cxGridA2C1ChartView1.DataController.SetRecordCount(0);

	btnChartA2.Click;
end;

procedure TFrm_STT.cbKindA3PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	cxGridA3View1.Columns[0].SortOrder := soNone;
	cxGridA3View1.Columns[1].SortOrder := soNone;
	cxGridA3View1.Columns[2].SortOrder := soNone;
	
	cxGridA3View1.Columns[3].SortOrder := soNone;
	cxGridA3View1.Columns[4].SortOrder := soNone;
	cxGridA3View1.Columns[5].SortOrder := soNone;
	cxGridA3View1.Columns[6].SortOrder := soNone;
	cxGridA3View1.Columns[7].SortOrder := soNone;
	cxGridA3View1.Columns[8].SortOrder := soNone;
	cxGridA3View1.Columns[9].SortOrder := soNone;

	if cbKindA3.ItemIndex > 0 then
		cxGridA3View1.Columns[cbKindA3.ItemIndex+2].SortOrder := soDescending;

	if cxGridA3View1.DataController.RecordCount > 0 then
	begin
		cxGridA3View1.DataController.SelectRows(0, 0);
		cxGridA3View1.DataController.FocusedRowIndex := 0;
		cxGridA3View1.DataController.Scroll(0);
	end;

	if cbKindA3.ItemIndex = 0 then
	begin
		cxGridA3C1.Visible := False;
		cxGridA3C2.Visible := True;
	end else
	begin
		cxGridA3C1.Visible := True;
		cxGridA3C2.Visible := False;
	end;

	if cxGridA3C1.Visible = True then AViewChart := cxGridA3C1ChartView1;
	if cxGridA3C2.Visible = True then AViewChart := cxGridA3C2ChartAll;

	case cbChartKindA3.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA3.Click;
end;

procedure TFrm_STT.cbKindA4PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cbKindA4.ItemIndex = 0 then
	begin
		cxGridA4C1.Visible := False;
		cxGridA4C2.Visible := True;
	end else
	begin
		cxGridA4C1.Visible := True;
		cxGridA4C2.Visible := False;
	end;

	if cxGridA4C1.Visible = True then AViewChart := cxGridA4C1ChartView1;
	if cxGridA4C2.Visible = True then AViewChart := cxGridA4C2ChartAll;

	case cbChartKindA4.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA4.Click;
end;

procedure TFrm_STT.cbKindA51PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cbKindA5.ItemIndex = 0 then
	begin
		cxGridA5C1.Visible := False;
		cxGridA5C2.Visible := True;
	end else
	begin
		cxGridA5C1.Visible := True;
		cxGridA5C2.Visible := False;
	end;

	if cxGridA5C1.Visible = True then AViewChart := cxGridA5C1ChartView1;
	if cxGridA5C2.Visible = True then AViewChart := cxGridA5C2ChartALL;

	case cbChartKindA5.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA5.Click;
end;

procedure TFrm_STT.cbKindA5PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	if cbKindA5.ItemIndex = 0 then
	begin
		cxGridA5C1.Visible := False;
		cxGridA5C2.Visible := True;
	end else
	begin
		cxGridA5C1.Visible := True;
		cxGridA5C2.Visible := False;
	end;

	if cxGridA5C1.Visible = True then AViewChart := cxGridA5C1ChartView1;
	if cxGridA5C2.Visible = True then AViewChart := cxGridA5C2ChartAll;

	case cbChartKindA5.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA5.Click;
end;

procedure TFrm_STT.cbKindA6PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	cxcxGridA6View1.Columns[0].SortOrder := soNone;
	cxcxGridA6View1.Columns[1].SortOrder := soNone;
	cxcxGridA6View1.Columns[2].SortOrder := soNone;

	cxcxGridA6View1.Columns[3].SortOrder := soNone;
	cxcxGridA6View1.Columns[4].SortOrder := soNone;
	cxcxGridA6View1.Columns[5].SortOrder := soNone;
	cxcxGridA6View1.Columns[6].SortOrder := soNone;
	cxcxGridA6View1.Columns[7].SortOrder := soNone;

	if cbKindA6.ItemIndex > 0 then
		cxcxGridA6View1.Columns[cbKindA6.ItemIndex+2].SortOrder := soDescending;

	if cxcxGridA6View1.DataController.RecordCount > 0 then
	begin
		cxcxGridA6View1.DataController.SelectRows(0, 0);
		cxcxGridA6View1.DataController.FocusedRowIndex := 0;
		cxcxGridA6View1.DataController.Scroll(0);
	end;

	if cbKindA6.ItemIndex = 0 then
	begin
		cxGridA6C1.Visible := False;
		cxGridA6C2.Visible := True;
	end else
	begin
		cxGridA6C1.Visible := True;
		cxGridA6C2.Visible := False;
	end;

	if cxGridA6C1.Visible = True then AViewChart := cxGridA6C1ChartView1;
	if cxGridA6C2.Visible = True then AViewChart := cxGridA6C2ChartAll;

	case cbChartKindA6.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA6.Click;
end;

procedure TFrm_STT.cbKindA7PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	cxGrid_NewCust.Columns[0].SortOrder := soNone;
	
	cxGrid_NewCust.Columns[1].SortOrder := soNone;
	cxGrid_NewCust.Columns[2].SortOrder := soNone;
	cxGrid_NewCust.Columns[3].SortOrder := soNone;

	if cxGrid_NewCust.DataController.RecordCount > 0 then
	begin
		cxGrid_NewCust.DataController.SelectRows(0, 0);
		cxGrid_NewCust.DataController.FocusedRowIndex := 0;
		cxGrid_NewCust.DataController.Scroll(0);
	end;

	if cbKindA7.ItemIndex = 0 then
	begin
		cxGridA7C1.Visible := False;
		cxGridA7C2.Visible := True;
	end else
	begin
		cxGridA7C1.Visible := True;
		cxGridA7C2.Visible := False;
	end;

	if cxGridA7C1.Visible = True then AViewChart := cxGridA7C1ChartView1;
	if cxGridA7C2.Visible = True then AViewChart := cxGridA7C2ChartAll;

	case cbChartKindA7.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA7.Click;
end;

procedure TFrm_STT.cbKindA8PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	cxGrid_OrderTimeList.Columns[0].SortOrder := soNone;

	cxGrid_OrderTimeList.Columns[1].SortOrder := soNone;
	cxGrid_OrderTimeList.Columns[2].SortOrder := soNone;
	cxGrid_OrderTimeList.Columns[3].SortOrder := soNone;
	cxGrid_OrderTimeList.Columns[4].SortOrder := soNone;

	if cxGrid_OrderTimeList.DataController.RecordCount > 0 then
	begin
		cxGrid_OrderTimeList.DataController.SelectRows(0, 0);
		cxGrid_OrderTimeList.DataController.FocusedRowIndex := 0;
		cxGrid_OrderTimeList.DataController.Scroll(0);
	end;

	if cbKindA8.ItemIndex = 0 then
	begin
		cxGridA8C1.Visible := False;
		cxGridA8C2.Visible := True;
	end else
	begin
		cxGridA8C1.Visible := True;
		cxGridA8C2.Visible := False;
	end;

	if cxGridA8C1.Visible = True then AViewChart := cxGridA8C1ChartView1;
	if cxGridA8C2.Visible = True then AViewChart := cxGridA8C2ChartAll;

	case cbChartKindA8.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;
	btnChartA8.Click;
end;

procedure TFrm_STT.cbKindA9PropertiesChange(Sender: TObject);
var AViewChart : TcxGridChartView;
begin
	cxGrid_OrderDayList.Columns[0].SortOrder := soNone;
	cxGrid_OrderDayList.Columns[1].SortOrder := soNone;

	cxGrid_OrderDayList.Columns[2].SortOrder := soNone;
	cxGrid_OrderDayList.Columns[3].SortOrder := soNone;
	cxGrid_OrderDayList.Columns[4].SortOrder := soNone;
	cxGrid_OrderDayList.Columns[5].SortOrder := soNone;

	if cxGrid_OrderDayList.DataController.RecordCount > 0 then
	begin
		cxGrid_OrderDayList.DataController.SelectRows(0, 0);
		cxGrid_OrderDayList.DataController.FocusedRowIndex := 0;
		cxGrid_OrderDayList.DataController.Scroll(0);
	end;

	if cbKindA9.ItemIndex = 0 then
  begin
    cxGridA9C1.Visible := False;
    cxGridA9C2.Visible := True;
  end else
  begin
    cxGridA9C1.Visible := True;
		cxGridA9C2.Visible := False;
  end;

	if cxGridA9C1.Visible = True then AViewChart := cxGridA9C1ChartView1;
	if cxGridA9C2.Visible = True then AViewChart := cxGridA9C2ChartAll;

	case cbChartKindA9.ItemIndex of
		0 : AViewChart.DiagramColumn.Active := True;
		1 : AViewChart.DiagramBar.Active := True;
		2 : AViewChart.DiagramStackedArea.Active := True;
		3 : AViewChart.DiagramStackedBar.Active := True;
		4 : AViewChart.DiagramStackedColumn.Active := True;
		5 : AViewChart.DiagramLine.Active := True;
		6 : AViewChart.DiagramArea.Active := True;
		7 : AViewChart.DiagramPie.Active := True;
	end;

	btnChartA9.Click;
end;

procedure TFrm_STT.cb_01Click(Sender: TObject);
var i : integer;
begin

	for I := 4 to 14 do
	begin
		cxGridBandedTableView12.Bands[i].Visible := True;	
	end;
	for I := 21 to 86 do
	begin
		cxGridBandedTableView12.Bands[i].Visible := True;	
	end;

	for I := 4 to 69 do
	begin
		cxGridBandedTableView12.Columns[i].Visible := True;	
	end;

	if (cb_01.Down) and (not cb_02.Down) then
	begin
		cxGridBandedTableView12.Bands[4].Visible := False;
		cxGridBandedTableView12.Bands[5].Visible := False;
		cxGridBandedTableView12.Bands[6].Visible := False;
		cxGridBandedTableView12.Bands[12].Visible := False;
		cxGridBandedTableView12.Bands[13].Visible := False;
		cxGridBandedTableView12.Bands[14].Visible := False;

		for I := 21 to 38 do
		begin
			cxGridBandedTableView12.Bands[i].Visible := False;	
		end;
		for I := 69 to 86 do
		begin
			cxGridBandedTableView12.Bands[i].Visible := False;	
		end;

		for I := 4 to 21 do
		begin
			cxGridBandedTableView12.Columns[i].Visible := False;	
		end;
		for I := 52 to 69 do
		begin
			cxGridBandedTableView12.Columns[i].Visible := False;	
		end;
	end else
	if (not cb_01.Down) and (cb_02.Down) then
	begin
		for I := 7 to 11 do
		begin
			cxGridBandedTableView12.Bands[i].Visible := False;	
		end;
		for I := 39 to 68 do
		begin
			cxGridBandedTableView12.Bands[i].Visible := False;	
		end;

		for I := 22 to 51 do
		begin
			cxGridBandedTableView12.Columns[i].Visible := False;	
		end;
	end else
  if (cb_01.Down) and (cb_02.Down) then
	begin
		if TAdvGlowButton(Sender).Tag = 1 then
		begin
			cb_02.Down := False;
		end else
		if TAdvGlowButton(Sender).Tag = 2 then
		begin
			cb_01.Down := False;
		end;
	end;

	btnChartA12.Click;
end;

procedure TFrm_STT.chkFinishCntPropertiesChange(Sender: TObject);
begin
  btnChartA1.Click;
end;

procedure TFrm_STT.asg37GetDisplayText(Sender: TcxCustomGridTableItem;
	ARecord: TcxCustomGridRecord; var AText: string);
begin
  AText:=FormatFloat('#,##0',StrToFloatDef(atext,0));
end;

procedure TFrm_STT.btnDateA4Click(Sender: TObject);
begin
  pop_dateA1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_STT.btnChartA10Click(Sender: TObject);
var
  I : Integer;
	AStyle : TcxStyle;
begin
	case cbKindA10.ItemIndex of
		0:
		begin
			cxGridA10C1.Visible := False;
			cxGridA10C2.Visible := True;
			cxGridA10C2ChartALL.BeginUpdate();
			try
				cxGridA10C2ChartALL.DataController.RecordCount := cxGrid_NewOrderDayList.DataController.RecordCount;;
				 for I := 0 to cxGrid_NewOrderDayList.DataController.RecordCount-1 do
				 begin
					 cxGridA10C2ChartALL.Categories.Values[I] := Copy(cxGrid_NewOrderDayList.ViewData.Records[i].Values[0],6,5)
																							 + '(' + Copy(cxGrid_NewOrderDayList.ViewData.Records[i].Values[1],1,1) + ')';
					 cxGridA10C2ChartSeries1.Values[I] := cxGrid_NewOrderDayList.ViewData.Records[i].Values[2];
					 cxGridA10C2ChartSeries2.Values[I] := cxGrid_NewOrderDayList.ViewData.Records[i].Values[3];
					 cxGridA10C2ChartSeries3.Values[I] := cxGrid_NewOrderDayList.ViewData.Records[i].Values[4];
					 cxGridA10C2ChartSeries4.Values[I] := cxGrid_NewOrderDayList.ViewData.Records[i].Values[5];
					 cxGridA10C2ChartSeries5.Values[I] := StringReplace(cxGrid_NewOrderDayList.ViewData.Records[i].Values[6], '%', '',[rfReplaceAll]);
				 end;
			finally
				cxGridA10C2ChartALL.EndUpdate();
			end;
		end;
		1,2,3,4,5:
		begin
			cxGridA10C1.Visible := True;
			cxGridA10C2.Visible := False;
			cxGridA10C1ChartView1.BeginUpdate();
			try
				cxGridA10C1ChartView1.DataController.RecordCount := cxGrid_NewOrderDayList.DataController.RecordCount;
				cxGridA10C1ChartView1Series1.DisplayText := cbKindA10.text;

				AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA10.ItemIndex)));
				cxGridA10C1ChartView1Series1.Styles.values := AStyle;
				for I := 0 to cxGrid_NewOrderDayList.DataController.RecordCount-1 do
				begin
					cxGridA10C1ChartView1.Categories.Values[I] := Copy(cxGrid_NewOrderDayList.ViewData.Records[i].Values[0],6,5)
																								+ '(' + Copy(cxGrid_NewOrderDayList.ViewData.Records[i].Values[1],1,1) + ')';

					case cbKindA10.ItemIndex of
						1: cxGridA10C1ChartView1Series1.Values[I] := cxGrid_NewOrderDayList.ViewData.Records[i].Values[2];
						2: cxGridA10C1ChartView1Series1.Values[I] := cxGrid_NewOrderDayList.ViewData.Records[i].Values[3];
						3: cxGridA10C1ChartView1Series1.Values[I] := cxGrid_NewOrderDayList.ViewData.Records[i].Values[4];
						4: cxGridA10C1ChartView1Series1.Values[I] := cxGrid_NewOrderDayList.ViewData.Records[i].Values[5];
						5: cxGridA10C1ChartView1Series1.Values[I] := StringReplace(cxGrid_NewOrderDayList.ViewData.Records[i].Values[6], '%', '',[rfReplaceAll]);
					end;
				end;
			finally
				cxGridA10C1ChartView1.EndUpdate();
      end;
		end;
	end;
end;

procedure TFrm_STT.btnChartA11Click(Sender: TObject);
var
	I : Integer;
	AStyle : TcxStyle;
begin
	case cbKindA11.ItemIndex of
		0..11:
		begin
			cxGridA11C1.Visible := True;
			cxGridA11C2.Visible := False;
			cxGridA11C1ChartView1.BeginUpdate();
			try
				cxGridA11C1ChartView1.DataController.RecordCount := cxGrid_CancelList.DataController.RecordCount;
				for I := 0 to cxGrid_CancelList.DataController.RecordCount-1 do
				begin
          if cxRBA11_1.checked then
            cxGridA11C1ChartView1.Categories.Values[I] := cxGrid_CancelList.DataController.Values[i, 1]
          else
            cxGridA11C1ChartView1.Categories.Values[I] := cxGrid_CancelList.DataController.Values[i, 2];
          case cbKindA11.ItemIndex of
          0: cxGridA11C1ChartView1Series1.Values[I] := cxGrid_CancelList.DataController.Values[i, 3];
          1: cxGridA11C1ChartView1Series1.Values[I] := cxGrid_CancelList.DataController.Values[i, 16];
          2: cxGridA11C1ChartView1Series1.Values[I] := cxGrid_CancelList.DataController.Values[i, 17];
          3: cxGridA11C1ChartView1Series1.Values[I] := cxGrid_CancelList.DataController.Values[i, 18];
          4: cxGridA11C1ChartView1Series1.Values[I] := cxGrid_CancelList.DataController.Values[i, 19];
          5: cxGridA11C1ChartView1Series1.Values[I] := cxGrid_CancelList.DataController.Values[i, 20];
          6: cxGridA11C1ChartView1Series1.Values[I] := cxGrid_CancelList.DataController.Values[i, 21];
          7: cxGridA11C1ChartView1Series1.Values[I] := cxGrid_CancelList.DataController.Values[i, 22];
          8: cxGridA11C1ChartView1Series1.Values[I] := cxGrid_CancelList.DataController.Values[i, 23];
          9: cxGridA11C1ChartView1Series1.Values[I] := cxGrid_CancelList.DataController.Values[i, 24];
          10: cxGridA11C1ChartView1Series1.Values[I] := cxGrid_CancelList.DataController.Values[i, 25];
          11: cxGridA11C1ChartView1Series1.Values[I] := cxGrid_CancelList.DataController.Values[i, 26];
          end;
				end;
			finally
				cxGridA11C1ChartView1.EndUpdate();
			end;
		end;
		12:
		begin
			cxGridA11C1.Visible := False;
			cxGridA11C2.Visible := True;
			cxGridA11C2ChartALL.BeginUpdate();
			try
        cxGridA11C2ChartALL.DataController.RecordCount := cxGrid_CancelList.DataController.RecordCount;
				cxGridA11C2ChartALLSeries1.DisplayText := cbKindA11.text;

				AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA11.ItemIndex)));
				cxGridA11C2ChartALLSeries1.Styles.values := AStyle;

				for I := 0 to cxGrid_CancelList.DataController.RecordCount-1 do
				begin
					if cxRBA11_1.checked then
						cxGridA11C2ChartALL.Categories.Values[I] := cxGrid_CancelList.DataController.Values[i, 1]
					else
						cxGridA11C2ChartALL.Categories.Values[I] := '[' + cxGrid_CancelList.DataController.Values[i, 1]
																											+ ']' + copy(cxGrid_CancelList.DataController.Values[i, 2],6,5);

					cxGridA11C2ChartALLSeries1.Values[I] := cxGrid_CancelList.DataController.Values[i, 16];
					cxGridA11C2ChartALLSeries2.Values[I] := cxGrid_CancelList.DataController.Values[i, 17];
					cxGridA11C2ChartALLSeries3.Values[I] := cxGrid_CancelList.DataController.Values[i, 18];
					cxGridA11C2ChartALLSeries4.Values[I] := cxGrid_CancelList.DataController.Values[i, 19];
					cxGridA11C2ChartALLSeries5.Values[I] := cxGrid_CancelList.DataController.Values[i, 20];
					cxGridA11C2ChartALLSeries6.Values[I] := cxGrid_CancelList.DataController.Values[i, 21];
					cxGridA11C2ChartALLSeries7.Values[I] := cxGrid_CancelList.DataController.Values[i, 22];
					cxGridA11C2ChartALLSeries8.Values[I] := cxGrid_CancelList.DataController.Values[i, 23];
					cxGridA11C2ChartALLSeries9.Values[I] := cxGrid_CancelList.DataController.Values[i, 24];
					cxGridA11C2ChartALLSeries10.Values[I] := cxGrid_CancelList.DataController.Values[i, 25];
					cxGridA11C2ChartALLSeries11.Values[I] := cxGrid_CancelList.DataController.Values[i, 26];
				end;
			finally
				cxGridA11C2ChartALL.EndUpdate();
			end;
		end;
	end;
end;

procedure TFrm_STT.btnChartA12Click(Sender: TObject);
var
	I, J, iChartRow, iDataRow, iCol, iAddCol, iRow, iRecordCount: Integer;
	AStyle : TcxStyle;
begin
	cxGridA12C1ChartView1Series2.visible := True;
	cxGridA12C1ChartView1Series3.visible := True;
	cxGridA12C1ChartView1Series4.visible := True;
	case gSortIdx of //전체, 상위5, 하위 5
		0 : iRecordCount := cxGridBandedTableView12.DataController.RecordCount;
		1 : iRecordCount := 5;
		2 : iRecordCount := 5;
	end;

	case cbKindA12.ItemIndex of
		0:
		begin
			cxGridA12C1.Visible := False;
			cxGridA12C2.Visible := True;
			iRow := -1;
			cxGridA12C2ChartALL.DataController.RecordCount := iRecordCount;//cxGridBandedTableView12.DataController.RecordCount;
			if (cbKindA12_GuDong.ItemIndex <> 0) and (cbKindA12_GuDong.ItemIndex <> -1) then
			begin
				for j := 0 to iRecordCount-1 do//cxGridBandedTableView12.DataController.RecordCount-1 do
				begin
					if (cxGridBandedTableView12.ViewData.Records[j].Values[76] = Trim(cbKindA12_GuDong.Text)) then 
					begin
						iRow := j;
						cxGridA12C2ChartALL.DataController.RecordCount := 1;//지역 선택했을경우 그래프는 1개로 강제 적용
						break;
					end;
				end;
			end;   //지역선택
			
			cxGridA12C2ChartALL.BeginUpdate();
			for j := 1 to 55 do
			begin
				TcxGridChartSeries(FindComponent('cxGridA12C2ChartALLSeries' + inttostr(j))).visible := True;
			end;
			try
				for I := 0 to iRecordCount -1 do//cxGridBandedTableView12.DataController.RecordCount-1 do
				begin
					if (iRow > -1) and (iRow <> i) then continue
					else   //전체이거나 선택된 지역과 같을 경우
					begin
						if iRow > 0 then //지역을 선택했을경우 그래프는 1개로 강제 적용
						begin
							if cbA12_1.ItemIndex = 0 then  //구단위 
								cxGridA12C2ChartALL.Categories.Values[0] := cxGridBandedTableView12.ViewData.Records[i].Values[2]
							else                           //동단위
								cxGridA12C2ChartALL.Categories.Values[0] := cxGridBandedTableView12.ViewData.Records[i].Values[3];
							iChartRow := 0;	
							iDataRow := iRow;
						end	else  //정상적인경우
						begin
							if cbA12_1.ItemIndex = 0 then  //구단위 
								cxGridA12C2ChartALL.Categories.Values[I] := cxGridBandedTableView12.ViewData.Records[i].Values[2]
							else                           //동단위
								cxGridA12C2ChartALL.Categories.Values[I] := cxGridBandedTableView12.ViewData.Records[i].Values[3];
							iChartRow := i;	
							iDataRow := i;
						end;
					end;
					if cbKindA12_1.ItemIndex = 0 then   //전체
					begin
						if ((cb_01.Down) and (cb_02.Down)) or ((Not cb_01.Down) and (Not cb_02.Down)) then
						begin 
							cxGridA12C2ChartALLSeries1 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[4]; //~13
							cxGridA12C2ChartALLSeries2 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[5];
							cxGridA12C2ChartALLSeries3 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[6];
							cxGridA12C2ChartALLSeries4 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[7];
							cxGridA12C2ChartALLSeries5 .visible := False; 
							cxGridA12C2ChartALLSeries6 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[10]; //1317
							cxGridA12C2ChartALLSeries7 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[11];
							cxGridA12C2ChartALLSeries8 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[12];
							cxGridA12C2ChartALLSeries9 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[13];
							cxGridA12C2ChartALLSeries10.visible := False; 
							cxGridA12C2ChartALLSeries11.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[16]; //1820
							cxGridA12C2ChartALLSeries12.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[17];
							cxGridA12C2ChartALLSeries13.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[18];
							cxGridA12C2ChartALLSeries14.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[19];
							cxGridA12C2ChartALLSeries15.visible := False; 
							cxGridA12C2ChartALLSeries16.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[22]; //21
							cxGridA12C2ChartALLSeries17.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[23];
							cxGridA12C2ChartALLSeries18.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[24];
							cxGridA12C2ChartALLSeries19.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[25];
							cxGridA12C2ChartALLSeries20.visible := False; 
							cxGridA12C2ChartALLSeries21.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[28]; //22
							cxGridA12C2ChartALLSeries22.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[29];
							cxGridA12C2ChartALLSeries23.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[30];
							cxGridA12C2ChartALLSeries24.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[31];
							cxGridA12C2ChartALLSeries25.visible := False;  
							cxGridA12C2ChartALLSeries26.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[34]; //23
							cxGridA12C2ChartALLSeries27.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[35];
							cxGridA12C2ChartALLSeries28.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[36];
							cxGridA12C2ChartALLSeries29.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[37];
							cxGridA12C2ChartALLSeries30.visible := False;  
							cxGridA12C2ChartALLSeries31.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[40]; //00
							cxGridA12C2ChartALLSeries32.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[41];
							cxGridA12C2ChartALLSeries33.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[42];
							cxGridA12C2ChartALLSeries34.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[43];
							cxGridA12C2ChartALLSeries35.visible := False; 
							cxGridA12C2ChartALLSeries36.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[46]; //01
							cxGridA12C2ChartALLSeries37.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[47];
							cxGridA12C2ChartALLSeries38.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[48];
							cxGridA12C2ChartALLSeries39.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[49];
							cxGridA12C2ChartALLSeries40.visible := False;  
							cxGridA12C2ChartALLSeries41.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[52]; //02
							cxGridA12C2ChartALLSeries42.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[53];
							cxGridA12C2ChartALLSeries43.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[54];
							cxGridA12C2ChartALLSeries44.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[55];
							cxGridA12C2ChartALLSeries45.visible := False; 
							cxGridA12C2ChartALLSeries46.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[58]; //0304
							cxGridA12C2ChartALLSeries47.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[59];
							cxGridA12C2ChartALLSeries48.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[60];
							cxGridA12C2ChartALLSeries49.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[61];
							cxGridA12C2ChartALLSeries50.visible := False; 
							cxGridA12C2ChartALLSeries51.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[64]; //04~
							cxGridA12C2ChartALLSeries52.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[65];
							cxGridA12C2ChartALLSeries53.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[66];
							cxGridA12C2ChartALLSeries54.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[67];
							cxGridA12C2ChartALLSeries55.visible := False; 
						end	else
            if (cb_01.Down) and (Not cb_02.Down) then
						begin
							cxGridA12C2ChartALLSeries1 .visible := False;
							cxGridA12C2ChartALLSeries2 .visible := False;
							cxGridA12C2ChartALLSeries3 .visible := False;
							cxGridA12C2ChartALLSeries4 .visible := False;
							cxGridA12C2ChartALLSeries5 .visible := False; 
							cxGridA12C2ChartALLSeries6 .visible := False;
							cxGridA12C2ChartALLSeries7 .visible := False;
							cxGridA12C2ChartALLSeries8 .visible := False;
							cxGridA12C2ChartALLSeries9 .visible := False;
							cxGridA12C2ChartALLSeries10.visible := False; 
							cxGridA12C2ChartALLSeries11.visible := False;
							cxGridA12C2ChartALLSeries12.visible := False;
							cxGridA12C2ChartALLSeries13.visible := False;
							cxGridA12C2ChartALLSeries14.visible := False;
							cxGridA12C2ChartALLSeries15.visible := False; 
							cxGridA12C2ChartALLSeries16.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[22]; //21
							cxGridA12C2ChartALLSeries17.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[23];
							cxGridA12C2ChartALLSeries18.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[24];
							cxGridA12C2ChartALLSeries19.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[25];
							cxGridA12C2ChartALLSeries20.visible := False; 
							cxGridA12C2ChartALLSeries21.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[28]; //22
							cxGridA12C2ChartALLSeries22.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[29];
							cxGridA12C2ChartALLSeries23.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[30];
							cxGridA12C2ChartALLSeries24.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[31];
							cxGridA12C2ChartALLSeries25.visible := False;  
							cxGridA12C2ChartALLSeries26.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[34]; //23
							cxGridA12C2ChartALLSeries27.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[35];
							cxGridA12C2ChartALLSeries28.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[36];
							cxGridA12C2ChartALLSeries29.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[37];
							cxGridA12C2ChartALLSeries30.visible := False;  
							cxGridA12C2ChartALLSeries31.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[40]; //00
							cxGridA12C2ChartALLSeries32.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[41];
							cxGridA12C2ChartALLSeries33.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[42];
							cxGridA12C2ChartALLSeries34.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[43];
							cxGridA12C2ChartALLSeries35.visible := False; 
							cxGridA12C2ChartALLSeries36.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[46]; //01
							cxGridA12C2ChartALLSeries37.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[47];
							cxGridA12C2ChartALLSeries38.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[48];
							cxGridA12C2ChartALLSeries39.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[49];
							cxGridA12C2ChartALLSeries40.visible := False;  
							cxGridA12C2ChartALLSeries41.visible := False;
							cxGridA12C2ChartALLSeries42.visible := False;
							cxGridA12C2ChartALLSeries43.visible := False;
							cxGridA12C2ChartALLSeries44.visible := False;
							cxGridA12C2ChartALLSeries45.visible := False; 
							cxGridA12C2ChartALLSeries46.visible := False;
							cxGridA12C2ChartALLSeries47.visible := False;
							cxGridA12C2ChartALLSeries48.visible := False;
							cxGridA12C2ChartALLSeries49.visible := False;
							cxGridA12C2ChartALLSeries50.visible := False; 
							cxGridA12C2ChartALLSeries51.visible := False;
							cxGridA12C2ChartALLSeries52.visible := False;
							cxGridA12C2ChartALLSeries53.visible := False;
							cxGridA12C2ChartALLSeries54.visible := False;
							cxGridA12C2ChartALLSeries55.visible := False; 
						end	else
            if (Not cb_01.Down) and (cb_02.Down) then
						begin
							cxGridA12C2ChartALLSeries1 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[4]; //~13
							cxGridA12C2ChartALLSeries2 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[5];
							cxGridA12C2ChartALLSeries3 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[6];
							cxGridA12C2ChartALLSeries4 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[7];
							cxGridA12C2ChartALLSeries5 .visible := False; 
							cxGridA12C2ChartALLSeries6 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[10]; //1317
							cxGridA12C2ChartALLSeries7 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[11];
							cxGridA12C2ChartALLSeries8 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[12];
							cxGridA12C2ChartALLSeries9 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[13];
							cxGridA12C2ChartALLSeries10.visible := False; 
							cxGridA12C2ChartALLSeries11.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[16]; //1820
							cxGridA12C2ChartALLSeries12.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[17];
							cxGridA12C2ChartALLSeries13.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[18];
							cxGridA12C2ChartALLSeries14.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[19];
							cxGridA12C2ChartALLSeries15.visible := False; 
							cxGridA12C2ChartALLSeries16.visible := False; 
							cxGridA12C2ChartALLSeries17.visible := False; 
							cxGridA12C2ChartALLSeries18.visible := False; 
							cxGridA12C2ChartALLSeries19.visible := False; 
							cxGridA12C2ChartALLSeries20.visible := False; 
							cxGridA12C2ChartALLSeries21.visible := False; 
							cxGridA12C2ChartALLSeries22.visible := False; 
							cxGridA12C2ChartALLSeries23.visible := False; 
							cxGridA12C2ChartALLSeries24.visible := False; 
							cxGridA12C2ChartALLSeries25.visible := False;  
							cxGridA12C2ChartALLSeries26.visible := False; 
							cxGridA12C2ChartALLSeries27.visible := False; 
							cxGridA12C2ChartALLSeries28.visible := False; 
							cxGridA12C2ChartALLSeries29.visible := False; 
							cxGridA12C2ChartALLSeries30.visible := False;  
							cxGridA12C2ChartALLSeries31.visible := False; 
							cxGridA12C2ChartALLSeries32.visible := False; 
							cxGridA12C2ChartALLSeries33.visible := False; 
							cxGridA12C2ChartALLSeries34.visible := False; 
							cxGridA12C2ChartALLSeries35.visible := False; 
							cxGridA12C2ChartALLSeries36.visible := False; 
							cxGridA12C2ChartALLSeries37.visible := False; 
							cxGridA12C2ChartALLSeries38.visible := False; 
							cxGridA12C2ChartALLSeries39.visible := False; 
							cxGridA12C2ChartALLSeries40.visible := False;  
							cxGridA12C2ChartALLSeries41.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[52]; //02
							cxGridA12C2ChartALLSeries42.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[53];
							cxGridA12C2ChartALLSeries43.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[54];
							cxGridA12C2ChartALLSeries44.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[55];
							cxGridA12C2ChartALLSeries45.visible := False; 
							cxGridA12C2ChartALLSeries46.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[58]; //0304
							cxGridA12C2ChartALLSeries47.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[59];
							cxGridA12C2ChartALLSeries48.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[60];
							cxGridA12C2ChartALLSeries49.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[61];
							cxGridA12C2ChartALLSeries50.visible := False; 
							cxGridA12C2ChartALLSeries51.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[64]; //04~
							cxGridA12C2ChartALLSeries52.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[65];
							cxGridA12C2ChartALLSeries53.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[66];
							cxGridA12C2ChartALLSeries54.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[67];
							cxGridA12C2ChartALLSeries55.visible := False; 
						end;
					end	else
					begin
						iAddCol := 0;
						for j := 1 to 55 do
						begin
							TcxGridChartSeries(FindComponent('cxGridA12C2ChartALLSeries' + inttostr(j))).visible := False;
						end;
						case cbKindA12_1.ItemIndex of
							1 :     //총콜수
								begin
									cxGridA12C2ChartALLSeries1 .visible := True;
									cxGridA12C2ChartALLSeries6 .visible := True;
									cxGridA12C2ChartALLSeries11.visible := True;
									cxGridA12C2ChartALLSeries16.visible := True;
									cxGridA12C2ChartALLSeries21.visible := True;
									cxGridA12C2ChartALLSeries26.visible := True;
									cxGridA12C2ChartALLSeries31.visible := True;
									cxGridA12C2ChartALLSeries36.visible := True;
									cxGridA12C2ChartALLSeries41.visible := True;
									cxGridA12C2ChartALLSeries46.visible := True;
									cxGridA12C2ChartALLSeries51.visible := True;

									cxGridA12C2ChartALLSeries1 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[4]; //~13
									cxGridA12C2ChartALLSeries6 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[10]; //1317
									cxGridA12C2ChartALLSeries11.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[16]; //1820
									cxGridA12C2ChartALLSeries16.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[22]; //21
									cxGridA12C2ChartALLSeries21.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[28]; //22
									cxGridA12C2ChartALLSeries26.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[34]; //23
									cxGridA12C2ChartALLSeries31.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[40]; //00
									cxGridA12C2ChartALLSeries36.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[46]; //01
									cxGridA12C2ChartALLSeries41.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[52]; //02
									cxGridA12C2ChartALLSeries46.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[58]; //0304
									cxGridA12C2ChartALLSeries51.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[64]; //04~
								end;
							2 :      //완료건수
								begin
									cxGridA12C2ChartALLSeries2 .visible := True;
									cxGridA12C2ChartALLSeries7 .visible := True;
									cxGridA12C2ChartALLSeries12.visible := True;
									cxGridA12C2ChartALLSeries17.visible := True;
									cxGridA12C2ChartALLSeries22.visible := True;
									cxGridA12C2ChartALLSeries27.visible := True;
									cxGridA12C2ChartALLSeries32.visible := True;
									cxGridA12C2ChartALLSeries37.visible := True;
									cxGridA12C2ChartALLSeries42.visible := True;
									cxGridA12C2ChartALLSeries47.visible := True;
									cxGridA12C2ChartALLSeries52.visible := True;

									cxGridA12C2ChartALLSeries2 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[5]; //~13
									cxGridA12C2ChartALLSeries7 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[11]; //1317
									cxGridA12C2ChartALLSeries12.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[17]; //1820
									cxGridA12C2ChartALLSeries17.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[23]; //21
									cxGridA12C2ChartALLSeries22.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[29]; //22
									cxGridA12C2ChartALLSeries27.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[35]; //23
									cxGridA12C2ChartALLSeries32.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[41]; //00
									cxGridA12C2ChartALLSeries37.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[47]; //01
									cxGridA12C2ChartALLSeries42.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[53]; //02
									cxGridA12C2ChartALLSeries47.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[59]; //0304
									cxGridA12C2ChartALLSeries52.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[65]; //04~
								end;
							3 :         //취소건수
								begin
									cxGridA12C2ChartALLSeries3 .visible := True;
									cxGridA12C2ChartALLSeries8 .visible := True;
									cxGridA12C2ChartALLSeries13.visible := True;
									cxGridA12C2ChartALLSeries18.visible := True;
									cxGridA12C2ChartALLSeries23.visible := True;
									cxGridA12C2ChartALLSeries28.visible := True;
									cxGridA12C2ChartALLSeries33.visible := True;
									cxGridA12C2ChartALLSeries38.visible := True;
									cxGridA12C2ChartALLSeries43.visible := True;
									cxGridA12C2ChartALLSeries48.visible := True;
									cxGridA12C2ChartALLSeries53.visible := True;

									cxGridA12C2ChartALLSeries3 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[6]; //~13
									cxGridA12C2ChartALLSeries8 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[12]; //1317
									cxGridA12C2ChartALLSeries13.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[18]; //1820
									cxGridA12C2ChartALLSeries18.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[24]; //21
									cxGridA12C2ChartALLSeries23.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[30]; //22
									cxGridA12C2ChartALLSeries28.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[36]; //23
									cxGridA12C2ChartALLSeries33.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[42]; //00
									cxGridA12C2ChartALLSeries38.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[48]; //01
									cxGridA12C2ChartALLSeries43.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[54]; //02
									cxGridA12C2ChartALLSeries48.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[60]; //0304
									cxGridA12C2ChartALLSeries53.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[66]; //04~
								end;
							4 :           //문의건수
								begin
									cxGridA12C2ChartALLSeries4 .visible := True;
									cxGridA12C2ChartALLSeries9 .visible := True;
									cxGridA12C2ChartALLSeries14.visible := True;
									cxGridA12C2ChartALLSeries19.visible := True;
									cxGridA12C2ChartALLSeries24.visible := True;
									cxGridA12C2ChartALLSeries29.visible := True;
									cxGridA12C2ChartALLSeries34.visible := True;
									cxGridA12C2ChartALLSeries39.visible := True;
									cxGridA12C2ChartALLSeries44.visible := True;
									cxGridA12C2ChartALLSeries49.visible := True;
									cxGridA12C2ChartALLSeries54.visible := True;

									cxGridA12C2ChartALLSeries4 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[7]; //~13
									cxGridA12C2ChartALLSeries9 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[13]; //1317
									cxGridA12C2ChartALLSeries14.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[19]; //1820
									cxGridA12C2ChartALLSeries19.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[25]; //21
									cxGridA12C2ChartALLSeries24.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[31]; //22
									cxGridA12C2ChartALLSeries29.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[37]; //23
									cxGridA12C2ChartALLSeries34.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[43]; //00
									cxGridA12C2ChartALLSeries39.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[49]; //01
									cxGridA12C2ChartALLSeries44.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[55]; //02
									cxGridA12C2ChartALLSeries49.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[61]; //0304
									cxGridA12C2ChartALLSeries54.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[67]; //04~
								end;
							5 :            //요금
								begin
									cxGridA12C2ChartALLSeries5 .visible := True;
									cxGridA12C2ChartALLSeries10.visible := True;
									cxGridA12C2ChartALLSeries15.visible := True;
									cxGridA12C2ChartALLSeries20.visible := True;
									cxGridA12C2ChartALLSeries25.visible := True;
									cxGridA12C2ChartALLSeries30.visible := True;
									cxGridA12C2ChartALLSeries35.visible := True;
									cxGridA12C2ChartALLSeries40.visible := True;
									cxGridA12C2ChartALLSeries45.visible := True;
									cxGridA12C2ChartALLSeries50.visible := True;
									cxGridA12C2ChartALLSeries55.visible := True;

									cxGridA12C2ChartALLSeries5 .Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[8]; //~13
									cxGridA12C2ChartALLSeries10.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[14]; //1317
									cxGridA12C2ChartALLSeries15.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[20]; //1820
									cxGridA12C2ChartALLSeries20.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[26]; //21
									cxGridA12C2ChartALLSeries25.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[32]; //22
									cxGridA12C2ChartALLSeries30.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[38]; //23
									cxGridA12C2ChartALLSeries35.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[44]; //00
									cxGridA12C2ChartALLSeries40.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[50]; //01
									cxGridA12C2ChartALLSeries45.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[56]; //02
									cxGridA12C2ChartALLSeries50.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[62]; //0304
									cxGridA12C2ChartALLSeries55.Values[iChartRow] := cxGridBandedTableView12.ViewData.Records[iDataRow].Values[68]; //04~
								end; 
						end;
					end;
				end;
			finally
				cxGridA12C2ChartALL.EndUpdate();
			end;
		end;
		1..11:
		begin
			cxGridA12C1.Visible := True;
			cxGridA12C2.Visible := False;
			cxGridA12C1ChartView1.BeginUpdate();
			try
				cxGridA12C1ChartView1.DataController.RecordCount := iRecordCount;//cxGridBandedTableView12.DataController.RecordCount;
				if cbKindA12_1.ItemIndex = 0 then
				begin
					cxGridA12C1ChartView1Series1.DisplayText := '총건수';
					cxGridA12C1ChartView1Series2.DisplayText := '완료건수';
					cxGridA12C1ChartView1Series3.DisplayText := '취소건수';
					cxGridA12C1ChartView1Series4.DisplayText := '문의건수'; 

					cxGridA12C1ChartView1Series1.Styles.values := cxSTT_Field1;
					cxGridA12C1ChartView1Series2.Styles.values := cxSTT_Field2;
					cxGridA12C1ChartView1Series3.Styles.values := cxSTT_Field3;
					cxGridA12C1ChartView1Series4.Styles.values := cxSTT_Field4;
					for I := 0 to iRecordCount-1 do//cxGridBandedTableView12.DataController.RecordCount-1 do
					begin
						if cbA12_1.ItemIndex = 0 then
							cxGridA12C1ChartView1.Categories.Values[I] := cxGridBandedTableView12.ViewData.Records[i].Values[2]
						else
							cxGridA12C1ChartView1.Categories.Values[I] := cxGridBandedTableView12.ViewData.Records[i].Values[3];

						case cbKindA12.ItemIndex of
							1 : iCol := 4;  
							2 : iCol := 10;  
							3 : iCol := 16;
							4 : iCol := 22;  
							5 : iCol := 28;  
							6 : iCol := 34;  
							7 : iCol := 40;  
							8 : iCol := 46;  
							9 : iCol := 52;  
							10: iCol := 58;  
							11: iCol := 64;  
						end;
						cxGridA12C1ChartView1Series1.Values[i] := cxGridBandedTableView12.ViewData.Records[i].Values[iCol];
						cxGridA12C1ChartView1Series2.Values[i] := cxGridBandedTableView12.ViewData.Records[i].Values[iCol+1];
						cxGridA12C1ChartView1Series3.Values[i] := cxGridBandedTableView12.ViewData.Records[i].Values[iCol+2];
						cxGridA12C1ChartView1Series4.Values[i] := cxGridBandedTableView12.ViewData.Records[i].Values[iCol+3];
					end;
				end	else
				begin
					cxGridA12C1ChartView1Series1.DisplayText := cbKindA12_1.text;
					cxGridA12C1ChartView1Series2.DisplayText := '';
					cxGridA12C1ChartView1Series3.DisplayText := '';
					cxGridA12C1ChartView1Series4.DisplayText := '';
					cxGridA12C1ChartView1Series2.visible := False;
					cxGridA12C1ChartView1Series3.visible := False;
					cxGridA12C1ChartView1Series4.visible := False;
					
					AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA12_1.ItemIndex)));
					cxGridA12C1ChartView1Series1.Styles.values := AStyle;

					for I := 0 to iRecordCount-1 do//cxGridBandedTableView12.DataController.RecordCount-1 do
					begin
						if cbA12_1.ItemIndex = 0 then
							cxGridA12C1ChartView1.Categories.Values[I] := cxGridBandedTableView12.ViewData.Records[i].Values[2]
						else
							cxGridA12C1ChartView1.Categories.Values[I] := cxGridBandedTableView12.ViewData.Records[i].Values[3];

						iAddCol := cbKindA12_1.ItemIndex - 1;

						case cbKindA12.ItemIndex of
							1 : iCol := 4;  
							2 : iCol := 10;  
							3 : iCol := 16;
							4 : iCol := 22;  
							5 : iCol := 28;  
							6 : iCol := 34;  
							7 : iCol := 40;  
							8 : iCol := 46;  
							9 : iCol := 52;  
							10: iCol := 58;  
							11: iCol := 64;  
						end;
						iCol := iCol + iAddCol;
					
						if cbKindA12_1.ItemIndex = 6 then
						begin
							if cxGridBandedTableView12.ViewData.Records[i].Values[iCol] = null then 
								cxGridBandedTableView12.ViewData.Records[i].Values[iCol] := '0';
							cxGridA12C1ChartView1Series1.Values[i] := StringReplace(cxGridBandedTableView12.ViewData.Records[i].Values[iCol], '%', '',[rfReplaceAll])
						end
						else
							cxGridA12C1ChartView1Series1.Values[i] := cxGridBandedTableView12.ViewData.Records[i].Values[iCol];
					end;
				end;
			finally
				cxGridA12C1ChartView1.EndUpdate();
			end;
		end;
	end;
end;

procedure TFrm_STT.btnChartA13Click(Sender: TObject);
var
	I : Integer;
	AStyle : TcxStyle;
begin
	case cbKindA13.ItemIndex of
		0:
		begin
			cxGridA13C1.Visible := False;
			cxGridA13C2.Visible := True;
			cxGridA13C2ChartALL.BeginUpdate();
			try
				cxGridA13C2ChartALL.DataController.RecordCount := cxGridDBTableView13.DataController.RecordCount;;
				cxGridA13C2ChartALLSeries5.visible := False;
				for I := 0 to cxGridDBTableView13.DataController.RecordCount-1 do
				begin
					cxGridA13C2ChartALL.Categories.Values[I] := FormatFloat('#,##0', cxGridDBTableView13.DataController.Values[i, 0]);//cxGridDBTableView13.ViewData.Records[i].Values[0]
					cxGridA13C2ChartALLSeries1.Values[I] := cxGridDBTableView13.ViewData.Records[i].Values[6];
					cxGridA13C2ChartALLSeries2.Values[I] := cxGridDBTableView13.ViewData.Records[i].Values[7];
					cxGridA13C2ChartALLSeries3.Values[I] := cxGridDBTableView13.ViewData.Records[i].Values[8];
					cxGridA13C2ChartALLSeries4.Values[I] := cxGridDBTableView13.ViewData.Records[i].Values[9];
//					cxGridA13C2ChartALLSeries5.Values[I] := StringReplace(cxGridDBTableView13.ViewData.Records[i].Values[10], '%', '',[rfReplaceAll]);
				 end;
			finally
				cxGridA13C2ChartALL.EndUpdate();
			end;
		end;
		1,2,3,4,5:
		begin
			cxGridA13C1.Visible := True;
			cxGridA13C2.Visible := False;
			cxGridA13C1ChartView1.BeginUpdate();
			try
				cxGridA13C1ChartView1.DataController.RecordCount := cxGridDBTableView13.DataController.RecordCount;
				cxGridA13C1ChartView1Series1.DisplayText := cbKindA13.text;

				AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA13.ItemIndex)));
				cxGridA13C1ChartView1Series1.Styles.values := AStyle;
				for I := 0 to cxGridDBTableView13.DataController.RecordCount-1 do
				begin
					 cxGridA13C1ChartView1.Categories.Values[I] := FormatFloat('#,##0', cxGridDBTableView13.DataController.Values[i, 0]);//cxGridDBTableView13.ViewData.Records[i].Values[0]

					case cbKindA13.ItemIndex of
						1: cxGridA13C1ChartView1Series1.Values[I] := cxGridDBTableView13.ViewData.Records[i].Values[6];
						2: cxGridA13C1ChartView1Series1.Values[I] := cxGridDBTableView13.ViewData.Records[i].Values[7];
						3: cxGridA13C1ChartView1Series1.Values[I] := cxGridDBTableView13.ViewData.Records[i].Values[8];
						4: cxGridA13C1ChartView1Series1.Values[I] := cxGridDBTableView13.ViewData.Records[i].Values[9];
						5: cxGridA13C1ChartView1Series1.Values[I] := StringReplace(cxGridDBTableView13.ViewData.Records[i].Values[10], '%', '',[rfReplaceAll]);
					end;
				end;
			finally
				cxGridA13C1ChartView1.EndUpdate();
      end;
		end;
	end;
end;

procedure TFrm_STT.btnChartA15Click(Sender: TObject);
var
	I : Integer;
	AStyle : TcxStyle;
begin
	case cbKindA15.ItemIndex of
		0:
		begin
			cxGridA15C1.Visible := False;
			cxGridA15C2.Visible := True;
			cxGridA15C2ChartALL.BeginUpdate();
			try
				cxGridA15C2ChartALL.DataController.RecordCount := cxGridA15View1.DataController.RecordCount;
				 for I := 0 to cxGridA15View1.DataController.RecordCount-1 do
				 begin
					 cxGridA15C2ChartALL.Categories.Values[I] := '[' + cxGridA15View1.ViewData.Records[i].Values[3]
					 																  			   + ']' + cxGridA15View1.ViewData.Records[i].Values[2];

					 cxGridA15C2ChartSeries1.Values[I]  := cxGridA15View1.ViewData.Records[i].Values[ 4];
					 cxGridA15C2ChartSeries2.Values[I]  := cxGridA15View1.ViewData.Records[i].Values[ 5];
					 cxGridA15C2ChartSeries3.Values[I]  := cxGridA15View1.ViewData.Records[i].Values[ 6];
					 cxGridA15C2ChartSeries4.Values[I]  := cxGridA15View1.ViewData.Records[i].Values[ 7];
					 cxGridA15C2ChartSeries5.Values[I]  := cxGridA15View1.ViewData.Records[i].Values[ 8];
					 cxGridA15C2ChartSeries6.Values[I]  := cxGridA15View1.ViewData.Records[i].Values[ 9];
					 cxGridA15C2ChartSeries7.Values[I]  := cxGridA15View1.ViewData.Records[i].Values[10];
					 cxGridA15C2ChartSeries8.Values[I]  := cxGridA15View1.ViewData.Records[i].Values[11];
					 cxGridA15C2ChartSeries9.Values[I]  := cxGridA15View1.ViewData.Records[i].Values[12];
					 cxGridA15C2ChartSeries10.Values[I] := cxGridA15View1.ViewData.Records[i].Values[13];
				 end;
			finally
				cxGridA15C2ChartALL.EndUpdate();
			end;
		end;
		1..10 :
		begin
			cxGridA15C1.Visible := True;
			cxGridA15C2.Visible := False;
			cxGridA15C1ChartView1.BeginUpdate();
			try
				cxGridA15C1ChartView1.DataController.RecordCount := cxGridA15View1.DataController.RecordCount;
				cxGridA15C1ChartView1Series1.DisplayText := cbKindA15.text;

				AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA15.ItemIndex)));
				cxGridA15C1ChartView1Series1.Styles.values := AStyle;
				for I := 0 to cxGridA15View1.DataController.RecordCount-1 do
				begin
				  cxGridA15C1ChartView1.Categories.Values[I] := '[' + cxGridA15View1.ViewData.Records[i].Values[3]
					 																  		   	  + ']' + cxGridA15View1.ViewData.Records[i].Values[2];
					case cbKindA15.ItemIndex of
						1 : cxGridA15C1ChartView1Series1.Values[I] := cxGridA15View1.ViewData.Records[i].Values[ 4];
						2 : cxGridA15C1ChartView1Series1.Values[I] := cxGridA15View1.ViewData.Records[i].Values[ 5];
						3 : cxGridA15C1ChartView1Series1.Values[I] := cxGridA15View1.ViewData.Records[i].Values[ 6];
						4 : cxGridA15C1ChartView1Series1.Values[I] := cxGridA15View1.ViewData.Records[i].Values[ 7];
						5 : cxGridA15C1ChartView1Series1.Values[I] := cxGridA15View1.ViewData.Records[i].Values[ 8];
						6 : cxGridA15C1ChartView1Series1.Values[I] := cxGridA15View1.ViewData.Records[i].Values[ 9];
						7 : cxGridA15C1ChartView1Series1.Values[I] := cxGridA15View1.ViewData.Records[i].Values[10];
						8 : cxGridA15C1ChartView1Series1.Values[I] := cxGridA15View1.ViewData.Records[i].Values[11];
						9 : cxGridA15C1ChartView1Series1.Values[I] := cxGridA15View1.ViewData.Records[i].Values[12];
						10: cxGridA15C1ChartView1Series1.Values[I] := cxGridA15View1.ViewData.Records[i].Values[13];
					end;
				end;
			finally
				cxGridA15C1ChartView1.EndUpdate();
			end;
		end;
	end;
end;

procedure TFrm_STT.btnChartA1Click(Sender: TObject);
var iCnt, iFromCount, iToCount, iRow, iRcCnt, iViewCnt  : integer;
	I : Integer;
	AStyle : TcxStyle;
begin
  try
    case cbKindA1.ItemIndex of
      0:
      begin
        iViewCnt := 15;
        iCnt := cxViewKey_Tmp.DataController.RecordCount;
        if iCnt > iViewCnt then btnChartA1_Next.Visible := True;

        giChartA1_TPage := iCnt DIV iViewCnt;
        if giChartA1_NPage = 0 then giChartA1_NPage := 1; //첫페이지

        if giChartA1_NPage = 1 then
        begin
          iFromCount := 0;
          if iCnt < iViewCnt then
          begin
            iToCount   := iCnt;
            iRcCnt     := iCnt;
          end else
          begin
            iToCount   := iViewCnt;
            iRcCnt     := iViewCnt;
          end;
        end else
        if giChartA1_TPage+1 = giChartA1_NPage then //34개 지사일 경우 2페이지 . 마지막 페이지는 나머지 지사 수 모두 적용
        begin
          iFromCount := ((giChartA1_NPage-1) * iViewCnt);
          iToCount   := iFromCount + (iCnt Mod iViewCnt);
          iRcCnt     := iCnt Mod iViewCnt;
        end else
        if giChartA1_TPage+1 > giChartA1_NPage then
        begin
          iFromCount := ((giChartA1_NPage-1) * iViewCnt);
          iToCount   := iFromCount + iViewCnt;
          iRcCnt     := iViewCnt;
        end else
        if giChartA1_TPage+1 < giChartA1_NPage then
        begin
          giChartA1_NPage := giChartA1_NPage -1;// 클릭시 추가된 +1을 원상복귀함
          GMessagebox('마지막 데이터입니다.', CDMSE);
          Exit;
        end;
			
  //			cxGridA1C1ChartView1.DataController.SetRecordCount(0);
        cxGridA1C2ChartALL.DataController.SetRecordCount(0);

        cxGridA1C1.Visible := False;
        cxGridA1C2.Visible := True;
        cxGridA1C2ChartALL.BeginUpdate();
        try
          cxGridA1C2ChartALL.DataController.RecordCount := iRcCnt;//iToCount;
          iRow := 0;
          for I := iFromCount to iToCount-1 do
          begin
  //					if  cbA1.ItemIndex = 0  then
              cxGridA1C2ChartALL.Categories.Values[iRow] := cxViewKey_Tmp.ViewData.Records[i].Values[1];{
            else
              cxGridA1C2ChartALL.Categories.Values[iRow] := '[' + cxViewKey.ViewData.Records[i].Values[3]
                                                          + ']' + copy(cxViewKey.ViewData.Records[i].Values[4],6,5);   }

            cxGridA1C2ChartSeries1.Values[iRow] := cxViewKey_Tmp.ViewData.Records[i].Values[ 2];
            cxGridA1C2ChartSeries2.Values[iRow] := cxViewKey_Tmp.ViewData.Records[i].Values[ 3];
            cxGridA1C2ChartSeries3.Values[iRow] := cxViewKey_Tmp.ViewData.Records[i].Values[ 4];
            cxGridA1C2ChartSeries4.Values[iRow] := cxViewKey_Tmp.ViewData.Records[i].Values[ 5];
            inc(iRow);
            {					 cxGridA1C2ChartSeries5.Values[I] := cxViewKey.ViewData.Records[i].Values[ 9];
             cxGridA1C2ChartSeries6.Values[I] := cxViewKey.ViewData.Records[i].Values[10];
             cxGridA1C2ChartSeries7.Values[I] := cxViewKey.ViewData.Records[i].Values[11];
             cxGridA1C2ChartSeries8.Values[I] := cxViewKey.ViewData.Records[i].Values[12];  }
          end;
        finally
          cxGridA1C2ChartALL.EndUpdate();
        end;
      end;
      1,2,3,4,5,6,7,8:
      begin
        btnChartA1_Next.Visible := False;
        btnChartA1_Previous.Visible := False;
        cxGridA1C1.Visible := True;
        cxGridA1C2.Visible := False;
        cxGridA1C1ChartView1.BeginUpdate();
        try
          cxGridA1C1ChartView1.DataController.RecordCount := cxViewKey_Tmp.DataController.RecordCount;
          cxGridA1C1ChartView1Series1.DisplayText := cbKindA1.text;

          AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA1.ItemIndex)));
          cxGridA1C1ChartView1Series1.Styles.values := AStyle;
          for I := 0 to cxViewKey_Tmp.DataController.RecordCount-1 do
          begin
  //					if  cbA1.ItemIndex = 0  then
              cxGridA1C1ChartView1.Categories.Values[I] := cxViewKey_Tmp.ViewData.Records[i].Values[ 1]{
            else
              cxGridA1C1ChartView1.Categories.Values[I] := '[' + cxViewKey.ViewData.Records[i].Values[ 3]
                                                         + ']' + copy(cxViewKey.ViewData.Records[i].Values[ 4],6,5)};
            case cbKindA1.ItemIndex of
              1 : cxGridA1C1ChartView1Series1.Values[I] := cxViewKey_Tmp.ViewData.Records[i].Values[2];
              2 : cxGridA1C1ChartView1Series1.Values[I] := cxViewKey_Tmp.ViewData.Records[i].Values[3];
              3 : cxGridA1C1ChartView1Series1.Values[I] := cxViewKey_Tmp.ViewData.Records[i].Values[4];
              4 : cxGridA1C1ChartView1Series1.Values[I] := cxViewKey_Tmp.ViewData.Records[i].Values[5];
              5 : cxGridA1C1ChartView1Series1.Values[I] := cxViewKey_Tmp.ViewData.Records[i].Values[6];
              6 : cxGridA1C1ChartView1Series1.Values[I] := cxViewKey_Tmp.ViewData.Records[i].Values[7];
              7 : cxGridA1C1ChartView1Series1.Values[I] := cxViewKey_Tmp.ViewData.Records[i].Values[8];
              8 : cxGridA1C1ChartView1Series1.Values[I] := cxViewKey_Tmp.ViewData.Records[i].Values[9];
            end;
          end;
        finally
          cxGridA1C1ChartView1.EndUpdate();
        end;
      end;
    end;
  except

  end;
end;

procedure TFrm_STT.btnChartA1_NextClick(Sender: TObject);
begin
	giChartA1_NPage := giChartA1_NPage +1;
	btnChartA1_Previous.Visible := True;
	btnChartA1.Click;
end;

procedure TFrm_STT.btnChartA1_PreviousClick(Sender: TObject);
begin
	giChartA1_NPage := giChartA1_NPage -1;
	btnChartA1.Click;
end;

procedure TFrm_STT.btnGetListClick(Sender: TObject);
begin
//  pGetComponentListSTT;
end;

procedure TFrm_STT.cxcxGridA6View1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_STT.cxcxGridA6View1DataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(cxcxGridA6View1, AIndex, GS_SortNoChange);
end;

procedure TFrm_STT.cxGridA10C1ChartView1GetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA10.itemIndex = 7 then    //Pie
	begin
		case cbKindA10.itemIndex of
			1 : sTmp := sCategory + ' 총콜수 : '   + sValue + '건';
			2 : sTmp := sCategory + ' 신규콜수 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 완료콜수 : ' + sValue + '건';
			4 : sTmp := sCategory + ' 취소콜수 : ' + sValue + '건';
			5 : sTmp := sCategory + ' 신규콜비율 : ' + sValue + '%';
		end;
	end else
	begin
		case cbKindA10.itemIndex of
			1 : sTmp := '총콜수 : '   + sValue + '건';
			2 : sTmp := '신규콜수 : ' + sValue + '건';
			3 : sTmp := '완료콜수 : ' + sValue + '건';
			4 : sTmp := '취소콜수 : ' + sValue + '건';
			5 : sTmp := '신규콜비율 : ' + sValue + '%';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA10C1ChartView1Series1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbChartKindA10.itemIndex = 1 then
	begin
		case cbKindA10.itemIndex of
			1 : sTmp := '총콜수 : '   + sValue + '건';
			2 : sTmp := '신규콜수 : ' + sValue + '건';
			3 : sTmp := '완료콜수 : ' + sValue + '건';
			4 : sTmp := '취소콜수 : ' + sValue + '건';
			5 : sTmp := '신규콜비율 : ' + sValue + '%';
		end;
	end else
	begin
		case cbKindA10.itemIndex of
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '건';
			5 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA10C2ChartALLGetValueHint(Sender: TcxGridChartView;
	ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA10.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 총콜수 : '   + sValue + '건';
			1 : sTmp := sCategory + ' 신규콜수 : ' + sValue + '건';
			2 : sTmp := sCategory + ' 완료콜수 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 취소콜수 : ' + sValue + '건';
			4 : sTmp := sCategory + ' 신규콜비율 : ' + sValue + '명';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := '총콜수 : '   + sValue + '건';
			1 : sTmp := '신규콜수 : ' + sValue + '건';
			2 : sTmp := '완료콜수 : ' + sValue + '건';
			3 : sTmp := '취소콜수 : ' + sValue + '건';
			4 : sTmp := '신규콜비율 : ' + sValue + '명';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA10C2ChartSeries1GetValueDisplayText(Sender: TObject;
  const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA10.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '총콜수 : '   + sValue + '건';
			1 : sTmp := '신규콜수 : ' + sValue + '건';
			2 : sTmp := '완료콜수 : ' + sValue + '건';
			3 : sTmp := '취소콜수 : ' + sValue + '건';
			4 : sTmp := '신규콜비율 : ' + sValue + '%';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := sValue + '건';
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA11C1ChartView1GetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA11.itemIndex = 7 then    //Pie
	begin
		case cbKindA11.itemIndex of
			1 : sTmp := sCategory + ' 취소 : '     + sValue + '건';
			2 : sTmp := sCategory + ' 통화안됨 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 한잔더 : '   + sValue + '건';
			4 : sTmp := sCategory + ' 고객취소 : ' + sValue + '건';
			5 : sTmp := sCategory + ' 기사부족 : ' + sValue + '건';
			6 : sTmp := sCategory + ' 타사이관 : ' + sValue + '건';
			7 : sTmp := sCategory + ' 타사이용 : ' + sValue + '건';
			8 : sTmp := sCategory + ' 고객없음 : ' + sValue + '건';
			9 : sTmp := sCategory + ' 접수실수 : ' + sValue + '건';
			10: sTmp := sCategory + ' 기타 : '     + sValue + '건';
			11: sTmp := sCategory + ' 연습오더 : ' + sValue + '건';
		end;
	end else
	begin
		case cbKindA11.itemIndex of
			1 : sTmp := '취소 : '     + sValue + '건';
			2 : sTmp := '통화안됨 : ' + sValue + '건';
			3 : sTmp := '한잔더 : '   + sValue + '건';
			4 : sTmp := '고객취소 : ' + sValue + '건';
			5 : sTmp := '기사부족 : ' + sValue + '건';
			6 : sTmp := '타사이관 : ' + sValue + '건';
			7 : sTmp := '타사이용 : ' + sValue + '건';
			8 : sTmp := '고객없음 : ' + sValue + '건';
			9 : sTmp := '접수실수 : ' + sValue + '건';
			10: sTmp := '기타 : '     + sValue + '건';
			11: sTmp := '연습오더 : ' + sValue + '건';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA11C1ChartView1Series1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbChartKindA11.itemIndex = 1 then
	begin
		case cbKindA11.itemIndex of
			1 : sTmp := '취소 : '     + sValue + '건';
			2 : sTmp := '통화안됨 : ' + sValue + '건';
			3 : sTmp := '한잔더 : '   + sValue + '건';
			4 : sTmp := '고객취소 : ' + sValue + '건';
			5 : sTmp := '기사부족 : ' + sValue + '건';
			6 : sTmp := '타사이관 : ' + sValue + '건';
			7 : sTmp := '타사이용 : ' + sValue + '건';
			8 : sTmp := '고객없음 : ' + sValue + '건';
			9 : sTmp := '접수실수 : ' + sValue + '건';
			10: sTmp := '기타 : '     + sValue + '건';
			11: sTmp := '연습오더 : ' + sValue + '건';
		end;
	end else
	begin
		case cbKindA11.itemIndex of
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '건';
			5 : sTmp := sValue + '건';
			6 : sTmp := sValue + '건';
			7 : sTmp := sValue + '건';
			8 : sTmp := sValue + '건';
			9 : sTmp := sValue + '건';
			10: sTmp := sValue + '건';
			11: sTmp := sValue + '건';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA11C2ChartALLGetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA11.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 취소합계 : '   + sValue + '건';
			1 : sTmp := sCategory + ' 0.통화안됨 : ' + sValue + '건';
			2 : sTmp := sCategory + ' 1.한잔더 : '   + sValue + '건';
			3 : sTmp := sCategory + ' 2.고객취소 : ' + sValue + '건';
			4 : sTmp := sCategory + ' 3.기사부족 : ' + sValue + '건';
			5 : sTmp := sCategory + ' 4.타사이관 : ' + sValue + '건';
			6 : sTmp := sCategory + ' 5.타사이용 : ' + sValue + '건';
			7 : sTmp := sCategory + ' 6.고객없음 : ' + sValue + '건';
			8 : sTmp := sCategory + ' 7.접수실수 : ' + sValue + '건';
			9 : sTmp := sCategory + ' 8.기타 : '     + sValue + '건';
			10: sTmp := sCategory + ' 9.연습오더 : ' + sValue + '건';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := '취소합계 : '   + sValue + '건';
			1 : sTmp := '0.통화안됨 : ' + sValue + '건';
			2 : sTmp := '1.한잔더 : '   + sValue + '건';
			3 : sTmp := '2.고객취소 : ' + sValue + '건';
			4 : sTmp := '3.기사부족 : ' + sValue + '건';
			5 : sTmp := '4.타사이관 : ' + sValue + '건';
			6 : sTmp := '5.타사이용 : ' + sValue + '건';
			7 : sTmp := '6.고객없음 : ' + sValue + '건';
			8 : sTmp := '7.접수실수 : ' + sValue + '건';
			9 : sTmp := '8.기타 : '     + sValue + '건';
			10: sTmp := '9.연습오더 : ' + sValue + '건';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA11C2ChartALLSeries1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA11.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '취소합계 : '   + sValue + '건';
			1 : sTmp := '0.통화안됨 : ' + sValue + '건';
			2 : sTmp := '1.한잔더 : '   + sValue + '건';
			3 : sTmp := '2.고객취소 : ' + sValue + '건';
			4 : sTmp := '3.기사부족 : ' + sValue + '건';
			5 : sTmp := '4.타사이관 : ' + sValue + '건';
			6 : sTmp := '5.타사이용 : ' + sValue + '건';
			7 : sTmp := '6.고객없음 : ' + sValue + '건';
			8 : sTmp := '7.접수실수 : ' + sValue + '건';
			9 : sTmp := '8.기타 : '     + sValue + '건';
			10: sTmp := '9.연습오더 : ' + sValue + '건';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := sValue + '건';
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '건';
			5 : sTmp := sValue + '건';
			6 : sTmp := sValue + '건';
			7 : sTmp := sValue + '건';
			8 : sTmp := sValue + '건';
			9 : sTmp := sValue + '건';
			10: sTmp := sValue + '건';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA12C1ChartView1GetValueHint(Sender: TcxGridChartView; ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	iTag := TcxGridChartSeries(Sender).Tag;
	case iTag of
		0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 : sTmp := '총건수 : '   + sValue + '건';
		1, 6, 11, 16, 21, 26, 31, 36, 41, 46, 51 : sTmp := '완료건수 : ' + sValue + '건';
		2, 7, 12, 17, 22, 27, 32, 37, 42, 47, 52 : sTmp := '취소건수 : ' + sValue + '건';
		3, 8, 13, 18, 23, 28, 33, 38, 43, 48, 53 : sTmp := '문의건수 : ' + sValue + '건';
		4, 9, 14, 19, 24, 29, 34, 39, 44, 49, 54 : sTmp := '요금 : '     + sValue + '원';
	end;
	AHint := sValue;
end;

procedure TFrm_STT.cxGridA12C1ChartView1Series1GetValueDisplayText(Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	case iTag of
		0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 : sTmp := sValue;
		1, 6, 11, 16, 21, 26, 31, 36, 41, 46, 51 : sTmp := sValue;
		2, 7, 12, 17, 22, 27, 32, 37, 42, 47, 52 : sTmp := sValue;
		3, 8, 13, 18, 23, 28, 33, 38, 43, 48, 53 : sTmp := sValue;
		4, 9, 14, 19, 24, 29, 34, 39, 44, 49, 54 : sTmp := sValue;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA12C2ChartALLGetValueHint(Sender: TcxGridChartView; ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA12.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 : sTmp := sCategory + ' 총건수 : '   + sValue + '건';
			1, 6, 11, 16, 21, 26, 31, 36, 41, 46, 51 : sTmp := sCategory + ' 완료건수 : ' + sValue + '건';
			2, 7, 12, 17, 22, 27, 32, 37, 42, 47, 52 : sTmp := sCategory + ' 취소건수 : ' + sValue + '건';
			3, 8, 13, 18, 23, 28, 33, 38, 43, 48, 53 : sTmp := sCategory + ' 문의건수 : ' + sValue + '건';
			4, 9, 14, 19, 24, 29, 34, 39, 44, 49, 54 : sTmp := sCategory + ' 요금 : '     + sValue + '원';
		end;
	end	else
	begin
		case iTag of
			0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 : sTmp := '총건수 : '   + sValue + '건';
			1, 6, 11, 16, 21, 26, 31, 36, 41, 46, 51 : sTmp := '완료건수 : ' + sValue + '건';
			2, 7, 12, 17, 22, 27, 32, 37, 42, 47, 52 : sTmp := '취소건수 : ' + sValue + '건';
			3, 8, 13, 18, 23, 28, 33, 38, 43, 48, 53 : sTmp := '문의건수 : ' + sValue + '건';
			4, 9, 14, 19, 24, 29, 34, 39, 44, 49, 54 : sTmp := '요금 : '     + sValue + '원';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA12C2ChartALLSeries2GetValueDisplayText(Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sTmp := '';
	
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA12.itemIndex = 1 then //가로 바형 차트
	begin
		case iTag of
			0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 : sTmp := '총건수 : '   + sValue + '건';
			1, 6, 11, 16, 21, 26, 31, 36, 41, 46, 51 : sTmp := '완료건수 : ' + sValue + '건';
			2, 7, 12, 17, 22, 27, 32, 37, 42, 47, 52 : sTmp := '취소건수 : ' + sValue + '건';
			3, 8, 13, 18, 23, 28, 33, 38, 43, 48, 53 : sTmp := '문의건수 : ' + sValue + '건';
			4, 9, 14, 19, 24, 29, 34, 39, 44, 49, 54 : sTmp := '요금 : '     + sValue + '원';
		end;
	end	else
	begin
		case iTag of
			4, 9, 14, 19, 24, 29, 34, 39, 44, 49, 54 : sTmp := sValue + '원';
		else
			sTmp := sValue + '건';	
		end;
	end;
//	if sValue = '0' then sTmp := '';
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA13C1ChartView1GetValueHint(Sender: TcxGridChartView; ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA13.itemIndex = 7 then    //Pie
	begin
		case cbKindA13.itemIndex of
			1 : sTmp := sCategory + ' 전체건수 : ' + sValue + '건';
			2 : sTmp := sCategory + ' 완료건수 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 취소건수 : ' + sValue + '건';
			4 : sTmp := sCategory + ' 문의콜수 : ' + sValue + '건';
			5 : sTmp := sCategory + ' 취소율 : ' + sValue + '%';
		end;
	end	else
	begin
		case cbKindA13.itemIndex of
			1 : sTmp := '전체건수 : ' + sValue + '건';
			2 : sTmp := '완료건수 : ' + sValue + '건';
			3 : sTmp := '취소건수 : ' + sValue + '건';
			4 : sTmp := '문의콜수 : ' + sValue + '건';
			5 : sTmp := '취소율 : ' + sValue + '%';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA13C1ChartView1Series1GetValueDisplayText(Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbChartKindA13.itemIndex = 1 then
	begin
		case cbKindA13.itemIndex of
			1 : sTmp := '전체건수 : ' + sValue + '건';
			2 : sTmp := '완료건수 : ' + sValue + '건';
			3 : sTmp := '취소건수 : ' + sValue + '건';
			4 : sTmp := '문의콜수 : ' + sValue + '건';
			5 : sTmp := '취소율 : ' + sValue + '%';
		end;
	end else
	begin
		case cbKindA13.itemIndex of
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '건';
			5 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA13C2ChartALLGetValueHint(Sender: TcxGridChartView; ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA13.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 전체건수 : '   + sValue + '건';
			1 : sTmp := sCategory + ' 완료건수 : ' + sValue + '건';
			2 : sTmp := sCategory + ' 취소건수 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 문의건수 : ' + sValue + '건';
			4 : sTmp := sCategory + ' 취소율 : ' + sValue + '명';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := '전체건수 : '   + sValue + '건';
			1 : sTmp := '완료건수 : ' + sValue + '건';
			2 : sTmp := '취소건수 : ' + sValue + '건';
			3 : sTmp := '문의건수 : ' + sValue + '건';
			4 : sTmp := '취소율 : ' + sValue + '명';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA13C2ChartALLSeries1GetValueDisplayText(Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA13.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '전체건수 : ' + sValue + '건';
			1 : sTmp := '완료건수 : ' + sValue + '건';
			2 : sTmp := '취소건수 : ' + sValue + '건';
			3 : sTmp := '문의건수 : ' + sValue + '건';
			4 : sTmp := '취소율 : ' + sValue + '%';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := sValue + '건';
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA15View1ColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_STT.cxGridA15View1DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA15View1, AIndex, GS_SortNoChange);
end;

procedure TFrm_STT.cxGridA1C1ChartView1GetValueHint(Sender: TcxGridChartView;
	ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA1.itemIndex = 7 then    //Pie
	begin
		case cbKindA1.itemIndex of
			1 : sTmp := sCategory + ' 완료건수 : ' + sValue + '건';
			2 : sTmp := sCategory + ' 취소건수 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 문의건수 : ' + sValue + '건';
			4 : sTmp := sCategory + ' 총건수 : ' + sValue + '건';
			5 : sTmp := sCategory + ' 신규고객 : ' + sValue + '명';
			6 : sTmp := sCategory + ' 기존고객 : ' + sValue + '명';
			7 : sTmp := sCategory + ' 신규비율 : ' + sValue + '%';
			8 : sTmp := sCategory + ' 취소율 : ' + sValue + '%';
		end;
	end else
	begin
		case cbKindA1.itemIndex of
			1 : sTmp := '완료건수 : ' + sValue + '건';
			2 : sTmp := '취소건수 : ' + sValue + '건';
			3 : sTmp := '문의건수 : ' + sValue + '건';
			4 : sTmp := '총건수 : ' + sValue + '건';
			5 : sTmp := '신규고객 : ' + sValue + '명';
			6 : sTmp := '기존고객 : ' + sValue + '명';
			7 : sTmp := '신규비율 : ' + sValue + '%';
			8 : sTmp := '취소율 : ' + sValue + '%';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA1C1ChartView1Series1GetValueDisplayText(
	Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbChartKindA1.itemIndex = 1 then
	begin
		case cbKindA1.itemIndex of
			1 : sTmp := '완료건수 : ' + sValue + '건';
			2 : sTmp := '취소건수 : ' + sValue + '건';
			3 : sTmp := '문의건수 : ' + sValue + '건';
			4 : sTmp := '총건수 : ' + sValue + '건';
			5 : sTmp := '신규고객 : ' + sValue + '명';
			6 : sTmp := '기존고객 : ' + sValue + '명';
			7 : sTmp := '신규비율 : ' + sValue + '%';
			8 : sTmp := '취소율 : ' + sValue + '%';
		end;
	end	else
	begin
		case cbKindA1.itemIndex of
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '건';
			5 : sTmp := sValue + '명';
			6 : sTmp := sValue + '명';
			7 : sTmp := sValue + '%';
			8 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA1C2ChartALLGetValueHint(Sender: TcxGridChartView;
	ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA1.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 완료건수 : ' + sValue + '건';
			1 : sTmp := sCategory + ' 취소건수 : ' + sValue + '건';
			2 : sTmp := sCategory + ' 문의건수 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 총건수 : ' + sValue + '건';
			4 : sTmp := sCategory + ' 신규고객 : ' + sValue + '명';
			5 : sTmp := sCategory + ' 기존고객 : ' + sValue + '명';
			6 : sTmp := sCategory + ' 신규비율 : ' + sValue + '%';
			7 : sTmp := sCategory + ' 취소율 : ' + sValue + '%';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := '완료건수 : ' + sValue + '건';
			1 : sTmp := '취소건수 : ' + sValue + '건';
			2 : sTmp := '문의건수 : ' + sValue + '건';
			3 : sTmp := '총건수 : ' + sValue + '건';
			4 : sTmp := '신규고객 : ' + sValue + '명';
			5 : sTmp := '기존고객 : ' + sValue + '명';
			6 : sTmp := '신규비율 : ' + sValue + '%';
			7 : sTmp := '취소율 : ' + sValue + '%';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA1C2ChartSeries1GetValueDisplayText(Sender: TObject;
	const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA1.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '완료건수 : ' + sValue + '건';
			1 : sTmp := '취소건수 : ' + sValue + '건';
			2 : sTmp := '문의건수 : ' + sValue + '건';
			3 : sTmp := '총건수 : ' + sValue + '건';
			4 : sTmp := '신규고객 : ' + sValue + '명';
			5 : sTmp := '기존고객 : ' + sValue + '명';
			6 : sTmp := '신규비율 : ' + sValue + '%';
			7 : sTmp := '취소율 : ' + sValue + '%';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := sValue + '건';
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '명';
			5 : sTmp := sValue + '명';
			6 : sTmp := sValue + '%';
			7 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA2C1ChartView1GetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory, sValuePlus : string;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	 
	sValuePlus := formatfloat('#,##0', StrToFloatDef(cxGridA2C1ChartView1Series2.Values[AValueIndex], 0.0));
	if cbChartKindA2.itemIndex = 7 then    //Pie
	begin
		case cbKindA2.itemIndex of
			1 : sTmp := sCategory + ' 자사콜운행건수 : ' + sValue + '건';
			2 : sTmp := sCategory + ' 타사콜운행건수 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 총운행건수 : ' + sValue + '건[오더금액 : ' + sValuePlus + '원]';
			4 : 
			begin
				sTmp := sCategory + ' 오더금액 : ' + sValue + '원';
			end;
		end;
	end	else
	begin
		case cbKindA2.itemIndex of
			1 : sTmp := '자사콜운행건수 : ' + sValue + '건';
			2 : sTmp := '타사콜운행건수 : ' + sValue + '건';
			3 : sTmp := '총운행건수 : ' + sValue + '건[오더금액 : ' + sValuePlus + '원]';
			4 : 
			begin
				sTmp := '오더금액 : ' + sValue + '원';
			end;
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA2C1ChartView1Series1GetValueDisplayText(
	Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbChartKindA2.itemIndex = 1 then
	begin
		case cbKindA2.itemIndex of
			1 : sTmp := '자사콜운행건수 : ' + sValue + '건';
			2 : sTmp := '타사콜운행건수 : ' + sValue + '건';
			3 : sTmp := '총운행건수 : ' + sValue + '건';
			4 : 
			begin
				sTmp := '오더금액 : ' + sValue + '원';
			end;
		end;
	end else
	begin
		case cbKindA2.itemIndex of
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : 
			begin
				sTmp := sValue + '원';
			end;
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA2C2ChartALLGetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory, sValuePlus : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	 
	sValuePlus := formatfloat('#,##0', StrToFloatDef(cxGridA2C2ChartSeries4.Values[AValueIndex], 0.0));
	if cbChartKindA2.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 자사콜운행건수 : ' + sValue + '건';
			1 : sTmp := sCategory + ' 타사콜운행건수 : ' + sValue + '건';
			2 : 
			begin
				sTmp := sCategory + ' 총운행건수 : ' + sValue + '건[오더금액 : ' + sValuePlus + '원]';
			end;
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := '자사콜운행건수 : ' + sValue + '건';
			1 : sTmp := '타사콜운행건수 : ' + sValue + '건';
			2 : 
			begin
				sTmp := '총운행건수 : ' + sValue + '건[오더금액 : ' + sValuePlus + '원]';
			end;
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA2C2ChartSeries1GetValueDisplayText(Sender: TObject;
  const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA2.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '자사콜운행건수 : ' + sValue + '건';
			1 : sTmp := '타사콜운행건수 : ' + sValue + '건';
			2 : sTmp := '총운행건수 : ' + sValue + '건';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := sValue + '건';
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA3C1ChartView1GetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));

	if cbChartKindA3.itemIndex = 7 then    //Pie
	begin
		case cbKindA3.itemIndex of
			1 : sTmp := sCategory + ' 1회 : ' + sValue + '명';
			2 : sTmp := sCategory + ' 2회 : ' + sValue + '명';
			3 : sTmp := sCategory + ' 3회 : ' + sValue + '명';
			4 : sTmp := sCategory + ' 4회 : ' + sValue + '명';
			5 : sTmp := sCategory + ' 5회 : ' + sValue + '명';
			6 : sTmp := sCategory + ' 6~10회 : ' + sValue + '명';
			7 : sTmp := sCategory + ' 11회 : ' + sValue + '명';
		end;
	end	else
	begin
		case cbKindA3.itemIndex of
			1 : sTmp := '1회 : ' + sValue + '명';
			2 : sTmp := '2회 : ' + sValue + '명';
			3 : sTmp := '3회 : ' + sValue + '명';
			4 : sTmp := '4회 : ' + sValue + '명';
			5 : sTmp := '5회 : ' + sValue + '명';
			6 : sTmp := '6~10회 : ' + sValue + '명';
			7 : sTmp := '11회 : ' + sValue + '명';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA3C1ChartView1Series1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbChartKindA3.itemIndex = 1 then
	begin
		case cbKindA3.itemIndex of
			1 : sTmp := '1회 : ' + sValue + '명';
			2 : sTmp := '2회 : ' + sValue + '명';
			3 : sTmp := '3회 : ' + sValue + '명';
			4 : sTmp := '4회 : ' + sValue + '명';
			5 : sTmp := '5회 : ' + sValue + '명';
			6 : sTmp := '6~10회 : ' + sValue + '명';
			7 : sTmp := '11회이상 : ' + sValue + '명';
		end;
	end	else
	begin
		case cbKindA3.itemIndex of
			1 : sTmp := sValue + '명';
			2 : sTmp := sValue + '명';
			3 : sTmp := sValue + '명';
			4 : sTmp := sValue + '명';
			5 : sTmp := sValue + '명';
			6 : sTmp := sValue + '명';
			7 : sTmp := sValue + '명';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA3C2ChartALLGetValueHint(Sender: TcxGridChartView;
	ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA3.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 1회 : ' + sValue + '명';
			1 : sTmp := sCategory + ' 2회 : ' + sValue + '명';
			2 : sTmp := sCategory + ' 3회 : ' + sValue + '명';
			3 : sTmp := sCategory + ' 4회 : ' + sValue + '명';
			4 : sTmp := sCategory + ' 5회 : ' + sValue + '명';
			5 : sTmp := sCategory + ' 6~10회 : ' + sValue + '명';
			6 : sTmp := sCategory + ' 11회이상 : ' + sValue + '명';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := '1회 : ' + sValue + '명';
			1 : sTmp := '2회 : ' + sValue + '명';
			2 : sTmp := '3회 : ' + sValue + '명';
			3 : sTmp := '4회 : ' + sValue + '명';
			4 : sTmp := '5회 : ' + sValue + '명';
			5 : sTmp := '6~10회 : ' + sValue + '명';
			6 : sTmp := '11회이상 : ' + sValue + '명';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA3C2ChartALLSeries1GetValueDisplayText(Sender: TObject;
	const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA3.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '1회 : ' + sValue + '명';
			1 : sTmp := '2회 : ' + sValue + '명';
			2 : sTmp := '3회 : ' + sValue + '명';
			3 : sTmp := '4회 : ' + sValue + '명';
			4 : sTmp := '5회 : ' + sValue + '명';
			5 : sTmp := '6~10회 : ' + sValue + '명';
			6 : sTmp := '11회이상 : ' + sValue + '명';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := sValue + '명';
			1 : sTmp := sValue + '명';
			2 : sTmp := sValue + '명';
			3 : sTmp := sValue + '명';
			4 : sTmp := sValue + '명';
			5 : sTmp := sValue + '명';
			6 : sTmp := sValue + '명';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA3View1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_STT.cxGridA3View1DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA3View1, AIndex, GS_SortNoChange);
end;

procedure TFrm_STT.cxGridA4C1ChartView1GetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sTmp1, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbKindA4.itemIndex <> 3 then sTmp1 := '건' else sTmp1 := '%';
	
	if cbChartKindA4.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 자사콜 : ' + sValue + sTmp1;
			1 : sTmp := sCategory + ' 공유콜 : ' + sValue + sTmp1;
			2 : sTmp := sCategory + ' 자사합계 : ' + sValue + sTmp1;
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := '자사콜 : ' + sValue + sTmp1;
			1 : sTmp := '공유콜 : ' + sValue + sTmp1;
			2 : sTmp := '자사합계 : ' + sValue + sTmp1;
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA4C1ChartView1Series1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sTmp1, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbKindA4.itemIndex <> 3 then sTmp1 := '건' else sTmp1 := '%';
	
	if cbChartKindA4.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '(발)자사콜 : ' + sValue + sTmp1;
			1 : sTmp := '(발)공유콜 : ' + sValue + sTmp1;
			2 : sTmp := '(발)자사합계 : ' + sValue + sTmp1;
			3 : sTmp := '(수)자사콜 : ' + sValue + sTmp1;
			4 : sTmp := '(수)공유콜 : ' + sValue + sTmp1;
			5 : sTmp := '(수)자사합계 : ' + sValue + sTmp1;
			6 : sTmp := '(%)자사콜 : ' + sValue + sTmp1;
			7 : sTmp := '(%)공유콜 : ' + sValue + sTmp1;
			8 : sTmp := '(%)자사합계 : ' + sValue + sTmp1;
		end;
	end	else
	begin
		sTmp := sValue + sTmp1;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA4C2ChartALLGetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp,sTmp1, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbKindA4.itemIndex <> 3 then sTmp1 := '건' else sTmp1 := '%';
	
	if cbChartKindA4.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' (발)자사콜 : '   + sValue + sTmp1;
			1 : sTmp := sCategory + ' (발)공유콜 : '   + sValue + sTmp1;
			2 : sTmp := sCategory + ' (발)자사합계 : ' + sValue + sTmp1;
			3 : sTmp := sCategory + ' (수)자사콜 : '   + sValue + sTmp1;
			4 : sTmp := sCategory + ' (수)공유콜 : '   + sValue + sTmp1;
			5 : sTmp := sCategory + ' (수)자사합계 : ' + sValue + sTmp1;
			6 : sTmp := sCategory + ' (%)자사콜 : '   + sValue + sTmp1;
			7 : sTmp := sCategory + ' (%)공유콜 : '   + sValue + sTmp1;
			8 : sTmp := sCategory + ' (%)자사합계 : ' + sValue + sTmp1;
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := '(발)자사콜 : '   + sValue + sTmp1;
			1 : sTmp := '(발)공유콜 : '   + sValue + sTmp1;
			2 : sTmp := '(발)자사합계 : ' + sValue + sTmp1;
			3 : sTmp := '(수)자사콜 : '   + sValue + sTmp1;
			4 : sTmp := '(수)공유콜 : '   + sValue + sTmp1;
			5 : sTmp := '(수)자사합계 : ' + sValue + sTmp1;
			6 : sTmp := '(%)자사콜 : '   + sValue + sTmp1;
			7 : sTmp := '(%)공유콜 : '   + sValue + sTmp1;
			8 : sTmp := '(%)자사합계 : ' + sValue + sTmp1;
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA4C2ChartALLSeries7GetValueDisplayText(Sender: TObject;
  const AValue: Variant; var ADisplayText: string);
var sTmp, sTmp1, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if iTag < 6 then sTmp1 := '건' else sTmp1 := '%';
	
	if cbChartKindA4.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '(발)자사콜 : ' + sValue + sTmp1;
			1 : sTmp := '(발)공유콜 : ' + sValue + sTmp1;
			2 : sTmp := '(발)자사합계 : ' + sValue + sTmp1;
			3 : sTmp := '(수)자사콜 : ' + sValue + sTmp1;
			4 : sTmp := '(수)공유콜 : ' + sValue + sTmp1;
			5 : sTmp := '(수)자사합계 : ' + sValue + sTmp1;
			6 : sTmp := '(%)자사콜 : ' + sValue + sTmp1;
			7 : sTmp := '(%)공유콜 : ' + sValue + sTmp1;
			8 : sTmp := '(%)자사합계 : ' + sValue + sTmp1;
		end;
	end	else
	begin
		sTmp := sValue + sTmp1;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA4View1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_STT.cxGridA4View1DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA4View1, AIndex, GS_SortNoChange);
end;

procedure TFrm_STT.cxGridA5C1ChartView1GetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));

	if cbChartKindA5.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0  : sTmp := '(0)발주:'     + sValue + '건';
			1  : sTmp := '(0)수주:'     + sValue + '건';
			2  : sTmp := '(0)발주비율:' + sValue + '%';
			3  : sTmp := '(1)발주:'     + sValue + '건';
			4  : sTmp := '(1)수주:'     + sValue + '건';
			5  : sTmp := '(1)발주비율:' + sValue + '%';
			6  : sTmp := '(2)발주:'     + sValue + '건';
			7  : sTmp := '(2)수주:'     + sValue + '건';
			8  : sTmp := '(2)발주비율:' + sValue + '%';
			9  : sTmp := '(3)발주:'     + sValue + '건';
			10 : sTmp := '(3)수주:'     + sValue + '건';
			11 : sTmp := '(3)발주비율:' + sValue + '%';
			12 : sTmp := '(4)발주:'     + sValue + '건';
			13 : sTmp := '(4)수주:'     + sValue + '건';
			14 : sTmp := '(4)발주비율:' + sValue + '%';
			15 : sTmp := '(5)발주:'     + sValue + '건';
			16 : sTmp := '(5)수주:'     + sValue + '건';
			17 : sTmp := '(5)발주비율:' + sValue + '%';
			18 : sTmp := '(총합)발주:'     + sValue + '건';
			19 : sTmp := '(총합)수주:'     + sValue + '건';
			20 : sTmp := '(총합)발주비율:' + sValue + '%';
		end;
	end	else
	begin
		case iTag of
			0  : sTmp := '(0)발주:'     + sValue + '건';
			1  : sTmp := '(0)수주:'     + sValue + '건';
			2  : sTmp := '(0)발주비율:' + sValue + '%';
			3  : sTmp := '(1)발주:'     + sValue + '건';
			4  : sTmp := '(1)수주:'     + sValue + '건';
			5  : sTmp := '(1)발주비율:' + sValue + '%';
			6  : sTmp := '(2)발주:'     + sValue + '건';
			7  : sTmp := '(2)수주:'     + sValue + '건';
			8  : sTmp := '(2)발주비율:' + sValue + '%';
			9  : sTmp := '(3)발주:'     + sValue + '건';
			10 : sTmp := '(3)수주:'     + sValue + '건';
			11 : sTmp := '(3)발주비율:' + sValue + '%';
			12 : sTmp := '(4)발주:'     + sValue + '건';
			13 : sTmp := '(4)수주:'     + sValue + '건';
			14 : sTmp := '(4)발주비율:' + sValue + '%';
			15 : sTmp := '(5)발주:'     + sValue + '건';
			16 : sTmp := '(5)수주:'     + sValue + '건';
			17 : sTmp := '(5)발주비율:' + sValue + '%';
			18 : sTmp := '(총합)발주:'     + sValue + '건';
			19 : sTmp := '(총합)수주:'     + sValue + '건';
			20 : sTmp := '(총합)발주비율:' + sValue + '%';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA5C1ChartView1Series1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sTmp1, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
//	if cbKindA5.itemIndex <> 3 then sTmp1 := '건' else sTmp1 := '%';
	
	if cbChartKindA5.itemIndex = 1 then
	begin
		case iTag of
			0  : sTmp := '(0)발주:'     + sValue + '건';
			1  : sTmp := '(0)수주:'     + sValue + '건';
			2  : sTmp := '(0)발주비율:' + sValue + '%';
			3  : sTmp := '(1)발주:'     + sValue + '건';
			4  : sTmp := '(1)수주:'     + sValue + '건';
			5  : sTmp := '(1)발주비율:' + sValue + '%';
			6  : sTmp := '(2)발주:'     + sValue + '건';
			7  : sTmp := '(2)수주:'     + sValue + '건';
			8  : sTmp := '(2)발주비율:' + sValue + '%';
			9  : sTmp := '(3)발주:'     + sValue + '건';
			10 : sTmp := '(3)수주:'     + sValue + '건';
			11 : sTmp := '(3)발주비율:' + sValue + '%';
			12 : sTmp := '(4)발주:'     + sValue + '건';
			13 : sTmp := '(4)수주:'     + sValue + '건';
			14 : sTmp := '(4)발주비율:' + sValue + '%';
			15 : sTmp := '(5)발주:'     + sValue + '건';
			16 : sTmp := '(5)수주:'     + sValue + '건';
			17 : sTmp := '(5)발주비율:' + sValue + '%';
			18 : sTmp := '(총합)발주:'     + sValue + '건';
			19 : sTmp := '(총합)수주:'     + sValue + '건';
			20 : sTmp := '(총합)발주비율:' + sValue + '%';
		end;
	end	else
	begin
		sTmp := sValue + sTmp1;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA5C2ChartALLGetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp,sTmp1, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbKindA5.itemIndex <> 3 then sTmp1 := '건' else sTmp1 := '%';
	
	if cbChartKindA5.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0  : sTmp := '(0)발주:'     + sValue + '건';
			1  : sTmp := '(0)수주:'     + sValue + '건';
			2  : sTmp := '(0)발주비율:' + sValue + '%';
			3  : sTmp := '(1)발주:'     + sValue + '건';
			4  : sTmp := '(1)수주:'     + sValue + '건';
			5  : sTmp := '(1)발주비율:' + sValue + '%';
			6  : sTmp := '(2)발주:'     + sValue + '건';
			7  : sTmp := '(2)수주:'     + sValue + '건';
			8  : sTmp := '(2)발주비율:' + sValue + '%';
			9  : sTmp := '(3)발주:'     + sValue + '건';
			10 : sTmp := '(3)수주:'     + sValue + '건';
			11 : sTmp := '(3)발주비율:' + sValue + '%';
			12 : sTmp := '(4)발주:'     + sValue + '건';
			13 : sTmp := '(4)수주:'     + sValue + '건';
			14 : sTmp := '(4)발주비율:' + sValue + '%';
			15 : sTmp := '(5)발주:'     + sValue + '건';
			16 : sTmp := '(5)수주:'     + sValue + '건';
			17 : sTmp := '(5)발주비율:' + sValue + '%';
			18 : sTmp := '(총합)발주:'     + sValue + '건';
			19 : sTmp := '(총합)수주:'     + sValue + '건';
			20 : sTmp := '(총합)발주비율:' + sValue + '%';
		end;
	end	else
	begin
		case iTag of
			0  : sTmp := '(0)발주:'     + sValue + '건';
			1  : sTmp := '(0)수주:'     + sValue + '건';
			2  : sTmp := '(0)발주비율:' + sValue + '%';
			3  : sTmp := '(1)발주:'     + sValue + '건';
			4  : sTmp := '(1)수주:'     + sValue + '건';
			5  : sTmp := '(1)발주비율:' + sValue + '%';
			6  : sTmp := '(2)발주:'     + sValue + '건';
			7  : sTmp := '(2)수주:'     + sValue + '건';
			8  : sTmp := '(2)발주비율:' + sValue + '%';
			9  : sTmp := '(3)발주:'     + sValue + '건';
			10 : sTmp := '(3)수주:'     + sValue + '건';
			11 : sTmp := '(3)발주비율:' + sValue + '%';
			12 : sTmp := '(4)발주:'     + sValue + '건';
			13 : sTmp := '(4)수주:'     + sValue + '건';
			14 : sTmp := '(4)발주비율:' + sValue + '%';
			15 : sTmp := '(5)발주:'     + sValue + '건';
			16 : sTmp := '(5)수주:'     + sValue + '건';
			17 : sTmp := '(5)발주비율:' + sValue + '%';
			18 : sTmp := '(총합)발주:'     + sValue + '건';
			19 : sTmp := '(총합)수주:'     + sValue + '건';
			20 : sTmp := '(총합)발주비율:' + sValue + '%';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA5C2ChartALLSeries1GetValueDisplayText(Sender: TObject;
  const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sTmp := '';
	
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA5.itemIndex = 1 then
	begin
		case iTag of
			0  : sTmp := '(0)발주:'     + sValue + '건';
			1  : sTmp := '(0)수주:'     + sValue + '건';
			2  : sTmp := '(0)발주비율:' + sValue + '%';
			3  : sTmp := '(1)발주:'     + sValue + '건';
			4  : sTmp := '(1)수주:'     + sValue + '건';
			5  : sTmp := '(1)발주비율:' + sValue + '%';
			6  : sTmp := '(2)발주:'     + sValue + '건';
			7  : sTmp := '(2)수주:'     + sValue + '건';
			8  : sTmp := '(2)발주비율:' + sValue + '%';
			9  : sTmp := '(3)발주:'     + sValue + '건';
			10 : sTmp := '(3)수주:'     + sValue + '건';
			11 : sTmp := '(3)발주비율:' + sValue + '%';
			12 : sTmp := '(4)발주:'     + sValue + '건';
			13 : sTmp := '(4)수주:'     + sValue + '건';
			14 : sTmp := '(4)발주비율:' + sValue + '%';
			15 : sTmp := '(5)발주:'     + sValue + '건';
			16 : sTmp := '(5)수주:'     + sValue + '건';
			17 : sTmp := '(5)발주비율:' + sValue + '%';
			18 : sTmp := '(총합)발주:'     + sValue + '건';
			19 : sTmp := '(총합)수주:'     + sValue + '건';
			20 : sTmp := '(총합)발주비율:' + sValue + '%';
		end;
	end	else
	begin
		case iTag of
			0  : sTmp := sValue + '건';
			1  : sTmp := sValue + '건';
			2  : sTmp := sValue + '%';
			3  : sTmp := sValue + '건';
			4  : sTmp := sValue + '건';
			5  : sTmp := sValue + '%';
			6  : sTmp := sValue + '건';
			7  : sTmp := sValue + '건';
			8  : sTmp := sValue + '%';
			9  : sTmp := sValue + '건';
			10 : sTmp := sValue + '건';
			11 : sTmp := sValue + '%';
			12 : sTmp := sValue + '건';
			13 : sTmp := sValue + '건';
			14 : sTmp := sValue + '%';
			15 : sTmp := sValue + '건';
			16 : sTmp := sValue + '건';
			17 : sTmp := sValue + '%';
			18 : sTmp := sValue + '건';
			19 : sTmp := sValue + '건';
			20 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA5View1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_STT.cxGridA5View1DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA5View1, AIndex, GS_SortNoChange);
end;

procedure TFrm_STT.cxGridA5View1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then  Exit;

  try
    AStyle := frm_Main.cxStyle15;
    if ARecord.RecordIndex mod 3 = 2 then AStyle.Color := $00D5FBEF
                                     else AStyle.Color := clWhite;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_STT.cxGridA6C1ChartView1GetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA6.itemIndex = 7 then    //Pie
	begin
		case cbKindA6.itemIndex of
			1 : sTmp := sCategory + ' 완료건수 : ' + sValue + '건';
			2 : sTmp := sCategory + ' 취소건수 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 문의건수 : ' + sValue + '건';
			4 : sTmp := sCategory + ' 총건수 : ' + sValue + '건';
			5 : sTmp := sCategory + ' 완료요금합계 : ' + sValue + '원';
		end;
	end	else
	begin
		case cbKindA6.itemIndex of
			1 : sTmp := '완료건수 : ' + sValue + '건';
			2 : sTmp := '취소건수 : ' + sValue + '건';
			3 : sTmp := '문의건수 : ' + sValue + '건';
			4 : sTmp := '총건수 : ' + sValue + '건';
			5 : sTmp := '완료요금합계 : ' + sValue + '원';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA6C1ChartView1Series1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbChartKindA6.itemIndex = 1 then
	begin
		case cbKindA6.itemIndex of
			1 : sTmp := '완료건수 : ' + sValue + '건';
			2 : sTmp := '취소건수 : ' + sValue + '건';
			3 : sTmp := '문의건수 : ' + sValue + '건';
			4 : sTmp := '총건수 : ' + sValue + '건';
			5 : sTmp := '완료요금합계 : ' + sValue + '원';
		end;
	end	else
	begin
		case cbKindA6.itemIndex of
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '건';
			5 : sTmp := sValue + '원';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA6C2ChartALLGetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory, sValuePlus : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	 
	sValuePlus := formatfloat('#,##0', StrToFloatDef(cxGridA6C2ChartALLSeries5.Values[AValueIndex], 0.0));
	if cbChartKindA6.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 완료건수 : ' + sValue + '건';
			1 : sTmp := sCategory + ' 취소건수 : ' + sValue + '건';
			2 : sTmp := sCategory + ' 문의건수 : ' + sValue + '건';
			3 : 
			begin
				sTmp := sCategory + ' 총건수 : ' + sValue + '건[완료요금합계 : ' + sValuePlus + '원]';
			end;
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := '완료건수 : ' + sValue + '건';
			1 : sTmp := '취소건수 : ' + sValue + '건';
			2 : sTmp := '문의건수 : ' + sValue + '건';
			3 : 
			begin
				sTmp := '총건수 : ' + sValue + '건[완료요금합계 : ' + sValuePlus + '원]';
			end;
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA6C2ChartALLSeries1GetValueDisplayText(Sender: TObject;
  const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sTmp := '';
	
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA6.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '완료건수 : ' + sValue + '건';
			1 : sTmp := '취소건수 : ' + sValue + '건';
			2 : sTmp := '문의건수 : ' + sValue + '건';
			3 : sTmp := '총건수 : ' + sValue + '건';
			4 : sTmp := '완료요금합계 : ' + sValue + '원';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := sValue + '건';
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '원';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA7C1ChartView1GetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA1.itemIndex = 7 then    //Pie
	begin
		case cbKindA1.itemIndex of
			1 : sTmp := sCategory + ' 총고객 : ' + sValue + '명';
			2 : sTmp := sCategory + ' 신규고객 : ' + sValue + '명';
			3 : sTmp := sCategory + ' 신규율 : ' + sValue + '%';
		end;
	end	else
	begin
		case cbKindA1.itemIndex of
			1 : sTmp := '총고객 : ' + sValue + '명';
			2 : sTmp := '신규고객 : ' + sValue + '명';
			3 : sTmp := '신규율 : ' + sValue + '%';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA7C1ChartView1Series1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbChartKindA7.itemIndex = 1 then
	begin
		case cbKindA7.itemIndex of
			1 : sTmp := '총고객 : ' + sValue + '명';
			2 : sTmp := '신규고객 : ' + sValue + '명';
			3 : sTmp := '신규율 : ' + sValue + '%';
		end;
	end	else
	begin
		case cbKindA7.itemIndex of
			1 : sTmp := sValue + '명';
			2 : sTmp := sValue + '명';
			3 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA7C2ChartALLGetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA7.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 총고객 : ' + sValue + '명';
			1 : sTmp := sCategory + ' 신규고객 : ' + sValue + '명';
			2 : sTmp := sCategory + ' 신규율 : ' + sValue + '%';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := '총고객 : ' + sValue + '명';
			1 : sTmp := '신규고객 : ' + sValue + '명';
			2 : sTmp := '신규율 : ' + sValue + '%';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA7C2ChartALLSeries1GetValueDisplayText(Sender: TObject;
  const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA7.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '총고객 : ' + sValue + '명';
			1 : sTmp := '신규고객 : ' + sValue + '명';
			2 : sTmp := '신규율 : ' + sValue + '%';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := sValue + '명';
			1 : sTmp := sValue + '명';
			2 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA8C1ChartView1GetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA8.itemIndex = 7 then    //Pie
	begin
		case cbKindA8.itemIndex of
			1 : sTmp := sCategory + ' 총콜수 : '   + sValue + '건';
			2 : sTmp := sCategory + ' 완료콜수 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 취소콜수 : ' + sValue + '건';
			4 : sTmp := sCategory + ' 취소비율 : ' + sValue + '%';
		end;
	end	else
	begin
		case cbKindA8.itemIndex of
			1 : sTmp := '총콜수 : '   + sValue + '건';
			2 : sTmp := '완료콜수 : ' + sValue + '건';
			3 : sTmp := '취소콜수 : ' + sValue + '건';
			4 : sTmp := '취소비율 : ' + sValue + '%';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA8C1ChartView1Series1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbChartKindA8.itemIndex = 1 then
	begin
		case cbKindA8.itemIndex of
			1 : sTmp := '총콜수 : '   + sValue + '건';
			2 : sTmp := '완료콜수 : ' + sValue + '건';
			3 : sTmp := '취소콜수 : ' + sValue + '건';
			4 : sTmp := '취소비율 : ' + sValue + '%';
		end;
	end	else
	begin
		case cbKindA8.itemIndex of
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA8C2ChartALLGetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA8.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 총콜수 : '   + sValue + '건';
			1 : sTmp := sCategory + ' 완료콜스 : ' + sValue + '건';
			2 : sTmp := sCategory + ' 취소콜수 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 취소비율 : ' + sValue + '%';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := '총콜수 : '   + sValue + '건';
			1 : sTmp := '완료콜스 : ' + sValue + '건';
			2 : sTmp := '취소콜수 : ' + sValue + '건';
			3 : sTmp := '취소비율 : ' + sValue + '%';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA8C2ChartSeries1GetValueDisplayText(Sender: TObject;
  const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA8.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '총콜수 : '   + sValue + '건';
			1 : sTmp := '완료콜수 : ' + sValue + '건';
			2 : sTmp := '취소콜수 : ' + sValue + '건';
			3 : sTmp := '취소비율 : ' + sValue + '%';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := sValue + '건';
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA9C1ChartView1GetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA9.itemIndex = 7 then    //Pie
	begin
		case cbKindA9.itemIndex of
			1 : sTmp := sCategory + ' 총콜수 :   ' + sValue + '건';
			2 : sTmp := sCategory + ' 완료콜수 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 취소콜수 : ' + sValue + '건';
			4 : sTmp := sCategory + ' 취소비율 : ' + sValue + '%';
		end;
	end	else
	begin
		case cbKindA9.itemIndex of
			1 : sTmp := '총콜수 :   ' + sValue + '건';
			2 : sTmp := '완료콜수 : ' + sValue + '건';
			3 : sTmp := '취소콜수 : ' + sValue + '건';
			4 : sTmp := '취소비율 : ' + sValue + '%';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA9C1ChartView1Series1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	if cbChartKindA9.itemIndex = 1 then
	begin
		case cbKindA9.itemIndex of
			1 : sTmp := '총콜수 : '   + sValue + '건';
			2 : sTmp := '완료콜수 : ' + sValue + '건';
			3 : sTmp := '취소콜수 : ' + sValue + '건';
			4 : sTmp := '취소비율 : ' + sValue + '%';
		end;
	end	else
	begin
		case cbKindA9.itemIndex of
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '건';
			4 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridA9C2ChartALLGetValueHint(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var sTmp, sValue, sCategory : string;
	iTag : integer;
begin
	sCategory := TcxGridChartView(Sender).Categories.Values[AValueIndex];
	iTag := ASeries.Tag;
	sValue := ASeries.Values[AValueIndex];
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	
	if cbChartKindA9.itemIndex = 7 then    //Pie
	begin
		case iTag of
			0 : sTmp := sCategory + ' 총콜수 : '   + sValue + '건';
			1 : sTmp := sCategory + ' 완료콜수 : ' + sValue + '건';
			2 : sTmp := sCategory + ' 취소콜수 : ' + sValue + '건';
			3 : sTmp := sCategory + ' 취소비율 : ' + sValue + '%';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := '총콜수 : '   + sValue + '건';
			1 : sTmp := '완료콜수 : ' + sValue + '건';
			2 : sTmp := '취소콜수 : ' + sValue + '건';
			3 : sTmp := '취소비율 : ' + sValue + '%';
		end;
	end;
	AHint := sTmp;
end;

procedure TFrm_STT.cxGridA9C2ChartSeries1GetValueDisplayText(Sender: TObject;
  const AValue: Variant; var ADisplayText: string);
var sTmp, sValue : string;
	iTag : integer;
begin
	sValue := AValue;
	sValue := formatfloat('#,##0', StrToFloatDef(sValue, 0.0));
	iTag := TcxGridChartSeries(Sender).Tag;
	if cbChartKindA9.itemIndex = 1 then
	begin
		case iTag of
			0 : sTmp := '총콜수 : '   + sValue + '건';
			1 : sTmp := '완료콜수 : ' + sValue + '건';
			2 : sTmp := '취소콜수 : ' + sValue + '건';
			3 : sTmp := '취소비율 : ' + sValue + '%';
		end;
	end	else
	begin
		case iTag of
			0 : sTmp := sValue + '건';
			1 : sTmp := sValue + '건';
			2 : sTmp := sValue + '건';
			3 : sTmp := sValue + '%';
		end;
	end;
	ADisplayText := sTmp;
end;

procedure TFrm_STT.cxGridBandedColumn35CompareRowValuesForCellMerging(Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant; ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties; const AValue2: Variant;
  var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex := 3;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFrm_STT.cxGridBandedTableView12CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
	AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var sTmp : string; iRow, iDx : integer;
begin
	iRow := cxGridBandedTableView12.DataController.FocusedRecordIndex;
	sTmp := cxGridBandedTableView12.DataController.Values[iRow, 76];
//	sTmp := cxGridBandedTableView12.ViewData.Records[iRow].Values[76];
	iDx := cbKindA12_GuDong.Properties.Items.IndexOf(sTmp);
	if iDx > -1 then cbKindA12_GuDong.ItemIndex := iDx; 
end;

procedure TFrm_STT.cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems11GetText(Sender: TcxDataSummaryItem;
  const AValue: Variant; AIsFooter: Boolean; var AText: string);
var sTmp : string;
	i : integer;
begin
	if not Assigned(FAreaTimeCall.Time) then exit;
	
	i11_1317TCnt := 0; i11_1317FCnt := 0; i11_1317CCnt := 0; i11_1317QCnt := 0; 
	for i := 0 to FAreaTimeCall.Time.count - 1 do
	begin
		if FAreaTimeCall.Time[i] = '1317' then	
		begin
			i11_1317CCnt := i11_1317CCnt + StrToIntDef(FAreaTimeCall.CCall[i],0);
			i11_1317TCnt := i11_1317TCnt + StrToIntDef(FAreaTimeCall.TCall[i],0);
		end;
	end;

	if i11_1317TCnt = 0 then exit;
	if i11_1317CCnt = 0 then sTmp := '0%'
	else sTmp := FloatToStr(roundto((i11_1317CCnt / i11_1317TCnt * 100),-1)) + '%';

	AText := sTmp; 
end;

procedure TFrm_STT.cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems17GetText(Sender: TcxDataSummaryItem;
  const AValue: Variant; AIsFooter: Boolean; var AText: string);
var sTmp : string;
	i : integer;
begin
	if not Assigned(FAreaTimeCall.Time) then exit;

	i11_1820TCnt := 0; i11_1820FCnt := 0; i11_1820CCnt := 0; i11_1820QCnt := 0; 
	for i := 0 to FAreaTimeCall.Time.count - 1 do
	begin
		if FAreaTimeCall.Time[i] = '1820' then	
		begin
			i11_1820CCnt := i11_1820CCnt + StrToIntDef(FAreaTimeCall.CCall[i],0);
			i11_1820TCnt := i11_1820TCnt + StrToIntDef(FAreaTimeCall.TCall[i],0);
		end;
	end;

	if i11_1820TCnt = 0 then exit;
	if i11_1820CCnt = 0 then sTmp := '0%'
	else sTmp := FloatToStr(roundto((i11_1820CCnt / i11_1820TCnt * 100),-1)) + '%';

	AText := sTmp; 
end;

procedure TFrm_STT.cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems23GetText(Sender: TcxDataSummaryItem;
	const AValue: Variant; AIsFooter: Boolean; var AText: string);
var sTmp : string;
	i : integer;
begin
	if not Assigned(FAreaTimeCall.Time) then exit;

	i11_21TCnt := 0; i11_21FCnt := 0; i11_21CCnt := 0; i11_21QCnt := 0; 
	for i := 0 to FAreaTimeCall.Time.count - 1 do
	begin
		if FAreaTimeCall.Time[i] = '21' then	
		begin
			i11_21CCnt := i11_21CCnt + StrToIntDef(FAreaTimeCall.CCall[i],0);
			i11_21TCnt := i11_21TCnt + StrToIntDef(FAreaTimeCall.TCall[i],0);
		end;
	end;

	if i11_21TCnt = 0 then exit;
	if i11_21CCnt = 0 then sTmp := '0%'
	else sTmp := FloatToStr(roundto((i11_21CCnt / i11_21TCnt * 100),-1)) + '%';

	AText := sTmp; 
end;

procedure TFrm_STT.cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems29GetText(Sender: TcxDataSummaryItem;
  const AValue: Variant; AIsFooter: Boolean; var AText: string);
var sTmp : string;
	i : integer;
begin
	if not Assigned(FAreaTimeCall.Time) then exit;

	i11_22TCnt := 0; i11_22FCnt := 0; i11_22CCnt := 0; i11_22QCnt := 0; 
	for i := 0 to FAreaTimeCall.Time.count - 1 do
	begin
		if FAreaTimeCall.Time[i] = '22' then	
		begin
			i11_22CCnt := i11_22CCnt + StrToIntDef(FAreaTimeCall.CCall[i],0);
			i11_22TCnt := i11_22TCnt + StrToIntDef(FAreaTimeCall.TCall[i],0);
		end;
	end;

	if i11_22TCnt = 0 then exit;
	if i11_22CCnt = 0 then sTmp := '0%'
	else sTmp := FloatToStr(roundto((i11_22CCnt / i11_22TCnt * 100),-1)) + '%';

	AText := sTmp; 
end;

procedure TFrm_STT.cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems35GetText(Sender: TcxDataSummaryItem;
  const AValue: Variant; AIsFooter: Boolean; var AText: string);
var sTmp : string;
	i : integer;
begin
	if not Assigned(FAreaTimeCall.Time) then exit;

	i11_23TCnt := 0; i11_23FCnt := 0; i11_23CCnt := 0; i11_23QCnt := 0; 
	for i := 0 to FAreaTimeCall.Time.count - 1 do
	begin
		if FAreaTimeCall.Time[i] = '23' then	
		begin
			i11_23CCnt := i11_23CCnt + StrToIntDef(FAreaTimeCall.CCall[i],0);
			i11_23TCnt := i11_23TCnt + StrToIntDef(FAreaTimeCall.TCall[i],0);
		end;
	end;

	if i11_23TCnt = 0 then exit;
	if i11_23CCnt = 0 then sTmp := '0%'
	else sTmp := FloatToStr(roundto((i11_23CCnt / i11_23TCnt * 100),-1)) + '%';

	AText := sTmp; 
end;

procedure TFrm_STT.cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems41GetText(Sender: TcxDataSummaryItem;
  const AValue: Variant; AIsFooter: Boolean; var AText: string);
var sTmp : string;
	i : integer;
begin
	if not Assigned(FAreaTimeCall.Time) then exit;

	i11_00TCnt := 0; i11_00FCnt := 0; i11_00CCnt := 0; i11_00QCnt := 0; 
	for i := 0 to FAreaTimeCall.Time.count - 1 do
	begin
		if FAreaTimeCall.Time[i] = '00' then	
		begin
			i11_00CCnt := i11_00CCnt + StrToIntDef(FAreaTimeCall.CCall[i],0);
			i11_00TCnt := i11_00TCnt + StrToIntDef(FAreaTimeCall.TCall[i],0);
		end;
	end;

	if i11_00TCnt = 0 then exit;
	if i11_00CCnt = 0 then sTmp := '0%'
	else sTmp := FloatToStr(roundto((i11_00CCnt / i11_00TCnt * 100),-1)) + '%';

	AText := sTmp; 
end;

procedure TFrm_STT.cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems47GetText(Sender: TcxDataSummaryItem;
  const AValue: Variant; AIsFooter: Boolean; var AText: string);
var sTmp : string;
	i : integer;
begin
	if not Assigned(FAreaTimeCall.Time) then exit;

	i11_01TCnt := 0; i11_01FCnt := 0; i11_01CCnt := 0; i11_01QCnt := 0; 
	for i := 0 to FAreaTimeCall.Time.count - 1 do
	begin
		if FAreaTimeCall.Time[i] = '01' then	
		begin
			i11_01CCnt := i11_01CCnt + StrToIntDef(FAreaTimeCall.CCall[i],0);
			i11_01TCnt := i11_01TCnt + StrToIntDef(FAreaTimeCall.TCall[i],0);
		end;
	end;

	if i11_01TCnt = 0 then exit;
	if i11_01CCnt = 0 then sTmp := '0%'
	else sTmp := FloatToStr(roundto((i11_01CCnt / i11_01TCnt * 101),-1)) + '%';

	AText := sTmp; 
end;

procedure TFrm_STT.cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems53GetText(Sender: TcxDataSummaryItem;
  const AValue: Variant; AIsFooter: Boolean; var AText: string);
var sTmp : string;
	i : integer;
begin
	if not Assigned(FAreaTimeCall.Time) then exit;

	i11_02TCnt := 0; i11_02FCnt := 0; i11_02CCnt := 0; i11_02QCnt := 0; 
	for i := 0 to FAreaTimeCall.Time.count - 1 do
	begin
		if FAreaTimeCall.Time[i] = '02' then	
		begin
			i11_02CCnt := i11_02CCnt + StrToIntDef(FAreaTimeCall.CCall[i],0);
			i11_02TCnt := i11_02TCnt + StrToIntDef(FAreaTimeCall.TCall[i],0);
		end;
	end;

	if i11_02TCnt = 0 then exit;
	if i11_02CCnt = 0 then sTmp := '0%'
	else sTmp := FloatToStr(roundto((i11_02CCnt / i11_02TCnt * 102),-1)) + '%';

	AText := sTmp; 
end;

procedure TFrm_STT.cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems59GetText(Sender: TcxDataSummaryItem;
  const AValue: Variant; AIsFooter: Boolean; var AText: string);
var sTmp : string;
	i : integer;
begin
	if not Assigned(FAreaTimeCall.Time) then exit;

	i11_0304TCnt := 0; i11_0304FCnt := 0; i11_0304CCnt := 0; i11_0304QCnt := 0; 
	for i := 0 to FAreaTimeCall.Time.count - 1 do
	begin
		if FAreaTimeCall.Time[i] = '0304' then	
		begin
			i11_0304CCnt := i11_0304CCnt + StrToIntDef(FAreaTimeCall.CCall[i],0);
			i11_0304TCnt := i11_0304TCnt + StrToIntDef(FAreaTimeCall.TCall[i],0);
		end;
	end;

	if i11_0304TCnt = 0 then exit;
	if i11_0304CCnt = 0 then sTmp := '0%'
	else sTmp := FloatToStr(roundto((i11_0304CCnt / i11_0304TCnt * 100),-1)) + '%';

	AText := sTmp; 
end;

procedure TFrm_STT.cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText(Sender: TcxDataSummaryItem;
  const AValue: Variant; AIsFooter: Boolean; var AText: string);
var sTmp : string;
	i : integer;
begin
	AText := '';
	if not Assigned(FAreaTimeCall.Time) then exit;
	
	i11_0913TCnt := 0; i11_0913FCnt := 0; i11_0913CCnt := 0; i11_0913QCnt := 0; 
	for i := 0 to FAreaTimeCall.Time.count - 1 do
	begin
		if FAreaTimeCall.Time[i] = '0913' then	
		begin
			i11_0913CCnt := i11_0913CCnt + StrToIntDef(FAreaTimeCall.CCall[i],0);
			i11_0913TCnt := i11_0913TCnt + StrToIntDef(FAreaTimeCall.TCall[i],0);
		end;
	end;

	if i11_0913TCnt = 0 then exit;
	if i11_0913CCnt = 0 then sTmp := '0%'
	else sTmp := FloatToStr(roundto((i11_0913CCnt / i11_0913TCnt * 100),-1)) + '%';

	AText := sTmp;
end;

procedure TFrm_STT.cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems65GetText(Sender: TcxDataSummaryItem;
  const AValue: Variant; AIsFooter: Boolean; var AText: string);
var sTmp : string;
	i : integer;
begin
	if not Assigned(FAreaTimeCall.Time) then exit;

	i11_0408TCnt := 0; i11_0408FCnt := 0; i11_0408CCnt := 0; i11_0408QCnt := 0; 
	for i := 0 to FAreaTimeCall.Time.count - 1 do
	begin
		if FAreaTimeCall.Time[i] = '0408' then	
		begin
			i11_0408CCnt := i11_0408CCnt + StrToIntDef(FAreaTimeCall.CCall[i],0);
			i11_0408TCnt := i11_0408TCnt + StrToIntDef(FAreaTimeCall.TCall[i],0);
		end;
	end;

	if i11_0408TCnt = 0 then exit;
	if i11_0408CCnt = 0 then sTmp := '0%'
	else sTmp := FloatToStr(roundto((i11_0408CCnt / i11_0408TCnt * 100),-1)) + '%';

	AText := sTmp; 
end;

procedure TFrm_STT.cxGridBandedTableView12TcxGridDataControllerTcxDataSummaryFooterSummaryItems71GetText(Sender: TcxDataSummaryItem;
  const AValue: Variant; AIsFooter: Boolean; var AText: string);
var sTmp : string;
	i : integer;
	iTot, iCancel : integer;
begin
	if not Assigned(FAreaTimeCall.Time) then exit;

	iTot := 0; iCancel := 0;
	for i := 0 to FAreaTimeCall.Time.count - 1 do
	begin
		iCancel := iCancel + StrToIntDef(FAreaTimeCall.CCall[i],0);
		iTot := iTot + StrToIntDef(FAreaTimeCall.TCall[i],0);
	end;

	if iTot = 0 then exit;
	if iCancel = 0 then sTmp := '0%'
	else sTmp := FloatToStr(roundto((iCancel / iTot * 100),-1)) + '%';

	AText := sTmp; 
end;

procedure TFrm_STT.cxGridDBTableView13TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(Sender: TcxDataSummaryItem;
  const AValue: Variant; AIsFooter: Boolean; var AText: string);
var sTmp : string;
begin
	AText := '';

	if i12_CCnt = 0 then sTmp := '0%'
	else sTmp := FloatToStr(roundto((i12_CCnt / i12_TCnt * 100),-1)) + '%';

	AText := sTmp;
end;

procedure TFrm_STT.cxGridDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: string);
begin
	if iNCall_N <> 0 then
		AText := FormatFloat('#,##0', iNCall_N);
end;

procedure TFrm_STT.cxGridDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCCall_N <> 0 then
		AText := FormatFloat('#,##0', iCCall_N);
end;

procedure TFrm_STT.cxGridDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iNCall_N <> 0 then
		AText := FloatToStr(roundto((iNCall_N / iTCall_N * 100),-1)) + '%';
end;

procedure TFrm_STT.cxGridDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := '합      계';
end;

procedure TFrm_STT.cxGridDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems5GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iFCall_N <> 0 then
		AText := FormatFloat('#,##0', iFCall_N);
end;

procedure TFrm_STT.cxGridDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems6GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iTCall_N <> 0 then
		AText := FormatFloat('#,##0', iTCall_N);
end;

procedure TFrm_STT.cxGrid_CancelListCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
var iCol, iRow, iType, iBrNo, iKeyNum, iCanCnt, iDate : integer;
	sBrNo, sHdNo, sTmp, sKeyNum, sBrInfo, sCanCnt, sDate: string;
begin
	iCol := ACellViewInfo.item.Index ;
	if iCol < 4 then exit;

	iRow := cxGrid_CancelList.DataController.FocusedRecordIndex;
	iType := iCol - 4;
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		sHdNo := GT_SEL_BRNO.HDNO
	else
		sHdNo := GT_USERIF.HD;
		
	iKeyNum := cxGrid_CancelList.GetColumnByFieldName('대표번호').Index;
	sKeyNum := CallToStr(cxGrid_CancelList.DataController.Values[iRow, iKeyNum]);
	
	iCanCnt := iCol;
	sTmp := cxGrid_CancelList.DataController.Values[iRow, iCanCnt];
	sCanCnt := Copy(sTmp, 1, Pos('건',sTmp)-1);

	iDate := 2;
	sTmp := cxGrid_CancelList.DataController.Values[iRow, iDate];
	sDate := CallToStr(Copy(sTmp, 1, 10));

	iBrNo := cxGrid_CancelList.GetColumnByFieldName('지사코드').Index;
	sBrNo := cxGrid_CancelList.DataController.Values[iRow, iBrNo];

	iBrNo := cxGrid_CancelList.GetColumnByFieldName('지사명(코드)').Index;
	sTmp := cxGrid_CancelList.DataController.Values[iRow, iBrNo];
	sBrInfo := '[' + sTmp + '-' + sKeyNum + '] 취소[' + sCanCnt + '건]';
											
	RequestDataCancelListDetail(sHdNo, sBrNo, sKeyNum, sBrInfo, sDate, sCanCnt, iType);
end;

procedure TFrm_STT.cxGrid_CancelListColumnHeaderClick(Sender: TcxGridTableView;
	AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_STT.cxGrid_CancelListStylesGetContentStyle(
	Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
	iRow, iStCd : Integer;
begin
	iRow := cxGrid_CancelList.DataController.GetRowInfo(ARecord.Index).RecordIndex;

	AStyle := Frm_Main.cxStyle1;
	iStCd := 2;
	if Pos('토', cxGrid_CancelList.DataController.Values[iRow, iStCd]) > 0 then
		AStyle := Frm_Main.cxStyleSaturday  //$00FDF2D9
	else
	if Pos('일', cxGrid_CancelList.DataController.Values[iRow, iStCd]) > 0 then
		AStyle := Frm_Main.cxStyleSunDay;    //$00EBEAFD    
end;

procedure TFrm_STT.cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCanCelTOT <> 0 then      //취소골 합계
		AText := FormatFloat('#,##0', iCanCelTOT);
end;

procedure TFrm_STT.cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems10GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCanCel9 <> 0 then      //취소골9 합계
		AText := FormatFloat('#,##0', iCanCel9)
	else
		AText := '0';
end;

procedure TFrm_STT.cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems11GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCanCel10 <> 0 then      //취소골10 합계
		AText := FormatFloat('#,##0', iCanCel10)
	else
		AText := '0';
end;

procedure TFrm_STT.cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCanCel0 <> 0 then      //취소골0 합계
		AText := FormatFloat('#,##0', iCanCel0)
	else
		AText := '0';
end;

procedure TFrm_STT.cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCanCel1 <> 0 then      //취소골1 합계
		AText := FormatFloat('#,##0', iCanCel1)
	else
		AText := '0';
end;

procedure TFrm_STT.cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: string);
begin
	if iCanCel2 <> 0 then      //취소골2 합계
		AText := FormatFloat('#,##0', iCanCel2)
	else
		AText := '0';
end;

procedure TFrm_STT.cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCanCel3 <> 0 then      //취소골3 합계
		AText := FormatFloat('#,##0', iCanCel3)
	else
		AText := '0';
end;

procedure TFrm_STT.cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems5GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCanCel4 <> 0 then      //취소골4 합계
		AText := FormatFloat('#,##0', iCanCel4)
	else
		AText := '0';
end;

procedure TFrm_STT.cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems6GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCanCel5 <> 0 then      //취소골5 합계
		AText := FormatFloat('#,##0', iCanCel5)
	else
		AText := '0';
end;

procedure TFrm_STT.cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems7GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCanCel6 <> 0 then      //취소골6 합계
		AText := FormatFloat('#,##0', iCanCel6)
	else
		AText := '0';
end;

procedure TFrm_STT.cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems8GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: string);
begin
	if iCanCel7 <> 0 then      //취소골7 합계
		AText := FormatFloat('#,##0', iCanCel7)
	else
		AText := '0';
end;

procedure TFrm_STT.cxGrid_CancelListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItemsGetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCanCel8 <> 0 then      //취소골8 합계
		AText := FormatFloat('#,##0', iCanCel8)
	else
		AText := '0';
end;

procedure TFrm_STT.cxGrid_NewCustStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
	iRow, iStCd : Integer;
begin
	iRow := cxGrid_NewCust.DataController.GetRowInfo(ARecord.Index).RecordIndex;

	AStyle := Frm_Main.cxStyle1;
	iStCd := 0;
	if Pos('토', cxGrid_NewCust.DataController.Values[iRow, iStCd]) > 0 then
		AStyle := Frm_Main.cxStyleSaturday  //$00FDF2D9
	else
	if Pos('일', cxGrid_NewCust.DataController.Values[iRow, iStCd]) > 0 then
		AStyle := Frm_Main.cxStyleSunDay;    //$00EBEAFD    
end;

procedure TFrm_STT.cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: string);
begin
	if iCust <> 0 then
		AText := FormatFloat('#,##0', iCust);
end;

procedure TFrm_STT.cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iNewCust <> 0 then
		AText := FormatFloat('#,##0', iNewCust);
end;

procedure TFrm_STT.cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCust <> 0 then
		AText := FloatToStr(roundto((iNewCust / iCust * 100),-1)) + '%';
end;

procedure TFrm_STT.cxGrid_NewOrderDayListStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
	iRow, iStCd : Integer;
begin
	iRow := cxGrid_NewOrderDayList.DataController.GetRowInfo(ARecord.Index).RecordIndex;

	AStyle := Frm_Main.cxStyle1;
	iStCd := 1;
	if Pos('토요일', cxGrid_NewOrderDayList.DataController.Values[iRow, iStCd]) > 0 then
		AStyle := Frm_Main.cxStyleSaturday  //$00FDF2D9
	else
	if Pos('일요일', cxGrid_NewOrderDayList.DataController.Values[iRow, iStCd]) > 0 then
		AStyle := Frm_Main.cxStyleSunDay;    //$00EBEAFD    
end;

procedure TFrm_STT.cxGrid_OrderDayListStylesGetContentStyle(
	Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
	iRow, iStCd : Integer;
begin
	iRow := cxGrid_OrderDayList.DataController.GetRowInfo(ARecord.Index).RecordIndex;

	AStyle := Frm_Main.cxStyle1;
	iStCd := 1;
	if Pos('토요일', cxGrid_OrderDayList.DataController.Values[iRow, iStCd]) > 0 then
		AStyle := Frm_Main.cxStyleSaturday  //$00FDF2D9
	else
	if Pos('일요일', cxGrid_OrderDayList.DataController.Values[iRow, iStCd]) > 0 then
		AStyle := Frm_Main.cxStyleSunDay;    //$00EBEAFD    
end;

procedure TFrm_STT.cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iTCall_D <> 0 then
		AText := FormatFloat('#,##0', iTCall_D);
end;

procedure TFrm_STT.cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iFCall_D <> 0 then
		AText := FormatFloat('#,##0', iFCall_D);
end;

procedure TFrm_STT.cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCCall_D <> 0 then
		AText := FormatFloat('#,##0', iCCall_D);
end;

procedure TFrm_STT.cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCCall_D <> 0 then
		AText := FloatToStr(roundto((iCCall_D / iTCall_D * 100),-1)) + '%';
end;

procedure TFrm_STT.cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := '합      계';
end;

procedure TFrm_STT.cxGrid_OrderTimeListStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
	iRow, iStCd : Integer;
begin
	iRow := cxGrid_OrderTimeList.DataController.GetRowInfo(ARecord.Index).RecordIndex;

	AStyle := Frm_Main.cxStyle1;
	iStCd := 0;
	if Pos('21:00~21:59', cxGrid_OrderTimeList.DataController.Values[iRow, iStCd]) > 0 then
		AStyle := Frm_Main.cxStyleSunday;  //$00FDF2D9
	
	if Pos('22:00~22:59', cxGrid_OrderTimeList.DataController.Values[iRow, iStCd]) > 0 then
		AStyle := Frm_Main.cxStyleSaturday;    //$00EBEAFD    

	if Pos('23:00~23:59', cxGrid_OrderTimeList.DataController.Values[iRow, iStCd]) > 0 then
		AStyle := Frm_Main.cxStyleSaturday;  //$00FDF2D9
	
	if Pos('00:00~00:59', cxGrid_OrderTimeList.DataController.Values[iRow, iStCd]) > 0 then
		AStyle := Frm_Main.cxStyleSaturday;    //$00EBEAFD    

	if Pos('01:00~01:59', cxGrid_OrderTimeList.DataController.Values[iRow, iStCd]) > 0 then
		AStyle := Frm_Main.cxStyleSunday;  //$00FDF2D9
end;


procedure TFrm_STT.cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iTCall_T <> 0 then
		AText := FormatFloat('#,##0', iTCall_T);
end;

procedure TFrm_STT.cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iFCall_T <> 0 then
		AText := FormatFloat('#,##0', iFCall_T);
end;

procedure TFrm_STT.cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCCall_T <> 0 then
		AText := FormatFloat('#,##0', iCCall_T);
end;

procedure TFrm_STT.cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCCall_T <> 0 then
		AText := FloatToStr(roundto((iCCall_T / iTCall_T * 100),-1)) + '%';
end;

procedure TFrm_STT.cxPageControl1Change(Sender: TObject);
Var iTag : Integer;
begin
  iTag := cxPageControl1.Pages[cxPageControl1.ActivePageIndex].Tag;

	if Assigned(Frm_JON51) then
      if TCK_USER_PER.BTM_MENUSCH = '1' then Frm_JON51.Menu_Use_Mark('ADD', iTag);
end;

procedure TFrm_STT.cxRBA11_1Click(Sender: TObject);
begin
	if cxRBA11_1.Checked then
	begin
		pnl_Month.visible := False;
		pnl_Day.visible := True;
		pnl_Day.Left := 226;
		pnl_Day.Top := 34;
	end else
	begin
		if cxRBA11_2.Checked then
		begin
			pnl_Month.visible := False;
			pnl_Day.visible := True;
			pnl_Day.Left := 226;
			pnl_Day.Top := 34;
		end else
		begin
			pnl_Day.visible := False;
			pnl_Month.visible := True;
			pnl_Month.Left := 226;
			pnl_Month.Top := 34;
		end;
	end;
end;

procedure TFrm_STT.cxViewKeyColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_STT.cxViewKeyDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxViewKey, AIndex, GS_SortNoChange);
end;

procedure TFrm_STT.cxViewKeyTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if iToCnt <> 0 then
    AText := FloatToStr(roundto((iCaCnt / iToCnt * 100), -1)) + '%';
end;

procedure TFrm_STT.cxViewWorkerColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_STT.cxViewWorkerDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxViewWorker, GS_SortNoChange);
end;

procedure TFrm_STT.edtA15KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if key = vk_Return then btnSearchA15.Click;
end;

procedure TFrm_STT.edtA3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnSearchA3.Click;
end;

procedure TFrm_STT.edtA4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnSearchA4.Click;
end;

procedure TFrm_STT.edtA5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnSearchA5.Click;
end;

procedure TFrm_STT.edtWorkerSearchValueEnter(Sender: TObject);
begin
  TcxTextEdit(Sender).Clear;
end;

procedure TFrm_STT.edtWorkerSearchValueKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnSearchA2.Click;
end;

procedure TFrm_STT.MenuItemClick(Sender: TObject);
var
  StartDt, EndDt: TDate;
begin
	StartDt := -1;
	EndDt := -1;

  case TMenuItem(Sender).Tag of
    0:
      begin
        StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
        EndDt := StartDt + 1;
      end;
    1:
      begin
				StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
        EndDt := StartDt + 1;
			end;
		2:
      begin
				StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
				EndDt := StartDt + 7;
			end;
    3:
      begin
        StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
        EndDt := StartDt + 31;
      end;
    4:
      begin
        StartDt := StartOfTheMonth(Now);
        EndDt := EndOfTheMonth(Now);
      end;
  end;

  if StartDt > -1 then
  begin
		SetSearchDate(StartDt, EndDt);
  end;
end;

procedure TFrm_STT.SetSearchDate(AStart, AEnd: TDate);
begin
	case cxPageControl1.ActivePageIndex of
    0:
      begin
        cxDtStartA1.Date := AStart;
        cxDtEndA1.Date := AEnd;
      end;
    1:
      begin
        cxDtStartA2.Date := AStart;
        cxDtEndA2.Date := AEnd;
      end;
    3:
      begin
        cxDtStartA4.Date := AStart;
        cxDtEndA4.Date := AEnd;
      end;
    4:
      begin
        cxDtStartA15.Date := AStart;
        cxDtEndA15.Date := AEnd;
      end;
    5:
      begin
        cxDtStartA5.Date := AStart;
        cxDtEndA5.Date := AEnd;
      end;
    6:
      begin
        cxDtStartA6.Date := AStart;
        cxDtEndA6.Date := AEnd;
      end;
    7:
      begin
        cxDtStartA7.Date := AStart;
        cxDtEndA7.Date := AEnd;
      end;
    8:
      begin
        cxDtStartA8.Date := AStart;
        cxDtEndA8.Date := AEnd;
			end;
		9:
      begin
        cxDtStartA9.Date := AStart;
        cxDtEndA9.Date := AEnd;
      end;
    10:
      begin
			 cxDtStartA10.Date := AStart;
       cxDtEndA10.Date := AEnd;
      end;
		11:
			begin
			 cxDtStartA11.Date := AStart;
			 cxDtEndA11.Date := AEnd;
			end;
		12:
			begin
			 cxDtStartA12.Date := AStart;
			 cxDtEndA12.Date := AEnd;
			end;
		13:
			begin
			 cxDtStartA13.Date := AStart;
			 cxDtEndA13.Date := AEnd;
			end;
	end;
end;

procedure TFrm_STT.Timer1Timer(Sender: TObject);
begin
  if (not Frm_Flash.Visible) then
  begin
    Frm_Flash.Show;
    Sleep(10);
    Frm_Flash.BringToFront;
  end;
  Frm_Flash.cxPBar1.Properties.Max := -100;
  Frm_Flash.cxPBar1.Properties.Min := -100;
  Frm_Flash.cxPBar1.Properties.Marquee := True;
  Frm_Flash.cxPBar1.Properties.ShowTextStyle := cxtsText;
end;

procedure TFrm_STT.btnChartA2Click(Sender: TObject);
var
  I : Integer;
  iMCnt : integer;
	AStyle : TcxStyle;
begin
	case cbKindA21.ItemIndex of
		0:
    begin
//      if cxViewWorker.DataController.RecordCount-1 >= 10 then
//        iMCnt := 20
//      else
        iMCnt := cxViewWorker.DataController.RecordCount;
    end;
    1:
    begin
//      if cxViewWorker.DataController.RecordCount-1 >= 20 then
//        iMCnt := 40
//      else
        iMCnt := cxViewWorker.DataController.RecordCount;
    end;
    2:
    begin
//      if cxViewWorker.DataController.RecordCount-1 >= 30 then
//        iMCnt := 60
//      else
        iMCnt := cxViewWorker.DataController.RecordCount;
    end;
  end;

	case cbKindA2.ItemIndex of
		0:
		begin
			cxGridA2C1.Visible := False;
			cxGridA2C2.Visible := True;
			cxGridA2C2ChartALL.BeginUpdate();
			try
				cxGridA2C2ChartALL.DataController.RecordCount := iMCnt;
				for I := 0 to iMCnt-1 do
				begin
					if  cbA2.ItemIndex = 0  then
						cxGridA2C2ChartALL.Categories.Values[I] :=  cxViewWorker.ViewData.Records[i].Values[4]
					else
						cxGridA2C2ChartALL.Categories.Values[I] := '[' + cxViewWorker.ViewData.Records[i].Values[4]
																										 + ']' + copy(cxViewWorker.ViewData.Records[i].Values[5],6,5);
					cxGridA2C2ChartSeries1.Values[I] := cxViewWorker.ViewData.Records[i].Values[6];
					cxGridA2C2ChartSeries2.Values[I] := cxViewWorker.ViewData.Records[i].Values[7];
					cxGridA2C2ChartSeries3.Values[I] := cxViewWorker.ViewData.Records[i].Values[8];
					cxGridA2C2ChartSeries4.Values[I] := cxViewWorker.ViewData.Records[i].Values[9];
					cxGridA2C2ChartSeries5.Values[I] := cxViewWorker.ViewData.Records[i].Values[10];
					cxGridA2C2ChartSeries6.Values[I] := cxViewWorker.ViewData.Records[i].Values[11];
				end;
			finally
				cxGridA2C2ChartALL.EndUpdate();
			end;
		end;
		1,2,3,4,5,6:
		begin
			cxGridA2C1.Visible := True;
			cxGridA2C2.Visible := False;
			Application.ProcessMessages;
			cxGridA2C1ChartView1.BeginUpdate();
			try
				cxGridA2C1ChartView1.DataController.RecordCount := iMCnt;
				cxGridA2C1ChartView1Series1.DisplayText := cbKindA2.text;

        if cbKindA2.ItemIndex In [4..6] then
  				AStyle := TcxStyle(FindComponent('cxSTT_Field4'))
        else
	  			AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA2.ItemIndex)));

				cxGridA2C1ChartView1Series1.Styles.values := AStyle;

				for I := 0 to iMCnt-1 do
				begin
					if cbA2.ItemIndex = 0  then
						cxGridA2C1ChartView1.Categories.Values[I] := cxViewWorker.ViewData.Records[i].Values[4]
					else
						cxGridA2C1ChartView1.Categories.Values[I] := '[' + cxViewWorker.ViewData.Records[i].Values[4]
																											 + ']' + copy(cxViewWorker.ViewData.Records[i].Values[5],6,5);
					case cbKindA2.ItemIndex of
						1: cxGridA2C1ChartView1Series1.Values[I] := cxViewWorker.ViewData.Records[i].Values[6];
						2: cxGridA2C1ChartView1Series1.Values[I] := cxViewWorker.ViewData.Records[i].Values[7];
						3: cxGridA2C1ChartView1Series1.Values[I] := cxViewWorker.ViewData.Records[i].Values[8];
						4: cxGridA2C1ChartView1Series1.Values[I] := cxViewWorker.ViewData.Records[i].Values[9];
						5: cxGridA2C1ChartView1Series1.Values[I] := cxViewWorker.ViewData.Records[i].Values[10];
						6: cxGridA2C1ChartView1Series1.Values[I] := cxViewWorker.ViewData.Records[i].Values[11];
					end;
//					cxGridA2C1ChartView1Series2.Values[I] := cxViewWorker.ViewData.Records[i].Values[11];
				end;
			finally
        cxGridA2C1ChartView1.EndUpdate();
			end;
    end;
	end;
end;

procedure TFrm_STT.btnChartA3Click(Sender: TObject);
var
  I : Integer;
	AStyle : TcxStyle;
begin
	case cbKindA3.ItemIndex of
		0:
		begin
			cxGridA3C1.Visible := False;
			cxGridA3C2.Visible := True;
			cxGridA3C2ChartALL.BeginUpdate();
			try
				cxGridA3C2ChartALL.DataController.RecordCount := cxGridA3View1.DataController.RecordCount;;
				 for I := 0 to cxGridA3View1.DataController.RecordCount-1 do
				 begin
					 cxGridA3C2ChartALL.Categories.Values[I] := cxGridA3View1.ViewData.Records[i].Values[2];
					 cxGridA3C2ChartALLSeries1.Values[I] := cxGridA3View1.ViewData.Records[i].Values[3];
					 cxGridA3C2ChartALLSeries2.Values[I] := cxGridA3View1.ViewData.Records[i].Values[4];
					 cxGridA3C2ChartALLSeries3.Values[I] := cxGridA3View1.ViewData.Records[i].Values[5];
					 cxGridA3C2ChartALLSeries4.Values[I] := cxGridA3View1.ViewData.Records[i].Values[6];
					 cxGridA3C2ChartALLSeries5.Values[I] := cxGridA3View1.ViewData.Records[i].Values[7];
					 cxGridA3C2ChartALLSeries6.Values[I] := cxGridA3View1.ViewData.Records[i].Values[8];
					 cxGridA3C2ChartALLSeries7.Values[I] := cxGridA3View1.ViewData.Records[i].Values[9];
				 end;
			finally
				cxGridA3C2ChartALL.EndUpdate();
			end;
		end;
		1,2,3,4,5,6,7:
    begin
      cxGridA3C1.Visible := True;
      cxGridA3C2.Visible := False;
      cxGridA3C1ChartView1.BeginUpdate();
      try
				cxGridA3C1ChartView1.DataController.RecordCount := cxGridA3View1.DataController.RecordCount;
				cxGridA3C1ChartView1Series1.DisplayText := cbKindA3.text;

				AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA3.ItemIndex)));
				cxGridA3C1ChartView1Series1.Styles.values := AStyle;

				for I := 0 to cxGridA3View1.DataController.RecordCount-1 do
        begin
					cxGridA3C1ChartView1.Categories.Values[I] := cxGridA3View1.ViewData.Records[i].Values[2];

					case cbKindA3.ItemIndex of
						1 : cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.ViewData.Records[i].Values[3];
						2 : cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.ViewData.Records[i].Values[4];
						3 : cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.ViewData.Records[i].Values[5];
						4 : cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.ViewData.Records[i].Values[6];
						5 : cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.ViewData.Records[i].Values[7];
						6 : cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.ViewData.Records[i].Values[8];
						7 : cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.ViewData.Records[i].Values[9];
          end;
        end;
			finally
        cxGridA3C1ChartView1.EndUpdate();
      end;
    end;
	end;
end;

procedure TFrm_STT.btnChartA4Click(Sender: TObject);
var
	I, J: Integer;
begin
	case cbKindA4.ItemIndex of
		0:
		begin
			cxGridA4C1.Visible := False;
			cxGridA4C2.Visible := True;
			cxGridA4C2ChartALL.BeginUpdate();
			try
				cxGridA4C2ChartALL.DataController.RecordCount := cxGridA4View1.DataController.RecordCount DIV 3;
				i := 0;
				j := 0;
				while i <= cxGridA4View1.DataController.RecordCount-1 do
				begin
					cxGridA4C2ChartALL.Categories.Values[J] := cxGridA4View1.DataController.Values[i, 2];
					cxGridA4C2ChartALLSeries1.Values[J] := cxGridA4View1.DataController.Values[i, 4];
					cxGridA4C2ChartALLSeries2.Values[J] := cxGridA4View1.DataController.Values[i, 5];
					cxGridA4C2ChartALLSeries3.Values[J] := cxGridA4View1.DataController.Values[i, 6];
					cxGridA4C2ChartALLSeries4.Values[J] := cxGridA4View1.DataController.Values[i+1, 4];
					cxGridA4C2ChartALLSeries5.Values[J] := cxGridA4View1.DataController.Values[i+1, 5];
					cxGridA4C2ChartALLSeries6.Values[J] := cxGridA4View1.DataController.Values[i+1, 6];
					cxGridA4C2ChartALLSeries7.Values[J] := cxGridA4View1.DataController.Values[i+2, 4];
					cxGridA4C2ChartALLSeries8.Values[J] := cxGridA4View1.DataController.Values[i+2, 5];
					cxGridA4C2ChartALLSeries9.Values[J] := cxGridA4View1.DataController.Values[i+2, 6];
					i := i + 3;
					inc(J);
				end;
			finally
				cxGridA4C2ChartALL.EndUpdate();
			end;
		end;
		1,2,3:
    begin
			cxGridA4C1.Visible := True;
			cxGridA4C2.Visible := False;
			cxGridA4C1ChartView1.BeginUpdate();
			try
				cxGridA4C1ChartView1.DataController.RecordCount := cxGridA4View1.DataController.RecordCount DIV 3;

				i := cbKindA4.ItemIndex - 1;
				j := 0;
				while i <= cxGridA4View1.DataController.RecordCount-1 do
				begin
					cxGridA4C1ChartView1.Categories.Values[J] := cxGridA4View1.DataController.Values[i, 2];
					cxGridA4C1ChartView1Series1.Values[J] := cxGridA4View1.DataController.Values[i, 4];
					cxGridA4C1ChartView1Series2.Values[J] := cxGridA4View1.DataController.Values[i, 5];
					cxGridA4C1ChartView1Series3.Values[J] := cxGridA4View1.DataController.Values[i, 6];
					i := i + 3;
					inc(J);
				end;
			finally
				cxGridA4C1ChartView1.EndUpdate();
      end;
    end;
	end;
end;

procedure TFrm_STT.btnChartA5Click(Sender: TObject);
var
	I, J, iCol1, iCol2: Integer;
begin
	case cbKindA5.ItemIndex of
		0:
		begin
			cxGridA5C1.Visible := False;
			cxGridA5C2.Visible := True;
			cxGridA5C2ChartALL.BeginUpdate();
			try
				cxGridA5C2ChartALL.DataController.RecordCount := (cxGridA5View1.DataController.RecordCount DIV 3)-1;
				i := 0;
				j := 0;
				while i <= cxGridA5View1.DataController.RecordCount-1 do
				begin
					if cxGridA5View1.DataController.Values[i, 2] = '[합계]' then break;
					cxGridA5C2ChartALL.Categories.Values[J] := cxGridA5View1.DataController.Values[i, 2];
					if cbKindA51.itemindex = 0 then
					begin
						cxGridA5C2ChartALLSeries1.Values[J] := cxGridA5View1.DataController.Values[i  , 11] 
																								 + cxGridA5View1.DataController.Values[i  , 12];
						cxGridA5C2ChartALLSeries2.Values[J] := cxGridA5View1.DataController.Values[i+1, 11] 
																								 + cxGridA5View1.DataController.Values[i+1, 12];
						cxGridA5C2ChartALLSeries3.Values[J] := cxGridA5View1.DataController.Values[i+2,  4];
																							 
						cxGridA5C2ChartALLSeries4.Values[J] := cxGridA5View1.DataController.Values[i  , 13]
																								 + cxGridA5View1.DataController.Values[i  , 14];
						cxGridA5C2ChartALLSeries5.Values[J] := cxGridA5View1.DataController.Values[i+1, 13]
																								 + cxGridA5View1.DataController.Values[i+1, 14];
						cxGridA5C2ChartALLSeries6.Values[J] := cxGridA5View1.DataController.Values[i+2,  5];
																							 
						cxGridA5C2ChartALLSeries7.Values[J] := cxGridA5View1.DataController.Values[i  , 15]
																								 + cxGridA5View1.DataController.Values[i  , 16];
						cxGridA5C2ChartALLSeries8.Values[J] := cxGridA5View1.DataController.Values[i+1, 15]
																								 + cxGridA5View1.DataController.Values[i+1, 16];
						cxGridA5C2ChartALLSeries9.Values[J] := cxGridA5View1.DataController.Values[i+2,  6];
																							 
						cxGridA5C2ChartALLSeries10.Values[J] := cxGridA5View1.DataController.Values[i  , 17]
																									+ cxGridA5View1.DataController.Values[i  , 18];
						cxGridA5C2ChartALLSeries11.Values[J] := cxGridA5View1.DataController.Values[i+1, 17]
																									+ cxGridA5View1.DataController.Values[i+1, 18];
						cxGridA5C2ChartALLSeries12.Values[J] := cxGridA5View1.DataController.Values[i+2,  7];
																							 
						cxGridA5C2ChartALLSeries13.Values[J] := cxGridA5View1.DataController.Values[i  , 19]
																									+ cxGridA5View1.DataController.Values[i  , 20];
						cxGridA5C2ChartALLSeries14.Values[J] := cxGridA5View1.DataController.Values[i+1, 19]
																									+ cxGridA5View1.DataController.Values[i+1, 20];
						cxGridA5C2ChartALLSeries15.Values[J] := cxGridA5View1.DataController.Values[i+2,  8];

						cxGridA5C2ChartALLSeries16.Values[J] := cxGridA5View1.DataController.Values[i  , 21]
																									+ cxGridA5View1.DataController.Values[i  , 22];
						cxGridA5C2ChartALLSeries17.Values[J] := cxGridA5View1.DataController.Values[i+1, 21]
																									+ cxGridA5View1.DataController.Values[i+1, 22];
						cxGridA5C2ChartALLSeries18.Values[J] := cxGridA5View1.DataController.Values[i+2,  9];
					end	else
					begin
						cxGridA5C2ChartALLSeries1.Values[J] := cxGridA5View1.DataController.Values[i  , 12];
						cxGridA5C2ChartALLSeries2.Values[J] := cxGridA5View1.DataController.Values[i+1, 12];
						cxGridA5C2ChartALLSeries3.Values[J] := cxGridA5View1.DataController.Values[i+2,  4];
																							 
						cxGridA5C2ChartALLSeries4.Values[J] := cxGridA5View1.DataController.Values[i  , 14];
						cxGridA5C2ChartALLSeries5.Values[J] := cxGridA5View1.DataController.Values[i+1, 14];
						cxGridA5C2ChartALLSeries6.Values[J] := cxGridA5View1.DataController.Values[i+2,  5];
																							 
						cxGridA5C2ChartALLSeries7.Values[J] := cxGridA5View1.DataController.Values[i  , 16];
						cxGridA5C2ChartALLSeries8.Values[J] := cxGridA5View1.DataController.Values[i+1, 16];
						cxGridA5C2ChartALLSeries9.Values[J] := cxGridA5View1.DataController.Values[i+2,  6];
																							 
						cxGridA5C2ChartALLSeries10.Values[J] := cxGridA5View1.DataController.Values[i  , 18];
						cxGridA5C2ChartALLSeries11.Values[J] := cxGridA5View1.DataController.Values[i+1, 18];
						cxGridA5C2ChartALLSeries12.Values[J] := cxGridA5View1.DataController.Values[i+2,  7];
																							 
						cxGridA5C2ChartALLSeries13.Values[J] := cxGridA5View1.DataController.Values[i  , 20];
						cxGridA5C2ChartALLSeries14.Values[J] := cxGridA5View1.DataController.Values[i+1, 20];
						cxGridA5C2ChartALLSeries15.Values[J] := cxGridA5View1.DataController.Values[i+2,  8];

						cxGridA5C2ChartALLSeries16.Values[J] := cxGridA5View1.DataController.Values[i  , 22];
						cxGridA5C2ChartALLSeries17.Values[J] := cxGridA5View1.DataController.Values[i+1, 22];
						cxGridA5C2ChartALLSeries18.Values[J] := cxGridA5View1.DataController.Values[i+2,  9];
					end;
					cxGridA5C2ChartALLSeries19.Values[J] := cxGridA5View1.DataController.Values[i  , 10];
					cxGridA5C2ChartALLSeries20.Values[J] := cxGridA5View1.DataController.Values[i+1, 10];
					cxGridA5C2ChartALLSeries21.Values[J] := cxGridA5View1.DataController.Values[i+2, 10];

					i := i + 3;
					inc(J);
				end;
			finally
				cxGridA5C2ChartALL.EndUpdate();
			end;
		end;
		1..7:
    begin
			cxGridA5C1.Visible := True;
			cxGridA5C2.Visible := False;
			cxGridA5C1ChartView1.BeginUpdate();
			try
				cxGridA5C1ChartView1.DataController.RecordCount := (cxGridA5View1.DataController.RecordCount DIV 3)-1;
				case cbKindA5.ItemIndex of
					1 : 
					begin	
						iCol1 := 11; iCol2 := 12;
					end;
					2 : 
					begin	
						iCol1 := 13; iCol2 := 14;
					end;
					3 : 
					begin	
						iCol1 := 15; iCol2 := 16;
					end;
					4 : 
					begin	
						iCol1 := 17; iCol2 := 18;
					end;
					5 : 
					begin	
						iCol1 := 19; iCol2 := 20;
					end;
					6 : 
					begin	
						iCol1 := 21; iCol2 := 22;
					end;
					7 : 
					begin
						iCol1 := 10; iCol2 := 10;
					end;
				end;
				i := 0;//cbKindA5.ItemIndex - 1;
				j := 0;
				while i <= cxGridA5View1.DataController.RecordCount-1 do
				begin
					if cxGridA5View1.DataController.Values[i, 2] = '[합계]' then break;
					cxGridA5C1ChartView1.Categories.Values[J] := cxGridA5View1.DataController.Values[i, 2];
					if cbKindA51.itemindex = 0 then
					begin
						if cbKindA5.itemindex = 7 then
						begin
							cxGridA5C1ChartView1Series1.Values[J] := cxGridA5View1.DataController.Values[i  , iCol1];
							cxGridA5C1ChartView1Series2.Values[J] := cxGridA5View1.DataController.Values[i+1, iCol1];
							cxGridA5C1ChartView1Series3.Values[J] := cxGridA5View1.DataController.Values[i+2, cbKindA5.ItemIndex + 3];
						end else
						begin
							cxGridA5C1ChartView1Series1.Values[J] := cxGridA5View1.DataController.Values[i  , iCol1] 
																										 + cxGridA5View1.DataController.Values[i  , iCol2];
							cxGridA5C1ChartView1Series2.Values[J] := cxGridA5View1.DataController.Values[i+1, iCol1] 
																										 + cxGridA5View1.DataController.Values[i+1, iCol2];
							cxGridA5C1ChartView1Series3.Values[J] := cxGridA5View1.DataController.Values[i+2, cbKindA5.ItemIndex + 3];
						end;
					end else
					begin
						if cbKindA5.itemindex = 7 then
						begin
							cxGridA5C1ChartView1Series1.Values[J] := cxGridA5View1.DataController.Values[i  , iCol1];
							cxGridA5C1ChartView1Series2.Values[J] := cxGridA5View1.DataController.Values[i+1, iCol1];
							cxGridA5C1ChartView1Series3.Values[J] := cxGridA5View1.DataController.Values[i+2, iCol1];
						end
						else
						begin
							cxGridA5C1ChartView1Series1.Values[J] := cxGridA5View1.DataController.Values[i  , iCol2];
							cxGridA5C1ChartView1Series2.Values[J] := cxGridA5View1.DataController.Values[i+1, iCol2];
							cxGridA5C1ChartView1Series3.Values[J] := cxGridA5View1.DataController.Values[i+2, iCol2];
						end;
					end;
					i := i + 3;
					inc(J);
				end;
			finally
				cxGridA5C1ChartView1.EndUpdate();
      end;
    end;
	end;
end;

procedure TFrm_STT.btnChartA6Click(Sender: TObject);
var
  I : Integer;
	AStyle : TcxStyle;
begin
	case cbKindA6.ItemIndex of
		0:
		begin
			cxGridA6C1.Visible := False;
			cxGridA6C2.Visible := True;
			cxGridA6C2ChartALL.BeginUpdate();
			try
				cxGridA6C2ChartALL.DataController.RecordCount := cxcxGridA6View1.DataController.RecordCount;;
				for I := 0 to cxcxGridA6View1.DataController.RecordCount-1 do
				begin
				 cxGridA6C2ChartALL.Categories.Values[I] := cxcxGridA6View1.ViewData.Records[i].Values[2];
				 cxGridA6C2ChartALLSeries1.Values[I] := cxcxGridA6View1.ViewData.Records[i].Values[3];
				 cxGridA6C2ChartALLSeries2.Values[I] := cxcxGridA6View1.ViewData.Records[i].Values[4];
				 cxGridA6C2ChartALLSeries3.Values[I] := cxcxGridA6View1.ViewData.Records[i].Values[5];
				 cxGridA6C2ChartALLSeries4.Values[I] := cxcxGridA6View1.ViewData.Records[i].Values[6];
				 cxGridA6C2ChartALLSeries5.Values[I] := cxcxGridA6View1.ViewData.Records[i].Values[7];
				end;
			finally
				cxGridA6C2ChartALL.EndUpdate();
			end;
		end;
		1,2,3,4,5:
		begin
			cxGridA6C1.Visible := True;
			cxGridA6C2.Visible := False;
			cxGridA6C1ChartView1.BeginUpdate();
			try
				cxGridA6C1ChartView1.DataController.RecordCount := cxcxGridA6View1.DataController.RecordCount;
				cxGridA6C1ChartView1Series1.DisplayText := cbKindA6.text;

				AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA6.ItemIndex)));
				cxGridA6C1ChartView1Series1.Styles.values := AStyle;

				for I := 0 to cxcxGridA6View1.DataController.RecordCount-1 do
				begin
					cxGridA6C1ChartView1.Categories.Values[I] := cxcxGridA6View1.ViewData.Records[i].Values[2];
					case cbKindA6.ItemIndex of
						1 : cxGridA6C1ChartView1Series1.Values[I] := cxcxGridA6View1.ViewData.Records[i].Values[3];
						2 : cxGridA6C1ChartView1Series1.Values[I] := cxcxGridA6View1.ViewData.Records[i].Values[4];
						3 : cxGridA6C1ChartView1Series1.Values[I] := cxcxGridA6View1.ViewData.Records[i].Values[5];
						4 : cxGridA6C1ChartView1Series1.Values[I] := cxcxGridA6View1.ViewData.Records[i].Values[6];
						5 : cxGridA6C1ChartView1Series1.Values[I] := cxcxGridA6View1.ViewData.Records[i].Values[7];
					end;
				end;
			finally
				cxGridA6C1ChartView1.EndUpdate();
			end;
		end;
	end;
end;

procedure TFrm_STT.btnChartA7Click(Sender: TObject);
var
	I : Integer;
	AStyle : TcxStyle;
begin
	case cbKindA7.ItemIndex of
		0:
		begin
			cxGridA7C1.Visible := False;
			cxGridA7C2.Visible := True;
			cxGridA7C2ChartALL.BeginUpdate();
			try
				cxGridA7C2ChartALL.DataController.RecordCount := cxGrid_NewCust.DataController.RecordCount;
				 for I := 0 to cxGrid_NewCust.DataController.RecordCount-1 do
				 begin
					 cxGridA7C2ChartALL.Categories.Values[I] := copy(cxGrid_NewCust.ViewData.Records[i].Values[0], 6, 8);
					 cxGridA7C2ChartALLSeries1.Values[I] := cxGrid_NewCust.ViewData.Records[i].Values[1];
					 cxGridA7C2ChartALLSeries2.Values[I] := cxGrid_NewCust.ViewData.Records[i].Values[2];

					 cxGridA7C2ChartALLSeries3.Values[I] := StringReplace(cxGrid_NewCust.ViewData.Records[i].Values[3], '%', '',[rfReplaceAll]);
				 end;
			finally
				cxGridA7C2ChartALL.EndUpdate();
			end;
		end;
		1,2,3:
		begin
			cxGridA7C1.Visible := True;
			cxGridA7C2.Visible := False;
			cxGridA7C1ChartView1.BeginUpdate();
			try
				cxGridA7C1ChartView1.DataController.RecordCount := cxGrid_NewCust.DataController.RecordCount;
				cxGridA7C1ChartView1Series1.DisplayText := cbKindA7.text;

				AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA7.ItemIndex)));
				cxGridA7C1ChartView1Series1.Styles.values := AStyle;
				for I := 0 to cxGrid_NewCust.DataController.RecordCount-1 do
				begin
					cxGridA7C1ChartView1.Categories.Values[I] := copy(cxGrid_NewCust.ViewData.Records[i].Values[0], 6, 8);
					case cbKindA7.ItemIndex of
						1 : cxGridA7C1ChartView1Series1.Values[I] := cxGrid_NewCust.ViewData.Records[i].Values[1];
						2 : cxGridA7C1ChartView1Series1.Values[I] := cxGrid_NewCust.ViewData.Records[i].Values[2];
						3 : cxGridA7C1ChartView1Series1.Values[I] := StringReplace(cxGrid_NewCust.ViewData.Records[i].Values[3], '%', '',[rfReplaceAll]);
					end;
				end;
			finally
				cxGridA7C1ChartView1.EndUpdate();
			end;
		end;
	end;
end;

procedure TFrm_STT.btnChartA8Click(Sender: TObject);
var
	I : Integer;
	AStyle : TcxStyle;
begin
	case cbKindA8.ItemIndex of
		0:
		begin
			cxGridA8C1.Visible := False;
			cxGridA8C2.Visible := True;
			cxGridA8C2ChartALL.BeginUpdate();
			try
				cxGridA8C2ChartALL.DataController.RecordCount := cxGrid_OrderTimeList.DataController.RecordCount;;
				 for I := 0 to cxGrid_OrderTimeList.DataController.RecordCount-1 do
				 begin
					 cxGridA8C2ChartALL.Categories.Values[I] := cxGrid_OrderTimeList.ViewData.Records[i].Values[0];
					 cxGridA8C2ChartSeries1.Values[I] := cxGrid_OrderTimeList.ViewData.Records[i].Values[1];
					 cxGridA8C2ChartSeries2.Values[I] := cxGrid_OrderTimeList.ViewData.Records[i].Values[2];
					 cxGridA8C2ChartSeries3.Values[I] := cxGrid_OrderTimeList.ViewData.Records[i].Values[3];
					 cxGridA8C2ChartSeries4.Values[I] := StringReplace(cxGrid_OrderTimeList.ViewData.Records[i].Values[4], '%', '',[rfReplaceAll]);
				 end;
			finally
				cxGridA8C2ChartALL.EndUpdate();
			end;
		end;
		1,2,3,4:
		begin
      cxGridA8C1.Visible := True;
      cxGridA8C2.Visible := False;
      cxGridA8C1ChartView1.BeginUpdate();
      try
				cxGridA8C1ChartView1.DataController.RecordCount := cxGrid_OrderTimeList.DataController.RecordCount;
				cxGridA8C1ChartView1Series1.DisplayText := cbKindA8.text;

				AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA8.ItemIndex)));
				cxGridA8C1ChartView1Series1.Styles.values := AStyle;

				for I := 0 to cxGrid_OrderTimeList.DataController.RecordCount-1 do
				begin
					cxGridA8C1ChartView1.Categories.Values[I] := cxGrid_OrderTimeList.ViewData.Records[i].Values[0];

					case cbKindA8.ItemIndex of
						1 : cxGridA8C1ChartView1Series1.Values[I] := cxGrid_OrderTimeList.ViewData.Records[i].Values[1];
						2 : cxGridA8C1ChartView1Series1.Values[I] := cxGrid_OrderTimeList.ViewData.Records[i].Values[2];
						3 : cxGridA8C1ChartView1Series1.Values[I] := cxGrid_OrderTimeList.ViewData.Records[i].Values[3];
						4 : cxGridA8C1ChartView1Series1.Values[I] := StringReplace(cxGrid_OrderTimeList.ViewData.Records[i].Values[4], '%', '',[rfReplaceAll]);
					end;
				end;
      finally
        cxGridA8C1ChartView1.EndUpdate();
      end;
    end;
	end;
end;

procedure TFrm_STT.btnChartA9Click(Sender: TObject);
var
  I : Integer;
	AStyle : TcxStyle;
begin
	case cbKindA9.ItemIndex of
		0:
		begin
			cxGridA9C1.Visible := False;
			cxGridA9C2.Visible := True;
			cxGridA9C2ChartALL.BeginUpdate();
			try
				cxGridA9C2ChartALL.DataController.RecordCount := cxGrid_OrderDayList.DataController.RecordCount;;
				 for I := 0 to cxGrid_OrderDayList.DataController.RecordCount-1 do
				 begin
					 cxGridA9C2ChartALL.Categories.Values[I] := Copy(cxGrid_OrderDayList.ViewData.Records[i].Values[0],6,5)
																							+ '(' + Copy(cxGrid_OrderDayList.ViewData.Records[i].Values[1],1,1) + ')';
					 cxGridA9C2ChartSeries1.Values[I] := cxGrid_OrderDayList.ViewData.Records[i].Values[2];
					 cxGridA9C2ChartSeries2.Values[I] := cxGrid_OrderDayList.ViewData.Records[i].Values[3];
					 cxGridA9C2ChartSeries3.Values[I] := cxGrid_OrderDayList.ViewData.Records[i].Values[4];
					 cxGridA9C2ChartSeries4.Values[I] := StringReplace(cxGrid_OrderDayList.ViewData.Records[i].Values[5], '%', '',[rfReplaceAll]);
				 end;
			finally
				cxGridA9C2ChartALL.EndUpdate();
			end;
		end;
		1,2,3,4:
		begin
			cxGridA9C1.Visible := True;
			cxGridA9C2.Visible := False;
			cxGridA9C1ChartView1.BeginUpdate();
			try
				cxGridA9C1ChartView1.DataController.RecordCount := cxGrid_OrderDayList.DataController.RecordCount;
				cxGridA1C1ChartView1Series1.DisplayText := cbKindA9.text;

				AStyle := TcxStyle(FindComponent('cxSTT_Field' + IntToStr(cbKindA9.ItemIndex)));
				cxGridA9C1ChartView1Series1.Styles.values := AStyle;

				for I := 0 to cxGrid_OrderDayList.DataController.RecordCount-1 do
				begin
					cxGridA9C1ChartView1.Categories.Values[I] := Copy(cxGrid_OrderDayList.ViewData.Records[i].Values[0],6,5)
																							 + '(' + Copy(cxGrid_OrderDayList.ViewData.Records[i].Values[1],1,1) + ')';

					case cbKindA9.ItemIndex of
						1 : cxGridA9C1ChartView1Series1.Values[I] := cxGrid_OrderDayList.ViewData.Records[i].Values[2];
						2 : cxGridA9C1ChartView1Series1.Values[I] := cxGrid_OrderDayList.ViewData.Records[i].Values[3];
						3 : cxGridA9C1ChartView1Series1.Values[I] := cxGrid_OrderDayList.ViewData.Records[i].Values[4];
						4 : cxGridA9C1ChartView1Series1.Values[I] := StringReplace(cxGrid_OrderDayList.ViewData.Records[i].Values[5], '%', '',[rfReplaceAll]);
					end;
        end;
      finally
        cxGridA9C1ChartView1.EndUpdate();
      end;
    end;
	end;
end;

procedure TFrm_STT.btnExcelA10Click(Sender: TObject);
begin
  if cxGrid_NewOrderDayList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-신규콜수통계.xls';
  Frm_Main.sgRpExcel := Format('통계>신규콜수통계]%s건', [GetMoneyStr(cxGrid_NewOrderDayList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA10;
  Frm_Main.cxGridDBViewExcel := cxGrid_NewOrderDayList;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.btnExcelA11Click(Sender: TObject);
begin
  if cxGrid_CancelList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-취소콜통계.xls';
  Frm_Main.sgRpExcel := Format('통계>취소콜통계]%s건', [GetMoneyStr(cxGrid_CancelList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA11;
  Frm_Main.cxGridDBViewExcel := cxGrid_CancelList;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.btnExcelA12Click(Sender: TObject);
begin
	if cxGridBandedTableView12.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSI);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	Frm_Main.sgExcel := '통계-시간대별 출/도지역 통계.xls';
	Frm_Main.sgRpExcel := Format('통계>시간대별 출/도지역 통계]%s건', [GetMoneyStr(cxGridBandedTableView12.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGridA12;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.btnExcelA13Click(Sender: TObject);
begin
	if cxGridDBTableView13.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSI);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	Frm_Main.sgExcel := '통계-오더요금별통계.xls';
	Frm_Main.sgRpExcel := Format('통계>오더요금별통계]%s건', [GetMoneyStr(cxGridDBTableView13.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGridA13;
	Frm_Main.cxGridDBViewExcel := cxGridDBTableView13;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.btnExcelA15Click(Sender: TObject);
begin
  if cxGridA15View1.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-지사별콜정산통계.xls';
  Frm_Main.sgRpExcel := Format('통계>지사별콜정산통계]%s건', [GetMoneyStr(cxGridA15View1.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA15;
  Frm_Main.cxGridDBViewExcel := cxGridA15View1;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.btnExcelA1Click(Sender: TObject);
begin
  if cxViewKey.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-대표번호별통계.xls';
	Frm_Main.sgRpExcel := Format('통계>대표번호별통계]%s건', [GetMoneyStr(cxViewKey.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA1;
  Frm_Main.cxGridDBViewExcel := cxViewKey;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.btnExcelA2Click(Sender: TObject);
begin
  if cxViewWorker.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-기사별통계.xls';
  Frm_Main.sgRpExcel := Format('통계>기사별통계]%s건', [GetMoneyStr(cxViewWorker.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA2;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.btnExcelA3Click(Sender: TObject);
begin
  if cxGridA3View1.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-고객별통계.xls';
  Frm_Main.sgRpExcel := Format('통계>고객별통계]%s건', [GetMoneyStr(cxGridA3View1.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA3;
  Frm_Main.cxGridDBViewExcel := cxGridA3View1;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.btnExcelA4Click(Sender: TObject);
begin
  if cxGridA4View1.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-자사통계.xls';
  Frm_Main.sgRpExcel := Format('통계>자사통계]%s건', [GetMoneyStr(cxGridA4View1.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA4;
  Frm_Main.cxGridDBViewExcel := cxGridA4View1;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.btnExcelA5Click(Sender: TObject);
begin
  if cxGridA5View1.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-공유콜통계.xls';
  Frm_Main.sgRpExcel := Format('통계>공유콜통계]%s건', [GetMoneyStr(cxGridA5View1.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA5;
  Frm_Main.cxGridDBViewExcel := cxGridA5View1;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.btnExcelA6Click(Sender: TObject);
begin
	if cxcxGridA6View1.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
		Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-지역콜통계.xls';
  Frm_Main.sgRpExcel := Format('통계>지역콜통계]%s건', [GetMoneyStr(cxcxGridA6View1.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA6;
  Frm_Main.cxGridDBViewExcel := cxcxGridA6View1;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.btnExcelA7Click(Sender: TObject);
begin
  if cxGrid_NewCust.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-신규고객통계.xls';
  Frm_Main.sgRpExcel := Format('통계>신규고객통계]%s건', [GetMoneyStr(cxGrid_NewCust.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA7;
  Frm_Main.cxGridDBViewExcel := cxGrid_NewCust;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.btnExcelA8Click(Sender: TObject);
begin
  if cxGrid_OrderTimeList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-시간대별콜수통계.xls';
  Frm_Main.sgRpExcel := Format('통계>시간대별콜수통계]%s건', [GetMoneyStr(cxGrid_OrderTimeList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA8;
  Frm_Main.cxGridDBViewExcel := cxGrid_OrderTimeList;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.btnExcelA9Click(Sender: TObject);
begin
  if cxGrid_OrderDayList.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-일별콜수통계.xls';
  Frm_Main.sgRpExcel := Format('통계>일별콜수통계]%s건', [GetMoneyStr(cxGrid_OrderDayList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA9;
  Frm_Main.cxGridDBViewExcel := cxGrid_OrderDayList;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STT.mniN1Click(Sender: TObject);
begin
  case cxPageControl1.ActivePageIndex of
   0 :	btnExcelA1.Click;
   1 :  btnExcelA2.Click;
   2 :  btnExcelA3.Click;
   3 :  btnExcelA4.Click;
   4 :  btnExcelA15.Click;
   5 :	btnExcelA5.Click;
   6 :  btnExcelA6.Click;
   7 :  btnExcelA7.Click;
   8 :  btnExcelA8.Click;
   9 :  btnExcelA9.Click;
	 10 :  btnExcelA10.Click;
   11 :  btnExcelA11.Click;
   12 :  btnExcelA12.Click;
   13 :  btnExcelA13.Click;
  end;
end;

procedure TFrm_STT.pop_dateA1Popup(Sender: TObject);
begin
	case cxPageControl1.ActivePageIndex of
		0..6 : MenuItem1.visible := False;
	else
		MenuItem1.visible := True;
	end;
end;

procedure TFrm_STT.proc_BrNameSet;
var
	sBrNo, sHdNo : string;
  StrList: TStringList;
begin
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

  if cbKeynumber01.Properties.Items.Count > 1 then
    cbKeynumber01.Properties.Items.Insert(0, '전체');

  cbKeynumber11.Properties.Items := cbKeynumber01.Properties.Items;

  cbKeynumber01.ItemIndex := 0;
	cbKeynumber11.ItemIndex := 0;

  proc_Init_BRS;

  lblSosokNameA1.Caption := GetSosokInfo;
  lblSosokNameA2.Caption := GetSosokInfo;
  lblSosokNameA3.Caption := GetSosokInfo;
	lblSosokNameA5.Caption := GetSosokInfo;
  lblSosokNameA11.Caption := GetSosokInfo;
end;

procedure TFrm_STT.RequestDataWorker;
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i, iSortIndex, idx : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	strHdNo, strBrNo, strWorker : string;
	iNum : Integer;
  iSumA1, iSumA2, iSumA3, iSumA4, iSumA5, iSumA6 : Integer;
  slWorker, slSumA1, slSumA2, slSumA3, slSumA4, slSumA5, slSumA6 : TStringList;
begin
	SetDebugeWrite('TFrm_STT.RequestDataWorker');

	if fGetChk_Search_HdBrNo('기사별 통계') then Exit;

	try
		//////////////////////////////////////////////////////////////////////////////////
		//  접수 전문
		//////////////////////////////////////////////////////////////////////////////////

		//////////////////////////////////////////////////////////////////////////////////
		if cbA2.ItemIndex = 0 then  Param := '0' else
		if cbA2.ItemIndex = 1 then  Param := '1' else
		if cbA2.ItemIndex = 2 then  Param := '2';   

		Param := Param + '│' + GT_USERIF.LV;

		if (cbA2.ItemIndex = 0) or (cbA2.ItemIndex = 1) then  
		begin
			Param := Param + '│' + formatdatetime('yyyymmdd', cxDtStartA2.Date) + '│' + formatdatetime('yyyymmdd', cxDtEndA2.Date);
			Param := Param + '│' + '│';
		end	else
		begin
			Param := Param + '│' + '│';
			Param := Param + '│' + cxSYYA2.Text + LPAD(cxSMMA2.Text, '0', 2) + '│' + cxEYYA2.Text + LPAD(cxEMMA2.Text, '0', 2);
		end;

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			strHdNo := GT_SEL_BRNO.HDNO
		else
			strHdNo := GT_USERIF.HD;
		Param := Param + '│' + strHdNo;

		if (GT_USERIF.lv = '60') then
		begin
			if GT_SEL_BRNO.GUBUN = '1' then
				strBrNo := GT_SEL_BRNO.BrNo
			else
				strBrNo := '';
		end
		else
			strBrNo := GT_USERIF.BR;
			
		Param := Param + '│' + strBrNo;

		Param := Param + '│' + IntToStr(cbbWorkerSearchType.ItemIndex);
		Param := Param + '│' + Trim(edtWorkerSearchValue.Text);

		if (GT_USERIF.lv = '10') then Param := Param + '│' + GT_USERIF.BR else Param := Param + '│' ;
		
		Param := Param + '│' + '';//AOrderBy;  //정렬순서

		Screen.Cursor := crHourGlass;

		Timer1.Enabled := True;
		Frm_Main.Enabled := False;
		if not RequestBase(GetSel06('GET_LIST_WORKER_STAT', 'STAT_A01.GET_LIST_WORKER_STAT', '1000', Param), XmlData, ErrCode, ErrMsg, 600000) then
		begin
			Frm_Flash.hide;
			Timer1.Enabled := False;
			Application.ProcessMessages;
			GMessagebox(Format('기사별 통계 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Frm_Main.Enabled := True;
			Screen.Cursor := crDefault;
			Exit;
		end;
	
		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then
			begin
				Frm_Flash.hide;
				Frm_Main.Enabled := True;
				Timer1.Enabled := False;
				Screen.Cursor := crDefault;
				Exit;
			end;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxViewWorker.DataController.SetRecordCount(0);
					cxViewWorker.BeginUpdate;
					ls_Rcrd := TStringlist.Create;
          slWorker := TStringlist.Create;
          slSumA1 := TStringlist.Create;
          slSumA2 := TStringlist.Create;
          slSumA3 := TStringlist.Create;
          slSumA4 := TStringlist.Create;
          slSumA5 := TStringlist.Create;
          slSumA6 := TStringlist.Create;
					try
						iNum := 0;
            iSumA1 := 0;            iSumA2 := 0;            iSumA3 := 0;            iSumA4 := 0;            iSumA5 := 0;            iSumA6 := 0;
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if not Check_ID(GT_USERIF.ID, ls_Rcrd[2]) then
							begin
								ls_Rcrd.Insert(0, IntToStr(iNum + 1));

                if ( strWorker <> '' ) And ( strWorker <> ls_Rcrd[4] ) And ( cbA2.ItemIndex <> 0 ) then
                begin
                  slWorker.Add(strWorker);
                  slSumA1.Add(IntToStr(iSumA1));
                  slSumA2.Add(IntToStr(iSumA2));
                  slSumA3.Add(IntToStr(iSumA3));
                  slSumA4.Add(IntToStr(iSumA4));
                  slSumA5.Add(IntToStr(iSumA5));
                  slSumA6.Add(IntToStr(iSumA6));
                  iSumA1 := 0;
                  iSumA2 := 0;
                  iSumA3 := 0;
                  iSumA4 := 0;
                  iSumA5 := 0;
                  iSumA6 := 0;
                end;

								cxViewWorker.DataController.AppendRecord;
								cxViewWorker.DataController.SetValue(iNum, 0, ls_Rcrd[0]);
								cxViewWorker.DataController.SetValue(iNum, 1, ls_Rcrd[1]);
								cxViewWorker.DataController.SetValue(iNum, 2, Format('%s(%s)', [ls_Rcrd[2], ls_Rcrd[3]]));
								cxViewWorker.DataController.SetValue(iNum, 3, ls_Rcrd[4]);
								cxViewWorker.DataController.SetValue(iNum, 4, ls_Rcrd[5]);
								cxViewWorker.DataController.SetValue(iNum, 5, ls_Rcrd[11]); //일자
								cxViewWorker.DataController.SetValue(iNum, 6, ls_Rcrd[6]);
								cxViewWorker.DataController.SetValue(iNum, 7, ls_Rcrd[7]);
								cxViewWorker.DataController.SetValue(iNum, 8, ls_Rcrd[8]);
								cxViewWorker.DataController.SetValue(iNum, 9, ls_Rcrd[9]);
                if ls_Rcrd.Count > 12 then cxViewWorker.DataController.SetValue(iNum, 10, ls_Rcrd[12])
                                      else cxViewWorker.DataController.SetValue(iNum, 10, 0);
                if ls_Rcrd.Count > 13 then cxViewWorker.DataController.SetValue(iNum, 11, ls_Rcrd[13])
                                      else cxViewWorker.DataController.SetValue(iNum, 11, 0);
								cxViewWorker.DataController.SetValue(iNum,12, ls_Rcrd[10]);

                strWorker := ls_Rcrd[4];
                iSumA1 := iSumA1 + StrToInt(ls_Rcrd[6]);
                iSumA2 := iSumA2 + StrToInt(ls_Rcrd[7]);
                iSumA3 := iSumA3 + StrToInt(ls_Rcrd[8]);
                iSumA4 := iSumA4 + StrToInt(ls_Rcrd[9]);
                if ls_Rcrd.Count > 12 then iSumA5 := iSumA5 + StrToInt(ls_Rcrd[12]);
                if ls_Rcrd.Count > 13 then iSumA6 := iSumA6 + StrToInt(ls_Rcrd[13]);

								iNum := iNum + 1;
							end;
						end;
					finally
            slWorker.Add(strWorker);
            slSumA1.Add(IntToStr(iSumA1));
            slSumA2.Add(IntToStr(iSumA2));
            slSumA3.Add(IntToStr(iSumA3));
            slSumA4.Add(IntToStr(iSumA4));
            slSumA5.Add(IntToStr(iSumA5));
            slSumA6.Add(IntToStr(iSumA6));
						ls_Rcrd.Free;
						cxViewWorker.EndUpdate;
            iSortIndex := 2;
            cxViewWorker.Columns[iSortIndex].SortOrder := soAscending;
           	gfSetIndexNo(cxViewWorker, GS_SortNoChange);

            if ( cbA2.ItemIndex <> 0 ) then
            begin
              cxViewWorker.beginUpdate;
              try
                for i := 0 to cxViewWorker.DataController.RecordCount -1 do
                begin
                  idx := slWorker.IndexOf(cxViewWorker.ViewData.Records[i].Values[3]);
                  if idx >= 0 then
                  begin
                    cxViewWorker.ViewData.Records[i].Values[13] := StrToInt(slSumA1.Strings[idx]);
                    cxViewWorker.ViewData.Records[i].Values[14] := StrToInt(slSumA2.Strings[idx]);
                    cxViewWorker.ViewData.Records[i].Values[15] := StrToInt(slSumA3.Strings[idx]);
                    cxViewWorker.ViewData.Records[i].Values[16] := StrToInt(slSumA4.Strings[idx]);
                    cxViewWorker.ViewData.Records[i].Values[17] := StrToInt(slSumA5.Strings[idx]);
                    cxViewWorker.ViewData.Records[i].Values[18] := StrToInt(slSumA6.Strings[idx]);
                  end;
                end;
              finally
                cxViewWorker.EndUpdate;
              end;
            end;

            slWorker.Free;
            slSumA1.Free;
            slSumA2.Free;
            slSumA3.Free;
            slSumA4.Free;
            slSumA5.Free;
            slSumA6.Free;
						btnChartA2.Click;
					end;
				end else
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSI);
				end;
			end;
		finally
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			xdom := Nil;
		end;
	except
		on e: Exception do
		begin
			ls_Rcrd.Free;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_STT.RequestDataCus; // 고객별통계
var
	msg: string;
	StrList, slList : TStringList;
	dt_sysdate2: string;

	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i, iSortIndex : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
	iNum : Integer;
begin
	Try
		if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
		begin
			msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
					+ #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
			GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
			Exit;
		end;

		if fGetChk_Search_HdBrNo('고객별통계') then Exit;

		dt_sysdate2 := frm_main.func_sysdate;

		if Trim(dt_sysdate2) = '' then
		begin
			GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
			Exit;
		end;

		if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
			2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
		begin
			GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
			Exit;
		end;

		if (cbbA3.itemindex=0) and (Trim(edtA3.Text) = '') then   //전체선택
		begin
			if Application.MessageBox('본사전체로 조회시에는 검색시간이 많이 소요됩니다.' + #13#10 + '그래도 조회하시겠습니까?'
			 , PChar(Application.Title), MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then Exit;
		end;

		Param := '2'; //지사명검색

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := Param + '│' + GT_SEL_BRNO.HDNO
		else
			Param := Param + '│' + GT_USERIF.HD;

		Param := Param + '│' + Param_Filtering(edtA3.text);

		if (GT_USERIF.lv='60') and (cbbA3.itemindex=0) then
			Param := Param + '│' + '%'
		else
			Param := Param + '│' + Trim(Copy(cbbA3.Text,1,5));
//		Param := Param + '│' + getSttBrCode;

		Screen.Cursor := crHourGlass;
		slList := TStringList.Create;

		Timer1.Enabled := True;
		Frm_Main.Enabled := False;

		if not RequestBase(GetSel06('GET_CUST_ENDCNT', 'STAT_CUST.GET_CUST_ENDCNT', '1000', Param), XmlData, ErrCode, ErrMsg, 600000) then
		begin
			Frm_Flash.hide;
			Timer1.Enabled := False;
			Application.ProcessMessages;
			GMessagebox(Format('고객별통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Frm_Main.Enabled := True;
			Screen.Cursor := crDefault;
			Exit;
		end;
	
		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then
			begin
				Frm_Flash.hide;
				Frm_Main.Enabled := True;
				Timer1.Enabled := False;
				Screen.Cursor := crDefault;
				Exit;
			end;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					cxGridA3View1.BeginUpdate;
					ls_Rcrd := TStringlist.Create;
					try
						iNum := 0;
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if not Check_ID(GT_USERIF.ID, ls_Rcrd[2]) then
							begin
								ls_Rcrd.Insert(0, IntToStr(iNum + 1));

								cxGridA3View1.DataController.AppendRecord;
								cxGridA3View1.DataController.SetValue(iNum, 0, ls_Rcrd[0]);
								cxGridA3View1.DataController.SetValue(iNum, 1, ls_Rcrd[3]);
								cxGridA3View1.DataController.SetValue(iNum, 2, ls_Rcrd[4]);
								cxGridA3View1.DataController.SetValue(iNum, 3, ls_Rcrd[5]);
								cxGridA3View1.DataController.SetValue(iNum, 4, ls_Rcrd[6]);
								cxGridA3View1.DataController.SetValue(iNum, 5, ls_Rcrd[7]); //일자
								cxGridA3View1.DataController.SetValue(iNum, 6, ls_Rcrd[8]);
								cxGridA3View1.DataController.SetValue(iNum, 7, ls_Rcrd[9]);
								cxGridA3View1.DataController.SetValue(iNum, 8, ls_Rcrd[10]);
								cxGridA3View1.DataController.SetValue(iNum, 9, ls_Rcrd[11]);
								iNum := iNum + 1;
							end;
						end;
					finally
						ls_Rcrd.Free;
						cxGridA3View1.EndUpdate;
            iSortIndex := cxGridA3View1.GetColumnByFieldName('소속지사').Index;
            AIndex := iSortIndex;
            cxGridA3View1.Columns[iSortIndex].SortOrder := soAscending;
            cxGridA3View1.Columns[iSortIndex].SortIndex := 0;
						btnChartA3.Click;
					end;
				end	else
				begin
					Frm_Flash.hide;
					Timer1.Enabled := False;
					Application.ProcessMessages;
					GMessagebox('검색된 내용이 없습니다', CDMSI);
				end;
			end;
		finally
			Screen.Cursor := crDefault;
			Frm_Flash.hide;
			Frm_Main.Enabled := True;
			Timer1.Enabled := False;
			xdom := Nil;
		end;
	except
		StrList.Free;
		Frm_Flash.hide;
		Frm_Main.Enabled := True;
		Timer1.Enabled := False;
		Screen.Cursor := crDefault;
	End;
end;

function TFrm_STT.getSttBrCode: string;
begin
  if GT_USERIF.LV = '60' then
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
      Result := '%'
    else
      Result := GT_SEL_BRNO.BrNo;
  end else
  begin
    Result := GT_USERIF.BR;
  end;
end;

end.


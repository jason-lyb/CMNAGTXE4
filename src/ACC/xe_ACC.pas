unit xe_ACC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, Menus,
  system.StrUtils, system.Math,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
	cxLabel, cxCheckBox, cxDropDownEdit, cxCalendar, cxGridBandedTableView, cxGridLevel, cxGridCustomTableView,
	cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxRadioGroup,
  ExtCtrls, cxTextEdit, cxButtons, cxMaskEdit, cxContainer, cxPC, DateUtils, MSXML2_TLB, cxCurrencyEdit,
	cxSpinEdit, OleCtrls, SHDocVw, Registry, cxImageComboBox, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, Gauges, ShellAPI, cxGeometry,
  ComObj, cxCheckComboBox, IniFiles, cxSplitter, cxTL, cxInplaceContainer, cxDBTL,
  cxTLData, xe_Structure, cxMemo, cxPCdxBarPopupMenu,
  cxLookAndFeels, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,
  cxTLdxBarBuiltInMenu, cxGroupBox, cxTimeEdit, GradientLabel, dxSkinsCore,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxListBox, dxDateRanges, cxCustomListBox, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark,
  dxSkinOffice2007Silver, dxScrollbarAnnotations;

type
  TFrm_ACC = class(TForm)
    pop_dateA1: TPopupMenu;
    MiYesterday: TMenuItem;
    MiOneWeek: TMenuItem;
    MiOneMonth: TMenuItem;
    MiStartMonth: TMenuItem;
    MiToday: TMenuItem;
    Panel18: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    cxLabel218: TcxLabel;
    lblSosokNameA1: TcxLabel;
    cxDtStartA1: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA1: TcxDateEdit;
    btnDateA1: TcxButton;
    cxLabel1: TcxLabel;
    cxTeStartA1: TcxTimeEdit;
    cxTeEndA1: TcxTimeEdit;
    GridA1: TcxGrid;
    GridA1View: TcxGridDBTableView;
    GridA1ViewColumn16: TcxGridDBColumn;
    GridA1ViewColumn18: TcxGridDBColumn;
    GridA1ViewColumn1: TcxGridDBColumn;
    GridA1ViewColumn2: TcxGridDBColumn;
    GridA1ViewColumn3: TcxGridDBColumn;
    GridA1ViewColumn4: TcxGridDBColumn;
    GridA1ViewColumn5: TcxGridDBColumn;
    GridA1ViewColumn6: TcxGridDBColumn;
    GridA1ViewColumn7: TcxGridDBColumn;
    GridA1ViewColumn8: TcxGridDBColumn;
    GridA1ViewColumn9: TcxGridDBColumn;
    GridA1ViewColumn10: TcxGridDBColumn;
    GridA1ViewColumn11: TcxGridDBColumn;
    GridA1ViewColumn12: TcxGridDBColumn;
    GridA1ViewColumn13: TcxGridDBColumn;
    GridA1ViewColumn14: TcxGridDBColumn;
    GridA1ViewColumn17: TcxGridDBColumn;
    GridA1ViewColumn19: TcxGridDBColumn;
    GridA1ViewColumn15: TcxGridDBColumn;
    GridA1Level: TcxGridLevel;
    cxLabel37: TcxLabel;
    btnSearchA1: TcxButton;
    btnExcelA1: TcxButton;
    btnHelpA1: TcxButton;
    pnlHelpA1: TPanel;
    cxGroupBox1: TcxGroupBox;
    BtnCloseA1: TcxButton;
    cxLabel6: TcxLabel;
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
    PopupMenuA1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    SMS1: TMenuItem;
    N10: TMenuItem;
    cxGroupBox3: TcxGroupBox;
    lblSosokNameA2: TcxLabel;
    cxDtStartA2: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxDtEndA2: TcxDateEdit;
    btnSearchA2: TcxButton;
    btnExcelA2: TcxButton;
    btnDateA2: TcxButton;
    cxTeStartA2: TcxTimeEdit;
    cxTeEndA2: TcxTimeEdit;
    cxLabel5: TcxLabel;
    GridA2: TcxGrid;
    GridA2View: TcxGridDBTableView;
    GridA2ViewColumn8: TcxGridDBColumn;
    GridA2ViewColumn9: TcxGridDBColumn;
    GridA2ViewColumn6: TcxGridDBColumn;
    GridA2ViewColumn5: TcxGridDBColumn;
    GridA2ViewColumn2: TcxGridDBColumn;
    GridA2ViewColumn3: TcxGridDBColumn;
    GridA2ViewColumn4: TcxGridDBColumn;
    GridA2ViewColumn7: TcxGridDBColumn;
    GridA2ViewColumn1: TcxGridDBColumn;
    GridA2Level: TcxGridLevel;
    Shape5: TShape;
    cxGroupBox4: TcxGroupBox;
    lblSosokNameA3: TcxLabel;
    cxDtStartA3: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxDtEndA3: TcxDateEdit;
    btnSearchA3: TcxButton;
    btnExcelA3: TcxButton;
    btnDateA3: TcxButton;
    cxTeStartA3: TcxTimeEdit;
    cxTeEndA3: TcxTimeEdit;
    cxLabel10: TcxLabel;
    GridA3: TcxGrid;
    GridA3View: TcxGridDBTableView;
    GridA3ViewColumn18: TcxGridDBColumn;
    GridA3ViewColumn1: TcxGridDBColumn;
    GridA3ViewColumn2: TcxGridDBColumn;
    GridA3ViewColumn3: TcxGridDBColumn;
    GridA3ViewColumn4: TcxGridDBColumn;
    GridA3ViewColumn5: TcxGridDBColumn;
    GridA3ViewColumn6: TcxGridDBColumn;
    GridA3ViewColumn7: TcxGridDBColumn;
    GridA3ViewColumn8: TcxGridDBColumn;
    GridA3ViewColumn9: TcxGridDBColumn;
    GridA3ViewColumn10: TcxGridDBColumn;
    GridA3ViewColumn11: TcxGridDBColumn;
    GridA3ViewColumn12: TcxGridDBColumn;
    GridA3ViewColumn20: TcxGridDBColumn;
    GridA3ViewColumn13: TcxGridDBColumn;
    GridA3ViewColumn21: TcxGridDBColumn;
    GridA3ViewColumn19: TcxGridDBColumn;
    GridA3ViewColumn14: TcxGridDBColumn;
    GridA3ViewColumn15: TcxGridDBColumn;
    GridA3ViewColumn16: TcxGridDBColumn;
    GridA3ViewColumn17: TcxGridDBColumn;
    cxColGrid4ViewColumn22: TcxGridDBColumn;
    GridA3Level: TcxGridLevel;
    Shape9: TShape;
    cxGroupBox5: TcxGroupBox;
    lblSosokNameA4: TcxLabel;
    cxDtStartA4: TcxDateEdit;
    cxLabel12: TcxLabel;
    cxDtEndA4: TcxDateEdit;
    btnSearchA4: TcxButton;
    btnExcelA4: TcxButton;
    btnDateA4: TcxButton;
    cxTeStartA4: TcxTimeEdit;
    cxTeEndA4: TcxTimeEdit;
    cxSEdtA4: TcxTextEdit;
    cxLabel14: TcxLabel;
    GridA4: TcxGrid;
    GridA4View: TcxGridDBTableView;
    GridA4ViewColumn1: TcxGridDBColumn;
    GridA4ViewColumn8: TcxGridDBColumn;
    GridA4ViewColumn2: TcxGridDBColumn;
    GridA4ViewColumn3: TcxGridDBColumn;
    GridA4ViewColumn4: TcxGridDBColumn;
    GridA4ViewColumn5: TcxGridDBColumn;
    GridA4ViewColumn6: TcxGridDBColumn;
    GridA4ViewColumn7: TcxGridDBColumn;
    GridA4Level: TcxGridLevel;
    Shape13: TShape;
    cxGroupBox6: TcxGroupBox;
    lblSosokNameA5: TcxLabel;
    cxDtStartA5: TcxDateEdit;
    cxLabel16: TcxLabel;
    cxDtEndA5: TcxDateEdit;
    btnSearchA5: TcxButton;
    btnExcelA5: TcxButton;
    btnDateA5: TcxButton;
    cxTeStartA5: TcxTimeEdit;
    cxTeEndA5: TcxTimeEdit;
    cxSEdtA5: TcxTextEdit;
    cxLabel18: TcxLabel;
    cxCb1A5: TcxComboBox;
    cxLabel19: TcxLabel;
    cxCbA5: TcxComboBox;
    GridA5: TcxGrid;
    GridA5View: TcxGridDBTableView;
    GridA5ViewColumn1: TcxGridDBColumn;
    GridA5ViewColumn10: TcxGridDBColumn;
    GridA5ViewColumn11: TcxGridDBColumn;
    GridA5ViewColumn2: TcxGridDBColumn;
    GridA5ViewColumn3: TcxGridDBColumn;
    GridA5ViewColumn4: TcxGridDBColumn;
    GridA5ViewColumn5: TcxGridDBColumn;
    GridA5ViewColumn6: TcxGridDBColumn;
    GridA5ViewColumn7: TcxGridDBColumn;
    GridA5ViewColumn8: TcxGridDBColumn;
    GridA5ViewColumn9: TcxGridDBColumn;
    GridA5Level: TcxGridLevel;
    Shape18: TShape;
    cxGroupBox7: TcxGroupBox;
    lblSosokNameA6: TcxLabel;
    btnSearchA6: TcxButton;
    btnExcelA6: TcxButton;
    cxSEYYA6: TcxSpinEdit;
    cxSEMMA6: TcxSpinEdit;
    cxCBA6: TcxComboBox;
    cxSEdtA6: TcxTextEdit;
    cxLabel22: TcxLabel;
    GridA6: TcxGrid;
    GridA6View: TcxGridDBTableView;
    GridA6ViewColumn12: TcxGridDBColumn;
    GridA6ViewColumn1: TcxGridDBColumn;
    GridA6ViewColumn2: TcxGridDBColumn;
    GridA6ViewColumn3: TcxGridDBColumn;
    GridA6ViewColumn4: TcxGridDBColumn;
    GridA6ViewColumn5: TcxGridDBColumn;
    GridA6ViewColumn6: TcxGridDBColumn;
    GridA6ViewColumn7: TcxGridDBColumn;
    GridA6ViewColumn8: TcxGridDBColumn;
    GridA6ViewColumn9: TcxGridDBColumn;
    GridA6ViewColumn10: TcxGridDBColumn;
    GridA6Level: TcxGridLevel;
    Shape22: TShape;
    cxGroupBox8: TcxGroupBox;
    lblSosokNameA7: TcxLabel;
    cxDtStartA7: TcxDateEdit;
    cxDtEndA7: TcxDateEdit;
    btnSearchA7: TcxButton;
    btnExcelA7: TcxButton;
    btnDateA7: TcxButton;
    cxLabel26: TcxLabel;
    cxCBChk1A7: TcxCheckBox;
    cxCBChk2A7: TcxCheckBox;
    cxCBChk3A7: TcxCheckBox;
    cxCBChk4A7: TcxCheckBox;
    cxCBChk5A7: TcxCheckBox;
    cxCBChk6A7: TcxCheckBox;
    cxCBChk7A7: TcxCheckBox;
    cxCBChk8A7: TcxCheckBox;
    cxCBChk9A7: TcxCheckBox;
    cxCBChk0A7: TcxCheckBox;
    cxCBChkA7: TcxCheckBox;
    btnHelpA7: TcxButton;
    cxLabel27: TcxLabel;
    GridA7: TcxGrid;
		GridA7View: TcxGridDBTableView;
    GridA7ViewColumn1: TcxGridDBColumn;
    GridA7ViewColumn8: TcxGridDBColumn;
    GridA7ViewColumn11: TcxGridDBColumn;
    GridA7ViewColumn2: TcxGridDBColumn;
    GridA7ViewColumn3: TcxGridDBColumn;
    GridA7ViewColumn4: TcxGridDBColumn;
    GridA7ViewColumn5: TcxGridDBColumn;
    GridA7ViewColumn6: TcxGridDBColumn;
    GridA7ViewColumn7: TcxGridDBColumn;
    GridA7ViewColumn9: TcxGridDBColumn;
    GridA7ViewColumn10: TcxGridDBColumn;
    GridA7ViewColumn12: TcxGridDBColumn;
    GridA7Level: TcxGridLevel;
    Shape26: TShape;
    pnlHelpA7: TPanel;
    cxGroupBox9: TcxGroupBox;
    cxLabel28: TcxLabel;
    BtnClose: TcxButton;
    cxGroupBox10: TcxGroupBox;
    chkUseCashMoveDefault: TcxCheckBox;
    cxBtnOKLA8: TcxButton;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel29: TcxLabel;
    cxEdtLMoveAmt: TcxCurrencyEdit;
    edtCashMoveDefaultBranch: TcxTextEdit;
    edtCashMoveMemo: TcxTextEdit;
    Panel1: TPanel;
    cxrbBrCash: TcxRadioButton;
    chrbSmsCash: TcxRadioButton;
    cxGpCIS: TcxGroupBox;
    cxcbCashMoveBrName1: TcxComboBox;
    cxcbCashMoveHdName1: TcxComboBox;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxLblIBrCash: TcxLabel;
    cxLblISmCash: TcxLabel;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    cxLblBrView: TcxLabel;
    cxGpCOS: TcxGroupBox;
    cxcbCashMoveBrName2: TcxComboBox;
    cxcbCashMoveHdName2: TcxComboBox;
    cxLblOBrCash: TcxLabel;
    cxLblOSmCash: TcxLabel;
    cxLblSMView: TcxLabel;
    cxGroupBox13: TcxGroupBox;
    cxBtnOKRA8: TcxButton;
    cxEdtRMoveAmt: TcxCurrencyEdit;
    cxGridA8: TcxGrid;
    cxBrCashMove: TcxGridBandedTableView;
    cxBrCashMoveColumn1: TcxGridBandedColumn;
    cxBrCashMoveColumn2: TcxGridBandedColumn;
    cxBrCashMoveColumn3: TcxGridBandedColumn;
    cxBrCashMoveColumn4: TcxGridBandedColumn;
    cxBrCashMoveColumn5: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel44: TcxLabel;
    edtCashMoveMultiMemo: TcxTextEdit;
    Panel2: TPanel;
    cxRBCashM: TcxRadioButton;
    cxRBCashB: TcxRadioButton;
    PnlSelHdOpt: TPanel;
    RB_SelHdOpt1: TcxRadioButton;
    RB_SelHdOpt2: TcxRadioButton;
    cxGpCOM: TcxGroupBox;
    cxcbCashMoveBrName4: TcxComboBox;
    cxcbCashMoveHdName4: TcxComboBox;
    cxChkSel: TcxCheckBox;
    cxLblBrCash: TcxLabel;
    cxGBA9: TcxGroupBox;
    lblSosokNameA9: TcxLabel;
    cxDtStartA9: TcxDateEdit;
    cxLabel52: TcxLabel;
    cxDtEndA9: TcxDateEdit;
    btnSearchA9: TcxButton;
    btnExcelA9: TcxButton;
    btnDateA9: TcxButton;
    cxTeStartA9: TcxTimeEdit;
    cxTeEndA9: TcxTimeEdit;
    cxLabel54: TcxLabel;
    cxLblBrCashA9: TcxLabel;
    cxLabel55: TcxLabel;
    cxLblSMCashA9: TcxLabel;
    cxLabel56: TcxLabel;
    cxLabel57: TcxLabel;
    EdtChargeCashA9: TcxCurrencyEdit;
    cxLabel58: TcxLabel;
    cxLabel59: TcxLabel;
    BtnChargeA9: TcxButton;
    cxLabel60: TcxLabel;
    cxLblSMCnt1A9: TcxLabel;
    cxLblSMCnt2A9: TcxLabel;
    cxLabel62: TcxLabel;
    BtnSearch1A9: TcxButton;
    GridA9: TcxGrid;
    GridA9DBTableView: TcxGridDBTableView;
    GridA9DBTableViewColumn1: TcxGridDBColumn;
    GridA9DBTableViewColumn2: TcxGridDBColumn;
    GridA9DBTableViewColumn3: TcxGridDBColumn;
    GridA9DBTableViewColumn4: TcxGridDBColumn;
    GridA9DBTableViewColumn5: TcxGridDBColumn;
    GridA9DBTableViewColumn6: TcxGridDBColumn;
    GridA9DBTableViewColumn7: TcxGridDBColumn;
    GridA9DBTableViewColumn8: TcxGridDBColumn;
    GridA9DBTableViewColumn9: TcxGridDBColumn;
    GridA9Level: TcxGridLevel;
    Shape46: TShape;
    cxSTR01: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    gbMainA8: TcxGroupBox;
    lb_Title_List: TListBox;
    N13: TMenuItem;
		GridA7ViewColumn13: TcxGridDBColumn;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    edtCashMoveBrName1: TcxTextEdit;
    lbSearchBranch1: TcxLabel;
    edtCashMoveBrName2: TcxTextEdit;
    lbSearchBranch2: TcxLabel;
    lbSearchBranch3: TcxLabel;
    edtCashMoveBrName3: TcxTextEdit;
    lst_BRList1: TcxListBox;
    lst_BRList2: TcxListBox;
    lst_BRList3: TcxListBox;
    cxLabel63: TcxLabel;
    cxLabel64: TcxLabel;
    rbCashOut: TcxRadioButton;
    rbCashIn: TcxRadioButton;
    cxGroupBox11: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel46: TcxLabel;
    cxLabel47: TcxLabel;
    cxLabel48: TcxLabel;
    cxLabel49: TcxLabel;
    lblCash: TcxLabel;
    cxLabel65: TcxLabel;
    cxLabel51: TcxLabel;
    cxLabel53: TcxLabel;
    cxLabel66: TcxLabel;
    cxLabel50: TcxLabel;
    cxSEdt1A5: TcxTextEdit;
    cxTabSheet10: TcxTabSheet;
    cxGroupBox12: TcxGroupBox;
    cxcbCashMoveHdName5: TcxComboBox;
    cxLabel67: TcxLabel;
    cxLabel68: TcxLabel;
    EdtChargeCashA9_1: TcxCurrencyEdit;
    cxLabel69: TcxLabel;
    BtnSearch1A10: TcxButton;
    BtnApplyA10: TcxButton;
    BtnChargeA10: TcxButton;
    GridA10: TcxGrid;
    GridA10DBTableView: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn4: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxChkSel9: TcxCheckBox;
    cxGroupBox14: TcxGroupBox;
    lblSosokNameA10: TcxLabel;
    cxLabel70: TcxLabel;
    cxGroupBox15: TcxGroupBox;
    cxDtStartA10: TcxDateEdit;
    cxLabel72: TcxLabel;
    cxDtEndA10: TcxDateEdit;
    btnSearchA10: TcxButton;
    btnExcelA10: TcxButton;
    btnDateA10: TcxButton;
    cxTeStartA10: TcxTimeEdit;
    cxTeEndA10: TcxTimeEdit;
    cxLabel74: TcxLabel;
    GridA10_1: TcxGrid;
    GridA10_1DBTableView: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxLabel61: TcxLabel;
    cxLabel71: TcxLabel;
    lblHdNm: TcxLabel;
    rbASel: TcxRadioButton;
    rbBSel: TcxRadioButton;
    cxLabel73: TcxLabel;
    GridA1ViewColumn20: TcxGridDBColumn;
    GridA3ViewColumn22: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnHelpA1Click(Sender: TObject);
    procedure BtnCloseA1Click(Sender: TObject);
    procedure GridA1ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure GridA1ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnExcelA1Click(Sender: TObject);
    procedure MiTodayClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure MiYesterdayClick(Sender: TObject);
    procedure MiOneWeekClick(Sender: TObject);
    procedure MiOneMonthClick(Sender: TObject);
    procedure MiStartMonthClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btnSearchA1Click(Sender: TObject);
    procedure Grid1ViewDataControllerSortingChanged(Sender: TObject);
    procedure PopupMenuA1Popup(Sender: TObject);
    procedure btnSearchA2Click(Sender: TObject);
    procedure btnExcelA2Click(Sender: TObject);
    procedure GridA2ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridA2ViewDataControllerSortingChanged(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
    procedure btnExcelA3Click(Sender: TObject);
    procedure GridA3ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridA3ViewDataControllerSortingChanged(Sender: TObject);
    procedure btnSearchA4Click(Sender: TObject);
    procedure btnExcelA4Click(Sender: TObject);
    procedure GridA4ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridA4ViewDataControllerSortingChanged(Sender: TObject);
    procedure btnSearchA5Click(Sender: TObject);
    procedure btnExcelA5Click(Sender: TObject);
    procedure GridA5ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridA5ViewDataControllerSortingChanged(Sender: TObject);
    procedure GridA6ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure GridA6ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridA6ViewDataControllerSortingChanged(Sender: TObject);
    procedure btnSearchA6Click(Sender: TObject);
    procedure btnExcelA6Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure btnHelpA7Click(Sender: TObject);
    procedure btnSearchA7Click(Sender: TObject);
    procedure btnExcelA7Click(Sender: TObject);
    procedure cxCBChk0A7Click(Sender: TObject);
    procedure cxCBChkA7Click(Sender: TObject);
		procedure GridA7ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridA7ViewDataControllerSortingChanged(Sender: TObject);
    procedure GridA7ViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxcbCashMoveBrName1Click(Sender: TObject);
    procedure cxcbCashMoveBrName2Click(Sender: TObject);
    procedure cxcbCashMoveBrName4Click(Sender: TObject);
    procedure cxBrCashMoveBands1HeaderClick(Sender: TObject);
    procedure cxBrCashMoveBands2HeaderClick(Sender: TObject);
    procedure cxBrCashMoveBands3HeaderClick(Sender: TObject);
    procedure cxBtnOKLA8Click(Sender: TObject);
    procedure cxBtnOKRA8Click(Sender: TObject);
    procedure chkUseCashMoveDefaultClick(Sender: TObject);
    procedure cxEdtLMoveAmtKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxcbCashMoveHdName1PropertiesChange(Sender: TObject);
    procedure cxcbCashMoveHdName2PropertiesChange(Sender: TObject);
    procedure cxcbCashMoveHdName4PropertiesChange(Sender: TObject);
    procedure RB_SelHdOpt1Click(Sender: TObject);
    procedure BtnSearch1A9Click(Sender: TObject);
    procedure BtnChargeA9Click(Sender: TObject);
    procedure btnSearchA9Click(Sender: TObject);
    procedure btnExcelA9Click(Sender: TObject);
    procedure GridA9DBTableViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridA9DBTableViewDataControllerSortingChanged(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
		procedure GridA7ViewColumnPosChanged(Sender: TcxGridTableView;
			AColumn: TcxGridColumn);
		procedure N13Click(Sender: TObject);
    procedure lbSearchBranch1Click(Sender: TObject);
    procedure lbSearchBranch2Click(Sender: TObject);
    procedure lbSearchBranch3Click(Sender: TObject);
    procedure edtCashMoveBrName1Enter(Sender: TObject);
    procedure edtCashMoveBrName1Exit(Sender: TObject);
    procedure edtCashMoveBrName1FocusChanged(Sender: TObject);
    procedure edtCashMoveBrName1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCashMoveBrName1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCashMoveBrName1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtCashMoveBrName2Enter(Sender: TObject);
    procedure edtCashMoveBrName2Exit(Sender: TObject);
    procedure edtCashMoveBrName2FocusChanged(Sender: TObject);
    procedure edtCashMoveBrName2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCashMoveBrName2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCashMoveBrName2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtCashMoveBrName3Enter(Sender: TObject);
    procedure edtCashMoveBrName3Exit(Sender: TObject);
    procedure edtCashMoveBrName3FocusChanged(Sender: TObject);
    procedure edtCashMoveBrName3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCashMoveBrName3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCashMoveBrName3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lst_BRList1DblClick(Sender: TObject);
    procedure lst_BRList1Exit(Sender: TObject);
    procedure lst_BRList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lst_BRList2DblClick(Sender: TObject);
    procedure lst_BRList2Exit(Sender: TObject);
    procedure lst_BRList2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lst_BRList3DblClick(Sender: TObject);
    procedure lst_BRList3Exit(Sender: TObject);
    procedure lst_BRList3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxChkSelPropertiesChange(Sender: TObject);
    procedure rbCashOutClick(Sender: TObject);
    procedure cxcbCashMoveBrName4PropertiesChange(Sender: TObject);
    procedure cxcbCashMoveBrName1PropertiesChange(Sender: TObject);
    procedure cxcbCashMoveBrName2PropertiesChange(Sender: TObject);
    procedure edtCashMoveBrName1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSearch1A10Click(Sender: TObject);
    procedure cxcbCashMoveHdName5PropertiesChange(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure BtnApplyA10Click(Sender: TObject);
    procedure GridA91DBTableViewBands1HeaderClick(Sender: TObject);
    procedure GridA10DBTableViewCustomDrawBandHeader(Sender: TcxGridBandedTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridBandHeaderViewInfo;
      var ADone: Boolean);
    procedure GridA10DBTableViewBands2HeaderClick(Sender: TObject);
    procedure GridA10DBTableViewBands3HeaderClick(Sender: TObject);
    procedure GridA10DBTableViewDataControllerSortingChanged(Sender: TObject);
    procedure EdtChargeCashA9_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnChargeA10Click(Sender: TObject);
    procedure btnSearchA10Click(Sender: TObject);
    procedure GridA10_1DBTableViewDataControllerSortingChanged(Sender: TObject);
    procedure GridA10_1DBTableViewColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure btnExcelA10Click(Sender: TObject);
  private
    { Private declarations }
    FSorted: Boolean;
    FSortedBand: TcxGridBand;

    AIndex : Integer;
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;

    FUseCashMoveDefaultBranch: Boolean;
    FCashMoveDefaultBrNo,
		FCashMoveDefaultBrName: string;
		GReceiveMainText: string;

		searchBRlist1, searchBRlist2, searchBRlist3 : TStringList;

    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_recieve(slList: TStringList);
    procedure proc_BankLog2(ABrNo: string; AGUBUN : integer; AColNM :String='');
    procedure proc_CashList;
    procedure proc_BankLog;
    procedure proc_OrderAcc;
    procedure proc_BrNoCharge;
    procedure proc_WkCharge;
    procedure proc_WKSolution;
    procedure proc_WKSolution2(sBrNo: string);
    procedure proc_ShareCallAcc;
    procedure proc_brChage(iType: Integer; sBrNo: string);
    procedure proc_BrNameSearch(iType: Integer; sBrNo, sHdNo: string);
    procedure proc_CashMove(iType: Integer);
    procedure proc_CashInMove;
    function SelectCashMoveDefaultBranch(ABrNo: string): Boolean;
    function SelectCashMoveDefaultFamilyBranch(ABrNo: string): Boolean;
    function SelectCashMoveDefaultHdNm(ABrNo: string): Boolean;
    procedure SetCashMoveDefaultBranch(AUse: Boolean; ABrNo, ABrName: string);
    procedure proc_Init_SmsCharge;
    procedure proc_SMS_charge;
    procedure proc_SMS_Search;

		procedure proc_Change_Title;
		function func_BrNameList_Search(ATag:integer):Boolean;
    procedure pBandSort(vGridBand: TcxGridBandedTableView; vIdx: Integer);
    procedure proc_SMS_AllSearch;
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_BrNameSet;
	end;

var
  Frm_ACC: TFrm_ACC;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_ACC01, xe_Flash, xe_JON09, xe_ACC02, xe_JON51, xe_SearchWord,
  xe_JON07;

procedure TFrm_ACC.MiTodayClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_ACC.PopupMenuA1Popup(Sender: TObject);
var
  iRow: Integer;
  sSlip: string;
begin
	N2.Visible := False;
  N11.Visible := False;
	N12.Visible := False;
	N5.Visible := False;
	N6.Visible := False;
	N13.Visible := False;
  case cxPageControl1.ActivePageIndex of
    0 : begin
					N2.Visible := True;
        end;
    1, 2
			: begin
          if cxPageControl1.ActivePageIndex = 1 then
          begin
            iRow := GridA2View.DataController.FocusedRecordIndex;
            if iRow < 0 then Exit;
          	sSlip := GridA2View.DataController.Values[iRow, 8];
          end else
          if cxPageControl1.ActivePageIndex = 2 then
          begin
            iRow := GridA3View.DataController.FocusedRecordIndex;
            if iRow < 0 then Exit;
            sSlip := GridA3View.DataController.Values[iRow, 19];
          end;

        	if sSlip = '' then
          begin
            N5.Visible := False;
            N6.Visible := False;
					end else
          begin
            N5.Visible := True;
            N6.Visible := True;
          end;
        end;
		5 : begin
					N11.Visible := True;
				end;
		6 : begin
					N13.Visible := True;
				end;
	end;
end;

procedure TFrm_ACC.N11Click(Sender: TObject);
var
  iBrNo, iRow: Integer;
  sBrNo: string;
begin
  case cxPageControl1.ActivePageIndex of
  5 : begin
        iBrNo := GridA6View.GetColumnByFieldName('지사코드').Index;
        iRow := GridA6View.DataController.FocusedRecordIndex;
        if iRow < 0 then Exit;
        sBrNo := GridA6View.DataController.Values[iRow, iBrNo];
        proc_WKSolution2(sBrNo);
      end;
  end;
end;

procedure TFrm_ACC.N13Click(Sender: TObject);
var
	i, iRow: Integer;
	sTemp: string;
begin
	SetDebugeWrite('TFrm_ACC.N13Click');
	try
		if cxPageControl1.ActivePageIndex = 6 then
		begin
			GS_EnvFile.EraseSection('GridA7_Title');
			for i := 0 to GridA7View.ColumnCount - 1 do
			begin
				sTemp := GridA7View.Columns[i].DataBinding.FieldName;
				iRow := lb_Title_List.Items.IndexOf(sTemp);
				GridA7View.Columns[i].Index := iRow;
			end;
			proc_Change_Title;
		end;
	except
  end;
end;

procedure TFrm_ACC.N1Click(Sender: TObject);
begin
	case cxPageControl1.ActivePageIndex of
   0 : btnExcelA1.Click;
   1 : btnExcelA2.Click;
   2 : btnExcelA3.Click;
	 3 : btnExcelA4.Click;
   4 : btnExcelA5.Click;
   5 : btnExcelA6.Click;
   6 : btnExcelA7.Click;
   8 : btnExcelA9.Click;
   9 : btnExcelA10.Click;
  end;
end;

procedure TFrm_ACC.N2Click(Sender: TObject);
var
  iBrNo, iRow: Integer;
  sBrNo: string;
begin
  case cxPageControl1.ActivePageIndex of
    0 : begin
          iBrNo := GridA1View.GetColumnByFieldName('지사코드').Index;
          iRow := GridA1View.DataController.FocusedRecordIndex;
          if iRow < 0 then Exit;
          sBrNo := GridA1View.DataController.Values[iRow, iBrNo];
          proc_BankLog2(sBrNo, 0);
        end;
  end;
end;

procedure TFrm_ACC.N5Click(Sender: TObject);
var
  iRow: Integer;
  sSlip: string;
begin
  case cxPageControl1.ActivePageIndex of
    1 : begin
          iRow := GridA2View.DataController.FocusedRecordIndex;
          if iRow < 0 then Exit;
          sSlip := GridA2View.DataController.Values[iRow, 8];
        end;
    2 : begin
          iRow := GridA3View.DataController.FocusedRecordIndex;
          if iRow < 0 then Exit;
          sSlip := GridA3View.DataController.Values[iRow, 19];
        end;
  end;
  if sSlip = '' then Exit;
  if ( Not Assigned(Frm_JON09) ) Or ( Frm_JON09 = NIl ) then Frm_JON09 := TFrm_JON09.Create(Nil);
  Frm_JON09.Tag := 0;
  Frm_JON09.proc_orderinfo(sSlip);
end;

procedure TFrm_ACC.N6Click(Sender: TObject);
var
	iSlip, iRow, iAccTime, iKeyNum, iWKName: Integer;
  sSlip, sAccTime, sWKName, sKeyNum : string;
begin
	case cxPageControl1.ActivePageIndex of
		1 : begin
					iRow := GridA2View.DataController.FocusedRecordIndex;
          if iRow < 0 then Exit;

          iSlip := GridA2View.GetColumnByFieldName('접수번호').Index;
          sSlip := GridA2View.DataController.Values[iRow, iSlip];
        end;
    2 : begin
          iRow := GridA3View.DataController.FocusedRecordIndex;
          if iRow < 0 then Exit;

          iSlip := GridA3View.GetColumnByFieldName('접수번호').Index;
          iKeyNum := GridA3View.GetColumnByFieldName('대표번호').Index;
          sKeyNum := GridA3View.DataController.Values[iRow, iKeyNum];
          iWKName := GridA3View.GetColumnByFieldName('운행기사명').Index;
          sWKName := GridA3View.DataController.Values[iRow, iWKName];

          sSlip := GridA3View.DataController.Values[iRow, iSlip];
          iAccTime := GridA3View.GetColumnByFieldName('날짜').Index;
          sAccTime := GridA3View.DataController.Values[iRow, iAccTime];
        end;
	end;
  if sSlip = '' then Exit;
	if Assigned(Frm_Main.Frm_JON03[GI_JON03_LastFromIdx]) then
	begin
			//타사콜일경우 기사에 송금 팝업메뉴 제외 2016.08.23KHS
		if ( Not Assigned(Frm_JON07) ) Or ( Frm_JON07 = Nil ) then Frm_JON07 := TFrm_JON07.Create(Nil);
		Frm_JON07.bTaSaCall := True;

		Frm_JON07.Jon03Tag := GI_JON03_LastFromIdx;
		Frm_JON07.BrNo := GT_SEL_BRNO.BrNo;
		frm_JON07.StCd := '';
		frm_JON07.WkName := sWKName;
		frm_JON07.Hint := sSlip;
		frm_JON07.AccTime := sAccTime;
		frm_JON07.MainKeyNum := sKeyNum;    // 2011.07.14 add.
//		frm_JON07.CustTel := '';
		frm_JON07.CuGubun := '';
		frm_JON07.Cuseq := '';

		frm_JON07.pJON07Dock.bUnDock := True;
		frm_JON07.pJON07Dock.HdNo    := GT_SEL_BRNO.HDNO;

		frm_Main.proc_SlipHis(sSlip, FormatDateTime('yyyy-mm-dd', now - 2) + '090000', GI_JON03_LastFromIdx);
  end else
  begin
    ShowMessage('접수현황 실행 중에만 [오더상세내역보기]를 할수 있습니다');
	end;
end;

procedure TFrm_ACC.proc_init;
Var i,iRow : Integer;
	sTmp : string;
begin
	cxDtStartA1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEndA1.Date := cxDtStartA1.Date + 1;

  for i := 0 to GridA1View.ColumnCount - 1 do
  begin
    if i in [0] then
      GridA1View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [3..19] then
      GridA1View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      GridA1View.Columns[i].DataBinding.ValueType := 'String';
  end;

	if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ID = '8282king') or (GT_USERIF.ID = '8282si')) then
	begin
		GridA1View.Columns[4].Visible := False;
		GridA1View.Columns[5].Visible := False;
		GridA1View.Columns[12].Visible := False;
		GridA1View.Columns[15].Visible := False;
		GridA1View.Columns[17].Visible := False;
		GridA1View.OptionsView.Footer := False;
		cxLabel37.Visible := False;
	end;

  GridA1View.DataController.SetRecordCount(0);

  // --------------------------------------------------------------------------- A2
  cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEndA2.Date := cxDtStartA2.Date + 1;

  for i := 0 to GridA2View.ColumnCount - 1 do
  begin
    if i in [0] then
      GridA2View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [5, 6] then
      GridA2View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      GridA2View.Columns[i].DataBinding.ValueType := 'String';
  end;
  GridA2View.DataController.SetRecordCount(0);

  // --------------------------------------------------------------------------- A3
  cxDtStartA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA3.Date := cxDtStartA3.Date + 1;

  for i := 0 to GridA3View.ColumnCount - 1 do
  begin
    if i in [0] then
      GridA3View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [10..16] then
      GridA3View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      GridA3View.Columns[i].DataBinding.ValueType := 'String';
  end;
  GridA3View.DataController.SetRecordCount(0);

  // --------------------------------------------------------------------------- A4
  cxDtStartA4.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEndA4.Date := cxDtStartA4.Date + 1;

  for i := 0 to GridA4View.ColumnCount - 1 do
  begin
    if i in [0] then
      GridA4View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [6] then
      GridA4View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      GridA4View.Columns[i].DataBinding.ValueType := 'String';
  end;
  GridA4View.DataController.SetRecordCount(0);

  // --------------------------------------------------------------------------- A5
  cxDtStartA5.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEndA5.Date := cxDtStartA5.Date + 1;

  for i := 0 to GridA5View.ColumnCount - 1 do
  begin
    if i in [0] then
      GridA5View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [6, 7] then
      GridA5View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      GridA5View.Columns[i].DataBinding.ValueType := 'String';
  end;
  GridA5View.DataController.SetRecordCount(0);

	cxCb1A5.ItemIndex := 0;
	cxCbA5.ItemIndex := 0;

  // --------------------------------------------------------------------------- A6
	cxCBA6.ItemIndex := 0;
	cxSEYYA6.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
  cxSEYYA6.Properties.MaxValue := cxSEYYA6.Value;
  cxSEYYA6.Properties.MinValue := cxSEYYA6.Value - 1;
  cxSEMMA6.Value := StrToIntDef(FormatDateTime('mm', Now), 1);

  for i := 0 to GridA6View.ColumnCount - 1 do
  begin
    if i in [0] then
      GridA6View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [5..10] then
      GridA6View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      GridA6View.Columns[i].DataBinding.ValueType := 'String';
  end;
  GridA6View.DataController.SetRecordCount(0);

  // --------------------------------------------------------------------------- A7
  cxDtStartA7.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA7.Date := cxDtStartA7.Date + 1;

  try
		for i := 0 to GridA7View.ColumnCount - 1 do
		begin
			if i in [1] then
				GridA7View.Columns[i].DataBinding.ValueType := 'Integer' else
			if i in [5, 7..12] then
				GridA7View.Columns[i].DataBinding.ValueType := 'Currency'
			else
				GridA7View.Columns[i].DataBinding.ValueType := 'String';
		end;

		SetDebugeWrite('GridA7View.BeginUpdate');
		GridA7View.BeginUpdate;
		try
			GridA7View.DataController.SetRecordCount(0);
			for i := 0 to GridA7View.ColumnCount - 1 do
			begin
				sTmp := GS_EnvFile.ReadString('GridA7_Title', IntToStr(i), '');

				if sTmp <> '' then
				begin
					iRow := GridA7View.GetColumnByFieldName(sTmp).Index;
					if iRow = -1 then iRow := i;
				end
				else
					iRow := i;
				GridA7View.Columns[iRow].Index := i;
			end;
		finally
			GridA7View.EndUpdate;
			SetDebugeWrite('cxGVeOrderList.EndUpdate');
		end;
	Except on e: exception do
		Assert(False, 'GridA7View Error :' + E.Message);
	end;

	// --------------------------------------------------------------------------- A8
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120704 LYB
	begin
    cxrbBrCash.Checked := True;

		cxGpCIS.Caption := '  ※ 캐쉬 입금 본사 지사';
    cxGpCOS.Caption := '  ※ 캐쉬 출금 본사 지사';
//    cxGpCOM.Caption := '  ※ 캐쉬 출금 본사 지사';

    rbCashOut.Caption := '캐쉬 출금 본사 지사';
    rbCashIn .Caption := '캐쉬 입금 본사 지사';

    PnlSelHdOpt.Visible := True;

    cxcbCashMoveHdName1.Properties.Items.Clear;
    cxcbCashMoveHdName1.Properties.Items.Assign(scb_HdNm);
    cxcbCashMoveHdName1.Tag := 1;
    cxcbCashMoveHdName1.ItemIndex := 0;
    cxcbCashMoveHdName1.Tag := 0;

    cxcbCashMoveHdName2.Properties.Items.Clear;
    cxcbCashMoveHdName2.Properties.Items.Assign(scb_HdNm);
    cxcbCashMoveHdName2.Tag := 1;
    cxcbCashMoveHdName2.ItemIndex := 0;
    cxcbCashMoveHdName2.Tag := 0;

    cxcbCashMoveHdName4.Properties.Items.Clear;
    cxcbCashMoveHdName4.Properties.Items.Assign(scb_HdNm);
    cxcbCashMoveHdName4.Tag := 1;
    cxcbCashMoveHdName4.ItemIndex := 0;
    cxcbCashMoveHdName4.Tag := 0;
  end else
  begin
    cxrbBrCash.Checked := True;

    cxGpCIS.Caption := '  ※ 캐쉬 입금 지사';
    cxGpCOS.Caption := '  ※ 캐쉬 출금 지사';
//    cxGpCOM.Caption := '  ※ 캐쉬 출금 지사';

    rbCashOut.Caption := '캐쉬 출금 지사';
    rbCashIn .Caption := '캐쉬 입금 지사';

    PnlSelHdOpt.Visible := False;

    cxcbCashMoveHdName1.Visible := False;
    cxcbCashMoveHdName2.Visible := False;
    cxcbCashMoveHdName4.Visible := False;

    cxcbCashMoveBrName1.Properties.Items.Clear;
    cxcbCashMoveBrName1.Properties.Items.Assign(scb_Branch);
    cxcbCashMoveBrName1.Properties.Items.Insert(0, '지사선택');
    cxcbCashMoveBrName1.Tag := 1;
    cxcbCashMoveBrName1.ItemIndex := 0;
    cxcbCashMoveBrName1.Tag := 0;

    cxcbCashMoveBrName2.Properties.Items.Clear;
    cxcbCashMoveBrName2.Properties.Items.Assign(scb_Branch);
    cxcbCashMoveBrName2.Properties.Items.Insert(0, '지사선택');
    cxcbCashMoveBrName2.Tag := 1;
    cxcbCashMoveBrName2.ItemIndex := 0;
    cxcbCashMoveBrName2.Tag := 0;

    cxcbCashMoveBrName4.Properties.Items.Clear;
    cxcbCashMoveBrName4.Properties.Items.Assign(scb_Branch);
    cxcbCashMoveBrName4.Properties.Items.Insert(0, '지사선택');
    cxcbCashMoveBrName4.Tag := 1;
    cxcbCashMoveBrName4.ItemIndex := 0;
    cxcbCashMoveBrName4.Tag := 0;
  end;

	cxcbCashMoveHdName5.Tag := 99;
	cxcbCashMoveHdName5.Properties.Items.Clear;
	for i := 0 to scb_HdNm.Count -1 do
	begin
		if sTmp <> scb_HdNm[i] then
			cxcbCashMoveHdName5.Properties.Items.add(scb_HdNm[i]);
		sTmp := scb_HdNm[i];
	end;
	cxcbCashMoveHdName5.ItemIndex := 0;
	cxcbCashMoveHdName5.Tag := 0;

	searchBRlist1 := TStringList.Create;
	searchBRlist2 := TStringList.Create;
	searchBRlist3 := TStringList.Create;

  cxLblBrView.Visible := True;
  cxLblBrView.Left := 8;
  cxLblBrView.Top := 93;
  cxLblSMView.Visible := True;
  cxLblSMView.Left := 8;
  cxLblSMView.Top := 93;
  cxLblIBrCash.Caption := '';
  cxLblISmCash.Caption := '';
  cxLblOBrCash.Caption := '';
  cxLblOSmCash.Caption := '';
  cxEdtLMoveAmt.Value := 0;
  cxLblBrCash.Caption := '';
  cxChkSel.Checked := False;
  cxRBCashM.Checked := True;
  cxEdtRMoveAmt.Value := 0;

  cxBrCashMove.Columns[0].DataBinding.ValueType := 'Integer';
  cxBrCashMove.Columns[1].DataBinding.ValueType := 'String';
  cxBrCashMove.Columns[2].DataBinding.ValueType := 'Currency';
  cxBrCashMove.Columns[3].DataBinding.ValueType := 'String';
  cxBrCashMove.Columns[4].DataBinding.ValueType := 'String';

  FUseCashMoveDefaultBranch := GS_EnvFile.ReadBool('CashMove', Format('Use-%s', [GT_USERIF.ID]), False);
  FCashMoveDefaultBrNo      := GS_EnvFile.ReadString('CashMove', Format('BrNo-%s', [GT_USERIF.ID]), '');
  FCashMoveDefaultBrName    := GS_EnvFile.ReadString('CashMove', Format('BrName-%s', [GT_USERIF.ID]), '');

  if FUseCashMoveDefaultBranch then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    begin
      if SelectCashMoveDefaultHdNm(FCashMoveDefaultBrNo) then
         cxcbCashMoveHdName2PropertiesChange(cxcbCashMoveHdName2);

      if SelectCashMoveDefaultFamilyBranch(FCashMoveDefaultBrNo) then
        SetCashMoveDefaultBranch(FUseCashMoveDefaultBranch, FCashMoveDefaultBrNo, FCashMoveDefaultBrName);
    end else
    begin
      if SelectCashMoveDefaultBranch(FCashMoveDefaultBrNo) then
        SetCashMoveDefaultBranch(FUseCashMoveDefaultBranch, FCashMoveDefaultBrNo, FCashMoveDefaultBrName);
    end;
  end;

  // --------------------------------------------------------------------------- A9
  cxDtStartA9.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEndA9.Date := cxDtStartA9.Date + 1;

  for i := 0 to GridA9DBTableView.ColumnCount - 1 do
  begin
    if i in [0] then
      GridA9DBTableView.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [6] then
      GridA9DBTableView.Columns[i].DataBinding.ValueType := 'Currency'
    else
      GridA9DBTableView.Columns[i].DataBinding.ValueType := 'String';
  end;
  GridA9DBTableView.DataController.SetRecordCount(0);

  // --------------------------------------------------------------------------- A10
  cxDtStartA10.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEndA10.Date := cxDtStartA10.Date + 1;

  for i := 0 to GridA10DBTableView.ColumnCount - 1 do
  begin
    if i in [0] then
      GridA10DBTableView.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [2,3,5] then
      GridA10DBTableView.Columns[i].DataBinding.ValueType := 'Currency'
    else
      GridA10DBTableView.Columns[i].DataBinding.ValueType := 'String';
  end;
  GridA10DBTableView.DataController.SetRecordCount(0);

  for i := 0 to GridA10_1DBTableView.ColumnCount - 1 do
  begin
    if i in [0] then
      GridA10_1DBTableView.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [6] then
      GridA10_1DBTableView.Columns[i].DataBinding.ValueType := 'Currency'
    else
      GridA10_1DBTableView.Columns[i].DataBinding.ValueType := 'String';
  end;
  GridA10_1DBTableView.DataController.SetRecordCount(0);

	proc_BrNameSet;
end;

procedure TFrm_ACC.proc_BrNameSet;
begin
  lblSosokNameA1.Caption := GetSosokInfo;
  lblSosokNameA2.Caption := GetSosokInfo;
  lblSosokNameA3.Caption := GetSosokInfo;
  lblSosokNameA4.Caption := GetSosokInfo;
  lblSosokNameA5.Caption := GetSosokInfo;
  lblSosokNameA6.Caption := GetSosokInfo;
  lblSosokNameA7.Caption := GetSosokInfo;
  lblSosokNameA9.Caption := GetSosokInfo;
  lblSosokNameA10.Caption := GetSosokInfo;
end;

procedure TFrm_ACC.FormCreate(Sender: TObject);
Var i : Integer;
begin
  try
    // 날짜형식이 'yy/mm/dd'일경우 오류 발생 가능성으로 인해 자체 Display 포맷 변경
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TcxDateEdit then
      begin
        (Components[i] as TcxDateEdit).Properties.DisplayFormat :=  'yyyy/mm/dd';
        (Components[i] as TcxDateEdit).Properties.EditFormat    :=  'yyyy/mm/dd';
      end;
    end;
  except
  end;

  cxPageControl1.ActivePageIndex := 0;

  cxPageControl1.Pages[0].TabVisible := TCK_USER_PER.ACC_BrchCash = '1';                                 // 601.지사캐쉬내역
  cxPageControl1.Pages[1].TabVisible := TCK_USER_PER.ACC_BankBook = '1';                                 // 602.통장식로그
  cxPageControl1.Pages[2].TabVisible := TCK_USER_PER.ACC_Order = '1';                                    // 603.오더정산
  cxPageControl1.Pages[3].TabVisible := TCK_USER_PER.ACC_BrchCharge = '1';                               // 604.지사충전내역
  cxPageControl1.Pages[4].TabVisible := TCK_USER_PER.ACC_WkCharge = '1';                                 // 605.기사충전내역
  cxPageControl1.Pages[5].TabVisible := TCK_USER_PER.ACC_WKSolution = '1';                               // 606.기사사용료
  cxPageControl1.Pages[6].TabVisible := TCK_USER_PER.ACC_BrchGainCash = '1';                             // 607.공유콜정산
  cxPageControl1.Pages[7].TabVisible := (GT_USERIF.LV = '60') and (TCK_USER_PER.ACC_CASH_MOVIE = '1');   // 608.캐쉬이동
  cxPageControl1.Pages[8].TabVisible := TCK_USER_PER.ACC_SMS_CASH = '1';                                 // 609.SMS캐쉬충전
	if TCK_USER_PER.ACC_SMS_CASH_PCK = '1' then
		cxPageControl1.Pages[9].TabVisible := True else                                 // 621.SMS캐쉬일괄충전
		cxPageControl1.Pages[9].TabVisible := False;

	//상담원일경우 메뉴 감춤.팀장님 지시 20210902 KHS
	if GT_USERIF.LV = '10' then
		cxPageControl1.Pages[9].TabVisible := False;
  proc_init;
end;

procedure TFrm_ACC.FormDestroy(Sender: TObject);
begin
  Frm_ACC := NIl;
end;

procedure TFrm_ACC.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_ACC, GS_FONTNAME);
  for i := 0 to pred(cxSTR01.Count) do
  begin
    TcxStyle(cxSTR01.Items[i]).Font.Name := GS_FONTNAME;
  end;
end;

function TFrm_ACC.func_BrNameList_Search(ATag:integer): Boolean;
var
	i, iOldIdx: integer;
	bRlt: boolean;
	sKey: string;
begin
	SetDebugeWrite('TFrm_ACC.func_BrNameList_Search');
  try
		if ATag = 1 then
		begin
			bRlt := False;
			lst_BRList1.Items.Clear;
			searchBRlist1.Clear;
			sKey := edtCashMoveBrName1.text; // 조회할 지사명 읽기.

			iOldIdx := cxcbCashMoveBrName1.ItemIndex;  // 현재 index 값을 저장.[못찾을 경우 현재 선택지사로 되돌려줌]
			cxcbCashMoveBrName1.Tag := 1;
			lst_BRList1.Items.BeginUpdate;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
			for i := 0 to cxcbCashMoveBrName1.Properties.Items.Count - 1 do
			begin
				if (Pos(sKey, cxcbCashMoveBrName1.Properties.Items.Strings[i]) > 0) then
				begin // 지사명  찾기..
					lst_BRList1.Items.Add(cxcbCashMoveBrName1.Properties.Items.Strings[i]);
					searchBRlist1.Add(inttostr(i));
					bRlt := True;
				end;
			end;
			lst_BRList1.Items.EndUpdate;
			cxcbCashMoveBrName1.ItemIndex := iOldIdx;
			lst_BRList1.Visible := True;
			lst_BRList1.Left := 20;
			lst_BRList1.Top := 165;
			if lst_BRList1.Items.Count > 30 then
				lst_BRList1.Height := 500
			else
				lst_BRList1.Height := lst_BRList1.Items.Count * 25;
			cxcbCashMoveBrName1.Tag := 0;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
			Result := bRlt;
		end else
		if ATag = 2 then
		begin
			bRlt := False;
			lst_BRList2.Items.Clear;
			searchBRlist2.Clear;
			sKey := edtCashMoveBrName2.text; // 조회할 지사명 읽기.

			iOldIdx := cxcbCashMoveBrName2.ItemIndex;  // 현재 index 값을 저장.[못찾을 경우 현재 선택지사로 되돌려줌]
			cxcbCashMoveBrName2.Tag := 1;
			lst_BRList2.Items.BeginUpdate;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
			for i := 0 to cxcbCashMoveBrName2.Properties.Items.Count - 1 do
			begin
				if (Pos(sKey, cxcbCashMoveBrName2.Properties.Items.Strings[i]) > 0) then
				begin // 지사명  찾기..
					lst_BRList2.Items.Add(cxcbCashMoveBrName2.Properties.Items.Strings[i]);
					searchBRlist2.Add(inttostr(i));
					bRlt := True;
				end;
			end;
			lst_BRList2.Items.EndUpdate;
			cxcbCashMoveBrName2.ItemIndex := iOldIdx;
			lst_BRList2.Visible := True;
			lst_BRList2.Left := 286;
			lst_BRList2.Top := 165;
			if lst_BRList2.Items.Count > 30 then
				lst_BRList2.Height := 500
			else
				lst_BRList2.Height := lst_BRList2.Items.Count * 23;
			cxcbCashMoveBrName2.Tag := 0;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
			Result := bRlt;
		end else
		if ATag = 3 then
		begin
			bRlt := False;
			lst_BRList3.Items.Clear;
			searchBRlist3.Clear;
			sKey := edtCashMoveBrName3.text; // 조회할 지사명 읽기.

			iOldIdx := cxcbCashMoveBrName4.ItemIndex;  // 현재 index 값을 저장.[못찾을 경우 현재 선택지사로 되돌려줌]
			cxcbCashMoveBrName4.Tag := 1;
			lst_BRList3.Items.BeginUpdate;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
			for i := 0 to cxcbCashMoveBrName4.Properties.Items.Count - 1 do
			begin
				if (Pos(sKey, cxcbCashMoveBrName4.Properties.Items.Strings[i]) > 0) then
				begin // 지사명  찾기..
					lst_BRList3.Items.Add(cxcbCashMoveBrName4.Properties.Items.Strings[i]);
					searchBRlist3.Add(inttostr(i));
					bRlt := True;
				end;
			end;
			lst_BRList3.Items.EndUpdate;
			cxcbCashMoveBrName4.ItemIndex := iOldIdx;
			lst_BRList3.Visible := True;
			lst_BRList3.Left := 238;
			lst_BRList3.Top := 171;
			if lst_BRList3.Items.Count > 30 then
				lst_BRList3.Height := 500
			else
				lst_BRList3.Height := lst_BRList3.Items.Count * 23;
			cxcbCashMoveBrName4.Tag := 0;
			// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
			Result := bRlt;
		end;
	Except
    on e: exception do
    begin
      Log('proc_BrNameList_Search Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'proc_BrNameList_Search Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_ACC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	FreeAndNil(searchBRlist1);
	FreeAndNil(searchBRlist2);
	FreeAndNil(searchBRlist3);
  Action := caFree;
end;

procedure TFrm_ACC.BtnChargeA10Click(Sender: TObject);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, ls_Msg_Err, sMsg, sErrMsg : string;
  sTemp, sParam, msg, sBrNo, sBrNm : string;
  ls_rxxml: WideString;
  i, j, iCnt, iCash, iSms, iSucc, iFail : Integer;
  asParam: array[1..3] of string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if GridA10DBTableView.DataController.RecordCount = 0 then Exit;

//	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
//	begin
//		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
//		exit;
//	end;

  sErrMsg := '';
  iSucc := 0;
  iFail := 0;
  try
    for i := 0 to GridA10DBTableView.DataController.RecordCount - 1 do
    begin
      if GridA10DBTableView.DataController.Values[i, 4] = '0' then Continue;

      sBrNo := GridA10DBTableView.DataController.Values[i, 6];
      sBrNm := GridA10DBTableView.DataController.Values[i, 1];
      iCash := StrToIntDef(Stringreplace(GridA10DBTableView.DataController.Values[i, 2], ',', '', [rfReplaceAll]), 0);
      iSms  := StrToIntDef(Stringreplace(GridA10DBTableView.DataController.Values[i, 5], ',', '', [rfReplaceAll]), 0);

      if (GT_USERIF.LV = '10') and (not IsPassedManagementEtc(sBrNo)) then
      begin
        Inc(iFail);
        msg := Format('[%s]지사 - 정산관련 관리권한 이관(콜센터 상담원) 설정안함.', [sBrNm]);
        if sErrMsg = '' then sErrMsg := msg
                        else sErrMsg := sErrMsg + CRLF + msg;
        Continue;
      end;

      if iSms = 0 then
      begin
        Inc(iFail);
        msg := Format('[%s]지사 - 충전금액 0원.', [sBrNm]);
        if sErrMsg = '' then sErrMsg := msg
                        else sErrMsg := sErrMsg + CRLF + msg;
        Continue;
      end;

      if iSms > iCash then
      begin
        Inc(iFail);
        msg := Format('[%s]지사 - 지사캐쉬부족.', [sBrNm]);
        if sErrMsg = '' then sErrMsg := msg
                        else sErrMsg := sErrMsg + CRLF + msg;
        Continue;
      end;

      ls_TxLoad := GTx_UnitXmlLoad('CALLABLE2.xml');

      asParam[1] := sBrNo;
      asParam[2] := IntToStr(iSms);
      asParam[3] := GT_USERIF.ID;
      sParam := '';

      sTemp := 'SMS_RECHARGE(?';
      iCnt := 3;
      for j := 1 to iCnt do
      begin
        sTemp := sTemp + ',?';
        sParam := sParam + StringReplace(ls_Param, 'ParamString', asParam[j], [rfReplaceAll]);
      end;
      sTemp := sTemp + ')';

      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'SMSCHARGE', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(iCnt), [rfReplaceAll]);
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
              if ('0000' = ls_Msg_Err) then
              begin
                Inc(iSucc);
                Continue;
              end else
              begin
                Inc(iFail);
                msg := Format('[%s]지사 - %s.', [sBrNm, ls_MSG_Err]);
                if sErrMsg = '' then sErrMsg := msg
                                else sErrMsg := sErrMsg + CRLF + msg;
              end;
            except
              Inc(iFail);
              msg := Format('[%s]지사 - 저장실패', [sBrNm]);
              if sErrMsg = '' then sErrMsg := msg
                              else sErrMsg := sErrMsg + CRLF + msg;

            end;
          end;
        end;
      finally
        Frm_Flash.Hide;
        Screen.Cursor := crDefault;
        freeAndNil(slReceive);
      end;
    end;
    if sErrMsg = '' then GMessagebox(Format('저장완료 - 성공(%d건)',[iSucc]), CDMSE)
                    else GMessagebox(Format('저장완료 - 성공(%d건), 실패(%d건)',[iSucc, iFail]) + CRLF + sErrMsg, CDMSE);
    BtnSearch1A10.Click;
  except
  end;
end;

procedure TFrm_ACC.BtnChargeA9Click(Sender: TObject);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, ls_Msg_Err, sMsg: string;
  sTemp, sParam, msg: string;
  ls_rxxml: WideString;
  i, iCnt, iCash, iSms: Integer;
  asParam: array[1..3] of string;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;

	if (GT_USERIF.LV = '10') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 정산관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
    Exit;
  end;

  iCash := StrToIntDef(Stringreplace(cxLblBrCashA9.Caption, ',', '', [rfReplaceAll]), 0);
  iSms  := StrToIntDef(Stringreplace(EdtChargeCashA9.Text, ',', '', [rfReplaceAll]), 0);

  if iSms = 0 then
  begin
    GMessagebox('0원은 충전할수 없습니다.', CDMSE);
    Exit;
  end;

  if iSms > iCash then
  begin
    GMessagebox('지사캐쉬보다 SMS충전캐쉬가 크면 안됩니다.', CDMSE);
    Exit;
  end;

  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE2.xml');

  asParam[1] := GT_SEL_BRNO.BrNo;
  asParam[2] := IntToStr(iSms);
  asParam[3] := GT_USERIF.ID;
  sTemp := 'SMS_RECHARGE(?';
  iCnt := 3;
  for i := 1 to iCnt do
  begin
    sTemp := sTemp + ',?';
    sParam := sParam + StringReplace(ls_Param, 'ParamString', asParam[i], [rfReplaceAll]);
  end;
  sTemp := sTemp + ')';

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'SMSCHARGE', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(iCnt), [rfReplaceAll]);
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
          if ('0000' = ls_Msg_Err) then
          begin
            GMessagebox(sMsg, CDMSI);
            proc_SMS_Search;
            EdtChargeCashA9.Value := 0;
          end
          else
            GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
        except
          GMessagebox('실패하였습니다.' + #13#10 + '다시 한번 시도해 보세요',
            CDMSE);
        end;
      end;
    end;
  finally
    Frm_Flash.Hide;
    Screen.Cursor := crDefault;
    freeAndNil(slReceive);
  end;
end;

procedure TFrm_ACC.proc_Init_SmsCharge;
begin
  cxLblSMCashA9.Caption := '';
  cxLblBrCashA9.Caption := '';
  cxLblSMCnt1A9.Caption := '0 원 / 건당  (일반SMS만 보낼때 전송가능건수 : 건)';
  cxLblSMCnt2A9.Caption := '0 원 / 건당  (광고SMS만 보낼때 전송가능건수 : 건)';
  EdtChargeCashA9.Value := 0;
  cxDtStartA9.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEndA9.Date := cxDtStartA9.Date + 1;
  cxGBA9.Enabled := False;
  GridA9DBTableView.DataController.SetRecordCount(0);
end;

procedure TFrm_ACC.BtnCloseA1Click(Sender: TObject);
begin
  pnlHelpA1.Visible := False;
end;

procedure TFrm_ACC.btnHelpA1Click(Sender: TObject);
begin
  pnlHelpA1.Left := (Width - pnlHelpA1.Width) div 2;
  pnlHelpA1.top := (Height - pnlHelpA1.Height) div 2;
  pnlHelpA1.Visible := True;
  pnlHelpA1.BringToFront;
end;

procedure TFrm_ACC.btnHelpA7Click(Sender: TObject);
begin
  pnlHelpA7.Left := (Width - pnlHelpA7.Width) div 2;
  pnlHelpA7.top := (Height - pnlHelpA7.Height) div 2;
  pnlHelpA7.Visible := True;
  pnlHelpA7.BringToFront;
end;

procedure TFrm_ACC.BtnSearch1A9Click(Sender: TObject);
begin
  if GT_SEL_BRNO.GUBUN <> '1' then
  begin
    GMessagebox('SMS캐쉬 충전내역은 지사를 선택하셔야 합니다.', CDMSE);
    proc_init_smscharge;
  end else
  begin
    cxGBA9.Enabled := True;
    proc_SMS_charge;
  end;
end;

procedure TFrm_ACC.proc_SMS_charge;
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
  rv_str, msg: string;
  iCash, iCnt1, iCnt2, iValue1, iValue2: Double;
  ls_rxxml: WideString;

  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err: string;
  ls_Rcrd: TStringList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    if (GT_USERIF.LV = '10') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
    begin
      msg := '[%s(%s)]  지사에서 정산관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
			GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
      proc_init_smscharge;
      Exit;
    end;

    if fGetChk_Search_HdBrNo('SMS캐쉬충전내역조회') then Exit;

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_ACC_SMS_CASH, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [GT_SEL_BRNO.BrNo]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRCA0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
    Screen.Cursor := crHandPoint;

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
            if (not xdom.loadXML(ls_rxxml)) then
            begin
              Screen.Cursor := crDefault;
              ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
              Exit;
            end;
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_Msg_Err) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              ls_Rcrd := TStringList.Create;
              try
                GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
                iCash   := StrToFloatDef(ls_Rcrd[0], 0);
                iValue1 := StrToFloatDef(ls_Rcrd[2], 0);
                iValue2 := StrToFloatDef(ls_Rcrd[3], 0);
                iCnt1 := iCash / iValue1;
                iCnt2 := iCash / iValue2;
                cxLblSMCashA9.Caption := FormatFloat('#,##0.#', StrToFloat(ls_Rcrd[0]));
                cxLblBrCashA9.Caption := FormatFloat('#,##0.#', StrToFloat(ls_Rcrd[1]));
                cxLblSMCnt1A9.Caption := ls_Rcrd[2] + ' 원 / 건당 (일반SMS만 보낼때 전송가능건수 : ' + FormatFloat('#,##0', iCnt1) + ' 건)';
                cxLblSMCnt2A9.Caption := ls_Rcrd[3] + ' 원 / 건당 (광고SMS만 보낼때 전송가능건수 : ' + FormatFloat('#,##0', iCnt2) + ' 건)';
              finally
                ls_Rcrd.Free;
              end;
              GridA9DBTableView.DataController.SetRecordCount(0);
              proc_SMS_Search;
            end else
            begin
              Screen.Cursor := crDefault;
              GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
            end;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      Frm_Flash.Hide;
      Screen.Cursor := crDefault;
      freeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin

    end;
  end;
end;

procedure TFrm_ACC.btnSearchA10Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

	GridA10_1DBTableView.DataController.SetRecordCount(0);
  proc_SMS_AllSearch;
end;

procedure TFrm_ACC.btnSearchA1Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;
	GridA1View.DataController.SetRecordCount(0);
  proc_CashList;
end;

procedure TFrm_ACC.btnSearchA2Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;
	//검색버튼 클릭시 ...
  GridA2View.DataController.SetRecordCount(0);
  proc_BankLog2('',1);
end;

procedure TFrm_ACC.btnSearchA3Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;
	//검색버튼 클릭시 ...
  if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) then
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      GMessagebox('지사를 선택하셔야 합니다.', CDMSE);
    end else
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      GridA3View.DataController.SetRecordCount(0);
      proc_OrderAcc;
    end;
  end else
  begin
    GridA3View.DataController.SetRecordCount(0);
    proc_OrderAcc;
  end;
end;

procedure TFrm_ACC.btnSearchA4Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;
	//검색버튼 클릭시 ...
  GridA4View.DataController.SetRecordCount(0);
	proc_BrNoCharge;
end;

procedure TFrm_ACC.btnSearchA5Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;
	//검색버튼 클릭시 ...
  GridA5View.DataController.SetRecordCount(0);
	proc_WkCharge;
end;

procedure TFrm_ACC.btnSearchA6Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;
	//검색버튼 클릭시 ...
	GridA6View.DataController.SetRecordCount(0);
	proc_WKSolution;
end;

procedure TFrm_ACC.btnSearchA7Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;
	//검색버튼 클릭시 ...
  GridA7View.DataController.SetRecordCount(0);
	proc_ShareCallAcc;
end;

procedure TFrm_ACC.btnSearchA9Click(Sender: TObject);
var
	msg: string;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;
	if (GT_USERIF.LV = '10') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 정산관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
    Exit;
	end;
  GridA9DBTableView.DataController.SetRecordCount(0);
	proc_SMS_Search;
end;

procedure TFrm_ACC.proc_SMS_Search;
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  sWhere: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if GridA9DBTableView.DataController.RecordCount > 0 then
    exit;

  if fGetChk_Search_HdBrNo('SMS캐쉬충전내역검색') then Exit;

	sWhere := ' AND BR_NO = ''' + GT_SEL_BRNO.BrNo + ''' ';

  if (cxDtStartA9.Text <> '') and (cxDtEndA9.Text <> '') then
    sWhere := sWhere + ' AND IN_DATE BETWEEN TO_DATE(''' + FormatDateTime('YYYYMMDD', cxDtStartA9.Date) +
      FormatDateTime('HHNNSS', cxTeStartA9.Time) + ''',''YYYYMMDDHH24MISS'') ' + ' AND TO_DATE('''
      + FormatDateTime('YYYYMMDD', cxDtEndA9.Date) + FormatDateTime('HHNNSS', cxTeEndA9.Time) +
      ''',''YYYYMMDDHH24MISS'') '
  else
  if (cxDtStartA9.Text <> '') and (cxDtEndA9.Text = '') then
    sWhere := sWhere + ' AND IN_DATE >= TO_DATE(''' + FormatDateTime('YYYYMMDD', cxDtStartA9.Date) +
      FormatDateTime('HHNNSS', cxTeStartA9.Time) + ''',''YYYYMMDDHH24MISS'') '
  else
  if (cxDtStartA9.Text = '') and (cxDtEndA9.Text <> '') then
    sWhere := sWhere + ' AND TO_DATE(''' + FormatDateTime('YYYYMMDD', cxDtEndA9.Date)
      + FormatDateTime('HHNNSS', cxTeEndA9.Time) + ''',''YYYYMMDDHH24MISS'') >= IN_DATE ';

	ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
	fGet_BlowFish_Query(GSQ_ACC_SMS_CHARGE, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRSMSCHARGE', [rfReplaceAll]);
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

procedure TFrm_ACC.proc_SMS_AllSearch;
var
  ls_TxQry, ls_TxLoad, sQueryTemp, sHdNo : string;
  sWhere, msg : string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if (GT_USERIF.LV = '10') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 정산관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('SMS캐쉬일괄충전내역검색') then Exit;

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) And ( GT_USERIF.Master <> 'y' ) then     // 20120629 LYB
  begin
    sHdNo := scb_HdNo[cxcbCashMoveHdName5.ItemIndex];
    sWhere := Format(' AND HD_NO = ''%s'' ' +
                     ' AND HD_NO IN (SELECT HD_NO FROM CDMS_FAMILY_PER WHERE MEM_PER=''11111'' AND MEM_ID = ''%s'') ' +
                     ' AND BR_NO IN (SELECT BR_NO FROM CDMS_FAMILY_PER WHERE MEM_PER=''11111'' AND MEM_ID = ''%s'') ', [sHdNo, GT_USERIF.ID, GT_USERIF.ID]);
  end else
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) And ( GT_USERIF.Master = 'y' ) then     // 20120629 LYB
  begin
    sHdNo := scb_HdNo[cxcbCashMoveHdName5.ItemIndex];
    sWhere := Format(' AND HD_NO = ''%s'' ', [sHdNo]);
  end else
  if (GT_USERIF.LV = '10') then
  begin
  	sWhere := ' AND BR_NO = ''' + GT_SEL_BRNO.BrNo + ''' '
  end else
  begin
    sHdNo := GT_USERIF.HD;
    sWhere := format(' AND HD_NO = ''%s'' ', [sHdNo]);
  end;

  if (cxDtStartA10.Text <> '') and (cxDtEndA10.Text <> '') then
    sWhere := sWhere + ' AND IN_DATE BETWEEN TO_DATE(''' +
      FormatDateTime('YYYYMMDD', cxDtStartA10.Date) +
      FormatDateTime('HHNNSS'  , cxTeStartA10.Time) + ''',''YYYYMMDDHH24MISS'') ' + ' AND TO_DATE(''' +
      FormatDateTime('YYYYMMDD', cxDtEndA10.Date)   +
      FormatDateTime('HHNNSS'  , cxTeEndA10.Time)   + ''',''YYYYMMDDHH24MISS'') '
  else
  if (cxDtStartA10.Text <> '') and (cxDtEndA10.Text = '') then
    sWhere := sWhere + ' AND IN_DATE >= TO_DATE(''' +
      FormatDateTime('YYYYMMDD', cxDtStartA10.Date) +
      FormatDateTime('HHNNSS'  , cxTeStartA10.Time) + ''',''YYYYMMDDHH24MISS'') '
  else
  if (cxDtStartA10.Text = '') and (cxDtEndA10.Text <> '') then
    sWhere := sWhere + ' AND TO_DATE(''' +
      FormatDateTime('YYYYMMDD', cxDtEndA10.Date) +
      FormatDateTime('HHNNSS'  , cxTeEndA10.Time) + ''',''YYYYMMDDHH24MISS'') >= IN_DATE ';

	ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
	fGet_BlowFish_Query(GSQ_ACC_SMS_CHARGE, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRSMSALLCHARGE', [rfReplaceAll]);
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

procedure TFrm_ACC.chkUseCashMoveDefaultClick(Sender: TObject);
var
  BrNo, BrName: string;
begin
  if (cxcbCashMoveBrName2.ItemIndex = 0) and (TcxCheckBox(Sender).checked) then
  begin
		GMessagebox('기본 출금지사 선택을 위해 지사를 선택하셔야 합니다.', CDMSE);
    TcxCheckBox(Sender).checked := False;
    edtCashMoveDefaultBranch.Clear;
    edtCashMoveDefaultBranch.Hint := '';
    Exit;
  end;

  if TcxCheckBox(Sender).Checked then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      BrNo := LeftStr(cxcbCashMoveBrName2.Text, Pos('(', cxcbCashMoveBrName2.Text) - 1)
    else
      BrNo := scb_BranchCode[cxcbCashMoveBrName2.ItemIndex - 1];

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      BrName := Copy(cxcbCashMoveBrName2.Text, Pos('(', cxcbCashMoveBrName2.Text) + 1,  Length(cxcbCashMoveBrName2.Text) - (Pos('(', cxcbCashMoveBrName2.Text)+1))
    else
      BrName := scb_BranchName[cxcbCashMoveBrName2.ItemIndex - 1];
  end else
  begin
    BrNo := '';
    BrName := '';
  end;
  SetCashMoveDefaultBranch(TcxCheckBox(Sender).Checked, BrNo, BrName);
end;

procedure TFrm_ACC.cxBrCashMoveBands1HeaderClick(Sender: TObject);
var
  i: Integer;
begin
  try
    for i := 0 to cxBrCashMove.ColumnCount - 1 do
    begin
      if i <> 1 then
      begin
        cxBrCashMove.Columns[i].SortIndex := -1;
        cxBrCashMove.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxBrCashMove.Columns[1].SortOrder = soNone) or
      (cxBrCashMove.Columns[1].SortOrder = soDescending) then
      cxBrCashMove.Columns[1].SortOrder := soAscending
    else
    if cxBrCashMove.Columns[1].SortOrder = soAscending then
      cxBrCashMove.Columns[1].SortOrder := soDescending;
    cxBrCashMove.Columns[1].SortIndex := 0;
    cxBrCashMove.DataController.FocusedRecordIndex := 0;

    gfSetIndexNo(cxBrCashMove, GS_SortNoChange);
  except
    on e: exception do
    begin

    end;
  end;
end;

procedure TFrm_ACC.cxBrCashMoveBands2HeaderClick(Sender: TObject);
var
  i: Integer;
begin
  try
    for i := 0 to cxBrCashMove.ColumnCount - 1 do
    begin
      if i <> 2 then
      begin
        cxBrCashMove.Columns[i].SortIndex := -1;
        cxBrCashMove.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxBrCashMove.Columns[2].SortOrder = soNone) or
      (cxBrCashMove.Columns[2].SortOrder = soDescending) then
      cxBrCashMove.Columns[2].SortOrder := soAscending
    else
    if cxBrCashMove.Columns[2].SortOrder = soAscending then
      cxBrCashMove.Columns[2].SortOrder := soDescending;
    cxBrCashMove.Columns[2].SortIndex := 0;
		cxBrCashMove.DataController.FocusedRecordIndex := 0;

    gfSetIndexNo(cxBrCashMove, GS_SortNoChange);
  except
    on e: exception do
    begin

    end;
  end;
end;

procedure TFrm_ACC.cxBrCashMoveBands3HeaderClick(Sender: TObject);
begin
  if cxChkSel.Checked then cxChkSel.Checked := False
                      else cxChkSel.Checked := True;
end;

procedure TFrm_ACC.cxBtnOKLA8Click(Sender: TObject);
var
  iCash, iCash2: Double;
begin
  if (cxcbCashMoveBrName1.ItemIndex = 0) or (cxcbCashMoveBrName2.ItemIndex = 0) then
  begin
    GMessagebox('지사를 선택하셔야 합니다.', CDMSE);
    Exit;
  end;

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
  begin
    if LeftStr(cxcbCashMoveBrName1.Text, Pos('(', cxcbCashMoveBrName1.Text) - 1) = LeftStr(cxcbCashMoveBrName2.Text, Pos('(', cxcbCashMoveBrName2.Text) - 1) then
    begin
      GMessagebox('출금지사와 입금지사가 동일합니다.', CDMSE);
      Exit;
    end;
  end else
  begin
    if cxcbCashMoveBrName1.ItemIndex = cxcbCashMoveBrName2.ItemIndex then
    begin
      GMessagebox('출금지사와 입금지사가 동일합니다.', CDMSE);
      Exit;
    end;
  end;

  if cxrbBrCash.Checked then
    iCash := StrToFloatDef(StringReplace(cxLblOBrCash.Caption, ',', '', [rfReplaceAll]), 0)
  else
    iCash := StrToFloatDef(StringReplace(cxLblOSmCash.Caption, ',', '', [rfReplaceAll]), 0);

  iCash2 := StrToFloatDef(StringReplace(cxEdtLMoveAmt.Text, ',', '', [rfReplaceAll]), 0);

	if iCash2 <= 0 then
  begin
		GMessagebox('0원보다 적은 경우 이동되지 않습니다.', CDMSE);
    cxEdtLMoveAmt.SetFocus;
    Exit;
  end;

  if iCash2 > iCash then
  begin
    GMessagebox('이동할 캐쉬가 출금할 캐쉬보다 크면은 캐쉬 이동을 할 수 없습니다.'+ #13#10
      + '출금할 지사를 다시선택하던가 이동할 캐쉬를 줄이세요', CDMSE);
    Exit;
  end;
  proc_CashMove(0);
end;

procedure TFrm_ACC.cxBtnOKRA8Click(Sender: TObject);
var
  i, iCnt: Integer;
  sMsg : String;
  bOk : Boolean;
begin
	if cxcbCashMoveBrName4.ItemIndex = 0 then
  begin
    GMessagebox('지사를 선택하셔야 합니다', CDMSE);
    exit;
  end;

  iCnt := 0;
  for i := 0 to cxBrCashMove.DataController.RecordCount - 1 do
  begin
    if cxBrCashMove.DataController.Values[i, 3] = '1' then
    begin
      iCnt := 1;
      Break;
    end;
  end;

  if iCnt = 0 then
  begin
    if rbCashOut.Checked then GMessagebox('입금할 지사가 없습니다.', CDMSE) else
    if rbCashIn .Checked then GMessagebox('출금할 지사가 없습니다.', CDMSE) else
    Exit;
  end;

  if (cxRBCashM.Checked) and
	  	(StrToIntDef(StringReplace(cxEdtRMoveAmt.Text, ',', '', [rfReplaceAll]), 0) <= 0) then
  begin
		GMessagebox('0원보다 적은 캐쉬 이동할수 없습니다.', CDMSE);
    Exit;
  end;

  bOk := True;
  if rbCashIn .Checked then
  begin
    for i := 0 to cxBrCashMove.DataController.RecordCount - 1 do
    begin
      if cxBrCashMove.DataController.Values[i, 3] = '1' then
      begin
        if StrToIntDef(cxBrCashMove.DataController.Values[i, 2], 0) < cxEdtRMoveAmt.Value then
        begin
          sMsg := '선택하신 지사[' + cxBrCashMove.DataController.Values[i, 1] + '] 지사캐쉬 금액이 부족합니다.' + #13#10 +
                  '금액 확인 바랍니다';
          GMessagebox(sMsg, CDMSE);
          cxBrCashMove.DataController.FocusedRecordIndex := i;
          bOk := False;
          Break;
        end;
      end;
    end;
  end;

  if Not bOk then Exit;

  if rbCashOut.Checked then proc_CashMove(1) else
  if rbCashIn .Checked then proc_CashInMove;
end;

procedure TFrm_ACC.BtnApplyA10Click(Sender: TObject);
var i, iCheck, iAmt : Integer;
begin
	if GridA10DBTableView.DataController.RecordCount < 1 then exit;
  try
    GridA10DBTableView.BeginUpdate();
    for i := 0 to GridA10DBTableView.DataController.RecordCount - 1 do
    begin
      if rbASel.Checked then
      begin
        iAmt := EdtChargeCashA9_1.Value - GridA10DBTableView.DataController.Values[i, 3];
        if (iAmt > 0) And (GridA10DBTableView.DataController.Values[i, 2] >= iAmt) then
          GridA10DBTableView.DataController.Values[i, 5] := iAmt
        else
          GridA10DBTableView.DataController.Values[i, 5] := 0;
      end else
      if rbBSel.Checked then
      begin
        if GridA10DBTableView.DataController.Values[i, 2] >= EdtChargeCashA9_1.Value then
          GridA10DBTableView.DataController.Values[i, 5] := EdtChargeCashA9_1.Value
        else
          GridA10DBTableView.DataController.Values[i, 5] := 0;
      end;
    end;
  finally
    GridA10DBTableView.EndUpdate();
  end;
end;

procedure TFrm_ACC.BtnSearch1A10Click(Sender: TObject);
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  rv_str, swhere, sHdNo : string;
  ls_rxxml: WideString;

  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err: string;
  ls_Rcrd: TStringList;
  i, iRow: Integer;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if cxcbCashMoveHdName5.ItemIndex < 0 then Exit;
	GridA10_1DBTableView.DataController.SetRecordCount(0);
  
  try
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) And ( GT_USERIF.Master <> 'y' ) then     // 20120629 LYB
    begin
			sHdNo := scb_HdNo[cxcbCashMoveHdName5.ItemIndex];
      sWhere := format(' WHERE HD_NO = ''%s'' AND USE_YN = ''y'' ' +
                       '   AND HD_NO IN (SELECT HD_NO FROM CDMS_FAMILY_PER WHERE MEM_PER=''11111'' AND MEM_ID = ''%s'') ' +
                       '   AND BR_NO IN (SELECT BR_NO FROM CDMS_FAMILY_PER WHERE MEM_PER=''11111'' AND MEM_ID = ''%s'') ' +
                       ' ORDER BY ' +
                       ' ( SELECT HD_LIST FROM CDMS_HEAD WHERE HD_NO = B.HD_NO ), HD_NO, (CASE WHEN HD_NO = ''A922'' THEN CASE WHEN BR_LIST IS NULL THEN 998 ELSE BR_LIST END ELSE BR_LIST END), BR_NO, IN_DATE', [sHdNo, GT_USERIF.ID, GT_USERIF.ID]);
    end else
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) And ( GT_USERIF.Master = 'y' ) then     // 20120629 LYB
		begin
      sHdNo := scb_HdNo[cxcbCashMoveHdName5.ItemIndex];
      sWhere := format('WHERE HD_NO = ''%s'' AND USE_YN = ''y'' ORDER BY ' +
                       ' ( SELECT HD_LIST FROM CDMS_HEAD WHERE HD_NO = B.HD_NO ), HD_NO, (CASE WHEN HD_NO = ''A922'' THEN CASE WHEN BR_LIST IS NULL THEN 998 ELSE BR_LIST END ELSE BR_LIST END), BR_NO, IN_DATE', [sHdNo]);
    end else
		if ( GT_USERIF.LV = '60' ) then     // 패밀리 아닌 본사관리자는 자신의 지사 전체 조회 20210902 KHS
		begin
			sHdNo := GT_USERIF.HD;
			sWhere := format('WHERE HD_NO = ''%s'' AND USE_YN = ''y'' ORDER BY ' +
											 ' ( SELECT HD_LIST FROM CDMS_HEAD WHERE HD_NO = B.HD_NO ), HD_NO, (CASE WHEN HD_NO = ''A922'' THEN CASE WHEN BR_LIST IS NULL THEN 998 ELSE BR_LIST END ELSE BR_LIST END), BR_NO, IN_DATE', [sHdNo]);
		end else
		if ( GT_USERIF.LV = '40' ) then     // 지사관리자는 자신의 지사만 조회 20210902 KHS
		begin
			sHdNo := GT_USERIF.HD;
			sWhere := format('WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' AND USE_YN = ''y'' ORDER BY ' +
											 ' ( SELECT HD_LIST FROM CDMS_HEAD WHERE HD_NO = B.HD_NO ), HD_NO, (CASE WHEN HD_NO = ''A922'' THEN CASE WHEN BR_LIST IS NULL THEN 998 ELSE BR_LIST END ELSE BR_LIST END), BR_NO, IN_DATE', [sHdNo, GT_USERIF.BR]);
		end;

		ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_ACC_BRANCH_CASH, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sWhere]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRCA0003', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    GridA10DBTableView.DataController.SetRecordCount(0);
    Screen.Cursor := crHandPoint;
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
            if (not xdom.loadXML(ls_rxxml)) then
            begin
              Screen.Cursor := crDefault;
              ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
              Exit;
            end;
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_Msg_Err) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              if (0 < GetXmlRecordCount(ls_rxxml)) then
              begin
                ls_Rcrd := TStringList.Create;
                try
                  GridA10DBTableView.BeginUpdate();
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

                    iRow := GridA10DBTableView.DataController.AppendRecord;
                    GridA10DBTableView.DataController.Values[iRow, 0] := iRow + 1;
                    GridA10DBTableView.DataController.Values[iRow, 1] := ls_Rcrd[1] + ' ( ' + ls_Rcrd[0] + ' )';
                    GridA10DBTableView.DataController.Values[iRow, 2] := ls_Rcrd[2];
                    GridA10DBTableView.DataController.Values[iRow, 3] := ls_Rcrd[3];
                    GridA10DBTableView.DataController.Values[iRow, 4] := '0';
                    GridA10DBTableView.DataController.Values[iRow, 5] := '0';
                    GridA10DBTableView.DataController.Values[iRow, 6] := ls_Rcrd[0];
                  end;
                finally
                  GridA10DBTableView.EndUpdate();
                  ls_Rcrd.Free;
                end;
              end;
            end else
            begin
              Screen.Cursor := crDefault;
              GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
            end;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      Frm_Flash.Hide;
      Screen.Cursor := crDefault;
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin

    end;
  end;
end;

procedure TFrm_ACC.SetCashMoveDefaultBranch(AUse: Boolean; ABrNo,
  ABrName: string);
begin
  FUseCashMoveDefaultBranch := AUse;
  FCashMoveDefaultBrNo := ABrNo;
  FCashMoveDefaultBrName := ABrName;

  chkUseCashMoveDefault.Checked := AUse;
  if ABrName <> '' then
    edtCashMoveDefaultBranch.Text := Format('(%s) %s', [ABrNo, ABrName])
  else
    edtCashMoveDefaultBranch.Text := '';
  edtCashMoveDefaultBranch.Hint := ABrNo;

  GS_EnvFile.WriteBool('CashMove', Format('Use-%s', [GT_USERIF.ID]), FUseCashMoveDefaultBranch);
  GS_EnvFile.WriteString('CashMove', Format('BrNo-%s', [GT_USERIF.ID]), FCashMoveDefaultBrNo);
  GS_EnvFile.WriteString('CashMove', Format('BrName-%s', [GT_USERIF.ID]), FCashMoveDefaultBrName);
end;

function TFrm_ACC.SelectCashMoveDefaultHdNm(ABrNo: string): Boolean;
var i : Integer;
begin
  Result := False;
  if scb_BranchCode.IndexOf(ABrNo) >= 0 then
  begin
    for i := 0 to scb_HdNo.Count - 1 do
    begin
      if scb_HdNo[i] = scb_HdCode[scb_BranchCode.IndexOf(ABrNo)] then
      begin
        cxcbCashMoveHdName2.ItemIndex := i;
      end;
    end;
    Result := True;
  end;
end;

function TFrm_ACC.SelectCashMoveDefaultBranch(ABrNo: string): Boolean;
begin
  Result := False;
  if scb_BranchCode.IndexOf(ABrNo) >= 0 then
  begin
    cxcbCashMoveBrName2.ItemIndex := scb_BranchCode.IndexOf(ABrNo) + 1;
    Result := True;
  end;
end;

function TFrm_ACC.SelectCashMoveDefaultFamilyBranch(
  ABrNo: string): Boolean;
var i : Integer;
begin
  Result := False;

  for i := 0 to cxcbCashMoveBrName2.Properties.Items.Count - 1 do
  begin
    if LeftStr(cxcbCashMoveBrName2.Properties.Items.Strings[i], Pos('(', cxcbCashMoveBrName2.Properties.Items.Strings[i]) - 1) = ABrNo then
    begin
      cxcbCashMoveBrName2.ItemIndex := i;
      Result := True;
    end;
  end;
end;

procedure TFrm_ACC.proc_CashMove(iType: Integer);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, ls_Msg_Err, sMsg: string;
  sTemp, sParam: string;
  ls_rxxml: WideString;
  i, iCnt : Integer;
  asParam: array[1..7] of string;
  ls_Rcrd: TStringList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE2.xml');
  if iType = 0 then
  begin
    if cxrbBrCash.Checked then
      asParam[1] := IntToStr(1)
    else
      asParam[1] := IntToStr(2);

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      asParam[2] := scb_HdNo[cxcbCashMoveHdName1.ItemIndex]   // 입금본사코드
    else
      asParam[2] := GT_USERIF.HD;

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      asParam[3] := LeftStr(cxcbCashMoveBrName1.Text, Pos('(', cxcbCashMoveBrName1.Text) - 1)
    else
      asParam[3] := scb_BranchCode[cxcbCashMoveBrName1.ItemIndex - 1];

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      asParam[4] := LeftStr(cxcbCashMoveBrName2.Text, Pos('(', cxcbCashMoveBrName2.Text) - 1)
    else
      asParam[4] := scb_BranchCode[cxcbCashMoveBrName2.ItemIndex - 1];

    asParam[5] := StringReplace(cxEdtLMoveAmt.Text, ',', '', [rfReplaceAll]);
    asParam[6] := GT_USERIF.ID;
    asParam[7] := edtCashMoveMemo.Text;
    sTemp := 'BRCASH_SMSCASH_MOVE2(?';
    iCnt := 7;
    for i := 1 to iCnt do
    begin
      sTemp := sTemp + ',?';
      sParam := sParam + StringReplace(ls_Param, 'ParamString', asParam[i], [rfReplaceAll]);
    end;
    sTemp := sTemp + ')';
  end else
  if iType = 1 then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      asParam[1] := LeftStr(cxcbCashMoveBrName4.Text, Pos('(', cxcbCashMoveBrName4.Text) - 1)
    else
      asParam[1] := scb_BranchCode[cxcbCashMoveBrName4.itemIndex - 1];

    sTemp := '';
    for i := 0 to cxBrCashMove.DataController.RecordCount - 1 do
    begin
      if cxBrCashMove.DataController.Values[i, 3] = '1' then
      begin
        if sTemp = '' then
          sTemp := cxBrCashMove.DataController.Values[i, 4]
        else
          sTemp := sTemp + ',' + cxBrCashMove.DataController.Values[i, 4];
      end;
    end;
    asParam[2] := sTemp;
    if cxRBCashM.Checked then
      asParam[3] := '1'
    else
      asParam[3] := '2';
    asParam[4] := StringReplace(cxEdtRMoveAmt.Text, ',', '', [rfReplaceAll]);
    asParam[5] := GT_USERIF.ID;
    asParam[6] := edtCashMoveMultiMemo.Text;
    sTemp := 'BRCASH_MOVE2(?';
    iCnt := 6;
    for i := 1 to iCnt do
    begin
      sTemp := sTemp + ',?';
      sParam := sParam + StringReplace(ls_Param, 'ParamString', asParam[i], [rfReplaceAll]);
    end;
    sTemp := sTemp + ')';
  end;

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BGROUPSAVE', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(iCnt), [rfReplaceAll]);
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
          if ('0000' = ls_Msg_Err) then
          begin
            if iType = 0 then
            begin
              GMessagebox(ReplaceAll(sMsg, '\n', #13#10), CDMSI);
              cxcbCashMoveBrName1Click(cxcbCashMoveBrName1);
              cxcbCashMoveBrName2Click(cxcbCashMoveBrName2);
              cxEdtLMoveAmt.Value := 0;
              edtCashMoveMemo.Clear;
            end else
            if iType = 1 then
            begin
              ls_Rcrd := TStringList.Create;
              try
                GetTextSeperationEx('|', sMsg, ls_Rcrd);
                sMsg := '성공건수 : ' + ls_Rcrd[0] + ' 개' + #13#10
                      + '출금금액 : ' + FormatFloat('#,##0', StrToFloatDef(ls_Rcrd[1], 0.0)) + ' 원';
                cxEdtRMoveAmt.Value := 0;
                edtCashMoveMultiMemo.Clear;
              finally
                ls_Rcrd.Free;
              end;
              GMessagebox(sMsg, CDMSI);
              cxEdtRMoveAmt.Value := 0;
              cxcbCashMoveBrName4Click(cxcbCashMoveBrName4);
            end;
          end else
            GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
        except
					GMessagebox('실패하였습니다.' + #13#10 + '다시 한번 시도해 보세요', CDMSE);
        end;
      end;
    end;
  finally
    Frm_Flash.Hide;
    Screen.Cursor := crDefault;
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_ACC.proc_CashInMove;
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, ls_Msg_Err, sMsg: string;
  sTemp, sParam: string;
  ls_rxxml: WideString;
  i, iCnt, ilCnt, il, ilSucc : Integer;
  iSAmt : Double;
  asParam: array[1..7] of string;
  lsMoveBrList : TStringList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  lsMoveBrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    lsMoveBrList.Clear;
    for i := 0 to cxBrCashMove.DataController.RecordCount - 1 do
    begin
      if cxBrCashMove.DataController.Values[i, 3] = '1' then
      begin
        lsMoveBrList.Add(cxBrCashMove.DataController.Values[i, 4]);
      end;
    end;

    ilCnt := lsMoveBrList.Count - 1;
    ilSucc := 0;
    iSAmt := 0;
    for il := 0 to lsMoveBrList.Count - 1 do
    begin
      sParam := '';
      ls_TxLoad := GTx_UnitXmlLoad('CALLABLE2.xml');

      asParam[1] := IntToStr(1);    // 지사캐쉬

      // 입금본사코드
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then
        asParam[2] := scb_HdNo[cxcbCashMoveHdName4.ItemIndex]
      else
        asParam[2] := GT_USERIF.HD;

      // 입금지사코드
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        asParam[3] := LeftStr(cxcbCashMoveBrName4.Text, Pos('(', cxcbCashMoveBrName4.Text) - 1)
      else
        asParam[3] := scb_BranchCode[cxcbCashMoveBrName4.itemIndex - 1];

      // 출금지사코드
      asParam[4] := lsMoveBrList[il];

      asParam[5] := StringReplace(cxEdtRMoveAmt.Text, ',', '', [rfReplaceAll]);
      asParam[6] := GT_USERIF.ID;
      asParam[7] := edtCashMoveMultiMemo.Text;

      sTemp := 'BRCASH_SMSCASH_MOVE2(?';
      iCnt := 7;
      for i := 1 to iCnt do
      begin
        sTemp := sTemp + ',?';
        sParam := sParam + StringReplace(ls_Param, 'ParamString', asParam[i], [rfReplaceAll]);
      end;
      sTemp := sTemp + ')';

      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BGROUPSAVE', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(iCnt), [rfReplaceAll]);
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
              if il < ilCnt then
              begin
                if ('0000' = ls_Msg_Err) then
                begin
                  Inc(ilSucc);
                  iSAmt := iSAmt + cxEdtRMoveAmt.Value;
                end;
              end else
              begin
                if ('0000' = ls_Msg_Err) then
                begin
                  Inc(ilSucc);
                  iSAmt := iSAmt + cxEdtRMoveAmt.Value;
                end;

                sMsg := '성공건수 : ' + IntToStr(ilSucc) + ' 개' + #13#10
                      + '입금금액 : ' + FormatFloat('#,##0', iSAmt) + ' 원';

                GMessagebox(sMsg, CDMSI);
                cxEdtRMoveAmt.Value := 0;
                edtCashMoveMultiMemo.Clear;
                cxcbCashMoveBrName4Click(cxcbCashMoveBrName4);
              end;
            except
              GMessagebox('실패하였습니다.' + #13#10 + '다시 한번 시도해 보세요', CDMSE);
              Break;
            end;
            Sleep(10);
          end;
        end;
      finally
        FreeAndNil(slReceive);
      end;
    end;
  finally
    Frm_Flash.Hide;
    Screen.Cursor := crDefault;
    lsMoveBrList.Free;
  end;
end;

procedure TFrm_ACC.proc_Change_Title;
var
	i, iShow, iHide: Integer;
	ln_envfile: TIniFile;
begin
	SetDebugeWrite('TFrm_ACC.GridA7ViewColumnPosChanged');
	try
		ln_envfile := TIniFile.Create(ENVPATHFILE);
		try
			ln_envfile.EraseSection('GridA7_Title');
			//그리드 타이틀, 사이즈 저장

			iShow := 0;
			iHide := 0;
			for i := 0 to GridA7View.ColumnCount - 1 do
			begin
				if not GridA7View.Columns[i].Visible then Continue;

				ln_envfile.WriteString('GridA7_Title', IntToStr(iShow), GridA7View.Columns[i].Caption);

				Inc(iShow);
			end;
		finally
			FreeAndNil(ln_envfile);
		end;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_ACC.cxcbCashMoveBrName1Click(Sender: TObject);
var
  sBrNo: string;
begin
	if cxcbCashMoveBrName1.Tag = 1 then exit;

  if cxcbCashMoveBrName1.ItemIndex = 0 then
  begin
    cxLblIBrCash.Caption := '';
    cxLblISmCash.Caption := '';
    cxLblBrView.Visible := True;
  end else
  begin
    cxLblBrView.Visible := False;
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sBrNo := LeftStr(cxcbCashMoveBrName1.Text, Pos('(', cxcbCashMoveBrName1.Text) - 1)
    else
      sBrNo := scb_BranchCode[cxcbCashMoveBrName1.ItemIndex - 1];
    proc_brChage(0, sBrNo);
  end;
end;

procedure TFrm_ACC.cxcbCashMoveBrName1PropertiesChange(Sender: TObject);
begin
	if cxcbCashMoveBrName1.Tag = 1 then exit;
end;

procedure TFrm_ACC.cxcbCashMoveBrName2Click(Sender: TObject);
var
  sBrNo: string;
begin
	if cxcbCashMoveBrName2.Tag = 1 then exit;
  if cxcbCashMoveBrName2.ItemIndex = 0 then
  begin
    cxLblOBrCash.Caption := '';
    cxLblOSmCash.Caption := '';
    cxLblSMView.Visible := True;
  end else
  begin
    cxLblSMView.Visible := False;
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sBrNo := LeftStr(cxcbCashMoveBrName2.Text, Pos('(', cxcbCashMoveBrName2.Text) - 1)
    else
      sBrNo := scb_BranchCode[cxcbCashMoveBrName2.ItemIndex - 1];

    proc_brChage(1, sBrNo);
  end;
end;

procedure TFrm_ACC.cxcbCashMoveBrName2PropertiesChange(Sender: TObject);
begin
	if cxcbCashMoveBrName2.Tag = 1 then exit;
end;

procedure TFrm_ACC.cxcbCashMoveBrName4Click(Sender: TObject);
var
  sBrNo: string;
begin
	if cxcbCashMoveBrName4.Tag = 1 then exit;

  if cxcbCashMoveBrName4.ItemIndex = 0 then
  begin
    cxLblBrCash.Caption := '';
  end else
  if cxcbCashMoveBrName4.ItemIndex > 0 then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sBrNo := LeftStr(cxcbCashMoveBrName4.Text, Pos('(', cxcbCashMoveBrName4.Text) - 1)
    else
      sBrNo := scb_BranchCode[cxcbCashMoveBrName4.ItemIndex - 1];

    cxBrCashMove.DataController.SetRecordCount(0);
    cxChkSel.Checked := False;
		proc_brChage(2, sBrNo);
  end;
end;

procedure TFrm_ACC.cxcbCashMoveBrName4PropertiesChange(Sender: TObject);
begin
	if cxcbCashMoveBrName4.Tag = 1 then exit;
end;

procedure TFrm_ACC.cxcbCashMoveHdName1PropertiesChange(Sender: TObject);
begin
  CB_HdCng_BrCng(cxcbCashMoveHdName1, cxcbCashMoveBrName1);
end;

procedure TFrm_ACC.cxcbCashMoveHdName2PropertiesChange(Sender: TObject);
begin
  CB_HdCng_BrCng(cxcbCashMoveHdName2, cxcbCashMoveBrName2);
end;

procedure TFrm_ACC.cxcbCashMoveHdName4PropertiesChange(Sender: TObject);
begin
  CB_HdCng_BrCng(cxcbCashMoveHdName4, cxcbCashMoveBrName4);
  cxBrCashMove.DataController.SetRecordCount(0);
end;

procedure TFrm_ACC.cxcbCashMoveHdName5PropertiesChange(Sender: TObject);
begin
	if cxcbCashMoveHdName5.Tag = 99 then exit;
	lblHdNm.Caption := cxcbCashMoveHdName5.Text;
	BtnSearch1A10.Click;
end;

procedure TFrm_ACC.proc_BrNameSearch(iType: Integer; sBrNo, sHdNo : string);
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  rv_str, swhere: string;
  ls_rxxml: WideString;

  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err: string;
  ls_Rcrd: TStringList;
  i, iRow: Integer;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) And ( GT_USERIF.Master <> 'y' ) then     // 20120629 LYB
      sWhere := format(' WHERE BR_NO != ''%s'' AND HD_NO = ''%s'' AND USE_YN = ''y'' ' +
                       '   AND HD_NO IN (SELECT HD_NO FROM CDMS_FAMILY_PER WHERE MEM_PER=''11111'' AND MEM_ID = ''%s'') ' +
                       '   AND BR_NO IN (SELECT BR_NO FROM CDMS_FAMILY_PER WHERE MEM_PER=''11111'' AND MEM_ID = ''%s'') ' +
                       ' ORDER BY ' +
                       ' ( SELECT HD_LIST FROM CDMS_HEAD WHERE HD_NO = B.HD_NO ), HD_NO, (CASE WHEN HD_NO = ''A922'' THEN CASE WHEN BR_LIST IS NULL THEN 998 ELSE BR_LIST END ELSE BR_LIST END), BR_NO, IN_DATE', [sBrNo, sHdNo, GT_USERIF.ID, GT_USERIF.ID])
    else if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) And ( GT_USERIF.Master = 'y' ) then     // 20120629 LYB
      sWhere := format('WHERE BR_NO != ''%s'' AND HD_NO = ''%s'' AND USE_YN = ''y'' ORDER BY ' +
                       ' ( SELECT HD_LIST FROM CDMS_HEAD WHERE HD_NO = B.HD_NO ), HD_NO, (CASE WHEN HD_NO = ''A922'' THEN CASE WHEN BR_LIST IS NULL THEN 998 ELSE BR_LIST END ELSE BR_LIST END), BR_NO, IN_DATE', [sBrNo, sHdNo])
    else
      sWhere := format('WHERE BR_NO != ''%s'' AND HD_NO = ''%s'' AND USE_YN = ''y'' ORDER BY ' +
                       ' ( SELECT HD_LIST FROM CDMS_HEAD WHERE HD_NO = B.HD_NO ), HD_NO, (CASE WHEN HD_NO = ''A922'' THEN CASE WHEN BR_LIST IS NULL THEN 998 ELSE BR_LIST END ELSE BR_LIST END), BR_NO, IN_DATE', [sBrNo, GT_USERIF.HD]);

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_ACC_BRANCH_CASH, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sWhere]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRCA0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    Screen.Cursor := crHandPoint;
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
            if (not xdom.loadXML(ls_rxxml)) then
            begin
              Screen.Cursor := crDefault;
              ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
              Exit;
            end;
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_Msg_Err) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              if (0 < GetXmlRecordCount(ls_rxxml)) then
              begin
                ls_Rcrd := TStringList.Create;
                try
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

                    if iType = 1 then
                    begin
                      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
                      begin
                        iRow := cxBrCashMove.DataController.AppendRecord;
                        cxBrCashMove.DataController.Values[iRow, 0] := iRow + 1;
                        if RB_SelHdOpt2.Checked then
                          cxBrCashMove.DataController.Values[iRow, 1] := scb_HdNm[scb_HdNo.IndexOf(sHdNo)] + '_' + ls_Rcrd[1] + ' ( ' + ls_Rcrd[0] + ' )'
                        else
                          cxBrCashMove.DataController.Values[iRow, 1] := ls_Rcrd[1] + ' ( ' + ls_Rcrd[0] + ' )';
                        cxBrCashMove.DataController.Values[iRow, 2] := ls_Rcrd[2];
                        cxBrCashMove.DataController.Values[iRow, 3] := '0';
                        cxBrCashMove.DataController.Values[iRow, 4] := ls_Rcrd[0];
                      end else
                      begin
                        iRow := cxBrCashMove.DataController.AppendRecord;
                        cxBrCashMove.DataController.Values[iRow, 0] := iRow + 1;
                        cxBrCashMove.DataController.Values[iRow, 1] := ls_Rcrd[1] + ' ( ' + ls_Rcrd[0] + ' )';
                        cxBrCashMove.DataController.Values[iRow, 2] := ls_Rcrd[2];
                        cxBrCashMove.DataController.Values[iRow, 3] := '0';
                        cxBrCashMove.DataController.Values[iRow, 4] := ls_Rcrd[0];
                      end;
                    end;
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
            end else
            begin
              Screen.Cursor := crDefault;
              GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
            end;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      Frm_Flash.Hide;
      Screen.Cursor := crDefault;
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin

    end;
  end;
end;

procedure TFrm_ACC.proc_brChage(iType: Integer; sBrNo: string);
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
  rv_str, swhere: string;
  ls_rxxml: WideString;

  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err: string;
  ls_Rcrd: TStringList;
  slReceive: TStringList;
  ErrCode, i : integer;
begin
	try
    sWhere := format('WHERE BR_NO = ''%s'' ORDER BY BR_NAME ', [sBrNo]);
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_ACC_BRANCH_CASH, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRCA0001', [rfReplaceAll]);
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
            if (not xdom.loadXML(ls_rxxml)) then
            begin
              Screen.Cursor := crDefault;
              ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
              Exit;
            end;
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_Msg_Err) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
							ls_Rcrd := TStringList.Create;
              try
                GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
                if iType = 0 then
                begin
                  cxLblIBrCash.Caption := FormatFloat('#,##0', StrToFloat(ls_Rcrd[2]));
                  cxLblISmCash.Caption := FormatFloat('#,##0.#', StrToFloat(ls_Rcrd[3]));
                end else
                if iType = 1 then
                begin
                  cxLblOBrCash.Caption := FormatFloat('#,##0', StrToFloat(ls_Rcrd[2]));
                  cxLblOSmCash.Caption := FormatFloat('#,##0.#', StrToFloat(ls_Rcrd[3]));
                end else
                if iType = 2 then
                begin
                  cxLblBrCash.Caption := FormatFloat('#,##0', StrToFloat(ls_Rcrd[2]));
                  cxBrCashMove.BeginUpdate;
                  if RB_SelHdOpt2.Checked then     // 20120629 LYB
                  begin
                    for i := 0 to scb_HdNo.Count - 1 do
                    begin
                      proc_BrNameSearch(1, sBrNo, scb_HdNo[i]);
                    end;
                  end else
                  begin
                    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120704 LYB
                      proc_BrNameSearch(1, sBrNo, scb_HdNo[cxcbCashMoveHdName4.ItemIndex])
                    else
                      proc_BrNameSearch(1, sBrNo, GT_USERIF.HD);
                  end;
                  cxBrCashMove.EndUpdate;
                end;
              finally
                ls_Rcrd.Free;
              end;
            end else
            begin
              Screen.Cursor := crDefault;
              GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
            end;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      Screen.Cursor := crDefault;
      FreeAndNil(slReceive);
      Frm_Flash.Hide;
    end;
  except
    on E: Exception do
    begin

    end;
  end;
end;

procedure TFrm_ACC.cxCBChk0A7Click(Sender: TObject);
begin
  if not TcxCheckBox(Sender).Checked then
  begin
    cxCBChkA7.Tag := 1;
    cxCBChkA7.Checked := False;
    cxCBChkA7.Tag := 0;
  end;
end;

procedure TFrm_ACC.cxCBChkA7Click(Sender: TObject);
begin
  if cxCBChkA7.Tag = 1 then  Exit;

  if cxCBChkA7.Checked then
  begin
    cxCBChk0A7.Checked := True;
    cxCBChk1A7.Checked := True;
    cxCBChk2A7.Checked := True;
    cxCBChk3A7.Checked := True;
    cxCBChk4A7.Checked := True;
    cxCBChk5A7.Checked := True;
    cxCBChk6A7.Checked := True;
    cxCBChk7A7.Checked := True;
    cxCBChk8A7.Checked := True;
    cxCBChk9A7.Checked := True;
  end else
  begin
    cxCBChk0A7.Checked := False;
    cxCBChk1A7.Checked := False;
    cxCBChk2A7.Checked := False;
    cxCBChk3A7.Checked := False;
    cxCBChk4A7.Checked := False;
    cxCBChk5A7.Checked := False;
    cxCBChk6A7.Checked := False;
    cxCBChk7A7.Checked := False;
    cxCBChk8A7.Checked := False;
    cxCBChk9A7.Checked := False;
  end;
end;

procedure TFrm_ACC.cxCheckBox1PropertiesChange(Sender: TObject);
var i, iCheck: Integer;
begin
	if GridA10DBTableView.DataController.RecordCount < 1 then exit;
	if cxChkSel9.Checked then iCheck := 1
                       else iCheck := 0;
  try
    GridA10DBTableView.BeginUpdate();
  	for i := 0 to GridA10DBTableView.DataController.RecordCount - 1 do
    begin
      if iCheck = 1 then
      begin
        if GridA10DBTableView.DataController.Values[i, 5] > 0 then
          GridA10DBTableView.DataController.Values[i, 4] := IntToStr(iCheck);
      end else
        GridA10DBTableView.DataController.Values[i, 4] := IntToStr(iCheck);
    end;
  finally
    GridA10DBTableView.EndUpdate();
  end;
end;

procedure TFrm_ACC.cxChkSelPropertiesChange(Sender: TObject);
var i, iCheck: Integer;
begin
	if cxBrCashMove.DataController.RecordCount < 1 then exit;
	if cxChkSel.Checked then
  begin
		iCheck := 1;
	end else
	begin
		iCheck := 0;
	end;
	for i := 0 to cxBrCashMove.DataController.RecordCount - 1 do
  begin
    cxBrCashMove.DataController.Values[i, 3] := IntToStr(iCheck);
  end;
end;

procedure TFrm_ACC.cxEdtLMoveAmtKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if Sender = cxEdtLMoveAmt then
      edtCashMoveMemo.SetFocus
    else
    if Sender = edtCashMoveMemo then
      cxBtnOKLA8.SetFocus
    else
    if Sender = cxEdtRMoveAmt then
      edtCashMoveMultiMemo.SetFocus
    else
    if Sender = edtCashMoveMultiMemo then
      cxBtnOKRA8.SetFocus;
  end;
end;

procedure TFrm_ACC.cxPageControl1Change(Sender: TObject);
Var iTag : Integer;
begin
  if cxPageControl1.ActivePageIndex = 8 then
  begin
    BtnSearch1A9.Click;
  end;
  iTag := cxPageControl1.Pages[cxPageControl1.ActivePageIndex].Tag;
  if Assigned(Frm_JON51) then
      if TCK_USER_PER.BTM_MENUSCH = '1' then Frm_JON51.Menu_Use_Mark('ADD', iTag);
end;

procedure TFrm_ACC.edtCashMoveBrName1Enter(Sender: TObject);
begin
	lbSearchBranch1.Visible := False;
end;

procedure TFrm_ACC.edtCashMoveBrName1Exit(Sender: TObject);
begin
	lbSearchBranch1.Visible := (edtCashMoveBrName1.Text = '');
end;

procedure TFrm_ACC.edtCashMoveBrName1FocusChanged(Sender: TObject);
begin
	lbSearchBranch1.Visible := ( Not edtCashMoveBrName1.Focused ) And (edtCashMoveBrName1.Text = '');
end;

procedure TFrm_ACC.edtCashMoveBrName1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('TFrm_ACC.edtCashMoveBrName1KeyDown');
	if Key = VK_BACK then
	begin
		if (Length(edtCashMoveBrName1.Text) <= 1) then
		begin
			lst_BRList1.Items.Clear;
			searchBRlist1.Clear;
			lst_BRList1.Visible := False;
			Exit;
		end;
	end else
	if Key = VK_DOWN then
	begin
		if lst_BRLIst1.ItemIndex < 0 then lst_BRLIst1.ItemIndex := 0;
		if lst_BRList1.Visible then lst_BRList1.SetFocus;
	end else
	if Key = VK_RETURN then
	begin
		cxcbCashMoveBrName1.ItemIndex := StrToIntDef(searchBRlist1[0], 0);
		lst_BRList1.Visible := False;
		cxcbCashMoveBrName2.SetFocus;
	end;
end;

procedure TFrm_ACC.edtCashMoveBrName1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('TFrm_ACC.edtCashMoveBrName1KeyUp');
//		if (key <> 229) then  //  20191224 한컴입력기 에서는 모든 한글이 229로 넘어옴 그래서 삭제 KHS
	begin
		if Trim(edtCashMoveBrName1.Text) = '' then
		begin
			edtCashMoveBrName1.SetFocus;
			Exit;
		end;

		if Length(Trim(edtCashMoveBrName1.Text)) >= 1 then
		begin
			if not func_BrNameList_Search(1) then Exit;
		end;
	end;
end;

procedure TFrm_ACC.edtCashMoveBrName1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	SetDebugeWrite('TFrm_ACC.edtCashMoveBrName1MouseDown');
	if lst_BRList1.Items.Count > 0 then
	begin
		if lst_BRList1.Items.Count > 30 then
			lst_BRList1.Height := 500
		else
			lst_BRList1.Height := lst_BRList1.Items.Count * 18;
		lst_BRList1.Left := 20;
		lst_BRList1.Top := 165;
		lst_BRList1.Visible := True;
	end;
end;

procedure TFrm_ACC.edtCashMoveBrName1PropertiesChange(Sender: TObject);
begin
	if ( Not edtCashMoveBrName1.Focused ) then
		lbSearchBranch1.Visible := (edtCashMoveBrName1.Text = ''); //  입력 잔상.
end;

procedure TFrm_ACC.edtCashMoveBrName2Enter(Sender: TObject);
begin
	lbSearchBranch2.Visible := False;
end;

procedure TFrm_ACC.edtCashMoveBrName2Exit(Sender: TObject);
begin
	lbSearchBranch2.Visible := (edtCashMoveBrName2.Text = '');
end;

procedure TFrm_ACC.edtCashMoveBrName2FocusChanged(Sender: TObject);
begin
	lbSearchBranch2.Visible := ( Not edtCashMoveBrName2.Focused ) And (edtCashMoveBrName2.Text = '');
end;

procedure TFrm_ACC.edtCashMoveBrName2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('TFrm_ACC.edtCashMoveBrName2KeyDown');
	if Key = VK_BACK then
	begin
		if (Length(edtCashMoveBrName2.Text) <= 1) then
		begin
			lst_BRList2.Items.Clear;
			searchBRlist2.Clear;
			lst_BRList2.Visible := False;
			Exit;
		end;
	end else
	if Key = VK_DOWN then
	begin
		if lst_BRLIst2.ItemIndex < 0 then lst_BRLIst2.ItemIndex := 0;
		if lst_BRList2.Visible then lst_BRList2.SetFocus;
	end else
	if Key = VK_RETURN then
	begin
		cxcbCashMoveBrName2.ItemIndex := StrToIntDef(searchBRlist2[0], 0);
		lst_BRList2.Visible := False;
		edtCashMoveMemo.SetFocus;
	end;
end;

procedure TFrm_ACC.edtCashMoveBrName2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('TFrm_ACC.edtCashMoveBrName2KeyUp');
//		if (key <> 229) then  //  20191224 한컴입력기 에서는 모든 한글이 229로 넘어옴 그래서 삭제 KHS
	begin
		if Trim(edtCashMoveBrName2.Text) = '' then
		begin
			edtCashMoveBrName2.SetFocus;
			Exit;
		end;

		if Length(Trim(edtCashMoveBrName2.Text)) >= 1 then
		begin
			if not func_BrNameList_Search(2) then Exit;
		end;
	end;
end;

procedure TFrm_ACC.edtCashMoveBrName2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	SetDebugeWrite('TFrm_ACC.edtCashMoveBrName2MouseDown');
	if lst_BRList2.Items.Count > 0 then
	begin
		if lst_BRList2.Items.Count > 30 then
			lst_BRList2.Height := 500
		else
			lst_BRList2.Height := lst_BRList2.Items.Count * 18;
		lst_BRList2.Left := 286;
		lst_BRList2.Top := 165;
		lst_BRList2.Visible := True;
	end;
end;

procedure TFrm_ACC.edtCashMoveBrName3Enter(Sender: TObject);
begin
	lbSearchBranch3.Visible := False;
end;

procedure TFrm_ACC.edtCashMoveBrName3Exit(Sender: TObject);
begin
	lbSearchBranch3.Visible := (edtCashMoveBrName3.Text = '');
end;

procedure TFrm_ACC.edtCashMoveBrName3FocusChanged(Sender: TObject);
begin
	lbSearchBranch3.Visible := ( Not edtCashMoveBrName3.Focused ) And (edtCashMoveBrName3.Text = '');
end;

procedure TFrm_ACC.edtCashMoveBrName3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('TFrm_ACC.edtCashMoveBrName2KeyDown');
	if Key = VK_BACK then
	begin
		if (Length(edtCashMoveBrName3.Text) <= 1) then
		begin
			lst_BRList3.Items.Clear;
			searchBRlist3.Clear;
			lst_BRList3.Visible := False;
			Exit;
		end;
	end else
	if Key = VK_DOWN then
	begin
		if lst_BRList3.ItemIndex < 0 then lst_BRList3.ItemIndex := 0;
		if lst_BRList3.Visible then lst_BRList3.SetFocus;
	end else
	if Key = VK_RETURN then
	begin
		cxcbCashMoveBrName4.ItemIndex := StrToIntDef(searchBRlist3[0], 0);
		lst_BRList3.Visible := False;
		edtCashMoveMultiMemo.SetFocus;
	end;
end;

procedure TFrm_ACC.edtCashMoveBrName3KeyUp(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	SetDebugeWrite('TFrm_ACC.edtCashMoveBrName2KeyUp');
//		if (key <> 229) then  //  20191224 한컴입력기 에서는 모든 한글이 229로 넘어옴 그래서 삭제 KHS
	begin
		if Trim(edtCashMoveBrName3.Text) = '' then
		begin
			edtCashMoveBrName3.SetFocus;
			Exit;
		end;

		if Length(Trim(edtCashMoveBrName3.Text)) >= 1 then
		begin
			if not func_BrNameList_Search(3) then Exit;
		end;
	end;
end;

procedure TFrm_ACC.edtCashMoveBrName3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	SetDebugeWrite('TFrm_ACC.edtCashMoveBrName2MouseDown');
	if lst_BRList3.Items.Count > 0 then
	begin
		if lst_BRList3.Items.Count > 30 then
			lst_BRList3.Height := 500
		else
			lst_BRList3.Height := lst_BRList3.Items.Count * 18;
		lst_BRList3.Left := 238;
		lst_BRList3.Top := 171;
		lst_BRList3.Visible := True;
	end;
end;

procedure TFrm_ACC.EdtChargeCashA9_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then BtnApplyA10.Click;
end;

procedure TFrm_ACC.proc_BankLog;
var
  sNode, ls_TxLoad, startDate, endDate, sBrNo, sHdNo: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if GridA2View.DataController.RecordCount > 0 then
    Exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

	if fGetChk_Search_HdBrNo('통장식로그') then Exit;

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sHdNo := GT_SEL_BRNO.HDNO
    else
      sHdNo := GT_USERIF.HD;
    sBrNo := '';
    iType := 1;
  end else
  begin
    if (GT_USERIF.LV = '60') then
      sBrNo := GT_SEL_BRNO.BrNo
    else
      sBrNo := GT_USERIF.BR;
    sHdNo := '';
    iType := 0;
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

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'BANKACC01';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    if iType = 1 then
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS07' //본사
    else
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS03'; //지사

    if (cxDtStartA2.Text = '') or (cxDtEndA2.Text = '') then
    begin
      cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA2.Date := cxDtStartA2.Date + 1;
    end;
    startDate := FormatDateTime('YYYYMMDD', cxDtStartA2.Date) + FormatDateTime('HHNNSS', cxTeStartA2.Time);
    endDate   := FormatDateTime('YYYYMMDD', cxDtEndA2.Date) + FormatDateTime('HHNNSS', cxTeEndA2.Time);

    //노드를 복사해서 param을 생성한다....
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := endDate;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    if iType = 0 then
      lst_Node.item[2].attributes.getNamedItem('Value').Text := sBrNo
    else
      lst_Node.item[2].attributes.getNamedItem('Value').Text := sHdNo;

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
    xdom := nil;
  end;
end;

procedure TFrm_ACC.proc_OrderAcc;
var
  ls_TxLoad, startDate, endDate, sBrNo, sHdNo, sTmp: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  slReceive, slList: TStringList;
  ErrCode: integer;

	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	i, iTmp, j, iRow : Integer;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
  iBalju, iCharge, iCom, iComCash, iComCyCash, iCash, iBalju2,
  iCharge2, iCom2, iCnt: Integer;
  iRateBal, iRateCom: Double;
begin
  SetDebugeWrite('TFrm_ACC.proc_OrderAcc');
  Try
    if GridA3View.DataController.RecordCount > 0 then Exit;

    if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
    begin
      GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
      Exit;
    end;

    if fGetChk_Search_HdBrNo('오더정산') then Exit;

    if (GT_USERIF.LV = '60') then
      sBrNo := GT_SEL_BRNO.BrNo
    else
      sBrNo := GT_USERIF.BR;

    Param := sBrNo;
    Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtStartA3.Date)+FormatDateTime('HHNNSS', cxTeStartA3.Time);
    Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA3.Date  )+FormatDateTime('HHNNSS', cxTeEndA3.Time);

    btnSearchA3.Enabled := False;
    Screen.Cursor := crHourGlass;
    try
      slList := TStringList.Create;
      if not RequestBasePaging(GetSel06('BRCASH04', 'MNG_BR_CASH.BRCASH04', '1000', Param), slList, ErrCode, ErrMsg, 600000) then
      begin
        GMessagebox(Format('오더정산 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
        Screen.Cursor := crDefault;
        btnSearchA3.Enabled := True;
        Exit;
      end;

      GridA3View.BeginUpdate;
      GridA3View.DataController.SetRecordCount(0);

      Frm_Flash.cxPBar1.Properties.Max := slList.Count;
      Frm_Flash.cxPBar1.Position := 0;

			xdom := ComsDomDocument.Create;
      try
        for j := 0 to slList.Count - 1 do
        begin
          Frm_Flash.cxPBar1.Position := j + 1;
          Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
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
                ls_Rcrd.Insert(13, '');
                if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
                begin
                  iRow := GridA3View.DataController.AppendRecord;
                  // 1 Record 추가
                  GridA3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                  sTmp := GetStrToDateTimeGStr(ls_Rcrd[0], 4);
                  GridA3View.DataController.Values[iRow,  1] := sTmp;
                  GridA3View.DataController.Values[iRow,  2] := ls_Rcrd[1];                     //발주본사
                  GridA3View.DataController.Values[iRow,  3] := ls_Rcrd[2];                     //발주지사
                  GridA3View.DataController.Values[iRow,  4] := ls_Rcrd[3];                     //수주본사
                  GridA3View.DataController.Values[iRow,  5] := ls_Rcrd[4];                     //수주지사
                  GridA3View.DataController.Values[iRow,  6] := ls_Rcrd[5];                     //공유구분
                  GridA3View.DataController.Values[iRow,  7] := ls_Rcrd[6];                     //대표번호
                  GridA3View.DataController.Values[iRow,  8] := ls_Rcrd[7];                     //출발지
                  GridA3View.DataController.Values[iRow,  9] := ls_Rcrd[8];                     //도착지
                  GridA3View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[ 9], 0);    //이용금액
                  GridA3View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[10], 0);    //기사수수료
                  GridA3View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[19], 0);    //고용보험료
                  GridA3View.DataController.Values[iRow, 13] := StrToIntDef(ls_Rcrd[11], 0); //수수료(공용캐쉬)
                  // 정산비율 계산
                  iCharge := StrToIntDef(ls_Rcrd[9], 0);
                  iBalju := Abs(StrToIntDef(ls_Rcrd[12], 0));
                  iCom := StrToIntDef(ls_Rcrd[10], 0);
                  if iCharge = 0 then
                  begin
                    iRateBal := 0;
                    iRateCom := 0;
                  end else
                  begin
                    iRateBal := (iBalju * 100 div iCharge);
                    iRateCom := (iCom * 100 div iCharge) - iRateBal;
                    if iRateCom < 0 then
                      iRateCom := 0;
                  end;
                  iComCash := StrToIntDef(ls_Rcrd[11], 0);
                  iComCyCash := iCom - iComCash;
                  iCash := iCom + StrToIntDef(ls_Rcrd[12], 0);
                  GridA3View.DataController.Values[iRow, 14] := IntToStr(iComCyCash); //수수료(자체캐쉬)
                  GridA3View.DataController.Values[iRow, 15] := StrToIntDef(ls_Rcrd[12], 0); //정산금액
                  GridA3View.DataController.Values[iRow, 16] := IntToStr(iCash);      //수익금
                  if iBalju = 0 then
                    GridA3View.DataController.Values[iRow, 17] := ''                  //정산비율
                  else
                    GridA3View.DataController.Values[iRow, 17] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); //정산비율
                  GridA3View.DataController.Values[iRow, 18] := ls_Rcrd[14]; //운행기사명
                  GridA3View.DataController.Values[iRow, 19] := ls_Rcrd[15]; //기사사번
                  GridA3View.DataController.Values[iRow, 20] := ls_Rcrd[16]; //접수번호
                  GridA3View.DataController.Values[iRow, 21] := ls_Rcrd[17]; //공유차수

                  GridA3View.DataController.Values[iRow, 22] := ls_Rcrd[18]; //배차형식
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
      finally
  			xdom := Nil;
        GridA3View.EndUpdate;
        frm_Main.sbar_Message.Panels[4].Text := '';
			end;
    finally
			Screen.Cursor := crDefault;
      btnSearchA3.Enabled := True;
      Frm_Flash.Hide;
    end;
  except
    on E: Exception do
		begin
			Assert(False, E.Message);
		end;
  End;
end;

procedure TFrm_ACC.proc_BrNoCharge;
var
  sNode, ls_TxLoad, startDate, endDate, sBrNo, sHdNo, sWhere: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if GridA4View.DataController.RecordCount > 0 then
    Exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('지사충전내역') then Exit;

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sHdNo := GT_SEL_BRNO.HDNO
    else
      sHdNo := GT_USERIF.HD;
    sBrNo := '';
    iType := 1;
  end else
  begin
    if (GT_USERIF.LV = '60') then
      sBrNo := GT_SEL_BRNO.BrNo
    else
      sBrNo := GT_USERIF.BR;
    sHdNo := '';
    iType := 0;
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
    if cxSEdtA4.Text <> '' then
      sWhere := ' AND IN_ID = ''' + Param_Filtering(cxSEdtA4.Text) + ''' ';

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
		lst_Node.item[0].attributes.getNamedItem('Value').Text := 'BRNOACC01';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    if iType = 1 then
    begin
			if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
				lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS06' //본사
			else
				lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS06_8282SN'; //본사
    end else
			lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS05'; //지사

    lst_Node.item[0].attributes.getNamedItem('Backward').Text := sWhere;

    if (cxDtStartA4.Text = '') or (cxDtEndA4.Text = '') then
    begin
      cxDtStartA4.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA4.Date := cxDtStartA4.Date + 1;
    end;
    startDate := FormatDateTime('YYYYMMDD', cxDtStartA4.Date ) + FormatDateTime('HHNNSS', cxTeStartA4.Time);
    endDate   := FormatDateTime('YYYYMMDD', cxDtEndA4.Date) + FormatDateTime('HHNNSS', cxTeEndA4.Time);

    //노드를 복사해서 param을 생성한다....
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := endDate;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    if iType = 0 then
      lst_Node.item[2].attributes.getNamedItem('Value').Text := sBrNo
    else
      lst_Node.item[2].attributes.getNamedItem('Value').Text := sHdNo;

    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 +
      xDom.documentElement.xml;

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

procedure TFrm_ACC.proc_WkCharge;
var
  sNode, ls_TxLoad, startDate, endDate,	sBrNo, sHdNo, sWhere: string;
	ABrNo, AHdNo, Param : string;
	iType, i : Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
	XmlData, ErrMsg: string;
	lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
begin
	if GridA5View.DataController.RecordCount > 0 then
		Exit;

	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
	begin
		GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
		Exit;
	end;

  if fGetChk_Search_HdBrNo('기사충전내역') then Exit;

	if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then
	begin
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			sHdNo := GT_SEL_BRNO.HDNO
		else
			sHdNo := GT_USERIF.HD;
		sBrNo := '';
    iType := 1;
  end else
  begin
    if (GT_USERIF.LV = '60') then
			sBrNo := GT_SEL_BRNO.BrNo
    else
			sBrNo := GT_USERIF.BR;
		sHdNo := '';
    iType := 0;
  end;

	if cxSEdtA5.Text <> '' then
	begin
		if cxCbA5.ItemIndex = 0 then
			sWhere := ' AND C.IN_ID = ''' + Param_Filtering(cxSEdtA5.Text) + ''' '
		else
    if cxCbA5.ItemIndex = 1 then
		begin
			if GT_USERIF.LV = '60' then
			begin
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					AHdNo := GT_SEL_BRNO.HDNO
				else
					AHdNo := GT_USERIF.HD;
				ABrNo := IfThen(GT_SEL_BRNO.GUBUN = '0', '', GT_SEL_BRNO.BrNo);
			end else
      if GT_USERIF.LV = '40' then
			begin
				AHdNo := GT_USERIF.HD;
				ABrNo := GT_USERIF.BR;
			end else
			begin
				AHdNo := GT_USERIF.HD;
				ABrNo := GT_USERIF.BR;
			end;
			Param := '';
			Param := AHdNo + '│' + ABrNo + '│' + 'A' + '│' + Param_Filtering(cxSEdtA5.Text);
			if not RequestBase(GetSel05('GET_ID_FROM_NAME', 'COM_UTIL.GET_ID_FROM_NAME', '100', Param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('입금자 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			xdom.loadXML(XmlData);
			lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      sWhere := '';
			ls_Rcrd := TStringList.Create;
			try
				if lst_Result.length = 1 then
				begin
					GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
          if ls_Rcrd.Count >= 4 then
  					sWhere := ' AND C.IN_ID = ''' + ls_Rcrd[3] + '''  '
          else
  					sWhere := ' AND C.IN_ID = ''''  ';
				end else
        if lst_Result.length > 1 then
				begin
					sWhere := ' AND (';
					for I := 0 to lst_Result.length - 1 do
					begin
						if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then
							Continue;
						GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
            if ls_Rcrd.Count >= 4 then
            begin
              if i = 0 then
                sWhere := sWhere + ' (C.IN_ID = ''' + ls_Rcrd[3] + '''  )'
              else
							sWhere := sWhere + ' or (C.IN_ID = ''' + ls_Rcrd[3] + '''  )  ';
            end else
            begin
              if i = 0 then
                sWhere := sWhere + ' (C.IN_ID = ''''  )'
              else
							sWhere := sWhere + ' or (C.IN_ID = ''''  )  ';
            end;
					end;
					sWhere := sWhere + ')' ;
				end
				else if lst_Result.length < 1 then sWhere := '';
			finally
        xdom := Nil;
				ls_Rcrd.Free;
			end;
		end;
	end;

	if cxCb1A5.ItemIndex = 1 then
		sWhere := sWhere + ' AND c.WK_CHARGE_TYPE = ''00'''
  else if cxCb1A5.ItemIndex = 2 then
		sWhere := sWhere + ' AND c.WK_CHARGE_TYPE = ''02'''
	else if cxCb1A5.ItemIndex = 3 then
		sWhere := sWhere + ' AND c.WK_CHARGE_TYPE = ''05'''
	else if cxCb1A5.ItemIndex = 4 then
		sWhere := sWhere + ' AND c.WK_CHARGE_TYPE = ''09''';

  if Trim(cxSEdt1A5.Text) <> '' then
		sWhere := sWhere + ' AND c.wk_cycash_memo like ''%' + Trim(cxSEdt1A5.Text) + '%''';

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
	  lst_Node.item[0].attributes.getNamedItem('Value').Text :=
	  	En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
	  lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
	  lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WKACC01';
	  sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
	  if iType = 1 then
    begin
      if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
	  		lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKCASHS03' //본사
	  	else
	  		lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKCASHS03_8282SN'; //본사
    end else
	  	lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKCASHS02'; //지사

    lst_Node.item[0].attributes.getNamedItem('Backward').Text := sWhere;

    if (cxDtStartA5.Text = '') or (cxDtEndA5.Text = '') then
    begin
      cxDtStartA5.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA5.Date := cxDtStartA5.Date + 1;
    end;
    startDate := FormatDateTime('YYYYMMDD', cxDtStartA5.Date) + FormatDateTime('HHNNSS', cxTeStartA5.Time);
    endDate   := FormatDateTime('YYYYMMDD', cxDtEndA5.Date) + FormatDateTime('HHNNSS', cxTeEndA5.Time);

    //노드를 복사해서 param을 생성한다....
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := endDate;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
	  if iType = 0 then
	  	lst_Node.item[2].attributes.getNamedItem('Value').Text := sBrNo
	  else
	  	lst_Node.item[2].attributes.getNamedItem('Value').Text := sHdNo;

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

procedure TFrm_ACC.proc_WKSolution;
var
  sNode, ls_TxLoad, startDate, sBrNo, sHdNo: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if GridA6View.DataController.RecordCount > 0 then
    Exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('기사사용료') then Exit;

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sHdNo := GT_SEL_BRNO.HDNO
    else
      sHdNo := GT_USERIF.HD;
    sBrNo := '';
    iType := 1;
  end else
  begin
    if (GT_USERIF.LV = '60') then
      sBrNo := GT_SEL_BRNO.BrNo
    else
      sBrNo := GT_USERIF.BR;
    sHdNo := '';
    iType := 0;
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

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
		lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WKSOLACC01';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    if iType = 1 then
			lst_Node.item[0].attributes.getNamedItem('Key').Text := 'PROGRAMS02' //본사
    else
			lst_Node.item[0].attributes.getNamedItem('Key').Text := 'PROGRAMS01';
    //지사

    if cxSEYYA6.Text = '' then
      cxSEYYA6.Text := FormatDateTime('yyyy', Now);
    if cxSEMMA6.Text = '' then
      cxSEMMA6.Text := Copy(FormatDateTime('yyyymm', Now), 5, 2);
    startDate := cxSEYYA6.Text + LPAD(cxSEMMA6.Text, '0', 2);
    //노드를 복사해서 param을 생성한다....
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    if iType = 0 then
      lst_Node.item[1].attributes.getNamedItem('Value').Text := sBrNo
    else
      lst_Node.item[1].attributes.getNamedItem('Value').Text := sHdNo;

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
    xdom := nil;
  end;
end;

procedure TFrm_ACC.proc_WKSolution2(sBrNo: string);
var
  sNode, ls_TxLoad, startDate : string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'ACC021';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'PROGRAMS03'; //지사

    if cxSEYYA6.Text = '' then
      cxSEYYA6.Text := FormatDateTime('yyyy', Now);
    if cxSEMMA6.Text = '' then
      cxSEMMA6.Text := Copy(FormatDateTime('yyyymm', Now), 5, 2);

    startDate := cxSEYYA6.Text + LPAD(cxSEMMA6.Text, '0', 2);
    //노드를 복사해서 param을 생성한다....
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := sBrNo;

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

procedure TFrm_ACC.rbCashOutClick(Sender: TObject);
begin
  if rbCashOut.Checked then
  begin
    lblCash.Style.Color := $00FFFFB3;
    cxRBCashB.Enabled := True;
  end else
  if rbCashIn.Checked then
  begin
    lblCash.Style.Color := $00FFA6FF;
    cxRBCashM.Checked := True;
    cxRBCashB.Enabled := False;
  end;
  rbCashOut.Invalidate;
  rbCashIn.Invalidate;
end;

procedure TFrm_ACC.RB_SelHdOpt1Click(Sender: TObject);
begin
  cxBrCashMove.DataController.SetRecordCount(0);
  cxcbCashMoveBrName4.Tag := 1;
  cxcbCashMoveBrName4.ItemIndex := 0;
  cxcbCashMoveBrName4.Tag := 0;
end;

procedure TFrm_ACC.proc_ShareCallAcc;
var
  sNode, ls_TxLoad, startDate, endDate, sBrNo, sHdNo, sShare: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if GridA7View.DataController.RecordCount > 0 then
    Exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('공유콜정산') then Exit;

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sHdNo := GT_SEL_BRNO.HDNO
    else
      sHdNo := GT_USERIF.HD;
    sBrNo := '';
    iType := 1;
  end else
  begin
    if (GT_USERIF.LV = '60') then
      sBrNo := GT_SEL_BRNO.BrNo
    else
      sBrNo := GT_USERIF.BR;
    sHdNo := '';
    iType := 0;
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

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'SHAREACC01';
		sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    if iType = 1 then
    begin
      if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
				lst_Node.item[0].attributes.getNamedItem('Key').Text := 'CALLSHARE1' //본사
			else
				lst_Node.item[0].attributes.getNamedItem('Key').Text := 'CALLSHARE1_8282SN'; //본사
		end else
			lst_Node.item[0].attributes.getNamedItem('Key').Text := 'CALLSHARE2'; //지사

    if (cxDtStartA7.Text = '') or (cxDtEndA7.Text = '') then
    begin
      cxDtStartA7.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA7.Date := cxDtStartA7.Date;// + 1;
    end;
    startDate := FormatDateTime('YYYYMMDD', cxDtStartA7.Date);
		endDate   := FormatDateTime('YYYYMMDD', cxDtEndA7.Date - 1); 
		//마감데이터에 대한 조회는 당일은 Today~Today, 어제 : Today-1~Today-1 20161029 KHS
    sShare := '';
    if cxCBChk0A7.Checked then
      sShare := sShare + '0';
    if cxCBChk1A7.Checked then
      sShare := sShare + '1';
    if cxCBChk2A7.Checked then
      sShare := sShare + '2';
    if cxCBChk3A7.Checked then
      sShare := sShare + '3';
    if cxCBChk4A7.Checked then
      sShare := sShare + '4';
    if cxCBChk5A7.Checked then
      sShare := sShare + '5';
    if cxCBChk6A7.Checked then
      sShare := sShare + '6';
    if cxCBChk7A7.Checked then
      sShare := sShare + '7';
    if cxCBChk8A7.Checked then
      sShare := sShare + '8';
    if cxCBChk9A7.Checked then
      sShare := sShare + '9';

    //노드를 복사해서 param을 생성한다....
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
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);

    if iType = 0 then
    begin
      lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
      lst_Node.item[0].attributes.getNamedItem('Value').Text := sBrNo;
      lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
      lst_Node.item[1].attributes.getNamedItem('Value').Text := sBrNo;
      lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
      lst_Node.item[2].attributes.getNamedItem('Value').Text := sBrNo;
      lst_Node.item[3].attributes.getNamedItem('Seq').Text := '4';
      lst_Node.item[3].attributes.getNamedItem('Value').Text := sBrNo;
      lst_Node.item[4].attributes.getNamedItem('Seq').Text := '5';
      lst_Node.item[4].attributes.getNamedItem('Value').Text := sBrNo;
    end else
    begin
      lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
      lst_Node.item[0].attributes.getNamedItem('Value').Text := sHdNo;
      lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
      lst_Node.item[1].attributes.getNamedItem('Value').Text := sHdNo;
      lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
      lst_Node.item[2].attributes.getNamedItem('Value').Text := sHdNo;
      lst_Node.item[3].attributes.getNamedItem('Seq').Text := '4';
      lst_Node.item[3].attributes.getNamedItem('Value').Text := sHdNo;
      lst_Node.item[4].attributes.getNamedItem('Seq').Text := '5';
      lst_Node.item[4].attributes.getNamedItem('Value').Text := sHdNo;
    end;
    lst_Node.item[5].attributes.getNamedItem('Seq').Text := '6';
    lst_Node.item[5].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[6].attributes.getNamedItem('Seq').Text := '7';
    lst_Node.item[6].attributes.getNamedItem('Value').Text := endDate;
    lst_Node.item[7].attributes.getNamedItem('Seq').Text := '8';
    lst_Node.item[7].attributes.getNamedItem('Value').Text := sShare;

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

procedure TFrm_ACC.BtnCloseClick(Sender: TObject);
begin
  pnlHelpA7.Visible := False;
end;

procedure TFrm_ACC.btnExcelA10Click(Sender: TObject);
begin
	if GridA10_1DBTableView.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := 'SMS일괄충전내역.xls';
  Frm_Main.sgRpExcel := Format('정산>SMS일괄충전내역]%s건', [GetMoneyStr(GridA10_1DBTableView.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA10_1;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA1Click(Sender: TObject);
begin
	if GridA1View.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '지사캐쉬내역.xls';
  Frm_Main.sgRpExcel := Format('정산>지사캐쉬내역]%s건', [GetMoneyStr(GridA1View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA1;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA2Click(Sender: TObject);
begin
	if GridA2View.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '통장식로그.xls';
  Frm_Main.sgRpExcel := Format('정산>통장식로그]%s건', [GetMoneyStr(GridA2View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA2;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA3Click(Sender: TObject);
begin
	if GridA3View.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '오더정산내역.xls';
  Frm_Main.sgRpExcel := Format('정산>오더정산내역]%s건', [GetMoneyStr(GridA3View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA3;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA4Click(Sender: TObject);
begin
	if GridA4View.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '지사충전내역.xls';
  Frm_Main.sgRpExcel := Format('정산>지사충전내역]%s건', [GetMoneyStr(GridA4View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA4;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA5Click(Sender: TObject);
begin
	if GridA5View.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '기사충전내역.xls';
  Frm_Main.sgRpExcel := Format('정산>기사충전내역]%s건', [GetMoneyStr(GridA5View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA5;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA6Click(Sender: TObject);
begin
	if GridA6View.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '기사사용료.xls';
  Frm_Main.sgRpExcel := Format('정산>기사사용료]%s건', [GetMoneyStr(GridA6View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA6;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA7Click(Sender: TObject);
begin
	if GridA7View.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '공유콜정산.xls';
  Frm_Main.sgRpExcel := Format('정산>공유콜정산]%s건', [GetMoneyStr(GridA7View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA7;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA9Click(Sender: TObject);
begin
	if GridA9DBTableView.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := 'SMS충전내역.xls';
  Frm_Main.sgRpExcel := Format('정산>SMS충전내역]%s건', [GetMoneyStr(GridA9DBTableView.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA9;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

function TFrm_ACC.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  Case cxPageControl1.ActivePageIndex of
  0 : begin
        AStDt := cxDtStartA1;
       	AEdDt := cxDtEndA1;
      end;
  1 : begin
        AStDt := cxDtStartA2;
      	AEdDt := cxDtEndA2;
      end;
  2 : begin
        AStDt := cxDtStartA3;
      	AEdDt := cxDtEndA3;
      end;
  3 : begin
        AStDt := cxDtStartA4;
        AEdDt := cxDtEndA4;
      end;
  4 : begin
        AStDt := cxDtStartA5;
      	AEdDt := cxDtEndA5;
      end;
  6 : begin
        AStDt := cxDtStartA7;
        AEdDt := cxDtEndA7;
      end;
  8 : begin
        AStDt := cxDtStartA9;
      	AEdDt := cxDtEndA9;
      end;
  9 : begin
        AStDt := cxDtStartA10;
      	AEdDt := cxDtEndA10;
      end;
  end;
end;

procedure TFrm_ACC.GridA10DBTableViewBands2HeaderClick(Sender: TObject);
begin
  FSorted := not FSorted;
  FSortedBand := Sender as TcxGridBand;
  pBandSort(GridA10DBTableView, 2);
end;

procedure TFrm_ACC.GridA10DBTableViewBands3HeaderClick(Sender: TObject);
begin
  FSorted := not FSorted;
  FSortedBand := Sender as TcxGridBand;
  pBandSort(GridA10DBTableView, 3);
end;

procedure TFrm_ACC.GridA10DBTableViewCustomDrawBandHeader(Sender: TcxGridBandedTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridBandHeaderViewInfo;
  var ADone: Boolean);
var
  ARect, AMarkBounds: TRect;
  AIndex, iSortIndex : Integer;
begin
  ARect := cxRectContent(AViewInfo.Bounds, Rect(1,1,1,1));
  ACanvas.FillRect(AViewInfo.Bounds, clBlack);
  ACanvas.FillRect(ARect, clBtnFace);

  ACanvas.DrawTexT(AViewInfo.Text, AViewInfo.TextAreaBounds, cxAlignHCenter or cxAlignVCenter);

  if AViewInfo.Band = FSortedBand then
  begin
    ARect := AViewInfo.TextAreaBounds;
    AMarkBounds := Rect(ARect.Right - 16, ARect.Top, ARect.Right, ARect.Bottom);
    AViewInfo.LookAndFeelPainter.DrawSortingMark(ACanvas, AMarkBounds, FSorted);
    ADone := True;
  end;
end;

procedure TFrm_ACC.GridA10DBTableViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA10DBTableView, GS_SortNoChange);
end;

procedure TFrm_ACC.GridA10_1DBTableViewColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.GridA10_1DBTableViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA10_1DBTableView, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.GridA1ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var sColNM : string;
  iBrNo, iRow: Integer;
  sBrNo: string;
begin
  //2014.02.13 팀장님 지시사항
	if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ID = '8282king') or (GT_USERIF.ID = '8282si')) then Exit;

  iBrNo := GridA1View.GetColumnByFieldName('지사코드').Index;
  iRow := GridA1View.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;
  sBrNo := GridA1View.DataController.Values[iRow, iBrNo];

  if Trim(sBrNo) = '' then Exit;
  
  case ACellViewInfo.Item.FocusedCellViewInfo.Item.Index of
    3..15 : sColNM := GridA1View.Columns[ACellViewInfo.Item.FocusedCellViewInfo.Item.Index].Caption
    else sColNM := '';
  end;
  
  proc_BankLog2(sBrNo, 0, sColNM);
end;

procedure TFrm_ACC.proc_BankLog2(ABrNo: string; AGUBUN : integer; AColNM : string);
var AView: TcxGridDBTableView;
  ls_TxLoad, sTmp, sBrNo, sHdNo: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  slReceive, slList: TStringList;
  ErrCode: integer;

	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	i, iTmp, j, iRow : Integer;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
begin
  SetDebugeWrite('TFrm_ACC.proc_BankLog2');
  Try
    if AGUBUN = 0 then //지사캐시 상세
    begin
      Param := '│' + ABrNo;
      Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtStartA1.Date)+FormatDateTime('HHNNSS', cxTeStartA1.Time);
      Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA1.Date  )+FormatDateTime('HHNNSS', cxTeEndA1.Time);
      btnSearchA1.Enabled := False;
    end else
    if AGUBUN = 1 then //통장식로그
    begin
      if GridA2View.DataController.RecordCount > 0 then
        Exit;

      if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
      begin
        GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
        Exit;
      end;

      if fGetChk_Search_HdBrNo('통장식로그') then Exit;

      if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then
      begin
        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          sHdNo := GT_SEL_BRNO.HDNO
        else
          sHdNo := GT_USERIF.HD;
        sBrNo := '';
      end else
      begin
        if (GT_USERIF.LV = '60') then
          sBrNo := GT_SEL_BRNO.BrNo
        else
          sBrNo := GT_USERIF.BR;
        sHdNo := '';
      end;
      Param := sHdNo + '│' + sBrNo;
      Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtStartA2.Date)+FormatDateTime('HHNNSS', cxTeStartA2.Time);
      Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA2.Date  )+FormatDateTime('HHNNSS', cxTeEndA2.Time);
      btnSearchA2.Enabled := False;
    end;

    Screen.Cursor := crHourGlass;
    try
      slList := TStringList.Create;
      if not RequestBasePaging(GetSel06('BRCASH03', 'MNG_BR_CASH.BRCASH03', '1000', Param), slList, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('통장식 로그 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
        Screen.Cursor := crDefault;
        btnSearchA1.Enabled := True;
        btnSearchA2.Enabled := True;
        Exit;
      end;

      Frm_Flash.cxPBar1.Properties.Max := slList.Count;
      Frm_Flash.cxPBar1.Position := 0;

			xdom := ComsDomDocument.Create;
      try
        if AGUBUN = 0 then
        begin
          if ( Not Assigned(Frm_ACC01) ) Or ( Frm_ACC01 = NIl ) then Frm_ACC01 := TFrm_ACC01.Create(Nil);
          AView := Frm_ACC01.Grid3View;
        end else
        if AGUBUN = 1 then
        begin
          AView := GridA2View;
        end;
        AView.BeginUpdate;
        AView.DataController.SetRecordCount(0);

        try
          for j := 0 to slList.Count - 1 do
          begin
            Frm_Flash.cxPBar1.Position := j + 1;
            Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
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

                  //고용보험료 셀의 내용만 조회:우선주석처리
                  if (AColNM = '고용보험료' ) and (Pos(AColNM, ls_Rcrd[4]) < 1) then Continue;

                  if AGUBUN = 0 then //지사캐시 상세
                  begin
                    iRow := AView.DataController.AppendRecord;  // 1 Record 추가
                  end else
                  if AGUBUN = 1 then //통장식로그
                  begin
                    if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
                    begin
                      iRow := AView.DataController.AppendRecord;
                    end else Continue;
                  end;
                  AView.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                  AView.DataController.Values[iRow, 1] := ls_Rcrd[1];
                  sTmp := ls_Rcrd[2];
                  if sTmp <> '' then
                  begin
                    sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
                    sTmp := StringReplace(sTmp, ':', '', [rfReplaceAll]);
                    sTmp := StringReplace(sTmp, ' ', '', [rfReplaceAll]);
                    sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp,  5, 2) + '-' + Copy(sTmp,  7, 2) + ' ' +
                            Copy(sTmp, 9, 2) + ':' + Copy(sTmp, 11, 2) + ':' + Copy(sTmp, 13, 2);
                  end;
                  AView.DataController.Values[iRow, 2] := sTmp;
                  AView.DataController.Values[iRow, 3] := ls_Rcrd[3];
                  AView.DataController.Values[iRow, 4] := ls_Rcrd[4];
                  AView.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[5], 0);
                  AView.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[6], 0);
                  AView.DataController.Values[iRow, 7] := StringReplace(ls_Rcrd[7], #$A, '/', [rfReplaceAll]);;
                  AView.DataController.Values[iRow, 8] := ls_Rcrd[8];
                end;
              finally
                ls_Rcrd.Free;
              end;
            end else
            begin
              GMessagebox('검색된 내용이 없습니다.', CDMSE);
            end;
          end;
        finally
          frm_Main.sbar_Message.Panels[4].Text := '';

          AView.EndUpdate;
          if AGUBUN = 0 then
          begin
            if Frm_ACC01.Grid3View.DataController.RecordCount > 0 then
              Frm_ACC01.Show;
            btnSearchA1.Enabled := True;
          end else
          if AGUBUN = 1 then
          begin
            btnSearchA2.Enabled := True;
          end;      
        end;
      finally
  			xdom := Nil;
			end;
    finally
			Screen.Cursor := crDefault;
      btnSearchA1.Enabled := True;
      Frm_Flash.Hide;
    end;
  except
    on E: Exception do
		begin
			Assert(False, E.Message);
		end;
  End;
end;

procedure TFrm_ACC.proc_CashList;
var
  ls_TxLoad, startDate, endDate, sBrNo, sHdNo: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  slReceive, slList: TStringList;
  ErrCode: integer;

	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	i, iTmp, j, iRow : Integer;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;
begin
  SetDebugeWrite('TFrm_ACC.proc_CashList');
  Try
    if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
    begin
      GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
      Exit;
    end;

    if fGetChk_Search_HdBrNo('지사캐쉬내역') then Exit;

    if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := GT_SEL_BRNO.HDNO
      else
        Param := GT_USERIF.HD;
      Param := Param + '│' ;
    end else
    begin
      if (GT_USERIF.LV = '60') then
      begin
        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          Param := GT_SEL_BRNO.HDNO
        else
          Param := GT_USERIF.HD;
        Param := Param + '│' + GT_SEL_BRNO.BrNo;
      end else
      begin
        Param := GT_USERIF.HD;
        Param := Param + '│' + GT_USERIF.BR;
      end;
    end;
    Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtStartA1.Date)+FormatDateTime('HHNNSS', cxTeStartA1.Time);
    Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA1.Date  )+FormatDateTime('HHNNSS', cxTeEndA1.Time);

    btnSearchA1.Enabled := False;
    Screen.Cursor := crHourGlass;
    try
      slList := TStringList.Create;
      if not RequestBasePaging(GetSel06('BRCASH01', 'MNG_BR_CASH.BRCASH01', '1000', Param), slList, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('지사캐시내역 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
        Screen.Cursor := crDefault;
        btnSearchA1.Enabled := True;
        Exit;
      end;

      GridA1View.BeginUpdate;
      GridA1View.DataController.SetRecordCount(0);

      Frm_Flash.cxPBar1.Properties.Max := slList.Count;
      Frm_Flash.cxPBar1.Position := 0;

			xdom := ComsDomDocument.Create;
      try
        for j := 0 to slList.Count - 1 do
        begin
          Frm_Flash.cxPBar1.Position := j + 1;
          Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
          ls_rxxml := slList[j];
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
                if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
                begin
                  iRow := GridA1View.DataController.AppendRecord;
                  // 1 Record 추가
                  GridA1View.DataController.Values[iRow,  0] := IntToStr(iRow + 1);
                  GridA1View.DataController.Values[iRow,  1] := ls_Rcrd[0];
                  GridA1View.DataController.Values[iRow,  2] := ls_Rcrd[1];
                  //지사명
                  GridA1View.DataController.Values[iRow,  3] := StrToIntDef(ls_Rcrd[ 2], 0); //기사공용캐쉬
                  GridA1View.DataController.Values[iRow,  4] := StrToIntDef(ls_Rcrd[ 3], 0); //발주수익
                  GridA1View.DataController.Values[iRow,  5] := StrToIntDef(ls_Rcrd[ 4], 0); //수주지급
                  GridA1View.DataController.Values[iRow,  6] := StrToIntDef(ls_Rcrd[ 5], 0); //솔루션사용료
                  GridA1View.DataController.Values[iRow,  7] := StrToIntDef(ls_Rcrd[ 6], 0); //보험료
                  GridA1View.DataController.Values[iRow,  8] := StrToIntDef(ls_Rcrd[18], 0); //고용보험료
                  GridA1View.DataController.Values[iRow,  9] := StrToIntDef(ls_Rcrd[ 7], 0); //취소벌금(공용)
                  GridA1View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[ 8], 0); //콜대행
                  GridA1View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[ 9], 0); //지사입금
                  GridA1View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[10], 0); //콜마너정산
                  GridA1View.DataController.Values[iRow, 13] := StrToIntDef(ls_Rcrd[11], 0); //지사캐쉬이동
                  GridA1View.DataController.Values[iRow, 14] := StrToIntDef(ls_Rcrd[12], 0); //SMS캐쉬출금
                  GridA1View.DataController.Values[iRow, 15] := StrToIntDef(ls_Rcrd[13], 0); //기타
                  GridA1View.DataController.Values[iRow, 16] := StrToIntDef(ls_Rcrd[14], 0); //합계
                  GridA1View.DataController.Values[iRow, 17] := StrToIntDef(ls_Rcrd[16], 0); //시작캐쉬
                  GridA1View.DataController.Values[iRow, 18] := StrToIntDef(ls_Rcrd[17], 0); //종료캐쉬
                  GridA1View.DataController.Values[iRow, 19] := StrToIntDef(ls_Rcrd[15], 0); //잔액 
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
      finally
  			xdom := Nil;
        GridA1View.EndUpdate;
        frm_Main.sbar_Message.Panels[4].Text := '';
			end;
    finally
			Screen.Cursor := crDefault;
      btnSearchA1.Enabled := True;
      Frm_Flash.Hide;
    end;
  except
    on E: Exception do
		begin
			Assert(False, E.Message);
		end;
  End;


end;

procedure TFrm_ACC.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_MSG_Err, ls_ClientKey, sTemp: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd, ls_Rcrd2, slBalju, slSuju, slOwner, slBalBrNo, slSuBrNo:
  TStringList;
  i, j, iRow, iBalju, iCharge, iCom, iComCash, iComCyCash, iCash, iBalju2,
    iCharge2, iCom2, iCnt: Integer;
  iRateBal, iRateCom: Double;
  ls_rxxml: WideString;
  ZeroCnt, ZeroCharge: Integer;
begin
	try
    xdom := ComsDomDocument.Create;
    try
      ls_rxxml := slList[0];
      if not xdom.loadXML(ls_rxxml) then
      begin
        Screen.Cursor := crDefault;
        Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        if ls_ClientKey = 'CASHACC01' then //지사캐쉬내역 SEL06으로 변경 20211229 KHS
        begin
          GridA1View.BeginUpdate;
          GridA1View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          try
					  for j := 0 to slList.Count - 1 do
            begin
              Frm_Flash.cxPBar1.Position := j + 1;
              Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
              ls_rxxml := slList[j];
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
                    if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
                    begin
                      iRow := GridA1View.DataController.AppendRecord;
                      // 1 Record 추가
                      GridA1View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                      GridA1View.DataController.Values[iRow, 1] := ls_Rcrd[0];
                      GridA1View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                      //지사명
                      GridA1View.DataController.Values[iRow, 3] := StrToIntDef(ls_Rcrd[2], 0); //기사공용캐쉬
                      GridA1View.DataController.Values[iRow, 4] := StrToIntDef(ls_Rcrd[3], 0); //발주수익
                      GridA1View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[4], 0); //수주지급
                      GridA1View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[5], 0); //솔루션사용료
                      GridA1View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[6], 0); //보험료
                      GridA1View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[7], 0); //취소벌금(공용)
                      GridA1View.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[8], 0); //콜대행
                      GridA1View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[9], 0); //지사입금
                      GridA1View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[10], 0); //콜마너정산
                      GridA1View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[11], 0); //지사캐쉬이동
                      GridA1View.DataController.Values[iRow, 13] := StrToIntDef(ls_Rcrd[12], 0); //SMS캐쉬출금
                      GridA1View.DataController.Values[iRow, 14] := StrToIntDef(ls_Rcrd[13], 0); //기타
                      GridA1View.DataController.Values[iRow, 15] := StrToIntDef(ls_Rcrd[14], 0); //합계
                      GridA1View.DataController.Values[iRow, 16] := StrToIntDef(ls_Rcrd[16], 0); //시작캐쉬
                      GridA1View.DataController.Values[iRow, 17] := StrToIntDef(ls_Rcrd[17], 0); //종료캐쉬
                      GridA1View.DataController.Values[iRow, 18] := StrToIntDef(ls_Rcrd[15], 0); //잔액
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
          finally
            GridA1View.EndUpdate;
            frm_Main.sbar_Message.Panels[4].Text := '';
          end;
        end else
        if ls_ClientKey = 'BANKACC02' then //지사캐쉬내역
        begin
          if ( Not Assigned(Frm_ACC01) ) Or ( Frm_ACC01 = NIl ) then Frm_ACC01 := TFrm_ACC01.Create(Nil);
          Frm_ACC01.Grid3View.BeginUpdate;
          Frm_ACC01.Grid3View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          try
            for j := 0 to slList.Count - 1 do
            begin
              Frm_Flash.cxPBar1.Position := j + 1;
              Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
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
                    iRow := Frm_ACC01.Grid3View.DataController.AppendRecord;  // 1 Record 추가
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 1] := ls_Rcrd[1];
                    sTemp := ls_Rcrd[2];
                    if sTemp <> '' then
                    begin
                      sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                      sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp,  5, 2) + '-' + Copy(sTemp,  7, 2) + ' ' +
                               Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                    end;
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 2] := sTemp;
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 3] := ls_Rcrd[3];
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 4] := ls_Rcrd[4];
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[5], 0);
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[6], 0);
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 7] := StringReplace(ls_Rcrd[7], #$A, '/', [rfReplaceAll]);;
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 8] := ls_Rcrd[8];
                  end;
                finally
                  ls_Rcrd.Free;
                end;
					  	end else
					  	begin
					  		GMessagebox('검색된 내용이 없습니다.', CDMSE);
					  	end;
            end;
          finally
            frm_Main.sbar_Message.Panels[4].Text := '';
            Frm_ACC01.Grid3View.EndUpdate;
          end;
          if Frm_ACC01.Grid3View.DataController.RecordCount > 0 then
            Frm_ACC01.Show;
        end else
				if ls_ClientKey = 'BANKACC01' then //통장식로그
        begin
          GridA2View.BeginUpdate;
          GridA2View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
					Frm_Flash.cxPBar1.Position := 0;

          try
            for j := 0 to slList.Count - 1 do
            begin
              Frm_Flash.cxPBar1.Position := j + 1;
              Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
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
                    if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
										begin
                      iRow := GridA2View.DataController.AppendRecord;
											// 1 Record 추가
                      GridA2View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                      GridA2View.DataController.Values[iRow, 1] := ls_Rcrd[1];
                      sTemp := ls_Rcrd[2];
                      if sTemp <> '' then
                      begin
                        sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                        sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                        sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                        sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp,  5, 2) + '-' + Copy(sTemp,  7, 2) + ' ' +
                                 Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                      end;
                      GridA2View.DataController.Values[iRow, 2] := sTemp;
                      GridA2View.DataController.Values[iRow, 3] := ls_Rcrd[3];
                      GridA2View.DataController.Values[iRow, 4] := ls_Rcrd[4];
                      GridA2View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[5], 0); //솔루션사용료
                      GridA2View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[6], 0); //보험료
											sTemp := StringReplace(ls_Rcrd[7], #$A, ' ', [rfReplaceAll]);
											GridA2View.DataController.Values[iRow, 7] := sTemp;                 //취소벌금(공용)
											GridA2View.DataController.Values[iRow, 8] := ls_Rcrd[8];                 //지사입금
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
          finally
            GridA2View.EndUpdate;
            frm_Main.sbar_Message.Panels[4].Text := '';
          end;
        end else
        if ls_ClientKey = 'ORDERACC01' then
        begin
          GridA3View.BeginUpdate;
          GridA3View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          try
            for j := 0 to slList.Count - 1 do
            begin
              Frm_Flash.cxPBar1.Position := j + 1;
              Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
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
                    ls_Rcrd.Insert(13, '');
                    if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
                    begin
                      iRow := GridA3View.DataController.AppendRecord;
                      // 1 Record 추가
                      GridA3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                      sTemp := ls_Rcrd[0];
                      if sTemp <> '' then
                      begin
                        sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                        sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                        sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                        sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp,  5, 2) + '-' + Copy(sTemp,  7, 2) + ' ' +
                                 Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                      end;
                      GridA3View.DataController.Values[iRow, 1] := sTemp;
                      GridA3View.DataController.Values[iRow, 2] := ls_Rcrd[1];                     //지사명
                      GridA3View.DataController.Values[iRow, 3] := ls_Rcrd[2];                     //수주지급
                      GridA3View.DataController.Values[iRow, 4] := ls_Rcrd[3];                     //솔루션사용료
                      GridA3View.DataController.Values[iRow, 5] := ls_Rcrd[4];                     //보험료
                      GridA3View.DataController.Values[iRow, 6] := ls_Rcrd[5];                     //취소벌금(공용)
                      GridA3View.DataController.Values[iRow, 7] := ls_Rcrd[6];                     //콜대행
                      GridA3View.DataController.Values[iRow, 8] := ls_Rcrd[7];                     //지사입금
                      GridA3View.DataController.Values[iRow, 9] := ls_Rcrd[8];
                      GridA3View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[9], 0);
                      GridA3View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[10], 0);
                      GridA3View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[11], 0); //지사명
                      GridA3View.DataController.Values[iRow, 14] := StrToIntDef(ls_Rcrd[12], 0); //수주지급
                      // 정산비율 계산
                      iCharge := StrToIntDef(ls_Rcrd[9], 0);
                      iBalju := Abs(StrToIntDef(ls_Rcrd[12], 0));
                      iCom := StrToIntDef(ls_Rcrd[10], 0);
                      if iCharge = 0 then
                      begin
                        iRateBal := 0;
                        iRateCom := 0;
                      end else
                      begin
                        iRateBal := (iBalju * 100 div iCharge);
                        iRateCom := (iCom * 100 div iCharge) - iRateBal;
                        if iRateCom < 0 then
                          iRateCom := 0;
                      end;
                      if iBalju = 0 then
                        GridA3View.DataController.Values[iRow, 16] := ''
                      else
                        GridA3View.DataController.Values[iRow, 16] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); //
                      iComCash := StrToIntDef(ls_Rcrd[11], 0);
                      iComCyCash := iCom - iComCash;
                      iCash := iCom + StrToIntDef(ls_Rcrd[12], 0);
                      GridA3View.DataController.Values[iRow, 13] := IntToStr(iComCyCash);
                      GridA3View.DataController.Values[iRow, 15] := IntToStr(iCash);
                      GridA3View.DataController.Values[iRow, 17] := ls_Rcrd[14]; //보험료
                      GridA3View.DataController.Values[iRow, 18] := ls_Rcrd[15]; //취소벌금(공용)
                      GridA3View.DataController.Values[iRow, 19] := ls_Rcrd[16]; //콜대행
                      GridA3View.DataController.Values[iRow, 20] := ls_Rcrd[17]; //콜대행

                      GridA3View.DataController.Values[iRow, 21] := ls_Rcrd[18]; //콜대행
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
          finally
            frm_Main.sbar_Message.Panels[4].Text := '';
            GridA3View.EndUpdate;
          end;
        end else
        if ls_ClientKey = 'BRNOACC01' then
        begin
          GridA4View.BeginUpdate;
          GridA4View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          try
            for j := 0 to slList.Count - 1 do
            begin
  //-            frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
              Frm_Flash.cxPBar1.Position := j + 1;
              Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
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
  //                  ls_Rcrd := GetTextSeperation('│', lst_Result.item[i].attributes.getNamedItem('Value').Text);
                    iRow := GridA4View.DataController.AppendRecord;
                    // 1 Record 추가
                    GridA4View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                    GridA4View.DataController.Values[iRow, 1] := ls_Rcrd[0];
                    sTemp := ls_Rcrd[1];
                    if sTemp <> '' then
                    begin
                      sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                      sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp,  5, 2) + '-' + Copy(sTemp,  7, 2) + ' ' +
                               Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                    end;
                    GridA4View.DataController.Values[iRow, 2] := sTemp; //지사명
                    GridA4View.DataController.Values[iRow, 3] := ls_Rcrd[2]; //수주지급
                    GridA4View.DataController.Values[iRow, 4] := ls_Rcrd[3]; //솔루션사용료
                    GridA4View.DataController.Values[iRow, 5] := ls_Rcrd[4]; //보험료
                    GridA4View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[5], 0); //취소벌금(공용)
                    GridA4View.DataController.Values[iRow, 7] := ls_Rcrd[6]; //콜대행
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end else
              begin
                GMessagebox('검색된 내용이 없습니다.', CDMSE);
              end;
            end;
          finally
            frm_Main.sbar_Message.Panels[4].Text := '';
            GridA4View.EndUpdate;
          end;
        end else
        if ls_ClientKey = 'WKACC01' then
        begin
          GridA5View.BeginUpdate;
          GridA5View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          try
            for j := 0 to slList.Count - 1 do
            begin
  //-            frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
              Frm_Flash.cxPBar1.Position := j + 1;
              Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
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
                    if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
                    begin
                      iRow := GridA5View.DataController.AppendRecord;
                      // 1 Record 추가
                      GridA5View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                      GridA5View.DataController.Values[iRow, 1] := ls_Rcrd[0];
                      sTemp := ls_Rcrd[1];
                      if sTemp <> '' then
                      begin
                        sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                        sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                        sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                        sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5 , 2) + '-' + Copy(sTemp,  7, 2) + ' ' +
                                 Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                      end;
                      GridA5View.DataController.Values[iRow, 2] := sTemp; //지사명
                      GridA5View.DataController.Values[iRow, 3] := ls_Rcrd[2];                    //수주지급
                      GridA5View.DataController.Values[iRow, 4] := ls_Rcrd[3];                    //솔루션사용료
                      GridA5View.DataController.Values[iRow, 5] := ls_Rcrd[4];                    //보험료
                      GridA5View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[5], 0); //취소벌금(공용)
                      GridA5View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[6], 0); //콜대행
                      GridA5View.DataController.Values[iRow, 8] := ls_Rcrd[7];                 //지사입금
                      GridA5View.DataController.Values[iRow, 9] := ls_Rcrd[8];
                      GridA5View.DataController.Values[iRow, 10] := ls_Rcrd[9];
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
          finally
            frm_Main.sbar_Message.Panels[4].Text := '';
            GridA5View.EndUpdate;
          end;
        end else
        if ls_ClientKey = 'WKSOLACC01' then
        begin
          GridA6View.BeginUpdate;
          GridA6View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          try
            for j := 0 to slList.Count - 1 do
            begin
  //-            Frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' +
              Frm_Flash.cxPBar1.Position := j + 1;
              IntToStr(slList.Count);
              Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' +
              IntToStr(slList.Count);
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
                    if not Check_ID(GT_USERIF.ID, ls_Rcrd[3]) then
                    begin
                      iRow := GridA6View.DataController.AppendRecord;
                      // 1 Record 추가
                      GridA6View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                      GridA6View.DataController.Values[iRow, 1] := ls_Rcrd[0];
                      GridA6View.DataController.Values[iRow, 2] := ls_Rcrd[1]; //지사명
                      GridA6View.DataController.Values[iRow, 3] := ls_Rcrd[2]; //수주지급
                      GridA6View.DataController.Values[iRow, 4] := ls_Rcrd[3]; //솔루션사용료
                      GridA6View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[4], 0); //보험료
                      GridA6View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[5], 0); //취소벌금(공용)
                      GridA6View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[6], 0); //콜대행
                      GridA6View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[7], 0); //지사입금
                      GridA6View.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[8], 0);
                      GridA6View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[9], 0);
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
          finally
            frm_Main.sbar_Message.Panels[4].Text := '';
            GridA6View.EndUpdate;
          end;
        end else
        if ls_ClientKey = 'SHAREACC01' then
        begin
          GridA7View.BeginUpdate;
          GridA7View.DataController.SetRecordCount(0);
          slBalju := TStringList.Create;
          slSuju := TStringList.Create;
          slOwner := TStringList.Create;
          slBalBrNo := TStringList.Create;
					slSuBrNo := TStringList.Create;

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          try
            for j := 0 to slList.Count - 1 do
            begin
  //-            frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
              Frm_Flash.cxPBar1.Position := j + 1;
              Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
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
                    if ls_Rcrd[11] = '발주' then
                    begin
                      if ls_Rcrd[4] <> '' then
                        slBalBrNo.Add(ls_Rcrd[4])
                      else
                        slBalBrNo.Add(ls_Rcrd[2]);
                      slBalju.Add(lst_Result.item[i].attributes.getNamedItem('Value').Text);
                    end else
                    if ls_Rcrd[11] = '수주' then
                    begin
                      if ls_Rcrd[4] <> '' then
                        slSuBrNo.Add(ls_Rcrd[4])
                      else
                        slSuBrNo.Add(ls_Rcrd[2]);
                      slSuju.Add(lst_Result.item[i].attributes.getNamedItem('Value').Text);
                    end else
                    if ls_Rcrd[11] = '자체' then
                    begin
                      slOwner.Add(lst_Result.item[i].attributes.getNamedItem('Value').Text);
                    end;
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
            end;

            frm_Main.sbar_Message.Panels[4].Text := '';
            iBalju2 := 0;
            iCharge2 := 0;
            iCom2 := 0;
            iCnt := 0;
            ZeroCnt := 0;
					  ZeroCharge := 0;
            if slBalju.Count > 0 then
            begin
              ls_Rcrd := TStringList.Create;
              try
                for i := 0 to slBalju.Count - 1 do
                begin
                  GetTextSeperationEx('│', slBalju[i], ls_Rcrd);
                  iRow := GridA7View.DataController.AppendRecord; // 1 Record 추가
					  			GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);             //NO
					  			GridA7View.DataController.Values[iRow, 0] := ls_Rcrd[11];                    //타입
					  			GridA7View.DataController.Values[iRow, 2] := ls_Rcrd[1];                     //연합명
					  			GridA7View.DataController.Values[iRow, 3] := ls_Rcrd[3];                     //본사명
					  			GridA7View.DataController.Values[iRow, 4] := ls_Rcrd[5];                     //지사명
//				  				GridA7View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[6], 0);     //건수
//				  				GridA7View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[7], 0);     //운행요금
//				  				GridA7View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[8], 0);     //수수료
//				  				GridA7View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[9], 0);     //발주비
//				  				GridA7View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[12], 0);   //수수료0원 건수
//				  				GridA7View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[13], 0);   //수수료0원 운행요금

					  			GridA7View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[9], 0);     //발주비
					  			// 정산비율 계산
					  			iCharge := StrToIntDef(ls_Rcrd[7], 0);
					  			iBalju := Abs(StrToIntDef(ls_Rcrd[9], 0));
					  			iCom := StrToIntDef(ls_Rcrd[8], 0);
					  			if iCharge = 0 then
					  			begin
					  				iRateBal := 0;
					  				iRateCom := 0;
					  			end else
					  			begin
					  				iRateBal := (iBalju * 100 div iCharge);
					  				iRateCom := (iCom * 100 div iCharge) - iRateBal;
					  				if iRateCom < 0 then
					  					iRateCom := 0;
					  			end;
					  			if iBalju = 0 then
					  				GridA7View.DataController.Values[iRow, 6] := ''
					  			else
					  				GridA7View.DataController.Values[iRow, 6] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); // 정산비율

					  			GridA7View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[7], 0);     //운행요금
					  			GridA7View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[8], 0);     //수수료
					  			GridA7View.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[13], 0);   //수수료0원 운행요금
					  			GridA7View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[6], 0);     //건수
					  			GridA7View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[12], 0);   //수수료0원 건수
					  			GridA7View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[6], 0)
					  																									+ StrToIntDef(ls_Rcrd[12], 0);   //건수합계

					  			iCnt := iCnt + StrToIntDef(ls_Rcrd[6], 0);
                  iCharge2 := iCharge2 + StrToIntDef(ls_Rcrd[7], 0);
                  iCom2 := iCom2 + StrToIntDef(ls_Rcrd[8], 0);
                  iBalju2 := iBalju2 + StrToIntDef(ls_Rcrd[9], 0);
					  			ZeroCnt := ZeroCnt + StrToIntDef(ls_Rcrd[12], 0);//StrToIntDef(ls_Rcrd[10], 0);
					  			ZeroCharge := ZeroCharge + StrToIntDef(ls_Rcrd[13], 0);

                end;
					  	finally
                ls_Rcrd.Free;
              end;
              iRow := GridA7View.DataController.AppendRecord; // 1 Record 추가
              GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
              GridA7View.DataController.Values[iRow, 0] := '발주';
              GridA7View.DataController.Values[iRow, 2] := '발주합계';
              GridA7View.DataController.Values[iRow, 3] := '';
					  	GridA7View.DataController.Values[iRow, 4] := '';
					  	GridA7View.DataController.Values[iRow, 5] := iBalju2;//IntToStr(iBalju2);    //발주비
					  	GridA7View.DataController.Values[iRow, 7] := iCharge2;//IntToStr(iCharge2);  //운행요금
					  	GridA7View.DataController.Values[iRow, 8] := iCom2;//IntToStr(iCom2);        //수수료
					  	GridA7View.DataController.Values[iRow, 9] := ZeroCharge;                     //수수료0원 운행요금
					  	GridA7View.DataController.Values[iRow, 10] := iCnt;//IntToStr(iCnt);         //건수
					  	GridA7View.DataController.Values[iRow, 11] := ZeroCnt;                       //수수료0원 건수
					  	GridA7View.DataController.Values[iRow, 12] := iCnt + ZeroCnt;                //건수합계
					  end;

            iBalju2 := 0;
            iCharge2 := 0;
            iCom2 := 0;
            iCnt := 0;
            ZeroCnt := 0;
            ZeroCharge := 0;
            if slSuju.Count > 0 then
            begin
              ls_Rcrd := TStringList.Create;
              try
                for i := 0 to slSuju.Count - 1 do
                begin
                  GetTextSeperationEx('│', slSuju[i], ls_Rcrd);
                  iRow := GridA7View.DataController.AppendRecord; // 1 Record 추가
                  GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow +
                    1);
                  GridA7View.DataController.Values[iRow, 0] := ls_Rcrd[11];
                  GridA7View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                  GridA7View.DataController.Values[iRow, 3] := ls_Rcrd[3];
					  			GridA7View.DataController.Values[iRow, 4] := ls_Rcrd[5];
					  			GridA7View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[9], 0);      //발주비
					  			iCharge := StrToIntDef(ls_Rcrd[7], 0);
					  			iBalju := Abs(StrToIntDef(ls_Rcrd[9], 0));
					  			iCom := StrToIntDef(ls_Rcrd[8], 0);
					  			if iCharge = 0 then
					  			begin
					  				iRateBal := 0;
					  				iRateCom := 0;
					  			end else
					  			begin
					  				iRateBal := (iBalju * 100 div iCharge);
					  				iRateCom := (iCom * 100 div iCharge) - iRateBal;
					  				if iRateCom < 0 then
					  					iRateCom := 0;
					  			end;
					  			if iBalju = 0 then
					  				GridA7View.DataController.Values[iRow, 6] := ''
					  			else
					  				GridA7View.DataController.Values[iRow, 6] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); // 정산비율

					  			GridA7View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[7], 0);      //운행요금
					  			GridA7View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[8], 0);      //수수료
					  			GridA7View.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[13], 0);    //수수료0원 운행요금
					  			GridA7View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[6], 0);      //건수
					  			GridA7View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[12], 0);    //수수료0원 건수
					  			GridA7View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[6], 0)
					  																									+ StrToIntDef(ls_Rcrd[12], 0);   //건수합계

					  			iCnt := iCnt + StrToIntDef(ls_Rcrd[6], 0);
                  iCharge2 := iCharge2 + StrToIntDef(ls_Rcrd[7], 0);
                  iCom2 := iCom2 + StrToIntDef(ls_Rcrd[8], 0);
                  iBalju2 := iBalju2 + StrToIntDef(ls_Rcrd[9], 0);
					  			ZeroCnt := ZeroCnt + StrToIntDef(ls_Rcrd[12], 0);
					  			ZeroCharge := ZeroCharge + StrToIntDef(ls_Rcrd[13], 0);
                end;
              finally
                ls_Rcrd.Free;
              end;
              iRow := GridA7View.DataController.AppendRecord; // 1 Record 추가
              GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
              GridA7View.DataController.Values[iRow, 0] := '수주';
              GridA7View.DataController.Values[iRow, 2] := '수주합계';
              GridA7View.DataController.Values[iRow, 3] := '';
              GridA7View.DataController.Values[iRow, 4] := '';
					  	GridA7View.DataController.Values[iRow, 5] := iBalju2;                //발주비
					  	GridA7View.DataController.Values[iRow, 7] := iCharge2;               //운행요금
					  	GridA7View.DataController.Values[iRow, 8] := iCom2;                  //수수료
					  	GridA7View.DataController.Values[iRow, 9] := ZeroCharge;             //수수료0원 운행요금
					  	GridA7View.DataController.Values[iRow, 10]  := iCnt;                 //건수
					  	GridA7View.DataController.Values[iRow, 11] := ZeroCnt;               //수수료0원 건수
					  	GridA7View.DataController.Values[iRow, 12] := iCnt + ZeroCnt;        //건수합계
					  end;

            iBalju2 := 0;
            iCharge2 := 0;
            iCom2 := 0;
            iCnt := 0;
            ZeroCnt := 0;
            ZeroCharge := 0;
            if slBalBrNo.Count > 0 then
            begin
              ls_Rcrd := TStringList.Create;
              ls_Rcrd2 := TStringList.Create;
              try
                for i := 0 to slBalBrNo.Count - 1 do
                begin
                  j := slSuBrNo.IndexOf(slBalBrNo.Strings[i]);
                  if j = -1 then
                  begin
                    GetTextSeperationEx('│', slBalju[i], ls_Rcrd);
                    iRow := GridA7View.DataController.AppendRecord;
                    // 1 Record 추가
                    GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
                    GridA7View.DataController.Values[iRow, 0] := '발주 - 수주';
                    GridA7View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                    GridA7View.DataController.Values[iRow, 3] := ls_Rcrd[3];
					  				GridA7View.DataController.Values[iRow, 4] := ls_Rcrd[5];
					  				GridA7View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[9], 0);        //발주비
					  				// 정산비율 계산
					  				iCharge := StrToIntDef(ls_Rcrd[7], 0);
					  				iBalju := Abs(StrToIntDef(ls_Rcrd[9], 0));
					  				iCom := StrToIntDef(ls_Rcrd[8], 0);
					  				if iCharge = 0 then
					  				begin
					  					iRateBal := 0;
					  					iRateCom := 0;
					  				end else
                    begin
                      iRateBal := (iBalju * 100 div iCharge);
                      iRateCom := (iCom * 100 div iCharge) - iRateBal;
                      if iRateCom < 0 then
                        iRateCom := 0;
                    end;
                    if iBalju = 0 then
					  					GridA7View.DataController.Values[iRow, 6] := ''
                    else
					  					GridA7View.DataController.Values[iRow, 6] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); // 정산비율

					  				GridA7View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[7], 0);        //운행요금
					  				GridA7View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[8], 0);        //수수료
					  				GridA7View.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[13], 0);       //수수료0원 운행요금
					  				GridA7View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[6], 0);       //건수
					  				GridA7View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[12], 0);      //수수료0원 건수
					  				GridA7View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[6], 0)
					  																										+ StrToIntDef(ls_Rcrd[12], 0);      //건수합계
					  				iCnt := iCnt + StrToIntDef(ls_Rcrd[6], 0);
                    iCharge2 := iCharge2 + StrToIntDef(ls_Rcrd[7], 0);
                    iCom2 := iCom2 + StrToIntDef(ls_Rcrd[8], 0);
                    iBalju2 := iBalju2 + StrToIntDef(ls_Rcrd[9], 0);
					  				ZeroCnt := ZeroCnt + StrToIntDef(ls_Rcrd[12], 0);
					  				ZeroCharge := ZeroCharge + StrToIntDef(ls_Rcrd[13], 0);
					  			end else
					  			begin
                    GetTextSeperationEx('│', slBalju[i], ls_Rcrd);
                    GetTextSeperationex('│', slSuju[j], ls_Rcrd2);
                    slSuju[j] := '';
                    iRow := GridA7View.DataController.AppendRecord;
                    // 1 Record 추가
                    GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
                    GridA7View.DataController.Values[iRow, 0] := '발주 - 수주';
                    GridA7View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                    GridA7View.DataController.Values[iRow, 3] := ls_Rcrd[3];
					  				GridA7View.DataController.Values[iRow, 4] := ls_Rcrd[5];
					  				GridA7View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[9], 0) - StrToIntDef(ls_Rcrd2[9], 0);         //발주비
					  				iCharge := StrToIntDef(ls_Rcrd[7], 0);
					  				iBalju := Abs(StrToIntDef(ls_Rcrd[9], 0));
					  				iCom := StrToIntDef(ls_Rcrd[8], 0);
					  				if iCharge = 0 then
					  				begin
					  					iRateBal := 0;
					  					iRateCom := 0;
					  				end else
					  				begin
					  					iRateBal := (iBalju * 100 div iCharge);
					  					iRateCom := (iCom * 100 div iCharge) - iRateBal;
					  					if iRateCom < 0 then
					  						iRateCom := 0;
					  				end;
					  				if iBalju = 0 then
					  					GridA7View.DataController.Values[iRow, 6] := ''
					  				else
					  					GridA7View.DataController.Values[iRow, 6] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); // 정산비율

					  				GridA7View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[7], 0) - StrToIntDef(ls_Rcrd2[7], 0);         //운행요금
					  				GridA7View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[8], 0) - StrToIntDef(ls_Rcrd2[8], 0);         //수수료
					  				GridA7View.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[13], 0) - StrToIntDef(ls_Rcrd2[12], 0);      //수수료0원 운행요금
					  				GridA7View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[6], 0) - StrToIntDef(ls_Rcrd2[6], 0);         //건수
					  				GridA7View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[12], 0) - StrToIntDef(ls_Rcrd2[12], 0);      //수수료0원 건수
					  				GridA7View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[6], 0) - StrToIntDef(ls_Rcrd2[6], 0)
					  																										+ StrToIntDef(ls_Rcrd[12], 0) - StrToIntDef(ls_Rcrd2[12], 0);      //건수합계

					  				iCnt := iCnt + StrToIntDef(ls_Rcrd[6], 0) - StrToIntDef(ls_Rcrd2[6], 0);
					  				iCharge2 := iCharge2 + StrToIntDef(ls_Rcrd[7], 0) - StrToIntDef(ls_Rcrd2[7], 0);
					  				iCom2 := iCom2 + StrToIntDef(ls_Rcrd[8], 0) - StrToIntDef(ls_Rcrd2[8], 0);
                    iBalju2 := iBalju2 + StrToIntDef(ls_Rcrd[9], 0) - StrToIntDef(ls_Rcrd2[9], 0);
					  				ZeroCnt := ZeroCnt + StrToIntDef(ls_Rcrd[12], 0);
					  				ZeroCharge := ZeroCharge + StrToIntDef(ls_Rcrd[13], 0);
                  end;
                end;
              finally
                ls_Rcrd.Free;
                ls_Rcrd2.Free;
              end;
            end;

            if slSuju.Count > 0 then
            begin
              ls_Rcrd := TStringList.Create;
              try
                for i := 0 to slSuju.Count - 1 do
                begin
                  if slSuju.Strings[i] <> '' then
                  begin
                    GetTextSeperationEx('│', slSuju[i], ls_Rcrd);
                    iRow := GridA7View.DataController.AppendRecord;
                    // 1 Record 추가
                    GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
                    GridA7View.DataController.Values[iRow, 0] := '발주 - 수주';
                    GridA7View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                    GridA7View.DataController.Values[iRow, 3] := ls_Rcrd[3];
					  				GridA7View.DataController.Values[iRow, 4] := ls_Rcrd[5];
					  				GridA7View.DataController.Values[iRow, 5] := -StrToIntDef(ls_Rcrd[9], 0);            //발주비
					  				// 정산비율 계산
					  				iCharge := StrToIntDef(ls_Rcrd[7], 0);
					  				iBalju := Abs(StrToIntDef(ls_Rcrd[9], 0));
					  				iCom := StrToIntDef(ls_Rcrd[8], 0);
					  				if iCharge = 0 then
					  				begin
					  					iRateBal := 0;
					  					iRateCom := 0;
					  				end else
					  				begin
					  					iRateBal := (iBalju * 100 div iCharge);
					  					iRateCom := (iCom * 100 div iCharge) - iRateBal;
					  					if iRateCom < 0 then
					  						iRateCom := 0;
					  				end;
					  				if iBalju = 0 then
					  					GridA7View.DataController.Values[iRow, 6] := ''
					  				else
					  					GridA7View.DataController.Values[iRow, 6] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); //정산비율

					  				GridA7View.DataController.Values[iRow, 7] := -StrToIntDef(ls_Rcrd[7], 0);            //운행요금
					  				GridA7View.DataController.Values[iRow, 8] := -StrToIntDef(ls_Rcrd[8], 0);            //수수료
					  				GridA7View.DataController.Values[iRow, 9] := -StrToIntDef(ls_Rcrd[13], 0);          //수수료0원 운행요금
					  				GridA7View.DataController.Values[iRow, 10] := -StrToIntDef(ls_Rcrd[6], 0);            //건수
					  				GridA7View.DataController.Values[iRow, 11] := -StrToIntDef(ls_Rcrd[12], 0);          //수수료0원 건수
					  				GridA7View.DataController.Values[iRow, 12] := -StrToIntDef(ls_Rcrd[6], 0)
					  																										+ -StrToIntDef(ls_Rcrd[12], 0);      //건수합계

					  				iCnt := iCnt - StrToIntDef(ls_Rcrd[6], 0);
                    iCharge2 := iCharge2 - StrToIntDef(ls_Rcrd[7], 0);
                    iCom2 := iCom2 - StrToIntDef(ls_Rcrd[8], 0);
                    iBalju2 := iBalju2 - StrToIntDef(ls_Rcrd[9], 0);
					  				ZeroCnt := ZeroCnt - StrToIntDef(ls_Rcrd[12], 0);
					  				ZeroCharge := ZeroCharge - StrToIntDef(ls_Rcrd[13], 0);
                  end;
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
            if (slBalju.Count > 0) or (slSuju.Count > 0) then
            begin
              iRow := GridA7View.DataController.AppendRecord; // 1 Record 추가
              GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
              GridA7View.DataController.Values[iRow, 0] := '발주 - 수주';
              GridA7View.DataController.Values[iRow, 2] := ' 합계';
              GridA7View.DataController.Values[iRow, 3] := '';
					  	GridA7View.DataController.Values[iRow, 4] := '';
					  	GridA7View.DataController.Values[iRow, 5] := iBalju2;        //발주비
					  	GridA7View.DataController.Values[iRow, 7] := iCharge2;       //운행요금
					  	GridA7View.DataController.Values[iRow, 8] := iCom2;          //수수료
					  	GridA7View.DataController.Values[iRow, 9] := ZeroCharge;              //수수료0원 운행요금
					  	GridA7View.DataController.Values[iRow, 10] := iCnt;           //건수
					  	GridA7View.DataController.Values[iRow, 11] := ZeroCnt;                 //수수료0원 건수
					  	GridA7View.DataController.Values[iRow, 12] := iCnt + ZeroCnt;        //건수합계
					  end;

            iBalju2 := 0;
            iCharge2 := 0;
            iCom2 := 0;
            iCnt := 0;
            if slOwner.Count > 0 then
            begin
              ls_Rcrd := TStringList.Create;
              try
                for i := 0 to slOwner.Count - 1 do
                begin
					  			GetTextSeperationEx('│', slOwner[i], ls_Rcrd);
                  iRow := GridA7View.DataController.AppendRecord; // 1 Record 추가
                  GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
                  GridA7View.DataController.Values[iRow, 0] := ls_Rcrd[11];
                  GridA7View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                  GridA7View.DataController.Values[iRow, 3] := ls_Rcrd[3];
					  			GridA7View.DataController.Values[iRow, 4] := ls_Rcrd[5];
					  			GridA7View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[9], 0);        //발주비
					  			// 정산비율 계산
					  			iCharge := StrToIntDef(ls_Rcrd[7], 0);
					  			iBalju := Abs(StrToIntDef(ls_Rcrd[9], 0));
					  			iCom := StrToIntDef(ls_Rcrd[8], 0);
					  			if iCharge = 0 then
					  			begin
					  				iRateBal := 0;
					  				iRateCom := 0;
					  			end else
					  			begin
					  				iRateBal := (iBalju * 100 div iCharge);
					  				iRateCom := (iCom * 100 div iCharge) - iRateBal;
					  				if iRateCom < 0 then
					  					iRateCom := 0;
					  			end;
					  			if iBalju = 0 then
					  				GridA7View.DataController.Values[iRow, 6] := ''
					  			else
					  				GridA7View.DataController.Values[iRow, 6] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); //정산비율

					  			GridA7View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[7], 0);        //운행요금
					  			GridA7View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[8], 0);        //수수료
					  			GridA7View.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[13], 0);      //수수료0원 운행요금
					  			GridA7View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[6], 0);        //건수
					  			GridA7View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[12], 0);      //수수료0원 건수
					  			GridA7View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[6], 0)
					  																									+ StrToIntDef(ls_Rcrd[12], 0);   //건수합계

					  			iCnt := iCnt + StrToIntDef(ls_Rcrd[6], 0);
					  			iCharge2 := iCharge2 + StrToIntDef(ls_Rcrd[7], 0);
					  			iCom2 := iCom2 + StrToIntDef(ls_Rcrd[8], 0);
					  			iBalju2 := iBalju2 + StrToIntDef(ls_Rcrd[9], 0);
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          finally
            GridA7View.EndUpdate;
            FreeAndNil(slBalju);
            FreeAndNil(slSuju);
            FreeAndNil(slOwner);
            FreeAndNil(slBalBrNo);
            FreeAndNil(slSuBrNo);
          end;
        end else
        if ls_ClientKey = 'BRSMSCHARGE' then
        begin
          GridA9DBTableView.BeginUpdate;

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          try
            for j := 0 to slList.Count - 1 do
            begin
  //-            frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
              Frm_Flash.cxPBar1.Position := j + 1;
              Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
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

                    iRow := GridA9DBTableView.DataController.AppendRecord;
                    // 1 Record 추가
                    GridA9DBTableView.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                    sTemp := ls_Rcrd[0];
                    if sTemp <> '' then
                    begin
                      sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2) + ' '
                        + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                    end;
                    GridA9DBTableView.DataController.Values[iRow, 1] := sTemp;
                    GridA9DBTableView.DataController.Values[iRow, 2] := ls_Rcrd[1]; //충전지사명
                    GridA9DBTableView.DataController.Values[iRow, 3] := ls_Rcrd[2]; //충전지사코드
                    GridA9DBTableView.DataController.Values[iRow, 4] := ls_Rcrd[3]; //출금지사명
                    GridA9DBTableView.DataController.Values[iRow, 5] := ls_Rcrd[4]; //출금지사코드
                    if StrToFloatDef(ls_Rcrd[5], 0) = 0 then
                      ls_Rcrd[5] := '0';
                    GridA9DBTableView.DataController.Values[iRow, 6] := ls_Rcrd[5]; //충전금
                    GridA9DBTableView.DataController.Values[iRow, 7] := ls_Rcrd[6]; //타입
                    GridA9DBTableView.DataController.Values[iRow, 8] := ls_Rcrd[7]; //아이디
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end else
              begin
								GMessagebox('검색된 내용이 없습니다.', CDMSE);
              end;
            end;
          finally
            frm_Main.sbar_Message.Panels[4].Text := '';
            GridA9DBTableView.EndUpdate;
          end;
        end else
        if ls_ClientKey = 'BRSMSALLCHARGE' then
        begin
          GridA10_1DBTableView.BeginUpdate;

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          try
            for j := 0 to slList.Count - 1 do
            begin
              Frm_Flash.cxPBar1.Position := j + 1;
              Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
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

                    iRow := GridA10_1DBTableView.DataController.AppendRecord;
                    // 1 Record 추가
                    GridA10_1DBTableView.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                    sTemp := ls_Rcrd[0];
                    if sTemp <> '' then
                    begin
                      sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2) + ' '
                        + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                    end;
                    GridA10_1DBTableView.DataController.Values[iRow, 1] := sTemp;
                    GridA10_1DBTableView.DataController.Values[iRow, 2] := ls_Rcrd[1]; //충전지사명
                    GridA10_1DBTableView.DataController.Values[iRow, 3] := ls_Rcrd[2]; //충전지사코드
                    GridA10_1DBTableView.DataController.Values[iRow, 4] := ls_Rcrd[3]; //출금지사명
                    GridA10_1DBTableView.DataController.Values[iRow, 5] := ls_Rcrd[4]; //출금지사코드
                    if StrToFloatDef(ls_Rcrd[5], 0) = 0 then ls_Rcrd[5] := '0';
                    GridA10_1DBTableView.DataController.Values[iRow, 6] := ls_Rcrd[5]; //충전금
                    GridA10_1DBTableView.DataController.Values[iRow, 7] := ls_Rcrd[6]; //타입
                    GridA10_1DBTableView.DataController.Values[iRow, 8] := ls_Rcrd[7]; //아이디
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end else
              begin
								GMessagebox('검색된 내용이 없습니다.', CDMSE);
              end;
            end;
          finally
            frm_Main.sbar_Message.Panels[4].Text := '';
            GridA10_1DBTableView.EndUpdate;
          end;
        end else
        if ls_ClientKey = 'ACC021' then
        begin
          if ( Not Assigned(Frm_ACC02) ) Or ( Frm_ACC02 = Nil ) then Frm_ACC02 := TFrm_ACC02.Create(Nil);
          Frm_ACC02.proc_recieve(slList);
          Frm_ACC02.Show;
        end;
      end else
      begin
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
        Screen.Cursor := crDefault;
        Exit;
      end;
    finally
      xdom := Nil;
    end;
  except
    Screen.Cursor := crDefault;
    Exit;
  end;
end;

procedure TFrm_ACC.GridA1ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.GridA2ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.GridA2ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA2View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.GridA3ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.GridA3ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA3View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.GridA4ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.GridA4ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA4View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.GridA5ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.GridA5ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA5View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.GridA6ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iRow: Integer;
  sBrNo: string;
begin
  iBrNo := GridA6View.GetColumnByFieldName('지사코드').Index;
  iRow := GridA6View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sBrNo := GridA6View.DataController.Values[iRow, iBrNo];
  proc_WKSolution2(sBrNo);
end;

procedure TFrm_ACC.GridA6ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.GridA6ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA6View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.GridA7ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.GridA7ViewColumnPosChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_Change_Title;
end;

procedure TFrm_ACC.GridA7ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA7View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.GridA7ViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  iRow: Integer;
begin
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then
    exit;
  try
    AStyle := frm_Main.cxStyle17;
    iRow := GridA7View.DataController.GetRowInfo(ARecord.Index).RecordIndex;
    if GridA7View.DataController.Values[iRow, 0] = null then
      exit;
    if GridA7View.DataController.Values[iRow, 0] = '발주' then
      AStyle.Color := $00B9FFFA
    else
    if GridA7View.DataController.Values[iRow, 0] = '수주' then
      AStyle.Color := $00FFF4E3
    else
    if GridA7View.DataController.Values[iRow, 0] = '발주 - 수주' then
      AStyle.Color := $00FFC4C4
    else
      AStyle.Color := $00CEFFCE;
  except
  end;
end;

procedure TFrm_ACC.GridA91DBTableViewBands1HeaderClick(Sender: TObject);
begin
  FSorted := not FSorted;
  FSortedBand := Sender as TcxGridBand;
  pBandSort(GridA10DBTableView, 1);
end;

procedure TFrm_ACC.pBandSort( vGridBand : TcxGridBandedTableView; vIdx : Integer);
begin
  try
    AIndex := vIdx;

    if (vGridBand.Columns[vIdx].SortOrder = soNone) or
      (vGridBand.Columns[vIdx].SortOrder = soDescending) then
      vGridBand.Columns[vIdx].SortOrder := soAscending
    else
      if vGridBand.Columns[vIdx].SortOrder = soAscending then
      vGridBand.Columns[vIdx].SortOrder := soDescending;
    vGridBand.Columns[vIdx].SortIndex := 0;

    vGridBand.Invalidate;
  except

  end;
end;

procedure TFrm_ACC.GridA9DBTableViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.GridA9DBTableViewDataControllerSortingChanged(
  Sender: TObject);
begin
  gfSetIndexNo(GridA9DBTableView, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.lbSearchBranch1Click(Sender: TObject);
begin
	edtCashMoveBrName1.SetFocus;
end;

procedure TFrm_ACC.lbSearchBranch2Click(Sender: TObject);
begin
	edtCashMoveBrName2.SetFocus;
end;

procedure TFrm_ACC.lbSearchBranch3Click(Sender: TObject);
begin
	edtCashMoveBrName3.SetFocus;
end;

procedure TFrm_ACC.lst_BRList1DblClick(Sender: TObject);
begin
	SetDebugeWrite('TFrm_ACC.lst_BRListDblClick');
	cxcbCashMoveBrName1.ItemIndex := StrToIntDef(searchBRlist1[lst_BRList1.ItemIndex], 0);
	lst_BRList1.Visible := False;
end;

procedure TFrm_ACC.lst_BRList1Exit(Sender: TObject);
begin
	SetDebugeWrite('TFrm_ACC.lst_BRListExit');
	lst_BRList1.Visible := False;
end;

procedure TFrm_ACC.lst_BRList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('TFrm_ACC.lst_BRListKeyDown');
	if key = vk_Return then
	begin
		if lst_BRList1.ItemIndex < 0 then exit;
		cxcbCashMoveBrName1.ItemIndex := StrToIntDef(searchBRlist1[lst_BRList1.ItemIndex], 0);
		lst_BRList1.Visible := False;
	end else
	if Key = VK_UP then
	begin
		if lst_BRlist1.Selected[0] then edtCashMoveBrName1.SetFocus;
	end;
end;

procedure TFrm_ACC.lst_BRList2DblClick(Sender: TObject);
begin
	SetDebugeWrite('TFrm_ACC.lst_BRList2DblClick');
	cxcbCashMoveBrName2.ItemIndex := StrToIntDef(searchBRlist2[lst_BRList2.ItemIndex], 0);
	lst_BRList2.Visible := False;
end;

procedure TFrm_ACC.lst_BRList2Exit(Sender: TObject);
begin
	SetDebugeWrite('TFrm_ACC.lst_BRList2Exit');
	lst_BRList2.Visible := False;
end;

procedure TFrm_ACC.lst_BRList2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('TFrm_ACC.lst_BRList2KeyDown');
	if key = vk_Return then
	begin
		if lst_BRList2.ItemIndex < 0 then exit;
		cxcbCashMoveBrName2.ItemIndex := StrToIntDef(searchBRlist2[lst_BRList2.ItemIndex], 0);
		lst_BRList2.Visible := False;
	end else
	if Key = VK_UP then
	begin
		if lst_BRList2.Selected[0] then cxcbCashMoveBrName2.SetFocus;
	end;
end;

procedure TFrm_ACC.lst_BRList3DblClick(Sender: TObject);
begin
	SetDebugeWrite('TFrm_ACC.lst_BRList3DblClick');
	cxcbCashMoveBrName4.ItemIndex := StrToIntDef(searchBRlist3[lst_BRList3.ItemIndex], 0);
	lst_BRList3.Visible := False;
end;

procedure TFrm_ACC.lst_BRList3Exit(Sender: TObject);
begin
	SetDebugeWrite('TFrm_ACC.lst_BRList3Exit');
	lst_BRList3.Visible := False;
end;

procedure TFrm_ACC.lst_BRList3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	SetDebugeWrite('TFrm_ACC.lst_BRList3KeyDown');
	if key = vk_Return then
	begin
		if lst_BRList3.ItemIndex < 0 then exit;
		cxcbCashMoveBrName4.ItemIndex := StrToIntDef(searchBRlist3[lst_BRList3.ItemIndex], 0);
		lst_BRList3.Visible := False;
	end else
	if Key = VK_UP then
	begin
		if lst_BRList3.Selected[0] then edtCashMoveBrName3.SetFocus;
	end;
end;

procedure TFrm_ACC.Grid1ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA1View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.MiYesterdayClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACC.MiOneWeekClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACC.MiOneMonthClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACC.MiStartMonthClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

end.

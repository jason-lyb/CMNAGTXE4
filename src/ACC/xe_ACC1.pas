unit xe_ACC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, Menus,
  system.StrUtils, system.Math,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
	cxLabel, cxCheckBox, cxDropDownEdit, cxCalendar, cxGridBandedTableView, cxGridLevel, cxGridCustomTableView,
	cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxRadioGroup,
  ExtCtrls, cxTextEdit, cxButtons, cxMaskEdit, cxContainer, cxPC, DateUtils, MSXML2_TLB, cxCurrencyEdit,
	cxSpinEdit, OleCtrls, SHDocVw, Registry, cxImageComboBox, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, Gauges, ShellAPI,
  ComObj, cxCheckComboBox, IniFiles, cxSplitter, cxTL, cxInplaceContainer, cxDBTL,
  cxTLData, xe_Structure, cxMemo, cxPCdxBarPopupMenu,
  cxLookAndFeels, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,
  cxTLdxBarBuiltInMenu, cxGroupBox, cxTimeEdit, GradientLabel, dxSkinsCore,
  dxSkinscxPCPainter, dxBarBuiltInMenu, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_ACC1 = class(TForm)
    pop_dateA1: TPopupMenu;
    MiYesterday: TMenuItem;
    MiOneWeek: TMenuItem;
    MiOneMonth: TMenuItem;
    MiStartMonth: TMenuItem;
    MiToday: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    cxTabSheet12: TcxTabSheet;
    cxTabSheet13: TcxTabSheet;
    cxTabSheet14: TcxTabSheet;
    cxTabSheet15: TcxTabSheet;
    cxTabSheet16: TcxTabSheet;
    PopupMenuA1: TPopupMenu;
    N1: TMenuItem;
    cxTabSheet17: TcxTabSheet;
    cxGroupBox15: TcxGroupBox;
    lblSosokNameA10: TcxLabel;
    cxDtStartA10: TcxDateEdit;
    cxLabel64: TcxLabel;
    cxDtEndA10: TcxDateEdit;
    btnSearchA10: TcxButton;
    btnExcelA10: TcxButton;
    btnDateA10: TcxButton;
    cxTeStartA10: TcxTimeEdit;
    cxTeEndA10: TcxTimeEdit;
    cxLabel66: TcxLabel;
    GridA10: TcxGrid;
    cxGrid10View: TcxGridDBTableView;
    cxGrid10ViewColumn1: TcxGridDBColumn;
    cxGrid10ViewColumn2: TcxGridDBColumn;
    cxGrid10ViewColumn3: TcxGridDBColumn;
    cxGrid10ViewColumn4: TcxGridDBColumn;
    cxGrid10ViewColumn5: TcxGridDBColumn;
    cxGrid10ViewColumn6: TcxGridDBColumn;
    cxGrid10ViewColumn26: TcxGridDBColumn;
    cxGrid10ViewColumn27: TcxGridDBColumn;
    cxGrid10ViewColumn28: TcxGridDBColumn;
    cxGrid10ViewColumn7: TcxGridDBColumn;
    cxGrid10ViewColumn8: TcxGridDBColumn;
    cxGrid10ViewColumn9: TcxGridDBColumn;
    cxGrid10ViewColumn10: TcxGridDBColumn;
    cxGrid10ViewColumn11: TcxGridDBColumn;
    cxGrid10ViewColumn12: TcxGridDBColumn;
    cxGrid10ViewColumn13: TcxGridDBColumn;
    cxGrid10ViewColumn14: TcxGridDBColumn;
    cxGrid10ViewColumn15: TcxGridDBColumn;
    cxGrid10ViewColumn16: TcxGridDBColumn;
    cxGrid10ViewColumn17: TcxGridDBColumn;
    cxGrid10ViewColumn18: TcxGridDBColumn;
    cxGrid10ViewColumn19: TcxGridDBColumn;
    cxGrid10ViewColumn20: TcxGridDBColumn;
    cxGrid10ViewColumn21: TcxGridDBColumn;
    cxGrid10ViewColumn29: TcxGridDBColumn;
    cxGrid10ViewColumn30: TcxGridDBColumn;
    cxGrid10ViewColumn22: TcxGridDBColumn;
    cxGrid10ViewColumn23: TcxGridDBColumn;
    cxGrid10ViewColumn24: TcxGridDBColumn;
    cxGrid10ViewColumn25: TcxGridDBColumn;
    GridA10Level1: TcxGridLevel;
    Shape49: TShape;
    cxLabel67: TcxLabel;
    cxSTR01: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    pnlMainA11: TPanel;
    Shape50: TShape;
    cxGroupBox11: TcxGroupBox;
    lblSosokNameA11: TcxLabel;
    cxDtStartA11: TcxDateEdit;
    cxLabel69: TcxLabel;
    cxDtEndA11: TcxDateEdit;
    btnSearchA11: TcxButton;
    btnExcelA11: TcxButton;
    btnDateA11: TcxButton;
    cxTeStartA11: TcxTimeEdit;
    cxTeEndA11: TcxTimeEdit;
    btnHelpA11: TcxButton;
    cxGridA11: TcxGrid;
    cxGridA11View: TcxGridDBTableView;
    Grid3ViewColumnGridView2cxGridViewColumn1: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn13: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn2: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn3: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn4: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn5: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn6: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn7: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn8: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn9: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn10: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn11: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn12: TcxGridDBColumn;
    cxGridA11Level: TcxGridLevel;
    pnlHelpA11: TPanel;
    cxGroupBox12: TcxGroupBox;
    cxLabel71: TcxLabel;
    BtnCloseA11: TcxButton;
    pnlMainA12: TPanel;
    Shape53: TShape;
    cxGroupBox14: TcxGroupBox;
    lblSosokNameA12: TcxLabel;
    cxDtStartA12: TcxDateEdit;
    cxLabel73: TcxLabel;
    cxDtEndA12: TcxDateEdit;
    btnSearchA12: TcxButton;
    btnExcelA12: TcxButton;
    btnDateA12: TcxButton;
    cxTeStartA12: TcxTimeEdit;
    cxTeEndA12: TcxTimeEdit;
    btnHelpA12: TcxButton;
    cxGridA12: TcxGrid;
    cxGridA12View: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridA12Level: TcxGridLevel;
    pnlHelpA12: TPanel;
    cxGroupBox17: TcxGroupBox;
    cxLabel75: TcxLabel;
    BtnCloseA12: TcxButton;
    pnlMainA13: TPanel;
    Shape56: TShape;
    cxGroupBox18: TcxGroupBox;
    lblSosokNameA13: TcxLabel;
    cxDtStartA13: TcxDateEdit;
    cxLabel77: TcxLabel;
    cxDtEndA13: TcxDateEdit;
    btnSearchA13: TcxButton;
    btnExcelA13: TcxButton;
    btnDateA13: TcxButton;
    cxTeStartA13: TcxTimeEdit;
    cxTeEndA13: TcxTimeEdit;
    btnHelpA13: TcxButton;
    cxGridA13: TcxGrid;
    cxGridA13View: TcxGridDBTableView;
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
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridA13Level: TcxGridLevel;
    pnlHelpA13: TPanel;
    cxGropuBox12: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxLabel79: TcxLabel;
    BtnCloseA13: TcxButton;
    cxPageControl2: TcxPageControl;
    cxTabSheet141: TcxTabSheet;
    PnlMain: TPanel;
    Panel3: TPanel;
    Shape59: TShape;
    cxGroupBox19: TcxGroupBox;
    lblSosokNameA14: TcxLabel;
    cxDtStartA14: TcxDateEdit;
    cxLabel81: TcxLabel;
    cxDtEndA14: TcxDateEdit;
    btnSearchA14: TcxButton;
    btnExcelA14: TcxButton;
    btnDateA14: TcxButton;
    cxTeStartA14: TcxTimeEdit;
    cxTeEndA14: TcxTimeEdit;
    cxLabel86: TcxLabel;
    cxTabSheet142: TcxTabSheet;
    Panel4: TPanel;
    Panel5: TPanel;
    Shape62: TShape;
    cxGroupBox20: TcxGroupBox;
    lblSosokNameA141: TcxLabel;
    btnSearchA141: TcxButton;
    btnExcelA141: TcxButton;
    cxSEMonth: TcxSpinEdit;
    cxSEYear: TcxSpinEdit;
    cxLabel85: TcxLabel;
    cxGridA141: TcxGrid;
    cxGridA141View: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridA141Level: TcxGridLevel;
    pnlMainA15: TPanel;
    Shape65: TShape;
    cxGroupBox21: TcxGroupBox;
    lblSosokNameA15: TcxLabel;
    cxDtStartA15: TcxDateEdit;
    cxLabel88: TcxLabel;
    cxDtEndA15: TcxDateEdit;
    btnSearchA15: TcxButton;
    btnExcelA15: TcxButton;
    btnDateA15: TcxButton;
    cxTeStartA15: TcxTimeEdit;
    cxTeEndA15: TcxTimeEdit;
    cxGridA15: TcxGrid;
    cxGridA15View: TcxGridDBTableView;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxgrdbclmnGridView7Column1: TcxGridDBColumn;
    cxGridA15Level: TcxGridLevel;
    pnlMainA16: TPanel;
    Shape68: TShape;
    cxGroupBox22: TcxGroupBox;
    lblSosokNameA16: TcxLabel;
    cxDtStartA16: TcxDateEdit;
    cxLabel91: TcxLabel;
    cxDtEndA16: TcxDateEdit;
    btnSearchA16: TcxButton;
    btnExcelA16: TcxButton;
    btnDateA16: TcxButton;
    cxTeStartA16: TcxTimeEdit;
    cxTeEndA16: TcxTimeEdit;
    cxGridA16: TcxGrid;
    cxGridA16View: TcxGridDBTableView;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridA16Level: TcxGridLevel;
    pnlMainA17: TPanel;
    Shape71: TShape;
    cxGroupBox23: TcxGroupBox;
    lblSosokNameA17: TcxLabel;
    cxDtStartA17: TcxDateEdit;
    cxLabel94: TcxLabel;
    cxDtEndA17: TcxDateEdit;
    btnSearchA17: TcxButton;
    btnExcelA17: TcxButton;
    btnDateA17: TcxButton;
    cxTeStartA17: TcxTimeEdit;
    cxTeEndA17: TcxTimeEdit;
    cxLabel96: TcxLabel;
    cxLabel97: TcxLabel;
    cxCbA17: TcxComboBox;
    cxCb1A17: TcxComboBox;
    cxGridA17: TcxGrid;
    cxGridA17View: TcxGridDBTableView;
    cxgrdbclmn_counselColumn1: TcxGridDBColumn;
    cxgrdbclmn_counselColumn2: TcxGridDBColumn;
    cxgrdbclmn_counselColumn3: TcxGridDBColumn;
    cxgrdbclmn_counselColumn4: TcxGridDBColumn;
    cxgrdbclmn_counselColumn5: TcxGridDBColumn;
    cxgrdbclmn_counselColumn6: TcxGridDBColumn;
    cxgrdbclmn_counselColumn8: TcxGridDBColumn;
    cxgrdbclmn_counselColumn7: TcxGridDBColumn;
    cxgrdbclmn_counselColumn9: TcxGridDBColumn;
    cxgrdbclmn_counselColumn10: TcxGridDBColumn;
    cxgrdbclmn_counselColumn11: TcxGridDBColumn;
    cxgrdbclmn_counselColumn12: TcxGridDBColumn;
    cxgrdbclmn_counselColumn14: TcxGridDBColumn;
    cxgrdbclmn_counselColumn15: TcxGridDBColumn;
    cxgrdbclmn_counselColumn16: TcxGridDBColumn;
    cxgrdbclmn_counselColumn17: TcxGridDBColumn;
    cxgrdbclmn_counselColumn18: TcxGridDBColumn;
    cxgrdbclmn_counselColumn19: TcxGridDBColumn;
    cxgrdbclmn_counselColumn20: TcxGridDBColumn;
    cxgrdbclmn_counselColumn21: TcxGridDBColumn;
    cxgrdbclmn_counselColumn22: TcxGridDBColumn;
    cxgrdbclmn_counselColumn23: TcxGridDBColumn;
    cxGridA17Level: TcxGridLevel;
    N13: TMenuItem;
    lbTitle_CardList: TListBox;
    grpSetCardCancel: TcxGroupBox;
    btn_CardCancel: TcxButton;
    btnCardCancelClose: TcxButton;
    cxLabel100: TcxLabel;
    lbApproveNo: TcxLabel;
    cxLabel104: TcxLabel;
    edtCardCanReason: TcxTextEdit;
    cxLabel103: TcxLabel;
    lbTranNo: TcxLabel;
    mmo_ResultMsg: TcxMemo;
    N12: TMenuItem;
    btn_CardCancelShow: TcxButton;
    cxgrdbclmn_counselColumn24: TcxGridDBColumn;
    Label18: TcxLabel;
    chkCash: TcxCheckBox;
    cxGridA14: TcxGrid;
    cxGridA14View: TcxGridDBTableView;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridA14Level: TcxGridLevel;
    cxTabSheet18: TcxTabSheet;
    cxTabSheet19: TcxTabSheet;
    pnlMainA18: TPanel;
    Shape1: TShape;
    cxGroupBox1: TcxGroupBox;
    lblSosokNameA18: TcxLabel;
    cxDtStartA18: TcxDateEdit;
    cxDtEndA18: TcxDateEdit;
    btnSearchA18: TcxButton;
    btnExcelA18: TcxButton;
    btnDateA18: TcxButton;
    cxLabel5: TcxLabel;
    edt_A18: TcxTextEdit;
    cxCb1A18: TcxComboBox;
    cxLabel2: TcxLabel;
    cxLabel58: TcxLabel;
    cxLabel59: TcxLabel;
    cxGridA18: TcxGrid;
    cxGridA18View: TcxGridDBTableView;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridA18ViewColumn6: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridA18ViewColumn1: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridA18ViewColumn2: TcxGridDBColumn;
    cxGridA18ViewColumn3: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridA18ViewColumn4: TcxGridDBColumn;
    cxGridA18ViewColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    pnlMainA19: TPanel;
    Shape6: TShape;
    cxGroupBox2: TcxGroupBox;
    lblSosokNameA19: TcxLabel;
    cxDtStartA19: TcxDateEdit;
    cxDtEndA19: TcxDateEdit;
    btnSearchA19: TcxButton;
    btnExcelA19: TcxButton;
    btnDateA19: TcxButton;
    edt_A19: TcxTextEdit;
    cxCb1A19: TcxComboBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxGridA19: TcxGrid;
    cxGridA19View: TcxGridDBTableView;
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
    cxGridLevel2: TcxGridLevel;
    cxCb1A182: TcxComboBox;
    cxCb1A192: TcxComboBox;
    N14: TMenuItem;
    N15: TMenuItem;
    cxGridA17ViewColumn1: TcxGridDBColumn;
    cxLabel218: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel28: TcxLabel;
    chkCard: TcxCheckBox;
    cxLabel29: TcxLabel;
    cxGrid10ViewColumn31: TcxGridDBColumn;
    cxGridA11ViewColumn1: TcxGridDBColumn;
    cxGridA12ViewColumn1: TcxGridDBColumn;
    cxGridA13ViewColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure MiTodayClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure MiYesterdayClick(Sender: TObject);
    procedure MiOneWeekClick(Sender: TObject);
    procedure MiOneMonthClick(Sender: TObject);
    procedure MiStartMonthClick(Sender: TObject);
    procedure PopupMenuA1Popup(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure btnExcelA10Click(Sender: TObject);
    procedure cxGrid10ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid10ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGrid10ViewDataControllerSortingChanged(Sender: TObject);
    procedure BtnCloseA11Click(Sender: TObject);
    procedure btnHelpA11Click(Sender: TObject);
    procedure btnSearchA11Click(Sender: TObject);
    procedure btnExcelA11Click(Sender: TObject);
    procedure cxGridA11ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridA11ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA11ViewDataControllerSortingChanged(Sender: TObject);
    procedure BtnCloseA12Click(Sender: TObject);
    procedure btnHelpA12Click(Sender: TObject);
    procedure btnSearchA12Click(Sender: TObject);
    procedure btnExcelA12Click(Sender: TObject);
    procedure cxGridA12ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA12ViewDataControllerSortingChanged(Sender: TObject);
    procedure BtnCloseA13Click(Sender: TObject);
    procedure btnHelpA13Click(Sender: TObject);
    procedure btnSearchA13Click(Sender: TObject);
    procedure btnExcelA13Click(Sender: TObject);
    procedure cxGridA13ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridA13ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA13ViewDataControllerSortingChanged(Sender: TObject);
    procedure btnSearchA141Click(Sender: TObject);
		procedure btnSearchA14Click(Sender: TObject);
		procedure btnExcelA141Click(Sender: TObject);
		procedure btnExcelA14Click(Sender: TObject);
		procedure cxGridA141ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridA14ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA14ViewDataControllerSortingChanged(Sender: TObject);
    procedure cxGridA141ViewDataControllerSortingChanged(Sender: TObject);
    procedure btnSearchA15Click(Sender: TObject);
    procedure btnExcelA15Click(Sender: TObject);
    procedure cxGridA15ViewDataControllerSortingChanged(Sender: TObject);
    procedure btnSearchA16Click(Sender: TObject);
    procedure btnExcelA16Click(Sender: TObject);
    procedure cxGridA16ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridA16ViewDataControllerSortingChanged(Sender: TObject);
    procedure btnSearchA17Click(Sender: TObject);
    procedure btnExcelA17Click(Sender: TObject);
    procedure cxGridA17ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridA17ViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxGridA17ViewColumnPosChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure btnSearchA10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure btn_CardCancelClick(Sender: TObject);
    procedure btnCardCancelCloseClick(Sender: TObject);
    procedure btn_CardCancelShowClick(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure cxGridA141ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridA141ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridA141ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridA14ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridA14ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridA14ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
		procedure btnSearchA19Click(Sender: TObject);
    procedure btnSearchA18Click(Sender: TObject);
    procedure btnExcelA18Click(Sender: TObject);
    procedure btnExcelA19Click(Sender: TObject);
    procedure edt_A18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_A19KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure cxGridA19ViewDataControllerSortingChanged(Sender: TObject);
    procedure cxGridA19ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA18ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA18ViewDataControllerSortingChanged(Sender: TObject);
    procedure grpSetCardCancelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;
    // �����ٿ� ����(��ȸ�� ��ȸ���� ���)
    FExcelDownWithHolding : string;

		dORDER_CALC_CC1, dORDER_CALC_CC2, dORDER_CALC_CC3, 
		dORDER_CALC_MM1, dORDER_CALC_MM2, dORDER_CALC_MM3 : Integer;
		
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_recieve(slList: TStringList);
    procedure proc_CashList2;

    procedure proc_BankLog(ABrNo, AType1, AType2, AType3, APack: string);
    procedure proc_BankLog3(ABrNo: string);
    procedure proc_BankLog4(sBrNo, Type1, Type2, Type3, Type4: string);
    procedure proc_BankLog5(sBrNo, Type1: string);

    procedure proc_PROFIT_FEE_SUMMARY;
    procedure proc_PROFIT_FEE_DETAIL(sBrNo: string);
    procedure proc_ORDER_CALC_SUMMARY;
    procedure proc_DRIVER_FEE_DETAIL(sBrNo: string; iCol: Integer);
    procedure proc_DRIVER_FEE_SUMMARY;
		procedure proc_DRIVER_FEE_SUMMARY_DETAIL(sBrNo: string; iCol: Integer);
		procedure proc_ORDER_CALC_MM_DETAIL(sHdNo, sBrNo, sBrNm, sIBrNo: string;AView: TcxGridDBTableView);
		procedure proc_ORDER_CALC_MM_SUMMARY(AView: TcxGridDBTableView);
		procedure proc_ORDER_CALC_CC_DETAIL(sBrNo: string);
		procedure proc_ORDER_CALC_CC_SUMMARY;
		procedure proc_COUPON_APPR;
		procedure proc_COUPON_LIST;
		procedure proc_Change_Title_CardList;
    procedure proc_ApproveCancelReq;
    function ResponseCardProcess(AXml: string; var AMsg: String): Boolean;
		procedure proc_BRCOUPON_LIST(AType : integer);
	public
    { Public declarations }
    procedure proc_init;
    procedure proc_BrNameSet;
	end;

var
  Frm_ACC1: TFrm_ACC1;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_ACC01, xe_Flash, xe_ACC02, xe_ACC03, xe_ACC04,
  xe_ACC05, xe_ACC07, xe_ACC06, xe_JON51, xe_SearchWord;


procedure TFrm_ACC1.MiTodayClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_ACC1.PopupMenuA1Popup(Sender: TObject);
var iRow, iTmp : Integer;
	sTmp : string;
	AView: TcxGridDBTableView;
begin
	N12.Visible := False;
	N13.Visible := False;
	N14.Visible := False;    //������� ����
	N15.Visible := False;    //�̻������ ����
	case cxPageControl1.ActivePageIndex of
		7:  begin
					iRow := cxGridA17View.DataController.FocusedRecordIndex;
					iTmp    := cxGridA17View.GetColumnByFieldName('������ȣ').Index;
					if cxGridA17View.DataController.Values[iRow,iTmp] = '' then
					begin
						N12.Visible := True;
					end;
					N13.Visible := True;
				end;
	8,9:  begin
					if cxPageControl1.ActivePageIndex = 8 then AView := cxGridA18View else AView := cxGridA19View;
					iRow := AView.DataController.FocusedRecordIndex;
					iTmp := AView.GetColumnByFieldName('��뿩��').Index;
					sTmp := AView.DataController.Values[iRow, iTmp];

					if sTmp = '�������' then N15.Visible := True;
					if (sTmp = '�̻��') or (sTmp = '���')   then N14.Visible := True;
					N14.Tag := cxPageControl1.ActivePageIndex;
					N15.Tag := cxPageControl1.ActivePageIndex;
				end;
	end;
end;

procedure TFrm_ACC1.N12Click(Sender: TObject);
var iRow, iApproveNo, iTrans, iTmp : integer;
		sApproveNo, sTrans : string;
begin
	if grpSetCardCancel.Visible then
	begin
		grpSetCardCancel.Visible := False;
		Exit;
	end;

	lbApproveNo.Caption := '';
	lbTranNo.Caption := '';
	edtCardCanReason.Text := '';
	mmo_ResultMsg.clear;

	iRow := cxGridA17View.DataController.FocusedRecordIndex;
	if iRow < 0 then exit;

	iTmp    := cxGridA17View.GetColumnByFieldName('������ȣ').Index;
	if cxGridA17View.DataController.Values[iRow,iTmp] <> '' then
	begin
		GMessagebox('������ȣ�� �ִ� ī������� ���� ����â���� ���� ���� ����Ͻʽÿ�.', CDMSI);
		Exit;
	end;

	iApproveNo    := cxGridA17View.GetColumnByFieldName('ī�屸�Ź�ȣ').Index;
  if cxGridA17View.DataController.Values[iRow,iApproveNo] = Null then Exit;

	sApproveNo := cxGridA17View.DataController.Values[iRow,iApproveNo];
	if sApproveNo = '' then Exit;
	lbApproveNo.Caption := sApproveNo;

	iTrans    := cxGridA17View.GetColumnByFieldName('�ŷ���ȣ').Index;
  if cxGridA17View.DataController.Values[iRow,iTrans] <> Null then
  begin
  	sTrans := cxGridA17View.DataController.Values[iRow,iTrans];
  	lbTranNo.Caption := sTrans;
  end;

  grpSetCardCancel.Left := (pnlMainA17.Width  - grpSetCardCancel.Width ) div 2;
  grpSetCardCancel.Top  := (pnlMainA17.Height - grpSetCardCancel.Height) div 2;
	grpSetCardCancel.Visible := True;
end;

procedure TFrm_ACC1.N13Click(Sender: TObject);
var
	i, iRow: Integer;
	sTemp: string;
begin
	SetDebugeWrite('TFrm_ACC.N13Click');
	try
		if cxPageControl1.ActivePageIndex = 7 then
		begin
			GS_EnvFile.EraseSection('GridA17_Title');
			for i := 0 to cxGridA17View.ColumnCount - 1 do
			begin
				sTemp := cxGridA17View.Columns[i].DataBinding.FieldName;
				iRow := lbTitle_CardList.Items.IndexOf(sTemp);
				cxGridA17View.Columns[i].Index := iRow;
			end;
			proc_Change_Title_CardList;
		end;
	except
  end;
end;

procedure TFrm_ACC1.N14Click(Sender: TObject);
var XmlData, Param, ErrMsg : string;
	ErrCode, iRow, iTag, iBrNo, iCuNo : Integer;
	sBrNo, sCuNo : string;
	AView: TcxGridDBTableView;
	AButton : TcxButton;
begin
	Try
		Param := '';

		iTag := N14.Tag;
		if iTag = 8 then
		begin
			AView := cxGridA18View;
			AButton := btnSearchA18;
		end else if iTag = 9 then 
		begin
			AView := cxGridA19View;
			AButton := btnSearchA19;
		end;
	
		iBrNo := AView.GetColumnByFieldName('�����ڵ�').Index;
		iCuNo := AView.GetColumnByFieldName('������ȣ').Index;
		iRow := AView.DataController.FocusedRecordIndex;

		sBrNo := AView.DataController.Values[iRow, iBrNo];
		sCuNo := AView.DataController.Values[iRow, iCuNo];

		Param := sBrNo;
		Param := Param + '��' + sCuNo;

		if not RequestBase(GetCallable06('SET_SELF_COUPON_USE', 'MNG_SELF_COUPON.SET_SELF_COUPON_USE', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('��������-������� �������'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end else
		begin
			GMessagebox('�������¸� [�������]���� ����Ǿ����ϴ�.', CDMSI);
		end;
		AButton.Click;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_ACC1.N15Click(Sender: TObject);
var XmlData, Param, ErrMsg : string;
	ErrCode, iRow, iTag, iBrNo, iCuNo : Integer;
	sBrNo, sCuNo : string;
	AView: TcxGridDBTableView;
	AButton : TcxButton;
begin
	Try
		Param := '';

		iTag := N15.Tag;
		if iTag = 8 then
		begin
			AView := cxGridA18View;
			AButton := btnSearchA18;
		end else if iTag = 9 then 
		begin
			AView := cxGridA19View;
			AButton := btnSearchA19;
		end;
	
		iBrNo := AView.GetColumnByFieldName('�����ڵ�').Index;
		iCuNo := AView.GetColumnByFieldName('������ȣ').Index;
		iRow := AView.DataController.FocusedRecordIndex;

		sBrNo := AView.DataController.Values[iRow, iBrNo];
		sCuNo := AView.DataController.Values[iRow, iCuNo];

		Param := sBrNo;
		Param := Param + '��' + sCuNo;

		if not RequestBase(GetCallable06('SET_SELF_COUPON_CANCEL', 'MNG_SELF_COUPON.SET_SELF_COUPON_CANCEL', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('��������-�̻������ �������'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end else
		begin
			GMessagebox('������� ���¸� [�̻��(���)]�� ����Ǿ����ϴ�.', CDMSI);
		end;
		AButton.Click;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_ACC1.N1Click(Sender: TObject);
begin
	case cxPageControl1.ActivePageIndex of
	 0 : btnExcelA10.Click;
   1 : btnExcelA11.Click;
   2 : btnExcelA12.Click;
   3 : btnExcelA13.Click;
   4 : begin
          if cxPageControl2.ActivePageIndex = 0 then btnExcelA14.Click else
          if cxPageControl2.ActivePageIndex = 1 then btnExcelA141.Click;
        end;
   5 : btnExcelA15.Click;
	 6 : btnExcelA16.Click;
   7 : btnExcelA17.Click;
	 8 : btnExcelA18.Click;
	 9 : btnExcelA19.Click;
	end;
end;

procedure TFrm_ACC1.grpSetCardCancelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(grpSetCardCancel.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_ACC1.proc_init;
Var i,iRow, iCol : Integer;
	sTmp : string;
begin
  // --------------------------------------------------------------------------- A10
  cxDtStartA10.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA10.Date := cxDtStartA10.Date + 1;

  for i := 0 to cxGrid10View.ColumnCount - 1 do
  begin
    if i in [0] then
      cxGrid10View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [2..29] then
      cxGrid10View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxGrid10View.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGrid10View.DataController.SetRecordCount(0);

  //---------------------------------------------------------------------------- A11
  cxDtStartA11.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA11.Date := cxDtStartA11.Date + 1;

  for i := 0 to cxGridA11View.ColumnCount - 1 do
  begin
    if i in [4..13] then
      cxGridA11View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxGridA11View.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGridA11View.DataController.SetRecordCount(0);

  //---------------------------------------------------------------------------- A12
  cxDtStartA12.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA12.Date := cxDtStartA12.Date + 1;

  //�ݿ�������
  for i := 0 to cxGridA12View.ColumnCount - 1 do
  begin
    if i in [0] then
      cxGridA12View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [3..12] then
      cxGridA12View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxGridA12View.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGridA12View.DataController.SetRecordCount(0);

  //---------------------------------------------------------------------------- A13
  cxDtStartA13.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA13.Date := cxDtStartA13.Date + 1;

  for i := 0 to cxGridA13View.ColumnCount - 1 do
  begin
    if i in [0] then
      cxGridA13View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [3..12] then
      cxGridA13View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxGridA13View.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGridA13View.DataController.SetRecordCount(0);

  //---------------------------------------------------------------------------- A14

  cxPageControl2.ActivePageIndex := 0;

  cxDtStartA14.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA14.Date := cxDtStartA14.Date + 1;

  for i := 0 to cxGridA14View.ColumnCount - 1 do
  begin
    if i in [0] then
      cxGridA14View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [5..7] then
      cxGridA14View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxGridA14View.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGridA14View.DataController.SetRecordCount(0);

  cxSEYear.Value := StrToIntDef(FormatDateTime('YYYY', Now), 1);
  cxSEMonth.Value := StrToIntDef(FormatDateTime('MM'  , Now), 1);

  for i := 0 to cxGridA141View.ColumnCount - 1 do
  begin
    if i in [0] then
      cxGridA141View.Columns[i].DataBinding.ValueType := 'Integer' else
		if i in [5, 6, 7] then
      cxGridA141View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxGridA141View.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGridA141View.DataController.SetRecordCount(0);

  //---------------------------------------------------------------------------- A15
  cxDtStartA15.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA15.Date := cxDtStartA15.Date + 1;

  //����������Ȳ
  for i := 0 to cxGridA15View.ColumnCount - 1 do
  begin
    if i in [0] then
      cxGridA15View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [5, 6] then
      cxGridA15View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxGridA15View.Columns[i].DataBinding.ValueType := 'String';
  end;
	cxGridA15View.DataController.SetRecordCount(0);

  //---------------------------------------------------------------------------- A16
  cxDtStartA16.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA16.Date := cxDtStartA16.Date + 1;

  //���������Ȳ
  for i := 0 to cxGridA16View.ColumnCount - 1 do
  begin
    if i in [0] then
      cxGridA16View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [5, 6] then
      cxGridA16View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxGridA16View.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGridA16View.DataController.SetRecordCount(0);

  //---------------------------------------------------------------------------- A17
	cxCbA17.ItemIndex := 0;
	cxCb1A17.ItemIndex := 0;

	cxDtStartA17.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
	cxDtEndA17.Date := cxDtStartA17.Date + 1;

	Try
		for i := 0 to cxGridA17View.ColumnCount - 1 do
		begin
			cxGridA17View.Columns[i].DataBinding.ValueType := 'String';
		end;
		iCol := cxGridA17View.GetColumnByFieldName('���').Index;
		cxGridA17View.Columns[iCol].DataBinding.ValueType := 'Currency';
		iCol := cxGridA17View.GetColumnByFieldName('���αݾ�').Index;
		cxGridA17View.Columns[iCol].DataBinding.ValueType := 'Currency';

		cxGridA17View.DataController.SetRecordCount(0);

		SetDebugeWrite('GridA17View.BeginUpdate');
		cxGridA17View.BeginUpdate;
		try
			cxGridA17View.DataController.SetRecordCount(0);
			for i := 0 to cxGridA17View.ColumnCount - 1 do
			begin
				sTmp := GS_EnvFile.ReadString('GridA17_Title', IntToStr(i), '');
				if sTmp <> '' then
				begin
					iRow := cxGridA17View.GetColumnByFieldName(sTmp).Index;
					if iRow = -1 then iRow := i;
				end
				else
					iRow := i;
				cxGridA17View.Columns[iRow].Index := i;
			end;
		finally
			cxGridA17View.EndUpdate;
			SetDebugeWrite('cxGridA17View.EndUpdate');
		end;
	Except on e: exception do
		Assert(False, 'cxGridA17View Error :' + E.Message);
	end;

	//---------------------------------------------------------------------------- A18
	cxDtStartA18.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
	cxDtEndA18.Date := cxDtStartA18.Date + 1;
	//���������Ȳ
	for i := 0 to cxGridA18View.ColumnCount - 1 do
	begin
		if i in [0] then
			cxGridA18View.Columns[i].DataBinding.ValueType := 'Integer' else
		if i in [4] then
			cxGridA18View.Columns[i].DataBinding.ValueType := 'Currency'
		else
			cxGridA18View.Columns[i].DataBinding.ValueType := 'String';
	end;
	cxGridA18View.DataController.SetRecordCount(0);

	//---------------------------------------------------------------------------- A19
	cxDtStartA19.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
	cxDtEndA19.Date := cxDtStartA19.Date + 1;
	//���������Ȳ
	for i := 0 to cxGridA19View.ColumnCount - 1 do
	begin
		if i in [0] then
			cxGridA19View.Columns[i].DataBinding.ValueType := 'Integer' else
		if i in [4] then
			cxGridA19View.Columns[i].DataBinding.ValueType := 'Currency'
		else
			cxGridA19View.Columns[i].DataBinding.ValueType := 'String';
	end;
	cxGridA19View.DataController.SetRecordCount(0);

	proc_BrNameSet;
end;

procedure TFrm_ACC1.proc_BrNameSet;
begin
	lblSosokNameA10.Caption := GetSosokInfo;
  lblSosokNameA11.Caption := GetSosokInfo;
  lblSosokNameA12.Caption := GetSosokInfo;
	lblSosokNameA13.Caption := GetSosokInfo;
  lblSosokNameA14.Caption := GetSosokInfo;
  lblSosokNameA141.Caption := GetSosokInfo;
  lblSosokNameA15.Caption := GetSosokInfo;
  lblSosokNameA16.Caption := GetSosokInfo;
	lblSosokNameA17.Caption := GetSosokInfo;
	lblSosokNameA18.Caption := GetSosokInfo;
	lblSosokNameA19.Caption := GetSosokInfo;
end;

procedure TFrm_ACC1.FormCreate(Sender: TObject);
Var i : Integer;
begin
  try
    // ��¥������ 'yy/mm/dd'�ϰ�� ���� �߻� ���ɼ����� ���� ��ü Display ���� ����
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

  cxPageControl1.Pages[0].TabVisible := TCK_USER_PER.ACC_Gain_List = '1';                                // 610.���ͱݸ���Ʈ
  cxPageControl1.Pages[1].TabVisible := TCK_USER_PER.ACC_Gain_12 = '1';                                  // 611.���ͱݰ��
  cxPageControl1.Pages[2].TabVisible := TCK_USER_PER.ACC_Gain_13 = '1';                                  // 612.�ݿ�������
  cxPageControl1.Pages[3].TabVisible := TCK_USER_PER.ACC_Gain_14 = '1';                                  // 613.����������Ȳ
  cxPageControl1.Pages[4].TabVisible := TCK_USER_PER.ACC_Gain_15 = '1';                                  // 614.�ݴ��������
  cxPageControl1.Pages[5].TabVisible := TCK_USER_PER.ACC_COUPON_APP = '1';                               // 615.����������Ȳ
  cxPageControl1.Pages[6].TabVisible := TCK_USER_PER.ACC_COUPON_USE = '1';                               // 616.���������Ȳ
  cxPageControl1.Pages[7].TabVisible := TCK_USER_PER.ACC_CARD_PAY = '1';                                 // 617.ī�������Ȳ

  proc_init;
end;

procedure TFrm_ACC1.FormDestroy(Sender: TObject);
begin
  Frm_ACC1 := NIl;
end;

procedure TFrm_ACC1.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_ACC1, GS_FONTNAME);
  for i := 0 to pred(cxSTR01.Count) do
  begin
    TcxStyle(cxSTR01.Items[i]).Font.Name := GS_FONTNAME;
  end;
end;

procedure TFrm_ACC1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACC1.btnHelpA11Click(Sender: TObject);
begin
  if  pnlHelpA11.Visible = True then pnlHelpA11.Visible := False
  else
  begin
    pnlHelpA11.Left := (Width - pnlHelpA11.Width) div 2;
    pnlHelpA11.top  := (Height - pnlHelpA11.Height) div 2;
    pnlHelpA11.Visible := True;
    pnlHelpA11.BringToFront;
  end;
end;

procedure TFrm_ACC1.btnHelpA12Click(Sender: TObject);
begin
  if  pnlHelpA12.Visible = True then pnlHelpA12.Visible := False
  else
  begin
    pnlHelpA12.Left := (Width - pnlHelpA12.Width) div 2;
    pnlHelpA12.top  := (Height - pnlHelpA12.Height) div 2;
    pnlHelpA12.Visible := True;
    pnlHelpA12.BringToFront;
  end;
end;

procedure TFrm_ACC1.btnHelpA13Click(Sender: TObject);
begin
  if  pnlHelpA13.Visible = True then pnlHelpA13.Visible := False
  else
  begin
    pnlHelpA13.Left := (Width - pnlHelpA13.Width) div 2;
    pnlHelpA13.top := (Height - pnlHelpA13.Height) div 2;
    pnlHelpA13.Visible := True;
    pnlHelpA13.BringToFront;
  end;
end;

procedure TFrm_ACC1.btnSearchA10Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		exit;
	end;
	cxGrid10View.DataController.SetRecordCount(0);
  proc_CashList2;
end;

procedure TFrm_ACC1.proc_CashList2;
var
  ls_TxLoad, startDate, endDate, sBrNo, sHdNo, sTmp, sNowDtm, sPackAge: string;
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
  SetDebugeWrite('TFrm_ACC1.proc_CashList2');
  Try
    sNowDtm := frm_main.func_sysdate;

    if Trim(sNowDtm) = '' then
    begin
      GMessagebox('��ȸ���Դϴ�. ��ø� ��ٷ��ּ���', CDMSI);
      exit;
    end;

    if (length(sNowDtm) <> 14) or ((StrToIntDef(copy(sNowDtm, 9, 4), 0) > 2100)
      or (StrToIntDef(copy(sNowDtm, 9, 4), 0) < 100)) then
    begin
      GMessagebox('���� 9�ú��� ���� 1�� ���̿��� �˻��� �� �����ϴ�.', CDMSI);
      Exit;
    end;

    if cxGrid10View.DataController.RecordCount > 0 then
      exit;

    if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
    begin
      GMessagebox('���� ������ �Ҽ� ���縸 ��ȸ�Ҽ� �ֽ��ϴ�.', CDMSI);
      Exit;
    end;

    if fGetChk_Search_HdBrNo('���ͱݸ���Ʈ') then Exit;

    sHdNo := ''; sBrNo := ''; sPackAge := '';
    if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //����
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        sHdNo := GT_SEL_BRNO.HDNO
      else
        sHdNo := GT_USERIF.HD;
    end else
    begin
      if (GT_USERIF.LV = '60') then
      begin
        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          sHdNo := GT_SEL_BRNO.HDNO
        else
          sHdNo := GT_USERIF.HD;
        sBrNo := GT_SEL_BRNO.BrNo;
      end else
      begin
        sHdNo := GT_USERIF.HD;
        sBrNo := GT_USERIF.BR;
      end;
    end;
    if sBrNo = '' then begin sPackAge := 'BRCASH08'; Param := sHdNo end
                  else begin sPackAge := 'BRCASH09'; Param := sBrNo; end;
    Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtStartA10.Date)+FormatDateTime('HHNNSS', cxTeStartA10.Time);
    Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA10.Date  )+FormatDateTime('HHNNSS', cxTeEndA10.Time);

    btnSearchA10.Enabled := False;
    Screen.Cursor := crHourGlass;
    try
      slList := TStringList.Create;
      if not RequestBasePaging(GetSel06(sPackAge, 'MNG_BR_CASH.' + sPackAge, '1000', Param), slList, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('���ͱݸ���Ʈ ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
        Screen.Cursor := crDefault;
        btnSearchA10.Enabled := True;
        Exit;
      end;

      cxGrid10View.BeginUpdate;
      cxGrid10View.DataController.SetRecordCount(0);

      Frm_Flash.cxPBar1.Properties.Max := slList.Count;
      Frm_Flash.cxPBar1.Position := 0;

			xdom := ComsDomDocument.Create;
      try
        for j := 0 to slList.Count - 1 do
        begin
          Frm_Flash.cxPBar1.Position := j + 1;
          Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
          ls_rxxml := slList[j];
          if not xdom.loadXML(ls_rxxml) then Exit;
          if (0 < GetXmlRecordCount(ls_rxxml)) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              for i := 0 to lst_Result.length - 1 do
              begin
                GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
                begin
                  iRow := cxGrid10View.DataController.AppendRecord;

                  // 1 Record �߰�
                  cxGrid10View.DataController.Values[iRow,  0] := iRow + 1;                      //No.
                  cxGrid10View.DataController.Values[iRow,  1] := ls_Rcrd[1];                    //�����
                  cxGrid10View.DataController.Values[iRow,  2] := StrToIntDef(ls_Rcrd[ 2], 0);    //������ĳ��
                  cxGrid10View.DataController.Values[iRow,  3] := StrToIntDef(ls_Rcrd[ 3], 0);    //���ּ���(����)
                  cxGrid10View.DataController.Values[iRow,  4] := StrToIntDef(ls_Rcrd[21], 0);   //���ּ���(��ü)
                  cxGrid10View.DataController.Values[iRow,  5] := StrToIntDef(ls_Rcrd[ 4], 0);    //��������
                  //[100322] ����Ϸ��ݼ�, ����Ϻ�ݾ�
                  if ls_Rcrd.Count > 24 then
                  begin
                    cxGrid10View.DataController.Values[iRow,  6] := StrToIntDef(ls_Rcrd[24], 0);    //����Ϸ��ݼ�
                    cxGrid10View.DataController.Values[iRow,  7] := StrToIntDef(ls_Rcrd[25], 0);    //����Ϻ�ݾ�(����)
                    cxGrid10View.DataController.Values[iRow,  8] := StrToIntDef(ls_Rcrd[26], 0);    //����Ϻ�ݾ�(��ü)
                  end;

                  cxGrid10View.DataController.Values[iRow,  9] := StrToIntDef(ls_Rcrd[ 5], 0);    //�ַ�ǻ���
                  cxGrid10View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[ 6], 0);    //�����
                  cxGrid10View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[ 7], 0);    //��ҹ���(����)
                  cxGrid10View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[20], 0);   //��ҹ���(��ü)
                  cxGrid10View.DataController.Values[iRow, 13] := StrToIntDef(ls_Rcrd[ 8], 0);   //�ݴ���
                  cxGrid10View.DataController.Values[iRow, 14] := StrToIntDef(ls_Rcrd[ 9], 0);   //�����Ա�
                  cxGrid10View.DataController.Values[iRow, 15] := StrToIntDef(ls_Rcrd[10], 0);  //�ݸ�������
                  cxGrid10View.DataController.Values[iRow, 16] := StrToIntDef(ls_Rcrd[11], 0);  //����ĳ���̵�
                  cxGrid10View.DataController.Values[iRow, 17] := StrToIntDef(ls_Rcrd[12], 0);  //SMSĳ�����
                  cxGrid10View.DataController.Values[iRow, 18] := StrToIntDef(ls_Rcrd[29], 0);  //��뺸���
                  cxGrid10View.DataController.Values[iRow, 19] := StrToIntDef(ls_Rcrd[13], 0);  //�ĺ��Ա�
                  cxGrid10View.DataController.Values[iRow, 20] := StrToIntDef(ls_Rcrd[14], 0);  //�����Է�
                  cxGrid10View.DataController.Values[iRow, 21] := StrToIntDef(ls_Rcrd[15], 0);  //��翡�۱�
                  cxGrid10View.DataController.Values[iRow, 22] := StrToIntDef(ls_Rcrd[16], 0);  //����ȯ��
                  cxGrid10View.DataController.Values[iRow, 23] := StrToIntDef(ls_Rcrd[17], 0);  //��Ÿ
                  cxGrid10View.DataController.Values[iRow, 24] := StrToIntDef(ls_Rcrd[18], 0);  //�հ�
                  cxGrid10View.DataController.Values[iRow, 25] := StrToIntDef(ls_Rcrd[27], 0);  //����ĳ��
                  cxGrid10View.DataController.Values[iRow, 26] := StrToIntDef(ls_Rcrd[28], 0);  //����ĳ��
                  cxGrid10View.DataController.Values[iRow, 27] := StrToIntDef(ls_Rcrd[19], 0);  //�ܾ�
                  cxGrid10View.DataController.Values[iRow, 28] := StrToIntDef(ls_Rcrd[23], 0);  //���ͱ�(����+��ü)
                  cxGrid10View.DataController.Values[iRow, 29] := StrToIntDef(ls_Rcrd[22], 0);  //���ͱ�(��ü)
                  cxGrid10View.DataController.Values[iRow, 30] := ls_Rcrd[0];                   //�����ڵ�
                end;
              end;
            finally
              ls_Rcrd.Free;
            end;
          end	else
          begin
            GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
          end;
        end;
      finally
        cxGrid10View.EndUpdate;
  			xdom := Nil;
        frm_Main.sbar_Message.Panels[4].Text := '';
      end;

    finally
			Screen.Cursor := crDefault;
      btnSearchA10.Enabled := True;
      Frm_Flash.Hide;
    end;
  except
    on E: Exception do
		begin
			Assert(False, E.Message);
		end;
  End;

end;

procedure TFrm_ACC1.btnSearchA11Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		Exit;
	end;
	cxGridA11View.DataController.SetRecordCount(0);
  proc_PROFIT_FEE_SUMMARY;
end;

procedure TFrm_ACC1.btnSearchA12Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		exit;
	end;
	cxGridA12View.DataController.SetRecordCount(0);
  proc_ORDER_CALC_SUMMARY;
end;

procedure TFrm_ACC1.btnSearchA13Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		exit;
	end;
	cxGridA13View.DataController.SetRecordCount(0);
  proc_DRIVER_FEE_SUMMARY;
end;

procedure TFrm_ACC1.btnSearchA141Click(Sender: TObject);
begin
	dORDER_CALC_MM1 := 0; dORDER_CALC_MM2 := 0; dORDER_CALC_MM3 := 0;
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		exit;
	end;
	cxGridA141View.DataController.SetRecordCount(0);
	proc_ORDER_CALC_MM_SUMMARY(cxGridA141View);
end;

procedure TFrm_ACC1.btnSearchA14Click(Sender: TObject);
begin
	dORDER_CALC_CC1 := 0; dORDER_CALC_CC2 := 0; dORDER_CALC_CC3 := 0; 
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		exit;
	end;
	cxGridA14View.DataController.SetRecordCount(0);
	proc_ORDER_CALC_MM_SUMMARY(cxGridA14View);
end;

procedure TFrm_ACC1.btnSearchA15Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		exit;
	end;
	cxGridA15View.DataController.SetRecordCount(0);
  proc_COUPON_APPR;
end;

procedure TFrm_ACC1.btnSearchA16Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		exit;
	end;
	cxGridA16View.DataController.SetRecordCount(0);
	proc_COUPON_LIST;
end;

procedure TFrm_ACC1.btnSearchA17Click(Sender: TObject);
var
	XmlData, Param, ErrMsg, sHdNo, sBrNo : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	i, j, ErrCode, iRow : Integer;
	iwkTitle: array[0..23] of integer;
begin
	if fGetChk_Search_HdBrNo('ī�������Ȳ') then Exit;

	cxGridA17View.DataController.SetRecordCount(0);
	try
		Param := '';
		if cxCbA17.ItemIndex = 0 then
			Param := Param + '' +  '��'
		else
		if cxCbA17.ItemIndex = 1 then
			Param := Param + '2' +  '��'
		else
		if cxCbA17.ItemIndex = 2 then
			Param := Param + '8' +  '��'
		else
		if cxCbA17.ItemIndex = 3 then
			Param := Param + '4' +  '��';

		if cxCb1A17.ItemIndex = 0 then
			Param := Param + '' +  '��'
		else
		if cxCb1A17.ItemIndex = 1 then
			Param := Param + '1' +  '��'
		else
		if cxCb1A17.ItemIndex = 2 then
			Param := Param + '2' +  '��';
		Param := Param + FormatDateTime('yyyymmdd', cxDtStartA17.Date) + FormatDateTime('HHNNSS', cxTeStartA17.Time) + '��';
		Param := Param + FormatDateTime('yyyymmdd', cxDtEndA17.Date) + FormatDateTime('HHNNSS', cxTeEndA17.Time) + '��';
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
  	Param := Param + sHdNo +  '��';
		Param := Param + sBrNo;

    Screen.Cursor := crHourGlass;
    btnSearchA17.Enabled := False;
    try
      slList := TStringList.Create;

			if not RequestBasePaging(GetSel05('LIST_CARD_PAY_STAT', 'MNG_CALC.LIST_CARD_PAY_STAT', '1000', Param), slList, ErrCode, ErrMsg) then
  		begin
  			GMessagebox(Format('ī�������Ȳ ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
        Screen.Cursor := crDefault;
        btnSearchA17.Enabled := True;
  			Exit;
  		end;

  		xdom := ComsDomDocument.Create;
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxGridA17View.DataController.SetRecordCount(0);
			cxGridA17View.BeginUpdate;
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				xdom.loadXML(XmlData);

				lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

				if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
				begin
					Screen.Cursor := crHourGlass;
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
					for i := 0 to lbTitle_CardList.Items.Count - 1 do
						iwkTitle[i] := cxGridA17View.GetColumnByFieldName(lbTitle_CardList.Items.Strings[i]).Index;
					try
						for I := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //��ü��������� ������
							begin
								if scb_FamilyBrCode.IndexOf(ls_Rcrd[21]) = -1 then Continue;
							end;	   //�����ִ� �����ϰ�츸 �׸���ǥ��

							//03 : KCP ī�� , 06 : NICEPAY ī��
							//13 : KCP ���ݿ�����, 16 : NICEPAY ���ݿ�����
							//"ī��", "���ݿ�����", "�˼������ڵ�(a)" 
							if not chkCash.Checked then
							begin
								if ls_Rcrd[24] = '���ݿ�����' then Continue;
							end;

							if not chkCard.Checked then
							begin
								if ls_Rcrd[24] <> '���ݿ�����' then Continue;
							end;

							iRow := cxGridA17View.DataController.AppendRecord;

							cxGridA17View.DataController.Values[iRow, iwkTitle[0]] := ls_Rcrd[0];       //�����
							cxGridA17View.DataController.Values[iRow, iwkTitle[1]] := strtocall(ls_Rcrd[1]);       //��ǥ��ȣ
							cxGridA17View.DataController.Values[iRow, iwkTitle[2]] := strtocall(ls_Rcrd[2]);;
							cxGridA17View.DataController.Values[iRow, iwkTitle[3]] := ls_Rcrd[3];
							cxGridA17View.DataController.Values[iRow, iwkTitle[4]] := ls_Rcrd[4];
							cxGridA17View.DataController.Values[iRow, iwkTitle[5]] := ls_Rcrd[5];
							cxGridA17View.DataController.Values[iRow, iwkTitle[6]] := ls_Rcrd[6];
							cxGridA17View.DataController.Values[iRow, iwkTitle[7]] := StrToIntDef(ls_Rcrd[7], 0);
							cxGridA17View.DataController.Values[iRow, iwkTitle[8]] := ls_Rcrd[8];
							cxGridA17View.DataController.Values[iRow, iwkTitle[9]] := ls_Rcrd[9];
							cxGridA17View.DataController.Values[iRow,iwkTitle[10]] := ls_Rcrd[10];
							cxGridA17View.DataController.Values[iRow,iwkTitle[11]] := StrToIntDef(ls_Rcrd[11], 0);
							if ls_Rcrd[12] = 'null' then
								cxGridA17View.DataController.Values[iRow,iwkTitle[12]] := ''
							else
								cxGridA17View.DataController.Values[iRow,iwkTitle[12]] := ls_Rcrd[12];
							cxGridA17View.DataController.Values[iRow,iwkTitle[13]] := ls_Rcrd[13];
							if ls_Rcrd[14] = 'null' then
								cxGridA17View.DataController.Values[iRow,iwkTitle[14]] := ''
							else
								cxGridA17View.DataController.Values[iRow,iwkTitle[14]] := ls_Rcrd[14];
							if ls_Rcrd[15] = 'null' then
								cxGridA17View.DataController.Values[iRow,iwkTitle[15]] := ''
							else
								cxGridA17View.DataController.Values[iRow,iwkTitle[15]] := ls_Rcrd[15];
							if ls_Rcrd[16] = 'null' then
								cxGridA17View.DataController.Values[iRow,iwkTitle[16]] := ''
							else
								cxGridA17View.DataController.Values[iRow,iwkTitle[16]] := ls_Rcrd[16];
							if ls_Rcrd[17] = '()' then
								cxGridA17View.DataController.Values[iRow,iwkTitle[17]] := ''
							else
								cxGridA17View.DataController.Values[iRow,iwkTitle[17]] := ls_Rcrd[17];
							if ls_Rcrd[18] = '()' then
								cxGridA17View.DataController.Values[iRow,iwkTitle[18]] := ''
							else
								cxGridA17View.DataController.Values[iRow,iwkTitle[18]] := ls_Rcrd[18];
							cxGridA17View.DataController.Values[iRow,iwkTitle[19]] := ls_Rcrd[19];
							cxGridA17View.DataController.Values[iRow,iwkTitle[20]] := ls_Rcrd[20]; //ī�屸�Ź�ȣ
							cxGridA17View.DataController.Values[iRow,iwkTitle[21]] := ls_Rcrd[21];
							cxGridA17View.DataController.Values[iRow,iwkTitle[22]] := ls_Rcrd[22];
							cxGridA17View.DataController.Values[iRow,iwkTitle[23]] := ls_Rcrd[23]; //ī����ι�ȣ
						end;
		//				cbbCustCNTmonth.ItemIndex := cbbCustCNTmonth.Properties.Items.IndexOf(ls_Rcrd[2]);
					finally
						ls_Rcrd.Free;
					end;
				end else
				begin
					GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
				end;
			end;
		finally
			cxGridA17View.EndUpdate;
			xdom := nil;
			Frm_Flash.Hide;
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
      btnSearchA17.Enabled := True;
		end;
	except
		on e: exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
      btnSearchA17.Enabled := True;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_ACC1.btnSearchA18Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		exit;
	end;
	cxGridA18View.DataController.SetRecordCount(0);
	proc_BRCOUPON_LIST(1);
end;

procedure TFrm_ACC1.btnSearchA19Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		exit;
	end;
	cxGridA19View.DataController.SetRecordCount(0);
	proc_BRCOUPON_LIST(2);
end;

procedure TFrm_ACC1.btn_CardCancelClick(Sender: TObject);
begin
	proc_ApproveCancelReq;
end;

procedure TFrm_ACC1.btn_CardCancelShowClick(Sender: TObject);
begin
	N12.Click;
end;

procedure TFrm_ACC1.proc_ApproveCancelReq;
var
  ls_TxLoad : string;
  rv_str: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
  Msg, sTemp : string;
begin
	try
    // ī����� ������� ��û.
		if Length(lbApproveNo.Caption) < 1 then
    begin
			GMessagebox('�����Ϸù�ȣ�� ������ ������Ҹ� �� �� �����ϴ�.', CDMSI);
			Exit;
		end;

		if Length(lbTranNo.Caption) < 1 then
    begin
      GMessagebox('�ŷ���ȣ�� ������ ������Ҹ� �� �� �����ϴ�.', CDMSI);
      Exit;
    end;

    ls_TxLoad := GTx_UnitXmlLoad('C502.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CARD_APPROVE_CANCEL', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, '�����Ϸù�ȣ', lbApproveNo.Caption, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, '�ŷ���ȣ', lbTranNo.Caption, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, '��һ���', En_Coding(edtCardCanReason.Text), [rfReplaceAll]);

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
						mmo_ResultMsg.Text := Msg;
//						lblResultInfo.Caption     := '������� �Ϸ�';      // ��������.
						Application.ProcessMessages;
						GMessagebox(Msg, CDMSI);
						// ��ư ó��.
					end else
          begin
						mmo_ResultMsg.Text := Msg;
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
      sTemp := 'JON25[sb_ApproveCancleReq]:' + e.Message;
      Log(sTemp, LOGDATAPATHFILE);
      Assert(False, E.Message);
    end;
  end;
end;

function TFrm_ACC1.ResponseCardProcess(AXml: string; var AMsg: String): Boolean;
var
  xdom: msDomDocument;
  lst_Node: IXMLDomNodeList;
  ErrorCode, ls_ClientKey : string;
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

      if ls_ClientKey = 'CARD_APPROVE_CANCEL' then
			begin
				lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Error');
				ErrorCode := lst_Node.item[0].attributes.getNamedItem('Code').Text;//GetXmlErrorCode(AXml);
        if ('0000' = ErrorCode) then
        begin
          //lst_Node := xdom.documentElement.selectNodes('/cdms/Service/CardPay/Data');
          //if Assigned(lst_Node.item[0].attributes.getNamedItem('PaySeq')) then
          //  lcPaySeq := lst_Node.item[0].attributes.getNamedItem('PaySeq').Text;

          AMsg := GetXmlErrorMsg(AXml);
          Result := True;
        end
        else
          AMsg := '[' + ErrorCode + '] ' + GetXmlErrorMsg(AXml);
      end;
    except
      on e: exception do
      begin
        Assert(False, 'frmJON25[ResponseCardProcess]:' + E.Message);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
  end;
end;

procedure TFrm_ACC1.btnCardCancelCloseClick(Sender: TObject);
begin
	lbApproveNo.Caption := '';
	lbTranNo.Caption := '';
	edtCardCanReason.Text := '';
	mmo_ResultMsg.clear;
	grpSetCardCancel.Visible := False;
end;

procedure TFrm_ACC1.BtnCloseA11Click(Sender: TObject);
begin
  pnlHelpA11.Visible := False;
end;

procedure TFrm_ACC1.BtnCloseA12Click(Sender: TObject);
begin
  pnlHelpA12.Visible := False;
end;

procedure TFrm_ACC1.BtnCloseA13Click(Sender: TObject);
begin
  pnlHelpA13.Visible := False;
end;

procedure TFrm_ACC1.proc_Change_Title_CardList;
var
	i, iShow, iHide: Integer;
	ln_envfile: TIniFile;
begin
	SetDebugeWrite('TFrm_ACC.proc_Change_Title_CardList');
	try
		ln_envfile := TIniFile.Create(ENVPATHFILE);
		try
			ln_envfile.EraseSection('GridA17_Title');
			//�׸��� Ÿ��Ʋ, ������ ����

			iShow := 0;
			iHide := 0;
			for i := 0 to cxGridA17View.ColumnCount - 1 do
			begin
				if not cxGridA17View.Columns[i].Visible then Continue;
				ln_envfile.WriteString('GridA17_Title', IntToStr(iShow), cxGridA17View.Columns[i].Caption);
				Inc(iShow);
			end;
		finally
			FreeAndNil(ln_envfile);
		end;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_ACC1.cxGrid10ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iRow: Integer;
  sBrNo, sColumnName: string;
begin
  iBrNo := cxGrid10View.GetColumnByFieldName('�����ڵ�').Index;
  iRow := cxGrid10View.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  sBrNo := cxGrid10View.DataController.Values[iRow, iBrNo];
  sColumnName := ACellViewInfo.Item.GetAlternateCaption;
  if sColumnName = '�����' then
    proc_BankLog(sBrNo, '', '', '', 'BRCASH03')
  else
  if sColumnName = '��뺸���' then
  begin
    sExcelFileName := '��뺸���';
    proc_BankLog(sBrNo,'82','--','--','BRCASH29');
  end else
  if sColumnName = '������ĳ��' then
  begin
    sExcelFileName := '������ĳ��';
    proc_BankLog(sBrNo,'10','20','30','BRCASH29');
  end else
  if sColumnName = '���ּ���(����)' then
  begin
    sExcelFileName := '���ּ���(����)';
    proc_BankLog(sBrNo,'11','21','31','BRCASH29');
  end else
  if sColumnName = '���ּ���(��ü)' then
  begin
    sExcelFileName := '���ּ���(��ü)';
    proc_BankLog(sBrNo,'10','20','30','BRCASH49');
  end else
  if sColumnName = '��������' then
  begin
    sExcelFileName := '��������';
    proc_BankLog(sBrNo,'12','22','32','BRCASH29');
  end else
  if sColumnName = '�ַ�ǻ���' then
  begin
    sExcelFileName := '�ַ�ǻ���';
    proc_BankLog(sBrNo,'40','--','--','BRCASH29');
  end else
  if sColumnName = '�����' then
    proc_BankLog(sBrNo,'50','--','--','BRCASH29')
  else if sColumnName = '��ҹ���(����)' then
  begin
    sExcelFileName := '��ҹ���(����)';
    proc_BankLog(sBrNo, 'CANCEL','','','BRCASH09_DETAIL');
  end else
  if sColumnName = '��ҹ���(��ü)' then
  begin
    sExcelFileName := '��ҹ���(��ü)';
    proc_BankLog(sBrNo, 'CANCEL_WK','','','BRCASH09_DETAIL');
  end else
  if sColumnName = '�ݴ���' then
  begin
    sExcelFileName := '�ݴ���';
    proc_BankLog(sBrNo,'13','--','--','BRCASH29');
  end else
  if sColumnName = '�����Ա�' then
  begin
    sExcelFileName := '�����Ա�';
    proc_BankLog(sBrNo, 'PAY_IN','','','BRCASH09_DETAIL');
  end else
  if sColumnName = '�ݸ�������' then
  begin
    sExcelFileName := '�ݸ�������';
    proc_BankLog(sBrNo,'01','--','--','BRCASH29');
  end else
  if sColumnName = '����ĳ���̵�' then
  begin
    sExcelFileName := '����ĳ���̵�';
    proc_BankLog(sBrNo,'60','--','--','BRCASH29');
  end else
  if sColumnName = 'SMSĳ�����' then
  begin
    sExcelFileName := 'SMSĳ�����';
    proc_BankLog(sBrNo,'07','--','--','BRCASH29');
  end else
  if sColumnName = '�ĺ��Ա�' then
  begin
    sExcelFileName := '�ĺ��Ա�';
    proc_BankLog(sBrNo,'04','--','--','BRCASH29');
  end else
  if sColumnName = '�����Է�' then
  begin
    sExcelFileName := '�����Է�';
    proc_BankLog(sBrNo,'02','--','--','BRCASH29');
  end else
  if sColumnName = '��翡�۱�' then
  begin
    sExcelFileName := '��翡�۱�';
    proc_BankLog(sBrNo,'24','--','--','BRCASH29');
  end else
  if sColumnName = '����Ϻ�(����)' then
  begin
    sExcelFileName := '����Ϻ�(����)';
    proc_BankLog(sBrNo, 'PAY_IN_DAYFEE','','','BRCASH09_DETAIL');
  end else
  if sColumnName = '����Ϻ�(��ü)' then
  begin
    sExcelFileName := '����Ϻ�(��ü)';
    proc_BankLog(sBrNo, 'DAYFEE_WK','','','BRCASH09_DETAIL');
  end else
  if sColumnName = '����ȯ��' then
  begin
    sExcelFileName := '����ȯ��';
    proc_BankLog4(sBrNo,'99','--','--','BRCASH29');
  end else
  if sColumnName = '��Ÿ' then
  begin
    sExcelFileName := '��Ÿ';
    proc_BankLog(sBrNo, 'ETC','','','BRCASH09_DETAIL');
  end;
end;

procedure TFrm_ACC1.cxGrid10ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_ACC1.cxGrid10ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGrid10View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC1.cxGridA11ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iRow: Integer;
  sBrNo: string;
begin
  iBrNo := cxGridA11View.GetColumnByFieldName('�����ڵ�').Index;
  iRow := cxGridA11View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sBrNo := cxGridA11View.DataController.Values[iRow, iBrNo];
  proc_PROFIT_FEE_DETAIL(sBrNo);
end;

procedure TFrm_ACC1.cxGridA11ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC1.cxGridA11ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA11View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC1.cxGridA12ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC1.cxGridA12ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA12View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC1.cxGridA13ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iCol, iRow : Integer;
  sBrNo: string;
begin
  iBrNo := cxGridA13View.GetColumnByFieldName('�����ڵ�').Index;
  iCol := ACellViewInfo.item.Index ;
  iRow := cxGridA13View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sBrNo := cxGridA13View.DataController.Values[iRow, iBrNo];
  if iCol = 2 then proc_DRIVER_FEE_SUMMARY_DETAIL(sBrNo, iCol)
              else proc_DRIVER_FEE_DETAIL(sBrNo, iCol);
end;

procedure TFrm_ACC1.cxGridA13ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC1.cxGridA13ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA13View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC1.cxGridA141ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
	iHdNo, iBrNo, iIBrNo, iRow, iPos : Integer;
	sHdNo, sBrNo, sIBrNo, sBrNm : String;
	AView: TcxGridDBTableView;
begin
	if TcxCustomGridTableView(Sender).Tag = 14 then AView := cxGridA14View else AView := cxGridA141View; 
	
	iRow  := AView.DataController.FocusedRecordIndex;
	if iRow < 0 then Exit;

	iHdNo  := AView.GetColumnByFieldName('��������').Index;
	iBrNo  := AView.GetColumnByFieldName('��������').Index;
	iIBrNo := AView.GetColumnByFieldName('�Ա�����').Index;

	sHdNo := AView.DataController.Values[iRow, iHdNo];
	iPos := Pos('/', sHdNo);
	sHdNo := Copy(sHdNo, 1, iPos-1);

	sBrNm := AView.DataController.Values[iRow, iBrNo];
	iPos := Pos('/', sBrNm);
	sBrNo := Copy(sBrNm, 1, iPos-1);

	sIBrNo := AView.DataController.Values[iRow, iIBrNo];
	iPos := Pos('/', sIBrNo);
	sIBrNo := Copy(sIBrNo, 1, iPos-1);

	proc_ORDER_CALC_MM_DETAIL(sHdNo, sBrNo, sBrNm, sIBrNo, AView);
end;

procedure TFrm_ACC1.cxGridA141ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA141View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC1.cxGridA141ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: string);
begin
	AText := FormatCash(dORDER_CALC_MM1);
end;

procedure TFrm_ACC1.cxGridA141ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := FormatCash(dORDER_CALC_MM2);
end;

procedure TFrm_ACC1.cxGridA141ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := FormatCash(dORDER_CALC_MM3);
end;

procedure TFrm_ACC1.cxGridA14ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_ACC1.cxGridA14ViewDataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(cxGridA14View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC1.cxGridA14ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := FormatCash(dORDER_CALC_CC1);
end;

procedure TFrm_ACC1.cxGridA14ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: string);
begin
	AText := FormatCash(dORDER_CALC_CC2);
end;

procedure TFrm_ACC1.cxGridA14ViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	AText := FormatCash(dORDER_CALC_CC3);
end;

procedure TFrm_ACC1.cxGridA15ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA15View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC1.cxGridA16ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iSlip : integer;
	  sSlip : string;
    i : Integer;
    iCheck : Boolean;
begin
  iCheck := False;
  for I := 0 to JON03_MAX_CNT - 1 do
  begin
    if Frm_Main.JON03MNG[i].Use then
    begin
       iCheck := True;
    end;
  end;

  if Not iCheck then Frm_Main.procMainMenuCreateActive(200);

	iRow  := cxGridA16View.DataController.FocusedRecordIndex;
	iSlip := cxGridA16View.GetColumnByFieldName('������ȣ').Index;
	sSlip := cxGridA16View.DataController.Values[iRow,iSlip];
	Frm_Main.AcceptFromCreate(sSlip, cxGridA16View.DataController.Values[iRow,1], '��ȸ', GI_JON03_LastFromIdx);
end;

procedure TFrm_ACC1.cxGridA16ViewDataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(cxGridA16View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC1.cxGridA17ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iSlip, iAccTime : integer;
	  sSlip, sAccTime : string;
    i : Integer;
    iCheck : Boolean;
begin
	iRow := cxGridA17View.DataController.FocusedRecordIndex;
	iSlip    := cxGridA17View.GetColumnByFieldName('������ȣ').Index;
	sSlip := cxGridA17View.DataController.Values[iRow,iSlip];
	if sSlip = '' then exit;
	
	iCheck := False;
  for I := 0 to JON03_MAX_CNT - 1 do
  begin
    if Frm_Main.JON03MNG[i].Use then
    begin
       iCheck := True;
    end;
  end;

  if Not iCheck then Frm_Main.procMainMenuCreateActive(200);

	iAccTime    := cxGridA17View.GetColumnByFieldName('�����ð�').Index;
	sAccTime := cxGridA17View.DataController.Values[iRow,iAccTime];
	Frm_Main.AcceptFromCreate(sSlip, sAccTime, '��ȸ', GI_JON03_LastFromIdx);
end;

procedure TFrm_ACC1.cxGridA17ViewColumnPosChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	proc_Change_Title_CardList;
end;

procedure TFrm_ACC1.cxGridA17ViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var iRow, iSlip, iStatus1, iStatus2, i : integer;
begin
	iRow := cxGridA17View.DataController.GetRowInfo(ARecord.Index).RecordIndex;
	for i := 0 to cxGridA17View.ColumnCount - 1 do
	begin
		iSlip    := cxGridA17View.GetColumnByFieldName('������ȣ').Index;
		iStatus1 := cxGridA17View.GetColumnByFieldName('��������').Index;
		iStatus2 := cxGridA17View.GetColumnByFieldName('���λ���').Index;
	end;
	AStyle  := frm_Main.cxStyle19;
	if (cxGridA17View.DataController.Values[iRow, iSlip] = '') or
		 (cxGridA17View.DataController.Values[iRow, iStatus1] = '���') or
		 (cxGridA17View.DataController.Values[iRow, iStatus1] = '����') or
		 (cxGridA17View.DataController.Values[iRow, iStatus2] = '�������')then
		AStyle.TextColor := clRed
	else
		AStyle.TextColor := clDefault;  
end;

procedure TFrm_ACC1.cxGridA18ViewColumnHeaderClick(Sender: TcxGridTableView;
	AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_ACC1.cxGridA18ViewDataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(cxGridA18View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC1.cxGridA19ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_ACC1.cxGridA19ViewDataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(cxGridA19View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC1.cxPageControl1Change(Sender: TObject);
Var iTag : Integer;
begin
  iTag := cxPageControl1.Pages[cxPageControl1.ActivePageIndex].Tag;
  if Assigned(Frm_JON51) then
      if TCK_USER_PER.BTM_MENUSCH = '1' then Frm_JON51.Menu_Use_Mark('ADD', iTag);
end;

procedure TFrm_ACC1.edt_A18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then btnSearchA18.Click;
end;

procedure TFrm_ACC1.edt_A19KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then btnSearchA19.Click;
end;

procedure TFrm_ACC1.proc_BankLog(ABrNo, AType1, AType2, AType3, APack: string);
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
  SetDebugeWrite('TFrm_ACC.proc_BankLog');
  Try
    if APack = 'BRCASH03' then
    begin
      Param := ABrNo;
      Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtStartA10.Date)+FormatDateTime('HHNNSS', cxTeStartA10.Time);
      Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA10.Date  )+FormatDateTime('HHNNSS', cxTeEndA10.Time);
    end else
    if (APack = 'BRCASH29') or (APack = 'BRCASH49') then
    begin
      Param :=               FormatDateTime('YYYYMMDD', cxDtStartA10.Date)+FormatDateTime('HHNNSS', cxTeStartA10.Time);
      Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA10.Date  )+FormatDateTime('HHNNSS', cxTeEndA10.Time);
      Param := Param + '��' + ABrNo;
      Param := Param + '��' + AType1 + '��' + AType2 + '��' + AType3;
    end else
    if APack = 'BRCASH09_DETAIL' then
    begin
      Param := AType1;
      Param := Param + '��' + ABrNo;
      Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtStartA10.Date)+FormatDateTime('HHNNSS', cxTeStartA10.Time);
      Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA10.Date  )+FormatDateTime('HHNNSS', cxTeEndA10.Time);
    end;
    
    btnSearchA10.Enabled := False;

    Screen.Cursor := crHourGlass;
    try
      slList := TStringList.Create;
      if not RequestBasePaging(GetSel06(APack, 'MNG_BR_CASH.'+APack, '1000', Param), slList, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
        Screen.Cursor := crDefault;
        btnSearchA10.Enabled := True;
        Exit;
      end;

      Frm_Flash.cxPBar1.Properties.Max := slList.Count;
      Frm_Flash.cxPBar1.Position := 0;

			xdom := ComsDomDocument.Create;
      try
        if ( Not Assigned(Frm_ACC01) ) Or ( Frm_ACC01 = NIl ) then Frm_ACC01 := TFrm_ACC01.Create(Nil);
        Frm_ACC01.Grid3View.BeginUpdate;
        Frm_ACC01.Grid3View.DataController.SetRecordCount(0);

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
                  GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

                  //������ ���� ���븸 ��ȸ:�켱�ּ�ó��
//                  if (AColNM <> '' ) and (Pos(AColNM, ls_Rcrd[4]) < 1) then Continue;
                  iRow := Frm_ACC01.Grid3View.DataController.AppendRecord;  // 1 Record �߰�
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 1] := ls_Rcrd[1];
                  sTmp := ls_Rcrd[2];
                  if sTmp <> '' then
                  begin
                    sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
                    sTmp := StringReplace(sTmp, ':', '', [rfReplaceAll]);
                    sTmp := StringReplace(sTmp, ' ', '', [rfReplaceAll]);
                    sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp,  5, 2) + '-' + Copy(sTmp,  7, 2) + ' ' +
                            Copy(sTmp, 9, 2) + ':' + Copy(sTmp, 11, 2) + ':' + Copy(sTmp, 13, 2);
                  end;
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 2] := sTmp;
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
              GMessagebox('�˻��� ������ �����ϴ�.', CDMSE);
            end;
          end;
        finally
          frm_Main.sbar_Message.Panels[4].Text := '';

          Frm_ACC01.Grid3View.EndUpdate;
          if Frm_ACC01.Grid3View.DataController.RecordCount > 0 then
            Frm_ACC01.Show;
          btnSearchA10.Enabled := True;
        end;
      finally
  			xdom := Nil;
			end;
    finally
			Screen.Cursor := crDefault;
      btnSearchA10.Enabled := True;
      Frm_Flash.Hide;
    end;
  except
    on E: Exception do
		begin
			Assert(False, E.Message);
		end;
  End;
end;

procedure TFrm_ACC1.proc_BankLog3(ABrNo: string);
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
    Param := '��' + ABrNo;
    Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtStartA10.Date)+FormatDateTime('HHNNSS', cxTeStartA10.Time);
    Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA10.Date  )+FormatDateTime('HHNNSS', cxTeEndA10.Time);
    btnSearchA10.Enabled := False;

    Screen.Cursor := crHourGlass;
    try
      slList := TStringList.Create;
      if not RequestBasePaging(GetSel06('BRCASH03', 'MNG_BR_CASH.BRCASH03', '1000', Param), slList, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('����� �α� ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
        Screen.Cursor := crDefault;
        btnSearchA10.Enabled := True;
        Exit;
      end;

      Frm_Flash.cxPBar1.Properties.Max := slList.Count;
      Frm_Flash.cxPBar1.Position := 0;

			xdom := ComsDomDocument.Create;
      try
        if ( Not Assigned(Frm_ACC01) ) Or ( Frm_ACC01 = NIl ) then Frm_ACC01 := TFrm_ACC01.Create(Nil);
        Frm_ACC01.Grid3View.BeginUpdate;
        Frm_ACC01.Grid3View.DataController.SetRecordCount(0);

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
                  GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

                  //������ ���� ���븸 ��ȸ:�켱�ּ�ó��
//                  if (AColNM <> '' ) and (Pos(AColNM, ls_Rcrd[4]) < 1) then Continue;
                  iRow := Frm_ACC01.Grid3View.DataController.AppendRecord;  // 1 Record �߰�
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 1] := ls_Rcrd[1];
                  sTmp := ls_Rcrd[2];
                  if sTmp <> '' then
                  begin
                    sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
                    sTmp := StringReplace(sTmp, ':', '', [rfReplaceAll]);
                    sTmp := StringReplace(sTmp, ' ', '', [rfReplaceAll]);
                    sTmp := Copy(sTmp, 1, 4) + '-' + Copy(sTmp,  5, 2) + '-' + Copy(sTmp,  7, 2) + ' ' +
                            Copy(sTmp, 9, 2) + ':' + Copy(sTmp, 11, 2) + ':' + Copy(sTmp, 13, 2);
                  end;
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 2] := sTmp;
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
              GMessagebox('�˻��� ������ �����ϴ�.', CDMSE);
            end;
          end;
        finally
          frm_Main.sbar_Message.Panels[4].Text := '';

          Frm_ACC01.Grid3View.EndUpdate;
          if Frm_ACC01.Grid3View.DataController.RecordCount > 0 then
            Frm_ACC01.Show;
          btnSearchA10.Enabled := True;
        end;
      finally
  			xdom := Nil;
			end;
    finally
			Screen.Cursor := crDefault;
      btnSearchA10.Enabled := True;
      Frm_Flash.Hide;
    end;
  except
    on E: Exception do
		begin
			Assert(False, E.Message);
		end;
  End;

end;

procedure TFrm_ACC1.proc_BankLog4(sBrNo, Type1, Type2, Type3, Type4: string);
var
  sNode, ls_TxLoad, startDate, endDate: string;
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
      ShowMessage('���� Error�Դϴ�. �ٽ���ȸ�Ͽ��ֽʽÿ�.');
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'BANKACC03';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := Type4;

    if (cxDtStartA10.Text = '') or (cxDtEndA10.Text = '') then
    begin
      cxDtStartA10.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA10.Date := cxDtStartA10.Date + 1;
    end;
    startDate := StringReplace(DateToStr(cxDtStartA10.Date), '-', '', [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeStartA10.Time);
    endDate := StringReplace(DateToStr(cxDtEndA10.Date), '-', '', [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeEndA10.Time);

    //��带 �����ؼ� param�� �����Ѵ�....
    //Param 2
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    //Param 3
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    IF Type4 <> 'BRCASHS39' then
    begin
      //Param 4
      sNode := '/cdms/Service/Data/Query/Param';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_clon := lst_node.item[0].cloneNode(True);
      sNode := '/cdms/Service/Data/Query';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].appendChild(lst_clon);

      //Param 5
      sNode := '/cdms/Service/Data/Query/Param';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_clon := lst_node.item[0].cloneNode(True);
      sNode := '/cdms/Service/Data/Query';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].appendChild(lst_clon);

      //Param 6
      sNode := '/cdms/Service/Data/Query/Param';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_clon := lst_node.item[0].cloneNode(True);
      sNode := '/cdms/Service/Data/Query';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].appendChild(lst_clon);
    end;

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := endDate;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    lst_Node.item[2].attributes.getNamedItem('Value').Text := sBrNo;

    if Type4 <> 'BRCASHS39' then
    begin
      lst_Node.item[3].attributes.getNamedItem('Seq').Text := '4';
      lst_Node.item[3].attributes.getNamedItem('Value').Text := Type1;
      lst_Node.item[4].attributes.getNamedItem('Seq').Text := '5';
      lst_Node.item[4].attributes.getNamedItem('Value').Text := Type2;
      lst_Node.item[5].attributes.getNamedItem('Seq').Text := '6';
      lst_Node.item[5].attributes.getNamedItem('Value').Text := Type3;
    end;

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

procedure TFrm_ACC1.proc_BankLog5(sBrNo, Type1: string);
var
  sNode, ls_TxLoad, startDate, endDate: string;
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
      ShowMessage('���� Error�Դϴ�. �ٽ���ȸ�Ͽ��ֽʽÿ�.');
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'BANKACC03';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS09_DETAIL';

    if (cxDtStartA10.Text = '') or (cxDtEndA10.Text = '') then
    begin
      cxDtStartA10.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA10.Date := cxDtStartA10.Date + 1;
    end;
    startDate := StringReplace(DateToStr(cxDtStartA10.Date), '-', '', [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeStartA10.Time);
    endDate := StringReplace(DateToStr(cxDtEndA10.Date), '-', '', [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeEndA10.Time);

    //��带 �����ؼ� param�� �����Ѵ�....
    //Param 2
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    //Param 3
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    //Param 4
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := Type1;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := sBrNo;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    lst_Node.item[2].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[3].attributes.getNamedItem('Seq').Text := '4';
    lst_Node.item[3].attributes.getNamedItem('Value').Text := endDate;

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

procedure TFrm_ACC1.proc_BRCOUPON_LIST(AType: integer);
var
	msg, sTmp : string;
	StrList, slList : TStringList;
	ErrCode: integer;

	XmlData, Param, ErrMsg: string;

	tmpCnt, iCnt : integer;
	tmpCntStr: string;
	k, j, iTmp : Integer;
	tmpStr: string;
  ArrSt: array of string;
	iRow: integer;
	AView: TcxGridDBTableView;
	AFromDate, AEndDate : TcxDateEdit;
	AText : TcxTextEdit;
	AComBo, AComBo2 : TcxComboBox;
	AButton : TcxButton;
begin
	if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
	begin
		msg := '[%s(%s)]  ���翡�� ������� �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
				+ #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
		Exit;
	end;

	if fGetChk_Search_HdBrNo('���������Ȳ') then Exit;
	Param := '';

	if AType = 1 then
	begin
		AView := cxGridA18View;
		AFromDate := cxDtStartA18;
		AEndDate  := cxDtEndA18;
		AText     := edt_A18;
		AComBo    := cxCb1A18;
		AComBo2   := cxCb1A182;
		AButton   := btnSearchA18
	end else if AType = 2 then 
	begin
		AView := cxGridA19View;
		AFromDate := cxDtStartA19;
		AEndDate  := cxDtEndA19;
		AText     := edt_A19;
		AComBo    := cxCb1A19;
		AComBo2   := cxCb1A192;
		AButton   := btnSearchA19
	end;
	
	if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //����
	begin
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := {Param + '��' +} GT_SEL_BRNO.HDNO
		else
			Param := {Param + '��' +} GT_USERIF.HD;
		Param := Param + '��' ;
	end else
	begin
		if (GT_USERIF.LV = '60') then
		begin
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
				Param := {Param + '��' +} GT_SEL_BRNO.HDNO
			else
				Param := {Param + '��' +} GT_USERIF.HD;
			Param := Param + '��' + GT_SEL_BRNO.BrNo;
		end else
		begin
			Param := {Param + '��' +} GT_USERIF.HD;
			Param := Param + '��' + GT_USERIF.BR;
		end;
	end;
	Param := Param + '��' + IntToStr(AType);
	Param := Param + '��' + FormatDateTime('YYYYMMDD', AFromDate.Date)+'090000';
	Param := Param + '��' + FormatDateTime('YYYYMMDD', AEndDate.Date)+'090000';

	if AComBo.ItemIndex = 0 then sTmp := '0' else
	if AComBo.ItemIndex = 1 then sTmp := '1' else
	if AComBo.ItemIndex = 2 then sTmp := '2';
	Param := Param + '��' + sTmp;

	if AComBo2.ItemIndex = 0 then sTmp := '0' else
	if AComBo2.ItemIndex = 1 then sTmp := '1';
	Param := Param + '��' + sTmp;
	Param := Param + '��' + Trim(AText.Text);
	 //'A100  ��        ��1           ��20191125090000��20200527090000��       0��5õ'
	//�����ڵ妢�����ڵ妢�˻��Ⱓ���Ц������Ͻ�      �������Ͻ�      ����뿩�Φ��˻�Ÿ�Ԧ��˻�Ű����
	AButton.Enabled := False;
	Screen.Cursor := crHourGlass;
	try
		slList := TStringList.Create;
		if not RequestBasePaging(GetSel06('GET_SELF_COUPON_LIST', 'MNG_SELF_COUPON.GET_SELF_COUPON_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('���������Ȳ ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Screen.Cursor := crDefault;
      btnSearchA16.Enabled := True;
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
				GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
        Exit;
      end;

      AView.BeginUpdate;
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
						GetTextSeperationEx('��', ArrSt[k], StrList);
						//������   ��������ȣ    �������ݾצ�������(YYYYMMDD)��������(YYYYMMDD)����뿩�Φ�����Ͻ�      ��������ó ��ó���ھ��̵�ó�����̸�
						//5õ��������AA01BB021234��5000    ��20200101        ��20201231        ��y       ��20200326172903��01011110001��sntest      �������

						iRow := AView.DataController.AppendRecord;
						
						SetGridData(AView, iRow,  0, StrToIntDef(IntToStr(iCnt), 0));
						iTmp := scb_BranchCode.IndexOf(StrList.Strings[11]);
						if iTmp < 0 then sTmp := '' else sTmp := scb_BranchName[iTmp] + '(' + StrList.Strings[11] + ')';
						SetGridData(AView, iRow,  1, sTmp);                                        //�����
						SetGridData(AView, iRow,  2, StrList.Strings[0]);                          //������
						SetGridData(AView, iRow,  3, StrList.Strings[1]);                          //������ȣ
						SetGridData(AView, iRow,  4, StrList.Strings[2]);                          //�����ݾ�
						SetGridData(AView, iRow,  5, GetStrToDateTimeGStr(StrList.Strings[3], 4)); //������
						SetGridData(AView, iRow,  6, GetStrToDateTimeGStr(StrList.Strings[4], 4)); //������
						if (StrList.Strings[5] = 'x') then sTmp := '�̻��' else
						if (StrList.Strings[5] = 'n') then sTmp := '���'   else sTmp := '�������';
						SetGridData(AView, iRow,  7, sTmp);                                        //��뿩��
						SetGridData(AView, iRow,  8, GetStrToDateTimeGStr(StrList.Strings[6], 3)); //����Ͻ�
						SetGridData(AView, iRow,  9, strtocall(Trim(StrList.Strings[7])));         //������ó
						if StrList.Strings[9] <> '' then sTmp := '(' + StrList.Strings[9] + ')' else sTmp := '';
						SetGridData(AView, iRow, 10, StrList.Strings[8] + sTmp);                   //ó���ھ��̵�(ó�����̸�)
						SetGridData(AView, iRow, 11, StrList.Strings[10]);                          //�����ڵ�
						SetGridData(AView, iRow, 12, StrList.Strings[11]);                          //�����ڵ�
						Inc(iCnt);
					end;
        end;
      finally
        StrList.Free;
				AView.endupdate;
      end;
    end;
  finally
		slList.Free;
    Screen.Cursor := crDefault;
		AButton.Enabled := True;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_ACC1.proc_PROFIT_FEE_SUMMARY;
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  slList, StrList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  j, k, iCnt : Integer;
  sData, sType: string;
  tmpCnt: integer;
  tmpCntStr: string;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
  tCOMM_R_CNT, tCOMM_C_CNT, tORDC_CNT, tCOMM_CNT, tCProxy_CNT, tCANC_C_CNT, tCANC_R_CNT, tETC_CNT, tEmp_CNT : Integer;
  tCOMM_R_AMT, tCOMM_C_AMT, tORDC_AMT, tCOMM_AMT, tCProxy_AMT, tCANC_C_AMT, tCANC_R_AMT, tETC_AMT, tEmp_AMT : Integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('���ͱݰ��') then Exit;

  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('��ȸ���Դϴ�. ��ø� ��ٷ��ּ���', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('���� 9�ú��� ���� 1�� ���̿��� ���� �˻��� �� �����ϴ�.', CDMSI);
    exit;
  end;

  Param :=               FormatDateTime('YYYYMMDD', cxDtStartA11.Date) ;//+ '090000';       //�˻���������
  Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA11.Date) ;//+ '090000';       //�˻���������

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //����
  begin
//    Param := Param + '��' + 'TITLE';
    Param := Param + '��' + 'HEAD';
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '��' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '��' + GT_USERIF.HD;
    Param := Param + '��' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
      // ����
//    Param := Param + '��' + 'TITLE';
      Param := Param + '��' + 'BRANCH';
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '��' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '��' + GT_USERIF.HD;
      Param := Param + '��' + GT_SEL_BRNO.BrNo;
    end else
    begin
//      Param := Param + '��' + 'TITLE';
      Param := Param + '��' + 'BRANCH';
      Param := Param + '��' + GT_USERIF.HD;
      Param := Param + '��' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '��' ;

	Screen.Cursor := crHourGlass;
	btnSearchA11.Enabled := False;
  try
    slList := TStringList.Create;
  	if not RequestBasePaging(GetSel06('GET_PROFIT_FEE_SUMMARY', 'MNG_CALC.PROFIT_FEE_SUMMARY', '1000', Param), slList, ErrCode, ErrMsg) then
  	begin
  		GMessagebox(Format('���Աݰ��  ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Screen.Cursor := crDefault;
    	btnSearchA11.Enabled := True;
  		Exit;
  	end;

    tCOMM_R_CNT := 0; tCOMM_C_CNT := 0; tORDC_CNT := 0; tCOMM_CNT := 0; tCProxy_CNT := 0;
    tCANC_C_CNT := 0; tCANC_R_CNT := 0; tETC_CNT := 0; tEmp_CNT := 0;
    tCOMM_R_AMT := 0; tCOMM_C_AMT := 0; tORDC_AMT := 0; tCOMM_AMT := 0; tCProxy_AMT := 0;
    tCANC_C_AMT := 0; tCANC_R_AMT := 0; tETC_AMT := 0; tEmp_AMT := 0;
    
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
				GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
        Exit;
      end;

      cxGridA11View.BeginUpdate;
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
            GetTextSeperationEx('��', ArrSt[k], StrList);

            if not Check_ID(GT_USERIF.ID, StrList.Strings[0]) then
            begin
              iRow := cxGridA11View.DataController.AppendRecord;
              SetGridData(cxGridA11View, iRow,  0, StrToIntDef(IntToStr(k+1), 0));
              SetGridData(cxGridA11View, iRow,  1, StrList.Strings[0]) ;
              SetGridData(cxGridA11View, iRow,  2, StrList.Strings[1]) ;
              SetGridData(cxGridA11View, iRow,  3, '�Ǽ�');
              SetGridData(cxGridA11View, iRow,  4, StrList.Strings[2]);
              tCOMM_R_CNT := tCOMM_R_CNT + StrToIntDef(StrList.Strings[2], 0);     //������-�Ǽ�R

              SetGridData(cxGridA11View, iRow,  5, StrList.Strings[4]);
              tCOMM_C_CNT := tCOMM_C_CNT + StrToIntDef(StrList.Strings[4], 0);     //������-�Ǽ�C

              SetGridData(cxGridA11View, iRow,  6, StrList.Strings[6]);
              tORDC_CNT := tORDC_CNT + StrToIntDef(StrList.Strings[6], 0);         //���ֺ�-�Ǽ�

              SetGridData(cxGridA11View, iRow,  7, StrList.Strings[8]);
              tCOMM_CNT := tCOMM_CNT + StrToIntDef(StrList.Strings[8], 0);         //���ֺ�-�Ǽ�

              SetGridData(cxGridA11View, iRow,  8, StrList.Strings[10]);
              tCProxy_CNT := tCProxy_CNT + StrToIntDef(StrList.Strings[10], 0);    //�ݼ�Ÿ����-�Ǽ�

              SetGridData(cxGridA11View, iRow,  9, StrList.Strings[12]);
              tCANC_R_CNT := tCANC_R_CNT + StrToIntDef(StrList.Strings[12], 0);    //��ҹ���-�Ǽ�R

              SetGridData(cxGridA11View, iRow, 10, StrList.Strings[14]);
              tCANC_C_CNT := tCANC_C_CNT + StrToIntDef(StrList.Strings[14], 0);    //��ҹ���-�Ǽ�C

              SetGridData(cxGridA11View, iRow, 11, StrList.Strings[20]);
              tEMP_CNT := tEMP_CNT + StrToIntDef(StrList.Strings[20], 0);          //��뺸���- �Ǽ�

              SetGridData(cxGridA11View, iRow, 12, StrList.Strings[16]);
              tETC_CNT := tETC_CNT + StrToIntDef(StrList.Strings[16], 0);          //��Ÿ-�Ǽ�

              SetGridData(cxGridA11View, iRow, 13, StrList.Strings[18]);

              iRow := cxGridA11View.DataController.AppendRecord;
              SetGridData(cxGridA11View, iRow,  0,  StrToIntDef(IntToStr(k+1), 0));
              SetGridData(cxGridA11View, iRow,  1, StrList.Strings[0]) ;
              SetGridData(cxGridA11View, iRow,  2, StrList.Strings[1]) ;
              SetGridData(cxGridA11View, iRow,  3, '�ݾ�');
              SetGridData(cxGridA11View, iRow,  4, StrList.Strings[3]);
              tCOMM_R_AMT := tCOMM_R_AMT + StrToIntDef(StrList.Strings[3], 0);     //������-�ݾ�R

              SetGridData(cxGridA11View, iRow,  5, StrList.Strings[5]);
              tCOMM_C_AMT := tCOMM_C_AMT + StrToIntDef(StrList.Strings[5], 0);     //������-�ݾ�C

              SetGridData(cxGridA11View, iRow,  6, StrList.Strings[7]);
              tORDC_AMT := tORDC_AMT + StrToIntDef(StrList.Strings[7], 0);         //���ֺ�-�ݾ�

              SetGridData(cxGridA11View, iRow,  7, StrList.Strings[9]);
              tCOMM_AMT := tCOMM_AMT + StrToIntDef(StrList.Strings[9], 0);         //���ֺ�-�ݾ�

              SetGridData(cxGridA11View, iRow,  8, StrList.Strings[11]);
              tCProxy_AMT := tCProxy_AMT + StrToIntDef(StrList.Strings[11], 0);    //�ݼ�Ÿ����-�ݾ�

              SetGridData(cxGridA11View, iRow,  9, StrList.Strings[13]);
              tCANC_R_AMT := tCANC_R_AMT + StrToIntDef(StrList.Strings[13], 0);    //��ҹ���-�ݾ�R

              SetGridData(cxGridA11View, iRow, 10, StrList.Strings[15]);
              tCANC_C_AMT := tCANC_C_AMT + StrToIntDef(StrList.Strings[15], 0);    //��ҹ���-�ݾ�C

              SetGridData(cxGridA11View, iRow, 11, StrList.Strings[21]);
              tEMP_AMT := tEMP_AMT + StrToIntDef(StrList.Strings[21], 0);          //��뺸���- �ݾ�

              SetGridData(cxGridA11View, iRow, 12, StrList.Strings[17]);
              tETC_AMT := tETC_AMT + StrToIntDef(StrList.Strings[17], 0);          //��Ÿ-�ݾ�

              SetGridData(cxGridA11View, iRow, 13, StrList.Strings[19]);
  //            SetGridData(cxGridView2, iRow, 12, StrList.Strings[11]);
            end;
          end;
        end;
      finally
  			StrList.Free;

        ///////////�հ��߰�///////////////////////////
        iRow := cxGridA11View.DataController.AppendRecord;

        SetGridData(cxGridA11View, iRow,  0, '');
        SetGridData(cxGridA11View, iRow,  1, '');
        SetGridData(cxGridA11View, iRow,  2, '[�հ�]');
        SetGridData(cxGridA11View, iRow,  3, '�Ǽ�');
        SetGridData(cxGridA11View, iRow,  4, FormatCash(tCOMM_R_CNT));
        SetGridData(cxGridA11View, iRow,  5, FormatCash(tCOMM_C_CNT));
        SetGridData(cxGridA11View, iRow,  6, FormatCash(tORDC_CNT));
        SetGridData(cxGridA11View, iRow,  7, FormatCash(tCOMM_CNT));
        SetGridData(cxGridA11View, iRow,  8, FormatCash(tCProxy_CNT));
        SetGridData(cxGridA11View, iRow,  9, FormatCash(tCANC_C_CNT));
        SetGridData(cxGridA11View, iRow, 10, FormatCash(tCANC_R_CNT));
        SetGridData(cxGridA11View, iRow, 11, FormatCash(tEMP_CNT));
        SetGridData(cxGridA11View, iRow, 12, FormatCash(tETC_CNT));
        SetGridData(cxGridA11View, iRow, 13, FormatCash(tCOMM_R_CNT + tCOMM_C_CNT + tORDC_CNT + tCOMM_CNT + tCProxy_CNT + tCANC_C_CNT + tCANC_R_CNT + tEMP_CNT + tETC_CNT));

        iRow := cxGridA11View.DataController.AppendRecord;
        SetGridData(cxGridA11View, iRow,  0, '');
        SetGridData(cxGridA11View, iRow,  1, '');
        SetGridData(cxGridA11View, iRow,  2, '[�հ�]');
        SetGridData(cxGridA11View, iRow,  3, '�ݾ�');
        SetGridData(cxGridA11View, iRow,  4, FormatCash(tCOMM_R_AMT));
        SetGridData(cxGridA11View, iRow,  5, FormatCash(tCOMM_C_AMT));
        SetGridData(cxGridA11View, iRow,  6, FormatCash(tORDC_AMT));
        SetGridData(cxGridA11View, iRow,  7, FormatCash(tCOMM_AMT));
        SetGridData(cxGridA11View, iRow,  8, FormatCash(tCProxy_AMT));
        SetGridData(cxGridA11View, iRow,  9, FormatCash(tCANC_C_AMT));
        SetGridData(cxGridA11View, iRow, 10, FormatCash(tCANC_R_AMT));
        SetGridData(cxGridA11View, iRow, 11, FormatCash(tEMP_AMT));
        SetGridData(cxGridA11View, iRow, 12, FormatCash(tETC_AMT));
        SetGridData(cxGridA11View, iRow, 13, FormatCash(tCOMM_R_AMT + tCOMM_C_AMT + tORDC_AMT + tCOMM_AMT + tCProxy_AMT + tCANC_C_AMT + tCANC_R_AMT + tEMP_AMT + tETC_AMT));

        cxGridA11View.endupdate;
      end;
    end;
  finally
 	  Frm_Flash.hide;
    slList.Free;
    Screen.Cursor := crDefault;
  	btnSearchA11.Enabled := True;
  end;
end;

procedure TFrm_ACC1.proc_PROFIT_FEE_DETAIL(sBrNo: string);
var
  msg : string;
  slList, StrList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  tmpCnt: integer;
  tmpCntStr: string;
  k, j : Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('���� 9�ú��� ���� 1�� ���̿��� ���� �˻��� �� �����ϴ�.', CDMSI);
    exit;
  end;

  Param :=               StringReplace(cxDtStartA11.text,'-','',[rfReplaceAll]) ;//+ '090000';       //�˻���������
  Param := Param + '��' + StringReplace(cxDtEndA11.text,'-','',[rfReplaceAll]) ;//+ '090000';       //�˻���������

  Param := Param + '��' + 'BRANCH';
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '��' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '��' + GT_USERIF.HD;
  Param := Param + '��' + sBrNo;
  Param := Param + '��' ;

  try
    slList := TStringList.Create;
  	if not RequestBasePaging(GetSel06('GET_PROFIT_FEE_DETAIL', 'MNG_CALC.PROFIT_FEE_DETAIL', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('���Աݰ��-��  ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;
    StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
    try
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
        if tmpCnt<1 then exit;

        SetLength(ArrSt,tmpCnt);
        tmpStr:=xmlData;
        tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

        if Pos('<Result Value=',XmlData)>0 then
          tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

        if tmpCnt>0 then
        begin
          if ( Not Assigned(Frm_ACC03) ) Or ( Frm_ACC03 = NIl ) then Frm_ACC03 := TFrm_ACC03.Create(Nil);
          Frm_ACC03.Grid3View.BeginUpdate;
          Frm_ACC03.Grid3View.DataController.SetRecordCount(0);
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
              GetTextSeperationEx('��', ArrSt[k], StrList);

              iRow := Frm_ACC03.Grid3View.DataController.AppendRecord;
              SetGridData(Frm_ACC03.Grid3View, iRow,  0, StrToIntDef(IntToStr(k+1), 0));
              SetGridData(Frm_ACC03.Grid3View, iRow,  1, StrList.Strings[ 0]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow,  2, StrList.Strings[ 1]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow,  3, StrList.Strings[ 2]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow,  4, StrList.Strings[ 3]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow,  5, StrList.Strings[ 4]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow,  6, StrList.Strings[ 5]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow,  7, StrList.Strings[ 6]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow,  8, StrList.Strings[ 7]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow,  9, StrList.Strings[ 8]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow, 10, StrList.Strings[ 9]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow, 11, StrList.Strings[10]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow, 12, StrList.Strings[11]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow, 13, StrList.Strings[12]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow, 14, StrList.Strings[13]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow, 15, StrList.Strings[14]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow, 16, StrList.Strings[16]) ;
              SetGridData(Frm_ACC03.Grid3View, iRow, 17, StrList.Strings[15]) ;
            end;
          end;
          Frm_ACC03.Grid3View.endupdate;
          if Frm_ACC03.Grid3View.DataController.RecordCount > 0 then
            Frm_ACC03.Show
          else
          begin
            GMessagebox('�����Ͱ� �����ϴ�.', CDMSI);
          end;
        end;
      end;
    finally
      StrList.Free;
      Screen.Cursor := crDefault;
    end;
  finally
 	  Frm_Flash.hide;
    slList.Free;
    Screen.Cursor := crDefault;
  	btnSearchA11.Enabled := True;
  end;
end;

procedure TFrm_ACC1.btnExcelA10Click(Sender: TObject);
begin
	if cxGrid10View.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[����޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
    Exit;
  end;

  Frm_Main.sgExcel := '���ͱݸ���Ʈ.xls';
  Frm_Main.sgRpExcel := Format('����>���ͱݸ���Ʈ]%s��', [GetMoneyStr(cxGrid10View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA10;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC1.btnExcelA11Click(Sender: TObject);
begin
	if cxGridA11View.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[����޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
    Exit;
  end;

  Frm_Main.sgExcel := '���ͱݰ��.xls';
  Frm_Main.sgRpExcel := Format('����>���ͱݰ��]%s��', [GetMoneyStr(cxGridA11View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA11;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC1.btnExcelA12Click(Sender: TObject);
begin
	if cxGridA12View.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[����޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
    Exit;
  end;

  Frm_Main.sgExcel := '�ݿ�������.xls';
  Frm_Main.sgRpExcel := Format('����>�ݿ�������]%s��', [GetMoneyStr(cxGridA12View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA12;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC1.btnExcelA13Click(Sender: TObject);
begin
	if cxGridA13View.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[����޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
    Exit;
  end;

  Frm_Main.sgExcel := '����������Ȳ.xls';
  Frm_Main.sgRpExcel := Format('����>����������Ȳ]%s��', [GetMoneyStr(cxGridA13View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA13;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC1.btnExcelA141Click(Sender: TObject);
begin
	if cxGridA141View.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[����޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
    Exit;
  end;

  Frm_Main.sgExcel := '�ݴ��������_�����˻�.xls';
  Frm_Main.sgRpExcel := Format('����>�ݴ��������>�����˻�]%s��', [GetMoneyStr(cxGridA141View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA141;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC1.btnExcelA14Click(Sender: TObject);
begin
	if cxGridA14View.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[����޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
    Exit;
  end;

  Frm_Main.sgExcel := '�ݴ��������_�Ⱓ�˻�.xls';
  Frm_Main.sgRpExcel := Format('����>�ݴ��������>�Ⱓ�˻�]%s��', [GetMoneyStr(cxGridA14View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA14;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC1.btnExcelA15Click(Sender: TObject);
begin
	if cxGridA15View.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[����޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
    Exit;
  end;

  Frm_Main.sgExcel := '����������Ȳ.xls';
  Frm_Main.sgRpExcel := Format('����>����������Ȳ]%s��', [GetMoneyStr(cxGridA15View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA15;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC1.btnExcelA16Click(Sender: TObject);
begin
	if cxGridA16View.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[����޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
    Exit;
  end;

  Frm_Main.sgExcel := '���������Ȳ.xls';
  Frm_Main.sgRpExcel := Format('����>���������Ȳ]%s��', [GetMoneyStr(cxGridA16View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA16;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC1.btnExcelA17Click(Sender: TObject);
begin
	if cxGridA17View.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[����޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
    Exit;
  end;

  Frm_Main.sgExcel := 'ī�������Ȳ.xls';
  Frm_Main.sgRpExcel := Format('����>ī�������Ȳ]%s��', [GetMoneyStr(cxGridA17View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA17;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC1.btnExcelA18Click(Sender: TObject);
begin
	if cxGridA18View.DataController.RecordCount = 0 then
	begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSI);
		Exit;
	end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
		ShowMessage('[�����ٿ�ε�[����޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	Frm_Main.sgExcel := '��ü���������Ȳ.xls';
	Frm_Main.sgRpExcel := Format('����>��ü���������Ȳ]%s��', [GetMoneyStr(cxGridA18View.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGridA18;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC1.btnExcelA19Click(Sender: TObject);
begin
	if cxGridA19View.DataController.RecordCount = 0 then
	begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSI);
		Exit;
	end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
		ShowMessage('[�����ٿ�ε�[����޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
	end;

	Frm_Main.sgExcel := '��ü���������Ȳ.xls';
	Frm_Main.sgRpExcel := Format('����>��ü���������Ȳ]%s��', [GetMoneyStr(cxGridA19View.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := cxGridA19;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

function TFrm_ACC1.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  Case cxPageControl1.ActivePageIndex of
  0 : begin
        AStDt := cxDtStartA10;
       	AEdDt := cxDtEndA10;
      end;
  1 : begin
        AStDt := cxDtStartA11;
       	AEdDt := cxDtEndA11;
      end;
  2 : begin
        AStDt := cxDtStartA12;
       	AEdDt := cxDtEndA12;
      end;
  3 : begin
        AStDt := cxDtStartA13;
       	AEdDt := cxDtEndA13;
      end;
  4 : begin
        AStDt := cxDtStartA14;
       	AEdDt := cxDtEndA14;
      end;
  5 : begin
        AStDt := cxDtStartA15;
       	AEdDt := cxDtEndA15;
      end;
  6 : begin
        AStDt := cxDtStartA16;
       	AEdDt := cxDtEndA16;
      end;
  7 : begin
        AStDt := cxDtStartA17;
       	AEdDt := cxDtEndA17;
      end;
	8 : begin
				AStDt := cxDtStartA18;
				AEdDt := cxDtEndA18;
			end;
	9 : begin
				AStDt := cxDtStartA19;
				AEdDt := cxDtEndA19;
      end;
	end;
end;

procedure TFrm_ACC1.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_MSG_Err, ls_ClientKey, sTemp: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd : TStringList;
  i, j, iRow : Integer;
  ls_rxxml: WideString;
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
        if ls_ClientKey = 'BANKACC02' then //����ĳ������
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
                    GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    iRow := Frm_ACC01.Grid3View.DataController.AppendRecord;  // 1 Record �߰�
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 1] := ls_Rcrd[1];
                    sTemp := ls_Rcrd[2];
                    if sTemp <> '' then
                    begin
                      sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                      sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2) + ' '
                        + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
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
					  		GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
					  	end;
            end;
          finally
            frm_Main.sbar_Message.Panels[4].Text := '';
            Frm_ACC01.Grid3View.EndUpdate;
          end;

          if Frm_ACC01.Grid3View.DataController.RecordCount > 0 then
            Frm_ACC01.Show;
        end else
        if ls_ClientKey = 'CASHACC02' then //���ͱݸ���Ʈ
        begin
          //2009-05-26  �ۼ��� : ��â�� (���ͱݸ���Ʈ �޴� �߰�)
          cxGrid10View.BeginUpdate;
          cxGrid10View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          try
            for j := 0 to slList.Count - 1 do
            begin
              Frm_Flash.cxPBar1.Position := j + 1;
              Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
              ls_rxxml := slList[j];
              if not xdom.loadXML(ls_rxxml) then Exit;
              if (0 < GetXmlRecordCount(ls_rxxml)) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                ls_Rcrd := TStringList.Create;
                try
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
                    begin
                      iRow := cxGrid10View.DataController.AppendRecord;

                      // 1 Record �߰�
                      cxGrid10View.DataController.Values[iRow, 0] := iRow + 1;                      //No.
                      cxGrid10View.DataController.Values[iRow, 1] := ls_Rcrd[1];                    //�����
                      cxGrid10View.DataController.Values[iRow, 2] := StrToIntDef(ls_Rcrd[2], 0);    //������ĳ��
                      cxGrid10View.DataController.Values[iRow, 3] := StrToIntDef(ls_Rcrd[3], 0);    //���ּ���(����)
                      cxGrid10View.DataController.Values[iRow, 4] := StrToIntDef(ls_Rcrd[21], 0);   //���ּ���(��ü)
					  					cxGrid10View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[4], 0);    //��������
                      //[100322] ����Ϸ��ݼ�, ����Ϻ�ݾ�
                      if ls_Rcrd.Count > 24 then
                      begin
                        cxGrid10View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[24], 0);    //����Ϸ��ݼ�
                        cxGrid10View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[25], 0);    //����Ϻ�ݾ�(����)
                        cxGrid10View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[26], 0);    //����Ϻ�ݾ�(��ü)
                      end;

                      cxGrid10View.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[5], 0);    //�ַ�ǻ���
                      cxGrid10View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[6], 0);    //�����
                      cxGrid10View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[7], 0);    //��ҹ���(����)
                      cxGrid10View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[20], 0);   //��ҹ���(��ü)
                      cxGrid10View.DataController.Values[iRow, 13] := StrToIntDef(ls_Rcrd[8], 0);   //�ݴ���
                      cxGrid10View.DataController.Values[iRow, 14] := StrToIntDef(ls_Rcrd[9], 0);   //�����Ա�
                      cxGrid10View.DataController.Values[iRow, 15] := StrToIntDef(ls_Rcrd[10], 0);  //�ݸ�������
                      cxGrid10View.DataController.Values[iRow, 16] := StrToIntDef(ls_Rcrd[11], 0);  //����ĳ���̵�
                      cxGrid10View.DataController.Values[iRow, 17] := StrToIntDef(ls_Rcrd[12], 0);  //SMSĳ�����
                      cxGrid10View.DataController.Values[iRow, 18] := StrToIntDef(ls_Rcrd[13], 0);  //�ĺ��Ա�
                      cxGrid10View.DataController.Values[iRow, 19] := StrToIntDef(ls_Rcrd[14], 0);  //�����Է�
                      cxGrid10View.DataController.Values[iRow, 20] := StrToIntDef(ls_Rcrd[15], 0);  //��翡�۱�
                      cxGrid10View.DataController.Values[iRow, 21] := StrToIntDef(ls_Rcrd[16], 0);  //����ȯ��
                      cxGrid10View.DataController.Values[iRow, 22] := StrToIntDef(ls_Rcrd[17], 0);  //��Ÿ
  				  					cxGrid10View.DataController.Values[iRow, 23] := StrToIntDef(ls_Rcrd[18], 0);  //�հ�
                      cxGrid10View.DataController.Values[iRow, 24] := StrToIntDef(ls_Rcrd[27], 0);  //����ĳ��
                      cxGrid10View.DataController.Values[iRow, 25] := StrToIntDef(ls_Rcrd[28], 0);  //����ĳ��
                      cxGrid10View.DataController.Values[iRow, 26] := StrToIntDef(ls_Rcrd[19], 0);  //�ܾ�
                      cxGrid10View.DataController.Values[iRow, 27] := StrToIntDef(ls_Rcrd[23], 0);  //���ͱ�(����+��ü)
                      cxGrid10View.DataController.Values[iRow, 28] := StrToIntDef(ls_Rcrd[22], 0);  //���ͱ�(��ü)
                      cxGrid10View.DataController.Values[iRow, 29] := ls_Rcrd[0];                   //�����ڵ�
                    end;
                  end;
                finally
                  ls_Rcrd.Free;
                end;
					  	end	else
					  	begin
					  		GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
					  	end;
					  end;
          finally
            cxGrid10View.EndUpdate;
            frm_Main.sbar_Message.Panels[4].Text := '';
          end;
          //2009-07-13  �ۼ��� : ��â�� (���ͱݸ���Ʈ �󼼸���Ʈ ��ȸ)
        end else
        if ls_ClientKey = 'BANKACC03' then //���ͱݸ���Ʈ (�� �÷��� �󼼸���Ʈ ��ȸ)
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
                    GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    iRow := Frm_ACC01.Grid3View.DataController.AppendRecord;
                    // 1 Record �߰�
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 1] := ls_Rcrd[1];
                    sTemp := ls_Rcrd[2];
                    if sTemp <> '' then
                    begin
                      sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                      sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2) + ' '
                        + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                    end;
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 2] := sTemp;
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 3] := ls_Rcrd[3];
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 4] := ls_Rcrd[4];
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[5], 0);
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[6], 0);
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 7] := ls_Rcrd[7];
                    Frm_ACC01.Grid3View.DataController.Values[iRow, 8] := ls_Rcrd[8];
                  end;
                finally
                  ls_Rcrd.Free;
                end;
					  	end	else
					  	begin
					  		GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
					  	end;
					  end;
          finally
            frm_Main.sbar_Message.Panels[4].Text := '';
            Frm_ACC01.Grid3View.EndUpdate;
          end;

          if Frm_ACC01.Grid3View.DataController.RecordCount > 0 then
            Frm_ACC01.Show;
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

procedure TFrm_ACC1.proc_ORDER_CALC_SUMMARY;
var
  msg : string;
  slList, StrList: TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  j, k, iCnt : Integer;
  tmpCnt: integer;
  tmpCntStr: string;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('�ݿ�������') then Exit;

  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('��ȸ���Դϴ�. ��ø� ��ٷ��ּ���', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('���� 9�ú��� ���� 1�� ���̿��� ���� �˻��� �� �����ϴ�.', CDMSI);
    exit;
  end;

  Param :=                FormatDateTime('YYYYMMDD', cxDtStartA12.Date) ;//+ '090000';       //�˻���������
  Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA12.Date) ;//+ '090000';       //�˻���������

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //����
  begin
//    Param := Param + '��' + 'TITLE';
    Param := Param + '��' + 'HEAD';
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '��' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '��' + GT_USERIF.HD;
    Param := Param + '��' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
      // ����
//    Param := Param + '��' + 'TITLE';
      Param := Param + '��' + 'BRANCH';
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '��' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '��' + GT_USERIF.HD;
      Param := Param + '��' + GT_SEL_BRNO.BrNo;
    end else
    begin
//      Param := Param + '��' + 'TITLE';
      Param := Param + '��' + 'BRANCH';
      Param := Param + '��' + GT_USERIF.HD;
      Param := Param + '��' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '��' ;

	Screen.Cursor := crHourGlass;
	btnSearchA12.Enabled := False;
  try
    slList := TStringList.Create;

    if not RequestBasePaging(GetSel06('GET_ORDER_CALC_SUMMARY', 'MNG_CALC.ORDER_CALC_SUMMARY', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('�ݿ������� ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Screen.Cursor := crDefault;
    	btnSearchA12.Enabled := True;
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
				GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
        Exit;
      end;

      cxGridA12View.BeginUpdate;
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
            GetTextSeperationEx('��', ArrSt[k], StrList);

            if not Check_ID(GT_USERIF.ID, StrList.Strings[0]) then
            begin
              iRow := cxGridA12View.DataController.AppendRecord;
              SetGridData(cxGridA12View, iRow,  0, StrToIntDef(IntToStr(k+1), 0));
              SetGridData(cxGridA12View, iRow,  1, StrList.Strings[ 0]);
              SetGridData(cxGridA12View, iRow,  2, StrList.Strings[ 1] + ' (' + StrList.Strings[0] + ')');
              SetGridData(cxGridA12View, iRow,  3, StrList.Strings[ 2]);
              SetGridData(cxGridA12View, iRow,  4, StrList.Strings[ 3]);
              SetGridData(cxGridA12View, iRow,  5, StrList.Strings[ 4]);
              SetGridData(cxGridA12View, iRow,  6, StrList.Strings[ 5]);
              SetGridData(cxGridA12View, iRow,  7, StrList.Strings[11]);  //��뺸���
              SetGridData(cxGridA12View, iRow,  8, StrList.Strings[ 6]);
              SetGridData(cxGridA12View, iRow,  9, StrList.Strings[ 7]);
              SetGridData(cxGridA12View, iRow, 10, StrList.Strings[ 8]);
              SetGridData(cxGridA12View, iRow, 11, StrList.Strings[ 9]);
              SetGridData(cxGridA12View, iRow, 12, StrList.Strings[10]);
            end;
          end;
        end;
      finally
  			StrList.Free;
        cxGridA12View.endupdate;
      end;
    end;
	finally
 	  Frm_Flash.hide;
    slList.Free;
  	btnSearchA12.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACC1.proc_DRIVER_FEE_SUMMARY;
var
  msg : string;
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
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('����������Ȳ') then Exit;

  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('��ȸ���Դϴ�. ��ø� ��ٷ��ּ���', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('���� 9�ú��� ���� 1�� ���̿��� ���� �˻��� �� �����ϴ�.', CDMSI);
    exit;
  end;

  Param :=                FormatDateTime('YYYYMMDD', cxDtStartA13.Date) ;//+ '090000';       //�˻���������
  Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA13.Date) ;//+ '090000';       //�˻���������

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //����
  begin
//    Param := Param + '��' + 'TITLE';
    Param := Param + '��' + 'HEAD';
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '��' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '��' + GT_USERIF.HD;
    Param := Param + '��' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
                                   //����
//    Param := Param + '��' + 'TITLE';
      Param := Param + '��' + 'BRANCH';
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '��' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '��' + GT_USERIF.HD;
      Param := Param + '��' + GT_SEL_BRNO.BrNo;
    end else
    begin
//      Param := Param + '��' + 'TITLE';
      Param := Param + '��' + 'BRANCH';
      Param := Param + '��' + GT_USERIF.HD;
      Param := Param + '��' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '��' ;

  Screen.Cursor := crHourGlass;
  btnSearchA13.Enabled := False;
  try
    slList := TStringList.Create;
    if not RequestBasePaging(GetSel06('GET_DRIVER_FEE_SUMMARY', 'MNG_CALC.DRIVER_FEE_SUMMARY', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('����������Ȳ ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Screen.Cursor := crDefault;
      btnSearchA13.Enabled := True;
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
				GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
        Exit;
      end;

      cxGridA13View.BeginUpdate;
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
            GetTextSeperationEx('��', ArrSt[k], StrList);

            if not Check_ID(GT_USERIF.ID, StrList.Strings[0]) then
            begin
              iRow := cxGridA13View.DataController.AppendRecord;
              SetGridData(cxGridA13View, iRow,  0, iCnt);
              SetGridData(cxGridA13View, iRow,  1, StrList.Strings[0]);
              SetGridData(cxGridA13View, iRow,  2, strList.Strings[1] + ' (' + StrList.Strings[0] + ')');
              SetGridData(cxGridA13View, iRow,  3, StrList.Strings[2]);
              SetGridData(cxGridA13View, iRow,  4, StrList.Strings[3]);
              SetGridData(cxGridA13View, iRow,  5, StrList.Strings[4]);
              SetGridData(cxGridA13View, iRow,  6, StrList.Strings[5]);
              SetGridData(cxGridA13View, iRow,  7, StrList.Strings[6]);
              SetGridData(cxGridA13View, iRow,  8, StrList.Strings[7]);
              SetGridData(cxGridA13View, iRow,  9, StrList.Strings[8]);
              SetGridData(cxGridA13View, iRow, 10, StrList.Strings[9]);
              SetGridData(cxGridA13View, iRow, 11, StrList.Strings[10]);
              SetGridData(cxGridA13View, iRow, 12, StrList.Strings[11]);
              Inc(iCnt);
            end;
          end;
        end;
      finally
        StrList.Free;
        cxGridA13View.endupdate;
      end;
    end;
  finally
    slList.Free;
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
    btnSearchA13.Enabled := True;
  end;
end;

procedure TFrm_ACC1.proc_DRIVER_FEE_SUMMARY_DETAIL(sBrNo: string; iCol : Integer);
var
  msg : string;
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
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('���� 9�ú��� ���� 1�� ���̿��� ���� �˻��� �� �����ϴ�.', CDMSI);
    exit;
  end;

  Param :=                StringReplace(cxDtStartA13.text,'-','',[rfReplaceAll]) ;//+ '090000';       //�˻���������
  Param := Param + '��' + StringReplace(cxDtEndA13.text,'-','',[rfReplaceAll]) ;//+ '090000';       //�˻���������

  Param := Param + '��' + 'WORKER';
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '��' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '��' + GT_USERIF.HD;
  Param := Param + '��' + sBrNo;
  Param := Param + '��' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel06('GET_DRIVER_FEE_SUMMARY_DETAIL', 'MNG_CALC.DRIVER_FEE_SUMMARY', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('����������Ȳ-��  ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    if ( Not Assigned(Frm_ACC04) ) Or ( Frm_ACC04 = NIl ) then Frm_ACC04 := TFrm_ACC04.Create(Nil);
    Frm_ACC04.Grid3View.DataController.SetRecordCount(0);
    Screen.Cursor := crHourGlass;

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
				GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
        Exit;
      end;

      Frm_ACC04.Grid3View.BeginUpdate;
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
            GetTextSeperationEx('��', ArrSt[k], StrList);

            iRow := Frm_ACC04.Grid3View.DataController.AppendRecord;
            SetGridData(Frm_ACC04.Grid3View, iRow,  0, iCnt);
            SetGridData(Frm_ACC04.Grid3View, iRow,  1, StrList.Strings[ 0]) ;
            SetGridData(Frm_ACC04.Grid3View, iRow,  2, StrList.Strings[ 1]) ;
            SetGridData(Frm_ACC04.Grid3View, iRow,  3, StrList.Strings[ 2]) ;
            SetGridData(Frm_ACC04.Grid3View, iRow,  4, StrList.Strings[ 3]) ;
            SetGridData(Frm_ACC04.Grid3View, iRow,  5, StrList.Strings[ 4]) ;
            SetGridData(Frm_ACC04.Grid3View, iRow,  6, StrList.Strings[ 5]) ;
            SetGridData(Frm_ACC04.Grid3View, iRow,  7, StrList.Strings[ 6]) ;
            SetGridData(Frm_ACC04.Grid3View, iRow,  8, StrList.Strings[ 7]) ;
            SetGridData(Frm_ACC04.Grid3View, iRow,  9, StrList.Strings[ 8]) ;
            SetGridData(Frm_ACC04.Grid3View, iRow, 10, StrList.Strings[ 9]) ;
            SetGridData(Frm_ACC04.Grid3View, iRow, 11, StrList.Strings[ 10]) ;
            SetGridData(Frm_ACC04.Grid3View, iRow, 12, StrList.Strings[ 11]) ;
            Inc(iCnt);
          end;
        end;
      finally
        StrList.Free;
        Frm_ACC04.Grid3View.endupdate;
      end;
    end;
    if Frm_ACC04.Grid3View.DataController.RecordCount > 0 then
      Frm_ACC04.Show;
  finally
    slList.Free;
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_ACC1.proc_DRIVER_FEE_DETAIL(sBrNo: string; iCol : Integer);
var
  msg : string;
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
  iRow : integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('���� 9�ú��� ���� 1�� ���̿��� ���� �˻��� �� �����ϴ�.', CDMSI);
    exit;
  end;

  Param :=               StringReplace(cxDtStartA13.text,'-','',[rfReplaceAll]) ;//+ '090000';       //�˻���������
  Param := Param + '��' + StringReplace(cxDtEndA13.text,'-','',[rfReplaceAll]) ;//+ '090000';       //�˻���������
  Param := Param + '��' + IntToStr(iCol-2);
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '��' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '��' + GT_USERIF.HD;
  Param := Param + '��' + sBrNo ;

  slList := TStringList.Create;
  try
  	if not RequestBasePaging(GetSel06('GET_DRIVER_FEE_DETAIL', 'MNG_CALC.DRIVER_FEE_DETAIL', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('����������Ȳ-��1  ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    if ( Not Assigned(Frm_ACC05) ) Or ( Frm_ACC05 = NIl ) then Frm_ACC05 := TFrm_ACC05.Create(Nil);
    Frm_ACC05.Grid3View.DataController.SetRecordCount(0);
    Screen.Cursor := crHourGlass;

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
				GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
        Exit;
      end;

      Frm_ACC05.Grid3View.BeginUpdate;
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
            GetTextSeperationEx('��', ArrSt[k], StrList);

            iRow := Frm_ACC05.Grid3View.DataController.AppendRecord;
            SetGridData(Frm_ACC05.Grid3View, iRow,  0, iCnt);
            SetGridData(Frm_ACC05.Grid3View, iRow,  1, Copy(StrList.Strings[ 0],1,10) + ' ' + Copy(StrList.Strings[ 0], 11,8)) ;
            SetGridData(Frm_ACC05.Grid3View, iRow,  2, StrList.Strings[ 1]) ;
            SetGridData(Frm_ACC05.Grid3View, iRow,  3, StrList.Strings[ 2]) ;
            SetGridData(Frm_ACC05.Grid3View, iRow,  4, StrList.Strings[ 3]) ;
            SetGridData(Frm_ACC05.Grid3View, iRow,  5, StrList.Strings[ 4]) ;
            SetGridData(Frm_ACC05.Grid3View, iRow,  6, StrList.Strings[ 5]) ;
            SetGridData(Frm_ACC05.Grid3View, iRow,  7, StrList.Strings[ 6]) ;
            Inc(iCnt);
          end;
        end;
      finally
        StrList.Free;
        Frm_ACC05.Grid3View.endupdate;
      end;
    end;
    if Frm_ACC05.Grid3View.DataController.RecordCount > 0 then
      Frm_ACC05.Show;
  finally
    SlList.Free;
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_ACC1.proc_ORDER_CALC_MM_SUMMARY(AView: TcxGridDBTableView);
var
	msg : string;
	slList, StrList: TStringList;
	ErrCode: integer;
	dt_sysdate2: string;
	XmlData, Param, ErrMsg, sTmp, sTmp2: string;
	j, k, iCnt : Integer;
	tmpCnt: integer;
	tmpCntStr: string;
	tmpStr: string;
	ArrSt: array of string;
	iRow: integer;
	AButton : TcxButton;
begin
	if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
	begin
		msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
				+ #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
		Exit;
	end;
	if fGetChk_Search_HdBrNo('�ݴ��������(�����˻�)') then Exit;
	dt_sysdate2 := frm_main.func_sysdate;
  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('���� 9�ú��� ���� 1�� ���̿��� ���� �˻��� �� �����ϴ�.', CDMSI);
		exit;
  end;
	if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //����
	begin
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := GT_SEL_BRNO.HDNO
		else
			Param := GT_USERIF.HD;
		Param := Param + '��' ;
	end else
	begin
		if (GT_USERIF.LV = '60') then
		begin
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
				Param := GT_SEL_BRNO.HDNO
			else
				Param := GT_USERIF.HD;
			Param := Param + '��' + GT_SEL_BRNO.BrNo;
		end else
		begin
			Param := GT_USERIF.HD;
			Param := Param + '��' + GT_USERIF.BR;
		end;
	end;
	if AView = cxGridA141View then
	begin
		AButton := btnSearchA141;
		if cxSEMonth.Value < 10 then sTmp := IntToStr(cxSEYear.Value) + '0' + IntToStr(cxSEMonth.Value)// �˻����
														else sTmp := IntToStr(cxSEYear.Value) + IntToStr(cxSEMonth.Value);      // �˻����
		sTmp2 := sTmp + '01';
		Param := Param + '��' + sTmp2;												
		sTmp2 := FormatDateTime('YYYYMMDD', EndOfAMonth(cxSEYear.Value, cxSEMonth.Value));
		Param := Param + '��' + sTmp2;												
	end else
	if AView = cxGridA14View then
	begin
		AButton := btnSearchA14;
//		Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtStartA14.Date);  //+ '090000';       //�˻���������
//		Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA14.Date);    //+ '090000';       //�˻���������
		Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtStartA14.Date) + FormatDateTime('HHNNSS', cxTeStartA14.Time);        //�˻���������
		Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA14.Date) + FormatDateTime('HHNNSS', cxTeEndA14.Time);            //�˻���������
	end;

	Screen.Cursor := crHourGlass;
	AButton.Enabled := False;
  try
    slList := TStringList.Create;
		if not RequestBasePaging(GetSel05('GET_BR_CALLCENTER_STT', 'STT.GET_BR_CALLCENTER_STT_V2', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
			GMessagebox(Format('�ݴ�������� ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Screen.Cursor := crDefault;
     	AButton.Enabled := True;
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
				GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
        Exit;
      end;

      AView.BeginUpdate;
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
            GetTextSeperationEx('��', ArrSt[k], StrList);
            if not Check_ID(GT_USERIF.ID, StrList.Strings[2]) then
            begin
              iRow := AView.DataController.AppendRecord;
              SetGridData(AView, iRow,  0, StrToInt(IntToStr(k+1)));
							SetGridData(AView, iRow,  1, StrList.Strings[0]);
							SetGridData(AView, iRow,  2, StrList.Strings[1]);
							if Pos('.', StrList.Strings[2]) > 0 then
							begin
								sTmp := FloatToStr((StrToFloat(StrList.Strings[2]) * 100)) + '%';
								SetGridData(AView, iRow,  3, sTmp);
							end else
							if (StrToIntDef(StrList.Strings[2], 0) > 0) and (StrToIntDef(StrList.Strings[2], 0) < 51) then 
							begin
								SetGridData(AView, iRow,  3, StrToMoney(StrList.Strings[2]) + '�ڵ�')    // 1~50������ ������ �ڵ� �̹Ƿ� �ڵ�� ǥ��
							end else
							begin
								if StrToIntDef(StrList.Strings[2], 0) > 0 then 
									SetGridData(AView, iRow,  3, StrToMoney(StrList.Strings[2]) + '��')
								else SetGridData(AView, iRow,  3, '-');
							end;
							if StrList.Strings[3] = '/' then SetGridData(AView, iRow,  4, '') else
								SetGridData(AView, iRow,  4, StrList.Strings[3]);
							SetGridData(AView, iRow,  5, StrToIntDef(StrList.Strings[4], 0));
							SetGridData(AView, iRow,  6, StrToIntDef(StrList.Strings[5], 0));
							SetGridData(AView, iRow,  7, StrToIntDef(StrList.Strings[6], 0));
							if AView = cxGridA14View then
							begin
								dORDER_CALC_CC1 := dORDER_CALC_CC1 + StrToIntDef(StrList.Strings[4], 0);
								dORDER_CALC_CC2 := dORDER_CALC_CC2 + StrToIntDef(StrList.Strings[5], 0);
								dORDER_CALC_CC3 := dORDER_CALC_CC3 + StrToIntDef(StrList.Strings[6], 0); 
							end else
							if AView = cxGridA141View then
							begin
								dORDER_CALC_MM1 := dORDER_CALC_MM1 + StrToIntDef(StrList.Strings[4], 0);
								dORDER_CALC_MM2 := dORDER_CALC_MM2 + StrToIntDef(StrList.Strings[5], 0);
								dORDER_CALC_MM3 := dORDER_CALC_MM3 + StrToIntDef(StrList.Strings[6], 0); 
							end;
						end;
					end;
        end;
      finally
        StrList.Free;
				AView.endupdate;
      end;
    end;
  finally
 	  Frm_Flash.hide;
    slList.Free;
    Screen.Cursor := crDefault;
		AButton.Enabled := True;
  end;
end;

procedure TFrm_ACC1.proc_ORDER_CALC_MM_DETAIL(sHdNo, sBrNo, sBrNm, sIBrNo : string;AView: TcxGridDBTableView);
var msg, dt_sysdate2, XmlData, Param, ErrMsg, sTmp, sTmp2: string;
  tmpCntStr, tmpStr: string;
  StrList, slList : TStringList;
  ErrCode, j, k, tmpCnt, iCnt, iRow : integer;
  ArrSt: array of string;
begin
	if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('���� 9�ú��� ���� 1�� ���̿��� ���� �˻��� �� �����ϴ�.', CDMSI);
    exit;
  end;

  Param := sHdNo + '��' +  sBrNo + '��' +  sIBrNo;

	if AView = cxGridA141View then
	begin
		if cxSEMonth.Value < 10 then sTmp := IntToStr(cxSEYear.Value) + '0' + IntToStr(cxSEMonth.Value)// �˻����
														else sTmp := IntToStr(cxSEYear.Value) + IntToStr(cxSEMonth.Value);      // �˻����
		sTmp2 := sTmp + '01';
		Param := Param + '��' + sTmp2;												
		sTmp2 := FormatDateTime('YYYYMMDD', EndOfAMonth(cxSEYear.Value, cxSEMonth.Value));
		Param := Param + '��' + sTmp2;												
	end else
	if AView = cxGridA14View then
	begin
		Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtStartA14.Date) ;//+ '090000';       //�˻���������
		Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA14.Date) ;//+ '090000';       //�˻���������
	end;

	slList := TStringList.Create;
	try
		if not RequestBasePaging(GetSel05('GET_BR_CALLCENTER_DT_STT', 'STT.GET_BR_CALLCENTER_DT_STT', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('�ݴ��������-��  ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
		end;

    Screen.Cursor := crHourGlass;
    if ( Not Assigned(Frm_ACC07) ) Or ( Frm_ACC07 = NIl ) then Frm_ACC07 := TFrm_ACC07.Create(Nil);
		Frm_ACC07.Grid3View.DataController.SetRecordCount(0);

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
				GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
        Exit;
      end;

      Frm_ACC07.Grid3View.BeginUpdate;
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
            GetTextSeperationEx('��', ArrSt[k], StrList);

            iRow := Frm_ACC07.Grid3View.DataController.AppendRecord;
						SetGridData(Frm_ACC07.Grid3View, iRow,  0, iCnt);
            SetGridData(Frm_ACC07.Grid3View, iRow,  1, sBrNm);
						SetGridData(Frm_ACC07.Grid3View, iRow,  2, StrList.Strings[0]) ;
						SetGridData(Frm_ACC07.Grid3View, iRow,  3, StrToIntDef(StrList.Strings[2], 0)) ;
						SetGridData(Frm_ACC07.Grid3View, iRow,  4, StrToIntDef(StrList.Strings[1], 0)) ;
						SetGridData(Frm_ACC07.Grid3View, iRow,  5, StrToIntDef(StrList.Strings[3], 0)) ;
            Inc(iCnt);
          end;
        end;
      finally
        StrList.Free;
        Frm_ACC07.Grid3View.EndUpdate;
      end;
    end;
    if Frm_ACC07.Grid3View.DataController.RecordCount > 0 then
      Frm_ACC07.Show;
  finally
    slList.Free;
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_ACC1.proc_ORDER_CALC_CC_SUMMARY;
var
	msg : string;
	slList, StrList: TStringList;
	ErrCode: integer;
	dt_sysdate2: string;
	XmlData, Param, ErrMsg: string;
	j, k, iCnt : Integer;
	tmpCnt: integer;
	tmpCntStr: string;
	tmpStr: string;
	ArrSt: array of string;
	iRow: integer;
begin
	if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
	begin
		msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
				+ #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
		Exit;
  end;
  if fGetChk_Search_HdBrNo('�ݴ��������(�����˻�)') then Exit;
	dt_sysdate2 := frm_main.func_sysdate;
  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('���� 9�ú��� ���� 1�� ���̿��� ���� �˻��� �� �����ϴ�.', CDMSI);
    exit;
  end;
//	if cxSEMonth.Value < 10 then Param := Param + '��' + IntToStr(cxSEYear.Value) + '0' + IntToStr(cxSEMonth.Value) // �˻����
//													else Param := Param + '��' + IntToStr(cxSEYear.Value) + IntToStr(cxSEMonth.Value);      // �˻����
  Param :=                FormatDateTime('YYYYMMDD', cxDtStartA14.Date) ;//+ '090000';       //�˻���������
  Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA14.Date) ;//+ '090000';       //�˻���������
	if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //����
	begin
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			Param := GT_SEL_BRNO.HDNO
		else
			Param := GT_USERIF.HD;
		Param := Param + '��' ;
	end else
	begin
		if (GT_USERIF.LV = '60') then
		begin
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
				Param := GT_SEL_BRNO.HDNO
			else
				Param := GT_USERIF.HD;
			Param := Param + '��' + GT_SEL_BRNO.BrNo;
		end else
		begin
			Param := GT_USERIF.HD;
			Param := Param + '��' + GT_USERIF.BR;
		end;
	end;
	Screen.Cursor := crHourGlass;
	btnSearchA141.Enabled := False;
  try
    slList := TStringList.Create;
		if not RequestBasePaging(GetSel05('GET_CALLCENTER_CHARGE_STT', 'STT.GET_CALLCENTER_CHARGE_STT', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
			GMessagebox(Format('�ݴ�������� ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Screen.Cursor := crDefault;
     	btnSearchA141.Enabled := True;
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
				GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
        Exit;
      end;

      cxGridA141View.BeginUpdate;
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
            GetTextSeperationEx('��', ArrSt[k], StrList);
            if not Check_ID(GT_USERIF.ID, StrList.Strings[2]) then
            begin
              iRow := cxGridA141View.DataController.AppendRecord;
              SetGridData(cxGridA141View, iRow,  0, StrToInt(IntToStr(k+1)));
              SetGridData(cxGridA141View, iRow,  1, StrList.Strings[0]);
              SetGridData(cxGridA141View, iRow,  2, StrList.Strings[1]);
              SetGridData(cxGridA141View, iRow,  3, StrToIntDef(StrList.Strings[2], 0));
              SetGridData(cxGridA141View, iRow,  4, StrList.Strings[3]);
              SetGridData(cxGridA141View, iRow,  5, StrToIntDef(StrList.Strings[4], 0));
              SetGridData(cxGridA141View, iRow,  6, StrToIntDef(StrList.Strings[5], 0));
              SetGridData(cxGridA141View, iRow,  7, StrToIntDef(StrList.Strings[6], 0));
            end;
          end;
        end;
      finally
        StrList.Free;
        cxGridA141View.endupdate;
      end;
    end;
  finally
 	  Frm_Flash.hide;
    slList.Free;
    Screen.Cursor := crDefault;
  	btnSearchA141.Enabled := True;
  end;
end;

procedure TFrm_ACC1.proc_ORDER_CALC_CC_DETAIL(sBrNo: string);
var
  msg : string;
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
  iRow : integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('���� 9�ú��� ���� 1�� ���̿��� ���� �˻��� �� �����ϴ�.', CDMSI);
    exit;
  end;

  Param :=                StringReplace(cxDtStartA14.text,'-','',[rfReplaceAll]) ;//+ '090000';       //�˻���������
  Param := Param + '��' + StringReplace(cxDtEndA14.text,'-','',[rfReplaceAll]) ;//+ '090000';       //�˻���������

  Param := Param + '��' + 'BRANCH';
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '��' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '��' + GT_USERIF.HD;
  Param := Param + '��' + sBrNo;
  if (GT_USERIF.LV <> '60') then
  begin
    Param := Param + '��' + 'BRANCH';
    Param := Param + '��' + GT_USERIF.HD;
    Param := Param + '��' + GT_USERIF.BR;
  end;
  Param := Param + '��' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_ORDER_CALC_CC_DETAIL', 'MNG_CALC.ORDER_CALC_CC_DETAIL', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('�ݴ��������-��  ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    Screen.Cursor := crHourGlass;
    if ( Not Assigned(Frm_ACC06) ) Or ( Frm_ACC06 = NIl ) then Frm_ACC06 := TFrm_ACC06.Create(Nil);
    Frm_ACC06.Grid3View.DataController.SetRecordCount(0);

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
				GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
        Exit;
      end;

      Frm_ACC06.Grid3View.BeginUpdate;
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
            GetTextSeperationEx('��', ArrSt[k], StrList);

            iRow := Frm_ACC06.Grid3View.DataController.AppendRecord;
            SetGridData(Frm_ACC06.Grid3View, iRow,  0, iCnt);
            SetGridData(Frm_ACC06.Grid3View, iRow,  1, Copy(StrList.Strings[ 0],1,10) + ' ' + Copy(StrList.Strings[ 0], 11,8)) ;
            SetGridData(Frm_ACC06.Grid3View, iRow,  2, StrList.Strings[ 1]) ;
            SetGridData(Frm_ACC06.Grid3View, iRow,  3, StrList.Strings[ 2]) ;
            SetGridData(Frm_ACC06.Grid3View, iRow,  4, StrList.Strings[ 3]) ;
            SetGridData(Frm_ACC06.Grid3View, iRow,  5, StrList.Strings[ 4]) ;
            SetGridData(Frm_ACC06.Grid3View, iRow,  6, StrList.Strings[ 5]) ;
            SetGridData(Frm_ACC06.Grid3View, iRow,  7, StrList.Strings[ 6]) ;
            Inc(iCnt);
          end;
        end;
      finally
        StrList.Free;
        Frm_ACC06.Grid3View.EndUpdate;
      end;
    end;

    if Frm_ACC06.Grid3View.DataController.RecordCount > 0 then
      Frm_ACC06.Show;
  finally
    slList.Free;
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_ACC1.proc_COUPON_APPR;
var
  msg : string;
  StrList, slList : TStringList;
  ErrCode: integer;

  XmlData, Param, ErrMsg: string;

  tmpCnt, iCnt : integer;
  tmpCntStr: string;
  k, j : Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('����������Ȳ') then Exit;

  Param :=               FormatDateTime('YYYYMMDD', cxDtStartA15.Date) + FormatDateTime('HHNNSS', cxTeStartA15.Time);
  Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA15.Date) + FormatDateTime('HHNNSS', cxTeEndA15.Time);

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //����
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '��' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '��' + GT_USERIF.HD;
    Param := Param + '��' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '��' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '��' + GT_USERIF.HD;
      Param := Param + '��' + GT_SEL_BRNO.BrNo;
    end else
    begin
      Param := Param + '��' + GT_USERIF.HD;
      Param := Param + '��' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '��' ;

  Screen.Cursor := crHourGlass;
  btnSearchA15.Enabled := False;
  try
    slList := TStringList.Create;
    if not RequestBasePaging(GetSel05('GET_COUPON_APPR', 'PAY_COUPON.COUPON_APPR_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('����������Ȳ ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Screen.Cursor := crDefault;
      btnSearchA15.Enabled := True;
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
				GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
        Exit;
      end;

      cxGridA15View.BeginUpdate;
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
            GetTextSeperationEx('��', ArrSt[k], StrList);

    				iRow := cxGridA15View.DataController.AppendRecord;
    				SetGridData(cxGridA15View, iRow,  0, iCnt);
    				SetGridData(cxGridA15View, iRow,  1, StrList.Strings[0]);
    				SetGridData(cxGridA15View, iRow,  2, StrList.Strings[1]);
    				SetGridData(cxGridA15View, iRow,  3, StrList.Strings[2]);
    				SetGridData(cxGridA15View, iRow,  4, StrList.Strings[3]);
    				SetGridData(cxGridA15View, iRow,  5, StrList.Strings[4]);
    				SetGridData(cxGridA15View, iRow,  6, StrList.Strings[5]);
    				SetGridData(cxGridA15View, iRow,  7, StrList.Strings[6]);
    				SetGridData(cxGridA15View, iRow,  8, strtocall(Trim(StrList.Strings[7])));
    				SetGridData(cxGridA15View, iRow,  9, StrList.Strings[8]);
    				SetGridData(cxGridA15View, iRow, 10, StrList.Strings[9]);
    				SetGridData(cxGridA15View, iRow, 11, StrList.Strings[10]);
    				SetGridData(cxGridA15View, iRow, 12, StrList.Strings[11]);
            Inc(iCnt);
    			end;
    		end;
      finally
        StrList.Free;
      	cxGridA15View.endupdate;
      end;
    end;
	finally
    slList.Free;
		Screen.Cursor := crDefault;
    btnSearchA15.Enabled := True;
    Frm_Flash.Hide;
	end;
end;

procedure TFrm_ACC1.proc_COUPON_LIST;
var
  msg : string;
  StrList, slList : TStringList;
  ErrCode: integer;

  XmlData, Param, ErrMsg: string;

  tmpCnt, iCnt : integer;
  tmpCntStr: string;
  k, j : Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('���������Ȳ') then Exit;

  Param :=               FormatDateTime('YYYYMMDD', cxDtStartA16.Date) + FormatDateTime('HHNNSS', cxTeStartA16.Time);
  Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA16.Date) + FormatDateTime('HHNNSS', cxTeEndA16.Time);

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //����
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '��' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '��' + GT_USERIF.HD;
    Param := Param + '��' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '��' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '��' + GT_USERIF.HD;
      Param := Param + '��' + GT_SEL_BRNO.BrNo;
    end else
    begin
      Param := Param + '��' + GT_USERIF.HD;
      Param := Param + '��' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '��' ;

  Screen.Cursor := crHourGlass;
  btnSearchA16.Enabled := False;
  try
    slList := TStringList.Create;
    if not RequestBasePaging(GetSel05('GET_COUPON_USE', 'PAY_COUPON.COUPON_USE_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('���������Ȳ ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Screen.Cursor := crDefault;
      btnSearchA16.Enabled := True;
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
				GMessagebox('�˻��� ������ �����ϴ�.', CDMSI);
        Exit;
      end;

      cxGridA16View.BeginUpdate;
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
            GetTextSeperationEx('��', ArrSt[k], StrList);

            iRow := cxGridA16View.DataController.AppendRecord;
            SetGridData(cxGridA16View, iRow,  0, StrToIntDef(IntToStr(iCnt), 0));
            SetGridData(cxGridA16View, iRow,  1, StrList.Strings[0]);
            SetGridData(cxGridA16View, iRow,  2, StrList.Strings[1]);
            SetGridData(cxGridA16View, iRow,  3, strtocall(Trim(StrList.Strings[2])));
            SetGridData(cxGridA16View, iRow,  4, StrList.Strings[3]);
            SetGridData(cxGridA16View, iRow,  5, StrList.Strings[4]);
            SetGridData(cxGridA16View, iRow,  6, StrList.Strings[5]);
            SetGridData(cxGridA16View, iRow,  7, StrList.Strings[6]);
    				SetGridData(cxGridA16View, iRow,  8, StrList.Strings[7]);
            Inc(iCnt);
          end;
        end;
      finally
        StrList.Free;
        cxGridA16View.endupdate;
      end;
    end;
  finally
    slList.Free;
    Screen.Cursor := crDefault;
    btnSearchA16.Enabled := True;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_ACC1.MiYesterdayClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACC1.MiOneWeekClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACC1.MiOneMonthClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACC1.MiStartMonthClick(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

end.

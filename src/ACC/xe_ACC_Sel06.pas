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
  IdTCPConnection, IdTCPClient, Gauges, ShellAPI,
  ComObj, cxCheckComboBox, IniFiles, cxSplitter, cxTL, cxInplaceContainer, cxDBTL,
  cxTLData, xe_Structure, cxMemo, cxPCdxBarPopupMenu,
  cxLookAndFeels, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,
  cxTLdxBarBuiltInMenu, cxGroupBox, cxTimeEdit, GradientLabel, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter, dxBarBuiltInMenu;

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
    Shape2: TShape;
    lblSosokNameA1: TcxLabel;
    cxDtStartA1: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA1: TcxDateEdit;
    btnDateA1: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
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
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    cxTabSheet12: TcxTabSheet;
    cxTabSheet13: TcxTabSheet;
    cxTabSheet14: TcxTabSheet;
    cxTabSheet15: TcxTabSheet;
    cxTabSheet16: TcxTabSheet;
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
    Shape3: TShape;
    Shape4: TShape;
    cxLabel2: TcxLabel;
    lblSosokNameA2: TcxLabel;
    cxDtStartA2: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxDtEndA2: TcxDateEdit;
    btnSearchA2: TcxButton;
    btnExcelA2: TcxButton;
    btnDateA2: TcxButton;
    cxLabel4: TcxLabel;
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
    Shape7: TShape;
    Shape8: TShape;
    cxLabel7: TcxLabel;
    lblSosokNameA3: TcxLabel;
    cxDtStartA3: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxDtEndA3: TcxDateEdit;
    btnSearchA3: TcxButton;
    btnExcelA3: TcxButton;
    btnDateA3: TcxButton;
    cxLabel9: TcxLabel;
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
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    cxLabel11: TcxLabel;
    lblSosokNameA4: TcxLabel;
    cxDtStartA4: TcxDateEdit;
    cxLabel12: TcxLabel;
    cxDtEndA4: TcxDateEdit;
    btnSearchA4: TcxButton;
    btnExcelA4: TcxButton;
    btnDateA4: TcxButton;
    cxLabel13: TcxLabel;
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
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    cxLabel15: TcxLabel;
    lblSosokNameA5: TcxLabel;
    cxDtStartA5: TcxDateEdit;
    cxLabel16: TcxLabel;
    cxDtEndA5: TcxDateEdit;
    btnSearchA5: TcxButton;
    btnExcelA5: TcxButton;
    btnDateA5: TcxButton;
    cxLabel17: TcxLabel;
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
    cxTabSheet17: TcxTabSheet;
    cxGroupBox7: TcxGroupBox;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    cxLabel20: TcxLabel;
    lblSosokNameA6: TcxLabel;
    btnSearchA6: TcxButton;
    btnExcelA6: TcxButton;
    cxLabel21: TcxLabel;
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
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    cxLabel23: TcxLabel;
    lblSosokNameA7: TcxLabel;
    cxDtStartA7: TcxDateEdit;
    cxLabel24: TcxLabel;
    cxDtEndA7: TcxDateEdit;
    btnSearchA7: TcxButton;
    btnExcelA7: TcxButton;
    btnDateA7: TcxButton;
    cxLabel25: TcxLabel;
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
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
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
    Shape30: TShape;
    cxrbBrCash: TcxRadioButton;
    chrbSmsCash: TcxRadioButton;
    cxGpCIS: TcxGroupBox;
    Shape31: TShape;
    Shape32: TShape;
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
    Shape33: TShape;
    Shape34: TShape;
    cxcbCashMoveBrName2: TcxComboBox;
    cxcbCashMoveHdName2: TcxComboBox;
    cxLabel40: TcxLabel;
    cxLblOBrCash: TcxLabel;
    cxLabel41: TcxLabel;
    cxLblOSmCash: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxLblSMView: TcxLabel;
    cxGroupBox13: TcxGroupBox;
    Shape35: TShape;
    Shape36: TShape;
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
    cxLabel30: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel46: TcxLabel;
    cxLabel47: TcxLabel;
    cxLabel48: TcxLabel;
    edtCashMoveMultiMemo: TcxTextEdit;
    Panel2: TPanel;
    Shape37: TShape;
    cxRBCashM: TcxRadioButton;
    cxRBCashB: TcxRadioButton;
    PnlSelHdOpt: TPanel;
    Shape38: TShape;
    RB_SelHdOpt1: TcxRadioButton;
    RB_SelHdOpt2: TcxRadioButton;
    cxGpCOM: TcxGroupBox;
    Shape39: TShape;
    cxcbCashMoveBrName4: TcxComboBox;
    cxcbCashMoveHdName4: TcxComboBox;
    cxChkSel: TcxCheckBox;
    cxLabel49: TcxLabel;
    cxLblBrCash: TcxLabel;
    cxLabel50: TcxLabel;
    cxGBA9: TcxGroupBox;
    Shape40: TShape;
    Shape41: TShape;
    cxLabel51: TcxLabel;
    lblSosokNameA9: TcxLabel;
    cxDtStartA9: TcxDateEdit;
    cxLabel52: TcxLabel;
    cxDtEndA9: TcxDateEdit;
    btnSearchA9: TcxButton;
    btnExcelA9: TcxButton;
    btnDateA9: TcxButton;
    cxLabel53: TcxLabel;
    cxTeStartA9: TcxTimeEdit;
    cxTeEndA9: TcxTimeEdit;
    cxGroupBox16: TcxGroupBox;
    Shape42: TShape;
    Shape43: TShape;
    Shape44: TShape;
    Shape45: TShape;
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
    cxLabel61: TcxLabel;
    cxLblSMCnt1A9: TcxLabel;
    cxLblSMCnt2A9: TcxLabel;
    cxLabel62: TcxLabel;
    lbl1: TcxLabel;
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
    cxGroupBox15: TcxGroupBox;
    Shape47: TShape;
    Shape48: TShape;
    cxLabel63: TcxLabel;
    lblSosokNameA10: TcxLabel;
    cxDtStartA10: TcxDateEdit;
    cxLabel64: TcxLabel;
    cxDtEndA10: TcxDateEdit;
    btnSearchA10: TcxButton;
    btnExcelA10: TcxButton;
    btnDateA10: TcxButton;
    cxLabel65: TcxLabel;
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
    gbMainA8: TcxGroupBox;
    pnlMainA11: TPanel;
    Shape50: TShape;
    cxGroupBox11: TcxGroupBox;
    Shape51: TShape;
    Shape52: TShape;
    cxLabel68: TcxLabel;
    lblSosokNameA11: TcxLabel;
    cxDtStartA11: TcxDateEdit;
    cxLabel69: TcxLabel;
    cxDtEndA11: TcxDateEdit;
    btnSearchA11: TcxButton;
    btnExcelA11: TcxButton;
    btnDateA11: TcxButton;
    cxLabel70: TcxLabel;
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
    Shape54: TShape;
    Shape55: TShape;
    cxLabel72: TcxLabel;
    lblSosokNameA12: TcxLabel;
    cxDtStartA12: TcxDateEdit;
    cxLabel73: TcxLabel;
    cxDtEndA12: TcxDateEdit;
    btnSearchA12: TcxButton;
    btnExcelA12: TcxButton;
    btnDateA12: TcxButton;
    cxLabel74: TcxLabel;
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
    Shape57: TShape;
    Shape58: TShape;
    cxLabel76: TcxLabel;
    lblSosokNameA13: TcxLabel;
    cxDtStartA13: TcxDateEdit;
    cxLabel77: TcxLabel;
    cxDtEndA13: TcxDateEdit;
    btnSearchA13: TcxButton;
    btnExcelA13: TcxButton;
    btnDateA13: TcxButton;
    cxLabel78: TcxLabel;
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
    Shape60: TShape;
    Shape61: TShape;
    cxLabel80: TcxLabel;
    lblSosokNameA14: TcxLabel;
    cxDtStartA14: TcxDateEdit;
    cxLabel81: TcxLabel;
    cxDtEndA14: TcxDateEdit;
    btnSearchA14: TcxButton;
    btnExcelA14: TcxButton;
    btnDateA14: TcxButton;
    cxLabel82: TcxLabel;
    cxTeStartA14: TcxTimeEdit;
    cxTeEndA14: TcxTimeEdit;
    cxLabel86: TcxLabel;
    cxGridA14: TcxGrid;
    cxGridA14View: TcxGridDBTableView;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridA14Level: TcxGridLevel;
    cxTabSheet142: TcxTabSheet;
    Panel4: TPanel;
    Panel5: TPanel;
    Shape62: TShape;
    cxGroupBox20: TcxGroupBox;
    Shape63: TShape;
    Shape64: TShape;
    cxLabel83: TcxLabel;
    lblSosokNameA141: TcxLabel;
    btnSearchA141: TcxButton;
    btnExcelA141: TcxButton;
    cxLabel84: TcxLabel;
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
    Shape66: TShape;
    Shape67: TShape;
    cxLabel87: TcxLabel;
    lblSosokNameA15: TcxLabel;
    cxDtStartA15: TcxDateEdit;
    cxLabel88: TcxLabel;
    cxDtEndA15: TcxDateEdit;
    btnSearchA15: TcxButton;
    btnExcelA15: TcxButton;
    btnDateA15: TcxButton;
    cxLabel89: TcxLabel;
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
    Shape69: TShape;
    Shape70: TShape;
    cxLabel90: TcxLabel;
    lblSosokNameA16: TcxLabel;
    cxDtStartA16: TcxDateEdit;
    cxLabel91: TcxLabel;
    cxDtEndA16: TcxDateEdit;
    btnSearchA16: TcxButton;
    btnExcelA16: TcxButton;
    btnDateA16: TcxButton;
    cxLabel92: TcxLabel;
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
    Shape72: TShape;
    Shape73: TShape;
    Shape74: TShape;
    Shape75: TShape;
    cxLabel93: TcxLabel;
    lblSosokNameA17: TcxLabel;
    cxDtStartA17: TcxDateEdit;
    cxLabel94: TcxLabel;
    cxDtEndA17: TcxDateEdit;
    btnSearchA17: TcxButton;
    btnExcelA17: TcxButton;
    btnDateA17: TcxButton;
    cxLabel95: TcxLabel;
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
    lb_Title_List: TListBox;
    N13: TMenuItem;
		GridA7ViewColumn13: TcxGridDBColumn;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
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
    procedure btnSearchA10Click(Sender: TObject);
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
    procedure cxGridA14ViewCellDblClick(Sender: TcxCustomGridTableView;
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
    procedure cxGridA17ViewDataControllerSortingChanged(Sender: TObject);
    procedure cxGridA17ViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
		procedure GridA7ViewColumnPosChanged(Sender: TcxGridTableView;
			AColumn: TcxGridColumn);
		procedure N13Click(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;

    FUseCashMoveDefaultBranch: Boolean;
    FCashMoveDefaultBrNo,
		FCashMoveDefaultBrName: string;
		GReceiveMainText: string;

    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_recieve(slList: TStringList);
    procedure proc_BankLog2(sBrNo: string);
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
    function SelectCashMoveDefaultBranch(ABrNo: string): Boolean;
    function SelectCashMoveDefaultFamilyBranch(ABrNo: string): Boolean;
    function SelectCashMoveDefaultHdNm(ABrNo: string): Boolean;
    procedure SetCashMoveDefaultBranch(AUse: Boolean; ABrNo, ABrName: string);
    procedure proc_Init_SmsCharge;
    procedure proc_SMS_charge;
    procedure proc_SMS_Search;
    procedure proc_BankLog3(sBrNo: string);
    procedure proc_BankLog4(sBrNo, Type1, Type2, Type3, Type4: string);
    procedure proc_BankLog5(sBrNo, Type1: string);
    procedure proc_CashList2;
    procedure proc_PROFIT_FEE_SUMMARY;
    procedure proc_PROFIT_FEE_DETAIL(sBrNo: string);
    procedure proc_ORDER_CALC_SUMMARY;
    procedure proc_DRIVER_FEE_DETAIL(sBrNo: string; iCol: Integer);
    procedure proc_DRIVER_FEE_SUMMARY;
    procedure proc_DRIVER_FEE_SUMMARY_DETAIL(sBrNo: string; iCol: Integer);
    procedure proc_ORDER_CALC_MM_DETAIL(sHdNo, sBrNo, sBrNm, sIBrNo: string);
    procedure proc_ORDER_CALC_MM_SUMMARY;
    procedure proc_ORDER_CALC_CC_DETAIL(sBrNo: string);
    procedure proc_ORDER_CALC_CC_SUMMARY;
    procedure proc_COUPON_APPR;
		procedure proc_COUPON_LIST;
    procedure proc_Change_Title;

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
  xe_Query, xe_xml, xe_ACC01, xe_Flash, xe_JON09, xe_ACC02, xe_ACC03, xe_ACC04,
  xe_ACC05, xe_ACC07, xe_ACC06, xe_JON51;


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
	SetDebugeWrite('Frm_JON012.N2Click');
	try
		GS_EnvFile.EraseSection('UserHis');
		for i := 0 to GridA7View.ColumnCount - 1 do
		begin
			sTemp := GridA7View.Columns[i].DataBinding.FieldName;
			iRow := lb_Title_List.Items.IndexOf(sTemp);
			GridA7View.Columns[i].Index := iRow;
		end;
    proc_Change_Title;
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
   10 : btnExcelA11.Click;
   11 : btnExcelA12.Click;
   12 : btnExcelA13.Click;
   13 : begin
          if cxPageControl2.ActivePageIndex = 0 then btnExcelA14.Click else
          if cxPageControl2.ActivePageIndex = 1 then btnExcelA141.Click;
        end;
   14 : btnExcelA15.Click;
   15 : btnExcelA16.Click;
   16 : btnExcelA17.Click;
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
          proc_BankLog2(sBrNo);
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
  if Frm_Main.Frm_JON03[GI_JON03_LastFromIdx].Visible then
    frm_Main.proc_SlipHis(sSlip, FormatDateTime('yyyy-mm-dd', now - 2) + '090000', GI_JON03_LastFromIdx)
  else
  begin
    ShowMessage('접수창 실행 중에만 [오더상세내역보기]를 할수 있습니다');
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
    if i in [3..18] then
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
    if i in [10..15] then
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
    cxGpCOM.Caption := '  ※ 캐쉬 출금 본사 지사';

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
    cxGpCOM.Caption := '  ※ 캐쉬 출금 지사';

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

  cxLblBrView.Visible := True;
  cxLblBrView.Left := 8;
  cxLblBrView.Top := 67;
  cxLblSMView.Visible := True;
  cxLblSMView.Left := 8;
  cxLblSMView.Top := 67;
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
  cxDtStartA10.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA10.Date := cxDtStartA10.Date + 1;

  for i := 0 to cxGrid10View.ColumnCount - 1 do
  begin
    if i in [0] then
      cxGrid10View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [2..28] then
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
    if i in [4..12] then
      cxGridA11View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxGridA11View.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGridA11View.DataController.SetRecordCount(0);

  //---------------------------------------------------------------------------- A12
  cxDtStartA12.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA12.Date := cxDtStartA12.Date + 1;

  //콜운행정산
  for i := 0 to cxGridA12View.ColumnCount - 1 do
  begin
    if i in [0] then
      cxGridA12View.Columns[i].DataBinding.ValueType := 'Integer' else
    if i in [3..11] then
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
    if i in [3..11] then
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
    if i = 5 then
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
    if i in [3, 5, 6, 7] then
      cxGridA141View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxGridA141View.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGridA141View.DataController.SetRecordCount(0);

  //---------------------------------------------------------------------------- A15
  cxDtStartA15.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA15.Date := cxDtStartA15.Date + 1;

  //쿠폰승인현황
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

  //쿠폰사용현황
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

	for i := 0 to cxGridA17View.ColumnCount - 1 do
	begin
    if i in [7, 11] then
      cxGridA17View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxGridA17View.Columns[i].DataBinding.ValueType := 'String';
	end;
  cxGridA17View.DataController.SetRecordCount(0);

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
  lblSosokNameA11.Caption := GetSosokInfo;
  lblSosokNameA12.Caption := GetSosokInfo;
  lblSosokNameA13.Caption := GetSosokInfo;
  lblSosokNameA14.Caption := GetSosokInfo;
  lblSosokNameA141.Caption := GetSosokInfo;
  lblSosokNameA15.Caption := GetSosokInfo;
  lblSosokNameA16.Caption := GetSosokInfo;
  lblSosokNameA17.Caption := GetSosokInfo;
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
  cxPageControl1.Pages[9].TabVisible := TCK_USER_PER.ACC_Gain_List = '1';                                // 610.수익금리스트
  cxPageControl1.Pages[10].TabVisible := TCK_USER_PER.ACC_Gain_12 = '1';                                  // 611.수익금계산
  cxPageControl1.Pages[11].TabVisible := TCK_USER_PER.ACC_Gain_13 = '1';                                  // 612.콜운행정산
  cxPageControl1.Pages[12].TabVisible := TCK_USER_PER.ACC_Gain_14 = '1';                                  // 613.기사수수료현황
  cxPageControl1.Pages[13].TabVisible := TCK_USER_PER.ACC_Gain_15 = '1';                                  // 614.콜대행수수료
  cxPageControl1.Pages[14].TabVisible := TCK_USER_PER.ACC_COUPON_APP = '1';                               // 615.쿠폰승인현황
  cxPageControl1.Pages[15].TabVisible := TCK_USER_PER.ACC_COUPON_USE = '1';                               // 616.쿠폰사용현황
  cxPageControl1.Pages[16].TabVisible := TCK_USER_PER.ACC_CARD_PAY = '1';                                 // 617.카드결제현황

  proc_init;
end;

procedure TFrm_ACC.FormDestroy(Sender: TObject);
begin
  Frm_ACC := NIl;
end;

procedure TFrm_ACC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACC.BtnChargeA9Click(Sender: TObject);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxQry, ls_TxLoad, ls_Msg_Err, sMsg: string;
  sTemp, sParam, msg: string;
  ls_rxxml: WideString;
  i, iCnt, iIdx, iCash, iSms: Integer;
  asParam: array[1..3] of string;
  xdom: msDomDocument;
  ls_Rcrd: TStringList;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;

	if (GT_USERIF.LV = '10') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 정산관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  iCash := StrToIntDef(Stringreplace(cxLblBrCashA9.Caption, ',', '', [rfReplaceAll]), 0);
  iSms  := StrToIntDef(Stringreplace(EdtChargeCashA9.Text, ',', '', [rfReplaceAll]), 0);

  if iSms = 0 then
  begin
    GMessagebox('0원은 충전할수 없습니다.', CDMSI);
    Exit;
  end;

  if iSms > iCash then
  begin
    GMessagebox('지사캐쉬보다 SMS충전캐쉬가 크면 안됩니다.', CDMSI);
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
    sParam := sParam + StringReplace(ls_Param, 'ParamString', asParam[i],
      [rfReplaceAll]);
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
            CDMSI);
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

procedure TFrm_ACC.btnHelpA11Click(Sender: TObject);
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

procedure TFrm_ACC.btnHelpA12Click(Sender: TObject);
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

procedure TFrm_ACC.btnHelpA13Click(Sender: TObject);
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
    GMessagebox('SMS캐쉬 충전내역은 지사를 선택하셔야 합니다.', CDMSI);
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
  ls_ClientKey: string;
  s: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    if (GT_USERIF.LV = '10') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
    begin
      msg := '[%s(%s)]  지사에서 정산관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
      GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
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
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGrid10View.DataController.SetRecordCount(0);
  proc_CashList2;
end;

procedure TFrm_ACC.btnSearchA11Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGridA11View.DataController.SetRecordCount(0);
  proc_PROFIT_FEE_SUMMARY;
end;

procedure TFrm_ACC.btnSearchA12Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGridA12View.DataController.SetRecordCount(0);
  proc_ORDER_CALC_SUMMARY;
end;

procedure TFrm_ACC.btnSearchA13Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGridA13View.DataController.SetRecordCount(0);
  proc_DRIVER_FEE_SUMMARY;
end;

procedure TFrm_ACC.btnSearchA141Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGridA141View.DataController.SetRecordCount(0);
  proc_ORDER_CALC_MM_SUMMARY;
end;

procedure TFrm_ACC.btnSearchA14Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGridA14View.DataController.SetRecordCount(0);
  proc_ORDER_CALC_CC_SUMMARY;
end;

procedure TFrm_ACC.btnSearchA15Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGridA15View.DataController.SetRecordCount(0);
  proc_COUPON_APPR;
end;

procedure TFrm_ACC.btnSearchA16Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGridA16View.DataController.SetRecordCount(0);
	proc_COUPON_LIST;
end;

procedure TFrm_ACC.btnSearchA17Click(Sender: TObject);
var
	XmlData, Param, ErrMsg, sHdNo, sBrNo, msg : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd : TStringList;
	i, j, k, ErrCode, iIdx, iRow : Integer;
begin
  if fGetChk_Search_HdBrNo('카드결제현황') then Exit;

	try
		Param := '';
		if cxCbA17.ItemIndex = 0 then
			Param := Param + '' +  '│'
		else
		if cxCbA17.ItemIndex = 1 then
			Param := Param + '2' +  '│'
		else
		if cxCbA17.ItemIndex = 2 then
			Param := Param + '8' +  '│';

		if cxCb1A17.ItemIndex = 0 then
			Param := Param + '' +  '│'
		else
		if cxCb1A17.ItemIndex = 1 then
			Param := Param + '1' +  '│'
		else
		if cxCb1A17.ItemIndex = 2 then
			Param := Param + '2' +  '│';
		Param := Param + FormatDateTime('yyyymmdd', cxDtStartA17.Date) + FormatDateTime('HHNNSS', cxTeStartA17.Time) + '│';
		Param := Param + FormatDateTime('yyyymmdd', cxDtEndA17.Date) + FormatDateTime('HHNNSS', cxTeEndA17.Time) + '│';
		if GT_USERIF.LV = '60' then
		begin
			if GT_SEL_BRNO.GUBUN <> '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := '';
			end
			else if GT_SEL_BRNO.GUBUN = '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := GT_SEL_BRNO.BrNo;
			end;
		end else
		begin
			sHdNo := GT_USERIF.HD;
			sBrNo := GT_USERIF.BR;
		end;
  	Param := Param + sHdNo +  '│';
		Param := Param + sBrNo;


		if not RequestBase(GetSel05('LIST_CARD_PAY_STAT', 'MNG_CALC.LIST_CARD_PAY_STAT', '10000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('카드결제현황 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
    try
  		xdom.loadXML(XmlData);

  		lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

  		cxGridA17View.DataController.SetRecordCount(0);
  		if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
  		begin
  			Screen.Cursor := crHourGlass;
  			lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
  			ls_Rcrd := TStringList.Create;
  			cxGridA17View.BeginUpdate;
  			try
  				for I := 0 to lst_Result.length - 1 do
  				begin
  					GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
  					iRow := cxGridA17View.DataController.AppendRecord;

  					cxGridA17View.DataController.Values[iRow, 0] := ls_Rcrd[0];       //지사명
  					cxGridA17View.DataController.Values[iRow, 1] := strtocall(ls_Rcrd[1]);       //대표번호
  					cxGridA17View.DataController.Values[iRow, 2] := strtocall(ls_Rcrd[2]);;
  					cxGridA17View.DataController.Values[iRow, 3] := ls_Rcrd[3];
  					cxGridA17View.DataController.Values[iRow, 4] := ls_Rcrd[4];
  					cxGridA17View.DataController.Values[iRow, 5] := ls_Rcrd[5];
  					cxGridA17View.DataController.Values[iRow, 6] := ls_Rcrd[6];
  					cxGridA17View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[7], 0);
  					cxGridA17View.DataController.Values[iRow, 8] := ls_Rcrd[8];
  					cxGridA17View.DataController.Values[iRow, 9] := ls_Rcrd[9];
  					cxGridA17View.DataController.Values[iRow,10] := ls_Rcrd[10];
  					cxGridA17View.DataController.Values[iRow,11] := StrToIntDef(ls_Rcrd[11], 0);
  					if ls_Rcrd[12] = 'null' then
  						cxGridA17View.DataController.Values[iRow,12] := ''
  					else
  						cxGridA17View.DataController.Values[iRow,12] := ls_Rcrd[12];
  					cxGridA17View.DataController.Values[iRow,13] := ls_Rcrd[13];
  					if ls_Rcrd[14] = 'null' then
  						cxGridA17View.DataController.Values[iRow,14] := ''
  					else
  						cxGridA17View.DataController.Values[iRow,14] := ls_Rcrd[14];
  					if ls_Rcrd[15] = 'null' then
  						cxGridA17View.DataController.Values[iRow,15] := ''
  					else
  						cxGridA17View.DataController.Values[iRow,15] := ls_Rcrd[15];
  					if ls_Rcrd[16] = 'null' then
  						cxGridA17View.DataController.Values[iRow,16] := ''
  					else
  						cxGridA17View.DataController.Values[iRow,16] := ls_Rcrd[16];
  					if ls_Rcrd[17] = '()' then
  						cxGridA17View.DataController.Values[iRow,17] := ''
  					else
  						cxGridA17View.DataController.Values[iRow,17] := ls_Rcrd[17];
  					if ls_Rcrd[18] = '()' then
  						cxGridA17View.DataController.Values[iRow,18] := ''
  					else
  						cxGridA17View.DataController.Values[iRow,18] := ls_Rcrd[18];
  					cxGridA17View.DataController.Values[iRow,19] := ls_Rcrd[19];
  					cxGridA17View.DataController.Values[iRow,20] := ls_Rcrd[20];
  					cxGridA17View.DataController.Values[iRow,21] := ls_Rcrd[21];
  				end;
  //				cbbCustCNTmonth.ItemIndex := cbbCustCNTmonth.Properties.Items.IndexOf(ls_Rcrd[2]);
  			finally
  				cxGridA17View.EndUpdate;
  				ls_Rcrd.Free;
          Frm_Flash.Hide;
  				Screen.Cursor := crDefault;
  			end;
  		end;
    finally
      xdom := nil;
    end;
	except
		on e: exception do
		begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_ACC.btnSearchA1Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	GridA1View.DataController.SetRecordCount(0);
  proc_CashList;
end;

procedure TFrm_ACC.btnSearchA2Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	//검색버튼 클릭시 ...
  GridA2View.DataController.SetRecordCount(0);
  proc_BankLog;
end;

procedure TFrm_ACC.btnSearchA3Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	//검색버튼 클릭시 ...
  if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) then
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
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
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
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
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
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
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
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
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
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
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	if (GT_USERIF.LV = '10') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 정산관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
		GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;
  GridA9DBTableView.DataController.SetRecordCount(0);
  proc_SMS_Search;
end;

procedure TFrm_ACC.proc_SMS_Search;
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  sWhere: string;
  ls_rxxml: WideString;
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

procedure TFrm_ACC.chkUseCashMoveDefaultClick(Sender: TObject);
var
  BrNo, BrName: string;
begin
  if (cxcbCashMoveBrName2.ItemIndex = 0) and (TcxCheckBox(Sender).checked) then
  begin
    GMessagebox('기본 출금지사 선택을 위해 지사를 선택하셔야 합니다.', CDMSI);
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
  sTemp: string;
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
    cxBrCashMove.DataController.FocusedRowIndex := 0;

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
  sTemp: string;
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
    cxBrCashMove.DataController.FocusedRowIndex := 0;

    gfSetIndexNo(cxBrCashMove, GS_SortNoChange);
  except
    on e: exception do
    begin

    end;
  end;
end;

procedure TFrm_ACC.cxBrCashMoveBands3HeaderClick(Sender: TObject);
var
  i, iCheck: Integer;
begin
  if cxChkSel.Checked then
  begin
    cxChkSel.Checked := False;
    iCheck := 0;
  end else
  begin
    cxChkSel.Checked := True;
    iCheck := 1;
  end;
  for i := 0 to cxBrCashMove.DataController.RecordCount - 1 do
  begin
    cxBrCashMove.DataController.Values[i, 3] := IntToStr(iCheck);
  end;
end;

procedure TFrm_ACC.cxBtnOKLA8Click(Sender: TObject);
var
  iCash, iCash2: Double;
begin
  if (cxcbCashMoveBrName1.ItemIndex = 0) or (cxcbCashMoveBrName2.ItemIndex = 0) then
  begin
    GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
  begin
    if LeftStr(cxcbCashMoveBrName1.Text, Pos('(', cxcbCashMoveBrName1.Text) - 1) = LeftStr(cxcbCashMoveBrName2.Text, Pos('(', cxcbCashMoveBrName2.Text) - 1) then
    begin
      GMessagebox('출금지사와 입금지사가 동일합니다.', CDMSI);
      Exit;
    end;
  end else
  begin
    if cxcbCashMoveBrName1.ItemIndex = cxcbCashMoveBrName2.ItemIndex then
    begin
      GMessagebox('출금지사와 입금지사가 동일합니다.', CDMSI);
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
		GMessagebox('0원보다 적은 경우 이동되지 않습니다.', CDMSI);
    cxEdtLMoveAmt.SetFocus;
    Exit;
  end;

  if iCash2 > iCash then
  begin
    GMessagebox('이동할 캐쉬가 출금할 캐쉬보다 크면은 캐쉬 이동을 할 수 없습니다.'+ #13#10
      + '출금할 지사를 다시선택하던가 이동할 캐쉬를 줄이세요', CDMSI);
    Exit;
  end;
  proc_CashMove(0);
end;

procedure TFrm_ACC.cxBtnOKRA8Click(Sender: TObject);
var
  i, iCnt: Integer;
begin
	if cxcbCashMoveBrName4.ItemIndex = 0 then
  begin
    GMessagebox('지사를 선택하셔야 합니다', CDMSI);
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
    GMessagebox('입금할 지사가 없습니다.', CDMSI);
    exit;
  end;

  if (cxRBCashM.Checked) and
		(StrToIntDef(StringReplace(cxEdtRMoveAmt.Text, ',', '', [rfReplaceAll]), 0) <= 0) then
  begin
		GMessagebox('0원보다 적은 캐쉬 이동할수 없습니다.', CDMSI);
    exit;
  end;

	proc_CashMove(1);
end;

procedure TFrm_ACC.BtnCloseA11Click(Sender: TObject);
begin
  pnlHelpA11.Visible := False;
end;

procedure TFrm_ACC.BtnCloseA12Click(Sender: TObject);
begin
  pnlHelpA12.Visible := False;
end;

procedure TFrm_ACC.BtnCloseA13Click(Sender: TObject);
begin
  pnlHelpA13.Visible := False;
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
  rv_str, ls_TxQry, ls_TxLoad, ls_Msg_Err, sMsg: string;
  sTemp, sParam: string;
  ls_rxxml: WideString;
  i, iCnt, iIdx: Integer;
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
                  + '성공금액 : ' + FormatFloat('#,##0', StrToFloatDef(ls_Rcrd[1], 0.0)) + ' 원';
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
          GMessagebox('실패하였습니다.' + #13#10 + '다시 한번 시도해 보세요', CDMSI);
        end;
      end;
    end;
  finally
    Frm_Flash.Hide;
    Screen.Cursor := crDefault;
    FreeAndNil(slReceive);
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

procedure TFrm_ACC.cxcbCashMoveBrName2Click(Sender: TObject);
var
  sBrNo: string;
begin
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

procedure TFrm_ACC.cxcbCashMoveBrName4Click(Sender: TObject);
var
  sBrNo: string;
begin
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

procedure TFrm_ACC.proc_BrNameSearch(iType: Integer; sBrNo, sHdNo : string);
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  rv_str, swhere: string;
  ls_rxxml: WideString;

  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err: string;
  ls_Rcrd: TStringList;
  ls_ClientKey: string;
  s: string;
  i, iRow: Integer;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sWhere := format('WHERE BR_NO != ''%s'' AND HD_NO = ''%s'' ORDER BY BR_CASH DESC, BR_NO ASC ', [sBrNo, sHdNo])
    else
      sWhere := format('WHERE BR_NO != ''%s'' AND HD_NO = ''%s'' ORDER BY BR_CASH DESC, BR_NO ASC ', [sBrNo, GT_USERIF.HD]);

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
  ls_ClientKey: string;
  s: string;
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

procedure TFrm_ACC.cxGrid10ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iRow: Integer;
  sBrNo, sColumnName: string;
begin
  iBrNo := cxGrid10View.GetColumnByFieldName('지사코드').Index;
  iRow := cxGrid10View.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  sBrNo := cxGrid10View.DataController.Values[iRow, iBrNo];
  sColumnName := ACellViewInfo.Item.GetAlternateCaption;
  if sColumnName = '지사명' then
    proc_BankLog3(sBrNo)
  else
  if sColumnName = '기사공용캐쉬' then
  begin
    sExcelFileName := '기사공용캐쉬';
    proc_BankLog4(sBrNo,'10','20','30','BRCASHS29');
  end else
  if sColumnName = '발주수익(공용)' then
  begin
    sExcelFileName := '발주수익(공용)';
    proc_BankLog4(sBrNo,'11','21','31','BRCASHS29');
  end else
  if sColumnName = '발주수익(자체)' then
  begin
    sExcelFileName := '발주수익(자체)';
    proc_BankLog4(sBrNo,'10','20','30','BRCASHS49');
  end else
  if sColumnName = '수주지급' then
  begin
    sExcelFileName := '수주지급';
    proc_BankLog4(sBrNo,'12','22','32','BRCASHS29');
  end else
  if sColumnName = '솔루션사용료' then
  begin
    sExcelFileName := '솔루션사용료';
    proc_BankLog4(sBrNo,'40','--','--','BRCASHS29');
  end else
  if sColumnName = '보험료' then
    proc_BankLog4(sBrNo,'50','--','--','BRCASHS29')
  else if sColumnName = '취소벌금(공용)' then
  begin
    sExcelFileName := '취소벌금(공용)';
    proc_BankLog5(sBrNo, 'CANCEL');
  end else
  if sColumnName = '취소벌금(자체)' then
  begin
    sExcelFileName := '취소벌금(자체)';
    proc_BankLog5(sBrNo, 'CANCEL_WK');
  end else
  if sColumnName = '콜대행' then
  begin
    sExcelFileName := '콜대행';
    proc_BankLog4(sBrNo,'13','--','--','BRCASHS29');
  end else
  if sColumnName = '지사입금' then
  begin
    sExcelFileName := '지사입금';
    proc_BankLog5(sBrNo, 'PAY_IN');
  end else
  if sColumnName = '콜마너정산' then
  begin
    sExcelFileName := '콜마너정산';
    proc_BankLog4(sBrNo,'01','--','--','BRCASHS29');
  end else
  if sColumnName = '지사캐쉬이동' then
  begin
    sExcelFileName := '지사캐쉬이동';
    proc_BankLog4(sBrNo,'60','--','--','BRCASHS29');
  end else
  if sColumnName = 'SMS캐쉬출금' then
  begin
    sExcelFileName := 'SMS캐쉬출금';
    proc_BankLog4(sBrNo,'07','--','--','BRCASHS29');
  end else
  if sColumnName = '후불입금' then
  begin
    sExcelFileName := '후불입금';
    proc_BankLog4(sBrNo,'04','--','--','BRCASHS29');
  end else
  if sColumnName = '보정입력' then
  begin
    sExcelFileName := '보정입력';
    proc_BankLog4(sBrNo,'02','--','--','BRCASHS29');
  end else
  if sColumnName = '기사에송금' then
  begin
    sExcelFileName := '기사에송금';
    proc_BankLog4(sBrNo,'24','--','--','BRCASHS29');
  end else
  if sColumnName = '기사일비(공용)' then
  begin
    sExcelFileName := '기사일비(공용)';
    proc_BankLog5(sBrNo, 'PAY_IN_DAYFEE');
  end else
  if sColumnName = '기사일비(자체)' then
  begin
    sExcelFileName := '기사일비(자체)';
    proc_BankLog5(sBrNo, 'DAYFEE_WK');
  end else
  if sColumnName = '퇴직환불' then
  begin
    sExcelFileName := '퇴직환불';
    proc_BankLog4(sBrNo,'99','--','--','BRCASHS29');
  end else
  if sColumnName = '기타' then
  begin
    sExcelFileName := '기타';
    proc_BankLog5(sBrNo, 'ETC');
  end;
end;

procedure TFrm_ACC.cxGrid10ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.cxGrid10ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGrid10View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.cxGridA11ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iRow: Integer;
  sBrNo: string;
begin
  iBrNo := cxGridA11View.GetColumnByFieldName('지사코드').Index;
  iRow := cxGridA11View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sBrNo := cxGridA11View.DataController.Values[iRow, iBrNo];
  proc_PROFIT_FEE_DETAIL(sBrNo);
end;

procedure TFrm_ACC.cxGridA11ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.cxGridA11ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA11View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.cxGridA12ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.cxGridA12ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA12View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.cxGridA13ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iCol, iRow : Integer;
  sBrNo: string;
begin
  iBrNo := cxGridA13View.GetColumnByFieldName('지사코드').Index;
  iCol := ACellViewInfo.item.Index ;
  iRow := cxGridA13View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sBrNo := cxGridA13View.DataController.Values[iRow, iBrNo];
  if iCol = 2 then proc_DRIVER_FEE_SUMMARY_DETAIL(sBrNo, iCol)
              else proc_DRIVER_FEE_DETAIL(sBrNo, iCol);
end;

procedure TFrm_ACC.cxGridA13ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.cxGridA13ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA13View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.cxGridA141ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iHdNo, iBrNo, iIBrNo, iCol, iRow, iPos : Integer;
  sHdNo, sBrNo, sIBrNo, sBrNm : String;
begin
  iRow  := cxGridA141View.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

	iHdNo  := cxGridA141View.GetColumnByFieldName('본사정보').Index;
	iBrNo  := cxGridA141View.GetColumnByFieldName('지사정보').Index;
	iIBrNo := cxGridA141View.GetColumnByFieldName('입금지사').Index;

  sHdNo := cxGridA141View.DataController.Values[iRow, iHdNo];
  iPos := Pos('/', sHdNo);
  sHdNo := Copy(sHdNo, 1, iPos-1);

  sBrNm := cxGridA141View.DataController.Values[iRow, iBrNo];
  iPos := Pos('/', sBrNm);
  sBrNo := Copy(sBrNm, 1, iPos-1);

  sIBrNo := cxGridA141View.DataController.Values[iRow, iIBrNo];
  iPos := Pos('/', sIBrNo);
  sIBrNo := Copy(sIBrNo, 1, iPos-1);

  proc_ORDER_CALC_MM_DETAIL(sHdNo, sBrNo, sBrNm, sIBrNo);
end;

procedure TFrm_ACC.cxGridA141ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA141View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.cxGridA14ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iCol, iRow : Integer;
  sBrNo: string;
begin
	iBrNo := cxGridA14View.GetColumnByFieldName('지사코드').Index;
  iRow := cxGridA14View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sBrNo := cxGridA14View.DataController.Values[iRow, iBrNo];
  proc_ORDER_CALC_CC_DETAIL(sBrNo);
end;

procedure TFrm_ACC.cxGridA14ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACC.cxGridA14ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA14View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.cxGridA15ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA15View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.cxGridA16ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iSlip : integer;
	  sSlip : string;
    i : Integer;
    iCheck : Boolean;
begin
  iCheck := False;
  for I := 0 to 4 do
  begin
    if Frm_Main.JON03MNG[i].Use then
    begin
       iCheck := True;
    end;
  end;

  if Not iCheck then Frm_Main.procMainMenuCreateActive(200);

	iRow  := cxGridA16View.DataController.FocusedRowIndex;
	iSlip := cxGridA16View.GetColumnByFieldName('접수번호').Index;
	sSlip := cxGridA16View.DataController.Values[iRow,iSlip];
	Frm_Main.AcceptFromCreate(sSlip, cxGridA16View.DataController.Values[iRow,1], '조회', GI_JON03_LastFromIdx);
end;

procedure TFrm_ACC.cxGridA16ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA16View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.cxGridA17ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iSlip : integer;
	  sSlip : string;
    i : Integer;
    iCheck : Boolean;
begin
  iCheck := False;
  for I := 0 to 4 do
  begin
    if Frm_Main.JON03MNG[i].Use then
    begin
       iCheck := True;
    end;
  end;

  if Not iCheck then Frm_Main.procMainMenuCreateActive(200);

	iRow := cxGridA17View.DataController.FocusedRowIndex;
	iSlip    := cxGridA17View.GetColumnByFieldName('접수번호').Index;
	sSlip := cxGridA17View.DataController.Values[iRow,iSlip];
	if sSlip = '' then exit;
	Frm_Main.AcceptFromCreate(sSlip, cxGridA17View.DataController.Values[iRow,1], '조회', GI_JON03_LastFromIdx);
end;

procedure TFrm_ACC.cxGridA17ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA17View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACC.cxGridA17ViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var iRow : integer;
begin
	iRow := cxGridA17View.DataController.GetRowInfo(ARecord.Index).RecordIndex;
	AStyle  := frm_Main.cxStyle19;
	if (cxGridA17View.DataController.Values[iRow, 19] = '') or
		 (cxGridA17View.DataController.Values[iRow, 8] = '취소') or
		 (cxGridA17View.DataController.Values[iRow, 8] = '실패') or
		 (cxGridA17View.DataController.Values[iRow, 10] = '결제취소')then
		AStyle.TextColor := clRed
	else
		AStyle.TextColor := clDefault;
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

procedure TFrm_ACC.proc_BankLog;
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate, sBrNo, sHdNo: string;
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
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
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
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate, sBrNo,
    sHdNo: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if GridA3View.DataController.RecordCount > 0 then
    exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('오더정산') then Exit;

  if (GT_USERIF.LV = '60') then
    sBrNo := GT_SEL_BRNO.BrNo
  else
    sBrNo := GT_USERIF.BR;

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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'ORDERACC01';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS04';

    if (cxDtStartA3.Text = '') or (cxDtEndA3.Text = '') then
    begin
      cxDtStartA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA3.Date := cxDtStartA3.Date + 1;
    end;

    startDate := FormatDateTime('YYYYMMDD', cxDtStartA3.Date) + FormatDateTime('HHNNSS', cxTeStartA3.Time);
    endDate   := FormatDateTime('YYYYMMDD', cxDtEndA3.Date) + FormatDateTime('HHNNSS', cxTeEndA3.Time);

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
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    {
    지사코드 1
    지사코드 2
    지사코드 3
    지사코드 4
    지사코드 5
    시작날짜(YYYYMMDDHH24MISD 6
    마지막날짜(YYYYMMDDHH24MISS) 7
    지사코드 8
    지사코드 9
    }
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
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
    lst_Node.item[5].attributes.getNamedItem('Seq').Text := '6';
    lst_Node.item[5].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[6].attributes.getNamedItem('Seq').Text := '7';
    lst_Node.item[6].attributes.getNamedItem('Value').Text := endDate;
    lst_Node.item[7].attributes.getNamedItem('Seq').Text := '8';
    lst_Node.item[7].attributes.getNamedItem('Value').Text := sBrNo;
    lst_Node.item[8].attributes.getNamedItem('Seq').Text := '9';
    lst_Node.item[8].attributes.getNamedItem('Value').Text := sBrNo;

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

procedure TFrm_ACC.proc_BrNoCharge;
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate,
    sBrNo, sHdNo, sWhere: string;
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
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
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
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate,
	sBrNo, sHdNo, sWhere: string;
	ABrNo, AHdNo, Param, AName : string;
	iType, i, j: Integer;
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
		GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
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
				GMessagebox(Format('입금자 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
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
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate, sBrNo, sHdNo: string;
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
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
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
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate, sHdNo:
  string;
  iType: Integer;
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

procedure TFrm_ACC.proc_CashList2;
var
	startDate, endDate, NowDtm: string;
	iType: Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	slReceive: TStringList;
	ErrCode: integer;

	XmlData, Param, ErrMsg: string;
	ls_Rcrd: TStringList;
	I, j : Integer;
	iRow, iCol: integer;

	ls_MSG_Err : string;
begin
	Try
		NowDtm := frm_main.func_sysdate;

		if Trim(NowDtm) = '' then
		begin
			GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
			exit;
		end;

		if (length(NowDtm) <> 14) or ((StrToIntDef(copy(NowDtm, 9, 4), 0) > 2100)
			or (StrToIntDef(copy(NowDtm, 9, 4), 0) < 100)) then
		begin
			GMessagebox('오후 9시부터 오전 1시 사이에는 검색할 수 없습니다.', CDMSI);
			Exit;
		end;

		if cxGrid10View.DataController.RecordCount > 0 then
			exit;

		if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
		begin
			GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
			Exit;
		end;

		if fGetChk_Search_HdBrNo('수익금리스트') then Exit;



		if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
		begin
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
				Param := GT_SEL_BRNO.HDNO
			else
				Param := GT_USERIF.HD;
			iType := 1;
		end else
		begin
			if (GT_USERIF.LV = '60') then                               //지사
				Param := GT_SEL_BRNO.BrNo
			else
				Param := GT_USERIF.BR;
			iType := 0;
		end;

		if (cxDtStartA10.Text = '') or (cxDtEndA10.Text = '') then
		begin
			cxDtStartA10.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
			cxDtEndA10.Date := cxDtStartA10.Date + 1;
		end;
		startDate := FormatDateTime('YYYYMMDD', cxDtStartA10.Date) + FormatDateTime('HHNNSS', cxTeStartA10.Time);
		endDate   := FormatDateTime('YYYYMMDD', cxDtEndA10.Date) + FormatDateTime('HHNNSS', cxTeEndA10.Time);
		Param := Param + '│' + startDate + '│' + endDate;
	
		Screen.Cursor := crHourGlass;
		if iType = 1 then
		begin
			if not RequestBase(GetSel06('PROFITS_LIST_HEAD', 'STAT_CASHLOG.PROFITS_LIST_HEAD', '100', Param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('오더요금별통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Screen.Cursor := crDefault;
				Exit;
			end;
		end
		else if iType = 0 then
		begin
			if not RequestBase(GetSel06('PROFITS_LIST_HEAD', 'STAT_CASHLOG.PROFITS_LIST_BRCH', '100', Param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('오더요금별통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Screen.Cursor := crDefault;
				Exit;
			end;
		end;

		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then
			begin
				Screen.Cursor := crDefault;
				Exit;
			end;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
          //2009-05-26  작성자 : 임창기 (수익금리스트 메뉴 추가)
          cxGrid10View.BeginUpdate;
          cxGrid10View.DataController.SetRecordCount(0);

					if not xdom.loadXML(XmlData) then
					begin
						Exit;
					end;
					if (0 < GetXmlRecordCount(XmlData)) then
					begin
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
						ls_Rcrd := TStringList.Create;
						try
							for i := 0 to lst_Result.length - 1 do
							begin
								GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
								if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
								begin
									iRow := cxGrid10View.DataController.AppendRecord;

									// 1 Record 추가
									cxGrid10View.DataController.Values[iRow, 0] := iRow + 1;                      //No.
									cxGrid10View.DataController.Values[iRow, 1] := ls_Rcrd[1];                    //지사명
									cxGrid10View.DataController.Values[iRow, 2] := StrToIntDef(ls_Rcrd[2], 0);    //기사공용캐쉬
									cxGrid10View.DataController.Values[iRow, 3] := StrToIntDef(ls_Rcrd[3], 0);    //발주수익(공용)
									cxGrid10View.DataController.Values[iRow, 4] := StrToIntDef(ls_Rcrd[21], 0);   //발주수익(자체)
									cxGrid10View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[4], 0);    //수주지급
									//[100322] 지사완료콜수, 기사일비금액
									if ls_Rcrd.Count > 24 then
									begin
										cxGrid10View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[24], 0);    //지사완료콜수
										cxGrid10View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[25], 0);    //기사일비금액(공용)
										cxGrid10View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[26], 0);    //기사일비금액(자체)
									end;

									cxGrid10View.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[5], 0);    //솔루션사용료
									cxGrid10View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[6], 0);    //보험료
									cxGrid10View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[7], 0);    //취소벌금(공용)
									cxGrid10View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[20], 0);   //취소벌금(자체)
									cxGrid10View.DataController.Values[iRow, 13] := StrToIntDef(ls_Rcrd[8], 0);   //콜대행
									cxGrid10View.DataController.Values[iRow, 14] := StrToIntDef(ls_Rcrd[9], 0);   //지사입금
									cxGrid10View.DataController.Values[iRow, 15] := StrToIntDef(ls_Rcrd[10], 0);  //콜마너정산
									cxGrid10View.DataController.Values[iRow, 16] := StrToIntDef(ls_Rcrd[11], 0);  //지사캐쉬이동
									cxGrid10View.DataController.Values[iRow, 17] := StrToIntDef(ls_Rcrd[12], 0);  //SMS캐쉬출금
									cxGrid10View.DataController.Values[iRow, 18] := StrToIntDef(ls_Rcrd[13], 0);  //후불입금
									cxGrid10View.DataController.Values[iRow, 19] := StrToIntDef(ls_Rcrd[14], 0);  //보정입력
									cxGrid10View.DataController.Values[iRow, 20] := StrToIntDef(ls_Rcrd[15], 0);  //기사에송금
									cxGrid10View.DataController.Values[iRow, 21] := StrToIntDef(ls_Rcrd[16], 0);  //퇴직환불
									cxGrid10View.DataController.Values[iRow, 22] := StrToIntDef(ls_Rcrd[17], 0);  //기타
									cxGrid10View.DataController.Values[iRow, 23] := StrToIntDef(ls_Rcrd[18], 0);  //합계
									cxGrid10View.DataController.Values[iRow, 24] := StrToIntDef(ls_Rcrd[27], 0);  //시작캐쉬
									cxGrid10View.DataController.Values[iRow, 25] := StrToIntDef(ls_Rcrd[28], 0);  //종료캐쉬
									cxGrid10View.DataController.Values[iRow, 26] := StrToIntDef(ls_Rcrd[19], 0);  //잔액
									cxGrid10View.DataController.Values[iRow, 27] := StrToIntDef(ls_Rcrd[23], 0);  //수익금(공용+자체)
									cxGrid10View.DataController.Values[iRow, 28] := StrToIntDef(ls_Rcrd[22], 0);  //수익금(자체)
									cxGrid10View.DataController.Values[iRow, 29] := ls_Rcrd[0];                   //지사코드
								end;
							end;
						finally
							ls_Rcrd.Free;
						end;
					end;
					cxGrid10View.EndUpdate;
          frm_Main.sbar_Message.Panels[4].Text := '';
				end
				else
				begin
					GMessagebox('검색된 내용이 없습니다', CDMSI);
				end;
			end;
		finally
			Screen.Cursor := crDefault;
			xdom := Nil;
		end;
	except
		on e: Exception do
		begin
			ls_Rcrd.Free;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_ACC.proc_BankLog3(sBrNo: string);
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate: string;
  iType: Integer;
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'BANKACC02';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS03'; //지사

    if (cxDtStartA10.Text = '') or (cxDtEndA10.Text = '') then
    begin
      cxDtStartA10.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA10.Date := cxDtStartA10.Date + 1;
    end;
    startDate := StringReplace(DateToStr(cxDtStartA10.Date), '-', '',
      [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeStartA10.Time);
    endDate := StringReplace(DateToStr(cxDtEndA10.Date), '-', '', [rfReplaceAll])
      + FormatDateTime('HHNNSS', cxTeEndA10.Time);

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
    lst_Node.item[2].attributes.getNamedItem('Value').Text := sBrNo;

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

procedure TFrm_ACC.proc_BankLog4(sBrNo, Type1, Type2, Type3, Type4: string);
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate: string;
  iType: Integer;
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

    //노드를 복사해서 param을 생성한다....
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

procedure TFrm_ACC.proc_BankLog5(sBrNo, Type1: string);
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate: string;
  iType: Integer;
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

    //노드를 복사해서 param을 생성한다....
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

procedure TFrm_ACC.RB_SelHdOpt1Click(Sender: TObject);
begin
  cxBrCashMove.DataController.SetRecordCount(0);
  cxcbCashMoveBrName4.Tag := 1;
  cxcbCashMoveBrName4.ItemIndex := 0;
  cxcbCashMoveBrName4.Tag := 0;
end;

procedure TFrm_ACC.proc_ShareCallAcc;
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate, sBrNo, sHdNo, sShare: string;
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
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
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

procedure TFrm_ACC.proc_PROFIT_FEE_SUMMARY;
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList: TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I: Integer;
  sData, sType: string;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
  tCOMM_R_CNT, tCOMM_C_CNT, tORDC_CNT, tCOMM_CNT, tCProxy_CNT, tCANC_C_CNT, tCANC_R_CNT, tETC_CNT : Integer;
  tCOMM_R_AMT, tCOMM_C_AMT, tORDC_AMT, tCOMM_AMT, tCProxy_AMT, tCANC_C_AMT, tCANC_R_AMT, tETC_AMT : Integer;
begin

  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('수익금계산') then Exit;

  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=               FormatDateTime('YYYYMMDD', cxDtStartA11.Date) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA11.Date) ;//+ '090000';       //검색종료일자


  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
  begin
//    Param := Param + '│' + 'TITLE';
    Param := Param + '│' + 'HEAD';
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '│' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '│' + GT_USERIF.HD;
    Param := Param + '│' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
                                   //지사
//    Param := Param + '│' + 'TITLE';
      Param := Param + '│' + 'BRANCH';
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '│' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_SEL_BRNO.BrNo;
    end else
    begin
//      Param := Param + '│' + 'TITLE';
      Param := Param + '│' + 'BRANCH';
      Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '│' ;


	if not RequestBase(GetSel05('GET_PROFIT_FEE_SUMMARY', 'MNG_CALC.PROFIT_FEE_SUMMARY', '10000', Param), XmlData, ErrCode, ErrMsg) then
	begin
		GMessagebox(Format('수입금계산  조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
		Exit;
	end;

  cxGridA11View.DataController.SetRecordCount(0);
  StrList := TStringList.Create;
	Screen.Cursor := crHourGlass;
  try
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
      cxGridA11View.BeginUpdate;
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

          if not Check_ID(GT_USERIF.ID, StrList.Strings[0]) then
          begin
            iRow := cxGridA11View.DataController.AppendRecord;
            SetGridData(cxGridA11View, iRow,  0, StrToIntDef(IntToStr(k+1), 0));
            SetGridData(cxGridA11View, iRow,  1, StrList.Strings[0]) ;
            SetGridData(cxGridA11View, iRow,  2, StrList.Strings[1]) ;
            SetGridData(cxGridA11View, iRow,  3, '건수');
            SetGridData(cxGridA11View, iRow,  4, StrList.Strings[2]);
            tCOMM_R_CNT := tCOMM_R_CNT + StrToIntDef(StrList.Strings[2], 0);     //수수료-건수R

            SetGridData(cxGridA11View, iRow,  5, StrList.Strings[4]);
            tCOMM_C_CNT := tCOMM_C_CNT + StrToIntDef(StrList.Strings[4], 0);     //수수료-건수C

            SetGridData(cxGridA11View, iRow,  6, StrList.Strings[6]);
            tORDC_CNT := tORDC_CNT + StrToIntDef(StrList.Strings[6], 0);         //발주비-건수

            SetGridData(cxGridA11View, iRow,  7, StrList.Strings[8]);
            tCOMM_CNT := tCOMM_CNT + StrToIntDef(StrList.Strings[8], 0);         //수주비-건수

            SetGridData(cxGridA11View, iRow,  8, StrList.Strings[10]);
            tCProxy_CNT := tCProxy_CNT + StrToIntDef(StrList.Strings[10], 0);    //콜센타대행-건수

            SetGridData(cxGridA11View, iRow,  9, StrList.Strings[12]);
            tCANC_R_CNT := tCANC_R_CNT + StrToIntDef(StrList.Strings[12], 0);    //취소벌금-건수R

            SetGridData(cxGridA11View, iRow, 10, StrList.Strings[14]);
            tCANC_C_CNT := tCANC_C_CNT + StrToIntDef(StrList.Strings[14], 0);    //취소벌금-건수C

            SetGridData(cxGridA11View, iRow, 11, StrList.Strings[16]);
            tETC_CNT := tETC_CNT + StrToIntDef(StrList.Strings[16], 0);          //기타-건수

            SetGridData(cxGridA11View, iRow, 12, StrList.Strings[18]);

            iRow := cxGridA11View.DataController.AppendRecord;
            SetGridData(cxGridA11View, iRow,  0,  StrToIntDef(IntToStr(k+1), 0));
            SetGridData(cxGridA11View, iRow,  1, StrList.Strings[0]) ;
            SetGridData(cxGridA11View, iRow,  2, StrList.Strings[1]) ;
            SetGridData(cxGridA11View, iRow,  3, '금액');
            SetGridData(cxGridA11View, iRow,  4, StrList.Strings[3]);
            tCOMM_R_AMT := tCOMM_R_AMT + StrToIntDef(StrList.Strings[3], 0);     //수수료-금액R

            SetGridData(cxGridA11View, iRow,  5, StrList.Strings[5]);
            tCOMM_C_AMT := tCOMM_C_AMT + StrToIntDef(StrList.Strings[5], 0);     //수수료-금액C

            SetGridData(cxGridA11View, iRow,  6, StrList.Strings[7]);
            tORDC_AMT := tORDC_AMT + StrToIntDef(StrList.Strings[7], 0);         //발주비-금액

            SetGridData(cxGridA11View, iRow,  7, StrList.Strings[9]);
            tCOMM_AMT := tCOMM_AMT + StrToIntDef(StrList.Strings[9], 0);         //수주비-금액

            SetGridData(cxGridA11View, iRow,  8, StrList.Strings[11]);
            tCProxy_AMT := tCProxy_AMT + StrToIntDef(StrList.Strings[11], 0);    //콜센타대행-금액

            SetGridData(cxGridA11View, iRow,  9, StrList.Strings[13]);
            tCANC_R_AMT := tCANC_R_AMT + StrToIntDef(StrList.Strings[13], 0);    //취소벌금-금액R

            SetGridData(cxGridA11View, iRow, 10, StrList.Strings[15]);
            tCANC_C_AMT := tCANC_C_AMT + StrToIntDef(StrList.Strings[15], 0);    //취소벌금-금액C

            SetGridData(cxGridA11View, iRow, 11, StrList.Strings[17]);
            tETC_AMT := tETC_AMT + StrToIntDef(StrList.Strings[17], 0);          //기타-금액

            SetGridData(cxGridA11View, iRow, 12, StrList.Strings[19]);
  //          SetGridData(cxGridView2, iRow, 12, StrList.Strings[11]);
          end;
        end;

      end;
      ///////////합계추가///////////////////////////
      iRow := cxGridA11View.DataController.AppendRecord;
//      SetGridData(cxGridView2, iRow,  0, IntToStr(k+1));
      SetGridData(cxGridA11View, iRow,  0, '');
      SetGridData(cxGridA11View, iRow,  1, '');
      SetGridData(cxGridA11View, iRow,  2, '[합계]');
      SetGridData(cxGridA11View, iRow,  3, '건수');
      SetGridData(cxGridA11View, iRow,  4, FormatCash(tCOMM_R_CNT));
      SetGridData(cxGridA11View, iRow,  5, FormatCash(tCOMM_C_CNT));
      SetGridData(cxGridA11View, iRow,  6, FormatCash(tORDC_CNT));
      SetGridData(cxGridA11View, iRow,  7, FormatCash(tCOMM_CNT));
      SetGridData(cxGridA11View, iRow,  8, FormatCash(tCProxy_CNT));
      SetGridData(cxGridA11View, iRow,  9, FormatCash(tCANC_C_CNT));
      SetGridData(cxGridA11View, iRow, 10, FormatCash(tCANC_R_CNT));
      SetGridData(cxGridA11View, iRow, 11, FormatCash(tETC_CNT));
      SetGridData(cxGridA11View, iRow, 12, FormatCash(tCOMM_R_CNT + tCOMM_C_CNT + tORDC_CNT + tCOMM_CNT + tCProxy_CNT + tCANC_C_CNT + tCANC_R_CNT + tETC_CNT));

      iRow := cxGridA11View.DataController.AppendRecord;
      SetGridData(cxGridA11View, iRow,  0, '');
      SetGridData(cxGridA11View, iRow,  1, '');
      SetGridData(cxGridA11View, iRow,  2, '[합계]');
      SetGridData(cxGridA11View, iRow,  3, '금액');
      SetGridData(cxGridA11View, iRow,  4, FormatCash(tCOMM_R_AMT));
      SetGridData(cxGridA11View, iRow,  5, FormatCash(tCOMM_C_AMT));
      SetGridData(cxGridA11View, iRow,  6, FormatCash(tORDC_AMT));
      SetGridData(cxGridA11View, iRow,  7, FormatCash(tCOMM_AMT));
      SetGridData(cxGridA11View, iRow,  8, FormatCash(tCProxy_AMT));
      SetGridData(cxGridA11View, iRow,  9, FormatCash(tCANC_C_AMT));
      SetGridData(cxGridA11View, iRow, 10, FormatCash(tCANC_R_AMT));
      SetGridData(cxGridA11View, iRow, 11, FormatCash(tETC_AMT));
      SetGridData(cxGridA11View, iRow, 12, FormatCash(tCOMM_R_AMT + tCOMM_C_AMT + tORDC_AMT + tCOMM_AMT + tCProxy_AMT + tCANC_C_AMT + tCANC_R_AMT + tETC_AMT));

      cxGridA11View.endupdate;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACC.proc_PROFIT_FEE_DETAIL(sBrNo: string);
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList: TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I: Integer;
  sData, sType: string;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=                StringReplace(cxDtStartA11.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + StringReplace(cxDtEndA11.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색종료일자

  Param := Param + '│' + 'BRANCH';
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '│' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '│' + GT_USERIF.HD;
  Param := Param + '│' + sBrNo;
  Param := Param + '│' ;

  if not RequestBase(GetSel05('GET_PROFIT_FEE_DETAIL', 'MNG_CALC.PROFIT_FEE_DETAIL', '10000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('수입금계산-상세  조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;
  StrList := TStringList.Create;
  Screen.Cursor := crHourGlass;
  try
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
          GetTextSeperationEx('│', ArrSt[k], StrList);

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
          SetGridData(Frm_ACC03.Grid3View, iRow, 16, StrList.Strings[15]) ;
        end;
      end;
      Frm_ACC03.Grid3View.endupdate;
      if Frm_ACC03.Grid3View.DataController.RecordCount > 0 then
        Frm_ACC03.Show
      else
      begin
        GMessagebox('데이터가 없습니다.', CDMSI);
      end;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACC.BtnCloseClick(Sender: TObject);
begin
  pnlHelpA7.Visible := False;
end;

procedure TFrm_ACC.btnExcelA10Click(Sender: TObject);
begin
	if cxGrid10View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '수익금리스트.xls';
  Frm_Main.sgRpExcel := Format('정산>수익금리스트]%s건', [GetMoneyStr(cxGrid10View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA10;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA11Click(Sender: TObject);
begin
	if cxGridA11View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '수익금계산.xls';
  Frm_Main.sgRpExcel := Format('정산>수익금계산]%s건', [GetMoneyStr(cxGridA11View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA11;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA12Click(Sender: TObject);
begin
	if cxGridA12View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '콜운행정산.xls';
  Frm_Main.sgRpExcel := Format('정산>콜운행정산]%s건', [GetMoneyStr(cxGridA12View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA12;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA13Click(Sender: TObject);
begin
	if cxGridA13View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '기사수수료현황.xls';
  Frm_Main.sgRpExcel := Format('정산>기사수수료현황]%s건', [GetMoneyStr(cxGridA13View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA13;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA141Click(Sender: TObject);
begin
	if cxGridA141View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '콜대행수수료_월별검색.xls';
  Frm_Main.sgRpExcel := Format('정산>콜대행수수료>월별검색]%s건', [GetMoneyStr(cxGridA141View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA141;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA14Click(Sender: TObject);
begin
	if cxGridA14View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '콜대행수수료_기간검색.xls';
  Frm_Main.sgRpExcel := Format('정산>콜대행수수료>기간검색]%s건', [GetMoneyStr(cxGridA14View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA14;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA15Click(Sender: TObject);
begin
	if cxGridA15View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '쿠폰승인현황.xls';
  Frm_Main.sgRpExcel := Format('정산>쿠폰승인현황]%s건', [GetMoneyStr(cxGridA15View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA15;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA16Click(Sender: TObject);
begin
	if cxGridA16View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '쿠폰사용현황.xls';
  Frm_Main.sgRpExcel := Format('정산>쿠폰사용현황]%s건', [GetMoneyStr(cxGridA16View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA16;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA17Click(Sender: TObject);
begin
	if cxGridA17View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '카드결제현황.xls';
  Frm_Main.sgRpExcel := Format('정산>카드결제현황]%s건', [GetMoneyStr(cxGridA17View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA17;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACC.btnExcelA1Click(Sender: TObject);
begin
	if GridA1View.DataController.RecordCount = 0 then
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
  10 : begin
        AStDt := cxDtStartA11;
       	AEdDt := cxDtEndA11;
      end;
  11 : begin
        AStDt := cxDtStartA12;
       	AEdDt := cxDtEndA12;
      end;
  12 : begin
        AStDt := cxDtStartA13;
       	AEdDt := cxDtEndA13;
      end;
  13 : begin
        AStDt := cxDtStartA14;
       	AEdDt := cxDtEndA14;
      end;
  14 : begin
        AStDt := cxDtStartA15;
       	AEdDt := cxDtEndA15;
      end;
  15 : begin
        AStDt := cxDtStartA16;
       	AEdDt := cxDtEndA16;
      end;
  16 : begin
        AStDt := cxDtStartA17;
       	AEdDt := cxDtEndA17;
      end;
  end;
end;

procedure TFrm_ACC.GridA1ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
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

  proc_BankLog2(sBrNo);
end;

procedure TFrm_ACC.proc_BankLog2(sBrNo: string);
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate: string;
  iType: Integer;
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'BANKACC02';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS03'; //지사

    if (cxDtStartA1.Text = '') or (cxDtEndA1.Text = '') then
    begin
      cxDtStartA1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA1.Date := cxDtStartA1.Date + 1;
    end;
    startDate := StringReplace(DateToStr(cxDtStartA1.Date), '-', '',
      [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeStartA1.Time);
    endDate := StringReplace(DateToStr(cxDtEndA1.Date), '-', '', [rfReplaceAll])
      + FormatDateTime('HHNNSS', cxTeEndA1.Time);

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
    lst_Node.item[2].attributes.getNamedItem('Value').Text := sBrNo;

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

procedure TFrm_ACC.proc_CashList;
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate, sBrNo, sHdNo: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if GridA1View.DataController.RecordCount > 0 then
    Exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('지사캐쉬내역') then Exit;

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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'CASHACC01';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    if iType = 1 then
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS02' //본사
    else
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS01'; //지사

    if (cxDtStartA1.Text = '') or (cxDtEndA1.Text = '') then
    begin
      cxDtStartA1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA1.Date := cxDtStartA1.Date + 1;
    end;
    startDate := FormatDateTime('YYYYMMDD', cxDtStartA1.Date) + FormatDateTime('HHNNSS', cxTeStartA1.Time);
    endDate   := FormatDateTime('YYYYMMDD', cxDtEndA1.Date) + FormatDateTime('HHNNSS', cxTeEndA1.Time);

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
        if ls_ClientKey = 'CASHACC01' then //지사캐쉬내역
        begin
          GridA1View.BeginUpdate;
          GridA1View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

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
            end;
          end;
          GridA1View.EndUpdate;
          frm_Main.sbar_Message.Panels[4].Text := '';
        end else
        if ls_ClientKey = 'BANKACC02' then //지사캐쉬내역
        begin
          if ( Not Assigned(Frm_ACC01) ) Or ( Frm_ACC01 = NIl ) then Frm_ACC01 := TFrm_ACC01.Create(Nil);
          Frm_ACC01.Grid3View.BeginUpdate;
          Frm_ACC01.Grid3View.DataController.SetRecordCount(0);

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
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          Frm_ACC01.Grid3View.EndUpdate;
          if Frm_ACC01.Grid3View.DataController.RecordCount > 0 then
            Frm_ACC01.Show
          else
          begin
            GMessagebox('데이터가 없습니다.', CDMSI);
          end;
        end else
        if ls_ClientKey = 'BANKACC01' then //지사캐쉬내역
        begin
          GridA2View.BeginUpdate;
          GridA2View.DataController.SetRecordCount(0);

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
                      sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2) + ' '
                        + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                    end;
                    GridA2View.DataController.Values[iRow, 2] := sTemp;
                    GridA2View.DataController.Values[iRow, 3] := ls_Rcrd[3];
                    GridA2View.DataController.Values[iRow, 4] := ls_Rcrd[4];
                    GridA2View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[5], 0); //솔루션사용료
                    GridA2View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[6], 0); //보험료
                    GridA2View.DataController.Values[iRow, 7] := ls_Rcrd[7];                 //취소벌금(공용)
                    GridA2View.DataController.Values[iRow, 8] := ls_Rcrd[8];                 //지사입금
                  end;
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          GridA2View.EndUpdate;
          frm_Main.sbar_Message.Panels[4].Text := '';
        end else
        if ls_ClientKey = 'ORDERACC01' then
        begin
          GridA3View.BeginUpdate;
          GridA3View.DataController.SetRecordCount(0);

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
                      sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2) + ' '
                        + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                    end;
                    GridA3View.DataController.Values[iRow, 1] := sTemp;
                    GridA3View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                    //지사명
                    GridA3View.DataController.Values[iRow, 3] := ls_Rcrd[2];
                    //수주지급
                    GridA3View.DataController.Values[iRow, 4] := ls_Rcrd[3];
                    //솔루션사용료
                    GridA3View.DataController.Values[iRow, 5] := ls_Rcrd[4];
                    //보험료
                    GridA3View.DataController.Values[iRow, 6] := ls_Rcrd[5];
                    //취소벌금(공용)
                    GridA3View.DataController.Values[iRow, 7] := ls_Rcrd[6];
                    //콜대행
                    GridA3View.DataController.Values[iRow, 8] := ls_Rcrd[7];
                    //지사입금
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
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          GridA3View.EndUpdate;
        end else
        if ls_ClientKey = 'BRNOACC01' then
        begin
          GridA4View.BeginUpdate;
          GridA4View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

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
                    sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2) + ' '
                      + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
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
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          GridA4View.EndUpdate;
        end else
        if ls_ClientKey = 'WKACC01' then
        begin
          GridA5View.BeginUpdate;
          GridA5View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

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
                      sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) +
                        '-' + Copy(sTemp, 7, 2) + ' '
                        + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':'
                        + Copy(sTemp, 13, 2);
                    end;
                    GridA5View.DataController.Values[iRow, 2] := sTemp; //지사명
                    GridA5View.DataController.Values[iRow, 3] := ls_Rcrd[2];
                    //수주지급
                    GridA5View.DataController.Values[iRow, 4] := ls_Rcrd[3];
                    //솔루션사용료
                    GridA5View.DataController.Values[iRow, 5] := ls_Rcrd[4];
                    //보험료
                    GridA5View.DataController.Values[iRow, 6] :=
                      StrToIntDef(ls_Rcrd[5], 0); //취소벌금(공용)
                    GridA5View.DataController.Values[iRow, 7] :=
                      StrToIntDef(ls_Rcrd[6], 0); //콜대행
                    GridA5View.DataController.Values[iRow, 8] := ls_Rcrd[7];
                    //지사입금
                    GridA5View.DataController.Values[iRow, 9] := ls_Rcrd[8];
                    GridA5View.DataController.Values[iRow, 10] := ls_Rcrd[9];
                  end;
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          GridA5View.EndUpdate;
        end else
        if ls_ClientKey = 'WKSOLACC01' then
        begin
          GridA6View.BeginUpdate;
          GridA6View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

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
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          GridA6View.EndUpdate;
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
//								GridA7View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[6], 0);     //건수
//								GridA7View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[7], 0);     //운행요금
//								GridA7View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[8], 0);     //수수료
//								GridA7View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[9], 0);     //발주비
//								GridA7View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[12], 0);   //수수료0원 건수
//								GridA7View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[13], 0);   //수수료0원 운행요금
								
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
          GridA7View.EndUpdate;
          FreeAndNil(slBalju);
          FreeAndNil(slSuju);
          FreeAndNil(slOwner);
          FreeAndNil(slBalBrNo);
          FreeAndNil(slSuBrNo);
        end else
        if ls_ClientKey = 'BRSMSCHARGE' then
        begin
          GridA9DBTableView.BeginUpdate;

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

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
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          GridA9DBTableView.EndUpdate;
        end else
        if ls_ClientKey = 'BANKACC02' then //지사캐쉬내역
        begin
          if ( Not Assigned(Frm_ACC01) ) Or ( Frm_ACC01 = NIl ) then Frm_ACC01 := TFrm_ACC01.Create(Nil);
          Frm_ACC01.Grid3View.BeginUpdate;
          Frm_ACC01.Grid3View.DataController.SetRecordCount(0);

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
                  iRow := Frm_ACC01.Grid3View.DataController.AppendRecord;

                  Frm_ACC01.Grid3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
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
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          Frm_ACC01.Grid3View.EndUpdate;
          if Frm_ACC01.Grid3View.DataController.RecordCount > 0 then
            Frm_ACC01.Show
          else
          begin
            GMessagebox('데이터가 없습니다.', CDMSI);
          end;
        end else
        if ls_ClientKey = 'CASHACC02' then //수익금리스트
        begin
          //2009-05-26  작성자 : 임창기 (수익금리스트 메뉴 추가)
          cxGrid10View.BeginUpdate;
          cxGrid10View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

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
                    iRow := cxGrid10View.DataController.AppendRecord;

                    // 1 Record 추가
                    cxGrid10View.DataController.Values[iRow, 0] := iRow + 1;                      //No.
                    cxGrid10View.DataController.Values[iRow, 1] := ls_Rcrd[1];                    //지사명
                    cxGrid10View.DataController.Values[iRow, 2] := StrToIntDef(ls_Rcrd[2], 0);    //기사공용캐쉬
                    cxGrid10View.DataController.Values[iRow, 3] := StrToIntDef(ls_Rcrd[3], 0);    //발주수익(공용)
                    cxGrid10View.DataController.Values[iRow, 4] := StrToIntDef(ls_Rcrd[21], 0);   //발주수익(자체)
                    cxGrid10View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[4], 0);    //수주지급
                    //[100322] 지사완료콜수, 기사일비금액
                    if ls_Rcrd.Count > 24 then
                    begin
                      cxGrid10View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[24], 0);    //지사완료콜수
                      cxGrid10View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[25], 0);    //기사일비금액(공용)
                      cxGrid10View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[26], 0);    //기사일비금액(자체)
                    end;

                    cxGrid10View.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[5], 0);    //솔루션사용료
                    cxGrid10View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[6], 0);    //보험료
                    cxGrid10View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[7], 0);    //취소벌금(공용)
                    cxGrid10View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[20], 0);   //취소벌금(자체)
                    cxGrid10View.DataController.Values[iRow, 13] := StrToIntDef(ls_Rcrd[8], 0);   //콜대행
                    cxGrid10View.DataController.Values[iRow, 14] := StrToIntDef(ls_Rcrd[9], 0);   //지사입금
                    cxGrid10View.DataController.Values[iRow, 15] := StrToIntDef(ls_Rcrd[10], 0);  //콜마너정산
                    cxGrid10View.DataController.Values[iRow, 16] := StrToIntDef(ls_Rcrd[11], 0);  //지사캐쉬이동
                    cxGrid10View.DataController.Values[iRow, 17] := StrToIntDef(ls_Rcrd[12], 0);  //SMS캐쉬출금
                    cxGrid10View.DataController.Values[iRow, 18] := StrToIntDef(ls_Rcrd[13], 0);  //후불입금
                    cxGrid10View.DataController.Values[iRow, 19] := StrToIntDef(ls_Rcrd[14], 0);  //보정입력
                    cxGrid10View.DataController.Values[iRow, 20] := StrToIntDef(ls_Rcrd[15], 0);  //기사에송금
                    cxGrid10View.DataController.Values[iRow, 21] := StrToIntDef(ls_Rcrd[16], 0);  //퇴직환불
                    cxGrid10View.DataController.Values[iRow, 22] := StrToIntDef(ls_Rcrd[17], 0);  //기타
  									cxGrid10View.DataController.Values[iRow, 23] := StrToIntDef(ls_Rcrd[18], 0);  //합계
                    cxGrid10View.DataController.Values[iRow, 24] := StrToIntDef(ls_Rcrd[27], 0);  //시작캐쉬
                    cxGrid10View.DataController.Values[iRow, 25] := StrToIntDef(ls_Rcrd[28], 0);  //종료캐쉬
                    cxGrid10View.DataController.Values[iRow, 26] := StrToIntDef(ls_Rcrd[19], 0);  //잔액
                    cxGrid10View.DataController.Values[iRow, 27] := StrToIntDef(ls_Rcrd[23], 0);  //수익금(공용+자체)
                    cxGrid10View.DataController.Values[iRow, 28] := StrToIntDef(ls_Rcrd[22], 0);  //수익금(자체)
                    cxGrid10View.DataController.Values[iRow, 29] := ls_Rcrd[0];                   //지사코드
                  end;
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          cxGrid10View.EndUpdate;
          frm_Main.sbar_Message.Panels[4].Text := '';

          //2009-07-13  작성자 : 임창기 (수익금리스트 상세리스트 조회)
        end else
        if ls_ClientKey = 'BANKACC03' then //수익금리스트 (각 컬럼별 상세리스트 조회)
        begin
          if ( Not Assigned(Frm_ACC01) ) Or ( Frm_ACC01 = NIl ) then Frm_ACC01 := TFrm_ACC01.Create(Nil);
          Frm_ACC01.Grid3View.BeginUpdate;
          Frm_ACC01.Grid3View.DataController.SetRecordCount(0);

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
                  iRow := Frm_ACC01.Grid3View.DataController.AppendRecord;
                  // 1 Record 추가
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
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
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          Frm_ACC01.Grid3View.EndUpdate;
          if Frm_ACC01.Grid3View.DataController.RecordCount > 0 then
            Frm_ACC01.Show
          else
          begin
            GMessagebox('데이터가 없습니다.', CDMSI);
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

procedure TFrm_ACC.proc_ORDER_CALC_SUMMARY;
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList: TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  lst_Result: IXMLDomNodeList;
  I: Integer;
  sData, sType: string;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('콜운행정산') then Exit;

  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=                FormatDateTime('YYYYMMDD', cxDtStartA12.Date) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA12.Date) ;//+ '090000';       //검색종료일자

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
  begin
//    Param := Param + '│' + 'TITLE';
    Param := Param + '│' + 'HEAD';
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '│' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '│' + GT_USERIF.HD;
    Param := Param + '│' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
                                   //지사
//    Param := Param + '│' + 'TITLE';
      Param := Param + '│' + 'BRANCH';
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '│' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_SEL_BRNO.BrNo;
    end else
    begin
//      Param := Param + '│' + 'TITLE';
      Param := Param + '│' + 'BRANCH';
      Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '│' ;

  if not RequestBase(GetSel05('GET_ORDER_CALC_SUMMARY', 'MNG_CALC.ORDER_CALC_SUMMARY', '10000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('콜운행정산 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

  StrList := TStringList.Create;
  Screen.Cursor := crHourGlass;
  try
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
      cxGridA12View.DataController.SetRecordCount(0);
      cxGridA12View.BeginUpdate;
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

          if not Check_ID(GT_USERIF.ID, StrList.Strings[0]) then
          begin
            iRow := cxGridA12View.DataController.AppendRecord;
            SetGridData(cxGridA12View, iRow,  0, StrToIntDef(IntToStr(k+1), 0));
            SetGridData(cxGridA12View, iRow,  1, StrList.Strings[0]);
            SetGridData(cxGridA12View, iRow,  2, StrList.Strings[1] + ' (' + StrList.Strings[0] + ')');
            SetGridData(cxGridA12View, iRow,  3, StrList.Strings[2]);
            SetGridData(cxGridA12View, iRow,  4, StrList.Strings[3]);
            SetGridData(cxGridA12View, iRow,  5, StrList.Strings[4]);
            SetGridData(cxGridA12View, iRow,  6, StrList.Strings[5]);
            SetGridData(cxGridA12View, iRow,  7, StrList.Strings[6]);
            SetGridData(cxGridA12View, iRow,  8, StrList.Strings[7]);
            SetGridData(cxGridA12View, iRow,  9, StrList.Strings[8]);
            SetGridData(cxGridA12View, iRow, 10, StrList.Strings[9]);
            SetGridData(cxGridA12View, iRow, 11, StrList.Strings[10]);
          end;
        end;
      end;
    end;
    cxGridA12View.endupdate;
	finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACC.proc_DRIVER_FEE_SUMMARY;
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList, slList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, j : Integer;
  sData, sType: string;
  tmpCnt, iCnt : integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('기사수수료현황') then Exit;

  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=                FormatDateTime('YYYYMMDD', cxDtStartA13.Date) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA13.Date) ;//+ '090000';       //검색종료일자

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
  begin
//    Param := Param + '│' + 'TITLE';
    Param := Param + '│' + 'HEAD';
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '│' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '│' + GT_USERIF.HD;
    Param := Param + '│' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
                                   //지사
//    Param := Param + '│' + 'TITLE';
      Param := Param + '│' + 'BRANCH';
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '│' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_SEL_BRNO.BrNo;
    end else
    begin
//      Param := Param + '│' + 'TITLE';
      Param := Param + '│' + 'BRANCH';
      Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '│' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_DRIVER_FEE_SUMMARY', 'MNG_CALC.DRIVER_FEE_SUMMARY', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('기사수수료현황 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    cxGridA13View.DataController.SetRecordCount(0);
    cxGridA13View.BeginUpdate;
    StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
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
      if tmpCnt<1 then exit;

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
            Inc(iCnt);
          end;
        end;
      end;
    end;
    cxGridA13View.endupdate;
  finally
    StrList.Free;
    slList.Free;
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_ACC.proc_DRIVER_FEE_SUMMARY_DETAIL(sBrNo: string; iCol : Integer);
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList, slList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, j : Integer;
  sData, sType: string;
  tmpCnt, iCnt : integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=                StringReplace(cxDtStartA13.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + StringReplace(cxDtEndA13.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색종료일자

  Param := Param + '│' + 'WORKER';
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '│' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '│' + GT_USERIF.HD;
  Param := Param + '│' + sBrNo;
  Param := Param + '│' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_DRIVER_FEE_SUMMARY_DETAIL', 'MNG_CALC.DRIVER_FEE_SUMMARY', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('기사수수료현황-상세  조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    if ( Not Assigned(Frm_ACC04) ) Or ( Frm_ACC04 = NIl ) then Frm_ACC04 := TFrm_ACC04.Create(Nil);
    Frm_ACC04.Grid3View.DataController.SetRecordCount(0);
    Frm_ACC04.Grid3View.BeginUpdate;
    StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
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
      if tmpCnt<1 then exit;

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
          Inc(iCnt);
        end;
      end;
    end;
    Frm_ACC04.Grid3View.endupdate;
    if Frm_ACC04.Grid3View.DataController.RecordCount > 0 then
      Frm_ACC04.Show
    else
    begin
      GMessagebox('데이터가 없습니다.', CDMSI);
    end;
  finally
    StrList.Free;
    slList.Free;
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_ACC.proc_DRIVER_FEE_DETAIL(sBrNo: string; iCol : Integer);
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList, slList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;

  I, j : Integer;
  sData, sType: string;
  tmpCnt, iCnt : integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow : integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=                StringReplace(cxDtStartA13.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + StringReplace(cxDtEndA13.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색종료일자
  Param := Param + '│' + IntToStr(iCol-2);
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '│' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '│' + GT_USERIF.HD;
  Param := Param + '│' + sBrNo + '│' ;

  slList := TStringList.Create;
  try
  	if not RequestBasePaging(GetSel05('GET_DRIVER_FEE_DETAIL', 'MNG_CALC.DRIVER_FEE_DETAIL', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('기사수수료현황-상세1  조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    if ( Not Assigned(Frm_ACC05) ) Or ( Frm_ACC05 = NIl ) then Frm_ACC05 := TFrm_ACC05.Create(Nil);
    Frm_ACC05.Grid3View.DataController.SetRecordCount(0);
    Frm_ACC05.Grid3View.BeginUpdate;
    StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
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

      if tmpCnt<1 then exit;

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
    end;
    Frm_ACC05.Grid3View.endupdate;
    if Frm_ACC05.Grid3View.DataController.RecordCount > 0 then
      Frm_ACC05.Show
    else
    begin
      GMessagebox('데이터가 없습니다.', CDMSI);
    end;
  finally
    StrList.Free;
    SlList.Free;
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_ACC.proc_ORDER_CALC_MM_SUMMARY;
var
  msg : string;
  StrList: TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  I: Integer;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('콜대행수수료(월별검색)') then Exit;

	dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

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

  if cxSEMonth.Value < 10 then Param := Param + '│' + IntToStr(cxSEYear.Value) + '0' + IntToStr(cxSEMonth.Value) // 검색년월
                          else Param := Param + '│' + IntToStr(cxSEYear.Value) + IntToStr(cxSEMonth.Value);      // 검색년월
  Param := Param + '│' ;

  Screen.Cursor := crHourGlass;
  if not RequestBase(GetSel05('GET_CALLCENTER_CHARGE_STT', 'STT.GET_CALLCENTER_CHARGE_STT', '10000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('콜대행수수료 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Screen.Cursor := crDefault;
    Exit;
  end;

  StrList := TStringList.Create;
  try
    if Pos('<Data Count="',xmlData)>0 then
    begin
      tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
      if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
      tmpCnt:=StrToIntDef(tmpCntStr,0);
    end;
    if tmpCnt<1 then Exit;

    SetLength(ArrSt,tmpCnt);
    tmpStr:=xmlData;
    tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

    if Pos('<Result Value=',XmlData)>0 then
      tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

    if tmpCnt>0 then
    begin
      cxGridA141View.DataController.SetRecordCount(0);
      cxGridA141View.BeginUpdate;
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
      cxGridA141View.endupdate;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACC.proc_ORDER_CALC_MM_DETAIL(sHdNo, sBrNo, sBrNm, sIBrNo : string);
var  ls_TxLoad, rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  dt_sysdate2, XmlData, Param, ErrMsg: string;
  sData, sType, tmpCntStr, tmpStr: string;
  StrList, slList : TStringList;
  ErrCode, I, j, k, tmpCnt, iCnt, iRow : integer;
  ArrSt: array of string;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param := sHdNo + '│' +  sBrNo + '│' +  sIBrNo;

  if cxSEMonth.Value < 10 then Param := Param + '│' + IntToStr(cxSEYear.Value) + '0' + IntToStr(cxSEMonth.Value) // 검색년월
                          else Param := Param + '│' + IntToStr(cxSEYear.Value) + IntToStr(cxSEMonth.Value);      // 검색년월
  Param := Param + '│' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_CALLCENTER_CHARGE_DT_STT', 'STT.GET_CALLCENTER_CHARGE_DT_STT', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('콜대행수수료-상세  조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

  	StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
    if ( Not Assigned(Frm_ACC07) ) Or ( Frm_ACC07 = NIl ) then Frm_ACC07 := TFrm_ACC07.Create(Nil);
    Frm_ACC07.Grid3View.DataController.SetRecordCount(0);
    Frm_ACC07.Grid3View.BeginUpdate;

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
      if tmpCnt<1 then exit;

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
    end;
    Frm_ACC07.Grid3View.EndUpdate;
    if Frm_ACC07.Grid3View.DataController.RecordCount > 0 then
      Frm_ACC07.Show
    else
    begin
      GMessagebox('데이터가 없습니다.', CDMSI);
    end;
  finally
    StrList.Free;
    slList.Free;
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_ACC.proc_ORDER_CALC_CC_SUMMARY;
var msg : string;
  StrList: TStringList;
  ErrCode, I, k, tmpCnt, iRow : integer;
  dt_sysdate2, XmlData, Param, ErrMsg: string;
  tmpCntStr, tmpStr: string;
  ArrSt: array of string;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('콜대행수수료(기간검색)') then Exit;

	dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=                FormatDateTime('YYYYMMDD', cxDtStartA14.Date) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA14.Date) ;//+ '090000';       //검색종료일자

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
  begin
    Param := Param + '│' + 'HEAD';
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '│' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '│' + GT_USERIF.HD;
    Param := Param + '│' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
      Param := Param + '│' + 'BRANCH';
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '│' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_SEL_BRNO.BrNo;
    end else
    begin
      Param := Param + '│' + 'BRANCH';
      Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '│' ;

  Screen.Cursor := crHourGlass;
  if not RequestBase(GetSel05('GET_ORDER_CALC_CC_SUMMARY', 'MNG_CALC.ORDER_CALC_CC_SUMMARY', '10000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('콜대행수수료 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Screen.Cursor := crDefault;
    Exit;
  end;

  StrList := TStringList.Create;
  try
    if Pos('<Data Count="',xmlData)>0 then
    begin
      tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
      if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
      tmpCnt:=StrToIntDef(tmpCntStr,0);
    end;
    if tmpCnt<1 then Exit;

    SetLength(ArrSt,tmpCnt);
    tmpStr:=xmlData;
    tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

    if Pos('<Result Value=',XmlData)>0 then
      tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

    if tmpCnt>0 then
    begin
      cxGridA14View.DataController.SetRecordCount(0);
      cxGridA14View.BeginUpdate;
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

          if not Check_ID(GT_USERIF.ID, StrList.Strings[2]) then
          begin
            iRow := cxGridA14View.DataController.AppendRecord;
            SetGridData(cxGridA14View, iRow,  0, StrToInt(IntToStr(k+1)));
            SetGridData(cxGridA14View, iRow,  1, StrList.Strings[0]);
            SetGridData(cxGridA14View, iRow,  2, StrList.Strings[1]);
            SetGridData(cxGridA14View, iRow,  3, StrList.Strings[2]);
            SetGridData(cxGridA14View, iRow,  4, StrList.Strings[3]);
            SetGridData(cxGridA14View, iRow,  5, StrList.Strings[4]);
          end;
        end;
      end;
      cxGridA14View.endupdate;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACC.proc_ORDER_CALC_CC_DETAIL(sBrNo: string);
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList, slList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  I, j : Integer;
  sData, sType: string;
  tmpCnt, iCnt : integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow : integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=                StringReplace(cxDtStartA14.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + StringReplace(cxDtEndA14.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색종료일자

  Param := Param + '│' + 'BRANCH';
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '│' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '│' + GT_USERIF.HD;
  Param := Param + '│' + sBrNo;
  if (GT_USERIF.LV <> '60') then
  begin
    Param := Param + '│' + 'BRANCH';
    Param := Param + '│' + GT_USERIF.HD;
    Param := Param + '│' + GT_USERIF.BR;
  end;
  Param := Param + '│' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_ORDER_CALC_CC_DETAIL', 'MNG_CALC.ORDER_CALC_CC_DETAIL', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('콜대행수수료-상세  조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

  	StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
    if ( Not Assigned(Frm_ACC06) ) Or ( Frm_ACC06 = NIl ) then Frm_ACC06 := TFrm_ACC06.Create(Nil);
    Frm_ACC06.Grid3View.DataController.SetRecordCount(0);
    Frm_ACC06.Grid3View.BeginUpdate;

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
      if tmpCnt<1 then exit;

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
    end;
    Frm_ACC06.Grid3View.EndUpdate;
    if Frm_ACC06.Grid3View.DataController.RecordCount > 0 then
      Frm_ACC06.Show
    else
    begin
      GMessagebox('데이터가 없습니다.', CDMSI);
    end;
  finally
    StrList.Free;
    slList.Free;
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_ACC.proc_COUPON_APPR;
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
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('쿠폰승인현황') then Exit;

  Param :=               FormatDateTime('YYYYMMDD', cxDtStartA15.Date) + FormatDateTime('HHNNSS', cxTeStartA15.Time);
  Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA15.Date) + FormatDateTime('HHNNSS', cxTeEndA15.Time);

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '│' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '│' + GT_USERIF.HD;
    Param := Param + '│' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '│' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_SEL_BRNO.BrNo;
    end else
    begin
      Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '│' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_COUPON_APPR', 'PAY_COUPON.COUPON_APPR_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('쿠폰승인현황 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

		cxGridA15View.DataController.SetRecordCount(0);
		cxGridA15View.BeginUpdate;
  	StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
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
      if tmpCnt<1 then exit;

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
  				GetTextSeperationEx2('│', ArrSt[k], StrList);

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
    end;
  	cxGridA15View.endupdate;
	finally
		StrList.Free;
    slList.Free;
		Screen.Cursor := crDefault;
    Frm_Flash.Hide;
	end;
end;

procedure TFrm_ACC.proc_COUPON_LIST;
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
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('쿠폰사용현황') then Exit;

  Param :=               FormatDateTime('YYYYMMDD', cxDtStartA16.Date) + FormatDateTime('HHNNSS', cxTeStartA16.Time);
  Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA16.Date) + FormatDateTime('HHNNSS', cxTeEndA16.Time);

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '│' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '│' + GT_USERIF.HD;
    Param := Param + '│' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '│' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_SEL_BRNO.BrNo;
    end else
    begin
      Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '│' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_COUPON_USE', 'PAY_COUPON.COUPON_USE_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('쿠폰사용현황 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    cxGridA16View.DataController.SetRecordCount(0);
    cxGridA16View.BeginUpdate;
  	StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
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
      if tmpCnt<1 then exit;

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
          GetTextSeperationEx2('│', ArrSt[k], StrList);

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
    end;
    cxGridA16View.endupdate;
  finally
		StrList.Free;
    slList.Free;
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
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

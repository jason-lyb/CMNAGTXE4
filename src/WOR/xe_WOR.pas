unit xe_WOR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, System.Math, System.StrUtils,
  Dialogs, IniFiles, MSXML2_TLB, ShellAPI, cxPCdxBarPopupMenu, cxGraphics, DateUtils,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxLabel, cxCurrencyEdit,
  cxContainer, Vcl.Menus, Data.DB, cxDBData, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxClasses, cxListBox, Vcl.StdCtrls, cxRadioGroup, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxTextEdit, cxGridDBTableView, cxButtons, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, System.AnsiStrings,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxPC, dxBarBuiltInMenu, dxSkinsCore,
  dxSkinscxPCPainter, cxSpinEdit, cxSplitter, cxGridDBBandedTableView,
  cxTimeEdit, cxCheckBox, dxGDIPlusClasses, cxImage, dxDateRanges, cxCustomListBox, dxSkinOffice2010Silver,
  dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;
type
{===================================================================
 # 연합사 구조
====================================================================}
	TWK_ATTEND_MONTHLYRec = record
		BrNo,
		BrName,
		WKSb1,
		WKSb2,
		WKNm,
		DayCnt,
		DayCntPer,
		AMT	: string;
		Day : array[0..30] of String;
	end;
type
  TFrm_WOR = class(TForm)
    pmWkMenu: TPopupMenu;
    MenuItem24: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    N29: TMenuItem;
    cxPcA2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxGridA22: TcxGrid;
    sg_xls: TcxGridDBTableView;
    sg_xlsColumn1: TcxGridDBColumn;
    sg_xlsColumn2: TcxGridDBColumn;
    sg_xlsColumn3: TcxGridDBColumn;
    sg_xlsColumn4: TcxGridDBColumn;
    sg_xlsColumn5: TcxGridDBColumn;
    sg_xlsColumn6: TcxGridDBColumn;
    sg_xlsColumn7: TcxGridDBColumn;
    sg_xlsColumn8: TcxGridDBColumn;
    sg_xlsColumn9: TcxGridDBColumn;
    sg_xlsColumn10: TcxGridDBColumn;
    sg_xlsColumn11: TcxGridDBColumn;
    sg_xlsColumn12: TcxGridDBColumn;
    sg_xlsColumn13: TcxGridDBColumn;
    sg_xlsColumn14: TcxGridDBColumn;
    sg_xlsColumn15: TcxGridDBColumn;
    sg_xlsColumn16: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridA21: TcxGrid;
    cxgWkCash: TcxGridBandedTableView;
    cxgWkCashColumn1: TcxGridBandedColumn;
    cxgWkCashColumn16: TcxGridBandedColumn;
    cxgWkCashColumn2: TcxGridBandedColumn;
    cxgWkCashColumn3: TcxGridBandedColumn;
    cxgWkCashColumn4: TcxGridBandedColumn;
    cxgWkCashColumn5: TcxGridBandedColumn;
    cxgWkCashColumn6: TcxGridBandedColumn;
    cxgWkCashColumn7: TcxGridBandedColumn;
    cxgWkCashColumn8: TcxGridBandedColumn;
    cxgWkCashColumn9: TcxGridBandedColumn;
    cxgWkCashColumn10: TcxGridBandedColumn;
    cxgWkCashColumn11: TcxGridBandedColumn;
    cxgWkCashColumn12: TcxGridBandedColumn;
    cxgWkCashColumn13: TcxGridBandedColumn;
    cxgWkCashColumn14: TcxGridBandedColumn;
    cxgWkCashColumn15: TcxGridBandedColumn;
    cxGridA21Level1: TcxGridLevel;
    btnSearchA2P11: TcxButton;
    btnSearchA2P12: TcxButton;
    btnSearchA2P22: TcxButton;
    cxLabel69: TcxLabel;
    edtWkCashMemo: TcxTextEdit;
    btnSearchA2P21: TcxButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    cbWkComm: TcxComboBox;
    cbWkStatus: TcxComboBox;
    btnSearchA2: TcxButton;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel15: TcxLabel;
    lblSosokNameA2: TcxLabel;
    cxLabel58: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    edWkName: TcxTextEdit;
    cxDtEndA2: TcxDateEdit;
    monthDay: TcxRadioButton;
    oneDay: TcxRadioButton;
    cxDtStartA2: TcxDateEdit;
    threeDay: TcxRadioButton;
    weekDay: TcxRadioButton;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    Shape7: TShape;
    cxGroupBox3: TcxGroupBox;
    Shape8: TShape;
    Shape9: TShape;
    cxlsWkStatus: TcxListBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxGridA3: TcxGrid;
    cxgWkAttend: TcxGridDBBandedTableView;
    cxgWkAttendColumn1: TcxGridDBBandedColumn;
    cxgWkAttendColumn2: TcxGridDBBandedColumn;
    cxgWkAttendColumn3: TcxGridDBBandedColumn;
    cxgWkAttendColumn4: TcxGridDBBandedColumn;
    cxgWkAttendColumn5: TcxGridDBBandedColumn;
    cxgWkAttendColumn6: TcxGridDBBandedColumn;
    cxgWkAttendColumn7: TcxGridDBBandedColumn;
    cxgWkAttendColumn8: TcxGridDBBandedColumn;
    cxgWkAttendColumn9: TcxGridDBBandedColumn;
    cxgWkAttendColumn10: TcxGridDBBandedColumn;
    cxgWkAttendColumn11: TcxGridDBBandedColumn;
    cxgWkAttendColumn12: TcxGridDBBandedColumn;
    cxgWkAttendColumn13: TcxGridDBBandedColumn;
    cxgWkAttendColumn14: TcxGridDBBandedColumn;
    cxGridA3Level1: TcxGridLevel;
    cxGroupBox4: TcxGroupBox;
    btnSearchA3: TcxButton;
    lblSosokNameA3: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDtStartA3: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxDtEndA3: TcxDateEdit;
    cxLabel5: TcxLabel;
    cbSelList: TcxComboBox;
    cxEdtSelText: TcxTextEdit;
    cxLabel6: TcxLabel;
    RbButton1: TcxButton;
    Shape14: TShape;
    pop_date: TPopupMenu;
    MiToday: TMenuItem;
    MiYesterday: TMenuItem;
    MiOneWeek: TMenuItem;
    MiOneMonth: TMenuItem;
    MiStartMonth: TMenuItem;
    btnExcelA3: TcxButton;
    pmExcelA4: TPopupMenu;
    MenuItem1: TMenuItem;
    Panel1: TPanel;
    Shape15: TShape;
    cxGroupBox5: TcxGroupBox;
    lblSosokNameA4: TcxLabel;
    cxLabel14: TcxLabel;
    btnSearchA4: TcxButton;
    Panel2: TPanel;
    Shape17: TShape;
    cxGridA41: TcxGrid;
    cxgOther: TcxGridDBTableView;
    cxgOtherColumn12: TcxGridDBColumn;
    cxgOtherColumn1: TcxGridDBColumn;
    cxgOtherColumn3: TcxGridDBColumn;
    cxgOtherColumn4: TcxGridDBColumn;
    cxgOtherColumn5: TcxGridDBColumn;
    cxgOtherColumn6: TcxGridDBColumn;
    cxgOtherColumn7: TcxGridDBColumn;
    cxgOtherColumn13: TcxGridDBColumn;
    cxgOtherColumn8: TcxGridDBColumn;
    cxgOtherColumn9: TcxGridDBColumn;
    cxgOtherColumn11: TcxGridDBColumn;
    cxgOtherColumn10: TcxGridDBColumn;
    cxgOtherColumn2: TcxGridDBColumn;
    cxgOtherColumn14: TcxGridDBColumn;
    cxGridA41Level1: TcxGridLevel;
    cxGroupBox6: TcxGroupBox;
    btnShareOtherSearch: TcxButton;
    cbbShareOtherSearch: TcxComboBox;
    cxbShareCallAcc: TcxButton;
    cxbShareCallDel: TcxButton;
    edtShareOtherSearch: TcxTextEdit;
    lbl2: TcxLabel;
    cxSplitter1: TcxSplitter;
    Panel3: TPanel;
    Shape19: TShape;
    cxGridA42: TcxGrid;
    cxgOwner: TcxGridDBTableView;
    cxgOwnerColumn10: TcxGridDBColumn;
    cxgOwnerColumn1: TcxGridDBColumn;
    cxgOwnerColumn2: TcxGridDBColumn;
    cxgOwnerColumn3: TcxGridDBColumn;
    cxgOwnerColumn4: TcxGridDBColumn;
    cxgOwnerColumn5: TcxGridDBColumn;
    cxgOwnerColumn6: TcxGridDBColumn;
    cxgOwnerColumn12: TcxGridDBColumn;
    cxgOwnerColumn7: TcxGridDBColumn;
    cxgOwnerColumn8: TcxGridDBColumn;
    cxgOwnerColumn9: TcxGridDBColumn;
    cxgOwnerColumn11: TcxGridDBColumn;
    cxgOwnerColumn13: TcxGridDBColumn;
    cxGridA42Level1: TcxGridLevel;
    cxGroupBox7: TcxGroupBox;
    cbbShareOwnerSearch: TcxComboBox;
    edtShareOwnerSearch: TcxTextEdit;
    btnShareOwnerSearch: TcxButton;
    Panel4: TPanel;
    Shape21: TShape;
    cxGroupBox8: TcxGroupBox;
    btnSearchA5: TcxButton;
    lblSosokNameA5: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    edtBklName: TcxTextEdit;
    edtBklPhone: TcxTextEdit;
    edtBklSsn: TcxTextEdit;
    cxLabel17: TcxLabel;
    btnBklHistory: TcxButton;
    cxGridA5: TcxGrid;
    cxViewBlockList: TcxGridDBTableView;
    cxColViewKeyColumn1: TcxGridDBColumn;
    cxColViewKeyColumn2: TcxGridDBColumn;
    cxColViewKeyColumn3: TcxGridDBColumn;
    cxColViewKeyColumn4: TcxGridDBColumn;
    cxColViewKeyColumn5: TcxGridDBColumn;
    cxColViewKeyColumn6: TcxGridDBColumn;
    cxColViewKeyColumn7: TcxGridDBColumn;
    cxColViewKeyColumn8: TcxGridDBColumn;
    cxColViewKeyColumn9: TcxGridDBColumn;
    cxColViewKeyColumn10: TcxGridDBColumn;
    cxColViewKeyColumn11: TcxGridDBColumn;
    cxColViewBlockListColumn1: TcxGridDBColumn;
    cxColViewBlockListColumn2: TcxGridDBColumn;
    cxLevelBlackList: TcxGridLevel;
    Panel5: TPanel;
    Shape26: TShape;
    cxGroupBox9: TcxGroupBox;
    lblSosokNameA6: TcxLabel;
    cxLabel21: TcxLabel;
    cbPeakType: TcxComboBox;
    edtPeakSearch: TcxTextEdit;
    btnSearchA6: TcxButton;
    btnUpdateA6: TcxButton;
    gbxPeakBrInfo: TcxGroupBox;
    lblPeakAuthUse: TcxLabel;
    lbl31: TcxLabel;
    lbl26: TcxLabel;
    edtPeakLockSec: TcxTextEdit;
    lbl29: TcxLabel;
    edtPeakLock02: TcxTextEdit;
    lbl30: TcxLabel;
    edtPeakLock01: TcxTextEdit;
    lbl25: TcxLabel;
    lbl24: TcxLabel;
    lbl12: TcxLabel;
    lbl8: TcxLabel;
    lbl10: TcxLabel;
    lbl13: TcxLabel;
    lbl16: TcxLabel;
    edtPeakPay1: TcxTextEdit;
    edtPeakCount1: TcxTextEdit;
    edtPeakTime01: TcxTextEdit;
    edtPeakTime02: TcxTextEdit;
    lbl7: TcxLabel;
    lbl21: TcxLabel;
    lbl20: TcxLabel;
    edtPeakTime11: TcxTextEdit;
    lbl19: TcxLabel;
    edtPeakTime12: TcxTextEdit;
    edtPeakCount2: TcxTextEdit;
    edtPeakPay2: TcxTextEdit;
    lbl22: TcxLabel;
    lbl23: TcxLabel;
    gbx1: TcxGroupBox;
    lblPeakWkPassC: TcxLabel;
    lblPeakWkPassTodayC: TcxLabel;
    lblPeakWkLockC: TcxLabel;
    lblPeakWkLockTodayC: TcxLabel;
    lblPeakWkPass: TcxLabel;
    lblPeakWkPassToday: TcxLabel;
    lblPeakWkLock: TcxLabel;
    lblPeakWkLockToday: TcxLabel;
    lbl32: TcxLabel;
    lbl33: TcxLabel;
    lbl34: TcxLabel;
    lbl35: TcxLabel;
    cxGridA6: TcxGrid;
    cxGridPeakTime: TcxGridDBTableView;
    cxGridPeakTimeColumn1: TcxGridDBColumn;
    cxGridPeakTimeColumn2: TcxGridDBColumn;
    cxGridPeakTimeColumn3: TcxGridDBColumn;
    cxGridPeakTimeColumn4: TcxGridDBColumn;
    cxGridPeakTimeColumn5: TcxGridDBColumn;
    cxGridPeakTimeColumn6: TcxGridDBColumn;
    cxGridPeakTimeColumn7: TcxGridDBColumn;
    cxGridPeakTimeColumn8: TcxGridDBColumn;
    cxGridPeakTimeColumn9: TcxGridDBColumn;
    cxGridPeakTimeColumn10: TcxGridDBColumn;
    cxgrdbclmnGridPeakTimeColumn14: TcxGridDBColumn;
    cxgrdbclmnGridPeakTimeColumn15: TcxGridDBColumn;
    cxgrdbclmnGridPeakTimeColumn16: TcxGridDBColumn;
    cxgrdbclmnGridPeakTimeColumn17: TcxGridDBColumn;
    cxgrdbclmnGridPeakTimeColumn18: TcxGridDBColumn;
    cxgrdbclmnGridPeakTimeColumn19: TcxGridDBColumn;
    cxGridPeakTimeColumn11: TcxGridDBColumn;
    cxGridPeakTimeColumn12: TcxGridDBColumn;
    cxGridPeakTimeColumn13: TcxGridDBColumn;
    cxGridA6Level1: TcxGridLevel;
    Panel7: TPanel;
    Shape42: TShape;
    cxGroupBox10: TcxGroupBox;
    lblSosokNameA7: TcxLabel;
    cxSEYear: TcxSpinEdit;
    cxSEMonth: TcxSpinEdit;
    btnSearchA7: TcxButton;
    TcxButton191: TcxButton;
    btnExcelA7: TcxButton;
    pnlHelpA7: TPanel;
    cxGroupBox11: TcxGroupBox;
    cxLabel23: TcxLabel;
    BtnClose: TcxButton;
    cxgOtherColumn15: TcxGridDBColumn;
    cxgOwnerColumn14: TcxGridDBColumn;
    btnGetList: TcxButton;
    cxGrid7: TcxGrid;
    cxGrid7Level2: TcxGridLevel;
    Grid4View: TcxGridTableView;
    Grid4ViewColumn1: TcxGridColumn;
    Grid4ViewColumn2: TcxGridColumn;
    Grid4ViewColumn3: TcxGridColumn;
    Grid4ViewColumn4: TcxGridColumn;
    Grid4ViewColumn5: TcxGridColumn;
    Grid4ViewColumn6: TcxGridColumn;
    Grid4ViewColumn7: TcxGridColumn;
    Grid4ViewColumn8: TcxGridColumn;
    Grid4ViewColumn9: TcxGridColumn;
    Grid4ViewColumn10: TcxGridColumn;
    Grid4ViewColumn11: TcxGridColumn;
    Grid4ViewColumn12: TcxGridColumn;
    Grid4ViewColumn13: TcxGridColumn;
    Grid4ViewColumn14: TcxGridColumn;
    Grid4ViewColumn15: TcxGridColumn;
    Grid4ViewColumn16: TcxGridColumn;
    Grid4ViewColumn17: TcxGridColumn;
    Grid4ViewColumn18: TcxGridColumn;
    Grid4ViewColumn19: TcxGridColumn;
    Grid4ViewColumn20: TcxGridColumn;
    Grid4ViewColumn21: TcxGridColumn;
    Grid4ViewColumn22: TcxGridColumn;
    Grid4ViewColumn23: TcxGridColumn;
    Grid4ViewColumn24: TcxGridColumn;
    Grid4ViewColumn25: TcxGridColumn;
    Grid4ViewColumn26: TcxGridColumn;
    Grid4ViewColumn27: TcxGridColumn;
    Grid4ViewColumn28: TcxGridColumn;
    Grid4ViewColumn29: TcxGridColumn;
    Grid4ViewColumn30: TcxGridColumn;
    Grid4ViewColumn31: TcxGridColumn;
    Grid4ViewColumn32: TcxGridColumn;
    Grid4ViewColumn33: TcxGridColumn;
    Grid4ViewColumn34: TcxGridColumn;
    Grid4ViewColumn35: TcxGridColumn;
    Grid4ViewColumn36: TcxGridColumn;
    Grid4ViewColumn37: TcxGridColumn;
    Grid4ViewColumn38: TcxGridColumn;
    Grid4ViewColumn39: TcxGridColumn;
    cxGrid7Level3: TcxGridLevel;
    Grid4ViewWK: TcxGridTableView;
    Grid4ViewWKColumn1: TcxGridColumn;
    Grid4ViewWKColumn2: TcxGridColumn;
    Grid4ViewWKColumn3: TcxGridColumn;
    Grid4ViewWKColumn4: TcxGridColumn;
    Grid4ViewWKColumn5: TcxGridColumn;
    Grid4ViewWKColumn6: TcxGridColumn;
    Grid4ViewWKColumn7: TcxGridColumn;
    Grid4ViewWKColumn8: TcxGridColumn;
    Grid4ViewWKColumn9: TcxGridColumn;
    Grid4ViewWKColumn10: TcxGridColumn;
    Grid4ViewWKColumn11: TcxGridColumn;
    Grid4ViewWKColumn12: TcxGridColumn;
    Grid4ViewWKColumn13: TcxGridColumn;
    Grid4ViewWKColumn14: TcxGridColumn;
    Grid4ViewWKColumn15: TcxGridColumn;
    Grid4ViewWKColumn16: TcxGridColumn;
    Grid4ViewWKColumn17: TcxGridColumn;
    Grid4ViewWKColumn18: TcxGridColumn;
    Grid4ViewWKColumn19: TcxGridColumn;
    Grid4ViewWKColumn20: TcxGridColumn;
    Grid4ViewWKColumn21: TcxGridColumn;
    Grid4ViewWKColumn22: TcxGridColumn;
    Grid4ViewWKColumn23: TcxGridColumn;
    Grid4ViewWKColumn24: TcxGridColumn;
    Grid4ViewWKColumn25: TcxGridColumn;
    Grid4ViewWKColumn26: TcxGridColumn;
    Grid4ViewWKColumn27: TcxGridColumn;
    Grid4ViewWKColumn28: TcxGridColumn;
    Grid4ViewWKColumn29: TcxGridColumn;
    Grid4ViewWKColumn30: TcxGridColumn;
    Grid4ViewWKColumn31: TcxGridColumn;
    Grid4ViewWKColumn32: TcxGridColumn;
    Grid4ViewWKColumn33: TcxGridColumn;
    Grid4ViewWKColumn34: TcxGridColumn;
    Grid4ViewWKColumn35: TcxGridColumn;
    Grid4ViewWKColumn36: TcxGridColumn;
    cxTabSheet9: TcxTabSheet;
    Panel6: TPanel;
    cxGroupBox12: TcxGroupBox;
    lblSosokNameA8: TcxLabel;
    cxLabel27: TcxLabel;
    cb_For: TcxComboBox;
    edt_Search: TcxTextEdit;
    btnSearchA8: TcxButton;
    cxGroupBox14: TcxGroupBox;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    lb_Monday: TcxLabel;
    cxLabel40: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel43: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    lb_Tuesday: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    lb_Wednesday: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel60: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel62: TcxLabel;
    cxLabel63: TcxLabel;
    cxLabel64: TcxLabel;
    cxLabel65: TcxLabel;
    lb_Thursday: TcxLabel;
    cxLabel67: TcxLabel;
    cxLabel68: TcxLabel;
    cxLabel70: TcxLabel;
    cxLabel71: TcxLabel;
    cxLabel74: TcxLabel;
    cxLabel75: TcxLabel;
    cxLabel76: TcxLabel;
    cxLabel77: TcxLabel;
    cxLabel78: TcxLabel;
    cxLabel79: TcxLabel;
    cxLabel80: TcxLabel;
    lbSaturday: TcxLabel;
    cxLabel83: TcxLabel;
    cxLabel84: TcxLabel;
    cxLabel85: TcxLabel;
    cxLabel86: TcxLabel;
    lb_Sunday: TcxLabel;
    cxLabel88: TcxLabel;
    cxLabel89: TcxLabel;
    cxLabel90: TcxLabel;
    cxLabel91: TcxLabel;
    cxLabel72: TcxLabel;
    cxLabel82: TcxLabel;
    edt_MonTime1: TcxLabel;
    edt_MonTime2: TcxLabel;
    edt_MonCnt: TcxLabel;
    edt_MonAmt: TcxLabel;
    edt_TueTime1: TcxLabel;
    edt_TueTime2: TcxLabel;
    edt_TueCnt: TcxLabel;
    edt_TueAmt: TcxLabel;
    edt_ThuAmt: TcxLabel;
    edt_ThuCnt: TcxLabel;
    edt_ThuTime2: TcxLabel;
    edt_ThuTime1: TcxLabel;
    edt_WedAmt: TcxLabel;
    edt_WedCnt: TcxLabel;
    edt_WedTime2: TcxLabel;
    edt_WedTime1: TcxLabel;
    edt_FriTime1: TcxLabel;
    edt_FriTime2: TcxLabel;
    edt_FriCnt: TcxLabel;
    edt_FriAmt: TcxLabel;
    edt_SatTime1: TcxLabel;
    edt_SatTime2: TcxLabel;
    edt_SatCnt: TcxLabel;
    edt_SatAmt: TcxLabel;
    edt_SunTime1: TcxLabel;
    edt_SunTime2: TcxLabel;
    edt_SunCnt: TcxLabel;
    edt_SunAmt: TcxLabel;
    cxGroupBox15: TcxGroupBox;
    Shape56: TShape;
    Shape59: TShape;
    cxLabel46: TcxLabel;
    edt_MarkFistWkCnt: TcxLabel;
    cxLabel55: TcxLabel;
    cxLabel56: TcxLabel;
    edt_AboveWkCnt: TcxLabel;
    edt_MarkWkCnt: TcxLabel;
    cxGroupBox16: TcxGroupBox;
    cxLabel94: TcxLabel;
    cxLabel95: TcxLabel;
    cxLabel96: TcxLabel;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    edt_NowTime1: TcxTimeEdit;
    cxLabel92: TcxLabel;
    edt_NowTime2: TcxTimeEdit;
    edt_NowCnt: TcxCurrencyEdit;
    edt_NowAmt: TcxCurrencyEdit;
    btnSaveA8: TcxButton;
    cxLabel252: TcxLabel;
    cxLabel93: TcxLabel;
    cxLabel97: TcxLabel;
    cb_Mission: TcxComboBox;
    cxGrid8: TcxGrid;
    Grid8ViewWK: TcxGridDBTableView;
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
    cxGridLevel2: TcxGridLevel;
    Shape57: TShape;
    cxTabSheet10: TcxTabSheet;
    cxGridA10: TcxGrid;
    cxGridNoWork: TcxGridDBTableView;
    cxGridNoWorkColumn1: TcxGridDBColumn;
    cxGridNoWorkColumn2: TcxGridDBColumn;
    cxGridNoWorkColumn3: TcxGridDBColumn;
    cxGridNoWorkColumn4: TcxGridDBColumn;
    cxGridNoWorkColumn5: TcxGridDBColumn;
    cxGridNoWorkColumn6: TcxGridDBColumn;
    cxGridNoWorkColumn7: TcxGridDBColumn;
    cxGridNoWorkColumn8: TcxGridDBColumn;
    cxGridNoWorkColumn9: TcxGridDBColumn;
    cxGridNoWorkColumn10: TcxGridDBColumn;
    cxGridNoWorkColumn11: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGroupBox17: TcxGroupBox;
    btnSearchA10: TcxButton;
    lblSosokNameA10: TcxLabel;
    cxDtStartA10: TcxDateEdit;
    cxLabel48: TcxLabel;
    cxDtEndA10: TcxDateEdit;
    cxLabel49: TcxLabel;
    cxLabel50: TcxLabel;
    RbButton10: TcxButton;
    btnExcelA10: TcxButton;
    chkWkCounselAll10: TcxCheckBox;
    cxLabel37: TcxLabel;
    cxLabel25: TcxLabel;
    cbSelGubun: TcxComboBox;
    chkWkCounselAll: TcxCheckBox;
    cxgWkAttendColumn15: TcxGridDBBandedColumn;
    chk_Kakao: TcxCheckBox;
    pnl_KakaoBlockList: TPanel;
    Shape98: TShape;
    Panel9: TPanel;
    img_KDDrive: TcxImage;
    Panel10: TPanel;
    pmKakao: TPopupMenu;
    Menu_Kakao: TMenuItem;
    cxGrid1: TcxGrid;
    cxGridKakaoBlock: TcxGridDBTableView;
    cxGridKakaoBlockColumn0: TcxGridDBColumn;
    cxGridKakaoBlockColumn1: TcxGridDBColumn;
    cxGridKakaoBlockColumn2: TcxGridDBColumn;
    cxGridKakaoBlockColumn3: TcxGridDBColumn;
    cxGridKakaoBlockColumn4: TcxGridDBColumn;
    cxGridKakaoBlockColumn6: TcxGridDBColumn;
    cxGridKakaoBlockColumn7: TcxGridDBColumn;
    cxGridKakaoBlockColumn8: TcxGridDBColumn;
    cxGridKakaoBlockColumn10: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    sg_xlsColumn17: TcxGridDBColumn;
    sg_xlsColumn18: TcxGridDBColumn;
    cxgWkCashColumn17: TcxGridBandedColumn;
    cxgWkCashColumn18: TcxGridBandedColumn;
    cxGridKakaoBlockColumn5: TcxGridDBColumn;
    cxLabel171: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel24: TcxLabel;
    lb_Friday: TcxLabel;
    cxLabel30: TcxLabel;
    cxTabSheet11: TcxTabSheet;
    cxGroupBox13: TcxGroupBox;
    btnSearchA9: TcxButton;
    lblSosokNameA9: TcxLabel;
    cxLabel51: TcxLabel;
    cxDtStartA9: TcxDateEdit;
    cxLabel52: TcxLabel;
    cxDtEndA9: TcxDateEdit;
    cxLabel53: TcxLabel;
    cbSelList9: TcxComboBox;
    cxEdtSelText9: TcxTextEdit;
    cxLabel54: TcxLabel;
    cxButton2: TcxButton;
    btnExcelA9: TcxButton;
    cxLabel59: TcxLabel;
    Shape1: TShape;
    cxGridA9: TcxGrid;
    cxGridState: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxGrid2: TcxGrid;
    grdWk: TcxGridTableView;
    cxGridColumn1: TcxGridColumn;
    cxGridColumn2: TcxGridColumn;
    cxGridColumn3: TcxGridColumn;
    cxGridColumn4: TcxGridColumn;
    cxGridColumn5: TcxGridColumn;
    cxGridColumn6: TcxGridColumn;
    cxGridColumn7: TcxGridColumn;
    cxGridColumn8: TcxGridColumn;
    cxGridColumn9: TcxGridColumn;
    cxGridColumn10: TcxGridColumn;
    cxGridColumn11: TcxGridColumn;
    cxGridColumn12: TcxGridColumn;
    cxGridColumn13: TcxGridColumn;
    cxGridColumn14: TcxGridColumn;
    cxGridColumn15: TcxGridColumn;
    cxGridColumn16: TcxGridColumn;
    cxGridColumn17: TcxGridColumn;
    cxGridColumn18: TcxGridColumn;
    cxGridColumn19: TcxGridColumn;
    cxGridColumn20: TcxGridColumn;
    cxGridColumn21: TcxGridColumn;
    cxGridColumn22: TcxGridColumn;
    cxGridColumn23: TcxGridColumn;
    cxGridColumn24: TcxGridColumn;
    cxGridColumn25: TcxGridColumn;
    cxGridColumn26: TcxGridColumn;
    cxGridColumn27: TcxGridColumn;
    cxGridColumn28: TcxGridColumn;
    cxGridColumn29: TcxGridColumn;
    cxGridColumn30: TcxGridColumn;
    cxGridColumn31: TcxGridColumn;
    cxGridColumn32: TcxGridColumn;
    cxGridColumn33: TcxGridColumn;
    cxGridColumn34: TcxGridColumn;
    cxGridColumn35: TcxGridColumn;
    cxGridColumn36: TcxGridColumn;
    cxGridColumn37: TcxGridColumn;
    cxGridColumn38: TcxGridColumn;
    cxGridColumn39: TcxGridColumn;
    cxGridTableView2: TcxGridTableView;
    cxGridColumn40: TcxGridColumn;
    cxGridColumn41: TcxGridColumn;
    cxGridColumn42: TcxGridColumn;
    cxGridColumn43: TcxGridColumn;
    cxGridColumn44: TcxGridColumn;
    cxGridColumn45: TcxGridColumn;
    cxGridColumn46: TcxGridColumn;
    cxGridColumn47: TcxGridColumn;
    cxGridColumn48: TcxGridColumn;
    cxGridColumn49: TcxGridColumn;
    cxGridColumn50: TcxGridColumn;
    cxGridColumn51: TcxGridColumn;
    cxGridColumn52: TcxGridColumn;
    cxGridColumn53: TcxGridColumn;
    cxGridColumn54: TcxGridColumn;
    cxGridColumn55: TcxGridColumn;
    cxGridColumn56: TcxGridColumn;
    cxGridColumn57: TcxGridColumn;
    cxGridColumn58: TcxGridColumn;
    cxGridColumn59: TcxGridColumn;
    cxGridColumn60: TcxGridColumn;
    cxGridColumn61: TcxGridColumn;
    cxGridColumn62: TcxGridColumn;
    cxGridColumn63: TcxGridColumn;
    cxGridColumn64: TcxGridColumn;
    cxGridColumn65: TcxGridColumn;
    cxGridColumn66: TcxGridColumn;
    cxGridColumn67: TcxGridColumn;
    cxGridColumn68: TcxGridColumn;
    cxGridColumn69: TcxGridColumn;
    cxGridColumn70: TcxGridColumn;
    cxGridColumn71: TcxGridColumn;
    cxGridColumn72: TcxGridColumn;
    cxGridColumn73: TcxGridColumn;
    cxGridColumn74: TcxGridColumn;
    cxGridColumn75: TcxGridColumn;
    cxGridLevel6: TcxGridLevel;
    Grid4ViewWKColumn37: TcxGridColumn;
    cxgWkCashColumn19: TcxGridBandedColumn;
    sg_xlsColumn19: TcxGridDBColumn;

    procedure oneDayClick(Sender: TObject);
    procedure threeDayClick(Sender: TObject);
    procedure weekDayClick(Sender: TObject);
    procedure monthDayClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSearchA2Click(Sender: TObject);
    procedure btnSearchA2P11Click(Sender: TObject);
    procedure cxgWkCashBands0HeaderClick(Sender: TObject);
    procedure cxgWkCashBands2HeaderClick(Sender: TObject);
    procedure cxgWkCashBands3HeaderClick(Sender: TObject);
    procedure cxgWkCashBands4HeaderClick(Sender: TObject);
    procedure cxgWkCashBands5HeaderClick(Sender: TObject);
    procedure cxgWkCashBands6HeaderClick(Sender: TObject);
    procedure cxgWkCashBands8HeaderClick(Sender: TObject);
    procedure cxgWkCashBands9HeaderClick(Sender: TObject);
    procedure cxgWkCashBands11HeaderClick(Sender: TObject);
    procedure cxgWkCashBands12HeaderClick(Sender: TObject);
    procedure cxgWkCashBands13HeaderClick(Sender: TObject);
    procedure cxgWkCashBands15HeaderClick(Sender: TObject);
    procedure cxgWkCashBands16HeaderClick(Sender: TObject);
    procedure cxgWkCashBands17HeaderClick(Sender: TObject);
    procedure cxgWkCashBands18HeaderClick(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure pmWkMenuPopup(Sender: TObject);
    procedure cxPcA2Change(Sender: TObject);
    procedure sg_xlsColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormDestroy(Sender: TObject);
    procedure cxgWkCashCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSearchA2P12Click(Sender: TObject);
    procedure sg_xlsDataControllerSortingChanged(Sender: TObject);
    procedure MiTodayClick(Sender: TObject);
    procedure MiYesterdayClick(Sender: TObject);
    procedure MiOneWeekClick(Sender: TObject);
    procedure MiOneMonthClick(Sender: TObject);
    procedure MiStartMonthClick(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
    procedure btnExcelA3Click(Sender: TObject);
    procedure cxgWkAttendCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgWkAttendBands0HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands1HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands2HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands3HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands5HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands6HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands8HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands9HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands11HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands12HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands13HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands15HeaderClick(Sender: TObject);
    procedure cxgWkAttendBands16HeaderClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure btnSearchA4Click(Sender: TObject);
    procedure cbbShareOtherSearchPropertiesChange(Sender: TObject);
    procedure cbbShareOwnerSearchPropertiesChange(Sender: TObject);
    procedure btnShareOtherSearchClick(Sender: TObject);
    procedure cxbShareCallAccClick(Sender: TObject);
    procedure cxbShareCallDelClick(Sender: TObject);
    procedure btnShareOwnerSearchClick(Sender: TObject);
    procedure cxgOtherColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxgOwnerColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxgOwnerDataControllerSortingChanged(Sender: TObject);
    procedure cxgOtherDataControllerSortingChanged(Sender: TObject);
    procedure btnBklHistoryClick(Sender: TObject);
    procedure btnSearchA5Click(Sender: TObject);
    procedure cxViewBlockListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSearchA6Click(Sender: TObject);
    procedure btnUpdateA6Click(Sender: TObject);
    procedure cxGridPeakTimeCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridPeakTimeColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridPeakTimeDataControllerSortingChanged(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure btnExcelA7Click(Sender: TObject);
    procedure cxGroupBox11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TcxButton191Click(Sender: TObject);
    procedure btnSearchA7Click(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure btnGetListClick(Sender: TObject);
    procedure edWkNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Grid4ViewDataControllerDetailExpanded(
      ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure Grid4ViewColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure Grid4ViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure Grid4ViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure Grid4ViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems32GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure Grid4ViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems33GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure Grid4ViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems34GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure btnSearchA8Click(Sender: TObject);
    procedure btnSaveA8Click(Sender: TObject);
    procedure Grid8ViewWKCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edt_SearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridNoWorkCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSearchA10Click(Sender: TObject);
    procedure btnExcelA10Click(Sender: TObject);
    procedure chkWkCounselAll10Click(Sender: TObject);
    procedure cbSelGubunPropertiesChange(Sender: TObject);
    procedure chkWkCounselAllClick(Sender: TObject);
    procedure cxgWkAttendCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridNoWorkDataControllerSortingChanged(Sender: TObject);
    procedure cxGridNoWorkColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure chk_KakaoPropertiesChange(Sender: TObject);
		procedure Menu_KakaoClick(Sender: TObject);
    procedure pmKakaoPopup(Sender: TObject);
    procedure edWkNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnSearchA9Click(Sender: TObject);
    procedure cxGridStateColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure cxGridStateDataControllerSortingChanged(Sender: TObject);
    procedure btnExcelA9Click(Sender: TObject);
    procedure cxEdtSelText9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdWkTcxGridDataControllerTcxDataSummaryFooterSummaryItems1GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure grdWkTcxGridDataControllerTcxDataSummaryFooterSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure grdWkTcxGridDataControllerTcxDataSummaryFooterSummaryItems32GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure grdWkTcxGridDataControllerTcxDataSummaryFooterSummaryItems33GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure grdWkTcxGridDataControllerTcxDataSummaryFooterSummaryItems34GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure grdWkTcxGridDataControllerTcxDataSummaryDefaultGroupSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure grdWkTcxGridDataControllerTcxDataSummaryDefaultGroupSummaryItems1GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure grdWkDataControllerSummaryDefaultGroupSummaryItemsSummary(ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
      var OutArguments: TcxSummaryEventOutArguments);

  private
    { Private declarations }
    FExcelDownCash, FExcelDownBeach, FExcelDownBlock : string;
    slCommissionCd: TStringList;

    AIndex : Integer;

    FShareBlockXml: TStringList;
    FShareBlockXml2: TStringList;

		FWKInfos: array of TWK_ATTEND_MONTHLYRec;

		gStIdx : integer; //배열 시작 idx
		gArrCnt : array [0..30] of Integer; //지사당 일자별 출근기사 합계 배열
		gGroupArrCnt : array [0..30] of Integer; //지사당 일자별 출근기사 합계 배열
		gATTENT_WK, gATTENT_Day, gtUES_AMT : Integer; // 지사별 기사총원, 출근일수, 사용료 합계

    aIdx : Integer;

		gWkAttend_Type : string; //기사배차현황 타입 Grid : 그리드에 넣음, Structure : 구조체에 넣음
		gWkAttendBaecha : TStringList;
    function func_Search_Phone(sWkSabun: string): string;
    procedure proc_Wk_Tel(sWkPhone: String; iGubun : Integer);
    procedure proc_WkCommissionSearch;
    procedure proc_FamilyBrChange;
    procedure proc_WkAttend;
    procedure proc_WkAttend_Search;
    procedure proc_DelBlock;
    procedure DispShareBlockList(AView: TcxGridDBTableView; AList: TStringList; AKeyWord: string = ''; ASearchValue: string = '');
		procedure proc_NotShare;
    procedure RequestSharedBlock(AMyBranch: Boolean);
    procedure DisplayBlackList(AXmlData: string);
    procedure ShowBlacklistHistory(APhone, ASsn: string);
		procedure proc_ATTENT_MONTHLY;
		procedure proc_AddWK_ATTENT(AHDNO, ABRNO : string);

		procedure proc_Above_Init;
		procedure proc_AboveOrderWKList;
		procedure proc_AboveOrderSHARE_INFO;
		procedure proc_Set_AboveToday;
		procedure proc_WKNotWork;
		procedure proc_NoWorkerList; //미출근현황

		procedure proc_KakaoNotShare; //카카오기사 공유콜차단 리스트
		procedure proc_KakaoUnBlock(AGubun, ABlock, ACode, AWkCSabun:string);
	public
		{ Public declarations }
		sWkSearchBrNo: string;

		gsColNM : string; //고용보험료항목 선택여부 확인
		procedure proc_search_wk_cash(iType: Integer = 1);
    procedure proc_init;
    procedure proc_BranchChange;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
    function func_BrTelSearch(sBrNo: string): string;
    procedure proc_peakTimeSearch;
  end;

var
  Frm_WOR: TFrm_WOR;

implementation

{$R *.dfm}

uses xe_GNL, xe_xml, xe_Func, xe_Dm, xe_Msg, Main, xe_gnl3, xe_Query, xe_gnl2,
  xe_Lib, xe_SMS01, xe_COM02, xe_WOR03, xe_WOR07, xe_WOR01, xe_Flash, xe_WOR04,
  xe_WOR09, xe_packet, xe_JON51, xe_SearchWord, xe_JON32;

procedure TFrm_WOR.proc_search_wk_cash(iType: Integer = 1);
var
  sBrNo, sHdNo, WkStatus, CmsGrp, KeyWord, FromDate, ToDate: string;
  iRow: Integer;
  ls_TxLoad, sNode: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
    begin
      GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
      Exit;
    end;

    if fGetChk_Search_HdBrNo('기사캐쉬관리') then Exit;

    //////////////////////////////////////////////////////////////////////////////
    // 기사>기사현황]1000건/콜센터(통합)/기사상태:전체/기사검색:김현수
    FExcelDownCash := Format('%s/기간:%s~%s/상태:%s/수수료그룹:%s%s',
      [
          GetSelBrInfo
        , cxDtStartA2.Text, cxDtEndA2.Text
        , cbWkStatus.Text
        , cbWkComm.Text
        , IfThen(edWkName.Text = '', '', Format('/이름,사번:%s', [edWkName.Text]))
      ]);
    //////////////////////////////////////////////////////////////////////////////

    // 1달 조회 조건이라면,,
    case iType of
      1, 2:
        begin
          if cxPcA2.ActivePageIndex = 0 then
          begin
            if cxgWkCash.DataController.RecordCount > 0 then
              Exit;
          end else
          if cxPcA2.ActivePageIndex = 1 then
          begin
            if sg_xls.DataController.RecordCount > 0 then
              Exit;
          end;

          if cxPcA2.ActivePageIndex = 1 then
          begin
            if ((cxDtEndA2.Date - cxDtStartA2.Date) > 10) and
              (Length(Trim(edWkName.Text)) < 1) then
            begin
              GMessagebox('세부내역은 조회할 기사이름(사번) 없이 10일이상 조회 할 수 없습니다.', CDMSE);
              cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 10;
              cxDtEndA2.Date := cxDtStartA2.Date + 10;
              Exit;
            end;
          end else
          if cxPcA2.ActivePageIndex = 0 then
          begin
            if ((cxDtEndA2.Date - cxDtStartA2.Date) > 30) then
            begin
              if Length(Trim(edWkName.Text)) < 1 then
              begin
                GMessagebox('한달이상 검색은 조회할 기사이름(사번)을 반드시 입력 하여야 합니다.', CDMSE);
                edWkName.SetFocus;
                cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 29;
                cxDtEndA2.Date := cxDtStartA2.Date + 29;
                Exit;
              end;
            end;
          end;

					ls_rxxml := GTx_UnitXmlLoad('C023N1.xml');
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
            lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR00' + IntToStr(iType + 2);

            if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then
            begin
              sBrNo := '';
					  	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					  		sHdNo := GT_SEL_BRNO.HDNO
					  	else
                sHdNo := GT_USERIF.HD;
            end else
            begin
					  	if (GT_USERIF.LV = '60') then
                sBrNo := GT_SEL_BRNO.BrNo
              else
                sBrNo := GT_USERIF.BR;
              sHdNo := '';
            end;
            if cbWkStatus.ItemIndex > 0 then
              WkStatus := cxlsWkStatus.Items.Strings[cbWkStatus.ItemIndex];
            if cbWkComm.ItemIndex > -1 then
              CmsGrp := slCommissionCd.Strings[cbWkComm.ItemIndex] else
              CmsGrp := '';
            KeyWord := Param_Filtering(edWkName.Text);

            FromDate  := formatdatetime('yyyymmdd', cxDtStartA2.Date) + '09';
            ToDate    := formatdatetime('yyyymmdd', cxDtEndA2.Date) + '09';
            sNode     := '/cdms/Service/Data/Search';

            lst_Node := xdom.documentElement.selectNodes(sNode);
            lst_Node.item[0].attributes.getNamedItem('BrNo').Text := sBrNo;
            lst_Node.item[0].attributes.getNamedItem('WkStatus').Text := WkStatus;
            lst_Node.item[0].attributes.getNamedItem('CmsGrp').Text := CmsGrp;
            lst_Node.item[0].attributes.getNamedItem('Keyword').Text := KeyWord;
            lst_Node.item[0].attributes.getNamedItem('FromDate').Text := FromDate;
            lst_Node.item[0].attributes.getNamedItem('ToDate').Text := ToDate;
            lst_Node.item[0].attributes.getNamedItem('Type').Text := IntToStr(iType);
            lst_Node.item[0].attributes.getNamedItem('HdNo').Text := sHdNo;

            ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;
          finally
            xdom := Nil;
          end;
        end;
      3:
        begin
          iRow := cxgWkCash.DataController.FocusedRecordIndex;
          if iRow < 0 then
          begin
            GMessagebox('선택된 기사가 없습니다.', CDMSE);
            Exit;
          end;

          WkStatus := cxgWkCash.DataController.Values[iRow, 3];
          sBrNo := cxgWkCash.DataController.Values[iRow, 1];
          FromDate := formatdatetime('yyyymmdd', cxDtStartA2.Date) + '09';
          ToDate := formatdatetime('yyyymmdd', cxDtEndA2.Date) + '09';

          ls_TxLoad := GTx_UnitXmlLoad('C024.XML');
          ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR005', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString', sBrNo, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', WkStatus, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'FromDateString', FromDate, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ToDateString', ToDate, [rfReplaceAll]);
        end;
    end;

    Screen.Cursor := crHourGlass;
    slReceive := TStringList.Create;
    try
      btnSearchA2.Enabled := False;
      btnSearchA2P11.Enabled := False;
      btnSearchA2P21.Enabled := False;
      frm_Main.proc_SocketWork(False);
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
      begin
        Application.ProcessMessages;
				proc_recieve(slReceive);
      end;
		finally
      btnSearchA2.Enabled := True;
      btnSearchA2P11.Enabled := True;
      btnSearchA2P21.Enabled := True;
      frm_Main.proc_SocketWork(True);
      FreeAndNil(slReceive);
      Screen.Cursor := crDefault;
      Frm_Flash.Hide;
    end;
  except
  end;
end;
{
procedure TFrm_WOR.proc_search_wk_cash(iType: Integer = 1);
var
  ls_TxLoad, sBrNo, sHdNo, sTmp, sBrName : string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  slReceive, slList: TStringList;
  ErrCode: integer;

	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	i, iTmp, j, iRow, iBrNo, iSum, iCash : Integer;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd : TStringList;

  WkStatus, CmsGrp, KeyWord, FromDate, ToDate: string;
  lst_Node: IXMLDOMNodeList;
begin
  try
    if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
    begin
      GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
      Exit;
    end;

    if fGetChk_Search_HdBrNo('기사캐쉬관리') then Exit;

    //////////////////////////////////////////////////////////////////////////////
    // 기사>기사현황]1000건/콜센터(통합)/기사상태:전체/기사검색:김현수
    FExcelDownCash := Format('%s/기간:%s~%s/상태:%s/수수료그룹:%s%s',
      [
          GetSelBrInfo
        , cxDtStartA2.Text, cxDtEndA2.Text
        , cbWkStatus.Text
        , cbWkComm.Text
        , IfThen(edWkName.Text = '', '', Format('/이름,사번:%s', [edWkName.Text]))
      ]);
    //////////////////////////////////////////////////////////////////////////////

    // 1달 조회 조건이라면,,
    
    try
      slList := TStringList.Create;
      case iType of
        1, 2:
          begin
            if cxPcA2.ActivePageIndex = 0 then
            begin
              if cxgWkCash.DataController.RecordCount > 0 then
                Exit;
            end else
            if cxPcA2.ActivePageIndex = 1 then
            begin
              if sg_xls.DataController.RecordCount > 0 then
                Exit;
            end;

            if cxPcA2.ActivePageIndex = 1 then
            begin
              if ((cxDtEndA2.Date - cxDtStartA2.Date) > 10) and
                (Length(Trim(edWkName.Text)) < 1) then
              begin
                GMessagebox('세부내역은 조회할 기사이름(사번) 없이 10일이상 조회 할 수 없습니다.', CDMSE);
                cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 10;
                cxDtEndA2.Date := cxDtStartA2.Date + 10;
          			Screen.Cursor := crDefault;
                Exit;
              end;
            end else
            if cxPcA2.ActivePageIndex = 0 then
            begin
              if ((cxDtEndA2.Date - cxDtStartA2.Date) > 30) then
              begin
                if Length(Trim(edWkName.Text)) < 1 then
                begin
                  GMessagebox('한달이상 검색은 조회할 기사이름(사번)을 반드시 입력 하여야 합니다.', CDMSE);
                  edWkName.SetFocus;
                  cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 29;
                  cxDtEndA2.Date := cxDtStartA2.Date + 29;
                  Exit;
                end;
              end;
            end;

            btnSearchA2.Enabled := False;
            btnSearchA2P11.Enabled := False;
            Screen.Cursor := crHourGlass;

            if iType = 1 then
            begin
              if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then
              begin
                sBrNo := '';
                if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
                  sHdNo := GT_SEL_BRNO.HDNO
                else
                  sHdNo := GT_USERIF.HD;
              end else
              begin
                if (GT_USERIF.LV = '60') then
                  sBrNo := GT_SEL_BRNO.BrNo
                else
                  sBrNo := GT_USERIF.BR;
                sHdNo := '';
              end;
              if cbWkStatus.ItemIndex > 0 then
                WkStatus := cxlsWkStatus.Items.Strings[cbWkStatus.ItemIndex];
              CmsGrp := slCommissionCd.Strings[cbWkComm.ItemIndex];
              KeyWord := Param_Filtering(edWkName.Text);

              Param := sHdNo + '│' + sBrNo + '│' + WkStatus + '│' + CmsGrp + '│' + KeyWord;
              Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtStartA2.Date)+'09';
              Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA2.Date  )+'09';
              Param := Param + '│' + IntToStr(iType);
              
              if not RequestBasePaging(GetSel06('GET_LIST_CASH_SUMMARY', 'MNG_WK_CASH.GET_LIST_CASH_SUMMARY', '1000', Param), slList, ErrCode, ErrMsg) then
              begin
                GMessagebox(Format('기사캐시 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
                Screen.Cursor := crDefault;
                btnSearchA2.Enabled := True;
                btnSearchA2P11.Enabled := True;
                Exit;
              end;

              cxgWkCash.BeginUpdate;
              cxgWkCash.DataController.SetRecordCount(0);
            end else
            if iType = 2 then
            begin
              WkStatus := cxgWkCash.DataController.Values[iRow, 3];
              sBrNo := cxgWkCash.DataController.Values[iRow, 1];

              Param := WkStatus;
              Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtStartA2.Date)+'09';
              Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA2.Date  )+'09';
              if not RequestBasePaging(GetSel06('GET_LIST_CASH_DETAIL', 'MNG_WK_CASH.GET_LIST_CASH_DETAIL', '1000', Param), slList, ErrCode, ErrMsg) then
              begin
                GMessagebox(Format('기사캐시 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
                Screen.Cursor := crDefault;
                btnSearchA2.Enabled := True;
                btnSearchA2P11.Enabled := True;
                Exit;
              end;

              sg_xls.BeginUpdate;
              sg_xls.DataController.SetRecordCount(0);
            end;

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
                      if iType = 1 then
                      begin
                        GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                        iBrNo := scb_BranchCode.IndexOf(ls_Rcrd[0]);
                        if iBrNo = -1 then
                          sBrName := ''
                        else
                          sBrName := scb_BranchName.Strings[iBrNo];
                        ls_Rcrd.Insert(1, sBrName);
                        ls_Rcrd.Insert(0, InttoStr(I + 1));

                        iSum := StrToIntDef(ls_Rcrd[6], 0);
                        iCash := StrToIntDef(ls_Rcrd[7], 0);
                        ls_Rcrd.Insert(6, IntToStr(iSum + iCash));
                        if ls_Rcrd[6] = '' then   ls_Rcrd[6] := '0';
                        if ls_Rcrd[7] = '' then   ls_Rcrd[7] := '0';
                        if ls_Rcrd[8] = '' then   ls_Rcrd[8] := '0';
                        if ls_Rcrd[9] = '' then   ls_Rcrd[9] := '0';
                        if ls_Rcrd[10] = '' then  ls_Rcrd[10] := '0';
                        if ls_Rcrd[11] = '' then  ls_Rcrd[11] := '0';
                        if ls_Rcrd[12] = '' then  ls_Rcrd[12] := '0';
                        if ls_Rcrd[13] = '' then  ls_Rcrd[13] := '0';
                        if ls_Rcrd[18] = '' then  ls_Rcrd[18] := '0';

                        if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
                        begin
                          if scb_FamilyBrCode.IndexOf(ls_Rcrd[1]) = -1 then   //권한있는 지사일경우만 그리드표기
                          else
                          begin
                            iRow := cxgWkCash.DataController.AppendRecord;
                            cxgWkCash.DataController.Values[iRow, 0] := ls_Rcrd[0];
                            cxgWkCash.DataController.Values[iRow, 1] := ls_Rcrd[1];
                            cxgWkCash.DataController.Values[iRow, 2] := ls_Rcrd[2];
                            cxgWkCash.DataController.Values[iRow, 3] := ls_Rcrd[3];
                            cxgWkCash.DataController.Values[iRow, 4] := ls_Rcrd[4];
                            cxgWkCash.DataController.Values[iRow, 5] := ls_Rcrd[5];
                            cxgWkCash.DataController.Values[iRow, 6] := ls_Rcrd[6];
                            cxgWkCash.DataController.Values[iRow, 7] := ls_Rcrd[7];
                            cxgWkCash.DataController.Values[iRow, 8] := ls_Rcrd[8];
                            cxgWkCash.DataController.Values[iRow, 9] := ls_Rcrd[9];
                            cxgWkCash.DataController.Values[iRow, 10] := ls_Rcrd[10];
                            cxgWkCash.DataController.Values[iRow, 11] := ls_Rcrd[11];
                            cxgWkCash.DataController.Values[iRow, 12] := ls_Rcrd[12];
                            cxgWkCash.DataController.Values[iRow, 13] := ls_Rcrd[13];
                            cxgWkCash.DataController.Values[iRow, 14] := ls_Rcrd[14];
                            ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #13#10, '.');
                            ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #13, '.');
                            ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #10, '.');
                            cxgWkCash.DataController.Values[iRow, 15] := ls_Rcrd[15];
                            cxgWkCash.DataController.Values[iRow, 16] := ls_Rcrd[16];   //M-캐시입출금액
                            cxgWkCash.DataController.Values[iRow, 17] := ls_Rcrd[17];   //M-캐시잔액
                            cxgWkCash.DataController.Values[iRow, 18] := ls_Rcrd[18];   //고용보험료
                          end;
                        end else
                        begin
                          iRow := cxgWkCash.DataController.AppendRecord;
                          cxgWkCash.DataController.Values[iRow, 0] := ls_Rcrd[0];
                          cxgWkCash.DataController.Values[iRow, 1] := ls_Rcrd[1];
                          cxgWkCash.DataController.Values[iRow, 2] := ls_Rcrd[2];
                          cxgWkCash.DataController.Values[iRow, 3] := ls_Rcrd[3];
                          cxgWkCash.DataController.Values[iRow, 4] := ls_Rcrd[4];
                          cxgWkCash.DataController.Values[iRow, 5] := ls_Rcrd[5];
                          cxgWkCash.DataController.Values[iRow, 6] := ls_Rcrd[6];
                          cxgWkCash.DataController.Values[iRow, 7] := ls_Rcrd[7];
                          cxgWkCash.DataController.Values[iRow, 8] := ls_Rcrd[8];
                          cxgWkCash.DataController.Values[iRow, 9] := ls_Rcrd[9];
                          cxgWkCash.DataController.Values[iRow, 10] := ls_Rcrd[10];
                          cxgWkCash.DataController.Values[iRow, 11] := ls_Rcrd[11];
                          cxgWkCash.DataController.Values[iRow, 12] := ls_Rcrd[12];
                          cxgWkCash.DataController.Values[iRow, 13] := ls_Rcrd[13];
                          cxgWkCash.DataController.Values[iRow, 14] := ls_Rcrd[14];
                          ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #13#10, '.');
                          ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #13, '.');
                          ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #10, '.');
                          cxgWkCash.DataController.Values[iRow, 15] := ls_Rcrd[15];
                          cxgWkCash.DataController.Values[iRow, 16] := ls_Rcrd[16];   //M-캐시입출금액
                          cxgWkCash.DataController.Values[iRow, 17] := ls_Rcrd[17];   //M-캐시잔액
                          cxgWkCash.DataController.Values[iRow, 18] := StrToIntDef(ls_Rcrd[18], 0);   //고용보험료
                        end;
                      end else
                      if iType = 2 then
                      begin
                        GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                        ls_Rcrd.Insert(0, IntToStr(i + 1));

                        if (edtWkCashMemo.Text <> '') and (Pos(edtWkCashMemo.Text, ls_Rcrd[12]) <= 0) then
                          Continue;

                        if ls_Rcrd[10] = '' then  ls_Rcrd[10] := '0';
                        if ls_Rcrd[11] = '' then  ls_Rcrd[11] := '0';
                        if ls_Rcrd[13] = '' then  ls_Rcrd[13] := '0';
                        if ls_Rcrd[1] <> '' then  ls_Rcrd[1] := Copy(ls_Rcrd[1], 1, 10) + ' ' + Copy(ls_Rcrd[1], 11, 8);
                        iRow := sg_xls.DataController.AppendRecord;
                        sg_xls.DataController.Values[iRow, 0] := iRow + 1;//ls_Rcrd[0];
                        sg_xls.DataController.Values[iRow, 1] := ls_Rcrd[1];
                        sg_xls.DataController.Values[iRow, 2] := ls_Rcrd[2];
                        sg_xls.DataController.Values[iRow, 3] := ls_Rcrd[3];
                        sg_xls.DataController.Values[iRow, 4] := ls_Rcrd[4];
                        sg_xls.DataController.Values[iRow, 5] := ls_Rcrd[5];
                        sg_xls.DataController.Values[iRow, 6] := ls_Rcrd[6];
                        sg_xls.DataController.Values[iRow, 7] := ls_Rcrd[7];
                        sg_xls.DataController.Values[iRow, 8] := ls_Rcrd[8];
                        sg_xls.DataController.Values[iRow, 9] := ls_Rcrd[9];
                        sg_xls.DataController.Values[iRow, 10] := ls_Rcrd[10];
                        sg_xls.DataController.Values[iRow, 11] := ls_Rcrd[11];
                        sg_xls.DataController.Values[iRow, 12] := ls_Rcrd[12];
                        sg_xls.DataController.Values[iRow, 13] := StrToIntDef(ls_Rcrd[18], 0); //고용보험료
                        sg_xls.DataController.Values[iRow, 14] := ls_Rcrd[13];
                        sg_xls.DataController.Values[iRow, 15] := ls_Rcrd[16]; //M-캐시입출금액
                        sg_xls.DataController.Values[iRow, 16] := ls_Rcrd[17]; //M-캐시잔액
                        sg_xls.DataController.Values[iRow, 17] := ls_Rcrd[14];
                        sg_xls.DataController.Values[iRow, 18] := ls_Rcrd[15];
                      end;
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end	else
                begin
                  GMessagebox('검색된 내용이 없습니다.', CDMSI);
                end;
              end;
            finally
              if iType = 1 then cxgWkCash.EndUpdate else
              if iType = 2 then sg_xls.EndUpdate;
              xdom := Nil;
              btnSearchA2.Enabled := True;
              btnSearchA2P11.Enabled := True;
            end;
          end;
        3:
          begin
            iRow := cxgWkCash.DataController.FocusedRecordIndex;
            if iRow < 0 then
            begin
              GMessagebox('선택된 기사가 없습니다.', CDMSE);
              Exit;
            end;

            WkStatus := cxgWkCash.DataController.Values[iRow, 3];
            sBrNo := cxgWkCash.DataController.Values[iRow, 1];

            Param := WkStatus;
            Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtStartA2.Date)+'09';
            Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA2.Date  )+'09';
            btnSearchA3.Enabled := False;
            Screen.Cursor := crHourGlass;
            if not RequestBasePaging(GetSel06('GET_LIST_CASH_DETAIL', 'MNG_WK_CASH.GET_LIST_CASH_DETAIL', '1000', Param), slList, ErrCode, ErrMsg) then
            begin
              GMessagebox(Format('기사캐시 세부내역 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
              Screen.Cursor := crDefault;
              btnSearchA3.Enabled := True;
              Exit;
            end;

            if ( Not Assigned(Frm_WOR03) ) Or ( Frm_WOR03 = NIl ) then Frm_WOR03 := TFrm_WOR03.Create(Nil);
            frm_WOR03.cxgWkCashHis.BeginUpdate;
            frm_WOR03.cxgWkCashHis.DataController.SetRecordCount(0);

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
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      ls_Rcrd.Insert(0, InttoStr(i + 1));

                      if ls_Rcrd[3] = '' then ls_Rcrd[3] := '0';
                      if ls_Rcrd[4] = '' then ls_Rcrd[4] := '0';
                      if ls_Rcrd[6] = '' then ls_Rcrd[6] := '0';

                      if Length(ls_Rcrd[1]) = 18 then
												ls_Rcrd[1] := Copy(ls_Rcrd[1], 1, 10) + ' ' + Copy(ls_Rcrd[1], 11, 8);

                      iRow := frm_WOR03.cxgWkCashHis.DataController.AppendRecord;
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 0] := ls_Rcrd[0];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 1] := ls_Rcrd[1];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 2] := ls_Rcrd[2];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 3] := ls_Rcrd[3];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 4] := ls_Rcrd[4];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 5] := ls_Rcrd[5];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 6] := ls_Rcrd[6];
											frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 7] := ls_Rcrd[9];  //M-캐시입출금액
											frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 8] := ls_Rcrd[10]; //M-캐시잔액
											frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 9] := ls_Rcrd[7];
											frm_WOR03.cxgWkCashHis.DataController.Values[iRow,10] := ls_Rcrd[8];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end	else
                begin
                  GMessagebox('검색된 내용이 없습니다.', CDMSI);
                end;
              end;
            finally
              frm_WOR03.cxgWkCashHis.EndUpdate;
              btnSearchA3.Enabled := True;
              xdom := Nil;
            end;
          end;
      end;


    finally
			Screen.Cursor := crDefault;
      Frm_Flash.Hide;
    end;
  except
    on E: Exception do
		begin
			Assert(False, E.Message);
		end;
  End;
end;
 }
procedure TFrm_WOR.proc_Set_AboveToday;
var	XmlData, ErrMsg, param : string;
		ErrCode : Integer;
begin
	SetDebugeWrite('TFrm_WOR.proc_Set_AboveToday');
	Try
		Param := GT_USERIF.ShareNo;
		Param := Param + '│' + StringReplace(edt_NowTime1.Text, ':', '', [rfReplaceAll]);
		Param := Param + '│' + StringReplace(edt_NowTime2.Text, ':', '', [rfReplaceAll]);
		Param := Param + '│' + StringReplace(edt_NowCnt.Text, ',', '', [rfReplaceAll]);;
		Param := Param + '│' + StringReplace(edt_NowAmt.Text, ',', '', [rfReplaceAll]);;

		if not RequestBase(GetCallable06('SET_AD_SHARE', 'MNG.SET_AD_SHARE', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('현재설정 시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
		end;
		GMessagebox('저장되었습니다.', CDMSI);

	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_WOR.oneDayClick(Sender: TObject);
begin
  if oneDay.Checked then
  begin
    cxDtStartA2.Date := Now;
    cxDtEndA2.Date   := Now + 1;
  end;
end;

procedure TFrm_WOR.threeDayClick(Sender: TObject);
begin
  if threeDay.Checked then
    cxDtStartA2.Date := Now - 2;
  cxDtEndA2.Date := Now + 1;
end;

procedure TFrm_WOR.weekDayClick(Sender: TObject);
begin
  if weekDay.Checked then
  begin
    cxDtStartA2.Date := Now - 6;
    cxDtEndA2.Date := Now + 1;
  end;
end;

procedure TFrm_WOR.monthDayClick(Sender: TObject);
begin
  cxDtStartA2.Date := Now - 29;
  cxDtEndA2.Date := Now + 1;
end;

procedure TFrm_WOR.proc_init;
var
  i : Integer;
begin
  try
    cxDtStartA2.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd hh:nn:ss'), 1, 10));
    cxDtEndA2.Date := cxDtStartA2.Date + 1;
    oneDay.Checked := True;
    edWkName.Text := '';

    cxgWkCash.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxgWkCash.ColumnCount - 1 do
    begin
      case i of
        6..13, 16..18 : cxgWkCash.Columns[i].DataBinding.ValueType := 'Currency';
        else cxgWkCash.Columns[i].DataBinding.ValueType := 'String';
      end;
      
    end;

{    cxgWkCash.Columns[6].DataBinding.ValueType := 'Currency';
    cxgWkCash.Columns[7].DataBinding.ValueType := 'Currency';
    cxgWkCash.Columns[8].DataBinding.ValueType := 'Currency';
    cxgWkCash.Columns[9].DataBinding.ValueType := 'Currency';
    cxgWkCash.Columns[10].DataBinding.ValueType := 'Currency';
    cxgWkCash.Columns[11].DataBinding.ValueType := 'Integer';
		cxgWkCash.Columns[12].DataBinding.ValueType := 'Currency';
		cxgWkCash.Columns[13].DataBinding.ValueType := 'Currency';
//		cxgWkCash.Columns[14].DataBinding.ValueType := 'Currency';  //19 - 수수료그룹
//		cxgWkCash.Columns[15].DataBinding.ValueType := 'Currency';  //20 - 간단메모
		cxgWkCash.Columns[16].DataBinding.ValueType := 'Currency';
		cxgWkCash.Columns[17].DataBinding.ValueType := 'Currency';
		cxgWkCash.Columns[18].DataBinding.ValueType := 'Currency';  }

		sg_xls.Columns[0].DataBinding.ValueType := 'Integer';
		for i := 1 to sg_xls.ColumnCount - 1 do
			sg_xls.Columns[i].DataBinding.ValueType := 'String';

    sg_xls.Columns[10].DataBinding.ValueType := 'Currency';
		sg_xls.Columns[11].DataBinding.ValueType := 'Currency';
		sg_xls.Columns[13].DataBinding.ValueType := 'Currency';  //고용보험료
		sg_xls.Columns[14].DataBinding.ValueType := 'Currency';
		sg_xls.Columns[15].DataBinding.ValueType := 'Currency';
		sg_xls.Columns[16].DataBinding.ValueType := 'Currency';
//		sg_xls.Columns[17].DataBinding.ValueType := 'Currency'; 

    sWkSearchBrNo := '';
	except
  end;

  //------------------------------------------------------------------------ A3
  try
    cxDtStartA3.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd hh:nn:ss'), 1, 10));
    cxDtEndA3.Date := cxDtStartA3.Date + 1;

    for i := 0 to cxgWkAttend.ColumnCount - 1 do
      cxgWkAttend.Columns[i].DataBinding.ValueType := 'Integer';

		cxgWkAttend.Columns[1].DataBinding.ValueType := 'String';
    cxgWkAttend.Columns[2].DataBinding.ValueType := 'String';
    cxgWkAttend.Columns[3].DataBinding.ValueType := 'String';
    cxgWkAttend.Columns[10].DataBinding.ValueType := 'Currency';
    cxgWkAttend.Columns[11].DataBinding.ValueType := 'Currency';
    cxgWkAttend.Columns[12].DataBinding.ValueType := 'Currency';
    cxgWkAttend.Columns[13].DataBinding.ValueType := 'String';
		cxgWkAttend.Columns[14].DataBinding.ValueType := 'String';

		cbSelGubun.ItemIndex := 0;
		cbSelList.ItemIndex := 0;
		cxEdtSelText.Text := '';
		gWkAttend_Type := 'Grid';
		gWkAttendBaecha := TStringList.Create;
  except
  end;

	//------------------------------------------------------------------------ A4
	try
    cxgOwner.Columns[0].DataBinding.ValueType := 'Integer';
		for i := 1 to cxgOwner.ColumnCount - 1 do
			cxgOwner.Columns[i].DataBinding.ValueType := 'String';

		cxgOther.Columns[0].DataBinding.ValueType := 'Integer';
		for i := 1 to cxgOther.ColumnCount - 1 do
			cxgOther.Columns[i].DataBinding.ValueType := 'String';

		cxGridKakaoBlock.Columns[0].DataBinding.ValueType := 'Integer';
		for i := 1 to cxGridKakaoBlock.ColumnCount - 1 do
			cxGridKakaoBlock.Columns[i].DataBinding.ValueType := 'String';


	except
  end;

  //------------------------------------------------------------------------ A5
  for i := 0 to cxViewBlockList.ColumnCount - 1 do
    cxViewBlockList.Columns[i].DataBinding.ValueTypeClass := TcxStringValueType;

  //------------------------------------------------------------------------ A6
  try
    cxGridPeakTime.Columns[0].DataBinding.ValueType := 'Integer';
    for i := 1 to cxGridPeakTime.ColumnCount - 1 do
      cxGridPeakTime.Columns[i].DataBinding.ValueType := 'String';
  except
  end;

	//------------------------------------------------------------------------ A7
	try
		// 그리드 초기화
		for i := 0 to Grid4View.ColumnCount - 1 do
		begin
			Grid4View.Columns[i].DataBinding.ValueType := 'String';
		end;
		Grid4View.Columns[0].DataBinding.ValueType := 'String';
		Grid4View.Columns[35].DataBinding.ValueType := 'Currency';     //출근
		Grid4View.Columns[37].DataBinding.ValueType := 'Currency';     //사용료
		Grid4View.DataController.SetRecordCount(0);

    if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  31 then
    begin
      Grid4View.Columns[32].Visible := True;
      Grid4View.Columns[33].Visible := True;
      Grid4View.Columns[34].Visible := True;
    end else
    if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  30 then
    begin
      Grid4View.Columns[32].Visible := True;
      Grid4View.Columns[33].Visible := True;
      Grid4View.Columns[34].Visible := False;
    end else
    if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  29 then
    begin
      Grid4View.Columns[32].Visible := True;
      Grid4View.Columns[33].Visible := False;
      Grid4View.Columns[34].Visible := False;
    end else
    if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  28 then
    begin
      Grid4View.Columns[32].Visible := False;
      Grid4View.Columns[33].Visible := False;
      Grid4View.Columns[34].Visible := False;
    end;
  except
  end;
	//------------------------------------------------------------------------ A7
	try
		// 그리드 초기화
		for i := 0 to Grid4ViewWK.ColumnCount - 1 do
		begin
			Grid4ViewWK.Columns[i].DataBinding.ValueType := 'String';
		end;
		Grid4ViewWK.Columns[34].DataBinding.ValueType := 'Currency';     //출근
		Grid4ViewWK.Columns[36].DataBinding.ValueType := 'Currency';     //사용료
		Grid4ViewWK.DataController.SetRecordCount(0);

		if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  31 then
		begin
			Grid4ViewWK.Columns[31].Visible := True;
			Grid4ViewWK.Columns[32].Visible := True;
			Grid4ViewWK.Columns[33].Visible := True;
		end else
		if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  30 then
		begin
			Grid4ViewWK.Columns[31].Visible := True;
			Grid4ViewWK.Columns[32].Visible := True;
			Grid4ViewWK.Columns[33].Visible := False;
		end else
		if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  29 then
		begin
			Grid4ViewWK.Columns[31].Visible := True;
			Grid4ViewWK.Columns[32].Visible := False;
			Grid4ViewWK.Columns[33].Visible := False;
		end else
		if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  28 then
    begin
			Grid4ViewWK.Columns[31].Visible := False;
			Grid4ViewWK.Columns[32].Visible := False;
			Grid4ViewWK.Columns[33].Visible := False;
		end;
  except
  end;

	//------------------------------------------------------------------------ A7
	try
		// 그리드 초기화
		for i := 0 to grdWk.ColumnCount - 1 do
		begin
			grdWk.Columns[i].DataBinding.ValueType := 'String';
		end;
		grdWk.Columns[0].DataBinding.ValueType := 'String';
		grdWk.Columns[35].DataBinding.ValueType := 'Currency';     //출근
		grdWk.Columns[37].DataBinding.ValueType := 'Currency';     //사용료
		grdWk.DataController.SetRecordCount(0);

    if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  31 then
    begin
      grdWk.Columns[32].Visible := True;
      grdWk.Columns[33].Visible := True;
      grdWk.Columns[34].Visible := True;
    end else
    if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  30 then
    begin
      grdWk.Columns[32].Visible := True;
      grdWk.Columns[33].Visible := True;
      grdWk.Columns[34].Visible := False;
    end else
    if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  29 then
    begin
      grdWk.Columns[32].Visible := True;
      grdWk.Columns[33].Visible := False;
      grdWk.Columns[34].Visible := False;
    end else
    if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  28 then
    begin
      grdWk.Columns[32].Visible := False;
      grdWk.Columns[33].Visible := False;
      grdWk.Columns[34].Visible := False;
    end;
  except
  end;

	//------------------------------------------------------------------------ A8
	try
		// 그리드 초기화
		for i := 0 to Grid8ViewWK.ColumnCount - 1 do
		begin
			Grid8ViewWK.Columns[i].DataBinding.ValueType := 'String';
		end;
		Grid8ViewWK.Columns[7].DataBinding.ValueType := 'Currency';
		Grid8ViewWK.Columns[8].DataBinding.ValueType := 'Currency';
		Grid8ViewWK.Columns[9].DataBinding.ValueType := 'Currency';
		Grid8ViewWK.DataController.SetRecordCount(0);

		cb_Mission.ItemIndex := 0;
		cb_For.ItemIndex := 0;
		edt_Search.Text := '';
		proc_Above_Init;
	except
  end;

	//------------------------------------------------------------------------ A10
	try
		cxDtStartA10.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd hh:nn:ss'), 1, 10));
		cxDtEndA10.Date := cxDtStartA10.Date + 1;

		for i := 0 to cxGridNoWork.ColumnCount - 1 do
			cxGridNoWork.Columns[i].DataBinding.ValueType := 'String';

		cxGridNoWork.Columns[0].DataBinding.ValueType := 'Integer';
		cxGridNoWork.Columns[5].DataBinding.ValueType := 'Currency';
		cxGridNoWork.Columns[6].DataBinding.ValueType := 'Currency';
		cxGridNoWork.Columns[7].DataBinding.ValueType := 'Currency';
		cxGridNoWork.Columns[8].DataBinding.ValueType := 'Currency';
		cxGridNoWork.Columns[9].DataBinding.ValueType := 'Currency';
	except
	end;

  //------------------------------------------------------------------------ A3
  try
    SetDateControl(cxDtStartA9, cxDtEndA9, tdOneMonth);  //기본최근1달

    for i := 0 to cxGridState.ColumnCount - 1 do
      cxGridState.Columns[i].DataBinding.ValueType := 'String';

		cxGridState.Columns[0].DataBinding.ValueType := 'Integer';

    cbSelList9.Itemindex := 1;  // 기사명조건을 기본검색
  except
  end;
end;

procedure TFrm_WOR.proc_KakaoNotShare;
var
	ErrCode : Integer;
	Param, XmlData, ErrMsg : String;
	lst_Result: IXMLDomNodeList;
	xdom: msDomDocument;
	ls_Rcrd, slList : TStringList;
	iRow, i, j : integer;
begin
	SetDebugeWrite('TFrm_WOR.proc_KakaoNotShare');
	Try
		Param := '';
		
		if GT_USERIF.LV = '60' then
		begin
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
				Param := GT_SEL_BRNO.HDNO
			else
				Param := GT_USERIF.HD;
			Param := Param + '│' + IfThen(GT_SEL_BRNO.GUBUN = '0', '', GT_SEL_BRNO.BrNo);
		end else
		if GT_USERIF.LV = '40' then
		begin
			Param := GT_USERIF.HD;
			Param := Param + '│' + GT_USERIF.BR;
		end else
		begin
			Param := GT_USERIF.HD;
			Param := Param + '│' + GT_USERIF.BR;
		end;

		Param := Param + '│' + '0' + '│';   //(0:전체, 1:사번,       + | 입력값

		slList := TStringList.Create;
		Screen.Cursor := crHourGlass;
		cxGridKakaoBlock.DataController.SetRecordCount(0);
		if not RequestBasePaging(GetSEL06('GET_BLOCK_KD_LIST', 'MNG.GET_BLOCK_KD_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('카카오기사 공유콜차단 리스트 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxGridKakaoBlock.BeginUpdate;
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


							if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
							begin
								if scb_FamilyBrCode.IndexOf(ls_Rcrd[1]) = -1 then 
								begin
									if ls_Rcrd[0] <> '0' then Continue;  //전체권한 없을때 본사차단이 아니면 스킵
								end;
							end;	   //권한있는 지사일경우만 그리드표기

							iRow := cxGridKakaoBlock.DataController.AppendRecord;
							ls_Rcrd.Insert(0, IntToStr(iRow + 1));

							// 차단구분((0:본사, 1:지사, 2:콜센터) | 업체코드|업체명 | 카카오기사사번(K-****) | 연락처 |사유 | 아이디|등록일
	 
							cxGridKakaoBlock.DataController.Values[iRow, 0] := ls_Rcrd[0];   					 //순번
							if ls_Rcrd[1] = '0' then                                                   //차단기준      ;
								cxGridKakaoBlock.DataController.Values[iRow, 1] := '본사차단' else 
							if ls_Rcrd[1] = '1' then                                           
								cxGridKakaoBlock.DataController.Values[iRow, 1] := '지사차단' else
							if ls_Rcrd[1] = '2' then                                           
								cxGridKakaoBlock.DataController.Values[iRow, 1] := '콜센터차단';
								
							cxGridKakaoBlock.DataController.Values[iRow, 2] := ls_Rcrd[2]; 					   //업체코드
							cxGridKakaoBlock.DataController.Values[iRow, 3] := ls_Rcrd[3];   					 //업체명
							cxGridKakaoBlock.DataController.Values[iRow, 4] := ls_Rcrd[4];   					 //카카오기사사번
							cxGridKakaoBlock.DataController.Values[iRow, 5] := ls_Rcrd[9];             //카카오기사명
							cxGridKakaoBlock.DataController.Values[iRow, 6] := ls_Rcrd[7];             //차단아이디
							cxGridKakaoBlock.DataController.Values[iRow, 7] := GetStrToDateTimeGStr(ls_Rcrd[8], 3);   					 //등록일
							cxGridKakaoBlock.DataController.Values[iRow, 8] := ls_Rcrd[6];             //차단사유
							cxGridKakaoBlock.DataController.Values[iRow, 9] := ls_Rcrd[1];             //차단기준  코드

						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			end;
		finally
			xdom := Nil;
			cxGridKakaoBlock.EndUpdate;
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

procedure TFrm_WOR.proc_KakaoUnBlock(AGubun, ABlock, ACode, AWkCSabun:string);
var	XmlData, ErrMsg, param : string;
		ErrCode : Integer;
begin
	SetDebugeWrite('TFrm_WOR.proc_KakaoUnBlock');
	Try
		Param := AGubun;
		Param := Param + '│' + ABlock;
		Param := Param + '│' + ACode;
		Param := Param + '│' + AWkCSabun;
		Param := Param + '│' + '';
		Param := Param + '│' + '';

		if not RequestBase(GetCallable06('SET_BLOCK_KD', 'MNG.SET_BLOCK_KD', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('카카오기사 공유해제시 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			exit;
		end;

		GMessagebox('[' + AWkCSabun + ']기사 차단해제 완료', CDMSI);
		proc_KakaoNotShare;
	Finally

	End;
end;

procedure TFrm_WOR.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
	ls_ClientKey, ls_Msg_Err, sBrName, sWkSabun, sWkName: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
	i, iRow, iBrNo, iSum, iCash, iwk_name, iwkSabun : Integer;
	ls_rxxml: WideString;
begin
  try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      ls_rxxml := slList[0];
      if not xdom.loadXML(ls_rxxml) then
      begin
        btnSearchA2.Enabled := True;
        btnSearchA2P11.Enabled := True;
        Screen.Cursor := crDefault;
        Exit;
      end;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        if Copy(ls_ClientKey, 1, 5) = 'WOR00' then
        begin
          ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
          if StrToIntDef(ls_ClientKey, 1) <> 1 then

          case StrToIntDef(ls_ClientKey, 1) of
						7: //배차기사현황 - 미출근
							begin
                if (0 < GetXmlRecordCount(ls_rxxml)) then
								begin
									cxgWkAttend.BeginUpdate;
									lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
									ls_Rcrd := TStringList.Create;
									try
										for i := 0 to lst_Result.length - 1 do
										begin
											GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

											if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
											begin
												if scb_FamilyBrCode.IndexOf(ls_Rcrd[3]) = -1 then Continue;
											end;	   //권한있는 지사일경우만 그리드표기

											ls_Rcrd.Insert(0, IntToStr(i + 1));
											iRow := cxgWkAttend.DataController.AppendRecord;
											//a.WK_SABUN, a.WK_NAME, a.WK_HP, a.BR_NO, b.Br_Name
											cxgWkAttend.DataController.Values[iRow, 0] := ls_Rcrd[0];
											cxgWkAttend.DataController.Values[iRow, 1] := ls_Rcrd[5] + '[' + ls_Rcrd[4] + ']';      //지사명(코드)
											cxgWkAttend.DataController.Values[iRow, 2] := ls_Rcrd[1]; //기사사번
											cxgWkAttend.DataController.Values[iRow, 3] := ls_Rcrd[2]; //기사명
											cxgWkAttend.DataController.Values[iRow, 4] := '0';
											cxgWkAttend.DataController.Values[iRow, 5] := '0';;
											cxgWkAttend.DataController.Values[iRow, 6] := '0';
											cxgWkAttend.DataController.Values[iRow, 7] := '0';
											cxgWkAttend.DataController.Values[iRow, 8] := '0';
											cxgWkAttend.DataController.Values[iRow, 9] := '0';
											cxgWkAttend.DataController.Values[iRow, 10] := '0';
											cxgWkAttend.DataController.Values[iRow, 11] := '0';
											cxgWkAttend.DataController.Values[iRow, 12] := '0';
											cxgWkAttend.DataController.Values[iRow, 13] := ls_Rcrd[4];   //지사코드
											cxgWkAttend.DataController.Values[iRow, 14] := ls_Rcrd[3];   //기사연락처
										end;
									finally
										ls_Rcrd.Free;
									end;
									cxgWkAttend.EndUpdate;
								end	else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
								btnSearchA3.Enabled := True;
              end;
            2:
              begin
                if (0 < GetXmlRecordCount(ls_rxxml)) then
								begin
									if gWkAttend_Type = 'Grid' then
									begin
										cxgWkAttend.BeginUpdate;
										lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
										ls_Rcrd := TStringList.Create;
										try
											for i := 0 to lst_Result.length - 1 do
											begin
												GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
												if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
												begin
													if scb_FamilyBrCode.IndexOf(ls_Rcrd[1]) = -1 then Continue;
												end;	   //권한있는 지사일경우만 그리드표기
												if StrToIntDef(ls_Rcrd[4], -1) = -1 then  ls_Rcrd[4] := '0';
												if StrToIntDef(ls_Rcrd[5], -1) = -1 then  ls_Rcrd[5] := '0';
												if StrToIntDef(ls_Rcrd[6], -1) = -1 then  ls_Rcrd[6] := '0';
												if StrToIntDef(ls_Rcrd[7], -1) = -1 then  ls_Rcrd[7] := '0';
												if StrToIntDef(ls_Rcrd[8], -1) = -1 then  ls_Rcrd[8] := '0';
												if StrToIntDef(ls_Rcrd[9], -1) = -1 then  ls_Rcrd[9] := '0';
												if ls_Rcrd[10] = '' then  ls_Rcrd[10] := '0';
												if ls_Rcrd[11] = '' then  ls_Rcrd[11] := '0';
												if ls_Rcrd[12] = '' then  ls_Rcrd[12] := '0';
												ls_Rcrd.Insert(0, IntToStr(i + 1));
												iRow := cxgWkAttend.DataController.AppendRecord;

												cxgWkAttend.DataController.Values[iRow, 0] := ls_Rcrd[0];
												cxgWkAttend.DataController.Values[iRow, 1] := ls_Rcrd[1] + '[' + ls_Rcrd[2] + ']';
												cxgWkAttend.DataController.Values[iRow, 2] := ls_Rcrd[4];
												cxgWkAttend.DataController.Values[iRow, 3] := ls_Rcrd[3];
												cxgWkAttend.DataController.Values[iRow, 4] := ls_Rcrd[5];
												cxgWkAttend.DataController.Values[iRow, 5] := ls_Rcrd[6];
												cxgWkAttend.DataController.Values[iRow, 6] := ls_Rcrd[7];
												cxgWkAttend.DataController.Values[iRow, 7] := ls_Rcrd[8];
												cxgWkAttend.DataController.Values[iRow, 8] := ls_Rcrd[9];
												cxgWkAttend.DataController.Values[iRow, 9] := ls_Rcrd[10];
												cxgWkAttend.DataController.Values[iRow, 10] := ls_Rcrd[11];
												cxgWkAttend.DataController.Values[iRow, 11] := ls_Rcrd[12];
												cxgWkAttend.DataController.Values[iRow, 12] := ls_Rcrd[13];
												cxgWkAttend.DataController.Values[iRow, 13] := ls_Rcrd[2];
												cxgWkAttend.DataController.Values[iRow, 14] := ls_Rcrd[14]; //기사연락처
											end;
										finally
											ls_Rcrd.Free;
										end;
										cxgWkAttend.EndUpdate;
									end else
									if gWkAttend_Type = 'Structure' then
									begin
									 {	gWkAttendBaecha.Clear;
										lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
										ls_Rcrd := TStringList.Create;
										try
											for i := 0 to lst_Result.length - 1 do
											begin
												GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
												gWkAttendBaecha.Add
											end;
										finally
											ls_Rcrd.Free;
										end;   }
									end;
								end	else
								begin
									if gWkAttend_Type = 'Grid' then
										GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
								btnSearchA3.Enabled := True;
							end;
            3:
              begin
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
									cxgWkCash.DataController.SetRecordCount(0);
									cxgWkCash.BeginUpdate;
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
											iBrNo := scb_BranchCode.IndexOf(ls_Rcrd[0]);
											if iBrNo = -1 then
                        sBrName := ''
                      else
												sBrName := scb_BranchName.Strings[iBrNo];
											ls_Rcrd.Insert(1, sBrName);
											ls_Rcrd.Insert(0, InttoStr(I + 1));

											iSum := StrToIntDef(ls_Rcrd[6], 0);
                      iCash := StrToIntDef(ls_Rcrd[7], 0);
                      ls_Rcrd.Insert(6, IntToStr(iSum + iCash));
                      if ls_Rcrd[6] = '' then   ls_Rcrd[6] := '0';
                      if ls_Rcrd[7] = '' then   ls_Rcrd[7] := '0';
                      if ls_Rcrd[8] = '' then   ls_Rcrd[8] := '0';
                      if ls_Rcrd[9] = '' then   ls_Rcrd[9] := '0';
											if ls_Rcrd[10] = '' then  ls_Rcrd[10] := '0';
                      if ls_Rcrd[11] = '' then  ls_Rcrd[11] := '0';
                      if ls_Rcrd[12] = '' then  ls_Rcrd[12] := '0';
                      if ls_Rcrd[13] = '' then  ls_Rcrd[13] := '0';

											if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
											begin
												if scb_FamilyBrCode.IndexOf(ls_Rcrd[1]) = -1 then   //권한있는 지사일경우만 그리드표기
												else
												begin
													iRow := cxgWkCash.DataController.AppendRecord;
													cxgWkCash.DataController.Values[iRow, 0] := ls_Rcrd[0];
													cxgWkCash.DataController.Values[iRow, 1] := ls_Rcrd[1];
													cxgWkCash.DataController.Values[iRow, 2] := ls_Rcrd[2];
													cxgWkCash.DataController.Values[iRow, 3] := ls_Rcrd[3];
													cxgWkCash.DataController.Values[iRow, 4] := ls_Rcrd[4];
													cxgWkCash.DataController.Values[iRow, 5] := ls_Rcrd[5];
													cxgWkCash.DataController.Values[iRow, 6] := ls_Rcrd[6];
													cxgWkCash.DataController.Values[iRow, 7] := ls_Rcrd[7];
													cxgWkCash.DataController.Values[iRow, 8] := ls_Rcrd[8];
													cxgWkCash.DataController.Values[iRow, 9] := ls_Rcrd[9];
													cxgWkCash.DataController.Values[iRow, 10] := ls_Rcrd[10];
													cxgWkCash.DataController.Values[iRow, 11] := ls_Rcrd[11];
													cxgWkCash.DataController.Values[iRow, 12] := ls_Rcrd[12];
													cxgWkCash.DataController.Values[iRow, 13] := ls_Rcrd[13];
													cxgWkCash.DataController.Values[iRow, 14] := ls_Rcrd[14];
													ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #13#10, '.');
													ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #13, '.');
													ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #10, '.');
													cxgWkCash.DataController.Values[iRow, 15] := ls_Rcrd[15];
													cxgWkCash.DataController.Values[iRow, 16] := ls_Rcrd[16];   //M-캐시입출금액
													cxgWkCash.DataController.Values[iRow, 17] := ls_Rcrd[17];   //M-캐시잔액
                          cxgWkCash.DataController.Values[iRow, 18] := StrToIntDef(ls_Rcrd[18], 0);   //고용보험료
												end;
											end else
											begin
												iRow := cxgWkCash.DataController.AppendRecord;
												cxgWkCash.DataController.Values[iRow, 0] := ls_Rcrd[0];
												cxgWkCash.DataController.Values[iRow, 1] := ls_Rcrd[1];
												cxgWkCash.DataController.Values[iRow, 2] := ls_Rcrd[2];
												cxgWkCash.DataController.Values[iRow, 3] := ls_Rcrd[3];
												cxgWkCash.DataController.Values[iRow, 4] := ls_Rcrd[4];
												cxgWkCash.DataController.Values[iRow, 5] := ls_Rcrd[5];
												cxgWkCash.DataController.Values[iRow, 6] := ls_Rcrd[6];
												cxgWkCash.DataController.Values[iRow, 7] := ls_Rcrd[7];
												cxgWkCash.DataController.Values[iRow, 8] := ls_Rcrd[8];
												cxgWkCash.DataController.Values[iRow, 9] := ls_Rcrd[9];
												cxgWkCash.DataController.Values[iRow, 10] := ls_Rcrd[10];
												cxgWkCash.DataController.Values[iRow, 11] := ls_Rcrd[11];
												cxgWkCash.DataController.Values[iRow, 12] := ls_Rcrd[12];
												cxgWkCash.DataController.Values[iRow, 13] := ls_Rcrd[13];
												cxgWkCash.DataController.Values[iRow, 14] := ls_Rcrd[14];
												ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #13#10, '.');
												ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #13, '.');
												ls_Rcrd[15] := ReplaceAll(ls_Rcrd[15], #10, '.');
												cxgWkCash.DataController.Values[iRow, 15] := ls_Rcrd[15];
												cxgWkCash.DataController.Values[iRow, 16] := ls_Rcrd[16];   //M-캐시입출금액
												cxgWkCash.DataController.Values[iRow, 17] := ls_Rcrd[17];   //M-캐시잔액
                        cxgWkCash.DataController.Values[iRow, 18] := StrToIntDef(ls_Rcrd[18], 0);   //고용보험료
											end;
										end;
                  finally
                    ls_Rcrd.Free;
                  end;
                  cxgWkCash.EndUpdate;
								end else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
                btnSearchA2.Enabled := True;
                btnSearchA2P11.Enabled := True;
							end;
						4:
              begin
                if (0 < GetXmlRecordCount(ls_rxxml)) then
								begin
                  sg_xls.DataController.SetRecordCount(0);
                  sg_xls.BeginUpdate;
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      ls_Rcrd.Insert(0, IntToStr(i + 1));

                      if (edtWkCashMemo.Text <> '') and (Pos(edtWkCashMemo.Text, ls_Rcrd[12]) <= 0) then
												Continue;

                      if ls_Rcrd[10] = '' then  ls_Rcrd[10] := '0';
                      if ls_Rcrd[11] = '' then  ls_Rcrd[11] := '0';
                      if ls_Rcrd[13] = '' then  ls_Rcrd[13] := '0';
                      if ls_Rcrd[1] <> '' then  ls_Rcrd[1] := Copy(ls_Rcrd[1], 1, 10) + ' ' + Copy(ls_Rcrd[1], 11, 8);
                      iRow := sg_xls.DataController.AppendRecord;
											sg_xls.DataController.Values[iRow, 0] := iRow + 1;//ls_Rcrd[0];
											sg_xls.DataController.Values[iRow, 1] := ls_Rcrd[1];
											sg_xls.DataController.Values[iRow, 2] := ls_Rcrd[2];
											sg_xls.DataController.Values[iRow, 3] := ls_Rcrd[3];
											sg_xls.DataController.Values[iRow, 4] := ls_Rcrd[4];
											sg_xls.DataController.Values[iRow, 5] := ls_Rcrd[5];
											sg_xls.DataController.Values[iRow, 6] := ls_Rcrd[6];
											sg_xls.DataController.Values[iRow, 7] := ls_Rcrd[7];
											sg_xls.DataController.Values[iRow, 8] := ls_Rcrd[8];
											sg_xls.DataController.Values[iRow, 9] := ls_Rcrd[9];
											sg_xls.DataController.Values[iRow, 10] := ls_Rcrd[10];
											sg_xls.DataController.Values[iRow, 11] := ls_Rcrd[11];
											sg_xls.DataController.Values[iRow, 12] := ls_Rcrd[12];
                      sg_xls.DataController.Values[iRow, 13] := StrToIntDef(ls_Rcrd[18], 0); //고용보험료
                      sg_xls.DataController.Values[iRow, 14] := StrToIntDef(ls_Rcrd[13], 0);
                      sg_xls.DataController.Values[iRow, 15] := StrToIntDef(ls_Rcrd[16], 0); //M-캐시입출금액
                      sg_xls.DataController.Values[iRow, 16] := StrToIntDef(ls_Rcrd[17], 0); //M-캐시잔액
                      sg_xls.DataController.Values[iRow, 17] := ls_Rcrd[14];
                      sg_xls.DataController.Values[iRow, 18] := ls_Rcrd[15];
										end;
                  finally
                    ls_Rcrd.Free;
                  end;
                  sg_xls.EndUpdate;
                  btnSearchA2.Enabled := True;
                  btnSearchA2P11.Enabled := True;
								end	else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
              end;
            5:
              begin
                if ( Not Assigned(Frm_WOR03) ) Or ( Frm_WOR03 = NIl ) then Frm_WOR03 := TFrm_WOR03.Create(Nil);

                frm_WOR03.cxgWkCashHis.DataController.SetRecordCount(0);
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  frm_WOR03.cxgWkCashHis.BeginUpdate;
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      ls_Rcrd.Insert(0, InttoStr(i + 1));

                      if ls_Rcrd[3] = '' then ls_Rcrd[3] := '0';
                      if ls_Rcrd[4] = '' then ls_Rcrd[4] := '0';
                      if ls_Rcrd[6] = '' then ls_Rcrd[6] := '0';

                      if Length(ls_Rcrd[1]) = 18 then
												ls_Rcrd[1] := Copy(ls_Rcrd[1], 1, 10) + ' ' + Copy(ls_Rcrd[1], 11, 8);

                      //고용보험료 셀의 내용만 조회:우선주석처리
                      if (gsColNM = '고용보험료' ) and (Pos(gsColNM, ls_Rcrd[2]) < 1) then Continue;

                      iRow := frm_WOR03.cxgWkCashHis.DataController.AppendRecord;
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 0] := ls_Rcrd[0];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 1] := ls_Rcrd[1];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 2] := ls_Rcrd[2];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 3] := ls_Rcrd[3];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 4] := ls_Rcrd[4];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 5] := ls_Rcrd[5];
                      frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 6] := ls_Rcrd[6];
											frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 7] := ls_Rcrd[9];  //M-캐시입출금액
											frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 8] := ls_Rcrd[10]; //M-캐시잔액
											frm_WOR03.cxgWkCashHis.DataController.Values[iRow, 9] := ls_Rcrd[7];
											frm_WOR03.cxgWkCashHis.DataController.Values[iRow,10] := ls_Rcrd[8];
										end;
                  finally
                    ls_Rcrd.Free;
                  end;
                  frm_WOR03.cxgWkCashHis.EndUpdate;
                  btnSearchA3.Enabled := True;
								end else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
                if frm_WOR03.cxgWkCashHis.DataController.RecordCount > 0 then
                  frm_WOR03.Show;
              end;
            6:
              begin
                slCommissionCd.Clear;
                cbWkComm.Properties.Items.Clear;
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      cbWkComm.Properties.Items.Add(ls_Rcrd[0]);
                      slCommissionCd.Add(ls_Rcrd[1]);
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                  if slCommissionCd.Count > 1 then
                  begin
                    cbWkComm.Properties.Items.Insert(0, '전체');
                    slCommissionCd.Insert(0, '');
                  end;
								end else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
                cbWkComm.ItemIndex := 0;
              end;
            8:
              begin
                if ( Not Assigned(Frm_WOR04) ) Or ( Frm_WOR04 = NIl ) then Frm_WOR04 := TFrm_WOR04.Create(Nil);

								iRow := cxgWkAttend.DataController.FocusedRecordIndex;
								if iRow < 0 then Exit;

								iwk_name := cxgWkAttend.GetColumnByFieldName('기사명').Index;
								sWkName := cxgWkAttend.DataController.Values[iRow, iwk_name];

								iwkSabun := cxgWkAttend.GetColumnByFieldName('기사사번').Index;
								sWkSabun := cxgWkAttend.DataController.Values[iRow, iWkSabun];

								Frm_WOR04.cxlbWkSabun.Caption := sWkName + '(' + sWkSabun + ')';
								
								Frm_WOR04.cxgWkAttend.DataController.SetRecordCount(0);
                Frm_WOR04.cxgWkAttend.BeginUpdate;
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      iRow := frm_WOR04.cxgWkAttend.DataController.AppendRecord;

                      // 1 Record 추가
                      if Length(ls_Rcrd[2]) = 18 then
                        ls_Rcrd[2] := Copy(ls_Rcrd[2], 1, 10) + ' ' + Copy(ls_Rcrd[2], 11, 8);

                      if ls_Rcrd[12] = '/' then ls_Rcrd[12] := '';
                      if ls_Rcrd[13] = '/' then ls_Rcrd[13] := '';
                      if ls_Rcrd[14] = '' then ls_Rcrd[14] := '0';
                      if ls_Rcrd[15] = '' then ls_Rcrd[15] := '0';
                      if ls_Rcrd[16] = '' then ls_Rcrd[16] := '0';

                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 0] := ls_Rcrd[0];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 1] := ls_Rcrd[4];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 2] := strtocall(ls_Rcrd[11]);
											Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 3] := ls_Rcrd[2];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 4] := ls_Rcrd[10];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 5] := ls_Rcrd[7];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 6] := ls_Rcrd[12];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 7] := ls_Rcrd[13];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 8] := ls_Rcrd[14];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 9] := ls_Rcrd[15];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 10] := ls_Rcrd[16];
                      Frm_WOR04.cxgWkAttend.DataController.Values[iRow, 11] := ls_Rcrd[1];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
								end	else
								begin
									GMessagebox('검색된 내용이 없습니다.', CDMSE);
								end;
                Frm_WOR04.cxgWkAttend.EndUpdate;
                if Frm_WOR04.cxgWkAttend.DataController.RecordCount > 0 then
                begin
                  Frm_WOR04.Show;
                end;
              end;

            11:
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Fail');
                ls_Rcrd := TStringList.Create;
                try
                  GetTextSeperationEx(',', lst_Result.item[0].attributes.getNamedItem('WkSabun').Text, ls_Rcrd);
                  if ls_Rcrd.Strings[0] <> '' then
                  begin
                    GMessagebox('출근 실패 기사 사번 입니다.' + #13#10
                      + '---------------------------' + #13#10
                      + ls_Rcrd.Text + #13#10
                      + '---------------------------', CDMSE);
                  end else
                  begin
                    GMessagebox('정상 처리하였습니다.', CDMSI);
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
          end;
        end else
        if Copy(ls_ClientKey, 1, 5) = 'WOR01' then
        begin
          frm_WOR01.proc_recieve(ls_rxxml);
        end else
        if ls_ClientKey = 'BLACKLIST' then
        begin
          DisplayBlackList(ls_rxxml);
        end;
      end else
      begin
        btnSearchA2.Enabled := True;
        btnSearchA2P11.Enabled := True;
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      btnSearchA2.Enabled := True;
      btnSearchA2P11.Enabled := True;
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
    btnSearchA2.Enabled := True;
    btnSearchA2P11.Enabled := True;
  end;
end;

procedure TFrm_WOR.DisplayBlackList(AXmlData: string);
var
  I, J, ARow: Integer;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
begin
  cxViewBlockList.DataController.SetRecordCount(0);

  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlData) then
      Exit;

    if (0 < GetXmlRecordCount(AXmlData)) then
    begin
      cxViewBlockList.DataController.BeginUpdate;
      try
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
        ls_Rcrd := TStringList.Create;
        try
          for I := 0 to lst_Result.length - 1 do
          begin
            GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
            if ls_Rcrd.Count = 12 then
            begin
              ARow := cxViewBlockList.DataController.AppendRecord;

              for J := 0 to ls_Rcrd.Count - 1 do
              begin
                case J of
                  3, 4:
                    if Length(ls_Rcrd[J]) > 10 then
                      cxViewBlockList.DataController.Values[ARow, J] := Copy(ls_Rcrd[J], 1, 10)
                    else
                      cxViewBlockList.DataController.Values[ARow, J] := ls_Rcrd[J];
                  6, 7:
                    cxViewBlockList.DataController.Values[ARow, J] := strtocall(ls_Rcrd[J]);
                  8:
                    begin
                      cxViewBlockList.DataController.Values[ARow, J] := StrToSsn(ls_Rcrd[J], True); // 주민등록번호 마킹
                      cxViewBlockList.DataController.Values[ARow, 12] := StrToSsn(ls_Rcrd[J]);      // 주민등록번호
                    end;
                  9:
                    cxViewBlockList.DataController.Values[ARow, J] := RemoveAll(ReplaceAll(ls_Rcrd[J], #10, ' '), #13);
                else
                  cxViewBlockList.DataController.Values[ARow, J] := ls_Rcrd[J];
                end;
              end;
            end;
          end;
        finally
          ls_Rcrd.Free;
        end;
        cxViewBlockList.Columns[4].SortOrder := soDescending;
      finally
        cxViewBlockList.DataController.EndUpdate;
      end;
    end else
    begin
      GMessagebox('검색된 내용이 없습니다.', CDMSE);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WOR.FormCreate(Sender: TObject);
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
  if GT_USERIF.ID = 'sntest' then btnGetList.Visible := True;

  cxPageControl1.ActivePageIndex := 0;

  cxPageControl1.Pages[0].TabVisible := (TCK_USER_PER.WOR_CashMng = '1');                                      // 302.기사캐쉬관리
  cxPageControl1.Pages[1].TabVisible := (TCK_USER_PER.WOR_Attend = '1');                                       // 303.기사배차현황
  cxPageControl1.Pages[2].TabVisible := (TCK_USER_PER.WOR_ShareBaecha = '1');                                  // 304.공유콜배차제한
  cxPageControl1.Pages[3].TabVisible := (TCK_USER_PER.WOR_Blacklist = '1');                                    // 305.블랙리스트
  cxPageControl1.Pages[4].TabVisible := (TCK_USER_PER.WOR_PeekTimeBlock = '1');                                // 306.심야배차제한현황
  cxPageControl1.Pages[5].TabVisible := (TCK_USER_PER.WOR_513TimeCard = '1');                                  // 307.기사출근표
	cxPageControl1.Pages[7].TabVisible := (TCK_USER_PER.WOR_NoWorker = '1');                                     // 309.미출근현황

  proc_init;

  slCommissionCd := TStringList.Create;

  try
    cxgWkCash.Columns[5].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[6].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[7].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[8].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[9].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[10].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[12].Properties := Frm_Main.gCurProperties;
    cxgWkCash.Columns[13].Properties := Frm_Main.gCurProperties;

    sg_xls.Columns[10].Properties := Frm_Main.gCurProperties;
    sg_xls.Columns[11].Properties := Frm_Main.gCurProperties;
    sg_xls.Columns[12].Properties := Frm_Main.gCurProperties;
  Except
  end;

  if (TCK_USER_PER.WOR_MngModify = '1') then
  begin
    N29.Visible := True;
  end else
  begin
    N29.Visible := False;
  end;
  proc_WkCommissionSearch;
  cxPcA2.ActivePageIndex := 0;

  //---------------------------------------------------------------------------- A3
  if (TCK_USER_PER.WOR_MngModify = '1') then
  begin
    N29.Visible := True;
  end else
  begin
    N29.Visible := False;
  end;

  //---------------------------------------------------------------------------- A4
  FShareBlockXml := TStringList.Create;
  FShareBlockXml2 := TStringList.Create;

  cxbShareCallAcc.Visible := (TCK_USER_PER.WOR_ShareBaechaSet = '1');       // 공유콜배차제한설정체크
  cxbShareCallDel.Visible := (TCK_USER_PER.WOR_ShareBaechaSet = '1');       // 공유콜배차제한설정체크

  N29.Visible := (TCK_USER_PER.WOR_MngModify = '1');

  //---------------------------------------------------------------------------- A7
	cxSEYear.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
	cxSEMonth.Value := StrToIntDef(FormatDateTime('mm', Now), 1);

  Grid4View.OptionsView.NoDataToDisplayinfoText := '';

	gATTENT_Day := 0; gATTENT_WK := 0;

	cxPageControl1.Pages[6].TabVisible := False;
//	cxPageControl1.Pages[8].TabVisible := False;

	if (GS_PRJ_AREA = 'S') or (GT_KAKAOUse) then chk_Kakao.visible := True;
end;

procedure TFrm_WOR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(slCommissionCd);
  Action := caFree;
end;

procedure TFrm_WOR.btnBklHistoryClick(Sender: TObject);
var
  ARow: Integer;
  APhone, ASsn: string;
begin
  ARow := cxViewBlockList.DataController.FocusedRecordIndex;

  if ARow < 0 then
  begin
    GMessagebox('선택된 기사가 없습니다.', CDMSE);
    Exit;
  end;

  APhone  := cxViewBlockList.DataController.Values[ARow, cxViewBlockList.GetColumnByFieldName('휴대폰번호').Index];
  ASsn    := cxViewBlockList.DataController.Values[ARow, cxViewBlockList.GetColumnByFieldName('주민등록번호').Index];

  ShowBlacklistHistory(APhone, ASsn);
end;

procedure TFrm_WOR.BtnCloseClick(Sender: TObject);
begin
  pnlHelpA7.Visible := False
end;

procedure TFrm_WOR.btnExcelA10Click(Sender: TObject);
begin
	if cxGridNoWork.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

	Frm_Main.sgExcel := '미출근현황.xls';
	Frm_Main.sgRpExcel := Format('기사>미출근현황]%s건/%s', [GetMoneyStr(cxGridNoWork.DataController.RecordCount), FExcelDownBeach]);
	Frm_Main.cxGridExcel := cxGridA10;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR.btnExcelA3Click(Sender: TObject);
begin
  if cxgWkAttend.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '기사배차현황.xls';
  Frm_Main.sgRpExcel := Format('기사>기사배차현황]%s건/%s', [GetMoneyStr(cxgWkAttend.DataController.RecordCount), FExcelDownBeach]);
  Frm_Main.cxGridExcel := cxGridA3;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR.btnExcelA7Click(Sender: TObject);
begin
  if Grid4View.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

	Frm_Main.sgExcel := '기사출근표.xls';
  if cxGrid7.Visible then
  begin
  	Frm_Main.sgRpExcel := Format('기사>기사출근표>%s건', [GetMoneyStr(Grid4View.DataController.RecordCount)]);
    Frm_Main.cxGridExcel := cxGrid7;
  end else
  if cxGrid2.Visible then
  begin
  	Frm_Main.sgRpExcel := Format('기사>기사출근표>%s건', [GetMoneyStr(grdWk.DataController.RecordCount)]);
    Frm_Main.cxGridExcel := cxGrid2;
  end;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR.btnExcelA9Click(Sender: TObject);
begin
  if cxGridState.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := '기사상태변경조회.xls';
  Frm_Main.sgRpExcel := Format('기사>기사상태변경조회]%s건/%s', [GetMoneyStr(cxGridState.DataController.RecordCount), FExcelDownBeach]);
  Frm_Main.cxGridExcel := cxGridA9;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR.btnSaveA8Click(Sender: TObject);
begin
	proc_Set_AboveToday;
end;

procedure TFrm_WOR.btnSearchA10Click(Sender: TObject);
begin
	proc_NoWorkerList;
end;

procedure TFrm_WOR.btnSearchA2Click(Sender: TObject);
begin
	case cxPcA2.ActivePageIndex of
    0:
      begin
				cxgWkCash.DataController.SetRecordCount(0);
				proc_search_wk_cash(1);
      end;
    1:
      begin
        sg_xls.DataController.SetRecordCount(0);
        proc_search_wk_cash(2);
      end;
  end;
end;

procedure TFrm_WOR.proc_BranchChange;
begin
  lblSosokNameA2.Caption := GetSosokInfo;
	lblSosokNameA3.Caption := GetSosokInfo;
	lblSosokNameA8.Caption := GetSosokInfo;
	lblSosokNameA10.Caption := GetSosokInfo;
//  lblSosokNameA4.Caption := GetSosokInfo;
//  lblSosokNameA5.Caption := GetSosokInfo;
//  lblSosokNameA6.Caption := GetSosokInfo;
//  lblSosokNameA7.Caption := GetSosokInfo;

  Case cxPageControl1.ActivePageIndex of
    0 : btnSearchA2Click(btnSearchA2);
//    1 : btnSearchA3Click(btnSearchA3);
  End;
end;

procedure TFrm_WOR.btnSearchA2P11Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		Exit;
	end;
	proc_search_wk_cash(3);
end;

procedure TFrm_WOR.btnSearchA2P12Click(Sender: TObject);
begin
  if (cxPcA2.ActivePageIndex = 0) and (cxgWkCash.DataController.RecordCount = 0) then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

  if (cxPcA2.ActivePageIndex = 1) and (sg_xls.DataController.RecordCount = 0) then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  if cxPcA2.ActivePageIndex = 0 then
  begin
    Frm_Main.sgExcel := '기사별캐쉬현황.xls';
    Frm_Main.sgRpExcel := Format('기사>기사캐쉬>기사별]%s건/%s', [GetMoneyStr(cxgWkCash.DataController.RecordCount), FExcelDownCash]);
    Frm_Main.cxGridExcel := cxGridA21;
    Frm_Main.proc_excel(0);
  end else
  begin
    Frm_Main.sgExcel := '기사캐쉬내역.xls';
    Frm_Main.sgRpExcel := Format('기사>기사캐쉬>세부내역]%s건/%s', [GetMoneyStr(sg_xls.DataController.RecordCount), FExcelDownCash]);
    Frm_Main.cxGridExcel := cxGridA22;
    Frm_Main.proc_excel(0);
  end;
end;

procedure TFrm_WOR.btnSearchA3Click(Sender: TObject);
begin
{	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;    }
	cxgWkAttend.DataController.SetRecordCount(0);
	if cbSelGubun.ItemIndex = 0 then proc_WkAttend else
	if cbSelGubun.ItemIndex = 1 then proc_WKNotWork;
end;

procedure TFrm_WOR.btnSearchA4Click(Sender: TObject);
begin
{	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;    }
	if Not chk_Kakao.checked then
	begin
		cxgOwner.DataController.SetRecordCount(0);
		cxgOther.DataController.SetRecordCount(0);

		cbbShareOtherSearch.ItemIndex := 0;
		cbbShareOwnerSearch.ItemIndex := 0;
		edtShareOtherSearch.Clear;
		edtShareOwnerSearch.Clear;

		proc_NotShare;
	end else
	begin
		cxGridKakaoBlock.DataController.SetRecordCount(0);
		proc_KakaoNotShare;
	end;
end;

procedure TFrm_WOR.btnSearchA5Click(Sender: TObject);
var
  Name, Phone, Ssn: string;
  ls_TxLoad, ls_TxQry, WhereQuery, sQueryTemp: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;

   if fGetChk_Search_HdBrNo('블랙리스트') then Exit;

	Screen.Cursor := crHourGlass;
  try
    Name  := Param_Filtering(edtBklName.Text);
    Phone := Param_Filtering(edtBklPhone.Text);
    Ssn   := Param_Filtering(edtBklSsn.Text);

    if (Name <> '') and (Length(Name) < 2) then
    begin
      GMessagebox('기사명 검색은 2자 이상부터 가능합니다.', CDMSE);
      Exit;
    end;

    WhereQuery := '';
    if Name <> '' then
      WhereQuery := WhereQuery + ' AND names LIKE ''%' + Name + '%''';
    if Phone <> '' then
      WhereQuery := WhereQuery + ' AND ((wk_hp = ''' + Phone + ''') OR (wk_phone = ''' + Phone + '''))';
    if Ssn <> '' then
      WhereQuery := WhereQuery + ' AND wk_snum = ''' + Ssn + '''';

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');

    fGet_BlowFish_Query(GSQ_WK_BLACKLIST, sQueryTemp);
    ls_TxQry := sQueryTemp + WhereQuery;

    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BLACKLIST', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        Application.ProcessMessages;
				proc_recieve(slReceive);
      end;
    except
      GMessagebox('기사 패널티 초기화실패되었습니다.',CDMSE);
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_WOR.btnSearchA6Click(Sender: TObject);
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	ARow, I, J, k, ErrCode: Integer;
begin
{	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSE);
		exit;
	end;      }

  if fGetChk_Search_HdBrNo('심야배차제한') then Exit;

  //심야배차제한 기사 목록
  // - 조회구분코드(1 본사, ELSE 지사)
  // - 본사/지사코드
  // - 검색종류 (1:기사명,2:자체사번:3:단말기+폰번호 ELSE 전체)
  // - 검색키워드
  Param := '%s│%s│%d│%s';
  if GT_SEL_BRNO.GUBUN = '1' then
    Param := Format(Param, ['0', GT_SEL_BRNO.BrNo, cbPeakType.ItemIndex, Param_Filtering(edtPeakSearch.Text)])
  else
    Param := Format(Param, ['1', GT_SEL_BRNO.HDNO, cbPeakType.ItemIndex, Param_Filtering(edtPeakSearch.Text)])
  ;

	try
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('', 'wk_pbl.s_wk_list', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('심야 배차제한 기사 목록 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				cxGridPeakTime.DataController.SetRecordCount(0);
				cxGridPeakTime.BeginUpdate;
				for j := 0 to slList.Count - 1 do
				begin
					Frm_Flash.cxPBar1.Position := j + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
					Application.ProcessMessages;
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);

					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
					try
						for I := 0 to lst_Result.length - 1 do
						begin
							if lst_Result.item[I].attributes.getNamedItem('Value').Text = '' then
								Continue;

							GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
							begin
								if scb_FamilyBrCode.IndexOf(ls_Rcrd[18]) = -1 then Continue;
							end;	   //권한있는 지사일경우만 그리드표기

        ARow := cxGridPeakTime.DataController.AppendRecord;

							cxGridPeakTime.DataController.Values[ARow, 0] := ARow + 1; //No.
							for k := 0 to ls_Rcrd.Count - 2 do // 마지막 지사코드는 패밀리 지사권한 체크용으로 추가 20180516 KHS
								cxGridPeakTime.DataController.Values[ARow, k + 1] := ls_Rcrd[k];
						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			finally
				xdom := Nil;
				cxGridPeakTime.EndUpdate;
			end;
			if cxGridPeakTime.DataController.RecordCount = 0 then
			begin
				GMessagebox('검색된 내용이 없습니다.', CDMSE);
			end;
		finally
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
		end;
	end;
end;

procedure TFrm_WOR.btnSearchA7Click(Sender: TObject);
begin
	Grid4View.DataController.SetRecordCount(0);
	grdWK.DataController.SetRecordCount(0);
	proc_ATTENT_MONTHLY;
end;
procedure TFrm_WOR.btnSearchA8Click(Sender: TObject);
begin
	proc_Above_Init;
	proc_AboveOrderSHARE_INFO;
	proc_AboveOrderWKList;
end;

procedure TFrm_WOR.btnSearchA9Click(Sender: TObject);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i, j, iRow : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
begin
	SetDebugeWrite('TFrm_WOR01.btnStateListClick');
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

  Name := Trim(cxEdtSelText9.Text);
  if (Name = '') then
  begin
    GMessagebox('검색어를 입력하세요.', CDMSE);
    cxEdtSelText9.SetFocus;
    Exit;
  end;

  if cbSelList9.ItemIndex = 1 then
  begin
    if (Name <> '') and (Length(Name) < 2) then
    begin
      GMessagebox('기사명 검색은 2자 이상부터 가능합니다.', CDMSE);
      Exit;
    end;
  end;

  FExcelDownBeach := Format('%s/기간:%s~%s',
    [
        GetSelBrInfo
      , cxDtStartA9.Text, cxDtEndA9.Text
    ]);
  //////////////////////////////////////////////////////////////////////////////

	try
    // 본사코드│지사코드│검색구분│검색키워드(기사사번)│시작일(yyyymmddhh24miss)│종료일(yyyymmddhh24miss)
		Param := '';

		if GT_USERIF.LV = '60' then
		begin
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
				Param := GT_SEL_BRNO.HDNO
			else
				Param := GT_USERIF.HD;
			Param := Param + '│' + IfThen(GT_SEL_BRNO.GUBUN = '0', '', GT_SEL_BRNO.BrNo);
		end else
		if GT_USERIF.LV = '40' then
		begin
			Param := GT_USERIF.HD;
			Param := Param + '│' + GT_USERIF.BR;
		end else
		begin
			Param := GT_USERIF.HD;
			Param := Param + '│' + GT_USERIF.BR;
		end;

    if cbSelList9.ItemIndex = 0 then Param := Param + '│0'
                                else Param := Param + '│1';

		Param := Param + '│' +  Trim(cxEdtSelText9.Text);

    Param := Param + '│' +  FormatDateTime('yyyymmdd', cxDtStartA9.Date) + '090000';
    Param := Param + '│' +  FormatDateTime('yyyymmdd', cxDtEndA9.Date) + '090000';

		slList := TStringList.Create;
		Screen.Cursor := crHourGlass;
		cxGridState.DataController.SetRecordCount(0);
    if not RequestBasePaging(GetSel06('GET_LIST_WK_STATUS_LOG', 'MNG_WK.GET_LIST_WK_STATUS_LOG', '100', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('기사 상태변경 리스트조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Screen.Cursor := crDefault;
      Exit;
    end;

		xdom := ComsDomDocument.Create;
		try
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxGridState.BeginUpdate;
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
              GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
              Application.ProcessMessages;

              iRow := cxGridState.DataController.AppendRecord;
              ls_Rcrd.Insert(0, IntToStr(iRow + 1));

              cxGridState.DataController.Values[iRow, 0] := ls_Rcrd[0];
              cxGridState.DataController.Values[iRow, 1] := ls_Rcrd[2] + '[' + ls_Rcrd[1] + ']';      //지사명(코드)   // 지사
              cxGridState.DataController.Values[iRow, 2] := ls_Rcrd[3];   // 기사사번
              cxGridState.DataController.Values[iRow, 3] := ls_Rcrd[4];   // 기사명
              cxGridState.DataController.Values[iRow, 4] := ls_Rcrd[5];   // 변경일자
              cxGridState.DataController.Values[iRow, 5] := ls_Rcrd[6];   // 변경내역
              cxGridState.DataController.Values[iRow, 6] := ls_Rcrd[7];   // 변경ID
            end;
          finally
            ls_Rcrd.Free;
          end;
        end;
			end;
		finally
			xdom := Nil;
			cxGridState.EndUpdate;
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

{
procedure TFrm_WOR.proc_AddWK_ATTENT(AHDNO, ABRNO : string);
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	slList, ls_Rcrd : TStringList;
	ErrCode: integer;

	I, j, k, tmpCnt : Integer;
	ArrCnt : array of Integer;
	iRow, tATTENT_1, tATTENT_2, tUES_AMT: integer;
	iTmp1, iTmp2, iTmp3, iTmp4 : integer;
	tmpWKInfos: array of TWK_ATTEND_MONTHLYRec;
	sBrNo, sBrNm, sTmp : string;
begin
	SetDebugeWrite('TFrm_WOR01.proc_AddWK_ATTENT');
	Try

		if cxSEMonth.Value < 10 then Param := IntToStr(cxSEYear.Value) + '0' + IntToStr(cxSEMonth.Value) //       //검색일자
														else Param := IntToStr(cxSEYear.Value) + IntToStr(cxSEMonth.Value);//       //검색일자

		Param := Param + '│' + AHDNO;
		Param := Param + '│' + ABRNO;
		Param := Param + '│'  ;

		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('GET_ATTENT_MONTHLY', 'MNG_WK.ATTEND_MONTHLY', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사 출근표 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
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

					lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
					tmpCnt := StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0);

					SetLength(tmpWKInfos, tmpCnt);
					ZeroMemory(tmpWKInfos, Length(tmpWKInfos));

					SetLength(ArrCNT,31);

					if tmpCnt > 0 then
					begin
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
						ls_Rcrd := TStringList.Create;
						try
							for k := 0 to lst_Result.length - 1 do
							begin
								ls_Rcrd.Clear;
								GetTextSeperationEx('│', lst_Result.item[k].attributes.getNamedItem('Value').Text, ls_Rcrd);

								/////////전체 기사 출근사항///////////////////
								FWKInfos[gStIdx].BrNo := ls_Rcrd[38];
								FWKInfos[gStIdx].BrName := ls_Rcrd[39];
								FWKInfos[gStIdx].WKSb1 := ls_Rcrd[0];
								FWKInfos[gStIdx].WKSb2 := ls_Rcrd[2];
								FWKInfos[gStIdx].WKNm := ls_Rcrd[3];
								for i := 0 to 30 do
								begin
									FWKInfos[gStIdx].Day[i] := Trim(ls_Rcrd[i + 4]);
								end;
								FWKInfos[gStIdx].DayCnt := ls_Rcrd[35];    //출근일수
								FWKInfos[gStIdx].DayCntPer := ls_Rcrd[36];    //출근율
								FWKInfos[gStIdx].AMT := ls_Rcrd[37];    //사용료
								/////////전체 기사 출근사항///////////////////
						
								/////////현재 조회중인 지사 기사 출근사항///////////////////
								tmpWKInfos[k].BrNo := ls_Rcrd[38];
								tmpWKInfos[k].BrName := ls_Rcrd[39];
								tmpWKInfos[k].WKSb1 := ls_Rcrd[0];
								tmpWKInfos[k].WKSb2 := ls_Rcrd[2];
								tmpWKInfos[k].WKNm := ls_Rcrd[3];
								for i := 0 to 30 do
								begin
									tmpWKInfos[k].Day[i] := Trim(ls_Rcrd[i + 4]);
								end;

								tmpWKInfos[k].DayCnt := ls_Rcrd[35];    //출근일수
								tmpWKInfos[k].DayCntPer := ls_Rcrd[36];    //출근율
								tmpWKInfos[k].AMT := ls_Rcrd[37];    //사용료
								/////////현재 조회중인 지사 기사 출근사항///////////////////
								inc(gStIdx);
							end;	
						finally
							ls_Rcrd.Free;
						end;
					end;
				end
			finally
				xdom := nil;
				Frm_Flash.Hide;
				FreeAndNil(slList);
			end;
			
			if tmpCnt > 0 then //검색된 내용이 있다면
			begin
				k := 0;
				iTmp1 := 0; iTmp2 := 0; iTmp3 := 0; iTmp4 := 0;
				sBrNo := '';
				while k <= Length(tmpWKInfos) - 1 do
				begin
					if tmpWKInfos[k].BrNo = '' then 
					begin
						Break;
					end;
					sBrNo := tmpWKInfos[k].BrNo;
					sBrNm := tmpWKInfos[k].BrName;
						
					iTmp1 := iTmp1 + 1; //대상인원

					for i := 0 to 30 do
					begin
						if Trim(tmpWKInfos[k].Day[i]) = '○' then
						begin
							ArrCNT[i] := ArrCNT[i] + 1; //일별 카운트 배열
						end;
					end;
					iTmp2 := iTmp2 + StrToIntDef(tmpWKInfos[k].DayCnt,0); //일별카운트합계
					iTmp3 := iTmp3 + StrToIntDef(tmpWKInfos[k].DayCntPer,0); //일별출근율 합계
					iTmp4 := iTmp4 + StrToIntDef(tmpWKInfos[k].AMT,0); //일별출근율합계
						
					inc(k);
				end;
						
				Grid4View.BeginUpdate;
				iRow := Grid4View.DataController.AppendRecord;
				SetGridData(Grid4View, iRow,  0, '');
				SetGridData(Grid4View, iRow,  1, sBrNm);                    //지사명
				SetGridData(Grid4View, iRow,  2, sBrNo);                    //지사코드
				SetGridData(Grid4View, iRow,  3, IntToStr(iTmp1) + '명');        //기사총원

				for i := 0 to 30 do 
				begin
					SetGridData(Grid4View, iRow, i + 4, ArrCNT[i]); //일별 카운트 배열
				end;
				SetGridData(Grid4View, iRow, 35, iTmp2);                    //출근일수
				if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  28 then sTmp :=	IntToStr(Round(((iTmp2/iTmp1)/28)*100)) + '%' else
				if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  29 then sTmp :=	IntToStr(Round(((iTmp2/iTmp1)/29)*100)) + '%' else
				if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  30 then sTmp :=	IntToStr(Round(((iTmp2/iTmp1)/30)*100)) + '%' else
				if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  31 then sTmp :=	IntToStr(Round(((iTmp2/iTmp1)/31)*100)) + '%';
				SetGridData(Grid4View, iRow, 36, sTmp);                    //출근율
				SetGridData(Grid4View, iRow, 37, iTmp4);                    //사용료

				Grid4View.EndUpdate;
			end;
		finally
			Screen.Cursor := crDefault;
		end;
	except
		on e: exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
	end;
end;
}
procedure TFrm_WOR.proc_AboveOrderSHARE_INFO;
var
	iCnt, ErrCode : Integer;
	Param, XmlData, ErrMsg : String;
	lst_Result: IXMLDomNodeList;
	xdom: msDomDocument;
	ls_Rcrd, slTmp, slList : TStringList;
	iRow, i, j : integer;
	sBrNo, sHdNo : string;
begin
	SetDebugeWrite('TFrm_WOR.proc_AboveOrderWKList');
	Try
		Param := GT_USERIF.ShareNo;
		
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then
			Param := Param + '│' + GT_SEL_BRNO.HDNO
		else
			Param := Param + '│' + GT_USERIF.HD;

		if (GT_USERIF.lv='60') and (GT_SEL_BRNO.GUBUN <> '1') then
			Param := Param + '│' + ''
		else
			Param := Param + '│' + GT_SEL_BRNO.BRNO;

		slList := TStringList.Create;
		Screen.Cursor := crHourGlass;
		Grid8ViewWK.DataController.SetRecordCount(0);
		if not RequestBasePaging(GetSEL06('GET_AD_SHARE_INFO', 'MNG.GET_BD_POPUP_LIST', '1', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('연합기준 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			Grid8ViewWK.BeginUpdate;
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
							iRow := Grid8ViewWK.DataController.AppendRecord;
							edt_AboveWkCnt.Caption := ls_Rcrd[0] + ' ';    					 //우선배차기사 수
							edt_MarkWkCnt.Caption := ls_Rcrd[1] + ' ';    					 //기호우선배차  수
							edt_MonTime1.Caption := Copy(ls_Rcrd[2], 1, 2) + ':' + Copy(ls_Rcrd[2], 3, 2);
							edt_MonTime2.Caption := Copy(ls_Rcrd[3], 1, 2) + ':' + Copy(ls_Rcrd[3], 3, 2);
							edt_MonCnt.Caption := ls_Rcrd[4];  
							edt_MonAmt.Caption := FormatFloat('#,##0', StrToFloatDef(ls_Rcrd[5], 0)) + ' ';  
							edt_TueTime1.Caption := Copy(ls_Rcrd[6], 1, 2) + ':' + Copy(ls_Rcrd[6], 3, 2);
							edt_TueTime2.Caption := Copy(ls_Rcrd[7], 1, 2) + ':' + Copy(ls_Rcrd[7], 3, 2);
							edt_TueCnt.Caption := ls_Rcrd[8];  
							edt_TueAmt.Caption := FormatFloat('#,##0', StrToFloatDef(ls_Rcrd[9], 0)) + ' ';
							edt_WedTime1.Caption := Copy(ls_Rcrd[10], 1, 2) + ':' + Copy(ls_Rcrd[10], 3, 2);
							edt_WedTime2.Caption := Copy(ls_Rcrd[11], 1, 2) + ':' + Copy(ls_Rcrd[11], 3, 2);
							edt_WedCnt.Caption := ls_Rcrd[12];  
							edt_WedAmt.Caption := FormatFloat('#,##0', StrToFloatDef(ls_Rcrd[13], 0)) + ' ';
							edt_ThuTime1.Caption := Copy(ls_Rcrd[14], 1, 2) + ':' + Copy(ls_Rcrd[14], 3, 2);
							edt_ThuTime2.Caption := Copy(ls_Rcrd[15], 1, 2) + ':' + Copy(ls_Rcrd[15], 3, 2);
							edt_ThuCnt.Caption := ls_Rcrd[16];  
							edt_ThuAmt.Caption := FormatFloat('#,##0', StrToFloatDef(ls_Rcrd[17], 0)) + ' ';
							edt_FriTime1.Caption := Copy(ls_Rcrd[18], 1, 2) + ':' + Copy(ls_Rcrd[18], 3, 2);
							edt_FriTime2.Caption := Copy(ls_Rcrd[19], 1, 2) + ':' + Copy(ls_Rcrd[19], 3, 2);
							edt_FriCnt.Caption := ls_Rcrd[20];  
							edt_FriAmt.Caption := FormatFloat('#,##0', StrToFloatDef(ls_Rcrd[21], 0)) + ' ';
							edt_SatTime1.Caption := Copy(ls_Rcrd[22], 1, 2) + ':' + Copy(ls_Rcrd[22], 3, 2);
							edt_SatTime2.Caption := Copy(ls_Rcrd[23], 1, 2) + ':' + Copy(ls_Rcrd[23], 3, 2);
							edt_SatCnt.Caption := ls_Rcrd[24];  
							edt_SatAmt.Caption := FormatFloat('#,##0', StrToFloatDef(ls_Rcrd[25], 0)) + ' ';  
							edt_SunTime1.Caption := Copy(ls_Rcrd[26], 1, 2) + ':' + Copy(ls_Rcrd[26], 3, 2);
							edt_SunTime2.Caption := Copy(ls_Rcrd[27], 1, 2) + ':' + Copy(ls_Rcrd[27], 3, 2);
							edt_SunCnt.Caption := ls_Rcrd[28];  
							edt_SunAmt.Caption := FormatFloat('#,##0', StrToFloatDef(ls_Rcrd[29], 0)) + ' ';  

							edt_NowTime1.Text := Copy(ls_Rcrd[30], 1, 2) + ':' + Copy(ls_Rcrd[30], 3, 2);
							edt_NowTime2.Text := Copy(ls_Rcrd[31], 1, 2) + ':' + Copy(ls_Rcrd[31], 3, 2);
							edt_NowCnt.Text := ls_Rcrd[32] + ' ';   
							edt_NowAmt.Text := FormatFloat('#,##0', StrToFloatDef(ls_Rcrd[33], 0)) + ' '; 
						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			end;
		finally
			xdom := Nil;
			Grid8ViewWK.EndUpdate;
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

procedure TFrm_WOR.proc_AboveOrderWKList;
var
	ErrCode : Integer;
	Param, XmlData, ErrMsg : String;
	lst_Result: IXMLDomNodeList;
	xdom: msDomDocument;
	ls_Rcrd, slList : TStringList;
	iRow, i, j : integer;
begin
	SetDebugeWrite('TFrm_WOR.proc_AboveOrderWKList');
	Try
		Param := GT_USERIF.ShareNo;
		
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then
			Param := Param + '│' + GT_SEL_BRNO.HDNO
		else
			Param := Param + '│' + GT_USERIF.HD;

		if (GT_USERIF.lv='60') and (GT_SEL_BRNO.GUBUN <> '1') then
			Param := Param + '│' + ''
		else
			Param := Param + '│' + GT_SEL_BRNO.BRNO;

		Param := Param + '│' + IntToStr(cb_Mission.ItemIndex + 1);
		Param := Param + '│' + IntToStr(cb_For.ItemIndex);
		Param := Param + '│' + Trim(UpperCase(edt_Search.Text));

		slList := TStringList.Create;
		Screen.Cursor := crHourGlass;
		Grid8ViewWK.DataController.SetRecordCount(0);
		if not RequestBasePaging(GetSEL06('GET_AD_WK_LIST', 'MNG.GET_AD_WK_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('우선배차기사현황 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			Grid8ViewWK.BeginUpdate;
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
							iRow := Grid8ViewWK.DataController.AppendRecord;
							ls_Rcrd.Insert(0, IntToStr(iRow + 1));

							// 지사명    │지사코드    │기사사번  │자체사번  │성명│단말기│미션건수  │미션금액  │기호미션건수
   
							Grid8ViewWK.DataController.Values[iRow, 0] := ls_Rcrd[0];   					 //순번
							Grid8ViewWK.DataController.Values[iRow, 1] := ls_Rcrd[1]; //지사명      ;
							Grid8ViewWK.DataController.Values[iRow, 2] := ls_Rcrd[2]; 					   //지사코드
							Grid8ViewWK.DataController.Values[iRow, 3] := ls_Rcrd[3];   					 //기사사번
							Grid8ViewWK.DataController.Values[iRow, 4] := ls_Rcrd[4];   					 //자체사번
							Grid8ViewWK.DataController.Values[iRow, 5] := ls_Rcrd[5];   					 //성명
							Grid8ViewWK.DataController.Values[iRow, 6] := StrToCall(ls_Rcrd[6]);  //단말기
							Grid8ViewWK.DataController.Values[iRow, 7] := ls_Rcrd[7];   					 //미션건수
							Grid8ViewWK.DataController.Values[iRow, 8] := ls_Rcrd[8];  //미션금액
							Grid8ViewWK.DataController.Values[iRow, 9] := ls_Rcrd[9];  //기호미션건수

						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			end;
		finally
			xdom := Nil;
			Grid8ViewWK.EndUpdate;
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

procedure TFrm_WOR.proc_Above_Init;
begin
	edt_AboveWkCnt.Caption := '';
	edt_MarkWkCnt.Caption := '';
	edt_MonTime1.Caption := '';
	edt_MonTime2.Caption := '';
	edt_MonCnt.Caption := '';
	edt_MonAmt.Caption := '';
	edt_TueTime1.Caption := '';
	edt_TueTime2.Caption := '';
	edt_TueCnt.Caption := '';
	edt_TueAmt.Caption := '';
	edt_WedTime1.Caption := '';
	edt_WedTime2.Caption := '';
	edt_WedCnt.Caption := '';
	edt_WedAmt.Caption := '';
	edt_ThuTime1.Caption := '';
	edt_ThuTime2.Caption := '';
	edt_ThuCnt.Caption := '';
	edt_ThuAmt.Caption := '';
	edt_FriTime1.Caption := '';
	edt_FriTime2.Caption := '';
	edt_FriCnt.Caption := '';
	edt_FriAmt.Caption := '';
	edt_SatTime1.Caption := '';
	edt_SatTime2.Caption := '';
	edt_SatCnt.Caption := '';
	edt_SatAmt.Caption := '';
	edt_SunTime1.Caption := '';
	edt_SunTime2.Caption := '';
	edt_SunCnt.Caption := '';
	edt_SunAmt.Caption := '';

	edt_NowTime1.Text := '00:00';
	edt_NowTime2.Text := '00:00';
	edt_NowCnt.Text := '';
	edt_NowAmt.Text := '';
end;

procedure TFrm_WOR.proc_AddWK_ATTENT(AHDNO, ABRNO : string);
var
	slList, StrList: TStringList;
	ErrCode: integer;
	dt_sysdate2: string;

	XmlData, Param, ErrMsg: string;
	I, j, k : Integer;
	tmpCnt: integer;
	tmpCntStr: string;
	tmpStr: string;
	ArrSt : array of string;
	ArrCnt : array of Integer;
	iRow, tATTENT_1, tATTENT_2, tUES_AMT: integer;
	iTmp1, iTmp2, iTmp3, iTmp4, iDay : integer;
	tmpWKInfos: array of TWK_ATTEND_MONTHLYRec;
	sBrNo, sBrNm, sTmp : string;
begin
	SetDebugeWrite('TFrm_WOR01.proc_AddWK_ATTENT');
	Try

		if cxSEMonth.Value < 10 then Param := IntToStr(cxSEYear.Value) + '0' + IntToStr(cxSEMonth.Value) //       //검색일자
														else Param := IntToStr(cxSEYear.Value) + IntToStr(cxSEMonth.Value);//       //검색일자

		Param := Param + '│' + AHDNO;
		Param := Param + '│' + ABRNO;
		Param := Param + '│'  ;

		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel05('GET_ATTENT_MONTHLY', 'MNG_WK.ATTEND_MONTHLY', '10000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('기사 출근표 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				FreeAndNil(slList);
				Exit;
			end;

			StrList := TStringList.Create;
		  Grid4View.BeginUpdate;
      grdWk.BeginUpdate;
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

				SetLength(tmpWKInfos, 0);
				SetLength(tmpWKInfos, tmpCnt);
				ZeroMemory(tmpWKInfos, Length(tmpWKInfos));

				SetLength(ArrSt,tmpCnt);
				tmpStr:=xmlData;
				tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
				tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
				tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

				if Pos('<Result Value=',XmlData)>0 then
					tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

				iDay := DaysInAMonth(cxSEYear.Value, cxSEMonth.Value);

				SetLength(ArrCNT,31);
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

						/////////전체 기사 출근사항///////////////////
						FWKInfos[gStIdx].BrNo := StrList[38];
						FWKInfos[gStIdx].BrName := StrList[39];
						FWKInfos[gStIdx].WKSb1 := StrList[0];
						FWKInfos[gStIdx].WKSb2 := StrList[2];
						FWKInfos[gStIdx].WKNm := StrList[3];
						for i := 0 to 30 do
						begin
							FWKInfos[gStIdx].Day[i] := Trim(StrList[i + 4]);
						end;
						FWKInfos[gStIdx].DayCnt := StrList[35];    //출근일수
						FWKInfos[gStIdx].DayCntPer := StrList[36];    //출근율
						FWKInfos[gStIdx].AMT := StrList[37];    //사용료
						/////////전체 기사 출근사항///////////////////
						
						/////////현재 조회중인 지사 기사 출근사항///////////////////
						tmpWKInfos[k].BrNo := StrList[38];
						tmpWKInfos[k].BrName := StrList[39];
						tmpWKInfos[k].WKSb1 := StrList[0];
						tmpWKInfos[k].WKSb2 := StrList[2];
						tmpWKInfos[k].WKNm := StrList[3];
						for i := 0 to 30 do
						begin
							tmpWKInfos[k].Day[i] := Trim(StrList[i + 4]);
						end;

						tmpWKInfos[k].DayCnt := StrList[35];    //출근일수
						tmpWKInfos[k].DayCntPer := StrList[36];    //출근율
						tmpWKInfos[k].AMT := StrList[37];    //사용료
						/////////현재 조회중인 지사 기사 출근사항///////////////////
						inc(gStIdx);
					end;	
				end;

				if tmpCnt > 0 then //검색된 내용이 있다면
				begin
					k := 0;
					iTmp1 := 0; iTmp2 := 0; iTmp3 := 0; iTmp4 := 0;
					sBrNo := '';
					while k <= Length(tmpWKInfos) - 1 do
					begin
						if tmpWKInfos[k].BrNo = '' then 
						begin
							Break;
						end;
						sBrNo := tmpWKInfos[k].BrNo;
						sBrNm := tmpWKInfos[k].BrName;
						
						iTmp1 := iTmp1 + 1; //대상인원

						for i := 0 to 30 do
						begin
							if Trim(tmpWKInfos[k].Day[i]) = '○' then
							begin
								ArrCNT[i] := ArrCNT[i] + 1; //일별 카운트 배열
							end;
						end;
						iTmp2 := iTmp2 + StrToIntDef(tmpWKInfos[k].DayCnt,0); //일별카운트합계
						iTmp3 := iTmp3 + StrToIntDef(tmpWKInfos[k].DayCntPer,0); //일별출근율 합계
						iTmp4 := iTmp4 + StrToIntDef(tmpWKInfos[k].AMT,0); //일별출근율합계

            iRow := grdWk.DataController.AppendRecord;
            SetGridData(grdWk, iRow,  0, '');                       //지사명
            SetGridData(grdWk, iRow,  1, sBrNm);                    //지사명
            SetGridData(grdWk, iRow,  2, sBrNo);                    //지사명
            SetGridData(grdWk, iRow,  3, FWKInfos[iRow].WKNm);         //지사코드
            for i := 0 to 30 do
            begin
              SetGridData(grdWk, iRow, i + 4, FWKInfos[iRow].Day[i]); //일별 카운트 배열
            end;
            SetGridData(grdWk, iRow, 35, StrToIntDef(FWKInfos[iRow].DayCnt,0));      //일별카운트합계
            SetGridData(grdWk, iRow, 36, IntToStr(StrToIntDef(FWKInfos[iRow].DayCntPer,0)) + '%'); //일별출근율 합계
            SetGridData(grdWk, iRow, 37, StrToIntDef(FWKInfos[iRow].AMT,0)); //일별출근율합계;

						inc(k);
					end;

					iRow := Grid4View.DataController.AppendRecord;
					SetGridData(Grid4View, iRow,  0, '');
					SetGridData(Grid4View, iRow,  1, sBrNm);                    //지사명
					SetGridData(Grid4View, iRow,  2, sBrNo);                    //지사코드
					SetGridData(Grid4View, iRow,  3, FormatCash(iTmp1) + '명');        //기사총원
					gATTENT_WK := gATTENT_WK + iTmp1;

					for i := 0 to 30 do 
					begin
						SetGridData(Grid4View, iRow, i + 4, ArrCNT[i]); //일별 카운트 배열
						gArrCNT[i] := gArrCNT[i] + ArrCNT[i];
					end;
					SetGridData(Grid4View, iRow, 35, iTmp2);                    //출근일수
					gATTENT_Day := gATTENT_Day + iTmp2;
					if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  28 then sTmp :=	IntToStr(Round(((iTmp2/iTmp1)/28)*100)) + '%' else
					if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  29 then sTmp :=	IntToStr(Round(((iTmp2/iTmp1)/29)*100)) + '%' else
					if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  30 then sTmp :=	IntToStr(Round(((iTmp2/iTmp1)/30)*100)) + '%' else
					if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  31 then sTmp :=	IntToStr(Round(((iTmp2/iTmp1)/31)*100)) + '%';
					SetGridData(Grid4View, iRow, 36, sTmp);                    //출근율
					SetGridData(Grid4View, iRow, 37, iTmp4);                    //사용료
					gtUES_AMT := gtUES_AMT + iTmp4;
				end;
			end;  
			Grid4View.Endupdate;
      grdWk.EndUpdate;
		finally
			StrList.Free;
			slList.Free;
		end;
  except on E: Exception do
    Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR.proc_ATTENT_MONTHLY;
var i,iDay : integer;
begin
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
	begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

	if fGetChk_Search_HdBrNo('출근표') then Exit;

	if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  31 then
	begin
		Grid4View.Columns[32].Visible := True;
		Grid4View.Columns[33].Visible := True;
		Grid4View.Columns[34].Visible := True;

		Grid4ViewWK.Columns[30].Visible := True;
		Grid4ViewWK.Columns[31].Visible := True;
		Grid4ViewWK.Columns[32].Visible := True;

		iDay := 31;
	end else
	if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  30 then
	begin
		Grid4View.Columns[32].Visible := True;
		Grid4View.Columns[33].Visible := True;
		Grid4View.Columns[34].Visible := False;

		Grid4ViewWK.Columns[30].Visible := True;
		Grid4ViewWK.Columns[31].Visible := True;
		Grid4ViewWK.Columns[32].Visible := False;

		iDay := 30;
	end else
	if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  29 then
	begin
		Grid4View.Columns[32].Visible := True;
		Grid4View.Columns[33].Visible := False;
		Grid4View.Columns[34].Visible := False;

		Grid4ViewWK.Columns[30].Visible := True;
		Grid4ViewWK.Columns[31].Visible := False;
		Grid4ViewWK.Columns[32].Visible := False;

		iDay := 29;
	end else
	if DaysInAMonth(cxSEYear.Value, cxSEMonth.Value) =  28 then
	begin
		Grid4View.Columns[32].Visible := False;
		Grid4View.Columns[33].Visible := False;
		Grid4View.Columns[34].Visible := False;

		Grid4ViewWK.Columns[30].Visible := False;
		Grid4ViewWK.Columns[31].Visible := False;
		Grid4ViewWK.Columns[32].Visible := False;

		iDay := 28;
	end;

	Screen.Cursor := crHourGlass;
  try
    Grid4View.DataController.SetRecordCount(0);
	  SetLength(FWKInfos, 0);
    SetLength(FWKInfos, 10000);
    ZeroMemory(FWKInfos, Length(FWKInfos));

    gStIdx := 0; //배열시작 인덱스 초기화
    gATTENT_WK := 0;  gATTENT_Day := 0;  gtUES_AMT := 0;

    for i := 0 to Length(gArrCNT) - 1 do
    begin
     gArrCNT[i] := 0;
     gGroupArrCnt[i] := 0;
    end;

    if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사만 선택
    begin
      cxGrid7.Visible := False;
      cxGrid2.Visible := True;
      cxGrid2.Align := alClient;
      if ( GT_USERIF.Family = 'y' ) then     // 패밀리관리자
      begin
        for i := 0 to scb_HdCode.Count -1 do
        begin
          if GT_SEL_BRNO.HDNO = scb_HdCode[i] then
            proc_AddWK_ATTENT(GT_SEL_BRNO.HDNO, scb_BranchCode[i]);
        end;
      end	else   //본사관리자
      begin
        for i := 0 to scb_HdCode.Count -1 do
        begin
          if GT_USERIF.HD = scb_HdCode[i] then
            proc_AddWK_ATTENT(GT_USERIF.HD, scb_BranchCode[i]);
        end;
      end;
    end	else
    if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN = '1') then  //본사, 지사
    begin
      cxGrid7.Visible := True;
      cxGrid2.Visible := False;
      proc_AddWK_ATTENT(GT_SEL_BRNO.HDNO, GT_SEL_BRNO.BrNo);
    end else
    begin	//지사관리자, 상담원
      cxGrid7.Visible := True;
      cxGrid2.Visible := False;
      proc_AddWK_ATTENT(GT_USERIF.HD, GT_USERIF.BR);
    end;

    if Grid4View.DataController.RecordCount = 0 then
    begin
      GMessagebox('검색된 내용이 없습니다.', CDMSE);
      Screen.Cursor := crDefault;
      exit;
    end;

    if cxGrid7.Visible then Grid4View.ViewData.Expand(True);
  finally
  	Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_WOR.btnShareOtherSearchClick(Sender: TObject);
begin
  DispShareBlockList(cxgOther, FShareBlockXml, cbbShareOtherSearch.Text, edtShareOtherSearch.Text);
end;

procedure TFrm_WOR.btnShareOwnerSearchClick(Sender: TObject);
begin
  DispShareBlockList(cxgOwner, FShareBlockXml2, cbbShareOwnerSearch.Text, edtShareOwnerSearch.Text);
end;

procedure TFrm_WOR.btnUpdateA6Click(Sender: TObject);
var
  iCol, iRow : Integer;
  sWkSabun : String;
begin
  iCol := cxGridPeakTime.GetColumnByFieldName('사번').Index;
  iRow := cxGridPeakTime.DataController.FocusedRecordIndex;

  if iRow < 0 then
  begin
    GMessagebox('선택기사가 없습니다.',CDMSE);
    Exit;
  end;

  sWkSabun := cxGridPeakTime.DataController.Values[iRow, iCol];

  if sWkSabun <> '' then
  begin
    if Not Assigned(Frm_WOR01) Or (Frm_WOR01 = Nil) then Frm_WOR01 := TFrm_WOR01.Create(Nil);
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      proc_FamilyBrChange;
		Frm_WOR01.gUse_Cnt := 0;
    Frm_WOR01.Show;
		Frm_WOR01.proc_wk_Search(sWkSabun);
	end else
  begin
    GMessagebox('선택기사가 없습니다.',CDMSE);
  end;
end;

procedure TFrm_WOR.proc_DelBlock;
var
  i, iBlockKey, iBrNo, iBlockType: Integer;
  ls_TxLoad, rv_str, ls_MSG_Err, sBlockKey, sBrNo, sBlockType: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  sLIst, sListErr, slReceive: TStringList;
  ErrCode: integer;
begin
  if ( cxgOther.DataController.GetSelectedCount = 0 ) Or
     ( cxgOther.DataController.RecordCount = 0 ) then
  begin
    GMessagebox('선택된 기사가 없습니다.', CDMSE);
    Exit;
  end;

  if Application.MessageBox('선택한 기사 공유콜 배차 제한 차단 해제하시겠습니까?', 'CDMS', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then Exit;

  Screen.Cursor := crHourGlass;
  cxbShareCallDel.Enabled := False;
  try
    iBrNo := cxgOther.GetColumnByFieldName('지사코드').Index;
    iBlockType := cxgOther.GetColumnByFieldName('차단코드').Index;
    iBlockKey := cxgOther.GetColumnByFieldName('BlockKey').Index;

    sLIst := TStringList.Create;
    sListErr := TStringList.Create;

    for i := 0 to cxgOther.DataController.RecordCount - 1 do
    begin
      if cxgOther.ViewData.Records[i].Selected then // ok
      begin
        sBlockKey := cxgOther.ViewData.Records[I].Values[iBlockKey];
        sBrNo     := cxgOther.ViewData.Records[I].Values[iBrNo];
        sBlockType:= cxgOther.ViewData.Records[I].Values[iBlockType];

        ls_TxLoad := GTx_UnitXmlLoad('C065N1.XML');
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR092', [rfReplaceAll]);

        ls_TxLoad := StringReplace(ls_TxLoad, 'modeStr', 'DELETE', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'hdNoStr', '', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'brNoStr', sBrNo, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'selTypeStr', '', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'typeStr', sBlockType, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'wkSabunStr', sBlockKey, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'memoStr', '', [rfReplaceAll]);

        slReceive := TStringList.Create;
        try
          if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 60000) then
          begin
            rv_str := slReceive[0];
            if rv_str <> '' then
            begin
              ls_rxxml := rv_str;
              Application.ProcessMessages;
              try
                xdom := ComsDomDocument.Create;
                try
                  if not xdom.loadXML(ls_rxxml) then
                  begin
                    GMessagebox('실패하였습니다.', CDMSE);
                    Screen.Cursor := crDefault;
                    cxbShareCallDel.Enabled := True;
                    Exit;
                  end;

                  ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
                  if ('0000' = ls_MSG_Err) then
                  begin
                    sLIst.Add(sBlockKey);
                  end else
                  begin
                    sListErr.Add(sBlockKey);
                    Screen.Cursor := crDefault;
                    GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
                  end;
                finally
                  xdom := Nil;
                end;
              except
                sListErr.Add(sBlockKey);
                Screen.Cursor := crDefault;
                GMessagebox('실패하였습니다.', CDMSE);
                cxbShareCallDel.Enabled := True;
              end;
            end;
          end;
        finally
          FreeAndNil(slReceive);
        end;
      end;
    end;

    if sListErr.Count > 0 then
      GMessagebox('삭제하지 못한 사번이 있습니다.'
        + #13#10 + '실패 기사수 : ' + IntToStr(sListErr.Count)
        + #13#10 + sListErr.Text, CDMSE)
		else
      GMessagebox('차단해제 하였습니다.'
        + #13#10 + '성공 기사수 : ' + IntToStr(sList.Count)
        + #13#10 + sList.Text, CDMSE);

  finally
    Screen.Cursor := crDefault;
		FreeAndNil(sList);
    FreeAndNil(sListErr);
    cxbShareCallDel.Enabled := True;
  end;

  btnSearchA4Click(btnSearchA4);
end;

procedure TFrm_WOR.proc_WkAttend;
var
  ls_TxQry, ls_TxLoad, sDt1, sDt2, sWhere, sHdNo, sQueryTemp: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

   if fGetChk_Search_HdBrNo('기사배차현황') then Exit;

  if cxgWkAttend.DataController.RecordCount = 0 then
  begin
    //////////////////////////////////////////////////////////////////////////////
    // 기사>기사배차현황]1000건/콜센터(통합)/기간:XXXX~XXXX
    FExcelDownBeach := Format('%s/기간:%s~%s',
      [
          GetSelBrInfo
        , cxDtStartA3.Text, cxDtEndA3.Text
      ]);
    //////////////////////////////////////////////////////////////////////////////

    sWhere := '';
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sHdNo := GT_SEL_BRNO.HDNO
    else
      sHdNo := GT_USERIF.HD;

    if (cxDtStartA3.Text = '') or (cxDtEndA3.Text = '') then
    begin
      cxDtStartA3.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd'), 1, 10));
      cxDtEndA3.Date := cxDtStartA3.Date + 1;
    end;
    sDt1 := FormatDateTime('yyyymmdd', cxDtStartA3.Date) + '090000';
    sDt2 := FormatDateTime('yyyymmdd', cxDtEndA3.Date) + '090000';
    if GT_USERIF.LV <> '60' then
      sWhere := 'AND WK_BRCH = ''' + GT_USERIF.BR + ''' '
    else if GT_SEL_BRNO.GUBUN = '1' then
      sWhere := 'AND WK_BRCH = ''' + GT_SEL_BRNO.BrNo + ''' ';

    if cxEdtSelText.Text <> '' then
    begin
      if cbSelList.ItemIndex = 0 then
        sWhere := sWhere + ' AND CONF_WK_SABUN = ''' + Param_Filtering(cxEdtSelText.Text) + ''' '
      else
      if cbSelList.ItemIndex = 1 then
        sWhere := sWhere + ' AND CONF_WORKER LIKE ''%' + Param_Filtering(cxEdtSelText.Text) + '%'' ';
    end;

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_WK_ATTEND, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sDt1, sDt2, sHdNo, sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR002', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

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
end;

procedure TFrm_WOR.cbbShareOtherSearchPropertiesChange(Sender: TObject);
begin
  edtShareOtherSearch.Enabled := (TcxComboBox(Sender).Text <> '전체');
end;

procedure TFrm_WOR.cbbShareOwnerSearchPropertiesChange(Sender: TObject);
begin
  edtShareOwnerSearch.Enabled := (TcxComboBox(Sender).Text <> '전체');
end;

procedure TFrm_WOR.cbSelGubunPropertiesChange(Sender: TObject);
begin
	if cbSelGubun.ItemIndex = 1 then gWkAttend_Type := 'Structure' else
	if cbSelGubun.ItemIndex = 0 then gWkAttend_Type := 'Grid';
end;

procedure TFrm_WOR.chkWkCounselAll10Click(Sender: TObject);
begin
	IF chkWkCounselAll10.Tag = 99 then EXIT;
	cxGridSelectAll(cxGridNoWork, TcxCheckBox(Sender).Checked);
	cxGridA10.SetFocus;
end;

procedure TFrm_WOR.chkWkCounselAllClick(Sender: TObject);
begin
	IF chkWkCounselAll.Tag = 99 then EXIT;
	cxGridSelectAll(cxgWkAttend, TcxCheckBox(Sender).Checked);
	cxGridA3.SetFocus;
end;

procedure TFrm_WOR.chk_KakaoPropertiesChange(Sender: TObject);
begin
	if chk_Kakao.checked then 
	begin
		Panel2.visible := False;
		pnl_KakaoBlockList.visible := True;
	end else
	begin
		pnl_KakaoBlockList.visible := False;
		Panel2.visible := True;
	end;
end;

procedure TFrm_WOR.cxbShareCallAccClick(Sender: TObject);
begin
  if ( Not Assigned(Frm_WOR09) ) Or ( Frm_WOR09 = NIl ) then Frm_WOR09 := TFrm_WOR09.Create(Nil);
  Frm_WOR09.proc_init;
  Frm_WOR09.Show;
end;

procedure TFrm_WOR.cxbShareCallDelClick(Sender: TObject);
begin
  proc_DelBlock;
end;

procedure TFrm_WOR.cxEdtSelText9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if Key = vk_Return then btnSearchA9.Click;
end;

procedure TFrm_WOR.btnGetListClick(Sender: TObject);
begin
  pGetComponentListWOR;
end;

procedure TFrm_WOR.cxgOtherColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_WOR.cxgOtherDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxgOther, AIndex, GS_SortNoChange);
end;

procedure TFrm_WOR.cxgOwnerColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_WOR.cxgOwnerDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxgOwner, AIndex, GS_SortNoChange);
end;

procedure TFrm_WOR.cxGridNoWorkCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	chkWkCounselAll10.Tag := 99;
	chkWkCounselAll10.Checked := False;
	chkWkCounselAll10.Tag := 0;
end;

procedure TFrm_WOR.cxGridNoWorkColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_WOR.cxGridNoWorkDataControllerSortingChanged(Sender: TObject);
begin
	gfSetIndexNo(cxGridNoWork, AIndex, GS_SortNoChange);
end;

procedure TFrm_WOR.cxGridPeakTimeCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iCol, iRow : Integer;
  sWkSabun : String;
begin
  iCol := cxGridPeakTime.GetColumnByFieldName('사번').Index;
  iRow := cxGridPeakTime.DataController.FocusedRecordIndex;

  sWkSabun := cxGridPeakTime.DataController.Values[iRow, iCol];

  if sWkSabun <> '' then
  begin
    if Not Assigned(Frm_WOR01) Or (Frm_WOR01 = Nil) then Frm_WOR01 := TFrm_WOR01.Create(Nil);

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      proc_FamilyBrChange;

		Frm_WOR01.gWOR19Mode := 'UPDATE';
		Frm_WOR01.gKey50 := false; //퇴직자 수정창 오픈시 배열미사용 하기 위한 구분값
		if GS_PRJ_AREA = 'S' then
		begin
			Frm_WOR01.proc_init;
		end;
		Frm_WOR01.gUse_Cnt := 0;
		frm_WOR01.Show;
		frm_WOR01.proc_wk_Search(sWkSabun);
	end else
  begin
    GMessagebox('선택기사가 없습니다.',CDMSE);
  end;
end;

procedure TFrm_WOR.cxGridPeakTimeColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_WOR.cxGridPeakTimeDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridPeakTime, AIndex, GS_SortNoChange);
end;

procedure TFrm_WOR.cxGridStateColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_WOR.cxGridStateDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridState, AIndex, GS_SortNoChange);
end;

procedure TFrm_WOR.cxGroupBox11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR.cxgWkAttendBands0HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 0) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[0].SortOrder = soNone) or
      (cxgWkAttend.Columns[0].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[0].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[0].SortOrder = soAscending then
      cxgWkAttend.Columns[0].SortOrder := soDescending;
    cxgWkAttend.Columns[0].SortIndex := 0;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands0]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.proc_NotShare;
begin
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
    Exit;
  end;

   if fGetChk_Search_HdBrNo('공유콜배차제한') then Exit;

  //////////////////////////////////////////////////////////////////////////////
  // 기사>배차제한>당사]1000건/콜센터(통합)
  FExcelDownBlock := Format('%s',
    [
        GetSelBrInfo
    ]);
  //////////////////////////////////////////////////////////////////////////////

  RequestSharedBlock(True);
  RequestSharedBlock(False);
end;

procedure TFrm_WOR.proc_NoWorkerList;
var
	iCnt, ErrCode : Integer;
	Param, XmlData, ErrMsg : String;
	lst_Result: IXMLDomNodeList;
	xdom: msDomDocument;
	ls_Rcrd, slList : TStringList;
	iRow, i, j : integer;
begin
	SetDebugeWrite('TFrm_WOR.proc_NoWorkerList');
	Try
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then
			Param := GT_SEL_BRNO.HDNO
		else
			Param := GT_USERIF.HD;

		if (GT_USERIF.lv = '60') and (GT_SEL_BRNO.GUBUN <> '1') then
			Param := Param + '│' + ''
		else
			Param := Param + '│' + GT_SEL_BRNO.BRNO;
		Param := Param + '│' + formatdatetime('yyyymmdd', cxDtStartA10.Date);
		Param := Param + '│' + formatdatetime('yyyymmdd', cxDtEndA10.Date);

		slList := TStringList.Create;
		Screen.Cursor := crHourGlass;
		cxGridNoWork.DataController.SetRecordCount(0);
		if not RequestBasePaging(GetSEL06('GET_ATTEND_LIST', 'MNG.GET_ATTEND_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('미출근현황 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxGridNoWork.BeginUpdate;
			iCnt := 0;
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
							ls_Rcrd.clear;
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
							begin
								if scb_FamilyBrCode.IndexOf(ls_Rcrd[0]) = -1 then Continue;
							end;	   //권한있는 지사일경우만 그리드표기

							ls_Rcrd.Insert(0, IntToStr(iCnt + 1));
							inc(iCnt);
							iRow := cxGridNoWork.DataController.AppendRecord;

							cxGridNoWork.DataController.Values[iRow, 0] := ls_Rcrd[0];
							cxGridNoWork.DataController.Values[iRow, 1] := ls_Rcrd[2] + '[' + ls_Rcrd[1] + ']';
							cxGridNoWork.DataController.Values[iRow, 2] := ls_Rcrd[3]; //기사사번
							cxGridNoWork.DataController.Values[iRow, 3] := ls_Rcrd[4]; //기사명
							cxGridNoWork.DataController.Values[iRow, 4] := StrToCall(ls_Rcrd[5]); //기사연락처
							if ls_Rcrd[6] = '' then  ls_Rcrd[6] := '0';
							if ls_Rcrd[7] = '' then  ls_Rcrd[7] := '0';
							if ls_Rcrd[8] = '' then  ls_Rcrd[8] := '0';
							if ls_Rcrd[9] = '' then  ls_Rcrd[9] := '0';
							if ls_Rcrd[10] = '' then  ls_Rcrd[10] := '0';
							cxGridNoWork.DataController.Values[iRow, 5] := ls_Rcrd[6]; //조회일수
							cxGridNoWork.DataController.Values[iRow, 6] := ls_Rcrd[7]; //미출근일수
							cxGridNoWork.DataController.Values[iRow, 7] := ls_Rcrd[8]; //출근율
							cxGridNoWork.DataController.Values[iRow, 8] := ls_Rcrd[9]; //완료콜수
							cxGridNoWork.DataController.Values[iRow, 9] := ls_Rcrd[10];//취소콜수
							cxGridNoWork.DataController.Values[iRow,10] := ls_Rcrd[1];//지사코드
						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			end;
		finally
			xdom := Nil;
			cxGridNoWork.EndUpdate;
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

procedure TFrm_WOR.RequestSharedBlock(AMyBranch: Boolean);
var
  ls_TxLoad, sHdNo, sBrNo, SelType: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if GT_USERIF.LV = '60' then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sHdNo := GT_SEL_BRNO.HDNO
    else
      sHdNo := GT_USERIF.HD;
    sBrNo := IfThen(GT_SEL_BRNO.GUBUN = '0', '', GT_SEL_BRNO.BrNo);
  end else
  if GT_USERIF.LV = '40' then
  begin
    sHdNo := GT_USERIF.HD;
    sBrNo := GT_USERIF.BR;
  end else
  begin
    sHdNo := GT_USERIF.HD;
    sBrNo := GT_USERIF.BR;
  end;

  SelType := IfThen(AMyBranch, '0', '1');

  ls_TxLoad := GTx_UnitXmlLoad('C065N1.XML');
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR092', [rfReplaceAll]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'modeStr', 'SELECT', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'hdNoStr', sHdNo, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'brNoStr', sBrNo, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'selTypeStr', SelType, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'typeStr', '', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'wkSabunStr', '', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'memoStr', '', [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      if AMyBranch then
      begin
        FShareBlockXml.Clear;
        FShareBlockXml.AddStrings(slReceive);
//        FShareBlockXml := slReceive;
				DispShareBlockList(cxgOther, FShareBlockXml);
      end else
      begin
        FShareBlockXml2.Clear;
        FShareBlockXml2.AddStrings(slReceive);
        DispShareBlockList(cxgOwner, FShareBlockXml2);
      end;
    end;
  finally
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_WOR.DispShareBlockList(AView: TcxGridDBTableView; AList: TStringList;
  AKeyWord, ASearchValue: string);
var
  I, J, ARow: Integer;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  AXml, ls_MSG_Err, sBrNo: String;
	BlockType, BrName, BrNo, TypeName, WkSabun, WkSabun2, WkName, WkHP, WkBrName, InID, Memo, InDate, sLimitData, sBlockKey, sWkBrNo: string;
begin
	xdom := ComsDomDocument.Create;
  try
    if not Assigned(AList) then
    begin
      GMessagebox('결과데이터가 없습니다.', CDMSE);
      Exit;
    end;

    AView.BeginUpdate;
    try
      AView.DataController.SetRecordCount(0);
      for I := 0 to AList.Count - 1 do
      begin
        AXml := AList[I];

        if not xdom.loadXML(AXml) then
          Continue;

        ls_MSG_Err := GetXmlErrorCode(AXml);
        if ('0000' = ls_MSG_Err) then
        begin
          //GMessagebox('차단등록하였습니다.', CDMSE);
        end else
        begin
          GMessagebox(ls_MSG_Err, CDMSE);
          Continue;
        end;

        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Response/Data');

        for J := 0 to lst_Result.length - 1 do
				begin
					BlockType   := lst_Result.item[J].attributes.getNamedItem('Type').text;
					if AView.Name = 'cxgOther' then
					begin
						//1:기사차단, 2:지사차단, 3:지사간차단, 4:본사간차단,5:본사기사차단,6:기사차단주민,7:본사기사차단주민,8:기사차단콜센터
						if (BlockType = '4') or (BlockType = '5') or (BlockType = '7') then
							sBrNo := 'all' //패밀리관리자에게만 사용되는 값으로 전체조회가능
//							sBrNo := lst_Result.item[J].attributes.getNamedItem('WkBrNo').text
							//본사단위 차단 기사의 경우 소속 지사코드를 사용하여 권한지사의 기사만 조회
						else
							sBrNo := lst_Result.item[J].attributes.getNamedItem('BrNo').text;     //권한지사
					end else
          if AView.Name = 'cxgOwner' then
						sBrNo := lst_Result.item[J].attributes.getNamedItem('WkBrNo').text;     //기사소속지사

					if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
					begin
						if scb_FamilyBrCode.IndexOf(sBrNo) = -1 then 
						begin
							if sBrNo <> 'all' then Continue;
						end;
					end;	   //권한있는 지사일경우만 그리드표기

					BrName      := lst_Result.item[J].attributes.getNamedItem('BrName').text;
					BrNo        := lst_Result.item[J].attributes.getNamedItem('BrNo').text;
					TypeName    := lst_Result.item[J].attributes.getNamedItem('TypeName').text;
					WkSabun     := lst_Result.item[J].attributes.getNamedItem('WkSabun').text;
          WkSabun2    := lst_Result.item[J].attributes.getNamedItem('WkSabun2').text;
          WkName      := lst_Result.item[J].attributes.getNamedItem('WkName').text;
          WkHP        := lst_Result.item[J].attributes.getNamedItem('WkHp').text;
          WkBrName    := lst_Result.item[J].attributes.getNamedItem('WkBrName').text;
          InID        := lst_Result.item[J].attributes.getNamedItem('InId').text;
          Memo        := lst_Result.item[J].attributes.getNamedItem('Memo').text;
          InDate      := lst_Result.item[J].attributes.getNamedItem('InDate').text;
          sLimitData  := lst_Result.item[J].attributes.getNamedItem('LimitDate').text;
          sBlockKey   := lst_Result.item[J].attributes.getNamedItem('BlockKey').text;

          if (AKeyWord = '기사명') and (Length(Trim(ASearchValue)) > 0) and (Pos(ASearchValue , WkName) = 0) then
            Continue;

          if (AKeyWord = '단말기번호') and (Length(Trim(ASearchValue)) > 0) and (Pos(ASearchValue, RemovePhone(WkHP)) = 0) then
            Continue;

          if GT_USERIF.MultiWorkerCnt > 1 then
          begin
						{ TODO : 콜마너2(#9) 사용여부에 따라 표시 유무 처리 }
						if Pos('#9', WkHP) > 0 then
						begin
							Continue;
//              if GS_CALL2_Use = 'n' then Continue;
            end;
            { TODO : 콜마너 기사 사용등록수에 따라 기사 표시 유무 처리 }
            if Pos('#', WkHP) > 0 then
            begin
              if StrToIntDef(RightStr(WKHP, 1), 0) > GT_USERIF.MultiWorkerCnt then Continue;
            end;
          end;

					ARow := AView.DataController.AppendRecord;
          // 1 Record 추가
          AView.DataController.Values[ARow, 0] := IntToStr(ARow + 1);
          AView.DataController.Values[ARow, 1] := BrName;
          AView.DataController.Values[ARow, 2] := WkSabun;
          AView.DataController.Values[ARow, 3] := WkSabun2;
          AView.DataController.Values[ARow, 4] := WkName;
          AView.DataController.Values[ARow, 5] := strtocall(WkHP);
          AView.DataController.Values[ARow, 6] := WkBrName;
          AView.DataController.Values[ARow, 7] := TypeName;
          AView.DataController.Values[ARow, 8] := Memo;
          AView.DataController.Values[ARow, 9] := InID;
          AView.DataController.Values[ARow, 10] := InDate;
          AView.DataController.Values[ARow, 11] := BrNo;
          if AView.ColumnCount > 14 then // 본인지사(차단해제를 위한 차단코드)
          begin
            AView.DataController.Values[ARow, 12] := BlockType;
            AView.DataController.Values[ARow, 13] := sLimitData;
            AView.DataController.Values[ARow, 14] := sBlockKey;
          end else
          begin
						AView.DataController.Values[ARow, 12] := sLimitData;
            AView.DataController.Values[ARow, 13] := sBlockKey;
          end;
				end;
      end;
    finally
      AView.EndUpdate;
    end;
		if AView.DataController.RecordCount = 0 then
		begin
			GMessagebox('검색된 내용이 없습니다.', CDMSE);
		end;
	finally
    xdom := Nil;
  end;
end;


procedure TFrm_WOR.edt_SearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = vk_Return then btnSearchA8.Click;
end;

procedure TFrm_WOR.edWkNameKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = vk_Return then btnSearchA2.Click;
end;

procedure TFrm_WOR.edWkNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_WOR.cxgWkAttendBands11HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 8) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
			end;
    end;
    if (cxgWkAttend.Columns[8].SortOrder = soNone) or
      (cxgWkAttend.Columns[8].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[8].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[8].SortOrder = soAscending then
      cxgWkAttend.Columns[8].SortOrder := soDescending;
    cxgWkAttend.Columns[8].SortIndex := 8;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands8]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkAttendBands12HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 9) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[9].SortOrder = soNone) or
      (cxgWkAttend.Columns[9].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[9].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[9].SortOrder = soAscending then
      cxgWkAttend.Columns[9].SortOrder := soDescending;
    cxgWkAttend.Columns[9].SortIndex := 9;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands9]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkAttendBands13HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 10) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[10].SortOrder = soNone) or
      (cxgWkAttend.Columns[10].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[10].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[10].SortOrder = soAscending then
      cxgWkAttend.Columns[10].SortOrder := soDescending;
    cxgWkAttend.Columns[10].SortIndex := 10;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands10]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkAttendBands15HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 11) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[11].SortOrder = soNone) or
      (cxgWkAttend.Columns[11].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[11].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[11].SortOrder = soAscending then
      cxgWkAttend.Columns[11].SortOrder := soDescending;
    cxgWkAttend.Columns[11].SortIndex := 11;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands11]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkAttendBands16HeaderClick(Sender: TObject);
var
  i: Integer;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 12) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[12].SortOrder = soNone) or
      (cxgWkAttend.Columns[12].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[12].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[12].SortOrder = soAscending then
      cxgWkAttend.Columns[12].SortOrder := soDescending;
    cxgWkAttend.Columns[12].SortIndex := 12;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      GMessagebox(PChar('frmWOR[cxgWkAttendBands12]Error:' + e.Message), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkAttendBands1HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 1) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[1].SortOrder = soNone) or
      (cxgWkAttend.Columns[1].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[1].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[1].SortOrder = soAscending then
      cxgWkAttend.Columns[1].SortOrder := soDescending;
    cxgWkAttend.Columns[1].SortIndex := 1;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands1]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkAttendBands2HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 2) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[2].SortOrder = soNone) or
      (cxgWkAttend.Columns[2].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[2].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[2].SortOrder = soAscending then
      cxgWkAttend.Columns[2].SortOrder := soDescending;
    cxgWkAttend.Columns[2].SortIndex := 2;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands2]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkAttendBands3HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 3) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[3].SortOrder = soNone) or
      (cxgWkAttend.Columns[3].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[3].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[3].SortOrder = soAscending then
      cxgWkAttend.Columns[3].SortOrder := soDescending;
    cxgWkAttend.Columns[3].SortIndex := 3;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands3]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkAttendBands5HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 4) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[4].SortOrder = soNone) or
      (cxgWkAttend.Columns[4].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[4].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[4].SortOrder = soAscending then
      cxgWkAttend.Columns[4].SortOrder := soDescending;
    cxgWkAttend.Columns[4].SortIndex := 4;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands4]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkAttendBands6HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 5) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[5].SortOrder = soNone) or
      (cxgWkAttend.Columns[5].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[5].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[5].SortOrder = soAscending then
      cxgWkAttend.Columns[5].SortOrder := soDescending;
    cxgWkAttend.Columns[5].SortIndex := 5;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands5]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkAttendBands8HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 6) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[6].SortOrder = soNone) or
      (cxgWkAttend.Columns[6].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[6].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[6].SortOrder = soAscending then
      cxgWkAttend.Columns[6].SortOrder := soDescending;
    cxgWkAttend.Columns[6].SortIndex := 6;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands6]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkAttendBands9HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkAttend.ColumnCount - 1 do
    begin
      if (i <> 7) then
      begin
        cxgWkAttend.Columns[i].SortIndex := -1;
        cxgWkAttend.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkAttend.Columns[7].SortOrder = soNone) or
      (cxgWkAttend.Columns[7].SortOrder =
      soDescending) then
      cxgWkAttend.Columns[7].SortOrder := soAscending
    else
      if cxgWkAttend.Columns[7].SortOrder = soAscending then
      cxgWkAttend.Columns[7].SortOrder := soDescending;
    cxgWkAttend.Columns[7].SortIndex := 7;
    cxgWkAttend.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkAttend, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkAttendBands7]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkAttendCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	chkWkCounselAll.Tag := 99;
	chkWkCounselAll.Checked := False;
	chkWkCounselAll.Tag := 0;
end;

procedure TFrm_WOR.cxgWkAttendCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
	chkWkCounselAll.Tag := 99;
	chkWkCounselAll.Checked := False;
	chkWkCounselAll.Tag := 0;
	
	proc_WkAttend_Search;
end;

procedure TFrm_WOR.cxgWkCashBands0HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 0) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[0].SortOrder = soNone) or (cxgWkCash.Columns[0].SortOrder = soDescending) then
      cxgWkCash.Columns[0].SortOrder := soAscending
    else if cxgWkCash.Columns[0].SortOrder = soAscending then
      cxgWkCash.Columns[0].SortOrder := soDescending;
    cxgWkCash.Columns[0].SortIndex := 0;
    cxgWkCash.DataController.FocusedRowIndex := 0;
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands0]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashBands2HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 2) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;

    if (cxgWkCash.Columns[2].SortOrder = soNone) or (cxgWkCash.Columns[2].SortOrder = soDescending) then
      cxgWkCash.Columns[2].SortOrder := soAscending
    else if cxgWkCash.Columns[2].SortOrder = soAscending then
      cxgWkCash.Columns[2].SortOrder := soDescending;
    cxgWkCash.Columns[2].SortIndex := 2;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands2]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashBands3HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 3) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[3].SortOrder = soNone) or (cxgWkCash.Columns[3].SortOrder = soDescending) then
      cxgWkCash.Columns[3].SortOrder := soAscending
    else if cxgWkCash.Columns[3].SortOrder = soAscending then
      cxgWkCash.Columns[3].SortOrder := soDescending;
    cxgWkCash.Columns[3].SortIndex := 3;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands3]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashBands4HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 4) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[4].SortOrder = soNone) or (cxgWkCash.Columns[4].SortOrder = soDescending) then
      cxgWkCash.Columns[4].SortOrder := soAscending
    else if cxgWkCash.Columns[4].SortOrder = soAscending then
      cxgWkCash.Columns[4].SortOrder := soDescending;
    cxgWkCash.Columns[4].SortIndex := 4;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands4]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashBands5HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 5) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[5].SortOrder = soNone) or (cxgWkCash.Columns[5].SortOrder = soDescending) then
      cxgWkCash.Columns[5].SortOrder := soAscending
    else if cxgWkCash.Columns[5].SortOrder = soAscending then
      cxgWkCash.Columns[5].SortOrder := soDescending;
    cxgWkCash.Columns[5].SortIndex := 5;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands5]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashBands6HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 6) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[6].SortOrder = soNone) or (cxgWkCash.Columns[6].SortOrder = soDescending) then
      cxgWkCash.Columns[6].SortOrder := soAscending
    else if cxgWkCash.Columns[6].SortOrder = soAscending then
      cxgWkCash.Columns[6].SortOrder := soDescending;
    cxgWkCash.Columns[6].SortIndex := 6;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands6]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashBands8HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 7) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[7].SortOrder = soNone) or (cxgWkCash.Columns[7].SortOrder = soDescending) then
      cxgWkCash.Columns[7].SortOrder := soAscending
    else if cxgWkCash.Columns[7].SortOrder = soAscending then
      cxgWkCash.Columns[7].SortOrder := soDescending;
    cxgWkCash.Columns[7].SortIndex := 7;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands7]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashBands9HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 8) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[8].SortOrder = soNone) or (cxgWkCash.Columns[8].SortOrder = soDescending) then
      cxgWkCash.Columns[8].SortOrder := soAscending
    else if cxgWkCash.Columns[8].SortOrder = soAscending then
      cxgWkCash.Columns[8].SortOrder := soDescending;
    cxgWkCash.Columns[8].SortIndex := 8;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands8]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  gsColNM := cxgWkCash.Columns[ACellViewInfo.Item.FocusedCellViewInfo.Item.Index].Caption;
  proc_search_wk_cash(3);
  gsColNM := '';
end;

procedure TFrm_WOR.cxgWkCashBands11HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 9) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[9].SortOrder = soNone) or (cxgWkCash.Columns[9].SortOrder = soDescending) then
      cxgWkCash.Columns[9].SortOrder := soAscending
    else if cxgWkCash.Columns[9].SortOrder = soAscending then
      cxgWkCash.Columns[9].SortOrder := soDescending;
    cxgWkCash.Columns[9].SortIndex := 9;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands9]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashBands12HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 10) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[10].SortOrder = soNone) or (cxgWkCash.Columns[10].SortOrder = soDescending) then
      cxgWkCash.Columns[10].SortOrder := soAscending
    else if cxgWkCash.Columns[10].SortOrder = soAscending then
      cxgWkCash.Columns[10].SortOrder := soDescending;
    cxgWkCash.Columns[10].SortIndex := 10;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands10]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashBands13HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 11) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[11].SortOrder = soNone) or (cxgWkCash.Columns[11].SortOrder = soDescending) then
      cxgWkCash.Columns[11].SortOrder := soAscending
    else if cxgWkCash.Columns[11].SortOrder = soAscending then
      cxgWkCash.Columns[11].SortOrder := soDescending;
    cxgWkCash.Columns[11].SortIndex := 11;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands11]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashBands15HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 12) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[12].SortOrder = soNone) or (cxgWkCash.Columns[12].SortOrder = soDescending) then
      cxgWkCash.Columns[12].SortOrder := soAscending
    else if cxgWkCash.Columns[12].SortOrder = soAscending then
      cxgWkCash.Columns[12].SortOrder := soDescending;
    cxgWkCash.Columns[12].SortIndex := 12;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands12]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashBands16HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 13) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[13].SortOrder = soNone) or
      (cxgWkCash.Columns[13].SortOrder =
      soDescending) then
      cxgWkCash.Columns[13].SortOrder := soAscending
    else
      if cxgWkCash.Columns[13].SortOrder = soAscending then
      cxgWkCash.Columns[13].SortOrder := soDescending;
    cxgWkCash.Columns[13].SortIndex := 13;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands13]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashBands17HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 14) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[14].SortOrder = soNone) or
      (cxgWkCash.Columns[14].SortOrder =
      soDescending) then
      cxgWkCash.Columns[14].SortOrder := soAscending
    else
      if cxgWkCash.Columns[14].SortOrder = soAscending then
      cxgWkCash.Columns[14].SortOrder := soDescending;
    cxgWkCash.Columns[14].SortIndex := 14;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands14]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxgWkCashBands18HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxgWkCash.ColumnCount - 1 do
    begin
      if (i <> 15) then
      begin
        cxgWkCash.Columns[i].SortIndex := -1;
        cxgWkCash.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxgWkCash.Columns[15].SortOrder = soNone) or
      (cxgWkCash.Columns[15].SortOrder =
      soDescending) then
      cxgWkCash.Columns[15].SortOrder := soAscending
    else
      if cxgWkCash.Columns[15].SortOrder = soAscending then
      cxgWkCash.Columns[15].SortOrder := soDescending;
    cxgWkCash.Columns[15].SortIndex := 15;
    cxgWkCash.DataController.FocusedRowIndex := 0;
    gfSetIndexNo(cxgWkCash, GS_SortNoChange);
  except
    on e: Exception do
    begin
      sTemp := 'frmWOR[cxgWkCashBands15]Error:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.N29Click(Sender: TObject);
var
	iWkSabun, iRow, iBrNo, i, iWkPhone, iPos : Integer;
	sWkSabun, sBrNo, sWkPhone, sKeyNum: string;
begin
	sWkPhone := '';

  case cxPageControl1.ActivePageIndex of
  0 : begin
        if cxPcA2.ActivePageIndex = 0 then
        begin
          iWkSabun := 3;
          iBrNo := 1;
          iRow := cxgWkCash.DataController.FocusedRecordIndex;
          if iRow < 0 then
            Exit;
          sWkSabun := cxgWkCash.DataController.Values[iRow, iWkSabun];
          sBrNo := cxgWkCash.DataController.Values[iRow, iBrNo];
        end else
        if cxPcA2.ActivePageIndex = 1 then
        begin
          iWkSabun := sg_xls.GetColumnByFieldName('기사사번').Index;
          iBrNo := sg_xls.GetColumnByFieldName('지사코드').Index;
          iRow := sg_xls.DataController.FocusedRecordIndex;
          if iRow < 0 then
            Exit;
          sWkSabun := sg_xls.DataController.Values[iRow, iWkSabun];
          sBrNo := sg_xls.DataController.Values[iRow, iBrNo];
        end;
      end;
  1 : begin
				iWkSabun := 2;
				iBrNo := 13;
        iRow := cxgWkAttend.DataController.FocusedRecordIndex;
				if iRow < 0 then Exit;
        sWkSabun := cxgWkAttend.DataController.Values[iRow, iWkSabun];
        sBrNo := cxgWkAttend.DataController.Values[iRow, iBrNo];
			end;
	2 : begin                  //타회사에서 차단한 당사 기사 현황
				iWkSabun := 2;
				iBrNo := 11;
				iRow := cxgOwner.DataController.FocusedRecordIndex;
				if iRow < 0 then Exit;
				sWkSabun := cxgOwner.DataController.Values[iRow, iWkSabun];
				if sWkSabun = '' then Exit;
				sBrNo := cxgOwner.DataController.Values[iRow, iBrNo];
				if sBrNo = '' then Exit;
			end;
	3 : begin
        iWkSabun := cxgOwner.GetColumnByFieldName('기사사번').Index;
        iBrNo := cxgOwner.GetColumnByFieldName('지사코드').Index;
        iRow := cxgOwner.DataController.FocusedRecordIndex;
        if iRow < 0 then Exit;
				sWkSabun := cxgOwner.DataController.Values[iRow, iWkSabun];
        sBrNo := cxgOwner.DataController.Values[iRow, iBrNo];
      end;
	7 : begin
				iWkSabun := cxGridNoWork.GetColumnByFieldName('기사사번').Index;
				iBrNo := cxGridNoWork.GetColumnByFieldName('지사코드').Index;
				iRow := cxGridNoWork.DataController.FocusedRecordIndex;
				if iRow < 0 then Exit;
				sWkSabun := cxGridNoWork.DataController.Values[iRow, iWkSabun];
				sBrNo := cxGridNoWork.DataController.Values[iRow, iBrNo];
			end;
  end;

  case TMenuItem(Sender).Tag of
    0:
      begin
        if Not Assigned(Frm_WOR01) Or (Frm_WOR01 = Nil) then Frm_WOR01 := TFrm_WOR01.Create(Nil);

        if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					proc_FamilyBrChange;

				Frm_WOR01.gWOR19Mode := 'UPDATE';
				if GS_PRJ_AREA = 'S' then
				begin
         	Frm_WOR01.proc_init;
				end;
				Frm_WOR01.gUse_Cnt := 0;
				Frm_WOR01.Show;
				Frm_WOR01.proc_wk_Search(sWkSabun);
			end;
    1:
      begin
        if ( Not Assigned(Frm_COM02) ) Or ( Frm_COM02 = NIl ) then Frm_COM02 := TFrm_COM02.Create(Nil);
        Frm_COM02.proc_wk_Search(sWkSabun);
        Frm_COM02.Show;
        Frm_COM02.proc_init;
      end;
    2:
      begin
        sWkPhone := func_Search_Phone(sWkSabun);
        if sWkPhone = '' then Exit;
        proc_Wk_Tel(sWkPhone, cxPageControl1.ActivePageIndex);
      end;
    3:
      begin
        if Length(sWkSabun) = 13 then
        begin
          GMessagebox('주민번호 차단 기사는 SMS문자 전송 기능을 사용할수 없습니다.', CDMSE);
          Exit;
        end;

				sKeyNum := func_BrTelSearch(sBrNo);
				if ( Not Assigned(Frm_SMS01) ) Or ( Frm_SMS01 = NIl ) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
				Frm_SMS01.mm_message.Text := '';
				Frm_SMS01.ed_send.Text := sKeyNum;
				Frm_SMS01.ls_sms.Items.Clear;
				
				if cxPageControl1.ActivePageIndex = 1 then 
				begin
					iWkPhone := cxgWkAttend.GetColumnByFieldName('HP').Index;
					for I := 0 to cxgWkAttend.DataController.RecordCount - 1 do
					begin
						if cxgWkAttend.ViewData.Records[i].Selected then
						begin		
//							sWkPhone := RemovePhone(cxgWkAttend.DataController.Values[I, iWkPhone]);
							sWkPhone := RemovePhone(cxgWkAttend.ViewData.Records[I].Values[iWkPhone]);
							iPos := Pos('#', sWkPhone);
							if iPos > 0 then sWkPhone := Copy(sWkPhone,1, iPos-1);
							Frm_SMS01.ls_sms.Items.Add(sWkPhone);
						end;
					end;
				end else
				if cxPageControl1.ActivePageIndex = 7 then 
				begin
					iWkPhone := cxGridNoWork.GetColumnByFieldName('기사연락처').Index;
					for I := 0 to cxGridNoWork.DataController.RecordCount - 1 do
					begin
						if cxGridNoWork.ViewData.Records[i].Selected then
						begin		
							sWkPhone := RemovePhone(cxGridNoWork.ViewData.Records[I].Values[iWkPhone]);
							iPos := Pos('#', sWkPhone);
							if iPos > 0 then sWkPhone := Copy(sWkPhone,1, iPos-1);
							Frm_SMS01.ls_sms.Items.Add(sWkPhone);
						end;
					end;
				end;
				Frm_SMS01.Proc_Init;
				Frm_SMS01.sSendKind := '';
				Frm_SMS01.rdo_SMS.visible := False;
				Frm_SMS01.rdo_PUSH.visible := False;
				Frm_SMS01.PageControl1.ActivePageIndex := 2;
				Frm_SMS01.Show;
      end;
    4:
      begin
        case cxPageControl1.ActivePageIndex of
          0 : btnSearchA2P12.Click;
          1 : btnExcelA3.Click;
					2 : begin
                if cxgOwner.DataController.RecordCount = 0 then
                begin
                  GMessagebox('자료가 없습니다.', CDMSE);
                  exit;
                end;

                if GT_USERIF.Excel_Use = 'n' then
                begin
                  GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
                  Exit;
                end;

              	if TCK_USER_PER.WOR_ExcelDown <> '1' then
              	begin
                  ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
                  Exit;
                end;

        				Frm_Main.sgExcel := '타회사에서 차단한 당사 기사 현황.xls';
                Frm_Main.sgRpExcel := Format('기사>공유콜배차제한>타사차단]%s건/%s', [GetMoneyStr(cxgOwner.DataController.RecordCount), FExcelDownBlock]);
                Frm_Main.cxGridExcel := cxGridA42;
                Frm_Main.proc_excel(0);
              end;
        end;
      end;
  end;
end;

function TFrm_WOR.func_Search_Phone(sWkSabun: string): string;
var
  ls_TxLoad, sNode, rv_str: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err, sWkHp, sWkPhone: string;
  ls_Rcrd: TStringList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  Result := '';
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR0013';

    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKSEARCH03';

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := sWkSabun;

    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          if not xdom.loadXML(ls_rxxml) then
          begin
            Screen.Cursor := crDefault;
            ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
            Exit;
          end;
          ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
          if ('0000' = ls_MSG_Err) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
//              ls_Rcrd := GetTextSeperation('│', lst_Result.item[0].attributes.getNamedItem('Value').Text);
              sWkHp := ls_Rcrd[0];
              sWkPhone := ls_Rcrd[1];
              if (Copy(sWkPhone, 1, 2) = '01') and (Length(sWkPhone) in [10, 11]) then
                Result := sWkPhone
              else
                Result := sWkHp;
            finally
              ls_Rcrd.Free;
            end;
          end
          else
          begin
            Screen.Cursor := crDefault;
            GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WOR.grdWkDataControllerSummaryDefaultGroupSummaryItemsSummary(ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
  var OutArguments: TcxSummaryEventOutArguments);
Var Value : variant;
    sBrNo : String;
    i, ItemIdx, ARowIndex : Integer;
begin
 if Arguments.SummaryItem.Kind = skNone then
 begin
    aIdx := Arguments.RecordIndex;
    Value := Arguments.SummaryItem.DataController.Values[Arguments.RecordIndex, Arguments.SummaryItem.DataField.Index];
    if Value = '○' then Inc(gGroupArrCnt[Arguments.SummaryItem.DataField.Index])
  end;
end;

procedure TFrm_WOR.grdWkTcxGridDataControllerTcxDataSummaryDefaultGroupSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
  AIsFooter: Boolean; var AText: string);
begin
	AText := AText +'명';
end;

procedure TFrm_WOR.grdWkTcxGridDataControllerTcxDataSummaryDefaultGroupSummaryItems1GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
  AIsFooter: Boolean; var AText: string);
Var ARowIndex, ItemIdx : Integer;
    sBrNo : String;
begin
  ItemIdx := aIdx;
  ItemIdx := TcxGridDBTableSummaryItem(Sender).Column.Summary.Item.VisibleIndex;
  ItemIdx := TcxGridDBTableSummaryItem(Sender).Column.Summary.Item.Index;
//  sBrNo := Sender.DataController.GetValue(ARowIndex , 2);
//  for i := 0 to Grid4View.DataController.RecordCount - 1 do
//  begin
//    if sBrNo = Grid4View.DataController.Values[i, 2] then
//    begin
      AText := IntToStr(gGroupArrCnt[ItemIdx]);
//      Break;
//    end;
//  end;
end;

procedure TFrm_WOR.grdWkTcxGridDataControllerTcxDataSummaryFooterSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
  AIsFooter: Boolean; var AText: string);
begin
	AText := FormatCash(gATTENT_WK)+'명';
end;

procedure TFrm_WOR.grdWkTcxGridDataControllerTcxDataSummaryFooterSummaryItems1GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
  AIsFooter: Boolean; var AText: string);
begin
	AText := FormatCash(gArrCNT[TcxGridTableSummaryItem(Sender).Tag-1]);
end;

procedure TFrm_WOR.grdWkTcxGridDataControllerTcxDataSummaryFooterSummaryItems32GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
  AIsFooter: Boolean; var AText: string);
begin
	AText := FormatCash(gATTENT_Day);
end;

procedure TFrm_WOR.grdWkTcxGridDataControllerTcxDataSummaryFooterSummaryItems33GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
  AIsFooter: Boolean; var AText: string);
var sTmp : String;
	iDay : integer;
begin
	if gATTENT_WK = 0 then exit;

	iDay := DaysInAMonth(cxSEYear.Value, cxSEMonth.Value);
	sTmp :=	IntToStr(Round(((gATTENT_Day/gATTENT_WK)/iDay)*100)) + '%';
	AText := sTmp;
end;

procedure TFrm_WOR.grdWkTcxGridDataControllerTcxDataSummaryFooterSummaryItems34GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
  AIsFooter: Boolean; var AText: string);
begin
	AText := FormatCash(gtUES_AMT);
end;

procedure TFrm_WOR.Grid4ViewColumnSizeChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var iCol : integer;
begin
	case AColumn.Index of
		0,2 : exit;
		1 : iCol := 0;
		3 : iCol := 1;
		4..37 : iCol := AColumn.Index - 2;
	end;
	Grid4ViewWK.Columns[iCol].Width := AColumn.Width;
end;

procedure TFrm_WOR.Grid4ViewDataControllerDetailExpanded(
  ADataController: TcxCustomDataController; ARecordIndex: Integer);
var i, j, iRow : integer;
	ADetDataController: TcxCustomDataController;
begin
  if gStIdx > Length(FWKInfos) then Exit;

	ADetDataController := ADataController.GetDetailDataController(ARecordIndex, 0);
	ADetDataController.SetRecordCount(0);
	ADetDataController.BeginUpdate;
	for i := 0 to gStIdx - 1 do
	begin
		if FWKInfos[I].BrNo = '' then Break;
		if FWKInfos[I].BrNo = ADataController.Values[ARecordIndex, 2] then
		begin
			iRow := ADetDataController.AppendRecord;

      ADetDataController.Values[iRow, 0] := FWKInfos[I].BRName;
      ADetDataController.Values[iRow, 1] := FWKInfos[I].BrNo;
      ADetDataController.Values[iRow, 2] := FWKInfos[I].WKNm;
      for j := 0 to 30 do
      begin
        ADetDataController.Values[iRow, j + 3] := FWKInfos[I].Day[j]; //일별 카운트 배열
      end;
      ADetDataController.Values[iRow, 34] := StrToIntDef(FWKInfos[I].DayCnt,0);      //일별카운트합계
      ADetDataController.Values[iRow, 35] := IntToStr(StrToIntDef(FWKInfos[I].DayCntPer,0)) + '%'; //일별출근율 합계
      ADetDataController.Values[iRow, 36] := StrToIntDef(FWKInfos[I].AMT,0); //일별출근율합계;
		end;
	end;
	ADetDataController.EndUpdate;
end;

procedure TFrm_WOR.Grid4ViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems0GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: string);
begin
	AText := FormatCash(gATTENT_WK)+'명';
end;

procedure TFrm_WOR.Grid4ViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems1GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: string);
begin
	AText := FormatCash(gArrCNT[TcxGridTableSummaryItem(Sender).Tag-1]);
end;

procedure TFrm_WOR.Grid4ViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems32GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: string);
begin
	AText := FormatCash(gATTENT_Day);
end;

procedure TFrm_WOR.Grid4ViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems33GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: string);
var sTmp : String;
	iDay : integer;
begin
	if gATTENT_WK = 0 then exit;
	
	iDay := DaysInAMonth(cxSEYear.Value, cxSEMonth.Value);
	sTmp :=	IntToStr(Round(((gATTENT_Day/gATTENT_WK)/iDay)*100)) + '%';
	AText := sTmp;
end;

procedure TFrm_WOR.Grid4ViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems34GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: string);
begin
	AText := FormatCash(gtUES_AMT);
end;

procedure TFrm_WOR.Grid8ViewWKCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iWkSabun, iWKName : integer;
	sWKSabun, sWKName : string;
begin
	SetDebugeWrite('TFrm_WOR.proc_Set_AboveToday');
	Try
		iRow := Grid8ViewWK.DataController.FocusedRecordIndex;
		if iRow < 0 then exit;

		iWkSabun := Grid8ViewWK.GetColumnByFieldName('기사사번').Index;
		sWKSabun := Grid8ViewWK.DataController.Values[iRow, iWkSabun];
		iWKName := Grid8ViewWK.GetColumnByFieldName('기사명').Index;
		sWKName := Grid8ViewWK.DataController.Values[iRow, iWKName];

		if ( Not Assigned(Frm_JON32) ) Or ( Frm_JON32 = NIl ) then Frm_JON32 := TFrm_JON32.Create(Nil);
		Frm_JON32.pJON32Dock.bUnDock := False;
		Frm_JON32.pJON32Dock.HdNo    := GT_SEL_BRNO.HdNo;
		Frm_JON32.pJON32Dock.BrNo    := GT_SEL_BRNO.BrNo;
		Frm_JON32.pJON32Dock.BrName  := GT_SEL_BRNO.BrName;
		Frm_JON32.pJON32Dock.Gubun   := GT_SEL_BRNO.Gubun;
		Frm_JON32.pJON32Dock.Idx     := GT_SEL_BRNO.Idx;

		Frm_JON32.Jon03Tag := Self.Tag;
		Frm_JON32.Proc_Flag := 5;
		Frm_JON32.sWk_sabun32 := sWKSabun;
		Frm_JON32.sWkName := sWKName;
		Frm_JON32.sKeyNumber := '';
		Frm_JON32.Show;
	Finally

	End;
end;

procedure TFrm_WOR.proc_WkAttend_Search;
var
  ls_TxQry, ls_TxLoad, sDt1, sDt2, sWkSabun, sQueryTemp : string; // XML File Load
  sBrNo : AnsiString;
  iRow, iwkSabun, iBrNo : Integer;
  slReceive: TStringList;
  ErrCode: integer;
begin
  iRow := cxgWkAttend.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  iwkSabun := cxgWkAttend.GetColumnByFieldName('기사사번').Index;
  sWkSabun := cxgWkAttend.DataController.Values[iRow, iWkSabun];

  iBrNo := cxgWkAttend.GetColumnByFieldName('지사코드').Index;
  sBrNo := cxgWkAttend.DataController.Values[iRow, iBrNo];

  if (cxDtStartA3.Text = '') or (cxDtEndA3.Text = '') then
  begin
    cxDtStartA3.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd'), 1, 10));
    cxDtEndA3.Date := cxDtStartA3.Date + 1;
  end;
  sDt1 := FormatDateTime('yyyymmdd', cxDtStartA3.Date) + '090000';
  sDt2 := FormatDateTime('yyyymmdd', cxDtEndA3.Date) + '090000';

  ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
  fGet_BlowFish_Query(GSQ_WK_ATTENT_SEARCH, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sWkSabun, sBrNo, sDt1, sDt2]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR008', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

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

procedure TFrm_WOR.MiYesterdayClick(Sender: TObject);
begin
	if cxPageControl1.ActivePageIndex = 1 then
		SetDateControl(cxDtStartA3, cxDtEndA3, tdYesterday)
	else if cxPageControl1.ActivePageIndex = 7 then //미출근현황
		SetDateControl(cxDtStartA10, cxDtEndA10, tdYesterday)
	else if cxPageControl1.ActivePageIndex = 8 then
		SetDateControl(cxDtStartA9, cxDtEndA9, tdYesterday);
end;

procedure TFrm_WOR.MiStartMonthClick(Sender: TObject);
begin
	if cxPageControl1.ActivePageIndex = 1 then
		SetDateControl(cxDtStartA3, cxDtEndA3, tdStartMonth)
	else if cxPageControl1.ActivePageIndex = 7 then //미출근현황
		SetDateControl(cxDtStartA10, cxDtEndA10, tdStartMonth)
	else if cxPageControl1.ActivePageIndex = 8 then
		SetDateControl(cxDtStartA9, cxDtEndA9, tdStartMonth);
end;

procedure TFrm_WOR.MenuItem1Click(Sender: TObject);
begin
	if cxgOther.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
    Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

	Frm_Main.sgExcel := '당사에 차단된 타회사기사.xls';
	Frm_Main.sgRpExcel := Format('기사>공유콜배차제한>당사차단]%s건/%s', [GetMoneyStr(cxgOther.DataController.RecordCount), FExcelDownBlock]);
  Frm_Main.cxGridExcel := cxGridA41;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR.Menu_KakaoClick(Sender: TObject);
var iRow, iWkCSabun, iBlock, iCode : integer;
	sWkCSabun, sTmp, sBlock, sCode : string;
begin
	SetDebugeWrite('TFrm_WOR.proc_AboveOrderWKList');
	Try
		iRow := cxGridKakaoBlock.DataController.FocusedRecordIndex;

		iBlock := cxGridKakaoBlock.GetColumnByFieldName('차단코드').Index;
		iCode := cxGridKakaoBlock.GetColumnByFieldName('업체코드').Index;
		iWkCSabun := cxGridKakaoBlock.GetColumnByFieldName('카카오사번').Index;
//		iWkTel := cxGridKakaoBlock.GetColumnByFieldName('sWkTel').Index;

		

		sBlock := cxGridKakaoBlock.DataController.Values[iRow, iBlock];
		sCode := cxGridKakaoBlock.DataController.Values[iRow, iCode];
		sWkCSabun := cxGridKakaoBlock.DataController.Values[iRow, iWkCSabun];
//		sWkTel := cxGridKakaoBlock.DataController.Values[iRow, iWkTel];

		sTmp := Format('%s 기사님의 차단을 해제하시겠습니까?', [sWkCSabun]);
		if Application.MessageBox(PChar(sTmp), CDMSE,
					MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			proc_KakaoUnBlock('1', sBlock, sCode, sWkCSabun);
		end;
	Finally
	End;
end;

procedure TFrm_WOR.MiOneMonthClick(Sender: TObject);
begin
	if cxPageControl1.ActivePageIndex = 1 then
		SetDateControl(cxDtStartA3, cxDtEndA3, tdOneMonth)
	else if cxPageControl1.ActivePageIndex = 7 then
		SetDateControl(cxDtStartA10, cxDtEndA10, tdOneMonth)
	else if cxPageControl1.ActivePageIndex = 8 then //미출근현황
		SetDateControl(cxDtStartA9, cxDtEndA9, tdOneMonth);
end;

procedure TFrm_WOR.MiOneWeekClick(Sender: TObject);
begin
	if cxPageControl1.ActivePageIndex = 1 then
		SetDateControl(cxDtStartA3, cxDtEndA3, tdOneWeek)
	else if cxPageControl1.ActivePageIndex = 7 then //미출근현황
		SetDateControl(cxDtStartA10, cxDtEndA10, tdOneWeek)
	else if cxPageControl1.ActivePageIndex = 8 then
		SetDateControl(cxDtStartA9, cxDtEndA9, tdOneWeek);
end;

procedure TFrm_WOR.MiTodayClick(Sender: TObject);
begin
	if cxPageControl1.ActivePageIndex = 1 then
		SetDateControl(cxDtStartA3, cxDtEndA3, tdToday)
	else if cxPageControl1.ActivePageIndex = 7 then //미출근현황
		SetDateControl(cxDtStartA10, cxDtEndA10, tdToday)
	else if cxPageControl1.ActivePageIndex = 8 then
		SetDateControl(cxDtStartA9, cxDtEndA9, tdToday);
end;

procedure TFrm_WOR.pmKakaoPopup(Sender: TObject);
begin
	if cxGridKakaoBlock.DataController.RecordCount < 1 then exit;
end;

procedure TFrm_WOR.pmWkMenuPopup(Sender: TObject);
begin
	N29.Visible := False;
	MenuItem24.Visible := False;
	MenuItem35.Visible := True;
	MenuItem36.Visible := True;

	if (TCK_USER_PER.WOR_MngModify = '1') then //기사관리 기사수정
	begin
		N29.Visible := False;
	end;
	
	if (TCK_USER_PER.COM_WkCharge = '1') or (TCK_USER_PER.COM_WkStautsChange = '1') then    // 공통권한 : 기사 충전// 공통권한 : 기사상태변경
	begin
		MenuItem24.Visible := True;
	end;

	case cxPageControl1.ActivePageIndex of
		2 :
		begin
			if cxgOwner.DataController.RecordCount = 0 then	exit;
		end;
		7 :
		begin
			N29.Visible := False;
			MenuItem24.Visible := False;
			MenuItem35.Visible := False;
			MenuItem36.Visible := True;
			if cxGridNoWork.DataController.RecordCount = 0 then	exit;
		end;
	end;
	if GT_OCX <> '' then
		MenuItem35.Visible := True
	else
		MenuItem35.Visible := False;
end;

procedure TFrm_WOR.proc_Wk_Tel(sWkPhone : String; iGubun : Integer);
var
	sCustTel : string;
begin
	sCustTel := StringReplace(sWkPhone, '-', '', [rfReplaceAll]);

  Frm_Main.pCallingCID(sCustTel, GT_POSS_KEYNUM);
end;

function TFrm_WOR.func_BrTelSearch(sBrNo: string): string;
var
  i: Integer;
begin
  Result := '';
  try
    for i := 0 to GT_BR_KN_CNT do
    begin
      if GSL_HD_LIST[i, 0] = sBrNo then
      begin
        Result := GSL_HD_LIST[i, 7];
        break;
      end;
    end;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WOR.cxPageControl1Change(Sender: TObject);
Var iTag : Integer;
begin
	case cxPageControl1.ActivePageIndex of
		4 : proc_peakTimeSearch;
	end;

  iTag := cxPageControl1.Pages[cxPageControl1.ActivePageIndex].Tag;

  if Assigned(Frm_JON51) then
      if TCK_USER_PER.BTM_MENUSCH = '1' then Frm_JON51.Menu_Use_Mark('ADD', iTag);
end;

procedure TFrm_WOR.cxPcA2Change(Sender: TObject);
begin
{  case cxPageControl2.ActivePageIndex of
    0:
      begin
        proc_search_wk_cash(1);
      end;
    1:
      begin
        proc_search_wk_cash(2);
      end;
  end;}
end;

procedure TFrm_WOR.cxViewBlockListCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  ARow: Integer;
  APhone, ASsn: string;
begin
  ARow := ACellViewInfo.GridRecord.RecordIndex;

  if ARow < 0 then
    Exit;

  APhone  := cxViewBlockList.DataController.Values[ARow, cxViewBlockList.GetColumnByFieldName('휴대폰번호').Index];
  ASsn    := cxViewBlockList.DataController.Values[ARow, cxViewBlockList.GetColumnByFieldName('주민등록번호').Index];

  ShowBlacklistHistory(APhone, ASsn);
end;

procedure TFrm_WOR.ShowBlacklistHistory(APhone, ASsn: string);
begin
  if ( Not Assigned(Frm_WOR07) ) Or ( Frm_WOR07 = Nil ) then Frm_WOR07 := TFrm_WOR07.Create(Nil);
  Frm_WOR07.Show;
  Frm_WOR07.proc_blacklist(APhone, ASsn);
end;

procedure TFrm_WOR.TcxButton191Click(Sender: TObject);
begin
  if pnlHelpA7.Visible then pnlHelpA7.Visible := False
  else
  begin
    pnlHelpA7.Left := (Width - pnlHelpA7.Width) div 2;
    pnlHelpA7.top := (Height - pnlHelpA7.Height) div 2;
    pnlHelpA7.Visible := True;
    pnlHelpA7.BringToFront;
  end;
end;

procedure TFrm_WOR.sg_xlsColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_WOR.sg_xlsDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(sg_xls, AIndex, GS_SortNoChange);
end;

procedure TFrm_WOR.FormDestroy(Sender: TObject);
begin
  Frm_WOR := Nil;
end;

procedure TFrm_WOR.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR, GS_FONTNAME);
end;

procedure TFrm_WOR.proc_WkCommissionSearch;
var
  sWhere: string;
  ls_TxLoad, sNode: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    sWhere := '';
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      if GT_USERIF.LV = '60' then
        sWhere := Format(' AND B.HD_NO = ''%s'' ', [GT_SEL_BRNO.HDNO])
      else
        sWhere := Format(' AND B.BR_NO = ''%s'' ', [GT_USERIF.BR]);
    end else
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      sWhere := Format(' AND B.BR_NO = ''%s'' ', [GT_SEL_BRNO.BrNo]);
    end;

    if sWkSearchBrNo <> sWhere then
    begin
      sWkSearchBrNo := sWhere;
      cbWkComm.Properties.Items.Clear;
      slCommissionCd.Clear;
    end
    else
      Exit;

    ls_rxxml := GTx_UnitXmlLoad('SEL04.xml');
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
      lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR006';

      sNode := '/cdms/Service/Data/Query';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKBRCOMM01';
      lst_Node.item[0].attributes.getNamedItem('Backward').Text := sWhere;
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
  except

  end;
end;

procedure TFrm_WOR.proc_WKNotWork;
var
	ls_TxQry, ls_TxLoad, sWhere, sHdNo, sQueryTemp: string;
	slReceive: TStringList;
	ErrCode: integer;
begin
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
	begin
		GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSE);
		Exit;
	end;

	 if fGetChk_Search_HdBrNo('기사배차현황-미출근') then Exit;

	if cxgWkAttend.DataController.RecordCount = 0 then
	begin
    //////////////////////////////////////////////////////////////////////////////
    // 기사>기사배차현황]1000건/콜센터(통합)/기간:XXXX~XXXX
    FExcelDownBeach := Format('%s/기간:%s~%s',
			[
          GetSelBrInfo
        , cxDtStartA3.Text, cxDtEndA3.Text
      ]);
    //////////////////////////////////////////////////////////////////////////////

    sWhere := '';
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			sHdNo := GT_SEL_BRNO.HDNO
		else
			sHdNo := GT_USERIF.HD;

		sWhere := ' AND a.HD_NO = ''' + sHdNo + ''' ';
		if GT_USERIF.LV <> '60' then
			sWhere := sWhere + ' AND a.BR_NO = ''' + GT_USERIF.BR + ''' '
		else if GT_SEL_BRNO.GUBUN = '1' then
			sWhere := sWhere + ' AND a.BR_NO = ''' + GT_SEL_BRNO.BrNo + ''' ';

		if cxEdtSelText.Text <> '' then
		begin
			if cbSelList.ItemIndex = 0 then
				sWhere := sWhere + ' AND a.WK_SABUN LIKE ''%' + Param_Filtering(cxEdtSelText.Text) + '%'' '
			else
			if cbSelList.ItemIndex = 1 then
				sWhere := sWhere + ' AND a.WK_NAME LIKE ''%' + Param_Filtering(cxEdtSelText.Text) + '%'' ';
		end;

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
		fGet_BlowFish_Query(GSQ_WK_NOTWORK, sQueryTemp);
    ls_TxQry := sQueryTemp + sWhere;
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR007', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

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
end;

procedure TFrm_WOR.proc_FamilyBrChange;
var
  i : Integer;
  HdCd, HdCd_Old : String;
begin
	try
		frm_WOR01.cboBranch.Tag := 99;
		frm_WOR01.FBrNoList.Clear;
		frm_WOR01.FTakList.Clear;
		frm_WOR01.cboBranch.Properties.Items.Clear;
		HdCd_Old := '';

		for I := 0 to scb_FamilyBrName.Count - 1 do
		begin
			 HdCd :='';
			 HdCd := frm_Main.func_search_hdNo(scb_FamilyBrCode[I]);
			 if HdCd <> HdCd_Old then
			 begin
				 frm_WOR01.RequestDataHeadInfo(HdCd);
				 HdCd_Old := HdCd;
			 end;
       if GB_WORSOSOK_VIEW then
  			 frm_WOR01.cboBranch.Properties.Items.Add('(' + HdCd + ',' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I] + '/' + frm_WOR01.Gs_HdNm )
       else
  			 frm_WOR01.cboBranch.Properties.Items.Add('(' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I] );
			 frm_WOR01.FBrNoList.Add(scb_FamilyBrCode[I]);
			 frm_WOR01.FTakList.Add(scb_FamilyTaksong[I]);
			 Frm_WOR01.FShuttel4.Add(scb_FamilyShuttle4[I]);
		end;
		frm_WOR01.cboBranch.Tag := 0;
	except
	end;
end;

procedure Tfrm_WOR.proc_peakTimeSearch;
  function _GetTimeFormat(AValue: string): string;
  begin
    Result := '';
    if Length(AValue) = 4 then
      Result := Copy(AValue, 1, 2) + ':' + Copy(AValue, 3, 2);
  end;

  procedure ClearBrInfoCtrl;
  begin
    edtPeakTime01.Clear;
    edtPeakTime02.Clear;
    edtPeakTime11.Clear;
    edtPeakTime12.Clear;
    edtPeakCount1.Clear;
    edtPeakCount2.Clear;
    edtPeakPay1.Clear;
    edtPeakPay2.Clear;
    edtPeakLock01.Clear;
    edtPeakLock02.Clear;
    edtPeakLockSec.Clear;
    lblPeakAuthUse.Clear;

    edtPeakTime01.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakTime02.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakTime11.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakTime12.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakCount1.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakCount2.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakPay1.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakPay2.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakLock01.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakLock02.Enabled := gbxPeakBrInfo.Enabled;
    edtPeakLockSec.Enabled := gbxPeakBrInfo.Enabled;
    lblPeakAuthUse.Enabled := gbxPeakBrInfo.Enabled;

    lblPeakWkPass.Clear;
    lblPeakWkPassToday.Clear;
    lblPeakWkLock.Clear;
    lblPeakWkLockToday.Clear;
  end;

  procedure _SetPeakWkInfo(AStatus, ACount: string);
  begin
    if AStatus = lblPeakWkPassC.Caption then
      lblPeakWkPass.Caption := ACount
    else if AStatus = lblPeakWkPassTodayC.Caption then
      lblPeakWkPassToday.Caption := ACount
    else if AStatus = lblPeakWkLockC.Caption then
      lblPeakWkLock.Caption := ACount
    else if AStatus = lblPeakWkLockTodayC.Caption then
      lblPeakWkLockToday.Caption := ACount
    ;
  end;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode: Integer;
begin
  xdom := ComsDomDocument.Create;
  gbxPeakBrInfo.Enabled := GT_SEL_BRNO.GUBUN = '1';

  ClearBrInfoCtrl;

  if GT_SEL_BRNO.GUBUN = '1' then
  begin
    Param := GT_SEL_BRNO.BrNo;

    if not RequestBase(GetSel05('', 'wk_pbl.s_br_info', '100', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('심야 배차제한 설정정보 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;

    if not xdom.loadXML(XmlData) then
    begin
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    if (0 < GetXmlRecordCount(XmlData)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);

        lblPeakAuthUse.Caption := ls_Rcrd[1];

        edtPeakTime01.Text := _GetTimeFormat(ls_Rcrd[2]);
        edtPeakTime02.Text := _GetTimeFormat(ls_Rcrd[3]);
        edtPeakPay1.Text := IfThen(ls_Rcrd[4] = '', '', StrToMoney(ls_Rcrd[4]));
        edtPeakCount1.Text := IfThen(ls_Rcrd[5] = '', '', StrToMoney(ls_Rcrd[5]));

        edtPeakTime11.Text := _GetTimeFormat(ls_Rcrd[6]);
        edtPeakTime12.Text := _GetTimeFormat(ls_Rcrd[7]);
        edtPeakPay2.Text := IfThen(ls_Rcrd[8] = '', '', StrToMoney(ls_Rcrd[8]));
        edtPeakCount2.Text := IfThen(ls_Rcrd[9] = '', '', StrToMoney(ls_Rcrd[9]));

        edtPeakLock01.Text := _GetTimeFormat(ls_Rcrd[10]);
        edtPeakLock02.Text := _GetTimeFormat(ls_Rcrd[11]);
        edtPeakLockSec.Text := ls_Rcrd[12];
      finally
        ls_Rcrd.Free;
      end;
    end;
  end;

  // 심야 배차제한 기사현황
  // 파라미터:
  //   - 조회구분코드(1 본사, ELSE 지사)
  //   - 본사/지사코드
  Param := '%s│%s';
  if GT_SEL_BRNO.GUBUN = '1' then
    Param := Format(Param, ['0', GT_SEL_BRNO.BrNo])
  else
    Param := Format(Param, ['1', GT_SEL_BRNO.HDNO])
  ;

  if not RequestBase(GetSel05('', 'wk_pbl.s_wk_statistic', '100', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('심야 배차제한 기사현황 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  if not xdom.loadXML(XmlData) then
  begin
    ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
    Exit;
  end;

  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
  ls_Rcrd := TStringList.Create;
  try
    for I := 0 to lst_Result.length - 1 do
    begin
        GetTextSeperationEx('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

        _SetPeakWkInfo(ls_Rcrd[0], ls_Rcrd[1]);
    end;
  finally
    ls_Rcrd.Free;
	end;
end;

end.


unit xe_WORA1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, System.StrUtils,
  Dialogs, System.Math, IniFiles, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, xe_GNL,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCheckBox, cxLabel,
	cxCurrencyEdit, cxClasses, Vcl.StdCtrls, Vcl.ExtCtrls, cxSpinEdit,
	cxRadioGroup, cxGridLevel, cxGridCustomTableView, cxGridTableView, DateUtils,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, cxDropDownEdit, cxTextEdit,
  cxMaskEdit, cxCalendar, cxButtons, cxGroupBox, dxBarBuiltInMenu, dxSkinsCore,
	dxSkinscxPCPainter, Vcl.Buttons, ComObj, cxCalc,
  dxLayoutContainer, cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomLayoutView, dxDateRanges, dxSkinOffice2010Silver,
  dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TFrm_WORA1 = class(TForm)
    pnlWkCounselTitle: TPanel;
		Bevel1: TBevel;
    lstWkCShow: TListBox;
    lstWkCHide: TListBox;
    cxLabel64: TcxLabel;
		cxLabel65: TcxLabel;
    btnWkCTitleSave: TcxButton;
    btnWkCTitleClose: TcxButton;
    PnlMain: TPanel;
    Shape6: TShape;
    lbWkSabun: TListBox;
    pnlEtcReason: TPanel;
    btn_Close: TcxButton;
    cxButton2: TcxButton;
    cxLabel5: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxlbCnt: TcxLabel;
    cxedEtc: TcxTextEdit;
    ls_wk_sms: TListBox;
    pnlWkJobTime: TPanel;
    cxLabel7: TcxLabel;
    cxWkJobCnt: TcxLabel;
    cxbJobSet: TcxButton;
    cxbJobClose: TcxButton;
    cxLabel55: TcxLabel;
    cxLabel56: TcxLabel;
    cxcbStartHour: TcxComboBox;
    cxcbEndHour: TcxComboBox;
    cxcbStartMin: TcxComboBox;
    cxcbEndMin: TcxComboBox;
    cxbJobCancel: TcxButton;
    ProgressBar1: TProgressBar;
    pnlWkRev: TPanel;
    Panel7: TPanel;
    pnlChargeGroup: TPanel;
    cxrbSu: TcxRadioButton;
    cxrbBo: TcxRadioButton;
    cxrbEtc: TcxRadioButton;
    cxrbChargeCash: TcxRadioButton;
    cxrbChange: TcxRadioButton;
    cxLabel48: TcxLabel;
    cxlbRevCnt: TcxLabel;
    cxbSmsSend: TcxButton;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxbCashSet: TcxButton;
    cxbCashClose: TcxButton;
    cxLabel4: TcxLabel;
    cxedMemo: TcxTextEdit;
    ed_ChargeCash: TcxSpinEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    cxrbWkSabun: TcxRadioButton;
    cxrbBrNum: TcxRadioButton;
    cxrbNoRange: TcxRadioButton;
    cxLabel49: TcxLabel;
    cxStNum: TcxCurrencyEdit;
    cxEdNum: TcxCurrencyEdit;
    cxbWkCnt: TcxButton;
    cxGroupBox2: TcxGroupBox;
    grpWkRev: TcxGroupBox;
    grpWkJobTime: TcxGroupBox;
    grpWkCounselTitle: TcxGroupBox;
    Shape3: TShape;
    Shape4: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    PnlHelp: TcxGroupBox;
    cxLabel29: TcxLabel;
    cxButton5: TcxButton;
		tmrCashProcess: TTimer;
    Shape20: TShape;
    cxLabel3: TcxLabel;
    ed_PChargeCash: TcxSpinEdit;
    pnlPCharge: TPanel;
    Panel1: TPanel;
    pnlWKAllLimit: TPanel;
    grpWKAllLimit: TcxGroupBox;
    Shape21: TShape;
    Shape22: TShape;
    cxLimitN: TcxButton;
    cxLimitClose: TcxButton;
    cxLimitY: TcxButton;
    cxLabel6: TcxLabel;
    cxLabel9: TcxLabel;
    cxlbLimitCnt: TcxLabel;
    ProgressBar3: TProgressBar;
    lbWkCounselTitle: TListBox;
		cxGridA1: TcxGrid;
		cxgWkCounsel: TcxGridDBTableView;
    cxgWkCounselColumn41: TcxGridDBColumn;
    cxgWkCounselColumn1: TcxGridDBColumn;
    cxgWkCounselColumn2: TcxGridDBColumn;
    cxgWkCounselColumn3: TcxGridDBColumn;
    cxgWkCounselColumn4: TcxGridDBColumn;
    cxgWkCounselColumn5: TcxGridDBColumn;
    cxgWkCounselColumn6: TcxGridDBColumn;
    cxgWkCounselColumn7: TcxGridDBColumn;
    cxgWkCounselColumn8: TcxGridDBColumn;
		cxgWkCounselColumn9: TcxGridDBColumn;
    cxgWkCounselColumn10: TcxGridDBColumn;
    cxgWkCounselColumn11: TcxGridDBColumn;
    cxgWkCounselColumn12: TcxGridDBColumn;
    cxgWkCounselColumn13: TcxGridDBColumn;
    cxgWkCounselColumn22: TcxGridDBColumn;
    cxgWkCounselColumn14: TcxGridDBColumn;
    cxgWkCounselColumn15: TcxGridDBColumn;
    cxgWkCounselColumn18: TcxGridDBColumn;
    cxgWkCounselColumn16: TcxGridDBColumn;
    cxgWkCounselColumn17: TcxGridDBColumn;
    cxgWkCounselColumn19: TcxGridDBColumn;
    cxgWkCounselColumn24: TcxGridDBColumn;
    cxgWkCounselColumn39: TcxGridDBColumn;
    cxgWkCounselColumn40: TcxGridDBColumn;
    cxgWkCounselColumn20: TcxGridDBColumn;
    cxgWkCounselColumn21: TcxGridDBColumn;
    cxgWkCounselColumn23: TcxGridDBColumn;
    cxgWkCounselColumn25: TcxGridDBColumn;
    cxgWkCounselColumn26: TcxGridDBColumn;
    cxgWkCounselColumn27: TcxGridDBColumn;
    cxgWkCounselColumn28: TcxGridDBColumn;
    cxgWkCounselColumn29: TcxGridDBColumn;
    cxgWkCounselColumn30: TcxGridDBColumn;
    cxgWkCounselColumn31: TcxGridDBColumn;
    cxgWkCounselColumn33: TcxGridDBColumn;
    cxgWkCounselColumn32: TcxGridDBColumn;
    cxgWkCounselColumn34: TcxGridDBColumn;
    cxgWkCounselColumn35: TcxGridDBColumn;
    cxgWkCounselColumn36: TcxGridDBColumn;
    cxgWkCounselColumn37: TcxGridDBColumn;
    cxgWkCounselColumn38: TcxGridDBColumn;
    cxColWkCounselColumn41: TcxGridDBColumn;
    cxColWkCounselColumn42: TcxGridDBColumn;
    cxgWkCounselColumn42: TcxGridDBColumn;
    cxgWkCounselColumn43: TcxGridDBColumn;
    cxColWkCounselPeekBlock: TcxGridDBColumn;
    cxColWkCounselLicSt: TcxGridDBColumn;
    cxColDistanceType: TcxGridDBColumn;
    cxgWkCounselColumn44: TcxGridDBColumn;
    CustView1WkCounselColumn45: TcxGridDBColumn;
    CustView1WkCounselColumn46: TcxGridDBColumn;
    CustView1WkCounselColumn47: TcxGridDBColumn;
    CustView1WkCounselColumn48: TcxGridDBColumn;
    cxgWkCounselColumn45: TcxGridDBColumn;
    cxgWkCounselColumn46: TcxGridDBColumn;
		cxgWkCounselColumn47: TcxGridDBColumn;
    cxgWkCounselColumn48: TcxGridDBColumn;
    cxgWkCounselColumn49: TcxGridDBColumn;
    cxgWkCounselColumn50: TcxGridDBColumn;
    cxgWkCounselColumn51: TcxGridDBColumn;
    cxgWkCounselColumn52: TcxGridDBColumn;
    cxgWkCounselColumn53: TcxGridDBColumn;
    cxgWkCounselColumn54: TcxGridDBColumn;
    cxgWkCounselColumn55: TcxGridDBColumn;
    cxgWkCounselColumn56: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    img2: TImage;
    btnDocking: TSpeedButton;
    btnFloating: TSpeedButton;
    chkWkConnect: TcxCheckBox;
    chkWkCounselAll: TcxCheckBox;
    cxButton1: TcxButton;
    btn_WkInsert: TcxButton;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    cxbWkCharge: TcxButton;
    cxbWkModify: TcxButton;
    cxDtStartA1: TcxDateEdit;
    cxDtEndA1: TcxDateEdit;
    cxLabel63: TcxLabel;
    cxLabel75: TcxLabel;
    lblSosokNameA1: TcxLabel;
    keyword_text01: TcxTextEdit;
    btnSearchA1: TcxButton;
    select_list1: TcxComboBox;
    select_list2: TcxComboBox;
    select_list3: TcxComboBox;
    cxTabControl1: TcxTabControl;
    rb_WKALL: TcxRadioButton;
    rb_WKMutil: TcxRadioButton;
    rb_NotWKMutil: TcxRadioButton;
    rb_WKSingle: TcxRadioButton;
    cxbWKInsranceApply: TcxButton;
    cxbWKAccidentList: TcxButton;
    cxLabel8: TcxLabel;
    cb_InsranceState: TcxComboBox;
    chk_InsranceDate: TcxCheckBox;
    chk_InsranceState: TcxCheckBox;
    pnlWkBrChange: TPanel;
		grpWkBrChange: TcxGroupBox;
    Label17: TLabel;
    Label2: TLabel;
    Shape5: TShape;
    Shape7: TShape;
    Shape8: TShape;
    cxMoveSet: TcxButton;
    cxMoveClose: TcxButton;
    cxcbWkBrNo: TcxComboBox;
    cxcbWkHdNo: TcxComboBox;
    cxLabel14: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel50: TcxLabel;
    cxLbl_Hd: TcxLabel;
    ProgressBar2: TProgressBar;
    pnlWKInsranceApply: TPanel;
    grpWKInsranceApply: TcxGroupBox;
    Label10: TLabel;
    Shape24: TShape;
    btnWKInsranceApplyOK: TcxButton;
    btnWKInsranceApplyClose: TcxButton;
    cxLabel10: TcxLabel;
    lbWKInsranceApplyCnt: TcxLabel;
    ProgressBar4: TProgressBar;
    Label12: TLabel;
    Label14: TLabel;
    cxButton3: TcxButton;
		cxgWkCounselColumn57: TcxGridDBColumn;
    cxgWkCounselColumn58: TcxGridDBColumn;
    Shape53: TShape;
    cxLabel42: TcxLabel;
    cxdInsStartDate: TcxDateEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel15: TcxLabel;
    Label15: TLabel;
    Label16: TLabel;
    chkInsStartDate: TcxCheckBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    cbWKInsGubun: TcxComboBox;
    pnlWKInsranceChange: TPanel;
    cxGroupBox3: TcxGroupBox;
    Shape25: TShape;
    btnWKInsranceChangeOK: TcxButton;
    btnWKInsranceChangeClose: TcxButton;
    cxLabel16: TcxLabel;
    lbWKInsranceChangeCnt: TcxLabel;
    ProgressBar5: TProgressBar;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel22: TcxLabel;
    lbWKInsranceChangePassCnt: TcxLabel;
		cxgWkCounselColumn59: TcxGridDBColumn;
    cxgWkCounselColumn60: TcxGridDBColumn;
    chkWkOnLine: TcxCheckBox;
    cxGroupBox4: TcxGroupBox;
    Label18: TLabel;
    Shape26: TShape;
    cxButton4: TcxButton;
    cxButton6: TcxButton;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    ProgressBar6: TProgressBar;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    Shape28: TShape;
    cxcbInsCorper: TcxComboBox;
    cxLabel28: TcxLabel;
    Shape29: TShape;
    cxedInsNum: TcxTextEdit;
    cxLabel21: TcxLabel;
    Shape27: TShape;
    cxdtInsEnd: TcxDateEdit;
    cxGLVWKGroup_Root: TdxLayoutGroup;
    cxGLVWK: TcxGridLayoutView;
    cxGLVWKLayoutItem1: TcxGridLayoutItem;
    cxGLVWKItem1: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem2: TcxGridLayoutItem;
    cxGLVWKItem2: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem3: TcxGridLayoutItem;
    cxGLVWKItem3: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem4: TcxGridLayoutItem;
    cxGLVWKItem4: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem5: TcxGridLayoutItem;
    cxGLVWKItem5: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem6: TcxGridLayoutItem;
    cxGLVWKItem6: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem7: TcxGridLayoutItem;
    cxGLVWKItem7: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem8: TcxGridLayoutItem;
    cxGLVWKItem8: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem9: TcxGridLayoutItem;
    cxGLVWKItem9: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem10: TcxGridLayoutItem;
    cxGLVWKItem10: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem11: TcxGridLayoutItem;
    cxGLVWKItem11: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem12: TcxGridLayoutItem;
    cxGLVWKItem12: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem13: TcxGridLayoutItem;
    cxGLVWKItem13: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem14: TcxGridLayoutItem;
    cxGLVWKItem14: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem15: TcxGridLayoutItem;
    cxGLVWKItem15: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem16: TcxGridLayoutItem;
    cxGLVWKItem16: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem17: TcxGridLayoutItem;
    cxGLVWKItem17: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem18: TcxGridLayoutItem;
    cxGLVWKItem18: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem19: TcxGridLayoutItem;
    cxGLVWKItem19: TcxGridLayoutViewItem;
    cxGLVWKLayoutItem20: TcxGridLayoutItem;
    cxGLVWKItem20: TcxGridLayoutViewItem;
    cxGLVWKGroup1: TdxLayoutAutoCreatedGroup;
    cxGLVWKGroup2: TdxLayoutAutoCreatedGroup;
    cxCheckBox1: TcxCheckBox;
    cxGLVWKGroup3: TdxLayoutAutoCreatedGroup;
    btnWkCDown: TcxButton;
    btnWkCHide: TcxButton;
    btnWkCShow: TcxButton;
    btnWkCUp: TcxButton;
    cxgWkCounselColumn61: TcxGridDBColumn;
    cxStyleRepositoryWorker: TcxStyleRepository;
    cxStyleNormal: TcxStyle;
    cxStyleSelected: TcxStyle;
    cxStyleSysLock: TcxStyle;
    cxStyleSysLockSel: TcxStyle;
    cxStyleKakao1: TcxStyle;
    cxStyleKakao2: TcxStyle;
    cxStyleKakao1Selected: TcxStyle;
    cxStyleKakao2Selected: TcxStyle;
    cxStyleCallmart: TcxStyle;
    cxStyleCallmartSelect: TcxStyle;
    pm_Workder: TPopupMenu;
    N1: TMenuItem;
    N9: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N18: TMenuItem;
    N8: TMenuItem;
    pm_delete: TMenuItem;
    pm_WKInsranceApply: TMenuItem;
    pm_WKInsranceChange: TMenuItem;
    N15: TMenuItem;
    N12: TMenuItem;
    N24: TMenuItem;
    mniWkCashBatch: TMenuItem;
    N25: TMenuItem;
    N32: TMenuItem;
    N31: TMenuItem;
    N29: TMenuItem;
    N33: TMenuItem;
    SMS2: TMenuItem;
    pm_InstallSMSN: TMenuItem;
    pm_InstallSMS: TMenuItem;
    N26: TMenuItem;
    N16: TMenuItem;
    N20: TMenuItem;
    N19: TMenuItem;
    N34: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N17: TMenuItem;
    N23: TMenuItem;
    N10: TMenuItem;
    N14: TMenuItem;
    SMS1: TMenuItem;
    pm_SendSMS: TMenuItem;
    mniN30: TMenuItem;
    N30: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N11: TMenuItem;
    mniWkCTitle: TMenuItem;
    N13: TMenuItem;
    cbWKIns: TcxComboBox;
    cxButton7: TcxButton;
    cxGLVWKLayoutItem21: TcxGridLayoutItem;
    cxGLVWKItem21: TcxGridLayoutViewItem;
    cxgWkCounselColumn62: TcxGridDBColumn;
    cxgWkCounselColumn63: TcxGridDBColumn;
    Label1: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label5: TcxLabel;
    Label11: TcxLabel;
    Label13: TcxLabel;
    lblMin: TcxLabel;
    cxgWkCounselColumn64: TcxGridDBColumn;
    cxgWkCounselColumn65: TcxGridDBColumn;
    cxgWkCounselColumn66: TcxGridDBColumn;
    cxgWkCounselColumn67: TcxGridDBColumn;
    cxgWkCounselColumn68: TcxGridDBColumn;
    nmBechaBlockTime: TMenuItem;
    cxgWkCounselColumn69: TcxGridDBColumn;
    N35: TMenuItem;
    cxgWkCounselColumn70: TcxGridDBColumn;
    N36: TMenuItem;
    pnl_InsureGubun: TcxGroupBox;
    btn_MCash: TcxButton;
    mni_MCashInOut: TMenuItem;
    pnl_MCash: TPanel;
    pnl_MCash2: TcxGroupBox;
    Panel5: TPanel;
    Shape32: TShape;
    Panel6: TPanel;
    Shape33: TShape;
    rdo_MCash_Type1: TcxRadioButton;
    rdo_MCash_Type2: TcxRadioButton;
    rdo_MCash_Type3: TcxRadioButton;
    rdo_MCash_Type4: TcxRadioButton;
    cxLabel31: TcxLabel;
    lb_MCashCnt: TcxLabel;
    Panel11: TPanel;
    Shape35: TShape;
    Shape36: TShape;
    cxButton11: TcxButton;
    btn_MCashSet: TcxButton;
    edt_MCashMemo: TcxTextEdit;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    edt_MCash: TcxSpinEdit;
    cxLabel38: TcxLabel;
    rdo_MCash_Type5: TcxRadioButton;
    cxgWkCounselColumn71: TcxGridDBColumn;
    mni_MCash: TMenuItem;
    rdo_Insure: TcxCheckBox;
    rdo_TakInsure: TcxCheckBox;
    cxLabel171: TcxLabel;
    procedure select_list1Click(Sender: TObject);
    procedure select_list5Click(Sender: TObject);
    procedure cxbWkChargeClick(Sender: TObject);
		procedure cxgWkCounselCellDblClick(Sender: TcxCustomGridTableView;
			ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
    procedure cxgWkCounselColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxgWkCounselColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxgWkCounselColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnSearchA1Click(Sender: TObject);
    procedure pm_WorkderPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkWkCounselAllClick(Sender: TObject);
    procedure btn_WkInsertClick(Sender: TObject);
    procedure cxbWkModifyClick(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
		procedure N1Click(Sender: TObject);
		procedure cxButton2Click(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure SMS1Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure cxMoveCloseClick(Sender: TObject);
    procedure cxMoveSetClick(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure keyword_text01KeyPress(Sender: TObject; var Key: Char);
		procedure cxgWkCounselKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxgWkCounselKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxgWkCounselMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxTabControl1Change(Sender: TObject);
    procedure mniN30Click(Sender: TObject);
    procedure cxgWkCounselColumn41PropertiesEditValueChanged(
      Sender: TObject);
		procedure cxgWkCounselCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgWkCounselSelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxgWkCounselMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxgWkCounselMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure mniWkCTitleClick(Sender: TObject);
    procedure btnWkCTitleCloseClick(Sender: TObject);
    procedure btnWkCItemMove(Sender: TObject);
    procedure btnWkCTitleSaveClick(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure cxColWkCounselPeekBlockGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure FormDestroy(Sender: TObject);
    procedure mniWkCashBatchClick(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure cxLabel126MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
		procedure cxgWkCounselTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure N32Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure cxGroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
			Y: Integer);
    procedure cxgWkCounselStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
		procedure N16Click(Sender: TObject);
    procedure cxrbSuClick(Sender: TObject);
    procedure cxbCashCloseClick(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure cxbJobSetClick(Sender: TObject);
    procedure cxbJobCancelClick(Sender: TObject);
    procedure cxbJobCloseClick(Sender: TObject);
		procedure cxbWkCntClick(Sender: TObject);
    procedure cxbSmsSendClick(Sender: TObject);
		procedure cxgWkCounselDataControllerSortingChanged(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxcbWkHdNoPropertiesChange(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure grpWkRevMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grpWkJobTimeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grpWkBrChangeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grpWkCounselTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGroupBox2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tmrCashProcessTimer(Sender: TObject);
    procedure cxbCashSetClick(Sender: TObject);
		procedure cxgWkCounselTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxgWkCounselTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
			Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxgWkCounselTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxgWkCounselTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure pm_SendSMSClick(Sender: TObject);
    procedure cxGroupBox1Resize(Sender: TObject);
    procedure btnDockingClick(Sender: TObject);
    procedure btnFloatingClick(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure cxLimitCloseClick(Sender: TObject);
    procedure cxLimitYClick(Sender: TObject);
    procedure cxLimitNClick(Sender: TObject);
		procedure cxbWKAccidentListClick(Sender: TObject);
    procedure chk_InsranceDateClick(Sender: TObject);
    procedure chk_InsranceStateClick(Sender: TObject);
    procedure cxbWKInsranceApplyClick(Sender: TObject);
    procedure grpWKInsranceApplyMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnWKInsranceApplyCloseClick(Sender: TObject);
		procedure btnWKInsranceApplyOKClick(Sender: TObject);
    procedure pm_WKInsranceApplyClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxdInsStartDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkInsStartDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnWKInsranceChangeOKClick(Sender: TObject);
    procedure btnWKInsranceChangeCloseClick(Sender: TObject);
    procedure pm_WKInsranceChangeClick(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure cxGroupBox4MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxdtInsEndExit(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure pm_InstallSMSNClick(Sender: TObject);
    procedure keyword_text01KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkInsStartDatePropertiesChange(Sender: TObject);
    procedure cbWKInsGubunPropertiesChange(Sender: TObject);
    procedure chk_InsranceStatePropertiesChange(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure nmBechaBlockTimeClick(Sender: TObject);
    procedure btn_MCashClick(Sender: TObject);
    procedure mni_MCashInOutClick(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure btn_MCashSetClick(Sender: TObject);
    procedure mni_MCashClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
	private
    { Private declarations }
    FWkState: TStringList;
    pviSucc, pviFail: integer;
    pvsFWkSb: string;

    AIndex : Integer;

    FExcelDownManage : string;

    slCommissionCd, slInsCode: TStringList;

		sWkSabun : string;
		bWKOnline : Boolean; //���õ� ����Ʈ�� �¶��ΰ��Ա�� ���� (���� :True)

		gSortOrder : string; //��ü��� ���� �Ͽ� ��Ʈ�Ҷ� ���� ��Ʈ��

		procedure proc_WkCounsel_Title;
    procedure proc_WkCounsel_Clear;
    procedure proc_wkCounsel_Save;
    procedure proc_WkCashCharge;
    procedure proc_WkCommissionSearch;
    procedure proc_SelectSettlement(sKey: string);
    procedure proc_wk_modify;
    function func_Search_Phone(sWkSabun: string): string;
    procedure proc_Wk_Tel(sWkPhone: string);

    function GetGridSelectedCount(AView: TcxGridDBTableView): Integer;

		procedure SetWkState(var AStrList: TStringList);
		procedure proc_WkMainCashProcess;
		procedure proc_WkCashProcess(sWkSabunList: string; iWCnt: integer);
		function func_possbleJob(iType: Integer): Boolean;
		function GetGridSelectedBrno(AView: TcxGridDBTableView; Var aBrNo : String): Boolean;
		function func_AllLimitJob(iType: Integer): Boolean;
		function func_GETHOLIDAY(AParam:string):Boolean; //������ üũ YYYYMMDD 1 - ������, 0 - �������� �ƴ�
		procedure proc_sysRead;
		procedure proc_recieve1(ls_rxxml: Widestring);
		function proc_smsRead(ls_rxxml: WideString):Boolean;
		procedure proc_WkMCashSet;
		function func_WkMCashProcess(AType, AGubun, sWkSabunList, sMemo, sCash: string):Boolean;
	public
		{ Public declarations }
    sWkSearchBrNo: string;
		gnMouseKeyDown, gnClickedRow: Integer;
    gbControlKeyDown, gbMouseKeyDrag: Boolean;
		gKey50 : Boolean;    //������ ����â ���½� �迭�̻�� �ϱ� ���� ���а�
    gPreTag : Integer;

		pWORA1Dock : TUNDOCKMNG;

		procedure proc_init;
		procedure proc_WkCounsel;
		procedure proc_WorkerList(iType: Integer = 0);
		procedure proc_FamilyBrChange;

    // ���� ���� ó��
		procedure proc_recieve(slList: TStringList);
    function func_BrTelSearch(sBrNo: string): string;

    function GetWkStateStr(AStCd: string): string;
	end;

var
  Frm_WORA1: TFrm_WORA1;

implementation

{$R *.dfm}

uses xe_Dm, xe_Func, xe_gnl2, xe_gnl3, xe_xml, xe_Msg, xe_Lib, Main,
  xe_COM02, xe_packet, xe_Query, xe_WOR07, xe_WOR18, xe_WOR13, xe_WOR19,
	xe_WOR12, xe_SMS01, xe_WOR08, xe_WOR05, xe_WOR01, xe_Flash, xe_JON32, xe_WOR22,
  xe_WOR23;

 const
	 WorA1SL : array[0..78] of TSortList = (
     (cName : 'No'               ;  cWid : 050 ),
     (cName : '�����'           ;  cWid : 100 ),
     (cName : '�����'         ;  cWid : 060 ),
     (cName : '��ü���'         ;  cWid : 060 ),
     (cName : '����'             ;  cWid : 080 ),
     (cName : '��ġ'             ;  cWid : 180 ),
		 (cName : '�ܸ���'           ;  cWid : 090 ),
     (cName : '�޴���'           ;  cWid : 085 ),
     (cName : '����'             ;  cWid : 030 ),
     (cName : '�Ϸ�Ǽ�'         ;  cWid : 060 ),
     (cName : '������'         ;  cWid : 060 ),
     (cName : '����ĳ��'         ;  cWid : 060 ),
     (cName : '��üĳ��'         ;  cWid : 060 ),
		 (cName : 'M-ĳ��'           ;  cWid : 060 ),
		 (cName : '�������'         ;  cWid : 060 ),
     (cName : '���ӻ���'         ;  cWid : 060 ),
     (cName : '������׷�'       ;  cWid : 070 ),
     (cName : '�����'           ;  cWid : 060 ),
		 (cName : '���������'       ;  cWid : 075 ),
     (cName : '���踸����'       ;  cWid : 075 ),
		 (cName : '�ɻ���(�޸���)' ;  cWid : 100 ),
		 (cName : '�ɻ�/����(KB)'    ;  cWid : 100 ),
		 (cName : '�ɻ�/����(DB�պ�)';  cWid : 115 ),
		 (cName : '�޸�'             ;  cWid : 060 ),
     (cName : '�Ի���'           ;  cWid : 075 ),
     (cName : '�����'           ;  cWid : 075 ),
     (cName : '�����'           ;  cWid : 090 ),
     (cName : '���¹�ȣ'         ;  cWid : 110 ),
     (cName : '�����ȣ'         ;  cWid : 110 ),
     (cName : '���ܸ޸�'         ;  cWid : 080 ),
     (cName : '�ɾ߹�������'     ;  cWid : 080 ),
     (cName : '�������'         ;  cWid : 060 ),
     (cName : '����Ÿ�Ÿ��'     ;  cWid : 080 ),
     (cName : '����'             ;  cWid : 050 ),
     (cName : '��'             ;  cWid : 060 ),
     (cName : '��ġ���α׷�'     ;  cWid : 080 ),
     (cName : '�ܸ���OS'         ;  cWid : 070 ),
     (cName : '����������'     ;  cWid : 080 ),
     (cName : '�ݼ��ֿ���'       ;  cWid : 070 ),
     (cName : '���ߵ��'         ;  cWid : 060 ),
     (cName : '��Ʋ��ϻ���'     ;  cWid : 080 ),
     (cName : '��Ʋ����Ÿ��'     ;  cWid : 080 ),
     (cName : '��ҰǼ�'         ;  cWid : 070 ),
     (cName : '��Ż�'           ;  cWid : 050 ),
     (cName : '�����ڵ�������'   ;  cWid : 100 ),
     (cName : '���ϿϷ�Ǽ�'     ;  cWid : 090 ),
     (cName : '���Ͽ�����'     ;  cWid : 090 ),
     (cName : '���Ϲ������ѿ���' ;  cWid : 110 ),
     (cName : '��������'         ;  cWid : 070 ),
		 (cName : '�Ϻ�����'         ;  cWid : 070 ),
		 (cName : '�¶��ΰ��Կ���'   ;  cWid : 100 ),
		 (cName : 'Ÿ�����α׷�'     ;  cWid : 100 ),
		 (cName : '�������ѽð�'     ;  cWid : 100 ),

     (cName : '�����ڵ�'         ;  cWid : 000 ),
     (cName : '�����ڵ�'         ;  cWid : 000 ),
     (cName : '�ֹε�Ϲ�ȣ'     ;  cWid : 000 ),
     (cName : '����'             ;  cWid : 000 ),
     (cName : '�ּ�1'            ;  cWid : 000 ),
     (cName : '�ּ�2'            ;  cWid : 000 ),
     (cName : 'PDAMODEL'         ;  cWid : 000 ),
     (cName : '������ȭ��ȣ'     ;  cWid : 000 ),
     (cName : '������'         ;  cWid : 000 ),
     (cName : '�����ȣ'         ;  cWid : 000 ),
     (cName : '�⺻�õ�'         ;  cWid : 000 ),
     (cName : '��������'         ;  cWid : 000 ),
     (cName : '�������ڵ�'       ;  cWid : 000 ),
     (cName : '�����ݼ�'         ;  cWid : 000 ),
     (cName : '����'             ;  cWid : 000 ),
		 (cName : '�����ȣ'         ;  cWid : 000 ),
     (cName : '����'             ;  cWid : 000 ),
     (cName : '�Ǹ�'             ;  cWid : 000 ),
     (cName : '������������ڵ�' ;  cWid : 000 ),
     (cName : 'kakao��ġ'        ;  cWid : 000 ),
     (cName : 'kakao���'        ;  cWid : 000 ),
     (cName : '���Ļ��'         ;  cWid : 000 ),
		 (cName : 'Ź�ۺ�������'     ;  cWid : 100 ),
		 (cName : 'Ź�ۺ����'       ;  cWid : 100 ),
		 (cName : 'Ź�۽ɻ���'     ;  cWid : 100 ),
		 (cName : 'Ź�ۿ��ձ��'     ;  cWid : 100 )
	 );

procedure TFrm_WORA1.select_list1Click(Sender: TObject);
Var i : Integer;
begin
	if select_list1.tag = -1 then exit;

  keyword_text01.Visible := False;
	select_list2.Visible := False;
	select_list3.Visible := False;
  if TCK_USER_PER.WOR_WkSearchOpt = '1' then
	begin
		keyword_text01.Visible := True;
		keyword_text01.Text := '';
		keyword_text01.SetFocus;
	end	else
	begin
		case select_list1.ItemIndex of
			0..2, 4, 5:
				begin
					keyword_text01.Visible := True;
					keyword_text01.Text := '';
					keyword_text01.SetFocus;
				end;
			3:
				begin
					select_list2.Properties.Items.Clear;
					select_list2.Properties.Items.CommaText := '��ü,���,����,���(���+����),���';
					select_list2.Visible := True;
					select_list2.ItemIndex := 0;
					select_list2.SetFocus;
				end;
{      4:
				begin
					select_list3.Visible := True;
					select_list3.ItemIndex := 0;
					select_list3.SetFocus;
				end;  }
			6:
				begin
					select_list2.Properties.Items.Clear;
					for I := 0 to Length(LicTypeList) - 1 do
						select_list2.Properties.Items.Add(LicTypeList[I].Value);
					select_list2.Visible := True;
					select_list2.ItemIndex := 0;
					select_list2.SetFocus;
				end;
		end;
	end;
end;

procedure TFrm_WORA1.select_list5Click(Sender: TObject);
begin
  cxButton20.Click;
end;

procedure TFrm_WORA1.cxbWKAccidentListClick(Sender: TObject);
var i : integer;
	sFBr_no : string;
begin
	SetDebugeWrite('TFrm_WORA1.cxbWKAccidentListClick');
  try
		if Not Assigned(Frm_WOR19) then Frm_WOR19 := TFrm_WOR19.Create(Nil);

		Frm_WOR19.pWOR19Dock.bUnDock := pWORA1Dock.bUnDock;
		Frm_WOR19.pWOR19Dock.HdNo    := pWORA1Dock.HdNo;
		Frm_WOR19.pWOR19Dock.BrNo    := pWORA1Dock.BrNo;
		Frm_WOR19.pWOR19Dock.Gubun   := pWORA1Dock.Gubun;
		Frm_WOR19.pWOR19Dock.Idx     := pWORA1Dock.Idx;
		Frm_WOR19.proc_init;
		
		if pWORA1Dock.GUBUN <> '1' then
		begin
			if GT_USERIF.LV = '60' then
			begin
				if (pWORA1Dock.GUBUN = '0') and (not Check_ALLHD(pWORA1Dock.HDNO)) then
				begin
					for i := 0 to scb_FamilyBrCode.Count -1 do
					begin
						if i = 0 then sFBr_no := '''' + scb_FamilyBrCode[i] + '''';
						sFBr_no := sFBr_no + ', ' + '''' + scb_FamilyBrCode[i] + '''';
					end;
					Frm_WOR19.gBrNo    := sFBr_no;
				end
				else
				begin
					Frm_WOR19.gBrNo    := '';
				end;
			end else
			if GT_USERIF.LV = '40' then
				Frm_WOR19.gBrNo := GT_USERIF.BR
			else if GT_USERIF.LV = '10' then
			begin
				Frm_WOR19.pWOR19Dock.HdNo := GT_USERIF.HD;
				Frm_WOR19.gBrNo           := GT_USERIF.BR;
			end;
		end else
		if pWORA1Dock.GUBUN = '1' then
		begin
			Frm_WOR19.gBrNo    := pWORA1Dock.BrNo;
		end;
		
		Frm_WOR19.Show;
	Except

	end;  
end;

procedure TFrm_WORA1.cxbWkChargeClick(Sender: TObject);
begin
	proc_WkCashCharge;
end;

procedure TFrm_WORA1.cxbWkCntClick(Sender: TObject);
var
	i, iCol, iCnt, iwkSabun, iMin, iMax, iOnlineCol: Integer;
  sSabun: string;
begin
	iCnt := 0;

  if cxrbNoRange.Checked then
  begin
    ShowMessage('�����, ��ü��� �� �ϳ��� �����ϼž� �������� �����մϴ�.');
    Exit;
  end;

	iOnlineCol := cxgWkCounsel.GetColumnByFieldName('�¶��ΰ��Կ���').Index;

	if cxrbWkSabun.Checked then
		iCol := cxgWkCounsel.GetColumnByFieldName('�����').Index
  else
    iCol := cxgWkCounsel.GetColumnByFieldName('��ü���').Index;

	iMin := StrToIntDef(cxStNum.Text, 0);
  if iMin < 0 then
    iMin := 0;
  iMax := StrToIntDef(cxEdNum.Text, 0);
	bWKOnline := False;
	for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
	begin
		sSabun := cxgWkCounsel.ViewData.Records[I].Values[iCol];
		if sSabun = '' then
			sSabun := '-2';
		if StrToIntDef(sSabun, -1) = -1 then
			sSabun := Copy(sSabun, 2, Length(sSabun) - 1);
		iwkSabun := StrToIntDef(sSabun, -1);
		if (iwkSabun >= iMin) and (iwkSabun <= iMax) then
		begin
			Inc(iCnt);
			if (GT_SEL_BRNO.HDNO = 'A759') and (GS_PRJ_AREA = 'S') then
			else
      begin
  			if cxgWkCounsel.ViewData.Records[I].Values[iOnlineCol] = '�¶��ΰ���' then //�ϰ����� ���� �� �¶��� ��翩�� Ȯ��
	  		begin
		  		bWKOnline := True;
				end;
      end;
		end;
	end;
	cxlbRevCnt.Caption := IntToStr(iCnt);

	if bWKOnline then
	begin
		cxrbSu.Enabled := False;
		cxrbBo.Enabled := False;
		cxrbEtc.Enabled := False;
		cxrbChargeCash.Enabled := False;
		cxrbChange.Checked := True;
	end
	else
	begin
		cxrbSu.Enabled := True;
		cxrbBo.Enabled := True;
		cxrbEtc.Enabled := True;
		cxrbChargeCash.Enabled := True;
		if GT_SUM_DEFAULT = 0 then
		begin
			cxrbSu.Checked := True;
			cxrbSuClick(cxrbSu);
		end else
		begin
			cxrbEtc.Checked := True;
			cxrbSuClick(cxrbEtc);
			
		end;

	end;
	
end;

procedure TFrm_WORA1.cxbWKInsranceApplyClick(Sender: TObject);
var iCnt : integer;
	dt_sysdate, sNowDate : string;
begin
	iCnt := GetGridSelectedCount(cxgWkCounsel);
	if iCnt <= 0 then
	begin
		GMessagebox('���õ� ��簡 �����ϴ�.', CDMSE);
		exit;
	end;

	lbWKInsranceApplyCnt.Caption := IntToStr(iCnt);

	ProgressBar4.Position := 0;
	ProgressBar4.Max := iCnt;

	pnlWKInsranceApply.Left := ( Frm_Main.Width  - pnlWKInsranceApply.Width ) div 2;
	pnlWKInsranceApply.Top  := ((Frm_Main.Height - pnlWKInsranceApply.Height) div 2) - 50;

	if cxdInsStartDate.Text = '' then
	begin
		dt_sysdate := frm_main.func_sysdate;  //'20160831170619'
		sNowDate := copy(GetStrToDateTimeGStr(dt_sysdate, 3),1,10);
		if (StrToInt(copy(dt_sysdate, 9, 4)) > 1500) then
			cxdInsStartDate.date := StrToDate(sNowDate) + 2
		else
			cxdInsStartDate.date := StrToDate(sNowDate) + 1;
	end;
	pnlWKInsranceApply.Visible := True;
	pnlWKInsranceApply.BringToFront;
	chkInsStartDate.SetFocus;
end;

procedure TFrm_WORA1.cxgWkCounselCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  proc_WkCashCharge;
end;

procedure TFrm_WORA1.proc_init;
var
	i, iRow, iCol, iCol2, iCol3 : Integer;
	dt_sysdate, sNowDate : string;
begin
	try
		try
			gSortOrder := '';

			for i := 0 to cxgWkCounsel.ColumnCount - 1 do
      begin
				cxgWkCounsel.Columns[i].DataBinding.ValueType := 'String';
      end;
			iRow := cxgWkCounsel.GetColumnByFieldName('').Index;
			cxgWkCounsel.Columns[iRow].DataBinding.ValueTypeClass := TcxBooleanValueType;
      iRow := cxgWkCounsel.GetColumnByFieldName('No').Index;
			cxgWkCounsel.Columns[iRow].DataBinding.ValueType := 'Integer';
      iRow := cxgWkCounsel.GetColumnByFieldName('�Ϸ�Ǽ�').Index;
			cxgWkCounsel.Columns[iRow].DataBinding.ValueType := 'Integer';
      iRow := cxgWkCounsel.GetColumnByFieldName('��ҰǼ�').Index;
      cxgWkCounsel.Columns[iRow].DataBinding.ValueType := 'Integer';
      iRow := cxgWkCounsel.GetColumnByFieldName('������').Index;
      cxgWkCounsel.Columns[iRow].DataBinding.ValueType := 'Currency';
      iRow := cxgWkCounsel.GetColumnByFieldName('����ĳ��').Index;
      cxgWkCounsel.Columns[iRow].DataBinding.ValueType := 'Currency';
      iRow := cxgWkCounsel.GetColumnByFieldName('��üĳ��').Index;
			cxgWkCounsel.Columns[iRow].DataBinding.ValueType := 'Currency';
      iRow := cxgWkCounsel.GetColumnByFieldName('����').Index;
			cxgWkCounsel.Columns[iRow].DataBinding.ValueType := 'Integer';
      iRow := cxgWkCounsel.GetColumnByFieldName('���ϿϷ�Ǽ�').Index;
      cxgWkCounsel.Columns[iRow].DataBinding.ValueType := 'Integer';
      iRow := cxgWkCounsel.GetColumnByFieldName('���Ͽ�����').Index;
      cxgWkCounsel.Columns[iRow].DataBinding.ValueType := 'Currency';
			iRow := cxgWkCounsel.GetColumnByFieldName('�������ѽð�').Index;
			cxgWkCounsel.Columns[iRow].DataBinding.ValueType := 'String';
			iRow := cxgWkCounsel.GetColumnByFieldName('M-ĳ��').Index;
			cxgWkCounsel.Columns[iRow].DataBinding.ValueType := 'Currency';
			if SHUTTLE_USE <> 'y' then
			begin
				iRow := cxgWkCounsel.GetColumnByFieldName('��Ʋ��ϻ���').Index;
				cxgWkCounsel.Columns[iRow].Visible := False;
				iRow := cxgWkCounsel.GetColumnByFieldName('��Ʋ����Ÿ��').Index;
				cxgWkCounsel.Columns[iRow].Visible := False;
			end;
			iRow := cxgWkCounsel.GetColumnByFieldName('���Ļ��').Index;
			cxgWkCounsel.Columns[iRow].DataBinding.ValueType := 'Integer';

			//���̴� Į���� Tag = 1, ����Į���� Tag = 0
			iRow := cxgWkCounsel.GetColumnByFieldName('Ÿ�����α׷�').Index;

			// ���������߰� 20170912 KHS
			if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G60') or   //����
																	(GT_USERIF.ShareNo = 'G72') or   //����
																	(GT_USERIF.ShareNo = 'G51') or   //����
																	(GT_USERIF.ShareNo = 'G26') or   //����1����(����8282)
																	(GT_USERIF.ShareNo = 'G54') or   //����2����(�Ϲݾ�ü) 
																	(GT_USERIF.ShareNo = 'G49') or   //������������ 
																	(GT_USERIF.ShareNo = 'G39') or   //�ϳ����� 
																	(GT_USERIF.ShareNo = 'G41') or   //������������� 
																	(GT_USERIF.ShareNo = 'G59') or   //�������̽� 
																	(GT_USERIF.ShareNo = 'G05')) then   //���ֿ��� �߰� 20190624 KHS ���漮�����û 
			begin
				cxgWkCounsel.Columns[iRow].Visible := True;
				cxgWkCounsel.Columns[iRow].Tag := 1;
			end else
			begin
				cxgWkCounsel.Columns[iRow].Visible := False;
				cxgWkCounsel.Columns[iRow].Tag := 0;
			end;

			if 	(GT_USERIF.Br = 'B100') then   
			begin
				cxgWkCounsel.Columns[iRow].Visible := True;
				cxgWkCounsel.Columns[iRow].Tag := 1;
			end;

			iCol := cxgWkCounsel.GetColumnByFieldName('Ź�ۺ�������').Index;
			iCol2 := cxgWkCounsel.GetColumnByFieldName('Ź�ۺ����').Index;
			iCol3 := cxgWkCounsel.GetColumnByFieldName('Ź�۽ɻ���').Index;
{			if (GS_PRJ_AREA = 'S') and ((GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G05') or (GT_USERIF.ShareNo = 'G15'))) and 
				 (GT_USERIF.ID <> 'sntest') then                    //���ֿ���                       //��꿬��
			begin
				cxgWkCounsel.Columns[iCol].Visible := True;
				cxgWkCounsel.Columns[iCol].Tag := 1;
				cxgWkCounsel.Columns[iCol2].Visible := True;
				cxgWkCounsel.Columns[iCol2].Tag := 1;
				cxgWkCounsel.Columns[iCol3].Visible := True;
				cxgWkCounsel.Columns[iCol3].Tag := 1;

				pnl_InsureGubun.Visible := False;
			end else
			if (GS_PRJ_AREA = 'O') then
			begin                 
				cxgWkCounsel.Columns[iCol].Visible := False;
				cxgWkCounsel.Columns[iCol].Tag := 0;
				cxgWkCounsel.Columns[iCol2].Visible := False;
				cxgWkCounsel.Columns[iCol2].Tag := 0;
				cxgWkCounsel.Columns[iCol3].Visible := False;
				cxgWkCounsel.Columns[iCol3].Tag := 0;

				pnl_InsureGubun.Visible := False;
			end;  }
			



			if (GS_PRJ_AREA = 'O') and (GT_USERIF.ShareNo <> 'G05') and (GT_USERIF.ShareNo <> 'G12') and (GT_USERIF.ID <> 'sntest') then
			begin                       //���ֿ���                       //��꿬��
				cxgWkCounsel.Columns[iCol].Visible := False;
				cxgWkCounsel.Columns[iCol].Tag := 0;
				cxgWkCounsel.Columns[iCol2].Visible := False;
				cxgWkCounsel.Columns[iCol2].Tag := 0;
				cxgWkCounsel.Columns[iCol3].Visible := False;
				cxgWkCounsel.Columns[iCol3].Tag := 0;

				pnl_InsureGubun.Visible := False;
			end else
			begin
				cxgWkCounsel.Columns[iCol].Visible := True;
				cxgWkCounsel.Columns[iCol].Tag := 1;
				cxgWkCounsel.Columns[iCol2].Visible := True;
				cxgWkCounsel.Columns[iCol2].Tag := 1;
				cxgWkCounsel.Columns[iCol3].Visible := True;
				cxgWkCounsel.Columns[iCol3].Tag := 1;

				pnl_InsureGubun.Visible := False;
			end;                                    			

			// �����Ȳ �׸��� �ʱ�ȭ
			proc_WkCounsel_Title;

			cxgWkCounsel.DataController.SetRecordCount(0);

			cxcbWkBrNo.Properties.Items.Clear;

			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      begin

      end else
      begin
        cxcbWkBrNo.Properties.Items.Assign(scb_BranchName);
      end;

      cxTabControl1.Tag := 1;
      cxTabControl1.TabIndex := 1;
      cxTabControl1.Tag := 0;
      keyword_text01.Visible := False;
      select_list2.Visible := False;
			select_list3.Visible := False;
      keyword_text01.Visible := True;
//      keyword_text01.Left := select_list1.Left + select_list1.Width + 6;
//      keyword_text01.Width := 120;
      keyword_text01.Text := '';
      //         search_btn2.Left := keyword_text01.Left + keyword_text01.Width + 6;
      chkWkCounselAll.Checked := False;
      chkWkConnect.Checked := False;

      select_list1.ItemIndex := 0;

      sWkSearchBrNo := '';

			cxDtStartA1.Text := '';
			cxDtEndA1.Text := '';

			//cxdInsStartDate.Text := FormatDateTime('yyyy-mm-dd', now + 1);
			dt_sysdate := frm_main.func_sysdate;  //'20160831170619'
			sNowDate := copy(GetStrToDateTimeGStr(dt_sysdate, 3),1,10);
			if (StrToInt(copy(dt_sysdate, 9, 4)) > 1500) then
				cxdInsStartDate.date := StrToDate(sNowDate) + 2
			else
				cxdInsStartDate.date := StrToDate(sNowDate) + 1;

			cxgWkCounsel.Columns[cxgWkCounsel.GetColumnByFieldName('��������').Index].Visible := True;
			cxgWkCounsel.Columns[cxgWkCounsel.GetColumnByFieldName('�ɻ���(�޸���)').Index].Visible := True;
			cxgWkCounsel.Columns[cxgWkCounsel.GetColumnByFieldName('�ɻ�/����(KB)').Index].Visible := True;
			//������ �϶��� �÷������ �� �����ֱ�
			iRow := cxgWkCounsel.GetColumnByFieldName('���ߵ��').Index;

			//////////////�ݴ纸�� ����/////////////////////////
			cxButton3.Visible := True;
			chk_InsranceState.Visible := True;
			cxLabel8.Visible := True;
			cbWKInsGubun.Properties.Items.Clear;
			if GS_PRJ_AREA = 'S' then
			begin
				cbWKInsGubun.Properties.Items.Add('��ü');
				cbWKInsGubun.Properties.Items.Add('�����׺���');
				cbWKInsGubun.Properties.Items.Add('�ݴ纸��');
				cbWKInsGubun.Properties.Items.Add('���纸��(DB�պ�)');
			end else
			begin
				cbWKInsGubun.Properties.Items.Add('��ü');
				cbWKInsGubun.Properties.Items.Add('�����׺���');
				cbWKInsGubun.Properties.Items.Add('�ݴ纸��');

				iCol := cxgWkCounsel.GetColumnByFieldName('�ɻ�/����(DB�պ�)').Index;
				cxgWkCounsel.Columns[iCol].Visible := False;
				cxgWkCounsel.Columns[iCol].Tag := 0;
			end; 
{			cbWKInsGubun.Properties.Items.Add('��ü');
			cbWKInsGubun.Properties.Items.Add('�����׺���');
			cbWKInsGubun.Properties.Items.Add('�ݴ纸��');

			iCol := cxgWkCounsel.GetColumnByFieldName('���纸��ɻ���').Index;
			cxgWkCounsel.Columns[iCol].Visible := False;
			cxgWkCounsel.Columns[iCol].Tag := 0;   }

			cbWKInsGubun.Visible := True;
			cbWKInsGubun.ItemIndex := 0;
			cbWKInsGubun.Enabled := False;
			cbWKIns.Visible := True;
			cbWKIns.ItemIndex := 0;
			cbWKIns.Enabled := False;
			cb_InsranceState.Enabled := False;
			cb_InsranceState.Visible := True;
			cb_InsranceState.ItemIndex := 0;
			
			cxbWKInsranceApply.Visible := True;
			cxbWKAccidentList.Visible := True;
			chk_InsranceDate.Visible := True;

			cxcbInsCorper.ItemIndex := 1;
			cxedInsNum.Text := '';
			cxedInsNum.Hint := '';
			cxdtInsEnd.Text := FormatDateTime('YYYY-MM-DD', Now + 2);			
			
{			rb_WKALL.Top := 10;
			rb_WKALL.Left:= 540;
			rb_WKMutil.Top := 29;
			rb_WKMutil.Left:= 540;
			rb_NotWKMutil.Top := 48;
			rb_NotWKMutil.Left:= 540;
			rb_WKSingle.Top := 29;
			rb_WKSingle.Left:= 540;
			btnSearchA1.Top := 57;
			btnSearchA1.Left:= 484;
			btnSearchA1.width := 49;   }
				
			//////////////�ݴ纸�� ����/////////////////////////

			if GS_PRJ_AREA = 'O' then
			begin
				cxTabControl1.Tabs[11].Visible := False;
				cxTabControl1.Tabs[12].Visible := False;
				
				if (GT_KAKAOUse) then cxTabControl1.Tabs[14].Visible := True 
												 else cxTabControl1.Tabs[14].Visible := False;    //�ܼ�������� 20193026 KHS ��ȸ�������û
//				rb_WKALL.Visible := False;
				rb_WKMutil.Visible := False;
				rb_NotWKMutil.Visible := False;
				cxgWkCounsel.Columns[iRow].Visible := False;
				if ((GT_USERIF.ShareNo) = 'G33') or ((GT_USERIF.ShareNo) = 'G63') or ((GT_USERIF.ShareNo) = 'G34') or 
					 {((GT_USERIF.ShareNo) = 'G20') or} ((GT_USERIF.ShareNo) = 'G45') then     //G20 ���� ��ȸ������ ��û 20191218 KHS
				begin
					cxbWKInsranceApply.Enabled := False;
					cxbWKAccidentList.Enabled := False;
				end;
			end else
			begin
//				rb_WKALL.Visible := True;
				rb_WKMutil.Visible := True;
				rb_NotWKMutil.Visible := True;
				cxgWkCounsel.Columns[iRow].Visible := True;
{
				//////////////�ݴ纸�� ����/////////////////////////
				cxButton3.Visible := False;
				chk_InsranceState.Visible := False;
				Shape23.Visible := False;
				cxLabel8.Visible := False;
				cb_InsranceState.Visible := False;
				cxbWKInsranceApply.Visible := False;
				cxbWKAccidentList.Visible := False;
				chk_InsranceDate.Visible := False;
				cxgWkCounsel.Columns[cxgWkCounsel.GetColumnByFieldName('��������').Index].Visible := False;
				cxgWkCounsel.Columns[cxgWkCounsel.GetColumnByFieldName('�ɻ���').Index].Visible := False;


				rb_WKALL.Top := 64;
				rb_WKALL.Left:= 103;
				rb_WKMutil.Top := 64;
				rb_WKMutil.Left:= 193;
				rb_NotWKMutil.Top := 64;
				rb_NotWKMutil.Left:= 280;
				rb_WKSingle.Top := 64;
				rb_WKSingle.Left:= 381;
				btnSearchA1.Top := 57;
				btnSearchA1.Left:= 484;
				btnSearchA1.width := 49;  
				//////////////�ݴ纸�� ����/////////////////////////
}			end;
    except
    end;
	except
	end;

	lblSosokNameA1.Caption := GetSosokInfo;
	btnSearchA1Click(btnSearchA1);
	chkInsStartDate.checked := True;
  // ������ �ڵ�
  FWkState := TStringList.Create;
	SetWkState(FWkState);
end;

procedure TFrm_WORA1.proc_WkCounsel;
begin
  if btnSearchA1.Enabled then
  begin
    lbWkSabun.Items.Clear;
		if cxgWkCounsel.DataController.RecordCount = 0 then  proc_WorkerList;
	end;
end;

procedure TFrm_WORA1.proc_WkCounsel_Title;
var
	i, j, ciWid : Integer;
  ln_env: TIniFile;
  ShowList, HideList, WidthList: TStringList;
	Column: TcxGridDBColumn;
begin
	ln_Env := TIniFile.Create(ENVPATHFILE);
  ShowList := TStringList.Create;
  HideList := TStringList.Create;
  WidthList := TStringList.Create;

  try
    ln_env.ReadSectionValues('WkCounsel', ShowList);
    ln_env.ReadSectionValues('WkCounselNot', HideList);
    ln_env.ReadSectionValues('WkCounselSize', WidthList);

    if (ShowList.Count > 0) and (ShowList.Count = WidthList.Count) then
    begin
      for I := 0 to ShowList.Count - 1 do
      begin
				Column := cxgWkCounsel.GetColumnByFieldName(ShowList.Values[IntToStr(I)]);

				for j := 0 to Length(WorA1SL) - 1 do
        begin
          if ( ShowList.Values[IntToStr(i)] = WorA1SL[j].CName ) then
          begin
            ciWid := WorA1SL[j].CWid;
						Break;
          end;
        end;

        if Assigned(Column) then
        begin
					Column.Index := I;
					Column.Width := StrToIntDef(WidthList.Values[IntToStr(I)], ciWid);
				end;
      end;
      for I := 0 to HideList.Count - 1 do
      begin
				Column := cxgWkCounsel.GetColumnByFieldName(HideList.Values[IntToStr(I)]);
        if Assigned(Column) then
					Column.Visible := False;
      end;
		end else
		begin
			proc_wkCounsel_Clear;
    end;
  finally
    FreeAndNil(ShowList);
		FreeAndNil(HideList);
    FreeAndNil(WidthList);
    FreeAndNil(ln_env);
  end;
end;

// Ÿ��Ʋ �ʱ�ȭ
procedure TFrm_WORA1.proc_wkCounsel_Clear;
var
  i: Integer;
  ln_env: TIniFile;
  Column: TcxGridDBColumn;
begin
	try
    ln_env := TIniFile.Create(ENVPATHFILE);
    ln_env.EraseSection('WkCounsel');
    ln_env.EraseSection('WkCounselNot');
    ln_env.EraseSection('WkCounselSize');
		cxgWkCounsel.DataController.BeginUpdate;
    try
			for i := 0 to Length(WorA1SL) - 1 do
      begin
        Column := cxgWkCounsel.GetColumnByFieldName(WorA1SL[i].CName);
        if Column.Tag = 0 then
        begin
  				Column.Visible := False;
          Continue;
        end;

        Column.Index := i;
				Column.Width := WorA1SL[i].CWid;
				Column.Visible := True;
      end;

      cxgWkCounsel.GetColumnByFieldName('').Index := 0;
      cxgWkCounsel.GetColumnByFieldName('').Width := 50;
    finally
      cxgWkCounsel.DataController.EndUpdate;
			FreeAndNil(ln_env);
    end;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA1.proc_wkCounsel_Save;
var
  i: Integer;
  ln_envfile: TIniFile;
  sTemp: string;
  nShow, nHide: Integer;
begin
	try
    // ���ӱ�� �׸��� �÷��̵� ������ ����.
    ln_envfile := TIniFile.Create(ENVPATHFILE);
    try
      nShow := 0;
      nHide := 0;
			ln_envfile.EraseSection('WkCounsel');
			ln_envfile.EraseSection('WkCounselNot');
			ln_envFile.EraseSection('WkCounselSize');
			for i := 0 to cxgWkCounsel.ColumnCount - 1 do
			begin
				if cxgWkCounsel.Columns[I].Tag = 0 then      //���̴� Į���� Tag = 1, ����Į���� Tag = 0
          Continue;
        sTemp := cxgWkCounsel.Columns[i].DataBinding.FieldName;
        if cxgWkCounsel.Columns[I].Visible then
				begin
					ln_envfile.WriteString('WkCounsel', IntToStr(nShow), sTemp);
					ln_envFile.WriteInteger('WkCounselSize', IntToStr(nShow), cxgWkCounsel.Columns[i].Width);
					Inc(nShow);
				end else
        begin
					ln_envfile.WriteString('WkCounselNot', IntToStr(nHide), sTemp);
					Inc(nHide);
				end;
			end;
    finally
      FreeAndNil(ln_envfile);
		end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_WORA1.cxgWkCounselColumnPosChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_wkCounsel_Save;
end;

procedure TFrm_WORA1.cxgWkCounselColumnSizeChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	proc_wkCounsel_Save;
end;

procedure TFrm_WORA1.cxgWkCounselDataControllerSortingChanged(Sender: TObject);
var
	i, iSabun, iSortSabun, iName, iTmp : Integer;
	sTmp, sNum: string;
begin
	SetDebugeWrite('TFrm_WORA1.cxgWkCounselColumnHeaderClick');

	if (GT_USERIF.ShareNo = 'G03') And (GS_PRJ_AREA = 'O') then
	begin
		iSabun := cxgWkCounsel.GetColumnByFieldName('��ü���').Index;
		iSortSabun := cxgWkCounsel.GetColumnByFieldName('���Ļ��').Index;
		iName := cxgWkCounsel.GetColumnByFieldName('����').Index;

		if (AIndex = iName) or (AIndex = iSabun) then
		begin
			try
//				if cxgWkCounsel.DataController.Values[0, iSortSabun] = null then   //���Ļ���� ���� ������ ���
				begin
					sNum := '9990000'; //���ڿ��ϰ�� ��ȸ�� ������ �����ȣ �ο�
					cxgWkCounsel.BeginUpdate();
					for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
					begin
						sTmp := cxgWkCounsel.DataController.Values[i, iSabun];
						Try
							iTmp := StrToInt(sTmp);	
							cxgWkCounsel.DataController.Values[i, iSortSabun] := sTmp;
						except
							cxgWkCounsel.DataController.Values[i, iSortSabun] := IntToStr(StrToInt(sNum) + 1);
						End;
					end;
					cxgWkCounsel.EndUpdate();
				end;

				for i := 0 to cxgWkCounsel.ColumnCount - 1 do
				begin
					if i <> iSortSabun then
					begin
						cxgWkCounsel.Columns[i].SortIndex := -1;
						cxgWkCounsel.Columns[i].SortOrder := soNone;
					end;  
				end;     

				if gSortOrder = '' then
				begin
					cxgWkCounsel.Columns[iSortSabun].SortOrder := soAscending;
					gSortOrder := 'soAscending';
				end	else
				begin
					if gSortOrder = 'soDescending' then
					begin
						cxgWkCounsel.Columns[iSortSabun].SortOrder := soAscending;
						gSortOrder := 'soAscending';
					end	else
					begin
						cxgWkCounsel.Columns[iSortSabun].SortOrder := soDescending;
						gSortOrder := 'soDescending';
					end;
				end;

				cxgWkCounsel.Columns[iSortSabun].SortIndex := 0;
			except
				on e: Exception do
				begin
					Assert(False, E.Message);
					sTmp := 'frmJon012[cxGVeOrderListColumnHeaderClick]Error:' + e.Message;
					GMessagebox(PChar(sTmp), CDMSE);

					Assert(False, E.Message);
				end;
			end;
		end else
			gSortOrder := '';    //�ٸ� ������ ���Ľ� �ʱ�ȭ
	end;
	
	gfSetIndexNo(cxgWkCounsel, AIndex, GS_SortNoChange);
end;

procedure TFrm_WORA1.cxgWkCounselColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_WORA1.btnDockingClick(Sender: TObject);
begin
  SetDebugeWrite('Frm_WORA1.btnDockingClick');
  try
    ManualDock(Frm_Main.cxPageControl1, nil, alNone);

    Frm_Main.cxPageControl1.ActivePageIndex := Frm_Main.cxPageControl1.PageCount - 1;
    Frm_Main.cxPageControl1.ActivePage.Name  := 'cxTabMain' + IntToStr(Self.Tag);
    Frm_Main.cxPageControl1.ActivePage.Caption := Self.Caption;
    Frm_Main.cxPageControl1.ActivePage.Hint    := Self.Hint;
    Frm_Main.cxPageControl1.ActivePage.Tag     := Self.Tag;
    Frm_Main.cxPageControl1.ActivePage.PageControl := Frm_Main.cxPageControl1;
    Frm_Main.cxPageControl1.ActivePage.Visible := True;
    Frm_Main.cxPageControl1.ActivePage.SetFocus;

    pWORA1Dock.bUNDock := False;
    btnDocking.Visible := False;
    btnFloating.Visible := True;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_WORA1.btnFloatingClick(Sender: TObject);
begin
  SetDebugeWrite('Frm_WORA1.btnFloatingClick');
  try
    pWORA1Dock.bUnDock := True;
    btnFloating.Visible := False;
    btnDocking.Visible := True;

    SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

    ManualFloat(Rect(63, 63, 1024 + 63, 768 + 63 ));
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_WORA1.btnSearchA1Click(Sender: TObject);
begin
	lbWkSabun.Items.Clear;
	gKey50 := False;
	proc_WorkerList;
end;

procedure TFrm_WORA1.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_ClientKey, ls_Msg_Err, sTemp, sBrName, sMessage, sSCnt, sFCnt, sWkSabun,
  sWkName: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
	i, j, iRow, iBrNo, iRowNum, iSum, iCash, iCol, iwk_name, iwkSabun, iNo, iSort: Integer;
	iwkTitle: array[0..79] of integer;
	ls_rxxml: WideString;
  nYear, nDay, nAge : Integer;
	y, m, d : word;
	sTmp : string;
	slTmp : TStringList;
begin
	try
		xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      ls_rxxml := slList[0];
      if not xdom.loadXML(ls_rxxml) then
      begin
        btnSearchA1.Enabled := True;
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
					case StrToIntDef(ls_ClientKey, 1) of
            1:
              begin
								cxgWkCounsel.DataController.SetRecordCount(0);

								gnClickedRow := -1;
                chkWkCounselAll.Checked := False;

                if cxCheckBox1.Checked then
                begin
                  cxGLVWK.BeginUpdate;

//                  iNo := cxGLVWK. GetColumnByFieldName('No').Index;
//                  iSort := cxgWkCounsel.GetColumnByFieldName('����').Index;

                  for i := 0 to lbWkCounselTitle.Items.Count - 1 do
                    iwkTitle[i] := cxgWkCounsel.GetColumnByFieldName(lbWkCounselTitle.Items.Strings[i]).Index;

                  iRowNum := 1;
                  for j := 0 to slList.Count - 1 do
                  begin
                    frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
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
                          GetTextSeperationEx2('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                          if TCK_USER_PER.WOR_WkSearchOpt = '1' then
  //												if (GS_PRJ_AREA = 'O') and ((GT_SEL_BRNO.HDNO = 'A922') OR (GT_SEL_BRNO.HDNO = 'A1860') OR (GT_SEL_BRNO.HDNO = 'A1889') OR (GT_SEL_BRNO.HDNO = 'A1863')) then
                          begin
                          end	else
                          begin
                            if (select_list1.ItemIndex = 4) then
                            begin
                              if ls_Rcrd[14] <> select_list3.Text then
                                Continue;
                            end;
                          end;

                          if (chkWkOnLine.checked) and  (ls_Rcrd[67] = 'y') then //�¶��ΰ��Ա�� ����.���� �߰������� �Ʒ����� 68��°
                          begin
                            Continue;
                          end;

                          if select_list3.Properties.Items.IndexOf(ls_Rcrd[14]) = -1 then
                          begin
                            select_list3.Properties.Items.Add(ls_Rcrd[14]);
                          end;
                          ls_Rcrd.Insert(0, IntToStr(iRowNum));
                          Inc(iRowNum);
                          iRow := cxGLVWK.DataController.AppendRecord;
                          // 1 Record �߰�

                          sTemp := ls_Rcrd[19];
                          sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                          if (sTemp <> '') then
                            ls_Rcrd[19] := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);
                          sTemp := ls_Rcrd[17];
                          sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                          if (sTemp <> '') then
                            ls_Rcrd[17] := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);

                          if StrToIntDef(ls_Rcrd[9], -1) = -1 then
                            ls_Rcrd[9] := '0';
                          if StrToIntDef(ls_Rcrd[10], -1) = -1 then
                            ls_Rcrd[10] := '0';
                          if ls_Rcrd[11] = '' then
                            ls_Rcrd[11] := '0';
                          if ls_Rcrd[12] = '' then
                            ls_Rcrd[12] := '0';

                          cxGLVWK.DataController.Values[iRow, 0] := ls_Rcrd[0];
                          cxGLVWK.DataController.Values[iRow, 1] := ls_Rcrd[1];
                          cxGLVWK.DataController.Values[iRow, 2] := ls_Rcrd[2];
                          cxGLVWK.DataController.Values[iRow, 3] := ls_Rcrd[3];
//                          cxGLVWK.DataController.Values[iRowe42]] := StrToIntEx(ls_Rcrd[3]);
                          cxGLVWK.DataController.Values[iRow, 4] := ls_Rcrd[4];
                          cxGLVWK.DataController.Values[iRow, 5] := ls_Rcrd[5];
                          cxGLVWK.DataController.Values[iRow, 6] := strtocall(ls_Rcrd[6]);
                          cxGLVWK.DataController.Values[iRow, 7] := strtocall(ls_Rcrd[7]);
                          cxGLVWK.DataController.Values[iRow, 8] := ls_Rcrd[8];
                          cxGLVWK.DataController.Values[iRow, 9] := ls_Rcrd[9];

                          cxGLVWK.DataController.Values[iRow, 10] := ls_Rcrd[10];
                          cxGLVWK.DataController.Values[iRow, 11] := ls_Rcrd[11];
                          cxGLVWK.DataController.Values[iRow, 12] := ls_Rcrd[12];
                          cxGLVWK.DataController.Values[iRow, 13] := ls_Rcrd[13];
                          cxGLVWK.DataController.Values[iRow, 14] := ls_Rcrd[14];
                          cxGLVWK.DataController.Values[iRow, 15] := ls_Rcrd[15];
                          cxGLVWK.DataController.Values[iRow, 16] := ls_Rcrd[16];
                          cxGLVWK.DataController.Values[iRow, 17] := ls_Rcrd[17];
                          cxGLVWK.DataController.Values[iRow, 20] := ls_Rcrd[20];
                        end;
                      finally
                      	ls_Rcrd.Free;
                      end;
                    end;
                  end;

                  cxGLVWK.EndUpdate;
                end else
                begin
              		cxGridA1.Font.Size := GS_JON_FONTSIZE;
                  cxgWkCounsel.BeginUpdate;
                  iNo := cxgWkCounsel.GetColumnByFieldName('No').Index;
                  iSort := cxgWkCounsel.GetColumnByFieldName('����').Index;

                  for i := 0 to lbWkCounselTitle.Items.Count - 1 do
                    iwkTitle[i] := cxgWkCounsel.GetColumnByFieldName(lbWkCounselTitle.Items.Strings[i]).Index;

                  iRowNum := 1;
                  for j := 0 to slList.Count - 1 do
                  begin
                    frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
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
                          GetTextSeperationEx2('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                          if TCK_USER_PER.WOR_WkSearchOpt = '1' then
  //												if (GS_PRJ_AREA = 'O') and ((GT_SEL_BRNO.HDNO = 'A922') OR (GT_SEL_BRNO.HDNO = 'A1860') OR (GT_SEL_BRNO.HDNO = 'A1889') OR (GT_SEL_BRNO.HDNO = 'A1863')) then
                          begin
                          end	else
                          begin
													{if (select_list1.ItemIndex = 4) then
													begin
														if ls_Rcrd[14] <> select_list3.Text then
															Continue;
													end;   }
                          end;

                          if (chkWkOnLine.checked) and  (ls_Rcrd[67] = 'y') then //�¶��ΰ��Ա�� ����.���� �߰������� �Ʒ����� 68��°
                          begin
                            Continue;
                          end;

                          if select_list3.Properties.Items.IndexOf(ls_Rcrd[14]) = -1 then
                          begin
                            select_list3.Properties.Items.Add(ls_Rcrd[14]);
                          end;
                          ls_Rcrd.Insert(0, IntToStr(iRowNum));
                          Inc(iRowNum);
                          iRow := cxgWkCounsel.DataController.AppendRecord;
                          // 1 Record �߰�

                          sTemp := ls_Rcrd[19];     // �Ի���
                          sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                          if (sTemp <> '') then
                            ls_Rcrd[19] := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);

                          sTemp := ls_Rcrd[17];     // ���踸����
                          sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                          if (sTemp <> '') then
                            ls_Rcrd[17] := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);

                          sTemp := ls_Rcrd[78];     // ���������
                          sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                          if (sTemp <> '') then
                            ls_Rcrd[78] := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);

                          if StrToIntDef(ls_Rcrd[9], -1) = -1 then
                            ls_Rcrd[9] := '0';
                          if StrToIntDef(ls_Rcrd[10], -1) = -1 then
                            ls_Rcrd[10] := '0';
                          if ls_Rcrd[11] = '' then
                            ls_Rcrd[11] := '0';
                          if ls_Rcrd[12] = '' then
                            ls_Rcrd[12] := '0';

                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[41]] := False;
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[0]] := ls_Rcrd[0];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[1]] := ls_Rcrd[1];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[2]] := ls_Rcrd[2];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[3]] := ls_Rcrd[3];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[42]] := StrToIntEx(ls_Rcrd[3]);
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[4]] := ls_Rcrd[4];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[5]] := ls_Rcrd[5];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[6]] := strtocall(ls_Rcrd[6]);
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[7]] := strtocall(ls_Rcrd[7]);
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[8]] := ls_Rcrd[8];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[9]] := ls_Rcrd[9];

                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[10]] := ls_Rcrd[10];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[11]] := ls_Rcrd[11];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[12]] := ls_Rcrd[12];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[13]] := ls_Rcrd[13];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[14]] := ls_Rcrd[14];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[15]] := ls_Rcrd[15];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[16]] := ls_Rcrd[16];
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[77]] := ls_Rcrd[78];       //���������
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[17]] := ls_Rcrd[17];
                          ls_Rcrd[18] := ReplaceAll(ls_Rcrd[18], #13#10, '.');
                          ls_Rcrd[18] := ReplaceAll(ls_Rcrd[18], #13, '.');
                          ls_Rcrd[18] := ReplaceAll(ls_Rcrd[18], #10, '.');
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[18]] := ls_Rcrd[18];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[19]] := ls_Rcrd[19];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[20]] := ls_Rcrd[23];

                          if ls_Rcrd.Count > 43 then
                          begin
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[21]] := ls_Rcrd[43] + '/' + ls_Rcrd[38];
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[22]] := ls_Rcrd[44] + '/' + ls_Rcrd[39];
                          end else
                          begin
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[21]] := ls_Rcrd[38];
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[22]] := ls_Rcrd[39];
                          end;

                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[23]] := ls_Rcrd[20];  //�����ڵ�
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[24]] := ls_Rcrd[21];

                          sTemp := ls_Rcrd[22];
                          if ( (GT_USERIF.ShareNo = 'G49') And (GS_PRJ_AREA = 'O') ) Or //�������ո� ����
                             ( (GT_USERIF.ShareNo = 'G39') And (GS_PRJ_AREA = 'O') ) Or
                             ( (GT_USERIF.ShareNo = 'G08') And (GS_PRJ_AREA = 'O') ) Or
                             ( (GT_USERIF.ShareNo = 'G15') And (GS_PRJ_AREA = 'O') ) Or
                             ( (GT_USERIF.ShareNo = 'G41') And (GS_PRJ_AREA = 'O') ) Or
                             ( (GT_USERIF.ShareNo = 'G54') And (GS_PRJ_AREA = 'O') ) Or
														 ( (GT_USERIF.ShareNo = 'G26') And (GS_PRJ_AREA = 'O') ) Or ( GT_USERIF.BR = 'B100' ) then
                          begin
                            if TCK_USER_PER.WOR_Jumin6NoHide = '1' then //����ֹε�Ϲ�ȣ�������
                            begin
                              if length(sTemp) = 13 then
                                sTemp := Copy(sTemp, 1, 6) + '-' + Copy(sTemp, 7, 7);
                            end else
                            begin
                              if length(sTemp) = 13 then
                                sTemp := Copy(sTemp, 1, 6) + '-' + Copy(sTemp, 7, 1) + '******';
                            end;
                          end else
                          begin
                            if length(sTemp) = 13 then
                              sTemp := Copy(sTemp, 1, 6) + '-' + Copy(sTemp, 7, 7);
                          end;


                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[25]] := sTemp;//�ֹι�ȣ

                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[26]] := ls_Rcrd[24];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[27]] := ls_Rcrd[25];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[28]] := ls_Rcrd[26];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[29]] := ls_Rcrd[27];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[30]] := strtocall(ls_Rcrd[28]);
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[31]] := ls_Rcrd[29];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[32]] := ls_Rcrd[30];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[33]] := ls_Rcrd[31];  //�����ȣ
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[34]] := ls_Rcrd[32];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[35]] := ls_Rcrd[33];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[36]] := ls_Rcrd[34];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[37]] := ls_Rcrd[35];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[38]] := ls_Rcrd[36];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[39]] := ls_Rcrd[37];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[40]] := ls_Rcrd[40];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[43]] := ls_Rcrd[41];  //�Ǹ�
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[44]] := ls_Rcrd[42];  //��������ڵ�
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[45]] := IfThen(ls_Rcrd[45] = '-', '-', IfThen(ls_Rcrd[45] = 'y', '����', '������'));
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[46]] := ls_Rcrd[46];
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[47]] := ls_Rcrd[47];

                          if ls_Rcrd[22] <> '' then
                          begin
                            nYear := StrToInt(Copy(ls_Rcrd[22],1,2));
                            if ls_Rcrd[22][7] in ['3','4'] then nYear := nYear + 2000
                            else nYear := nYear + 1900;
                            nDay := StrToInt(Copy(ls_Rcrd[22],3, 4));
                            DecodeDate(now, y, m ,d);
                            nAge := y - nYear;
                            if nDay > (m * 100 + d) then nAge := nAge - 1;
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[48]] := '��' + IntToStr(nAge) + '��';
                          end
                          else
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[48]] := '';

                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[49]] := ls_Rcrd[48];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[50]] := ls_Rcrd[49];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[51]] := ls_Rcrd[50];

                          //����������
                          sTemp := ls_Rcrd[51];
                          sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                          if (sTemp <> '') then
                            ls_Rcrd[51] := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[52]] := ls_Rcrd[51];
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[53]] := ls_Rcrd[52];

                          if ls_Rcrd[53] = 'y' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[54]] := '���ߵ��'
                          else
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[54]] := '';

                          try
                            if ls_Rcrd[54] = '' then
                              cxgWkCounsel.DataController.Values[iRow, iwkTitle[55]] := '�̼���'
                            else
                            if ls_Rcrd[54] = 'y' then
                              cxgWkCounsel.DataController.Values[iRow, iwkTitle[55]] := '����'
                            else
                            if ls_Rcrd[54] = 'n' then
                              cxgWkCounsel.DataController.Values[iRow, iwkTitle[55]] := '�̰���';

                            if ls_Rcrd[55] = '0' then
                              cxgWkCounsel.DataController.Values[iRow, iwkTitle[56]] := '�̼���'
                            else
                            if ls_Rcrd[55] = '1' then
                              cxgWkCounsel.DataController.Values[iRow, iwkTitle[56]] := '�Ǵ�����'
                            else
                            if ls_Rcrd[55] = '2' then
                              cxgWkCounsel.DataController.Values[iRow, iwkTitle[56]] := '����������'
                            else
                            if ls_Rcrd[55] = '3' then
                              cxgWkCounsel.DataController.Values[iRow, iwkTitle[56]] := '����������'
                            else
                            if ls_Rcrd[55] = '4' then
                              cxgWkCounsel.DataController.Values[iRow, iwkTitle[56]] := '����������2'
                            else
                              cxgWkCounsel.DataController.Values[iRow, iwkTitle[56]] := '�̼���';
                          Except

                          end;

                          // ls_Rcrd[56] .. ��ƲTID��
                          if ls_Rcrd.Count > 57 then  // ��ҰǼ�
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[57]] := StrToIntDef(ls_Rcrd[57], 0)
                          else
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[57]] := 0;

                          if ls_Rcrd.Count > 58 then  // ��Ż�
                            if (ls_Rcrd[58] = 'ERR') Or (ls_Rcrd[58] = 'NAN') then
                              cxgWkCounsel.DataController.Values[iRow, iwkTitle[58]] := ''
                            else
                              cxgWkCounsel.DataController.Values[iRow, iwkTitle[58]] := ls_Rcrd[58]
                          else
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[58]] := '';

                          if ls_Rcrd.Count > 59 then  // �����ڵ�������
                          begin
                            sTemp := ls_Rcrd[59];
                            sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                            if (sTemp <> '') then
                              sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[59]] := sTemp;
                          end;

                          if ls_Rcrd.Count > 60 then  // ���ϿϷ�Ǽ�/���Ͽ�����/���Ϲ�����������
                          begin
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[60]] := StrToIntDef(ls_Rcrd[60], 0);
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[61]] := StrToIntDef(ls_Rcrd[61], 0);
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[62]] := ls_Rcrd[62];
                          end;

//												if GS_PRJ_AREA = 'O' then
//												begin
												  //�ݴ纸��
                          if (ls_Rcrd[63] = 'm') or (ls_Rcrd[63] = '') then
                          begin
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[63]] := '�����׺���';    //���豸��
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '';
                          end
                          else if (ls_Rcrd[63] = 'c') then
                          begin
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[63]] := '�ݴ纸��(�޸���)';    //���豸��
                          end
                          else if (ls_Rcrd[63] = 'k') then
                          begin
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[63]] := '�ݴ纸��(KB)';    //���豸��
   												end
	   											else if ls_Rcrd[63] = 'd' then
		  										begin
			  										cxgWkCounsel.DataController.Values[iRow, iwkTitle[63]] := '���纸��';    //���豸��
                          end
                          else if ls_Rcrd[63] = 'n' then
                          begin
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[63]] := '�����ȵ�';    //���豸��
                          end;

                          if ls_Rcrd[64] = '0' then	    //�ݴ纸�����
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '���Կ�û' 		 else
                          if ls_Rcrd[64] = '1' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '���'         else
                          if ls_Rcrd[64] = '2' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '�ź�'         else
                          if ls_Rcrd[64] = '3' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '�ɻ���'   		 else
                          if ls_Rcrd[64] = '4' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '�����������' else
                          if ls_Rcrd[64] = '5' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '��Ÿ'     		 else
                          if ls_Rcrd[64] = '7' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '������û' 		 else
                          if ls_Rcrd[64] = '8' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '����' 		     else
                          if ls_Rcrd[64] = '9' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '�̰���'       else
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := ls_Rcrd[64];

                          // ls_Rcrd[69] KB���� ����
                          if ls_Rcrd[69] = '0' then	    //�ݴ纸�����
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '���Կ�û' 		 else
                          if ls_Rcrd[69] = '1' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '���'         else
                          if ls_Rcrd[69] = '2' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '�ź�'         else
                          if ls_Rcrd[69] = '3' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '�ɻ���'   		 else
                          if ls_Rcrd[69] = '4' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '�����������' else
                          if ls_Rcrd[69] = '5' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '��Ÿ'     		 else
                          if ls_Rcrd[69] = '7' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '������û' 		 else
                          if ls_Rcrd[69] = '8' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '����' 		     else
                          if ls_Rcrd[69] = '9' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '�̰���'       else
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := ls_Rcrd[69];

                          if ls_Rcrd[76] = '0' then	    //���纸��ɻ���
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '���Կ�û' 		 else
                          if ls_Rcrd[76] = '1' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '���'         else
                          if ls_Rcrd[76] = '2' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '�ź�'         else
                          if ls_Rcrd[76] = '3' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '�ɻ���'   		 else
                          if ls_Rcrd[76] = '4' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '�����������' else
                          if ls_Rcrd[76] = '5' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '��Ÿ'     		 else
                          if ls_Rcrd[76] = '7' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '������û' 		 else
                          if ls_Rcrd[76] = '8' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '����' 		     else
                          if ls_Rcrd[76] = '9' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '�̰���'       else
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := ls_Rcrd[76];//���纸��ɻ���

                          if ls_Rcrd[65] = '0' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[65]] := 'n'     //īī��
                          else
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[65]] := 'y';
                          if (ls_Rcrd[66] = '0') or (ls_Rcrd[66] = '') then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[66]] := 'n'      //īī��
                          else
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[66]] := 'y';

                          sTmp := ls_Rcrd[67];
                          sTmp := StringReplace(sTmp, '///', '', [rfReplaceAll]);
                          if StringReplace(sTmp, '/', '', [rfReplaceAll]) = '' then
                            sTmp := '';
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[67]] := sTmp;  //�Ϻ�����

                          if ls_Rcrd[68] = 'y' then //�¶��ΰ��Կ���
                            sTmp :=  '�¶��ΰ���'  else sTmp := '';
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[68]] := sTmp;

  												cxgWkCounsel.DataController.Values[iRow, iwkTitle[69]] := ls_Rcrd[70];//��ġ���α׷�

//												cxgWkCounsel.DataController.Values[iRow, iwkTitle[71]] := -1;  //���Ļ��

  {												sTmp := '';
                          if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G60') or
                                                      (GT_USERIF.ShareNo = 'G72') or     //G60  �������� , G72 ���׿��� �ݸ�Ʈ ǥ��  20170909KHS
                                                      (GT_USERIF.ShareNo = 'G51')) then  //G51  ��������
                          begin
                            if ls_Rcrd[69] = 'y' then sTmp := '��**';
                            if ls_Rcrd[70] = 'y' then
                            begin
                              if sTmp <> '' then sTmp := sTmp + ', ��**' else sTmp := '��**';
                            end;
                          end;
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[69]] := sTmp  }  //������

                          //Ź���ݴ� ���߷� �߰��� �׸�
                          //ls_Rcrd[71] WK_INS_CONS_TYPE - �ݴ� Ź�� Ÿ��
                          //ls_Rcrd[72] WK_CONINS_NUM - Ź�ۺ����ȣ
                          //ls_Rcrd[73] CONSIGNMENT_CORPER -Ź�ۺ���ȸ��
                          //ls_Rcrd[74] CONSIGNMENT_EXPIRATION - Ź�ۺ��踸����
                          //ls_Rcrd[75] M.INS_RESULT  - Ź�ۺ��� ���
                          if ls_Rcrd[71] = 'c' then sTmp := 'Ź��-�ݴ�' else
                          if ls_Rcrd[71] = 'm' then sTmp := 'Ź��-������' else sTmp := '';
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[72]] := sTmp;//�ݴ� Ź�� Ÿ��
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[73]] := ls_Rcrd[73];//Ź�ۺ���ȸ��
                          if ls_Rcrd[75] = '0' then	    //�ݴ�Ź�ۺ������
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '���Կ�û' 		 else
                          if ls_Rcrd[75] = '1' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '���'         else
                          if ls_Rcrd[75] = '2' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '�ź�'         else
                          if ls_Rcrd[75] = '3' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '�ɻ���'   		 else
                          if ls_Rcrd[75] = '4' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '�����������' else
                          if ls_Rcrd[75] = '5' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '��Ÿ'     		 else
                          if ls_Rcrd[75] = '7' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '������û' 		 else
                          if ls_Rcrd[75] = '8' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '����' 		     else
                          if ls_Rcrd[75] = '9' then
                            cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '�̰���'       else
                          cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := ls_Rcrd[75];//�ݴ� Ź�ۺ��� ���

													if StrToIntDef(ls_Rcrd[77], 0) > 0 then
														cxgWkCounsel.DataController.Values[iRow, iwkTitle[76]] := ls_Rcrd[77]
													else
														cxgWkCounsel.DataController.Values[iRow, iwkTitle[76]] := '';//�������ѽð�

													//ls_Rcrd[79] : KB (����step|����step), ls_Rcrd[80] : DB (����step|����step)

													slTmp := TStringList.Create;
													Try
														slTmp.Clear;
														slTmp.Delimiter     := '/';
														slTmp.DelimitedText := Trim(ls_Rcrd[79]);   //�ɻ�/KB
														
														if (slTmp[0] <> '') and (slTmp[1] <> '')then 
																 cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := ls_Rcrd[79]
														else if (slTmp[0] <> '') and (slTmp[1] = '')then 
																 cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := slTmp[0]
														else cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] :=	'';

														slTmp.Clear;
														slTmp.Delimiter     := '/';
														slTmp.DelimitedText := Trim(ls_Rcrd[80]);   //�ɻ�/����(DB�պ�)	
														
														if (slTmp[0] <> '') and (slTmp[1] <> '')then 
																 cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := ls_Rcrd[80]
														else if (slTmp[0] <> '') and (slTmp[1] = '')then 
																 cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := slTmp[0]
														else cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] :=	'';
													Finally
														slTmp.Free;
													End;

													//ls_Rcrd[81] : Ź�ۿ��ձ�� ����
													if ls_Rcrd[81] = 'y' then
														cxgWkCounsel.DataController.Values[iRow, iwkTitle[78]] := '����'
													else
														cxgWkCounsel.DataController.Values[iRow, iwkTitle[78]] := '';
													
													//ls_Rcrd[82] : Mĳ���ܾ�
													if ls_Rcrd.Count > 81 then 
													begin
														if ls_Rcrd[82] = '' then sTmp := '0' else sTmp := ls_Rcrd[82];
														cxgWkCounsel.DataController.Values[iRow, iwkTitle[79]] := ls_Rcrd[82];
													end;
													
												end;
                      finally
                        ls_Rcrd.Free;
                      end;
                    end;

                    for i := 0 to cxgWkCounsel.ColumnCount - 1 do
                    begin
                      cxgWkCounsel.Columns[i].SortIndex := -1;
                      cxgWkCounsel.Columns[i].SortOrder := soNone;
                    end;
                    cxgWkCounsel.Columns[iSort].SortOrder := soAscending;
                    cxgWkCounsel.Columns[iSort].SortIndex := 0;
                    cxgWkCounsel.EndUpdate;

                    cxgWkCounsel.BeginUpdate;
                    for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
                    begin
                      cxgWkCounsel.ViewData.Records[I].Values[iNo] := I+1;
                    end;

                    cxgWkCounsel.Columns[iSort].SortIndex := -1;
                    cxgWkCounsel.Columns[iNo].SortOrder := soAscending;
                    cxgWkCounsel.Columns[iNo].SortIndex := 0;
                  end;
                  cxgWkCounsel.EndUpdate;
                end;
                frm_Main.sbar_Message.Panels[4].Text := '';
                Screen.Cursor := crDefault;
                btnSearchA1.Enabled := True;
              end;
						10:
              begin
                lbWkSabun.Items.Clear;
                chkWkCounselAll.Checked := False;
                cxgWkCounsel.BeginUpdate;
								iwkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
                for i := 0 to cxgWkCounsel.ColumnCount - 1 do
									iwkTitle[i] := cxgWkCounsel.GetColumnByFieldName(lbWkCounselTitle.Items.Strings[i]).Index;
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
											if TCK_USER_PER.WOR_WkSearchOpt = '1' then
//											if (GS_PRJ_AREA = 'O') and ((GT_SEL_BRNO.HDNO = 'A922') OR (GT_SEL_BRNO.HDNO = 'A1860') OR (GT_SEL_BRNO.HDNO = 'A1889') OR (GT_SEL_BRNO.HDNO = 'A1863')) then
											begin
											end else
											begin
											 {	if (select_list1.ItemIndex = 4) then
												begin
													if ls_Rcrd[14] <> select_list3.Text then
														Continue;
												end;  }
											end;
											
											if (chkWkOnLine.checked) and  (ls_Rcrd[67] = 'y') then //�¶��ΰ��Ա�� ����.���� �߰������� �Ʒ����� 68��° 
											begin     
												Continue;
											end;  
											if select_list3.Properties.Items.IndexOf(ls_Rcrd[14]) = -1 then
                      begin
												select_list3.Properties.Items.Add(ls_Rcrd[14]);
                      end;
                      sWkSabun := ls_Rcrd[1];
											iRow := cxgWkCounsel.DataController.FindRecordIndexByText(0, iwkSabun, sWkSabun, True, True, True);
                      if iRow = -1 then
                        iRow := cxgWkCounsel.DataController.AppendRecord;
                      ls_Rcrd.Insert(0, IntToStr(iRow));

                      sTemp := ls_Rcrd[19];
                      if sTemp <> '' then
                        ls_Rcrd[19] := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);
                      //                        if StrToIntDef(ls_Rcrd[3],-1) = -1 then ls_Rcrd[3] := '0';
                      if StrToIntDef(ls_Rcrd[9], -1) = -1 then  ls_Rcrd[9] := '0';
                      if StrToIntDef(ls_Rcrd[10], -1) = -1 then ls_Rcrd[10] := '0';
                      if ls_Rcrd[11] = '' then  ls_Rcrd[11] := '0';
                      if ls_Rcrd[12] = '' then  ls_Rcrd[12] := '0';

                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[41]] := False;
//                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[0]] := ls_Rcrd[0];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[1]] := ls_Rcrd[1];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[2]] := ls_Rcrd[2];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[3]] := ls_Rcrd[3];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[42]] := StrToIntEx(ls_Rcrd[3]);
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[4]] := ls_Rcrd[4];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[5]] := ls_Rcrd[5];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[6]] := strtocall(ls_Rcrd[6]);
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[7]] := strtocall(ls_Rcrd[7]);
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[8]] := ls_Rcrd[8];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[9]] := ls_Rcrd[9];

                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[10]] := ls_Rcrd[10];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[11]] := ls_Rcrd[11];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[12]] := ls_Rcrd[12];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[13]] := ls_Rcrd[13];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[14]] := ls_Rcrd[14];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[15]] := ls_Rcrd[15];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[16]] := ls_Rcrd[16];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[17]] := ls_Rcrd[17];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[18]] := ls_Rcrd[18];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[19]] := ls_Rcrd[19];

                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[20]] := ls_Rcrd[23];

                      if ls_Rcrd.Count > 43 then
                      begin
                        cxgWkCounsel.DataController.Values[iRow, iwkTitle[21]] := ls_Rcrd[43] + '/' + ls_Rcrd[38];
                        cxgWkCounsel.DataController.Values[iRow, iwkTitle[22]] := ls_Rcrd[44] + '/' + ls_Rcrd[39];
                      end else
											begin
                        cxgWkCounsel.DataController.Values[iRow, iwkTitle[21]] := ls_Rcrd[38];
                        cxgWkCounsel.DataController.Values[iRow, iwkTitle[22]] := ls_Rcrd[39];
                      end;

                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[23]] := ls_Rcrd[20];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[24]] := ls_Rcrd[21];
											sTemp := ls_Rcrd[22];
											if ( (GT_USERIF.ShareNo = 'G49') And (GS_PRJ_AREA = 'O') ) Or //�������ո� ����
												 ( (GT_USERIF.ShareNo = 'G39') And (GS_PRJ_AREA = 'O') ) Or
												 ( (GT_USERIF.ShareNo = 'G08') And (GS_PRJ_AREA = 'O') ) Or
												 ( (GT_USERIF.ShareNo = 'G15') And (GS_PRJ_AREA = 'O') ) Or
												 ( (GT_USERIF.ShareNo = 'G41') And (GS_PRJ_AREA = 'O') ) Or
												 ( (GT_USERIF.ShareNo = 'G54') And (GS_PRJ_AREA = 'O') ) Or
												 ( (GT_USERIF.ShareNo = 'G26') And (GS_PRJ_AREA = 'O') ) Or ( GT_USERIF.BR = 'B100' ) then   
											begin
												if TCK_USER_PER.WOR_Jumin6NoHide = '1' then //����ֹε�Ϲ�ȣ�������
												begin
													if length(sTemp) = 13 then
														sTemp := Copy(sTemp, 1, 6) + '-' + Copy(sTemp, 7, 7);
												end	else
												begin
													if length(sTemp) = 13 then
														sTemp := Copy(sTemp, 1, 6) + '-' + Copy(sTemp, 7, 1) + '******';
												end;
											end else
											begin
												if length(sTemp) = 13 then
													sTemp := Copy(sTemp, 1, 6) + '-' + Copy(sTemp, 7, 7);
											end;
//											cxgWkCounsel.DataController.Values[iRow, iwkTitle[25]] := ls_Rcrd[22];
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[25]] := sTemp;//�ֹι�ȣ
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[26]] := ls_Rcrd[24];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[27]] := ls_Rcrd[25];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[28]] := ls_Rcrd[26];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[29]] := ls_Rcrd[27];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[30]] := ls_Rcrd[28];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[31]] := ls_Rcrd[29];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[32]] := ls_Rcrd[30];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[33]] := ls_Rcrd[31];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[34]] := ls_Rcrd[32];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[35]] := ls_Rcrd[33];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[36]] := ls_Rcrd[34];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[37]] := ls_Rcrd[35];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[38]] := ls_Rcrd[36];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[39]] := ls_Rcrd[37];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[40]] := ls_Rcrd[40];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[43]] := ls_Rcrd[41];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[44]] := ls_Rcrd[42];
                      cxgWkCounsel.DataController.Values[iRow, iwkTitle[45]] := IfThen(ls_Rcrd[45] = '-', '-', IfThen(ls_Rcrd[45] = 'y', '����', '������'));
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[46]] := ls_Rcrd[46];
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[47]] := ls_Rcrd[47];

											if ls_Rcrd[22] <> '' then
											begin
												nYear := StrToInt(Copy(ls_Rcrd[22],1,2));
												if ls_Rcrd[22][7] in ['3','4'] then nYear := nYear + 2000
												else nYear := nYear + 1900;
												nDay := StrToInt(Copy(ls_Rcrd[22],3, 4));
												DecodeDate(now, y, m ,d);
												nAge := y - nYear;
												if nDay > (m * 100 + d) then nAge := nAge - 1;
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[48]] := '��' + IntToStr(nAge) + '��';
											end
											else
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[48]] := '';

											cxgWkCounsel.DataController.Values[iRow, iwkTitle[49]] := ls_Rcrd[48];
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[50]] := ls_Rcrd[49];
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[51]] := ls_Rcrd[50];

											//����������
											sTemp := ls_Rcrd[51];
											sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
											if (sTemp <> '') then
												ls_Rcrd[51] := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[52]] := ls_Rcrd[51];
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[53]] := ls_Rcrd[52];

											if ls_Rcrd[53] = 'y' then
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[54]] := '���ߵ��'
											else
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[54]] := '';

											try
												if ls_Rcrd[54] = '' then
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[55]] := '�̼���'
												else
												if ls_Rcrd[54] = 'y' then
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[55]] := '����'
												else
												if ls_Rcrd[54] = 'n' then
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[55]] := '�̰���';

												if ls_Rcrd[55] = '0' then
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[56]] := '�̼���'
												else
												if ls_Rcrd[55] = '1' then
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[56]] := '�Ǵ�����'
												else
												if ls_Rcrd[55] = '2' then
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[56]] := '����������'
												else
												if ls_Rcrd[55] = '3' then
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[56]] := '����������'
												else
												if ls_Rcrd[55] = '4' then
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[56]] := '����������2'
												else
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[56]] := '�̼���';
											Except

											end;

											// ls_Rcrd[56] .. ��ƲTID��
											if ls_Rcrd.Count > 57 then  // ��ҰǼ�
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[57]] := StrToIntDef(ls_Rcrd[57], 0)
											else
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[57]] := 0;

											if ls_Rcrd.Count > 58 then  // ��Ż�
												if (ls_Rcrd[58] = 'ERR') Or (ls_Rcrd[58] = 'NAN') then
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[58]] := ''
												else
													cxgWkCounsel.DataController.Values[iRow, iwkTitle[58]] := ls_Rcrd[58]
											else
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[58]] := '';

											if ls_Rcrd.Count > 59 then  // �����ڵ�������
											begin
												sTemp := ls_Rcrd[59];
												sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
												if (sTemp <> '') then
													sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2);
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[59]] := sTemp;
											end;

											if ls_Rcrd.Count > 60 then  // ���ϿϷ�Ǽ�/���Ͽ�����/���Ϲ�����������
											begin
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[60]] := StrToIntDef(ls_Rcrd[60], 0);
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[61]] := StrToIntDef(ls_Rcrd[61], 0);
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[62]] := ls_Rcrd[62];
											end;
												
//											if GS_PRJ_AREA = 'O' then
//											begin
											if (ls_Rcrd[63] = 'm') or (ls_Rcrd[63] = '') then
											begin
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[63]] := '�����׺���';    //���豸��
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '';
											end
											else if (ls_Rcrd[63] = 'c') then
											begin
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[63]] := '�ݴ纸��(�޸���)';    //���豸��
											end	
											else if (ls_Rcrd[63] = 'k') then
											begin
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[63]] := '�ݴ纸��(KB)';    //���豸��
											end	
											else if (ls_Rcrd[63] = 'd') then
											begin
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[63]] := '���纸��';    //���豸��
											end	
											else if ls_Rcrd[63] = 'n' then
											begin
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[63]] := '�����ȵ�';    //���豸��
											end;	

											if ls_Rcrd[64] = '0' then	    //�ݴ纸�����
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '���Կ�û' 		 else
											if ls_Rcrd[64] = '1' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '���'         else
											if ls_Rcrd[64] = '2' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '�ź�'         else
											if ls_Rcrd[64] = '3' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '�ɻ���'   		 else
											if ls_Rcrd[64] = '4' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '�����������' else
											if ls_Rcrd[64] = '5' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '��Ÿ'     		 else
											if ls_Rcrd[64] = '7' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '������û' 		 else
											if ls_Rcrd[64] = '8' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '����' 		     else
											if ls_Rcrd[64] = '9' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := '�̰���'       else
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[64]] := ls_Rcrd[64];

											// ls_Rcrd[69] KB���� ����
											if ls_Rcrd[69] = '0' then	    //�ݴ纸�����
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '���Կ�û' 		 else
											if ls_Rcrd[69] = '1' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '���'         else
											if ls_Rcrd[69] = '2' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '�ź�'         else
											if ls_Rcrd[69] = '3' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '�ɻ���'   		 else
											if ls_Rcrd[69] = '4' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '�����������' else
											if ls_Rcrd[69] = '5' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '��Ÿ'     		 else
											if ls_Rcrd[69] = '7' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '������û' 		 else
											if ls_Rcrd[69] = '8' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '����' 		     else
											if ls_Rcrd[69] = '9' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := '�̰���'       else
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := ls_Rcrd[69];

											if ls_Rcrd[76] = '0' then	    //���纸��ɻ���
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '���Կ�û' 		 else
											if ls_Rcrd[76] = '1' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '���'         else
											if ls_Rcrd[76] = '2' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '�ź�'         else
											if ls_Rcrd[76] = '3' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '�ɻ���'   		 else
											if ls_Rcrd[76] = '4' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '�����������' else
											if ls_Rcrd[76] = '5' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '��Ÿ'     		 else
											if ls_Rcrd[76] = '7' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '������û' 		 else
											if ls_Rcrd[76] = '8' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '����' 		     else
											if ls_Rcrd[76] = '9' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := '�̰���'       else
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := ls_Rcrd[76];//���纸��ɻ���		

											if ls_Rcrd[65] = '0' then	         //������
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[65]] := 'n'
											else
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[65]] := 'y';        
											if (ls_Rcrd[66] = '0') or (ls_Rcrd[66] = '') then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[66]] := 'n'
											else
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[66]] := 'y';        

											sTmp := ls_Rcrd[67];
											sTmp := StringReplace(sTmp, '///', '', [rfReplaceAll]);
											if StringReplace(sTmp, '/', '', [rfReplaceAll]) = '' then
												sTmp := '';
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[67]] := sTmp;  //�Ϻ�����      

											if ls_Rcrd[68] = 'y' then //�¶��ΰ��Կ���      
												sTmp :=  '�¶��ΰ���'  else sTmp := '';
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[68]] := sTmp;

											// ls_Rcrd[69] KB���� ����
												
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[69]] := ls_Rcrd[70];//��ġ���α׷�
//										cxgWkCounsel.DataController.Values[iRow, iwkTitle[71]] := -1;  //���Ļ�� 
											{
											sTmp := '';
											if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G60') or 
																									(GT_USERIF.ShareNo = 'G72') or     //G60  �������� , G72 ���׿��� �ݸ�Ʈ ǥ��  20170909KHS
																									(GT_USERIF.ShareNo = 'G51')) then  //G51  ��������
											begin
												if ls_Rcrd[69] = 'y' then sTmp := '��**';
												if ls_Rcrd[70] = 'y' then 
												begin
													if sTmp <> '' then sTmp := sTmp + ', ��**' else sTmp := '��**';
												end;
											end;
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[69]] := sTmp }   //������

											//Ź���ݴ� ���߷� �߰��� �׸�
											//ls_Rcrd[71] WK_INS_CONS_TYPE - �ݴ� Ź�� Ÿ��
											//ls_Rcrd[72] WK_CONINS_NUM - Ź�ۺ����ȣ
											//ls_Rcrd[73] CONSIGNMENT_CORPER -Ź�ۺ���ȸ��
											//ls_Rcrd[74] CONSIGNMENT_EXPIRATION - Ź�ۺ��踸����
											//ls_Rcrd[75] M.INS_RESULT  - Ź�ۺ��� ���											
											if ls_Rcrd[71] = 'c' then sTmp := 'Ź��-�ݴ�' else
											if ls_Rcrd[71] = 'm' then sTmp := 'Ź��-������' else sTmp := '';
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[72]] := sTmp;//�ݴ� Ź�� Ÿ��
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[73]] := ls_Rcrd[73];//Ź�ۺ���ȸ��
											if ls_Rcrd[75] = '0' then	    //�ݴ纸�����
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '���Կ�û' 		 else
											if ls_Rcrd[75] = '1' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '���'         else
											if ls_Rcrd[75] = '2' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '�ź�'         else
											if ls_Rcrd[75] = '3' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '�ɻ���'   		 else
											if ls_Rcrd[75] = '4' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '�����������' else
											if ls_Rcrd[75] = '5' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '��Ÿ'     		 else
											if ls_Rcrd[75] = '7' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '������û' 		 else
											if ls_Rcrd[75] = '8' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '����' 		     else
											if ls_Rcrd[75] = '9' then	    
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := '�̰���'       else
											cxgWkCounsel.DataController.Values[iRow, iwkTitle[74]] := ls_Rcrd[75];//�ݴ� Ź�ۺ��� ���		

											if StrToIntDef(ls_Rcrd[77], 0) > 0 then
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[76]] := ls_Rcrd[77]
											else
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[76]] := '';//�������ѽð�  		

												//ls_Rcrd[79] : KB (����step|����step), ls_Rcrd[80] : DB (����step|����step)

											slTmp := TStringList.Create;
											Try
												slTmp.Clear;
												slTmp.Delimiter     := '/';
												slTmp.DelimitedText := Trim(ls_Rcrd[79]);   //�ɻ�/KB
														
												if (slTmp[0] <> '') and (slTmp[1] <> '')then 
														 cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := ls_Rcrd[79]
												else if (slTmp[0] <> '') and (slTmp[1] = '')then 
														 cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] := slTmp[0]
												else cxgWkCounsel.DataController.Values[iRow, iwkTitle[70]] :=	'';

												slTmp.Clear;
												slTmp.Delimiter     := '/';
												slTmp.DelimitedText := Trim(ls_Rcrd[80]);   //�ɻ�/����(DB�պ�)	
														
												if (slTmp[0] <> '') and (slTmp[1] <> '')then 
														 cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := ls_Rcrd[80]
												else if (slTmp[0] <> '') and (slTmp[1] = '')then 
														 cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] := slTmp[0]
												else cxgWkCounsel.DataController.Values[iRow, iwkTitle[75]] :=	'';
											Finally
												slTmp.Free;
											End;
											//ls_Rcrd[81] : Ź�ۿ��ձ�� ����
											if ls_Rcrd[81] = 'y' then
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[78]] := '����'
											else
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[78]] := '';

											//ls_Rcrd[82] : Mĳ���ܾ�
											if ls_Rcrd.Count > 81 then 
											begin
												if ls_Rcrd[82] = '' then sTmp := '0' else sTmp := ls_Rcrd[82];
												cxgWkCounsel.DataController.Values[iRow, iwkTitle[79]] := ls_Rcrd[82];
											end;
										end;
									finally
										ls_Rcrd.Free;
									end;
								end;
                cxgWkCounsel.EndUpdate;
                Screen.Cursor := crDefault;
                btnSearchA1.Enabled := True;
              end;
            9:
              begin
								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                sSCnt := lst_Result.item[0].attributes.getNamedItem('Success').Text;
                sFCnt := lst_Result.item[0].attributes.getNamedItem('Failure').Text;
								pviSucc := StrToIntDef(sSCnt, 0);
								pviFail := StrToIntDef(sFCnt, 0);
                pvsFWkSb := '';
                sTemp := lst_Result.item[0].attributes.getNamedItem('Memo').Text;
                sTemp := StringReplace(sTemp, 'null', '', [rfReplaceAll]);
                ls_Rcrd := TStringList.Create;
                try
                  GetTextSeperationEx(',', sTemp, ls_Rcrd);
                  if ls_rcrd.Count > 0 then
                  begin
                    iCol := cxgWkCounsel.GetColumnByFieldName('�����').Index;
										iwk_name := cxgWkCounsel.GetColumnByFieldName('����').Index;
										sMessage := '���� �Ǽ� : ' + sSCnt + #13#10 + '���� �Ǽ� : ' + sFcnt;
										sTemp := '';
										for i := 0 to ls_rcrd.Count - 1 do
										begin
                      if Length(ls_rcrd[i]) > 0 then
											begin
                        try
                          iRow := cxgWkCounsel.DataController.FindRecordIndexByText(0, iCol, ls_Rcrd[i], True, True, True);
                          sWkName := cxgWkCounsel.DataController.Values[iRow, iWk_Name];
												except
                        end;
												sTemp := sTemp + #13#10 + '���� ���� : ' + sWkName;
                        pvsFWkSb := sWkName;
                      end;
                    end;
                  end;
                finally
                  ls_Rcrd.Free;
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
                    GMessagebox('��� ���� ��� ��� �Դϴ�.' + #13#10
                      + '---------------------------' + #13#10
                      + ls_Rcrd.Text + #13#10
                      + '---------------------------', CDMSE);
                  end else
                  begin
                    GMessagebox('���� ó���Ͽ����ϴ�.', CDMSI);
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
					end;
        end else
        if Copy(ls_ClientKey, 1, 5) = 'WOR01' then
        begin
          Frm_WOR01.proc_recieve(ls_rxxml);
        end;
      end else
      begin
        btnSearchA1.Enabled := True;
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      btnSearchA1.Enabled := True;
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
    btnSearchA1.Enabled := True;
  end;
end;

procedure TFrm_WORA1.proc_recieve1(ls_rxxml: Widestring);
var
  xdom: msDomDocument;
  lst_Result : IXMLDomNodeList;
	ls_Rcrd, slTmp1, slTmp2 : TStringList;
	ls_ClientKey, ls_Msg_Err : string;
  i : Integer;
begin
	xdom := ComsDomDocument.Create;
  Screen.Cursor := crHourGlass;
	try
		try
      if not xdom.loadXML(ls_rxxml) then Exit;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
				ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
        case StrToIntDef(ls_ClientKey, 1) of
					2:
            begin
              if (0 < GetXmlRecordCount(ls_rxxml)) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                ls_Rcrd := TStringList.Create;
								slTmp1 := TStringList.Create;
								slTmp2 := TStringList.Create;
								try
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    if ls_Rcrd[0] = 'BH' then
                    begin
											slTmp1.Add(ls_Rcrd[1]);     //�����ڵ�
											slTmp2.Add(ls_Rcrd[3]);     //������
										end;
									end;

									if slTmp1.Count > 0 then
									begin
										for i := 0 to slTmp1.Count -1 do
										begin
											if slTmp1[i] = '15' then   //KB���� 1������
											begin
												cxcbInsCorper.Properties.Items.Insert(1, slTmp2[i]);
												slInsCode.Insert(1, slTmp1[i]);
											end
											else
											if slTmp1[i] = '01' then   //KB���� 1������
											begin
											end
											else
											begin
												cxcbInsCorper.Properties.Items.Add(slTmp2[i]);
												slInsCode.Add(slTmp1[i]);
											end;
										end;
										cxcbInsCorper.Properties.Items.Insert((slTmp2.Count-1)-1, 'LIG');
										slInsCode.Insert((slTmp1.Count-1)-1, '01');
									end;
								finally
                  ls_Rcrd.Free;
									slTmp1.Free;
									slTmp2.Free;
								end;
              end;
            end;

				end;
        Screen.Cursor := crDefault;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
			end;
    except
    end;
  finally
    Screen.Cursor := crDefault;
    xdom := Nil;
  end;
end;

procedure TFrm_WORA1.proc_WkCashCharge;
var
	sWkName, sWkBrNum, sSabun, sHp, sCash, sCyCash, sBrNo, sBrName, msg: string;
  iRow, iWkName, iWkBrNum, iWkSabun, iHp, iCash, iCYCASH, iWkAttend, iWkStatus, iBrNo, iBrName, iSumCash,
  iCnt: Integer;
begin
  try
    iCnt := cxgWkCounsel.DataController.GetSelectedCount;

    if iCnt <> 1 then
    begin
      GMessagebox('�Ѹ� �����ϼž� �մϴ�.', CDMSE);
      exit;
    end;

    iRow := cxgWkCounsel.DataController.FocusedRecordIndex;

    iWkName   := cxgWkCounsel.GetColumnByFieldName('����').Index;
    iWkBrNum  := cxgWkCounsel.GetColumnByFieldName('��ü���').Index;
    iWkSabun  := cxgWkCounsel.GetColumnByFieldName('�����').Index;
    iHp       := cxgWkCounsel.GetColumnByFieldName('�޴���').Index;
    iCash     := cxgWkCounsel.GetColumnByFieldName('����ĳ��').Index;
    iCYCASH   := cxgWkCounsel.GetColumnByFieldName('��üĳ��').Index;
    iWkAttend := cxgWkCounsel.GetColumnByFieldName('�������').Index;
    iWkStatus := cxgWkCounsel.GetColumnByFieldName('�����ڵ�').Index;
    iBrNo     := cxgWkCounsel.GetColumnByFieldName('�����ڵ�').Index;
    iBrName   := cxgWkCounsel.GetColumnByFieldName('�����').Index;

    sWkName   := cxgWkCounsel.DataController.Values[iRow, iWkName];
    sWkBrNum  := cxgWkCounsel.DataController.Values[iRow, iWkBrNum];
    sSabun    := cxgWkCounsel.DataController.Values[iRow, iWkSabun];
    sHp       := cxgWkCounsel.DataController.Values[iRow, iHp];
    sCash     := StringReplace(cxgWkCounsel.DataController.Values[iRow, iCash], ',', '', [rfReplaceAll]);
    sCyCash   := StringReplace(cxgWkCounsel.DataController.Values[iRow, iCYCASH], ',', '', [rfReplaceAll]);
    sBrNo     := cxgWkCounsel.DataController.Values[iRow, iBrNo];
    sBrName   := cxgWkCounsel.DataController.Values[iRow, iBrName];

    iSumCash  := StrToIntDef(sCash, 0) + StrToIntDef(sCyCash, 0);

		if (GT_USERIF.LV = '10') and (not IsPassedManagementWk(sBrNo)) then
    begin
      msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
					+ #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
      GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSE);
      Exit;
    end;

    if Not Assigned(Frm_COM02) Or (Frm_COM02 = Nil) then Frm_COM02 := TFrm_COM02.Create(Nil);
		Frm_COM02.WorA1Tag := Self.Tag - 21;
    Frm_COM02.pnlTitle.Caption := '  ��� : ' + sWkName + '(' + sSabun + ') [' + sHp + ']';
    Frm_COM02.cxLabel11.Caption := sSabun;
    Frm_COM02.cxLabel12.Caption := sBrNo;
    Frm_COM02.cxLabel13.Caption := StringReplace(sHp, '-', '', [rfReplaceAll]);
    Frm_COM02.ed_Cash.Text := FormatFloat('#,##0', iSumCash);
    if Frm_COM02.ed_Cash.Value >= 0 then Frm_COM02.cxChkMinusZero.Enabled := False
                                    else Frm_COM02.cxChkMinusZero.Enabled := True;
    Frm_COM02.chk_Attend.Checked := False;
    Frm_COM02.chk_Attend.Enabled := False;
    if cxgWkCounsel.DataController.Values[iRow, iWkAttend] = '' then
      Frm_COM02.chk_Attend.Enabled := True;
    Frm_COM02.chk_Status.Checked := False;
		Frm_COM02.chk_StatusClick(Frm_COM02.chk_Status);
    Frm_COM02.cb_Status.Enabled := False;
    case StrToIntDef(cxgWkCounsel.DataController.Values[iRow, iWkStatus], 0)
			of
			 0: Frm_COM02.cb_Status.ItemIndex := 0;
			 1: Frm_COM02.cb_Status.ItemIndex := 1;
      10: Frm_COM02.cb_Status.ItemIndex := 2;
      21: Frm_COM02.cb_Status.ItemIndex := 3;
      22: Frm_COM02.cb_Status.ItemIndex := 4;
      23: Frm_COM02.cb_Status.ItemIndex := 5;
      30: Frm_COM02.cb_Status.ItemIndex := 6;
      40: Frm_COM02.cb_Status.ItemIndex := 7;
      60: Frm_COM02.cb_Status.ItemIndex := 8;
			80: Frm_COM02.cb_Status.ItemIndex := 10 ;//�������
			90..99: Frm_COM02.cb_Status.ItemIndex := 9;
    end;
    if (GT_USERIF.LV <> '60') and (Frm_COM02.cb_Status.ItemIndex = 8) then
      Frm_COM02.cb_Status.Enabled := False
    else
      Frm_COM02.cb_Status.Enabled := True;

    Frm_COM02.chk_before.Checked := False;
    Frm_COM02.de_stDate.Enabled := False;
    Frm_COM02.de_edDate.Enabled := False;
    Frm_COM02.RbButton1.Enabled := False;
    Frm_COM02.ed_memo.Clear;
    Frm_COM02.Hint := 'Frm_WOR';
    Frm_COM02.Show;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_WORA1.pm_InstallSMSNClick(Sender: TObject);
var
	i, iCheckCol, iCnt, iHp : integer;
	ErrCode : integer;
	ls_TxLoad, rv_str : string;
	ls_rxxml: Widestring;
	sMsg, sHP, sHP1, sHP2, sReceive_Num, sSend_num, sTmp : string;
	iHPCnt1, iHpCnt2: integer;
	StrList: TStringList;
	ls_Msg_Err : string;
begin
	sHP1 := ''; sHP2 := '';
	iHPCnt1 := 0; iHpCnt2 := 0;
	iCnt := GetGridSelectedCount(cxgWkCounsel);

	if iCnt <= 0 then
	begin
		GMessagebox('���õ� ��簡 �����ϴ�.', CDMSE);
		exit;
	end;

	iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
	iHp 		 := cxgWkCounsel.GetColumnByFieldName('�ܸ���').Index;
	for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
	begin
		if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
		begin
			sHP := cxgWkCounsel.ViewData.Records[I].Values[iHp];
			sHP := StringReplace(sHP, '-', '', [rfReplaceAll]);
			if TMenuItem(Sender).Tag = 0 then //�ݸ���N��ġ URL����
			begin
				if GT_USERIF.HD = 'A5433' then 
					sHP := Copy(sHP, 1, Length(sHP) - 2) ;

				if sHP1 = '' then	sHP1 := sHP else sHP1 := sHP1 + ',' + sHP;
				inc(iHPCnt1)
			end
			else  //�ݸ��� #�� URL����
			begin
				if Pos('#', sHP) > 0 then
				begin
					if Copy(sHP, Length(sHP), 1) = '2' then
					begin
						sHP := Copy(sHP, 1, Length(sHP) - 2) ;
						if sHP2 = '' then	sHP2 := sHP else sHP2 := sHP2 + ',' + sHP;
						inc(iHPCnt2);
					end;
				end
				else
				begin
					if sHP1 = '' then	sHP1 := sHP else sHP1 := sHP1 + ',' + sHP;
					inc(iHPCnt1);
				end;
			end;
		end;
	end;

	sSend_num := func_BrTelSearch(pWORA1Dock.BrNo);
	sSend_num := StringReplace(sSend_num, '-', '', [rfReplaceAll]);
	sTmp := '';
	try
		for i := 0 to 2 do
		begin
			if (i = 0) and (sHP1 <> '') then
			begin
				if TMenuItem(Sender).Tag = 0 then
				begin
					if GT_USERIF.HD = 'A5433' then  //�ݸ���S
					begin
						sMsg := '-- �ݸ���S��ġ�ּ� --' + #13#10 ;
						sMsg := sMsg + StringReplace('https://play.google.com/store/apps/details?id=com.calldrivershuttle', #13#10, #10, [rfReplaceAll])
					end else
						sMsg := StringReplace('https://play.google.com/store/apps/details?id=com.calldriver', #13#10, #10, [rfReplaceAll]);
				end
				else
//					sMsg := StringReplace('https://play.google.com/store/apps/details?id=com.jway.callmaner.activity', #13#10, #10, [rfReplaceAll]);
					sMsg := StringReplace('http://pda.gmgm.net/Android/store.html', #13#10, #10, [rfReplaceAll]);

				sReceive_Num := sHP1;
			end	else
			if (i = 1) and (sHP2 <> '') then   //�ݸ���#2
			begin
//				sMsg := StringReplace('https://play.google.com/store/apps/details?id=com.jway.callmanerA.activity', #13#10, #10, [rfReplaceAll]);
			  sMsg := StringReplace('http://pda.gmgm.net/Android/store.html', #13#10, #10, [rfReplaceAll]);
				sReceive_Num := sHP2;
			end;

			if sReceive_Num <> '' then
			begin
				ls_TxLoad := GTx_UnitXmlLoad('SMS02.XML');
				ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     En_Coding(GT_USERIF.ID), [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'WSMS0001', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString',   En_Coding(sReceive_Num), [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString',     En_Coding(sSend_num), [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString',    En_Coding(sMsg), [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', '', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'MemoString', '', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', '', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', '', [rfReplaceAll]);

				StrList := TStringList.Create;
				try
					if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
					begin
						rv_str := StrList[0];
						if rv_str <> '' then
						begin
							ls_rxxml := rv_str;
							Application.ProcessMessages;
							ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
							if proc_smsRead(ls_rxxml) then
							begin
								if GT_USERIF.HD = 'A5433' then 
								begin
									sTmp := IntToStr(iHPCnt1) + '�� ���� ��翡�� �ݸ���S ��ġ�ּҸ� �����Ͽ����ϴ�.'
								end else
								begin
									if i = 0 then
									begin
										if TMenuItem(Sender).Tag = 0 then
											sTmp := IntToStr(iHPCnt1) + '�� ���� ��翡�� �ݸ���N ��ġ�ּҸ� �����Ͽ����ϴ�.'
										else
											sTmp := IntToStr(iHPCnt1) + '�� ���� ��翡�� �ݸ��� ��ġ�ּҸ� �����Ͽ����ϴ�.';
									end
									else
									if i = 1 then
									begin
										if sTmp <> '' then sTmp := sTmp + #13#10;
										sTmp := sTmp + IntToStr(iHPCnt2) + '�� ���� ��翡�� �ݸ���#2 ��ġ�ּҸ� �����Ͽ����ϴ�.';
									end;
								end;
							end
							else
							begin
								sTmp := sTmp + ls_Msg_Err;
							end;
						end;
					end;
				finally
					StrList.Free;
				end;
				sReceive_Num := '';
			end;
		end;
		if sTmp <> '' then
			GMessagebox(sTmp, CDMSE);

	except
		StrList.Free;
	end;
end;

procedure TFrm_WORA1.pm_SendSMSClick(Sender: TObject);
const
	ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, ls_Msg_Err, sMsg: string;
	sTemp, sParam: string;
  ls_rxxml: WideString;
  i : Integer;
  asParam: array[1..4] of string;
  slReceive: TStringList;
  ErrCode: integer;
begin

  asParam[1] := IntToStr(2);
  asParam[2] := '';
  asParam[3] := sWkSabun;
  asParam[4] := GT_USERIF.ID;

	ls_TxLoad := GTx_UnitXmlLoad('CALLABLE.xml');

	sTemp := 'TYPE_SEND_SMS(?';

  for i := 1 to Length(asParam) do
  begin
		sTemp := sTemp + ',?';
    sParam := sParam + StringReplace(ls_Param, 'ParamString', En_Coding(asParam[i]), [rfReplaceAll]);
  end;
  sTemp := sTemp + ')';
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'SEND_SMS', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(Length(asParam)), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sParam, [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
		if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        Application.ProcessMessages;
        ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
        sMsg := GetXmlErrorMsg(ls_rxxml);
        if ('0000' = ls_Msg_Err) and ('1' = sMsg) then
        begin
          GMessagebox('���Բ� ����(������¹�ȣ)�� �߼۵Ǿ����ϴ�..', CDMSE);
        end
        else GMessagebox('�����Ͽ����ϴ�.', CDMSE);
      end;
    end;
  finally
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_WORA1.pm_WKInsranceApplyClick(Sender: TObject);
begin
	cxbWKInsranceApply.Click;
end;

procedure TFrm_WORA1.pm_WKInsranceChangeClick(Sender: TObject);
var iCnt, iPassCnt, iState, iCheckCol, i, iInsrance : integer;
		sState, sInsrance: string;
begin
	iCnt := GetGridSelectedCount(cxgWkCounsel);
	if iCnt <= 0 then
	begin
		GMessagebox('���õ� ��簡 �����ϴ�.', CDMSE);
		exit;
	end;

	lbWKInsranceChangeCnt.Caption := IntToStr(iCnt);

	iState   := cxgWkCounsel.GetColumnByFieldName('�ɻ���(�޸���)').Index;
	iInsrance:= cxgWkCounsel.GetColumnByFieldName('��������').Index;

	iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
	iPassCnt := 0;
	for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
	begin
		if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
		begin
			sState := cxgWkCounsel.ViewData.Records[I].Values[iState];
			sInsrance  := cxgWkCounsel.ViewData.Records[I].Values[iInsrance];
			if (sState = '���') and (copy(sInsrance,1,4) <> '�ݴ纸��') and (copy(sInsrance,1,4) <> '���纸��') then 
				inc(iPassCnt);
		end;
	end;

	lbWKInsranceChangePassCnt.Caption := IntToStr(iPassCnt);
	
	ProgressBar5.Position := 0;
	ProgressBar5.Max := iPassCnt;

	pnlWKInsranceChange.Left := ( Frm_Main.Width  - pnlWKInsranceChange.Width ) div 2;
	pnlWKInsranceChange.Top  := ((Frm_Main.Height - pnlWKInsranceChange.Height) div 2) - 50;

	pnlWKInsranceChange.Visible := True;
	pnlWKInsranceChange.BringToFront;

	if iPassCnt = 0 then btnWKInsranceChangeOK.enabled := False else btnWKInsranceChangeOK.enabled := True;
end;

procedure TFrm_WORA1.pm_WorkderPopup(Sender: TObject);
var
	iWkStatus, iRow, iCol, iSabun: Integer;
	wk_st, sTmp: string;
begin
	iRow := cxgWkCounsel.DataController.FocusedRecordIndex;
	if iRow < 0 then Exit;
	bWKOnline := False;

  iWkStatus := cxgWkCounsel.GetColumnByFieldName('�����ڵ�').Index;
  wk_st := cxgWkCounsel.DataController.Values[iRow, iWkStatus];

  iSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
  sWkSabun := cxgWkCounsel.DataController.Values[iRow, iSabun];

  N15.Visible := True;
  N16.Visible := True;
  N20.Visible := True;

  N30.Visible := False;  // �޴������α׷���ġ�������� ������ ( 2018.08.03 LYB )

	N10.Visible := True;
  SMS1.Visible := True;
  if GT_OCX <> '' then N14.Visible := True
                  else N14.Visible := False;
  N11.Visible := True;
  N13.Visible := True;
	if TCK_USER_PER.COM_WkCharge = '1' then
  begin
    N15.Visible := True;
		N16.Visible := True;
		N20.Visible := True;
		//20180219 KHS
		N24.Visible := True;             //���ĳ������
		mniWkCashBatch.Visible := True;  //���ĳ���ϰ�ó��
	end	else
	begin
		N15.Visible := False;
		N16.Visible := False;
		N20.Visible := False;
		//20180219 KHS
		N24.Visible := False;
		mniWkCashBatch.Visible := False;
	end;

		
	if TCK_USER_PER.WOR_MngModify = '1' then
	begin
		N12.Visible := True;                  //����
		pm_WKInsranceApply.Visible := True;   //�ݴ纸���û
		pm_WKInsranceChange.Visible := True;  //�ݴ纸������ϰ�����
		N33.Visible := True;                  //���Ϲ������Ѽ���
		N34.Visible := True;                  //��纸���ϰ�����
//		N21.Visible := True;                  
		N21.Visible := (GS_PRJ_AREA <> 'S');  //���ٹ����ɽð����� ������϶��� ������
		if GT_USERIF.LV = '60' then
			N17.Visible := True;                  //�����̵�
		N23.Visible := True;                  //�μ�Ƽ�꼳��
		mniN30.Visible := True;               //�г�Ƽ�ð��ʱ�ȭ
	end	else
	begin
		N12.Visible := False;                  //����
		pm_WKInsranceApply.Visible := False;   //�ݴ纸���û
		pm_WKInsranceChange.Visible := False;  //�ݴ纸������ϰ�����
		N33.Visible := False;                  //���Ϲ������Ѽ���
		N34.Visible := False;                  //��纸���ϰ�����
		N21.Visible := False;                  //���ٹ����ɽð�����
		N17.Visible := False;                  //�����̵�
		N23.Visible := False;                  //�μ�Ƽ�꼳��
		mniN30.Visible := False;               //�г�Ƽ�ð��ʱ�ȭ
	end;

	if TCK_USER_PER.COM_WkDayCashSet = '1' then
	begin
		N19.Visible := True;
	end	else
	begin
		N19.Visible := False;
	end;

	if (GT_USERIF.LV = '60') and (GT_USERIF.Master = 'y') then
    N18.Visible := True
  else
    N18.Visible := False;

  N22.Visible := False;

	N1.Enabled := True;
	N9.Enabled := True;
	N2.Enabled := True;
	N3.Enabled := True;
	N4.Enabled := True;
	N5.Enabled := True;
	N6.Enabled := True;
	N7.Enabled := True;
	N8.Enabled := True;
	N18.Enabled := True;
	pm_delete.Enabled := False;

	N35.Enabled := True;        //�������
	N35.Visible := False;        //�������
	if (GS_PRJ_AREA = 'S') or (GT_KAKAOUse) then	
		N35.Visible := True;        //�������

  mniWkCashBatch.Enabled := (TCK_USER_PER.WOR_WkCashBatch = '1');

  case StrToIntDef(wk_st, 0) of
    0: N1.Enabled := False;
    1: N9.Enabled := False;
    10: N2.Enabled := False;
		21: N3.Enabled := False;
    22: N4.Enabled := False;
    23: N5.Enabled := False;
    30: N6.Enabled := False;
		40: N7.Enabled := False;
    60:
			begin
        if (GT_USERIF.LV <> '60') or (GT_USERIF.Master <> 'y') then
				begin
					N1.Enabled := False;
          N9.Enabled := False;
          N2.Enabled := False;
          N3.Enabled := False;
          N4.Enabled := False;
          N5.Enabled := False;
          N7.Enabled := False;
          N6.Enabled := False;
					N8.Enabled := False;
					N35.Enabled := False;
				end;
        N18.Enabled := False;
			end;
		50:
			begin
				N8.Enabled := False;
				pm_delete.Enabled := True;
			end;
		80:
			begin
				N35.Enabled := False;   //�������
			end;
		90..99:
			begin
				N1.Enabled := False;
				N9.Enabled := False;
        N2.Enabled := False;
        N3.Enabled := False;
        N4.Enabled := False;
        N5.Enabled := False;
        N7.Enabled := False;
				N18.Enabled := False;
        N6.Enabled := False;
				N8.Enabled := False;
				N35.Enabled := False;
			end;
	end;
	if TCK_USER_PER.COM_WkStautsChange <> '1' then
	begin
		N1.Enabled := False;
		N9.Enabled := False;
		N2.Enabled := False;
		N3.Enabled := False;
		N4.Enabled := False;
		N5.Enabled := False;
		N6.Enabled := False;
		N7.Enabled := False;
		N8.Enabled := False;
		N18.Enabled := False;
		pm_delete.Enabled := False;
		N35.Enabled := False;     //�������
	end;

	N32.Visible := GT_USERIF.LV <> '10';
	if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G05') or (GT_UserIF.HD = 'A100') or (GT_UserIF.HD = 'A283'))  or 
		 (GT_UserIF.HD = 'A100') then //20190812 ���ֿ����� ������ �������� 
	begin
		N32.Visible := True;
	end;
	
	if ((GT_USERIF.ShareNo = 'G33') or (GT_USERIF.ShareNo = 'G63') or (GT_USERIF.ShareNo = 'G34') or 
			{(GT_USERIF.ShareNo = 'G20') or} (GT_USERIF.ShareNo = 'G45') or (GT_USERIF.BR = 'B100')) and (GS_PRJ_AREA = 'O') then
	begin
		pm_WKInsranceApply.Enabled := False;

		if (GT_USERIF.LV <> '10') then
		begin
			nmBechaBlockTime.Visible := True;
			
			iCol := cxgWkCounsel.GetColumnByFieldName('�������ѽð�').Index;

			sTmp := cxgWkCounsel.DataController.Values[iRow, iCol];
			if StrTointDef(sTmp, 0) > 0 then
			begin
				nmBechaBlockTime.Caption := '�������ѽð�-[����]';
				nmBechaBlockTime.Tag := 1;
			end	else
			begin
				nmBechaBlockTime.Caption := '�������ѽð�-[����]';
				nmBechaBlockTime.Tag := 0;
			end
		end;
	end;

	if GT_USERIF.HD = 'A5433' then  //��ȸ�� ����� ��û 20190405 KHS
	begin
		pm_InstallSMSN.Caption := '�ݸ���S';
		pm_InstallSMS.visible := False;
	end
	else begin
		pm_InstallSMSN.Caption := '�ݸ���N';
		pm_InstallSMS.visible := True;
	end;
	//2010-10-03 ������ �϶��� ��� LCK.
	{
  if GS_PRJ_AREA <> 'S' then
		N31.Visible := False
  else
    N31.Visible := True;
	}

	N36.visible := False;
	if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G05') or (GT_UserIF.HD = 'A100') or (GT_UserIF.HD = 'A283')) then     //���ֿ��ո� ����
	N36.visible := True;

	mni_MCash.Visible := (TCK_USER_PER.WOR_MCash = '1'); 
	mni_MCashInOut.Visible := (TCK_USER_PER.WOR_MCash = '1'); 
end;

procedure TFrm_WORA1.FormCreate(Sender: TObject);
var
  iCash, iCyCash: Integer;
  i : Integer;
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

  if GT_USERIF.Id = 'sntest' then cxCheckBox1.Visible := True
                             else cxCheckBox1.Visible := False;

  if TCK_USER_PER.WOR_WkSearchOpt = '1' then
//	if (GS_PRJ_AREA = 'O') and ((GT_SEL_BRNO.HDNO = 'A922') OR (GT_SEL_BRNO.HDNO = 'A1860') OR (GT_SEL_BRNO.HDNO = 'A1889') OR (GT_SEL_BRNO.HDNO = 'A1863')) then
	begin
		select_list1.Tag := -1;
		select_list1.Properties.Items.Clear;
		select_list1.Properties.Items.Add('���˻�');       //0
		select_list1.Properties.Items.Add('��ü���');       //1
		select_list1.Properties.Items.Add('�ܸ���/�޴���');  //2
		select_list1.Properties.Items.Add('���ܸ޸�');       //3
	end;

  btnFloating.Top := btnDocking.Top;

	slCommissionCd := TStringList.Create;
	slInsCode := TStringList.Create;

	proc_sysRead;
	proc_init;

	if (TCK_USER_PER.COM_WkCharge = '1') or (TCK_USER_PER.COM_WkStautsChange = '1') then
    cxbWkCharge.Enabled := True
	else
		cxbWkCharge.Enabled := False;

  try
    if TCK_USER_PER.COM_WkCashView = '1' then
    begin
      Frm_Main.gCurProperties.EchoMode := eemNormal;
    end else
  	begin
  		Frm_Main.gCurProperties.EchoMode := eemPassword;
    end;

    iCash := cxgWkCounsel.GetColumnByFieldName('����ĳ��').Index;
    iCyCash := cxgWkCounsel.GetColumnByFieldName('��üĳ��').Index;
    cxgWkCounsel.Columns[iCash].Properties := Frm_Main.gCurProperties;

		cxgWkCounsel.Columns[iCyCash].Properties := Frm_Main.gCurProperties;
	Except
  end;

	if (TCK_USER_PER.WOR_MngModify = '1') then
	begin
		cxbWkModify.Enabled := True;
		btn_WkInsert.Enabled := True;
		N12.Visible := True;

		cxbWKInsranceApply.Enabled := True;
	end else
	begin
    cxbWkModify.Enabled := False;
		btn_WkInsert.Enabled := False;
		N12.Visible := False;

		cxbWKInsranceApply.Enabled := False;
	end;
	//�غش븮 A2265 �űԱ�� ��� ����. 20190928 KHS �ż�������� ��û
	if (GS_PRJ_AREA = 'O') and (GT_USERIF.HD = 'A2265') then btn_WkInsert.Enabled := False;

	if TCK_USER_PER.COM_WkDayCashSet = '1' then
	begin
		N19.Visible := True;
		cxButton7.Enabled := True;  // ����Ϻ���������
	end else
	begin
		N19.Visible := False;
		cxButton7.Enabled := False;  // ����Ϻ���������
	end;
	btn_MCash.Visible := (TCK_USER_PER.WOR_MCash = '1'); //M-ĳ�ð���
{
	if ((GT_USERIF.ShareNo = 'G33') or (GT_USERIF.ShareNo = 'G63') or (GT_USERIF.ShareNo = 'G34') or 
			(GT_USERIF.ShareNo = 'G20') or (GT_USERIF.ShareNo = 'G45') or (GT_USERIF.BR = 'B100')) and (GS_PRJ_AREA = 'O') then
	begin
		iCol := cxgWkCounsel.GetColumnByFieldName('�������ѽð�').Index;
		if (GT_USERIF.LV <> '10') then
		begin
			nmBechaBlockTime.Visible := True;
			cxgWkCounsel.Columns[iCol].Visible := True;
			cxgWkCounsel.Columns[iCol].Tag := 1;
		end else
		begin
			nmBechaBlockTime.Visible := False;
			cxgWkCounsel.Columns[iCol].Visible := False;
			cxgWkCounsel.Columns[iCol].Tag := 0;
		end;
	end else
	begin
		nmBechaBlockTime.Visible := False;
		cxgWkCounsel.Columns[iCol].Visible := False;
		cxgWkCounsel.Columns[iCol].Tag := 0;
	end;   }
end;

procedure TFrm_WORA1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if pWORA1Dock.bUnDock then
  begin
    Frm_Main.WORA1MNG[Self.Tag-21].CreateYN := False;
    Frm_Main.WORA1MNG[Self.Tag-21].Use := False;
  end;
	FreeAndNil(slCommissionCd);
	FreeAndNil(slInsCode);
	
  Action := caFree;
end;

procedure TFrm_WORA1.cbWKInsGubunPropertiesChange(Sender: TObject);
begin
	if cbWKInsGubun.ItemIndex in [2,3] then
	begin
		cbWKIns.Enabled := True;
		cb_InsranceState.Enabled := True;
		if cbWKInsGubun.ItemIndex = 2 then
		begin
			cbWKIns.Properties.Items.Clear;
			cbWKIns.Properties.Items.Add('��ü');
			cbWKIns.Properties.Items.Add('�޸���');
			cbWKIns.Properties.Items.Add('KB');
			cbWKIns.Tag := 2;
		end else
		if cbWKInsGubun.ItemIndex = 3 then
		begin
			cbWKIns.Properties.Items.Clear;
			cbWKIns.Properties.Items.Add('DB�պ�');
			cbWKIns.Tag := 3;
		end;
		cbWKIns.ItemIndex := 0;
	end	else
	begin
		cbWKIns.ItemIndex := 0;
		cbWKIns.Enabled := False;
		cb_InsranceState.Enabled := False;
		cbWKIns.Tag := 0;
	end;
end;

procedure TFrm_WORA1.chkInsStartDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then cxdInsStartDate.SetFocus;
end;

procedure TFrm_WORA1.chkInsStartDatePropertiesChange(Sender: TObject);
var	dt_sysdate, sNowDate : string;
begin
	if chkInsStartDate.checked then	cxdInsStartDate.enabled := True
	else
	begin
		cxdInsStartDate.enabled := False;

		dt_sysdate := frm_main.func_sysdate;  //'20160831170619'
		sNowDate := copy(GetStrToDateTimeGStr(dt_sysdate, 3),1,10);
		if (StrToInt(copy(dt_sysdate, 9, 4)) > 1500) then
			cxdInsStartDate.date := StrToDate(sNowDate) + 2
		else
			cxdInsStartDate.date := StrToDate(sNowDate) + 1;
	end;
end;

procedure TFrm_WORA1.chkWkCounselAllClick(Sender: TObject);
var
  i, Col: Integer;
begin
  Col := cxgWkCounsel.GetColumnByFieldName('').Index;
  cxgWkCounsel.DataController.BeginUpdate;
  try
    for I := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
    begin
      cxgWkCounsel.DataController.Values[I, Col] := chkWkCounselAll.Checked;
    end;
  finally
    cxgWkCounsel.DataController.EndUpdate;
  end;
end;

procedure TFrm_WORA1.chk_InsranceDateClick(Sender: TObject);
begin
	if chk_InsranceDate.Checked then chk_InsranceState.Checked := False;
	cbWKInsGubun.itemIndex := 0;
	cbWKIns.itemIndex := 0;
	cb_InsranceState.itemIndex := 0;
end;

procedure TFrm_WORA1.chk_InsranceStateClick(Sender: TObject);
begin
	cbWKInsGubun.itemIndex := 0;
	cbWKIns.itemIndex := 0;
	cb_InsranceState.itemIndex := 0;
end;

procedure TFrm_WORA1.chk_InsranceStatePropertiesChange(Sender: TObject);
begin
	if chk_InsranceState.Checked then
	begin
		chk_InsranceDate.Checked := False;
		cbWKInsGubun.Enabled := True;
	end	else
	begin
		cbWKInsGubun.Enabled := False;
	end;
end;

procedure TFrm_WORA1.cxButton11Click(Sender: TObject);
begin
	pnl_MCash.Visible := False;
end;

procedure TFrm_WORA1.btn_WkInsertClick(Sender: TObject);
begin
	if Not Assigned(Frm_WOR01) Or (Frm_WOR01 = Nil) then Frm_WOR01 := TFrm_WOR01.Create(Nil);

  Frm_WOR01.WorA1Tag := Self.Tag - 21;
  Frm_WOR01.pWOR01Dock.bUnDock := pWORA1Dock.bUnDock;
  Frm_WOR01.pWOR01Dock.HdNo    := pWORA1Dock.HdNo;
	Frm_WOR01.pWOR01Dock.BrNo    := pWORA1Dock.BrNo;
  Frm_WOR01.pWOR01Dock.BrName  := pWORA1Dock.BrName;
  Frm_WOR01.pWOR01Dock.Gubun   := pWORA1Dock.Gubun;
	Frm_WOR01.pWOR01Dock.Idx     := pWORA1Dock.Idx;

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    proc_FamilyBrChange;

	Frm_WOR01.gWOR19Mode := 'Insert';
	Frm_WOR01.gKey50 := gKey50;
	Frm_WOR01.proc_init;
	Frm_WOR01.Show;
end;

procedure TFrm_WORA1.btn_MCashSetClick(Sender: TObject);
begin
	if Not func_EucKr_Check(cxedMemo, 0) then Exit;
	tmrCashProcess.Tag := 1;
	tmrCashProcess.Enabled := True;
end;

procedure TFrm_WORA1.cxbWkModifyClick(Sender: TObject);
begin
  proc_wk_modify;
end;

procedure TFrm_WORA1.cxcbWkHdNoPropertiesChange(Sender: TObject);
begin
	CB_HdCng_BrCng(cxcbWkHdNo, cxcbWkBrNo);
end;

procedure TFrm_WORA1.proc_WkCommissionSearch;
var
  sWhere: string;
  ls_TxLoad, sNode: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if Not pWORA1Dock.bUnDock then pWORA1Dock.GUBUN := GT_SEL_BRNO.Gubun;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.HDNO  := GT_SEL_BRNO.HDNO;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrName:= GT_SEL_BRNO.BrName;

  try
    sWhere := '';
    if pWORA1Dock.GUBUN <> '1' then
    begin
      if GT_USERIF.LV = '60' then
        sWhere := Format(' AND B.HD_NO = ''%s'' ', [pWORA1Dock.HDNO])
      else
        sWhere := Format(' AND B.BR_NO = ''%s'' ', [GT_USERIF.BR]);
    end else
    if pWORA1Dock.GUBUN = '1' then
    begin
      sWhere := Format(' AND B.BR_NO = ''%s'' ', [pWORA1Dock.BrNo]);
    end;

    if sWkSearchBrNo <> sWhere then
    begin
      sWkSearchBrNo := sWhere;
      slCommissionCd.Clear;
    end else
      exit;

    ls_rxxml := GTx_UnitXmlLoad('SEL04.xml');
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

procedure TFrm_WORA1.cxButton20Click(Sender: TObject);
begin
  if cxgWkCounsel.DataController.RecordCount = 0 then
  begin
    GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSE);
    Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[�����ٿ�ε�[���޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
    Exit;
  end;

  Frm_Main.sgExcel := '�����Ȳ.xls';
  Frm_Main.sgRpExcel := Format('���>�����Ȳ����]%s��/%s', [GetMoneyStr(cxgWkCounsel.DataController.RecordCount), FExcelDownManage]);
  Frm_Main.cxGridExcel := cxGridA1;
  Frm_Main.cxGridDBViewExcel := cxgWkCounsel;
  Frm_Main.proc_excel(1);
end;

procedure TFrm_WORA1.N1Click(Sender: TObject);
var
  I, J, iCheckCol, iWkName: Integer;
  sKey: string;
  sTemp, sTitle: string;
begin
	sTitle := TMenuItem(Sender).Caption;

  sTemp := '';
  iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
	iWkName := cxgWkCounsel.GetColumnByFieldName('����').Index;
	J := 0;
  for I := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
	begin
		if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
    begin
			if J mod 5 = 0 then
			begin
				if sTemp = '' then
          sTemp := cxgWkCounsel.ViewData.Records[I].Values[iWkName]
        else
          sTemp := sTemp + #13#10 + cxgWkCounsel.ViewData.Records[I].Values[iWkName];
      end else
      begin
        sTemp := sTemp + ' / ' + cxgWkCounsel.ViewData.Records[I].Values[iWkName];
      end;
      Inc(J);
    end;
  end;

  if sTemp = '' then
  begin
    ShowMessage('��縦 ����(üũ�ڽ� ����)�Ͻð� [' + sTitle + ']�� ���ּ���.');
    Exit;
  end else
  begin
    if Application.MessageBox(PChar(sTemp + #13#10 + #13#10 + '���� ���Ե��� [' + sTitle + '] ���·� ���� �Ͻðڽ��ϱ�?'),
      CDMSQ, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
    begin
      Exit;
    end;
  end;

  pnlEtcReason.Visible := False;
  cxedEtc.Text := '';
  pnlEtcReason.Left := (frm_main.Width - pnlEtcReason.Width) div 2;
  pnlEtcReason.top := ((frm_main.Height - pnlEtcReason.Height) div 2) - 50;
  cxlbCnt.Caption := '';
  //2008-09-16  �ۼ��� : ��â�� (�ϰ�ó���ϱ�...)
  if TPopupMenu(Sender).Tag = 40 then
  begin
		pnlEtcReason.Visible := True;
    pnlEtcReason.BringToFront;
    cxedEtc.SetFocus;
    cxlbCnt.Caption :=  IntToStr(GetGridSelectedCount(cxgWkCounsel));
  end else
  begin
    sKey := IntToStr(TPopupMenu(Sender).Tag);
		proc_SelectSettlement(sKey);
  end;
end;

procedure TFrm_WORA1.cxButton2Click(Sender: TObject);
begin
  pnlEtcReason.Visible := False;
end;

procedure TFrm_WORA1.cxButton3Click(Sender: TObject);
var
	IE : Variant;
  Value : Cardinal;
begin
	IE := CreateOleObject('InternetExplorer.Application');

	IE.Navigate( 'http://www.callmaner.com/ins_call_info.html' );//?? -�ݴ纸�� �ȳ�
	IE.AddressBar := False;
	IE.MenuBar := False;
	IE.ToolBar := False;
	IE.StatusBar := False;

	IE.Width := 1100;
	IE.Height := 790;

	IE.Top := 0;//((Self.Top * 2 + Self.Height) - IE.Height)/2;
	IE.Left := 0;//Self.Left - IE.Width;

//            bIE := True;
	Value := IE.Hwnd;
	RegSetValue(HKEY_CURRENT_USER, 'HKSFA\IE_HWND', REG_DWORD, @Value, SizeOf(Cardinal));
	IE.Visible := true;
	SetForegroundWindow(Value);
//	IE := Unassigned;
end;

procedure TFrm_WORA1.cxButton4Click(Sender: TObject);
var
	XmlData, ErrMsg : string;
	ErrCode, i : Integer;
	sParams, sHdNo, sMsg : string;
	iWkSabun, iWkName, iBrNo : integer;
	sWkSabun, sWkName, sBrNo, sInsCd : String;

	sList, sListErr : TStringList;
	iCheckCol, iCol: integer;
	sTmp : string;
begin
	if (cxcbInsCorper.ItemIndex = 0) then
	begin
		sTmp := '[�����-����]���� �ϰ� �����Ͻðڽ��ϱ�?'#13#10#13#10
			+ '([��] [���Ի�-����]���� �ϰ�����, [�ƴϿ�] ���)';
		if Application.MessageBox(PChar(sTmp), CDMSE, MB_YESNO +
			MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
		begin
			exit
		end;
	end;

	if (cxcbInsCorper.ItemIndex <> 0) and (Trim(cxedInsNum.Text) = '') then
	begin
		GMessagebox('�����ȣ�� �Է��Ͽ� �ֽʽÿ�.', CDMSE);
		cxedInsNum.SetFocus;
		exit;
	end;

	if (cxcbInsCorper.ItemIndex <> 0) and (cxdtInsEnd.date < Now + 1) then
	begin
		GMessagebox('���踸������ ���� ���� ���� �մϴ�.', CDMSE);
		exit;
	end;
	
	sList := TStringList.Create;
	sList.Clear;
	sListErr := TStringList.Create;
	sListErr.Clear;


	iCol := cxgWkCounsel.GetColumnByFieldName('��������').Index;
	iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
	iWkName  := cxgWkCounsel.GetColumnByFieldName('����').Index;
	iBrNo    := cxgWkCounsel.GetColumnByFieldName('�����ڵ�').Index;
	 
	sInsCd := slInsCode.Strings[cxcbInsCorper.ItemIndex];
	if sInsCd = '99' then //���� �� ���谡�� '��Ÿ'�̸�  //������̸�
	begin
		GMessagebox('����縦 [��Ÿ]�� ������ �� �����ϴ�.', CDMSE);
		exit;
	end;  

	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		sHdNo := GT_SEL_BRNO.HDNO
	else
		sHdNo := GT_USERIF.HD;

	ProgressBar6.Max := cxgWkCounsel.DataController.RecordCount - 1;
	ProgressBar6.Position := 0;
	lbWkSabun.Items.Clear;

	iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
	for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
	begin
		if (cxgWkCounsel.ViewData.Records[I].Values[iCheckCol]) and 
			 (copy(cxgWkCounsel.ViewData.Records[I].Values[iCol],1,4) <> '�ݴ纸��') and
			 (copy(cxgWkCounsel.ViewData.Records[I].Values[iCol],1,4) <> '���纸��') then
		begin
			Application.ProcessMessages;
			sWkSabun   := cxgWkCounsel.ViewData.Records[I].Values[iWkSabun];
			sBrNo      := cxgWkCounsel.ViewData.Records[I].Values[iBrNo];

			if Trim(sWkName) = '' then
				sWkName    := cxgWkCounsel.ViewData.Records[I].Values[iWkName];
				
			lbWkSabun.Items.Add(sWkSabun);
			sParams := sHdNo + '��' + sBrNo  + '��' + sWkSabun + '��' + sInsCd + '��' 
							 + {StringReplace(cxedInsNum.Text, '-', '', [rfReplaceAll])}Trim(cxedInsNum.Text) + '��' + FormatDateTime('yyyymmdd', cxdtInsEnd.Date);
																																		 
			if not RequestBase(GetCallable06('UPDATE_INSURANCE', 'MNG_WK.UPDATE_INSURANCE', sParams), XmlData, ErrCode, ErrMsg) then
			begin
				sListErr.Add(sWkName + ',' + sWkSabun + ', ErrMsg:' + ErrMsg);
			end else
				sList.Add(sWkName + ',' + sWkSabun);
		end;
		ProgressBar6.Position := i;
	end;
	if sListErr.Count > 0 then
	begin
		sMsg := '�Ϸ��Ͽ����ϴ�.' + #13#10 + '���� : ' + IntToStr(sList.Count)
			+ #13#10 + '���� : ' + IntToStr(sListErr.Count) + #13#10 + '���и��'
			+ #13#10 + sListErr.Text;
	end else
	begin
		sMsg := '��� �Ϸ��Ͽ����ϴ�.';
	end;
	GMessagebox(sMsg, CDMSE);

	proc_WorkerList(1);
//	proc_wkMngSearch(1);
	
	cxGroupBox4.Visible := False;
	FreeAndNil(sList);
	FreeAndNil(sListErr);

end;

procedure TFrm_WORA1.proc_SelectSettlement(sKey: string);
var
	ls_TxLoad, sWk_sabun: string;
  rv_str, ls_MSG_Err, sMsg : string;
  ls_rxxml: WideString;
  iWkSabun, iCnt, i, iNodeNum: Integer;
	bFirst: Boolean;
  lst_Node: IXMLDOMNodeList;
  lst_Clone: IXMLDOMNode;
  xdom: msDomDocument;
  slReceive: TStringList;
  ErrCode: integer;
  iCheckCol: Integer;
begin
	iNodeNum := 0;

  iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
  iCnt := GetGridSelectedCount(cxgWkCounsel);
  if iCnt > 0 then
  begin
    if Length(sKey) = 1 then
      sKey := '0' + sKey;
    ls_rxxml := GTx_UnitXmlLoad('C012N1.xml');
    xdom := ComsDomDocument.Create;
    try
      if (not xdom.loadXML(ls_rxxml)) then
      begin
        Screen.Cursor := crDefault;
        ShowMessage('���� Error�Դϴ�. �ٽ���ȸ�Ͽ��ֽʽÿ�.');
        Exit;
      end;
      lst_Node := xdom.documentElement.selectNodes('/cdms/header/UserID');
      lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
      lst_Node := xdom.documentElement.selectNodes('/cdms/header/ClientVer');
      lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
      lst_Node := xdom.documentElement.selectNodes('/cdms/header/ClientKey');
      lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WOR007';
      try
        bFirst := False;
        lbWkSabun.Items.Clear;

        iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;

        for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
        begin
          if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
//          if cxgWkCounsel.ViewData.Records[i].Selected then // ok
          begin
            sWk_sabun := cxgWkCounsel.ViewData.Records[I].Values[iWkSabun];
						lbWkSabun.Items.Add(sWk_sabun);
            if not bFirst then
            begin
              bFirst := True;
              // clone nodes ...
              lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Data/Driver');
              lst_Node.item[0].attributes.getNamedItem('InSabun').Text := GT_USERIF.ID;
              lst_Node.item[0].attributes.getNamedItem('WkSabun').Text := sWk_sabun;
              lst_Node.item[0].attributes.getNamedItem('WkStatus').Text := sKey;
              if sKey <> '40' then
              begin
                lst_Node.item[0].attributes.getNamedItem('Memo').Text := '';
              end else
              begin
                lst_Node.item[0].attributes.getNamedItem('Memo').Text := cxedEtc.Text;
              end;
              lst_Node.item[0].attributes.getNamedItem('WkAttend').Text := '';
              iNodeNum := 0;
            end else
            begin
              // clone nodes ...
              Inc(iNodeNum);
              lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Data/Driver');
              lst_Clone := lst_Node.item[0].cloneNode(True);

              lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Data');
              lst_Node.item[0].appendChild(lst_Clone);

              lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Data/Driver');

              lst_Node.item[iNodeNum].attributes.getNamedItem('InSabun').Text := GT_USERIF.ID;
              lst_Node.item[iNodeNum].attributes.getNamedItem('WkSabun').Text := sWk_sabun;
              lst_Node.item[iNodeNum].attributes.getNamedItem('WkStatus').Text := sKey;
              if sKey <> '40' then
              begin
                lst_Node.item[iNodeNum].attributes.getNamedItem('Memo').Text := '';
              end else
              begin
                lst_Node.item[iNodeNum].attributes.getNamedItem('Memo').Text := cxedEtc.Text;
              end;
              lst_Node.item[iNodeNum].attributes.getNamedItem('WkAttend').Text := '';
            end;
          end;
        end;
      except
      end;
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
              Exit;
            end;
            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_MSG_Err) then
            begin
              if iNodeNum > 0 then
              begin
                sMsg := GetXmlErrorMsg(ls_rxxml);
                GMessagebox('�۾� �Ϸ�' + CRLF + sMsg, CDMSE);
              end else
              begin
								case StrToIntDef(sKey, 0) of
                  0: GMessagebox('�������� ���� �Ǿ����ϴ�.', CDMSE);
									1: GMessagebox('����(��������볳)���� ���� �Ǿ����ϴ�.', CDMSE);
                  10: GMessagebox('������̳����� ���� �Ǿ����ϴ�.', CDMSE);
                  21: GMessagebox('�����̳����� ���� �Ǿ����ϴ�.', CDMSE);
                  22: GMessagebox('����̳����� ���� �Ǿ����ϴ�.', CDMSE);
                  23: GMessagebox('�����+����̳����� ���� �Ǿ����ϴ�.', CDMSE);
                  30: GMessagebox('������(�α��κҰ�)���� ���� �Ǿ����ϴ�.', CDMSE);
                  40: GMessagebox('��Ÿ����(�α��κҰ�)�� ���� �Ǿ����ϴ�.', CDMSE);
                  50: GMessagebox('����(�α��κҰ�)���� ���� �Ǿ����ϴ�.', CDMSE);
									99: GMessagebox('���� �Ǿ����ϴ�.', CDMSE);
                end;
							end;
							//99 �������� ��쿡�� ����Ʈ ����ȸ�� ���� 20191101 KHS
							if StrToIntDef(sKey, 0) = 99 then btnSearchA1.Click else proc_WorkerList(1);
//							proc_wkMngSearch(1);
						end else
            begin
              Screen.Cursor := crDefault;
              GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
            end;
            Screen.Cursor := crDefault;
          end;
        end;
      finally
        FreeAndNil(slReceive);
				Screen.Cursor := crDefault;
      end;
    finally
      xdom := Nil;
    end;
  end else
  begin
    GMessagebox('������ ��簡 �����ϴ�.', CDMSE);
    Exit;
  end;
end;

function TFrm_WORA1.proc_smsRead(ls_rxxml: WideString):Boolean;
var
	xdom: msDomDocument;
	ls_Msg_Err: string;
begin
	result := False;
	xdom := ComsDomDocument.Create;
	try
		if not xdom.loadXML(ls_rxxml) then
			Exit;

		ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
		if ('0000' = ls_Msg_Err) then
		begin
			result := True;
		end{ else
		begin
			GMessagebox('���ۿ�' + CMC010 + CRLF + ls_Msg_Err, CDMSE);
		end};
	finally
		xdom := Nil;
	end;
end;

procedure TFrm_WORA1.proc_sysRead;
var
  ls_TxLoad, rv_str: string;
  slReceive: TStringList;
  i: Integer;
  ErrCode: integer;
begin
	try
    cxcbInsCorper.Properties.Items.Clear;
    slInsCode.Clear;

    if GT_USERIF.LV = '60' then
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        ls_TxLoad := GetSel04('WOR012', 'WKSYSREAD2', '', '', [GT_SEL_BRNO.HDNO, GT_SEL_BRNO.HDNO])
      else
        ls_TxLoad := GetSel04('WOR012', 'WKSYSREAD2', '', '', [GT_USERIF.HD, GT_USERIF.HD]);
    end
    else
      ls_TxLoad := GetSel04('WOR012', 'WKSYSREAD1', '', '', [GT_USERIF.BR, GT_USERIF.BR, GT_USERIF.BR, GT_USERIF.BR]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        Frm_Flash.cxPBar1.Properties.Max := slReceive.Count;
        Frm_Flash.cxPBar1.Position := 0;
        for i := 0 to slReceive.Count - 1 do
        begin
          rv_str := slReceive[i];
          if rv_str <> '' then
          begin
            proc_recieve1(rv_str);
            Frm_Flash.cxPBar1.Position := i +1;
            Frm_Flash.lblCnt.Caption := IntToStr(i + 1) + '/' + IntToStr(slReceive.Count);
            Application.ProcessMessages;
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
      Frm_Flash.Hide;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_WORA1.btn_CloseClick(Sender: TObject);
begin
 	if Not func_EucKr_Check(cxedEtc, 0) then Exit;
	proc_SelectSettlement('40');
  pnlEtcReason.Visible := false;
end;

procedure TFrm_WORA1.N13Click(Sender: TObject);
begin
	proc_wkCounsel_Clear;
end;

procedure TFrm_WORA1.N14Click(Sender: TObject);
var
  i, iHp, iPhon, iRow, iCnt: Integer;
  sHp, sPhon: string;
begin
  iCnt := cxgWkCounsel.DataController.GetSelectedCount;
//  iCnt := GetGridSelectedCount(cxgWkCounsel);
  if iCnt <> 1 then
  begin
    GMessagebox('�Ѹ� �����ϼž� �մϴ�.', CDMSE);
    exit;
  end;
  iRow := cxgWkCounsel.DataController.FocusedRecordIndex;

  iHp := cxgWkCounsel.GetColumnByFieldName('�޴���').Index;
  iPhon := cxgWkCounsel.GetColumnByFieldName('�ܸ���').Index;
  i := iRow;
  sHp := cxgWkCounsel.DataController.Values[i, iHp];
  sPhon := cxgWkCounsel.DataController.Values[i, iPhon];
  sHp := StringReplace(sHp, '-', '', [rfReplaceAll]);
  sPhon := StringReplace(sPhon, '-', '', [rfReplaceAll]);
  if (sHp = '') and (sPhon = '') then
  begin
    GMessagebox('������ �޴����̳� �ܸ��⸦ ����ϼ���', CDMSE);
    exit;
  end;

  if (Copy(sPhon, 1, 2) = '01') and (Length(sPhon) in [10, 11]) then
    proc_Wk_Tel(sPhon)
  else
    proc_Wk_Tel(sHp);
end;

procedure TFrm_WORA1.N16Click(Sender: TObject);
var
	iCnt: Integer;
	iOnlineCol, iCheckCol, i : integer;
begin
	bWKOnline := False;
  if (GT_SEL_BRNO.HDNO = 'A759') and (GS_PRJ_AREA = 'S') then
	else
	begin
    iOnlineCol := cxgWkCounsel.GetColumnByFieldName('�¶��ΰ��Կ���').Index;
    iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
    for I := 0 to cxgWkCounsel.DataController.RecordCount - 1 do //�ϰ����� ���� �� �¶��� ��翩�� Ȯ��
    begin
      if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
      begin
        if cxgWkCounsel.ViewData.Records[I].Values[iOnlineCol] = '�¶��ΰ���' then //�ϰ����� ���� �� �¶��� ��翩�� Ȯ��
        begin
          bWKOnline := True;
          Break;
        end;
      end;
		end;
  end;

	iCnt := GetGridSelectedCount(cxgWkCounsel);

	if iCnt <= 0 then
	begin
		GMessagebox('���õ� ��簡 �����ϴ�.', CDMSE);
		exit;
	end;

	cxrbNoRange.Checked := True;
  grpWkRev.Caption := '   �ϰ�����';
  if GT_SUM_DEFAULT = 0 then
  begin
    cxrbSu.Checked := True;
		cxrbSuClick(cxrbSu);
	end else
  begin
		cxrbEtc.Checked := True;
    cxrbSuClick(cxrbEtc);
  end;
  ed_ChargeCash.Text := '';
  Panel8.Visible := False;
  pnlWkRev.Height := 277 - 24;
  Panel7.Height := 230;
  pnlWkRev.Left := (frm_main.Width - pnlWkRev.Width) div 2;
	pnlWkRev.top := ((frm_main.Height - pnlWkRev.Height) div 2) - 50;

	if bWKOnline then
	begin
		cxrbSu.Enabled := False;
		cxrbBo.Enabled := False;
		cxrbEtc.Enabled := False;
		cxrbChargeCash.Enabled := False;
		cxrbChange.Checked := True;
	end else
	begin
		cxrbSu.Enabled := True;
		cxrbBo.Enabled := True;
		cxrbEtc.Enabled := True;
		cxrbChargeCash.Enabled := True;
	end;

	pnlWkRev.Visible := True;
  pnlWkRev.BringToFront;
  cxlbRevCnt.Caption := IntToStr(iCnt);
end;

procedure TFrm_WORA1.SMS1Click(Sender: TObject);
var
  s1, s2, send_num: string;
  i, iRow, i1, i2, iCnt, iCheckCol: Integer;
begin
  if Not pWORA1Dock.bUnDock then pWORA1Dock.GUBUN := GT_SEL_BRNO.Gubun;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.HDNO  := GT_SEL_BRNO.HDNO;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrName:= GT_SEL_BRNO.BrName;

  i1 := cxgWkCounsel.GetColumnByFieldName('�ܸ���').Index;
  i2 := cxgWkCounsel.GetColumnByFieldName('�޴���').Index;
  send_num := func_BrTelSearch(pWORA1Dock.BrNo);
  send_num := StringReplace(send_num, '-', '', [rfReplaceAll]);

  ls_wk_sms.Clear;

  iCnt := GetGridSelectedCount(cxgWkCounsel);
  if iCnt = 1 then
  begin
    iRow := cxgWkCounsel.DataController.FocusedRecordIndex;
    s1 := cxgWkCounsel.DataController.Values[iRow, i1];
    s2 := cxgWkCounsel.DataController.Values[iRow, i2];
    s1 := StringReplace(s1, '-', '', [rfReplaceAll]);
    s2 := StringReplace(s2, '-', '', [rfReplaceAll]);
    if (trim(s1) = '') and (trim(s2) = '') then
    begin
      GMessagebox('�޴���, �ܸ��� ���߿� �ϳ��� ��ȭ��ȣ�� �־�� �մϴ�.', CDMSE);
      Exit;
    end;
    if Trim(s2) <> '' then
      ls_wk_sms.Items.Add(s2)
    else
      ls_wk_sms.Items.Add(s1);
  end
  else if iCnt > 1 then
  begin
    iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
    for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
    begin
      if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
      begin
        s1 := cxgWkCounsel.ViewData.Records[I].Values[i1];
        s2 := cxgWkCounsel.ViewData.Records[I].Values[i2];
        s1 := StringReplace(s1, '-', '', [rfReplaceAll]);
        s2 := StringReplace(s2, '-', '', [rfReplaceAll]);
        if Trim(s2) <> '' then
          ls_wk_sms.Items.Add(s2)
        else
          if Trim(s1) <> '' then
          ls_wk_sms.Items.Add(s1);
      end;
    end;
  end;
  if Not Assigned(Frm_SMS01) Or (Frm_SMS01 = Nil) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
  Frm_SMS01.pSMS01Dock.bUnDock := pWORA1Dock.bUnDock;
  Frm_SMS01.pSMS01Dock.HdNo    := pWORA1Dock.HdNo;
  Frm_SMS01.pSMS01Dock.BrNo    := pWORA1Dock.BrNo;
  Frm_SMS01.pSMS01Dock.BrName  := pWORA1Dock.BrName;
  Frm_SMS01.pSMS01Dock.Gubun   := pWORA1Dock.Gubun;
  Frm_SMS01.pSMS01Dock.Idx     := pWORA1Dock.Idx;

  Frm_SMS01.mm_message.Text := '';
  Frm_SMS01.ed_send.Text := send_num;
  Frm_SMS01.ls_sms.Items.Clear;
  Frm_SMS01.ls_sms.Items.Assign(ls_wk_sms.Items);
	Frm_SMS01.sSendKind := '';
	Frm_SMS01.rdo_SMS.visible := False;
	Frm_SMS01.rdo_PUSH.visible := False;
	Frm_SMS01.Show;
end;

procedure TFrm_WORA1.tmrCashProcessTimer(Sender: TObject);
begin
	tmrCashProcess.Enabled := False;

	if tmrCashProcess.Tag = 0 then
	begin
		// ĳ�� ���� �� �̵� ó�� ����.
		proc_WkMainCashProcess;
	end else
	begin
		// Mĳ�� ���� �� �̵� ó�� ����.
		proc_WkMCashSet;
	end;
	
end;

procedure TFrm_WORA1.N20Click(Sender: TObject);
var
	iCnt: Integer;
	iOnlineCol, iCheckCol, i : integer;
begin
	bWKOnline := False;
	if (GT_SEL_BRNO.HDNO = 'A759') and (GS_PRJ_AREA = 'S') then
	else
	begin
    iOnlineCol := cxgWkCounsel.GetColumnByFieldName('�¶��ΰ��Կ���').Index;
		iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
    for I := 0 to cxgWkCounsel.DataController.RecordCount - 1 do //�ϰ����� ���� �� �¶��� ��翩�� Ȯ��
		begin
			if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
      begin
				if cxgWkCounsel.ViewData.Records[I].Values[iOnlineCol] = '�¶��ΰ���' then //�ϰ����� ���� �� �¶��� ��翩�� Ȯ��
        begin
					bWKOnline := True;
					Break;
				end;
      end;
		end;
	end;

	grpWkRev.Caption := '   �����ϰ�����';
	if GT_SUM_DEFAULT = 0 then
	begin
    cxrbSu.Checked := True;
    cxrbSuClick(cxrbSu);
	end else
  begin
    cxrbEtc.Checked := True;
    cxrbSuClick(cxrbEtc);
  end;
  ed_ChargeCash.Text := '';
  Panel8.Visible := True;
	pnlWkRev.Height := 360 - 24;
  Panel7.Height := 254 - 24;
  pnlWkRev.Left := (frm_main.Width - pnlWkRev.Width) div 2;
  pnlWkRev.top := ((frm_main.Height - pnlWkRev.Height) div 2) - 50;

	if bWKOnline then
	begin
		cxrbSu.Enabled := False;
		cxrbBo.Enabled := False;
		cxrbEtc.Enabled := False;
		cxrbChargeCash.Enabled := False;
		cxrbChange.Checked := True;
	end
	else
	begin
		cxrbSu.Enabled := True;
		cxrbBo.Enabled := True;
		cxrbEtc.Enabled := True;
		cxrbChargeCash.Enabled := True;
	end;

	cxStNum.Text := '0';
  cxEdNum.Text := '0';
  pnlWkRev.Visible := True;
  pnlWkRev.BringToFront;
  iCnt := GetGridSelectedCount(cxgWkCounsel);
  cxlbRevCnt.Caption := IntToStr(iCnt);
  cxStNum.SetFocus;
end;

procedure TFrm_WORA1.N21Click(Sender: TObject);
var
  iCheckCol, iCnt, i: Integer;
begin
  iCnt := 0;
  iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
	for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
  begin
    if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
      inc(iCnt);
  end;
  
  if iCnt <= 0 then
  begin
    GMessagebox('���õ� ��簡 �����ϴ�.', CDMSE);
    exit;
  end;
  
  pnlWkJobTime.Visible := False;
//  pnlWkJobTime.Height := 158;
  pnlWkJobTime.Left := (frm_main.Width - pnlWkJobTime.Width) div 2;
  pnlWkJobTime.top := ((frm_main.Height - pnlWkJobTime.Height) div 2) - 50;

  pnlWkJobTime.Visible := True;
  pnlWkJobTime.BringToFront;
  cxWkJobCnt.Caption := IntToStr(iCnt);
  cxcbStartHour.ItemIndex := 18;
  cxcbStartMin.ItemIndex := 0;
  cxcbEndHour.ItemIndex := 22;
  cxcbEndMin.ItemIndex := 0;
  ProgressBar1.Position := 0;
end;

procedure TFrm_WORA1.N19Click(Sender: TObject);
var iOnlineCol, iCheckCol, i, iTmp, iWkSabun, iBrNm, iTag : integer;
	sTmp, sTmp1 : String;
	bTmp : Boolean;
	slTmp : TStringList;
begin
	iOnlineCol := cxgWkCounsel.GetColumnByFieldName('�¶��ΰ��Կ���').Index;
	iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
	iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
	iTmp := cxgWkCounsel.GetColumnByFieldName('�����ڵ�').Index;
	iBrNm := cxgWkCounsel.GetColumnByFieldName('�����').Index;
	sTmp := '';  sTmp1 := '';  bTmp := False;

	bWKOnline := False;
	slTmp := TStringList.Create;
	Try
		for I := 0 to cxgWkCounsel.DataController.RecordCount - 1 do //�Ϻ����� ���� �� �¶��� ��翩�� Ȯ��
		begin
			if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
			begin
				if cxgWkCounsel.ViewData.Records[I].Values[iWkSabun] <> '' then
				begin
					slTmp.add(cxgWkCounsel.ViewData.Records[I].Values[iWkSabun]);
				end;

        if (GT_SEL_BRNO.HDNO = 'A759') and (GS_PRJ_AREA = 'S') then
        else
        begin
          if cxgWkCounsel.ViewData.Records[I].Values[iOnlineCol] = '�¶��ΰ���' then //�Ϻ����� ���� �� �¶��� ��翩�� Ȯ��
					begin
            bWKOnline := True;
            Break;
          end;
				end;

				if sTmp = '' then
				begin
					sTmp := cxgWkCounsel.ViewData.Records[I].Values[iTmp];
					sTmp1:= cxgWkCounsel.ViewData.Records[I].Values[iBrNm];
				end;
				if cxgWkCounsel.ViewData.Records[I].Values[iTmp] <> sTmp then //�ټ��� ���Ե��� ���������� ������ Ȯ��
				begin
					bTmp := True;
					Break;
				end;
			end;
		end;

		if bWKOnline then
		begin
			GMessagebox('���õ� ������ [�¶��ΰ��Ա��]�� ���ԵǾ��ֽ��ϴ�.' + #13#10 + '�ٽ� �õ����ֽʽÿ�.', CDMSE);
			exit;
		end;

		if bTmp then
		begin
			GMessagebox('���õ� ������ ���������� ���δٸ��ϴ�.' + #13#10 + #13#10 + '���õ� ������ �����մϴ�.', CDMSE);
			slTmp.Clear;
			{for I := 0 to cxgWkCounsel.DataController.RecordCount - 1 do //�Ϻ����� ���� �� �¶��� ��翩�� Ȯ��
			begin
				cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] := False;
			end;
			if chkWkCounselAll.Checked then chkWkCounselAll.Checked := False;   }
		end;  

		if Not pWORA1Dock.bUnDock then pWORA1Dock.GUBUN := GT_SEL_BRNO.Gubun;
		if Not pWORA1Dock.bUnDock then pWORA1Dock.HDNO  := GT_SEL_BRNO.HDNO;
		if Not pWORA1Dock.bUnDock then pWORA1Dock.BrNo  := GT_SEL_BRNO.BrNo;
		if Not pWORA1Dock.bUnDock then pWORA1Dock.BrName:= GT_SEL_BRNO.BrName;

		if Not Assigned(Frm_WOR05) Or (Frm_WOR05 = Nil) then Frm_WOR05 := TFrm_WOR05.Create(Nil);
		Frm_WOR05.cxTabSheet4.Tabvisible := False;
	if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G05') or (GT_UserIF.HD = 'A100') or (GT_UserIF.HD = 'A283')) then     //���ֿ��ո� ����
		begin
			Frm_WOR05.cxTabSheet4.Tabvisible := True;
		end;
		Frm_WOR05.pWOR05Dock.bUnDock := pWORA1Dock.bUnDock;
		Frm_WOR05.pWOR05Dock.HdNo    := pWORA1Dock.HdNo;
		if (sTmp <> '') and (sTmp <> pWORA1Dock.BrNo) then
		begin
			Frm_WOR05.pWOR05Dock.BrNo    := sTmp;
			Frm_WOR05.pWOR05Dock.BrName  := sTmp1;
		end
		else
		begin
			Frm_WOR05.pWOR05Dock.BrNo    := pWORA1Dock.BrNo;  //���ñ�簡 ���ų� ���ñ���� ���簡 ������ �����Ұ��
			Frm_WOR05.pWOR05Dock.BrName  := pWORA1Dock.BrName;
		end;
		Frm_WOR05.pWOR05Dock.BrName  := pWORA1Dock.BrName;
		Frm_WOR05.pWOR05Dock.Gubun   := pWORA1Dock.Gubun;
		Frm_WOR05.pWOR05Dock.Idx     := pWORA1Dock.Idx;

		Frm_WOR05.WorA1Tag := Self.Tag - 21;

		Frm_WOR05.cxcbBrName.Tag := 99;
		Frm_WOR05.proc_Ref;
		Frm_WOR05.cxcbBrName.Tag := 0;
		Frm_WOR05.proc_Ref1; //����: ������� �� 2019.02.11 KHS
		Frm_WOR05.FWkList.Assign(slTmp);
		Frm_WOR05.cxlbCnt.Caption := IntToStr(Frm_WOR05.FWkList.Count);

		iTag := TMenuItem(Sender).Tag;
		Frm_WOR05.cxPageControl3.ActivePageIndex := iTag; //0 :�Ϻ����� 1:����������
		Frm_WOR05.Show;
		if iTag = 1 then Frm_WOR05.edt_TotCash.SetFocus;
		Frm_WOR05.proc_search(0);
{		Frm_WOR05.WorA1Tag := Self.Tag - 21;
		Frm_WOR05.cxlbCnt.Caption := IntToStr(GetGridSelectedCount(cxgWkCounsel));
		Frm_WOR05.proc_Ref;
		Frm_WOR05.FWkList.Assign(slTmp);
		Frm_WOR05.cxlbCnt.Caption := IntToStr(Frm_WOR05.FWkList.Count);
		Frm_WOR05.Show;
		Frm_WOR05.proc_search(0); }
	Finally
		slTmp.Free;
	End;
end;

procedure TFrm_WORA1.cxButton1Click(Sender: TObject);
var
  wkhp, wksnum, sBrNo: string;
  iRow, jCol, kCol, iBrNo, iCnt: Integer;
begin
	iCnt := cxgWkCounsel.DataController.GetSelectedCount;
  if iCnt <> 1 then
  begin
		GMessagebox('�Ѹ� �����ϼž� �մϴ�.', CDMSE);
		exit;
	end;
  
  iRow := cxgWkCounsel.DataController.FocusedRecordIndex;

	iBrNo := cxgWkCounsel.GetColumnByFieldName('�����ڵ�').Index;
	sBrNo := cxgWkCounsel.DataController.Values[iRow, iBrNo];

  if (GT_USERIF.LV = '60') or (GT_USERIF.BR = sBrNo) then
  begin
		jCol := cxgWkCounsel.GetColumnByFieldName('�ܸ���').Index;
    kCol := cxgWkCounsel.GetColumnByFieldName('�ֹε�Ϲ�ȣ').Index;
    wkhp := cxgWkCounsel.DataController.Values[iRow, jCol];
    wksnum := cxgWkCounsel.DataController.Values[iRow, kCol];
    if length(wksnum) = 13 then
      wksnum := Copy(wksnum, 1, 6) + '-' + Copy(wksnum, 7, 7);

    if Not Assigned(Frm_WOR07) Or (Frm_WOR07 = Nil) then Frm_WOR07 := TFrm_WOR07.Create(Nil);
    Frm_WOR07.cxedTelNo.Text := wkhp;
    Frm_WOR07.cxedSNum.Text := wksnum;
    Frm_WOR07.Show;
    Frm_WOR07.proc_search;
  end else
  begin
    if Not Assigned(Frm_WOR07) Or (Frm_WOR07 = Nil) then Frm_WOR07 := TFrm_WOR07.Create(Nil);
    Frm_WOR07.cxedTelNo.Text := '';
    Frm_WOR07.cxedSNum.Text := '';
    Frm_WOR07.Show;
  end;
end;

procedure TFrm_WORA1.N17Click(Sender: TObject);
var
	iCnt, iCheckCol, i, iHp: Integer;
	sHP : string;
begin
  if Not pWORA1Dock.bUnDock then pWORA1Dock.GUBUN := GT_SEL_BRNO.Gubun;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.HDNO  := GT_SEL_BRNO.HDNO;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrName:= GT_SEL_BRNO.BrName;

	iCnt := 0;
	iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
	iHp 		 := cxgWkCounsel.GetColumnByFieldName('�ܸ���').Index;
	for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
	begin
		if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
		begin
			if (GS_PRJ_AREA = 'S') and (not Cheonan_ShareGroup(GS_PRJ_AREA, GT_USERIF.ShareNo)) and ( Not GB_365System ) and ( Not GB_CallLine ) then
			begin
				sHP := cxgWkCounsel.ViewData.Records[I].Values[iHp];
				if Pos('#', sHP) > 0 then Continue
				else inc(iCnt);
			end else inc(iCnt);
		end;
	end;

	if (iCnt <= 0) then
	begin
		if (GetGridSelectedCount(cxgWkCounsel) > 0) then
			GMessagebox('���߱��� �̵��� �Ұ����մϴ�.', CDMSE)
		else
			GMessagebox('���õ� ��簡 �����ϴ�.', CDMSE);
		exit;
	end;

	cxLabel32.Caption := IntToStr(iCnt);

  ProgressBar2.Position := 0;
  ProgressBar2.Max := iCnt;

  cxcbWkBrNo.ItemIndex := 0;

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
  begin
		pnlWkBrChange.Height := 231;
    cxLbl_Hd.Visible := True;
    cxcbWkHdNo.Visible := True;

    cxcbWkHdNo.Properties.Items.Clear;
    cxcbWkHdNo.Properties.Items.Assign(scb_HdNm);
    cxcbWkHdNo.Tag := 1;
    cxcbWkHdNo.ItemIndex := scb_HdNo.IndexOf(pWORA1Dock.HDNO);
    cxcbWkHdNo.Tag := 0;
  end else
  begin
		pnlWkBrChange.Height := 210;
    cxLbl_Hd.Visible := False;
    cxcbWkHdNo.Visible := False;
  end;

	pnlWkBrChange.Left := ( Frm_Main.Width  - pnlWkBrChange.Width ) div 2;
	pnlWkBrChange.Top  := ((Frm_Main.Height - pnlWkBrChange.Height) div 2) - 50;

	pnlWkBrChange.Visible := True;
	pnlWkBrChange.BringToFront;
end;

procedure TFrm_WORA1.cxMoveCloseClick(Sender: TObject);
begin
	pnlWkBrChange.Visible := False;
end;

procedure TFrm_WORA1.cxButton5Click(Sender: TObject);
begin
	PnlHelp.Visible := False
end;

procedure TFrm_WORA1.cxButton6Click(Sender: TObject);
begin
	cxGroupBox4.Visible := False;
end;

procedure TFrm_WORA1.cxButton7Click(Sender: TObject);
begin
	N19.Click;   //Frm_WOR05
end;

procedure TFrm_WORA1.btn_MCashClick(Sender: TObject);
var iCheckCol, i, iTmp, iWkSabun, iBrNm : integer;
	sTmp, sTmp1, sHdCd, sHdCd_Old : String;
	bTmp : Boolean;
	slTmp : TStringList;
begin

	if TCK_USER_PER.WOR_MCash <> '1' then  // ��� : M-ĳ�ð���
	begin
		ShowMessage('[M-ĳ�ð���] ������ �����ϴ�.'+#13#10+'�����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.' +#13#10+#13#10
							+ '�����׸� >> ��� : M-ĳ�ð���');
		Exit;
	end;

	iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
	iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
	iTmp := cxgWkCounsel.GetColumnByFieldName('�����ڵ�').Index;
	iBrNm := cxgWkCounsel.GetColumnByFieldName('�����').Index;
	sTmp := '';  sTmp1 := '';  bTmp := False;

  bWKOnline := False;
	slTmp := TStringList.Create;
	Try
		for I := 0 to cxgWkCounsel.DataController.RecordCount - 1 do //�Ϻ����� ���� �� �¶��� ��翩�� Ȯ��
		begin
			if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
			begin
				if cxgWkCounsel.ViewData.Records[I].Values[iWkSabun] <> '' then
				begin
					slTmp.add(cxgWkCounsel.ViewData.Records[I].Values[iWkSabun]);
				end;

			end;
		end;

		if Not pWORA1Dock.bUnDock then pWORA1Dock.GUBUN := GT_SEL_BRNO.Gubun;
		if Not pWORA1Dock.bUnDock then pWORA1Dock.HDNO  := GT_SEL_BRNO.HDNO;
		if Not pWORA1Dock.bUnDock then pWORA1Dock.BrNo  := GT_SEL_BRNO.BrNo;
		if Not pWORA1Dock.bUnDock then pWORA1Dock.BrName:= GT_SEL_BRNO.BrName;

		if Not Assigned(Frm_WOR23) Or (Frm_WOR23 = Nil) then Frm_WOR23 := TFrm_WOR23.Create(Nil);

		Frm_WOR23.pWOR23Dock.bUnDock := pWORA1Dock.bUnDock;
		Frm_WOR23.pWOR23Dock.HdNo    := pWORA1Dock.HdNo;
		if (sTmp <> '') and (sTmp <> pWORA1Dock.BrNo) then
		begin
			Frm_WOR23.pWOR23Dock.BrNo    := sTmp;
			Frm_WOR23.pWOR23Dock.BrName  := sTmp1;
		end
		else
		begin
			Frm_WOR23.pWOR23Dock.BrNo    := pWORA1Dock.BrNo;  //���ñ�簡 ���ų� ���ñ���� ���簡 ������ �����Ұ��
			Frm_WOR23.pWOR23Dock.BrName  := pWORA1Dock.BrName;
		end;
		Frm_WOR23.pWOR23Dock.BrName  := pWORA1Dock.BrName;
		Frm_WOR23.pWOR23Dock.Gubun   := pWORA1Dock.Gubun;
		Frm_WOR23.pWOR23Dock.Idx     := pWORA1Dock.Idx;

		Frm_WOR23.FWkList.Assign(slTmp);
		Frm_WOR23.edt_Cnt.Caption := IntToStr(Frm_WOR23.FWkList.Count);
		Frm_WOR23.lblSosokNameA1.Caption := lblSosokNameA1.Caption;

		Frm_WOR23.edt_HdNo.Text := pWORA1Dock.HdNo;
		sHdCd_Old := pWORA1Dock.HdNo;
		for I := 0 to scb_BranchName.Count - 1 do
		begin
			 sHdCd :='';
			 sHdCd := frm_Main.func_search_hdNo(scb_BranchCode[I]);
			 if (sHdCd = sHdCd_Old)  then
			 begin
				 Frm_WOR23.cboBranch.Properties.Items.Add('(' + sHdCd + ',' + scb_BranchCode[I] +')' + scb_BranchName[I] );
			 end;
		end;
		Frm_WOR23.Show;
            
		Frm_WOR23.btn_MCashSchSearch.Tag := 99;
		Frm_WOR23.btn_MCashSchSearch.Click;
	Finally
		slTmp.Free;
	End;
end;

procedure TFrm_WORA1.cxMoveSetClick(Sender: TObject);
const
	ls_Param = '<param>ParamString</param>';
var
  XmlData, ErrMsg, sMsg, AParams : string;
  sParam, sWkSabun, sBrNo, sWkSabun2, sWkName, dt_sysdate2, sHP: string;
  i, iWkSabun, iWkSabun2, iWkName, iHp: Integer;
	sList, sListErr : TStringList;
	iCheckCol, ErrCode: integer;
begin
	{ TODO : �������ձ��(A1826)�� �׻� �����̵� �����ϰ� ���� ó�� - �ż�������� ��û LYB 2016-05-25 }
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
  begin
    if ( Trim(cxcbWkHdNo.Text) <> '' ) And ( scb_HdNo[scb_HdNm.IndexOf(cxcbWkHdNo.Text)] = 'A1826' ) And ( GS_PRJ_AREA = 'O' ) then
    begin

    end else
    begin
      dt_sysdate2 := frm_main.func_sysdate;
      if (length(dt_sysdate2) <> 14) or
        ((StrToInt(copy(dt_sysdate2, 9, 4)) < 0930) or
         (StrToInt(copy(dt_sysdate2, 9, 4)) > 1900)) then
      begin
        GMessagebox('���� 7�ú��� ���� 9�� 30�� ���̿��� ��� �̵��� �� �� �����ϴ�.', CDMSE);
        Exit;
      end;
    end;

    if cxcbWkBrNo.ItemIndex = 0 then
    begin
      GMessagebox('�̵��� ���縦 �����Ͻʽÿ�.', CDMSE);
			Exit;
    end;

  end else
  begin
    if ( GT_SEL_BRNO.HDNO = 'A1826' ) And ( GS_PRJ_AREA = 'O' ) then
    begin

    end else
    begin
      dt_sysdate2 := frm_main.func_sysdate;
      if (length(dt_sysdate2) <> 14) or
        ((StrToInt(copy(dt_sysdate2, 9, 4)) < 0930) or
         (StrToInt(copy(dt_sysdate2, 9, 4)) > 1900)) then
      begin
        GMessagebox('���� 7�ú��� ���� 9�� 30�� ���̿��� ��� �̵��� �� �� �����ϴ�.', CDMSE);
        Exit;
      end;
    end;
  end;

	sList := TStringList.Create;
  sList.Clear;
  sListErr := TStringList.Create;
  sListErr.Clear;
  iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
  iWkSabun2 := cxgWkCounsel.GetColumnByFieldName('��ü���').Index;
  iWkName := cxgWkCounsel.GetColumnByFieldName('����').Index;

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    sBrNo := LeftStr(cxcbWkBrNo.Text, Pos('(', cxcbWkBrNo.Text) - 1)
  else
    sBrNo := scb_BranchCode.Strings[cxcbWkBrNo.ItemIndex];

	ProgressBar2.Max := cxgWkCounsel.DataController.RecordCount - 1;
	ProgressBar2.Position := 0;
	lbWkSabun.Items.Clear;

	iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
	iHp := cxgWkCounsel.GetColumnByFieldName('�ܸ���').Index;
	sHP := '';
	for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
	begin
		if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
		begin
			Application.ProcessMessages;
			if (GS_PRJ_AREA = 'S') and (not Cheonan_ShareGroup(GS_PRJ_AREA, GT_USERIF.ShareNo)) and ( Not GB_365System ) and ( Not GB_CallLine ) then
			begin
				sHP := cxgWkCounsel.ViewData.Records[I].Values[iHp];
				if Pos('#', sHP) > 0 then Continue;     //#��� �����̵� ����
			end;

			sWkSabun  := cxgWkCounsel.ViewData.Records[I].Values[iWkSabun];
			sWkSabun2 := cxgWkCounsel.ViewData.Records[I].Values[iWkSabun2];
			sWkName   := cxgWkCounsel.ViewData.Records[I].Values[iWkName];
			lbWkSabun.Items.Add(sWkSabun);

			AParams := sWkSabun + '��' + sBrNo;

			// CALLABLE �������� Callable05 �������� ���� -> �йи� ���� ó�� �ϸ鼭 ���� ����� �߰��� ���� ���� ó��  20120704 LYB
			if not RequestBase(GetCallable05('MOVE_WORKER', 'MNG_WK.MOVE_WORKER', AParams), XmlData, ErrCode, ErrMsg) then
			begin
				sListErr.Add(sWkName + ',' + sWkSabun + ', ErrMsg:' + ErrMsg);
			end else
				sList.Add(sWkName + ',' + sWkSabun);
		end;
		ProgressBar2.Position := i;
	end;
	if sListErr.Count > 0 then
  begin
    sMsg := '�Ϸ��Ͽ����ϴ�.' + #13#10 + '���� : ' + IntToStr(sList.Count)
			+ #13#10 + '���� : ' + IntToStr(sListErr.Count) + #13#10 + '���и��'
			+ #13#10 + sListErr.Text;
	end else
	begin
		sMsg := '��� �Ϸ��Ͽ����ϴ�.';
	end;
	GMessagebox(sMsg, CDMSE);
	proc_WorkerList(1);
//	proc_wkMngSearch(1);
	FreeAndNil(sList);
	FreeAndNil(sListErr);
	pnlWkBrChange.Visible := False;
end;

procedure TFrm_WORA1.N22Click(Sender: TObject);
var
  ls_TxLoad: string; // XML File Load
  sWorkerNode, sWkSabun: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon, lst_fail: IXMLDOMNode;
  i, iCol, iBrNo: Integer;
  sList, sList2, slReceive: TStringList;
  iCheckCol, ErrCode: integer;
begin
  Screen.Cursor := crHourGlass;

  iBrNo := cxgWkCounsel.GetColumnByFieldName('�����ڵ�').Index;
  iCol := cxgWkCounsel.GetColumnByFieldName('�����').Index;
  ls_rxxml := GTx_UnitXmlLoad('C028.XML');

  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ls_rxxml) then
    begin
      Screen.Cursor := crDefault;
      Exit;
    end;

    sWorkerNode := '/cdms/header/ClientKey';

    lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
    lst_Node.item[0].attributes.getNamedItem('Value').text := 'WOR0011';

    sWorkerNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
    lst_Node.item[0].attributes.getNamedItem('Value').text := En_Coding(GT_USERIF.ID);

    sWorkerNode := '/cdms/Service/Fail';
    lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
    lst_fail := lst_Node.item[0].cloneNode(True);

    sWorkerNode := '/cdms/Service/WalkyTalky';
    lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
    lst_Node.item[0].removeChild(lst_Node.item[0].firstChild);

    sWkSabun := '';
    sList := TStringList.Create;
    sList.Clear;
    sList2 := TStringList.Create;
    sList2.Clear;

    iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
    for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
    begin
//      if cxgWkCounsel.ViewData.Records[i].Selected then // ok
      if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
      begin
        sList.Add(cxgWkCounsel.ViewData.Records[I].Values[iCol]);
        sList2.Add(cxgWkCounsel.ViewData.Records[I].Values[iBrNo]);
      end;
    end;

    if sList.Strings[0] <> '' then
    begin
      lst_Node.item[0].attributes.getNamedItem('action').text := 'UPDATE';
      lst_Node.item[0].attributes.getNamedItem('BrNo').text := sList2.Strings[0];
      lst_Node.item[0].attributes.getNamedItem('WkSabun').text := sList.Strings[0];
      if sList.Count > 1 then
      begin
        for i := 1 to sList.Count - 1 do
        begin
          lst_clon := lst_node.item[0].cloneNode(True);
          sWorkerNode := '/cdms/Service';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[0].appendChild(lst_clon);
          sWorkerNode := '/cdms/Service/WalkyTalky';
          lst_Node := xdom.documentElement.selectNodes(sWorkerNode);
          lst_Node.item[i].attributes.getNamedItem('WkSabun').text := sList.Strings[i];
          lst_Node.item[i].attributes.getNamedItem('BrNo').text := sList2.Strings[i];
        end;
      end;
      lst_Node[sList.Count - 1].parentNode.appendChild(lst_fail);
    end;
    FreeAndNil(sList);
    FreeAndNil(sList2);
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

procedure TFrm_WORA1.N23Click(Sender: TObject);
var
  iBrNo, iRow: Integer;
  sBrNo: string;
begin
  iRow := cxgWkCounsel.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  iBrNo := cxgWkCounsel.GetColumnByFieldName('�����ڵ�').Index;
  sBrNo := cxgWkCounsel.DataController.Values[iRow, iBrNo];
  if Not Assigned(Frm_WOR08) Or (Frm_WOR08 = Nil) then Frm_WOR08 := TFrm_WOR08.Create(Nil);
  Frm_WOR08.WorA1Tag := Self.Tag - 21;
  Frm_WOR08.proc_init;
  if Frm_WOR08.cxlbBrNo.Caption <> sBrNo then
  begin
    Frm_WOR08.cxlbBrNo.Caption := sBrNo;
    Frm_WOR08.proc_BrChange;
  end;
  Frm_WOR08.proc_Search;
  Frm_WOR08.Show;
end;

procedure TFrm_WORA1.N29Click(Sender: TObject);
var
  iWkSabun, iRow, iWkName : Integer;
	sWkSabun, sWkName : string;
begin
  iRow := cxgWkCounsel.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
  sWkSabun := cxgWkCounsel.DataController.Values[iRow, iWkSabun];

  iWkName := cxgWkCounsel.GetColumnByFieldName('����').Index;
  sWkName := cxgWkCounsel.DataController.Values[iRow, iWkName];

  if sWkSabun <> '' then
  begin
    if ( Not Assigned(Frm_JON32) ) Or ( Frm_JON32 = NIl ) then Frm_JON32 := TFrm_JON32.Create(Nil);
    Frm_JON32.pJON32Dock.bUnDock := pWORA1Dock.bUnDock;
    Frm_JON32.pJON32Dock.HdNo    := pWORA1Dock.HdNo;
    Frm_JON32.pJON32Dock.BrNo    := pWORA1Dock.BrNo;
    Frm_JON32.pJON32Dock.BrName  := pWORA1Dock.BrName;
    Frm_JON32.pJON32Dock.Gubun   := pWORA1Dock.Gubun;
    Frm_JON32.pJON32Dock.Idx     := pWORA1Dock.Idx;
//    Frm_JON32.Jon03Tag := Self.Tag;
		Frm_JON32.Proc_Flag := 5;
		Frm_JON32.sWk_sabun32 := sWkSabun;
		Frm_JON32.sWkName := sWkName;
		Frm_JON32.sKeyNumber := '';
		Frm_JON32.Show;
		// ��� ���� ��Ȳ ��ȸ
		Frm_JON32.cxButton1Click(Sender);
  end;
end;

procedure TFrm_WORA1.cxbCashCloseClick(Sender: TObject);
begin
  pnlWkRev.Visible := False;
end;

procedure TFrm_WORA1.cxbCashSetClick(Sender: TObject);
begin
	if Not func_EucKr_Check(cxedMemo, 0) then Exit;
	tmrCashProcess.Tag := 0;
	tmrCashProcess.Enabled := True;
end;

procedure TFrm_WORA1.cxbJobCancelClick(Sender: TObject);
begin
  func_possbleJob(1);
end;

procedure TFrm_WORA1.cxbJobCloseClick(Sender: TObject);
begin
  pnlWkJobTime.Visible := False;
end;

procedure TFrm_WORA1.cxbJobSetClick(Sender: TObject);
begin
  func_possbleJob(0);
end;

procedure TFrm_WORA1.cxbSmsSendClick(Sender: TObject);
var
  s1, s2, send_num, sSabun: string;
  i, i1, i2, iCol, iMin, iMax, iwkSabun: Integer;
  iCheckCol: Integer;
begin
  if Not pWORA1Dock.bUnDock then pWORA1Dock.GUBUN := GT_SEL_BRNO.Gubun;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.HDNO  := GT_SEL_BRNO.HDNO;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrName:= GT_SEL_BRNO.BrName;

  i1 := cxgWkCounsel.GetColumnByFieldName('�ܸ���').Index;
  i2 := cxgWkCounsel.GetColumnByFieldName('�޴���').Index;
  send_num := func_BrTelSearch(pWORA1Dock.BrNo);
  send_num := StringReplace(send_num, '-', '', [rfReplaceAll]);

  ls_wk_sms.Clear;

  if cxrbNoRange.Checked then
  begin
    sSabun := '';

    iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
    for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
    begin
      if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
      begin
        s1 := cxgWkCounsel.ViewData.Records[I].Values[i1];
        s2 := cxgWkCounsel.ViewData.Records[I].Values[i2];
        s1 := StringReplace(s1, '-', '', [rfReplaceAll]);
        s2 := StringReplace(s2, '-', '', [rfReplaceAll]);
        if Trim(s2) <> '' then
          ls_wk_sms.Items.Add(s2)
        else
          if Trim(s1) <> '' then
          ls_wk_sms.Items.Add(s1);
      end;
    end;
  end else
  begin
    if cxrbWkSabun.Checked then
      iCol := cxgWkCounsel.GetColumnByFieldName('�����').Index
    else
      iCol := cxgWkCounsel.GetColumnByFieldName('��ü���').Index;

    iMin := StrToIntDef(cxStNum.Text, 0);
    if iMin < 0 then
      iMin := 0;
    iMax := StrToIntDef(cxEdNum.Text, 0);
    for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
    begin
      sSabun := cxgWkCounsel.ViewData.Records[I].Values[iCol];
      if sSabun = '' then
        sSabun := '-2';
      if StrToIntDef(sSabun, -1) = -1 then
        sSabun := Copy(sSabun, 2, Length(sSabun) - 1);
      iwkSabun := StrToIntDef(sSabun, -1);
      if (iwkSabun >= iMin) and (iwkSabun <= iMax) then
      begin
        s1 := cxgWkCounsel.ViewData.Records[I].Values[i1];
        s2 := cxgWkCounsel.ViewData.Records[I].Values[i2];
        s1 := StringReplace(s1, '-', '', [rfReplaceAll]);
        s2 := StringReplace(s2, '-', '', [rfReplaceAll]);
        if Trim(s2) <> '' then
          ls_wk_sms.Items.Add(s2)
        else
          if Trim(s1) <> '' then
          ls_wk_sms.Items.Add(s1);
      end;
    end;
  end;
  if Not Assigned(Frm_SMS01) Or (Frm_SMS01 = Nil) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
  Frm_SMS01.pSMS01Dock.bUnDock := pWORA1Dock.bUnDock;
  Frm_SMS01.pSMS01Dock.HdNo    := pWORA1Dock.HdNo;
  Frm_SMS01.pSMS01Dock.BrNo    := pWORA1Dock.BrNo;
  Frm_SMS01.pSMS01Dock.BrName  := pWORA1Dock.BrName;
  Frm_SMS01.pSMS01Dock.Gubun   := pWORA1Dock.Gubun;
  Frm_SMS01.pSMS01Dock.Idx     := pWORA1Dock.Idx;

  frm_sms01.mm_message.Text := '';
  frm_sms01.ed_send.Text := send_num;
  frm_sms01.ls_sms.Items.Clear;
  frm_sms01.ls_sms.Items.Assign(ls_wk_sms.Items);
	Frm_SMS01.sSendKind := '';
	Frm_SMS01.rdo_SMS.visible := False;
	Frm_SMS01.rdo_PUSH.visible := False;
	Frm_SMS01.PageControl1.ActivePageIndex := 2;
	frm_sms01.Show;
end;

procedure TFrm_WORA1.keyword_text01KeyPress(Sender: TObject; var Key: Char);
begin
	if Ord(Key) = VK_RETURN then
    btnSearchA1Click(btnSearchA1);
end;

procedure TFrm_WORA1.keyword_text01KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_WORA1.mni_MCashClick(Sender: TObject);
begin
	btn_MCash.Click; //frm_WOR23
end;

procedure TFrm_WORA1.proc_wk_modify;
var
  iWkSabun, iRow, iBrNo, iCnt: Integer;
	sWkSabun, sBrNo: string;
begin
  if Not pWORA1Dock.bUnDock then pWORA1Dock.GUBUN := GT_SEL_BRNO.Gubun;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.HDNO  := GT_SEL_BRNO.HDNO;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrName:= GT_SEL_BRNO.BrName;

  // ��� ������ ��Ŀ���� ��縸
  iCnt := cxgWkCounsel.DataController.GetSelectedCount;

  if iCnt <> 1 then
  begin
    GMessagebox('�Ѹ� �����ϼž� �մϴ�.', CDMSE);
    Exit;
  end;

  iRow := cxgWkCounsel.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  iBrNo := cxgWkCounsel.GetColumnByFieldName('�����ڵ�').Index;
  sBrNo := cxgWkCounsel.DataController.Values[iRow, iBrNo];
  if (GT_USERIF.LV = '60') or (GT_USERIF.BR = sBrNo) or ((GT_USERIF.LV = '10') and (IsPassedManagementWk(pWORA1Dock.BrNo))) then
  begin
    iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
    sWkSabun := cxgWkCounsel.DataController.Values[iRow, iWkSabun];

    if Not Assigned(Frm_WOR01) Or (Frm_WOR01 = Nil) then Frm_WOR01 := TFrm_WOR01.Create(Nil);
    Frm_WOR01.WorA1Tag := Self.Tag - 21;
    Frm_WOR01.pWOR01Dock.bUnDock := pWORA1Dock.bUnDock;
    Frm_WOR01.pWOR01Dock.HdNo    := pWORA1Dock.HdNo;
    Frm_WOR01.pWOR01Dock.BrNo    := pWORA1Dock.BrNo;
		Frm_WOR01.pWOR01Dock.BrName  := pWORA1Dock.BrName;
    Frm_WOR01.pWOR01Dock.Gubun   := pWORA1Dock.Gubun;
		Frm_WOR01.pWOR01Dock.Idx     := pWORA1Dock.Idx;

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			proc_FamilyBrChange;

		Frm_WOR01.gWOR19Mode := 'UPDATE';

    Frm_WOR01.gKey50 := gKey50;
		if GS_PRJ_AREA = 'S' then
		begin
			Frm_WOR01.proc_init;
		end;
		Frm_WOR01.gUse_Cnt := 0;
		frm_WOR01.Show;
		frm_WOR01.proc_wk_Search(sWkSabun);
	end else
	begin
    GMessagebox('�ٸ����翡 ����Դϴ�.' + #13#10 + '�����Ҽ� �����ϴ�.', CDMSE);
  end;
end;

function TFrm_WORA1.func_Search_Phone(sWkSabun: string): string;
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
      ShowMessage('���� Error�Դϴ�. �ٽ���ȸ�Ͽ��ֽʽÿ�.');
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
            ShowMessage('���� Error�Դϴ�. �ٽ���ȸ�Ͽ��ֽʽÿ�.');
            exit;
          end;
          ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
          if ('0000' = ls_MSG_Err) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              GetTextSeperationEx('��', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
//              ls_Rcrd := GetTextSeperation('��', lst_Result.item[0].attributes.getNamedItem('Value').Text);
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

procedure TFrm_WORA1.proc_Wk_Tel(sWkPhone: string);
var
	sCustTel : string;
begin
	sCustTel := StringReplace(sWkPhone, '-', '', [rfReplaceAll]);
  Frm_Main.pCallingCID(sCustTel, GT_POSS_KEYNUM);
end;

procedure TFrm_WORA1.proc_WorkerList(iType: Integer);
  function _GetWkState: string;
  begin
		Result := cxTabControl1.Tabs[cxTabControl1.TabIndex].Caption;
  end;
var Param, ErrMsg : string;
	ErrCode, i : integer;
	sTmp, sTmp1, sHdNo, sBrNo, sValue : string; 
	slList : TStringList;
begin
	SetDebugeWrite('TFrm_Main.func_CancelDate');
	if Not pWORA1Dock.bUnDock then pWORA1Dock.GUBUN := GT_SEL_BRNO.Gubun;
	if Not pWORA1Dock.bUnDock then pWORA1Dock.HDNO  := GT_SEL_BRNO.HDNO;
	if Not pWORA1Dock.bUnDock then pWORA1Dock.BrNo  := GT_SEL_BRNO.BrNo;
	if Not pWORA1Dock.bUnDock then pWORA1Dock.BrName:= GT_SEL_BRNO.BrName;

	if (GT_USERIF.LV = '10') and (pWORA1Dock.GUBUN = '1') and (not IsPassedManagementWk(pWORA1Dock.BrNo)) then
	begin
		sTmp := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
				+ #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
		GMessagebox(Format(sTmp, [pWORA1Dock.BrNo, pWORA1Dock.BrName]), CDMSE);
		Exit;
	end;

	if TCK_USER_PER.WOR_WkSearchOpt = '1' then     //�����ȸ���� ����
	begin
		if length(WideString(keyword_text01.Text)) < 2 then
		begin
			Exit;
		end else
		begin
			if select_list1.ItemIndex = 2 then
			begin
				if length(WideString(keyword_text01.Text)) < 4 then
				begin
					Exit;
				end;
			end;
		end;
	end;

	try
		Param := '';
		if (lbWkSabun.Items.Count > 20) or (lbWkSabun.Items.Count = 0) then       //��ü��ȸ�ÿ��� Ÿ�� ���ñ�� ���� ����ÿ��� else�� ���� KHS
		begin
			if (pWORA1Dock.GUBUN <> '1') then
			begin
				if (GT_USERIF.LV = '60') then
				begin
					if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
						sHdNo := GT_SEL_BRNO.HDNO
					else
						sHdNo := GT_USERIF.HD;

					sBrNo := '';
					if (not Check_ALLHD(pWORA1Dock.HDNO)) then
					begin
						for i := 0 to scb_FamilyBrCode.Count -1 do
						begin
							if i = 0 then sBrNo := scb_FamilyBrCode[i]
							else sBrNo := sBrNo + ',' + scb_FamilyBrCode[i];
						end;
					end;
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

			Param := sHdNo + '��' + sBrNo;                 //����, �����ڵ�

			if TCK_USER_PER.WOR_WkSearchOpt = '1' then
			begin
				if select_list1.ItemIndex = 3 then Param := Param + '��' + '4' //4:���ܸ޸�
				else Param := Param + '��' + IntToStr(select_list1.ItemIndex);    //�˻�����
				case select_list1.ItemIndex of  //  3.�˻����� [ 0 : ���˻� , 1 : ��ü���, 2:�ܸ���/�޴��� 3:���ܸ޸�
					0..3:
						begin
							Param := Param + '��' + keyword_text01.Text;
						end;
				end;
			end else
			begin
				Param := Param + '��' + IntToStr(select_list1.ItemIndex);    //�˻�����
				case select_list1.ItemIndex of  //  3.�˻����� [���˻� 0 ,��ü��� 1, �ܸ���/�޴��� 2 , ������� 3,���ܸ޸� 4, �ֹι�ȣ 5, ��������
					0..2, 4, 5:                   // 4.�˻����ǰ�  (���� ������ ��� �˻������̶� ����)
						begin
							Param := Param + '��' + keyword_text01.Text;
						end;
					3:
						begin
							Param := Param + '��' + IntToStr(select_list2.ItemIndex);
						end;
					6:
						begin
							case select_list2.ItemIndex of
								0 : Param := Param + '��' + '10';
								1 : Param := Param + '��' + '11';
								2 : Param := Param + '��' + '12';
								3 : Param := Param + '��' + '13';
								4 : Param := Param + '��' + '30';
								5 : Param := Param + '��' + '20';
								6 : Param := Param + '��' + '21';
								7 : Param := Param + '��' + '99';
							end;
						end;
				end;
			end;

			//5.�����ڵ�(��ü0, ����1, ������̳�2, �����̳�3, ����̳�4, �����+����̳�5, ������6, ��Ÿ����7, ��������8, ����9, 
			//�ݸ�������10, ���α��(����)11, ���α��(�Ͻ�����)12, ��(��������볳)13, �ܼ��������80(�ε���14)

			Param := Param + '��' + IntToStr(cxTabControl1.TabIndex);   //��ü0
			
			//6.���豸�� ([���� 0] [���踸���� 1] , [�������� 2]) üũ�ڽ�
			if (not chk_InsranceDate.Checked)	and (not chk_InsranceState.Checked) then sTmp := '0' else   //��ü
			if (    chk_InsranceDate.Checked)	and (not chk_InsranceState.Checked) then sTmp := '1' else   //���踸������ȸ
			if (not chk_InsranceDate.Checked)	and (    chk_InsranceState.Checked) then sTmp := '2' ;      //��������(������, �ݴ�, ����) ��ȸ

			if sTmp = '0' then
			begin			
				Param := Param + '��' + sTmp + '��' + '' + '��' + '' + '��' + '';
			end else
			if sTmp = '1' then
			begin			
				Param := Param + '��' + sTmp + '��' + FormatDateTime('yyyymmdd', cxDtStartA1.Date) + '��' 
							 + FormatDateTime('yyyymmdd', cxDtEndA1.Date) + '��' + '';
			end else
			if sTmp = '2' then //�ݴ纸��, ���纸��//   0:��ü, 1:�޸���, 2:KB, 3:DB�պ�
			begin			         //[�ݴ纸��2] - 0:���Կ�û, 1:���, 2:�ź�, 3:�ɻ���,  5:��Ÿ, 7:������û, 8:����, D:���û [3������]
				Param := Param + '��' + sTmp + '��' + IntToStr(cbWKInsGubun.ItemIndex); //0:��ü, 1:������, 2:�ݴ�, 3:����

				case cb_InsranceState.ItemIndex of  //0:���Կ�û, 1:���, 2:�ź�, 3:�ɻ���,  5:��Ÿ, 7:������û, 8:����, D:���û [3������]
					0: sTmp1 := '';
					1: sTmp1 := '0';
					2: sTmp1 := '1';
					3: sTmp1 := '2';
					4: sTmp1 := '3';
					5: sTmp1 := '5';
					6: sTmp1 := '7';
					7: sTmp1 := '8';
					8: sTmp1 := 'D';
				end;

				case cbWKInsGubun.ItemIndex of
				 0,1: Param := Param + '��' + ''                            + '��' + '';
					2:
					begin
						if cbWKIns.ItemIndex = 0 then
							Param := Param + '��' + '' + '��' + ''//sTmp1
						else
							Param := Param + '��' + IntToStr(cbWKIns.ItemIndex-1) + '��' + sTmp1;
					end;	
					3:  Param := Param + '��' + IntToStr(3)                   + '��' + sTmp1;   //DB�պ�
				end;
			end;

			//10.��ü���0, ���߱�� 1, ���߱������ 2, �ܵ������ 3 
			if rb_WKALL.Checked then      Param := Param + '��' + '0' else
			if rb_WKMutil.Checked then    Param := Param + '��' + '1' else
			if rb_NotWKMutil.Checked then Param := Param + '��' + '2' else
			if rb_WKSingle.Checked then   Param := Param + '��' + '3' ;
			//11.���� 
			if not chkWkConnect.checked then Param := Param + '��' + '0' else Param := Param + '��' + '1' ;

			Param := Param + '��' + '' ; //�����
			Param := Param + '��' + pWORA1Dock.GUBUN ; //���缱�ÿ���
			Param := Param + '��' + '' ; //���豸�� �Ϲ�/Ź��     Ź�̾߿� �°� �ϱ����� �������� 20190515 KHS ���漮���� ��û

			//���� 20191118 KHS ����
//			if ((rdo_Insure.checked) and (rdo_TakInsure.checked)) or ((Not rdo_Insure.checked) and (Not rdo_TakInsure.checked)) then
//				 Param := Param + '��' + '' else
//			if rdo_Insure.checked    then Param := Param + '��' + '0' else
//			if rdo_TakInsure.checked then Param := Param + '��' + '1' ; //Ź�ۺ�����ȸ    '' : ��ü, 0 : �Ϲݺ���, 1: Ź�ۺ���

			sValue := 'WOR001';
		end else
		begin
			sTmp := '';
			if lbWkSabun.Items.Count > 0 then
			begin
				for i := 0 to lbWkSabun.Items.Count - 1 do
				begin
					if i = 0 then sTmp := lbWkSabun.Items.Strings[i]
									 else	sTmp := sTmp + ',' + lbWkSabun.Items.Strings[i];
				end;
			end;
			Param := '' + '��' + '' + '��' + '' + '��' + '' + '��' + '' + '��' + '' + '��' + '' + '��' + '' + '��' + '' + '��' + '' + '��' +  '' + '��' 
						 + sTmp {+ '��' +  ''};
			Param := Param + '��' + pWORA1Dock.GUBUN ; //���缱�ÿ���
			sValue := 'WOR0010';
		end;

		
		//////////////////////////////////////////////////////////////////////////////
		// ���>�����Ȳ]1000��/�ݼ���(����)/������:��ü/���˻�:������
		FExcelDownManage := Format('%s/������:%s%s',
			[
					GetSelBrInfo
				, _GetWkState
				, IfThen(keyword_text01.Text = '', '', Format('/%s:%s', [select_list1.Text, keyword_text01.Text]))
			]);
		//////////////////////////////////////////////////////////////////////////////

		slList := TStringList.Create;
		Screen.Cursor := crHourGlass;
		btnSearchA1.enabled := False;
		if not RequestBasePaging(GetSel06(sValue, 'MNG.GET_WK_SEARCH_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('�����Ȳ ����Ʈ ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Screen.Cursor := crDefault;
			btnSearchA1.enabled := True;
			FreeAndNil(slList);
			Exit;
		end;
		try
			frm_Main.proc_SocketWork(False);
			Application.ProcessMessages;
			proc_recieve(slList);
		finally                                                                                                    
			frm_Main.proc_SocketWork(True);
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Frm_Flash.Hide;
		end;

	except
		on e: exception do
		begin
			Assert(False, E.Message);
		end;
	end; 
end;

function TFrm_WORA1.func_BrTelSearch(sBrNo: string): string;
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

function TFrm_WORA1.func_GETHOLIDAY(AParam: string): Boolean;
var
	ErrMsg, ls_MSG_Err: string;
	xdom: msDomDocument;
	XmlData, sTmp : string;
	lst_Result : IXMLDomNodeList;
	ErrCode : integer;
begin
	SetDebugeWrite('TFrm_Main.func_CancelDate');
	try
		Result := False;
		if not RequestBase(GetSel06('GET_HOLIDAY', 'COM.GET_HOLIDAY', '1', AParam), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('������ ��ȸ ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;
		xdom := ComsDomDocument.Create;
		try
			if not xdom.loadXML(XmlData) then Exit;

			ls_MSG_Err := GetXmlErrorCode(XmlData);
			if ('0000' = ls_MSG_Err) then
			begin
				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					sTmp := lst_Result.item[0].attributes.getNamedItem('Value').Text;
				end;

				if sTmp = '1' then 
					Result := True;
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

procedure TFrm_WORA1.cxgWkCounselKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    cxgWkCounsel.OptionsSelection.CellMultiSelect := False;
    cxgWkCounsel.OptionsSelection.CellSelect := False;
    cxgWkCounsel.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_WORA1.cxgWkCounselKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := False;
  end;
end;

procedure TFrm_WORA1.cxgWkCounselMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbLeft then
    Exit;
  gnClickedRow := cxgWkCounsel.DataController.FocusedRecordIndex;
  gnMouseKeyDown := cxgWkCounsel.DataController.FocusedRecordIndex;
  if not gbControlKeyDown then
  begin
    cxgWkCounsel.OptionsSelection.CellMultiSelect := True;
    cxgWkCounsel.OptionsSelection.CellSelect := True;
    cxgWkCounsel.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_WORA1.cxTabControl1Change(Sender: TObject);
begin
  if cxTabControl1.Tag = 1 then
    exit;
  lbWkSabun.Items.Clear;
  cxgWkCounsel.DataController.SetRecordCount(0);
	if cxTabControl1.TabIndex = 9 then gKey50 := True
                                else gKey50 := False;

  case select_list1.ItemIndex of
		0..2, 4, 5 : if Trim(keyword_text01.Text) = '' then Exit;
		3 : if select_list2.ItemIndex = 0 then Exit;
  end;

	proc_WorkerList;
//	proc_wkMngSearch;   //  �ڵ���ȸ ���� - �ڸ��Ƶ���̺� ������ �븮 ��û 2014-06-20
end;

procedure TFrm_WORA1.mniN30Click(Sender: TObject);
var
  sWk_Sabun, ls_TxQry, ls_TxLoad, rv_str, sResult, sQueryTemp: String;
  iWk_Sabun, iCnt: Integer;
  slReceive: TStringList;
  ErrCode: integer;
begin
//  iCnt := GetGridSelectedCount(cxgWkCounsel);
  iCnt := cxgWkCounsel.DataController.GetSelectedCount;

  if iCnt <> 1 then
  begin
    GMessagebox('�Ѹ� �����ϼž� �մϴ�.', CDMSE);
    exit;
  end;

  Screen.Cursor := crHourGlass;

  iWk_Sabun := cxgWkCounsel.GetColumnByFieldName('�����').index;
  sWk_Sabun := cxgWkCounsel.DataController.Values[cxgWkCounsel.DataController.FocusedRecordIndex, iWk_Sabun];

  ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
  fGet_BlowFish_Query(GSQ_WK_PENALTY_INITIALIZE, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sWk_Sabun]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'INITIALIZE', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];

      sResult := GetXmlErrorMsg(rv_str);
      if sResult = 'Success' then
      begin
        GMessagebox('��� �г�Ƽ �ʱ�ȭ�Ǿ����ϴ�.',CDMSE);
      end else
      begin
        GMessagebox('��� �г�Ƽ �ʱ�ȭ���еǾ����ϴ�.',CDMSE);
      end;
    end;
  except
    GMessagebox('��� �г�Ƽ �ʱ�ȭ���еǾ����ϴ�.',CDMSE);
  end;

  Screen.Cursor := crDefault;
end;

procedure TFrm_WORA1.cxgWkCounselColumn41PropertiesEditValueChanged(
  Sender: TObject);
var
  Row, Col: Integer;
begin
  Row := cxgWkCounsel.DataController.FocusedRecordIndex;
  Col := cxgWkCounsel.GetColumnByFieldName('').Index;
  cxgWkCounsel.DataController.Values[Row, Col] := not cxgWkCounsel.DataController.Values[Row, Col];
end;

procedure TFrm_WORA1.cxgWkCounselCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  Row, Col: Integer;
begin
//  gnClickedRow := ACellViewInfo.GridRecord.Index;
  gnClickedRow := cxgWkCounsel.DataController.FocusedRecordIndex;
  if (gbControlKeyDown) and (AButton = mbLeft) then
  begin
    Row := ACellViewInfo.GridRecord.Index;
		Col := cxgWkCounsel.GetColumnByFieldName('').Index;
    cxgWkCounsel.DataController.Values[Row, Col] := cxgWkCounsel.DataController.IsRowSelected(Row);
  end;
end;

procedure TFrm_WORA1.cxgWkCounselSelectionChanged(
  Sender: TcxCustomGridTableView);
var
  Row, Col: Integer;
begin
  if gbControlKeyDown then
  begin
    Row := cxgWkCounsel.DataController.FocusedRecordIndex;
    Col := cxgWkCounsel.GetColumnByFieldName('').Index;
    cxgWkCounsel.DataController.Values[Row, Col] := cxgWkCounsel.DataController.IsRowSelected(Row);
  end;
end;

procedure TFrm_WORA1.cxgWkCounselStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
	iWkStatus, iKakaoInstall, iKakaoUse, iWkName, iRow, iTaSa, iCol : Integer;
  AView: TcxGridDBTableView absolute Sender;
	IsSystemLock: Boolean;
	sTmp : string;
begin
	iWkStatus := AView.GetColumnByFieldName('����').Index;
	iWkName := AView.GetColumnByFieldName('����').Index;
	iKakaoInstall := AView.GetColumnByFieldName('kakao��ġ').Index;
	iKakaoUse := AView.GetColumnByFieldName('kakao���').Index;
	iTaSa := AView.GetColumnByFieldName('Ÿ�����α׷�').Index;
	iCol := cxgWkCounsel.GetColumnByFieldName('�������ѽð�').Index;
	iRow := AView.DataController.GetRowInfo(ARecord.Index).RecordIndex;

																		 
	IsSystemLock := (Pos('�ݸ�������', AView.ViewData.Records[ARecord.Index].Values[iWkStatus]) > 0);
//	AStyle.TextColor := clBlack;
//	AStyle.Font.Style := [];
	if (AView.ViewData.Records[ARecord.Index].Values[AView.GetColumnByFieldName('').Index]) and (not Assigned(AStyle)) then
	begin
    if IsSystemLock then
      AStyle := cxStyleSysLockSel
		else
		begin
			AStyle := cxStyleSelected;
			if (AItem.Index = iWkName) and (AView.DataController.Values[iRow, iKakaoInstall] = 'y') then
			begin
				AStyle := cxStyleKakao1Selected;
			end;
			if (AItem.Index = iWkName) and (AView.DataController.Values[iRow, iKakaoUse] = 'y') then
			begin
				AStyle := cxStyleKakao2Selected;
			end;
			sTmp := AView.DataController.Values[iRow, iCol];
			if (AItem.Index = iCol) and (StrToIntDef(sTmp, 0) > 0) then				
			begin
				AStyle := cxStyleKakao2Selected;
			end;

	 {		if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G60') 
															 or (GT_USERIF.ShareNo = 'G72')) then  //G60  �������� , G72 ���׿��� �ݸ�Ʈ ǥ��  20160909KHS
			begin                                                         
				if (AItem.Index = iWkName) and (AView.DataController.Values[iRow, iTaSa] = 'y') then
				begin
					AStyle := cxStyleCallmartSelect;
				end;
			end; } 
		end;
	end else
	begin
    if IsSystemLock then
			AStyle := cxStyleSysLock
		else
		begin
			AStyle := cxStyleNormal;
			if (AItem.Index = iWkName) and (AView.DataController.Values[iRow, iKakaoInstall] = 'y') then
			begin
				AStyle := cxStyleKakao1;
			end;
			if (AItem.Index = iWkName) and (AView.DataController.Values[iRow, iKakaoUse] = 'y') then
			begin
				AStyle := cxStyleKakao2;
			end;
			sTmp := AView.DataController.Values[iRow, iCol];
			if (AItem.Index = iCol) and (StrToIntDef(sTmp, 0) > 0) then				
			begin
				AStyle := cxStyleKakao2;
			end;

		{	if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G60') 
															 or (GT_USERIF.ShareNo = 'G72')) then  //G60  �������� , G72 ���׿��� �ݸ�Ʈ ǥ��  20170909KHS
			begin                                                  
				if (AItem.Index = iWkName) and (AView.DataController.Values[iRow, iCallMart] = 'y') then
				begin
					AStyle := cxStyleCallmart;
				end;
			end; }
		end;
	end;
	AStyle.Font.Size := GS_JON_FONTSIZE;
	AStyle.Font.Style := GS_JON_FontStyle;
{	
  AStyle := Frm_Main.cxStyle1;
	AStyle.TextColor := clBlack;

	if AItem.Index = iWkName then
	begin
		if AView.ViewData.Records[ARecord.Index].Values[iKakaoInstall] = 'y' then
			AStyle  := frm_Main.cxStyleKakao;

		if AView.ViewData.Records[ARecord.Index].Values[iKakaoUse] = 'y' then
			AStyle.TextColor := clRed;
			
	end;  }
end;

procedure TFrm_WORA1.cxgWkCounselMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  I, Row, Col: Integer;
begin
  if Button <> mbLeft then
    Exit;
  if (not gbControlKeyDown) then
  begin
    Col := cxgWkCounsel.GetColumnByFieldName('').Index;
    if gbMouseKeyDrag then
    begin
      cxgWkCounsel.DataController.BeginUpdate;
      try
        for I := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
        begin
          if cxgWkCounsel.DataController.IsRowSelected(I) then
            cxgWkCounsel.ViewData.Records[I].Values[Col] := True;
        end;
      finally
        cxgWkCounsel.DataController.EndUpdate;
      end;
    end else
    begin
      Row := cxgWkCounsel.DataController.FocusedRecordIndex;
      if (Row > -1) and (gnClickedRow = Row) then
        cxgWkCounsel.DataController.Values[Row, Col] := not cxgWkCounsel.DataController.Values[Row, Col];
    end;
  end;
  gnClickedRow    := -1;
  gnMouseKeyDown  := -1;
  gbMouseKeyDrag  := False;
end;

procedure TFrm_WORA1.cxgWkCounselMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (gnMouseKeyDown > -1) and (gnMouseKeyDown <> cxgWkCounsel.DataController.FocusedRecordIndex) then
  begin
    gbMouseKeyDrag := True;
  end;
end;

procedure TFrm_WORA1.mniWkCTitleClick(Sender: TObject);
var
  I: Integer;
  sTemp: string;
begin
  if pnlEtcReason.Visible then
  begin
    GMessagebox('��Ÿ����â�� �ݰ� �۾��� �ּ���',CDMSE);
    pnlEtcReason.BringToFront;
    Exit;
  end;

  if pnlWkBrChange.Visible then
  begin
    GMessagebox('��� �����̵� â�� �ݰ� �۾��� �ּ���',CDMSE);
		pnlWkBrChange.BringToFront;
    Exit;
  end;

  if pnlWkRev.Visible then
  begin
    GMessagebox('�ϰ����� â�� �ݰ� �۾��� �ּ���',CDMSE);
    pnlWkRev.BringToFront;
    Exit;
  end;

  // �������� ���ߴ� �÷��� ��ŭ ���ش�. �����÷� 6�� ���. ���� ���� 7�� �����.
  pnlWkCounselTitle.Left := (Self.Width - pnlWkCounselTitle.Width) div 2;
  pnlWkCounselTitle.top  := (Self.Height - pnlWkCounselTitle.Height) div 2;
  lstWkCShow.Clear;
  lstWkCHide.Clear;
  for i := 0 to cxgWkCounsel.ColumnCount - 1 do
  begin
    if cxgWkCounsel.Columns[I].Tag = 0 then
      Continue;
    sTemp := cxgWkCounsel.Columns[I].Caption;
    if cxgWkCounsel.Columns[I].Visible then
      lstWkCShow.Items.Add(sTemp)
    else
      lstWkCHide.Items.Add(sTemp);
  end;

  pnlWkCounselTitle.Show;
end;

procedure TFrm_WORA1.mni_MCashInOutClick(Sender: TObject);
var iCnt : integer;
begin
	SetDebugeWrite('TFrm_WORA1.mni_MCashClick');
	Try
		iCnt := GetGridSelectedCount(cxgWkCounsel);

		if iCnt <= 0 then
		begin
			GMessagebox('���õ� ��簡 �����ϴ�.', CDMSE);
			exit;
		end;
		edt_MCashMemo.Text := '';
		edt_MCash.text := '';
		lb_MCashCnt.Caption := IntToStr(iCnt);
		rdo_MCash_Type1.checked := True;
		if pnl_MCash.Visible then
    begin
      pnl_MCash.Visible := False;
    end else
    begin
    	pnl_MCash.Left := ( Frm_Main.Width  - pnl_MCash.Width ) div 2;
    	pnl_MCash.Top  := ((Frm_Main.Height - pnl_MCash.Height) div 2) - 50;
      pnl_MCash.Visible := True;
  		pnl_MCash.BringToFront;
    end;
	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;
end;

procedure TFrm_WORA1.btnWkCTitleCloseClick(Sender: TObject);
begin
  pnlWkCounselTitle.Hide;
end;

procedure TFrm_WORA1.btnWkCItemMove(Sender: TObject);
var
  CurIndex: Integer;
begin
  case TButton(Sender).Tag of
    1:
      begin
        CurIndex := lstWkCShow.ItemIndex;
        if CurIndex < 0 then
          Exit;

        lstWkCHide.Items.Insert(lstWkCHide.ItemIndex+1, lstWkCShow.Items.Strings[CurIndex]);
        lstWkCShow.Items.Delete(CurIndex);
        if lstWkCShow.Count >= CurIndex - 1 then
          lstWkCShow.ItemIndex := CurIndex;
      end;
    2:
      begin
        CurIndex := lstWkCHide.ItemIndex;
        if CurIndex < 0 then
          Exit;
        lstWkCShow.Items.Insert(lstWkCShow.ItemIndex+1, lstWkCHide.Items.Strings[CurIndex]);
        lstWkCHide.Items.Delete(CurIndex);
        if CurIndex >= lstWkCHide.Items.Count then
          lstWkCHide.ItemIndex := lstWkCHide.Items.Count - 1
        else
          lstWkCHide.ItemIndex := CurIndex;
      end;
    3:
      begin
        CurIndex := lstWkCShow.ItemIndex;
        if (CurIndex <= 0) then
          Exit;
        lstWkCShow.Items.Move(CurIndex, CurIndex - 1);
        lstWkCShow.ItemIndex := CurIndex - 1;
      end;
    4:
      begin
        CurIndex := lstWkCShow.ItemIndex;
        if (CurIndex < 0) or (CurIndex = lstWkCShow.Items.Count - 1) then
          Exit;
        lstWkCShow.Items.Move(CurIndex, CurIndex + 1);
        lstWkCShow.ItemIndex := CurIndex + 1;
      end;
  end;
end;

procedure TFrm_WORA1.btnWkCTitleSaveClick(Sender: TObject);
var
  I: Integer;
  sTemp: string;
  Column: TcxGridDBColumn;
begin
  cxgWkCounsel.BeginUpdate;
  try
    for I := 0 to lstWkCShow.Items.Count - 1 do
    begin
      sTemp := lstWkCShow.Items[I];
      if sTemp = '����' then sTemp := '';
      Column := cxgWkCounsel.GetColumnByFieldName(sTemp);
      if Assigned(Column) then
      begin
        Column.Index := I;
        Column.Visible := True;
      end;
    end;

    for I := 0 to lstWkCHide.Items.Count - 1 do
    begin
      sTemp := lstWkCHide.Items[I];
      if sTemp = '����' then sTemp := '';
      Column := cxgWkCounsel.GetColumnByFieldName(sTemp);
      if Assigned(Column) then
        Column.Visible := False;
    end;
  finally
    cxgWkCounsel.EndUpdate;
  end;

	proc_wkCounsel_Save;
  pnlWkCounselTitle.Hide;
end;

procedure TFrm_WORA1.btnWKInsranceApplyCloseClick(Sender: TObject);
begin
	pnlWKInsranceApply.Visible := False;
end;

procedure TFrm_WORA1.btnWKInsranceApplyOKClick(Sender: TObject);
var
	XmlData, ErrMsg : string;
	ErrCode, i, iTmp : Integer;
	sParams, sHdNo, sMsg : string;
	iWkSabun, iBrNo, iHp, iPhone, iWkName, iJunmin, iLicenseNo : integer;
	sWkSabun, sBrNo, sHp, sPhone, sWkName, sJunmin, sLicenseNo : String;

	sList, sListErr : TStringList;
	iCheckCol: integer;
	sTmp : string;
begin
//������������ڵ妢�����ڵ妢����ڵ�Ϲ�ȣ���ڵ���(������)������ó������̸�(�Ǹ�)���ֹι�ȣ�������������������������ȣ���̸��Ϧ��޸�

	if chkInsStartDate.checked then
	begin
		if cxdInsStartDate.date <= Now then
		begin
			GMessagebox('�����ڵ��������� ������ ���� Ŀ�� �մϴ�', CDMSE);
			exit;
		end;
	end;
	
	sList := TStringList.Create;
	sList.Clear;
	sListErr := TStringList.Create;
	sListErr.Clear;


	iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
	iBrNo    := cxgWkCounsel.GetColumnByFieldName('�����ڵ�').Index;
	iHp 		 := cxgWkCounsel.GetColumnByFieldName('�ܸ���').Index;
	iPhone 	 := cxgWkCounsel.GetColumnByFieldName('�޴���').Index;
	iWkName  := cxgWkCounsel.GetColumnByFieldName('�Ǹ�').Index;
	iTmp     := cxgWkCounsel.GetColumnByFieldName('����').Index;
	iJunmin  := cxgWkCounsel.GetColumnByFieldName('�ֹε�Ϲ�ȣ').Index;
//	iLicenseKind := cxgWkCounsel.GetColumnByFieldName('�����').Index;
	iLicenseNo := cxgWkCounsel.GetColumnByFieldName('�����ȣ').Index;
	 
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		sHdNo := GT_SEL_BRNO.HDNO
	else
		sHdNo := GT_USERIF.HD;

	ProgressBar4.Max := cxgWkCounsel.DataController.RecordCount - 1;
	ProgressBar4.Position := 0;
	lbWkSabun.Items.Clear;

	iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
	for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
	begin
		if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
		begin
			Application.ProcessMessages;
			sWkSabun   := cxgWkCounsel.ViewData.Records[I].Values[iWkSabun];
			sBrNo      := cxgWkCounsel.ViewData.Records[I].Values[iBrNo];
			sHP        := cxgWkCounsel.ViewData.Records[I].Values[iHp];
			sHP        := StringReplace(sHP, '-', '', [rfReplaceAll]);
			sPhone     := cxgWkCounsel.ViewData.Records[I].Values[iPhone];
			sPhone     := StringReplace(sPhone, '-', '', [rfReplaceAll]);
			sWkName    := cxgWkCounsel.ViewData.Records[I].Values[iWkName];
			sJunmin    := cxgWkCounsel.ViewData.Records[I].Values[iJunmin];
			sJunmin    := StringReplace(sJunmin, '-', '', [rfReplaceAll]);
			sLicenseNo := cxgWkCounsel.ViewData.Records[I].Values[iLicenseNo];

			if chkInsStartDate.Checked then
				sTmp := FormatDateTime('yyyymmdd', cxdInsStartDate.Date)
			else
				sTmp := '';

			if Trim(sWkName) = '' then
				sWkName    := cxgWkCounsel.ViewData.Records[I].Values[iTmp];
				
			lbWkSabun.Items.Add(sWkSabun);
			sParams := sWkSabun + '��' + sHdNo + '��' + sBrNo  + '��' + sHP + '��' + sPhone + '��' 
							 + sWkName  + '��' + sJunmin + '��' + sLicenseNo + '��' + sTmp;
																																		 
			if not RequestBase(GetCallable06('SET_INSERT_INS_CALL', 'INS.SET_INSERT_INS_CALL', sParams), XmlData, ErrCode, ErrMsg) then
			begin
				sListErr.Add(sWkName + ',' + sWkSabun + ', ErrMsg:' + ErrMsg);
			end else
				sList.Add(sWkName + ',' + sWkSabun);
		end;
		ProgressBar4.Position := i;
	end;
	if sListErr.Count > 0 then
	begin
		sMsg := '�Ϸ��Ͽ����ϴ�.' + #13#10 + '���� : ' + IntToStr(sList.Count)
			+ #13#10 + '���� : ' + IntToStr(sListErr.Count) + #13#10 + '���и��'
			+ #13#10 + sListErr.Text;
	end else
	begin
		sMsg := '��� �Ϸ��Ͽ����ϴ�.';
	end;
	
	GMessagebox(sMsg, CDMSE);
	proc_WorkerList(1);
//	proc_wkMngSearch(1);
	FreeAndNil(sList);
	FreeAndNil(sListErr);
end;

procedure TFrm_WORA1.btnWKInsranceChangeCloseClick(Sender: TObject);
begin
	pnlWKInsranceChange.Visible := False;
end;

procedure TFrm_WORA1.btnWKInsranceChangeOKClick(Sender: TObject);
var
	XmlData, ErrMsg : string;
	ErrCode, i : Integer;
	sParams, sHdNo, sMsg : string;
	iWkSabun, iWkName, iState, iInsrance : integer;
	sWkSabun, sWkName, sState, sInsrance : String;

	sList, sListErr : TStringList;
	iCheckCol: integer;
begin
//������������ڵ妢�����ڵ妢����ڵ�Ϲ�ȣ���ڵ���(������)������ó������̸�(�Ǹ�)���ֹι�ȣ�������������������������ȣ���̸��Ϧ��޸�

	sList := TStringList.Create;
	sList.Clear;
	sListErr := TStringList.Create;
	sListErr.Clear;


	iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
	iWkName  := cxgWkCounsel.GetColumnByFieldName('�Ǹ�').Index;
	iState   := cxgWkCounsel.GetColumnByFieldName('�ɻ���(�޸���)').Index;
	iInsrance:= cxgWkCounsel.GetColumnByFieldName('��������').Index;
	 
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		sHdNo := GT_SEL_BRNO.HDNO
	else
		sHdNo := GT_USERIF.HD;

	ProgressBar5.Max := cxgWkCounsel.DataController.RecordCount - 1;
	ProgressBar5.Position := 0;
	lbWkSabun.Items.Clear;

	iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
	for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
	begin
		if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
		begin
			Application.ProcessMessages;
			sWkSabun   := cxgWkCounsel.ViewData.Records[I].Values[iWkSabun];
			sWkName    := cxgWkCounsel.ViewData.Records[I].Values[iWkName];
			sState     := cxgWkCounsel.ViewData.Records[I].Values[iState];
			sInsrance  := cxgWkCounsel.ViewData.Records[I].Values[iInsrance];
			if sState <> '���' then continue;
			if sInsrance = '���纸��' then continue;
			
			lbWkSabun.Items.Add(sWkSabun);
			sParams := sWkSabun + '��' + 'c' + '��' + ''  + '��' + '';  //c : �ݴ纸��, m : ��������, n : �����ȵ�
																																		 
			if not RequestBase(GetCallable06('SET_UPDATE_INS_TYPE', 'INS.SET_UPDATE_INS_TYPE', sParams), XmlData, ErrCode, ErrMsg) then
			begin
				sListErr.Add(sWkName + ',' + sWkSabun + ', ErrMsg:' + ErrMsg);
			end else
				sList.Add(sWkName + ',' + sWkSabun);
		end;
		ProgressBar5.Position := i;
	end;
	if sListErr.Count > 0 then
	begin
		sMsg := '�Ϸ��Ͽ����ϴ�.' + #13#10 + '���� : ' + IntToStr(sList.Count)
			+ #13#10 + '���� : ' + IntToStr(sListErr.Count) + #13#10 + '���и��'
			+ #13#10 + sListErr.Text;
	end else
	begin
		sMsg := '��� �Ϸ��Ͽ����ϴ�.';
	end;
	
	GMessagebox(sMsg, CDMSE);
	proc_WorkerList(1);
//	proc_wkMngSearch(1);
	FreeAndNil(sList);
	FreeAndNil(sListErr);
end;

function TFrm_WORA1.GetGridSelectedCount(AView: TcxGridDBTableView): Integer;
var
	iCheckCol, I: Integer;
begin
	Result := 0;

	iCheckCol := AView.GetColumnByFieldName('').Index;
	for I := 0 to AView.DataController.RecordCount - 1 do
	begin
		if AView.ViewData.Records[I].Values[iCheckCol] then
		begin
			Inc(Result);
		end;
	end;
end;

function TFrm_WORA1.GetGridSelectedBrno(AView: TcxGridDBTableView; Var aBrNo : String): Boolean;
var
  iCheckCol, i, iBrNo: Integer;
  sBrNo : String;
begin
	Result := False;
  iBrNo := cxgWkCounsel.GetColumnByFieldName('�����ڵ�').Index;
  sBrNo := '';
  iCheckCol := AView.GetColumnByFieldName('').Index;
  for I := 0 to AView.DataController.RecordCount - 1 do
    if AView.ViewData.Records[I].Values[iCheckCol] then
    begin
      if sBrNo = '' then
      begin
        sBrNo := AView.ViewData.Records[I].Values[iBrNo];
        aBrNo := sBrNo;
      end;

      if sBrno <> AView.ViewData.Records[I].Values[iBrNo] then
      begin
        Result := True;
        Break;
      end;
    end;
end;

procedure TFrm_WORA1.N30Click(Sender: TObject);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, ls_Msg_Err, sMsg, sWkSabun, sWkName: string;
  sParam, sTemp: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode, iRow, iCnt, iWkSabun, iWkName: integer;
begin
  iCnt := cxgWkCounsel.DataController.GetSelectedCount;

  if iCnt <> 1 then
	begin
		GMessagebox('�Ѹ� �����ϼž� �մϴ�.', CDMSE);
		exit;
	end;
  iRow := cxgWkCounsel.DataController.FocusedRecordIndex;

  if iRow = -1 then
    exit;

  iWkName   := cxgWkCounsel.GetColumnByFieldName('����').Index;
  iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
  sWkName := cxgWkCounsel.DataController.Values[iRow, iWkName];
  sWkSabun := cxgWkCounsel.DataController.Values[iRow, iWkSabun];

  if Application.MessageBox(PChar(Format('[%s(%s)�Կ��� �޴������α׷���ġ�������� �ݹ鹮�ڸ� �����Ͻðڽ��ϱ�?', [sWkName, sWkSabun])),
    CDMSQ, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
  begin
    Exit;
  end;

  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE.xml');

  sTemp := 'SEND_CALLBACK_URL(?,?,?)';
  sParam := StringReplace(ls_Param, 'ParamString', GT_USERIF.ID, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', sWkSabun, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BGROUPSAVE', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(2), [rfReplaceAll]);
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
        Application.ProcessMessages;
        try
          ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
          sMsg := GetXmlErrorMsg(ls_rxxml);
          if ('0000' = ls_Msg_Err) then
          begin
            GMessagebox('�����Ͽ����ϴ�.', CDMSI);
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
    Screen.Cursor := crDefault;
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_WORA1.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then cxGridLevel4.GridView := cxGLVWK
                         else cxGridLevel4.GridView := cxgWkCounsel;
end;

procedure TFrm_WORA1.cxColWkCounselPeekBlockGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  if cxgWkCounsel.ViewData.Records[ACellViewInfo.GridRecord.index].Values[ACellViewInfo.Item.Index] = '-' then
	begin
    AHintText := '���翡�� �ɾ� �������� ��� �̻��';
  end;
end;

procedure TFrm_WORA1.cxdInsStartDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnWKInsranceApplyOK.SetFocus;
end;

procedure TFrm_WORA1.cxdtInsEndExit(Sender: TObject);
var
	sDate: TDate;
begin
	sDate := cxdtInsEnd.Date;

	if (sDate > Now) and (sDate < incYear(Now, 2)) then
	begin

	end
	else ShowMessage('���踸�����ڰ� ��ȿ���� �ʽ��ϴ�');
end;

procedure TFrm_WORA1.cxGroupBox1Resize(Sender: TObject);
begin
  btnDocking.Left := cxGroupBox1.Width - ( btnDocking.Width + 2 );
  btnFloating.Left := cxGroupBox1.Width - ( btnFloating.Width + 2 );
end;

procedure TFrm_WORA1.cxGroupBox2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WORA1.cxGroupBox2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WORA1.cxGroupBox4MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WORA1.grpWKInsranceApplyMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WORA1.FormDestroy(Sender: TObject);
begin
  FWkState.Free;
  Frm_WORA1 := Nil;
end;

procedure TFrm_WORA1.FormShow(Sender: TObject);
Var i : Integer;
begin
  for i := 0 to pred(cxStyleRepositoryWorker.Count) do
  begin
    TcxStyle(cxStyleRepositoryWorker.Items[i]).Font.Name := GS_FONTNAME;
  end;
end;

procedure TFrm_WORA1.SetWkState(var AStrList: TStringList);
var
  AData, ls_TxQry, sQueryTemp: string;
  ReceiveStr: string;
  StrList: TStringList;
  ErrCode: integer;

  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I: Integer;
begin
  AData := GTx_UnitXmlLoad('SEL01.XML');
  fGet_BlowFish_Query(GSQ_COMMON_CODE, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, ['WS']);
  AData := StringReplace(AData, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  AData := StringReplace(AData, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  AData := StringReplace(AData, 'ClientKeyString', 'SACD0001', [rfReplaceAll]);
  AData := StringReplace(AData, 'QueryString', ls_TxQry, [rfReplaceAll]);

  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    if dm.SendSock(AData, StrList, ErrCode, False) then
    begin
      ReceiveStr := StrList[0];

      if trim(ReceiveStr) = '' then
        Exit;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
  
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(ReceiveStr) then
      Exit;

    if (0 < GetXmlRecordCount(ReceiveStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      AStrList.Clear;
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
          AStrList.Add(ls_Rcrd[0] + '=' + ls_Rcrd[1]);
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

function TFrm_WORA1.GetWkStateStr(AStCd: string): string;
begin
  Result := '';
  if FWkState.IndexOfName(AStCd) > -1 then
    Result := FWkState.Values[AStCd];
end;

procedure TFrm_WORA1.grpWkBrChangeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
	PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WORA1.grpWkCounselTitleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WORA1.grpWkJobTimeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WORA1.grpWkRevMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WORA1.img2Click(Sender: TObject);
begin
	PnlHelp.Top := 26;
	PnlHelp.Left := 500;
	if PnlHelp.Visible then PnlHelp.Visible := False
                     else PnlHelp.Visible := True;
end;

procedure TFrm_WORA1.mniWkCashBatchClick(Sender: TObject);
begin
	if Not pWORA1Dock.bUnDock then pWORA1Dock.GUBUN := GT_SEL_BRNO.Gubun;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.HDNO  := GT_SEL_BRNO.HDNO;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrName:= GT_SEL_BRNO.BrName;

{  if pWORA1Dock.GUBUN <> '1' then
	begin
		GMessagebox(PChar('���ĳ�� �ϰ�ó���� [���� ��� ���缱�� �޴�����] ���縦 �����ϼž� �մϴ�.'), CDMSE);
		Exit;
	end;   }

	if Not Assigned(Frm_WOR12) Or (Frm_WOR12 = Nil) then Frm_WOR12 := TFrm_WOR12.Create(Nil);
	if pWORA1Dock.GUBUN <> '1' then Frm_WOR12.gWOR12Gubun := 0 else Frm_WOR12.gWOR12Gubun := 1;
	Frm_WOR12.WorA1Tag := Self.Tag - 21;
	Frm_WOR12.pWOR12Dock.bUnDock := pWORA1Dock.bUnDock;
	Frm_WOR12.pWOR12Dock.HdNo    := pWORA1Dock.HdNo;
	Frm_WOR12.pWOR12Dock.BrNo    := pWORA1Dock.BrNo;
  Frm_WOR12.pWOR12Dock.BrName  := pWORA1Dock.BrName;
	Frm_WOR12.pWOR12Dock.Gubun   := pWORA1Dock.Gubun;
  Frm_WOR12.pWOR12Dock.Idx     := pWORA1Dock.Idx;

  Frm_WOR12.SetBranch(pWORA1Dock.HdNo, pWORA1Dock.BrNo, pWORA1Dock.BrName);
	Frm_WOR12.Show;
end;

procedure TFrm_WORA1.N31Click(Sender: TObject);
var
  iCnt, iRow, iBrNo, iWkSabun: integer;
  sBrNo, sWkSabun: string;
begin
  if Not pWORA1Dock.bUnDock then pWORA1Dock.GUBUN := GT_SEL_BRNO.Gubun;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.HDNO  := GT_SEL_BRNO.HDNO;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrName:= GT_SEL_BRNO.BrName;

  iCnt := cxgWkCounsel.DataController.GetSelectedCount;

  if iCnt <> 1 then
  begin
    GMessagebox('�Ѹ� �����ϼž� �մϴ�.', CDMSE);
    exit;
  end;

  iRow := cxgWkCounsel.DataController.FocusedRecordIndex;

  if iRow = -1 then
    exit;
  iBrNo := cxgWkCounsel.GetColumnByFieldName('�����ڵ�').Index;
  sBrNo := cxgWkCounsel.DataController.Values[iRow, iBrNo];
  if (GT_USERIF.LV = '60') or (GT_USERIF.BR = sBrNo) or ((GT_USERIF.LV = '10') and (IsPassedManagementWk(pWORA1Dock.BrNo))) then
  begin
    iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
    sWkSabun := cxgWkCounsel.DataController.Values[iRow, iWkSabun];
    if Not Assigned(Frm_WOR13) Or (Frm_WOR13 = Nil) then Frm_WOR13 := TFrm_WOR13.Create(Nil);
    Frm_WOR13.SetData_Param(sWkSabun);
    Frm_WOR13.Show;
  end else
  begin
    GMessagebox('�ٸ����翡 ����Դϴ�.' + #13#10 + '�����Ҽ� �����ϴ�.', CDMSE);
  end;
end;

procedure TFrm_WORA1.cxLabel126MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxLabel(Sender).Parent.Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WORA1.cxLimitCloseClick(Sender: TObject);
begin
  pnlWKAllLimit.Visible := False;
end;

procedure TFrm_WORA1.cxLimitNClick(Sender: TObject);
begin
  func_AllLimitJob(1);
end;

procedure TFrm_WORA1.cxLimitYClick(Sender: TObject);
begin
  func_AllLimitJob(0);
end;

procedure TFrm_WORA1.cxrbSuClick(Sender: TObject);
var
  w: WideString;
begin
  pnlChargeGroup.Tag := TcxRadioButton(Sender).Tag;
  w := Trim(grpWkRev.Caption);
  w := '(' + Copy(w, 1, 2) + '����)';
  if pnlChargeGroup.Tag <> 3 then
    cxedMemo.Text := TcxRadioButton(Sender).Caption + w
  else
    cxedMemo.Text := w;
  if pnlWkRev.Visible then
    cxedMemo.SetFocus;

  if pnlChargeGroup.Tag = 5 then
  begin
    pnlPCharge.Visible := True;
    pnlPCharge.Align := alBottom;
    pnlWkRev.Height := pnlWkRev.Height + 24;
    Panel7.Height := Panel7.Height + 24;
    ed_ChargeCash.Enabled := False;
  end else
  begin
    if gPreTag = 5 then
    begin
      pnlWkRev.Height := pnlWkRev.Height - 24;
      Panel7.Height := Panel7.Height - 24;
    end;
    pnlPCharge.Visible := False;
    pnlPCharge.Align := alNone;
    ed_ChargeCash.Enabled := True;
  end;
  gPreTag := pnlChargeGroup.Tag;
end;

procedure TFrm_WORA1.cxgWkCounselTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if TCK_USER_PER.WOR_Stats <> '1' then
  begin
    AText := '';
  end;
end;

procedure TFrm_WORA1.cxgWkCounselTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if TCK_USER_PER.WOR_Stats <> '1' then
  begin
    AText := '';
  end;
end;

procedure TFrm_WORA1.cxgWkCounselTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if TCK_USER_PER.WOR_Stats <> '1' then
  begin
    AText := '';
  end;
end;

procedure TFrm_WORA1.cxgWkCounselTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
  if TCK_USER_PER.WOR_Stats <> '1' then
  begin
    AText := '';
  end;
end;

procedure TFrm_WORA1.cxgWkCounselTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if TCK_USER_PER.WOR_Stats <> '1' then
  begin
    AText := '';
  end;
end;

procedure TFrm_WORA1.proc_FamilyBrChange;
var
  i : Integer;
  HdCd, HdCd_Old : String;
begin
	try
		Frm_WOR01.cboBranch.Tag := 99;
		Frm_WOR01.FBrNoList.Clear;
		Frm_WOR01.FTakList.Clear;
		Frm_WOR01.cboBranch.Properties.Items.Clear;
		HdCd_Old := '';

		for I := 0 to scb_FamilyBrName.Count - 1 do
		begin
			 HdCd :='';
			 HdCd := frm_Main.func_search_hdNo(scb_FamilyBrCode[I]);
			 if HdCd <> HdCd_Old then
			 begin
				 Frm_WOR01.RequestDataHeadInfo(HdCd);
				 HdCd_Old := HdCd;
			 end;
			 Frm_WOR01.cboBranch.Properties.Items.Add('(' + HdCd + ',' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I] + '/' + frm_WOR01.Gs_HdNm );
			 Frm_WOR01.FBrNoList.Add(scb_FamilyBrCode[I]);
			 Frm_WOR01.FTakList.Add(scb_FamilyTaksong[I]);
			 Frm_WOR01.FShuttel4.Add(scb_FamilyShuttle4[I]);
		end;
		Frm_WOR01.cboBranch.Tag := 0;
	except
	end;
end;

procedure TFrm_WORA1.N32Click(Sender: TObject);
begin
  cxButton19Click(nil);
end;

procedure TFrm_WORA1.N33Click(Sender: TObject);
var
	iCnt, ErrCode, iSecond : Integer;
	Param, XmlData, ErrMsg, sBrNo : String;
	lst_Result: IXMLDomNodeList;
	xdom: msDomDocument;
	ls_Rcrd : TStringList;
begin
  iCnt := GetGridSelectedCount(cxgWkCounsel);

  if iCnt <= 0 then
  begin
    GMessagebox('���õ� ��簡 �����ϴ�.', CDMSE);
    Exit;
  end;

  if GetGridSelectedBrno(cxgWkCounsel, sBrNo) then
  begin
    GMessagebox('���� ������ ���鸸 �����Ҽ� �ֽ��ϴ�.', CDMSE);
    Exit;
  end;

	Param := sBrNo;

	if not RequestBase(GetSel05('s_br_info', 'wk_pbl.s_br_info', '1000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('���� ���� ���� ���� ��ȸ ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

	xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(XmlData) then
		begin
			Exit;
    end;

    if (0 < GetXmlRecordCount(XmlData)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        GetTextSeperationEx('��', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);

        if ls_Rcrd[0] = 'n' then  //�ɾ߹������Ѽ��� ��� ����
        begin
          GMessagebox('���� ���� ���� �Ҽ� �ִ� ���簡 �ƴմϴ�.', CDMSE);
          Exit;
        end;

				iSecond := StrToIntDef(ls_Rcrd[12], 0); //�ɾ߹������Ѽ��� ���ѽð�

        if ( iSecond Div 60 > 0 ) then
          lblMin.Caption := FormatFloat('00�� ', iSecond Div 60) + FormatFloat('00��', iSecond Mod 60)
        else
          lblMin.Caption := FormatFloat('00��', iSecond Mod 60);

      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;

  pnlWKAllLimit.Left := (frm_main.Width - pnlWKAllLimit.Width) div 2;
  pnlWKAllLimit.top := ((frm_main.Height - pnlWKAllLimit.Height) div 2) - 50;

  pnlWKAllLimit.Visible := True;
  pnlWKAllLimit.BringToFront;
  cxlbLimitCnt.Caption := IntToStr(iCnt);
end;

procedure TFrm_WORA1.N34Click(Sender: TObject);
var
	iCnt: Integer;
	iCol, iCheckCol, i : integer;
begin
	iCol := cxgWkCounsel.GetColumnByFieldName('��������').Index;
	iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
	iCnt := 0;
	for I := 0 to cxgWkCounsel.DataController.RecordCount - 1 do //�ϰ����� ���� �� �¶��� ��翩�� Ȯ��
	begin
		if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
		begin
			if (copy(cxgWkCounsel.ViewData.Records[I].Values[iCol],1,4) <> '�ݴ纸��') and
				 (copy(cxgWkCounsel.ViewData.Records[I].Values[iCol],1,4) <> '���纸��') then //�ϰ����� ���� �� �¶��� ��翩�� Ȯ��
			begin
				inc(iCnt);
			end;
		end;
	end;

	if iCnt <= 0 then
	begin
		GMessagebox('���õ� ��簡 �����ϴ�.' + #13#10 + '�ݴ纸��, ���纸�� �������', CDMSE);
		exit;
	end;

	cxGroupBox4.Left := (frm_main.Width - cxGroupBox4.Width) div 2;
	cxGroupBox4.top := ((frm_main.Height - cxGroupBox4.Height) div 2) - 50;
	cxedInsNum.Text := '';
	
	cxGroupBox4.Visible := True;
	cxcbInsCorper.ItemIndex := 1;
	cxGroupBox4.BringToFront;
	cxLabel18.Caption := IntToStr(iCnt);
end;

procedure TFrm_WORA1.nmBechaBlockTimeClick(Sender: TObject);
var sBlockTime, sWkName, sMsg, sQuest : string;
	Param, XmlData, ErrMsg: string;
	ErrCode: Integer;
	iRow, iCol : integer;
begin
	Try
		iRow := cxgWkCounsel.DataController.FocusedRecordIndex;
		if iRow < 0 then exit;

		iCol := cxgWkCounsel.GetColumnByFieldName('�����').Index;
		sWkSabun := cxgWkCounsel.DataController.Values[iRow, iCol];

		iCol := cxgWkCounsel.GetColumnByFieldName('����').Index;
		sWkName := cxgWkCounsel.DataController.Values[iRow, iCol];


		if nmBechaBlockTime.Tag = 0 then
		begin
			sBlockTime := '60';
			sMsg := '�����ð����� ���� ���� ';
			sQuest := sWkName + '����� �������ѽð��� ���� �Ͻðڽ��ϱ�?' + #13#10 + #13#10 + '[�������ѽð� >> 60��]'
		end else
		if nmBechaBlockTime.Tag = 1 then
		begin
			sBlockTime := '0';
			sMsg := '�����ð����� ���� ���� ';
			sQuest := sWkName + '��翡�� ������ �������ѽð��� ���� �Ͻðڽ��ϱ�?';
		end;

		if Application.MessageBox(PChar(sQuest), '[�����ð�����]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
		begin
			lbWkSabun.Clear;
			lbWkSabun.Items.Add(sWkSabun);
			Param := sWkSabun + '��' + sBlockTime;

			if not RequestBase(GetCallable06('SET_BC_LOCK_TIME', 'MNG.SET_BC_LOCK_TIME', Param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessageBox(sMsg + Format('[%d] %s', [ErrCode, ErrMsg]), CDMSE);
				Exit;
			end;
			proc_WorkerList(1);
		end;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_WORA1.cxButton19Click(Sender: TObject);
var
  iCnt, i, iWkSabun, iColCheck: Integer;
  sWkSabun : string;
begin
	if Not pWORA1Dock.bUnDock then pWORA1Dock.GUBUN := GT_SEL_BRNO.Gubun;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.HDNO  := GT_SEL_BRNO.HDNO;
	if Not pWORA1Dock.bUnDock then pWORA1Dock.BrNo  := GT_SEL_BRNO.BrNo;
  if Not pWORA1Dock.bUnDock then pWORA1Dock.BrName:= GT_SEL_BRNO.BrName;

  iCnt := GetGridSelectedCount(cxgWkCounsel);
	if GT_USERIF.LV <= '10' then
	begin
		//���ֿ��ո� ������ ���� �ۼ��� �� ���� .�ż��� ����� ��û
		if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ShareNo = 'G05') or (GT_UserIF.HD = 'A100') or (GT_UserIF.HD = 'A283'))  or (GT_UserIF.HD = 'A100') then //20190715 ��ȸ������Կ�û KHS
		else  
		begin
			GMessagebox('������ �������� �� �� �����ϴ�.',CDMSE);
			exit;
		end;
	end;
	if TCK_USER_PER.JON_MainView <> '1' then
	begin
		GMessagebox('������ �����ϴ�.'+#10#13+'[����ڱ���]->[����]->[����ȭ�麸��] ���� Ȯ�ο��', CDMSE);
		Exit;
	end;
	if (GS_PRJ_AREA = 'O') and (TCK_USER_PER.WOR_Gongji <> '1') then   //������� ��� �������ۼ����ѿ����� ���� �׸� ���� 2014.01.03 KHS
	begin
		GMessagebox('������ ������ �����ϴ�.'+#10#13+'[����ڱ���]->[���]->[�������ۼ�] ���� Ȯ�ο��',CDMSE);
		exit;
	end;

	if Not Assigned(Frm_WOR22) Or (Frm_WOR22 = Nil) then Frm_WOR22 := TFrm_WOR22.Create(Nil);
	Frm_WOR22.pWOR22Dock.bUnDock := pWORA1Dock.bUnDock;
	Frm_WOR22.pWOR22Dock.HdNo    := pWORA1Dock.HdNo;
	Frm_WOR22.pWOR22Dock.BrNo    := pWORA1Dock.BrNo;
	Frm_WOR22.pWOR22Dock.BrName  := pWORA1Dock.BrName;
	Frm_WOR22.pWOR22Dock.Gubun   := pWORA1Dock.Gubun;
	Frm_WOR22.pWOR22Dock.Idx     := pWORA1Dock.Idx;

	Frm_WOR22.proc_init(0);
	iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
	iColCheck := cxgWkCounsel.GetColumnByFieldName('').Index;
	For i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
	begin
		if cxgWkCounsel.ViewData.Records[i].Values[iColCheck] then // ok
		begin
			sWkSabun := cxgWkCounsel.ViewData.Records[I].Values[iWkSabun];
			Frm_WOR22.WKList.Add(sWkSabun);
		end;
	end;
	Frm_WOR22.pnlTitle.CAPTION := Format('   ������(����: %s ����:%s-%s)', [pWORA1Dock.HDNO, pWORA1Dock.BrNo, pWORA1Dock.BrName]);
	Frm_WOR22.lb_WkCnt.Caption := inttostr(iCnt);
	Frm_WOR22.cxedMemo.Text := GT_USERIF.NM;
	if GT_USERIF.LV >= '60' then
	begin
		Frm_WOR22.chkAllSelect.Checked := False;
		Frm_WOR22.chkAllSelect.Enabled := True;
	end	else
	begin
		Frm_WOR22.chkAllSelect.Checked := False;
		Frm_WOR22.chkAllSelect.Enabled := False;
	end;

	Frm_WOR22.Show;
	Frm_WOR22.proc_Notice(1);
end;

// ĳ�� ���� �� �̵� ó�� ����.
procedure TFrm_WORA1.proc_WkMainCashProcess;
const
	ls_sabun = '<Worker Sabun="%s"/>';
var
	sSabun: string;
	sCash, sMessage: string;
	iCol, iWkSabun, iPuCash, i, iCnt, iSabun, iMin, iMax: Integer;
	slSendList: TStringList;
	iCheckCol, iSucc, iFail, iLimitCnt: integer;
begin
	iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
  iPuCash  := cxgWkCounsel.GetColumnByFieldName('����ĳ��').Index;
  sCash := StringReplace(ed_ChargeCash.Text, ',', '', [rfReplaceAll]);

	iLimitCnt := 1;   // [hjf] 100 -> 1(�ϰ����۽� ���ν������� ���� �߻��ϹǷ� 1�Ǿ� ó���ϵ��� ����)

  slSendList := TStringList.Create;
  try
    // ��� ���� ���� �˻�,,
    if cxrbNoRange.Checked then
    begin
			iCnt := 0;
      sSabun := '';
      lbWkSabun.Items.Clear;

      iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;

      for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
      begin
        if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
        begin
          lbWkSabun.Items.Add(cxgWkCounsel.ViewData.Records[I].Values[iWkSabun]);
          sSabun := sSabun +  Format(ls_sabun, [cxgWkCounsel.ViewData.Records[I].Values[iWkSabun]]);

          inc(iCnt);
					if iCnt >= iLimitCnt then
          begin
            // ����ĳ�� ���� + ��üĳ�� ���� �ϰ�� ����ĳ���� 0���̻��ΰ͸� ó��
            if pnlChargeGroup.Tag = 5 then
            begin
              if ( cxgWkCounsel.ViewData.Records[I].Values[iPuCash] > 0 ) And
                 ( cxgWkCounsel.ViewData.Records[I].Values[iPuCash] >= ed_PChargeCash.Value ) then
              begin
                slSendList.Add(sSabun);
                sSabun := '';
                iCnt := 0;
              end else
              begin
                sSabun := '';
                iCnt := 0;
              end;
            end else
            begin
              slSendList.Add(sSabun);
              sSabun := '';
              iCnt := 0;
            end;
          end;
        end;
      end;

      if (iCnt > 0) and (iCnt < iLimitCnt) then
      begin
        slSendList.Add(sSabun);
        sSabun := '';
      end;
    end else // ��� ���� ���� �˻�..
    begin
      if cxrbWkSabun.Checked then
        iCol := cxgWkCounsel.GetColumnByFieldName('�����').Index
      else
        iCol := cxgWkCounsel.GetColumnByFieldName('��ü���').Index;

      iMin := StrToIntDef(cxStNum.Text, 0);

      if iMin < 0 then iMin := 0;
      iMax := StrToIntDef(cxEdNum.Text, 0);
      sSabun := '';
      iCnt := 0;

			lbWkSabun.Items.Clear;
      for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
      begin
        sSabun := cxgWkCounsel.ViewData.Records[I].Values[iCol];
        if sSabun = '' then
          sSabun := '-2';
        if StrToIntDef(sSabun, -1) = -1 then
          sSabun := Copy(sSabun, 2, Length(sSabun) - 1);
        iSabun := StrToIntDef(sSabun, -1);
        if (iSabun >= iMin) and (iSabun <= iMax) then
        begin
          lbWkSabun.Items.Add(cxgWkCounsel.ViewData.Records[I].Values[iWkSabun]);
          sSabun := sSabun +  Format(ls_sabun, [cxgWkCounsel.ViewData.Records[I].Values[iWkSabun]]);
          inc(iCnt);
          if iCnt >= iLimitCnt then
          begin
            // ����ĳ�� ���� + ��üĳ�� ���� �ϰ�� ����ĳ���� 0���̻��ΰ͸� ó��
            if pnlChargeGroup.Tag = 5 then
            begin
              if cxgWkCounsel.ViewData.Records[I].Values[iPuCash] > 0 then
              begin
                slSendList.Add(sSabun);
                sSabun := '';
                iCnt := 0;
              end else
              begin
                sSabun := '';
                iCnt := 0;
              end;
            end else
            begin
              slSendList.Add(sSabun);
              sSabun := '';
              iCnt := 0;
            end;
          end;
        end;
      end;
      if (iCnt > 0) and (iCnt < iLimitCnt) then
      begin
        slSendList.Add(sSabun);
        sSabun := '';
      end;
    end;

    if slSendList.Count > 0 then
    begin
      iSucc := 0;
      iFail := 0;

      // ó���� ��� ���� ������ ó�� �Ѵ�.
      for i := 0 to slSendList.Count - 1 do
      begin
        // ĳ�� ���� �� �̵� ó���� ������(100��) ���� ���� ó���� �Ѵ�.
        // proc_WkCashProcess(slSendList[i], iTCnt); // [hjf] �� �Ѱ��� ������?
        proc_WkCashProcess(slSendList[i], 1); // [hjf] �Ѱ����� ���������Ƿ� ������ 1��

        // �ϰ������� DB���� ���ϸ� ���̱� ���� Sleepó��
				if ((formatdatetime('hhmm', Now) >= '2100') or (formatdatetime('hhmm', Now) <= '0100')) then Sleep(100)
                                                                                                else Sleep(10);

        // �ϸ��� �� �ý��� ������ ��� ����
        if pviSucc + pviFail = 0 then
          Break;

				iSucc := iSucc + pviSucc; // �����Ǽ�                                 1222
				
        iFail := iFail + pviFail; // ���аǼ�

        if (iFail > 0) and (pvsFWkSb <> '') then
        begin
          if ( iFail <= 50 ) then   // 50�Ǳ����� �޽��� ǥ�� 20150212
          begin
            if (iFail > 0) and (iFail mod 8 = 0) then
              sMessage := sMessage + pvsFWkSb + #13#10
            else if I = slSendList.Count - 1 then
              sMessage := sMessage + pvsFWkSb
            else
              sMessage := sMessage + pvsFWkSb + ', '; // ���б�� �޽���
          end;
        end;
      end;

      if iFail > 50 then sMessage := sMessage + ' .......... ';

      if iSucc + iFail > 0 then
      begin
        sMessage := Format('�����Ǽ� : %d' + #13#10 + '���аǼ� : %d' + #13#10#13#10 + '%s', [iSucc, iFail, sMessage]);
        GMessagebox(sMessage, CDMSE);
      end;

			proc_WorkerList(1);
//			proc_wkMngSearch(1); // ��� ó���� ����ȸ ó��.
    end else
    begin
      GMessagebox('���õ� ��簡 �����ϴ�. Ȯ�� �ϼ���!', CDMSE);
    end;
    pnlWkRev.Visible := False;

  finally
    slSendList.Free;
  end;
end;

function TFrm_WORA1.func_WkMCashProcess(AType, AGubun, sWkSabunList, sMemo, sCash: string):Boolean;
var
	XmlData, Param, ErrMsg : string;
	ErrCode : Integer;
begin
	Result := False;	
	try
		//����Ÿ�� (1�Ա�,2���), ����(1����, 2����ĳ��, 3��üĳ��) , �����, �ݾ�, ���޸� 
		Param := AType;             //����Ÿ��
		Param := Param + '��' + AGubun;     //����(1����, 2����ĳ��, 3��üĳ��)
		Param := Param + '��' + Trim(sWkSabunList);  //�����
		Param := Param + '��' + Trim(sCash);  //�ݾ�
		Param := Param + '��' + Trim(sMemo);  //���޸�

		btn_MCashSet.Enabled := False;
		if not RequestBase(GetCallable06('SET_MCASH_INOUT ', 'MCASH.SET_MCASH_INOUT ', param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('MCASH ����� ��� ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			btn_MCashSet.Enabled := True;
			Exit;
		end;
		btn_MCashSet.Enabled := True;
		Result := True;

	except
		on E: Exception do
		begin
			Assert(False, E.Message);
		end;
	End;
end;

procedure TFrm_WORA1.proc_WkMCashSet;
var
	sSabun: string;
	sCash, sMessage, sMemo, sType, sGubun: string;
	iWkSabun, i, iCnt : Integer;
	slSendList: TStringList;
	iCheckCol, iSucc, iFail, iLimitCnt: integer;
begin
	iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').Index;
	sCash := StringReplace(edt_MCash.Text, ',', '', [rfReplaceAll]);
	sMemo := Trim(edt_MCashMemo.Text);

	//����Ÿ�� (1�Ա�,2���), ����(1����, 2����ĳ��, 3��üĳ��) , �����, �ݾ�, ���޸� 
	
	if rdo_MCash_Type1.Checked then begin sType := '1'; sGubun := '1' end else     //1. �Ա�-����
	if rdo_MCash_Type2.Checked then begin sType := '2'; sGubun := '1' end else     //2. ���-����
	if rdo_MCash_Type3.Checked then begin sType := '1'; sGubun := '4' end else     //3. ĳ���̵�(�Ա�) [���ĳ�� -> Mĳ��]
	if rdo_MCash_Type4.Checked then begin sType := '2'; sGubun := '3' end else     //4. ĳ���̵�(���) [Mĳ�� -> ��üĳ��]
	if rdo_MCash_Type5.Checked then begin sType := '2'; sGubun := '2' end;         //5. ĳ���̵�(���) [Mĳ�� -> ����ĳ��]
	
	
	iLimitCnt := 1;   // [hjf] 100 -> 1(�ϰ����۽� ���ν������� ���� �߻��ϹǷ� 1�Ǿ� ó���ϵ��� ����)

	slSendList := TStringList.Create;
  try
		iCnt := 0;
		sSabun := '';
		lbWkSabun.Items.Clear;

		iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;

		for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
		begin
			if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
			begin
				lbWkSabun.Items.Add(cxgWkCounsel.ViewData.Records[I].Values[iWkSabun]);
				sSabun := cxgWkCounsel.ViewData.Records[I].Values[iWkSabun];
				slSendList.Add(sSabun);

			end;
		end;

		if slSendList.Count > 0 then
		begin
			iSucc := 0;
			iFail := 0;

      // ó���� ��� ���� ������ ó�� �Ѵ�.
      for i := 0 to slSendList.Count - 1 do
			begin
				// ĳ�� ���� �� �̵� ó���� ������(100��) ���� ���� ó���� �Ѵ�.
				// �ϸ��� �� �ý��� ������ ��� ����
//				if pviSucc + pviFail = 0 then
//					Break;

				if func_WkMCashProcess(sType, sGubun, slSendList[i], Trim(edt_MCashMemo.Text), sCash) then // [hjf] �Ѱ����� ���������Ƿ� ������ 1��
				begin
					inc(iSucc); // �����Ǽ�
				end else
				begin
					inc(iFail); // ���аǼ�
				
				end;

				// �ϰ������� DB���� ���ϸ� ���̱� ���� Sleepó��
				if ((formatdatetime('hhmm', Now) >= '2100') or (formatdatetime('hhmm', Now) <= '0100')) then Sleep(100)
																																																else Sleep(10);
				if (iFail > 0) and (pvsFWkSb <> '') then
				begin
          if ( iFail <= 50 ) then   // 50�Ǳ����� �޽��� ǥ�� 20150212
          begin
						if (iFail > 0) and (iFail mod 8 = 0) then
              sMessage := sMessage + pvsFWkSb + #13#10
						else if I = slSendList.Count - 1 then
              sMessage := sMessage + pvsFWkSb
            else
              sMessage := sMessage + pvsFWkSb + ', '; // ���б�� �޽���
          end;
        end;
			end;

      if iFail > 50 then sMessage := sMessage + ' .......... ';

      if iSucc + iFail > 0 then
      begin
				sMessage := '[M-ĳ�� ��/��ݵ��]' + #13#10 + Format('�����Ǽ� : %d' + #13#10 + '���аǼ� : %d' + #13#10#13#10 + '%s', [iSucc, iFail, sMessage]);
				GMessagebox(sMessage, CDMSE);
      end;

			proc_WorkerList(1);
//			proc_wkMngSearch(1); // ��� ó���� ����ȸ ó��.
    end else
    begin
      GMessagebox('���õ� ��簡 �����ϴ�. Ȯ�� �ϼ���!', CDMSE);
    end;
		pnl_MCash.Visible := False;

  finally
    slSendList.Free;
  end;
end;

// ĳ�� ���� �� �̵� ó���� ������(100��) ���� ���� ó���� �Ѵ�.
procedure TFrm_WORA1.proc_WkCashProcess(sWkSabunList: string; iWCnt: integer);
const
	ls_sabun = '<Worker Sabun="WkSabunString"/>';
var
	ls_TxLoad: string;
	sCash: string;
	slReceive: TStringList;
	ErrCode: integer;
begin
	sCash := StringReplace(ed_ChargeCash.Text, ',', '', [rfReplaceAll]);

	ls_TxLoad := GTx_UnitXmlLoad('C022N1.XML');
	ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WOR009', [rfReplaceAll]);

	ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', GT_USERIF.ID, [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'TypeString', IntToStr(pnlChargeGroup.Tag), [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'CashString', sCash, [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'MemoString', En_Coding(cxedMemo.Text), [rfReplaceAll]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(iWCnt), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', sWkSabunList, [rfReplaceAll]);

	slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      Application.ProcessMessages;
      proc_recieve(slReceive);
    end;
  finally
    FreeAndNil(slReceive);
  end;
end;

function TFrm_WORA1.func_possbleJob(iType: Integer): Boolean;
var
  ls_TxQry, rv_str: string;
  ls_TxLoad, sQueryTemp : string; // XML File Load
  sTime1, sTime2, sWkSabun: string;
  ls_RxXML: WideString;
  iCnt, i, iWkSabun: Integer;
  slWkSabun, slErrNum: TStringlist;

  xdom: msDomDocument;
  ls_MSG_Err: string;
  slReceive: TStringList;
  iCheckCol, ErrCode: integer;
begin
  Result := True;
  iCnt := 0;
  iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').index;
  slWkSabun := TStringList.Create;
  slWkSabun.Clear;
  slErrNum := TStringList.Create;
  slErrNum.Clear;
  sWkSabun := '';
  iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
  for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
  begin
//    if cxgWkCounsel.ViewData.Records[i].Selected then // ok
    if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
    begin
      inc(iCnt);
      if sWkSabun = '' then
        sWkSabun := ' ''' + cxgWkCounsel.ViewData.Records[I].Values[iWkSabun] + ''''
      else
        sWkSabun := sWkSabun + ', ''' + cxgWkCounsel.ViewData.Records[I].Values[iWkSabun] + ''' ';
      if (iCnt = 100) then
      begin
        slWkSabun.Add(sWkSabun);
        sWkSabun := '';
        iCnt := 0;
      end;
    end;
  end;
  if Trim(sWkSabun) <> '' then
    slWkSabun.Add(sWkSabun);

  if iType = 0 then
  begin
    sTime1 := LPAD(cxcbStartHour.Text, '0', 2) + LPAD(cxcbStartMin.Text, '0', 2);
    sTime2 := LPAD(cxcbEndHour.Text, '0', 2) + LPAD(cxcbEndMin.Text, '0', 2);
  end
  else
    if iType = 1 then
  begin
    sTime1 := '';
    sTime2 := '';
  end;

  ProgressBar1.Max := slWkSabun.Count - 1;
  ProgressBar1.Position := 0;
  for i := 0 to slWkSabun.Count - 1 do
  begin
    ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
    fGet_BlowFish_Query(GSQ_POSSBLEJOB_UPDATE, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sTime1, sTime2, slWkSabun.Strings[i]]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'SAVE0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, #9, '', [rfReplaceAll]);

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
            begin
              slErrNum.Add(slWkSabun.Strings[i]);
              Continue;
            end;
            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' <> ls_MSG_Err) then
              slErrNum.Add(slWkSabun.Strings[i]);
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      ProgressBar1.Position := i;
      FreeAndNil(slReceive);
    end;
  end;
  if slErrNum.Count > 0 then
  begin
    if GMessagebox('������ ��簡 �ֽ��ϴ�.' + #13#10 +
      '���Ϸ� �����Ͻðڽ��ϱ�?', CDMSQ) = idok then
    begin
      frm_Main.SaveDialog1.FileName := '���б����.txt';
      if frm_Main.SaveDialog1.Execute then
        slErrNum.SaveToFile(frm_Main.SaveDialog1.FileName);
    end;
  end;
  GMessagebox('�۾��� �Ϸ��Ͽ����ϴ�.' + #13#10 + '�ٽ���ȸ �մϴ�.', CDMSE);
  pnlWkJobTime.Visible := False;
  Screen.Cursor := crDefault;
end;

function TFrm_WORA1.func_AllLimitJob(iType: Integer): Boolean;
var
  i, iWkSabun: Integer;
  slWkSabun, sList, sListErr: TStringlist;
  AParams, sMsg, XmlData, ErrMsg : String;
  iCheckCol, ErrCode: integer;
begin
  Result := True;

  iWkSabun := cxgWkCounsel.GetColumnByFieldName('�����').index;
  slWkSabun := TStringList.Create;
  slWkSabun.Clear;
  sList := TStringList.Create;
  sList.Clear;
  sListErr := TStringList.Create;
  sListErr.Clear;
  try
    iCheckCol := cxgWkCounsel.GetColumnByFieldName('').Index;
    for i := 0 to cxgWkCounsel.DataController.RecordCount - 1 do
    begin
      if cxgWkCounsel.ViewData.Records[I].Values[iCheckCol] then
      begin
        slWkSabun.Add(cxgWkCounsel.ViewData.Records[I].Values[iWkSabun]);
      end;
    end;
    ProgressBar3.Max := slWkSabun.Count - 1;
    ProgressBar3.Position := 0;
    for i := 0 to slWkSabun.Count - 1 do
    begin
      try
        if iType = 0 then
          AParams := slWkSabun.Strings[i] + '��1'
        else
        if iType = 1 then
          AParams := slWkSabun.Strings[i] + '��2';

        if not RequestBase(GetCallable05('s_wk_set', 'wk_pbl.s_wk_set', AParams), XmlData, ErrCode, ErrMsg) then
        begin
          sListErr.Add(slWkSabun.Strings[i] + ', ErrMsg:' + ErrMsg);
        end else
          sList.Add(slWkSabun.Strings[i]);

      finally
        ProgressBar3.Position := i;
      end;
    end;

    if sListErr.Count > 0 then
    begin
      sMsg := '�Ϸ��Ͽ����ϴ�.' + #13#10 + '���� : ' + IntToStr(sList.Count)
        + #13#10 + '���� : ' + IntToStr(sListErr.Count) + #13#10 + '���и��'
        + #13#10 + sListErr.Text;
    end else
    begin
      sMsg := '��� �Ϸ��Ͽ����ϴ�.';
    end;
  finally
    FreeAndNil(sListErr);
    GMessagebox(sMsg, CDMSE);
    ProgressBar3.Position := 0;
    pnlWKAllLimit.Visible := False;
    Screen.Cursor := crDefault;
  end;
end;

end.

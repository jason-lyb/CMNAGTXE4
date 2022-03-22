unit xe_JON01Mini;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, MSXML2_TLB, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, IDGlobal,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, Magnetic, SmartSRXLib_TLB,
  cxCheckBox, Vcl.StdCtrls, cxButtons, cxClasses, cxGroupBox, cxTL, Web.HTTPApp, IniFiles,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls, cxLabel, cxMemo, ComObj,
  dxGDIPlusClasses, Vcl.ComCtrls, dxCore, cxDateUtils, cxSpinEdit, cxTimeEdit, MSHTML,
  cxCalendar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, xe_gnl,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, xe_structure,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxCurrencyEdit, System.DateUtils,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, System.StrUtils, System.Math,
  cxRichEdit, cxPropertiesStore, AdvGlowButton, cxListBox, System.AnsiStrings,
  cxImage, AdvPanel, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, IdHTTP, Vcl.ImgList,
  dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter, System.ImageList,
  AdvUtil, dxSkinOffice2010Blue, cxButtonEdit, cxImageList;

type
  TVia_Info = packed record
		ViaSA1        : string;  // 경유지 시도
		ViaSA2        : string;  // 경유지 시군구
		ViaSA3        : string;  // 경유지 읍면동
		ViaAreaDetail : string;  // 경유지 검색어
    DocId         : string;  // UID
    CellSel       : String;  // 셀선택구분
    SchWord       : String;  // 검색어
		XposVia       : string;  // 추가된 경유지 X좌표
		YposVia       : string;  // 추가된 경유지 Y좌표
		GUIDE_X       : string;  // 추가된 경유지 GUIDE_X좌표
		GUIDE_Y       : string;  // 추가된 경유지 GUIDE_Y좌표
  end;

  TMsgRecord = record
    Tag : Integer;
    Index : Integer;
  end;

  TSCOMP = record
    sSlip : string;
		iCount : Integer;
    iRow : Integer;
	end;

  TJONStaChkXY = record
    Area1 : string;
    Area2 : string;
    Area3 : string;
    Area4 : string;
    Area5 : string;
    X : string;
    Y : String;
    GUIDE_X : string;
    GUIDE_Y : String;
    Gubun : string;
	end;

type
  TFrm_JON01 = class(TForm)
    GBTop1: TcxGroupBox;
    cboBrOnly: TcxComboBox;
    cboBranch: TcxComboBox;
    cxButton1: TcxButton;
    cxTSearchMainTel: TcxTextEdit;
    cxtCuTel: TcxTextEdit;
    BtnCall: TcxButton;
    BtnCall2: TcxButton;
    cxtCuTel2: TcxTextEdit;
    cxLblBar1: TcxLabel;
    cxCallTitle: TcxLabel;
    GBTop5: TPanel;
    Shape1: TShape;
    shpModifyTitle: TShape;
    PnlTitle: TPanel;
    cxGbReserv: TcxGroupBox;
    cxLabel15: TcxLabel;
    dtpResvDate: TcxDateEdit;
    dtpResvTime: TcxTimeEdit;
    BtnResJ: TcxButton;
    BtnResD: TcxButton;
    BtnResv: TcxButton;
    cxButton45: TcxButton;
    cxlblState: TcxLabel;
    meoCuCCMemo: TcxMemo;
    meoCuWorMemo: TcxMemo;
    meoStartArea: TcxMemo;
    BtnViaAdd: TcxButton;
    btnStartLocalSave: TcxButton;
    meoEndArea: TcxMemo;
    lblEndAreaName: TcxLabel;
    cxtEndAreaDetail: TcxLabel;
    cxButton43: TcxButton;
    GbViaArea: TcxGroupBox;
    cxLblBar2: TcxLabel;
    meoViaArea1: TcxTextEdit;
    cxViaAreaName1: TcxLabel;
    BtnViaMinus1: TcxButton;
    cxGroupBox2: TcxGroupBox;
    btnCmdJoin: TcxButton;
    btnCmdWait: TcxButton;
    btnCmdQuestion: TcxButton;
    btnCmdExit: TcxButton;
    btnCmdMultiCall: TcxButton;
    btnCmdJoinCopy: TcxButton;
    btnCmdWaitCopy: TcxButton;
    btnCmdNoSMS: TcxButton;
    btnPickupInsert: TcxButton;
    cxGBSearch: TcxGroupBox;
    cxButton46: TcxButton;
    btnSBigo1: TcxButton;
    btnEpop: TcxButton;
    pmBigo: TPopupMenu;
    N1: TMenuItem;
    pmSpop: TPopupMenu;
    MenuItem1: TMenuItem;
    pmEpop: TPopupMenu;
    MenuItem2: TMenuItem;
    GBStartXYView: TcxGroupBox;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    btnSClose: TcxButton;
    GBEndXYView: TcxGroupBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxButton5: TcxButton;
    cxtStartYval: TcxTextEdit;
    cxtStartXval: TcxTextEdit;
    cxtEndYval: TcxTextEdit;
    cxtEndXval: TcxTextEdit;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    advPMnuWTR: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    tmMent: TTimer;
    pnlTelNESearch: TPanel;
    cxLabel23: TcxLabel;
    cxTxtTelNESelect: TcxTextEdit;
    btnBtnTelNEClose: TcxButton;
    btnBtnTelNESelect: TcxButton;
    cxLblConfSlipUseFlg: TcxLabel;
    cxtJoinNum: TcxTextEdit;
    cxtCallTelNum: TcxTextEdit;
    cxtWorkerNm: TcxTextEdit;
    cxLblCIDUseFlg: TcxLabel;
    btnCmdUpdSave: TcxButton;
    tmFormClose: TTimer;
    cxTxtBrNameCaption: TcxTextEdit;
    shrDNIS_DSP: TcxGroupBox;
    lblDNISInfo: TcxLabel;
    cxButton6: TcxButton;
    PnlModifyTitle: TPanel;
    cxLblOrderUpInfo: TcxLabel;
    shaPrcMsg: TcxGroupBox;
    lblCapItem: TLabel;
    lblRltCnt: TLabel;
    Label4: TLabel;
    pnlServerDisconn: TPanel;
    Label2: TLabel;
    cxButton4: TcxButton;
    GrpHelp: TcxGroupBox;
    cxButton7: TcxButton;
    GB4: TPanel;
    Pnl_BubinV: TPanel;
    cxCurPathRate: TcxCurrencyEdit;
    cxTmWaitTime: TcxTimeEdit;
    cxBtnWaitTmRate: TcxButton;
    cxCurWaitTmRate: TcxCurrencyEdit;
    cxCurRevisionRate: TcxCurrencyEdit;
    cxTBubinMemo: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxLblSmartRate: TcxLabel;
    BtnSmartRate: TcxButton;
    chkNoSet: TcxButton;
    chkRangeRate: TcxButton;
    cbbPayMethod: TcxComboBox;
    cbbPostTime: TcxComboBox;
    cbCardSanction: TcxButton;
    cxDriverCharge: TcxCurrencyEdit;
    curRate: TcxSpinEdit;
    edtPostPay: TcxSpinEdit;
    pnl_charge: TPanel;
    btn_ChargeSave: TcxButton;
    curKm: TcxTextEdit;
    LbDriverCharge: TcxLabel;
    Shape6: TShape;
    meoBigo: TcxMemo;
    meoBigo2: TcxMemo;
    BtnResvView: TcxButton;
    btnAddBigo: TcxButton;
    tmrDisAc: TTimer;
    tmrStartPos: TTimer;
    btnNew: TcxButton;
    pnlBubin: TcxGroupBox;
    cxtBubinSearchName: TcxTextEdit;
    cxBtnSelect: TcxButton;
    cxBtnChoice: TcxButton;
    cxBtnClose: TcxButton;
    cxGrdBubin: TcxGrid;
    cxBubinView: TcxGridDBTableView;
    cxGrdCol1: TcxGridDBColumn;
    cxGrdCol2: TcxGridDBColumn;
    cxGrdCol3: TcxGridDBColumn;
    cxGrdCol4: TcxGridDBColumn;
    cxGrdCol5: TcxGridDBColumn;
    cxGrdBubinLevel1: TcxGridLevel;
    lblCuBubinName: TLabel;
    pnlCustAppinfo: TcxGroupBox;
    mmoCuInfo: TcxMemo;
    btn2: TcxButton;
    pnlJonMain: TPanel;
    LblTop: TLabel;
    LblBottom: TLabel;
    LblLeft: TLabel;
    LblRigth: TLabel;
    mmoCbMemo: TcxMemo;
    mmoCuAppInfo: TcxRichEdit;
    cxGrdCuList: TcxGrid;
    cxCustView: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGrdCol6: TcxGridDBColumn;
    cxGrdCol7: TcxGridDBColumn;
    cxGrdCol8: TcxGridDBColumn;
    cxGrdCol9: TcxGridDBColumn;
    cxGrdCol10: TcxGridDBColumn;
    cxGrdCol11: TcxGridDBColumn;
    cxGrdCol12: TcxGridDBColumn;
    cxGrdCol13: TcxGridDBColumn;
    cxGrdCol14: TcxGridDBColumn;
    cxGrdCol15: TcxGridDBColumn;
    cxGrdCol16: TcxGridDBColumn;
    cxGrdCol17: TcxGridDBColumn;
    cxGrdCol18: TcxGridDBColumn;
    cxGrdCol19: TcxGridDBColumn;
    cxGrdCol20: TcxGridDBColumn;
    cxGrdCol21: TcxGridDBColumn;
    cxGrdCol22: TcxGridDBColumn;
    cxGrdCol23: TcxGridDBColumn;
    cxGrdCol24: TcxGridDBColumn;
    cxGrdCol25: TcxGridDBColumn;
    cxGrdCol26: TcxGridDBColumn;
    cxGrdCol27: TcxGridDBColumn;
    cxGrdCol28: TcxGridDBColumn;
    cxGrdCol29: TcxGridDBColumn;
    cxGrdCuListLevel1: TcxGridLevel;
    PnlMain: TPanel;
    LblPostPay: TcxLabel;
    Image2: TImage;
    grpOrderInfoView: TcxGroupBox;
    lblCurPathRate: TcxLabel;
    lblCurRevisionRate: TcxLabel;
    cxMeoOrderUpInfo: TcxRichEdit;
    BtnClose: TcxButton;
    GBTop3: TPanel;
    GB3: TPanel;
    cxReEndArea: TcxRichEdit;
    pnlOrderInfoView: TPanel;
    GrpCReason: TcxGroupBox;
    lblCReason: TcxLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    BtnResvCsl: TcxButton;
    lblStartAreaName: TcxRichEdit;
    cxtStartAreaDetail: TcxRichEdit;
    cb_00: TAdvGlowButton;
    cb_01: TAdvGlowButton;
    cb_03: TAdvGlowButton;
    cb_02: TAdvGlowButton;
    BtnOptionSexM: TAdvGlowButton;
    cb_04: TAdvGlowButton;
    BtnOptionSexF: TAdvGlowButton;
    BtnPlusYN: TAdvGlowButton;
    BtnCenterMng: TAdvGlowButton;
    Shape16: TShape;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    lst_BRList: TcxListBox;
    cxLCuCCMemoFlg: TcxLabel;
    cxLCuWorMemoFlg: TcxLabel;
    cxLSearchMainTelFlg: TcxLabel;
    cxLCuTel2Flg: TcxLabel;
    cxLCuTelFlg: TcxLabel;
    cxLStartAreaFlag: TcxLabel;
    cxLEndAreaFlag: TcxLabel;
    cxLBubinMemoFlag: TcxLabel;
    edtCuName: TcxTextEdit;
    BtnCustAdd: TcxButton;
    cboCuLevel: TcxComboBox;
    cxBtnCuDel: TcxButton;
    cxBtnCuNew: TcxButton;
    cxBtnCuUpdate: TcxButton;
    cxBtnSpSave: TcxButton;
    CbCuGb: TcxComboBox;
    cxtCuBubin: TcxTextEdit;
    btnMileOut: TcxButton;
    btnCustAppinfo: TcxButton;
    pnlMileage: TPanel;
    lblCuMile: TLabel;
    lblCuMileUnit: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    lblCuMileCnt: TLabel;
    PnlOCC: TPanel;
    Label6: TLabel;
    lblCuCntTotal: TLabel;
    Label8: TLabel;
    lblCuCancelR: TLabel;
    LblCenterMng: TLabel;
    Label10: TLabel;
    lblCoCntTotal: TLabel;
    cxLblCuLevel: TPanel;
    btnBubinSch: TcxButton;
    BtnCuSmsNo: TAdvGlowButton;
    cxLCuNmFlg: TcxLabel;
    cxLBuNmFlg: TcxLabel;
    GBTop2: TPanel;
    pnlBrNoMent: TPanel;
    lblBrNoMent: TLabel;
    pnlNewCustYN: TPanel;
    Label3: TLabel;
    lblNewCustYN: TLabel;
    Panel3: TPanel;
    Shape9: TShape;
    Shape2: TShape;
    Shape10: TShape;
    Shape12: TShape;
    PnlBottom: TPanel;
    Shape3: TShape;
    LbmeoBigo: TcxLabel;
    LbmeoBigo2: TcxLabel;
    cxImage1: TcxImage;
    BtnViewMemo: TcxButton;
    PnlSuggest: TPanel;
    AdvGridSj: TAdvStringGrid;
    TT4: TTimer;
    PnlPOISch: TPanel;
    cxImgLock: TcxImageList;
    BtnStLock: TcxButton;
    BtnEdLock: TcxButton;
    cxLblRate1: TcxLabel;
    cxLblRate2: TcxLabel;
    tmrKeyDown: TTimer;
    cxLblActive: TcxLabel;
    CbSecond: TcxComboBox;
    cxLabel3: TcxLabel;
    tmrXYChange: TTimer;
    Lbl_Distance: TcxLabel;
    tmrDistance: TTimer;
    BtnSR: TcxButton;
    PnlCustom: TPanel;
    PnlMemo: TPanel;
    PnlWorkMemo: TPanel;
    PnlBtm: TPanel;
    PnlBox4: TPanel;
    tmrResponse: TTimer;
    IdHTTPResp: TIdHTTP;
    Pop01Setup: TPopupMenu;
    N5: TMenuItem;
    APnlViewMemo: TAdvPanel;
    APnlViewMemoClose: TcxButton;
    cxLabel2: TcxLabel;
    tmrWKSearch: TTimer;
    cxButton3: TcxButton;
    cxtStartGUIDEXval: TcxTextEdit;
    cxtStartGUIDEYval: TcxTextEdit;
    cxtEndGUIDEXval: TcxTextEdit;
    cxtEndGUIDEYval: TcxTextEdit;
    tmrThRealDis: TTimer;
    tmrCharge: TTimer;
    tmrViaKm: TTimer;
    BtnOptionCallMu: TAdvGlowButton;
    ChkMini: TcxCheckBox;
    Shape7: TShape;
    PnlWkJi: TPanel;
    cxLblWkJAmt: TcxLabel;
    BtnWkAge: TAdvGlowButton;
    BtnWKJAmt: TAdvGlowButton;
    PnlCtrlV: TPanel;
    btnCtrlVCancel: TcxButton;
    BtnQRate: TAdvGlowButton;
    gbRQAList: TcxGroupBox;
    grdRQAList: TcxGrid;
    RQAListView: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    RQAListViewColumn9: TcxGridDBColumn;
    RQAListViewColumn10: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    RQAListViewColumn1: TcxGridDBColumn;
    RQAListViewColumn2: TcxGridDBColumn;
    RQAListViewColumn3: TcxGridDBColumn;
    RQAListViewColumn4: TcxGridDBColumn;
    RQAListViewColumn5: TcxGridDBColumn;
    RQAListViewColumn6: TcxGridDBColumn;
    RQAListViewColumn7: TcxGridDBColumn;
    RQAListViewColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    btnRQALExit: TcxButton;
    BtnRaLock: TAdvGlowButton;
    cbTelView: TcxComboBox;
    lblCuTel: TcxLabel;
    procedure btnCmdExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnViaAddClick(Sender: TObject);
    procedure BtnViaMinus1Click(Sender: TObject);
    procedure BtnResvViewClick(Sender: TObject);
    procedure meoStartAreaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton46Click(Sender: TObject);
    procedure btnAddBigoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure meoBigoEnter(Sender: TObject);
    procedure AutoSelectMouseEnter(Sender: TObject);
    procedure AutoSelectMouseMouseLeave(Sender: TObject);
    procedure cb_00Click(Sender: TObject);
    procedure btnSBigo1Click(Sender: TObject);
    procedure btnEpopClick(Sender: TObject);
    procedure btnSCloseClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cbbPayMethodPropertiesChange(Sender: TObject);
    procedure cxBtnWaitTmRateClick(Sender: TObject);
    procedure CbCuGbPropertiesChange(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure pnl_chargeClick(Sender: TObject);
    procedure tmMentTimer(Sender: TObject);
    procedure tmFormCloseTimer(Sender: TObject);
    procedure lblNewCustYNClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure btnBtnTelNECloseClick(Sender: TObject);
    procedure btnBtnTelNESelectClick(Sender: TObject);
    procedure tmrDisAcTimer(Sender: TObject);
    procedure tmrStartPosTimer(Sender: TObject);
    procedure btnCmdJoinClick(Sender: TObject);
    procedure btnCmdWaitClick(Sender: TObject);
    procedure btnCmdQuestionClick(Sender: TObject);
    procedure btnCmdJoinCopyClick(Sender: TObject);
    procedure btnCmdWaitCopyClick(Sender: TObject);
    procedure btnPickupInsertClick(Sender: TObject);
    procedure cxtBubinSearchNameKeyPress(Sender: TObject; var Key: Char);
    procedure cxBtnSelectClick(Sender: TObject);
    procedure cxtBubinSearchNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxtBubinSearchNamePropertiesChange(Sender: TObject);
    procedure cxBtnChoiceClick(Sender: TObject);
    procedure cxBtnCloseClick(Sender: TObject);
    procedure cxBubinViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBubinViewKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn2Click(Sender: TObject);
    procedure btnCustAppinfoClick(Sender: TObject);
    procedure cxBtnCuUpdateClick(Sender: TObject);
    procedure cxBtnCuNewClick(Sender: TObject);
    procedure cxBtnCuDelClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure meoStartAreaEnter(Sender: TObject);
    procedure meoStartAreaExit(Sender: TObject);
    procedure meoStartAreaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meoEndAreaEnter(Sender: TObject);
    procedure meoEndAreaExit(Sender: TObject);
    procedure meoEndAreaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meoEndAreaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meoViaArea1Enter(Sender: TObject);
    procedure meoViaArea1Exit(Sender: TObject);
    procedure meoViaArea1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meoViaArea1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboCuLevelPropertiesChange(Sender: TObject);
    procedure cboBranchPropertiesChange(Sender: TObject);
    procedure cxtCuTelKeyPress(Sender: TObject; var Key: Char);
    procedure btnMileOutClick(Sender: TObject);
    procedure btn_ChargeSaveClick(Sender: TObject);
    procedure cbCardSanctionClick(Sender: TObject);
    procedure meoStartAreaPropertiesChange(Sender: TObject);
    procedure btnStartLocalSaveClick(Sender: TObject);
    procedure BtnCustAddClick(Sender: TObject);
    procedure btnCmdMultiCallClick(Sender: TObject);
    procedure cxCustViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxCustViewEditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure cxButton43Click(Sender: TObject);
    procedure BtnStLockClick(Sender: TObject);
    procedure BtnEdLockClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure curRateEnter(Sender: TObject);
    procedure curRateExit(Sender: TObject);
    procedure curRateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure curRateKeyPress(Sender: TObject; var Key: Char);
    procedure curRateKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbbPostTimePropertiesChange(Sender: TObject);
    procedure edtPostPayExit(Sender: TObject);
    procedure edtPostPayKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPostPayKeyPress(Sender: TObject; var Key: Char);
    procedure edtPostPayPropertiesChange(Sender: TObject);
    procedure LblPostPayClick(Sender: TObject);
    procedure cboBrOnlyPropertiesChange(Sender: TObject);
    procedure LbDriverChargeClick(Sender: TObject);
    procedure meoBigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxLblOrderUpInfoMouseLeave(Sender: TObject);
    procedure cxLblOrderUpInfoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnBubinSchClick(Sender: TObject);
    procedure cxBtnSpSaveClick(Sender: TObject);
    procedure cxCurPathRateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTmWaitTimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCurWaitTmRateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCurRevisionRateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCurRevisionRateExit(Sender: TObject);
    procedure BtnResJClick(Sender: TObject);
    procedure BtnResvClick(Sender: TObject);
    procedure btnCmdUpdSaveClick(Sender: TObject);
    procedure lblCurRevisionRateClick(Sender: TObject);
    procedure lblCurPathRateClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure BtnResvCslClick(Sender: TObject);
    procedure cxButton45Click(Sender: TObject);
    procedure dtpResvDatePropertiesChange(Sender: TObject);
    procedure cxTxtBrNameCaptionMouseEnter(Sender: TObject);
    procedure cboBranchMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cboBranchMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure PnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnOptionSexMClick(Sender: TObject);
    procedure BtnOptionSexFClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure meoBigoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure meoBigo2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure meoCuCCMemoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mmoCbMemoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meoCuWorMemoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure cxLblOrderUpInfoClick(Sender: TObject);
    procedure lst_BRListDblClick(Sender: TObject);
    procedure lst_BRListExit(Sender: TObject);
    procedure lst_BRListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTSearchMainTelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTSearchMainTelKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxLCuNmFlgClick(Sender: TObject);
    procedure edtCuNamePropertiesChange(Sender: TObject);
    procedure edtCuNameEnter(Sender: TObject);
    procedure edtCuNameExit(Sender: TObject);
    procedure cxLBuNmFlgClick(Sender: TObject);
    procedure cxtCuBubinEnter(Sender: TObject);
    procedure cxtCuBubinExit(Sender: TObject);
    procedure cxtCuBubinPropertiesChange(Sender: TObject);
    procedure cxLCuCCMemoFlgClick(Sender: TObject);
    procedure meoCuCCMemoEnter(Sender: TObject);
    procedure meoCuCCMemoExit(Sender: TObject);
    procedure meoCuCCMemoPropertiesChange(Sender: TObject);
    procedure cxLCuWorMemoFlgClick(Sender: TObject);
    procedure meoCuWorMemoEnter(Sender: TObject);
    procedure meoCuWorMemoExit(Sender: TObject);
    procedure meoCuWorMemoPropertiesChange(Sender: TObject);
    procedure cxLSearchMainTelFlgClick(Sender: TObject);
    procedure cxTSearchMainTelEnter(Sender: TObject);
    procedure cxTSearchMainTelExit(Sender: TObject);
    procedure cxTSearchMainTelPropertiesChange(Sender: TObject);
    procedure cxLCuTel2FlgClick(Sender: TObject);
    procedure cxtCuTel2Enter(Sender: TObject);
    procedure cxtCuTel2Exit(Sender: TObject);
    procedure cxtCuTel2PropertiesChange(Sender: TObject);
    procedure cxLCuTelFlgClick(Sender: TObject);
    procedure cxtCuTelEnter(Sender: TObject);
    procedure cxtCuTelExit(Sender: TObject);
    procedure cxtCuTelPropertiesChange(Sender: TObject);
    procedure cxLStartAreaFlagClick(Sender: TObject);
    procedure cxLEndAreaFlagClick(Sender: TObject);
    procedure meoEndAreaPropertiesChange(Sender: TObject);
    procedure cxLBubinMemoFlagClick(Sender: TObject);
    procedure cxTBubinMemoEnter(Sender: TObject);
    procedure cxTBubinMemoExit(Sender: TObject);
    procedure cxTBubinMemoPropertiesChange(Sender: TObject);
    procedure cxTSearchMainTelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cboBrOnlyEnter(Sender: TObject);
    procedure GB3MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxGroupBox6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxGroupBox10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PnlRightMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDriverChargeEnter(Sender: TObject);
    procedure cxDriverChargeExit(Sender: TObject);
    procedure cxDriverChargePropertiesChange(Sender: TObject);
    procedure edtPostPayEnter(Sender: TObject);
    procedure LbmeoBigoClick(Sender: TObject);
    procedure LbmeoBigo2Click(Sender: TObject);
    procedure meoBigoExit(Sender: TObject);
    procedure meoBigo2Exit(Sender: TObject);
    procedure meoBigoPropertiesChange(Sender: TObject);
    procedure meoBigo2PropertiesChange(Sender: TObject);
    procedure cxImage1Click(Sender: TObject);
    procedure cboBranchClick(Sender: TObject);
    procedure cboBrOnlyClick(Sender: TObject);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxCurRevisionRateEnter(Sender: TObject);
    procedure cxCurRevisionRatePropertiesChange(Sender: TObject);
    procedure cxCurPathRatePropertiesChange(Sender: TObject);
    procedure cxCurPathRateEnter(Sender: TObject);
    procedure cxCurPathRateExit(Sender: TObject);
    procedure cxtCuTelFocusChanged(Sender: TObject);
    procedure cxtCuTel2FocusChanged(Sender: TObject);
    procedure cxTSearchMainTelFocusChanged(Sender: TObject);
    procedure edtCuNameFocusChanged(Sender: TObject);
    procedure cxtCuBubinFocusChanged(Sender: TObject);
    procedure meoCuCCMemoFocusChanged(Sender: TObject);
    procedure meoCuWorMemoFocusChanged(Sender: TObject);
    procedure meoStartAreaFocusChanged(Sender: TObject);
    procedure meoEndAreaFocusChanged(Sender: TObject);
    procedure cxDriverChargeFocusChanged(Sender: TObject);
    procedure edtPostPayFocusChanged(Sender: TObject);
    procedure cxCurPathRateFocusChanged(Sender: TObject);
    procedure cxCurRevisionRateFocusChanged(Sender: TObject);
    procedure cxTBubinMemoFocusChanged(Sender: TObject);
    procedure meoBigoFocusChanged(Sender: TObject);
    procedure meoBigo2FocusChanged(Sender: TObject);
    procedure BtnViewMemoClick(Sender: TObject);
    procedure curRatePropertiesChange(Sender: TObject);
    procedure cxGroupBox8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TT4Timer(Sender: TObject);
    procedure AdvGridSjEnter(Sender: TObject);
    procedure AdvGridSjClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure meoStartAreaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxtCuTelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnSmartRateClick(Sender: TObject);
    procedure AdvGridSjKeyPress(Sender: TObject; var Key: Char);
    procedure btnCmdNoSMSClick(Sender: TObject);
    procedure BtnCallClick(Sender: TObject);
    procedure BtnCall2Click(Sender: TObject);
    procedure tmrKeyDownTimer(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure BtnCuSmsNoClick(Sender: TObject);
    procedure CbSecondPropertiesChange(Sender: TObject);
    procedure AdvGridSjKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tmrXYChangeTimer(Sender: TObject);
    procedure cxtStartYvalPropertiesChange(Sender: TObject);
    procedure cxtEndYvalPropertiesChange(Sender: TObject);
    procedure AdvGridSjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure curKmEnter(Sender: TObject);
    procedure curKmExit(Sender: TObject);
    procedure tmrDistanceTimer(Sender: TObject);
    procedure BtnSREnter(Sender: TObject);
    procedure BtnSRExit(Sender: TObject);
    procedure BtnSRClick(Sender: TObject);
    procedure PnlMemoResize(Sender: TObject);
    procedure PnlBtmMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure tmrResponseTimer(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure tmrWKSearchTimer(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure tmrThRealDisTimer(Sender: TObject);
    procedure tmrChargeTimer(Sender: TObject);
    procedure tmrViaKmTimer(Sender: TObject);
    procedure BtnOptionCallMuClick(Sender: TObject);
    procedure ChkMiniClick(Sender: TObject);
  private
    { Private declarations }
    RVHandle : HWnd;

    sRespSParam1, sRespSParam2, sRespSParam3 : String;  // 와이즈넛 성공/실패 여부 전송 파라메타 - 출발지
    sRespEParam1, sRespEParam2, sRespEParam3 : String;  // 와이즈넛 성공/실패 여부 전송 파라메타 - 도착지

    AUseMileage : Boolean;

    sProdName : String;

    sPreSuggestWord : String;

 		SCboLevelSeq : TStringList;

    sAnsiSchTxt : AnsiString;

    loc_Ud_xdom: DomDocument; // 수정모드 전용 XML 전문 Pasing 변수.
    loc_Ud_lst_Node: IXMLDomNodeList;

    FHidePhoneNum: Boolean; // 수정전문 요청후 화면 초기화 완료여부

    lvs_ReceiveText: string; // 임시변수 : Socket에서 사용
    sNowRate: string; // 현재 지사의 기본요금 설정액.

    loc_bUpdateLock: boolean;   // 수정화면 Lock 설정 여부.[True:설정, False:미설정]

		FBigoList: TStringList;
		FSpopList: TStringList;
		FEpopList: TStringList;

    FCurrBigo: TcxMemo;
    FCurrSpop: TcxMemo;
    FCurrEpop: TcxMemo;

    giRealKmCnt, giRealKmIdx : Integer;

		searchBRlist: TStringList;  //접수장 지사명, 대표번호 검색 시 인덱스 저장 2013.06.15  KHS

    loc_Up_Recv_YN: boolean;

    loc_TmClose: string; // 화면 종료 타이머 변수. CDS. 080830.

		loc_sHoTransArea: string; // 콜라우팅 호전환 지역 정보 저장.

		pbPayMethod : Integer;   // 법인콜 체크박스 선택시 이전값 되돌리기 위한 변수.
		glsMapRltVal : TStringList;  // 출/도착지 조회 결과값을 매칭 점수 저장.

		loc_RateNOT: boolean; // 요금 계산을 막음.

    pbISStartEndXY : Boolean;   // 20130724 LYB 고객전화번호 조회 시 출발지/도착지에 자료가 있는지 없는지 여부 체크

    // ------------------------------  고객
    FCustBrTelYN: string;
    FCustLevel: TCustGroup;

    procedure mniUserClick(Sender: TObject);
    procedure mniSpopClick(Sender: TObject);
    procedure mniEpopClick(Sender: TObject);
    procedure LoadPayMethod;
    procedure LoadPostTime;
    function IsPayMethodPost: Boolean;
    function GetPayMethod: string;
    procedure SetPayMethod(const Value: string = PAY_METHOD_MONEY);
    function GetPostTime: string;
    procedure SetPostTime(const Value: string);
    procedure proc_Wisenut_GetSuggest(word: string);
    procedure proc_WiseNut_Response( sPoiName, sGubun, sNo : String );
    procedure proc_Wisenut_GetSuggest_Proc(wURL: String);
    procedure Init_AdvGridSj;
    procedure pCall_Cust(sCtHp: string);
    procedure SetMunuChecked(sName: String; bCheck: Boolean);
    procedure proc_RealKmPtr_Init;

    property PayMethod: string read GetPayMethod write SetPayMethod;
    property PostTime: string read GetPostTime write SetPostTime;
    procedure RemovePriceDesc;

    function fGetDiffDay( sEndDate : String ) : String;
    function GetTimeGap(StrStartDate, StrEndDate: string): Int64;

		function proc_PlusCall_CtrlYN : string;
		function proc_PlusCall_YN_Cont: string;
		function proc_PlusCall_RateYN: Boolean;

    //기사수수료 검색
    procedure Proc_Driver_Charge;

    //  사용자 추가 지역 저장
    procedure proc_Save_Area(iGubun: Integer);
    // 접수전 기본값 체크..
    function NotNullCheck(b24HourCheck: boolean = False): Boolean;
		// 대표번호 검색 리스트 생성 2013.06.15 KHS..
		function Func_KeyNumberList_Search: Boolean;
    // 대표번호로 조회 후 결과 처리를 한다.
    procedure Proc_NumberInsert(rxxml: String);

    // 조회 한 오더 정보를 수정 한다. : DB Update~~
    procedure Proc_OrderUpdateSave(AStatus: string = '');

    procedure Proc_recieve(ls_rxxml: String);
    // 접수 전에 조회 조건 관련 전역변수 초기화..
    procedure SetPrivateVariable;
    // 대기시간 메뉴 클릭시 대기시간, 대기요금 입력 이벤트 처리..
    procedure Proc_WTRateMenu_Click(Sender: TObject);
    // 대기시간별 요금 메뉴 생성.
    procedure Proc_WTRMenuCreate(sTitle, sComponentName: string; iTagMoney: Integer);
    // 지사리스트에서 지사코드, 본사코드로 첫번째 대표번호 index를 찾는다.  CDS. 080818.
    function Proc_HeNoBrNoListIdxFind(sHdNo, sBrNo: string): Boolean;
    // 선택 오더에 대해 Lock 을 설정한다.
    procedure Proc_AcceptLock(ss_Gubun: string);
    // 오더 일련번호를 받아 오더 수정정보를 조회 한다.  sTodayGubun:1(당일오더), 2:(과거오더)
    procedure Proc_ConfSlip_Select_New(sConfSlip, sTodayGubun: string);
    // 버튼 활성/비활성 처리.
    procedure Proc_BtnEnabled(bTF: boolean = True);
		// 지사별 멘트 구하기..  CDS. 080827.
    function Func_brtel_memo(sBrNo, sKeyNum: string): string;
    // 고객 이용내역을 띄워준다.
    procedure Proc_Jon012Show;
    // 받아온 경유지 정보를 배열에 저장한다.
    procedure proc_ViaInfo_insert(rxxml: String);
    // 접수등록 후 결과를 처리 한다.
    procedure Proc_SaveReturn(ss_RxXml: String);
    // 고객 기본정보를 저장 한다.
    procedure Proc_CustBasicSave;
    // 고객 SMS거부 정보를 저장한다.
    procedure Proc_CustSMSSave;
    // 고객기본정보를 저장 요청 후 결과 처리를 한다.
    procedure Proc_CustBasicSave_Result(rxxml: String);
    // 고객 SEQUENCE 조회 해 온다.
    procedure Proc_CuSeq_Select;
    // 고객 SEQUENCE 조회에 대한 결과를 처리 한다.
    procedure Proc_RequestResult(ls_rxxml: String; ls_ClientKey: string);
    // 선택된 지사정보에서 지사명을 추출 한다.
    function Proc_BrNameReadSearch: string;
    // 전화번호로 위경도 좌표값 조회 후 그 결과 처리를 한다.
    procedure Proc_TellNumSearchNEDataResult(rxxml: String);
		// [수정화면 띄우기..]오더일련번호:접수번호로 조회 후 그 결과 처리를 한다.
		procedure Proc_ConfSlipSelectResult(rxxml: String);
		// 지사명으로 지사리스트 뿌리기..  2013.06.15 KHS
		function proc_BrNameList_Search: boolean;

    // 고객 출발지(START), 도착지(DEST) 정보를 저장한다.
    procedure Proc_Cust_AreaSave(sStartDest: string);
    // 전화번호 위치찾기 기본 위치를 정한다.
    procedure Proc_TellAreaFormCreate;
    // 전화번호 로 위경도 좌표값 검색 전 ValueCheck..
    function Func_TellNumSearchCheck: boolean;
    // 전화번호 로 위경도 좌표값 검색 한다..
    procedure Proc_TellNumSearchNEData;
    // 조회 고객삭제를 한다.
    procedure proc_delete_customer;

    function IsMultiCallFixPrice: Boolean;

    // 오더를 접수등록을 한다.
    procedure Proc_OrderJoinIns;
    // 오더를 대기로 접수 한다.
    procedure Proc_OrderWaitJoinIns;
    // 오더를 문의로 접수 한다.
    procedure Proc_OrderQuesJoinIns;
    // 오더 수신거부 등록을 한다.
    procedure Proc_OrderSMSRecvNo;
    // 주문 접수를 처리 한다.
    procedure Proc_Save(ss_Mode: string);

    procedure SetCustBrTelYN(const Value: string); {Domain: '': Unkown, 'y': yes, 'n': no}

    // 법인정보를 조회한다.
    procedure Proc_BubinListSearch;
    // 고객정보 컨트롤을 초기화 한다.
    procedure ControlClear(bTF: boolean = False);
    // 법인 선택 정보를 보여준다.
    procedure Proc_BubinChoice;

    // 수정일 경우,,  경유지 정보를 조회 한다.
    procedure proc_ViaInfo;

    procedure SetCboBranch(bBrNoSetType: boolean = False);

    procedure LoadCustLevel;
    procedure SetCustLevelData(AGroup: TCustGroup);
    procedure DefaultCustLevel;
    function GetCustLevelSeq: string;
    procedure SetCustLevelSeq(ASeq: string);

		procedure SetCustAppInfo(AAppCode, AAppLastRegDate, AAppLastDelDate, AAppLastFinishDate, AAppCuArea, AAppTermModel, AAppTermOS, AAppDelYn: string);
 		procedure ViaOK;
    // 고객 당일 오더 구분 : 폼의 라벨 컨트롤 칼라를 설정 한다.
    procedure SetCustControlColor(bType: boolean = False);
    procedure SetAreaAutoSET;
  public
    { Public declarations }

    Jon03Tag : Integer;

    fCruKm : Real;   // 거리
    fChgKm : Real;   // 배수거리
    fDirKm : Real;   // 직선거리
    fViaKm : Real;   // 경유거리

    pJON01Dock : TUNDOCKMNG;

    gsRanDom, gslsText : AnsiString;
    gilsCnt : Integer;
    gbEnter : Boolean;

		gsCuTelHint : string;    // 검색전 전화번호 저장(검색후 다른지 비교)

 		FResize : Boolean;
		locNowControlName: string; // 현재 활성화된 컨트롤 명.

		ViaNowTag : integer;   //현재 입력중인 경유지위치
		ViaADDTag : integer;   //현재 추가한 경유지위치

    blChkCuSMS, blCompulWor : Boolean;   // 기사 강제 배차
    sWkSabun : String;

    // 고객의 이용내역을 담아둔다.  최대Record수는 60행. 나머지 1행은 상태값으로 사용함.
		locaryOrderList: array[0..201, 0..40] of string;

		cxViaAreaName : array[2..5] of TcxLabel;
		meoViaArea    : array[2..5] of TcxTextEdit;
		BtnViaMinus   : array[2..5] of TcxButton;
    Via_Info, Via_Temp : array[1..5] of TVia_Info;

		FIsCalcPrice: Boolean;  // JON03에서 고객 전화번호로  조회시 사용함.
    sTaksong, sStickCall : string; //탁송콜, 스틱콜 여부 기본 :n, n 2012.04.24 KHS

    lcsCu_seq: string; // 현재 선택된 고객seq
    locHDNO, locBRNO, locKNum, locSndTime: string;  // 조회 고객 본사, 지사코드, 대표번호 임시저장.

    locCustHP_MainNum_Search: string;

    sBHAddr : String;
		bAUTOCMDQUESTION : Boolean; // 접수설정에서 종료 시 자동 문의 처리 할경우 종료 무한 루프 방지 위함  20120801  LYB

    gJONStaChkXY, gJONEndChkXY : TJONStaChkXY;  // 출발지 좌표 오류 검증을 위한 내부 레코드 변수 20120806 LYB

    locsCuTel, locsCuTel2, locsCuTelTxtBoxVal: string;
    locbWkToCust: Boolean;

    J30ShowS, J30ShowE : Boolean;      //접수, 수정, 문의 에 따른 조회창 띄울지 여부값

    lcsSta1, lcsSta2, lcsSta3, lcsSta4, lcsStaDocId, lcsStaCellSel, lcsStaSchWord, lcsStaDebug, lcsStaUrl : string; // 출1, 출2, 출3
		lcsEnd1, lcsEnd2, lcsEnd3, lcsEnd4, lcsEndDocId, lcsEndCellSel, lcsEndSchWord, lcsEndDebug, lcsEndUrl : string; // 도1, 도2, 도3
    lg_Save: string;

    StartListN, EndListN : String;    // 출 도착지 리스트 선택 시 어떤 리스트 선택했는지 번호값(1: 지역리스트, 2: 상세지명, 3: 포탈검색)

		locCardPaySeq, locCardTranNo, locCardPayInfo : string; // 결제일련번호, 거래번호, 카드결제정보저장(파이프 구분자로 저장됨)
    locLogSeq, locDNIS: string;
    locWkSabun, locWkBrNo: string; // 조회기사 사번, 기사지사코드 저장.

    OrgRate : Integer;  //요금저장변수 2012.04.23 KHS

		sCust_Gubun : string; //고객인지 기사인지 구분 1:기사, 2:고객, 0 : 기사+고객 2013.05.22 KHS
    FHasTodayData: Boolean; // 당일 내역 존재 여부
    wk_sabun : String;  // 기사 사번

		Pay_Gubun : string;    // 결제구분(현금, 카드등)

    sRet, eRet : Integer;          //고객정보에 출발지 도착지 정보확인변수 2012.04.18 KHS

		Only_Exit : Boolean; //창 종료 구분

		FType : integer; //다중 요금제 선택 시 선정된 요금제 순서 20140625 KHS

		//앱고객 정보 2013.03.30 KHS
		sAppCode, sAppLastRegDate, sAppLastDelDate, sAppLastFinishDate, sAppCuArea, sAppTermModel, sAppTermOS, sAppDelYn, sFirstInSource : string;

		procedure AppendPostDesc;
    procedure RemovePostDesc;

    property CustBrTelYN: string read FCustBrTelYN write SetCustBrTelYN;

    procedure SearchCuTel(AIsUpdate: Boolean = False);

		property HidePhoneNum: Boolean read FHidePhoneNum write FHidePhoneNum;

    function IsNotModifyPrice: Boolean;

    function fnc_RealKmThread_End : Boolean;

    procedure LoadBigoList;
    procedure LoadSpopList;
    procedure LoadEpopList;

    function IsBubuinUse: Boolean;

    procedure AddBigo(ABigo: string; Atag : Integer);
		// 접수화면의 기본 컨트롤을 초기화 한다.
    procedure FControlInitial(bTF: Boolean = False; bBrNoSetType: boolean = False);
    procedure AddSpop(ASpop: string; Atag: Integer);
    procedure AddEpop(AEpop: string; Atag: Integer);

    // 지사리스트에서 대표번호, 지사코드로 index를 찾는다.
    function Proc_BrNoListIdxFind(sBrNo, sKeyNumber: string): Boolean;

    // 고객전화번호 마킹처리..
    function Func_Cust_Tel(sCall, sBrch, sBrch2: string; ATodayOrder: Boolean): string; overload;
    function Func_Cust_Tel(sCall, sBrch, sBrch2, sDatetime: string): string; overload;

    // 고객 전화번호로 고객 기본정보 조회
    procedure Proc_KeyNumberSearch(ss_KeyNumber: string; bCid: Boolean = False);
    // 전화번호, 고객명 으로 조회 한다... sGB : NAME(고객명으로 조회), : TELL(전화번호로 조회)
    procedure CustomerSearch(sGB: string);
    // 고객조회 그리드에서 그리드 선택시에 고객관련 정보를 입력 컨트롤에 Display~
    procedure Proc_GridCustChoice(iRcIdx: Integer);
    // 고객 등급별 폼 칼라를 변경해 준다.
    procedure Proc_SetFormColor;
		// CU_LEVEL_TYPE : 1 : 고객 등급별 폼 칼라를 변경해 준다.
		procedure Proc_SetFormColor_1(iType: integer);
    // CU_LEVEL_TYPE : 0 : 고객 자동등급별 라벨 칼라를 변경해 준다.
    procedure Proc_SetFormColor_2(iType: integer);
    // 고객 구분에 따른 라벨 칼라를 변경해 준다.
    procedure Proc_SetFormColor_3(iType: integer);
    // 선택된 지사정보에서 지사코드호를 추출 한다.
    function Proc_BRNOSearch: string;
    // 선택된 지사정보에서 본사코드를 추출 한다.
    function Proc_HDNOSearch: string;
    // 선택된 지사정보에서 대표번호를 추출 한다.
    function Proc_MainKeyNumberSearch: string;
    // 접수시에 또는 수정시에 버튼위치 설정.
    procedure SetCmdOrderUpdate;
    // 오더 일련번호를 받아 오더 수정창을 열어 준다.
    procedure Proc_OrderUpdate_Select(sConfSlip, sTodayGb, sInsGubun: string);
    // 오더 일련번호를 받아 오더 수정창을 열어 준다.  sTodayGb:1(당일오더), 2:(과거오더); sInsGubun:"수정", "추가접수"
    procedure Proc_OrderUpdate_Select_New(sConfSlip, sTodayGb, sInsGubun: string);

    // 전문 요청후 결과에 따라 화면 Enabled: True/False 처리를 해준다.
    procedure Proc_JobAfterProc(bFormLock: boolean; bOrderInsGB: boolean = False);
    // 고객전화번호 조회 후 결과 처리를 한다.
    procedure Proc_KeyNumberInsert(rxxml: String);
    // 고객 이용내역을 그리드에 보여준다.
    procedure Proc_CustOrderListView;
    // 고객 기사내역을 표시한다.
    procedure Proc_WorkListView(rxxml: String);
    // 경유지 포함 거리 계산
		procedure proc_dis_alculation(iLow: Integer; bDisp : Boolean);
    // 경유지 포함 실거리 계산
    procedure proc_Realdis_Mng;
    // 경유지 포함 실거리 계산과 직선 거리 상이시 직선 거리 표시
    Function func_Compare_dis_Sel(DKm, SKm : Double; Var Distance : Double) : Boolean;

		procedure proc_dis_alculation_Via(bSearchFlag: boolean = False);
		function proc_dis_Real_Via( AFromLon, AFromLat, AToLon, AToLat : Integer ) : Real;
    // 요금설정에 의한 요금 계산
    function func_search_charge: Integer;
    // 요금설정에 의한 요금 계산 --> [수도권 플러스콜 시행에 따른 고가요금 참고한다.] : 고가요금표 조회.
    function func_search_charge_high: Integer;

    // CID 정보 들어왔을경우 고객정보를 자동 조회 시킨다...
    procedure Proc_CIDEventAutoSearch(sCID, sKeyNumber, sDNIS, sSndTime, sBrNo : string);

    // 접수창을 닫는다.
    procedure Proc_JoinFromClose;
		// ipwIPPort1 전문을 전송한다. 알림화면을 실행해준다.[bOrderInsGB: True:Ascending False:Descending]
    procedure LocNewSocketSend(lsSendText: string; bOrderInsGB: boolean = False);

    // 출발지, 도착지 컨트롤에서 KeyDown 이벤트시에 호출됨.
    procedure Proc_AreaSearchKDown_Added(Key: Word);

		procedure SetStartAreaMap(const ASido, AGugun, ADong, ADetail, AX, AY: string);
		procedure SetStartAreaMapNew(const ASido, AGugun, ADong, ADetail, AX, AY: string);
		procedure SetEndAreaMap(const ASido, AGugun, ADong, ADetail, AX, AY: string);
		procedure SetEndAreaMapNew(const ASido, AGugun, ADong, ADetail, AX, AY: string);
    procedure lcs_Clear(Panel: string);
    procedure Hide_Panel(Panel: string; Showhide : integer);
    procedure AllClear;
		procedure SetMileColorChange;
    function fJON01_SmartCharge(AOderWorker, AWeather, ASta1, ASta2, ASta3, ASPOI, ASX, ASY, AEnd1, AEnd2, AEnd3, AEPOI, AEX, AEY, AType : string; Var OType : String) : Integer;

		procedure WMEnterSizeMove(var Msg: TMessage); message WM_ENTERSIZEMOVE;
		procedure WMSizing(var Msg: TMessage); message WM_SIZING;
		procedure WMMoving(var Msg: TMessage); message WM_MOVING;
		procedure WMExitSizeMove(var Msg: TMessage); message WM_EXITSIZEMOVE;
		procedure WMSysCommand(var Msg: TMessage); message WM_SYSCOMMAND;
		procedure WMCommand(var Msg: TMessage); message WM_COMMAND;
  end;

const READYSTATE_UNINITIALIZED = 0; // Default initialisation state.
const READYSTATE_LOADING = 1; // Object is currently loading data.
const READYSTATE_LOADED = 2; // Object has been initialised.
const READYSTATE_INTERACTIVE = 3; // User can interact with the object but loading has not yet finished.
const READYSTATE_COMPLETE = 4;  // All of the object's data has been loaded.

var
  Frm_JON01: TFrm_JON01;

  MagneticWndProc : TSubClass_Proc;
	dummyHandled : boolean;
	lGlue, bFirst : Boolean;

  // 맵위치 조회용 변수..-----------------------
  map_sl_equal, map_sl_street, map_sl_detail, map_sl_Local, map_sl_local_List, map_sl_city: TStringList;
  map_sl_city2, map_sl_city3, map_sl_city4: TStringList;
  map_sl_Rlt1, map_sl_Rlt2, map_sl_Rlt3, map_sl_Rlt4, map_sl_Rlt5, map_sl_Rlt6: TStringList;
  map_ls_Text, map_ls_Text_Front, map_ls_Area3, map_ls_Area31, map_ls_Area4, map_ls_Area41, map_ls_detail, gs_map_old_value, gs_map_old_value_2, gs_map_old_value_3: AnsiString;
  map_sTmp, map_sTmp1, map_sTmp2, map_sTmp3, map_sTmp4, map_sTmp5, map_sTmp6, map_sOldCity: AnsiString;
  iRoSearchType: Integer; // 로봇 검색 타입 지정.
  locRobortCnt: Integer; // 실행 로봇 종료 갯수.
  locRobortBaseCnt: Integer; // 로봇 실행 갯수.
  loc_bFulDetailNm: boolean; // 풀매칭 조회 여부[True, False]
  gsAreaKeywLen, gsAreaKeywLen2 : string;   // 지역정보 조회 키워드 문자열을 저장. 11.05.18
  giAreaKeyFullMatch_CNT, giKeyWordSerchValue : Integer;  // 세부정보 풀매칭 후 부근,인근 입력시 유지 위해서.
  gbAreaKeyFullMatch_DET, gbAreaKeyFullMatch_STT, gbAreaKeyFullMatch_ANY : Boolean;  // 세부정보 찾음 상태 저장.

  function str2integer(str:AnsiString):integer;
  function str2string(str:string):string;
  function rpos1(substr1: string; str1: string): Integer;  // pos 우측우선조회

implementation

{$R *.dfm}

uses xe_Msg, xe_Func, xe_Lib, xe_xml, xe_XmlProtocal, xe_packet, xe_Dm,
  xe_Query, xe_charge, xe_JON012, Main, uLkJSON, FastStrings, FastStringFuncs,
  xe_JON30, xe_gnl2, xe_gnl3, xe_COM40, xe_JON018, xe_JON34, xe_CUT012,
  xe_JON015, xe_JON31, xe_JON016, xe_CUT011, xe_COM30, xe_WOR11, xe_JON019,
  xe_JON52, xe_JON011, xe_JON01Size;

ThreadVar         // We must allow each thread its own instances
                  // of the passed record variable
  msgPtr : ^TMsgRecord;

Var
  msg1 : TMsgRecord;

// 경유지 포함 실거리 계산
function proc_Realdis_alculation(Parameter : Pointer) : Integer;
Var StartLon, StartLat, EndLon, EndLat, ViaLon, ViaLat, i, iErr, iIndex, iTag : Integer;
    aDistance, aTmp : Double;
    sy, sx, sTmp : string;
    bVia : Boolean;
begin
  msgPtr := Parameter;
  iTag   := msgPtr.Tag;
  iIndex := msgPtr.Index;

  bVia := False;
  try
    try
      if ( RealKmPtr[iTag, iIndex].StartXVal <> '' ) And ( RealKmPtr[iTag, iIndex].StartYVal <>  '') then
      begin
        Frm_JON52.WGS84ToBessel(RealKmPtr[iTag, iIndex].StartYVal, RealKmPtr[iTag, iIndex].StartXVal, StartLon, StartLat);
        RouteMan.SetOrgLonLat(StartLon, StartLat);
      end;

      if GT_USERIF.ID = 'sntest' then Log('1. SmartSR Start Bessel : ' + IntToStr(iIndex) + '-' + IntToStr(StartLon) + ',' + IntToStr(StartLat) , LOGDATAPATHFILE);

      RouteMan.ClearNode();
      for i := 1 to 5 do
      begin
        if ( RealKmPtr[iTag, iIndex].ViaXVal[i] <> '' ) And ( RealKmPtr[iTag, iIndex].ViaYVal[i] <> '' ) then
        begin
          bVia := True;
          if GT_USERIF.ID = 'sntest' then Log('1. SmartSR Via  : ' + IntToStr(iIndex) + '-' + RealKmPtr[iTag, iIndex].ViaYVal[i] + ',' + RealKmPtr[iTag, iIndex].ViaXVal[i] , LOGDATAPATHFILE);
          Frm_JON52.WGS84ToBessel(RealKmPtr[iTag, iIndex].ViaYVal[i], RealKmPtr[iTag, iIndex].ViaXVal[i], ViaLon, ViaLat);
          RouteMan.AddNode(ViaLon, ViaLat);  //// 경유지는 필요하면 추가하세요.
        end;
      end;

      if ( RealKmPtr[iTag, iIndex].EndXVal <> '' ) And ( RealKmPtr[iTag, iIndex].EndYVal <> '' ) then
      begin
        Frm_JON52.WGS84ToBessel(RealKmPtr[iTag, iIndex].EndYVal, RealKmPtr[iTag, iIndex].EndXVal, EndLon, EndLat);
        RouteMan.SetDstLonLat(EndLon, EndLat);
      end;

      ////// 양방향 탐색을 위해서는 아래의 옵션을 추가해 주세요. //////
      RouteMan.SetOrgDirectionToBoth();
      RouteMan.SetViaDirectionToBoth();
      RouteMan.SetDstDirectionToBoth();

      ////// Toll비
      RouteMan.SetTollFareType(1);

      ////// 탐색 옵션 1.최적      2.최단
      ///              1.일반도로  2.고속도로
      ///              1.무료      2.유로
      if Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].fDirKm < 70 then
        RouteMan.Remote_SetRPCType(2, 1, 1)  // 최단, 일반도로, 무로
      else
        RouteMan.Remote_SetRPCType(2, 2, 2);  // 최단, 고속도로, 유로

      Log('1. SmartSR Start : ' + IntToStr(iIndex) + '-' + RealKmPtr[iTag, iIndex].StartAreaName + ',' + RealKmPtr[iTag, iIndex].StartXVal + ',' + RealKmPtr[iTag, iIndex].StartYVal, LOGDATAPATHFILE);

      RealKmPtr[iTag, iIndex].info := RouteMan.SearchRoute3;
      if (RealKmPtr[iTag, iIndex].info <> nil) then
      begin
        try
          iErr := RealKmPtr[iTag, iIndex].info.GetResult;

          if iErr <= 0 then
          begin
            dm.SetServerEXT;
//            if Copy(GS_SmartServerIP, 1, 3) = '203' then
//              GS_SmartServerIP := '61.77.191.104'
//            else
//              GS_SmartServerIP := '203.251.202.18';

            if ( Pos('검색', Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].curKm.Text) > 0 ) And
               ( iIndex > 3 ) And
               ( Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].tmrThRealDis.Tag = 0 ) then
              Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].curKm.Text := '';

            RealKmPtr[iTag, iIndex].CaActive := True;
            RealKmPtr[iTag, iIndex].UseYn := False;
            Sleep(4000);
            EndThread(0);
            Exit;
          end;
        Except
          if ( Pos('검색', Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].curKm.Text) > 0 ) And
             ( Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].tmrThRealDis.Tag = 0 ) then
            Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].curKm.Text := '';

            RealKmPtr[iTag, iIndex].CaActive := True;
            RealKmPtr[iTag, iIndex].UseYn := False;
            Sleep(4000);
            EndThread(0);
        end;

        if RealKmPtr[iTag, iIndex].UseYn then
        begin
          aTmp := RealKmPtr[iTag, iIndex].info.GetTotalDistance;
          aTmp := Roundto(aTmp / 1000,-1);

          Log('2. Lbl_Distance : ' + FloatToStr(aTmp), LOGDATAPATHFILE);

          // 직선거리와 경로탐색거리 비교하여 1.5배 이상 나오면 3번까지 재 검색하도 그렇게 나오면 그냥 그 좌표 사용
          if ( Not Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].func_Compare_dis_Sel(Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].fDirKm, aTmp, aDistance) ) And
             (iIndex < 3 ) then
          begin
            RealKmPtr[iTag, iIndex].UseYn := False;
            RealKmPtr[iTag, iIndex].CaActive := True;
            Sleep(4000);
            EndThread(0);
            Exit;
          end;

          if Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].tmrThRealDis.Tag = 0 then
          begin
            Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].curKm.Text := FloatToStr(aDistance) + 'Km';
            Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].fCruKm := aDistance;

            if bVia then
            begin
              Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].tmrViaKm.Enabled := True;
            end else
            begin
              Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].tmrCharge.Enabled := True;
            end;

            Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].Lbl_Distance.Caption := Format('경탐)%s 직선)%s', [Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].curKm.Text, FloatToStr(Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].fChgKm) + 'Km']);
            Log('2. Lbl_Distance.Caption: ' + Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].Lbl_Distance.Caption, LOGDATAPATHFILE);
          end;
        end else
        begin
          Log('무시 Lbl_Distance.Caption: ' + Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].Lbl_Distance.Caption, LOGDATAPATHFILE);
        end;

        if Trim(Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].pnl_Charge.Caption) <> '' then
          Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].pnl_Charge.Visible := True;
      end;
    finally
      if GT_USERIF.ID = 'sntest' then Log('2. SmartSR End Bessel : ' + IntToStr(EndLon) + ',' + IntToStr(EndLat) , LOGDATAPATHFILE);
      Log('2. SmartSR End : ' + IntToStr(iIndex) + '-' + RealKmPtr[iTag, iIndex].EndAreaName + ',' + RealKmPtr[iTag, iIndex].EndXVal + ',' + RealKmPtr[iTag, iIndex].EndYVal + ' - 거리 : ' + FloatToStr(aDistance), LOGDATAPATHFILE);
      RealKmPtr[iTag, iIndex].CaActive := False;
      EndThread(0);
    end;
  Except
    if ( Pos('검색', Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].curKm.Text) > 0 ) And
       ( Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].tmrThRealDis.Tag = 0 ) then
        Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].curKm.Text := '';

    RealKmPtr[iTag, iIndex].CaActive := True;
    RealKmPtr[iTag, iIndex].UseYn := False;
    Sleep(4000);
    EndThread(0);
  end;
end;

function NewSubFormWnddowProc(Wnd: HWND; Msg, wParam, lParam : Integer):Integer;stdcall; //procedure NewSubFormWnddowProc(Wnd:HWND;msg: integer;wparam:integer;lparam:integer;handled:boolean);stdcall;
var
  dummyHandled: boolean;
  Message: TMessage;
  OldWndProc: Integer;
begin
    if not Assigned(MagneticWndProc) then Exit;

    Message.Msg:=Msg;
    Message.WParam:=wParam;
    Message.LParam:=lParam;
    Message.Result:=0;

    if ( Msg = WM_SYSCOMMAND) or  ( Msg = WM_ENTERSIZEMOVE) or (Msg =WM_EXITSIZEMOVE) or ( Msg =WM_WINDOWPOSCHANGED) or (Msg =WM_COMMAND)then
    begin
      MagneticWndProc(Wnd, Msg, lGlue, Message, dummyHandled);
    end
    else if(Message.Msg=WM_MOVING) or (Msg=WM_SIZING) then
    begin
      MagneticWndProc(Wnd, Msg, lGlue, Message, dummyHandled);
      if( not dummyHandled ) then
        Exit;
    end;

  OldWndProc:=GetWindowLong(Wnd ,GWL_USERDATA);
//  if(OldWndProc=0)then Exit;
  Result := CallWindowProc(Pointer(OldWndProc), Wnd, Msg, wParam, lParam)
end;

//---------------------- Custom Message Handling procedures ----------------------
// These procedures shold be placed per every forms which we want to give magnetic
//  effect.

procedure TFrm_JON01.WMEnterSizeMove(var Msg: TMessage);
begin
   inherited;

   if Assigned(MagneticWndProc) then
      MagneticWndProc(Self.Handle, WM_ENTERSIZEMOVE, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON01.WMSizing(var Msg: TMessage);
var
   bHandled: Boolean;
begin
   if not Assigned(MagneticWndProc) then
      inherited
   else
      if MagneticWndProc(Self.Handle, WM_SIZING, lGlue, Msg, bHandled) then
         if not bHandled then
            inherited;
end;

procedure TFrm_JON01.WMMoving(var Msg: TMessage);
var
   bHandled: Boolean;
begin
   lGlue := True;

   if not Assigned(MagneticWndProc) then
      inherited
   else
      if MagneticWndProc(Self.Handle, WM_MOVING, lGlue, Msg, bHandled) then
         if not bHandled then
            inherited;
end;

procedure TFrm_JON01.WMExitSizeMove(var Msg: TMessage);
begin
   inherited;

   if Assigned(MagneticWndProc) then
      MagneticWndProc(Self.Handle, WM_EXITSIZEMOVE, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON01.WMSysCommand(var Msg: TMessage);
begin
   inherited;

   if Assigned(MagneticWndProc) then
      MagneticWndProc(Self.Handle, WM_SYSCOMMAND, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON01.WMCommand(var Msg: TMessage);
begin
   inherited;

   if Assigned(MagneticWndProc) then
      MagneticWndProc(Self.Handle, WM_COMMAND, lGlue, Msg, dummyHandled);
end;

//------------------- end of Custom Message Handling procedures -----------------

// 문자열에서 숫자만 추출(소숫점제외)
// 2010.12.13
function str2integer(str:AnsiString):integer;
var
 ii:integer;
 TempStr:String;
begin
 TempStr:= '';
 for ii:= 1 to length(str) do
  begin
    if (str[ii] >= '0') and (str[ii] <= '9') then
      TempStr:= TempStr+str[ii];
   end;
// if TempStr='' then TempStr:='0';
 Result:= strtoint(TempStr);
end;

// 문자열에서 숫자제외한 문자 추출(소숫점제외)
// 2010.12.13
function str2string(str:string):string;
var
 ii:integer;
 TempStr:String;
begin
 TempStr:= '';
 for ii:= 1 to length(str) do
  begin
    if not((str[ii] >= '0') and (str[ii] <= '9')) then
      TempStr:= TempStr+str[ii];
   end;
 Result:= TempStr;
end;

function rpos1(substr1: string; str1: string): Integer;
var
  i: integer;
  tpos: integer;
begin
  if (substr1='') or (str1='') or (Length(substr1)>Length(str1)) then
  begin
    result:=0;
  end else
  begin
    tpos:=0;
    for i:=1 to Length(str1) do
    begin
      if substr1=Copy(str1,i,Length(substr1)) then
        tpos:=i;
    end;
    result:=tpos;

  end;
end;

procedure TFrm_JON01.cbbPayMethodPropertiesChange(Sender: TObject);
var
  UserMile, iCoupon : Integer;
  Price: Integer;
  sTmp, sHDNO, sBRNO : string;
begin
  try
    LoadPostTime;

    // 결재구분 콤보 박스에서 유저 별도체크 원복용으로 사용함. 2011-11-08
    // 법인콜 여부(수도권만 사용함)
    if GS_PRJ_AREA = 'S' then
    begin
      sTmp := Proc_BRNOSearch;
      // 플러스콜 사용 [접수창체크옵션,지사,본사,연합] 조회
      sTmp := GetPlusCallYN(sTmp);
      //if proc_PlusCall_CtrlYN = 'nyyy' then
      if copy(sTmp,1,4) = 'nyyy' then
      begin //법인콜 사용여부,,  'nyyy' : 미설정. 모드
        if BtnPlusYN.Tag < 10 then
          BtnPlusYN.Down := False;
      end;
    end;

    cbbPayMethod.Tag := 0;  // 법인콜 체크 박스에서 결재방법 변경할수 있는 모드 초기화. 2011-11-11.

    if cbbPayMethod.Text = '후불(카드)' then
    begin
      if btnCmdUpdSave.Visible then
      begin
        btnCmdJoin.Enabled := False;
        btnCmdWait.Enabled := False;
        btnCmdJoinCopy.Enabled := False;
        btnCmdWaitCopy.Enabled := False;
      end else
      begin
        btnCmdJoin.Enabled := True;
        btnCmdWait.Enabled := True;
        btnCmdJoinCopy.Enabled := True;
        btnCmdWaitCopy.Enabled := True;
      end;
    end else
    begin
      btnCmdJoin.Enabled := True;
      btnCmdWait.Enabled := True;
      btnCmdJoinCopy.Enabled := True;
      btnCmdWaitCopy.Enabled := True;
    end;

    // 후불인 경우 자동입금 금액설정
    if IsPayMethodPost then
    begin
      PostTime := POST_TIME_TOMORROW;

      // 마일리지는 한도내에서 적요
      if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
      begin
        Price := curRate.Value;
        UserMile := StrToIntDef(lblCuMile.Caption, 0);

        iCoupon := StrToIntDef(RemoveComma(edtPostPay.Hint), 0);  // 20130603  LYB  쿠폰결

        if iCoupon = 0 then
          edtPostPay.Value := IfThen(Price > UserMile, UserMile, Price)
        else
          edtPostPay.Value := IfThen(Price > (UserMile + iCoupon), UserMile+iCoupon, Price)
      end else
      begin
        if Not pJON01Dock.bUnDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

        if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트2K 20140221 KHS
          edtPostPay.Value := 2000
        else
        if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트3K 20141007 KHS
          edtPostPay.Value := 3000
        else
          edtPostPay.Value := curRate.Value;
      end;

      sHDNO := Proc_HDNOSearch; // 본사코드 정보를 읽는다.
      sBRNO := Proc_BRNOSearch; // 지사코드 정보를 읽는다.

      // 쿠폰제
      if GS_PRJ_AREA = 'S' then
      begin
        // KCP 카드 결제 체크. 2011-10-19.
        if cbbPayMethod.Text = PAY_METHOD_CARD_KCP then
        begin
          cbCardSanction.Caption := '카드결제';
          cbCardSanction.Enabled := True;
        end else
        if cbbPayMethod.Text = PAY_METHOD_POST_MILE then     // 20130603  LYB  쿠폰결제
        begin
          // 쿠폰 결제는 코리아드라이브-A1531, 서울/경기/인천-G891, 천안/안성/평택/아산-Q452/콜마너/콜마너영업 만 사용 가능
          if (sHDNO = 'A1531') or (sBRNO = 'G891') or (sBRNO = 'Q452') or (sHDNO = 'A100') or (sHDNO = 'A283')  then
          begin
            cbCardSanction.Caption := '쿠폰결제';
            cbCardSanction.Enabled := True;
          end else
          begin
            cbCardSanction.Enabled := False;
            cbCardSanction.Caption := '카드결제';
          end;
        end	else
        begin
          cbCardSanction.Enabled := False;
          cbCardSanction.Caption := '카드결제';
        end;
      end else
      begin
        // KCP 카드 결제 체크. 2011-10-19.
        if cbbPayMethod.Text = PAY_METHOD_CARD_KCP then
        begin
          cbCardSanction.Caption := '카드결제';
          cbCardSanction.Enabled := True;
        end else
        if cbbPayMethod.Text = PAY_METHOD_POST_MILE then     // 20130603  LYB  쿠폰결제
        begin
          // 쿠폰 결제는 코리아드라이브(대전-L290, 광주-M135, 전주-O914, 구미,대구-P263/콜마너/콜마너영업 만 사용 가능
          if (sBRNO = 'L290') or (sBRNO = 'M135') or (sBRNO = 'O914') or (sBRNO = 'P263') or
             (sHDNO = 'A100') or (sHDNO = 'A283')  then
          begin
            cbCardSanction.Caption := '쿠폰결제';
            cbCardSanction.Enabled := True;
          end else
          begin
            cbCardSanction.Enabled := False;
            cbCardSanction.Caption := '카드결제';
          end;
        end	else
        begin
          cbCardSanction.Enabled := False;
          cbCardSanction.Caption := '카드결제';
        end;
      end;

      // 법인콜 여부(수도권만 사용함)
      if GS_PRJ_AREA = 'S' then
      begin
        if sTmp = 'nyyy' then
        begin //법인콜 사용여부,,  'nyyy' : 미설정. 모드

          // "후불" 선택시 "법인콜" 자동선택 처리. 2011-11-07(영업요청)
          if btnPlusYN.Tag < 10 then
          begin
            if cbbPayMethod.Text = PAY_METHOD_POST_NML then
            begin
              if btnPlusYN.Hint <> 'NOCHANGE' then // 법인콜 다른 함수에서 변경 못 하도록 함.[오더수정 모드에서 설정됨]
              begin
                if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;
                if pJON01Dock.HDNO <> 'A2279' then  // 20130801  LYB 드림세븐은 법인콜 자동 체크 제외  정회귀 팀장 요청
                begin
                  cbbPayMethod.Tag := 20;    // 후불 선택시  "법인콜" 체크 박스 선택하더라도 결재방법 자동변경 차단. 2011-11-11.
                  btnPlusYN.Down := True;
                end;
              end;
            end;
          end;
        end;
      end;
    end else
    begin
      edtPostPay.Value := 0;
      if IsCardUseBranch_KCP(Proc_BRNOSearch) = '03' then
      begin
        if cbbPayMethod.Text = PAY_METHOD_MONEY then
        begin
          cbCardSanction.Caption := '현금영수';
          cbCardSanction.Enabled := True;
        end else
        begin
          cbCardSanction.Enabled := False;
          cbCardSanction.Caption := '카드결재';
        end;
      end;
      AddSpop('',97);
    end;

    edtPostPay.Enabled := IsPayMethodPost;

    //setposttime으로 이동
    if Pos('후불',cbbPayMethod.Text)>=1 then
    begin
      cbbPostTime.ItemIndex:=GT_USERIF.AfterPayMidx;
    end;

    AppendPostDesc;

  except
    on e: exception do
    begin
      Log('cbbPayMethodPropertiesChange Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'cbbPayMethodPropertiesChange Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.cbbPostTimePropertiesChange(Sender: TObject);
begin
  try
    if GS_PRJ_AREA = 'S' then
    begin
      // 수도권 수정모드 기사자동입금액 변경 허용.
      edtPostPay.Value := IfThen(cbbPostTime.Text = POST_TIME_NOPAY, 0, curRate.Value);
    end else
    begin
      // 수정모드 일때는 기사자동입금액이 수정되지 않도록 요청하여 적용함(신과장요청). 2011.07.19
      if (Pos('수정', Self.Caption) = 0 ) then
      begin
        if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

        if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트2K 20140221 KHS
          edtPostPay.Value := IfThen(cbbPostTime.Text = POST_TIME_NOPAY, 0, 2000)
        else
        if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트3K 20141007 KHS
          edtPostPay.Value := IfThen(cbbPostTime.Text = POST_TIME_NOPAY, 0, 3000)
        else
          edtPostPay.Value := IfThen(cbbPostTime.Text = POST_TIME_NOPAY, 0, curRate.Value);
      end;
    end;

    edtPostPay.Enabled := not (cbbPostTime.Text = POST_TIME_NOPAY);
    edtPostPay.Refresh;

    AppendPostDesc;

  except
    on e: exception do
    begin
      Log('cbbPostTimePropertiesChange Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'cbbPostTimePropertiesChange Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.cbCardSanctionClick(Sender: TObject);
var lsTemp : TStringList;
begin
  try
    if (Pos('수정', Self.Caption) = 0 ) and (cxtCuTel.Text = '') then
    begin
      GMessagebox('고객조회 후 이용하여 주십시오.', CDMSI);
      Exit;
    end;

    if ( (curRate.Value >= 2000) And (cbbPayMethod.Text <> PAY_METHOD_POST_MILE) ) or   // 카드/현금은 최소 2000원 이상
       ( (curRate.Value >= 0   ) And (cbbPayMethod.Text  = PAY_METHOD_POST_MILE) ) then // 쿠폰은 적립만 할수 있으므로 0원도 가능   20130730  LYB
    begin
      Try
        if Not Assigned(Frm_JON34) Or (Frm_JON34 = Nil) then Frm_JON34 := TFrm_JON34.Create(Nil);

        if (cbbPayMethod.Text = PAY_METHOD_MONEY) then
        begin
          Frm_JON34.pnlTitle.Caption := '   현금영수증(지출증빙) 발급';
          // 카드결제 창 오픈.  2011-10-13.
          if not Assigned(Frm_JON34) then
          begin
            Frm_JON34 := TFrm_JON34.Create(self);
          end;
          Frm_JON34.Jon03Tag := Self.Jon03Tag;
          Frm_JON34.Card_Gubun := 0;
          Frm_JON34.proc_init;
          Frm_JON34.pnl1.Visible := False;
          Frm_JON34.pnl3.Visible := True;
          Frm_JON34.pnl4.Visible := True;
          Frm_JON34.pnl6.Visible := False;
          Frm_JON34.pnl4.Left := 0;
          Frm_JON34.pnl4.Top := 1;
          Frm_JON34.Constraints.MinHeight := 375 - 33;
          Frm_JON34.Height := 375 - 33;

          Frm_JON34.cxCurDecRate_Cash.Value := curRate.Value;    // 요금(현금영수증)

          //공통사항///////////////////
          Frm_JON34.lcBRNO    := Proc_BRNOSearch;           // 지사코드 정보를 읽는다.
          Frm_JON34.lcMainNum := Proc_MainKeyNumberSearch;  // 대표번호 정보를 읽는다.
          Frm_JON34.lcCustTel := cxtCuTel.Text;             // 고객전화번호.
          Frm_JON34.medtCashCardNum.Text := Frm_JON34.lcCustTel;
          Frm_JON34.lcCustSeq := lcsCu_seq;                 // 고객 시퀀스.
          //공통사항///////////////////

          Frm_JON34.lcJON_IDX := Self.Tag;   // 접수창의 index 값 저장.

          // 기 결제 정보가 있으면, 해당 값을 넣어준다.
          if Length(locCardPayInfo) > 10 then
          begin
            try
              Frm_JON34.lcCustTel := '';             // 고객전화번호.

              lsTemp := TStringList.Create;
              lsTemp.Delimiter := '|';
              lsTemp.DelimitedText := locCardPayInfo;

              Frm_JON34.cxCurDecRate_Cash.Text  := lsTemp[0];
              Frm_JON34.lblCardStatus_Cash.Caption := lsTemp[1];  // 상태
              if lsTemp.Count = 3 then
              begin
                Frm_JON34.medtCashCardNum.Text := lsTemp[2];
              end;

              // 접수번호가 있을경우만 서버에서 재조회 한다.  2011-10-27
              if (length(cxtJoinNum.Text) > 1) or (locCardPaySeq <> '') then
                Frm_JON34.ProCardInfoSelect(cxtJoinNum.Text + '│' + locCardPaySeq);   // 카드결제 정보를 조회 한다.

              if Frm_JON34.lblCardStatus_Cash.Caption = '증빙완료' then
              begin
                // 카드결제 승인 취소 할 준비.
                Frm_JON34.sb_ApproveReq.Enabled    := False;
                Frm_JON34.sb_ApproveOK.Enabled     := False;
                Frm_JON34.sb_ApproveCancle.Enabled := True;
                Frm_JON34.sb_ApproveReceipt.Enabled := False;
                Frm_JON34.medtCashCardNum.Enabled      := False;
                Frm_JON34.cxCurDecRate_Cash.Enabled      := False;
              end	else
              if Frm_JON34.lblCardStatus_Cash.Caption = '증빙요청완료' then
              begin
                // 카드결제 승인 취소 할 준비.
                Frm_JON34.sb_ApproveReq.Enabled    := False;
                Frm_JON34.sb_ApproveOK.Enabled     := False;
                Frm_JON34.sb_ApproveCancle.Enabled := False;
                Frm_JON34.sb_ApproveReceipt.Enabled := False;
                Frm_JON34.medtCashCardNum.Enabled      := False;
                Frm_JON34.cxCurDecRate_Cash.Enabled    := False;
              end	else
              begin
                // 카드결제 승인 할 준비.
                Frm_JON34.sb_ApproveReq.Enabled    := True;
                Frm_JON34.cxButton1.Enabled     := False;
                Frm_JON34.sb_ApproveOK.Enabled     := False;
                Frm_JON34.sb_ApproveCancle.Enabled := False;
                Frm_JON34.sb_ApproveReceipt.Enabled := False;
                Frm_JON34.medtCashCardNum.Enabled      := True;
                Frm_JON34.cxCurDecRate_Cash.Enabled    := True;

                Frm_JON34.rg_charge_ser2.Enabled   := True;
                Frm_JON34.rg_charge_ser1.Enabled   := True;
              end;

              Frm_JON34.lcPaySeq := locCardPaySeq;   // 결제일련번호
              Frm_JON34.lcTranNo := locCardTranNo;   // 거래번호

              Frm_JON34.lblPaySeq_Cash.Caption := locCardPaySeq;
              Frm_JON34.lblTranNo_Cash.Caption := locCardTranNo;
            finally
              FreeAndNil(lsTemp);
            end;
          end else
          if Length(locCardPaySeq) > 1 then
          begin
            Frm_JON34.lcCustTel := '';             // 고객전화번호.
            Frm_JON34.lcPaySeq               := locCardPaySeq;   // 결제일련번호  만 있으면 승인취소 가능 함.
            Frm_JON34.lblPaySeq_Cash.Caption := locCardPaySeq;

            Frm_JON34.ProCardInfoSelect(cxtJoinNum.Text);   // 카드결제 정보를 조회 한다.

            if Frm_JON34.lblCardStatus_Cash.Caption =  '증빙완료' then
            begin
              // 카드결제 승인 취소 할 준비.
              Frm_JON34.sb_ApproveReq.Enabled    := False;
              Frm_JON34.sb_ApproveOK.Enabled     := False;
              Frm_JON34.sb_ApproveCancle.Enabled := True;
              Frm_JON34.sb_ApproveReceipt.Enabled := False;
              Frm_JON34.medtCashCardNum.Enabled      := False;
              Frm_JON34.cxCurDecRate_cash.Enabled    := False;
            end else
            if Frm_JON34.lblCardStatus_Cash.Caption = '증빙요청완료' then
            begin
              // 카드결제 승인 취소 할 준비.
              Frm_JON34.sb_ApproveReq.Enabled    := False;
              Frm_JON34.sb_ApproveOK.Enabled     := False;
              Frm_JON34.sb_ApproveCancle.Enabled := False;
              Frm_JON34.sb_ApproveReceipt.Enabled := False;
              Frm_JON34.medtCashCardNum.Enabled      := False;
              Frm_JON34.cxCurDecRate_cash.Enabled    := False;
            end else
            begin
              // 카드결제 승인 할 준비.
              Frm_JON34.sb_ApproveReq.Enabled    := True;
              Frm_JON34.sb_ApproveOK.Enabled     := False;
              Frm_JON34.sb_ApproveCancle.Enabled := False;
              Frm_JON34.sb_ApproveReceipt.Enabled := False;

              Frm_JON34.medtCashCardNum.Enabled      := True;
              Frm_JON34.cxCurDecRate_cash.Enabled    := True;
              Frm_JON34.rg_charge_ser2.Enabled   := True;
              Frm_JON34.rg_charge_ser1.Enabled   := True;
            end;
          end else
          begin
            // 카드결제 승인 할 준비.
            Frm_JON34.sb_ApproveReq.Enabled    := True;
            Frm_JON34.sb_ApproveOK.Enabled     := False;
            Frm_JON34.sb_ApproveCancle.Enabled := False;
            Frm_JON34.sb_ApproveReceipt.Enabled := False;
            Frm_JON34.medtCashCardNum.Enabled      := True;
            Frm_JON34.cxCurDecRate_cash.Enabled    := True;
            Frm_JON34.rg_charge_ser2.Enabled   := True;
            Frm_JON34.rg_charge_ser1.Enabled   := True;
          end;

          if Assigned(Frm_JON34) then
          begin
            Frm_JON34.Left := Self.Left - (Frm_JON34.Width + 1);
            Frm_JON34.Top  := Self.Top  + 320;
          end;

          Frm_JON34.Show;
        end else
        if (cbbPayMethod.Text = PAY_METHOD_POST_MILE) then
        begin
          Frm_JON34.pnlTitle.Caption := '   모바일 쿠폰 결제';
          Frm_JON34.lcAppModify := 'N';

          // 카드결제 창 오픈.  2011-10-13.
          if not Assigned(Frm_JON34) then
          begin
            Frm_JON34 := TFrm_JON34.Create(self);
          end;
          Frm_JON34.Card_Gubun := 2;
          Frm_JON34.proc_init;
          Frm_JON34.pnl1.Visible := False;
          Frm_JON34.pnl3.Visible := False;
          Frm_JON34.pnl4.Visible := False;
          Frm_JON34.pnl6.Visible := True;
          Frm_JON34.pnl6.Left := 0;
          Frm_JON34.pnl6.Top := 1;
          Frm_JON34.Constraints.MinHeight := 375 - (33 + 33);
          Frm_JON34.Height := 375 - (33 + 33);

          Frm_JON34.cxCurDecRate_Coupon.Value := curRate.Value;    // 요금

          //공통사항///////////////////
          Frm_JON34.lcBRNO    := Proc_BRNOSearch;           // 지사코드 정보를 읽는다.
          Frm_JON34.lcMainNum := Proc_MainKeyNumberSearch;  // 대표번호 정보를 읽는다.
          Frm_JON34.lcCustTel := cxtCuTel.Text;             // 고객전화번호.
          Frm_JON34.lcCustSeq := lcsCu_seq;                 // 고객 시퀀스.
          //공통사항///////////////////

          Frm_JON34.lcJON_IDX := Self.Tag;   // 접수창의 index 값 저장.

          // 기 결제 정보가 있으면, 해당 값을 넣어준다.
          if Length(locCardPayInfo) > 10 then
          begin
            try
              Frm_JON34.lcCustTel := '';             // 고객전화번호.

              lsTemp := TStringList.Create;
              lsTemp.Delimiter := '|';
              lsTemp.DelimitedText := locCardPayInfo;

              Frm_JON34.cxCurDec_Coupon1.Text     := lsTemp[1];
              Frm_JON34.lblCouponStatus.Caption   := lsTemp[2];
              Frm_JON34.medtCouponNum.Text        := lsTemp[3];
              Frm_JON34.Lbl_ChangeMile.Caption := '0';

              // 접수번호가 있을경우만 서버에서 재조회 한다.  2011-10-27
              if (length(cxtJoinNum.Text) > 1) or (locCardPaySeq <> '') then
                Frm_JON34.ProCardInfoSelect(locCardPaySeq);   // 모바일 쿠폰 결제 정보를 조회 한다.

              if Frm_JON34.lblCouponStatus.Caption = '인증완료' then
              begin
                // 쿠폰결제 승인 할 준비.
                Frm_JON34.sb_ApproveRed.Enabled     := False;
                Frm_JON34.sb_ApproveReq.Enabled     := True;
                Frm_JON34.sb_ApproveOK.Enabled      := False;
                Frm_JON34.sb_ApproveCancle.Enabled  := False;
                Frm_JON34.sb_ApproveReceipt.Enabled := False;

                Frm_JON34.medtCouponNum.Enabled        := False;
              end else
              if Frm_JON34.lblCouponStatus.Caption = '승인완료' then
              begin
                // 카드결제 승인 취소 할 준비.
                Frm_JON34.sb_ApproveRed.Enabled     := False;
                Frm_JON34.sb_ApproveReq.Enabled     := False;
                Frm_JON34.sb_ApproveOK.Enabled      := True;
                Frm_JON34.sb_ApproveCancle.Enabled  := True;
                Frm_JON34.sb_ApproveReceipt.Enabled := False;

                Frm_JON34.medtCouponNum.Enabled     := False;
              end else
              begin
                // 카드결제 인증 할 준비.
                Frm_JON34.sb_ApproveRed.Enabled    := True;
                Frm_JON34.sb_ApproveReq.Enabled    := False;
                Frm_JON34.cxButton1.Enabled        := False;
                Frm_JON34.sb_ApproveOK.Enabled     := False;
                Frm_JON34.sb_ApproveCancle.Enabled := False;
                Frm_JON34.sb_ApproveReceipt.Enabled := False;

                Frm_JON34.medtCouponNum.Enabled      := True;
              end;

              Frm_JON34.lcPaySeq := locCardPaySeq;   // 쿠폰일련번호
              Frm_JON34.lblPaySeq_Coupon.Caption := locCardPaySeq;
            finally
              FreeAndNil(lsTemp);
            end;
          end else
          if Length(locCardPaySeq) > 1 then
          begin
            Frm_JON34.lcCustTel := '';             // 고객전화번호.
            Frm_JON34.lcPaySeq                 := locCardPaySeq;   // 쿠폰일련번호  만 있으면 승인취소 가능 함.
            Frm_JON34.lblPaySeq_Coupon.Caption := locCardPaySeq;

            Frm_JON34.ProCardInfoSelect(locCardPaySeq);   // 쿠폰결제 정보를 조회 한다.

            if Frm_JON34.lblCouponStatus.Caption =  '인증완료' then
            begin
              // 쿠폰결제 승인 할 준비.
              Frm_JON34.sb_ApproveRed.Enabled    := False;
              Frm_JON34.sb_ApproveReq.Enabled    := True;
              Frm_JON34.sb_ApproveOK.Enabled     := False;
              Frm_JON34.sb_ApproveCancle.Enabled := False;
              Frm_JON34.sb_ApproveReceipt.Enabled := False;

              Frm_JON34.medtCouponNum.Enabled      := False;
            end else
            if Frm_JON34.lblCouponStatus.Caption = '승인완료' then
            begin
              // 쿠폰결제 승인 취소 할 준비.
              Frm_JON34.sb_ApproveRed.Enabled     := False;
              Frm_JON34.sb_ApproveReq.Enabled     := False;
              Frm_JON34.sb_ApproveOK.Enabled      := True;
              Frm_JON34.sb_ApproveCancle.Enabled  := True;
              Frm_JON34.sb_ApproveReceipt.Enabled := False;

              Frm_JON34.medtCouponNum.Enabled     := False;
            end else
            begin
              // 쿠폰결제 인증 할 준비.
              Frm_JON34.sb_ApproveRed.Enabled     := True;
              Frm_JON34.sb_ApproveReq.Enabled     := False;
              Frm_JON34.sb_ApproveOK.Enabled      := False;
              Frm_JON34.sb_ApproveCancle.Enabled  := False;
              Frm_JON34.sb_ApproveReceipt.Enabled := False;

              Frm_JON34.medtCouponNum.Enabled     := True;
            end;
          end else
          begin
            // 카드결제 인증 할 준비.
            Frm_JON34.sb_ApproveRed.Enabled     := True;
            Frm_JON34.sb_ApproveReq.Enabled     := False;
            Frm_JON34.sb_ApproveOK.Enabled      := False;
            Frm_JON34.sb_ApproveCancle.Enabled  := False;
            Frm_JON34.sb_ApproveReceipt.Enabled := False;

            Frm_JON34.medtCouponNum.Enabled     := True;
          end;

          if Assigned(Frm_JON34) then
          begin
            Frm_JON34.Left := Self.Left - (Frm_JON34.Width + 1);
            Frm_JON34.Top  := Self.Top  + 320;
          end;

          Frm_JON34.Show;
        end else         //카드
        begin
          Frm_JON34.pnlTitle.Caption := '   카드결제';
          if Pay_Gubun  = '0' then
          begin

          end;
          // 카드결제 창 오픈.  2011-10-13.
          if not Assigned(Frm_JON34) then
          begin
            Frm_JON34 := TFrm_JON34.Create(self);
          end;

          Frm_JON34.Card_Gubun := 1;
          Frm_JON34.proc_init;

          if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

          if (pJON01Dock.HDNO = 'A1531') or (pJON01Dock.HDNO = 'A100')  then
          begin
            Frm_JON34.pnl1.Visible := True;
            Frm_JON34.pnl3.Visible := False;
            Frm_JON34.Constraints.MinHeight := 375 - 33;
            Frm_JON34.Height := 375 - 33;
          end	else
          begin
            Frm_JON34.pnl1.Visible := False;
            Frm_JON34.pnl3.Visible := False;
            Frm_JON34.Constraints.MinHeight := 375 - (33 + 33);
            Frm_JON34.Height := 375 - (33 + 33);
          end;
          Frm_JON34.pnl4.Left := 400;
          Frm_JON34.pnl6.Left := 400;
          Frm_JON34.cxCurDRate.Value      := curRate.Value;    // 요금.

          //공통사항///////////////////
          Frm_JON34.lcBRNO    := Proc_BRNOSearch;           // 지사코드 정보를 읽는다.
          Frm_JON34.lcMainNum := Proc_MainKeyNumberSearch;  // 대표번호 정보를 읽는다.
          Frm_JON34.lcCustTel := cxtCuTel.Text;             // 고객전화번호.
          Frm_JON34.lcCustSeq := lcsCu_seq;                 // 고객 시퀀스.
          //공통사항///////////////////

          if Frm_JON34.chkConfigVATset.Checked then
            // 결제요금.  설정된 부가세 적용.
            Frm_JON34.cxCurDecRate.Value := curRate.Value + (curRate.Value * (Frm_JON34.cxCurVATvalue.Value / 100))
          else
            Frm_JON34.cxCurDecRate.Value := curRate.Value;

          Frm_JON34.lcJON_IDX := Self.Tag;   // 접수창의 index 값 저장.

          // 기 결제 정보가 있으면, 해당 값을 넣어준다.
          if Length(locCardPayInfo) > 10 then
          begin
            try
              lsTemp := TStringList.Create;
              lsTemp.Delimiter := '|';
              lsTemp.DelimitedText := locCardPayInfo;

              Frm_JON34.cxCurDRate.Text       := lsTemp[0];
              Frm_JON34.cxCurDecRate.Text     := lsTemp[1];
              Frm_JON34.cxCurTerm.Text        := lsTemp[2];
              Frm_JON34.lblCardStatus.Caption := lsTemp[3];  // 상태
              if lsTemp.Count = 6 then
              begin
                Frm_JON34.medCardNum.Text       := lsTemp[4];
                Frm_JON34.medLimiteDate.text    := lsTemp[5];
              end;

              // 접수번호가 있을경우만 서버에서 재조회 한다.  2011-10-27
              if (length(cxtJoinNum.Text) > 1) or (locCardPaySeq <> '') then
                Frm_JON34.ProCardInfoSelect(cxtJoinNum.Text + '│' + locCardPaySeq);   // 카드결제 정보를 조회 한다.

              if Frm_JON34.lblCardStatus.Caption = '결제완료' then
              begin
                // 카드결제 승인 취소 할 준비.
                Frm_JON34.sb_ApproveReq.Enabled    := False;
                Frm_JON34.sb_ApproveOK.Enabled     := False;
                Frm_JON34.sb_ApproveCancle.Enabled := True;
                Frm_JON34.sb_ApproveReceipt.Enabled := True;

                Frm_JON34.medCardNum.Enabled      := False;
                Frm_JON34.medLimiteDate.Enabled   := False;
                Frm_JON34.cxCurDRate.Enabled      := False;
                Frm_JON34.cxCurDecRate.Enabled    := False;
                Frm_JON34.cxCurTerm.Enabled       := False;
              end	else
              if Frm_JON34.lblCardStatus.Caption = '결제요청완료' then
              begin
                // 카드결제 승인 취소 할 준비.
                Frm_JON34.sb_ApproveReq.Enabled    := False;
                Frm_JON34.sb_ApproveOK.Enabled     := False;
                Frm_JON34.sb_ApproveCancle.Enabled := False;
                Frm_JON34.sb_ApproveReceipt.Enabled := False;

                Frm_JON34.medCardNum.Enabled      := False;
                Frm_JON34.medLimiteDate.Enabled   := False;
                Frm_JON34.cxCurDRate.Enabled      := False;
                Frm_JON34.cxCurDecRate.Enabled    := False;
                Frm_JON34.cxCurTerm.Enabled       := False;
              end	else
              begin
                // 카드결제 승인 할 준비.
                Frm_JON34.sb_ApproveReq.Enabled    := True;
                Frm_JON34.sb_ApproveOK.Enabled     := False;
                Frm_JON34.sb_ApproveCancle.Enabled := False;
                Frm_JON34.sb_ApproveReceipt.Enabled := False;

                Frm_JON34.medCardNum.Enabled      := True;
                Frm_JON34.medLimiteDate.Enabled   := True;
                Frm_JON34.cxCurDRate.Enabled      := True;
                Frm_JON34.cxCurDecRate.Enabled    := True;
                Frm_JON34.cxCurTerm.Enabled       := True;

                Frm_JON34.rb_Card1.Enabled        := True;
                Frm_JON34.rb_BaRo_Card1.Enabled   := True;
              end;

              Frm_JON34.lcPaySeq := locCardPaySeq;   // 결제일련번호
              Frm_JON34.lcTranNo := locCardTranNo;   // 거래번호

              Frm_JON34.lblPaySeq.Caption := locCardPaySeq;
              Frm_JON34.lblTranNo.Caption := locCardTranNo;
            finally
              FreeAndNil(lsTemp);
            end;
          end	else
          if Length(locCardPaySeq) > 1 then
          begin
            Frm_JON34.lcPaySeq          := locCardPaySeq;   // 결제일련번호  만 있으면 승인취소 가능 함.
            Frm_JON34.lblPaySeq.Caption := locCardPaySeq;

            Frm_JON34.ProCardInfoSelect(cxtJoinNum.Text);   // 카드결제 정보를 조회 한다.

            if Frm_JON34.lblCardStatus.Caption = '결제완료' then
            begin
              // 카드결제 승인 취소 할 준비.
              Frm_JON34.sb_ApproveReq.Enabled    := False;
              Frm_JON34.sb_ApproveOK.Enabled     := False;
              Frm_JON34.sb_ApproveCancle.Enabled := True;
              Frm_JON34.sb_ApproveReceipt.Enabled := True;

              Frm_JON34.medCardNum.Enabled      := False;
              Frm_JON34.medLimiteDate.Enabled   := False;
              Frm_JON34.cxCurDRate.Enabled      := False;
              Frm_JON34.cxCurDecRate.Enabled    := False;
              Frm_JON34.cxCurTerm.Enabled       := False;
            end else
            if Frm_JON34.lblCardStatus.Caption = '결제요청완료' then
            begin
              // 카드결제 승인 취소 할 준비.
              Frm_JON34.sb_ApproveReq.Enabled    := False;
              Frm_JON34.sb_ApproveOK.Enabled     := False;
              Frm_JON34.sb_ApproveCancle.Enabled := False;
              Frm_JON34.sb_ApproveReceipt.Enabled := False;

              Frm_JON34.medCardNum.Enabled      := False;
              Frm_JON34.medLimiteDate.Enabled   := False;
              Frm_JON34.cxCurDRate.Enabled      := False;
              Frm_JON34.cxCurDecRate.Enabled    := False;
              Frm_JON34.cxCurTerm.Enabled       := False;
            end	else
            begin
              // 카드결제 승인 할 준비.
              Frm_JON34.sb_ApproveReq.Enabled    := True;
              Frm_JON34.sb_ApproveOK.Enabled     := False;
              Frm_JON34.sb_ApproveCancle.Enabled := False;
              Frm_JON34.sb_ApproveReceipt.Enabled := False;

              Frm_JON34.medCardNum.Enabled      := True;
              Frm_JON34.medLimiteDate.Enabled   := True;
              Frm_JON34.cxCurDRate.Enabled      := True;
              Frm_JON34.cxCurDecRate.Enabled    := True;
              Frm_JON34.cxCurTerm.Enabled       := True;
              Frm_JON34.rb_Card1.Enabled        := True;
              Frm_JON34.rb_BaRo_Card1.Enabled   := True;
            end;
          end	else
          begin
            // 카드결제 승인 할 준비.
            Frm_JON34.sb_ApproveReq.Enabled    := True;
            Frm_JON34.sb_ApproveOK.Enabled     := False;
            Frm_JON34.sb_ApproveCancle.Enabled := False;
            Frm_JON34.sb_ApproveReceipt.Enabled := False;

            Frm_JON34.medCardNum.Enabled      := True;
            Frm_JON34.medLimiteDate.Enabled   := True;
            Frm_JON34.cxCurDRate.Enabled      := True;
            Frm_JON34.cxCurDecRate.Enabled    := True;
            Frm_JON34.cxCurTerm.Enabled       := True;
            Frm_JON34.rb_Card1.Enabled        := True;
            Frm_JON34.rb_BaRo_Card1.Enabled   := True;
          end;

          if Assigned(Frm_JON34) then
          begin
            Frm_JON34.Left := Self.Left - (Frm_JON34.Width + 1);
            Frm_JON34.Top  := Self.Top  + 320;
          end;

          Frm_JON34.Show;
        end;
      except

      end;
    end else
    begin
      if (cbbPayMethod.Text = PAY_METHOD_MONEY) then
        GMessagebox('현금영수증 금액은 2000원 이상 입니다.', CDMSI)
      else
        GMessagebox('카드결제 최소 금액은 2000원 이상 입니다.', CDMSI);
      curRate.SetFocus;
    end;
  except
    on e: exception do
    begin
      Log('cbCardSanctionClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'cbCardSanctionClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.cboBranchClick(Sender: TObject);
begin
  if cboBranch.Properties.Items.Count > 40 then cboBranch.Properties.DropDownRows := 40
                                           else cboBranch.Properties.DropDownRows := cboBranch.Properties.Items.Count;
end;

procedure TFrm_JON01.cboBranchMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Pos('신규', Self.Caption) < 1) and (cboBranch.Properties.ReadOnly = True) then
  begin
    if cxtCuTel.visible = True then cxtCuTel.SetFocus;
  end;

  if PnlSuggest.Visible then
  begin
    PnlSuggest.Visible := False;
    AdvGridSj.ShowSelection := False;
    PnlSuggest.Caption := '';
  end;
end;

procedure TFrm_JON01.cboBranchMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  sTmp: string;
begin
  // 신규 화면을 띄었을땐 지사선택 경고 메시지를 보여주지 않는다. CDS. 080915.
  if (Pos('신규', Self.Caption) < 1) and (cboBranch.Properties.ReadOnly = True) then
  begin
    sTmp := '[주의] 고객 조회후 지사를 변경하여 오더를 접수하게 되면 다음과 같은 현상이 발생합니다.' + CRLF + CRLF + CRLF
          + '1. 현재 조회한 고객의 정보중에 일부정보가 변경 됩니다. 일부정보는 4번 참고.' + CRLF + CRLF
          + '2. 변경한 지사에 해당 고객전화번호로 정보가 [존재 하는 경우]에는 현재 고객의 정보로 [수정]이 됩니다.' + CRLF + CRLF
          + '3. 변경한 지사에 해당 고객전화번호로 정보가 [없는 경우]에는 현재 고객의 정보로 [신규 등록] 됩니다.' + CRLF + CRLF
          + '4. 지사 변경시 변경되는 일부정보 안내' + CRLF
          + '  4.1 법인고객 일경우 : 법인명, 부서명 정보 제거 되고 [고객구분]이 [개인]으로 변경됨' + CRLF
          + '  4.2 접수/완료 : 현재 보이는 정보만 초기화됨, 실제 정보는 시스템에 남아있음' + CRLF
          + '  4.3 취소율    : 현재 보이는 정보만 초기화됨, 실제 정보는 시스템에 남아있음' + CRLF
          + '  4.4 마일리지  : 현재 보이는 정보만 초기화됨, 실제 정보는 시스템에 남아있음' + CRLF
          + '  4.5 지급횟수  : 현재 보이는 정보만 초기화됨, 실제 정보는 시스템에 남아있음';

    if Application.MessageBox(PChar(sTmp), '[주의]고객 조회후 지사 변경 안내',
      MB_ICONQUESTION + MB_OKCANCEL) = IDOK then
    begin
      // 지사변경 제한.[이유:고객조회 후 지사변경시 조회한 고객정보 일부유실 경고메시지 띄우기 위함임]
      cboBranch.Properties.ReadOnly := False;
      if (Pos('수정', Self.Caption) > 0 ) then
      begin
        btnCmdUpdSave.Enabled := False;
      end;
      TcxComboBox(Sender).SetFocus;
    end else
    begin
      cxtCuTel.SetFocus;
    end;
  end else
  begin
    // 지사변경 제한.[이유:고객조회 후 지사변경시 조회한 고객정보 일부유실 경고메시지 띄우기 위함임]
    cboBranch.Properties.ReadOnly := False;
  end;
end;

procedure TFrm_JON01.cboBranchPropertiesChange(Sender: TObject);
begin
  // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 한다.
  if cboBranch.Tag < 5 then
  begin
    // 고객조회 한 상태에서 지사정보를 바꾸면 고객정보를 초기화 해야 한다.
    cxCustView.DataController.SetRecordCount(0);

    cxtCuBubin.Text := ''; // 법인명(법인정보)

    sNowRate := ''; // 현재 지사의 기본요금 설정액.

    lcsCu_seq := ''; // 현재 선택된 고객seq
    locHDNO := '';
    locBRNO := '';
    locKNum := ''; // 조회 고객 본사, 지사코드, 대표번호 임시저장.
    locDNIS := '';
    locWkSabun := '';
    locWkBrNo := ''; // 조회기사 사번, 기사지사코드 저장.
    locSndTime := '';

    // 플러스콜 사용여부 체크
		proc_PlusCall_CtrlYN;

    // 고객구분 법인일때 개인으로 변경함.
    if CbCuGb.ItemIndex = 2 then
    begin
      CbCuGb.Hint := 'Clear';
      CbCuGb.ItemIndex := 0;
      CbCuGb.Hint := '';
    end;
    lblCuMile.Caption := '0'; // 현재 마일리지
    lblCuMileUnit.Caption := '0';
    // 선택지사 마일리지 지급단위
    lblCuMileCnt.Caption := '0';
    // 마일리지 지급횟수
    lblCuCntTotal.Caption := '0';
    lblCoCntTotal.Caption := '0';
    SetMileColorChange;
    // 접수/왼료
    lblCuCancelR.Caption := '0%'; // 취소율

//-    curOutMileMny.Value := 0; // 지급마일
    sProdName := '';

    if (Pos('신규', Self.Caption) < 1) and (cxtCallTelNum.Text <> '') then
      Proc_CuSeq_Select; // 고객 SEQUENCE 를 조회 해 온다.[현재 조회한 고객정보를 다른지사의 고객정보로 그대로 등록 해주기 위해서..]

  end;

  if cboBranch.Tag <> 20 then
  begin
    LoadCustLevel;
    LoadPayMethod;
  end;
end;

procedure TFrm_JON01.cboBrOnlyClick(Sender: TObject);
begin
  if cboBrOnly.Properties.Items.Count > 35 then cboBrOnly.Properties.DropDownRows := 35
                                           else cboBrOnly.Properties.DropDownRows := cboBrOnly.Properties.Items.Count;
end;

procedure TFrm_JON01.cboBrOnlyEnter(Sender: TObject);
begin
  lst_BRList.Visible := False;
end;

procedure TFrm_JON01.cboBrOnlyPropertiesChange(Sender: TObject);
begin
  if cboBrOnly.Tag = 0 then
  begin
    SetCboBranch(True);
    cxTSearchMainTel.Clear;
  end;
end;

procedure TFrm_JON01.cboCuLevelPropertiesChange(Sender: TObject);
begin
  Proc_SetFormColor;
end;

procedure TFrm_JON01.CbSecondPropertiesChange(Sender: TObject);
Var sDateTime : TDateTime;
begin
  if CbSecond.ItemIndex >= 1 then
  begin
    sDateTime := StrToDateTime(FormatDateTime('YYYY-MM-DD', dtpResvDate.date) + ' ' +
                               FormatDateTime('HH:NN:SS'  , dtpResvTime.Time));

    sDateTime := sDateTime - ((1 / 24 / 60) * StrToFloatDef(CBSecond.Text, 0));

    dtpResvDate.Text := FormatDateTime('YYYY-MM-DD', sDateTime);
    dtpResvTime.Text := FormatDateTime('HH:NN:SS'  , sDateTime);
  end;
end;

procedure TFrm_JON01.SetMunuChecked( sName : String; bCheck : Boolean);
Var j : Integer;
begin
  for j := 0 to pmSpop.Items.Count - 1 do
  begin
    if pmSpop.Items.Items[j].Tag In [8..12] then
    begin
      if Copy(pmSpop.Items.Items[j].Caption, 1, 1) = sName then
      begin
        pmSpop.Items.Items[j].Checked := bCheck;
        Break;
      end;
    end;
  end;
end;

procedure TFrm_JON01.cb_00Click(Sender: TObject);
var wStr : string;
    i, j : Integer;
begin
	wStr := meoStartArea.Text;
  if TAdvGlowButton(Sender).Down then
  begin
    if TAdvGlowButton(Sender).Caption = '탁' then
    begin
      if Pos('탁송)', wStr) < 1 then
        AddSpop('탁송기사만', 8);
			sTaksong := 'y';
      SetMunuChecked('탁', True);
    end else
    if TAdvGlowButton(Sender).Caption = '정' then
    begin
      if Pos('정장)', wStr) < 1 then
        AddSpop('정장기사만', 9);
      SetMunuChecked('정', True);
    end else
    if TAdvGlowButton(Sender).Caption = '경' then
    begin
      if Pos('경유)', wStr) < 1 then
        AddSpop('경유있음', 10);
      SetMunuChecked('경', True);
    end else
    if TAdvGlowButton(Sender).Caption = '적' then
    begin
      if Pos('적요)', wStr) < 1 then
        AddSpop('적요있음', 11);
      SetMunuChecked('적', True);
    end else
    if TAdvGlowButton(Sender).Caption = '스' then
    begin
      if Pos('스틱)', wStr) < 1 then
        AddSpop('스틱기사만', 12);
			sStickCall := 'y';
      SetMunuChecked('스', True);
    end;
  end else
  begin
    if TAdvGlowButton(Sender).Caption = '탁' then
    begin
      i := Pos('탁송)', wStr);
      if i = 1 then
      begin
        meoStartArea.text := Copy(widestring(wStr), 1 + Length('탁송)'), Length(widestring(wStr)) - Length(widestring('탁송)')));
        sTaksong := 'n';
      end else
      if i > 1 then
      begin
        meoStartArea.text := Copy(widestring(wStr), 1, i-1) + Copy(widestring(wStr), i + Length('탁송)') , Length(widestring(wStr)) - i);
				sTaksong := 'n';
			end else
				sTaksong := 'n';

      SetMunuChecked('탁', False);
    end else
    if TAdvGlowButton(Sender).Caption = '정' then
    begin
      i := Pos('정장)', wStr);
      if i = 1 then
      begin
        meoStartArea.text := Copy(wStr, 1 + Length('정장)'), Length(wStr) - Length('정장)'));
      end else
      if i > 1 then
      begin
        meoStartArea.text := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('정장)') , Length(wStr) - i);
      end;
      SetMunuChecked('정', False);
    end else
    if TAdvGlowButton(Sender).Caption = '경' then
    begin
      i := Pos('경유)', wStr);
      if i = 1 then
      begin
        meoStartArea.text := Copy(wStr, 1 + Length('경유)'), Length(wStr) - Length('경유)'));
      end else
      if i > 1 then
      begin
        meoStartArea.text := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('경유)') , Length(wStr) - i);
      end;
      SetMunuChecked('경', False);
    end else
    if TAdvGlowButton(Sender).Caption = '적' then
    begin
      i := Pos('적요)', wStr);
      if i = 1 then
      begin
        meoStartArea.text := Copy(wStr, 1 + Length('적요)'), Length(wStr) - Length('적요)'));
      end else
      if i > 1 then
      begin
        meoStartArea.text := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('적요)') , Length(wStr) - i);
      end;
      SetMunuChecked('적', False);
    end else
    if TAdvGlowButton(Sender).Caption = '스' then
    begin
      i := Pos('스틱)', wStr);
      if i = 1 then
      begin
        meoStartArea.text := Copy(wStr, 1 + Length('스틱)'), Length(wStr) - Length('스틱)'));
        sStickCall := 'n';
      end else
      if i > 1 then
      begin
        meoStartArea.text := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('스틱)') , Length(wStr) - i);
        sStickCall := 'n';
      end;
      SetMunuChecked('스', False);
		end;
	end;
	meoStartArea.SetFocus;
//  meoStartArea.SelStart := Length(meoStartArea.Text);
end;

procedure TFrm_JON01.cxBtnChoiceClick(Sender: TObject);
begin
  // 법인 선택 정보를 보여준다.
  Proc_BubinChoice;
end;

procedure TFrm_JON01.cxBtnCloseClick(Sender: TObject);
begin
  pnlBubin.Visible := False;
end;

procedure TFrm_JON01.cxBtnCuDelClick(Sender: TObject);
begin
  // 권한 적용 (지호 2008-08-19)
  if TCK_USER_PER.JON_CustDel <> '1' then
  begin
    GMessagebox('고객 삭제 권한이 없습니다.', CDMSI);
    Exit;
  end;
  proc_delete_customer;
end;

procedure TFrm_JON01.cxBtnCuNewClick(Sender: TObject);
Var iRow : Integer;
begin
  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);
  
  // 7 : 접수창에서 신규등록 4 : 수정창에서 신규등록
  if (btnCmdUpdSave.Visible) and (btnCmdUpdSave.Enabled) then
  begin
    iRow := Frm_CUT011.cxCustTel.DataController.AppendRecord;
    Frm_CUT011.cxCustTel.DataController.Values[iRow, 0] := strtocall(cxtCuTel.Text);
    Frm_CUT011.cxCustTel.DataController.Values[iRow, 1] := '수신';
    Frm_CUT011.cxCustTel.DataController.Values[iRow, 3] := '해제';
    Frm_CUT011.Tag := 7;
  end else
  if (not btnCmdUpdSave.Visible) then
    Frm_CUT011.Tag := 5;

  Frm_CUT011.FControlInitial(true); // 컨트롤 초기화..
  Frm_CUT011.Hint := IntToStr(Self.Tag);
  Frm_CUT011.clbCuSeq.Caption := '';
  Frm_CUT011.proc_search_brKeyNum(Proc_BRNOSearch, Proc_MainKeyNumberSearch);
	Frm_CUT011.Left := Self.Left - (Frm_CUT011.Width + 1);
  Frm_CUT011.Top  := Self.Top + 100;

  Frm_CUT011.pCUT011Dock.bUnDock := pJON01Dock.bUnDock;
  Frm_CUT011.pCUT011Dock.HdNo    := pJON01Dock.HdNo;
  Frm_CUT011.pCUT011Dock.BrNo    := pJON01Dock.BrNo;
  Frm_CUT011.pCUT011Dock.Gubun   := pJON01Dock.Gubun;
  Frm_CUT011.pCUT011Dock.Idx     := pJON01Dock.Idx;

  Frm_CUT011.Show;
  Frm_CUT011.proc_cust_Intit;
end;

procedure TFrm_JON01.cxBtnCuUpdateClick(Sender: TObject);
begin
  // 권한 적용 (지호 2008-08-19)
  if TCK_USER_PER.COM_CustModify <> '1' then
  begin
    GMessagebox('고객 수정권한이 없습니다.', CDMSI);
    exit;
  end;

  if Pos('*', cxtCuTel.Text) > 0 then
  begin
    GMessageBox('전화번호가 보호된 고객은 수정할 수 없습니다.', CDMSI);
    Exit;
  end;

  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);

  // 6 : 수정창에서 고객수정 4 : 접수창에서 고객수정
  if (btnCmdUpdSave.Visible) and (btnCmdUpdSave.Enabled) then
    Frm_CUT011.Tag := 6
  else
  if (not btnCmdUpdSave.Visible) then
    Frm_CUT011.Tag := 4;

  Frm_CUT011.FControlInitial(true); // 컨트롤 초기화..
  Frm_CUT011.Hint := IntToStr(Self.Tag);
  Frm_CUT011.clbCuSeq.Caption := lcsCu_seq;
  Frm_CUT011.proc_search_brKeyNum(Proc_BRNOSearch, Proc_MainKeyNumberSearch);
	Frm_CUT011.Left := Self.Left - (Frm_CUT011.Width + 1);
  Frm_CUT011.Top  := Self.Top + 100;

  Frm_CUT011.pCUT011Dock.bUnDock := pJON01Dock.bUnDock;
  Frm_CUT011.pCUT011Dock.HdNo    := pJON01Dock.HdNo;
  Frm_CUT011.pCUT011Dock.BrNo    := pJON01Dock.BrNo;
  Frm_CUT011.pCUT011Dock.Gubun   := pJON01Dock.Gubun;
  Frm_CUT011.pCUT011Dock.Idx     := pJON01Dock.Idx;

  Frm_CUT011.Show;
  Frm_CUT011.proc_cust_Intit;
end;

procedure TFrm_JON01.cxBtnSelectClick(Sender: TObject);
begin
  // 법인 정보를 조회한다.
  Proc_BubinListSearch;
end;

procedure TFrm_JON01.cxBtnSpSaveClick(Sender: TObject);
begin
	if (lcsCu_seq <> '') then
  begin
 		// 고객 기본정보를 저장 한다.
  	Proc_CustBasicSave
  end else
	begin
		ShowMessage('신규 미등록 고객은 기본정보를 저장 할 수 없습니다. 고객등록을 먼저 하세요!');
	end;
end;

procedure TFrm_JON01.cxBtnWaitTmRateClick(Sender: TObject);
var
  pt: TPoint;
begin
  GetCursorPos(pt);
  advPMnuWTR.Popup(pt.X, pt.Y);
end;

procedure TFrm_JON01.btnCmdExitClick(Sender: TObject);
begin
  try
  	if (Pos('수정', Self.Caption) = 0 ) and (Pos('조회', Self.Caption) = 0) and (locCardPaySeq <> '') and (not Only_Exit) then
  	begin
  		GMessagebox('카드결재 및 현금영수증 발행 및 쿠폰결재를 한 후에 접수창 종료를 하게되면 ' + #13#10
  							+ '거래내역이 사라지게 됩니다. ' + #13#10
  							+ '최소한 "문의등록" 을 하셔서 거래내역을 보존하세요.' , CDMSI);
  		Exit;
  	end;
    // 종료 시 자동 문의 변경 옵션 처리  20120801  LYB
  	if (Pos('수정', Self.Caption) = 0 ) And GS_JON_AUTOCMDQUESTION and bAUTOCMDQUESTION then
    begin
      if (cxtCuTel.Text = '') and ((cxtCallTelNum.Text = '발신정보없음') or (cxtCallTelNum.Text = '')) then
      begin
        bAUTOCMDQUESTION := False;
  		end else
  		begin
  			bAUTOCMDQUESTION := False;
  			btnCmdQuestionClick(Sender);
  			Exit;
  		end;
    end;

    // DNIS 대표번호 찾기 정보창을 감춘다.  2011.05.17
    shrDNIS_DSP.Visible := False;

  	if (Pos('수정', Self.Caption) > 0 ) then
  	begin
      if btnCmdExit.Hint = 'UPDATE_MODE' then
  		begin // 오더정보 수정모드 설정을 한다.
  			if Length(cxTxtBrNameCaption.Hint) > 18 then
        begin
  				// 오픈된지 1분 지난 수정건에 대해서는 Lock 해제 처리를 하지 않는다.
  				if StrToIntDef(FormatDateTime('hhnnss', (StrToDateTime(cxTxtBrNameCaption.Hint) - now)), 99) < 60 then
          begin
  					if loc_bUpdateLock then
            begin // 수정화면 Lock 설정 여부.[True:설정, False:미설정]
              Proc_AcceptLock('2'); // 해당오더의 Lock을 해제 한다.
            end;
          end;
        end;
      end;
      cxTxtBrNameCaption.Hint := ''; // 수정모드 읽은 최초시간 초기화.
  	end;

    // 접수창을 닫는다.
    Proc_JoinFromClose;

    if Frm_Jon012.Tag = Self.Tag then
    begin
      Frm_Jon012.BtnpnlColorSetClose.Click;
      // 고객이용내역 화면을 닫는다.
      Frm_Jon012.bChkTime := False;
      Frm_Jon012.TmrChkTag.Tag := 100;
      Frm_Jon012.Hide;
    end;

      // 전화번호 위치 조회.
    if Assigned(Frm_COM30) then Frm_COM30.Close;
    if Assigned(Frm_CUT011) then Frm_CUT011.Close;

  	if Assigned(Frm_JON015) and Frm_JON015.HandleAllocated and (Frm_JON015.OrderHandle = Self.Handle) then
      if Frm_JON015.Tag = Self.Tag then Frm_JON015.Close;

    if Assigned(Frm_JON34) then Frm_JON34.Close;

    if Assigned(Frm_JON019) then
      if Frm_JON019.Tag = Self.Tag then Frm_JON019.Close;

    Screen.Cursor := crDefault;

  	sCust_Gubun := '';
    if (not btnCmdUpdSave.Visible) and (btnCmdExit.Tag <> -1) then
    begin
      btnCmdExit.Tag := -1;
    end;

    if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
    begin
     if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
       Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
     else
     if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
       Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
    end;
  except
    on e: exception do
    begin
      Log('btnCmdExitClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnCmdExitClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.btnCmdJoinClick(Sender: TObject);
begin
  try
    if GS_SEARCH_DEST_NOPOI_FALSE then
    begin
      if Trim(meoEndArea.Text) = '' then
      begin
        GMessagebox('[접수] 도착지명이 없으면 접수가 불가능합니다.' + #13#10
                  + '도착지를 입력하세요' + #13#10
                  + '[관련옵션-검색설정] 도착지 미입력시 접수/대기안됨', CDMSI);
        meoEndArea.SetFocus;
  //      meoEndArea.SelStart := Length(meoEndArea.Text);
        Exit;
      end;
    end;

    if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
    begin
      if (lcsCu_seq = '') And (edtPostPay.Value = 0) then
      begin
        GMessagebox('신규고객은 마일리지 사용을 할 수 없습니다.', CDMSI);
        SetPayMethod(PAY_METHOD_MONEY);
        Exit;
      end;
    end;

    // 플러스콜 표준요금을 비교한다. 2010.10.13
    if Not proc_PlusCall_RateYN then
      Exit;

    // 화면닫는 중이면 요청 무시
    if (tmFormClose.Enabled) and (tmFormClose.Tag = 99) and (loc_TmClose = 'CLOSE') then
    begin
      OutputDebugString(PChar(Format('Closing accept window', [])));
      Exit;
    end;

    if btnCmdUpdSave.Visible then
    begin
      if Application.MessageBox('현재 화면은 오더 수정모드 입니다.' + #13#10 + #13#10
        + '수정모드에서 해당 오더를 신규오더로 [접수] 하시겠습니까?',
        '[수정모드]', MB_ICONQUESTION + MB_OKCANCEL) = IDCANCEL then
        Exit;

      // 수정모드에서 신규오더는 쿠폰 정보 저장 않함
      if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
      begin
        locCardPaySeq := '';   // 결제일련번호
        locCardTranNo := '';   // 거래번호
        locCardPayInfo:= '';   // 카드결재 정보
      end;
	  	locCardPaySeq := '';   // 결제일련번호
  		locCardTranNo := '';   // 거래번호
  		locCardPayInfo:= '';   // 결재 정보
    end;

    if (Assigned(Frm_JON015) and Frm_JON015.HandleAllocated) and
       (Frm_JON015.Count > 0) and (Frm_JON015.OrderHandle = Self.Handle)
    then
    begin
      if Application.MessageBox(PChar(Format('%d 건의 복수콜을 접수하시겠습니까?', [Frm_JON015.Count])),
        '복수콜 접수', MB_ICONQUESTION + MB_OKCANCEL) = IDCANCEL then
      begin
        Exit;
      end;
    end;

    // 오더정보 접수 모드 설정을 한다.
    btnCmdExit.Hint := 'INSERT_MODE';
    btnCmdJoinCopy.Hint := ''; // 접수후 복사 기능 설정.
    btnCmdWaitCopy.Hint := ''; // 대기후 복사 기능 설정.

    bAUTOCMDQUESTION := False; // 접수 시 문의 처리 안타게 처리 20120806 LYB
    Only_Exit := True;   //종료버튼 힌트변경됨
    // 오더를 접수등록을 한다.
    Proc_OrderJoinIns;
  Except
    on e: exception do
    begin
      Log('btnCmdJoinClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnCmdJoinClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.btnCmdJoinCopyClick(Sender: TObject);
begin
  try
    if GS_SEARCH_DEST_NOPOI_FALSE then
    begin
      if Trim(meoEndArea.Text) = '' then
      begin
        GMessagebox('[접수후복사] 도착지명이 없으면 접수가 불가능합니다.' + #13#10
                  + '도착지를 입력하세요' + #13#10
                  + '[관련옵션-검색설정] 도착지 미입력시 접수/대기안됨', CDMSI);
        meoEndArea.SetFocus;
  //      meoEndArea.SelStart := Length(meoEndArea.Text);
        Exit;
      end;
    end;

    if btnCmdUpdSave.Visible then
    begin
      if Application.MessageBox('현재 화면은 오더 수정모드 입니다.' + #13#10 + #13#10
        + '수정모드에서 해당 오더를 신규오더로 [접수후복사] 하시겠습니까?',
        '[수정모드]', MB_ICONQUESTION + MB_OKCANCEL) = IDCANCEL then
        Exit;

      // 수정모드에서 신규오더는 쿠폰 정보 저장 않함
      if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
      begin
        locCardPaySeq := '';   // 결제일련번호
        locCardTranNo := '';   // 거래번호
        locCardPayInfo:= '';   // 카드결재 정보
      end;
    end;

    if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
    begin
      if (lcsCu_seq = '') And (edtPostPay.Value = 0) then
      begin
        GMessagebox('신규고객은 마일리지 사용을 할 수 없습니다.', CDMSI);
        SetPayMethod(PAY_METHOD_MONEY);
        Exit;
      end;
    end;

    // 플러스콜 표준요금을 비교한다. 2010.10.13
    if Not proc_PlusCall_RateYN then Exit;

    // 오더정보 접수후복사 모드 설정을 한다.
    btnCmdExit.Hint := 'INSERTCOPY_MODE';
    btnCmdJoinCopy.Hint := 'JOINCOPY'; // 접수후 복사 기능 설정.
    btnCmdWaitCopy.Hint := ''; // 대기후 복사 기능 설정.

    bAUTOCMDQUESTION := False; // 접수후복사 시 문의 처리 안타게 처리 20120806 LYB
    Only_Exit := True;   //종료버튼 힌트변경됨

    // 오더를 접수등록을 한다.
    Proc_OrderJoinIns;
  Except
    on e: exception do
    begin
      Log('btnCmdJoinCopyClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnCmdJoinCopyClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.btnCmdMultiCallClick(Sender: TObject);
var
  sBrNo: string;
  AData: TMultiCallData;
begin
  try
    if GS_SEARCH_DEST_NOPOI_FALSE then
    begin
      if Trim(meoEndArea.Text) = '' then
      begin
        GMessagebox('[복수콜] 도착지명이 없으면 접수가 불가능합니다.' + #13#10
                  + '도착지를 입력하세요' + #13#10
                  + '[관련옵션-검색설정] 도착지 미입력시 접수/대기안됨', CDMSI);
        meoEndArea.SetFocus;
  //      meoEndArea.SelStart := Length(meoEndArea.Text);
        Exit;
      end;
    end;

    // 플러스콜 체크되어 있으면 자동 해제한다.
    if GS_PRJ_AREA = 'S' then
    begin
      if btnPlusYN.Down then
      begin
        btnPlusYN.Down := False;
      end;
    end;

    if not NotNullCheck(True) then Exit;

    if IsPayMethodPost then
    begin
      GMessageBox('후불오더는 복수콜로 등록할 수 없습니다. [접수후복사(Z)]를 이용바랍니다.', CDMSI);
      Exit;
    end;

    if (cxLblCIDUseFlg.Hint <> 'CID') and (gsCuTelHint <> cxtCuTel.Text) then
    begin // CID 조회인지 설정을 한다., 고객전화번호 변경여부를 체크하기 위해 저장한다.
      GMessagebox(
        Format('검색된 [%s]전화번호와 현재 입력된 전화번호[%s]가 다릅니다.', [gsCuTelHint, cxtCuTel.Text]) + #13#10
        + Format('변경한 전화번호로 등록하려면 [%s]전화번호로 조회(엔터) 후에 접수하세요', [cxtCuTel.Text]) + #13#10
        + '[팁]기존 전화번호에 신규번호를 추가(수정)할려면 고객수정 버튼을 클릭 후 신규번호를 추가(수정)하고 저장하세요',
        CDMSI);
      Exit;
    end;


    //--------------------------------------------------------------------------------------------------
    // 접수시 지사캐쉬 체크(캐쉬가 없어도 후불로 접수할수 있음)
    //--------------------------------------------------------------------------------------------------
    if IsPayMethodPost then // 후불오더 캐쉬부족 체크..
    begin
      sBrNo := Proc_BRNOSearch;
      if not Frm_main.func_brcash_check(sBrNo, StrToIntDef(FloatToStr(curRate.Value), 0)) then
      begin
        GMessagebox('지사캐쉬가 부족하여 후불로 접수할 수 없습니다.', cdmsi);
        exit;
      end;
    end;

    if not Assigned(Frm_JON015) or not Frm_JON015.HandleAllocated then
    begin
      Frm_JON015 := TFrm_JON015.Create(Self);
      Frm_JON015.Tag  := Self.Tag;
      Frm_JON015.Left := Self.Left - (Frm_JON015.Width + 1);
      Frm_JON015.Top  := meoStartArea.ClientOrigin.Y;
    end else
    begin
      if Frm_JON015.OrderHandle <> Self.Handle then
      begin
        GMessagebox('복수콜은 동시에 접수할 수 없습니다.' + #13#10
          + '(다른 복수콜을 먼저 접수하시고 시도해주세요.)', CDMSI);
        Exit;
      end;
    end;

    bAUTOCMDQUESTION := False; // 복수콜 시 문의 처리 안타게 처리 20120806 LYB

    AData.StArea1 := lcsSta1;
    AData.StArea2 := lcsSta2;
    AData.StArea3 := lcsSta3;
    AData.StArea4 := cxtStartAreaDetail.Text;
    AData.StArea5 := meoStartArea.Text;

    AData.EdArea1 := lcsEnd1;
    AData.EdArea2 := lcsEnd2;
    AData.EdArea3 := lcsEnd3;
    AData.EdArea4 := cxtEndAreaDetail.Caption;
    AData.EdArea5 := meoEndArea.Text;

    AData.Price   := StrToIntDef(ReplaceAll(curRate.Text, ',', ''), 0);
    AData.Km      := fCruKm;
    AData.Summary := meoBigo.Text;
    AData.PayType := cbbPayMethod.Text;

    AData.StPosX  := cxtStartXval.Text;
    AData.StPosY  := cxtStartYval.Text;
    AData.EdPosX  := cxtEndXval.Text;
    AData.EdPosY  := cxtEndYval.Text;
    AData.CorpYN  := False;
    AData.PriceYN := chkNoSet.Down;

    if Frm_JON015.AddMultiCallData(Self.Handle, AData) then
    begin
      // Editor clear
      meoEndArea.Clear;
      lcsEnd1 := '';
      lcsEnd2 := '';
      lcsEnd3 := '';
      cxtEndAreaDetail.Clear;
      lblEndAreaName.Clear;
      cxReEndArea.Clear;

      cxtEndXval.Clear;
      cxtEndYval.Clear;

      pnl_charge.Caption := '';
      Lbl_Distance.Caption := '';

      if gsMyRateRemarkMaintain = 'FALSE' then curRate.Clear;
      curKm.Clear;
      fCruKm := 0;
      fChgKm := 0;
      fDirKm := 0;
      fViaKm := 0;
      if gsMyRateRemarkMaintain = 'FALSE' then meoBigo.Clear;

      Frm_JON015.Show;

      meoEndArea.SetFocus;
  //    meoEndArea.SelStart := Length(meoEndArea.Text);
    end else
    begin
      GMessagebox('복수콜 접수를 실패 했습니다.', CDMSI);
    end;
  Except
    on e: exception do
    begin
      Log('btnCmdMultiCallClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnCmdMultiCallClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.btnCmdNoSMSClick(Sender: TObject);
var sRequest : string;
    sURL, sURL1 : AnsiString;
begin
	if (FileExists('C:\Billit\Bix\Bix.hta')) and (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
	begin
		Try
			sURL := 'http://%s/Mon/addBlackList?listid=3&kind=BAD&tel=%s&dt=%s&userid=%s';
			sURL1 := Format(sURL, [BILLIT_IP, UTF8Encode(cxtCuTel.Text), UTF8Encode(copy(frm_Main.func_sysdate,1,8)), UrlEncode(UTF8Encode(BILLIT_ID))]); //IP, BAD번호, 일자, UserID
			Log('BAD sURL1: ' +  sURL1 , LOGDATAPATHFILE);
			sRequest := Frm_Main.IdHTTPBix.Get(sURL1);
			Log('BAD Request: ' +  sRequest , LOGDATAPATHFILE);
		except
			Log('mniN1Click error', LOGDATAPATHFILE);
		end;
	end	else
	begin
    // 오더정보 수신거부 모드 설정을 한다.
    btnCmdExit.Hint := 'NOSMSINSERT_MODE';
    btnCmdJoinCopy.Hint := ''; // 접수후 복사 기능 설정.
    btnCmdWaitCopy.Hint := ''; // 대기후 복사 기능 설정.

    //locJoinGubun := 2;          // 오더 접수구분:: 1=문의, 2=수신거부
    lg_Save := '1';
    // 오더 수신거부 등록을 한다.
    Proc_OrderSMSRecvNo;
  end;
end;

// 오더 수신거부 등록을 한다.
procedure TFrm_JON01.Proc_OrderSMSRecvNo;
begin
  if not NotNullCheck then Exit;

  if IsPayMethodPost then // 후불오더 캐쉬부족 체크..
  begin
    locBrNo := Proc_BRNOSearch;
    if not frm_main.func_brcash_check(locBrNo, StrToIntDef(FloatToStr(curRate.Value), 0)) then
    begin
      GMessagebox('지사캐쉬가 부족하여 후불로 접수할 수 없습니다.', cdmsi);
      exit;
    end;
  end;

  if cxLblCIDUseFlg.Hint <> 'CID' then
  begin // CID 조회인지 설정을 한다.
    if gsCuTelHint <> cxtCuTel.Text then
      // 고객전화번호 변경여부를 체크하기 위해 저장한다.
    begin
      GMessagebox(Format('검색된 [%s]전화번호와 현재 입력된 전화번호[%s]가 다릅니다.', [gsCuTelHint, cxtCuTel.Text]) + #13#10 +
        Format('변경한 전화번호로 등록하려면 [%s]전화번호로 조회(엔터) 후에 접수하세요', [cxtCuTel.Text]) + #13#10
        + '[팁]기존 전화번호에 신규번호를 추가(수정)할려면 고객수정 버튼을 클릭 후 신규번호를 추가(수정)하고 저장하세요', CDMSI);
      Exit;
    end;
  end;

  lg_Save := '1';
  Proc_Save('S');

  if (not btnCmdUpdSave.Visible) and (btnCmdExit.Tag <> -1) then
  begin
    btnCmdExit.Tag := -1;
  end;
end;

procedure TFrm_JON01.btnCmdQuestionClick(Sender: TObject);
begin
  // 플러스콜 체크되어 있으면 자동 해제한다.
  try
    if GS_PRJ_AREA = 'S' then
    begin
      if BtnPlusYN.Down then
      begin
        BtnPlusYN.Down := False;
      end;
    end;

    // 오더정보 수정모드 설정을 한다.
    btnCmdExit.Hint := 'QUESTINSERT_MODE';
    btnCmdJoinCopy.Hint := ''; // 접수후 복사 기능 설정.
    btnCmdWaitCopy.Hint := ''; // 대기후 복사 기능 설정.

    bAUTOCMDQUESTION := False; // 문의 시 문의 처리 안타게 처리 20120806 LYB
  	Only_Exit := True;   //종료버튼 힌트변경됨

    lg_Save := '1';
    // 오더를 문의로 접수 한다.
    Proc_OrderQuesJoinIns;
  except
    on e: exception do
    begin
      Log('btnCmdQuestionClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnCmdQuestionClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.btnCmdUpdSaveClick(Sender: TObject);
var
  Status, msg: string;
begin
  try
  	// 수정을 클릭.
    if btnCmdUpdSave.Tag = 99 then
    begin // 수정 할 수 없음.
      GMessagebox('이용한지 24시간이 지난 오더는 수정 할 수 없고, 내용만 볼 수 있습니다.', CDMSI);
      Exit;
    end;

    if (cxtCuTel.Text <> locsCuTelTxtBoxVal) then
    begin
      GMessagebox('수정모드에서는 [전화번호1]을 수정 할 수 없습니다.', CDMSI);
      Self.cxtCuTel.SetFocus;
      Exit;
    end;

    // 오더정보 수정모드 설정을 한다.
  	btnCmdExit.Hint := 'UPDATE_MODE';

    Status := '';
  	if (cxtJoinNum.Hint = '5') and ( BtnResv.Tag = 1 ) then
    begin
      msg := '대기오더에 예약시간을 넣으면 예약으로 변경됩니다.'#13#10'예약으로 변경하시겠습니까?'#13#10#13#10
        + '([예] 예약으로 저장, [아니오] 대기로 저장)';
      if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO +
        MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
      begin
        Status := 'R';
      end;
    end;

    if ((Pos('수정', Self.Caption) > 0 ) and (cxtJoinNum.Hint[1] in ['2', '4', '8'])) // 수정[완료/문의/취소] 건 경우
   and (    (cxtStartXval.Text <> cxtStartXval.Hint) or (cxtStartYval.Text <> cxtStartYval.Hint)
            or (cxtEndXval.Text <> cxtEndXval.Hint) or (cxtEndYval.Text <> cxtEndYval.Hint))  // 좌표변환이 있었을경우
      and (not FIsCalcPrice)
    then
    begin
      msg := '출발지/도착지정보가 변경되었으나, 요금은 재계산되지 않았습니다.'#13#10
        + '(수정[완료/취소/문의]오더는 요금항목을 선택하여 수동요금계산 바랍니다.)'#13#10#13#10
        + '요금 변경없이 저장 하시겠습니까?';

      if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO +
        MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
      begin
        curRate.SetFocus;
        Exit;
      end;
    end;

    // 플러스콜로 등록되었는데, 수정시 플러스콜여건이 안되면 해제
    if btnPlusYN.Down then
      if proc_PlusCall_RateYN=false then Exit;

    // 조회 한 오더 정보를 수정 한다. : DB Update~~
    Proc_OrderUpdateSave(Status);
  Except
    on e: exception do
    begin
      Log('btnCmdUpdSaveClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnCmdUpdSaveClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.btnCmdWaitClick(Sender: TObject);
begin
  try
    if GS_SEARCH_DEST_NOPOI_FALSE then
    begin
      if Trim(meoEndArea.Text) = '' then
      begin
        GMessagebox('[대기] 도착지명이 없으면 대기접수가 불가능합니다.' + #13#10
                  + '도착지를 입력하세요' + #13#10
                  + '[관련옵션-검색설정] 도착지 미입력시 접수/대기안됨', CDMSI);
        if meoEndArea.CanFocus then meoEndArea.SetFocus;
        Exit;
      end;
    end;

    if btnCmdUpdSave.Visible then
    begin
      if Application.MessageBox('현재 화면은 오더 수정모드 입니다.'#13#10#13#10
        + '수정모드에서 해당 오더를 신규오더로 [대기] 접수 하시겠습니까?',
        '[수정모드]', MB_ICONQUESTION + MB_OKCANCEL) = IDCANCEL then
        Exit;

      // 수정모드에서 신규오더는 쿠폰 정보 저장 않함
      if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
      begin
        locCardPaySeq := '';   // 결제일련번호
        locCardTranNo := '';   // 거래번호
        locCardPayInfo:= '';   // 카드결재 정보
      end;
    end;

    // 플러스콜 표준요금을 비교한다. 2010.10.13
    if Not proc_PlusCall_RateYN then
      Exit;

    // 오더정보 대기접수 모드 설정을 한다.
    btnCmdExit.Hint := 'WAITINSERT_MODE';
    btnCmdJoinCopy.Hint := ''; // 접수후 복사 기능 설정.
    btnCmdWaitCopy.Hint := ''; // 대기후 복사 기능 설정.

    bAUTOCMDQUESTION := False; // 대기 시 문의 처리 안타게 처리 20120806 LYB
    Only_Exit := True;   //종료버튼 힌트변경됨

    // 오더를 대기로 접수 한다.
    Proc_OrderWaitJoinIns;
  Except
    on e: exception do
    begin
      Log('btnCmdWaitClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnCmdWaitClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.btnCmdWaitCopyClick(Sender: TObject);
begin
  try
  	if GS_SEARCH_DEST_NOPOI_FALSE then
  	begin
  		if Trim(meoEndArea.Text) = '' then
  		begin
  			GMessagebox('[대기후복사] 도착지명이 없으면 대기접수가 불가능합니다.' + #13#10
  								+ '도착지를 입력하세요' + #13#10
  								+ '[관련옵션-검색설정] 도착지 미입력시 접수/대기안됨', CDMSI);
  			meoEndArea.SetFocus;
  			Exit;
  		end;
  	end;

    if btnCmdUpdSave.Visible then
    begin
      if Application.MessageBox('현재 화면은 오더 수정모드 입니다.' + #13#10 +
        #13#10 + '수정모드에서 해당 오더를 신규오더로 [대기후복사] 하시겠습니까?',
        '[수정모드]', MB_ICONQUESTION + MB_OKCANCEL) = IDCANCEL then
        Exit;

      // 수정모드에서 신규오더는 쿠폰 정보 저장 않함
      if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
      begin
        locCardPaySeq := '';   // 결제일련번호
        locCardTranNo := '';   // 거래번호
      	locCardPayInfo:= '';   // 카드결재 정보
      end;
    end;

    // 플러스콜 표준요금을 비교한다. 2010.10.13
    if Not proc_PlusCall_RateYN then  Exit;

    // 오더정보 대기후복사 모드 설정을 한다.
  	btnCmdExit.Hint := 'WAITINSERTCOPY_MODE';
  	btnCmdJoinCopy.Hint := ''; // 접수후 복사 기능 설정.
    btnCmdWaitCopy.Hint := 'JOINCOPY'; // 접수후 복사 기능 설정.

    bAUTOCMDQUESTION := False; // 대기후복사 시 문의 처리 안타게 처리 20120806 LYB
  	Only_Exit := True;   //종료버튼 힌트변경됨

    // 오더를 대기로 접수 한다.
    Proc_OrderWaitJoinIns;
  Except
    on e: exception do
    begin
      Log('btnCmdWaitCopyClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnCmdWaitCopyClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.BtnCuSmsNoClick(Sender: TObject);
begin
  if Trim(cxtCuTel.Text) = '' then
  begin
    BtnCuSmsNo.Down := False;
    Exit;
  end;

	if (lcsCu_seq <> '') then
  begin
    Proc_CustSMSSave;
  end else
  begin
		ShowMessage('신규 미등록 고객은 SMS거부를 접수 전에 저장 할 수 없습니다.');
  end;
end;

procedure TFrm_JON01.BtnCustAddClick(Sender: TObject);
var
  sBrNo, sKeyNum, sSeq, sCustTel: string;
begin
  if Length(Proc_HDNOSearch) < 3 then
  begin
    ShowMessage('지사정보를 선택하지 않았습니다. 지사를 선택 한 후에 오더접수를 하세요!');
    Exit;
  end;
  if (cxtCuTel.Text = '') and ((cxtCallTelNum.Text = '발신정보없음') or (cxtCallTelNum.Text = '')) then
  begin
    GMessagebox('고객번호는 ' + MDXCI_0005, CDMSI);
    Self.cxtCuTel.SetFocus;
    Exit;
  end;

  if TCK_USER_PER.COM_CustModify <> '1' then
  begin
    GMessagebox('고객 수정권한이 없습니다.', CDMSI);
    exit;
  end;

  sBrNo   := Proc_BRNOSearch;
  sKeyNum := Proc_MainKeyNumberSearch;
  sSeq    := lcsCu_seq;
  sCustTel:= locsCuTel;

  try
    if ( not Assigned(Frm_CUT012) ) Or ( Frm_CUT012 = Nil ) then Frm_CUT012 := TFrm_CUT012.Create(Self);
    Frm_CUT012.Show(sBrNo, sKeyNum, sSeq, sCustTel);
  Except
  end;
end;

procedure TFrm_JON01.BtnStLockClick(Sender: TObject);
begin
    if Not BtnStLock.Down then
    begin
      BtnStLock.Hint := 'F4)수정';
      BtnStLock.Tag  := 0;
      BtnStLock.OptionsImage.ImageIndex := 0;
			Frm_JON30.N1.Enabled := True;
			Frm_JON30.N1.Caption := '출발지선택(좌표만이동)';
      Frm_JON30.N6.Enabled := True;
      Frm_JON30.N6.Caption := '출발지선택(주소+좌표이동)';
    end else
    begin
      BtnStLock.Hint := 'F4)잠금';
      BtnStLock.Tag  := 0;
      BtnStLock.OptionsImage.ImageIndex := 1;
      Frm_JON30.N1.Enabled := False;
      Frm_JON30.N1.Caption := '출발지선택(좌표만이동)-잠금상태';
      Frm_JON30.N6.Enabled := False;
      Frm_JON30.N6.Caption := '출발지선택(주소+좌표이동)-잠금상태';
    end;
end;

procedure TFrm_JON01.BtnViaAddClick(Sender: TObject);
Var iHeight : Integer;
begin
  if ViaADDTag < 5 then
  begin
    iHeight := Self.Height + 22;
    Self.Height := iHeight;

    ViaADDTag := ViaADDTag + 1;

  	if ViaADDTag = 1 then meoViaArea1.SetFocus else
  	if ViaADDTag > 1 then meoViaArea[ViaADDTag].SetFocus;
  end else
    meoViaArea[ViaADDTag].SetFocus;
end;

procedure TFrm_JON01.btn2Click(Sender: TObject);
begin
	pnlCustAppinfo.Visible := False;
end;

procedure TFrm_JON01.btnAddBigoClick(Sender: TObject);
begin
  pmBigo.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_JON01.btnBtnTelNECloseClick(Sender: TObject);
begin
  pnlTelNESearch.Visible := False;
  if Assigned(Frm_COM30) then Frm_COM30.Close;
end;

procedure TFrm_JON01.btnBtnTelNESelectClick(Sender: TObject);
begin
  // 전화번호 로 위경도 좌표값 검색 한다..
  Proc_TellNumSearchNEData;
end;

procedure TFrm_JON01.BtnCall2Click(Sender: TObject);
begin
  pCall_Cust(cxtCuTel2.Text);
end;

procedure TFrm_JON01.BtnCallClick(Sender: TObject);
begin
  if Pos('*', cxtCuTel.Text) > 0  then
    pCall_Cust(cxtCallTelNum.Text)
  else
    pCall_Cust(cxtCuTel.Text);
end;

procedure TFrm_JON01.pCall_Cust(sCtHp: string);
var vCustTel, vKeyNum : String;
begin
  if sCtHp = '' then
  begin
    Application.MessageBox('고객님의 전화번호을(를) 입력하세요', '알림', MB_OK);
    Exit;
  end;

  vKeyNum  := Proc_MainKeyNumberSearch;
  vCustTel := StringReplace(sCtHp, '-', '', [rfReplaceAll]);

  Log('대표번호:' + vKeyNum + ' - 고객번호:' + vCustTel, LOGDATAPATHFILE);

  Frm_Main.pCallingCID(vCustTel, vKeyNum);
end;

procedure TFrm_JON01.BtnCloseClick(Sender: TObject);
begin
  btnCmdExit.Click;
end;

procedure TFrm_JON01.btnEpopClick(Sender: TObject);
begin
  pmEpop.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_JON01.btnMileOutClick(Sender: TObject);
var
	sCurMlg, sPrzCnt: string;
begin
  if Trim(cxtCuTel.Text) = '' then Exit;

  // 마일리지 지급 현황 띄우기..
  if Not Assigned(Frm_COM40) then Frm_COM40 := TFrm_COM40.Create(Self);

  try
    Frm_COM40.Tag := Self.Tag;
    Frm_COM40.SetCuProduct(SProdName, 0);
		Frm_COM40.clbCuSeq.Caption := Self.lcsCu_seq;
		Frm_COM40.CB_Gubun.ItemIndex := 0;
    sCurMlg := lblCuMile.Caption;
    sCurMlg := StringReplace(sCurMlg, ',', '', [rfReplaceAll]);
		if sCurMlg = '' then
			sCurMlg := '0';
    sPrzCnt := lblCuMileCnt.Caption;
    sPrzCnt := StringReplace(sPrzCnt, ',', '', [rfReplaceAll]);
		if sPrzCnt = '' then
      sPrzCnt := '0';
    Frm_COM40.curCurrent.Caption := sCurMlg;            // 20130703  LYB 수정
    Frm_COM40.curPrzCnt.Caption := sPrzCnt;
    Frm_COM40.proc_search;

    Frm_COM40.Show;
  except
  end;
end;

procedure TFrm_JON01.btnNewClick(Sender: TObject);
begin
  Frm_Main.Proc_JoinFromView(Jon03Tag);
end;

procedure TFrm_JON01.BtnOptionCallMuClick(Sender: TObject);
begin
  AddSpop('콜무',96);
end;

procedure TFrm_JON01.BtnOptionSexFClick(Sender: TObject);
begin
  if BtnOptionSexF.Down then BtnOptionSexM.Down := False;
end;

procedure TFrm_JON01.BtnOptionSexMClick(Sender: TObject);
begin
  if BtnOptionSexM.Down then BtnOptionSexF.Down := False;
end;

procedure TFrm_JON01.btnPickupInsertClick(Sender: TObject);
var
  CustTel, WkSabun, HdNo, BrNm: string;
begin
  if Application.MessageBox('픽업등록 하시겠습니까?', CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then Exit;

  try
    WkSabun   := locWkSabun;
    CustTel   := cxtCuTel.Text;
    BrNm      := locWkBrNo;
    HdNo      := '';

    if WkSabun = '' then
    begin
      BrNm := Proc_BrNameReadSearch;
      if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        HdNo := pJON01Dock.HDNO
      else
        HdNo := GT_USERIF.HD
    end;

    try
      if Not Assigned(Frm_WOR11) then Frm_WOR11 := TFrm_WOR11.Create(Nil);
      if Frm_WOR11.UpdatePickupData(
        '',                 // ASeq,
        'C',                // AAction,
        '',                 // AStatus,
        WkSabun,            // AWkSabun,
        HdNo,               // AHdNo,
        BrNm,               // ABrNm,
        CustTel,            // APhone
        lcsSta1,
        lcsSta2,
        lcsSta3,
        meoStartArea.Text,
        lcsEnd1,
        lcsEnd2,
        lcsEnd3,
        meoEndArea.Text,
        cxtStartXval.Text,
        cxtStartYval.Text,
        cxtEndXval.Text,
        cxtEndYval.Text
      ) then
      begin
        GMessagebox('픽업 등록 되었습니다.', CDMSI);
        btnCmdExitClick(Self);
      end;
    finally
      Frm_WOR11.Close;
      Frm_WOR11.Free;
    end;
  Except
    on e: exception do
    begin
      Log('btnPickupInsertClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnPickupInsertClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.BtnResJClick(Sender: TObject);
begin
  fGetDiffDay( FormatDateTime('YYYYMMDD', dtpResvDate.Date) + FormatDateTime('HHNN00', dtpResvTime.Time) );
end;

procedure TFrm_JON01.BtnResvClick(Sender: TObject);
var
 BitMap1 : TBitMap;
 sTmp : String;
begin
  if ( FormatDateTime('YYYY-MM-DD', dtpResvDate.Date) + ' ' + FormatDateTime('HH:NN:SS', dtpResvTime.Time) )  < FormatDateTime('YYYY-MM-DD HH:NN:SS', Now) then
  begin
    ShowMessage('과거날짜로는 예약할 수 없습니다');
    BtnResv.Tag := 0;
    Exit;
  end;

  BitMap1 := TBitMap.Create;
  try
    BitMap1.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Image\Alarm.bmp');
    BtnResvView.OptionsImage.Glyph := BitMap1;
  finally
    BitMap1.Free;
  end;

  sTmp := FormatDateTime('YYYY-MM-DD', dtpResvDate.Date) + ' ' + FormatDateTime('HH:NN:SS', dtpResvTime.Time);
  if BtnResJ.Down then sTmp := sTmp + ' [접수] 상태로 예약' else
  if BtnResD.Down then sTmp := sTmp + ' [대기] 상태로 예약';

  BtnResvView.Hint := sTmp;
  BtnResvView.ShowHint := True;

  BtnResv.Tag := 1;
  cxGbReserv.Visible := False;
end;

procedure TFrm_JON01.BtnResvCslClick(Sender: TObject);
begin
  BtnResvView.OptionsImage.Glyph := Nil;
  BtnResv.Tag := 0;
  cxGbReserv.Visible := False;
  BtnResvView.ShowHint := False;
end;

procedure TFrm_JON01.btnSBigo1Click(Sender: TObject);
begin
  pmSpop.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_JON01.btnSCloseClick(Sender: TObject);
begin
  GBStartXYView.Visible := False;
end;

procedure TFrm_JON01.btnStartLocalSaveClick(Sender: TObject);
begin
	// 로컬에 사용자 맵정보를 저장한다.
	if TCK_USER_PER.JON_LocalMap <> '1' then
	begin
    GMessagebox('권한이 없습니다',CDMSI);
		exit;
  end;
	proc_Save_Area(0) // 출발지 저장.
end;

procedure TFrm_JON01.BtnViaMinus1Click(Sender: TObject);
Var iHeight, i, iTag, j : Integer;
begin
  try
    if GbViaArea.Height < 10 then Exit;

    iTag := TcxButton(sender).Tag;
    if ViaADDTag < 1 THEN ViaADDTag := 1;

    // 경유지 삭제 자료 초기화
    Via_Info[iTag].ViaSA1 := '';
    Via_Info[iTag].ViaSA2 := '';
    Via_Info[iTag].ViaSA3 := '';
    Via_Info[iTag].ViaAreaDetail := '';
    Via_Info[iTag].DocId  := '';
    Via_Info[iTag].CellSel  := '';
    Via_Info[iTag].SchWord  := '';
    Via_Info[iTag].XposVia := '';
    Via_Info[iTag].YposVia := '';

    // 경유지 화면 표시 내역 삭제
    for i := 1 to 5 do
    begin
      if i = 1 then
      begin
        meoViaArea1.Text := '';
        cxViaAreaName1.Caption := '';
      end else
      begin
        meoViaArea[i].Text := '';
        cxViaAreaName[i].Caption := '';
      end;
    end;

    // 경유지 정보 임시 자료 저장
    for i := 1 to 5 do
    begin
      Via_Temp[i].ViaSA1        := Via_Info[i].ViaSA1;
      Via_Temp[i].ViaSA2        := Via_Info[i].ViaSA2;
      Via_Temp[i].ViaSA3        := Via_Info[i].ViaSA3;
      Via_Temp[i].ViaAreaDetail := Via_Info[i].ViaAreaDetail;
      Via_Temp[i].DocId         := Via_Info[i].DocId;
      Via_Temp[i].CellSel       := Via_Info[i].CellSel;
      Via_Temp[i].SchWord       := Via_Info[i].SchWord;
      Via_Temp[i].XposVia       := Via_Info[i].XposVia;
      Via_Temp[i].YposVia       := Via_Info[i].YposVia;
    end;

    // 경유지 기존 정보 삭제
    for i := 1 to 5 do
    begin
      Via_Info[i].ViaSA1        := '';
      Via_Info[i].ViaSA2        := '';
      Via_Info[i].ViaSA3        := '';
      Via_Info[i].ViaAreaDetail := '';
      Via_Info[i].DocId         := '';
      Via_Info[i].CellSel       := '';
      Via_Info[i].SchWord       := '';
      Via_Info[i].XposVia       := '';
      Via_Info[i].YposVia       := '';
    end;

    j := 1;
    for i := 1 to 5 do
    begin
      if Via_Temp[i].ViaSA1 <> '' then
      begin
        Via_Info[j] .ViaSA1        := Via_Temp[i].ViaSA1;
        Via_Info[j] .ViaSA2        := Via_Temp[i].ViaSA2;
        Via_Info[j] .ViaSA3        := Via_Temp[i].ViaSA3;
        Via_Info[j] .ViaAreaDetail := Via_Temp[i].ViaAreaDetail;
        Via_Info[j] .DocId         := Via_Temp[i].DocId;
        Via_Info[j] .CellSel       := Via_Temp[i].CellSel;
        Via_Info[j] .SchWord       := Via_Temp[i].SchWord;
        Via_Info[j] .XposVia       := Via_Temp[i].XposVia;
        Via_Info[j] .YposVia       := Via_Temp[i].YposVia;
        Inc(j);
      end;
    end;

    for i := 1 to 5 do
    begin
      if i = 1 then
      begin
        meoViaArea1.Text := Via_Info[i].ViaAreaDetail;
        cxViaAreaName1.Caption := Via_Info[i].ViaSA1 + ' ' + Via_Info[i].ViaSA2 + ' '+ Via_Info[i].ViaSA3;
      end else
      begin
        meoViaArea[i].Text := Via_Info[i].ViaAreaDetail;
        cxViaAreaName[i].Caption := Via_Info[i].ViaSA1 + ' ' + Via_Info[i].ViaSA2 + ' '+ Via_Info[i].ViaSA3;
      end;
    end;

  //  if ViaADDTag >= 0 then
      ViaADDTag := ViaADDTag - 1;

    ViaOK;

    iHeight := Self.Height - 22;
    Self.Height := iHeight;

    if ViaADDTag = 1 then meoViaArea1.SetFocus else
    if ViaADDTag > 1 then	meoViaArea[ViaADDTag].SetFocus;
  Except
    on e: exception do
    begin
      Log('BtnViaMinus1Click Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'BtnViaMinus1Click Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.btn_ChargeSaveClick(Sender: TObject);
var
  msg: string;
begin
  try
    if (cxtStartYval.Text = '') or (cxtEndYval.Text = '') then
    begin
      GMessageBox('출발지/도착지를 검색하여야 요금 저장이 가능합니다.', CDMSI);
      Exit;
    end;

    if gsMyMainTelUse = 'TRUE' then
    begin
      GMessageBox('대표번호 별 기본요금 강제적용 상태에서는 요금저장 할 수 없습니다.', CDMSI);
      Exit;
    end;

    if (CHARGE_GUBUN = 'P') and (GS_EXEC_GUBUN = 0) then
    begin
      msg := '콜마너 프로그램 동시 실행 시 나중에 실행된 프로그램에서는 발신번호(CID), 로컬요금DB 연동이 제한 됩니다.' + #13#10 + #13#10
           + '먼저 실행한 프로그램을 통해 이용바랍니다.';
      GMessageBox(msg, CDMSI);
      Exit;
    end;


    if not Assigned(Frm_JON018) then Frm_JON018 := TFrm_JON018.Create(Nil);
    Frm_JON018.Left := Self.ClientOrigin.X - Frm_JON018.Width;
    Frm_JON018.Top := Self.ClientOrigin.Y;
    Frm_JON018.cxTreeFirstDetail.Root.TreeList.Clear;
    if (GS_Grid_DEP = 'D') or (GS_Grid_DES = 'D') then
    begin
      if (GS_Grid_DEP = 'D')  and (GS_Grid_DES <> 'D') then
        Frm_JON018.LoadCharge(FType, Proc_MainKeyNumberSearch, lcsSta1, lcsSta2, lcsSta3, '', cxtStartXval.Text, cxtStartYval.Text
                                                     , lcsEnd1, lcsEnd2, lcsEnd3, meoEndArea.Text, cxtEndXval.Text, cxtEndYval.Text, Ceil(fCruKm))
      else
      if (GS_Grid_DEP <> 'D') and (GS_Grid_DES = 'D') then
        Frm_JON018.LoadCharge(FType, Proc_MainKeyNumberSearch, lcsSta1, lcsSta2, lcsSta3, meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text
                                                     , lcsEnd1, lcsEnd2, lcsEnd3, '', cxtEndXval.Text  , cxtEndYval.Text, Ceil(fCruKm))
      else
      if (GS_Grid_DEP = 'D')  and (GS_Grid_DES = 'D')  then
        Frm_JON018.LoadCharge(FType, Proc_MainKeyNumberSearch, lcsSta1, lcsSta2, lcsSta3, '', cxtStartXval.Text, cxtStartYval.Text
                                                     , lcsEnd1, lcsEnd2, lcsEnd3, '', cxtEndXval.Text  , cxtEndYval.Text, Ceil(fCruKm))
    end
    else
      Frm_JON018.LoadCharge(FType, Proc_MainKeyNumberSearch, lcsSta1, lcsSta2, lcsSta3, meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text
                                                   , lcsEnd1, lcsEnd2, lcsEnd3, meoEndArea.Text  , cxtEndXval.Text  , cxtEndYval.Text, Ceil(fCruKm));


    Frm_JON018.Show;
  Except
    on e: exception do
    begin
      Log('btn_ChargeSaveClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btn_ChargeSaveClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.cxBubinViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  // 법인 선택 정보를 보여준다.
  Proc_BubinChoice;
end;

procedure TFrm_JON01.cxBubinViewKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    if cxBubinView.DataController.FocusedRecordIndex = -1 then
      exit;
    if Key = VK_RETURN then
    begin
      Key := 0;
      // 법인 선택 정보를 보여준다.
      Proc_BubinChoice;
    end else
    if Key = VK_UP then
    begin
      if cxGrdBubin.Tag = -1 then
      begin
        cxGrdBubin.Tag := 0;
        cxtBubinSearchName.SetFocus;
      end else
      if cxBubinView.DataController.FocusedRecordIndex = 0 then
      begin
        cxGrdBubin.Tag := -1;
      end else
      begin
        cxGrdBubin.Tag := 0;
      end;
    end else
    if Key = VK_DOWN then
    begin
      if cxGrdBubin.Tag = -2 then
      begin
        cxGrdBubin.Tag := 0;
        cxtBubinSearchName.SetFocus;
      end else
      if cxBubinView.DataController.FocusedRecordIndex =
        (cxBubinView.DataController.RecordCount - 1) then
      begin
        cxGrdBubin.Tag := -2;
      end else
      begin
        cxGrdBubin.Tag := 0;
      end;
    end;
  Except
    on e: exception do
    begin
      Log('cxBubinViewKeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'cxBubinViewKeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.cxButton1Click(Sender: TObject);
begin
  if Trim(cxtCuTel.Text) = '' then Exit;

  try
    if Frm_JON012.Tag <> Self.Tag then
    begin
      // 현재 할당된 폼 배열값을 저장.(현재 조회한 고객 데이터가 있는지 여부를 체킹)
      // 고객 이용내역을 그리드에 보여준다.
      Proc_CustOrderListView;
      Proc_WorkListView('');
    end else
      // 고객 이용내역을 띄워준다.
      Proc_Jon012Show;
  except

  end;
end;

procedure TFrm_JON01.cxButton2Click(Sender: TObject);
begin
  pnlOrderInfoView.Visible := False;
end;

procedure TFrm_JON01.cxButton3Click(Sender: TObject);
begin
  tmrThRealDis.Tag := 0;
  tmrDistance.Enabled := True;
end;

procedure TFrm_JON01.BtnSmartRateClick(Sender: TObject);
var oOderWorker, oWeather, oType : string;
   ln_Env : TIniFile;
begin
  try
    if ( Trim(cxtStartYval.Text) = '' ) Or ( Trim(cxtEndYval.Text) = '' ) then Exit;

    ln_Env := TIniFile.Create(ENVPATHFILE);
    try
      GT_AutoSmartCharge  := ln_Env.ReadBool('SmartOption', 'AutoSmartCharge',  False );
      GT_PopUpSmartCharge := ln_Env.ReadBool('SmartOption', 'PopUpSmartCharge', False );
      GT_RealTimeWorker   := ln_Env.ReadBool('SmartOption', 'RealTimeWorker',   False );
      GT_RealTimeWeather  := ln_Env.ReadBool('SmartOption', 'RealTimeWeather',  False );
      GT_Smart_Section    := ln_Env.ReadString('SmartOption', 'SmartSection',   '0' );
		finally
			FreeAndNil(ln_Env);
		end;
    if not Assigned(frm_Jon019) then frm_Jon019 := Tfrm_Jon019.Create(Nil);

    if GT_RealTimeWorker then oOderWorker := '0'
    else oOderWorker := '1';
    if GT_RealTimeWeather then oWeather := '0'
    else oWeather := '1';
    //출발지 시도      lcsSta1
    //출발지 시군구    lcsSta2
    //출발지 읍면동    lcsSta3
    //출발지 세부명칭  cxtStartAreaDetail.Text
    //출발지 X         cxtStartXval.Text
    //출발지 Y         cxtStartYval.Text
    //도착지 시도      lcsEnd1
    //도착지 시군구    lcsEnd2
    //도착지 읍면동    lcsEnd3
    //도착지 세부명칭  cxtEndAreaDetail.Caption
    //도착지 X         cxtStartXval.Text
    //도착지 Y         cxtStartYval.Text
    oType := 'a';//검색타입

    frm_Jon019.iSizeFlag := 1;
    frm_Jon019.rb_Auto.Tag := 1;
    frm_Jon019.rb_Auto.Checked := True;
    frm_JON019.Proc_SmartCharge(oOderWorker, oWeather
                              , lcsSta1, lcsSta2, lcsSta3, cxtStartAreaDetail.Text,  cxtStartXval.Text, cxtStartYval.Text
                              , lcsEnd1, lcsEnd2, lcsEnd3, cxtEndAreaDetail.Caption, cxtStartXval.Text, cxtStartYval.Text
                              , oType);

    frm_Jon019.bChkTime := True;
    frm_Jon019.Left := Self.Left - (frm_Jon019.Width + 1);
    frm_Jon019.Top  := Self.Top;
    frm_Jon019.Tag  := Self.Tag;

    frm_Jon019.show;
  Except
    on e: exception do
    begin
      Log('BtnSmartRateClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'BtnSmartRateClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.BtnSRClick(Sender: TObject);
Var i, iUse : Integer;
begin
  if (cxtStartXval.Text = '') or (cxtStartYval.Text = '') or
		 (cxtEndXval  .Text = '') or (cxtEndYval  .Text = '') then Exit;

  iUse := 0;
  for i := 1 to 4 do
  begin
    if RealKmPtr[Self.Tag, i].UseYn then iUse := i;
  end;

  if iUse = 0 then
  begin
    if (Pos('수정', Self.Caption) > 0 ) then
    begin
      tmrThRealDis.Tag := 1;
      proc_dis_alculation(Self.Tag, False);
      if GT_DISTANCE_ST = 1  then proc_Realdis_Mng;
      Exit;
    end else
    begin
      ShowMessage('경로 탐색 거리 계산 후 경로보기를 눌러주세요');
      Exit;
    end;
  end;

  try
    With Frm_JON52 do
    begin
      CONFRec.ConfSlip := 'A';
      CONFRec.ConfStatus := '';
      CONFRec.UpDate := '';
      CONFRec.DepLat := RealKmPtr[Self.Tag,iUse].StartXVal;
      CONFRec.DepLng := RealKmPtr[Self.Tag,iUse].StartYVal;
      CONFRec.DepName := lcsSta1 + '|' + lcsSta2 + '|' + lcsSta3 + '|' +  cxtStartAreaDetail.Text;
      CONFRec.ArrLat := RealKmPtr[Self.Tag,iUse].EndXVal;
      CONFRec.ArrLng := RealKmPtr[Self.Tag,iUse].EndYVal;
      CONFRec.ArrName := lcsEnd1 + '|' + lcsEnd2 + '|' + lcsEnd3 + '|' + cxtEndAreaDetail.Caption;
      CONFRec.BaechaLat := '';
      CONFRec.BaechaLng := '';
      CONFRec.BaechaName := '';

      CONFRec.ViaCnt := 0;
      CONFRec.ViaLat.Clear;
      CONFRec.ViaLng.Clear;
      CONFRec.ViaName.Clear;

      for i := 1 to 5 do
      begin
        if RealKmPtr[Self.Tag,iUse].ViaXVal[i] <> '' then
        begin
          CONFRec.ViaLat .Add(RealKmPtr[Self.Tag,iUse].ViaXVal[i]);
          CONFRec.ViaLng .Add(RealKmPtr[Self.Tag,iUse].ViaYVal[i]);
          CONFRec.ViaName.Add(GT_PASS_INFO[Self.Tag][i-1].AREA1 + '|' + GT_PASS_INFO[Self.Tag][i-1].AREA2 + '|' + GT_PASS_INFO[Self.Tag][i-1].AREA3 + '|' + GT_PASS_INFO[Self.Tag][i-1].AREA4);

          Inc(CONFRec.ViaCnt);
        end;
      end;

      CONFRec.WkSabun := '';
      CONFRec.WKConnState := '';
      CONFRec.WKLocLat := '';
      CONFRec.WKLocLng := '';
      CONFRec.WKLocType := '';
      CONFRec.WKLocElapseTime := '';

      Frm_Main.cxPageControl2.ActivePageIndex := 4;
      if Not Frm_Main.BtnFix.Down then
        Frm_Main.cxPageControl2Click(Frm_Main.cxPageControl2);

      Proc_MapMode_Bessel1; //출발지 도착지 한지도

      rb_Mod1.Checked := True;

      rb_Mod2.Enabled := False;
      rb_Mod3.Enabled := False;
      rb_Mod4.Enabled := False;
    end;
  Except
    on e: exception do
    begin
      Log('BtnSRClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'BtnSRClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.BtnSREnter(Sender: TObject);
begin
  if ( pnl_charge.Caption <> '' ) And ( GT_DISTANCE_ST = 1 ) then
  begin
    pnl_charge.Visible := True;
  end;
end;

procedure TFrm_JON01.BtnSRExit(Sender: TObject);
begin
  pnl_charge.Visible := False;
//-  BtnSR.Visible := False;
end;

procedure TFrm_JON01.BtnViewMemoClick(Sender: TObject);
begin
  if ( Trim(meoCuCCMemo.Text) <> '' ) Or ( Trim(meoCuWorMemo.Text) <> '' ) Or ( Trim(mmoCbMemo.Text) <> '' ) then
  begin
    Frm_JON011.Tag := Self.Tag;

    Frm_JON011.Left := Self.Left - (Frm_JON011.Width + 1);
    Frm_JON011.Top  := Self.Top;

    if Not mmoCbMemo.Visible then
    begin
      Frm_JON011.mmoCbMemoS.Visible := False;
      Frm_JON011.meoCuCCMemoS.Width := Frm_JON011.meoCuWorMemoS.Width;
    end;

    Frm_JON011.meoCuCCMemoS .Text := meoCuCCMemo.Text;
    Frm_JON011.meoCuWorMemoS.Text := meoCuWorMemo.Text;
    Frm_JON011.mmoCbMemoS.   Text := mmoCbMemo.Text;

    Frm_JON011.bChkTime := True;
    Frm_JON011.Show;
  end;
end;

procedure TFrm_JON01.btnBubinSchClick(Sender: TObject);
begin
  // 법인 버튼 클릭시 자동 선택 해준다.
  pnlBubin.Top := 148;
  pnlBubin.Left := 5;
  pnlBubin.Visible := True;
  cxtBubinSearchName.Text := '';
  cxBubinView.DataController.SetRecordCount(0);
  cxtBubinSearchName.SetFocus;
end;

procedure TFrm_JON01.btnCustAppinfoClick(Sender: TObject);
begin
  if Not pnlCustAppinfo.Visible then
  begin
  	pnlCustAppinfo.Top := 211;
	  pnlCustAppinfo.Left := 4;
  	pnlCustAppinfo.Visible := True;
  end else
  begin
  	pnlCustAppinfo.Visible := False;
  end;
end;

procedure TFrm_JON01.BtnEdLockClick(Sender: TObject);
begin
    if Not BtnEdLock.Down then
    begin
      BtnEdLock.Hint := 'F4)수정';
      BtnEdLock.Tag  := 0;
      BtnEdLock.Down := False;
      BtnEdLock.OptionsImage.ImageIndex := 0;

      Frm_JON30.N2.Enabled := True;
      Frm_JON30.N2.Caption := '도착지선택(좌표만이동)';
      Frm_JON30.N7.Enabled := True;
      Frm_JON30.N7.Caption := '도착지선택(주소+좌표이동)';
    end else
    begin
      BtnEdLock.Hint := 'F4)잠금';
      BtnEdLock.Tag  := 0;
      BtnEdLock.Down := True;
      BtnEdLock.OptionsImage.ImageIndex := 1;

      Frm_JON30.N2.Enabled := False;
      Frm_JON30.N2.Caption := '도착지선택(좌표만이동)-잠금상태';
      Frm_JON30.N7.Enabled := False;
      Frm_JON30.N7.Caption := '도착지선택(주소+좌표이동)-잠금상태';
    end;
end;

procedure TFrm_JON01.BtnResvViewClick(Sender: TObject);
begin
  cxGbReserv.Left := 1;
  cxGbReserv.Top  := 4;
  CbSecond.ItemIndex := 0;

  if cxGbReserv.Visible then
  begin
    cxGbReserv.Visible := False;
  end else
  begin
    if BtnResv.Tag = 0 then
    begin
      dtpResvDate.Text := FormatDateTime('YYYY-MM-DD', Date); // 예약일자
      dtpResvTime.Text := FormatDateTime('AM/PM hh:mm:ss', Now + ((1 / 24 / 60) * 10)); // 예약시간
    end;
    fGetDiffDay( FormatDateTime('YYYYMMDD', dtpResvDate.Date) + FormatDateTime('HHNN00', dtpResvTime.Time) );
    cxGbReserv.Visible := True;
  end;
end;

procedure TFrm_JON01.cxButton43Click(Sender: TObject);
begin
	if (cxtEndXval.Text <> '') and (cxtEndXval.Text <> '00000000') and (cxtEndYval.Text <> '000000') then
  begin
//    if ( Not Assigned(Frm_JON31) ) Or ( Frm_JON31 = Nil ) then Frm_JON31 := TFrm_JON31.Create(Nil);

    Frm_JON31.Tag := Self.Tag;
    Frm_JON31.OnSelectedMap := SetEndAreaMap;
    Frm_JON31.Show;

		if (cxtStartXval.Text <> '') and (cxtStartXval.Text <> '00000000') and (cxtStartYval.Text <> '000000')  then
			Frm_JON31.StartPos(meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text);

		Frm_JON31.EndPos(meoEndArea.Text, cxtEndXval.Text, cxtEndYval.Text);

    if Frm_JON31.WebBrowser1.Document <> nil then
      (Frm_JON31.Webbrowser1.Document as IHTMLDocument2).ParentWindow.Focus;
  end;
end;

procedure TFrm_JON01.cxButton45Click(Sender: TObject);
begin
  cxGbReserv.Visible := False;
end;

procedure TFrm_JON01.cxButton46Click(Sender: TObject);
begin
  cxGBSearch.Visible := False;
end;

procedure TFrm_JON01.cxButton5Click(Sender: TObject);
begin
  GBEndXYView.Visible := False;
end;

procedure TFrm_JON01.cxButton7Click(Sender: TObject);
begin
  GrpHelp.Visible := False;
  cxtCuTel.SetFocus;
end;

procedure TFrm_JON01.cxCurPathRateEnter(Sender: TObject);
begin
  lblCurPathRate.Visible := False;
end;

procedure TFrm_JON01.cxCurPathRateExit(Sender: TObject);
begin
  lblCurPathRate.Visible := (cxCurPathRate.Text = ''); // 경유요금 입력 잔상.
end;

procedure TFrm_JON01.cxCurPathRateFocusChanged(Sender: TObject);
begin
  lblCurPathRate.Visible := ( Not cxCurPathRate.Focused ) And (cxCurPathRate.Value = 0);
end;

procedure TFrm_JON01.cxCurPathRateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    if Ord(Key) = VK_RETURN then begin
      if cxCurPathRate.Value < 1000 then
      begin
        cxCurPathRate.Value := cxCurPathRate.Value * 1000;
      end;
      cxTmWaitTime.SetFocus;
    end;

    if Ord(key) in [VK_F7..VK_F12, VK_ESCAPE, Vk_F1] then
    begin
      case ord(key) of
        Vk_F1:
          if btnPickupInsert.Visible then
            btnPickupInsert.OnClick(btnPickupInsert); // 픽업등록 단축키 : 2011.05.25 CDS. Add.
        //      VK_F6     : if rb_search.Enabled then rb_Search.OnClick(rb_Search);
        Vk_F7: //if rb_Modify.Enabled then rb_Modify.OnClick(rb_Modify);              // 수정
          if btnCmdUpdSave.Enabled then
            btnCmdUpdSave.OnClick(btnCmdUpdSave);
        Vk_F8: //whbtn_Cancel.OnClick(whbtn_Cancel);                                   // 종료
          btnCmdExit.OnClick(btnCmdExit);
        Vk_F9:
          begin
            if not btnCmdJoin.Enabled then
              Exit; // 접수
            btnCmdJoinClick(btnCmdJoin);
          end;
        Vk_F10:
          if btnCmdWait.Enabled then
            btnCmdWait.OnClick(btnCmdWait); // 대기
        Vk_F11:
          if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // 복수콜
        Vk_F12:
          if btnCmdQuestion.Enabled then
            btnCmdQuestion.OnClick(btnCmdQuestion); // 문의
        VK_ESCAPE: // ESC 키
          begin
            if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
            begin
              if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '')
                and (Trim(lblStartAreaName.Text) = '') and (Trim(lblEndAreaName.Caption) = '')
                and (Trim(cxtStartAreaDetail.Text) = '') and (Trim(cxtEndAreaDetail.Caption) = '') then
                btnCmdExit.OnClick(btnCmdExit); // 종료
            end;
          end;
      end;
    end;
  Except
    on e: exception do
    begin
      Log('cxCurPathRateKeyDown Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'cxCurPathRateKeyDown Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.cxCurPathRatePropertiesChange(Sender: TObject);
begin
    lblCurPathRate.Visible := (cxCurPathRate.Value = 0); // 기사송금 입력 잔상.
end;

procedure TFrm_JON01.cxCurWaitTmRateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    if Ord(Key) = VK_RETURN then begin
      if cxCurWaitTmRate.Value < 1000 then
      begin
        cxCurWaitTmRate.Value := cxCurWaitTmRate.Value * 1000;
      end;
      cxCurRevisionRate.SetFocus;
    end;

    if Ord(key) in [VK_F7..VK_F12, VK_ESCAPE, Vk_F1] then
    begin
      case ord(key) of
        Vk_F1:
          if btnPickupInsert.Visible then
            btnPickupInsert.OnClick(btnPickupInsert); // 픽업등록 단축키 : 2011.05.25 CDS. Add.
        Vk_F7: //if rb_Modify.Enabled then rb_Modify.OnClick(rb_Modify);              // 수정
          if btnCmdUpdSave.Enabled then
            btnCmdUpdSave.OnClick(btnCmdUpdSave);
        Vk_F8: //whbtn_Cancel.OnClick(whbtn_Cancel);                                   // 종료
          btnCmdExit.OnClick(btnCmdExit);
        Vk_F9:
          begin
            if not btnCmdJoin.Enabled then
              Exit; // 접수
            btnCmdJoinClick(btnCmdJoin);
          end;
        Vk_F10:
          if btnCmdWait.Enabled then
            btnCmdWait.OnClick(btnCmdWait); // 대기
        Vk_F12:
          if btnCmdQuestion.Enabled then
            btnCmdQuestion.OnClick(btnCmdQuestion); // 문의
        VK_ESCAPE: // ESC 키
          begin
            if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
            begin
              if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '') and (Trim(lblStartAreaName.Text) = '') and
                (Trim(lblEndAreaName.Caption) = '') and (Trim(cxtStartAreaDetail.Text) = '') and
                (Trim(cxtEndAreaDetail.Caption) = '') then
                btnCmdExit.OnClick(btnCmdExit); // 종료
            end;
          end;
      end;
    end;
  Except
    on e: exception do
    begin
      Log('cxCurWaitTmRateKeyDown Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'cxCurWaitTmRateKeyDown Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.cxCustViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iRcIdx: Integer;
begin
  iRcIdx := cxCustView.DataController.FocusedRecordIndex;
  // 현재 선택된 레코드 index 읽기.

  // 고객조회 그리드에서 그리드 선택시에 고객관련 정보를 입력 컨트롤에 Display~
  if iRcIdx > -1 then
    Proc_GridCustChoice(iRcIdx);
end;

procedure TFrm_JON01.cxCustViewEditKeyPress(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
var
  iRcIdx: integer;
begin
  if Ord(Key) = VK_RETURN then
  begin
    // 현재 선택된 레코드 index 읽기.
    iRcIdx := cxCustView.DataController.FocusedRecordIndex;
    // 고객조회 그리드에서 그리드 선택시에 고객관련 정보를 입력 컨트롤에 Display~
    if iRcIdx > -1 then
      Proc_GridCustChoice(iRcIdx);
  end;
end;

procedure TFrm_JON01.cxDriverChargeEnter(Sender: TObject);
begin
  LbDriverCharge.Visible := False;
end;

procedure TFrm_JON01.cxDriverChargeExit(Sender: TObject);
begin
  LbDriverCharge.Visible := (cxDriverCharge.Text = '') // 수수료 입력 잔상.
end;

procedure TFrm_JON01.cxDriverChargeFocusChanged(Sender: TObject);
begin
  LbDriverCharge.Visible := ( Not cxDriverCharge.Focused ) And (cxDriverCharge.Text = '');
end;

procedure TFrm_JON01.cxDriverChargePropertiesChange(Sender: TObject);
begin
  if ( Not cxDriverCharge.Focused ) then
    LbDriverCharge.Visible := (cxDriverCharge.Text = '') // 수수료 입력 잔상.
end;

procedure TFrm_JON01.CbCuGbPropertiesChange(Sender: TObject);
Var iHeight : Integer;
begin
  try
    btnBubinSch.Enabled := False;
    if (CbCuGb.Hint <> 'Clear') then
    begin
      if (lcsCu_seq <> '') then
      begin
        if CBCuGb.ItemIndex = 0 then
        begin
          if CbCuGb.Hint = '3' then
          begin
            if
              Application.MessageBox('고객구분을 [법인 --> 개인] 으로 정보를 변경 하시겠습니까?' +
              #10#13 + '변경 후에는 [수정] 버튼을 눌러 저장 하세요~',
              '법인정보 제거 확인',
              MB_OKCANCEL) = IDOK then
            begin
              lblCuBubinName.Caption := '';
              cxtCuBubin.Text := '';
              // '('+sCbCd+')' + ;
              cxtCuBubin.Hint := '';
              CbCuGb.Hint := '1';
              if pnlBubin.Visible = True then
              begin
                pnlBubin.Visible := False;
              end;
              CbCuGb.Hint := '1';
            end else
            begin
              CbCuGb.ItemIndex := 2;
            end;
          end else
          begin
            CbCuGb.Hint := '1';
          end;
        end else
        if CBCuGb.ItemIndex = 1 then
        begin
          if CbCuGb.Hint = '3' then
          begin
            if Application.MessageBox('고객구분을 [법인 --> 업소] 로 정보를 변경 하시겠습니까?',
              '법인정보 제거 확인', MB_OKCANCEL) = IDOK then
            begin
              lblCuBubinName.Caption := '';
              cxtCuBubin.Text := '';
              // '('+sCbCd+')' + ;
              cxtCuBubin.Hint := '';
              CbCuGb.Hint := '2';
              if pnlBubin.Visible = True then
              begin
                pnlBubin.Visible := False;
              end;
              CbCuGb.Hint := '2';
            end else
            begin
              CbCuGb.ItemIndex := 2;
            end;
          end else
          begin
            CbCuGb.Hint := '2';
          end;
        end else
        if CBCuGb.ItemIndex = 2 then
        begin
          CbCuGb.Hint := '3';
        end;
      end;
    end;

    if (CbCuGb.Hint = '') and (GB_SHOPTYPE_CALLCENTER = 1) then
      BtnCenterMng.Down := (CustBrTelYN = 'y');

    if ( CbCuGb.ItemIndex = 2 ) then
    begin
      if Not IsBubuinUse then
      begin
        if CbCuGb.Tag = 0 then
        begin
          CbCuGb.Tag := 1;
          Pnl_BubinV.Visible := True;
          GB4.Height := GB4.Height + 25;
          GBTop5.Height := GBTop5.Height + 25;
  //        cxGroupBox7.Height := 60 + 24;

          iHeight := Self.Height + 25;
          Self.Height := iHeight;
        end;
      end;
      btnBubinSch.Enabled := True;
    end else
    begin
      if Not IsBubuinUse then
      begin
        if CbCuGb.Tag = 1 then
        begin
          CbCuGb.Tag := 0;
          Pnl_BubinV.Visible := False;
  //        cxGroupBox7.Height := 60;

          GB4.Height := GB4.Height - 25;
          GBTop5.Height := GBTop5.Height - 25;

          iHeight := Self.Height - 25;
          Self.Height := iHeight;
        end;
      end;
      btnBubinSch.Enabled := False;
    end;
  Except
    on e: exception do
    begin
      Log('CbCuGbPropertiesChange Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'CbCuGbPropertiesChange Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.cxGroupBox10MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lst_BRList.Visible := False;
end;

procedure TFrm_JON01.cxGroupBox6MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lst_BRList.Visible := False;
end;

procedure TFrm_JON01.cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lst_BRList.Visible := False;
end;

procedure TFrm_JON01.cxGroupBox8MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  lst_BRList.Visible := False;
end;

procedure TFrm_JON01.cxImage1Click(Sender: TObject);
begin
  GrpHelp.Top := 65;
  GrpHelp.Left := 4;
  if GrpHelp.Visible then GrpHelp.Visible := False
                     else GrpHelp.Visible := True;
end;

procedure TFrm_JON01.cxLblOrderUpInfoClick(Sender: TObject);
begin
  if pnlOrderInfoView.Visible then
  begin
		pnlOrderInfoView.Visible := False;
  end else
  if (Pos('수정', Self.Caption) > 0 ) then
  begin
    // 오더수정시에 오더배차 및 상태에 관련 정보를 보여준다.
    if PnlModifyTitle.Height = 17 then pnlOrderInfoView.Top := 90
                                  else pnlOrderInfoView.Top := 103;

    pnlOrderInfoView.Left := 315;

		pnlOrderInfoView.Visible := True;
		pnlOrderInfoView.BringToFront;
	end;
end;

procedure TFrm_JON01.cxLblOrderUpInfoMouseLeave(Sender: TObject);
begin
{  if pnlOrderInfoView.Visible then
  begin
    pnlOrderInfoView.Visible := False;
  end;}
end;

procedure TFrm_JON01.cxLblOrderUpInfoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Pos('수정', Self.Caption) > 0 ) then
   cxLblOrderUpInfo.Cursor := crHandPoint
 else
   cxLblOrderUpInfo.Cursor := crDefault;
end;

procedure TFrm_JON01.cxLBubinMemoFlagClick(Sender: TObject);
begin
  cxTBubinMemo.SetFocus;
end;

procedure TFrm_JON01.cxLBuNmFlgClick(Sender: TObject);
begin
  cxtCuBubin.SetFocus;
end;

procedure TFrm_JON01.cxLCuCCMemoFlgClick(Sender: TObject);
begin
  meoCuCCMemo.SetFocus;
end;

procedure TFrm_JON01.cxLCuNmFlgClick(Sender: TObject);
begin
  edtCuName.SetFocus;
end;

procedure TFrm_JON01.cxLCuWorMemoFlgClick(Sender: TObject);
begin
  meoCuWorMemo.SetFocus;
end;

procedure TFrm_JON01.cxLEndAreaFlagClick(Sender: TObject);
begin
  meoEndArea.SetFocus;
//  meoEndArea.SelStart := Length(meoEndArea.Text);
end;

procedure TFrm_JON01.cxLCuTel2FlgClick(Sender: TObject);
begin
  cxtCuTel2.SetFocus;
end;

procedure TFrm_JON01.cxLCuTelFlgClick(Sender: TObject);
begin
  cxtCuTel.SetFocus;
end;

procedure TFrm_JON01.cxLSearchMainTelFlgClick(Sender: TObject);
begin
  cxTSearchMainTel.SetFocus;
end;

procedure TFrm_JON01.cxLStartAreaFlagClick(Sender: TObject);
begin
  meoStartArea.SetFocus;
//  meoStartArea.SelStart := Length(meoStartArea.Text);
end;

procedure TFrm_JON01.cxTBubinMemoEnter(Sender: TObject);
begin
  cxLBubinMemoFlag.Visible := False;
end;

procedure TFrm_JON01.cxTBubinMemoExit(Sender: TObject);
begin
  cxLBubinMemoFlag.Visible := (cxTBubinMemo.Text = '') // 법인메모 입력 잔상.
end;

procedure TFrm_JON01.cxTBubinMemoFocusChanged(Sender: TObject);
begin
  cxLBubinMemoFlag.Visible := ( Not cxTBubinMemo.Focused ) And (cxTBubinMemo.Text = '');
end;

procedure TFrm_JON01.cxTBubinMemoPropertiesChange(Sender: TObject);
begin
  if ( Not cxTBubinMemo.Focused ) then
  cxLBubinMemoFlag.Visible := (cxTBubinMemo.Text = ''); // 법인메모 입력 잔상.
end;

procedure TFrm_JON01.meoStartAreaEnter(Sender: TObject);
begin
  try
    cxLStartAreaFlag.Visible := False;

    locNowControlName := 'meoStartArea'; // 현재 활성화된 컨트롤 명.
    lcsActiveEdit := locNowControlName;

    if ( Frm_JON30.Tag <> Self.Tag ) And ( Trim(TcxTextEdit(Sender).Text) <> '' )  then
    begin
      if ( Frm_JON30.AdvStringGrid1.Cells[0,1] <> '' ) Or
         ( Frm_JON30.AdvStringGrid2.Cells[0,0] <> '' ) Or
         ( Frm_JON30.AdvStringGrid3.Cells[0,0] <> '') then
      Hide_Panel(lcsActiveEdit, 0);
    end;

    if GT_USERIF.ID = 'sntest' then Log('4020--' + lcsActiveEdit, LOGDATAPATHFILE);

    Frm_JON30.Tag := Self.Tag;

    if J30ShowS = True then
    begin
      Exit;
    end;
  //  if Assigned(frmJON30) and (cxLabel20.Caption = 'F4)수정') then       //  20130703  LYB  잠김 상태에서도 검색창 표시 (팀장님지시)
    if Assigned(Frm_JON30) then
    begin
      if GS_MAP_AREA_AUTOSHOW then
      begin
        Frm_JON30.StartPos(meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text);
        Frm_JON30.OnSelectedMap := SetStartAreaMap;
        if (not Frm_JON30.Visible) and (cxtStartXval.Text <> '') and (cxtStartYval.Text <> '') then
        begin
          lcsActiveEdit := locNowControlName;
          Hide_Panel(lcsActiveEdit,0);
          if GT_USERIF.ID = 'sntest' then Log('4039--' + lcsActiveEdit, LOGDATAPATHFILE);
        end;
      end else
      begin
        if (not Frm_JON30.Visible) and (cxtStartXval.Text <> '') and (cxtStartYval.Text <> '') then
        begin
          Hide_Panel(lcsActiveEdit,0);
          Frm_JON30.chk_Map(False);
        end;
      end;

      if Frm_JON31.Visible and Frm_JON31.Visible then
      begin
        Frm_JON31.StartPos(meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text);
        Frm_JON31.OnSelectedMap := SetStartAreaMap;
      end;

      gKWComp := '';
    end;
  Except
    on e: exception do
    begin
      Log('meoStartAreaEnter Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'meoStartAreaEnter Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.meoStartAreaExit(Sender: TObject);
begin
  cxLStartAreaFlag.Visible := (meoStartArea.Text = ''); // 출발지 입력 잔상.

	locNowControlName := ''; // 현재 활성화된 컨트롤 명.

	if Assigned(Frm_JON30) and (not (meoStartArea.Focused)) then
		Hide_Panel(lcsActiveEdit,1);
end;

procedure TFrm_JON01.meoStartAreaFocusChanged(Sender: TObject);
begin
  cxLStartAreaFlag.Visible := ( Not meoStartArea.Focused ) And (meoStartArea.Text = '');
end;

procedure TFrm_JON01.meoStartAreaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    Frm_JON30.Tag := Self.Tag;

    lcsActiveEdit := 'meoStartArea'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.
    sActieEdit := 'meoStartArea';

    // 좌, 우, HOME, END 방향키는 이벤트 타지 않도록 한다.
    if (Key = 37) or (Key = 39) or (Key = 35) or (Key = 36) then Exit;
    if Key = VK_RETURN then
    begin
      Key := 0;
      if not IsNotModifyPrice and (GT_CHARGE_CAL = 1) then
      begin
        // 대표번호 별 기본 설정 요금 반영 여부를 결정 한다.[True:반영, False:미반영]
        if ((gsMyMainTelUse = 'FALSE') or (GSMyMainTelOrderChargeCheck)) and (not IsMultiCallFixPrice) then
        begin
          tmrThRealDis.Tag := 0;
          proc_dis_alculation(Self.Tag, True);
          if GT_DISTANCE_ST = 1  then proc_Realdis_Mng
                                 else begin
                                        curRate.Value := func_search_charge;
                                        OrgRate := curRate.Value;
                                      end;
        end;
      end;
      Exit;
    end;

    if Key in [VK_DOWN, VK_UP] then
    begin
      Exit; // 그리드에 포커스 넘기는건 KeyUp Event에서 처리한다.
    end;

    sAnsiSchTxt := meoStartArea.Text;

    if Key = VK_BACK then
    begin
      PnlPOISch.Visible := False;
      if Frm_JON30.cxChkPoiSvr.Checked then
      begin
        if ( BtnStLock.Tag = 1 ) And ( BtnStLock.Hint = 'F4)잠금' ) then
        begin
          if ( Pos('인근', meoStartArea.Text) = 0 ) And
             ( Pos('부근', meoStartArea.Text) = 0 ) And
             ( Pos('근처', meoStartArea.Text) = 0 ) then
          begin
            BtnStLock.Hint := 'F4)수정';
            BtnStLock.Tag  := 0;
            BtnStLock.Down := False;
            BtnStLock.OptionsImage.ImageIndex := 0;
            Frm_JON30.N1.Enabled := True;
            Frm_JON30.N1.Caption := '출발지선택(좌표만이동)';
            Frm_JON30.N6.Enabled := True;
            Frm_JON30.N6.Caption := '출발지선택(주소+좌표이동)';
          end;
        end;
      end;

      if (Length(widestring(meoStartArea.Text)) = 1) and ( BtnStLock.Hint <> 'F4)잠금' ) then
      begin
        Frm_JON30.Grid_Init(lcsActiveEdit,1);
        Frm_JON30.Grid_Init(lcsActiveEdit,2);
        Frm_JON30.Grid_Init(lcsActiveEdit,3);
        Frm_JON30.Grid_Init(lcsActiveEdit,4);
        GS_FULLWORD_CMP := '';
        Init_AdvGridSj;
      end else
      if (Length(sAnsiSchTxt) <= 1) then
      begin
        // 20120805 좌표 오류 체크 LYB
        gJONStaChkXY.Area1 := '';
        gJONStaChkXY.Area2 := '';
        gJONStaChkXY.Area3 := '';
        gJONStaChkXY.Area4 := '';
        gJONStaChkXY.Area5 := '';
        gJONStaChkXY.X := '';
        gJONStaChkXY.Y := '';
        gJONStaChkXY.GUIDE_X := '';
        gJONStaChkXY.GUIDE_Y := '';
        gJONStaChkXY.Gubun := '';

        // 키워드가 모두 지워진 상태에서 한번더 BACK 키를 누를경우 컨트롤 초기화 처리.
        lblStartAreaName.Text := '';
        cxtStartAreaDetail.Text := '';
        lcsSta1 := '';
        lcsSta2 := '';
        lcsSta3 := ''; // 출1, 출2, 출3
        cxtStartXval.Text := '';
        cxtStartYval.Text := '';
        cxtStartGUIDEXval.Text := '';
        cxtStartGUIDEYval.Text := '';

        lcsStaDocId := '';
        lcsStaCellSel := '';
        lcsStaSchWord := '';
        GS_Grid_DEP := '';

        sBHAddr := '';

        gKWComp := '';

        gmap_forword := '';
        GS_FULLWORD_CMP := '';

        Frm_JON30.Grid_Init(lcsActiveEdit,1);
        Frm_JON30.Grid_Init(lcsActiveEdit,2);
        Frm_JON30.Grid_Init(lcsActiveEdit,3);
        Frm_JON30.Grid_Init(lcsActiveEdit,4);
        Hide_Panel(lcsActiveEdit,1);

        if BtnStLock.Hint = 'F4)잠금' then
        begin
          BtnStLock.Hint := 'F4)수정';
          BtnStLock.Tag  := 0;
          BtnStLock.Down := False;
          BtnStLock.OptionsImage.ImageIndex := 0;
          Frm_JON30.N1.Enabled := True;
          Frm_JON30.N1.Caption := '출발지선택(좌표만이동)';
          Frm_JON30.N6.Enabled := True;
          Frm_JON30.N6.Caption := '출발지선택(주소+좌표이동)';
        end;

        PnlSuggest.Visible := False;
        AdvGridSj.ShowSelection := False;
        Exit;
      end else
      if (Length(sAnsiSchTxt) <= 2) and (BtnStLock.Hint <> 'F4)잠금') then
      begin
        giKeyWordSerchValue := 0;  // 세부정보 풀매칭 후 부근,인근 입력시 유지 위해서.
        gmap_forword := '';
      end else
      if (Length(sAnsiSchTxt) < Length(map_ls_Text)) then
      begin
        map_ls_Text := '';
        gmap_forword := '';
      end;
      giAreaKeyFullMatch_CNT := 0; // 세부정보 풀매칭 후 부근,인근 입력시 유지 위해서.

      // 2011.05.18 CDS.
      if not GB_JON_BACKKEYUSE then
      begin
        if (Length(gs_map_old_value) - Length(sAnsiSchTxt)) > 1 then begin  // and (Length(map_ls_Text) < Length(gs_MapKeyTemp)) then begin
          Exit;
        end;
      end;
    end;

    if Ord(key) = VK_F4 then
    begin
      if BtnStLock.Hint = 'F4)잠금' then
      begin
        BtnStLock.Hint := 'F4)수정';
        BtnStLock.Tag  := 0;
        BtnStLock.Down := False;
        BtnStLock.OptionsImage.ImageIndex := 0;
        Frm_JON30.N1.Enabled := True;
        Frm_JON30.N1.Caption := '출발지선택(좌표만이동)';
        Frm_JON30.N6.Enabled := True;
        Frm_JON30.N6.Caption := '출발지선택(주소+좌표이동)';
      end else
      begin
        BtnStLock.Hint := 'F4)잠금';
        BtnStLock.Tag  := 0;
        BtnStLock.Down := True;
         BtnStLock.OptionsImage.ImageIndex := 1;
        Frm_JON30.N1.Enabled := False;
        Frm_JON30.N1.Caption := '출발지선택(좌표만이동)-잠금상태';
        Frm_JON30.N6.Enabled := False;
        Frm_JON30.N6.Caption := '출발지선택(주소+좌표이동)-잠금상태';
      end;
      Exit;
    end else
    if Ord(key) = VK_F3 then
    begin
      Exit;
    end;

    if Ord(key) = VK_ESCAPE then  // ESC 키
    begin
      if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
      begin
//        if (Trim(meoStartArea.Text) = '') then
//        begin
//          lblStartAreaName.Clear;
//          cxtStartAreaDetail.Clear;
//        end;

        if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '')
          and (Trim(lblStartAreaName.Text) = '') and (Trim(lblEndAreaName.Caption) = '')
          and (Trim(cxtStartAreaDetail.Text) = '') and (Trim(cxtEndAreaDetail.Caption) = '') then
          btnCmdExit.OnClick(btnCmdExit); // 종료
      end;
    end;
  Except
    on e: exception do
    begin
      Log('meoStartAreaKeyDown Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'meoStartAreaKeyDown Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.meoStartAreaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  procedure pJON03POISetFocus;
  begin
    if Frm_JON30.AdvStringGrid1.Cells[0,1] = '' then
    begin
      if Frm_JON30.AdvStringGrid2.Cells[0,0] = '' then
      begin
        if Frm_JON30.AdvStringGrid3.Cells[0,0] <> '' then
        begin
          Frm_JON30.AdvStringGrid1.ShowSelection := False;
          frm_JON30.AdvStringGrid2.ShowSelection := False;
          frm_JON30.AdvStringGrid3.ShowSelection := True;
          if frm_JON30.AdvStringGrid3.CanFocus then
            frm_JON30.AdvStringGrid3.SetFocus;
        end;
      end else
      begin
        frm_JON30.AdvStringGrid1.ShowSelection := False;
        frm_JON30.AdvStringGrid2.ShowSelection := True;
        frm_JON30.AdvStringGrid3.ShowSelection := False;
        if frm_JON30.AdvStringGrid2.CanFocus then
          frm_JON30.AdvStringGrid2.SetFocus;
        frm_JON30.AdvStringGrid2.FocusCell(0,0);
      end;
    end else
    begin
      frm_JON30.AdvStringGrid1.ShowSelection := True;
      frm_JON30.AdvStringGrid2.ShowSelection := False;
      frm_JON30.AdvStringGrid3.ShowSelection := False;
      if frm_JON30.AdvStringGrid1.CanFocus then
        frm_JON30.AdvStringGrid1.SetFocus;
    end;
  end;
begin
  try
    lcsActiveEdit := 'meoStartArea'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.

    if PnlSuggest.Visible then
      if PnlSuggest.Caption <> lcsActiveEdit then
      begin
        PnlSuggest.Visible := False;
        AdvGridSj.ShowSelection := False;
        PnlSuggest.Caption := lcsActiveEdit;
      end;

    // 좌, 우, HOME, END 방향키는 이벤트 타지 않도록 한다.
    //-  if (Key = 37) or (Key = 39) or (Key = 35) or (Key = 36) then  Exit;
    if (Key = 39) or (Key = 35) or (Key = 36) then  Exit;

    if ( ssCtrl in Shift) and ( Key = VK_LEFT ) then
    begin
      if  ( meoStartArea.SelStart = 0 ) And ( PnlSuggest.Visible ) then
      begin
        pJON03POISetFocus;
      end;
      Exit;
    end;

    if Key = VK_LEFT then Exit;

    if Length(AnsiString(meoStartArea.Text)) > 60 then meoStartArea.Height := 39
                                                  else meoStartArea.Height := 26;

    if fCheckMaxLength(meoStartArea, 98) then Key := 0;

    sAnsiSchTxt := meoStartArea.Text;

    if Length(Trim(sAnsiSchTxt)) > 2 then
    begin
      meoViaArea1.Enabled := True;
      cxViaAreaName1.Enabled := True;
      BtnViaMinus1.Enabled := True;
      sBHAddr := '';
    end else
    begin
      J30ShowS := False;
      sBHAddr := '';
    end;

    if ( Key = VK_DOWN ) And ( PnlSuggest.Visible ) then
    begin
      Key := 0;
      meoStartArea.SelStart := Length(meoStartArea.Text);
      if PnlSuggest.Visible then
      begin
        AdvGridSj.ShowSelection := True;
        if AdvGridSj.CanFocus then AdvGridSj.SetFocus;
        Exit;
      end;
    end else
    // 검색 그리드로 포커스 이동..
    if ( ( Key in [VK_DOWN] ) And ( Not PnlSuggest.Visible ) ) then
    begin
      pJON03POISetFocus;
    end else
    if Key = VK_BACK then
    begin
       Frm_JON30.sPreSearchWord := '';
       J30ShowS := False;
       gmap_forword := '';
    end else
    if Key = VK_RETURN then
    begin
      if GT_USERIF.ID = 'sntest' then Log('4430--' + lcsActiveEdit, LOGDATAPATHFILE);
      // Enter를 쳤을때 검색이 안끝났으면 다시 재검색 해준다.
//      if PnlPOISch.Visible then
//      begin
//        gKWComp := '';
//        gbEnter := True;
//        if GS_SEARCH_UPDATE_OPEN then J30ShowS := False;
//        if J30ShowS = False then Proc_AreaSearchKDown_Added(Key);
//
//        PnlSuggest.Visible := False;
//        AdvGridSj.ShowSelection := False;
//        PnlSuggest.Caption := '';
//
//        Exit;
//      end;

      if lcsActiveEdit = 'meoStartArea' then
      begin
        if frm_JON30.Visible = True then
        begin
          if BtnStLock.Hint <> 'F4)잠금' then     // 20130703  LYB
          begin
            if frm_JON30.AdvStringGrid1.Cells[0,1] <> '' then
            begin
              frm_JON30.bEnter := False;
              frm_JON30.Proc_SendParent(frm_JON30.AdvStringGrid1.GetRealRow + 1);
              Hide_Panel(lcsActiveEdit,1);
            end;

            if GS_SEARCH_POTAL_FIRST then
            begin
              if (frm_JON30.AdvStringGrid1.Cells[0,1] = '') and (frm_JON30.AdvStringGrid3.Cells[0,1] <> '') then
              begin
                frm_JON30.bEnter := False;
                frm_JON30.Proc_SendParent_ADV3(frm_JON30.AdvStringGrid3.GetRealRow + 1, True);
              end;
            end else
            begin
              if (frm_JON30.AdvStringGrid1.Cells[0,1] = '') and (frm_JON30.AdvStringGrid2.Cells[0,0] <> '') then
              begin
                frm_JON30.bEnter := False;
                frm_JON30.Proc_SendParent_ADV2(frm_JON30.AdvStringGrid2.GetRealRow + 1, frm_JON30.AdvStringGrid2.GetRealCol, True);
                Hide_Panel(lcsActiveEdit,1);
              end;
            end;

            if GS_START_AUTOLOCK then
            begin
              BtnStLock.Hint := 'F4)잠금';
              BtnStLock.Tag  := 0;
              BtnStLock.Down := True;
              BtnStLock.OptionsImage.ImageIndex := 1;
              frm_JON30.N1.Enabled := False;
              frm_JON30.N1.Caption := '출발지선택(좌표만이동)-잠금상태';
              frm_JON30.N6.Enabled := False;
              frm_JON30.N6.Caption := '출발지선택(주소+좌표이동)-잠금상태';
            end;
            if meoStartArea.CanFocus then meoStartArea.SetFocus;
          end;

          if PnlSuggest.Visible then
          begin
            PnlSuggest.Visible := False;
            AdvGridSj.ShowSelection := False;
          end;
        end;
        key := 0;
        if meoStartArea.Hint <> 'STOPFOCUS' then
        begin // 포커스 더이상 넘어가지 않도록 한다.
          if ViaADDTag > 0 then meoViaArea1.SetFocus
                           else meoEndArea.SetFocus;
  //-        meoEndArea.SetFocus;
          gmap_forword := '';
        end else
        begin
          meoStartArea.Hint := ''; // 포커스 더이상 넘어가지 않도록 한다.
        end;
      end else
      begin
        key := 0;
        if curRate.CanFocus then curRate.SetFocus;
      end;
    end else
    if Ord(key) in [VK_F7..VK_F12, VK_F2, Vk_F1] then
    begin
      sActieEdit := 'meoStartArea';
      case ord(key) of
        Vk_F1:
          if btnPickupInsert.Visible then
            btnPickupInsert.OnClick(btnPickupInsert); // 픽업등록 단축키 : 2011.05.25 CDS. Add.
        VK_F2:
           begin
             if pnlTelNESearch.Visible = True then
             begin
               pnlTelNESearch.Visible := False;
               if Assigned(Frm_COM30) then Frm_COM30.Close;
             end else
             begin
               // 전화번호 위치찾기 기본 위치를 정한다.
               Proc_TellAreaFormCreate;
               pnlTelNESearch.Visible := True;
               cxTxtTelNESelect.Text := '';
               if cxTxtTelNESelect.CanFocus then cxTxtTelNESelect.SetFocus;
             end;
           end;
        //      VK_F6     : if rb_search.Enabled then rb_Search.OnClick(rb_Search);
        Vk_F7:
          if btnCmdUpdSave.Enabled then
            btnCmdUpdSave.OnClick(btnCmdUpdSave); // 수정
        Vk_F8: btnCmdExit.OnClick(btnCmdExit); // 종료
        Vk_F9:
          begin
            if not btnCmdJoin.Enabled then
              Exit; // 접수
            btnCmdJoinClick(btnCmdJoin);
          end;
        Vk_F10:
          if btnCmdWait.Enabled then
            btnCmdWait.OnClick(btnCmdWait); // 대기
        Vk_F11:
          if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // 복수콜
        Vk_F12:
          if btnCmdQuestion.Enabled then
            btnCmdQuestion.OnClick(btnCmdQuestion); // 문의
      end;
    end else
  //-  if (cxLabel20.Caption = 'F4)잠금') and (key <> 229) then  //  20130703  LYB  잠금 상태에서도 검색은 되게 하라.  key 299 = 마우스클릭
    if (key <> 229) then  //  20130703  LYB  잠금 상태에서도 검색은 되게 하라.  key 299 = 마우스클릭
    begin
      if (Key = VK_F4) then Exit;
      gKWComp := '';
      if GS_SEARCH_UPDATE_OPEN then J30ShowS := False;
      if J30ShowS = False then Proc_AreaSearchKDown_Added(Key);
  {  end else
    if (cxLabel20.Caption = 'F4)수정') and (key <> 229)then // 출발지, 도착지 컨트롤에서 KeyDown 이벤트시에 호출됨.
    begin
      gKWComp := '';
      if GS_SEARCH_UPDATE_OPEN then J30ShowS := False;
      if J30ShowS = False then Proc_AreaSearchKDown_Added(Key);}
    end else
    if (Key = vk_delete) then
    begin
       J30ShowS := False;
    end;
  Except
    on e: exception do
    begin
      Log('meoStartAreaKeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'meoStartAreaKeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.meoStartAreaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if PnlSuggest.Visible then
    if PnlSuggest.Caption <> lcsActiveEdit then
    begin
      PnlSuggest.Visible := False;
      AdvGridSj.ShowSelection := False;
      Init_AdvGridSj;
      PnlSuggest.Caption := lcsActiveEdit;
    end;
end;

procedure TFrm_JON01.meoStartAreaPropertiesChange(Sender: TObject);
begin
  if ( Not meoStartArea.Focused ) then
    cxLStartAreaFlag.Visible := (meoStartArea.Text = ''); // 출발지 입력 잔상.

  meoStartArea.Hint := ''; // 포커스 더이상 넘어가지 않도록 한다.

  if (lblStartAreaName.Text <> '') and (meoStartArea.Text <> '') then
    btnStartLocalSave.Enabled := True
  else
    btnStartLocalSave.Enabled := False;
end;

procedure TFrm_JON01.meoViaArea1Enter(Sender: TObject);
var iTag : integer;
begin
  try
    ViaNowTag := TcxTextEdit(Sender).Tag;

    locNowControlName := 'meoViaArea'; // 현재 활성화된 컨트롤 명.
    lcsActiveEdit := locNowControlName;

    if ( Frm_JON30.Tag <> Self.Tag ) And ( Trim(TcxTextEdit(Sender).Text) <> '' )  then
    begin
      if ( Frm_JON30.AdvStringGrid8.Cells[0,1] <> '' ) Or
         ( Frm_JON30.AdvStringGrid7.Cells[0,0] <> '' ) Or
         ( Frm_JON30.AdvStringGrid9.Cells[0,0] <> '') then
      Hide_Panel(lcsActiveEdit, 0);
      if GT_USERIF.ID = 'sntest' then Log('4545--' + lcsActiveEdit, LOGDATAPATHFILE);
    end;
    frm_JON30.Tag := Self.Tag;

    if  J30ShowS = True then
    begin
      Exit;
    end;
    if Assigned(frm_JON30) then
    begin
      if GS_MAP_AREA_AUTOSHOW then
      begin
        if ViaNowTag = 1 then
        begin
          if Via_Info[1].XposVia <> '' then
            Frm_JON30.ViaPos(meoViaArea1.Text, Via_Info[1].XposVia, Via_Info[1].YposVia);
        end	else
        begin
          if Via_Info[ViaNowTag].XposVia <> '' then
            Frm_JON30.ViaPos(meoViaArea[ViaNowTag].Text, Via_Info[ViaNowTag].XposVia, Via_Info[ViaNowTag].YposVia);
        end;
        if (not Frm_JON30.Visible) and (Via_Info[ViaNowTag].XposVia <> '') and (Via_Info[ViaNowTag].YposVia <> '') then
        begin
          lcsActiveEdit := locNowControlName;
          Hide_Panel(lcsActiveEdit,0);
          if GT_USERIF.ID = 'sntest' then Log('4570--' + lcsActiveEdit, LOGDATAPATHFILE);
        end;
      end else
      begin
        if (not Frm_JON30.Visible) and (Via_Info[ViaNowTag].XposVia <> '') and (Via_Info[ViaNowTag].YposVia <> '') then
        begin
          Hide_Panel(lcsActiveEdit,0);
          if GT_USERIF.ID = 'sntest' then Log('4577--' + lcsActiveEdit, LOGDATAPATHFILE);
          Frm_JON30.chk_Map(False);
        end;
      end;
      gKWComp := '';
  	end;
  Except
    on e: exception do
    begin
      Log('meoViaArea1Enter Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'meoViaArea1Enter Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.meoViaArea1Exit(Sender: TObject);
begin
//-	proc_dis_alculation_Via; // Km 재계산을 한다.
	locNowControlName := ''; // 현재 활성화된 컨트롤 명.
//-  viaOk;

	if Assigned(Frm_JON30) and (not (meoViaArea1.Focused)) then
		Hide_Panel(lcsActiveEdit,1);
end;

procedure TFrm_JON01.meoViaArea1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var iTag, i : integer;
begin
  try
    ViaNowTag := TcxTextEdit(Sender).Tag;
    // 좌, 우, HOME, END 방향키는 이벤트 타지 않도록 한다.
    if (Key = 37) or (Key = 39) or (Key = 35) or (Key = 36) then Exit;

    if Key in [VK_DOWN, VK_UP] then
    begin
      Exit; // 그리드에 포커스 넘기는건 KeyUp Event에서 처리한다.
    end;

    if Key = VK_BACK then
    begin
      PnlPOISch.Visible := False;
      gKWComp := '';
      gmap_forword := '';

      Frm_JON30.Grid_Init(lcsActiveEdit,1);
      Frm_JON30.Grid_Init(lcsActiveEdit,2);
      Frm_JON30.Grid_Init(lcsActiveEdit,3);
      Frm_JON30.Grid_Init(lcsActiveEdit,4);

      PnlSuggest.Visible := False;
      AdvGridSj.ShowSelection := False;

      Hide_Panel(lcsActiveEdit,1);
      Exit;
    end;

    if Ord(key) = VK_F5 then
    begin
      BtnViaAddClick(Sender);
    end;

    if Ord(key) = VK_F6 then
    begin
      iTag := ViaNowTag; //삭제원하는 경유지 위치
      if iTag = 1 then BtnViaMinus1.Click
                  else BtnViaMinus[ViaNowTag].Click;
    end;

    lcsActiveEdit := 'meoViaArea';

    if Key = VK_TAB then
    begin
//-      viaOk;
      meoEndArea.SetFocus;
      Exit;
    end;
  Except
    on e: exception do
    begin
      Log('meoViaArea1KeyDown Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'meoViaArea1KeyDown Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.meoViaArea1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  procedure pJON03POISetFocus;
  begin
		if Frm_JON30.AdvStringGrid8.Cells[0,1] = '' then
    begin
      if Frm_JON30.AdvStringGrid7.Cells[0,0] = '' then
      begin
				if Frm_JON30.AdvStringGrid9.Cells[0,0] <> '' then
        begin
					Frm_JON30.AdvStringGrid8.ShowSelection := False;
					Frm_JON30.AdvStringGrid7.ShowSelection := False;
					Frm_JON30.AdvStringGrid9.ShowSelection := True;
          Frm_JON30.AdvStringGrid9.SetFocus;
        end;
      end else
      begin
        Frm_JON30.AdvStringGrid8.ShowSelection := False;
        Frm_JON30.AdvStringGrid7.ShowSelection := True;
				Frm_JON30.AdvStringGrid9.ShowSelection := False;
				Frm_JON30.AdvStringGrid7.SetFocus;
        Frm_JON30.AdvStringGrid7.FocusCell(0,0);
			end;
    end else
    begin
			Frm_JON30.AdvStringGrid8.ShowSelection := True;
			Frm_JON30.AdvStringGrid7.ShowSelection := False;
			Frm_JON30.AdvStringGrid9.ShowSelection := False;
      Frm_JON30.AdvStringGrid8.SetFocus;
    end;
  end;
var iTag : integer;
begin
  try
    ViaNowTag := TcxTextEdit(Sender).Tag;
    Frm_JON30.Tag := Self.Tag;
    lcsActiveEdit := 'meoViaArea'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.

    if PnlSuggest.Visible then
      if PnlSuggest.Caption <> lcsActiveEdit then
      begin
        PnlSuggest.Visible := False;
        AdvGridSj.ShowSelection := False;
        PnlSuggest.Caption := lcsActiveEdit;
      end;

    // 좌, 우, HOME, END 방향키는 이벤트 타지 않도록 한다.
    // if (Key = 37) or (Key = 39) or (Key = 35) or (Key = 36) then  Exit;
    if (Key = 39) or (Key = 35) or (Key = 36) then  Exit;

    if ( ssCtrl in Shift) and ( Key = VK_LEFT ) then
    begin
      if ViaNowTag = 1 then
        if  ( meoViaArea1.SelStart = 0 ) And ( PnlSuggest.Visible ) then
        begin
          pJON03POISetFocus;
        end
      else
        if  ( meoViaArea[ViaNowTag].SelStart = 0 ) And ( PnlSuggest.Visible ) then
        begin
          pJON03POISetFocus;
        end;
      Exit;
    end;

    if Key = VK_LEFT then Exit;

    if ( Key = VK_DOWN ) And ( PnlSuggest.Visible ) then
    begin
      Key := 0;
      TcxTextEdit(Sender).SelStart := Length(TcxTextEdit(Sender).Text);
      if PnlSuggest.Visible then
      begin
        AdvGridSj.ShowSelection := True;
        AdvGridSj.SetFocus;
        Exit;
      end;
    end else
    // 검색 그리드로 포커스 이동..
    if ( ( Key in [VK_DOWN, VK_UP] ) And ( Not PnlSuggest.Visible ) ) then
    begin
      pJON03POISetFocus;
    end else
    if Key = VK_BACK then
    begin
      Frm_JON30.sPreSearchWord := '';
      J30ShowS := False;
      gmap_forword := '';
      ViaNowTag := TcxTextEdit(Sender).Tag;
      if ViaNowTag = 1 then
      begin
        sAnsiSchTxt := meoViaArea1.Text;
        if Length(sAnsiSchTxt) <= 4 then
        begin
          cxViaAreaName1.Caption := '';
          Via_Info[ViaNowTag].XposVia := '';
          Via_Info[ViaNowTag].YposVia := '';
          Via_Info[ViaNowTag].ViaAreaDetail := '';
          Via_Info[ViaNowTag].DocId := '';
          Via_Info[ViaNowTag].CellSel := '';
          Via_Info[ViaNowTag].SchWord := '';
          Via_Info[ViaNowTag].ViaSA1 := '';
          Via_Info[ViaNowTag].ViaSA2 := '';
          Via_Info[ViaNowTag].ViaSA3 := ''; // 출1, 출2, 출3
        end;
        if Length(sAnsiSchTxt) = 0 then ViaOK;
      end else
      begin
        sAnsiSchTxt := meoViaArea[ViaNowTag].Text;
        if Length(sAnsiSchTxt) <= 4 then
        begin
          cxViaAreaName[ViaNowTag].Caption := '';
          Via_Info[ViaNowTag].XposVia := '';
          Via_Info[ViaNowTag].YposVia := '';
          Via_Info[ViaNowTag].ViaAreaDetail := '';
          Via_Info[ViaNowTag].DocId := '';
          Via_Info[ViaNowTag].CellSel := '';
          Via_Info[ViaNowTag].SchWord := '';
          Via_Info[ViaNowTag].ViaSA1 := '';
          Via_Info[ViaNowTag].ViaSA2 := '';
          Via_Info[ViaNowTag].ViaSA3 := ''; // 출1, 출2, 출3
        end;
        if Length(sAnsiSchTxt) = 0 then ViaOK;
      end;
    end else
    if Key = VK_RETURN then
    begin
      // Enter를 쳤을때 검색이 안끝났으면 다시 재검색 해준다.
//      if PnlPOISch.Visible then
//      begin
//        ViaNowTag := TcxTextEdit(Sender).Tag;
//        gKWComp := '';
//        GS_VIA_Tag := ViaNowTag;
//        gbEnter := True;
//        Proc_AreaSearchKDown_Added(Key);
//
//        PnlSuggest.Visible := False;
//        AdvGridSj.ShowSelection := False;
//        PnlSuggest.Caption := '';
//
//        Exit;
//      end;

      ViaNowTag := TcxTextEdit(Sender).Tag;
      // 엔터키 입력 일때,,   그리드에 경유지 정보 추가 한다.
      if ViaNowTag = 1 then
      begin
        if meoViaArea1.Text <> '' then
        begin
          ViaOK; // 경유지 저장 및 화면 닫기.
          Hide_Panel('meoViaArea',0);
          if GT_USERIF.ID = 'sntest' then Log('4791--' + lcsActiveEdit, LOGDATAPATHFILE);
        end;
      end	else
      begin
        if meoViaArea[ViaNowTag].Text <> '' then
        begin
          ViaOK; // 경유지 저장 및 화면 닫기.
          Hide_Panel('meoViaArea',0);
          if GT_USERIF.ID = 'sntest' then Log('4799--' + lcsActiveEdit, LOGDATAPATHFILE);
        end;
      end;

      if meoViaArea[TcxTextEdit(sender).Tag + 1].Text <> '' then
        meoViaArea[TcxTextEdit(sender).Tag + 1].SetFocus
      else
      begin
        meoEndArea.SetFocus;
      end;

      if PnlSuggest.Visible then
      begin
        PnlSuggest.Visible := False;
        AdvGridSj.ShowSelection := False;
      end;
    end else
    if Key <> 229 then
    begin
      if (Key = VK_F4) then Exit;
      ViaNowTag := TcxTextEdit(Sender).Tag;
      gKWComp := '';
  {		Grid_Clear('meoViaArea',1);
      Grid_Clear('meoViaArea',2);
      Grid_Clear('meoViaArea',3);
      Grid_Clear('meoViaArea',4);}
      GS_VIA_Tag := ViaNowTag;
      Proc_AreaSearchKDown_Added(Key);
    end;
  Except
    on e: exception do
    begin
      Log('meoViaArea1KeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'meoViaArea1KeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.mmoCbMemoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if fCheckMaxLength(mmoCbMemo, 296) then Key := 0;
end;

procedure TFrm_JON01.cxtBubinSearchNameKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key) = VK_RETURN then
  begin
    // 법인정보를 조회한다.
    Proc_BubinListSearch;
  end;
end;

procedure TFrm_JON01.cxtBubinSearchNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // 검색 그리드로 포커스 이동..
  if Key in [VK_DOWN, VK_UP] then
  begin
    cxGrdBubin.SetFocus;
  end
end;

procedure TFrm_JON01.cxtBubinSearchNamePropertiesChange(Sender: TObject);
begin
  // 법인정보를 조회한다.
  Proc_BubinListSearch;
end;

procedure TFrm_JON01.cxtCuBubinEnter(Sender: TObject);
begin
  cxLBuNmFlg.Visible := False;
end;

procedure TFrm_JON01.cxtCuBubinExit(Sender: TObject);
begin
  cxLBuNmFlg.Visible := (cxtCuBubin.Text = '') // 고객명 입력 잔상.
end;

procedure TFrm_JON01.cxtCuBubinFocusChanged(Sender: TObject);
begin
  cxLBuNmFlg.Visible := ( Not cxtCuBubin.Focused ) And (cxtCuBubin.Text = '');
end;

procedure TFrm_JON01.cxtCuBubinPropertiesChange(Sender: TObject);
begin
  if ( Not cxtCuBubin.Focused ) then
    cxLBuNmFlg.Visible := (cxtCuBubin.Text = ''); // 고객명 입력 잔상.
end;

procedure TFrm_JON01.cxtCuTel2Enter(Sender: TObject);
begin
  cxLCuTel2Flg.Visible := False;
end;

procedure TFrm_JON01.cxtCuTel2Exit(Sender: TObject);
begin
  cxLCuTel2Flg.Visible := (cxTCuTel2.Text = '') // 전화번호2 입력 잔상.
end;

procedure TFrm_JON01.cxtCuTel2FocusChanged(Sender: TObject);
begin
  cxLCuTel2Flg.Visible := ( Not cxtCuTel2.Focused ) And ( cxTCuTel2.Text = '');
end;

procedure TFrm_JON01.cxtCuTel2PropertiesChange(Sender: TObject);
begin
  if ( Not cxTCuTel2.Focused ) then
    cxLCuTel2Flg.Visible := (cxTCuTel2.Text = ''); // 전화번호2 입력 잔상.
end;

procedure TFrm_JON01.cxtCuTelEnter(Sender: TObject);
begin
  cxLCuTelFlg.Visible := False;
end;

procedure TFrm_JON01.cxtCuTelExit(Sender: TObject);
begin
  cxLCuTelFlg.Visible := (cxTCuTel.Text = '') // 고객검색 입력 잔상.
end;

procedure TFrm_JON01.cxtCuTelFocusChanged(Sender: TObject);
begin
  cxLCuTelFlg.Visible := ( Not cxtCuTel.Focused ) And ( cxTCuTel.Text = '');
end;

procedure TFrm_JON01.cxtCuTelKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if ( StrToIntDef(Copy(cxtCuTel.Text, 1, 1), -1) In [0..9] ) then
    begin
      // 전화번호 검색
      SearchCuTel((Pos('수정', Self.Caption) > 0 ));
    end else
    begin
      if Length(Trim(cxtCuTel.Text)) >= 2 then
      begin
        // 고객명 으로 조회 한다... sGB : NAME(고객명으로 조회), : TELL(전화번호로 조회)
        CustomerSearch('NAME');
      end else
      begin
        ShowMessage('고객명 검색은 2자 이상 입력하셔야 합니다.');
      end;
    end;
  end;

  if Ord(key) in [VK_F7..VK_F12, Vk_F1] then
  begin
    case ord(key) of
      Vk_F1:
        if btnPickupInsert.Visible then
					btnPickupInsert.OnClick(btnPickupInsert); // 픽업등록 단축키 : 2011.05.25 CDS. Add.
      //      VK_F6     : if rb_search.Enabled then rb_Search.OnClick(rb_Search);
      Vk_F7:
        if btnCmdUpdSave.Enabled then btnCmdUpdSave.OnClick(btnCmdUpdSave); // 수정
      Vk_F8:
        btnCmdExit.OnClick(btnCmdExit); // 종료
      Vk_F9:
        begin
          if not btnCmdJoin.Enabled then Exit; // 접수
          btnCmdJoinClick(btnCmdJoin);
        end;
      Vk_F10:
        if btnCmdWait.Enabled then btnCmdWait.OnClick(btnCmdWait); // 대기
      Vk_F11:
        if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // 복수콜
      Vk_F12:
        if btnCmdQuestion.Enabled then btnCmdQuestion.OnClick(btnCmdQuestion); // 문의
    end;
  end;
end;

procedure TFrm_JON01.cxtCuTelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if PnlSuggest.Visible then
  begin
    PnlSuggest.Visible := False;
    AdvGridSj.ShowSelection := False;
    PnlSuggest.Caption := '';
  end;
end;

procedure TFrm_JON01.cxtCuTelPropertiesChange(Sender: TObject);
begin
  if Not cxTCuTel.Focused then
    cxLCuTelFlg.Visible := (cxTCuTel.Text = ''); // 고객검색 입력 잔상.
end;

procedure TFrm_JON01.cxtEndYvalPropertiesChange(Sender: TObject);
begin
  tmrXYChange.Tag := 1;   // 도착지
  tmrXYChange.Enabled := True;
end;

procedure TFrm_JON01.cxTmWaitTimeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
    cxCurWaitTmRate.SetFocus;

  if Ord(key) in [VK_F7..VK_F12, VK_ESCAPE, Vk_F1] then
  begin
    case ord(key) of
      Vk_F1:
        if btnPickupInsert.Visible then
          btnPickupInsert.OnClick(btnPickupInsert); // 픽업등록 단축키 : 2011.05.25 CDS. Add.
      Vk_F7: //if rb_Modify.Enabled then rb_Modify.OnClick(rb_Modify);              // 수정
        if btnCmdUpdSave.Enabled then
          btnCmdUpdSave.OnClick(btnCmdUpdSave);
      Vk_F8: //whbtn_Cancel.OnClick(whbtn_Cancel);                                   // 종료
        btnCmdExit.OnClick(btnCmdExit);
      Vk_F9:
        begin
          //if lg_Enter <> '' then exit;
          //  lg_Enter := 'Enter';
          if not btnCmdJoin.Enabled then
            Exit; // 접수
          btnCmdJoinClick(btnCmdJoin);
        end;
      Vk_F10:
        if btnCmdWait.Enabled then
          btnCmdWait.OnClick(btnCmdWait); // 대기
      Vk_F12:
        if btnCmdQuestion.Enabled then
          btnCmdQuestion.OnClick(btnCmdQuestion); // 문의
      VK_ESCAPE: // ESC 키
        begin
          if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
          begin
            if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '')
              and (Trim(lblStartAreaName.Text) = '') and (Trim(lblEndAreaName.Caption) = '')
              and (Trim(cxtStartAreaDetail.Text) = '') and (Trim(cxtEndAreaDetail.Caption) = '') then
              btnCmdExit.OnClick(btnCmdExit); // 종료
          end;
        end;
    end;
  end;
end;

procedure TFrm_JON01.cxTSearchMainTelEnter(Sender: TObject);
begin
  cxLSearchMainTelFlg.Visible := False;
end;

procedure TFrm_JON01.cxTSearchMainTelExit(Sender: TObject);
begin
  cxLSearchMainTelFlg.Visible := (cxTSearchMainTel.Text = '') // 검색 입력 잔상.
end;

procedure TFrm_JON01.cxTSearchMainTelFocusChanged(Sender: TObject);
begin
  cxLSearchMainTelFlg.Visible := ( Not cxTSearchMainTel.Focused ) And (cxTSearchMainTel.Text = '');
end;

procedure TFrm_JON01.cxTSearchMainTelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var i : Integer;
begin
  if Key = VK_BACK then
  begin
    if (Length(cxTSearchMainTel.Text) <= 1) then
    begin
      lst_BRList.Items := cboBranch.Properties.Items;
      searchBRlist.Clear;
      for i := 0 to lst_BRList.Items.Count - 1 do
        searchBRlist.Add(inttostr(i));

      if lst_BRList.Items.Count > 30 then
        lst_BRList.Height := 500
      else
        lst_BRList.Height := lst_BRList.Items.Count * 18;
//      lst_BRList.Visible := False;
//      Exit;
    end;
  end else
  if Key = VK_DOWN then
  begin
    if lst_BRList.Visible then lst_BRList.SetFocus;
  end;
end;

procedure TFrm_JON01.cxTSearchMainTelKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key <> 229) then
  begin
  	if Trim(cxTSearchMainTel.Text) = '' then
    begin
      cxTSearchMainTel.SetFocus;
      Exit;
    end;

    if ( StrToIntDef(Copy(cxTSearchMainTel.Text, 1, 1), -1) In [0..9] ) then
    begin
      // 대표번호로 조회..
  		if not Func_KeyNumberList_Search then Exit;
    end else
    begin
      if Length(Trim(cxTSearchMainTel.Text)) >= 1 then
      begin
        // 지사명으로 조회..  CDS. 080818.
  			if not proc_BrNameList_Search then Exit;
      end;
    end;
  end;
end;

procedure TFrm_JON01.cxTSearchMainTelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var i : Integer;
begin
  if Trim(cxTSearchMainTel.Text) = '' then
  begin
    lst_BRList.Items := cboBranch.Properties.Items;
    searchBRlist.Clear;
    for i := 0 to lst_BRList.Items.Count - 1 do
      searchBRlist.Add(inttostr(i));
  end;
  if lst_BRList.Items.Count > 30 then
    lst_BRList.Height := 500
  else
    lst_BRList.Height := lst_BRList.Items.Count * 18;
  lst_BRList.Visible := True;

  if PnlSuggest.Visible then
  begin
    PnlSuggest.Visible := False;
    AdvGridSj.ShowSelection := False;
    PnlSuggest.Caption := '';
  end;
end;

procedure TFrm_JON01.cxTSearchMainTelPropertiesChange(Sender: TObject);
begin
  if ( Not cxTSearchMainTel.Focused ) then
  cxLSearchMainTelFlg.Visible := (cxTSearchMainTel.Text = ''); // 검색 입력 잔상.
end;

procedure TFrm_JON01.cxtStartYvalPropertiesChange(Sender: TObject);
begin
  tmrXYChange.Tag := 0;  // 출발지
  tmrXYChange.Enabled := True;
end;

procedure TFrm_JON01.cxTxtBrNameCaptionMouseEnter(Sender: TObject);
begin
  cxTxtBrNameCaption.Visible := False;
  // 지사명, 대표번호 정보를 눈에 확~ 뜨이게, 크게 보여준다.
end;

procedure TFrm_JON01.edtCuNameEnter(Sender: TObject);
begin
  cxLCuNmFlg.Visible := False;
end;

procedure TFrm_JON01.edtCuNameExit(Sender: TObject);
begin
  cxLCuNmFlg.Visible := (edtCuName.Text = '') // 고객명 입력 잔상.
end;

procedure TFrm_JON01.edtCuNameFocusChanged(Sender: TObject);
begin
  cxLCuNmFlg.Visible := ( Not edtCuName.Focused ) And (edtCuName.Text = '');
end;

procedure TFrm_JON01.edtCuNamePropertiesChange(Sender: TObject);
begin
  if ( Not edtCuName.Focused ) then
    cxLCuNmFlg.Visible := (edtCuName.Text = ''); // 고객명 입력 잔상.
end;

procedure TFrm_JON01.edtPostPayEnter(Sender: TObject);
begin
  LblPostPay.Visible := False;
end;

procedure TFrm_JON01.edtPostPayExit(Sender: TObject);
begin
  LblPostPay.Visible := (edtPostPay.Value = 0); // 기사송금 입력 잔상.
  edtPostPay.Refresh;

  if edtPostPay.Value > curRate.Value then
  begin
    if (cbbPayMethod.Text <> PAY_METHOD_BUSAN) and (cbbPayMethod.Text <> PAY_METHOD_BUSAN3K) then
      edtPostPay.Value := curRate.Value;
  end;

  if edtPostPay.Value = 0 then
      PostTime := POST_TIME_NOPAY;
end;

procedure TFrm_JON01.edtPostPayFocusChanged(Sender: TObject);
begin
  LblPostPay.Visible := ( Not edtPostPay.Focused ) And (edtPostPay.Value = 0);
end;

procedure TFrm_JON01.edtPostPayKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if edtPostPay.Value < 1000 then
    begin
      edtPostPay.Value := edtPostPay.Value * 1000;
    end;

    if meoBigo.Visible = True then
      meoBigo.SetFocus
    else
      meoBigo2.SetFocus;
  end;
end;

procedure TFrm_JON01.edtPostPayKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '-' then
    Key := #0;
end;

procedure TFrm_JON01.edtPostPayPropertiesChange(Sender: TObject);
begin
  if ( Not edtPostPay.Focused ) then
  begin
    LblPostPay.Visible := (edtPostPay.Value = 0); // 기사송금 입력 잔상.
    edtPostPay.Refresh;
  end;

  AppendPostDesc;
end;

procedure TFrm_JON01.FormActivate(Sender: TObject);
Var iSel : Integer;
begin
  cxLblActive.Style.AssignedValues := [2,3];
  cxLblActive.Style.Color := $000080FF;

  if Not pJON01Dock.bUNDock then
  begin
    for iSel := 0 to Frm_Main.cxPageControl1.PageCount - 1 do
    begin
      if Frm_Main.cxPageControl1.Pages[iSel].Tag = Jon03Tag then
      begin
        Frm_Main.cxPageControl1.ActivePageIndex := iSel;
      end;
    end;
  end;

  if ( Frm_JON011.Showing ) And ( gsCuTelHint <> '' ) then
  begin
    Frm_JON011.Left := Self.Left - (Frm_JON011.Width + 1);
    Frm_JON011.Top  := Self.Top;

    Frm_JON011.Tag := Self.Tag;

    Frm_JON011.meoCuCCMemoS .Text := meoCuCCMemo.Text;
    Frm_JON011.meoCuWorMemoS.Text := meoCuWorMemo.Text;
    Frm_JON011.mmoCbMemoS.   Text := mmoCbMemo.Text;

    Frm_JON011.FormResize(Nil);

    Frm_JON011.bChkTime := True;
    Frm_JON011.TmrChkTag.Enabled := True;
  end;
end;

procedure TFrm_JON01.FormCreate(Sender: TObject);
const
  TabInc: LongInt = 0;

Var sTitle: string;
    i : Integer;
begin
	// 대기시간별 대기요금 만들기..
  sTitle := '00:30' + ' (시간/분)까지 [' + '5,000' + '원]';
  Proc_WTRMenuCreate(sTitle, 'WaitTmR1', 5000);
  sTitle := '01:00' + ' (시간/분)까지 [' + '10,000' + '원]';
  Proc_WTRMenuCreate(sTitle, 'WaitTmR2', 10000);
  sTitle := '01:30' + ' (시간/분)까지 [' + '15,000' + '원]';
  Proc_WTRMenuCreate(sTitle, 'WaitTmR3', 15000);
  sTitle := '02:00' + ' (시간/분)까지 [' + '20,000' + '원]';
  Proc_WTRMenuCreate(sTitle, 'WaitTmR4', 20000);
  sTitle := '05:00' + ' (시간/분)까지 [' + '25,000' + '원]';
  Proc_WTRMenuCreate(sTitle, 'WaitTmR5', 25000);
  sTitle := '10:00' + ' (시간/분)까지 [' + '100,000' + '원]';
  Proc_WTRMenuCreate(sTitle, 'WaitTmR6', 100000);

  pnl_charge.Caption := '';
  Lbl_Distance.Caption := '';

  pnl_charge.Left := btn_ChargeSave.Left; // 요금조회 조건 표기. 하단쪽..
  pnl_charge.Top := 120;

//-  BtnSR.Left := pnl_charge.Left + pnl_charge.Width - ( BtnSR.Width + 2);
//-  BtnSR.Top  := pnl_charge.Top + 1;


  loc_Ud_xdom := CoDomDocument.Create; // 수정모드 전용 XML 전문 Pasing 변수.

	SCboLevelSeq := TStringList.Create;

  // 수정화면에서, 사용하는 오더정보를 보여준다.
  cxMeoOrderUpInfo.Text := '';

  cxGBSearch.Left := 7;
  cxGBSearch.Top := 67;
  cxGBSearch.Visible := False;

  lst_BRList.Left := 277;
  lst_BRList.Top := 59;
  lst_BRList.Visible := False;

  // CID 조회인지 설정을 한다.  Value:CID
  cxLblCIDUseFlg.Hint := '';

  // 접수번호 조회 인지 설정을 한다. Value:CONFSLIP
  cxLblConfSlipUseFlg.Hint := '';

  // 수정버튼 위치 설정.
  btnCmdUpdSave.Left  := btnCmdQuestion.Left;
  btnCmdUpdSave.Top   := btnCmdQuestion.Top;

  cxTxtBrNameCaption.Top := cboBrOnly.Top; // 수정시에 지사명, 대표번호 크게 보여줌.
  cxTxtBrNameCaption.Left := cboBrOnly.Left;

  // 고객 검색 그리드
	cxCustView.DataController.SetRecordCount(0);
  for i := 0 to cxCustView.ColumnCount - 1 do
    cxCustView.Columns[i].DataBinding.ValueType := 'String';

  shaPrcMsg.left := 179;
  shaPrcMsg.Top := 114;

  pnlNewCustYN.Left := 4;
  pnlNewCustYN.Top := 56;

	pnlTelNESearch.Left := 6; // 전화번호로 위경도값 및 위치값 조회.
  pnlTelNESearch.Top := 117;

  pnlBrNoMent.Left := 4; // 지사별 멘트를 보여준다.
  pnlBrNoMent.Top := 31;

  pnlServerDisconn.Left := 2;
  pnlServerDisconn.Top := 2;

  lcsActiveEdit := ''; // 활성화 된 출발지, 도착지 Edit 구분을 저장.

  map_sl_equal := TStringList.Create;
  map_sl_street := TStringList.Create;
  map_sl_detail := TStringList.Create;
  map_sl_Local := TStringList.Create; // 미사용
  map_sl_city := TStringList.Create;
  map_sl_city2 := TStringList.Create;
  map_sl_city3 := TStringList.Create;
	map_sl_city4 := TStringList.Create;
	map_sl_Rlt1 := TStringList.Create;
  map_sl_Rlt2 := TStringList.Create;
  map_sl_Rlt3 := TStringList.Create;
  map_sl_Rlt4 := TStringList.Create;
  map_sl_Rlt5 := TStringList.Create;
  map_sl_Rlt6 := TStringList.Create;

  glsMapRltVal := TStringList.Create;  // 출/도착지 조회 결과값을 매칭 점수 저장.

  loc_Ud_xdom := CoDomDocument.Create; // 수정모드 전용 XML 전문 Pasing 변수.

  LoadPayMethod;

  if GS_PRJ_AREA = 'O' then
    btnPickupInsert.Visible := (GT_USERIF.SA = '02') or (GT_USERIF.SA = '09') or (GT_USERIF.PickUp = '1');

	// 접수화면의 기본 컨트롤을 초기화 한다.
  // False : 컨트롤초기화 안함. True : 지사코드 재로드 한다.
	for i := 2 to 5 do
	begin
		meoViaArea[i] := TcxTextEdit.create(GbViaArea);
		meoViaArea[i].Name := 'meoViaArea' + inttostr(i);
		meoViaArea[i].Parent := GbViaArea;
		meoViaArea[i].Left := meoViaArea1.left;
		meoViaArea[i].Height := meoViaArea1.Height;
		meoViaArea[i].Width := meoViaArea1.Width;
		meoViaArea[i].Style := meoViaArea1.Style;
    meoViaArea[i].StyleFocused.Color := meoViaArea1.StyleFocused.Color;
    meoViaArea[i].TabStop := meoViaArea1.TabStop;
		meoViaArea[i].Tag := i;
		meoViaArea[i].Text := '';
		meoViaArea[i].OnEnter   := meoViaArea1Enter;
		meoViaArea[i].OnKeyDown := meoViaArea1KeyDown;
		meoViaArea[i].OnKeyUp   := meoViaArea1KeyUp;
		meoViaArea[i].OnExit    := meoViaArea1Exit;
		meoViaArea[i].Properties.Alignment.Horz := meoViaArea1.Properties.Alignment.Horz;
		meoViaArea[i].Properties.Alignment.Vert := meoViaArea1.Properties.Alignment.Vert;

		if i = 2 then
			meoViaArea[i].Top := meoViaArea1.Top + meoViaArea1.Height
		else
			meoViaArea[i].Top := meoViaArea[i-1].Top + meoViaArea[i-1].Height;

		meoViaArea[i].Visible := True;

		cxViaAreaName[i] := TcxLabel.create(GbViaArea);
		cxViaAreaName[i].Name := 'cxViaAreaName' + inttostr(i);
		cxViaAreaName[i].Parent := GbViaArea;
		cxViaAreaName[i].Left := cxViaAreaName1.Left;
		cxViaAreaName[i].Height := cxViaAreaName1.Height;
		cxViaAreaName[i].Width := cxViaAreaName1.Width;
		cxViaAreaName[i].Style := cxViaAreaName1.Style;
		cxViaAreaName[i].AutoSize := cxViaAreaName1.AutoSize;
    cxViaAreaName[i].TabStop := cxViaAreaName1.TabStop;
		cxViaAreaName[i].tag := i;
		cxViaAreaName[i].Caption := '';
		cxViaAreaName[i].Properties.Alignment.Horz := cxViaAreaName1.Properties.Alignment.Horz;
		cxViaAreaName[i].Properties.Alignment.Vert := cxViaAreaName1.Properties.Alignment.Vert;
		if i = 2 then
			cxViaAreaName[i].Top := cxViaAreaName1.Top + cxViaAreaName1.Height
		else
			cxViaAreaName[i].Top := cxViaAreaName[i-1].Top + cxViaAreaName1.Height;

		cxViaAreaName[i].Visible := True;

		BtnViaMinus[i] := TcxButton.create(GbViaArea);
		BtnViaMinus[i].Name := 'BtnViaAdd' + inttostr(i);
		BtnViaMinus[i].Parent := GbViaArea;
		BtnViaMinus[i].Left := BtnViaMinus1.Left;
		BtnViaMinus[i].Height := BtnViaMinus1.Height;
		BtnViaMinus[i].Width := BtnViaMinus1.Width;
    BtnViaMinus[i].TabStop := BtnViaMinus1.TabStop;
		BtnViaMinus[i].Tag := i;
    BtnViaMinus[i].OptionsImage.Glyph := BtnViaMinus1.OptionsImage.Glyph;
		if i = 2 then
			BtnViaMinus[i].Top := BtnViaMinus1.Top + BtnViaMinus1.Height + 2
		else
			BtnViaMinus[i].Top := BtnViaMinus[i-1].Top + BtnViaMinus[i-1].Height + 2;
		BtnViaMinus[i].Visible := True;
		BtnViaMinus[i].Caption := '';
		BtnViaMinus[i].Hint := '삭제(F6)';
		BtnViaMinus[i].ShowHint := True;
		BtnViaMinus[i].OnClick := BtnViaMinus1Click;
	end;

	FControlInitial(False, True);
  ControlClear(False);

  ViaNowTag := 1;   //현재 입력중인 경유지위치
	ViaADDTag := 0;   //현재 추가한 경유지위치

	FBigoList := TStringList.Create;
  FSpopList := TStringList.Create;
	FEpopList := TStringList.Create;

  LoadBigoList;
	LoadSpopList;
  LoadEpopList;

	searchBRlist := TStringList.Create;

  LoadPayMethod;

  cxBubinView.DataController.SetRecordCount(0);
  for i := 0 to cxBubinView.ColumnCount - 1 do
    cxBubinView.Columns[i].DataBinding.ValueType := 'String';

	// DNIS 정보 추가. 2011.05.17 CDS.
	shrDNIS_DSP.Visible := False;
	shrDNIS_DSP.Left := 0;
	shrDNIS_DSP.Top  := 65;

  MagneticWnd := TMagnetic.Create;
end;

procedure TFrm_JON01.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Style.AssignedValues := [2,3];
  cxLblActive.Style.Color := PnlTitle.Color;
end;

procedure TFrm_JON01.FormDestroy(Sender: TObject);
begin
	FBigoList.Free;
  FSpopList.Free;
  FEpopList.Free;

	searchBRlist.Free;
 	FreeAndNil(SCboLevelSeq);

  Frm_JON01 := Nil;
end;

procedure TFrm_JON01.FormShow(Sender: TObject);
begin
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  if Assigned(MagneticWnd) then
  begin
    // Snapweite aktualisieren
     MagneticWnd.SnapWidth := 15;
    //frmMain als Parent Form zum andocken zuweisen
     MagneticWnd.AddWindow(Self.Handle, 0, MagneticWndProc);
  end;
  bFirst := True;

  gbEnter := False;

  if GT_OCX <> '' then
  begin
    BtnCall.Visible := True;
    BtnCall2.Visible := True;

    cxtCuTel.Width := 110;
    cxImage1.Left  := 133;

    cxtCuTel2.Width := 110;
  end else
  begin
    BtnCall.Visible := False;
    BtnCall2.Visible := False;

    cxtCuTel.Width := 134;
    cxImage1.Left  := 158;

    cxtCuTel2.Width := 132;
  end;

  if TCK_USER_PER.JON_CUSTPLUS = '1' then
    BtnCustAdd.Enabled := True
  else
    BtnCustAdd.Enabled := False;

	if TCK_USER_PER.JON_CustLevel = '1' then
		cboCuLevel.Enabled := True
	else
		cboCuLevel.Enabled := False;

  if GS_CALLMU_Use = 'y' then BtnOptionCallMu.Visible := True
                         else BtnOptionCallMu.Visible := False;

  Init_AdvGridSj;
end;

procedure TFrm_JON01.LoadBigoList;
var
  I: Integer;
  Menu: TMenuItem;
begin
  FBigoList.Clear;

  FBigoList.Add('전화요망=전화요망');
  FBigoList.Add('독촉전화=독촉전화');
  FBigoList.Add('우수고객=우수고객');
  FBigoList.Add('리콜=리콜');

  FBigoList.AddStrings(GS_UserBigoList1);

  while pmBigo.Items.Count > 2 do
  begin
    if pmBigo.Items[0].Caption = '-' then
      Break;

    Menu := pmBigo.Items[0];
    pmBigo.Items.Delete(0);
    Menu.Free;
  end;

  for I := 0 to FBigoList.Count - 1 do
  begin
    try
      Menu := TMenuItem.Create(pmBigo);
//      Menu.Name := 'mniUser' + IntToStr(I);
      Menu.Caption := FBigoList.Names[I];
      Menu.Enabled := True;
      Menu.Visible := True;
      Menu.OnClick := mniUserClick;
      Menu.Tag     := i;
      pmBigo.Items.Insert(I, Menu);
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TFrm_JON01.meoBigo2Exit(Sender: TObject);
begin
  LbmeoBigo2.Visible := (meoBigo2.Text = '') // 적요2 입력 잔상.
end;

procedure TFrm_JON01.meoBigo2FocusChanged(Sender: TObject);
begin
  LbmeoBigo2.Visible := ( Not meoBigo2.Focused ) And (meoBigo2.Text = '');
end;

procedure TFrm_JON01.meoBigo2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if fCheckMaxLength(meoBigo2, 296) then Key := 0;
end;

procedure TFrm_JON01.meoBigo2PropertiesChange(Sender: TObject);
begin
  if ( Not meoBigo2.Focused ) then
    lbmeoBigo2.Visible := (meoBigo2.Text = ''); // 적요2 입력 잔상.
end;

procedure TFrm_JON01.meoBigoEnter(Sender: TObject);
begin
  if TcxMemo(Sender).Name = 'meoBigo'  then LbmeoBigo.Visible := False else
  if TcxMemo(Sender).Name = 'meoBigo2' then LbmeoBigo2.Visible := False;

  pnl_charge.Visible := False;
//-  BtnSR.Visible := False;

  FCurrBigo := TcxMemo(Sender);
end;

procedure TFrm_JON01.meoBigoExit(Sender: TObject);
begin
  lbmeoBigo.Visible := (meoBigo.Text = '') // 적요1 입력 잔상.
end;

procedure TFrm_JON01.meoBigoFocusChanged(Sender: TObject);
begin
  LbmeoBigo.Visible := ( Not meoBigo.Focused ) And (meoBigo.Text = '');
end;

procedure TFrm_JON01.meoBigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if (Pos('수정', Self.Caption) = 0 ) then
      btnCmdJoin.SetFocus
    else
      btnCmdUpdSave.SetFocus;
  end;

  if Ord(key) in [VK_F7..VK_F12, VK_ESCAPE, Vk_F1] then
  begin
    case ord(key) of
      Vk_F1:
        if btnPickupInsert.Visible then
          btnPickupInsert.OnClick(btnPickupInsert); // 픽업등록 단축키 : 2011.05.25 CDS. Add.
      //      VK_F6     : if rb_search.Enabled then rb_Search.OnClick(rb_Search);
      Vk_F7: //if rb_Modify.Enabled then rb_Modify.OnClick(rb_Modify);              // 수정
        if btnCmdUpdSave.Enabled then
          btnCmdUpdSave.OnClick(btnCmdUpdSave);
      Vk_F8: //whbtn_Cancel.OnClick(whbtn_Cancel);                                   // 종료
        btnCmdExit.OnClick(btnCmdExit);
      Vk_F9:
        begin
          //if lg_Enter <> '' then exit;
          //  lg_Enter := 'Enter';
          if not btnCmdJoin.Enabled then
            Exit; // 접수
          btnCmdJoinClick(btnCmdJoin);
        end;
      Vk_F10:
        if btnCmdWait.Enabled then
        begin
          if meoBigo.CanFocus then
          begin
            meoBigo.SetFocus;
            Application.ProcessMessages;
          end;
          btnCmdWait.OnClick(btnCmdWait); // 대기
        end;
      Vk_F11:
        if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // 복수콜
      Vk_F12:
        if btnCmdQuestion.Enabled then
          btnCmdQuestion.OnClick(btnCmdQuestion); // 문의
      VK_ESCAPE: // ESC 키
        begin
          if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
          begin
            if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '')
              and (Trim(lblStartAreaName.Text) = '') and (Trim(lblEndAreaName.Caption) = '')
              and (Trim(cxtStartAreaDetail.Text) = '') and (Trim(cxtEndAreaDetail.Caption) = '') then
              btnCmdExit.OnClick(btnCmdExit); // 종료
          end;
        end;
    end;
  end;
end;

procedure TFrm_JON01.meoBigoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if fCheckMaxLength(meoBigo, 296) then Key := 0;
end;

procedure TFrm_JON01.meoBigoPropertiesChange(Sender: TObject);
begin
  if ( Not meoBigo.Focused ) then
    lbmeoBigo.Visible := (meoBigo.Text = ''); // 적요1 입력 잔상.
end;

procedure TFrm_JON01.meoCuCCMemoEnter(Sender: TObject);
begin
  cxLCuCCMemoFlg.Visible := False;
end;

procedure TFrm_JON01.meoCuCCMemoExit(Sender: TObject);
begin
  cxLCuCCMemoFlg.Visible := (meoCuCCMemo.Text = '') // 상담메모 입력 잔상.
end;

procedure TFrm_JON01.meoCuCCMemoFocusChanged(Sender: TObject);
begin
  cxLCuCCMemoFlg.Visible := ( Not meoCuCCMemo.Focused ) And (meoCuCCMemo.Text = '');
end;

procedure TFrm_JON01.meoCuCCMemoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if fCheckMaxLength(meoCuCCMemo, 596) then Key := 0;
end;

procedure TFrm_JON01.meoCuCCMemoPropertiesChange(Sender: TObject);
begin
  if ( Not meoCuCCMemo.Focused ) then
    cxLCuCCMemoFlg.Visible := (meoCuCCMemo.Text = ''); // 상담메모 입력 잔상.
end;

procedure TFrm_JON01.meoCuWorMemoEnter(Sender: TObject);
begin
  cxLCuWorMemoFlg.Visible := False;
end;

procedure TFrm_JON01.meoCuWorMemoExit(Sender: TObject);
begin
  cxLCuWorMemoFlg.Visible := (meoCuWorMemo.Text = '') // 기사메모 입력 잔상.
end;

procedure TFrm_JON01.meoCuWorMemoFocusChanged(Sender: TObject);
begin
  cxLCuWorMemoFlg.Visible := ( Not meoCuWorMemo.Focused ) And (meoCuWorMemo.Text = '');
end;

procedure TFrm_JON01.meoCuWorMemoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if fCheckMaxLength(meoCuWorMemo, 596) then Key := 0;
end;

procedure TFrm_JON01.meoCuWorMemoPropertiesChange(Sender: TObject);
begin
  if ( Not meoCuWorMemo.Focused ) then
    cxLCuWorMemoFlg.Visible := (meoCuWorMemo.Text = ''); // 기사메모 입력 잔상.
end;

procedure TFrm_JON01.meoEndAreaEnter(Sender: TObject);
begin
  try
    cxLEndAreaFlag.Visible := False;

    locNowControlName := 'meoEndArea'; // 현재 활성화된 컨트롤 명.
    lcsActiveEdit := locNowControlName;
    gmap_forword := '';

    if ( Frm_JON30.Tag <> Self.Tag ) And ( Trim(TcxTextEdit(Sender).Text) <> '' )  then
    begin
      if ( Frm_JON30.AdvStringGrid5.Cells[0,1] <> '' ) Or
         ( Frm_JON30.AdvStringGrid4.Cells[0,0] <> '' ) Or
         ( Frm_JON30.AdvStringGrid6.Cells[0,0] <> '') then
      Hide_Panel(lcsActiveEdit, 0);
      if GT_USERIF.ID = 'sntest' then Log('5866--' + lcsActiveEdit, LOGDATAPATHFILE);
    end;
    Frm_JON30.Tag := Self.Tag;

    if  J30ShowE = True then
    begin
      Exit;
    end;

  //  if Assigned(Frm_JON30) and (cxLabel19.Caption = 'F4)수정') then     //  20130703  LYB  잠김 상태에서도 검색창 표시 (팀장님지시)
    if Assigned(Frm_JON30) then
    begin
      if GS_MAP_AREA_AUTOSHOW then
      begin
        Frm_JON30.EndPos(meoEndArea.Text, cxtEndXval.Text, cxtEndYval.Text);
        Frm_JON30.OnSelectedMap := SetEndAreaMap;
        if (not Frm_JON30.Visible) and (cxtEndXval.Text <> '') and (cxtEndYval.Text <> '') then
        begin
          lcsActiveEdit := locNowControlName;
          Hide_Panel(lcsActiveEdit,0);
          if GT_USERIF.ID = 'sntest' then Log('5886--' + lcsActiveEdit, LOGDATAPATHFILE);
        end;
      end else
      begin
        if (not Frm_JON30.Visible) and (cxtEndXval.Text <> '') and (cxtEndYval.Text <> '') then
        begin
          lcsActiveEdit := locNowControlName;
          Hide_Panel(lcsActiveEdit,0);
          if GT_USERIF.ID = 'sntest' then Log('5894--' + lcsActiveEdit, LOGDATAPATHFILE);
          Frm_JON30.chk_Map(False);
        end;
      end;

      if Frm_JON31.Visible and Frm_JON31.Visible then
      begin
        Frm_JON31.EndPos(meoEndArea.Text, cxtEndXval.Text, cxtEndYval.Text);
        Frm_JON31.OnSelectedMap := SetEndAreaMap;
      end;
      gKWComp := '';
    end;
  Except
    on e: exception do
    begin
      Log('meoEndAreaEnter Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'meoEndAreaEnter Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.meoEndAreaExit(Sender: TObject);
begin
  cxLEndAreaFlag.Visible := (meoEndArea.Text = ''); // 도착지 입력 잔상.

  locNowControlName := ''; // 현재 활성화된 컨트롤 명.
  if Assigned(Frm_JON30) and (not (meoEndArea.Focused)) then
    Hide_Panel(lcsActiveEdit,1);
end;

procedure TFrm_JON01.meoEndAreaFocusChanged(Sender: TObject);
begin
  cxLEndAreaFlag.Visible := ( Not meoEndArea.Focused ) And (meoEndArea.Text = '');
end;

procedure TFrm_JON01.meoEndAreaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    Frm_JON30.Tag := Self.Tag;

    lcsActiveEdit := 'meoEndArea'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.
    sActieEdit := 'meoEndArea';

    // 좌, 우, HOME, END 방향키는 이벤트 타지 않도록 한다.
    if (Key = 37) or (Key = 39) or (Key = 35) or (Key = 36) then  Exit;

    if Key = VK_RETURN then
    begin
      if not IsNotModifyPrice and (GT_CHARGE_CAL = 1) then
      begin
        // 대표번호 별 기본 설정 요금 반영 여부를 결정 한다.[True:반영, False:미반영]
        if ((gsMyMainTelUse = 'FALSE') or (GSMyMainTelOrderChargeCheck)) and (not IsMultiCallFixPrice) then
        begin
          tmrThRealDis.Tag := 0;
          proc_dis_alculation(Self.Tag, True);
          if GT_DISTANCE_ST = 1  then proc_Realdis_Mng
                                 else begin
                                        curRate.Value := func_search_charge;
                                        OrgRate := curRate.Value;
                                      end;
        end;
      end;
      Exit;
    end;

    if Key in [VK_DOWN, VK_UP] then
    begin
      Exit; // 그리드에 포커스 넘기는건 KeyUp Event에서 처리한다.
    end;

    sAnsiSchTxt := meoEndArea.Text;

    if Key = VK_BACK then
    begin
      PnlPOISch.Visible := False;
      Log('Line 6181', LOGDATAPATHFILE);
      if Frm_JON30.cxChkPoiSvr.Checked then
      begin
        if ( BtnEdLock.Tag = 1 ) And ( BtnEdLock.Hint = 'F4)잠금' ) then
        begin
          if ( Pos('인근', meoEndArea.Text) = 0 ) And
             ( Pos('부근', meoEndArea.Text) = 0 ) And
             ( Pos('근처', meoEndArea.Text) = 0 ) then
          begin
            BtnEdLock.Hint := 'F4)수정';
            BtnEdLock.Tag  := 0;
            BtnEdLock.OptionsImage.ImageIndex := 0;
            BtnEdLock.Down := False;
            Frm_JON30.N2.Enabled := True;
            Frm_JON30.N2.Caption := '도착지선택(좌표만이동)';
            Frm_JON30.N7.Enabled := True;
            Frm_JON30.N7.Caption := '도착지선택(주소+좌표이동)';
          end;
        end;
      end;

      Log('Line 6202', LOGDATAPATHFILE);
      if (Length(widestring(meoEndArea.Text)) = 1) and (BtnEdLock.Hint <> 'F4)잠금') then
      begin
        Log('Line 6205', LOGDATAPATHFILE);
        Frm_JON30.Grid_Init(lcsActiveEdit,1);
        Frm_JON30.Grid_Init(lcsActiveEdit,2);
        Frm_JON30.Grid_Init(lcsActiveEdit,3);
        Frm_JON30.Grid_Init(lcsActiveEdit,4);
        GS_FULLWORD_CMP := '';
        Init_AdvGridSj;
      end else
  //    if (Length(meoEndArea.Text) <= 1) and (cxLabel19.Caption <> 'F4)잠금') then
      if (Length(sAnsiSchTxt) <= 1) then
      begin
        Log('Line 6216', LOGDATAPATHFILE);
        lblEndAreaName.Caption := '';
        cxtEndAreaDetail.Caption := '';
        cxReEndArea.Clear;

        lcsEnd1 := '';
        lcsEnd2 := '';
        lcsEnd3 := ''; // 도1, 도2, 도3

        lcsEndDocId := '';
        lcsEndCellSel := '';
        lcsEndSchWord := '';

        GS_Grid_DES := '';

        gJONEndChkXY.X := '';
        gJONEndChkXY.Y := '';
        gJONEndChkXY.GUIDE_X := '';
        gJONEndChkXY.GUIDE_Y := '';

        cxtEndXval.Text := '';
        cxtEndYval.Text := '';
        cxtEndGUIDEXval.Text := '';
        cxtEndGUIDEYval.Text := '';

        gKWComp := '';

        gmap_forword := '';
        GS_FULLWORD_CMP := '';

        Frm_JON30.Grid_Init(lcsActiveEdit,1);
        Frm_JON30.Grid_Init(lcsActiveEdit,2);
        Frm_JON30.Grid_Init(lcsActiveEdit,3);
        Frm_JON30.Grid_Init(lcsActiveEdit,4);
        Hide_Panel(lcsActiveEdit,1);

        Log('Line 6241', LOGDATAPATHFILE);
        if BtnEdLock.Hint = 'F4)잠금' then
        begin
          BtnEdLock.Hint := 'F4)수정';
          BtnEdLock.Tag  := 0;
          BtnEdLock.OptionsImage.ImageIndex := 0;
          BtnEdLock.Down := False;
          Frm_JON30.N2.Enabled := True;
          Frm_JON30.N2.Caption := '도착지선택(좌표만이동)';
          Frm_JON30.N7.Enabled := True;
          Frm_JON30.N7.Caption := '도착지선택(주소+좌표이동)';
        end;

        PnlSuggest.Visible := False;
        AdvGridSj.ShowSelection := False;
      end else
      if (Length(sAnsiSchTxt) <= 2) and (BtnEdLock.Hint <> 'F4)잠금') then
      begin
        giKeyWordSerchValue := 0;  // 세부정보 풀매칭 후 부근,인근 입력시 유지 위해서.
      end;
      giAreaKeyFullMatch_CNT := 0; // 세부정보 풀매칭 후 부근,인근 입력시 유지 위해서.

      Log('Line 6264', LOGDATAPATHFILE);
      // 2011.05.18 CDS.
      if GB_JON_BACKKEYUSE then begin
        if (Length(gs_map_old_value_2) - Length(sAnsiSchTxt)) > 1 then begin  // and (Length(map_ls_Text) < Length(gs_MapKeyTemp)) then begin
          Exit;
        end;
      end;
    end;

    if Ord(key) = VK_F4 then
    begin
      if BtnEdLock.Hint = 'F4)잠금' then
      begin
        BtnEdLock.Hint := 'F4)수정';
        BtnEdLock.Tag  := 0;
        BtnEdLock.OptionsImage.ImageIndex := 0;
        BtnEdLock.Down := False;
        Frm_JON30.N2.Enabled := True;
        Frm_JON30.N2.Caption := '도착지선택(좌표만이동)';
        Frm_JON30.N7.Enabled := True;
        Frm_JON30.N7.Caption := '도착지선택(주소+좌표이동)';
      end else
      begin
        BtnEdLock.Hint := 'F4)잠금';
        BtnEdLock.Tag  := 0;
        BtnEdLock.OptionsImage.ImageIndex := 1;
        BtnEdLock.Down := True;
        Frm_JON30.N2.Enabled := False;
        Frm_JON30.N2.Caption := '도착지선택(좌표만이동)-잠금상태';
        Frm_JON30.N7.Enabled := False;
        Frm_JON30.N7.Caption := '도착지선택(주소+좌표이동)-잠금상태';
      end;
      Exit;
    end else
    if Ord(key) = VK_F3 then
    begin
      Exit;
    end;

    if Ord(key) = VK_ESCAPE then  // ESC 키
    begin
      if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
      begin
        if (Trim(meoEndArea.Text) = '') then
        begin
          lblEndAreaName.Clear;
          cxtEndAreaDetail.Clear;
        end;

        if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '')
          and (Trim(lblStartAreaName.Text) = '') and (Trim(lblEndAreaName.Caption) = '')
          and (Trim(cxtStartAreaDetail.Text) = '') and (Trim(cxtEndAreaDetail.Caption) = '') then
          btnCmdExit.OnClick(btnCmdExit); // 종료
      end;
    end;
  Except
    on e: exception do
    begin
      Log('meoEndAreaKeyDown Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'meoEndAreaKeyDown Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.meoEndAreaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  procedure pJON03POISetFocus;
  begin
    if Frm_JON30.AdvStringGrid5.Cells[0,1] = '' then
    begin
      if Frm_JON30.AdvStringGrid4.Cells[0,0] = '' then
      begin
        if Frm_JON30.AdvStringGrid6.Cells[0,0] <> '' then
        begin
          Frm_JON30.AdvStringGrid5.ShowSelection := False;
          Frm_JON30.AdvStringGrid4.ShowSelection := False;
          Frm_JON30.AdvStringGrid6.ShowSelection := True;
          if Frm_JON30.AdvStringGrid6.CanFocus then
            Frm_JON30.AdvStringGrid6.SetFocus;
        end;
      end else
      begin
        Frm_JON30.AdvStringGrid5.ShowSelection := False;
        Frm_JON30.AdvStringGrid4.ShowSelection := True;
        Frm_JON30.AdvStringGrid6.ShowSelection := False;
        if Frm_JON30.AdvStringGrid4.CanFocus then
          Frm_JON30.AdvStringGrid4.SetFocus;
        Frm_JON30.AdvStringGrid4.FocusCell(0,0);
      end;
    end else
    begin
      Frm_JON30.AdvStringGrid5.ShowSelection := True;
      Frm_JON30.AdvStringGrid4.ShowSelection := False;
      Frm_JON30.AdvStringGrid6.ShowSelection := False;
      if Frm_JON30.AdvStringGrid5.CanFocus then
        Frm_JON30.AdvStringGrid5.SetFocus;
    end;
  end;
begin
  try
    lcsActiveEdit := 'meoEndArea'; // 활성화 된 출발지, 도착지 Edit 구분을 저장.
    //cxLblEnd.Tag  := 0;  // 위치찾기 판넬이 떠잇을 경우엔 자동닫기 제한.

    if PnlSuggest.Visible then
      if PnlSuggest.Caption <> lcsActiveEdit then
      begin
        PnlSuggest.Visible := False;
        AdvGridSj.ShowSelection := False;
        PnlSuggest.Caption := lcsActiveEdit;
      end;

    // 좌, 우, HOME, END 방향키는 이벤트 타지 않도록 한다.
    //  if (Key = 37) or (Key = 39) or (Key = 35) or (Key = 36) then  Exit;
    if (Key = 39) or (Key = 35) or (Key = 36) then  Exit;

    if ( ssCtrl in Shift) and ( Key = VK_LEFT ) then
    begin
      if  ( meoEndArea.SelStart = 0 ) And ( PnlSuggest.Visible ) then
      begin
        pJON03POISetFocus;
      end;
      Exit;
    end;

    if Key = VK_LEFT then Exit;

    if Length(AnsiString(meoEndArea.Text)) > 60 then meoEndArea.Height := 39
                                                else meoEndArea.Height := 26;

    if fCheckMaxLength(meoEndArea, 98) then Key := 0;

    sBHAddr := '';

    if ( Key = VK_DOWN ) And ( PnlSuggest.Visible ) then
    begin
      Key := 0;
      meoEndArea.SelStart := Length(meoEndArea.Text);
      if PnlSuggest.Visible then
      begin
        AdvGridSj.ShowSelection := True;
        if AdvGridSj.CanFocus then AdvGridSj.SetFocus;
      end;
      Exit;
    end else
    // 검색 그리드로 포커스 이동..
    if ( ( Key in [VK_DOWN, VK_UP] ) And ( Not PnlSuggest.Visible ) ) then
    begin
      pJON03POISetFocus;
    end else
    if Key = VK_BACK then
    begin
      Log('Line 6398', LOGDATAPATHFILE);
      Frm_JON30.sPreSearchWord := '';
      J30ShowE := False;
      gmap_forword := '';
    end else
    if Key = VK_RETURN then
    begin
//      // Enter를 쳤을때 검색이 안끝났으면 다시 재검색 해준다.
//      if PnlPOISch.Visible then
//      begin
//        gKWComp := '';
//        gbEnter := True;
//        if GS_SEARCH_UPDATE_OPEN then J30ShowS := False;
//        if J30ShowS = False then Proc_AreaSearchKDown_Added(Key);
//
//        PnlSuggest.Visible := False;
//        AdvGridSj.ShowSelection := False;
//        PnlSuggest.Caption := '';
//
//        Exit;
//      end;

      if Frm_JON30.Visible = True then
      begin
        if BtnEdLock.Hint <> 'F4)잠금' then       // 20130703  LYB
        begin
          if (GS_SEARCH_DEST_DONGSINAME) then// and (frmJON30.AdvStringGrid4.Cells[0,0] <> '') then
          begin

          end else
          begin
            if (Frm_JON30.AdvStringGrid5.Cells[0,1] <> '') then
            begin
              frm_JON30.bEnter := False;
              Frm_JON30.Proc_SendParent(Frm_JON30.AdvStringGrid5.GetRealRow + 1);
              BtnEdLock.Hint := 'F4)잠금';
              BtnEdLock.Tag  := 0;
              BtnEdLock.OptionsImage.ImageIndex := 1;
              BtnEdLock.Down := True;
              Frm_JON30.N2.Enabled := False;
              Frm_JON30.N2.Caption := '도착지선택(좌표만이동)-잠금상태';
              Frm_JON30.N7.Enabled := False;
              Frm_JON30.N7.Caption := '도착지선택(주소+좌표이동)-잠금상태';

              if meoEndArea.CanFocus then meoEndArea.SetFocus;
              Hide_Panel(lcsActiveEdit,1);
            end;
            if GS_SEARCH_POTAL_FIRST then
            begin
              if (Frm_JON30.AdvStringGrid5.Cells[0,1] = '') and (Frm_JON30.AdvStringGrid6.Cells[0,1] <> '') then
              begin
                frm_JON30.bEnter := False;
                Frm_JON30.Proc_SendParent_ADV3(Frm_JON30.AdvStringGrid6.GetRealRow + 1, True);
              end;
            end else
            begin
              if (Frm_JON30.AdvStringGrid5.Cells[0,1] = '') and (Frm_JON30.AdvStringGrid4.Cells[0,0] <> '') then
              begin
                frm_JON30.bEnter := False;
                Frm_JON30.Proc_SendParent_ADV2(Frm_JON30.AdvStringGrid4.GetRealRow + 1, Frm_JON30.AdvStringGrid4.GetRealCol, True);
                Hide_Panel(lcsActiveEdit,1);
              end;
            end;
            BtnEdLock.Hint := 'F4)잠금';
            BtnEdLock.Tag  := 0;
            BtnEdLock.OptionsImage.ImageIndex := 1;
            BtnEdLock.Down := True;
            Frm_JON30.N2.Enabled := False;
            Frm_JON30.N2.Caption := '도착지선택(좌표만이동)-잠금상태';
            Frm_JON30.N7.Enabled := False;
            Frm_JON30.N7.Caption := '도착지선택(주소+좌표이동)-잠금상태';

            if meoEndArea.CanFocus then meoEndArea.SetFocus;
          end;
        end;
        Hide_Panel(lcsActiveEdit,1);
        if PnlSuggest.Visible then
        begin
          PnlSuggest.Visible := False;
          AdvGridSj.ShowSelection := False;
        end;
      end;

      key := 0;

      if (Pos('수정', Self.Caption) > 0 ) and (cxtJoinNum.Hint[1] in ['2', '4', '8']) then
      begin
        if meoBigo.Visible = True then
          meoBigo.SetFocus
        else
          meoBigo2.SetFocus;
      end else
      begin
        if curRate.CanFocus then curRate.SetFocus;
      end;
    end else
    if Ord(key) in [VK_F7..VK_F12, Vk_F1] then
    begin
      sActieEdit := 'meoEndArea';
      case ord(key) of
        Vk_F1:
          if btnPickupInsert.Visible then
            btnPickupInsert.OnClick(btnPickupInsert); // 픽업등록 단축키 : 2011.05.25 CDS. Add.
        Vk_F7:
          if btnCmdUpdSave.Enabled then btnCmdUpdSave.OnClick(btnCmdUpdSave);
        Vk_F8: // 종료
          btnCmdExit.OnClick(btnCmdExit);
        Vk_F9:
          begin
            if not btnCmdJoin.Enabled then  Exit; // 접수
            btnCmdJoinClick(btnCmdJoin);
          end;
        Vk_F10:
          if btnCmdWait.Enabled then
            btnCmdWait.OnClick(btnCmdWait); // 대기
        Vk_F11:
          if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // 복수콜
        Vk_F12:
          if btnCmdQuestion.Enabled then
            btnCmdQuestion.OnClick(btnCmdQuestion); // 문의
      end;
    end else
  //  if (cxLabel19.Caption = 'F4)잠금') and (key <> 229) then  //  20130703  LYB  잠금 상태에서도 검색은 되게 하라.
    if key <> 229 then  //  20130703  LYB  잠금 상태에서도 검색은 되게 하라.
    begin
      Log('Line 6549', LOGDATAPATHFILE);
      if (Key = VK_F4) then Exit;
      gKWComp := '';
      if GS_SEARCH_UPDATE_OPEN then J30ShowE := False;
      if J30ShowE = False then Proc_AreaSearchKDown_Added(Key);
    end else
    if (Key = vk_delete) then
    begin
       J30ShowE := False;
    end;
  Except
    on e: exception do
    begin
      Log('meoEndAreaKeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'meoEndAreaKeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.meoEndAreaPropertiesChange(Sender: TObject);
begin
  if ( Not meoEndArea.Focused ) then
    cxLEndAreaFlag.Visible := (meoEndArea.Text = ''); // 도착지 입력 잔상.
end;

procedure TFrm_JON01.mniUserClick(Sender: TObject);
begin
  AddBigo(TMenuItem(Sender).Caption, TMenuItem(Sender).Tag);
end;

procedure TFrm_JON01.pnl_chargeClick(Sender: TObject);
begin
  pnl_charge.Visible := False;
end;

procedure TFrm_JON01.AddBigo(ABigo: string; Atag : Integer);
var
  AddStr, OrgStr, sDesc, sSelBtn : string;
  iPos : Integer;
begin
  try
    if not Assigned(FCurrBigo) then
      FCurrBigo := meoBigo;

    OrgStr := FCurrBigo.Lines.Text;  //원래 있던내용
    if OrgStr <> '' then
      AddStr := '/';


    iPos := Pos('│', FBigoList.Values[ABigo]);
    if iPos > 0 then
    begin
      sDesc   := Copy(FBigoList.Values[ABigo], 1, iPos - 1);
      sSelBtn := Copy(FBigoList.Values[ABigo], iPos + 1, Length(FBigoList.Values[ABigo]) - iPos);
    end else
    begin
      sDesc   := FBigoList.Values[ABigo];
    end;

    if Pos('<$시간$>', sDesc) > 0 then AddStr := sDesc + AddStr   //추가된내용      2011.12.02 KHS
    else
    begin
      if Atag < 4 then
      begin
        AddStr := sDesc + '-' + '<$시간$>' + AddStr ;  //추가된내용
      end
      else  AddStr := sDesc + AddStr;
    end;
    AddStr := StringReplace(AddStr, '<$시간$>', FormatDateTime('HH:MM:SS', Now), [rfReplaceall]);
    FCurrBigo.Lines.Text := AddStr + OrgStr;
  Except
    on e: exception do
    begin
      Log('AddBigo Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AddBigo Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.FControlInitial(bTF: Boolean = False; bBrNoSetType: boolean = False);
var
  i, j: Integer;
  iHeight : Integer;
  ErrLine : String;
begin
  if bTF = False then
  begin
    try
      // 입력 컨트롤 초기화...
      if cxLblConfSlipUseFlg.Hint <> 'CONFSLIP' then
      begin // 접수번호 조회인지 설정.
        cxtJoinNum.Text := ''; // 접수번호
      end;

      cxtWorkerNm.Text := ''; // 기사명
      // 접수시간
      // 접수본사코드/지사코드/지사명
      if (locCustHP_MainNum_Search = '') and (cxLblCIDUseFlg.Hint <> 'CID') then
      begin // CID 조회인지 설정을 한다.
        cxtCallTelNum.Text := ''; // 발신전화번호
      end;
      cxTSearchMainTel.Text := ''; // 지사의 대표번호 조회 가능토록처리..
      cxtCuTel.Text := ''; // 고객전화번호 조회
      cxtCuTel2.Text := ''; // 전화번호2
      cxtCuBubin.Text := ''; // 법인명(법인정보)
      sBHAddr := '';

  		changeLog('',True);

      cxLblSmartRate.Caption := '';
      cxLblRate1.Caption := '';
      cxLblRate2.Caption := '';

      meoCuCCMemo.Clear;
      mmoCbMemo.Clear;
      meoCuWorMemo.Clear;

      // 20120805 좌표 오류 체크 LYB
      gJONStaChkXY.Area1 := '';
      gJONStaChkXY.Area2 := '';
      gJONStaChkXY.Area3 := '';
      gJONStaChkXY.Area4 := '';
      gJONStaChkXY.Area5 := '';
      gJONStaChkXY.X := '';
      gJONStaChkXY.Y := '';
      gJONStaChkXY.GUIDE_X := '';
      gJONStaChkXY.GUIDE_Y := '';
      gJONStaChkXY.Gubun := '';

      LblTop   .Color := $00E0EDEA;   // 기본색
      LblLeft  .Color := LblTop.Color;
      LblRigth .Color := LblTop.Color;
      LblBottom.Color := LblTop.Color;
      PnlTitle .Color := LblTop.Color;
      PnlWorkMemo.Color := $00F0F0F0;
      PnlBtm.Color := $00F0F0F0;
      PnlBox4.Color := $00F0F0F0;
      Pnl_BubinV.Color := $00F0F0F0;

      meoStartArea.Clear; // 출발지 추가정보
      cxtStartXval.Text := ''; // 출발지 X좌표
      cxtStartYval.Text := ''; // 출발지 Y좌표
      cxtStartGUIDEXval.Text := '';
      cxtStartGUIDEYval.Text := '';

      lblStartAreaName.Text := ''; // 출발지 주소
      cxtStartAreaDetail.Text := ''; // 출발지 상세지명(로컬저장용)
      meoEndArea.Clear; // 도착지 추가정보

      lcsStaDocId   := '';
      lcsStaCellSel := '';
      lcsStaSchWord := '';
      lcsStaUrl := '';
      lcsStaDebug := '';
      GS_Grid_DES := '';

      lcsEndDocId   := '';
      lcsEndCellSel := '';
      lcsEndSchWord := '';
      lcsEndUrl := '';
      lcsEndDebug := '';
      GS_Grid_DEP := '';

      gJONEndChkXY.X := '';
      gJONEndChkXY.Y := '';
      gJONEndChkXY.GUIDE_X := '';
      gJONEndChkXY.GUIDE_Y := '';

      cxtEndXval.Text := ''; // 도착지 X좌표
      cxtEndYval.Text := ''; // 도착지 Y좌표
      cxtEndGUIDEXval.Text := '';
      cxtEndGUIDEYval.Text := '';

      lblEndAreaName.Caption := ''; // 도착지 주소
      cxtEndAreaDetail.Caption := ''; // 도착지 상세지명(로컬저장용)
      cxReEndArea.Clear;
      curRate.Value := 0; // 요금
      curKm.Text := ''; // 출발지, 도착지, 경유지 Km
      fCruKm := 0;
      fChgKm := 0;
      fDirKm := 0;
      fViaKm := 0;
      chkNoSet.Enabled := False; // 요금 미지정
      chkRangeRate.Enabled := False; // 거리요금

      btnCustAppinfo.Enabled := False;

      pnl_charge.Visible := False;

      cxLCuNmFlg.Visible := True;
      cxLBuNmFlg.Visible := True;
      cxLCuCCMemoFlg.Visible := True;
      cxLCuWorMemoFlg.Visible := True;
      cxLSearchMainTelFlg.Visible := True;
      cxLCuTel2Flg.Visible := True;
      cxLCuTelFlg.Visible := True;
      cxLStartAreaFlag.Visible := True;
      cxLEndAreaFlag.Visible := True;
      cxLBubinMemoFlag.Visible := True;

      lst_BRlist.Clear;
      BtnResv.Tag := 0;  // 예약 초기화
    Except
      on e: exception do
      begin
        Log('FControlInitial Error 0 :' + ErrLine + ', ' + E.Message, LOGDATAPATHFILE);
        Assert(False, 'FControlInitial Error 0 :' + ErrLine + ', ' + E.Message);
      end;
    end;

    try
      PayMethod := PAY_METHOD_MONEY;

      if meoBigo.Hint <> 'NOCLEAR' then
      begin
        meoBigo.Clear; // 적요
      end;

      if IsBubuinUse then
      begin
        Pnl_BubinV.Visible := True;

        GB4.Height := 171;          // LYB 중요 *** 법인메뉴/요금 관련 컨테이너 높이를 고정으로 입력
        GBTop5.Height := 236;

        iHeight := 610;
        Self.Height := iHeight;

        CbCuGb.Tag := 1;
      end else
      begin
        Pnl_BubinV.Visible := False;

        GB4.Height := 171 - 25;     // LYB 중요 *** 요금관련높이에서 법인메뉴 높이를 마이너스 숫자 고정입력
        GBTop5.Height := 236 - 25;

        iHeight := 610 - 25;
        Self.Height := iHeight;

        CbCuGb.Tag := 0;
      end;

      BtnCenterMng.Down := False; // 상황실 전화번호 보이도록,, 설정값

      cxCustView.DataController.SetRecordCount(0);
      // 고객명으로 조회한 결과 디스플레이 그리드.

      if BtnStLock.Hint = 'F4)잠금' then
      begin
        BtnStLock.Hint := 'F4)수정';
        BtnStLock.Tag  := 0;
        BtnStLock.OptionsImage.ImageIndex := 0;
        BtnStLock.Down := False;
      end;
      if BtnEdLock.Hint = 'F4)잠금' then
      begin
        BtnEdLock.Hint := 'F4)수정';
        BtnEdLock.Tag  := 0;
        BtnEdLock.OptionsImage.ImageIndex := 0;
        BtnEdLock.Down := False;
      end;

      // 고객의 이용내역을 담아둔다.
      for i := 0 to 201 do // 접수창 생성수 최대 16개
        for j := 0 to 40 do // 이용내역 레코드 최대 60건
          locaryOrderList[i, j] := '';

      sNowRate := ''; // 현재 지사의 기본요금 설정액.
      lvs_ReceiveText := ''; // 임시변수 : Socket에서 사용
      locbWkToCust := False;

      // 고객 구분에 따른 라벨 칼라를 변경해 준다.
      Proc_SetFormColor_3(10);

      loc_sHoTransArea := ''; // 호전환 지역명;

      if TCK_USER_PER.JON_ChargeSave = '1' then
        btn_ChargeSave.Enabled := False
      else
        btn_ChargeSave.Enabled := True;

  //    cxCurPathRate.Value := 0; // 경유요금
      cxTmWaitTime.Text := '00:00'; // 대기시간 초기화.
      cxCurWaitTmRate.Value := 0; // 대기요금
      cxCurRevisionRate.Value := 0; // 보정금액

      meoBigo2.Clear; // 적요2
      cxDriverCharge.Text := ''; // 기사수수료 초기화.

      try
ErrLine := '19';
        meoViaArea1.Text := '';
        cxViaAreaName1.Caption := '';
ErrLine := '20';
        meoViaArea[2].Text := '';
        cxViaAreaName[2].Caption := '';
ErrLine := '21';
        meoViaArea[3].Text := '';
        cxViaAreaName[3].Caption := '';
ErrLine := '22';
        meoViaArea[4].Text := '';
        cxViaAreaName[4].Caption := '';
ErrLine := '23';
        meoViaArea[5].Text := '';
        cxViaAreaName[5].Caption := '';
ErrLine := '24';
//        for i := 2 to 5 do
//        begin
//          if Assigned(meoViaArea[i])   then  meoViaArea[2].Text := '';
//          if Assigned(cxViaAreaName[i]) then cxViaAreaName[2].Caption := '';
//        end;
      Except
        on e: exception do
        begin
          Log('FControlInitial Error 19 :' + ErrLine + ', ' + E.Message, LOGDATAPATHFILE);
          Assert(False, 'FControlInitial Error 19 :' + ErrLIne + ', ' + E.Message);
        end;
      end;
ErrLine := '21';
      // 저장된 경유지 정보를 초기화 한다.
      for i := 1 to 5 do
      begin
        Via_Info[i].XposVia := '';
        Via_Info[i].YposVia := '';
        Via_Info[i].ViaAreaDetail := '';
        Via_Info[i].DocId := '';
        Via_Info[i].CellSel := '';
        Via_Info[i].SchWord := '';
        Via_Info[i].ViaSA1 := '';
        Via_Info[i].ViaSA2 := '';
        Via_Info[i].ViaSA3 := '';
        Via_Info[i].DocId  := '';
        Via_Info[i].CellSel := '';
        Via_Info[i].SchWord := '';
      end;
      ViaNowTag := 1;   //현재 입력중인 경유지위치
      ViaADDTag := 0;   //현재 추가한 경유지위치
    Except
      on e: exception do
      begin
        Log('FControlInitial Error 1 :' + ErrLine + ', ' + E.Message, LOGDATAPATHFILE);
        Assert(False, 'FControlInitial Error 1 :' + ErrLIne + ', ' + E.Message);
      end;
    end;
  end;

  try
	  For j := 0 to 4 do
    begin
			GT_PASS_INFO[Self.Tag][j].AREA1 := '';
      GT_PASS_INFO[Self.Tag][j].AREA2 := '';
      GT_PASS_INFO[Self.Tag][j].AREA3 := '';
      GT_PASS_INFO[Self.Tag][j].AREA4 := '';
      GT_PASS_INFO[Self.Tag][j].AREA5 := '';
      GT_PASS_INFO[Self.Tag][j].DOCID := '';
      GT_PASS_INFO[Self.Tag][j].CELLS := '';
      GT_PASS_INFO[Self.Tag][j].SWORD := '';
      GT_PASS_INFO[Self.Tag][j].MAP_X := '';
      GT_PASS_INFO[Self.Tag][j].MAP_Y := '';
    end;
ErrLine := '22';
    if meoBigo.Hint <> 'NOCLEAR' then
    begin
     if gJONAcceptMemo.Use then
       meoBigo.Text := gJONAcceptMemo.Memo;
    end;
ErrLine := '23';
    cboBranch.Enabled := True;
    cboBranch.Properties.ReadOnly := False;

    GBStartXYView.Visible := False;     //좌표
    GBEndXYView.Visible := False;     //좌표

    pbPayMethod := -1;   // 법인콜 선택시 결제구분 현재값 저장 초기화.

ErrLine := '24';

    cboBrOnly.Tag := 10;
    cboBrOnly.Properties.Items.Clear;
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    begin
      cboBrOnly.Properties.Items.Assign(scb_FamilyBrName);
    end else
    begin
      cboBrOnly.Properties.Items.Assign(scb_BranchName);
    end;
    cboBrOnly.Properties.Items.Insert(0, '지사전체');
    cboBrOnly.ItemIndex := 0;
    cboBrOnly.Tag := 0;
ErrLine := '25';
    SetCboBranch(bBrNoSetType);
ErrLine := '26';
    lcsSta1 := '';
    lcsSta2 := '';
    lcsSta3 := ''; // 출1, 출2, 출3

    lcsStaDocId := '';
    lcsStaCellSel := '';
    lcsStaSchWord := '';
    GS_Grid_DEP := '';


    lcsEnd1 := '';
    lcsEnd2 := '';
    lcsEnd3 := ''; // 도1, 도2, 도3

    lcsEndDocId := '';
    lcsEndCellSel := '';
    lcsEndSchWord := '';
    GS_Grid_DES := '';

    lg_Save := '';

    loc_RateNOT := False; // 요금 계산을 막음.
    FIsCalcPrice := False;

    // 플러스콜 여부(수도권만 사용함)
    if GS_PRJ_AREA = 'S' then
    begin
      BtnPlusYN.Down := False;
      BtnPlusYN.Enabled := False;
      BtnPlusYN.Visible := True;
      proc_PlusCall_CtrlYN;                // 플러스콜 사용여부 체크
    end else
    begin
      BtnPlusYN.Visible := False;
    end;
ErrLine := '27';
  Except
    on e: exception do
    begin
      Log('FControlInitial Error 2 :' + ErrLine + ', ' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'FControlInitial Error 2 :' + ErrLine + ', ' + E.Message);
    end;
  end;

  try
    // 접수시에 또는 수정시에 버튼위치 설정.
    SetCmdOrderUpdate;
ErrLine := '28';
    LoadPayMethod;
ErrLine := '29';
    // KCP 카드 결제 지사 사용여부 체크. 2011-10-19.
    if IsCardUseBranch_KCP(Proc_BRNOSearch) = '03' then
    begin
      cbCardSanction.Enabled := True;
      cbCardSanction.Caption := '카드결재';
    end else
    begin
      cbCardSanction.Enabled := False;
      cbCardSanction.Caption := '카드결재';
    end;
ErrLine := '30';
    pnl_charge.Caption := '';
    Lbl_Distance.Caption := '';

    //--------------- 카드결재 관련 초기화.
    locCardPaySeq := '';   // 결제일련번호
    locCardTranNo := '';   // 거래번호
    locCardPayInfo:= '';   // 카드결재 정보
ErrLine := '31';
    if cbbPayMethod.Text = PAY_METHOD_MONEY then
    begin
      if IsCardUseBranch_KCP(Proc_BRNOSearch) = '03' then
      begin
        cbCardSanction.Caption := '현금영수';
        cbCardSanction.Enabled := True;
      end;
    end	else
    begin
      cbCardSanction.Enabled := False;
      cbCardSanction.Caption := '카드결재';
    end;
ErrLine := '32';
    if cbbPayMethod.Text = PAY_METHOD_POST_MILE then                  // 20130603  LYB
    begin
      if IsCardUseBranch_KCP(Proc_BRNOSearch) = '03' then
      begin
        cbCardSanction.Caption := '쿠폰결제';
        cbCardSanction.Enabled := True;
      end;
    end	else
    begin
      cbCardSanction.Enabled := False;
      cbCardSanction.Caption := '카드결제';
    end;
ErrLine := '33';
    //---------------

    FCurrBigo := nil;
    FCurrSpop := nil;
    FCurrEpop := nil;

    sTaksong := 'n';
    sStickCall := 'n';

    PnlModifyTitle.Visible := False;
    shpModifyTitle.Visible := False;

    cb_00.Down := False;
    cb_01.Down := False;
    cb_02.Down := False;
    cb_03.Down := False;
    cb_04.Down := False;
ErrLine := '34';
    for j := 0 to pmSpop.Items.Count - 1 do
    begin
      if pmSpop.Items.Items[j].Tag In [8..12] then
      begin
        pmSpop.Items.Items[j].Checked := False;
      end;
    end;
ErrLine := '35';
    BtnOptionSexM.Down := False;
    BtnOptionSexF.Down := False;

    BtnOptionCallMu.Down := False;

    BtnPlusYN.Down := False;
    BtnCenterMng.Down := False;

    BtnCuSmsNo.Down := False;
ErrLine := '36';
    if Assigned(Frm_JON30) then frm_JON30.N1.Enabled := True;
    if Assigned(Frm_JON30) then frm_JON30.N1.Caption := '출발지선택(좌표만이동)';
    if Assigned(Frm_JON30) then frm_JON30.N2.Enabled := True;
    if Assigned(Frm_JON30) then frm_JON30.N2.Caption := '도착지선택(좌표만이동)';

    if Assigned(Frm_JON30) then Frm_JON30.N6.Enabled := True;
    if Assigned(Frm_JON30) then Frm_JON30.N6.Caption := '출발지선택(주소+좌표이동)';
    if Assigned(Frm_JON30) then Frm_JON30.N7.Enabled := True;
    if Assigned(Frm_JON30) then Frm_JON30.N7.Caption := '도착지선택(주소+좌표이동)';
ErrLine := '37';
    sAppCode := '';
    sAppLastRegDate := '';
    sAppLastDelDate := '';
    sAppLastFinishDate := '';
    sAppCuArea := '';
    sAppTermModel := '';
    sAppTermOS := '';
    sAppDelYn := '';
    sFirstInSource := '';
  Except
    on e: exception do
    begin
      Log('FControlInitial Error 3 :' + ErrLine + ', ' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'FControlInitial Error 3 :' + ErrLine + ', ' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.AddSpop(ASpop: string; Atag: Integer);
var
  AddStr, OrgStr, wStr, sFword, sDesc, sSelBtn : string;
  i, iPos : Integer;
  sTmp : TStringList;
  IE : Variant;
  WinHanlde : HWnd;
  Value : Cardinal;
  bIE :Boolean;
  sURL : String;
  WinH : HWND;
  fRect : TRect;
  iMainX, iMainY, iSubX, iSubY: Integer;
begin
  try
    FCurrSpop := nil;

    if not Assigned(FCurrSpop) then
      FCurrSpop := meoStartArea;

    OrgStr := FCurrSpop.Lines.Text;  //원래 있던내용

    wStr := meoStartArea.Text;
    begin
      if (Atag > 7) and (Atag < 96)then
      begin
        if FSpopList.Values[ASpop] = '탁송기사만' then
        begin
          if Pos('탁송)', wStr) < 1 then
          begin
            cb_00.Down := True;
            AddStr := '탁송)' + AddStr;
            sTaksong := 'y';
          end;
        end else
        if FSpopList.Values[ASpop] = '정장기사만' then
        begin
          if Pos('정장)', wStr) < 1 then
          begin
            cb_01.Down := True;
            AddStr := '정장)' + AddStr;
          end;
        end else
        if FSpopList.Values[ASpop] = '경유있음' then
        begin
          if Pos('경유)', wStr) < 1 then
          begin
            cb_02.Down := True;
            AddStr := '경유)' + AddStr;
          end;
        end else
        if FSpopList.Values[ASpop] = '적요있음' then
        begin
          if Pos('적요)', wStr) < 1 then
          begin
            cb_03.Down := True;
            AddStr := '적요)' + AddStr;
          end;
        end else
        if FSpopList.Values[ASpop] = '스틱기사만' then
        begin
          if Pos('스틱)', wStr) < 1 then
          begin
            cb_04.Down := True;
            AddStr := '스틱)' + AddStr;
            sStickCall := 'y';
          end;
        end else
        begin
          iPos := Pos('│', FSpopList.Values[ASpop]);
          if iPos > 0 then
          begin
            sDesc   := Copy(FSpopList.Values[ASpop], 1, iPos - 1);
            sSelBtn := Copy(FSpopList.Values[ASpop], iPos + 1, Length(FSpopList.Values[ASpop]) - iPos);
          end else
          begin
            sDesc   := FSpopList.Values[ASpop];
          end;

          // 버튼을 자동으로 눌러주면 '{' '}' 삭제
          if sSelBtn <> '' then
          begin
            AddStr := sDesc + AddStr;
            sTmp := TStringList.Create;
            try
              sTmp.Delimiter := '/';
              sTmp.DelimitedText := sSelBtn;

              for i := 0 to sTmp.Count -1 do
              begin
                if sTmp[i] = '탁' then
                begin
                  cb_00.Down := True;
                  SetMunuChecked('탁', True);
                end else
                if sTmp[i] = '정' then
                begin
                  cb_01.Down := True;
                  SetMunuChecked('정', True);
                end else
                if sTmp[i] = '경' then
                begin
                  cb_02.Down := True;
                  SetMunuChecked('경', True);
                end else
                if sTmp[i] = '적' then
                begin
                  cb_03.Down := True;
                  SetMunuChecked('적', True);
                end else
                if sTmp[i] = '스' then
                begin
                  cb_04.Down := True;
                  SetMunuChecked('스', True);
                end;
              end;

            finally
              FreeAndNil(sTmp);
            end;
          end else
          begin
    				if GS_SEPER_USE then sFword := '{' + sDesc + '}'
    				                else sFword := sDesc;
    				i := Pos(sFword, wStr);
    				if i < 1 then
    				begin
    					AddStr := sFword + AddStr;
    				end else
    				begin
    					if GS_SEPER_USE then
    					begin
    						if i = 1 then
    						begin
    							meoStartArea.Text := Copy(widestring(wStr), 1 + Length(widestring(sFword)), Length(widestring(wStr)) - Length(widestring(sFword)));
    						end	else
                if i > 1 then
    						begin
    							meoStartArea.Text := Copy(widestring(wStr), 1, i-1) +
    																	 Copy(widestring(wStr), i + Length(widestring(sFword)) , Length(widestring(wStr)) - i);
    						end;
    						Exit;
    					end;
    				end;
//-            AddStr := '{' + sDesc + '}' + AddStr;
          end;
        end;
      end else
  		if Atag = 96 then  //콜무
  		begin
  			i := Pos('콜무)', String(wStr));
  			if Pos('콜무)', wStr) < 1 then
  			begin
  				AddStr := '콜무)' + AddStr;
  			end	else
  			if i = 1 then
  			begin
  				OrgStr := Copy(String(wStr), 1 + Length(String('콜무)')), Length(String(wStr)) - Length(String('콜무)')));
  			end else
	  		if i > 1 then
		  	begin
			  	OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('콜무)')) , Length(String(wStr)) - i);
  			end;
  		end else
      if Atag = 97 then  //후불
      begin
        i := Pos('후불)', String(wStr));
        if i = 1 then
        begin
          OrgStr := Copy(String(wStr), 1 + Length(String('후불)')), Length(String(wStr)) - Length(String('후불)')));
        end else
        if i > 1 then
        begin
          OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('후불)')) , Length(String(wStr)) - i);
        end;

        i := Pos('즉후)', String(wStr));
        if i = 1 then
        begin
          OrgStr := Copy(String(wStr), 1 + Length(String('즉후)')), Length(String(wStr)) - Length(String('즉후)')));
        end else
        if i > 1 then
        begin
          OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('즉후)')) , Length(String(wStr)) - i);
        end;

        i := Pos('법후)', String(wStr));
        if i = 1 then
        begin
          OrgStr := Copy(String(wStr), 1 + Length(String('법후)')), Length(String(wStr)) - Length(String('법후)')));
        end else
        if i > 1 then
        begin
          OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('법후)')) , Length(String(wStr)) - i);
        end;

  			i := Pos('♥♥', wStr);
  			if i > 0 then
  			begin
  				if i = 1 then
  				begin
  					OrgStr := Copy(wStr, 1 + Length('♥♥'), Length(wStr) - Length('♥♥'));
  				end else
  				if i > 1 then
  				begin
  					OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('♥♥') , Length(wStr) - i);
  				end;
  			end	else
  			begin
    			i := Pos('♥', wStr);
    			if i = 1 then
    			begin
    				OrgStr := Copy(wStr, 1 + Length('♥'), Length(wStr) - Length('♥'));
    			end else
    			if i > 1 then
    			begin
    				OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('♥') , Length(wStr) - i);
    			end;
  			end;

        AddStr := '';
      end else
      if Atag = 98 then  //후불
      begin
        if Pos('후불)', wStr) < 1 then
        begin
          i := Pos('후불)', String(wStr));
          if i = 1 then
          begin
            OrgStr := Copy(String(wStr), 1 + Length(String('후불)')), Length(String(wStr)) - Length(String('후불)')));
          end else
          if i > 1 then
          begin
            OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('후불)')) , Length(String(wStr)) - i);
          end;

          i := Pos('즉후)', String(wStr));
          if i = 1 then
          begin
            OrgStr := Copy(String(wStr), 1 + Length(String('즉후)')), Length(String(wStr)) - Length(String('즉후)')));
          end else
          if i > 1 then
          begin
            OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('즉후)')) , Length(String(wStr)) - i);
          end;

          i := Pos('법후)', String(wStr));
          if i = 1 then
          begin
            OrgStr := Copy(String(wStr), 1 + Length(String('법후)')), Length(String(wStr)) - Length(String('법후)')));
          end else
          if i > 1 then
          begin
            OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('법후)')) , Length(String(wStr)) - i);
          end;

  				i := Pos('♥♥', wStr);
  				if i > 0 then
  				begin
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('♥♥'), Length(wStr) - Length('♥♥'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('♥♥') , Length(wStr) - i);
  					end;
  				end	else
  				begin
    				i := Pos('♥', wStr);
    				if i = 1 then
    				begin
    					OrgStr := Copy(wStr, 1 + Length('♥'), Length(wStr) - Length('♥'));
    				end else
    				if i > 1 then
    				begin
    					OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('♥') , Length(wStr) - i);
    				end;
  				end;

          if (GB_JON_BUBHUUSE) and (cxtCuBubin.Hint <> '') then
            AddStr := '법후)'
          else if (gsJON01AfterMoneyYN = 'TRUE') and (gsJON01AfterMoneyWordUse = False) then
            AddStr := '후불)';
        end;
      end else
      if Atag = 99 then  //즉후
      begin
  			if ASpop = '♥♥' then
	  		begin
  				if Pos('♥♥', wStr) < 1 then
  				begin
  					i := Pos('후불)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('후불)'), Length(wStr) - Length('후불)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('후불)') , Length(wStr) - i);
  					end;

  					i := Pos('즉후)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('즉후)'), Length(wStr) - Length('즉후)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('즉후)') , Length(wStr) - i);
  					end;

  					i := Pos('법후)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('법후)'), Length(wStr) - Length('법후)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('법후)') , Length(wStr) - i);
  					end;

  					i := Pos('♥♥', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('♥♥'), Length(wStr) - Length('♥'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('♥♥') , Length(wStr) - i);
  					end;
  					AddStr := ASpop ;
  				end;
  			end	else
  			if ASpop = '♥' then
  			begin
  				if Pos('♥', wStr) < 1 then
  				begin
  					i := Pos('후불)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('후불)'), Length(wStr) - Length('후불)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('후불)') , Length(wStr) - i);
  					end;

  					i := Pos('즉후)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('즉후)'), Length(wStr) - Length('즉후)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('즉후)') , Length(wStr) - i);
  					end;

  					i := Pos('법후)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('법후)'), Length(wStr) - Length('법후)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('법후)') , Length(wStr) - i);
  					end;

  					i := Pos('♥', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('♥'), Length(wStr) - Length('♥'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('♥') , Length(wStr) - i);
  					end;
  					AddStr := ASpop ;
  				end;
  			end	else
  			begin
  				if Pos('즉후)', wStr) < 1 then
  				begin
  					i := Pos('후불)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('후불)'), Length(wStr) - Length('후불)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('후불)') , Length(wStr) - i);
  					end;

  					i := Pos('즉후)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('즉후)'), Length(wStr) - Length('즉후)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('즉후)') , Length(wStr) - i);
  					end;

  					i := Pos('법후)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('법후)'), Length(wStr) - Length('법후)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('법후)') , Length(wStr) - i);
  					end;

  					i := Pos('♥♥', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('♥♥'), Length(wStr) - Length('♥♥'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('♥♥') , Length(wStr) - i);
  					end;

  					i := Pos('♥', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('♥'), Length(wStr) - Length('♥'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('♥') , Length(wStr) - i);
  					end;

  					if (GB_JON_BUBHUUSE) and (cxtCuBubin.Hint <> '') then
  						AddStr := '법후)'
  					else
  						AddStr := '즉후)';
  				end;
  			end;
      end else
      if Atag = 0 then
      begin
        if cxtStartXval.Text <> '' then
        begin
  //        if ( Not Assigned(Frm_JON31) ) Or ( Frm_JON31 = Nil ) then Frm_JON31 := TFrm_JON31.Create(Nil);
          Frm_JON31.Tag := Self.Tag;
          Frm_JON31.Show;
          Frm_JON31.OnSelectedMap := SetStartAreaMap;
          Frm_JON31.StartPos(meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text);
          if Frm_JON31.WebBrowser1.Document <> nil then
            (Frm_JON31.Webbrowser1.Document as IHTMLDocument2).ParentWindow.Focus;
        end;
      end else
      if Atag = 1 then
      begin
        if cxtStartXval.Text <> '' then
        begin
          if RVHandle > 0 then
          begin
            PostMessage (RVHandle, WM_CLOSE, 0, 0);
          end;

          try
            DAUMROADVIEW_URL := 'http://dna.daum.net/include/tools/routemap/map_view.php?width=760&height=500&latitude=%s&longitude=%s&contents=%s&zoom=4 ';
  //          DAUMROADVIEW_URL := 'http://www.gmgm.net/map/daumroadview.html?lat=%s&lng=%s&zoom=4';
            bIE := True;
            IE := CreateOleObject('InternetExplorer.Application');
            sURL := Format(DAUMROADVIEW_URL, [Frm_JON30.SetWGS84(cxtStartXval.Text), Frm_JON30.SetWGS84(cxtStartYval.Text)
                                            , UrlEncode(UTF8Encode('출발지 : ' + meoStartArea.Text))]);
  //          sURL := Format(DAUMROADVIEW_URL, [Frm_JON30.SetWGS84(cxtStartXval.Text), Frm_JON30.SetWGS84(cxtStartYval.Text)]);
            IE.Navigate( sURL );
            IE.AddressBar := False;
            IE.MenuBar := False;
            IE.ToolBar := False;
            IE.StatusBar := False;

  //          IE.Width := 542;
  //          IE.Height := 340;
            IE.Width := 780;
            IE.Height := 580;

            IE.Top := ((Self.Top * 2 + Self.Height) - IE.Height)/2;
  //          IE.Left := ((Self.Left * 2 + Self.Width) - IE.Width)/2;
            IE.Left := Self.Left - IE.Width;
            bIE := True;

            Value := IE.Hwnd;

            RegSetValue(HKEY_CURRENT_USER,
            'HKSFA\IE_HWND',
            REG_DWORD, @Value, SizeOf(Cardinal));


            IE.Visible := true;
            SetForegroundWindow(Value);
            IE := Unassigned;

            //로드뷰 자동클릭//
            Try
              WinH := FindAllInternetExplorer('IEFrame','http://dna.daum.net', True);
              if WinH > 0 then
              begin
                RVHandle := WinH;
                getWindowRect(WinH, fRect);
                iMainX := fRect.Left + 719;
                iMainY := fRect.Top  + 42;
                iSubX  := iMainX;// + 42;
                iSubY  := iMainY;// + 75;

                SetCursorPos(iSubX, iSubY);
                mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
                mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);

              end;
            except

            End;
            //로드뷰 자동클릭//
          except on E:Exception do
            begin
              bIE := False;
              ShowMessage('test' + E.Message);
            end;
          end;
          {Frm_JON36.Tag := Self.Tag;
          Frm_JON36.Show;
          Frm_JON36.OnSelectedMap := SetStartAreaMap;
          Frm_JON36.StartPos(meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text);   }
        end;
      end else
      if Atag = 2 then
      begin
        if pnlTelNESearch.Visible = True then
        begin
          pnlTelNESearch.Visible := False;
          if Assigned(Frm_COM30) then Frm_COM30.Close;
        end else
        begin
          // 전화번호 위치찾기 기본 위치를 정한다.
          Proc_TellAreaFormCreate;
          pnlTelNESearch.Visible := True;
          cxTxtTelNESelect.Text := '';
          cxTxtTelNESelect.SetFocus;
        end;
      end else
      if Atag = 3 then
      begin
        GBStartXYView.Visible := True;     //좌표
      end else
      if Atag = 5 then
      begin
        // 고객 출발지(START), 도착지(DEST) 정보를 저장한다.
        Proc_Cust_AreaSave('START');
      end else
      if Atag = 6 then
      begin
        // 고객 출발지(START), 도착지(DEST) 정보를 저장한다.
        Proc_Cust_AreaSave('DEST');
      end
      else AddStr := FSpopList.Values[ASpop] + AddStr;
    end;
    FCurrSpop.Lines.Text := AddStr + OrgStr;
    FCurrSpop.SelStart := Length(AddStr + OrgStr) - 2;  //  20130715  LYB  편집모드에서 마지막으로 포커스 보내면 끝자가 자동으로 생김.. 끝전글자로 포커스 이동
  Except
    on e: exception do
    begin
      Log('AddSpop Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AddSpop Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.AdvGridSjClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  if lcsActiveEdit = 'meoStartArea' then
  begin
    meoStartArea.Text := ReplaceAll(AdvGridSj.Cells[1, AdvGridSj.Row], ' ', '');
  end else
  if lcsActiveEdit = 'meoEndArea' then
  begin
    meoEndArea.Text := ReplaceAll(AdvGridSj.Cells[1, AdvGridSj.Row], ' ', '');
  end else
  if lcsActiveEdit = 'meoViaArea' then
  begin
    if ViaNowTag = 1 then
    begin
      meoViaArea1.Text := ReplaceAll(AdvGridSj.Cells[1, AdvGridSj.Row], ' ' , '');
    end else
    if ViaNowTag > 1 then
    begin
      meoViaArea[ViaADDTag].Text := ReplaceAll(AdvGridSj.Cells[1, AdvGridSj.Row], ' ', '');
    end;
  end;

  Proc_AreaSearchKDown_Added(VK_RETURN);
  PnlSuggest.Tag := 1;
  PnlSuggest.Visible := False;
  AdvGridSj.ShowSelection := False;

  if lcsActiveEdit = 'meoStartArea' then
  begin
    meoStartArea.SetFocus;
//    meoStartArea.SelStart := Length(meoStartArea.Text);
  end else
  if lcsActiveEdit = 'meoEndArea' then
  begin
    meoEndArea.SetFocus;
//    meoEndArea.SelStart := Length(meoEndArea.Text);
  end else
  if lcsActiveEdit = 'meoViaArea' then
  begin
    if ViaNowTag = 1 then
    begin
      meoViaArea1.SetFocus;
    end else
    if ViaNowTag > 1 then
    begin
      meoViaArea[ViaADDTag].SetFocus;
    end;
  end;
end;

procedure TFrm_JON01.AdvGridSjEnter(Sender: TObject);
begin
  if J30ShowS = True then
  begin
    Exit;
  end;

  if Assigned(Frm_JON30) then
  begin
    if GS_MAP_AREA_AUTOSHOW then
    begin
      if (not Frm_JON30.Visible) and (cxtStartXval.Text <> '') and (cxtStartYval.Text <> '') then
      begin
        Hide_Panel(lcsActiveEdit,0);
        if GT_USERIF.ID = 'sntest' then Log('6959--' + lcsActiveEdit, LOGDATAPATHFILE);
      end;
    end else
    begin
      if (not Frm_JON30.Visible) and (cxtStartXval.Text <> '') and (cxtStartYval.Text <> '') then
      begin
        Hide_Panel(lcsActiveEdit,0);
       if GT_USERIF.ID = 'sntest' then Log('6966--' + lcsActiveEdit, LOGDATAPATHFILE);
      end;
    end;
	end;
end;

procedure TFrm_JON01.AdvGridSjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_UP] then
  begin
    if AdvGridSj.Row = 0 then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        meoStartArea.SetFocus;
//        meoStartArea.SelStart := Length(meoStartArea.Text);
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        meoEndArea.SetFocus;
//        meoEndArea.SelStart := Length(meoEndArea.Text);
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        if ViaNowTag = 1 then
        begin
          meoViaArea1.SetFocus;
        end else
        if ViaNowTag > 1 then
        begin
          meoViaArea[ViaADDTag].SetFocus;
        end;
      end;
    end;
  end;
end;

procedure TFrm_JON01.AdvGridSjKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #9 then
  begin
    if lcsActiveEdit = 'meoStartArea' then
    begin
      meoStartArea.SetFocus;
//      meoStartArea.SelStart := Length(meoStartArea.Text);
    end else
    if lcsActiveEdit = 'meoEndArea' then
    begin
      meoEndArea.SetFocus;
//      meoEndArea.SelStart := Length(meoEndArea.Text);
    end else
    if lcsActiveEdit = 'meoViaArea' then
    begin
      if ViaNowTag = 1 then
      begin
        meoViaArea1.SetFocus;
      end else
      if ViaNowTag > 1 then
      begin
        meoViaArea[ViaADDTag].SetFocus;
      end;
    end;
  end;
end;

procedure TFrm_JON01.AdvGridSjKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  iRow, iTag: Integer;
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    if lcsActiveEdit = 'meoStartArea' then
    begin
      meoStartArea.Text := ReplaceAll(AdvGridSj.Cells[1, AdvGridSj.Row], ' ' , '');
    end else
    if lcsActiveEdit = 'meoEndArea' then
    begin
      meoEndArea.Text := ReplaceAll(AdvGridSj.Cells[1, AdvGridSj.Row], ' ' , '');
    end else
    if lcsActiveEdit = 'meoViaArea' then
    begin
      if ViaNowTag = 1 then
      begin
        meoViaArea1.Text := ReplaceAll(AdvGridSj.Cells[1, AdvGridSj.Row], ' ' , '');
      end else
      if ViaNowTag > 1 then
      begin
        meoViaArea[ViaADDTag].Text := ReplaceAll(AdvGridSj.Cells[1, AdvGridSj.Row], ' ' , '');
      end;
    end;

    Proc_AreaSearchKDown_Added(Key);
    PnlSuggest.Tag := 1;
    PnlSuggest.Visible := False;
    AdvGridSj.ShowSelection := False;

    if lcsActiveEdit = 'meoStartArea' then
    begin
      meoStartArea.SetFocus;
//      meoStartArea.SelStart := Length(meoStartArea.Text);
    end else
    if lcsActiveEdit = 'meoEndArea' then
    begin
      meoEndArea.SetFocus;
//      meoEndArea.SelStart := Length(meoEndArea.Text);
    end else
    if lcsActiveEdit = 'meoViaArea' then
    begin
      if ViaNowTag = 1 then
      begin
        meoViaArea1.SetFocus;
      end else
      if ViaNowTag > 1 then
      begin
        meoViaArea[ViaADDTag].SetFocus;
      end;
    end;

  end;
end;

procedure TFrm_JON01.LoadSpopList;
var
  I: Integer;
  Menu: TMenuItem;
begin
  FSpopList.Clear;

  FSpopList.Add('출발지 지도보기=출발지 지도보기');
  FSpopList.Add('출발지 로드맵=출발지 로드맵');
  FSpopList.Add('출발지 전화번호검색=출발지 전화번호검색');
  FSpopList.Add('출발지 좌표=출발지 좌표');
  FSpopList.Add('-=-');
  FSpopList.Add('고객출발지로 저장=고객출발지로 저장');
  FSpopList.Add('고객도착지로 저장=고객도착지로 저장');
  FSpopList.Add('-=-');
  FSpopList.Add('탁송기사만=탁송기사만');
  FSpopList.Add('정장기사만=정장기사만');
  FSpopList.Add('경유있음=경유있음');
  FSpopList.Add('적요있음=적요있음');
  FSpopList.Add('스틱기사만=스틱기사만');

  FSpopList.AddStrings(GS_UserBigoList);

  while pmSpop.Items.Count > 2 do
  begin
    if pmSpop.Items[0].Caption = '설정' then
      Break;

    Menu := pmSpop.Items[0];
    pmSpop.Items.Delete(0);
    Menu.Free;
  end;

  for I := 0 to FSpopList.Count - 1 do
  begin
    try
      Menu := TMenuItem.Create(pmSpop);
      Menu.Caption := FSpopList.Names[I];
      Menu.Enabled := True;
      Menu.Visible := True;
      Menu.OnClick := mniSpopClick;
      Menu.Tag     := i;

      if ( cb_00.Down ) And ( Menu.Caption = '탁송기사만') then Menu.Checked := True;
      if ( cb_01.Down ) And ( Menu.Caption = '정장기사만') then Menu.Checked := True;
      if ( cb_02.Down ) And ( Menu.Caption = '경유있음'  ) then Menu.Checked := True;
      if ( cb_03.Down ) And ( Menu.Caption = '적요있음'  ) then Menu.Checked := True;
      if ( cb_04.Down ) And ( Menu.Caption = '스틱기사만') then Menu.Checked := True;

      pmSpop.Items.Insert(I, Menu);
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TFrm_JON01.MenuItem3Click(Sender: TObject);
begin
  cxTmWaitTime.Text := '00:00';
  cxCurWaitTmRate.Value := 0;
end;

procedure TFrm_JON01.mniSpopClick(Sender: TObject);
begin
  if TMenuItem(Sender).Tag = 8 then
  begin
    if cb_00.Down then cb_00.Down := False
                  else cb_00.Down := True;
    cb_00Click(cb_00);
    TMenuItem(Sender).Checked := cb_00.Down
  end else
  if TMenuItem(Sender).Tag = 9 then
  begin
    if cb_01.Down then cb_01.Down := False
                  else cb_01.Down := True;
    cb_00Click(cb_01);
    TMenuItem(Sender).Checked := cb_01.Down
  end else
  if TMenuItem(Sender).Tag = 10 then
  begin
    if cb_02.Down then cb_02.Down := False
                  else cb_02.Down := True;
    cb_00Click(cb_02);
    TMenuItem(Sender).Checked := cb_02.Down
  end else
  if TMenuItem(Sender).Tag = 11 then
  begin
    if cb_03.Down then cb_03.Down := False
                  else cb_03.Down := True;
    cb_00Click(cb_03);
    TMenuItem(Sender).Checked := cb_03.Down
  end else
  if TMenuItem(Sender).Tag = 12 then
  begin
    if cb_04.Down then cb_04.Down := False
                  else cb_04.Down := True;
    cb_00Click(cb_04);
    TMenuItem(Sender).Checked := cb_04.Down
  end else
    AddSpop(TMenuItem(Sender).Caption, TMenuItem(Sender).Tag);
end;

procedure TFrm_JON01.LoadEpopList;
var
  I: Integer;
  Menu: TMenuItem;
begin
  FEpopList.Clear;

  FEpopList.Add('도착지 좌표=도착지 좌표');
  FEpopList.Add('도착지 로드맵=도착지 로드맵');
  FEpopList.Add('-=-');
  FEpopList.Add('고객출발지로 저장=고객출발지로 저장');
  FEpopList.Add('고객도착지로 저장=고객도착지로 저장');

  FEpopList.AddStrings(GS_UserBigoList);

  while pmEpop.Items.Count > 2 do
  begin
    if pmEpop.Items[0].Caption = '설정' then
      Break;

    Menu := pmEpop.Items[0];
    pmEpop.Items.Delete(0);
    Menu.Free;
  end;

  for I := 0 to FEpopList.Count - 1 do
  begin
    try
      Menu := TMenuItem.Create(pmEpop);
      Menu.Caption := FEpopList.Names[I];
      Menu.Enabled := True;
      Menu.Visible := True;
      Menu.OnClick := mniEpopClick;
      Menu.Tag     := i;
      pmEpop.Items.Insert(I, Menu);
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TFrm_JON01.mniEpopClick(Sender: TObject);
begin
  AddEpop(TMenuItem(Sender).Caption, TMenuItem(Sender).Tag);
end;

procedure TFrm_JON01.AddEpop(AEpop: string; Atag: Integer);
var
  AddStr, OrgStr, sDesc, sSelBtn : string;
  iPos : Integer;
  IE : Variant;
  WinHanlde : HWnd;
  Value : Cardinal;
  bIE :Boolean;
  sURL : String;
  WinH : HWND;
  fRect : TRect;
  iMainX, iMainY, iSubX, iSubY: Integer;
begin
  try
    if not Assigned(FCurrEpop) then
      FCurrEpop := meoEndArea;

    OrgStr := FCurrEpop.Lines.Text;  //원래 있던내용

    if Atag > 4 then
    begin
      iPos := Pos('│', FEpopList.Values[AEpop]);
      if iPos > 0 then
      begin
        sDesc   := Copy(FEpopList.Values[AEpop], 1, iPos - 1);
        sSelBtn := Copy(FEpopList.Values[AEpop], iPos + 1, Length(FEpopList.Values[AEpop]) - iPos);
      end else
      begin
        sDesc   := FEpopList.Values[AEpop];
      end;
      AddStr := '{' + sDesc + '}' + AddStr;
    end else
    if Atag = 0 then
    begin
      GBEndXYView.Visible := True;     //좌표
    end else
      if Atag = 1 then
      begin
        if cxtEndXval.Text <> '' then
        begin
          if RVHandle > 0 then
          begin
            PostMessage (RVHandle, WM_CLOSE, 0, 0);
          end;

          try
            DAUMROADVIEW_URL := 'http://dna.daum.net/include/tools/routemap/map_view.php?width=760&height=500&latitude=%s&longitude=%s&contents=%s&zoom=4';
  //          DAUMROADVIEW_URL := 'http://www.gmgm.net/map/daumroadview.html?lat=%s&lng=%s&zoom=4';
            bIE := True;
            IE := CreateOleObject('InternetExplorer.Application');
            sURL := Format(DAUMROADVIEW_URL, [Frm_JON30.SetWGS84(cxtEndXval.Text), Frm_JON30.SetWGS84(cxtEndYval.Text)
                                            , UrlEncode(UTF8Encode('도착지 : ' + meoEndArea.Text))]);
  //          sURL := Format(DAUMROADVIEW_URL, [Frm_JON30.SetWGS84(cxtStartXval.Text), Frm_JON30.SetWGS84(cxtStartYval.Text)]);
            IE.Navigate( sURL );
            IE.AddressBar := False;
            IE.MenuBar := False;
            IE.ToolBar := False;
            IE.StatusBar := False;

  //          IE.Width := 542;
  //          IE.Height := 340;
            IE.Width := 780;
            IE.Height := 580;

            IE.Top := ((Self.Top * 2 + Self.Height) - IE.Height)/2;
  //          IE.Left := ((Self.Left * 2 + Self.Width) - IE.Width)/2;
            IE.Left := Self.Left - IE.Width;
            bIE := True;

            Value := IE.Hwnd;

            RegSetValue(HKEY_CURRENT_USER,
            'HKSFA\IE_HWND',
            REG_DWORD, @Value, SizeOf(Cardinal));


            IE.Visible := true;
            SetForegroundWindow(Value);
            IE := Unassigned;

            //로드뷰 자동클릭//
            Try
              WinH := FindAllInternetExplorer('IEFrame','http://dna.daum.net', True);
              if WinH > 0 then
              begin
                RVHandle := WinH;
                getWindowRect(WinH, fRect);
                iMainX := fRect.Left + 719;
                iMainY := fRect.Top  + 42;
                iSubX  := iMainX;// + 42;
                iSubY  := iMainY;// + 75;

                SetCursorPos(iSubX, iSubY);
                mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
                mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
              end;
            except

            End;
            //로드뷰 자동클릭//


          except on E:Exception do
            begin
              bIE := False;
              ShowMessage('test' + E.Message);
            end;
          end;
          {Frm_JON36.Tag := Self.Tag;
          Frm_JON36.Show;
          Frm_JON36.OnSelectedMap := SetStartAreaMap;
          Frm_JON36.StartPos(meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text);   }
        end;
      end else
    if Atag = 3 then
    begin
      // 고객 출발지(START), 도착지(DEST) 정보를 저장한다.
      Proc_Cust_AreaSave('START');
    end else
    if Atag = 4 then
    begin
      // 고객 출발지(START), 도착지(DEST) 정보를 저장한다.
      Proc_Cust_AreaSave('DEST');
    end
    else  AddStr := FEpopList.Values[AEpop] + AddStr;

    FCurrEpop.Lines.Text := AddStr + OrgStr;
  Except
    on e: exception do
    begin
      Log('AddEpop Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AddEpop Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.LoadPayMethod;
begin
  cbbPayMethod.Properties.Items.Clear;
  cbbPayMethod.Properties.Items.Add(PAY_METHOD_MONEY);
  if gsJON01AfterMoneyYN <> 'FALSE' then
  begin
    cbbPayMethod.Properties.Items.Add(PAY_METHOD_POST_NML);
    cbbPayMethod.Properties.Items.Add(PAY_METHOD_POST_MILE);
  end;

  if gsJON01CreditMoneyYN <> 'FALSE' then
    cbbPayMethod.Properties.Items.Add(PAY_METHOD_TRUST);

  if IsCardUseBranch(Proc_BRNOSearch) then
    cbbPayMethod.Properties.Items.Add(PAY_METHOD_CARD);

  // KCP 카드 결제 지사 사용여부 체크. 2011-10-19.
  if IsCardUseBranch_KCP(Proc_BRNOSearch) = '03' then
    cbbPayMethod.Properties.Items.Add(PAY_METHOD_CARD_KCP);

  if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

	if (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100'))  then //부산연합하트2K 20140221 KHS
	begin
		cbbPayMethod.Properties.Items.Add(PAY_METHOD_BUSAN);
		cbbPayMethod.Properties.Items.Add(PAY_METHOD_BUSAN3K);
	end;

  cbbPaymethod.ItemIndex := 0;

	if IsCardUseBranch_KCP(Proc_BRNOSearch) = '03' then
	begin
		cbCardSanction.Caption := '현금영수';
		cbCardSanction.Enabled := True;
	end else
	begin
		cbCardSanction.Enabled := False;
		cbCardSanction.Caption := '카드결재';
  end;
end;

procedure TFrm_JON01.LoadPostTime;
begin
  cbbPostTime.Properties.Items.Clear;

  if IsPayMethodPost then
  begin
    cbbPostTime.Properties.Items.Add(POST_TIME_NOPAY);
    cbbPostTime.Properties.Items.Add(POST_TIME_TOMORROW);
    cbbPostTime.Properties.Items.Add(POST_TIME_FIN20);
    cbbPostTime.Properties.Items.Add(POST_TIME_FIN60);

    if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

		if ( (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) ) Or
       ( (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) ) then //부산연합하트2K 20140221 KHS
		begin
//			cbbPostTime.Properties.Items.Add(POST_TIME_BUSAN20);
		end
  end else
  begin
    cbbPostTime.Properties.Items.Add(POST_TIME_NOPAY);
  end;

  cbbPostTime.ItemIndex := 0;
  // 2011.03.02 후불기본값 cbbPayMethodPropertiesChange 에서 이후에 로드(GT_USERIF.AfterPayMidx)
end;

function TFrm_JON01.IsPayMethodPost: Boolean;
begin
  Result := Pos('후불', cbbPayMethod.Text) > 0;
end;

procedure TFrm_JON01.LbDriverChargeClick(Sender: TObject);
begin
  if cxDriverCharge.Enabled then cxDriverCharge.SetFocus;
end;

procedure TFrm_JON01.lblCurPathRateClick(Sender: TObject);
begin
  if cxCurPathRate.Enabled then cxCurPathRate.SetFocus;
end;

procedure TFrm_JON01.lblCurRevisionRateClick(Sender: TObject);
begin
  if cxCurRevisionRate.Enabled then cxCurRevisionRate.SetFocus;
end;

procedure TFrm_JON01.lblNewCustYNClick(Sender: TObject);
begin
  pnlNewCustYN.Visible := False; // 신규고객여부의 정보창 닫음.
end;

procedure TFrm_JON01.LblPostPayClick(Sender: TObject);
begin
   if EdtPostPay.Enabled then EdtPostPay.SetFocus;
end;

procedure TFrm_JON01.LbmeoBigo2Click(Sender: TObject);
begin
  meoBigo2.SetFocus;
end;

procedure TFrm_JON01.LbmeoBigoClick(Sender: TObject);
begin
  meoBigo.SetFocus;
end;

procedure TFrm_JON01.Proc_WTRateMenu_Click(Sender: TObject);
var
  iRate: integer;
  sTitle: string;
begin
  // 메뉴 식별자 읽기..
  iRate := TMenuItem(Sender).Tag;
  sTitle := LeftStr(TMenuItem(Sender).Caption, 5);
  cxTmWaitTime.Text := sTitle;
  cxCurWaitTmRate.Value := iRate;
end;

// 대기시간별 요금 메뉴 생성.
procedure TFrm_JON01.Proc_WTRMenuCreate(sTitle, sComponentName: string; iTagMoney: Integer);
var
  mm: TMenuItem;
begin
  mm := TMenuItem.Create(advPMnuWTR);
  mm.AutoHotkeys := maManual;
  mm.Caption := sTitle;
  mm.Name := 'mm_' + sComponentName;
  mm.Tag := iTagMoney; // 메뉴식별ID 값.
  mm.OnClick := Proc_WTRateMenu_Click; // 메뉴클릭 이벤트 생성.
  advPMnuWTR.Items.Add(mm); // 메인 타이틀의 서브 메뉴 생성.
end;

procedure TFrm_JON01.tmFormCloseTimer(Sender: TObject);
begin
  if tmFormClose.Tag = 99 then
  begin // 화면 닫기 or LOCK 해제 한다.
    tmFormClose.Enabled := False; // timer end.
    if loc_TmClose = 'CLOSE' then
    begin
      btnCmdExitClick(Self);
    end else
    if loc_TmClose = 'UNLOCK' then
    begin
      Proc_AcceptLock('2'); // 해당오더의 Lock을 해제 한다.
    end;
  end;
end;

procedure TFrm_JON01.tmMentTimer(Sender: TObject);
begin
  // 지사별 상담 멘트를 닫는다.
  tmMent.Enabled := False;
  if tmMent.Interval = 5000 then
  begin
    pnlBrNoMent.Visible := False; // 지사 안내멘트 닫음.
    pnlNewCustYN.Visible := False; // 신규고객여부의 정보창 닫음.
  end else
  begin
    pnl_charge.Visible := False;
//-    BtnSR.Visible := False;
  end;
end;

procedure TFrm_JON01.tmrChargeTimer(Sender: TObject);
begin
  tmrCharge.Enabled := False;
  // 거리 계산이 끝난후 요금 계산을 한다.
  curRate.Value := func_search_charge;
  OrgRate := curRate.Value;
end;

procedure TFrm_JON01.tmrDisAcTimer(Sender: TObject);
begin
  tmrDisAc.Enabled := False;

  if (cxtStartXval.Text = '') or (cxtStartYval.Text = '') or
		 (cxtEndXval  .Text = '') or (cxtEndYval  .Text = '') then Exit;

  if not IsNotModifyPrice and (GT_CHARGE_CAL = 0) then
	begin
		if ((lcsSta1 <> '') and (lcsSta2 <> '') and (lcsEnd1 <> '') and (lcsEnd2 <> '')) then
    begin
      // 대표번호 별 기본 설정 요금 반영 여부를 결정 한다.[True:반영, False:미반영]
			if ((gsMyMainTelUse = 'FALSE') or (GSMyMainTelOrderChargeCheck)) and (not IsMultiCallFixPrice) then
			begin
        tmrThRealDis.Tag := 0;
        proc_dis_alculation(Self.Tag, True);
        if GT_DISTANCE_ST = 1  then proc_Realdis_Mng
                               else begin
                                      curRate.Value := func_search_charge;
                                      OrgRate := curRate.Value;
                                    end;
      end;
    end;
  end;

  // 복수콜일경우 자동 계산 처리 2014.06.18 LYB
  if (Assigned(Frm_JON015) and Frm_JON015.HandleAllocated) and
     (Frm_JON015.Count > 0) and (Frm_JON015.OrderHandle = Self.Handle) then
  begin
    if gsMyRateRemarkMaintain <> 'FALSE' then
    begin
      tmrThRealDis.Tag := 0;
      proc_dis_alculation(Self.Tag, True);
      if GT_DISTANCE_ST = 1  then
         proc_Realdis_Mng
//        proc_Realdis_alculation;
    end;
  end;
end;

procedure TFrm_JON01.tmrDistanceTimer(Sender: TObject);
begin
  tmrDistance.Enabled := False;

  if not IsNotModifyPrice and (GT_CHARGE_CAL = 1) then
  begin
    // 대표번호 별 기본 설정 요금 반영 여부를 결정 한다.[True:반영, False:미반영]
		if ((gsMyMainTelUse = 'FALSE') or (GSMyMainTelOrderChargeCheck)) and (not IsMultiCallFixPrice) then
    begin
      tmrThRealDis.Tag := 0;
      proc_dis_alculation(Self.Tag, True);
      if GT_DISTANCE_ST = 1  then proc_Realdis_Mng
                             else begin
                                    curRate.Value := func_search_charge;
                                    OrgRate := curRate.Value;
                                  end;
    end;
  end;
end;

procedure TFrm_JON01.tmrKeyDownTimer(Sender: TObject);
Var ls_Text : AnsiString;
    iSpace : Integer;
begin
  tmrKeyDown.Enabled := False;

  if lcsActiveEdit = 'meoStartArea' then
    ls_Text := meoStartArea.Text ;
  if lcsActiveEdit = 'meoEndArea' then
    ls_Text := meoEndArea.Text   ;
	if lcsActiveEdit = 'meoViaArea' then
	begin
		if GS_VIA_Tag = 1 then
			ls_Text := meoViaArea1.Text
		else
			ls_Text := meoViaArea[GS_VIA_Tag].Text;
	end;
	if lcsActiveEdit = 'meoStartAreaCUT' then
    ls_Text := Frm_CUT011.meoStartAreaCUT.Text;
  if lcsActiveEdit = 'meoEndAreaCUT' then
    ls_Text := Frm_CUT011.meoEndAreaCUT.Text;

  if pos('인근', ls_Text) > 1 then
  begin
    ls_Text := Copy(ls_Text, 1, pos('인근', ls_Text) - 1);
  end;

  if pos('부근', ls_Text) > 1 then
  begin
    ls_Text := Copy(ls_Text, 1, pos('부근', ls_Text) - 1);
  end;

  if pos('근처', ls_Text) > 1 then
  begin
    ls_Text := Copy(ls_Text, 1, pos('근처', ls_Text) - 1);
  end;

  if Copy(ls_Text,Length(ls_Text),1) = '근' then
  begin
    ls_Text := Copy(ls_Text, 1, Length(ls_Text)-1);
  end;

  ls_Text := Frm_JON30.Proc_AreaSearch_KWBaseComp(ls_Text);

  // '@' 를 '아파트' 로 치환.
  ls_Text := FastReplace(ls_Text, '@', '아파트', False);

  if Pos('번지', ls_Text) > 0  then
  begin
    ls_Text := FastReplace(ls_Text, '번지', '', False);
  end else
  // '4' 를 '사거리' 로 치환.
  if Copy(ls_Text,Length(ls_Text),1) = '4' then
  begin
    if ( Not StrToIntDef(RightStr(Trim(Copy(ls_Text,Length(ls_Text)-1, 1)), 1), -1) In [0,1,2,3,4,5,6,7,8,9] ) And
       ( RightStr(Trim(Copy(ls_Text,Length(ls_Text)-1, 1)), 1) <> '-' ) then
      ls_Text := CopyStr(ls_Text, 1, Length(ls_Text)-1) + '사거리';
  end;

  iSpace := System.AnsiStrings.AnsiPos(' ', ls_Text);

  ls_Text := Frm_JON30.fnc_TruncChar(ls_Text);

  if iSpace > 0 then
  begin
    Insert(' ', ls_Text, iSpace);
    Log('JON01 iSpace ls_Text : ' + ls_Text + IntToStr(iSpace), LOGDATAPATHFILE);
  end;

  ls_Text := lcsActiveEdit + ls_Text;  // 영타를 한글로 교정시 소문자만 인식


  if GT_USERIF.ID = 'sntest' then Log(lcsActiveEdit + '--' + LowerCase(gslsText) + ' --- ' + LowerCase(ls_Text), LOGDATAPATHFILE);

  if ( LowerCase(gslsText) = LowerCase(ls_Text) ) then
  begin
    PnlPOISch.Visible := False;
  end;
  Inc(gilsCnt);
end;

procedure TFrm_JON01.tmrResponseTimer(Sender: TObject);
Var sError : String;
begin
  tmrResponse.Enabled := False;

  Log( 'tmrResponseTimer : ' + sRespSParam1 + '/' + sRespSParam2 + '/' + sRespSParam3 + '/' + sRespEParam1 + '/' + sRespEParam2 + '/' + sRespEParam3, LOGDATAPATHFILE);

  try
    if Trim(sRespSParam1) <> '' then
    begin
      proc_WiseNut_Response(sRespSParam1, sRespSParam2, sRespSParam3);

      sRespSParam1 := '';
      sRespSParam2 := '';
      sRespSParam3 := '';
    end;

    Sleep(50);

    if Trim(sRespEParam1) <> '' then
    begin
      proc_WiseNut_Response(sRespEParam1, sRespEParam2, sRespEParam3);

      sRespEParam1 := '';
      sRespEParam2 := '';
      sRespEParam3 := '';
    end;

  Except
    on e: Exception do
    begin
      sError := 'JON01[proc_WiseNut_Response]오더저장:' + e.message;
      Log(sError, LOGDATADIRECTORY + 'Accept_Err.log');
    end;
  end;
end;

procedure TFrm_JON01.tmrStartPosTimer(Sender: TObject);
begin
  tmrStartPos.Enabled := False;
  if Frm_JON31.Visible then Frm_JON31.StartPos(meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text);
end;

procedure TFrm_JON01.tmrThRealDisTimer(Sender: TObject);
Var thread1, i : Integer;
    id1 : LongWord;

    sStartX, sStartY, sEndX, sEndY : String;
begin
  tmrThRealDis.Interval := 800;

  try
    if ( Not RealKmPtr[Self.Tag,1].CaActive ) And ( Not RealKmPtr[Self.Tag,2].CaActive ) And
       ( Not RealKmPtr[Self.Tag,3].CaActive ) And ( Not RealKmPtr[Self.Tag,4].CaActive ) then
    begin
      tmrThRealDis.Enabled := False;

      giRealKmCnt := 0;
      giRealKmIdx := 1;

      if tmrThRealDis.Tag = 1 then BtnSR.Click;

      Exit;
    end;

    if giRealKmIdx > 4 then
    begin
      // 4회 검색후에도 자료가 없으면 직선거리 처리
      curKm.Text := FloatToStr(fDirKm) + 'Km';
      fCruKm := fDirKm;
      tmrThRealDis.Enabled := False;

      if tmrThRealDis.Tag = 1 then BtnSR.Click;

      Exit;
    end;

    if ( giRealKmCnt mod 3 ) = 0 then
    begin
      RealKmPtr[Self.Tag,giRealKmIdx].UseYn := True;
      RealKmPtr[Self.Tag,giRealKmIdx].CaActive := True;
      if giRealKmIdx >= 2 then
      begin
        RealKmPtr[Self.Tag,giRealKmIdx-1].UseYn    := False;
        RealKmPtr[Self.Tag,giRealKmIdx-1].CaActive := False;
      end;

      msg1.Tag   := Self.Tag;
      msg1.Index := giRealKmIdx;

      RealKmPtr[Self.Tag,giRealKmIdx].Tag := Self.Tag;
      RealKmPtr[Self.Tag,giRealKmIdx].thId := 1;

      RealKmPtr[Self.Tag,giRealKmIdx].StartAreaName := meoStartArea.Text;
      RealKmPtr[Self.Tag,giRealKmIdx].EndAreaName := meoEndArea.Text;

      if giRealKmIdx = 1 then
      begin
        if (cxtStartGUIDEYval.Text = '') or (copy(cxtStartGUIDEYval.Text,1,3) = '000') then
        begin
          sStartX := cxtStartXval.Text;
          sStartY := cxtStartYval.Text;
        end  else
        begin
          sStartX := cxtStartGUIDEXval.Text;
          sStartY := cxtStartGUIDEYval.Text;
        end;

        for i := 1 to 5 do
        begin
          if ( Via_Info[i].XposVia <> '' ) And ( Via_Info[i].YposVia <> '' ) then
          begin
            RealKmPtr[Self.Tag,giRealKmIdx].ViaYVal[i] := Via_Info[i].YposVia;
            RealKmPtr[Self.Tag,giRealKmIdx].ViaXVal[i] := Via_Info[i].XposVia;
          end;
        end;

        if (cxtEndGUIDEYval.Text = '') or (copy(cxtEndGUIDEYval.Text,1,3) = '000') then
        begin
          sEndX := cxtEndXval.Text;
          sEndY := cxtEndYval.Text;
        end else
        begin
          sEndX := cxtEndGUIDEXval.Text;
          sEndY := cxtEndGUIDEYval.Text;
        end;
      end else
      begin
        if (cxtStartGUIDEYval.Text = '') or (copy(cxtStartGUIDEYval.Text,1,3) = '000') then
        begin
          sStartX := '0' + IntToStr(StrToInt(cxtStartXval.Text) + ( (giRealKmIdx-1) * 400));
          sStartY := IntToStr(StrToInt(cxtStartYval.Text) + ( (giRealKmIdx-1) * 400));
        end else
        begin
          sStartX := '0' + IntToStr(StrToInt(cxtStartGUIDEXval.Text) + ( (giRealKmIdx-1) * 400));
          sStartY := IntToStr(StrToInt(cxtStartGUIDEYval.Text) + ( (giRealKmIdx-1) * 400));
        end;

        for i := 1 to 5 do
        begin
          if ( Via_Info[i].XposVia <> '' ) And ( Via_Info[i].YposVia <> '' ) then
          begin
            RealKmPtr[Self.Tag,giRealKmIdx].ViaXVal[i] := '0' + IntToStr(StrToInt(Via_Info[i].XposVia) + ( (giRealKmIdx-1) * 400));
            RealKmPtr[Self.Tag,giRealKmIdx].ViaYVal[i] := IntToStr(StrToInt(Via_Info[i].YposVia) + ( (giRealKmIdx-1) * 400));
          end;
        end;

        if (cxtEndGUIDEYval.Text = '') or (copy(cxtEndGUIDEYval.Text,1,3) = '000') then
        begin
          sEndX := '0' + IntToStr(StrToInt(cxtEndXval.Text) + ( (giRealKmIdx-1) * 400));
          sEndY := IntToStr(StrToInt(cxtEndYval.Text) + ( (giRealKmIdx-1) * 400));
        end else
        begin
          sEndX := '0' + IntToStr(StrToInt(cxtEndGUIDEXval.Text) + ( (giRealKmIdx-1) * 400));
          sEndY := IntToStr(StrToInt(cxtEndGUIDEYval.Text) + ( (giRealKmIdx-1) * 400));
        end;
      end;

      RealKmPtr[Self.Tag,giRealKmIdx].StartXVal := sStartX;
      RealKmPtr[Self.Tag,giRealKmIdx].StartYVal := sStartY;

      RealKmPtr[Self.Tag,giRealKmIdx].EndXVal := sEndX;
      RealKmPtr[Self.Tag,giRealKmIdx].EndYVal := sEndY;

      if tmrThRealDis.Tag = 0 then
      begin
        if giRealKmIdx = 1 then curKm.Text := '검색중..'
                           else curKm.Text := '검색' + IntToStr(giRealKmIdx) + '..';
      end;

      thread1 := BeginThread(nil,
                             0,
                             Addr(proc_Realdis_alculation),
                             Addr(msg1),
                             Normal_Priority_Class,
                             id1);

      CloseHandle(thread1);
      Inc(giRealKmIdx);
    end;
    Inc(giRealKmCnt);
  Except
    begin
      tmrThRealDis.Enabled := False;
      FreeAndNil(SmartSR);
      RouteMan := Nil;

      if tmrThRealDis.Tag = 0 then curKm.Text := '';
      giRealKmCnt := 0;
      giRealKmIdx := 1;
      Exit;
    end;
  end;
end;

procedure TFrm_JON01.tmrViaKmTimer(Sender: TObject);
Var i, iUse, iws_Lon, iws_Lat, iwe_Lon, iwe_Lat : Integer;
begin
  tmrViaKm.Enabled := False;

  iUse := 0;
  for i := 1 to 4 do
  begin
    if RealKmPtr[Self.Tag, i].UseYn then iUse := i;
  end;

  if iUse = 0 then Exit;
                        
  Frm_JON52.WGS84ToBessel(RealKmPtr[Self.Tag,iUse].StartYVal, RealKmPtr[Self.Tag,iUse].StartXVal, iws_Lon, iws_Lat);
  Frm_JON52.WGS84ToBessel(RealKmPtr[Self.Tag,iUse].EndYVal  , RealKmPtr[Self.Tag,iUse].EndXVal, iwe_Lon, iwe_Lat);

  fViaKm := proc_dis_Real_Via(iws_Lon, iws_Lat, iwe_Lon, iwe_Lat);

  Lbl_Distance.Caption := Format('경탐)%s-%s 직선)%s', [curKm.Text, FloatToStr(fViaKm) + 'Km', FloatToStr(fChgKm) + 'Km']);

  tmrCharge.Enabled := True;
end;

procedure TFrm_JON01.tmrWKSearchTimer(Sender: TObject);
begin
  tmrWKSearch.Enabled := False;

  if tmrXYChange.Tag = 0 then
    Frm_JON30.StartPos(meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text) else
  if tmrXYChange.Tag = 1 then
    Frm_JON30.EndPos(meoEndArea.Text, cxtEndXval.Text, cxtEndYval.Text);
end;

procedure TFrm_JON01.tmrXYChangeTimer(Sender: TObject);
var
  i: Integer;
  sErrMsg : String;
begin
  tmrXYChange.Enabled := False;

	// 수정모드 일때 요금 계산을 막음.
  if loc_RateNOT = True then Exit;

  if not Self.Visible then Exit;

	if tmrXYChange.Tag = 0 then
	begin
  	if ( gJONStaChkXY.X <> cxtStartXval.Text ) And (  cxtStartXval.Text <> '' ) then
		begin
			if ( gJONStaChkXY.X <> '' ) And ( gJONStaChkXY.Y <> '' ) And ( gJONStaChkXY.Area1 <> '') And ( cxtStartXval.Text <> '' ) then
      begin
				sErrMsg := '[비-출좌 X] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + '-' + gJONStaChkXY.Gubun;
				Assert(False, sErrMsg);
        Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[변-출좌]');
      end else
      begin
				sErrMsg := '[비-출좌 X] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + '-' + gJONStaChkXY.Gubun;
				Assert(False, sErrMsg);

        Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[변-출좌]');
      end;
    end;

    if ( gJONStaChkXY.Y <> cxtStartYval.Text )  And (  cxtStartYval.Text <> '' ) then
    begin
      if ( gJONStaChkXY.X <> '' ) And ( gJONStaChkXY.Y <> '' ) And ( gJONStaChkXY.Area1 <> '') And ( cxtStartYval.Text <> '' ) then
      begin
        sErrMsg := '[비-출좌 Y] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + '-' + gJONStaChkXY.Gubun;
        Assert(False, sErrMsg);
        Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[변-출좌]');
      end else
      begin
        sErrMsg := '[비-출좌 Y] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + '-' + gJONStaChkXY.Gubun;
				Assert(False, sErrMsg);
				Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[변-출좌]');
      end;
    end;
  end;

  try
    if Assigned(Frm_JON30) then
    begin
    	if tmrXYChange.Tag = 0 then
      begin
        if (cxtStartXval.Text = '') and (cxtStartYval.Text = '') and (Trim(meoStartArea.Text) = '') then
        begin
          Hide_Panel(lcsActiveEdit,1);
          if Frm_JON31.Visible then Frm_JON31.StartPos('', '', '');
        end else
        begin
          if True or (BtnStLock.Hint = 'F4)수정') then
          begin
            if GS_MAP_AREA_AUTOSHOW and (not Frm_JON30.Visible) then //- and ( Not Assigned(Frm_COM30) ) then
            begin
              if J30ShowS = False then
              begin
                Frm_JON30.OnSelectedMap := SetStartAreaMap;
                Hide_Panel(lcsActiveEdit,0);
                if GT_USERIF.ID = 'sntest' then Log('5192--' + lcsActiveEdit, LOGDATAPATHFILE);
              end;
            end else
            if GS_MAP_AREA_AUTOSHOW = False then
            begin
              if  J30ShowS = False then
              begin
								Frm_JON30.OnSelectedMap := SetStartAreaMap;
                Hide_Panel(lcsActiveEdit,0);
                if GT_USERIF.ID = 'sntest' then Log('5201--' + lcsActiveEdit, LOGDATAPATHFILE);
              end;
            end;

            if J30ShowS = False then
            begin
              tmrWKSearch.Enabled := True;
//              Frm_JON30.StartPos(meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text);
            end;

            if Frm_JON31.Visible then
            begin
              if J30ShowS = False then
              begin
                try
                  Frm_JON31.OnSelectedMap := SetStartAreaMap;
                finally
                  tmrStartPos.Enabled := True;
                end;
              end;
            end;
          end;
        end;
      end else
    	if tmrXYChange.Tag = 1 then
      begin
        if J30ShowE = True then
        begin
          Exit;
        end;
        if (cxtEndXval.Text = '') and (cxtEndYval.Text = '') and (Trim(meoEndArea.Text) = '') then
        begin
          Hide_Panel(lcsActiveEdit,1);
          if Frm_JON31.Visible then Frm_JON31.EndPos('', '', '');
        end else
        begin
          if True or (BtnEdLock.Hint = 'F4)수정') then
					begin
            if GS_MAP_AREA_AUTOSHOW and (not Frm_JON30.Visible) then //- and ( Not Assigned(Frm_COM30) ) then
            begin
              if J30ShowE = False then
              begin
                Frm_JON30.OnSelectedMap := SetEndAreaMap;
                Hide_Panel(lcsActiveEdit,0);
                if GT_USERIF.ID = 'sntest' then Log('5244--' + lcsActiveEdit, LOGDATAPATHFILE);
              end;
            end else
            if GS_MAP_AREA_AUTOSHOW = False then
            begin
              if J30ShowE = False then
							begin
                Frm_JON30.OnSelectedMap := SetEndAreaMap;
                Hide_Panel(lcsActiveEdit,0);
                if GT_USERIF.ID = 'sntest' then Log('5253--' + lcsActiveEdit, LOGDATAPATHFILE);
              end;
            end;

            if  J30ShowS = False then
            begin
              tmrWKSearch.Enabled := True;
//              Frm_JON30.EndPos(meoEndArea.Text, cxtEndXval.Text, cxtEndYval.Text);
            end;

            if Frm_JON31.Visible then
            begin
              if J30ShowE = False then
              begin
								Frm_JON31.OnSelectedMap := SetEndAreaMap;
								Frm_JON31.EndPos(meoEndArea.Text, cxtEndXval.Text, cxtEndYval.Text);
              end;
            end;
          end;
        end;
      end;
    end;
    if Assigned(Frm_Jon019) then Frm_JON019.Close;
	finally
		tmrDisAc.Enabled := True;
  end;
end;

procedure TFrm_JON01.TT4Timer(Sender: TObject);
Var ls_Text : String;
begin
  TT4.Enabled := False;

  if lcsActiveEdit = 'meoStartArea' then
    ls_Text := meoStartArea.Text ;
  if lcsActiveEdit = 'meoEndArea' then
    ls_Text := meoEndArea.Text   ;
	if lcsActiveEdit = 'meoViaArea' then
	begin
		if GS_VIA_Tag = 1 then
			ls_Text := meoViaArea1.Text
		else
			ls_Text := meoViaArea[GS_VIA_Tag].Text;
	end;
	if lcsActiveEdit = 'meoStartAreaCUT' then
    ls_Text := Frm_CUT011.meoStartAreaCUT.Text;
  if lcsActiveEdit = 'meoEndAreaCUT' then
    ls_Text := Frm_CUT011.meoEndAreaCUT.Text;

  ls_Text := LowerCase(ls_Text);  // 영타를 한글로 교정시 소문자만 인식

  // 같은 단어가 검색으로 들어올 경우 검색 않함.
 if ls_Text = sPreSuggestWord then Exit;
  sPreSuggestWord := ls_Text;

  proc_Wisenut_GetSuggest(ls_Text);
end;

// 와이즈넛에서 Suggest 데이터 가져오기..
procedure TFrm_JON01.proc_Wisenut_GetSuggest(word: string);
var
  sHttp, wURL, lMessage : String;
  sTargetParam : String;
  TmpPointer : Pointer;
  TmpLongWord : LongWord;
  IdHttp : TIdhttp;
begin
  PnlSuggest.Visible := False;
  AdvGridSj.ShowSelection := False;

  sTargetParam := GS_SEARCH_POI_SCH;
  if sTargetParam <> '' then
  begin
    sTargetParam := ReplaceAll(sTargetParam, '서울', '01');
    sTargetParam := ReplaceAll(sTargetParam, '경기', '02');
    sTargetParam := ReplaceAll(sTargetParam, '인천', '03');
    sTargetParam := ReplaceAll(sTargetParam, '대전', '04');
    sTargetParam := ReplaceAll(sTargetParam, '충남', '05');
    sTargetParam := ReplaceAll(sTargetParam, '충북', '06');
    sTargetParam := ReplaceAll(sTargetParam, '강원', '07');
    sTargetParam := ReplaceAll(sTargetParam, '대구', '08');
    sTargetParam := ReplaceAll(sTargetParam, '경북', '09');
    sTargetParam := ReplaceAll(sTargetParam, '부산', '10');
    sTargetParam := ReplaceAll(sTargetParam, '울산', '11');
    sTargetParam := ReplaceAll(sTargetParam, '경남', '12');
    sTargetParam := ReplaceAll(sTargetParam, '전북', '13');
    sTargetParam := ReplaceAll(sTargetParam, '광주', '14');
    sTargetParam := ReplaceAll(sTargetParam, '전남', '15');
    sTargetParam := ReplaceAll(sTargetParam, '제주', '16');
    sTargetParam := ReplaceAll(sTargetParam, '세종', '17');
  end else
  begin
    sTargetParam := '01,02,03';
  end;

  try
    gsRanDom := 'abcd' + IntToStr(RandomRange(10000, 20000));

    if GT_USERIF.ID = 'sntest' then Log('Suggest : ' + Trim(word) + ' --- ' + gsRanDom, LOGDATAPATHFILE);

    sHttp := 'http://' + GS_PoiServerIP + ':8080/jway/WNRun.do?target=' + sTargetParam + '&convert=fw&query='+ UrlEncode(UTF8Encode(trim(word))) +'&datatype=json&session=' + gsRanDom;

    if GT_USERIF.ID = 'sntest' then Log('Suggest : ' + sHttp, LOGDATAPATHFILE);

    wURL := '';
    try
      Frm_Main.WebSuggest.Navigate(sHttp);
      while Frm_Main.WebSuggest.readyState <> READYSTATE_COMPLETE do Application.ProcessMessages;
      wURL := Frm_Main.GetHTML(Frm_Main.WebSuggest, True);

      if GT_USERIF.ID = 'sntest' then Log('Suggest : ' + Trim(wURL), LOGDATAPATHFILE);
    except on E: Exception do
      begin
        Log('JON01 get error : ' + e.Message, LOGDATAPATHFILE);
      end;
    end;
  finally
    if wURL <> '' then
      proc_Wisenut_GetSuggest_Proc(wURL);
  end;
end;

// 와이즈넛에서 Suggest 데이터 가져오기..
procedure TFrm_JON01.proc_Wisenut_GetSuggest_Proc(wURL: String );
var
  js,xs :TlkJSONobject;
  ws    : TlkJSONstring;
  ja, jCnt  : TlkJSONlist;

  j, i, iRow, iCnt : Integer;
  str, shkeyword, skeyword : string;
begin
  try
    try
      js := TlkJSON.ParseText(wURL) as TlkJSONobject;
      if js.Field['responsestatus'].Value = -1 then Exit;
      jCnt := js.Field['result'] as TlkJSONlist;
      if jCnt.Child[0].Field['totalcount'].Value = 0 then Exit;

      if jCnt.Child[0].Field['Session'].Value = gsRanDom then
      begin
        gsRanDom := '';
        Init_AdvGridSj;

        iRow := 0;
        for j := 0 to jCnt.Count - 1 do
        begin
          ja := jCnt.Child[j].Field['items'] as TlkJSONlist;
          iCnt := jCnt.Child[j].Field['totalcount'].Value;

          for i := 0 to iCnt - 1 do
          begin
            shkeyword := M_SGParseTXT(ja.Child[i].Field['hkeyword'].Value);
            skeyword  := ja.Child[i].Field['keyword'].Value;

            AdvGridSj.AddRow;
            AdvGridSj.Cells[0, iRow] := shkeyword;
            AdvGridSj.Cells[1, iRow] := skeyword;
            Inc(iRow);
          end;
        end;
        AdvGridSj.RowCount := AdvGridSj.RowCount - 1;
        if lcsActiveEdit = 'meoStartArea' then
        begin
          PnlSuggest.Left := 34;
          PnlSuggest.Top  := GBTop3.Top + 32 + 23;
          meoStartArea.SetFocus;
//          meoStartArea.SelStart := Length(meoStartArea.Text);
        end else
        if lcsActiveEdit = 'meoEndArea' then
        begin
          PnlSuggest.Left := 34;
          PnlSuggest.Top  := GBTop5.Top + 32 + 23;
        end else
			  if lcsActiveEdit = 'meoViaArea' then
        begin
          PnlSuggest.Left := 34;
          PnlSuggest.Top  := ( GbViaArea.Top + 26 ) + ((ViaNowTag - 1) * 22);
        end;
        PnlSuggest.Caption := lcsActiveEdit;
        if PnlSuggest.Tag = 0 then
        begin
          if ( lcsActiveEdit = 'meoStartArea' ) And ( meoStartArea.Focused ) then
           PnlSuggest.Visible := True
          else
          if ( lcsActiveEdit = 'meoEndArea' ) And ( meoEndArea.Focused ) then
           PnlSuggest.Visible := True
          else
          if ( lcsActiveEdit = 'meoViaArea' ) And ( ( meoViaArea1.Focused ) Or ( meoViaArea[2].Focused ) Or ( meoViaArea[3].Focused ) Or ( meoViaArea[4].Focused ) Or ( meoViaArea[5].Focused ) ) then
           PnlSuggest.Visible := True
        end else
        begin
          PnlSuggest.Tag := 0;
          if lcsActiveEdit = 'meoStartArea' then
          begin
            meoStartArea.SetFocus;
//            meoStartArea.SelStart := Length(meoStartArea.Text);
          end else
          if lcsActiveEdit = 'meoEndArea' then
          begin
            meoEndArea.SetFocus;
//            meoEndArea.SelStart := Length(meoEndArea.Text);
          end else
  			  if lcsActiveEdit = 'meoViaArea' then
          begin
            if ViaNowTag = 1 then meoViaArea1.SetFocus
                             else meoViaArea[ViaNowTag].SetFocus;
          end;
        end;
      end;
    except on E: Exception do
      begin
        Log('get error:'+E.Message, LOGDATAPATHFILE);
      end;
    end;
  finally
    js.Free;
  end;
end;

procedure TFrm_JON01.proc_WiseNut_Response( sPoiName, sGubun, sNo : String );
var
  sHttp : String;
  sYesNo, sViewCnt, sCenterLat, sCenterLon, sSAPoiName, sFixParam, sRanDom, sSF : String;
begin
  sRanDom := 'bcde' + IntToStr(RandomRange(10000, 20000));

  if GS_SEARCH_POISVR_SPOIUSE then sYesNo := '0' else sYesNo := '1';
  if GS_PRJ_AREA = 'S' then sViewCnt := '40' else sViewCnt := '100';

  sFixParam := '&region=' + UrlEncode(UTF8Encode(GS_SEARCH_POI_ADDR)) + '&recRegion=' + UrlEncode(UTF8Encode(GS_SEARCH_POI_SCH));

  sSAPoiName := UrlEncode(UTF8Encode(trim(sPoiName)));

  sFixParam := sFixParam + '&fixAddress=SKIP&fixSPOI=SKIP&fixLAT=&fixLON=';

  sCenterLat := Area_CenterLat;
  sCenterLon := Area_CenterLon;

  if sGubun = 'W' then sSF := 'S'
                  else sSF := 'F';

  if sNo = 'A' then sNo := '1';

  sHttp := 'http://' + GS_PoiServerIP + ':8080/jway/search.jsp?query='+ UrlEncode(UTF8Encode(trim(sPoiName))) +'&lat=' + Frm_JON30.SetWGS84(sCenterLat) + '&lon=' + Frm_JON30.SetWGS84(sCenterLon) + '&startCount=0&viewCount=' + sViewCnt + '&session=' + sRanDom + '&ignoreSPOI=' + sYesNo + sFixParam;

  sHttp := sHttp + '&noresp=' + sSF + '&usedId=' + UrlEncode(UTF8Encode(trim(sPoiName))) + '&usedRank=' + sNo;

  if GS_SEARCH_NO_RI then sHttp := sHttp + '&ignoreAddressDetail=1'
                     else sHttp := sHttp + '&ignoreAddressDetail=0';

  try
    Log('Response : ' + Trim(sHttp), LOGDATAPATHFILE);

//    IdHTTPResp.ReadTimeout := 2 * 1000;
//    IdHTTPResp.ConnectTimeout := 3 * 1000;
//    IdHTTPResp.Get(sHttp);

    Frm_Main.WebWiseNut.Navigate(sHttp);
  except
  end;
end;

procedure TFrm_JON01.Init_AdvGridSj;
begin
  AdvGridSj.Clear;
  AdvGridSj.RowCount := 1;
  AdvGridSj.ColCount := 2;

  AdvGridSj.ColWidths[0] := 285;
  AdvGridSj.ColWidths[1] := 0;
end;

function TFrm_JON01.Proc_BRNOSearch: string;
begin
  Result := Trim(RightStr(cboBranch.Text, 5)); // 본사코드,지사코드
end;

// 선택된 지사정보에서 대표번호를 추출 한다.
function TFrm_JON01.Proc_MainKeyNumberSearch: string;
var
  iPos2: Integer;
  sKeyNumber, sTmp: string;
begin
  Result := '';
  sTmp := cboBranch.Text;

  if sTmp = '' then Exit;

  while (True) do
  begin
    iPos2 := Pos('[', Copy(sTmp, 1, Length(sTmp)));
    if iPos2 = 0 then
    begin
      sKeyNumber := Copy(sTmp, 1, Pos(']', sTmp) - 1);
      Break;
    end;
    sTmp := Copy(sTmp, iPos2 + 1, Length(sTmp));
  end;

  Result := sKeyNumber;
end;

function TFrm_JON01.GetPayMethod: string;
var
  Str: string;
begin
  Str := cbbPayMethod.Text;

  if (Str = PAY_METHOD_MONEY) then
    Result := '0'
  else if (Str = PAY_METHOD_POST_NML) then
    Result := '2'
  else if (Str = PAY_METHOD_POST_MILE) then
    Result := '8'
  else if (Str = PAY_METHOD_TRUST) then
    Result := '4'
  else if (Str = PAY_METHOD_CARD) then
    Result := '5'
  else if (Str = PAY_METHOD_CARD_KCP) then
    Result := '7'
	else if (Str = PAY_METHOD_BUSAN) then
		Result := '2'
	else if (Str = PAY_METHOD_BUSAN3K) then
		Result := '2'
  else
    Result := '0';
end;

procedure TFrm_JON01.SetPayMethod(const Value: string);
  procedure _SetItem(AValue: string);
  var
    I: Integer;
  begin
    for I := 0 to cbbPayMethod.Properties.Items.Count - 1 do
    begin
      if cbbPayMethod.Properties.Items[I] = AValue then
      begin
        cbbPayMethod.ItemIndex := I;
        Break;
      end;
    end;
  end;
begin
  cbbPayMethod.ItemIndex := -1;
  if (Value = '0') or (Value = PAY_METHOD_MONEY) then
    _SetItem(PAY_METHOD_MONEY)
  else if (Value = '2') or (Value = PAY_METHOD_POST_NML) then
    _SetItem(PAY_METHOD_POST_NML)
  else if (Value = '8') or (Value = PAY_METHOD_POST_MILE) then
    _SetItem(PAY_METHOD_POST_MILE)
  else if (Value = '4') or (Value = PAY_METHOD_TRUST) then
    _SetItem(PAY_METHOD_TRUST)
  else if (Value = '5') or (Value = PAY_METHOD_CARD) then
    _SetItem(PAY_METHOD_CARD)
  else if (Value = '7') or (Value = PAY_METHOD_CARD_KCP) then
    _SetItem(PAY_METHOD_CARD_KCP)
	else if (Value = '2') or (Value = PAY_METHOD_BUSAN) then
		_SetItem(PAY_METHOD_BUSAN)
	else if (Value = '2') or (Value = PAY_METHOD_BUSAN3K) then
		_SetItem(PAY_METHOD_BUSAN3K);
end;

function TFrm_JON01.GetPostTime: string;
var
  Str: string;
begin
  Str := cbbPostTime.Text;

  if Str = POST_TIME_TOMORROW then
    Result := '1440'
  else if Str = POST_TIME_FIN20 then
    Result := '20'
  else if Str = POST_TIME_FIN60 then
    Result := '60'
  else
    Result := '';
end;

procedure TFrm_JON01.SetPostTime(const Value: string);
  procedure _SetItem(AValue: string);
  var
    I: Integer;
  begin
    for I := 0 to cbbPostTime.Properties.Items.Count - 1 do
    begin
      if cbbPostTime.Properties.Items[I] = AValue then
      begin
        cbbPostTime.ItemIndex := I;
        Break;
      end;
    end;
  end;
begin
  cbbPostTime.ItemIndex := -1;

  if (Value = '') or (Value = '0') or (Value = POST_TIME_NOPAY) then
    _SetItem(POST_TIME_NOPAY)
  else if (Value = '1440') or (Value = POST_TIME_TOMORROW) then
    _SetItem(POST_TIME_TOMORROW)
  else if (Value = '20') or (Value = POST_TIME_FIN20) then
    _SetItem(POST_TIME_FIN20)
  else if (Value = '60') or (Value = POST_TIME_FIN60) then
    _SetItem(POST_TIME_FIN60);
end;

// 고객 등급별 폼 칼라를 변경해 준다.
procedure TFrm_JON01.Proc_SetFormColor;
var sTemp : string;
begin
	if cboCuLevel.itemindex >= 0 then
	begin
		Try
      PnlCustom.Color := GetCustLevelColor(Proc_MainKeyNumberSearch, SCboLevelSeq[cboCuLevel.itemindex] );//TCustLevel(cboCuLevel.ItemObject).Color;
      PnlMemo.Color := PnlCustom.Color;
//      LblTop   .Color := GetCustLevelColor(Proc_MainKeyNumberSearch, SCboLevelSeq[cboCuLevel.itemindex] );//TCustLevel(cboCuLevel.ItemObject).Color;
//      LblLeft  .Color := LblTop   .Color;
//      LblRigth .Color := LblTop   .Color;
//      LblBottom.Color := LblTop   .Color;
//      PnlTitle .Color := LblTop   .Color;
		except
			sTemp := 'Proc_SetFormColor';
			Log('고객등급 : '+ sTemp, LOGDATAPATHFILE);
		end;
		SetMileColorChange;
	end;
end;

procedure TFrm_JON01.Proc_SetFormColor_1(iType: integer);
begin
  if iType = 0 then
  begin
    // 0.불량(빨강)
    Self.pnlJonMain.Color := clRed;
  end else
  if iType = 1 then
  begin
    // 1.주의(주황)
    Self.pnlJonMain.Color := $004080FF;
  end else
  if iType = 2 then
  begin
    // 2.일반(하늘색)
    Self.pnlJonMain.Color := $00FAEDE2;
  end else
  if iType = 3 then
  begin
    // 3.우수(동색)
    Self.pnlJonMain.Color := $0014AACF;
  end else
  if iType = 4 then
  begin
    // 4.최우수(은색)
    Self.pnlJonMain.Color := clSilver;
  end else
  if iType = 5 then
  begin
    // 5.VIP(황금색)
    Self.pnlJonMain.Color := RGB(255, 200, 0);
  end else
  if iType = 10 then
  begin
    // 10.기본칼라
    Self.pnlJonMain.Color := $00FAEDE2;
  end;
end;

// frm_Jon03.frmJON011 폼의 CU_LEVEL_TYPE : 0 : 고객 자동등급별 라벨 칼라를 변경해 준다.
procedure TFrm_JON01.Proc_SetFormColor_2(iType: integer);
begin
  if iType = 0 then
  begin
    // 최우수고객
    cxLblCuLevel.Color := $0000F2F2;
    cxLblCuLevel.Caption := '최우수고객';
  end else
  if iType = 1 then
  begin
    // 우수고객
    cxLblCuLevel.Color := $00E2FBC8;
    cxLblCuLevel.Caption := '우수고객';
  end else
  if iType = 2 then
  begin
    // 일반고객  $00EEEEEC;
    cxLblCuLevel.Color := $00FFFFE6;
    cxLblCuLevel.Caption := '일반고객';
  end else
  if iType = 9 then
  begin
    // 기사일때,,
    cxLblCuLevel.Color := $00EEEEEC;
    cxLblCuLevel.Caption := '대리기사';
  end else
 if iType = 10 then
  begin
    // 기본칼라,,
    cxLblCuLevel.Color := $00FAEDE2;
    cxLblCuLevel.Caption := '일반고객';
  end;
end;

procedure TFrm_JON01.Proc_SetFormColor_3(iType: integer);
begin
  if iType = 0 then
  begin
    // 0.개인, 2.불량[신버전에선 미사용]
    cxLblBar1.Style.Color := $0000F2F2;
    cxLblBar2.Style.Color := $0000F2F2;
  end else
  if iType = 1 then
  begin
    // 1.업소
    cxLblBar1.Style.Color := $00E2FBC8;
    cxLblBar2.Style.Color := $00E2FBC8;
  end else
  if iType = 3 then
  begin
    // 4.법인
    cxLblBar1.Style.Color := $00FFFFE6;
    cxLblBar2.Style.Color := $00FFFFE6;
  end else
  if iType = 9 then
  begin
    // 9.기사일때,,
    cxLblBar1.Style.Color := $00FFFFE6;
    cxLblBar2.Style.Color := $00FFFFE6;
  end else
  if iType = 10 then
  begin
    // 10.기본칼라,,
    cxLblBar1.Style.Color := $00FFFFE6;
    cxLblBar2.Style.Color := $00FFFFE6;
  end;
end;

// 지사리스트에서 지사코드, 본사코드로 첫번째 대표번호 index를 찾는다.
function TFrm_JON01.Proc_HeNoBrNoListIdxFind(sHdNo, sBrNo: string): Boolean;
var
  i: integer;
  str: string;
begin
  Result := False;
//  cboBranch.Tag := 10;
  // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
  for i := 0 to cboBranch.Properties.Items.Count - 1 do
  begin
    str := cboBranch.Properties.Items[i];
    if (Pos(sHdNo, str) > 0) and (Pos(sBrNo, str) > 0) then
    begin //지사코드
      cboBranch.ItemIndex := i;
      Result := True;
      Break;
    end;
  end;
//  cboBranch.Tag := 0;
  // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
end;

// 지사리스트에서 대표번호, 지사코드로 index를 찾는다.
function TFrm_JON01.Proc_BrNoListIdxFind(sBrNo, sKeyNumber: string): Boolean;
var
  i: integer;
  Str: string;
begin
  Result := False;
  sKeyNumber := Trim(sKeyNumber);
  cboBranch.Tag := 10;

  // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
  for i := 0 to cboBranch.Properties.Items.Count - 1 do
  begin
    Str := cboBranch.Properties.Items[I];

    if (Pos(sBrNo, Str) > 0) and (Pos(Trim(sKeyNumber), Str) > 0) then
    begin //지사코드
      Result := True;
      Break;
    end;
  end;

	if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
		Log('[Billit]JON01.Proc_BrNoListIdxFind : 콤보 변경전' + cboBranch.Text , LOGDATAPATHFILE  );

	if Result then
		cboBranch.ItemIndex := I;

	if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
		Log('[Billit]JON01.Proc_BrNoListIdxFind : 콤보 변경후' + cboBranch.Text , LOGDATAPATHFILE  );

  cboBranch.Tag := 0;
  // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
end;

// 플러스콜 사용여부 체크
function TFrm_JON01.proc_PlusCall_CtrlYN : string;
var sTmp : string;
begin
  sTmp := '';
  // 플러스콜 여부(수도권만 사용함)
  if GS_PRJ_AREA = 'S' then
  begin
    sTmp := Proc_BRNOSearch;
    // 플러스콜 사용 [접수창체크옵션,지사,본사,연합] 조회
		sTmp := GetPlusCallYN(sTmp);
    BtnPlusYN.Enabled := True;
		if copy(sTmp,1,4) = 'yyyy' then
    begin
      BtnPlusYN.Down := True;
		end else
    if copy(sTmp,1,4) = 'fyyy' then
    begin
      BtnPlusYN.Down := True;
      BtnPlusYN.Enabled := False;
		end else
    if copy(sTmp,1,4) = 'nyyy' then    // 미설정. 모드
    begin
//      cxcPlusYN.Checked := False;
		end else
    if copy(sTmp,1,4) = 'xyyy' then
    begin
      BtnPlusYN.Down := False;
      BtnPlusYN.Enabled := False;
    end else
    begin
      BtnPlusYN.Down := False;
      BtnPlusYN.Enabled := False;
    end;
  end;
  Result := sTmp;
end;

// 접수시에 또는 수정시에 버튼위치 설정.
procedure TFrm_JON01.SetCboBranch(bBrNoSetType: boolean = False);
Var i : Integer;
    lsBrNo : String;
begin
  try
    // 콜센터 지사리스트 재설정 여부..
    if bBrNoSetType = True then
    begin
      if cboBrOnly.ItemIndex <= 0 then
        lsBrNo := ''
      else
        lsBrNo := scb_BranchCode[scb_BranchName.IndexOf(cboBrOnly.Text)];

      if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

      // 콜센터 지사리스트 와 접수화면의 지사리스트가 다를경우에만 재설정 해준다.
      if cboBranch.Properties.Items.Count <> scb_DsBranchCode.Count then
      begin
        cboBranch.Tag := 10;
        // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
        cboBranch.Properties.Items.Clear; // 지사명
        // 지사리스트를 담는다.
        for i := 0 to scb_DsBranchCode.Count - 1 do
        begin
          // 본사코드   // 지사코드   // 지사명   // 대표번호
          if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
          begin
            if lsBrNo = '' then
            begin
              if pJON01Dock.HDNO = scb_HeadCode[i] then
               cboBranch.Properties.Items.Add(scb_DsBranchName[i] + '[' + scb_KeyNumber[i] + '] ' +
                  Copy(scb_HeadCode[i] + '     ', 1, 5) + '.' + Copy(scb_DsBranchCode[i] + '     ', 1, 5));
            end else
            begin
              if ( pJON01Dock.HDNO = scb_HeadCode[i] ) And ( lsBrNo = scb_DsBranchCode[i] ) then
                cboBranch.Properties.Items.Add(scb_DsBranchName[i] + '[' + scb_KeyNumber[i] + '] ' +
                  Copy(scb_HeadCode[i] + '     ', 1, 5) + '.' + Copy(scb_DsBranchCode[i] + '     ', 1, 5));
            end;
          end else
          begin
            if lsBrNo = '' then
            begin
              cboBranch.Properties.Items.Add(scb_DsBranchName[i] + '[' + scb_KeyNumber[i] + '] ' +
                Copy(scb_HeadCode[i] + '     ', 1, 5) + '.' + Copy(scb_DsBranchCode[i] + '     ', 1, 5));
            end else
            begin
              if ( lsBrNo = scb_DsBranchCode[i] ) then
                cboBranch.Properties.Items.Add(scb_DsBranchName[i] + '[' + scb_KeyNumber[i] + '] ' +
                  Copy(scb_HeadCode[i] + '     ', 1, 5) + '.' + Copy(scb_DsBranchCode[i] + '     ', 1, 5));
            end;
          end;
        end;
        cboBranch.Tag := 0;
        // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.

  //      lst_BrList.Items := cboBranch.Properties.Items
      end;

      if Not pJON01Dock.bUNDock then pJON01Dock.GUBUN := GT_SEL_BRNO.Gubun;
      if Not pJON01Dock.bUNDock then pJON01Dock.BrNo  := GT_SEL_BRNO.BrNo;

      // 지사통합 선택이 아니면.. 죄측메뉴에 선택된 지사정보로 설정 해준다.
      if pJON01Dock.GUBUN <> '0' then
      begin // 지사리스트에서 지사코드, 본사코드로 첫번째 대표번호 index를 찾는다.  CDS. 080818.
        if not Proc_HeNoBrNoListIdxFind(Trim(pJON01Dock.HDNO), Trim(pJON01Dock.BrNo)) then
        begin
          cboBranch.Tag := 10;
          // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
          if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
            cboBranch.ItemIndex := -1
          else
            cboBranch.ItemIndex := 0; // 기본값으로 세팅한다.
          cboBranch.Tag := 0;
          // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
        end;
      end else
      begin // 환경설정에 설정된 대표지사로 세팅한다.
        if (GS_MainBranch.sBrNo <> '') and (GS_MainBranch.sKeyNumber <> '') then
        begin
          // 지사리스트에서 대표번호, 지사코드로 index를 찾는다.
          if not Proc_BrNoListIdxFind(GS_MainBranch.sBrNo, GS_MainBranch.sKeyNumber) then
          begin
            cboBranch.Tag := 10;
            // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
            if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
              cboBranch.ItemIndex := -1
            else
              cboBranch.ItemIndex := 0; // 기본값으로 세팅한다.
            cboBranch.Tag := 0;
            // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
          end;
        end else
        begin
          cboBranch.Tag := 10;
          // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
          if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
            cboBranch.ItemIndex := -1
          else
            cboBranch.ItemIndex := 0; // 기본값으로 세팅한다.
          cboBranch.Tag := 0;
          // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
        end;
      end;
    end else
    begin
      // 콜센터 지사리스트 와 접수화면의 지사리스트가 다를경우에만 재설정 해준다.
      if cboBranch.Properties.Items.Count <> scb_DsBranchCode.Count then
      begin
        cboBranch.Tag := 10;
      end;
    end;
  Except
    on e: exception do
    begin
      Log('SetCboBranch Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'SetCboBranch Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.SetCmdOrderUpdate;
begin
  try
    StartListN := '0';  //출발지 리스트선택값 초기화
    EndListN := '0';    //도착지 리스트선택값 초기화
    if Pos('조회', Self.Caption) > 0 then
    begin
      btnCmdMultiCall.Enabled := False;
      btnCmdQuestion.Enabled := False;
      btnCmdUpdSave.Visible := True; // 수정버튼
      btnCmdUpdSave.Enabled := True;
    end else
    if (Pos('수정', Self.Caption) = 0 ) then
    begin
      btnCmdQuestion.Enabled := True;
      btnCmdUpdSave.Enabled := False;
      btnCmdMultiCall.Enabled := True;
      J30ShowS := False;
      J30ShowE := False;
      if btnCmdUpdSave.Hint = '추가접수' then
      begin
        J30ShowS := True;
        J30ShowE := True;
        btnCmdUpdSave.Visible := True; // 수정버튼
      end else
      begin
        btnCmdUpdSave.Visible := False; // 수정버튼
      end;
    end else
    begin
      btnCmdMultiCall.Enabled := False;
      btnCmdQuestion.Enabled := False;
      btnCmdUpdSave.Visible := True; // 수정버튼
      btnCmdUpdSave.Enabled := not (btnCmdUpdSave.Tag = 99);
      J30ShowS := True;
      J30ShowE := True;
    end;
  except
    on e: exception do
    begin
      Log('SetCmdOrderUpdate Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'SetCmdOrderUpdate Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.SearchCuTel(AIsUpdate: Boolean);
begin
	if AIsUpdate then
  begin
    // 오더 일련번호를 받아 오더 수정창을 열어 준다.  sTodayGb:1(당일오더), 2:(과거오더)
    Proc_OrderUpdate_Select(cxtJoinNum.Text, IntToStr(cxtJoinNum.Tag), btnCmdUpdSave.Hint);
    //Perform(WM_NEXTDLGCTL, 0, 0);
  end else
  begin
    cxLblCIDUseFlg.Hint := ''; // CID 조회인지 설정을 한다.  value:CID
    SetPrivateVariable; // 접수 전에 조회 조건 관련 전역변수 초기화..
    if Length(Trim(cxtCuTel.Text)) < 4 then
    begin
      GMessagebox('고객전화번호가 없거나 혹은 잘못 입력된 번호 입니다.', CDMSI);
      self.cxtCuTel.SetFocus;
      Exit;
    end;

    if Length(Trim(cxtCuTel.Text)) = 4 then
		begin
			CustomerSearch('TEL4');
      Exit;
    end;

    cxtCuTel.Text := AddPhoneDDD(cxtCuTel.Text);

    meoStartArea.Hint := 'STOPFOCUS'; // 포커스 더이상 넘어가지 않도록 한다.
    locCustHP_MainNum_Search := '';
    // JON03에서 고객 전화번호로  조회시 사용함. 구분값:'CUSTHP'
    // 선택된 지사정보에서 대표번호를 추출 한다.
		Proc_KeyNumberSearch(Proc_MainKeyNumberSearch);
  end;
end;

// 오더 일련번호를 받아 오더 수정창을 열어 준다.  sTodayGb:1(당일오더), 2:(과거오더); sInsGubun:"수정", "추가접수"
procedure TFrm_JON01.Proc_OrderUpdate_Select(sConfSlip, sTodayGb, sInsGubun: string);
begin
  Proc_OrderUpdate_Select_New(sConfSlip, sTodayGb, sInsGubun);
end;

// 접수 전에 조회 조건 관련 전역변수 초기화..
procedure TFrm_JON01.SetPrivateVariable;
begin
	locsCuTel := '';
  locsCuTel2 := '';
  lcsCu_seq := ''; // 현재 선택된 고객seq
  locHDNO := '';
  locBRNO := '';
  locKNum := ''; // 조회 고객 본사, 지사코드, 대표번호 임시저장.
  locDNIS := '';
  locWkSabun := '';
  locSndTime := '';
  locWkBrNo := ''; // 조회기사 사번, 기사지사코드 저장.
end;

// 전화번호, 고객명 으로 조회 한다... sGB : NAME(고객명으로 조회), : TEL4(전화번호4자리 조회)
procedure TFrm_JON01.CustomerSearch(sGB: string);
var
  sType, sHDNO, sBRNO, sKeyNumber: string;
  sSearch: String;

  XmlData, Param, ErrMsg: string;
  xdom: DomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode, iRow : Integer;
  idx: Integer;
begin
  // 선택된 지사정보에서 대표번호를 추출 한다.
  sKeyNumber := Proc_MainKeyNumberSearch;
  sHDNO := Proc_HDNOSearch; // 본사코드 정보를 읽는다.
  sBRNO := Proc_BRNOSearch; // 지사코드 정보를 읽는다.

	if (sGB = 'TEL4') and (length(Trim(cxtCuTel.Text)) = 4) then
  begin
    sSearch := Trim(cxtCuTel.Text);
    sType := '1';
  end else
  if (sGB = 'NAME') and (length(Trim(cxtCuTel.Text)) >= 3) then
	begin
		sSearch := Trim(cxtCuTel.Text);
    sType := '2';
  end else
	begin
		GMessagebox('전화번호 일경우는 4자리, 고객명 일경우는 2자이상 입력하셔야 합니다.', CDMSI);
		cxtCuTel.Text := '';
		cxtCuTel.SetFocus;
		exit;
  end;

  try
    Param := sType + '│' + sHDNO + '│' + sBRNO + '│' + sKeyNumber + '│' + sSearch;
    if not RequestBase(GetSel05('CUST_SEARCH_TYPE_LIST', 'MNG_CUST.CUST_SEARCH_TYPE_LIST', '100', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('고객 조회  중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    cxCustView.DataController.SetRecordCount(0); // Record 초기화.

    xdom := CoDomDocument.Create;
    xdom.loadXML(XmlData);

    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

    if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      cxCustView.BeginUpdate; // 데이터 삽입 필수.
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
          Application.ProcessMessages;

          iRow := cxCustView.DataController.AppendRecord; // 1 Record 추가
          cxCustView.DataController.Values[iRow, 0] := ls_Rcrd[0];
          // 고객일련번호
          cxCustView.DataController.Values[iRow, 1] := ls_Rcrd[1]; // 고객명
          cxCustView.DataController.Values[iRow, 2] := ls_Rcrd[2];
          // 전화번호
          if Trim(ls_Rcrd[3]) <> '' then
          begin
            idx := GT_BUBIN_INFO.cbcode.IndexOf(Trim(ls_Rcrd[3]) + ',' + sBRNO);
            if idx = -1 then
            begin
              // 법인코드 불러오기 실패
            end else
            begin
              cxCustView.DataController.Values[iRow, 3] := Trim(Copy(GT_BUBIN_INFO.cbEtc[idx], 1, 60)); // 법인명
              cxCustView.DataController.Values[iRow, 4] := Trim(Copy(GT_BUBIN_INFO.cbEtc[idx], 61, 60)); // 법인부서명
            end;
          end else
          begin
            cxCustView.DataController.Values[iRow, 3] := ''; // 법인명
            cxCustView.DataController.Values[iRow, 4] := ''; // 법인부서명
          end;
          cxCustView.DataController.Values[iRow, 5] := ls_Rcrd[3]; // 법인코드
          cxCustView.DataController.Values[iRow, 6] := ls_Rcrd[4]; // 상담메모
          cxCustView.DataController.Values[iRow, 7] := ls_Rcrd[5]; // 기사용메모
          cxCustView.DataController.Values[iRow, 8] := ls_Rcrd[6]; // 고객구분
          cxCustView.DataController.Values[iRow, 9] := ls_Rcrd[7]; // 고객등급
          cxCustView.DataController.Values[iRow, 10] := ls_Rcrd[8]; // 완료건수
          cxCustView.DataController.Values[iRow, 11] := ls_Rcrd[9]; // 취소건수
          cxCustView.DataController.Values[iRow, 12] := ls_Rcrd[10]; // 현재마일리지
          cxCustView.DataController.Values[iRow, 13] := ls_Rcrd[11]; // 마일리지지급횟수
          if Trim(ls_Rcrd[12]) <> '' then
          begin
            cxCustView.DataController.Values[iRow, 14] := Copy(ls_Rcrd[12], 1, Pos('/', ls_Rcrd[12]) - 1); // 마일리지지급단위
            cxCustView.DataController.Values[iRow, 15] := Copy(ls_Rcrd[12], Pos('/', ls_Rcrd[12]) + 1, Length(ls_Rcrd[12])); // 지금상품명
          end else
          begin
            cxCustView.DataController.Values[iRow, 14] := ''; // 마일리지지급단위
            cxCustView.DataController.Values[iRow, 15] := ''; // 지금상품명
          end;
          cxCustView.DataController.Values[iRow, 16] := ls_Rcrd[13]; // 출발지명
          cxCustView.DataController.Values[iRow, 17] := ls_Rcrd[14]; // 출1
          cxCustView.DataController.Values[iRow, 18] := ls_Rcrd[15]; // 출2
          cxCustView.DataController.Values[iRow, 19] := ls_Rcrd[16]; // 출3
          cxCustView.DataController.Values[iRow, 20] := ls_Rcrd[17]; // 출X
          cxCustView.DataController.Values[iRow, 21] := ls_Rcrd[18]; // 출Y
          cxCustView.DataController.Values[iRow, 22] := ls_Rcrd[19]; // 도착지명
          cxCustView.DataController.Values[iRow, 23] := ls_Rcrd[20]; // 도1
          cxCustView.DataController.Values[iRow, 24] := ls_Rcrd[21]; // 도2
          cxCustView.DataController.Values[iRow, 25] := ls_Rcrd[22]; // 도3
          cxCustView.DataController.Values[iRow, 26] := ls_Rcrd[23]; // 도X
          cxCustView.DataController.Values[iRow, 27] := ls_Rcrd[24]; // 도Y
          cxCustView.DataController.Values[iRow, 28] := ls_Rcrd[25]; // SMS수신거부
        end;
        cxCustView.EndUpdate; // 데이터 삽입 필수.
      finally
        FreeAndNil(ls_Rcrd);
      end;
    end;
    cxGBSearch.Visible := True;
  except
    on E: Exception do
    begin
      ErrMsg := 'JON01[Proc_CustSearchRlt] Error:' + E.Message;
      GMessagebox(ErrMsg, CDMSE);
      // 에러 정보를 서버에 저장한다.
      Assert(False, E.Message);
    end;
  end;
end;

// 고객 전화번호로 고객 기본정보 조회
procedure TFrm_JON01.Proc_KeyNumberSearch(ss_KeyNumber: string; bCid: Boolean = False);
label
  Retry;
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  CustTel, rv_str, ls_rxxml: string;
  ErrCode: integer;
  i, j : Integer;
begin
	if Trim(ss_KeyNumber) = '' then
  begin
    GMessagebox('지사 + 대표번호를 선택 하세요~', CDMSI);
    cboBranch.SetFocus;
    Exit;
  end;

  if Trim(cxtCuTel.Text) = '' then
  begin
    if Trim(cxtCallTelNum.Text) = '' then
    begin
      GMessagebox('고객전화번호를 입력 하세요~', CDMSI);
      cxtCuTel.SetFocus;
      Exit;
    end;
  end;

  // 출발지/도착지에 자료가 있는지 여부 체크 후 없으면 표시  20130724  LYB
  if ( cxtStartXval.Text <> '' ) Or ( cxtStartYval.Text <> '' ) Or
     ( cxtEndXval  .Text <> '' ) Or ( cxtEndYval  .Text <> '' ) then
    pbISStartEndXY := True
  else
    pbISStartEndXY := False;  // 초기화 부분에 문제가 있어서 사용 중지

  try
    cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);

    // ------------------ 발신번호 정보를 보여준다.------------------------
    if cxLblCIDUseFlg.Hint <> 'CID' then
    begin
      if locCustHP_MainNum_Search = '' then
      begin // JON03에서 고객 전화번호로  조회시 사용함. 구분값:'CUSTHP'
        locBrNo := Proc_BRNOSearch; // 지사코드 정보를 읽는다.
        locKNum := Proc_MainKeyNumberSearch; // 대표번호 정보를 읽는다.
        cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);
        cxtCallTelNum.Text := cxtCuTel.Text;
      end;
    end else
    begin
      cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);
      cxtCallTelNum.Text := cxtCuTel.Text;
    end;

    CustTel := cxtCallTelNum.Text;
    if locbWkToCust then
      CustTel := CustTel + '+';

    ls_TxLoad := GTx_UnitXmlLoad('JON03010.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',        GT_USERIF.ID,   [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',     VERSIONINFO,    [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',     'KYNM0001',     [rfReplaceAll]);

    if cxLblCIDUseFlg.Hint <> 'CID' then
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsYnString',        'n'                    , [rfReplaceAll]); // CID서버로 부터 생성된 창인지 여부 (y,n)
      if gsCidVersion = 'CXE' then
        ls_TxLoad := StringReplace(ls_TxLoad, 'CidsVersionString',   '1', [rfReplaceAll]) // CID서버프로토콜버전 (0:구버전, 1:CIDXE버전)
      else
        ls_TxLoad := StringReplace(ls_TxLoad, 'CidsVersionString',   '0', [rfReplaceAll]); // CID서버프로토콜버전 (0:구버전, 1:CIDXE버전)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsInlineString',    ''                     , [rfReplaceAll]); // 내선번호  (CID서버에서 수신한값)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsDnisString',      ''                     , [rfReplaceAll]); // DNIS번호  (CID서버에서 수신한값)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsKeyNumberString', ''                     , [rfReplaceAll]); // 대표번호  (CID서버에서 수신한값
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsCidNumString',    ''                     , [rfReplaceAll]); // 고객번호  (CID서버에서 수신한값)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsCidKeyString',    ''                     , [rfReplaceAll]); // 고객번호별고유키값  (CID서버에서 수신한값)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsBrNoString',      ''                     , [rfReplaceAll]); // 지사코드 (CID서버에서 수신한값)
    end else
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsYnString',        'y'                    , [rfReplaceAll]); // CID서버로 부터 생성된 창인지 여부 (y,n)
      if gsCidVersion = 'CXE' then
        ls_TxLoad := StringReplace(ls_TxLoad, 'CidsVersionString',   '1', [rfReplaceAll]) // CID서버프로토콜버전 (0:구버전, 1:CIDXE버전)
      else
        ls_TxLoad := StringReplace(ls_TxLoad, 'CidsVersionString',   '0', [rfReplaceAll]); // CID서버프로토콜버전 (0:구버전, 1:CIDXE버전)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsInlineString',    gsInternalNumber       , [rfReplaceAll]); // 내선번호  (CID서버에서 수신한값)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsDnisString',      En_Coding(locDNIS)     , [rfReplaceAll]); // DNIS번호  (CID서버에서 수신한값)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsKeyNumberString', En_Coding(ss_KeyNumber), [rfReplaceAll]); // 대표번호  (CID서버에서 수신한값
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsCidNumString',    CustTel                , [rfReplaceAll]); // 고객번호  (CID서버에서 수신한값)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsCidKeyString',    locSndTime             , [rfReplaceAll]); // 고객번호별고유키값  (CID서버에서 수신한값)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsBrNoString',      En_Coding(locBRNO)     , [rfReplaceAll]); // 지사코드 (CID서버에서 수신한값)
    end;

    ls_TxLoad := StringReplace(ls_TxLoad, 'ManTelString',        cxtCuTel.Text     , [rfReplaceAll]); // 고객번호   (상담원의 임의로 고객번호입력)
    ls_TxLoad := StringReplace(ls_TxLoad, 'ManKeyNumberString',  En_Coding(locKNum), [rfReplaceAll]); // 대표번호   (상담원이 임의로 지사/대표번호 선택)
    ls_TxLoad := StringReplace(ls_TxLoad, 'ManBrNoString',       En_Coding(locBRNO), [rfReplaceAll]); // 지사코드   (상담원이 임의로 지사/대표번호 선택)


    // 사용자별 오더통계를 계산하기 위한 속성값(CID : 0(일반), 1(CID))
    if bCid then
    begin
      if locCustHP_MainNum_Search = '' then
        // JON03에서 고객 전화번호로  조회시 사용함. 구분값:'CUSTHP'
        ls_TxLoad := StringReplace(ls_TxLoad, 'CidsAutoString', '1', [rfReplaceAll])   // CID서버로부터 생성되어 최초 전문요청시 (1)
      else
        ls_TxLoad := StringReplace(ls_TxLoad, 'CidsAutoString', '0', [rfReplaceAll]);
    end else
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsAutoString', '0', [rfReplaceAll]);
    end;

		// 접수화면의 기본 컨트롤을 초기화 한다.
    gsCuTelHint := cxtCuTel.Text;
    meoBigo.Hint := 'NOCLEAR';
    ControlClear(False);
    if Not pbISStartEndXY then
    begin
      FControlInitial(False, False); // 폼컨트롤 초기화.
    end else
    begin
      // 고객의 이용내역을 담아둔다.
      for i := 0 to 201 do // 접수창 생성수 최대 16개
        for j := 0 to 40 do // 이용내역 레코드 최대 60건
          locaryOrderList[i, j] := '';
    end;
    meoBigo.Hint := '';

    cxtCuTel.Text := gsCuTelHint;
    locsCuTel := cxtCuTel.Text;
    Frm_JON012.cxGVeOrderList.DataController.SetRecordCount(0);

Retry:
    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      Proc_JobAfterProc(True, False);
      rv_str := '';
      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;

          proc_recieve(ls_rxxml);

          tmFormClose.Tag := 99; // 화면 닫기 설정값.
        end;
      end else
         gsCuTelHint := '';  // 20130701  LYB  네트워크 오류시 재 조회 하게끔 변수 처리
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, False);
    end;

    // 플러스콜 사용여부 체크
		proc_PlusCall_CtrlYN;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

// 오더 일련번호를 받아 오더 수정창을 열어 준다.  sTodayGb:1(당일오더), 2:(과거오더); sInsGubun:"수정", "추가접수"
procedure TFrm_JON01.Proc_OrderUpdate_Select_New(sConfSlip, sTodayGb, sInsGubun: string);
begin
  loc_Up_Recv_YN := False; // 수정전문 요청후 화면 초기화 완료여부

  try
    SetPrivateVariable; // 접수 전에 조회 조건 관련 전역변수 초기화..
    cxLblCIDUseFlg.Hint := ''; // CID 조회인지 설정을 한다.
    locHDNO := '';
    locBRNO := ''; // 조회 고객 본사, 지사코드, 대표번호 임시저장.
    locKNum := ''; // CID에서 들어온 대표번호 설정.
    locDNIS := '';
    locSndTime := '';
    cxtCallTelNum.Text := ''; // CID 설정.
    cxLblConfSlipUseFlg.Hint := 'CONFSLIP'; // 접수번호 조회인지 설정.
    cxtJoinNum.Text := sConfSlip; // 접수번호 저장.
    cxtJoinNum.Tag := StrToIntDef(sTodayGb, 2);
    // sTodayGb:1(당일오더), 2:(과거오더)
    btnCmdUpdSave.Hint := sInsGubun; // "추가접수" 또는 "수정" 구분값 저장.
    if (Pos('수정', sInsGubun) > 0 ) then
    begin
      cxTxtBrNameCaption.Hint := FormatDateTime('YYYY-MM-DD HH:MM:SS', Now);
			btnCmdExit.Hint := 'UPDATE_MODE' // 오더정보 수정모드 설정을 한다.
		end else
		if (Pos('조회', sInsGubun) > 0 ) then
		begin
			cxTxtBrNameCaption.Hint := FormatDateTime('YYYY-MM-DD HH:MM:SS', Now);
			btnCmdExit.Hint := 'UPDATE_MODE' // 오더정보 수정모드 설정을 한다.
		end else
    begin
      cxTxtBrNameCaption.Hint := '';
      btnCmdExit.Hint := '';
    end;

    if btnCmdUpdSave.Tag = 99 then
    begin // 24시간 지난오더는 수정 할 수 없음.
      btnCmdUpdSave.Enabled := False;
    end;

    Frm_JON012.cxGVeOrderList.DataController.SetRecordCount(0);
    Proc_Jon012Show; // 고객 이용내역을 미리 띄워준다.

    // 접수화면의 기본 컨트롤을 초기화 한다.
		FControlInitial(False, True); // 폼컨트롤 초기화.
		ControlClear;

    Frm_JON012.cxGVeOrderList.DataController.SetRecordCount(0);
    if btnCmdUpdSave.Hint = '추가접수' then
    begin
      btnCmdUpdSave.Enabled := False;
      btnCmdUpdSave.Visible := False;
    end;

    cxTxtBrNameCaption.Text := '오더정보 읽는중...';
    // 지사명, 대표번호 정보를 눈에 확~ 뜨이게, 크게 보여준다.
    cxTxtBrNameCaption.Visible := True;
    // 지사명, 대표번호 정보를 눈에 확~ 뜨이게, 크게 보여준다.

    loc_Up_Recv_YN := True; // 수정전문 요청후 화면 초기화 완료여부

    // 오더 일련번호를 받아 오더 수정정보를 조회 한다.
    Proc_ConfSlip_Select_New(sConfSlip, sTodayGb);
    // sTodayGb:1(당일오더), 2:(과거오더)

    if btnCmdUpdSave.Hint = '추가접수' then
    begin
      dtpResvDate.Enabled := True;
      dtpResvTime.Enabled := True;
    end;

    if (Pos('수정', sInsGubun) > 0 ) then
    begin
      BtnPlusYN.Enabled := False;
    end;
  except
    on e: exception do
    begin
      loc_Up_Recv_YN := True; // 수정전문 요청후 화면 초기화 완료여부
      Assert(False, E.Message);
    end;
  end;
end;

// 선택된 지사정보에서 본사코드를 추출 한다.
function TFrm_JON01.Proc_HDNOSearch: string;
var
  sTmp: string;
begin
  // A100.B100:*NS법인[15889999]
  // *NS법인[15889999] A100.B100
  sTmp := RightStr(cboBranch.Text, 11); // 본사코드,지사코드
  Result := Trim(Copy(sTmp, 1, Pos('.', sTmp) - 1)); // 본사코드
end;

// 전문 요청후 결과에 따라 화면 Enabled: True/False 처리를 해준다.

procedure TFrm_JON01.Proc_JobAfterProc(bFormLock: boolean; bOrderInsGB: boolean =
  False);
begin
  if bFormLock then
  begin
    //------> 화면에 Lock을 건다. <--------
    pnlJonMain.Enabled := False;
    // 요청한 업무처리가 왼료 될때까지 접수화면의 모든 기능을 일시 정지 시킨다.
    Frm_JON012.Enabled := False;
    //-------------------------------------
  end else
  begin
    //------> 화면의 Lock을 풀어준다. <--------
    pnlJonMain.Enabled := True;
    // 요청한 업무처리가 왼료 될때까지 접수화면의 모든 기능을 일시 정지 시킨다.
    Frm_JON012.Enabled := True;
    //-------------------------------------

    Screen.Cursor := crDefault;

    Proc_BtnEnabled(True); // 버튼 활성/비활성 처리.
    GB_JON03SELECT_GB := True;

    if bOrderInsGB then
    begin
      // 접수현황에서 수정전문 요청시 결과받았는지의 여부.
      if cxLblCIDUseFlg.Hint = 'CID' then
      begin // CID 조회인지 설정을 한다.
        cxtCuTel.Text := cxtCallTelNum.Text;
      end;
    end;

    // 서버요청후 지연 디버그 정보를 저장한다.
    if GS_DEBUG_MSG_J01 <> '' then
    begin
//-      GS_DEBUG_MSG_J01 := StringReplace(GS_DEBUG_MSG_J01, '!!$초과시간$!!', shaPrcMsg.Hint, [rfReplaceAll]);
      Assert(False, GS_DEBUG_MSG_J01);
    end;
  end;
end;

// 서버에서 받은 전문을 ClientKey에 따라 결과 처리를 한다.
procedure TFrm_JON01.Proc_recieve(ls_rxxml: String);
var
  ls_ClientKey, ls_Msg_Err, sMsg: string;
begin
  try
    if not loc_Ud_xdom.loadXML(ls_rxxml) then
    begin
      Proc_BtnEnabled(True); // 버튼 활성/비활성 처리.
			GMessagebox('[Proc_Recieve]XML전문 형식이 맞지 않습니다.' + #13#10 +
        '다시한번 조회 하세요', CDMSE);
      GB_JON03SELECT_GB := True;
      // 접수현황에서 수정전문 요청시 결과받았는지의 여부.
      Exit;
    end;

    //-------------------------- Client Key Read -----------------------------
    loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/header/ClientKey');
    ls_ClientKey := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Value').Text;
    //------------------------------------------------------------------------
    //ls_ClientKey := GetXmlClientKey(ls_rxxml);
    //------------------------------------------------------------------------
    if ls_ClientKey = 'KEYN0001' then
      Proc_NumberInsert(ls_rxxml) // 대표번호 검색하기..
		else
    if ls_ClientKey = 'KYNM0001' then
    begin
			Proc_KeyNumberInsert(ls_rxxml); // [고객전화번호] 로 검색 후 결과를 처리한다.
    end else
    if ls_ClientKey = 'VIA00001' then
    begin
      proc_ViaInfo_insert(ls_rxxml); // 받아온 경유지 정보를 저장 한다.
    end else
    if Copy(ls_ClientKey, 1, 7) = 'SAVE000' then
    begin
      Proc_SaveReturn(ls_rxxml); // 접수 등록 결과 처리 한다.
    end else
    if ls_ClientKey = 'CUSV0032' then
    begin
      Proc_CustBasicSave_Result(ls_rxxml); // 고객기본정보 수정 작업후 결과 처리..
    end else
    if ls_ClientKey = 'JON03020' then   // SMS거부 수정 결과 처리
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_Msg_Err) then
      begin
        GMessagebox('SMS거부 수정 완료 하였습니다.', CDMSI);
      end else
      begin
        ShowMessage('SMS거부 수정도중 에러가 발생 하였습니다.' + #10#13 + ls_Msg_Err);
      end;
    end else
    if (ls_ClientKey = 'CUSE0001') or
       (ls_ClientKey = 'CUSE0011') or
       (ls_ClientKey = 'CUSE0012') then
    begin
      Proc_RequestResult(ls_rxxml, ls_ClientKey);  // 고객 SEQUENCE조회, 출/도착지, 저장 후 결과 처리.
    end else
    if ls_ClientKey = 'TDDD0001' then
    begin
      // 전화번호로 위경도 좌표값 조회 후 그 결과 처리를 한다.
      Proc_TellNumSearchNEDataResult(ls_rxxml);
    end else
    if ls_ClientKey = 'ORDE0011' then
    begin
      // [수정화면 띄우기..](오더일련번호)접수번호로 조회 후 그 결과 처리를 한다.  // 타임 로그를 찍는다.
			loc_RateNOT := True; // 요금 계산을 막음.
      Proc_ConfSlipSelectResult(ls_rxxml);
      // [오더 일련번호:접수번호] 로 검색 후 결과를 처리한다.[수정화면 띄우기..]
      loc_RateNOT := False; // 요금 계산을 막음.
    end else
    if ls_ClientKey = 'MODI0001' then
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_Msg_Err) then
      begin // 오더 수정모드에서 요청후 결과 처리..

        if GB_JON_FINISHMSG then
          GMessagebox(MDXCI_0006, CDMSI);

        Application.ProcessMessages;
        Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, cxtJoinNum.Text);
        tmFormClose.Tag := 77; // 화면 닫기 설정값.
        loc_TmClose := 'CLOSE'; // 화면 종료 타이머 변수. CDS. 080830.
        tmFormClose.Enabled := True; // 화면을 닫는다.
        end
      else if ('3002' = Copy(ls_Msg_Err, 1, 4)) then
      begin
        GMessagebox('상태가 변경 되었습니다.' + CRLF + ls_Msg_Err, CDMSI);
      end else
      begin
        GMessagebox('처리 실패 하였습니다' + CRLF + ls_Msg_Err, CDMSI);
      end;
    end else
    if ls_ClientKey = 'CUOD0010' then
    begin
      Frm_JON012.Proc_CustOldSelectResult(ls_rxxml);
      // 고객과거 이용내역 불러오기..
    end else
    if ls_ClientKey = 'CardDown' then
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      if ls_Msg_Err = '0000' then
        GMessagebox('카드모듈 다운로드 요청 하였습니다.', CDMSI)
      else
        GMessagebox('카드모듈 다운로드 요청에 실패했습니다.'#13#10 + GetXmlErrorMsg(ls_rxxml), CDMSI);
    end else
    if ls_ClientKey = 'URLR0001' then
    begin
//      btnBubinReq.Enabled := True;
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_Msg_Err) then
      begin
        GMessagebox('법인 인증을 요청하였습니다.', cdmsi);
      end else
      begin
        GMessagebox(ls_Msg_Err, CDMSI);
      end;
    end else
    if ls_ClientKey = 'LOCK0001' then
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      // 오더 수정화면 띄울때,, Lock을 [설정] 한다.
      if ('0000' = ls_Msg_Err) then
      begin
        loc_bUpdateLock := True;
        // 수정화면 Lock 설정 여부.[True:설정, False:미설정]
     //proc_Cust_info(ed_MaddBrch.Text,ed_Cust_Tel_Hidden.Text);
      end else
      begin
        GMessagebox(ls_Msg_Err, CDMSI);
      end;
    end else
      if ls_ClientKey = 'LOCK0002' then
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      // 오더 수정화면 닫을때,, Lock을 [해제] 한다.
      loc_bUpdateLock := False;
      // 수정화면 Lock 설정 여부.[True:설정, False:미설정]
      if btnCmdExit.Tag = 999 then btnCmdExit.Tag := 0;
      // 수정모드에서 프로그램 닫을때, Lock 해제설정 초기화 한다.
      if ('0000' <> ls_Msg_Err) then
      begin
        GMessagebox(ls_Msg_Err, CDMSI);
      end;
    end else
      if ls_ClientKey = 'DELETECUST' then
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      sMsg := GetXmlErrorMsg(ls_rxxml);
      if ('0000' = ls_Msg_Err) and ('1' = sMsg) then
      begin
        GMessagebox('성공하였습니다.', CDMSI);
        tmFormClose.Tag := 77; // 화면 닫기 설정값.
        loc_TmClose := 'CLOSE'; // 화면 종료 타이머 변수. CDS. 080830.
        tmFormClose.Enabled := True; // 화면을 닫는다.
        //btnCmdExitClick(btnCmdExit);
      end else
      begin
        GMessagebox('실패하였습니다.' + #13#10 + '다시 한번 시도해 보세요', CDMSI);
      end;
    end else
    begin
      sMsg := GetXmlErrorMsg(ls_rxxml);

      GMessagebox('통신 중 오류가 발생했습니다.[' + sMsg + ']', CDMSI);

      Assert(False, '통신 중 오류가 발생했습니다.[' + ls_rxxml + ']');
      Proc_BtnEnabled(True); // 버튼 활성/비활성 처리.
      pnlJonMain.Enabled := True;
      GB_JON03SELECT_GB := True;
      // 접수현황에서 수정전문 요청시 결과받았는지의 여부.
    end;
  except
    on e: exception do
    begin
      ShowMessage('[Proc_recieve]예외처리:' + e.Message);
    end;
  end;
end;

// 선택 오더에 대해 Lock 을 설정한다.
procedure TFrm_JON01.Proc_AcceptLock(ss_Gubun: string);
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
  if (ss_Gubun = '') then
    Exit;

  try
    ls_TxLoad := GTx_UnitXmlLoad('C009.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString',   VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString',   'LOCK000' + ss_Gubun);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfSlipString',    En_Coding(cxtJoinNum.Text));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfStatusString',  En_Coding(cxtJoinNum.Hint));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'InSabunString',     En_Coding(GT_USERIF.ID));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'GubunCodeString',   ss_Gubun);

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      Proc_JobAfterProc(True, False);

      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);

          tmFormClose.Tag := 99; // 화면 닫기 설정값.
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, False);
    end;

    btnCmdExit.Tag := 0;
    // 수정모드에서 프로그램 닫을때, Lock 해제설정 초기화 한다.
  except
    on e: exception do
    begin
      ls_TxLoad := 'JON01[Proc_AcceptLock]:' + e.Message;
//      btnBubinReq.Enabled := True;
      Screen.Cursor := crDefault;
    end;
  end;
end;

// 오더 일련번호를 받아 오더 수정정보를 조회 한다.  sTodayGubun:1(당일오더), 2:(과거오더)
procedure TFrm_JON01.Proc_ConfSlip_Select_New(sConfSlip, sTodayGubun: string);
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
  try
    ls_TxLoad := GTx_UnitXmlLoad('C033N4.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'ORDE0011');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfSlipString', En_Coding(sConfSlip)); // 오더일련번호
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'TodayGubunString', En_Coding(sTodayGubun)); // 1:A01_Today, 2:A01 여부

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      Proc_JobAfterProc(True, False);

      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);

          tmFormClose.Tag := 99; // 화면 닫기 설정값.
        end;
      end else
      begin
        GMessagebox(Format('오더 정보 조회 중 오류가 발생하였습니다.'#13#10'수정 창을 닫고 다시시도 바랍니다.', []), CDMSE);
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, False);
    end;

  except
    on e: exception do
    begin
      GMessagebox(Format('오더 정보 조회 중 오류가 발생하였습니다.'#13#10'수정 창을 닫고 다시시도 바랍니다.(E: %s)', [E.Message]), CDMSE);

      pnlJonMain.Enabled := True;
      Screen.Cursor := crDefault;

      Assert(False, E.Message);
    end;
  end;
end;

// 버튼 활성/비활성 처리.
procedure TFrm_JON01.Proc_BtnEnabled(bTF: boolean = True);
begin
  try
    if (Pos('조회', Self.Caption) > 0) then
    begin
      btnCmdJoin.Enabled := False; // 접수버튼
      btnCmdWait.Enabled := False; // 대기버튼
      btnCmdQuestion.Enabled := False; // 문의버튼
      btnCmdJoinCopy.Enabled := False; // 접수후복사
      btnCmdWaitCopy.Enabled := False; // 대기후복사
      btnCmdUpdSave.Enabled := bTF; // 수정
    end else
    begin
      btnCmdJoin.Enabled := bTF; // 접수버튼
      btnCmdWait.Enabled := bTF; // 대기버튼
      btnCmdQuestion.Enabled := bTF; // 문의버튼
      btnCmdJoinCopy.Enabled := bTF; // 접수후복사
      btnCmdWaitCopy.Enabled := bTF; // 대기후복사
      btnCmdUpdSave.Enabled := bTF; // 수정
    end;
  //-	btnCmdNoSms.Enabled := bTF; // 수신거부
    if cbbPayMethod.Text = '후불(카드)' then
    begin
      if btnCmdUpdSave.Visible then
      begin
        btnCmdJoin.Enabled := False;
        btnCmdWait.Enabled := False;
        btnCmdJoinCopy.Enabled := False;
        btnCmdWaitCopy.Enabled := False;
      end else
      begin
        btnCmdJoin.Enabled := bTF;
        btnCmdWait.Enabled := bTF;
        btnCmdJoinCopy.Enabled := bTF;
        btnCmdWaitCopy.Enabled := bTF;
      end;
    end;
  Except
    on e: exception do
    begin
      Log('Proc_BtnEnabled Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_BtnEnabled Error :' + E.Message);
    end;
  end;
end;

// 대표번호로 조회 후 결과 처리를 한다.
procedure TFrm_JON01.Proc_NumberInsert(rxxml: String);
var
  xdom: DomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
begin
  try
    xdom := CoDomDocument.Create;
    if not xdom.loadXML(rxxml) then
      Exit;

    if (0 < GetXmlRecordCount(rxxml)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
//        ls_Rcrd := GetTextSeperation('│', lst_Result.item[0].attributes.getNamedItem('Value').Text);

        cboBranch.Tag := 10;
        // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
        cboBranch.Properties.Items.Clear;

        // 본사코드   // 지사코드   // 지사명   // 대표번호
				if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
					Log('[Billit]JON01.Proc_NumberInsert : 변경전' + cboBranch.text , LOGDATAPATHFILE  );

        // 본사코드   // 지사코드   // 지사명   // 대표번호
        cboBranch.Properties.Items.Add(ls_Rcrd[1] + '[' + Trim(cxTSearchMainTel.Text) + '] ' + Copy(ls_Rcrd[3]
          + '     ', 1, 5) + Copy(ls_Rcrd[0] + '     ', 1, 5));
        cboBranch.ItemIndex := 0;

				if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
					Log('[Billit]JON01.Proc_NumberInsert : 변경후' + cboBranch.text , LOGDATAPATHFILE  );

        cboBranch.Tag := 0;
        // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
        sNowRate := ls_Rcrd[2]; // 현재 지사의 기본요금 설정액.
        curRate.Value := StrToFloatDef(ls_Rcrd[2], 0);
        OrgRate := curRate.Value;
        // 대표번호를 정상 조회 했으므로 초기화 한다.
        cxTSearchMainTel.Text := '';
      finally
        FreeAndNil(ls_Rcrd);
      end;
    end
    else
    begin
      // 메시지 내용 : 등록되지 않은 대표번호 입니다.
      GMessagebox(MSG421, CDMSI);
    end;
  except
    on e: exception do
    begin
      ShowMessage('[대표번호조회RESULT]예외처리:' + e.Message);
    end;
  end;
end;

// 고객전화번호 조회 후 결과 처리를 한다.
procedure TFrm_JON01.Proc_KeyNumberInsert(rxxml: String);
var
  xdom: DomDocument;
  lst_Result: IXMLDomNodeList;
	wk_br_Name, wk_Name, ls_Msg_Err, o_status, o_keyNumber, sCharge, o_InDate, ls_msg, sBr_Name, sBr_KeyNumber, sStatus, sTemp, ls_TxLoad: string;
  iBarIndex, iRCnt, i, j, jj, iBidx, iFIdx, jCnt, jjCnt : Integer;
  itotal, iEnd, iCancel: Integer;
  iGrade1, iGrade2, ACount: Integer;
  fcancelRate: double;
	sCustTel, sBrNo, sAccCenter: string;
  sBGroup : string;
	ls_Rcrd : TStringList;
	ia, UserMile : integer;
	// 전화번호2유무
	sTelse, sContent, sCurMileage, sMileage: string;
begin
	if (lcsActiveEdit = 'meoStartAreaCUT') or (lcsActiveEdit = 'meoEndAreaCUT') then lcsActiveEdit := 'meoStartArea';
	FHasTodayData := False;
  iFidx := Self.Tag; // 폼의 index를 읽는다.

  xdom := CoDomDocument.Create;
	if not xdom.loadXML(rxxml) then
	begin
    GMessagebox('[고객전화번호조회결과]XML전문 형식이 맞지 않습니다.' + #13#10
      + '다시한번 조회 하세요', CDMSI);
    Exit;
  end;

  ls_Msg_Err := GetXmlErrorCode(rxxml);

  wk_sabun := '';

	Try
		if ('0000' = ls_Msg_Err) then
		begin
			try
				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/OtherInfo');
				ls_msg := '';
				if lst_Result.length > 0 then
				begin
					for i := 0 to lst_Result.length - 1 do
					begin
						//Status="" KeyNumber="" InDate="" BrName="" Charge=""
						o_status := lst_Result.item[i].attributes.getNamedItem('Status').Text;
						if Trim(o_status) = '' then
						begin
							ls_msg := '';
							Continue;
						end;

						o_keyNumber := lst_Result.item[i].attributes.getNamedItem('KeyNumber').Text;

						o_InDate    := lst_Result.item[i].attributes.getNamedItem('InDate').Text;
						sBr_Name    := lst_Result.item[i].attributes.getNamedItem('BrName').Text;
						sCharge     := lst_Result.item[i].attributes.getNamedItem('Charge').Text;

						if not IsUseKeyNumber(o_keyNumber) then
							sCharge := '****';

						if o_InDate <> '' then
							o_InDate := copy(o_InDate, 9, 2) + ':' + copy(o_InDate, 11, 2) + ':' + copy(o_InDate, 13, 2);

						if o_status = 'B' then
							o_status := '1';
						case StrToIntDef(o_status, 99) of
							0: sStatus := '접수';
							1: sStatus := '배차';
							2: sStatus := '완료';
							3: sStatus := '강제';
							4: sStatus := '문의';
							5: sStatus := '대기';
							8: sStatus := '취소';
						end;
						sTemp := '요금:[' + sCharge + ']';
						ls_msg := ls_msg + #13#10 + '[' + sBr_Name + '(' + o_keyNumber + ')] ' + o_InDate + '초 [' + sStatus + '] ' + sTemp;
					end;

					if Trim(ls_msg) <> '' then
					begin
						ls_msg := '아래와 같이 이미 등록된 오더가 있습니다.' + #13#10 + ls_msg;

						MessageDlgPos(Trim(ls_msg), mtInformation, [mbOK], 0, Self.Left - Width, Self.Top);
					end;
				end;

				// 100510 - CID로그(메인/부 업체구분) 위해 LogSeq 저장 후 접수시 전달
				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/CidInfo');
				if lst_Result.length > 0 then
					locLogSeq := lst_Result.item[0].attributes.getNamedItem('LogSeq').Text;

				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Branch');
				locHDNO   := lst_Result.item[0].attributes.getNamedItem('HdNo').Text;
				locBRNO   := lst_Result.item[0].attributes.getNamedItem('BrNo').Text;
				sBr_Name  := lst_Result.item[0].attributes.getNamedItem('BrName').Text;
				// 2011.05.11 추가. CDS. 서버에서 받음.
				sBr_KeyNumber := lst_Result.item[0].attributes.getNamedItem('KeyNumber').Text;

        // [hjf-하드코딩] 2009.03.06 코리아(카드고객) 색상구분
				if (GS_PRJ_AREA = 'S') and (locBRNO = 'H849') then
        begin
          LblTop   .Color := clRed;       // 붉은색
          LblLeft  .Color := LblTop.Color;
          LblRigth .Color := LblTop.Color;
          LblBottom.Color := LblTop.Color;
          PnlTitle .Color := LblTop.Color;
          PnlWorkMemo.Color := LblTop.Color;
          PnlBtm.Color := LblTop.Color;
          PnlBox4.Color := LblTop.Color;
          Pnl_BubinV.Color := LblTop.Color;
				end else
				// [cds-하드코딩] 2011.10.11 코리아(카드고객) 색상구분 추가. 1577-5000.  신용카드 (1577-9482)
        if (GS_PRJ_AREA = 'S') and ( (locBRNO = 'G908') Or (locBRNO = 'G902') )  then
        begin
          LblTop   .Color := $00FE8769;   // 파란색
          LblLeft  .Color := LblTop.Color;
          LblRigth .Color := LblTop.Color;
          LblBottom.Color := LblTop.Color;
          PnlTitle .Color := LblTop.Color;
          PnlWorkMemo.Color := LblTop.Color;
          PnlBtm.Color := LblTop.Color;
          PnlBox4.Color := LblTop.Color;
          Pnl_BubinV.Color := LblTop.Color;
				end else
  			// [cds-하드코딩] 2012.10.09 코리아(02-2000-0000) 색상구분 추가. KHS
        if (GS_PRJ_AREA = 'S') and (locBRNO = 'Q908') then
        begin
          LblTop   .Color := clGreen;   // 녹색
          LblLeft  .Color := LblTop.Color;
          LblRigth .Color := LblTop.Color;
          LblBottom.Color := LblTop.Color;
          PnlTitle .Color := LblTop.Color;
          PnlWorkMemo.Color := LblTop.Color;
          PnlBtm.Color := LblTop.Color;
          PnlBox4.Color := LblTop.Color;
          Pnl_BubinV.Color := LblTop.Color;
				end else
  			// [cds-하드코딩] 2012.10.09 법인콜 색상구분 추가.
        if (GS_PRJ_AREA = 'S') and (locBRNO = 'G898') then
        begin
          LblTop   .Color := $0014AACF;   // 골드
          LblLeft  .Color := LblTop.Color;
          LblRigth .Color := LblTop.Color;
          LblBottom.Color := LblTop.Color;
          PnlTitle .Color := LblTop.Color;
          PnlWorkMemo.Color := LblTop.Color;
          PnlBtm.Color := LblTop.Color;
          PnlBox4.Color := LblTop.Color;
          Pnl_BubinV.Color := LblTop.Color;
  			end else
        begin
          LblTop   .Color := $00E0EDEA;   // 기본색
          LblLeft  .Color := LblTop.Color;
          LblRigth .Color := LblTop.Color;
          LblBottom.Color := LblTop.Color;
          PnlTitle .Color := LblTop.Color;
          PnlWorkMemo.Color := LblTop.Color;
          PnlBtm.Color := LblTop.Color;
          PnlBox4.Color := LblTop.Color;
          Pnl_BubinV.Color := LblTop.Color;
        end;

				if (locCustHP_MainNum_Search = '') and (cxLblCIDUseFlg.Hint <> 'CID') then
				begin // CID 조회인지 설정을 한다.
					if Proc_BrNoListIdxFind(locBRNO, sBr_KeyNumber) = False then
						begin
							ShowMessage('조회 한 지사코드가 콜센터에 이관되지 않았거나 없는지사 또는 대표번호 입니다.' + #13#10 +
													'[ 지사코드:' + locBRNO + ', 대표번호:' + sBr_KeyNumber + ' ] 확인 하세요!' );
							Exit;
						end;
				end else
				begin
					// CID 조회 임.
					// 지사리스트에서 대표번호, 지사코드 index 찾기 및 설정.
					if Proc_BrNoListIdxFind(locBRNO, locKNum) = False then
					begin
						cboBranch.Tag := 10;
						// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
						cboBranch.Properties.Items.Clear; // 지사리스트 초기화.
						cboBranch.Properties.Items.Add(sBr_Name + '[' + locKNum + '] ' + Copy(locHDNO + '     ', 1, 5) + '.' + Copy(locBRNO + '     ', 1, 5));
								// 본사코드   // 지사코드   // 지사명   // 대표번호
						cboBranch.ItemIndex := 0;
						cboBranch.Tag := 0;
						// 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
					end;
				end;
				// 대표번호 별 기본 설정요금을 적용 한다.
        if Not pbISStartEndXY then
        begin
  				sNowRate := lst_Result.item[0].attributes.getNamedItem('BaseCharge').Text;
	  			curRate.Value := StrToIntDef(sNowRate, 0);
		  		OrgRate := curRate.Value;
			  	pnl_Charge.Caption := Format('대표번호 기본요금(%s) 강제 적용', [StrToMoney(sNowRate)]);
//          Lbl_Distance.Caption := '';
        end;

				Try
					// 고객 조회 전화번호 저장.
					// DNIS 또는 고객으로만 조회 일때,,  전화번호만 남도록 수정함. 2011.05.13 CDS. 추가.
					if Pos('*',cxtCuTel.Text) > 0 then begin
						sCustTel := Copy(cxtCuTel.Text, Pos('*',cxtCuTel.Text) +1 , length(cxtCuTel.Text));
						sCustTel := StringReplace(sCustTel, '+', '', [rfReplaceAll]);
						gsCuTelHint   := Copy(cxtCuTel.Text, 1, Pos('*',cxtCuTel.Text) -1);
						cxtCuTel.Text := gsCuTelHint;
						if Pos('+',cxtCuTel.Text) > 0 then begin
							gsCuTelHint   := StringReplace(cxtCuTel.Text, '+', '', [rfReplaceAll]);
							cxtCuTel.Text := gsCuTelHint;
						end;
						// DNIS 대표번호 찾기 정보창.
						shrDNIS_DSP.Visible := True;
						lblDNISInfo.Caption := '***** DNIS 대표번호 / 지사 찾기 *****' + #13#10 +
																	 'DNIS      : ' + sCustTel + #13#10 +
																	 '대표번호 : ' + sBr_KeyNumber + ' (' + locBRNO + '.' + sBr_Name + ')' + #13#10 +
																	 '고객전화 : ' + gsCuTelHint;
					end else
          if Pos('+',cxtCuTel.Text) > 0 then
          begin
						gsCuTelHint   := StringReplace(cxtCuTel.Text, '+', '', [rfReplaceAll]);
						cxtCuTel.Text := gsCuTelHint;
						if Pos('*',cxtCuTel.Text) > 0 then
            begin
							gsCuTelHint   := Copy(cxtCuTel.Text, 1, Pos('*',cxtCuTel.Text) -1);
							cxtCuTel.Text := gsCuTelHint;
							// DNIS 대표번호 찾기 정보창.
							shrDNIS_DSP.Visible := True;
							lblDNISInfo.Caption := '***** DNIS 대표번호 / 지사 찾기 *****' + #13#10 +
																		 'DNIS      : ' + sCustTel + #13#10 +
																		 '대표번호 : ' + sBr_KeyNumber + ' (' + locBRNO + '.' + sBr_Name + ')' + #13#10 +
																		 '고객전화 : ' + gsCuTelHint;
						end;
					end else
          begin
						gsCuTelHint := cxtCuTel.Text;
					end;
				except
					on e: exception do
					begin
						ls_TxLoad := 'Jon01[고객 조회 전화번호 저장오류]:' + e.Message;
						Assert(False, E.Message);
						GMessagebox(PChar(ls_TxLoad), CDMSE);
						Screen.Cursor := crDefault;
					end;
				end;

        Log('Line 9628', LOGDATAPATHFILE);

				// 지사별 멘트 구하기..
				if cxLblCIDUseFlg.Hint = 'CID' then
				begin // CID 조회인지 설정을 한다.
					lblBrNoMent.Caption := Func_brtel_memo(locBRNO, locKNum);
					if lblBrNoMent.Caption <> '' then
					begin
						pnlBrNoMent.Visible := True;
						tmMent.Interval := 5000;
						tmMent.Enabled := True;
					end	else
					begin
						tmMent.Enabled := False;
						pnlBrNoMent.Visible := False;
					end;
				end;
				//-------------------------------------------------------------------------------------------
				//      전화번호로 고객, 기사 체크( 1 : 기사, 2 : 고객 )
				//-------------------------------------------------------------------------------------------
				sCust_Gubun := inttostr(StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Gubun').Text, 2));
				if StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Gubun').Text, 2) = 2 then
				begin
          Log('Line 9649', LOGDATAPATHFILE);
					Try
            frm_Main.Proc_CidLog(99, '고객'); // 로그 기록.
						Frm_Main.Frm_JON03[Jon03Tag].pnlBubin.Visible := False;
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Customer');
						with lst_Result.item[0].attributes do
						begin
							edtCuName.Text := getNamedItem('Name').Text;

							sContent := StringReplace(getNamedItem('Info').Text, '|', '¶',  [rfReplaceAll]);
              if Trim(sContent) <> '' then
              begin
           			ls_Rcrd := TStringList.Create;
                try
            			GetTextSeperationEx2('¶', sContent, ls_Rcrd);
            			for ia := 0 to ls_Rcrd.Count - 1 do
            			begin
                    if ia = 0 then
                      meoCuCCMemo.Text := ls_Rcrd[ia]
                    else
                      meoCuCCMemo.Text := meoCuCCMemo.Text + #13#10 + ls_Rcrd[ia];
            			end;
                finally
                  FreeAndNil(ls_Rcrd);
                end;
              end;

							sTemp := getNamedItem('CbCuMemo').Text;
							if sTemp <> '' then
							begin
					      meoCuCCMemo.Width := 136;
			       		mmoCbMemo.Visible := True;
      					mmoCbMemo.Text := sTemp;
							end;

							sContent := StringReplace(getNamedItem('PdaInfo').Text, '|', '¶',  [rfReplaceAll]);
              if Trim(sContent) <> '' then
              begin
           			ls_Rcrd := TStringList.Create;
                try
            			GetTextSeperationEx2('¶', sContent, ls_Rcrd);
            			for ia := 0 to ls_Rcrd.Count - 1 do
            			begin
                    if ia = 0 then
                      meoCuWorMemo.Text := ls_Rcrd[ia]
                    else
                      meoCuWorMemo.Text := meoCuWorMemo.Text + #13#10 + ls_Rcrd[ia];
            			end;
                finally
                  FreeAndNil(ls_Rcrd);
                end;
              end;

							iBarIndex := StrtoIntDef(getNamedItem('CuType').Text, 0);

							if getNamedItem('SMS').Text = 'n' then BtnCuSmsNo.Down := True else
              if getNamedItem('SMS').Text = 'y' then BtnCuSmsNo.Down := False;

							lblCuMile.Caption      := getNamedItem('CurMlg').Text;
							lblCuMileUnit.Caption  := getNamedItem('PrizeMlg').Text;
							//지사설정 지금 단위
							lblCuMileCnt.Caption   := getNamedItem('PrizeCnt').Text;

              sProdName := getNamedItem('Prize').Text;
							SetMileColorChange;

							// hjf-고객상황실설정(접수정보 조회)
							if Assigned(getNamedItem('BrTelYN')) then
								CustBrTelYN := getNamedItem('BrTelYN').text;

							if (CustBrTelYN = 'y') then	BtnCenterMng.Down := True else
              if (CustBrTelYN = '') and (iBarIndex = 1) and (GB_SHOPTYPE_CALLCENTER = 1) then	BtnCenterMng.Down := True else
              if (CustBrTelYN = 'n') then	BtnCenterMng.Down := False;

							SetPayMethod(PAY_METHOD_MONEY); // 현금

							// 법인코드
							cxtCuBubin.Hint := TRim(getNamedItem('BGroup').Text);
							sBGroup := TRim(getNamedItem('BGroup').Text);
							if (GS_PRJ_AREA = 'S') and (sBGroup <> '') and (locBRNO <> 'G898') and (locBRNO <> 'Q908') and (locBRNO <> 'H849') then
              begin
                LblTop   .Color := $00FE8769;   // 파란색
                LblLeft  .Color := LblTop.Color;
                LblRigth .Color := LblTop.Color;
                LblBottom.Color := LblTop.Color;
                PnlTitle .Color := LblTop.Color;
                PnlWorkMemo.Color := LblTop.Color;
                PnlBtm.Color := LblTop.Color;
                PnlBox4.Color := LblTop.Color;
                Pnl_BubinV.Color := LblTop.Color;
              end;
						end;

						// + ',' + ed_MaddBrch.Text;
						if cxtCuBubin.Hint <> '' then
						begin
							iBidx := GT_BUBIN_INFO.cbcode.IndexOf(Trim(cxtCuBubin.Hint) + ',' + locBRNO);
							if iBidx > -1 then
							begin
								// 법인정보[법인명 + 부서명]
								cxtCuBubin.Text := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc[iBidx]), 1, 60)) + ' | ' + Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc[iBidx]), 61, 60));
								lblCuBubinName.Caption := '법인고객 [ ' + Trim(cxtCuBubin.Text) + ' ]';
								iend := StrToIntDef(Copy(GT_BUBIN_INFO.cbEtc[iBidx], 153, 1), 1);

								if (iend = 0) and (gsJON01CreditMoneyYN <> 'FALSE') then
									SetPayMethod(PAY_METHOD_TRUST)  // 외상
								else if (iend = 2) and (gsJON01CreditMoneyYN <> 'FALSE') then
									SetPayMethod(PAY_METHOD_POST_NML)  // 후불
								else
									SetPayMethod(PAY_METHOD_MONEY); // 현금
							end else
							begin
								if Length(Trim(cxtCuTel.Text)) < 3 then begin
									cxtCallTelNum.Text := StringReplace(cxtCallTelNum.Text, '-', '', [rfReplaceAll]);
									cxtCuTel.Text      := cxtCallTelNum.Text;
								end;
							end;
						end;

						if AUseMileage then
						begin
							SetPayMethod(PAY_METHOD_POST_MILE); // 부산5천콜 후불마일 강제셋팅
							if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
							begin
								UserMile := StrToIntDef(lblCuMile.Caption, 0);
								edtPostPay.Value := IfThen(UserMile >= curRate.Value, curRate.Value, 10000);
							end	else
							begin
                if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

								if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트2K 20140221 KHS
									edtPostPay.Value := 2000
								else
								if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트3K 20141007 KHS
									edtPostPay.Value := 3000
								else
									edtPostPay.Value := curRate.Value;
							end;

							cbbPostTime.ItemIndex := 1;
							AppendPostDesc;
						end;

            CBCuGB.Hint := 'Clear';
						if (iBarIndex = 0) or (iBarIndex = 4) then
						begin
							CbCuGb.ItemIndex := 0;
              CbCuGb.Hint := '1';
							// 0:개인, 4:불량 둘다 일반으로 처리(불량코드는 사용안함)
						end	else
            if iBarIndex = 1 then
						begin
							CbCuGb.ItemIndex := 1;
              CbCuGb.Hint := '2';
						end else
            if iBarIndex = 3 then
						begin
							CbCuGb.ItemIndex := 2;
              CbCuGb.Hint := '3';
						end	else
						begin
							CbCuGb.ItemIndex := 0;
              CbCuGb.Hint := '1';
						end;
            CBCuGB.Hint := '';

						// 고객수정 버튼 활성화.
						lcsCu_seq := lst_Result.item[0].attributes.getNamedItem('CuSeq').Text;
						if lcsCu_seq <> '' then
						begin
							cxBtnCuUpdate.Enabled := True;
							cxBtnCuDel.Enabled := True;
						end else
						begin
							cxBtnCuUpdate.Enabled := False;
							cxBtnCuDel.Enabled := False;
						end;
						sRet := 0; //고객정보에 출발지 내용이 있는지에대한 구분값
						eRet := 0; //고객정보에 도착지 내용이 있는지에대한 구분값

            if Not pbISStartEndXY then
            begin
  						// 20120805 좌표 오류 체크 LYB
  						gJONStaChkXY.Area1 := lst_Result.item[0].attributes.getNamedItem('Area').Text;
  						gJONStaChkXY.Area2 := lst_Result.item[0].attributes.getNamedItem('Area2').Text;
  						gJONStaChkXY.Area3 := lst_Result.item[0].attributes.getNamedItem('Area3').Text;
  						gJONStaChkXY.Area4 := lst_Result.item[0].attributes.getNamedItem('Area4').Text;
  						gJONStaChkXY.Area5 := lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3;
  						gJONStaChkXY.X := lst_Result.item[0].attributes.getNamedItem('MapX').Text;
  						gJONStaChkXY.Y := lst_Result.item[0].attributes.getNamedItem('MapY').Text;
  						gJONStaChkXY.GUIDE_X := lst_Result.item[0].attributes.getNamedItem('MapX').Text;
  						gJONStaChkXY.GUIDE_Y := lst_Result.item[0].attributes.getNamedItem('MapY').Text;
  						gJONStaChkXY.Gubun := 'C';

  						Try
  							// 출발지 정보
  							lcsSta1 := lst_Result.item[0].attributes.getNamedItem('Area').Text;
  							lcsSta2 := lst_Result.item[0].attributes.getNamedItem('Area2').Text;
  							lcsSta3 := lst_Result.item[0].attributes.getNamedItem('Area3').Text;
  							cxtStartAreaDetail.Text := lst_Result.item[0].attributes.getNamedItem('Area4').Text;
  							cxtStartAreaDetail.Hint := lst_Result.item[0].attributes.getNamedItem('Area5').Text;

  							if (copy(lst_Result.item[0].attributes.getNamedItem('MapX').Text,1,1) <> '0') and
  								 (lst_Result.item[0].attributes.getNamedItem('MapX').Text <> '')            then
  								cxtStartXval.Text := '0' + lst_Result.item[0].attributes.getNamedItem('MapX').Text
  							else
  								cxtStartXval.Text := lst_Result.item[0].attributes.getNamedItem('MapX').Text;
  							cxtStartYval.Text := lst_Result.item[0].attributes.getNamedItem('MapY').Text;

                cxtStartGUIDEXval.Text := cxtStartXval.Text;
                cxtStartGUIDEYval.Text := cxtStartYval.Text;

  							lblStartAreaName.Text := lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3;

  							// 출발지 세부지명
  							if Trim(cxtStartAreaDetail.Hint) <> '' then
  								meoStartArea.Text := cxtStartAreaDetail.Hint
  							else if Trim(cxtStartAreaDetail.Text) <> '' then
  								meoStartArea.Text := cxtStartAreaDetail.Text
  							else if Trim(lcsSta3) <> '' then
  								meoStartArea.Text := lcsSta3;

                MarkAllWords(lblStartAreaName, UpperCase(meoStartArea.Text), clRed, [fsBold]);
                MarkAllWords(cxtStartAreaDetail, UpperCase(meoStartArea.Text), clRed, [fsBold]);

  							//고객정보에 출발지 내용이 있는지에대한 구분값
  							if Trim(meoStartArea.Text) = '' then
  							begin
  								sRet := 0;
  							end	else
  							begin
  								sRet := 1;
  								GS_Grid_DEP := 'C'; //고객정보에 출발지 내용
  								changeLog('S'+ 'C' + lst_Result.item[0].attributes.getNamedItem('MapX').Text + ':' + lst_Result.item[0].attributes.getNamedItem('MapY').Text, false);        //x,y좌표 변경시 로그생성 2012.08.08 KHS
  							end;
  							// 도착지 정보
  							lcsEnd1 := lst_Result.item[0].attributes.getNamedItem('EdArea').Text;
  							lcsEnd2 := lst_Result.item[0].attributes.getNamedItem('EdArea2').Text;
  							lcsEnd3 := lst_Result.item[0].attributes.getNamedItem('EdArea3').Text;
  							cxtEndAreaDetail.Caption := lst_Result.item[0].attributes.getNamedItem('EdArea4').Text;
  							cxtEndAreaDetail.Hint := lst_Result.item[0].attributes.getNamedItem('EdArea5').Text;

  							gJONEndChkXY.X := lst_Result.item[0].attributes.getNamedItem('DestX').Text;
  							gJONEndChkXY.Y := lst_Result.item[0].attributes.getNamedItem('DestY').Text;

  							gJONEndChkXY.GUIDE_X := lst_Result.item[0].attributes.getNamedItem('DestX').Text;
  							gJONEndChkXY.GUIDE_Y := lst_Result.item[0].attributes.getNamedItem('DestY').Text;

  							if (copy(lst_Result.item[0].attributes.getNamedItem('DestX').Text,1,1) <> '0') and
  								 (lst_Result.item[0].attributes.getNamedItem('DestX').Text <> '')            then
  								cxtEndXval.Text := '0' + lst_Result.item[0].attributes.getNamedItem('DestX').Text
  							else
  								cxtEndXval.Text := lst_Result.item[0].attributes.getNamedItem('DestX').Text;
  							cxtEndYval.Text := lst_Result.item[0].attributes.getNamedItem('DestY').Text;

  							cxtEndGUIDEXval.Text :=	cxtEndXval.Text;
                cxtEndGUIDEYval.Text := cxtEndYval.Text;

  							lblEndAreaName.Caption := lcsEnd1 + ' ' + lcsEnd2 + ' ' + lcsEnd3;

                cxReEndArea.Text := lblEndAreaName.Caption + ' ' + cxtEndAreaDetail.Caption;

  							// 도착지 세부지명
  							if Trim(cxtEndAreaDetail.Hint) <> '' then
  								meoEndArea.Text := cxtEndAreaDetail.Hint
  							else
  								if Trim(lcsEnd3) <> '' then
  								meoEndArea.Text := lcsEnd3;

                MarkAllWords(cxReEndArea, UpperCase(meoEndArea.Text), clRed, [fsBold]);

  							//고객정보에 도착지 내용이 있는지에대한 구분값
  							if Trim(meoEndArea.Text) = '' then eRet := 0
  							else eRet := 1;
  							if Trim(meoEndArea.Text) = '' then
  							begin
  								eRet := 0;
  							end	else
  							begin
  								eRet := 1;
  								GS_Grid_DES := 'C'; //고객정보에 도착지 내용
  								changeLog('E'+ 'C' + lst_Result.item[0].attributes.getNamedItem('DestX').Text + ':' + lst_Result.item[0].attributes.getNamedItem('DestY').Text, false);        //x,y좌표 변경시 로그생성 2012.08.08 KHS
  							end;
  						except
  							on e: exception do
  							begin
  								ls_TxLoad := 'Jon01[출발지 정보 조회오류]:' + e.Message;
  								Assert(False, E.Message);
  								GMessagebox(PChar(ls_TxLoad), CDMSE);
  								Screen.Cursor := crDefault;
  							end;
  						end;
            end;
						//-------------------------------------------------------------------------------------------
						//      과거내역을 가지고 취소율, 지사별 설정값에 의한 고객등급 결정
						//-------------------------------------------------------------------------------------------
						Try
							iend := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('EndCnt').Text, 0);
							iCancel := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('CancelCnt').Text, 0);
							iTotal := iEnd + iCancel;
							lblCuCntTotal.Caption := IntToStr(iTotal);
              lblCoCntTotal.Caption := IntToStr(iend);
							if (iTotal) > 0 then
							begin
								fcancelRate := ((iCancel / (iend + iCancel)) * 100);
								lblCuCancelR.Caption := IntToStr(Round(fCancelRate)) + '%';
							end	else
							begin
								lblCuCancelR.Caption := '0%';
							end;
						except
							on e: exception do
							begin
								ls_TxLoad := 'Jon01[과거내역]:' + e.Message;
								Assert(False, E.Message);
								GMessagebox(PChar(ls_TxLoad), CDMSE);
								Screen.Cursor := crDefault;
							end;
						end;

						// 고객등급사용구분[0:자동등급, 1:직접설정]
						iGrade1 := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Grade1').Text, 5);
						iGrade2 := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Grade2').Text, 15);

						if iEnd >= iGrade1 then
						begin
							// frm_Jon03.frmJON011 폼의 고객 자동등급별 라벨 칼라를 변경해 준다.
							Proc_SetFormColor_2(0);
						end else
            if iEnd >= iGrade2 then
						begin
							// frm_Jon03.frmJON011 폼의 고객 자동등급별 라벨 칼라를 변경해 준다.
							Proc_SetFormColor_2(1);
						end else
						begin
							// frm_Jon03.frmJON011 폼의 고객 자동등급별 라벨 칼라를 변경해 준다.
							Proc_SetFormColor_2(2);
						end;

						SetCustLevelSeq(lst_Result.item[0].attributes.getNamedItem('LevelCD').Text);

						// 고객 구분에 따른 색상 표시
						if (iBarIndex = 0) or (iBarIndex = 2) then
							Proc_SetFormColor_3(0)
						else if iBarIndex = 1 then
							Proc_SetFormColor_3(1)
						else if iBarIndex = 3 then
							Proc_SetFormColor_3(3);

						//2013.03.30 khs
						sAppCode        := lst_Result.item[0].attributes.getNamedItem('AppCode').Text;
						sAppLastRegDate := lst_Result.item[0].attributes.getNamedItem('AppLastRegDate').Text;
						sAppLastDelDate := lst_Result.item[0].attributes.getNamedItem('AppLastDelDate').Text;
						sAppLastFinishDate := lst_Result.item[0].attributes.getNamedItem('AppLastFinishDate').Text;
						sAppCuArea      := lst_Result.item[0].attributes.getNamedItem('AppCuArea').Text;
						sAppTermModel   := lst_Result.item[0].attributes.getNamedItem('AppTermModel').Text;
						sAppTermOS      := lst_Result.item[0].attributes.getNamedItem('AppTermOS').Text;
						if lst_Result.item[0].attributes.getNamedItem('AppDelYn').Text = 'y' then sAppDelYn := '어플삭제'
						                                                                     else sAppDelYn := '어플사용';

						if sAppCode = '' then btnCustAppinfo.Enabled := False
                             else btnCustAppinfo.Enabled := True;
						SetCustAppInfo(
								sAppCode
							, sAppLastRegDate
							, sAppLastDelDate
							, sAppLastFinishDate
							, sAppCuArea
							, sAppTermModel
							, sAppTermOS
							, sAppDelYn
						);

						//================================= 고객정보 Display End. =====================================
					except
						on e: exception do
						begin
							ls_TxLoad := 'Jon01[고객 조회오류]:' + e.Message;
							Assert(False, E.Message);
							GMessagebox(PChar(ls_TxLoad), CDMSE);
							Screen.Cursor := crDefault;
						end;
					end;
				end	else
        if StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Gubun').Text, 2) = 1 then     //기사로 검색
				begin
					frm_Main.Proc_CidLog(99, '기사'); // 로그 기록.
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Driver');
					wk_br_Name := lst_Result.item[0].attributes.getNamedItem('BrName').Text
						+ '(' + lst_Result.item[0].attributes.getNamedItem('BrNo').Text + ')';
					wk_sabun := lst_Result.item[0].attributes.getNamedItem('Sabun').Text;
					wk_Name := lst_Result.item[0].attributes.getNamedItem('TermInfo').text;
					wk_Name := lst_Result.item[0].attributes.getNamedItem('Name').Text;

					Frm_JON012.sFinishCnt := lst_Result.item[0].attributes.getNamedItem('FinishCnt').text;
					Frm_JON012.sCancelCnt := lst_Result.item[0].attributes.getNamedItem('CancelCnt').text;
					Frm_JON012.sPhone_info := lst_Result.item[0].attributes.getNamedItem('TermInfo').text;

					// 조회기사 사번, 기사지사코드 저장.
					locWkSabun := wk_sabun; // 기사사번
					locWkBrNo := lst_Result.item[0].attributes.getNamedItem('BrNo').Text;
					// 지사코드
//-					cxLblSeaWkSabun.Hint := wk_sabun; // 기사사번
					cxtWorkerNm.Text := wk_Name;

					Proc_SetFormColor_3(9); // 기사 지정칼라로 바 세팅한다.
				end else
        if StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Gubun').Text, 2) = 0 then     //전체 20130519 KHS
				begin
          Log('Line 10031', LOGDATAPATHFILE);
					Try
						frm_Main.Proc_CidLog(99, '기사'); // 로그 기록.      0일때는 무조건 기사로 등록
					  Frm_Main.Frm_JON03[Jon03Tag].pnlBubin.Visible := False;

						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Customer');
						with lst_Result.item[0].attributes do
						begin
							edtCuName.Text := getNamedItem('Name').Text;

							sContent := StringReplace(lst_Result.item[0].attributes.getNamedItem('Info').Text, '|', '¶', [rfReplaceAll]);
              if Trim(sContent) <> '' then
              begin
           			ls_Rcrd := TStringList.Create;
                try
            			GetTextSeperationEx2('¶', sContent, ls_Rcrd);
            			for ia := 0 to ls_Rcrd.Count - 1 do
            			begin
                    if ia = 0 then
                      meoCuCCMemo.Text := ls_Rcrd[ia]
                    else
                      meoCuCCMemo.Text := meoCuCCMemo.Text + #13#10 + ls_Rcrd[ia];
            			end;
                finally
                  FreeAndNil(ls_Rcrd);
                end;
              end;

							sTemp := getNamedItem('CbCuMemo').Text;
							if sTemp <> '' then
							begin
					      meoCuCCMemo.Width := 138;
			       		mmoCbMemo.Visible := True;
      					mmoCbMemo.Text := sTemp;
							end;

							sContent := StringReplace(lst_Result.item[0].attributes.getNamedItem('PdaInfo').Text, '|', '¶', [rfReplaceAll]);
              if Trim(sContent) <> '' then
              begin
           			ls_Rcrd := TStringList.Create;
                try
            			GetTextSeperationEx2('¶', sContent, ls_Rcrd);
            			for ia := 0 to ls_Rcrd.Count - 1 do
            			begin
                    if ia = 0 then
                      meoCuWorMemo.Text := ls_Rcrd[ia]
                    else
                      meoCuWorMemo.Text := meoCuWorMemo.Text + #13#10 + ls_Rcrd[ia];
            			end;
                finally
                  FreeAndNil(ls_Rcrd);
                end;
              end;

							iBarIndex := StrtoIntDef(getNamedItem('CuType').Text, 0);

							if getNamedItem('SMS').Text = 'n' then BtnCuSmsNo.Down := True else
              if getNamedItem('SMS').Text = 'y' then BtnCuSmsNo.Down := False;

							lblCuMile.Caption      := getNamedItem('CurMlg').Text;
							lblCuMileUnit.Caption  := getNamedItem('PrizeMlg').Text;
							//지사설정 지금 단위
							lblCuMileCnt.Caption   := getNamedItem('PrizeCnt').Text;
              sProdName := getNamedItem('Prize').Text;
							SetMileColorChange;

							// hjf-고객상황실설정(접수정보 조회)
							if Assigned(getNamedItem('BrTelYN')) then
								CustBrTelYN := getNamedItem('BrTelYN').text;

							if (CustBrTelYN = 'y') then	BtnCenterMng.Down := True	else
              if (CustBrTelYN = '') and (iBarIndex = 1) and (GB_SHOPTYPE_CALLCENTER = 1) then BtnCenterMng.Down := True	else
              if (CustBrTelYN = 'n') then	BtnCenterMng.Down := False;

							SetPayMethod(PAY_METHOD_MONEY); // 현금

							// 법인코드
							cxtCuBubin.Hint := TRim(getNamedItem('BGroup').Text);
							sBGroup := TRim(getNamedItem('BGroup').Text);
							if (GS_PRJ_AREA = 'S') and (sBGroup <> '') and (locBRNO <> 'G898') and (locBRNO <> 'Q908') and (locBRNO <> 'H849') then
              begin
                LblTop   .Color := $00FE8769;   // 파란색
                LblLeft  .Color := LblTop.Color;
                LblRigth .Color := LblTop.Color;
                LblBottom.Color := LblTop.Color;
                PnlTitle .Color := LblTop.Color;
                PnlWorkMemo.Color := LblTop.Color;
                PnlBtm.Color := LblTop.Color;
                PnlBox4.Color := LblTop.Color;
                Pnl_BubinV.Color := LblTop.Color;
              end;
						end;

						// + ',' + ed_MaddBrch.Text;
						if cxtCuBubin.Hint <> '' then
						begin
							iBidx := GT_BUBIN_INFO.cbcode.IndexOf(Trim(cxtCuBubin.Hint) + ',' + locBRNO);
							if iBidx > -1 then
							begin
								// 법인정보[법인명 + 부서명]
								cxtCuBubin.Text := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc[iBidx]), 1, 60)) + ' | ' + Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc[iBidx]), 61, 60));
								lblCuBubinName.Caption := '법인고객 [ ' + Trim(cxtCuBubin.Text) + ' ]';
								iend := StrToIntDef(Copy(GT_BUBIN_INFO.cbEtc[iBidx], 153, 1), 1);

								if (iend = 0) and (gsJON01CreditMoneyYN <> 'FALSE') then
									SetPayMethod(PAY_METHOD_TRUST)  // 외상
								else if (iend = 2) and (gsJON01CreditMoneyYN <> 'FALSE') then
									SetPayMethod(PAY_METHOD_POST_NML)  // 후불
								else
									SetPayMethod(PAY_METHOD_MONEY); // 현금
							end	else
							begin
								if Length(Trim(cxtCuTel.Text)) < 3 then begin
									cxtCallTelNum.Text := StringReplace(cxtCallTelNum.Text, '-', '', [rfReplaceAll]);
									cxtCuTel.Text      := cxtCallTelNum.Text;
								end;
							end;
						end;

						if AUseMileage then
						begin
							SetPayMethod(PAY_METHOD_POST_MILE); // 부산5천콜 후불마일 강제셋팅
							if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
							begin
								UserMile := StrToIntDef(lblCuMile.Caption, 0);
								edtPostPay.Value := IfThen(UserMile >= curRate.Value, curRate.Value, 10000);
							end	else
							begin
                if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;
								if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트2K 20140221 KHS
									edtPostPay.Value := 2000
								else
								if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트3K 20141007 KHS
									edtPostPay.Value := 3000
								else
									edtPostPay.Value := curRate.Value;
							end;
							cbbPostTime.ItemIndex := 1;
							AppendPostDesc;
						end;

            CBCuGB.Hint := 'Clear';
						if (iBarIndex = 0) or (iBarIndex = 4) then
						begin
							CbCuGb.ItemIndex := 0;
              CbCuGb.Hint := '1';
							// 0:개인, 4:불량 둘다 일반으로 처리(불량코드는 사용안함)
						end	else
            if iBarIndex = 1 then
						begin
							CbCuGb.ItemIndex := 1;
              CbCuGb.Hint := '2';
						end else
            if iBarIndex = 3 then
						begin
							CbCuGb.ItemIndex := 2;
              CbCuGb.Hint := '3';
						end	else
						begin
							CbCuGb.ItemIndex := 0;
              CbCuGb.Hint := '1';
						end;
            CBCuGB.Hint := '';

						// 고객수정 버튼 활성화.
						lcsCu_seq := lst_Result.item[0].attributes.getNamedItem('CuSeq').Text;
						if lcsCu_seq <> '' then
						begin
							cxBtnCuUpdate.Enabled := True;
							cxBtnCuDel.Enabled := True;
						end	else
						begin
							cxBtnCuUpdate.Enabled := False;
							cxBtnCuDel.Enabled := False;
						end;
						sRet := 0; //고객정보에 출발지 내용이 있는지에대한 구분값
						eRet := 0; //고객정보에 도착지 내용이 있는지에대한 구분값

            if Not pbISStartEndXY then  // 출발지/도착지에 자료가 있는지 여부 체크 후 없으면 표시  20130724  LYB
            begin
  						// 20120805 좌표 오류 체크 LYB
  						gJONStaChkXY.Area1 := lst_Result.item[0].attributes.getNamedItem('Area').Text;
  						gJONStaChkXY.Area2 := lst_Result.item[0].attributes.getNamedItem('Area2').Text;
  						gJONStaChkXY.Area3 := lst_Result.item[0].attributes.getNamedItem('Area3').Text;
  						gJONStaChkXY.Area4 := lst_Result.item[0].attributes.getNamedItem('Area4').Text;
  						gJONStaChkXY.Area5 := lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3;
  						gJONStaChkXY.X := lst_Result.item[0].attributes.getNamedItem('MapX').Text;
  						gJONStaChkXY.Y := lst_Result.item[0].attributes.getNamedItem('MapY').Text;
  						gJONStaChkXY.GUIDE_X := lst_Result.item[0].attributes.getNamedItem('MapX').Text;
  						gJONStaChkXY.GUIDE_Y := lst_Result.item[0].attributes.getNamedItem('MapY').Text;
  						gJONStaChkXY.Gubun := 'C';

  						Try
  							// 출발지 정보
  							lcsSta1 := lst_Result.item[0].attributes.getNamedItem('Area').Text;
  							lcsSta2 := lst_Result.item[0].attributes.getNamedItem('Area2').Text;
  							lcsSta3 := lst_Result.item[0].attributes.getNamedItem('Area3').Text;
  							cxtStartAreaDetail.Text := lst_Result.item[0].attributes.getNamedItem('Area4').Text;
  							cxtStartAreaDetail.Hint := lst_Result.item[0].attributes.getNamedItem('Area5').Text;

  							if (copy(lst_Result.item[0].attributes.getNamedItem('MapX').Text,1,1) <> '0') and
  								 (lst_Result.item[0].attributes.getNamedItem('MapX').Text <> '')            then
  								cxtStartXval.Text := '0' + lst_Result.item[0].attributes.getNamedItem('MapX').Text
  							else
  								cxtStartXval.Text := lst_Result.item[0].attributes.getNamedItem('MapX').Text;
  							cxtStartYval.Text := lst_Result.item[0].attributes.getNamedItem('MapY').Text;

                cxtStartGUIDEXval.Text := cxtStartXval.Text;
                cxtStartGUIDEYval.Text := cxtStartYval.Text;

  							lblStartAreaName.Text := lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3;

  							// 출발지 세부지명
  							if Trim(cxtStartAreaDetail.Hint) <> '' then
  								meoStartArea.Text := cxtStartAreaDetail.Hint
  							else if Trim(cxtStartAreaDetail.Text) <> '' then
  								meoStartArea.Text := cxtStartAreaDetail.Text
  							else if Trim(lcsSta3) <> '' then
  								meoStartArea.Text := lcsSta3;

                MarkAllWords(lblStartAreaName, UpperCase(meoStartArea.Text), clRed, [fsBold]);
                MarkAllWords(cxtStartAreaDetail, UpperCase(meoStartArea.Text), clRed, [fsBold]);

  							//고객정보에 출발지 내용이 있는지에대한 구분값
  							if Trim(meoStartArea.Text) = '' then
  							begin
  								sRet := 0;
  							end	else
  							begin
  								sRet := 1;
  								GS_Grid_DEP := 'C'; //고객정보에 출발지 내용
  								changeLog('S'+ 'C' + lst_Result.item[0].attributes.getNamedItem('MapX').Text + ':' + lst_Result.item[0].attributes.getNamedItem('MapY').Text, false);        //x,y좌표 변경시 로그생성 2012.08.08 KHS
  							end;
  							// 도착지 정보
  							lcsEnd1 := lst_Result.item[0].attributes.getNamedItem('EdArea').Text;
  							lcsEnd2 := lst_Result.item[0].attributes.getNamedItem('EdArea2').Text;
  							lcsEnd3 := lst_Result.item[0].attributes.getNamedItem('EdArea3').Text;
  							cxtEndAreaDetail.Caption := lst_Result.item[0].attributes.getNamedItem('EdArea4').Text;
  							cxtEndAreaDetail.Hint := lst_Result.item[0].attributes.getNamedItem('EdArea5').Text;

  							gJONEndChkXY.X := lst_Result.item[0].attributes.getNamedItem('DestX').Text;
  							gJONEndChkXY.Y := lst_Result.item[0].attributes.getNamedItem('DestY').Text;

  							gJONEndChkXY.GUIDE_X := lst_Result.item[0].attributes.getNamedItem('DestX').Text;
  							gJONEndChkXY.GUIDE_Y := lst_Result.item[0].attributes.getNamedItem('DestY').Text;

  							if (copy(lst_Result.item[0].attributes.getNamedItem('DestX').Text,1,1) <> '0') and
  								 (lst_Result.item[0].attributes.getNamedItem('DestX').Text <> '')            then
  								cxtEndXval.Text := '0' + lst_Result.item[0].attributes.getNamedItem('DestX').Text
  							else
  								cxtEndXval.Text := lst_Result.item[0].attributes.getNamedItem('DestX').Text;
  							cxtEndYval.Text := lst_Result.item[0].attributes.getNamedItem('DestY').Text;

  							cxtEndGUIDEXval.Text :=	cxtEndXval.Text;
                cxtEndGUIDEYval.Text := cxtEndYval.Text;

  							lblEndAreaName.Caption := lcsEnd1 + ' ' + lcsEnd2 + ' ' + lcsEnd3;

                cxReEndArea.Text := lblEndAreaName.Caption + ' ' + cxtEndAreaDetail.Caption;

  							// 도착지 세부지명
  							if Trim(cxtEndAreaDetail.Hint) <> '' then
  								meoEndArea.Text := cxtEndAreaDetail.Hint
  							else
  								if Trim(lcsEnd3) <> '' then
  								meoEndArea.Text := lcsEnd3;

                MarkAllWords(cxReEndArea, UpperCase(meoEndArea.Text), clRed, [fsBold]);

  							//고객정보에 도착지 내용이 있는지에대한 구분값
  							if Trim(meoEndArea.Text) = '' then eRet := 0
  							else eRet := 1;
  							if Trim(meoEndArea.Text) = '' then
  							begin
  								eRet := 0;
  							end else
  							begin
  								eRet := 1;
  								GS_Grid_DES := 'C'; //고객정보에 도착지 내용
  								changeLog('E'+ 'C' + lst_Result.item[0].attributes.getNamedItem('DestX').Text + ':' + lst_Result.item[0].attributes.getNamedItem('DestY').Text, false);        //x,y좌표 변경시 로그생성 2012.08.08 KHS
  							end;
  						except
  							on e: exception do
  							begin
  								ls_TxLoad := 'Jon01[출발지 정보 조회오류]:' + e.Message;
  								Assert(False, E.Message);
  								GMessagebox(PChar(ls_TxLoad), CDMSE);
  								Screen.Cursor := crDefault;
  							end;
  						end;
            end;
						//-------------------------------------------------------------------------------------------
						//      과거내역을 가지고 취소율, 지사별 설정값에 의한 고객등급 결정
						//-------------------------------------------------------------------------------------------
						Try
							iend := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('EndCnt').Text, 0);
							iCancel := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('CancelCnt').Text, 0);
							iTotal := iEnd + iCancel;
							lblCuCntTotal.Caption := IntToStr(iTotal);
              lblCoCntTotal.Caption := IntToStr(iend);
							if (iTotal) > 0 then
							begin
								fcancelRate := ((iCancel / (iend + iCancel)) * 100);
							  lblCuCancelR.Caption := IntToStr(Round(fCancelRate)) + '%';
							end	else
							begin
							  lblCuCancelR.Caption := '0%';
							end;
						except
							on e: exception do
							begin
								ls_TxLoad := 'Jon01[과거내역]:' + e.Message;
								Assert(False, E.Message);
								GMessagebox(PChar(ls_TxLoad), CDMSE);
								Screen.Cursor := crDefault;
							end;
						end;

						// 고객등급사용구분[0:자동등급, 1:직접설정]
						iGrade1 := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Grade1').Text, 5);
						iGrade2 := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Grade2').Text, 15);

						if iEnd >= iGrade1 then
						begin
							// frm_Jon03.frmJON011 폼의 고객 자동등급별 라벨 칼라를 변경해 준다.
							Proc_SetFormColor_2(0);
						end	else
            if iEnd >= iGrade2 then
						begin
							// frm_Jon03.frmJON011 폼의 고객 자동등급별 라벨 칼라를 변경해 준다.
							Proc_SetFormColor_2(1);
						end else
						begin
							// frm_Jon03.frmJON011 폼의 고객 자동등급별 라벨 칼라를 변경해 준다.
							Proc_SetFormColor_2(2);
						end;

						SetCustLevelSeq(lst_Result.item[0].attributes.getNamedItem('LevelCD').Text);

						// 고객 구분에 따른 색상 표시
						if (iBarIndex = 0) or (iBarIndex = 2) then
							Proc_SetFormColor_3(0)
						else if iBarIndex = 1 then
							Proc_SetFormColor_3(1)
						else if iBarIndex = 3 then
							Proc_SetFormColor_3(3);

						//2013.03.30 khs
						sAppCode        := lst_Result.item[0].attributes.getNamedItem('AppCode').Text;
						sAppLastRegDate := lst_Result.item[0].attributes.getNamedItem('AppLastRegDate').Text;
						sAppLastDelDate := lst_Result.item[0].attributes.getNamedItem('AppLastDelDate').Text;
						sAppLastFinishDate := lst_Result.item[0].attributes.getNamedItem('AppLastFinishDate').Text;
						sAppCuArea      := lst_Result.item[0].attributes.getNamedItem('AppCuArea').Text;
						sAppTermModel   := lst_Result.item[0].attributes.getNamedItem('AppTermModel').Text;
						sAppTermOS      := lst_Result.item[0].attributes.getNamedItem('AppTermOS').Text;
						if lst_Result.item[0].attributes.getNamedItem('AppDelYn').Text = 'y' then sAppDelYn := '어플삭제'
						else sAppDelYn := '어플사용';

						if sAppCode = '' then btnCustAppinfo.Enabled := False
                  					 else btnCustAppinfo.Enabled := True;
						SetCustAppInfo(
								sAppCode
							, sAppLastRegDate
							, sAppLastDelDate
							, sAppLastFinishDate
							, sAppCuArea
							, sAppTermModel
							, sAppTermOS
							, sAppDelYn
						);

						//================================= 고객정보 Display End. =====================================
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Driver');
						wk_br_Name := lst_Result.item[0].attributes.getNamedItem('BrName').Text
							+ '(' + lst_Result.item[0].attributes.getNamedItem('BrNo').Text + ')';
						wk_sabun := lst_Result.item[0].attributes.getNamedItem('Sabun').Text;
						wk_Name := lst_Result.item[0].attributes.getNamedItem('TermInfo').text;
						wk_Name := lst_Result.item[0].attributes.getNamedItem('Name').Text;

						Frm_JON012.sFinishCnt := lst_Result.item[0].attributes.getNamedItem('FinishCnt').text;
						Frm_JON012.sCancelCnt := lst_Result.item[0].attributes.getNamedItem('CancelCnt').text;
						Frm_JON012.sPhone_info := lst_Result.item[0].attributes.getNamedItem('TermInfo').text;

						// 조회기사 사번, 기사지사코드 저장.
						locWkSabun := wk_sabun; // 기사사번
						locWkBrNo := lst_Result.item[0].attributes.getNamedItem('BrNo').Text;
						// 지사코드
//-						cxLblSeaWkSabun.Hint := wk_sabun; // 기사사번
						cxtWorkerNm.Text := wk_Name;

						Proc_SetFormColor_3(9); // 기사 지정칼라로 바 세팅한다.
						Proc_SetFormColor_2(9);
					except
						on e: exception do
						begin
							ls_TxLoad := 'Jon01[고객 조회오류]:' + e.Message;
							Assert(False, E.Message);
							GMessagebox(PChar(ls_TxLoad), CDMSE);
							Screen.Cursor := crDefault;
						end;
					end;
				end;
        Log('Line 10406', LOGDATAPATHFILE);

        // 상담메모/기사메모 표시
        if ( GS_AUTOMEMO_SHOW ) Or ( Frm_JON011.Showing ) then BtnViewMemo.Click;

				// 고객 이용내역을 띄워준다.
				Frm_JON012.cxGVeOrderList.DataController.SetRecordCount(0);

				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/AcceptInfo');
				iRCnt := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Count').Text, 0);

				// 2011.03.07 전화2조회 추가
				sTelse      := lst_Result.item[0].attributes.getNamedItem('Tel2Count').Text;
				if sTelse <> '0' then
			 		GMessagebox('고객전화2에 등록된 오더가 있습니다.',cdmsi);

				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/AcceptInfo/Accept');
				if iRcnt > 0 then
				begin // 과거 이용내역을 보여준다.
					try
						ACount := 0;
						outputdebugstring(pchar(inttostr(ircnt)));
						for i := 1 to iRcnt do
						begin

							if lst_Result.item[i - 1].attributes.getNamedItem('InTime').Text = '' then
								Continue;

							Application.ProcessMessages;
							Inc(ACount);
							//          접수일자(0), 상태(1), 출발지, 도착지, 기사, 요금(5), 취소사유, 적요, 접수자, 대표번호(9),
							//          메모(10), 접수번호(11), 접수일시(12), 상태코드2, 고객전화번호(14),
							//          출발지좌표X, 출발지좌표Y(16), 출발지1, 출발지2, 출발지3(19), 출발지4, 출발지5(21),
							//          도착지좌표X, 도착지좌표Y(23), 도착지1, 도착지2, 도착지3(26), 도착지4, 도착지5(28)
							sCurMileage := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('CurMileage').Text, 0.0));
							sMileage    := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0));
							locaryOrderList[i, 0] := lst_Result.item[i - 1].attributes.getNamedItem('InTime').Text; // 접수일자
							locaryOrderList[i, 1] := lst_Result.item[i - 1].attributes.getNamedItem('Status').Text; // 접수상태
							if lst_Result.item[i - 1].attributes.getNamedItem('Status').Text = 'gi' then
							begin
								locaryOrderList[i, 2] := '경품지급';
								locaryOrderList[i, 3] := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '원 경품지급';
							end else
              if lst_Result.item[i - 1].attributes.getNamedItem('Status').Text = 'cs' then
							begin
								locaryOrderList[i, 2] := '가격수정';
								locaryOrderList[i, 3] := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '원 가격수정';
							end	else
              if lst_Result.item[i - 1].attributes.getNamedItem('Status').Text = 'bi' then
							begin
								locaryOrderList[i, 2] := '보정입력';
								locaryOrderList[i, 3] := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '원 보정입력';
							end	else
							begin
								locaryOrderList[i, 2] := lst_Result.item[i - 1].attributes.getNamedItem('Area5').Text;
								locaryOrderList[i, 3] := lst_Result.item[i - 1].attributes.getNamedItem('EdArea5').Text;
							end;

							locaryOrderList[i, 4] := lst_Result.item[i - 1].attributes.getNamedItem('WkSabun').Text; // 기사사번
							locaryOrderList[i, 5] := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Charge').Text, 0.0));
							if StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0) < 0 then
							begin
								locaryOrderList[i, 6] := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0))
																			 + '(마일리지사용) (잔액 : ' + sCurMileage + ')';
							end	else
              if StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0) > 0 then
							begin
								locaryOrderList[i, 6] := '+'+formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0))
																			 + ' (잔액 : ' + sCurMileage + ')';
							end	else
              if StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0) = 0 then
							begin
								locaryOrderList[i, 6] := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0));
							end;

							locaryOrderList[i, 7] := lst_Result.item[i - 1].attributes.getNamedItem('CReason').Text; // 취소사유
							locaryOrderList[i, 8] := lst_Result.item[i - 1].attributes.getNamedItem('ConfInfo').Text; // 적요
							locaryOrderList[i, 9] := lst_Result.item[i - 1].attributes.getNamedItem('Member').Text; // 접수자
							locaryOrderList[i, 10] := lst_Result.item[i - 1].attributes.getNamedItem('KeyNumber').Text; // 대표번호
							locaryOrderList[i, 11] := lst_Result.item[i - 1].attributes.getNamedItem('Memo').Text; // 메모

              sTemp := '';
  						sContent := StringReplace(locaryOrderList[i, 11], '|', '¶',  [rfReplaceAll]);
              if Trim(sContent) <> '' then
              begin
           			ls_Rcrd := TStringList.Create;
                try
            			GetTextSeperationEx2('¶', sContent, ls_Rcrd);
            			for ia := 0 to ls_Rcrd.Count - 1 do
            			begin
                    if sTemp = '' then
                      sTemp := sTemp + ls_Rcrd[ia]
                    else
                      sTemp := sTemp + #13#10 + ls_Rcrd[ia];
            			end;
                finally
                  FreeAndNil(ls_Rcrd);
                end;
              end;

              locaryOrderList[i, 11] := sTemp;

							locaryOrderList[i, 12] := lst_Result.item[i - 1].attributes.getNamedItem('ConfSlip').Text; // 접수번호
							locaryOrderList[i, 13] := lst_Result.item[i - 1].attributes.getNamedItem('InDate').Text; // 접수일시
							if (not FHasTodayData) and (copy(locaryOrderList[i, 13], 1, 19) >= StartDateTime('yyyy-mm-dd hh:nn:ss')) then
								FHasTodayData := True;

							locaryOrderList[i, 14] := lst_Result.item[i - 1].attributes.getNamedItem('Status').Text; // 접수상태
							sCustTel := lst_Result.item[i - 1].attributes.getNamedItem('CustTel').Text;
							sBrNo := lst_Result.item[i - 1].attributes.getNamedItem('ConfBrch').Text;
							sAccCenter := lst_Result.item[i - 1].attributes.getNamedItem('AcceptCenter').Text;

							locaryOrderList[i, 15] := func_Cust_Tel(sCustTel, sBrNo, sAccCenter, locaryOrderList[i, 12]); // 고객전화번호
							locaryOrderList[i, 16] := lst_Result.item[i - 1].attributes.getNamedItem('MapX').Text; // 출좌표X
							locaryOrderList[i, 17] := lst_Result.item[i - 1].attributes.getNamedItem('MapY').Text; // 출좌표Y
							locaryOrderList[i, 18] := lst_Result.item[i - 1].attributes.getNamedItem('Area').Text;
							locaryOrderList[i, 19] := lst_Result.item[i - 1].attributes.getNamedItem('Area2').Text;
							locaryOrderList[i, 20] := lst_Result.item[i - 1].attributes.getNamedItem('Area3').Text;
							locaryOrderList[i, 21] := lst_Result.item[i - 1].attributes.getNamedItem('Area4').Text;
							locaryOrderList[i, 22] := lst_Result.item[i - 1].attributes.getNamedItem('Area5').Text;
							locaryOrderList[i, 23] := lst_Result.item[i - 1].attributes.getNamedItem('DestX').Text;
							locaryOrderList[i, 24] := lst_Result.item[i - 1].attributes.getNamedItem('DestY').Text;
							locaryOrderList[i, 25] := lst_Result.item[i - 1].attributes.getNamedItem('EdArea').Text;
							locaryOrderList[i, 26] := lst_Result.item[i - 1].attributes.getNamedItem('EdArea2').Text;
							locaryOrderList[i, 27] := lst_Result.item[i - 1].attributes.getNamedItem('EdArea3').Text;
							locaryOrderList[i, 28] := lst_Result.item[i - 1].attributes.getNamedItem('EdArea4').Text;
							locaryOrderList[i, 29] := lst_Result.item[i - 1].attributes.getNamedItem('EdArea5').Text;
							locaryOrderList[i, 30] := lst_Result.item[i - 1].attributes.getNamedItem('MultiCallGB').Text; // 복수콜 구분 : (1/3)
							locaryOrderList[i, 31] := IntToStr(ACount);
							// 2011.01.05 타사콜제한위한 필드추가
							locaryOrderList[i, 32] := lst_Result.item[i - 1].attributes.getNamedItem('BrName').Text;
							locaryOrderList[i, 33] := lst_Result.item[i - 1].attributes.getNamedItem('Callcenter').Text; // 복수콜 구분 : (1/3)

							locaryOrderList[i, 34] := lst_Result.item[i - 1].attributes.getNamedItem('OrderType').Text; // 오더타입추가 2011.03.07
              // OrderType="오더구분(1:전화2로검색된오더, 2:당일, 3:과거, 4:마일리지, 5:백업DB)"

							locaryOrderList[i, 35] := lst_Result.item[i - 1].attributes.getNamedItem('BaechaTime').Text; // 배차시간 2011.08.20
							locaryOrderList[i, 36] := lst_Result.item[i - 1].attributes.getNamedItem('FinishTime').Text; // 완료시간 2011.08.20
							locaryOrderList[i, 37] := lst_Result.item[i - 1].attributes.getNamedItem('WkHead').Text; // 기사본사코드 2011.08.20
							locaryOrderList[i, 38] := lst_Result.item[i - 1].attributes.getNamedItem('WkBrch').Text; // 기사지사코드 2011.08.20
							locaryOrderList[i, 39] := lst_Result.item[i - 1].attributes.getNamedItem('WkCenter').Text; // 기사콜센터 2011.08.20
							locaryOrderList[i, 40] := lst_Result.item[i - 1].attributes.getNamedItem('FirstInSource').Text; // 어플접수여부 2013.03.30
						end;
					except
						on e:exception do
						begin
							ShowMessage('고객 이용내역 Display Error!!');
						end;
					end;
					Frm_JON012.Tag := Self.Tag;
					// 현재 할당된 폼 배열값을 저장.(현재 조회한 고객 데이터가 있는지 여부를 체킹)
          // 고객 이용내역을 그리드에 보여준다.
				end;

        try
  				Proc_CustOrderListView;
        except
      		on e: exception do
      		begin
      			Assert(False, E.Message);
      		end;
        end;

        try
          Proc_WorkListView(rxxml);
        except
      		on e: exception do
      		begin
      			Assert(False, E.Message);
      		end;
        end;

        Frm_JON012.Show;

        cxCallTitle.Caption := cxCallTitle.Hint + strtocall(gsCuTelHint);

        for i := 0 to 19 do
        begin
          if Frm_Main.JON01MNG[i].Tag = Self.Tag then
          begin
            Frm_Main.JON01MNG[i].Caption := cxCallTitle.Caption;
            Break;
          end;
        end;

				// [hjf] xml을 접수 목록으로 전달하고 접수목록에서 해당 xml로 접속 목록을 표시
			except
				on e: exception do
				begin
					sTemp := 'JON01[Proc_KeyNumberInsert]1:' + e.Message;
					Log(sTemp, LOGDATAPATHFILE);
					Assert(False, E.Message);
				end;
			end;
		end else
		begin
			GMessagebox(MSG012 + CRLF + ls_Msg_Err, CDMSE);
		end;

		try
			// CID 조회 일때는 발신전화없음 멘트 감춤..
			if (locCustHP_MainNum_Search = '') and (cxLblCIDUseFlg.Hint <> 'CID') then
			begin
				cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);
				cxtCallTelNum.Text := cxtCuTel.Text; // 발신전화번호
				locsCuTel := cxtCuTel.Text;
			end	else
			begin
				locsCuTel := cxtCallTelNum.Text;
			end;

			cxBtnCuUpdate.Enabled := True;
			btnMileOut.Enabled := True;

			// 지사변경 제한.[이유:고객조회 후 지사변경시 조회한 고객정보 일부유실 경고메시지 띄우기 위함임]
			cboBranch.Properties.ReadOnly := True;

			if lcsCu_seq <> '' then
			begin

			end	else
			begin
				// 존재 : $0070FEF3, 미존재 : $00FAEDE2
				if (cxLblCIDUseFlg.Hint = 'CID') and (locWkSabun = '') then
				begin // CID 조회인지 설정을 한다.
					tmMent.Enabled := True;
					locKNum := Proc_MainKeyNumberSearch; // 대표번호 추출.
					lblNewCustYN.Caption := sBr_Name + ' / ' + locKNum + ' 의' + '-->>신규 고객<<-- 입니다.';
					pnlNewCustYN.Visible := True; // 신규고객여부의 정보를 보여준다.
				end;
			end;

			Frm_JON012.cxlbSlip.Caption := cxtJoinNum.Text; // 오더접수번호
			Frm_JON012.cxlbCustTel.Caption := locsCuTel; // 고객전화번호 읽기.
			Frm_JON012.cxlbKeyNum.Caption := Proc_MainKeyNumberSearch; // 대표번호 읽기.

      if cxLblCIDUseFlg.Hint = 'CID' then
        // 프로그램 최소화시에 접수창 뜨면 POI검색창이 앞으로 표시 안됨
        SetWindowPos(Frm_JON30.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

			pnlJonMain.Enabled := True;   // 접수창 잠긴걸 해제함. 2011-11-08.
			if Self.Visible = True then
      begin
				meoStartArea.SetFocus;
      end;
		except
			on e: exception do
			begin
				Assert(False, E.Message);
			end;
		end;
	except
		on e: exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

// 지사별 멘트 구하기..
function TFrm_JON01.Func_brtel_memo(sBrNo, sKeyNum: string): string;
var
  i: Integer;
  wMemo, wResult: String;
begin
  wResult := '';
  i := 0;
  // 0지사코드, 1지사명, 2대표번호, 3기본요금, 4콜센터코드, 5본사코드, 6멘트, 7상황실번호
  try
    //for i := 0 to 5000 do begin
    while True do
    begin
      if GSL_HD_LIST[i, 0] = '' then
        break;
      if (GSL_HD_LIST[i, 0] = sBrNo) and (GSL_HD_LIST[i, 2] = sKeyNum) then
      begin
        if GSL_HD_LIST[i, 6] <> '' then
        begin
          wMemo := GSL_HD_LIST[i, 6];
{          if Length(wMemo) > 15 then
            wResult := Copy(wMemo, 1, 15) + #13#10 + Copy(wMemo, 16, Length(wMemo))
          else}
            wResult := wMemo;
        end
        else
          wResult := '';
        Break;
      end;
      Inc(i);
    end;
  except
  end;
  Result := wResult;
end;

// 고객전화번호 마킹처리.. (지호 2008-08-19)
function TFrm_JON01.Func_Cust_Tel(sCall, sBrch, sBrch2: string; ATodayOrder: Boolean): string;
var
  iRow, iLevel: Integer;
begin
  iLevel := StrToIntDef(GT_USERIF.LV, 10);
  iRow := scb_BranchCode.IndexOf(sBrch);

  Result := '***-****-****';

  if iRow < 0 then
    Exit;

  if TCK_USER_PER.JON_CustTelOpen = '1' then
  begin // 고객번호 자사콜 오픈
    case iLevel of
      10:
        begin
          if GT_USERIF.BR = sBrch2 then
            Result := strtocall(sCall);
        end;
      40:
        begin
          if GT_USERIF.BR = sBrch then
            Result := strtocall(sCall);
        end;
      60:
        begin
          Result := strtocall(sCall)
        end;
    end;
  end else if TCK_USER_PER.JON_CustTelDayOpen = '1' then  // 고객번호 자사콜 당일만 오픈
  begin
    case iLevel of
      10:
        begin
          if GT_USERIF.BR = sBrch2 then
            Result := IfThen(ATodayOrder, strtocall(sCall), '***-****-****');
        end;
      40:
        begin
          if GT_USERIF.BR = sBrch then
            Result := IfThen(ATodayOrder, strtocall(sCall), '***-****-****');
        end;
      60:
        begin
          Result := IfThen(ATodayOrder, strtocall(sCall), '***-****-****');
        end;
    end;
  end;

  if (not ATodayOrder) and (TCK_USER_PER.JON_CustMaking2 = '1') then
    Result := Copy(Result, 1, Length(Result) - 2) + '**';
end;

function TFrm_JON01.Func_Cust_Tel(sCall, sBrch, sBrch2, sDatetime: string): string;
var
  StartDate: string;
begin
  sDatetime := StringReplace(sDatetime, ' ', '', [rfReplaceAll]);
  StartDate := StartDateTime('yyyy-mm-dd hh:nn:ss');
  StartDate := StringReplace(StartDate, ' ', '', [rfReplaceAll]);

  Result:= Func_Cust_Tel(sCall, sBrch, sBrch2, sDatetime >= StartDate);
end;

procedure TFrm_JON01.Proc_WorkListView(rxxml: String);
begin
  try
    Frm_JON012.Tag := Self.Tag;
    Frm_JON012.Jon03Tag := Self.Jon03Tag;

    if sCust_Gubun = '1' then                         //기사
    begin
      Frm_JON012.cxPageControl1.Pages[0].TabVisible := False;
      Frm_JON012.cxPageControl1.Pages[1].TabVisible := False;

      Frm_JON012.BtnSheet1.Visible := False;
      Frm_JON012.BtnSheet2.Visible := True;

      Frm_JON012.cxPageControl1.ActivePageIndex := 1;
      Frm_JON012.BtnSheet2.Down := True;
      Frm_JON012.sActivePage := 1;
      //////////////////////////기사정보탭 조회//////////////////////////////
      Frm_JON012.sWk_sabun32 := wk_sabun;
      //기사 상세 정보 초기화
      Frm_JON012.Proc_Initialization;
      //기사 상세 정보 표시
      Frm_JON012.Proc_WorkerInfo;
      //기사 당일 오더내역 조회프로시저
      Frm_JON012.Proc_WorkerOrderToday;
      // 기사 업무 현황 조회
      Frm_JON012.btn5.Click;
      Frm_JON012.lbl8.Visible := False;
      Frm_JON012.cxBtnOldSelect.Visible := False;
      Frm_JON012.cxBtnColorSet.Visible := False;
      Frm_JON012.Pnl_Title.Color := $00D1E7E9;
      Frm_JON012.lb_wkname_title.Visible := True;
    end else
    if sCust_Gubun = '2' then                        //고객
      begin
      Frm_JON012.cxPageControl1.Pages[0].TabVisible := False;
      Frm_JON012.cxPageControl1.Pages[1].TabVisible := False;

       Frm_JON012.BtnSheet1.Visible := True;
       Frm_JON012.BtnSheet2.Visible := False;

      Frm_JON012.cxPageControl1.ActivePageIndex := 0;
      Frm_JON012.BtnSheet1.Down := True;
      Frm_JON012.sActivePage := 0;
      Frm_JON012.lbl8.Visible := True;
      Frm_JON012.cxBtnOldSelect.Visible := True;
      Frm_JON012.cxBtnColorSet.Visible := True;
      Frm_JON012.Pnl_Title.Color := $00D9E6D2;
      Frm_JON012.lb_wkname_title.Visible := False;
    end else
    if ( sCust_Gubun = '0' ) And ( Not FHasTodayData ) then                        //기사+고객
    begin
      Frm_JON012.cxPageControl1.Pages[0].TabVisible := False;
      Frm_JON012.cxPageControl1.Pages[1].TabVisible := False;

      Frm_JON012.BtnSheet1.Visible := True;
      Frm_JON012.BtnSheet2.Visible := True;

      Frm_JON012.cxPageControl1.ActivePageIndex := 1;
      Frm_JON012.BtnSheet2.Down := True;
      Frm_JON012.sActivePage := 1;
      //////////////////////////기사정보탭 조회//////////////////////////////
      Frm_JON012.sWk_sabun32 := wk_sabun;
      //기사 상세 정보 초기화
      Frm_JON012.Proc_Initialization;
      //기사 상세 정보 표시
      Frm_JON012.Proc_WorkerInfo;
      //기사 당일 오더내역 조회프로시저
      Frm_JON012.Proc_WorkerOrderToday;
      // 기사 업무 현황 조회
      Frm_JON012.btn5.Click;
      Frm_JON012.lbl8.Visible := False;
      Frm_JON012.cxBtnOldSelect.Visible := False;
      Frm_JON012.cxBtnColorSet.Visible := False;
      Frm_JON012.Pnl_Title.Color := $00D1E7E9;
      Frm_JON012.lb_wkname_title.Visible := True;
    end;
    Frm_JON012.SetcxPageControl;

    if FHasTodayData then
    begin
      if Frm_Main.Frm_JON03[Jon03Tag].cb_All.Checked then Frm_Main.Frm_JON03[Jon03Tag].cb_All.Hint := 'Y'
                                                     else Frm_Main.Frm_JON03[Jon03Tag].cb_All.Hint := 'N';

      Frm_Main.Frm_JON03[Jon03Tag].DisplayTodayOrders(rxxml);

      if sCust_Gubun = '0' then                        //기사+고객   당일접수내용있을경우 2013.05.28 KHS
      begin
        Frm_JON012.cxPageControl1.Pages[0].TabVisible := False;
        Frm_JON012.cxPageControl1.Pages[1].TabVisible := False;

         Frm_JON012.BtnSheet1.Visible := True;
         Frm_JON012.BtnSheet2.Visible := True;

        Frm_JON012.cxPageControl1.ActivePageIndex := 0;
        Frm_JON012.BtnSheet1.Down := True;
        Frm_JON012.sActivePage := 0;
        Frm_JON012.lbl8.Visible := True;
        Frm_JON012.cxBtnOldSelect.Visible := True;
        Frm_JON012.cxBtnColorSet.Visible := True;
        Frm_JON012.Pnl_Title.Color := $00D9E6D2;
        Frm_JON012.lb_wkname_title.Visible := False;
        //////////////////////////기사정보탭 조회//////////////////////////////
        Frm_JON012.sWk_sabun32 := wk_sabun;
        //기사 상세 정보 초기화
        Frm_JON012.Proc_Initialization;
        //기사 상세 정보 표시
        Frm_JON012.Proc_WorkerInfo;
        //기사 당일 오더내역 조회프로시저
        Frm_JON012.Proc_WorkerOrderToday;
        // 기사 업무 현황 조회
        Frm_JON012.btn5.Click;
      end;
    end;
  Except
    on e: exception do
    begin
      Log('Proc_WorkListView Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_WorkListView Error :' + E.Message);
    end;
  end;

	Proc_Jon012Show;
end;

// 고객 이용내역을 띄워준다.
procedure TFrm_JON01.Proc_Jon012Show;
Var OrgWndProc : Integer;
   ln_Env : TIniFile;
begin
  try
    ln_Env := TIniFile.Create(ENVPATHFILE);
    try
      Frm_JON012.Hint := Self.Caption;
      Frm_JON012.Tag := Self.Tag;
      Frm_JON012.bChkTime := True;
      Frm_JON012.Jon03Tag := Self.Jon03Tag;
      Frm_JON012.cxPageControl1.Pages[0].TabVisible := False;
      Frm_JON012.cxPageControl1.Pages[1].TabVisible := False;
      if (sCust_Gubun = '2') or (sCust_Gubun = '') then
      begin
        Frm_JON012.FResize := True;
        Frm_JON012.Width  := StrToIntDef(ln_Env.ReadString('UserHisForm', 'Width', '562'), 562);
        Frm_JON012.FResize := True;
        Frm_JON012.Height := StrToIntDef(ln_Env.ReadString('UserHisForm', 'Height', '277'), 277);
        Frm_JON012.BtnSheet1.Visible := True;
        Frm_JON012.BtnSheet2.Visible := False;

        Frm_JON012.cxPageControl1.ActivePageIndex := 0;
        Frm_JON012.BtnSheet1.Down := True;
        Frm_JON012.sActivePage := 0;
        Frm_JON012.lbl8.Visible := True;
        Frm_JON012.cxBtnOldSelect.Visible := True;
        Frm_JON012.cxBtnColorSet.Visible := True;
        Frm_JON012.Pnl_Title.Color := $00D9E6D2;
        Frm_JON012.lb_wkname_title.Visible := False;
      end else
      begin
        Frm_JON012.FResize := True;
        Frm_JON012.Width  := StrToIntDef(ln_Env.ReadString('UserHisForm_WK', 'Width_WK', '700'), 700);
        Frm_JON012.FResize := True;
        Frm_JON012.Height := StrToIntDef(ln_Env.ReadString('UserHisForm_WK', 'Height_WK', '476'), 476);

        if sCust_Gubun = '0' then
        begin
          Frm_JON012.BtnSheet1.Visible := True;
          Frm_JON012.BtnSheet2.Visible := True;
        end else
        if sCust_Gubun = '1' then
        begin
          Frm_JON012.BtnSheet1.Visible := False;
          Frm_JON012.BtnSheet2.Visible := True;
        end;
        Frm_JON012.cxPageControl1.ActivePageIndex := 1;
        Frm_JON012.BtnSheet2.Down := True;
        Frm_JON012.sActivePage := 1;
        Frm_JON012.lbl8.Visible := False;
        Frm_JON012.cxBtnOldSelect.Visible := False;
        Frm_JON012.cxBtnColorSet.Visible := False;
        Frm_JON012.Pnl_Title.Color := $00D1E7E9;
        Frm_JON012.lb_wkname_title.Visible := True;
      end;
      // 현재 할당된 폼 배열값을 저장.(현재 조회한 고객 데이터가 있는지 여부를 체킹)
      Frm_JON012.SetcxPageControl;
      Frm_JON012.Left := Self.Left - (Frm_JON012.Width + 1);
      Frm_JON012.Top  := Self.Top + (Self.Height - Frm_JON012.Height);
      if Frm_JON012.Top < 0 then Frm_JON012.Top := 0;

      Frm_JON012.pJON012Dock.bUnDock := pJON01Dock.bUNDock;
      Frm_JON012.pJON012Dock.HDNO    := pJON01Dock.HDNO;
      Frm_JON012.pJON012Dock.BrNo    := pJON01Dock.BrNo;
      Frm_JON012.pJON012Dock.Gubun   := pJON01Dock.Gubun;
      Frm_JON012.pJON012Dock.Idx     := pJON01Dock.Idx;

      Frm_JON012.cxLblActive.Style.AssignedValues := [2,3];
      Frm_JON012.cxLblActive.Style.Color := Frm_JON012.Pnl_Title.Color;

      Frm_JON012.Show;
    finally
			FreeAndNil(ln_Env);
    end;
  Except
    on e: exception do
    begin
      Log('Proc_Jon012Show Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_Jon012Show Error :' + E.Message);
    end;
  end;
end;

// 받아온 경유지 정보를 배열에 저장한다.
procedure TFrm_JON01.proc_ViaInfo_insert(rxxml: String);
var
  xdom: DomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  ls_Msg_Err: string;
  i, iFidx: Integer;
begin
  try
    xdom := CoDomDocument.Create;

    if not xdom.loadXML(rxxml) then Exit;

    iFidx := Self.Tag; // 폼의 인덱스를 가져온다.

    ls_Msg_Err := GetXmlErrorCode(rxxml);
    if ('0000' = ls_Msg_Err) then
    begin
      GT_PASS_INFO[iFidx][0].AREA1 := '';
      GT_PASS_INFO[iFidx][0].AREA2 := '';
      GT_PASS_INFO[iFidx][0].AREA3 := '';
      GT_PASS_INFO[iFidx][0].AREA4 := '';
      GT_PASS_INFO[iFidx][0].AREA5 := '';
      GT_PASS_INFO[iFidx][0].DOCID := '';
      GT_PASS_INFO[iFidx][0].CELLS := '';
      GT_PASS_INFO[iFidx][0].SWORD := '';
      GT_PASS_INFO[iFidx][0].MAP_X := '';
      GT_PASS_INFO[iFidx][0].MAP_Y := '';
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        for i := 0 to lst_Result.length - 1 do
        begin
          if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then
            break;
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
          GT_PASS_INFO[iFidx][i].AREA1 := ls_Rcrd[1];
					GT_PASS_INFO[iFidx][i].AREA2 := ls_Rcrd[2];
					GT_PASS_INFO[iFidx][i].AREA3 := ls_Rcrd[3];
          GT_PASS_INFO[iFidx][i].AREA4 := ls_Rcrd[4];
          GT_PASS_INFO[iFidx][i].AREA5 := ls_Rcrd[5];
          GT_PASS_INFO[iFidx][i].MAP_X := ls_Rcrd[6];
          GT_PASS_INFO[iFidx][i].MAP_Y := ls_Rcrd[7];
        end;
      finally
        FreeAndNil(ls_Rcrd);
      end;
    end
    else
    begin
      GMessagebox(MSG012 + CRLF + ls_Msg_Err, CDMSE);
    end;
  except
  end;
end;

// 접수등록 후 결과를 처리 한다.
procedure TFrm_JON01.Proc_SaveReturn(ss_RxXml: String);
var
  xdom: DomDocument;
	ls_Msg_Err: string;
  iFidx, j: integer;
begin
  xdom := CoDomDocument.Create;
  if not xdom.loadXML(ss_RxXml) then
  begin
    Exit;
  end;

  ls_Msg_Err := GetXmlErrorCode(ss_RxXml);
  if ('0000' = ls_Msg_Err) then
  begin
    try
      if (btnCmdJoinCopy.Hint <> 'JOINCOPY') and (btnCmdWaitCopy.Hint <> 'JOINCOPY') then
      begin // 접수후 복사 기능 설정.
        iFidx := Self.Tag;
        j := 0;
				for j := 0 to 4 do
        begin
					GT_PASS_INFO[iFidx][j].AREA1 := '';
          GT_PASS_INFO[iFidx][j].AREA2 := '';
          GT_PASS_INFO[iFidx][j].AREA3 := '';
          GT_PASS_INFO[iFidx][j].AREA4 := '';
          GT_PASS_INFO[iFidx][j].AREA5 := '';
          GT_PASS_INFO[iFidx][j].DOCID := '';
          GT_PASS_INFO[iFidx][j].CELLS := '';
          GT_PASS_INFO[iFidx][j].SWORD := '';
          GT_PASS_INFO[iFidx][j].MAP_X := '';
          GT_PASS_INFO[iFidx][j].MAP_Y := '';
        end;
      end;

      if lg_Save = '1' then
      begin
        // 오더정보 수정모드 설정을 한다.
        if (btnCmdExit.Hint = 'UPDATE_MODE') and (Pos('수정', Self.Caption) > 0 ) then
          Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, cxtJoinNum.Text)
        else
        begin
          //고객번호로 접수현황 조회 (2008.08.01 KJH)
          cxtCallTelNum.Text := StringReplace(cxtCallTelNum.Text, '-', '', [rfReplaceAll]);
          Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(5, cxtCallTelNum.Text);
        end;
      end;

    except
      on e: exception do
      begin
        Log('Proc_SaveReturn Error 0 :' + E.Message, LOGDATAPATHFILE);
        Assert(False, 'Proc_SaveReturn Error 0 :' + E.Message);
      end;
    end;

    try
      if (btnCmdJoinCopy.Hint <> 'JOINCOPY') and (btnCmdWaitCopy.Hint <> 'JOINCOPY') then
      begin // 접수후 복사 기능 설정.
        // 화면을 닫는다.
        tmFormClose.Tag := 77; // 화면 닫기 설정값.
        loc_TmClose := 'CLOSE'; // 화면 종료 타이머 변수. CDS. 080830.
        tmFormClose.Enabled := True; // 화면을 닫는다.
      end else
      begin
        lcsCu_seq := GetXmlErrorMsg(ss_RxXml);   // 20130727  LYB  대기후복사/접수후복사 로 인한 신규고객 고객번호 적용
        if (Pos('수정', Self.Caption) > 0 ) then
        begin
          if btnCmdExit.Hint = 'UPDATE_MODE' then
          begin // 오더정보 수정모드 설정을 한다.
            if loc_bUpdateLock = True then
            begin // 수정화면 Lock 설정 여부.[True:설정, False:미설정]
              //Proc_AcceptLock('2');          // 해당오더의 Lock을 해제 한다.
              tmFormClose.Tag := 88; // 화면 닫기 설정값.
              loc_TmClose := 'UNLOCK';
              // 화면 종료 타이머 변수. CDS. 080830.
              tmFormClose.Enabled := True; // LOCK을 해제한다.
            end;
          end;
        end;
      end;
    except
      on e: exception do
      begin
        Log('Proc_SaveReturn Error 1 :' + E.Message, LOGDATAPATHFILE);
        Assert(False, 'Proc_SaveReturn Error 1 :' + E.Message);
      end;
    end;
  end else
  begin
   	Only_Exit := True;   //종료버튼 힌트 초기화 변경됨   20130808  LYB
    GMessagebox(MSG431 + CRLF + ls_Msg_Err, CDMSE);
  end;
end;

// 고객기본정보를 저장 요청 후 결과 처리를 한다.
procedure TFrm_JON01.Proc_CustBasicSave_Result(rxxml: String);
var
  xdom: DomDocument;
  ls_Msg_Err: string;
begin
  xdom := CoDomDocument.Create;

  if not xdom.loadXML(rxxml) then
    Exit;

  ls_Msg_Err := GetXmlErrorCode(rxxml);
  if ('0000' = ls_Msg_Err) then
  begin
    GMessagebox('고객정보를 수정 완료 하였습니다.', CDMSI);
  end else
  begin
    ShowMessage('고객정보 수정도중 에러가 발생 하였습니다.' + #10#13 + ls_Msg_Err);
  end;
end;

// 고객 SEQUENCE 를 조회 해 온다.
procedure TFrm_JON01.Proc_CuSeq_Select;
var
  ls_TxLoad, ls_TxQry, sQueryTemp : string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
  if cxLblCIDUseFlg.Hint <> 'CID' then
  begin // CID 조회인지 설정을 한다.
    if (Length(Trim(cxtCuTel.Text)) < 4) or (Length(Trim(cxtCallTelNum.Text)) < 4) then
    begin
      ShowMessage('고객 전화번호가 없거나 부정확 합니다. 지사 선택 후 고객정보를 조회 하세요!');
      cxtCuTel.Text := '';
      cxtCallTelNum.Text := '';
      Exit;
    end;
    if cxtCuTel.Text <> gsCuTelHint then
    begin
      ShowMessage('입력한 전화번호가 조회한 전화번호와 다릅니다. 지사 선택 후 재조회 하세요!');
      cxtCallTelNum.Text := '';
      Exit;
    end;
  end else
  begin
    if (Length(Trim(cxtCallTelNum.Text)) < 4) then
    begin
      Exit;
    end;
  end;
  locHdNo := Proc_HDNOSearch; // 본사코드 정보를 읽는다.
  locBrNo := Proc_BRNOSearch; // 지사코드 정보를 읽는다.
  locKNum := Proc_MainKeyNumberSearch; // 대표번호 정보를 읽는다.

  try
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_CUSTOMER_SEQUENCE, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [locHdNo, locBrNo, locKNum, cxtCallTelNum.Text]);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'CUSE0001');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'QueryString', ls_TxQry);

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      Proc_JobAfterProc(True, False);

      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);

          tmFormClose.Tag := 99; // 화면 닫기 설정값.
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, False);
    end;
  except
    on e: exception do
    begin
      pnlJonMain.Enabled := True;
      Screen.Cursor := crDefault;
      Assert(False, E.Message);
    end;
  end;
end;

// 고객 SEQUENCE 조회에 대한 결과를 처리 한다.
procedure TFrm_JON01.Proc_RequestResult(ls_rxxml: String; ls_ClientKey:
  string);
var
  xdom: DomDocument;
  ls_Msg_Err, sTmp, sTmp2: string;
  lst_Result: IXMLDomNodeList;
begin
  pnlJonMain.Enabled := True;

  xdom := CoDomDocument.Create;
  if not xdom.loadXML(ls_rxxml) then
    Exit;

  try
    if ls_ClientKey = 'CUSE0001' then
    begin
      // 고객 SEQUENCE 정보를 읽는다.
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_Msg_Err) then
      begin
        sTmp := Proc_MainKeyNumberSearch; // 지사 대표번호를 가져온다.
        sTmp2 := Proc_BrNameReadSearch;
        // 선택된 지사정보에서 지사명을 추출 한다.
        if (0 < GetXmlRecordCount(ls_rxxml)) then
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          lcsCu_seq := Trim(GetTextSeperationFirst('│', lst_Result.item[0].attributes.getNamedItem('Value').text));
          // 존재 : $0070FEF3, 미존재 : $00FAEDE2
        end else
        begin
          ShowMessage(sTmp2 + ' 지사에 ' + cxtCuTel.Text + ' 번호로 등록된 고객정보가 없습니다.');
        end;
        cxTxtBrNameCaption.Text := '지사변경됨:' + sTmp2 + ' / ' + sTmp;
        // 지사명, 대표번호 정보를 눈에 확~ 뜨이게, 크게 보여준다.
      end else
      begin
        GMessagebox(ls_Msg_Err, CDMSE);
      end;
    end else
    if ls_ClientKey = 'CUSE0011' then
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_Msg_Err) then
      begin
        ShowMessage('출발지 정보를 저장 하였습니다.');
      end else
        GMessagebox(ls_Msg_Err, CDMSE);
    end else
    if ls_ClientKey = 'CUSE0012' then
    begin
       // 도착지 정보 저장 삭제
    end;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

// 선택된 지사정보에서 지사명을 추출 한다.
function TFrm_JON01.Proc_BrNameReadSearch: string;
var
  iPos2: Integer;
  sBrName, sTmp : string;
begin
  Result := '';
  sBrName := '';
  sTmp := cboBranch.Text;
  if sTmp = '' then
    Exit;

  // 예시: "NS법인[15889999] A100 .B100 "   2011.05.17  CDS.
  iPos2 := Pos('[', sTmp);
  if iPos2 > 0 then
  begin
    sTmp := Copy(sTmp, 1, iPos2-1);
    sBrName := sTmp;
  end;

  Result := sBrName;
end;

// 전화번호로 위경도 좌표값 조회 후 그 결과 처리를 한다.
procedure TFrm_JON01.Proc_TellNumSearchNEDataResult(rxxml: String);
var
  xdom: DomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err: string;
  iRCnt, i: Integer;
  AddItem: TListItem;
begin
  xdom := CoDomDocument.Create;
  if not xdom.loadXML(rxxml) then
  begin
    GMessagebox('[전화번호위치검색]XML전문 형식이 맞지 않습니다.' + #13#10 +
      '다시한번 조회 하세요', CDMSI);
    GB_JON03SELECT_GB := True;
    Exit;
  end;
  ls_Msg_Err := GetXmlErrorCode(rxxml);
  try
    if ('0000' = ls_Msg_Err) then
    begin
      if Assigned(Frm_COM30) then
      begin
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Accept/Map');
        iRCnt := lst_Result.length; // Map Record Count
        if iRcnt > 0 then
        begin // 위치정보를 보여준다.
          for i := 0 to iRcnt - 1 do
          begin
            if lst_Result.item[i].attributes.getNamedItem('City').Text = '' then
              Continue;
            Application.ProcessMessages;
            //시도, 시군구, 읍면동, 세부지명, X좌표, Y좌표
            AddItem := Frm_Com30.cxListViewArea.Items.Add;
            AddItem.Caption := lst_Result.item[i].attributes.getNamedItem('City').Text; // 시/도
            AddItem.SubItems.Add(lst_Result.item[i].attributes.getNamedItem('Ward').Text); // 시/군/구
            AddItem.SubItems.Add(lst_Result.item[i].attributes.getNamedItem('Dong').Text); // 읍/면/동
            AddItem.SubItems.Add(lst_Result.item[i].attributes.getNamedItem('Detail').Text); // 세부지명
            AddItem.SubItems.Add(lst_Result.item[i].attributes.getNamedItem('Tel').Text); // 전화번호
            AddItem.SubItems.Add(lst_Result.item[i].attributes.getNamedItem('X').Text); // X좌표
            AddItem.SubItems.Add(lst_Result.item[i].attributes.getNamedItem('Y').Text); // Y좌표
          end;

          if Frm_COM30.cxListViewArea.Items.Count > 0 then
            Frm_COM30.cxListViewArea.ItemIndex := 0
          else
            ShowMessage('[전화번호위치검색] 검색 데이터가 없습니다.');
        end else
        begin
          ShowMessage('[전화번호위치검색] 검색 데이터가 없습니다.');
        end;
      end;
    end else
    begin
      GMessagebox(MSG012 + CRLF + ls_Msg_Err, CDMSE);
    end;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

// [수정화면 띄우기..]오더일련번호:접수번호로 조회 후 그 결과 처리를 한다.
procedure TFrm_JON01.Proc_ConfSlipSelectResult(rxxml: String);
var
	wk_br_Name, wk_sabun, wk_Name, wk_Tel, ls_Msg_Err: string;
	sBr_Name, sTemp, sTemp2, sOrderUpInfo, CReason, StCd: string;
	iBarIndex, iRCnt, i, iBidx, iFIdx: Integer;
	itotal, iEnd, iCancel, ij: Integer;
	iGrade1, iGrade2, ACount, iViaCNT, ia: Integer;
	fcancelRate: double;
	sCustTel, sBrNo, sAccCenter, sDate, sInDate, OrderState, sMultiCallGB, sMemo, sContent: string;
	ls_Rcrd : TStringList;
  BitMap1 : TBitMap;
	sCurMileage, sMileage: string;
begin
	iFidx := Self.Tag; // 폼의 index를 읽는다.
//-------------------------- Error Code Read -----------------------------

  loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/Service/Error');
  ls_Msg_Err := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Code').Text;
  if ls_Msg_Err <> '0000' then
    ls_Msg_Err := ls_Msg_Err + ' : ' + loc_Ud_lst_Node.item[0].attributes.getNamedItem('Message').Text;
  //------------------------------------------------------------------------
  //ls_Msg_Err := GetXmlErrorCode(rxxml);
  //------------------------------------------------------------------------
  try
    if ('0000' = ls_Msg_Err) then
    begin
      loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/Service/Data/Branch');
      locHDNO := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('HdNo').Text);
      locBRNO := TRim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('BrNo').Text);

      if scb_BranchCode.IndexOf(locBRNO) < 0 then
      begin
        GMessageBox('타사콜은 수정할 수 없습니다.', CDMSI);
        tmFormClose.Tag := 77; // 화면 닫기 설정값.
        loc_TmClose := 'CLOSE'; // 화면 종료 타이머 변수. CDS. 080830.
        tmFormClose.Enabled := True; // 화면을 닫는다.
        Exit;
      end;

      // [hjf-하드코딩] 2009.03.06 코리아(카드고객) 색상구분
			if (GS_PRJ_AREA = 'S') and (locBRNO = 'H849') then
      begin
        LblTop   .Color := clRed;       // 붉은색
        LblLeft  .Color := LblTop.Color;
        LblRigth .Color := LblTop.Color;
        LblBottom.Color := LblTop.Color;
        PnlTitle .Color := LblTop.Color;
        PnlWorkMemo.Color := LblTop.Color;
        PnlBtm.Color := LblTop.Color;
        PnlBox4.Color := LblTop.Color;
        Pnl_BubinV.Color := LblTop.Color;
			end else
			// [cds-하드코딩] 2011.10.11 코리아(카드고객) 색상구분 추가. 1577-5000.  신용카드 (1577-9482)
      if (GS_PRJ_AREA = 'S') and ( (locBRNO = 'G908') Or (locBRNO = 'G902') )  then
      begin
        LblTop   .Color := $00FE8769;   // 파란색
        LblLeft  .Color := LblTop.Color;
        LblRigth .Color := LblTop.Color;
        LblBottom.Color := LblTop.Color;
        PnlTitle .Color := LblTop.Color;
        PnlWorkMemo.Color := LblTop.Color;
        PnlBtm.Color := LblTop.Color;
        PnlBox4.Color := LblTop.Color;
        Pnl_BubinV.Color := LblTop.Color;
			end else
			// [cds-하드코딩] 2012.10.09 코리아(02-2000-0000) 색상구분 추가. KHS
      if (GS_PRJ_AREA = 'S') and (locBRNO = 'Q908') then
      begin
        LblTop   .Color := clGreen;   // 녹색
        LblLeft  .Color := LblTop.Color;
        LblRigth .Color := LblTop.Color;
        LblBottom.Color := LblTop.Color;
        PnlTitle .Color := LblTop.Color;
        PnlWorkMemo.Color := LblTop.Color;
        PnlBtm.Color := LblTop.Color;
        PnlBox4.Color := LblTop.Color;
        Pnl_BubinV.Color := LblTop.Color;
			end else
			// [cds-하드코딩] 2012.10.09 법인콜 색상구분 추가.
      if (GS_PRJ_AREA = 'S') and (locBRNO = 'G898') then
      begin
        LblTop   .Color := $0000C8FF;   // 골드
        LblLeft  .Color := LblTop.Color;
        LblRigth .Color := LblTop.Color;
        LblBottom.Color := LblTop.Color;
        PnlTitle .Color := LblTop.Color;
        PnlWorkMemo.Color := LblTop.Color;
        PnlBtm.Color := LblTop.Color;
        PnlBox4.Color := LblTop.Color;
        Pnl_BubinV.Color := LblTop.Color;
			end else
      begin
        LblTop   .Color := $00E0EDEA;   // 기본색
        LblLeft  .Color := LblTop.Color;
        LblRigth .Color := LblTop.Color;
        LblBottom.Color := LblTop.Color;
        PnlTitle .Color := LblTop.Color;
        PnlWorkMemo.Color := LblTop.Color;
        PnlBtm.Color := LblTop.Color;
        PnlBox4.Color := LblTop.Color;
        Pnl_BubinV.Color := LblTop.Color;
      end;

      sBr_Name := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('BrName').Text); // 지사명 읽기.
      locKNum := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('KeyNumber').Text); // 대표번호 읽기.
      sAccCenter := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('CallCenter').text); // 콜센터
      // 지사리스트에서 대표번호, 지사코드 index 찾기 및 설정.

      if Proc_BrNoListIdxFind(locBRNO, locKNum) = False then
      begin
        cboBranch.Tag := 10;
        // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
        cboBranch.Properties.Items.Clear; // 지사리스트 초기화.
        cboBranch.Properties.Items.Add(sBr_Name + '[' + locKNum + '] ' +  Copy(locHDNO + '     ', 1, 5) + '.' + Copy(locBRNO + '     ', 1, 5));
        // 본사코드   // 지사코드   // 지사명   // 대표번호
        cboBranch.ItemIndex := 0;
        cboBranch.Tag := 0;
        // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
      end;
      cxTxtBrNameCaption.Text := sBr_Name + ' / ' + locKNum;
      // 지사명, 대표번호 정보를 눈에 확~ 뜨이게, 크게 보여준다.

      loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/Service/Data/Driver');
      wk_br_Name := loc_Ud_lst_Node.item[0].attributes.getNamedItem('WkBrName').Text + '(' + loc_Ud_lst_Node.item[0].attributes.getNamedItem('WkBrNo').Text + ')';
      wk_sabun := loc_Ud_lst_Node.item[0].attributes.getNamedItem('WkSabun').Text;
      wk_Name := loc_Ud_lst_Node.item[0].attributes.getNamedItem('WkName').Text;
      wk_Tel := Copy(wk_Name, Pos('|', wk_Name) + 1, 15); // 기사전화번호 추출
      wk_Name := Copy(wk_Name, 1, Pos('|', wk_Name) - 1);
      // 기사 사번, 기사지사코드 저장.
      locWkSabun := wk_sabun; // 기사사번
      locWkBrNo := loc_Ud_lst_Node.item[0].attributes.getNamedItem('WkBrNo').Text;
      // 지사코드
//-      cxLblSeaWkSabun.Hint := wk_sabun; // 기사사번
      cxtWorkerNm.Text := wk_Name;

			loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/Service/Data/Customer');

      // 고객수정 버튼 활성화.
      lcsCu_seq := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CuSeq').Text;
      if lcsCu_seq <> '' then
      begin
        cxBtnCuUpdate.Enabled := True;
        cxBtnCuDel.Enabled := True;
      end else
      begin
        cxBtnCuUpdate.Enabled := False;
        cxBtnCuDel.Enabled := False;
      end;

      OrderState := loc_Ud_lst_Node.item[0].attributes.getNamedItem('ConfSt').Text; // 오더 상태 읽기.

      // KCP 카드 결제 일련번호. 2011-10-19
      // "추가접수" 모드 일때는 카드 거래일련번호 를 읽지 않는다.
			try
				Pay_Gubun := loc_Ud_lst_Node.item[0].attributes.getNamedItem('PayMeth').Text;
				locCardPaySeq := '';

        if btnCmdUpdSave.Hint = '추가접수' then
				begin
          locCardPaySeq := '';
        end else
        begin
          if GS_PRJ_AREA = 'S' then
          begin
						locCardPaySeq := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CardPaySeq').Text;
					end else
          begin
						if Pay_Gubun = '0' then
							locCardPaySeq := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CardPaySeq').Text
						else
							locCardPaySeq := '';
          end;
        end;
      finally
      end;

      sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('PayMeth').Text;        //위치 이동 2011.11.25 KHS 법인콜체크박스 초기화문제
      //---------------------------- 2011-11-11.
      BtnPlusYN.Hint := 'NOCHANGE';

      PayMethod := sTemp;
      BtnPlusYN.Hint := '';

      //----------------------------
      Application.ProcessMessages;

      // 플러스콜 상태 설정. 2010.10.03
      // 플러스콜 여부(수도권만 사용함) --> 2011-11-10 법인콜로 용도변경 사용.
			if GS_PRJ_AREA = 'S' then
      begin
				sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('PlusYn').Text;
        BtnPlusYN.Tag := 20;
        if sTemp = 'y' then
          BtnPlusYN.Down := True
				else
					BtnPlusYN.Down := False;
				BtnPlusYN.Tag := 0;
      end;

			//================================= 고객정보 Display Start. =====================================
      edtCuName.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CuName').Text;

			sContent := StringReplace(loc_Ud_lst_Node.item[0].attributes.getNamedItem('Info').Text, '|', '¶',  [rfReplaceAll]);
      if Trim(sContent) <> '' then
      begin
   			ls_Rcrd := TStringList.Create;
        try
    			GetTextSeperationEx2('¶', sContent, ls_Rcrd);
    			for ia := 0 to ls_Rcrd.Count - 1 do
    			begin
            if ia = 0 then
              meoCuCCMemo.Text := ls_Rcrd[ia]
            else
              meoCuCCMemo.Text := meoCuCCMemo.Text + #13#10 + ls_Rcrd[ia];
    			end;
        finally
          FreeAndNil(ls_Rcrd);
        end;
      end;

			// 문제의 고객상담 호출실패 2011.03.07
			sContent := StringReplace(loc_Ud_lst_Node.item[0].attributes.getNamedItem('PdaInfo').Text, '|', '¶', [rfReplaceAll]);
      if Trim(sContent) <> '' then
      begin
   			ls_Rcrd := TStringList.Create;
        try
    			GetTextSeperationEx2('¶', sContent, ls_Rcrd);
  	  		for ia := 0 to ls_Rcrd.Count - 1 do
  		  	begin
            if ia = 0 then
              meoCuWorMemo.Text := ls_Rcrd[ia]
            else
              meoCuWorMemo.Text := meoCuWorMemo.Text + #13#10 + ls_Rcrd[ia];
    			end;
        finally
          FreeAndNil(ls_Rcrd);
        end;
      end;

			iBarIndex := StrtoIntDef(loc_Ud_lst_Node.item[0].attributes.getNamedItem('CuType').Text, 0);

      CBCuGB.Hint := 'Clear';
			if (iBarIndex = 0) or (iBarIndex = 4) then
			begin
				CbCuGb.ItemIndex := 0;
        CbCuGb.Hint := '1';
				// 0:개인, 4:불량 둘다 일반으로 처리(불량코드는 사용안함)
			end	else
      if iBarIndex = 1 then
			begin
				CbCuGb.ItemIndex := 1;
        CbCuGb.Hint := '2';
			end else
      if iBarIndex = 3 then
			begin
				CbCuGb.ItemIndex := 2;
        CbCuGb.Hint := '3';
			end	else
			begin
				CbCuGb.ItemIndex := 0;
        CbCuGb.Hint := '1';
			end;
      CBCuGB.Hint := '';

      // 고객 구분에 따른 색상 표시
      if (iBarIndex = 0) or (iBarIndex = 2) then
      begin
        Proc_SetFormColor_3(0);
      end else
      if iBarIndex = 1 then
      begin
        Proc_SetFormColor_3(1);
      end else
      if iBarIndex = 3 then
      begin
        Proc_SetFormColor_3(3);
      end;

      if btnCmdUpdSave.Hint <> '추가접수' then
      begin
        shpModifyTitle.Visible := True;
        PnlModifyTitle.Visible := True;
      end;

      sTemp2 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('MemName').Text; // 상담원명
      StCd := loc_Ud_lst_Node.item[0].attributes.getNamedItem('ConfSt').Text; // 오더 상태 읽기.
      CReason := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CReason').Text; // 취소사유
      cxtJoinNum.Hint := Trim(StCd); // 오더 상태값을 저장한다.
      // 오더 상태 코드를 문자열로 변경해준다.
      sTemp := Func_OrderStateConvert(StCd);
      GrpCReason.Caption := Format(' 오더상태 : %s', [sTemp]);
			lblCReason.Caption := CReason;

      grpOrderInfoView.Caption := '상세 정보';


      if Trim(CReason) = '' then
      begin
        PnlModifyTitle.Height := 17;
        // 오더관련 정보 보이기..
        cxLblOrderUpInfo.Caption := '접수:' + cxtJoinNum.Text + ' 상태:' + sTemp + ' 상담원:' + sTemp2;
      end else
      begin
        PnlModifyTitle.Height := 30;
        // 오더관련 정보 보이기..
        cxLblOrderUpInfo.Caption := '접수:' + cxtJoinNum.Text + ' 상태:' + sTemp + ' 상담원:' + sTemp2 + #10 +
                                    '[ '+CReason+' ]';
      end;

      sOrderUpInfo :=                '접 수 번 호 : ' + cxtJoinNum.Text + #10;
      sOrderUpInfo := sOrderUpInfo + '접수 상담원 : ' + sTemp2 + #10;
      sOrderUpInfo := sOrderUpInfo + '오 더 상 태 : ' + sTemp + #10;
      sTemp2 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('FinDate').Text; // 최초접수시간
      sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('InDate').Text; // 접수시간
      sOrderUpInfo := sOrderUpInfo + '최초접수시간 : ' + Copy(sTemp2, 1, 19) + #10;
      sOrderUpInfo := sOrderUpInfo + '접 수 시 간 : ' + Copy(sTemp, 1, 19) + #10;
      sOrderUpInfo := sOrderUpInfo + '배차기사이름 : [' + wk_sabun + ']' +  wk_Name + #10;
      sOrderUpInfo := sOrderUpInfo + '배차기사핸폰 : ' + wk_Tel + #10;
      sOrderUpInfo := sOrderUpInfo + '배차기사소속 : ' + wk_br_Name;
      cxMeoOrderUpInfo.Text := sOrderUpInfo;

      if loc_Ud_lst_Node.item[0].attributes.getNamedItem('SMS').Text = 'n' then
        BtnCuSmsNo.Down := True
      else
      if loc_Ud_lst_Node.item[0].attributes.getNamedItem('SMS').Text = 'y' then
        BtnCuSmsNo.Down := False;

      // 저장 요금을 적용 한다.
      sNowRate := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Charge').Text;
      curRate.Value := StrToIntDef(sNowRate, 0);
			if ((gsMyMainTelUse = 'FALSE') or (GSMyMainTelOrderChargeCheck)) and (not IsMultiCallFixPrice) then
        OrgRate := curRate.Value;

      lblCuMile.Caption := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CurMlg').Text;
      lblCuMileUnit.Caption := loc_Ud_lst_Node.item[0].attributes.getNamedItem('PrizeMlg').Text; //지사설정 지금 단위
      lblCuMileCnt.Caption := loc_Ud_lst_Node.item[0].attributes.getNamedItem('PrizeCnt').Text;
      sProdName := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Prize').Text;
      SetMileColorChange;
      PostTime := loc_Ud_lst_Node.item[0].attributes.getNamedItem('PostTime').Text;
      edtPostPay.Value := StrToIntDef(loc_Ud_lst_Node.item[0].attributes.getNamedItem('PostCharge').Text, 0);

      // 법인코드
      cxtCuBubin.Hint := TRim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('BGroup').Text);
      // + ',' + ed_MaddBrch.Text;
      if cxtCuBubin.Hint <> '' then
      begin
        sTemp := TRim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('BGName').Text); // 법인명
        sTemp2 := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('BGDName').Text); // 법인부서명
        cxtCuBubin.Text := sTemp + ' | ' + sTemp2;
        lblCuBubinName.Caption := '법인고객 [ ' + Trim(cxtCuBubin.Text) + ' ]';
      end;

      // 출발지 정보

      // 20120805 좌표 오류 체크 LYB
      gJONStaChkXY.Area1 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Area').Text;
      gJONStaChkXY.Area2 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Area2').Text;
      gJONStaChkXY.Area3 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Area3').Text;
      gJONStaChkXY.Area4 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Area4').Text;
      gJONStaChkXY.Area5 := lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3;
      gJONStaChkXY.X := loc_Ud_lst_Node.item[0].attributes.getNamedItem('MapX').Text;
      gJONStaChkXY.Y := loc_Ud_lst_Node.item[0].attributes.getNamedItem('MapY').Text;
      gJONStaChkXY.GUIDE_X := loc_Ud_lst_Node.item[0].attributes.getNamedItem('MapX').Text;
      gJONStaChkXY.GUIDE_Y := loc_Ud_lst_Node.item[0].attributes.getNamedItem('MapY').Text;
      gJONStaChkXY.Gubun := 'U';

      lcsSta1 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Area').Text;
      lcsSta2 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Area2').Text;
      lcsSta3 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Area3').Text;
      cxtStartAreaDetail.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Area4').Text;
			cxtStartAreaDetail.Hint := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Area5').Text;

			cxtStartXval.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('MapX').Text;
      cxtStartXval.Hint := loc_Ud_lst_Node.item[0].attributes.getNamedItem('MapX').Text;
			cxtStartYval.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('MapY').Text;
      cxtStartYval.Hint := loc_Ud_lst_Node.item[0].attributes.getNamedItem('MapY').Text;

      cxtStartGUIDEXval.Text := cxtStartXval.Text;
      cxtStartGUIDEYval.Text := cxtStartYval.Text;

      lblStartAreaName.Text := lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3;

      // 출발지 세부지명
      if Trim(cxtStartAreaDetail.Hint) <> '' then
        meoStartArea.Text := cxtStartAreaDetail.Hint
      else if Trim(cxtStartAreaDetail.Text) <> '' then
        meoStartArea.Text := cxtStartAreaDetail.Text
      else if Trim(lcsSta3) <> '' then
        meoStartArea.Text := lcsSta3;

      MarkAllWords(lblStartAreaName, UpperCase(meoStartArea.Text), clRed, [fsBold]);
      MarkAllWords(cxtStartAreaDetail, UpperCase(meoStartArea.Text), clRed, [fsBold]);

      // 도착지 정보
      lcsEnd1 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('EdArea').Text;
      lcsEnd2 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('EdArea2').Text;
      lcsEnd3 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('EdArea3').Text;
      cxtEndAreaDetail.Caption := loc_Ud_lst_Node.item[0].attributes.getNamedItem('EdArea4').Text;
      cxtEndAreaDetail.Hint := loc_Ud_lst_Node.item[0].attributes.getNamedItem('EdArea5').Text;

      gJONEndChkXY.X := loc_Ud_lst_Node.item[0].attributes.getNamedItem('DestX').Text;
      gJONEndChkXY.Y := loc_Ud_lst_Node.item[0].attributes.getNamedItem('DestY').Text;

      gJONEndChkXY.GUIDE_X := loc_Ud_lst_Node.item[0].attributes.getNamedItem('DestX').Text;
      gJONEndChkXY.GUIDE_Y := loc_Ud_lst_Node.item[0].attributes.getNamedItem('DestY').Text;

      cxtEndXval.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('DestX').Text;
      cxtEndYval.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('DestY').Text;
      cxtEndXval.Hint := loc_Ud_lst_Node.item[0].attributes.getNamedItem('DestX').Text;
      cxtEndYval.Hint := loc_Ud_lst_Node.item[0].attributes.getNamedItem('DestY').Text;

			cxtEndGUIDEXval.Text :=	cxtEndXval.Text;
      cxtEndGUIDEYval.Text := cxtEndYval.Text;

      lblEndAreaName.Caption := lcsEnd1 + ' ' + lcsEnd2 + ' ' + lcsEnd3;
      cxReEndArea.Text := lblEndAreaName.Caption + ' ' + cxtEndAreaDetail.Caption;

      //Application.ProcessMessages;
      // 도착지 세부지명
      if Trim(cxtEndAreaDetail.Hint) <> '' then
        meoEndArea.Text := cxtEndAreaDetail.Hint
      else if Trim(cxtEndAreaDetail.Caption) <> '' then
        meoEndArea.Text := cxtEndAreaDetail.Caption
      else if Trim(lcsEnd3) <> '' then
        meoEndArea.Text := lcsEnd3;

      MarkAllWords(cxReEndArea, UpperCase(meoEndArea.Text), clRed, [fsBold]);
   //-------------------------------------------------------------------------------------------
   //      과거내역을 가지고 취소율, 지사별 설정값에 의한 고객등급 결정
   //-------------------------------------------------------------------------------------------
      iend := StrToIntDef(loc_Ud_lst_Node.item[0].attributes.getNamedItem('EndCnt').Text, 0);
      iCancel := StrToIntDef(loc_Ud_lst_Node.item[0].attributes.getNamedItem('CancelCnt').Text, 0);
      iTotal := iEnd + iCancel;
      lblCuCntTotal.Caption := IntToStr(iTotal);
      lblCoCntTotal.Caption := IntToStr(iend);
      if (iTotal) > 0 then
      begin
        fcancelRate := ((iCancel / (iend + iCancel)) * 100);
        lblCuCancelR.Caption := IntToStr(Round(fCancelRate)) + '%';
      end else
      begin
        lblCuCancelR.Caption := '0%';
      end;

   // 고객등급사용구분[0:자동등급, 1:직접설정]
   //sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('LevelType').Text;
   //if sTemp = '0' then begin
      //CU_LEVEL_TYPE : 0 : 고객 등급 자동계산
      iGrade1 := StrToIntDef(loc_Ud_lst_Node.item[0].attributes.getNamedItem('Grade1').Text, 5);
      iGrade2 := StrToIntDef(loc_Ud_lst_Node.item[0].attributes.getNamedItem('Grade2').Text, 15);
      Application.ProcessMessages;
      if iEnd >= iGrade1 then
      begin
        // frm_Jon03.frmJON011 폼의 고객 자동등급별 라벨 칼라를 변경해 준다.
        Proc_SetFormColor_2(0);
      end else
      if iEnd >= iGrade2 then
      begin
        // frm_Jon03.frmJON011 폼의 고객 자동등급별 라벨 칼라를 변경해 준다.
        Proc_SetFormColor_2(1);
      end else
      begin
        // frm_Jon03.frmJON011 폼의 고객 자동등급별 라벨 칼라를 변경해 준다.
        Proc_SetFormColor_2(2);
      end;

      //CU_LEVEL_TYPE : 1 : 고객 등급 직접입력 설정.
      SetCustLevelSeq(loc_Ud_lst_Node.item[0].attributes.getNamedItem('LevelCD').Text);

			loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/Service/Data/Customer/ViaInfo');
			iViaCNT := strtoint(loc_Ud_lst_Node.item[0].attributes.getNamedItem('Count').Text);
			ViaADDTag := iViaCNT;
			if iViaCNT > 0 then
			begin
				loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/Service/Data/Customer/ViaInfo/Via');
				for i := 0 to iViaCNT - 1 do
				begin
					if i = 0 then
					begin
						meoViaArea1.Text := loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area5').Text;
						cxViaAreaName1.Caption := loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area1').Text + ' '
																		+ loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area2').Text + ' '
																		+ loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area3').Text;
				    Via_Info[1].ViaSA1 := loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area1').Text;
						Via_Info[1].ViaSA2 := loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area2').Text;
						Via_Info[1].ViaSA3 := loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area3').Text;
						Via_Info[1].ViaAreaDetail := loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area4').Text;
						Via_Info[1].XposVia := loc_Ud_lst_Node.item[i].attributes.getNamedItem('MapX').Text;
						Via_Info[1].YposVia := loc_Ud_lst_Node.item[i].attributes.getNamedItem('MapY').Text;
            Via_Info[1].DocId := '';
            Via_Info[1].CellSel := '';
            Via_Info[1].SchWord := '';
					end else
					begin
						meoViaArea[i+1].Text := loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area5').Text;
						cxViaAreaName[i+1].Caption := loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area1').Text + ' '
																				+ loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area2').Text + ' '
																				+ loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area3').Text;
						Via_Info[i+1].ViaSA1 := loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area1').Text;
						Via_Info[i+1].ViaSA2 := loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area2').Text;
						Via_Info[i+1].ViaSA3 := loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area3').Text;
						Via_Info[i+1].ViaAreaDetail := loc_Ud_lst_Node.item[i].attributes.getNamedItem('Area4').Text;
						Via_Info[i+1].XposVia := loc_Ud_lst_Node.item[i].attributes.getNamedItem('MapX').Text;
						Via_Info[i+1].YposVia := loc_Ud_lst_Node.item[i].attributes.getNamedItem('MapY').Text;
            Via_Info[i+1].DocId := '';
            Via_Info[i+1].CellSel := '';
            Via_Info[i+1].SchWord := '';
					end;
				end;
        Self.Height := Self.Height + ( iViaCNT * 22 );

        // 수정후 지도보기 클릭 시 좌표 사용하기 위해 처리
    		for i := 0 to iViaCNT - 1 do
    		begin
  				if Via_Info[i + 1].XposVia <> '' then
    			begin
  					GT_PASS_INFO[Self.Tag][i].AREA1 := Via_Info[i+1].ViaSA1;
  					GT_PASS_INFO[Self.Tag][i].AREA2 := Via_Info[i+1].ViaSA2;
  					GT_PASS_INFO[Self.Tag][i].AREA3 := Via_Info[i+1].ViaSA3;
  					GT_PASS_INFO[Self.Tag][i].AREA4 := Via_Info[i+1].ViaAreaDetail;
  					GT_PASS_INFO[Self.Tag][i].AREA5 := meoViaArea[i+1].Text;
  					GT_PASS_INFO[Self.Tag][i].DOCID := Via_Info[i+1].DocId;
  					GT_PASS_INFO[Self.Tag][i].CELLS := Via_Info[i+1].CellSel;
  					GT_PASS_INFO[Self.Tag][i].SWORD := Via_Info[i+1].ViaAreaDetail;
  					GT_PASS_INFO[Self.Tag][i].MAP_X := Via_Info[i+1].XposVia;
  					GT_PASS_INFO[Self.Tag][i].MAP_Y := Via_Info[i+1].YposVia;
    			end;
        end;

				meoViaArea1.Enabled := True;
				cxViaAreaName1.Enabled := True;
				BtnViaAdd.Enabled := True;
			end;

			loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/Service/Data/Customer');
      if FHidePhoneNum then
      begin
        cxtCuTel.Text := '***********';
      end else
      begin
				sCustTel    := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CustTel').Text;
        if cxtJoinNum.Tag = 1 then  // 오더 구분값 cxtJoinNum.Tag --> 1:오늘(CDMS_A01_Today), 2:과거(CDMS_A01)
        begin
          cxtCuTel.Text := func_Cust_Tel(sCustTel, locBrNo, sAccCenter, True);   // sBrNo
        end else
        begin
          cxtCuTel.Text := func_Cust_Tel(sCustTel, locBrNo, sAccCenter, False);
        end;
      end;
      cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);

      // 조회당시 마킹된 또는 정상적인 전화번호 정보를 저장하고, 수정할때, 전화번호가 변경되었는지 비교자료로 사용함. cds. 090421.
      locsCuTelTxtBoxVal:= cxtCuTel.Text;

      //cxtCuTel.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CustTel').Text; // 전화1
      cxtCuTel2.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CustTel2').Text; // 전화2
      //locsCuTel := cxtCuTel.Text;
      locsCuTel := sCustTel;
			// 전화번호 감출경우(권한없을때) 수정저장시 이값을 참조.
      locsCuTel2 := cxtCuTel2.Text;
      // 전화번호 감출경우(권한없을때) 수정저장시 이값을 참조.
      gsCuTelHint := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]); // 고객 조회 전화번호 저장.
      sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('PreTime').Text;
      // 예약시간
      if Length(Trim(sTemp)) > 17 then
      begin
        dtpResvDate.Text := Copy(sTemp, 1, 10); // 예약시간
        dtpResvTime.Text := Copy(sTemp, 12, 8);
        dtpResvDate.Enabled := (OrderState = 'R');
        dtpResvTime.Enabled := (OrderState = 'R');

        BitMap1 := TBitMap.Create;
        try
          BitMap1.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Image\Alarm.bmp');
          BtnResvView.OptionsImage.Glyph := BitMap1;
        finally
          BitMap1.Free;
        end;

        sTemp := FormatDateTime('YYYY-MM-DD', dtpResvDate.Date) + ' ' + FormatDateTime('HH:NN:SS', dtpResvTime.Time);
        if BtnResJ.Down then sTemp := sTemp + ' [접수] 상태로 예약' else
        if BtnResD.Down then sTemp := sTemp + ' [대기] 상태로 예약';

        BtnResvView.Hint := sTemp;
        BtnResvView.ShowHint := True;

        BtnResv.Tag := 1;
      end;
      sTemp := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('PriceYN').Text);
      // 요금 미지정
      if sTemp = 'y' then
        chkNoSet.Down := True // 요금 미지정
      else
        chkNoSet.Down := False;

      // hjf-고객상황실설정(수정정보 조회)
      if Assigned(loc_Ud_lst_Node.item[0].attributes.getNamedItem('CuBrTelYN')) then
        CustBrTelYN := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CuBrTelYN').Text;
      sTemp := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('BrTelYN').Text);
      // 상황실 번호 보기..
      if sTemp = 'y' then
      begin
        BtnCenterMng.Down := True;
        BtnCenterMng.Visible := True;
      end else
      if sTemp = 'n' then
      begin
        BtnCenterMng.Down := False;
				BtnCenterMng.Visible := True;
      end else
      begin
        BtnCenterMng.Down := False;
        BtnCenterMng.Visible := False;
      end;

      sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AuthUrl').Text;
      meoBigo.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('ConfInfo').Text;
      // 적요

      sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Option').text;
      if sTemp = 'M' then
        BtnOptionSexM.Down := True
      else if sTemp = 'F' then
        BtnOptionSexF.Down := True
      else
      begin
        BtnOptionSexM.Down := False;
        BtnOptionSexF.Down := False;
      end;

      sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('DriverOption').text;
			sStickCall := Copy(sTemp,2,1);
			if sStickCall = 'y' then cb_04.Down := True;
			sTaksong   := Copy(sTemp,3,1);
			if sTaksong = 'y' then cb_00.Down := True;

      // 경유요금 :::::::: 신버전 추가 기능 개발..(법인기능요청으로,,개발,,)
      cxCurPathRate.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('ViaCharge').Text;
      cxCurWaitTmRate.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('WaitCharge').Text;
      // 대기요금
			sTemp := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('WaitTime').Text);
			// 대기시간
      if Length(sTemp) > 3 then
      begin
        cxTmWaitTime.Text := Copy(sTemp, 1, 5); // 대기시간
				curKm.Text := Copy(sTemp, 6, 7) + 'Km'; // 요금 Km 값
        fCruKm := StrToFloatDef(Copy(sTemp, 6, 7), 0);
      end else
        cxTmWaitTime.Text := '00:00';

      cxCurRevisionRate.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AddCharge').Text; // 보정금액
      sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('ConfInfo2').Text; // 적요투(2)
      meoBigo2.Text := ReplaceAll(sTemp, '|', CRLF);
			cxDriverCharge.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('DriverCharge').Text; // 기사수수료

			//2013.03.30 khs
			sAppCode        := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppCode').Text;
			sAppLastRegDate := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppLastRegDate').Text;
			sAppLastDelDate := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppLastDelDate').Text;
			sAppLastFinishDate := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppLastFinishDate').Text;
			sAppCuArea      := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppCuArea').Text;
			sAppTermModel   := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppTermModel').Text;
			sAppTermOS      := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppTermOS').Text;
			sAppDelYn       := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppDelYn').Text;
			if sAppDelYn = 'y' then sAppDelYn := '어플삭제'
			else sAppDelYn := '어플사용';

			if sAppCode = '' then btnCustAppinfo.Enabled := False
                  	   else btnCustAppinfo.Enabled := True;
			SetCustAppInfo(
					sAppCode
				, sAppLastRegDate
				, sAppLastDelDate
				, sAppLastFinishDate
				, sAppCuArea
				, sAppTermModel
				, sAppTermOS
				, sAppDelYn
			);

      sTemp := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('ConfOptions').Text);
      // 콜무 사용 여부
      if sTemp = 'y' then
        BtnOptionCallMu.Down := True // 수수료 없음
      else
        BtnOptionCallMu.Down := False;
	 //================================= 고객정보 Display End. =====================================
			loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/Service/Data/AcceptInfo');
			iRCnt := StrToIntDef(loc_Ud_lst_Node.item[0].attributes.getNamedItem('Count').Text, 0);


      loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/Service/Data/AcceptInfo/Accept');
      if iRcnt > 0 then
			begin // 과거 이용내역을 보여준다.
        sDate := StartDateTime('yyyy-mm-dd hh:nn:ss');
				// 오늘 영업일자 얻기..
        try
          sMultiCallGB := loc_Ud_lst_Node.item[0].attributes.getNamedItem('MultiCallGB').Text; // 멀티콜
					if sMultiCallGB <> '' then
						GrpCReason.Caption := Trim(GrpCReason.Caption) + Format('   %s', [sMultiCallGB]);
					ACount := 0;
					frm_JON012.cxGVeOrderList.BeginUpdate;
					for i := 1 to iRcnt do
          begin
						if loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('InTime').Text = '' then
              Continue;

            Inc(ACount);

            iBidx := frm_JON012.cxGVeOrderList.DataController.AppendRecord;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('No').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := iBidx;

						sCurMileage := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('CurMileage').Text, 0.0));
						sMileage    := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0));

            locaryOrderList[i, 0] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('InTime').Text; // 접수일자
						ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('최초접수일시').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 0];

            locaryOrderList[i, 1] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Status').Text; // 접수상태
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('상태').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 1];

						if loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Status').Text = 'gi' then
						begin
							locaryOrderList[i, 2] := '경품지급';
							locaryOrderList[i, 3] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '원 경품지급';
							sMileage := '-' + sMileage;
						end else
            if loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Status').Text = 'cs' then
						begin
							locaryOrderList[i, 2] := '가격수정';
							locaryOrderList[i, 3] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '원 가격수정';
						end else
            if loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Status').Text = 'bi' then
						begin
							locaryOrderList[i, 2] := '보정입력';
							locaryOrderList[i, 3] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '원 보정입력';
							sMileage := '+' + sMileage;
							end
						else begin
							locaryOrderList[i, 2] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area5').Text;
							locaryOrderList[i, 3] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea5').Text;
						end;

//            locaryOrderList[i, 2] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area5').Text;
            // 출발지  // + '/' + st_area2 + st_area3 + st_area4;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('출발지').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 2];

//            locaryOrderList[i, 3] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea5').Text;
            // 도착지  // + '/' + ed_area2 + ed_area3 + ed_area4;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('도착지').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 3];

            locaryOrderList[i, 4] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('WkSabun').Text; // 기사사번
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('기사').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 4];

            locaryOrderList[i, 5] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Charge').Text, 0.0));
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('요금').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 5];

						if StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0) < 0 then
						begin
							locaryOrderList[i, 6] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0))
																		 + '(마일리지사용) (잔액 : ' + sCurMileage + ')';
						end	else
            if StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0) > 0 then
						begin
							locaryOrderList[i, 6] := '+'+formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0))
																		 + ' (잔액 : ' + sCurMileage + ')';
						end else
            if StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0) = 0 then
						begin
							locaryOrderList[i, 6] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0));
						end;

//            locaryOrderList[i, 6] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0));
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('마일리지').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 6];

            locaryOrderList[i, 7] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('CReason').Text; // 취소사유
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('취소사유').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 7];

            locaryOrderList[i, 8] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('ConfInfo').Text; // 적요
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('적요').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 8];

            locaryOrderList[i, 9] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Member').Text; // 접수자
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('접수자').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 9];

            locaryOrderList[i, 10] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('KeyNumber').Text; // 대표번호
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('대표번호').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 10];

            locaryOrderList[i, 11] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Memo').Text; // 메모
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('고객메모').Index;

            sTemp := '';
						sContent := StringReplace(locaryOrderList[i, 11], '|', '¶',  [rfReplaceAll]);
            if Trim(sContent) <> '' then
            begin
         			ls_Rcrd := TStringList.Create;
              try
          			GetTextSeperationEx2('¶', sContent, ls_Rcrd);
          			for ia := 0 to ls_Rcrd.Count - 1 do
          			begin
                  if sTemp = '' then
                    sTemp := sTemp + ls_Rcrd[ia]
                  else
                    sTemp := sTemp + #13#10 + ls_Rcrd[ia];
          			end;
              finally
                FreeAndNil(ls_Rcrd);
              end;
            end;

            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := sTemp;

            locaryOrderList[i, 12] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('ConfSlip').Text; // 접수번호
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('접수번호').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 12];

            locaryOrderList[i, 13] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('InDate').Text; // 접수일시
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('접수일시').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 13];

            locaryOrderList[i, 14] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Status').Text; // 접수상태
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('상태코드2').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 14];

            sCustTel := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('CustTel').Text;
            sBrNo := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('ConfBrch').Text;
            sAccCenter := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('AcceptCenter').Text;
            locaryOrderList[i, 15] := func_Cust_Tel(sCustTel, sBrNo, sAccCenter, locaryOrderList[i, 13]); // 고객전화번호
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('고객전화').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 15];

            locaryOrderList[i, 16] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('MapX').Text; // 출좌표X
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('출좌표X').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 16];

            locaryOrderList[i, 17] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('MapY').Text; // 출좌표Y
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('출좌표Y').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 17];

            locaryOrderList[i, 18] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('출1').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 18];

            locaryOrderList[i, 19] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area2').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('출2').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 19];

            locaryOrderList[i, 20] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area3').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('출3').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 20];

            locaryOrderList[i, 21] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area4').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('출4').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 21];

            locaryOrderList[i, 22] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area5').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('출5').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 22];

            locaryOrderList[i, 23] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('DestX').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('도좌표X').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 23];

            locaryOrderList[i, 24] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('DestY').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('도좌표Y').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 24];

            locaryOrderList[i, 25] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('도1').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 25];

            locaryOrderList[i, 26] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea2').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('도2').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 26];

            locaryOrderList[i, 27] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea3').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('도3').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 27];

            locaryOrderList[i, 28] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea4').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('도4').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 28];

            locaryOrderList[i, 29] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea5').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('도5').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 29];

            locaryOrderList[i, 30] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('MultiCallGB').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('복수콜').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 30];

            locaryOrderList[i, 31] := IntToStr(ACount);
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('No').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 31];

            locaryOrderList[i, 32] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('BrName').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('지사명').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 32];

            locaryOrderList[i, 33] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Callcenter').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('콜센터코드').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 33];

          // 2011.03.07 전화2는 접수번호조회시에는 적용안됨
//            locaryOrderList[i, 34] := 'x';
						locaryOrderList[i, 34] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('OrderType').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('오더타입').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 34]);

          // 2012.08.12 배차시간, 완료시간 추가 KHS
            locaryOrderList[i, 35] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('BaechaTime').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('배차시간').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 35]);

            locaryOrderList[i, 36] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('FinishTime').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('완료시간').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 36]);

            locaryOrderList[i, 37] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('WkHead').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('기사본사코드').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 37]);

            locaryOrderList[i, 38] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('WkBrch').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('기사지사코드').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 38]);

            locaryOrderList[i, 39] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('WkCenter').Text;
						ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('기사콜센터').Index;
						Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 39]);

						locaryOrderList[i, 40] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('FirstInSource').Text; // 어플접수여부 2013.03.30
						ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('접수구분').Index;
						Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 40]);

						// 당일오더 건에 대해선 칼라를 변경하여 구분이 될수 있게 해준다.
            if i = 1 then
            begin
							sInDate := locaryOrderList[i, 13]; // 접수일시
              sInDate := StringReplace(sInDate, '/', '-', [rfReplaceAll]);
							sInDate := copy(sInDate, 1, 19);
              if sInDate >= sDate then
              begin
                SetCustControlColor(True);
								// 고객정보 화면의 라벨칼라를 변경해준다.
              end else
              begin
                SetCustControlColor(False);
              end;
            end;
          end;

        finally
          Frm_JON012.cxGVeOrderList.EndUpdate;
        end;
      end;
    end else
    begin
      GMessagebox(MSG012 + CRLF + ls_Msg_Err, CDMSE);
    end;

    // CID 조회 일때는 발신전화없음 멘트 감춤..
    cxtCallTelNum.Text := cxtCuTel.Text; // 발신전화번호
    cxtCallTelNum.StyleDisabled.TextColor := $00FAE1CD;
    // 진한 칼라 : $00555151,   // 옅은 칼라 : $00FAE1CD;

 // 당일오더에 대해서만 Lock을 걸어준다.
    if (btnCmdUpdSave.Enabled = True) and (cxtJoinNum.Tag = 1) then
      Proc_AcceptLock('1'); // 오더 수정 Lock을 설정.

{    frm_Jon03.frmJON011[Self.Tag].btnUpdate.Enabled := True;
    frm_JON03.frmJON011[Self.Tag].btnOKCashback.Enabled := True;
    frm_Jon03.frmJON011[Self.Tag].btnMileOut.Enabled := True;
    frm_Jon03.frmJON011[Self.Tag].btnMileCharge.Enabled := True;
    frm_Jon03.frmJON011[Self.Tag].cxBtnMileList.Enabled := True;
}

    // 지사변경 제한.[이유:고객조회 후 지사변경시 조회한 고객정보 일부유실 경고메시지 띄우기 위함임]
    cboBranch.Properties.ReadOnly := True;

    pnlJonMain.Enabled := True;
    //JobProcessLight(False);
    if Self.Visible = True then
    begin
      meoEndArea.SetFocus;
      meoStartArea.SetFocus;
    end;
    GB_JON03SELECT_GB := True;
    // 접수현황에서 수정전문 요청시 결과받았는지의 여부.

    Frm_JON012.cxlbSlip.Caption := cxtJoinNum.Text;
    // 오더접수번호
    cxtCallTelNum.Text := StringReplace(cxtCallTelNum.Text, '-', '', [rfReplaceAll]);
    Frm_JON012.cxlbCustTel.Caption := locsCuTel; // 고객전화번호 읽기.
		Frm_JON012.cxlbKeyNum.Caption := Proc_MainKeyNumberSearch; // 대표번호 읽기.

    cxCallTitle.Caption := cxCallTitle.Hint + strtocall(cxtCuTel.Text);

    for i := 0 to 19 do
    begin
      if Frm_Main.JON01MNG[i].Tag = Self.Tag then
      begin
        Frm_Main.JON01MNG[i].Caption := cxCallTitle.Caption;
        Break;
      end;
    end;
	except
		on e: exception do
    begin
      sTemp := 'JON01[Proc_ConfSlipSelectResult][수정조회결과]예외처리 발생:'
        + e.Message;
      ShowMessage(sTemp);
      GB_JON03SELECT_GB := True;
      // 접수현황에서 수정전문 요청시 결과받았는지의 여부.

      Assert(False, E.Message);
    end;
  end;
end;

// 고객 출발지(START), 도착지(DEST) 정보를 저장한다.
procedure TFrm_JON01.Proc_Cust_AreaSave(sStartDest: string);
var
  ls_TxLoad, ls_TxQry, sCl_Key, sQueryTemp : string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
  if lcsCu_seq = '' then
  begin
    ShowMessage('고객 일련번호가 없습니다. 고객정보를 조회 한 다음 [저장] 하세요!');
    Exit;
  end;
  if cxtCallTelNum.Text = '' then
  begin
    ShowMessage('고객 전화번호가 없습니다. 고객정보를 조회 한 다음 [저장] 하세요!');
    Exit;
  end;

  if sStartDest = 'START' then
  begin
    // 출발지 정보를 저장.
    fGet_BlowFish_Query(GSQ_CUSTOMER_START_SAVE, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [lcsSta1, lcsSta2, lcsSta3, cxtStartAreaDetail.Text, meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text, lcsCu_seq]);
    sCl_Key := 'CUSE0011';
  end else
  begin
    // 도착지 정보를 저장.
    fGet_BlowFish_Query(GSQ_CUSTOMER_DEST_SAVE, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [lcsEnd1, lcsEnd2, lcsEnd3, cxtEndAreaDetail.Caption, meoEndArea.Text, cxtEndXval.Text, cxtEndYval.Text, lcsCu_seq]);
    sCl_Key := 'CUSE0012';
  end;

  try
    ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', sCl_Key);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'QueryString', ls_TxQry);

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      Proc_JobAfterProc(True, False);

      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);

          tmFormClose.Tag := 99; // 화면 닫기 설정값.
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, False);
    end;

  except
    on e: exception do
    begin
      pnlJonMain.Enabled := True;
      Screen.Cursor := crDefault;

      Assert(False, E.Message);
    end;
  end;
end;

// 전화번호 위치찾기 기본 위치를 정한다.
procedure TFrm_JON01.Proc_TellAreaFormCreate;
begin
  if Not Assigned(Frm_COM30) then Frm_COM30 := TFrm_COM30.Create(Nil);
  Frm_COM30.Tag := Self.Tag; // 폼의 index를 읽는다.
  Frm_COM30.Top :=  Self.Top + 88;    //2012.05.30 이영범
  Frm_COM30.Left := Self.Left - (Frm_COM30.Width + 1);  //2012.05.30 이영범
  Frm_COM30.Show;
  Frm_COM30.cxListViewArea.Clear;
end;

function TFrm_JON01.IsBubuinUse: Boolean;
begin
  Result := GB_JON_USEBUBIN;
end;

// 전화번호 로 위경도 좌표값 검색 한다..
procedure TFrm_JON01.Proc_TellNumSearchNEData;
var
  ls_TxLoad, sDDD, sTell, sTypeGubn: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin

  // 4자리가 안되면 Exit;
  if not Func_TellNumSearchCheck then
  begin
    Exit;
  end;

  if Length(cxTxtTelNESelect.Text) <> 4 then
    sTypeGubn := '1' // 전화번호 풀매칭 검색..
  else
    sTypeGubn := '2'; // 전화번호 뒷4자리 검색..

  // DDD 번호 없이 입력하였는지의 여부를 체크;
  if Copy(cxTxtTelNESelect.Text, 1, 1) <> '0' then
  begin
    // 상담지역 설정값 저장.[전화번호 검색시 사용함]  CDS. 08082.
    if GS_COUNSEL_AREA <> '' then
    begin
      if GS_COUNSEL_AREA = '002' then
        sDDD := '02' // 기본 상담지역 DDD 번호 입력.
      else
        sDDD := GS_COUNSEL_AREA; // 기본 상담지역 DDD 번호 입력.
    end
    else
    begin
      sDDD := '02' // 기본 상담지역 DDD 번호 입력.
    end;
    sTell := cxTxtTelNESelect.Text;
  end else
  begin
    if Copy(cxTxtTelNESelect.Text, 1, 2) <> '02' then
    begin
      sDDD := Copy(cxTxtTelNESelect.Text, 1, 3); // DDD 번호 입력.
      sTell := Copy(cxTxtTelNESelect.Text, 4, Length(cxTxtTelNESelect.Text));
      // Tel 번호 입력.
    end else
    begin
      sDDD := '02'; // DDD 번호 입력.
      sTell := Copy(cxTxtTelNESelect.Text, 3, Length(cxTxtTelNESelect.Text));
      // Tel 번호 입력.
    end;
  end;

  try
    // 전문 정보를 작성한다.
    ls_TxLoad := GTx_UnitXmlLoad('C036N1.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'TDDD0001');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'TypeGubunString', En_Coding(sTypeGubn)); // 구분값 1:풀매칭, 2:뒷4자리
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'DDDString', En_Coding(sDDD)); // DDD
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'TellNumberString', En_Coding(sTell)); // 전화번호

    Frm_COM30.cxListViewArea.Clear;

    Application.ProcessMessages;

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      Proc_JobAfterProc(True, False);

      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);

          tmFormClose.Tag := 99; // 화면 닫기 설정값.
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, False);
    end;

  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;

  //cxTxtTelNESelect.SetFocus;
end;

function TFrm_JON01.Func_TellNumSearchCheck: boolean;
begin
  Result := False;
  // 4자리가 안되면 Exit;
  if (Length(Trim(cxTxtTelNESelect.Text)) < 4) then
    Exit;

  // DDD 번호 없이 입력하였는지의 여부를 체크;
  if Copy(cxTxtTelNESelect.Text, 1, 1) <> '0' then
  begin
    // 7자리보다 작으면 Exit;
    if (Length(Trim(cxTxtTelNESelect.Text)) <> 4) and (Length(Trim(cxTxtTelNESelect.Text)) < 7) then
      Exit;
  end else
  begin
    if Copy(cxTxtTelNESelect.Text, 1, 2) = '02' then
    begin
      // 7자리보다 작으면 Exit;
      if (Length(Trim(cxTxtTelNESelect.Text)) <> 4) and (Length(Trim(cxTxtTelNESelect.Text)) < 9) then
        Exit;
    end
    else
    begin
      // 7자리보다 작으면 Exit;
      if (Length(Trim(cxTxtTelNESelect.Text)) <> 4) and (Length(Trim(cxTxtTelNESelect.Text)) < 10) then
        Exit;
    end;
  end;
  Result := True;
end;

// 경유지 포함 거리 계산
procedure TFrm_JON01.proc_dis_alculation(iLow: Integer; bDisp : Boolean);
var
  i: Integer;
  fdis: double;
begin
  if (cxtStartXval.Text = '') or (cxtStartYval.Text = '') or
		 (cxtEndXval  .Text = '') or (cxtEndYval  .Text = '') then Exit;

	if GT_PASS_INFO[iLow][0].AREA1 = '' then
  begin
    fDis := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
      cxtStartXval.Text, cxtStartYval.Text, cxtEndXval.Text, cxtEndYval.Text)
      * StrToFloatDef(CHARGE_DIS, 1.0), ffNumber, 3, 1), 0.0);

    if GT_DISTANCE_ST = 1 then
      fDirKm := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
        cxtStartXval.Text, cxtStartYval.Text, cxtEndXval.Text, cxtEndYval.Text), ffNumber, 3, 1), 0.0);  // 배수 없는 직선거리 임시 저장
  end else
  if GT_PASS_INFO[iLow][1].AREA1 = '' then
  begin
		fDis := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
			cxtStartXval.Text, cxtStartYval.Text, GT_PASS_INFO[iLow][0].MAP_X,
      GT_PASS_INFO[iLow][0].MAP_Y) * StrToFloatDef(CHARGE_DIS, 1.0),
      ffNumber, 3, 1), 0.0)
			+ StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
			GT_PASS_INFO[iLow][0].MAP_X, GT_PASS_INFO[iLow][0].MAP_Y,
      cxtEndXval.Text, cxtEndYval.Text) * StrToFloatDef(CHARGE_DIS, 1.0),
      ffNumber, 3, 1), 0.0);

    if GT_DISTANCE_ST = 1 then
      fDirKm := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
  			cxtStartXval.Text, cxtStartYval.Text, GT_PASS_INFO[iLow][0].MAP_X,
        GT_PASS_INFO[iLow][0].MAP_Y), ffNumber, 3, 1), 0.0)
  			+ StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
  			GT_PASS_INFO[iLow][0].MAP_X, GT_PASS_INFO[iLow][0].MAP_Y,
        cxtEndXval.Text, cxtEndYval.Text), ffNumber, 3, 1), 0.0);  // 배수 없는 직선거리 임시 저장
  end else
  begin
    i := 1;
    fDis := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
      cxtStartXval.Text, cxtStartYval.Text, GT_PASS_INFO[iLow][0].MAP_X,
      GT_PASS_INFO[iLow][0].MAP_Y) * StrToFloatDef(CHARGE_DIS, 1.0),
      ffNumber, 3, 1), 0.0);

    if GT_DISTANCE_ST = 1 then
      fDirKm := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
        cxtStartXval.Text, cxtStartYval.Text, GT_PASS_INFO[iLow][0].MAP_X,
        GT_PASS_INFO[iLow][0].MAP_Y), ffNumber, 3, 1), 0.0);  // 배수 없는 직선거리 임시 저장
    while i <= 4 do
    begin
      if GT_PASS_INFO[iLow][i].AREA1 = '' then break;

			fDis := fDis +
				StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
        GT_PASS_INFO[iLow][i - 1].MAP_X, GT_PASS_INFO[iLow][i - 1].MAP_Y,
				GT_PASS_INFO[iLow][i].MAP_X, GT_PASS_INFO[iLow][i].MAP_Y) *
				StrToFloatDef(CHARGE_DIS, 1.0), ffNumber, 3, 1), 0.0);

      if GT_DISTANCE_ST = 1 then
        fDirKm := fDirKm +
  				StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
          GT_PASS_INFO[iLow][i - 1].MAP_X, GT_PASS_INFO[iLow][i - 1].MAP_Y,
  				GT_PASS_INFO[iLow][i].MAP_X, GT_PASS_INFO[iLow][i].MAP_Y), ffNumber, 3, 1), 0.0); // 배수 없는 직선거리 임시 저장

      inc(i);
    end;
    fDis := fDis + StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
      GT_PASS_INFO[iLow][i - 1].MAP_X, GT_PASS_INFO[iLow][i - 1].MAP_Y,
      cxtEndXval.Text, cxtEndYval.Text) * StrToFloatDef(CHARGE_DIS, 1.0),
      ffNumber, 3, 1), 0.0);

    if GT_DISTANCE_ST = 1 then
      fDirKm := fDirKm + StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
        GT_PASS_INFO[iLow][i - 1].MAP_X, GT_PASS_INFO[iLow][i - 1].MAP_Y,
        cxtEndXval.Text, cxtEndYval.Text), ffNumber, 3, 1), 0.0);
  end;

  if Not bDisp then Exit; 

  if ( GT_DISTANCE_ST = 0 ) then
  begin
    curKm.Text := FloatToStr(fDis) + 'Km';
    fCruKm := fDis;
  end else
  if ( GT_DISTANCE_ST = 1 ) then
  begin
    fChgKm := fDis;
    Lbl_Distance.Caption := Format(' 직선)%s', [FloatToStr(fDis) + 'Km']);
  end;
  Application.ProcessMessages;
end;

function TFrm_JON01.func_Compare_dis_Sel(DKm, SKm : Double; Var Distance : Double) : Boolean;
Var rCharge : Double;
begin
  // 경로탐색거리가 5Km 미만일 경우 그냥 경로탐색 거리 사용
  // 직선거리 10Km미만일 경우 경로탐색거리가 직선거리 대비 2.5배수보다 클 경우 재검색
  // 직선거리 10Km이상일 경우 경로탐색거리가 직선거리 대비 1.7배수보다 클 경우 재검색
  // 그 이외의 경우에는 경로 탐색거리 사용
  Result := True;

  if DKm < 10 then rCharge := 2.5
              else rCharge := 1.7;

  try
    if DKm  = 0 then Distance := SKm else
    if SKm <= 5 then Distance := SKm else
    if ( DKm * rCharge ) < SKm then
    begin
      Distance := SKm;
      Result := False;

      Log('1. Compare : ' + FloatToStr(DKm * rCharge) + '-' + FloatToStr(SKm), LOGDATAPATHFILE);
    end else Distance := SKm;
  Except
    Distance := SKm;
  end;
end;

function TFrm_JON01.IsNotModifyPrice: Boolean;
begin
  // 수정[완료/문의/취소] 건 경우 요금항목에 포커스시에만 요금 계산
  Result := ((Pos('수정', Self.Caption) > 0 ) and (cxtJoinNum.Hint[1] in ['2', '4', '8']));
end;

procedure TFrm_JON01.LoadCustLevel;
begin
  SetCustLevelData(GetCustGroup(Proc_MainKeyNumberSearch));
end;

function TFrm_JON01.IsMultiCallFixPrice: Boolean;
begin
  Result := False;
  if gsMyRateRemarkMaintain = 'FALSE' then Exit;
  if Assigned(Frm_JON015) and Frm_JON015.HandleAllocated and (Frm_JON015.OrderHandle = Self.Handle) then Result := True;
end;

//--------------------------------------------------------------------------------------------------
//      요금설정에 의한 요금 계산
//  2011.02.16 심야할증요금 추가
//--------------------------------------------------------------------------------------------------
function TFrm_JON01.func_search_charge: Integer;
type
  TPREM_TIMES = record
    ST_TIME:string;
    ED_TIME:string;
    AMT: integer;
    mYn: Boolean;
  end;
var
  AreaType, AType : Integer;
  sType, sType2, sFirstCD, sPassCode, sPassViewCode, sPassGubun, sOrgDis, sKeyNumber: string;
  TotalPrice, PassPrice, TotalDis, PassDis, ipasscnt, iPassValue, i: Integer;
  fOrgDis: Double;
  PriceInfo, PricePassInfo, PriceDesc: string;
  nn: integer;
  PREM_TIMES: array of TPREM_TIMES;
  PREM_DESC: string;  // pnl_charge.caption 에 요금정보를 추가하기 위한 문자열

  oOderWorker, oWeather, iType, oType : String;
  iSmartRate : Integer;

  function Get_Prem_Price(base_amt: Integer; sKeyNum: string): integer;
  var
    base_time: string;
  //  base_time2: string;
    tm_Amt: integer;
    sQuery: string;
    n1: integer;
    function GET_PREM_TIMES: integer;
    var
      n2: integer;
      cInt1: integer;
    begin
      try
        cInt1:=-1;
        if Length(PREM_TIMES)<=0 then
        begin
          result:=0
        end else
        begin
          for n2 :=0 to Length(PREM_TIMES) -1 do
          begin
            if PREM_TIMES[n2].ST_TIME<=PREM_TIMES[n2].ED_TIME then
            begin
              if (PREM_TIMES[n2].ST_TIME<=base_time) and (PREM_TIMES[n2].ED_TIME>=base_time) then
              begin
                PREM_TIMES[n2].mYn:=true;
                cInt1:=n2;
              end;
            end else
            begin
              if not((PREM_TIMES[n2].ED_TIME<base_time) and (PREM_TIMES[n2].ST_TIME>base_time)) then
              begin
                PREM_TIMES[n2].mYn:=true;
                cInt1:=n2;
              end;
            end;
          end;
          if cInt1=-1 then
            result:=0
          else
          begin
            PREM_DESC := ' (+심야할증요금 : '+formatfloat('#,##0',PREM_TIMES[cInt1].AMT)+'원)';
            result:=PREM_TIMES[cInt1].AMT;
          end;
        end;
      except
        result:=0;
      end;
    end;
  begin
     try
       base_time := frm_Main.func_sysdate;
       base_time := Copy(base_time,9,2)+':'+copy(base_time,11,2);

       tm_amt:=0;
       if CHARGE_GUBUN='P' then
       begin
         // 20110601 LYB 추가  법인 할증 요금제 조회 후 없으면 기본 할증 요금제 조회
         sQuery := 'select A1.PREM_STTIME,A1.PREM_EDTIME,A3.RESULT_AMT from CDMS_BGROUP_CHARGE_TYPE A1, CDMS_PREM_MAST A2, CDMS_PREM_DETAIL A3 WHERE A1.CT_KEY_NUM = ''' + sKeyNumber + '''  AND A1.CT_CB_CODE  = ''' + cxtCuBubin.Hint + ''' AND TRIM(A1.PREM_STTIME)<>'''' AND TRIM(A1.PREM_EDTIME)<>'''' AND A1.prem_nseq=A2.nseq and A2.nseq=A3.nseq and A3.ST_AMT <= ' + IntToStr(base_amt) + ' and A3.ED_AMT >= ' + IntToStr(base_amt) ;
         dmCharge.Qry_Charge.Close;
         dmCharge.Qry_Charge.SQL.Text := sQuery;
         dmCharge.Qry_Charge.OPEN;
         if dmCharge.Qry_Charge.recordcount=0 then
         begin
           tm_Amt:=0;
         end else
         begin
           SetLength(PREM_TIMES,dmCharge.Qry_Charge.recordcount);
           dmCharge.Qry_Charge.FindFirst;
           for n1:=0 to dmCharge.Qry_Charge.recordcount-1 do
           begin
             PREM_TIMES[n1].ST_TIME:=dmCharge.Qry_Charge.Fields[0].AsString;
             PREM_TIMES[n1].ED_TIME:=dmCharge.Qry_Charge.Fields[1].AsString;
             PREM_TIMES[n1].AMT:=dmCharge.Qry_Charge.Fields[2].AsInteger;
             PREM_TIMES[n1].mYn:=false;
             dmCharge.Qry_Charge.FindNext;
           end;
         end;

         if tm_Amt = 0 then
         begin
           sQuery := 'select A1.PREM_STTIME,A1.PREM_EDTIME,A3.RESULT_AMT from CDMS_CHARGE_TYPE A1, CDMS_PREM_MAST A2, CDMS_PREM_DETAIL A3 WHERE A1.CT_KEY_NUM = ''' + sKeyNumber + ''' AND TRIM(A1.PREM_STTIME)<>'''' AND TRIM(A1.PREM_EDTIME)<>'''' AND A1.prem_nseq=A2.nseq and A2.nseq=A3.nseq and A3.ST_AMT <= ' + IntToStr(base_amt) + ' and A3.ED_AMT >= ' + IntToStr(base_amt) ;
           dmCharge.Qry_Charge.Close;
           dmCharge.Qry_Charge.SQL.Text := sQuery;
           dmCharge.Qry_Charge.OPEN;
           if dmCharge.Qry_Charge.recordcount=0 then
           begin
             tm_Amt:=0;
           end else
           begin
             SetLength(PREM_TIMES,dmCharge.Qry_Charge.recordcount);
             dmCharge.Qry_Charge.FindFirst;
             for n1:=0 to dmCharge.Qry_Charge.recordcount-1 do
             begin
               PREM_TIMES[n1].ST_TIME:=dmCharge.Qry_Charge.Fields[0].AsString;
               PREM_TIMES[n1].ED_TIME:=dmCharge.Qry_Charge.Fields[1].AsString;
               PREM_TIMES[n1].AMT:=dmCharge.Qry_Charge.Fields[2].AsInteger;
               PREM_TIMES[n1].mYn:=false;
               dmCharge.Qry_Charge.FindNext;
             end;
           end;
         end;
       end else if CHARGE_GUBUN='S' then
       begin
         sQuery := 'select A1.PREM_STTIME,A1.PREM_EDTIME,A3.RESULT_AMT from CDMS_BGROUP_TYPE A1, CDMS_SVPREM_MAST A2, CDMS_SVPREM_DETAIL A3 WHERE A1.CT_KEY_NUM = ''' + sKeyNumber + '''  AND A1.CT_CB_CODE  = ''' + cxtCuBubin.Hint + ''' AND TRIM(A1.PREM_STTIME)<>'''' AND TRIM(A1.PREM_EDTIME)<>'''' AND A1.prem_nseq=A2.nseq and A2.nseq=A3.nseq and A3.ST_AMT <= ' + IntToStr(base_amt) + ' and A3.ED_AMT >= ' + IntToStr(base_amt) ;
         dmCharge.proc_mysql_init;
         dmCharge.ADOQuery1.Close;
         dmCharge.ADOQuery1.SQL.Text := sQuery;
         dmCharge.ADOQuery1.OPEN;
         if dmCharge.ADOQuery1.recordcount=0 then
         begin
           tm_Amt:=0;
         end else
         begin
           SetLength(PREM_TIMES,dmCharge.ADOQuery1.recordcount);
           dmCharge.ADOQuery1.FindFirst;
           for n1:=0 to dmCharge.ADOQuery1.recordcount-1 do
           begin
             PREM_TIMES[n1].ST_TIME:=dmCharge.ADOQuery1.Fields[0].AsString;
             PREM_TIMES[n1].ED_TIME:=dmCharge.ADOQuery1.Fields[1].AsString;
             PREM_TIMES[n1].AMT:=dmCharge.ADOQuery1.Fields[2].AsInteger;
             PREM_TIMES[n1].mYn:=false;
             dmCharge.ADOQuery1.FindNext;
           end;
         end;

         if tm_Amt = 0 then
         begin
           sQuery := 'select A1.PREM_STTIME,A1.PREM_EDTIME,A3.RESULT_AMT from CDMS_TYPE A1, CDMS_SVPREM_MAST A2, CDMS_SVPREM_DETAIL A3 WHERE A1.CT_KEY_NUM = ''' + sKeyNumber + ''' AND TRIM(A1.PREM_STTIME)<>'''' AND TRIM(A1.PREM_EDTIME)<>'''' AND A1.prem_nseq=A2.nseq and A2.nseq=A3.nseq and A3.ST_AMT <= ' + IntToStr(base_amt) + ' and A3.ED_AMT >= ' + IntToStr(base_amt) ;
           dmCharge.proc_mysql_init;
           dmCharge.ADOQuery1.Close;
           dmCharge.ADOQuery1.SQL.Text := sQuery;
           dmCharge.ADOQuery1.OPEN;
           if dmCharge.ADOQuery1.recordcount=0 then
           begin
             tm_Amt:=0;
           end else
           begin
             SetLength(PREM_TIMES,dmCharge.ADOQuery1.recordcount);
             dmCharge.ADOQuery1.FindFirst;
             for n1:=0 to dmCharge.ADOQuery1.recordcount-1 do
             begin
               PREM_TIMES[n1].ST_TIME:=dmCharge.ADOQuery1.Fields[0].AsString;
               PREM_TIMES[n1].ED_TIME:=dmCharge.ADOQuery1.Fields[1].AsString;
               PREM_TIMES[n1].AMT:=dmCharge.ADOQuery1.Fields[2].AsInteger;
               PREM_TIMES[n1].mYn:=false;
               dmCharge.ADOQuery1.FindNext;
             end;
           end;
         end;
       end;
       tm_Amt:=GET_PREM_TIMES;
       result:=base_amt+tm_amt;
       OutputDebugString(PChar('기본요금:'+inttostr(base_amt)));
       OutputDebugString(PChar('할증요금:'+inttostr(tm_Amt)));
     except
       result:=base_amt;
     end;
  end;
begin
  Result := 0;
  PREM_DESC:='';
  if (CHARGE_GUBUN = 'P') and (GS_EXEC_GUBUN = 0) then
  begin
    Exit;
  end;

	if (gsMyMainTelUse = 'TRUE') and (not GSMyMainTelOrderChargeCheck) then
  begin
    pnl_Charge.Caption := '대표번호 기본요금 강제 적용';
    pnl_Charge.Visible := True;
    Exit;
  end;

  PriceInfo := ''; // 요금정보
  PriceDesc := ''; // 적요표시
  PassPrice := 0; // 경유요금

  // 총거리(경유있을 경우 경유거리 포함)
  TotalDis := ceil(fCruKm);

	pnl_Charge.Caption := '';
//  Lbl_Distance.Caption := '';

  // 선택된 지사정보에서 대표번호를 추출 한다.
	sKeyNumber := Proc_MainKeyNumberSearch;

  if (lcsSta1 = '') or (lcsEnd1 = '') then
  begin
    Result := dmCharge.func_base_charge(sKeyNumber);
    exit;
  end;

	// 경유횟수 찾기..
	if GT_PASS_INFO[Self.Tag][0].AREA1 = '' then
    ipasscnt := 0
  else
	begin
		i := 0;
		while i <= 4 do
    begin
			if GT_PASS_INFO[Self.Tag][i].AREA1 = '' then
				break;
			inc(i);
		end;
    iPassCnt := i;
	end;

  // 20120604 법인 요금 설정 관련 부분 추가  LYB
  if (CHARGE_GUBUN = 'P') then
  begin
    ///////////////////////////////////////////////////////////////
    // (#1) 법인 별 요금계산
		///////////////////////////////////////////////////////////////
		dmCharge.Qry_Charge.Close;
		dmCharge.Qry_Charge.SQL.Text := 'SELECT * FROM CDMS_BGROUP_CHARGE_TYPE WHERE CT_KEY_NUM = ''' + sKeyNumber + ''' AND CT_CB_CODE  = ''' + cxtCuBubin.Hint + ''' ';
    try
      dmCharge.Qry_Charge.open;
    except on E: Exception do
      begin
        GMessagebox('로컬요금설정이 잘못되어있어 요금이 계산되지 않았습니다.'#13#10 +
        '[요금파일 확인 바랍니다.]', CDMSI);
        Exit;
      end;
    end;

    // 법인요금에 등록된 요금제가 없으면 대표번호요금 사용
    if not dmCharge.Qry_Charge.IsEmpty then
    begin
      sType         := dmCharge.Qry_Charge.Fields[5].AsString;  // 경유요금 종류
      sFirstCD      := dmCharge.Qry_Charge.Fields[8].AsString;  // 우선요금제 코드
      iPassValue    := StrToIntDef(dmCharge.Qry_Charge.Fields[7].AsString, 0);
      sPassGubun    := dmCharge.Qry_Charge.Fields[9].AsString;  // 경유요금종류 [0: 건당요금, 1: 거리요금]
      sPassCode     := dmCharge.Qry_Charge.Fields[10].AsString;  // 경유요금 코드
      sPassViewCode := dmCharge.Qry_Charge.Fields[11].AsString; // 경유구분 [0: 요금에 경유요금미포함, 1: 요금에 경유요금포함]
    end;
  end
  else if CHARGE_GUBUN = 'S' then
  begin
    dmCharge.ADOQuery1.Close;
    dmCharge.ADOQuery1.SQL.Text := 'SELECT * FROM CDMS_BGROUP_TYPE WHERE CT_KEY_NUM = ''' + sKeyNumber + ''' AND CT_CB_CODE  = ''' + cxtCuBubin.Hint + ''' ';
    try
      dmCharge.ADOQuery1.open;
    except on E: Exception do
      begin
        GMessagebox('요금DB설정이 잘못되어있어 요금이 계산되지 않았습니다.'#13#10 +
        '[환경설정] - [요금DB연결] 부분 설정을 다시 하세요', CDMSI);
        Exit;
      end;
    end;

    // 법인요금에 등록된 요금제가 없으면 대표번호요금 사용
    if not dmCharge.ADOQuery1.IsEmpty then
    begin
      sType         := dmCharge.ADOQuery1.Fields[5].AsString;  // 경유요금 종류
      sFirstCD      := dmCharge.ADOQuery1.Fields[8].AsString;  // 우선요금제 코드
      iPassValue    := StrToIntDef(dmCharge.ADOQuery1.Fields[7].AsString, 0);
      sPassGubun    := dmCharge.ADOQuery1.Fields[9].AsString;  // 경유요금종류 [0: 건당요금, 1: 거리요금]
      sPassCode     := dmCharge.ADOQuery1.Fields[10].AsString;  // 경유요금 코드
      sPassViewCode := dmCharge.ADOQuery1.Fields[11].AsString; // 경유구분 [0: 요금에 경유요금미포함, 1: 요금에 경유요금포함]
    end;
  end;

  if sType = '' then
  begin
    // P : DB 로컬연결        GS_EXEC_GUBUN ==> 1:소켓메인 동작됨, 0:소켓메인 사용할 수 없음.[구버전, 신버전 동시사용가능하도록 위함]
    // 현재 버전, 이미 실행된 신규버전이 있을경우 파라독스 연결 처리 (2008.08.01 KJH)
    if (CHARGE_GUBUN = 'P') then
    begin
      ///////////////////////////////////////////////////////////////
      // (#1) 대표번호 별 요금계산
      ///////////////////////////////////////////////////////////////
      dmCharge.Qry_Charge.Close;
      dmCharge.Qry_Charge.SQL.Text := 'SELECT * FROM CDMS_CHARGE_TYPE WHERE CT_KEY_NUM = ''' + sKeyNumber + ''' ';
      try
        dmCharge.Qry_Charge.open;
      except on E: Exception do
        begin
          GMessagebox('로컬요금설정이 잘못되어있어 요금이 계산되지 않았습니다.'#13#10 +
          '[요금파일 확인 바랍니다.]', CDMSI);
          Exit;
        end;
      end;

      // 대표요금에 등록된 요금제가 없으면 기본표준요금 사용
      if not dmCharge.Qry_Charge.IsEmpty then
      begin
				sType         := dmCharge.Qry_Charge.Fields[4].AsString;  // 경유요금 종류
				sType2        := dmCharge.Qry_Charge.Fields[15].AsString;  // 경유요금 종류
				sFirstCD      := dmCharge.Qry_Charge.Fields[7].AsString;  // 우선요금제 코드
        iPassValue    := StrToIntDef(dmCharge.Qry_Charge.Fields[6].AsString, 0);
				sPassGubun    := dmCharge.Qry_Charge.Fields[8].AsString;  // 경유요금종류 [0: 건당요금, 1: 거리요금]
        sPassCode     := dmCharge.Qry_Charge.Fields[9].AsString;  // 경유요금 코드
				sPassViewCode := dmCharge.Qry_Charge.Fields[10].AsString; // 경유구분 [0: 요금에 경유요금미포함, 1: 요금에 경유요금포함]
      end;
    end else
    if CHARGE_GUBUN = 'S' then
    begin
      dmCharge.ADOQuery1.Close;
      dmCharge.ADOQuery1.SQL.Text := 'SELECT CT_NO, CT_BR_NO, CT_KEY_NUM, CT_GUBUN, CT_CD, CT_GUBUN2, CT_CD2, IN_DATE, CT_PASSVALUE, CT_FIRST_CD, CT_PASS_GUBUN, CT_PASS_CD, CT_PASS_VIEW, PREM_NSEQ, PREM_STTIME, PREM_EDTIME FROM CDMS_TYPE WHERE CT_KEY_NUM = ''' + sKeyNumber + ''' ';
      try
        dmCharge.ADOQuery1.open;
      except on E: Exception do
        begin
          GMessagebox('요금DB설정이 잘못되어있어 요금이 계산되지 않았습니다.'#13#10 +
          '[환경설정] - [요금DB연결] 부분 설정을 다시 하세요', CDMSI);
          Exit;
        end;
      end;

      // 대표요금에 등록된 요금제가 없으면 기본표준요금 사용
      if not dmCharge.ADOQuery1.IsEmpty then
      begin
				sType         := dmCharge.ADOQuery1.Fields[4].AsString;  // 경유요금 종류
				sType2        := dmCharge.ADOQuery1.Fields[6].AsString;  // 경유요금 종류
				sFirstCD      := dmCharge.ADOQuery1.Fields[9].AsString;  // 우선요금제 코드
				iPassValue    := StrToIntDef(dmCharge.ADOQuery1.Fields[8].AsString, 0);
				sPassGubun    := dmCharge.ADOQuery1.Fields[10].AsString;  // 경유요금종류 [0: 건당요금, 1: 거리요금]
				sPassCode     := dmCharge.ADOQuery1.Fields[11].AsString;  // 경유요금 코드
				sPassViewCode := dmCharge.ADOQuery1.Fields[12].AsString; // 경유구분 [0: 요금에 경유요금미포함, 1: 요금에 경유요금포함]
      end;
    end;
  end;

  if sType = '' then
  begin
    sType         := 'CC001';
    sFirstCD      := '';
    iPassValue    := 0;
    sPassGubun    := '0';
    sPassCode     := '';
    sPassViewCode := '';
  end;

	if sType2 = '' then
	begin
		sType2         := 'CC001';
	end;

  // 우선요금 미사용 경우(경유지가 있는 경우, [거리요금]체크&거리/요금표)
  if
        ((iPassCnt  > 0) and (((sPassGubun = '0') and (iPassValue > 0)) or ((sPassGubun = '0') and (sPassCode <> '')))
    or  (ChkRangeRate.Down and ((Copy(sType, 1, 2) = 'CD') or (Copy(sType, 1, 2) = 'CA'))))
  then
  begin
    sFirstCD := '';
  end;

	if (GS_Grid_DEP = 'D') or (GS_Grid_DES = 'D') then
	begin
		if (GS_Grid_DEP = 'D')  and (GS_Grid_DES <> 'D') then
			Result := dmCharge.func_charge(lcsSta1, lcsSta2, lcsSta3, '', lcsEnd1, lcsEnd2, lcsEnd3, cxtEndAreaDetail.Caption,
				TotalDis, sType, sType2, sFirstCD, iPassCnt, iPassValue, PriceInfo, AreaType, AType)
		else
		if (GS_Grid_DEP <> 'D') and (GS_Grid_DES = 'D') then
			Result := dmCharge.func_charge(lcsSta1, lcsSta2, lcsSta3, cxtStartAreaDetail.Text, lcsEnd1, lcsEnd2, lcsEnd3, '',
				TotalDis, sType, sType2, sFirstCD, iPassCnt, iPassValue, PriceInfo, AreaType, AType)
		else
		if (GS_Grid_DEP = 'D')  and (GS_Grid_DES = 'D')  then
			Result := dmCharge.func_charge(lcsSta1, lcsSta2, lcsSta3, '', lcsEnd1, lcsEnd2, lcsEnd3, '',
				TotalDis, sType, sType2, sFirstCD, iPassCnt, iPassValue, PriceInfo, AreaType, AType);
	end
	else
		Result := dmCharge.func_charge(lcsSta1, lcsSta2, lcsSta3, cxtStartAreaDetail.Text, lcsEnd1, lcsEnd2, lcsEnd3, cxtEndAreaDetail.Caption,
			TotalDis, sType, sType2, sFirstCD, iPassCnt, iPassValue, PriceInfo, AreaType, AType);


  ///////////////////////////////////////////////////////////////
  // (#2) 스마트요금제 계산
  ///////////////////////////////////////////////////////////////
  if GT_RealTimeWorker then oOderWorker := '0'
                       else oOderWorker := '1';

  if GT_RealTimeWeather then oWeather := '0'
                        else oWeather := '1';

  iType := '1';//검색타입 '동-동' 접수창에서는 무조건 동-동으로 조회

  if GT_USERIF.ID = 'sntest' then Log(oOderWorker + oWeather +
                                   lcsSta1 + lcsSta2 + lcsSta3 + meoStartArea.Text + cxtStartXval.Text + cxtStartYval.Text +
                                   lcsEnd1 + lcsEnd2 + lcsEnd3 + meoEndArea.Text + cxtEndXval.Text + cxtEndYval.Text + iType, LOGDATAPATHFILE);

  iSmartRate := fJON01_SmartCharge(oOderWorker, oWeather,
                                   lcsSta1, lcsSta2, lcsSta3, meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text,
                                   lcsEnd1, lcsEnd2, lcsEnd3, meoEndArea.Text, cxtEndXval.Text, cxtEndYval.Text, iType, oType);

  if oType = '1' then oType := '동->동' else
  if oType = '2' then oType := '동->구' else
  if oType = '3' then oType := '구->동' else
  if oType = '4' then oType := '구->구' else
  if oType = '5' then oType := '구->시';

  if GT_AutoSmartCharge then // 0원이거나 요금이 다를경우 스마트요금 접수창요금 자동적용
  begin
    if ( Result = 0 ) Or ( Result <> iSmartRate ) then
    begin
      if GT_PopUpSmartCharge then // 0원이거나 요금이 다를경우 스마트요금창 자동팝업
      begin
        if ( (meoStartArea.Focused) Or (meoEndArea.Focused) Or
             (meoViaArea1.Focused) Or  (meoViaArea[2].Focused) Or (meoViaArea[3].Focused) Or
             (meoViaArea[4].Focused) Or  (meoViaArea[5].Focused) ) then      //  출발지/도착지 포커스가 있을때에는 팝업창 표시 않함
        begin
        end else
        begin
          BtnSmartRate.Click;
          curRate.SetFocus;
        end;
      end;
      PriceInfo := '스마트요금 (' + oType + ') ] ' + FormatFloat('#,', iSmartRate);
      Result := iSmartRate;
    end;
  end;

  if GB_JON_SMARTRATEUSE then
  begin
    PriceInfo := '스마트요금 (' + oType + ') ] ' + FormatFloat('#,', iSmartRate);
    Result := iSmartRate;
  end;

  ///////////////////////////////////////////////////////////////
  // (#3) 요금제에 요금이 없으면 표준요금 참조
  ///////////////////////////////////////////////////////////////
  if (Result = 0) and (GT_DEFAULT_ST = 0) then
  begin
		Result := dmCharge.func_charge(lcsSta1, lcsSta2, '', '', lcsEnd1, lcsEnd2, '', '',
      0, 'CC001', 'CC001', '', 0, 0, PriceInfo, AreaType, AType);
  end;
	FType := AType;

  ///////////////////////////////////////////////////////////////
  // (#4) 경유요금 계산
  ///////////////////////////////////////////////////////////////
  if (Result > 0) and (ipasscnt > 0) then
  begin
    if (sPassGubun = '0') then
    begin
      PassPrice := dmCharge.func_Pass_charge('0', '', iPassValue, iPassCnt, 0, PricePassInfo);
      Result := Result + PassPrice;
    end else
    if (sPassGubun = '1') then
    begin
      // 출도착지 거리
      if GT_DISTANCE_ST = 1  then
      begin
        PassDis := Ceil(fViaKm);
      end else
      begin
        sOrgDis := FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
          cxtStartXval.Text, cxtStartYval.Text, cxtEndXval.Text,
          cxtEndYval.Text) * StrToFloatDef(CHARGE_DIS, 1.0),
          ffNumber, 3, 1);
        fOrgDis := StrToFloat(sOrgDis);
        PassDis := TotalDis - Ceil(fOrgDis);
      end;

      PassPrice := dmCharge.func_Pass_charge(sPassCode, sPassViewCode, iPassValue, iPassCnt, PassDis, PricePassInfo);

      if (sPassViewCode = '0') and (PassPrice > 0) then
      // 거리요금, 요금 미포함인경우 경유요금 미포함
        PriceDesc := '＜경유요금:' + IntToStr(PassPrice) + '＞'
      else
        Result := Result + PassPrice;
    end;
  end;

	if (gsMyMainTelUse = 'TRUE') and (GSMyMainTelOrderChargeCheck) and (Result = 0)then
	begin
		pnl_Charge.Caption := Format('대표번호 기본요금(%s) 강제 적용', [StrToMoney(sNowRate)]);
		pnl_Charge.Visible := True;
		result := strtointDef(sNowRate,0);
		Exit;
	end;

  // 요금정보 표시
  if Trim(PriceInfo) <> '' then
    pnl_Charge.Caption := PriceInfo + PricePassInfo
  else
    pnl_Charge.Caption := '요금정보가 없습니다.';

//  Lbl_Distance.Caption := '';
  pnl_Charge.Visible := True;

  // 적요 내용 표시
  if (Pos('수정', Self.Caption) = 0 ) then
  begin
    RemovePriceDesc;
    if PriceDesc <> '' then
    begin
      meoBigo.Text := PriceDesc + meoBigo.Text; // 수정모드 일때는 적요를 수정하지 않는다.
    end;
  end;
  // 2011.02.16 심야할증요금 추가
  result:=Get_Prem_Price(Result,sKeyNumber);

  if PREM_DESC <> '' then
  begin
    pnl_charge.Caption := pnl_charge.Caption + PREM_DESC; // 할증요금 있을시 추가(레코드카운트<>0)
//    Lbl_Distance.Caption := '';
  end;

  cxCurPathRate.Value := PassPrice;
end;

procedure TFrm_JON01.RemovePriceDesc;
var
  OrgStr, AddStr: string;
  PosS, PosE: Integer;
begin
  OrgStr := meoBigo.Lines.Text;

  PosS := Pos('＜', OrgStr);
  PosE := Pos('＞', OrgStr);

  if (PosS = 0) or (PosE = 0) or (PosE < PosS) then
  begin
    Exit;
  end;

  AddStr := Copy(OrgStr, 1, PosS-1);
  AddStr := AddStr + Copy(OrgStr, PosE+1, Length(OrgStr));

  meoBigo.Lines.Text := AddStr;
end;

// 플러스콜 표준요금을 비교한다.
function TFrm_JON01.proc_PlusCall_RateYN: Boolean;
var iHighRate : Integer;
    sTmp : string;
begin
  Result := True;

  // 플러스콜 표준요금 참조 안하도록 수정함.(이유:플러스콜을 법인콜로 변경하고 플러스콜을 사용 안함) 2011-09-06.
  Exit;

  Result := False;

  {================= 플러스콜 접수위해 고가요금 조회 비교 함.  ================}
  // 플러스콜 여부(수도권만 사용함)
  if GS_PRJ_AREA = 'S' then begin
    // 복수콜 폼 로딩 여부.
    if not GB_FRMJON015_LOADING_YN then begin

    // 25천원 제한조건 제외 2011.01.10
      // 요금이 25,000원 이상일 경우 무조건 콜플러스 반영(2010.11.25)
    //  if curRate.value<25000 then
    //  begin
        iHighRate := func_search_charge_high;
        if (iHighRate > 100) and (BtnPlusYN.Down = True) then begin
          if curRate.Value < iHighRate then begin
            sTmp := IntToStr(iHighRate);
            sTmp := Copy(sTmp, 1, Length(sTmp) -3) + ',' + RightStr(sTmp, 3);

            BtnPlusYN.Down := False;
          end;
        end else begin
          // 접수창의 "플러스콜" 상태 체크 해제 한다.
          BtnPlusYN.Down := False;

          // 플러스콜 자동 해제에 대한 메시지 처리여부.
					sTmp := proc_PlusCall_YN_Cont;
					if ((copy(sTmp,1,4) <> 'yyyy') and (copy(sTmp,1,4) <> 'fyyy')) then begin
						if BtnPlusYN.Down then begin
							GMessagebox('요금이 0 원 이므로 플러스콜로 등록 할 수 없습니다.' + #13#10 + #13#10
                        + '플러스콜은 자동 해제되어 일반콜로 접수 됩니다.', CDMSI);
            end;
          end;
        end;
    //  end;
    end else begin
      // 접수창의 "플러스콜" 상태 체크 해제 한다.
      BtnPlusYN.Down := False;
    end;
  end;
  {============================================================================}
  Result := True;
end;

//--------------------------------------------------------------------------------------------------
//   [콜마너 고가요금 표준요금 조회 : 2010.10.09]    요금설정에 의한 요금 계산
//   -> 플러스콜 저가요금 올리지 못하도록 하기위한 조회.
//--------------------------------------------------------------------------------------------------
function TFrm_JON01.func_search_charge_high: Integer;
var
  AreaType: Integer;
  sType, sFirstCD, sPassCode, sPassViewCode, sPassGubun, sOrgDis, sKeyNumber: string;
  TotalPrice, PassPrice, TotalDis, PassDis, ipasscnt, iPassValue, i: Integer;
  fOrgDis: Double;
  PriceInfo, PricePassInfo, PriceDesc: string;
begin
  Result := 0;

  PriceInfo := ''; // 요금정보
  PriceDesc := ''; // 적요표시
  PassPrice := 0; // 경유요금

  // 총거리(경유있을 경우 경유거리 포함)
  TotalDis := ceil(fCruKm);

  // 선택된 지사정보에서 대표번호를 추출 한다.
  //sKeyNumber := Proc_MainKeyNumberSearch;

  if (lcsSta1 = '') or (lcsEnd1 = '') then
  begin
    exit;
  end;

  // 경유횟수 찾기..
  if GT_PASS_INFO[Self.Tag][0].AREA1 = '' then
    ipasscnt := 0
  else
  begin
    i := 0;
    while i <= 4 do
    begin
      if GT_PASS_INFO[Self.Tag][i].AREA1 = '' then
        break;
      inc(i);
    end;
    iPassCnt := i;
  end;

  // P : DB 로컬연결        GS_EXEC_GUBUN ==> 1:소켓메인 동작됨, 0:소켓메인 사용할 수 없음.[구버전, 신버전 동시사용가능하도록 위함]
  // 현재 버전, 이미 실행된 신규버전이 있을경우 파라독스 연결 처리 (2008.08.01 KJH)
  //if (CHARGE_GUBUN = 'P') then
  //begin
    ///////////////////////////////////////////////////////////////
    // (#1) 대표번호 별 요금계산
    ///////////////////////////////////////////////////////////////
  {  dmCharge.Qry_Charge.Close;
    dmCharge.Qry_Charge.SQL.Text := 'SELECT * FROM CDMS_CHARGE_TYPE WHERE CT_KEY_NUM = ''' + sKeyNumber + ''' ';
    try
      dmCharge.Qry_Charge.open;
    except on E: Exception do
      begin
        GMessagebox('로컬요금설정이 잘못되어있어 요금이 계산되지 않았습니다.'#13#10 +
        '[요금파일 확인 바랍니다.]', CDMSI);
        Exit;
      end;
    end;

    // 대표요금에 등록된 요금제가 없으면 기본표준요금 사용
    if not dmCharge.Qry_Charge.IsEmpty then
    begin
      sType         := dmCharge.Qry_Charge.Fields[4].AsString;  // 경유요금 종류
      sFirstCD      := dmCharge.Qry_Charge.Fields[7].AsString;  // 우선요금제 코드
      iPassValue    := StrToIntDef(dmCharge.Qry_Charge.Fields[6].AsString, 0);
      sPassGubun    := dmCharge.Qry_Charge.Fields[8].AsString;  // 경유요금종류 [0: 건당요금, 1: 거리요금]
      sPassCode     := dmCharge.Qry_Charge.Fields[9].AsString;  // 경유요금 코드
      sPassViewCode := dmCharge.Qry_Charge.Fields[10].AsString; // 경유구분 [0: 요금에 경유요금미포함, 1: 요금에 경유요금포함]
    end; }
  //end

  if sType = '' then
  begin
    sType         := 'CC005';  // 'CC001' : 표준,   'CC002' : 고가,   'CC003' : 저가,   'CC005' : 플러스콜요금
    sFirstCD      := '';
    iPassValue    := 0;
    sPassGubun    := '0';
    sPassCode     := '';
    sPassViewCode := '';
  end;

  ///////////////////////////////////////////////////////////////
  // (#2) 요금제에 요금이 없으면 표준요금 참조
  ///////////////////////////////////////////////////////////////
  //if (Result = 0) and (GT_DEFAULT_ST = 0) then
  //begin
    { 플러스요금표 참조 }
		Result := dmCharge.func_charge_plus(lcsSta1, lcsSta2, '', lcsEnd1, lcsEnd2, '', 0, 'CC005', '', 0, 0, PriceInfo, AreaType);
  //end;

  ///////////////////////////////////////////////////////////////
  // 경유요금 계산
  ///////////////////////////////////////////////////////////////
  if (Result > 0) and (ipasscnt > 0) then
  begin
    if (sPassGubun = '0') then
    begin
      PassPrice := dmCharge.func_Pass_charge('0', '', iPassValue, iPassCnt, 0, PricePassInfo);
      Result := Result + PassPrice;
    end
    else if (sPassGubun = '1') then
    begin
      // 출도착지 거리
      sOrgDis := FloatToStrF(GetRoadLength(STANDFUNCPATHFILE, cxtStartXval.Text, cxtStartYval.Text,
                                           cxtEndXval.Text, cxtEndYval.Text)
                             * StrToFloatDef(CHARGE_DIS, 1.0), ffNumber, 3, 1);
      fOrgDis := StrToFloat(sOrgDis);
      PassDis := TotalDis - Ceil(fOrgDis);

      PassPrice := dmCharge.func_Pass_charge(sPassCode, sPassViewCode, iPassValue, iPassCnt, PassDis, PricePassInfo);

      if (sPassViewCode = '0') and (PassPrice > 0) then
        // 거리요금, 요금 미포함인경우 경유요금 미포함
        //PriceDesc := '＜경유요금:' + IntToStr(PassPrice) + '＞'
      else
        Result := Result + PassPrice;
    end;
  end;
end;

// 플러스콜 사용여부 체크
function TFrm_JON01.proc_PlusCall_YN_Cont: string;
var sTmp : string;
begin
  // 플러스콜 여부(수도권만 사용함)
  if GS_PRJ_AREA = 'S' then
  begin
    sTmp := Proc_BRNOSearch;
    // 플러스콜 사용 [접수창체크옵션,지사,본사,연합] 조회
		sTmp := GetPlusCallYN(sTmp);
  end;
end;

procedure TFrm_JON01.proc_RealKmPtr_Init;
Var i, j : Integer;
begin
  for i := 1 to 4 do
  begin
    RealKmPtr[Self.Tag,i].Tag := 0;
    RealKmPtr[Self.Tag,i].thId := 0;
    RealKmPtr[Self.Tag,i].CaActive := False;
    RealKmPtr[Self.Tag,i].UseYn := False;
    RealKmPtr[Self.Tag,i].StartAreaName := '';
    RealKmPtr[Self.Tag,i].StartXVal := '';
    RealKmPtr[Self.Tag,i].StartYVal := '';
    RealKmPtr[Self.Tag,i].EndAreaName := '';
    RealKmPtr[Self.Tag,i].EndXVal := '';
    RealKmPtr[Self.Tag,i].EndYVal := '';
    for j := 1 to 5 do
    begin
  		RealKmPtr[Self.Tag,i].ViaXVal[j] := '';
     	RealKmPtr[Self.Tag,i].ViaYVal[j] := '';
    end;
    RealKmPtr[Self.Tag,i].info := Nil;
  end;
end;

procedure TFrm_JON01.proc_Realdis_Mng;
Var SRIp : String;
    SRPort : Integer;
begin
  if (cxtStartXval.Text = '') or (cxtStartYval.Text = '') or
		 (cxtEndXval  .Text = '') or (cxtEndYval  .Text = '') then
  begin
     if ( Trim(lblStartAreaName.Text) <> '' ) And ( Trim(lblEndAreaName.Caption) <> '' ) then
     begin
       Lbl_Distance.Caption := '';
       tmrCharge.Enabled := True;
       Exit;
     end else
       Exit;
  end;

  if ( Not fnc_RealKmThread_End ) And ( GT_DISTANCE_ST = 1 ) then
  begin
    ShowMessage('경로탐색거리 계산중입니다' + #13 +
                '잠시후에 다시 거리계산 바랍니다.');
    Exit;
  end;

  fViaKm := 0;
  giRealKmCnt := 0;
  giRealKmIdx := 1;

  try
    SmartSR := TSmartSRXCtrl.Create(nil);
    if RouteMan = nil then
       RouteMan := SmartSR.GetRouteMan();

    GetSearchRouteIpPort(SRIp, SRPort);

    Log('0. SmartSR Open : IP - ' + SRIp + ',' + ' Port - ' + IntToStr(SRPort), LOGDATAPATHFILE);

    if RouteMan.Open(SRIp, SRPort) then
      RouteMan.Clear()
    else
    begin
      if SRPort = 1095 then SRPort := 1195 else
      if SRPort = 1195 then SRPort := 1095;

      if RouteMan.Open(SRIp, SRPort) then
        RouteMan.Clear()
      else
      begin
        ShowMessage('경로탐색 서버에 연결할수 없습니다.');
        Exit;
      end;
    end;

    proc_RealKmPtr_Init;

    RealKmPtr[Self.Tag,1].CaActive := True;

    tmrThRealDis.Interval := 1;
    tmrThRealDis.Enabled := True;
  Except

  end;
end;

// 오더를 접수등록을 한다.
procedure TFrm_JON01.Proc_OrderJoinIns;
var
  sBrNo: string;
begin
	//--------------------------------------------------------------------------------------------------
  // 접수시 지사캐쉬 체크(캐쉬가 없어도 후불로 접수할수 있음)
  //--------------------------------------------------------------------------------------------------
  if (GS_PRJ_AREA <> 'S') and ((GT_USERIF.ShareNo = 'G91') or (GT_USERIF.ShareNo = 'G58')) then
    // SKIP 처리.
  else
  begin
    if IsPayMethodPost then // 후불오더 캐쉬부족 체크..
    begin
      sBrNo := Proc_BRNOSearch;
      if not frm_main.func_brcash_check(sBrNo, StrToIntDef(FloatToStr(curRate.Value), 0)) then
      begin
        GMessagebox('지사캐쉬가 부족하여 후불로 접수할 수 없습니다.', cdmsi);
        exit;
      end;
    end;
  end;

  try
    if (cxLblCIDUseFlg.Hint <> 'CID') and (gsCuTelHint <> cxtCuTel.Text) then
    begin // CID 조회인지 설정을 한다., 고객전화번호 변경여부를 체크하기 위해 저장한다.
      GMessagebox(
        Format('검색된 [%s]전화번호와 현재 입력된 전화번호[%s]가 다릅니다.', [gsCuTelHint, cxtCuTel.Text]) + #13#10
        + Format('변경한 전화번호로 등록하려면 [%s]전화번호로 조회(엔터) 후에 접수하세요', [cxtCuTel.Text]) + #13#10
        + '[팁]기존 전화번호에 신규번호를 추가(수정)할려면 고객수정 버튼을 클릭 후 신규번호를 추가(수정)하고 저장하세요',
        CDMSI);
			if cxtCuTel.Enabled then cxtCuTel.SetFocus;
			Exit;
    end;

    if not NotNullCheck(True) then Exit;

    // 접수
    if btnCmdJoin.Enabled then
    begin
      btnCmdJoin.Enabled := False;
      lg_Save := '1';
      if BtnResv.Tag <> 1 then
      begin
				if not GS_JON_AutoStandBy then    // True := 접수->대기로 강제적용 2014.03.25 khs
					Proc_Save('0')  // 즉시 접수
				else
					Proc_Save('5');  //대기
			end else
				Proc_Save('R'); // 예약 접수

      if (not btnCmdUpdSave.Visible) and (btnCmdExit.Tag <> -1) then
      begin
        btnCmdExit.Tag := -1;
      end;
			Proc_BtnEnabled(True); // 버튼 활성/비활성 처리.
    end;
  except
    btnCmdJoin.Enabled := True;
    Log('Accept_Error1', LOGDATADIRECTORY + 'Accept_Err.log');
  end;
end;

// 접수전 기본값 체크..
procedure TFrm_JON01.N3Click(Sender: TObject);
begin
  if ( not Assigned(Frm_JON016) ) Or ( Frm_JON016 = Nil ) then
    Frm_JON016 := TFrm_JON016.Create(Nil);

  if ( TPopupMenu(Sender).Name = 'N3' ) Or
     ( TPopupMenu(Sender).Name = 'N4' ) then
  begin
    Frm_JON016.Tag := 1;
    Frm_JON016.pnlTitle.Caption := '   [접수창] 출발지/도착지 상용구 설정';
    Frm_JON016.pnlTitle.Color := $008FEBFE;
  end else
  begin
    Frm_JON016.Tag := 2;
    Frm_JON016.pnlTitle.Caption := '   [접수창] 적요 상용구 설정';
    Frm_JON016.pnlTitle.Color := $00CEEADF;
  end;

  Frm_JON016.Show;
  Frm_JON016.LoadData;
  Frm_JON016.BringToFront;
end;

procedure TFrm_JON01.N5Click(Sender: TObject);
var
  EnvFile: TIniFile;
begin
  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    EnvFile.WriteInteger('WinPos', 'Jon01Left', Self.Left);
    EnvFile.WriteInteger('WinPos', 'Jon01Top' , Self.Top );

    Frm_Main.iJonLeft := Self.Left;
    Frm_Main.iJonTop  := Self.Top;
  finally
    EnvFile.Free;
  end;
end;

function TFrm_JON01.NotNullCheck(b24HourCheck: boolean = False): Boolean;
var
  UserMile: Integer;
  sErrLine : String;
begin
  try
sErrLine := '1';
    Result := False;

    // DNIS 대표번호 찾기 정보창을 감춘다.  2011.05.17
    shrDNIS_DSP.Visible := False;
sErrLine := '2';
    locHdNo := Proc_HDNOSearch; // 본사코드 정보를 읽는다.
    if Length(locHdNo) < 3 then
    begin
      ShowMessage('지사정보를 선택하지 않았습니다. 지사를 선택 한 후에 오더접수를 하세요!');
      Exit;
    end;
sErrLine := '3';

    try
      if (cxtCuTel.Text = '') and ((cxtCallTelNum.Text = '발신정보없음') or (cxtCallTelNum.Text = '')) then
      begin
        GMessagebox('고객번호는 ' + MDXCI_0005, CDMSI);
        if ( cxtCuTel.Enabled ) And ( cxtCuTel.Visible ) then cxtCuTel.SetFocus;
        Exit;
      end;
    except
      on e: exception do begin
        Result := False;
        Assert(False, 'NotNullCheck Error 3 :' + sErrLine + ':' + E.Message);
      end;
    end;
sErrLine := '4';
    if (lg_Save <> '1') and (meoStartArea.Text = '') then
    begin
      GMessagebox('출발지는 필수 입력 항목 입니다.', CDMSI);
      if ( meoStartArea.Enabled ) And ( meoStartArea.Visible ) then meoStartArea.SetFocus;
      Exit;
    end;
sErrLine := '5';
    if Length(cxtCuTel.Text) > 1 then
    begin
      if not NumericCheck(STANDFUNCPATHFILE, '고객번호는 숫자만 입력하세요', cxtCuTel.Text) then
      begin
sErrLine := '6';
        if cxtCuTel.CanFocus then cxtCuTel.SetFocus;
        Exit;
      end;
    end;
sErrLine := '7';
    locKNum := Proc_MainKeyNumberSearch; // 대표번호 정보를 읽는다.
sErrLine := '8';
    if not NumericCheck(STANDFUNCPATHFILE, '대표번호는 숫자만 입력하세요', locKNum) then
    begin
      if cboBranch.CanFocus then cboBranch.SetFocus;
      Exit;
    end;
sErrLine := '9';
    // 24시간이 지난오더 수정 모드로 들어와 신규접수,대기 등록할때, 오늘접수등록 알림 메시지 보여준다.
    if (b24HourCheck = True) and (btnCmdUpdSave.Tag = 99) then
    begin
      GMessagebox('[신규접수알림] 수정모드에서 당일(오늘) 신규오더로 접수 합니다.', CDMSI);
      //Exit;   // 접수는 가능하게 되어야 함.
    end;
sErrLine := '10';
    if (cbbPayMethod.Text = PAY_METHOD_POST_MILE) then
    begin
      if locCardPaySeq = '' then     //20130613  LYB 후불마일리지 사용시 쿠폰사용하면 마일리지 체크 않함
      begin
sErrLine := '11';
        UserMile := StrToIntDef(lblCuMile.Caption, 0);
        if edtPostPay.Value > UserMile then
        begin
sErrLine := '12';
          GMessageBox(Format('고객의 보유 마일리지(%s)를 초과하여 마일리지를 입력하셨습니다.', [FormatFloat('#,##0', UserMile)]), CDMSI);
          edtPostPay.Value := UserMile;
          if edtPostPay.CanFocus then edtPostPay.SetFocus;
          Exit;
        end;
      end;
    end;
sErrLine := '13';
    Result := True;

  except
    on e: exception do
    begin
      Result := False;
      Log('NotNullCheck Error :' + sErrLine + ':' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'NotNullCheck Error :' + sErrLine + ':' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.PnlBtmMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lst_BRList.Visible := False;
end;

procedure TFrm_JON01.Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lst_BRList.Visible := False;
end;

procedure TFrm_JON01.PnlMemoResize(Sender: TObject);
var iReSize, iOrgSize, imeoCuCCMemo, imeoCuWorMemo, iTop : integer;
begin
  if PnlModifyTitle.Visible then
  begin
  	iOrgSize := 125;
	  imeoCuCCMemo := 58;
  	imeoCuWorMemo := 58;
	  iTop := 61;
  end else
  begin
  	iOrgSize := 140;
	  imeoCuCCMemo := 67;
  	imeoCuWorMemo := 67;
	  iTop := 69;
  end;

	iReSize := (PnlMemo.Height - iOrgSize) div 2;
	meoCuCCMemo.Height := imeoCuCCMemo + iReSize;
  mmoCbMemo.Height := meoCuCCMemo.Height;

	meoCuWorMemo.Height := imeoCuWorMemo + iReSize;
	meoCuWorMemo.Top := iTop + iReSize;
  cxLCuWorMemoFlg.Top := meoCuWorMemo.Top + 3;

  BtnViewMemo.Top := ( PnlMemo.Height - BtnViewMemo.Height ) - 5;
end;

procedure TFrm_JON01.PnlRightMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lst_BRList.Visible := False;
end;

procedure TFrm_JON01.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON01.PnlTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lst_BRList.Visible := False;
end;

// 주문 접수를 처리 한다.
procedure TFrm_JON01.Proc_Save(ss_Mode: string);
const
  lc_stCid  = '<CidInfo CidsYn="CidsYnString" CidsVersion="CidsVersionString" CidsAuto="CidsAutoString" CidsInline="CidsInlineString" CidsDnis="CidsDnisString" '
                    + 'CidsKeyNumber="CidsKeyNumberString" CidsCidNum="CidsCidNumString" CidsCidKey="CidsCidKeyString" CidsBrNo="CidsBrNoString" ManTel="ManTelString"  '
                    + 'ManKeyNumber="ManKeyNumberString" ManBrNo="ManBrNoString" />';

  lc_stArea = '<Depart Area1="stArea1String" Area2="stArea2String" Area3="stArea3String" Area4="stArea4String" Area5="stArea5String" '
                    + 'Charge="ChargeString" ConfInfo="ConfInfoString" MapX="stMapXString" MapY="stMapYString" PayGubun="PayGubunString" '
                    + 'Unpriced="UnpricedString" MCharge="MChargeString" MPayer="MPayerString" URLReq="URLReqString" WaitTime="WaitTimeString" '
                    + 'ChargeType="ChargeTypeString" AreaOpt="AreaSOPTString" AreaDebug="AreaSDebugString" AreaUp="AreaUPS" AreaSetType="AreaSetTypeString" AreaKeyword="AreaKeywordString" AreaId="AreaIdString" />';

  lc_edArea = '<Dest Area1="edArea1String" Area2="edArea2String" Area3="edArea3String" Area4="edArea4String" Area5="edArea5String" '
                  + 'MapX="edMapXString" MapY="edMapYString" AreaOpt="AreaEOPTString" AreaDebug="AreaEDebugString" AreaUp="AreaUPE" AreaSetType="AreaSetTypeString" AreaKeyword="AreaKeywordString" AreaId="AreaIdString" />';

	lc_ViaInfoString = '<Via Area1="Area1String" Area2="Area2String" Area3="Area3String" Area4="Area4String" Area5="Area5String" '
                        + 'MapX="MapXString" MapY="MapYString" AreaOpt="AreaVOPTString" AreaDebug="AreaVDebugString" AreaUp="AreaUPV" AreaSetType="AreaSetTypeString" AreaKeyword="AreaKeywordString" AreaId="AreaIdString" />';
var
  ls_TxLoad: string;
  lRow, iRow, iFidx: Integer;
  ls_stCid, ls_stArea, ls_stArea_Tot, ls_edArea, ls_edArea_Tot, ls_ViaInto: string;
  sCbCode, sCbNm, sCbDp, sErrMsg, sMsg : string;
  sBaechSMS: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  I, ErrCode: integer;

  iX, iY : String;

	StrValue, sContent: string;
  MCData: TMultiCallData;
begin
	try
    iFidx := Self.Tag;          // 폼의 index를 저장.

		//접수 시작
		ls_stArea := '';
		ls_edArea := '';
		ls_stArea_Tot := '';
		ls_edArea_Tot := '';
		Proc_BtnEnabled(False);     // 버튼 활성/비활성 처리.
		locHdNo := Proc_HDNOSearch; // 본사코드 정보를 읽는다.
    locBrNo := Proc_BRNOSearch; // 지사코드 정보를 읽는다.
    locKNum := Proc_MainKeyNumberSearch; // 대표번호 정보를 읽는다.

    if cxtCallTelNum.Text = '' then
    begin
      cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);
      cxtCallTelNum.Text := cxtCuTel.Text;
		end;

    //////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////
    ls_TxLoad := GTx_UnitXmlLoad('JON03080.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    sBaechSMS := '';
    StrValue := '';

    // 접수창에서 기사 강제 배차는 없어졌지만..접수 조회 화면에서 강제 배차가 있기 때문에 처리
    if ( blCompulWor ) and (Trim(sWkSabun) <> '') then
    begin
      sBaechSMS := IfThen(blChkCuSMS, '0', '1');  // 고객에게 문자를 전송할지의 여부,,
      if ss_Mode <> 'R' then
        ss_Mode   := '0';
      StrValue := Trim(sWkSabun);
    end;

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'WkSabunString', StrValue); // 기사사번 읽기.
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'BaechaSMSString', sBaechSMS);

    StrValue := IfThen(BtnCuSmsNo.Down, 'n', 'y');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'SMSString', StrValue);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'SAVE000' + ss_Mode);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'StatusString', ss_Mode);

    StrValue := IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustTelString', En_Coding(StrValue));

    StrValue := IfThen(0 >= Pos('*', cxtCuTel2.Text), cxtCuTel2.Text, locsCuTel2);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustTel2String', En_Coding(StrValue));

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CIDString', '');
    // 당일중에 제일 첫건에 대해서만 주장치에서 받았는지.. 직접접수했는지 체크함.[요는 콜마너를 사용하고있는지 체크하기 위함임]

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CallCenterString', En_Coding(GT_USERIF.CT));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'MaddBrchString', En_Coding(locBrNo));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'KeyNumberString', En_Coding(locKNum));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CidLogSeqString', En_Coding(locLogSeq));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'DNISString', locDNIS);

		sContent := '';
		sContent := ReplaceAll(Trim(meoCuCCMemo.Text), #$D#$A, '¶');
		sContent := ReplaceAll(sContent, #13#10, '¶');
		sContent := ReplaceAll(sContent, #10#13, '¶');
		sContent := StringReplace(sContent, '|', '¶', [rfReplaceAll]);

		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfMemoString', En_Coding(sContent));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfBrchString', '');

    // 고객구분-0(일반), 1(업소), 3(법인)
		if CbCuGb.ItemIndex = 2 then StrValue := '3' else
    if CbCuGb.ItemIndex = 1 then StrValue := '1'
                            else StrValue := '0';

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfBarString', StrValue);

    // 고객등급 추가 : 0.불량:빨강, 1.주의:주황, 2.일반:하늘, 3.우수:동색, 4.최우수:은색, 5.VIP:황금색
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'LevelCdString', GetCustLevelSeq);

    // 경유요금 :::::::: 신버전 추가 기능 개발..(법인기능요청으로,,개발,,)
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ViaChargeViaString', ReplaceAll(cxCurPathRate.Text, ',', ''));
    // 대기요금
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'WChargeWCString', ReplaceAll(cxCurWaitTmRate.Text, ',', ''));
    // 대기시간
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'WTimeWTString', cxTmWaitTime.Text + FloatToStr(fCruKm));
    // 보정금액
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'AChargeACString', ReplaceAll(cxCurRevisionRate.Text, ',', ''));
    // 적요투(2)
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfInfo2String', En_Coding(ReplaceAll(meoBigo2.Text, #10#13, '|')));
    // 기사종류

    if BtnOptionSexM.Down then StrValue := 'M' else
    if BtnOptionSexF.Down then StrValue := 'F'
                          else StrValue := 'A';

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'OptionString', StrValue);
    StrValue := StrValue + sStickCall + sTaksong;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'DriverString', StrValue);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PostTimeString', PostTime); // 입금시간코드
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PostChargeString', IntToStr(edtPostPay.Value)); // 자동입금금액

    sCbCode := '';
    sCbNm   := '';
    sCbDp   := '';
    if cxtCuBubin.Hint <> '' then
    begin // 법인코드 체크.
      sCbCode := cxtCuBubin.Hint;
      iRow := GT_BUBIN_INFO.cbcode.IndexOf(sCbCode + ',' + locBrNo);
      if iRow >= 0 then
      begin
        sCbNm := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[iRow]), 121, 16));  // 단축법인명
        sCbDp := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[iRow]), 137, 16));  // 단축법인부서명
      end;
    end;

    // 법인일 경우 세팅..
    if (CBCuGb.ItemIndex = 2) and (cxtCuBubin.Hint <> '') then
    begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BGroupString', En_Coding(sCbCode));
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BNameString', En_Coding(sCbNm));
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BName2String', En_Coding(sCbDp));
    end
    else
    begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BGroupString', '');
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BNameString', '');
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BName2String', '');
    end;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CuSeqString', lcsCu_seq);
    // 예약시간 //if chkResv.Checked = True then
    StrValue := IfThen(ss_Mode = 'R', formatdatetime('yyyymmdd', dtpResvDate.Date) + formatdatetime('hhmm', dtpResvTime.Time) + '00', '');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfPretimeString', StrValue);

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'GroupNoString', En_Coding(locHdNo));

		StrValue := IfThen(BtnCenterMng.Down, 'y', 'n'); // 상황실 체크박스
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'BrTelYnString', StrValue);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'CuTelYnString', CustBrTelYN);

    // 플러스콜 설정값 추가. 2010.10.03 --> 플러스콜을 법인콜로 변경함. 110906.
    // 플러스콜 여부(수도권만 사용함)
    if GS_PRJ_AREA = 'S' then
    begin
      StrValue := IfThen(BtnPlusYN.Down, 'y', 'n'); // 플러스콜 체크박스 --> 플러스콜을 법인콜로 변경함. 110906.
    end else
    begin
      StrValue := 'n';    // 지방권은 무조건 법인콜 사용안함. 2011-11-10.
    end;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PlusYnString', StrValue);

    // 기사 수수료 설정값 추가. 2010-11-03
    cxDriverCharge.Text := StringReplace(cxDriverCharge.Text,',','',[rfReplaceAll]);

    // KCP 카드결제 "결제일련번호" 추가.  2011-10-19
		StrValue  := cxDriverCharge.Text + '" CardPaySeq="' + locCardPaySeq;

    if (btnCmdJoinCopy.Hint = 'JOINCOPY') or (btnCmdWaitCopy.Hint = 'JOINCOPY') then
    begin
			if Assigned(Frm_JON34) then Frm_JON34.proc_init;
      locCardPaySeq  := '';
			locCardTranNo  := '';
      locCardPayInfo := '';
    end;

		ls_TxLoad := StringReplace(ls_TxLoad,'DriverChargeString', StrValue, [rfReplaceAll]);

		//PUSH 발송용 2013.03.30 khs
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'AppCodeString', sAppCode);

		// --------------------------------------------------------------------------------------------
    // 2006.06.06 추가(고객명, 차량정보, 후불, 맵번호에서 좌표로 변경)
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustNameString', En_Coding(edtCuName.Text));

		sContent := '';
		sContent := ReplaceAll(Trim(meoCuWorMemo.Text), #$D#$A, '|');
		sContent := ReplaceAll(sContent, #13#10, '|');
		sContent := ReplaceAll(sContent, #10#13, '|');
		sContent := StringReplace(sContent, '│', '|', [rfReplaceAll]);

		ls_TxLoad := ReplaceAll(ls_TxLoad, 'CarInfoString', En_Coding(sContent));

    if ss_Mode = 'R' then
    begin
      if BtnResJ.Down then
    		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfPreStatus1String', '0')
      else
      if BtnResD.Down then
    		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfPreStatus1String', '5');
    end else
    		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfPreStatus1String', '');

    if BtnOptionCallMu.Down then
  		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfOptionsString', 'y')
    else
  		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfOptionsString', 'n');

    // CID 정보 전송
    ls_stCid := lc_stCid;

    if cxLblCIDUseFlg.Hint <> 'CID' then
    begin
      ls_stCid := StringReplace(ls_stCid, 'CidsYnString',        'n'                    , [rfReplaceAll]); // CID서버로 부터 생성된 창인지 여부 (y,n)
      if gsCidVersion = 'CXE' then
        ls_stCid := StringReplace(ls_stCid, 'CidsVersionString',   '1', [rfReplaceAll]) // CID서버프로토콜버전 (0:구버전, 1:CIDXE버전)
      else
        ls_stCid := StringReplace(ls_stCid, 'CidsVersionString',   '0', [rfReplaceAll]); // CID서버프로토콜버전 (0:구버전, 1:CIDXE버전)
      ls_stCid := StringReplace(ls_stCid, 'CidsInlineString',    ''                     , [rfReplaceAll]); // 내선번호  (CID서버에서 수신한값)
      ls_stCid := StringReplace(ls_stCid, 'CidsDnisString',      ''                     , [rfReplaceAll]); // DNIS번호  (CID서버에서 수신한값)
      ls_stCid := StringReplace(ls_stCid, 'CidsKeyNumberString', ''                     , [rfReplaceAll]); // 대표번호  (CID서버에서 수신한값
      ls_stCid := StringReplace(ls_stCid, 'CidsCidNumString',    ''                     , [rfReplaceAll]); // 고객번호  (CID서버에서 수신한값)
      ls_stCid := StringReplace(ls_stCid, 'CidsCidKeyString',    ''                     , [rfReplaceAll]); // 고객번호별고유키값  (CID서버에서 수신한값)
      ls_stCid := StringReplace(ls_stCid, 'CidsBrNoString',      ''                     , [rfReplaceAll]); // 지사코드 (CID서버에서 수신한값)
    end else
    begin
      ls_stCid := StringReplace(ls_stCid, 'CidsYnString',        'y'                    , [rfReplaceAll]); // CID서버로 부터 생성된 창인지 여부 (y,n)
      if gsCidVersion = 'CXE' then
        ls_stCid := StringReplace(ls_stCid, 'CidsVersionString',   '1', [rfReplaceAll]) // CID서버프로토콜버전 (0:구버전, 1:CIDXE버전)
      else
        ls_stCid := StringReplace(ls_stCid, 'CidsVersionString',   '0', [rfReplaceAll]); // CID서버프로토콜버전 (0:구버전, 1:CIDXE버전)
      ls_stCid := StringReplace(ls_stCid, 'CidsInlineString',    gsInternalNumber       , [rfReplaceAll]); // 내선번호  (CID서버에서 수신한값)
      ls_stCid := StringReplace(ls_stCid, 'CidsDnisString',      En_Coding(locDNIS)     , [rfReplaceAll]); // DNIS번호  (CID서버에서 수신한값)
      ls_stCid := StringReplace(ls_stCid, 'CidsKeyNumberString', En_Coding(locKNum)     , [rfReplaceAll]); // 대표번호  (CID서버에서 수신한값
      ls_stCid := StringReplace(ls_stCid, 'CidsCidNumString',    cxtCallTelNum.Text     , [rfReplaceAll]); // 고객번호  (CID서버에서 수신한값)
      ls_stCid := StringReplace(ls_stCid, 'CidsCidKeyString',    locSndTime             , [rfReplaceAll]); // 고객번호별고유키값  (CID서버에서 수신한값)
      ls_stCid := StringReplace(ls_stCid, 'CidsBrNoString',      En_Coding(locBRNO)     , [rfReplaceAll]); // 지사코드 (CID서버에서 수신한값)
    end;

    ls_stCid := StringReplace(ls_stCid, 'ManTelString',        cxtCuTel.Text     , [rfReplaceAll]); // 고객번호   (상담원의 임의로 고객번호입력)
    ls_stCid := StringReplace(ls_stCid, 'ManKeyNumberString',  En_Coding(locKNum), [rfReplaceAll]); // 대표번호   (상담원이 임의로 지사/대표번호 선택)
    ls_stCid := StringReplace(ls_stCid, 'ManBrNoString',       En_Coding(locBRNO), [rfReplaceAll]); // 지사코드   (상담원이 임의로 지사/대표번호 선택)

    // 사용자별 오더통계를 계산하기 위한 속성값(CID : 0(일반), 1(CID))
    if cxLblCIDUseFlg.Hint = 'CID' then
    begin
      if locCustHP_MainNum_Search = '' then
        // JON03에서 고객 전화번호로  조회시 사용함. 구분값:'CUSTHP'
        ls_stCid := StringReplace(ls_stCid, 'CidsAutoString', '1', [rfReplaceAll])   // CID서버로부터 생성되어 최초 전문요청시 (1)
      else
        ls_stCid := StringReplace(ls_stCid, 'CidsAutoString', '0', [rfReplaceAll]);
    end else
    begin
      ls_stCid := StringReplace(ls_stCid, 'CidsAutoString', '0', [rfReplaceAll]);
    end;

    // //////////////////////////////////////////////////
    // 복수콜 처리[신버전에선 제외: 다른방식 채용]
		// //////////////////////////////////////////////////
    if (Assigned(Frm_JON015) and Frm_JON015.HandleAllocated)
      and (Frm_JON015.Count > 0) and (Frm_JON015.OrderHandle = Self.Handle) then
    begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'AddressCountString', IntToStr(Frm_JON015.Count));

			for I := 0 to Frm_JON015.Count - 1 do
      begin
        ls_stArea := lc_stArea;
        ls_edArea := lc_edArea;

				Frm_JON015.GetMultiCallData(I, MCData);

        // 출발지 좌표 중 X/Y가 동일하거나, X좌표가 비어있는 경우 발생하여 예외처리 지시(최도순)
        if ((MCData.StPosX <> '') or (MCData.StPosY <> '')) and ((MCData.StPosX = MCData.StPosY) or
          (MCData.StPosX = '')) then
				begin
          ShowMessage('출발지 좌표 정보가 올바르지 않습니다. 출발지를 다시 조회 하시고 수정 바랍니다.');
          Exit;
        end;

        // 20130923 LYB 지원팀 전용..지원팀원 저장시 시도/시군구/읍면동 저장 않함   수도권 토성대리-A876 상담지사12-D615
        if (GT_USERIF.HD = 'A876') And (GT_USERIF.BR = 'D615') then
        begin
          ls_stArea := ReplaceAll(ls_stArea, 'stArea1String', '');
          ls_stArea := ReplaceAll(ls_stArea, 'stArea2String', '');
          ls_stArea := ReplaceAll(ls_stArea, 'stArea3String', '');
        end else
        begin
          ls_stArea := ReplaceAll(ls_stArea, 'stArea1String', En_Coding(Copy(MCData.StArea1, 1, 2)));
          ls_stArea := ReplaceAll(ls_stArea, 'stArea2String', En_Coding(MCData.StArea2));
          ls_stArea := ReplaceAll(ls_stArea, 'stArea3String', En_Coding(MCData.StArea3));
        end;
				ls_stArea := ReplaceAll(ls_stArea, 'stArea4String', En_Coding(MCData.StArea4));
        ls_stArea := ReplaceAll(ls_stArea, 'stArea5String', En_Coding(MCData.StArea5));

        ls_stArea := ReplaceAll(ls_stArea, 'stMapXString', MCData.StPosX);
        ls_stArea := ReplaceAll(ls_stArea, 'stMapYString', MCData.StPosY);
        ls_stArea := ReplaceAll(ls_stArea, 'AreaUPS', GS_Grid_DEP);  // 출발지선택값

        if MCData.PayType = '후불' then StrValue := '2' else
				if MCData.PayType = '외상' then StrValue := '4'
                                   else StrValue := '0'; // 현금

        ls_stArea := ReplaceAll(ls_stArea, 'PayGubunString', StrValue);
        ls_stArea := ReplaceAll(ls_stArea, 'UnpricedString', IfThen(MCData.PriceYN, 'y', 'n'));
        ls_stArea := ReplaceAll(ls_stArea, 'URLReqString', IfThen(MCData.CorpYN, '1', ''));

        ls_stArea := ReplaceAll(ls_stArea, 'ConfInfoString', En_Coding(MCData.Summary));
        ls_stArea := ReplaceAll(ls_stArea, 'ChargeString', IntToStr(MCData.Price));

     		// 대기시간
				ls_stArea := ReplaceAll(ls_stArea, 'WaitTimeString', cxTmWaitTime.Text + FloatToStr(MCData.Km));
				ls_stArea := ReplaceAll(ls_stArea, 'ChargeTypeString' , '22');


				ls_stArea := ReplaceAll(ls_stArea, 'AreaSOPTString', '');
				ls_stArea := ReplaceAll(ls_stArea, 'AreaSDebugString', '');
				ls_stArea := ReplaceAll(ls_stArea, 'AreaSetTypeString', '');
				ls_stArea := ReplaceAll(ls_stArea, 'AreaKeywordString', '');
				ls_stArea := ReplaceAll(ls_stArea, 'AreaIdString'     , '');

        // 20130923 LYB 지원팀 전용..지원팀원 저장시 시도/시군구/읍면동 저장 않함 수도권 토성대리-A876 상담지사12-D615
        if (GT_USERIF.HD = 'A876') And (GT_USERIF.BR = 'D615') then
        begin
          ls_edArea := ReplaceAll(ls_edArea, 'edArea1String', '');
          ls_edArea := ReplaceAll(ls_edArea, 'edArea2String', '');
          ls_edArea := ReplaceAll(ls_edArea, 'edArea3String', '');
				end else
        begin
          ls_edArea := ReplaceAll(ls_edArea, 'edArea1String', En_Coding(Copy(MCData.EdArea1, 1, 2)));
          ls_edArea := ReplaceAll(ls_edArea, 'edArea2String', En_Coding(MCData.EdArea2));
          ls_edArea := ReplaceAll(ls_edArea, 'edArea3String', En_Coding(MCData.EdArea3));
        end;
				ls_edArea := ReplaceAll(ls_edArea, 'edArea4String', En_Coding(MCData.EdArea4));
        ls_edArea := ReplaceAll(ls_edArea, 'edArea5String', En_Coding(MCData.EdArea5));

        ls_edArea := ReplaceAll(ls_edArea, 'edMapXString', MCData.EdPosX);
        ls_edArea := ReplaceAll(ls_edArea, 'edMapYString', MCData.EdPosY);
        ls_edArea := ReplaceAll(ls_edArea, 'AreaUPE', GS_Grid_DES); // 도착지선택값

				ls_edArea := ReplaceAll(ls_edArea, 'AreaEOPTString', '');
				ls_edArea := ReplaceAll(ls_edArea, 'AreaEDebugString', '');
				ls_edArea := ReplaceAll(ls_edArea, 'AreaSetTypeString', '');
				ls_edArea := ReplaceAll(ls_edArea, 'AreaKeywordString', '');
				ls_edArea := ReplaceAll(ls_edArea, 'AreaIdString'     , '');

        ls_stArea_Tot := ls_stArea_Tot + ls_stArea;
        ls_edArea_Tot := ls_edArea_Tot + ls_edArea;
      end;
    end  else// 복수콜 처리 완료
    // 단일콜 처리..[복수콜 개념으로 처리함.]
    begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'AddressCountString', '1');

      ls_stArea := lc_stArea;
      ls_edArea := lc_edArea;

      if Trim(lcsSta1) = '' then
        lcsSta1 := slstLocalMapOrder[0];

      if (Trim(lcsEnd1) = '') and (GS_SEARCH_ENDNOSEARCH = False) then //도착지 검색 옵션적용 2012.05.30
        lcsEnd1 := slstLocalMapOrder[0];

      // 20130923 LYB 지원팀 전용..지원팀원 저장시 시도/시군구/읍면동 저장 않함 수도권 토성대리-A876 상담지사12-D615
      if (GT_USERIF.HD = 'A876') And (GT_USERIF.BR = 'D615') then
      begin
        ls_stArea := ReplaceAll(ls_stArea, 'stArea1String', '');
        ls_stArea := ReplaceAll(ls_stArea, 'stArea2String', '');
        ls_stArea := ReplaceAll(ls_stArea, 'stArea3String', '');
      end else
      begin
        ls_stArea := ReplaceAll(ls_stArea, 'stArea1String', En_Coding(Copy(lcsSta1, 1, 2)));
        ls_stArea := ReplaceAll(ls_stArea, 'stArea2String', En_Coding(lcsSta2));
        ls_stArea := ReplaceAll(ls_stArea, 'stArea3String', En_Coding(lcsSta3));
      end;
			ls_stArea := ReplaceAll(ls_stArea, 'stArea4String', En_Coding(cxtStartAreaDetail.Text));
      ls_stArea := ReplaceAll(ls_stArea, 'stArea5String', En_Coding(meoStartArea.Text));

			// 2006.06.06 맵번호 대신 좌표로 수정한다.
      if StrToFloatDef(cxtStartXval.Text, -1) = -1 then
      begin
        gJONStaChkXY.X := '';
        gJONStaChkXY.GUIDE_X := '';
        cxtStartXval.Text := '';
        cxtStartGUIDEXval.Text := '';
      end;

      if StrToFloatDef(cxtStartYval.Text, -1) = -1 then
      begin
        gJONStaChkXY.Y := '';
        gJONStaChkXY.GUIDE_Y := '';
        cxtStartYval.Text := '';
        cxtStartGUIDEYval.Text := '';
      end;

      if ((gJONStaChkXY.X) <> '') and (gJONStaChkXY.X[1] <> '0') then
        gJONStaChkXY.X := '0' + gJONStaChkXY.X;

      if ((cxtStartXval.Text) <> '') and (cxtStartXval.Text[1] <> '0') then
        cxtStartXval.Text := '0' + cxtStartXval.Text;

      // 출발지 좌표 중 X/Y가 동일하거나, X좌표가 비어있는 경우 발생하여 예외처리 지시(최도순)
      if ((cxtStartXval.Text <> '') or (cxtStartYval.Text <> '')) and ((cxtStartXval.Text = cxtStartYval.Text) or
        (cxtStartXval.Text = '')) then
      begin
        ShowMessage('출발지 좌표 정보가 올바르지 않습니다. 출발지를 다시 조회 하시고 수정 바랍니다.');
        Exit;
      end;

      // 20120808 LYB 수정
      iX := cxtStartXval.Text;
      iY := cxtStartYval.Text;

      if ( gJONStaChkXY.X <> cxtStartXval.Text ) Or ( gJONStaChkXY.Y <> cxtStartYval.Text ) then
      begin
        if ( gJONStaChkXY.X <> '' ) And ( gJONStaChkXY.Y <> '' ) And ( gJONStaChkXY.Area1 <> '') then
        begin
          sMsg := ' ** 출발지 선택원본과 접수정보가 일치하지 않습니다. ** ' + #13 +
                  '   - 출발지 선택원본                                     ' + #13 +
                  '   ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + #13 +
                  '   - 출발지 접수정보                                     ' + #13 +
                  '   ' + lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3 + ' ' + cxtStartAreaDetail.Text + ' ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + #13#10#13#10 +
                  '   출발지 선택원본으로 접수 처리 하시겠습니까?           ' + #13 +
                  '   (아니오 선택시 출발지 명칭 검색을 다시 해주시기바랍니다.) ';
          begin
//-            sErrMsg := '[접-출좌 Y] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + '-' + frm_JON03.iTabCnt + ' ' + gJONStaChkXY.Gubun;
            Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[변-출좌]');
            Assert(False, sErrMsg);
          end;

          iX := gJONStaChkXY.X;
          iY := gJONStaChkXY.Y;
        end else
        begin
//-          sErrMsg := '[접-출좌 O] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + '-' + frm_JON03.iTabCnt + ' ' + gJONStaChkXY.Gubun;
          Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[변-출좌]');
          Assert(False, sErrMsg);
        end;
      end;

			ls_stArea := ReplaceAll(ls_stArea, 'stMapXString', iX);
      ls_stArea := ReplaceAll(ls_stArea, 'stMapYString', iY);
      ls_stArea := ReplaceAll(ls_stArea, 'AreaUPS', GS_Grid_DEP);  // 출발지선택값

      // 결제방식.[0현금, 2후불, 4외상, 3모바일(미사용)]
      StrValue := PayMethod;
      ls_stArea := ReplaceAll(ls_stArea, 'PayGubunString', StrValue);

      // 미지정[요금 미지정을 한다.]
      StrValue := IfThen(chkNoSet.Down, 'y', 'n');
      ls_stArea := ReplaceAll(ls_stArea, 'UnpricedString', StrValue);

      // 법인인증(URL인증) 여부
      StrValue := '';
      ls_stArea := ReplaceAll(ls_stArea, 'URLReqString', StrValue);

      ls_stArea := ReplaceAll(ls_stArea, 'ConfInfoString', En_Coding(meoBigo.Text));
      ls_stArea := ReplaceAll(ls_stArea, 'ChargeString', ReplaceAll(curRate.Text, ',', ''));

     	// 대기시간
			ls_stArea := ReplaceAll(ls_stArea, 'WaitTimeString', cxTmWaitTime.Text + FloatToStr(fCruKm));
			ls_stArea := ReplaceAll(ls_stArea, 'ChargeTypeString' , '22');

		  ls_stArea := ReplaceAll(ls_stArea, 'AreaSOPTString', '9');
//-      Log('lcsStaDebug : ' + En_Coding(lcsStaDebug), LOGDATAPATHFILE);
			ls_stArea := ReplaceAll(ls_stArea, 'AreaSDebugString', En_Coding(lcsStaDebug));
			ls_stArea := ReplaceAll(ls_stArea, 'AreaSetTypeString', lcsStaCellSel);
			ls_stArea := ReplaceAll(ls_stArea, 'AreaKeywordString', En_Coding(lcsStaSchWord));
		  ls_stArea := ReplaceAll(ls_stArea, 'AreaIdString'     , lcsStaDocId);

      // 20130923 LYB 지원팀 전용..지원팀원 저장시 시도/시군구/읍면동 저장 않함 수도권 토성대리-A876 상담지사12-D615
      if (GT_USERIF.HD = 'A876') And (GT_USERIF.BR = 'D615') then
			begin
				ls_edArea := ReplaceAll(ls_edArea, 'edArea1String', '');
				ls_edArea := ReplaceAll(ls_edArea, 'edArea2String', '');
				ls_edArea := ReplaceAll(ls_edArea, 'edArea3String', '');
      end else
			begin
        ls_edArea := ReplaceAll(ls_edArea, 'edArea1String', En_Coding(Copy(lcsEnd1, 1, 2)));
        ls_edArea := ReplaceAll(ls_edArea, 'edArea2String', En_Coding(lcsEnd2));
        ls_edArea := ReplaceAll(ls_edArea, 'edArea3String', En_Coding(lcsEnd3));
			end;
			ls_edArea := ReplaceAll(ls_edArea, 'edArea4String', En_Coding(cxtEndAreaDetail.Caption));
      ls_edArea := ReplaceAll(ls_edArea, 'edArea5String', En_Coding(meoEndArea.Text));

      // 2006.07.24 도착지좌표 추가한다.
      if StrToFloatDef(cxtEndXval.Text, -1) = -1 then
      begin
        cxtEndXval.Text := '';
        cxtEndGUIDEXval.Text := '';
      end;
			if StrToFloatDef(cxtEndYval.Text, -1) = -1 then
      begin
        cxtEndYval.Text := '';
        cxtEndGUIDEYval.Text := '';
      end;

      ls_edArea := ReplaceAll(ls_edArea, 'edMapXString', cxtEndXval.Text);
      ls_edArea := ReplaceAll(ls_edArea, 'edMapYString', cxtEndYval.Text);
      ls_edArea := ReplaceAll(ls_edArea, 'AreaUPE', GS_Grid_DES); // 도착지선택값

		  ls_edArea := ReplaceAll(ls_edArea, 'AreaEOPTString', '9');
//-      Log('lcsEndDebug : ' + En_Coding(lcsEndDebug), LOGDATAPATHFILE);
			ls_edArea := ReplaceAll(ls_edArea, 'AreaEDebugString', En_Coding(lcsEndDebug));
			ls_edArea := ReplaceAll(ls_edArea, 'AreaSetTypeString', lcsEndCellSel);
			ls_edArea := ReplaceAll(ls_edArea, 'AreaKeywordString', En_Coding(lcsEndSchWord));
      ls_edArea := ReplaceAll(ls_edArea, 'AreaIdString'     , lcsEndDocId);

      ls_stArea_Tot := ls_stArea_Tot + ls_stArea;
      ls_edArea_Tot := ls_edArea_Tot + ls_edArea;
    end; // 단일 콜 완료

//--------------------------------------------------------------------------------------------
//  경유지 추가
//--------------------------------------------------------------------------------------------
		if GT_PASS_INFO[iFidx][0].AREA1 = '' then
		begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'ViaInfoCountString', '0');
			ls_ViaInto := lc_ViaInfoString;
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area1String', '');
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area2String', '');
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area3String', '');
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area4String', '');
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area5String', '');
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'MapXString', '');
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'MapYString', '');
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaUPV', '');  // 경유지선택값

			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaVOPTString', '9');
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaVDebugString', '');
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaSetTypeString', '');
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaKeywordString', '');
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaIdString'     , '');
		end else
		begin
			lRow := 0;
			ls_ViaInto := '';
			while lRow <= 4 do
			begin
				if GT_PASS_INFO[iFidx][lRow].AREA1 = '' then
					break;
        ls_ViaInto := ls_ViaInto + lc_ViaInfoString;
				ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area1String', En_Coding(Copy(GT_PASS_INFO[iFidx][lRow].AREA1, 1, 2)));
				ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area2String', En_Coding(GT_PASS_INFO[iFidx][lRow].AREA2));
				ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area3String', En_Coding(GT_PASS_INFO[iFidx][lRow].AREA3));
        ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area4String', En_Coding(GT_PASS_INFO[iFidx][lRow].AREA4));
        ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area5String', En_Coding(GT_PASS_INFO[iFidx][lRow].AREA5));
        ls_ViaInto := ReplaceAll(ls_ViaInto, 'MapXString', GT_PASS_INFO[iFidx][lRow].MAP_X);
				ls_ViaInto := ReplaceAll(ls_ViaInto, 'MapYString', GT_PASS_INFO[iFidx][lRow].MAP_Y);
        ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaUPV', GS_Grid_VIA);  // 경유지선택값

	  		ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaVOPTString', '9');
  			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaVDebugString', '');
  			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaSetTypeString', GT_PASS_INFO[iFidx][lRow].CELLS);
  			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaKeywordString', En_Coding(GT_PASS_INFO[iFidx][lRow].SWORD));
        ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaIdString'     , GT_PASS_INFO[iFidx][lRow].DOCID);
				inc(lRow);
      end;
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'ViaInfoCountString', IntToStr(lRow));
    end;

    // ------------------------------------------------------------------------
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'CidInfoString', ls_stCid);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ViaInfoString', ls_ViaInto);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'DepartInfoString', ls_stArea_Tot);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'DestInfoString', ls_edArea_Tot);

    // - 와이즈넛 검색어 실패/성공 여부 전송
    if GS_Grid_DEP <> 'C' then
    begin
      if GS_Grid_DEP = 'W' then sRespSParam1 := meoStartArea.Text
                           else sRespSParam1 := GS_Grid_DEP + '/' + meoStartArea.Text + '/' + cxtStartXval.Text + '/' + cxtStartYval.Text;

      sRespSParam2 := GS_Grid_DEP;
      sRespSParam3 := lcsStaCellSel;
    end;

    if ( GS_Grid_DES <> 'D' ) And ( GS_Grid_DES <> 'C' ) then
    begin
      if GS_Grid_DES = 'W' then sRespEParam1 := meoEndArea.Text
                           else sRespEParam1 := GS_Grid_DES + '/' + meoEndArea.Text + '/' + cxtEndXval.Text + '/' + cxtEndYval.Text;

      sRespEParam2 := GS_Grid_DES;
      sRespEParam3 := lcsEndCellSel;
    end;

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      Proc_JobAfterProc(True, True);

      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);   // [hjf]

          tmFormClose.Tag := 99; // 화면 닫기 설정값.
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, True);

      tmrResponse.Enabled := True;
    end;
  except
    on e: Exception do
    begin
      ls_ViaInto := 'JON01[Proc_Save]오더저장:' + e.message;
      Log(ls_ViaInto, LOGDATADIRECTORY + 'Accept_Err.log');

      Assert(False, ls_ViaInto);

      Proc_BtnEnabled(True); // 버튼 활성/비활성 처리.
    end;
  end;
end;

procedure TFrm_JON01.GB3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lst_BRList.Visible := False;
end;

function TFrm_JON01.GetCustLevelSeq: string;
var sTemp : string;
begin
	Try
		Result := '';
		if cboCuLevel.ItemIndex >= 0 then
			Result := SCboLevelSeq[cboCuLevel.ItemIndex];
	except
		sTemp := 'GetCustLevelSeq';
		Log('고객등급 : '+ sTemp, LOGDATAPATHFILE);
	end;
end;

procedure TFrm_JON01.SetCustBrTelYN(const Value: string);
begin
  FCustBrTelYN := LowerCase(Value);

  if Value = 'y' then LblCenterMng.Caption := '상황실 ON'
                 else LblCenterMng.Caption := '상황실 OFF';
end;

// 오더를 대기로 접수 한다.
procedure TFrm_JON01.Proc_OrderWaitJoinIns;
begin
  try
    if not NotNullCheck(True) then
      Exit;

    if IsPayMethodPost then // 후불오더 캐쉬부족 체크..
    begin
      locBrNo := Proc_BRNOSearch;
      if not frm_main.func_brcash_check(locBrNo, StrToIntDef(FloatToStr(curRate.Value), 0)) then
      begin
        GMessagebox('지사캐쉬가 부족하여 후불로 접수할 수 없습니다.', cdmsi);
        exit;
      end;
    end;

    if cxLblCIDUseFlg.Hint <> 'CID' then
    begin // CID 조회인지 설정을 한다.
      if gsCuTelHint <> cxtCuTel.Text then
        // 고객전화번호 변경여부를 체크하기 위해 저장한다.
      begin
        GMessagebox(Format('검색된 [%s]전화번호와 현재 입력된 전화번호[%s]가 다릅니다.', [gsCuTelHint, cxtCuTel.Text]) + #13#10 +
          Format('변경한 전화번호로 등록하려면 [%s]전화번호로 조회(엔터) 후에 접수하세요', [cxtCuTel.Text]) + #13#10
          + '[팁]기존 전화번호에 신규번호를 추가(수정)할려면 고객수정 버튼을 클릭 후 신규번호를 추가(수정)하고 저장하세요', CDMSI);
        Exit;
      end;
    end;

    lg_Save := '1';
    Proc_Save('5'); // 대기로 접수..

    if (not btnCmdUpdSave.Visible) and (btnCmdExit.Tag <> -1) then
    begin
      btnCmdExit.Tag := -1;
    end;
  except
    on e: exception do
    begin
      Log('Proc_OrderWaitJoinIns Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_OrderWaitJoinIns Error :' + E.Message);
    end;
  end;
end;

// 오더를 문의로 접수 한다.
procedure TFrm_JON01.Proc_OrderQuesJoinIns;
begin
  try
    if not NotNullCheck then
      Exit;

    if IsPayMethodPost then // 후불오더 캐쉬부족 체크..
    begin
      locBrNo := Proc_BRNOSearch;
      if not frm_main.func_brcash_check(locBrNo, StrToIntDef(FloatToStr(curRate.Value), 0)) then
      begin
        GMessagebox('지사캐쉬가 부족하여 후불로 접수할 수 없습니다.', cdmsi);
        exit;
      end;
    end;

    if cxLblCIDUseFlg.Hint <> 'CID' then
    begin // CID 조회인지 설정을 한다.
      if gsCuTelHint <> cxtCuTel.Text then
        // 고객전화번호 변경여부를 체크하기 위해 저장한다.
      begin
        GMessagebox(Format('검색된 [%s]전화번호와 현재 입력된 전화번호[%s]가 다릅니다.', [gsCuTelHint, cxtCuTel.Text]) + #13#10 +
          Format('변경한 전화번호로 등록하려면 [%s]전화번호로 조회(엔터) 후에 접수하세요', [cxtCuTel.Text]) + #13#10
          + '[팁]기존 전화번호에 신규번호를 추가(수정)할려면 고객수정 버튼을 클릭 후 신규번호를 추가(수정)하고 저장하세요', CDMSI);
        Exit;
      end;
    end;

    lg_Save := '1';
    Proc_Save('4'); // 문의로 접수..

    if (not btnCmdUpdSave.Visible) and (btnCmdExit.Tag <> -1) then
    begin
      btnCmdExit.Tag := -1;
    end;
  except
    on e: exception do
    begin
      Log('Proc_OrderQuesJoinIns Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_OrderQuesJoinIns Error :' + E.Message);
    end;
  end;
end;

// 법인정보를 조회한다.
procedure TFrm_JON01.Proc_BubinListSearch;
var
  i, iRow: Integer;
  sKeyNum, sShortNm, sShortDp, sFullName, sFullDp, sCbCode, sBrNo: string;
begin
  // 선택된 지사정보에서 지사코드.
  sBrNo := Proc_BRNOSearch; //지사코드
  // 선택된 지사정보에서 대표번호.
  sKeyNum := Proc_MainKeyNumberSearch; //대표번호
  sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);

  cxBubinView.BeginUpdate;

  cxBubinView.DataController.SetRecordCount(0);
  iRow := cxBubinView.DataController.AppendRecord;
  cxBubinView.DataController.Values[iRow, 0] := '선택(법인정보미입력)';
  // 법인명
  cxBubinView.DataController.Values[iRow, 1] := '선택'; // 부서명
  cxBubinView.DataController.Values[iRow, 2] := '선택'; // 단축법인명
  cxBubinView.DataController.Values[iRow, 3] := '선택'; // 단축부서명
  cxBubinView.DataController.Values[iRow, 4] := ''; // 법인코드
  for i := 0 to GT_BUBIN_INFO.cbEtc.Count - 1 do
  begin
    if GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(sBrNo, 5, ' ') + Rpad(sKeyNum, 15, ' ') then
    begin
      if (Trim(cxtBubinSearchName.Text) = '') or
        (Pos(Trim(cxtBubinSearchName.Text),
        GT_BUBIN_INFO.cbEtc.Strings[i]) > 0) then
      begin
        sFullName := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[i]), 1, 60));
        sFullDp   := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[i]), 61, 60));
        sShortNm  := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[i]), 121, 16));
        sShortDp  := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[i]), 137, 16));
        sCbCode   := GT_BUBIN_INFO.cbcode.Strings[i];
        // 법인코드 + , + 지사코드
        iRow := cxBubinView.DataController.AppendRecord;
        //Inc(iRow);
        cxBubinView.DataController.Values[iRow, 0] := sFullName;
        cxBubinView.DataController.Values[iRow, 1] := sFullDp;
        cxBubinView.DataController.Values[iRow, 2] := sShortNm;
        cxBubinView.DataController.Values[iRow, 3] := sShortDp;
        cxBubinView.DataController.Values[iRow, 4] := sCbCode;
      end;
    end;
  end;
  cxBubinView.EndUpdate;
end;

// 폼의 컨트롤을 초기화 한다.
procedure TFrm_JON01.ChkMiniClick(Sender: TObject);
begin
  if ChkMini.Checked then procFrmSizeChange('Y', Self)
                     else procFrmSizeChange('N', Self) 
end;

procedure TFrm_JON01.ControlClear(bTF: boolean = False);
begin
  FCustBrTelYN := '';

  // 컨트롤 초기화..
  edtCuName.Text := ''; // 고객명
  CbCuGb.Hint := 'Clear';
  CbCuGb.ItemIndex := 0; // -- 개인(고객구분)
  CbCuGbPropertiesChange(CbCuGb);
  CbCuGb.Hint := '';

  lblCuCntTotal.Caption := '0'; // 접수
  lblCoCntTotal.Caption := '0'; // 완료
  lblCuCancelR.Caption := '0%'; // 취소율
  lblCuMile.Caption := '0'; // 적립마일리지
  lblCuMileUnit.Caption := '0'; // 기준마일리지
  lblCuMileCnt.Caption := '0'; // 지급 횟수

  meoCuCCMemo.Clear; // 상담메모(상담원용)
  meoCuCCMemo.Width := 276;

	mmoCuInfo.Text := '앱코드 : '#13#10 +
  								  '앱설치 : '#13#10+
                    '앱삭제 : '#13#10 +
  								  '최종 : '#13#10 +
  								  '앱지역 : '#13#10 +
  								  '모델 : '#13#10 +
  								  'OS : '#13#10 +
  								  '사용 : ';

  BtnCuSmsNo.Down := False;

  mmoCBMemo.Clear;
  mmoCBMemo.Visible := False;
  meoCuWorMemo.Lines.Clear; // 기사용고객메모
  lblCuBubinName.Caption := ''; // 법인명/부서명

//-  mmoCuAppInfo.Clear;

  pnlMileage.Color := $00C1DADB;
  Proc_SetFormColor_2(2);
  DefaultCustLevel;
  SetMileColorChange;
end;

procedure TFrm_JON01.curKmEnter(Sender: TObject);
begin
  if ( pnl_charge.Caption <> '' ) And ( GT_DISTANCE_ST = 1 ) then
  begin
    pnl_charge.Visible := True;

//-    if GT_DISTANCE_ST = 1 then BtnSR.Visible := True;
  end;
end;

procedure TFrm_JON01.curKmExit(Sender: TObject);
begin
  pnl_charge.Visible := False;
end;

procedure TFrm_JON01.curRateEnter(Sender: TObject);
begin
  // 대표번호 별 기본 설정 요금 반영 여부를 결정 한다.[True:반영, False:미반영]
	if ((gsMyMainTelUse = 'FALSE') or (GSMyMainTelOrderChargeCheck)) and (not IsMultiCallFixPrice)
    and ((Pos('수정', Self.Caption) > 0 ) and (cxtJoinNum.Hint[1] in ['2', '4', '8']))
    and (    (cxtStartXval.Text <> cxtStartXval.Hint) or (cxtStartYval.Text <> cxtStartYval.Hint)
          or (cxtEndXval.Text <> cxtEndXval.Hint) or (cxtEndYval.Text <> cxtEndYval.Hint))  // 좌표변환이 있었을경우
    then
  begin
   tmrThRealDis.Tag := 0;
    proc_dis_alculation(Self.Tag, True);
    if GT_DISTANCE_ST = 1  then proc_Realdis_Mng
                           else begin
                                  curRate.Value := func_search_charge;
                                  OrgRate := curRate.Value;
                                end;
  end;

  FIsCalcPrice := True;

  if pnl_charge.Caption <> '' then
  begin
    pnl_charge.Visible := True;

//-    if GT_DISTANCE_ST = 1 then BtnSR.Visible := True;
  end;
  if PnlSuggest.Visible then
  begin
    PnlSuggest.Visible := False;
    AdvGridSj.ShowSelection := False;
  end;
  PnlPOISch.Visible := False;
end;

procedure TFrm_JON01.curRateExit(Sender: TObject);
begin
  pnl_charge.Visible := False;
  if curRate.Text = '' then
    curRate.Value := 0;

  //기사 수수료 검색
  if Area_Charge_YN = 'y' then
  begin
    Proc_Driver_Charge;
  end else
    cxDriverCharge.Text := '';
end;

procedure TFrm_JON01.curRateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if curRate.Value < 1000 then
    begin
      curRate.Value := curRate.Value * 1000;
    end;
    if meoBigo.Visible = True then
      meoBigo.SetFocus
    else
      meoBigo2.SetFocus;

		if ((gsMyMainTelUse = 'FALSE') or (GSMyMainTelOrderChargeCheck)) and (not IsMultiCallFixPrice) then
      OrgRate := curRate.Value;

//    if cxCurRevisionRate.Value > 0 then
//      curRate.Value := curRate.Value + cxCurRevisionRate.Value;
  end;

  if Ord(key) in [VK_F7..VK_F12, VK_ESCAPE, Vk_F1] then
  begin
    case ord(key) of
      Vk_F1:
        if btnPickupInsert.Visible then
          btnPickupInsert.OnClick(btnPickupInsert); // 픽업등록 단축키 : 2011.05.25 CDS. Add.
      //      VK_F6     : if rb_search.Enabled then rb_Search.OnClick(rb_Search);
      Vk_F7: //if rb_Modify.Enabled then rb_Modify.OnClick(rb_Modify);              // 수정
        if btnCmdUpdSave.Enabled then
          btnCmdUpdSave.OnClick(btnCmdUpdSave);
      Vk_F8: //whbtn_Cancel.OnClick(whbtn_Cancel);                                   // 종료
        btnCmdExit.OnClick(btnCmdExit);
      Vk_F9:
        begin
          //if lg_Enter <> '' then exit;
          //  lg_Enter := 'Enter';
          if not btnCmdJoin.Enabled then
            Exit; // 접수
          btnCmdJoinClick(btnCmdJoin);
        end;
      Vk_F10:
        if btnCmdWait.Enabled then
          btnCmdWait.OnClick(btnCmdWait); // 대기
      Vk_F11:
        if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // 복수콜
      Vk_F12:
        if btnCmdQuestion.Enabled then
          btnCmdQuestion.OnClick(btnCmdQuestion); // 문의
      VK_ESCAPE: // ESC 키
        begin
          if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
          begin
            if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '')
              and (Trim(lblStartAreaName.Text) = '') and (Trim(lblEndAreaName.Caption) = '')
              and (Trim(cxtStartAreaDetail.Text) = '') and (Trim(cxtEndAreaDetail.Caption) = '') then
              btnCmdExit.OnClick(btnCmdExit); // 종료
          end;
        end;
    end;
  end;
end;

procedure TFrm_JON01.curRateKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '-' then
    Key := #0;
end;

procedure TFrm_JON01.curRateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  if PnlSuggest.Visible then
    begin
      PnlSuggest.Visible := False;
      PnlPOISch.Visible := False;
      AdvGridSj.ShowSelection := False;
      PnlSuggest.Caption := '';
    end;

  OrgRate := curRate.Value;
end;

procedure TFrm_JON01.curRatePropertiesChange(Sender: TObject);
var
  UserMile: Integer;
  TotMile : Real;
begin
  // 기사자동입금액 보정
	if IsPayMethodPost then
  begin
    if GS_PRJ_AREA = 'S' then
    begin
      // 수도권은 수정모드에서도 허용
      if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
      begin
				UserMile := StrToIntDef(lblCuMile.Caption, 0);
				edtPostPay.Value := IfThen(UserMile >= curRate.Value, curRate.Value, UserMile);
      end
			else
				edtPostPay.Value := curRate.Value;
    end else
    begin
			// 지방권은 수정모드에서 미적용.
      // 수정모드 일때는 기사자동입금액이 수정되지 않도록 요청하여 적용함(신과장요청). 2011.07.19
      if Pos('수정', Self.Caption) = 0 then
      begin
        if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
        begin
					UserMile := StrToIntDef(lblCuMile.Caption, 0);
					if AUseMileage then
						edtPostPay.Value := IfThen(UserMile >= curRate.Value, curRate.Value, 10000)
					else
						edtPostPay.Value := IfThen(UserMile >= curRate.Value, curRate.Value, UserMile);
				end else
				begin
          if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

					if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트2K 20140221 KHS
						edtPostPay.Value := 2000
					else
   				if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트3K 20141007 KHS
	 					edtPostPay.Value := 3000
	  			else
						edtPostPay.Value := curRate.Value;
				end;
			end;
    end;
  end;

  if cbbPostTime.Text = POST_TIME_NOPAY then
  begin
		edtPostPay.Value := 0;
  end;

  if cbbPayMethod.Text = PAY_METHOD_POST_MILE then          //  20130705  LYB   요금수정되면 쿠폰결제금액도 수정
  begin
 	  if Assigned(frm_JON34) then
    begin
      frm_JON34.cxCurDecRate_Coupon.Value := curRate.Value;

      if frm_JON34.lblCouponStatus.Caption = '승인완료' then
      begin
        UserMile := StrToIntDef(lblCuMile.Caption, 0);
				if frm_JON34.cxCurDec_Coupon.Value >= frm_JON34.cxCurDecRate_Coupon.Value then
					edtPostPay.Value := frm_JON34.cxCurDecRate_Coupon.Value
        else
        begin
					TotMile := frm_JON34.cxCurDec_Coupon.Value + UserMile;
          if frm_JON34.cxCurDecRate_Coupon.Value > TotMile then
						edtPostPay.Value := TotMile
          else
						edtPostPay.Value := frm_JON34.cxCurDecRate_Coupon.Value;
        end;
      end;
    end;
  end;

	AppendPostDesc;
end;

procedure TFrm_JON01.SetCustLevelData(AGroup: TCustGroup);
var
	I: Integer;
	sTemp : string;
begin
	cboCuLevel.Properties.Items.Clear;
	Try
		if Assigned(AGroup) then
		begin
			FCustLevel := AGroup;
			SCboLevelSeq.Clear;
			for I := 0 to Length(AGroup.LevelInfo) - 1 do
			begin
				cboCuLevel.Properties.Items.add(AGroup.LevelInfo[I].LevelName);
				SCboLevelSeq.Add(AGroup.LevelInfo[I].LevelSeq);
			end;

			DefaultCustLevel;
		end;
	except
		sTemp := 'SetCustLevelData';
		Log('고객등급 : '+ sTemp, LOGDATAPATHFILE);
	end;
end;

procedure TFrm_JON01.DefaultCustLevel;
begin
  if Assigned(FCustLevel) and Assigned(FCustLevel.Default) then
  begin
    SetCustLevelSeq(FCustLevel.Default.LevelSeq);
  end;
end;

procedure TFrm_JON01.dtpResvDatePropertiesChange(Sender: TObject);
begin
  if cxGbReserv.Visible then
    fGetDiffDay( FormatDateTime('YYYYMMDD', dtpResvDate.Date) + FormatDateTime('HHNN00', dtpResvTime.Time) );
end;

procedure TFrm_JON01.SetCustLevelSeq(ASeq: string);
var
	I: Integer;
	sTemp : string;
begin
	try
		if ASeq = '' then
		begin
			DefaultCustLevel;
			Exit;
		end;

		cboCuLevel.ItemIndex := SCboLevelSeq.IndexOf(ASeq);

	except
		sTemp := 'SetCustLevelSeq';
		Log('고객등급 : '+ sTemp, LOGDATAPATHFILE);
	end;
end;

// 법인 선택 정보를 보여준다.
procedure TFrm_JON01.Proc_BubinChoice;
var
  iRow, iRateType, iChoiceRow: Integer;
  sCbcode, sCbCd, sBubin: string;
begin
  iChoiceRow := cxBubinView.DataController.FocusedRecordIndex;
  if iChoiceRow = -1 then
    exit;

  if iChoiceRow > 0 then
  begin
    sCbcode := cxBubinView.DataController.Values[iChoiceRow, 4];
    sCbCd := Copy(sCbcode, 1, Pos(',', sCbcode) - 1);
    sBubin := Trim(cxBubinView.DataController.Values[iChoiceRow, 0]) + ' | ' +
      Trim(cxBubinView.DataController.Values[iChoiceRow, 1]);
    lblCuBubinName.Caption := '법인고객 [ ' + Trim(sBubin) + ' ]';
    cxtCuBubin.Text := sBubin;
    cxtCuBubin.Hint := sCbCd;
    if (Pos('수정', Self.Caption) = 0 ) then
    begin
      iRow := GT_BUBIN_INFO.cbcode.IndexOf(sCbcode);
      iRateType := StrToIntDef(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[iRow]), 153, 1), 1);
      PayMethod := PAY_METHOD_MONEY;
    end;
  end else
  begin
    cxtCuBubin.Text := '';
    cxtCuBubin.Hint := '';
    payMethod := PAY_METHOD_MONEY;
    Self.lblCuBubinName.Caption := '';
  end;
  cxBubinView.DataController.SetRecordCount(0);
  pnlBubin.Visible := False;
end;

procedure TFrm_JON01.SetCustAppInfo(AAppCode, AAppLastRegDate,
	AAppLastDelDate, AAppLastFinishDate, AAppCuArea, AAppTermModel,
	AAppTermOS, AAppDelYn: string);
const
	__Cu_INF_STR = '앱코드 : %0:s'#13#10 +
								 '앱설치 : %1:-12s'#13#10+
                 '앱삭제 : %2:-12s'#13#10 +
								 '최종 : %3:-10s'#13#10 +
								 '앱지역 : %4:s'#13#10 +
								 '모델 : %5:-15s'#13#10 +
								 'OS : %6:-17s'#13#10 +
								 '사용 : %7:-10s';
begin
	mmoCuInfo.Text := Format(__Cu_INF_STR, [AAppCode, AAppLastRegDate, AAppLastDelDate, AAppLastFinishDate, AAppCuArea, AAppTermModel, AAppTermOS, AAppDelYn]);
end;

procedure TFrm_JON01.proc_delete_customer;
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, sBrNo, sHdNo:
  string;
  sParam, sTemp, sKeynum, sCustTel: string;
  slRcvList: TStringList;
  ls_rxxml: string;
  ErrCode: integer;
begin
  if lcsCu_seq = '' then
  begin
    GMessagebox('고객이 없습니다!', CDMSI);
    Exit;
  end;

  try
    sHdNo := Proc_HDNOSearch;
    sBrNo := Proc_BRNOSearch;
    sKeynum := Proc_MainKeyNumberSearch;
    sCustTel := ReplaceAll(cxtCuTel.Text, '-', '');
    if GMessagebox('삭제고객번호 : ' + strtocall(sCustTel) + #13#10 +
      '삭제시 고객정보와 이용횟수, 마일리지가 삭제됩니다.' + #13#10 +
      '[단, 고객 이용내역은 삭제되지 않습니다.]' + #13#10 +
      '[또한, 현재 등록된 오더가 있을 경우에도 삭제 안됨]' + #13#10 +
      '삭제하시겠습니까?', CDMSQ) <> idok then
      exit;

    sKeynum := ReplaceAll(sKeynum, '-', '');
    sCustTel := ReplaceAll(sCustTel, '-', '');

    ls_TxLoad := GTx_UnitXmlLoad('CALLABLE.xml');

    sTemp := 'PROC_DELETE_CUSTOMER_NEW1(?,?,?,?,?,?)';
    sParam := ReplaceAll(ls_Param, 'ParamString', sHdNo);
    sParam := sParam + ReplaceAll(ls_Param, 'ParamString', sBrNo);
    sParam := sParam + ReplaceAll(ls_Param, 'ParamString', sKeynum);
    sParam := sParam + ReplaceAll(ls_Param, 'ParamString', sCustTel);
    sParam := sParam + ReplaceAll(ls_Param, 'ParamString', lcsCu_seq);

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'DELETECUST');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CallString', sTemp);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CountString', IntToStr(5));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ParamString', sParam);

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      Proc_JobAfterProc(True, False);

      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);

          tmFormClose.Tag := 99; // 화면 닫기 설정값.
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, False);
    end;

  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON01.SetStartAreaMap(const ASido, AGugun, ADong, ADetail, AX, AY: string);
begin
	if BtnStLock.Hint = 'F4)수정' then
  begin
    // 20120805 좌표 오류 체크 LYB
    gJONStaChkXY.Area1 := ASido;
    gJONStaChkXY.Area2 := AGugun;
    gJONStaChkXY.Area3 := ADong;
    gJONStaChkXY.Area4 := ADetail;
    gJONStaChkXY.Area5 := ASido + ' ' + AGugun + ' ' + ADong;
    gJONStaChkXY.X := AX;
    gJONStaChkXY.Y := AY;
    gJONStaChkXY.GUIDE_X := '';
    gJONStaChkXY.GUIDE_Y := '';

    cxtStartXval.Text := AX;
    cxtStartYval.Text := AY;
    cxtStartGUIDEXval.Text := '';
    cxtStartGUIDEYval.Text := '';

    BtnStLock.Hint := 'F4)잠금';
    BtnStLock.Tag  := 0;
    BtnStLock.Down := True;
    BtnStLock.OptionsImage.ImageIndex := 1;

    frm_JON30.N1.Enabled := False;
    frm_JON30.N1.Caption := '출발지선택(좌표만이동)-잠금상태';
    frm_JON30.N1.Enabled := False;
    frm_JON30.N6.Enabled := False;
    frm_JON30.N6.Caption := '출발지선택(주소+좌표이동)-잠금상태';

    meoStartArea.SetFocus;
    meoStartArea.SelStart := Length(meoStartArea.Text);
  end;
end;

procedure TFrm_JON01.SetEndAreaMap(const ASido, AGugun, ADong, ADetail, AX,
  AY: string);
begin
	if BtnEdLock.Hint = 'F4)수정' then
	begin
		gJONEndChkXY.X := AX;
		gJONEndChkXY.Y := AY;
		gJONEndChkXY.GUIDE_X := AX;
		gJONEndChkXY.GUIDE_Y := AY;

    cxtEndXval.Text := AX;
		cxtEndYval.Text := AY;
    cxtEndGUIDEXval.Text := AX;
		cxtEndGUIDEYval.Text := AY;

		BtnEdLock.Hint := 'F4)잠금';
    BtnEdLock.Tag  := 0;
    BtnEdLock.OptionsImage.ImageIndex := 1;
    BtnEdLock.Down := True;
		frm_JON30.N2.Enabled := False;
		frm_JON30.N2.Caption := '도착지선택(좌표만이동)-잠금상태';
		frm_JON30.N2.Enabled := False;

		frm_JON30.N7.Enabled := False;
		frm_JON30.N7.Caption := '도착지선택(주소+좌표이동)-잠금상태';

		meoEndArea.SetFocus;
    meoEndArea.SelStart := Length(meoEndArea.Text);
	end;
end;

procedure TFrm_JON01.Hide_Panel(Panel: string; Showhide : integer);
begin
  if Frm_JON30.Tag > 21 then Frm_JON30.Tag := Self.Tag;

	if Showhide = 0 then
  begin
    if (Panel = 'meoStartAreaCUT') OR (Panel = 'meoEndAreaCUT') then
    begin
			frm_JON30.Show;
    end else
    begin
      frm_JON30.Top := Frm_JON30.j30Top;
			frm_JON30.Left := Frm_JON30.j30Left;
      Frm_JON30.bChkTime := True;
      Frm_Jon30.TmrChkTag.Tag := 100;
      frm_JON30.Show;
		end;
  end else
	if Showhide = 1 then
	begin
    if (Panel = 'meoStartAreaCUT') OR (Panel = 'meoEndAreaCUT') then
    begin
			frm_JON30.Hide;
    end else
    begin
      frm_JON30.j30Top := Frm_JON30.Top;
      frm_JON30.j30Left := Frm_JON30.Left;
      frm_JON30.bChkTime := False;
      Frm_Jon30.TmrChkTag.Tag := 100;
      frm_JON30.Hide;
		end;
	end;

  if (Panel = 'meoStartArea') or (Panel = 'meoStartAreaCUT') then
  begin
    frm_JON30.pnl_01START.Visible := True;
    frm_JON30.pnl_02END.Visible := False;
    frm_JON30.pnl_03VIA.Visible := False;
	end else
  if (Panel = 'meoEndArea') or (Panel = 'meoEndAreaCUT') then
  begin
    frm_JON30.pnl_01START.Visible := False;
    frm_JON30.pnl_02END.Visible := True;
    frm_JON30.pnl_03VIA.Visible := False;
  end else
  if Panel = 'meoViaArea' then
  begin
    frm_JON30.pnl_01START.Visible := False;
    frm_JON30.pnl_02END.Visible := False;
    frm_JON30.pnl_03VIA.Visible := True;
	end;

	if Showhide = 0 then
    if frm_JON30.chkUseMiniMap.Checked then frm_JON30.SetPOIMapDisplay;
end;

procedure TFrm_JON01.AllClear;
begin
  Frm_JON30.Grid_Init('meoStartArea',1);
  Frm_JON30.Grid_Init('meoStartArea',2);
  Frm_JON30.Grid_Init('meoStartArea',3);
  Frm_JON30.Grid_Init('meoStartArea',4);
  Frm_JON30.Grid_Init('meoEndArea'  ,1);
  Frm_JON30.Grid_Init('meoEndArea'  ,2);
  Frm_JON30.Grid_Init('meoEndArea'  ,3);
  Frm_JON30.Grid_Init('meoEndArea'  ,4);
  Frm_JON30.Grid_Init('meoViaArea'  ,1);
  Frm_JON30.Grid_Init('meoViaArea'  ,2);
  Frm_JON30.Grid_Init('meoViaArea'  ,3);
  Frm_JON30.Grid_Init('meoViaArea'  ,4);
  frm_JON30.ClearWkIcon;
  frm_JON30.ClearPOI;
end;

procedure TFrm_JON01.lcs_Clear(Panel: string);
begin
  if Panel = 'meoStartArea' then
  begin
    if BtnStLock.Hint <> 'F4)잠금' then    //  20130703  LYB  잠금상태에서는 초기화하지 않는다.
    begin
      // 20120805 좌표 오류 체크 LYB
      gJONStaChkXY.Area1 := '';
      gJONStaChkXY.Area2 := '';
      gJONStaChkXY.Area3 := '';
      gJONStaChkXY.Area4 := '';
      gJONStaChkXY.Area5 := '';
      gJONStaChkXY.X := '';
      gJONStaChkXY.Y := '';
      gJONStaChkXY.GUIDE_X := '';
      gJONStaChkXY.GUIDE_Y := '';

      lcsSta1 := '';
      lcsSta2 := '';
      lcsSta3 := '';
      lcsSta4 := '';
      lcsStaDocId := '';
      lcsStaCellSel := '';
      lcsStaSchWord := '';
      lcsStaUrl := '';
      lcsStaDebug := '';
      lblStartAreaName.Text := '';
      cxtStartAreaDetail.Text := '';
      cxtStartXval.Text := '';
      cxtStartYval.Text := '';
      cxtStartGUIDEXval.Text := '';
      cxtStartGUIDEYval.Text := '';
    end;
  end else
  if Panel = 'meoEndArea' then
  begin
    if BtnEdLock.Hint <> 'F4)잠금' then    //  20130703  LYB  잠금상태에서는 초기화하지 않는다.
    begin
      lcsEnd1 := '';
      lcsEnd2 := '';
      lcsEnd3 := '';
      lcsEnd4 := '';
      lcsEndDocId := '';
      lcsEndCellSel := '';
      lcsEndSchWord := '';
      lcsEndUrl := '';
      lcsEndDebug := '';
      lblEndAreaName.Caption := '';
      cxtEndAreaDetail.Caption := '';
      cxReEndArea.Text := '';

      gJONEndChkXY.X := '';
      gJONEndChkXY.Y := '';
      gJONEndChkXY.GUIDE_X := '';
      gJONEndChkXY.GUIDE_Y := '';

      cxtEndXval.Text := '';
      cxtEndYval.Text := '';
      cxtEndGUIDEXval.Text := '';
      cxtEndGUIDEYval.Text := '';
    end;
  end else
  if Panel = 'meoViaArea' then
	begin
{		frmJon013.cxtSA1.Text := '';
		frmJon013.cxtSA2.Text := '';
		frmJon013.cxtSA3.Text := '';
		frmJon013.lblStartAreaName.Caption := '';
    frmJon013.cxtStartAreaDetail.Text := '';
		frmJon013.cxtStartXval.Text := '';
		frmJon013.cxtStartYval.Text := '';}
  end;
end;

procedure TFrm_JON01.SetStartAreaMapNew(const ASido, AGugun, ADong, ADetail, AX, AY: string);
begin
  if BtnStLock.Hint = 'F4)수정' then
  begin
    // 20120805 좌표 오류 체크 LYB
    gJONStaChkXY.Area1 := ASido;
    gJONStaChkXY.Area2 := AGugun;
    gJONStaChkXY.Area3 := ADong;
    gJONStaChkXY.Area4 := ADetail;
    gJONStaChkXY.Area5 := ASido + ' ' + AGugun + ' ' + ADong;
    gJONStaChkXY.X := AX;
    gJONStaChkXY.Y := AY;
    gJONStaChkXY.GUIDE_X := '';
    gJONStaChkXY.GUIDE_Y := '';

    lcsSta1 := ASido;
    lcsSta2 := AGugun;
    lcsSta3 := ADong;
    if ASido <> '' then  lblStartAreaName.Text := ASido + ' ' + AGugun + ' ' + ADong;

    cxtStartXval.Text := AX;
    cxtStartYval.Text := AY;
    cxtStartGUIDEXval.Text := '';
    cxtStartGUIDEYval.Text := '';

    BtnStLock.Hint := 'F4)잠금';
    BtnStLock.Tag  := 0;
    BtnStLock.OptionsImage.ImageIndex := 1;
    BtnStLock.Down := True;
    frm_JON30.N1.Enabled := False;
    frm_JON30.N1.Caption := '출발지선택(좌표만이동)-잠금상태';
    frm_JON30.N1.Enabled := False;
    frm_JON30.N6.Enabled := False;
    frm_JON30.N6.Caption := '출발지선택(주소+좌표이동)-잠금상태';

    meoStartArea.SetFocus;
    meoStartArea.SelStart := Length(meoStartArea.Text);
  end;
end;

procedure TFrm_JON01.SetEndAreaMapNew(const ASido, AGugun, ADong, ADetail, AX, AY: string);
begin
  if BtnEdLock.Hint = 'F4)수정' then
  begin
    lcsEnd1 := ASido;
    lcsEnd2 := AGugun;
    lcsEnd3 := ADong;
    if ASido <> '' then
    begin
      lblEndAreaName.Caption := ASido + ' ' + AGugun + ' ' + ADong;
      cxReEndArea.Text := lblEndAreaName.Caption + ' ' + cxtEndAreaDetail.Caption;
      MarkAllWords(cxReEndArea, UpperCase(meoEndArea.Text), clRed, [fsBold]);
    end;

		gJONEndChkXY.X := AX;
		gJONEndChkXY.Y := AY;
		gJONEndChkXY.GUIDE_X := AX;
		gJONEndChkXY.GUIDE_Y := AY;

    cxtEndXval.Text := AX;
		cxtEndYval.Text := AY;
    cxtEndGUIDEXval.Text := AX;
		cxtEndGUIDEYval.Text := AY;

    BtnEdLock.Hint := 'F4)잠금';
    BtnEdLock.Tag  := 0;
    BtnEdLock.OptionsImage.ImageIndex := 1;
    BtnEdLock.Down := True;

    frm_JON30.N2.Enabled := False;
    frm_JON30.N2.Caption := '도착지선택(좌표만이동)-잠금상태';
    frm_JON30.N2.Enabled := False;

    frm_JON30.N7.Enabled := False;
    frm_JON30.N7.Caption := '도착지선택(주소+좌표이동)-잠금상태';

    meoEndArea.SetFocus;
    meoEndArea.SelStart := Length(meoEndArea.Text);
  end;
end;

procedure TFrm_JON01.Proc_AreaSearchKDown_Added(Key: Word);
var sViaWord : string;
begin
	if (lcsActiveEdit = 'meoEndArea') and (GS_SEARCH_ENDNOSEARCH = True) then Exit;  //도착지 검색 안함 2012.05.29 KHS
	if not (key in [vk_F7..vk_F12]) then
	begin
    Log('Line 15827', LOGDATAPATHFILE);
		if ViaNowTag = 1 then sViaWord := meoViaArea1.Text
		                 else sViaWord := meoViaArea[ViaNowTag].Text;

		if ((lcsActiveEdit = 'meoStartArea') and (Length(WideString(meoStartArea.Text)) >= 2)) Or
			 ((lcsActiveEdit = 'meoEndArea'  ) and (Length(WideString(meoEndArea.Text)) >= 2)) Or
			 ((lcsActiveEdit = 'meoViaArea'  ) and (Length(WideString(sViaWord)) >= 2))then
		begin
			Application.ProcessMessages;

			if not frm_JON30.noSearch then      //advgrid3 클릭 시 재 검색 안됨.
      begin
				if GS_MAP_AREA_AUTOSHOW and (not frm_JON30.Visible) and (not Assigned(Frm_COM30)) then
        begin
          if ( (meoStartArea.Focused) Or (meoEndArea.Focused) Or
               (meoViaArea1.Focused) Or  (meoViaArea[2].Focused) Or (meoViaArea[3].Focused) Or
               (meoViaArea[4].Focused) Or  (meoViaArea[5].Focused) ) then      //  20130703  LYB  출발지/도착지 포커스가 있을때만 창 표시
          begin
  				  Hide_Panel(lcsActiveEdit,0);
            if GT_USERIF.ID = 'sntest' then Log('14817--' + lcsActiveEdit, LOGDATAPATHFILE);
          end;
        end else
        if GS_MAP_AREA_AUTOSHOW = False then
        begin
          frm_JON30.chk_Map(False);
          Hide_Panel(lcsActiveEdit,0);
          if GT_USERIF.ID = 'sntest' then Log('14824--' + lcsActiveEdit, LOGDATAPATHFILE);
				end;

        Log('Line 15856', LOGDATAPATHFILE);
        if ( GS_SEARCH_POISVR_SGSTUSE ) And ( frm_JON30.cxChkPoiSvr.Checked ) then
        begin
          TT4.Interval := 30;
          TT4.Enabled := True;
        end else
        begin
          PnlSuggest.Visible := False;
          AdvGridSj.ShowSelection := False;
        end;

        if GT_USERIF.ID = 'sntest' then Log('Proc_AreaSearchKDown_Added ' + meoStartArea.Text, LOGDATAPATHFILE);

        frm_JON30.Show;
				frm_JON30.tmThread.Interval := 90;
				frm_JON30.tmThread.Enabled := True;
			end else
      begin
        frm_JON30.noSearch := False;
			end;
    end else
    begin
      Frm_JON30.Grid_Init(lcsActiveEdit,1);
			Frm_JON30.Grid_Init(lcsActiveEdit,2);
      Frm_JON30.Grid_Init(lcsActiveEdit,3);
      Frm_JON30.Grid_Init(lcsActiveEdit,4);
			giAreaKeyFullMatch_CNT := 0; // 세부정보 풀매칭 후 부근,인근 입력시 유지 위해서.
      giKeyWordSerchValue := 0;    // 세부정보 풀매칭 후 부근,인근 입력시 유지 위해서.
		end;
	end;
end;

procedure TFrm_JON01.proc_dis_alculation_Via(bSearchFlag: boolean);
var
  i, iRow: Integer;
  fdis: double;
  XLposVia, YLposVia : String;
begin
	XLposVia := '';
	YLposVia := '';

	if Via_Info[1].XposVia = '' then
  begin
		fDis := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
			cxtStartXval.Text,
			cxtStartYval.Text,
			cxtEndXval.Text,
			cxtEndYval.Text) *
      StrToFloatDef(CHARGE_DIS, 1.0), ffNumber, 3, 1), 0.0);

    fDirKm := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
			cxtStartXval.Text,
			cxtStartYval.Text,
			cxtEndXval.Text,
			cxtEndYval.Text), ffNumber, 3, 1), 0.0);
	end else
	if (Via_Info[1].XposVia <> '') and (Via_Info[2].XposVia  = '') then
  begin
		fDis := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
			cxtStartXval.Text,
			cxtStartYval.Text,
			Via_Info[1].XposVia,
			Via_Info[1].YposVia) *
			StrToFloatDef(CHARGE_DIS, 1.0), ffNumber, 3, 1), 0.0)
			+ StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
			Via_Info[1].XposVia,
			Via_Info[1].YposVia,
			cxtEndXval.Text,
			cxtEndYval.Text) *
			StrToFloatDef(CHARGE_DIS, 1.0), ffNumber, 3, 1), 0.0);

		fDirKm := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
			cxtStartXval.Text,
			cxtStartYval.Text,
			Via_Info[1].XposVia,
			Via_Info[1].YposVia), ffNumber, 3, 1), 0.0)
			+ StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
			Via_Info[1].XposVia,
			Via_Info[1].YposVia,
			cxtEndXval.Text,
			cxtEndYval.Text), ffNumber, 3, 1), 0.0);
	end else
  if Via_Info[2].XposVia <> '' then
	begin
    // 출발지 --> 경유지1
		fDis := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
			cxtStartXval.Text,
			cxtStartYval.Text,
			Via_Info[1].XposVia,
			Via_Info[1].YposVia) * StrToFloatDef(CHARGE_DIS, 1.0), ffNumber, 3, 1), 0.0);

		fDirKm := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
			cxtStartXval.Text,
			cxtStartYval.Text,
			Via_Info[1].XposVia,
			Via_Info[1].YposVia), ffNumber, 3, 1), 0.0);

    // 경유지1 --> 경유지 최종 까지..
		for i := 2 to 5 do
		begin
      if Via_Info[i].XposVia <> '' then
      begin
  			fDis := fDis +
  				StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
  				Via_Info[i-1].XposVia,
  				Via_Info[i-1].YposVia,
  				Via_Info[i].XposVia,
  				Via_Info[i].YposVia) * StrToFloatDef(CHARGE_DIS, 1.0),
          ffNumber, 3, 1), 0.0);

  			fDirKm := fDirKm +
  				StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
  				Via_Info[i-1].XposVia,
  				Via_Info[i-1].YposVia,
  				Via_Info[i].XposVia,
  				Via_Info[i].YposVia),
          ffNumber, 3, 1), 0.0);

        XLposVia := Via_Info[i].XposVia;
        YLposVia := Via_Info[i].YposVia;
      end;
    end;

    // 경유지 최종 --> 도착지 까지..
		if cxtEndXval.Text <> '' then
		begin
			if bSearchFlag <> True then
      begin
				// 최종 확인 버튼 누를때,, 즉 종료전에 마지막것은 Km를 재계산하지 않는다.
        fDis := fDis +
					StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
					XLposVia,
					YLposVia,
					cxtEndXval.Text,
					cxtEndYval.Text) * StrToFloatDef(CHARGE_DIS, 1.0),
					ffNumber, 3, 1), 0.0);

        fDirKm := fDirKm +
					StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
					XLposVia,
					YLposVia,
					cxtEndXval.Text,
					cxtEndYval.Text),
					ffNumber, 3, 1), 0.0);
			end;
		end;
  end;

  if ( GT_DISTANCE_ST = 0 ) then
  begin
  	curKm.Text := FloatToStr(fDis) + 'Km';
    fCruKm := fDis;
  end else
  begin
    fChgKm := fDis;
    Lbl_Distance.Caption := Format(' 직선)%s', [FloatToStr(fDis) + 'Km']);
  end;
end;

function TFrm_JON01.proc_dis_Real_Via( AFromLon, AFromLat, AToLon, AToLat : Integer ) : Real;
Var
  SRPort, iErr : integer;
  sTmp : Double;
  SRIp : string;
  info : IXRouteInfo4;
begin
  SmartSR := TSmartSRXCtrl.Create(nil);
  try
    try
      RouteMan := nil;

      if RouteMan = nil then
        RouteMan := SmartSR.GetRouteMan();

      GetSearchRouteIpPort(SRIp, SRPort);

      if RouteMan.Open(SRIp, SRPort) then
        RouteMan.Clear()
      else
      begin
        if SRPort = 1095 then SRPort := 1096 else
        if SRPort = 1096 then SRPort := 1095;

        if RouteMan.Open(SRIp, SRPort) then
          RouteMan.Clear()
        else
        begin
          ShowMessage('경로탐색 서버에 연결할수 없습니다.');
          Exit;
        end;
      end;

      Log('4. SmartSR Start Bessel : ' + IntToStr(AFromLon) + ',' + IntToStr(AFromLat) , LOGDATAPATHFILE);
      RouteMan.SetOrgLonLat(AFromLon, AFromLat);
      RouteMan.SetDstLonLat(AToLon, AToLat);
      Log('4. SmartSR End Bessel : ' + IntToStr(AToLon) + ',' + IntToStr(AToLat) + ' -  IP : ' + SRIp + ' Port : ' + IntToStr(SRPort) , LOGDATAPATHFILE);

      ////// 양방향 탐색을 위해서는 아래의 옵션을 추가해 주세요. //////
      RouteMan.SetOrgDirectionToBoth();
      RouteMan.SetViaDirectionToBoth();
      RouteMan.SetDstDirectionToBoth();

      ////// Toll비
      RouteMan.SetTollFareType(1);

      ////// 탐색 옵션
      ////// 탐색 옵션 1.장거리최적 - 2.장거리최단
      ///              1.일반도로  2.고속도로
      ///              1.무료      2.유로
      if Frm_Main.Frm_JON01[Self.Tag].fDirKm < 70 then
        RouteMan.Remote_SetRPCType(2, 1, 1)  // 최단, 일반도로, 무로
      else
        RouteMan.Remote_SetRPCType(2, 2, 2);  // 최단, 고속도로, 유로
      /////////////////////////////////////////////////////////////////

      info := RouteMan.SearchRoute4;
      if (info <> nil) then
      begin
        try
          iErr := info.GetResult;

          if iErr <= 0 then
          begin
            dm.SetServerEXT;
            Exit;
          end;
        Except

        end;

        sTmp := info.GetTotalDistance;
        sTmp := Roundto(sTmp / 1000,-1);

        Result := Ceil(fCruKm - sTmp);
      end;
    Except
      on e: exception do
      begin
        FreeAndNil(SmartSR);
        RouteMan := nil;
        Assert(False, E.Message);
        ShowMessage('Proc_RouteLine Error:' + e.message);
      end;
    end;
  finally
    Log('4. SmartSR Distance : ' + FloatToStr(sTmp), LOGDATAPATHFILE);
    FreeAndNil(SmartSR);
    RouteMan := nil;
  end;
end;

procedure TFrm_JON01.ViaOK;
var
	i, iRow, j, jRow, iLastViaTag, iVia: Integer;
	bSearchYN: boolean; // 요금 재조회 여부
  sViaTmp : String;
begin
	iRow := Self.Tag; // 폼 인덱스.

	bSearchYN := False; // 요금 재조회 여부

  if gsViaStartEndCheck = 'Y' then
  begin
  	if pos('/', meoStartArea.Text) > 0 then
	  	meoStartArea.Text := Copy(meoStartArea.Text, 1, pos('/', meoStartArea.Text) - 1);
  end else
  begin
  	if LastPos('/', meoEndArea.Text) > 0 then
	  	meoEndArea.Text := Copy(meoEndArea.Text, LastPos('/', meoEndArea.Text) + 1, Length(meoEndArea.Text) - LastPos('/', meoEndArea.Text) );
  end;

	if (Via_Info[1].XposVia <> '') and (ViaADDTag = 0) then ViaADDTag := 1; //첫번째 경유지일 경우

	iLastViaTag := ViaADDTag;

  sViaTmp := '';

	iVia := 1;    //저장전문에 포함될 경유지 추가 초기값
	if iLastViaTag > 0 then
	begin
		for i := 0 to 4 do
		begin
			GT_PASS_INFO[iRow][i].AREA1 := '';
      GT_PASS_INFO[iRow][i].AREA2 := '';
      GT_PASS_INFO[iRow][i].AREA3 := '';
			GT_PASS_INFO[iRow][i].AREA4 := '';
			GT_PASS_INFO[iRow][i].AREA5 := '';
			GT_PASS_INFO[iRow][i].DOCID := '';
			GT_PASS_INFO[iRow][i].CELLS := '';
			GT_PASS_INFO[iRow][i].SWORD := '';
			GT_PASS_INFO[iRow][i].MAP_X := '';
			GT_PASS_INFO[iRow][i].MAP_Y := '';
    end;

		for i := 1 to iLastViaTag do
		begin
			if i = 1 then
			begin
				if meoViaArea1.Text <> '' then
				begin
					GT_PASS_INFO[iRow][iVia - 1].AREA1 := Via_Info[i].ViaSA1;
					GT_PASS_INFO[iRow][iVia - 1].AREA2 := Via_Info[i].ViaSA2;
					GT_PASS_INFO[iRow][iVia - 1].AREA3 := Via_Info[i].ViaSA3;
					GT_PASS_INFO[iRow][iVia - 1].AREA4 := Via_Info[i].ViaAreaDetail;
					GT_PASS_INFO[iRow][iVia - 1].AREA5 := meoViaArea1.Text;
					GT_PASS_INFO[iRow][iVia - 1].DOCID := Via_Info[i].DocId;
					GT_PASS_INFO[iRow][iVia - 1].CELLS := Via_Info[i].CellSel;
					GT_PASS_INFO[iRow][iVia - 1].SWORD := Via_Info[i].ViaAreaDetail;
					GT_PASS_INFO[iRow][iVia - 1].MAP_X := Via_Info[i].XposVia;
					GT_PASS_INFO[iRow][iVia - 1].MAP_Y := Via_Info[i].YposVia;
          if gsViaStartEndCheck = 'Y' then
  					meoStartArea.Text := meoStartArea.Text + '/' + meoViaArea1.Text
          else
  					sViaTmp := meoViaArea1.Text + '/';
					inc(iVia);
				end;
			end else
			begin
				if meoViaArea[i].Text <> '' then
				begin
					GT_PASS_INFO[iRow][iVia - 1].AREA1 := Via_Info[i].ViaSA1;
					GT_PASS_INFO[iRow][iVia - 1].AREA2 := Via_Info[i].ViaSA2;
					GT_PASS_INFO[iRow][iVia - 1].AREA3 := Via_Info[i].ViaSA3;
					GT_PASS_INFO[iRow][iVia - 1].AREA4 := Via_Info[i].ViaAreaDetail;
					GT_PASS_INFO[iRow][iVia - 1].AREA5 := meoViaArea[i].Text;
					GT_PASS_INFO[iRow][iVia - 1].DOCID := Via_Info[i].DocId;
					GT_PASS_INFO[iRow][iVia - 1].CELLS := Via_Info[i].CellSel;
					GT_PASS_INFO[iRow][iVia - 1].SWORD := Via_Info[i].ViaAreaDetail;
					GT_PASS_INFO[iRow][iVia - 1].MAP_X := Via_Info[i].XposVia;
					GT_PASS_INFO[iRow][iVia - 1].MAP_Y := Via_Info[i].YposVia;
          if gsViaStartEndCheck = 'Y' then
  					meoStartArea.Text := meoStartArea.Text + '/' + meoViaArea[i].Text
          else
  					sViaTmp := sViaTmp + meoViaArea[i].Text + '/';
					inc(iVia);
				end;
			end;
    end;

		meoEndArea.Text := sViaTmp + meoEndArea.Text;

		if pos('경유)', meoStartArea.Text) < 1 then
		begin
			if GT_PASS_INFO[iRow][0].AREA1 <> '' then
			begin
				cb_02.down := True;
				cb_00Click(cb_02);
			end;
		end	else
		begin
			if GT_PASS_INFO[iRow][0].AREA1 = '' then
			begin
				cb_02.down := False;
				cb_00Click(cb_02);
			end;
		end;
	end	else
	begin
		i := 1;
		GT_PASS_INFO[iRow][i - 1].AREA1 := '';
		GT_PASS_INFO[iRow][i - 1].AREA2 := '';
		GT_PASS_INFO[iRow][i - 1].AREA3 := '';
    GT_PASS_INFO[iRow][i - 1].AREA4 := '';
		GT_PASS_INFO[iRow][i - 1].AREA5 := '';
		GT_PASS_INFO[iRow][i - 1].DOCID := '';
		GT_PASS_INFO[iRow][i - 1].CELLS := '';
		GT_PASS_INFO[iRow][i - 1].SWORD := '';
		GT_PASS_INFO[iRow][i - 1].MAP_X := '';
    GT_PASS_INFO[iRow][i - 1].MAP_Y := '';

		if pos('경유)', meoStartArea.Text) > 0 then
		begin
			cb_02.down := False;
			cb_00Click(cb_02);
		end;
	end;

  if ( Not fnc_RealKmThread_End ) And ( GT_DISTANCE_ST = 1 ) then
  begin
    Exit;
  end;

	proc_dis_alculation_Via;
	if bSearchYN = False then
	begin // 요금 재조회 여부
		if ((gsMyMainTelUse = 'FALSE') or (GSMyMainTelOrderChargeCheck)) and (not IsMultiCallFixPrice) then
    begin
      tmrThRealDis.Tag := 0;
      if GT_DISTANCE_ST = 1  then proc_Realdis_Mng
                             else begin
                               			curRate.Value := func_search_charge;
                                    OrgRate := curRate.Value;
                                  end;
   	end;
  end;
end;

procedure TFrm_JON01.SetMileColorChange;
var
  CurMile,
  UseMile: Integer;
  FontColor: TColor;
begin
  CurMile := StrToIntDef(RemoveComma(lblCuMile.Caption), -1);
  UseMile := StrToIntDef(RemoveComma(lblCuMileUnit.Caption), 0);

	if CurMile > UseMile then
	begin
		FontColor := clWhite;
		pnlMileage.Color := clBlue;
		if (GS_PRJ_AREA = 'O') and ((Proc_MainKeyNumberSearch = '0519999999')
														 or (Proc_MainKeyNumberSearch = '025231793')) then    //부산오천콜 3박4일 2013.12.11 KHS
		begin
			AUseMileage := True;
		end;
	end else
	begin
		FontColor := clBlack;
		pnlMileage.Color := Self.Color;
	end;

  lblCuMile.Font.Color := FontColor;
  Label5.Font.Color := FontColor;
  Label1.Font.Color := FontColor;
  lblCuMileUnit.Font.Color := FontColor;
  Label4.Font.Color := FontColor;
  lblCuMileCnt.Font.Color := FontColor;
end;

function TFrm_JON01.fJON01_SmartCharge(AOderWorker, AWeather, ASta1, ASta2,
  ASta3, ASPOI, ASX, ASY, AEnd1, AEnd2, AEnd3, AEPOI, AEX, AEY, AType: string; Var OType : String) : Integer;
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  XmlData, Param, ErrMsg: string;
  xdom: DomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  I, ErrCode, iRow, iRCnt, iSearchType : Integer;
  ls_MSG_Err, sTmp: string;
  ls_Rcrd: TStringList;
  sSampleAmount, sDate : string;
  sSmart, sRank1, sRank2 : string;
begin
  Result := 0;
  //////////////////////////////////////////////////////////////////////////////////
  //  접수 전문
  //////////////////////////////////////////////////////////////////////////////////

  cxLblSmartRate.Caption := '';
  cxLblRate1.Caption := '';
  cxLblRate2.Caption := '';
  Try
    sRank1 := ''; sRank2 := ''; sSmart := '';

    if ( Trim(ASX) = '' ) Or ( Trim(ASY) = '' ) Or
       ( Trim(AEX) = '' ) Or ( Trim(AEY) = '' ) then Exit;

    ls_TxLoad := GTx_UnitXmlLoad('JON03060.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'JON03060');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strNowOrderWorker', AOderWorker);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strNowWeather', AWeather);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strType', AType);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strDeparture', ASta1 + '│' + ASta2 + '│' + ASta3 + '│' + ASPOI + '│' + ASX + '│' + ASY);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strArrive'   , AEnd1 + '│' + AEnd2 + '│' + AEnd3 + '│' + AEPOI + '│' + AEX + '│' + AEY);

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := CoDomDocument.Create;
          xdom.loadXML(ls_rxxml);

          ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
          if ('0000' <> ls_MSG_Err) then exit;

          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Now');
          sSmart := lst_Result.item[0].attributes.getNamedItem('smartYogm').Text;
          Result := StrToIntDef(sSmart, 0);

          sSmart := FormatFloat('#,##0', StrToFloatDef(sSmart, 0.0)) + '원' ;
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Past');
          iRCnt := strtoint(lst_Result.item[0].attributes.getNamedItem('rowCount').Text) ;
          OType := lst_Result.item[0].attributes.getNamedItem('searchType').Text;
          for i := 0 to iRCnt -1 do
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Past/Row');

            if lst_Result.item[i].attributes.getNamedItem('rank').Text = '1' then
            begin
              if sRank1 = '' then
                sRank1 := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[i].attributes.getNamedItem('charge').Text, 0.0)) + '원'
              else if sRank2 = '' then
                sRank2 := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[i].attributes.getNamedItem('charge').Text, 0.0)) + '원';
            end
            else
            if lst_Result.item[i].attributes.getNamedItem('rank').Text = '2' then
            begin
              sRank2 := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[i].attributes.getNamedItem('charge').Text, 0.0)) + '원';
            end;
          end;
          cxLblSmartRate.Caption := ' 스마트:' + sSmart;
          cxLblRate1.Caption := '1위:' + sRank1;
          cxLblRate2.Caption := '2위:' + sRank2;
        end;
      end;
    finally
      FreeAndNil(ls_Rcrd);
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
    end;
  except
    on e: Exception do
    begin
      Screen.Cursor := crDefault;
      Assert(False, E.Message);
    end;
  end;
end;

function TFrm_JON01.fnc_RealKmThread_End: Boolean;
begin
  if ( Not RealKmPtr[Self.Tag,1].CaActive ) And ( Not RealKmPtr[Self.Tag,2].CaActive ) And
     ( Not RealKmPtr[Self.Tag,3].CaActive ) And ( Not RealKmPtr[Self.Tag,4].CaActive ) then Result := True
                                                                                       else Result := False;
end;

procedure TFrm_JON01.Proc_JoinFromClose;
var
	sCaption: string;
	iCnt, i, iJOn03 : Integer;
  WinH : HWnd;
begin
  try
  	try
      try
        // 이용내역 팝업메뉴 초기화
    		FillChar(A01_HIS_POPUP, SizeOf(A01_HIS_POPUP), chr($00));
    		cxtCuBubin.Hint := '';  //법인코드 초기화
    		btnCmdJoinCopy.Hint := ''; // 접수후 복사 기능 설정.
    		btnCmdWaitCopy.Hint := ''; // 대기후 복사 기능 설정.

        // CID 조회인지 설정을 한다.  Value:CID
        cxLblCIDUseFlg.Hint := '';
    		// 접수번호 조회 인지 설정을 한다. Value:CONFSLIP
    		cxLblConfSlipUseFlg.Hint := '';

    		meoStartArea.Hint := ''; // 포커스 더이상 넘어가지 않도록 한다.
        meoStartArea.Height := 26;

        gsCuTelHint := '';

    		changeLog('',True);

        cxLblSmartRate.Caption := '';
        cxLblRate1.Caption := '';
        cxLblRate2.Caption := '';

    		pnl_charge.Visible := False;
        pnlOrderInfoView.Visible := False;

        PnlModifyTitle.Visible := False;
        shpModifyTitle.Visible := False;

        btnCustAppinfo.Enabled := False;

        PnlSuggest.Visible := False;
        AdvGridSj.ShowSelection := False;
        PnlPOISch.Visible := False;

        cxTxtBrNameCaption.Visible := False;
        // 지사명, 대표번호 정보를 눈에 확~ 뜨이게, 크게 보여준다.

        cxLblOrderUpInfo.Caption := '접수 신규 화면';
    		cxMeoOrderUpInfo.Text := '';

        pnlTelNESearch.Visible := False; // 전화번호 검색 판넬,,

        cxtJoinNum.Tag := 0; // sTodayGb:1(당일오더), 2:(과거오더)
        btnCmdUpdSave.Hint := ''; // "수정", "추가접수" 구분값 저장.

        blChkCuSMS  := False;
        blCompulWor := False;
        sWkSabun := '';

        cxBtnCuUpdate.Enabled   := False;
        cxBtnCuDel.Enabled      := False;

        meoBigo.Visible     := True;
        meoBigo2.Visible    := True;

        BtnCenterMng.Visible := True;

        PnlModifyTitle.Visible := False;
        shpModifyTitle.Visible := False;

        tmrThRealDis.Tag := 0;

        proc_RealKmPtr_Init;

        cxGbReserv.Visible := False;
        BtnResvView.OptionsImage.Glyph := Nil;
        BtnResvView.Hint := '';
        BtnResv.Tag := 0;  // 예약 초기화
        dtpResvDate.Enabled := True;
        dtpResvTime.Enabled := True;

        // 해당 탭을 찾아서 삭제 처리 한다.
        Frm_Main.JON01MNG[Self.Tag].Use := False;
        Frm_Main.JON01MNG[Self.Tag].Jon03Tag := -1;

        Frm_JON011.meoCuCCMemoS .Clear;
        Frm_JON011.meoCuWorMemoS.Clear;
        Frm_JON011.mmoCbMemoS.   Clear;
        Frm_JON011.TmrChkTag.Tag := 100;

        if Assigned(Frm_JON015) and Frm_JON015.HandleAllocated and (Frm_JON015.OrderHandle = Self.Handle) then Frm_JON015.Close;

        // CU_LEVEL_TYPE : 0 : 고객 자동등급별 라벨 칼라를 변경해 준다.
    		Proc_SetFormColor_2(10);
        // 고객 구분에 따른 라벨 칼라를 변경해 준다.
    		Proc_SetFormColor_3(10);
        // 고객 등급별 폼 칼라를 변경해 준다.
        SetCustControlColor(False);

    		Frm_JON012.Caption := '';
    		Frm_JON012.cxGVeOrderList.DataController.SetRecordCount(0);
      except
        on e: exception do
        begin
          Log('Proc_JoinFromClose Error 0 :' + E.Message, LOGDATAPATHFILE);
          Assert(False, 'Proc_JoinFromClose Error 0 :' + E.Message);
        end;
      end;

      try
  			FControlInitial(False, True); // 접수화면의 기본 컨트롤을 초기화 한다.
        ControlClear(False);
        Proc_BtnEnabled(True); // 버튼 활성/비활성 처리.
  			SetPrivateVariable; // 접수 전에 조회 조건 관련 전역변수 초기화..
  		except
      end;

      Frm_JON30.ClearMarkStartEndVia_Icon;

      if Assigned(Frm_JON30) then
      begin
        Hide_Panel(lcsActiveEdit,1);
        Frm_JON30.IdHTTPWise.Disconnect;
      end;

      // ------------------ 발신번호 정보를 보여준다.------------------------
      cxtCallTelNum.Text := '';
      cxtCallTelNum.StyleDisabled.TextColor := $00555151;
      // 진한 칼라 : $00555151,   // 옅은 칼라 : $00FAE1CD;

      // 지사변경 제한.[이유:고객조회 후 지사변경시 조회한 고객정보 일부유실 경고메시지 띄우기 위함임]
      cboBranch.Properties.ReadOnly := False;
      if cboBranch.Properties.Items.Count > 0 then
      begin
        cboBranch.Tag := 10;
        // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
        cboBranch.ItemIndex := 0; // 기본값으로 세팅한다.
        cboBranch.Tag := 0;
        // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
      end;

  		GS_CIDINFO_OUR_KEYNUMBER := True;

      ControlClear(False);

      if Assigned(Frm_JON018) then Frm_JON018.Close;
      Frm_JON30.Grid_Clear('meoStartArea',1);
      Frm_JON30.Grid_Clear('meoStartArea',2);
      Frm_JON30.Grid_Clear('meoStartArea',3);
      Frm_JON30.Grid_Clear('meoStartArea',4);
      Frm_JON30.Grid_Clear('meoEndArea',1);
      Frm_JON30.Grid_Clear('meoEndArea',2);
      Frm_JON30.Grid_Clear('meoEndArea',3);
      Frm_JON30.Grid_Clear('meoEndArea',4);
      Frm_JON30.Grid_Clear('meoViaArea',1);
      Frm_JON30.Grid_Clear('meoViaArea',2);
      Frm_JON30.Grid_Clear('meoViaArea',3);
      Frm_JON30.Grid_Clear('meoViaArea',4);

  		lst_BRList.Items.Clear;
  		lst_BRList.Visible := False;
  		searchBRlist.Clear;
  	finally

      iCnt := 0;
      iJOn03 := 0;
      for i := 0 to 19 do
      begin
        if Frm_Main.JON01MNG[i].Use then
        begin
          if Not Frm_Main.Frm_JON03[JON03Tag].pJON03Dock.bUNDock then
            Inc(iCnt)
          else
          if Frm_Main.JON01MNG[i].Jon03Tag = Jon03Tag then Inc(iJOn03);
        end;
      end;

      if iCnt < 1 then
      begin
        if gbfrmJON00Show then gbfrmJON00Show := False;

        // 자동조회 재시작 해줌.
  			if Frm_Main.Frm_JON03[Jon03Tag].BtnAutoRe.Tag = 1 then
        begin
  				Frm_Main.Frm_JON03[Jon03Tag].tmr_dis.Enabled := True;
          Frm_Main.Frm_JON03[Jon03Tag].PnlAuto.Visible := True;
        end;

  			GS_JON01OPEN_CHECK := False;
        Frm_JON011.Hide;
      end;

      if Frm_Main.Frm_JON03[JON03Tag].pJON03Dock.bUNDock then
      begin
        if iJon03 < 1 then
        begin
          if Frm_Main.Frm_JON03[JON03Tag].bJON01View then Frm_Main.Frm_JON03[JON03Tag].bJON01View := False;

          // 자동조회 재시작 해줌.
    			if Frm_Main.Frm_JON03[Jon03Tag].BtnAutoRe.Tag = 1 then
          begin
    				Frm_Main.Frm_JON03[Jon03Tag].tmr_dis.Enabled := True;
            Frm_Main.Frm_JON03[Jon03Tag].PnlAuto.Visible := True;
          end;
        end;
      end;

      Try
  //      WinH := FindAllInternetExplorer('IEFrame','http://dna.daum.net', True);
        if RVHandle > 0 then
        begin
          PostMessage (RVHandle, WM_CLOSE, 0, 0);
        end;
      except
      End;

      RVHandle := 0;

      MagneticWnd.RemoveWindow(Self.Handle);

  		sCust_Gubun := '';
  		// 접수창 닫기.
  		Self.Caption := '';
  		Self.Hide;
  	end;
  except
    on e: exception do
    begin
      Log('Proc_JoinFromClose Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_JoinFromClose Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON01.proc_BrNameList_Search: boolean;
var
	i, iOldIdx: integer;
	bRlt: boolean;
	sKey: string;
begin
  try
    bRlt := False;
    lst_BRList.Items.Clear;
    searchBRlist.Clear;
    sKey := cxTSearchMainTel.text; // 조회할 지사명 읽기.

    iOldIdx := cboBranch.ItemIndex;  // 현재 index 값을 저장.[못찾을 경우 현재 선택지사로 되돌려줌]
    cboBranch.Tag := 20;
    // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
    for i := 0 to cboBranch.Properties.Items.Count - 1 do
    begin
      cboBranch.ItemIndex := i;
      if (Pos(sKey, cboBranch.Text) > 0) then
      begin // 지사명  찾기..
        lst_BRList.Items.Add(cboBranch.Text);
        searchBRlist.Add(inttostr(i));
        bRlt := True;
      end;
    end;
    cboBranch.ItemIndex := iOldIdx;
    lst_BRList.Visible := True;
    if lst_BRList.Items.Count > 30 then
      lst_BRList.Height := 500
    else
      lst_BRList.Height := lst_BRList.Items.Count * 18;
    cboBranch.Tag := 0;
    // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
    Result := bRlt;
  Except
    on e: exception do
    begin
      Log('proc_BrNameList_Search Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'proc_BrNameList_Search Error :' + E.Message);
    end;
  end;
end;

// ipwIPPort1 전문을 전송한다.    알림화면을 실행해준다.[bOrderInsGB: True:Ascending False:Descending]
procedure TFrm_JON01.LocNewSocketSend(lsSendText: string; bOrderInsGB: boolean =
  False);
var
  slRcvList: TStringList;
  // 전문 결과 처리 위해 사용 변수. 2009.01.09
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
  Screen.Cursor := crHourGlass;
  slRcvList := TStringList.Create;
  try
    Proc_JobAfterProc(True, bOrderInsGB);

    if dm.SendSockAccept(lsSendText, slRcvList, ErrCode, False) then
    begin
      rv_str := slRcvList[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        Application.ProcessMessages;
        proc_recieve(ls_rxxml);

        tmFormClose.Tag := 99; // 화면 닫기 설정값.
      end;
    end;
  finally
    FreeAndNil(slRcvList);
    Screen.Cursor := crDefault;
    Proc_JobAfterProc(False, bOrderInsGB);
  end;
end;

procedure TFrm_JON01.lst_BRListDblClick(Sender: TObject);
begin
	cboBranch.ItemIndex := strtoint(searchBRlist[lst_BRList.ItemIndex]);
	lst_BRList.Visible := False;
  cxtCuTel.SetFocus;
end;

procedure TFrm_JON01.lst_BRListExit(Sender: TObject);
begin
	lst_BRList.Visible := False;
end;

procedure TFrm_JON01.lst_BRListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then
	begin
		cboBranch.ItemIndex := strtoint(searchBRlist[lst_BRList.ItemIndex]);
		lst_BRList.Visible := False;
    cxtCuTel.SetFocus;
	end else
  if Key = VK_UP then
  begin
    if lst_BRlist.Selected[0] then cxTSearchMainTel.SetFocus;
  end;
end;

// 수정일 경우,,  경유지 정보를 조회 한다.
procedure TFrm_JON01.proc_ViaInfo;
var
  ls_TxLoad, ls_TxQry, sQueryTemp : string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
  try
    // 오더번호가 없으면 Skip.
    if cxtJoinNum.Text <> '' then
    begin
      ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
      fGet_BlowFish_Query(GSQ_VIAINFO, sQueryTemp);
      ls_TxQry := Format(sQueryTemp, [cxtJoinNum.Text]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'VIA00001', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

      Screen.Cursor := crHourGlass;
      slRcvList := TStringList.Create;
      try
        Proc_JobAfterProc(True, False);

        if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
        begin
          rv_str := slRcvList[0];
          if rv_str <> '' then
          begin
            ls_rxxml := rv_str;
            Application.ProcessMessages;
            proc_recieve(ls_rxxml);

            tmFormClose.Tag := 99; // 화면 닫기 설정값.
          end;
        end;
      finally
        FreeAndNil(slRcvList);
        Screen.Cursor := crDefault;
        Proc_JobAfterProc(False, False);
      end;
    end;
  Except
    on e: exception do
    begin
      Log('proc_ViaInfo Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'proc_ViaInfo Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.AppendPostDesc;
  function _GetPayStr(APay: Integer): string;
  begin
    if APay mod 1000 = 0 then
      Result := IntToStr(APay div 1000) + 'K'
    else
      Result := FormatFloat('#,##0', APay)
    ;
  end;
  procedure _AddPostDesc(AMemo: TcxMemo; APay, APostPay: Integer; APostTime: string);
  var
    OrgStr, AddStr: string;
  begin
    OrgStr := AMemo.Lines.Text;
		// 기사지급수수료0원 후불은 후불시점을 적요에 가져올필요없음
		if APostPay = 0 then
		begin
			AddStr := '후불]자동입금없음';
			AddSpop('후불',98);
		end else
		begin
      if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

			AddStr := '';
			if APay > APostPay then
			begin
				if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트2K 20140221 KHS
					AddStr := '현금' + _GetPayStr(APay) + ']'
				else
				if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트3K 20141007 KHS
					AddStr := '현금' + _GetPayStr(APay) + ']'
				else
					AddStr := '현금' + _GetPayStr(APay - APostPay) + ']';
			end;

			AddStr := AddStr + '후불' + _GetPayStr(APostPay) + ']';
			AddStr := AddStr + APostTime;
			if (cbbPostTime.ItemIndex = 0) or (cbbPostTime.ItemIndex = 1) or (cbbPostTime.ItemIndex = 3)then
			begin
				AddSpop('후불',98);
			end
			else if (cbbPostTime.ItemIndex = 2) then
			begin
				if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트2K 20140221 KHS
					AddSpop('♥',99)
				else
				if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //부산연합하트3K 20141007 KHS
					AddSpop('♥♥',99)
				else
					AddSpop('즉후',99);
			end;
		end;
    AMemo.Lines.Text := '{' + AddStr + '}' + OrgStr;
  end;
begin
  RemovePostDesc;

  if IsPayMethodPost then
    _AddPostDesc(meoBigo, curRate.Value, edtPostPay.Value, cbbPostTime.Text);
end;

procedure TFrm_JON01.RemovePostDesc;
var
  OrgStr, AddStr: string;
  PosS, PosE: Integer;
begin
  OrgStr := meoBigo.Lines.Text;

  PosS := Pos('{', OrgStr);
  PosE := Pos('}', OrgStr);

  if (PosS = 0) or (PosE = 0) or (PosE < PosS) then
  begin
    Exit;
  end;

  AddStr := Copy(OrgStr, 1, PosS-1);
  AddStr := AddStr + Copy(OrgStr, PosE+1, Length(OrgStr));

  meoBigo.Lines.Text := AddStr;
end;

//--------------------------------------------------------------------------------------------------
//  사용자 추가 지역 저장
//--------------------------------------------------------------------------------------------------
procedure TFrm_JON01.proc_Save_Area(iGubun: Integer);
var
  st_List, slTmp: TStringList;
  sTemp, sTemp1, sQuery, sDate, sPOI: string;
  i : Integer;
begin
	st_List := TStringList.Create;
  try
    st_List.Clear;
    if iGubun = 0 then
    begin // 출발지 저장.
      sTemp := StringReplace(cxtStartAreaDetail.Text, ' ', '', [rfReplaceAll]);  // 공백제거후 저장  20130514 LYB

      if pos('#', sTemp) > 0 then
        sTemp := copy(sTemp, pos('#', sTemp) + 1, length(sTemp) - pos('#', sTemp));
      if pos(']', sTemp) > 0 then
        sTemp := copy(sTemp, pos(']', sTemp) + 1, length(sTemp) - pos(']', sTemp));
      if pos('$', sTemp) > 0 then
        sTemp := copy(sTemp, pos('$', sTemp) + 1, length(sTemp) - pos('$', sTemp));
      if pos('-', sTemp) > 0 then
        sTemp := copy(sTemp, pos('-', sTemp) + 1, length(sTemp) - pos('-', sTemp));

      lcsSta4 := '';
      sTemp1 := lcsSta1 + '|' + lcsSta2 + '|' + lcsSta3 + '|' + sTemp + '|' + lcsSta4 + '|' + cxtStartXval.Text + '|' + cxtStartYval.Text;
    end else
    if iGubun = 1 then
    begin // 도착지 저장.
      sTemp := StringReplace(cxtEndAreaDetail.Caption, ' ', '', [rfReplaceAll]);  // 공백제거후 저장  20130514 LYB

      if pos('#', sTemp) > 0 then
        sTemp := copy(sTemp, pos('#', sTemp) + 1, length(sTemp) - pos('#', sTemp));
      if pos(']', sTemp) > 0 then
        sTemp := copy(sTemp, pos(']', sTemp) + 1, length(sTemp) - pos(']', sTemp));
      if pos('$', sTemp) > 0 then
				sTemp := copy(sTemp, pos('$', sTemp) + 1, length(sTemp) - pos('$', sTemp));
      if pos('-', sTemp) > 0 then
				sTemp := copy(sTemp, pos('-', sTemp) + 1, length(sTemp) - pos('-', sTemp));

      lcsEnd4 := '';
			sTemp1 := lcsEnd1 + '|' + lcsEnd2 + '|' + lcsEnd3 + '|' + sTemp + '|' + lcsEnd4 + '|' + cxtEndXval.Text + '|' + cxtEndYval.Text;
		end;

		if FileExists(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT') then
			st_List.LoadFromFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');

		sPOI := sTemp1 + '|' + '999';    // 20130508  LYB 수정  로컬 저장 후 mySQL변환시 저장 안되는 문제 해결

    if st_List.IndexOf(sPOI) < 0 then
    begin
      st_List.Add(sPOI);
      // 사용자 직접입력 정보 저장. CDS.
      if iGubun = 0 then
      begin // 출발지 저장.
        GT_MAPLocal.slCity.Add(lcsSta1); // 시도
        GT_MAPLocal.slWard.Add(lcsSta2); // 시군구
        GT_MAPLocal.slStre.Add(lcsSta3); // 읍면동
        GT_MAPLocal.slSSub.Add(sTemp); // 세부지명
        GT_MAPLocal.slSPOI.Add(''); // 인근POI
        GT_MAPLocal.slMapX.Add(cxtStartXval.Text); // X 좌표
        GT_MAPLocal.slMapY.Add(cxtStartYval.Text); // Y 좌표
      end else
      if iGubun = 1 then
      begin // 도착지 저장.
        GT_MAPLocal.slCity.Add(lcsEnd1); // 시도
        GT_MAPLocal.slWard.Add(lcsEnd2); // 시군구
        GT_MAPLocal.slStre.Add(lcsEnd3); // 읍면동
        GT_MAPLocal.slSSub.Add(sTemp); // 세부지명
        GT_MAPLocal.slSPOI.Add(''); // 인근POI
        GT_MAPLocal.slMapX.Add(cxtEndXval.Text); // X 좌표
        GT_MAPLocal.slMapY.Add(cxtEndYval.Text); // Y 좌표
      end;
    end else
    begin
      st_list.Delete(st_List.IndexOf(sPOI));
      st_List.Add(sPOI);
    end;
		st_List.SaveToFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');
	finally
		FreeAndNil(st_List);
	end;
	if iGubun = 0 then
		ShowMessage('출발지 세부지역정보가 저장 되었습니다.')
  else
    ShowMessage('도착지 세부지역정보가 저장 되었습니다.');
end;

// 고객조회 그리드에서 그리드 선택시에 고객관련 정보를 입력 컨트롤에 Display~
procedure TFrm_JON01.Proc_GridCustChoice(iRcIdx: Integer);
begin
  try
    cxtCuTel.Text := cxCustView.DataController.Values[iRcIdx, 1]; // 고객전화번호
    cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);
    gsCuTelHint := cxtCuTel.Text;
    cxtCallTelNum.Text := cxtCuTel.Text;
    locsCuTel  := cxtCuTel.Text;
    locsCuTel2 := '';

    SearchCuTel(False);
    cxGBSearch.Visible := False;
  Except
    on e: exception do
    begin
      Log('Proc_GridCustChoice Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_GridCustChoice Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON01.Func_KeyNumberList_Search: Boolean;
var
	i, iOldIdx: integer;
	bRlt: boolean;
	sKey: string;
begin
  try
    bRlt := False;
    lst_BRList.Items.Clear;
    searchBRlist.Clear;
    sKey := RemoveAll(cxTSearchMainTel.text, '-'); // 조회할 지사명 읽기.

    iOldIdx := cboBranch.ItemIndex;
    cboBranch.Tag := 20;
    // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
    for i := 0 to cboBranch.Properties.Items.Count - 1 do
    begin
      cboBranch.ItemIndex := i;
      if (Pos(sKey, cboBranch.Text) > 0) then
      begin // 지사명  찾기..
        lst_BRList.Items.Add(cboBranch.Text);
        searchBRlist.Add(inttostr(i));
        bRlt := True;
      end;
    end;
    cboBranch.ItemIndex := iOldIdx;
    lst_BRList.Visible := True;
    if lst_BRList.Items.Count > 30 then
      lst_BRList.Height := 500
    else
      lst_BRList.Height := lst_BRList.Items.Count * 18;
    cboBranch.Tag := 0;
    // 지사 선택 정보가 변경되면 일부 컨트롤을 초기화 되는 현상을 방지한다.
    Result := bRlt;
  Except
    on e: exception do
    begin
      Log('Func_KeyNumberList_Search Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Func_KeyNumberList_Search Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.AutoSelectMouseEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Properties.AutoSelect := False;
end;

procedure TFrm_JON01.AutoSelectMouseMouseLeave(Sender: TObject);
begin
	TcxCustomTextEdit(Sender).Properties.AutoSelect := True;
end;

procedure TFrm_JON01.Proc_Driver_Charge;
var
  slAreaList, slResult: TStringList;
  strSearch, strData: string;
  I: Integer;
  tmBsArea, tmBsNum: string;  // 2010.12.13 =검색-> 이상값 겁색
  tmLpArea, tmLpNum: string;
  tmCost: string;
begin
  try
    slAreaList := TStringList.Create;
    slResult := TStringList.Create;
    tmCost:='';
    try
      GetTextSeperationEx2(' ', lblStartAreaName.Text, slAreaList);
      if slAreaList.count > 1 then
      begin
        if Length(slAreaList[1]) > 0 then
        begin
          // 기사 수수료 검색어 구성..
          strSearch := slAreaList[0] + slAreaList[1] + IntToStr(curRate.Value);
          tmBsArea := slAreaList[0]+slAreaList[1];
          tmBsNum := IntToStr(curRate.Value);

          // 2010.12.13 ( = 조회 -> <= 조회)
          // 기사 수수료 검색
          //Area_Charge_List.Sorted := True;
          try
            for I := 0 to Area_Charge_List.Count - 1 do
            begin
              GetTextSeperationEx('│', Area_Charge_List.Strings[I], slResult);
              strData := slResult[0];
              tmLpArea:=str2string(slResult[0]);
              tmLpNum:=IntToStr(str2integer(slResult[0]));
              if (tmBsArea=tmLpArea) and (StrToIntDef(tmBsNum,0)>=StrToIntDef(tmLpNum,0)) then
                tmCost:=slResult[1];
            end;

            // 2011.01.19 (기사수수료율 추가 100이하시 currate 에서 해당율 승산후 100을 제산
            if (strtointdef(tmCost,0)<=100) and (strtointdef(tmCost,0)>0) and (Trim(tmCost)<>'') then
            begin
              tmCost:= IntToStr(Round(strtointdef(tmBsNum,0)*strtointdef(tmCost,0)/100));
              cxDriverCharge.text:= tmCost;
            end else
            if (strtointdef(tmCost,0)>100) and (Trim(tmCost)<>'') then
            begin
              cxDriverCharge.Text:= tmCost;
            end else
            begin
              cxDriverCharge.Text:= '';
            end;
          finally
            FreeAndNil(slResult);
          end;
        end else
        begin
          cxDriverCharge.Text := '';
        end;
      end else begin
        cxDriverCharge.Text := '';
      end;
    finally
      FreeAndNil(slAreaList);
    end;
  Except
    on e: exception do
    begin
      Log('Proc_Driver_Charge Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_Driver_Charge Error :' + E.Message);
    end;
  end;
end;

// 고객 기본정보를 저장 한다.
procedure TFrm_JON01.Proc_CustBasicSave;
var
  ls_TxLoad: string;
  iFidx: Integer;
  slRcvList: TStringList;
  rv_str, ls_rxxml, sContent: string;
	ErrCode: integer;
begin
	try
    if lcsCu_seq = '' then
    begin
      ShowMessage('고객 일련번호가 없습니다. 고객정보를 재조회 한 다음 [수정] 하세요!');
      Exit;
    end;

    if cxtCallTelNum.Text = '' then
    begin
      ShowMessage('고객 전화번호가 없습니다. 고객정보를 재조회 한 다음 [수정] 하세요!');
      Exit;
    end;

    if cxtCallTelNum.Text <> cxtCuTel.Text then
    begin
      ShowMessage('수정 할 고객 전화번호가 조회한 전화번호와 다릅니다. 고객정보를 재조회 한 다음 [수정] 하세요!');
      Exit;
    end;

    iFidx := Self.Tag; // 폼의 index를 저장.
    locHdNo := Proc_HDNOSearch; // 본사코드 정보를 읽는다.
    locBrNo := Proc_BRNOSearch; // 지사코드 정보를 읽는다.
    locKNum := Proc_MainKeyNumberSearch; // 대표번호 정보를 읽는다.

    if cxtCallTelNum.Text = '' then
    begin
      cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);
      cxtCallTelNum.Text := cxtCuTel.Text;
    end;

    //////////////////////////////////////////////////////////////////////////////////
    //  고객정보 수정 전문
    //////////////////////////////////////////////////////////////////////////////////
    ls_TxLoad := GTx_UnitXmlLoad('C032N2.XML');

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'CUSV0032');

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfSlipString', cxtJoinNum.Text);
    if BtnCuSmsNo.Down then // SMS수신거부
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'SMSString', 'n')
		else
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'SMSString', 'y');

    if (0 >= Pos('*', cxtCuTel.Text)) then
      //[수정시에]고객전화번호 마킹처리된것 일때,, [locsCuTel, locsCuTel2]
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustTelString', En_Coding(cxtCallTelNum.Text))
    else
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustTelString', En_Coding(locsCuTel));

		sContent := '';
		sContent := ReplaceAll(Trim(meoCuCCMemo.Text), #$D#$A, '¶');
		sContent := ReplaceAll(sContent, #13#10, '¶');
		sContent := ReplaceAll(sContent, #10#13, '¶');
		sContent := StringReplace(sContent, '|', '¶', [rfReplaceAll]);

		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfMemoString', En_Coding(sContent));

		// 고객구분-0(일반), 1(업소), 3(법인)
    if CBCuGb.ItemIndex = 2 then
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfBarString', '3')
    else
    if CBCuGb.ItemIndex = 1 then
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfBarString', '1')
    else
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfBarString', '0');

    // 고객등급 추가 : 0.불량:빨강, 1.주의:주황, 2.일반:하늘, 3.우수:동색, 4.최우수:은색, 5.VIP:황금색
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'LevelCdString', GetCustLevelSeq);
    // 법인일 경우 세팅..
    if (CBCuGb.ItemIndex = 2) and (cxtCuBubin.Hint <> '') then
    begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BGroupString', En_Coding(cxtCuBubin.Hint));
    end else
    begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BGroupString', '');
    end;
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'CuSeqString', lcsCu_seq);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustNameString', En_Coding(edtCuName.Text));

		sContent := '';
		sContent := ReplaceAll(Trim(meoCuWorMemo.Text), #$D#$A, '|');
		sContent := ReplaceAll(sContent, #13#10, '|');
		sContent := ReplaceAll(sContent, #10#13, '|');
		sContent := StringReplace(sContent, '│', '|', [rfReplaceAll]);

		ls_TxLoad := ReplaceAll(ls_TxLoad, 'CarInfoString', En_Coding(sContent));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'BrTelYNString', CustBrTelYN);

    Screen.Cursor := crHourGlass;
		slRcvList := TStringList.Create;
    try
      Proc_JobAfterProc(True, True);

      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);

          tmFormClose.Tag := 99; // 화면 닫기 설정값.
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, True);
    end;
  except
    on e: Exception do
    begin
      ls_TxLoad := 'JON01[Proc_CustBasicSave]:' + e.message;
      Log(ls_TxLoad, LOGDATADIRECTORY + 'Accept_Err.log');

      // 에러 정보를 서버에 저장한다.
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON01.Proc_CustSMSSave;
var
  ls_TxLoad: string;
  iFidx: Integer;
  slRcvList: TStringList;
  rv_str, ls_rxxml, sContent: string;
	ErrCode: integer;
begin
	try
    if cxtCallTelNum.Text = '' then
    begin
      ShowMessage('고객 전화번호가 없습니다. 고객정보를 재조회 한 다음 [SMS거부] 하세요!');
      Exit;
    end;

    if cxtCallTelNum.Text <> cxtCuTel.Text then
    begin
      ShowMessage('수정 할 고객 전화번호가 조회한 전화번호와 다릅니다. 고객정보를 재조회 한 다음 [SMS거부] 하세요!');
      Exit;
    end;

    iFidx := Self.Tag; // 폼의 index를 저장.
    locHdNo := Proc_HDNOSearch; // 본사코드 정보를 읽는다.
    locBrNo := Proc_BRNOSearch; // 지사코드 정보를 읽는다.
    locKNum := Proc_MainKeyNumberSearch; // 대표번호 정보를 읽는다.

    if cxtCallTelNum.Text = '' then
    begin
      cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);
      cxtCallTelNum.Text := cxtCuTel.Text;
    end;

    //////////////////////////////////////////////////////////////////////////////////
    //  SMS거부 수정 전문
    //////////////////////////////////////////////////////////////////////////////////
    ls_TxLoad := GTx_UnitXmlLoad('JON03020.XML');

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'JON03020');

    if BtnCuSmsNo.Down then // SMS수신거부
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'SMSString', 'n')
		else
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'SMSString', 'y');

    if (0 >= Pos('*', cxtCuTel.Text)) then
      //[수정시에]고객전화번호 마킹처리된것 일때,, [locsCuTel, locsCuTel2]
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustTelString', En_Coding(cxtCallTelNum.Text))
    else
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustTelString', En_Coding(locsCuTel));

		ls_TxLoad := ReplaceAll(ls_TxLoad, 'CuSeqString', lcsCu_seq);

    Screen.Cursor := crHourGlass;
		slRcvList := TStringList.Create;
    try
      Proc_JobAfterProc(True, True);

      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);

          tmFormClose.Tag := 99; // 화면 닫기 설정값.
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, True);
    end;
  except
    on e: Exception do
    begin
      ls_TxLoad := 'JON01[Proc_CustBasicSave]:' + e.message;
      Log(ls_TxLoad, LOGDATADIRECTORY + 'Accept_Err.log');

      // 에러 정보를 서버에 저장한다.
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON01.cxCurRevisionRateEnter(Sender: TObject);
begin
  lblCurRevisionRate.Visible := False;
end;

procedure TFrm_JON01.cxCurRevisionRateExit(Sender: TObject);
begin
  lblCurRevisionRate.Visible := (cxCurRevisionRate.Text = ''); // 보정금액 입력 잔상.
  curRate.Value := OrgRate + cxCurRevisionRate.Value;
end;

procedure TFrm_JON01.cxCurRevisionRateFocusChanged(Sender: TObject);
begin
  lblCurRevisionRate.Visible := ( Not cxCurRevisionRate.Focused ) And (cxCurRevisionRate.Value = 0);
end;

procedure TFrm_JON01.cxCurRevisionRateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    if Ord(Key) = VK_RETURN then
    begin
      if cxCurRevisionRate.Value < 1000 then
      begin
        cxCurRevisionRate.Value := cxCurRevisionRate.Value * 1000;
      end;
      if meoBigo.Visible = True then
        meoBigo.SetFocus
      else
        meoBigo2.SetFocus;
    end;

    if Ord(key) in [VK_F7..VK_F12, VK_ESCAPE, Vk_F1] then
    begin
      case ord(key) of
        Vk_F1:
          if btnPickupInsert.Visible then
            btnPickupInsert.OnClick(btnPickupInsert); // 픽업등록 단축키 : 2011.05.25 CDS. Add.
        Vk_F7: //if rb_Modify.Enabled then rb_Modify.OnClick(rb_Modify);              // 수정
          if btnCmdUpdSave.Enabled then
            btnCmdUpdSave.OnClick(btnCmdUpdSave);
        Vk_F8: //whbtn_Cancel.OnClick(whbtn_Cancel);                                   // 종료
          btnCmdExit.OnClick(btnCmdExit);
        Vk_F9:
          begin
            //if lg_Enter <> '' then exit;
            //  lg_Enter := 'Enter';
            if not btnCmdJoin.Enabled then
              Exit; // 접수
            btnCmdJoinClick(btnCmdJoin);
          end;
        Vk_F10:
          if btnCmdWait.Enabled then
            btnCmdWait.OnClick(btnCmdWait); // 대기
        Vk_F11:
          if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // 복수콜
        Vk_F12:
          if btnCmdQuestion.Enabled then
            btnCmdQuestion.OnClick(btnCmdQuestion); // 문의
        VK_ESCAPE: // ESC 키
          begin
            if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
            begin
              if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '')
                and (Trim(lblStartAreaName.Text) = '') and (Trim(lblEndAreaName.Caption) = '')
                and (Trim(cxtStartAreaDetail.Text) = '') and (Trim(cxtEndAreaDetail.Caption) = '') then
                btnCmdExit.OnClick(btnCmdExit); // 종료
            end;
          end;
      end;
    end;
  Except
    on e: exception do
    begin
      Log('cxCurRevisionRateKeyDown Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'cxCurRevisionRateKeyDown Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON01.cxCurRevisionRatePropertiesChange(Sender: TObject);
begin
    lblCurRevisionRate.Visible := (cxCurRevisionRate.Value = 0); // 기사송금 입력 잔상.
end;

function TFrm_JON01.fGetDiffDay( sEndDate : String ) : String;
Var TimeGap : Int64;
    sDate, sStat : String;
begin
  TimeGap := GetTimeGap(FormatDateTime('YYYYMMDDHHNN00', Now), sEndDate);

{  Data := Format('%d일 %d시간 %d분 %d초',[
          Trunc(TimeGap / 86400),
          Trunc(( TimeGap mod 86400 ) / 3600),
          Trunc((( TimeGap mod 86400 ) mod 3600) / 60),
          TimeGap mod 60
  ]);
}

  sDate := Format('%d일 %d시간 %d분',[
           Trunc(TimeGap / 86400),
           Trunc(( TimeGap mod 86400 ) / 3600),
           Trunc((( TimeGap mod 86400 ) mod 3600) / 60)
   ]);

  if BtnResJ.Down then sStat := '접수' else
  if BtnResD.Down then sStat := '대기';

  cxlblState.Caption := Format('[%s] 후에 [%s] 상태로 예약됩니다.', [sDate, sStat]);

  Result := '';
end;

function TFrm_JON01.GetTimeGap(StrStartDate, StrEndDate: string): Int64;
    function StrDateTime2SystemTime(StrDateTime : string) : TSystemTime;
    var SystemTime : TSystemTime;
    begin
        ZeroMemory(@SystemTime, sizeof(SystemTime));
        SystemTime.wYear := StrToInt(Copy(StrDateTime, 1, 4));
        SystemTime.wMonth := StrToInt(Copy(StrDateTime, 5, 2));
        SystemTime.wDay := StrToInt(Copy(StrDateTime, 7, 2));
        SystemTime.wHour := StrToInt(Copy(StrDateTime, 9, 2));
        SystemTime.wMinute := StrToInt(Copy(StrDateTime, 11, 2));
        SystemTime.wSecond := StrToInt(Copy(StrDateTime, 13, 2));
        SystemTime.wMilliseconds := 0;
        Result := SystemTime;
    end;
var StartSysTime : TSystemTime;
    EndSysTime : TSystemTime;

    TimeGap : Int64;
begin
    StartSysTime := StrDateTime2SystemTime(StrStartDate);
    EndSysTime := StrDateTime2SystemTime(StrEndDate);

    TimeGap := DateTimeToUnix(SystemTimeToDateTime(EndSysTime)) -
        DateTimeToUnix(SystemTimeToDateTime(StartSysTime));

    Result := TimeGap;
end;

// 조회 한 오더 정보를 수정 한다. : DB Update~~
procedure TFrm_JON01.Proc_OrderUpdateSave(AStatus: string);
const
  lc_ViaInfoString =
    '<Via Area1="Area1String" Area2="Area2String" Area3="Area3String" Area4="Area4String" Area5="Area5String" '+
    ' MapX="MapXString" MapY="MapYString" AreaOpt="AreaVOPTString" AreaDebug="AreaVDebugString" AreaUp="AreaUPV" AreaSetType="AreaSetTypeString" AreaKeyword="AreaKeywordString" AreaId="AreaIdString" />';
var
  ls_TxLoad: string;
  ls_ViaInto, sCbCode, sCbNm, sCbDp, sBrNo, sTemp, sErrMsg, sMsg : string;
  lRow, iRow, iFidx: Integer;
  slRcvList: TStringList;
  rv_str, ls_rxxml, StrValue: string;
  ErrCode, UserMile: integer;
	iX, iY, sContent : string;
begin
  if (GS_PRJ_AREA <> 'S') and ((GT_USERIF.ShareNo = 'G91') or (GT_USERIF.ShareNo = 'G58')) then
    // SKIP 처리.
  else
  begin
    // 후불이면서,,          cxtJoinNum.Hint := sTemp;  // 오더 상태값을 저장한다.
    if (IsPayMethodPost) and (cxtJoinNum.Hint <> '4') then
    begin
      sBrNo := Proc_BRNOSearch;
      if not frm_main.func_brcash_check(sBrNo, StrToIntDef(FloatToStr(curRate.Value), 0)) then
      begin
        GMessagebox('지사캐쉬가 부족하여 후불로 접수할 수 없습니다.', cdmsi);
        exit;
      end;
    end;
  end;

	if GS_SEARCH_DEST_NOPOI_FALSE then
	begin
		if (cxtJoinNum.Hint = '0') then
		begin
			if Trim(meoEndArea.Text) = '' then
			begin
				GMessagebox('[접수] 도착지명이 없으면 수정이 불가능합니다.' + #13#10
									+ '도착지를 입력하세요.' + #13#10
									+ '[관련옵션-검색설정] 도착지 미입력시 접수/대기안됨', CDMSI);
				meoEndArea.SetFocus;
//        meoEndArea.SelStart := Length(meoEndArea.Text);
				Exit;
			end;
		end;
		if (cxtJoinNum.Hint = '5') then
		begin
			if Trim(meoEndArea.Text) = '' then
			begin
				GMessagebox('[대기] 도착지명이 없으면 수정이 불가능합니다.' + #13#10
									+ '도착지를 입력하세요.' + #13#10
									+ '[관련옵션-검색설정] 도착지 미입력시 접수/대기안됨', CDMSI);
				meoEndArea.SetFocus;
//        meoEndArea.SelStart := Length(meoEndArea.Text);
				Exit;
			end;
		end;
	end;
	if (cxtJoinNum.Hint = 'B') then
	begin
		GMessagebox('[배차중] 상태이므로 수정이 불가능합니다.', cdmsi);
		exit;
	end;
	if (cxtJoinNum.Hint = 'C') then
	begin
		GMessagebox('[근배] 상태이므로 수정이 불가능합니다.', cdmsi);
		exit;
	end;

  iFidx := Self.Tag; // 폼의 index를 저장.
  locHdNo := Proc_HDNOSearch; // 본사코드 정보를 읽는다.
  locBrNo := Proc_BRNOSearch; // 지사코드 정보를 읽는다.
	locKNum := Proc_MainKeyNumberSearch; // 대표번호 정보를 읽는다.

  Proc_BtnEnabled(False); // 버튼 활성/비활성 처리.

	try
		ls_TxLoad := GTx_UnitXmlLoad('JON03081.XML');
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'MODI0001');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfSlipString', En_Coding(cxtJoinNum.Text)); // 접수번호
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID)); // 등록자 ID
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfStatusString', cxtJoinNum.Hint); // 오더 상태값을 저장한다.
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ChangeStatusString', AStatus); // 변경될 상태정보(대기 => 예약)
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PostTimeString', PostTime); // 입금시간코드
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PostChargeString', IntToStr(edtPostPay.Value)); // 자동입금금액

    if cxtCuBubin.Hint <> '' then
    begin // 법인코드 체크.
      sCbCode := cxtCuBubin.Hint;
      iRow := GT_BUBIN_INFO.cbcode.IndexOf(sCbCode + ',' + locBrNo);
      if iRow >= 0 then
      begin
				sCbNm := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[iRow]), 121, 16));  // 단축법인명
				sCbDp := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[iRow]), 137, 16));  // 단축법인부서명
      end else
      begin
        sCbNm := '';
        sCbDp := '';
      end;
    end else
    begin
      sCbCode := '';
      sCbNm := '';
      sCbDp := '';
    end;
    // 법인일 경우 세팅..
    if (CbCuGb.ItemIndex = 2) and (cxtCuBubin.Hint <> '') then
    begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BGroupString', En_Coding(sCbCode));
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BNameString', En_Coding(sCbNm));
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BName2String', En_Coding(sCbDp));
    end else
    begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BGroupString', '');
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BNameString', '');
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'BName2String', '');
    end;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CuSeqString', En_Coding(lcsCu_seq)); // 고객일련번호
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ModeString', '');
    // 미사용.
    if pos('*', cxtCuTel.Text) > 0 then
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustTelString', En_Coding(locsCuTel))
    else
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustTelString', ReplaceAll(En_Coding(cxtCuTel.Text), '-', ''));
    if pos('*', cxtCuTel2.Text) > 0 then
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustTel2String', En_Coding(locsCuTel2))
    else
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustTel2String', ReplaceAll(En_Coding(cxtCuTel2.Text), '-', ''));

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustNameString', En_Coding(edtCuName.Text));

		sContent := '';
		sContent := ReplaceAll(Trim(meoCuWorMemo.Text), #$D#$A, '|');
		sContent := ReplaceAll(sContent, #13#10, '|');
		sContent := ReplaceAll(sContent, #10#13, '|');
		sContent := StringReplace(sContent, '│', '|', [rfReplaceAll]);

		ls_TxLoad := ReplaceAll(ls_TxLoad, 'CarInfoString', En_Coding(sContent));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PayGubunString', PayMethod);

    // 기사 수수료 설정값 추가. 2010-11-03
    cxDriverCharge.Text := StringReplace(cxDriverCharge.Text,',','',[rfReplaceAll]);

		//탁송, 스틱 옵션
    if BtnOptionSexM.Down then StrValue := 'M' else
    if BtnOptionSexF.Down then StrValue := 'F'
                          else StrValue := 'A';

		StrValue := StrValue + sStickCall + sTaksong;
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'DriverOptionString', StrValue);
		//탁송, 스틱 옵션

    // KCP 카드결제 "결제일련번호" 추가.  2011-10-26
    StrValue  := cxDriverCharge.Text + '" CardPaySeq="' + locCardPaySeq;
    ls_TxLoad := StringReplace(ls_TxLoad,'DriverChargeString', StrValue, [rfReplaceAll]);
    // 법인인증 여부
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'URLReqString', '');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'MChargeString', '');
    // 모바일결제 : 미사용.
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfInfoString', En_Coding(meoBigo.Text));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ChargeString', ReplaceAll(curRate.Text, ',', ''));

		sContent := '';
		sContent := ReplaceAll(Trim(meoCuCCMemo.Text), #$D#$A, '¶');
		sContent := ReplaceAll(sContent, #13#10, '¶');
		sContent := ReplaceAll(sContent, #10#13, '¶');
		sContent := StringReplace(sContent, '|', '¶', [rfReplaceAll]);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfMemoString', En_Coding(sContent));

		// 상황실 체크박스
		StrValue := IfThen(BtnCenterMng.Down, 'y', 'n');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'BrTelYnString', StrValue);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'CuTelYnString', CustBrTelYN);

    // SMS 수신여부
    StrValue := IfThen(btnCuSmsNo.Down, 'n', 'y');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'SMSString', StrValue);
    // 기사종류
    if BtnOptionSexM.Down then StrValue := 'M' else
    if BtnOptionSexF.Down then StrValue := 'F'
                          else StrValue := 'A';

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'OptionString', StrValue);

    // 예약시간
    if BtnResv.Tag = 1 then
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfPretimeString', formatdatetime('yyyymmdd', dtpResvDate.Date)
        + formatdatetime('hhmm', dtpResvTime.Time) + '00')
    else
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfPretimeString', '');

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'BrNoString', En_Coding(locBrNo));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'KeyNumberString', En_Coding(locKNum));
    // 고객구분-0(일반), 1(업소), 3(법인)
    if CbCuGb.ItemIndex = 2 then ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfBarString', '3') else
    if CbCuGb.ItemIndex = 1 then ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfBarString', '1')
                            else ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfBarString', '0');

    if AStatus = 'R' then
    begin
      if BtnResJ.Down then
    		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfPreStatus1String', '0')
      else
      if BtnResD.Down then
    		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfPreStatus1String', '5');
    end else
    		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfPreStatus1String', '');

    if BtnOptionCallMu.Down then
  		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfOptionsString', 'y')
    else
  		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfOptionsString', 'n');

    if Trim(lcsSta1) = '' then
      lcsSta1 := slstLocalMapOrder[0];

    if (Trim(lcsEnd1) = '') and (GS_SEARCH_ENDNOSEARCH = False) then //도착지 검색 옵션적용 2012.05.30
      lcsEnd1 := slstLocalMapOrder[0];

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stArea1String', En_Coding(lcsSta1));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stArea2String', En_Coding(lcsSta2));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stArea3String', En_Coding(lcsSta3));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stArea4String', En_Coding(cxtStartAreaDetail.Text));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stArea5String', En_Coding(meoStartArea.Text));

    // 2006.06.06 맵번호 대신 좌표로 수정한다.
    if StrToFloatDef(cxtStartXval.Text, -1) = -1 then
    begin
      gJONStaChkXY.X := '';
      gJONStaChkXY.GUIDE_X := '';
      cxtStartXval.Text := '';
      cxtStartGUIDEXval.Text := '';
    end;

    if StrToFloatDef(cxtStartYval.Text, -1) = -1 then
    begin
      gJONStaChkXY.Y := '';
      gJONStaChkXY.GUIDE_Y := '';
      cxtStartYval.Text := '';
      cxtStartGUIDEYval.Text := '';
    end;

    if ((gJONStaChkXY.X) <> '') and (gJONStaChkXY.X[1] <> '0') then
      gJONStaChkXY.X := '0' + gJONStaChkXY.X;

    if ((cxtStartXval.Text) <> '') and (cxtStartXval.Text[1] <> '0') then
      cxtStartXval.Text := '0' + cxtStartXval.Text;

    // 출발지 좌표 중 X/Y가 동일하거나, X좌표가 비어있는 경우 발생하여 예외처리 지시(최도순)
    if ((cxtStartXval.Text <> '') or (cxtStartYval.Text <> '')) and ((cxtStartXval.Text = cxtStartYval.Text) or
      (cxtStartXval.Text = '')) then
    begin
      ShowMessage('출발지 좌표 정보가 올바르지 않습니다. 출발지를 다시 조회 하시고 수정 바랍니다.');
      Exit;
    end;

      // 20120808 LYB 수정
    iX := cxtStartXval.Text;
    iY := cxtStartYval.Text;

    if ( gJONStaChkXY.X <> cxtStartXval.Text ) Or ( gJONStaChkXY.Y <> cxtStartYval.Text ) then
    begin
      if ( gJONStaChkXY.X <> '' ) And ( gJONStaChkXY.Y <> '' ) And ( gJONStaChkXY.Area1 <> '') then
      begin
        sMsg := ' ** 출발지 선택원본과 접수정보가 일치하지 않습니다. ** ' + #13 +
                '   - 출발지 선택원본                                     ' + #13 +
                '   ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + #13 +
                '   - 출발지 접수정보                                     ' + #13 +
                '   ' + lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3 + ' ' + cxtStartAreaDetail.Text + ' ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + #13#10#13#10 +
                '   출발지 선택원본으로 접수 처리 하시겠습니까?           ' + #13 +
                '   (아니오 선택시 출발지 명칭 검색을 다시 해주시기바랍니다.) ';
        begin
          sErrMsg := '[수-출좌 Y] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + ' ' + gJONStaChkXY.Gubun;
          Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[변-출좌]');
          Assert(False, sErrMsg);
        end;

        iX := gJONStaChkXY.X;
        iY := gJONStaChkXY.Y;
      end else
      begin
        sErrMsg := '[수-출좌 O] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + ' ' + gJONStaChkXY.Gubun;
        Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[변-출좌]');
        Assert(False, sErrMsg);
      end;
    end;

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stMapXString', iX);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stMapYString', iY);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'AreaUPS', GS_Grid_DEP);  // 출발지선택값


		ls_TxLoad := ReplaceAll(ls_TxLoad, 'WaitTimeString', cxTmWaitTime.Text + FloatToStr(fCruKm));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ChargeTypeString' , '22');

	  ls_TxLoad := ReplaceAll(ls_TxLoad, 'stAreaSOPTString', '9');
//-    Log('lcsStaDebug 수 : ' + En_Coding(lcsStaDebug), LOGDATAPATHFILE);
  	ls_TxLoad := ReplaceAll(ls_TxLoad, 'stAreaSDebugString', En_Coding(lcsStaDebug));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stAreaSetTypeString', lcsStaCellSel);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'stAreaKeywordString', En_Coding(lcsStaSchWord));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'stAreaIdString'     , lcsStaDocId);

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edArea1String', En_Coding(lcsEnd1));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edArea2String', En_Coding(lcsEnd2));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edArea3String', En_Coding(lcsEnd3));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edArea4String', En_Coding(cxtEndAreaDetail.Caption));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edArea5String', En_Coding(meoEndArea.Text));

    // 2006.07.24 도착지좌표 추가한다.
    if StrToFloatDef(cxtEndXval.Text, -1) = -1 then cxtEndXval.Text := '';
    if StrToFloatDef(cxtEndYval.Text, -1) = -1 then cxtEndYval.Text := '';
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edMapXString', cxtEndXval.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edMapYString', cxtEndYval.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'AreaUPE', GS_Grid_DES); // 도착지선택값

	  ls_TxLoad := ReplaceAll(ls_TxLoad, 'edAreaEOPTString', '9');
//-    Log('lcsEndDebug 수 : ' + En_Coding(lcsEndDebug), LOGDATAPATHFILE);
  	ls_TxLoad := ReplaceAll(ls_TxLoad, 'edAreaEDebugString', En_Coding(lcsEndDebug));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'edAreaSetTypeString', lcsEndCellSel);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'edAreaKeywordString', En_Coding(lcsEndSchWord));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'edAreaIdString'     , lcsEndDocId);

    // 경유요금 :::::::: 신버전 추가 기능 개발..(법인기능요청으로,,개발,,)
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ViaChargeViaString', ReplaceAll(cxCurPathRate.Text, ',', ''));
    // 대기요금
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'WChargeWCString', ReplaceAll(cxCurWaitTmRate.Text, ',', ''));
    // 대기시간
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'WTimeWTString', cxTmWaitTime.Text + FloatToStr(fCruKm));
    // 보정금액
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'AChargeACString', ReplaceAll(cxCurRevisionRate.Text, ',', ''));
    // 적요투(2)
    sTemp := ReplaceAll(meoBigo2.Text, CRLF, '|');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfInfo2String', En_Coding(sTemp));

    StrValue := '';
    if ( blCompulWor ) and (Trim(sWkSabun) <> '') then
    begin
      StrValue := Trim(sWkSabun);
    end;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'WkSabunString', StrValue); // 기사사번 읽기.

    // 플러스콜 설정값 추가. 2010.10.03
    StrValue := IfThen(btnPlusYN.Down, 'y', 'n'); // 플러스콜 체크박스
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PlusYnString', StrValue);

    //--------------------------------------------------------------------------------------------
    //  경유지 추가
    //--------------------------------------------------------------------------------------------
		if GT_PASS_INFO[iFidx][0].AREA1 = '' then
    begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'ViaInfoCountString', '0');
      ls_ViaInto := lc_ViaInfoString;
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area1String', '');
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area2String', '');
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area3String', '');
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area4String', '');
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area5String', '');
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'MapXString', '');
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'MapYString', '');
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaUPV', '');  // 경유지선택값

			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaVOPTString', '9');
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaVDebugString', '');
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaSetTypeString', '');
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaKeywordString', '');
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaIdString'     , '');
    end else
    begin
      lRow := 0;
      ls_ViaInto := '';
      while lRow <= 4 do
      begin
        if GT_PASS_INFO[iFidx][lRow].AREA1 = '' then break;
        ls_ViaInto := ls_ViaInto + lc_ViaInfoString;
				ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area1String', En_Coding(GT_PASS_INFO[iFidx][lRow].AREA1));
				ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area2String', En_Coding(GT_PASS_INFO[iFidx][lRow].AREA2));
        ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area3String', En_Coding(GT_PASS_INFO[iFidx][lRow].AREA3));
        ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area4String', En_Coding(GT_PASS_INFO[iFidx][lRow].AREA4));
        ls_ViaInto := ReplaceAll(ls_ViaInto, 'Area5String', En_Coding(GT_PASS_INFO[iFidx][lRow].AREA5));
        ls_ViaInto := ReplaceAll(ls_ViaInto, 'MapXString', GT_PASS_INFO[iFidx][lRow].MAP_X);
        ls_ViaInto := ReplaceAll(ls_ViaInto, 'MapYString', GT_PASS_INFO[iFidx][lRow].MAP_Y);
        ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaUPV', GS_Grid_VIA);  // 경유지선택값

			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaVOPTString', '9');
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaVDebugString', '');
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaSetTypeString', GT_PASS_INFO[iFidx][lRow].CELLS);
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaKeywordString', En_Coding(GT_PASS_INFO[iFidx][lRow].SWORD));
      ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaIdString'     , GT_PASS_INFO[iFidx][lRow].DOCID);
        inc(lRow);
      end;
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'ViaInfoCountString',
        IntToStr(lRow));
    end;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ViaInfoString', ls_ViaInto);

    // - 와이즈넛 검색어 실패/성공 여부 전송
    if ( GS_Grid_DEP <> 'C' ) And ( Trim(lcsStaSchWord) <> '' ) then
    begin
      if GS_Grid_DEP = 'W' then sRespSParam1 := meoStartArea.Text
                           else sRespSParam1 := GS_Grid_DEP + '/' + meoStartArea.Text + '/' + cxtStartXval.Text + '/' + cxtStartYval.Text;

      sRespSParam2 := GS_Grid_DEP;
      sRespSParam3 := lcsStaCellSel;
    end;

    if ( GS_Grid_DES <> 'D' ) And ( GS_Grid_DES <> 'C' ) And ( Trim(lcsEndSchWord) <> '' ) then
    begin
      if GS_Grid_DES = 'W' then sRespEParam1 := meoEndArea.Text
                           else sRespEParam1 := GS_Grid_DES + '/' + meoEndArea.Text + '/' + cxtEndXval.Text + '/' + cxtEndYval.Text;

      sRespEParam2 := GS_Grid_DES;
      sRespEParam3 := lcsEndCellSel;
    end;

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
			Proc_JobAfterProc(True, True);
      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);

          tmFormClose.Tag := 99; // 화면 닫기 설정값.
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, True);

      tmrResponse.Enabled := True;
    end;
  except
    on e: Exception do
    begin
      ls_TxLoad := 'JON01[Proc_OrderUpdateSave]:' + e.Message;
      Log(ls_TxLoad, LOGDATADIRECTORY + 'Accept_Err.log');
      Proc_BtnEnabled(True); // 버튼 활성/비활성 처리.
      Assert(False, E.Message);
    end;
  end;
end;

// 고객 당일 오더 구분 : 폼의 라벨 컨트롤 칼라를 설정 한다.
procedure TFrm_JON01.SetCustControlColor(bType: boolean = False);
begin
  // 컨트 칼라 설정..
  if bType = True then
  begin
    PnlOCC.Color := $0080FFFF;
  end else
  begin
    PnlOCC.Color := $00C1DADB;
  end;
end;

procedure TFrm_JON01.Proc_CIDEventAutoSearch(sCID, sKeyNumber, sDNIS, sSndTime, sBrNo : string);
begin
  try
		SetPrivateVariable; // 접수 전에 조회 조건 관련 전역변수 초기화..
    if locCustHP_MainNum_Search = '' then
    begin // JON03에서 고객 전화번호로  조회시 사용함. 구분값:'CUSTHP'
      cxLblCIDUseFlg.Hint := 'CID'; // CID 조회인지 설정을 한다.
    end;
    locHDNO := '';
		locBRNO := sBrNo; // 조회 고객 본사, 지사코드, 대표번호 임시저장.
		locKNum := sKeyNumber; // CID에서 들어온 대표번호 설정.
    locDNIS := sDNIS;
    locSndTime := sSndTime;

    sCID := StringReplace(sCID, '-', '', [rfReplaceAll]);
    cxtCallTelNum.Text := sCID; // CID 설정.
    cxtCuTel.Text := sCID;

		if not GS_CIDINFO_OUR_KEYNUMBER then
		begin
			cboBranch.ItemIndex := -1;
			ShowMessage('존재하지 않는 대표번호(' + sKeyNumber + ') 입니다. 확인후 검색 하세요!' + #13#10 +
				'[콜센터에 이관된 지사 또는 본인 소속 지사만 검색 가능]');
			GS_CIDINFO_OUR_KEYNUMBER := True;
			try
				// CID 조회 일때는 발신전화없음 멘트 감춤..
				if (locCustHP_MainNum_Search = '') and (cxLblCIDUseFlg.Hint <> 'CID') then
				begin
					cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);
					cxtCallTelNum.Text := cxtCuTel.Text; // 발신전화번호
					locsCuTel := cxtCuTel.Text;
				end else
				begin
					locsCuTel := cxtCallTelNum.Text;
				end;

				cxBtnSpSave.Enabled := True;
				cxBtnCuUpdate.Enabled := True;
				cxBtnCuNew.Enabled := True;
				cxBtnCuDel.Enabled := True;
				btnMileOut.Enabled := True;

				// 지사변경 제한.[이유:고객조회 후 지사변경시 조회한 고객정보 일부유실 경고메시지 띄우기 위함임]
				cboBranch.Properties.ReadOnly := True;

				if lcsCu_seq <> '' then
				begin
//					spCuSeqColor.Brush.Color := $0070FEF3;
					// 존재 : $0070FEF3, 미존재 : $00FAEDE2
				end	else
				begin
//					spCuSeqColor.Brush.Color := $00FAEDE2;
					// 존재 : $0070FEF3, 미존재 : $00FAEDE2
					if (cxLblCIDUseFlg.Hint = 'CID') and (locWkSabun = '') then
					begin // CID 조회인지 설정을 한다.
						tmMent.Enabled := True;
						locKNum := Proc_MainKeyNumberSearch; // 대표번호 추출.
//						lblNewCustYN.Caption := sBr_Name + ' / ' + locKNum + ' 의' + #13#10
//							+ '-->>신규 고객<<-- 입니다.';
						pnlNewCustYN.Visible := True; // 신규고객여부의 정보를 보여준다.
					end;
				end;

        if Assigned(Frm_Jon012) then
        begin
  				Frm_Jon012.cxlbSlip.Caption    := cxtJoinNum.Text; // 오더접수번호
  				Frm_Jon012.cxlbCustTel.Caption := locsCuTel; // 고객전화번호 읽기.
  				Frm_Jon012.cxlbKeyNum.Caption  := Proc_MainKeyNumberSearch; // 대표번호 읽기.
        end;

				pnlJonMain.Enabled := True;   // 접수창 잠긴걸 해제함. 2011-11-08.

				if Self.Visible = True then
        begin
         	meoStartArea.SetFocus;
//          meoStartArea.SelStart := Length(meoStartArea.Text);
        end;
			except
				on e: exception do
				begin
					Assert(False, E.Message);
				end;
			end;
			Exit;
		end;
	except
  end;

  // CID정보로 고객정보를 조회한다.
	Proc_KeyNumberSearch(sKeyNumber, True);
end;

// 고객 이용내역을 그리드에 보여준다.
procedure TFrm_JON01.Proc_CustOrderListView;
var
  I, j, ARow, ACol, iTotCnt : integer;
  TodayDate, OrderDate, vField, vValue, sError: string;
  CustomerNo: string;
  STAA : array[0..15] of TSCOMP;
  ETAA : array[0..15] of TSCOMP;
  slCom : TStringList;
  elCom : TStringList;
  iCnt, sCnt, eCnt, idx, iMax, ssRow, eeRow : Integer;
  sArea1, sArea2, sArea3, sArea4, sArea5, sArea6, sArea7, sArea8  : string;
  eArea1, eArea2, eArea3, eArea4, eArea5, eArea6, eArea7, eArea8  : string;
	StartXY, EndXY, sNowDTM : string;
	dNowDate, dOrderDate : TDateTime;
  sErrLine : String;
begin
sErrLine := '1';
  TodayDate := StartDateTime('yyyy-mm-dd hh:nn:ss'); // 오늘 영업일자 얻기..
  iCnt := 0;
  sCnt := 0;
  eCnt := 0;
  iTotCnt := 0;
  ARow := 0;
sErrLine := '2';
  slCom := TStringList.Create;
  slCom.Sorted := True;
	elCom := TStringList.Create;
  elCom.Sorted := True;
sErrLine := '3';
  Frm_JON012.Tag := Self.Tag;
  Frm_JON012.Set_OrderLiast;
sErrLine := '4';
  try
    try
      for I := 0 to 201 do
      begin
        if locaryOrderList[I, 0] = '' then Continue;
sErrLine := '5';
        Application.ProcessMessages;

        Inc(iTotCnt);  // 총 라인 개수
sErrLine := '6';
        if (locaryOrderList[I, 16] <> '') and (locaryOrderList[I, 17] <> '') then
        begin
          if sRet <> 1 then
          begin
sErrLine := '7';
            if locaryOrderList[I, 12] <> '' then Inc(sCnt);
            StartXY := '';
            iCnt := slCom.Count;
            StartXY := locaryOrderList[I, 16] + locaryOrderList[I, 17];
sErrLine := '8';
            idx := slCom.Add(StartXY);
sErrLine := '9';
            if iCnt = slCom.Count then
            begin
sErrLine := '10';
              STAA[idx].sSlip  := locaryOrderList[I, 12];
              STAA[idx].iCount := STAA[idx].iCount + 1;
              STAA[idx].iRow   := i;
            end else
            begin
sErrLine := '11';
              STAA[slCom.Count-1].sSlip  := locaryOrderList[I, 12];
              STAA[slCom.Count-1].iCount := 1;
              STAA[slCom.Count-1].iRow   := i;
            end;
          end;

          if eRet <> 1 then
          begin
            if (locaryOrderList[I, 24] <> '') and (locaryOrderList[I, 25] <> '') then
            begin
sErrLine := '13';
              EndXY := '';
              if locaryOrderList[I, 12] <> '' then Inc(eCnt);
sErrLine := '14';
              iCnt := elCom.Count;
              EndXY := locaryOrderList[I, 23] + locaryOrderList[I, 24];
sErrLine := '15';
              idx := elCom.Add(Endxy);
              if iCnt = elCom.Count then
              begin
sErrLine := '16';
                ETAA[idx].sSlip  := locaryOrderList[I, 12];
                ETAA[idx].iCount := ETAA[idx].iCount + 1;
                ETAA[idx].iRow   := i;
              end else
              begin
sErrLine := '17';
                ETAA[elCom.Count-1].sSlip  := locaryOrderList[I, 12];
                ETAA[elCom.Count-1].iCount := 1;
                ETAA[elCom.Count-1].iRow   := i;
              end;
            end;
          end;
        end;

        // 당일오더 건에 대해선 칼라를 변경하여 구분이 될수 있게 해준다.
        try
          if I = 1 then
          begin
            OrderDate := locaryOrderList[I, 13]; // 접수일시
            OrderDate := copy(OrderDate, 1, 19);
            CustomerNo := locaryOrderList[I, 15];
            if OrderDate >= TodayDate then
              SetCustControlColor(True) // 고객정보 화면의 라벨칼라를 변경해준다.
            else
              SetCustControlColor(False);
          end;
        except
          on e: exception do
          begin
            sError := sError + '당일오더 건 Error : ARow - ' + IntToStr(I) + E.Message;
            Assert(False, sError);
          end;
        end;

         // 출발지/도착지에 자료가 있는지 여부 체크 후 없으면 표시  20130724  LYB
        if ( locaryOrderList[i, 40] <> '' ) And ( Not pbISStartEndXY ) then
        begin
          sNowDTM := frm_Main.func_sysdate;
          dOrderDate := StrToDateTime(locaryOrderList[i, 13]);
          dNowDate := StrToDateTime(copy(sNowDTM,1,4) + '-' + copy(sNowDTM,5,2) + '-' + copy(sNowDTM,7,2) + ' '
                                  + copy(sNowDTM,9,2) + ':' + copy(sNowDTM,11,2) + ':' + copy(sNowDTM,13,2) );

          if MinutesBetween(dNowDate,dOrderDate)  < 3 then
          begin
            sArea1 := locaryOrderList[i,2];
            sArea2 := locaryOrderList[i,16];
            sArea3 := locaryOrderList[i,17];
            sArea4 := locaryOrderList[i,18];
            sArea5 := locaryOrderList[i,19];
            sArea6 := locaryOrderList[i,20];
            sArea7 := locaryOrderList[i,21];
            sArea8 := locaryOrderList[i,22];

            cxtStartXval.Text := sArea2;
            cxtStartYval.Text := sArea3;
            cxtStartGUIDEXval.Text := sArea2;
            cxtStartGUIDEYval.Text := sArea3;

            lcsSta1 := sArea4;
            lcsSta2 := sArea5;
            lcsSta3 := sArea6;
            lcsSta4 := sArea7;
            lblStartAreaName.Text := lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3;
            cxtStartAreaDetail.Text := lcsSta4;
            meoStartArea.Text := sArea1;

            MarkAllWords(lblStartAreaName, UpperCase(meoStartArea.Text), clRed, [fsBold]);
            MarkAllWords(cxtStartAreaDetail, UpperCase(meoStartArea.Text), clRed, [fsBold]);

            lcsStaCellSel := '';
            lcsStaDocId := '';
            GS_Grid_DEP := 'A'; //과거이용내역일때
          end;
        end;
      end;
    finally
     FreeAndNil(slCom);
   	 FreeAndNil(elCom);
    end;
  Except
  	on e: exception do
  	begin
      sError := 'Proc_CustOrderListView Error : ' + sErrLine + ':' + E.Message;
  		Assert(False, sError);
  	end;
  end;

  SetAreaAutoSET;
end;

// 출발지/도착지에 자료가 있는지 여부 체크 후 없으면 표시  20130724  LYB
procedure TFrm_JON01.SetAreaAutoSET;
var
  I, iTotCnt : integer;
  sError: string;
  STAA : array[0..15] of TSCOMP;
  ETAA : array[0..15] of TSCOMP;

  iCnt, sCnt, eCnt, idx, iMax, ssRow, eeRow : Integer;
  sArea1, sArea2, sArea3, sArea4, sArea5, sArea6, sArea7, sArea8  : string;
  eArea1, eArea2, eArea3, eArea4, eArea5, eArea6, eArea7, eArea8  : string;
begin
  // 프로시져로 분리  ( 예상치 못한 오류로 인해서 20140522 )
	if ( not GS_AREA_AUTO_SET ) And  ( Not pbISStartEndXY ) then      //과거이용내역기준 자동설정 사용안함 2013.05.23 KHS
	begin
    try
      if sRet <> 1 then
      begin
        for i := 0 to iTotCnt do
        begin
          if i = 0 then
          begin
            iMax := STAA[i].icount;
            ssRow := STAA[i].iRow;
          end else
          if  iMax < STAA[i].icount then
          begin
            iMax := STAA[i].icount;
            ssRow := STAA[i].iRow;
          end;
        end;

        // 출발지 건수가 최소 4건이상 /  최대건수대비 출발지 건수 50% 이상
        if (iMax > 4) and (iMax / sCnt * 100 >= 50) then
        begin
          sArea1 := locaryOrderList[ssRow,2];
          sArea2 := locaryOrderList[ssRow,16];
          sArea3 := locaryOrderList[ssRow,17];
          sArea4 := locaryOrderList[ssRow,18];
          sArea5 := locaryOrderList[ssRow,19];
          sArea6 := locaryOrderList[ssRow,20];
          sArea7 := locaryOrderList[ssRow,21];
          sArea8 := locaryOrderList[ssRow,22];

          // 20120805 좌표 오류 체크 LYB
          gJONStaChkXY.Area1 := sArea4;
          gJONStaChkXY.Area2 := sArea5;
          gJONStaChkXY.Area3 := sArea6;
          gJONStaChkXY.Area4 := sArea7;
          gJONStaChkXY.Area5 := lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3;
          gJONStaChkXY.X := sArea2;
          gJONStaChkXY.Y := sArea3;
          gJONStaChkXY.Gubun := 'H';

          cxtStartXval.Text := sArea2;
          cxtStartYval.Text := sArea3;
          cxtStartGUIDEXval.Text := sArea2;
          cxtStartGUIDEYval.Text := sArea3;

          lcsSta1 := sArea4;
          lcsSta2 := sArea5;
          lcsSta3 := sArea6;
          lcsSta4 := sArea7;
          lblStartAreaName.Text := lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3;
          cxtStartAreaDetail.Text := lcsSta4;
          meoStartArea.Text := sArea1;
          MarkAllWords(lblStartAreaName, UpperCase(meoStartArea.Text), clRed, [fsBold]);
          MarkAllWords(cxtStartAreaDetail, UpperCase(meoStartArea.Text), clRed, [fsBold]);

          lcsStaCellSel := '';
          lcsStaDocId := '';
          GS_Grid_DEP := 'H'; //과거이용내역일때
          changeLog('S'+ 'H1' + sArea2 + ':' + sArea3, false);        //x,y좌표 변경시 로그생성 2012.08.08 KHS
        end;
      end;

      if eRet <> 1 then
      begin
        for i := 0 to iTotCnt do
        begin
          if i = 0 then
          begin
            iMax := ETAA[i].icount;
            eeRow := ETAA[i].iRow;
          end else
          if  iMax < ETAA[i].icount then
          begin
            iMax := ETAA[i].icount;
            eeRow := ETAA[i].iRow;
          end;
        end;

        if (iMax > 4) and (iMax / eCnt * 100 >= 50) then
        begin
          eArea1 := locaryOrderList[eeRow,3];
          eArea2 := locaryOrderList[eeRow,23];
          eArea3 := locaryOrderList[eeRow,24];
          eArea4 := locaryOrderList[eeRow,25];
          eArea5 := locaryOrderList[eeRow,26];
          eArea6 := locaryOrderList[eeRow,27];
          eArea7 := locaryOrderList[eeRow,28];
          eArea8 := locaryOrderList[eeRow,29];

          cxtEndXval.Text := eArea2;
          cxtEndYval.Text := eArea3;
          cxtEndGUIDEXval.Text := eArea2;
          cxtEndGUIDEYval.Text := eArea3;

          lcsEnd1 := eArea4;
          lcsEnd2 := eArea5;
          lcsEnd3 := eArea6;
          lcsEnd4 := eArea7;
          lblEndAreaName.Caption := lcsEnd1 + ' ' + lcsEnd2 + ' ' + lcsEnd3;
          cxtEndAreaDetail.Caption := lcsEnd4;
          meoEndArea.Text := eArea1;
          cxReEndArea.Text := lblEndAreaName.Caption + ' ' + cxtEndAreaDetail.Caption;
          MarkAllWords(cxReEndArea, UpperCase(meoEndArea.Text), clRed, [fsBold]);

          lcsEndCellSel := '';
          lcsEndDocId := '';

          GS_Grid_DES := 'H'; //과거이용내역일때
          changeLog('E'+ 'H1' + sArea2 + ':' + sArea3, false);        //x,y좌표 변경시 로그생성 2012.08.08 KHS
        end;
      end;
    except
      on e: exception do
      begin
        sError := '당일오더 건 Error '  + E.Message;
        Assert(False, sError);
      end;
    end;
  end;
end;

end.

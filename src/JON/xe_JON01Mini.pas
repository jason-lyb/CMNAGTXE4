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
		ViaSA1        : string;  // ������ �õ�
		ViaSA2        : string;  // ������ �ñ���
		ViaSA3        : string;  // ������ ���鵿
		ViaAreaDetail : string;  // ������ �˻���
    DocId         : string;  // UID
    CellSel       : String;  // �����ñ���
    SchWord       : String;  // �˻���
		XposVia       : string;  // �߰��� ������ X��ǥ
		YposVia       : string;  // �߰��� ������ Y��ǥ
		GUIDE_X       : string;  // �߰��� ������ GUIDE_X��ǥ
		GUIDE_Y       : string;  // �߰��� ������ GUIDE_Y��ǥ
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

    sRespSParam1, sRespSParam2, sRespSParam3 : String;  // ������� ����/���� ���� ���� �Ķ��Ÿ - �����
    sRespEParam1, sRespEParam2, sRespEParam3 : String;  // ������� ����/���� ���� ���� �Ķ��Ÿ - ������

    AUseMileage : Boolean;

    sProdName : String;

    sPreSuggestWord : String;

 		SCboLevelSeq : TStringList;

    sAnsiSchTxt : AnsiString;

    loc_Ud_xdom: DomDocument; // ������� ���� XML ���� Pasing ����.
    loc_Ud_lst_Node: IXMLDomNodeList;

    FHidePhoneNum: Boolean; // �������� ��û�� ȭ�� �ʱ�ȭ �ϷῩ��

    lvs_ReceiveText: string; // �ӽú��� : Socket���� ���
    sNowRate: string; // ���� ������ �⺻��� ������.

    loc_bUpdateLock: boolean;   // ����ȭ�� Lock ���� ����.[True:����, False:�̼���]

		FBigoList: TStringList;
		FSpopList: TStringList;
		FEpopList: TStringList;

    FCurrBigo: TcxMemo;
    FCurrSpop: TcxMemo;
    FCurrEpop: TcxMemo;

    giRealKmCnt, giRealKmIdx : Integer;

		searchBRlist: TStringList;  //������ �����, ��ǥ��ȣ �˻� �� �ε��� ���� 2013.06.15  KHS

    loc_Up_Recv_YN: boolean;

    loc_TmClose: string; // ȭ�� ���� Ÿ�̸� ����. CDS. 080830.

		loc_sHoTransArea: string; // �ݶ���� ȣ��ȯ ���� ���� ����.

		pbPayMethod : Integer;   // ������ üũ�ڽ� ���ý� ������ �ǵ����� ���� ����.
		glsMapRltVal : TStringList;  // ��/������ ��ȸ ������� ��Ī ���� ����.

		loc_RateNOT: boolean; // ��� ����� ����.

    pbISStartEndXY : Boolean;   // 20130724 LYB ����ȭ��ȣ ��ȸ �� �����/�������� �ڷᰡ �ִ��� ������ ���� üũ

    // ------------------------------  ��
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

    //�������� �˻�
    procedure Proc_Driver_Charge;

    //  ����� �߰� ���� ����
    procedure proc_Save_Area(iGubun: Integer);
    // ������ �⺻�� üũ..
    function NotNullCheck(b24HourCheck: boolean = False): Boolean;
		// ��ǥ��ȣ �˻� ����Ʈ ���� 2013.06.15 KHS..
		function Func_KeyNumberList_Search: Boolean;
    // ��ǥ��ȣ�� ��ȸ �� ��� ó���� �Ѵ�.
    procedure Proc_NumberInsert(rxxml: String);

    // ��ȸ �� ���� ������ ���� �Ѵ�. : DB Update~~
    procedure Proc_OrderUpdateSave(AStatus: string = '');

    procedure Proc_recieve(ls_rxxml: String);
    // ���� ���� ��ȸ ���� ���� �������� �ʱ�ȭ..
    procedure SetPrivateVariable;
    // ���ð� �޴� Ŭ���� ���ð�, ����� �Է� �̺�Ʈ ó��..
    procedure Proc_WTRateMenu_Click(Sender: TObject);
    // ���ð��� ��� �޴� ����.
    procedure Proc_WTRMenuCreate(sTitle, sComponentName: string; iTagMoney: Integer);
    // ���縮��Ʈ���� �����ڵ�, �����ڵ�� ù��° ��ǥ��ȣ index�� ã�´�.  CDS. 080818.
    function Proc_HeNoBrNoListIdxFind(sHdNo, sBrNo: string): Boolean;
    // ���� ������ ���� Lock �� �����Ѵ�.
    procedure Proc_AcceptLock(ss_Gubun: string);
    // ���� �Ϸù�ȣ�� �޾� ���� ���������� ��ȸ �Ѵ�.  sTodayGubun:1(���Ͽ���), 2:(���ſ���)
    procedure Proc_ConfSlip_Select_New(sConfSlip, sTodayGubun: string);
    // ��ư Ȱ��/��Ȱ�� ó��.
    procedure Proc_BtnEnabled(bTF: boolean = True);
		// ���纰 ��Ʈ ���ϱ�..  CDS. 080827.
    function Func_brtel_memo(sBrNo, sKeyNum: string): string;
    // �� �̿볻���� ����ش�.
    procedure Proc_Jon012Show;
    // �޾ƿ� ������ ������ �迭�� �����Ѵ�.
    procedure proc_ViaInfo_insert(rxxml: String);
    // ������� �� ����� ó�� �Ѵ�.
    procedure Proc_SaveReturn(ss_RxXml: String);
    // �� �⺻������ ���� �Ѵ�.
    procedure Proc_CustBasicSave;
    // �� SMS�ź� ������ �����Ѵ�.
    procedure Proc_CustSMSSave;
    // ���⺻������ ���� ��û �� ��� ó���� �Ѵ�.
    procedure Proc_CustBasicSave_Result(rxxml: String);
    // �� SEQUENCE ��ȸ �� �´�.
    procedure Proc_CuSeq_Select;
    // �� SEQUENCE ��ȸ�� ���� ����� ó�� �Ѵ�.
    procedure Proc_RequestResult(ls_rxxml: String; ls_ClientKey: string);
    // ���õ� ������������ ������� ���� �Ѵ�.
    function Proc_BrNameReadSearch: string;
    // ��ȭ��ȣ�� ���浵 ��ǥ�� ��ȸ �� �� ��� ó���� �Ѵ�.
    procedure Proc_TellNumSearchNEDataResult(rxxml: String);
		// [����ȭ�� ����..]�����Ϸù�ȣ:������ȣ�� ��ȸ �� �� ��� ó���� �Ѵ�.
		procedure Proc_ConfSlipSelectResult(rxxml: String);
		// ��������� ���縮��Ʈ �Ѹ���..  2013.06.15 KHS
		function proc_BrNameList_Search: boolean;

    // �� �����(START), ������(DEST) ������ �����Ѵ�.
    procedure Proc_Cust_AreaSave(sStartDest: string);
    // ��ȭ��ȣ ��ġã�� �⺻ ��ġ�� ���Ѵ�.
    procedure Proc_TellAreaFormCreate;
    // ��ȭ��ȣ �� ���浵 ��ǥ�� �˻� �� ValueCheck..
    function Func_TellNumSearchCheck: boolean;
    // ��ȭ��ȣ �� ���浵 ��ǥ�� �˻� �Ѵ�..
    procedure Proc_TellNumSearchNEData;
    // ��ȸ �������� �Ѵ�.
    procedure proc_delete_customer;

    function IsMultiCallFixPrice: Boolean;

    // ������ ��������� �Ѵ�.
    procedure Proc_OrderJoinIns;
    // ������ ���� ���� �Ѵ�.
    procedure Proc_OrderWaitJoinIns;
    // ������ ���Ƿ� ���� �Ѵ�.
    procedure Proc_OrderQuesJoinIns;
    // ���� ���Űź� ����� �Ѵ�.
    procedure Proc_OrderSMSRecvNo;
    // �ֹ� ������ ó�� �Ѵ�.
    procedure Proc_Save(ss_Mode: string);

    procedure SetCustBrTelYN(const Value: string); {Domain: '': Unkown, 'y': yes, 'n': no}

    // ���������� ��ȸ�Ѵ�.
    procedure Proc_BubinListSearch;
    // ������ ��Ʈ���� �ʱ�ȭ �Ѵ�.
    procedure ControlClear(bTF: boolean = False);
    // ���� ���� ������ �����ش�.
    procedure Proc_BubinChoice;

    // ������ ���,,  ������ ������ ��ȸ �Ѵ�.
    procedure proc_ViaInfo;

    procedure SetCboBranch(bBrNoSetType: boolean = False);

    procedure LoadCustLevel;
    procedure SetCustLevelData(AGroup: TCustGroup);
    procedure DefaultCustLevel;
    function GetCustLevelSeq: string;
    procedure SetCustLevelSeq(ASeq: string);

		procedure SetCustAppInfo(AAppCode, AAppLastRegDate, AAppLastDelDate, AAppLastFinishDate, AAppCuArea, AAppTermModel, AAppTermOS, AAppDelYn: string);
 		procedure ViaOK;
    // �� ���� ���� ���� : ���� �� ��Ʈ�� Į�� ���� �Ѵ�.
    procedure SetCustControlColor(bType: boolean = False);
    procedure SetAreaAutoSET;
  public
    { Public declarations }

    Jon03Tag : Integer;

    fCruKm : Real;   // �Ÿ�
    fChgKm : Real;   // ����Ÿ�
    fDirKm : Real;   // �����Ÿ�
    fViaKm : Real;   // �����Ÿ�

    pJON01Dock : TUNDOCKMNG;

    gsRanDom, gslsText : AnsiString;
    gilsCnt : Integer;
    gbEnter : Boolean;

		gsCuTelHint : string;    // �˻��� ��ȭ��ȣ ����(�˻��� �ٸ��� ��)

 		FResize : Boolean;
		locNowControlName: string; // ���� Ȱ��ȭ�� ��Ʈ�� ��.

		ViaNowTag : integer;   //���� �Է����� ��������ġ
		ViaADDTag : integer;   //���� �߰��� ��������ġ

    blChkCuSMS, blCompulWor : Boolean;   // ��� ���� ����
    sWkSabun : String;

    // ���� �̿볻���� ��Ƶд�.  �ִ�Record���� 60��. ������ 1���� ���°����� �����.
		locaryOrderList: array[0..201, 0..40] of string;

		cxViaAreaName : array[2..5] of TcxLabel;
		meoViaArea    : array[2..5] of TcxTextEdit;
		BtnViaMinus   : array[2..5] of TcxButton;
    Via_Info, Via_Temp : array[1..5] of TVia_Info;

		FIsCalcPrice: Boolean;  // JON03���� �� ��ȭ��ȣ��  ��ȸ�� �����.
    sTaksong, sStickCall : string; //Ź����, ��ƽ�� ���� �⺻ :n, n 2012.04.24 KHS

    lcsCu_seq: string; // ���� ���õ� ��seq
    locHDNO, locBRNO, locKNum, locSndTime: string;  // ��ȸ �� ����, �����ڵ�, ��ǥ��ȣ �ӽ�����.

    locCustHP_MainNum_Search: string;

    sBHAddr : String;
		bAUTOCMDQUESTION : Boolean; // ������������ ���� �� �ڵ� ���� ó�� �Ұ�� ���� ���� ���� ���� ����  20120801  LYB

    gJONStaChkXY, gJONEndChkXY : TJONStaChkXY;  // ����� ��ǥ ���� ������ ���� ���� ���ڵ� ���� 20120806 LYB

    locsCuTel, locsCuTel2, locsCuTelTxtBoxVal: string;
    locbWkToCust: Boolean;

    J30ShowS, J30ShowE : Boolean;      //����, ����, ���� �� ���� ��ȸâ ����� ���ΰ�

    lcsSta1, lcsSta2, lcsSta3, lcsSta4, lcsStaDocId, lcsStaCellSel, lcsStaSchWord, lcsStaDebug, lcsStaUrl : string; // ��1, ��2, ��3
		lcsEnd1, lcsEnd2, lcsEnd3, lcsEnd4, lcsEndDocId, lcsEndCellSel, lcsEndSchWord, lcsEndDebug, lcsEndUrl : string; // ��1, ��2, ��3
    lg_Save: string;

    StartListN, EndListN : String;    // �� ������ ����Ʈ ���� �� � ����Ʈ �����ߴ��� ��ȣ��(1: ��������Ʈ, 2: ������, 3: ��Ż�˻�)

		locCardPaySeq, locCardTranNo, locCardPayInfo : string; // �����Ϸù�ȣ, �ŷ���ȣ, ī�������������(������ �����ڷ� �����)
    locLogSeq, locDNIS: string;
    locWkSabun, locWkBrNo: string; // ��ȸ��� ���, ��������ڵ� ����.

    OrgRate : Integer;  //������庯�� 2012.04.23 KHS

		sCust_Gubun : string; //������ ������� ���� 1:���, 2:��, 0 : ���+�� 2013.05.22 KHS
    FHasTodayData: Boolean; // ���� ���� ���� ����
    wk_sabun : String;  // ��� ���

		Pay_Gubun : string;    // ��������(����, ī���)

    sRet, eRet : Integer;          //�������� ����� ������ ����Ȯ�κ��� 2012.04.18 KHS

		Only_Exit : Boolean; //â ���� ����

		FType : integer; //���� ����� ���� �� ������ ����� ���� 20140625 KHS

		//�۰� ���� 2013.03.30 KHS
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
		// ����ȭ���� �⺻ ��Ʈ���� �ʱ�ȭ �Ѵ�.
    procedure FControlInitial(bTF: Boolean = False; bBrNoSetType: boolean = False);
    procedure AddSpop(ASpop: string; Atag: Integer);
    procedure AddEpop(AEpop: string; Atag: Integer);

    // ���縮��Ʈ���� ��ǥ��ȣ, �����ڵ�� index�� ã�´�.
    function Proc_BrNoListIdxFind(sBrNo, sKeyNumber: string): Boolean;

    // ����ȭ��ȣ ��ŷó��..
    function Func_Cust_Tel(sCall, sBrch, sBrch2: string; ATodayOrder: Boolean): string; overload;
    function Func_Cust_Tel(sCall, sBrch, sBrch2, sDatetime: string): string; overload;

    // �� ��ȭ��ȣ�� �� �⺻���� ��ȸ
    procedure Proc_KeyNumberSearch(ss_KeyNumber: string; bCid: Boolean = False);
    // ��ȭ��ȣ, ���� ���� ��ȸ �Ѵ�... sGB : NAME(�������� ��ȸ), : TELL(��ȭ��ȣ�� ��ȸ)
    procedure CustomerSearch(sGB: string);
    // ����ȸ �׸��忡�� �׸��� ���ýÿ� ������ ������ �Է� ��Ʈ�ѿ� Display~
    procedure Proc_GridCustChoice(iRcIdx: Integer);
    // �� ��޺� �� Į�� ������ �ش�.
    procedure Proc_SetFormColor;
		// CU_LEVEL_TYPE : 1 : �� ��޺� �� Į�� ������ �ش�.
		procedure Proc_SetFormColor_1(iType: integer);
    // CU_LEVEL_TYPE : 0 : �� �ڵ���޺� �� Į�� ������ �ش�.
    procedure Proc_SetFormColor_2(iType: integer);
    // �� ���п� ���� �� Į�� ������ �ش�.
    procedure Proc_SetFormColor_3(iType: integer);
    // ���õ� ������������ �����ڵ�ȣ�� ���� �Ѵ�.
    function Proc_BRNOSearch: string;
    // ���õ� ������������ �����ڵ带 ���� �Ѵ�.
    function Proc_HDNOSearch: string;
    // ���õ� ������������ ��ǥ��ȣ�� ���� �Ѵ�.
    function Proc_MainKeyNumberSearch: string;
    // �����ÿ� �Ǵ� �����ÿ� ��ư��ġ ����.
    procedure SetCmdOrderUpdate;
    // ���� �Ϸù�ȣ�� �޾� ���� ����â�� ���� �ش�.
    procedure Proc_OrderUpdate_Select(sConfSlip, sTodayGb, sInsGubun: string);
    // ���� �Ϸù�ȣ�� �޾� ���� ����â�� ���� �ش�.  sTodayGb:1(���Ͽ���), 2:(���ſ���); sInsGubun:"����", "�߰�����"
    procedure Proc_OrderUpdate_Select_New(sConfSlip, sTodayGb, sInsGubun: string);

    // ���� ��û�� ����� ���� ȭ�� Enabled: True/False ó���� ���ش�.
    procedure Proc_JobAfterProc(bFormLock: boolean; bOrderInsGB: boolean = False);
    // ����ȭ��ȣ ��ȸ �� ��� ó���� �Ѵ�.
    procedure Proc_KeyNumberInsert(rxxml: String);
    // �� �̿볻���� �׸��忡 �����ش�.
    procedure Proc_CustOrderListView;
    // �� ��系���� ǥ���Ѵ�.
    procedure Proc_WorkListView(rxxml: String);
    // ������ ���� �Ÿ� ���
		procedure proc_dis_alculation(iLow: Integer; bDisp : Boolean);
    // ������ ���� �ǰŸ� ���
    procedure proc_Realdis_Mng;
    // ������ ���� �ǰŸ� ���� ���� �Ÿ� ���̽� ���� �Ÿ� ǥ��
    Function func_Compare_dis_Sel(DKm, SKm : Double; Var Distance : Double) : Boolean;

		procedure proc_dis_alculation_Via(bSearchFlag: boolean = False);
		function proc_dis_Real_Via( AFromLon, AFromLat, AToLon, AToLat : Integer ) : Real;
    // ��ݼ����� ���� ��� ���
    function func_search_charge: Integer;
    // ��ݼ����� ���� ��� ��� --> [������ �÷����� ���࿡ ���� ����� �����Ѵ�.] : �����ǥ ��ȸ.
    function func_search_charge_high: Integer;

    // CID ���� ��������� �������� �ڵ� ��ȸ ��Ų��...
    procedure Proc_CIDEventAutoSearch(sCID, sKeyNumber, sDNIS, sSndTime, sBrNo : string);

    // ����â�� �ݴ´�.
    procedure Proc_JoinFromClose;
		// ipwIPPort1 ������ �����Ѵ�. �˸�ȭ���� �������ش�.[bOrderInsGB: True:Ascending False:Descending]
    procedure LocNewSocketSend(lsSendText: string; bOrderInsGB: boolean = False);

    // �����, ������ ��Ʈ�ѿ��� KeyDown �̺�Ʈ�ÿ� ȣ���.
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

  // ����ġ ��ȸ�� ����..-----------------------
  map_sl_equal, map_sl_street, map_sl_detail, map_sl_Local, map_sl_local_List, map_sl_city: TStringList;
  map_sl_city2, map_sl_city3, map_sl_city4: TStringList;
  map_sl_Rlt1, map_sl_Rlt2, map_sl_Rlt3, map_sl_Rlt4, map_sl_Rlt5, map_sl_Rlt6: TStringList;
  map_ls_Text, map_ls_Text_Front, map_ls_Area3, map_ls_Area31, map_ls_Area4, map_ls_Area41, map_ls_detail, gs_map_old_value, gs_map_old_value_2, gs_map_old_value_3: AnsiString;
  map_sTmp, map_sTmp1, map_sTmp2, map_sTmp3, map_sTmp4, map_sTmp5, map_sTmp6, map_sOldCity: AnsiString;
  iRoSearchType: Integer; // �κ� �˻� Ÿ�� ����.
  locRobortCnt: Integer; // ���� �κ� ���� ����.
  locRobortBaseCnt: Integer; // �κ� ���� ����.
  loc_bFulDetailNm: boolean; // Ǯ��Ī ��ȸ ����[True, False]
  gsAreaKeywLen, gsAreaKeywLen2 : string;   // �������� ��ȸ Ű���� ���ڿ��� ����. 11.05.18
  giAreaKeyFullMatch_CNT, giKeyWordSerchValue : Integer;  // �������� Ǯ��Ī �� �α�,�α� �Է½� ���� ���ؼ�.
  gbAreaKeyFullMatch_DET, gbAreaKeyFullMatch_STT, gbAreaKeyFullMatch_ANY : Boolean;  // �������� ã�� ���� ����.

  function str2integer(str:AnsiString):integer;
  function str2string(str:string):string;
  function rpos1(substr1: string; str1: string): Integer;  // pos �����켱��ȸ

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

// ������ ���� �ǰŸ� ���
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
          RouteMan.AddNode(ViaLon, ViaLat);  //// �������� �ʿ��ϸ� �߰��ϼ���.
        end;
      end;

      if ( RealKmPtr[iTag, iIndex].EndXVal <> '' ) And ( RealKmPtr[iTag, iIndex].EndYVal <> '' ) then
      begin
        Frm_JON52.WGS84ToBessel(RealKmPtr[iTag, iIndex].EndYVal, RealKmPtr[iTag, iIndex].EndXVal, EndLon, EndLat);
        RouteMan.SetDstLonLat(EndLon, EndLat);
      end;

      ////// ����� Ž���� ���ؼ��� �Ʒ��� �ɼ��� �߰��� �ּ���. //////
      RouteMan.SetOrgDirectionToBoth();
      RouteMan.SetViaDirectionToBoth();
      RouteMan.SetDstDirectionToBoth();

      ////// Toll��
      RouteMan.SetTollFareType(1);

      ////// Ž�� �ɼ� 1.����      2.�ִ�
      ///              1.�Ϲݵ���  2.��ӵ���
      ///              1.����      2.����
      if Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].fDirKm < 70 then
        RouteMan.Remote_SetRPCType(2, 1, 1)  // �ִ�, �Ϲݵ���, ����
      else
        RouteMan.Remote_SetRPCType(2, 2, 2);  // �ִ�, ��ӵ���, ����

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

            if ( Pos('�˻�', Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].curKm.Text) > 0 ) And
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
          if ( Pos('�˻�', Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].curKm.Text) > 0 ) And
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

          // �����Ÿ��� ���Ž���Ÿ� ���Ͽ� 1.5�� �̻� ������ 3������ �� �˻��ϵ� �׷��� ������ �׳� �� ��ǥ ���
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

            Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].Lbl_Distance.Caption := Format('��Ž)%s ����)%s', [Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].curKm.Text, FloatToStr(Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].fChgKm) + 'Km']);
            Log('2. Lbl_Distance.Caption: ' + Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].Lbl_Distance.Caption, LOGDATAPATHFILE);
          end;
        end else
        begin
          Log('���� Lbl_Distance.Caption: ' + Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].Lbl_Distance.Caption, LOGDATAPATHFILE);
        end;

        if Trim(Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].pnl_Charge.Caption) <> '' then
          Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].pnl_Charge.Visible := True;
      end;
    finally
      if GT_USERIF.ID = 'sntest' then Log('2. SmartSR End Bessel : ' + IntToStr(EndLon) + ',' + IntToStr(EndLat) , LOGDATAPATHFILE);
      Log('2. SmartSR End : ' + IntToStr(iIndex) + '-' + RealKmPtr[iTag, iIndex].EndAreaName + ',' + RealKmPtr[iTag, iIndex].EndXVal + ',' + RealKmPtr[iTag, iIndex].EndYVal + ' - �Ÿ� : ' + FloatToStr(aDistance), LOGDATAPATHFILE);
      RealKmPtr[iTag, iIndex].CaActive := False;
      EndThread(0);
    end;
  Except
    if ( Pos('�˻�', Frm_Main.Frm_JON01[RealKmPtr[iTag, iIndex].Tag].curKm.Text) > 0 ) And
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

// ���ڿ����� ���ڸ� ����(�Ҽ�������)
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

// ���ڿ����� ���������� ���� ����(�Ҽ�������)
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

    // ���籸�� �޺� �ڽ����� ���� ����üũ ���������� �����. 2011-11-08
    // ������ ����(�����Ǹ� �����)
    if GS_PRJ_AREA = 'S' then
    begin
      sTmp := Proc_BRNOSearch;
      // �÷����� ��� [����âüũ�ɼ�,����,����,����] ��ȸ
      sTmp := GetPlusCallYN(sTmp);
      //if proc_PlusCall_CtrlYN = 'nyyy' then
      if copy(sTmp,1,4) = 'nyyy' then
      begin //������ ��뿩��,,  'nyyy' : �̼���. ���
        if BtnPlusYN.Tag < 10 then
          BtnPlusYN.Down := False;
      end;
    end;

    cbbPayMethod.Tag := 0;  // ������ üũ �ڽ����� ������ �����Ҽ� �ִ� ��� �ʱ�ȭ. 2011-11-11.

    if cbbPayMethod.Text = '�ĺ�(ī��)' then
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

    // �ĺ��� ��� �ڵ��Ա� �ݾ׼���
    if IsPayMethodPost then
    begin
      PostTime := POST_TIME_TOMORROW;

      // ���ϸ����� �ѵ������� ����
      if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
      begin
        Price := curRate.Value;
        UserMile := StrToIntDef(lblCuMile.Caption, 0);

        iCoupon := StrToIntDef(RemoveComma(edtPostPay.Hint), 0);  // 20130603  LYB  ������

        if iCoupon = 0 then
          edtPostPay.Value := IfThen(Price > UserMile, UserMile, Price)
        else
          edtPostPay.Value := IfThen(Price > (UserMile + iCoupon), UserMile+iCoupon, Price)
      end else
      begin
        if Not pJON01Dock.bUnDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

        if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ2K 20140221 KHS
          edtPostPay.Value := 2000
        else
        if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ3K 20141007 KHS
          edtPostPay.Value := 3000
        else
          edtPostPay.Value := curRate.Value;
      end;

      sHDNO := Proc_HDNOSearch; // �����ڵ� ������ �д´�.
      sBRNO := Proc_BRNOSearch; // �����ڵ� ������ �д´�.

      // ������
      if GS_PRJ_AREA = 'S' then
      begin
        // KCP ī�� ���� üũ. 2011-10-19.
        if cbbPayMethod.Text = PAY_METHOD_CARD_KCP then
        begin
          cbCardSanction.Caption := 'ī�����';
          cbCardSanction.Enabled := True;
        end else
        if cbbPayMethod.Text = PAY_METHOD_POST_MILE then     // 20130603  LYB  ��������
        begin
          // ���� ������ �ڸ��Ƶ���̺�-A1531, ����/���/��õ-G891, õ��/�ȼ�/����/�ƻ�-Q452/�ݸ���/�ݸ��ʿ��� �� ��� ����
          if (sHDNO = 'A1531') or (sBRNO = 'G891') or (sBRNO = 'Q452') or (sHDNO = 'A100') or (sHDNO = 'A283')  then
          begin
            cbCardSanction.Caption := '��������';
            cbCardSanction.Enabled := True;
          end else
          begin
            cbCardSanction.Enabled := False;
            cbCardSanction.Caption := 'ī�����';
          end;
        end	else
        begin
          cbCardSanction.Enabled := False;
          cbCardSanction.Caption := 'ī�����';
        end;
      end else
      begin
        // KCP ī�� ���� üũ. 2011-10-19.
        if cbbPayMethod.Text = PAY_METHOD_CARD_KCP then
        begin
          cbCardSanction.Caption := 'ī�����';
          cbCardSanction.Enabled := True;
        end else
        if cbbPayMethod.Text = PAY_METHOD_POST_MILE then     // 20130603  LYB  ��������
        begin
          // ���� ������ �ڸ��Ƶ���̺�(����-L290, ����-M135, ����-O914, ����,�뱸-P263/�ݸ���/�ݸ��ʿ��� �� ��� ����
          if (sBRNO = 'L290') or (sBRNO = 'M135') or (sBRNO = 'O914') or (sBRNO = 'P263') or
             (sHDNO = 'A100') or (sHDNO = 'A283')  then
          begin
            cbCardSanction.Caption := '��������';
            cbCardSanction.Enabled := True;
          end else
          begin
            cbCardSanction.Enabled := False;
            cbCardSanction.Caption := 'ī�����';
          end;
        end	else
        begin
          cbCardSanction.Enabled := False;
          cbCardSanction.Caption := 'ī�����';
        end;
      end;

      // ������ ����(�����Ǹ� �����)
      if GS_PRJ_AREA = 'S' then
      begin
        if sTmp = 'nyyy' then
        begin //������ ��뿩��,,  'nyyy' : �̼���. ���

          // "�ĺ�" ���ý� "������" �ڵ����� ó��. 2011-11-07(������û)
          if btnPlusYN.Tag < 10 then
          begin
            if cbbPayMethod.Text = PAY_METHOD_POST_NML then
            begin
              if btnPlusYN.Hint <> 'NOCHANGE' then // ������ �ٸ� �Լ����� ���� �� �ϵ��� ��.[�������� ��忡�� ������]
              begin
                if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;
                if pJON01Dock.HDNO <> 'A2279' then  // 20130801  LYB �帲������ ������ �ڵ� üũ ����  ��ȸ�� ���� ��û
                begin
                  cbbPayMethod.Tag := 20;    // �ĺ� ���ý�  "������" üũ �ڽ� �����ϴ��� ������ �ڵ����� ����. 2011-11-11.
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
          cbCardSanction.Caption := '���ݿ���';
          cbCardSanction.Enabled := True;
        end else
        begin
          cbCardSanction.Enabled := False;
          cbCardSanction.Caption := 'ī�����';
        end;
      end;
      AddSpop('',97);
    end;

    edtPostPay.Enabled := IsPayMethodPost;

    //setposttime���� �̵�
    if Pos('�ĺ�',cbbPayMethod.Text)>=1 then
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
      // ������ ������� ����ڵ��Աݾ� ���� ���.
      edtPostPay.Value := IfThen(cbbPostTime.Text = POST_TIME_NOPAY, 0, curRate.Value);
    end else
    begin
      // ������� �϶��� ����ڵ��Աݾ��� �������� �ʵ��� ��û�Ͽ� ������(�Ű����û). 2011.07.19
      if (Pos('����', Self.Caption) = 0 ) then
      begin
        if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

        if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ2K 20140221 KHS
          edtPostPay.Value := IfThen(cbbPostTime.Text = POST_TIME_NOPAY, 0, 2000)
        else
        if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ3K 20141007 KHS
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
    if (Pos('����', Self.Caption) = 0 ) and (cxtCuTel.Text = '') then
    begin
      GMessagebox('����ȸ �� �̿��Ͽ� �ֽʽÿ�.', CDMSI);
      Exit;
    end;

    if ( (curRate.Value >= 2000) And (cbbPayMethod.Text <> PAY_METHOD_POST_MILE) ) or   // ī��/������ �ּ� 2000�� �̻�
       ( (curRate.Value >= 0   ) And (cbbPayMethod.Text  = PAY_METHOD_POST_MILE) ) then // ������ ������ �Ҽ� �����Ƿ� 0���� ����   20130730  LYB
    begin
      Try
        if Not Assigned(Frm_JON34) Or (Frm_JON34 = Nil) then Frm_JON34 := TFrm_JON34.Create(Nil);

        if (cbbPayMethod.Text = PAY_METHOD_MONEY) then
        begin
          Frm_JON34.pnlTitle.Caption := '   ���ݿ�����(��������) �߱�';
          // ī����� â ����.  2011-10-13.
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

          Frm_JON34.cxCurDecRate_Cash.Value := curRate.Value;    // ���(���ݿ�����)

          //�������///////////////////
          Frm_JON34.lcBRNO    := Proc_BRNOSearch;           // �����ڵ� ������ �д´�.
          Frm_JON34.lcMainNum := Proc_MainKeyNumberSearch;  // ��ǥ��ȣ ������ �д´�.
          Frm_JON34.lcCustTel := cxtCuTel.Text;             // ����ȭ��ȣ.
          Frm_JON34.medtCashCardNum.Text := Frm_JON34.lcCustTel;
          Frm_JON34.lcCustSeq := lcsCu_seq;                 // �� ������.
          //�������///////////////////

          Frm_JON34.lcJON_IDX := Self.Tag;   // ����â�� index �� ����.

          // �� ���� ������ ������, �ش� ���� �־��ش�.
          if Length(locCardPayInfo) > 10 then
          begin
            try
              Frm_JON34.lcCustTel := '';             // ����ȭ��ȣ.

              lsTemp := TStringList.Create;
              lsTemp.Delimiter := '|';
              lsTemp.DelimitedText := locCardPayInfo;

              Frm_JON34.cxCurDecRate_Cash.Text  := lsTemp[0];
              Frm_JON34.lblCardStatus_Cash.Caption := lsTemp[1];  // ����
              if lsTemp.Count = 3 then
              begin
                Frm_JON34.medtCashCardNum.Text := lsTemp[2];
              end;

              // ������ȣ�� ������츸 �������� ����ȸ �Ѵ�.  2011-10-27
              if (length(cxtJoinNum.Text) > 1) or (locCardPaySeq <> '') then
                Frm_JON34.ProCardInfoSelect(cxtJoinNum.Text + '��' + locCardPaySeq);   // ī����� ������ ��ȸ �Ѵ�.

              if Frm_JON34.lblCardStatus_Cash.Caption = '�����Ϸ�' then
              begin
                // ī����� ���� ��� �� �غ�.
                Frm_JON34.sb_ApproveReq.Enabled    := False;
                Frm_JON34.sb_ApproveOK.Enabled     := False;
                Frm_JON34.sb_ApproveCancle.Enabled := True;
                Frm_JON34.sb_ApproveReceipt.Enabled := False;
                Frm_JON34.medtCashCardNum.Enabled      := False;
                Frm_JON34.cxCurDecRate_Cash.Enabled      := False;
              end	else
              if Frm_JON34.lblCardStatus_Cash.Caption = '������û�Ϸ�' then
              begin
                // ī����� ���� ��� �� �غ�.
                Frm_JON34.sb_ApproveReq.Enabled    := False;
                Frm_JON34.sb_ApproveOK.Enabled     := False;
                Frm_JON34.sb_ApproveCancle.Enabled := False;
                Frm_JON34.sb_ApproveReceipt.Enabled := False;
                Frm_JON34.medtCashCardNum.Enabled      := False;
                Frm_JON34.cxCurDecRate_Cash.Enabled    := False;
              end	else
              begin
                // ī����� ���� �� �غ�.
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

              Frm_JON34.lcPaySeq := locCardPaySeq;   // �����Ϸù�ȣ
              Frm_JON34.lcTranNo := locCardTranNo;   // �ŷ���ȣ

              Frm_JON34.lblPaySeq_Cash.Caption := locCardPaySeq;
              Frm_JON34.lblTranNo_Cash.Caption := locCardTranNo;
            finally
              FreeAndNil(lsTemp);
            end;
          end else
          if Length(locCardPaySeq) > 1 then
          begin
            Frm_JON34.lcCustTel := '';             // ����ȭ��ȣ.
            Frm_JON34.lcPaySeq               := locCardPaySeq;   // �����Ϸù�ȣ  �� ������ ������� ���� ��.
            Frm_JON34.lblPaySeq_Cash.Caption := locCardPaySeq;

            Frm_JON34.ProCardInfoSelect(cxtJoinNum.Text);   // ī����� ������ ��ȸ �Ѵ�.

            if Frm_JON34.lblCardStatus_Cash.Caption =  '�����Ϸ�' then
            begin
              // ī����� ���� ��� �� �غ�.
              Frm_JON34.sb_ApproveReq.Enabled    := False;
              Frm_JON34.sb_ApproveOK.Enabled     := False;
              Frm_JON34.sb_ApproveCancle.Enabled := True;
              Frm_JON34.sb_ApproveReceipt.Enabled := False;
              Frm_JON34.medtCashCardNum.Enabled      := False;
              Frm_JON34.cxCurDecRate_cash.Enabled    := False;
            end else
            if Frm_JON34.lblCardStatus_Cash.Caption = '������û�Ϸ�' then
            begin
              // ī����� ���� ��� �� �غ�.
              Frm_JON34.sb_ApproveReq.Enabled    := False;
              Frm_JON34.sb_ApproveOK.Enabled     := False;
              Frm_JON34.sb_ApproveCancle.Enabled := False;
              Frm_JON34.sb_ApproveReceipt.Enabled := False;
              Frm_JON34.medtCashCardNum.Enabled      := False;
              Frm_JON34.cxCurDecRate_cash.Enabled    := False;
            end else
            begin
              // ī����� ���� �� �غ�.
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
            // ī����� ���� �� �غ�.
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
          Frm_JON34.pnlTitle.Caption := '   ����� ���� ����';
          Frm_JON34.lcAppModify := 'N';

          // ī����� â ����.  2011-10-13.
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

          Frm_JON34.cxCurDecRate_Coupon.Value := curRate.Value;    // ���

          //�������///////////////////
          Frm_JON34.lcBRNO    := Proc_BRNOSearch;           // �����ڵ� ������ �д´�.
          Frm_JON34.lcMainNum := Proc_MainKeyNumberSearch;  // ��ǥ��ȣ ������ �д´�.
          Frm_JON34.lcCustTel := cxtCuTel.Text;             // ����ȭ��ȣ.
          Frm_JON34.lcCustSeq := lcsCu_seq;                 // �� ������.
          //�������///////////////////

          Frm_JON34.lcJON_IDX := Self.Tag;   // ����â�� index �� ����.

          // �� ���� ������ ������, �ش� ���� �־��ش�.
          if Length(locCardPayInfo) > 10 then
          begin
            try
              Frm_JON34.lcCustTel := '';             // ����ȭ��ȣ.

              lsTemp := TStringList.Create;
              lsTemp.Delimiter := '|';
              lsTemp.DelimitedText := locCardPayInfo;

              Frm_JON34.cxCurDec_Coupon1.Text     := lsTemp[1];
              Frm_JON34.lblCouponStatus.Caption   := lsTemp[2];
              Frm_JON34.medtCouponNum.Text        := lsTemp[3];
              Frm_JON34.Lbl_ChangeMile.Caption := '0';

              // ������ȣ�� ������츸 �������� ����ȸ �Ѵ�.  2011-10-27
              if (length(cxtJoinNum.Text) > 1) or (locCardPaySeq <> '') then
                Frm_JON34.ProCardInfoSelect(locCardPaySeq);   // ����� ���� ���� ������ ��ȸ �Ѵ�.

              if Frm_JON34.lblCouponStatus.Caption = '�����Ϸ�' then
              begin
                // �������� ���� �� �غ�.
                Frm_JON34.sb_ApproveRed.Enabled     := False;
                Frm_JON34.sb_ApproveReq.Enabled     := True;
                Frm_JON34.sb_ApproveOK.Enabled      := False;
                Frm_JON34.sb_ApproveCancle.Enabled  := False;
                Frm_JON34.sb_ApproveReceipt.Enabled := False;

                Frm_JON34.medtCouponNum.Enabled        := False;
              end else
              if Frm_JON34.lblCouponStatus.Caption = '���οϷ�' then
              begin
                // ī����� ���� ��� �� �غ�.
                Frm_JON34.sb_ApproveRed.Enabled     := False;
                Frm_JON34.sb_ApproveReq.Enabled     := False;
                Frm_JON34.sb_ApproveOK.Enabled      := True;
                Frm_JON34.sb_ApproveCancle.Enabled  := True;
                Frm_JON34.sb_ApproveReceipt.Enabled := False;

                Frm_JON34.medtCouponNum.Enabled     := False;
              end else
              begin
                // ī����� ���� �� �غ�.
                Frm_JON34.sb_ApproveRed.Enabled    := True;
                Frm_JON34.sb_ApproveReq.Enabled    := False;
                Frm_JON34.cxButton1.Enabled        := False;
                Frm_JON34.sb_ApproveOK.Enabled     := False;
                Frm_JON34.sb_ApproveCancle.Enabled := False;
                Frm_JON34.sb_ApproveReceipt.Enabled := False;

                Frm_JON34.medtCouponNum.Enabled      := True;
              end;

              Frm_JON34.lcPaySeq := locCardPaySeq;   // �����Ϸù�ȣ
              Frm_JON34.lblPaySeq_Coupon.Caption := locCardPaySeq;
            finally
              FreeAndNil(lsTemp);
            end;
          end else
          if Length(locCardPaySeq) > 1 then
          begin
            Frm_JON34.lcCustTel := '';             // ����ȭ��ȣ.
            Frm_JON34.lcPaySeq                 := locCardPaySeq;   // �����Ϸù�ȣ  �� ������ ������� ���� ��.
            Frm_JON34.lblPaySeq_Coupon.Caption := locCardPaySeq;

            Frm_JON34.ProCardInfoSelect(locCardPaySeq);   // �������� ������ ��ȸ �Ѵ�.

            if Frm_JON34.lblCouponStatus.Caption =  '�����Ϸ�' then
            begin
              // �������� ���� �� �غ�.
              Frm_JON34.sb_ApproveRed.Enabled    := False;
              Frm_JON34.sb_ApproveReq.Enabled    := True;
              Frm_JON34.sb_ApproveOK.Enabled     := False;
              Frm_JON34.sb_ApproveCancle.Enabled := False;
              Frm_JON34.sb_ApproveReceipt.Enabled := False;

              Frm_JON34.medtCouponNum.Enabled      := False;
            end else
            if Frm_JON34.lblCouponStatus.Caption = '���οϷ�' then
            begin
              // �������� ���� ��� �� �غ�.
              Frm_JON34.sb_ApproveRed.Enabled     := False;
              Frm_JON34.sb_ApproveReq.Enabled     := False;
              Frm_JON34.sb_ApproveOK.Enabled      := True;
              Frm_JON34.sb_ApproveCancle.Enabled  := True;
              Frm_JON34.sb_ApproveReceipt.Enabled := False;

              Frm_JON34.medtCouponNum.Enabled     := False;
            end else
            begin
              // �������� ���� �� �غ�.
              Frm_JON34.sb_ApproveRed.Enabled     := True;
              Frm_JON34.sb_ApproveReq.Enabled     := False;
              Frm_JON34.sb_ApproveOK.Enabled      := False;
              Frm_JON34.sb_ApproveCancle.Enabled  := False;
              Frm_JON34.sb_ApproveReceipt.Enabled := False;

              Frm_JON34.medtCouponNum.Enabled     := True;
            end;
          end else
          begin
            // ī����� ���� �� �غ�.
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
        end else         //ī��
        begin
          Frm_JON34.pnlTitle.Caption := '   ī�����';
          if Pay_Gubun  = '0' then
          begin

          end;
          // ī����� â ����.  2011-10-13.
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
          Frm_JON34.cxCurDRate.Value      := curRate.Value;    // ���.

          //�������///////////////////
          Frm_JON34.lcBRNO    := Proc_BRNOSearch;           // �����ڵ� ������ �д´�.
          Frm_JON34.lcMainNum := Proc_MainKeyNumberSearch;  // ��ǥ��ȣ ������ �д´�.
          Frm_JON34.lcCustTel := cxtCuTel.Text;             // ����ȭ��ȣ.
          Frm_JON34.lcCustSeq := lcsCu_seq;                 // �� ������.
          //�������///////////////////

          if Frm_JON34.chkConfigVATset.Checked then
            // �������.  ������ �ΰ��� ����.
            Frm_JON34.cxCurDecRate.Value := curRate.Value + (curRate.Value * (Frm_JON34.cxCurVATvalue.Value / 100))
          else
            Frm_JON34.cxCurDecRate.Value := curRate.Value;

          Frm_JON34.lcJON_IDX := Self.Tag;   // ����â�� index �� ����.

          // �� ���� ������ ������, �ش� ���� �־��ش�.
          if Length(locCardPayInfo) > 10 then
          begin
            try
              lsTemp := TStringList.Create;
              lsTemp.Delimiter := '|';
              lsTemp.DelimitedText := locCardPayInfo;

              Frm_JON34.cxCurDRate.Text       := lsTemp[0];
              Frm_JON34.cxCurDecRate.Text     := lsTemp[1];
              Frm_JON34.cxCurTerm.Text        := lsTemp[2];
              Frm_JON34.lblCardStatus.Caption := lsTemp[3];  // ����
              if lsTemp.Count = 6 then
              begin
                Frm_JON34.medCardNum.Text       := lsTemp[4];
                Frm_JON34.medLimiteDate.text    := lsTemp[5];
              end;

              // ������ȣ�� ������츸 �������� ����ȸ �Ѵ�.  2011-10-27
              if (length(cxtJoinNum.Text) > 1) or (locCardPaySeq <> '') then
                Frm_JON34.ProCardInfoSelect(cxtJoinNum.Text + '��' + locCardPaySeq);   // ī����� ������ ��ȸ �Ѵ�.

              if Frm_JON34.lblCardStatus.Caption = '�����Ϸ�' then
              begin
                // ī����� ���� ��� �� �غ�.
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
              if Frm_JON34.lblCardStatus.Caption = '������û�Ϸ�' then
              begin
                // ī����� ���� ��� �� �غ�.
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
                // ī����� ���� �� �غ�.
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

              Frm_JON34.lcPaySeq := locCardPaySeq;   // �����Ϸù�ȣ
              Frm_JON34.lcTranNo := locCardTranNo;   // �ŷ���ȣ

              Frm_JON34.lblPaySeq.Caption := locCardPaySeq;
              Frm_JON34.lblTranNo.Caption := locCardTranNo;
            finally
              FreeAndNil(lsTemp);
            end;
          end	else
          if Length(locCardPaySeq) > 1 then
          begin
            Frm_JON34.lcPaySeq          := locCardPaySeq;   // �����Ϸù�ȣ  �� ������ ������� ���� ��.
            Frm_JON34.lblPaySeq.Caption := locCardPaySeq;

            Frm_JON34.ProCardInfoSelect(cxtJoinNum.Text);   // ī����� ������ ��ȸ �Ѵ�.

            if Frm_JON34.lblCardStatus.Caption = '�����Ϸ�' then
            begin
              // ī����� ���� ��� �� �غ�.
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
            if Frm_JON34.lblCardStatus.Caption = '������û�Ϸ�' then
            begin
              // ī����� ���� ��� �� �غ�.
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
              // ī����� ���� �� �غ�.
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
            // ī����� ���� �� �غ�.
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
        GMessagebox('���ݿ����� �ݾ��� 2000�� �̻� �Դϴ�.', CDMSI)
      else
        GMessagebox('ī����� �ּ� �ݾ��� 2000�� �̻� �Դϴ�.', CDMSI);
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
  if (Pos('�ű�', Self.Caption) < 1) and (cboBranch.Properties.ReadOnly = True) then
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
  // �ű� ȭ���� ������� ���缱�� ��� �޽����� �������� �ʴ´�. CDS. 080915.
  if (Pos('�ű�', Self.Caption) < 1) and (cboBranch.Properties.ReadOnly = True) then
  begin
    sTmp := '[����] �� ��ȸ�� ���縦 �����Ͽ� ������ �����ϰ� �Ǹ� ������ ���� ������ �߻��մϴ�.' + CRLF + CRLF + CRLF
          + '1. ���� ��ȸ�� ���� �����߿� �Ϻ������� ���� �˴ϴ�. �Ϻ������� 4�� ����.' + CRLF + CRLF
          + '2. ������ ���翡 �ش� ����ȭ��ȣ�� ������ [���� �ϴ� ���]���� ���� ���� ������ [����]�� �˴ϴ�.' + CRLF + CRLF
          + '3. ������ ���翡 �ش� ����ȭ��ȣ�� ������ [���� ���]���� ���� ���� ������ [�ű� ���] �˴ϴ�.' + CRLF + CRLF
          + '4. ���� ����� ����Ǵ� �Ϻ����� �ȳ�' + CRLF
          + '  4.1 ���ΰ� �ϰ�� : ���θ�, �μ��� ���� ���� �ǰ� [������]�� [����]���� �����' + CRLF
          + '  4.2 ����/�Ϸ� : ���� ���̴� ������ �ʱ�ȭ��, ���� ������ �ý��ۿ� ��������' + CRLF
          + '  4.3 �����    : ���� ���̴� ������ �ʱ�ȭ��, ���� ������ �ý��ۿ� ��������' + CRLF
          + '  4.4 ���ϸ���  : ���� ���̴� ������ �ʱ�ȭ��, ���� ������ �ý��ۿ� ��������' + CRLF
          + '  4.5 ����Ƚ��  : ���� ���̴� ������ �ʱ�ȭ��, ���� ������ �ý��ۿ� ��������';

    if Application.MessageBox(PChar(sTmp), '[����]�� ��ȸ�� ���� ���� �ȳ�',
      MB_ICONQUESTION + MB_OKCANCEL) = IDOK then
    begin
      // ���纯�� ����.[����:����ȸ �� ���纯��� ��ȸ�� ������ �Ϻ����� ���޽��� ���� ������]
      cboBranch.Properties.ReadOnly := False;
      if (Pos('����', Self.Caption) > 0 ) then
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
    // ���纯�� ����.[����:����ȸ �� ���纯��� ��ȸ�� ������ �Ϻ����� ���޽��� ���� ������]
    cboBranch.Properties.ReadOnly := False;
  end;
end;

procedure TFrm_JON01.cboBranchPropertiesChange(Sender: TObject);
begin
  // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ѵ�.
  if cboBranch.Tag < 5 then
  begin
    // ����ȸ �� ���¿��� ���������� �ٲٸ� �������� �ʱ�ȭ �ؾ� �Ѵ�.
    cxCustView.DataController.SetRecordCount(0);

    cxtCuBubin.Text := ''; // ���θ�(��������)

    sNowRate := ''; // ���� ������ �⺻��� ������.

    lcsCu_seq := ''; // ���� ���õ� ��seq
    locHDNO := '';
    locBRNO := '';
    locKNum := ''; // ��ȸ �� ����, �����ڵ�, ��ǥ��ȣ �ӽ�����.
    locDNIS := '';
    locWkSabun := '';
    locWkBrNo := ''; // ��ȸ��� ���, ��������ڵ� ����.
    locSndTime := '';

    // �÷����� ��뿩�� üũ
		proc_PlusCall_CtrlYN;

    // ������ �����϶� �������� ������.
    if CbCuGb.ItemIndex = 2 then
    begin
      CbCuGb.Hint := 'Clear';
      CbCuGb.ItemIndex := 0;
      CbCuGb.Hint := '';
    end;
    lblCuMile.Caption := '0'; // ���� ���ϸ���
    lblCuMileUnit.Caption := '0';
    // �������� ���ϸ��� ���޴���
    lblCuMileCnt.Caption := '0';
    // ���ϸ��� ����Ƚ��
    lblCuCntTotal.Caption := '0';
    lblCoCntTotal.Caption := '0';
    SetMileColorChange;
    // ����/�޷�
    lblCuCancelR.Caption := '0%'; // �����

//-    curOutMileMny.Value := 0; // ���޸���
    sProdName := '';

    if (Pos('�ű�', Self.Caption) < 1) and (cxtCallTelNum.Text <> '') then
      Proc_CuSeq_Select; // �� SEQUENCE �� ��ȸ �� �´�.[���� ��ȸ�� �������� �ٸ������� �������� �״�� ��� ���ֱ� ���ؼ�..]

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
    if TAdvGlowButton(Sender).Caption = 'Ź' then
    begin
      if Pos('Ź��)', wStr) < 1 then
        AddSpop('Ź�۱�縸', 8);
			sTaksong := 'y';
      SetMunuChecked('Ź', True);
    end else
    if TAdvGlowButton(Sender).Caption = '��' then
    begin
      if Pos('����)', wStr) < 1 then
        AddSpop('�����縸', 9);
      SetMunuChecked('��', True);
    end else
    if TAdvGlowButton(Sender).Caption = '��' then
    begin
      if Pos('����)', wStr) < 1 then
        AddSpop('��������', 10);
      SetMunuChecked('��', True);
    end else
    if TAdvGlowButton(Sender).Caption = '��' then
    begin
      if Pos('����)', wStr) < 1 then
        AddSpop('��������', 11);
      SetMunuChecked('��', True);
    end else
    if TAdvGlowButton(Sender).Caption = '��' then
    begin
      if Pos('��ƽ)', wStr) < 1 then
        AddSpop('��ƽ��縸', 12);
			sStickCall := 'y';
      SetMunuChecked('��', True);
    end;
  end else
  begin
    if TAdvGlowButton(Sender).Caption = 'Ź' then
    begin
      i := Pos('Ź��)', wStr);
      if i = 1 then
      begin
        meoStartArea.text := Copy(widestring(wStr), 1 + Length('Ź��)'), Length(widestring(wStr)) - Length(widestring('Ź��)')));
        sTaksong := 'n';
      end else
      if i > 1 then
      begin
        meoStartArea.text := Copy(widestring(wStr), 1, i-1) + Copy(widestring(wStr), i + Length('Ź��)') , Length(widestring(wStr)) - i);
				sTaksong := 'n';
			end else
				sTaksong := 'n';

      SetMunuChecked('Ź', False);
    end else
    if TAdvGlowButton(Sender).Caption = '��' then
    begin
      i := Pos('����)', wStr);
      if i = 1 then
      begin
        meoStartArea.text := Copy(wStr, 1 + Length('����)'), Length(wStr) - Length('����)'));
      end else
      if i > 1 then
      begin
        meoStartArea.text := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('����)') , Length(wStr) - i);
      end;
      SetMunuChecked('��', False);
    end else
    if TAdvGlowButton(Sender).Caption = '��' then
    begin
      i := Pos('����)', wStr);
      if i = 1 then
      begin
        meoStartArea.text := Copy(wStr, 1 + Length('����)'), Length(wStr) - Length('����)'));
      end else
      if i > 1 then
      begin
        meoStartArea.text := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('����)') , Length(wStr) - i);
      end;
      SetMunuChecked('��', False);
    end else
    if TAdvGlowButton(Sender).Caption = '��' then
    begin
      i := Pos('����)', wStr);
      if i = 1 then
      begin
        meoStartArea.text := Copy(wStr, 1 + Length('����)'), Length(wStr) - Length('����)'));
      end else
      if i > 1 then
      begin
        meoStartArea.text := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('����)') , Length(wStr) - i);
      end;
      SetMunuChecked('��', False);
    end else
    if TAdvGlowButton(Sender).Caption = '��' then
    begin
      i := Pos('��ƽ)', wStr);
      if i = 1 then
      begin
        meoStartArea.text := Copy(wStr, 1 + Length('��ƽ)'), Length(wStr) - Length('��ƽ)'));
        sStickCall := 'n';
      end else
      if i > 1 then
      begin
        meoStartArea.text := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('��ƽ)') , Length(wStr) - i);
        sStickCall := 'n';
      end;
      SetMunuChecked('��', False);
		end;
	end;
	meoStartArea.SetFocus;
//  meoStartArea.SelStart := Length(meoStartArea.Text);
end;

procedure TFrm_JON01.cxBtnChoiceClick(Sender: TObject);
begin
  // ���� ���� ������ �����ش�.
  Proc_BubinChoice;
end;

procedure TFrm_JON01.cxBtnCloseClick(Sender: TObject);
begin
  pnlBubin.Visible := False;
end;

procedure TFrm_JON01.cxBtnCuDelClick(Sender: TObject);
begin
  // ���� ���� (��ȣ 2008-08-19)
  if TCK_USER_PER.JON_CustDel <> '1' then
  begin
    GMessagebox('�� ���� ������ �����ϴ�.', CDMSI);
    Exit;
  end;
  proc_delete_customer;
end;

procedure TFrm_JON01.cxBtnCuNewClick(Sender: TObject);
Var iRow : Integer;
begin
  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);
  
  // 7 : ����â���� �űԵ�� 4 : ����â���� �űԵ��
  if (btnCmdUpdSave.Visible) and (btnCmdUpdSave.Enabled) then
  begin
    iRow := Frm_CUT011.cxCustTel.DataController.AppendRecord;
    Frm_CUT011.cxCustTel.DataController.Values[iRow, 0] := strtocall(cxtCuTel.Text);
    Frm_CUT011.cxCustTel.DataController.Values[iRow, 1] := '����';
    Frm_CUT011.cxCustTel.DataController.Values[iRow, 3] := '����';
    Frm_CUT011.Tag := 7;
  end else
  if (not btnCmdUpdSave.Visible) then
    Frm_CUT011.Tag := 5;

  Frm_CUT011.FControlInitial(true); // ��Ʈ�� �ʱ�ȭ..
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
  // ���� ���� (��ȣ 2008-08-19)
  if TCK_USER_PER.COM_CustModify <> '1' then
  begin
    GMessagebox('�� ���������� �����ϴ�.', CDMSI);
    exit;
  end;

  if Pos('*', cxtCuTel.Text) > 0 then
  begin
    GMessageBox('��ȭ��ȣ�� ��ȣ�� ���� ������ �� �����ϴ�.', CDMSI);
    Exit;
  end;

  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);

  // 6 : ����â���� ������ 4 : ����â���� ������
  if (btnCmdUpdSave.Visible) and (btnCmdUpdSave.Enabled) then
    Frm_CUT011.Tag := 6
  else
  if (not btnCmdUpdSave.Visible) then
    Frm_CUT011.Tag := 4;

  Frm_CUT011.FControlInitial(true); // ��Ʈ�� �ʱ�ȭ..
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
  // ���� ������ ��ȸ�Ѵ�.
  Proc_BubinListSearch;
end;

procedure TFrm_JON01.cxBtnSpSaveClick(Sender: TObject);
begin
	if (lcsCu_seq <> '') then
  begin
 		// �� �⺻������ ���� �Ѵ�.
  	Proc_CustBasicSave
  end else
	begin
		ShowMessage('�ű� �̵�� ���� �⺻������ ���� �� �� �����ϴ�. ������� ���� �ϼ���!');
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
  	if (Pos('����', Self.Caption) = 0 ) and (Pos('��ȸ', Self.Caption) = 0) and (locCardPaySeq <> '') and (not Only_Exit) then
  	begin
  		GMessagebox('ī����� �� ���ݿ����� ���� �� �������縦 �� �Ŀ� ����â ���Ḧ �ϰԵǸ� ' + #13#10
  							+ '�ŷ������� ������� �˴ϴ�. ' + #13#10
  							+ '�ּ��� "���ǵ��" �� �ϼż� �ŷ������� �����ϼ���.' , CDMSI);
  		Exit;
  	end;
    // ���� �� �ڵ� ���� ���� �ɼ� ó��  20120801  LYB
  	if (Pos('����', Self.Caption) = 0 ) And GS_JON_AUTOCMDQUESTION and bAUTOCMDQUESTION then
    begin
      if (cxtCuTel.Text = '') and ((cxtCallTelNum.Text = '�߽���������') or (cxtCallTelNum.Text = '')) then
      begin
        bAUTOCMDQUESTION := False;
  		end else
  		begin
  			bAUTOCMDQUESTION := False;
  			btnCmdQuestionClick(Sender);
  			Exit;
  		end;
    end;

    // DNIS ��ǥ��ȣ ã�� ����â�� �����.  2011.05.17
    shrDNIS_DSP.Visible := False;

  	if (Pos('����', Self.Caption) > 0 ) then
  	begin
      if btnCmdExit.Hint = 'UPDATE_MODE' then
  		begin // �������� ������� ������ �Ѵ�.
  			if Length(cxTxtBrNameCaption.Hint) > 18 then
        begin
  				// ���µ��� 1�� ���� �����ǿ� ���ؼ��� Lock ���� ó���� ���� �ʴ´�.
  				if StrToIntDef(FormatDateTime('hhnnss', (StrToDateTime(cxTxtBrNameCaption.Hint) - now)), 99) < 60 then
          begin
  					if loc_bUpdateLock then
            begin // ����ȭ�� Lock ���� ����.[True:����, False:�̼���]
              Proc_AcceptLock('2'); // �ش������ Lock�� ���� �Ѵ�.
            end;
          end;
        end;
      end;
      cxTxtBrNameCaption.Hint := ''; // ������� ���� ���ʽð� �ʱ�ȭ.
  	end;

    // ����â�� �ݴ´�.
    Proc_JoinFromClose;

    if Frm_Jon012.Tag = Self.Tag then
    begin
      Frm_Jon012.BtnpnlColorSetClose.Click;
      // ���̿볻�� ȭ���� �ݴ´�.
      Frm_Jon012.bChkTime := False;
      Frm_Jon012.TmrChkTag.Tag := 100;
      Frm_Jon012.Hide;
    end;

      // ��ȭ��ȣ ��ġ ��ȸ.
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
        GMessagebox('[����] ���������� ������ ������ �Ұ����մϴ�.' + #13#10
                  + '�������� �Է��ϼ���' + #13#10
                  + '[���ÿɼ�-�˻�����] ������ ���Է½� ����/���ȵ�', CDMSI);
        meoEndArea.SetFocus;
  //      meoEndArea.SelStart := Length(meoEndArea.Text);
        Exit;
      end;
    end;

    if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
    begin
      if (lcsCu_seq = '') And (edtPostPay.Value = 0) then
      begin
        GMessagebox('�ű԰��� ���ϸ��� ����� �� �� �����ϴ�.', CDMSI);
        SetPayMethod(PAY_METHOD_MONEY);
        Exit;
      end;
    end;

    // �÷����� ǥ�ؿ���� ���Ѵ�. 2010.10.13
    if Not proc_PlusCall_RateYN then
      Exit;

    // ȭ��ݴ� ���̸� ��û ����
    if (tmFormClose.Enabled) and (tmFormClose.Tag = 99) and (loc_TmClose = 'CLOSE') then
    begin
      OutputDebugString(PChar(Format('Closing accept window', [])));
      Exit;
    end;

    if btnCmdUpdSave.Visible then
    begin
      if Application.MessageBox('���� ȭ���� ���� ������� �Դϴ�.' + #13#10 + #13#10
        + '������忡�� �ش� ������ �űԿ����� [����] �Ͻðڽ��ϱ�?',
        '[�������]', MB_ICONQUESTION + MB_OKCANCEL) = IDCANCEL then
        Exit;

      // ������忡�� �űԿ����� ���� ���� ���� ����
      if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
      begin
        locCardPaySeq := '';   // �����Ϸù�ȣ
        locCardTranNo := '';   // �ŷ���ȣ
        locCardPayInfo:= '';   // ī����� ����
      end;
	  	locCardPaySeq := '';   // �����Ϸù�ȣ
  		locCardTranNo := '';   // �ŷ���ȣ
  		locCardPayInfo:= '';   // ���� ����
    end;

    if (Assigned(Frm_JON015) and Frm_JON015.HandleAllocated) and
       (Frm_JON015.Count > 0) and (Frm_JON015.OrderHandle = Self.Handle)
    then
    begin
      if Application.MessageBox(PChar(Format('%d ���� �������� �����Ͻðڽ��ϱ�?', [Frm_JON015.Count])),
        '������ ����', MB_ICONQUESTION + MB_OKCANCEL) = IDCANCEL then
      begin
        Exit;
      end;
    end;

    // �������� ���� ��� ������ �Ѵ�.
    btnCmdExit.Hint := 'INSERT_MODE';
    btnCmdJoinCopy.Hint := ''; // ������ ���� ��� ����.
    btnCmdWaitCopy.Hint := ''; // ����� ���� ��� ����.

    bAUTOCMDQUESTION := False; // ���� �� ���� ó�� ��Ÿ�� ó�� 20120806 LYB
    Only_Exit := True;   //�����ư ��Ʈ�����
    // ������ ��������� �Ѵ�.
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
        GMessagebox('[�����ĺ���] ���������� ������ ������ �Ұ����մϴ�.' + #13#10
                  + '�������� �Է��ϼ���' + #13#10
                  + '[���ÿɼ�-�˻�����] ������ ���Է½� ����/���ȵ�', CDMSI);
        meoEndArea.SetFocus;
  //      meoEndArea.SelStart := Length(meoEndArea.Text);
        Exit;
      end;
    end;

    if btnCmdUpdSave.Visible then
    begin
      if Application.MessageBox('���� ȭ���� ���� ������� �Դϴ�.' + #13#10 + #13#10
        + '������忡�� �ش� ������ �űԿ����� [�����ĺ���] �Ͻðڽ��ϱ�?',
        '[�������]', MB_ICONQUESTION + MB_OKCANCEL) = IDCANCEL then
        Exit;

      // ������忡�� �űԿ����� ���� ���� ���� ����
      if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
      begin
        locCardPaySeq := '';   // �����Ϸù�ȣ
        locCardTranNo := '';   // �ŷ���ȣ
        locCardPayInfo:= '';   // ī����� ����
      end;
    end;

    if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
    begin
      if (lcsCu_seq = '') And (edtPostPay.Value = 0) then
      begin
        GMessagebox('�ű԰��� ���ϸ��� ����� �� �� �����ϴ�.', CDMSI);
        SetPayMethod(PAY_METHOD_MONEY);
        Exit;
      end;
    end;

    // �÷����� ǥ�ؿ���� ���Ѵ�. 2010.10.13
    if Not proc_PlusCall_RateYN then Exit;

    // �������� �����ĺ��� ��� ������ �Ѵ�.
    btnCmdExit.Hint := 'INSERTCOPY_MODE';
    btnCmdJoinCopy.Hint := 'JOINCOPY'; // ������ ���� ��� ����.
    btnCmdWaitCopy.Hint := ''; // ����� ���� ��� ����.

    bAUTOCMDQUESTION := False; // �����ĺ��� �� ���� ó�� ��Ÿ�� ó�� 20120806 LYB
    Only_Exit := True;   //�����ư ��Ʈ�����

    // ������ ��������� �Ѵ�.
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
        GMessagebox('[������] ���������� ������ ������ �Ұ����մϴ�.' + #13#10
                  + '�������� �Է��ϼ���' + #13#10
                  + '[���ÿɼ�-�˻�����] ������ ���Է½� ����/���ȵ�', CDMSI);
        meoEndArea.SetFocus;
  //      meoEndArea.SelStart := Length(meoEndArea.Text);
        Exit;
      end;
    end;

    // �÷����� üũ�Ǿ� ������ �ڵ� �����Ѵ�.
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
      GMessageBox('�ĺҿ����� �����ݷ� ����� �� �����ϴ�. [�����ĺ���(Z)]�� �̿�ٶ��ϴ�.', CDMSI);
      Exit;
    end;

    if (cxLblCIDUseFlg.Hint <> 'CID') and (gsCuTelHint <> cxtCuTel.Text) then
    begin // CID ��ȸ���� ������ �Ѵ�., ����ȭ��ȣ ���濩�θ� üũ�ϱ� ���� �����Ѵ�.
      GMessagebox(
        Format('�˻��� [%s]��ȭ��ȣ�� ���� �Էµ� ��ȭ��ȣ[%s]�� �ٸ��ϴ�.', [gsCuTelHint, cxtCuTel.Text]) + #13#10
        + Format('������ ��ȭ��ȣ�� ����Ϸ��� [%s]��ȭ��ȣ�� ��ȸ(����) �Ŀ� �����ϼ���', [cxtCuTel.Text]) + #13#10
        + '[��]���� ��ȭ��ȣ�� �űԹ�ȣ�� �߰�(����)�ҷ��� ������ ��ư�� Ŭ�� �� �űԹ�ȣ�� �߰�(����)�ϰ� �����ϼ���',
        CDMSI);
      Exit;
    end;


    //--------------------------------------------------------------------------------------------------
    // ������ ����ĳ�� üũ(ĳ���� ��� �ĺҷ� �����Ҽ� ����)
    //--------------------------------------------------------------------------------------------------
    if IsPayMethodPost then // �ĺҿ��� ĳ������ üũ..
    begin
      sBrNo := Proc_BRNOSearch;
      if not Frm_main.func_brcash_check(sBrNo, StrToIntDef(FloatToStr(curRate.Value), 0)) then
      begin
        GMessagebox('����ĳ���� �����Ͽ� �ĺҷ� ������ �� �����ϴ�.', cdmsi);
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
        GMessagebox('�������� ���ÿ� ������ �� �����ϴ�.' + #13#10
          + '(�ٸ� �������� ���� �����Ͻð� �õ����ּ���.)', CDMSI);
        Exit;
      end;
    end;

    bAUTOCMDQUESTION := False; // ������ �� ���� ó�� ��Ÿ�� ó�� 20120806 LYB

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
      GMessagebox('������ ������ ���� �߽��ϴ�.', CDMSI);
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
			sURL1 := Format(sURL, [BILLIT_IP, UTF8Encode(cxtCuTel.Text), UTF8Encode(copy(frm_Main.func_sysdate,1,8)), UrlEncode(UTF8Encode(BILLIT_ID))]); //IP, BAD��ȣ, ����, UserID
			Log('BAD sURL1: ' +  sURL1 , LOGDATAPATHFILE);
			sRequest := Frm_Main.IdHTTPBix.Get(sURL1);
			Log('BAD Request: ' +  sRequest , LOGDATAPATHFILE);
		except
			Log('mniN1Click error', LOGDATAPATHFILE);
		end;
	end	else
	begin
    // �������� ���Űź� ��� ������ �Ѵ�.
    btnCmdExit.Hint := 'NOSMSINSERT_MODE';
    btnCmdJoinCopy.Hint := ''; // ������ ���� ��� ����.
    btnCmdWaitCopy.Hint := ''; // ����� ���� ��� ����.

    //locJoinGubun := 2;          // ���� ��������:: 1=����, 2=���Űź�
    lg_Save := '1';
    // ���� ���Űź� ����� �Ѵ�.
    Proc_OrderSMSRecvNo;
  end;
end;

// ���� ���Űź� ����� �Ѵ�.
procedure TFrm_JON01.Proc_OrderSMSRecvNo;
begin
  if not NotNullCheck then Exit;

  if IsPayMethodPost then // �ĺҿ��� ĳ������ üũ..
  begin
    locBrNo := Proc_BRNOSearch;
    if not frm_main.func_brcash_check(locBrNo, StrToIntDef(FloatToStr(curRate.Value), 0)) then
    begin
      GMessagebox('����ĳ���� �����Ͽ� �ĺҷ� ������ �� �����ϴ�.', cdmsi);
      exit;
    end;
  end;

  if cxLblCIDUseFlg.Hint <> 'CID' then
  begin // CID ��ȸ���� ������ �Ѵ�.
    if gsCuTelHint <> cxtCuTel.Text then
      // ����ȭ��ȣ ���濩�θ� üũ�ϱ� ���� �����Ѵ�.
    begin
      GMessagebox(Format('�˻��� [%s]��ȭ��ȣ�� ���� �Էµ� ��ȭ��ȣ[%s]�� �ٸ��ϴ�.', [gsCuTelHint, cxtCuTel.Text]) + #13#10 +
        Format('������ ��ȭ��ȣ�� ����Ϸ��� [%s]��ȭ��ȣ�� ��ȸ(����) �Ŀ� �����ϼ���', [cxtCuTel.Text]) + #13#10
        + '[��]���� ��ȭ��ȣ�� �űԹ�ȣ�� �߰�(����)�ҷ��� ������ ��ư�� Ŭ�� �� �űԹ�ȣ�� �߰�(����)�ϰ� �����ϼ���', CDMSI);
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
  // �÷����� üũ�Ǿ� ������ �ڵ� �����Ѵ�.
  try
    if GS_PRJ_AREA = 'S' then
    begin
      if BtnPlusYN.Down then
      begin
        BtnPlusYN.Down := False;
      end;
    end;

    // �������� ������� ������ �Ѵ�.
    btnCmdExit.Hint := 'QUESTINSERT_MODE';
    btnCmdJoinCopy.Hint := ''; // ������ ���� ��� ����.
    btnCmdWaitCopy.Hint := ''; // ����� ���� ��� ����.

    bAUTOCMDQUESTION := False; // ���� �� ���� ó�� ��Ÿ�� ó�� 20120806 LYB
  	Only_Exit := True;   //�����ư ��Ʈ�����

    lg_Save := '1';
    // ������ ���Ƿ� ���� �Ѵ�.
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
  	// ������ Ŭ��.
    if btnCmdUpdSave.Tag = 99 then
    begin // ���� �� �� ����.
      GMessagebox('�̿����� 24�ð��� ���� ������ ���� �� �� ����, ���븸 �� �� �ֽ��ϴ�.', CDMSI);
      Exit;
    end;

    if (cxtCuTel.Text <> locsCuTelTxtBoxVal) then
    begin
      GMessagebox('������忡���� [��ȭ��ȣ1]�� ���� �� �� �����ϴ�.', CDMSI);
      Self.cxtCuTel.SetFocus;
      Exit;
    end;

    // �������� ������� ������ �Ѵ�.
  	btnCmdExit.Hint := 'UPDATE_MODE';

    Status := '';
  	if (cxtJoinNum.Hint = '5') and ( BtnResv.Tag = 1 ) then
    begin
      msg := '�������� ����ð��� ������ �������� ����˴ϴ�.'#13#10'�������� �����Ͻðڽ��ϱ�?'#13#10#13#10
        + '([��] �������� ����, [�ƴϿ�] ���� ����)';
      if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO +
        MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
      begin
        Status := 'R';
      end;
    end;

    if ((Pos('����', Self.Caption) > 0 ) and (cxtJoinNum.Hint[1] in ['2', '4', '8'])) // ����[�Ϸ�/����/���] �� ���
   and (    (cxtStartXval.Text <> cxtStartXval.Hint) or (cxtStartYval.Text <> cxtStartYval.Hint)
            or (cxtEndXval.Text <> cxtEndXval.Hint) or (cxtEndYval.Text <> cxtEndYval.Hint))  // ��ǥ��ȯ�� �־������
      and (not FIsCalcPrice)
    then
    begin
      msg := '�����/������������ ����Ǿ�����, ����� ������� �ʾҽ��ϴ�.'#13#10
        + '(����[�Ϸ�/���/����]������ ����׸��� �����Ͽ� ������ݰ�� �ٶ��ϴ�.)'#13#10#13#10
        + '��� ������� ���� �Ͻðڽ��ϱ�?';

      if Application.MessageBox(PChar(msg), CDMSI, MB_YESNO +
        MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
      begin
        curRate.SetFocus;
        Exit;
      end;
    end;

    // �÷����ݷ� ��ϵǾ��µ�, ������ �÷����ݿ����� �ȵǸ� ����
    if btnPlusYN.Down then
      if proc_PlusCall_RateYN=false then Exit;

    // ��ȸ �� ���� ������ ���� �Ѵ�. : DB Update~~
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
        GMessagebox('[���] ���������� ������ ��������� �Ұ����մϴ�.' + #13#10
                  + '�������� �Է��ϼ���' + #13#10
                  + '[���ÿɼ�-�˻�����] ������ ���Է½� ����/���ȵ�', CDMSI);
        if meoEndArea.CanFocus then meoEndArea.SetFocus;
        Exit;
      end;
    end;

    if btnCmdUpdSave.Visible then
    begin
      if Application.MessageBox('���� ȭ���� ���� ������� �Դϴ�.'#13#10#13#10
        + '������忡�� �ش� ������ �űԿ����� [���] ���� �Ͻðڽ��ϱ�?',
        '[�������]', MB_ICONQUESTION + MB_OKCANCEL) = IDCANCEL then
        Exit;

      // ������忡�� �űԿ����� ���� ���� ���� ����
      if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
      begin
        locCardPaySeq := '';   // �����Ϸù�ȣ
        locCardTranNo := '';   // �ŷ���ȣ
        locCardPayInfo:= '';   // ī����� ����
      end;
    end;

    // �÷����� ǥ�ؿ���� ���Ѵ�. 2010.10.13
    if Not proc_PlusCall_RateYN then
      Exit;

    // �������� ������� ��� ������ �Ѵ�.
    btnCmdExit.Hint := 'WAITINSERT_MODE';
    btnCmdJoinCopy.Hint := ''; // ������ ���� ��� ����.
    btnCmdWaitCopy.Hint := ''; // ����� ���� ��� ����.

    bAUTOCMDQUESTION := False; // ��� �� ���� ó�� ��Ÿ�� ó�� 20120806 LYB
    Only_Exit := True;   //�����ư ��Ʈ�����

    // ������ ���� ���� �Ѵ�.
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
  			GMessagebox('[����ĺ���] ���������� ������ ��������� �Ұ����մϴ�.' + #13#10
  								+ '�������� �Է��ϼ���' + #13#10
  								+ '[���ÿɼ�-�˻�����] ������ ���Է½� ����/���ȵ�', CDMSI);
  			meoEndArea.SetFocus;
  			Exit;
  		end;
  	end;

    if btnCmdUpdSave.Visible then
    begin
      if Application.MessageBox('���� ȭ���� ���� ������� �Դϴ�.' + #13#10 +
        #13#10 + '������忡�� �ش� ������ �űԿ����� [����ĺ���] �Ͻðڽ��ϱ�?',
        '[�������]', MB_ICONQUESTION + MB_OKCANCEL) = IDCANCEL then
        Exit;

      // ������忡�� �űԿ����� ���� ���� ���� ����
      if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
      begin
        locCardPaySeq := '';   // �����Ϸù�ȣ
        locCardTranNo := '';   // �ŷ���ȣ
      	locCardPayInfo:= '';   // ī����� ����
      end;
    end;

    // �÷����� ǥ�ؿ���� ���Ѵ�. 2010.10.13
    if Not proc_PlusCall_RateYN then  Exit;

    // �������� ����ĺ��� ��� ������ �Ѵ�.
  	btnCmdExit.Hint := 'WAITINSERTCOPY_MODE';
  	btnCmdJoinCopy.Hint := ''; // ������ ���� ��� ����.
    btnCmdWaitCopy.Hint := 'JOINCOPY'; // ������ ���� ��� ����.

    bAUTOCMDQUESTION := False; // ����ĺ��� �� ���� ó�� ��Ÿ�� ó�� 20120806 LYB
  	Only_Exit := True;   //�����ư ��Ʈ�����

    // ������ ���� ���� �Ѵ�.
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
		ShowMessage('�ű� �̵�� ���� SMS�źθ� ���� ���� ���� �� �� �����ϴ�.');
  end;
end;

procedure TFrm_JON01.BtnCustAddClick(Sender: TObject);
var
  sBrNo, sKeyNum, sSeq, sCustTel: string;
begin
  if Length(Proc_HDNOSearch) < 3 then
  begin
    ShowMessage('���������� �������� �ʾҽ��ϴ�. ���縦 ���� �� �Ŀ� ���������� �ϼ���!');
    Exit;
  end;
  if (cxtCuTel.Text = '') and ((cxtCallTelNum.Text = '�߽���������') or (cxtCallTelNum.Text = '')) then
  begin
    GMessagebox('����ȣ�� ' + MDXCI_0005, CDMSI);
    Self.cxtCuTel.SetFocus;
    Exit;
  end;

  if TCK_USER_PER.COM_CustModify <> '1' then
  begin
    GMessagebox('�� ���������� �����ϴ�.', CDMSI);
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
      BtnStLock.Hint := 'F4)����';
      BtnStLock.Tag  := 0;
      BtnStLock.OptionsImage.ImageIndex := 0;
			Frm_JON30.N1.Enabled := True;
			Frm_JON30.N1.Caption := '���������(��ǥ���̵�)';
      Frm_JON30.N6.Enabled := True;
      Frm_JON30.N6.Caption := '���������(�ּ�+��ǥ�̵�)';
    end else
    begin
      BtnStLock.Hint := 'F4)���';
      BtnStLock.Tag  := 0;
      BtnStLock.OptionsImage.ImageIndex := 1;
      Frm_JON30.N1.Enabled := False;
      Frm_JON30.N1.Caption := '���������(��ǥ���̵�)-��ݻ���';
      Frm_JON30.N6.Enabled := False;
      Frm_JON30.N6.Caption := '���������(�ּ�+��ǥ�̵�)-��ݻ���';
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
  // ��ȭ��ȣ �� ���浵 ��ǥ�� �˻� �Ѵ�..
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
    Application.MessageBox('������ ��ȭ��ȣ��(��) �Է��ϼ���', '�˸�', MB_OK);
    Exit;
  end;

  vKeyNum  := Proc_MainKeyNumberSearch;
  vCustTel := StringReplace(sCtHp, '-', '', [rfReplaceAll]);

  Log('��ǥ��ȣ:' + vKeyNum + ' - ����ȣ:' + vCustTel, LOGDATAPATHFILE);

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

  // ���ϸ��� ���� ��Ȳ ����..
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
    Frm_COM40.curCurrent.Caption := sCurMlg;            // 20130703  LYB ����
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
  AddSpop('�ݹ�',96);
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
  if Application.MessageBox('�Ⱦ���� �Ͻðڽ��ϱ�?', CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then Exit;

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
        GMessagebox('�Ⱦ� ��� �Ǿ����ϴ�.', CDMSI);
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
    ShowMessage('���ų�¥�δ� ������ �� �����ϴ�');
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
  if BtnResJ.Down then sTmp := sTmp + ' [����] ���·� ����' else
  if BtnResD.Down then sTmp := sTmp + ' [���] ���·� ����';

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
	// ���ÿ� ����� �������� �����Ѵ�.
	if TCK_USER_PER.JON_LocalMap <> '1' then
	begin
    GMessagebox('������ �����ϴ�',CDMSI);
		exit;
  end;
	proc_Save_Area(0) // ����� ����.
end;

procedure TFrm_JON01.BtnViaMinus1Click(Sender: TObject);
Var iHeight, i, iTag, j : Integer;
begin
  try
    if GbViaArea.Height < 10 then Exit;

    iTag := TcxButton(sender).Tag;
    if ViaADDTag < 1 THEN ViaADDTag := 1;

    // ������ ���� �ڷ� �ʱ�ȭ
    Via_Info[iTag].ViaSA1 := '';
    Via_Info[iTag].ViaSA2 := '';
    Via_Info[iTag].ViaSA3 := '';
    Via_Info[iTag].ViaAreaDetail := '';
    Via_Info[iTag].DocId  := '';
    Via_Info[iTag].CellSel  := '';
    Via_Info[iTag].SchWord  := '';
    Via_Info[iTag].XposVia := '';
    Via_Info[iTag].YposVia := '';

    // ������ ȭ�� ǥ�� ���� ����
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

    // ������ ���� �ӽ� �ڷ� ����
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

    // ������ ���� ���� ����
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
      GMessageBox('�����/�������� �˻��Ͽ��� ��� ������ �����մϴ�.', CDMSI);
      Exit;
    end;

    if gsMyMainTelUse = 'TRUE' then
    begin
      GMessageBox('��ǥ��ȣ �� �⺻��� �������� ���¿����� ������� �� �� �����ϴ�.', CDMSI);
      Exit;
    end;

    if (CHARGE_GUBUN = 'P') and (GS_EXEC_GUBUN = 0) then
    begin
      msg := '�ݸ��� ���α׷� ���� ���� �� ���߿� ����� ���α׷������� �߽Ź�ȣ(CID), ���ÿ��DB ������ ���� �˴ϴ�.' + #13#10 + #13#10
           + '���� ������ ���α׷��� ���� �̿�ٶ��ϴ�.';
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
  // ���� ���� ������ �����ش�.
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
      // ���� ���� ������ �����ش�.
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
      // ���� �Ҵ�� �� �迭���� ����.(���� ��ȸ�� �� �����Ͱ� �ִ��� ���θ� üŷ)
      // �� �̿볻���� �׸��忡 �����ش�.
      Proc_CustOrderListView;
      Proc_WorkListView('');
    end else
      // �� �̿볻���� ����ش�.
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
    //����� �õ�      lcsSta1
    //����� �ñ���    lcsSta2
    //����� ���鵿    lcsSta3
    //����� ���θ�Ī  cxtStartAreaDetail.Text
    //����� X         cxtStartXval.Text
    //����� Y         cxtStartYval.Text
    //������ �õ�      lcsEnd1
    //������ �ñ���    lcsEnd2
    //������ ���鵿    lcsEnd3
    //������ ���θ�Ī  cxtEndAreaDetail.Caption
    //������ X         cxtStartXval.Text
    //������ Y         cxtStartYval.Text
    oType := 'a';//�˻�Ÿ��

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
    if (Pos('����', Self.Caption) > 0 ) then
    begin
      tmrThRealDis.Tag := 1;
      proc_dis_alculation(Self.Tag, False);
      if GT_DISTANCE_ST = 1  then proc_Realdis_Mng;
      Exit;
    end else
    begin
      ShowMessage('��� Ž�� �Ÿ� ��� �� ��κ��⸦ �����ּ���');
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

      Proc_MapMode_Bessel1; //����� ������ ������

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
  // ���� ��ư Ŭ���� �ڵ� ���� ���ش�.
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
      BtnEdLock.Hint := 'F4)����';
      BtnEdLock.Tag  := 0;
      BtnEdLock.Down := False;
      BtnEdLock.OptionsImage.ImageIndex := 0;

      Frm_JON30.N2.Enabled := True;
      Frm_JON30.N2.Caption := '����������(��ǥ���̵�)';
      Frm_JON30.N7.Enabled := True;
      Frm_JON30.N7.Caption := '����������(�ּ�+��ǥ�̵�)';
    end else
    begin
      BtnEdLock.Hint := 'F4)���';
      BtnEdLock.Tag  := 0;
      BtnEdLock.Down := True;
      BtnEdLock.OptionsImage.ImageIndex := 1;

      Frm_JON30.N2.Enabled := False;
      Frm_JON30.N2.Caption := '����������(��ǥ���̵�)-��ݻ���';
      Frm_JON30.N7.Enabled := False;
      Frm_JON30.N7.Caption := '����������(�ּ�+��ǥ�̵�)-��ݻ���';
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
      dtpResvDate.Text := FormatDateTime('YYYY-MM-DD', Date); // ��������
      dtpResvTime.Text := FormatDateTime('AM/PM hh:mm:ss', Now + ((1 / 24 / 60) * 10)); // ����ð�
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
  lblCurPathRate.Visible := (cxCurPathRate.Text = ''); // ������� �Է� �ܻ�.
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
            btnPickupInsert.OnClick(btnPickupInsert); // �Ⱦ���� ����Ű : 2011.05.25 CDS. Add.
        //      VK_F6     : if rb_search.Enabled then rb_Search.OnClick(rb_Search);
        Vk_F7: //if rb_Modify.Enabled then rb_Modify.OnClick(rb_Modify);              // ����
          if btnCmdUpdSave.Enabled then
            btnCmdUpdSave.OnClick(btnCmdUpdSave);
        Vk_F8: //whbtn_Cancel.OnClick(whbtn_Cancel);                                   // ����
          btnCmdExit.OnClick(btnCmdExit);
        Vk_F9:
          begin
            if not btnCmdJoin.Enabled then
              Exit; // ����
            btnCmdJoinClick(btnCmdJoin);
          end;
        Vk_F10:
          if btnCmdWait.Enabled then
            btnCmdWait.OnClick(btnCmdWait); // ���
        Vk_F11:
          if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // ������
        Vk_F12:
          if btnCmdQuestion.Enabled then
            btnCmdQuestion.OnClick(btnCmdQuestion); // ����
        VK_ESCAPE: // ESC Ű
          begin
            if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
            begin
              if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '')
                and (Trim(lblStartAreaName.Text) = '') and (Trim(lblEndAreaName.Caption) = '')
                and (Trim(cxtStartAreaDetail.Text) = '') and (Trim(cxtEndAreaDetail.Caption) = '') then
                btnCmdExit.OnClick(btnCmdExit); // ����
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
    lblCurPathRate.Visible := (cxCurPathRate.Value = 0); // ���۱� �Է� �ܻ�.
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
            btnPickupInsert.OnClick(btnPickupInsert); // �Ⱦ���� ����Ű : 2011.05.25 CDS. Add.
        Vk_F7: //if rb_Modify.Enabled then rb_Modify.OnClick(rb_Modify);              // ����
          if btnCmdUpdSave.Enabled then
            btnCmdUpdSave.OnClick(btnCmdUpdSave);
        Vk_F8: //whbtn_Cancel.OnClick(whbtn_Cancel);                                   // ����
          btnCmdExit.OnClick(btnCmdExit);
        Vk_F9:
          begin
            if not btnCmdJoin.Enabled then
              Exit; // ����
            btnCmdJoinClick(btnCmdJoin);
          end;
        Vk_F10:
          if btnCmdWait.Enabled then
            btnCmdWait.OnClick(btnCmdWait); // ���
        Vk_F12:
          if btnCmdQuestion.Enabled then
            btnCmdQuestion.OnClick(btnCmdQuestion); // ����
        VK_ESCAPE: // ESC Ű
          begin
            if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
            begin
              if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '') and (Trim(lblStartAreaName.Text) = '') and
                (Trim(lblEndAreaName.Caption) = '') and (Trim(cxtStartAreaDetail.Text) = '') and
                (Trim(cxtEndAreaDetail.Caption) = '') then
                btnCmdExit.OnClick(btnCmdExit); // ����
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
  // ���� ���õ� ���ڵ� index �б�.

  // ����ȸ �׸��忡�� �׸��� ���ýÿ� ������ ������ �Է� ��Ʈ�ѿ� Display~
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
    // ���� ���õ� ���ڵ� index �б�.
    iRcIdx := cxCustView.DataController.FocusedRecordIndex;
    // ����ȸ �׸��忡�� �׸��� ���ýÿ� ������ ������ �Է� ��Ʈ�ѿ� Display~
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
  LbDriverCharge.Visible := (cxDriverCharge.Text = '') // ������ �Է� �ܻ�.
end;

procedure TFrm_JON01.cxDriverChargeFocusChanged(Sender: TObject);
begin
  LbDriverCharge.Visible := ( Not cxDriverCharge.Focused ) And (cxDriverCharge.Text = '');
end;

procedure TFrm_JON01.cxDriverChargePropertiesChange(Sender: TObject);
begin
  if ( Not cxDriverCharge.Focused ) then
    LbDriverCharge.Visible := (cxDriverCharge.Text = '') // ������ �Է� �ܻ�.
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
              Application.MessageBox('�������� [���� --> ����] ���� ������ ���� �Ͻðڽ��ϱ�?' +
              #10#13 + '���� �Ŀ��� [����] ��ư�� ���� ���� �ϼ���~',
              '�������� ���� Ȯ��',
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
            if Application.MessageBox('�������� [���� --> ����] �� ������ ���� �Ͻðڽ��ϱ�?',
              '�������� ���� Ȯ��', MB_OKCANCEL) = IDOK then
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
  if (Pos('����', Self.Caption) > 0 ) then
  begin
    // ���������ÿ� �������� �� ���¿� ���� ������ �����ش�.
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
  if (Pos('����', Self.Caption) > 0 ) then
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
  cxLBubinMemoFlag.Visible := (cxTBubinMemo.Text = '') // ���θ޸� �Է� �ܻ�.
end;

procedure TFrm_JON01.cxTBubinMemoFocusChanged(Sender: TObject);
begin
  cxLBubinMemoFlag.Visible := ( Not cxTBubinMemo.Focused ) And (cxTBubinMemo.Text = '');
end;

procedure TFrm_JON01.cxTBubinMemoPropertiesChange(Sender: TObject);
begin
  if ( Not cxTBubinMemo.Focused ) then
  cxLBubinMemoFlag.Visible := (cxTBubinMemo.Text = ''); // ���θ޸� �Է� �ܻ�.
end;

procedure TFrm_JON01.meoStartAreaEnter(Sender: TObject);
begin
  try
    cxLStartAreaFlag.Visible := False;

    locNowControlName := 'meoStartArea'; // ���� Ȱ��ȭ�� ��Ʈ�� ��.
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
  //  if Assigned(frmJON30) and (cxLabel20.Caption = 'F4)����') then       //  20130703  LYB  ��� ���¿����� �˻�â ǥ�� (���������)
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
  cxLStartAreaFlag.Visible := (meoStartArea.Text = ''); // ����� �Է� �ܻ�.

	locNowControlName := ''; // ���� Ȱ��ȭ�� ��Ʈ�� ��.

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

    lcsActiveEdit := 'meoStartArea'; // Ȱ��ȭ �� �����, ������ Edit ������ ����.
    sActieEdit := 'meoStartArea';

    // ��, ��, HOME, END ����Ű�� �̺�Ʈ Ÿ�� �ʵ��� �Ѵ�.
    if (Key = 37) or (Key = 39) or (Key = 35) or (Key = 36) then Exit;
    if Key = VK_RETURN then
    begin
      Key := 0;
      if not IsNotModifyPrice and (GT_CHARGE_CAL = 1) then
      begin
        // ��ǥ��ȣ �� �⺻ ���� ��� �ݿ� ���θ� ���� �Ѵ�.[True:�ݿ�, False:�̹ݿ�]
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
      Exit; // �׸��忡 ��Ŀ�� �ѱ�°� KeyUp Event���� ó���Ѵ�.
    end;

    sAnsiSchTxt := meoStartArea.Text;

    if Key = VK_BACK then
    begin
      PnlPOISch.Visible := False;
      if Frm_JON30.cxChkPoiSvr.Checked then
      begin
        if ( BtnStLock.Tag = 1 ) And ( BtnStLock.Hint = 'F4)���' ) then
        begin
          if ( Pos('�α�', meoStartArea.Text) = 0 ) And
             ( Pos('�α�', meoStartArea.Text) = 0 ) And
             ( Pos('��ó', meoStartArea.Text) = 0 ) then
          begin
            BtnStLock.Hint := 'F4)����';
            BtnStLock.Tag  := 0;
            BtnStLock.Down := False;
            BtnStLock.OptionsImage.ImageIndex := 0;
            Frm_JON30.N1.Enabled := True;
            Frm_JON30.N1.Caption := '���������(��ǥ���̵�)';
            Frm_JON30.N6.Enabled := True;
            Frm_JON30.N6.Caption := '���������(�ּ�+��ǥ�̵�)';
          end;
        end;
      end;

      if (Length(widestring(meoStartArea.Text)) = 1) and ( BtnStLock.Hint <> 'F4)���' ) then
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
        // 20120805 ��ǥ ���� üũ LYB
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

        // Ű���尡 ��� ������ ���¿��� �ѹ��� BACK Ű�� ������� ��Ʈ�� �ʱ�ȭ ó��.
        lblStartAreaName.Text := '';
        cxtStartAreaDetail.Text := '';
        lcsSta1 := '';
        lcsSta2 := '';
        lcsSta3 := ''; // ��1, ��2, ��3
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

        if BtnStLock.Hint = 'F4)���' then
        begin
          BtnStLock.Hint := 'F4)����';
          BtnStLock.Tag  := 0;
          BtnStLock.Down := False;
          BtnStLock.OptionsImage.ImageIndex := 0;
          Frm_JON30.N1.Enabled := True;
          Frm_JON30.N1.Caption := '���������(��ǥ���̵�)';
          Frm_JON30.N6.Enabled := True;
          Frm_JON30.N6.Caption := '���������(�ּ�+��ǥ�̵�)';
        end;

        PnlSuggest.Visible := False;
        AdvGridSj.ShowSelection := False;
        Exit;
      end else
      if (Length(sAnsiSchTxt) <= 2) and (BtnStLock.Hint <> 'F4)���') then
      begin
        giKeyWordSerchValue := 0;  // �������� Ǯ��Ī �� �α�,�α� �Է½� ���� ���ؼ�.
        gmap_forword := '';
      end else
      if (Length(sAnsiSchTxt) < Length(map_ls_Text)) then
      begin
        map_ls_Text := '';
        gmap_forword := '';
      end;
      giAreaKeyFullMatch_CNT := 0; // �������� Ǯ��Ī �� �α�,�α� �Է½� ���� ���ؼ�.

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
      if BtnStLock.Hint = 'F4)���' then
      begin
        BtnStLock.Hint := 'F4)����';
        BtnStLock.Tag  := 0;
        BtnStLock.Down := False;
        BtnStLock.OptionsImage.ImageIndex := 0;
        Frm_JON30.N1.Enabled := True;
        Frm_JON30.N1.Caption := '���������(��ǥ���̵�)';
        Frm_JON30.N6.Enabled := True;
        Frm_JON30.N6.Caption := '���������(�ּ�+��ǥ�̵�)';
      end else
      begin
        BtnStLock.Hint := 'F4)���';
        BtnStLock.Tag  := 0;
        BtnStLock.Down := True;
         BtnStLock.OptionsImage.ImageIndex := 1;
        Frm_JON30.N1.Enabled := False;
        Frm_JON30.N1.Caption := '���������(��ǥ���̵�)-��ݻ���';
        Frm_JON30.N6.Enabled := False;
        Frm_JON30.N6.Caption := '���������(�ּ�+��ǥ�̵�)-��ݻ���';
      end;
      Exit;
    end else
    if Ord(key) = VK_F3 then
    begin
      Exit;
    end;

    if Ord(key) = VK_ESCAPE then  // ESC Ű
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
          btnCmdExit.OnClick(btnCmdExit); // ����
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
    lcsActiveEdit := 'meoStartArea'; // Ȱ��ȭ �� �����, ������ Edit ������ ����.

    if PnlSuggest.Visible then
      if PnlSuggest.Caption <> lcsActiveEdit then
      begin
        PnlSuggest.Visible := False;
        AdvGridSj.ShowSelection := False;
        PnlSuggest.Caption := lcsActiveEdit;
      end;

    // ��, ��, HOME, END ����Ű�� �̺�Ʈ Ÿ�� �ʵ��� �Ѵ�.
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
    // �˻� �׸���� ��Ŀ�� �̵�..
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
      // Enter�� ������ �˻��� �ȳ������� �ٽ� ��˻� ���ش�.
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
          if BtnStLock.Hint <> 'F4)���' then     // 20130703  LYB
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
              BtnStLock.Hint := 'F4)���';
              BtnStLock.Tag  := 0;
              BtnStLock.Down := True;
              BtnStLock.OptionsImage.ImageIndex := 1;
              frm_JON30.N1.Enabled := False;
              frm_JON30.N1.Caption := '���������(��ǥ���̵�)-��ݻ���';
              frm_JON30.N6.Enabled := False;
              frm_JON30.N6.Caption := '���������(�ּ�+��ǥ�̵�)-��ݻ���';
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
        begin // ��Ŀ�� ���̻� �Ѿ�� �ʵ��� �Ѵ�.
          if ViaADDTag > 0 then meoViaArea1.SetFocus
                           else meoEndArea.SetFocus;
  //-        meoEndArea.SetFocus;
          gmap_forword := '';
        end else
        begin
          meoStartArea.Hint := ''; // ��Ŀ�� ���̻� �Ѿ�� �ʵ��� �Ѵ�.
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
            btnPickupInsert.OnClick(btnPickupInsert); // �Ⱦ���� ����Ű : 2011.05.25 CDS. Add.
        VK_F2:
           begin
             if pnlTelNESearch.Visible = True then
             begin
               pnlTelNESearch.Visible := False;
               if Assigned(Frm_COM30) then Frm_COM30.Close;
             end else
             begin
               // ��ȭ��ȣ ��ġã�� �⺻ ��ġ�� ���Ѵ�.
               Proc_TellAreaFormCreate;
               pnlTelNESearch.Visible := True;
               cxTxtTelNESelect.Text := '';
               if cxTxtTelNESelect.CanFocus then cxTxtTelNESelect.SetFocus;
             end;
           end;
        //      VK_F6     : if rb_search.Enabled then rb_Search.OnClick(rb_Search);
        Vk_F7:
          if btnCmdUpdSave.Enabled then
            btnCmdUpdSave.OnClick(btnCmdUpdSave); // ����
        Vk_F8: btnCmdExit.OnClick(btnCmdExit); // ����
        Vk_F9:
          begin
            if not btnCmdJoin.Enabled then
              Exit; // ����
            btnCmdJoinClick(btnCmdJoin);
          end;
        Vk_F10:
          if btnCmdWait.Enabled then
            btnCmdWait.OnClick(btnCmdWait); // ���
        Vk_F11:
          if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // ������
        Vk_F12:
          if btnCmdQuestion.Enabled then
            btnCmdQuestion.OnClick(btnCmdQuestion); // ����
      end;
    end else
  //-  if (cxLabel20.Caption = 'F4)���') and (key <> 229) then  //  20130703  LYB  ��� ���¿����� �˻��� �ǰ� �϶�.  key 299 = ���콺Ŭ��
    if (key <> 229) then  //  20130703  LYB  ��� ���¿����� �˻��� �ǰ� �϶�.  key 299 = ���콺Ŭ��
    begin
      if (Key = VK_F4) then Exit;
      gKWComp := '';
      if GS_SEARCH_UPDATE_OPEN then J30ShowS := False;
      if J30ShowS = False then Proc_AreaSearchKDown_Added(Key);
  {  end else
    if (cxLabel20.Caption = 'F4)����') and (key <> 229)then // �����, ������ ��Ʈ�ѿ��� KeyDown �̺�Ʈ�ÿ� ȣ���.
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
    cxLStartAreaFlag.Visible := (meoStartArea.Text = ''); // ����� �Է� �ܻ�.

  meoStartArea.Hint := ''; // ��Ŀ�� ���̻� �Ѿ�� �ʵ��� �Ѵ�.

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

    locNowControlName := 'meoViaArea'; // ���� Ȱ��ȭ�� ��Ʈ�� ��.
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
//-	proc_dis_alculation_Via; // Km ������ �Ѵ�.
	locNowControlName := ''; // ���� Ȱ��ȭ�� ��Ʈ�� ��.
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
    // ��, ��, HOME, END ����Ű�� �̺�Ʈ Ÿ�� �ʵ��� �Ѵ�.
    if (Key = 37) or (Key = 39) or (Key = 35) or (Key = 36) then Exit;

    if Key in [VK_DOWN, VK_UP] then
    begin
      Exit; // �׸��忡 ��Ŀ�� �ѱ�°� KeyUp Event���� ó���Ѵ�.
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
      iTag := ViaNowTag; //�������ϴ� ������ ��ġ
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
    lcsActiveEdit := 'meoViaArea'; // Ȱ��ȭ �� �����, ������ Edit ������ ����.

    if PnlSuggest.Visible then
      if PnlSuggest.Caption <> lcsActiveEdit then
      begin
        PnlSuggest.Visible := False;
        AdvGridSj.ShowSelection := False;
        PnlSuggest.Caption := lcsActiveEdit;
      end;

    // ��, ��, HOME, END ����Ű�� �̺�Ʈ Ÿ�� �ʵ��� �Ѵ�.
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
    // �˻� �׸���� ��Ŀ�� �̵�..
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
          Via_Info[ViaNowTag].ViaSA3 := ''; // ��1, ��2, ��3
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
          Via_Info[ViaNowTag].ViaSA3 := ''; // ��1, ��2, ��3
        end;
        if Length(sAnsiSchTxt) = 0 then ViaOK;
      end;
    end else
    if Key = VK_RETURN then
    begin
      // Enter�� ������ �˻��� �ȳ������� �ٽ� ��˻� ���ش�.
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
      // ����Ű �Է� �϶�,,   �׸��忡 ������ ���� �߰� �Ѵ�.
      if ViaNowTag = 1 then
      begin
        if meoViaArea1.Text <> '' then
        begin
          ViaOK; // ������ ���� �� ȭ�� �ݱ�.
          Hide_Panel('meoViaArea',0);
          if GT_USERIF.ID = 'sntest' then Log('4791--' + lcsActiveEdit, LOGDATAPATHFILE);
        end;
      end	else
      begin
        if meoViaArea[ViaNowTag].Text <> '' then
        begin
          ViaOK; // ������ ���� �� ȭ�� �ݱ�.
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
    // ���������� ��ȸ�Ѵ�.
    Proc_BubinListSearch;
  end;
end;

procedure TFrm_JON01.cxtBubinSearchNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // �˻� �׸���� ��Ŀ�� �̵�..
  if Key in [VK_DOWN, VK_UP] then
  begin
    cxGrdBubin.SetFocus;
  end
end;

procedure TFrm_JON01.cxtBubinSearchNamePropertiesChange(Sender: TObject);
begin
  // ���������� ��ȸ�Ѵ�.
  Proc_BubinListSearch;
end;

procedure TFrm_JON01.cxtCuBubinEnter(Sender: TObject);
begin
  cxLBuNmFlg.Visible := False;
end;

procedure TFrm_JON01.cxtCuBubinExit(Sender: TObject);
begin
  cxLBuNmFlg.Visible := (cxtCuBubin.Text = '') // ���� �Է� �ܻ�.
end;

procedure TFrm_JON01.cxtCuBubinFocusChanged(Sender: TObject);
begin
  cxLBuNmFlg.Visible := ( Not cxtCuBubin.Focused ) And (cxtCuBubin.Text = '');
end;

procedure TFrm_JON01.cxtCuBubinPropertiesChange(Sender: TObject);
begin
  if ( Not cxtCuBubin.Focused ) then
    cxLBuNmFlg.Visible := (cxtCuBubin.Text = ''); // ���� �Է� �ܻ�.
end;

procedure TFrm_JON01.cxtCuTel2Enter(Sender: TObject);
begin
  cxLCuTel2Flg.Visible := False;
end;

procedure TFrm_JON01.cxtCuTel2Exit(Sender: TObject);
begin
  cxLCuTel2Flg.Visible := (cxTCuTel2.Text = '') // ��ȭ��ȣ2 �Է� �ܻ�.
end;

procedure TFrm_JON01.cxtCuTel2FocusChanged(Sender: TObject);
begin
  cxLCuTel2Flg.Visible := ( Not cxtCuTel2.Focused ) And ( cxTCuTel2.Text = '');
end;

procedure TFrm_JON01.cxtCuTel2PropertiesChange(Sender: TObject);
begin
  if ( Not cxTCuTel2.Focused ) then
    cxLCuTel2Flg.Visible := (cxTCuTel2.Text = ''); // ��ȭ��ȣ2 �Է� �ܻ�.
end;

procedure TFrm_JON01.cxtCuTelEnter(Sender: TObject);
begin
  cxLCuTelFlg.Visible := False;
end;

procedure TFrm_JON01.cxtCuTelExit(Sender: TObject);
begin
  cxLCuTelFlg.Visible := (cxTCuTel.Text = '') // ���˻� �Է� �ܻ�.
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
      // ��ȭ��ȣ �˻�
      SearchCuTel((Pos('����', Self.Caption) > 0 ));
    end else
    begin
      if Length(Trim(cxtCuTel.Text)) >= 2 then
      begin
        // ���� ���� ��ȸ �Ѵ�... sGB : NAME(�������� ��ȸ), : TELL(��ȭ��ȣ�� ��ȸ)
        CustomerSearch('NAME');
      end else
      begin
        ShowMessage('���� �˻��� 2�� �̻� �Է��ϼž� �մϴ�.');
      end;
    end;
  end;

  if Ord(key) in [VK_F7..VK_F12, Vk_F1] then
  begin
    case ord(key) of
      Vk_F1:
        if btnPickupInsert.Visible then
					btnPickupInsert.OnClick(btnPickupInsert); // �Ⱦ���� ����Ű : 2011.05.25 CDS. Add.
      //      VK_F6     : if rb_search.Enabled then rb_Search.OnClick(rb_Search);
      Vk_F7:
        if btnCmdUpdSave.Enabled then btnCmdUpdSave.OnClick(btnCmdUpdSave); // ����
      Vk_F8:
        btnCmdExit.OnClick(btnCmdExit); // ����
      Vk_F9:
        begin
          if not btnCmdJoin.Enabled then Exit; // ����
          btnCmdJoinClick(btnCmdJoin);
        end;
      Vk_F10:
        if btnCmdWait.Enabled then btnCmdWait.OnClick(btnCmdWait); // ���
      Vk_F11:
        if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // ������
      Vk_F12:
        if btnCmdQuestion.Enabled then btnCmdQuestion.OnClick(btnCmdQuestion); // ����
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
    cxLCuTelFlg.Visible := (cxTCuTel.Text = ''); // ���˻� �Է� �ܻ�.
end;

procedure TFrm_JON01.cxtEndYvalPropertiesChange(Sender: TObject);
begin
  tmrXYChange.Tag := 1;   // ������
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
          btnPickupInsert.OnClick(btnPickupInsert); // �Ⱦ���� ����Ű : 2011.05.25 CDS. Add.
      Vk_F7: //if rb_Modify.Enabled then rb_Modify.OnClick(rb_Modify);              // ����
        if btnCmdUpdSave.Enabled then
          btnCmdUpdSave.OnClick(btnCmdUpdSave);
      Vk_F8: //whbtn_Cancel.OnClick(whbtn_Cancel);                                   // ����
        btnCmdExit.OnClick(btnCmdExit);
      Vk_F9:
        begin
          //if lg_Enter <> '' then exit;
          //  lg_Enter := 'Enter';
          if not btnCmdJoin.Enabled then
            Exit; // ����
          btnCmdJoinClick(btnCmdJoin);
        end;
      Vk_F10:
        if btnCmdWait.Enabled then
          btnCmdWait.OnClick(btnCmdWait); // ���
      Vk_F12:
        if btnCmdQuestion.Enabled then
          btnCmdQuestion.OnClick(btnCmdQuestion); // ����
      VK_ESCAPE: // ESC Ű
        begin
          if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
          begin
            if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '')
              and (Trim(lblStartAreaName.Text) = '') and (Trim(lblEndAreaName.Caption) = '')
              and (Trim(cxtStartAreaDetail.Text) = '') and (Trim(cxtEndAreaDetail.Caption) = '') then
              btnCmdExit.OnClick(btnCmdExit); // ����
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
  cxLSearchMainTelFlg.Visible := (cxTSearchMainTel.Text = '') // �˻� �Է� �ܻ�.
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
      // ��ǥ��ȣ�� ��ȸ..
  		if not Func_KeyNumberList_Search then Exit;
    end else
    begin
      if Length(Trim(cxTSearchMainTel.Text)) >= 1 then
      begin
        // ��������� ��ȸ..  CDS. 080818.
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
  cxLSearchMainTelFlg.Visible := (cxTSearchMainTel.Text = ''); // �˻� �Է� �ܻ�.
end;

procedure TFrm_JON01.cxtStartYvalPropertiesChange(Sender: TObject);
begin
  tmrXYChange.Tag := 0;  // �����
  tmrXYChange.Enabled := True;
end;

procedure TFrm_JON01.cxTxtBrNameCaptionMouseEnter(Sender: TObject);
begin
  cxTxtBrNameCaption.Visible := False;
  // �����, ��ǥ��ȣ ������ ���� Ȯ~ ���̰�, ũ�� �����ش�.
end;

procedure TFrm_JON01.edtCuNameEnter(Sender: TObject);
begin
  cxLCuNmFlg.Visible := False;
end;

procedure TFrm_JON01.edtCuNameExit(Sender: TObject);
begin
  cxLCuNmFlg.Visible := (edtCuName.Text = '') // ���� �Է� �ܻ�.
end;

procedure TFrm_JON01.edtCuNameFocusChanged(Sender: TObject);
begin
  cxLCuNmFlg.Visible := ( Not edtCuName.Focused ) And (edtCuName.Text = '');
end;

procedure TFrm_JON01.edtCuNamePropertiesChange(Sender: TObject);
begin
  if ( Not edtCuName.Focused ) then
    cxLCuNmFlg.Visible := (edtCuName.Text = ''); // ���� �Է� �ܻ�.
end;

procedure TFrm_JON01.edtPostPayEnter(Sender: TObject);
begin
  LblPostPay.Visible := False;
end;

procedure TFrm_JON01.edtPostPayExit(Sender: TObject);
begin
  LblPostPay.Visible := (edtPostPay.Value = 0); // ���۱� �Է� �ܻ�.
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
    LblPostPay.Visible := (edtPostPay.Value = 0); // ���۱� �Է� �ܻ�.
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
	// ���ð��� ����� �����..
  sTitle := '00:30' + ' (�ð�/��)���� [' + '5,000' + '��]';
  Proc_WTRMenuCreate(sTitle, 'WaitTmR1', 5000);
  sTitle := '01:00' + ' (�ð�/��)���� [' + '10,000' + '��]';
  Proc_WTRMenuCreate(sTitle, 'WaitTmR2', 10000);
  sTitle := '01:30' + ' (�ð�/��)���� [' + '15,000' + '��]';
  Proc_WTRMenuCreate(sTitle, 'WaitTmR3', 15000);
  sTitle := '02:00' + ' (�ð�/��)���� [' + '20,000' + '��]';
  Proc_WTRMenuCreate(sTitle, 'WaitTmR4', 20000);
  sTitle := '05:00' + ' (�ð�/��)���� [' + '25,000' + '��]';
  Proc_WTRMenuCreate(sTitle, 'WaitTmR5', 25000);
  sTitle := '10:00' + ' (�ð�/��)���� [' + '100,000' + '��]';
  Proc_WTRMenuCreate(sTitle, 'WaitTmR6', 100000);

  pnl_charge.Caption := '';
  Lbl_Distance.Caption := '';

  pnl_charge.Left := btn_ChargeSave.Left; // �����ȸ ���� ǥ��. �ϴ���..
  pnl_charge.Top := 120;

//-  BtnSR.Left := pnl_charge.Left + pnl_charge.Width - ( BtnSR.Width + 2);
//-  BtnSR.Top  := pnl_charge.Top + 1;


  loc_Ud_xdom := CoDomDocument.Create; // ������� ���� XML ���� Pasing ����.

	SCboLevelSeq := TStringList.Create;

  // ����ȭ�鿡��, ����ϴ� ���������� �����ش�.
  cxMeoOrderUpInfo.Text := '';

  cxGBSearch.Left := 7;
  cxGBSearch.Top := 67;
  cxGBSearch.Visible := False;

  lst_BRList.Left := 277;
  lst_BRList.Top := 59;
  lst_BRList.Visible := False;

  // CID ��ȸ���� ������ �Ѵ�.  Value:CID
  cxLblCIDUseFlg.Hint := '';

  // ������ȣ ��ȸ ���� ������ �Ѵ�. Value:CONFSLIP
  cxLblConfSlipUseFlg.Hint := '';

  // ������ư ��ġ ����.
  btnCmdUpdSave.Left  := btnCmdQuestion.Left;
  btnCmdUpdSave.Top   := btnCmdQuestion.Top;

  cxTxtBrNameCaption.Top := cboBrOnly.Top; // �����ÿ� �����, ��ǥ��ȣ ũ�� ������.
  cxTxtBrNameCaption.Left := cboBrOnly.Left;

  // �� �˻� �׸���
	cxCustView.DataController.SetRecordCount(0);
  for i := 0 to cxCustView.ColumnCount - 1 do
    cxCustView.Columns[i].DataBinding.ValueType := 'String';

  shaPrcMsg.left := 179;
  shaPrcMsg.Top := 114;

  pnlNewCustYN.Left := 4;
  pnlNewCustYN.Top := 56;

	pnlTelNESearch.Left := 6; // ��ȭ��ȣ�� ���浵�� �� ��ġ�� ��ȸ.
  pnlTelNESearch.Top := 117;

  pnlBrNoMent.Left := 4; // ���纰 ��Ʈ�� �����ش�.
  pnlBrNoMent.Top := 31;

  pnlServerDisconn.Left := 2;
  pnlServerDisconn.Top := 2;

  lcsActiveEdit := ''; // Ȱ��ȭ �� �����, ������ Edit ������ ����.

  map_sl_equal := TStringList.Create;
  map_sl_street := TStringList.Create;
  map_sl_detail := TStringList.Create;
  map_sl_Local := TStringList.Create; // �̻��
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

  glsMapRltVal := TStringList.Create;  // ��/������ ��ȸ ������� ��Ī ���� ����.

  loc_Ud_xdom := CoDomDocument.Create; // ������� ���� XML ���� Pasing ����.

  LoadPayMethod;

  if GS_PRJ_AREA = 'O' then
    btnPickupInsert.Visible := (GT_USERIF.SA = '02') or (GT_USERIF.SA = '09') or (GT_USERIF.PickUp = '1');

	// ����ȭ���� �⺻ ��Ʈ���� �ʱ�ȭ �Ѵ�.
  // False : ��Ʈ���ʱ�ȭ ����. True : �����ڵ� ��ε� �Ѵ�.
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
		BtnViaMinus[i].Hint := '����(F6)';
		BtnViaMinus[i].ShowHint := True;
		BtnViaMinus[i].OnClick := BtnViaMinus1Click;
	end;

	FControlInitial(False, True);
  ControlClear(False);

  ViaNowTag := 1;   //���� �Է����� ��������ġ
	ViaADDTag := 0;   //���� �߰��� ��������ġ

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

	// DNIS ���� �߰�. 2011.05.17 CDS.
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

  FBigoList.Add('��ȭ���=��ȭ���');
  FBigoList.Add('������ȭ=������ȭ');
  FBigoList.Add('�����=�����');
  FBigoList.Add('����=����');

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
  LbmeoBigo2.Visible := (meoBigo2.Text = '') // ����2 �Է� �ܻ�.
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
    lbmeoBigo2.Visible := (meoBigo2.Text = ''); // ����2 �Է� �ܻ�.
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
  lbmeoBigo.Visible := (meoBigo.Text = '') // ����1 �Է� �ܻ�.
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
    if (Pos('����', Self.Caption) = 0 ) then
      btnCmdJoin.SetFocus
    else
      btnCmdUpdSave.SetFocus;
  end;

  if Ord(key) in [VK_F7..VK_F12, VK_ESCAPE, Vk_F1] then
  begin
    case ord(key) of
      Vk_F1:
        if btnPickupInsert.Visible then
          btnPickupInsert.OnClick(btnPickupInsert); // �Ⱦ���� ����Ű : 2011.05.25 CDS. Add.
      //      VK_F6     : if rb_search.Enabled then rb_Search.OnClick(rb_Search);
      Vk_F7: //if rb_Modify.Enabled then rb_Modify.OnClick(rb_Modify);              // ����
        if btnCmdUpdSave.Enabled then
          btnCmdUpdSave.OnClick(btnCmdUpdSave);
      Vk_F8: //whbtn_Cancel.OnClick(whbtn_Cancel);                                   // ����
        btnCmdExit.OnClick(btnCmdExit);
      Vk_F9:
        begin
          //if lg_Enter <> '' then exit;
          //  lg_Enter := 'Enter';
          if not btnCmdJoin.Enabled then
            Exit; // ����
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
          btnCmdWait.OnClick(btnCmdWait); // ���
        end;
      Vk_F11:
        if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // ������
      Vk_F12:
        if btnCmdQuestion.Enabled then
          btnCmdQuestion.OnClick(btnCmdQuestion); // ����
      VK_ESCAPE: // ESC Ű
        begin
          if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
          begin
            if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '')
              and (Trim(lblStartAreaName.Text) = '') and (Trim(lblEndAreaName.Caption) = '')
              and (Trim(cxtStartAreaDetail.Text) = '') and (Trim(cxtEndAreaDetail.Caption) = '') then
              btnCmdExit.OnClick(btnCmdExit); // ����
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
    lbmeoBigo.Visible := (meoBigo.Text = ''); // ����1 �Է� �ܻ�.
end;

procedure TFrm_JON01.meoCuCCMemoEnter(Sender: TObject);
begin
  cxLCuCCMemoFlg.Visible := False;
end;

procedure TFrm_JON01.meoCuCCMemoExit(Sender: TObject);
begin
  cxLCuCCMemoFlg.Visible := (meoCuCCMemo.Text = '') // ���޸� �Է� �ܻ�.
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
    cxLCuCCMemoFlg.Visible := (meoCuCCMemo.Text = ''); // ���޸� �Է� �ܻ�.
end;

procedure TFrm_JON01.meoCuWorMemoEnter(Sender: TObject);
begin
  cxLCuWorMemoFlg.Visible := False;
end;

procedure TFrm_JON01.meoCuWorMemoExit(Sender: TObject);
begin
  cxLCuWorMemoFlg.Visible := (meoCuWorMemo.Text = '') // ���޸� �Է� �ܻ�.
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
    cxLCuWorMemoFlg.Visible := (meoCuWorMemo.Text = ''); // ���޸� �Է� �ܻ�.
end;

procedure TFrm_JON01.meoEndAreaEnter(Sender: TObject);
begin
  try
    cxLEndAreaFlag.Visible := False;

    locNowControlName := 'meoEndArea'; // ���� Ȱ��ȭ�� ��Ʈ�� ��.
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

  //  if Assigned(Frm_JON30) and (cxLabel19.Caption = 'F4)����') then     //  20130703  LYB  ��� ���¿����� �˻�â ǥ�� (���������)
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
  cxLEndAreaFlag.Visible := (meoEndArea.Text = ''); // ������ �Է� �ܻ�.

  locNowControlName := ''; // ���� Ȱ��ȭ�� ��Ʈ�� ��.
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

    lcsActiveEdit := 'meoEndArea'; // Ȱ��ȭ �� �����, ������ Edit ������ ����.
    sActieEdit := 'meoEndArea';

    // ��, ��, HOME, END ����Ű�� �̺�Ʈ Ÿ�� �ʵ��� �Ѵ�.
    if (Key = 37) or (Key = 39) or (Key = 35) or (Key = 36) then  Exit;

    if Key = VK_RETURN then
    begin
      if not IsNotModifyPrice and (GT_CHARGE_CAL = 1) then
      begin
        // ��ǥ��ȣ �� �⺻ ���� ��� �ݿ� ���θ� ���� �Ѵ�.[True:�ݿ�, False:�̹ݿ�]
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
      Exit; // �׸��忡 ��Ŀ�� �ѱ�°� KeyUp Event���� ó���Ѵ�.
    end;

    sAnsiSchTxt := meoEndArea.Text;

    if Key = VK_BACK then
    begin
      PnlPOISch.Visible := False;
      Log('Line 6181', LOGDATAPATHFILE);
      if Frm_JON30.cxChkPoiSvr.Checked then
      begin
        if ( BtnEdLock.Tag = 1 ) And ( BtnEdLock.Hint = 'F4)���' ) then
        begin
          if ( Pos('�α�', meoEndArea.Text) = 0 ) And
             ( Pos('�α�', meoEndArea.Text) = 0 ) And
             ( Pos('��ó', meoEndArea.Text) = 0 ) then
          begin
            BtnEdLock.Hint := 'F4)����';
            BtnEdLock.Tag  := 0;
            BtnEdLock.OptionsImage.ImageIndex := 0;
            BtnEdLock.Down := False;
            Frm_JON30.N2.Enabled := True;
            Frm_JON30.N2.Caption := '����������(��ǥ���̵�)';
            Frm_JON30.N7.Enabled := True;
            Frm_JON30.N7.Caption := '����������(�ּ�+��ǥ�̵�)';
          end;
        end;
      end;

      Log('Line 6202', LOGDATAPATHFILE);
      if (Length(widestring(meoEndArea.Text)) = 1) and (BtnEdLock.Hint <> 'F4)���') then
      begin
        Log('Line 6205', LOGDATAPATHFILE);
        Frm_JON30.Grid_Init(lcsActiveEdit,1);
        Frm_JON30.Grid_Init(lcsActiveEdit,2);
        Frm_JON30.Grid_Init(lcsActiveEdit,3);
        Frm_JON30.Grid_Init(lcsActiveEdit,4);
        GS_FULLWORD_CMP := '';
        Init_AdvGridSj;
      end else
  //    if (Length(meoEndArea.Text) <= 1) and (cxLabel19.Caption <> 'F4)���') then
      if (Length(sAnsiSchTxt) <= 1) then
      begin
        Log('Line 6216', LOGDATAPATHFILE);
        lblEndAreaName.Caption := '';
        cxtEndAreaDetail.Caption := '';
        cxReEndArea.Clear;

        lcsEnd1 := '';
        lcsEnd2 := '';
        lcsEnd3 := ''; // ��1, ��2, ��3

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
        if BtnEdLock.Hint = 'F4)���' then
        begin
          BtnEdLock.Hint := 'F4)����';
          BtnEdLock.Tag  := 0;
          BtnEdLock.OptionsImage.ImageIndex := 0;
          BtnEdLock.Down := False;
          Frm_JON30.N2.Enabled := True;
          Frm_JON30.N2.Caption := '����������(��ǥ���̵�)';
          Frm_JON30.N7.Enabled := True;
          Frm_JON30.N7.Caption := '����������(�ּ�+��ǥ�̵�)';
        end;

        PnlSuggest.Visible := False;
        AdvGridSj.ShowSelection := False;
      end else
      if (Length(sAnsiSchTxt) <= 2) and (BtnEdLock.Hint <> 'F4)���') then
      begin
        giKeyWordSerchValue := 0;  // �������� Ǯ��Ī �� �α�,�α� �Է½� ���� ���ؼ�.
      end;
      giAreaKeyFullMatch_CNT := 0; // �������� Ǯ��Ī �� �α�,�α� �Է½� ���� ���ؼ�.

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
      if BtnEdLock.Hint = 'F4)���' then
      begin
        BtnEdLock.Hint := 'F4)����';
        BtnEdLock.Tag  := 0;
        BtnEdLock.OptionsImage.ImageIndex := 0;
        BtnEdLock.Down := False;
        Frm_JON30.N2.Enabled := True;
        Frm_JON30.N2.Caption := '����������(��ǥ���̵�)';
        Frm_JON30.N7.Enabled := True;
        Frm_JON30.N7.Caption := '����������(�ּ�+��ǥ�̵�)';
      end else
      begin
        BtnEdLock.Hint := 'F4)���';
        BtnEdLock.Tag  := 0;
        BtnEdLock.OptionsImage.ImageIndex := 1;
        BtnEdLock.Down := True;
        Frm_JON30.N2.Enabled := False;
        Frm_JON30.N2.Caption := '����������(��ǥ���̵�)-��ݻ���';
        Frm_JON30.N7.Enabled := False;
        Frm_JON30.N7.Caption := '����������(�ּ�+��ǥ�̵�)-��ݻ���';
      end;
      Exit;
    end else
    if Ord(key) = VK_F3 then
    begin
      Exit;
    end;

    if Ord(key) = VK_ESCAPE then  // ESC Ű
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
          btnCmdExit.OnClick(btnCmdExit); // ����
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
    lcsActiveEdit := 'meoEndArea'; // Ȱ��ȭ �� �����, ������ Edit ������ ����.
    //cxLblEnd.Tag  := 0;  // ��ġã�� �ǳ��� ������ ��쿣 �ڵ��ݱ� ����.

    if PnlSuggest.Visible then
      if PnlSuggest.Caption <> lcsActiveEdit then
      begin
        PnlSuggest.Visible := False;
        AdvGridSj.ShowSelection := False;
        PnlSuggest.Caption := lcsActiveEdit;
      end;

    // ��, ��, HOME, END ����Ű�� �̺�Ʈ Ÿ�� �ʵ��� �Ѵ�.
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
    // �˻� �׸���� ��Ŀ�� �̵�..
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
//      // Enter�� ������ �˻��� �ȳ������� �ٽ� ��˻� ���ش�.
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
        if BtnEdLock.Hint <> 'F4)���' then       // 20130703  LYB
        begin
          if (GS_SEARCH_DEST_DONGSINAME) then// and (frmJON30.AdvStringGrid4.Cells[0,0] <> '') then
          begin

          end else
          begin
            if (Frm_JON30.AdvStringGrid5.Cells[0,1] <> '') then
            begin
              frm_JON30.bEnter := False;
              Frm_JON30.Proc_SendParent(Frm_JON30.AdvStringGrid5.GetRealRow + 1);
              BtnEdLock.Hint := 'F4)���';
              BtnEdLock.Tag  := 0;
              BtnEdLock.OptionsImage.ImageIndex := 1;
              BtnEdLock.Down := True;
              Frm_JON30.N2.Enabled := False;
              Frm_JON30.N2.Caption := '����������(��ǥ���̵�)-��ݻ���';
              Frm_JON30.N7.Enabled := False;
              Frm_JON30.N7.Caption := '����������(�ּ�+��ǥ�̵�)-��ݻ���';

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
            BtnEdLock.Hint := 'F4)���';
            BtnEdLock.Tag  := 0;
            BtnEdLock.OptionsImage.ImageIndex := 1;
            BtnEdLock.Down := True;
            Frm_JON30.N2.Enabled := False;
            Frm_JON30.N2.Caption := '����������(��ǥ���̵�)-��ݻ���';
            Frm_JON30.N7.Enabled := False;
            Frm_JON30.N7.Caption := '����������(�ּ�+��ǥ�̵�)-��ݻ���';

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

      if (Pos('����', Self.Caption) > 0 ) and (cxtJoinNum.Hint[1] in ['2', '4', '8']) then
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
            btnPickupInsert.OnClick(btnPickupInsert); // �Ⱦ���� ����Ű : 2011.05.25 CDS. Add.
        Vk_F7:
          if btnCmdUpdSave.Enabled then btnCmdUpdSave.OnClick(btnCmdUpdSave);
        Vk_F8: // ����
          btnCmdExit.OnClick(btnCmdExit);
        Vk_F9:
          begin
            if not btnCmdJoin.Enabled then  Exit; // ����
            btnCmdJoinClick(btnCmdJoin);
          end;
        Vk_F10:
          if btnCmdWait.Enabled then
            btnCmdWait.OnClick(btnCmdWait); // ���
        Vk_F11:
          if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // ������
        Vk_F12:
          if btnCmdQuestion.Enabled then
            btnCmdQuestion.OnClick(btnCmdQuestion); // ����
      end;
    end else
  //  if (cxLabel19.Caption = 'F4)���') and (key <> 229) then  //  20130703  LYB  ��� ���¿����� �˻��� �ǰ� �϶�.
    if key <> 229 then  //  20130703  LYB  ��� ���¿����� �˻��� �ǰ� �϶�.
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
    cxLEndAreaFlag.Visible := (meoEndArea.Text = ''); // ������ �Է� �ܻ�.
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

    OrgStr := FCurrBigo.Lines.Text;  //���� �ִ�����
    if OrgStr <> '' then
      AddStr := '/';


    iPos := Pos('��', FBigoList.Values[ABigo]);
    if iPos > 0 then
    begin
      sDesc   := Copy(FBigoList.Values[ABigo], 1, iPos - 1);
      sSelBtn := Copy(FBigoList.Values[ABigo], iPos + 1, Length(FBigoList.Values[ABigo]) - iPos);
    end else
    begin
      sDesc   := FBigoList.Values[ABigo];
    end;

    if Pos('<$�ð�$>', sDesc) > 0 then AddStr := sDesc + AddStr   //�߰��ȳ���      2011.12.02 KHS
    else
    begin
      if Atag < 4 then
      begin
        AddStr := sDesc + '-' + '<$�ð�$>' + AddStr ;  //�߰��ȳ���
      end
      else  AddStr := sDesc + AddStr;
    end;
    AddStr := StringReplace(AddStr, '<$�ð�$>', FormatDateTime('HH:MM:SS', Now), [rfReplaceall]);
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
      // �Է� ��Ʈ�� �ʱ�ȭ...
      if cxLblConfSlipUseFlg.Hint <> 'CONFSLIP' then
      begin // ������ȣ ��ȸ���� ����.
        cxtJoinNum.Text := ''; // ������ȣ
      end;

      cxtWorkerNm.Text := ''; // ����
      // �����ð�
      // ���������ڵ�/�����ڵ�/�����
      if (locCustHP_MainNum_Search = '') and (cxLblCIDUseFlg.Hint <> 'CID') then
      begin // CID ��ȸ���� ������ �Ѵ�.
        cxtCallTelNum.Text := ''; // �߽���ȭ��ȣ
      end;
      cxTSearchMainTel.Text := ''; // ������ ��ǥ��ȣ ��ȸ �������ó��..
      cxtCuTel.Text := ''; // ����ȭ��ȣ ��ȸ
      cxtCuTel2.Text := ''; // ��ȭ��ȣ2
      cxtCuBubin.Text := ''; // ���θ�(��������)
      sBHAddr := '';

  		changeLog('',True);

      cxLblSmartRate.Caption := '';
      cxLblRate1.Caption := '';
      cxLblRate2.Caption := '';

      meoCuCCMemo.Clear;
      mmoCbMemo.Clear;
      meoCuWorMemo.Clear;

      // 20120805 ��ǥ ���� üũ LYB
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

      LblTop   .Color := $00E0EDEA;   // �⺻��
      LblLeft  .Color := LblTop.Color;
      LblRigth .Color := LblTop.Color;
      LblBottom.Color := LblTop.Color;
      PnlTitle .Color := LblTop.Color;
      PnlWorkMemo.Color := $00F0F0F0;
      PnlBtm.Color := $00F0F0F0;
      PnlBox4.Color := $00F0F0F0;
      Pnl_BubinV.Color := $00F0F0F0;

      meoStartArea.Clear; // ����� �߰�����
      cxtStartXval.Text := ''; // ����� X��ǥ
      cxtStartYval.Text := ''; // ����� Y��ǥ
      cxtStartGUIDEXval.Text := '';
      cxtStartGUIDEYval.Text := '';

      lblStartAreaName.Text := ''; // ����� �ּ�
      cxtStartAreaDetail.Text := ''; // ����� ������(���������)
      meoEndArea.Clear; // ������ �߰�����

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

      cxtEndXval.Text := ''; // ������ X��ǥ
      cxtEndYval.Text := ''; // ������ Y��ǥ
      cxtEndGUIDEXval.Text := '';
      cxtEndGUIDEYval.Text := '';

      lblEndAreaName.Caption := ''; // ������ �ּ�
      cxtEndAreaDetail.Caption := ''; // ������ ������(���������)
      cxReEndArea.Clear;
      curRate.Value := 0; // ���
      curKm.Text := ''; // �����, ������, ������ Km
      fCruKm := 0;
      fChgKm := 0;
      fDirKm := 0;
      fViaKm := 0;
      chkNoSet.Enabled := False; // ��� ������
      chkRangeRate.Enabled := False; // �Ÿ����

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
      BtnResv.Tag := 0;  // ���� �ʱ�ȭ
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
        meoBigo.Clear; // ����
      end;

      if IsBubuinUse then
      begin
        Pnl_BubinV.Visible := True;

        GB4.Height := 171;          // LYB �߿� *** ���θ޴�/��� ���� �����̳� ���̸� �������� �Է�
        GBTop5.Height := 236;

        iHeight := 610;
        Self.Height := iHeight;

        CbCuGb.Tag := 1;
      end else
      begin
        Pnl_BubinV.Visible := False;

        GB4.Height := 171 - 25;     // LYB �߿� *** ��ݰ��ó��̿��� ���θ޴� ���̸� ���̳ʽ� ���� �����Է�
        GBTop5.Height := 236 - 25;

        iHeight := 610 - 25;
        Self.Height := iHeight;

        CbCuGb.Tag := 0;
      end;

      BtnCenterMng.Down := False; // ��Ȳ�� ��ȭ��ȣ ���̵���,, ������

      cxCustView.DataController.SetRecordCount(0);
      // �������� ��ȸ�� ��� ���÷��� �׸���.

      if BtnStLock.Hint = 'F4)���' then
      begin
        BtnStLock.Hint := 'F4)����';
        BtnStLock.Tag  := 0;
        BtnStLock.OptionsImage.ImageIndex := 0;
        BtnStLock.Down := False;
      end;
      if BtnEdLock.Hint = 'F4)���' then
      begin
        BtnEdLock.Hint := 'F4)����';
        BtnEdLock.Tag  := 0;
        BtnEdLock.OptionsImage.ImageIndex := 0;
        BtnEdLock.Down := False;
      end;

      // ���� �̿볻���� ��Ƶд�.
      for i := 0 to 201 do // ����â ������ �ִ� 16��
        for j := 0 to 40 do // �̿볻�� ���ڵ� �ִ� 60��
          locaryOrderList[i, j] := '';

      sNowRate := ''; // ���� ������ �⺻��� ������.
      lvs_ReceiveText := ''; // �ӽú��� : Socket���� ���
      locbWkToCust := False;

      // �� ���п� ���� �� Į�� ������ �ش�.
      Proc_SetFormColor_3(10);

      loc_sHoTransArea := ''; // ȣ��ȯ ������;

      if TCK_USER_PER.JON_ChargeSave = '1' then
        btn_ChargeSave.Enabled := False
      else
        btn_ChargeSave.Enabled := True;

  //    cxCurPathRate.Value := 0; // �������
      cxTmWaitTime.Text := '00:00'; // ���ð� �ʱ�ȭ.
      cxCurWaitTmRate.Value := 0; // �����
      cxCurRevisionRate.Value := 0; // �����ݾ�

      meoBigo2.Clear; // ����2
      cxDriverCharge.Text := ''; // �������� �ʱ�ȭ.

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
      // ����� ������ ������ �ʱ�ȭ �Ѵ�.
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
      ViaNowTag := 1;   //���� �Է����� ��������ġ
      ViaADDTag := 0;   //���� �߰��� ��������ġ
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

    GBStartXYView.Visible := False;     //��ǥ
    GBEndXYView.Visible := False;     //��ǥ

    pbPayMethod := -1;   // ������ ���ý� �������� ���簪 ���� �ʱ�ȭ.

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
    cboBrOnly.Properties.Items.Insert(0, '������ü');
    cboBrOnly.ItemIndex := 0;
    cboBrOnly.Tag := 0;
ErrLine := '25';
    SetCboBranch(bBrNoSetType);
ErrLine := '26';
    lcsSta1 := '';
    lcsSta2 := '';
    lcsSta3 := ''; // ��1, ��2, ��3

    lcsStaDocId := '';
    lcsStaCellSel := '';
    lcsStaSchWord := '';
    GS_Grid_DEP := '';


    lcsEnd1 := '';
    lcsEnd2 := '';
    lcsEnd3 := ''; // ��1, ��2, ��3

    lcsEndDocId := '';
    lcsEndCellSel := '';
    lcsEndSchWord := '';
    GS_Grid_DES := '';

    lg_Save := '';

    loc_RateNOT := False; // ��� ����� ����.
    FIsCalcPrice := False;

    // �÷����� ����(�����Ǹ� �����)
    if GS_PRJ_AREA = 'S' then
    begin
      BtnPlusYN.Down := False;
      BtnPlusYN.Enabled := False;
      BtnPlusYN.Visible := True;
      proc_PlusCall_CtrlYN;                // �÷����� ��뿩�� üũ
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
    // �����ÿ� �Ǵ� �����ÿ� ��ư��ġ ����.
    SetCmdOrderUpdate;
ErrLine := '28';
    LoadPayMethod;
ErrLine := '29';
    // KCP ī�� ���� ���� ��뿩�� üũ. 2011-10-19.
    if IsCardUseBranch_KCP(Proc_BRNOSearch) = '03' then
    begin
      cbCardSanction.Enabled := True;
      cbCardSanction.Caption := 'ī�����';
    end else
    begin
      cbCardSanction.Enabled := False;
      cbCardSanction.Caption := 'ī�����';
    end;
ErrLine := '30';
    pnl_charge.Caption := '';
    Lbl_Distance.Caption := '';

    //--------------- ī����� ���� �ʱ�ȭ.
    locCardPaySeq := '';   // �����Ϸù�ȣ
    locCardTranNo := '';   // �ŷ���ȣ
    locCardPayInfo:= '';   // ī����� ����
ErrLine := '31';
    if cbbPayMethod.Text = PAY_METHOD_MONEY then
    begin
      if IsCardUseBranch_KCP(Proc_BRNOSearch) = '03' then
      begin
        cbCardSanction.Caption := '���ݿ���';
        cbCardSanction.Enabled := True;
      end;
    end	else
    begin
      cbCardSanction.Enabled := False;
      cbCardSanction.Caption := 'ī�����';
    end;
ErrLine := '32';
    if cbbPayMethod.Text = PAY_METHOD_POST_MILE then                  // 20130603  LYB
    begin
      if IsCardUseBranch_KCP(Proc_BRNOSearch) = '03' then
      begin
        cbCardSanction.Caption := '��������';
        cbCardSanction.Enabled := True;
      end;
    end	else
    begin
      cbCardSanction.Enabled := False;
      cbCardSanction.Caption := 'ī�����';
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
    if Assigned(Frm_JON30) then frm_JON30.N1.Caption := '���������(��ǥ���̵�)';
    if Assigned(Frm_JON30) then frm_JON30.N2.Enabled := True;
    if Assigned(Frm_JON30) then frm_JON30.N2.Caption := '����������(��ǥ���̵�)';

    if Assigned(Frm_JON30) then Frm_JON30.N6.Enabled := True;
    if Assigned(Frm_JON30) then Frm_JON30.N6.Caption := '���������(�ּ�+��ǥ�̵�)';
    if Assigned(Frm_JON30) then Frm_JON30.N7.Enabled := True;
    if Assigned(Frm_JON30) then Frm_JON30.N7.Caption := '����������(�ּ�+��ǥ�̵�)';
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

    OrgStr := FCurrSpop.Lines.Text;  //���� �ִ�����

    wStr := meoStartArea.Text;
    begin
      if (Atag > 7) and (Atag < 96)then
      begin
        if FSpopList.Values[ASpop] = 'Ź�۱�縸' then
        begin
          if Pos('Ź��)', wStr) < 1 then
          begin
            cb_00.Down := True;
            AddStr := 'Ź��)' + AddStr;
            sTaksong := 'y';
          end;
        end else
        if FSpopList.Values[ASpop] = '�����縸' then
        begin
          if Pos('����)', wStr) < 1 then
          begin
            cb_01.Down := True;
            AddStr := '����)' + AddStr;
          end;
        end else
        if FSpopList.Values[ASpop] = '��������' then
        begin
          if Pos('����)', wStr) < 1 then
          begin
            cb_02.Down := True;
            AddStr := '����)' + AddStr;
          end;
        end else
        if FSpopList.Values[ASpop] = '��������' then
        begin
          if Pos('����)', wStr) < 1 then
          begin
            cb_03.Down := True;
            AddStr := '����)' + AddStr;
          end;
        end else
        if FSpopList.Values[ASpop] = '��ƽ��縸' then
        begin
          if Pos('��ƽ)', wStr) < 1 then
          begin
            cb_04.Down := True;
            AddStr := '��ƽ)' + AddStr;
            sStickCall := 'y';
          end;
        end else
        begin
          iPos := Pos('��', FSpopList.Values[ASpop]);
          if iPos > 0 then
          begin
            sDesc   := Copy(FSpopList.Values[ASpop], 1, iPos - 1);
            sSelBtn := Copy(FSpopList.Values[ASpop], iPos + 1, Length(FSpopList.Values[ASpop]) - iPos);
          end else
          begin
            sDesc   := FSpopList.Values[ASpop];
          end;

          // ��ư�� �ڵ����� �����ָ� '{' '}' ����
          if sSelBtn <> '' then
          begin
            AddStr := sDesc + AddStr;
            sTmp := TStringList.Create;
            try
              sTmp.Delimiter := '/';
              sTmp.DelimitedText := sSelBtn;

              for i := 0 to sTmp.Count -1 do
              begin
                if sTmp[i] = 'Ź' then
                begin
                  cb_00.Down := True;
                  SetMunuChecked('Ź', True);
                end else
                if sTmp[i] = '��' then
                begin
                  cb_01.Down := True;
                  SetMunuChecked('��', True);
                end else
                if sTmp[i] = '��' then
                begin
                  cb_02.Down := True;
                  SetMunuChecked('��', True);
                end else
                if sTmp[i] = '��' then
                begin
                  cb_03.Down := True;
                  SetMunuChecked('��', True);
                end else
                if sTmp[i] = '��' then
                begin
                  cb_04.Down := True;
                  SetMunuChecked('��', True);
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
  		if Atag = 96 then  //�ݹ�
  		begin
  			i := Pos('�ݹ�)', String(wStr));
  			if Pos('�ݹ�)', wStr) < 1 then
  			begin
  				AddStr := '�ݹ�)' + AddStr;
  			end	else
  			if i = 1 then
  			begin
  				OrgStr := Copy(String(wStr), 1 + Length(String('�ݹ�)')), Length(String(wStr)) - Length(String('�ݹ�)')));
  			end else
	  		if i > 1 then
		  	begin
			  	OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('�ݹ�)')) , Length(String(wStr)) - i);
  			end;
  		end else
      if Atag = 97 then  //�ĺ�
      begin
        i := Pos('�ĺ�)', String(wStr));
        if i = 1 then
        begin
          OrgStr := Copy(String(wStr), 1 + Length(String('�ĺ�)')), Length(String(wStr)) - Length(String('�ĺ�)')));
        end else
        if i > 1 then
        begin
          OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('�ĺ�)')) , Length(String(wStr)) - i);
        end;

        i := Pos('����)', String(wStr));
        if i = 1 then
        begin
          OrgStr := Copy(String(wStr), 1 + Length(String('����)')), Length(String(wStr)) - Length(String('����)')));
        end else
        if i > 1 then
        begin
          OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('����)')) , Length(String(wStr)) - i);
        end;

        i := Pos('����)', String(wStr));
        if i = 1 then
        begin
          OrgStr := Copy(String(wStr), 1 + Length(String('����)')), Length(String(wStr)) - Length(String('����)')));
        end else
        if i > 1 then
        begin
          OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('����)')) , Length(String(wStr)) - i);
        end;

  			i := Pos('����', wStr);
  			if i > 0 then
  			begin
  				if i = 1 then
  				begin
  					OrgStr := Copy(wStr, 1 + Length('����'), Length(wStr) - Length('����'));
  				end else
  				if i > 1 then
  				begin
  					OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('����') , Length(wStr) - i);
  				end;
  			end	else
  			begin
    			i := Pos('��', wStr);
    			if i = 1 then
    			begin
    				OrgStr := Copy(wStr, 1 + Length('��'), Length(wStr) - Length('��'));
    			end else
    			if i > 1 then
    			begin
    				OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('��') , Length(wStr) - i);
    			end;
  			end;

        AddStr := '';
      end else
      if Atag = 98 then  //�ĺ�
      begin
        if Pos('�ĺ�)', wStr) < 1 then
        begin
          i := Pos('�ĺ�)', String(wStr));
          if i = 1 then
          begin
            OrgStr := Copy(String(wStr), 1 + Length(String('�ĺ�)')), Length(String(wStr)) - Length(String('�ĺ�)')));
          end else
          if i > 1 then
          begin
            OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('�ĺ�)')) , Length(String(wStr)) - i);
          end;

          i := Pos('����)', String(wStr));
          if i = 1 then
          begin
            OrgStr := Copy(String(wStr), 1 + Length(String('����)')), Length(String(wStr)) - Length(String('����)')));
          end else
          if i > 1 then
          begin
            OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('����)')) , Length(String(wStr)) - i);
          end;

          i := Pos('����)', String(wStr));
          if i = 1 then
          begin
            OrgStr := Copy(String(wStr), 1 + Length(String('����)')), Length(String(wStr)) - Length(String('����)')));
          end else
          if i > 1 then
          begin
            OrgStr := Copy(String(wStr), 1, i-1) + Copy(String(wStr), i + Length(String('����)')) , Length(String(wStr)) - i);
          end;

  				i := Pos('����', wStr);
  				if i > 0 then
  				begin
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('����'), Length(wStr) - Length('����'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('����') , Length(wStr) - i);
  					end;
  				end	else
  				begin
    				i := Pos('��', wStr);
    				if i = 1 then
    				begin
    					OrgStr := Copy(wStr, 1 + Length('��'), Length(wStr) - Length('��'));
    				end else
    				if i > 1 then
    				begin
    					OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('��') , Length(wStr) - i);
    				end;
  				end;

          if (GB_JON_BUBHUUSE) and (cxtCuBubin.Hint <> '') then
            AddStr := '����)'
          else if (gsJON01AfterMoneyYN = 'TRUE') and (gsJON01AfterMoneyWordUse = False) then
            AddStr := '�ĺ�)';
        end;
      end else
      if Atag = 99 then  //����
      begin
  			if ASpop = '����' then
	  		begin
  				if Pos('����', wStr) < 1 then
  				begin
  					i := Pos('�ĺ�)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('�ĺ�)'), Length(wStr) - Length('�ĺ�)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('�ĺ�)') , Length(wStr) - i);
  					end;

  					i := Pos('����)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('����)'), Length(wStr) - Length('����)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('����)') , Length(wStr) - i);
  					end;

  					i := Pos('����)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('����)'), Length(wStr) - Length('����)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('����)') , Length(wStr) - i);
  					end;

  					i := Pos('����', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('����'), Length(wStr) - Length('��'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('����') , Length(wStr) - i);
  					end;
  					AddStr := ASpop ;
  				end;
  			end	else
  			if ASpop = '��' then
  			begin
  				if Pos('��', wStr) < 1 then
  				begin
  					i := Pos('�ĺ�)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('�ĺ�)'), Length(wStr) - Length('�ĺ�)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('�ĺ�)') , Length(wStr) - i);
  					end;

  					i := Pos('����)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('����)'), Length(wStr) - Length('����)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('����)') , Length(wStr) - i);
  					end;

  					i := Pos('����)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('����)'), Length(wStr) - Length('����)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('����)') , Length(wStr) - i);
  					end;

  					i := Pos('��', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('��'), Length(wStr) - Length('��'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('��') , Length(wStr) - i);
  					end;
  					AddStr := ASpop ;
  				end;
  			end	else
  			begin
  				if Pos('����)', wStr) < 1 then
  				begin
  					i := Pos('�ĺ�)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('�ĺ�)'), Length(wStr) - Length('�ĺ�)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('�ĺ�)') , Length(wStr) - i);
  					end;

  					i := Pos('����)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('����)'), Length(wStr) - Length('����)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('����)') , Length(wStr) - i);
  					end;

  					i := Pos('����)', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('����)'), Length(wStr) - Length('����)'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('����)') , Length(wStr) - i);
  					end;

  					i := Pos('����', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('����'), Length(wStr) - Length('����'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) + Copy(wStr, i + Length('����') , Length(wStr) - i);
  					end;

  					i := Pos('��', wStr);
  					if i = 1 then
  					begin
  						OrgStr := Copy(wStr, 1 + Length('��'), Length(wStr) - Length('��'));
  					end else
  					if i > 1 then
  					begin
  						OrgStr := Copy(wStr, 1, i-1) +
  																 Copy(wStr, i + Length('��') , Length(wStr) - i);
  					end;

  					if (GB_JON_BUBHUUSE) and (cxtCuBubin.Hint <> '') then
  						AddStr := '����)'
  					else
  						AddStr := '����)';
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
                                            , UrlEncode(UTF8Encode('����� : ' + meoStartArea.Text))]);
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

            //�ε�� �ڵ�Ŭ��//
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
            //�ε�� �ڵ�Ŭ��//
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
          // ��ȭ��ȣ ��ġã�� �⺻ ��ġ�� ���Ѵ�.
          Proc_TellAreaFormCreate;
          pnlTelNESearch.Visible := True;
          cxTxtTelNESelect.Text := '';
          cxTxtTelNESelect.SetFocus;
        end;
      end else
      if Atag = 3 then
      begin
        GBStartXYView.Visible := True;     //��ǥ
      end else
      if Atag = 5 then
      begin
        // �� �����(START), ������(DEST) ������ �����Ѵ�.
        Proc_Cust_AreaSave('START');
      end else
      if Atag = 6 then
      begin
        // �� �����(START), ������(DEST) ������ �����Ѵ�.
        Proc_Cust_AreaSave('DEST');
      end
      else AddStr := FSpopList.Values[ASpop] + AddStr;
    end;
    FCurrSpop.Lines.Text := AddStr + OrgStr;
    FCurrSpop.SelStart := Length(AddStr + OrgStr) - 2;  //  20130715  LYB  ������忡�� ���������� ��Ŀ�� ������ ���ڰ� �ڵ����� ����.. �������ڷ� ��Ŀ�� �̵�
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

  FSpopList.Add('����� ��������=����� ��������');
  FSpopList.Add('����� �ε��=����� �ε��');
  FSpopList.Add('����� ��ȭ��ȣ�˻�=����� ��ȭ��ȣ�˻�');
  FSpopList.Add('����� ��ǥ=����� ��ǥ');
  FSpopList.Add('-=-');
  FSpopList.Add('��������� ����=��������� ����');
  FSpopList.Add('���������� ����=���������� ����');
  FSpopList.Add('-=-');
  FSpopList.Add('Ź�۱�縸=Ź�۱�縸');
  FSpopList.Add('�����縸=�����縸');
  FSpopList.Add('��������=��������');
  FSpopList.Add('��������=��������');
  FSpopList.Add('��ƽ��縸=��ƽ��縸');

  FSpopList.AddStrings(GS_UserBigoList);

  while pmSpop.Items.Count > 2 do
  begin
    if pmSpop.Items[0].Caption = '����' then
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

      if ( cb_00.Down ) And ( Menu.Caption = 'Ź�۱�縸') then Menu.Checked := True;
      if ( cb_01.Down ) And ( Menu.Caption = '�����縸') then Menu.Checked := True;
      if ( cb_02.Down ) And ( Menu.Caption = '��������'  ) then Menu.Checked := True;
      if ( cb_03.Down ) And ( Menu.Caption = '��������'  ) then Menu.Checked := True;
      if ( cb_04.Down ) And ( Menu.Caption = '��ƽ��縸') then Menu.Checked := True;

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

  FEpopList.Add('������ ��ǥ=������ ��ǥ');
  FEpopList.Add('������ �ε��=������ �ε��');
  FEpopList.Add('-=-');
  FEpopList.Add('��������� ����=��������� ����');
  FEpopList.Add('���������� ����=���������� ����');

  FEpopList.AddStrings(GS_UserBigoList);

  while pmEpop.Items.Count > 2 do
  begin
    if pmEpop.Items[0].Caption = '����' then
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

    OrgStr := FCurrEpop.Lines.Text;  //���� �ִ�����

    if Atag > 4 then
    begin
      iPos := Pos('��', FEpopList.Values[AEpop]);
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
      GBEndXYView.Visible := True;     //��ǥ
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
                                            , UrlEncode(UTF8Encode('������ : ' + meoEndArea.Text))]);
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

            //�ε�� �ڵ�Ŭ��//
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
            //�ε�� �ڵ�Ŭ��//


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
      // �� �����(START), ������(DEST) ������ �����Ѵ�.
      Proc_Cust_AreaSave('START');
    end else
    if Atag = 4 then
    begin
      // �� �����(START), ������(DEST) ������ �����Ѵ�.
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

  // KCP ī�� ���� ���� ��뿩�� üũ. 2011-10-19.
  if IsCardUseBranch_KCP(Proc_BRNOSearch) = '03' then
    cbbPayMethod.Properties.Items.Add(PAY_METHOD_CARD_KCP);

  if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

	if (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100'))  then //�λ꿬����Ʈ2K 20140221 KHS
	begin
		cbbPayMethod.Properties.Items.Add(PAY_METHOD_BUSAN);
		cbbPayMethod.Properties.Items.Add(PAY_METHOD_BUSAN3K);
	end;

  cbbPaymethod.ItemIndex := 0;

	if IsCardUseBranch_KCP(Proc_BRNOSearch) = '03' then
	begin
		cbCardSanction.Caption := '���ݿ���';
		cbCardSanction.Enabled := True;
	end else
	begin
		cbCardSanction.Enabled := False;
		cbCardSanction.Caption := 'ī�����';
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
       ( (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) ) then //�λ꿬����Ʈ2K 20140221 KHS
		begin
//			cbbPostTime.Properties.Items.Add(POST_TIME_BUSAN20);
		end
  end else
  begin
    cbbPostTime.Properties.Items.Add(POST_TIME_NOPAY);
  end;

  cbbPostTime.ItemIndex := 0;
  // 2011.03.02 �ĺұ⺻�� cbbPayMethodPropertiesChange ���� ���Ŀ� �ε�(GT_USERIF.AfterPayMidx)
end;

function TFrm_JON01.IsPayMethodPost: Boolean;
begin
  Result := Pos('�ĺ�', cbbPayMethod.Text) > 0;
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
  pnlNewCustYN.Visible := False; // �ű԰������� ����â ����.
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
  // �޴� �ĺ��� �б�..
  iRate := TMenuItem(Sender).Tag;
  sTitle := LeftStr(TMenuItem(Sender).Caption, 5);
  cxTmWaitTime.Text := sTitle;
  cxCurWaitTmRate.Value := iRate;
end;

// ���ð��� ��� �޴� ����.
procedure TFrm_JON01.Proc_WTRMenuCreate(sTitle, sComponentName: string; iTagMoney: Integer);
var
  mm: TMenuItem;
begin
  mm := TMenuItem.Create(advPMnuWTR);
  mm.AutoHotkeys := maManual;
  mm.Caption := sTitle;
  mm.Name := 'mm_' + sComponentName;
  mm.Tag := iTagMoney; // �޴��ĺ�ID ��.
  mm.OnClick := Proc_WTRateMenu_Click; // �޴�Ŭ�� �̺�Ʈ ����.
  advPMnuWTR.Items.Add(mm); // ���� Ÿ��Ʋ�� ���� �޴� ����.
end;

procedure TFrm_JON01.tmFormCloseTimer(Sender: TObject);
begin
  if tmFormClose.Tag = 99 then
  begin // ȭ�� �ݱ� or LOCK ���� �Ѵ�.
    tmFormClose.Enabled := False; // timer end.
    if loc_TmClose = 'CLOSE' then
    begin
      btnCmdExitClick(Self);
    end else
    if loc_TmClose = 'UNLOCK' then
    begin
      Proc_AcceptLock('2'); // �ش������ Lock�� ���� �Ѵ�.
    end;
  end;
end;

procedure TFrm_JON01.tmMentTimer(Sender: TObject);
begin
  // ���纰 ��� ��Ʈ�� �ݴ´�.
  tmMent.Enabled := False;
  if tmMent.Interval = 5000 then
  begin
    pnlBrNoMent.Visible := False; // ���� �ȳ���Ʈ ����.
    pnlNewCustYN.Visible := False; // �ű԰������� ����â ����.
  end else
  begin
    pnl_charge.Visible := False;
//-    BtnSR.Visible := False;
  end;
end;

procedure TFrm_JON01.tmrChargeTimer(Sender: TObject);
begin
  tmrCharge.Enabled := False;
  // �Ÿ� ����� ������ ��� ����� �Ѵ�.
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
      // ��ǥ��ȣ �� �⺻ ���� ��� �ݿ� ���θ� ���� �Ѵ�.[True:�ݿ�, False:�̹ݿ�]
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

  // �������ϰ�� �ڵ� ��� ó�� 2014.06.18 LYB
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
    // ��ǥ��ȣ �� �⺻ ���� ��� �ݿ� ���θ� ���� �Ѵ�.[True:�ݿ�, False:�̹ݿ�]
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

  if pos('�α�', ls_Text) > 1 then
  begin
    ls_Text := Copy(ls_Text, 1, pos('�α�', ls_Text) - 1);
  end;

  if pos('�α�', ls_Text) > 1 then
  begin
    ls_Text := Copy(ls_Text, 1, pos('�α�', ls_Text) - 1);
  end;

  if pos('��ó', ls_Text) > 1 then
  begin
    ls_Text := Copy(ls_Text, 1, pos('��ó', ls_Text) - 1);
  end;

  if Copy(ls_Text,Length(ls_Text),1) = '��' then
  begin
    ls_Text := Copy(ls_Text, 1, Length(ls_Text)-1);
  end;

  ls_Text := Frm_JON30.Proc_AreaSearch_KWBaseComp(ls_Text);

  // '@' �� '����Ʈ' �� ġȯ.
  ls_Text := FastReplace(ls_Text, '@', '����Ʈ', False);

  if Pos('����', ls_Text) > 0  then
  begin
    ls_Text := FastReplace(ls_Text, '����', '', False);
  end else
  // '4' �� '��Ÿ�' �� ġȯ.
  if Copy(ls_Text,Length(ls_Text),1) = '4' then
  begin
    if ( Not StrToIntDef(RightStr(Trim(Copy(ls_Text,Length(ls_Text)-1, 1)), 1), -1) In [0,1,2,3,4,5,6,7,8,9] ) And
       ( RightStr(Trim(Copy(ls_Text,Length(ls_Text)-1, 1)), 1) <> '-' ) then
      ls_Text := CopyStr(ls_Text, 1, Length(ls_Text)-1) + '��Ÿ�';
  end;

  iSpace := System.AnsiStrings.AnsiPos(' ', ls_Text);

  ls_Text := Frm_JON30.fnc_TruncChar(ls_Text);

  if iSpace > 0 then
  begin
    Insert(' ', ls_Text, iSpace);
    Log('JON01 iSpace ls_Text : ' + ls_Text + IntToStr(iSpace), LOGDATAPATHFILE);
  end;

  ls_Text := lcsActiveEdit + ls_Text;  // ��Ÿ�� �ѱ۷� ������ �ҹ��ڸ� �ν�


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
      sError := 'JON01[proc_WiseNut_Response]��������:' + e.message;
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
      // 4ȸ �˻��Ŀ��� �ڷᰡ ������ �����Ÿ� ó��
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
        if giRealKmIdx = 1 then curKm.Text := '�˻���..'
                           else curKm.Text := '�˻�' + IntToStr(giRealKmIdx) + '..';
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

  Lbl_Distance.Caption := Format('��Ž)%s-%s ����)%s', [curKm.Text, FloatToStr(fViaKm) + 'Km', FloatToStr(fChgKm) + 'Km']);

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

	// ������� �϶� ��� ����� ����.
  if loc_RateNOT = True then Exit;

  if not Self.Visible then Exit;

	if tmrXYChange.Tag = 0 then
	begin
  	if ( gJONStaChkXY.X <> cxtStartXval.Text ) And (  cxtStartXval.Text <> '' ) then
		begin
			if ( gJONStaChkXY.X <> '' ) And ( gJONStaChkXY.Y <> '' ) And ( gJONStaChkXY.Area1 <> '') And ( cxtStartXval.Text <> '' ) then
      begin
				sErrMsg := '[��-���� X] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + '-' + gJONStaChkXY.Gubun;
				Assert(False, sErrMsg);
        Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[��-����]');
      end else
      begin
				sErrMsg := '[��-���� X] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + '-' + gJONStaChkXY.Gubun;
				Assert(False, sErrMsg);

        Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[��-����]');
      end;
    end;

    if ( gJONStaChkXY.Y <> cxtStartYval.Text )  And (  cxtStartYval.Text <> '' ) then
    begin
      if ( gJONStaChkXY.X <> '' ) And ( gJONStaChkXY.Y <> '' ) And ( gJONStaChkXY.Area1 <> '') And ( cxtStartYval.Text <> '' ) then
      begin
        sErrMsg := '[��-���� Y] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + '-' + gJONStaChkXY.Gubun;
        Assert(False, sErrMsg);
        Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[��-����]');
      end else
      begin
        sErrMsg := '[��-���� Y] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + '-' + gJONStaChkXY.Gubun;
				Assert(False, sErrMsg);
				Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[��-����]');
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
          if True or (BtnStLock.Hint = 'F4)����') then
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
          if True or (BtnEdLock.Hint = 'F4)����') then
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

  ls_Text := LowerCase(ls_Text);  // ��Ÿ�� �ѱ۷� ������ �ҹ��ڸ� �ν�

  // ���� �ܾ �˻����� ���� ��� �˻� ����.
 if ls_Text = sPreSuggestWord then Exit;
  sPreSuggestWord := ls_Text;

  proc_Wisenut_GetSuggest(ls_Text);
end;

// ������ӿ��� Suggest ������ ��������..
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
    sTargetParam := ReplaceAll(sTargetParam, '����', '01');
    sTargetParam := ReplaceAll(sTargetParam, '���', '02');
    sTargetParam := ReplaceAll(sTargetParam, '��õ', '03');
    sTargetParam := ReplaceAll(sTargetParam, '����', '04');
    sTargetParam := ReplaceAll(sTargetParam, '�泲', '05');
    sTargetParam := ReplaceAll(sTargetParam, '���', '06');
    sTargetParam := ReplaceAll(sTargetParam, '����', '07');
    sTargetParam := ReplaceAll(sTargetParam, '�뱸', '08');
    sTargetParam := ReplaceAll(sTargetParam, '���', '09');
    sTargetParam := ReplaceAll(sTargetParam, '�λ�', '10');
    sTargetParam := ReplaceAll(sTargetParam, '���', '11');
    sTargetParam := ReplaceAll(sTargetParam, '�泲', '12');
    sTargetParam := ReplaceAll(sTargetParam, '����', '13');
    sTargetParam := ReplaceAll(sTargetParam, '����', '14');
    sTargetParam := ReplaceAll(sTargetParam, '����', '15');
    sTargetParam := ReplaceAll(sTargetParam, '����', '16');
    sTargetParam := ReplaceAll(sTargetParam, '����', '17');
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

// ������ӿ��� Suggest ������ ��������..
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
  Result := Trim(RightStr(cboBranch.Text, 5)); // �����ڵ�,�����ڵ�
end;

// ���õ� ������������ ��ǥ��ȣ�� ���� �Ѵ�.
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

// �� ��޺� �� Į�� ������ �ش�.
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
			Log('����� : '+ sTemp, LOGDATAPATHFILE);
		end;
		SetMileColorChange;
	end;
end;

procedure TFrm_JON01.Proc_SetFormColor_1(iType: integer);
begin
  if iType = 0 then
  begin
    // 0.�ҷ�(����)
    Self.pnlJonMain.Color := clRed;
  end else
  if iType = 1 then
  begin
    // 1.����(��Ȳ)
    Self.pnlJonMain.Color := $004080FF;
  end else
  if iType = 2 then
  begin
    // 2.�Ϲ�(�ϴû�)
    Self.pnlJonMain.Color := $00FAEDE2;
  end else
  if iType = 3 then
  begin
    // 3.���(����)
    Self.pnlJonMain.Color := $0014AACF;
  end else
  if iType = 4 then
  begin
    // 4.�ֿ��(����)
    Self.pnlJonMain.Color := clSilver;
  end else
  if iType = 5 then
  begin
    // 5.VIP(Ȳ�ݻ�)
    Self.pnlJonMain.Color := RGB(255, 200, 0);
  end else
  if iType = 10 then
  begin
    // 10.�⺻Į��
    Self.pnlJonMain.Color := $00FAEDE2;
  end;
end;

// frm_Jon03.frmJON011 ���� CU_LEVEL_TYPE : 0 : �� �ڵ���޺� �� Į�� ������ �ش�.
procedure TFrm_JON01.Proc_SetFormColor_2(iType: integer);
begin
  if iType = 0 then
  begin
    // �ֿ����
    cxLblCuLevel.Color := $0000F2F2;
    cxLblCuLevel.Caption := '�ֿ����';
  end else
  if iType = 1 then
  begin
    // �����
    cxLblCuLevel.Color := $00E2FBC8;
    cxLblCuLevel.Caption := '�����';
  end else
  if iType = 2 then
  begin
    // �Ϲݰ�  $00EEEEEC;
    cxLblCuLevel.Color := $00FFFFE6;
    cxLblCuLevel.Caption := '�Ϲݰ�';
  end else
  if iType = 9 then
  begin
    // ����϶�,,
    cxLblCuLevel.Color := $00EEEEEC;
    cxLblCuLevel.Caption := '�븮���';
  end else
 if iType = 10 then
  begin
    // �⺻Į��,,
    cxLblCuLevel.Color := $00FAEDE2;
    cxLblCuLevel.Caption := '�Ϲݰ�';
  end;
end;

procedure TFrm_JON01.Proc_SetFormColor_3(iType: integer);
begin
  if iType = 0 then
  begin
    // 0.����, 2.�ҷ�[�Ź������� �̻��]
    cxLblBar1.Style.Color := $0000F2F2;
    cxLblBar2.Style.Color := $0000F2F2;
  end else
  if iType = 1 then
  begin
    // 1.����
    cxLblBar1.Style.Color := $00E2FBC8;
    cxLblBar2.Style.Color := $00E2FBC8;
  end else
  if iType = 3 then
  begin
    // 4.����
    cxLblBar1.Style.Color := $00FFFFE6;
    cxLblBar2.Style.Color := $00FFFFE6;
  end else
  if iType = 9 then
  begin
    // 9.����϶�,,
    cxLblBar1.Style.Color := $00FFFFE6;
    cxLblBar2.Style.Color := $00FFFFE6;
  end else
  if iType = 10 then
  begin
    // 10.�⺻Į��,,
    cxLblBar1.Style.Color := $00FFFFE6;
    cxLblBar2.Style.Color := $00FFFFE6;
  end;
end;

// ���縮��Ʈ���� �����ڵ�, �����ڵ�� ù��° ��ǥ��ȣ index�� ã�´�.
function TFrm_JON01.Proc_HeNoBrNoListIdxFind(sHdNo, sBrNo: string): Boolean;
var
  i: integer;
  str: string;
begin
  Result := False;
//  cboBranch.Tag := 10;
  // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
  for i := 0 to cboBranch.Properties.Items.Count - 1 do
  begin
    str := cboBranch.Properties.Items[i];
    if (Pos(sHdNo, str) > 0) and (Pos(sBrNo, str) > 0) then
    begin //�����ڵ�
      cboBranch.ItemIndex := i;
      Result := True;
      Break;
    end;
  end;
//  cboBranch.Tag := 0;
  // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
end;

// ���縮��Ʈ���� ��ǥ��ȣ, �����ڵ�� index�� ã�´�.
function TFrm_JON01.Proc_BrNoListIdxFind(sBrNo, sKeyNumber: string): Boolean;
var
  i: integer;
  Str: string;
begin
  Result := False;
  sKeyNumber := Trim(sKeyNumber);
  cboBranch.Tag := 10;

  // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
  for i := 0 to cboBranch.Properties.Items.Count - 1 do
  begin
    Str := cboBranch.Properties.Items[I];

    if (Pos(sBrNo, Str) > 0) and (Pos(Trim(sKeyNumber), Str) > 0) then
    begin //�����ڵ�
      Result := True;
      Break;
    end;
  end;

	if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
		Log('[Billit]JON01.Proc_BrNoListIdxFind : �޺� ������' + cboBranch.Text , LOGDATAPATHFILE  );

	if Result then
		cboBranch.ItemIndex := I;

	if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
		Log('[Billit]JON01.Proc_BrNoListIdxFind : �޺� ������' + cboBranch.Text , LOGDATAPATHFILE  );

  cboBranch.Tag := 0;
  // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
end;

// �÷����� ��뿩�� üũ
function TFrm_JON01.proc_PlusCall_CtrlYN : string;
var sTmp : string;
begin
  sTmp := '';
  // �÷����� ����(�����Ǹ� �����)
  if GS_PRJ_AREA = 'S' then
  begin
    sTmp := Proc_BRNOSearch;
    // �÷����� ��� [����âüũ�ɼ�,����,����,����] ��ȸ
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
    if copy(sTmp,1,4) = 'nyyy' then    // �̼���. ���
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

// �����ÿ� �Ǵ� �����ÿ� ��ư��ġ ����.
procedure TFrm_JON01.SetCboBranch(bBrNoSetType: boolean = False);
Var i : Integer;
    lsBrNo : String;
begin
  try
    // �ݼ��� ���縮��Ʈ �缳�� ����..
    if bBrNoSetType = True then
    begin
      if cboBrOnly.ItemIndex <= 0 then
        lsBrNo := ''
      else
        lsBrNo := scb_BranchCode[scb_BranchName.IndexOf(cboBrOnly.Text)];

      if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

      // �ݼ��� ���縮��Ʈ �� ����ȭ���� ���縮��Ʈ�� �ٸ���쿡�� �缳�� ���ش�.
      if cboBranch.Properties.Items.Count <> scb_DsBranchCode.Count then
      begin
        cboBranch.Tag := 10;
        // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
        cboBranch.Properties.Items.Clear; // �����
        // ���縮��Ʈ�� ��´�.
        for i := 0 to scb_DsBranchCode.Count - 1 do
        begin
          // �����ڵ�   // �����ڵ�   // �����   // ��ǥ��ȣ
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
        // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.

  //      lst_BrList.Items := cboBranch.Properties.Items
      end;

      if Not pJON01Dock.bUNDock then pJON01Dock.GUBUN := GT_SEL_BRNO.Gubun;
      if Not pJON01Dock.bUNDock then pJON01Dock.BrNo  := GT_SEL_BRNO.BrNo;

      // �������� ������ �ƴϸ�.. �����޴��� ���õ� ���������� ���� ���ش�.
      if pJON01Dock.GUBUN <> '0' then
      begin // ���縮��Ʈ���� �����ڵ�, �����ڵ�� ù��° ��ǥ��ȣ index�� ã�´�.  CDS. 080818.
        if not Proc_HeNoBrNoListIdxFind(Trim(pJON01Dock.HDNO), Trim(pJON01Dock.BrNo)) then
        begin
          cboBranch.Tag := 10;
          // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
          if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
            cboBranch.ItemIndex := -1
          else
            cboBranch.ItemIndex := 0; // �⺻������ �����Ѵ�.
          cboBranch.Tag := 0;
          // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
        end;
      end else
      begin // ȯ�漳���� ������ ��ǥ����� �����Ѵ�.
        if (GS_MainBranch.sBrNo <> '') and (GS_MainBranch.sKeyNumber <> '') then
        begin
          // ���縮��Ʈ���� ��ǥ��ȣ, �����ڵ�� index�� ã�´�.
          if not Proc_BrNoListIdxFind(GS_MainBranch.sBrNo, GS_MainBranch.sKeyNumber) then
          begin
            cboBranch.Tag := 10;
            // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
            if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
              cboBranch.ItemIndex := -1
            else
              cboBranch.ItemIndex := 0; // �⺻������ �����Ѵ�.
            cboBranch.Tag := 0;
            // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
          end;
        end else
        begin
          cboBranch.Tag := 10;
          // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
          if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
            cboBranch.ItemIndex := -1
          else
            cboBranch.ItemIndex := 0; // �⺻������ �����Ѵ�.
          cboBranch.Tag := 0;
          // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
        end;
      end;
    end else
    begin
      // �ݼ��� ���縮��Ʈ �� ����ȭ���� ���縮��Ʈ�� �ٸ���쿡�� �缳�� ���ش�.
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
    StartListN := '0';  //����� ����Ʈ���ð� �ʱ�ȭ
    EndListN := '0';    //������ ����Ʈ���ð� �ʱ�ȭ
    if Pos('��ȸ', Self.Caption) > 0 then
    begin
      btnCmdMultiCall.Enabled := False;
      btnCmdQuestion.Enabled := False;
      btnCmdUpdSave.Visible := True; // ������ư
      btnCmdUpdSave.Enabled := True;
    end else
    if (Pos('����', Self.Caption) = 0 ) then
    begin
      btnCmdQuestion.Enabled := True;
      btnCmdUpdSave.Enabled := False;
      btnCmdMultiCall.Enabled := True;
      J30ShowS := False;
      J30ShowE := False;
      if btnCmdUpdSave.Hint = '�߰�����' then
      begin
        J30ShowS := True;
        J30ShowE := True;
        btnCmdUpdSave.Visible := True; // ������ư
      end else
      begin
        btnCmdUpdSave.Visible := False; // ������ư
      end;
    end else
    begin
      btnCmdMultiCall.Enabled := False;
      btnCmdQuestion.Enabled := False;
      btnCmdUpdSave.Visible := True; // ������ư
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
    // ���� �Ϸù�ȣ�� �޾� ���� ����â�� ���� �ش�.  sTodayGb:1(���Ͽ���), 2:(���ſ���)
    Proc_OrderUpdate_Select(cxtJoinNum.Text, IntToStr(cxtJoinNum.Tag), btnCmdUpdSave.Hint);
    //Perform(WM_NEXTDLGCTL, 0, 0);
  end else
  begin
    cxLblCIDUseFlg.Hint := ''; // CID ��ȸ���� ������ �Ѵ�.  value:CID
    SetPrivateVariable; // ���� ���� ��ȸ ���� ���� �������� �ʱ�ȭ..
    if Length(Trim(cxtCuTel.Text)) < 4 then
    begin
      GMessagebox('����ȭ��ȣ�� ���ų� Ȥ�� �߸� �Էµ� ��ȣ �Դϴ�.', CDMSI);
      self.cxtCuTel.SetFocus;
      Exit;
    end;

    if Length(Trim(cxtCuTel.Text)) = 4 then
		begin
			CustomerSearch('TEL4');
      Exit;
    end;

    cxtCuTel.Text := AddPhoneDDD(cxtCuTel.Text);

    meoStartArea.Hint := 'STOPFOCUS'; // ��Ŀ�� ���̻� �Ѿ�� �ʵ��� �Ѵ�.
    locCustHP_MainNum_Search := '';
    // JON03���� �� ��ȭ��ȣ��  ��ȸ�� �����. ���а�:'CUSTHP'
    // ���õ� ������������ ��ǥ��ȣ�� ���� �Ѵ�.
		Proc_KeyNumberSearch(Proc_MainKeyNumberSearch);
  end;
end;

// ���� �Ϸù�ȣ�� �޾� ���� ����â�� ���� �ش�.  sTodayGb:1(���Ͽ���), 2:(���ſ���); sInsGubun:"����", "�߰�����"
procedure TFrm_JON01.Proc_OrderUpdate_Select(sConfSlip, sTodayGb, sInsGubun: string);
begin
  Proc_OrderUpdate_Select_New(sConfSlip, sTodayGb, sInsGubun);
end;

// ���� ���� ��ȸ ���� ���� �������� �ʱ�ȭ..
procedure TFrm_JON01.SetPrivateVariable;
begin
	locsCuTel := '';
  locsCuTel2 := '';
  lcsCu_seq := ''; // ���� ���õ� ��seq
  locHDNO := '';
  locBRNO := '';
  locKNum := ''; // ��ȸ �� ����, �����ڵ�, ��ǥ��ȣ �ӽ�����.
  locDNIS := '';
  locWkSabun := '';
  locSndTime := '';
  locWkBrNo := ''; // ��ȸ��� ���, ��������ڵ� ����.
end;

// ��ȭ��ȣ, ���� ���� ��ȸ �Ѵ�... sGB : NAME(�������� ��ȸ), : TEL4(��ȭ��ȣ4�ڸ� ��ȸ)
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
  // ���õ� ������������ ��ǥ��ȣ�� ���� �Ѵ�.
  sKeyNumber := Proc_MainKeyNumberSearch;
  sHDNO := Proc_HDNOSearch; // �����ڵ� ������ �д´�.
  sBRNO := Proc_BRNOSearch; // �����ڵ� ������ �д´�.

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
		GMessagebox('��ȭ��ȣ �ϰ��� 4�ڸ�, ���� �ϰ��� 2���̻� �Է��ϼž� �մϴ�.', CDMSI);
		cxtCuTel.Text := '';
		cxtCuTel.SetFocus;
		exit;
  end;

  try
    Param := sType + '��' + sHDNO + '��' + sBRNO + '��' + sKeyNumber + '��' + sSearch;
    if not RequestBase(GetSel05('CUST_SEARCH_TYPE_LIST', 'MNG_CUST.CUST_SEARCH_TYPE_LIST', '100', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('�� ��ȸ  �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    cxCustView.DataController.SetRecordCount(0); // Record �ʱ�ȭ.

    xdom := CoDomDocument.Create;
    xdom.loadXML(XmlData);

    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

    if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      cxCustView.BeginUpdate; // ������ ���� �ʼ�.
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx2('��', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
          Application.ProcessMessages;

          iRow := cxCustView.DataController.AppendRecord; // 1 Record �߰�
          cxCustView.DataController.Values[iRow, 0] := ls_Rcrd[0];
          // ���Ϸù�ȣ
          cxCustView.DataController.Values[iRow, 1] := ls_Rcrd[1]; // ����
          cxCustView.DataController.Values[iRow, 2] := ls_Rcrd[2];
          // ��ȭ��ȣ
          if Trim(ls_Rcrd[3]) <> '' then
          begin
            idx := GT_BUBIN_INFO.cbcode.IndexOf(Trim(ls_Rcrd[3]) + ',' + sBRNO);
            if idx = -1 then
            begin
              // �����ڵ� �ҷ����� ����
            end else
            begin
              cxCustView.DataController.Values[iRow, 3] := Trim(Copy(GT_BUBIN_INFO.cbEtc[idx], 1, 60)); // ���θ�
              cxCustView.DataController.Values[iRow, 4] := Trim(Copy(GT_BUBIN_INFO.cbEtc[idx], 61, 60)); // ���κμ���
            end;
          end else
          begin
            cxCustView.DataController.Values[iRow, 3] := ''; // ���θ�
            cxCustView.DataController.Values[iRow, 4] := ''; // ���κμ���
          end;
          cxCustView.DataController.Values[iRow, 5] := ls_Rcrd[3]; // �����ڵ�
          cxCustView.DataController.Values[iRow, 6] := ls_Rcrd[4]; // ���޸�
          cxCustView.DataController.Values[iRow, 7] := ls_Rcrd[5]; // ����޸�
          cxCustView.DataController.Values[iRow, 8] := ls_Rcrd[6]; // ������
          cxCustView.DataController.Values[iRow, 9] := ls_Rcrd[7]; // �����
          cxCustView.DataController.Values[iRow, 10] := ls_Rcrd[8]; // �Ϸ�Ǽ�
          cxCustView.DataController.Values[iRow, 11] := ls_Rcrd[9]; // ��ҰǼ�
          cxCustView.DataController.Values[iRow, 12] := ls_Rcrd[10]; // ���縶�ϸ���
          cxCustView.DataController.Values[iRow, 13] := ls_Rcrd[11]; // ���ϸ�������Ƚ��
          if Trim(ls_Rcrd[12]) <> '' then
          begin
            cxCustView.DataController.Values[iRow, 14] := Copy(ls_Rcrd[12], 1, Pos('/', ls_Rcrd[12]) - 1); // ���ϸ������޴���
            cxCustView.DataController.Values[iRow, 15] := Copy(ls_Rcrd[12], Pos('/', ls_Rcrd[12]) + 1, Length(ls_Rcrd[12])); // ���ݻ�ǰ��
          end else
          begin
            cxCustView.DataController.Values[iRow, 14] := ''; // ���ϸ������޴���
            cxCustView.DataController.Values[iRow, 15] := ''; // ���ݻ�ǰ��
          end;
          cxCustView.DataController.Values[iRow, 16] := ls_Rcrd[13]; // �������
          cxCustView.DataController.Values[iRow, 17] := ls_Rcrd[14]; // ��1
          cxCustView.DataController.Values[iRow, 18] := ls_Rcrd[15]; // ��2
          cxCustView.DataController.Values[iRow, 19] := ls_Rcrd[16]; // ��3
          cxCustView.DataController.Values[iRow, 20] := ls_Rcrd[17]; // ��X
          cxCustView.DataController.Values[iRow, 21] := ls_Rcrd[18]; // ��Y
          cxCustView.DataController.Values[iRow, 22] := ls_Rcrd[19]; // ��������
          cxCustView.DataController.Values[iRow, 23] := ls_Rcrd[20]; // ��1
          cxCustView.DataController.Values[iRow, 24] := ls_Rcrd[21]; // ��2
          cxCustView.DataController.Values[iRow, 25] := ls_Rcrd[22]; // ��3
          cxCustView.DataController.Values[iRow, 26] := ls_Rcrd[23]; // ��X
          cxCustView.DataController.Values[iRow, 27] := ls_Rcrd[24]; // ��Y
          cxCustView.DataController.Values[iRow, 28] := ls_Rcrd[25]; // SMS���Űź�
        end;
        cxCustView.EndUpdate; // ������ ���� �ʼ�.
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
      // ���� ������ ������ �����Ѵ�.
      Assert(False, E.Message);
    end;
  end;
end;

// �� ��ȭ��ȣ�� �� �⺻���� ��ȸ
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
    GMessagebox('���� + ��ǥ��ȣ�� ���� �ϼ���~', CDMSI);
    cboBranch.SetFocus;
    Exit;
  end;

  if Trim(cxtCuTel.Text) = '' then
  begin
    if Trim(cxtCallTelNum.Text) = '' then
    begin
      GMessagebox('����ȭ��ȣ�� �Է� �ϼ���~', CDMSI);
      cxtCuTel.SetFocus;
      Exit;
    end;
  end;

  // �����/�������� �ڷᰡ �ִ��� ���� üũ �� ������ ǥ��  20130724  LYB
  if ( cxtStartXval.Text <> '' ) Or ( cxtStartYval.Text <> '' ) Or
     ( cxtEndXval  .Text <> '' ) Or ( cxtEndYval  .Text <> '' ) then
    pbISStartEndXY := True
  else
    pbISStartEndXY := False;  // �ʱ�ȭ �κп� ������ �־ ��� ����

  try
    cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);

    // ------------------ �߽Ź�ȣ ������ �����ش�.------------------------
    if cxLblCIDUseFlg.Hint <> 'CID' then
    begin
      if locCustHP_MainNum_Search = '' then
      begin // JON03���� �� ��ȭ��ȣ��  ��ȸ�� �����. ���а�:'CUSTHP'
        locBrNo := Proc_BRNOSearch; // �����ڵ� ������ �д´�.
        locKNum := Proc_MainKeyNumberSearch; // ��ǥ��ȣ ������ �д´�.
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
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsYnString',        'n'                    , [rfReplaceAll]); // CID������ ���� ������ â���� ���� (y,n)
      if gsCidVersion = 'CXE' then
        ls_TxLoad := StringReplace(ls_TxLoad, 'CidsVersionString',   '1', [rfReplaceAll]) // CID�����������ݹ��� (0:������, 1:CIDXE����)
      else
        ls_TxLoad := StringReplace(ls_TxLoad, 'CidsVersionString',   '0', [rfReplaceAll]); // CID�����������ݹ��� (0:������, 1:CIDXE����)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsInlineString',    ''                     , [rfReplaceAll]); // ������ȣ  (CID�������� �����Ѱ�)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsDnisString',      ''                     , [rfReplaceAll]); // DNIS��ȣ  (CID�������� �����Ѱ�)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsKeyNumberString', ''                     , [rfReplaceAll]); // ��ǥ��ȣ  (CID�������� �����Ѱ�
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsCidNumString',    ''                     , [rfReplaceAll]); // ����ȣ  (CID�������� �����Ѱ�)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsCidKeyString',    ''                     , [rfReplaceAll]); // ����ȣ������Ű��  (CID�������� �����Ѱ�)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsBrNoString',      ''                     , [rfReplaceAll]); // �����ڵ� (CID�������� �����Ѱ�)
    end else
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsYnString',        'y'                    , [rfReplaceAll]); // CID������ ���� ������ â���� ���� (y,n)
      if gsCidVersion = 'CXE' then
        ls_TxLoad := StringReplace(ls_TxLoad, 'CidsVersionString',   '1', [rfReplaceAll]) // CID�����������ݹ��� (0:������, 1:CIDXE����)
      else
        ls_TxLoad := StringReplace(ls_TxLoad, 'CidsVersionString',   '0', [rfReplaceAll]); // CID�����������ݹ��� (0:������, 1:CIDXE����)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsInlineString',    gsInternalNumber       , [rfReplaceAll]); // ������ȣ  (CID�������� �����Ѱ�)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsDnisString',      En_Coding(locDNIS)     , [rfReplaceAll]); // DNIS��ȣ  (CID�������� �����Ѱ�)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsKeyNumberString', En_Coding(ss_KeyNumber), [rfReplaceAll]); // ��ǥ��ȣ  (CID�������� �����Ѱ�
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsCidNumString',    CustTel                , [rfReplaceAll]); // ����ȣ  (CID�������� �����Ѱ�)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsCidKeyString',    locSndTime             , [rfReplaceAll]); // ����ȣ������Ű��  (CID�������� �����Ѱ�)
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsBrNoString',      En_Coding(locBRNO)     , [rfReplaceAll]); // �����ڵ� (CID�������� �����Ѱ�)
    end;

    ls_TxLoad := StringReplace(ls_TxLoad, 'ManTelString',        cxtCuTel.Text     , [rfReplaceAll]); // ����ȣ   (������ ���Ƿ� ����ȣ�Է�)
    ls_TxLoad := StringReplace(ls_TxLoad, 'ManKeyNumberString',  En_Coding(locKNum), [rfReplaceAll]); // ��ǥ��ȣ   (������ ���Ƿ� ����/��ǥ��ȣ ����)
    ls_TxLoad := StringReplace(ls_TxLoad, 'ManBrNoString',       En_Coding(locBRNO), [rfReplaceAll]); // �����ڵ�   (������ ���Ƿ� ����/��ǥ��ȣ ����)


    // ����ں� ������踦 ����ϱ� ���� �Ӽ���(CID : 0(�Ϲ�), 1(CID))
    if bCid then
    begin
      if locCustHP_MainNum_Search = '' then
        // JON03���� �� ��ȭ��ȣ��  ��ȸ�� �����. ���а�:'CUSTHP'
        ls_TxLoad := StringReplace(ls_TxLoad, 'CidsAutoString', '1', [rfReplaceAll])   // CID�����κ��� �����Ǿ� ���� ������û�� (1)
      else
        ls_TxLoad := StringReplace(ls_TxLoad, 'CidsAutoString', '0', [rfReplaceAll]);
    end else
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'CidsAutoString', '0', [rfReplaceAll]);
    end;

		// ����ȭ���� �⺻ ��Ʈ���� �ʱ�ȭ �Ѵ�.
    gsCuTelHint := cxtCuTel.Text;
    meoBigo.Hint := 'NOCLEAR';
    ControlClear(False);
    if Not pbISStartEndXY then
    begin
      FControlInitial(False, False); // ����Ʈ�� �ʱ�ȭ.
    end else
    begin
      // ���� �̿볻���� ��Ƶд�.
      for i := 0 to 201 do // ����â ������ �ִ� 16��
        for j := 0 to 40 do // �̿볻�� ���ڵ� �ִ� 60��
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

          tmFormClose.Tag := 99; // ȭ�� �ݱ� ������.
        end;
      end else
         gsCuTelHint := '';  // 20130701  LYB  ��Ʈ��ũ ������ �� ��ȸ �ϰԲ� ���� ó��
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, False);
    end;

    // �÷����� ��뿩�� üũ
		proc_PlusCall_CtrlYN;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

// ���� �Ϸù�ȣ�� �޾� ���� ����â�� ���� �ش�.  sTodayGb:1(���Ͽ���), 2:(���ſ���); sInsGubun:"����", "�߰�����"
procedure TFrm_JON01.Proc_OrderUpdate_Select_New(sConfSlip, sTodayGb, sInsGubun: string);
begin
  loc_Up_Recv_YN := False; // �������� ��û�� ȭ�� �ʱ�ȭ �ϷῩ��

  try
    SetPrivateVariable; // ���� ���� ��ȸ ���� ���� �������� �ʱ�ȭ..
    cxLblCIDUseFlg.Hint := ''; // CID ��ȸ���� ������ �Ѵ�.
    locHDNO := '';
    locBRNO := ''; // ��ȸ �� ����, �����ڵ�, ��ǥ��ȣ �ӽ�����.
    locKNum := ''; // CID���� ���� ��ǥ��ȣ ����.
    locDNIS := '';
    locSndTime := '';
    cxtCallTelNum.Text := ''; // CID ����.
    cxLblConfSlipUseFlg.Hint := 'CONFSLIP'; // ������ȣ ��ȸ���� ����.
    cxtJoinNum.Text := sConfSlip; // ������ȣ ����.
    cxtJoinNum.Tag := StrToIntDef(sTodayGb, 2);
    // sTodayGb:1(���Ͽ���), 2:(���ſ���)
    btnCmdUpdSave.Hint := sInsGubun; // "�߰�����" �Ǵ� "����" ���а� ����.
    if (Pos('����', sInsGubun) > 0 ) then
    begin
      cxTxtBrNameCaption.Hint := FormatDateTime('YYYY-MM-DD HH:MM:SS', Now);
			btnCmdExit.Hint := 'UPDATE_MODE' // �������� ������� ������ �Ѵ�.
		end else
		if (Pos('��ȸ', sInsGubun) > 0 ) then
		begin
			cxTxtBrNameCaption.Hint := FormatDateTime('YYYY-MM-DD HH:MM:SS', Now);
			btnCmdExit.Hint := 'UPDATE_MODE' // �������� ������� ������ �Ѵ�.
		end else
    begin
      cxTxtBrNameCaption.Hint := '';
      btnCmdExit.Hint := '';
    end;

    if btnCmdUpdSave.Tag = 99 then
    begin // 24�ð� ���������� ���� �� �� ����.
      btnCmdUpdSave.Enabled := False;
    end;

    Frm_JON012.cxGVeOrderList.DataController.SetRecordCount(0);
    Proc_Jon012Show; // �� �̿볻���� �̸� ����ش�.

    // ����ȭ���� �⺻ ��Ʈ���� �ʱ�ȭ �Ѵ�.
		FControlInitial(False, True); // ����Ʈ�� �ʱ�ȭ.
		ControlClear;

    Frm_JON012.cxGVeOrderList.DataController.SetRecordCount(0);
    if btnCmdUpdSave.Hint = '�߰�����' then
    begin
      btnCmdUpdSave.Enabled := False;
      btnCmdUpdSave.Visible := False;
    end;

    cxTxtBrNameCaption.Text := '�������� �д���...';
    // �����, ��ǥ��ȣ ������ ���� Ȯ~ ���̰�, ũ�� �����ش�.
    cxTxtBrNameCaption.Visible := True;
    // �����, ��ǥ��ȣ ������ ���� Ȯ~ ���̰�, ũ�� �����ش�.

    loc_Up_Recv_YN := True; // �������� ��û�� ȭ�� �ʱ�ȭ �ϷῩ��

    // ���� �Ϸù�ȣ�� �޾� ���� ���������� ��ȸ �Ѵ�.
    Proc_ConfSlip_Select_New(sConfSlip, sTodayGb);
    // sTodayGb:1(���Ͽ���), 2:(���ſ���)

    if btnCmdUpdSave.Hint = '�߰�����' then
    begin
      dtpResvDate.Enabled := True;
      dtpResvTime.Enabled := True;
    end;

    if (Pos('����', sInsGubun) > 0 ) then
    begin
      BtnPlusYN.Enabled := False;
    end;
  except
    on e: exception do
    begin
      loc_Up_Recv_YN := True; // �������� ��û�� ȭ�� �ʱ�ȭ �ϷῩ��
      Assert(False, E.Message);
    end;
  end;
end;

// ���õ� ������������ �����ڵ带 ���� �Ѵ�.
function TFrm_JON01.Proc_HDNOSearch: string;
var
  sTmp: string;
begin
  // A100.B100:*NS����[15889999]
  // *NS����[15889999] A100.B100
  sTmp := RightStr(cboBranch.Text, 11); // �����ڵ�,�����ڵ�
  Result := Trim(Copy(sTmp, 1, Pos('.', sTmp) - 1)); // �����ڵ�
end;

// ���� ��û�� ����� ���� ȭ�� Enabled: True/False ó���� ���ش�.

procedure TFrm_JON01.Proc_JobAfterProc(bFormLock: boolean; bOrderInsGB: boolean =
  False);
begin
  if bFormLock then
  begin
    //------> ȭ�鿡 Lock�� �Ǵ�. <--------
    pnlJonMain.Enabled := False;
    // ��û�� ����ó���� �޷� �ɶ����� ����ȭ���� ��� ����� �Ͻ� ���� ��Ų��.
    Frm_JON012.Enabled := False;
    //-------------------------------------
  end else
  begin
    //------> ȭ���� Lock�� Ǯ���ش�. <--------
    pnlJonMain.Enabled := True;
    // ��û�� ����ó���� �޷� �ɶ����� ����ȭ���� ��� ����� �Ͻ� ���� ��Ų��.
    Frm_JON012.Enabled := True;
    //-------------------------------------

    Screen.Cursor := crDefault;

    Proc_BtnEnabled(True); // ��ư Ȱ��/��Ȱ�� ó��.
    GB_JON03SELECT_GB := True;

    if bOrderInsGB then
    begin
      // ������Ȳ���� �������� ��û�� ����޾Ҵ����� ����.
      if cxLblCIDUseFlg.Hint = 'CID' then
      begin // CID ��ȸ���� ������ �Ѵ�.
        cxtCuTel.Text := cxtCallTelNum.Text;
      end;
    end;

    // ������û�� ���� ����� ������ �����Ѵ�.
    if GS_DEBUG_MSG_J01 <> '' then
    begin
//-      GS_DEBUG_MSG_J01 := StringReplace(GS_DEBUG_MSG_J01, '!!$�ʰ��ð�$!!', shaPrcMsg.Hint, [rfReplaceAll]);
      Assert(False, GS_DEBUG_MSG_J01);
    end;
  end;
end;

// �������� ���� ������ ClientKey�� ���� ��� ó���� �Ѵ�.
procedure TFrm_JON01.Proc_recieve(ls_rxxml: String);
var
  ls_ClientKey, ls_Msg_Err, sMsg: string;
begin
  try
    if not loc_Ud_xdom.loadXML(ls_rxxml) then
    begin
      Proc_BtnEnabled(True); // ��ư Ȱ��/��Ȱ�� ó��.
			GMessagebox('[Proc_Recieve]XML���� ������ ���� �ʽ��ϴ�.' + #13#10 +
        '�ٽ��ѹ� ��ȸ �ϼ���', CDMSE);
      GB_JON03SELECT_GB := True;
      // ������Ȳ���� �������� ��û�� ����޾Ҵ����� ����.
      Exit;
    end;

    //-------------------------- Client Key Read -----------------------------
    loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/header/ClientKey');
    ls_ClientKey := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Value').Text;
    //------------------------------------------------------------------------
    //ls_ClientKey := GetXmlClientKey(ls_rxxml);
    //------------------------------------------------------------------------
    if ls_ClientKey = 'KEYN0001' then
      Proc_NumberInsert(ls_rxxml) // ��ǥ��ȣ �˻��ϱ�..
		else
    if ls_ClientKey = 'KYNM0001' then
    begin
			Proc_KeyNumberInsert(ls_rxxml); // [����ȭ��ȣ] �� �˻� �� ����� ó���Ѵ�.
    end else
    if ls_ClientKey = 'VIA00001' then
    begin
      proc_ViaInfo_insert(ls_rxxml); // �޾ƿ� ������ ������ ���� �Ѵ�.
    end else
    if Copy(ls_ClientKey, 1, 7) = 'SAVE000' then
    begin
      Proc_SaveReturn(ls_rxxml); // ���� ��� ��� ó�� �Ѵ�.
    end else
    if ls_ClientKey = 'CUSV0032' then
    begin
      Proc_CustBasicSave_Result(ls_rxxml); // ���⺻���� ���� �۾��� ��� ó��..
    end else
    if ls_ClientKey = 'JON03020' then   // SMS�ź� ���� ��� ó��
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_Msg_Err) then
      begin
        GMessagebox('SMS�ź� ���� �Ϸ� �Ͽ����ϴ�.', CDMSI);
      end else
      begin
        ShowMessage('SMS�ź� �������� ������ �߻� �Ͽ����ϴ�.' + #10#13 + ls_Msg_Err);
      end;
    end else
    if (ls_ClientKey = 'CUSE0001') or
       (ls_ClientKey = 'CUSE0011') or
       (ls_ClientKey = 'CUSE0012') then
    begin
      Proc_RequestResult(ls_rxxml, ls_ClientKey);  // �� SEQUENCE��ȸ, ��/������, ���� �� ��� ó��.
    end else
    if ls_ClientKey = 'TDDD0001' then
    begin
      // ��ȭ��ȣ�� ���浵 ��ǥ�� ��ȸ �� �� ��� ó���� �Ѵ�.
      Proc_TellNumSearchNEDataResult(ls_rxxml);
    end else
    if ls_ClientKey = 'ORDE0011' then
    begin
      // [����ȭ�� ����..](�����Ϸù�ȣ)������ȣ�� ��ȸ �� �� ��� ó���� �Ѵ�.  // Ÿ�� �α׸� ��´�.
			loc_RateNOT := True; // ��� ����� ����.
      Proc_ConfSlipSelectResult(ls_rxxml);
      // [���� �Ϸù�ȣ:������ȣ] �� �˻� �� ����� ó���Ѵ�.[����ȭ�� ����..]
      loc_RateNOT := False; // ��� ����� ����.
    end else
    if ls_ClientKey = 'MODI0001' then
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_Msg_Err) then
      begin // ���� ������忡�� ��û�� ��� ó��..

        if GB_JON_FINISHMSG then
          GMessagebox(MDXCI_0006, CDMSI);

        Application.ProcessMessages;
        Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, cxtJoinNum.Text);
        tmFormClose.Tag := 77; // ȭ�� �ݱ� ������.
        loc_TmClose := 'CLOSE'; // ȭ�� ���� Ÿ�̸� ����. CDS. 080830.
        tmFormClose.Enabled := True; // ȭ���� �ݴ´�.
        end
      else if ('3002' = Copy(ls_Msg_Err, 1, 4)) then
      begin
        GMessagebox('���°� ���� �Ǿ����ϴ�.' + CRLF + ls_Msg_Err, CDMSI);
      end else
      begin
        GMessagebox('ó�� ���� �Ͽ����ϴ�' + CRLF + ls_Msg_Err, CDMSI);
      end;
    end else
    if ls_ClientKey = 'CUOD0010' then
    begin
      Frm_JON012.Proc_CustOldSelectResult(ls_rxxml);
      // ������ �̿볻�� �ҷ�����..
    end else
    if ls_ClientKey = 'CardDown' then
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      if ls_Msg_Err = '0000' then
        GMessagebox('ī���� �ٿ�ε� ��û �Ͽ����ϴ�.', CDMSI)
      else
        GMessagebox('ī���� �ٿ�ε� ��û�� �����߽��ϴ�.'#13#10 + GetXmlErrorMsg(ls_rxxml), CDMSI);
    end else
    if ls_ClientKey = 'URLR0001' then
    begin
//      btnBubinReq.Enabled := True;
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_Msg_Err) then
      begin
        GMessagebox('���� ������ ��û�Ͽ����ϴ�.', cdmsi);
      end else
      begin
        GMessagebox(ls_Msg_Err, CDMSI);
      end;
    end else
    if ls_ClientKey = 'LOCK0001' then
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      // ���� ����ȭ�� ��ﶧ,, Lock�� [����] �Ѵ�.
      if ('0000' = ls_Msg_Err) then
      begin
        loc_bUpdateLock := True;
        // ����ȭ�� Lock ���� ����.[True:����, False:�̼���]
     //proc_Cust_info(ed_MaddBrch.Text,ed_Cust_Tel_Hidden.Text);
      end else
      begin
        GMessagebox(ls_Msg_Err, CDMSI);
      end;
    end else
      if ls_ClientKey = 'LOCK0002' then
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      // ���� ����ȭ�� ������,, Lock�� [����] �Ѵ�.
      loc_bUpdateLock := False;
      // ����ȭ�� Lock ���� ����.[True:����, False:�̼���]
      if btnCmdExit.Tag = 999 then btnCmdExit.Tag := 0;
      // ������忡�� ���α׷� ������, Lock �������� �ʱ�ȭ �Ѵ�.
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
        GMessagebox('�����Ͽ����ϴ�.', CDMSI);
        tmFormClose.Tag := 77; // ȭ�� �ݱ� ������.
        loc_TmClose := 'CLOSE'; // ȭ�� ���� Ÿ�̸� ����. CDS. 080830.
        tmFormClose.Enabled := True; // ȭ���� �ݴ´�.
        //btnCmdExitClick(btnCmdExit);
      end else
      begin
        GMessagebox('�����Ͽ����ϴ�.' + #13#10 + '�ٽ� �ѹ� �õ��� ������', CDMSI);
      end;
    end else
    begin
      sMsg := GetXmlErrorMsg(ls_rxxml);

      GMessagebox('��� �� ������ �߻��߽��ϴ�.[' + sMsg + ']', CDMSI);

      Assert(False, '��� �� ������ �߻��߽��ϴ�.[' + ls_rxxml + ']');
      Proc_BtnEnabled(True); // ��ư Ȱ��/��Ȱ�� ó��.
      pnlJonMain.Enabled := True;
      GB_JON03SELECT_GB := True;
      // ������Ȳ���� �������� ��û�� ����޾Ҵ����� ����.
    end;
  except
    on e: exception do
    begin
      ShowMessage('[Proc_recieve]����ó��:' + e.Message);
    end;
  end;
end;

// ���� ������ ���� Lock �� �����Ѵ�.
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

          tmFormClose.Tag := 99; // ȭ�� �ݱ� ������.
        end;
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, False);
    end;

    btnCmdExit.Tag := 0;
    // ������忡�� ���α׷� ������, Lock �������� �ʱ�ȭ �Ѵ�.
  except
    on e: exception do
    begin
      ls_TxLoad := 'JON01[Proc_AcceptLock]:' + e.Message;
//      btnBubinReq.Enabled := True;
      Screen.Cursor := crDefault;
    end;
  end;
end;

// ���� �Ϸù�ȣ�� �޾� ���� ���������� ��ȸ �Ѵ�.  sTodayGubun:1(���Ͽ���), 2:(���ſ���)
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
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfSlipString', En_Coding(sConfSlip)); // �����Ϸù�ȣ
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'TodayGubunString', En_Coding(sTodayGubun)); // 1:A01_Today, 2:A01 ����

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

          tmFormClose.Tag := 99; // ȭ�� �ݱ� ������.
        end;
      end else
      begin
        GMessagebox(Format('���� ���� ��ȸ �� ������ �߻��Ͽ����ϴ�.'#13#10'���� â�� �ݰ� �ٽýõ� �ٶ��ϴ�.', []), CDMSE);
      end;
    finally
      FreeAndNil(slRcvList);
      Screen.Cursor := crDefault;
      Proc_JobAfterProc(False, False);
    end;

  except
    on e: exception do
    begin
      GMessagebox(Format('���� ���� ��ȸ �� ������ �߻��Ͽ����ϴ�.'#13#10'���� â�� �ݰ� �ٽýõ� �ٶ��ϴ�.(E: %s)', [E.Message]), CDMSE);

      pnlJonMain.Enabled := True;
      Screen.Cursor := crDefault;

      Assert(False, E.Message);
    end;
  end;
end;

// ��ư Ȱ��/��Ȱ�� ó��.
procedure TFrm_JON01.Proc_BtnEnabled(bTF: boolean = True);
begin
  try
    if (Pos('��ȸ', Self.Caption) > 0) then
    begin
      btnCmdJoin.Enabled := False; // ������ư
      btnCmdWait.Enabled := False; // ����ư
      btnCmdQuestion.Enabled := False; // ���ǹ�ư
      btnCmdJoinCopy.Enabled := False; // �����ĺ���
      btnCmdWaitCopy.Enabled := False; // ����ĺ���
      btnCmdUpdSave.Enabled := bTF; // ����
    end else
    begin
      btnCmdJoin.Enabled := bTF; // ������ư
      btnCmdWait.Enabled := bTF; // ����ư
      btnCmdQuestion.Enabled := bTF; // ���ǹ�ư
      btnCmdJoinCopy.Enabled := bTF; // �����ĺ���
      btnCmdWaitCopy.Enabled := bTF; // ����ĺ���
      btnCmdUpdSave.Enabled := bTF; // ����
    end;
  //-	btnCmdNoSms.Enabled := bTF; // ���Űź�
    if cbbPayMethod.Text = '�ĺ�(ī��)' then
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

// ��ǥ��ȣ�� ��ȸ �� ��� ó���� �Ѵ�.
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
        GetTextSeperationEx('��', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
//        ls_Rcrd := GetTextSeperation('��', lst_Result.item[0].attributes.getNamedItem('Value').Text);

        cboBranch.Tag := 10;
        // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
        cboBranch.Properties.Items.Clear;

        // �����ڵ�   // �����ڵ�   // �����   // ��ǥ��ȣ
				if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
					Log('[Billit]JON01.Proc_NumberInsert : ������' + cboBranch.text , LOGDATAPATHFILE  );

        // �����ڵ�   // �����ڵ�   // �����   // ��ǥ��ȣ
        cboBranch.Properties.Items.Add(ls_Rcrd[1] + '[' + Trim(cxTSearchMainTel.Text) + '] ' + Copy(ls_Rcrd[3]
          + '     ', 1, 5) + Copy(ls_Rcrd[0] + '     ', 1, 5));
        cboBranch.ItemIndex := 0;

				if (GT_OCX = 'BILLIT') and (BILLIT_CID_USE = 'y') then
					Log('[Billit]JON01.Proc_NumberInsert : ������' + cboBranch.text , LOGDATAPATHFILE  );

        cboBranch.Tag := 0;
        // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
        sNowRate := ls_Rcrd[2]; // ���� ������ �⺻��� ������.
        curRate.Value := StrToFloatDef(ls_Rcrd[2], 0);
        OrgRate := curRate.Value;
        // ��ǥ��ȣ�� ���� ��ȸ �����Ƿ� �ʱ�ȭ �Ѵ�.
        cxTSearchMainTel.Text := '';
      finally
        FreeAndNil(ls_Rcrd);
      end;
    end
    else
    begin
      // �޽��� ���� : ��ϵ��� ���� ��ǥ��ȣ �Դϴ�.
      GMessagebox(MSG421, CDMSI);
    end;
  except
    on e: exception do
    begin
      ShowMessage('[��ǥ��ȣ��ȸRESULT]����ó��:' + e.Message);
    end;
  end;
end;

// ����ȭ��ȣ ��ȸ �� ��� ó���� �Ѵ�.
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
	// ��ȭ��ȣ2����
	sTelse, sContent, sCurMileage, sMileage: string;
begin
	if (lcsActiveEdit = 'meoStartAreaCUT') or (lcsActiveEdit = 'meoEndAreaCUT') then lcsActiveEdit := 'meoStartArea';
	FHasTodayData := False;
  iFidx := Self.Tag; // ���� index�� �д´�.

  xdom := CoDomDocument.Create;
	if not xdom.loadXML(rxxml) then
	begin
    GMessagebox('[����ȭ��ȣ��ȸ���]XML���� ������ ���� �ʽ��ϴ�.' + #13#10
      + '�ٽ��ѹ� ��ȸ �ϼ���', CDMSI);
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
							0: sStatus := '����';
							1: sStatus := '����';
							2: sStatus := '�Ϸ�';
							3: sStatus := '����';
							4: sStatus := '����';
							5: sStatus := '���';
							8: sStatus := '���';
						end;
						sTemp := '���:[' + sCharge + ']';
						ls_msg := ls_msg + #13#10 + '[' + sBr_Name + '(' + o_keyNumber + ')] ' + o_InDate + '�� [' + sStatus + '] ' + sTemp;
					end;

					if Trim(ls_msg) <> '' then
					begin
						ls_msg := '�Ʒ��� ���� �̹� ��ϵ� ������ �ֽ��ϴ�.' + #13#10 + ls_msg;

						MessageDlgPos(Trim(ls_msg), mtInformation, [mbOK], 0, Self.Left - Width, Self.Top);
					end;
				end;

				// 100510 - CID�α�(����/�� ��ü����) ���� LogSeq ���� �� ������ ����
				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/CidInfo');
				if lst_Result.length > 0 then
					locLogSeq := lst_Result.item[0].attributes.getNamedItem('LogSeq').Text;

				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Branch');
				locHDNO   := lst_Result.item[0].attributes.getNamedItem('HdNo').Text;
				locBRNO   := lst_Result.item[0].attributes.getNamedItem('BrNo').Text;
				sBr_Name  := lst_Result.item[0].attributes.getNamedItem('BrName').Text;
				// 2011.05.11 �߰�. CDS. �������� ����.
				sBr_KeyNumber := lst_Result.item[0].attributes.getNamedItem('KeyNumber').Text;

        // [hjf-�ϵ��ڵ�] 2009.03.06 �ڸ���(ī���) ���󱸺�
				if (GS_PRJ_AREA = 'S') and (locBRNO = 'H849') then
        begin
          LblTop   .Color := clRed;       // ������
          LblLeft  .Color := LblTop.Color;
          LblRigth .Color := LblTop.Color;
          LblBottom.Color := LblTop.Color;
          PnlTitle .Color := LblTop.Color;
          PnlWorkMemo.Color := LblTop.Color;
          PnlBtm.Color := LblTop.Color;
          PnlBox4.Color := LblTop.Color;
          Pnl_BubinV.Color := LblTop.Color;
				end else
				// [cds-�ϵ��ڵ�] 2011.10.11 �ڸ���(ī���) ���󱸺� �߰�. 1577-5000.  �ſ�ī�� (1577-9482)
        if (GS_PRJ_AREA = 'S') and ( (locBRNO = 'G908') Or (locBRNO = 'G902') )  then
        begin
          LblTop   .Color := $00FE8769;   // �Ķ���
          LblLeft  .Color := LblTop.Color;
          LblRigth .Color := LblTop.Color;
          LblBottom.Color := LblTop.Color;
          PnlTitle .Color := LblTop.Color;
          PnlWorkMemo.Color := LblTop.Color;
          PnlBtm.Color := LblTop.Color;
          PnlBox4.Color := LblTop.Color;
          Pnl_BubinV.Color := LblTop.Color;
				end else
  			// [cds-�ϵ��ڵ�] 2012.10.09 �ڸ���(02-2000-0000) ���󱸺� �߰�. KHS
        if (GS_PRJ_AREA = 'S') and (locBRNO = 'Q908') then
        begin
          LblTop   .Color := clGreen;   // ���
          LblLeft  .Color := LblTop.Color;
          LblRigth .Color := LblTop.Color;
          LblBottom.Color := LblTop.Color;
          PnlTitle .Color := LblTop.Color;
          PnlWorkMemo.Color := LblTop.Color;
          PnlBtm.Color := LblTop.Color;
          PnlBox4.Color := LblTop.Color;
          Pnl_BubinV.Color := LblTop.Color;
				end else
  			// [cds-�ϵ��ڵ�] 2012.10.09 ������ ���󱸺� �߰�.
        if (GS_PRJ_AREA = 'S') and (locBRNO = 'G898') then
        begin
          LblTop   .Color := $0014AACF;   // ���
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
          LblTop   .Color := $00E0EDEA;   // �⺻��
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
				begin // CID ��ȸ���� ������ �Ѵ�.
					if Proc_BrNoListIdxFind(locBRNO, sBr_KeyNumber) = False then
						begin
							ShowMessage('��ȸ �� �����ڵ尡 �ݼ��Ϳ� �̰����� �ʾҰų� �������� �Ǵ� ��ǥ��ȣ �Դϴ�.' + #13#10 +
													'[ �����ڵ�:' + locBRNO + ', ��ǥ��ȣ:' + sBr_KeyNumber + ' ] Ȯ�� �ϼ���!' );
							Exit;
						end;
				end else
				begin
					// CID ��ȸ ��.
					// ���縮��Ʈ���� ��ǥ��ȣ, �����ڵ� index ã�� �� ����.
					if Proc_BrNoListIdxFind(locBRNO, locKNum) = False then
					begin
						cboBranch.Tag := 10;
						// ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
						cboBranch.Properties.Items.Clear; // ���縮��Ʈ �ʱ�ȭ.
						cboBranch.Properties.Items.Add(sBr_Name + '[' + locKNum + '] ' + Copy(locHDNO + '     ', 1, 5) + '.' + Copy(locBRNO + '     ', 1, 5));
								// �����ڵ�   // �����ڵ�   // �����   // ��ǥ��ȣ
						cboBranch.ItemIndex := 0;
						cboBranch.Tag := 0;
						// ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
					end;
				end;
				// ��ǥ��ȣ �� �⺻ ��������� ���� �Ѵ�.
        if Not pbISStartEndXY then
        begin
  				sNowRate := lst_Result.item[0].attributes.getNamedItem('BaseCharge').Text;
	  			curRate.Value := StrToIntDef(sNowRate, 0);
		  		OrgRate := curRate.Value;
			  	pnl_Charge.Caption := Format('��ǥ��ȣ �⺻���(%s) ���� ����', [StrToMoney(sNowRate)]);
//          Lbl_Distance.Caption := '';
        end;

				Try
					// �� ��ȸ ��ȭ��ȣ ����.
					// DNIS �Ǵ� �����θ� ��ȸ �϶�,,  ��ȭ��ȣ�� ������ ������. 2011.05.13 CDS. �߰�.
					if Pos('*',cxtCuTel.Text) > 0 then begin
						sCustTel := Copy(cxtCuTel.Text, Pos('*',cxtCuTel.Text) +1 , length(cxtCuTel.Text));
						sCustTel := StringReplace(sCustTel, '+', '', [rfReplaceAll]);
						gsCuTelHint   := Copy(cxtCuTel.Text, 1, Pos('*',cxtCuTel.Text) -1);
						cxtCuTel.Text := gsCuTelHint;
						if Pos('+',cxtCuTel.Text) > 0 then begin
							gsCuTelHint   := StringReplace(cxtCuTel.Text, '+', '', [rfReplaceAll]);
							cxtCuTel.Text := gsCuTelHint;
						end;
						// DNIS ��ǥ��ȣ ã�� ����â.
						shrDNIS_DSP.Visible := True;
						lblDNISInfo.Caption := '***** DNIS ��ǥ��ȣ / ���� ã�� *****' + #13#10 +
																	 'DNIS      : ' + sCustTel + #13#10 +
																	 '��ǥ��ȣ : ' + sBr_KeyNumber + ' (' + locBRNO + '.' + sBr_Name + ')' + #13#10 +
																	 '����ȭ : ' + gsCuTelHint;
					end else
          if Pos('+',cxtCuTel.Text) > 0 then
          begin
						gsCuTelHint   := StringReplace(cxtCuTel.Text, '+', '', [rfReplaceAll]);
						cxtCuTel.Text := gsCuTelHint;
						if Pos('*',cxtCuTel.Text) > 0 then
            begin
							gsCuTelHint   := Copy(cxtCuTel.Text, 1, Pos('*',cxtCuTel.Text) -1);
							cxtCuTel.Text := gsCuTelHint;
							// DNIS ��ǥ��ȣ ã�� ����â.
							shrDNIS_DSP.Visible := True;
							lblDNISInfo.Caption := '***** DNIS ��ǥ��ȣ / ���� ã�� *****' + #13#10 +
																		 'DNIS      : ' + sCustTel + #13#10 +
																		 '��ǥ��ȣ : ' + sBr_KeyNumber + ' (' + locBRNO + '.' + sBr_Name + ')' + #13#10 +
																		 '����ȭ : ' + gsCuTelHint;
						end;
					end else
          begin
						gsCuTelHint := cxtCuTel.Text;
					end;
				except
					on e: exception do
					begin
						ls_TxLoad := 'Jon01[�� ��ȸ ��ȭ��ȣ �������]:' + e.Message;
						Assert(False, E.Message);
						GMessagebox(PChar(ls_TxLoad), CDMSE);
						Screen.Cursor := crDefault;
					end;
				end;

        Log('Line 9628', LOGDATAPATHFILE);

				// ���纰 ��Ʈ ���ϱ�..
				if cxLblCIDUseFlg.Hint = 'CID' then
				begin // CID ��ȸ���� ������ �Ѵ�.
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
				//      ��ȭ��ȣ�� ��, ��� üũ( 1 : ���, 2 : �� )
				//-------------------------------------------------------------------------------------------
				sCust_Gubun := inttostr(StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Gubun').Text, 2));
				if StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Gubun').Text, 2) = 2 then
				begin
          Log('Line 9649', LOGDATAPATHFILE);
					Try
            frm_Main.Proc_CidLog(99, '��'); // �α� ���.
						Frm_Main.Frm_JON03[Jon03Tag].pnlBubin.Visible := False;
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Customer');
						with lst_Result.item[0].attributes do
						begin
							edtCuName.Text := getNamedItem('Name').Text;

							sContent := StringReplace(getNamedItem('Info').Text, '|', '��',  [rfReplaceAll]);
              if Trim(sContent) <> '' then
              begin
           			ls_Rcrd := TStringList.Create;
                try
            			GetTextSeperationEx2('��', sContent, ls_Rcrd);
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

							sContent := StringReplace(getNamedItem('PdaInfo').Text, '|', '��',  [rfReplaceAll]);
              if Trim(sContent) <> '' then
              begin
           			ls_Rcrd := TStringList.Create;
                try
            			GetTextSeperationEx2('��', sContent, ls_Rcrd);
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
							//���缳�� ���� ����
							lblCuMileCnt.Caption   := getNamedItem('PrizeCnt').Text;

              sProdName := getNamedItem('Prize').Text;
							SetMileColorChange;

							// hjf-����Ȳ�Ǽ���(�������� ��ȸ)
							if Assigned(getNamedItem('BrTelYN')) then
								CustBrTelYN := getNamedItem('BrTelYN').text;

							if (CustBrTelYN = 'y') then	BtnCenterMng.Down := True else
              if (CustBrTelYN = '') and (iBarIndex = 1) and (GB_SHOPTYPE_CALLCENTER = 1) then	BtnCenterMng.Down := True else
              if (CustBrTelYN = 'n') then	BtnCenterMng.Down := False;

							SetPayMethod(PAY_METHOD_MONEY); // ����

							// �����ڵ�
							cxtCuBubin.Hint := TRim(getNamedItem('BGroup').Text);
							sBGroup := TRim(getNamedItem('BGroup').Text);
							if (GS_PRJ_AREA = 'S') and (sBGroup <> '') and (locBRNO <> 'G898') and (locBRNO <> 'Q908') and (locBRNO <> 'H849') then
              begin
                LblTop   .Color := $00FE8769;   // �Ķ���
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
								// ��������[���θ� + �μ���]
								cxtCuBubin.Text := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc[iBidx]), 1, 60)) + ' | ' + Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc[iBidx]), 61, 60));
								lblCuBubinName.Caption := '���ΰ� [ ' + Trim(cxtCuBubin.Text) + ' ]';
								iend := StrToIntDef(Copy(GT_BUBIN_INFO.cbEtc[iBidx], 153, 1), 1);

								if (iend = 0) and (gsJON01CreditMoneyYN <> 'FALSE') then
									SetPayMethod(PAY_METHOD_TRUST)  // �ܻ�
								else if (iend = 2) and (gsJON01CreditMoneyYN <> 'FALSE') then
									SetPayMethod(PAY_METHOD_POST_NML)  // �ĺ�
								else
									SetPayMethod(PAY_METHOD_MONEY); // ����
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
							SetPayMethod(PAY_METHOD_POST_MILE); // �λ�5õ�� �ĺҸ��� ��������
							if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
							begin
								UserMile := StrToIntDef(lblCuMile.Caption, 0);
								edtPostPay.Value := IfThen(UserMile >= curRate.Value, curRate.Value, 10000);
							end	else
							begin
                if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

								if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ2K 20140221 KHS
									edtPostPay.Value := 2000
								else
								if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ3K 20141007 KHS
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
							// 0:����, 4:�ҷ� �Ѵ� �Ϲ����� ó��(�ҷ��ڵ�� ������)
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

						// ������ ��ư Ȱ��ȭ.
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
						sRet := 0; //�������� ����� ������ �ִ��������� ���а�
						eRet := 0; //�������� ������ ������ �ִ��������� ���а�

            if Not pbISStartEndXY then
            begin
  						// 20120805 ��ǥ ���� üũ LYB
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
  							// ����� ����
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

  							// ����� ��������
  							if Trim(cxtStartAreaDetail.Hint) <> '' then
  								meoStartArea.Text := cxtStartAreaDetail.Hint
  							else if Trim(cxtStartAreaDetail.Text) <> '' then
  								meoStartArea.Text := cxtStartAreaDetail.Text
  							else if Trim(lcsSta3) <> '' then
  								meoStartArea.Text := lcsSta3;

                MarkAllWords(lblStartAreaName, UpperCase(meoStartArea.Text), clRed, [fsBold]);
                MarkAllWords(cxtStartAreaDetail, UpperCase(meoStartArea.Text), clRed, [fsBold]);

  							//�������� ����� ������ �ִ��������� ���а�
  							if Trim(meoStartArea.Text) = '' then
  							begin
  								sRet := 0;
  							end	else
  							begin
  								sRet := 1;
  								GS_Grid_DEP := 'C'; //�������� ����� ����
  								changeLog('S'+ 'C' + lst_Result.item[0].attributes.getNamedItem('MapX').Text + ':' + lst_Result.item[0].attributes.getNamedItem('MapY').Text, false);        //x,y��ǥ ����� �α׻��� 2012.08.08 KHS
  							end;
  							// ������ ����
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

  							// ������ ��������
  							if Trim(cxtEndAreaDetail.Hint) <> '' then
  								meoEndArea.Text := cxtEndAreaDetail.Hint
  							else
  								if Trim(lcsEnd3) <> '' then
  								meoEndArea.Text := lcsEnd3;

                MarkAllWords(cxReEndArea, UpperCase(meoEndArea.Text), clRed, [fsBold]);

  							//�������� ������ ������ �ִ��������� ���а�
  							if Trim(meoEndArea.Text) = '' then eRet := 0
  							else eRet := 1;
  							if Trim(meoEndArea.Text) = '' then
  							begin
  								eRet := 0;
  							end	else
  							begin
  								eRet := 1;
  								GS_Grid_DES := 'C'; //�������� ������ ����
  								changeLog('E'+ 'C' + lst_Result.item[0].attributes.getNamedItem('DestX').Text + ':' + lst_Result.item[0].attributes.getNamedItem('DestY').Text, false);        //x,y��ǥ ����� �α׻��� 2012.08.08 KHS
  							end;
  						except
  							on e: exception do
  							begin
  								ls_TxLoad := 'Jon01[����� ���� ��ȸ����]:' + e.Message;
  								Assert(False, E.Message);
  								GMessagebox(PChar(ls_TxLoad), CDMSE);
  								Screen.Cursor := crDefault;
  							end;
  						end;
            end;
						//-------------------------------------------------------------------------------------------
						//      ���ų����� ������ �����, ���纰 �������� ���� ����� ����
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
								ls_TxLoad := 'Jon01[���ų���]:' + e.Message;
								Assert(False, E.Message);
								GMessagebox(PChar(ls_TxLoad), CDMSE);
								Screen.Cursor := crDefault;
							end;
						end;

						// ����޻�뱸��[0:�ڵ����, 1:��������]
						iGrade1 := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Grade1').Text, 5);
						iGrade2 := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Grade2').Text, 15);

						if iEnd >= iGrade1 then
						begin
							// frm_Jon03.frmJON011 ���� �� �ڵ���޺� �� Į�� ������ �ش�.
							Proc_SetFormColor_2(0);
						end else
            if iEnd >= iGrade2 then
						begin
							// frm_Jon03.frmJON011 ���� �� �ڵ���޺� �� Į�� ������ �ش�.
							Proc_SetFormColor_2(1);
						end else
						begin
							// frm_Jon03.frmJON011 ���� �� �ڵ���޺� �� Į�� ������ �ش�.
							Proc_SetFormColor_2(2);
						end;

						SetCustLevelSeq(lst_Result.item[0].attributes.getNamedItem('LevelCD').Text);

						// �� ���п� ���� ���� ǥ��
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
						if lst_Result.item[0].attributes.getNamedItem('AppDelYn').Text = 'y' then sAppDelYn := '���û���'
						                                                                     else sAppDelYn := '���û��';

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

						//================================= ������ Display End. =====================================
					except
						on e: exception do
						begin
							ls_TxLoad := 'Jon01[�� ��ȸ����]:' + e.Message;
							Assert(False, E.Message);
							GMessagebox(PChar(ls_TxLoad), CDMSE);
							Screen.Cursor := crDefault;
						end;
					end;
				end	else
        if StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Gubun').Text, 2) = 1 then     //���� �˻�
				begin
					frm_Main.Proc_CidLog(99, '���'); // �α� ���.
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Driver');
					wk_br_Name := lst_Result.item[0].attributes.getNamedItem('BrName').Text
						+ '(' + lst_Result.item[0].attributes.getNamedItem('BrNo').Text + ')';
					wk_sabun := lst_Result.item[0].attributes.getNamedItem('Sabun').Text;
					wk_Name := lst_Result.item[0].attributes.getNamedItem('TermInfo').text;
					wk_Name := lst_Result.item[0].attributes.getNamedItem('Name').Text;

					Frm_JON012.sFinishCnt := lst_Result.item[0].attributes.getNamedItem('FinishCnt').text;
					Frm_JON012.sCancelCnt := lst_Result.item[0].attributes.getNamedItem('CancelCnt').text;
					Frm_JON012.sPhone_info := lst_Result.item[0].attributes.getNamedItem('TermInfo').text;

					// ��ȸ��� ���, ��������ڵ� ����.
					locWkSabun := wk_sabun; // �����
					locWkBrNo := lst_Result.item[0].attributes.getNamedItem('BrNo').Text;
					// �����ڵ�
//-					cxLblSeaWkSabun.Hint := wk_sabun; // �����
					cxtWorkerNm.Text := wk_Name;

					Proc_SetFormColor_3(9); // ��� ����Į��� �� �����Ѵ�.
				end else
        if StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Gubun').Text, 2) = 0 then     //��ü 20130519 KHS
				begin
          Log('Line 10031', LOGDATAPATHFILE);
					Try
						frm_Main.Proc_CidLog(99, '���'); // �α� ���.      0�϶��� ������ ���� ���
					  Frm_Main.Frm_JON03[Jon03Tag].pnlBubin.Visible := False;

						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Customer');
						with lst_Result.item[0].attributes do
						begin
							edtCuName.Text := getNamedItem('Name').Text;

							sContent := StringReplace(lst_Result.item[0].attributes.getNamedItem('Info').Text, '|', '��', [rfReplaceAll]);
              if Trim(sContent) <> '' then
              begin
           			ls_Rcrd := TStringList.Create;
                try
            			GetTextSeperationEx2('��', sContent, ls_Rcrd);
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

							sContent := StringReplace(lst_Result.item[0].attributes.getNamedItem('PdaInfo').Text, '|', '��', [rfReplaceAll]);
              if Trim(sContent) <> '' then
              begin
           			ls_Rcrd := TStringList.Create;
                try
            			GetTextSeperationEx2('��', sContent, ls_Rcrd);
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
							//���缳�� ���� ����
							lblCuMileCnt.Caption   := getNamedItem('PrizeCnt').Text;
              sProdName := getNamedItem('Prize').Text;
							SetMileColorChange;

							// hjf-����Ȳ�Ǽ���(�������� ��ȸ)
							if Assigned(getNamedItem('BrTelYN')) then
								CustBrTelYN := getNamedItem('BrTelYN').text;

							if (CustBrTelYN = 'y') then	BtnCenterMng.Down := True	else
              if (CustBrTelYN = '') and (iBarIndex = 1) and (GB_SHOPTYPE_CALLCENTER = 1) then BtnCenterMng.Down := True	else
              if (CustBrTelYN = 'n') then	BtnCenterMng.Down := False;

							SetPayMethod(PAY_METHOD_MONEY); // ����

							// �����ڵ�
							cxtCuBubin.Hint := TRim(getNamedItem('BGroup').Text);
							sBGroup := TRim(getNamedItem('BGroup').Text);
							if (GS_PRJ_AREA = 'S') and (sBGroup <> '') and (locBRNO <> 'G898') and (locBRNO <> 'Q908') and (locBRNO <> 'H849') then
              begin
                LblTop   .Color := $00FE8769;   // �Ķ���
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
								// ��������[���θ� + �μ���]
								cxtCuBubin.Text := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc[iBidx]), 1, 60)) + ' | ' + Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc[iBidx]), 61, 60));
								lblCuBubinName.Caption := '���ΰ� [ ' + Trim(cxtCuBubin.Text) + ' ]';
								iend := StrToIntDef(Copy(GT_BUBIN_INFO.cbEtc[iBidx], 153, 1), 1);

								if (iend = 0) and (gsJON01CreditMoneyYN <> 'FALSE') then
									SetPayMethod(PAY_METHOD_TRUST)  // �ܻ�
								else if (iend = 2) and (gsJON01CreditMoneyYN <> 'FALSE') then
									SetPayMethod(PAY_METHOD_POST_NML)  // �ĺ�
								else
									SetPayMethod(PAY_METHOD_MONEY); // ����
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
							SetPayMethod(PAY_METHOD_POST_MILE); // �λ�5õ�� �ĺҸ��� ��������
							if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
							begin
								UserMile := StrToIntDef(lblCuMile.Caption, 0);
								edtPostPay.Value := IfThen(UserMile >= curRate.Value, curRate.Value, 10000);
							end	else
							begin
                if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;
								if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ2K 20140221 KHS
									edtPostPay.Value := 2000
								else
								if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ3K 20141007 KHS
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
							// 0:����, 4:�ҷ� �Ѵ� �Ϲ����� ó��(�ҷ��ڵ�� ������)
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

						// ������ ��ư Ȱ��ȭ.
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
						sRet := 0; //�������� ����� ������ �ִ��������� ���а�
						eRet := 0; //�������� ������ ������ �ִ��������� ���а�

            if Not pbISStartEndXY then  // �����/�������� �ڷᰡ �ִ��� ���� üũ �� ������ ǥ��  20130724  LYB
            begin
  						// 20120805 ��ǥ ���� üũ LYB
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
  							// ����� ����
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

  							// ����� ��������
  							if Trim(cxtStartAreaDetail.Hint) <> '' then
  								meoStartArea.Text := cxtStartAreaDetail.Hint
  							else if Trim(cxtStartAreaDetail.Text) <> '' then
  								meoStartArea.Text := cxtStartAreaDetail.Text
  							else if Trim(lcsSta3) <> '' then
  								meoStartArea.Text := lcsSta3;

                MarkAllWords(lblStartAreaName, UpperCase(meoStartArea.Text), clRed, [fsBold]);
                MarkAllWords(cxtStartAreaDetail, UpperCase(meoStartArea.Text), clRed, [fsBold]);

  							//�������� ����� ������ �ִ��������� ���а�
  							if Trim(meoStartArea.Text) = '' then
  							begin
  								sRet := 0;
  							end	else
  							begin
  								sRet := 1;
  								GS_Grid_DEP := 'C'; //�������� ����� ����
  								changeLog('S'+ 'C' + lst_Result.item[0].attributes.getNamedItem('MapX').Text + ':' + lst_Result.item[0].attributes.getNamedItem('MapY').Text, false);        //x,y��ǥ ����� �α׻��� 2012.08.08 KHS
  							end;
  							// ������ ����
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

  							// ������ ��������
  							if Trim(cxtEndAreaDetail.Hint) <> '' then
  								meoEndArea.Text := cxtEndAreaDetail.Hint
  							else
  								if Trim(lcsEnd3) <> '' then
  								meoEndArea.Text := lcsEnd3;

                MarkAllWords(cxReEndArea, UpperCase(meoEndArea.Text), clRed, [fsBold]);

  							//�������� ������ ������ �ִ��������� ���а�
  							if Trim(meoEndArea.Text) = '' then eRet := 0
  							else eRet := 1;
  							if Trim(meoEndArea.Text) = '' then
  							begin
  								eRet := 0;
  							end else
  							begin
  								eRet := 1;
  								GS_Grid_DES := 'C'; //�������� ������ ����
  								changeLog('E'+ 'C' + lst_Result.item[0].attributes.getNamedItem('DestX').Text + ':' + lst_Result.item[0].attributes.getNamedItem('DestY').Text, false);        //x,y��ǥ ����� �α׻��� 2012.08.08 KHS
  							end;
  						except
  							on e: exception do
  							begin
  								ls_TxLoad := 'Jon01[����� ���� ��ȸ����]:' + e.Message;
  								Assert(False, E.Message);
  								GMessagebox(PChar(ls_TxLoad), CDMSE);
  								Screen.Cursor := crDefault;
  							end;
  						end;
            end;
						//-------------------------------------------------------------------------------------------
						//      ���ų����� ������ �����, ���纰 �������� ���� ����� ����
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
								ls_TxLoad := 'Jon01[���ų���]:' + e.Message;
								Assert(False, E.Message);
								GMessagebox(PChar(ls_TxLoad), CDMSE);
								Screen.Cursor := crDefault;
							end;
						end;

						// ����޻�뱸��[0:�ڵ����, 1:��������]
						iGrade1 := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Grade1').Text, 5);
						iGrade2 := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Grade2').Text, 15);

						if iEnd >= iGrade1 then
						begin
							// frm_Jon03.frmJON011 ���� �� �ڵ���޺� �� Į�� ������ �ش�.
							Proc_SetFormColor_2(0);
						end	else
            if iEnd >= iGrade2 then
						begin
							// frm_Jon03.frmJON011 ���� �� �ڵ���޺� �� Į�� ������ �ش�.
							Proc_SetFormColor_2(1);
						end else
						begin
							// frm_Jon03.frmJON011 ���� �� �ڵ���޺� �� Į�� ������ �ش�.
							Proc_SetFormColor_2(2);
						end;

						SetCustLevelSeq(lst_Result.item[0].attributes.getNamedItem('LevelCD').Text);

						// �� ���п� ���� ���� ǥ��
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
						if lst_Result.item[0].attributes.getNamedItem('AppDelYn').Text = 'y' then sAppDelYn := '���û���'
						else sAppDelYn := '���û��';

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

						//================================= ������ Display End. =====================================
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Driver');
						wk_br_Name := lst_Result.item[0].attributes.getNamedItem('BrName').Text
							+ '(' + lst_Result.item[0].attributes.getNamedItem('BrNo').Text + ')';
						wk_sabun := lst_Result.item[0].attributes.getNamedItem('Sabun').Text;
						wk_Name := lst_Result.item[0].attributes.getNamedItem('TermInfo').text;
						wk_Name := lst_Result.item[0].attributes.getNamedItem('Name').Text;

						Frm_JON012.sFinishCnt := lst_Result.item[0].attributes.getNamedItem('FinishCnt').text;
						Frm_JON012.sCancelCnt := lst_Result.item[0].attributes.getNamedItem('CancelCnt').text;
						Frm_JON012.sPhone_info := lst_Result.item[0].attributes.getNamedItem('TermInfo').text;

						// ��ȸ��� ���, ��������ڵ� ����.
						locWkSabun := wk_sabun; // �����
						locWkBrNo := lst_Result.item[0].attributes.getNamedItem('BrNo').Text;
						// �����ڵ�
//-						cxLblSeaWkSabun.Hint := wk_sabun; // �����
						cxtWorkerNm.Text := wk_Name;

						Proc_SetFormColor_3(9); // ��� ����Į��� �� �����Ѵ�.
						Proc_SetFormColor_2(9);
					except
						on e: exception do
						begin
							ls_TxLoad := 'Jon01[�� ��ȸ����]:' + e.Message;
							Assert(False, E.Message);
							GMessagebox(PChar(ls_TxLoad), CDMSE);
							Screen.Cursor := crDefault;
						end;
					end;
				end;
        Log('Line 10406', LOGDATAPATHFILE);

        // ���޸�/���޸� ǥ��
        if ( GS_AUTOMEMO_SHOW ) Or ( Frm_JON011.Showing ) then BtnViewMemo.Click;

				// �� �̿볻���� ����ش�.
				Frm_JON012.cxGVeOrderList.DataController.SetRecordCount(0);

				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/AcceptInfo');
				iRCnt := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Count').Text, 0);

				// 2011.03.07 ��ȭ2��ȸ �߰�
				sTelse      := lst_Result.item[0].attributes.getNamedItem('Tel2Count').Text;
				if sTelse <> '0' then
			 		GMessagebox('����ȭ2�� ��ϵ� ������ �ֽ��ϴ�.',cdmsi);

				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/AcceptInfo/Accept');
				if iRcnt > 0 then
				begin // ���� �̿볻���� �����ش�.
					try
						ACount := 0;
						outputdebugstring(pchar(inttostr(ircnt)));
						for i := 1 to iRcnt do
						begin

							if lst_Result.item[i - 1].attributes.getNamedItem('InTime').Text = '' then
								Continue;

							Application.ProcessMessages;
							Inc(ACount);
							//          ��������(0), ����(1), �����, ������, ���, ���(5), ��һ���, ����, ������, ��ǥ��ȣ(9),
							//          �޸�(10), ������ȣ(11), �����Ͻ�(12), �����ڵ�2, ����ȭ��ȣ(14),
							//          �������ǥX, �������ǥY(16), �����1, �����2, �����3(19), �����4, �����5(21),
							//          ��������ǥX, ��������ǥY(23), ������1, ������2, ������3(26), ������4, ������5(28)
							sCurMileage := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('CurMileage').Text, 0.0));
							sMileage    := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0));
							locaryOrderList[i, 0] := lst_Result.item[i - 1].attributes.getNamedItem('InTime').Text; // ��������
							locaryOrderList[i, 1] := lst_Result.item[i - 1].attributes.getNamedItem('Status').Text; // ��������
							if lst_Result.item[i - 1].attributes.getNamedItem('Status').Text = 'gi' then
							begin
								locaryOrderList[i, 2] := '��ǰ����';
								locaryOrderList[i, 3] := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '�� ��ǰ����';
							end else
              if lst_Result.item[i - 1].attributes.getNamedItem('Status').Text = 'cs' then
							begin
								locaryOrderList[i, 2] := '���ݼ���';
								locaryOrderList[i, 3] := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '�� ���ݼ���';
							end	else
              if lst_Result.item[i - 1].attributes.getNamedItem('Status').Text = 'bi' then
							begin
								locaryOrderList[i, 2] := '�����Է�';
								locaryOrderList[i, 3] := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '�� �����Է�';
							end	else
							begin
								locaryOrderList[i, 2] := lst_Result.item[i - 1].attributes.getNamedItem('Area5').Text;
								locaryOrderList[i, 3] := lst_Result.item[i - 1].attributes.getNamedItem('EdArea5').Text;
							end;

							locaryOrderList[i, 4] := lst_Result.item[i - 1].attributes.getNamedItem('WkSabun').Text; // �����
							locaryOrderList[i, 5] := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Charge').Text, 0.0));
							if StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0) < 0 then
							begin
								locaryOrderList[i, 6] := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0))
																			 + '(���ϸ������) (�ܾ� : ' + sCurMileage + ')';
							end	else
              if StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0) > 0 then
							begin
								locaryOrderList[i, 6] := '+'+formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0))
																			 + ' (�ܾ� : ' + sCurMileage + ')';
							end	else
              if StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0) = 0 then
							begin
								locaryOrderList[i, 6] := formatfloat('#,##0', StrToFloatDef(lst_Result.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0));
							end;

							locaryOrderList[i, 7] := lst_Result.item[i - 1].attributes.getNamedItem('CReason').Text; // ��һ���
							locaryOrderList[i, 8] := lst_Result.item[i - 1].attributes.getNamedItem('ConfInfo').Text; // ����
							locaryOrderList[i, 9] := lst_Result.item[i - 1].attributes.getNamedItem('Member').Text; // ������
							locaryOrderList[i, 10] := lst_Result.item[i - 1].attributes.getNamedItem('KeyNumber').Text; // ��ǥ��ȣ
							locaryOrderList[i, 11] := lst_Result.item[i - 1].attributes.getNamedItem('Memo').Text; // �޸�

              sTemp := '';
  						sContent := StringReplace(locaryOrderList[i, 11], '|', '��',  [rfReplaceAll]);
              if Trim(sContent) <> '' then
              begin
           			ls_Rcrd := TStringList.Create;
                try
            			GetTextSeperationEx2('��', sContent, ls_Rcrd);
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

							locaryOrderList[i, 12] := lst_Result.item[i - 1].attributes.getNamedItem('ConfSlip').Text; // ������ȣ
							locaryOrderList[i, 13] := lst_Result.item[i - 1].attributes.getNamedItem('InDate').Text; // �����Ͻ�
							if (not FHasTodayData) and (copy(locaryOrderList[i, 13], 1, 19) >= StartDateTime('yyyy-mm-dd hh:nn:ss')) then
								FHasTodayData := True;

							locaryOrderList[i, 14] := lst_Result.item[i - 1].attributes.getNamedItem('Status').Text; // ��������
							sCustTel := lst_Result.item[i - 1].attributes.getNamedItem('CustTel').Text;
							sBrNo := lst_Result.item[i - 1].attributes.getNamedItem('ConfBrch').Text;
							sAccCenter := lst_Result.item[i - 1].attributes.getNamedItem('AcceptCenter').Text;

							locaryOrderList[i, 15] := func_Cust_Tel(sCustTel, sBrNo, sAccCenter, locaryOrderList[i, 12]); // ����ȭ��ȣ
							locaryOrderList[i, 16] := lst_Result.item[i - 1].attributes.getNamedItem('MapX').Text; // ����ǥX
							locaryOrderList[i, 17] := lst_Result.item[i - 1].attributes.getNamedItem('MapY').Text; // ����ǥY
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
							locaryOrderList[i, 30] := lst_Result.item[i - 1].attributes.getNamedItem('MultiCallGB').Text; // ������ ���� : (1/3)
							locaryOrderList[i, 31] := IntToStr(ACount);
							// 2011.01.05 Ÿ������������ �ʵ��߰�
							locaryOrderList[i, 32] := lst_Result.item[i - 1].attributes.getNamedItem('BrName').Text;
							locaryOrderList[i, 33] := lst_Result.item[i - 1].attributes.getNamedItem('Callcenter').Text; // ������ ���� : (1/3)

							locaryOrderList[i, 34] := lst_Result.item[i - 1].attributes.getNamedItem('OrderType').Text; // ����Ÿ���߰� 2011.03.07
              // OrderType="��������(1:��ȭ2�ΰ˻��ȿ���, 2:����, 3:����, 4:���ϸ���, 5:���DB)"

							locaryOrderList[i, 35] := lst_Result.item[i - 1].attributes.getNamedItem('BaechaTime').Text; // �����ð� 2011.08.20
							locaryOrderList[i, 36] := lst_Result.item[i - 1].attributes.getNamedItem('FinishTime').Text; // �Ϸ�ð� 2011.08.20
							locaryOrderList[i, 37] := lst_Result.item[i - 1].attributes.getNamedItem('WkHead').Text; // ��纻���ڵ� 2011.08.20
							locaryOrderList[i, 38] := lst_Result.item[i - 1].attributes.getNamedItem('WkBrch').Text; // ��������ڵ� 2011.08.20
							locaryOrderList[i, 39] := lst_Result.item[i - 1].attributes.getNamedItem('WkCenter').Text; // ����ݼ��� 2011.08.20
							locaryOrderList[i, 40] := lst_Result.item[i - 1].attributes.getNamedItem('FirstInSource').Text; // ������������ 2013.03.30
						end;
					except
						on e:exception do
						begin
							ShowMessage('�� �̿볻�� Display Error!!');
						end;
					end;
					Frm_JON012.Tag := Self.Tag;
					// ���� �Ҵ�� �� �迭���� ����.(���� ��ȸ�� �� �����Ͱ� �ִ��� ���θ� üŷ)
          // �� �̿볻���� �׸��忡 �����ش�.
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

				// [hjf] xml�� ���� ������� �����ϰ� ������Ͽ��� �ش� xml�� ���� ����� ǥ��
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
			// CID ��ȸ �϶��� �߽���ȭ���� ��Ʈ ����..
			if (locCustHP_MainNum_Search = '') and (cxLblCIDUseFlg.Hint <> 'CID') then
			begin
				cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);
				cxtCallTelNum.Text := cxtCuTel.Text; // �߽���ȭ��ȣ
				locsCuTel := cxtCuTel.Text;
			end	else
			begin
				locsCuTel := cxtCallTelNum.Text;
			end;

			cxBtnCuUpdate.Enabled := True;
			btnMileOut.Enabled := True;

			// ���纯�� ����.[����:����ȸ �� ���纯��� ��ȸ�� ������ �Ϻ����� ���޽��� ���� ������]
			cboBranch.Properties.ReadOnly := True;

			if lcsCu_seq <> '' then
			begin

			end	else
			begin
				// ���� : $0070FEF3, ������ : $00FAEDE2
				if (cxLblCIDUseFlg.Hint = 'CID') and (locWkSabun = '') then
				begin // CID ��ȸ���� ������ �Ѵ�.
					tmMent.Enabled := True;
					locKNum := Proc_MainKeyNumberSearch; // ��ǥ��ȣ ����.
					lblNewCustYN.Caption := sBr_Name + ' / ' + locKNum + ' ��' + '-->>�ű� ��<<-- �Դϴ�.';
					pnlNewCustYN.Visible := True; // �ű԰������� ������ �����ش�.
				end;
			end;

			Frm_JON012.cxlbSlip.Caption := cxtJoinNum.Text; // ����������ȣ
			Frm_JON012.cxlbCustTel.Caption := locsCuTel; // ����ȭ��ȣ �б�.
			Frm_JON012.cxlbKeyNum.Caption := Proc_MainKeyNumberSearch; // ��ǥ��ȣ �б�.

      if cxLblCIDUseFlg.Hint = 'CID' then
        // ���α׷� �ּ�ȭ�ÿ� ����â �߸� POI�˻�â�� ������ ǥ�� �ȵ�
        SetWindowPos(Frm_JON30.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

			pnlJonMain.Enabled := True;   // ����â ���� ������. 2011-11-08.
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

// ���纰 ��Ʈ ���ϱ�..
function TFrm_JON01.Func_brtel_memo(sBrNo, sKeyNum: string): string;
var
  i: Integer;
  wMemo, wResult: String;
begin
  wResult := '';
  i := 0;
  // 0�����ڵ�, 1�����, 2��ǥ��ȣ, 3�⺻���, 4�ݼ����ڵ�, 5�����ڵ�, 6��Ʈ, 7��Ȳ�ǹ�ȣ
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

// ����ȭ��ȣ ��ŷó��.. (��ȣ 2008-08-19)
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
  begin // ����ȣ �ڻ��� ����
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
  end else if TCK_USER_PER.JON_CustTelDayOpen = '1' then  // ����ȣ �ڻ��� ���ϸ� ����
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

    if sCust_Gubun = '1' then                         //���
    begin
      Frm_JON012.cxPageControl1.Pages[0].TabVisible := False;
      Frm_JON012.cxPageControl1.Pages[1].TabVisible := False;

      Frm_JON012.BtnSheet1.Visible := False;
      Frm_JON012.BtnSheet2.Visible := True;

      Frm_JON012.cxPageControl1.ActivePageIndex := 1;
      Frm_JON012.BtnSheet2.Down := True;
      Frm_JON012.sActivePage := 1;
      //////////////////////////��������� ��ȸ//////////////////////////////
      Frm_JON012.sWk_sabun32 := wk_sabun;
      //��� �� ���� �ʱ�ȭ
      Frm_JON012.Proc_Initialization;
      //��� �� ���� ǥ��
      Frm_JON012.Proc_WorkerInfo;
      //��� ���� �������� ��ȸ���ν���
      Frm_JON012.Proc_WorkerOrderToday;
      // ��� ���� ��Ȳ ��ȸ
      Frm_JON012.btn5.Click;
      Frm_JON012.lbl8.Visible := False;
      Frm_JON012.cxBtnOldSelect.Visible := False;
      Frm_JON012.cxBtnColorSet.Visible := False;
      Frm_JON012.Pnl_Title.Color := $00D1E7E9;
      Frm_JON012.lb_wkname_title.Visible := True;
    end else
    if sCust_Gubun = '2' then                        //��
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
    if ( sCust_Gubun = '0' ) And ( Not FHasTodayData ) then                        //���+��
    begin
      Frm_JON012.cxPageControl1.Pages[0].TabVisible := False;
      Frm_JON012.cxPageControl1.Pages[1].TabVisible := False;

      Frm_JON012.BtnSheet1.Visible := True;
      Frm_JON012.BtnSheet2.Visible := True;

      Frm_JON012.cxPageControl1.ActivePageIndex := 1;
      Frm_JON012.BtnSheet2.Down := True;
      Frm_JON012.sActivePage := 1;
      //////////////////////////��������� ��ȸ//////////////////////////////
      Frm_JON012.sWk_sabun32 := wk_sabun;
      //��� �� ���� �ʱ�ȭ
      Frm_JON012.Proc_Initialization;
      //��� �� ���� ǥ��
      Frm_JON012.Proc_WorkerInfo;
      //��� ���� �������� ��ȸ���ν���
      Frm_JON012.Proc_WorkerOrderToday;
      // ��� ���� ��Ȳ ��ȸ
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

      if sCust_Gubun = '0' then                        //���+��   ������������������� 2013.05.28 KHS
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
        //////////////////////////��������� ��ȸ//////////////////////////////
        Frm_JON012.sWk_sabun32 := wk_sabun;
        //��� �� ���� �ʱ�ȭ
        Frm_JON012.Proc_Initialization;
        //��� �� ���� ǥ��
        Frm_JON012.Proc_WorkerInfo;
        //��� ���� �������� ��ȸ���ν���
        Frm_JON012.Proc_WorkerOrderToday;
        // ��� ���� ��Ȳ ��ȸ
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

// �� �̿볻���� ����ش�.
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
      // ���� �Ҵ�� �� �迭���� ����.(���� ��ȸ�� �� �����Ͱ� �ִ��� ���θ� üŷ)
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

// �޾ƿ� ������ ������ �迭�� �����Ѵ�.
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

    iFidx := Self.Tag; // ���� �ε����� �����´�.

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
          GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
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

// ������� �� ����� ó�� �Ѵ�.
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
      begin // ������ ���� ��� ����.
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
        // �������� ������� ������ �Ѵ�.
        if (btnCmdExit.Hint = 'UPDATE_MODE') and (Pos('����', Self.Caption) > 0 ) then
          Frm_Main.Frm_JON03[Jon03Tag].proc_Acc_Search(1, cxtJoinNum.Text)
        else
        begin
          //����ȣ�� ������Ȳ ��ȸ (2008.08.01 KJH)
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
      begin // ������ ���� ��� ����.
        // ȭ���� �ݴ´�.
        tmFormClose.Tag := 77; // ȭ�� �ݱ� ������.
        loc_TmClose := 'CLOSE'; // ȭ�� ���� Ÿ�̸� ����. CDS. 080830.
        tmFormClose.Enabled := True; // ȭ���� �ݴ´�.
      end else
      begin
        lcsCu_seq := GetXmlErrorMsg(ss_RxXml);   // 20130727  LYB  ����ĺ���/�����ĺ��� �� ���� �ű԰� ����ȣ ����
        if (Pos('����', Self.Caption) > 0 ) then
        begin
          if btnCmdExit.Hint = 'UPDATE_MODE' then
          begin // �������� ������� ������ �Ѵ�.
            if loc_bUpdateLock = True then
            begin // ����ȭ�� Lock ���� ����.[True:����, False:�̼���]
              //Proc_AcceptLock('2');          // �ش������ Lock�� ���� �Ѵ�.
              tmFormClose.Tag := 88; // ȭ�� �ݱ� ������.
              loc_TmClose := 'UNLOCK';
              // ȭ�� ���� Ÿ�̸� ����. CDS. 080830.
              tmFormClose.Enabled := True; // LOCK�� �����Ѵ�.
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
   	Only_Exit := True;   //�����ư ��Ʈ �ʱ�ȭ �����   20130808  LYB
    GMessagebox(MSG431 + CRLF + ls_Msg_Err, CDMSE);
  end;
end;

// ���⺻������ ���� ��û �� ��� ó���� �Ѵ�.
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
    GMessagebox('�������� ���� �Ϸ� �Ͽ����ϴ�.', CDMSI);
  end else
  begin
    ShowMessage('������ �������� ������ �߻� �Ͽ����ϴ�.' + #10#13 + ls_Msg_Err);
  end;
end;

// �� SEQUENCE �� ��ȸ �� �´�.
procedure TFrm_JON01.Proc_CuSeq_Select;
var
  ls_TxLoad, ls_TxQry, sQueryTemp : string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
  if cxLblCIDUseFlg.Hint <> 'CID' then
  begin // CID ��ȸ���� ������ �Ѵ�.
    if (Length(Trim(cxtCuTel.Text)) < 4) or (Length(Trim(cxtCallTelNum.Text)) < 4) then
    begin
      ShowMessage('�� ��ȭ��ȣ�� ���ų� ����Ȯ �մϴ�. ���� ���� �� �������� ��ȸ �ϼ���!');
      cxtCuTel.Text := '';
      cxtCallTelNum.Text := '';
      Exit;
    end;
    if cxtCuTel.Text <> gsCuTelHint then
    begin
      ShowMessage('�Է��� ��ȭ��ȣ�� ��ȸ�� ��ȭ��ȣ�� �ٸ��ϴ�. ���� ���� �� ����ȸ �ϼ���!');
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
  locHdNo := Proc_HDNOSearch; // �����ڵ� ������ �д´�.
  locBrNo := Proc_BRNOSearch; // �����ڵ� ������ �д´�.
  locKNum := Proc_MainKeyNumberSearch; // ��ǥ��ȣ ������ �д´�.

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

          tmFormClose.Tag := 99; // ȭ�� �ݱ� ������.
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

// �� SEQUENCE ��ȸ�� ���� ����� ó�� �Ѵ�.
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
      // �� SEQUENCE ������ �д´�.
      ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_Msg_Err) then
      begin
        sTmp := Proc_MainKeyNumberSearch; // ���� ��ǥ��ȣ�� �����´�.
        sTmp2 := Proc_BrNameReadSearch;
        // ���õ� ������������ ������� ���� �Ѵ�.
        if (0 < GetXmlRecordCount(ls_rxxml)) then
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          lcsCu_seq := Trim(GetTextSeperationFirst('��', lst_Result.item[0].attributes.getNamedItem('Value').text));
          // ���� : $0070FEF3, ������ : $00FAEDE2
        end else
        begin
          ShowMessage(sTmp2 + ' ���翡 ' + cxtCuTel.Text + ' ��ȣ�� ��ϵ� �������� �����ϴ�.');
        end;
        cxTxtBrNameCaption.Text := '���纯���:' + sTmp2 + ' / ' + sTmp;
        // �����, ��ǥ��ȣ ������ ���� Ȯ~ ���̰�, ũ�� �����ش�.
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
        ShowMessage('����� ������ ���� �Ͽ����ϴ�.');
      end else
        GMessagebox(ls_Msg_Err, CDMSE);
    end else
    if ls_ClientKey = 'CUSE0012' then
    begin
       // ������ ���� ���� ����
    end;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

// ���õ� ������������ ������� ���� �Ѵ�.
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

  // ����: "NS����[15889999] A100 .B100 "   2011.05.17  CDS.
  iPos2 := Pos('[', sTmp);
  if iPos2 > 0 then
  begin
    sTmp := Copy(sTmp, 1, iPos2-1);
    sBrName := sTmp;
  end;

  Result := sBrName;
end;

// ��ȭ��ȣ�� ���浵 ��ǥ�� ��ȸ �� �� ��� ó���� �Ѵ�.
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
    GMessagebox('[��ȭ��ȣ��ġ�˻�]XML���� ������ ���� �ʽ��ϴ�.' + #13#10 +
      '�ٽ��ѹ� ��ȸ �ϼ���', CDMSI);
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
        begin // ��ġ������ �����ش�.
          for i := 0 to iRcnt - 1 do
          begin
            if lst_Result.item[i].attributes.getNamedItem('City').Text = '' then
              Continue;
            Application.ProcessMessages;
            //�õ�, �ñ���, ���鵿, ��������, X��ǥ, Y��ǥ
            AddItem := Frm_Com30.cxListViewArea.Items.Add;
            AddItem.Caption := lst_Result.item[i].attributes.getNamedItem('City').Text; // ��/��
            AddItem.SubItems.Add(lst_Result.item[i].attributes.getNamedItem('Ward').Text); // ��/��/��
            AddItem.SubItems.Add(lst_Result.item[i].attributes.getNamedItem('Dong').Text); // ��/��/��
            AddItem.SubItems.Add(lst_Result.item[i].attributes.getNamedItem('Detail').Text); // ��������
            AddItem.SubItems.Add(lst_Result.item[i].attributes.getNamedItem('Tel').Text); // ��ȭ��ȣ
            AddItem.SubItems.Add(lst_Result.item[i].attributes.getNamedItem('X').Text); // X��ǥ
            AddItem.SubItems.Add(lst_Result.item[i].attributes.getNamedItem('Y').Text); // Y��ǥ
          end;

          if Frm_COM30.cxListViewArea.Items.Count > 0 then
            Frm_COM30.cxListViewArea.ItemIndex := 0
          else
            ShowMessage('[��ȭ��ȣ��ġ�˻�] �˻� �����Ͱ� �����ϴ�.');
        end else
        begin
          ShowMessage('[��ȭ��ȣ��ġ�˻�] �˻� �����Ͱ� �����ϴ�.');
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

// [����ȭ�� ����..]�����Ϸù�ȣ:������ȣ�� ��ȸ �� �� ��� ó���� �Ѵ�.
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
	iFidx := Self.Tag; // ���� index�� �д´�.
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
        GMessageBox('Ÿ������ ������ �� �����ϴ�.', CDMSI);
        tmFormClose.Tag := 77; // ȭ�� �ݱ� ������.
        loc_TmClose := 'CLOSE'; // ȭ�� ���� Ÿ�̸� ����. CDS. 080830.
        tmFormClose.Enabled := True; // ȭ���� �ݴ´�.
        Exit;
      end;

      // [hjf-�ϵ��ڵ�] 2009.03.06 �ڸ���(ī���) ���󱸺�
			if (GS_PRJ_AREA = 'S') and (locBRNO = 'H849') then
      begin
        LblTop   .Color := clRed;       // ������
        LblLeft  .Color := LblTop.Color;
        LblRigth .Color := LblTop.Color;
        LblBottom.Color := LblTop.Color;
        PnlTitle .Color := LblTop.Color;
        PnlWorkMemo.Color := LblTop.Color;
        PnlBtm.Color := LblTop.Color;
        PnlBox4.Color := LblTop.Color;
        Pnl_BubinV.Color := LblTop.Color;
			end else
			// [cds-�ϵ��ڵ�] 2011.10.11 �ڸ���(ī���) ���󱸺� �߰�. 1577-5000.  �ſ�ī�� (1577-9482)
      if (GS_PRJ_AREA = 'S') and ( (locBRNO = 'G908') Or (locBRNO = 'G902') )  then
      begin
        LblTop   .Color := $00FE8769;   // �Ķ���
        LblLeft  .Color := LblTop.Color;
        LblRigth .Color := LblTop.Color;
        LblBottom.Color := LblTop.Color;
        PnlTitle .Color := LblTop.Color;
        PnlWorkMemo.Color := LblTop.Color;
        PnlBtm.Color := LblTop.Color;
        PnlBox4.Color := LblTop.Color;
        Pnl_BubinV.Color := LblTop.Color;
			end else
			// [cds-�ϵ��ڵ�] 2012.10.09 �ڸ���(02-2000-0000) ���󱸺� �߰�. KHS
      if (GS_PRJ_AREA = 'S') and (locBRNO = 'Q908') then
      begin
        LblTop   .Color := clGreen;   // ���
        LblLeft  .Color := LblTop.Color;
        LblRigth .Color := LblTop.Color;
        LblBottom.Color := LblTop.Color;
        PnlTitle .Color := LblTop.Color;
        PnlWorkMemo.Color := LblTop.Color;
        PnlBtm.Color := LblTop.Color;
        PnlBox4.Color := LblTop.Color;
        Pnl_BubinV.Color := LblTop.Color;
			end else
			// [cds-�ϵ��ڵ�] 2012.10.09 ������ ���󱸺� �߰�.
      if (GS_PRJ_AREA = 'S') and (locBRNO = 'G898') then
      begin
        LblTop   .Color := $0000C8FF;   // ���
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
        LblTop   .Color := $00E0EDEA;   // �⺻��
        LblLeft  .Color := LblTop.Color;
        LblRigth .Color := LblTop.Color;
        LblBottom.Color := LblTop.Color;
        PnlTitle .Color := LblTop.Color;
        PnlWorkMemo.Color := LblTop.Color;
        PnlBtm.Color := LblTop.Color;
        PnlBox4.Color := LblTop.Color;
        Pnl_BubinV.Color := LblTop.Color;
      end;

      sBr_Name := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('BrName').Text); // ����� �б�.
      locKNum := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('KeyNumber').Text); // ��ǥ��ȣ �б�.
      sAccCenter := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('CallCenter').text); // �ݼ���
      // ���縮��Ʈ���� ��ǥ��ȣ, �����ڵ� index ã�� �� ����.

      if Proc_BrNoListIdxFind(locBRNO, locKNum) = False then
      begin
        cboBranch.Tag := 10;
        // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
        cboBranch.Properties.Items.Clear; // ���縮��Ʈ �ʱ�ȭ.
        cboBranch.Properties.Items.Add(sBr_Name + '[' + locKNum + '] ' +  Copy(locHDNO + '     ', 1, 5) + '.' + Copy(locBRNO + '     ', 1, 5));
        // �����ڵ�   // �����ڵ�   // �����   // ��ǥ��ȣ
        cboBranch.ItemIndex := 0;
        cboBranch.Tag := 0;
        // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
      end;
      cxTxtBrNameCaption.Text := sBr_Name + ' / ' + locKNum;
      // �����, ��ǥ��ȣ ������ ���� Ȯ~ ���̰�, ũ�� �����ش�.

      loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/Service/Data/Driver');
      wk_br_Name := loc_Ud_lst_Node.item[0].attributes.getNamedItem('WkBrName').Text + '(' + loc_Ud_lst_Node.item[0].attributes.getNamedItem('WkBrNo').Text + ')';
      wk_sabun := loc_Ud_lst_Node.item[0].attributes.getNamedItem('WkSabun').Text;
      wk_Name := loc_Ud_lst_Node.item[0].attributes.getNamedItem('WkName').Text;
      wk_Tel := Copy(wk_Name, Pos('|', wk_Name) + 1, 15); // �����ȭ��ȣ ����
      wk_Name := Copy(wk_Name, 1, Pos('|', wk_Name) - 1);
      // ��� ���, ��������ڵ� ����.
      locWkSabun := wk_sabun; // �����
      locWkBrNo := loc_Ud_lst_Node.item[0].attributes.getNamedItem('WkBrNo').Text;
      // �����ڵ�
//-      cxLblSeaWkSabun.Hint := wk_sabun; // �����
      cxtWorkerNm.Text := wk_Name;

			loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/Service/Data/Customer');

      // ������ ��ư Ȱ��ȭ.
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

      OrderState := loc_Ud_lst_Node.item[0].attributes.getNamedItem('ConfSt').Text; // ���� ���� �б�.

      // KCP ī�� ���� �Ϸù�ȣ. 2011-10-19
      // "�߰�����" ��� �϶��� ī�� �ŷ��Ϸù�ȣ �� ���� �ʴ´�.
			try
				Pay_Gubun := loc_Ud_lst_Node.item[0].attributes.getNamedItem('PayMeth').Text;
				locCardPaySeq := '';

        if btnCmdUpdSave.Hint = '�߰�����' then
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

      sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('PayMeth').Text;        //��ġ �̵� 2011.11.25 KHS ������üũ�ڽ� �ʱ�ȭ����
      //---------------------------- 2011-11-11.
      BtnPlusYN.Hint := 'NOCHANGE';

      PayMethod := sTemp;
      BtnPlusYN.Hint := '';

      //----------------------------
      Application.ProcessMessages;

      // �÷����� ���� ����. 2010.10.03
      // �÷����� ����(�����Ǹ� �����) --> 2011-11-10 �����ݷ� �뵵���� ���.
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

			//================================= ������ Display Start. =====================================
      edtCuName.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CuName').Text;

			sContent := StringReplace(loc_Ud_lst_Node.item[0].attributes.getNamedItem('Info').Text, '|', '��',  [rfReplaceAll]);
      if Trim(sContent) <> '' then
      begin
   			ls_Rcrd := TStringList.Create;
        try
    			GetTextSeperationEx2('��', sContent, ls_Rcrd);
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

			// ������ ����� ȣ����� 2011.03.07
			sContent := StringReplace(loc_Ud_lst_Node.item[0].attributes.getNamedItem('PdaInfo').Text, '|', '��', [rfReplaceAll]);
      if Trim(sContent) <> '' then
      begin
   			ls_Rcrd := TStringList.Create;
        try
    			GetTextSeperationEx2('��', sContent, ls_Rcrd);
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
				// 0:����, 4:�ҷ� �Ѵ� �Ϲ����� ó��(�ҷ��ڵ�� ������)
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

      // �� ���п� ���� ���� ǥ��
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

      if btnCmdUpdSave.Hint <> '�߰�����' then
      begin
        shpModifyTitle.Visible := True;
        PnlModifyTitle.Visible := True;
      end;

      sTemp2 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('MemName').Text; // ������
      StCd := loc_Ud_lst_Node.item[0].attributes.getNamedItem('ConfSt').Text; // ���� ���� �б�.
      CReason := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CReason').Text; // ��һ���
      cxtJoinNum.Hint := Trim(StCd); // ���� ���°��� �����Ѵ�.
      // ���� ���� �ڵ带 ���ڿ��� �������ش�.
      sTemp := Func_OrderStateConvert(StCd);
      GrpCReason.Caption := Format(' �������� : %s', [sTemp]);
			lblCReason.Caption := CReason;

      grpOrderInfoView.Caption := '�� ����';


      if Trim(CReason) = '' then
      begin
        PnlModifyTitle.Height := 17;
        // �������� ���� ���̱�..
        cxLblOrderUpInfo.Caption := '����:' + cxtJoinNum.Text + ' ����:' + sTemp + ' ����:' + sTemp2;
      end else
      begin
        PnlModifyTitle.Height := 30;
        // �������� ���� ���̱�..
        cxLblOrderUpInfo.Caption := '����:' + cxtJoinNum.Text + ' ����:' + sTemp + ' ����:' + sTemp2 + #10 +
                                    '[ '+CReason+' ]';
      end;

      sOrderUpInfo :=                '�� �� �� ȣ : ' + cxtJoinNum.Text + #10;
      sOrderUpInfo := sOrderUpInfo + '���� ���� : ' + sTemp2 + #10;
      sOrderUpInfo := sOrderUpInfo + '�� �� �� �� : ' + sTemp + #10;
      sTemp2 := loc_Ud_lst_Node.item[0].attributes.getNamedItem('FinDate').Text; // ���������ð�
      sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('InDate').Text; // �����ð�
      sOrderUpInfo := sOrderUpInfo + '���������ð� : ' + Copy(sTemp2, 1, 19) + #10;
      sOrderUpInfo := sOrderUpInfo + '�� �� �� �� : ' + Copy(sTemp, 1, 19) + #10;
      sOrderUpInfo := sOrderUpInfo + '��������̸� : [' + wk_sabun + ']' +  wk_Name + #10;
      sOrderUpInfo := sOrderUpInfo + '����������� : ' + wk_Tel + #10;
      sOrderUpInfo := sOrderUpInfo + '�������Ҽ� : ' + wk_br_Name;
      cxMeoOrderUpInfo.Text := sOrderUpInfo;

      if loc_Ud_lst_Node.item[0].attributes.getNamedItem('SMS').Text = 'n' then
        BtnCuSmsNo.Down := True
      else
      if loc_Ud_lst_Node.item[0].attributes.getNamedItem('SMS').Text = 'y' then
        BtnCuSmsNo.Down := False;

      // ���� ����� ���� �Ѵ�.
      sNowRate := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Charge').Text;
      curRate.Value := StrToIntDef(sNowRate, 0);
			if ((gsMyMainTelUse = 'FALSE') or (GSMyMainTelOrderChargeCheck)) and (not IsMultiCallFixPrice) then
        OrgRate := curRate.Value;

      lblCuMile.Caption := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CurMlg').Text;
      lblCuMileUnit.Caption := loc_Ud_lst_Node.item[0].attributes.getNamedItem('PrizeMlg').Text; //���缳�� ���� ����
      lblCuMileCnt.Caption := loc_Ud_lst_Node.item[0].attributes.getNamedItem('PrizeCnt').Text;
      sProdName := loc_Ud_lst_Node.item[0].attributes.getNamedItem('Prize').Text;
      SetMileColorChange;
      PostTime := loc_Ud_lst_Node.item[0].attributes.getNamedItem('PostTime').Text;
      edtPostPay.Value := StrToIntDef(loc_Ud_lst_Node.item[0].attributes.getNamedItem('PostCharge').Text, 0);

      // �����ڵ�
      cxtCuBubin.Hint := TRim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('BGroup').Text);
      // + ',' + ed_MaddBrch.Text;
      if cxtCuBubin.Hint <> '' then
      begin
        sTemp := TRim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('BGName').Text); // ���θ�
        sTemp2 := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('BGDName').Text); // ���κμ���
        cxtCuBubin.Text := sTemp + ' | ' + sTemp2;
        lblCuBubinName.Caption := '���ΰ� [ ' + Trim(cxtCuBubin.Text) + ' ]';
      end;

      // ����� ����

      // 20120805 ��ǥ ���� üũ LYB
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

      // ����� ��������
      if Trim(cxtStartAreaDetail.Hint) <> '' then
        meoStartArea.Text := cxtStartAreaDetail.Hint
      else if Trim(cxtStartAreaDetail.Text) <> '' then
        meoStartArea.Text := cxtStartAreaDetail.Text
      else if Trim(lcsSta3) <> '' then
        meoStartArea.Text := lcsSta3;

      MarkAllWords(lblStartAreaName, UpperCase(meoStartArea.Text), clRed, [fsBold]);
      MarkAllWords(cxtStartAreaDetail, UpperCase(meoStartArea.Text), clRed, [fsBold]);

      // ������ ����
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
      // ������ ��������
      if Trim(cxtEndAreaDetail.Hint) <> '' then
        meoEndArea.Text := cxtEndAreaDetail.Hint
      else if Trim(cxtEndAreaDetail.Caption) <> '' then
        meoEndArea.Text := cxtEndAreaDetail.Caption
      else if Trim(lcsEnd3) <> '' then
        meoEndArea.Text := lcsEnd3;

      MarkAllWords(cxReEndArea, UpperCase(meoEndArea.Text), clRed, [fsBold]);
   //-------------------------------------------------------------------------------------------
   //      ���ų����� ������ �����, ���纰 �������� ���� ����� ����
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

   // ����޻�뱸��[0:�ڵ����, 1:��������]
   //sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('LevelType').Text;
   //if sTemp = '0' then begin
      //CU_LEVEL_TYPE : 0 : �� ��� �ڵ����
      iGrade1 := StrToIntDef(loc_Ud_lst_Node.item[0].attributes.getNamedItem('Grade1').Text, 5);
      iGrade2 := StrToIntDef(loc_Ud_lst_Node.item[0].attributes.getNamedItem('Grade2').Text, 15);
      Application.ProcessMessages;
      if iEnd >= iGrade1 then
      begin
        // frm_Jon03.frmJON011 ���� �� �ڵ���޺� �� Į�� ������ �ش�.
        Proc_SetFormColor_2(0);
      end else
      if iEnd >= iGrade2 then
      begin
        // frm_Jon03.frmJON011 ���� �� �ڵ���޺� �� Į�� ������ �ش�.
        Proc_SetFormColor_2(1);
      end else
      begin
        // frm_Jon03.frmJON011 ���� �� �ڵ���޺� �� Į�� ������ �ش�.
        Proc_SetFormColor_2(2);
      end;

      //CU_LEVEL_TYPE : 1 : �� ��� �����Է� ����.
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

        // ������ �������� Ŭ�� �� ��ǥ ����ϱ� ���� ó��
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
        if cxtJoinNum.Tag = 1 then  // ���� ���а� cxtJoinNum.Tag --> 1:����(CDMS_A01_Today), 2:����(CDMS_A01)
        begin
          cxtCuTel.Text := func_Cust_Tel(sCustTel, locBrNo, sAccCenter, True);   // sBrNo
        end else
        begin
          cxtCuTel.Text := func_Cust_Tel(sCustTel, locBrNo, sAccCenter, False);
        end;
      end;
      cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);

      // ��ȸ��� ��ŷ�� �Ǵ� �������� ��ȭ��ȣ ������ �����ϰ�, �����Ҷ�, ��ȭ��ȣ�� ����Ǿ����� ���ڷ�� �����. cds. 090421.
      locsCuTelTxtBoxVal:= cxtCuTel.Text;

      //cxtCuTel.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CustTel').Text; // ��ȭ1
      cxtCuTel2.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CustTel2').Text; // ��ȭ2
      //locsCuTel := cxtCuTel.Text;
      locsCuTel := sCustTel;
			// ��ȭ��ȣ ������(���Ѿ�����) ��������� �̰��� ����.
      locsCuTel2 := cxtCuTel2.Text;
      // ��ȭ��ȣ ������(���Ѿ�����) ��������� �̰��� ����.
      gsCuTelHint := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]); // �� ��ȸ ��ȭ��ȣ ����.
      sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('PreTime').Text;
      // ����ð�
      if Length(Trim(sTemp)) > 17 then
      begin
        dtpResvDate.Text := Copy(sTemp, 1, 10); // ����ð�
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
        if BtnResJ.Down then sTemp := sTemp + ' [����] ���·� ����' else
        if BtnResD.Down then sTemp := sTemp + ' [���] ���·� ����';

        BtnResvView.Hint := sTemp;
        BtnResvView.ShowHint := True;

        BtnResv.Tag := 1;
      end;
      sTemp := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('PriceYN').Text);
      // ��� ������
      if sTemp = 'y' then
        chkNoSet.Down := True // ��� ������
      else
        chkNoSet.Down := False;

      // hjf-����Ȳ�Ǽ���(�������� ��ȸ)
      if Assigned(loc_Ud_lst_Node.item[0].attributes.getNamedItem('CuBrTelYN')) then
        CustBrTelYN := loc_Ud_lst_Node.item[0].attributes.getNamedItem('CuBrTelYN').Text;
      sTemp := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('BrTelYN').Text);
      // ��Ȳ�� ��ȣ ����..
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
      // ����

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

      // ������� :::::::: �Ź��� �߰� ��� ����..(���α�ɿ�û����,,����,,)
      cxCurPathRate.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('ViaCharge').Text;
      cxCurWaitTmRate.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('WaitCharge').Text;
      // �����
			sTemp := Trim(loc_Ud_lst_Node.item[0].attributes.getNamedItem('WaitTime').Text);
			// ���ð�
      if Length(sTemp) > 3 then
      begin
        cxTmWaitTime.Text := Copy(sTemp, 1, 5); // ���ð�
				curKm.Text := Copy(sTemp, 6, 7) + 'Km'; // ��� Km ��
        fCruKm := StrToFloatDef(Copy(sTemp, 6, 7), 0);
      end else
        cxTmWaitTime.Text := '00:00';

      cxCurRevisionRate.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AddCharge').Text; // �����ݾ�
      sTemp := loc_Ud_lst_Node.item[0].attributes.getNamedItem('ConfInfo2').Text; // ������(2)
      meoBigo2.Text := ReplaceAll(sTemp, '|', CRLF);
			cxDriverCharge.Text := loc_Ud_lst_Node.item[0].attributes.getNamedItem('DriverCharge').Text; // ��������

			//2013.03.30 khs
			sAppCode        := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppCode').Text;
			sAppLastRegDate := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppLastRegDate').Text;
			sAppLastDelDate := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppLastDelDate').Text;
			sAppLastFinishDate := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppLastFinishDate').Text;
			sAppCuArea      := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppCuArea').Text;
			sAppTermModel   := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppTermModel').Text;
			sAppTermOS      := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppTermOS').Text;
			sAppDelYn       := loc_Ud_lst_Node.item[0].attributes.getNamedItem('AppDelYn').Text;
			if sAppDelYn = 'y' then sAppDelYn := '���û���'
			else sAppDelYn := '���û��';

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
      // �ݹ� ��� ����
      if sTemp = 'y' then
        BtnOptionCallMu.Down := True // ������ ����
      else
        BtnOptionCallMu.Down := False;
	 //================================= ������ Display End. =====================================
			loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/Service/Data/AcceptInfo');
			iRCnt := StrToIntDef(loc_Ud_lst_Node.item[0].attributes.getNamedItem('Count').Text, 0);


      loc_Ud_lst_Node := loc_Ud_xdom.documentElement.selectNodes('/cdms/Service/Data/AcceptInfo/Accept');
      if iRcnt > 0 then
			begin // ���� �̿볻���� �����ش�.
        sDate := StartDateTime('yyyy-mm-dd hh:nn:ss');
				// ���� �������� ���..
        try
          sMultiCallGB := loc_Ud_lst_Node.item[0].attributes.getNamedItem('MultiCallGB').Text; // ��Ƽ��
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

            locaryOrderList[i, 0] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('InTime').Text; // ��������
						ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('���������Ͻ�').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 0];

            locaryOrderList[i, 1] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Status').Text; // ��������
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('����').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 1];

						if loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Status').Text = 'gi' then
						begin
							locaryOrderList[i, 2] := '��ǰ����';
							locaryOrderList[i, 3] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '�� ��ǰ����';
							sMileage := '-' + sMileage;
						end else
            if loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Status').Text = 'cs' then
						begin
							locaryOrderList[i, 2] := '���ݼ���';
							locaryOrderList[i, 3] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '�� ���ݼ���';
						end else
            if loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Status').Text = 'bi' then
						begin
							locaryOrderList[i, 2] := '�����Է�';
							locaryOrderList[i, 3] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0)) + '�� �����Է�';
							sMileage := '+' + sMileage;
							end
						else begin
							locaryOrderList[i, 2] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area5').Text;
							locaryOrderList[i, 3] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea5').Text;
						end;

//            locaryOrderList[i, 2] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area5').Text;
            // �����  // + '/' + st_area2 + st_area3 + st_area4;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('�����').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 2];

//            locaryOrderList[i, 3] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea5').Text;
            // ������  // + '/' + ed_area2 + ed_area3 + ed_area4;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('������').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 3];

            locaryOrderList[i, 4] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('WkSabun').Text; // �����
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('���').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 4];

            locaryOrderList[i, 5] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Charge').Text, 0.0));
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('���').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 5];

						if StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0) < 0 then
						begin
							locaryOrderList[i, 6] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0))
																		 + '(���ϸ������) (�ܾ� : ' + sCurMileage + ')';
						end	else
            if StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0) > 0 then
						begin
							locaryOrderList[i, 6] := '+'+formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0))
																		 + ' (�ܾ� : ' + sCurMileage + ')';
						end else
            if StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0) = 0 then
						begin
							locaryOrderList[i, 6] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0));
						end;

//            locaryOrderList[i, 6] := formatfloat('#,##0', StrToFloatDef(loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Mileage').Text, 0.0));
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('���ϸ���').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 6];

            locaryOrderList[i, 7] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('CReason').Text; // ��һ���
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('��һ���').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 7];

            locaryOrderList[i, 8] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('ConfInfo').Text; // ����
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('����').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 8];

            locaryOrderList[i, 9] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Member').Text; // ������
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('������').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 9];

            locaryOrderList[i, 10] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('KeyNumber').Text; // ��ǥ��ȣ
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('��ǥ��ȣ').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 10];

            locaryOrderList[i, 11] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Memo').Text; // �޸�
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('���޸�').Index;

            sTemp := '';
						sContent := StringReplace(locaryOrderList[i, 11], '|', '��',  [rfReplaceAll]);
            if Trim(sContent) <> '' then
            begin
         			ls_Rcrd := TStringList.Create;
              try
          			GetTextSeperationEx2('��', sContent, ls_Rcrd);
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

            locaryOrderList[i, 12] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('ConfSlip').Text; // ������ȣ
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('������ȣ').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 12];

            locaryOrderList[i, 13] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('InDate').Text; // �����Ͻ�
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('�����Ͻ�').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 13];

            locaryOrderList[i, 14] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Status').Text; // ��������
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('�����ڵ�2').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 14];

            sCustTel := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('CustTel').Text;
            sBrNo := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('ConfBrch').Text;
            sAccCenter := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('AcceptCenter').Text;
            locaryOrderList[i, 15] := func_Cust_Tel(sCustTel, sBrNo, sAccCenter, locaryOrderList[i, 13]); // ����ȭ��ȣ
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('����ȭ').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 15];

            locaryOrderList[i, 16] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('MapX').Text; // ����ǥX
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('����ǥX').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 16];

            locaryOrderList[i, 17] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('MapY').Text; // ����ǥY
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('����ǥY').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 17];

            locaryOrderList[i, 18] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('��1').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 18];

            locaryOrderList[i, 19] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area2').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('��2').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 19];

            locaryOrderList[i, 20] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area3').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('��3').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 20];

            locaryOrderList[i, 21] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area4').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('��4').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 21];

            locaryOrderList[i, 22] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Area5').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('��5').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 22];

            locaryOrderList[i, 23] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('DestX').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('����ǥX').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 23];

            locaryOrderList[i, 24] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('DestY').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('����ǥY').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 24];

            locaryOrderList[i, 25] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea').Text;
            ij := frm_JON012.cxGVeOrderList.GetColumnByFieldName('��1').Index;
            frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 25];

            locaryOrderList[i, 26] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea2').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('��2').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 26];

            locaryOrderList[i, 27] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea3').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('��3').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 27];

            locaryOrderList[i, 28] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea4').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('��4').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 28];

            locaryOrderList[i, 29] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('EdArea5').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('��5').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 29];

            locaryOrderList[i, 30] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('MultiCallGB').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('������').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 30];

            locaryOrderList[i, 31] := IntToStr(ACount);
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('No').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 31];

            locaryOrderList[i, 32] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('BrName').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('�����').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 32];

            locaryOrderList[i, 33] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('Callcenter').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('�ݼ����ڵ�').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := locaryOrderList[i, 33];

          // 2011.03.07 ��ȭ2�� ������ȣ��ȸ�ÿ��� ����ȵ�
//            locaryOrderList[i, 34] := 'x';
						locaryOrderList[i, 34] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('OrderType').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('����Ÿ��').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 34]);

          // 2012.08.12 �����ð�, �Ϸ�ð� �߰� KHS
            locaryOrderList[i, 35] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('BaechaTime').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('�����ð�').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 35]);

            locaryOrderList[i, 36] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('FinishTime').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('�Ϸ�ð�').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 36]);

            locaryOrderList[i, 37] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('WkHead').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('��纻���ڵ�').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 37]);

            locaryOrderList[i, 38] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('WkBrch').Text;
            ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('��������ڵ�').Index;
            Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 38]);

            locaryOrderList[i, 39] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('WkCenter').Text;
						ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('����ݼ���').Index;
						Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 39]);

						locaryOrderList[i, 40] := loc_Ud_lst_Node.item[i - 1].attributes.getNamedItem('FirstInSource').Text; // ������������ 2013.03.30
						ij := Frm_JON012.cxGVeOrderList.GetColumnByFieldName('��������').Index;
						Frm_JON012.cxGVeOrderList.DataController.Values[iBidx, ij] := string(locaryOrderList[i, 40]);

						// ���Ͽ��� �ǿ� ���ؼ� Į�� �����Ͽ� ������ �ɼ� �ְ� ���ش�.
            if i = 1 then
            begin
							sInDate := locaryOrderList[i, 13]; // �����Ͻ�
              sInDate := StringReplace(sInDate, '/', '-', [rfReplaceAll]);
							sInDate := copy(sInDate, 1, 19);
              if sInDate >= sDate then
              begin
                SetCustControlColor(True);
								// ������ ȭ���� ��Į�� �������ش�.
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

    // CID ��ȸ �϶��� �߽���ȭ���� ��Ʈ ����..
    cxtCallTelNum.Text := cxtCuTel.Text; // �߽���ȭ��ȣ
    cxtCallTelNum.StyleDisabled.TextColor := $00FAE1CD;
    // ���� Į�� : $00555151,   // ���� Į�� : $00FAE1CD;

 // ���Ͽ����� ���ؼ��� Lock�� �ɾ��ش�.
    if (btnCmdUpdSave.Enabled = True) and (cxtJoinNum.Tag = 1) then
      Proc_AcceptLock('1'); // ���� ���� Lock�� ����.

{    frm_Jon03.frmJON011[Self.Tag].btnUpdate.Enabled := True;
    frm_JON03.frmJON011[Self.Tag].btnOKCashback.Enabled := True;
    frm_Jon03.frmJON011[Self.Tag].btnMileOut.Enabled := True;
    frm_Jon03.frmJON011[Self.Tag].btnMileCharge.Enabled := True;
    frm_Jon03.frmJON011[Self.Tag].cxBtnMileList.Enabled := True;
}

    // ���纯�� ����.[����:����ȸ �� ���纯��� ��ȸ�� ������ �Ϻ����� ���޽��� ���� ������]
    cboBranch.Properties.ReadOnly := True;

    pnlJonMain.Enabled := True;
    //JobProcessLight(False);
    if Self.Visible = True then
    begin
      meoEndArea.SetFocus;
      meoStartArea.SetFocus;
    end;
    GB_JON03SELECT_GB := True;
    // ������Ȳ���� �������� ��û�� ����޾Ҵ����� ����.

    Frm_JON012.cxlbSlip.Caption := cxtJoinNum.Text;
    // ����������ȣ
    cxtCallTelNum.Text := StringReplace(cxtCallTelNum.Text, '-', '', [rfReplaceAll]);
    Frm_JON012.cxlbCustTel.Caption := locsCuTel; // ����ȭ��ȣ �б�.
		Frm_JON012.cxlbKeyNum.Caption := Proc_MainKeyNumberSearch; // ��ǥ��ȣ �б�.

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
      sTemp := 'JON01[Proc_ConfSlipSelectResult][������ȸ���]����ó�� �߻�:'
        + e.Message;
      ShowMessage(sTemp);
      GB_JON03SELECT_GB := True;
      // ������Ȳ���� �������� ��û�� ����޾Ҵ����� ����.

      Assert(False, E.Message);
    end;
  end;
end;

// �� �����(START), ������(DEST) ������ �����Ѵ�.
procedure TFrm_JON01.Proc_Cust_AreaSave(sStartDest: string);
var
  ls_TxLoad, ls_TxQry, sCl_Key, sQueryTemp : string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
  if lcsCu_seq = '' then
  begin
    ShowMessage('�� �Ϸù�ȣ�� �����ϴ�. �������� ��ȸ �� ���� [����] �ϼ���!');
    Exit;
  end;
  if cxtCallTelNum.Text = '' then
  begin
    ShowMessage('�� ��ȭ��ȣ�� �����ϴ�. �������� ��ȸ �� ���� [����] �ϼ���!');
    Exit;
  end;

  if sStartDest = 'START' then
  begin
    // ����� ������ ����.
    fGet_BlowFish_Query(GSQ_CUSTOMER_START_SAVE, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [lcsSta1, lcsSta2, lcsSta3, cxtStartAreaDetail.Text, meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text, lcsCu_seq]);
    sCl_Key := 'CUSE0011';
  end else
  begin
    // ������ ������ ����.
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

          tmFormClose.Tag := 99; // ȭ�� �ݱ� ������.
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

// ��ȭ��ȣ ��ġã�� �⺻ ��ġ�� ���Ѵ�.
procedure TFrm_JON01.Proc_TellAreaFormCreate;
begin
  if Not Assigned(Frm_COM30) then Frm_COM30 := TFrm_COM30.Create(Nil);
  Frm_COM30.Tag := Self.Tag; // ���� index�� �д´�.
  Frm_COM30.Top :=  Self.Top + 88;    //2012.05.30 �̿���
  Frm_COM30.Left := Self.Left - (Frm_COM30.Width + 1);  //2012.05.30 �̿���
  Frm_COM30.Show;
  Frm_COM30.cxListViewArea.Clear;
end;

function TFrm_JON01.IsBubuinUse: Boolean;
begin
  Result := GB_JON_USEBUBIN;
end;

// ��ȭ��ȣ �� ���浵 ��ǥ�� �˻� �Ѵ�..
procedure TFrm_JON01.Proc_TellNumSearchNEData;
var
  ls_TxLoad, sDDD, sTell, sTypeGubn: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin

  // 4�ڸ��� �ȵǸ� Exit;
  if not Func_TellNumSearchCheck then
  begin
    Exit;
  end;

  if Length(cxTxtTelNESelect.Text) <> 4 then
    sTypeGubn := '1' // ��ȭ��ȣ Ǯ��Ī �˻�..
  else
    sTypeGubn := '2'; // ��ȭ��ȣ ��4�ڸ� �˻�..

  // DDD ��ȣ ���� �Է��Ͽ������� ���θ� üũ;
  if Copy(cxTxtTelNESelect.Text, 1, 1) <> '0' then
  begin
    // ������� ������ ����.[��ȭ��ȣ �˻��� �����]  CDS. 08082.
    if GS_COUNSEL_AREA <> '' then
    begin
      if GS_COUNSEL_AREA = '002' then
        sDDD := '02' // �⺻ ������� DDD ��ȣ �Է�.
      else
        sDDD := GS_COUNSEL_AREA; // �⺻ ������� DDD ��ȣ �Է�.
    end
    else
    begin
      sDDD := '02' // �⺻ ������� DDD ��ȣ �Է�.
    end;
    sTell := cxTxtTelNESelect.Text;
  end else
  begin
    if Copy(cxTxtTelNESelect.Text, 1, 2) <> '02' then
    begin
      sDDD := Copy(cxTxtTelNESelect.Text, 1, 3); // DDD ��ȣ �Է�.
      sTell := Copy(cxTxtTelNESelect.Text, 4, Length(cxTxtTelNESelect.Text));
      // Tel ��ȣ �Է�.
    end else
    begin
      sDDD := '02'; // DDD ��ȣ �Է�.
      sTell := Copy(cxTxtTelNESelect.Text, 3, Length(cxTxtTelNESelect.Text));
      // Tel ��ȣ �Է�.
    end;
  end;

  try
    // ���� ������ �ۼ��Ѵ�.
    ls_TxLoad := GTx_UnitXmlLoad('C036N1.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'TDDD0001');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'TypeGubunString', En_Coding(sTypeGubn)); // ���а� 1:Ǯ��Ī, 2:��4�ڸ�
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'DDDString', En_Coding(sDDD)); // DDD
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'TellNumberString', En_Coding(sTell)); // ��ȭ��ȣ

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

          tmFormClose.Tag := 99; // ȭ�� �ݱ� ������.
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
  // 4�ڸ��� �ȵǸ� Exit;
  if (Length(Trim(cxTxtTelNESelect.Text)) < 4) then
    Exit;

  // DDD ��ȣ ���� �Է��Ͽ������� ���θ� üũ;
  if Copy(cxTxtTelNESelect.Text, 1, 1) <> '0' then
  begin
    // 7�ڸ����� ������ Exit;
    if (Length(Trim(cxTxtTelNESelect.Text)) <> 4) and (Length(Trim(cxTxtTelNESelect.Text)) < 7) then
      Exit;
  end else
  begin
    if Copy(cxTxtTelNESelect.Text, 1, 2) = '02' then
    begin
      // 7�ڸ����� ������ Exit;
      if (Length(Trim(cxTxtTelNESelect.Text)) <> 4) and (Length(Trim(cxTxtTelNESelect.Text)) < 9) then
        Exit;
    end
    else
    begin
      // 7�ڸ����� ������ Exit;
      if (Length(Trim(cxTxtTelNESelect.Text)) <> 4) and (Length(Trim(cxTxtTelNESelect.Text)) < 10) then
        Exit;
    end;
  end;
  Result := True;
end;

// ������ ���� �Ÿ� ���
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
        cxtStartXval.Text, cxtStartYval.Text, cxtEndXval.Text, cxtEndYval.Text), ffNumber, 3, 1), 0.0);  // ��� ���� �����Ÿ� �ӽ� ����
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
        cxtEndXval.Text, cxtEndYval.Text), ffNumber, 3, 1), 0.0);  // ��� ���� �����Ÿ� �ӽ� ����
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
        GT_PASS_INFO[iLow][0].MAP_Y), ffNumber, 3, 1), 0.0);  // ��� ���� �����Ÿ� �ӽ� ����
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
  				GT_PASS_INFO[iLow][i].MAP_X, GT_PASS_INFO[iLow][i].MAP_Y), ffNumber, 3, 1), 0.0); // ��� ���� �����Ÿ� �ӽ� ����

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
    Lbl_Distance.Caption := Format(' ����)%s', [FloatToStr(fDis) + 'Km']);
  end;
  Application.ProcessMessages;
end;

function TFrm_JON01.func_Compare_dis_Sel(DKm, SKm : Double; Var Distance : Double) : Boolean;
Var rCharge : Double;
begin
  // ���Ž���Ÿ��� 5Km �̸��� ��� �׳� ���Ž�� �Ÿ� ���
  // �����Ÿ� 10Km�̸��� ��� ���Ž���Ÿ��� �����Ÿ� ��� 2.5������� Ŭ ��� ��˻�
  // �����Ÿ� 10Km�̻��� ��� ���Ž���Ÿ��� �����Ÿ� ��� 1.7������� Ŭ ��� ��˻�
  // �� �̿��� ��쿡�� ��� Ž���Ÿ� ���
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
  // ����[�Ϸ�/����/���] �� ��� ����׸� ��Ŀ���ÿ��� ��� ���
  Result := ((Pos('����', Self.Caption) > 0 ) and (cxtJoinNum.Hint[1] in ['2', '4', '8']));
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
//      ��ݼ����� ���� ��� ���
//  2011.02.16 �ɾ�������� �߰�
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
  PREM_DESC: string;  // pnl_charge.caption �� ��������� �߰��ϱ� ���� ���ڿ�

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
            PREM_DESC := ' (+�ɾ�������� : '+formatfloat('#,##0',PREM_TIMES[cInt1].AMT)+'��)';
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
         // 20110601 LYB �߰�  ���� ���� ����� ��ȸ �� ������ �⺻ ���� ����� ��ȸ
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
       OutputDebugString(PChar('�⺻���:'+inttostr(base_amt)));
       OutputDebugString(PChar('�������:'+inttostr(tm_Amt)));
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
    pnl_Charge.Caption := '��ǥ��ȣ �⺻��� ���� ����';
    pnl_Charge.Visible := True;
    Exit;
  end;

  PriceInfo := ''; // �������
  PriceDesc := ''; // ����ǥ��
  PassPrice := 0; // �������

  // �ѰŸ�(�������� ��� �����Ÿ� ����)
  TotalDis := ceil(fCruKm);

	pnl_Charge.Caption := '';
//  Lbl_Distance.Caption := '';

  // ���õ� ������������ ��ǥ��ȣ�� ���� �Ѵ�.
	sKeyNumber := Proc_MainKeyNumberSearch;

  if (lcsSta1 = '') or (lcsEnd1 = '') then
  begin
    Result := dmCharge.func_base_charge(sKeyNumber);
    exit;
  end;

	// ����Ƚ�� ã��..
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

  // 20120604 ���� ��� ���� ���� �κ� �߰�  LYB
  if (CHARGE_GUBUN = 'P') then
  begin
    ///////////////////////////////////////////////////////////////
    // (#1) ���� �� ��ݰ��
		///////////////////////////////////////////////////////////////
		dmCharge.Qry_Charge.Close;
		dmCharge.Qry_Charge.SQL.Text := 'SELECT * FROM CDMS_BGROUP_CHARGE_TYPE WHERE CT_KEY_NUM = ''' + sKeyNumber + ''' AND CT_CB_CODE  = ''' + cxtCuBubin.Hint + ''' ';
    try
      dmCharge.Qry_Charge.open;
    except on E: Exception do
      begin
        GMessagebox('���ÿ�ݼ����� �߸��Ǿ��־� ����� ������ �ʾҽ��ϴ�.'#13#10 +
        '[������� Ȯ�� �ٶ��ϴ�.]', CDMSI);
        Exit;
      end;
    end;

    // ���ο�ݿ� ��ϵ� ������� ������ ��ǥ��ȣ��� ���
    if not dmCharge.Qry_Charge.IsEmpty then
    begin
      sType         := dmCharge.Qry_Charge.Fields[5].AsString;  // ������� ����
      sFirstCD      := dmCharge.Qry_Charge.Fields[8].AsString;  // �켱����� �ڵ�
      iPassValue    := StrToIntDef(dmCharge.Qry_Charge.Fields[7].AsString, 0);
      sPassGubun    := dmCharge.Qry_Charge.Fields[9].AsString;  // ����������� [0: �Ǵ���, 1: �Ÿ����]
      sPassCode     := dmCharge.Qry_Charge.Fields[10].AsString;  // ������� �ڵ�
      sPassViewCode := dmCharge.Qry_Charge.Fields[11].AsString; // �������� [0: ��ݿ� ������ݹ�����, 1: ��ݿ� �����������]
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
        GMessagebox('���DB������ �߸��Ǿ��־� ����� ������ �ʾҽ��ϴ�.'#13#10 +
        '[ȯ�漳��] - [���DB����] �κ� ������ �ٽ� �ϼ���', CDMSI);
        Exit;
      end;
    end;

    // ���ο�ݿ� ��ϵ� ������� ������ ��ǥ��ȣ��� ���
    if not dmCharge.ADOQuery1.IsEmpty then
    begin
      sType         := dmCharge.ADOQuery1.Fields[5].AsString;  // ������� ����
      sFirstCD      := dmCharge.ADOQuery1.Fields[8].AsString;  // �켱����� �ڵ�
      iPassValue    := StrToIntDef(dmCharge.ADOQuery1.Fields[7].AsString, 0);
      sPassGubun    := dmCharge.ADOQuery1.Fields[9].AsString;  // ����������� [0: �Ǵ���, 1: �Ÿ����]
      sPassCode     := dmCharge.ADOQuery1.Fields[10].AsString;  // ������� �ڵ�
      sPassViewCode := dmCharge.ADOQuery1.Fields[11].AsString; // �������� [0: ��ݿ� ������ݹ�����, 1: ��ݿ� �����������]
    end;
  end;

  if sType = '' then
  begin
    // P : DB ���ÿ���        GS_EXEC_GUBUN ==> 1:���ϸ��� ���۵�, 0:���ϸ��� ����� �� ����.[������, �Ź��� ���û�밡���ϵ��� ����]
    // ���� ����, �̹� ����� �űԹ����� ������� �Ķ󵶽� ���� ó�� (2008.08.01 KJH)
    if (CHARGE_GUBUN = 'P') then
    begin
      ///////////////////////////////////////////////////////////////
      // (#1) ��ǥ��ȣ �� ��ݰ��
      ///////////////////////////////////////////////////////////////
      dmCharge.Qry_Charge.Close;
      dmCharge.Qry_Charge.SQL.Text := 'SELECT * FROM CDMS_CHARGE_TYPE WHERE CT_KEY_NUM = ''' + sKeyNumber + ''' ';
      try
        dmCharge.Qry_Charge.open;
      except on E: Exception do
        begin
          GMessagebox('���ÿ�ݼ����� �߸��Ǿ��־� ����� ������ �ʾҽ��ϴ�.'#13#10 +
          '[������� Ȯ�� �ٶ��ϴ�.]', CDMSI);
          Exit;
        end;
      end;

      // ��ǥ��ݿ� ��ϵ� ������� ������ �⺻ǥ�ؿ�� ���
      if not dmCharge.Qry_Charge.IsEmpty then
      begin
				sType         := dmCharge.Qry_Charge.Fields[4].AsString;  // ������� ����
				sType2        := dmCharge.Qry_Charge.Fields[15].AsString;  // ������� ����
				sFirstCD      := dmCharge.Qry_Charge.Fields[7].AsString;  // �켱����� �ڵ�
        iPassValue    := StrToIntDef(dmCharge.Qry_Charge.Fields[6].AsString, 0);
				sPassGubun    := dmCharge.Qry_Charge.Fields[8].AsString;  // ����������� [0: �Ǵ���, 1: �Ÿ����]
        sPassCode     := dmCharge.Qry_Charge.Fields[9].AsString;  // ������� �ڵ�
				sPassViewCode := dmCharge.Qry_Charge.Fields[10].AsString; // �������� [0: ��ݿ� ������ݹ�����, 1: ��ݿ� �����������]
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
          GMessagebox('���DB������ �߸��Ǿ��־� ����� ������ �ʾҽ��ϴ�.'#13#10 +
          '[ȯ�漳��] - [���DB����] �κ� ������ �ٽ� �ϼ���', CDMSI);
          Exit;
        end;
      end;

      // ��ǥ��ݿ� ��ϵ� ������� ������ �⺻ǥ�ؿ�� ���
      if not dmCharge.ADOQuery1.IsEmpty then
      begin
				sType         := dmCharge.ADOQuery1.Fields[4].AsString;  // ������� ����
				sType2        := dmCharge.ADOQuery1.Fields[6].AsString;  // ������� ����
				sFirstCD      := dmCharge.ADOQuery1.Fields[9].AsString;  // �켱����� �ڵ�
				iPassValue    := StrToIntDef(dmCharge.ADOQuery1.Fields[8].AsString, 0);
				sPassGubun    := dmCharge.ADOQuery1.Fields[10].AsString;  // ����������� [0: �Ǵ���, 1: �Ÿ����]
				sPassCode     := dmCharge.ADOQuery1.Fields[11].AsString;  // ������� �ڵ�
				sPassViewCode := dmCharge.ADOQuery1.Fields[12].AsString; // �������� [0: ��ݿ� ������ݹ�����, 1: ��ݿ� �����������]
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

  // �켱��� �̻�� ���(�������� �ִ� ���, [�Ÿ����]üũ&�Ÿ�/���ǥ)
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
  // (#2) ����Ʈ����� ���
  ///////////////////////////////////////////////////////////////
  if GT_RealTimeWorker then oOderWorker := '0'
                       else oOderWorker := '1';

  if GT_RealTimeWeather then oWeather := '0'
                        else oWeather := '1';

  iType := '1';//�˻�Ÿ�� '��-��' ����â������ ������ ��-������ ��ȸ

  if GT_USERIF.ID = 'sntest' then Log(oOderWorker + oWeather +
                                   lcsSta1 + lcsSta2 + lcsSta3 + meoStartArea.Text + cxtStartXval.Text + cxtStartYval.Text +
                                   lcsEnd1 + lcsEnd2 + lcsEnd3 + meoEndArea.Text + cxtEndXval.Text + cxtEndYval.Text + iType, LOGDATAPATHFILE);

  iSmartRate := fJON01_SmartCharge(oOderWorker, oWeather,
                                   lcsSta1, lcsSta2, lcsSta3, meoStartArea.Text, cxtStartXval.Text, cxtStartYval.Text,
                                   lcsEnd1, lcsEnd2, lcsEnd3, meoEndArea.Text, cxtEndXval.Text, cxtEndYval.Text, iType, oType);

  if oType = '1' then oType := '��->��' else
  if oType = '2' then oType := '��->��' else
  if oType = '3' then oType := '��->��' else
  if oType = '4' then oType := '��->��' else
  if oType = '5' then oType := '��->��';

  if GT_AutoSmartCharge then // 0���̰ų� ����� �ٸ���� ����Ʈ��� ����â��� �ڵ�����
  begin
    if ( Result = 0 ) Or ( Result <> iSmartRate ) then
    begin
      if GT_PopUpSmartCharge then // 0���̰ų� ����� �ٸ���� ����Ʈ���â �ڵ��˾�
      begin
        if ( (meoStartArea.Focused) Or (meoEndArea.Focused) Or
             (meoViaArea1.Focused) Or  (meoViaArea[2].Focused) Or (meoViaArea[3].Focused) Or
             (meoViaArea[4].Focused) Or  (meoViaArea[5].Focused) ) then      //  �����/������ ��Ŀ���� ���������� �˾�â ǥ�� ����
        begin
        end else
        begin
          BtnSmartRate.Click;
          curRate.SetFocus;
        end;
      end;
      PriceInfo := '����Ʈ��� (' + oType + ') ] ' + FormatFloat('#,', iSmartRate);
      Result := iSmartRate;
    end;
  end;

  if GB_JON_SMARTRATEUSE then
  begin
    PriceInfo := '����Ʈ��� (' + oType + ') ] ' + FormatFloat('#,', iSmartRate);
    Result := iSmartRate;
  end;

  ///////////////////////////////////////////////////////////////
  // (#3) ������� ����� ������ ǥ�ؿ�� ����
  ///////////////////////////////////////////////////////////////
  if (Result = 0) and (GT_DEFAULT_ST = 0) then
  begin
		Result := dmCharge.func_charge(lcsSta1, lcsSta2, '', '', lcsEnd1, lcsEnd2, '', '',
      0, 'CC001', 'CC001', '', 0, 0, PriceInfo, AreaType, AType);
  end;
	FType := AType;

  ///////////////////////////////////////////////////////////////
  // (#4) ������� ���
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
      // �⵵���� �Ÿ�
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
      // �Ÿ����, ��� �������ΰ�� ������� ������
        PriceDesc := '���������:' + IntToStr(PassPrice) + '��'
      else
        Result := Result + PassPrice;
    end;
  end;

	if (gsMyMainTelUse = 'TRUE') and (GSMyMainTelOrderChargeCheck) and (Result = 0)then
	begin
		pnl_Charge.Caption := Format('��ǥ��ȣ �⺻���(%s) ���� ����', [StrToMoney(sNowRate)]);
		pnl_Charge.Visible := True;
		result := strtointDef(sNowRate,0);
		Exit;
	end;

  // ������� ǥ��
  if Trim(PriceInfo) <> '' then
    pnl_Charge.Caption := PriceInfo + PricePassInfo
  else
    pnl_Charge.Caption := '��������� �����ϴ�.';

//  Lbl_Distance.Caption := '';
  pnl_Charge.Visible := True;

  // ���� ���� ǥ��
  if (Pos('����', Self.Caption) = 0 ) then
  begin
    RemovePriceDesc;
    if PriceDesc <> '' then
    begin
      meoBigo.Text := PriceDesc + meoBigo.Text; // ������� �϶��� ���並 �������� �ʴ´�.
    end;
  end;
  // 2011.02.16 �ɾ�������� �߰�
  result:=Get_Prem_Price(Result,sKeyNumber);

  if PREM_DESC <> '' then
  begin
    pnl_charge.Caption := pnl_charge.Caption + PREM_DESC; // ������� ������ �߰�(���ڵ�ī��Ʈ<>0)
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

  PosS := Pos('��', OrgStr);
  PosE := Pos('��', OrgStr);

  if (PosS = 0) or (PosE = 0) or (PosE < PosS) then
  begin
    Exit;
  end;

  AddStr := Copy(OrgStr, 1, PosS-1);
  AddStr := AddStr + Copy(OrgStr, PosE+1, Length(OrgStr));

  meoBigo.Lines.Text := AddStr;
end;

// �÷����� ǥ�ؿ���� ���Ѵ�.
function TFrm_JON01.proc_PlusCall_RateYN: Boolean;
var iHighRate : Integer;
    sTmp : string;
begin
  Result := True;

  // �÷����� ǥ�ؿ�� ���� ���ϵ��� ������.(����:�÷������� �����ݷ� �����ϰ� �÷������� ��� ����) 2011-09-06.
  Exit;

  Result := False;

  {================= �÷����� �������� ����� ��ȸ �� ��.  ================}
  // �÷����� ����(�����Ǹ� �����)
  if GS_PRJ_AREA = 'S' then begin
    // ������ �� �ε� ����.
    if not GB_FRMJON015_LOADING_YN then begin

    // 25õ�� �������� ���� 2011.01.10
      // ����� 25,000�� �̻��� ��� ������ ���÷��� �ݿ�(2010.11.25)
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
          // ����â�� "�÷�����" ���� üũ ���� �Ѵ�.
          BtnPlusYN.Down := False;

          // �÷����� �ڵ� ������ ���� �޽��� ó������.
					sTmp := proc_PlusCall_YN_Cont;
					if ((copy(sTmp,1,4) <> 'yyyy') and (copy(sTmp,1,4) <> 'fyyy')) then begin
						if BtnPlusYN.Down then begin
							GMessagebox('����� 0 �� �̹Ƿ� �÷����ݷ� ��� �� �� �����ϴ�.' + #13#10 + #13#10
                        + '�÷������� �ڵ� �����Ǿ� �Ϲ��ݷ� ���� �˴ϴ�.', CDMSI);
            end;
          end;
        end;
    //  end;
    end else begin
      // ����â�� "�÷�����" ���� üũ ���� �Ѵ�.
      BtnPlusYN.Down := False;
    end;
  end;
  {============================================================================}
  Result := True;
end;

//--------------------------------------------------------------------------------------------------
//   [�ݸ��� ����� ǥ�ؿ�� ��ȸ : 2010.10.09]    ��ݼ����� ���� ��� ���
//   -> �÷����� ������� �ø��� ���ϵ��� �ϱ����� ��ȸ.
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

  PriceInfo := ''; // �������
  PriceDesc := ''; // ����ǥ��
  PassPrice := 0; // �������

  // �ѰŸ�(�������� ��� �����Ÿ� ����)
  TotalDis := ceil(fCruKm);

  // ���õ� ������������ ��ǥ��ȣ�� ���� �Ѵ�.
  //sKeyNumber := Proc_MainKeyNumberSearch;

  if (lcsSta1 = '') or (lcsEnd1 = '') then
  begin
    exit;
  end;

  // ����Ƚ�� ã��..
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

  // P : DB ���ÿ���        GS_EXEC_GUBUN ==> 1:���ϸ��� ���۵�, 0:���ϸ��� ����� �� ����.[������, �Ź��� ���û�밡���ϵ��� ����]
  // ���� ����, �̹� ����� �űԹ����� ������� �Ķ󵶽� ���� ó�� (2008.08.01 KJH)
  //if (CHARGE_GUBUN = 'P') then
  //begin
    ///////////////////////////////////////////////////////////////
    // (#1) ��ǥ��ȣ �� ��ݰ��
    ///////////////////////////////////////////////////////////////
  {  dmCharge.Qry_Charge.Close;
    dmCharge.Qry_Charge.SQL.Text := 'SELECT * FROM CDMS_CHARGE_TYPE WHERE CT_KEY_NUM = ''' + sKeyNumber + ''' ';
    try
      dmCharge.Qry_Charge.open;
    except on E: Exception do
      begin
        GMessagebox('���ÿ�ݼ����� �߸��Ǿ��־� ����� ������ �ʾҽ��ϴ�.'#13#10 +
        '[������� Ȯ�� �ٶ��ϴ�.]', CDMSI);
        Exit;
      end;
    end;

    // ��ǥ��ݿ� ��ϵ� ������� ������ �⺻ǥ�ؿ�� ���
    if not dmCharge.Qry_Charge.IsEmpty then
    begin
      sType         := dmCharge.Qry_Charge.Fields[4].AsString;  // ������� ����
      sFirstCD      := dmCharge.Qry_Charge.Fields[7].AsString;  // �켱����� �ڵ�
      iPassValue    := StrToIntDef(dmCharge.Qry_Charge.Fields[6].AsString, 0);
      sPassGubun    := dmCharge.Qry_Charge.Fields[8].AsString;  // ����������� [0: �Ǵ���, 1: �Ÿ����]
      sPassCode     := dmCharge.Qry_Charge.Fields[9].AsString;  // ������� �ڵ�
      sPassViewCode := dmCharge.Qry_Charge.Fields[10].AsString; // �������� [0: ��ݿ� ������ݹ�����, 1: ��ݿ� �����������]
    end; }
  //end

  if sType = '' then
  begin
    sType         := 'CC005';  // 'CC001' : ǥ��,   'CC002' : ��,   'CC003' : ����,   'CC005' : �÷����ݿ��
    sFirstCD      := '';
    iPassValue    := 0;
    sPassGubun    := '0';
    sPassCode     := '';
    sPassViewCode := '';
  end;

  ///////////////////////////////////////////////////////////////
  // (#2) ������� ����� ������ ǥ�ؿ�� ����
  ///////////////////////////////////////////////////////////////
  //if (Result = 0) and (GT_DEFAULT_ST = 0) then
  //begin
    { �÷������ǥ ���� }
		Result := dmCharge.func_charge_plus(lcsSta1, lcsSta2, '', lcsEnd1, lcsEnd2, '', 0, 'CC005', '', 0, 0, PriceInfo, AreaType);
  //end;

  ///////////////////////////////////////////////////////////////
  // ������� ���
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
      // �⵵���� �Ÿ�
      sOrgDis := FloatToStrF(GetRoadLength(STANDFUNCPATHFILE, cxtStartXval.Text, cxtStartYval.Text,
                                           cxtEndXval.Text, cxtEndYval.Text)
                             * StrToFloatDef(CHARGE_DIS, 1.0), ffNumber, 3, 1);
      fOrgDis := StrToFloat(sOrgDis);
      PassDis := TotalDis - Ceil(fOrgDis);

      PassPrice := dmCharge.func_Pass_charge(sPassCode, sPassViewCode, iPassValue, iPassCnt, PassDis, PricePassInfo);

      if (sPassViewCode = '0') and (PassPrice > 0) then
        // �Ÿ����, ��� �������ΰ�� ������� ������
        //PriceDesc := '���������:' + IntToStr(PassPrice) + '��'
      else
        Result := Result + PassPrice;
    end;
  end;
end;

// �÷����� ��뿩�� üũ
function TFrm_JON01.proc_PlusCall_YN_Cont: string;
var sTmp : string;
begin
  // �÷����� ����(�����Ǹ� �����)
  if GS_PRJ_AREA = 'S' then
  begin
    sTmp := Proc_BRNOSearch;
    // �÷����� ��� [����âüũ�ɼ�,����,����,����] ��ȸ
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
    ShowMessage('���Ž���Ÿ� ������Դϴ�' + #13 +
                '����Ŀ� �ٽ� �Ÿ���� �ٶ��ϴ�.');
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
        ShowMessage('���Ž�� ������ �����Ҽ� �����ϴ�.');
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

// ������ ��������� �Ѵ�.
procedure TFrm_JON01.Proc_OrderJoinIns;
var
  sBrNo: string;
begin
	//--------------------------------------------------------------------------------------------------
  // ������ ����ĳ�� üũ(ĳ���� ��� �ĺҷ� �����Ҽ� ����)
  //--------------------------------------------------------------------------------------------------
  if (GS_PRJ_AREA <> 'S') and ((GT_USERIF.ShareNo = 'G91') or (GT_USERIF.ShareNo = 'G58')) then
    // SKIP ó��.
  else
  begin
    if IsPayMethodPost then // �ĺҿ��� ĳ������ üũ..
    begin
      sBrNo := Proc_BRNOSearch;
      if not frm_main.func_brcash_check(sBrNo, StrToIntDef(FloatToStr(curRate.Value), 0)) then
      begin
        GMessagebox('����ĳ���� �����Ͽ� �ĺҷ� ������ �� �����ϴ�.', cdmsi);
        exit;
      end;
    end;
  end;

  try
    if (cxLblCIDUseFlg.Hint <> 'CID') and (gsCuTelHint <> cxtCuTel.Text) then
    begin // CID ��ȸ���� ������ �Ѵ�., ����ȭ��ȣ ���濩�θ� üũ�ϱ� ���� �����Ѵ�.
      GMessagebox(
        Format('�˻��� [%s]��ȭ��ȣ�� ���� �Էµ� ��ȭ��ȣ[%s]�� �ٸ��ϴ�.', [gsCuTelHint, cxtCuTel.Text]) + #13#10
        + Format('������ ��ȭ��ȣ�� ����Ϸ��� [%s]��ȭ��ȣ�� ��ȸ(����) �Ŀ� �����ϼ���', [cxtCuTel.Text]) + #13#10
        + '[��]���� ��ȭ��ȣ�� �űԹ�ȣ�� �߰�(����)�ҷ��� ������ ��ư�� Ŭ�� �� �űԹ�ȣ�� �߰�(����)�ϰ� �����ϼ���',
        CDMSI);
			if cxtCuTel.Enabled then cxtCuTel.SetFocus;
			Exit;
    end;

    if not NotNullCheck(True) then Exit;

    // ����
    if btnCmdJoin.Enabled then
    begin
      btnCmdJoin.Enabled := False;
      lg_Save := '1';
      if BtnResv.Tag <> 1 then
      begin
				if not GS_JON_AutoStandBy then    // True := ����->���� �������� 2014.03.25 khs
					Proc_Save('0')  // ��� ����
				else
					Proc_Save('5');  //���
			end else
				Proc_Save('R'); // ���� ����

      if (not btnCmdUpdSave.Visible) and (btnCmdExit.Tag <> -1) then
      begin
        btnCmdExit.Tag := -1;
      end;
			Proc_BtnEnabled(True); // ��ư Ȱ��/��Ȱ�� ó��.
    end;
  except
    btnCmdJoin.Enabled := True;
    Log('Accept_Error1', LOGDATADIRECTORY + 'Accept_Err.log');
  end;
end;

// ������ �⺻�� üũ..
procedure TFrm_JON01.N3Click(Sender: TObject);
begin
  if ( not Assigned(Frm_JON016) ) Or ( Frm_JON016 = Nil ) then
    Frm_JON016 := TFrm_JON016.Create(Nil);

  if ( TPopupMenu(Sender).Name = 'N3' ) Or
     ( TPopupMenu(Sender).Name = 'N4' ) then
  begin
    Frm_JON016.Tag := 1;
    Frm_JON016.pnlTitle.Caption := '   [����â] �����/������ ��뱸 ����';
    Frm_JON016.pnlTitle.Color := $008FEBFE;
  end else
  begin
    Frm_JON016.Tag := 2;
    Frm_JON016.pnlTitle.Caption := '   [����â] ���� ��뱸 ����';
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

    // DNIS ��ǥ��ȣ ã�� ����â�� �����.  2011.05.17
    shrDNIS_DSP.Visible := False;
sErrLine := '2';
    locHdNo := Proc_HDNOSearch; // �����ڵ� ������ �д´�.
    if Length(locHdNo) < 3 then
    begin
      ShowMessage('���������� �������� �ʾҽ��ϴ�. ���縦 ���� �� �Ŀ� ���������� �ϼ���!');
      Exit;
    end;
sErrLine := '3';

    try
      if (cxtCuTel.Text = '') and ((cxtCallTelNum.Text = '�߽���������') or (cxtCallTelNum.Text = '')) then
      begin
        GMessagebox('����ȣ�� ' + MDXCI_0005, CDMSI);
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
      GMessagebox('������� �ʼ� �Է� �׸� �Դϴ�.', CDMSI);
      if ( meoStartArea.Enabled ) And ( meoStartArea.Visible ) then meoStartArea.SetFocus;
      Exit;
    end;
sErrLine := '5';
    if Length(cxtCuTel.Text) > 1 then
    begin
      if not NumericCheck(STANDFUNCPATHFILE, '����ȣ�� ���ڸ� �Է��ϼ���', cxtCuTel.Text) then
      begin
sErrLine := '6';
        if cxtCuTel.CanFocus then cxtCuTel.SetFocus;
        Exit;
      end;
    end;
sErrLine := '7';
    locKNum := Proc_MainKeyNumberSearch; // ��ǥ��ȣ ������ �д´�.
sErrLine := '8';
    if not NumericCheck(STANDFUNCPATHFILE, '��ǥ��ȣ�� ���ڸ� �Է��ϼ���', locKNum) then
    begin
      if cboBranch.CanFocus then cboBranch.SetFocus;
      Exit;
    end;
sErrLine := '9';
    // 24�ð��� �������� ���� ���� ���� �ű�����,��� ����Ҷ�, ����������� �˸� �޽��� �����ش�.
    if (b24HourCheck = True) and (btnCmdUpdSave.Tag = 99) then
    begin
      GMessagebox('[�ű������˸�] ������忡�� ����(����) �űԿ����� ���� �մϴ�.', CDMSI);
      //Exit;   // ������ �����ϰ� �Ǿ�� ��.
    end;
sErrLine := '10';
    if (cbbPayMethod.Text = PAY_METHOD_POST_MILE) then
    begin
      if locCardPaySeq = '' then     //20130613  LYB �ĺҸ��ϸ��� ���� ��������ϸ� ���ϸ��� üũ ����
      begin
sErrLine := '11';
        UserMile := StrToIntDef(lblCuMile.Caption, 0);
        if edtPostPay.Value > UserMile then
        begin
sErrLine := '12';
          GMessageBox(Format('���� ���� ���ϸ���(%s)�� �ʰ��Ͽ� ���ϸ����� �Է��ϼ̽��ϴ�.', [FormatFloat('#,##0', UserMile)]), CDMSI);
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

// �ֹ� ������ ó�� �Ѵ�.
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
    iFidx := Self.Tag;          // ���� index�� ����.

		//���� ����
		ls_stArea := '';
		ls_edArea := '';
		ls_stArea_Tot := '';
		ls_edArea_Tot := '';
		Proc_BtnEnabled(False);     // ��ư Ȱ��/��Ȱ�� ó��.
		locHdNo := Proc_HDNOSearch; // �����ڵ� ������ �д´�.
    locBrNo := Proc_BRNOSearch; // �����ڵ� ������ �д´�.
    locKNum := Proc_MainKeyNumberSearch; // ��ǥ��ȣ ������ �д´�.

    if cxtCallTelNum.Text = '' then
    begin
      cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);
      cxtCallTelNum.Text := cxtCuTel.Text;
		end;

    //////////////////////////////////////////////////////////////////////////////////
    //  ���� ����
    //////////////////////////////////////////////////////////////////////////////////
    ls_TxLoad := GTx_UnitXmlLoad('JON03080.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    sBaechSMS := '';
    StrValue := '';

    // ����â���� ��� ���� ������ ����������..���� ��ȸ ȭ�鿡�� ���� ������ �ֱ� ������ ó��
    if ( blCompulWor ) and (Trim(sWkSabun) <> '') then
    begin
      sBaechSMS := IfThen(blChkCuSMS, '0', '1');  // ������ ���ڸ� ���������� ����,,
      if ss_Mode <> 'R' then
        ss_Mode   := '0';
      StrValue := Trim(sWkSabun);
    end;

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'WkSabunString', StrValue); // ����� �б�.
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
    // �����߿� ���� ù�ǿ� ���ؼ��� ����ġ���� �޾Ҵ���.. ���������ߴ��� üũ��.[��� �ݸ��ʸ� ����ϰ��ִ��� üũ�ϱ� ������]

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CallCenterString', En_Coding(GT_USERIF.CT));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'MaddBrchString', En_Coding(locBrNo));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'KeyNumberString', En_Coding(locKNum));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CidLogSeqString', En_Coding(locLogSeq));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'DNISString', locDNIS);

		sContent := '';
		sContent := ReplaceAll(Trim(meoCuCCMemo.Text), #$D#$A, '��');
		sContent := ReplaceAll(sContent, #13#10, '��');
		sContent := ReplaceAll(sContent, #10#13, '��');
		sContent := StringReplace(sContent, '|', '��', [rfReplaceAll]);

		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfMemoString', En_Coding(sContent));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfBrchString', '');

    // ������-0(�Ϲ�), 1(����), 3(����)
		if CbCuGb.ItemIndex = 2 then StrValue := '3' else
    if CbCuGb.ItemIndex = 1 then StrValue := '1'
                            else StrValue := '0';

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfBarString', StrValue);

    // ����� �߰� : 0.�ҷ�:����, 1.����:��Ȳ, 2.�Ϲ�:�ϴ�, 3.���:����, 4.�ֿ��:����, 5.VIP:Ȳ�ݻ�
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'LevelCdString', GetCustLevelSeq);

    // ������� :::::::: �Ź��� �߰� ��� ����..(���α�ɿ�û����,,����,,)
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ViaChargeViaString', ReplaceAll(cxCurPathRate.Text, ',', ''));
    // �����
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'WChargeWCString', ReplaceAll(cxCurWaitTmRate.Text, ',', ''));
    // ���ð�
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'WTimeWTString', cxTmWaitTime.Text + FloatToStr(fCruKm));
    // �����ݾ�
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'AChargeACString', ReplaceAll(cxCurRevisionRate.Text, ',', ''));
    // ������(2)
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfInfo2String', En_Coding(ReplaceAll(meoBigo2.Text, #10#13, '|')));
    // �������

    if BtnOptionSexM.Down then StrValue := 'M' else
    if BtnOptionSexF.Down then StrValue := 'F'
                          else StrValue := 'A';

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'OptionString', StrValue);
    StrValue := StrValue + sStickCall + sTaksong;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'DriverString', StrValue);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PostTimeString', PostTime); // �Աݽð��ڵ�
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PostChargeString', IntToStr(edtPostPay.Value)); // �ڵ��Աݱݾ�

    sCbCode := '';
    sCbNm   := '';
    sCbDp   := '';
    if cxtCuBubin.Hint <> '' then
    begin // �����ڵ� üũ.
      sCbCode := cxtCuBubin.Hint;
      iRow := GT_BUBIN_INFO.cbcode.IndexOf(sCbCode + ',' + locBrNo);
      if iRow >= 0 then
      begin
        sCbNm := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[iRow]), 121, 16));  // ������θ�
        sCbDp := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[iRow]), 137, 16));  // ������κμ���
      end;
    end;

    // ������ ��� ����..
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
    // ����ð� //if chkResv.Checked = True then
    StrValue := IfThen(ss_Mode = 'R', formatdatetime('yyyymmdd', dtpResvDate.Date) + formatdatetime('hhmm', dtpResvTime.Time) + '00', '');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfPretimeString', StrValue);

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'GroupNoString', En_Coding(locHdNo));

		StrValue := IfThen(BtnCenterMng.Down, 'y', 'n'); // ��Ȳ�� üũ�ڽ�
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'BrTelYnString', StrValue);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'CuTelYnString', CustBrTelYN);

    // �÷����� ������ �߰�. 2010.10.03 --> �÷������� �����ݷ� ������. 110906.
    // �÷����� ����(�����Ǹ� �����)
    if GS_PRJ_AREA = 'S' then
    begin
      StrValue := IfThen(BtnPlusYN.Down, 'y', 'n'); // �÷����� üũ�ڽ� --> �÷������� �����ݷ� ������. 110906.
    end else
    begin
      StrValue := 'n';    // ������� ������ ������ ������. 2011-11-10.
    end;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PlusYnString', StrValue);

    // ��� ������ ������ �߰�. 2010-11-03
    cxDriverCharge.Text := StringReplace(cxDriverCharge.Text,',','',[rfReplaceAll]);

    // KCP ī����� "�����Ϸù�ȣ" �߰�.  2011-10-19
		StrValue  := cxDriverCharge.Text + '" CardPaySeq="' + locCardPaySeq;

    if (btnCmdJoinCopy.Hint = 'JOINCOPY') or (btnCmdWaitCopy.Hint = 'JOINCOPY') then
    begin
			if Assigned(Frm_JON34) then Frm_JON34.proc_init;
      locCardPaySeq  := '';
			locCardTranNo  := '';
      locCardPayInfo := '';
    end;

		ls_TxLoad := StringReplace(ls_TxLoad,'DriverChargeString', StrValue, [rfReplaceAll]);

		//PUSH �߼ۿ� 2013.03.30 khs
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'AppCodeString', sAppCode);

		// --------------------------------------------------------------------------------------------
    // 2006.06.06 �߰�(����, ��������, �ĺ�, �ʹ�ȣ���� ��ǥ�� ����)
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustNameString', En_Coding(edtCuName.Text));

		sContent := '';
		sContent := ReplaceAll(Trim(meoCuWorMemo.Text), #$D#$A, '|');
		sContent := ReplaceAll(sContent, #13#10, '|');
		sContent := ReplaceAll(sContent, #10#13, '|');
		sContent := StringReplace(sContent, '��', '|', [rfReplaceAll]);

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

    // CID ���� ����
    ls_stCid := lc_stCid;

    if cxLblCIDUseFlg.Hint <> 'CID' then
    begin
      ls_stCid := StringReplace(ls_stCid, 'CidsYnString',        'n'                    , [rfReplaceAll]); // CID������ ���� ������ â���� ���� (y,n)
      if gsCidVersion = 'CXE' then
        ls_stCid := StringReplace(ls_stCid, 'CidsVersionString',   '1', [rfReplaceAll]) // CID�����������ݹ��� (0:������, 1:CIDXE����)
      else
        ls_stCid := StringReplace(ls_stCid, 'CidsVersionString',   '0', [rfReplaceAll]); // CID�����������ݹ��� (0:������, 1:CIDXE����)
      ls_stCid := StringReplace(ls_stCid, 'CidsInlineString',    ''                     , [rfReplaceAll]); // ������ȣ  (CID�������� �����Ѱ�)
      ls_stCid := StringReplace(ls_stCid, 'CidsDnisString',      ''                     , [rfReplaceAll]); // DNIS��ȣ  (CID�������� �����Ѱ�)
      ls_stCid := StringReplace(ls_stCid, 'CidsKeyNumberString', ''                     , [rfReplaceAll]); // ��ǥ��ȣ  (CID�������� �����Ѱ�
      ls_stCid := StringReplace(ls_stCid, 'CidsCidNumString',    ''                     , [rfReplaceAll]); // ����ȣ  (CID�������� �����Ѱ�)
      ls_stCid := StringReplace(ls_stCid, 'CidsCidKeyString',    ''                     , [rfReplaceAll]); // ����ȣ������Ű��  (CID�������� �����Ѱ�)
      ls_stCid := StringReplace(ls_stCid, 'CidsBrNoString',      ''                     , [rfReplaceAll]); // �����ڵ� (CID�������� �����Ѱ�)
    end else
    begin
      ls_stCid := StringReplace(ls_stCid, 'CidsYnString',        'y'                    , [rfReplaceAll]); // CID������ ���� ������ â���� ���� (y,n)
      if gsCidVersion = 'CXE' then
        ls_stCid := StringReplace(ls_stCid, 'CidsVersionString',   '1', [rfReplaceAll]) // CID�����������ݹ��� (0:������, 1:CIDXE����)
      else
        ls_stCid := StringReplace(ls_stCid, 'CidsVersionString',   '0', [rfReplaceAll]); // CID�����������ݹ��� (0:������, 1:CIDXE����)
      ls_stCid := StringReplace(ls_stCid, 'CidsInlineString',    gsInternalNumber       , [rfReplaceAll]); // ������ȣ  (CID�������� �����Ѱ�)
      ls_stCid := StringReplace(ls_stCid, 'CidsDnisString',      En_Coding(locDNIS)     , [rfReplaceAll]); // DNIS��ȣ  (CID�������� �����Ѱ�)
      ls_stCid := StringReplace(ls_stCid, 'CidsKeyNumberString', En_Coding(locKNum)     , [rfReplaceAll]); // ��ǥ��ȣ  (CID�������� �����Ѱ�
      ls_stCid := StringReplace(ls_stCid, 'CidsCidNumString',    cxtCallTelNum.Text     , [rfReplaceAll]); // ����ȣ  (CID�������� �����Ѱ�)
      ls_stCid := StringReplace(ls_stCid, 'CidsCidKeyString',    locSndTime             , [rfReplaceAll]); // ����ȣ������Ű��  (CID�������� �����Ѱ�)
      ls_stCid := StringReplace(ls_stCid, 'CidsBrNoString',      En_Coding(locBRNO)     , [rfReplaceAll]); // �����ڵ� (CID�������� �����Ѱ�)
    end;

    ls_stCid := StringReplace(ls_stCid, 'ManTelString',        cxtCuTel.Text     , [rfReplaceAll]); // ����ȣ   (������ ���Ƿ� ����ȣ�Է�)
    ls_stCid := StringReplace(ls_stCid, 'ManKeyNumberString',  En_Coding(locKNum), [rfReplaceAll]); // ��ǥ��ȣ   (������ ���Ƿ� ����/��ǥ��ȣ ����)
    ls_stCid := StringReplace(ls_stCid, 'ManBrNoString',       En_Coding(locBRNO), [rfReplaceAll]); // �����ڵ�   (������ ���Ƿ� ����/��ǥ��ȣ ����)

    // ����ں� ������踦 ����ϱ� ���� �Ӽ���(CID : 0(�Ϲ�), 1(CID))
    if cxLblCIDUseFlg.Hint = 'CID' then
    begin
      if locCustHP_MainNum_Search = '' then
        // JON03���� �� ��ȭ��ȣ��  ��ȸ�� �����. ���а�:'CUSTHP'
        ls_stCid := StringReplace(ls_stCid, 'CidsAutoString', '1', [rfReplaceAll])   // CID�����κ��� �����Ǿ� ���� ������û�� (1)
      else
        ls_stCid := StringReplace(ls_stCid, 'CidsAutoString', '0', [rfReplaceAll]);
    end else
    begin
      ls_stCid := StringReplace(ls_stCid, 'CidsAutoString', '0', [rfReplaceAll]);
    end;

    // //////////////////////////////////////////////////
    // ������ ó��[�Ź������� ����: �ٸ���� ä��]
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

        // ����� ��ǥ �� X/Y�� �����ϰų�, X��ǥ�� ����ִ� ��� �߻��Ͽ� ����ó�� ����(�ֵ���)
        if ((MCData.StPosX <> '') or (MCData.StPosY <> '')) and ((MCData.StPosX = MCData.StPosY) or
          (MCData.StPosX = '')) then
				begin
          ShowMessage('����� ��ǥ ������ �ùٸ��� �ʽ��ϴ�. ������� �ٽ� ��ȸ �Ͻð� ���� �ٶ��ϴ�.');
          Exit;
        end;

        // 20130923 LYB ������ ����..�������� ����� �õ�/�ñ���/���鵿 ���� ����   ������ �伺�븮-A876 �������12-D615
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
        ls_stArea := ReplaceAll(ls_stArea, 'AreaUPS', GS_Grid_DEP);  // ��������ð�

        if MCData.PayType = '�ĺ�' then StrValue := '2' else
				if MCData.PayType = '�ܻ�' then StrValue := '4'
                                   else StrValue := '0'; // ����

        ls_stArea := ReplaceAll(ls_stArea, 'PayGubunString', StrValue);
        ls_stArea := ReplaceAll(ls_stArea, 'UnpricedString', IfThen(MCData.PriceYN, 'y', 'n'));
        ls_stArea := ReplaceAll(ls_stArea, 'URLReqString', IfThen(MCData.CorpYN, '1', ''));

        ls_stArea := ReplaceAll(ls_stArea, 'ConfInfoString', En_Coding(MCData.Summary));
        ls_stArea := ReplaceAll(ls_stArea, 'ChargeString', IntToStr(MCData.Price));

     		// ���ð�
				ls_stArea := ReplaceAll(ls_stArea, 'WaitTimeString', cxTmWaitTime.Text + FloatToStr(MCData.Km));
				ls_stArea := ReplaceAll(ls_stArea, 'ChargeTypeString' , '22');


				ls_stArea := ReplaceAll(ls_stArea, 'AreaSOPTString', '');
				ls_stArea := ReplaceAll(ls_stArea, 'AreaSDebugString', '');
				ls_stArea := ReplaceAll(ls_stArea, 'AreaSetTypeString', '');
				ls_stArea := ReplaceAll(ls_stArea, 'AreaKeywordString', '');
				ls_stArea := ReplaceAll(ls_stArea, 'AreaIdString'     , '');

        // 20130923 LYB ������ ����..�������� ����� �õ�/�ñ���/���鵿 ���� ���� ������ �伺�븮-A876 �������12-D615
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
        ls_edArea := ReplaceAll(ls_edArea, 'AreaUPE', GS_Grid_DES); // ���������ð�

				ls_edArea := ReplaceAll(ls_edArea, 'AreaEOPTString', '');
				ls_edArea := ReplaceAll(ls_edArea, 'AreaEDebugString', '');
				ls_edArea := ReplaceAll(ls_edArea, 'AreaSetTypeString', '');
				ls_edArea := ReplaceAll(ls_edArea, 'AreaKeywordString', '');
				ls_edArea := ReplaceAll(ls_edArea, 'AreaIdString'     , '');

        ls_stArea_Tot := ls_stArea_Tot + ls_stArea;
        ls_edArea_Tot := ls_edArea_Tot + ls_edArea;
      end;
    end  else// ������ ó�� �Ϸ�
    // ������ ó��..[������ �������� ó����.]
    begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'AddressCountString', '1');

      ls_stArea := lc_stArea;
      ls_edArea := lc_edArea;

      if Trim(lcsSta1) = '' then
        lcsSta1 := slstLocalMapOrder[0];

      if (Trim(lcsEnd1) = '') and (GS_SEARCH_ENDNOSEARCH = False) then //������ �˻� �ɼ����� 2012.05.30
        lcsEnd1 := slstLocalMapOrder[0];

      // 20130923 LYB ������ ����..�������� ����� �õ�/�ñ���/���鵿 ���� ���� ������ �伺�븮-A876 �������12-D615
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

			// 2006.06.06 �ʹ�ȣ ��� ��ǥ�� �����Ѵ�.
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

      // ����� ��ǥ �� X/Y�� �����ϰų�, X��ǥ�� ����ִ� ��� �߻��Ͽ� ����ó�� ����(�ֵ���)
      if ((cxtStartXval.Text <> '') or (cxtStartYval.Text <> '')) and ((cxtStartXval.Text = cxtStartYval.Text) or
        (cxtStartXval.Text = '')) then
      begin
        ShowMessage('����� ��ǥ ������ �ùٸ��� �ʽ��ϴ�. ������� �ٽ� ��ȸ �Ͻð� ���� �ٶ��ϴ�.');
        Exit;
      end;

      // 20120808 LYB ����
      iX := cxtStartXval.Text;
      iY := cxtStartYval.Text;

      if ( gJONStaChkXY.X <> cxtStartXval.Text ) Or ( gJONStaChkXY.Y <> cxtStartYval.Text ) then
      begin
        if ( gJONStaChkXY.X <> '' ) And ( gJONStaChkXY.Y <> '' ) And ( gJONStaChkXY.Area1 <> '') then
        begin
          sMsg := ' ** ����� ���ÿ����� ���������� ��ġ���� �ʽ��ϴ�. ** ' + #13 +
                  '   - ����� ���ÿ���                                     ' + #13 +
                  '   ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + #13 +
                  '   - ����� ��������                                     ' + #13 +
                  '   ' + lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3 + ' ' + cxtStartAreaDetail.Text + ' ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + #13#10#13#10 +
                  '   ����� ���ÿ������� ���� ó�� �Ͻðڽ��ϱ�?           ' + #13 +
                  '   (�ƴϿ� ���ý� ����� ��Ī �˻��� �ٽ� ���ֽñ�ٶ��ϴ�.) ';
          begin
//-            sErrMsg := '[��-���� Y] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + '-' + frm_JON03.iTabCnt + ' ' + gJONStaChkXY.Gubun;
            Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[��-����]');
            Assert(False, sErrMsg);
          end;

          iX := gJONStaChkXY.X;
          iY := gJONStaChkXY.Y;
        end else
        begin
//-          sErrMsg := '[��-���� O] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + '-' + frm_JON03.iTabCnt + ' ' + gJONStaChkXY.Gubun;
          Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[��-����]');
          Assert(False, sErrMsg);
        end;
      end;

			ls_stArea := ReplaceAll(ls_stArea, 'stMapXString', iX);
      ls_stArea := ReplaceAll(ls_stArea, 'stMapYString', iY);
      ls_stArea := ReplaceAll(ls_stArea, 'AreaUPS', GS_Grid_DEP);  // ��������ð�

      // �������.[0����, 2�ĺ�, 4�ܻ�, 3�����(�̻��)]
      StrValue := PayMethod;
      ls_stArea := ReplaceAll(ls_stArea, 'PayGubunString', StrValue);

      // ������[��� �������� �Ѵ�.]
      StrValue := IfThen(chkNoSet.Down, 'y', 'n');
      ls_stArea := ReplaceAll(ls_stArea, 'UnpricedString', StrValue);

      // ��������(URL����) ����
      StrValue := '';
      ls_stArea := ReplaceAll(ls_stArea, 'URLReqString', StrValue);

      ls_stArea := ReplaceAll(ls_stArea, 'ConfInfoString', En_Coding(meoBigo.Text));
      ls_stArea := ReplaceAll(ls_stArea, 'ChargeString', ReplaceAll(curRate.Text, ',', ''));

     	// ���ð�
			ls_stArea := ReplaceAll(ls_stArea, 'WaitTimeString', cxTmWaitTime.Text + FloatToStr(fCruKm));
			ls_stArea := ReplaceAll(ls_stArea, 'ChargeTypeString' , '22');

		  ls_stArea := ReplaceAll(ls_stArea, 'AreaSOPTString', '9');
//-      Log('lcsStaDebug : ' + En_Coding(lcsStaDebug), LOGDATAPATHFILE);
			ls_stArea := ReplaceAll(ls_stArea, 'AreaSDebugString', En_Coding(lcsStaDebug));
			ls_stArea := ReplaceAll(ls_stArea, 'AreaSetTypeString', lcsStaCellSel);
			ls_stArea := ReplaceAll(ls_stArea, 'AreaKeywordString', En_Coding(lcsStaSchWord));
		  ls_stArea := ReplaceAll(ls_stArea, 'AreaIdString'     , lcsStaDocId);

      // 20130923 LYB ������ ����..�������� ����� �õ�/�ñ���/���鵿 ���� ���� ������ �伺�븮-A876 �������12-D615
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

      // 2006.07.24 ��������ǥ �߰��Ѵ�.
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
      ls_edArea := ReplaceAll(ls_edArea, 'AreaUPE', GS_Grid_DES); // ���������ð�

		  ls_edArea := ReplaceAll(ls_edArea, 'AreaEOPTString', '9');
//-      Log('lcsEndDebug : ' + En_Coding(lcsEndDebug), LOGDATAPATHFILE);
			ls_edArea := ReplaceAll(ls_edArea, 'AreaEDebugString', En_Coding(lcsEndDebug));
			ls_edArea := ReplaceAll(ls_edArea, 'AreaSetTypeString', lcsEndCellSel);
			ls_edArea := ReplaceAll(ls_edArea, 'AreaKeywordString', En_Coding(lcsEndSchWord));
      ls_edArea := ReplaceAll(ls_edArea, 'AreaIdString'     , lcsEndDocId);

      ls_stArea_Tot := ls_stArea_Tot + ls_stArea;
      ls_edArea_Tot := ls_edArea_Tot + ls_edArea;
    end; // ���� �� �Ϸ�

//--------------------------------------------------------------------------------------------
//  ������ �߰�
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
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaUPV', '');  // ���������ð�

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
        ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaUPV', GS_Grid_VIA);  // ���������ð�

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

    // - ������� �˻��� ����/���� ���� ����
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

          tmFormClose.Tag := 99; // ȭ�� �ݱ� ������.
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
      ls_ViaInto := 'JON01[Proc_Save]��������:' + e.message;
      Log(ls_ViaInto, LOGDATADIRECTORY + 'Accept_Err.log');

      Assert(False, ls_ViaInto);

      Proc_BtnEnabled(True); // ��ư Ȱ��/��Ȱ�� ó��.
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
		Log('����� : '+ sTemp, LOGDATAPATHFILE);
	end;
end;

procedure TFrm_JON01.SetCustBrTelYN(const Value: string);
begin
  FCustBrTelYN := LowerCase(Value);

  if Value = 'y' then LblCenterMng.Caption := '��Ȳ�� ON'
                 else LblCenterMng.Caption := '��Ȳ�� OFF';
end;

// ������ ���� ���� �Ѵ�.
procedure TFrm_JON01.Proc_OrderWaitJoinIns;
begin
  try
    if not NotNullCheck(True) then
      Exit;

    if IsPayMethodPost then // �ĺҿ��� ĳ������ üũ..
    begin
      locBrNo := Proc_BRNOSearch;
      if not frm_main.func_brcash_check(locBrNo, StrToIntDef(FloatToStr(curRate.Value), 0)) then
      begin
        GMessagebox('����ĳ���� �����Ͽ� �ĺҷ� ������ �� �����ϴ�.', cdmsi);
        exit;
      end;
    end;

    if cxLblCIDUseFlg.Hint <> 'CID' then
    begin // CID ��ȸ���� ������ �Ѵ�.
      if gsCuTelHint <> cxtCuTel.Text then
        // ����ȭ��ȣ ���濩�θ� üũ�ϱ� ���� �����Ѵ�.
      begin
        GMessagebox(Format('�˻��� [%s]��ȭ��ȣ�� ���� �Էµ� ��ȭ��ȣ[%s]�� �ٸ��ϴ�.', [gsCuTelHint, cxtCuTel.Text]) + #13#10 +
          Format('������ ��ȭ��ȣ�� ����Ϸ��� [%s]��ȭ��ȣ�� ��ȸ(����) �Ŀ� �����ϼ���', [cxtCuTel.Text]) + #13#10
          + '[��]���� ��ȭ��ȣ�� �űԹ�ȣ�� �߰�(����)�ҷ��� ������ ��ư�� Ŭ�� �� �űԹ�ȣ�� �߰�(����)�ϰ� �����ϼ���', CDMSI);
        Exit;
      end;
    end;

    lg_Save := '1';
    Proc_Save('5'); // ���� ����..

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

// ������ ���Ƿ� ���� �Ѵ�.
procedure TFrm_JON01.Proc_OrderQuesJoinIns;
begin
  try
    if not NotNullCheck then
      Exit;

    if IsPayMethodPost then // �ĺҿ��� ĳ������ üũ..
    begin
      locBrNo := Proc_BRNOSearch;
      if not frm_main.func_brcash_check(locBrNo, StrToIntDef(FloatToStr(curRate.Value), 0)) then
      begin
        GMessagebox('����ĳ���� �����Ͽ� �ĺҷ� ������ �� �����ϴ�.', cdmsi);
        exit;
      end;
    end;

    if cxLblCIDUseFlg.Hint <> 'CID' then
    begin // CID ��ȸ���� ������ �Ѵ�.
      if gsCuTelHint <> cxtCuTel.Text then
        // ����ȭ��ȣ ���濩�θ� üũ�ϱ� ���� �����Ѵ�.
      begin
        GMessagebox(Format('�˻��� [%s]��ȭ��ȣ�� ���� �Էµ� ��ȭ��ȣ[%s]�� �ٸ��ϴ�.', [gsCuTelHint, cxtCuTel.Text]) + #13#10 +
          Format('������ ��ȭ��ȣ�� ����Ϸ��� [%s]��ȭ��ȣ�� ��ȸ(����) �Ŀ� �����ϼ���', [cxtCuTel.Text]) + #13#10
          + '[��]���� ��ȭ��ȣ�� �űԹ�ȣ�� �߰�(����)�ҷ��� ������ ��ư�� Ŭ�� �� �űԹ�ȣ�� �߰�(����)�ϰ� �����ϼ���', CDMSI);
        Exit;
      end;
    end;

    lg_Save := '1';
    Proc_Save('4'); // ���Ƿ� ����..

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

// ���������� ��ȸ�Ѵ�.
procedure TFrm_JON01.Proc_BubinListSearch;
var
  i, iRow: Integer;
  sKeyNum, sShortNm, sShortDp, sFullName, sFullDp, sCbCode, sBrNo: string;
begin
  // ���õ� ������������ �����ڵ�.
  sBrNo := Proc_BRNOSearch; //�����ڵ�
  // ���õ� ������������ ��ǥ��ȣ.
  sKeyNum := Proc_MainKeyNumberSearch; //��ǥ��ȣ
  sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);

  cxBubinView.BeginUpdate;

  cxBubinView.DataController.SetRecordCount(0);
  iRow := cxBubinView.DataController.AppendRecord;
  cxBubinView.DataController.Values[iRow, 0] := '����(�����������Է�)';
  // ���θ�
  cxBubinView.DataController.Values[iRow, 1] := '����'; // �μ���
  cxBubinView.DataController.Values[iRow, 2] := '����'; // ������θ�
  cxBubinView.DataController.Values[iRow, 3] := '����'; // ����μ���
  cxBubinView.DataController.Values[iRow, 4] := ''; // �����ڵ�
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
        // �����ڵ� + , + �����ڵ�
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

// ���� ��Ʈ���� �ʱ�ȭ �Ѵ�.
procedure TFrm_JON01.ChkMiniClick(Sender: TObject);
begin
  if ChkMini.Checked then procFrmSizeChange('Y', Self)
                     else procFrmSizeChange('N', Self) 
end;

procedure TFrm_JON01.ControlClear(bTF: boolean = False);
begin
  FCustBrTelYN := '';

  // ��Ʈ�� �ʱ�ȭ..
  edtCuName.Text := ''; // ����
  CbCuGb.Hint := 'Clear';
  CbCuGb.ItemIndex := 0; // -- ����(������)
  CbCuGbPropertiesChange(CbCuGb);
  CbCuGb.Hint := '';

  lblCuCntTotal.Caption := '0'; // ����
  lblCoCntTotal.Caption := '0'; // �Ϸ�
  lblCuCancelR.Caption := '0%'; // �����
  lblCuMile.Caption := '0'; // �������ϸ���
  lblCuMileUnit.Caption := '0'; // ���ظ��ϸ���
  lblCuMileCnt.Caption := '0'; // ���� Ƚ��

  meoCuCCMemo.Clear; // ���޸�(������)
  meoCuCCMemo.Width := 276;

	mmoCuInfo.Text := '���ڵ� : '#13#10 +
  								  '�ۼ�ġ : '#13#10+
                    '�ۻ��� : '#13#10 +
  								  '���� : '#13#10 +
  								  '������ : '#13#10 +
  								  '�� : '#13#10 +
  								  'OS : '#13#10 +
  								  '��� : ';

  BtnCuSmsNo.Down := False;

  mmoCBMemo.Clear;
  mmoCBMemo.Visible := False;
  meoCuWorMemo.Lines.Clear; // ������޸�
  lblCuBubinName.Caption := ''; // ���θ�/�μ���

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
  // ��ǥ��ȣ �� �⺻ ���� ��� �ݿ� ���θ� ���� �Ѵ�.[True:�ݿ�, False:�̹ݿ�]
	if ((gsMyMainTelUse = 'FALSE') or (GSMyMainTelOrderChargeCheck)) and (not IsMultiCallFixPrice)
    and ((Pos('����', Self.Caption) > 0 ) and (cxtJoinNum.Hint[1] in ['2', '4', '8']))
    and (    (cxtStartXval.Text <> cxtStartXval.Hint) or (cxtStartYval.Text <> cxtStartYval.Hint)
          or (cxtEndXval.Text <> cxtEndXval.Hint) or (cxtEndYval.Text <> cxtEndYval.Hint))  // ��ǥ��ȯ�� �־������
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

  //��� ������ �˻�
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
          btnPickupInsert.OnClick(btnPickupInsert); // �Ⱦ���� ����Ű : 2011.05.25 CDS. Add.
      //      VK_F6     : if rb_search.Enabled then rb_Search.OnClick(rb_Search);
      Vk_F7: //if rb_Modify.Enabled then rb_Modify.OnClick(rb_Modify);              // ����
        if btnCmdUpdSave.Enabled then
          btnCmdUpdSave.OnClick(btnCmdUpdSave);
      Vk_F8: //whbtn_Cancel.OnClick(whbtn_Cancel);                                   // ����
        btnCmdExit.OnClick(btnCmdExit);
      Vk_F9:
        begin
          //if lg_Enter <> '' then exit;
          //  lg_Enter := 'Enter';
          if not btnCmdJoin.Enabled then
            Exit; // ����
          btnCmdJoinClick(btnCmdJoin);
        end;
      Vk_F10:
        if btnCmdWait.Enabled then
          btnCmdWait.OnClick(btnCmdWait); // ���
      Vk_F11:
        if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // ������
      Vk_F12:
        if btnCmdQuestion.Enabled then
          btnCmdQuestion.OnClick(btnCmdQuestion); // ����
      VK_ESCAPE: // ESC Ű
        begin
          if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
          begin
            if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '')
              and (Trim(lblStartAreaName.Text) = '') and (Trim(lblEndAreaName.Caption) = '')
              and (Trim(cxtStartAreaDetail.Text) = '') and (Trim(cxtEndAreaDetail.Caption) = '') then
              btnCmdExit.OnClick(btnCmdExit); // ����
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
  // ����ڵ��Աݾ� ����
	if IsPayMethodPost then
  begin
    if GS_PRJ_AREA = 'S' then
    begin
      // �������� ������忡���� ���
      if cbbPayMethod.Text = PAY_METHOD_POST_MILE then
      begin
				UserMile := StrToIntDef(lblCuMile.Caption, 0);
				edtPostPay.Value := IfThen(UserMile >= curRate.Value, curRate.Value, UserMile);
      end
			else
				edtPostPay.Value := curRate.Value;
    end else
    begin
			// ������� ������忡�� ������.
      // ������� �϶��� ����ڵ��Աݾ��� �������� �ʵ��� ��û�Ͽ� ������(�Ű����û). 2011.07.19
      if Pos('����', Self.Caption) = 0 then
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

					if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ2K 20140221 KHS
						edtPostPay.Value := 2000
					else
   				if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ3K 20141007 KHS
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

  if cbbPayMethod.Text = PAY_METHOD_POST_MILE then          //  20130705  LYB   ��ݼ����Ǹ� ���������ݾ׵� ����
  begin
 	  if Assigned(frm_JON34) then
    begin
      frm_JON34.cxCurDecRate_Coupon.Value := curRate.Value;

      if frm_JON34.lblCouponStatus.Caption = '���οϷ�' then
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
		Log('����� : '+ sTemp, LOGDATAPATHFILE);
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
		Log('����� : '+ sTemp, LOGDATAPATHFILE);
	end;
end;

// ���� ���� ������ �����ش�.
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
    lblCuBubinName.Caption := '���ΰ� [ ' + Trim(sBubin) + ' ]';
    cxtCuBubin.Text := sBubin;
    cxtCuBubin.Hint := sCbCd;
    if (Pos('����', Self.Caption) = 0 ) then
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
	__Cu_INF_STR = '���ڵ� : %0:s'#13#10 +
								 '�ۼ�ġ : %1:-12s'#13#10+
                 '�ۻ��� : %2:-12s'#13#10 +
								 '���� : %3:-10s'#13#10 +
								 '������ : %4:s'#13#10 +
								 '�� : %5:-15s'#13#10 +
								 'OS : %6:-17s'#13#10 +
								 '��� : %7:-10s';
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
    GMessagebox('���� �����ϴ�!', CDMSI);
    Exit;
  end;

  try
    sHdNo := Proc_HDNOSearch;
    sBrNo := Proc_BRNOSearch;
    sKeynum := Proc_MainKeyNumberSearch;
    sCustTel := ReplaceAll(cxtCuTel.Text, '-', '');
    if GMessagebox('��������ȣ : ' + strtocall(sCustTel) + #13#10 +
      '������ �������� �̿�Ƚ��, ���ϸ����� �����˴ϴ�.' + #13#10 +
      '[��, �� �̿볻���� �������� �ʽ��ϴ�.]' + #13#10 +
      '[����, ���� ��ϵ� ������ ���� ��쿡�� ���� �ȵ�]' + #13#10 +
      '�����Ͻðڽ��ϱ�?', CDMSQ) <> idok then
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

          tmFormClose.Tag := 99; // ȭ�� �ݱ� ������.
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
	if BtnStLock.Hint = 'F4)����' then
  begin
    // 20120805 ��ǥ ���� üũ LYB
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

    BtnStLock.Hint := 'F4)���';
    BtnStLock.Tag  := 0;
    BtnStLock.Down := True;
    BtnStLock.OptionsImage.ImageIndex := 1;

    frm_JON30.N1.Enabled := False;
    frm_JON30.N1.Caption := '���������(��ǥ���̵�)-��ݻ���';
    frm_JON30.N1.Enabled := False;
    frm_JON30.N6.Enabled := False;
    frm_JON30.N6.Caption := '���������(�ּ�+��ǥ�̵�)-��ݻ���';

    meoStartArea.SetFocus;
    meoStartArea.SelStart := Length(meoStartArea.Text);
  end;
end;

procedure TFrm_JON01.SetEndAreaMap(const ASido, AGugun, ADong, ADetail, AX,
  AY: string);
begin
	if BtnEdLock.Hint = 'F4)����' then
	begin
		gJONEndChkXY.X := AX;
		gJONEndChkXY.Y := AY;
		gJONEndChkXY.GUIDE_X := AX;
		gJONEndChkXY.GUIDE_Y := AY;

    cxtEndXval.Text := AX;
		cxtEndYval.Text := AY;
    cxtEndGUIDEXval.Text := AX;
		cxtEndGUIDEYval.Text := AY;

		BtnEdLock.Hint := 'F4)���';
    BtnEdLock.Tag  := 0;
    BtnEdLock.OptionsImage.ImageIndex := 1;
    BtnEdLock.Down := True;
		frm_JON30.N2.Enabled := False;
		frm_JON30.N2.Caption := '����������(��ǥ���̵�)-��ݻ���';
		frm_JON30.N2.Enabled := False;

		frm_JON30.N7.Enabled := False;
		frm_JON30.N7.Caption := '����������(�ּ�+��ǥ�̵�)-��ݻ���';

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
    if BtnStLock.Hint <> 'F4)���' then    //  20130703  LYB  ��ݻ��¿����� �ʱ�ȭ���� �ʴ´�.
    begin
      // 20120805 ��ǥ ���� üũ LYB
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
    if BtnEdLock.Hint <> 'F4)���' then    //  20130703  LYB  ��ݻ��¿����� �ʱ�ȭ���� �ʴ´�.
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
  if BtnStLock.Hint = 'F4)����' then
  begin
    // 20120805 ��ǥ ���� üũ LYB
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

    BtnStLock.Hint := 'F4)���';
    BtnStLock.Tag  := 0;
    BtnStLock.OptionsImage.ImageIndex := 1;
    BtnStLock.Down := True;
    frm_JON30.N1.Enabled := False;
    frm_JON30.N1.Caption := '���������(��ǥ���̵�)-��ݻ���';
    frm_JON30.N1.Enabled := False;
    frm_JON30.N6.Enabled := False;
    frm_JON30.N6.Caption := '���������(�ּ�+��ǥ�̵�)-��ݻ���';

    meoStartArea.SetFocus;
    meoStartArea.SelStart := Length(meoStartArea.Text);
  end;
end;

procedure TFrm_JON01.SetEndAreaMapNew(const ASido, AGugun, ADong, ADetail, AX, AY: string);
begin
  if BtnEdLock.Hint = 'F4)����' then
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

    BtnEdLock.Hint := 'F4)���';
    BtnEdLock.Tag  := 0;
    BtnEdLock.OptionsImage.ImageIndex := 1;
    BtnEdLock.Down := True;

    frm_JON30.N2.Enabled := False;
    frm_JON30.N2.Caption := '����������(��ǥ���̵�)-��ݻ���';
    frm_JON30.N2.Enabled := False;

    frm_JON30.N7.Enabled := False;
    frm_JON30.N7.Caption := '����������(�ּ�+��ǥ�̵�)-��ݻ���';

    meoEndArea.SetFocus;
    meoEndArea.SelStart := Length(meoEndArea.Text);
  end;
end;

procedure TFrm_JON01.Proc_AreaSearchKDown_Added(Key: Word);
var sViaWord : string;
begin
	if (lcsActiveEdit = 'meoEndArea') and (GS_SEARCH_ENDNOSEARCH = True) then Exit;  //������ �˻� ���� 2012.05.29 KHS
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

			if not frm_JON30.noSearch then      //advgrid3 Ŭ�� �� �� �˻� �ȵ�.
      begin
				if GS_MAP_AREA_AUTOSHOW and (not frm_JON30.Visible) and (not Assigned(Frm_COM30)) then
        begin
          if ( (meoStartArea.Focused) Or (meoEndArea.Focused) Or
               (meoViaArea1.Focused) Or  (meoViaArea[2].Focused) Or (meoViaArea[3].Focused) Or
               (meoViaArea[4].Focused) Or  (meoViaArea[5].Focused) ) then      //  20130703  LYB  �����/������ ��Ŀ���� �������� â ǥ��
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
			giAreaKeyFullMatch_CNT := 0; // �������� Ǯ��Ī �� �α�,�α� �Է½� ���� ���ؼ�.
      giKeyWordSerchValue := 0;    // �������� Ǯ��Ī �� �α�,�α� �Է½� ���� ���ؼ�.
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
    // ����� --> ������1
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

    // ������1 --> ������ ���� ����..
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

    // ������ ���� --> ������ ����..
		if cxtEndXval.Text <> '' then
		begin
			if bSearchFlag <> True then
      begin
				// ���� Ȯ�� ��ư ������,, �� �������� ���������� Km�� �������� �ʴ´�.
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
    Lbl_Distance.Caption := Format(' ����)%s', [FloatToStr(fDis) + 'Km']);
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
          ShowMessage('���Ž�� ������ �����Ҽ� �����ϴ�.');
          Exit;
        end;
      end;

      Log('4. SmartSR Start Bessel : ' + IntToStr(AFromLon) + ',' + IntToStr(AFromLat) , LOGDATAPATHFILE);
      RouteMan.SetOrgLonLat(AFromLon, AFromLat);
      RouteMan.SetDstLonLat(AToLon, AToLat);
      Log('4. SmartSR End Bessel : ' + IntToStr(AToLon) + ',' + IntToStr(AToLat) + ' -  IP : ' + SRIp + ' Port : ' + IntToStr(SRPort) , LOGDATAPATHFILE);

      ////// ����� Ž���� ���ؼ��� �Ʒ��� �ɼ��� �߰��� �ּ���. //////
      RouteMan.SetOrgDirectionToBoth();
      RouteMan.SetViaDirectionToBoth();
      RouteMan.SetDstDirectionToBoth();

      ////// Toll��
      RouteMan.SetTollFareType(1);

      ////// Ž�� �ɼ�
      ////// Ž�� �ɼ� 1.��Ÿ����� - 2.��Ÿ��ִ�
      ///              1.�Ϲݵ���  2.��ӵ���
      ///              1.����      2.����
      if Frm_Main.Frm_JON01[Self.Tag].fDirKm < 70 then
        RouteMan.Remote_SetRPCType(2, 1, 1)  // �ִ�, �Ϲݵ���, ����
      else
        RouteMan.Remote_SetRPCType(2, 2, 2);  // �ִ�, ��ӵ���, ����
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
	bSearchYN: boolean; // ��� ����ȸ ����
  sViaTmp : String;
begin
	iRow := Self.Tag; // �� �ε���.

	bSearchYN := False; // ��� ����ȸ ����

  if gsViaStartEndCheck = 'Y' then
  begin
  	if pos('/', meoStartArea.Text) > 0 then
	  	meoStartArea.Text := Copy(meoStartArea.Text, 1, pos('/', meoStartArea.Text) - 1);
  end else
  begin
  	if LastPos('/', meoEndArea.Text) > 0 then
	  	meoEndArea.Text := Copy(meoEndArea.Text, LastPos('/', meoEndArea.Text) + 1, Length(meoEndArea.Text) - LastPos('/', meoEndArea.Text) );
  end;

	if (Via_Info[1].XposVia <> '') and (ViaADDTag = 0) then ViaADDTag := 1; //ù��° �������� ���

	iLastViaTag := ViaADDTag;

  sViaTmp := '';

	iVia := 1;    //���������� ���Ե� ������ �߰� �ʱⰪ
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

		if pos('����)', meoStartArea.Text) < 1 then
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

		if pos('����)', meoStartArea.Text) > 0 then
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
	begin // ��� ����ȸ ����
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
														 or (Proc_MainKeyNumberSearch = '025231793')) then    //�λ��õ�� 3��4�� 2013.12.11 KHS
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
  //  ���� ����
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
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strDeparture', ASta1 + '��' + ASta2 + '��' + ASta3 + '��' + ASPOI + '��' + ASX + '��' + ASY);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strArrive'   , AEnd1 + '��' + AEnd2 + '��' + AEnd3 + '��' + AEPOI + '��' + AEX + '��' + AEY);

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

          sSmart := FormatFloat('#,##0', StrToFloatDef(sSmart, 0.0)) + '��' ;
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Past');
          iRCnt := strtoint(lst_Result.item[0].attributes.getNamedItem('rowCount').Text) ;
          OType := lst_Result.item[0].attributes.getNamedItem('searchType').Text;
          for i := 0 to iRCnt -1 do
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Past/Row');

            if lst_Result.item[i].attributes.getNamedItem('rank').Text = '1' then
            begin
              if sRank1 = '' then
                sRank1 := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[i].attributes.getNamedItem('charge').Text, 0.0)) + '��'
              else if sRank2 = '' then
                sRank2 := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[i].attributes.getNamedItem('charge').Text, 0.0)) + '��';
            end
            else
            if lst_Result.item[i].attributes.getNamedItem('rank').Text = '2' then
            begin
              sRank2 := FormatFloat('#,##0', StrToFloatDef(lst_Result.item[i].attributes.getNamedItem('charge').Text, 0.0)) + '��';
            end;
          end;
          cxLblSmartRate.Caption := ' ����Ʈ:' + sSmart;
          cxLblRate1.Caption := '1��:' + sRank1;
          cxLblRate2.Caption := '2��:' + sRank2;
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
        // �̿볻�� �˾��޴� �ʱ�ȭ
    		FillChar(A01_HIS_POPUP, SizeOf(A01_HIS_POPUP), chr($00));
    		cxtCuBubin.Hint := '';  //�����ڵ� �ʱ�ȭ
    		btnCmdJoinCopy.Hint := ''; // ������ ���� ��� ����.
    		btnCmdWaitCopy.Hint := ''; // ����� ���� ��� ����.

        // CID ��ȸ���� ������ �Ѵ�.  Value:CID
        cxLblCIDUseFlg.Hint := '';
    		// ������ȣ ��ȸ ���� ������ �Ѵ�. Value:CONFSLIP
    		cxLblConfSlipUseFlg.Hint := '';

    		meoStartArea.Hint := ''; // ��Ŀ�� ���̻� �Ѿ�� �ʵ��� �Ѵ�.
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
        // �����, ��ǥ��ȣ ������ ���� Ȯ~ ���̰�, ũ�� �����ش�.

        cxLblOrderUpInfo.Caption := '���� �ű� ȭ��';
    		cxMeoOrderUpInfo.Text := '';

        pnlTelNESearch.Visible := False; // ��ȭ��ȣ �˻� �ǳ�,,

        cxtJoinNum.Tag := 0; // sTodayGb:1(���Ͽ���), 2:(���ſ���)
        btnCmdUpdSave.Hint := ''; // "����", "�߰�����" ���а� ����.

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
        BtnResv.Tag := 0;  // ���� �ʱ�ȭ
        dtpResvDate.Enabled := True;
        dtpResvTime.Enabled := True;

        // �ش� ���� ã�Ƽ� ���� ó�� �Ѵ�.
        Frm_Main.JON01MNG[Self.Tag].Use := False;
        Frm_Main.JON01MNG[Self.Tag].Jon03Tag := -1;

        Frm_JON011.meoCuCCMemoS .Clear;
        Frm_JON011.meoCuWorMemoS.Clear;
        Frm_JON011.mmoCbMemoS.   Clear;
        Frm_JON011.TmrChkTag.Tag := 100;

        if Assigned(Frm_JON015) and Frm_JON015.HandleAllocated and (Frm_JON015.OrderHandle = Self.Handle) then Frm_JON015.Close;

        // CU_LEVEL_TYPE : 0 : �� �ڵ���޺� �� Į�� ������ �ش�.
    		Proc_SetFormColor_2(10);
        // �� ���п� ���� �� Į�� ������ �ش�.
    		Proc_SetFormColor_3(10);
        // �� ��޺� �� Į�� ������ �ش�.
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
  			FControlInitial(False, True); // ����ȭ���� �⺻ ��Ʈ���� �ʱ�ȭ �Ѵ�.
        ControlClear(False);
        Proc_BtnEnabled(True); // ��ư Ȱ��/��Ȱ�� ó��.
  			SetPrivateVariable; // ���� ���� ��ȸ ���� ���� �������� �ʱ�ȭ..
  		except
      end;

      Frm_JON30.ClearMarkStartEndVia_Icon;

      if Assigned(Frm_JON30) then
      begin
        Hide_Panel(lcsActiveEdit,1);
        Frm_JON30.IdHTTPWise.Disconnect;
      end;

      // ------------------ �߽Ź�ȣ ������ �����ش�.------------------------
      cxtCallTelNum.Text := '';
      cxtCallTelNum.StyleDisabled.TextColor := $00555151;
      // ���� Į�� : $00555151,   // ���� Į�� : $00FAE1CD;

      // ���纯�� ����.[����:����ȸ �� ���纯��� ��ȸ�� ������ �Ϻ����� ���޽��� ���� ������]
      cboBranch.Properties.ReadOnly := False;
      if cboBranch.Properties.Items.Count > 0 then
      begin
        cboBranch.Tag := 10;
        // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
        cboBranch.ItemIndex := 0; // �⺻������ �����Ѵ�.
        cboBranch.Tag := 0;
        // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
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

        // �ڵ���ȸ ����� ����.
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

          // �ڵ���ȸ ����� ����.
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
  		// ����â �ݱ�.
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
    sKey := cxTSearchMainTel.text; // ��ȸ�� ����� �б�.

    iOldIdx := cboBranch.ItemIndex;  // ���� index ���� ����.[��ã�� ��� ���� ��������� �ǵ�����]
    cboBranch.Tag := 20;
    // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
    for i := 0 to cboBranch.Properties.Items.Count - 1 do
    begin
      cboBranch.ItemIndex := i;
      if (Pos(sKey, cboBranch.Text) > 0) then
      begin // �����  ã��..
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
    // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
    Result := bRlt;
  Except
    on e: exception do
    begin
      Log('proc_BrNameList_Search Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'proc_BrNameList_Search Error :' + E.Message);
    end;
  end;
end;

// ipwIPPort1 ������ �����Ѵ�.    �˸�ȭ���� �������ش�.[bOrderInsGB: True:Ascending False:Descending]
procedure TFrm_JON01.LocNewSocketSend(lsSendText: string; bOrderInsGB: boolean =
  False);
var
  slRcvList: TStringList;
  // ���� ��� ó�� ���� ��� ����. 2009.01.09
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

        tmFormClose.Tag := 99; // ȭ�� �ݱ� ������.
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

// ������ ���,,  ������ ������ ��ȸ �Ѵ�.
procedure TFrm_JON01.proc_ViaInfo;
var
  ls_TxLoad, ls_TxQry, sQueryTemp : string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
  try
    // ������ȣ�� ������ Skip.
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

            tmFormClose.Tag := 99; // ȭ�� �ݱ� ������.
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
		// ������޼�����0�� �ĺ��� �ĺҽ����� ���信 �������ʿ����
		if APostPay = 0 then
		begin
			AddStr := '�ĺ�]�ڵ��Աݾ���';
			AddSpop('�ĺ�',98);
		end else
		begin
      if Not pJON01Dock.bUNDock then pJON01Dock.HDNO := GT_SEL_BRNO.HDNO;

			AddStr := '';
			if APay > APostPay then
			begin
				if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ2K 20140221 KHS
					AddStr := '����' + _GetPayStr(APay) + ']'
				else
				if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ3K 20141007 KHS
					AddStr := '����' + _GetPayStr(APay) + ']'
				else
					AddStr := '����' + _GetPayStr(APay - APostPay) + ']';
			end;

			AddStr := AddStr + '�ĺ�' + _GetPayStr(APostPay) + ']';
			AddStr := AddStr + APostTime;
			if (cbbPostTime.ItemIndex = 0) or (cbbPostTime.ItemIndex = 1) or (cbbPostTime.ItemIndex = 3)then
			begin
				AddSpop('�ĺ�',98);
			end
			else if (cbbPostTime.ItemIndex = 2) then
			begin
				if (cbbPayMethod.Text = PAY_METHOD_BUSAN) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ2K 20140221 KHS
					AddSpop('��',99)
				else
				if (cbbPayMethod.Text = PAY_METHOD_BUSAN3K) and (GS_PRJ_AREA = 'O') AND ((GT_USERIF.ShareNo = 'G03') or (pJON01Dock.HDNO = 'A100')) then //�λ꿬����Ʈ3K 20141007 KHS
					AddSpop('����',99)
				else
					AddSpop('����',99);
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
//  ����� �߰� ���� ����
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
    begin // ����� ����.
      sTemp := StringReplace(cxtStartAreaDetail.Text, ' ', '', [rfReplaceAll]);  // ���������� ����  20130514 LYB

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
    begin // ������ ����.
      sTemp := StringReplace(cxtEndAreaDetail.Caption, ' ', '', [rfReplaceAll]);  // ���������� ����  20130514 LYB

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

		sPOI := sTemp1 + '|' + '999';    // 20130508  LYB ����  ���� ���� �� mySQL��ȯ�� ���� �ȵǴ� ���� �ذ�

    if st_List.IndexOf(sPOI) < 0 then
    begin
      st_List.Add(sPOI);
      // ����� �����Է� ���� ����. CDS.
      if iGubun = 0 then
      begin // ����� ����.
        GT_MAPLocal.slCity.Add(lcsSta1); // �õ�
        GT_MAPLocal.slWard.Add(lcsSta2); // �ñ���
        GT_MAPLocal.slStre.Add(lcsSta3); // ���鵿
        GT_MAPLocal.slSSub.Add(sTemp); // ��������
        GT_MAPLocal.slSPOI.Add(''); // �α�POI
        GT_MAPLocal.slMapX.Add(cxtStartXval.Text); // X ��ǥ
        GT_MAPLocal.slMapY.Add(cxtStartYval.Text); // Y ��ǥ
      end else
      if iGubun = 1 then
      begin // ������ ����.
        GT_MAPLocal.slCity.Add(lcsEnd1); // �õ�
        GT_MAPLocal.slWard.Add(lcsEnd2); // �ñ���
        GT_MAPLocal.slStre.Add(lcsEnd3); // ���鵿
        GT_MAPLocal.slSSub.Add(sTemp); // ��������
        GT_MAPLocal.slSPOI.Add(''); // �α�POI
        GT_MAPLocal.slMapX.Add(cxtEndXval.Text); // X ��ǥ
        GT_MAPLocal.slMapY.Add(cxtEndYval.Text); // Y ��ǥ
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
		ShowMessage('����� �������������� ���� �Ǿ����ϴ�.')
  else
    ShowMessage('������ �������������� ���� �Ǿ����ϴ�.');
end;

// ����ȸ �׸��忡�� �׸��� ���ýÿ� ������ ������ �Է� ��Ʈ�ѿ� Display~
procedure TFrm_JON01.Proc_GridCustChoice(iRcIdx: Integer);
begin
  try
    cxtCuTel.Text := cxCustView.DataController.Values[iRcIdx, 1]; // ����ȭ��ȣ
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
    sKey := RemoveAll(cxTSearchMainTel.text, '-'); // ��ȸ�� ����� �б�.

    iOldIdx := cboBranch.ItemIndex;
    cboBranch.Tag := 20;
    // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
    for i := 0 to cboBranch.Properties.Items.Count - 1 do
    begin
      cboBranch.ItemIndex := i;
      if (Pos(sKey, cboBranch.Text) > 0) then
      begin // �����  ã��..
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
    // ���� ���� ������ ����Ǹ� �Ϻ� ��Ʈ���� �ʱ�ȭ �Ǵ� ������ �����Ѵ�.
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
  tmBsArea, tmBsNum: string;  // 2010.12.13 =�˻�-> �̻� �̻�
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
          // ��� ������ �˻��� ����..
          strSearch := slAreaList[0] + slAreaList[1] + IntToStr(curRate.Value);
          tmBsArea := slAreaList[0]+slAreaList[1];
          tmBsNum := IntToStr(curRate.Value);

          // 2010.12.13 ( = ��ȸ -> <= ��ȸ)
          // ��� ������ �˻�
          //Area_Charge_List.Sorted := True;
          try
            for I := 0 to Area_Charge_List.Count - 1 do
            begin
              GetTextSeperationEx('��', Area_Charge_List.Strings[I], slResult);
              strData := slResult[0];
              tmLpArea:=str2string(slResult[0]);
              tmLpNum:=IntToStr(str2integer(slResult[0]));
              if (tmBsArea=tmLpArea) and (StrToIntDef(tmBsNum,0)>=StrToIntDef(tmLpNum,0)) then
                tmCost:=slResult[1];
            end;

            // 2011.01.19 (���������� �߰� 100���Ͻ� currate ���� �ش��� �»��� 100�� ����
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

// �� �⺻������ ���� �Ѵ�.
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
      ShowMessage('�� �Ϸù�ȣ�� �����ϴ�. �������� ����ȸ �� ���� [����] �ϼ���!');
      Exit;
    end;

    if cxtCallTelNum.Text = '' then
    begin
      ShowMessage('�� ��ȭ��ȣ�� �����ϴ�. �������� ����ȸ �� ���� [����] �ϼ���!');
      Exit;
    end;

    if cxtCallTelNum.Text <> cxtCuTel.Text then
    begin
      ShowMessage('���� �� �� ��ȭ��ȣ�� ��ȸ�� ��ȭ��ȣ�� �ٸ��ϴ�. �������� ����ȸ �� ���� [����] �ϼ���!');
      Exit;
    end;

    iFidx := Self.Tag; // ���� index�� ����.
    locHdNo := Proc_HDNOSearch; // �����ڵ� ������ �д´�.
    locBrNo := Proc_BRNOSearch; // �����ڵ� ������ �д´�.
    locKNum := Proc_MainKeyNumberSearch; // ��ǥ��ȣ ������ �д´�.

    if cxtCallTelNum.Text = '' then
    begin
      cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);
      cxtCallTelNum.Text := cxtCuTel.Text;
    end;

    //////////////////////////////////////////////////////////////////////////////////
    //  ������ ���� ����
    //////////////////////////////////////////////////////////////////////////////////
    ls_TxLoad := GTx_UnitXmlLoad('C032N2.XML');

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'CUSV0032');

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfSlipString', cxtJoinNum.Text);
    if BtnCuSmsNo.Down then // SMS���Űź�
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'SMSString', 'n')
		else
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'SMSString', 'y');

    if (0 >= Pos('*', cxtCuTel.Text)) then
      //[�����ÿ�]����ȭ��ȣ ��ŷó���Ȱ� �϶�,, [locsCuTel, locsCuTel2]
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustTelString', En_Coding(cxtCallTelNum.Text))
    else
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'CustTelString', En_Coding(locsCuTel));

		sContent := '';
		sContent := ReplaceAll(Trim(meoCuCCMemo.Text), #$D#$A, '��');
		sContent := ReplaceAll(sContent, #13#10, '��');
		sContent := ReplaceAll(sContent, #10#13, '��');
		sContent := StringReplace(sContent, '|', '��', [rfReplaceAll]);

		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfMemoString', En_Coding(sContent));

		// ������-0(�Ϲ�), 1(����), 3(����)
    if CBCuGb.ItemIndex = 2 then
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfBarString', '3')
    else
    if CBCuGb.ItemIndex = 1 then
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfBarString', '1')
    else
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfBarString', '0');

    // ����� �߰� : 0.�ҷ�:����, 1.����:��Ȳ, 2.�Ϲ�:�ϴ�, 3.���:����, 4.�ֿ��:����, 5.VIP:Ȳ�ݻ�
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'LevelCdString', GetCustLevelSeq);
    // ������ ��� ����..
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
		sContent := StringReplace(sContent, '��', '|', [rfReplaceAll]);

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

          tmFormClose.Tag := 99; // ȭ�� �ݱ� ������.
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

      // ���� ������ ������ �����Ѵ�.
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
      ShowMessage('�� ��ȭ��ȣ�� �����ϴ�. �������� ����ȸ �� ���� [SMS�ź�] �ϼ���!');
      Exit;
    end;

    if cxtCallTelNum.Text <> cxtCuTel.Text then
    begin
      ShowMessage('���� �� �� ��ȭ��ȣ�� ��ȸ�� ��ȭ��ȣ�� �ٸ��ϴ�. �������� ����ȸ �� ���� [SMS�ź�] �ϼ���!');
      Exit;
    end;

    iFidx := Self.Tag; // ���� index�� ����.
    locHdNo := Proc_HDNOSearch; // �����ڵ� ������ �д´�.
    locBrNo := Proc_BRNOSearch; // �����ڵ� ������ �д´�.
    locKNum := Proc_MainKeyNumberSearch; // ��ǥ��ȣ ������ �д´�.

    if cxtCallTelNum.Text = '' then
    begin
      cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);
      cxtCallTelNum.Text := cxtCuTel.Text;
    end;

    //////////////////////////////////////////////////////////////////////////////////
    //  SMS�ź� ���� ����
    //////////////////////////////////////////////////////////////////////////////////
    ls_TxLoad := GTx_UnitXmlLoad('JON03020.XML');

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'JON03020');

    if BtnCuSmsNo.Down then // SMS���Űź�
			ls_TxLoad := ReplaceAll(ls_TxLoad, 'SMSString', 'n')
		else
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'SMSString', 'y');

    if (0 >= Pos('*', cxtCuTel.Text)) then
      //[�����ÿ�]����ȭ��ȣ ��ŷó���Ȱ� �϶�,, [locsCuTel, locsCuTel2]
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

          tmFormClose.Tag := 99; // ȭ�� �ݱ� ������.
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

      // ���� ������ ������ �����Ѵ�.
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
  lblCurRevisionRate.Visible := (cxCurRevisionRate.Text = ''); // �����ݾ� �Է� �ܻ�.
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
            btnPickupInsert.OnClick(btnPickupInsert); // �Ⱦ���� ����Ű : 2011.05.25 CDS. Add.
        Vk_F7: //if rb_Modify.Enabled then rb_Modify.OnClick(rb_Modify);              // ����
          if btnCmdUpdSave.Enabled then
            btnCmdUpdSave.OnClick(btnCmdUpdSave);
        Vk_F8: //whbtn_Cancel.OnClick(whbtn_Cancel);                                   // ����
          btnCmdExit.OnClick(btnCmdExit);
        Vk_F9:
          begin
            //if lg_Enter <> '' then exit;
            //  lg_Enter := 'Enter';
            if not btnCmdJoin.Enabled then
              Exit; // ����
            btnCmdJoinClick(btnCmdJoin);
          end;
        Vk_F10:
          if btnCmdWait.Enabled then
            btnCmdWait.OnClick(btnCmdWait); // ���
        Vk_F11:
          if ( btnCmdMultiCall.Visible ) And ( btnCmdMultiCall.Enabled ) then btnCmdMultiCall.Click;   // ������
        Vk_F12:
          if btnCmdQuestion.Enabled then
            btnCmdQuestion.OnClick(btnCmdQuestion); // ����
        VK_ESCAPE: // ESC Ű
          begin
            if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
            begin
              if (Trim(meoStartArea.Text) = '') and (Trim(meoEndArea.Text) = '')
                and (Trim(lblStartAreaName.Text) = '') and (Trim(lblEndAreaName.Caption) = '')
                and (Trim(cxtStartAreaDetail.Text) = '') and (Trim(cxtEndAreaDetail.Caption) = '') then
                btnCmdExit.OnClick(btnCmdExit); // ����
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
    lblCurRevisionRate.Visible := (cxCurRevisionRate.Value = 0); // ���۱� �Է� �ܻ�.
end;

function TFrm_JON01.fGetDiffDay( sEndDate : String ) : String;
Var TimeGap : Int64;
    sDate, sStat : String;
begin
  TimeGap := GetTimeGap(FormatDateTime('YYYYMMDDHHNN00', Now), sEndDate);

{  Data := Format('%d�� %d�ð� %d�� %d��',[
          Trunc(TimeGap / 86400),
          Trunc(( TimeGap mod 86400 ) / 3600),
          Trunc((( TimeGap mod 86400 ) mod 3600) / 60),
          TimeGap mod 60
  ]);
}

  sDate := Format('%d�� %d�ð� %d��',[
           Trunc(TimeGap / 86400),
           Trunc(( TimeGap mod 86400 ) / 3600),
           Trunc((( TimeGap mod 86400 ) mod 3600) / 60)
   ]);

  if BtnResJ.Down then sStat := '����' else
  if BtnResD.Down then sStat := '���';

  cxlblState.Caption := Format('[%s] �Ŀ� [%s] ���·� ����˴ϴ�.', [sDate, sStat]);

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

// ��ȸ �� ���� ������ ���� �Ѵ�. : DB Update~~
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
    // SKIP ó��.
  else
  begin
    // �ĺ��̸鼭,,          cxtJoinNum.Hint := sTemp;  // ���� ���°��� �����Ѵ�.
    if (IsPayMethodPost) and (cxtJoinNum.Hint <> '4') then
    begin
      sBrNo := Proc_BRNOSearch;
      if not frm_main.func_brcash_check(sBrNo, StrToIntDef(FloatToStr(curRate.Value), 0)) then
      begin
        GMessagebox('����ĳ���� �����Ͽ� �ĺҷ� ������ �� �����ϴ�.', cdmsi);
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
				GMessagebox('[����] ���������� ������ ������ �Ұ����մϴ�.' + #13#10
									+ '�������� �Է��ϼ���.' + #13#10
									+ '[���ÿɼ�-�˻�����] ������ ���Է½� ����/���ȵ�', CDMSI);
				meoEndArea.SetFocus;
//        meoEndArea.SelStart := Length(meoEndArea.Text);
				Exit;
			end;
		end;
		if (cxtJoinNum.Hint = '5') then
		begin
			if Trim(meoEndArea.Text) = '' then
			begin
				GMessagebox('[���] ���������� ������ ������ �Ұ����մϴ�.' + #13#10
									+ '�������� �Է��ϼ���.' + #13#10
									+ '[���ÿɼ�-�˻�����] ������ ���Է½� ����/���ȵ�', CDMSI);
				meoEndArea.SetFocus;
//        meoEndArea.SelStart := Length(meoEndArea.Text);
				Exit;
			end;
		end;
	end;
	if (cxtJoinNum.Hint = 'B') then
	begin
		GMessagebox('[������] �����̹Ƿ� ������ �Ұ����մϴ�.', cdmsi);
		exit;
	end;
	if (cxtJoinNum.Hint = 'C') then
	begin
		GMessagebox('[�ٹ�] �����̹Ƿ� ������ �Ұ����մϴ�.', cdmsi);
		exit;
	end;

  iFidx := Self.Tag; // ���� index�� ����.
  locHdNo := Proc_HDNOSearch; // �����ڵ� ������ �д´�.
  locBrNo := Proc_BRNOSearch; // �����ڵ� ������ �д´�.
	locKNum := Proc_MainKeyNumberSearch; // ��ǥ��ȣ ������ �д´�.

  Proc_BtnEnabled(False); // ��ư Ȱ��/��Ȱ�� ó��.

	try
		ls_TxLoad := GTx_UnitXmlLoad('JON03081.XML');
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'MODI0001');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfSlipString', En_Coding(cxtJoinNum.Text)); // ������ȣ
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID)); // ����� ID
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfStatusString', cxtJoinNum.Hint); // ���� ���°��� �����Ѵ�.
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ChangeStatusString', AStatus); // ����� ��������(��� => ����)
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PostTimeString', PostTime); // �Աݽð��ڵ�
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PostChargeString', IntToStr(edtPostPay.Value)); // �ڵ��Աݱݾ�

    if cxtCuBubin.Hint <> '' then
    begin // �����ڵ� üũ.
      sCbCode := cxtCuBubin.Hint;
      iRow := GT_BUBIN_INFO.cbcode.IndexOf(sCbCode + ',' + locBrNo);
      if iRow >= 0 then
      begin
				sCbNm := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[iRow]), 121, 16));  // ������θ�
				sCbDp := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[iRow]), 137, 16));  // ������κμ���
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
    // ������ ��� ����..
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
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'CuSeqString', En_Coding(lcsCu_seq)); // ���Ϸù�ȣ
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ModeString', '');
    // �̻��.
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
		sContent := StringReplace(sContent, '��', '|', [rfReplaceAll]);

		ls_TxLoad := ReplaceAll(ls_TxLoad, 'CarInfoString', En_Coding(sContent));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PayGubunString', PayMethod);

    // ��� ������ ������ �߰�. 2010-11-03
    cxDriverCharge.Text := StringReplace(cxDriverCharge.Text,',','',[rfReplaceAll]);

		//Ź��, ��ƽ �ɼ�
    if BtnOptionSexM.Down then StrValue := 'M' else
    if BtnOptionSexF.Down then StrValue := 'F'
                          else StrValue := 'A';

		StrValue := StrValue + sStickCall + sTaksong;
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'DriverOptionString', StrValue);
		//Ź��, ��ƽ �ɼ�

    // KCP ī����� "�����Ϸù�ȣ" �߰�.  2011-10-26
    StrValue  := cxDriverCharge.Text + '" CardPaySeq="' + locCardPaySeq;
    ls_TxLoad := StringReplace(ls_TxLoad,'DriverChargeString', StrValue, [rfReplaceAll]);
    // �������� ����
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'URLReqString', '');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'MChargeString', '');
    // ����ϰ��� : �̻��.
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfInfoString', En_Coding(meoBigo.Text));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ChargeString', ReplaceAll(curRate.Text, ',', ''));

		sContent := '';
		sContent := ReplaceAll(Trim(meoCuCCMemo.Text), #$D#$A, '��');
		sContent := ReplaceAll(sContent, #13#10, '��');
		sContent := ReplaceAll(sContent, #10#13, '��');
		sContent := StringReplace(sContent, '|', '��', [rfReplaceAll]);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfMemoString', En_Coding(sContent));

		// ��Ȳ�� üũ�ڽ�
		StrValue := IfThen(BtnCenterMng.Down, 'y', 'n');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'BrTelYnString', StrValue);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'CuTelYnString', CustBrTelYN);

    // SMS ���ſ���
    StrValue := IfThen(btnCuSmsNo.Down, 'n', 'y');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'SMSString', StrValue);
    // �������
    if BtnOptionSexM.Down then StrValue := 'M' else
    if BtnOptionSexF.Down then StrValue := 'F'
                          else StrValue := 'A';

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'OptionString', StrValue);

    // ����ð�
    if BtnResv.Tag = 1 then
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfPretimeString', formatdatetime('yyyymmdd', dtpResvDate.Date)
        + formatdatetime('hhmm', dtpResvTime.Time) + '00')
    else
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfPretimeString', '');

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'BrNoString', En_Coding(locBrNo));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'KeyNumberString', En_Coding(locKNum));
    // ������-0(�Ϲ�), 1(����), 3(����)
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

    if (Trim(lcsEnd1) = '') and (GS_SEARCH_ENDNOSEARCH = False) then //������ �˻� �ɼ����� 2012.05.30
      lcsEnd1 := slstLocalMapOrder[0];

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stArea1String', En_Coding(lcsSta1));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stArea2String', En_Coding(lcsSta2));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stArea3String', En_Coding(lcsSta3));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stArea4String', En_Coding(cxtStartAreaDetail.Text));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stArea5String', En_Coding(meoStartArea.Text));

    // 2006.06.06 �ʹ�ȣ ��� ��ǥ�� �����Ѵ�.
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

    // ����� ��ǥ �� X/Y�� �����ϰų�, X��ǥ�� ����ִ� ��� �߻��Ͽ� ����ó�� ����(�ֵ���)
    if ((cxtStartXval.Text <> '') or (cxtStartYval.Text <> '')) and ((cxtStartXval.Text = cxtStartYval.Text) or
      (cxtStartXval.Text = '')) then
    begin
      ShowMessage('����� ��ǥ ������ �ùٸ��� �ʽ��ϴ�. ������� �ٽ� ��ȸ �Ͻð� ���� �ٶ��ϴ�.');
      Exit;
    end;

      // 20120808 LYB ����
    iX := cxtStartXval.Text;
    iY := cxtStartYval.Text;

    if ( gJONStaChkXY.X <> cxtStartXval.Text ) Or ( gJONStaChkXY.Y <> cxtStartYval.Text ) then
    begin
      if ( gJONStaChkXY.X <> '' ) And ( gJONStaChkXY.Y <> '' ) And ( gJONStaChkXY.Area1 <> '') then
      begin
        sMsg := ' ** ����� ���ÿ����� ���������� ��ġ���� �ʽ��ϴ�. ** ' + #13 +
                '   - ����� ���ÿ���                                     ' + #13 +
                '   ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + #13 +
                '   - ����� ��������                                     ' + #13 +
                '   ' + lcsSta1 + ' ' + lcsSta2 + ' ' + lcsSta3 + ' ' + cxtStartAreaDetail.Text + ' ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + #13#10#13#10 +
                '   ����� ���ÿ������� ���� ó�� �Ͻðڽ��ϱ�?           ' + #13 +
                '   (�ƴϿ� ���ý� ����� ��Ī �˻��� �ٽ� ���ֽñ�ٶ��ϴ�.) ';
        begin
          sErrMsg := '[��-���� Y] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + ' ' + gJONStaChkXY.Gubun;
          Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[��-����]');
          Assert(False, sErrMsg);
        end;

        iX := gJONStaChkXY.X;
        iY := gJONStaChkXY.Y;
      end else
      begin
        sErrMsg := '[��-���� O] : (' + GS_Grid_DEP + ') '+ IfThen(0 >= Pos('*', cxtCuTel.Text), cxtCallTelNum.Text, locsCuTel) + ' - ' + gJONStaChkXY.Area1 + ' ' + gJONStaChkXY.Area2 + ' ' + gJONStaChkXY.Area3 + ' ' + gJONStaChkXY.Area4 + ' ' + gJONStaChkXY.Area5 + ' ' + meoStartArea.Text + ' ' + gJONStaChkXY.X + ' ' + gJONStaChkXY.Y + ' = ' + cxtStartXval.Text+ ' ' + cxtStartYval.Text + ' Tab:' + IntToStr(Self.Tag) + ' ' + gJONStaChkXY.Gubun;
        Assert(False, RightStr(GS_CHNAGE_STR, 1000) + '[��-����]');
        Assert(False, sErrMsg);
      end;
    end;

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stMapXString', iX);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stMapYString', iY);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'AreaUPS', GS_Grid_DEP);  // ��������ð�


		ls_TxLoad := ReplaceAll(ls_TxLoad, 'WaitTimeString', cxTmWaitTime.Text + FloatToStr(fCruKm));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ChargeTypeString' , '22');

	  ls_TxLoad := ReplaceAll(ls_TxLoad, 'stAreaSOPTString', '9');
//-    Log('lcsStaDebug �� : ' + En_Coding(lcsStaDebug), LOGDATAPATHFILE);
  	ls_TxLoad := ReplaceAll(ls_TxLoad, 'stAreaSDebugString', En_Coding(lcsStaDebug));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'stAreaSetTypeString', lcsStaCellSel);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'stAreaKeywordString', En_Coding(lcsStaSchWord));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'stAreaIdString'     , lcsStaDocId);

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edArea1String', En_Coding(lcsEnd1));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edArea2String', En_Coding(lcsEnd2));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edArea3String', En_Coding(lcsEnd3));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edArea4String', En_Coding(cxtEndAreaDetail.Caption));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edArea5String', En_Coding(meoEndArea.Text));

    // 2006.07.24 ��������ǥ �߰��Ѵ�.
    if StrToFloatDef(cxtEndXval.Text, -1) = -1 then cxtEndXval.Text := '';
    if StrToFloatDef(cxtEndYval.Text, -1) = -1 then cxtEndYval.Text := '';
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edMapXString', cxtEndXval.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'edMapYString', cxtEndYval.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'AreaUPE', GS_Grid_DES); // ���������ð�

	  ls_TxLoad := ReplaceAll(ls_TxLoad, 'edAreaEOPTString', '9');
//-    Log('lcsEndDebug �� : ' + En_Coding(lcsEndDebug), LOGDATAPATHFILE);
  	ls_TxLoad := ReplaceAll(ls_TxLoad, 'edAreaEDebugString', En_Coding(lcsEndDebug));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'edAreaSetTypeString', lcsEndCellSel);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'edAreaKeywordString', En_Coding(lcsEndSchWord));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'edAreaIdString'     , lcsEndDocId);

    // ������� :::::::: �Ź��� �߰� ��� ����..(���α�ɿ�û����,,����,,)
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ViaChargeViaString', ReplaceAll(cxCurPathRate.Text, ',', ''));
    // �����
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'WChargeWCString', ReplaceAll(cxCurWaitTmRate.Text, ',', ''));
    // ���ð�
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'WTimeWTString', cxTmWaitTime.Text + FloatToStr(fCruKm));
    // �����ݾ�
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'AChargeACString', ReplaceAll(cxCurRevisionRate.Text, ',', ''));
    // ������(2)
    sTemp := ReplaceAll(meoBigo2.Text, CRLF, '|');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfInfo2String', En_Coding(sTemp));

    StrValue := '';
    if ( blCompulWor ) and (Trim(sWkSabun) <> '') then
    begin
      StrValue := Trim(sWkSabun);
    end;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'WkSabunString', StrValue); // ����� �б�.

    // �÷����� ������ �߰�. 2010.10.03
    StrValue := IfThen(btnPlusYN.Down, 'y', 'n'); // �÷����� üũ�ڽ�
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'PlusYnString', StrValue);

    //--------------------------------------------------------------------------------------------
    //  ������ �߰�
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
			ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaUPV', '');  // ���������ð�

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
        ls_ViaInto := ReplaceAll(ls_ViaInto, 'AreaUPV', GS_Grid_VIA);  // ���������ð�

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

    // - ������� �˻��� ����/���� ���� ����
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

          tmFormClose.Tag := 99; // ȭ�� �ݱ� ������.
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
      Proc_BtnEnabled(True); // ��ư Ȱ��/��Ȱ�� ó��.
      Assert(False, E.Message);
    end;
  end;
end;

// �� ���� ���� ���� : ���� �� ��Ʈ�� Į�� ���� �Ѵ�.
procedure TFrm_JON01.SetCustControlColor(bType: boolean = False);
begin
  // ��Ʈ Į�� ����..
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
		SetPrivateVariable; // ���� ���� ��ȸ ���� ���� �������� �ʱ�ȭ..
    if locCustHP_MainNum_Search = '' then
    begin // JON03���� �� ��ȭ��ȣ��  ��ȸ�� �����. ���а�:'CUSTHP'
      cxLblCIDUseFlg.Hint := 'CID'; // CID ��ȸ���� ������ �Ѵ�.
    end;
    locHDNO := '';
		locBRNO := sBrNo; // ��ȸ �� ����, �����ڵ�, ��ǥ��ȣ �ӽ�����.
		locKNum := sKeyNumber; // CID���� ���� ��ǥ��ȣ ����.
    locDNIS := sDNIS;
    locSndTime := sSndTime;

    sCID := StringReplace(sCID, '-', '', [rfReplaceAll]);
    cxtCallTelNum.Text := sCID; // CID ����.
    cxtCuTel.Text := sCID;

		if not GS_CIDINFO_OUR_KEYNUMBER then
		begin
			cboBranch.ItemIndex := -1;
			ShowMessage('�������� �ʴ� ��ǥ��ȣ(' + sKeyNumber + ') �Դϴ�. Ȯ���� �˻� �ϼ���!' + #13#10 +
				'[�ݼ��Ϳ� �̰��� ���� �Ǵ� ���� �Ҽ� ���縸 �˻� ����]');
			GS_CIDINFO_OUR_KEYNUMBER := True;
			try
				// CID ��ȸ �϶��� �߽���ȭ���� ��Ʈ ����..
				if (locCustHP_MainNum_Search = '') and (cxLblCIDUseFlg.Hint <> 'CID') then
				begin
					cxtCuTel.Text := StringReplace(cxtCuTel.Text, '-', '', [rfReplaceAll]);
					cxtCallTelNum.Text := cxtCuTel.Text; // �߽���ȭ��ȣ
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

				// ���纯�� ����.[����:����ȸ �� ���纯��� ��ȸ�� ������ �Ϻ����� ���޽��� ���� ������]
				cboBranch.Properties.ReadOnly := True;

				if lcsCu_seq <> '' then
				begin
//					spCuSeqColor.Brush.Color := $0070FEF3;
					// ���� : $0070FEF3, ������ : $00FAEDE2
				end	else
				begin
//					spCuSeqColor.Brush.Color := $00FAEDE2;
					// ���� : $0070FEF3, ������ : $00FAEDE2
					if (cxLblCIDUseFlg.Hint = 'CID') and (locWkSabun = '') then
					begin // CID ��ȸ���� ������ �Ѵ�.
						tmMent.Enabled := True;
						locKNum := Proc_MainKeyNumberSearch; // ��ǥ��ȣ ����.
//						lblNewCustYN.Caption := sBr_Name + ' / ' + locKNum + ' ��' + #13#10
//							+ '-->>�ű� ��<<-- �Դϴ�.';
						pnlNewCustYN.Visible := True; // �ű԰������� ������ �����ش�.
					end;
				end;

        if Assigned(Frm_Jon012) then
        begin
  				Frm_Jon012.cxlbSlip.Caption    := cxtJoinNum.Text; // ����������ȣ
  				Frm_Jon012.cxlbCustTel.Caption := locsCuTel; // ����ȭ��ȣ �б�.
  				Frm_Jon012.cxlbKeyNum.Caption  := Proc_MainKeyNumberSearch; // ��ǥ��ȣ �б�.
        end;

				pnlJonMain.Enabled := True;   // ����â ���� ������. 2011-11-08.

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

  // CID������ �������� ��ȸ�Ѵ�.
	Proc_KeyNumberSearch(sKeyNumber, True);
end;

// �� �̿볻���� �׸��忡 �����ش�.
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
  TodayDate := StartDateTime('yyyy-mm-dd hh:nn:ss'); // ���� �������� ���..
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

        Inc(iTotCnt);  // �� ���� ����
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

        // ���Ͽ��� �ǿ� ���ؼ� Į�� �����Ͽ� ������ �ɼ� �ְ� ���ش�.
        try
          if I = 1 then
          begin
            OrderDate := locaryOrderList[I, 13]; // �����Ͻ�
            OrderDate := copy(OrderDate, 1, 19);
            CustomerNo := locaryOrderList[I, 15];
            if OrderDate >= TodayDate then
              SetCustControlColor(True) // ������ ȭ���� ��Į�� �������ش�.
            else
              SetCustControlColor(False);
          end;
        except
          on e: exception do
          begin
            sError := sError + '���Ͽ��� �� Error : ARow - ' + IntToStr(I) + E.Message;
            Assert(False, sError);
          end;
        end;

         // �����/�������� �ڷᰡ �ִ��� ���� üũ �� ������ ǥ��  20130724  LYB
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
            GS_Grid_DEP := 'A'; //�����̿볻���϶�
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

// �����/�������� �ڷᰡ �ִ��� ���� üũ �� ������ ǥ��  20130724  LYB
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
  // ���ν����� �и�  ( ����ġ ���� ������ ���ؼ� 20140522 )
	if ( not GS_AREA_AUTO_SET ) And  ( Not pbISStartEndXY ) then      //�����̿볻������ �ڵ����� ������ 2013.05.23 KHS
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

        // ����� �Ǽ��� �ּ� 4���̻� /  �ִ�Ǽ���� ����� �Ǽ� 50% �̻�
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

          // 20120805 ��ǥ ���� üũ LYB
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
          GS_Grid_DEP := 'H'; //�����̿볻���϶�
          changeLog('S'+ 'H1' + sArea2 + ':' + sArea3, false);        //x,y��ǥ ����� �α׻��� 2012.08.08 KHS
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

          GS_Grid_DES := 'H'; //�����̿볻���϶�
          changeLog('E'+ 'H1' + sArea2 + ':' + sArea3, false);        //x,y��ǥ ����� �α׻��� 2012.08.08 KHS
        end;
      end;
    except
      on e: exception do
      begin
        sError := '���Ͽ��� �� Error '  + E.Message;
        Assert(False, sError);
      end;
    end;
  end;
end;

end.

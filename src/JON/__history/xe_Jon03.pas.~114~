unit xe_Jon03;

interface

uses
  Winapi.Windows, dxSkinsCore, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxLabel, cxImageComboBox, cxCurrencyEdit, AdvUtil, dxScreenTip, dxCustomHint, cxHint, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, Vcl.ExtCtrls, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.Controls, cxImageList, Vcl.OleCtrls, SHDocVw, Vcl.Grids, AdvObj,
  BaseGrid, AdvGrid, AdvCGrid, cxGroupBox, cxRadioGroup, Vcl.StdCtrls, cxProgressBar, dxStatusBar, GradientLabel, cxSplitter, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxSpinEdit, cxDropDownEdit, cxCalendar, cxMaskEdit,
  Vcl.Graphics, cxImage, Vcl.Imaging.GIFImg, AdvGlowButton, cxTextEdit, cxCheckBox, Vcl.Buttons, cxButtons, cxPC, System.Classes,
  //-------------------------
  Vcl.Forms, Winapi.Messages, System.SysUtils, System.Variants, ComObj, xe_gnl, WinSock, cxGridExportLink, Vcl.ClipBrd, xe_CallPass, ShellAPI,
  IDGlobal, MMSystem, System.DateUtils, StrUtils, MSXML2_TLB, System.Threading, System.SyncObjs, IniFiles, dxToggleSwitch, dxActivityIndicator,
	dxSkinOffice2010Silver, dxGDIPlusClasses, dxSkinSharp, cxMemo, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  AdvProgressBar, dxScrollbarAnnotations;

type
  TKeyTypeRec = record
    Code, Value: string;
  end;

type
	TCallBellInfo = record
		Slip, KeyNumber, BrNm, CuNm, Start, Acc2: TStringList;
	end;

type
  TMultiCallNumber = record
    Slip, BaechaTime, MultiSlip, Seq : TStringList;
	end;

type
	TCallUpsoSearchInfo = record
		BrNo, UpNo, SDate, Edate, Gubun : String;
	end;

type
  TJOnCMNPacketPage = procedure(ANowPage, AFinalPage: string) of object;
  TJOnCMNSessionDisConnect = procedure(Sender: TObject) of object;
  TJOnCMNSessionConnect = procedure(Sender: TObject) of object;

type
  TcxViewInfoAcess = class(TcxGridTableDataCellViewInfo);
  TcxPainterAccess = class(TcxGridTableDataCellPainter);

type
	TMultiOrderChange = record
		HdNo, BrNo, Status, Slip, Start, sEnd, CustNm, CustTel, CustTel1, CustTel22, CashType, Deposit, Lon, Lat,
		WkSabun, WkHdNo, WkBrNo, KeyNumber : TStringList;
	end;

const
	KeyTypeValue: array[0..28] of TKeyTypeRec = (
			(Code: '2'; Value:'기사조회')
		, (Code: '1'; Value:'고객번호')
		, (Code: '3'; Value:'출발지')
		, (Code: '4'; Value:'도착지')
		, (Code: '5'; Value:'상담원ID')
		, (Code: '6'; Value:'대표번호')
		, (Code: '7'; Value:'접수번호')
		, (Code: '8'; Value:'고객명')
		, (Code: '9'; Value:'자체사번(풀매칭)')
		, (Code: '13'; Value:'법인명')
		, (Code: '12'; Value:'적요')
		, (Code: '10'; Value:'요금')
		, (Code: '11'; Value:'취소사유')
		, (Code: '16'; Value:'고객구분')
		, (Code: '17'; Value:'결제구분')
		, (Code: '18'; Value:'적요2')
		, (Code: '19'; Value:'배차구분')
		, (Code: '20'; Value:'상담원명')
		, (Code: '21'; Value:'적요3')
		, (Code: '22'; Value:'경과시간(분단위)')
		, (Code: '23'; Value:'접수시간(분단위)')
		, (Code: '26'; Value:'수수료')
		, (Code: '27'; Value:'탁송연합콜')
//		, (Code: '28'; Value:'  ')      //  AI 아웃바운드 옵션 배차지연콜 사용여부y/n
		, (Code: '29'; Value:'카드승인')
		, (Code: '30'; Value:'출발동')
		, (Code: '31'; Value:'접수구분')
		, (Code: '32'; Value:'부서명')
		, (Code: '33'; Value:'마일리지')      //모비딕요청 추가 20210629 KHS
		, (Code: '34'; Value:'요금인상')      //보류-모비딕요청 추가 20210629 KHS 인상y, 제외n
	);

type
	TFrm_JON03 = class(TForm)
    pnl_Main: TPanel;
    cxSmallImages: TcxImageList;
		Panel3: TPanel;
    pnl_OrderList: TPanel;
    pnl_Search: TPanel;
    Grd2: TcxGrid;
		sg_counsel: TcxGridDBTableView;
    sg_counselColumn1: TcxGridDBColumn;
    sg_counselColumn2: TcxGridDBColumn;
    sg_counselColumn3: TcxGridDBColumn;
    sg_counselColumn4: TcxGridDBColumn;
    sg_counselColumn5: TcxGridDBColumn;
		sg_counselColumn6: TcxGridDBColumn;
    sg_counselColumn8: TcxGridDBColumn;
    sg_counselColumn7: TcxGridDBColumn;
    sg_counselColumn9: TcxGridDBColumn;
    sg_counselColumn10: TcxGridDBColumn;
    sg_counselColumn11: TcxGridDBColumn;
    sg_counselColumn12: TcxGridDBColumn;
    sg_counselColumn14: TcxGridDBColumn;
    sg_counselColumn15: TcxGridDBColumn;
    sg_counselColumn16: TcxGridDBColumn;
    sg_counselColumn17: TcxGridDBColumn;
    sg_counselColumn18: TcxGridDBColumn;
    sg_counselColumn19: TcxGridDBColumn;
    sg_counselColumn20: TcxGridDBColumn;
    sg_counselColumn21: TcxGridDBColumn;
    sg_counselColumn22: TcxGridDBColumn;
    sg_counselColumn23: TcxGridDBColumn;
    sg_counselColumn24: TcxGridDBColumn;
    sg_counselColumn42: TcxGridDBColumn;
    sg_counselColumn43: TcxGridDBColumn;
    sg_counselColumn25: TcxGridDBColumn;
    sg_counselColumn26: TcxGridDBColumn;
    sg_counselColumn27: TcxGridDBColumn;
    sg_counselColumn28: TcxGridDBColumn;
    sg_counselColumn29: TcxGridDBColumn;
    sg_counselColumn30: TcxGridDBColumn;
    sg_counselColumn31: TcxGridDBColumn;
		sg_counselColumn32: TcxGridDBColumn;
    sg_counselColumn33: TcxGridDBColumn;
    sg_counselColumn34: TcxGridDBColumn;
    sg_counselColumn35: TcxGridDBColumn;
    sg_counselColumn36: TcxGridDBColumn;
		sg_counselColumn37: TcxGridDBColumn;
		sg_counselColumn38: TcxGridDBColumn;
    sg_counselColumn39: TcxGridDBColumn;
    sg_counselColumn40: TcxGridDBColumn;
    sg_counselColumn13: TcxGridDBColumn;
    sg_counselColumn41: TcxGridDBColumn;
    sg_counselColumn44: TcxGridDBColumn;
    sg_counselColumn45: TcxGridDBColumn;
    sg_counselColumn46: TcxGridDBColumn;
		sg_counselColumn47: TcxGridDBColumn;
    sg_counselColumn48: TcxGridDBColumn;
    sg_counselColumn49: TcxGridDBColumn;
    sg_counselColumn50: TcxGridDBColumn;
    cxCol_counselColumn51: TcxGridDBColumn;
    sg_counselColumn51: TcxGridDBColumn;
    sg_counselColumn52: TcxGridDBColumn;
    sg_counselColumn53: TcxGridDBColumn;
    sg_counselColumn54: TcxGridDBColumn;
    cxgrdbclmn_counselColumn55: TcxGridDBColumn;
    GrdLevel2: TcxGridLevel;
    dedt_Sdate: TcxDateEdit;
    Label1: TLabel;
    dedt_Edate: TcxDateEdit;
    pnl_MultiSearch: TPanel;
    pop_date: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N11: TMenuItem;
    lbl_JONSrc_Alert: TcxLabel;
    pnlColorSet: TPanel;
    GradientLabel3: TGradientLabel;
		lb_Common0: TLabel;
		lb_Common4: TLabel;
    lb_Common5: TLabel;
    lb_Common1: TLabel;
    lb_Common2: TLabel;
    lb_Common7: TLabel;
    lb_Common8: TLabel;
		lb_Common3: TLabel;
    SpeedButton11: TSpeedButton;
    lb_Title_List: TListBox;
    ColorDialog1: TColorDialog;
    tmr_hint: TTimer;
    tmr_dis: TTimer;
    tmr_search: TTimer;
    cxGridCounselToday: TcxGrid;
    cxViewCounselToday: TcxGridDBTableView;
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
    cxCol15: TcxGridDBColumn;
    cxCol16: TcxGridDBColumn;
    cxCol17: TcxGridDBColumn;
    cxCol18: TcxGridDBColumn;
    cxCol19: TcxGridDBColumn;
    cxCol20: TcxGridDBColumn;
    cxCol21: TcxGridDBColumn;
    cxCol22: TcxGridDBColumn;
    cxCol23: TcxGridDBColumn;
    cxCol24: TcxGridDBColumn;
    cxCol25: TcxGridDBColumn;
		cxCol26: TcxGridDBColumn;
    cxCol27: TcxGridDBColumn;
    cxCol28: TcxGridDBColumn;
    cxCol29: TcxGridDBColumn;
    cxCol30: TcxGridDBColumn;
		cxCol31: TcxGridDBColumn;
    cxCol32: TcxGridDBColumn;
    cxCol33: TcxGridDBColumn;
    cxCol34: TcxGridDBColumn;
    cxCol35: TcxGridDBColumn;
    cxCol36: TcxGridDBColumn;
    cxCol37: TcxGridDBColumn;
    cxCol38: TcxGridDBColumn;
    cxCol39: TcxGridDBColumn;
    cxCol40: TcxGridDBColumn;
    cxCol41: TcxGridDBColumn;
		cxCol42: TcxGridDBColumn;
    cxCol43: TcxGridDBColumn;
    cxCol44: TcxGridDBColumn;
    cxCol45: TcxGridDBColumn;
    cxCol46: TcxGridDBColumn;
    cxCol47: TcxGridDBColumn;
    cxViewCounselTodayColumn1: TcxGridDBColumn;
    cxViewCounselTodayColumn2: TcxGridDBColumn;
    cxViewCounselTodayColumn3: TcxGridDBColumn;
    cxColViewCounselTodayColumn4: TcxGridDBColumn;
    cxViewCounselTodayColumn4: TcxGridDBColumn;
    cxViewCounselTodayColumn5: TcxGridDBColumn;
    cxViewCounselTodayColumn6: TcxGridDBColumn;
    cxViewCounselTodayColumn7: TcxGridDBColumn;
    cxViewCounselTodayColumn8: TcxGridDBColumn;
    cxLevel1: TcxGridLevel;
    pnlBubin: TPanel;
    cxGrdBubin: TcxGrid;
    cxBubinView: TcxGridDBTableView;
    cxGrdCol1: TcxGridDBColumn;
    cxGrdCol2: TcxGridDBColumn;
    cxGrdCol3: TcxGridDBColumn;
    cxGrdCol4: TcxGridDBColumn;
    cxGrdCol5: TcxGridDBColumn;
		cxGrdBubinLevel1: TcxGridLevel;
    cbokeyNumber: TcxComboBox;
    lb_Common9: TLabel;
    lb_Common10: TLabel;
		status_bar: TdxStatusBar;
    dxStatusBar1Container1: TdxStatusBarContainerControl;
    pnl_SetDate: TcxGroupBox;
    edtFastKey8: TcxTextEdit;
    edtFastKey9: TcxTextEdit;
		edtFastKey10: TcxTextEdit;
		edtFastKey11: TcxTextEdit;
    edtFastKey12: TcxTextEdit;
    edtFastKey13: TcxTextEdit;
    edtFastKey14: TcxTextEdit;
    edtFastKey15: TcxTextEdit;
    edtFastKey16: TcxTextEdit;
    edtFastKey17: TcxTextEdit;
    edtFastKey18: TcxTextEdit;
    pnlCallPass: TPanel;
    grpSetBrch_select: TcxGroupBox;
    cb_brName: TcxComboBox;
    cxLabel1: TcxLabel;
    Lbl_SmsCash: TcxLabel;
    grpSetExcel: TcxGroupBox;
    Label32: TLabel;
    Edit1: TcxCurrencyEdit;
    edtTelNum: TEdit;
    popAccSearch: TPopupMenu;
    pmm_search: TMenuItem;
    pnlCPLogiEnv: TPanel;
    grdCallPassLogi: TAdvColumnGrid;
    cxGroupBox5: TcxGroupBox;
    cxButton6: TcxButton;
    pnlNoMouseMove: TPanel;
    cx_chk_All: TcxLabel;
    cx_00: TcxLabel;
    cx_01: TcxLabel;
    cx_0B: TcxLabel;
    cx_0C: TcxLabel;
    cx_03: TcxLabel;
    cx_05: TcxLabel;
    cx_02: TcxLabel;
    cx_08: TcxLabel;
		cx_0R: TcxLabel;
    cx_04: TcxLabel;
    cxGroupBox6: TcxGroupBox;
    Shape1: TShape;
    rb_chk_All: TAdvGlowButton;
    cb_00: TAdvGlowButton;
    cb_01: TAdvGlowButton;
    cb_0B: TAdvGlowButton;
    cb_0C: TAdvGlowButton;
    cb_03: TAdvGlowButton;
    cb_05: TAdvGlowButton;
    cb_02: TAdvGlowButton;
		cb_08: TAdvGlowButton;
    cb_0R: TAdvGlowButton;
    cb_04: TAdvGlowButton;
    speAuto: TShape;
    TCPClient: TIdTCPClient;
    tmPing: TTimer;
    PmAutoSec: TPopupMenu;
    N16: TMenuItem;
    N31: TMenuItem;
    N51: TMenuItem;
    N91: TMenuItem;
    cxLblAutSec: TcxLabel;
    cxImage1: TcxImage;
    cxImage2: TcxImage;
    sg_counselColumn55: TcxGridDBColumn;
		cxViewCounselTodayColumn9: TcxGridDBColumn;
    sg_counselColumn56: TcxGridDBColumn;
    cxViewCounselTodayColumn10: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    sg_xls: TcxGridDBTableView;
    cxGridDBColumn0: TcxGridDBColumn;
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
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
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
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
		cxGridLevel1: TcxGridLevel;
    cxGridDBColumn46: TcxGridDBColumn;
    pm_FastSearch14: TPopupMenu;
    fast14_N1: TMenuItem;
    fast14_N2: TMenuItem;
    fast14_N3: TMenuItem;
    pm_FastSearch15: TPopupMenu;
    fast15_N1: TMenuItem;
    fast15_N2: TMenuItem;
    fast15_N3: TMenuItem;
		fast15_N4: TMenuItem;
    fast15_N5: TMenuItem;
    fast15_N6: TMenuItem;
    cxImage3: TcxImage;
    sg_counselColumn57: TcxGridDBColumn;
    cxViewCounselTodayColumn11: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    rb_Search: TcxButton;
    rb_Accept: TcxButton;
    cxBtnInitialSearch: TcxButton;
    fast15_N9: TMenuItem;
    pm_FastSearch17: TPopupMenu;
    fast17_N2: TMenuItem;
    fast17_N3: TMenuItem;
    fast17_N4: TMenuItem;
    fast17_N6: TMenuItem;
    fast17_N10: TMenuItem;
    fast17_N11: TMenuItem;
    fast17_N12: TMenuItem;
    fast17_N13: TMenuItem;
    grpSetLocalS: TcxGroupBox;
    cb_City: TcxComboBox;
    cb_Ward: TcxComboBox;
    btnLocalSelect: TcxButton;
    btnLocalCancel: TcxButton;
    btnOption: TcxButton;
    btnSetDate: TcxButton;
    BtnSEYmd: TcxButton;
    btn2: TcxButton;
		btn3: TcxButton;
    btn_sms_con: TcxButton;
    btn1: TcxButton;
    btnCPLogiEnvSave: TcxButton;
    btnBubInWinClose: TcxButton;
    BtnYmdClose: TcxButton;
    cxButton4: TcxButton;
    cxProgressBar1: TcxProgressBar;
		edtFastKey19: TcxTextEdit;
		edtFastKey20: TcxTextEdit;
    sg_counselColumn58: TcxGridDBColumn;
    sg_counselColumn59: TcxGridDBColumn;
    sg_counselColumn60: TcxGridDBColumn;
    sg_counselColumn61: TcxGridDBColumn;
    sg_counselColumn62: TcxGridDBColumn;
    cxViewCounselTodayColumn12: TcxGridDBColumn;
    cxViewCounselTodayColumn13: TcxGridDBColumn;
    cxViewCounselTodayColumn14: TcxGridDBColumn;
    cxViewCounselTodayColumn15: TcxGridDBColumn;
    cxViewCounselTodayColumn16: TcxGridDBColumn;
    sg_counselColumn63: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxViewCounselTodayColumn17: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
		sg_counselColumn64: TcxGridDBColumn;
    cxViewCounselTodayColumn18: TcxGridDBColumn;
    pm_FastSearch22: TPopupMenu;
    fast22_N1: TMenuItem;
    fast22_N2: TMenuItem;
    fast22_N3: TMenuItem;
    fast22_N4: TMenuItem;
    fast22_N5: TMenuItem;
    fast22_N6: TMenuItem;
    fast22_N7: TMenuItem;
    fast22_N8: TMenuItem;
    fast22_N9: TMenuItem;
    fast22_N10: TMenuItem;
    fast22_N11: TMenuItem;
    fast22_N12: TMenuItem;
		fast22_N13: TMenuItem;
    fast22_N14: TMenuItem;
    fast22_N15: TMenuItem;
		fast22_N16: TMenuItem;
    fast22_N17: TMenuItem;
    fast22_N18: TMenuItem;
    fast22_N19: TMenuItem;
    fast22_N20: TMenuItem;
    N19: TMenuItem;
    grpSetOrderDTS: TcxGroupBox;
    btnODtSelect: TcxButton;
    btnODtCancel: TcxButton;
    cxSEOMin: TcxSpinEdit;
    cxLabel2: TcxLabel;
    btnODtAll: TcxButton;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
		cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    sg_counselColumn65: TcxGridDBColumn;
    sg_xlsColumn1: TcxGridDBColumn;
    cxViewCounselTodayColumn19: TcxGridDBColumn;
    pm_FastSearch24: TPopupMenu;
    fast24_N1: TMenuItem;
    fast24_N2: TMenuItem;
    fast24_N3: TMenuItem;
		sg_counselColumn66: TcxGridDBColumn;
    cxViewCounselTodayColumn20: TcxGridDBColumn;
    sg_xlsColumn2: TcxGridDBColumn;
    cxTCOrderState: TcxTabControl;
		pm_Counsel: TPopupMenu;
    pm_Cancel: TMenuItem;
    pm_Panelty: TMenuItem;
    pm_Panelty_reservation: TMenuItem;
    pm_CanReAcc: TMenuItem;
    pm_CanReRes: TMenuItem;
    pm_CanNOCX_CUST: TMenuItem;
    pm_ReAccept: TMenuItem;
    pm_complete: TMenuItem;
		pm_reservation: TMenuItem;
    N18: TMenuItem;
    pm_R_termination: TMenuItem;
		pm_Add_Insert: TMenuItem;
    pm_share: TMenuItem;
    mniOrderToAsk: TMenuItem;
    N17: TMenuItem;
    N20: TMenuItem;
    mniSepCard: TMenuItem;
    mniCardReq: TMenuItem;
    mniCardHistory: TMenuItem;
    N4: TMenuItem;
    pm_Edit: TMenuItem;
    pm_Recon: TMenuItem;
    pm_smsRecon: TMenuItem;
    pm_NearRecon: TMenuItem;
    N42: TMenuItem;
    pm_BaeSMS: TMenuItem;
    pm_BoHumNo: TMenuItem;
    pm_ReconSMS: TMenuItem;
    pm_SMS: TMenuItem;
    N14: TMenuItem;
    NOCX_WOR: TMenuItem;
    mniWORCallingHP: TMenuItem;
		mniWORCallingPDA: TMenuItem;
    NOCX_CUST: TMenuItem;
    N15: TMenuItem;
    N5: TMenuItem;
    NOCX_BLOCK: TMenuItem;
    N3: TMenuItem;
    N44: TMenuItem;
    N12: TMenuItem;
    pm_AceptInfo: TMenuItem;
    pm_Excel: TMenuItem;
		N37: TMenuItem;
    N38: TMenuItem;
    N9: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
		NOCX1: TMenuItem;
		N8: TMenuItem;
    pm_Reset: TMenuItem;
    pm_InsungCallPass: TMenuItem;
    pm_Font: TMenuItem;
    pm_TitleView: TMenuItem;
    pnlCenter: TPanel;
    btnListMap: TcxButton;
		cxSplitter1: TcxSplitter;
    pnlMap: TPanel;
    N21: TMenuItem;
    sg_counselColumn67: TcxGridDBColumn;
    cxViewCounselTodayColumn21: TcxGridDBColumn;
    Label3: TcxLabel;
    Label6: TcxLabel;
		cxButton1: TcxButton;
    sg_counselColumn68: TcxGridDBColumn;
    cxViewCounselTodayColumn22: TcxGridDBColumn;
    N22: TMenuItem;
    gbSearchView: TcxGroupBox;
    Shape2: TShape;
    cb_ManualBaecha: TcxButton;
    cb_MyCall: TcxButton;
    cb_Owner: TcxButton;
    cb_MyDriver: TcxButton;
    cb_All: TcxButton;
    btnSearchSEL: TcxButton;
    grpSetSearchSEL: TcxGroupBox;
    cbSSEL5: TcxCheckBox;
    cbSSEL1: TcxCheckBox;
    cbSSEL2: TcxCheckBox;
		cbSSEL3: TcxCheckBox;
    cbSSEL4: TcxCheckBox;
    cbSSEL6: TcxCheckBox;
    cbSSEL7: TcxCheckBox;
    cbSSEL8: TcxCheckBox;
    btnSSELClose: TcxButton;
    cbSSEL9: TcxCheckBox;
    cbSSEL10: TcxCheckBox;
		cxChkBC1: TcxButton;
    cxChkBC2: TcxButton;
		cxChkBC3: TcxButton;
    Edit4: TcxTextEdit;
    cb_branch_Name2: TcxComboBox;
    cxLblJaSabunView: TcxLabel;
    BtnRSize: TcxButton;
    BtnLSize: TcxButton;
    lbl_JONSrc_Alert1: TcxLabel;
    cxButton5: TcxButton;
    tmrAddSnd: TTimer;
    tmrDelSnd: TTimer;
    sg_counselColumn69: TcxGridDBColumn;
    sg_counselColumn70: TcxGridDBColumn;
    cxViewCounselTodayColumn23: TcxGridDBColumn;
		cxViewCounselTodayColumn24: TcxGridDBColumn;
    PnlHelp: TPanel;
    Lbl_Hint: TLabel;
    sg_counselColumn71: TcxGridDBColumn;
    cxViewCounselTodayColumn25: TcxGridDBColumn;
    sg_counselColumn72: TcxGridDBColumn;
    cxViewCounselTodayColumn26: TcxGridDBColumn;
    sg_xlsColumn3: TcxGridDBColumn;
    sg_xlsColumn4: TcxGridDBColumn;
    pm_kakaoLine: TMenuItem;
    pm_kakao: TMenuItem;
    AI1: TMenuItem;
    pnl_AIList: TPanel;
    cxGrid2: TcxGrid;
    cxGridAIView: TcxGridDBTableView;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    pnl_KakaoList: TPanel;
    Panel4: TPanel;
		Shape4: TShape;
    cb_Option: TcxComboBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    lblSosokName: TcxLabel;
    cxDtStart: TcxDateEdit;
    cxDtEnd: TcxDateEdit;
    cxLabel6: TcxLabel;
    edtDriveNo: TcxTextEdit;
		cxLabel14: TcxLabel;
    btnSearch_Kakao: TcxButton;
    btnExcelA4: TcxButton;
		btn_KakaoList: TcxButton;
    GridKakaoList: TcxGrid;
    GridKakaoListView: TcxGridDBTableView;
    GridKakaoListViewColumn1: TcxGridDBColumn;
    GridKakaoListViewColumn2: TcxGridDBColumn;
    GridKakaoListViewColumn3: TcxGridDBColumn;
    GridKakaoListViewColumn4: TcxGridDBColumn;
    GridKakaoListViewColumn21: TcxGridDBColumn;
    GridKakaoListViewColumn22: TcxGridDBColumn;
    GridKakaoListViewColumn23: TcxGridDBColumn;
    GridKakaoListViewColumn5: TcxGridDBColumn;
    GridKakaoListViewColumn6: TcxGridDBColumn;
    GridKakaoListViewColumn7: TcxGridDBColumn;
    GridKakaoListViewColumn8: TcxGridDBColumn;
    GridKakaoListViewColumn9: TcxGridDBColumn;
    GridKakaoListViewColumn10: TcxGridDBColumn;
    GridKakaoListViewColumn11: TcxGridDBColumn;
    GridKakaoListViewColumn12: TcxGridDBColumn;
    GridKakaoListViewColumn13: TcxGridDBColumn;
    GridKakaoListViewColumn14: TcxGridDBColumn;
    GridKakaoListViewColumn15: TcxGridDBColumn;
    GridKakaoListViewColumn16: TcxGridDBColumn;
    GridKakaoListViewColumn17: TcxGridDBColumn;
    GridKakaoListViewColumn18: TcxGridDBColumn;
    GridKakaoListViewColumn19: TcxGridDBColumn;
		GridKakaoListViewColumn20: TcxGridDBColumn;
    GridKakaoListLevel: TcxGridLevel;
		btn_LogOut: TcxButton;
    lbFastKey8: TcxLabel;
    lbFastKey11: TcxLabel;
    lbFastKey12: TcxLabel;
    lbFastKey13: TcxLabel;
    lbFastKey14: TcxLabel;
    lbFastKey15: TcxLabel;
    lbFastKey16: TcxLabel;
    lbFastKey17: TcxLabel;
    lbFastKey18: TcxLabel;
    lbFastKey9: TcxLabel;
    lbFastKey10: TcxLabel;
    lbFastKey20: TcxLabel;
    lbFastKey19: TcxLabel;
		tm_Flash: TTimer;
    pm_FastSearch25: TPopupMenu;
    fast25_N1: TMenuItem;
    fast25_N2: TMenuItem;
    sg_counselColumn73: TcxGridDBColumn;
    cxViewCounselTodayColumn27: TcxGridDBColumn;
    sg_xlsColumn5: TcxGridDBColumn;
    cxChkBC4: TcxButton;
    cbSSEL11: TcxCheckBox;
    sg_xlsColumn6: TcxGridDBColumn;
    sg_counselColumn74: TcxGridDBColumn;
    cxViewCounselTodayColumn28: TcxGridDBColumn;
    pm_AIOBNowRun: TMenuItem;
    pm_Expense: TMenuItem;
    N24: TMenuItem;
    sg_counselColumn75: TcxGridDBColumn;
    sg_xlsColumn7: TcxGridDBColumn;
    cxViewCounselTodayColumn29: TcxGridDBColumn;
    btn_Jon01BasicPostion: TcxButton;
    cxLabel3: TcxLabel;
    lbFastKey1: TcxLabel;
    edtFastKey1: TcxTextEdit;
    lbFastKey2: TcxLabel;
    edtFastKey2: TcxTextEdit;
    lbFastKey3: TcxLabel;
		edtFastKey3: TcxTextEdit;
    lbFastKey4: TcxLabel;
    edtFastKey4: TcxTextEdit;
    lbFastKey5: TcxLabel;
    edtFastKey5: TcxTextEdit;
    lbFastKey6: TcxLabel;
    edtFastKey6: TcxTextEdit;
    lbFastKey7: TcxLabel;
    edtFastKey7: TcxTextEdit;
    chk_MultiSearch: TcxCheckBox;
    chk_OptionAll: TcxCheckBox;
    cb_10: TcxCheckBox;
    PnlAuto: TPanel;
    BtnAutoRe: TAdvGlowButton;
    Image1: TImage;
    btnAppSch: TcxButton;
    cb_0D: TAdvGlowButton;
    cx_0D: TcxLabel;
    cxViewCounselTodayColumn30: TcxGridDBColumn;
    cxViewCounselTodayColumn31: TcxGridDBColumn;
    sg_counselColumn76: TcxGridDBColumn;
    sg_counselColumn77: TcxGridDBColumn;
    sg_xlsColumn8: TcxGridDBColumn;
    sg_xlsORGDay: TcxGridDBColumn;
    fast17_N1: TMenuItem;
    fast17_N5: TMenuItem;
    fast17_N7: TMenuItem;
    fast17_N8: TMenuItem;
    fast17_N9: TMenuItem;
    lb_Common11: TLabel;
    cxViewCounselTodayColumn32: TcxGridDBColumn;
    sg_counselColumn78: TcxGridDBColumn;
    sg_xlsColumn9: TcxGridDBColumn;
    chkJon_Multi_Modify: TcxCheckBox;
    sg_counselColumn79: TcxGridDBColumn;
    sg_counselColumn80: TcxGridDBColumn;
    sg_counselColumn81: TcxGridDBColumn;
    sg_counselColumn82: TcxGridDBColumn;
    sg_counselColumn83: TcxGridDBColumn;
		cxViewCounselTodayColumn33: TcxGridDBColumn;
    cxViewCounselTodayColumn34: TcxGridDBColumn;
    cxViewCounselTodayColumn35: TcxGridDBColumn;
    cxViewCounselTodayColumn36: TcxGridDBColumn;
		cxViewCounselTodayColumn37: TcxGridDBColumn;
    fast15_N7: TMenuItem;
    cb_10Set: TcxButton;
    btnDocking: TcxButton;
    btnFloating: TcxButton;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape11: TShape;
    Shape13: TShape;
    grpSetPanelty: TcxGroupBox;
    Shape9: TShape;
    RadioGroup1: TcxRadioGroup;
    ed_penalCharge: TEdit;
    ed_penalTime: TEdit;
    rcb_sms: TcxCheckBox;
    RbButton2: TcxButton;
    RbButton6: TcxButton;
    Label28: TcxLabel;
    Label29: TcxLabel;
    grpSetcancel_charge: TcxGroupBox;
    Shape10: TShape;
    ed_cancel_charge: TcxCurrencyEdit;
    rcb_sms2: TcxCheckBox;
    RbButton7: TcxButton;
    RbButton8: TcxButton;
    Label30: TcxLabel;
    Label35: TcxLabel;
    Label36: TcxLabel;
    grpSetCallPass: TcxGroupBox;
    Shape8: TShape;
    edtCPLogiKeyNum: TEdit;
    btnPassToCallMart: TcxButton;
    btnPassToLogi: TcxButton;
    cxButton7: TcxButton;
		Label4: TcxLabel;
    Label5: TcxLabel;
    lbl3: TcxLabel;
    cbbCPOrderSt: TcxComboBox;
    Shape14: TShape;
    cbbCPLogiType: TcxComboBox;
    grpSetCallBellList: TcxGroupBox;
    cxGrid6: TcxGrid;
    CallBellView: TcxGridDBTableView;
    CallBellViewColumn01: TcxGridDBColumn;
    CallBellViewColumn02: TcxGridDBColumn;
    CallBellViewColumn03: TcxGridDBColumn;
    CallBellViewColumn04: TcxGridDBColumn;
    CallBellViewColumn05: TcxGridDBColumn;
    CallBellViewColumn06: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Label7: TcxLabel;
    N23: TMenuItem;
    N13: TMenuItem;
    sg_counselColumn84: TcxGridDBColumn;
    sg_counselColumn85: TcxGridDBColumn;
    cxViewCounselTodayColumn38: TcxGridDBColumn;
    cxViewCounselTodayColumn39: TcxGridDBColumn;
    sg_counselColumn86: TcxGridDBColumn;
    cxViewCounselTodayColumn40: TcxGridDBColumn;
    sg_counselColumn87: TcxGridDBColumn;
    sg_counselColumn88: TcxGridDBColumn;
    cxImage24: TcxImageList;
    cxViewCounselTodayColumn41: TcxGridDBColumn;
    cxViewCounselTodayColumn42: TcxGridDBColumn;
    sg_counselColumn89: TcxGridDBColumn;
    cxViewCounselTodayColumn43: TcxGridDBColumn;
    pm_WkCallPass: TMenuItem;
    sg_counselColumn90: TcxGridDBColumn;
    cxViewCounselTodayColumn44: TcxGridDBColumn;
    sg_counselColumn91: TcxGridDBColumn;
    cxViewCounselTodayColumn45: TcxGridDBColumn;
    btnMySqlPoiSync: TcxButton;
    tmrSQLSync: TTimer;
		N10: TMenuItem;
    pmCallChange: TMenuItem;
    pmNoShow: TMenuItem;
    grpSetNoShow: TcxGroupBox;
    cEdtNoShowAmt: TcxCurrencyEdit;
    btnNoShowExit: TcxButton;
    btnNoShowOk: TcxButton;
    cxLabel7: TcxLabel;
    Shape3: TShape;
    cxLabel8: TcxLabel;
    sg_counselColumn92: TcxGridDBColumn;
    cxViewCounselTodayColumn46: TcxGridDBColumn;
    sg_counselColumn93: TcxGridDBColumn;
    cxViewCounselTodayColumn47: TcxGridDBColumn;
    sg_xlsColumn10: TcxGridDBColumn;
    chk_Mileage: TcxCheckBox;
    chk_CMPSupportY: TcxCheckBox;
    chk_CMPSupportN: TcxCheckBox;
    pm_FastSearch29: TPopupMenu;
    fast29_N1: TMenuItem;
    fast29_N2: TMenuItem;
    N_CMPSupportLine: TMenuItem;
    N_CMPSupportAMT1: TMenuItem;
    N_CMPSupportAMT2: TMenuItem;
    N_CMPSupportAMT3: TMenuItem;
    N_CMPSupportClear: TMenuItem;
    sg_counselColumn94: TcxGridDBColumn;
    sg_counselColumn95: TcxGridDBColumn;
    sg_counselColumn96: TcxGridDBColumn;
    sg_counselColumn97: TcxGridDBColumn;
    cxViewCounselTodayColumn48: TcxGridDBColumn;
    cxViewCounselTodayColumn49: TcxGridDBColumn;
    cxViewCounselTodayColumn50: TcxGridDBColumn;
    cxViewCounselTodayColumn51: TcxGridDBColumn;
    sg_xlsColumn11: TcxGridDBColumn;
    sg_xlsColumn12: TcxGridDBColumn;
    sg_xlsColumn13: TcxGridDBColumn;
    sg_xlsColumn14: TcxGridDBColumn;
    cxGrid11: TcxGrid;
		sg_xlsView: TcxGridDBTableView;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
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
    cxGridDBColumn87: TcxGridDBColumn;
    cxGridDBColumn88: TcxGridDBColumn;
    cxGridDBColumn89: TcxGridDBColumn;
    cxGridDBColumn90: TcxGridDBColumn;
    cxGridDBColumn91: TcxGridDBColumn;
    cxGridDBColumn92: TcxGridDBColumn;
    cxGridDBColumn93: TcxGridDBColumn;
    cxGridDBColumn94: TcxGridDBColumn;
    cxGridDBColumn95: TcxGridDBColumn;
    cxGridDBColumn96: TcxGridDBColumn;
		cxGridDBColumn97: TcxGridDBColumn;
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
    cxGridDBColumn147: TcxGridDBColumn;
    cxGridDBColumn148: TcxGridDBColumn;
    cxGridDBColumn149: TcxGridDBColumn;
    cxGridDBColumn150: TcxGridDBColumn;
    cxGridDBColumn151: TcxGridDBColumn;
    cxGridDBColumn152: TcxGridDBColumn;
    cxGridDBColumn153: TcxGridDBColumn;
    cxGridDBColumn154: TcxGridDBColumn;
    cxGridDBColumn155: TcxGridDBColumn;
    cxGridDBColumn156: TcxGridDBColumn;
    cxGridDBColumn157: TcxGridDBColumn;
    cxGridDBColumn158: TcxGridDBColumn;
		cxGridLevel3: TcxGridLevel;
    sg_xlsViewColumn1: TcxGridDBColumn;
    sg_xlsViewColumn2: TcxGridDBColumn;
    sg_xlsViewColumn3: TcxGridDBColumn;
    sg_xlsViewColumn4: TcxGridDBColumn;
    sg_xlsViewColumn5: TcxGridDBColumn;
    sg_xlsViewColumn6: TcxGridDBColumn;
    sg_xlsViewColumn7: TcxGridDBColumn;
    sg_xlsViewColumn8: TcxGridDBColumn;
    sg_xlsViewColumn9: TcxGridDBColumn;
		sg_xlsViewColumn10: TcxGridDBColumn;
    sg_xlsViewColumn11: TcxGridDBColumn;
    sg_xlsViewColumn12: TcxGridDBColumn;
    sg_counselColumn98: TcxGridDBColumn;
    cxViewCounselTodayColumn52: TcxGridDBColumn;
    pm_ReAcc: TMenuItem;
    sg_counselColumn99: TcxGridDBColumn;
		cxViewCounselTodayColumn53: TcxGridDBColumn;
    sg_counselColumn100: TcxGridDBColumn;
    sg_counselColumn101: TcxGridDBColumn;
    cxViewCounselTodayColumn54: TcxGridDBColumn;
    cxViewCounselTodayColumn55: TcxGridDBColumn;
    N25: TMenuItem;
    sg_counselColumn102: TcxGridDBColumn;
    cxViewCounselTodayColumn56: TcxGridDBColumn;
    sg_xlsColumn18: TcxGridDBColumn;
    cxGridDBColumn161: TcxGridDBColumn;
    cxGridDBColumn163: TcxGridDBColumn;
    cxGridDBColumn162: TcxGridDBColumn;
    sg_xlsColumn16: TcxGridDBColumn;
    sg_xlsColumn15: TcxGridDBColumn;
    sg_xlsColumn17: TcxGridDBColumn;
    cxGridDBColumn160: TcxGridDBColumn;
    cxGridDBColumn159: TcxGridDBColumn;
    pnl_AccStatus: TcxGroupBox;
    Shape176: TShape;
    Shape177: TShape;
    Gauge1: TAdvProgressBar;
    cxLabel167: TcxLabel;
    cxLabel174: TcxLabel;
    lb_ACnt: TcxLabel;
    lb_FCnt: TcxLabel;
    mmo_AccStatus: TcxMemo;
    btn_AccStatusClose: TcxButton;
    pmCallByInsureFree: TMenuItem;
    sg_counselColumn103: TcxGridDBColumn;
    cxGridDBColumn164: TcxGridDBColumn;
    cxViewCounselTodayColumn57: TcxGridDBColumn;
    sg_xlsColumn19: TcxGridDBColumn;
		sg_counselColumn104: TcxGridDBColumn;
    cxViewCounselTodayColumn58: TcxGridDBColumn;
    cxGridDBColumn165: TcxGridDBColumn;
    cxViewCounselTodayColumn59: TcxGridDBColumn;
    sg_counselColumn105: TcxGridDBColumn;
    cxGridDBColumn166: TcxGridDBColumn;
    btn_CPChk: TcxButton;
    cxViewCounselTodayColumn60: TcxGridDBColumn;
    sg_counselColumn106: TcxGridDBColumn;
    cxGridDBColumn167: TcxGridDBColumn;
    sg_xlsViewORGDay: TcxGridDBColumn;
    sg_xlsViewColumn13: TcxGridDBColumn;
    sg_counselColumn107: TcxGridDBColumn;
    cxViewCounselTodayColumn61: TcxGridDBColumn;
		procedure BtnYmdCloseClick(Sender: TObject);
		procedure btnSetDateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure cxButton4MouseDown(Sender: TObject; Button: TMouseButton;
			Shift: TShiftState; X, Y: Integer);
    procedure BtnSEYmdMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnOptionClick(Sender: TObject);
    procedure rb_AcceptClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rb_chk_AllClick(Sender: TObject);
    procedure cb_00Click(Sender: TObject);
    procedure pm_CancelClick(Sender: TObject);
    procedure rb_SearchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dedt_SdateExit(Sender: TObject);
		procedure sg_counselMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sg_counselCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure sg_counselStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
		procedure sg_counselCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure pm_EditClick(Sender: TObject);
    procedure cxBtnInitialSearchClick(Sender: TObject);
		procedure edtFastKey1Click(Sender: TObject);
		procedure edtFastKey1Enter(Sender: TObject);
		procedure edtFastKey1Exit(Sender: TObject);
    procedure sg_counselColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure sg_counselColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure sg_counselKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_brNameClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
		procedure RbButton2Click(Sender: TObject);
    procedure RbButton6Click(Sender: TObject);
    procedure RbButton7Click(Sender: TObject);
    procedure RbButton8Click(Sender: TObject);
    procedure pm_CounselPopup(Sender: TObject);
		function _IsOverTime(ATime: string; ASec: Integer): Boolean;
    procedure pm_PaneltyClick(Sender: TObject);
    procedure pm_CanReAccClick(Sender: TObject);
    procedure pm_CanReResClick(Sender: TObject);
    procedure pm_CanNOCX_CUSTClick(Sender: TObject);
    procedure pm_ReAcceptClick(Sender: TObject);
    procedure pm_completeClick(Sender: TObject);
    procedure pm_reservationClick(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure pm_R_terminationClick(Sender: TObject);
		procedure pm_Add_InsertClick(Sender: TObject);
    procedure pm_shareClick(Sender: TObject);
    procedure mniOrderToAskClick(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure mniCardReqClick(Sender: TObject);
    procedure mniCardHistoryClick(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure pm_BaeSMSClick(Sender: TObject);
    procedure pm_ReconSMSClick(Sender: TObject);
    procedure pm_SMSClick(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure mniWORCallingHPClick(Sender: TObject);
		procedure mniWORCallingPDAClick(Sender: TObject);
		procedure N15Click(Sender: TObject);
		procedure NOCX_BLOCKClick(Sender: TObject);
		procedure N44Click(Sender: TObject);
		procedure N12Click(Sender: TObject);
    procedure pm_AceptInfoClick(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
		procedure pm_ResetClick(Sender: TObject);
    procedure pm_InsungCallPassClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
		procedure edtFastKey1KeyPress(Sender: TObject; var Key: Char);
    procedure sg_counselColumn1GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure sg_counselColumn6GetDisplayText(Sender: TcxCustomGridTableItem;
			ARecord: TcxCustomGridRecord; var AText: string);
    procedure sg_counselColumn11CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tmr_hintTimer(Sender: TObject);
    procedure Grd2MouseLeave(Sender: TObject);
    procedure tmr_disTimer(Sender: TObject);
    procedure pmm_searchClick(Sender: TObject);
		procedure tmr_searchTimer(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure btnCPLogiEnvSaveClick(Sender: TObject);
    procedure grdCallPassLogiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPassToCallMartClick(Sender: TObject);
    procedure btnPassToLogiClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cbbCPOrderStChange(Sender: TObject);
    procedure PnlOrderBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn3Click(Sender: TObject);
    procedure sg_counselCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
			var ADone: Boolean);
    procedure NOCX_CUSTClick(Sender: TObject);
    procedure cxLblJaSabunViewClick(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxGroupBox6Resize(Sender: TObject);
		procedure btnDockingClick(Sender: TObject);
		procedure tmPingTimer(Sender: TObject);
    procedure TCPClientConnected(Sender: TObject);
    procedure TCPClientDisconnected(Sender: TObject);
    procedure btnFloatingClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N16Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure sg_counselDataControllerSortingChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGroupBox5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grpSetCallPassMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_sms_conClick(Sender: TObject);
		procedure btn1Click(Sender: TObject);
    procedure fast14_N1Click(Sender: TObject);
    procedure fast15_N1Click(Sender: TObject);
    procedure pnl_MultiSearchResize(Sender: TObject);
		procedure pm_Panelty_reservationClick(Sender: TObject);
    procedure cb_AllClick(Sender: TObject);
    procedure fast17_N2Click(Sender: TObject);
    procedure btnLocalCancelClick(Sender: TObject);
    procedure cb_CityClick(Sender: TObject);
    procedure btnLocalSelectClick(Sender: TObject);
    procedure pm_BoHumNoClick(Sender: TObject);
    procedure fast22_N1Click(Sender: TObject);
    procedure btnODtSelectClick(Sender: TObject);
    procedure btnODtCancelClick(Sender: TObject);
		procedure btnODtAllClick(Sender: TObject);
		procedure N20Click(Sender: TObject);
    procedure fast24_N1Click(Sender: TObject);
    procedure cxTCOrderStateChange(Sender: TObject);
    procedure pm_FontClick(Sender: TObject);
    procedure pm_TitleViewClick(Sender: TObject);
    procedure btnListMapClick(Sender: TObject);
		procedure cb_WardPropertiesCloseUp(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure CallBellViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure N22Click(Sender: TObject);
    procedure sg_counselColumn5CustomDrawHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure btnSSELCloseClick(Sender: TObject);
    procedure btnSearchSELClick(Sender: TObject);
    procedure cbSSEL1Click(Sender: TObject);
    procedure BtnRSizeClick(Sender: TObject);
    procedure BtnLSizeClick(Sender: TObject);
    procedure pnlMapResize(Sender: TObject);
    procedure sg_counselColumn11CustomDrawHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
		procedure sg_counselColumn12CustomDrawHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure cbSSEL10Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxBubinViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
    procedure cbokeyNumberPropertiesChange(Sender: TObject);
    procedure btnBubInWinCloseClick(Sender: TObject);
		procedure edtFastKey1PropertiesChange(Sender: TObject);
    procedure edtFastKey1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sg_xlsStylesGetContentStyle(Sender: TcxCustomGridTableView;
			ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure tmrAddSndTimer(Sender: TObject);
    procedure tmrDelSndTimer(Sender: TObject);
    procedure cb_10SetClick(Sender: TObject);
    procedure sg_counselMouseLeave(Sender: TObject);
    procedure pm_kakaoClick(Sender: TObject);
    procedure AI1Click(Sender: TObject);
    procedure cxGridAIViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_KakaoListClick(Sender: TObject);
    procedure btnSearch_KakaoClick(Sender: TObject);
    procedure btnExcelA4Click(Sender: TObject);
    procedure cb_OptionPropertiesChange(Sender: TObject);
    procedure edtDriveNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDriveNoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_ManualBaechaClick(Sender: TObject);
    procedure cb_branch_Name2Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure chk_MultiSearchClick(Sender: TObject);
    procedure cb_OptionKeyDown(Sender: TObject; var Key: Word;
			Shift: TShiftState);
		procedure cxTCOrderStateClick(Sender: TObject);
    procedure GridKakaoListViewDataControllerSortingChanged(Sender: TObject);
		procedure GridKakaoListViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btn_LogOutClick(Sender: TObject);
    procedure cxViewCounselTodayGetCellHeight(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
    procedure chk_MultiSearchPropertiesChange(Sender: TObject);
    procedure chk_MultiSearchMouseLeave(Sender: TObject);
    procedure chk_MultiSearchMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbFastKey1Click(Sender: TObject);
		procedure tm_FlashTimer(Sender: TObject);
		procedure fast25_N1Click(Sender: TObject);
		procedure pm_AIOBNowRunClick(Sender: TObject);
    procedure pm_ExpenseClick(Sender: TObject);
    procedure btn_Jon01BasicPostionClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxImage1Click(Sender: TObject);
    procedure cb_10Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure btnAppSchClick(Sender: TObject);
    procedure chkJon_Multi_ModifyClick(Sender: TObject);
    procedure grpSetCallBellListMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure N10Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure sg_counselColumn88CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
		procedure sg_counselColumn87CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure pm_WkCallPassClick(Sender: TObject);
    procedure lb_Title_ListClick(Sender: TObject);
    procedure btnMySqlPoiSyncClick(Sender: TObject);
    procedure tmrSQLSyncTimer(Sender: TObject);
    procedure pmCallChangeClick(Sender: TObject);
    procedure pmNoShowClick(Sender: TObject);
    procedure btnNoShowExitClick(Sender: TObject);
		procedure btnNoShowOkClick(Sender: TObject);
    procedure grpSetNoShowMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure cEdtNoShowAmtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grpSetNoShowMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure N_CMPSupportAMT1Click(Sender: TObject);
    procedure chk_MileagePropertiesChange(Sender: TObject);
    procedure chk_CMPSupportYPropertiesChange(Sender: TObject);
    procedure chk_CMPSupportNPropertiesChange(Sender: TObject);
    procedure fast29_N1Click(Sender: TObject);
    procedure sg_counselGetCellHeight(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
    procedure pm_ReAccClick(Sender: TObject);
    procedure N25Click(Sender: TObject);
		procedure btn_AccStatusCloseClick(Sender: TObject);
    procedure pmCallByInsureFreeClick(Sender: TObject);
    procedure cxChkBC1Click(Sender: TObject);
    procedure btn_CPChkClick(Sender: TObject);
	private
		{ Private declarations }

    FSendPingCount03, FSendOTPCount03 : Integer;
    FReConnectCheck03 : Boolean;
    FReconnectCount03 : Integer;
    FSENDOTP03, FRECVOTP03 : AnsiString;

    sChCallMsg : String;
//    iAutoFirstChk : Integer;

		giMapLastClickCol : Integer;
    giMapLastClickSlip : String;

    iFirstGridHighlight, iParCnt : Integer;

    JFOnSessionConnect: TJOnCMNSessionConnect;
    JFOnSessionDisConnect: TJOnCMNSessionDisConnect;
    JFOnCMNPacketPage: TJOnCMNPacketPage;

    TsGridHighLigth : TStringList;
    bGridHighLigth : Boolean;

    MultiCallNumber : TMultiCallNumber;
    bMultiCallNumber : Boolean;

		TsCallBellOrder : TStringList;
		TsAIOrder : TStringList;

		FCallPassLogi: TCallPassLogi;

		FCallBellInfo, FAIInfo : TCallBellInfo;

    FSearchCtrl: TObject;
		// 엑셀조회기간제한을 위해 임시변수에 저장
    inp_date: string;

		gsSpeedSchHint, gsSpeedSchText : String;
    gsOverTime, gsOrderTime : Integer;

		FBubInSelectedCode, FBubInSelectedName : String;

    FStatusView: Boolean;
		iFRCnt : integer;
		lg_swhere, lg_status, lg_status2, lg_BRLISTVIEW : array[0..JON03_MAX_CNT-1] of String;
		Slip_List : array [0..JON03_MAX_CNT-1] of TStringLIst;
		gaStCnt: array[0..14] of int64; // 상태별 카운트 저장 배열    //12카드금액 13수수료  14운행
		FExcelDownLog: string;    // 검색시 엑셀다운로그를 위해 검색조건을 기록

		AAutoSearch_Flag : Boolean;
		AAutoSearch_Time : integer;

		AutoFlag  : Boolean; //자동검색 시 검색 버튼 안눌임  2012.07.19 KHS
		FSearchEnable : Boolean; //검색버튼 활성화 여부 2017.03.10 KHS
    Jon03PacketData: Array of Byte;
    BRHeader, BRBody: TIdBytes;

		bFirstSreach : Boolean;  //ALastUpdate가 없으면 True, 있으면 False;

		FBubinTextEdit : TcxTextEdit;
		FBubinLabel : TcxLabel;

		gTmp, gTmp_HD, gTmp_BR, gTmp_Slip : String; //전역으로 사용할 임시변수
		gBrCharge, gBrSumCharge : Double; //전역으로 사용할 임시변수
		AIndex : integer;

		bFamilySearch : Boolean; //패밀리 전체 기간검색여부 True : 기간검색, False : 당일검색
    bFamilySearchAlarm : Boolean;  //패밀리 과거 기간검색 알림 메시지 처음 한번 표시 여부

		gStandard_Time : string; //조회기준시간
		bProcOK : Boolean; //연속전문시 이전전문 처리 상태 T정상, F실패

    giReAccNo : Integer;  // 배차지연(재접수) 대기+대기해제 관련,  0.X, 1.대기, 2.대기해제
		
		gbJon32RunCheck : Boolean; //기사정보조회 중 다른 조회 못하도록 적용 20210916 KHS

    scb_BrNo_m5000 : TStringList;//m5000-3006 사용자 권한지사리스트 20211015 KHS 정회귀팀장요청
    gsM5006AllBrNo, gsM5006OwnerBrNo : string;  //m5000-3006 사용자의 조회가능한 전체지사 리스트
		procedure OnPage(ANowPage, AFinalPage: string);
    procedure ShowPopupCard(const AShowHistory: Boolean = False);
		procedure proc_check(iType : Integer);
    // 그리드 이중화(전체목록, 당일목록
		procedure SetCurrentView(AView: TcxGridDBTableView);
    function GetCurrentGrid: TcxGrid;
    function Func_CheckCondition(i: Integer = 0): string;
    // 오더정보 조회
		procedure RequestOrderList(AView: TcxGridDBTableView; AClientKye, AStatus, ALastUpdate, ABrNo, ARouteMS,
      AOption, AKeyWord, AFromCity, AFromWard, AFromDate, AToDate, AMyCall, AMyDriver, AOwnerCall, AManual, AAutoSec : string);
    function IsOverTimeSec(ASourceTime: string; ASec: Integer): Boolean;
		procedure proc_lap_time( bSort : Boolean = False );
		procedure proc_lap_timeExcel;

		function func_lap_time(in_date, In_Time: string; iType: Integer = 0; iGubun: Integer = 0 ): string;
		function func_lap_timeDuration(in_date, In_Time: string; iType: Integer = 0; iGubun: Integer = 0 ): string;

		function IsOverTime(ASourceTime: string; AMin: Integer): Boolean;
		procedure DispOrderCount(ATotal: Integer; Var AValue: array of Int64);

    // 수신거부 기능
		procedure RunCustTelBlock(ACustTel, ACustName, ACounselID, ACounselName: string);
    function CheckCallPass(ATitle: string): Boolean;
    procedure RunPassToCallMart(AOrderSeq, ATel, AStatus: string);
    procedure proc_ReAcceptRead(ss_XML: string);

    procedure proc_config;
    function GetOverTimeMin(ASourceTime: string): Integer;
    // 선택 오더 셋팅
		procedure proc_Order_Set(AView: TcxGridDBTableView);
    procedure proc_Change_Title(AView: TcxGridDBTableView);

    // 접수현황 그리드 선택( sValue : 선택셀 값, Acol, ARow : 콜, Row)
    procedure proc_Grid_Hint(sValue: string; ACol, ARow: Integer);
    function fGetGridHint(sValue: string; ACol, ARow: Integer) : String;
		 //접수현황 힌트
    function func_Grid_hint(ACol, ARow: Integer): string;

    function IsRunMenuShortCut(AMenu: TMenuItem): Boolean;
    function IsRunMenuCancel: Boolean;
    function IsRunMenuReady: Boolean;
    function IsRunMenuReadyComplete: Boolean;
    function IsRunMenuAdd: Boolean;
    function IsRunMenuShared: Boolean;
    function IsRunMenuOfficeOrder: Boolean;
    function IsRunMenuSMSOrder: Boolean;
    procedure ClearOrderInfo;

    procedure proc_excel_NoSms;
    procedure proc_excel;
		procedure proc_excel_simple;

		function func_ExcelInsertView(ls_XML: string): Boolean; //상세내역 리스트와 동일하게 표현
		function func_ExcelInsert(ls_XML: string): Boolean;     //상세내역 기본 출력
		procedure CallPassToInsung(ATel: string);

    function GetKeyTypeValue(ACode: string): string;
		function GetKeyTypeCode(AValue: string): string;
		procedure GetKeyTypeCodeList(Var aCode, aWord : String);
		procedure GetKeyTypeCodeSingle(var aCode, aWord: String);
    procedure GetKeyTypeCodeSingleEnter(aCode : String; Var aWord : String);

    function J03SendSock(const ASendData: string; var slList: TStringList;
      var AErrorCode: Integer; bOptCd: Boolean;
      ATimeOut: Integer = 15000 { 3000 } ): Boolean;
    function J03DoReConnect : Boolean;
		function J03SockConnect(ATimeOut: Integer = 9000): Boolean;
    procedure J03GetOTPCode(AXML: String);
		function J03func_login : Boolean;
    function fGetBaechaTypeName(BTCode: String): String;
    procedure LabelShowHint(X, Y: Integer; sHint: string);
    procedure ReSize_edtFastKey;
    function func_lap_timeOk(in_date, In_Time: string; iMin: Integer): Boolean;
		procedure SetOverTimeFilter;
    procedure DispFilterCount(ATotal: Integer);
    procedure SetOrderTimeFilter;
    procedure SetOrderStateFilter;
    procedure SetMakeOrderState;
    function IsOtherBranchCall(Sender : TObject): Boolean;
    function IsMenuOpen(Sender: TObject): Boolean;

    property OnJSessionConnect: TJOnCMNSessionConnect read JFOnSessionConnect write JFOnSessionConnect;
    property OnJSessionDisConnect: TJOnCMNSessionDisConnect read JFOnSessionDisConnect write JFOnSessionDisConnect;
    property OnJCMNPacketPage: TJOnCMNPacketPage read JFOnCMNPacketPage write JFOnCMNPacketPage;
    function fGetCustName( sCustLevelSeq : String ) : String;

		procedure proc_ADDList(AGubun, ASlip, AKeyNumber, ABrNm, ACuNm, AStart, AAcc2 : string);

		procedure Proc_BubinListSearch;
    function GetBrNoFromComboValue(AValue: string): string;
		function GetKeyNumFromComboValue(AValue: string): string;
		procedure SelectBubInGrid;
    procedure pGetColumnIndex(AView: TcxGridDBTableView);

		procedure proc_KakaoList(AGubun : integer);
		function func_lap_timeSS(In_Time: string): string; //현재시간
		procedure proc_SetGridRowAdd_Blank(AView: TcxGridDBTableView; ARow : integer);
		procedure proc_MultiChStCd;//다중선택 상태변경을 위한 함수 20210901
		function func_reservation(AHdNo, ABrNo, ASlip, AStCd, ACashType, ADeposit : string; iTag, iGubun : integer):Boolean;   //iGubun : 0-재접수, 1-대기

	public
		{ Public declarations }
		dt_sysdate, dt_ServerTime, ANow, dt_Clientdate : array[0..JON03_MAX_CNT-1] of String; // 서버 시간 저장

    gsWkHp, gsCustTel : string;  // 기사 독촉문자 전송시 설정값이 없을경우 기사 핸드폰 번호 저장   2012-06-19 LYB
		gbWkGubun : Boolean;

		aiAccTitle: array[0..108] of integer; //적요 2추가 2011.12.19 KHS  앱접수 추가 2013.07.02  콜벨여부추가 20161231 KHS
																				 //기사입금액, 발주본사코드 추가 20180130 KHS
																				 //후불충전 20180731 LYB   //75번째 리콜여부 20190717 KHS //76번째 경비지급  20191011 KHS
																				 //77 기준일자 20200423 KHS   //78 운행시작시간 20200429 KHS
																				 //79 최초접수시간고정 20200514 KHS 신성현차장 요청으로 최초접수시간 형변환하여 고정값 추가
                                         //80 도착지X, 81 도착지Y, 82 후불요금, 83 카드요금, 84 마일요금  20200820
                                         //85 콜링지사, 86 콜링지사명, 87 콜링대표번호  20201103
                                         //88 고객통화, 89 기사통화                     20201113
                                         //90 콜센터2                                   20201127
                                         //91 복수콜번호                                20201217
                                         //92 취소시간                                  20201222
                                         //93 보정요금                                  20210409
																				 //94 공유여부                                  20210412
																				 //92 취소시간                                  20201222
																				 //93 보정요금                                  20210409
																				 //94 공유여부                                  20210412
																				 //95 카드승인 96 지원금 97 기타지급금 98 지원    20210701
																				 //99 시간정렬-지난시간/경과시간/배차경과 정렬을 위함 필드 20210729
																				 //100 사용자ID이름 값 유지. 메신저 채팅을 위해 필요 20210827
																				 //101 배차지연, 102 배차지연시간
																				 //103 KM공유  104 보험료무료 105 odb_wk_sabun
                                         //106 현금
                                         //107 CPCnt(콜패스 카운트- 콜패스여부)
                                         //108 거리

		gbProcSuccess : Boolean; //2단 전문 실행 성공여부(취소 후 재접수등) 20181128KHS
		
    pJON03Dock : TUNDOCKMNG;
    bJON01View : Boolean;

		AAutoSearch_Stop : Boolean;

		icheck_CT_Flag : integer; // 타사콜 체크 시 선택된 오더와 비교여부에 따라 값 구분 0: 타사콜, 1: 선택다름

		bReservationYN : Boolean;     //대기처리 메세지 박스에서 누른값   20161025KHS
		
		FCallUpsoSearchInfo : TCallUpsoSearchInfo; //콜벨업소정산에서 접수현황조회 시 사용 20170317KHS

		giSlip, giStCd, giType, giPrice, giKeyNum, giCustNm, giCustTel, giCustTel2,
		giOutBranch, giPlus, giCardPay, giCardAmt, giFees, giTime, giDuration,
		giAccTime, giAccTime2, giFirstTime, giPassTime, giFinishTime, giFinishTime2, giBaecha, giBaecha2, giPassBaecha, giCancelTime,
		giBrNo, giUpdateTime, giBigo, giBigo2, giCnt, giReceipter, giAccCenter, giCallcenter, giCallcenter2, giWkName, giWkSabun,
		giStartArea, giEndArea, giFirstIn, giStartTime, giFirstTimeFix, giCustCall, giWkCall, giSortTime, giLng, giLat, giBDTime, giBDTimeFix,
		giKmShare : Integer;

    gidxSortTime : Integer;  //지난시간/경과시간/배차경과 관련 선택항목 저장  20210729

		FMultiOrderChange : TMultiOrderChange; //접수현황 다중 선택 처리 용 20210830 KHS

    procedure proc_wk_lack_sms(sConfSlip: string);
    procedure proc_cust_smssend(sLip: string);
		function func_excel_check(sHd_No : string = ''; sBr_No : string = ''): string;
    function func_License(ss_rxxml: string): string;

    procedure proc_recieve(ls_rxxml: string);
		procedure proc_PlaySound(sFile: string);
		function func_check_CallCenter: boolean; overload;
		function func_check_CallCenter(ASLIP:string): boolean; overload;

    // 접수현황 데이터 조합
		function func_AcceptInsert(AView: TcxGridDBTableView; ss_XML: string): Boolean;

		function GetCurrentView: TcxGridDBTableView;
		procedure proc_Set_Grid; overload;
    procedure proc_Set_Grid(AView: TcxGridDBTableView); overload;
		procedure Proc_Initialization; // 프로그램 초기화 설정처리.
		procedure LoadFastFindControls;

    function func_Recieve_hint(ls_rxxml: string): string;
		procedure proc_Acc_Search(iType: Integer; sConf_Slip: string; sNum : String = ''; bAutoStop : Boolean = False);
    // 당일목록 처리
    procedure DisplayTodayOrders(AXmlData: string);
    procedure proc_UserPer;
		procedure proc_reservation(iTag : integer);
		procedure pGridSetFocus;
		procedure pSetSearchViewList;
 		function fMultiCallNumber(AView: TcxGridDBTableView): Boolean;
    procedure LoadPayMethod_FastSearch15;
		procedure InitBubInWindow( AHdNo : String );
	end;

var
	Frm_JON03: TFrm_JON03;

implementation

uses
  xe_Lib, xe_Login, xe_XmlProtocal, xe_system, xe_Func,
  xe_SETA1, xe_xml, xe_Dm, xe_Msg, xe_gnl3, xe_JON30, xe_JON012, xe_gnl2,
  xe_Jon015, xe_SMS01, xe_JON15, xe_JON16, xe_COM01, xe_Query, Main, xe_packet,
  xe_JON25, xe_JON32, xe_JON10, xe_JON09, xe_JON52,
	xe_JON017, xe_Flash, xe_WOR17, xe_COM11, xe_JON59, xe_JON03PLAYThread,
	xe_MessageBox, xe_JON07, xe_SET08, xe_JON08, CidSi415Lib, xe_JON61, xe_JON62,
	xe_Jon03_01, xe_JON00, xe_agentCfg, xe_JON01Share;
{$R *.dfm}
{
AS	0	접수상태	접수
AS	1	접수상태	배차
AS	2	접수상태	완료
AS	3	접수상태	강제
AS	4	접수상태	문의
AS	5	접수상태	대기
AS	6	접수상태	대기해제
AS	7	접수상태	배차취소
AS	8	접수상태	취소
AS	9	접수상태	오더수정
AS	A	접수상태	재접수
AS	C	접수상태	확정배차
AS	D	접수상태	운행
AS	E	접수상태	후불정산
AS	L	접수상태	LOCK
AS	P	접수상태	후불입금
AS	R	접수상태	예약
AS	S	접수상태	문자전송
AS	T	접수상태	전화
AS	U	접수상태	UNLOCK
AS	V	접수상태	가배차
}        

procedure TFrm_JON03.N10Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.N2Click');
  try
    SetDateControl(dedt_Sdate, dedt_Edate, tdTwoday);
    btnSetDate.Caption := formatdatetime('mm', dedt_Sdate.Date) +'월 ' + formatdatetime('dd', dedt_Sdate.Date) + '일 09시 ~ '
                        + formatdatetime('mm', dedt_Edate.Date) +'월 ' + formatdatetime('dd', dedt_Edate.Date) + '일 09시';
    btnSetDate.Width := 197;
		pSetSearchViewList;
		if pnl_SetDate.Visible then pnl_SetDate.Visible := False;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N11Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.N11Click');
  try
    SetDateControl(dedt_Sdate, dedt_Edate, tdStartMonth);
    btnSetDate.Caption := formatdatetime('mm', dedt_Sdate.Date) +'월 ' + formatdatetime('dd', dedt_Sdate.Date) + '일 09시 ~ '
                        + formatdatetime('mm', dedt_Edate.Date) +'월 ' + formatdatetime('dd', dedt_Edate.Date) + '일 09시';

    btnSetDate.Width := 197;
    pSetSearchViewList;
    if pnl_SetDate.Visible then pnl_SetDate.Visible := False;
  except on E: Exception do
		Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N12Click(Sender: TObject);
var bTmp : Boolean;
begin
  SetDebugeWrite('JON03.N12Click');
  try
    if GetCurrentView.DataController.FocusedRecordIndex < 0 then Exit;
    if IsMenuOpen(Sender) then Exit;

		//타사콜일경우 기사에 송금 팝업메뉴 제외 2016.08.23KHS
		bTmp := True;
		if not func_check_CallCenter then
		begin
			if icheck_CT_Flag = 0 then
			begin
				bTmp := False;
			end;
		end;
		if ( Not Assigned(Frm_JON07) ) Or ( Frm_JON07 = Nil ) then Frm_JON07 := TFrm_JON07.Create(Nil);

		//타사콜일경우 기사에 송금 팝업메뉴 제외 2016.08.23KHS
		Frm_JON07.bTaSaCall := bTmp;
		Frm_JON07.Jon03Tag := Self.Tag;
		Frm_JON07.BrNo := GT_OrderInfo[Self.Tag].BrNo;
		frm_JON07.StCd := GT_OrderInfo[Self.Tag].Status;
		frm_JON07.gStCd := GT_OrderInfo[Self.Tag].Status; 
		frm_JON07.WkName := GT_OrderInfo[Self.Tag].WkName;
		frm_JON07.Hint := GT_OrderInfo[Self.Tag].Slip;
		frm_JON07.AccTime := GT_OrderInfo[Self.Tag].AccTime;
		frm_JON07.CuGubun := GT_OrderInfo[Self.Tag].CuGubun;
		frm_JON07.Bubin := GT_OrderInfo[Self.Tag].BuBin;
		frm_JON07.Cuseq := GT_OrderInfo[Self.Tag].CuSeq;
		frm_JON07.MainKeyNum := GT_OrderInfo[Self.Tag].KeyNumber;    // 2011.07.14 add.

		frm_JON07.Jon03Tag := Self.Tag;
		frm_JON07.pJON07Dock.bUnDock := pJON03Dock.bUnDock;
		frm_JON07.pJON07Dock.HdNo    := pJON03Dock.HdNo;
		frm_JON07.pJON07Dock.BrNo    := pJON03Dock.BrNo;
		frm_JON07.pJON07Dock.BrName  := pJON03Dock.BrName;
		frm_JON07.pJON07Dock.Gubun   := pJON03Dock.Gubun;
		frm_JON07.pJON07Dock.Idx     := pJON03Dock.Idx;

		frm_Main.proc_SlipHis(GT_OrderInfo[Self.Tag].Slip, GT_OrderInfo[Self.Tag].AccTime, Self.Tag);
		frm_JON07.Proc_BeachaBtnClear;
	except on E: Exception do
		Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N13Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.N7Click');
  try
    SetDateControl(dedt_Sdate, dedt_Edate, tdTwoMonth);
    btnSetDate.Caption := formatdatetime('mm', dedt_Sdate.Date) +'월 ' + formatdatetime('dd', dedt_Sdate.Date) + '일 09시 ~ '
                        + formatdatetime('mm', dedt_Edate.Date) +'월 ' + formatdatetime('dd', dedt_Edate.Date) + '일 09시';
    btnSetDate.Width := 197;
    pSetSearchViewList;
    if pnl_SetDate.Visible then pnl_SetDate.Visible := False;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N14Click(Sender: TObject);
var i : integer;
  sSendTel, sSendTelB, sCustTel: string;
	slCustTel, slWkTel : TStringList;
begin
	SetDebugeWrite('JON03.N14Click');
  if not IsRunMenuShortCut(TMenuItem(Sender)) then Exit;
  if GetCurrentView.DataController.FocusedRecordIndex < 0 then Exit;

  try
		proc_MultiChStCd;
		if FMultiOrderChange.BrNo.count > 1 then
		begin

      slCustTel := TStringlist.Create;   slWkTel := TStringlist.Create;
      Try
        for i := 0 to FMultiOrderChange.BrNo.count -1 do
        begin
          sSendTel := FMultiOrderChange.KeyNumber[i];
          sSendTel := StringReplace(sSendTel, '-', '', [rfReplaceAll]);

          if (sSendTel <> sSendTelB) and (sSendTelB <> '') then
          begin
            GMessagebox('발신번호가 동일하지 않을경우 일괄전송이 불가합니다.' , CDMSI);
            Exit;
          end;
          sSendTelB := sSendTel;


          sCustTel := FMultiOrderChange.CustTel[i];
          if ((TCK_USER_PER.JON_CustMaking2 = '1') or (TCK_USER_PER.JON_Cust2Modify = '1') Or (TCK_USER_PER.JON_CustM2Modify = '1')) And (func_check_CallCenter) then
          begin
            sCustTel := FMultiOrderChange.CustTel1[i];
          end;

          if pos('*', sCustTel) > 0 then Continue;

          if FMultiOrderChange.CustTel22[i] <> '' then
            edtTelNum.Text := StringReplace(FMultiOrderChange.CustTel22[i], '-', '', [rfReplaceAll])
          else
            edtTelNum.Text := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

          if StrToIntDef(copy(edtTelNum.Text, 1, 2), 0) <> 1 then
          begin
            GMessagebox('고객번호가 핸드폰이 아닙니다.' + #13#10 +
              '문자메세지를 보낼수 없습니다.', CDMSE);
            Exit;
          end;

          sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

          if slCustTel.IndexOf(sCustTel) < 0 then
          begin
            slCustTel.Add(sCustTel);
            slWkTel.Add('');
          end;
        end;
      
        try
          if Not Assigned(Frm_SMS01) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
          Frm_SMS01.pSMS01Dock.bUnDock := pJON03Dock.bUnDock;
          Frm_SMS01.pSMS01Dock.HdNo    := pJON03Dock.HdNo;
          Frm_SMS01.pSMS01Dock.BrNo    := pJON03Dock.BrNo;
          Frm_SMS01.pSMS01Dock.BrName  := pJON03Dock.BrName;
          Frm_SMS01.pSMS01Dock.Gubun   := pJON03Dock.Gubun;
          Frm_SMS01.pSMS01Dock.Idx     := pJON03Dock.Idx;

          Frm_SMS01.mm_message.Text := '';
          Frm_SMS01.ed_send.Text := sSendTel;
          Frm_SMS01.ls_sms.Items.Clear;
          Frm_SMS01.ls_sms.Items.Assign(slCustTel);
          Frm_SMS01.sMemo := '[고객문자전송]';
          Frm_SMS01.sConfSlip := '';
          Frm_SMS01.sWkSabun := '';
          Frm_SMS01.Proc_Init;
          Frm_SMS01.PageControl1.ActivePageIndex := 1;
          Frm_SMS01.Show;
          Frm_SMS01.gslSlip.Assign(FMultiOrderChange.Slip);
          Frm_SMS01.gslCustTel.Assign(slCustTel);
          Frm_SMS01.gslWkSabun.Assign(slWkTel);
                                                   
        finally
          if BtnAutoRe.Tag = 1 then
          begin
             AAutoSearch_Stop := False;
             tmr_dis.Enabled := True;
             PnlAuto.Visible := True;
          end;
      end;
      Finally
        slCustTel.Free;  slWkTel.Free;
      End;
    end else
    begin
      sSendTel := GT_OrderInfo[Self.Tag].KeyNumber;
      sSendTel := StringReplace(sSendTel, '-', '', [rfReplaceAll]);

      sCustTel := GT_OrderInfo[Self.Tag].CustTel;
      if ((TCK_USER_PER.JON_CustMaking2 = '1') or (TCK_USER_PER.JON_Cust2Modify = '1') Or (TCK_USER_PER.JON_CustM2Modify = '1')) And (func_check_CallCenter) then
      begin
        sCustTel := GT_OrderInfo[Self.Tag].CustTel1;
      end;

      if pos('*', sCustTel) > 0 then
      begin
        GMessagebox('타사콜이어서 문자를 보낼 수 없습니다.', CDMSE);
        Exit;
      end;

      if GT_OrderInfo[Self.Tag].CustTel22 <> '' then
        edtTelNum.Text := StringReplace(GT_OrderInfo[Self.Tag].CustTel22, '-', '', [rfReplaceAll])
      else
        edtTelNum.Text := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

      if StrToIntDef(copy(edtTelNum.Text, 1, 2), 0) <> 1 then
      begin
        GMessagebox('고객번호가 핸드폰이 아닙니다.' + #13#10 +
          '문자메세지를 보낼수 없습니다.', CDMSE);
        Exit;
      end;

      sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);
      try
        if Not Assigned(Frm_SMS01) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
        Frm_SMS01.pSMS01Dock.bUnDock := pJON03Dock.bUnDock;
        Frm_SMS01.pSMS01Dock.HdNo    := pJON03Dock.HdNo;
        Frm_SMS01.pSMS01Dock.BrNo    := pJON03Dock.BrNo;
        Frm_SMS01.pSMS01Dock.BrName  := pJON03Dock.BrName;
        Frm_SMS01.pSMS01Dock.Gubun   := pJON03Dock.Gubun;
        Frm_SMS01.pSMS01Dock.Idx     := pJON03Dock.Idx;

        Frm_SMS01.mm_message.Text := '';
        sSendTel := StringReplace(sSendTel, '-', '', [rfReplaceAll]);
        Frm_SMS01.ed_send.Text := sSendTel;
        Frm_SMS01.ls_sms.Items.Clear;
        Frm_SMS01.ls_sms.Items.Add(edtTelNum.Text);
        Frm_SMS01.sMemo := '[고객문자전송]';
        Frm_SMS01.sConfSlip := GT_OrderInfo[Self.Tag].Slip;
        Frm_SMS01.sWkSabun := '';
        Frm_SMS01.Proc_Init;
        Frm_SMS01.PageControl1.ActivePageIndex := 1;
        Frm_SMS01.Show;
      finally
        if BtnAutoRe.Tag = 1 then
        begin
           AAutoSearch_Stop := False;
           tmr_dis.Enabled := True;
           PnlAuto.Visible := True;
        end;
      end;
    
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N15Click(Sender: TObject);
var iCol, iRow : integer;
	sabun: string;
	AView : TcxGridDBTableView;
begin
	SetDebugeWrite('JON03.N15Click');
  try
		sabun := GT_OrderInfo[Self.Tag].WkSabun;
    if sabun = '' then
    begin
      GMessagebox('배차된 기사가 없습니다.', CDMSE);
      Exit;
    end else
		if sabun = '기사NO' then
		begin
			GMessagebox('기사명이 [기사없음]일 경우에는'+#13#10+'기사정보조회를 할 수 없습니다.', CDMSE);
      Exit;
    end else
		begin
      if gbJon32RunCheck then Exit;
			if ( Not Assigned(Frm_JON32) ) Or ( Frm_JON32 = NIl ) then Frm_JON32 := TFrm_JON32.Create(Nil);
      Frm_JON32.pJON32Dock.bUnDock := pJON03Dock.bUnDock;
      Frm_JON32.pJON32Dock.HdNo    := pJON03Dock.HdNo;
      Frm_JON32.pJON32Dock.BrNo    := pJON03Dock.BrNo;
			Frm_JON32.pJON32Dock.BrName  := pJON03Dock.BrName;
      Frm_JON32.pJON32Dock.Gubun   := pJON03Dock.Gubun;
			Frm_JON32.pJON32Dock.Idx     := pJON03Dock.Idx;

			Frm_JON32.Jon03Tag := Self.Tag;
			Frm_JON32.Proc_Flag := 1;

			Frm_JON32.gsHdNo := ''; Frm_JON32.gsBrNo := ''; Frm_JON32.gsKMWkSabun := '';
			if sabun = 'M00001' then 
			begin
				AView := GetCurrentView;
				iRow := AView.DataController.FocusedRecordIndex;
				iCol := AView.GetColumnByFieldName('odb_wk_sabun' ).Index;
				Frm_JON32.gsKMWkSabun := AView.DataController.Values[iRow, iCol];
				Frm_JON32.gsHdNo := GT_OrderInfo[Self.Tag].HdNo;
				Frm_JON32.gsBrNo := GT_OrderInfo[Self.Tag].BrNo;
			end;
			Frm_JON32.sWk_sabun32 := sabun;
			Frm_JON32.sSlip := GT_OrderInfo[Self.Tag].Slip;
			Frm_JON32.sWkName := GT_OrderInfo[Self.Tag].WkName;
			Frm_JON32.sKeyNumber := GT_OrderInfo[Self.Tag].KeyNumber;

			Try
				gbJon32RunCheck := True;
				Frm_JON32.proc_AllRun;
				Frm_JON32.Show;
      Finally
				gbJon32RunCheck := False;
      End;
		end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N16Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.N16Click');
	try
    AAutoSearch_Time := 1;
    Image1Click(Image1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N17Click(Sender: TObject);
var
	XmlData: string;
  ErrCode: integer;
  ErrMsg: string;
  ls_TxLoad : string;
  rv_str: string;
  ls_rxxml, sSlip, ls_Msg_Err: String;
	slReceive: TStringList;
	ErrCode1, iRow: integer;
	AView: TcxGridDBTableView;
begin
	SetDebugeWrite('JON03.N17Click');
  try
  	AView := GetCurrentView;
		iRow := -1;
		GT_OrderInfo[Self.Tag].ARow := AView.DataController.FocusedRecordIndex;
		iRow := AView.DataController.FocusedRecordIndex;

		sSlip := GT_OrderInfo[Self.Tag].Slip;

		if IsOtherBranchCall(Sender) then Exit;

    if GT_OrderInfo[Self.Tag].Status <> '8' then    // 취소상태는 취소 전문을 보내지 않음   LYB 2017.05.12
		begin
			bProcOK := False;
			ls_TxLoad := GTx_UnitXmlLoad('C005.XML');
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0001', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', sSlip, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);

      ls_TxLoad := StringReplace(ls_TxLoad, 'SMSString', '0', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ReasonString', '기타 - 문의 후 추가접수', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'PenalTimeString', '', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'PenalChargeString', '', [rfReplaceAll]);

      ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '', [rfReplaceAll]);

      ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '0', [rfReplaceAll]);
			//취소사유 기타
      ls_TxLoad := StringReplace(ls_TxLoad, 'CancelCD', '8', [rfReplaceAll]);

			slReceive := TStringList.Create;
			try
				if Dm.SendSock(ls_TxLoad, slReceive, ErrCode1, False) then
				begin
					rv_str := slReceive[0];
          if rv_str <> '' then
					begin
            ls_rxxml := rv_str;
            Application.ProcessMessages;
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if Copy(ls_msg_Err, 1, 4) = '4002' then   // 4002.카드결제 승인 건에 대해 승인 취소 후 오더 취소 처리 메시지 표시  LYB 2017.05.12
            begin
              GMessagebox(ls_Msg_Err, CDMSE);
              bProcOK := False;
              Exit;
            end;
            bProcOK := True;
          end;
				end;
			finally
				FreeAndNil(slReceive);
			end;
		end else bProcOK := True; //취소상태일때는 다음 진행 가능

		sleep(500);//서버 상태 반영 20191114 KHS

		try
			if not bProcOK then
			begin
				GMessagebox('오더취소 시 오류가 발생하여 [문의로변경]이 취소되었습니다. 다시 진행해주세요', CDMSE);
				Exit;
			end else bProcOK := False;

			if not RequestBase(GetCallable05('JON03' + 'CANC0020', 'a01.order_to_ask', sSlip), XmlData, ErrCode, ErrMsg) then
      begin
				GMessagebox(Format('문의 변경 중 오류발생'+#13#10+'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Exit;
      end;
			proc_recieve(XmlData);
  	except on E: Exception do
			Assert(False, E.Message);
    end;

		if not bProcOK then
		begin
			GMessagebox('문의로변경 시 오류가 발생하여 [추가접수]가 취소되었습니다. 다시 진행해주세요', CDMSE);
			exit;
		end else bProcOK := False;
		GT_OrderInfo[Self.Tag].ARow := iRow;
		proc_Order_Set(AView);
		pm_Add_InsertClick(self);     //2013.04.18 문의후 추가접수 추가 KHS
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N18Click(Sender: TObject);
var i, iRow, idx : integer;
	sMsg : string;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_MSG_Err, ls_ClientKey: string;
	ls_TxLoad: string;
	rv_str: string;
  ls_rxxml: String;
  slReceive: TStringList;
	ErrCode: integer;
begin
	SetDebugeWrite('JON03.N18Click');
	if not IsRunMenuShortCut(TMenuItem(Sender)) then Exit;
	try
		//다중처리를 위한 Set 20210831  KHS
		proc_MultiChStCd;
		if FMultiOrderChange.BrNo.count > 1 then
		begin

			sMsg := IntToStr(FMultiOrderChange.BrNo.count) + '건 일괄처리(대기오더완료) 하시겠습니까?' + CRLF + CRLF
				+ '([예] 일괄처리, [아니오] 취소)';
			if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1) = IDYES then
			begin
				lb_ACnt.Caption := IntToStr(FMultiOrderChange.BrNo.count);
				lb_FCnt.Caption := '0';
				Gauge1.Max := FMultiOrderChange.BrNo.count;
				Gauge1.Position := 0;
				iRow := 0;
				if Gauge1.Max > 1 then
				begin
					pnl_AccStatus.Left := pnl_Main.Left + ((pnl_Main.Width - pnl_AccStatus.Width) div 2);
					pnl_AccStatus.Top := 100;
					pnl_AccStatus.Visible := True;
					pnl_AccStatus.BringToFront;
				end;
				mmo_AccStatus.Lines.Insert(0, '**일괄처리 시작**');
				for i := 0 to FMultiOrderChange.BrNo.count -1 do
				begin
					Gauge1.Position := i+1;

					if not func_check_CallCenter(FMultiOrderChange.Slip[i]) then Continue;

					ls_TxLoad := GTx_UnitXmlLoad('C010.XML');
					ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0006', [rfReplaceAll]);

					ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', FMultiOrderChange.Slip[i], [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatus="CurStatusString"', 'CurStatus="CurStatusString" ConfWkSabun="ConfWkSabunString"', [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', FMultiOrderChange.Status[i], [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ConfWkSabunString', '기사NO', [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ConfChargeString', '', [rfReplaceAll]);

					slReceive := TStringList.Create;
					try
						if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
						begin
							rv_str := slReceive[0];
							if rv_str <> '' then
							begin
								ls_rxxml := rv_str;
								Application.ProcessMessages;
								xdom := ComsDomDocument.Create;
								try
									if not xdom.loadXML(ls_rxxml) then Exit;
									ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
									if ('0000' = ls_MSG_Err) then
									begin
										mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 성공');
										Inc(iRow);
										lb_FCnt.Caption := IntToStr(iRow);
										proc_Acc_Search(1, FMultiOrderChange.Slip[i], 'JON03-5' + Copy('CANC0006', 5, 4));
									end else
										mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패');
								finally
									xdom := Nil;
								end;
							end;
						end;
					finally
						FreeAndNil(slReceive);
					end;
				end;
	//			if Not GB_J03_NOSHOW_MSG then
				GMessagebox(IntToStr(iRow) + '건 일괄처리(대기오더->완료)가 되었습니다.', CDMSE);
				if iRow = FMultiOrderChange.BrNo.count then	pnl_AccStatus.Visible := False;
			end;

		end else
		begin
			ls_TxLoad := GTx_UnitXmlLoad('C010.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0006', [rfReplaceAll]);

			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatus="CurStatusString"', 'CurStatus="CurStatusString" ConfWkSabun="ConfWkSabunString"', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfWkSabunString', '기사NO', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfChargeString', '', [rfReplaceAll]);

			slReceive := TStringList.Create;
			try
				if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
				begin
					rv_str := slReceive[0];
					if rv_str <> '' then
					begin
						ls_rxxml := rv_str;
						Application.ProcessMessages;
						proc_recieve(ls_rxxml);
					end;
				end;
			finally
				FreeAndNil(slReceive);
			end;
		end;
	except on E: Exception do
		Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N1Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.N1Click');
  try
    SetDateControl(dedt_Sdate, dedt_Edate, tdToday);
    btnSetDate.Caption := formatdatetime('mm', dedt_Sdate.Date) +'월 ' + formatdatetime('dd', dedt_Sdate.Date) + '일';
    btnSetDate.Width := 67;
    pSetSearchViewList;
		if pnl_SetDate.Visible then pnl_SetDate.Visible := False;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;                     

procedure TFrm_JON03.N20Click(Sender: TObject);
var
  ErrCode: integer;
  ls_TxLoad : string;
  rv_str: string;
	ls_rxxml : String;
	slReceive: TStringList;
	ErrCode1: integer;
	sStatus, sSlip : string;

	sTmpLon, sTmpLat : string;
	dTmpLon, dTmpLat : Double;
	bLonLat : Boolean; //좌표유효성 검사
begin
	SetDebugeWrite('JON03.mniOrderToAskClick');

	bLonLat := True;
	sTmpLon := SetWGS84(GT_OrderInfo[Self.Tag].Lon);
	sTmpLat := SetWGS84(GT_OrderInfo[Self.Tag].Lat);      //037XXXXX -> 37.XXXXXXX로 변환
	dTmpLon := StrToFloatDef(sTmpLon, 0);                        //더블형으로 변환
	dTmpLat := StrToFloatDef(sTmpLat, 0);

	if (not IsGyeongNamShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo)) then
	begin
		bLonLat := PtInPolygon(dTmpLon, dTmpLat, FKOREAAREA_XY.Lon, FKOREAAREA_XY.Lat, FKOREAAREA_XY.Lon.count);
		if Not bLonLat then  //유효한 좌표가 아니면
		begin
			GMessagebox('[출발지 좌표오류]' + #13#10 + 
									'취소 후 재접수할 수 없습니다.' + #13#10 + 
									'출발지를 다시 검색하여 주십시오. 좌표(' + GT_OrderInfo[Self.Tag].Lon + '/' + GT_OrderInfo[Self.Tag].Lat + ')', CDMSE);
			Assert(False, '출발지좌표 : 접수번호-' + GT_OrderInfo[Self.Tag].Slip + '/' + '취소 후 재접수');
			Exit;
		end;
	end;

	sSlip := GT_OrderInfo[Self.Tag].Slip; //선택된 오더
  if IsOtherBranchCall(Sender) then Exit;

	sStatus := GT_OrderInfo[Self.Tag].Status;

  //  if GT_OrderInfo[Self.Tag].Status = '5' then
  begin
		bProcOK := False;
		ls_TxLoad := GTx_UnitXmlLoad('C005.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0001', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', sSlip, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'SMSString', '0', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ReasonString', '기타 - 취소 후 재접수', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'PenalTimeString', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'PenalChargeString', '', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '', [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '0', [rfReplaceAll]);
    //취소사유 기타
    ls_TxLoad := StringReplace(ls_TxLoad, 'CancelCD', '8', [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode1, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
				begin
					sStatus := '8';
					ls_rxxml := rv_str;
					bProcOK := True;
				end;
			end;
		finally
			FreeAndNil(slReceive);
		end;
	end;

	sleep(500);//서버 상태 반영 20191114 KHS

	Try
		// ok
		if GS_SEARCH_DEST_NOPOI_FALSE then
		begin
			if Trim(GT_OrderInfo[Self.Tag].DEST) = '' then
			begin
				GMessagebox('[문의-재접수] 도착지명이 없으면 재접수가 불가능합니다.' + #13#10
									+ '[관련옵션-접수창:검색설정] 도착지 미입력시 접수/대기안됨', CDMSE);
				bProcOK := False;					
				Exit;
			end;
		end;

		try
			if not bProcOK then
			begin
				GMessagebox('오더취소 시 오류가 발생하여 [재접수]가 취소되었습니다. 다시 진행해주세요', CDMSE);
				exit;
			end else bProcOK := False;
			ls_TxLoad := GTx_UnitXmlLoad('C008.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0008', [rfReplaceAll]);

			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', sSlip, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', sStatus, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaYnString', 'y', [rfReplaceAll]);  // 재접수시 근배 여부 (y/n)

			slReceive := TStringList.Create;
			try
				if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
				begin
					rv_str := slReceive[0];
					if rv_str <> '' then
					begin
						ls_rxxml := rv_str;
						Application.ProcessMessages;
						proc_recieve(ls_rxxml);
					end;
				end;
			finally
				FreeAndNil(slReceive);
			end;
		except on E: Exception do
			Assert(False, E.Message);
		end;
  Finally
  End;
end;

procedure TFrm_JON03.N21Click(Sender: TObject);
begin
	SetDebugeWrite('JON03.N21Click');
	try
		if GetCurrentView.DataController.FocusedRecordIndex < 0 then Exit;
    if IsMenuOpen(Sender) then Exit;

		if ( Not Assigned(Frm_JON59) ) Or ( Frm_JON59 = Nil ) then Frm_JON59 := TFrm_JON59.Create(Nil);
		Frm_JON59.proc_init;
		Frm_JON59.pJon59Slip := GT_OrderInfo[Self.Tag].Slip;
		Frm_JON59.btnSearch.Click;
		if Frm_JON59.bOpen then
			Frm_JON59.show;

	except on E: Exception do
		Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N22Click(Sender: TObject);
var
  ls_TxLoad: string;
  rv_str: string;
  ls_rxxml: String;
  slReceive: TStringList;
  ErrCode: integer;
begin
	SetDebugeWrite('JON03.N22Click');
  if IsOtherBranchCall(Sender) then Exit;

{
	접속기사 즉시배차 : 구분 4, 콜마너사번-콜마너사번
	접수현황 타사배차 : 구분 6, 기사NO-기사NO
	접수현황 재배차 : 구분 3, ''-콜마너사번
	접수현황 상단배차 : 구분 5, 자체사번-콜마너사번
	상세이력 즉시배차 : 구분 5, 자체사번-콜마너사번
	문자/강제배차 : 구분 4,  콜마너사번-콜마너사번
	인근기사배차 : 구분 0, 자체사번-콜마너사번
}	
	try
		ls_TxLoad := GTx_UnitXmlLoad('C006.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'TASABAECHA', [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', En_Coding(GT_OrderInfo[Self.Tag].Slip), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', '기사NO', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ConfWkSbString','기사NO', [rfReplaceAll]);   // 기사사번
		ls_TxLoad := StringReplace(ls_TxLoad, 'OdbWkSbString', '', [rfReplaceAll]);   // ODB기사사번
		ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', En_Coding(GT_OrderInfo[Self.Tag].Status), [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaSMSString', '1', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '6', [rfReplaceAll]);  //6.타사배차

		slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
			begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
					proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
		end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N23Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.N6Click');
  try
    SetDateControl(dedt_Sdate, dedt_Edate, tdTwoWeek);
    btnSetDate.Caption := formatdatetime('mm', dedt_Sdate.Date) +'월 ' + formatdatetime('dd', dedt_Sdate.Date) + '일 09시 ~ '
                        + formatdatetime('mm', dedt_Edate.Date) +'월 ' + formatdatetime('dd', dedt_Edate.Date) + '일 09시';
    btnSetDate.Width := 197;
    pSetSearchViewList;
    if pnl_SetDate.Visible then pnl_SetDate.Visible := False;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N25Click(Sender: TObject);
var
	ErrCode: integer;
	Param, ErrMsg, XmlData : string;
begin
	SetDebugeWrite('JON03.N25Click');
	if GetCurrentView.DataController.FocusedRecordIndex < 0 then Exit;
  if IsOtherBranchCall(Sender) then Exit;

	Try
		Param := GT_OrderInfo[Self.Tag].Slip;
		if not RequestBase(GetCallable06('SET_BAECHA_DELAY_TIME', 'CAS.SET_BAECHA_DELAY_TIME', En_Coding(Param)), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('배차지연 저장중 오류가 발생하였습니다.' + CRLF + '[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;
    proc_Acc_Search(1, Param, 'JON03-1'); //항목 갱신
  	if Not GB_J03_NOSHOW_MSG then
	  	GMessagebox('배차지연 저장완료', CDMSI);
	except on E: Exception do
		Assert(False, E.Message);
	End;
end;

procedure TFrm_JON03.N2Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.N2Click');
  try
    SetDateControl(dedt_Sdate, dedt_Edate, tdYesterday);
    btnSetDate.Caption := formatdatetime('mm', dedt_Sdate.Date) +'월 ' + formatdatetime('dd', dedt_Sdate.Date) + '일 09시 ~ '
                        + formatdatetime('mm', dedt_Edate.Date) +'월 ' + formatdatetime('dd', dedt_Edate.Date) + '일 09시';
    btnSetDate.Width := 197;
    pSetSearchViewList;
    if pnl_SetDate.Visible then pnl_SetDate.Visible := False;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N31Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.N31Click');
  try
    AAutoSearch_Time := 3;
    Image1Click(Image1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N37Click(Sender: TObject);
var
  sTemp: string;
begin
	SetDebugeWrite('JON03.N37Click');
	// ok
	pm_Excel.Tag := 1;

  //------------------------------------------------------------------------------
  //     TCK_USER_PER.COM_ExcelNoSMS : 엑셀 다운시 인증생략
  //     본사관리장일 경우 SMS차감 지사 선택
  //------------------------------------------------------------------------------
  try
		if TCK_USER_PER.COM_ExcelNoSMS <> '1' then
    begin
      try
        if (GT_USERIF.LV = '60') then
        begin
          if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
          begin
            if Frm_JON15.Visible then
            begin
							GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
              frm_JON15.rg_Cancelchoice.SetFocus;
              frm_JON15.Show;
              Exit;
            end;
          end;

					if grpSetPanelty.Visible then
          begin
            GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
            grpSetPanelty.BringToFront;
//-            RadioGroup1.SetFocus;
						Exit;
          end;

          if grpSetcancel_charge.Visible then
          begin
            GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
            grpSetcancel_charge.BringToFront;
            ed_cancel_charge.SetFocus;
            Exit;
          end;

          cb_brName.Properties.Items.Clear;
          cb_brName.Properties.Items.Assign(scb_BranchName);
          Lbl_SmsCash.Caption := 'SMS캐쉬';

          cb_brname.ItemIndex := 0;
          grpSetBrch_select.Left := (Width - grpSetBrch_select.Width) div 2;
          grpSetBrch_select.top := (Height - grpSetBrch_select.Height) div 2;
          grpSetBrch_select.Visible := True;
          grpSetBrch_select.BringToFront;

          Exit;
        end;
				Label32.Caption := func_excel_check;
        if Label32.Caption <> '' then
        begin
          grpSetExcel.Left := (Width - grpSetExcel.Width) div 2;
          grpSetExcel.top := (Height - grpSetExcel.Height) div 2;
          grpSetExcel.Visible := True;
          grpSetExcel.BringToFront;
          btn_sms_con.Enabled := True;
          Edit1.Text := '';
          edit1.SetFocus;
        end;
      except
        GMessagebox('인증번호 전송이 실패하였습니다.' + #13#10 +
          '다시 엑셀다운을 클릭해 주세요', CDMSW);
      end;
		end else
    begin
			// 2011.01.13 라이센스실패(result='')시 엑셀처리실패
			if func_excel_check <> '' then
				proc_excel_NoSms;
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
      sTemp := 'Jon03[N37Click]:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_JON03.N38Click(Sender: TObject);
var
  sTemp: string;
begin
  SetDebugeWrite('JON03.N38Click');
  pm_Excel.Tag := 2;

  try
    if TCK_USER_PER.COM_ExcelNoSMS <> '1' then
    begin
      try
        if (GT_USERIF.LV = '60') then // and (GT_USERIF.BR = '') then
        begin
          if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
          begin
            if Frm_JON15.Visible then
            begin
							GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
              frm_JON15.rg_Cancelchoice.SetFocus;
              frm_JON15.Show;
              Exit;
            end;
          end;
          if grpSetPanelty.Visible then
          begin
            GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
						grpSetPanelty.BringToFront;
//-            RadioGroup1.SetFocus;
            Exit;
					end;

          if grpSetcancel_charge.Visible then
          begin
            GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
            grpSetcancel_charge.BringToFront;
            ed_cancel_charge.SetFocus;
            Exit;
          end;

          cb_brName.Properties.Items.Clear;
          cb_brName.Properties.Items.Assign(scb_BranchName);
          Lbl_SmsCash.Caption := '';
          cb_brname.ItemIndex := 0;

          grpSetBrch_select.Left := (Width - grpSetBrch_select.Width) div 2;
          grpSetBrch_select.top := (Height - grpSetBrch_select.Height) div 2;
          grpSetBrch_select.Visible := True;
          grpSetBrch_select.BringToFront;
          Exit;
        end;
        Label32.Caption := func_excel_check;
        if Label32.Caption <> '' then
        begin
          grpSetExcel.Left := (Width - grpSetExcel.Width) div 2;
          grpSetExcel.top := (Height - grpSetExcel.Height) div 2;
          grpSetExcel.Visible := True;
          grpSetExcel.BringToFront;
          btn_sms_con.Enabled := True;
          Edit1.Text := '';
          edit1.SetFocus;
				end;
      except
        GMessagebox('인증번호 전송이 실패하였습니다.' + #13#10 +
          '다시 엑셀다운을 클릭해 주세요', CDMSW);
      end;
    end else
		begin
      // 2011.01.13 라이센스실패(result='')시 엑셀처리실패(errorcode<>'0000' -> result='')
      if func_excel_check <> '' then proc_excel_NoSms;
    end;
  except
    on E: Exception do
    begin
			Assert(False, E.Message);
      sTemp := 'Jon03[N38Click]:' + e.Message;
			GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_JON03.N40Click(Sender: TObject);
var
  acc2: string;
  AView: TcxGridDBTableView;
begin
	SetDebugeWrite('JON03.N40Click');
  try
    if not GT_USERIF.UseCallPass then Exit;
    AView := GetCurrentView;

    if GT_OrderInfo[Self.Tag].ARow < 0 then
		begin
      GMessagebox('오더를 먼저 선택하세요.', CDMSE);
      Exit;
    end;

    if GT_OrderInfo[Self.Tag].Status <> '0' then
    begin
      GMessagebox('접수 상태의 오더만 로지로 콜패스 가능합니다.', CDMSE);
      Exit;
    end;

    acc2  := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giAccTime2];

		if ( GT_UserIF.HD = 'A5135' ) Or ( GT_UserIF.HD = 'A100' ) then
		Begin
			if not _IsOverTime(acc2, 60) then
			begin
				pnlCallPass.Visible := False;
				GMessagebox('접수 1분 이상인 오더만 콜패스 가능합니다.', CDMSE);
				Exit;
			end;
		end	else
		Begin
			if not _IsOverTime(acc2, 180) then
			begin
				pnlCallPass.Visible := False;
				GMessagebox('접수 3분 이상인 오더만 콜패스 가능합니다.', CDMSE);
				Exit;
			end;
		End;

		pnlCallPass.Left := (Self.Width - pnlCallPass.Width) div 2;
		pnlCallPass.Top  := ((Self.Height - pnlCallPass.Height) div 2) - 30;
    pnlCallPass.BringToFront;
    pnlCallPass.Visible := True;
    if btnPassToLogi.Enabled then btnPassToLogi.SetFocus;
  except
    on e: exception do
    begin
      Log('N40Click Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'N40Click Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON03.N42Click(Sender: TObject);
var
  ls_TxLoad: string;
  rv_str: string;
  ls_rxxml: String;
  slReceive: TStringList;
  ErrCode: integer;
begin
	SetDebugeWrite('JON03.N42Click');
	if IsOtherBranchCall(Sender) then Exit;

  try
		ls_TxLoad := GTx_UnitXmlLoad('C006.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'REBAECHA', [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', En_Coding(GT_OrderInfo[Self.Tag].Slip), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', '', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ConfWkSbString',En_Coding(GT_OrderInfo[Self.Tag].WkSabun), [rfReplaceAll]);   // 기사사번
		ls_TxLoad := StringReplace(ls_TxLoad, 'OdbWkSbString', '', [rfReplaceAll]);   // ODB기사사번
		ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', En_Coding(GT_OrderInfo[Self.Tag].Status), [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaSMSString', '1', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '3', [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N44Click(Sender: TObject);
var
	i, iIndex: integer;
	sTemp: string;
	sCustTel, sHdNo : string;
begin
	SetDebugeWrite('JON03.N44Click');
  if IsOtherBranchCall(Sender) then Exit;
  if IsMenuOpen(Sender) then Exit;

	try
    if ( Not Assigned(Frm_JON10) ) Or ( Frm_JON10 = NIl ) then Frm_JON10 := TFrm_JON10.Create(Nil);
		Frm_JON10.Jon03Tag := Self.Tag;
		Frm_JON10.pJON10Dock.bUnDock := pJON03Dock.bUnDock;
		Frm_JON10.pJON10Dock.HdNo    := pJON03Dock.HdNo;
		Frm_JON10.pJON10Dock.BrNo    := pJON03Dock.BrNo;
		Frm_JON10.pJON10Dock.BrName  := pJON03Dock.BrName;
		Frm_JON10.pJON10Dock.Gubun   := pJON03Dock.Gubun;
		Frm_JON10.pJON10Dock.Idx     := pJON03Dock.Idx;

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    begin
			Frm_JON10.cb_Branch.Properties.Items.Clear;
			if mLEFT_SectionIndex = 0 then
			begin
				sHdNo := '';
				Frm_JON10.cb_Branch.Properties.Items.Clear;
				for I := 0 to scb_BranchCode.Count - 1 do
				begin
					 sHdNo := frm_Main.func_search_hdNo(scb_BranchCode[I]);
					 Frm_JON10.cb_Branch.Properties.Items.Add('(' + sHdNo + ',' + scb_BranchCode[I] +')' + scb_BranchName[I]);
				end;
				iIndex := scb_BranchCode.IndexOf(GT_OrderInfo[Self.Tag].BrNo);
			end else
			begin
				sHdNo := '';
				Frm_JON10.cb_Branch.Properties.Items.Clear;
				for I := 0 to scb_FamilyBrCode.Count - 1 do
				begin
					 sHdNo := frm_Main.func_search_hdNo(scb_FamilyBrCode[I]);
					 Frm_JON10.cb_Branch.Properties.Items.Add('(' + sHdNo + ',' + scb_FamilyBrCode[I] +')' + scb_FamilyBrName[I]);
				end;
				iIndex := scb_FamilyBrCode.IndexOf(GT_OrderInfo[Self.Tag].BrNo);
			end;
			Frm_JON10.cb_Branch.ItemIndex := iIndex;
		end else
		begin
			sHdNo := '';
			Frm_JON10.cb_Branch.Properties.Items.Clear;
			for I := 0 to scb_BranchCode.Count - 1 do
			begin
				 sHdNo := frm_Main.func_search_hdNo(scb_BranchCode[I]);
				 Frm_JON10.cb_Branch.Properties.Items.Add('(' + sHdNo + ',' + scb_BranchCode[I] +')' + scb_BranchName[I]);
			end;
			iIndex := scb_BranchCode.IndexOf(GT_OrderInfo[Self.Tag].BrNo);
			Frm_JON10.cb_Branch.ItemIndex := iIndex;
		end;

    Frm_JON10.edt2.Text := GT_OrderInfo[Self.Tag].BrNo;
    Frm_JON10.edtWkName.Text := GT_OrderInfo[Self.Tag].WkName;
    Frm_JON10.edtWkSabun.Text := GT_OrderInfo[Self.Tag].WkSabun;
    Frm_JON10.edtConfSlip.Text  := GT_OrderInfo[Self.Tag].Slip;

		sCustTel := GT_OrderInfo[Self.Tag].CustTel;
    if ((TCK_USER_PER.JON_CustMaking2 = '1') or (TCK_USER_PER.JON_Cust2Modify = '1') Or (TCK_USER_PER.JON_CustM2Modify = '1')) And (func_check_CallCenter) then
    begin
      sCustTel := GT_OrderInfo[Self.Tag].CustTel1;
    end;
    if GT_OrderInfo[Self.Tag].CustTel22 <> '' then
      sCustTel := GT_OrderInfo[Self.Tag].CustTel22;

    Frm_JON10.edtPhoneNo.Text   := sCustTel;

    Frm_JON10.Edit1.Text := GT_OrderInfo[Self.Tag].WkHdNo;
    Frm_JON10.Edit10.Text := GT_OrderInfo[Self.Tag].WkBrNo;
    Frm_JON10.Edit4.Text := IntToStr(GT_OrderInfo[Self.Tag].Charge);
    Frm_JON10.Edit14.Text := IntToStr(GT_OrderInfo[Self.Tag].Charge);
    Frm_JON10.Edit13.Text := func_search_hdNo(GT_OrderInfo[Self.Tag].BrNo);
    Frm_JON10.Edit15.Text := GT_OrderInfo[Self.Tag].Slip;
    Frm_JON10.edtHdnOrderDate.Text := GT_OrderInfo[Self.Tag].AccTime;
		Frm_JON10.RbCheckBox1.Checked := False;
		Frm_JON10.Show;
    N44.Enabled := False;
  except
    on E: Exception do
    begin
      N44.Enabled := True;
      Assert(False, E.Message);
			sTemp := 'Jon03[N44Click]Error : ' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
	end;
end;

procedure TFrm_JON03.N51Click(Sender: TObject);
begin
	SetDebugeWrite('JON03.N51Click');
  try
    AAutoSearch_Time := 6;
    Image1Click(Image1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N6Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.N6Click');
  try
    SetDateControl(dedt_Sdate, dedt_Edate, tdOneWeek);
    btnSetDate.Caption := formatdatetime('mm', dedt_Sdate.Date) +'월 ' + formatdatetime('dd', dedt_Sdate.Date) + '일 09시 ~ '
                        + formatdatetime('mm', dedt_Edate.Date) +'월 ' + formatdatetime('dd', dedt_Edate.Date) + '일 09시';
    btnSetDate.Width := 197;
    pSetSearchViewList;
    if pnl_SetDate.Visible then pnl_SetDate.Visible := False;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N7Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.N7Click');
  try
    SetDateControl(dedt_Sdate, dedt_Edate, tdOneMonth);
		btnSetDate.Caption := formatdatetime('mm', dedt_Sdate.Date) +'월 ' + formatdatetime('dd', dedt_Sdate.Date) + '일 09시 ~ '
                        + formatdatetime('mm', dedt_Edate.Date) +'월 ' + formatdatetime('dd', dedt_Edate.Date) + '일 09시';
    btnSetDate.Width := 197;
    pSetSearchViewList;
    if pnl_SetDate.Visible then pnl_SetDate.Visible := False;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N91Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.N91Click');
  try
    AAutoSearch_Time := 9;
    Image1Click(Image1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N9Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.N9Click');
  try
    clipboard.settextbuf(Pchar(StringReplace(GT_OrderInfo[Self.Tag].Value, '-', '', [rfReplaceAll])));
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.NOCX_BLOCKClick(Sender: TObject);
var
  CustTel,
  CounselName,
  CounselID,
  CustName: string;
begin
	SetDebugeWrite('JON03.NOCX_BLOCKClick');
  try                              
{		if GT_OCX = 'SI415' then
		begin
			GMessagebox('IPCC 관리자 > 수신거부고객관리' + #13#10
								+ '메뉴를 이용하여 주십시오', CDMSE);
			Exit;
		end else}
		if (GT_POSS_TEL <> 1) or (GT_POSS_IP = '') then
    begin
			if (GT_OCX <> 'KLCNS') and (GT_OCX <> 'SI415') then
      begin
				GMessagebox('전화걸기 기능을 사용할 수 없습니다.' + #13#10
					+ '설정에서 전화걸기 기능을 설정해 주세요.', CDMSE);
				Exit;
			end;
    end;

    if GT_OrderInfo[Self.Tag].CustTel22 = '' then
    begin
      if ((TCK_USER_PER.JON_CustMaking2 = '1') or (TCK_USER_PER.JON_Cust2Modify = '1') Or (TCK_USER_PER.JON_CustM2Modify = '1')) And (func_check_CallCenter) then
        CustTel := GT_OrderInfo[Self.Tag].CustTel1
      else
        CustTel := GT_OrderInfo[Self.Tag].CustTel;
		end else
    begin
      CustTel := GT_OrderInfo[Self.Tag].CustTel22;
    end;

		if pos('*', CustTel) > 0 then
    begin
      GMessagebox('수신거부 권한이 없습니다.', CDMSE);
      Exit;
    end;

		if Application.MessageBox('고객 전화번호를 전화 거부/차단 하시겠습니까?'
      + CRLF + '전화 거부/차단시 고객이 전화하면 시스템에서 전화를 자동끊어줍니다', 'CDMS', MB_YESNO +
			MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
    begin
      Exit;
    end;

		CustTel     := RemovePhone(CustTel);
		CounselID   := GT_USERIF.ID;
		CounselName := GT_USERIF.NM;
		CustName    := GT_OrderInfo[Self.Tag].CustName;

		RunCustTelBlock(CustTel, CustName, CounselID, CounselName);
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.NOCX_CUSTClick(Sender: TObject);
Var sCustTel : String;
begin
  SetDebugeWrite('JON03.NOCX_CUSTClick');
  if Not NOCX_CUST.Visible then Exit;

  try
    if ((TCK_USER_PER.JON_CustMaking2 = '1') or (TCK_USER_PER.JON_Cust2Modify = '1') Or (TCK_USER_PER.JON_CustM2Modify = '1')) And (func_check_CallCenter) then
    begin
      sCustTel := GT_OrderInfo[Self.Tag].CustTel1;
    end else
    begin
      sCustTel := GT_OrderInfo[Self.Tag].CustTel;
    end;

    if GT_OrderInfo[Self.Tag].CustTel22 <> '' then
  		sCustTel := StringReplace(GT_OrderInfo[Self.Tag].CustTel22, '-', '', [rfReplaceAll]);

    SetDebugeWrite('접수현황 고객전화걸기 ' + sCustTel);

 		sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);
    Frm_Main.pCallingCID(sCustTel, GT_OrderInfo[Self.Tag].KeyNumber, GT_OrderInfo[Self.Tag].Slip, '01');  //01.고객, 02.기사
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.N_CMPSupportAMT1Click(Sender: TObject);
var AMnItem : TMenuItem;
	sAmt, sTag, sMsg : String;
	ErrCode: integer;
	Param, ErrMsg, XmlData : string;
begin
	SetDebugeWrite('JON03.N_CMPSupportAMT1Click');
	Try
		AMnItem := TMenuItem(sender);
		sAmt := StringReplace(AMnItem.Hint, ',', '', [rfReplaceAll]);
		sTag := '';
		case AMnItem.Tag of
			0:	 begin sTag := '1'; sMsg := '지원금을 회수하였습니다'; sAmt := '0'; end;
			else begin sTag := '0'; sMsg := '지원금 [' + strToMoney(sAmt) + ']이 적용되었습니다'; end;
		end;
		//구분│접수번호│지원금금액(누적처리)
		Param := sTag;
		Param := Param + '│' + GT_OrderInfo[Self.Tag].Slip;            
		Param := Param + '│' + sAmt;            

		if not RequestBase(GetCallable06('SET_ORDER_SUPPORT_CHARGE', 'A01.SET_ORDER_SUPPORT_CHARGE', En_Coding(Param)), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('지원금 적용시 오류가 발생하였습니다.' + CRLF + '[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;               
		end;
		proc_Acc_Search(1, GT_OrderInfo[Self.Tag].Slip, 'JON03-1'); //항목 갱신
		GMessagebox(sMsg, CDMSI);

	except on E: Exception do
		Assert(False, E.Message);
	End;
end;

procedure TFrm_JON03.Panel1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetDebugeWrite('JON03.Panel1MouseMove');
  try
		ReleaseCapture;
    PostMessage(TPanel(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pmCallByInsureFreeClick(Sender: TObject);
var AMnItem : TMenuItem;
	sAmt, sTag, sMsg : String;
	ErrCode: integer;
	Param, ErrMsg, XmlData : string;
begin
	SetDebugeWrite('JON03.pmCallByInsureFreeClick');
	Try
		AMnItem := TMenuItem(sender);
		sAmt := StringReplace(AMnItem.Hint, ',', '', [rfReplaceAll]);
		sTag := '';
		case AMnItem.Tag of
			0:	 begin sTag := 'y'; sMsg := '건당보험료무료 적용을 설정하였습니다';end;
			else begin sTag := 'n'; sMsg := '건당보험료무료 적용을 해제하였습니다'; end;
		end;
		Param := GT_OrderInfo[Self.Tag].Slip;            
		Param := Param + '│' + sTag;            

		if not RequestBase(GetCallable06('SET_KAKAO_WK_INS_FEE_YN ', 'CAS.SET_KAKAO_WK_INS_FEE_YN', En_Coding(Param)), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('건당보험료무료 적용시 오류가 발생하였습니다.' + CRLF + '[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;               
		end;
		proc_Acc_Search(1, GT_OrderInfo[Self.Tag].Slip, 'JON03-1'); //항목 갱신
		GMessagebox(sMsg, CDMSI);

	except on E: Exception do
		Assert(False, E.Message);
	End;
end;

procedure TFrm_JON03.pmCallChangeClick(Sender: TObject);
var
  ls_TxLoad: string;
  rv_str, sMsg : string;
  ls_rxxml: String;
  slReceive: TStringList;
  ErrCode: integer;
begin
  SetDebugeWrite('JON03.pmCallChangeClick');
  if not IsRunMenuShortCut(TMenuItem(Sender)) then Exit;
  if IsOtherBranchCall(Sender) then Exit;

  GMessagebox('[제휴콜전환] 프리미엄 --> 일반콜' + #13#10 +
              '        + ' + #13#10 +
              '[콜마너연합 - 즉시공유]' + #13#10#13#10 +
              '위의 기능 수행 합니다.', CDMSI);

  try
		ls_TxLoad := GTx_UnitXmlLoad('JON03082.XML');
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0007', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pmm_searchClick(Sender: TObject);
begin
	SetDebugeWrite('JON03.pmm_searchClick');
  try
    lg_swhere[Self.Tag] := '';
    rb_Search.OnClick(rb_Search);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pmNoShowClick(Sender: TObject);
var
  AView: TcxGridDBTableView;
  ARow: Integer;
  FirstDatetime: string;
begin
  SetDebugeWrite('JON03.pmNoShowClick');
  if not IsRunMenuShortCut(TMenuItem(Sender)) then Exit;
  if IsOtherBranchCall(Sender) then Exit;

  try
    GB_MODIFY_ST := True;
    try
      AView := GetCurrentView;
      if AView.DataController.FocusedRecordIndex < 0 then Exit;

      if AView.DataController.RecordCount = 0 then
      begin
        GB_JON03SELECT_GB := True;
        Exit;
      end;

      if IsMenuOpen(Sender) then Exit;

      tmr_dis.Enabled := False;
      PnlAuto.Visible := False;

      if (Trim(GT_OrderInfo[Self.Tag].Slip) <> '') and (Trim(GT_OrderInfo[Self.Tag].KeyNumber) <> '') then
      begin
        if (TCK_USER_PER.JON_Order = '1') and func_check_CallCenter then
				begin
          ARow := AView.DataController.FocusedRecordIndex;
          if ARow > -1 then
          begin
            if Assigned(AView.GetColumnByFieldName('접수시간2')) then
            begin
              FirstDatetime := AView.DataController.Values[ARow, giAccTime2];
              Frm_Main.AcceptFromCreate(GT_OrderInfo[Self.Tag].Slip, FirstDatetime, '수정', Self.Tag);
              Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].btnCmdUpdSave.Caption := '노쇼완료(F7)';
              Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].bNoShowSave := True;
            end;
          end;
        end else
        begin
          GB_JON03SELECT_GB := True;
          N12Click(N12);
        end;
      end;
    finally
      GB_MODIFY_ST := False;
    end;
  except on E: Exception do
    begin
      GB_MODIFY_ST := False;;
      Assert(False, 'pm_EditClick Error : ' + GT_OrderInfo[Self.Tag].Slip + '-' + E.Message);
    end;
  end;
end;

procedure TFrm_JON03.pm_AceptInfoClick(Sender: TObject);
var
	sTemp, sWkName: string;
  MyOrder: Boolean;
begin
  SetDebugeWrite('JON03.pm_AceptInfoClick');
  if GetCurrentView.DataController.FocusedRecordIndex < 0 then Exit;
  if IsMenuOpen(Sender) then Exit;

  try
    tmr_dis.Enabled := False;
    PnlAuto.Visible := False;

    if ( Not Assigned(Frm_JON09) ) Or ( Frm_JON09 = Nil ) then Frm_JON09 := TFrm_JON09.Create(Nil);

    Frm_JON09.Jon03Tag := Self.Tag;
    sTemp := RemoveDatetimeSeparator(GT_OrderInfo[Self.Tag].AccTime);
    if StartDateTime('yyyymmddhhmmss') >= sTemp then
      Frm_JON09.Tag := 2
    else
      frm_JON09.Tag := 1;

    sWkName   := GetCurrentView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giWkName];

    MyOrder := True;
		if (GS_PRJ_AREA = 'O') and (Pos('㉹',sWkName) = 1) and (GT_USERIF.WKVPhone = 'y') then
      MyOrder := False;

    Frm_JON09.Jon03Tag := Self.Tag;
    Frm_JON09.proc_orderinfo(GT_OrderInfo[Self.Tag].Slip, MyOrder);
    Frm_JON09.Show;
  except
    on E: Exception do
		begin
      Assert(False, E.Message);
      sTemp := 'Jon03[pm_AceptInfoClick]:' + e.Message;
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_JON03.pm_Add_InsertClick(Sender: TObject);
var
  AView: TcxGridDBTableView;
  iCnt, ARow: Integer;
  FirstDatetime: string;
begin
	SetDebugeWrite('JON03.pm_Add_InsertClick');
	if not IsRunMenuShortCut(TMenuItem(Sender)) then Exit;

  try
    AView := GetCurrentView;

    if (AView.DataController.RecordCount = 0) or (AView.DataController.FocusedRecordIndex < 0) then Exit;
    if (AView.DataController.RecordCount <= AView.DataController.FocusedRecordIndex) then Exit;

		if IsOtherBranchCall(Sender) then Exit;
    if IsMenuOpen(Sender) then Exit;

    try
      tmr_dis.Enabled := False;
			PnlAuto.Visible := False;

      GB_JON03SELECT_GB := False;
			// 접수현황에서 수정전문 요청시 결과받았는지의 여부.  CDS. 080825.
      Grd2.Enabled := False;
			if (Trim(GT_OrderInfo[Self.Tag].Slip) <> '') and (Trim(GT_OrderInfo[Self.Tag].KeyNumber) <> '')
				and (TCK_USER_PER.JON_Order = '1') then
      begin
				if func_check_CallCenter then
        begin
          ARow := AView.DataController.FocusedRecordIndex;
					FirstDatetime := AView.DataController.Values[ARow, giAccTime2];
					Frm_Main.AcceptFromCreate(GT_OrderInfo[Self.Tag].Slip, FirstDatetime, '추가접수', Self.Tag)
        end;
      end;
      iCnt := 0;
      while (GB_JON03SELECT_GB = False) do
      begin // 접수현황에서 수정전문 요청시 결과받았는지의 여부.
        if (iCnt = 10) then
          Break;
        Inc(iCnt);
        Application.ProcessMessages;
        Sleep(500);
      end;
    finally
      Grd2.Enabled := True;
		end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pm_AIOBNowRunClick(Sender: TObject);
var
	XmlData, Param, ErrMsg, ls_MSG_Err : string;
	ErrCode, i, j : Integer;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList, slTmp1, slTmp2 : TStringList;
begin
	SetDebugeWrite('TFrm_JON03.pm_AIOBNowRunClick');

	
	try
		Param := GT_OrderInfo[Self.Tag].BrNo + '│' + CallToStr(GT_OrderInfo[Self.Tag].KeyNumber) + '│' + GT_OrderInfo[Self.Tag].Slip;

//		Screen.Cursor := crHourGlass;
		slList := TStringList.Create;
		slTmp1 := TStringList.Create;
		slTmp2 := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_BD_POPUP_LIST', 'AI_OB_MNG.GET_BD_POPUP_HIS_LIST', '100', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('리콜(배차지연콜) 즉시실행 리스트조회 오류' + CRLF + '[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Screen.Cursor := crDefault;
				Exit;
			end;


			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];

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
									GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

									slTmp1.Add(ls_Rcrd[0] + '│' + ls_Rcrd[1]);
									slTmp2.Add(ls_Rcrd[2] + '│' + ls_Rcrd[3] + '│' + ls_Rcrd[4] + '│'  +ls_Rcrd[5] + '│' + ls_Rcrd[6]) ;
								end;
							finally
								ls_Rcrd.Free;
							end;
						end;
					end;
				finally
					xdom := Nil;
					Screen.Cursor := crDefault;
				end;
			end;

      if Not Assigned(Frm_JON61) Or (Frm_JON61 = Nil) then Frm_JON61 := TFrm_JON61.Create(Nil);
      Frm_JON61.proc_Init;
      Frm_JON61.gBrNo := GT_OrderInfo[Self.Tag].BrNo;
      Frm_JON61.gKeyNumber := GT_OrderInfo[Self.Tag].KeyNumber;
      Frm_JON61.gSlip := GT_OrderInfo[Self.Tag].Slip;
      if Frm_JON61.func_SetGrid(slTmp1, slTmp2) then
      begin
        Frm_JON61.Show;
      end;

		finally
			Frm_Flash.hide;
			FreeAndNil(slList);
			FreeAndNil(slTmp1);
			FreeAndNil(slTmp2);
			Screen.Cursor := crDefault;
		end;
	except
    on E: Exception do
    begin
      Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_JON03.pm_BaeSMSClick(Sender: TObject);
var
  ErrCode: integer;
	XmlData, ErrMsg: string;
begin
	SetDebugeWrite('JON03.pm_BaeSMSClick');
  try
    if not RequestBase(GetCallable05('BAECHA_SMS', 'cas.do_send_baecha_sms', GT_OrderInfo[Self.Tag].Slip), XmlData, ErrCode, ErrMsg) then
    begin
			GMessagebox(Format('배차문자 재전송 중 오류 발생' + CRLF + '[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      Exit;
    end;
    GMessagebox('배차문자재전송을 완료했습니다.',CDMSE);

  except
    GMessagebox('배차문자재전송중 오류가 발생했습니다.',CDMSE);
  end;
end;

procedure TFrm_JON03.pm_BoHumNoClick(Sender: TObject);
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

  asParam[1] := IntToStr(1);
  asParam[2] := GT_OrderInfo[Self.Tag].Slip;
	asParam[3] := GT_OrderInfo[Self.Tag].WkSabun;
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
          GMessagebox('고객님께 문자(기사증권번호)가 발송되었습니다.', CDMSI);
        end
        else GMessagebox('실패하였습니다.', CDMSE);
      end;
    end;
  finally
    FreeAndNil(slReceive);
  end;

end;

procedure TFrm_JON03.pm_CancelClick(Sender: TObject);
var
  ls_TxLoad, ls_TxQry, sQueryTemp : string;
	sCustTel, sWkSabun: string;
	rv_str: string;
	ls_rxxml: String;
	slReceive: TStringList;
  ErrCode : integer;
  AView: TcxGridDBTableView;
	xdom: MSDomDocument;
	lst_Result: IXMLDomNodeList;
	sPayGubun, sBaecha : string;
	iTmp, iRow, i : integer;
begin
	SetDebugeWrite('Frm_JON03.pm_CancelClick');
	if not IsRunMenuShortCut(TMenuItem(Sender)) then Exit;

  AView := GetCurrentView;
	try
		iRow := AView.DataController.FocusedRecordIndex;

		if iRow < 0 then Exit;
		if IsOtherBranchCall(Sender) then Exit;
    if IsMenuOpen(Sender) then Exit;
  except on E: Exception do
    Assert(False, E.Message);
  end;

  try
    tmr_dis.Enabled := False;
  	PnlAuto.Visible := False;
//-    tmr_gHighlight.Enabled := False;

    // 고객번호 찾기
    sCustTel := GT_OrderInfo[Self.Tag].CustTel;
    if ((TCK_USER_PER.JON_CustMaking2 = '1') or (TCK_USER_PER.JON_Cust2Modify = '1') Or (TCK_USER_PER.JON_CustM2Modify = '1')) And (func_check_CallCenter) then
    begin
      sCustTel := GT_OrderInfo[Self.Tag].CustTel1;
    end;

		if TPopupMenu(Sender).Tag in [0, 1, 10] then      //0:배차취소(패널티), 오더취소+재접수 1:오더취소, 10:오더취소+고객전화걸기
    begin
			if Not Assigned(Frm_JON15) then Frm_JON15 := TFrm_JON15.Create(Nil);
			Frm_JON15.Jon03Tag := Self.Tag;
			if TPopupMenu(Sender).Tag = 1 then
			begin
				//상태와 상관없이 카드승인오더 취소가능하도록 적용. 20210713 KHS 팀장님 지시
{				case GT_OrderInfo[Self.Tag].Status[1] of
					AS	0	접수상태	접수AS	4	접수상태	문의AS	5	접수상태	대기AS	1	접수상태	배차
					'0','4','5','1' :
					begin
						iTmp := StrToIntDef(RemoveComma(AView.DataController.Values[iRow, giCardAmt]), 0);
						sBaecha := AView.DataController.Values[iRow, giBaecha];       //배차시간
						sPayGubun := AView.DataController.Values[iRow, giCardPay];   //결제구분
						if (sPayGubun = 'P8') and (iTmp > 0) then    //카드결제면서 금액이 있는경우
						begin
							if (GT_OrderInfo[Self.Tag].Status[1] = '1') and (sBaecha = '') then   
							else   //배차확정시간이 있는 배차
							begin
								GMessagebox('[카드승인오더]' + #13#10 + #13#10 
													+ '선택하신 오더는 카드결제가 완료된 오더입니다.' +#13#10
													+ '승인취소 후 취소하여 주십시오.', CDMSE);
								Exit;
							end;
						end;
					end;
				end; }
					
				
				//다중처리를 위한 Set 20210831  KHS
				proc_MultiChStCd;

				Frm_JON15.pnlTitle.Caption := '  취소하기';
			end else 
			if TPopupMenu(Sender).Tag = 10 then
        Frm_JON15.pnlTitle.Caption := '  취소+고객전화걸기'
      else
				Frm_JON15.pnlTitle.Caption := '  취소+재접수';
//////////////////////////////////////기사보험확인////////////////////////////////
			sWkSabun  := AView.DataController.Values[AView.DataController.FocusedRecordIndex, giWkSabun];
			if sWkSabun <> '기사NO' then
			begin
				ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
				ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '3', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sWkSabun, [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '1', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', 'y', [rfReplaceAll]);
				ls_TxLoad := StringReplace(ls_TxLoad, 'Conf_slipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]); //접수번호추가

				slReceive := TStringList.Create;
				try
					if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
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
								lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');
								if lst_Result.item[0].attributes.getNamedItem('Info6').Text = 'c' then
									Frm_JON15.rdo_Cancel99.visible := True
								else
									Frm_JON15.rdo_Cancel99.visible := False;

							finally
								xdom := Nil;
							end;
						end;
					end;
				finally
					FreeAndNil(slReceive);
				end;
			end;

//////////////////////////////////////기사보험확인////////////////////////////////
			Frm_JON15.RbCheckBox1.Visible := False;
			Frm_JON15.Left := (Width - Frm_JON15.Width) div 2;
      Frm_JON15.Top := (Height - Frm_JON15.Height) div 2;
			if Frm_JON15.top <= 10 then Frm_JON15.top := 10;
			Frm_JON15.gBrNo   := GT_OrderInfo[Self.Tag].BrNo;
			Frm_JON15.gStatus := GT_OrderInfo[Self.Tag].Status;
			Frm_JON15.gSlip   := GT_OrderInfo[Self.Tag].Slip;
			Frm_JON15.ed_cancel_custnum.Text := sCustTel;
			Frm_JON15.ed_cancel_custname.Text := GT_OrderInfo[Self.Tag].CustName;
			Frm_JON15.ed_cancel_area.Text   := AView.DataController.Values[AView.DataController.FocusedRecordIndex, giStartArea];
			Frm_JON15.ed_cancel_area2.Text  := AView.DataController.Values[AView.DataController.FocusedRecordIndex, giEndArea];
			Frm_JON15.KeyNum := GT_OrderInfo[Self.Tag].KeyNumber;
			Frm_JON15.RbCheckBox1.Visible := False;
			Frm_JON15.RbCheckBox1.Checked := False;
      if TPopupMenu(Sender).Tag = 1 then
        Frm_JON15.RbCheckBox1.Visible := True;

			if TPopupMenu(Sender).Tag = 10 then
				Frm_JON15.Tag := 10
      else
        Frm_JON15.Tag := 0;
			case gbOrderCancelSelect of
				0 : Frm_JON15.ARadioBtn := Frm_JON15.rdo_Cancel0;
				1 : Frm_JON15.ARadioBtn := Frm_JON15.rdo_Cancel6;
				2 : Frm_JON15.ARadioBtn := Frm_JON15.rdo_Cancel1;
				3 : Frm_JON15.ARadioBtn := Frm_JON15.rdo_Cancel7;
				4 : Frm_JON15.ARadioBtn := Frm_JON15.rdo_Cancel2;
				5 : Frm_JON15.ARadioBtn := Frm_JON15.rdo_Cancel8;
				6 : Frm_JON15.ARadioBtn := Frm_JON15.rdo_Cancel3;
				7 : Frm_JON15.ARadioBtn := Frm_JON15.rdo_Cancel9;
				8 : Frm_JON15.ARadioBtn := Frm_JON15.rdo_Cancel4;
				9 : Frm_JON15.ARadioBtn := Frm_JON15.rdo_Cancel10;
			 10 : Frm_JON15.ARadioBtn := Frm_JON15.rdo_Cancel5;
			 else
			 	Frm_JON15.ARadioBtn := Frm_JON15.rdo_Cancel0;
			end;
			Frm_JON15.rg_Cancelchoice.Tag := 1;
			Frm_JON15.ARadioBtn.checked := True;
			Frm_JON15.cb_CancelSMS.Checked := false;
			// 오더취소+재접수
			if TPopupMenu(Sender).Tag = 0 then
			begin
				// 오더취소 창 미 표시
				if GB_JONLIST_RETRY_NOSHOW then
        begin
					Frm_JON15.rdo_Cancel8.Checked := True;
					Frm_JON15.ed_WhyCancel.Text := '재접수';
					Frm_JON15.sb_Cancel_comm.Click;
        end else
        begin
					Frm_JON15.Show;
				end;
      end else
			begin
				Frm_JON15.pnl_AccStatus.Visible := False;
				if FMultiOrderChange.BrNo.count > 1 then
				begin
					Frm_JON15.pnlTitle.Caption := '  취소하기' + '  '+ IntToStr(FMultiOrderChange.BrNo.count) + '건 일괄처리합니다';
				end;
				Frm_JON15.Show;
			end;
		end else
		if TPopupMenu(Sender).Tag in [2, 5, 22] then   //2:강제배차, 5:문자배차, 22:원주365기사콜패스 강제배차
    begin
      if (( (TPopupMenu(Sender).Tag = 2) Or (TPopupMenu(Sender).Tag = 22) ) and (TCK_USER_PER.JON_Recon ='1')) or
         ((TPopupMenu(Sender).Tag = 5) and (TCK_USER_PER.JON_SMSRecon ='1')) then
         Exit
      else
			begin
				if ( (Pos('후불', GT_OrderInfo[Self.Tag].CashType) > 0) Or
             (Pos('즉후', GT_OrderInfo[Self.Tag].CashType) > 0) Or
						 (Pos('법후', GT_OrderInfo[Self.Tag].CashType) > 0) ) And
           (GT_OrderInfo[Self.Tag].Status <> '0') and
					 (GT_OrderInfo[Self.Tag].Status <> 'R') then // 후불오더 캐쉬부족 체크..    접수, 예약일경우는 제외(접수시 이미 체크함)
				begin
					gTmp := ''; gTmp_HD := ''; gTmp_BR := ''; gTmp_Slip := '';
					gTmp_BR := GT_OrderInfo[Self.Tag].BrNo;
					gTmp_HD := GT_OrderInfo[Self.Tag].HdNo;
					gTmp_Slip := GT_OrderInfo[Self.Tag].Slip;
		
					if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A1747') and (gTmp_BR = 'S954') then
					begin
						if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, 0, gBrCharge, gBrSumCharge) then
						begin
							GMessagebox('지사캐쉬(0원미만)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
							Exit;
						end;
					end	else
					if (GS_PRJ_AREA <> 'S') and ((GT_USERIF.ShareNo = 'G91') or (GT_USERIF.ShareNo = 'G58') or (gTmp_HD = 'A100') ) then
					begin
						if (GS_PRJ_AREA <> 'S') and ((gTmp_HD = 'A1891') or (gTmp_HD = 'A1897') or (gTmp_HD = 'A1756') or
																				 (gTmp_HD = 'A1763') or (gTmp_HD = 'A1768') or (gTmp_HD = 'A1757') or
																				 (gTmp_HD = 'A1844') or (gTmp_HD = 'A1752') or (gTmp_HD = 'A1853') or
																				 (gTmp_HD = 'A1771') or (gTmp_HD = 'A1822') or (gTmp_HD = 'A1753') or
																				 (gTmp_HD = 'A1866') or (gTmp_HD = 'A2014') or (gTmp_HD = 'A2010') or
																				 (gTmp_HD = 'A1769') or (gTmp_HD = 'A1772') or (gTmp_HD = 'A1905') or
																				 (gTmp_HD = 'A1946') or (gTmp_HD = 'A1764') or (gTmp_HD = 'A1879') or
																				 (gTmp_HD = 'A1948')) then
						begin
							if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, -50000, gBrCharge, gBrSumCharge) then
							begin
								GMessagebox('지사캐쉬(-50,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
								Exit;
							end;
						end else
						if (GS_PRJ_AREA <> 'S') and (GT_USERIF.HD = 'A1745') then
						begin
							if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, -100000, gBrCharge, gBrSumCharge) then
							begin
								GMessagebox('지사캐쉬(-100,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
								Exit;
							end;
						end	else
						if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A2195') and (gTmp_BR = 'U589') then       //20170323 이명재대리요청
						begin
							if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, 100000, gBrCharge, gBrSumCharge) then
							begin
								GMessagebox('지사캐쉬가 100,000원 이하일 경우 후불로 수정할 수 없습니다.', CDMSE);
								Exit;
							end;
						end else
						begin
							if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, -100000, gBrCharge, gBrSumCharge) then
							begin
								GMessagebox('지사캐쉬(-100,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
								Exit;
							end;
						end;
					end else
					begin
						if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, 0, gBrCharge, gBrSumCharge) then
						begin
{							gTmp := '해당지사의 캐시가 [%s]원으로 후불접수가 불가합니다' + #13#10 + #13#10
										+ '* 후불접수예정금액 : %s원' + #13#10
										+ '* 지사보유금액 : %s원' + #13#10
										+ '* 현재 후불접수합계 : %s원' + #13#10
							;
							GMessagebox(Format(gTmp, [StrToMoney(FloatToStr(gBrCharge))
																		 ,  StrToMoney(FloatToStr(GT_OrderInfo[Self.Tag].Deposit))
																		 ,  StrToMoney(FloatToStr(gBrCharge))
																		 ,  StrToMoney(FloatToStr(gBrSumCharge))]), CDMSE);
}							gTmp := '해당지사의 캐쉬가 [%s]원으로 후불접수가 불가합니다';
							GMessagebox(Format(gTmp, [StrToMoney(FloatToStr(gBrCharge))]), CDMSE);
							Exit;
						end;
					end;
				end;

				if Not Assigned(Frm_COM01) then Frm_COM01 := TFrm_COM01.Create(Nil);
        Frm_COM01.Jon03Tag := Self.Tag;
				Frm_COM01.pCOM01Dock.bUnDock := pJON03Dock.bUnDock;
				Frm_COM01.pCOM01Dock.HdNo    := pJON03Dock.HdNo;
				Frm_COM01.pCOM01Dock.BrNo    := pJON03Dock.BrNo;
				Frm_COM01.pCOM01Dock.BrName  := pJON03Dock.BrName;
				Frm_COM01.pCOM01Dock.Gubun   := pJON03Dock.Gubun;
        Frm_COM01.pCOM01Dock.Idx     := pJON03Dock.Idx;

        Frm_COM01.Tag := TPopupMenu(Sender).Tag;
				Frm_COM01.Jon03Tag := Self.Tag;
        // 2 : 강제배차, 5 : 문자배차, 0 : 접수창 배차
				Frm_COM01.ed_ConfSlip.Text := GT_OrderInfo[Self.Tag].Slip;
        Frm_COM01.ed_st_cd.Text := GT_OrderInfo[Self.Tag].Status;
				Frm_COM01.gsOrderBrNo := GT_OrderInfo[Self.Tag].BrNo;
				Frm_COM01.gsOrderCharge := StringReplace(IntToStr(GT_OrderInfo[Self.Tag].Charge), ',', '', [rfReplaceAll]);
				Frm_COM01.gsOrderCuseq := GT_OrderInfo[Self.Tag].CuSeq;
				Frm_COM01.gsOrderMainKeyNum := GT_OrderInfo[Self.Tag].KeyNumber;    // 2011.07.14 add.
				Frm_COM01.gsLat := GT_OrderInfo[Self.Tag].Lat;
				Frm_COM01.gsLng := GT_OrderInfo[Self.Tag].Lon;
				Frm_COM01.gsKMShare := GT_OrderInfo[Self.Tag].KMShare;
				Frm_COM01.Show;
        Exit;
      end;
		end else
		if TPopupMenu(Sender).Tag in [6] then     //인근기사배차
		begin
			if ((TPopupMenu(Sender).Tag = 6) and (TCK_USER_PER.JON_Recon ='1')) then
				 Exit
			else
			begin
				if ( (Pos('후불', GT_OrderInfo[Self.Tag].CashType) > 0) Or
             (Pos('즉후', GT_OrderInfo[Self.Tag].CashType) > 0) Or
             (Pos('법후', GT_OrderInfo[Self.Tag].CashType) > 0) ) And
           (GT_OrderInfo[Self.Tag].Status <> '0') and
					 (GT_OrderInfo[Self.Tag].Status <> 'R') then // 후불오더 캐쉬부족 체크..    접수, 예약일경우는 제외(접수시 이미 체크함)
				begin
					gTmp := ''; gTmp_HD := ''; gTmp_BR := ''; gTmp_Slip := '';
					gTmp_BR := GT_OrderInfo[Self.Tag].BrNo;
					gTmp_HD := GT_OrderInfo[Self.Tag].HdNo;
					gTmp_Slip := GT_OrderInfo[Self.Tag].Slip;

					if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A1747') and (gTmp_BR = 'S954') then
					begin
						if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, 0, gBrCharge, gBrSumCharge) then
						begin
							GMessagebox('지사캐쉬(0원미만)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
							Exit;
						end;
					end	else
					if (GS_PRJ_AREA <> 'S') and ((GT_USERIF.ShareNo = 'G91') or (GT_USERIF.ShareNo = 'G58') or (gTmp_HD = 'A100') ) then
					begin
						if (GS_PRJ_AREA <> 'S') and ((gTmp_HD = 'A1891') or (gTmp_HD = 'A1897') or (gTmp_HD = 'A1756') or
																				 (gTmp_HD = 'A1763') or (gTmp_HD = 'A1768') or (gTmp_HD = 'A1757') or
																				 (gTmp_HD = 'A1844') or (gTmp_HD = 'A1752') or (gTmp_HD = 'A1853') or
																				 (gTmp_HD = 'A1771') or (gTmp_HD = 'A1822') or (gTmp_HD = 'A1753') or
																				 (gTmp_HD = 'A1866') or (gTmp_HD = 'A2014') or (gTmp_HD = 'A2010') or
																				 (gTmp_HD = 'A1769') or (gTmp_HD = 'A1772') or (gTmp_HD = 'A1905') or
																				 (gTmp_HD = 'A1946') or (gTmp_HD = 'A1764') or (gTmp_HD = 'A1879') or
																				 (gTmp_HD = 'A1948')) then
						begin
							if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, -50000, gBrCharge, gBrSumCharge) then
							begin
								GMessagebox('지사캐쉬(-50,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
								Exit;
							end;
						end else
						if (GS_PRJ_AREA <> 'S') and (GT_USERIF.HD = 'A1745') then
						begin
							if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, -100000, gBrCharge, gBrSumCharge) then
							begin
								GMessagebox('지사캐쉬(-100,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
								Exit;
							end;
						end	else
						if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A2195') and (gTmp_BR = 'U589') then       //20170323 이명재대리요청
						begin
							if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, 100000, gBrCharge, gBrSumCharge) then
							begin
								GMessagebox('지사캐쉬가 100,000원 이하일 경우 후불로 수정할 수 없습니다.', CDMSE);
								Exit;
							end;
						end else 
						begin
							if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, -100000, gBrCharge, gBrSumCharge) then
							begin
								GMessagebox('지사캐쉬(-100,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
								Exit;
							end;
						end;
					end else
					begin
						if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, 0, gBrCharge, gBrSumCharge) then
						begin
{							gTmp := '해당지사의 캐시가 [%s]원으로 후불접수가 불가합니다' + #13#10 + #13#10
										+ '* 후불접수예정금액 : %s원' + #13#10
										+ '* 지사보유금액 : %s원' + #13#10
										+ '* 현재 후불접수합계 : %s원' + #13#10
							;
							GMessagebox(Format(gTmp, [StrToMoney(FloatToStr(gBrCharge))
																		 ,  StrToMoney(FloatToStr(GT_OrderInfo[Self.Tag].Deposit))
																		 ,  StrToMoney(FloatToStr(gBrCharge))
																		 ,  StrToMoney(FloatToStr(gBrSumCharge))]), CDMSE);
}							gTmp := '해당지사의 캐쉬가 [%s]원으로 후불접수가 불가합니다';
							GMessagebox(Format(gTmp, [StrToMoney(FloatToStr(gBrCharge))]), CDMSE);
							Exit;
						end;
					end;
				end;

				if Not Assigned(Frm_COM11) then Frm_COM11 := TFrm_COM11.Create(Nil);
				Frm_COM11.Show;
        Frm_COM11.Jon03Tag := Self.Tag;
				Frm_COM11.Tag := TPopupMenu(Sender).Tag;
				// 2 : 강제배차, 5 : 문자배차, 0 : 접수창 배차, 6 : 인근기사배차
				Frm_COM11.sSlip     := GT_OrderInfo[Self.Tag].Slip;
				Frm_COM11.sStatus   := GT_OrderInfo[Self.Tag].Status;
				Frm_COM11.sStratLon := GT_OrderInfo[Self.Tag].Lon;
				Frm_COM11.sStratLat := GT_OrderInfo[Self.Tag].Lat;
				Frm_COM11.sKeyNumber:= GT_OrderInfo[Self.Tag].KeyNumber;
				Frm_COM11.gOrderCharge := StringReplace(IntToStr(GT_OrderInfo[Self.Tag].Charge), ',', '', [rfReplaceAll]);
				Frm_COM11.cb_Radius.ItemIndex := NearWKSearchRadius;
				Frm_COM11.proc_NearRecon('01', 'A0', '', '', '', inttostr(NearWKSearchRadius+1), GT_OrderInfo[Self.Tag].Lat, GT_OrderInfo[Self.Tag].Lon, '0' );
				Exit;
			end;
		end;

    //기사부족 취소문자 메시지 설정값 가져오기
		ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMS_LACK_MSG, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [GT_OrderInfo[Self.Tag].BrNo]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'WKLACKMSG', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
					Application.ProcessMessages;
          proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      rv_str := 'Jon03[pm_CancelClick]Error : ' + e.Message;
      Assert(False, E.Message);
      GMessagebox(PChar(rv_str), CDMSE);
		end;
  end;
end;


procedure TFrm_JON03.pm_CanNOCX_CUSTClick(Sender: TObject);
var
  ls_TxLoad, ls_TxQry, sQueryTemp : string;
  sCustTel: string;
  rv_str: string;
  ls_rxxml: String;
  slReceive: TStringList;
  ErrCode: integer;
  AView: TcxGridDBTableView;
begin
  SetDebugeWrite('JON03.pm_CanNOCX_CUSTClick');
	if not IsRunMenuShortCut(TMenuItem(Sender)) then
    Exit;

  AView := GetCurrentView;
	try
    if AView.DataController.FocusedRecordIndex < 0 then Exit;
		if IsOtherBranchCall(Sender) then Exit;
    if IsMenuOpen(Sender) then Exit;
  except on E: Exception do
     Assert(False, E.Message);
  end;

  try
    tmr_dis.Enabled := False;
		PnlAuto.Visible := False;

    // 고객번호 찾기
    sCustTel := GT_OrderInfo[Self.Tag].CustTel;
    if ((TCK_USER_PER.JON_CustMaking2 = '1') or (TCK_USER_PER.JON_Cust2Modify = '1') Or (TCK_USER_PER.JON_CustM2Modify = '1')) And (func_check_CallCenter) then
    begin
			sCustTel := GT_OrderInfo[Self.Tag].CustTel1;
		end;

    if TPopupMenu(Sender).Tag in [0, 1, 10] then
    begin
      if Not Assigned(Frm_JON15) then Frm_JON15 := TFrm_JON15.Create(Nil);
      Frm_JON15.Jon03Tag := Self.Tag;
      if TPopupMenu(Sender).Tag = 1 then
  			Frm_JON15.pnlTitle.Caption := '  취소하기'
      else if TPopupMenu(Sender).Tag = 10 then
        Frm_JON15.pnlTitle.Caption := '  취소+고객전화걸기'
      else
        Frm_JON15.pnlTitle.Caption := '  취소+재접수';

      Frm_JON15.RbCheckBox1.Visible := False;
      Frm_JON15.Left := (Width - Frm_JON15.Width) div 2;
      Frm_JON15.Top := (Height - Frm_JON15.Height) div 2;
      if Frm_JON15.top <= 10 then Frm_JON15.top := 10;
      Frm_JON15.ed_cancel_custnum.Text := sCustTel;
      Frm_JON15.ed_cancel_custname.Text := GT_OrderInfo[Self.Tag].CustName;
      Frm_JON15.ed_cancel_area.Text   := AView.DataController.Values[AView.DataController.FocusedRecordIndex, giStartArea];
      Frm_JON15.ed_cancel_area2.Text  := AView.DataController.Values[AView.DataController.FocusedRecordIndex, giEndArea];
			Frm_JON15.gBrNo   := GT_OrderInfo[Self.Tag].BrNo;
			Frm_JON15.KeyNum := GT_OrderInfo[Self.Tag].KeyNumber;
			Frm_JON15.gStatus := GT_OrderInfo[Self.Tag].Status;
			Frm_JON15.gSlip   := GT_OrderInfo[Self.Tag].slip;
			Frm_JON15.RbCheckBox1.Visible := False;
      Frm_JON15.RbCheckBox1.Checked := False;
      if TPopupMenu(Sender).Tag = 1 then
        Frm_JON15.RbCheckBox1.Visible := True;

      if TPopupMenu(Sender).Tag = 10 then
				Frm_JON15.Tag := 10
      else
        Frm_JON15.Tag := 0;

			Frm_JON15.rdo_Cancel0.checked := True;
			Frm_JON15.cb_CancelSMS.Checked := false;
      // 오더취소+재접수
      if TPopupMenu(Sender).Tag = 0 then
			begin
        // 오더취소 창 미 표시
        if GB_JONLIST_RETRY_NOSHOW then
        begin
					Frm_JON15.rdo_Cancel8.checked := True;
          Frm_JON15.ed_WhyCancel.Text := '재접수';
          Frm_JON15.sb_Cancel_comm.Click;
        end else
        begin
          Frm_JON15.Show;
        end;
      end else
      begin
        Frm_JON15.Show;
      end;
    end else
    if TPopupMenu(Sender).Tag in [2, 5] then
    begin
      if ((TPopupMenu(Sender).Tag = 2) and (TCK_USER_PER.JON_Recon ='1')) or ((TPopupMenu(Sender).Tag = 5) and (TCK_USER_PER.JON_SMSRecon ='1')) then
         Exit
      else
      begin
        if Not Assigned(Frm_COM01) then Frm_COM01 := TFrm_COM01.Create(Nil);
				Frm_COM01.Jon03Tag := Self.Tag;
        Frm_COM01.Tag := TPopupMenu(Sender).Tag;
        // 2 : 강제배차, 5 : 문자배차, 0 : 접수창 배차
        Frm_COM01.pCOM01Dock.bUnDock := pJON03Dock.bUnDock;
        Frm_COM01.pCOM01Dock.HdNo    := pJON03Dock.HdNo;
        Frm_COM01.pCOM01Dock.BrNo    := pJON03Dock.BrNo;
        Frm_COM01.pCOM01Dock.BrName  := pJON03Dock.BrName;
        Frm_COM01.pCOM01Dock.Gubun   := pJON03Dock.Gubun;
        Frm_COM01.pCOM01Dock.Idx     := pJON03Dock.Idx;

        Frm_COM01.ed_ConfSlip.Text := GT_OrderInfo[Self.Tag].Slip;
        Frm_COM01.ed_st_cd.Text := GT_OrderInfo[Self.Tag].Status;

				Frm_COM01.gsOrderBrNo := GT_OrderInfo[Self.Tag].BrNo;
				Frm_COM01.gsOrderCharge := StringReplace(IntToStr(GT_OrderInfo[Self.Tag].Charge), ',', '', [rfReplaceAll]);
				Frm_COM01.gsOrderCuseq := GT_OrderInfo[Self.Tag].CuSeq;
				Frm_COM01.gsOrderMainKeyNum := GT_OrderInfo[Self.Tag].KeyNumber;    // 2011.07.14 add.

				Frm_COM01.Show;
        Exit;
      end;
    end;

    //기사부족 취소문자 메시지 설정값 가져오기
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMS_LACK_MSG, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [GT_OrderInfo[Self.Tag].BrNo]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'WKLACKMSG', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      rv_str := 'Jon03[pm_CancelClick]Error : ' + e.Message;
      Assert(False, E.Message);
      GMessagebox(PChar(rv_str), CDMSE);
    end;
  end;
end;

procedure TFrm_JON03.pm_CanReAccClick(Sender: TObject);
var
  ls_TxLoad, ls_TxQry, sQueryTemp : string;
  sCustTel: string;
	rv_str: string;
	ls_rxxml: String;
  slReceive: TStringList;
  ErrCode: integer;
  AView: TcxGridDBTableView;
begin
	SetDebugeWrite('JON03.pm_CanReAccClick');
	if not IsRunMenuShortCut(TMenuItem(Sender)) then
    Exit;

  AView := GetCurrentView;
	try
    if AView.DataController.FocusedRecordIndex < 0 then Exit;
		if IsOtherBranchCall(Sender) then Exit;
    if IsMenuOpen(Sender) then Exit;
  except on E: Exception do
     Assert(False, E.Message);
  end;

  try
    tmr_dis.Enabled := False;
  	PnlAuto.Visible := False;

    // 고객번호 찾기
    sCustTel := GT_OrderInfo[Self.Tag].CustTel;
    if ((TCK_USER_PER.JON_CustMaking2 = '1') or (TCK_USER_PER.JON_Cust2Modify = '1') Or (TCK_USER_PER.JON_CustM2Modify = '1')) And (func_check_CallCenter) then
    begin
      sCustTel := GT_OrderInfo[Self.Tag].CustTel1;
    end;

    if TPopupMenu(Sender).Tag in [0, 1, 10] then
    begin
			if Not Assigned(Frm_JON15) then Frm_JON15 := TFrm_JON15.Create(Nil);

			Frm_JON15.Jon03Tag := Self.Tag;
      if TPopupMenu(Sender).Tag = 1 then
  			Frm_JON15.pnlTitle.Caption := '  취소하기'
      else if TPopupMenu(Sender).Tag = 10 then
        Frm_JON15.pnlTitle.Caption := '  취소+고객전화걸기'
      else
        Frm_JON15.pnlTitle.Caption := '  취소+재접수';

      Frm_JON15.RbCheckBox1.Visible := False;
      Frm_JON15.Left := (Width - Frm_JON15.Width) div 2;
      Frm_JON15.Top := (Height - Frm_JON15.Height) div 2;
      if Frm_JON15.top <= 10 then Frm_JON15.top := 10;
      Frm_JON15.ed_cancel_custnum.Text := sCustTel;
      Frm_JON15.ed_cancel_custname.Text := GT_OrderInfo[Self.Tag].CustName;
      Frm_JON15.ed_cancel_area.Text   := AView.DataController.Values[AView.DataController.FocusedRecordIndex, giStartArea];
      Frm_JON15.ed_cancel_area2.Text  := AView.DataController.Values[AView.DataController.FocusedRecordIndex, giEndArea];
			Frm_JON15.gBrNo   := GT_OrderInfo[Self.Tag].BrNo;
			Frm_JON15.KeyNum := GT_OrderInfo[Self.Tag].KeyNumber;
			Frm_JON15.gStatus := GT_OrderInfo[Self.Tag].Status;
			Frm_JON15.gSlip   := GT_OrderInfo[Self.Tag].slip;
			Frm_JON15.RbCheckBox1.Visible := False;
      Frm_JON15.RbCheckBox1.Checked := False;
      if TPopupMenu(Sender).Tag = 1 then
        Frm_JON15.RbCheckBox1.Visible := True;

      if TPopupMenu(Sender).Tag = 10 then
        Frm_JON15.Tag := 10
      else
        Frm_JON15.Tag := 0;

			Frm_JON15.rdo_Cancel0.checked := True;
      Frm_JON15.cb_CancelSMS.Checked := false;
      // 오더취소+재접수
      if TPopupMenu(Sender).Tag = 0 then
      begin
        // 오더취소 창 미 표시
        if GB_JONLIST_RETRY_NOSHOW then
        begin
					Frm_JON15.rdo_Cancel8.checked := True;
          Frm_JON15.ed_WhyCancel.Text := '재접수';
					Frm_JON15.sb_Cancel_comm.Click;
        end else
        begin
          Frm_JON15.Show;
        end;
      end else
      begin
        Frm_JON15.Show;
      end;
    end else
    if TPopupMenu(Sender).Tag in [2, 5] then
    begin
      if ((TPopupMenu(Sender).Tag = 2) and (TCK_USER_PER.JON_Recon ='1')) or ((TPopupMenu(Sender).Tag = 5) and (TCK_USER_PER.JON_SMSRecon ='1')) then
         Exit
      else
      begin
        if Not Assigned(Frm_COM01) then Frm_COM01 := TFrm_COM01.Create(Nil);
        Frm_COM01.Jon03Tag := Self.Tag;
        Frm_COM01.Tag := TPopupMenu(Sender).Tag;
        // 2 : 강제배차, 5 : 문자배차, 0 : 접수창 배차
				Frm_COM01.pCOM01Dock.bUnDock := pJON03Dock.bUnDock;
        Frm_COM01.pCOM01Dock.HdNo    := pJON03Dock.HdNo;
        Frm_COM01.pCOM01Dock.BrNo    := pJON03Dock.BrNo;
        Frm_COM01.pCOM01Dock.BrName  := pJON03Dock.BrName;
        Frm_COM01.pCOM01Dock.Gubun   := pJON03Dock.Gubun;
        Frm_COM01.pCOM01Dock.Idx     := pJON03Dock.Idx;

        Frm_COM01.ed_ConfSlip.Text := GT_OrderInfo[Self.Tag].Slip;
        Frm_COM01.ed_st_cd.Text := GT_OrderInfo[Self.Tag].Status;
				Frm_COM01.gsOrderBrNo := GT_OrderInfo[Self.Tag].BrNo;
				Frm_COM01.gsOrderCharge := StringReplace(IntToStr(GT_OrderInfo[Self.Tag].Charge), ',', '', [rfReplaceAll]);
				Frm_COM01.gsOrderCuseq := GT_OrderInfo[Self.Tag].CuSeq;
				Frm_COM01.gsOrderMainKeyNum := GT_OrderInfo[Self.Tag].KeyNumber;    // 2011.07.14 add.

				Frm_COM01.Show;

        Exit;
      end;
    end;

    //기사부족 취소문자 메시지 설정값 가져오기
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_BRANCH_SMS_LACK_MSG, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [GT_OrderInfo[Self.Tag].BrNo]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'WKLACKMSG', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
			if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      rv_str := 'Jon03[pm_CancelClick]Error : ' + e.Message;
      Assert(False, E.Message);
      GMessagebox(PChar(rv_str), CDMSE);
    end;
  end;
end;

procedure TFrm_JON03.pm_CanReResClick(Sender: TObject);
var
  ls_TxLoad: string;
  rv_str: string;
  ls_rxxml: String;
  slReceive: TStringList;
  ErrCode: integer;
  Msg : string;
begin
  SetDebugeWrite('JON03.pm_CanReResClick');
	if GetCurrentView.DataController.FocusedRecordIndex < 0 then
    Exit;

  if not IsRunMenuShortCut(TMenuItem(Sender)) then
    Exit;

  if TMenuItem(Sender) = pm_reservation then
  begin
		if GT_OrderInfo[Self.Tag].Status[1] = '5' then
		begin
			if GS_SEARCH_DEST_NOPOI_FALSE then
			begin
				if Trim(GT_OrderInfo[Self.Tag].DEST) = '' then
				begin
					GMessagebox('[대기-대기해제] 도착지명이 없으면 대기해제가 불가능합니다.' + #13#10
										+ '[관련옵션-접수창:검색설정] 도착지 미입력시 접수/대기안됨', CDMSE);
					Exit;
				end;
			end;

			TMenuItem(Sender).Tag := 6;            //대기해제
      Msg := '대기 해제 하시겠습니까?';
			if (not GB_JONLIST_READY_NOSHOW_MSG) and (Not GB_J03_NOSHOW_MSG) then
			begin
        if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
			end;
    end else
    begin
      TMenuItem(Sender).Tag := 5;
			Msg := '대기 처리 하시겠습니까?';
			if (not GB_JONLIST_READY_NOSHOW_MSG) and (Not GB_J03_NOSHOW_MSG) then
			begin
        if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
      end;
    end;
  end;

  if IsOtherBranchCall(Sender) then Exit;

  try
    ls_TxLoad := GTx_UnitXmlLoad('C007.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'RESV000' + IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunCodeString', IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);
        end;
			end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
      ls_TxLoad := 'Jon03[pm_CanReResClick]Error : ' + e.Message;

      GMessagebox(PChar(ls_TxLoad), CDMSE);
		end;
  end;
end;

procedure TFrm_JON03.pm_completeClick(Sender: TObject);
var i, iRow : integer;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_MSG_Err, ls_ClientKey: string;
	ls_TxLoad: string;
	rv_str, sMsg : string;
	ls_rxxml: String;
	slReceive: TStringList;
	ErrCode: integer;
begin
	SetDebugeWrite('JON03.pm_completeClick');
	Try
		//다중처리를 위한 Set 20210831  KHS
		proc_MultiChStCd;
		if FMultiOrderChange.BrNo.count > 1 then
		begin
			sMsg := IntToStr(FMultiOrderChange.BrNo.count) + '건 일괄처리(완료) 하시겠습니까?' + CRLF + CRLF
				+ '([예] 일괄처리, [아니오] 취소)';
			if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1) = IDYES then
			begin
				lb_ACnt.Caption := IntToStr(FMultiOrderChange.BrNo.count);
				lb_FCnt.Caption := '0';
				Gauge1.Max := FMultiOrderChange.BrNo.count;
				Gauge1.Position := 0;
				iRow := 0;
				if Gauge1.Max > 1 then
				begin
					pnl_AccStatus.Left := pnl_Main.Left + ((pnl_Main.Width - pnl_AccStatus.Width) div 2);
					pnl_AccStatus.Top := 100;
					pnl_AccStatus.Visible := True;
					pnl_AccStatus.BringToFront;
				end;
				mmo_AccStatus.Lines.Insert(0, '**일괄처리 시작**');
				for i := 0 to FMultiOrderChange.BrNo.count -1 do
				begin
					Gauge1.Position := i+1;

					if not func_check_CallCenter(FMultiOrderChange.Slip[i]) then Continue;

					if (FMultiOrderChange.WkHdNo[i] = 'A5406') or
						 (FMultiOrderChange.WkHdNo[i] = 'A5405') or
						 (FMultiOrderChange.WkHdNo[i] = 'A5404') or
						 (FMultiOrderChange.WkHdNo[i] = 'A5403') or
						 (FMultiOrderChange.WkHdNo[i] = 'A5402') or
						 (FMultiOrderChange.WkHdNo[i] = 'A5400') or
						 (FMultiOrderChange.WkHdNo[i] = 'A5399') or
						 (FMultiOrderChange.WkHdNo[i] = 'A5398') or
						 (FMultiOrderChange.WkHdNo[i] = 'A5397') then
					begin
						mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패- 탁송기사 차량사진등록X');
						Continue;
					end;

					ls_TxLoad := GTx_UnitXmlLoad('C010.XML');
					ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0006', [rfReplaceAll]);

					ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', FMultiOrderChange.Slip[i], [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', FMultiOrderChange.Status[i], [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ConfChargeString', '', [rfReplaceAll]);

					slReceive := TStringList.Create;
					try
						if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
						begin
							rv_str := slReceive[0];
							if rv_str <> '' then
							begin
								ls_rxxml := rv_str;
								Application.ProcessMessages;
								xdom := ComsDomDocument.Create;
								try
									if not xdom.loadXML(ls_rxxml) then Exit;
									ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
									if ('0000' = ls_MSG_Err) then
									begin
										mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 성공');
										Inc(iRow);
										lb_FCnt.Caption := IntToStr(iRow);
										proc_Acc_Search(1, FMultiOrderChange.Slip[i], 'JON03-5' + Copy('CANC0006', 5, 4));
									end else
										mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패');
								finally
									xdom := Nil;
								end;
							end;
						end;
					finally
						FreeAndNil(slReceive);
					end;
				end;
	//			if Not GB_J03_NOSHOW_MSG then
				GMessagebox(IntToStr(iRow) + '건 일괄처리(완료)가 되었습니다.', CDMSE);
				if iRow = FMultiOrderChange.BrNo.count then	pnl_AccStatus.Visible := False;
			end;

		end else
		begin
			if not IsRunMenuShortCut(TMenuItem(Sender)) then Exit;
			if IsOtherBranchCall(Sender) then Exit;

			if (GT_OrderInfo[Self.Tag].WkHdNo = 'A5406') or
				 (GT_OrderInfo[Self.Tag].WkHdNo = 'A5405') or
				 (GT_OrderInfo[Self.Tag].WkHdNo = 'A5404') or
				 (GT_OrderInfo[Self.Tag].WkHdNo = 'A5403') or
				 (GT_OrderInfo[Self.Tag].WkHdNo = 'A5402') or
				 (GT_OrderInfo[Self.Tag].WkHdNo = 'A5400') or
				 (GT_OrderInfo[Self.Tag].WkHdNo = 'A5399') or
				 (GT_OrderInfo[Self.Tag].WkHdNo = 'A5398') or
		{		 (GT_OrderInfo[Self.Tag].WkHdNo = 'A100') or
				 (GT_OrderInfo[Self.Tag].WkHdNo = 'A283') or}
				 (GT_OrderInfo[Self.Tag].WkHdNo = 'A5397') then
			begin
				sMsg := '탁송기사 차량 사진등록이 완료되지 않았습니다.' + #13#10
							+ '사고시에는 탁송보험이 적용되지않습니다.' + #13#10 + #13#10
							+ '완료처리 하시겠습니까?';
				if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO +
					MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
				begin
					Exit;
				end;
			end;

			ls_TxLoad := GTx_UnitXmlLoad('C010.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0006', [rfReplaceAll]);

			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfChargeString', '', [rfReplaceAll]);

			slReceive := TStringList.Create;
			try
				if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
				begin
					rv_str := slReceive[0];
					if rv_str <> '' then
					begin
						ls_rxxml := rv_str;
						Application.ProcessMessages;
						proc_recieve(ls_rxxml);
					end;
				end;
			finally
				FreeAndNil(slReceive);
			end;
			
		end;
	
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_JON03.pm_CounselPopup(Sender: TObject);
var
	AView: TcxGridDBTableView;
	I, iCallCenter, iCol : Integer;
	acc2, sCallcenter, sInId: string;
	PopVis: Boolean;
	UseCardBr: Boolean;
	irow : integer;
	A_time, B_Time, C_Time  : TDateTime;
	slTmp : TStringList;
begin
	SetDebugeWrite('JON03.pm_CounselPopup');

	pm_Counsel.Tag := 0; //팝업 특성 초기화. 다중명령(배차취소(패널티)+대기) = 90
	pm_Panelty_reservation.Hint := ''; //다중처리 후 메세지를 넣어두는곳 초기화

	gbProcSuccess := False;
	
  A_time := now;
	AView := GetCurrentView;

	AAutoSearch_Stop := True;

	UseCardBr := IsCardUseBranch(GT_OrderInfo[Self.Tag].BrNo);

	// 03.KCP, 06.KICC 카드 결제 권한이 있는지 체크.
  if ( IsCardUseBranch_KCP(GT_OrderInfo[Self.Tag].BrNo) = '03' ) Or
     ( IsCardUseBranch_KCP(GT_OrderInfo[Self.Tag].BrNo) = '06' ) then
    UseCardBr := True;

  try
		irow := AView.DataController.GetFocusedRecordIndex;
		if irow >= 0 then N15.Visible := True
                 else N15.Visible := False;

		PnlHelp.Visible := False;  // 20120719 LYB 수정

           // 데이터 없을 경우 메뉴 비활성화
    pm_Cancel.Visible       := False;
    pm_Panelty.Visible      := False;
    pm_Panelty_reservation.Visible      := False;
    pm_ReAcc.Visible        := False;
    pm_CanReAcc.Visible     := False;
    pm_CanReRes.Visible     := False;
		pm_CanNOCX_CUST.Visible := False;
		pm_ReAccept.Visible     := False;
		mniOrderToAsk.Visible   := False;
    pm_complete.Visible     := False;
//    pm_cancellation.Visible := False;
    pm_reservation.Visible  := False;
    pm_R_termination.Visible:= False;
    pm_Add_Insert.Visible   := False;
    pm_share.Visible        := False;
    N25.Visible             := False;  // 배차지연

    N10.Visible := False;
    pmCallChange.Visible := False;            // 프리미엄콜 일반콜 전환
    pmNoShow.Visible := False;                // 노쇼 완료

    mniCardReq.Visible      := False;
		mniCardHistory.Visible  := False;

    pm_Edit.Visible         := False;
		pm_Recon.Visible        := False;
    pm_BaeSMS.Visible       := False;
		pm_smsRecon.Visible     := False;
		pm_NearRecon.Visible    := False;

		N42.Visible             := False;
		N22.Visible             := False;
		pm_SMS.Visible          := False;
		N14.Visible             := False;
		NOCX_WOR.Visible        := False;
		NOCX_CUST.Visible       := False;
		NOCX_BLOCK.Visible      := False;

		N44.Visible             := False;
		pm_Expense.Visible      := False; //경비지급
		N12.Visible             := False;
		N21.Visible             := False; //패널티 조회
		pm_AceptInfo.Visible    := False;
    pm_Excel.Visible        := False;
    N9.Visible              := False;

    pm_WkCallPass.Visible   := False;  // 기사콜패스 - 원주365만 추가

    N40.Visible             := False;

    N8.Visible              := False;
    pm_Reset.Visible        := True;

		AI1.Visible              := False;
		pm_AIOBNowRun.Visible    := False; //리콜(배차지연콜)즉시실행

		// 구분자
    mniSepCard.Visible      := False;

    N4.Visible              := False;
    N5.Visible              := False;
    N3.Visible              := False;
    N39.Visible             := False;
		NOCX1.Visible           := False;
		N17.Visible             := False;
		N20.Visible             := False;   //문의 후 재접수 2016.02.20 오대양요청 KHS
		N18.Visible             := False;   //대기오더 완료
		pm_ReconSms.Visible     := False;   //강제배차문자 재전송 2013.05.20 KHS
    pm_BoHumNo.Visible      := False;   // 기사보험증권번호 문자발송 20160626 KHS

		pm_Kakao.Visible := False;
		pm_KakaoLine.Visible := False;
		pmCallByInsureFree.visible := False;
		
		if (TCK_USER_PER.JON_MousePopup <> '1')
      or (AView.DataController.RecordCount = 0)
      or (AView.DataController.FocusedRecordIndex = -1)
		then
      Exit;
    //////////////////////////////////////////////

    // 항시 보일 메뉴
		N14.Visible             := True;

		N12.Visible             := True;
		N21.Visible             := True;
		pm_AceptInfo.Visible    := True;
		N9.Visible              := True;

		if (GS_PRJ_AREA = 'O') and ((GT_USERIF.BR = 'G797') or (GT_USERIF.BR = 'B100'))  then
			pm_InsungCallPass.Visible         := True
		else
			pm_InsungCallPass.Visible         := False;

		pm_Reset.Visible        := True;

		B_time := Now;
		SetDebugeWrite('A - B Time: '+ inttostr(MilliSecondsBetween(A_time, B_time)));

		GT_OrderInfo[Self.Tag].ARow := AView.DataController.FocusedRecordIndex;
		if GT_OrderInfo[Self.Tag].ARow < 0 then Exit;
		// 선택 오더 셋팅
		proc_Order_Set(AView);

		if not func_check_CallCenter then // 타사콜일경우 해당 메뉴 enable := False;
		begin
			pm_Cancel.enabled := False;                  //오더취소
      pm_ReAcc.Visible  := False;
			pm_Panelty.enabled := False;                 //배차취소(패널티)
			pm_Panelty_reservation.enabled := False;     //배차취소(패널티) + 대기
			pm_CanReAcc.enabled := False;                //오더취소 + 재접수
			pm_CanReRes.enabled := False;                //오더취소 + 대기
			pm_CanNOCX_CUST.enabled := False;            //오더취소 + 고객전화걸기
			pm_ReAccept.enabled := False;                //재접수
			pm_complete.enabled := False;                //완료
			pm_reservation.enabled := False;             //대기
			N18.enabled := False;                        //대기오더 완료 
			pm_R_termination.enabled := False;           //예약해제(접수)
			pm_Add_Insert.enabled := False;              //추가접수
      N25.Visible           := False;              //배차지연
			pm_share.enabled := False;                   //즉시공유
			mniOrderToAsk.enabled := False;              //문의로 변경
			N17.enabled := False;                        //문의 후 추가접수
			N20.enabled := False;                        //취소 후 재접수
			pm_Recon.enabled := False;                   //강제배차
			pm_smsRecon.enabled := False;                //문자배차
			pm_NearRecon.enabled := False;               //인근기사배차
			N42.enabled := False;                        //재배차
			N22.enabled := False;                        //타사배차
			pm_SMS.enabled := False;                     //독촉문자
			N14.enabled := False;                        //고객문자
			N44.enabled := False;                        //기사에 송금
			pm_Expense.enabled := False;                 //경비지급
		end else
		begin
			pm_Cancel.enabled := True;                  //오더취소
			pm_Panelty.enabled := True;                 //배차취소(패널티)
			pm_Panelty_reservation.enabled := True;     //배차취소(패널티) + 대기
			pm_CanReAcc.enabled := True;                //오더취소 + 재접수
			pm_CanReRes.enabled := True;                //오더취소 + 대기
			pm_CanNOCX_CUST.enabled := True;            //오더취소 + 고객전화걸기
			pm_ReAccept.enabled := True;                //재접수
			pm_complete.enabled := True;                //완료
			pm_reservation.enabled := True;             //대기
			N18.enabled := True;                        //대기오더 완료 
			pm_R_termination.enabled := True;           //예약해제(접수)
			pm_Add_Insert.enabled := True;              //추가접수
			pm_share.enabled := True;                   //즉시공유
			mniOrderToAsk.enabled := True;              //문의로 변경
			N17.enabled := True;                        //문의 후 추가접수
			N20.enabled := True;                        //취소 후 재접수
			pm_Recon.enabled := True;                   //강제배차
			pm_smsRecon.enabled := True;                //문자배차
			pm_NearRecon.enabled := True;               //인근기사배차
			N42.enabled := True;                        //재배차
			N22.enabled := True;                        //타사배차
			pm_SMS.enabled := True;                     //독촉문자
			N14.enabled := True;                        //고객문자
			N44.enabled := True;                        //기사에 송금
			pm_Expense.enabled := True;                 //경비지급
		end;
		tmr_dis.Enabled := False;
		PnlAuto.Visible := False;

		tmr_hint.Enabled := False;

		mniCardHistory.Visible  := UseCardBr and ( (Pos('카드',GT_OrderInfo[Self.Tag].CashType) > 0) Or (Pos('복합',GT_OrderInfo[Self.Tag].CashType) > 0) ) ;

		// 추가접수(접수권한 있을경우)
		if GT_OrderInfo[Self.Tag].Slip <> '' then
			pm_Add_Insert.Visible := (TCK_USER_PER.JON_Order = '1');

		// [메시지보내기] 본인콜센터, 다른사람등록 시 표시
    if (AView.DataController.RecordCount > 0) and (GT_OrderInfo[Self.Tag].ARow <> -1) then
    begin
      iCallCenter := AView.GetColumnByFieldName('실제등록콜센터').Index;
      sCallcenter := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, iCallCenter];
      sInId := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giReceipter];
    end;

		// 전화걸기 OCX 설치 확인 시
    if GT_OCX <> '' then
    begin
      NOCX_WOR.Visible        := True;
			NOCX_CUST.Visible       := True;
			NOCX_BLOCK.Visible      := True;
			if TCK_USER_PER.JON_CustTelReceiveBlock = '1' then
				NOCX_BLOCK.Enabled    := True
			else
				NOCX_BLOCK.Enabled    := False;
      N5.Visible              := True;
    end;

		// [기사에송금] 기사에 송금 권한 있을 경우 표시
		N44.Visible := (TCK_USER_PER.JON_BrchSendWk = '1');
		if GT_OrderInfo[Self.Tag].WkBrNo = 'G636' then      // 이지 공유 콜은 기사에 송금할수 없음.
			N44.Visible := False;   // ok
			
		if not func_check_CallCenter then // 본인 콜센터 접수건만 보이게
		begin
			if icheck_CT_Flag = 0 then
			begin
				N44.Visible := False;   // ok
			end;
		end;
		if GT_OrderInfo[Self.Tag].WkSabun = '기사NO' then
			N44.Visible := False;   // ok   //기사 사번이  '기사NO'일 경우 송금 메뉴 비활성화

		// [경비지급] 기사에 송금 권한 있을 경우 표시
		pm_Expense.Visible := (TCK_USER_PER.JON_BrchSendWk = '1');
		if GT_OrderInfo[Self.Tag].WkBrNo = 'G636' then      // 이지 공유 콜은 경비지급할수 없음.
			pm_Expense.Visible := False;   // ok
			
		if not func_check_CallCenter then // 본인 콜센터 접수건만 보이게
		begin
			if icheck_CT_Flag = 0 then
			begin
				pm_Expense.Visible := False;   // ok
			end;
		end;
		if GT_OrderInfo[Self.Tag].WkSabun = '기사NO' then
			pm_Expense.Visible := False;   // ok   //기사 사번이  '기사NO'일 경우 경비지급 메뉴 비활성화

		// [엑셀다운] 접수엑셀권한 있을 경우 표시
		if GT_USERIF.Excel_Use <> 'n' then
			pm_Excel.Visible := (TCK_USER_PER.JON_ExcelDown = '1');

		//옵션에 따라 캡션변경 20210729 KHS 팀장님 지시
		if GS_JON03DetailExcelView then 
		begin
			N37.Caption := '상세내역(현재리스트형식)';
		end else 
		begin
			N37.Caption := '상세내역(기본형식)' ;
		end;

    // 스피드 콜인경우
		btnPassToCallMart.Enabled   := (FindAllInternetExplorer('IEFrame','http://proxyd.jcallmart.com') > 0);
		btnPassToLogi.Enabled       := GT_USERIF.UseCallPass;

		btnPassToCallMart.Enabled := (GS_PRJ_AREA = 'O');

		N40.Visible := (btnPassToCallMart.Enabled or btnPassToLogi.Enabled);             //타사콜패스
		if N40.Visible then
		begin
			acc2  := AView.DataController.Values[AView.DataController.FocusedRecordIndex, giAccTime2];
			if ( GT_UserIF.HD = 'A5135' ) Or ( GT_UserIF.HD = 'A100' ) then
				N40.Enabled := _IsOverTime(acc2, 60)
			else
				N40.Enabled := _IsOverTime(acc2, 180);
		end;
  except
    on E: Exception do
		begin
			sCallcenter := 'Jon03[pm_CounselPopup]Error 1: ' + e.Message;
      Assert(False, E.Message);
      GMessagebox(PChar(sCallcenter), CDMSE);
    end;
	end;

  try
    if GT_OrderInfo[Self.Tag].Status = '' then
      GT_OrderInfo[Self.Tag].Status := 'A';

		pm_Recon.Caption := '강 제  배 차';
    case GT_OrderInfo[Self.Tag].Status[1] of
			'0'://, 'D': //접수
				begin
          pm_ReAcc.Visible  := True;
					pm_Cancel.Visible := True;
          pm_reservation.Caption := '대          기';
          pm_reservation.Visible := True;

          // 지방권 01_대전A연합 G26, 01_대전A연합 G54, 01_대전B연합 G39, 01_세종나이스 G59, 01_대전청주연합 G49 즉시공유 비활성화  신성현과장 요청  20151210 LYB
          // 지방권 06_광양연합, 06_순천연합, 06_여수연합 즉시공유 비활성화 신성현과장 요청 20160426 LYB
          if (GS_PRJ_AREA = 'O') AND
             ((GT_USERIF.ShareNo='G26') Or (GT_USERIF.ShareNo='G54') Or (GT_USERIF.ShareNo='G39') Or
              (GT_USERIF.ShareNo='G59') Or (GT_USERIF.ShareNo='G49') Or
              (GT_USERIF.ShareNo='G18') Or (GT_USERIF.ShareNo='G22') Or (GT_USERIF.ShareNo='G40') Or
              (GT_USERIF.ShareNo='G51') Or (GT_USERIF.ShareNo='G52') Or (GT_USERIF.ShareNo='G69') )then
          begin
            pm_share.Visible := False;
          end else
          begin
            pm_share.Visible := True;
					end;

          N25.Visible := True;  // 배차지연

          pm_Edit.Visible := True;
					//배차제한권한 체크 시 강제배차,문자배차 안보이게 처리 
					//타사배차추가 2017.01.31
					if TCK_USER_PER.JON_Recon <> '1' then
					begin
						pm_Recon.Visible := True;
						pm_NearRecon.Visible := True;
						N22.Visible := True;
					end;

					if TCK_USER_PER.JON_SMSRecon <> '1' then pm_smsRecon.Visible := True;
          if GT_OrderInfo[Self.Tag].WkSabun <> '' then N42.Visible := True;
					if GS_PRJ_AREA = 'S' then
					begin
						if AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giAccTime2] > StartDateTime('yyyy-mm-dd hh:nn:ss') then
						begin
							N17.Visible := IsUseOrderToAsk(GT_OrderInfo[Self.Tag].BrNo);
							mniOrderToAsk.Visible := IsUseOrderToAsk(GT_OrderInfo[Self.Tag].BrNo);
						end;
					end;

					N20.Visible := True; //문의 후 재접수
//					pm_CanReAcc.Visible := True;

					//접수오더일때만 발주지사가 AI 아웃바운드 사용지사이면 메뉴 보여줌  [39]
					if TCK_USER_PER.JON_AIBONOWRUN = '1' then  // 접수 : 리콜(배차지연콜)즉시실행 2019.08.09 KHS
					begin
						if GetAIOBKeyNumberYN(GT_OrderInfo[Self.Tag].KeyNumber) then 
						begin
							pm_AIOBNowRun.Visible := True;
						end;
					end;

					//지원금 사용여부 표시
					GS_JON03CMPSupportAmt1 := '';
					GS_JON03CMPSupportAmt2 := '';
					GS_JON03CMPSupportAmt3 := '';
					GS_JON03CMPSupportUse := GetBranchYN(scb_JON03CMPSupportUse, GT_OrderInfo[Self.Tag].BrNo) = 'y';
					if GS_JON03CMPSupportUse then    //지원금 사용여부 20210708 KHS 
					begin
						slTmp := TStringList.Create;
						Try
							slTmp.Delimiter     := ',';
							slTmp.DelimitedText := GetBranchYN(scb_JON03CMPSupportAMT, GT_OrderInfo[Self.Tag].BrNo);   //지원금 액 20210708 KHS 
							Try
								GS_JON03CMPSupportAmt1 := slTmp[0];
								GS_JON03CMPSupportAmt2 := slTmp[1];
								GS_JON03CMPSupportAmt3 := slTmp[2];
							Except
              End;
						Finally
							slTmp.Free;
						End;
						
						if StrTointDef(GS_JON03CMPSupportAmt1, 0) > 0 then 
						begin
							N_CMPSupportLine.Visible := True;
							N_CMPSupportClear.Visible := True;

							N_CMPSupportAMT1.Visible := True;
							N_CMPSupportAMT1.Caption := '지원 ' + strToMoney(GS_JON03CMPSupportAmt1) + '원 추가';
							N_CMPSupportAMT1.Hint := GS_JON03CMPSupportAmt1;
						end;
						if StrTointDef(GS_JON03CMPSupportAmt2, 0) > 0 then 
						begin
							N_CMPSupportLine.Visible := True;
							N_CMPSupportClear.Visible := True;

							N_CMPSupportAMT2.Visible := True;
							N_CMPSupportAMT2.Caption := '지원 ' + strToMoney(GS_JON03CMPSupportAmt2) + '원 추가';
							N_CMPSupportAMT2.Hint := GS_JON03CMPSupportAmt2;
						end;
						if StrTointDef(GS_JON03CMPSupportAmt3, 0) > 0 then 
						begin
							N_CMPSupportLine.Visible := True;
							N_CMPSupportClear.Visible := True;

							N_CMPSupportAMT3.Visible := True;
							N_CMPSupportAMT3.Caption := '지원 ' + strToMoney(GS_JON03CMPSupportAmt3) + '원 추가';
							N_CMPSupportAMT3.Hint := GS_JON03CMPSupportAmt3;
						end;
					end else
					begin
						N_CMPSupportLine.Visible := False;
						N_CMPSupportClear.Visible := False;

						N_CMPSupportAMT1.Visible := False;
						N_CMPSupportAMT2.Visible := False;
						N_CMPSupportAMT3.Visible := False;
					end;

					//건당보혐료 무료
					if GetBranchYN(scb_JON03CallByInsureFree, GT_OrderInfo[Self.Tag].BrNo) = 'y' then
					begin
						pmCallByInsureFree.Visible := GT_Kakao_CallByInsureFee;
							
						iCol := AView.GetColumnByFieldName('보험료무료').Index;

						if AView.DataController.Values[irow, iCol] = '보험료무료' then
						begin
							pmCallByInsureFree.Caption := 'T기사보험료무료 : 해제';
							pmCallByInsureFree.Tag := 1;
						end else
						begin
							pmCallByInsureFree.Caption := 'T기사보험료무료 : 설정';
							pmCallByInsureFree.Tag := 0;
						end;
					end;

				end;
			'1', 'B', 'C', 'M', 'D': //배차 D(운행중)
				begin
					pm_Cancel.Visible := True;
					pm_Panelty.Visible := True;
					pm_Panelty_reservation.Visible := True;
					pm_CanReAcc.Visible := True;
					pm_CanReRes.Visible := True;
					pm_complete.Visible := True;
          pm_reservation.Caption := '대          기';
					pm_reservation.Visible := True;

					if GT_OCX <> '' then
						pm_CanNOCX_CUST.Visible := True;

          mniCardReq.Visible := True;
					pm_BaeSMS.Visible := True;

          // 배차중에 문의+취소 상태 오픈 - 2020.10.13. 정회귀팀장님 요청
					if GS_PRJ_AREA = 'S' then
					begin
						if AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giAccTime2] > StartDateTime('yyyy-mm-dd hh:nn:ss') then
						begin
							N17.Visible := IsUseOrderToAsk(GT_OrderInfo[Self.Tag].BrNo);
							mniOrderToAsk.Visible := IsUseOrderToAsk(GT_OrderInfo[Self.Tag].BrNo);
						end;
					end;

          if (GB_365System) Or (GB_CallLine) then pm_WkCallPass.Visible := True;

					pm_Edit.Visible := True;
          pm_SMS.Visible := True;
          pm_BoHumNo.Visible := True;
        end;
			'2': //완료
				begin
          pm_Cancel.Visible := True;
          pm_Panelty.Visible := True;
          pm_Panelty_reservation.Visible := True;
          pm_CanReAcc.Visible := True;
          pm_CanReRes.Visible := True;

					if GT_OCX <> '' then
						pm_CanNOCX_CUST.Visible := True;

          mniCardReq.Visible := True;
          pm_BaeSMS.Visible := True;

          pm_Edit.Visible := True;
					pm_SMS.Visible := True;
					pm_BoHumNo.Visible := True;

					if (GT_OrderInfo[Self.Tag].WkSabun = 'M00001') and ((GS_PRJ_AREA = 'S') or (GT_KAKAOUse)) then   //박성현팀장요청 20181031 KHS
						N42.Visible := True;
				end;
      '3': //강제
        begin
					pm_Cancel.Visible := True;
					pm_Panelty.Visible := True;
					pm_Panelty_reservation.Visible := True;
					pm_CanReAcc.Visible := True;
					pm_CanReRes.Visible := True;
					pm_complete.Visible := True;
					pm_ReconSMS.Visible := True;
          if GT_OCX <> '' then
            pm_CanNOCX_CUST.Visible := True;

          mniCardReq.Visible := True;

          pm_Edit.Visible := True;
					pm_SMS.Visible := True;
          pm_BoHumNo.Visible := True;
				end;
			'4': //문의
        begin
          pm_Cancel.Visible := false;
          pm_ReAccept.Visible := True;
					pm_reservation.Caption := '대          기';
          pm_reservation.Visible := True;

          pm_Edit.Visible := True;
					//배차제한권한 체크 시 강제배차,문자배차 안보이게 처리
					if TCK_USER_PER.JON_Recon <> '1' then
					begin
						pm_Recon.Visible := True;
						pm_NearRecon.Visible := True;	
						N22.Visible := True;
					end;
					if TCK_USER_PER.JON_SMSRecon <> '1' then
						pm_smsRecon.Visible := True;
				end;
      '5': //대기
        begin
					pm_Cancel.Visible := True;
					pm_reservation.Caption := '대 기  해 제';
          pm_reservation.Visible := True;

          mniCardReq.Visible := True;

          pm_Edit.Visible := True;
          //배차제한권한 체크 시 강제배차,문자배차 안보이게 처리
					if TCK_USER_PER.JON_Recon <> '1' then
					begin
						pm_Recon.Visible := True;
						pm_NearRecon.Visible := True;
						N22.Visible := True;	
					end;
					if TCK_USER_PER.JON_SMSRecon <> '1' then
						pm_smsRecon.Visible := True;

          pm_SMS.Visible := True;

					if AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giAccTime2] > StartDateTime('yyyy-mm-dd hh:nn:ss') then
					begin
						if GS_PRJ_AREA = 'S' then
						begin
							N17.Visible := IsUseOrderToAsk(GT_OrderInfo[Self.Tag].BrNo);
						end;
						mniOrderToAsk.Visible := IsUseOrderToAsk(GT_OrderInfo[Self.Tag].BrNo);
					end;

          if GT_OrderInfo[Self.Tag].WkSabun <> '' then
						N42.Visible := True;

					N18.Visible := True;
        end;
      '8': //취소
        begin
					pm_ReAccept.Visible := True;
          pm_reservation.Caption := '대          기';
          pm_reservation.Visible := True;

          pm_Edit.Visible := True;
					//배차제한권한 체크 시 강제배차,문자배차 안보이게 처리
					if TCK_USER_PER.JON_Recon <> '1' then
					begin
						pm_Recon.Visible := True;
						pm_NearRecon.Visible := True;
						N22.Visible := True;
					end;
					if TCK_USER_PER.JON_SMSRecon <> '1' then
						pm_smsRecon.Visible := True;
					if AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giAccTime2] > StartDateTime('yyyy-mm-dd hh:nn:ss') then
					begin
						if GS_PRJ_AREA = 'S' then
						begin
							N17.Visible := IsUseOrderToAsk(GT_OrderInfo[Self.Tag].BrNo);
						end;
						mniOrderToAsk.Visible := IsUseOrderToAsk(GT_OrderInfo[Self.Tag].BrNo);
					end;

          if GT_OrderInfo[Self.Tag].WkSabun <> '' then
            N42.Visible := True;

          if GB_365System then    // 원주 365는 취소상태일경우 아래 배차메뉴 숨김처리
          begin
            pm_Recon.Visible := False;           // 강제배차
            pm_smsRecon.Visible := False;        // 문자배차
            pm_NearRecon.Visible := False;       // 인근기사배차
            N42.Visible := False;                // 재배차
            N22.Visible := False;                // 타사배차
          end;
        end;
      'R': // 예약
        begin
          pm_Cancel.Visible := True;
          pm_reservation.Caption := '대          기';
          pm_reservation.Visible := True;
          pm_R_termination.Visible := True;

					pm_Edit.Visible := True;
          pm_Recon.Caption := '예 약  배 차';
					//배차제한권한 체크 시 강제배차,문자배차 안보이게 처리
					if TCK_USER_PER.JON_Recon <> '1' then
					begin
						pm_Recon.Visible := True;
						pm_NearRecon.Visible := True;	
						N22.Visible := True;
					end;
					if TCK_USER_PER.JON_SMSRecon <> '1' then
						pm_smsRecon.Visible := True;

					if GT_OrderInfo[Self.Tag].WkSabun <> '' then
            N42.Visible := True;
        end;
    end;

    pm_CanReAcc.Caption := IfThen(GB_JONLIST_RETRY_NOSHOW, '재   접    수', '오더취소+재접수');
		pm_CanReRes.Caption := IfThen(GB_JONLIST_READY_NOSHOW, '대         기', '오더취소+대기');

		// 강제배차/문자배차 연합설정 제한(cdms_share_group.office_baecha_yn)
		pm_Recon.Visible := pm_Recon.Visible and IsUseOfficeBaecha(GT_OrderInfo[Self.Tag].BrNo);
		pm_NearRecon.Visible := pm_Recon.Visible;
		pm_smsRecon.Visible := pm_smsRecon.Visible and IsUseOfficeBaecha(GT_OrderInfo[Self.Tag].BrNo);

    // 구분자 제거
    PopVis := False;
    for I := 0 to pm_Counsel.Items.Count -  1 do
		begin
      if pm_Counsel.Items[I].Caption = '-' then
			begin
				pm_Counsel.Items[I].Visible := PopVis;
        PopVis := False;
      end
      else if pm_Counsel.Items[I].Visible then
				PopVis := True;
    end;
		mniCardReq.Visible      := UseCardBr and ( (Pos('카드',GT_OrderInfo[Self.Tag].CashType) > 0) Or (Pos('복합',GT_OrderInfo[Self.Tag].CashType) > 0) ) ;

		if Copy(GT_OrderInfo[Self.Tag].UserId, 1, 4) = '*AI-' then AI1.Visible := True
    else
    begin
      AI1.Visible := GT_OrderInfo[Self.Tag].AiRec;
    end;

		C_time := Now;
		SetDebugeWrite('B - C Time: '+ inttostr(MilliSecondsBetween(B_time, C_time)));
		SetDebugeWrite('A - B Time: '+ inttostr(MilliSecondsBetween(A_time, C_time)));

		pm_Kakao.Visible := False;
		pm_KakaoLine.Visible := False;
		if (GT_OrderInfo[Self.Tag].WkSabun = 'M00001') and ((GS_PRJ_AREA = 'S') Or (GT_KAKAOUse)) then
		begin
//			N44.enabled := False; //기사에 송금 //허용요청 20181109KHS 박성현팀장
			N21.enabled := False; //패널티조회

			pm_Kakao.Visible := True;
			pm_KakaoLine.Visible := True;
			pm_Expense.enabled := False ;      //카카오기사에겐 경비지급 메뉴 비활성화
		end;

		//경남 A2228 본사관리자, 상담원 엑셀다운권한 막음. 정회귀팀장요청 20190323KHS
		if (GS_PRJ_AREA = 'O') and ( GT_UserIF.HD = 'A2228') and ((GT_UserIF.LV = '60') or (GT_UserIF.LV = '10')) then
			pm_Excel.Visible := False;

		//카카오기사에겐 경비지급 메뉴 비활성화
		if (Copy(GT_OrderInfo[Self.Tag].WkSabun, 1, 2) = 'K-') and ((GS_PRJ_AREA = 'S') or (GT_KAKAOUse)) then
		begin
			pm_Expense.enabled := False ;
		end;

//    if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
//    if GT_SERVICE_TYPE_CHANGE then  //일반콜 전환 가능 여부 20210630 KHS
		if GetBranchYN(scb_SERVICE_TYPE_CHANGE, GT_OrderInfo[Self.Tag].BrNo) = 'y' then
		begin
			if GT_OrderInfo[Self.Tag].CuGubun = '법인' then
      begin
        case GT_OrderInfo[Self.Tag].Status[1] of
					'0': begin             // 접수상태
                 if ( Pos(_SERVICE_TYPE_VIP, GT_OrderInfo[Self.Tag].Bigo3) = 1 ) And
                    ( Pos(_SERVICE_TYPE_CHANGE, GT_OrderInfo[Self.Tag].Bigo3) <> 1 ) then
                 begin
                   N10.Visible := True;
                   pmCallChange.Visible := True;            // 프리미엄콜 일반콜 전환
                   mniSepCard.Visible := True;
                 end;
               end;
					'1', 'B', 'C', 'M', 'D': //배차 D(운행중)
  	      		 begin
                 N10.Visible := True;
                 pmNoShow.Visible := True;                // 노쇼 완료
                 mniSepCard.Visible := True;
               end;
				end;
      end;
    end;

	except
    on E: Exception do
    begin
      sCallcenter := 'Jon03[pm_CounselPopup]Error 2: ' + e.Message;
      Assert(False, E.Message);
      GMessagebox(PChar(sCallcenter), CDMSE);
    end;
	end;
end;

procedure TFrm_JON03.pm_EditClick(Sender: TObject);
var
  AView: TcxGridDBTableView;
  ARow: Integer;
  FirstDatetime: string;
  startTick, delta : DWord;
begin
  SetDebugeWrite('JON03.pm_EditClick Start');
  startTick := GetTickCount;

  if not IsRunMenuShortCut(TMenuItem(Sender)) then Exit;

  try
    GB_MODIFY_ST := True;
    try
      AView := GetCurrentView;
      if AView.DataController.FocusedRecordIndex < 0 then Exit;

			if AView.DataController.RecordCount = 0 then
      begin
        GB_JON03SELECT_GB := True;
        Exit;
      end;

      if IsMenuOpen(Sender) then Exit;

      tmr_dis.Enabled := False;
      PnlAuto.Visible := False;

      if (Trim(GT_OrderInfo[Self.Tag].Slip) <> '') and (Trim(GT_OrderInfo[Self.Tag].KeyNumber) <> '') then
      begin
        if (TCK_USER_PER.JON_Order = '1') and func_check_CallCenter then
        begin
          ARow := AView.DataController.FocusedRecordIndex;
          if ARow > -1 then
          begin
            if Assigned(AView.GetColumnByFieldName('접수시간2')) then
            begin
              FirstDatetime := AView.DataController.Values[ARow, giAccTime2];
              Frm_Main.AcceptFromCreate(GT_OrderInfo[Self.Tag].Slip, FirstDatetime, '수정', Self.Tag);
            end;
          end;
        end else
        begin
          GB_JON03SELECT_GB := True;
          N12Click(N12);
        end;
      end;
    finally
			GB_MODIFY_ST := False;
      delta := GetTickCount - startTick;
      if ( GT_USERIF.ID = 'sntest' ) or ( GT_USERIF.ID = 'kdtest' ) then Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].cxTBubinMemo.Text := Format('%d', [delta]);
      SetDebugeWrite(Format('JON03.pm_EditClick End = %d', [delta]));
    end;
  except on E: Exception do
    begin
      GB_MODIFY_ST := False;;
      Assert(False, 'pm_EditClick Error : ' + GT_OrderInfo[Self.Tag].Slip + '-' + E.Message);
    end;
  end;
end;

procedure TFrm_JON03.pm_ExpenseClick(Sender: TObject);
var
	i, iIndex: integer;
	sTmp: string;
	sCustTel: string;
begin
	SetDebugeWrite('JON03.pm_ExpenseClick');
  if IsOtherBranchCall(Sender) then Exit;
  if IsMenuOpen(Sender) then Exit;

	try
		if ( Not Assigned(Frm_JON62) ) Or ( Frm_JON62 = NIl ) then Frm_JON62 := TFrm_JON62.Create(Nil);
		Frm_JON62.Jon03Tag := Self.Tag;
		Frm_JON62.pJON62Dock.bUnDock := pJON03Dock.bUnDock;
		Frm_JON62.pJON62Dock.HdNo    := pJON03Dock.HdNo;
		Frm_JON62.pJON62Dock.BrNo    := pJON03Dock.BrNo;
		Frm_JON62.pJON62Dock.BrName  := pJON03Dock.BrName;
		Frm_JON62.pJON62Dock.Gubun   := pJON03Dock.Gubun;
		Frm_JON62.pJON62Dock.Idx     := pJON03Dock.Idx;
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    begin
			Frm_JON62.cb_Branch.Properties.Items.Clear;
			if mLEFT_SectionIndex = 0 then
			begin
				for i := 0 to scb_BranchCode.Count - 1 do
					Frm_JON62.cb_Branch.Properties.Items.Add('[' + scb_BranchCode[i] + ']' + scb_BranchName[i]);
				iIndex := scb_BranchCode.IndexOf(GT_OrderInfo[Self.Tag].BrNo);
			end else
			begin
				for i := 0 to scb_FamilyBrCode.Count - 1 do
					Frm_JON62.cb_Branch.Properties.Items.Add('[' + scb_FamilyBrCode[i] + ']' + scb_FamilyBrName[i]);
				iIndex := scb_FamilyBrCode.IndexOf(GT_OrderInfo[Self.Tag].BrNo);
			end;
			Frm_JON62.cb_Branch.ItemIndex := iIndex;

			
    end else
    begin
			Frm_JON62.cb_Branch.Properties.Items.Clear;
      for i := 0 to scb_BranchCode.Count - 1 do
				Frm_JON62.cb_Branch.Properties.Items.Add('[' + scb_BranchCode[i] + ']' + scb_BranchName[i]);
      iIndex := scb_BranchCode.IndexOf(GT_OrderInfo[Self.Tag].BrNo);
			Frm_JON62.cb_Branch.ItemIndex := iIndex;
    end;

		Frm_JON62.edt2.Text := GT_OrderInfo[Self.Tag].BrNo;
		Frm_JON62.edtWkName.Text := GT_OrderInfo[Self.Tag].WkName;
		Frm_JON62.edtWkSabun.Text := GT_OrderInfo[Self.Tag].WkSabun;
		Frm_JON62.edtConfSlip.Text  := GT_OrderInfo[Self.Tag].Slip;

    sCustTel := GT_OrderInfo[Self.Tag].CustTel;
		if ((TCK_USER_PER.JON_CustMaking2 = '1') or (TCK_USER_PER.JON_Cust2Modify = '1') Or (TCK_USER_PER.JON_CustM2Modify = '1')) And (func_check_CallCenter) then
    begin
      sCustTel := GT_OrderInfo[Self.Tag].CustTel1;
		end;
    if GT_OrderInfo[Self.Tag].CustTel22 <> '' then
			sCustTel := GT_OrderInfo[Self.Tag].CustTel22;

    Frm_JON62.edtPhoneNo.Text   := sCustTel;

		Frm_JON62.Edit1.Text := GT_OrderInfo[Self.Tag].WkHdNo;
		Frm_JON62.Edit10.Text := GT_OrderInfo[Self.Tag].WkBrNo;
		Frm_JON62.Edit13.Text := func_search_hdNo(GT_OrderInfo[Self.Tag].BrNo);
		Frm_JON62.Edit15.Text := GT_OrderInfo[Self.Tag].Slip;
		Frm_JON62.edtHdnOrderDate.Text := GT_OrderInfo[Self.Tag].AccTime;
		sTmp := StringReplace(GT_OrderInfo[Self.Tag].Expense, ',', '', [rfReplaceAll]);
		Frm_JON62.edt_AddCash.value := strToIntDef(sTmp,0);
		Frm_JON62.Show;
		Frm_JON62.edt_AddCash.SetFocus;
    pm_Expense.Enabled := False;
  except
    on E: Exception do
    begin
      N44.Enabled := True;
      Assert(False, E.Message);
			sTmp := 'Jon03[N44Click]Error : ' + e.Message;
			GMessagebox(PChar(sTmp), CDMSE);
    end;
  end;
end;

procedure TFrm_JON03.pm_FontClick(Sender: TObject);
begin
  SetDebugeWrite('JON03.pm_FontClick');
  try
    if ( not Assigned(Frm_SETA1) ) Or ( Frm_SETA1 = Nil ) then Frm_SETA1 := TFrm_SETA1.Create(nil);
    Frm_SETA1.Show;
    Frm_SETA1.SetOption(2);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pm_InsungCallPassClick(Sender: TObject);
begin
	SetDebugeWrite('JON03.pm_InsungCallPassClick');
  try
  	CallPassToInsung(GT_OrderInfo[Self.Tag].CustTel1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pm_kakaoClick(Sender: TObject);
var	IE: variant;
begin
	try
		IE := CreateOleObject('InternetExplorer.Application');
		IE.left := 0;
		IE.top := 0;
		IE.Width := Screen.WorkAreaWidth;
		IE.Height := Screen.WorkAreaHeight;

		IE.MenuBar := False;
		IE.ToolBar := False;
		IE.StatusBar := False;

		IE.Navigate('https://service.kakaomobility.com/cs/request.html?INQRY_TY_L=INQ720&INQRY_TY_M=INQ1194845');
		IE.Visible := true;
	except
	end;
end;

procedure TFrm_JON03.pm_PaneltyClick(Sender: TObject);
var
  ls_TxLoad, ls_TxQry, sQueryTemp : string;
  rv_str: string;
  ls_rxxml: String;
  slReceive: TStringList;
  ErrCode: integer;
begin
  SetDebugeWrite('JON03.pm_PaneltyClick');
	try
  	if IsOtherBranchCall(Sender) then Exit;
    if IsMenuOpen(Sender) then Exit;

    if (GT_USERIF.SA = '02') then
    begin
      grpSetcancel_charge.Left := (Width - grpSetcancel_charge.Width) div 2;
      grpSetcancel_charge.top := (Height - grpSetcancel_charge.Height) div 2;
      ed_cancel_charge.Text := '1000';
      grpSetcancel_charge.Visible := True;
			grpSetcancel_charge.BringToFront;
      ed_cancel_charge.SetFocus;
      Exit;
    end else
    begin
      if GS_JON_WKPANELTY_CONF then
			begin
        if (GT_USERIF.SA = '01') then
        begin
          if GMessagebox('배차취소시 벌금 500원이 과금됩니다.' + #13#10 + '배차취소 하시겠습니까?', cdmsq) <> idok then
            Exit;
        end else
        begin
          if Application.MessageBox(PChar(Format('[%s(%s)] 기사님에게 취소패널티를 부여하시겠습니까?',
            [GT_OrderInfo[Self.Tag].WkName, GT_OrderInfo[Self.Tag].WkSabun])), CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
          begin
            Exit;
          end;
        end;
      end;

      ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
      fGet_BlowFish_Query(GSQ_BRNO_PANELTY, sQueryTemp);
      ls_TxQry := Format(sQueryTemp, [GT_OrderInfo[Self.Tag].WkSabun]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID,  [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'PNLT0001', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

      slReceive := TStringList.Create;
      try
				if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
        begin
          rv_str := slReceive[0];
          if rv_str <> '' then
          begin
            ls_rxxml := rv_str;
            Application.ProcessMessages;
            proc_recieve(ls_rxxml);
          end;
        end;
      finally
        FreeAndNil(slReceive);
      end;
    end;
  except on E: Exception do
		Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pm_Panelty_reservationClick(Sender: TObject);
var
  ls_TxLoad, ls_TxQry, sQueryTemp : string;
  rv_str: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
	Msg, sSlip : string;
begin
	SetDebugeWrite('JON03.pm_Panelty_reservationClick');

	pm_Counsel.Tag := 0; //팝업 특성 초기화. 다중명령(배차취소(패널티)+대기) = 90
	pm_Panelty_reservation.Hint := ''; //다중처리 후 메세지를 넣어두는곳 초기화

  try
		bProcOK := False;
  	if IsOtherBranchCall(Sender) then Exit;
    if IsMenuOpen(Sender) then Exit;

    if (GT_USERIF.SA = '02') then
    begin
      grpSetcancel_charge.Left := (Width - grpSetcancel_charge.Width) div 2;
      grpSetcancel_charge.top := (Height - grpSetcancel_charge.Height) div 2;
      ed_cancel_charge.Text := '1000';
      grpSetcancel_charge.Visible := True;
      grpSetcancel_charge.BringToFront;
      ed_cancel_charge.SetFocus;
      Exit;
    end else
    begin
      if GS_JON_WKPANELTY_CONF then
      begin
        if (GT_USERIF.SA = '01') then
        begin
          if GMessagebox('배차취소시 벌금 500원이 과금됩니다.' + #13#10 +
            '배차취소 하시겠습니까?', cdmsq) <> idok then
						Exit;
        end else
				begin
          if Application.MessageBox(PChar(Format('[%s(%s)] 기사님에게 취소패널티를 부여하시겠습니까?',
            [GT_OrderInfo[Self.Tag].WkName, GT_OrderInfo[Self.Tag].WkSabun])), CDMSI, MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
          begin
            Exit;
					end;
        end;
      end;
      sSlip := GT_OrderInfo[Self.Tag].Slip;
			ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
			fGet_BlowFish_Query(GSQ_BRNO_PANELTY, sQueryTemp);
      ls_TxQry := Format(sQueryTemp, [GT_OrderInfo[Self.Tag].WkSabun]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID,  [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'PNLT0001', [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

      pm_Counsel.Tag := 90;

      slReceive := TStringList.Create;
      try
				if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
        begin
          rv_str := slReceive[0];
          if rv_str <> '' then
          begin
            ls_rxxml := rv_str;
            Application.ProcessMessages;
						proc_recieve(ls_rxxml);
          end;
        end;
      finally
        FreeAndNil(slReceive);
      end;
    end;
  except on E: Exception do
		Assert(False, E.Message);
  end;

  if not IsRunMenuShortCut(TMenuItem(Sender)) then
	begin
		GMessagebox(pm_Panelty_reservation.Hint, CDMSI); //배차취소만 되고 변경상태가 아닐때 차감된 메세지 추가
		Exit;
	end;

  if TMenuItem(Sender) = pm_reservation then
  begin
		if GT_OrderInfo[Self.Tag].Status[1] = '5' then
		begin
			if GS_SEARCH_DEST_NOPOI_FALSE then
			begin
				if Trim(GT_OrderInfo[Self.Tag].DEST) = '' then
				begin
					GMessagebox('[대기-대기해제] 도착지명이 없으면 대기해제가 불가능합니다.' + #13#10
										+ '[관련옵션-접수창:검색설정] 도착지 미입력시 접수/대기안됨', CDMSE);
					Exit;
				end;
			end;

			TMenuItem(Sender).Tag := 6;            //대기해제
      Msg := '대기 해제 하시겠습니까?';
			if (not GB_JONLIST_READY_NOSHOW_MSG) and (Not GB_J03_NOSHOW_MSG) then
			begin
				if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
      end;
    end else
    begin
			TMenuItem(Sender).Tag := 5;
      Msg := '대기 처리 하시겠습니까?';
			if (not GB_JONLIST_READY_NOSHOW_MSG) and (Not GB_J03_NOSHOW_MSG) then
      begin
				if Application.MessageBox(PChar(Msg), CDMSI, MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
      end;
    end;
  end;

	sleep(500);//서버 상태 반영 20191114 KHS
	// ok
  try
		if not bProcOK then
		begin
			GMessagebox('배차취소 오류가 발생하여 [대기]가 취소되었습니다. 다시 진행해주세요', CDMSE);
			exit;
		end else bProcOK := False;
		ls_TxLoad := GTx_UnitXmlLoad('C007.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'RESV000' + IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', sSlip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', '0', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunCodeString', IntToStr(TPopupMenu(Sender).Tag), [rfReplaceAll]);

		slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
				if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
      ls_TxLoad := 'Jon03[pm_CanReResClick]Error : ' + e.Message;

      GMessagebox(PChar(ls_TxLoad), CDMSE);
    end;
  end;
end;

procedure TFrm_JON03.pm_ReAccClick(Sender: TObject);
var i, iRow : integer;
	sMsg : string;
	sOrderInfo : TORDERINFO;
	sTmpLon, sTmpLat : string;
	dTmpLon, dTmpLat : Double;
	bLonLat : Boolean; //좌표유효성 검사
begin
	SetDebugeWrite('JON03.pm_ReAccClick');
	Try
		if GetCurrentView.DataController.FocusedRecordIndex < 0 then Exit;
		if not IsRunMenuShortCut(TMenuItem(Sender)) then Exit;

		//다중처리를 위한 Set 20210831  KHS
		proc_MultiChStCd;
		if FMultiOrderChange.BrNo.count > 1 then
		begin
			sMsg := IntToStr(FMultiOrderChange.BrNo.count) + '건 일괄처리(재접수-배차지연) 하시겠습니까?' + CRLF + CRLF
				+ '([예] 일괄처리, [아니오] 취소)';
			if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1) = IDYES then
			begin
				lb_ACnt.Caption := IntToStr(FMultiOrderChange.BrNo.count);
				lb_FCnt.Caption := '0';
				Gauge1.Max := FMultiOrderChange.BrNo.count;
				Gauge1.Position := 0;
				iRow := 0;
				if Gauge1.Max > 1 then
				begin
					pnl_AccStatus.Left := pnl_Main.Left + ((pnl_Main.Width - pnl_AccStatus.Width) div 2);
					pnl_AccStatus.Top := 100;
					pnl_AccStatus.Visible := True;
					pnl_AccStatus.BringToFront;
				end;
				mmo_AccStatus.Lines.Insert(0, '**일괄처리 시작**');
				for i := 0 to FMultiOrderChange.BrNo.count -1 do
				begin
					Gauge1.Position := i+1;

					bLonLat := True;
					sTmpLon := SetWGS84(FMultiOrderChange.Lon[i]);
					sTmpLat := SetWGS84(FMultiOrderChange.Lat[i]);      //037XXXXX -> 37.XXXXXXX로 변환
					dTmpLon := StrToFloatDef(sTmpLon, 0);                        //더블형으로 변환
					dTmpLat := StrToFloatDef(sTmpLat, 0);
					if (not IsGyeongNamShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo)) then
					begin
						bLonLat := PtInPolygon(dTmpLon, dTmpLat, FKOREAAREA_XY.Lon, FKOREAAREA_XY.Lat, FKOREAAREA_XY.Lon.count);
						if Not bLonLat then  //유효한 좌표가 아니면
						begin
							mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패- 출발지오류');
							Assert(False, '출발지좌표 : 접수번호-' + FMultiOrderChange.Slip[i] + '/' + '대기');
							Continue;
						end;
					end;

					if GS_SEARCH_DEST_NOPOI_FALSE then
					begin
						if Trim(FMultiOrderChange.sEnd[i]) = '' then
						begin
							mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패- 도착지오류');
							Continue;
						end;
					end;

					try
						if func_reservation(FMultiOrderChange.HdNo[i], FMultiOrderChange.BrNo[i], FMultiOrderChange.Slip[i]
															, FMultiOrderChange.Status[i], FMultiOrderChange.CashType[i], FMultiOrderChange.Deposit[i], 5, 0) then
						begin
							mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 성공');
							Inc(iRow);
							lb_FCnt.Caption := IntToStr(iRow);
							proc_Acc_Search(1, FMultiOrderChange.Slip[i], 'JON03-6M');
						end else
							mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패');
						
					except
					end;
				end;
	//			if Not GB_J03_NOSHOW_MSG then
				GMessagebox(IntToStr(iRow) + '건 일괄 재접수(배차지연)가 완료되었습니다.', CDMSE);
				if iRow = FMultiOrderChange.BrNo.count then	pnl_AccStatus.Visible := False;
			end;
		end else
		begin
			if Trim(GT_OrderInfo[Self.Tag].Slip) = '' then
			begin
				GT_OrderInfo[Self.Tag].ARow := GetCurrentView.DataController.FocusedRecordIndex;
				if GT_OrderInfo[Self.Tag].ARow < 0 then Exit;
				// 선택 오더 셋팅
				proc_Order_Set(GetCurrentView);
			end;

			sOrderInfo :=  GT_OrderInfo[Self.Tag];
			if TMenuItem(Sender) = pm_ReAcc then
			begin
				bLonLat := True;
				sTmpLon := SetWGS84(GT_OrderInfo[Self.Tag].Lon);
				sTmpLat := SetWGS84(GT_OrderInfo[Self.Tag].Lat);      //037XXXXX -> 37.XXXXXXX로 변환
				dTmpLon := StrToFloatDef(sTmpLon, 0);                        //더블형으로 변환
				dTmpLat := StrToFloatDef(sTmpLat, 0);
				if (not IsGyeongNamShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo)) then
				begin
					bLonLat := PtInPolygon(dTmpLon, dTmpLat, FKOREAAREA_XY.Lon, FKOREAAREA_XY.Lat, FKOREAAREA_XY.Lon.count);
					if Not bLonLat then  //유효한 좌표가 아니면
					begin
						GMessagebox('[출발지 좌표오류]' + #13#10 +
												'재접수(배차지연)을 할 수 없습니다.' + #13#10 +
												'출발지를 다시 검색하여 주십시오. 좌표(' + GT_OrderInfo[Self.Tag].Lon + '/' + GT_OrderInfo[Self.Tag].Lat + ')', CDMSE);
						Assert(False, '출발지좌표 : 접수번호-' + GT_OrderInfo[Self.Tag].Slip + '/' + '대기');
						Exit;
					end;
				end;

				if GS_SEARCH_DEST_NOPOI_FALSE then
				begin
					if Trim(GT_OrderInfo[Self.Tag].DEST) = '' then
					begin
						GMessagebox('[재접수(배차지연)] 도착지명이 없으면 재접수(배차지연)가 불가능합니다.' + #13#10
											+ '[관련옵션-접수창:검색설정] 도착지 미입력시 접수/대기안됨', CDMSE);
						Exit;
					end;
				end;

				try
					try
						giReAccNo := 1;
						proc_reservation(5);  // 대기
						if giReAccNo = 1 then
						begin
							Sleep(100);
							giReAccNo := 2;
							GT_OrderInfo[Self.Tag].Status := '5';  // 이전상태값을 대기로 변경
							proc_reservation(6);  // 대기해제
						end;
					finally
						giReAccNo := 0;
					end;
				except
				end;
			end;
		end;
	except On E : exception do
		Assert(False, E.Message);
	End;
end;

procedure TFrm_JON03.pm_ReAcceptClick(Sender: TObject);
var i, iRow : integer;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_MSG_Err, ls_ClientKey, sMsg: string;
	ls_TxLoad: string;
	rv_str: string;
	ls_rxxml: String;
	slReceive: TStringList;
	ErrCode: integer;
	sTmpLon, sTmpLat : string;
	dTmpLon, dTmpLat : Double;
	bLonLat : Boolean; //좌표유효성 검사
begin
	SetDebugeWrite('JON03.pm_ReAcceptClick');
	Try
		//다중처리를 위한 Set 20210831  KHS
		proc_MultiChStCd;
		if FMultiOrderChange.BrNo.count > 1 then
		begin

			sMsg := IntToStr(FMultiOrderChange.BrNo.count) + '건 일괄처리(재접수) 하시겠습니까?' + CRLF + CRLF
				+ '([예] 일괄처리, [아니오] 취소)';
			if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1) = IDYES then
			begin
				lb_ACnt.Caption := IntToStr(FMultiOrderChange.BrNo.count);
				lb_FCnt.Caption := '0';
				Gauge1.Max := FMultiOrderChange.BrNo.count;
				Gauge1.Position := 0;
				iRow := 0;
				if Gauge1.Max > 1 then
				begin
					pnl_AccStatus.Left := pnl_Main.Left + ((pnl_Main.Width - pnl_AccStatus.Width) div 2);
					pnl_AccStatus.Top := 100;
					pnl_AccStatus.Visible := True;
					pnl_AccStatus.BringToFront;
				end;
				mmo_AccStatus.Lines.Insert(0, '**일괄처리 시작**');
				for i := 0 to FMultiOrderChange.BrNo.count -1 do
				begin
					Gauge1.Position := i+1;

					bLonLat := True;
					sTmpLon := SetWGS84(FMultiOrderChange.Lon[i]);
					sTmpLat := SetWGS84(FMultiOrderChange.Lat[i]);      //037XXXXX -> 37.XXXXXXX로 변환
					dTmpLon := StrToFloatDef(sTmpLon, 0);                        //더블형으로 변환
					dTmpLat := StrToFloatDef(sTmpLat, 0);

					if (not IsGyeongNamShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo)) then
					begin
						bLonLat := PtInPolygon(dTmpLon, dTmpLat, FKOREAAREA_XY.Lon, FKOREAAREA_XY.Lat, FKOREAAREA_XY.Lon.count);
						if Not bLonLat then  //유효한 좌표가 아니면
						begin
							mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패- 출발지오류');
							Assert(False, '출발지좌표 : 접수번호-' + FMultiOrderChange.Slip[i] + '/' + '대기');
							continue;
						end;
					end;

					if GS_SEARCH_DEST_NOPOI_FALSE then
					begin
						if Trim(FMultiOrderChange.sEnd[i]) = '' then
						begin
							mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패- 도착지오류');
							continue;
						end;
					end;

					if IsOtherBranchCall(Sender) then continue;

					if ( (Pos('후불', FMultiOrderChange.CashType[i]) > 0) Or
							 (Pos('즉후', FMultiOrderChange.CashType[i]) > 0) Or
							 (Pos('법후', FMultiOrderChange.CashType[i]) > 0) ) then // 후불오더 캐쉬부족 체크..
					begin
						gTmp := ''; gTmp_HD := ''; gTmp_BR := ''; gTmp_Slip := '';
						gTmp_BR := FMultiOrderChange.BrNo[i];
						gTmp_HD := FMultiOrderChange.HdNo[i];
						gTmp_Slip := FMultiOrderChange.Slip[i];

						if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A1747') and (gTmp_BR = 'S954') then
						begin
							if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, StrToIntDef(FMultiOrderChange.Deposit[i], 0), 0, gBrCharge, gBrSumCharge) then
							begin
								mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패- 지사캐쉬부족');
								continue;
							end;
						end	else
						if (GS_PRJ_AREA <> 'S') and ((GT_USERIF.ShareNo = 'G91') or (GT_USERIF.ShareNo = 'G58') or (gTmp_HD = 'A100') ) then
						begin
							if (GS_PRJ_AREA <> 'S') and ((gTmp_HD = 'A1891') or (gTmp_HD = 'A1897') or (gTmp_HD = 'A1756') or
																					 (gTmp_HD = 'A1763') or (gTmp_HD = 'A1768') or (gTmp_HD = 'A1757') or
																					 (gTmp_HD = 'A1844') or (gTmp_HD = 'A1752') or (gTmp_HD = 'A1853') or
																					 (gTmp_HD = 'A1771') or (gTmp_HD = 'A1822') or (gTmp_HD = 'A1753') or
																					 (gTmp_HD = 'A1866') or (gTmp_HD = 'A2014') or (gTmp_HD = 'A2010') or
																					 (gTmp_HD = 'A1769') or (gTmp_HD = 'A1772') or (gTmp_HD = 'A1905') or
																					 (gTmp_HD = 'A1946') or (gTmp_HD = 'A1764') or (gTmp_HD = 'A1879') or
																					 (gTmp_HD = 'A1948')) then
							begin
								if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, StrToIntDef(FMultiOrderChange.Deposit[i], 0), -50000, gBrCharge, gBrSumCharge) then
								begin
									mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패- 지사캐쉬부족');
									continue;
								end;
							end else
							if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A1745') then
							begin
								if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, StrToIntDef(FMultiOrderChange.Deposit[i], 0), -100000, gBrCharge, gBrSumCharge) then
								begin
									mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패- 지사캐쉬부족');
									continue;
								end;
							end	else
							if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A2195') and (gTmp_BR = 'U589') then       //20170323 이명재대리요청
							begin
								if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, StrToIntDef(FMultiOrderChange.Deposit[i], 0), 100000, gBrCharge, gBrSumCharge) then
								begin
									mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패- 지사캐쉬부족');
									continue;
								end;
							end else
							begin
								if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, StrToIntDef(FMultiOrderChange.Deposit[i], 0), -100000, gBrCharge, gBrSumCharge) then
								begin
									mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패- 지사캐쉬부족');
									continue;
								end;
							end;
						end else
						begin
							if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, StrToIntDef(FMultiOrderChange.Deposit[i], 0), 0, gBrCharge, gBrSumCharge) then
							begin
								mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패- 지사캐쉬부족');
								continue;
							end;
						end;
					end;

					ls_TxLoad := GTx_UnitXmlLoad('C008.XML');
					ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0008', [rfReplaceAll]);

					ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', FMultiOrderChange.Slip[i], [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', FMultiOrderChange.Status[i], [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaYnString', 'n', [rfReplaceAll]);  // 재접수시 근배 여부 (y/n)

					slReceive := TStringList.Create;
					try
						if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
						begin
							rv_str := slReceive[0];
							if rv_str <> '' then
							begin
								ls_rxxml := rv_str;
								Application.ProcessMessages;
								xdom := ComsDomDocument.Create;
								try
									if not xdom.loadXML(ls_rxxml) then Exit;
									ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
									if ('0000' = ls_MSG_Err) then
									begin
										mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 성공');
										Inc(iRow);
										lb_FCnt.Caption := IntToStr(iRow);
										proc_Acc_Search(1, FMultiOrderChange.Slip[i], 'JON03-5' + Copy('CANC0008', 5, 4));
									end else
										mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패');
								finally
									xdom := Nil;
								end;
							end;
						end;
					finally
						FreeAndNil(slReceive);
					end;
				end;
	//			if Not GB_J03_NOSHOW_MSG then
				GMessagebox(IntToStr(iRow) + '건 일괄 재접수가 완료되었습니다.', CDMSE);
				if iRow = FMultiOrderChange.BrNo.count then	pnl_AccStatus.Visible := False;
			end;
		end else
		begin
			bLonLat := True;
			sTmpLon := SetWGS84(GT_OrderInfo[Self.Tag].Lon);
			sTmpLat := SetWGS84(GT_OrderInfo[Self.Tag].Lat);      //037XXXXX -> 37.XXXXXXX로 변환
			dTmpLon := StrToFloatDef(sTmpLon, 0);                        //더블형으로 변환
			dTmpLat := StrToFloatDef(sTmpLat, 0);

			if (not IsGyeongNamShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo)) then
			begin
				bLonLat := PtInPolygon(dTmpLon, dTmpLat, FKOREAAREA_XY.Lon, FKOREAAREA_XY.Lat, FKOREAAREA_XY.Lon.count);
				if Not bLonLat then  //유효한 좌표가 아니면
				begin
					GMessagebox('[출발지 좌표오류]' + #13#10 + 
											'재접수를 할 수 없습니다.' + #13#10 + 
											'출발지를 다시 검색하여 주십시오. 좌표(' + GT_OrderInfo[Self.Tag].Lon + '/' + GT_OrderInfo[Self.Tag].Lat + ')', CDMSE);
					Assert(False, '출발지좌표 : 접수번호-' + GT_OrderInfo[Self.Tag].Slip + '/' + '재접수');
					Exit;
				end;
			end;

			if GS_SEARCH_DEST_NOPOI_FALSE then
			begin
				if Trim(GT_OrderInfo[Self.Tag].DEST) = '' then
				begin
					GMessagebox('[문의-재접수] 도착지명이 없으면 재접수가 불가능합니다.' + #13#10
										+ '[관련옵션-접수창:검색설정] 도착지 미입력시 접수/대기안됨', CDMSE);
					Exit;
				end;
			end;

			if IsOtherBranchCall(Sender) then Exit;

			if ( (Pos('후불', GT_OrderInfo[Self.Tag].CashType) > 0) Or
					 (Pos('즉후', GT_OrderInfo[Self.Tag].CashType) > 0) Or
					 (Pos('법후', GT_OrderInfo[Self.Tag].CashType) > 0) ) then // 후불오더 캐쉬부족 체크..
			begin
				gTmp := ''; gTmp_HD := ''; gTmp_BR := ''; gTmp_Slip := '';
				gTmp_BR := GT_OrderInfo[Self.Tag].BrNo;
				gTmp_HD := GT_OrderInfo[Self.Tag].HdNo;
				gTmp_Slip := GT_OrderInfo[Self.Tag].Slip;

				if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A1747') and (gTmp_BR = 'S954') then
				begin
					if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, 0, gBrCharge, gBrSumCharge) then
					begin
						GMessagebox('지사캐쉬(0원미만)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
						Exit;
					end;
				end	else
				if (GS_PRJ_AREA <> 'S') and ((GT_USERIF.ShareNo = 'G91') or (GT_USERIF.ShareNo = 'G58') or (gTmp_HD = 'A100') ) then
				begin
					if (GS_PRJ_AREA <> 'S') and ((gTmp_HD = 'A1891') or (gTmp_HD = 'A1897') or (gTmp_HD = 'A1756') or
																			 (gTmp_HD = 'A1763') or (gTmp_HD = 'A1768') or (gTmp_HD = 'A1757') or
																			 (gTmp_HD = 'A1844') or (gTmp_HD = 'A1752') or (gTmp_HD = 'A1853') or
																			 (gTmp_HD = 'A1771') or (gTmp_HD = 'A1822') or (gTmp_HD = 'A1753') or
																			 (gTmp_HD = 'A1866') or (gTmp_HD = 'A2014') or (gTmp_HD = 'A2010') or
																			 (gTmp_HD = 'A1769') or (gTmp_HD = 'A1772') or (gTmp_HD = 'A1905') or
																			 (gTmp_HD = 'A1946') or (gTmp_HD = 'A1764') or (gTmp_HD = 'A1879') or
																			 (gTmp_HD = 'A1948')) then
					begin
						if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, -50000, gBrCharge, gBrSumCharge) then
						begin
							GMessagebox('지사캐쉬(-50,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
							Exit;
						end;
					end else
					if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A1745') then
					begin
						if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, -100000, gBrCharge, gBrSumCharge) then
						begin
							GMessagebox('지사캐쉬(-100,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
							Exit;
						end;
					end	else
					if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A2195') and (gTmp_BR = 'U589') then       //20170323 이명재대리요청
					begin
						if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, 100000, gBrCharge, gBrSumCharge) then
						begin
							GMessagebox('지사캐쉬가 100,000원 이하일 경우 후불로 수정할 수 없습니다.', CDMSE);
							Exit;
						end;
					end else
					begin
						if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, -100000, gBrCharge, gBrSumCharge) then
						begin
							GMessagebox('지사캐쉬(-100,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
							Exit;
						end;
					end;
				end else
				begin
					if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, 0, gBrCharge, gBrSumCharge) then
					begin
		{				gTmp := '해당지사의 캐시가 [%s]원으로 후불접수가 불가합니다' + #13#10 + #13#10
									+ '* 후불접수예정금액 : %s원' + #13#10
									+ '* 지사보유금액 : %s원' + #13#10
									+ '* 현재 후불접수합계 : %s원' + #13#10
						;
						GMessagebox(Format(gTmp, [StrToMoney(FloatToStr(gBrCharge))
																	 ,  StrToMoney(FloatToStr(GT_OrderInfo[Self.Tag].Deposit))
																	 ,  StrToMoney(FloatToStr(gBrCharge))
																	 ,  StrToMoney(FloatToStr(gBrSumCharge))]), CDMSE);
		}				gTmp := '해당지사의 캐쉬가 [%s]원으로 후불접수가 불가합니다';
						GMessagebox(Format(gTmp, [StrToMoney(FloatToStr(gBrCharge))]), CDMSE);
						Exit;
					end;
				end;
			end;

			ls_TxLoad := GTx_UnitXmlLoad('C008.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0008', [rfReplaceAll]);

			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaYnString', 'n', [rfReplaceAll]);  // 재접수시 근배 여부 (y/n)

			slReceive := TStringList.Create;
			try
				if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
				begin
					rv_str := slReceive[0];
					if rv_str <> '' then
					begin
						ls_rxxml := rv_str;
						Application.ProcessMessages;
						proc_recieve(ls_rxxml);
					end;
				end;
			finally
				FreeAndNil(slReceive);
			end;
		end;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pm_ReconSMSClick(Sender: TObject);
var
  ErrCode: integer;
  XmlData, ErrMsg: string;
begin
	SetDebugeWrite('JON03.pm_ReconSMSClick');
  try
		if not RequestBase(GetCallable05('DO_SEND_BAECHA_SMS_WORKER', 'cas.DO_SEND_BAECHA_SMS_WORKER', GT_OrderInfo[Self.Tag].Slip), XmlData, ErrCode, ErrMsg) then
    begin
			GMessagebox(Format('강제배차문자 재전송중 오류 발생' + CRLF + '[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;
		GMessagebox('강재배차문자 재전송을 완료했습니다.',CDMSI);

	except
		GMessagebox('강제배차문자 재전송중 오류가 발생했습니다.',CDMSE);
  end;
end;

procedure TFrm_JON03.pm_reservationClick(Sender: TObject);
var i, iRow, idx : integer;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_MSG_Err, ls_ClientKey: string;
	ls_TxLoad, sTmp, sMsg : string;
	sOrderInfo : TORDERINFO;
	sTmpLon, sTmpLat : string;
	dTmpLon, dTmpLat : Double;
	bLonLat : Boolean; //좌표유효성 검사
begin
	SetDebugeWrite('JON03.pm_reservationClick');
	Try
		if GetCurrentView.DataController.FocusedRecordIndex < 0 then Exit;
		if not IsRunMenuShortCut(TMenuItem(Sender)) then Exit;

		//다중처리를 위한 Set 20210831  KHS
		proc_MultiChStCd;
		if FMultiOrderChange.BrNo.count > 1 then
		begin
			sTmp := ReplaceAll(TMenuItem(Sender).Caption, ' ', '');
			sMsg := IntToStr(FMultiOrderChange.BrNo.count) + '건 일괄처리('+sTmp+') 하시겠습니까?' + CRLF + CRLF
				+ '([예] 일괄처리, [아니오] 취소)';
			if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1) = IDYES then
			begin
				lb_ACnt.Caption := IntToStr(FMultiOrderChange.BrNo.count);
				lb_FCnt.Caption := '0';
				Gauge1.Max := FMultiOrderChange.BrNo.count;
				Gauge1.Position := 0;
				iRow := 0;
				if Gauge1.Max > 1 then
				begin
					pnl_AccStatus.Left := pnl_Main.Left + ((pnl_Main.Width - pnl_AccStatus.Width) div 2);
					pnl_AccStatus.Top := 100;
					pnl_AccStatus.Visible := True;
					pnl_AccStatus.BringToFront;
				end;

				if TMenuItem(Sender).Caption = '대 기  해 제' then
				begin
					mmo_AccStatus.Lines.Insert(0, '**일괄처리 시작**');
					for i := 0 to FMultiOrderChange.BrNo.count -1 do
					begin
						Gauge1.Position := i+1;

						if FMultiOrderChange.Status[i] = '5' then //대기->대기해제
						begin
							bLonLat := True;
							sTmpLon := SetWGS84(FMultiOrderChange.Lon[i]);
							sTmpLat := SetWGS84(FMultiOrderChange.Lat[i]);      //037XXXXX -> 37.XXXXXXX로 변환
							dTmpLon := StrToFloatDef(sTmpLon, 0);                        //더블형으로 변환
							dTmpLat := StrToFloatDef(sTmpLat, 0);
							if (not IsGyeongNamShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo)) then
							begin
								bLonLat := PtInPolygon(dTmpLon, dTmpLat, FKOREAAREA_XY.Lon, FKOREAAREA_XY.Lat, FKOREAAREA_XY.Lon.count);
								if Not bLonLat then  //유효한 좌표가 아니면
								begin
									mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패- 출발지오류');
									Assert(False, '출발지좌표 : 접수번호-' + FMultiOrderChange.Slip[i] + '/' + '대기');
									Continue;
								end;
							end;

							if GS_SEARCH_DEST_NOPOI_FALSE then
							begin
								if Trim(GT_OrderInfo[Self.Tag].DEST) = '' then
								begin
									mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패- 도착지오류');
									Continue;
								end;
							end;

							try
								if func_reservation(FMultiOrderChange.HdNo[i], FMultiOrderChange.BrNo[i], FMultiOrderChange.Slip[i]
																	, FMultiOrderChange.Status[i], FMultiOrderChange.CashType[i], FMultiOrderChange.Deposit[i], 6, 1) then
								begin
									mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 성공');
									Inc(iRow);
									lb_FCnt.Caption := IntToStr(iRow);
									proc_Acc_Search(1, FMultiOrderChange.Slip[i], 'JON03-6M6');

								end else
									mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패');
							except
							end;
						end else
							mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패.대기상태 아님');

					end;
					GMessagebox(IntToStr(iRow) + '건 일괄 대기해제 처리가 완료되었습니다.', CDMSE);
					if iRow = FMultiOrderChange.BrNo.count then	pnl_AccStatus.Visible := False;
				end else
				if TMenuItem(Sender).Caption = '대          기' then
				begin
					mmo_AccStatus.Lines.Insert(0, '**일괄처리 시작**');
					for i := 0 to FMultiOrderChange.BrNo.count -1 do
					begin
						Gauge1.Position := i+1;
		//			'0', '4': //문의, '1', 'B', 'C', 'M', 'D': //배차 D(운행중), '8': //취소, 'R': // 예약
						sTmp := FMultiOrderChange.Status[i]; 
						if sTmp[1] in ['0', '4', '5', '1', 'B', 'C', 'M', 'D', '8', 'R'] then //대기로변경
						begin
							try
								if func_reservation(FMultiOrderChange.HdNo[i], FMultiOrderChange.BrNo[i], FMultiOrderChange.Slip[i]
																	, FMultiOrderChange.Status[i], FMultiOrderChange.CashType[i], FMultiOrderChange.Deposit[i], 5, 1) then
								begin
									mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 성공');
									Inc(iRow);
									lb_FCnt.Caption := IntToStr(iRow);
									proc_Acc_Search(1, FMultiOrderChange.Slip[i], 'JON03-6M5');

								end else
									mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패');
							except
							end;
						end;
					end;
					GMessagebox(IntToStr(iRow) + '건 일괄 대기 처리가 완료되었습니다.', CDMSE);
					if iRow = FMultiOrderChange.BrNo.count then	pnl_AccStatus.Visible := False;
				end;
			end;
		end else
		begin
		
			if Trim(GT_OrderInfo[Self.Tag].Slip) = '' then
			begin
				GT_OrderInfo[Self.Tag].ARow := GetCurrentView.DataController.FocusedRecordIndex;
				if GT_OrderInfo[Self.Tag].ARow < 0 then Exit;
				// 선택 오더 셋팅
				proc_Order_Set(GetCurrentView);
			end;

			sOrderInfo :=  GT_OrderInfo[Self.Tag];

			if TMenuItem(Sender) = pm_reservation then
			begin
				giReAccNo := 0;   // 재접수(배차지연)과 구분하기 위해 처리
				if GT_OrderInfo[Self.Tag].Status[1] = '5' then
				begin
					bLonLat := True;
					sTmpLon := SetWGS84(GT_OrderInfo[Self.Tag].Lon);
					sTmpLat := SetWGS84(GT_OrderInfo[Self.Tag].Lat);      //037XXXXX -> 37.XXXXXXX로 변환
					dTmpLon := StrToFloatDef(sTmpLon, 0);                        //더블형으로 변환
					dTmpLat := StrToFloatDef(sTmpLat, 0);

					if (not IsGyeongNamShare(GS_PRJ_AREA = 'O', GT_USERIF.ShareNo)) then
					begin
						bLonLat := PtInPolygon(dTmpLon, dTmpLat, FKOREAAREA_XY.Lon, FKOREAAREA_XY.Lat, FKOREAAREA_XY.Lon.count);
						if Not bLonLat then  //유효한 좌표가 아니면
						begin
							GMessagebox('[출발지 좌표오류]' + #13#10 +
													'대기해제할 수 없습니다.' + #13#10 + 
													'출발지를 다시 검색하여 주십시오. 좌표(' + GT_OrderInfo[Self.Tag].Lon + '/' + GT_OrderInfo[Self.Tag].Lat + ')', CDMSE);
							Assert(False, '출발지좌표 : 접수번호-' + GT_OrderInfo[Self.Tag].Slip + '/' + '대기');
							Exit;
						end;
					end;

					if GS_SEARCH_DEST_NOPOI_FALSE then
					begin
						if Trim(GT_OrderInfo[Self.Tag].DEST) = '' then
						begin
							GMessagebox('[대기-대기해제] 도착지명이 없으면 대기해제가 불가능합니다.' + #13#10
												+ '[관련옵션-접수창:검색설정] 도착지 미입력시 접수/대기안됨', CDMSE);
							Exit;
						end;
					end;
					if (not GB_JONLIST_READY_NOSHOW_MSG) and (Not GB_J03_NOSHOW_MSG) then
					begin
						frm_MessageBox := Tfrm_MessageBox.Create(nil);
						frm_MessageBox.Caption := '대기해제';
						frm_MessageBox.iJon03Tag := Self.Tag;
						frm_MessageBox.iPopTag := 6;
						frm_MessageBox.lbStatus.Caption := '대기 해제 하시겠습니까?';
						frm_MessageBox.ShowModal;

						if bReservationYN then
						begin
							proc_reservation(6);
						end else
						begin
							pGridSetFocus;
							Exit;
						end;
					end else
					begin
						proc_reservation(6);
					end;
				end else
				begin
					if (not GB_JONLIST_READY_NOSHOW_MSG) and (Not GB_J03_NOSHOW_MSG) then
					begin
						frm_MessageBox := Tfrm_MessageBox.Create(nil);
						frm_MessageBox.Caption := '대기처리';
						frm_MessageBox.iJon03Tag := Self.Tag;
						frm_MessageBox.iPopTag := 5;
						frm_MessageBox.lbStatus.Caption := '대기 처리 하시겠습니까?';
						frm_MessageBox.ShowModal;

						if bReservationYN then
						begin
							proc_reservation(5);
						end	else
						begin
							pGridSetFocus;
							Exit;
						end;
					end else
					begin
						proc_reservation(5);
					end;
				end;
			end;
		end;
	except On E : exception do
		Assert(False, E.Message);
	End;
end;

procedure TFrm_JON03.pm_ResetClick(Sender: TObject);
var
	ln_envfile: TIniFile;
begin
  SetDebugeWrite('JON03.pm_ResetClick');
  try
    ln_envfile := TIniFile.Create(ENVPATHFILE);
    try
      ln_envfile.EraseSection('Accept_Title');
      ln_envfile.EraseSection('Accept_Not_Title');
      ln_envfile.EraseSection('Accept_Title_Size');
    finally
      ln_envfile.Free;
    end;
		proc_Set_Grid;
  except on E: Exception do
    Assert(False, E.Message);
	end;
end;

procedure TFrm_JON03.pm_R_terminationClick(Sender: TObject);
var i, iRow : integer;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_MSG_Err, ls_ClientKey, sMsg: string;
	ls_TxLoad: string;
  rv_str: string;
  ls_rxxml: String;
  slReceive: TStringList;
  ErrCode: integer;
begin
	SetDebugeWrite('JON03.pm_R_terminationClick');

	try

		proc_MultiChStCd;
		if FMultiOrderChange.BrNo.count > 1 then
		begin
			sMsg := IntToStr(FMultiOrderChange.BrNo.count) + '건 일괄처리(예약해제(접수)) 하시겠습니까?' + CRLF + CRLF
				+ '([예] 일괄처리, [아니오] 취소)';
			if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1) = IDYES then
				begin
				lb_ACnt.Caption := IntToStr(FMultiOrderChange.BrNo.count);
				lb_FCnt.Caption := '0';
				Gauge1.Max := FMultiOrderChange.BrNo.count;
				Gauge1.Position := 0;
				iRow := 0;
				if Gauge1.Max > 1 then
				begin
					pnl_AccStatus.Left := pnl_Main.Left + ((pnl_Main.Width - pnl_AccStatus.Width) div 2);
					pnl_AccStatus.Top := 100;
					pnl_AccStatus.Visible := True;
					pnl_AccStatus.BringToFront;
				end;
				mmo_AccStatus.Lines.Insert(0, '**일괄처리 시작**');
				for i := 0 to FMultiOrderChange.BrNo.count -1 do
				begin
					Gauge1.Position := i+1;

					if not func_check_CallCenter(FMultiOrderChange.Slip[i]) then Continue;

					ls_TxLoad := GTx_UnitXmlLoad('C008.XML');
					ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0009', [rfReplaceAll]);

					ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', FMultiOrderChange.Slip[i], [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', FMultiOrderChange.Status[i], [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaYnString', 'n', [rfReplaceAll]);  // 재접수시 근배 여부 (y/n)

					slReceive := TStringList.Create;
					try
						if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
						begin
							rv_str := slReceive[0];
							if rv_str <> '' then
							begin
								ls_rxxml := rv_str;
								Application.ProcessMessages;
								xdom := ComsDomDocument.Create;
								try
									if not xdom.loadXML(ls_rxxml) then Exit;
									ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
									if ('0000' = ls_MSG_Err) then
									begin
										mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 성공');
										Inc(iRow);
										lb_FCnt.Caption := IntToStr(iRow);
										proc_Acc_Search(1, FMultiOrderChange.Slip[i], 'JON03-9' + Copy('CANC0009', 5, 4));
									end else
										mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패');
								finally
									xdom := Nil;
								end;
							end;
						end;
					finally
						FreeAndNil(slReceive);
					end;
				end;
				GMessagebox(IntToStr(iRow) + '건 일괊처리(예약해제) 되었습니다(접수되었습니다).', CDMSI);
				if iRow = FMultiOrderChange.BrNo.count then	pnl_AccStatus.Visible := False;
			end;
				
		end else
		begin
			ls_TxLoad := GTx_UnitXmlLoad('C008.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0009', [rfReplaceAll]);

			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaYnString', 'n', [rfReplaceAll]);  // 재접수시 근배 여부 (y/n)

			slReceive := TStringList.Create;
			try
				if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
				begin
					rv_str := slReceive[0];
					if rv_str <> '' then
					begin
						ls_rxxml := rv_str;
						Application.ProcessMessages;
						proc_recieve(ls_rxxml);
					end;
				end;
			finally
				FreeAndNil(slReceive);
			end;
		end;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pm_shareClick(Sender: TObject);
var i, iRow : integer;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_MSG_Err, ls_ClientKey, sMsg: string;
	ls_TxLoad: string;
  rv_str: string;
  ls_rxxml: String;
  slReceive: TStringList;
  ErrCode: integer;
begin
	SetDebugeWrite('JON03.pm_shareClick');
  if not IsRunMenuShortCut(TMenuItem(Sender)) then Exit;
  if GetCurrentView.DataController.FocusedRecordIndex < 0 then Exit;

	try
		proc_MultiChStCd;
		if FMultiOrderChange.BrNo.count > 1 then
		begin
			sMsg := IntToStr(FMultiOrderChange.BrNo.count) + '건 일괄처리(완료) 하시겠습니까?' + CRLF + CRLF
				+ '([예] 일괄처리, [아니오] 취소)';
			if Application.MessageBox(PChar(sMsg), CDMSI, MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1) = IDYES then
			begin
				lb_ACnt.Caption := IntToStr(FMultiOrderChange.BrNo.count);
				lb_FCnt.Caption := '0';
				Gauge1.Max := FMultiOrderChange.BrNo.count;
				Gauge1.Position := 0;
				iRow := 0;
				if Gauge1.Max > 1 then
				begin
					pnl_AccStatus.Left := pnl_Main.Left + ((pnl_Main.Width - pnl_AccStatus.Width) div 2);
					pnl_AccStatus.Top := 100;
					pnl_AccStatus.Visible := True;
					pnl_AccStatus.BringToFront;
				end;
				mmo_AccStatus.Lines.Insert(0, '**일괄처리 시작**');
				for i := 0 to FMultiOrderChange.BrNo.count -1 do
				begin
					Gauge1.Position := i+1;

					if not func_check_CallCenter(FMultiOrderChange.Slip[i]) then Continue;

					ls_TxLoad := GTx_UnitXmlLoad('C020.XML');
					ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'SHAR0000', [rfReplaceAll]);

					ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);

					slReceive := TStringList.Create;
					try
						if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
						begin
							rv_str := slReceive[0];
							if rv_str <> '' then
							begin
								ls_rxxml := rv_str;
								Application.ProcessMessages;
								xdom := ComsDomDocument.Create;
								try
									if not xdom.loadXML(ls_rxxml) then Exit;
									ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
									if ('0000' = ls_MSG_Err) then
									begin
										mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 성공');
										Inc(iRow);
										lb_FCnt.Caption := IntToStr(iRow);
									end else
										mmo_AccStatus.Lines.Insert(0, '*접수번호 : ' + FMultiOrderChange.Slip[i] + '>> 실패');
								finally
									xdom := Nil;
								end;
							end;
						end;
					finally
						FreeAndNil(slReceive);
					end;
				end;
				GMessagebox(IntToStr(iRow) + '건 일괊처리(즉시공유) 되었습니다.', CDMSI);
				if iRow = FMultiOrderChange.BrNo.count then	pnl_AccStatus.Visible := False;
			end;
		end else
		begin
			if IsOtherBranchCall(Sender) then Exit;

			ls_TxLoad := GTx_UnitXmlLoad('C020.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'SHAR0000', [rfReplaceAll]);

			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);

			slReceive := TStringList.Create;
			try
				if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
				begin
					rv_str := slReceive[0];
					if rv_str <> '' then
					begin
						ls_rxxml := rv_str;
						Application.ProcessMessages;
						proc_recieve(ls_rxxml);
					end;
				end;
			finally
				FreeAndNil(slReceive);
			end;
		end;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pm_SMSClick(Sender: TObject);
var iRow, i : integer;
  ls_TxLoad: string;
  ls_rxxml : String;
  ls_TxQry, rv_str, sCustTel, sQueryTemp, sSlip, sKeyNumber, sMsg, sSendTel, sSendTelB, sTmp : string;
	xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
	slReceive, slCustTel, slWkTel, ls_Rcrd : TStringList;
  ErrCode: integer;
begin
  SetDebugeWrite('JON03.pm_SMSClick');

  if Trim(GT_OrderInfo[Self.Tag].Slip) = '' then
  begin
  	GT_OrderInfo[Self.Tag].ARow := GetCurrentView.DataController.FocusedRecordIndex;
    if GT_OrderInfo[Self.Tag].ARow < 0 then Exit;
    // 선택 오더 셋팅
    proc_Order_Set(GetCurrentView);
  end;

	if IsOtherBranchCall(Sender) then Exit;
  if IsMenuOpen(Sender) then Exit;

  try
		proc_MultiChStCd;
		if FMultiOrderChange.BrNo.count > 1 then
		begin
      slCustTel := TStringList.Create; slWkTel := TStringList.Create; 
      
      Try
        for i := 0 to FMultiOrderChange.BrNo.count -1 do
        begin
          //기사사번 없으면 skip
          if FMultiOrderChange.wkSabun[i] = '' then Continue;
          //오더상태가 배차 D(운행중), 완료, 강제, 대기skip
          sTmp := FMultiOrderChange.Status[i];
					if sTmp[1] in ['0', '4', '5', '1', 'B', 'C', 'M', 'D', '8', 'R', '2', '3', '5'] then 
          else Continue;
          
          sKeyNumber := FMultiOrderChange.KeyNumber[i];

          sSlip := FMultiOrderChange.Slip[i];
          /////////////////////고객, 기사 번호 찾기////////////////////////////////////////////////////
          ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
          ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003', [rfReplaceAll]);

          ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '7', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sSlip, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '0', [rfReplaceAll]);  // 독촉문자는 당일오더만 가능

          if (GS_PRJ_AREA = 'O') and (Pos('㉹',GT_OrderInfo[Self.Tag].WkName) = 1) and (GT_USERIF.WKVPhone = 'y') then
          begin
            gbWkGubun := True;
          end else
          begin
            gbWkGubun := False;
          end;
          ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', '', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'Conf_slipString', sSlip, [rfReplaceAll]); //접수번호추가

          slReceive := TStringList.Create;
          try
            if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
            begin
              rv_str := slReceive[0];
              if rv_str <> '' then
              begin
                ls_rxxml := rv_str;
                Application.ProcessMessages;

                xdom := ComsDomDocument.Create;
                try
                  if not xdom.loadXML(ls_rxxml) then Exit;
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');

                  sCustTel := lst_Result.item[0].attributes.getNamedItem('Info1').Text;
                  gsWkHp   := lst_Result.item[0].attributes.getNamedItem('Info2').Text;
                finally
                  xdom := nil;
                end;
              end;
            end;
          finally
            FreeAndNil(slReceive);
          end;
          /////////////////////고객, 기사 번호 찾기////////////////////////////////////////////////////

          sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);
          gsCustTel := sCustTel;

          slCustTel.Add(sCustTel);
          slWkTel  .Add(gsWkHp);

          ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
          fGet_BlowFish_Query(GSQ_ACCEPT_SMS, sQueryTemp);
          ls_TxQry := Format(sQueryTemp, [gsWkHp, GT_OrderInfo[Self.Tag].BrNo]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'SMSP0001', [rfReplaceAll]);

          ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

          slReceive := TStringList.Create;
          try
            if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
            begin
              rv_str := slReceive[0];
              if rv_str <> '' then
              begin
                ls_rxxml := rv_str;
                Application.ProcessMessages;

                xdom := ComsDomDocument.Create;                                  
                if not xdom.loadXML(ls_rxxml) then Exit;
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  //독촉문자
                  ls_Rcrd := TStringList.Create;
                  try
                    GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    try
                      sMsg := ls_Rcrd[2];
                      
                      if ls_Rcrd[0] = '0' then    // '0' 접수대표번호
                        sSendTel := StringReplace(sKeyNumber, '-', '', [rfReplaceAll])
                      else
                      if ls_Rcrd[0] = '3' then    // '3' 고객번호
                      begin
                        GMessagebox('발신번호가 고객번호로 설정되어 있어 일괄전송이 불가합니다.' +#13+#10+#13+#10
                                  + '회사관리>자동SMS설정>독촉시기사에게 설정확인', CDMSE);
                        Exit;
                      end else
                        sSendTel := ls_Rcrd[0];   // '' 사용자 직접 입력

                      if (sSendTel <> sSendTelB) and (sSendTelB <> '') then
                      begin
                        GMessagebox('발신번호가 동일하지 않을경우 일괄전송이 불가합니다.' , CDMSE);
                        Exit;
                      end;
                      sSendTelB := sSendTel;

{                      sNum := ls_Rcrd[1];    // 기사번호
                      if (GS_PRJ_AREA = 'S') And (sNum = '') And ( GS_SMS_WKHP <> '' ) then
                      begin
                        sNum := GS_SMS_WKHP;
                        GS_SMS_WKHP := '';
                      end;  }
                    except
                    end;
                  finally
                    ls_Rcrd.Free;
                    xdom := Nil;
                  end;

                end else
                begin
                  GMessagebox('[독촉시 기사에게]설정 후 이용하여주십시오.' +#13+#10+#13+#10
                            + '회사관리>자동SMS설정>독촉시기사에게 설정확인', CDMSE);
                  Exit;
                end;
                
              end;
            end;
          finally
            FreeAndNil(slReceive);
          end;

        end; //for End
        
        if slWkTel.Count > 0 then 
        begin
          if Not Assigned(Frm_SMS01) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
          Frm_SMS01.mm_message.Text := sMsg;
          Frm_SMS01.ed_send.Text := sSendTel;
          Frm_SMS01.ls_sms.Items.Clear;
          Frm_SMS01.ls_sms.Items.Assign(slWkTel);
          Frm_SMS01.ed_receiver.Visible := True;
          Frm_SMS01.ed_receiver.Enabled := False;   //다중문자일 경우 입력란 비활성화
          if gbWkGubun then  //지방권 타기사 가상번호일 경우 번호입력창 비활성화
          begin
  //                    Frm_SMS01.ed_receiver.Enabled := False;
  //                    Frm_SMS01.ed_receiver.Visible := False;
  //                    Frm_SMS01.ed_receiverD.Visible := True;
          end else
          begin
  //                    Frm_SMS01.ed_receiver.Enabled := True;
  //                    Frm_SMS01.ed_receiver.Visible := True;
  //                    Frm_SMS01.ed_receiverD.Visible := False;
          end;    
          Frm_SMS01.sMemo := '[기사문자전송]';
          Frm_SMS01.Proc_Init;
          Frm_SMS01.sSendKind := '';
          Frm_SMS01.rdo_SMS.visible := False;
          Frm_SMS01.rdo_PUSH.visible := False;
          Frm_SMS01.PageControl1.ActivePageIndex := 2;     

          Frm_SMS01.pSMS01Dock.bUnDock := pJON03Dock.bUnDock;
          Frm_SMS01.pSMS01Dock.HdNo    := pJON03Dock.HdNo;
          Frm_SMS01.pSMS01Dock.BrNo    := pJON03Dock.BrNo;
          Frm_SMS01.pSMS01Dock.BrName  := pJON03Dock.BrName;
          Frm_SMS01.pSMS01Dock.Gubun   := pJON03Dock.Gubun;
          Frm_SMS01.pSMS01Dock.Idx     := pJON03Dock.Idx;
          Frm_SMS01.Show;
        
          Frm_SMS01.gslSlip.Assign(FMultiOrderChange.Slip);
          Frm_SMS01.gslWkSabun.Assign(FMultiOrderChange.WkSabun);
          Frm_SMS01.gslCustTel.Assign(slWkTel);
        end else
        begin
          GMessagebox('선택한 오더에 배차된 기사가 없습니다.', CDMSI);
          Exit;
        end;
      Finally
        slCustTel.Free; slWkTel.Free; 
      End;



      /////////////////////기사 번호 찾기
    end else //1개 선택
    begin
      ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003', [rfReplaceAll]);

      ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '7', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '0', [rfReplaceAll]);  // 독촉문자는 당일오더만 가능

      if (GS_PRJ_AREA = 'O') and (Pos('㉹',GT_OrderInfo[Self.Tag].WkName) = 1) and (GT_USERIF.WKVPhone = 'y') then
      begin
        gbWkGubun := True;
      end else
      begin
        gbWkGubun := False;
      end;
      ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', '', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'Conf_slipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]); //접수번호추가

      slReceive := TStringList.Create;
      try
        if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
        begin
          rv_str := slReceive[0];
          if rv_str <> '' then
          begin
            ls_rxxml := rv_str;
            Application.ProcessMessages;

            xdom := ComsDomDocument.Create;
            try
              if not xdom.loadXML(ls_rxxml) then Exit;
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');

              sCustTel := lst_Result.item[0].attributes.getNamedItem('Info1').Text;
              gsWkHp   := lst_Result.item[0].attributes.getNamedItem('Info2').Text;
            finally
              xdom := nil;
            end;
          end;
        end;
      finally
        FreeAndNil(slReceive);
      end;

      sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);
      gsCustTel := sCustTel;
      ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
      fGet_BlowFish_Query(GSQ_ACCEPT_SMS, sQueryTemp);
      ls_TxQry := Format(sQueryTemp, [gsWkHp, GT_OrderInfo[Self.Tag].BrNo]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'SMSP0001', [rfReplaceAll]);

      ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

      slReceive := TStringList.Create;
      try
        if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
        begin
          rv_str := slReceive[0];
          if rv_str <> '' then
          begin
            ls_rxxml := rv_str;
            Application.ProcessMessages;
            proc_recieve(ls_rxxml);
          end;
        end;
      finally
        FreeAndNil(slReceive);
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pm_TitleViewClick(Sender: TObject);
begin
  SetDebugeWrite('JON03.pm_TitleViewClick');
  try
    if ( not Assigned(Frm_SETA1) ) Or ( Frm_SETA1 = Nil ) then Frm_SETA1 := TFrm_SETA1.Create(nil);
    Frm_SETA1.Show;
    Frm_SETA1.SetOption(3);
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pm_WkCallPassClick(Sender: TObject);
begin
  pm_CancelClick(Sender);
end;

procedure TFrm_JON03.pnlMapResize(Sender: TObject);
begin
  if ( pnlMap.Width ) <= Trunc(Self.Width * 0.1)  then
  begin
    btnRSize.Visible := False;
    btnLSize.Visible := True;
  end else
  begin
    btnRSize.Visible := True;
    btnLSize.Visible := False;
  end;

	btnLSize.Top := pnlMap.Height - 43;
  btnRSize.Top := pnlMap.Height - 43;
end;

procedure TFrm_JON03.PnlOrderBoxMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  try
    Grd2MouseLeave(Sender);
  except 
  
  end;
end;

procedure TFrm_JON03.proc_check(iType: Integer);
begin
	SetDebugeWrite('JON03.proc_check');
  try
    if iType = 0 then
    begin
      rb_chk_All.Down := True;
      rb_chk_All.OnClick(rb_chk_All);
    end else
    begin
      rb_chk_All.Down := False;
      rb_chk_All.OnClick(rb_chk_All);
		end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.proc_config;
var
  I: integer;
  sTemp: string;
begin
  SetDebugeWrite('JON03.proc_config');
	try
    NOCX1.Visible := False;
    NOCX_WOR.Visible := False;
    NOCX_CUST.Visible := False;
    NOCX_BLOCK.Visible := False;
    pm_CanNOCX_CUST.Visible := False;

    GS_CallIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'cps.ini');
    FCallPassLogi := TCallPassLogi.Create(Self.Handle, edtCPLogiKeyNum, GS_CallIni);
    if (not GS_CallIni.SectionExists('L')) and (GS_EnvFile.SectionExists('CallPass')) then
    begin
      FCallPassLogi.ConfSet.sltCallmanerMNum.CommaText := GS_EnvFile.ReadString('CallPass', 'Logi-Callmaner', '');
      FCallPassLogi.ConfSet.sltLogiMainNum.CommaText   := GS_EnvFile.ReadString('CallPass', 'Logi-Logisoft',  '');
      FCallPassLogi.ConfSet.sltEtcMainNum.CommaText    := GS_EnvFile.ReadString('CallPass', 'Logi-ShortCut',  '');
      FCallPassLogi.SetOrderState(GS_EnvFile.ReadString('CallPass', 'Logi-Type', '등록'));

      for I := 0 to FCallPassLogi.ConfSet.sltEtcMainNum.Count - 1 do
        FCallPassLogi.ConfSet.sltRowNum.Add('1');
      FCallPassLogi.SetCMOrderState('대기');
      FCallPassLogi.SaveIni;

      GS_EnvFile.EraseSection('CallPass');
    end;

    if FCallPassLogi.ConfSet.sltCallmanerMNum.Count > 0 then
    begin
      grdCallPassLogi.RowCount := FCallPassLogi.ConfSet.sltCallmanerMNum.Count + 1;
      for I := 1 to grdCallPassLogi.RowCount - 1 do
      begin
        grdCallPassLogi.Cells[0, I] := FCallPassLogi.ConfSet.sltCallmanerMNum[I-1];
        grdCallPassLogi.Cells[1, I] := FCallPassLogi.ConfSet.sltEtcMainNum[I-1];
        grdCallPassLogi.Cells[2, I] := FCallPassLogi.ConfSet.sltLogiMainNum[I-1];
        grdCallPassLogi.Cells[3, I] := FCallPassLogi.ConfSet.sltRowNum[I-1];
      end;
    end;

    cbbCPLogiType.ItemIndex := cbbCPLogiType.properties.Items.IndexOf(FCallPassLogi.ConfSet.sOrdState);
    cbbCPOrderSt.ItemIndex  := cbbCPOrderSt.properties.Items.IndexOf(FCallPassLogi.ConfSet.sCmOrdSt);
  except
    on e: exception do
    begin
      sTemp := 'JON01[proc_config]:' + e.Message;
      Assert(False, E.Message);
      ShowMessage(sTemp);
		end;
	end;
end;

procedure TFrm_JON03.Proc_Initialization;
var
	i, iSortInDex, iTmp : Integer;
	sTemp, sTmp, sSortOrder : string;
	ln_envfile: TIniFile;
	slTmp : TStringList;
begin
	SetDebugeWrite('JON03.Proc_Initialization');
  Try
    if (GT_USERIF.UseCallPass) or (GT_USERIF.HD = 'A1531') then 
    begin
      btn_CPChk.visible := True;
      iTmp := cxViewCounselToday.GetColumnByFieldName('콜패스').Index;
      cxViewCounselToday.Columns[iTmp].Visible := True;
      iTmp := sg_counsel.GetColumnByFieldName('콜패스').Index;
      sg_counsel.Columns[iTmp].Visible := True;
      iTmp := sg_xlsView.GetColumnByFieldName('콜패스').Index;
      sg_xlsView.Columns[iTmp].Visible := True;
    end else
    begin
      btn_CPChk.visible := False;
      iTmp := cxViewCounselToday.GetColumnByFieldName('콜패스').Index;
      cxViewCounselToday.Columns[iTmp].Visible := False;
      iTmp := sg_counsel.GetColumnByFieldName('콜패스').Index;
      sg_counsel.Columns[iTmp].Visible := False;
      iTmp := sg_xlsView.GetColumnByFieldName('콜패스').Index;
      sg_xlsView.Columns[iTmp].Visible := False;
    end;
    gsM5006AllBrNo := ''; gsM5006OwnerBrNo := '';
    scb_BrNo_m5000 := TStringList.Create; //m5000-3006 사용자 권한지사리스트 20211015 KHS 정회귀팀장요청
    if (GT_UserIf.ID = 'm5000-3007') and (GS_PRJ_AREA = 'O') then
    begin
      pJON03Dock.GUBUN := '1';  // 지사 선택

      scb_BrNo_m5000.Delimiter := ',';
      sTmp := '''P478'',''R506'',''Y653'',''Z212'',''K066'',''K068'',''K069'',''K067'',''Z983'',''P489'','
            + '''R655'',''R658'',''K022'',''Z315'',''R660'',''R815'',''R840'',''Y662'',''W517'',''W522'','
            + '''W888'',''W899''';
      scb_BrNo_m5000.DelimitedText := StringReplace(sTmp,'''','',[rfReplaceAll]);
      gsM5006OwnerBrNo := sTmp;
      
{      sTmp := '''Z442'',''Z443'',''Z699'',''Z962'',''P493'',''R875'',''R876'',''R877'',''Q822'',''S102'','
            + '''S103'',''S104'',''Q217'',''S135'',''S156'',''S190'',''S191'',''S192'',''O704'',''R209'','
            + '''P488'',''S139'',''S320'',''S321'',''S906'',''S907'',''S908'',''O681'',''O684'',''O698'','
            + '''O699'',''O700'',''O701'',''O702'',''O703'',''O705'',''O706'',''O793'',''O837'',''O866'','
            + '''O900'',''O901'',''O902'',''O907'',''P205'',''P206'',''P508'',''R280'',''P644'',''P645'','
            + '''R666'',''S348'',''S346'',''S347'',''S195'',''P299'',''S788'',''S789'',''Y849'',''Z203'','
            + '''W494'',''W495'',''W509'',''W498'',''W496'',''W497'',''W502'',''W530'',''P136'',''P478'','
            + '''R506'',''Y653'',''Z212'',''K066'',''K068'',''K069'',''K067'',''Z983'',''P489'',''P492'','
            + '''R369'',''P494'',''K057'',''P496'',''R175'',''P497'',''P642'',''P643'',''P731'',''P733'','
            + '''Q216'',''R212'',''R573'',''S929'',''R632'',''R655'',''R658'',''K022'',''Z315'',''R659'','
            + '''R660'',''R663'',''R813'',''R759'',''R815'',''R840'',''Y662'',''R979'',''Y775'',''S337'','
            + '''S338'',''S339'',''S342'',''S340'',''S343'',''S335'',''S336'',''S341'',''R889'',''S771'','
            + '''R874'',''R890'',''R984'',''P439'',''P490'',''S794'',''Y772'',''Z316'',''U715'',''K283'','
            + '''W403'',''K174'',''Z404'',''Z698'',''W523'',''W526'',''W524'',''W525'',''W519'',''W520'','
            + '''W521'',''W501'',''K056'',''W505'',''W503'',''W517'',''W529'',''W522'',''W507'',''W527'','
            + '''W514'',''W508'',''W499'',''W500'',''W511'',''W531'',''W510'',''W512'',''W518'',''W516'','
            + '''W515'',''W528''';
}      sTmp := '''Z442'',''Z443'',''Z699'',''Z962'',''P493'',''R875'',''R876'',''R877'',''Q822'',''S102'','
            + '''S103'',''S104'',''Q217'',''S135'',''S156'',''S190'',''S191'',''S192'',''O704'',''R209'','
            + '''P488'',''S139'',''S320'',''S321'',''S906'',''S907'',''S908'','
            + '''O699'',''O700'',''O701'',''O702'',''O703'',''O705'',''O706'',''O837'',''O866'','
            + '''O900'',''O901'',''O902'',''O907'',''P205'',''P206'',''P508'',''R280'',''P644'',''P645'','
            + '''R666'',''S348'',''S346'',''S347'',''P299'',''S788'',''S789'',''Y849'',''Z203'','
            + '''W494'',''W495'',''W509'',''W498'',''W496'',''W497'',''W502'',''W530'',''P136'',''P478'','
            + '''R506'',''Y653'',''Z212'',''K066'',''K068'',''K069'',''K067'',''Z983'',''P489'',''P492'','
            + '''R369'',''P494'',''K057'',''P496'',''R175'',''P497'',''P642'',''P643'',''P731'',''P733'','
            + '''Q216'',''R212'',''R573'',''R632'',''R655'',''R658'',''K022'',''Z315'',''R659'','
            + '''R660'',''R663'',''R813'',''R759'',''R815'',''R840'',''Y662'',''R979'',''Y775'',''S337'','
            + '''S338'',''S339'',''S342'',''S340'',''S336'',''S341'','
            + '''R874'',''R984'',''P490'',''Y772'',''Z316'',''U715'',''K283'','
            + '''W403'',''K174'',''Z404'',''Z698'',''W523'',''W526'',''W524'',''W525'',''W519'',''W520'','
            + '''W521'',''W501'',''K056'',''W505'',''W503'',''W517'',''W529'',''W522'',''W507'',''W527'','
            + '''W514'',''W508'',''W499'',''W500'',''W511'',''W531'',''W510'',''W512'',''W518'',''W516'','
            + '''W515'',''W528''';

//      gsM5006AllBrNo := sTmp; 사용안함
    end;
    cxChkBC1.Tag := 0;
		FCallUpsoSearchInfo.BrNo := '';
		FCallUpsoSearchInfo.UpNo := '';
		FCallUpsoSearchInfo.SDate := '';
		FCallUpsoSearchInfo.Edate := '';
		FCallUpsoSearchInfo.Gubun := '';

		FExcelDownLog := '';
		ln_envfile := TIniFile.Create(ENVPATHFILE);
    try
			GB_JON_FINISHMSG        := ln_envfile.ReadBool('COUNSEL', 'FinishMsg', True);

      GS_ADD_RING_PATH := GS_EnvFile.ReadString('COUNSEL', 'GS_ADD_RING_PATH', '');
      if FileExists(GS_ADD_RING_PATH) then
        GS_ADD_RING_YN := GS_EnvFile.ReadBool('COUNSEL', 'GS_ADD_RING', False);

  		GS_DEL_RING_PATH := GS_EnvFile.ReadString('COUNSEL', 'GS_DEL_RING_PATH', '');
      if FileExists(GS_DEL_RING_PATH) then
        GS_DEL_RING_YN := GS_EnvFile.ReadBool('COUNSEL', 'GS_DEL_RING', False);

      GT_WK_HINT := StrToIntDef(GS_EnvFile.ReadString('MOUSE_OVER', 'WK_HINT', '0'), 0);

      GS_COUNSEL_SSEL1 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL1', True);
      GS_COUNSEL_SSEL2 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL2', True);
      GS_COUNSEL_SSEL3 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL3', True);
      GS_COUNSEL_SSEL4 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL4', True);
      GS_COUNSEL_SSEL5 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL5', True);
      GS_COUNSEL_SSEL6 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL6', True);
      GS_COUNSEL_SSEL7 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL7', True);
			GS_COUNSEL_SSEL8 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL8', True);
      GS_COUNSEL_SSEL9 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL9', False);

			GS_COUNSEL_SSEL10 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL10', True);
			cbSSEL10.Checked := GS_COUNSEL_SSEL10;
      cbSSEL10Click(cbSSEL10);
			GS_COUNSEL_SSEL11 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL11', True);

      pSetSearchViewList;
		finally
			FreeAndNil(ln_envfile);
		end;

    proc_config;

		for i := 0 to 14 do
			gaStCnt[i] := 0;

    for i := 0 to cxBubinView.ColumnCount - 1 do
			cxBubinView.Columns[i].DataBinding.ValueType := 'String';

		for i := 0 to CallBellView.ColumnCount - 1 do
			CallBellView.Columns[i].DataBinding.ValueType := 'String';

		for i := 0 to cxGridAIView.ColumnCount - 1 do
			cxGridAIView.Columns[i].DataBinding.ValueType := 'String';

		FCallBellInfo.Slip := TStringList.Create;
		FCallBellInfo.KeyNumber := TStringList.Create;
		FCallBellInfo.BrNm := TStringList.Create;
		FCallBellInfo.CuNm := TStringList.Create;
		FCallBellInfo.Start := TStringList.Create;
		FCallBellInfo.Acc2 := TStringList.Create;

		FAIInfo.Slip := TStringList.Create;
		FAIInfo.KeyNumber := TStringList.Create;
		FAIInfo.BrNm := TStringList.Create;
		FAIInfo.CuNm := TStringList.Create;
		FAIInfo.Start := TStringList.Create;
		FAIInfo.Acc2 := TStringList.Create;

		for i := 0 to GridKakaoListView.ColumnCount - 1 do
			GridKakaoListView.Columns[i].DataBinding.ValueType := 'String';
		GridKakaoListView.Columns[0].DataBinding.ValueType := 'Integer';

		sg_counsel.Tag := 1;
		proc_Set_Grid;
    sg_counsel.Tag := 0;

    dedt_Sdate.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')));
    dedt_Edate.Date := dedt_Sdate.Date + 1;
		BtnYmdClose.Click;

		cxDtStart.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')));
		cxDtEnd.Date := cxDtStart.Date + 1;

		if GS_COUNSEL_MULTICHECK then chk_MultiSearch.Checked := False
                             else chk_MultiSearch.Checked := True;

    pnlCallPass.Visible := False;

    for i := 0 to sg_xls.ColumnCount - 1 do
    begin
			sTemp := sg_xls.Columns[I].Caption;
			if (sTemp = '횟수') or (sTemp = '요금')  or (sTemp = '수수료') Or (sTemp = '카드금액') Or (sTemp = '보정요금') Or
         (sTemp = '후불금액') Or (sTemp = '마일사용') Or (sTemp = '카드요금') Or (sTemp = '현금') Or
				 (sTemp = '고객마일리지(잔여)') or (sTemp = '이벤트횟수') or (sTemp = '지급')       or (sTemp = '경비지급') or
				 (sTemp = '지원금')             or (sTemp = '기타지급금')   or (sTemp = '지원')             //20210705 KHS
			then 
				sg_xls.Columns[i].DataBinding.ValueType := 'Integer'
      else
				sg_xls.Columns[i].DataBinding.ValueType := 'String';
			if sTemp = '보험료무료' then 
			begin
				sg_xls.Columns[i].Visible := GT_Kakao_CallByInsureFee;
			end;
		end;


		cb_ManualBaecha.Down := False;
		//목포콜센타(장승호사장) ID 하드코딩 요청 20210923 KHS. 정회귀 팀장님 요청
		if (GT_UserIf.ID = 'm5000-3007') and (GS_PRJ_AREA = 'O') then
		begin	
//			cb_MyDriver.Down := True;
//			pSetSkinButton(cb_MyDriver);
			cb_MyCall.Down := True;
			pSetSkinButton(cb_MyCall);
			CB_ALL.Down := False;
			pSetSkinButton(CB_ALL);
		end else
		begin
			cb_MyCall.Down := True;
			pSetSkinButton(cb_MyCall);

			if GS_COUNSEL_ALLCHECK then CB_ALL.Down := True
														 else CB_ALL.Down := False;
			pSetSkinButton(CB_ALL);
		end;
		cb_Owner.Down := False;


    BtnAutoRe.Tag := 1;
    Image1Click(Image1);

		lg_swhere[Self.Tag] := '';
		dt_sysdate[Self.Tag] := '';
    dt_ServerTime[Self.Tag] := '';
		AAutoSearch_Time := 0;
		AAutoSearch_Flag := False;

    Edit4.Text := '';

    BtnAutoRe.Tag := 0;
		BtnAutoRe.Down := False;

    if cb_10.Checked then
    begin
      cb_10.Checked := False;
      cb_10Click(cb_10);
    end;
{
		rb_chk_All.Down := False;
		cx_chk_All.Caption := '0';
		rb_chk_AllClick(rb_chk_All);

		cb_00.Down := True;
		cx_00.Caption :=  '0';
		cb_00Click(cb_00);
		cb_01.Down := True;
		cx_01.Caption :=  '0';
		cb_00Click(cb_01);
		cb_02.Down := True;
    cx_02.Caption :=  '0';
    cb_00Click(cb_02);
		cb_08.Down := True;
    cx_08.Caption :=  '0';
    cb_00Click(cb_08);
		cb_0B.Down := True;    //배차중
    cx_0B.Caption :=  '0';
    cb_00Click(cb_0B);
		cb_0C.Down := True;    //근배
    cx_0C.Caption :=  '0';
    cb_00Click(cb_0C);
		cb_03.Down := False;
    cx_03.Caption :=  '0';
		cb_05.Down := False;
    cx_05.Caption :=  '0';
		cb_0R.Down := False;
		cx_0R.Caption :=  '0';
		cb_04.Down := False;
    cx_04.Caption :=  '0';
}
		////////////////////////////////////검색 상태 적용 20200409 KHS/////////////////////////
		cx_chk_All.Caption := '0';
		cx_00.Caption :=  '0';
		cx_01.Caption :=  '0';
		cx_0B.Caption :=  '0';
		cx_0C.Caption :=  '0';
		cx_0D.Caption :=  '0';
		cx_03.Caption :=  '0';
		cx_05.Caption :=  '0';
		cx_02.Caption :=  '0';
		cx_08.Caption :=  '0';
		cx_0R.Caption :=  '0';
		cx_04.Caption :=  '0';
		sTmp := '0|1|1|1|1|1|0|0|1|1|0|0';
		sTmp := GS_EnvFile.ReadString('COUNSEL', 'StatusBtn', sTmp);

		slTmp := TStringList.Create;
		Try
			slTmp.Delimiter     := '|';
			slTmp.DelimitedText := sTmp;

			if slTmp[0] = '1' then 
			begin
				rb_chk_All.Tag := 99;
				rb_chk_All.Down := True;
				cx_chk_All.Caption := '0';
				rb_chk_AllClick(rb_chk_All);
				rb_chk_All.Tag := 0;
			end	else
			if slTmp[0] = '0' then
			begin
				rb_chk_All.Tag := 99;
				rb_chk_All.Down := False;
				cx_chk_All.Caption := '0';
				rb_chk_AllClick(rb_chk_All);
				rb_chk_All.Tag := 0;

				cb_00.Tag := 99;
				if slTmp[1]  = '1' then begin cb_00.Down := True; cb_00Click(cb_00); end else cb_00.Down := False;
				if slTmp[2]  = '1' then begin cb_01.Down := True; cb_00Click(cb_01); end else cb_01.Down := False;
				if slTmp[3]  = '1' then begin cb_0B.Down := True; cb_00Click(cb_0B); end else cb_0B.Down := False;
				if slTmp[4]  = '1' then begin cb_0C.Down := True; cb_00Click(cb_0C); end else cb_0C.Down := False;
				if slTmp[5]  = '1' then begin cb_0D.Down := True; cb_00Click(cb_0D); end else cb_0D.Down := False;
				if slTmp[6]  = '1' then begin cb_03.Down := True; cb_00Click(cb_03); end else cb_03.Down := False;
				if slTmp[7]  = '1' then begin cb_05.Down := True; cb_00Click(cb_05); end else cb_05.Down := False;
				if slTmp[8]  = '1' then begin cb_02.Down := True; cb_00Click(cb_02); end else cb_02.Down := False;
				if slTmp[9]  = '1' then begin cb_08.Down := True; cb_00Click(cb_08); end else cb_08.Down := False;
				if slTmp[10] = '1' then begin cb_0R.Down := True; cb_00Click(cb_0R); end else cb_0R.Down := False;
				if slTmp[11] = '1' then begin cb_04.Down := True; cb_00Click(cb_04); end else cb_04.Down := False;
				cb_00.Tag := 0;
			end;
		Finally
			slTmp.Free;
    End;
		////////////////////////////////////검색 상태 적용 20200409 KHS/////////////////////////

		////////////////////////////////////검색 Sort 적용 20200409 KHS/////////////////////////
		iSortIndex := GS_EnvFile.ReadInteger('COUNSEL', 'SearchSortIndex', -1);
		if iSortIndex > -1 then
		begin
			if (GT_MAIN_VIEW_TIME1 = 1) and (iSortIndex = giAccTime) then  // 접수시간
			begin
				iSortIndex := giSlip;

				sg_counsel.Tag := 99;
				sSortOrder := GS_EnvFile.ReadString('COUNSEL', 'SearchSortOrder', 'Desc');
				if sSortOrder = 'Asc' then
					sg_counsel.Columns[iSortIndex].SortOrder := soAscending
				else if sSortOrder = 'Desc' then 
					sg_counsel.Columns[iSortIndex].SortOrder := soDescending;
				
				if sSortOrder = 'Asc' then 
					cxViewCounselToday.Columns[iSortIndex].SortOrder := soAscending
				else if sSortOrder = 'Desc' then 
					cxViewCounselToday.Columns[iSortIndex].SortOrder := soDescending;

				sg_counsel.Columns[iSortIndex].SortIndex := 0;	
				cxViewCounselToday.Columns[iSortIndex].SortIndex := 0;	

				sg_xlsView.Columns[iSortIndex].SortOrder := sg_counsel.Columns[iSortIndex].SortOrder;
				sg_xlsView.Columns[iSortIndex].SortIndex := sg_counsel.Columns[iSortIndex].SortIndex;	

				sg_counsel.Tag  := 0;
			end else
			if (iSortIndex = giStCd) then 
			begin
//				iSortIndex := sg_counsel.GetColumnByFieldName('상태정렬').Index;

				sg_counsel.Tag := 99;
				sSortOrder := GS_EnvFile.ReadString('COUNSEL', 'SearchSortOrder', 'Desc');
				if sSortOrder = 'Asc' then 
					sg_counsel.Columns[iSortIndex].SortOrder := soAscending
				else if sSortOrder = 'Desc' then 
					sg_counsel.Columns[iSortIndex].SortOrder := soDescending;
				
				if sSortOrder = 'Asc' then 
					cxViewCounselToday.Columns[iSortIndex].SortOrder := soAscending
				else if sSortOrder = 'Desc' then 
					cxViewCounselToday.Columns[iSortIndex].SortOrder := soDescending;

				if GS_EnvFile.ReadString('COUNSEL', 'StatusSort2', '') <> '' then
				begin
					sTmp := GS_EnvFile.ReadString('COUNSEL', 'StatusSort2', '');
					Try
						iSortIndex := sg_counsel.GetColumnByFieldName(sTmp).Index;
					except                  
						iSortIndex := -1;
          End;

					if iSortIndex > -1 then
					begin
						if GS_EnvFile.ReadString('COUNSEL', 'StatusSort3', '내림차순') = '내림차순' then
							sSortOrder := 'Desc'
						else
							sSortOrder := 'Asc';

						if sSortOrder = 'Asc' then 
							sg_counsel.Columns[iSortIndex].SortOrder := soAscending
						else if sSortOrder = 'Desc' then 
							sg_counsel.Columns[iSortIndex].SortOrder := soDescending;
						
						if sSortOrder = 'Asc' then 
							cxViewCounselToday.Columns[iSortIndex].SortOrder := soAscending
						else if sSortOrder = 'Desc' then 
							cxViewCounselToday.Columns[iSortIndex].SortOrder := soDescending;
					end;
				end;
				sg_counsel.Columns[iSortIndex].SortIndex := 0;	
				cxViewCounselToday.Columns[iSortIndex].SortIndex := 0;	

				sg_xlsView.Columns[iSortIndex].SortOrder := sg_counsel.Columns[iSortIndex].SortOrder;
				sg_xlsView.Columns[iSortIndex].SortIndex := sg_counsel.Columns[iSortIndex].SortIndex;	

				sg_counsel.Tag  := 0;
			end else
			begin
				sg_counsel.Tag := 99;
				sSortOrder := GS_EnvFile.ReadString('COUNSEL', 'SearchSortOrder', 'Desc');
				if sSortOrder = 'Asc' then 
					sg_counsel.Columns[iSortIndex].SortOrder := soAscending
				else if sSortOrder = 'Desc' then 
					sg_counsel.Columns[iSortIndex].SortOrder := soDescending;
				
				if sSortOrder = 'Asc' then 
					cxViewCounselToday.Columns[iSortIndex].SortOrder := soAscending
				else if sSortOrder = 'Desc' then 
					cxViewCounselToday.Columns[iSortIndex].SortOrder := soDescending;
				sg_counsel.Columns[iSortIndex].SortIndex := 0;	
				cxViewCounselToday.Columns[iSortIndex].SortIndex := 0;	

				sg_xlsView.Columns[iSortIndex].SortOrder := sg_counsel.Columns[iSortIndex].SortOrder;
				sg_xlsView.Columns[iSortIndex].SortIndex := sg_counsel.Columns[iSortIndex].SortIndex;	

				sg_counsel.Tag  := 0;
			end;
	
		end;
		////////////////////////////////////검색 Sort 적용 20200409 KHS/////////////////////////
		
		Status_bar.Panels[0].Text := '';

    try
      lb_Common0.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_00', ColorToString(clWhite));
			lb_Common1.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_01', ColorToString($00B5FFFF));
      lb_Common2.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_02', ColorToString($00FFDFDF));
      lb_Common3.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_03', ColorToString($00CEFFCE));
      lb_Common4.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_04', ColorToString($00FFFFC1));
      lb_Common5.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_05', ColorToString($00A0CFCF));
      lb_Common7.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_07', ColorToString($0093C9FF));
      lb_Common8.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_08', ColorToString($00DDDDFF));
			lb_Common9.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_0C', ColorToString($0084E3FB));   
			lb_Common10.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_0B', ColorToString($0000D9D9));
			lb_Common11.Color := GetIniColor(ENVPATHFILE, 'Status', 'CB_0D', ColorToString($00FFC78E));
		except
		end;
    try
			GS_COUNSEL_PayGubun1 := GetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun1', ColorToString(clRed));                                                //cxLabel5 = lb_Common0.Color
			GS_COUNSEL_PayGubun2 := GetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun2', ColorToString(clGreen));                                              //cxLabel6 = lb_Common1.Colo1
			GS_COUNSEL_PayGubun3 := GetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun3', ColorToString(clBlue));                                              //cxLabel7 = lb_Common2.Color
			GS_COUNSEL_PayGubun4 := GetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun4', ColorToString(clBlue));                                              //cxLabel9 = lb_Common3.Color
			GS_COUNSEL_PayGubun5 := GetIniColor(ENVPATHFILE, 'COUNSEL', 'PayGubun5', ColorToString(clPurple));                                              //cxLabel11 = lb_Common4.Color
		except
    end;
  except
    on e: exception do
    begin
      sTemp := 'JON03[Proc_Initialization]:' + e.Message;
      Assert(False, E.Message);
      ShowMessage(sTemp);
    end;
  end;
end;

procedure TFrm_JON03.proc_KakaoList(AGubun: integer);
var
	XmlData, Param, ErrMsg : string;
	ErrCode, iRow, j, k : Integer;
	ls_Rcrd, slList : TStringList;

	tmpCnt, iCnt, iSlipDate : integer;
  tmpCntStr: string;
	tmpStr: string;
	ArrSt: array of string;
	sSel06 : string;
begin
	SetDebugeWrite('TFrm_JON03.proc_KakaoList');
	if AGubun = 1 then // 카카오운행번호로 조회시
	begin
		Param := Trim(edtDriveNo.Text);
		sSel06 := 'GET_KD_A01_VIEW';
		GridKakaoListView.Columns[4].Visible := True;
		GridKakaoListView.Columns[5].Visible := True;
		GridKakaoListView.Columns[6].Visible := True;
	end else 
	begin
		sSel06 := 'GET_KD_A01_LIST';
		GridKakaoListView.Columns[4].Visible := False;
		GridKakaoListView.Columns[5].Visible := False;
		GridKakaoListView.Columns[6].Visible := False;

		//패밀리관리자 : 패밀리 본사전체 선택시  cxDtStart + '│' + cxDtEnd + '│' + ''     + '│' + ''
		//(패밀리)관리자 : 본사 선택시(기본)     cxDtStart + '│' + cxDtEnd + '│' + 'A100' + '│' + ''
		//(패밀리)관리자 : 지사 선택시           cxDtStart + '│' + cxDtEnd + '│' + 'A100' + '│' + 'B100'
		//지사관리자 :                           cxDtStart + '│' + cxDtEnd + '│' + ''     + '│' + ''
		//상담원     : 기본                      cxDtStart + '│' + cxDtEnd + '│' + ''     + '│' + ''
		//상담원     : 지사 선택시               cxDtStart + '│' + cxDtEnd + '│' + 'A100' + '│' + 'B100'
		Param := '';
		Param := FormatDateTime('YYYYMMDD', cxDtStart.Date)+'090000';
		Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEnd.Date)+'090000';

		if (GT_USERIF.lv='60') then
		begin
			if Frm_Main.JON03MNG[Self.Tag].AllSearch then  //본사전체조회
				Param := Param + '│' + '' + '│' + ''
			else
			if GT_SEL_BRNO.GUBUN <> '1' then 
			begin
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					Param := Param + '│' + GT_SEL_BRNO.HDNO + '│' + ''
				else
					Param := Param + '│' + GT_USERIF.HD + '│' + '';
			end else Param := Param + '│' + GT_SEL_BRNO.HDNO + '│' + GT_SEL_BRNO.BRNO
		end	else
		if GT_USERIF.lv = '40' then Param := Param + '│' + '' + '│' + '' else
		if GT_USERIF.lv = '10' then
		begin
			if GT_SEL_BRNO.GUBUN = '0' then   //전체
				Param := Param + '│' + '' + '│' + ''
			else
				Param := Param + '│' + GT_USERIF.HD + '│' + GT_SEL_BRNO.BRNO;
		end;
	end;
               
	Screen.Cursor := crHourGlass;
	btnSearch_Kakao.Enabled := False;
	slList := TStringList.Create;
	try
    try

			if not RequestBasePaging(GetSel06(sSel06, 'KD_A01.'+sSel06, '1000', Param), slList, ErrCode, ErrMsg) then
    	begin
				GMessagebox(Format('카카오 수주콜리스트 조회 오류' + CRLF + '[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    		Screen.Cursor := crDefault;
				btnSearch_Kakao.Enabled := True;
				Exit;
			end;

			iCnt := 1;
//			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
//			Frm_Flash.cxPBar1.Position := 0;
			GridKakaoListView.DataController.SetRecordCount(0);
			GridKakaoListView.BeginUpdate;
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.lblCnt.Visible := True;
				Frm_Flash.lblDescription.Visible := True;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
//				Application.ProcessMessages;
        xmlData := slList.Strings[j];

        if Pos('<Data Count="',xmlData)>0 then
        begin
          tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
          if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
          tmpCnt:=StrToIntDef(tmpCntStr,0);
				end;

        if tmpCnt < 1 then
        begin
					GMessagebox('검색된 내용이 없습니다.', CDMSE);
          Exit;
				end;

				ls_Rcrd := TStringList.Create;
        try
          SetLength(ArrSt,tmpCnt);
          tmpStr:=xmlData;
          tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
          tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
          tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

					if Pos('<Result Value=',XmlData)>0 then
						tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

					Frm_Flash.cxPBar1.Properties.Max := tmpCnt;
					Frm_Flash.cxPBar1.Position := 0;
					for k:=0 to tmpCnt-1 do
					begin
						Frm_Flash.cxPBar1.Position := k + 1;
						Application.ProcessMessages;
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
							ls_Rcrd.Clear;
							GetTextSeperationEx('│', ArrSt[k], ls_Rcrd);
							//A1893│[하나]영구대리│H725│가자대리운전│H894│가자대리운전│경기│안산시 상록구│본오3동│리치스빌딩│037180387│126515713│경기│수원시 장안구│정자동│동신2차아파트│037180537│126594086│20190109034524│20190109034028│20190109034524│20190109041538
							if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB   패밀리지사일때
							begin
								if not Check_ALLHD(GT_SEL_BRNO.HDNO) then      //전체지사권한이 없을때
								begin
									if scb_FamilyBrCode.IndexOf(ls_Rcrd[2]) = -1 then   //권한있는 지사일경우만 그리드표기
										continue;
								end
							end;

							iRow := GridKakaoListView.DataController.AppendRecord; // 1 Record 추가

							GridKakaoListView.DataController.Values[iRow,  0] := iRow + 1;
							GridKakaoListView.DataController.Values[iRow,  1] := ls_Rcrd[ 1];    //본사
							GridKakaoListView.DataController.Values[iRow,  2] := ls_Rcrd[ 3];    //지사
							GridKakaoListView.DataController.Values[iRow,  3] := ls_Rcrd[ 5];    //콜센터
							GridKakaoListView.DataController.Values[iRow,  4] := ls_Rcrd[22];    //콜마너사번
							GridKakaoListView.DataController.Values[iRow,  5] := ls_Rcrd[23];    //기사명
							GridKakaoListView.DataController.Values[iRow,  6] := '***-****-****';//고객연락처
							GridKakaoListView.DataController.Values[iRow,  7] := ls_Rcrd[ 6];    //출시도
							GridKakaoListView.DataController.Values[iRow,  8] := ls_Rcrd[ 7];    //출시군구
							GridKakaoListView.DataController.Values[iRow,  9] := ls_Rcrd[ 8];    //출읍면동
							GridKakaoListView.DataController.Values[iRow, 10] := ls_Rcrd[ 9];    //출POI
							GridKakaoListView.DataController.Values[iRow, 11] := ls_Rcrd[10];    //출Lon
							GridKakaoListView.DataController.Values[iRow, 12] := ls_Rcrd[11];    //출Lat
							GridKakaoListView.DataController.Values[iRow, 13] := ls_Rcrd[12];    //도시도
							GridKakaoListView.DataController.Values[iRow, 14] := ls_Rcrd[13];    //도시군구
							GridKakaoListView.DataController.Values[iRow, 15] := ls_Rcrd[14];    //도읍면동
							GridKakaoListView.DataController.Values[iRow, 16] := ls_Rcrd[15];    //도POI
							GridKakaoListView.DataController.Values[iRow, 17] := ls_Rcrd[16];    //도Lon
							GridKakaoListView.DataController.Values[iRow, 18] := ls_Rcrd[17];    //도Lat
							if ls_Rcrd[18] = '****' then
								GridKakaoListView.DataController.Values[iRow, 19] := ls_Rcrd[18]    //접수시간
							else
								GridKakaoListView.DataController.Values[iRow, 19] := GetStrToDateTimeGStr(ls_Rcrd[18],3);    //접수시간
							if ls_Rcrd[19] = '****' then
								GridKakaoListView.DataController.Values[iRow, 20] := ls_Rcrd[19]    //배차시간
							else
								GridKakaoListView.DataController.Values[iRow, 20] := GetStrToDateTimeGStr(ls_Rcrd[19],3);    //배차시간
							if ls_Rcrd[20] = '****' then
								GridKakaoListView.DataController.Values[iRow, 21] := ls_Rcrd[20]    //운행시작시간
							else
								GridKakaoListView.DataController.Values[iRow, 21] := GetStrToDateTimeGStr(ls_Rcrd[20],3);    //운행시작시간
							if ls_Rcrd[21] = '****' then
								GridKakaoListView.DataController.Values[iRow, 22] := ls_Rcrd[21]    //완료시간
							else
								GridKakaoListView.DataController.Values[iRow, 22] := GetStrToDateTimeGStr(ls_Rcrd[21],3);    //완료시간
							Inc(iCnt);
						end;
					end;
        finally
					ls_Rcrd.Free;
				end;
			end;
    finally
			GridKakaoListView.EndUpdate;
			iSlipDate := GridKakaoListView.GetColumnByFieldName('접수시간').Index ;
			GridKakaoListView.Columns[iSlipDate].SortOrder := soDescending;
			gfSetIndexNo(GridKakaoListView, iSlipDate, True);

			Frm_Flash.lblDescription.Visible := False;
			Frm_Flash.lblCnt.Visible := False;
			Frm_Flash.hide;
      FreeAndNil(slList);
			Screen.Cursor := crDefault;
			btnSearch_Kakao.Enabled := True;
    end;
	except
		on E: Exception do
		begin
			Screen.Cursor := crDefault;
			GridKakaoListView.EndUpdate;
			btnSearch_Kakao.Enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_JON03.proc_lap_time( bSort : Boolean );
	function _GetJONBell(ATime: string): Boolean;
	var
		OverMin: Integer;
		sFileName : string;
		JON03PLAYThread : TJON03PLAYThread;
	begin
		Result := False;

		OverMin := GetOverTimeMin(ATime);
		if (gJONOrderBell.Time > 0) and (gJONOrderBell.Time <= OverMin) then
		begin
			try
				JON03PLAYThread := TJON03PLAYThread.Create;
				JON03PLAYThread.FreeOnTerminate := False;
			except

			end;
			Result := True;
		end;
	end;
var
	IsSafe, IsToday: Boolean;
	i : Integer;
	BrNo, CustTel, OrderState, FirstTimeFix, AccTime2, sTemp, Name, Bigo, Bigo2, BDTime : string;
	AView: TcxGridDBTableView;
	SafeTime: Integer;
	bSoundPlay : Boolean;
begin
	SetDebugeWrite('JON03.proc_lap_time');
	AView := GetCurrentView;

	try
		bSoundPlay := false;
		//다중선택 후 자동갱신 시 선택해제를 위한 처리 20210907 KHS
		for i := AView.Controller.SelectedRowCount - 1 downto 0 do
		begin
			AView.Controller.SelectedRows[i].Selected := False;
		end;

		for i := 0 to AView.DataController.RecordCount - 1 do
		begin

			OrderState  := AView.DataController.Values[i, giStCd];
			FirstTimeFix:= AView.DataController.Values[i, giFirstTimeFix];  //형번환없는 고정값 20200514KHS
			AccTime2    := AView.DataController.Values[i, giAccTime2];
			CustTel     := AView.DataController.Values[I, giCustTel];
			BrNo        := AView.DataController.Values[I, giBrNo];
			BDTime      := AView.DataController.Values[I, giBDTimeFix];
			SafeTime    := GetCustInfoSafeMin(BrNo);
			IsToday     := GetStrToLongDateTimeStr(FirstTimeFix) > StartDateTime('yyyy-mm-dd hh:nn:ss');
      AView.DataController.Values[i, giSortTime] := '';

			// 접수경과시간
			if ( OrderState = '0' ) Or ( OrderState = '1' ) then
			begin
				if (gJONOrderBell.Use) and (not bSoundPlay) and ( OrderState = '0' ) and ( not bSort ) then
				begin
					bSoundPlay := _GetJONBell(AView.DataController.Values[i, giTime]) // 오더경과시간 벨소리
				end;

				if gJONOrderColor.Gubun = 0 then
        begin
					AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giAccTime2], dt_ServerTime[Self.Tag]);
          if gidxSortTime = giDuration then
  					AView.DataController.Values[i, giSortTime] := func_lap_timeDuration(AView.DataController.Values[i, giAccTime2], dt_ServerTime[Self.Tag], 1);
				end else
				if gJONOrderColor.Gubun = 1 then
        begin
					AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giFirstTimeFix], dt_ServerTime[Self.Tag]);
          if gidxSortTime = giDuration then
  					AView.DataController.Values[i, giSortTime] := func_lap_timeDuration(AView.DataController.Values[i, giFirstTimeFix], dt_ServerTime[Self.Tag], 1);
        end;

				if ( OrderState = '0' ) then // 배차지연시간
				begin
					AView.DataController.Values[i, giBDTime] := func_lap_timeDuration(AView.DataController.Values[i, giBDTimeFix], dt_ServerTime[Self.Tag]);
					if gidxSortTime = giBDTime then
						AView.DataController.Values[i, giSortTime] := func_lap_timeDuration(AView.DataController.Values[i, giBDTimeFix], dt_ServerTime[Self.Tag], 1);
				end;
			end;

			// 취소경과시간 - 전체 open  2021.11.30
//			if ( GB_365System ) And ( OrderState = '8' ) And ( AView.DataController.Values[i, giCancelTime] <> '' ) then
			if ( OrderState = '8' ) And ( AView.DataController.Values[i, giCancelTime] <> '' ) then
			begin
				if gJONOrderColor.Gubun = 0 then
        begin
					AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giAccTime2], AView.DataController.Values[i, giCancelTime], 1);
          if gidxSortTime = giDuration then
  					AView.DataController.Values[i, giSortTime] := func_lap_timeDuration(AView.DataController.Values[i, giAccTime2], AView.DataController.Values[i, giCancelTime], 1, 1);
				end else
				if gJONOrderColor.Gubun = 1 then
        begin
					AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giFirstTimeFix], AView.DataController.Values[i, giCancelTime], 1);
          if gidxSortTime = giDuration then
  					AView.DataController.Values[i, giSortTime] := func_lap_timeDuration(AView.DataController.Values[i, giFirstTimeFix], AView.DataController.Values[i, giCancelTime], 1, 1);
        end;
			end;

      // 완료
			if (OrderState = '2') and (FirstTimeFix <> '') then
			begin
        if ( GB_365System ) then
        begin
          // 경과시간도 표시 2020.12.08 정회귀팀장 요청
	  			if gJONOrderColor.Gubun = 0 then
          begin
		  			AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giAccTime2], AView.DataController.Values[i, giBaecha2], 1);
            if gidxSortTime = giDuration then
    					AView.DataController.Values[i, giSortTime] := func_lap_timeDuration(AView.DataController.Values[i, giAccTime2], AView.DataController.Values[i, giBaecha2], 1, 1);
			  	end else
  				if gJONOrderColor.Gubun = 1 then
          begin
	  				AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giFirstTimeFix], AView.DataController.Values[i, giBaecha2], 1);
            if gidxSortTime = giDuration then
    					AView.DataController.Values[i, giSortTime] := func_lap_timeDuration(AView.DataController.Values[i, giFirstTimeFix], AView.DataController.Values[i, giBaecha2], 1, 1);
          end;
        end;

				if GS_PASSTIMECHK = 0 then //지난시간 기준이 접수시간2 이면
        begin
					AView.DataController.Values[i, giPassTime] := func_lap_time(AccTime2, AView.DataController.Values[i, giFinishTime2], 1);
          if gidxSortTime = giPassTime then
  					AView.DataController.Values[i, giSortTime] := func_lap_time(AccTime2, AView.DataController.Values[i, giFinishTime2], 1, 1);
				end else
        begin
					AView.DataController.Values[i, giPassTime] := func_lap_time(FirstTimeFix, AView.DataController.Values[i, giFinishTime2], 1);
          if gidxSortTime = giPassTime then
  					AView.DataController.Values[i, giSortTime] := func_lap_time(FirstTimeFix, AView.DataController.Values[i, giFinishTime2], 1, 1);
        end;
			end else
			if (StrToIntDef(OrderState, 0) in [0, 1, 3, 5]) and (FirstTimeFix <> '') then
			begin
				if GS_PASSTIMECHK = 0 then //지난시간 기준이 접수시간2 이면
        begin
					AView.DataController.Values[i, giPassTime] := func_lap_time(AccTime2, dt_ServerTime[Self.Tag], 1);
          if gidxSortTime = giPassTime then
  					AView.DataController.Values[i, giSortTime] := func_lap_time(AccTime2, dt_ServerTime[Self.Tag], 1, 1);
				end else
        begin
					AView.DataController.Values[i, giPassTime] := func_lap_time(FirstTimeFix, dt_ServerTime[Self.Tag], 1);
          if gidxSortTime = giPassTime then
  					AView.DataController.Values[i, giSortTime] := func_lap_time(FirstTimeFix, dt_ServerTime[Self.Tag], 1, 1);
        end;
			end;

			// 배차 후 경과시간
			if ((OrderState = '1') Or (OrderState = '3') Or (OrderState = 'B') Or (OrderState = 'D')) and
          (AView.DataController.Values[i, giBaecha2] <> '') then
			begin
				AView.DataController.Values[i, giPassBaecha] := func_lap_time(AView.DataController.Values[i, giBaecha2], dt_ServerTime[Self.Tag], 1);
        if gidxSortTime = giPassBaecha then
 					AView.DataController.Values[i, giSortTime] := func_lap_time(AView.DataController.Values[i, giBaecha2], dt_ServerTime[Self.Tag], 1, 1);

        // 경과시간도 표시 2020.12.08 정회귀팀장 요청
				if gJONOrderColor.Gubun = 0 then
        begin
					AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giAccTime2], AView.DataController.Values[i, giBaecha2], 1);
          if gidxSortTime = giDuration then
 	  				AView.DataController.Values[i, giSortTime] := func_lap_timeDuration(AView.DataController.Values[i, giAccTime2], AView.DataController.Values[i, giBaecha2], 1, 1);
				end else
				if gJONOrderColor.Gubun = 1 then
        begin
					AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giFirstTimeFix], AView.DataController.Values[i, giBaecha2], 1);
          if gidxSortTime = giDuration then
 	  				AView.DataController.Values[i, giSortTime] := func_lap_timeDuration(AView.DataController.Values[i, giFirstTimeFix], AView.DataController.Values[i, giBaecha2], 1, 1);
        end;
			end;


      if Not bSort then
      begin
        IsSafe := False;

        //타사이관콜센터 ~분후 고객번호 숨김 처리
        if (GT_USERIF.LV = '10') and (SafeTime > 0) and (OrderState[1] in ['2', '4', '8']) then
        begin
          // 완료 후 경과시간이 ~분이상인 경우 고객정보 마킹처리(완료시간 기준)
          if OrderState = '2' then
          begin
            OutputDebugString(PChar(string(AView.DataController.Values[i, giFinishTime2])));
            if IsOverTime(AView.DataController.Values[i, giFinishTime2], SafeTime) then
              IsSafe := True;
          end else
          // 문의 후 경과시간이 ~분이상인 경우 고객정보 마킹처리(최초접수시간 기준)
          if OrderState = '4' then
          begin
            if IsOverTime(AView.DataController.Values[i, giFirstTimeFix], SafeTime) then
              IsSafe := True;
          end else
          // 취소 후 경과시간이 ~분이상인 경우 고객정보 마킹처리(수정시간 기준)
          if OrderState = '8' then
          begin
            if (AView.DataController.Values[I, giUpdateTime] <> '') and IsOverTime(AView.DataController.Values[I, giUpdateTime], SafeTime) then
              IsSafe := True;
          end;
        end else
        if (GT_USERIF.LV = '10') and (SafeTime = -1) and (OrderState[1] in ['2', '4', '8']) then
        begin
          IsSafe := True;
        end;

        if IsSafe then
        begin
          // 고객번호
          AView.DataController.Values[I, giCustTel] := '***-****-****';
          AView.DataController.Values[I, giCustTel2] := '***-****-****';
          // 고객명
          Name := Trim(AView.DataController.Values[I, giCustNm]);
          if Name <> '' then
            AView.DataController.Values[I, giCustNm] := '***';
          // 적요
          Bigo := Trim(AView.DataController.Values[I, giBigo]);
          if Bigo <> '' then
            AView.DataController.Values[I, giBigo] := '*****';
          // 적요2
          Bigo2 := Trim(AView.DataController.Values[I, giBigo2]);
          if Bigo2 <> '' then
            AView.DataController.Values[I, giBigo2] := '*****';
          // 이용횟수
          AView.DataController.Values[I, giCnt] := '99999';
          //상담원 id(성명)
         if Pos('(',AView.DataController.Values[I, giReceipter]) > 0 then
            AView.DataController.Values[I, giReceipter] := copy(AView.DataController.Values[I, giReceipter], 1, pos('(', AView.DataController.Values[I, giReceipter]) -1);
        end;
      end;
		end;
	except
		on E: Exception do
    begin
      sTemp := 'Jon03[proc_lap_time]Error : ' + e.Message;
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON03.proc_Order_Set(AView: TcxGridDBTableView);
var
	iRow, iCustTel1, iCustTel22,
	iWkBrNo, iWkHdNo, iLatX, iLOnY, iBubin, iCuGubun, iCuSeq, iBigo3 : Integer;
	iDeposit, iHdNo, iExpense, iReCall : integer;
  sTemp: string;
begin
	SetDebugeWrite('JON03.proc_Order_Set');
	try
    if (AView.DataController.RecordCount <= AView.DataController.FocusedRecordIndex) then Exit;

    if (AView.DataController.RecordCount > 0) and (AView.DataController.FocusedRecordIndex > -1) then
    begin
      tmr_dis.Enabled := False;
      PnlAuto.Visible := False;

			iRow := GT_OrderInfo[Self.Tag].ARow;
      if iRow >= 0 then
      begin
        iCustTel1   := AView.GetColumnByFieldName('고객번호1').Index;
				iCustTel22  := AView.GetColumnByFieldName('고객번호22').Index;
				iWkBrNo     := AView.GetColumnByFieldName('기사지사코드').Index;
				iWkHdNo     := AView.GetColumnByFieldName('기사본사코드').Index;

				iLatX       := AView.GetColumnByFieldName('출발지X').Index;
				iLonY       := AView.GetColumnByFieldName('출발지Y').Index;

				iBubin      := AView.GetColumnByFieldName('법인코드').Index;
				iCuGubun    := AView.GetColumnByFieldName('고객구분').Index;
				iCuSeq      := AView.GetColumnByFieldName('고객코드').Index;
				iDeposit    := AView.GetColumnByFieldName('지급').Index;
				iHdNo       := AView.GetColumnByFieldName('발주본사').Index;
				iExpense    := AView.GetColumnByFieldName('경비지급').Index;
				iBigo3      := AView.GetColumnByFieldName('적요3').Index;
				iReCall     := AView.GetColumnByFieldName('리콜' ).Index;
				

        GT_OrderInfo[Self.Tag].Slip       := AView.DataController.Values[iRow, giSlip];
				sTemp := AView.DataController.Values[iRow, giStCd];
        GT_OrderInfo[Self.Tag].Status     := Copy(AView.DataController.Values[iRow, giStCd], 1, 1);
        if GT_OrderInfo[Self.Tag].Status = 'J' then
					GT_OrderInfo[Self.Tag].Status := '1';
				if GT_OrderInfo[Self.Tag].Status = 'D' then //운행일때는 배차로 인식  20200429 KHS
					GT_OrderInfo[Self.Tag].Status := '1';
				GT_OrderInfo[Self.Tag].BrNo       := AView.DataController.Values[iRow, giBrNo];
				GT_OrderInfo[Self.Tag].Callcenter := AView.DataController.Values[iRow, giCallcenter];
        if AView.DataController.Values[iRow, giCallcenter2] <> null then
  				GT_OrderInfo[Self.Tag].Callcenter2 := AView.DataController.Values[iRow, giCallcenter2];
				GT_OrderInfo[Self.Tag].AccCenter  := AView.DataController.Values[iRow, giAcccenter];
				GT_OrderInfo[Self.Tag].KeyNumber  := AView.DataController.Values[iRow, giKeyNum];
				GT_OrderInfo[Self.Tag].CustTel    := AView.DataController.Values[iRow, giCustTel];
        GT_OrderInfo[Self.Tag].CustTel1   := AView.DataController.Values[iRow, iCustTel1];
				GT_OrderInfo[Self.Tag].CustTel2   := AView.DataController.Values[iRow, giCustTel2];
        GT_OrderInfo[Self.Tag].CustTel22  := AView.DataController.Values[iRow, iCustTel22];
        GT_OrderInfo[Self.Tag].CustName   := AView.DataController.Values[iRow, giCustNm];
        GT_OrderInfo[Self.Tag].WkSabun    := AView.DataController.Values[iRow, giWkSabun];
        GT_OrderInfo[Self.Tag].WkName     := AView.DataController.Values[iRow, giWkName];
        GT_OrderInfo[Self.Tag].WkBrNo     := AView.DataController.Values[iRow, iWkBrNo];
        GT_OrderInfo[Self.Tag].AccTime    := AView.DataController.Values[iRow, giAccTime2];
        GT_OrderInfo[Self.Tag].WkHdNo     := AView.DataController.Values[iRow, iWkHdNo];
        GT_OrderInfo[Self.Tag].Charge     := StrToIntDef(RemoveComma(AView.DataController.Values[iRow, giPrice]), 0);
        GT_OrderInfo[Self.Tag].CashType   := AView.DataController.Values[iRow, giType];
				GT_OrderInfo[Self.Tag].DEST       := AView.DataController.Values[iRow, giEndArea];
        GT_OrderInfo[Self.Tag].BuBin      := AView.DataController.Values[iRow, iBubin];
        GT_OrderInfo[Self.Tag].CuGubun    := AView.DataController.Values[iRow, iCuGubun];
        GT_OrderInfo[Self.Tag].CuSeq      := AView.DataController.Values[iRow, iCuSeq];
				GT_OrderInfo[Self.Tag].Lon        := AView.DataController.Values[iRow, giLng];
				GT_OrderInfo[Self.Tag].Lat        := AView.DataController.Values[iRow, giLat];
				//기사입금액 추가 20180130 KHS
				GT_OrderInfo[Self.Tag].Deposit    := StrToIntDef(RemoveComma(AView.DataController.Values[iRow, iDeposit]), 0);
				GT_OrderInfo[Self.Tag].HdNo       := AView.DataController.Values[iRow, iHdNo];
				GT_OrderInfo[Self.Tag].UserId     := AView.DataController.Values[iRow, giReceipter];

				GT_OrderInfo[Self.Tag].Expense    := AView.DataController.Values[iRow, iExpense];  //경비지급
				GT_OrderInfo[Self.Tag].Bigo3      := AView.DataController.Values[iRow, iBigo3];    //적요3
				GT_OrderInfo[Self.Tag].KMShare    := AView.DataController.Values[iRow, giKmShare];    //KM공유
        if Pos('활성,', AView.DataController.Values[iRow, iReCall]) > 0 then GT_OrderInfo[Self.Tag].AiRec := True
                                                                        else GT_OrderInfo[Self.Tag].AiRec := False;
				SetDebugeWrite('JON03.proc_Order_Set - ' + GT_OrderInfo[Self.Tag].Slip);
      end;
		end;
  except
    on E: Exception do
    begin
      Assert(False, 'Jon03[proc_Order_Set]Error : ' + e.Message);
    end;
  end;
end;

procedure TFrm_JON03.proc_Set_Grid;
begin
  SetDebugeWrite('JON03.proc_Set_Grid');
  try
    proc_Set_Grid(sg_counsel);
		proc_Set_Grid(cxViewCounselToday);
		proc_Set_Grid(sg_xlsView);
		pGetColumnIndex(sg_counsel);
	except 
	
  end;
end;

procedure TFrm_JON03.proc_SetGridRowAdd_Blank(AView: TcxGridDBTableView; ARow : integer);
var i, iCol : integer;
	sTmp : string;
begin
	Try
		for i := 0 to lb_Title_List.Items.Count - 1 do
		begin
			sTmp := lb_Title_List.Items.Strings[i];
			iCol := AView.GetColumnByFieldName(sTmp).Index;

			if (sTmp = '횟수') or (sTmp = '요금') or (sTmp = '수수료') or (sTmp = '카드금액') or (sTmp = '보정요금') or
         (sTmp = '후불금액') Or (sTmp = '마일사용') Or (sTmp = '카드요금') Or (sTmp = '현금') Or
				 (sTmp = '고객마일리지(잔여)')      or (sTmp = '이벤트횟수') or (sTmp = '지급')     or (sTmp = '경비지급') or
				 (sTmp = '지원금')                  or (sTmp = '기타지급금')   or (sTmp = '지원')             //20210705 KHS
			then // [khs
				AView.DataController.Values[ARow, iCol] := 0
			else
				AView.DataController.Values[ARow, iCol] := '';
    end;

	except 
		on E: Exception do
		begin
			Assert(False, sTmp);
		end;
	end;

end;

procedure TFrm_JON03.proc_Set_Grid(AView: TcxGridDBTableView);
// 대표번호, 발주지사명, 상태, 고객번호, 고객명, 횟수, 접수시간, 경과시간, 배차시간, 완료시간
// 출발지, 도착지, 요금, 상담원, 기사명, 기사사번, 기사위치, 적요, 고객구분, 법인명
// 결제, 취소사유, 접수번호, 최초접수시간, 지난시간, 공유, 발주지사, 메모, 현재시간, 콜센터코드
// 출발지1, 도착지1, 접수시간2, 기사본사코드, 기사지사코드, 기사콜센터, 고객번호2, 실제등록콜센터, 법인코드, 공유콜
// 고객코드, 배차시간2, 완료시간2, 출발지X, 출발지Y, 고객번호1, 배차경과, 수정시간, 출발지(시군구), DNIS
// 고객등급코드, 상태정렬, 플러스콜, 수수료, 적요2, 접수구분, 결제구분, 고객번호22, 배차구분, 고객등급
// 고객마일리지, 이벤트횟수, 고객통화여부, 배차거리, 기사님나이, 적요3, 수정상담원, 콜마너2, 콜벨
// 지급,  발주본사, 후불충전, 카드금액, 탁송연합콜, 리콜, 경비지급, 기준일자, 운행시작시간, 최초접수시간고정
// 카드승인, 지원금, 기타지급금, 지원, 상담원ID이름, 배차지연, 배자차지연시간, KM공유, 보험료무료, odb_wk_sabun             //20210705 KHS
const
	ciWid: array[0..108] of Integer = (
			82,   110,  52,   86,   70,    34,   70,   70,   70,   70
		, 100,  100,  50,   60,   80,    54,   80,   100,  54,   80
		, 54,   80,   72,   120,  80,    0,    0,    0,     0,    0
		, 0,    0,    0,    0,    0,     0,    80,   0,     0,    0
		, 0,    0,    0,    0,    0,     0,    80,   0,    80,   60
    , 0,    0,    0,    70,   50,   60,    0,    0,    70,   70
		, 70,   70,   70,   70,   70,   70,    70,   0,    70,   70
		, 0,    0,    70,   100,  100,  100,   54,   0,   100,  120
    , 0,    0,    0,    0,    0,     0,    0,    0,    30,   30
		, 1,    0,    0,    70,   100,   60,   60,   60,   60,    0
		, 0,    60,   0,    60,   60,    0 ,   60,   60,    0   );
var
	i, iCnt, iWidth, iRow : Integer;
	slViewList, slHideList, slWideth, sViewFalseList: TStringList;
  ln_envfile: TIniFile;
  sTemp: string;
begin
	SetDebugeWrite('JON03.proc_Set_Grid');
  try
    ln_envfile := TIniFile.Create(ENVPATHFILE);
    try
			sViewFalseList := TStringList.Create;
			slViewList := TStringList.Create;
      slHideList := TStringList.Create;
      slWideth   := TStringList.Create;
			ln_envfile.ReadSection('Accept_Title', slViewList);
      ln_envfile.ReadSection('Accept_Not_Title', slHideList);
      ln_envfile.ReadSection('Accept_Title_Size', slWideth);

			// 화면에 보이는 컬럼수 (2008.07.22 최초접수시간, 지난시간 추가 : 25)
			if slViewList.Count > 0 then
			begin
				AView.BeginUpdate;

				for i := 0 to slViewList.Count - 1 do
				begin
					sTemp := ln_envfile.ReadString('Accept_Title', slViewList.Strings[i], lb_Title_List.Items.Strings[i]);
          if sTemp = '고객마일리지' then sTemp := '고객마일리지(잔여)';

          iWidth := StrToIntDef(ln_envfile. ReadString('Accept_Title_Size', IntToStr(i), IntToStr(ciWid[i])), ciWid[i]);
					if lb_Title_List.Items.IndexOf(sTemp) >= 0 then
          begin
  					iRow := AView.GetColumnByFieldName(sTemp).Index;
						if iRow = -1 then iRow := i;
						AView.Columns[iRow].Index := i;
						AView.Columns[i].Width := iWidth;
          end else
          begin
            SetDebugeWrite('접수현황 보기 타이틀 오류 : ' + sTemp);
					end;
				end;

				iCnt := slViewList.Count;
				for i := 0 to slHideList.Count - 1 do
				begin
					sTemp := ln_envfile.ReadString('Accept_Not_Title', slHideList.Strings[i], lb_Title_List.Items.Strings[I]);
					if sTemp = '고객마일리지' then sTemp := '고객마일리지(잔여)';

					if lb_Title_List.Items.IndexOf(sTemp) >= 0 then
					begin
						iRow := AView.GetColumnByFieldName(sTemp).Index;
						if iRow = -1 then iRow := i;
						AView.Columns[iRow].Index := i + iCnt;
						if AView <> sg_xls then
							AView.Columns[i + iCnt].Width := 0;
					end else
					begin
						SetDebugeWrite('접수현황 숨김 타이틀 오류 : ' + sTemp);
					end;
				end;
				
				for i := 0 to AView.ColumnCount - 1 do
        begin
          sTemp := AView.Columns[I].Caption;
					if (sTemp = '횟수') or (sTemp = '요금') or (sTemp = '수수료') Or (sTemp = '카드금액') or (sTemp = '보정요금') or
             (sTemp = '후불금액') Or (sTemp = '마일사용') Or (sTemp = '카드요금') Or (sTemp = '현금') Or
						 (sTemp = '고객마일리지(잔여)') or (sTemp = '이벤트횟수') or (sTemp = '지급')     or (sTemp = '경비지급') or
						 (sTemp = '지원금')             or (sTemp = '기타지급금')   or (sTemp = '지원')             //20210705 KHS
					then 
						AView.Columns[i].DataBinding.ValueType := 'Integer'
          else
						AView.Columns[i].DataBinding.ValueType := 'String';

					if sTemp = '보험료무료' then 
					begin
						AView.Columns[i].Visible := GT_Kakao_CallByInsureFee;
					end;
				end;
				AView.EndUpdate;
			end else
			begin
				AView.BeginUpdate;
				for i := 0 to lb_Title_List.Items.Count - 1 do
        begin
          sTemp := lb_Title_List.Items.Strings[i];
 					iRow := AView.GetColumnByFieldName(sTemp).Index;
          if iRow = -1 then iRow := i;
					AView.Columns[iRow].Index := i;
          AView.Columns[i].Width := ciWid[i];
          if ciWid[i] = 0 then
            AView.Columns[i].Visible := False;
					if (sTemp = '횟수') or (sTemp = '요금') or (sTemp = '수수료') Or (sTemp = '카드금액') Or (sTemp = '보정요금') or
             (sTemp = '후불금액') Or (sTemp = '마일사용') Or (sTemp = '카드요금') Or (sTemp = '현금') Or
						 (sTemp = '고객마일리지(잔여)') or (sTemp = '이벤트횟수') or (sTemp = '지급')     or (sTemp = '경비지급') or
						 (sTemp = '지원금')             or (sTemp = '기타지급금')   or (sTemp = '지원')             //20210705 KHS
					then 
						AView.Columns[i].DataBinding.ValueType := 'Integer'
					else
            AView.Columns[i].DataBinding.ValueType := 'String';

					if sTemp = '보험료무료' then 
					begin
						AView.Columns[i].Visible := GT_Kakao_CallByInsureFee;
					end;
				end;
				AView.EndUpdate;

				proc_Change_Title(AView);
			end;
		finally
      FreeAndNil(slViewList);
      FreeAndNil(slHideList);
      FreeAndNil(slWideth);
      FreeAndNil(ln_envfile);
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON03.rb_chk_AllClick(Sender: TObject);
var sTmp : string;
begin
	SetDebugeWrite('JON03.rb_chk_AllClick');
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	try
    if rb_chk_All.Down then
    begin
  		cb_00.Down := True;
      cb_01.Down := True;
      cb_02.Down := True;
      cb_04.Down := True;
      cb_03.Down := True;
  		cb_05.Down := True;
  		cb_0R.Down := True;
  		cb_0B.Down := True;
  		cb_0C.Down := True;
  		cb_0D.Down := True;
  		cb_08.Down := True;
      rb_chk_All.Down := True;

  		cb_00.Font.Style := [fsBold];
  		cb_01.Font.Style := [fsBold];
      cb_02.Font.Style := [fsBold];
      cb_04.Font.Style := [fsBold];
      cb_03.Font.Style := [fsBold];
			cb_05.Font.Style := [fsBold];
      cb_0R.Font.Style := [fsBold];
  		cb_0C.Font.Style := [fsBold];
  		cb_0D.Font.Style := [fsBold];
  		cb_08.Font.Style := [fsBold];
  		cb_0B.Font.Style := [fsBold];

      rb_chk_All.Font.Style := [fsBold];
    end else
    begin
  		cb_00.Down := False;
      cb_01.Down := False;
      cb_02.Down := False;
      cb_04.Down := False;
      cb_03.Down := False;
  		cb_05.Down := False;
  		cb_0R.Down := False;
  		cb_0B.Down := False;
  		cb_0C.Down := False;
  		cb_0D.Down := False;
  		cb_08.Down := False;
      rb_chk_All.Down := False;

  		cb_00.Font.Style := [];
      cb_01.Font.Style := [];
      cb_02.Font.Style := [];
      cb_04.Font.Style := [];
      cb_03.Font.Style := [];
      cb_05.Font.Style := [];
      cb_0R.Font.Style := [];
  		cb_0B.Font.Style := [];
  		cb_0C.Font.Style := [];
  		cb_0D.Font.Style := [];
  		cb_08.Font.Style := [];

      rb_chk_All.Font.Style := [];
    end;
  	cb_00.Repaint;
    cb_01.Repaint;
    cb_02.Repaint;
    cb_04.Repaint;
    cb_03.Repaint;
  	cb_05.Repaint;
  	cb_0R.Repaint;
  	cb_0B.Repaint;
		cb_0C.Repaint;
		cb_0D.Repaint;
  	cb_08.Repaint;
    rb_chk_All.Repaint;
		if rb_chk_All.Tag = 00 then
		begin
			if rb_chk_All.down then sTmp := '1|1|1|1|1|1|1|1|1|1|1|1' else sTmp := '0|0|0|0|0|0|0|0|0|0|0|0';
			GS_EnvFile.WriteString('COUNSEL', 'StatusBtn', sTmp);
    end;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pGetColumnIndex(AView: TcxGridDBTableView);
begin
  try
   	giSlip       := AView.GetColumnByFieldName('접수번호').Index;
		giStCd       := AView.GetColumnByFieldName('상태').Index;
		giType       := AView.GetColumnByFieldName('결제').Index;
    giPrice      := AView.GetColumnByFieldName('요금').Index;
    giKeyNum     := AView.GetColumnByFieldName('대표번호').Index;
    giCustNm     := AView.GetColumnByFieldName('고객명').Index;
  	giCustTel    := AView.GetColumnByFieldName('고객번호').Index;
  	giCustTel2   := AView.GetColumnByFieldName('고객번호2').Index;
  	giOutBranch  := AView.GetColumnByFieldName('발주지사명').Index;
    giPlus       := AView.GetColumnByFieldName('플러스콜').Index;
    giCardPay    := AView.GetColumnByFieldName('결제구분').Index;
    giCardAmt    := AView.GetColumnByFieldName('카드금액').Index;
  	giFees       := AView.GetColumnByFieldName('수수료').Index;

    // giTime ---  sg_Counsel의 OnContentStyle에서 사용
    if gJONOrderColor.Gubun = 0 then
    begin
      if Assigned(AView.GetColumnByFieldName('접수시간2')) then
        giTime := AView.GetColumnByFieldName('접수시간2').Index
      else
    		giTime := -1;
    end else
    if gJONOrderColor.Gubun = 1 then  // 최초접수시간이 시간포맷이 변경하므로 고정값으로 계산
    begin
      if Assigned(AView.GetColumnByFieldName('최초접수시간고정')) then
        giTime := AView.GetColumnByFieldName('최초접수시간고정').Index
      else
    		giTime := -1;
    end;

  	giDuration    := AView.GetColumnByFieldName('경과시간').Index;
    giAccTime     := AView.GetColumnByFieldName('접수시간').Index;
    giAccTime2    := AView.GetColumnByFieldName('접수시간2').Index;
    giFirstTime   := AView.GetColumnByFieldName('최초접수시간').Index;
		giFirstTimeFix := AView.GetColumnByFieldName('최초접수시간고정').Index;
    giPassTime    := AView.GetColumnByFieldName('지난시간').Index;
    giFinishTime  := AView.GetColumnByFieldName('완료시간').Index;
    giFinishTime2 := AView.GetColumnByFieldName('완료시간2').Index;
    giBaecha      := AView.GetColumnByFieldName('배차시간').Index;
    giBaecha2     := AView.GetColumnByFieldName('배차시간2').Index;
    giPassBaecha  := AView.GetColumnByFieldName('배차경과').Index;
		giBrNo        := AView.GetColumnByFieldName('발주지사').Index;
    giUpdateTime  := AView.GetColumnByFieldName('수정시간').Index;
		giBigo        := AView.GetColumnByFieldName('적요').Index;
		giBigo2       := AView.GetColumnByFieldName('적요2').Index;
		giCnt         := AView.GetColumnByFieldName('횟수').Index;
		giReceipter   := AView.GetColumnByFieldName('상담원').Index;
    giCallcenter  := AView.GetColumnByFieldName('콜센터코드').Index;
    giAccCenter   := AView.GetColumnByFieldName('실제등록콜센터').Index;
		giWkName      := AView.GetColumnByFieldName('기사명').Index;
    giWkSabun     := AView.GetColumnByFieldName('기사사번').Index;
    giStartArea   := AView.GetColumnByFieldName('출발지').Index;
    giEndArea     := AView.GetColumnByFieldName('도착지').Index;
    giFirstIn     := AView.GetColumnByFieldName('접수구분').Index;
    giStartTime   := AView.GetColumnByFieldName('운행시작시간').Index;
    giCustCall    := AView.GetColumnByFieldName('고객').Index;
    giWkCall      := AView.GetColumnByFieldName('기사').Index;
    giCallcenter2 := AView.GetColumnByFieldName('콜센터2').Index;
    giCancelTime  := AView.GetColumnByFieldName('취소시간').Index;
		giSortTime    := AView.GetColumnByFieldName('시간정렬').Index;
		giLng         := AView.GetColumnByFieldName('출발지Y').Index;
		giLat         := AView.GetColumnByFieldName('출발지X').Index;
    giBDTime      := AView.GetColumnByFieldName('배차지연').Index;
		giBDTimeFix   := AView.GetColumnByFieldName('배차지연시간').Index;		
		giKmShare     := AView.GetColumnByFieldName('KM공유' ).Index;
  except on E: Exception do
    Assert(False, E.Message);
	end;
end;

procedure TFrm_JON03.rb_SearchClick(Sender: TObject);
var
  sStatus: string;
	ls_LastUpdate, sBrNoStString, OptionString, KeyWordString, FromCity, sTmp,
	FromWard, FromDate, ToDate, MyCall, MyDriver, RouteMS, sOwnerCall, sManualBaecha, AKey, sAllChk, sAutoSec : string;
	i: Integer;
	AView: TcxGridDBTableView;
	slTmp : TStringList;
	startTick, delta : DWord;
	dTmpDate1, dTmpDate2 : Double;
	iDay : integer;
	sMsg : string;
begin
	SetDebugeWrite('JON03.rb_SearchClick Start');

	if btnAutoRe.Tag = 99 then  //기사콜링 시 기사 이용내역 > 오더선택하면 리스트 갱신되는거 막기위해 사용 20191204KHS
	begin
		btnAutoRe.Tag := StrToIntDef(btnAutoRe.Hint, 0);
		//자동갱신 플래그값 다시 적용. 기사오더 갱신 막기위해 사용 20191204KHS
	end;
	startTick := GetTickCount;
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	Try
		FSearchEnable := False;
		if not AutoFlag then
		begin
  		Exit;
  	end;
		sMsg := '';
		bFamilySearch := False;
		if ( ( IsFamily ) And ( mLEFT_SectionIndex = 0 ) ) then	//패밀리전체일경우
		begin
			//1. 조회기간 32일 이내만 조회가능
			//2. 당일이 아닌 경우 21시이전에만 조회가능
			//3. 당일일 경우 시간제한 없음
			FromDate  := FormatDateTime('yyyy-mm-dd', dedt_Sdate.Date) + ' 09:00:00';
			dTmpDate1 := StrToDateTime(copy(FromDate,1,10));
			ToDate    := FormatDateTime('yyyy-mm-dd', dedt_Edate.Date) + ' 09:00:00';
			dTmpDate2 := StrToDateTime(copy(ToDate,1,10));
			iDay := DaysBetween(dTmpDate2, dTmpDate1) ; //0 : 당일, 1 : 전일
			if iDay > 31 then
			begin
				GMessagebox('패밀리본사전체 조회는 32일 이내만 가능합니다.', CDMSE);
				FSearchEnable := True;
				Exit;
			end; 

			FromDate  := FormatDateTime('yyyy-mm-dd', dedt_Sdate.Date) + ' 09:00:00';
			dTmpDate1 := StrToDateTime(copy(FromDate,1,10));
			ToDate    := StartDateTime('yyyy-mm-dd hh:nn:ss'); //오늘영업일자
			dTmpDate2 := StrToDateTime(copy(ToDate,1,10));

			iDay := DaysBetween(dTmpDate2, dTmpDate1) ; //0 : 당일, 1 : 전일...7:일주일일
			//이하 하단 검색조건 여부에 따라 나눠서 처리
		end;

		BtnYmdClose.Click;
    AAutoSearch_Stop := False;

    if Not pJON03Dock.bUnDock then pJON03Dock.GUBUN := GT_SEL_BRNO.Gubun;
    if Not pJON03Dock.bUnDock then pJON03Dock.BrNo  := GT_SEL_BRNO.BrNo;

    sBrNoStString := '';
    OptionString := '';
    KeyWordString := '';
    FromCity := '';
    FromWard := '';
		FromDate := '';
		ToDate := '';
		MyCall := '';
    MyDriver := '';
    RouteMS := '';
    sAllChk := '';
    gsSpeedSchHint := '';
    gsSpeedSchText := '';

    gsOverTime := -1;
    gsOrderTime := -1;

		AView := sg_counsel;    // 검색은 전체 목록에 표시
    SetCurrentView(AView);
		AKey := 'AcceptCount1';

    // 이부분을 안하면 Draw할때 font.size 변경시 오류 발생 LYB 2016.09.29
		cxGridCounselToday.Font.Size := GS_JON_FONTSIZE;
		Grd2.Font.Size := GS_JON_FONTSIZE;

		sStatus := StringReplace(Func_CheckCondition, ' ', '', [rfReplaceAll]);

		{........................................................}
		{ ### 검색 대상을 판단하기 위한 검색 컨트롤 지정 }
    // 검색버튼, 빠른검색입력란 이용시
		if Assigned(Sender) then FSearchCtrl := Sender
    // 자동검색 바로 이용시(검색버튼 등을 한번도 안누름)
		else
    if not Assigned(FSearchCtrl) then
			Sender := rb_Search
    // 빠른검색 후 검색어 모두 지운경우
		else
		if (FSearchCtrl is TcxTextEdit) and (TcxTextEdit(FSearchCtrl).Text = TcxTextEdit(FSearchCtrl).Hint) then
			Sender := rb_Search
    // 자동검색 시 이전 컨트롤로 처리
    else
			Sender := FSearchCtrl;
    {........................................................}

    {........................................................}
    // 전체상태조회 조건을 전문조회 후 다시 한번 비교하므로 전문조회후 상태값을 체크하기 위해 사용 2012-06-21 LYB
    cb_All.Hint := 'N';

		// 빠른검색 인경우 빠른검색 항목과 검색어로 처리
		for i := 1 to 20 do
		begin
			if ( TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '지역선택' ) And
				 ( TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint <> TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text ) And
				 ( TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text <> '' ) then
			begin
					slTmp := TStringList.Create;
				try
					slTmp.Clear;
					slTmp.Delimiter := ' ';
					slTmp.DelimitedText := TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text;

					if slTmp.Count = 2 then
					begin
						FromCity := slTmp[0];
						FromWard := slTmp[1];
					end else
					if slTmp.Count = 1 then
					begin
						FromCity := slTmp[0];
						FromWard := '';
					end;
				finally
					FreeAndNil(slTmp);
				end;
			end;
		end;

		if ( chk_MultiSearch.Checked )  And ( GS_COUNSEL_MULTICHECKSHOW )  then
		begin
			GetKeyTypeCodeList(OptionString, KeyWordString);

			// 빠른검색인 경우 전체 항목 체크시 검색어가 있을 경우에만 전체 항목 검색  2012-06-21 LYB추가
			// 다중검색 > 옵션전체 체크 추가. 체크시 전체선택과 동일 2019.03.23 KHS
			if (( cb_All.Down ) or (chk_OptionAll.checked)) And ( Trim(OptionString) <> '' ) then
			begin
				sStatus := StringReplace(Func_CheckCondition(2), ' ', '', [rfReplaceAll]);
				cb_All.Hint := 'Y';
			end;
		end else
		begin
      if ( Sender is TcxTextEdit ) And ( TcxTextEdit(Sender).Hint <> '' ) then
      begin
        gsSpeedSchHint := TcxTextEdit(Sender).Hint;

        OptionString := GetKeyTypeCode(TcxTextEdit(Sender).Hint);
        // 법인명이 2개라서 빠른검색 법인명은 하드코딩 함.
        if TcxTextEdit(Sender).Hint = '법인명' then
        begin
          if Trim(FBubInSelectedCode) <> '' then
          begin
            OptionString := '13';
            KeyWordString := Param_Filtering(Copy(Trim(FBubInSelectedCode), 1, Pos(',', FBubInSelectedCode) - 1))
          end else
          begin
            OptionString := '15';
            KeyWordString := Param_Filtering(TcxTextEdit(Sender).Text);
          end;
        end else
        if TcxTextEdit(Sender).Hint = '고객번호' then
          KeyWordString := Param_Filtering(StringReplace(TcxTextEdit(Sender).Text, '-', '', [rfReplaceAll]))
        else
          KeyWordString := Param_Filtering(TcxTextEdit(Sender).Text);

        if TcxTextEdit(Sender).Hint = '고객번호' then
           gsSpeedSchText := StringReplace(TcxTextEdit(Sender).Text, '-', '', [rfReplaceAll])
        else
          gsSpeedSchText := TcxTextEdit(Sender).Text;

        if ( OptionString = '16' ) Or
           ( OptionString = '17' ) Or
           ( OptionString = '19' ) or
					 ( OptionString = '27' ) or
					 ( OptionString = '29' ) then
        begin
          GetKeyTypeCodeSingleEnter(TcxTextEdit(Sender).Hint, KeyWordString);
        end;
      end else
      begin
				if chk_Mileage.checked then        //마일리지
				begin
					OptionString := '33';
					KeyWordString := 'y';
				end else
				if chk_CMPSupportY.checked then   // 지원금
				begin
					OptionString := '34';
					KeyWordString := 'y';
				end else
				if chk_CMPSupportN.checked then  //, 지원금제외
				begin
					OptionString := '34';
					KeyWordString := 'n';
				end else
        if btnAppSch.Down then
        begin
          OptionString := '31';
          KeyWordString := 'A';
        end else
        begin
          GetKeyTypeCodeSingle(OptionString, KeyWordString);
        end;
      end;

			// 빠른검색인 경우 전체 항목 체크시 검색어가 있을 경우에만 전체 항목 검색  2012-06-21 LYB추가
			if ( cb_All.Down ) And ( Trim(OptionString) <> '' ) then
			begin
				sStatus := StringReplace(Func_CheckCondition(2), ' ', '', [rfReplaceAll]);
				cb_All.Hint := 'Y';
			end;
		end;


    case cxChkBC1.Tag of
      0 :  //전체
      begin
      
      end;
      1 :  //법인만
      begin
        if ( Pos('16', OptionString) = 0 ) And ( Pos('3', KeyWordString) = 0 ) then
        begin
          if OptionString = '' then
          begin
            OptionString := '16';
            KeyWordString := '''3''';
          end else
          begin
            OptionString := OptionString + '│' + '16';
            KeyWordString := KeyWordString + '│' + '''3''';
          end;
        end else
        if ( Pos('16', OptionString) > 0 ) And ( Pos('3', KeyWordString) = 0 ) then
        begin
          KeyWordString := KeyWordString + ',' + '''3''';
        end;
      end;
      2 : //법인만제외
      begin
        if ( Pos('16', OptionString) = 0 ) then
        begin
          if OptionString = '' then
          begin
            OptionString := '16';
            KeyWordString := 'n';
          end else
          begin
            OptionString := OptionString + '│' + '16';
            KeyWordString := KeyWordString + '│' + 'n';
          end;
        end else
        if ( Pos('16', OptionString) > 0 ) And ( Pos('n', KeyWordString) = 0 ) then
        begin
          KeyWordString := KeyWordString + ',' + 'n';
        end;
      end;
      
    end;

		if cxChkBC2.Down then  // 카드
    begin
      if ( Pos('17', OptionString) = 0 ) And ( Pos('7', KeyWordString) = 0 ) then
      begin
        if OptionString = '' then
        begin
          OptionString := '17';
          KeyWordString := '''7''';
        end else
        begin
          OptionString := OptionString + '│' + '17';
          KeyWordString := KeyWordString + '│' + '''7''';
        end;
      end else
      if ( Pos('17', OptionString) > 0 ) And ( Pos('7', KeyWordString) = 0 ) then
      begin
        KeyWordString := KeyWordString + ',' + '''7''';
      end;
    end;

		if cxChkBC3.Down then  // 후불
		begin
			if ( Pos('17', OptionString) = 0 ) then
			begin
				if OptionString = '' then
				begin
					OptionString := '17';
					KeyWordString := '''2'',''7'',''8''';
				end else
        begin
					OptionString := OptionString + '│' + '17';
					KeyWordString := KeyWordString + '│' + '''2'',''7'',''8''';;
				end;
			end else
			if ( Pos('17', OptionString) > 0 ) then
			begin
				KeyWordString := KeyWordString + ',' + '''2'',''7'',''8''';
			end;
		end;

		if cxChkBC4.Down then  // 탁콜
		begin
			if ( Pos('27', OptionString) = 0 ) And ( Pos('y', KeyWordString) = 0 ) then
			begin
				if OptionString = '' then
				begin
					OptionString := '27';
					KeyWordString := '''y''';
				end else
				begin
					OptionString := OptionString + '│' + '27';
					KeyWordString := KeyWordString + '│' + '''y''';
				end;
			end else
			if ( Pos('27', OptionString) > 0 ) And ( Pos('y', KeyWordString) = 0 ) then
			begin
				KeyWordString := KeyWordString + ',' + '''y''';
			end;
		end;

    //콜패스된 오더만 보여줌
    sTmp := '';
    if (GT_USERIF.UseCallPass) or (GT_USERIF.HD = 'A1531') then 
    begin
      if btn_CPChk.Tag = 0 then sTmp := 'a'  else
      if btn_CPChk.Tag = 1 then sTmp := 'c';
      if sTmp <> '' then
      begin
        if OptionString = '' then 
        begin
          OptionString  := '99';
          KeyWordString := sTmp;
        end else
        begin
          OptionString := OptionString + '│' + '99';
          KeyWordString := KeyWordString + '│' + '''' + sTmp + '''';
        end;
      end;
    end;

		// 빠른 검색 후 Sender 초기화 처리   20140605
  	Sender := rb_Search;

    if cb_MyCall.Down then MyCall := '1'
                      else MyCall := '0';


		if cb_MyDriver.Down then MyDriver := '1'
                     	  else MyDriver := '0';

    // 법인명
  	if Trim(FBubInSelectedCode) <> '' then
			sBrNoStString := Copy(Trim(FBubInSelectedCode), Pos(',', FBubInSelectedCode) + 1, Length(FBubInSelectedCode))
		else
    if pJON03Dock.GUBUN = '1' then  // 지사 선택
    begin
      if Trim(GS_CHECKBRLIST) = ''  then
        sBrNoStString := pJON03Dock.BrNo
      else
        sBrNoStString := GS_CHECKBRLIST;
    end else
    if pJON03Dock.GUBUN = '2' then RouteMS := GT_USERIF.RouteMS;

    if ( GS_BRLISTVIEWMODE ) And ( mLEFT_BRLISTVIEWHDCD <> '' ) then
    begin
      lg_BRLISTVIEW[Self.Tag] := '';
      for i := 0 to scb_HdCode.Count - 1 do
      begin
        if mLEFT_BRLISTVIEWHDCD = scb_HdCode[i] then
        begin
          if lg_BRLISTVIEW[Self.Tag] <> '' then lg_BRLISTVIEW[Self.Tag] := lg_BRLISTVIEW[Self.Tag] + ',';
          lg_BRLISTVIEW[Self.Tag] := lg_BRLISTVIEW[Self.Tag] + '''' + scb_BranchCode[i] + '''';
        end;
      end;
      sBrNoStString := lg_BRLISTVIEW[Self.Tag];
    end;

    sOwnerCall := '';
    sManualBaecha := '';

    if cb_Owner.Down then
      sOwnerCall := GT_USERIF.ID;

		if cb_All.Down then
		begin
			sAllChk := 'Y';
			sOwnerCall := '';  // 본인 체크도 무시하고 전체 조회
		end else
		begin
			sAllChk := 'N';
		end;
		// 다중검색 > 옵션전체 체크 추가. 체크시 전체선택과 동일 2019.03.23 KHS
		if chk_OptionAll.checked then
		begin
			sAllChk := 'Y';
			sOwnerCall := '';  // 본인 체크도 무시하고 전체 조회
		end;

		if cb_ManualBaecha.Down then
      sManualBaecha := '0';

    //오늘 또는 이전 날짜 조회 구분
		if FormatDateTime('yyyymmdd', dedt_Sdate.Date) <> Copy(StartDateTime('yyyymmddhhmmss'), 1, 8) then
    begin
      // 과거 데이터 조회.
      //과거데이터 조회 지사 코드 E717 제한 --> 2010.09.27 대전요청으로 제한 해제함.
      {if (GT_USERIF.BR ='E717') and (GS_PRJ_AREA ='O') then
         FromDate   := FormatDateTime('yyyymmdd',now-1) + '090000'
      else
         FromDate   := FormatDateTime('yyyymmdd', de_stDate.Date) + '090000'; }

			FromDate      := FormatDateTime('yyyymmdd', dedt_Sdate.Date) + '090000';
			ToDate        := FormatDateTime('yyyymmdd', dedt_Edate.Date) + '090000';
			lg_swhere[Self.Tag]     := '';
      ls_LastUpdate := '';
      lg_status[Self.Tag]     := '0';
      lg_status2[Self.Tag]    := sStatus;

      J03GridAdd.Clear;
      ANow[Self.Tag] := 'Before'
//-      dtChkTime := StrToDateTime(GetStrToLongDateTimeStr(Frm_Main.func_sysdate));
      // 오더접수현황화면에서 금일 오더 조회인지 여부를 저장. [True:금일, False:과거]
    end else
    //오늘 오더 조회중 조건이 변경되었는지 체크(당일 오더는 변경된 내역만 조회: 검색어 동일한 경우)
    begin
//-      if ( iAutoFirstChk = 0 ) Or ( BtnAutoRe.Tag = 0 ) then
//-        dtChkTime := StrToDateTime(GetStrToLongDateTimeStr(Frm_Main.func_sysdate));

			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			begin
        // 패밀리 관리자는 본사를 변경할수 있으므로 본사가 변경되면 초기화 검색으로 처리
        if Not pJON03Dock.bUnDock then pJON03Dock.HDNO := GT_SEL_BRNO.HDNO;
        if Not pJON03Dock.bUnDock then pJON03Dock.BrNo := GT_SEL_BRNO.BrNo;
        if Not pJON03Dock.bUnDock then pJON03Dock.Idx  := GT_SEL_BRNO.Idx;

        if lg_swhere[Self.Tag] <> (sStatus + KeyWordString + FromCity + FromWard + IntToStr(pJON03Dock.Idx) + MyCall + MyDriver +  sOwnerCall + sManualBaecha + OptionString + sAllChk + pJON03Dock.HDNO + pJON03Dock.BrNO + IntToStr(mLEFT_SectionIndex) + sBrNoStString + IntToStr(gsOverTime) + IntToStr(gsOrderTime) ) then
        begin
          lg_status[Self.Tag] := '0'; // 조회 조건 전체 조회[0:전체, 1:변경정보만 조회]
          dt_sysdate[Self.Tag] := '';
          lg_status2[Self.Tag] := sStatus;
          lg_swhere[Self.Tag] := sStatus + KeyWordString + FromCity + FromWard + IntToStr(pJON03Dock.Idx) + MyCall + MyDriver + sOwnerCall + sManualBaecha + OptionString + sAllChk + pJON03Dock.HDNO + pJON03Dock.BrNO + IntToStr(mLEFT_SectionIndex) + sBrNoStString + IntToStr(gsOverTime) + IntToStr(gsOrderTime);
          J03GridAdd.Clear;
        end else
        begin
          if length(dt_sysdate[Self.Tag]) <> 14 then
          begin
        		Assert(False, Format('LastUP[%d] : %s - %s', [Self.Tag, dt_sysdate[Self.Tag], dt_Clientdate[Self.Tag]]));
//            dt_sysdate[Self.Tag] := StartDateTime();
            dt_sysdate[Self.Tag] := dt_Clientdate[Self.Tag];
          end;
          //------------------------------------------------------
          sStatus := '''A'''; // 부분조회(변경된 정보만 조회)
          lg_status[Self.Tag] := '1';
          //------------------------------------------------------
				end;
      end else
      if (lg_swhere[Self.Tag] <> (sStatus + KeyWordString + FromCity + FromWard + IntToStr(GT_SEL_BRNO.Idx) + MyCall + MyDriver) + sOwnerCall + sManualBaecha + OptionString + sAllChk + GT_SEL_BRNO.HDNO + GT_SEL_BRNO.BrNO + IntToStr(mLEFT_SectionIndex) + sBrNoStString + IntToStr(gsOverTime) + IntToStr(gsOrderTime) ) then
      begin
				lg_status[Self.Tag] := '0'; // 조회 조건 전체 조회[0:전체, 1:변경정보만 조회]
        dt_sysdate[Self.Tag] := '';
        lg_status2[Self.Tag] := sStatus;
        lg_swhere[Self.Tag] := sStatus + KeyWordString + FromCity + FromWard + IntToStr(GT_SEL_BRNO.Idx) + MyCall + MyDriver + sOwnerCall + sManualBaecha + OptionString + sAllChk + GT_SEL_BRNO.HDNO + GT_SEL_BRNO.BrNO + IntToStr(mLEFT_SectionIndex) + sBrNoStString + IntToStr(gsOverTime) + IntToStr(gsOrderTime);
        J03GridAdd.Clear;
      end else
      begin
        if length(dt_sysdate[Self.Tag]) <> 14 then
        begin
       		Assert(False, Format('LastUP[%d] : %s - %s', [Self.Tag, dt_sysdate[Self.Tag], dt_Clientdate[Self.Tag]]));
//          dt_sysdate[Self.Tag] := StartDateTime();
          dt_sysdate[Self.Tag] := dt_Clientdate[Self.Tag];
        end;
        //------------------------------------------------------
				sStatus := '''A'''; // 부분조회(변경된 정보만 조회)
        lg_status[Self.Tag] := '1';
        //------------------------------------------------------
      end;
      // 오더접수현황화면에서 금일 오더 조회인지 여부를 저장. [True:금일, False:과거]
      ANow[Self.Tag] := 'Now'
    end;

		if (Trim(KeyWordString) = '') and (FromCity = '') and (FromWard = '')
			and (FormatDateTime('yyyymmdd', dedt_Sdate.Date) <> Copy(StartDateTime('yyyymmddhhmmss'), 1, 8))
			and ((formatdatetime('hhmm', Now) >= '2100') or (formatdatetime('hhmm', Now) <= '0100')) then
		begin
      if DayOfWeek(Now - (9 * 1/24)) In [2,3,4,5,6] then   // 월,화,수,목,금요일에만 조건 제한  2021.07.28 최도순 팁장님
      begin
        GMessagebox('오후 9시부터 오전 1시에는 기간조회시 조건을 입력하셔야 합니다.', CDMSE);
        dedt_Sdate.date := StrToDate(Date8to10(Copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
        BtnYmdClose.Click;
        FSearchEnable := True;
        Exit;
      end;
    end else
		if ((OptionString = KeyTypeValue[1].Code) or (OptionString = KeyTypeValue[5].Code))
				and (length(KeyWordString) < 4)
				and (FormatDateTime('yyyymmdd', dedt_Sdate.Date) <> Copy(StartDateTime('yyyymmddhhmmss'), 1, 8))
				and ((formatdatetime('hhmm', Now) >= '2100') or (formatdatetime('hhmm', Now) <= '0300')) then
		begin
			GMessagebox('오후 9시부터 오전 3시에는 기간조회시 대표번호나 고객번호 조회는 4자이상 입력하셔야 합니다.', CDMSE);
			FSearchEnable := True;
			Exit;
		end;

    // 변경
    if lg_status[Self.Tag] = '0' then
    begin
			AView.DataController.SetRecordCount(0);
      iFirstGridHighlight := 0;   // 조회조건이 변경되면 깜밖거림 초기화
			for i := 0 to 14 do
				gaStCnt[i] := 0;
    end;

    if lg_status[Self.Tag] = '0' then // // 조회 조건 전체 조회[0:전체, 1:변경정보만 조회]
			AKey := 'AcceptCount1'
    else
			AKey := 'AcceptCount2';

    // 라스트 업데이트가 초기화 되는 현상으로 인해 검색 누른 시점을 저장
    dt_Clientdate[Self.Tag] := FormatDateTime('yyyymmddhhmmss', Now);   // 20210824090000

		if AAutoSearch_Flag = True then
			sAutoSec := inttostr(AAutoSearch_Time)
		else
			sAutoSec := '';

//		RequestOrderList(sg_counsel , 'AcceptCount1', '''0'',''D'',''1'',''2'',''3'',''4'',''5'',''8'',''R'',''B'',''C'''
//		'20170317134652', 'B100', '', '8', '류지', '', '', '20170316090000', '20170317090000', '1', '0', '', '', '') 

		if ( ( IsFamily ) And ( mLEFT_SectionIndex = 0 ) ) then	//패밀리전체일경우
		begin
//			if (formatdatetime('hhmm', Now) >= '2100') and (iDay > 0) then
			if OptionString = '' then  //21시 이후 빠른검색 조건이 없을경우에는 7일이내 조회가능
			begin
				if (formatdatetime('hhmm', Now) >= '2100') and (iDay > 7) then
				begin
	//				GMessagebox('패밀리본사전체 조회는 오후 9시이전에만 조회가 가능합니다.' + #13#10 + '단, 당일 오더 조회는 가능합니다.', CDMSE);
					GMessagebox('패밀리본사전체 조회는 오후 9시이전에만 조회가 가능합니다.' + #13#10 + '단, 7일이내 오더 조회는 가능합니다.', CDMSE);
					FSearchEnable := True;
					Exit;
				end;
			end else if OptionString <> '' then
			begin
			end;

			if iDay > 0 then
			begin
        if Not bFamilySearchAlarm then
        begin
          sMsg := '패밀리본사전체로 조회하는 경우에는 결과에 따라 최장 5분까지 소요됩니다.' +#13#10+#13#10
                + '조회결과가 나오기 전에 조회종료(재조회, 프로그램종료 등)될 경우 오류가 발생할 수 있습니다.'+#13#10+#13#10
                + '조회를 진행하시겠습니까?' ;
          if Application.MessageBox(PChar(sMsg), '[CDMS]', MB_YESNO +	MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
          begin
            FSearchEnable := True;
            Exit;
          end;
          bFamilySearchAlarm := True;
        end;
				bFamilySearch := True;
			end;
		end;    
 
		//목포콜센타(장승호사장) ID 하드코딩 요청 20210923 KHS. 정회귀 팀장님 요청
		if (GT_UserIf.ID = 'm5000-3007') and (GS_PRJ_AREA = 'O') then
    begin
      if MyCall = '0' then   //자사체크 아니면 전체
        GS_CHECKBRLIST := gsM5006OwnerBrNo;
        
      if (MyDriver = '1') then  //자기사면 김기사만
      begin
        GS_CHECKBRLIST := '''P478''';
      end;  

      //자사체크가 들어가면 자기사여도 자사코드만 넘김
      if MyCall = '1' then 
        GS_CHECKBRLIST := gsM5006OwnerBrNo;

      sBrNoStString := GS_CHECKBRLIST;
    end;

		if FCallUpsoSearchInfo.BrNo <> '' then  //콜벨업소에서 업소 접수현황 확인시 사용 . 업소코드로 조회
		begin
			RequestOrderList(AView, AKey, FCallUpsoSearchInfo.Gubun, dt_sysdate[Self.Tag], FCallUpsoSearchInfo.BrNo, RouteMS, '25', FCallUpsoSearchInfo.UpNo,
				FromCity, FromWard, FCallUpsoSearchInfo.SDate, FCallUpsoSearchInfo.EDate, MyCall, MyDriver, sOwnerCall, sManualBaecha, sAutoSec);
		end	else
		begin
			RequestOrderList(AView, AKey, sStatus, dt_sysdate[Self.Tag], sBrNoStString, RouteMS, OptionString, KeyWordString,
				FromCity, FromWard, FromDate, ToDate, MyCall, MyDriver, sOwnerCall, sManualBaecha, sAutoSec);
		end;

		FCallUpsoSearchInfo.BrNo := '';
		FCallUpsoSearchInfo.UpNo := '';
		FCallUpsoSearchInfo.SDate := '';
		FCallUpsoSearchInfo.Edate := '';
		FCallUpsoSearchInfo.Gubun := '';
			
		AAutoSearch_Flag := False;

//-    Inc(iAutoFirstChk);

		// 건수제한 유효하고, 최대건수보다 실제건수가 많으면 실제건수를 최대건수로 제한(2010.11.23)
    if (TCK_USER_PER.JON_SrcLmt='1') and (AView.DataController.recordcount>GT_JON_MAX) then
			AView.DataController.setrecordcount(GT_JON_MAX);

    // [설정] 접수현황 검색시 최상위로 자동 이동 제한
		if GS_COUNSEL_AUTOSCROLLTOP and (AView.DataController.RecordCount > 0) And ( Not AAutoSearch_Stop ) then
		begin
      ClearOrderInfo;
      AView.DataController.SelectRows(0, 0);
      AView.DataController.FocusedRowIndex := 0;
      AView.DataController.Scroll(0);
		end;

    delta := GetTickCount - startTick;
    SetDebugeWrite(Format('JON03.rb_SearchClick End = %d', [delta]));
    if Delta > 1000 then
    begin
      SetDebugeWrite(Format('JON03[rb_SearchClick] Over = %d', [delta]));
    end;
  except
    on e: exception do
    begin
			FSearchEnable := True;
			rb_Search.Enabled := True;
			cxBtnInitialSearch.Enabled := True;
			Screen.Cursor := crDefault;
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON03.SetOverTimeFilter;
begin
	SetDebugeWrite('JON03.SetOverTimeFilter');
  try
    sg_counsel.DataController.Filter.BeginUpdate;
    try
      if cxTCOrderState.TabIndex = 0 then
        sg_counsel.DataController.Filter.Clear;

      sg_counsel.DataController.Filter.Root.BoolOperatorKind := fboAnd;
			sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giStCd], foEqual, '0', '접수');
      case gsOverTime of
				0  : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foLike, '00분%', '1분미만');
        1  : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '01분00초', '01분이상');
        2  : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '02분00초', '02분이상');
				3  : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '03분00초', '03분이상');
        4  : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '04분00초', '04분이상');
        5  : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '05분00초', '05분이상');
        6  : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '06분00초', '06분이상');
        7  : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '07분00초', '07분이상');
        8  : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '08분00초', '08분이상');
        9  : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '09분00초', '09분이상');
        10 : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '10분00초', '10분이상');
        11 : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '11분00초', '11분이상');
        12 : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '12분00초', '12분이상');
        13 : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '13분00초', '13분이상');
        14 : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '14분00초', '14분이상');
        15 : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '15분00초', '15분이상');
        16 : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '16분00초', '16분이상');
        17 : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '17분00초', '17분이상');
        18 : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '18분00초', '18분이상');
        19 : sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giDuration], foGreaterEqual, '19분00초', '19분이상');
      end;
      sg_counsel.DataController.Filter.Active := True;
    finally
      sg_counsel.DataController.Filter.EndUpdate;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.SetOrderStateFilter;
  procedure lpGetStateCodeFilter(sName : String; iCol : Integer);
  begin
    if Trim(sName) = '접수' then sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[iCol], foEqual, '0', '접수') else
    if Trim(sName) = '배차' then sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[iCol], foEqual, '1', '배차') else
		if Trim(sName) = '운행' then sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[iCol], foEqual, 'D', '운행') else
    if Trim(sName) = '배중' then sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[iCol], foEqual, 'B', '배중') else
    if Trim(sName) = '근배' then
    begin
      sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[iCol], foEqual, 'C', '근배');
      sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[iCol], foEqual, 'M', '근배');
    end else
    if Trim(sName) = '강제' then sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[iCol], foEqual, '3', '강제') else
    if Trim(sName) = '대기' then sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[iCol], foEqual, '5', '대기') else
    if Trim(sName) = '완료' then sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[iCol], foEqual, '2', '완료') else
    if Trim(sName) = '취소' then sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[iCol], foEqual, '8', '취소') else
    if Trim(sName) = '예약' then sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[iCol], foEqual, 'R', '예약') else
    if Trim(sName) = '문의' then sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[iCol], foEqual, '4', '문의');
  end;
begin
	SetDebugeWrite('JON03.SetOrderStateFilter');
  try
    sg_counsel.DataController.Filter.BeginUpdate;
    try
      sg_counsel.DataController.Filter.Clear;
      sg_counsel.DataController.Filter.Root.BoolOperatorKind := fboOr;

      lpGetStateCodeFilter(Copy(cxTCOrderState.Tabs[cxTCOrderState.TabIndex].Caption, 1, 3), giStCd);

      sg_counsel.DataController.Filter.Active := True;
    finally
      sg_counsel.DataController.Filter.EndUpdate;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.SetOrderTimeFilter;
Var sDateTime : String;
begin
	SetDebugeWrite('JON03.SetOverTimeFilter');
  try
    if GT_MAIN_VIEW_TIME1 = 0 then // MM-DD HH:NN
			sDateTime := FormatDateTime('MM-DD HH:NN', IncMinute(Now, gsOrderTime*(-1)))
    else
    if GT_MAIN_VIEW_TIME1 = 1 then // HH:NN:SS
      sDateTime := FormatDateTime('HH:NN:SS', IncMinute(Now, gsOrderTime*(-1)))
    else
    if GT_MAIN_VIEW_TIME1 = 2 then // MM-DD HH:NN:SS
      sDateTime := FormatDateTime('MM-DD HH:NN:SS', IncMinute(Now, gsOrderTime*(-1)))
    else
    if GT_MAIN_VIEW_TIME1 = 3 then // YYYY-MM-DD HH:NN:SS
      sDateTime := FormatDateTime('YYYY-MM-DD HH:NN:SS', IncMinute(Now, gsOrderTime*(-1)));

    sg_counsel.DataController.Filter.BeginUpdate;
    try
      if cxTCOrderState.TabIndex = 0 then
        sg_counsel.DataController.Filter.Clear
      else
        sg_counsel.DataController.Filter.Root.BoolOperatorKind := fboAnd;

      sg_counsel.DataController.Filter.Root.AddItem(sg_counsel.Columns[giAccTime], foLessEqual, sDateTime, sDateTime);
      sg_counsel.DataController.Filter.Active := True;
    finally
      sg_counsel.DataController.Filter.EndUpdate;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.RequestOrderList(AView: TcxGridDBTableView; AClientKye,
	AStatus, ALastUpdate, ABrNo, ARouteMS, AOption, AKeyWord, AFromCity,
  AFromWard, AFromDate, AToDate, AMyCall, AMyDriver, AOwnerCall, AManual, AAutoSec : string);
  function _GetOrderStr: string;
  begin
		Result := '';
    if rb_chk_All.Down then
			Result := '전체'
    else
		begin
			if cb_00.Down then Result := Result + IfThen(Result = '', '', ',') + cb_00.Caption;
			if cb_01.Down then Result := Result + IfThen(Result = '', '', ',') + cb_01.Caption;
      if cb_02.Down then Result := Result + IfThen(Result = '', '', ',') + cb_02.Caption;
      if cb_08.Down then Result := Result + IfThen(Result = '', '', ',') + cb_08.Caption;
      if cb_03.Down then Result := Result + IfThen(Result = '', '', ',') + cb_03.Caption;
			if cb_05.Down then Result := Result + IfThen(Result = '', '', ',') + cb_05.Caption;
			if cb_0R.Down then Result := Result + IfThen(Result = '', '', ',') + cb_0R.Caption;
			if cb_04.Down then Result := Result + IfThen(Result = '', '', ',') + cb_04.Caption;
			if cb_0B.Down then Result := Result + IfThen(Result = '', '', ',') + cb_0B.Caption;
			if cb_0C.Down then Result := Result + IfThen(Result = '', '', ',') + cb_0C.Caption;
			if cb_0D.Down then Result := Result + IfThen(Result = '', '', ',') + cb_0D.Caption;
		end;
  end;
var
  ls_TxLoad, sTmp: string;
  slReceive: TStringList;
	I, ErrCode: Integer;
	iTimeOut : integer;
begin
	SetDebugeWrite('JON03.RequestOrderList');
	try
//-    if FormatDateTime('yyyymmdd', dedt_Sdate.Date) <> Copy(StartDateTime('yyyymmddhhmmss'), 1, 8) then
    begin
      if ( GT_USERIF.LV = '60' ) then     // 본사관리자
  		begin
  			if mLEFT_SectionIndex <> 0 then
	  		begin
					if pJON03Dock.BrNo <> '' then
					begin
						if Not fGetCheck_BlowFish_HdBrNo( GT_SEL_BRNO.HDNO, pJON03Dock.BrNo ) then
						begin
							GMessagebox('조회 권한이 없는 본사.지사 입니다.', CDMSE);
							Assert(False, '[N지사코드변조]접수현황검색 : fGetCheck_BlowFish_HdBrNo : ' + GT_SEL_BRNO.HDNO + pJON03Dock.BrNo + ' - ' + GS_BlowFish_HdBrNo);
							FSearchEnable := True;
							Exit;
						end;
					end;
				end;
			end else
			if ( GT_USERIF.LV = '40' ) then     // 지사관리자
			begin
				if pJON03Dock.BrNo <> '' then
				begin
					if Not fGetCheck_BlowFish_HdBrNo( GT_SEL_BRNO.HDNO, pJON03Dock.BrNo ) then
					begin
						GMessagebox('조회 권한이 없는 본사.지사 입니다.', CDMSE);
						Assert(False, '[N지사코드변조]접수현황검색 : fGetCheck_BlowFish_HdBrNo : ' + GT_USERIF.HD + pJON03Dock.BrNo + ' - ' + GS_BlowFish_HdBrNo);
						FSearchEnable := True;
						Exit;
					end;
				end;
			end else
      if ( GT_USERIF.LV = '10' ) then     // 상담원
			begin
        if Not fGetCheck_BlowFish_HdBrNo( GT_USERIF.HD, GT_USERIF.BR ) then
        begin
          GMessagebox('조회 권한이 없는 본사.지사 입니다.', CDMSE);
          Assert(False, '[N지사코드변조]접수현황검색 : fGetCheck_BlowFish_HdBrNo : ' + GT_USERIF.HD + GT_USERIF.BR + ' - ' + GS_BlowFish_HdBrNo);
					FSearchEnable := True;
					Exit;
        end;
  		end;
    end;

    // 엑셀기간제한을 위해 조회시작시점을 임시변수에 저장
    inp_date:=stringreplace(dedt_Sdate.text,'-','',[rfReplaceAll]);

    // 콜센터(통합)/20100101~20100201/오더(접수,완료,취소)/검색(고객번호: 1234)
    FExcelDownLog := Format('%s/기간:%s~%s/오더(%s)',
      [
          GetSelBrInfo
        , FormatDateTime('yyyymmdd', dedt_Sdate.Date)
        , FormatDateTime('yyyymmdd', dedt_Edate.Date)
        , _GetOrderStr
			]);
    if AKeyWord <> '' then
			FExcelDownLog := FExcelDownLog + Format('/검색(%s:%s)', [GetKeyTypeValue(AOption), StringReplace(AKeyWord, '│', '/', [rfReplaceAll])]);

		ls_TxLoad := GTx_UnitXmlLoad('C002N1.XML');

		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     En_Coding(GT_USERIF.ID), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  AClientKye, [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'LevelString',      GT_USERIF.LV, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'CallCenterString', GT_USERIF.CT, [rfReplaceAll]);
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		begin
      if Not pJON03Dock.bUnDock then pJON03Dock.HDNO := GT_SEL_BRNO.HDNO;
      if Not pJON03Dock.bUnDock then pJON03Dock.BrNo := GT_SEL_BRNO.BrNo;

      if (Trim(GS_CHECKBRLIST) <> '') And ( pJON03Dock.GUBUN = '1' ) then  // 지사 선택  then   // 패밀리마스터가 지사다중선택일경우 본사코드 공백처리
        ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',     '', [rfReplaceAll])
      else
        ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',     pJON03Dock.HDNO, [rfReplaceAll]);

  		ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString',     pJON03Dock.BrNo, [rfReplaceAll]);
		end else
		begin
			ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',     GT_USERIF.HD, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString',     GT_USERIF.BR, [rfReplaceAll]);
		end;
		ls_TxLoad := StringReplace(ls_TxLoad, 'TodayDataString',  '', [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'StatusCode',       AStatus,      [rfReplaceAll]);

//    if ( ( IsFamily ) And ( mLEFT_SectionIndex = 0 ) ) then ALastUpdate := ''; 20190321 KHS  패밀리통합일 경우에도 최근데이터만 갱신. 팀장님 지시

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) And ( mLEFT_SectionIndex = 0 ) then     // 20120629 LYB
		begin
//      ALastUpdate := '';
  		ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoStString',     'ALL', [rfReplaceAll])
		end else
			ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoStString',     ABrNo,        [rfReplaceAll]);

		mLEFT_BeforeIndex := mLEFT_SectionIndex;

    ls_TxLoad := StringReplace(ls_TxLoad, 'LastUpdateString', ALastUpdate,  [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'RouteMSString',    ARouteMS,     [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'OptionString',     AOption,      [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'KeywordString',    AKeyWord,     [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'FromCityString',   AFromCity,    [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'FromWardString',   AFromWard,    [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'FromDateString',   AFromDate,    [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ToDateString',     AToDate,      [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'MyCall="MyCallString"', 'MyCall="MyCallString" MyDriver="MyDriverString"', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'MyCallString',     AMyCall,      [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'MyDriverString',   AMyDriver,    [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'OwnerCallString',  En_Coding(AOwnerCall),  [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'ManualBaechaString', AManual,        [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'Detail="DetailString"', 'Detail="DetailString" AutoSec="AutoSecString"', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'DetailString',     '',                     [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'AutoSecString',     AAutoSec,              [rfReplaceAll]);

		if ALastUpdate = '' then
			bFirstSreach := True 
		else
			bFirstSreach := False;
			
		if btnAutoRe.Tag = 0 then  // 자동 갱신이 아닐경우만 표시
			status_bar.Panels[0].Text := '조회 처리 중...';

		if grpSetCallBellList.Visible then
		begin
			if not pnl_AIList.Visible then
			begin
				pnl_AIList.Left := 424;
				pnl_AIList.Top := 234;
			end;
		end else
		begin
			if not pnl_AIList.Visible then
			begin
				pnl_AIList.Left := 3;
				pnl_AIList.Top := 234;
			end;
		end;

		if btnAutoRe.Tag = 1 then  // 자동 갱신일 경우
		begin
      TsGridHighLigth.Clear;
      cxImage2.Visible := False;
			cxImage3.Visible := True;
			iParCnt := 1;
			if CallBellView.DataController.RecordCount > 0 then
      begin
        grpSetCallBellList.Visible := True;
        grpSetCallBellList.BringToFront;
      end;
			if (cxGridAIView.DataController.RecordCount > 0) and (GS_COUNSEL_AIQuestion) then pnl_AIList.Visible := True;
		end	else
		begin
			CallBellView.DataController.SetRecordCount(0);
			grpSetCallBellList.Visible := False; //조회버튼 클릭 시 감춤
			FCallBellInfo.Slip.Clear;
			FCallBellInfo.KeyNumber.Clear;
			FCallBellInfo.BrNm.Clear;
			FCallBellInfo.CuNm.Clear;
			FCallBellInfo.Start.Clear;
			FCallBellInfo.Acc2.Clear;

			cxGridAIView.DataController.SetRecordCount(0);
			pnl_AIList.Visible := False; //조회버튼 클릭 시 감춤
			FAIInfo.Slip.Clear;
			FAIInfo.KeyNumber.Clear;
			FAIInfo.BrNm.Clear;
			FAIInfo.CuNm.Clear;
			FAIInfo.Start.Clear;
			FAIInfo.Acc2.Clear;
		end;
		TsCallBellOrder.Clear;
		TsAIOrder.Clear;
		
    tmr_dis.Enabled := False;

		if btnAutoRe.Tag = 1 then
    begin
      AutoFlag := False
		end else
    begin
      rb_Search.Enabled := False;
      PnlAuto.Visible := False;
    end;

		if AClientKye = 'AcceptCount1' then
    begin
			SetMakeOrderState;
    end;

    slReceive := TStringList.Create;
		if btnAutoRe.Tag = 0 then FStatusView := True;  // 자동 갱신이 아닐경우만 표시
		try                                  
			gStandard_Time := '';
			if bFamilySearch then 
			begin
				iTimeOut := 1800000;

				gStandard_Time := FormatDateTime('hhmmss', Now);
				gStandard_Time := copy(gStandard_Time,1,2) + ':' + copy(gStandard_Time,3,2) + ':' + copy(gStandard_Time,5,2);

				tm_Flash.Enabled := True;
			end
			else iTimeOut := 180000;     //패밀리전체 기간검색 시에는 5분으로 변경 기본 30초

			Screen.Cursor := crDefault;//crHourGlass; 갱신 시 커서변경안함. 팀장님 지시 20210813 KHS
			if J03SendSock(ls_TxLoad, slReceive, ErrCode, False, iTimeOut) then
			begin
				if slReceive.Count > 0 then
				begin
					if bFamilySearch then 
					begin
						tm_Flash.Enabled := False;
						Frm_Flash.lb_SearchTimeDescription.visible := false;
						Frm_Flash.lb_SearchTime.visible := false;
					end;

					AView.BeginUpdate;

          cxProgressBar1.Properties.Max := slReceive.Count - 1;
          cxProgressBar1.Position := 0;

          Frm_Flash.cxPBar1.Properties.Max := slReceive.Count - 1;
          Frm_Flash.cxPBar1.Position := 0;

          for i := 0 to slReceive.Count - 1 do
          begin
            Application.ProcessMessages;
            cxProgressBar1.Position := i;
            Frm_Flash.cxPBar1.Position := i;

            Frm_Flash.lblCnt.Caption := IntToStr(i + 1) + '/' + IntToStr(slReceive.Count);
						if not Func_AcceptInsert(AView, slReceive.Strings[i]) then
              Break;
          end;
          SetDebugeWrite('JON03.RequestOrderList 0 ');
          AView.EndUpdate;

          if (GB_365System) And (GB_COUNSEL_MULTICALLNUMBER) And (bMultiCallNumber) then fMultiCallNumber(AView);

        	SetDebugeWrite('JON03.RequestOrderList 1 ');

          if cxTCOrderState.TabIndex > 0 then
          begin
            SetOrderStateFilter;
          end;

          if gsOverTime >= 0 then
          begin
						SetOverTimeFilter;
						DispFilterCount(AView.DataController.FilteredRecordCount);
          end else
          if gsOrderTime >= 0 then
					begin
						SetOrderTimeFilter;
  	  	  	DispFilterCount(-1);
          end else
					begin
						if cxTCOrderState.TabIndex = 0 then
            begin
              if AView.DataController.Filter.Active then
              begin
                AView.DataController.Filter.Clear;
                AView.DataController.Filter.Active := False;
              end;
            end;
          end;
        	SetDebugeWrite('JON03.RequestOrderList 2 ');
				end;
				if AClientKye = 'AcceptCount3' then //상태변경
				begin
					// [설정] 오더수정 시 마우스 최상위로 이동 20210709 KHS 정회귀팀장요청
					if GS_COUNSEL_CHNORDERSCROLLTOP and (AView.DataController.RecordCount > 0) then
					begin
						ClearOrderInfo;
						AView.DataController.SelectRows(0, 0);
						AView.DataController.FocusedRowIndex := 0;
						AView.DataController.Scroll(0);
					end;
				end;
			end;
    finally
      FreeAndNil(slReceive);
			FStatusView := False;
			FSearchEnable := True;
			cxProgressBar1.Position := 0;
      Frm_Flash.cxPBar1.Position := 0;
      cxImage2.Visible := True;
      cxImage3.Visible := False;
			tmr_search.Enabled := True;
			Screen.Cursor := crDefault;
			Frm_Flash.Hide;
			tm_Flash.Enabled := False;
      if ( btnAutoRe.Tag = 1 ) And ( Not AAutoSearch_Stop ) then
      begin
        tmr_dis.Enabled := True;
				PnlAuto.Visible := True;
        Inc(iFirstGridHighlight);
      end;
		end;
	except on E: Exception do
		begin
			rb_Search.Enabled := True;
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
    end;
	end;
end;

procedure TFrm_JON03.SelectBubInGrid;
var
	iRow: Integer;
begin
	FBubInSelectedCode := '';

  iRow := cxBubinView.DataController.FocusedRecordIndex;
	if iRow = -1 then Exit;

	FBubInSelectedCode := cxBubinView.DataController.Values[iRow, 4];
	FBubInSelectedName := cxBubinView.DataController.GetValue(iRow, 0);
//	TcxTextEdit(FBubinTextEdit).Hint := '법인명';
//	TcxTextEdit(FBubinTextEdit).Setfocus;
	FBubinLabel.Visible := False;
	TcxTextEdit(FBubinTextEdit).Text := FBubInSelectedName;
	pnlBubin.Visible := False;
	rb_SearchClick(TcxTextEdit(FBubinTextEdit));
//  rb_Search.Click;
end;

procedure TFrm_JON03.SetCurrentView(AView: TcxGridDBTableView);
begin
  SetDebugeWrite('JON03.SetCurrentView');
  try
    Grd2.Visible                := (AView = sg_counsel);
    cxGridCounselToday.Visible  := (AView <> sg_counsel);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.SetMakeOrderState;
begin
  try
    cxTCOrderState.Tabs.Clear;
    cxTCOrderState.Tabs.BeginUpdate;
    try
      cxTCOrderState.Tabs.Add(' 선택상태전체(0) ');
      if rb_chk_All.Down then
      begin
        cxTCOrderState.Tabs.Add(' 접수(0) ');
        cxTCOrderState.Tabs.Add(' 배차(0) ');
        cxTCOrderState.Tabs.Add(' 배중(0) ');
        cxTCOrderState.Tabs.Add(' 근배(0) ');
				cxTCOrderState.Tabs.Add(' 운행(0) ');
        cxTCOrderState.Tabs.Add(' 강제(0) ');
        cxTCOrderState.Tabs.Add(' 대기(0) ');
        cxTCOrderState.Tabs.Add(' 완료(0) ');
        cxTCOrderState.Tabs.Add(' 취소(0) ');
        cxTCOrderState.Tabs.Add(' 예약(0) ');
        cxTCOrderState.Tabs.Add(' 문의(0) ');
      end else
      begin
        if cb_00.Down then cxTCOrderState.Tabs.Add(' 접수(0) ');
        if cb_01.Down then cxTCOrderState.Tabs.Add(' 배차(0) ');
				if cb_0B.Down then cxTCOrderState.Tabs.Add(' 배중(0) ');
        if cb_0C.Down then cxTCOrderState.Tabs.Add(' 근배(0) ');
		if cb_0D.Down then cxTCOrderState.Tabs.Add(' 운행(0) ');
        if cb_03.Down then cxTCOrderState.Tabs.Add(' 강제(0) ');
        if cb_05.Down then cxTCOrderState.Tabs.Add(' 대기(0) ');
        if cb_02.Down then cxTCOrderState.Tabs.Add(' 완료(0) ');
        if cb_08.Down then cxTCOrderState.Tabs.Add(' 취소(0) ');
        if cb_0R.Down then cxTCOrderState.Tabs.Add(' 예약(0) ');
        if cb_04.Down then cxTCOrderState.Tabs.Add(' 문의(0) ');
      end;
    finally
      cxTCOrderState.Tabs.EndUpdate;
    end;
    cxTCOrderState.TabIndex := 0;
	except
  end;
end;     

procedure TFrm_JON03.sg_counselCellClick(Sender: TcxCustomGridTableView;
	ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
var
	AView: TcxGridDBTableView;
	sAccTime2, sTmp, sFirstTime, sStart, sEnd, sSlip, sCharge, sReceipter, sReceID, sReceNM : string;
	iCol, iBubin, iWkPosition : Integer;
	sTmpDate1, sTmpTime1, sTmpDate2 : string;
	dTmpDate1, dTmpDate2 : TDateTime;
	iDay : integer;
	sUrl : string;

	ls_TxLoad, rv_str, sWkHp, KeyNum: string;
	ls_rxxml, cDate, cDate2 : String;
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	slReceive: TStringList;
	ErrCode: integer;
	sKey, sId, sNm, sMsg : string;
begin
	SetDebugeWrite('JON03.sg_counselCellClick');
	AView := Sender as TcxGridDBTableView;
  try
//    ACellViewInfo.RecordViewInfo.Index
		// 우측마우스 버튼 클릭 시 기존에 선택했던 레코드가 FocusedRecordIndex로 넘어옴
		GT_OrderInfo[Self.Tag].Value  := Trim(ACellViewInfo.Text);   //우클릭 셀복사를 위하여 이곳으로 이동 20161019 KHS
		if AButton = TMouseButton(mbLeft) then
    begin
      AAutoSearch_Stop := True;

			iWkPosition := AView.GetColumnByFieldName('기사위치').Index;
			iBubin := AView.GetColumnByFieldName('법인승인').Index;

			GT_OrderInfo[Self.Tag].ACol   := ACellViewInfo.item.Index;
			GT_OrderInfo[Self.Tag].ARow   := AView.DataController.FocusedRecordIndex;
//			GT_OrderInfo[Self.Tag].Value  := Trim(ACellViewInfo.Text);

     if GT_OrderInfo[Self.Tag].ARow < 0 then Exit;
      proc_Order_Set(AView);

      sAccTime2 := RemoveDatetimeSeparator(GT_OrderInfo[Self.Tag].AccTime);
      if (sAccTime2 > StartDateTime('yyyymmddhhmmss')) and (frm_Main.WkPnlOpen) then
        frm_Main.proc_wkOrder(AView);

      if GT_MOUSE_HINT = 2 then
      begin
        HintView.sValue := GT_OrderInfo[Self.Tag].Value;
        HintView.ARow := GT_OrderInfo[Self.Tag].ARow;
        HintView.ACol := GetCurrentView.GetColumnByFieldName(AView.Columns[GT_OrderInfo[Self.Tag].ACol].DataBinding.FieldName).Index;
//        HintView.ACol := lb_Title_List.Items.IndexOf(AView.Columns[GT_OrderInfo[Self.Tag].ACol].DataBinding.FieldName);
        tmr_hint.Interval := 500;
        tmr_hint.Enabled := True;
      end;

      if AView.DataController.Values[AView.DataController.FocusedRecordIndex, giWkSabun] = Null then Exit;

      GT_OrderInfo[Self.Tag].WkSabun := AView.DataController.Values[AView.DataController.FocusedRecordIndex, giWkSabun];

			// 상담원명 클릭시 오더 정보 접수자에게 자동채팅, 상담원명 선택, 메신저 연결, 채팅사용 함
			if ( ACellViewInfo.item.Index = giReceipter ) and (dm.gbConnectedMessager) and (not GS_MNG1501NoUse) then         
			begin
				sStart := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giStartArea];
				sEnd   := GT_OrderInfo[Self.Tag].DEST;
				sSlip := GT_OrderInfo[Self.Tag].Slip;
				sCharge := StrToMoney(IntToStr(GT_OrderInfo[Self.Tag].Charge));

				iCol := AView.GetColumnByFieldName('상담원ID이름').Index;
				
				sReceipter := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, iCol];
				sReceID := copy(sReceipter, 1,Pos('(',sReceipter) - 1);
				if sReceID = '' then exit;
				sReceNM := copy(sReceipter, Pos('(',sReceipter) + 1, Pos(')',sReceipter) - Pos('(',sReceipter) - 1);
				if sReceNM = '' then exit;
				sFirstTime := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giFirstTimeFix];
				sKey := GT_USERIF.ID + '_' + FormatDateTime('ddhhmmss', Now);
				sId := GT_USERIF.ID + AnsiChar(1) + sReceID;
				sNm := GT_USERIF.NM + AnsiChar(1) + sReceNM;
				sMsg := Format(CRLF+'%s -> %s, <a href="SLIP,%s,%s">오더번호[%s]</a>, 요금:%s', [sStart, sEnd, sSlip, sFirstTime, sSlip, sCharge]);
				//출->도 <a href="구분자(SLIP),접수번호,최초접수시간">오더번호</a>, 요금
				//<a href="SLIP|63477844|2021-08-24 15:02:47">오더번호[63477844]</a>, 요금:20,000'

				if Application.MessageBox(
						PChar('['+sReceNM+']상담원과 채팅을 시작 하시겠습니까?'), '채팅', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
				begin
					p1501SetChat(0, '1501', sKey, sId, sNm, sMsg, '', '', '', '', False);
				end;
				 
			end else
			if ( ACellViewInfo.item.Index = giCustTel ) Or         // 고객번호
         ( ACellViewInfo.item.Index = giCustCall ) then      // 고객전화
			begin
				if Trim(GT_OrderInfo[Self.Tag].CustTel) = '' then Exit;

				if ( GS_COUNSEL_CallCustColClick ) Or ( ACellViewInfo.item.Index = giCustCall ) then
				begin
					if GT_OCX <> '' then NOCX_CUST.Visible := True;
					NOCX_CUST.Click;
				end;
			end	else
			if ( ACellViewInfo.item.Index = giwkSabun ) Or
         ( ACellViewInfo.item.Index = giWkCall  ) then      //기사전화걸기(기사명 - 기사정보 -> 기사전화변경)
			begin
				if Trim(GT_OrderInfo[Self.Tag].WkSabun) = '' then Exit;
				if Trim(GT_OrderInfo[Self.Tag].WkSabun) = '기사NO' then Exit;
				if (Trim(GT_OrderInfo[Self.Tag].WkSabun) = 'M00001')  then Exit;
				if ( GS_COUNSEL_CallWorkerColClick ) Or ( ACellViewInfo.item.Index = giWkCall ) then
				begin
					if GT_OCX <> '' then NOCX_WOR.Visible := True;

					if Not NOCX_WOR.Visible then Exit;

					try
						ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
						ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003',[rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '3', [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', GT_OrderInfo[Self.Tag].WkSabun, [rfReplaceAll]);

						cDate := GT_OrderInfo[Self.Tag].AccTime;
						cDate := StringReplace(cDate, ' ', '', [rfReplaceAll]);
						cDate2 := StartDateTime('yyyy-mm-dd hh:nn:ss');
						cDate2 := StringReplace(cDate2, ' ', '', [rfReplaceAll]);
						if (cDate < cDate2) then
							ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '', [rfReplaceAll])   // 과거오더
						else
							ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '0', [rfReplaceAll]);  // 당일오더

						if (GS_PRJ_AREA = 'O') and (Pos('㉹',GT_OrderInfo[Self.Tag].WkName) = 1) and (GT_USERIF.WKVPhone = 'y') then
							 ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', 'y', [rfReplaceAll])
						else
							 ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', '', [rfReplaceAll]);

						ls_TxLoad := StringReplace(ls_TxLoad, 'Conf_slipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]); //접수번호추가

						sWkHp := '';
						slReceive := TStringList.Create;
						try
							if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
							begin
								rv_str := slReceive[0];
								if rv_str <> '' then
								begin
									ls_rxxml := rv_str;
									Application.ProcessMessages;
									try
										xdom := ComsDomDocument.Create;
										try
											if xdom.loadXML(ls_rxxml) then
											begin
												lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');
												sWkHp := lst_Result.item[0].attributes.getNamedItem('Info2').text;
											end;
										finally
											xdom := Nil;
										end;
									except
									end;
								end;
							end;
						finally
							FreeAndNil(slReceive);
						end;
					except
						on E: Exception do
						begin
							Assert(False, E.Message);
							GMessagebox(PChar('Jon03[NOCX_WORClick]:' + e.Message), CDMSE);
						end;
					end;

					if sWkHp = '' then
					begin
						Application.MessageBox('기사님의 휴대폰 번호을(를) 등록하세요', '알림', MB_OK);
						Exit;
					end;

					if Trim(GT_POSS_KEYNUM) <> '' then
					begin
						KeyNum := GT_POSS_KEYNUM;
					end else begin  // 090422. CDs. 기사 상황실번호가 없을경우 선택오더의 대표번호로 전화걸기.
						KeyNum := StringReplace(GT_OrderInfo[Self.Tag].KeyNumber, '-', '', [rfReplaceAll]);
					end;

					SetDebugeWrite('접수현황 기사전화걸기 ' + sWkHp);

					sWkHp := StringReplace(sWkHp, '-', '', [rfReplaceAll]);
					Frm_Main.TelWorkerByBrSabun(CallToStr(sWkHp), KeyNum, GT_OrderInfo[Self.Tag].Slip, '02'); //01.고객, 02.기사
        end;
			end	else
      if ( ACellViewInfo.item.Index = giWkName ) then
			begin
				if Trim(GT_OrderInfo[Self.Tag].WkSabun) = '기사NO' then Exit;
				if Trim(GT_OrderInfo[Self.Tag].WkSabun) <> '' then N15.Click;
			end else
			if ( ACellViewInfo.item.Index = iWkPosition ) then
			begin
				if Trim(GT_OrderInfo[Self.Tag].WkSabun) = '' then Exit;
				if Trim(GT_OrderInfo[Self.Tag].WkSabun) = '기사NO' then Exit;
				if (Trim(GT_OrderInfo[Self.Tag].WkSabun) = 'M00001')  then Exit;

				sFirstTime := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giFirstTimeFix];

				sTmpDate1 := sFirstTime;                                  //2016-10-12 03:27:04
				sTmpTime1 := Copy(sTmpDate1,12,8);
				if StrTointDef(Copy(sTmpTime1,1,2),0) < 9 then
				begin
					sTmpDate1 := Copy(sTmpDate1,1,10);
					dTmpDate1 := StrToDateTime(sTmpDate1) - 1;
//								sTmpDate1 := FormatDateTime('yyyy-mm-dd', dTmpDate1) + ' ' + sTmpTime1;
//								dTmpDate1 := StrToDateTime(sTmpDate1);
				end	else
					dTmpDate1 := StrToDateTime(copy(sTmpDate1,1,10));

				sTmpDate2 := StartDateTime('yyyy-mm-dd hh:nn:ss');
				dTmpDate2 := StrToDateTime(copy(sTmpDate2,1,10));
//							iDay := HoursBetween(dTmpDate2, dTmpDate1) Div 24 ; //0 : 당일, 1 : 전일
				iDay := DaysBetween(dTmpDate2, dTmpDate1) ; //0 : 당일, 1 : 전일
				if iDay > 7 then
				begin
					GMessagebox('기사 이동로그는 일주일전 로그까지만 조회가능합니다.', CDMSE);
					Screen.Cursor := crDefault;
					Exit;
				end;  //이전일 조회안됨

				try
          if Not Assigned(Frm_WOR17) then Frm_WOR17 := TFrm_WOR17.Create(Nil);

          Frm_WOR17.Jon03Tag := Self.Tag;
          Frm_WOR17.sWkSabun := GT_OrderInfo[Self.Tag].WkSabun;
          Frm_WOR17.proc_init;
          Frm_WOR17.sConfSlip := GT_OrderInfo[Self.Tag].Slip;
          Frm_WOR17.cb_WKmove_Option.ItemIndex := 0;
          Frm_WOR17.chk_Search_Route.Tag := 1;
//          Frm_WOR17.Proc_WKMoveHis_Sreach(GT_OrderInfo[Self.Tag].WkSabun, False);    // 잘못눌렀을때 자동 조회 되면 시간 오래걸릴수 있으므로 제거
          Frm_WOR17.chk_WKHIS_AllSearch.Checked := False;
          Frm_WOR17.chk_WKHIS_AllSearchClick(Frm_WOR17.chk_WKHIS_AllSearch);
          Frm_WOR17.Show;
        except
          on e: exception do
          begin
            Assert(False, E.Message);
          end;
        end;
			end	else
			if ( ACellViewInfo.item.Index = iBubin ) then  //법인승인
			begin
				if AView.DataController.Values[AView.DataController.FocusedRecordIndex, iBubin] = '승인' then
				begin
					if (GS_PRJ_AREA = 'S') then sUrl := Format(GS_BUBIN_URL_PRINT, [GT_OrderInfo[Self.Tag].Slip]) else
					if (GS_PRJ_AREA = 'O') then sUrl := Format(GS_BUBIN_URL_PRINT_JI, [GT_OrderInfo[Self.Tag].Slip]);

          if Not Assigned(Frm_JON03_01) Or (Frm_JON03_01 = Nil) then Frm_JON03_01 := TFrm_JON03_01.Create(Nil);
          try
  					Frm_JON03_01.WebBrowser1.Navigate(sUrl + '/1');
            Frm_JON03_01.ShowModal;
          finally
            Frm_JON03_01.Free;
          end;
				end;
      end;

      if btnListMap.Down then
      begin
				sTmp := '';
				sTmp := AView.Columns[GT_OrderInfo[Self.Tag].ACol].DataBinding.FieldName;
				iCol := lb_Title_List.Items.IndexOf(sTmp);
        giMapLastClickCol := iCol;
        giMapLastClickSlip := GT_OrderInfo[Self.Tag].Slip;
				Frm_Main.iTmrBtmMenu := 0;
        Frm_Main.Frm_JON52[Self.Tag].Proc_SelctOrder(GT_OrderInfo[Self.Tag].Slip, iCol);
      end else
      //콜지도보기 실행
      if ( Frm_Main.cxPageControl2.ActivePageIndex = 4 ) Or
         ((GB_CALLMAP_POPUP) And (Frm_Main.Frm_JON52[JON03_MAX_CNT].Showing)) then
      begin
				sTmp := '';
				sTmp := AView.Columns[GT_OrderInfo[Self.Tag].ACol].DataBinding.FieldName;
				iCol := lb_Title_List.Items.IndexOf(sTmp);
				giMapLastClickCol := iCol;
        giMapLastClickSlip := GT_OrderInfo[Self.Tag].Slip;
				Frm_Main.iTmrBtmMenu := 0;
        Frm_Main.Frm_JON52[JON03_MAX_CNT].Proc_SelctOrder(GT_OrderInfo[Self.Tag].Slip, iCol);
      end;
    end;
  except
    on e: exception do
    begin
      Log('sg_counselCellClick Error : Self.Tag - ' + IntToStr(Self.Tag) + ' [Msg] ' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'sg_counselCellClick Error : Self.Tag - ' + IntToStr(Self.Tag) + ' [Msg] ' + E.Message);
    end;
  end;
end;

procedure TFrm_JON03.sg_counselCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  I, iCnt, SafeTime: Integer;
  IsSafe: Boolean;
  OrderState: string;
  AView: TcxGridDBTableView;

  AGrid : TcxGrid;
begin
  SetDebugeWrite('JON03.sg_counselCellDblClick Start');
  AView := GetCurrentView;
  AGrid := GetCurrentGrid;
  try
    try
      GB_JON03SELECT_GB := False;
      // 접수현황에서 수정전문 요청시 결과받았는지의 여부.
      AGrid.Enabled := False;
      tmr_hint.Enabled := False;
      proc_Order_Set(Sender as TcxGridDBTableView);

      IsSafe := False;
      I := GT_OrderInfo[Self.Tag].ARow;

      SafeTime    := GetCustInfoSafeMin(GT_OrderInfo[Self.Tag].BrNo);

      if AView.DataController.Values[i, giStCd] = null then Exit;

      OrderState  := AView.DataController.Values[i, giStCd];

      //타사이관콜센터 ~분후 고객번호 숨김 처리
      if (GT_USERIF.LV = '10') and (SafeTime > 0) and (OrderState[1] in ['2', '4', '8']) then
      begin
        // 완료 후 경과시간이 ~분이상인 경우 고객정보 마킹처리(완료시간 기준)
        if OrderState = '2' then
        begin
          if AView.DataController.Values[i, giFirstTimeFix] = null then Exit;
          if IsOverTime(AView.DataController.Values[i, giFirstTimeFix], SafeTime) then
            IsSafe := True;
        end else
        // 문의 후 경과시간이 ~분이상인 경우 고객정보 마킹처리(최초접수시간 기준)
        if OrderState = '4' then
        begin
          if AView.DataController.Values[i, giFirstTimeFix] = null then Exit;
          if IsOverTime(AView.DataController.Values[i, giFirstTimeFix], SafeTime) then
            IsSafe := True;
        end else
        // 취소 후 경과시간이 ~분이상인 경우 고객정보 마킹처리(수정시간 기준)
        if OrderState = '8' then
        begin
          if AView.DataController.Values[i, giUpdateTime] = null then Exit;
          if (AView.DataController.Values[I, giUpdateTime] <> '') and IsOverTime(AView.DataController.Values[I, giUpdateTime], SafeTime) then
            IsSafe := True;
        end;
      end;

      if Assigned(Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx]) then
        Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].HidePhoneNum := IsSafe;
      pm_EditClick(Self); // 수정화면 띄운다. CDS. 080730.
      iCnt := 0;
      while (GB_JON03SELECT_GB = False) do
      begin // 접수현황에서 수정전문 요청시 결과받았는지의 여부.
        if (iCnt = 10) then
          Break;
        Inc(iCnt);
        Application.ProcessMessages;
        Sleep(500);
      end;
    finally
      AGrid.Enabled := True;
      SetDebugeWrite('JON03.sg_counselCellDblClick End');
    end;
  except
    on e: exception do
    begin
      Log('sg_counselCellDblClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'sg_counselCellDblClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON03.sg_counselColumn11CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
Var
  AView: TcxGridDBTableView;
  iPos : Integer;
begin
  try
    AView := Sender as TcxGridDBTableView;

    // 접수구분(A:어플접수 , 공백:상담원)
		iPos := Pos('A', Trim(AViewInfo.GridRecord.Values[giFirstIn]));
		if ( iPos > 0 ) then ACanvas.Font.Color := $00FF8000;
  except
  end;
end;

procedure TFrm_JON03.sg_counselColumn11CustomDrawHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  try
    GS_JON03HeaderColor := False;
    if ( pnlMap.Visible ) Or
       ( (GB_CALLMAP_POPUP) And (Frm_Main.Frm_JON52[JON03_MAX_CNT].Showing)) Or
       ( Frm_Main.cxPageControl2.ActivePageIndex = 4 )  And
       ( Frm_Main.cxPageControl2.Height > 25 ) then
    begin
      GS_JON03HeaderColor := True;

      if GB_DARKMODE then ACanvas.Font.Color := clBlack;
      ACanvas.FillRect(AViewInfo.Bounds, $00B8E1F1);
      ACanvas.FrameRect(AViewInfo.Bounds, $009D9D9D, 1, cxBordersAll);
      ACanvas.DrawTexT(AViewInfo.Text, AViewInfo.TextAreaBounds, cxAlignHCenter or cxAlignVCenter);
      ADone := True;
    end;
  except
  end;
end;

procedure TFrm_JON03.sg_counselColumn12CustomDrawHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  try
    GS_JON03HeaderColor := False;
    if ( pnlMap.Visible ) Or
       ( (GB_CALLMAP_POPUP) And (Frm_Main.Frm_JON52[JON03_MAX_CNT].Showing)) Or
       ( Frm_Main.cxPageControl2.ActivePageIndex = 4 )  And
       ( Frm_Main.cxPageControl2.Height > 25 ) then
    begin
      GS_JON03HeaderColor := True;

      if GB_DARKMODE then ACanvas.Font.Color := clBlack;
      ACanvas.FillRect(AViewInfo.Bounds, $00F1BDB8);
      ACanvas.FrameRect(AViewInfo.Bounds, $009D9D9D, 1, cxBordersAll);
      ACanvas.DrawTexT(AViewInfo.Text, AViewInfo.TextAreaBounds, cxAlignHCenter or cxAlignVCenter);
      ADone := True;
    end;
  except
  end;
end;

procedure TFrm_JON03.sg_counselColumn1GetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  try
    if GS_HINT_NO then Exit;

    if GT_MOUSE_HINT = 1 then
    begin
      GT_HINT_SHOW := True;

      HintView.sValue := Trim(ACellViewInfo.Text);
      HintView.ARow := ARecord.RecordIndex;
      HintView.ACol := GetCurrentView.GetColumnByFieldName(GetCurrentView.Columns[ACellViewInfo.Item.Index].DataBinding.FieldName).Index;

      tmr_hint.Interval := 1000;
      tmr_hint.Enabled := True;
    end;
  except

  end;
end;

procedure TFrm_JON03.sg_counselColumn5CustomDrawHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
begin
  try
    GS_JON03HeaderColor := False;
    if ( pnlMap.Visible ) Or
       ( (GB_CALLMAP_POPUP) And (Frm_Main.Frm_JON52[JON03_MAX_CNT].Showing)) Or
       ( Frm_Main.cxPageControl2.ActivePageIndex = 4 )  And
       ( Frm_Main.cxPageControl2.Height > 25 ) then
    begin
      GS_JON03HeaderColor := True;

      if GB_DARKMODE then ACanvas.Font.Color := clBlack;
      ACanvas.FillRect(AViewInfo.Bounds, $00B9F0D6);
      ACanvas.FrameRect(AViewInfo.Bounds, $009D9D9D, 1, cxBordersAll);
      ACanvas.DrawTexT(AViewInfo.Text, AViewInfo.TextAreaBounds, cxAlignHCenter or cxAlignVCenter);
      ADone := True;
    end;
  except
  end;
end;

procedure TFrm_JON03.sg_counselColumn6GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText = '99999' then
    AText := '****';
end;

procedure TFrm_JON03.sg_counselColumn87CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  APainter: TcxPainterAccess;
  AView: TcxGridDBTableView;
  iRow : Integer;
begin
  if not (AViewInfo.EditViewInfo is TcxCustomTextEditViewInfo)  or
    (AViewInfo.RecordViewInfo.Index = -1) then
    Exit;

  if AViewInfo.GridRecord.Focused then
  begin
    AView := Sender as TcxGridDBTableView;
    iRow := AViewInfo.GridRecord.RecordIndex;

    case Copy(AView.DataController.Values[iRow, giStCd], 1, 1)[1] of
      '0': ACanvas.Brush.Color := lb_Common0.Color;
      '1': ACanvas.Brush.Color := lb_Common1.Color;
      '2': ACanvas.Brush.Color := lb_Common2.Color;
      '3': ACanvas.Brush.Color := lb_Common3.Color;
      '4': ACanvas.Brush.Color := lb_Common4.Color;
      '5': ACanvas.Brush.Color := lb_Common5.Color;
      '7', 'R': ACanvas.Brush.Color := lb_Common7.Color;
      '8': ACanvas.Brush.Color := lb_Common8.Color;
      'B', 'D': ACanvas.Brush.Color := lb_Common10.Color;
			'C', 'M': ACanvas.Brush.Color := lb_Common9.Color;
    end;

    AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
    AViewInfo.EditViewInfo.TextColor := clBlack;
		AViewInfo.EditViewInfo.Font.Size := GS_JON_FONTSIZE;
//		AViewInfo.EditViewInfo.Font.Style := GS_JON_FontStyle;
	end;

  AViewInfo.EditViewInfo.Paint(ACanvas);
  ACanvas.Pen.Style := psSolid;

  APainter := TcxPainterAccess(TcxViewInfoAcess(AViewInfo).GetPainterClass.Create(ACanvas, AViewInfo));
  with APainter do
  begin
    try
      with TcxCustomTextEditViewInfo(AViewInfo.EditViewInfo).TextRect do
        Left := Left + cxSmallImages.Width + 1;
      DrawContent;
      DrawBorders;
      with AViewInfo.ClientBounds do
        cxSmallImages.Draw(ACanvas.Canvas, Left + 5, Top + 4,  41);

      if AViewInfo.GridRecord.Focused then
      begin
        if AViewInfo.Item.VisibleIndex = 0 then
          ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clFuchsia, clFuchsia, [bLeft, bTop, bBottom], 3);
        if AViewInfo.Item.VisibleIndex = Sender.VisibleItemCount - 1 then
          ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clFuchsia, clFuchsia, [bRight, bTop, bBottom], 3)
        else
          ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clFuchsia, clFuchsia, [bTop, bBottom], 3);
      end;
    finally
      Free;
    end;
  end;
  ADone := True;
end;

procedure TFrm_JON03.sg_counselColumn88CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  APainter: TcxPainterAccess;
  AView: TcxGridDBTableView;
  iRow : Integer;
begin
  if not (AViewInfo.EditViewInfo is TcxCustomTextEditViewInfo)  or
    (AViewInfo.RecordViewInfo.Index = -1) then
    Exit;

  AView := Sender as TcxGridDBTableView;
  iRow := AViewInfo.GridRecord.RecordIndex;
  if ( AView.DataController.Values[iRow, giWkSabun] = null ) Or
     ( AView.DataController.Values[iRow, giWkSabun] = '' ) Or
     ( AView.DataController.Values[iRow, giWkSabun] = '기사NO' ) then Exit;

  if AViewInfo.GridRecord.Focused then
  begin
    case Copy(AView.DataController.Values[iRow, giStCd], 1, 1)[1] of
      '0': ACanvas.Brush.Color := lb_Common0.Color;
      '1': ACanvas.Brush.Color := lb_Common1.Color;
      '2': ACanvas.Brush.Color := lb_Common2.Color;
      '3': ACanvas.Brush.Color := lb_Common3.Color;
      '4': ACanvas.Brush.Color := lb_Common4.Color;
      '5': ACanvas.Brush.Color := lb_Common5.Color;
      '7', 'R': ACanvas.Brush.Color := lb_Common7.Color;
      '8': ACanvas.Brush.Color := lb_Common8.Color;
      'B', 'D': ACanvas.Brush.Color := lb_Common10.Color;
			'C', 'M': ACanvas.Brush.Color := lb_Common9.Color;
    end;

    AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
    AViewInfo.EditViewInfo.TextColor := clBlack;
		AViewInfo.EditViewInfo.Font.Size := GS_JON_FONTSIZE;
//		AViewInfo.EditViewInfo.Font.Style := GS_JON_FontStyle;
	end;

  AViewInfo.EditViewInfo.Paint(ACanvas);
  ACanvas.Pen.Style := psSolid;

  APainter := TcxPainterAccess(TcxViewInfoAcess(AViewInfo).GetPainterClass.Create(ACanvas, AViewInfo));
  with APainter do
  begin
    try
      with TcxCustomTextEditViewInfo(AViewInfo.EditViewInfo).TextRect do
        Left := Left + cxSmallImages.Width + 1;
      DrawContent;
      DrawBorders;
      with AViewInfo.ClientBounds do
        cxSmallImages.Draw(ACanvas.Canvas, Left + 5, Top + 4,  42);

      if AViewInfo.GridRecord.Focused then
      begin
        if AViewInfo.Item.VisibleIndex = 0 then
          ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clFuchsia, clFuchsia, [bLeft, bTop, bBottom], 3);
        if AViewInfo.Item.VisibleIndex = Sender.VisibleItemCount - 1 then
          ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clFuchsia, clFuchsia, [bRight, bTop, bBottom], 3)
        else
          ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clFuchsia, clFuchsia, [bTop, bBottom], 3);
      end;
    finally
      Free;
    end;
  end;
  ADone := True;
end;

procedure TFrm_JON03.sg_counselColumnPosChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
  AView, AView2: TcxGridDBTableView;
  Idx: Integer;
begin
	SetDebugeWrite('JON03.sg_counselColumnPosChanged');
  try
    if sg_counsel.Tag = 1 then Exit;

    AView := Sender as TcxGridDBTableView;
		proc_Change_Title(AView);
    if AView = sg_counsel then
			AView2 := cxViewCounselToday
    else
      AView2 := sg_counsel;

		Idx := AView2.GetColumnByFieldName(TcxGridDBColumn(AColumn).DataBinding.FieldName).Index;
    AView2.Columns[Idx].Index := AColumn.Index;
  except

  end;
end;

procedure TFrm_JON03.sg_counselColumnSizeChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
  AView, AView2: TcxGridDBTableView;
begin
  SetDebugeWrite('JON03.sg_counselColumnSizeChanged');
  try
    if sg_counsel.Tag = 1 then Exit;

    AView := Sender as TcxGridDBTableView;
    proc_Change_Title(AView);

    if AView = sg_counsel then
      AView2 := cxViewCounselToday
    else
      AView2 := sg_counsel;

    AView2.Columns[AColumn.Index].Width := AColumn.Width;
  except

  end;
end;

procedure TFrm_JON03.sg_counselCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
	AView: TcxGridDBTableView;
	iRow, idx : Integer;
begin
	try
		iRow := AViewInfo.GridRecord.RecordIndex;

		if AViewInfo.GridRecord.Focused then
    begin
     	AView := Sender as TcxGridDBTableView;

      ACanvas.Brush.Color := clWhite;
			ACanvas.Font.Size := GS_JON_FONTSIZE;

			case Copy(AView.DataController.Values[iRow, giStCd], 1, 1)[1] of
  			'0': ACanvas.Brush.Color := lb_Common0.Color;
  			'1': ACanvas.Brush.Color := lb_Common1.Color;
				'2': ACanvas.Brush.Color := lb_Common2.Color;
  			'3': ACanvas.Brush.Color := lb_Common3.Color;
  			'4': ACanvas.Brush.Color := lb_Common4.Color;
  			'5': ACanvas.Brush.Color := lb_Common5.Color;
  			'7', 'R': ACanvas.Brush.Color := lb_Common7.Color;
  			'8': ACanvas.Brush.Color := lb_Common8.Color;
				'B': ACanvas.Brush.Color := lb_Common10.Color;
				'D': ACanvas.Brush.Color := lb_Common11.Color;
				'C', 'M': ACanvas.Brush.Color := lb_Common9.Color;
  		end;

      try
				//대기오더 중 적요2에 [콜벨]이 있으면
				if (TsCallBellOrder.Count > 0) and (TsCallBellOrder <> nil) then
				begin
					try
						idx := TsCallBellOrder.IndexOf(Trim(AView.DataController.Values[iRow, giSlip]));
						if idx > -1 then
						begin
							AViewInfo.EditViewInfo.BackgroundColor := clBlack;
							AViewInfo.EditViewInfo.TextColor := clYellow;
						end;
					except on E: Exception do
						begin
							AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
							AViewInfo.EditViewInfo.TextColor := clBlack;
						end;
					end;
				end else
				//문의오더 중 적요1에 ⓡ이 있으면
				if (TsAIOrder.Count > 0) and (TsAIOrder <> nil) then
				begin
					try
						idx := TsAIOrder.IndexOf(Trim(AView.DataController.Values[iRow, giSlip]));
						if idx > -1 then
						begin
							AViewInfo.EditViewInfo.BackgroundColor := clBlack;
							AViewInfo.EditViewInfo.TextColor := clYellow;
						end;
					except on E: Exception do
						begin
							AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
							AViewInfo.EditViewInfo.TextColor := clBlack;
						end;
					end;
				end else
				begin
					AViewInfo.EditViewInfo.BackgroundColor := ACanvas.Brush.Color;
					AViewInfo.EditViewInfo.TextColor := clBlack;
        end;
        AViewInfo.EditViewInfo.Paint(ACanvas);

				ACanvas.Pen.Style := psSolid;

        if AViewInfo.Item.VisibleIndex = 0 then
          ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clFuchsia, clFuchsia, [bLeft, bTop, bBottom], 3);
        if AViewInfo.Item.VisibleIndex = Sender.VisibleItemCount - 1 then
          ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clFuchsia, clFuchsia, [bRight, bTop, bBottom], 3)
        else
          ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clFuchsia, clFuchsia, [bTop, bBottom], 3);

        ADone := True;
      except
        ADone := False;
        Exit;
      end;
    end;
  except

	end;
end;

procedure TFrm_JON03.sg_counselDataControllerSortingChanged(Sender: TObject);
var
  I: Integer;
  AView: TcxGridDBTableView;
  ASortIndex, ASlipIndex, ASlipIndex2 : Integer;
begin
  SetDebugeWrite('JON03.sg_counselDataControllerSortingChanged');
  try
    AView := GetCurrentView;
    ASortIndex := -1;

    for I := 0 to AView.ColumnCount - 1 do
    begin
			if AView.Columns[I].SortIndex > -1 then
      begin
        ASortIndex := I;
        Break;
			end;
    end;

    if ASortIndex > -1 then
    begin
      // 시간보기 형식이 (00:00:00)일 경우 접수시간으로 소트할 경우 잘못정렬되므로 접수번호로 소트하도록 수정
      // 시간보기 형식이 (00:00:00)일 경우 접수시간으로 소트할 경우 잘못정렬되므로 접수시간2로 소트하도록 수정 20200731
      if (GT_MAIN_VIEW_TIME1 = 1) and (ASortIndex = giAccTime) then
      begin
				// 접수시간2로 소트
				if (AView.Columns[ASortIndex].SortOrder = soNone) or
					 (AView.Columns[ASortIndex].SortOrder = soDescending) then
					AView.Columns[giAccTime2].SortOrder := soAscending
        else if AView.Columns[ASortIndex].SortOrder = soAscending then
					AView.Columns[giAccTime2].SortOrder := soDescending;
				AView.Columns[giAccTime2].SortIndex := 0;

				sg_xlsView.Columns[giAccTime2].SortOrder := AView.Columns[giAccTime2].SortOrder;
				sg_xlsView.Columns[giAccTime2].SortIndex := AView.Columns[giAccTime2].SortIndex;
				// 접수번호로 소트
{				if (AView.Columns[ASortIndex].SortOrder = soNone) or
					(AView.Columns[ASortIndex].SortOrder = soDescending) then
					AView.Columns[giSlip].SortOrder := soAscending
				else if AView.Columns[ASortIndex].SortOrder = soAscending then
					AView.Columns[giSlip].SortOrder := soDescending;
				AView.Columns[giSlip].SortIndex := 0;    }
      end;

      //2010.08.10 상태 정렬 관련 수정 lej (상태 클릭시 상태정렬 값에 따라 정렬)  ----->
			if (ASortIndex = giStCd) then
      begin
        ASlipIndex := AView.GetColumnByFieldName('상태정렬').Index;
				if (AView.Columns[ASortIndex].SortOrder = soNone) or
					 (AView.Columns[ASortIndex].SortOrder = soDescending) then
					AView.Columns[ASlipIndex].SortOrder := soAscending
				else if AView.Columns[ASortIndex].SortOrder = soAscending then
					AView.Columns[ASlipIndex].SortOrder := soDescending;

				sg_xlsView.Columns[ASlipIndex].SortOrder := AView.Columns[ASlipIndex].SortOrder;

				if GS_EnvFile.ReadString('COUNSEL', 'StatusSort2', '') <> '' then
        begin
          try
						ASlipIndex2 := AView.GetColumnByFieldName(GS_EnvFile.ReadString('COUNSEL', 'StatusSort2', '')).Index;
          except
            ASlipIndex2 := -1;
					end;

					if ASlipIndex2 >= 0 then
					begin
						if GS_EnvFile.ReadString('COUNSEL', 'StatusSort3', '내림차순') = '내림차순' then
							AView.Columns[ASlipIndex2].SortOrder := soDescending
						else
							AView.Columns[ASlipIndex2].SortOrder := soAscending;
							
						sg_xlsView.Columns[ASlipIndex2].SortOrder := AView.Columns[ASlipIndex2].SortOrder;	
					end;
				end;
				AView.Columns[ASlipIndex].SortIndex := 0;
				sg_xlsView.Columns[ASlipIndex].SortIndex := AView.Columns[ASlipIndex].SortIndex;
			end;
			//2010.08.10 상태 정렬 관련 수정 lej (상태 클릭시 상태정렬 값에 따라 정렬)  <-----

      // 지난시간,경과시간,배차경과, 배차지연중 어떤게 선택되어 있는지 확인
      if (ASortIndex <> gidxSortTime) And ( ASortIndex in [giDuration, giPassTime, giPassBaecha, giBDTime] ) then
      begin
        gidxSortTime := ASortIndex;
        try
  				AView.BeginUpdate;
          proc_lap_time(True);
        finally
  				AView.EndUpdate;
        end;
      end;

      if (ASortIndex = gidxSortTime) then
      begin
				if (AView.Columns[ASortIndex].SortOrder = soNone) or
					 (AView.Columns[ASortIndex].SortOrder = soDescending) then
          AView.Columns[giSortTime].SortOrder := soAscending
        else if AView.Columns[ASortIndex].SortOrder = soAscending then
          AView.Columns[giSortTime].SortOrder := soDescending;
        AView.Columns[giSortTime].SortIndex := 0;
      end;

			if sg_counsel.Tag <> 99 then 
			begin
				GS_EnvFile.WriteInteger('COUNSEL', 'SearchSortIndex', ASortIndex);
				if (AView.Columns[ASortIndex].SortOrder = soNone) or
					 (AView.Columns[ASortIndex].SortOrder = soDescending) then
					GS_EnvFile.WriteString('COUNSEL', 'SearchSortOrder', 'Desc')
				else if AView.Columns[ASortIndex].SortOrder = soAscending then
					GS_EnvFile.WriteString('COUNSEL', 'SearchSortOrder', 'Asc');
			end;
		end;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.sg_counselGetCellHeight(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
begin
	AHeight := GS_JON_GRIDHEIGHT;
end;

procedure TFrm_JON03.sg_counselKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  SetDebugeWrite('JON03.sg_counselKeyDown');
  if (ssCtrl in Shift) and ((Key = Ord('c')) or (Key = Ord('C')) or (Key = VK_INSERT)) then
  begin
    GMessagebox('오더 정보를 복사 할 수 없습니다.', CDMSE);
    Key := 0;
  end;
end;

procedure TFrm_JON03.sg_counselMouseLeave(Sender: TObject);
begin
  Grd2MouseLeave(Sender);
end;

procedure TFrm_JON03.sg_counselMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var aHitTest : TcxCustomGridHitTest;
    AView: TcxGridDBTableView;
begin
	AView := GetCurrentView;
  AHitTest := AView.ViewInfo.GetHitTest(X, Y);
  try
    if ( AHitTest is TcxGridRecordCellHitTest ) and (TcxGridRecordHitTest(AHitTest).GridRecord is TcxGridDataRow) then
    begin
//      ARow := TcxGridRecordCellHitTest(AView.ViewInfo.GetHitTest(X, Y)).GridRecord.Index;
    end else
    begin
      Grd2MouseLeave(Sender);
    end;
  Except

  end;
end;

procedure TFrm_JON03.sg_counselStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
	function _GetJONColor(ATime: string; var AColor: TColor): Boolean;
	var
		OverMin: Integer;
	begin
		Result := False;

		if not gJONOrderColor.Use then Exit;

			OverMin := GetOverTimeMin(ATime);
			if (gJONOrderColor.Step4.Use) and (gJONOrderColor.Step4.Time > 0) and (gJONOrderColor.Step4.Time <= OverMin) then
				AColor := gJONOrderColor.Step4.Color
			else if (gJONOrderColor.Step3.Use) and (gJONOrderColor.Step3.Time > 0) and (gJONOrderColor.Step3.Time <= OverMin) then
				AColor := gJONOrderColor.Step3.Color
			else if (gJONOrderColor.Step2.Use) and (gJONOrderColor.Step2.Time > 0) and (gJONOrderColor.Step2.Time <= OverMin) then
				AColor := gJONOrderColor.Step2.Color
			else if (gJONOrderColor.Step1.Use) and (gJONOrderColor.Step1.Time > 0) and (gJONOrderColor.Step1.Time <= OverMin) then
				AColor := gJONOrderColor.Step1.Color
			else
				Exit;
		Result := True;
	end;
var
	iRow, iCustLevel : Integer;
  AView: TcxGridDBTableView;
  Method, KeyNum, CustLevel, CardPay : string;
	Color: TColor;

  sTmp : TStringList;
  i, ACol : Integer;
  sSlip : String;
begin
	if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then	Exit;

	AView := Sender as TcxGridDBTableView;
	iRow := AView.DataController.GetRowInfo(ARecord.Index).RecordIndex;
  try
    // 접수현황 변경 부분만 표시
    if ( btnAutoRe.Tag = 1 ) And ( AItem.Visible ) And ( GS_COUNSEL_AUTORELOADHG ) And ( TsGridHighLigth.Count > 0 ) And ( bGridHighLigth )then
    begin
      sTmp := TStringList.Create;
			try                               
        for i := 0 to TsGridHighLigth.Count - 1 do
				begin
          sTmp.Delimiter := '/';
					sTmp.DelimitedText := TsGridHighLigth[i];
          sSlip := sTmp[0];
					ACol := StrToInt(sTmp[1]);
					if ( Trim(AView.DataController.Values[iRow, giSlip]) = sSlip ) And ( AItem.Index = ACol ) then
          begin
						Frm_Main.cxStyle22.TextColor := clYellow;
						Frm_Main.cxStyle22.Font.Size := GS_JON_FONTSIZE;
						Frm_Main.cxStyle22.Font.Style := GS_JON_FontStyle;
						Frm_Main.cxStyle22.Font.Name := '맑은 고딕';
						Frm_Main.cxStyle22.Color := clBlack;
						AStyle := Frm_Main.cxStyle22;
						Exit;
          end;
        end;
      finally
        FreeAndNil(sTmp);
      end;
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
      SetDebugeWrite('JON03.sg_counselStylesGetContentStyle Error 1');
    end;
  end;

	try
		// 콜벨 변경 부분만 표시
		if ( btnAutoRe.Tag = 1 ) And ( AItem.Visible ) And ( TsCallBellOrder.Count > 0 ) then
		begin
			for i := 0 to TsCallBellOrder.Count - 1 do
			begin
				sSlip := TsCallBellOrder[i];
				if ( Trim(AView.DataController.Values[iRow, giSlip]) = sSlip ) then
				begin
					Frm_Main.cxStyle22.TextColor := clYellow;
					Frm_Main.cxStyle22.Font.Style  := [fsBold];
					Frm_Main.cxStyle22.Font.Size := GS_JON_FONTSIZE;
					Frm_Main.cxStyle22.Font.Style := GS_JON_FontStyle;
					Frm_Main.cxStyle22.Font.Name := '맑은 고딕';
					Frm_Main.cxStyle22.Color := clBlack;
					AStyle := Frm_Main.cxStyle22;
					Exit;
				end;
			end;
		end;
		// AI 부분만 표시
		if ( btnAutoRe.Tag = 1 ) And ( AItem.Visible ) And ( TsAIOrder.Count > 0 ) then
		begin
			for i := 0 to TsAIOrder.Count - 1 do
			begin
				sSlip := TsAIOrder[i];
				if ( Trim(AView.DataController.Values[iRow, giSlip]) = sSlip ) then
				begin
					Frm_Main.cxStyle22.TextColor := clYellow;
					Frm_Main.cxStyle22.Font.Style  := [fsBold];
					Frm_Main.cxStyle22.Font.Size := GS_JON_FONTSIZE;
					Frm_Main.cxStyle22.Font.Style := GS_JON_FontStyle;
					Frm_Main.cxStyle22.Font.Name := '맑은 고딕';
					Frm_Main.cxStyle22.Color := clBlack;
					AStyle := Frm_Main.cxStyle22;
					Exit;
				end;
			end;
		end;
	except on E: Exception do
    begin
			Assert(False, E.Message);
			SetDebugeWrite('JON03.TsCallBellOrder Error 1');
    end;
  end;

	AStyle := Frm_Main.cxStyle1;
	AStyle.Font.Style := GS_JON_FontStyle;

  iCustLevel  := AView.GetColumnByFieldName('고객등급코드').Index;

  try
		if AView.DataController.Values[iRow, giStCd] = null then Exit;
    if AView.DataController.Values[iRow, giType] = null then Exit;

  	if AView.DataController.Values[iRow, iCustLevel] = null then
      iCustLevel := -1;
  except on E: Exception do
    begin
      Assert(False, E.Message);
      SetDebugeWrite('JON03.sg_counselStylesGetContentStyle Error 2');
    end;
  end;

  try
    if AView.DataController.Values[iRow, giType] <> Null then
      Method  := AView.DataController.Values[iRow, giType];
    if AView.DataController.Values[iRow, giCardPay] <> Null then
			CardPay := AView.DataController.Values[iRow, giCardPay];
		if AView.DataController.Values[iRow, giStCd] = Null then Exit;
    if AView.DataController.Values[iRow, giKeyNum] = Null then Exit;
  except on E: Exception do
    begin
      Assert(False, E.Message);
			SetDebugeWrite('JON03.sg_counselStylesGetContentStyle Error 3 : ');
    end;
	end;

  try
		// 후불(카드) 금액만 굵게 변경 20190328  KHS   S-콜센터
		if (AItem.Index = giPrice) and ((Method = '즉후(카드)') or (Method = '후불(카드)')) then
		begin
			AStyle  := frm_Main.cxStyleBold;
			AStyle.TextColor := $000050F7;
			AStyle.Font.Style := [fsBold];	
		end else
		// 후불관련 결제구분 색상적용
		if ((AItem.Index = giType) or (AItem.Index = giPrice)) and
			 ((Method = '즉후') or (Method = '즉후(마일)') or
				(Method = '후불') or (Method = '후불(마일)') or
				(Method = '법후') or (Method = '법후(마일)')) then
		begin
			AStyle  := frm_Main.cxStyleBold;
			AStyle.Font.Style := [fsBold];	
			if (Method = '즉후') or (Method = '법후') then
				AStyle.TextColor := GS_COUNSEL_PayGubun1//clRed
			else if  (Method = '후불(마일)') or (Method = '즉후(마일)') or (Method = '법후(마일)') then
				AStyle.TextColor := GS_COUNSEL_PayGubun2//clGreen
			else if (Method = '후불') then
				AStyle.TextColor := GS_COUNSEL_PayGubun3;//clBlue;
		end else
		// 후불카드관련 결제구분 색상적용 P8.승인완료
		if ((AItem.Index = giType) Or (AItem.Index = giPrice) Or (AItem.Index = giCardAmt)) and
			 (((Method = '후불(카드)-승인완료') Or (Method = '즉후(카드)-승인완료') Or
         (Method = '후불(복합)-승인완료') Or (Method = '즉후(복합)-승인완료')) And ( CardPay = 'P8')) then
    begin
			AStyle  := frm_Main.cxStyleBold;
			AStyle.Font.Style := [fsBold];	
			if (Method = '즉후(카드)-승인완료') Or (Method = '즉후(복합)-승인완료') then
				AStyle.TextColor := GS_COUNSEL_PayGubun5{clPurple} else
			if (Method = '후불(카드)-승인완료') Or (Method = '후불(복합)-승인완료') then
				AStyle.TextColor := GS_COUNSEL_PayGubun4{clBlue};
		end else
		// 접수오더 경과시간별 색상적용
		if (AItem.Index = giDuration) and (giTime > -1) and (Copy(AView.DataController.Values[iRow, giStCd], 1, 1) = '0') then
		begin
      try
				if AView.DataController.Values[iRow, giTime] <> Null then
				begin
					if _GetJONColor(AView.DataController.Values[iRow, giTime], Color) then
					begin
						AStyle  := frm_Main.cxStyleBold;
						AStyle.Font.Style := [fsBold];
					end	else
					begin
						AStyle  := frm_Main.cxStyle15;
						AStyle.Font.Style := GS_JON_FontStyle;	
					end;
					AStyle.TextColor := Color;
        end;
      except on E: Exception do
        begin
					Assert(False, E.Message);
          SetDebugeWrite('JON03.sg_counselStylesGetContentStyle Error 4 : ');
        end;
      end;
    end else
    if (iCustLevel > -1) and ((AItem.Index = giCustNm) or (AItem.Index = giCustTel)) and not GS_LevelColor then
    begin
      try
        if ( AView.DataController.Values[iRow, giKeyNum] <> Null ) And
           ( AView.DataController.Values[iRow, iCustLevel] <> Null ) then
        begin
          KeyNum    := AView.DataController.Values[iRow, giKeyNum];
					CustLevel := AView.DataController.Values[iRow, iCustLevel];
					Color := GetCustLevelColor(KeyNum, CustLevel);
					AStyle  := frm_Main.cxStyle15;
					AStyle.Font.Style := GS_JON_FontStyle;
					if Color <> clDefault then
          begin
						AStyle  := frm_Main.cxStyle19;
						AStyle.Color := Color;
            if GB_DARKMODE then AStyle.TextColor := clBlack
                           else AStyle.TextColor := clDefault;
						AStyle.Font.Size := GS_JON_FONTSIZE;
						AStyle.Font.Style := GS_JON_FontStyle;
						Exit;
      		end;
        end;
      except on E: Exception do
        Assert(False, E.Message);
      end;
    end else
    begin
      AStyle  := frm_Main.cxStyle15;
			AStyle.TextColor := clBlack;
			AStyle.Font.Style := GS_JON_FontStyle;
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
			SetDebugeWrite('JON03.sg_counselStylesGetContentStyle Error 5 : ');
    end;
  end;
  
  try
    // 플러스콜 색상적용.  [대표번호, 발주지사명]
    if AView.DataController.Values[iRow, giPlus] <> Null then
    begin
    	if (((AItem.Index = giKeyNum) or (AItem.Index = giOutBranch)) and ('y' = AView.DataController.Values[iRow, giPlus])) then
      begin
    		AStyle  := frm_Main.cxStyle20;
				AStyle.Font.Size := GS_JON_FONTSIZE;
				AStyle.Font.Style := GS_JON_FontStyle;
				Exit;
      end;
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
      SetDebugeWrite('JON03.sg_counselStylesGetContentStyle Error 6 : ');
    end;
  end;

  try
    AStyle.Color := clWhite;
		case Copy(AView.DataController.Values[iRow, giStCd], 1, 1)[1] of
  		'0': AStyle.Color := lb_Common0.Color;
  		'1': AStyle.Color := lb_Common1.Color;
  		'2': AStyle.Color := lb_Common2.Color;
  		'3': AStyle.Color := lb_Common3.Color;
  		'4': AStyle.Color := lb_Common4.Color;
  		'5': AStyle.Color := lb_Common5.Color;
  		'7', 'R': AStyle.Color := lb_Common7.Color;
  		'8': AStyle.Color := lb_Common8.Color;
  		'B': AStyle.Color := lb_Common10.Color;
  		'D': AStyle.Color := lb_Common11.Color;
  		'C', 'M': AStyle.Color := lb_Common9.Color;
  	end;

    // 접수오더 경과시간별 셀 색상적용
    if gJONOrderColor.ColorG = 1 then
    begin
      if (AItem.Index = giDuration) and (giTime > -1) and
				 (AView.DataController.Values[iRow, giDuration] <> '') and
         (Copy(AView.DataController.Values[iRow, giStCd], 1, 1) = '0') then
      begin
    		if _GetJONColor(AView.DataController.Values[iRow, giTime], Color) then
        begin
          AStyle.TextColor := clBlack;
          AStyle.Color := Color;
        end;
      end;
    end;

  	if GS_JON_BRCOLOR_SET then
  	begin
      if AView.DataController.Values[iRow, giBrNo] <> Null then
      begin
  		  if GS_JON_BRCOLOR_SET_USE = 0 then
  		  begin
					if (GS_LOCAL_BRCOLOR_LIST.IndexOf(AView.DataController.Values[iRow, giBrNo]) > -1)  then
  		  	begin
  		  		if GS_PRJ_AREA = 'O' then
  		  		begin
							if (AItem.Index = giOutBranch) then
  		  				if GS_EnvFile.Readstring('BR_COLOR', AView.DataController.Values[iRow, giBrNo], '$00FFFFFF') <> '$00FFFFFF' then
  		  					AStyle.Color := strtoint(GS_EnvFile.Readstring('BR_COLOR', AView.DataController.Values[iRow, giBrNo], '$00FFFFFF')) ;
  		  		end	else
  		  		begin
  		  			if GS_EnvFile.Readstring('BR_COLOR', AView.DataController.Values[iRow, giBrNo], '$00FFFFFF') <> '$00FFFFFF' then
  		  				AStyle.Color := strtoint(GS_EnvFile.Readstring('BR_COLOR', AView.DataController.Values[iRow, giBrNo], '$00FFFFFF')) ;
  		  		end;
  		  	end;
  		  end else
  		  if GS_JON_BRCOLOR_SET_USE = 1 then
  		  begin
  		  	if GS_BRCOLOR_LIST.IndexOf(AView.DataController.Values[iRow, giBrNo]) > -1 then
  		  	begin
  		  		if GS_PRJ_AREA = 'O' then
  		  		begin
  		  			if (AItem.Index = giOutBranch) then
  		  				if GS_BRCOLOR_LIST.Values[AView.DataController.Values[iRow, giBrNo]] <> '$00FFFFFF' then
  		  					AStyle.Color := strtoint(GS_BRCOLOR_LIST.Values[AView.DataController.Values[iRow, giBrNo]]);//, '$00FFFFFF')) ;
  		  		end	else
  		  		begin
  		  			if GS_BRCOLOR_LIST.Values[AView.DataController.Values[iRow, giBrNo]] <> '$00FFFFFF' then
  		  				AStyle.Color := strtoint(GS_BRCOLOR_LIST.Values[AView.DataController.Values[iRow, giBrNo]]);//, '$00FFFFFF')) ;
  		  		end;
  		  	end;
  		  end
      end;
  	end;

		AStyle.Font.Size := GS_JON_FONTSIZE;
  except on E: Exception do
    begin
      Assert(False, E.Message);
      SetDebugeWrite('JON03.sg_counselStylesGetContentStyle Error 7 : ');
    end;
  end;
end;

procedure TFrm_JON03.sg_xlsStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
  function _GetJONColor(ATime: string; var AColor: TColor): Boolean;
  var
    OverMin: Integer;
	begin
    Result := False;

    if not gJONOrderColor.Use then Exit;

      OverMin := GetOverTimeMin(ATime);
      if (gJONOrderColor.Step4.Use) and (gJONOrderColor.Step4.Time > 0) and (gJONOrderColor.Step4.Time <= OverMin) then
        AColor := gJONOrderColor.Step4.Color
      else if (gJONOrderColor.Step3.Use) and (gJONOrderColor.Step3.Time > 0) and (gJONOrderColor.Step3.Time <= OverMin) then
        AColor := gJONOrderColor.Step3.Color
      else if (gJONOrderColor.Step2.Use) and (gJONOrderColor.Step2.Time > 0) and (gJONOrderColor.Step2.Time <= OverMin) then
        AColor := gJONOrderColor.Step2.Color
      else if (gJONOrderColor.Step1.Use) and (gJONOrderColor.Step1.Time > 0) and (gJONOrderColor.Step1.Time <= OverMin) then
        AColor := gJONOrderColor.Step1.Color
      else
				Exit;
    Result := True;
  end;
var
	iRow, iStCd, iType, iPrice, iDuration, iTime, iKeyNum, iCustLevel,
  iCust, iCustTel, iOutBranch, iPlus, iBr_no, iCardPay : Integer;
  AView: TcxGridDBTableView;
  Method, KeyNum, CustLevel, CardPay : string;
  Color: TColor;
  sLine : String;
begin
	AView := Sender as TcxGridDBTableView;
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then	Exit;

	iRow := AView.DataController.GetRowInfo(ARecord.Index).RecordIndex;

	try
  	iStCd       := AView.GetColumnByFieldName('상태').Index;
    iType       := AView.GetColumnByFieldName('결제').Index;
    iPrice      := AView.GetColumnByFieldName('요금').Index;
    iKeyNum     := AView.GetColumnByFieldName('대표번호').Index;
    iCustLevel := -1;
    if Assigned(AView.GetColumnByFieldName('고객등급코드')) then
  		iCustLevel  := AView.GetColumnByFieldName('고객등급코드').Index;
    iCust       := AView.GetColumnByFieldName('고객명').Index;
  	iCustTel    := AView.GetColumnByFieldName('고객번호').Index;
  	iOutBranch  := AView.GetColumnByFieldName('발주지사명').Index;
    iPlus       := AView.GetColumnByFieldName('플러스콜').Index;

    iCardPay    := AView.GetColumnByFieldName('결제구분').Index;

    if gJONOrderColor.Gubun = 0 then
    begin
      if Assigned(AView.GetColumnByFieldName('접수시간2')) then
        iTime := AView.GetColumnByFieldName('접수시간2').Index
      else
    		iTime := -1;
    end else
    if gJONOrderColor.Gubun = 1 then
    begin
      if Assigned(AView.GetColumnByFieldName('최초접수시간')) then
        iTime := AView.GetColumnByFieldName('최초접수시간').Index
      else
    		iTime := -1;
    end;

  	iDuration := AView.GetColumnByFieldName('경과시간').Index;

    if AView.DataController.Values[iRow, iStCd] = null then Exit;
    if AView.DataController.Values[iRow, iType] = null then Exit;

  	if (iCustLevel > -1) and (AView.DataController.Values[iRow, iCustLevel] = null) then
      iCustLevel := -1;
  except on E: Exception do
    begin
      Assert(False, E.Message);
      SetDebugeWrite('Frm_JON03.sg_counselStylesGetContentStyle Error 2');
    end;
  end;

  try
    sLine := '1';
		if AView.DataController.Values[iRow, iType] <> Null then
      Method  := AView.DataController.Values[iRow, iType];
    sLine := '2';
    if AView.DataController.Values[iRow, iCardPay] <> Null then
      CardPay := AView.DataController.Values[iRow, iCardPay];
    sLine := '3';
    if AView.DataController.Values[iRow, iStCd] = Null then Exit;
    sLine := '4';
    if AView.DataController.Values[iRow, iKeyNum] = Null then Exit;
  except on E: Exception do
    begin
      Assert(False, E.Message);
      SetDebugeWrite('Frm_JON03.sg_counselStylesGetContentStyle Error 3 : ' + sLine);
    end;
  end;

  try
    sLine := '5';
    // 후불관련 결제구분 색상적용
    if ((AItem.Index = iType) or (AItem.Index = iPrice)) and
       ((Method = '즉후') or (Method = '즉후(마일)') or
        (Method = '후불') or (Method = '후불(마일)') or
        (Method = '법후') or (Method = '법후(마일)')) then
    begin
      sLine := '6';
      AStyle  := frm_Main.cxStyleBold;
      if (Method = '즉후') or (Method = '법후') then
        AStyle.TextColor := clRed
      else if  (Method = '후불(마일)') or (Method = '즉후(마일)') or (Method = '법후(마일)') then
        AStyle.TextColor := clGreen
      else if (Method = '후불') then
        AStyle.TextColor := clBlue;
    end else
    // 후불카드관련 결제구분 색상적용 P8.승인완료
    if ((AItem.Index = iType) Or (AItem.Index = iPrice)) and
			 (((Method = '후불(카드)-승인완료') Or (Method = '즉후(카드)-승인완료') Or
         (Method = '후불(복합)-승인완료') Or (Method = '즉후(복합)-승인완료')) And ( CardPay = 'P8')) then
    begin
			sLine := '7';
      AStyle  := frm_Main.cxStyleBold;
			if ( Method = '즉후(카드)-승인완료' ) Or ( Method = '즉후(복합)-승인완료' ) then
				AStyle.TextColor := clPurple else
			if ( Method = '후불(카드)-승인완료' ) Or ( Method = '후불(복합)-승인완료' ) then
        AStyle.TextColor := clBlue;
    end else
		// 접수오더 경과시간별 색상적용
    if (AItem.Index = iDuration) and (iTime > -1) and
      (Copy(AView.DataController.Values[iRow, iStCd], 1, 1) = '0') then
    begin
      try
        sLine := '8';
        if AView.DataController.Values[iRow, iTime] <> Null then
        begin
      		if _GetJONColor(AView.DataController.Values[iRow, iTime], Color) then
            AStyle  := frm_Main.cxStyleBold
          else
    		  	AStyle  := frm_Main.cxStyle15;

          AStyle.TextColor := Color;
        end;
      except on E: Exception do
        begin
          Assert(False, E.Message);
          SetDebugeWrite('Frm_JON03.sg_counselStylesGetContentStyle Error 4 : ' + sLine);
        end;
      end;
    end else
    if (iCustLevel > -1) and ((AItem.Index = iCust) or (AItem.Index = iCustTel)) and not GS_LevelColor then
    begin
      try
        sLine := '9';
        if ( AView.DataController.Values[iRow, iKeyNum] <> Null ) And
           ( AView.DataController.Values[iRow, iCustLevel] <> Null ) then
        begin
          sLine := '10';
          KeyNum    := AView.DataController.Values[iRow, iKeyNum];
          sLine := '11';
          CustLevel := AView.DataController.Values[iRow, iCustLevel];
          sLine := '12';
          Color := GetCustLevelColor(KeyNum, CustLevel);
					sLine := '13';
          AStyle  := frm_Main.cxStyle15;
          if Color <> clDefault then
          begin
            AStyle  := frm_Main.cxStyle19;
            AStyle.Color := Color;
            if GB_DARKMODE then AStyle.TextColor := clBlack
                           else AStyle.TextColor := clDefault;
						AStyle.Font.Size := GS_JON_FONTSIZE;
            Exit;
      		end;
        end;
      except on E: Exception do
        Assert(False, E.Message);
      end;
    end else
    begin
      sLine := '14';
      AStyle  := frm_Main.cxStyle15;
      AStyle.TextColor := clBlack;
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
      SetDebugeWrite('Frm_JON03.sg_counselStylesGetContentStyle Error 5 : ' + sLine);
    end;
  end;

  try
		// 플러스콜 색상적용.  [대표번호, 발주지사명]
    if AView.DataController.Values[iRow, iPlus] <> Null then
    begin
    	if (((AItem.Index = iKeyNum) or (AItem.Index = iOutBranch)) and ('y' = AView.DataController.Values[iRow, iPlus])) then
      begin
				AStyle  := frm_Main.cxStyle20;
				AStyle.Font.Size := GS_JON_FONTSIZE;
				Exit;
      end;
    end;
  except on E: Exception do
		begin
      Assert(False, E.Message);
      SetDebugeWrite('Frm_JON03.sg_counselStylesGetContentStyle Error 6 : ' + sLine);
    end;
  end;

  try
    AStyle.Color := clWhite;
  	case Copy(AView.DataController.Values[iRow, iStCd], 1, 1)[1] of
  		'0': AStyle.Color := lb_Common0.Color;
  		'1': AStyle.Color := lb_Common1.Color;
  		'2': AStyle.Color := lb_Common2.Color;
  		'3': AStyle.Color := lb_Common3.Color;
  		'4': AStyle.Color := lb_Common4.Color;
  		'5': AStyle.Color := lb_Common5.Color;
  		'7', 'R': AStyle.Color := lb_Common7.Color;
  		'8': AStyle.Color := lb_Common8.Color;
			'B': AStyle.Color := lb_Common10.Color;
			'D': AStyle.Color := lb_Common11.Color;
			'C', 'M': AStyle.Color := lb_Common9.Color;
		end;

    // 접수오더 경과시간별 셀 색상적용
    if gJONOrderColor.ColorG = 1 then
    begin
      if (AItem.Index = iDuration) and (iTime > -1) and
				 (AView.DataController.Values[iRow, iDuration] <> '') and
         (Copy(AView.DataController.Values[iRow, iStCd], 1, 1) = '0') then
      begin
    		if _GetJONColor(AView.DataController.Values[iRow, iTime], Color) then
        begin
          AStyle.TextColor := clBlack;
          AStyle.Color := Color;
        end;
      end;
    end;

  	if GS_JON_BRCOLOR_SET then
  	begin
  		iBr_no := AView.GetColumnByFieldName('발주지사').Index;
      if AView.DataController.Values[iRow, iBr_no] <> Null then
      begin
  		  if GS_JON_BRCOLOR_SET_USE = 0 then
  		  begin
					if (GS_LOCAL_BRCOLOR_LIST.IndexOf(AView.DataController.Values[iRow, iBr_no]) > -1)  then
  		  	begin
  		  		if GS_PRJ_AREA = 'O' then
  		  		begin
							if (AItem.Index = iOutBranch) then
  		  				if GS_EnvFile.Readstring('BR_COLOR', AView.DataController.Values[iRow, iBr_no], '$00FFFFFF') <> '$00FFFFFF' then
  		  					AStyle.Color := strtoint(GS_EnvFile.Readstring('BR_COLOR', AView.DataController.Values[iRow, iBr_no], '$00FFFFFF')) ;
  		  		end	else
  		  		begin
  		  			if GS_EnvFile.Readstring('BR_COLOR', AView.DataController.Values[iRow, iBr_no], '$00FFFFFF') <> '$00FFFFFF' then
  		  				AStyle.Color := strtoint(GS_EnvFile.Readstring('BR_COLOR', AView.DataController.Values[iRow, iBr_no], '$00FFFFFF')) ;
  		  		end;
  		  	end;
  		  end else
  		  if GS_JON_BRCOLOR_SET_USE = 1 then
  		  begin
  		  	if GS_BRCOLOR_LIST.IndexOf(AView.DataController.Values[iRow, iBr_no]) > -1 then
  		  	begin
  		  		if GS_PRJ_AREA = 'O' then
  		  		begin
  		  			if (AItem.Index = iOutBranch) then
  		  				if GS_BRCOLOR_LIST.Values[AView.DataController.Values[iRow, iBr_no]] <> '$00FFFFFF' then
  		  					AStyle.Color := strtoint(GS_BRCOLOR_LIST.Values[AView.DataController.Values[iRow, iBr_no]]);//, '$00FFFFFF')) ;
  		  		end	else
  		  		begin
  		  			if GS_BRCOLOR_LIST.Values[AView.DataController.Values[iRow, iBr_no]] <> '$00FFFFFF' then
  		  				AStyle.Color := strtoint(GS_BRCOLOR_LIST.Values[AView.DataController.Values[iRow, iBr_no]]);//, '$00FFFFFF')) ;
  		  		end;
  		  	end;
  		  end
      end;
  	end;

		AStyle.Font.Size := GS_JON_FONTSIZE;
	except on E: Exception do
    begin
      Assert(False, E.Message);
      SetDebugeWrite('Frm_JON03.sg_counselStylesGetContentStyle Error 7 : ' + sLine);
    end;
  end;
end;

procedure TFrm_JON03.rb_AcceptClick(Sender: TObject);
begin
	SetDebugeWrite('JON03.rb_AcceptClick');

	if ((GS_PRJ_AREA = 'S') and (GT_USERIF.CT = 'J610')) or (GT_USERIF.BR = 'B100') or 
		 ((GS_PRJ_AREA = 'S') and (GT_USERIF.CT = 'S662')) or ((GS_PRJ_AREA = 'O') and (GT_USERIF.CT = 'H227')) or 
		 ((GS_PRJ_AREA = 'S') and (GT_USERIF.CT = 'Z780')) then //천안월드
	begin
		Log('Frm_JON03.rb_AcceptClick self click', LOGDATAPATHFILE);
	end;

	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	try
		rb_Accept.Enabled := False;
		Frm_Main.Proc_JoinFromView(Self.Tag);
		rb_Accept.Enabled := True;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.cbbCPOrderStChange(Sender: TObject);
begin
  SetDebugeWrite('JON03.cbbCPOrderStChange');
  try
    FCallPassLogi.SetCMOrderState(cbbCPOrderSt.Text);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.cbokeyNumberPropertiesChange(Sender: TObject);
begin
  Proc_BubinListSearch;
end;

procedure TFrm_JON03.cbSSEL10Click(Sender: TObject);
begin
	GS_COUNSEL_SSEL10 := TcxCheckBox(Sender).Checked;
  GS_EnvFile.WriteBool('COUNSEL', 'COUNSEL_SSEL10', GS_COUNSEL_SSEL10);

  cxTCOrderState.Visible := GS_COUNSEL_SSEL10;
  if Not cxTCOrderState.Visible then
  begin
    cxTCOrderState.TabIndex := 0;
    if lbl_JONSrc_Alert1.Visible then lbl_JONSrc_Alert.Visible := True;
  end else
  begin
    if lbl_JONSrc_Alert1.Visible then lbl_JONSrc_Alert.Visible := False;
  end;
end;

procedure TFrm_JON03.cbSSEL1Click(Sender: TObject);
Var i : Integer;
begin
	SetDebugeWrite('Jon03.cbSSEL1Click');
  if TcxCheckBox(Sender).Tag = 1 then
  begin
  	GS_COUNSEL_SSEL1 := TcxCheckBox(Sender).Checked;
	  GS_EnvFile.WriteBool('COUNSEL', 'COUNSEL_SSEL1', GS_COUNSEL_SSEL1);
  end else
  if TcxCheckBox(Sender).Tag = 2 then
  begin
    cb_MyCall.Down := TcxCheckBox(Sender).Checked;
  	GS_COUNSEL_SSEL2 := TcxCheckBox(Sender).Checked;
	  GS_EnvFile.WriteBool('COUNSEL', 'COUNSEL_SSEL2', GS_COUNSEL_SSEL2);
  end else
  if TcxCheckBox(Sender).Tag = 3 then
  begin
  	GS_COUNSEL_SSEL3 := TcxCheckBox(Sender).Checked;
	  GS_EnvFile.WriteBool('COUNSEL', 'COUNSEL_SSEL3', GS_COUNSEL_SSEL3);
  end else
  if TcxCheckBox(Sender).Tag = 4 then
  begin
  	GS_COUNSEL_SSEL4 := TcxCheckBox(Sender).Checked;
	  GS_EnvFile.WriteBool('COUNSEL', 'COUNSEL_SSEL4', GS_COUNSEL_SSEL4);
  end else
  if TcxCheckBox(Sender).Tag = 5 then
  begin
  	GS_COUNSEL_SSEL5 := TcxCheckBox(Sender).Checked;
		GS_EnvFile.WriteBool('COUNSEL', 'COUNSEL_SSEL5', GS_COUNSEL_SSEL5);

    if Not GS_COUNSEL_SSEL5 then
		begin
			//목포콜센타(장승호사장) ID 하드코딩 요청 20210923 KHS. 정회귀 팀장님 요청
			if (GT_UserIf.ID = 'm5000-3007') and (GS_PRJ_AREA = 'O') then
			begin
				GS_COUNSEL_ALLCHECK := False;
			end	else 
			begin	
				cb_All.Down := GS_COUNSEL_SSEL5;
				GS_COUNSEL_ALLCHECK := cb_All.Down;
			end;
			GS_EnvFile.WriteBool('COUNSEL', 'ALLCHECK', GS_COUNSEL_ALLCHECK);
		end;
	end else
  if TcxCheckBox(Sender).Tag = 6 then
  begin
  	GS_COUNSEL_SSEL6 := TcxCheckBox(Sender).Checked;
	  GS_EnvFile.WriteBool('COUNSEL', 'COUNSEL_SSEL6', GS_COUNSEL_SSEL6);
  end else
  if TcxCheckBox(Sender).Tag = 7 then
  begin
  	GS_COUNSEL_SSEL7 := TcxCheckBox(Sender).Checked;
	  GS_EnvFile.WriteBool('COUNSEL', 'COUNSEL_SSEL7', GS_COUNSEL_SSEL7);
  end else
  if TcxCheckBox(Sender).Tag = 8 then
  begin
		GS_COUNSEL_SSEL8 := TcxCheckBox(Sender).Checked;
		GS_EnvFile.WriteBool('COUNSEL', 'COUNSEL_SSEL8', GS_COUNSEL_SSEL8);
  end else
  if TcxCheckBox(Sender).Tag = 9 then
  begin
  	GS_COUNSEL_SSEL9 := TcxCheckBox(Sender).Checked;
	  GS_EnvFile.WriteBool('COUNSEL', 'COUNSEL_SSEL9', GS_COUNSEL_SSEL9);
	end else
	if TcxCheckBox(Sender).Tag = 10 then
	begin
		GS_COUNSEL_SSEL10 := TcxCheckBox(Sender).Checked;
		GS_EnvFile.WriteBool('COUNSEL', 'COUNSEL_SSEL10', GS_COUNSEL_SSEL10);
	end else
	if TcxCheckBox(Sender).Tag = 11 then
	begin
		GS_COUNSEL_SSEL11 := TcxCheckBox(Sender).Checked;
		GS_EnvFile.WriteBool('COUNSEL', 'COUNSEL_SSEL11', GS_COUNSEL_SSEL11);
	end;

  for i := 0 to JON03_MAX_CNT - 1 do
  begin
    if ( Frm_Main.JON03MNG[i].Use ) And ( Frm_Main.JON03MNG[i].CreateYN ) then
    begin
      Frm_Main.Frm_Jon03[i].pSetSearchViewList;
		end;
  end;
end;

procedure TFrm_JON03.cb_00Click(Sender: TObject);
var sTmp : String;
begin
	SetDebugeWrite('JON03.cb_00Click');
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	try
  	if (rb_chk_All.Down) then
    begin
      rb_chk_All.Down := False;
      rb_chk_All.Font.Style := [];
      rb_chk_All.Repaint;
    end;

    if TAdvGlowButton(sender).Down then
    begin
      TAdvGlowButton(sender).Font.Style := [fsBold];
    end else
    begin
      TAdvGlowButton(sender).Font.Style := [];
    end;

    if ( cb_00.Down ) And ( cb_01.Down ) And ( cb_02.Down ) And ( cb_04.Down ) And ( cb_03.Down ) And
  		 ( cb_05.Down ) And ( cb_0R.Down ) And ( cb_0B.Down ) And (	cb_0C.Down ) And ( cb_0D.Down ) And ( cb_08.Down ) then
    begin
      rb_chk_All.Down := True;
      rb_chk_All.Font.Style := [fsBold];
      rb_chk_All.Repaint;
		end;
		//조회 상태값 저장
		if cb_00.Tag <> 99 then
		begin
			sTmp := '0|'; 
			if cb_00.Down then sTmp := sTmp + '1|' else sTmp := sTmp + '0|';
			if cb_01.Down then sTmp := sTmp + '1|' else sTmp := sTmp + '0|'; 
			if cb_0B.Down then sTmp := sTmp + '1|' else sTmp := sTmp + '0|'; 
			if cb_0C.Down then sTmp := sTmp + '1|' else sTmp := sTmp + '0|'; 
			if cb_0D.Down then sTmp := sTmp + '1|' else sTmp := sTmp + '0|'; 
			if cb_03.Down then sTmp := sTmp + '1|' else sTmp := sTmp + '0|'; 
			if cb_05.Down then sTmp := sTmp + '1|' else sTmp := sTmp + '0|'; 
			if cb_02.Down then sTmp := sTmp + '1|' else sTmp := sTmp + '0|'; 
			if cb_08.Down then sTmp := sTmp + '1|' else sTmp := sTmp + '0|'; 
			if cb_0R.Down then sTmp := sTmp + '1|' else sTmp := sTmp + '0|'; 
			if cb_04.Down then sTmp := sTmp + '1|' else sTmp := sTmp + '0|'; 
			GS_EnvFile.WriteString('COUNSEL', 'StatusBtn', sTmp);
		end;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.cb_10Click(Sender: TObject);
begin
	SetDebugeWrite('JON03.cb_10Click');
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	try
    if Not cb_10.Checked then
    begin
      pnl_MultiSearch.Visible := False;

      pnl_MultiSearch.Height := 0;
			pnl_Search.Height := 96;
			chk_OptionAll.Enabled := False;
    end else
    begin
      ReSize_edtFastKey;
			pnl_MultiSearch.Visible := True;
			if chk_MultiSearch.checked then
				chk_OptionAll.Enabled := True else chk_OptionAll.Enabled := False;
		end;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.cb_10SetClick(Sender: TObject);
begin
	SetDebugeWrite('JON03.cb_10SetClick');
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	try
    if ( not Assigned(Frm_SET08) ) Or ( Frm_SET08 = Nil ) then Frm_SET08 := TFrm_SET08.Create(nil);
    Frm_SET08.ShowModal;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.cb_AllClick(Sender: TObject);
begin
	//목포콜센타(장승호사장) ID 하드코딩 요청 20210923 KHS. 정회귀 팀장님 요청
	if (GT_UserIf.ID = 'm5000-3007') and (GS_PRJ_AREA = 'O') then
	begin	
		cb_All.Down := False;
	end;
	GS_COUNSEL_ALLCHECK := cb_All.Down;
	GS_EnvFile.WriteBool('COUNSEL', 'ALLCHECK', GS_COUNSEL_ALLCHECK);
	
  if ( Sender is TcxButton ) then pSetSkinButton(TcxButton(Sender));
end;

procedure TFrm_JON03.cb_branch_Name2Click(Sender: TObject);
begin
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
end;

procedure TFrm_JON03.cb_brNameClick(Sender: TObject);
var
  sBrNo, sCash: string;
begin
  SetDebugeWrite('JON03.cb_brNameClick');
  try
    sBrNo := scb_BranchCode.Strings[cb_brName.ItemIndex];
    sCash := IntToStr(Frm_Main.func_BrSmsCash(sBrNo));
    if TCK_USER_PER.JON_BrchCashView = '1' then
      Lbl_SmsCash.Caption := 'SMS캐쉬 : ' + sCash + '원'
    else
      Lbl_SmsCash.Caption := 'SMS캐쉬 : ' + '**,***원';
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.cb_CityClick(Sender: TObject);
var
  i, k: Integer;
  sl_City: TStringList;
begin
  try
    try
      cb_ward.Properties.Items.Clear;
      cb_ward.Properties.Items.Add('전체');
      cb_Ward.ItemIndex := 0;

      sl_City := TStringList.Create;
      sl_city.Clear;
      sl_city.Assign(GT_MAPOrigi.slCity);
      if cb_city.ItemIndex > 1 then
      begin
        for k := 0 to 2 do
        begin
          i := sl_City.IndexOf(cb_City.Text);
          if i > 1 then
          begin
            if (cb_City.Text <> sl_city.Strings[i - 1]) and
               (cb_City.Text = sl_city.Strings[i]) and
               (cb_City.Text <> sl_city.Strings[i + 1]) then
            begin
              sl_City.Delete(i);
              sl_City.Insert(i, ' ');
            end;
          end;
        end;
      end;

			if cb_city.ItemIndex = 0 then
			begin
				cb_Ward.enabled := False;
				Exit;
      end else cb_Ward.enabled := True;


      for i := sl_city.IndexOf(cb_City.Text) to GT_MAPOrigi.slCity.Count - 1 do
      begin
        if i > 1 then
        begin
          if (cb_City.Text <> GT_MAPOrigi.slCity[i]) and (cb_City.Text <> GT_MAPOrigi.slCity[i + 1]) then
            break;
        end;
        if (cb_city.Text = sl_city.Strings[i]) and (cb_Ward.Properties.Items.IndexOf(GT_MAPOrigi.slWard[i]) < 0) and (GT_MAPOrigi.slWard[i] <> '' ) then
          cb_Ward.Properties.Items.Add(GT_MAPOrigi.slWard[i]);
      end;
    finally
      freeandnil(sl_city);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.cb_ManualBaechaClick(Sender: TObject);
begin
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;

	//목포콜센타(장승호사장) ID 하드코딩 요청 20210923 KHS. 정회귀 팀장님 요청
	if (GT_UserIf.ID = 'm5000-3007') and (GS_PRJ_AREA = 'O') then
	begin	
		if (TcxButton(Sender).Name <> 'cb_MyDriver') and (TcxButton(Sender).Name <> 'cb_MyCall') then 
		begin
      TcxButton(Sender).Down := False;
			exit;
		end;
	end;
	if ( Sender is TcxButton ) then pSetSkinButton(TcxButton(Sender));
end;

procedure TFrm_JON03.cb_OptionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnSearch_Kakao.Click;
end;

procedure TFrm_JON03.cb_OptionPropertiesChange(Sender: TObject);
begin
	case cb_Option.ItemIndex of
		0:
		begin
			cxDtStart.Date := StrToDate(Date8to10(StartDateTime('yyyymmdd')));
			cxDtEnd.Date := cxDtStart.Date + 1;
		end;
		1:
		begin
			cxDtStart.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),	1, 8))) - 4;
			cxDtEnd.Date := cxDtStart.Date + 4;
		end;
		2:
		begin
			cxDtStart.SetFocus;
		end;
	end;    
end;

procedure TFrm_JON03.cb_WardPropertiesCloseUp(Sender: TObject);
begin
	if cb_Ward.text <> '전체' then
		btnLocalSelect.Click;
end;

procedure TFrm_JON03.cEdtNoShowAmtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then btnNoShowOk.Click;
end;

procedure TFrm_JON03.BtnSEYmdMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	SetDebugeWrite('JON03.BtnSEYmdMouseDown');
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	try
    // 검색 권한 없으면 빠짐.
    if TCK_USER_PER.JON_BETWEENDATESEARCH = '1' then Exit;

    if BtnAutoRe.Tag = 1 then BtnAutoRe.Click;
		pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.BtnRSizeClick(Sender: TObject);
begin
  pnlMap.Width := Trunc(Self.Width * 0.1);
end;

procedure TFrm_JON03.btnSSELCloseClick(Sender: TObject);
begin
  grpSetSearchSEL.Visible := False;
end;

procedure TFrm_JON03.cxBubinViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if cxBubinView.DataController.GetFocusedRecordIndex>-1 then
  begin
//		cb_Search_ftxt:=string(cxBubinView.DataController.GetValue(cxBubinView.DataController.GetFocusedRecordIndex, 2)) +'('+ string(cxBubinView.DataController.GetValue(cxBubinView.DataController.GetFocusedRecordIndex, 3)) +')';
//    cb_Search_ftxt := StringReplace(cb_Search_ftxt,'()','',[rfreplaceall]);
	end;

  SelectBubInGrid;
end;

procedure TFrm_JON03.cxButton1Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.cxButton1Click');
  pnlCallPass.Visible := False;
end;

procedure TFrm_JON03.btnNoShowExitClick(Sender: TObject);
begin
  grpSetNoShow.Visible := False;
end;

procedure TFrm_JON03.btnNoShowOkClick(Sender: TObject);
var
  ls_TxLoad, ls_rxxml : String;
  rv_str, sMsg : string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  SetDebugeWrite('JON03.pmNoShowClick');
  if not IsRunMenuShortCut(TMenuItem(Sender)) then Exit;
  if IsOtherBranchCall(Sender) then Exit;

  try
		ls_TxLoad := GTx_UnitXmlLoad('C010.XML');
		ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0006', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ConfChargeString', FloatToStr(cEdtNoShowAmt.Value), [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.btnODtSelectClick(Sender: TObject);
Var i : Integer;
begin
	for i := 1 to 20 do
 	begin
 		if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '접수시간(분단위)' then
    begin
      if cxSEOMin.Text = '0' then
    		TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text := ''
      else
    		TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text := cxSEOMin.Text;

			edtFastKey1Exit(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))));
      Break;
    end;
 	end;
  grpSetOrderDTS.Visible := False;
end;

procedure TFrm_JON03.btnOptionClick(Sender: TObject);
begin
	SetDebugeWrite('JON03.btnOptionClick');
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	try
    if ( not Assigned(Frm_SETA1) ) Or ( Frm_SETA1 = Nil ) then Frm_SETA1 := TFrm_SETA1.Create(nil);
    Frm_SETA1.pnlLeft.Visible := True;
    Frm_SETA1.Show;
    Frm_SETA1.SetOption(0);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.cxButton4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SetDebugeWrite('JON03.cxButton4MouseDown');
  try
    pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.cxButton5Click(Sender: TObject);
begin
  cbSSEL10.Checked := False;

  cxTCOrderState.Visible := False;
  cxTCOrderState.TabIndex := 0;
  if lbl_JONSrc_Alert1.Visible then lbl_JONSrc_Alert.Visible := True;
end;

procedure TFrm_JON03.btnMySqlPoiSyncClick(Sender: TObject);
begin
  try
    btnMySqlPoiSync.Enabled := False;
    Frm_Main.pLOCAL_SYNC_CHECK;
    tmrSQLSync.Enabled := True;
  except
  end;
end;

procedure TFrm_JON03.btnODtAllClick(Sender: TObject);
Var i : Integer;
begin
	for i := 1 to 20 do
 	begin
 		if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '접수시간(분단위)' then
    begin
   		TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text := '';
			edtFastKey1Exit(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))));
      Break;
		end;
 	end;
  grpSetOrderDTS.Visible := False;
  cxSEOMin.Value := 1;
end;

procedure TFrm_JON03.btnODtCancelClick(Sender: TObject);
begin
  grpSetOrderDTS.Visible := False;
end;

procedure TFrm_JON03.BtnYmdCloseClick(Sender: TObject);
begin
  SetDebugeWrite('JON03.BtnYmdCloseClick');
  try
    pnl_SetDate.Visible := False;

    if ( dedt_Sdate.Date = StrToDate(Date8to10(StartDateTime('yyyymmdd'))) ) And
       ( dedt_Edate.Date = StrToDate(Date8to10(StartDateTime('yyyymmdd'))) + 1 )  then
    begin
      btnSetDate.Caption := formatdatetime('mm', dedt_Sdate.Date) +'월 ' + formatdatetime('dd', dedt_Sdate.Date) + '일';
      btnSetDate.Width := 67;
    end else
    begin
      btnSetDate.Caption := formatdatetime('mm', dedt_Sdate.Date) +'월 ' + formatdatetime('dd', dedt_Sdate.Date) + '일 09시 ~ '
                          + formatdatetime('mm', dedt_Edate.Date) +'월 ' + formatdatetime('dd', dedt_Edate.Date) + '일 09시';
      btnSetDate.Width := 197;
    end;
    pSetSearchViewList;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.btn_AccStatusCloseClick(Sender: TObject);
begin
	pnl_AccStatus.Visible := False;
end;

procedure TFrm_JON03.btn_CPChkClick(Sender: TObject);
begin
  if btn_CPChk.Tag = 1 then 
  begin
    btn_CPChk.Tag := 0;
    btn_CPChk.Caption := '콜패스포함';
  end else
  if btn_CPChk.Tag = 0 then 
  begin
    btn_CPChk.Tag := 1;
    btn_CPChk.Caption := '콜패스만';
  end;
  
  if GB_DARKMODE then
  begin
    case btn_CPChk.Tag of
    0 : btn_CPChk.LookAndFeel.SkinName := 'MetropolisDark';    //전체         
    1 : btn_CPChk.LookAndFeel.SkinName := 'Office2010Silver';  //법인만
    end;
  end else
  begin
    case btn_CPChk.Tag of
    0 : btn_CPChk.LookAndFeel.SkinName := 'Office2010Silver';  //전체           
    1 : btn_CPChk.LookAndFeel.SkinName := 'Sharp';             //법인만
    end;
  end;
end;

procedure TFrm_JON03.btn_Jon01BasicPostionClick(Sender: TObject);
var i : integer;
	  iScreenWidth, iJon01Width : integer;
begin
	GS_JON012_POSFIX  := False;
	GS_JON019_POSFIX  := False;
	GS_JON021_POSFIX  := False;
	GS_JON30_POSFIX   := False;

	GS_EnvFile.WriteBool('AcceptWin', 'Jon012Fix', GS_JON012_POSFIX);
	GS_EnvFile.WriteBool('AcceptWin', 'Jon019Fix', GS_JON012_POSFIX);
	GS_EnvFile.WriteBool('AcceptWin', 'Jon30Fix', GS_JON012_POSFIX);
	
	try   //모니터 크기
		if Screen.MonitorCount = 1 then iScreenWidth := Screen.Width
															 else iScreenWidth := Screen.Monitors[Monitor.MonitorNum].Width;
	except
		iScreenWidth := Screen.Width;
	end;
	//  GS_JON01_TYPE : Integer = 0;  // 접수창 타입 선택 0.기본, 1.디자인, 2.타입2
	//  GS_JON01_TAB  : Integer = 0;  // 접수창 보기 : 0.기본, 1.탭방식

	iJon01Width := 615;

	if GS_JON01_TAB = 1 then //탭방식
	begin
    if GB_JON_FIXMODE then
    begin
  		GS_EnvFile.WriteInteger('WinPos', 'Jon00Left', 1);
	  	GS_EnvFile.WriteInteger('WinPos', 'Jon00Top' , 1);
    end else
    begin
      Frm_JON00.Left := iScreenWidth - (Frm_JON00.Width + 5);
      Frm_JON00.Top := 60;

      GS_EnvFile.WriteInteger('WinPos', 'Jon00Left', Frm_JON00.Left);
      GS_EnvFile.WriteInteger('WinPos', 'Jon00Top' , Frm_JON00.Top );
    end;

		Frm_JON00.show;
	end else
	begin
    for i := 0 to JON_MAX_CNT - 1 do
    begin
      if Frm_Main.JON01MNG[i].USE then
      begin
        if Assigned(Frm_Main.Frm_JON01N[i]) then
        begin
          Frm_Main.Frm_JON01N[i].Left := iScreenWidth - (iJon01Width + 5) - (i*30);
          Frm_Main.Frm_JON01N[i].Top := 30 + (i * 30);
          Frm_Main.Frm_JON01N[i].Show
        end;
      end;
    end;
  end;

 	GS_EnvFile.WriteInteger('WinPos', 'Jon01Left', 1);
  GS_EnvFile.WriteInteger('WinPos', 'Jon01Top' , 1);

	GMessagebox('접수창 위치가 초기화 되었습니다', CDMSI);
end;

procedure TFrm_JON03.btn_KakaoListClick(Sender: TObject);
begin
	if pnl_KakaoList.visible then
	begin
		pnl_KakaoList.visible := False;
		status_bar.Visible := True;
	end else
	begin
		AAutoSearch_Stop := True;
		pnl_KakaoList.visible := True;
		pnl_KakaoList.BringToFront;
		pnl_KakaoList.align := alClient;
		status_bar.Visible := False;
//		edtDriveNo.text := '';
//		cb_Option.ItemIndex := 0;
//		btnSearch_Kakao.click; 
	end;
end;

procedure TFrm_JON03.btn_LogOutClick(Sender: TObject);
Var iCuCnt, iWkCnt : Integer;
    vMsg, sBizDate : String;
begin
	// 로그 아웃을 한다.
//  if (GS_PRJ_AREA = 'S') and ((GT_USERIF.HD = 'A1531') Or (GT_USERIF.HD = 'A100')) then
  begin
    Frm_Main.pGetCidCount(iCuCnt, iWkCnt, sBizDate);
    vMsg := Format('%s님이 오늘 전화받은 콜수는', [GT_USERIF.NM]) + CRLF +
            Format(' -고객 : %d 건', [iCuCnt]) + CRLF +
            Format(' -기사 : %d 건', [iWkCnt]) + CRLF +
            Format(' -합계 : %d 건 입니다.', [iCuCnt+iWkCnt]) + CRLF +
            '(당일콜수는 마지막 값으로 업데이트 됩니다)' + CRLF + CRLF +
            '퇴근 등록 할까요?';

		if Application.MessageBox(PChar(vMsg), PChar(GS_APPNAME), MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then Exit;
    GI_CIDINFOSAVETIME := 0;  // 저장후 5분 체크하기 위해
    pSaveCidInfo(iCuCnt, iWkCnt, sBizDate );
  end;

	if frm_Main.proc_ProgramLogOut then
	begin
		GMessagebox('퇴근처리 되었습니다.'+#13#10 + '퇴근시간 : ' + GetStrToLongDateTimeStr(Frm_Main.func_sysdate), CDMSI);
	end;
end;

procedure TFrm_JON03.btn_sms_conClick(Sender: TObject);
begin
  SetDebugeWrite('JON03.btn_sms_conClick');
  try
    if edit1.Text = Label32.Caption then
    begin
      grpSetExcel.Visible := False;
      frm_Main.SaveDialog1.FileName := '접수현황';
      if pm_Excel.Tag = 1 then
      begin
        proc_excel;
      end else
      if pm_Excel.Tag = 2 then
      begin
        if frm_Main.SaveDialog1.Execute then
        begin
					CustomExportGridToHTML(frm_Main.SaveDialog1.FileName, Grd2, False, True, 'XLS');
        end;
      end;
    end else
    begin
      GMessagebox('인증번호가 다릅니다.' + #13#10 + '다시 입력하세요', cdmsw);
      edit1.Text := '';
      edit1.SetFocus;
      Exit;
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
      GMessagebox('실패하였습니다.', CDMSE);
    end;
  end;
end;

procedure TFrm_JON03.cxButton6Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.cxButton6Click');
  pnlCPLogiEnv.Visible := False;
end;

procedure TFrm_JON03.cxButton7Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.cxButton7Click');
  pnlCPLogiEnv.Left := (Self.Width - pnlCPLogiEnv.Width) div 2;
  pnlCPLogiEnv.Top  := ((Self.Height - pnlCPLogiEnv.Height) div 2) - 30;
  pnlCPLogiEnv.Visible := True;
  pnlCPLogiEnv.BringToFront;
end;

procedure TFrm_JON03.cxChkBC1Click(Sender: TObject);
begin
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;

  if cxChkBC1.Tag = 0 then 
  begin
    cxChkBC1.Tag := 1;
    cxChkBC1.Caption := '법인';
  end else
  if cxChkBC1.Tag = 1 then 
  begin
    cxChkBC1.Tag := 2;
    cxChkBC1.Caption := '법인제외';
  end else
  if cxChkBC1.Tag = 2 then 
  begin
    cxChkBC1.Tag := 0;
    cxChkBC1.Caption := '법인';
    cxChkBC1.Down := False;
  end;
  
  if GB_DARKMODE then
  begin
    case cxChkBC1.Tag of
    0 : cxChkBC1.LookAndFeel.SkinName := 'MetropolisDark';    //전체         
    1 : cxChkBC1.LookAndFeel.SkinName := 'Office2010Silver';  //법인만
    2 : cxChkBC1.LookAndFeel.SkinName := 'Office2010Silver';  //법인제외
    end;
  end else
  begin
    case cxChkBC1.Tag of
    0 : cxChkBC1.LookAndFeel.SkinName := 'Office2010Silver';  //전체           
    1 : cxChkBC1.LookAndFeel.SkinName := 'Sharp';             //법인만
    2 : cxChkBC1.LookAndFeel.SkinName := 'Sharp';             //법인제외
    end;
  end;
end;

procedure TFrm_JON03.cxGridAIViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
	AView: TcxGridDBTableView;
	ARow: Integer;
	FirstDatetime: string;
begin
	SetDebugeWrite('Frm_JON03.CallBellViewCellDblClick');

	try
		AView := cxGridAIView;

		ARow := AView.DataController.FocusedRecordIndex;
		if ARow < 0 then Exit;

		if AView.DataController.RecordCount = 0 then
		begin
			GB_JON03SELECT_GB := True;
			Exit;
		end;
    if IsMenuOpen(Sender) then Exit;

		tmr_dis.Enabled := False;
		PnlAuto.Visible := False;
//-    tmr_gHighlight.Enabled := False;

		if (Trim(AView.DataController.Values[ARow, giSlip]) <> '') and
			 (Trim(CallToStr(AView.DataController.Values[ARow, giKeyNum])) <> '') then
		begin
			if (TCK_USER_PER.JON_Order = '1') then// and func_check_CallCenter then
			begin
				if ARow > -1 then
				begin
					if Assigned(AView.GetColumnByFieldName('접수시간2')) then
					begin
						FirstDatetime := AView.DataController.Values[ARow, giAccTime2];
						cxGrid2.Enabled := False;
						Frm_Main.AcceptFromCreate(Trim(AView.DataController.Values[ARow, giSlip]), FirstDatetime, '수정', Self.Tag);

						AView.DataController.DeleteRecord(ARow);
						if AView.DataController.RecordCount < 1 then 
							pnl_AIList.Visible := False;
					end;
				end;
			end else
      begin
        GB_JON03SELECT_GB := True;
//				N12Click(N12);
      end;
    end;
	except on E: Exception do
		begin
			cxGrid2.Enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_JON03.grpSetCallBellListMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetDebugeWrite('JON03.pnlCallBellListMouseDown');
  try
    ReleaseCapture;
    PostMessage(grpSetCallBellList.Handle, WM_SYSCOMMAND, $F012, 0);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.grpSetCallPassMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnlCallPass.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON03.grpSetNoShowMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(grpSetNoShow.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON03.grpSetNoShowMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  PnlHelp.Visible := False;
end;

procedure TFrm_JON03.cxGroupBox5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(pnlCPLogiEnv.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON03.cxGroupBox6Resize(Sender: TObject);
begin
  SetDebugeWrite('JON03.cxGroupBox6Resize');
  btnDocking.Left := cxGroupBox6.Width - ( btnDocking.Width + 3 );
  btnFloating.Left := cxGroupBox6.Width - ( btnFloating.Width + 3 );
end;

procedure TFrm_JON03.cxImage1Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.cxImage1Click');
  Image1.Tag := 1;
  PmAutoSec.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_JON03.cxLblJaSabunViewClick(Sender: TObject);
begin
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	SetDebugeWrite('JON03.cxLblJaSabunViewClick');
	cxLblJaSabunView.Visible := False;
	if Edit4.Enabled then Edit4.SetFocus;
end;

procedure TFrm_JON03.cxTCOrderStateChange(Sender: TObject);
begin
  if cxTCOrderState.TabIndex >= 0 then
    SetOrderStateFilter;
end;

procedure TFrm_JON03.cxTCOrderStateClick(Sender: TObject);
begin
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
end;

procedure TFrm_JON03.cxViewCounselTodayGetCellHeight(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; ACellViewInfo: TcxGridTableDataCellViewInfo;
  var AHeight: Integer);
begin
	AHeight := GS_JON_GRIDHEIGHT;
end;

procedure TFrm_JON03.cxBtnInitialSearchClick(Sender: TObject);
var i : Integer;
begin
	SetDebugeWrite('JON03.cxBtnInitialSearchClick');
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	try
    // 오더현황 초기화 조회..
  	for i := 1 to 20 do
		begin
  		TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text := '';
  	end;
    LoadFastFindControls;

    btnAppSch.Tag := 0;
    btnAppSch.Caption := '';

    btnAppSch.Down := False;
    pSetSkinButton(btnAppSch);

		AutoFlag := True;

    MultiCallNumber.Slip.Clear;
    MultiCallNumber.BaechaTime.Clear;
    MultiCallNumber.MultiSlip.Clear;
		MultiCallNumber.Seq.Clear;

		FMultiOrderChange.HdNo.Clear; 
		FMultiOrderChange.BrNo.Clear; 
		FMultiOrderChange.Status.Clear;
		FMultiOrderChange.Slip.Clear;
		FMultiOrderChange.Start.Clear; 
		FMultiOrderChange.sEnd.Clear;
		FMultiOrderChange.CustNm.Clear;
		FMultiOrderChange.CustTel.Clear;
		FMultiOrderChange.CustTel1.Clear;
		FMultiOrderChange.CustTel22.Clear;
		FMultiOrderChange.CashType.Clear;
		FMultiOrderChange.Deposit.Clear;
		FMultiOrderChange.Lat.Clear;
		FMultiOrderChange.Lat.Clear;
    FMultiOrderChange.WkSabun.Clear;
		FMultiOrderChange.WkHdNo.Clear;
		FMultiOrderChange.WkBrNo.Clear;
    FMultiOrderChange.KeyNumber.Clear;

		cxBtnInitialSearch.Enabled := False;

		CallBellView.DataController.SetRecordCount(0);
		grpSetCallBellList.Visible := False; //조회버튼 클릭 시 감춤
		FCallBellInfo.Slip.Clear;
		FCallBellInfo.KeyNumber.Clear;
		FCallBellInfo.BrNm.Clear;
		FCallBellInfo.CuNm.Clear;
		FCallBellInfo.Start.Clear;
		FCallBellInfo.Acc2.Clear;

		cxGridAIView.DataController.SetRecordCount(0);
		pnl_AIList.Visible := False; //조회버튼 클릭 시 감춤
		FAIInfo.Slip.Clear;
		FAIInfo.KeyNumber.Clear;
		FAIInfo.BrNm.Clear;
		FAIInfo.CuNm.Clear;
		FAIInfo.Start.Clear;
		FAIInfo.Acc2.Clear;

		pmm_searchClick(pmm_search);
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.btnPassToCallMartClick(Sender: TObject);
var
  ATel, ATel1, ATel2: string;
begin
  SetDebugeWrite('JON03.btnPassToCallMartClick');
  try
    ATel1 := GT_OrderInfo[Self.Tag].CustTel1;
    ATel2 := GT_OrderInfo[Self.Tag].CustTel22;

    if ATel2 = '' then
      ATel := RemovePhone(ATel1)
    else
      ATel := RemovePhone(ATel2);

    if CheckCallPass('콜마트') then
      RunPassToCallMart(GT_OrderInfo[Self.Tag].Slip, ATel, GT_OrderInfo[Self.Tag].Status);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.btnPassToLogiClick(Sender: TObject);
var
  St, Ed, Bigo, Price, acc2, CuTel, KeyNum: string;
  AView: TcxGridDBTableView;
  ls_TxLoad, rv_str, Param, ErrMsg: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  SetDebugeWrite('JON03.btnPassToLogiClick');
  try
    AView := GetCurrentView;

    if GT_OrderInfo[Self.Tag].ARow < 0 then
    begin
      GMessagebox('오더를 먼저 선택하세요.', CDMSE);
      Exit;
    end;

    if GT_OrderInfo[Self.Tag].Status <> '0' then
    begin
      GMessagebox('접수 상태의 오더만 로지로 콜패스 가능합니다.', CDMSE);
      Exit;
    end;

    try
      KeyNum  := RemoveAll(GT_OrderInfo[Self.Tag].KeyNumber, '-');
      CuTel   := RemoveAll(GT_OrderInfo[Self.Tag].CustTel1, '-');

      St    := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giStartArea];
      Ed    := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giEndArea];
    	Bigo  := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giBigo];
      Price := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giPrice];
      Price := RemoveAll(Price, ',');
      acc2  := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giAccTime2];

    except on E: Exception do
      Assert(False, E.Message);
    end;

  	if ( GT_UserIF.HD = 'A5135' ) Or ( GT_UserIF.HD = 'A100' ) then
		Begin
			if not _IsOverTime(acc2, 60) then
			begin
				pnlCallPass.Visible := False;
				GMessagebox('접수 1분 이상인 오더만 콜패스 가능합니다.', CDMSE);
				Exit;
			end;
		End	else
		Begin
			if not _IsOverTime(acc2, 180) then
			begin
				pnlCallPass.Visible := False;
				GMessagebox('접수 3분 이상인 오더만 콜패스 가능합니다.', CDMSE);
				Exit;
			end;
		End;

    pnlNoMouseMove.Left := 436;
    if pnlCallPass.Top - pnlNoMouseMove.Height > 0 then
      pnlNoMouseMove.Top  := pnlCallPass.Top - pnlNoMouseMove.Height
    else
      pnlNoMouseMove.Top  := pnlCallPass.Top + pnlCallPass.Height;
    pnlNoMouseMove.Visible := True;
    pnlNoMouseMove.BringToFront;

    if FCallPassLogi.ConfSet.sCmOrdSt = '대기' then
    begin
      try
        ls_TxLoad := GTx_UnitXmlLoad('C007.XML');
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'RESV0005', [rfReplaceAll]);

        ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString',   GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString',  GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString',    GT_USERIF.ID, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'GubunCodeString',  '5', [rfReplaceAll]);

        slReceive := TStringList.Create;
        try
          if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
          begin
            rv_str := slReceive[0];
            if rv_str <> '' then
            begin
              Application.ProcessMessages;
              proc_Acc_Search(1, GT_OrderInfo[Self.Tag].Slip, 'JON03-2');
            end;
          end;
        finally
          slReceive.Free;
        end;
      except
        on e : exception do begin
          ShowMessage('오더 상태를 변경하던중 에러가 발생 하였습니다.' + #13#10 + e.Message);
        end;
      end;
    end;

    try
      // AKeyNum, ATel, ASt, AEd, ARate, ABigo, AJTime: string
      if FCallPassLogi.SendCallPass(
          KeyNum
        , CuTel
        , St
        , Ed
        , Price
        , Bigo
        , ''
      ) then
      begin
        Param := GT_USERIF.ID + '│' + KeyNum + '│' + FCallPassLogi.GetTargetKeyNum(KeyNum);
        if not RequestBase(GetCallable05('CallPassLog', 'client_log.callpass_log', Param), ErrCode, ErrMsg) then
        begin
          Exit;
        end;
      end;
    finally
      edtCPLogiKeyNum.Clear;
      pnlCallPass.Visible := False;
      pnlNoMouseMove.Visible := False;
    end;
  except on E: Exception do
		Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.btnSearchSELClick(Sender: TObject);
begin
  if Not grpSetSearchSEL.Visible then
  begin
    status_bar.Visible := True;
    pnl_KakaoList.Visible := False;
    GS_COUNSEL_SSEL1 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL1', True);
    if GS_COUNSEL_SSEL1 then cbSSEL1.Checked := True
                        else cbSSEL1.Checked := False;
    GS_COUNSEL_SSEL2 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL2', True);
    if GS_COUNSEL_SSEL2 then cbSSEL2.Checked := True
                        else cbSSEL2.Checked := False;
    GS_COUNSEL_SSEL3 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL3', True);
    if GS_COUNSEL_SSEL3 then cbSSEL3.Checked := True
                        else cbSSEL3.Checked := False;
    GS_COUNSEL_SSEL4 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL4', True);
    if GS_COUNSEL_SSEL4 then cbSSEL4.Checked := True
                        else cbSSEL4.Checked := False;
    GS_COUNSEL_SSEL5 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL5', True);
    if GS_COUNSEL_SSEL5 then cbSSEL5.Checked := True
                        else cbSSEL5.Checked := False;
    GS_COUNSEL_SSEL6 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL6', False);
    if GS_COUNSEL_SSEL6 then cbSSEL6.Checked := True
                        else cbSSEL6.Checked := False;
    GS_COUNSEL_SSEL7 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL7', False);
    if GS_COUNSEL_SSEL7 then cbSSEL7.Checked := True
                        else cbSSEL7.Checked := False;
    GS_COUNSEL_SSEL8 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL8', False);
    if GS_COUNSEL_SSEL8 then cbSSEL8.Checked := True
                        else cbSSEL8.Checked := False;
    GS_COUNSEL_SSEL9 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL9', False);
    if GS_COUNSEL_SSEL9 then cbSSEL9.Checked := True
                        else cbSSEL9.Checked := False;
    GS_COUNSEL_SSEL11 := GS_EnvFile.ReadBool('COUNSEL', 'COUNSEL_SSEL11', False);
    if GS_COUNSEL_SSEL11 then cbSSEL11.Checked := True
                         else cbSSEL11.Checked := False;

    grpSetSearchSEL.Top := 34;
    grpSetSearchSEL.Left := btnSearchSEL.Left;
    grpSetSearchSEL.Visible := True;
  end else
  begin
    grpSetSearchSEL.Visible := False;
  end;
end;

procedure TFrm_JON03.btnSearch_KakaoClick(Sender: TObject);
begin
	if edtDriveNo.Text = '' then proc_KakaoList(0) else proc_KakaoList(1);
end;

procedure TFrm_JON03.btnSetDateClick(Sender: TObject);
begin
	SetDebugeWrite('JON03.btnSetDateClick');
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	try
    // 검색 권한 없으면 빠짐.
    if TCK_USER_PER.JON_BETWEENDATESEARCH = '1' then Exit;

    pnl_SetDate.Top := btnSetDate.Top;
    pnl_SetDate.Left := 39;
    pnl_SetDate.Visible := True;

    if BtnAutoRe.Tag = 1 then BtnAutoRe.Click;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.dedt_SdateExit(Sender: TObject);
begin
  SetDebugeWrite('JON03.dedt_SdateExit');
  try
    if TcxDateEdit(Sender).Text = '' then
    begin
      dedt_Sdate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      dedt_eDate.Date := dedt_Sdate.Date + 1;

      BtnYmdCloseClick(btnYmdClose);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.DispOrderCount(ATotal: Integer; Var AValue : array of Int64);
  function lfGetStateCodeCnt(sName : String; Var AValue : array of Int64) : String;
  begin
    if Trim(sName) = '접수' then Result := FormatFloat(' 접수(#,##0) ', AValue[0]) else
    if Trim(sName) = '배차' then Result := FormatFloat(' 배차(#,##0) ', AValue[1]) else
	  if Trim(sName) = '운행' then Result := FormatFloat(' 운행(#,##0) ', AValue[14]) else
    if Trim(sName) = '배중' then Result := FormatFloat(' 배중(#,##0) ', AValue[11]) else
    if Trim(sName) = '근배' then Result := FormatFloat(' 근배(#,##0) ', AValue[10]) else
    if Trim(sName) = '강제' then Result := FormatFloat(' 강제(#,##0) ', AValue[3]) else
    if Trim(sName) = '대기' then Result := FormatFloat(' 대기(#,##0) ', AValue[5]) else
    if Trim(sName) = '완료' then Result := FormatFloat(' 완료(#,##0) ', AValue[2]) else
    if Trim(sName) = '취소' then Result := FormatFloat(' 취소(#,##0) ', AValue[7]) else
    if Trim(sName) = '예약' then Result := FormatFloat(' 예약(#,##0) ', AValue[6]) else
    if Trim(sName) = '문의' then Result := FormatFloat(' 문의(#,##0) ', AValue[4]);
  end;
var
  Total, i,
  CancelRate,
  WkRate: Integer;
begin
  SetDebugeWrite('JON03.DispOrderCount');
  try
		if Length(AValue) = 15 then
		begin
			Total := AValue[0] + AValue[1] + AValue[14] + AValue[2] + AValue[3] + AValue[7];    //접수+배차+운행+완료+강제배차+취소
			if Total = 0 then
        CancelRate := 0
      else
        CancelRate := Round(AValue[7] / Total * 100); // ATotal -> Total

			if (AValue[8] > 0) and ((AValue[0] + AValue[1] + AValue[14] + AValue[2] + AValue[3] + AValue[8]) > 0) then
				WkRate := Round(AValue[8] / (AValue[0] + AValue[1] + AValue[14] + AValue[2] + AValue[3] + AValue[8]) * 100)
			else
				WkRate := 0;

			status_bar.Panels[0].Text := Format(
				'조회[%d] = 접[%d] + 근[%d] + 배중[%d] + 배[%d] + 운[%d] + 완[%d] + 강[%d] + 대[%d] + 예[%d] + ' +
				'문[%d] + 취소[%d(취소율[%d%%])] : 기사부족[%d(기사부족취소율[%d%%)] 요[%s] 카[%s] 수[%s]',
  			[
          ATotal,       // 조회(전체)
					AValue[0],    // 접수
					AValue[10],   // 근배
					AValue[11],   // 배차중
					AValue[1],    // 배차
					AValue[14],   // 운행
					AValue[2],    // 완료
					AValue[3],    // 강제배차
  				AValue[5],    // 대
          AValue[6],    // 예약

          AValue[4],    // 문
          AValue[7],    // 취소
          CancelRate,   // 취소율
          AValue[8],    // 기사부족
          WkRate,       // 기사부족취소율
  				FormatFloat('#,##0', StrToFloatDef(IntToStr(AValue[9]), 0.0)),
					FormatFloat('#,##0', StrToFloatDef(IntToStr(AValue[12]), 0.0)), //카드금액
					FormatFloat('#,##0', StrToFloatDef(IntToStr(AValue[13]), 0.0)) //수수료
        ]);

      cx_chk_All.Caption := FormatFloat('#,##0', ATotal);  // 전체

      cx_00.Caption := FormatFloat('#,##0', AValue[0] );  // 접수
      cx_01.Caption := FormatFloat('#,##0', AValue[1] );  // 배차
      cx_0C.Caption := FormatFloat('#,##0', AValue[10]);  // 근배
      cx_0B.Caption := FormatFloat('#,##0', AValue[11]);  // 배중
	    cx_0D.Caption := FormatFloat('#,##0', AValue[14]);  // 운행
      cx_03.Caption := FormatFloat('#,##0', AValue[3] );  // 강제
      cx_05.Caption := FormatFloat('#,##0', AValue[5] );  // 대기
      cx_02.Caption := FormatFloat('#,##0', AValue[2] );  // 완료
      cx_04.Caption := FormatFloat('#,##0', AValue[4] );  // 문의
      cx_0R.Caption := FormatFloat('#,##0', AValue[6] );  // 예약
      cx_08.Caption := FormatFloat('#,##0', AValue[7] );  // 취소

      cxTCOrderState.Tabs.BeginUpdate;
      try
        cxTCOrderState.Tabs[0].Caption := FormatFloat(' 선택상태전체(#,##0) ', ATotal);
        for i := 1 to cxTCOrderState.Tabs.Count - 1 do
        begin
          cxTCOrderState.Tabs[i].Caption := lfGetStateCodeCnt(Copy(cxTCOrderState.Tabs[i].Caption, 1, 3), AValue);
        end;
      finally
        cxTCOrderState.Tabs.EndUpdate;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.DispFilterCount(ATotal: Integer);
begin
  SetDebugeWrite('JON03.DispFilterCount');
	try
    if ATotal < 0 then
    begin
			status_bar.Panels[0].Text :=
				'조회[-] = 접[-] + 근[-] + 배중[-] + 배[-] + 운[-] + 완[-] + 강[-] + 대[-] + 예[-] + ' +
    		'문[-] + 취소[-(취소율[-%])] : 기사부족[-(기사부족취소율[-%)]';

      cx_chk_All.Caption := '-';  // 전체
      cx_00.Caption := '-';  // 접수
      cx_01.Caption := '-';  // 배차
      cx_0C.Caption := '-';  // 근배
			cx_0B.Caption := '-';  // 배중
			cx_0D.Caption := '-';  // 운행
      cx_03.Caption := '-';  // 강제
      cx_05.Caption := '-';  // 대기
      cx_02.Caption := '-';  // 완료
      cx_04.Caption := '-';  // 문의
      cx_0R.Caption := '-';  // 예약
      cx_08.Caption := '-';  // 취소
    end else
    begin
    	status_bar.Panels[0].Text := Format(
				'조회[%d] = 접[%d] + 근[%d] + 배중[%d] + 배[%d] + 운[%d] + 완[%d] + 강[%d] + 대[%d] + 예[%d] + ' +
				'문[%d] + 취소[%d(취소율[%d%%])] : 기사부족[%d(기사부족취소율[%d%%)]',
    		[
          ATotal,  // 조회(전체)
          ATotal,  // 접수
    			0,       // 근배
    			0,       // 배중
					0,       // 배차
					0,       // 운행
					0,       // 완료
          0,       // 강제배차
    			0,       // 대
          0,       // 예약
          0,       // 문
          0,       // 취소
          0,       // 취소율
          0,       // 기사부족
          0        // 기사부족취소율
        ]);

      cx_chk_All.Caption := FormatFloat('#,##0', ATotal);  // 전체

      cx_00.Caption := FormatFloat('#,##0', ATotal );  // 접수
      cx_01.Caption := FormatFloat('#,##0', 0);  // 배차
      cx_0C.Caption := FormatFloat('#,##0', 0);  // 근배
      cx_0B.Caption := FormatFloat('#,##0', 0);  // 배중
	  cx_0D.Caption := FormatFloat('#,##0', 0);  // 운행
      cx_03.Caption := FormatFloat('#,##0', 0);  // 강제
      cx_05.Caption := FormatFloat('#,##0', 0);  // 대기
      cx_02.Caption := FormatFloat('#,##0', 0);  // 완료
      cx_04.Caption := FormatFloat('#,##0', 0);  // 문의
      cx_0R.Caption := FormatFloat('#,##0', 0);  // 예약
      cx_08.Caption := FormatFloat('#,##0', 0);  // 취소
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.Edit4Click(Sender: TObject);
begin
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
end;

procedure TFrm_JON03.Edit4Enter(Sender: TObject);
begin
  SetDebugeWrite('JON03.Edit4Enter');
  cxLblJaSabunView.Visible := False;
end;

procedure TFrm_JON03.Edit4Exit(Sender: TObject);
begin
  SetDebugeWrite('JON03.Edit4Exit');
  cxLblJaSabunView.Visible := (Edit4.Text = '') // 입력 잔상.
end;

procedure TFrm_JON03.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sWk_Sabun, sBrNo, ls_TxLoad, rv_str : string;
  ls_rxxml: String;
  slReceive: TStringList;
  ErrCode: integer;
begin
  SetDebugeWrite('JON03.Edit4KeyDown');
  if Key = VK_RETURN then
  begin
  	sWk_Sabun := Edit4.Text; //기사사번(자체사번)
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sBrNo := scb_FamilyBrCode.Strings[cb_branch_Name2.ItemIndex] //지사코드
    else
      sBrNo := scb_BranchCode.Strings[cb_branch_Name2.ItemIndex]; //지사코드

    if sWk_Sabun = '' then
    begin
      GMessagebox('기사자체사번을 입력해 주세요', CDMSE);
      Exit;
  	end;

  	tmr_dis.Enabled := False;
    PnlAuto.Visible := False;

  	try
  		if GT_OrderInfo[Self.Tag].Slip = '' then
			begin
  			GMessagebox('오더선택후 강제배차하세요', CDMSE);
  			Exit;
  		end	else
  		begin
  			if GT_OrderInfo[Self.Tag].Status = '' then
  				GMessagebox('상태코드가 없습니다.', CDMSE)
  			// [hjF-091022] 강제배차 연합설정 적용
				else if not func_check_CallCenter then
				begin
					Assert(False, 'Frm_JON03.Edit4KeyDown - 타사콜입니다.' + sChCallMsg);
					if icheck_CT_Flag = 0 then
					begin
						GMessagebox('타사오더는 강제배차 할 수 없습니다.', CDMSE);
					end;
					Exit;
  			end	else
        if not IsUseOfficeBaecha(GT_OrderInfo[Self.Tag].BrNo) then
  			begin
  				GMessagebox('연합사 설정으로 인해 강제배차가 제한되었습니다.', CDMSE);
  				Exit;
  			end else
  			begin
  				//전문보내기
					ls_TxLoad := GTx_UnitXmlLoad('C006.XML');
  				ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  				ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  				ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC14', [rfReplaceAll]);
  				ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', En_Coding(GT_OrderInfo[Self.Tag].Slip), [rfReplaceAll]);
  				ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  				ls_TxLoad := StringReplace(ls_TxLoad, 'WkSabunString', En_Coding(sWk_Sabun), [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ConfWkSbString',En_Coding(GT_OrderInfo[Self.Tag].WkSabun), [rfReplaceAll]);   // 기사사번
					ls_TxLoad := StringReplace(ls_TxLoad, 'OdbWkSbString', '', [rfReplaceAll]);   // ODB기사사번
					ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', En_Coding(GT_OrderInfo[Self.Tag].Status), [rfReplaceAll]);
  				ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '5', [rfReplaceAll]);
  				ls_TxLoad := StringReplace(ls_TxLoad, 'BaechaSMSString', '', [rfReplaceAll]);
  				ls_TxLoad := StringReplace(ls_TxLoad, 'BranchCode', sBrNo, [rfReplaceAll]);

  				slReceive := TStringList.Create;
  				try
  					if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
  					begin
  						rv_str := slReceive[0];
  						if rv_str <> '' then
  						begin
  							ls_rxxml := rv_str;
  							Application.ProcessMessages;
  							proc_recieve(ls_rxxml);
  						end;
  					end;
  				finally
  					FreeAndNil(slReceive);
  				end;
  			end;
  		end;
  	except
  		on e: exception do
  		begin
  			ls_TxLoad := 'Jon03[RbButton15Click]:' + e.Message;

  			GMessagebox(PChar(ls_TxLoad), CDMSE);
  			Assert(False, E.Message);
  		end;
  	end;
  end;
end;

procedure TFrm_JON03.edtDriveNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then btnSearch_Kakao.Click;
end;

procedure TFrm_JON03.edtDriveNoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Trim(edtDriveNo.Text) = '' then 
	begin
		cb_Option.enabled := True;
		cxDtStart.enabled := True;
		cxDtEnd.enabled := True;
	end else
	begin
		cb_Option.enabled := False;
		cxDtStart.enabled := False;
		cxDtEnd.enabled := False;
	end;
end;

procedure TFrm_JON03.edtFastKey1Click(Sender: TObject);
var
  Edit: TcxTextEdit absolute Sender;
	pt: TPoint;
begin
	SetDebugeWrite('JON03.edtFastKey1Click');
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	try
		if TcxTextEdit(Sender).Hint = '법인명' then
		begin
		end else pnlBubin.Visible := False;

		if TcxTextEdit(Sender).Hint = '접수시간(분단위)' then
		begin
		end else grpSetOrderDTS.Visible := False;

		if TcxTextEdit(Sender).Hint = '지역선택' then
		begin
		end else grpSetLocalS.Visible := False;

		if TcxTextEdit(Sender).Hint = '카드승인' then
		begin
			GetCursorPos(pt);
			pm_FastSearch29.Popup(pt.X, pt.Y);
		end else
		if TcxTextEdit(Sender).Hint = '고객구분' then
    begin
			GetCursorPos(pt);
      pm_FastSearch14.Popup(pt.X, pt.Y);
    end else
    if TcxTextEdit(Sender).Hint = '결제구분' then
    begin
      GetCursorPos(pt);
      pm_FastSearch15.Popup(pt.X, pt.Y);
    end else
    if TcxTextEdit(Sender).Hint = '배차구분' then
    begin
      GetCursorPos(pt);
      pm_FastSearch17.Popup(pt.X, pt.Y);
    end else
		if TcxTextEdit(Sender).Hint = '탁송연합콜' then
    begin
      GetCursorPos(pt);
      pm_FastSearch25.Popup(pt.X, pt.Y);
		end;
		if TcxTextEdit(Sender).Hint = '경과시간(분단위)' then
    begin
			GetCursorPos(pt);
			pm_FastSearch22.Popup(pt.X, pt.Y);
		end;
  	TcxTextEdit(Sender).SelectAll;
  except on E: Exception do
		Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.edtFastKey1Enter(Sender: TObject);
	procedure _SetFastFindEdit(AEdit:TcxTextEdit; ALabel:TcxLabel; AKey:string);
  Var i : Integer;
  begin
		if AEdit.Hint = AKey then
		begin
			AEdit.Clear;
			ALabel.Visible := False;

      if (AKey = '고객번호') or
         (AKey = '대표번호') or
         (AKey = '접수번호') or
         (AKey = '기사사번') or
         (AKey = '요금') then
      begin
        AEdit.properties.ImeMode := imSAlpha;
      end else
      begin
        AEdit.properties.ImeMode := imSHanguel;
      end;

			if AEdit.Hint = '법인명' then FBubinLabel := ALabel;

      if AEdit.Hint = '고객구분' then
      begin
        for i := 0 to pm_FastSearch14.Items.Count - 1 do
          pm_FastSearch14.Items[i].Checked := False;
      end else
      if AEdit.Hint = '결제구분' then
      begin
        for i := 0 to pm_FastSearch15.Items.Count - 1 do
          pm_FastSearch15.Items[i].Checked := False;
      end else
      if AEdit.Hint = '배차구분' then
      begin
        for i := 0 to pm_FastSearch17.Items.Count - 1 do
          pm_FastSearch17.Items[i].Checked := False;
      end;
		end;
	end;
var
	Edit: TcxTextEdit absolute Sender;
	iTop, iFloor : integer;
begin
	SetDebugeWrite('JON03.edtFastKey1Enter');
	try
		if Not Assigned(FBubinLabel) then
			FBubinLabel := TcxLabel.Create(Self);
		iFloor := 2; //컨틀롤 위치 확인
	// 20120801 LYB 수정
		if Edit = edtFastKey1 then
		begin
			_SetFastFindEdit(Edit, lbFastKey1, gJONFastFind.Key1);
			iFloor := 1;
		end else
		if Edit = edtFastKey2 then
		begin
			_SetFastFindEdit(Edit, lbFastKey2, gJONFastFind.Key2); 
			iFloor := 1;
		end else
		if Edit = edtFastKey3 then
		begin
			_SetFastFindEdit(Edit, lbFastKey3, gJONFastFind.Key3); 
			iFloor := 1;
		end else
		if Edit = edtFastKey4 then
		begin
			_SetFastFindEdit(Edit, lbFastKey4, gJONFastFind.Key4); 
			iFloor := 1;
		end else
		if Edit = edtFastKey5 then
		begin
			_SetFastFindEdit(Edit, lbFastKey5, gJONFastFind.Key5); 
			iFloor := 1;
		end else
		if Edit = edtFastKey6 then
		begin
			_SetFastFindEdit(Edit, lbFastKey6, gJONFastFind.Key6); 
			iFloor := 1;
		end else
		if Edit = edtFastKey7 then
		begin
			_SetFastFindEdit(Edit, lbFastKey7, gJONFastFind.Key7); 
			iFloor := 1;
		end else
		if Edit = edtFastKey8 then
			_SetFastFindEdit(Edit, lbFastKey8, gJONFastFind.Key8) else
		if Edit = edtFastKey9 then
			_SetFastFindEdit(Edit, lbFastKey9, gJONFastFind.Key9) else
		if Edit = edtFastKey10 then
			_SetFastFindEdit(Edit, lbFastKey10, gJONFastFind.Key10) else
		if Edit = edtFastKey11 then
			_SetFastFindEdit(Edit, lbFastKey11, gJONFastFind.Key11) else
		if Edit = edtFastKey12 then
			_SetFastFindEdit(Edit, lbFastKey12, gJONFastFind.Key12) else
		if Edit = edtFastKey13 then
			_SetFastFindEdit(Edit, lbFastKey13, gJONFastFind.Key13) else
		if Edit = edtFastKey14 then
			_SetFastFindEdit(Edit, lbFastKey14, gJONFastFind.Key14) else
		if Edit = edtFastKey15 then
			_SetFastFindEdit(Edit, lbFastKey15, gJONFastFind.Key15) else
		if Edit = edtFastKey16 then
			_SetFastFindEdit(Edit, lbFastKey16, gJONFastFind.Key16) else
		if Edit = edtFastKey17 then
			_SetFastFindEdit(Edit, lbFastKey17, gJONFastFind.Key17) else
		if Edit = edtFastKey18 then
			_SetFastFindEdit(Edit, lbFastKey18, gJONFastFind.Key18) else
		if Edit = edtFastKey19 then
			_SetFastFindEdit(Edit, lbFastKey19, gJONFastFind.Key19) else
		if Edit = edtFastKey20 then
			_SetFastFindEdit(Edit, lbFastKey20, gJONFastFind.Key20)
		 ;
		//팝업판넬 위치 오류 수정 20210628 KHS
		iTop := 0;
		if iFloor = 1 then 
		begin
			if cb_10.Checked then //확장일경우 확장판넬 크기만큼 빼줌 
				iTop := cxGroupBox6.Top + cxGroupBox6.Height - pnl_MultiSearch.Height
			else
				iTop := cxGroupBox6.Top + cxGroupBox6.Height  //1층에 있을경우 법인창 높이를 조절하기 위해 사용
		end	else iTop := pnl_MultiSearch.Top  + 25;
		/////////////////////////////////팝업판넬 위치 오류 수정 20210628 KHS
		if TcxTextEdit(Sender).Hint = '법인명' then
		begin
			if Not Assigned(FBubinTextEdit) then
				FBubinTextEdit := TcxTextEdit.Create(Self);
			FBubinTextEdit := TcxTextEdit(Sender);

			if pnl_MultiSearch.Width > ( FBubinTextEdit.Left + pnlBubin.Width ) then
				pnlBubin.Left := FBubinTextEdit.Left
			else
				pnlBubin.Left := ( ( pnl_MultiSearch.Width ) - pnlBubin.Width ) - 10;

			pnlBubin.Top  := iTop;
      pnlBubin.BringToFront;
			pnlBubin.Visible := True;

			Proc_BubinListSearch;
			pnlBubin.Visible := True;
		end else
		if TcxTextEdit(Sender).Hint = '접수시간(분단위)' then
		begin
			// 20130627  화면 좌측 끝 부분 마우스 위치 시에 넘어가는거 방지 LYB
			if pnl_MultiSearch.Width > ( TcxTextEdit(Sender).Left + grpSetOrderDTS.Width ) then
				grpSetOrderDTS.Left := TcxTextEdit(Sender).Left
			else
				grpSetOrderDTS.Left := ( ( pnl_MultiSearch.Width ) - grpSetOrderDTS.Width ) - 10;

			grpSetOrderDTS.Top  := iTop;// pnl_MultiSearch.Top + TcxTextEdit(Sender).Top + 25;
			grpSetOrderDTS.BringToFront;
			grpSetOrderDTS.Visible := True;
		end else
		if TcxTextEdit(Sender).Hint = '지역선택' then
		begin
			// 20130627  화면 좌측 끝 부분 마우스 위치 시에 넘어가는거 방지 LYB
			if pnl_MultiSearch.Width > ( TcxTextEdit(Sender).Left + grpSetLocalS.Width ) then
        grpSetLocalS.Left := TcxTextEdit(Sender).Left
      else
        grpSetLocalS.Left := ( ( pnl_MultiSearch.Width ) - grpSetLocalS.Width ) - 10;

			grpSetLocalS.Top  := iTop;//pnl_MultiSearch.Top + TcxTextEdit(Sender).Top + 25;
			grpSetLocalS.BringToFront;
      grpSetLocalS.Visible := True;
		end;

	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.edtFastKey1Exit(Sender: TObject);
	procedure _SetFastFindEdit(AEdit: TcxTextEdit; ALabel: TcxLabel; AKey: string);
  begin
		if AEdit.Text = '' then
		begin
			if (AKey = '고객번호') or
				 (AKey = '대표번호') or
				 (AKey = '접수번호') or
				 (AKey = '기사사번') or
				 (AKey = '요금') then
			begin
				AEdit.properties.ImeMode := imSAlpha;
			end else
      begin
				AEdit.properties.ImeMode := imSHanguel;
      end;
    end;
		ALabel.Visible := (AEdit.Text = '') // 빠른검색 항목 입력 잔상.
	end;
var
  Edit: TcxTextEdit absolute Sender;
	P: TPoint;
begin
	SetDebugeWrite('JON03.edtFastKey1Exit');
  try
  // 20120801 LYB 수정
		if Edit = edtFastKey1 then
			_SetFastFindEdit(Edit, lbFastKey1, gJONFastFind.Key1) else
		if Edit = edtFastKey2 then
			_SetFastFindEdit(Edit, lbFastKey2, gJONFastFind.Key2) else
		if Edit = edtFastKey3 then
			_SetFastFindEdit(Edit, lbFastKey3, gJONFastFind.Key3) else
		if Edit = edtFastKey4 then
			_SetFastFindEdit(Edit, lbFastKey4, gJONFastFind.Key4) else
		if Edit = edtFastKey5 then
			_SetFastFindEdit(Edit, lbFastKey5, gJONFastFind.Key5) else
		if Edit = edtFastKey6 then
			_SetFastFindEdit(Edit, lbFastKey6, gJONFastFind.Key6) else
		if Edit = edtFastKey7 then
			_SetFastFindEdit(Edit, lbFastKey7, gJONFastFind.Key7) else
		if Edit = edtFastKey8 then
			_SetFastFindEdit(Edit, lbFastKey8, gJONFastFind.Key8) else
		if Edit = edtFastKey9 then
			_SetFastFindEdit(Edit, lbFastKey9, gJONFastFind.Key9) else
		if Edit = edtFastKey10 then
			_SetFastFindEdit(Edit, lbFastKey10, gJONFastFind.Key10) else
		if Edit = edtFastKey11 then
			_SetFastFindEdit(Edit, lbFastKey11, gJONFastFind.Key11) else
		if Edit = edtFastKey12 then
			_SetFastFindEdit(Edit, lbFastKey12, gJONFastFind.Key12) else
		if Edit = edtFastKey13 then
			_SetFastFindEdit(Edit, lbFastKey13, gJONFastFind.Key13) else
		if Edit = edtFastKey14 then
			_SetFastFindEdit(Edit, lbFastKey14, gJONFastFind.Key14) else
		if Edit = edtFastKey15 then
			_SetFastFindEdit(Edit, lbFastKey15, gJONFastFind.Key15) else
		if Edit = edtFastKey16 then
			_SetFastFindEdit(Edit, lbFastKey16, gJONFastFind.Key16) else
		if Edit = edtFastKey17 then
			_SetFastFindEdit(Edit, lbFastKey17, gJONFastFind.Key17) else
		if Edit = edtFastKey18 then
			_SetFastFindEdit(Edit, lbFastKey18, gJONFastFind.Key18) else
		if Edit = edtFastKey19 then
			_SetFastFindEdit(Edit, lbFastKey19, gJONFastFind.Key19) else
		if Edit = edtFastKey20 then
			_SetFastFindEdit(Edit, lbFastKey20, gJONFastFind.Key20)
		;

		if TcxTextEdit(Sender).Hint = '법인명' then
		begin
			if TcxTextEdit(Sender).Focused then
				Exit;

			GetCursorPos(P);
			if ((P.X > pnlBubin.ClientOrigin.X - 1) and (P.X < pnlBubin.ClientOrigin.X + pnlBubin.Width)) and
				((P.Y > pnlBubin.ClientOrigin.Y - 1) and (P.Y < pnlBubin.ClientOrigin.Y + pnlBubin.Height)) then
				Exit;

			Proc_BubinListSearch;
			pnlBubin.Visible := False;
		end;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.edtFastKey1KeyPress(Sender: TObject; var Key: Char);
begin
	SetDebugeWrite('JON03.edtFastKey1KeyPress');

	if (TcxTextEdit(Sender).Hint = '고객번호') or
		 (TcxTextEdit(Sender).Hint = '대표번호') or
		 (TcxTextEdit(Sender).Hint = '접수번호') or
		 (TcxTextEdit(Sender).Hint = '기사사번') or
		 (TcxTextEdit(Sender).Hint = '요금') then
	begin
		if key in ['0'..'9', #13, #8, #22] then      //Ctrl+v = #22 or #$16
		else
			key := #0;
	end; 

	if (Ord(Key) = VK_RETURN) and (Trim(TcxTextEdit(Sender).Text) <> '') then
	begin
//		if TcxTextEdit(Sender).Hint = '법인명' then
//			SelectBubInGrid
//		else
			rb_SearchClick(Sender);
	end;
end;

procedure TFrm_JON03.edtFastKey1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
	if TcxTextEdit(Sender).Hint = '법인명' then
	begin
//		if (Ord(Key) = VK_RETURN) and (Trim(TcxTextEdit(Sender).Text) <> '') then
//		begin
//			SelectBubInGrid;
//			rb_SearchClick(Sender);
//		end	else
		begin
			pnlBubin.visible := True;

			if TcxTextEdit(Sender).Text <> '' then
			begin
				if cxBubInView.DataController.RecordCount > 0 then
				begin
					cxBubInView.ViewData.Records[0].Selected := False;
					cxBubInView.DataController.SelectRows(0, 0);
					cxBubInView.DataController.FocusedRowIndex := 0;
				end;   
			end;

			Proc_BubinListSearch;
		end;
	end;
end;

procedure TFrm_JON03.edtFastKey1PropertiesChange(Sender: TObject);
begin
	if TcxTextEdit(Sender).Hint = '법인명' then
	begin
		if Trim(TcxTextEdit(Sender).Text) <> FBubInSelectedName then
    begin
      FBubInSelectedCode := '';
    end;

		if cxBubInView.DataController.RecordCount > 0 then
		begin
			cxBubInView.ViewData.Records[0].Selected := False;
			cxBubInView.DataController.SelectRows(0, 0);
			cxBubInView.DataController.FocusedRowIndex := 0;
		end;
  end;
end;

procedure TFrm_JON03.fast14_N1Click(Sender: TObject);
Var i, iCG : Integer;
begin
  SetDebugeWrite('JON03.fast14_N1Click');

	for i := 1 to 20 do
	begin
		if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '고객구분' then
    begin
      iCG := i;
      Break;
    end;
	end;

  if TMenuItem(sender).Checked then
  begin
    case TMenuItem(sender).Tag of
    0: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '개인/', '', [rfReplaceAll]);
    1: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '업소/', '', [rfReplaceAll]);
    2: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '법인/', '', [rfReplaceAll]);
    end;

    TMenuItem(sender).Checked := False;
    if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).CanFocus then TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).SetFocus;
  end else
  begin
    TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text + TMenuItem(sender).Caption + '/';
    TMenuItem(sender).Checked := True;
    if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).CanFocus then TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).SetFocus;
  end;
end;

procedure TFrm_JON03.fast15_N1Click(Sender: TObject);
Var i, iCG : Integer;
    bCheck : Boolean;
begin
  SetDebugeWrite('JON03.fast15_N1Click');

	for i := 1 to 20 do
	begin
		if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '결제구분' then
    begin
      iCG := i;
      Break;
    end;
	end;

  if TMenuItem(sender).Checked then
  begin
    case TMenuItem(sender).Tag of
    0: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '현금/',       '', [rfReplaceAll]);
    1: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '후불/',       '', [rfReplaceAll]);
    2: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '후불(마일)/', '', [rfReplaceAll]);
    3: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '외상/',       '', [rfReplaceAll]);
    4: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '현장카드/',   '', [rfReplaceAll]);
    5: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '후불(카드)/', '', [rfReplaceAll]);
		7: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '복합/',       '', [rfReplaceAll]);
    6: begin
         if fast15_N2.Visible then
         begin
           fast15_N2.Checked := False;
           TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '후불/',       '', [rfReplaceAll]);
         end;
         if fast15_N3.Visible then
         begin
           fast15_N3.Checked := False;
           TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '후불(마일)/', '', [rfReplaceAll]);
         end;
         if fast15_N6.Visible then
         begin
           fast15_N6.Checked := False;
           TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '후불(카드)/', '', [rfReplaceAll]);
         end;
				 if fast15_N7.Visible then
         begin
					 fast15_N7.Checked := False;
           TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '복합/', '', [rfReplaceAll]);
				 end;
			 end;
    end;

    if TMenuItem(sender).Tag In [1, 2, 5] then fast15_N9.Checked := False;

    TMenuItem(sender).Checked := False;
    if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).CanFocus then TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).SetFocus;
  end else
  begin
    if TMenuItem(sender).Tag = 6 then
    begin
      // 기존 선택되어 있는 부분을 전체 해지 처리
      if fast15_N2.Visible then
      begin
        fast15_N2.Checked := False;
        TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '후불/',       '', [rfReplaceAll]);
      end;
      if fast15_N3.Visible then
      begin
        fast15_N3.Checked := False;
        TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '후불(마일)/', '', [rfReplaceAll]);
      end;
      if fast15_N6.Visible then
      begin
        fast15_N6.Checked := False;
        TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '후불(카드)/', '', [rfReplaceAll]);
      end;
      if fast15_N7.Visible then
      begin
        fast15_N7.Checked := False;
        TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '복합/', '', [rfReplaceAll]);
			end;
      // -----------------------------------------------------------------------------------------

      if fast15_N2.Visible then
      begin
        fast15_N2.Checked := True;
        TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text + '후불/';
      end;
      if fast15_N3.Visible then
      begin
        fast15_N3.Checked := True;
        TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text + '후불(마일)/';
      end;
      if fast15_N6.Visible then
      begin
        fast15_N6.Checked := True;
        TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text + '후불(카드)/';
      end;
      if fast15_N7.Visible then
      begin
				fast15_N7.Checked := True;
        TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text + '복합/';
			end;
    end else
      TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text + TMenuItem(sender).Caption + '/';

    TMenuItem(sender).Checked := True;

    bCheck := True;
		for i := 0 to pm_FastSearch15.Items.Count - 1 do
    begin
      if ( pm_FastSearch15.Items[i].Tag = 1 ) And ( pm_FastSearch15.Items[i].Visible ) And ( Not pm_FastSearch15.Items[i].Checked ) then bCheck := False;
      if ( pm_FastSearch15.Items[i].Tag = 2 ) And ( pm_FastSearch15.Items[i].Visible ) And ( Not pm_FastSearch15.Items[i].Checked ) then bCheck := False;
      if ( pm_FastSearch15.Items[i].Tag = 5 ) And ( pm_FastSearch15.Items[i].Visible ) And ( Not pm_FastSearch15.Items[i].Checked ) then bCheck := False;
    end;
    fast15_N9.Checked := bCheck;

    if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).CanFocus then TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).SetFocus;
  end;
end;

procedure TFrm_JON03.fast17_N2Click(Sender: TObject);
Var i, iCG : Integer;
begin
	SetDebugeWrite('JON03.fast14_N1Click');

	for i := 1 to 20 do
	begin
		if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '배차구분' then
    begin
      iCG := i;
      Break;
    end;
	end;

  if TMenuItem(sender).Checked then
  begin
    case TMenuItem(sender).Tag of
      0 : TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '다중근배/', '', [rfReplaceAll]);
      1 : TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '강제배차/', '', [rfReplaceAll]);
      2 : TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '문자배차/', '', [rfReplaceAll]);
      3 : TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '차감문자배차/', '', [rfReplaceAll]);
      4 : TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '타프로그램배차/', '', [rfReplaceAll]);
      5 : TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '현장콜/', '', [rfReplaceAll]);

      6 : TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '전전기사배차/', '', [rfReplaceAll]);
      7 : TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '카카오배차/', '', [rfReplaceAll]);
      8 : TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '이전기사배차/', '', [rfReplaceAll]);

      9 : TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '예약배차/', '', [rfReplaceAll]);
      10: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '근거리배차/', '', [rfReplaceAll]);
      11: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '스마트배차/', '', [rfReplaceAll]);
      12: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '도착지근배/', '', [rfReplaceAll]);
    end;

    TMenuItem(sender).Checked := False;
    if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).CanFocus then TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).SetFocus;
  end else
  begin
    TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text + TMenuItem(sender).Caption + '/';
    TMenuItem(sender).Checked := True;
    if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).CanFocus then TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).SetFocus;
  end;
end;

procedure TFrm_JON03.FormClose(Sender: TObject; var Action: TCloseAction);
var
  sDate, sFile: string;
begin
  SetDebugeWrite('JON03.FormClose');
  if pJON03Dock.bUnDock then
  begin
		Frm_Main.JON03MNG[Self.Tag].CreateYN := False;
		Frm_Main.JON03MNG[Self.Tag].Use := False;
  end;

	if Assigned(frm_MessageBox) then frm_MessageBox.Close;      // 대기 메세지박스

	try
    if Assigned(Frm_Main.Frm_JON52[Self.Tag]) then
    begin
      Frm_Main.Frm_JON52[Self.Tag].Close;
      Frm_Main.Frm_JON52[Self.Tag] := Nil;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;

	try
    FCallPassLogi.Free;

    if Assigned(slMessenger) then
    begin
      sDate := formatdatetime('yyyy_mm_dd', StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))));
      sFile := LOGDATADIRECTORY + sDate + '_MSG.dat';
      if slMessenger.Count > 0 then
        slMessenger.SaveToFile(sFile);
    end;

		FreeAndNil(slMessenger);
		FreeAndNil(TsGridHighLigth);

    FreeAndNil(MultiCallNumber.Slip);
    FreeAndNil(MultiCallNumber.BaechaTime);
    FreeAndNil(MultiCallNumber.MultiSlip);
		FreeAndNil(MultiCallNumber.Seq);

		FreeAndNil(FMultiOrderChange.HdNo);
		FreeAndNil(FMultiOrderChange.BrNo); 
		FreeAndNil(FMultiOrderChange.Status);
		FreeAndNil(FMultiOrderChange.Slip);
		FreeAndNil(FMultiOrderChange.Start); 
		FreeAndNil(FMultiOrderChange.sEnd);
		FreeAndNil(FMultiOrderChange.CustNm);
		FreeAndNil(FMultiOrderChange.CustTel);
		FreeAndNil(FMultiOrderChange.CustTel1);
		FreeAndNil(FMultiOrderChange.CustTel22);
		FreeAndNil(FMultiOrderChange.CashType);
		FreeAndNil(FMultiOrderChange.Deposit);
		FreeAndNil(FMultiOrderChange.Lat);
		FreeAndNil(FMultiOrderChange.Lon);
    FreeAndNil(FMultiOrderChange.WkSabun);
		FreeAndNil(FMultiOrderChange.WkHdNo);
		FreeAndNil(FMultiOrderChange.WkBrNo);
    FreeAndNil(FMultiOrderChange.KeyNumber);

		FreeAndNil(TsCallBellOrder);
		FreeAndNil(TsAIOrder);
		FreeAndNil(Slip_List[Self.Tag]);

		FreeAndNil(FCallBellInfo.Slip);
		FreeAndNil(FCallBellInfo.KeyNumber);
		FreeAndNil(FCallBellInfo.BrNm);
		FreeAndNil(FCallBellInfo.CuNm);
		FreeAndNil(FCallBellInfo.Start);
		FreeAndNil(FCallBellInfo.Acc2);

		FreeAndNil(FAIInfo.Slip);
		FreeAndNil(FAIInfo.KeyNumber);
		FreeAndNil(FAIInfo.BrNm);
		FreeAndNil(FAIInfo.CuNm);
		FreeAndNil(FAIInfo.Start);
		FreeAndNil(FAIInfo.Acc2);

		FreeAndNil(FBubinTextEdit);

		if Assigned(scb_BrNo_m5000) then FreeAndNil(scb_BrNo_m5000);

		if Assigned(Frm_JON61) then Frm_JON61.Close;     // 배차지연콜 즉시수행
		//--------------------------------------------
		tmr_dis.Enabled := False;
    PnlAuto.Visible := False;

    tmr_search.Enabled := False;
    tmr_hint.Enabled := False;

    tmPing.Enabled := False;
    TCPClient.Tag := 1;
    TCPClient.Disconnect;
  except on E: Exception do
    Assert(False, E.Message);
  end;
  Action := caFree;
end;

procedure TFrm_JON03.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  SetDebugeWrite('JON03.FormCloseQuery');
  if pJON03Dock.bUNDock then
  begin
		if Not Frm_Main.getJON03Close(Self.Tag) then
    begin
      CanClose := False;
    end;
  end;
end;

procedure TFrm_JON03.FormCreate(Sender: TObject);
var
  Map_ini: TInifile;
  sDate, sFile: string;
  sl_City : TStringList;
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

	

  SetDebugeWrite('JON03.FormCreate');
  try
		cxViewCounselToday.OptionsView.DataRowHeight := 40;
		sg_counsel.OptionsView.DataRowHeight := 40;

//    if IsWJ365Share(GS_PRJ_AREA = 'S', GT_USERIF.ShareNo) then     // 원주연합
    if GB_365System then     // 원주연합
    begin
      sg_counsel.Columns[85].Visible := True;    // 콜링지사
      sg_counsel.Columns[86].Visible := True;    // 콜링지사명
      sg_counsel.Columns[87].Visible := True;    // 콜링대표번호

      cxViewCounselToday.Columns[85].Visible := True;    // 콜링지사
      cxViewCounselToday.Columns[86].Visible := True;    // 콜링지사명
      cxViewCounselToday.Columns[87].Visible := True;    // 콜링대표번호
    end;

		slMessenger := TStringList.Create;
    slMessenger.Clear;

    SetLength(Jon03PacketData, MaxCommandSize);

		TsGridHighLigth := TStringList.Create;
		TsGridHighLigth.Clear;

    MultiCallNumber.Slip := TStringList.Create;
    MultiCallNumber.BaechaTime := TStringList.Create;
    MultiCallNumber.MultiSlip := TStringList.Create;
		MultiCallNumber.Seq := TStringList.Create;

		MultiCallNumber.Slip.Clear;
		MultiCallNumber.BaechaTime.Clear;
		MultiCallNumber.MultiSlip.Clear;
		MultiCallNumber.Seq.Clear;

		FMultiOrderChange.HdNo := TStringList.Create;
		FMultiOrderChange.BrNo := TStringList.Create;
		FMultiOrderChange.Status := TStringList.Create;
		FMultiOrderChange.Slip := TStringList.Create;
		FMultiOrderChange.Start := TStringList.Create;
		FMultiOrderChange.sEnd := TStringList.Create;
		FMultiOrderChange.CustNm := TStringList.Create;
		FMultiOrderChange.CustTel:= TStringList.Create;
		FMultiOrderChange.CustTel1:= TStringList.Create;
		FMultiOrderChange.CustTel22:= TStringList.Create;
		FMultiOrderChange.CashType := TStringList.Create;
		FMultiOrderChange.Deposit := TStringList.Create;
		FMultiOrderChange.Lat := TStringList.Create;
		FMultiOrderChange.Lon := TStringList.Create;
    FMultiOrderChange.WkSabun := TStringList.Create;
		FMultiOrderChange.WkHdNo := TStringList.Create;
		FMultiOrderChange.WkBrNo := TStringList.Create;
    FMultiOrderChange.KeyNumber := TStringList.Create;

		FMultiOrderChange.HdNo.Clear; 
		FMultiOrderChange.BrNo.Clear; 
		FMultiOrderChange.Status.Clear;
		FMultiOrderChange.Slip.Clear;
		FMultiOrderChange.Start.Clear;
		FMultiOrderChange.sEnd.Clear;
		FMultiOrderChange.CustNm.Clear;
		FMultiOrderChange.CustTel.Clear;
		FMultiOrderChange.CustTel1.Clear;
		FMultiOrderChange.CustTel22.Clear;
		FMultiOrderChange.CashType.Clear;
		FMultiOrderChange.Deposit.Clear;
		FMultiOrderChange.Lat.Clear;
		FMultiOrderChange.Lon.Clear;
    FMultiOrderChange.WkSabun.Clear;
		FMultiOrderChange.WkHdNo.Clear;
		FMultiOrderChange.WkBrNo.Clear;
    FMultiOrderChange.KeyNumber.Clear;

		TsCallBellOrder := TStringList.Create;
		TsCallBellOrder.Clear;
		TsAIOrder := TStringList.Create;
		TsAIOrder.Clear;
			
    sDate := formatdatetime('yyyy_mm_dd', StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))));
    sFile := LOGDATADIRECTORY + sDate + '_MSG.dat';
    if FileExists(sFile) then
      slMessenger.LoadFromFile(sFile);

    pnlColorSet.Top := 2; // 접수 레코드 칼라 설정.
    pnlColorSet.Left := 116;

    btnDocking.Top := 4;
    btnFloating.Top := 4;

    btn_LogOut.Caption := '퇴근';

    btnFloating.Top := btnDocking.Top;
    bJON01View := False;

    pnl_MultiSearch.Visible := False;

    pnl_MultiSearch.Height := 0;
    pnl_Search.Height := 96;

    // 고객등급에 따른 칼라 설정값을 로드 한다. CDS. 080719.
    GC_CULEVEL_COLOR.cGeneral := GetIniColor(ENVPATHFILE, 'AcceptWin', 'General', '$00ED7328');
    GC_CULEVEL_COLOR.cSTORE := GetIniColor(ENVPATHFILE, 'AcceptWin', 'STORE', '$0077FF77');
    GC_CULEVEL_COLOR.cCompanyColor := GetIniColor(ENVPATHFILE, 'AcceptWin', 'CompanyColor', '$00FFA4FF');
    GC_CULEVEL_COLOR.cWorkerColor := GetIniColor(ENVPATHFILE, 'AcceptWin', 'WorkerColor', '$00FFFF8E');

    OnJCMNPacketPage := OnPage;
		AutoFlag := True;
		FSearchEnable := True; //버튼활성화 false-> 버튼비활성화

  	AAutoSearch_Time := 0;

    cxImage2.Visible := True;
    cxImage3.Visible := False;

    if GB_DARKMODE then
    begin
      BtnAutoRe.Appearance.Color                 := $00333333;
      BtnAutoRe.Appearance.ColorChecked          := $00333333;
      BtnAutoRe.Appearance.ColorCheckedTo        := $00333333;
      BtnAutoRe.Appearance.ColorDisabled         := $00333333;
      BtnAutoRe.Appearance.ColorDisabledTo       := $00333333;
      BtnAutoRe.Appearance.ColorDown             := $00333333;
      BtnAutoRe.Appearance.ColorDownTo           := $00333333;
      BtnAutoRe.Appearance.ColorHot              := $00333333;
      BtnAutoRe.Appearance.ColorHotTo            := $00333333;
      BtnAutoRe.Appearance.ColorMirror           := $00333333;
      BtnAutoRe.Appearance.ColorMirrorTo         := $00333333;
      BtnAutoRe.Appearance.ColorMirrorChecked    := $00333333;
      BtnAutoRe.Appearance.ColorMirrorCheckedTo  := $00333333;
      BtnAutoRe.Appearance.ColorMirrorDisabled   := $00333333;
      BtnAutoRe.Appearance.ColorMirrorDisabledTo := $00333333;
      BtnAutoRe.Appearance.ColorMirrorDown       := $00333333;
      BtnAutoRe.Appearance.ColorMirrorDownTo     := $00333333;
      BtnAutoRe.Appearance.ColorMirrorHot        := $00333333;
      BtnAutoRe.Appearance.ColorMirrorHotTo      := $00333333;
      BtnAutoRe.Appearance.ColorTo               := $00333333;

      BtnAutoRe.Font.Color := clWhite;
      BtnAutoRe.Appearance.TextColorChecked      := clWhite;
      BtnAutoRe.Appearance.TextColorHot          := $00098AF7;
    end else
    begin
      BtnAutoRe.Appearance.Color                 := clWhite;
      BtnAutoRe.Appearance.ColorChecked          := clWhite;
      BtnAutoRe.Appearance.ColorCheckedTo        := clWhite;
      BtnAutoRe.Appearance.ColorDisabled         := clWhite;
      BtnAutoRe.Appearance.ColorDisabledTo       := clWhite;
      BtnAutoRe.Appearance.ColorDown             := clWhite;
      BtnAutoRe.Appearance.ColorDownTo           := clWhite;
      BtnAutoRe.Appearance.ColorHot              := clWhite;
      BtnAutoRe.Appearance.ColorHotTo            := clWhite;
      BtnAutoRe.Appearance.ColorMirror           := clWhite;
      BtnAutoRe.Appearance.ColorMirrorTo         := clWhite;
      BtnAutoRe.Appearance.ColorMirrorChecked    := clWhite;
      BtnAutoRe.Appearance.ColorMirrorCheckedTo  := clWhite;
      BtnAutoRe.Appearance.ColorMirrorDisabled   := clWhite;
      BtnAutoRe.Appearance.ColorMirrorDisabledTo := clWhite;
      BtnAutoRe.Appearance.ColorMirrorDown       := clWhite;
      BtnAutoRe.Appearance.ColorMirrorDownTo     := clWhite;
      BtnAutoRe.Appearance.ColorMirrorHot        := clWhite;
      BtnAutoRe.Appearance.ColorMirrorHotTo      := clWhite;
      BtnAutoRe.Appearance.ColorTo               := clWhite;

      BtnAutoRe.Font.Color := clBlack;
      BtnAutoRe.Appearance.TextColorChecked      := clBlack;
    end;

    if GB_DARKMODE then
    begin
      cb_00.Appearance.Color := $00333333;
      cb_00.Appearance.ColorTo := $00333333;
      cb_00.Appearance.ColorMirror := $00333333;
      cb_00.Appearance.ColorMirrorTo := $00333333;

      cb_00.Appearance.BorderColorChecked := $0000AAEA;
      cb_00.Appearance.ColorChecked := $0073D8FF;
      cb_00.Appearance.ColorCheckedTo := $0073D8FF;
      cb_00.Appearance.ColorMirrorChecked := $0073D8FF;
      cb_00.Appearance.ColorMirrorCheckedTo := $0073D8FF;
    end else
    begin
      cb_00.Appearance.BorderColorChecked := $0093807C;
      cb_00.Appearance.ColorChecked := $0093807C;
      cb_00.Appearance.ColorCheckedTo := $0093807C;
      cb_00.Appearance.ColorMirrorChecked := $0093807C;
      cb_00.Appearance.ColorMirrorCheckedTo := $0093807C;
    end;

    rb_chk_All.Appearance.BorderColorChecked := cb_00.Appearance.BorderColorChecked;
    rb_chk_All.Appearance.ColorChecked := cb_00.Appearance.ColorChecked;
    rb_chk_All.Appearance.ColorCheckedTo := cb_00.Appearance.ColorCheckedTo;
    rb_chk_All.Appearance.ColorMirrorChecked := cb_00.Appearance.ColorMirrorChecked;
    rb_chk_All.Appearance.ColorMirrorCheckedTo := cb_00.Appearance.ColorMirrorCheckedTo;

    rb_chk_All.Appearance.Color         := cb_00.Appearance.Color;
    rb_chk_All.Appearance.ColorTo       := cb_00.Appearance.ColorTo;
    rb_chk_All.Appearance.ColorMirror   := cb_00.Appearance.ColorMirror;
    rb_chk_All.Appearance.ColorMirrorTo := cb_00.Appearance.ColorMirrorTo;

    cb_01.Appearance.BorderColorChecked := cb_00.Appearance.BorderColorChecked;
    cb_01.Appearance.ColorChecked := cb_00.Appearance.ColorChecked;
    cb_01.Appearance.ColorCheckedTo := cb_00.Appearance.ColorCheckedTo;
    cb_01.Appearance.ColorMirrorChecked := cb_00.Appearance.ColorMirrorChecked;
    cb_01.Appearance.ColorMirrorCheckedTo := cb_00.Appearance.ColorMirrorCheckedTo;

    cb_01.Appearance.Color         := cb_00.Appearance.Color;
    cb_01.Appearance.ColorTo       := cb_00.Appearance.ColorTo;
    cb_01.Appearance.ColorMirror   := cb_00.Appearance.ColorMirror;
    cb_01.Appearance.ColorMirrorTo := cb_00.Appearance.ColorMirrorTo;

    cb_02.Appearance.BorderColorChecked := cb_00.Appearance.BorderColorChecked;
    cb_02.Appearance.ColorChecked := cb_00.Appearance.ColorChecked;
    cb_02.Appearance.ColorCheckedTo := cb_00.Appearance.ColorCheckedTo;
    cb_02.Appearance.ColorMirrorChecked := cb_00.Appearance.ColorMirrorChecked;
    cb_02.Appearance.ColorMirrorCheckedTo := cb_00.Appearance.ColorMirrorCheckedTo;

    cb_02.Appearance.Color         := cb_00.Appearance.Color;
    cb_02.Appearance.ColorTo       := cb_00.Appearance.ColorTo;
    cb_02.Appearance.ColorMirror   := cb_00.Appearance.ColorMirror;
    cb_02.Appearance.ColorMirrorTo := cb_00.Appearance.ColorMirrorTo;

    cb_03.Appearance.BorderColorChecked := cb_00.Appearance.BorderColorChecked;
    cb_03.Appearance.ColorChecked := cb_00.Appearance.ColorChecked;
    cb_03.Appearance.ColorCheckedTo := cb_00.Appearance.ColorCheckedTo;
    cb_03.Appearance.ColorMirrorChecked := cb_00.Appearance.ColorMirrorChecked;
    cb_03.Appearance.ColorMirrorCheckedTo := cb_00.Appearance.ColorMirrorCheckedTo;

    cb_03.Appearance.Color         := cb_00.Appearance.Color;
    cb_03.Appearance.ColorTo       := cb_00.Appearance.ColorTo;
    cb_03.Appearance.ColorMirror   := cb_00.Appearance.ColorMirror;
    cb_03.Appearance.ColorMirrorTo := cb_00.Appearance.ColorMirrorTo;

    cb_04.Appearance.BorderColorChecked := cb_00.Appearance.BorderColorChecked;
    cb_04.Appearance.ColorChecked := cb_00.Appearance.ColorChecked;
    cb_04.Appearance.ColorCheckedTo := cb_00.Appearance.ColorCheckedTo;
    cb_04.Appearance.ColorMirrorChecked := cb_00.Appearance.ColorMirrorChecked;
    cb_04.Appearance.ColorMirrorCheckedTo := cb_00.Appearance.ColorMirrorCheckedTo;

    cb_04.Appearance.Color         := cb_00.Appearance.Color;
    cb_04.Appearance.ColorTo       := cb_00.Appearance.ColorTo;
    cb_04.Appearance.ColorMirror   := cb_00.Appearance.ColorMirror;
    cb_04.Appearance.ColorMirrorTo := cb_00.Appearance.ColorMirrorTo;

    cb_05.Appearance.BorderColorChecked := cb_00.Appearance.BorderColorChecked;
    cb_05.Appearance.ColorChecked := cb_00.Appearance.ColorChecked;
    cb_05.Appearance.ColorCheckedTo := cb_00.Appearance.ColorCheckedTo;
    cb_05.Appearance.ColorMirrorChecked := cb_00.Appearance.ColorMirrorChecked;
    cb_05.Appearance.ColorMirrorCheckedTo := cb_00.Appearance.ColorMirrorCheckedTo;

    cb_05.Appearance.Color         := cb_00.Appearance.Color;
    cb_05.Appearance.ColorTo       := cb_00.Appearance.ColorTo;
    cb_05.Appearance.ColorMirror   := cb_00.Appearance.ColorMirror;
    cb_05.Appearance.ColorMirrorTo := cb_00.Appearance.ColorMirrorTo;

    cb_0R.Appearance.BorderColorChecked := cb_00.Appearance.BorderColorChecked;
    cb_0R.Appearance.ColorChecked := cb_00.Appearance.ColorChecked;
    cb_0R.Appearance.ColorCheckedTo := cb_00.Appearance.ColorCheckedTo;
    cb_0R.Appearance.ColorMirrorChecked := cb_00.Appearance.ColorMirrorChecked;
    cb_0R.Appearance.ColorMirrorCheckedTo := cb_00.Appearance.ColorMirrorCheckedTo;

    cb_0R.Appearance.Color         := cb_00.Appearance.Color;
    cb_0R.Appearance.ColorTo       := cb_00.Appearance.ColorTo;
    cb_0R.Appearance.ColorMirror   := cb_00.Appearance.ColorMirror;
    cb_0R.Appearance.ColorMirrorTo := cb_00.Appearance.ColorMirrorTo;

    cb_0B.Appearance.BorderColorChecked := cb_00.Appearance.BorderColorChecked;
    cb_0B.Appearance.ColorChecked := cb_00.Appearance.ColorChecked;
    cb_0B.Appearance.ColorCheckedTo := cb_00.Appearance.ColorCheckedTo;
    cb_0B.Appearance.ColorMirrorChecked := cb_00.Appearance.ColorMirrorChecked;
    cb_0B.Appearance.ColorMirrorCheckedTo := cb_00.Appearance.ColorMirrorCheckedTo;

    cb_0B.Appearance.Color         := cb_00.Appearance.Color;
    cb_0B.Appearance.ColorTo       := cb_00.Appearance.ColorTo;
    cb_0B.Appearance.ColorMirror   := cb_00.Appearance.ColorMirror;
    cb_0B.Appearance.ColorMirrorTo := cb_00.Appearance.ColorMirrorTo;

    cb_0C.Appearance.BorderColorChecked := cb_00.Appearance.BorderColorChecked;
    cb_0C.Appearance.ColorChecked := cb_00.Appearance.ColorChecked;
    cb_0C.Appearance.ColorCheckedTo := cb_00.Appearance.ColorCheckedTo;
    cb_0C.Appearance.ColorMirrorChecked := cb_00.Appearance.ColorMirrorChecked;
    cb_0C.Appearance.ColorMirrorCheckedTo := cb_00.Appearance.ColorMirrorCheckedTo;

    cb_0C.Appearance.Color         := cb_00.Appearance.Color;
    cb_0C.Appearance.ColorTo       := cb_00.Appearance.ColorTo;
    cb_0C.Appearance.ColorMirror   := cb_00.Appearance.ColorMirror;
    cb_0C.Appearance.ColorMirrorTo := cb_00.Appearance.ColorMirrorTo;

    cb_0D.Appearance.BorderColorChecked := cb_00.Appearance.BorderColorChecked;
    cb_0D.Appearance.ColorChecked := cb_00.Appearance.ColorChecked;
    cb_0D.Appearance.ColorCheckedTo := cb_00.Appearance.ColorCheckedTo;
    cb_0D.Appearance.ColorMirrorChecked := cb_00.Appearance.ColorMirrorChecked;
    cb_0D.Appearance.ColorMirrorCheckedTo := cb_00.Appearance.ColorMirrorCheckedTo;

    cb_0D.Appearance.Color         := cb_00.Appearance.Color;
    cb_0D.Appearance.ColorTo       := cb_00.Appearance.ColorTo;
    cb_0D.Appearance.ColorMirror   := cb_00.Appearance.ColorMirror;
    cb_0D.Appearance.ColorMirrorTo := cb_00.Appearance.ColorMirrorTo;

    cb_08.Appearance.BorderColorChecked := cb_00.Appearance.BorderColorChecked;
    cb_08.Appearance.ColorChecked := cb_00.Appearance.ColorChecked;
    cb_08.Appearance.ColorCheckedTo := cb_00.Appearance.ColorCheckedTo;
    cb_08.Appearance.ColorMirrorChecked := cb_00.Appearance.ColorMirrorChecked;
    cb_08.Appearance.ColorMirrorCheckedTo := cb_00.Appearance.ColorMirrorCheckedTo;

    cb_08.Appearance.Color         := cb_00.Appearance.Color;
    cb_08.Appearance.ColorTo       := cb_00.Appearance.ColorTo;
    cb_08.Appearance.ColorMirror   := cb_00.Appearance.ColorMirror;
    cb_08.Appearance.ColorMirrorTo := cb_00.Appearance.ColorMirrorTo;

    if GB_DARKMODE then
    begin
      rb_chk_All.Appearance.TextColorChecked := $00333333;
      rb_chk_All.Font.Color := clWhite;
    end else
    begin
      rb_chk_All.Appearance.TextColorChecked := clWhite;
    end;

    cb_00.Appearance.TextColorChecked := rb_chk_All.Appearance.TextColorChecked;
    cb_01.Appearance.TextColorChecked := rb_chk_All.Appearance.TextColorChecked;
    cb_02.Appearance.TextColorChecked := rb_chk_All.Appearance.TextColorChecked;
    cb_04.Appearance.TextColorChecked := rb_chk_All.Appearance.TextColorChecked;
    cb_03.Appearance.TextColorChecked := rb_chk_All.Appearance.TextColorChecked;
    cb_05.Appearance.TextColorChecked := rb_chk_All.Appearance.TextColorChecked;
    cb_0R.Appearance.TextColorChecked := rb_chk_All.Appearance.TextColorChecked;
    cb_0C.Appearance.TextColorChecked := rb_chk_All.Appearance.TextColorChecked;
    cb_0D.Appearance.TextColorChecked := rb_chk_All.Appearance.TextColorChecked;
    cb_08.Appearance.TextColorChecked := rb_chk_All.Appearance.TextColorChecked;
    cb_0B.Appearance.TextColorChecked := rb_chk_All.Appearance.TextColorChecked;

    // 상담원별 조회건수 제한 (2010.11.22)
    if (TCK_USER_PER.JON_SrcLmt='1') then
    begin
       lbl_JONSrc_Alert.Visible := False;
       lbl_JONSrc_Alert1.Visible := True;
       lbl_JONSrc_Alert.Caption := '[조회일부제한]';
       lbl_JONSrc_Alert1.Caption := '[조회일부제한]';
    end else
    begin
       lbl_JONSrc_Alert.Visible := False;
       lbl_JONSrc_Alert1.Visible := False;
       lbl_JONSrc_Alert.Caption := '[조회제한해제]';
       lbl_JONSrc_Alert1.Caption := '[조회제한해제]';
    end;

    try
      Map_ini := TIniFile.Create(ENVPATHFILE);
      sl_City := TStringList.Create;
      sl_City.Clear;
      cb_City.Properties.Items.Clear;

      Map_ini.ReadSection('LocalMap', sl_City);
      if sl_City.Count = 0 then
      begin
        case StrToIntDef(GT_USERIF.SA, 0) of
          0:
            begin
              sl_City.Add('서울');
              sl_City.Add('경기');
              sl_City.Add('인천');
              sl_City.Add('대전');
              sl_City.Add('충남');
              sl_City.Add('충북');
              sl_City.Add('강원');
              sl_City.Add('대구');
              sl_City.Add('경북');
              sl_City.Add('부산');
              sl_City.Add('울산');
              sl_City.Add('경남');
              sl_City.Add('전북');
              sl_City.Add('광주');
              sl_City.Add('전남');
              sl_City.Add('제주');
            end;
          1:
            begin
              sl_City.Add('서울');
              sl_City.Add('경기');
              sl_City.Add('인천');
            end;
          2:
            begin
              sl_City.Add('대전');
              sl_City.Add('충남');
              sl_City.Add('충북');
            end;
          4:
            begin
              sl_City.Add('강원');
            end;
          5:
            begin
              sl_City.Add('대구');
              sl_City.Add('경북');
            end;
          6:
            begin
              sl_City.Add('부산');
              sl_City.Add('울산');
              sl_City.Add('경남');
            end;
          8:
            begin
              sl_City.Add('전북');
              sl_City.Add('광주');
              sl_City.Add('전남');
            end;
          9:
            begin
              sl_City.Add('제주');
            end;
        end;
      end;

      cb_City.Properties.Items.Add('지역전체');
      cb_City.Properties.Items.AddStrings(sl_city);
      cb_City.ItemIndex := 0;

      cb_ward.Properties.Items.Clear;
      cb_ward.Properties.Items.Add('전체');
      cb_ward.ItemIndex := 0;
    finally
      FreeAndNil(sl_City);
      FreeAndNil(Map_ini);
    end;

    GB_JON_MULTI_MODIFY := True;
    chkJon_Multi_Modify.Checked := GB_JON_MULTI_MODIFY;

    if ((CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O')) and (GS_LOCALDATA_USE in [0,2]) then btnMySqlPoiSync.Visible := True
                                                                                      else btnMySqlPoiSync.Visible := False;

  //-  Frm_Main.cxImageAuto.GetIcon(0, cxImage2.Picture.Icon);

    // 접수소켓 연결
    if J03DoReConnect then
    begin
      tmPing.Enabled := True;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.FormDestroy(Sender: TObject);
begin
  Jon03PacketData := Nil;
end;

procedure TFrm_JON03.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  SetDebugeWrite('JON03.FormKeyDown');
  if not IsWindowVisible(Self.Handle) then Exit;
  if not Self.Visible then Exit;

  try
    if Not pJON03Dock.bUNDock then
    begin
      if gbfrmJON00Show then Exit;
    end else
    begin
      if bJON01View then Exit;
    end;

    if Key in [VK_F1..VK_F9] then
    begin
      CASE key of
        VK_F1 :
        begin
          rb_chk_All.Down := True;
          rb_chk_All.OnClick(rb_chk_All);
        end;
        VK_F2 :
        begin
          proc_check(1);
          cb_00.Down := True;
          cb_00.OnClick(cb_00);
        end;
        VK_F3 :
        begin
          proc_check(1);
          cb_01.Down := True;
          cb_01.OnClick(cb_01);
        end;
        VK_F4 :
        begin
          proc_check(1);
          cb_02.Down := True;
          cb_02.OnClick(cb_02);
        end;
        VK_F5 :
        begin
          proc_check(1);
          cb_08.Down := True;
          cb_08.OnClick(cb_08);
        end;
        VK_F6 :
        begin
          proc_check(1);
          cb_05.Down := True;
          cb_05.OnClick(cb_05);
        end;
        VK_F7 :
        begin
          proc_check(1);
          cb_04.Down := True;
          cb_04.OnClick(cb_05);
        end;
  			VK_F8 :
  			begin
  				proc_check(1);
  				cb_0C.Down := True;
  				cb_0C.OnClick(cb_0C);
  			end;
  			VK_F9 :
  			begin
  				proc_check(1);
  				cb_0B.Down := True;
  				cb_0B.OnClick(cb_0B);
  			end;
      end;
      if rb_Search.Enabled then
				rb_Search.OnClick(rb_Search);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.FormResize(Sender: TObject);
begin
  SetDebugeWrite('JON03.FormResize');
  status_bar.Panels[0].Width := Self.Width - Trunc(Self.Width*(20/100));
end;

procedure TFrm_JON03.FormShow(Sender: TObject);
Var sl_FastFind : TStringList;
	GIF : TGifImage;
  mRootPath : String;
begin
	SetDebugeWrite('JON03.FormShow');

	if GS_SHORTCUT_SPACENOUSE then //스페이스 단축키 사용안함.
		pm_smsRecon.ShortCut := strToint('0x07') else pm_smsRecon.ShortCut := VK_Space;

	if pJON03Dock.bUnDock then
  begin
    Frm_Main.Frm_JON52[Self.Tag] := TFrm_JON52.Create(Nil);
    Frm_Main.Frm_JON52[Self.Tag].BorderStyle := bsNone;
    Frm_Main.Frm_JON52[Self.Tag].Parent := pnlMap;
    Frm_Main.Frm_JON52[Self.Tag].Align := alClient;

    Frm_Main.Frm_JON52[Self.Tag].pnlRight.Align := alTop;
    Frm_Main.Frm_JON52[Self.Tag].pnlRight.Height := 25;

    Frm_Main.Frm_JON52[Self.Tag].shp_Mod1.Left := 17;
    Frm_Main.Frm_JON52[Self.Tag].shp_Mod1.Top := 2;

    Frm_Main.Frm_JON52[Self.Tag].shp_Mod2.Left := Frm_Main.Frm_JON52[Self.Tag].shp_Mod1.Left + 90;
    Frm_Main.Frm_JON52[Self.Tag].shp_Mod2.Top  := Frm_Main.Frm_JON52[Self.Tag].shp_Mod1.Top;

    Frm_Main.Frm_JON52[Self.Tag].shp_Mod3.Left := Frm_Main.Frm_JON52[Self.Tag].shp_Mod2.Left + 90;
    Frm_Main.Frm_JON52[Self.Tag].shp_Mod3.Top  := Frm_Main.Frm_JON52[Self.Tag].shp_Mod1.Top;

    Frm_Main.Frm_JON52[Self.Tag].shp_Mod4.Left := Frm_Main.Frm_JON52[Self.Tag].shp_Mod3.Left + 90;
    Frm_Main.Frm_JON52[Self.Tag].shp_Mod4.Top  := Frm_Main.Frm_JON52[Self.Tag].shp_Mod1.Top;

    Frm_Main.Frm_JON52[Self.Tag].btn_Mod1.Left := 42;
    Frm_Main.Frm_JON52[Self.Tag].btn_Mod1.Top := 2;

    Frm_Main.Frm_JON52[Self.Tag].btn_Mod2.Left := Frm_Main.Frm_JON52[Self.Tag].btn_Mod1.Left + 90;
    Frm_Main.Frm_JON52[Self.Tag].btn_Mod2.Top  := Frm_Main.Frm_JON52[Self.Tag].btn_Mod1.Top;

    Frm_Main.Frm_JON52[Self.Tag].btn_Mod3.Left := Frm_Main.Frm_JON52[Self.Tag].btn_Mod2.Left + 90;
    Frm_Main.Frm_JON52[Self.Tag].btn_Mod3.Top  := Frm_Main.Frm_JON52[Self.Tag].btn_Mod1.Top;

    Frm_Main.Frm_JON52[Self.Tag].btn_Mod4.Left := Frm_Main.Frm_JON52[Self.Tag].btn_Mod3.Left + 90;
    Frm_Main.Frm_JON52[Self.Tag].btn_Mod4.Top  := Frm_Main.Frm_JON52[Self.Tag].btn_Mod1.Top;

    Frm_Main.Frm_JON52[Self.Tag].cbRoute.Left := 365;
    Frm_Main.Frm_JON52[Self.Tag].cbRoute.Top := 3;

    Frm_Main.Frm_JON52[Self.Tag].cxLabel1.Left := 439;
    Frm_Main.Frm_JON52[Self.Tag].cxLabel1.Top := 3;

    Frm_Main.Frm_JON52[Self.Tag].Show;
    Exit;
  end;

  try
    pnlMap.Width := Trunc(Self.Width * 0.4);
    FStatusView := False;

		//목포콜센타(장승호사장) ID 하드코딩 요청 20210923 KHS. 정회귀 팀장님 요청
		if (GT_UserIf.ID = 'm5000-3007') and (GS_PRJ_AREA = 'O') then
			GS_COUNSEL_ALLCHECK := False
		else 
		begin	
			GS_COUNSEL_ALLCHECK   := GS_EnvFile.ReadBool('COUNSEL', 'ALLCHECK', True);
		end;

    //최초, 초기화검색, 검색조건 변경 시 접수번호를 저장한다.    2013.04.20 khs
  	Slip_List[Self.Tag] := TStringList.Create;

    Proc_Initialization;

  	sl_FastFind    := TStringList.Create;
    try
      if Not GS_EnvFile.SectionExists('FastFindSort') then pInitFastFind;

      sl_FastFind.Clear;
			GS_EnvFile.ReadSection('FastFindSort', sl_FastFind);

      if sl_FastFind.Count >  0 then gJONFastFind.Key1  := sl_FastFind[00];
      if sl_FastFind.Count >  1 then gJONFastFind.Key2  := sl_FastFind[01];
      if sl_FastFind.Count >  2 then gJONFastFind.Key3  := sl_FastFind[02];
      if sl_FastFind.Count >  3 then gJONFastFind.Key4  := sl_FastFind[03];
      if sl_FastFind.Count >  4 then gJONFastFind.Key5  := sl_FastFind[04];
      if sl_FastFind.Count >  5 then gJONFastFind.Key6  := sl_FastFind[05];
      if sl_FastFind.Count >  6 then gJONFastFind.Key7  := sl_FastFind[06];
      if sl_FastFind.Count >  7 then gJONFastFind.Key8  := sl_FastFind[07];
      if sl_FastFind.Count >  8 then gJONFastFind.Key9  := sl_FastFind[08];
      if sl_FastFind.Count >  9 then gJONFastFind.Key10 := sl_FastFind[09];
      if sl_FastFind.Count > 10 then gJONFastFind.Key11 := sl_FastFind[10];
      if sl_FastFind.Count > 11 then gJONFastFind.Key12 := sl_FastFind[11];
      if sl_FastFind.Count > 12 then gJONFastFind.Key13 := sl_FastFind[12];
      if sl_FastFind.Count > 13 then gJONFastFind.Key14 := sl_FastFind[13];
      if sl_FastFind.Count > 14 then gJONFastFind.Key15 := sl_FastFind[14];
      if sl_FastFind.Count > 15 then gJONFastFind.Key16 := sl_FastFind[15];
      if sl_FastFind.Count > 16 then gJONFastFind.Key17 := sl_FastFind[16];
      if sl_FastFind.Count > 17 then gJONFastFind.Key18 := sl_FastFind[17];
      if sl_FastFind.Count > 18 then gJONFastFind.Key19 := sl_FastFind[18];
      if sl_FastFind.Count > 19 then gJONFastFind.Key20 := sl_FastFind[19];
    finally
			FreeAndNil(sl_FastFind);
		end;

    if GB_DARKMODE then
    begin
      try
        GIF := TGifImage.Create;
        try
          mRootPath := ExtractFilePath(Application.ExeName);
          GIF.LoadFromFile(mRootPath + '\Image\au.gif');
          BtnAutoRe.Picture.Graphic.Assign(GIF);;
        except
        end;
      finally
        GIF.Free;
      end;
    end;
		chk_MultiSearch.Visible := GS_COUNSEL_MULTICHECKSHOW;

		LoadFastFindControls;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON03.func_AcceptInsert(AView: TcxGridDBTableView; ss_XML: string): Boolean;
  function GetRecordIndexByText(AView: TcxCustomGridTableView; AText: string; AColumnIndex: Integer): Integer;
  var
    I: Integer;
  begin
    Result := -1;
    for I := 0 to AView.DataController.RecordCount - 1 do
    begin
      if StrPos(PChar(AView.DataController.DisplayTexts[I, AColumnIndex]), PChar(AText)) <> nil then
      begin
        Result := i;
        Break;
      end;
    end;
  end;

  { TODO : sCol를 lb_Title_List.Items.Strings[3]으로 받았으나 TParellel.For 사용하면서 멈춤현상 발생  - 원인 모름 LYB 2016.08.25 }
  procedure _SetGridCompareCellAdd(AView: TcxGridDBTableView; aText, bText : Variant; iRow, iCol : Integer; sCol, sSlip : String );
  begin
    if Not AView.Columns[iCol].Visible then Exit;
    if Not AView.Columns[iCol].Width = 0 then Exit;

//              s := lb_Title_List.Items.Strings[3];

    if sCol = '경과시간' then Exit;

    if ( sCol = '고객번호' ) Or ( sCol = '고객번호2' ) then
      bText := strtocall(bText);

    if sCol = '최초접수시간' then
      bText := GetStrToLongDateTimeStr(bText);

    if ( sCol = '접수시간' ) then bText := GetStrToDateTimeGStr(bText, GT_MAIN_VIEW_TIME1) else
    if ( sCol = '배차시간' ) then bText := GetStrToDateTimeGStr(bText, GT_MAIN_VIEW_TIME2) else
    if ( sCol = '완료시간' ) then bText := GetStrToDateTimeGStr(bText, GT_MAIN_VIEW_TIME3) else
    if ( sCol = '운행시작시간' ) then bText := GetStrToDateTimeGStr(bText, GT_MAIN_VIEW_TIME4);

    if Trim(VarToStr(aText)) <> Trim(VarToStr(bText)) then
    begin
  //-      Log('A : ' + VarToStr(aText) + ' / B : ' + VarToStr(bText) + ' / Slip : ' + sSlip + ' / Col : ' + IntToStr(iCol), LOGDATAPATHFILE);
      TsGridHighLigth.Add(sSlip + '/' + IntToStr(iCol));
    end;
  end;

  //2010.08.10 상태 정렬 관련 수정 lej  ----->
  //_GetJONCodeToIndex : 상태 sort 순서 Set
  function _GetJONCodeToIndex(ACode: string): string;
  begin
    Result :='';
    //ini파일에 StatusSort항목이 없을 경우(대기, 예약, 접수, 배차중, 배차, 강제, 취소, 문의 순)
    //ini파일에 StatusSort항목이 있을 경우 설정 순으로 정렬
    //if GS_EnvFile.SectionExists('StatusSort') then
     case ACode[1] of              // a: 1234(string) > a[1] : 1
        '5': Result := GS_EnvFile.ReadString('StatusSort', '대기',  '0');
        'R': Result := GS_EnvFile.ReadString('StatusSort', '예약',  '1');
        '0': Result := GS_EnvFile.ReadString('StatusSort', '접수',  '2');
        'C', 'M' : Result := GS_EnvFile.ReadString('StatusSort', '근배',  '3');
        'B': Result := GS_EnvFile.ReadString('StatusSort', '배차중','4');
        '3': Result := GS_EnvFile.ReadString('StatusSort', '강제',  '5');
        '1': Result := GS_EnvFile.ReadString('StatusSort', '배차',  '6');
        'D': Result := GS_EnvFile.ReadString('StatusSort', '운행',  '7');
        '2': Result := GS_EnvFile.ReadString('StatusSort', '완료',  '8');
        '8': Result := GS_EnvFile.ReadString('StatusSort', '취소',  '9');
        '4': Result := GS_EnvFile.ReadString('StatusSort', '문의',  'A');
     end;
  end;

	//2010.08.10 상태 정렬 관련 수정 lej  <-----
	procedure _SetTimeFormat(AView: TcxGridDBTableView; ARow, ACol: Integer);
	var
		Temp: string;
	begin
		if AView.DataController.Values[ARow, ACol] = Null then Exit;

		try
			Temp := AView.DataController.Values[ARow, ACol];
			if ACol = giAccTime    then Temp := GetStrToDateTimeGStr(Temp, GT_MAIN_VIEW_TIME1) else
			if ACol = giBaecha     then Temp := GetStrToDateTimeGStr(Temp, GT_MAIN_VIEW_TIME2) else
			if ACol = giFinishTime then Temp := GetStrToDateTimeGStr(Temp, GT_MAIN_VIEW_TIME3) else
			if ACol = giStartTime  then Temp := GetStrToDateTimeGStr(Temp, GT_MAIN_VIEW_TIME4) else
			if ACol = giFirstTime  then Temp := GetStrToDateTimeGStr(Temp, GT_MAIN_VIEW_TIME5);
			AView.DataController.Values[ARow, ACol] := Temp;
		except
		end;
	end;

	procedure proc_SetGridRowAdd(AView: TcxGridDBTableView; ARow, ACol, AValueIdx : Integer; AValue : Variant );
	var sTmp : string;
	begin
		Try
			AView.DataController.Values[ARow, ACol] := AValue;
		except
			on E: Exception do
			begin
				sTmp := 'proc_SetGridRowAdd: AValueIdx=[' + IntToStr(AValueIdx) + ']  ' + e.Message;
				Assert(False, sTmp);
//				GMessagebox(PChar(sTmp), CDMSE);
			end;
		end;
	end;

{
	AcceptCount1 : 전체
	AcceptCount2 : 변경정보만 조회
	AcceptCount3 : 건별 조회

  C003, C013에서 요청
}
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;

	I, J, li_Row, jj,	iRow, iCol, iTmp,
  iConfInfo, currow, irealbrno, iStCnt, itotal,
	iCancel, iControl, iSlipRow, iTotal2, idx : Integer;

	ls_XML, wsUName, wsBigo, wsBigo2, wsCarInfo: string;
	ls_MSG_Err, ls_ClientKey, ls_status, sCancelRate, swkRate, sDateTime, sTemp, sChSlip, sCardAMT : string;
	sDelList, slTmp, slTmp1, slTmp2: TStringLIst;

	ValueName, vHdNO, aa : string;
  RecCount: Integer;
	OrderCount: array[0..14] of Int64; // 상태바 카운팅용도 [12]카드요금[13]수수료[14]운행

	loop: Integer;
	tmpCnt, tmpAmt: integer;

	RingChk, bInsChk, bFindRecord : Boolean;

	iTag : integer;
	bTmp : Boolean;

	startTick, delta : DWord;
	iTCnt, iTIdx, iValue : integer;
	sWkPosition, sTmp, sCaller, sUpCaller, sSType, sGongType : string;
	slTmp3 : TStringList;
  sM5006Tel, sM5006CuNm : string;
begin
	SetDebugeWrite('JON03.func_AcceptInsert Start');
  startTick := GetTickCount;

	iTag := BtnAutoRe.Tag;
	bTmp := bFirstSreach;
  try
		ls_XML := ss_XML;

//    try
//      slTmp3 := TStringList.Create;
//      slTmp3.Text := ls_XML;
//      slTmp3.SaveToFile('C:\aaaaa.txt');
//    finally
//      FreeAndNil(slTmp3);
//    end;


		xdom := ComsDomDocument.Create;
    try
      result := True;
		  if not xdom.loadXML(ls_XML) then
      begin
				Result := False;
				FSearchEnable := True;
				rb_Search.Enabled := True;
//-        Screen.Cursor := crDefault;
        Exit;
      end;

		  for I := 0 to Length(OrderCount) - 1 do
        OrderCount[I] := 0;

      // 삭제할 레코드 index를 저장한다.
		  sDelList := TStringList.Create;

      //-------------------------------------------------------------------------------
      //  전송결과 체크('0000' 성공 , 나머지는 에러
      //-------------------------------------------------------------------------------
      ls_MSG_Err := GetXmlErrorCode(ss_XML);
      ls_ClientKey := GetXmlClientKey(ss_XML);
		  //-------------------------------------------------------------------------------
      //  선택 Row Color 설정
      //-------------------------------------------------------------------------------
      if ('0000' = ls_MSG_Err) then
      begin
				if cb_All.Hint = 'Y' then
          ls_status := Func_CheckCondition(2)
        else
          ls_status := Func_CheckCondition(1);
        //-------------------------------------------------------------------------------
        //  전송된 Row수 확인
        //-------------------------------------------------------------------------------
		  	iFRCnt := 0;
				if ls_ClientKey = 'KYNM0001' then // 고객 조회(당일내역)
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/AcceptInfo');
          RecCount := StrToInt(lst_Result.item[0].attributes.getNamedItem('Count').Text);
        end
		  	else
		  		RecCount := GetXmlRecordCount(ss_XML);

        //  변경된 갯수가 60건 이상이면 하이라이트 기능 OFF;
        if RecCount > 60 then bGridHighLigth := False
                         else bGridHighLigth := True;

		  	if (RecCount > 0) then
		  	begin
          Application.ProcessMessages;

          // 컬럼 인덱스 저장
          for i := 0 to AView.ColumnCount - 1 do
						aiAccTitle[i] := AView.GetColumnByFieldName(lb_Title_List.Items.Strings[i]).Index;

				//  OutputDebugString(PChar('상태인덱스'+inttostr(AView.GetColumnByFieldName('상태').Index)));
          //-------------------------------------------------------------------------------
          //  자료 조합시 필요한 정보 저장
          //-------------------------------------------------------------------------------
					irealbrno   := AView.GetColumnByFieldName('실제등록콜센터').Index;
					iCancel     := AView.GetColumnByFieldName('취소사유').Index;

		  	//  OutputDebugString(PChar('acceptinfo의 상태:'+inttostr(iStCd)));
          //-------------------------------------------------------------------------------
          //  일반조회
					//-------------------------------------------------------------------------------
					if ls_ClientKey = 'KYNM0001' then
		  		begin
		  			lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/AcceptInfo/Accept');

						ValueName := 'TodayData';
          end else
          begin
		  			if ls_ClientKey <> 'AcceptCount3' then
		  			begin
		  				lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');
              //-------------------------------------------------------------------------------
              //  최종 업데이트 시간(수정된 내역만 조회시 필요)
		  				//-------------------------------------------------------------------------------
		  				dt_sysdate[Self.Tag] := lst_Result.item[0].attributes.getNamedItem('LastUpdate').Text;
              dt_sysdate[Self.Tag] := RemoveDatetimeSeparator(dt_sysdate[Self.Tag]);
		  			end;
		  			lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');
            //-------------------------------------------------------------------------------
            //  서버 시간 저장(수정된 내역만 조회시 필요)
            //-------------------------------------------------------------------------------
            dt_ServerTime[Self.Tag] := lst_Result.item[0].attributes.getNamedItem('LastUpdate').Text;
            dt_ServerTime[Self.Tag] := RemoveDatetimeSeparator(dt_ServerTime[Self.Tag]);

            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');
            ValueName := 'Value';
          end;

          ls_Rcrd := TStringList.Create;
		  		try
            // gaStCnt[0]+gaStCnt[1]+gaStCnt[2]+gaStCnt[3]+gaStCnt[4]+gaStCnt[5]
            // 건수제한 유효하고, 최대건수보다 실제건수가 많으면 실제건수를 최대건수로 제한(2010.11.23)
            if (TCK_USER_PER.JON_SrcLmt='1') and (lst_Result.length>GT_JON_MAX) then
            begin
              tmpCnt:=GT_JON_MAX;
            end else
            begin
              tmpCnt:=lst_Result.length;
            end;

            // formactivate와 동일
		  			if (TCK_USER_PER.JON_SrcLmt='1') then
		  			begin
		  			  lbl_JONSrc_Alert.Visible := False;
		  			  lbl_JONSrc_Alert.Caption :='[조회일부제한]';

		  			  lbl_JONSrc_Alert1.Visible := True;
		  			  lbl_JONSrc_Alert1.Caption :='[조회일부제한]';
            end else
            begin
		  			  lbl_JONSrc_Alert.Visible := False;
		  			  lbl_JONSrc_Alert.Caption := '[조회제한해제]';

		  			  lbl_JONSrc_Alert1.Visible := False;
		  			  lbl_JONSrc_Alert1.Caption := '[조회제한해제]';
		  			end;

		  			if ls_ClientKey = 'AcceptCount1' then   // 전체조회시
            begin
              btnAppSch.Tag := 0;
              btnAppSch.Caption := '';
		  				Slip_List[Self.Tag].Clear;
            end;

//            if ( gsOverTime < 0 ) And ( gsOrderTime < 0 ) then
//            if ( gsOverTime < 0 ) And ( gsOrderTime < 0 ) And (cxTCOrderState.TabIndex = 0) then
						if ( gsOverTime < 0 ) And ( gsOrderTime < 0 ) And ( (cxTCOrderState.TabIndex = 0) Or ( ls_ClientKey = 'AcceptCount1') ) then bFindRecord := True;

						for i := 0 to tmpCnt-1 do
		  			begin
							iRow := -1;
              bInsChk := False;
		  				try
		  					// C013에서 TodayData가 공백으로 넘어올 수 있음
								aa := lst_Result.item[i].attributes.getNamedItem(ValueName).Text;
		  					if Trim(aa) <> '' then
                begin
		  					  GetTextSeperationEx2('│', aa, ls_Rcrd);  //공백 제거 안함 2011.12.19 KHS

									if (IsFamily) then     // 20120629 LYB   패밀리지사일때
									begin
										if Not pJON03Dock.bUnDock then pJON03Dock.HDNO := GT_SEL_BRNO.HDNO;
									end;

									Application.ProcessMessages;
									if ls_ClientKey = 'AcceptCount3' then
										ls_Status := '''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''D'',''R'',''B'',''C'',''M''';

									if (IsFamily) and (not Check_ALLHD(pJON03Dock.HDNO)) and
										 (scb_BranchCode.IndexOf(ls_Rcrd[22]) = -1) and (scb_BranchCode.IndexOf(ls_Rcrd[25]) = -1)then
									begin
										Continue;
									end;

									try
										if (IsFamily) and (not Check_ALLHD(pJON03Dock.HDNO)) and
											 (Copy(ls_ClientKey, 1, 4) = 'COUN') then
										begin
											iRow := AView.DataController.AppendRecord;
										end else
										if (Copy(ls_ClientKey, 1, 4) = 'COUN') then
										begin
											iRow := AView.DataController.AppendRecord;
											bInsChk := True;
										end	else
										begin
											//체크된게 있는지 확인하는 부분
											if pos(ls_Rcrd[2], ls_status) > 0 then
											begin
												if (GS_ADD_RING_YN) or (GS_DEL_RING_YN) then
												begin
													if ls_ClientKey = 'AcceptCount1' then  //최초, 초기화, 검색변경 시 2013.04.20 khs
													begin
														if (ls_Rcrd[2] = '0') or (ls_Rcrd[2] = '5') then  //접수나 대기오더일때 증기 2013.04.20 KHS
														begin
															Slip_List[Self.Tag].add(ls_Rcrd[0]);
															RingChk := True;
														end;
													end	else
													begin
														if (ls_Rcrd[2] = '0') or (ls_Rcrd[2] = '5') then  //접수나 대기오더일때 증기 2013.04.20 KHS
														begin
															if Slip_List[Self.Tag].IndexOf(ls_Rcrd[0]) < 0 then   //최초오더리스트에 없는 접수, 대기오더일 경우 ADDRing
															begin
																if GS_ADD_RING_YN then tmrAddSnd.Enabled := True;
																Slip_List[Self.Tag].add(ls_Rcrd[0]);
															end;
														end	else //접수, 대기오더 외 다른오더
														begin
															if Slip_List[Self.Tag].IndexOf(ls_Rcrd[0]) > -1 then   //최초오더리스트에 없는 접수, 대기오더일 경우 DelRing
															begin
																if GS_DEL_RING_YN then tmrDelSnd.Enabled := True;
																Slip_List[Self.Tag].Delete(Slip_List[Self.Tag].IndexOf(ls_Rcrd[0]));
															end;
														end;
													end;
												end;

												if AView.DataController.RecordCount = 0 then
												begin
													iRow := AView.DataController.AppendRecord;    //단독 본사관리자

                          if ( ls_ClientKey = 'AcceptCount2' ) And ( ls_Rcrd[47] = 'A' ) And ( Not btnAppSch.Down ) then  // 어플접수 건수 증가 ( 자동조회시에만 )
                          begin
                            BtnAppSch.Tag := BtnAppSch.Tag + 1;
                            btnAppSch.Caption := Format('(%d)', [BtnAppSch.Tag]);
                          end;

													bInsChk := True;
												end else
												begin
													try
														if bFindRecord then
															iRow := AView.DataController.FindRecordIndexByText(0, giSlip, ls_Rcrd[0], False, True, True)
														else
															iRow := GetRecordIndexByText(AView, ls_Rcrd[0], giSlip);
													except on E: Exception do
														iRow := -1;
													end;
													if iRow >= AView.DataController.RecordCount then
														iRow := -1;

													if iRow = -1 then
													begin
														iRow := AView.DataController.AppendRecord;

                            if ( ls_ClientKey = 'AcceptCount2' ) And ( ls_Rcrd[47] = 'A' ) And ( Not btnAppSch.Down ) then  // 어플접수 건수 증가 ( 자동조회시에만 )
                            begin
                              BtnAppSch.Tag := BtnAppSch.Tag + 1;
                              btnAppSch.Caption := Format('(%d)', [BtnAppSch.Tag]);
                            end;

														bInsChk := True;
													end else
													begin
														OrderCount[9] := OrderCount[9] - StrToIntDef(RemoveComma(AView.DataController.Values[iRow, giPrice]), 0);
														//카드금액
														OrderCount[12] := OrderCount[12] - StrToIntDef(RemoveComma(AView.DataController.Values[iRow, giCardAmt]), 0);
														//수수료
														OrderCount[13] := OrderCount[13] - StrToIntDef(RemoveComma(AView.DataController.Values[iRow, giFees]), 0);
														if (AView.DataController.Values[iRow, giStCd] = 'B') or
															 (AView.DataController.Values[iRow, giStCd] = 'D') or
															 (AView.DataController.Values[iRow, giStCd] = 'C') or
															 (AView.DataController.Values[iRow, giStCd] = 'M') or
                               (AView.DataController.Values[iRow, giStCd] = 'R') then
														begin
                              if AView.DataController.Values[iRow, giStCd] = 'R' then Inc(OrderCount[06]);
															if AView.DataController.Values[iRow, giStCd] = 'C' then dec(OrderCount[10]);
															if AView.DataController.Values[iRow, giStCd] = 'M' then dec(OrderCount[10]);
															if AView.DataController.Values[iRow, giStCd] = 'B' then dec(OrderCount[11]);
															if AView.DataController.Values[iRow, giStCd] = 'D' then dec(OrderCount[14]);
														end	else
														begin
															iStCnt := StrToIntDef(AView.DataController.Values[iRow, giStCd], 99);
															case iStCnt of
																0..5: dec(OrderCount[iStCnt]);
																7, 8: dec(OrderCount[iStCnt - 1]);
															end;
															if (iStCnt = 8) and (AView.DataController.Values[iRow, iCancel] = '기사부족') then
																dec(OrderCount[8]);
														end;
													end;
												end;

												if (iTag = 1) and (not bTmp ) and         //자동조회 and 최초조회가 아닐때
													 (copy(ls_Rcrd[46],1,4) = '[콜벨]') and (ls_Rcrd[2] = '5') then //대기일때만
												begin
													if not _IsOverTime(GetStrToLongDateTimeStr(ls_Rcrd[37]), 10) then  //최초접수시간
														TsCallBellOrder.Add(ls_Rcrd[0]);

													Try
														FCallBellInfo.Slip.add(ls_Rcrd[0]);  //접수번호
														FCallBellInfo.KeyNumber.add(ls_Rcrd[1]); //대표번호
														FCallBellInfo.BrNm.add(ls_Rcrd[32]); //발주지사
														FCallBellInfo.CuNm.add(ls_Rcrd[4]);  //고객명
														FCallBellInfo.Start.add(ls_Rcrd[9]); //출발지
														FCallBellInfo.Acc2.add(GetStrToLongDateTimeStr(ls_Rcrd[5])); //접수시간2
													except
													end;
												end;
												//AI
												if (iTag = 1) and (not bTmp{bFirstSreach} ) and         //자동조회 and 최초조회가 아닐때
													 (copy(ls_Rcrd[18],1,1) = 'ⓡ') and (ls_Rcrd[2] = '4') then //문의일때만
												begin
													if not _IsOverTime(GetStrToLongDateTimeStr(ls_Rcrd[37]), 10) then  //최초접수시간
														TsAIOrder.Add(ls_Rcrd[0]);

													Try
														FAIInfo.Slip.add(ls_Rcrd[0]);  //접수번호
														FAIInfo.KeyNumber.add(ls_Rcrd[1]); //대표번호
														FAIInfo.BrNm.add(ls_Rcrd[32]); //발주지사
														FAIInfo.CuNm.add(ls_Rcrd[4]);  //고객명
														FAIInfo.Start.add(ls_Rcrd[9]); //출발지
														FAIInfo.Acc2.add(GetStrToLongDateTimeStr(ls_Rcrd[5])); //접수시간2
													except
													end;
												end;
											end else
											begin
												// 2008.09.02 수정(레코드 삭제)
												try
													if bFindRecord then
														iRow := AView.DataController.FindRecordIndexByText(0, giSlip, ls_Rcrd[0], False, True, True)
													else
														iRow := GetRecordIndexByText(AView, ls_Rcrd[0], giSlip);
												except on E: Exception do
													iRow := -1;
												end;

												if iRow >= AView.DataController.RecordCount then iRow := -1;
												if iRow >= 0 then
												begin
													OrderCount[9] := OrderCount[9] - StrToIntDef(RemoveComma(AView.DataController.Values[iRow, giPrice]), 0);
													//카드금액
													OrderCount[12] := OrderCount[12] - StrToIntDef(RemoveComma(AView.DataController.Values[iRow, giCardAmt]), 0);
													//수수료
													OrderCount[13] := OrderCount[13] - StrToIntDef(RemoveComma(AView.DataController.Values[iRow, giFees]), 0);

													if (AView.DataController.Values[iRow, giStCd] = 'B') or
														 (AView.DataController.Values[iRow, giStCd] = 'D') or
														 (AView.DataController.Values[iRow, giStCd] = 'C') or
														 (AView.DataController.Values[iRow, giStCd] = 'M') or
                             (AView.DataController.Values[iRow, giStCd] = 'R') then
													begin
                            if AView.DataController.Values[iRow, giStCd] = 'R' then Inc(OrderCount[06]);
														if AView.DataController.Values[iRow, giStCd] = 'C' then dec(OrderCount[10]);
														if AView.DataController.Values[iRow, giStCd] = 'M' then dec(OrderCount[10]);
														if AView.DataController.Values[iRow, giStCd] = 'B' then dec(OrderCount[11]);
														if AView.DataController.Values[iRow, giStCd] = 'D' then dec(OrderCount[14]);
													end	else
													begin
														iStCnt := StrToIntDef(AView.DataController.Values[iRow, giStCd], 99);
														case iStCnt of
															0..5: dec(OrderCount[iStCnt]);
															7, 8: dec(OrderCount[iStCnt - 1]);
														end;
														if (iStCnt = 8) and (AView.DataController.Values[iRow, iCancel] = '기사부족') then
															dec(OrderCount[8]);
													end;
													sDelList.Add(LPAD(IntToStr(iRow), '0', 6));
													// 삭제할 레코드 index 값을 저장한다.
												end;
												iRow := -1;
											end;
										end;
									except on E: Exception do
										Assert(False, E.Message);
									end;

									if iRow <> -1 then // Skip
									begin
                    sWkPosition := '';
                    //기사위치
                    slTmp := TStringList.Create; slTmp1 := TStringList.Create;
                    Try
                      GetTextSeperationEx('|',
                        RemoveDatetimeSeparator(ls_Rcrd[31]), slTmp);
                      if slTmp.Count = 1 then
                      begin
                        GetTextSeperationEx('/', slTmp[0], slTmp1);
                        if slTmp1.Count = 1 then
                          sWkPosition := slTmp1[0]
                        else if slTmp1.Count = 2 then
                          sWkPosition := slTmp1[1] + '/' + slTmp1[0];
                      end else
                      if slTmp.Count = 2 then
                      begin
                        GetTextSeperationEx('/', slTmp[1], slTmp1);
                        if slTmp1.Count = 1 then
                          sWkPosition := slTmp1[0]
                        else if slTmp1.Count = 2 then
                          sWkPosition := slTmp1[1] + '/' + slTmp1[0] + '/';

                        slTmp1.Clear;

                        GetTextSeperationEx('/', slTmp[0], slTmp1);
                        sWkPosition := sWkPosition + slTmp1[1] + '/' + slTmp1[0];
                      end
                      else sWkPosition := ls_Rcrd[31];  //기사위치
                    Finally
                      slTmp.Free; slTmp1.Free;
                    end;

										// 자동 갱신시 셀비교후 틀려진 부분 깜박거림을 위해..
										if ( BtnAutoRe.Tag = 1 ) And ( iFirstGridHighlight > 0 ) And ( Not bInsChk ) And ( GS_COUNSEL_AUTORELOADHG ) then
										begin
											sChSlip := ls_Rcrd[0];
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[02]], ls_Rcrd[2] , iRow, aiAccTitle[02], '', sChSlip);  // 02 상태
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[03]], ls_Rcrd[3] , iRow, aiAccTitle[03], '고객번호', sChSlip);  // 03 고객번호
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[04]], ls_Rcrd[4] , iRow, aiAccTitle[04], '', sChSlip);  // 04 고객명
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[05]], StrToIntDef(ls_Rcrd[7], 0), iRow, aiAccTitle[05], '', sChSlip); // 05 횟수
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[06]], ls_Rcrd[5] , iRow, aiAccTitle[06], '접수시간', sChSlip);  // 06 접수시간
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[07]], ls_Rcrd[6] , iRow, aiAccTitle[07], '경과시간', sChSlip);  // 07 경과시간
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[08]], ls_Rcrd[27], iRow, aiAccTitle[08], '배차시간', sChSlip);  // 08 배차시간
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[09]], ls_Rcrd[30], iRow, aiAccTitle[09], '완료시간', sChSlip);  // 09 완료시간
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[10]], ls_Rcrd[9] , iRow, aiAccTitle[10], '', sChSlip);  // 10 출발지
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[11]], ls_Rcrd[11], iRow, aiAccTitle[11], '', sChSlip);  // 11 도착지
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[12]], ls_Rcrd[12], iRow, aiAccTitle[12], '', sChSlip);  // 12 요금

											if GS_IDNAME = 0 then
											begin
												_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[13]], ls_Rcrd[13], iRow, aiAccTitle[13], '', sChSlip);  // 13 최초상담원
											end else
											begin
                         // copy(ls_Rcrd[13], 1,Pos('(',ls_Rcrd[13]) - 1), iRow, aiAccTitle[13], '', sChSlip
												_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[13]], Copy(ls_Rcrd[13], Pos('(',ls_Rcrd[13]) + 1, Pos(')',ls_Rcrd[13]) - Pos('(',ls_Rcrd[13]) - 1), iRow, aiAccTitle[13], '', sChSlip);  // 13 최초상담원
											end;
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[14]], ls_Rcrd[14], iRow, aiAccTitle[14], '', sChSlip);  // 14 기사명
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[15]], ls_Rcrd[15], iRow, aiAccTitle[15], '', sChSlip);  // 15 기사사번

                      if GB_COUNSEL_TITLE_VIEW1 then
	  										_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[17]], ls_Rcrd[20] + ' ' + ls_Rcrd[18], iRow, aiAccTitle[17], '', sChSlip)  // 17 적요
                      else
	  										_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[17]], ls_Rcrd[18], iRow, aiAccTitle[17], '', sChSlip);  // 17 적요

											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[18]], ls_Rcrd[16], iRow, aiAccTitle[18], '', sChSlip);  // 18 고객구분
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[19]], StringReplace(ls_Rcrd[34], '()', '', [rfReplaceall]), iRow, aiAccTitle[19], '', sChSlip);  // 19 법인명
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[20]], ls_Rcrd[17], iRow, aiAccTitle[20], '', sChSlip);  // 20 결제
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[21]], ls_Rcrd[20], iRow, aiAccTitle[21], '', sChSlip);  // 21 취소사유

											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[23]], ls_Rcrd[37], iRow, aiAccTitle[23], '최초접수시간', sChSlip);  // 23 최초접수시간

											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[36]], ls_Rcrd[28], iRow, aiAccTitle[36], '고객번호2', sChSlip);  // 36 고객번호2
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[43]], ls_Rcrd[38], iRow, aiAccTitle[43], '', sChSlip);  // 43 출발지X
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[44]], ls_Rcrd[39], iRow, aiAccTitle[44], '', sChSlip);  // 44 출발지Y

											if GS_STARTDONG then
												_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[48]], RemoveDatetimeSeparator(ls_Rcrd[41]), iRow, aiAccTitle[48], '', sChSlip)  // 48 출발지(시군구)
											else
											begin
												slTmp := TStringList.Create;
												Try
													GetTextSeperationEx('/', RemoveDatetimeSeparator(ls_Rcrd[41]), slTmp);

													if slTmp.Count < 2 then
													 _SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[48]], RemoveDatetimeSeparator(ls_Rcrd[41]), iRow, aiAccTitle[48], '', sChSlip) // 48 출발지(시군구)
													else
													 _SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[48]], slTmp[1], iRow, aiAccTitle[48], '', sChSlip);  // 48 출발지(시군구)

													slTmp.Clear;
												finally
													FreeAndNil(slTmp);
												end;
											end;
											_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[49]], ls_Rcrd[42] , iRow, aiAccTitle[49], '', sChSlip);     // 49 DNIS

											if ls_Rcrd.Count > 43 then
											begin
												_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[53]], StrToIntDef(ls_Rcrd[45], 0) , iRow, aiAccTitle[53], '', sChSlip);  // 53 수수료
												_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[54]], ls_Rcrd[46] , iRow, aiAccTitle[54], '', sChSlip);   // 54 적요2
												_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[55]], ls_Rcrd[47] , iRow, aiAccTitle[55], '', sChSlip);   // 55 접수구분
												_SetGridCompareCellAdd(AView, AView.DataController.Values[iRow, aiAccTitle[16]], sWkPosition, iRow, aiAccTitle[16], '', sChSlip);
											end;
										end;

                    iTIdx := -1; iValue := -1;
  //									proc_SetGridRowAdd_Blank(AView, iRow);   //모든 컬럼에 초기값 입력
										AView.DataController.Values[iRow, aiAccTitle[24]] := ''; //지난시간
										AView.DataController.Values[iRow, aiAccTitle[28]] := dt_ServerTime[Self.Tag];  // 29 현재시간
										AView.DataController.Values[iRow, aiAccTitle[46]] := ''; //배차경과
										AView.DataController.Values[iRow, aiAccTitle[77]] := '';//기준일자
                    sCardAMT := '0';
										sTmp := ''; sCaller := ''; sUpCaller := '';
										//for 문으로 사용했지만 팀장님 지시로 제거 20200521KHS
										//마지막 -  ls_Rcrd[74] 운행시작시간
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[22],  0, ls_Rcrd[0]);                    // 0-접수번호
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 0],  1, strtocall(ls_Rcrd[1])); 	      // 1-대표번호
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 2],  2, ls_Rcrd[2]); 	                  // 2-상태정렬값
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[51],  2, _GetJONCodeToIndex(ls_Rcrd[2]));// 2-상태정렬값
                    //목포콜센터m5000-3006 아이디의 경우 권한지사가 아니면 전화번호 감춤. 정회귀 탐장 요청
                    sM5006Tel := '';  sM5006CuNm := '';                   
                    if (GT_UserIf.ID = 'm5000-3007') and (GS_PRJ_AREA = 'O') then
                    begin
                      if scb_BrNo_m5000.IndexOf(ls_Rcrd[22]) < 0 then 
                      begin
                        sM5006Tel := '010-****-****';
                        if ls_Rcrd[4] <> '' then sM5006CuNm := '***';
                      end;
                    end;
                    //목포콜센터m5000-3006 아이디의 경우 권한지사가 아니면 전화번호 감춤. 정회귀 탐장 요청
                    if sM5006Tel <> '' then
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 3],  3, sM5006Tel)  	                // 3-고객번호1
                    else
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 3],  3, ls_Rcrd[3]); 	                // 3-고객번호1
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[45],  3, ls_Rcrd[3]);                    // 3-고객번호1

                    if sM5006CuNm <> '' then
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 4],  4, sM5006CuNm)  	                // 4-고객명
                    else
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 4],  4, ls_Rcrd[4]);                  // 4-고객명
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 6],  5, ls_Rcrd[5]);                    // 5-접수시간
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[32],  5, ls_Rcrd[5]);                    // 5-접수시간2
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 7],  6, ls_Rcrd[6]);                    // 6-경과시간
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 5],  7, StrToIntDef(ls_Rcrd[7], 0)); 	  // 7-횟수
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[30],  8, ls_Rcrd[8]); 									  // 8-출발지1
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[10],  9, ls_Rcrd[9]);                    // 9-출발지
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[31], 10, ls_Rcrd[10]); 								  //10-도착지1
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[11], 11, ls_Rcrd[11]);                   //11-도착지
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[12], 12, ls_Rcrd[12]);                   //12-요금

                    sUpCaller := ls_Rcrd[60];
										sTmp      := ls_Rcrd[13];   //'sntest(콜마너1)'
                    if GS_IDNAME = 0 then
                    begin
                      if ( sUpCaller = '' ) then sCaller := ls_Rcrd[13] else	sCaller := ls_Rcrd[13] + '/' + ls_Rcrd[60];
										end else
                    begin
                      if ( sUpCaller = '' ) then
                      begin
                        //  copy(ls_Rcrd[13], 1, Pos('(',ls_Rcrd[13]) - 1)        //접수자 이름 감춤
                        if Pos('(',ls_Rcrd[13]) > 0 then sCaller := Copy(sTmp, Pos('(',sTmp) + 1, Pos(')',sTmp) - Pos('(',sTmp) - 1) //접수자 이름 감춤
                                                    else sCaller := ls_Rcrd[13];  //접수자
                      end else
											begin
												// copy(ls_Rcrd[13], 1, Pos('(',ls_Rcrd[13]) - 1)  + '/' +  copy(ls_Rcrd[60], 1, Pos('(',ls_Rcrd[60]) - 1)        //접수자 이름 감춤
                        if Pos('(',ls_Rcrd[13]) > 0 then sCaller := Copy(sTmp, Pos('(',sTmp) + 1, Pos(')',sTmp) - Pos('(',sTmp) - 1) + '/' +
                                                                    Copy(sUpCaller, Pos('(',sUpCaller) + 1, Pos(')',sUpCaller) - Pos('(',sUpCaller) - 1)        //접수자 이름 감춤
                                                    else sCaller := ls_Rcrd[13]+ls_Rcrd[60];  //접수자
                      end;
                    end;

                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[13], 13, sCaller);                       //13-접수자
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[14], 14, ls_Rcrd[14]);                   //14-기사명
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[15], 15, ls_Rcrd[15]);                   //15-기사사번
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[18], 16, ls_Rcrd[16]); 	                //16-고객구분
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[20], 17, ls_Rcrd[17]); 	                //17-결제

                    if GB_COUNSEL_TITLE_VIEW1 then
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[17], 18, ls_Rcrd[20] + ' ' + ls_Rcrd[18])  //18 적요( 취소사유 + 적요 )
                    else
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[17], 18, ls_Rcrd[18]);                     //18 적요

                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[27], 19, ls_Rcrd[19]); 	                //19-메모
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[21], 20, ls_Rcrd[20]);                   //20-취소사유
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[25], 21, ls_Rcrd[21]);                   //21-공유
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[26], 22, ls_Rcrd[22]);                   //22-발주지사
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[29], 23, ls_Rcrd[23]); 	                //23-콜센타코드
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[33], 24, ls_Rcrd[24]); 	                //24-기사본사코드
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[34], 25, ls_Rcrd[25]); 	                //25-기사지사코드
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[35], 26, ls_Rcrd[26]); 	                //26-기사콜센터
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 8], 27, ls_Rcrd[27]); 	                //27-배차시간
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[41], 27, ls_Rcrd[27]); 	                //27-배차시간2
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[36], 28, ls_Rcrd[28]);                   //28-고객번호2
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[57], 28, ls_Rcrd[28]); 	                //28-고객번호22
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[37], 29, ls_Rcrd[29]);										//29-실제등록콜센터
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 9], 30, ls_Rcrd[30]); 	                //30-완료시간
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[42], 30, ls_Rcrd[30]);                   //30-완료시간
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[16], 31, sWkPosition); 	                //31-기사위치

                    if GB_COUNSEL_TITLE_VIEW2 then
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 1], 32, ls_Rcrd[32] + ' ' + strtocall(ls_Rcrd[1])) //32-발주지사명+ 대표번호
                    else
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 1], 32, ls_Rcrd[32]); 	                //32-발주지사명

                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[38], 33, ls_Rcrd[33]); 				          //33-법인코드
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[19], 34, StringReplace(ls_Rcrd[34], '()', '', [rfReplaceall])); 	//34-법인명
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[39], 35, ls_Rcrd[35]); 	                //35-공유콜
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[40], 36, ls_Rcrd[36]);                   //36-고객코드
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[23], 37, ls_Rcrd[37]); 	                //37-최초접수시간
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[79], 37, GetStrToLongDateTimeStr(ls_Rcrd[37]));  //37-최초접수시간고정
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[43], 38, ls_Rcrd[38]);                   //38-출발지X
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[44], 39, ls_Rcrd[39]);                   //39-출발지Y
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[47], 40, RemoveDatetimeSeparator(ls_Rcrd[40]));  //40-수정시간
                    sTmp := '';
                    if GS_STARTDONG then sTmp := RemoveDatetimeSeparator(ls_Rcrd[41]) else
                    begin
                      slTmp := TStringList.Create;
                      Try
                        GetTextSeperationEx('/', RemoveDatetimeSeparator(ls_Rcrd[41]), slTmp);
                        if slTmp.Count < 2 then sTmp := RemoveDatetimeSeparator(ls_Rcrd[41])  // 출발지 시군구
                        else sTmp := slTmp[1];  // 출발지 시군구
                      finally
                        slTmp.Free;
                      end;
                    end;
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[48], 41, sTmp);                                   //41-출발지(시군구)
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[49], 42, ls_Rcrd[42]);                            //42-DNIS
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[50], 43, ls_Rcrd[43]); 	                         //43-사용자고객등급코드
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[59], 43, fGetCustName(ls_Rcrd[43]));              //43-사용자고객등급코드
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[52], 44, ls_Rcrd[44]);                            //44-플러스콜 여부(y,n)
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[53], 45, StrToIntDef(ls_Rcrd[45], 0));            //45-기사수수료
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[54], 46, ls_Rcrd[46]);                            //46-적요2
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[55], 47, ls_Rcrd[47]); 	                         //47-접수구분(A:어플접수 , 공백:상담원)
                    //ls_Rcrd[48], ls_Rcrd[49] 사용안함
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[58], 50, fGetBaechaTypeName(ls_Rcrd[50]));        //50-배차구분
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[60], 51, StrToIntDef(ls_Rcrd[51], 0));            //51-고객마일리지
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[61], 52, StrToIntDef(ls_Rcrd[52], 0));            //52-이벤트횟수
                    //ls_Rcrd[53] 사용안함
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[63], 54, ls_Rcrd[54]); 	                         //54-배차거리
                    sTmp := '';
                    if (StrToIntDef(ls_Rcrd[55], 0) > 0) and (StrToIntDef(ls_Rcrd[56], 0) > 0) then              //55~56-나이제한
                      sTmp := ls_Rcrd[55] + '~' + ls_Rcrd[56] + '세까지'
                    else if (StrToIntDef(ls_Rcrd[55], 0) > 0) and (StrToIntDef(ls_Rcrd[56], 0) < 1) then
                      sTmp := ls_Rcrd[55] + '세이상'
                    else if (StrToIntDef(ls_Rcrd[55], 0) < 1) and (StrToIntDef(ls_Rcrd[56], 0) > 0) then
                      sTmp := ls_Rcrd[56] + '세이하';
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[64], 55, sTmp);                                   //55~56-나이제한

                    if ls_Rcrd.count > 87 then     // 법인프리미엄/일반구분 vip/normal
                      sSType := ls_Rcrd[87];

                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[65], iTCnt, ls_Rcrd[57]); 	                      //57-적요3
                    if ls_Rcrd.count > 88 then     // 공유여부- y(공유중) , n(공유종료), x(공유실패), null(fail Match)
                    begin
                      if (ls_Rcrd[88] = 'y') Or (ls_Rcrd[88] = 'n') then // y(공유중) , n(공유종료)
                      begin
                        if sSType = 'vip' then
                          proc_SetGridRowAdd(AView, iRow, aiAccTitle[65], iTCnt, _SERVICE_TYPE_VIP + ls_Rcrd[57]) else    //57-적요3
                        if sSType = 'normal' then
                          proc_SetGridRowAdd(AView, iRow, aiAccTitle[65], iTCnt, _SERVICE_TYPE_CHANGE + ls_Rcrd[57]) 	    //57-적요3
                        else
                          proc_SetGridRowAdd(AView, iRow, aiAccTitle[65], iTCnt, _SERVICE_TYPE_SPACE + ls_Rcrd[57]) 	    //57-적요3
                      end;
                    end;
                    
                    //ls_Rcrd[58] 사용안함 , ls_Rcrd[59]-콜마너2,
                    if GS_IDNAME = 0 then sCaller := ls_Rcrd[60] else                                            //60-수정상담원
                    begin
                      if Pos('(',ls_Rcrd[60]) > 0 then
                        sCaller := Copy(ls_Rcrd[60], Pos('(',ls_Rcrd[60]) + 1, Pos(')',ls_Rcrd[60]) - Pos('(',ls_Rcrd[60]) - 1) // copy(ls_Rcrd[60], 1, Pos('(',ls_Rcrd[60]) - 1)        //수정상담원 이름 감춤
                      else
                        sCaller := ls_Rcrd[60];  //수정상담원
                    end;
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[66], 60, sCaller);                                //60-수정상담원
                    sTmp := '';
                    if ls_Rcrd[61] = 'y' then sTmp := '승인'   else
                    if ls_Rcrd[61] = 'n' then sTmp := '미승인' else sTmp := ls_Rcrd[61] ;
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[68], iTCnt, sTmp); 	                             //61-법인오더 승인여부
                    sTmp := '';
                    if ls_Rcrd[62] = '1' then sTmp := '콜벨오더' else
                    if ls_Rcrd[62] = '2' then sTmp := ''         else sTmp := ls_Rcrd[62] ;
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[69], 62, sTmp); 	                                 //62- 콜벨오더여부
                    //ls_Rcrd[63], ls_Rcrd[64] 사용안함
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[70], 65, StrToIntDef(ls_Rcrd[65], 0));            //65-기사입금액
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[71], 66, ls_Rcrd[66]);                            //66-발주본사
                    sTmp := '';
                    if ( Copy(ls_Rcrd[67], 1, 1) = '2' ) Or ( Copy(ls_Rcrd[67], 1, 1) = '6' ) then
                      sTmp := ls_Rcrd[67] + '분' else sTmp := ls_Rcrd[67];
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[72], 67, sTmp); 	                                 //67-후불충전
                    // 숫자 앞에 공백을 한 이유 : 이미지와 겹쳐지는걸 막기 위해
                    sTmp := ls_Rcrd[68];                                                                         //68-고객통화여부
                    if Copy(sTmp, 1, 1) = '1' then sTmp := '① ' else
                    if Copy(sTmp, 1, 1) = '2' then sTmp := '② ' else
                    if Copy(sTmp, 1, 1) = 'c' then sTmp := 'ⓒ ' else
                    if Copy(sTmp, 1, 1) = 'a' then sTmp := 'ⓐ ';
                    sTmp := sTmp + Copy(ls_Rcrd[68], 2, Length(ls_Rcrd[68]) - 1);
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[62], 68, '☎'+sTmp); 	                         //68-고객통화여부
                    //69-//상태|승인금액 20181015KHS 위쪽 카드상태, 금액 주석처리 여기서 적용
                    if ls_Rcrd[69] <> '' then
                    begin
                      slTmp := TStringList.Create;
                      Try
                        slTmp.Clear;
                        slTmp.Delimiter := '|';
                        slTmp.DelimitedText := ls_Rcrd[69];

                        proc_SetGridRowAdd(AView, iRow, aiAccTitle[56], 69, slTmp[0]); // 카드결제구분
                        if slTmp[0] = 'P8' then
                        begin
                          proc_SetGridRowAdd(AView, iRow, aiAccTitle[20], 69, ls_Rcrd[17] + '-승인완료');
                          if ( pos('(카드)', ls_Rcrd[17]) > 0 ) Or ( pos('복합', ls_Rcrd[17]) > 0 ) then sCardAMT := slTmp[1];
                        end;
                      finally
                        slTmp.Free;
                      End;
                    end else
                    begin
                      AView.DataController.Values[iRow, aiAccTitle[56]] := '';
                    end;
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[73], 69, sCardAMT);                             //69-//상태|승인금액
                    if ls_Rcrd[70] = 'y' then sTmp := '탁송연합콜' else sTmp := '';
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[74], 70, sTmp);                                 //70- 탁송연합콜

                    sTmp := ls_Rcrd[71];   // 리콜 여부 = AI_OUT_OPTION || ',' || AI_OUT_MEMO 형식변경

//                    if iRow = 1 then sTmp := 'n,' else
//                    if iRow = 2 then sTmp := 'y,1회연결(요금인상)' else
//                    if iRow = 3 then sTmp := 'n,1회연결(무응답종료)' else
//                    if iRow = 4 then sTmp := ',1회연결(요금인상)' else
//                    if iRow = 5 then sTmp := ',';

                    if ( Pos(',', sTmp) > 0 ) And (( Trim(Copy(sTmp, 1, 1)) = ',' ) Or ( Copy(sTmp, 1, 1) = 'y' ) Or ( Copy(sTmp, 1, 1) = 'n' )) then
                    begin
                      if Trim(sTmp) = 'y,' then sTmp := '활성' else
                      if Trim(sTmp) = 'n,' then sTmp := '비활성' else
                      if ( Trim(Copy(sTmp, 1, 1)) = ',' ) then
                      begin
                        // 대표번호별 AI-OB사용여부체크
                        if not GetAIOBKeyNumberYN(ls_Rcrd[1]) then sTmp := '비활성' else
                        if Trim(Copy(sTmp, 3, 1)) = ''  then sTmp := '활성'
                                                        else sTmp := '활성' + sTmp;
                      end else
                      if ( Copy(sTmp, 1, 1) = 'y' ) then sTmp := StringReplace(sTmp, 'y', '활성'  , [rfReplaceAll]) else
                      if ( Copy(sTmp, 1, 1) = 'n' ) then
                      begin
                        if Trim(Copy(sTmp, 3, 1)) = ''  then sTmp := '비활성'
                                                        else sTmp := StringReplace(sTmp, 'n', '비활성', [rfReplaceAll]);
                      end;
                    end;
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[75], 71, sTmp);                                 //71-리콜여부
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[76], 72, StrToFloatDef(ls_Rcrd[72], 0));        //72-경비지급
                    //ls_Rcrd[73] D콜
                    if ls_Rcrd.count > 74 then
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[78], 74, GetStrToDateTimeGStr(ls_Rcrd[74], 3)); //74-운행시작시간
                    if ls_Rcrd.count > 75 then     // 도착지X좌표
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[80], 75, ls_Rcrd[75]);                   //38-도착지X
                    if ls_Rcrd.count > 76 then     // 도착지Y좌표
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[81], 76, ls_Rcrd[76]);                   //38-도착지Y
                    if ls_Rcrd.count > 77 then     // 후불금액
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[82], 77, ls_Rcrd[77]);                   //77-후불요금
                    if ls_Rcrd.count > 78 then     // 카드금액
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[83], 78, ls_Rcrd[78]);                   //78-카드요금
                    if ls_Rcrd.count > 79 then     // 마일금액
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[84], 79, ls_Rcrd[79]);                   //79-마일요금
                    if ls_Rcrd.count > 80 then     // 콜링지사
                    begin
                      if Trim(ls_Rcrd[80]) = '' then
                        proc_SetGridRowAdd(AView, iRow, aiAccTitle[85], 80, ls_Rcrd[22])                  //22-발주지사
                      else
                        proc_SetGridRowAdd(AView, iRow, aiAccTitle[85], 80, ls_Rcrd[80]);                 //80-콜링지사
                    end;
                    if ls_Rcrd.count > 81 then     // 콜링대표번호
                    begin
                      if Trim(ls_Rcrd[82]) = '' then
                        proc_SetGridRowAdd(AView, iRow, aiAccTitle[86], 81, ls_Rcrd[32])                  //32-발주지사명
                      else
                        proc_SetGridRowAdd(AView, iRow, aiAccTitle[86], 81, ls_Rcrd[81]);                 //81-콜링지사명
                    end;
                    if ls_Rcrd.count > 82 then     // 콜링대표번호
                    begin
                      if Trim(ls_Rcrd[82]) = '' then
                        proc_SetGridRowAdd(AView, iRow, aiAccTitle[87], 82, strtocall(ls_Rcrd[01]))       //01-대표번호
                      else
                        proc_SetGridRowAdd(AView, iRow, aiAccTitle[87], 82, strtocall(ls_Rcrd[82]));      //82-콜링대표번호
                    end;
                    if ls_Rcrd.count > 83 then     // 콜센터2
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[90], 83, ls_Rcrd[83]);                   //83-콜센터2
                    if ls_Rcrd.count > 84 then     // 복수콜번호
                    begin
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[91], 84, ls_Rcrd[84]);                   //84-복수콜번호

                      if (GB_365System) And ( Trim(ls_Rcrd[84]) <> '' ) And ( Trim(ls_Rcrd[27]) <> '') then // 복수콜이며 배차시간이 있을경우만
                      begin
                        idx := MultiCallNumber.Slip.IndexOf(ls_Rcrd[0]);
                        if idx < 0 then
                        begin
                          MultiCallNumber.Slip.Add(ls_Rcrd[0]);
                          MultiCallNumber.BaechaTime.Add(ls_Rcrd[27]);
                          MultiCallNumber.MultiSlip.Add(ls_Rcrd[84]);
                          MultiCallNumber.Seq.Add('');
                        end else
                        begin
                          MultiCallNumber.BaechaTime.Strings[idx] := ls_Rcrd[27];
                          MultiCallNumber.MultiSlip .Strings[idx] := ls_Rcrd[84];
                        end;

                        bMultiCallNumber := True;
                      end;
                    end;
                    if ls_Rcrd.count > 85 then     // 취소시간
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[92], 85, ls_Rcrd[85])                    //85-취소시간
                    else
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[92], 85, ''         );

                    if ls_Rcrd.count > 86 then     // 보정요금
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[93], 86, StrToIntDef(ls_Rcrd[86], 0))    //86-보정요금
                    else
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[93], 86, 0          );

                    if ls_Rcrd.count > 87 then     // 법인프리미엄/일반구분 vip/normal/space
                      sSType := ls_Rcrd[87];

                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[94], 87, ''         );
                    if ls_Rcrd.count > 88 then     // 공유여부  공유여부는체크삭제/ 어떤공유인지만 표시
                    begin
											if (ls_Rcrd[88] = 'y') Or (ls_Rcrd[88] = 'n') then // y(공유중) , n(공유종료)
                      begin
                        if sSType = 'vip'    then sGongType := 'V' else
                        if sSType = 'normal' then sGongType := 'N'
                                             else sGongType := '';

												proc_SetGridRowAdd(AView, iRow, aiAccTitle[94], 87, sGongType  );     // 88.공유여부
											end;
                    end;

										//69-//상태|승인금액 20181015KHS 위쪽 카드상태, 금액 주석처리 여기서 적용
										sTmp := '';
										if ls_Rcrd[69] <> '' then  //P8 : 승인, C8: 취소(미결제), E8 : 결제오류(미결제) 
										begin
											slTmp := TStringList.Create;
											Try
												slTmp.Clear;
												slTmp.Delimiter := '|';
												slTmp.DelimitedText := ls_Rcrd[69];
													
												if slTmp[0] = ''   then sTmp := ''         else
												if slTmp[0] = 'P8' then sTmp := '승인'     else
												if slTmp[0] = 'C8' then sTmp := '취소'     else
												if slTmp[0] = 'E8' then sTmp := '결제오류' else sTmp := '미결제';
											finally
												slTmp.Free;
											End;
										end;     
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[95], 88, sTmp);    // 95 카드승인 20210708 KHS

										proc_SetGridRowAdd(AView, iRow, aiAccTitle[96], 89, 0);
										if ls_Rcrd.count > 89 then     
										begin
											proc_SetGridRowAdd(AView, iRow, aiAccTitle[96], 89, StrToIntDef(ls_Rcrd[89], 0));  // 96 지원금
										end;
										
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[97], 90, 0);
										if ls_Rcrd.count > 90 then     
										begin
											proc_SetGridRowAdd(AView, iRow, aiAccTitle[97], 90, StrToIntDef(ls_Rcrd[90], 0));  // 97 기타지급금
										end;
										
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[98], 91, 0);
										if ls_Rcrd.count > 91 then     
										begin
											proc_SetGridRowAdd(AView, iRow, aiAccTitle[98], 91, StrToIntDef(ls_Rcrd[91], 0));  // 98 지원(지원횟수)
										end;
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[100], 93, ls_Rcrd[13]);  // 100//'sntest(콜마너1)'

										if ls_Rcrd.count > 92 then
											proc_SetGridRowAdd(AView, iRow, aiAccTitle[102], 92, ls_Rcrd[92])  // 102 배차지연시간
										else
											proc_SetGridRowAdd(AView, iRow, aiAccTitle[102], 92, '');

										if (ls_Rcrd[88] = 'y') then sTmp := '공유중' else
										if (ls_Rcrd[88] = 'n') then sTmp := '공유종료' else sTmp := '';
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[103], 93, sTmp);          // 103 KM공유(여부)
											
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[104], 94, '');
										if ls_Rcrd.count > 93 then     
										begin
											if (ls_Rcrd[93] = 'y') then sTmp := '보험료무료'
											else sTmp := '';
											proc_SetGridRowAdd(AView, iRow, aiAccTitle[104], 94, sTmp);  // 104 건당보혐료무료
										end;
										
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[105], 95, '');
										if ls_Rcrd.count > 94 then     
										begin
											proc_SetGridRowAdd(AView, iRow, aiAccTitle[105], 95, ls_Rcrd[94]);  // 105 odb_wk_sabun
										end;

                    // 현금 = 12-요금 - (77-후불요금 + 78-카드요금 + 79-마일요금)
                    tmpAmt := StrToIntDef(ls_Rcrd[12], 0) - ( StrToIntDef(ls_Rcrd[77], 0) + StrToIntDef(ls_Rcrd[78], 0) + StrToIntDef(ls_Rcrd[79], 0) );

                    // 현금
                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[106], 96, tmpAmt);                   //106-현금

                    // 콜패스여부
										if ls_Rcrd.count > 95 then     
                    begin
                      iTmp := StrToIntDef(ls_Rcrd[95], 0);
                      if iTmp > 0 then sTmp := '콜패스' else sTmp := '';
                      proc_SetGridRowAdd(AView, iRow, aiAccTitle[107], 97, sTmp);                   //107-콜패스여부
                    end;

                    proc_SetGridRowAdd(AView, iRow, aiAccTitle[108], 98, ls_Rcrd[58]); 	                      //58-거리

										//타사콜인경우 * 마킹
										// GT_USERIF.LV = '60' : 본사관리자   소속지사
                    // GT_USERIF.LV = '40' : 지사관리자   본인지사
										// GT_USERIF.LV = '10' : 상담원       타콜센터 또는 상담원에 오픈하는 지사
                    //   22 : 발주지사
                    //   23 : 콜센터코드
                    //   5  : 접수시간
                    try
											if ((GT_USERIF.LV = '60') and (scb_BranchCode.IndexOf(ls_Rcrd[22]) < 0)) or
												 ((GT_USERIF.LV = '40') and ((Trim(ls_Rcrd[22]) <> GT_USERIF.BR))) or
												 ((GT_USERIF.LV = '10') and (((Trim(ls_Rcrd[23]) <> GT_USERIF.BR) And (Trim(ls_Rcrd[29]) <> GT_USERIF.BR)) or    // 23.콜센터, 29.실제등록콜센터
												 IsCustInfoDayOpen(ls_Rcrd[22], ls_Rcrd[5]))) then
											begin
												// 고객명
												wsUName := Trim(AView.DataController.Values[iRow, giCustNm]);
												if wsUName <> '' then
													AView.DataController.Values[iRow, giCustNm] := '***';
												// 적요
												wsBigo := Trim(AView.DataController.Values[iRow, giBigo]);
												if wsBigo <> '' then
													AView.DataController.Values[iRow, giBigo] := '*****';
												// 적요2
												wsBigo2 := Trim(AView.DataController.Values[iRow, giBigo2]);
												if wsBigo2 <> '' then
													AView.DataController.Values[iRow, giBigo2] := '*****';
												// 이용횟수
												if Trim(AView.DataController.Values[iRow, giCnt]) <> '' then
													AView.DataController.Values[iRow, giCnt] := '99999';

                        AView.DataController.Values[iRow, giCustTel]  := '***-****-****';
                        AView.DataController.Values[iRow, giCustTel2] := '***-****-****';

                        if Pos('(',ls_Rcrd[13]) > 0 then
                          AView.DataController.Values[iRow, giReceipter] := copy(ls_Rcrd[13], 1,Pos('(',ls_Rcrd[13]) - 1) ;       //접수자 이름 감춤
                      end	else
                      begin
                        // 고객번호 마킹 ( 고객번호, 접수시간, 지사코드, 실제지사코드)
                        AView.DataController.Values[iRow, giCustTel] :=
                            func_Cust_Tel(
                              AView.DataController.Values[iRow, giCustTel],
                              AView.DataController.Values[iRow, giAccTime2],
                              AView.DataController.Values[iRow, giBrNo],
                              AView.DataController.Values[iRow, irealbrno]);

                        AView.DataController.Values[iRow, giCustTel2] :=
                            func_Cust_Tel(
                              AView.DataController.Values[iRow, giCustTel2],
                              AView.DataController.Values[iRow, giAccTime2],
                              AView.DataController.Values[iRow, giBrNo],
															AView.DataController.Values[iRow, irealbrno]);
											end;

											// [설정] 시간보기 형식
											_SetTimeFormat(AView, iRow, giAccTime);      // 접수시간
											_SetTimeFormat(AView, iRow, giBaecha);       // 배차시간
											_SetTimeFormat(AView, iRow, giFinishTime);   // 완료시간
											_SetTimeFormat(AView, iRow, giStartTime);    // 운행시작시간

											// 최초접수시간
                      AView.DataController.Values[iRow, giFirstTime] := GetStrToLongDateTimeStr(AView.DataController.Values[iRow, giFirstTime]);
                      _SetTimeFormat(AView, iRow, giFirstTime);     // 최초접수시간

											// 건수제한 유효하고, 최대건수보다 실제건수가 많으면 실제건수를 최대건수로 제한(2010.11.23)
                      if not ((TCK_USER_PER.JON_SrcLmt='1') and
                             ((gaStCnt[0]+gaStCnt[1]+gaStCnt[2]+gaStCnt[3]+gaStCnt[4]+gaStCnt[5]+gaStCnt[14]
                             + OrderCount[0]+OrderCount[1]+OrderCount[2]+OrderCount[3]+OrderCount[4]+OrderCount[5]+OrderCount[14])>= GT_JON_MAX)) then
                      begin
                        OrderCount[9] := OrderCount[9] + StrToIntDef(RemoveComma(AView.DataController.Values[iRow, giPrice]), 0);
                        //카드금액
                        OrderCount[12] := OrderCount[12] + StrToIntDef(RemoveComma(AView.DataController.Values[iRow, giCardAmt]), 0);
                        //수수료
                        OrderCount[13] := OrderCount[13] + StrToIntDef(RemoveComma(AView.DataController.Values[iRow, giFees]), 0);
												if (AView.DataController.Values[iRow, giStCd] = 'B') or
                           (AView.DataController.Values[iRow, giStCd] = 'D') or
                           (AView.DataController.Values[iRow, giStCd] = 'C') or
                           (AView.DataController.Values[iRow, giStCd] = 'M') or
                           (AView.DataController.Values[iRow, giStCd] = 'R') then
                        begin
                          if AView.DataController.Values[iRow, giStCd] = 'R' then Inc(OrderCount[06]);
                          if AView.DataController.Values[iRow, giStCd] = 'C' then Inc(OrderCount[10]);
                          if AView.DataController.Values[iRow, giStCd] = 'M' then Inc(OrderCount[10]);
                          if AView.DataController.Values[iRow, giStCd] = 'B' then Inc(OrderCount[11]);
                          if AView.DataController.Values[iRow, giStCd] = 'D' then Inc(OrderCount[14]);
                        end else
                        begin
                          iStCnt := StrToIntDef(AView.DataController.Values[iRow, giStCd], 99);
                          case iStCnt of
                            0..5: Inc(OrderCount[iStCnt]);
                            7, 8: Inc(OrderCount[iStCnt - 1]);
                          end;
                          if (iStCnt = 8) and (AView.DataController.Values[iRow, iCancel] = '기사부족') then
                            Inc(OrderCount[8]);
                        end;
											end;
                    except on E: Exception do
                      Assert(False, E.Message);
                    end;
  								end;
								end;

								// Last ls_Rcrd index = 43(업데이트 시 변경하셈)
              except on E: Exception do
                Assert(False, E.Message);
              end;
						end;  // for end

		  			if (ls_ClientKey = 'AcceptCount1') and (RingChk) then
		  			begin
							tmrAddSnd.Enabled := True;
		  				RingChk := False;
		  			end;
		  		finally
		  			ls_Rcrd.Free;
		  		end;

          // GT_JON_MAX보다 많은 레코드 추가 시 가장 오래된 오더 삭제
        {  if (TCK_USER_PER.JON_SrcLmt='1') and (AView.DataController.recordcount>=GT_JON_MAX) and (ANow[Self.Tag] = 'Now') then
          begin
            sDelList.Add(IntToStr(0));
          end;    }

        	SetDebugeWrite(Format('JON03.func_AcceptInsert Delete Cnt : %d', [sDelList.Count]));
          // 삭제할 레코드 index 값을 읽어서 삭제한다.
          if sDelList.Count > 0 then
          begin
            sDelList.Sorted := True;
          	SetDebugeWrite('JON03.func_AcceptInsert Delete 2');
            try
              AView.EndUpdate;    // 조회자료 확정
              AView.BeginUpdate;  // 조회자료중 삭제자료 시작
              for i := sDelList.Count - 1 downto 0 do
              begin
                iRow := StrToIntDef(sDelList[i], -1);

		  					if iRow >= 0 then
		  						AView.DataController.DeleteRecord(iRow);
              end;
//              Application.ProcessMessages;
            finally
              AView.EndUpdate;   // 조회자료중 삭제자료 완료
              AView.BeginUpdate; // 조회자료 시작
            end;
          end;
        	SetDebugeWrite('JON03.func_AcceptInsert Delete 3');

          //마지막 페이지 체크
					if ls_ClientKey = 'KYNM0001' then
            status_bar.Panels[0].Text := '완료'
          else
          begin
            if UpperCase(GetXmlHasMore(ss_XML)) = 'N' then
            begin
              result := False;
//              Application.ProcessMessages;
              if BtnAutoRe.Tag = 0 then  // 자동 갱신이 아닐경우만 표시
                status_bar.Panels[0].Text := '정렬중...';
							if (AView.SortedItemCount = 0) or (ls_ClientKey = 'AcceptCount3') then
								AView.Columns[AView.GetColumnByFieldName('접수번호').Index].SortOrder := soDescending;
//              if {(cb_00.Down) and }(FormatDateTime('yyyymmdd', de_stDate.Date) = StartDate) then
              proc_lap_time;
            end;
          end; // 접수창에서 조회
        end else
        begin
          // 당일 접수 목록 조회 아닌경우 만 서버시간 저장
          if ls_ClientKey <> 'KYNM0001' then
          begin
//            if {(cb_00.Down) and }(FormatDateTime('yyyymmdd', de_stDate.Date) = Copy(StartDateTime('yyyymmddhhmmss'), 1, 8)) then
            proc_lap_time;
            //-------------------------------------------------------------------------------
            //  일반조회
            //-------------------------------------------------------------------------------
            if ls_ClientKey <> 'AcceptCount3' then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');
              dt_sysdate[Self.Tag] := lst_Result.item[0].attributes.getNamedItem('LastUpdate').Text;
              dt_sysdate[Self.Tag] := RemoveDatetimeSeparator(dt_sysdate[Self.Tag]);
            end;
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');
            dt_ServerTime[Self.Tag] := lst_Result.item[0].attributes.getNamedItem('LastUpdate').Text;
            dt_ServerTime[Self.Tag] := RemoveDatetimeSeparator(dt_ServerTime[Self.Tag]);
            result := False;
          end;
        end;
      end else
      begin
        ls_Msg_Err := GetXmlErrorCode(ss_XML);
        GMessagebox(ls_Msg_Err, CDMSE);

        Result := False;
      end;

//      SetDebugeWrite('JON03.func_AcceptInsert - 12948');

      try
				// 접수 총계 처리
        if (TCK_USER_PER.JON_OrderCnt = '1') then
        begin
          // 건수제한 유효하고, 최대건수보다 실제건수가 많으면 실제건수를 최대건수로 제한(2010.11.23)
          if ( gsOverTime < 0 ) And ( gsOrderTime < 0 ) then
          begin
            iTotal := AView.DataController.RecordCount;
            if (TCK_USER_PER.JON_SrcLmt='1') and (AView.DataController.recordcount>GT_JON_MAX) then
              iTotal:=GT_JON_MAX;
						if ls_ClientKey = 'KYNM0001' then
            begin
		  		  	DispOrderCount(itotal, OrderCount);
		  		  end else
            begin
		  		  	for I := 0 to Length(OrderCount) - 1 do
		  		  		Inc(gaStCnt[I], OrderCount[I]);
		  		  	DispOrderCount(iTotal, gaStCnt);
            end;
          end else
          begin
            if (TCK_USER_PER.JON_SrcLmt='1') and (AView.DataController.recordcount>GT_JON_MAX) then
              iTotal:=GT_JON_MAX;

    		  	for I := 0 to Length(OrderCount) - 1 do
	   		  		Inc(gaStCnt[I], OrderCount[I]);
          end;
        end
        else
		  		status_bar.Panels[0].Text := '완료';
      except on E: Exception do
        Assert(False, E.Message);
      end;

//      SetDebugeWrite('JON03.func_AcceptInsert - 12982');

      try
				for i := 0 To FCallBellInfo.Slip.Count - 1 do
				begin
					proc_ADDList('CallBell', FCallBellInfo.Slip[i], FCallBellInfo.KeyNumber[i], FCallBellInfo.BrNm[i]
													, FCallBellInfo.CuNm[i], FCallBellInfo.Start[i], FCallBellInfo.Acc2[i]);
				end;
				FCallBellInfo.Slip.Clear;
				FCallBellInfo.KeyNumber.Clear;
				FCallBellInfo.BrNm.Clear;
				FCallBellInfo.CuNm.Clear;
				FCallBellInfo.Start.Clear;
				FCallBellInfo.Acc2.Clear;

//        SetDebugeWrite('JON03.func_AcceptInsert - 12995');

				for i := 0 To FAIInfo.Slip.Count - 1 do
				begin
					proc_ADDList('AI', FAIInfo.Slip[i], FAIInfo.KeyNumber[i], FAIInfo.BrNm[i]
													, FAIInfo.CuNm[i], FAIInfo.Start[i], FAIInfo.Acc2[i]);
				end;
				FAIInfo.Slip.Clear;
				FAIInfo.KeyNumber.Clear;
				FAIInfo.BrNm.Clear;
				FAIInfo.CuNm.Clear;
				FAIInfo.Start.Clear;
				FAIInfo.Acc2.Clear;
			except on E: Exception do
        Assert(False, E.Message);
      end;
    finally
      xdom := nil;
  		FreeAndNil(sDelList);
    end;
   	SetDebugeWrite('JON03.func_AcceptInsert End');
{
    delta := GetTickCount - startTick;
    SetDebugeWrite(Format('JON03.func_Accept End = %d', [delta]));

    if delta > 5000 then
    begin
      SetDebugeWrite(Format('JON03.func_Accept Over = %d', [delta]));
      Assert(False, Format('JON03.func_Accept Over = %d', [delta]));
		end;}
	except
    on E: Exception do
    begin
      Assert(False, E.Message);

      dt_sysdate[Self.Tag] := '';
			dt_ServerTime[Self.Tag] := '';
      Result := False;
			SetDebugeWrite('JON03.func_AcceptInsert error');
			rb_Search.Enabled := True;
      FreeAndNil(sDelList);
		end;
  end;
end;

function TFrm_JON03.fGetCustName( sCustLevelSeq : String ) : String;
Var i : Integer;
begin
  try
    Result := '';
    for i := 0 to Length(scb_CustGroupInfo) - 1 do
    begin
      if scb_CustGroupInfo[i].LevelSeq = sCustLevelSeq then
      begin
        Result := scb_CustGroupInfo[i].LevelName;
        Break;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Tfrm_JON03.Func_CheckCondition(i: Integer): string;
	procedure _PushTag(APush: Boolean; AStatus: string; var Value: string);
  begin
		if not APush then
      Exit;

    if Value <> '' then
			Value := Value + ', ';

    Value := Value + AStatus;
  end;
begin
  SetDebugeWrite('JON03.Func_CheckCondition');
  Result := '';

  try
    if i <> 3 then
    begin
      if (i = 0) and (rb_chk_All.Down) then
      begin
        Result := '''A''';
        Exit;
      end;

  		if i = 2 then
  		begin
//				_PushTag(True, ' ''0'',''D''', Result);
				_PushTag(True, ' ''0''', Result);
  			_PushTag(True, ' ''1''', Result);
  			_PushTag(True, ' ''2''', Result);
  			_PushTag(True, ' ''3''', Result);
  			_PushTag(True, ' ''4''', Result);
  			_PushTag(True, ' ''5''', Result);
  			_PushTag(True, ' ''8''', Result);
  			_PushTag(True, ' ''R''', Result);
				_PushTag(True, ' ''B''', Result);
//  			_PushTag(True, ' ''C'',''M''', Result);
				_PushTag(True, ' ''C''', Result);
				_PushTag(True, ' ''D''', Result);
			end else
			begin
//				_PushTag(cb_00.Down, ' ''0'',''D''', Result);
				_PushTag(cb_00.Down, ' ''0''', Result);
  			_PushTag(cb_01.Down, ' ''1''', Result);
  			_PushTag(cb_02.Down, ' ''2''', Result);
  			_PushTag(cb_03.Down, ' ''3''', Result);
				_PushTag(cb_04.Down, ' ''4''', Result);
				_PushTag(cb_05.Down, ' ''5''', Result);
				_PushTag(cb_08.Down, ' ''8''', Result);
				_PushTag(cb_0R.Down, ' ''R''', Result);
				_PushTag(cb_0B.Down, ' ''B''', Result);
//				_PushTag(cb_0B.Down, ' ''B'',''D''', Result);
//  			_PushTag(cb_0C.Down, ' ''C'',''M''', Result);
				_PushTag(cb_0C.Down, ' ''C''', Result);
				_PushTag(cb_0D.Down, ' ''D''', Result);
			end;
  	end	else
    if i = 3 then
    begin
  		_PushTag(cb_00.Down, ' ''0''', Result);
  		_PushTag(cb_02.Down, ' ''2''', Result);
  		_PushTag(cb_04.Down, ' ''4''', Result);
  		_PushTag(cb_08.Down, ' ''8''', Result);
			_PushTag(cb_0B.Down, ' ''B''', Result);
//  		_PushTag(cb_0C.Down, ' ''C'',''M''', Result);
			_PushTag(cb_0C.Down, ' ''C''', Result);
			_PushTag(cb_0D.Down, ' ''D''', Result);
		end;
	except
    Result := '';
  end;
end;

function TFrm_JON03.func_lap_time(in_date, In_Time: string; iType, iGubun : Integer): string;
var
	sTime, dTime: TDateTime;
	sDate: string;
begin
	Result:= '';
	try
    if iType = 0 then	sDate := dt_ServerTime[Self.Tag]
                 else	sDate := In_Time;
		if sDate = '' then Exit;

		sDate := GetStrToLongDateTimeStr(sDate);
    sTime := StrToDateTime(sDate);

    sDate := GetStrToLongDateTimeStr(in_date);
    dTime := StrToDateTime(sDate);

    sDate := FormatDateTime('hhmmss', sTime - dTime);

		if (StrToIntDef(copy(sDate, 1, 4), 100) >= 20) and (iType = 0) then
    begin
      Exit;
    end else
    begin
      if iGubun = 0 then
      begin
        if GT_MAIN_VIEW_TIME6 = 0 then
        begin
          if (StrToIntDef(copy(sDate, 1, 2), 0) = 0) then
            sDate := FormatFloat('00', StrToIntDef(copy(sDate, 3, 2), 0)) + '분' +
                     FormatFloat('00', StrToIntDef(copy(sDate, 5, 2), 0)) + '초'
          else
            sDate := FormatFloat('00', StrToIntDef(copy(sDate, 1, 2), 0)) + '시간' +
                     FormatFloat('00', StrToIntDef(copy(sDate, 3, 2), 0)) + '분' +
                     FormatFloat('00', StrToIntDef(copy(sDate, 5, 2), 0)) + '초';
        end else
        begin
          if (StrToIntDef(copy(sDate, 1, 2), 0) = 0) then
            sDate := FormatFloat('00', StrToIntDef(copy(sDate, 3, 2), 0)) + ':' +
                     FormatFloat('00', StrToIntDef(copy(sDate, 5, 2), 0))
          else
            sDate := FormatFloat('00', StrToIntDef(copy(sDate, 1, 2), 0)) + ':' +
                     FormatFloat('00', StrToIntDef(copy(sDate, 3, 2), 0)) + ':' +
                     FormatFloat('00', StrToIntDef(copy(sDate, 5, 2), 0));
        end;

        Result := sDate;
      end else
      if iGubun = 1 then
      begin
        Result := FormatDateTime('hh:mm:ss', sTime - dTime);
      end;
    end;
  except
    Result:= '';
  end;
end;

function TFrm_JON03.func_lap_timeDuration(in_date, In_Time: string; iType, iGubun : Integer): string;
var
	sTime, dTime: TDateTime;
	sDate: string;
begin
	Result:= '';
	try
    if iType = 0 then sDate := dt_ServerTime[Self.Tag]
                 else	sDate := In_Time;

		if (sDate = '') Or (in_date = '') then Exit;

		sDate := GetStrToLongDateTimeStr(sDate);
    sTime := StrToDateTime(sDate);

    sDate := GetStrToLongDateTimeStr(in_date);
    dTime := StrToDateTime(sDate);

    sDate := FormatDateTime('hhmmss', sTime - dTime);

		if (StrToIntDef(copy(sDate, 1, 4), 100) >= GS_Duration) and (iType = 0) then     //설정에 따라 경과시간표기
    begin
      Exit;
    end else
    begin
      if iGubun = 0 then
      begin
        if GT_MAIN_VIEW_TIME6 = 0 then
        begin
          if (StrToIntDef(copy(sDate, 1, 2), 0) = 0) then
            sDate := FormatFloat('00', StrToIntDef(copy(sDate, 3, 2), 0)) + '분' +
                     FormatFloat('00', StrToIntDef(copy(sDate, 5, 2), 0)) + '초'
          else
            sDate := FormatFloat('00', StrToIntDef(copy(sDate, 1, 2), 0)) + '시간' +
                     FormatFloat('00', StrToIntDef(copy(sDate, 3, 2), 0)) + '분' +
                     FormatFloat('00', StrToIntDef(copy(sDate, 5, 2), 0)) + '초';
        end else
        begin
          if (StrToIntDef(copy(sDate, 1, 2), 0) = 0) then
            sDate := FormatFloat('00', StrToIntDef(copy(sDate, 3, 2), 0)) + ':' +
                     FormatFloat('00', StrToIntDef(copy(sDate, 5, 2), 0))
          else
            sDate := FormatFloat('00', StrToIntDef(copy(sDate, 1, 2), 0)) + ':' +
                     FormatFloat('00', StrToIntDef(copy(sDate, 3, 2), 0)) + ':' +
                     FormatFloat('00', StrToIntDef(copy(sDate, 5, 2), 0));
        end;
        Result := sDate;
      end else
      if iGubun = 1 then
      begin
        Result := FormatDateTime('hh:mm:ss', sTime - dTime);
      end;
    end;
  except
    Result:= '';
  end;
end;

function TFrm_JON03.func_lap_timeOk(in_date, In_Time: string; iMin: Integer): Boolean;
var
  sTime, dTime: TDateTime;
  sDate: string;
begin
  try
    sDate := dt_ServerTime[Self.Tag];
    if sDate = '' then Exit;

    sDate := GetStrToLongDateTimeStr(sDate);
    sTime := StrToDateTime(sDate);

    sDate := GetStrToLongDateTimeStr(in_date);
    dTime := StrToDateTime(sDate);

    sDate := FormatDateTime('hhmmss', sTime - dTime);

    if (StrToIntDef(copy(sDate, 1, 4), 100) = iMin) then
      Result := True
    else
      Result := False;
  except
    Result:= False;
  end;
end;

function TFrm_JON03.func_lap_timeSS(In_Time: string): string; //현재시간
var
	startTime, endTime: TDateTime;
	sDate: string;
begin
	Result:= '';
	try
		sDate := In_Time;

		if sDate = '' then
      Exit;

		sDate := GetStrToLongDateTimeStr(sDate);
		startTime := StrToDateTime(sDate);

		sDate := GetStrToLongDateTimeStr(gStandard_Time);
		endTime := StrToDateTime(sDate);

		sDate := FormatDateTime('hhmmss', startTime - endTime);

		if (StrToIntDef(copy(sDate, 1, 4), 100) >= 20) then
    begin
      Exit;
    end else
    begin
			if (StrToIntDef(copy(sDate, 3, 2), 0) = 0) then
        sDate := IntToStr(StrToIntDef(copy(sDate, 5, 2), 0)) + '초'
      else
        sDate := IntToStr(StrToIntDef(copy(sDate, 3, 2), 0)) + '분' +
								 IntToStr(StrToIntDef(copy(sDate, 5, 2), 0)) + '초';

			Result := sDate;
    end;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON03.GetBrNoFromComboValue(AValue: string): string;
begin
	Result := Trim(RightStr(AValue, 5)); // 본사코드,지사코드
end;

function TFrm_JON03.GetCurrentGrid: TcxGrid;
begin
  SetDebugeWrite('JON03.GetCurrentGrid');
  Result := Grd2;
  if not Grd2.Visible then
    Result := cxGridCounselToday;
end;

function TFrm_JON03.GetCurrentView: TcxGridDBTableView;
begin
	Result := sg_counsel;

  if not Grd2.Visible then
		Result := cxViewCounselToday;    // 당일 내역 목록
end;

function TFrm_JON03.GetOverTimeMin(ASourceTime: string): Integer;
var
  NowTime: string;
  TermDate: TDateTime;
begin
  try
    Result := 0;

    ASourceTime := GetStrToLongDateTimeStr(ASourceTime);
    NowTime     := GetStrToLongDateTimeStr(dt_ServerTime[Self.Tag]);
    if Trim(NowTime) <> '' then
    begin
      // 경과시간 = 시작시간 - 기준시간
      TermDate := StrToDateTime(NowTime) - StrToDateTime(ASourceTime);
      Result := Trunc(TermDate * (1*24*60));
    end;
  except
    Result := 0;
  end;
end;

procedure TFrm_JON03.Grd2MouseLeave(Sender: TObject);
begin
  GT_HINT_SHOW := False;
  OldHintView.ARow := -1;    // 20120719 LYB 수정
	PnlHelp.Visible := False;
	tmr_hint.Enabled := False;
end;

procedure TFrm_JON03.grdCallPassLogiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Grid: TAdvColumnGrid absolute Sender;
begin
  SetDebugeWrite('JON03.grdCallPassLogiKeyDown');
  try
    case Key of
      VK_RETURN:
        begin
          if (Grid.Row <= Grid.RowCount - 1) then
          begin
            if Grid.Col = Grid.ColCount - 1 then
            begin
              if (Trim(Grid.Cells[1, Grid.Row]) <> '')
                or (Trim(Grid.Cells[2, Grid.Row]) <> '') then
							begin
                Grid.RowCount := Grid.RowCount + 1;
                Grid.Row := Grid.RowCount - 1;
              end;
              Grid.Col := 0;
						end else
            begin
              Grid.Col := Grid.Col + 1;
            end;
          end;
          Key := 0;
        end;
      VK_DOWN:
        begin
          if (Grid.Row = Grid.RowCount - 1) then
          begin
            Grid.RowCount := Grid.RowCount + 1;
            Grid.Row := Grid.RowCount - 1;
            Key := 0;
          end;
        end;
      VK_UP:
        begin
          if (Grid.RowCount > 2) and (Grid.Row = Grid.RowCount - 1)
            and (Trim(Grid.Cells[1, Grid.Row]) = '')
            and (Trim(Grid.Cells[2, Grid.Row]) = '') then
          begin
            Grid.RowCount := Grid.RowCount - 1;
            Grid.Col := 1;
            Grid.Row := Grid.RowCount - 1;
            Key := 0;
          end;
        end;
      VK_LEFT:
        begin
          if (Grid.Col > 1) and (Grid.Row > 1) then
          begin
            Grid.Col := Grid.Col - 1;
          end
        end;
      VK_RIGHT:
        begin
          if (Grid.Row <= Grid.RowCount - 1) then
          begin
            if (Grid.Row = Grid.RowCount - 1) and (Grid.Col < Grid.ColCount - 1) then
              Grid.Col := Grid.Col + 1;
          end;
          Key := 0;
        end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.GridKakaoListViewColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_JON03.GridKakaoListViewDataControllerSortingChanged(
  Sender: TObject);
begin
	gfSetIndexNo(GridKakaoListView, AIndex, GS_SortNoChange);
end;

procedure TFrm_JON03.Image1Click(Sender: TObject);
var
	GIF : TGifImage;
  mRootPath : String;
begin
	SetDebugeWrite('JON03.Image1Click');
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	try
    GIF := TGifImage.Create;
    try
      mRootPath := ExtractFilePath(Application.ExeName);
      GIF.LoadFromFile(mRootPath + '\Image\au.gif');
		  if ( BtnAutoRe.Tag = 0 ) Or ( Image1.Tag = 1 ) then
      begin
        GIF.Animate := True;
        Image1.Picture.Graphic.Assign(GIF);
        cxImage2.Visible := True;
        cxImage3.Visible := False;
//-        Frm_Main.cxImageAuto.GetIcon(0, cxImage2.Picture.Icon);

        BtnAutoRe.Caption := '조회종료';

  	  	dedt_Sdate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
        dedt_Edate.Date := dedt_Sdate.Date + 1;

        if AAutoSearch_Time <> 0 then
        begin
          cxLblAutSec.Visible := True;
          cxLblAutSec.Caption := IntToStr(AAutoSearch_Time);
        end;

//-        iAutoFirstChk := 0;
        BtnYmdClose.Click;
        PnlAuto.BringToFront;
        PnlAuto.Visible := True;
        BtnAutoRe.Tag := 1;
		    BtnAutoRe.Hint := IntToStr(BtnAutoRe.Tag); //자동갱신 플래그값 보유. 기사오더 갱신 막기위해 사용 20191204KHS
        iFirstGridHighlight := 0;
		  	AAutoSearch_Flag := True;

        if AAutoSearch_Time = 0 then
        begin
          AAutoSearch_Stop := False;
          tmr_dis.Enabled := True;
	    	  tmr_dis.Interval := 1800;
        end else
        begin
          AAutoSearch_Stop := False;
          tmr_dis.Enabled := True;
	    	  tmr_dis.Interval := 1300;
        end;
		  end else
  	  begin
        GIF.Animate := False;
        Image1.Picture.Graphic.Assign(GIF);
        cxImage2.Visible := True;
        cxImage3.Visible := False;
//        Frm_Main.cxImageAuto.GetIcon(0, cxImage2.Picture.Icon);

        BtnAutoRe.Caption := '조회시작';

        cxLblAutSec.Visible := False;
        cxLblAutSec.Caption := '0';

//        iAutoFirstChk := 0;
        PnlAuto.Visible := False;
        BtnAutoRe.Tag := 0;
    		BtnAutoRe.Hint := IntToStr(BtnAutoRe.Tag); //자동갱신 플래그값 보유. 기사오더 갱신 막기위해 사용 20191204KHS
		  	AAutoSearch_Time := 0;
		  	AAutoSearch_Flag := False;

		  	rb_Search.Enabled := True;
		  	tmr_dis.Enabled := False;
        iFirstGridHighlight := 0;
      end;
      Image1.Tag := 0;
    finally
      GIF.Free;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.InitBubInWindow( AHdNo : String );
var
  I: Integer;
begin
	try
		cbokeyNumber.Properties.Items.Clear;

    FBubInSelectedCode := '';

    cxBubinView.DataController.SetRecordCount(0);
    for i := 0 to scb_DsBranchCode.Count - 1 do
    begin
      // 본사코드   // 지사코드   // 지사명   // 대표번호
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      begin
        if AHdNo = scb_HeadCode[i] then
					cbokeyNumber.Properties.Items.Add(scb_DsBranchName[i] + '[' + scb_KeyNumber[i] + '] '
            + Copy(scb_HeadCode[i] + '     ', 1, 5) + '.' + Copy(scb_DsBranchCode[i] + '     ', 1, 5));
      end else
        cbokeyNumber.Properties.Items.Add(scb_DsBranchName[i] + '[' + scb_KeyNumber[i] + '] '
          + Copy(scb_HeadCode[i] + '     ', 1, 5) + '.' + Copy(scb_DsBranchCode[i] + '     ', 1, 5));
    end;

		cbokeyNumber.ItemIndex := cbokeyNumber.Properties.Items.IndexOf(GS_COUNSEL_BUBIN_KEYNUM);
		if cbokeyNumber.ItemIndex < 0 then
      cbokeyNumber.ItemIndex := 0;
  except on E: Exception do
    Assert(False, E.Message); 
  end;
end;

function TFrm_JON03.IsOverTime(ASourceTime: string; AMin: Integer): Boolean;
var
  NowTime: string;
  TermDate: TDateTime;
begin
  SetDebugeWrite('JON03.IsOverTime');
  try
    // 2011.03.10 기준시간이 공백일때 오류
    Result := False;
    if Trim(ASourceTime)='' then
    begin
      result:=false;
    end else
    begin
      ASourceTime := GetStrToLongDateTimeStr(ASourceTime);
      NowTime     := GetStrToLongDateTimeStr(dt_ServerTime[Self.Tag]);

      // 경과시간 = 시작시간 - 기준시간
      TermDate := StrToDateTime(NowTime) - StrToDateTime(ASourceTime);

      // 경과시간이 요청시간보다 큰경우
      if TermDate > (AMin * 1/24/60) then
        Result := True;
    end;
  except
    Result := False;
  end;
end;

function TFrm_JON03.IsOverTimeSec(ASourceTime: string; ASec: Integer): Boolean;
var
  NowTime: string;
  TermDate: TDateTime;
begin
  SetDebugeWrite('JON03.IsOverTimeSec');
  try
    Result := False;

    ASourceTime := GetStrToLongDateTimeStr(ASourceTime);
    NowTime     := GetStrToLongDateTimeStr(dt_ServerTime[Self.Tag]);

    // 경과시간 = 시작시간 - 기준시간
    TermDate := StrToDateTime(NowTime) - StrToDateTime(ASourceTime);

    // 경과시간이 요청시간보다 큰경우
    if TermDate > (ASec * 1/24/60/60) then
      Result := True;
  except
    Result := False;
  end;
end;

procedure TFrm_JON03.mniCardHistoryClick(Sender: TObject);
begin
	SetDebugeWrite('JON03.mniCardHistoryClick');
	ShowPopupCard(True);
end;

procedure TFrm_JON03.mniCardReqClick(Sender: TObject);
begin
	SetDebugeWrite('JON03.mniCardReqClick');
	ShowPopupCard(True);
end;

procedure TFrm_JON03.mniOrderToAskClick(Sender: TObject);
var
	XmlData: string;
  ErrCode, ErrCode1 : integer;
	ErrMsg: string;
  ls_TxLoad : string;
  rv_str: string;
	ls_rxxml, ls_Msg_Err: String;
	slReceive: TStringList;
begin
	SetDebugeWrite('JON03.mniOrderToAskClick');
	if IsOtherBranchCall(Sender) then Exit;

  if GT_OrderInfo[Self.Tag].Status <> '8' then    // 취소상태는 취소 전문을 보내지 않음   LYB 2017.05.12
	begin
		bProcOK := False;
		ls_TxLoad := GTx_UnitXmlLoad('C005.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'SMSString', '0', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ReasonString', '기타 - 문의로 변경', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'PenalTimeString', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'PenalChargeString', '', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '', [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '0', [rfReplaceAll]);
    //취소사유 기타
    ls_TxLoad := StringReplace(ls_TxLoad, 'CancelCD', '8', [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode1, False) then
      begin
				rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
					Application.ProcessMessages;

          ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
          if Copy(ls_msg_Err, 1, 4) = '4002' then // 4002.카드결제 승인 건에 대해 승인 취소 후 오더 취소 처리 메시지 표시  LYB 2017.05.12
          begin
            GMessagebox(ls_Msg_Err, CDMSE);
            bProcOK := False;
            Exit;
          end;
          bProcOK := True;
        end;
			end;
		finally
      FreeAndNil(slReceive);
		end;
	end else bProcOK := True; //취소상태일때는 다음 진행 가능

	sleep(500);//서버 상태 반영 20191114 KHS

	try
		if not bProcOK then
		begin
			GMessagebox('오더취소 시 오류가 발생하여 [문의로변경]이 취소되었습니다. 다시 진행해주세요', CDMSE);
			exit;
		end else bProcOK := False;

		if not RequestBase(GetCallable05('JON03' + 'CANC0020', 'a01.order_to_ask', GT_OrderInfo[Self.Tag].Slip), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('문의 변경 중 오류발생'+#13#10+'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Exit;
		end;
		proc_recieve(XmlData);
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_JON03.mniWORCallingHPClick(Sender: TObject);
var
  ls_TxLoad, rv_str, sWkHp, sKeyNum, sTmp: string;
  ls_rxxml, cDate, cDate2 : String;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  slReceive: TStringList;
  ErrCode, iTmp: integer;
begin
  SetDebugeWrite('JON03.mniWORCallingHPClick');
  if Not NOCX_WOR.Visible then Exit;

	if GT_OrderInfo[Self.Tag].WkSabun = '' then
  begin
    GMessagebox('배차된 기사님이 없습니다.', CDMSE);
    Exit;
  end;

  try
		ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003',[rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '3', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', GT_OrderInfo[Self.Tag].WkSabun, [rfReplaceAll]);

    cDate := GT_OrderInfo[Self.Tag].AccTime;
    cDate := StringReplace(cDate, ' ', '', [rfReplaceAll]);
    cDate2 := StartDateTime('yyyy-mm-dd hh:nn:ss');
    cDate2 := StringReplace(cDate2, ' ', '', [rfReplaceAll]);
    if (cDate < cDate2) then
      ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '', [rfReplaceAll])   // 과거오더
    else
      ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '0', [rfReplaceAll]);  // 당일오더

    if (GS_PRJ_AREA = 'O') and (Pos('㉹',GT_OrderInfo[Self.Tag].WkName) = 1) and (GT_USERIF.WKVPhone = 'y') then
       ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', 'y', [rfReplaceAll])
    else
       ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', '', [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'Conf_slipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]); //접수번호추가

		sWkHp := '';
    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          try
            xdom := ComsDomDocument.Create;
            try
              if xdom.loadXML(ls_rxxml) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');
                if Sender = mniWORCallingHP then
                  sWkHp := lst_Result.item[0].attributes.getNamedItem('Info3').text
                else if Sender = mniWORCallingPDA then
                  sWkHp := lst_Result.item[0].attributes.getNamedItem('Info2').text;
              end;
            finally
              xdom := Nil;
            end;
          except
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
      GMessagebox(PChar('Jon03[NOCX_WORClick]:' + e.Message), CDMSE);
    end;
  end;

  if sWkHp = '' then
  begin
    Application.MessageBox('기사님의 휴대폰 번호을(를) 등록하세요', '알림', MB_OK);
    Exit;
  end;

  
  //엔젤-기사에게 전화걸기 시 발주상황실 -> CTI설정번호 -> 발주대표번호 순서로 전화걸기 20211206 KHS
  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
  begin
    sKeyNum := '';
    sTmp := StringReplace(GT_OrderInfo[Self.Tag].KeyNumber, '-', '', [rfReplaceAll]); 
    if ( ( IsFamily ) And ( mLEFT_SectionIndex = 0 ) ) then	//패밀리전체일경우
    begin
      iTmp := scb_FamilyKeyNumber.IndexOf(sTmp);
      if iTmp < 0 then sKeyNum := '' else
      sKeyNum := scb_FamilySituation_Tel[iTmp];
    end else
    begin
      iTmp := scb_KeyNumber.IndexOf(sTmp);
      if iTmp < 0 then sKeyNum := '' else
      sKeyNum := scb_Situation_Tel[iTmp];
    end;

    if sKeyNum = '' then
    begin
      if Trim(GT_POSS_KEYNUM) <> '' then
      begin
        sKeyNum := GT_POSS_KEYNUM;
      end else begin  // 090422. CDs. 기사 상황실번호가 없을경우 선택오더의 대표번호로 전화걸기.
        sKeyNum := StringReplace(GT_OrderInfo[Self.Tag].KeyNumber, '-', '', [rfReplaceAll]);
      end;
    end;
  end else
  begin
    if Trim(GT_POSS_KEYNUM) <> '' then
    begin
      sKeyNum := GT_POSS_KEYNUM;
    end else begin  // 090422. CDs. 기사 상황실번호가 없을경우 선택오더의 대표번호로 전화걸기.
      sKeyNum := StringReplace(GT_OrderInfo[Self.Tag].KeyNumber, '-', '', [rfReplaceAll]);
    end;
  end;   
  
  SetDebugeWrite('접수현황 기사전화걸기 ' + sWkHp);

	sWkHp := StringReplace(sWkHp, '-', '', [rfReplaceAll]);
  Frm_Main.TelWorkerByBrSabun(CallToStr(sWkHp), sKeyNum, GT_OrderInfo[Self.Tag].Slip, '02'); //01.고객, 02.기사
end;

procedure TFrm_JON03.mniWORCallingPDAClick(Sender: TObject);
var
  ls_TxLoad, rv_str, sWkHp, sKeyNum, sTmp: string;
  ls_rxxml, cDate, cDate2 : String;
  slReceive: TStringList;
  ErrCode, iTmp: integer;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
begin
  SetDebugeWrite('JON03.mniWORCallingPDAClick');
	if GT_OrderInfo[Self.Tag].WkSabun = '' then
  begin
    GMessagebox('배차된 기사님이 없습니다.', CDMSE);
    Exit;
  end;

  try
		ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003',[rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '3', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', GT_OrderInfo[Self.Tag].WkSabun, [rfReplaceAll]);

    cDate := GT_OrderInfo[Self.Tag].AccTime;
    cDate := StringReplace(cDate, ' ', '', [rfReplaceAll]);
    cDate2 := StartDateTime('yyyy-mm-dd hh:nn:ss');
    cDate2 := StringReplace(cDate2, ' ', '', [rfReplaceAll]);
    if (cDate < cDate2) then
      ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '', [rfReplaceAll])   // 과거오더
		else
      ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '0', [rfReplaceAll]);  // 당일오더

    if (GS_PRJ_AREA = 'O') and (Pos('㉹',GT_OrderInfo[Self.Tag].WkName) = 1) and (GT_USERIF.WKVPhone = 'y') then
       ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', 'y', [rfReplaceAll])
    else
       ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', '', [rfReplaceAll]);

		ls_TxLoad := StringReplace(ls_TxLoad, 'Conf_slipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]); //접수번호추가	 

		sWkHp := '';
    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          try
            xdom := ComsDomDocument.Create;
            try
              if xdom.loadXML(ls_rxxml) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');
                if Sender = mniWORCallingHP then
                  sWkHp := lst_Result.item[0].attributes.getNamedItem('Info3').text
                else if Sender = mniWORCallingPDA then
                  sWkHp := lst_Result.item[0].attributes.getNamedItem('Info2').text;
              end;
            Finally
              xdom := nil;
            end;
          except
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
      GMessagebox(PChar('Jon03[NOCX_WORClick]:' + e.Message), CDMSE);
    end;
  end;

  if sWkHp = '' then
  begin
    Application.MessageBox('기사님의 휴대폰 번호을(를) 등록하세요', '알림', MB_OK);
    Exit;
  end;

  //엔젤-기사에게 전화걸기 시 발주상황실 -> CTI설정번호 -> 발주대표번호 순서로 전화걸기 20211206 KHS
  if (IsAngelPlusHead(GS_PRJ_AREA = 'S', GT_UserIF.HD)) then
  begin
    sKeyNum := '';
    sTmp := StringReplace(GT_OrderInfo[Self.Tag].KeyNumber, '-', '', [rfReplaceAll]); 
    if ( ( IsFamily ) And ( mLEFT_SectionIndex = 0 ) ) then	//패밀리전체일경우
    begin
      iTmp := scb_FamilyKeyNumber.IndexOf(sTmp);
      if iTmp < 0 then sKeyNum := '' else
      sKeyNum := scb_FamilySituation_Tel[iTmp];
    end else
    begin
      iTmp := scb_KeyNumber.IndexOf(sTmp);
      if iTmp < 0 then sKeyNum := '' else
      sKeyNum := scb_Situation_Tel[iTmp];
    end;

    if sKeyNum = '' then
    begin
      if Trim(GT_POSS_KEYNUM) <> '' then
      begin
        sKeyNum := GT_POSS_KEYNUM;
      end else begin  // 090422. CDs. 기사 상황실번호가 없을경우 선택오더의 대표번호로 전화걸기.
        sKeyNum := StringReplace(GT_OrderInfo[Self.Tag].KeyNumber, '-', '', [rfReplaceAll]);
      end;
    end;
  end else
  begin
    if Trim(GT_POSS_KEYNUM) <> '' then
    begin
      sKeyNum := GT_POSS_KEYNUM;
    end else begin  // 090422. CDs. 기사 상황실번호가 없을경우 선택오더의 대표번호로 전화걸기.
      sKeyNum := StringReplace(GT_OrderInfo[Self.Tag].KeyNumber, '-', '', [rfReplaceAll]);
    end;
  end;   

  SetDebugeWrite('접수현황 기사전화걸기 ' + sWkHp);
	sWkHp := StringReplace(sWkHp, '-', '', [rfReplaceAll]);
  Frm_Main.TelWorkerByBrSabun(CallToStr(sWkHp), sKeyNum, GT_OrderInfo[Self.Tag].Slip, '02'); //01.고객, 02.기사
end;

function TFrm_JON03.IsRunMenuShortCut(AMenu: TMenuItem): Boolean;
begin
  SetDebugeWrite('JON03.IsRunMenuShortCut');
  if AMenu = pm_Cancel then
    Result := IsRunMenuCancel
  else if (AMenu = pm_reservation) or (AMenu = pm_Panelty_reservation) then
    Result := IsRunMenuReady
  else if AMenu = pm_Add_Insert then
    Result := IsRunMenuAdd
  else if AMenu = pm_share then
    Result := IsRunMenuShared
  else if AMenu = pm_Recon then
    Result := IsRunMenuOfficeOrder
  else if AMenu = pm_smsRecon then
    Result := IsRunMenuSMSOrder
  else if AMenu = N18 then
    Result := IsRunMenuReadyComplete
  else
    Result := True;
end;

function TFrm_JON03.IsRunMenuCancel: Boolean;
begin
  SetDebugeWrite('JON03.IsRunMenuCancel');
  Result := True;

  if GT_OrderInfo[Self.Tag].Status[1] = '8' then
    Result := False;
end;

function TFrm_JON03.IsRunMenuReady: Boolean;
begin
  SetDebugeWrite('JON03.IsRunMenuReady');
  Result := False;

  if GT_OrderInfo[Self.Tag].Status[1] in ['0', 'D', '1', 'B', '4', '5', '8', 'R', 'C', 'M'] then
    Result := True;
end;

function TFrm_JON03.IsRunMenuReadyComplete: Boolean;
begin
  SetDebugeWrite('JON03.IsRunMenuReadyComplete');
  Result := False;

  if GT_OrderInfo[Self.Tag].Status[1] = '5' then
    Result := True;
end;

function TFrm_JON03.IsRunMenuAdd: Boolean;
begin
  SetDebugeWrite('JON03.IsRunMenuAdd');
  Result := False;

  if GT_OrderInfo[Self.Tag].Slip <> '' then
    Result := (TCK_USER_PER.JON_Order = '1');
end;

function TFrm_JON03.IsRunMenuShared: Boolean;
begin
  SetDebugeWrite('JON03.IsRunMenuShared');
  Result := False;

//	if GT_OrderInfo[Self.Tag].Status[1] in ['0', 'D'] then
	if GT_OrderInfo[Self.Tag].Status[1] in ['0'] then
    Result := True;
end;

function TFrm_JON03.IsRunMenuOfficeOrder: Boolean;
begin
  SetDebugeWrite('JON03.IsRunMenuOfficeOrder');
  Result := False;

//	if GT_OrderInfo[Self.Tag].Status[1] in ['0', 'D', '4', '5', '8', 'R'] then
	if GT_OrderInfo[Self.Tag].Status[1] in ['0', '4', '5', '8', 'R'] then
    Result := True;

  if Result then
		Result := IsUseOfficeBaecha(GT_OrderInfo[Self.Tag].BrNo);
end;

function TFrm_JON03.IsRunMenuSMSOrder: Boolean;
begin
  SetDebugeWrite('JON03.IsRunMenuSMSOrder');
  Result := False;

	if GT_OrderInfo[Self.Tag].Status[1] in ['0', '4', '5', '8', 'R'] then
    Result := True;

  if Result then
    Result := IsUseOfficeBaecha(GT_OrderInfo[Self.Tag].BrNo);
end;

function TFrm_JON03.func_check_CallCenter: boolean;
var sBrNo : string;
	iBrIdx : integer;
	AView: TcxGridDBTableView;
	iRow : Integer;
	siSlip, siKeyNumber, siBrNo, siCallcenter, siCallcenter2 : string;
	sSelInfo : string;
begin
	sChCallMsg := 'Slip : ' + GT_OrderInfo[Self.Tag].Slip + ', KeyNum : ' + GT_OrderInfo[Self.Tag].KeyNumber +
								', BrNo : ' + GT_OrderInfo[Self.Tag].BrNo + ', Call : ' + GT_OrderInfo[Self.Tag].Callcenter +
								', U-CT : ' + GT_USERIF.CT + ', U-Lvl : ' + GT_USERIF.LV;

  SetDebugeWrite('JON03.func_check_CallCenter - ' + sChCallMsg);
	Result := False;
	icheck_CT_Flag := 0;

	tmr_dis.Enabled := False;
	PnlAuto.Visible := False;

	///////////////////////////////선택한 오더와 현재 선택된 오더 비교/////////////////2016.08.17KHS
  try
    AView := GetCurrentView;
    iRow  := AView.DataController.FocusedRecordIndex;
    if Trim(GT_OrderInfo[Self.Tag].Slip) = '_' then Exit;

    if iRow >= 0 then
    begin
      siSlip 			 := AView.DataController.Values[iRow, giSlip];
      siKeyNumber  := AView.DataController.Values[iRow, giKeyNum];
      siCallcenter := AView.DataController.Values[iRow, giCallcenter];
      if AView.DataController.Values[iRow, giCallcenter2] <> null then
        siCallcenter2 := AView.DataController.Values[iRow, giCallcenter2];
      siBrNo       := AView.DataController.Values[iRow, giBrNo];
      sSelInfo := 'Slip : '   + siSlip       + ', KeyNum : ' + siKeyNumber +
                  ', BrNo : ' + siBrNo       + ', Call : '   + siCallcenter + ', Call2 : '   + siCallcenter2 +
                  ', U-CT : ' + GT_USERIF.CT + ', U-Lvl : '  + GT_USERIF.LV;
      if (GT_OrderInfo[Self.Tag].Slip <> siSlip) or
         (GT_OrderInfo[Self.Tag].KeyNumber  <> siKeyNumber)  or
         (GT_OrderInfo[Self.Tag].Callcenter <> siCallcenter) or
         (GT_OrderInfo[Self.Tag].BrNo <> siBrNo) then
      begin
        icheck_CT_Flag := 1;
        GMessagebox('선택하신 오더정보가 변경되었습니다.' + #13#10 + '다시 선택하여 주십시오.', CDMSE);
        Assert(False, 'Frm_JON03.func_check_CallCenter - 선택(GT_OrderInfo):' + sChCallMsg + ' 선택(FocusedRecordIndex):' + sSelInfo);
        Exit;
      end;

		  ///////////////////////////////선택한 오더와 현재 선택된 오더 비교/////////////////2016.08.17KHS
		  ///  타사콜 오더 취소 막음
      try
    		sBrNo := '';
        iBrIdx := -1;
    		sBrNo := GT_OrderInfo[Self.Tag].BrNo;
    		iBrIdx := scb_BranchCode.IndexOf(sBrNo);

    		if (Trim(GT_OrderInfo[Self.Tag].Slip     ) <> '') and
           (Trim(GT_OrderInfo[Self.Tag].KeyNumber) <> '') then
    		begin
    			if ((GT_USERIF.LV = '60') and (iBrIdx >= 0)) or
    				 ((GT_USERIF.LV = '40') and (iBrIdx >= 0)) or
    				 ((GT_USERIF.LV = '10') and ((Trim(GT_OrderInfo[Self.Tag].Callcenter) = GT_USERIF.CT) Or (Trim(GT_OrderInfo[Self.Tag].AccCenter) = GT_USERIF.CT)))
    			then
    				Result := True
    			else
    				Result := False;
        end else
        begin
    			Assert(False, 'Frm_JON03.func_check_CallCenter - ' + sChCallMsg);
    		end;
      except on E: Exception do
        Assert(False, E.Message);
      end;
    end;

  except on E: Exception do
    Assert(False, 'Frm_JON03.func_check_CallCenter - ' + E.Message);
  end;
end;

procedure TFrm_JON03.RbButton2Click(Sender: TObject);
var
  ls_TxLoad: string;
  rv_str: string;
  ls_rxxml: String;
	slReceive: TStringList;
	ErrCode: integer;
begin
  SetDebugeWrite('JON03.RbButton2Click');
  if RadioGroup1.ItemIndex < 0 then
  begin
    GMessagebox('패널티를 선택하세요', CDMSE);
//-    RadioGroup1.SetFocus;
    Exit;
  end;

  try
    ls_TxLoad := GTx_UnitXmlLoad('C005.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0003', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);

    if rcb_sms.Checked then
      ls_TxLoad := StringReplace(ls_TxLoad, 'SMSString', '1', [rfReplaceAll])
    else
      ls_TxLoad := StringReplace(ls_TxLoad, 'SMSString', '0', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ReasonString', '기타 - 배차실수(패널티)', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'PenalTimeString', ed_penalTime.Text, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'PenalChargeString', ed_penalCharge.Text, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '0', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CancelCD', '8', [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
      ls_TxLoad := 'JON01[RbButton2Click]:' + e.Message;
      ShowMessage(ls_TxLoad);
    end;
  end;
end;

procedure TFrm_JON03.RbButton6Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.RbButton6Click');
  grpSetPanelty.Visible := False;
end;

procedure TFrm_JON03.RbButton7Click(Sender: TObject);
var
  ls_TxLoad: string;
  rv_str: string;
  ls_rxxml: String;
  slReceive: TStringList;
  ErrCode: integer;
begin
	SetDebugeWrite('JON03.RbButton7Click');
  try
    ls_TxLoad := GTx_UnitXmlLoad('C005.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0003', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);

    if rcb_sms2.Checked then
      ls_TxLoad := StringReplace(ls_TxLoad, 'SMSString', '1', [rfReplaceAll])
    else
      ls_TxLoad := StringReplace(ls_TxLoad, 'SMSString', '0', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ReasonString', '기타 - 배차실수(취소벌금)', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'PenalTimeString', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'PenalChargeString', ed_cancel_charge.Text, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '0', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CancelCD', '8', [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      ls_TxLoad := 'Jon03[RbButton7Click]Error : ' + e.Message;
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON03.RbButton8Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.RbButton8Click');
  grpSetcancel_charge.Visible := False;
end;

procedure TFrm_JON03.AI1Click(Sender: TObject);
Var AView: TcxGridDBTableView;
    iRow : Integer;
    sBigo, sSlip : String;
begin
  SetDebugeWrite('JON03.N12Click');
  try
    if GetCurrentView.DataController.FocusedRecordIndex < 0 then Exit;
    if IsMenuOpen(Sender) then Exit;

		if ( Not Assigned(Frm_JON08) ) Or ( Frm_JON08 = Nil ) then Frm_JON08 := TFrm_JON08.Create(Nil);

		Frm_JON08.Jon03Tag := Self.Tag;
    sSlip := GT_OrderInfo[Self.Tag].Slip;

    // 기사배차중 AI로 기사요청사항인입시 배차중인접수번호로 녹취가 연결되므로 그 접수번호의 녹취내역 조회
    try
      AView := GetCurrentView;
      iRow := AView.DataController.GetFocusedRecordIndex;
      sBigo := AView.DataController.Values[iRow, giBigo];

      if Pos('[^', sBigo) > 0 then
      begin
        sSlip := Copy(sBigo, Pos('[^', sBigo) + 2, 8);
      end;
    except
    end;

		frm_Main.proc_AiRecHis(sSlip, Self.Tag);
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.btn1Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.btn1Click');
  grpSetExcel.Visible := False;
end;

procedure TFrm_JON03.btn2Click(Sender: TObject);
var
	sHdNo, sBrNo: string;
begin
  SetDebugeWrite('JON03.btn2Click');
  sHdNo := GT_SEL_BRNO.HDNO;
  sBrNo := scb_BranchCode.Strings[cb_brName.ItemIndex];
  Label32.Caption := func_excel_check(sHdNo, sBrNo);
  if Label32.Caption <> '' then
  begin
    grpSetExcel.Left := (Width - grpSetExcel.Width) div 2;
    grpSetExcel.top := (Height - grpSetExcel.Height) div 2;
    grpSetExcel.Visible := True;
    grpSetExcel.BringToFront;
    btn_sms_con.Enabled := True;
    Edit1.Text := '';
    edit1.SetFocus;
  end;
end;

procedure TFrm_JON03.btn3Click(Sender: TObject);
begin
  SetDebugeWrite('JON03.btn3Click');
  grpSetBrch_select.Hide;
end;

procedure TFrm_JON03.btnAppSchClick(Sender: TObject);
begin
  btnAppSch.Tag := 0;
  btnAppSch.Caption := '';

  if ( Sender is TcxButton ) then pSetSkinButton(TcxButton(Sender));
 	pmm_searchClick(pmm_search);
end;

procedure TFrm_JON03.btnBubInWinCloseClick(Sender: TObject);
begin
	pnlBubin.visible := False;
end;

procedure TFrm_JON03.btnCPLogiEnvSaveClick(Sender: TObject);
var
  I: Integer;
begin
  SetDebugeWrite('JON03.btnCPLogiEnvSaveClick');
  try
    FCallPassLogi.ConfSet.sltCallmanerMNum.Clear;
    FCallPassLogi.ConfSet.sltEtcMainNum.Clear;
    FCallPassLogi.ConfSet.sltLogiMainNum.Clear;
    FCallPassLogi.ConfSet.sltRowNum.Clear;

    for I := 1 to grdCallPassLogi.RowCount - 1 do
    begin
      if grdCallPassLogi.Cells[0, I] = '' then
        Continue;
      FCallPassLogi.ConfSet.sltCallmanerMNum.Add(grdCallPassLogi.Cells[0, I]);
      FCallPassLogi.ConfSet.sltEtcMainNum.Add(grdCallPassLogi.Cells[1, I]);
      FCallPassLogi.ConfSet.sltLogiMainNum.Add(grdCallPassLogi.Cells[2, I]);
      FCallPassLogi.ConfSet.sltRowNum.Add(grdCallPassLogi.Cells[3, I]);
    end;

    FCallPassLogi.SetOrderState(cbbCPLogiType.Text);
    FCallPassLogi.SaveIni;

    GMessagebox('저장되었습니다.', CDMSI);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.btnDockingClick(Sender: TObject);
Var i : Integer;
begin
  SetDebugeWrite('JON03.btnDockingClick');
  try
    pnlMap.Visible := False;
    cxSplitter1.Visible := False;

    if Assigned(Frm_Main.Frm_JON52[Self.Tag].mMap) then FreeAndNil(Frm_Main.Frm_JON52[Self.Tag].mMap);
    if Assigned(Frm_Main.Frm_JON52[Self.Tag].mSingleMap) then FreeAndNil(Frm_Main.Frm_JON52[Self.Tag].mSingleMap);
    if Assigned(Frm_Main.Frm_JON52[Self.Tag]) then Frm_Main.Frm_JON52[Self.Tag].Close;

    Frm_Main.btnWide.Hint := '2';
    Frm_Main.btnWide.Click;

    ManualDock(Frm_Main.cxPageControl1, nil, alNone);

    Frm_Main.cxPageControl1.ActivePageIndex := Frm_Main.cxPageControl1.PageCount - 1;
    Frm_Main.cxPageControl1.ActivePage.Name  := 'cxTabMain' + IntToStr(Self.Tag);
    Frm_Main.cxPageControl1.ActivePage.Caption := Self.Caption;
    Frm_Main.cxPageControl1.ActivePage.Hint    := Self.Hint;
    Frm_Main.cxPageControl1.ActivePage.Tag     := Self.Tag;
    Frm_Main.cxPageControl1.ActivePage.PageControl := Frm_Main.cxPageControl1;
    Frm_Main.cxPageControl1.ActivePage.Visible := True;
    Frm_Main.cxPageControl1.ActivePage.SetFocus;

    if btnListMap.Down then
    begin
      pnlMap.Width := Trunc(Self.Width * 0.4);
      pnlMap.Visible := True;
      cxSplitter1.Visible := True;

      if Trim(giMapLastClickSlip) <> '' then
      begin
        Frm_Main.Frm_JON52[Self.Tag].Proc_SelctOrder(giMapLastClickSlip, giMapLastClickCol);
      end;
    end;

    pJON03Dock.bUNDock := False;
    btnDocking.Visible := False;
    btnFloating.Visible := True;

    for i := 0 to JON_MAX_CNT - 1 do
    begin
      if Frm_Main.JON01MNG[i].Use then
      begin
        if Frm_Main.JON01MNG[i].Tag = Self.Tag then
        begin
          Frm_Main.Frm_JON01N[i].pJON01Dock.bUNDock := False
        end;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.btnExcelA4Click(Sender: TObject);
begin
	if GridKakaoListView.DataController.RecordCount = 0 then
	begin
		GMessagebox('자료가 없습니다.', CDMSE);
		Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
		Exit;
	end;

	if (TCK_USER_PER.JON_ExcelDown <> '1') then
	begin
		ShowMessage('[엑셀다운로드[접수현황]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	Frm_Main.sgExcel := '카카오 수주콜리스트.xls';
	Frm_Main.sgRpExcel := Format('접수현황>카카오 수주콜리스트]%s건', [GetMoneyStr(GridKakaoListView.DataController.RecordCount)]);
	Frm_Main.cxGridExcel := GridKakaoList;
	Frm_Main.bgExcelOPT := False;
	Frm_Main.proc_excel(0);
end;

procedure TFrm_JON03.btnFloatingClick(Sender: TObject);
begin
  SetDebugeWrite('JON03.btnFloatingClick');
  try
    pJON03Dock.bUnDock := True;
    btnFloating.Visible := False;
    btnDocking.Visible := True;

    pnlMap.Visible := False;
    cxSplitter1.Visible := False;

    if Assigned(Frm_Main.Frm_JON52[Self.Tag]) then
    begin
      if Assigned(Frm_Main.Frm_JON52[Self.Tag].mMap) then FreeAndNil(Frm_Main.Frm_JON52[Self.Tag].mMap);
      if Assigned(Frm_Main.Frm_JON52[Self.Tag].mSingleMap) then FreeAndNil(Frm_Main.Frm_JON52[Self.Tag].mSingleMap);
      Frm_Main.Frm_JON52[Self.Tag].Close;
    end;

    SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

    ManualFloat(Rect(63, 63, 1280 + 63, 900 + 63 ));
    if btnListMap.Down then
    begin
      pnlMap.Width := Trunc(Self.Width * 0.4);
      pnlMap.Visible := True;
      cxSplitter1.Visible := True;

      if Trim(giMapLastClickSlip) <> '' then
      begin
        Frm_Main.Frm_JON52[Self.Tag].Proc_SelctOrder(giMapLastClickSlip, giMapLastClickCol);
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.btnListMapClick(Sender: TObject);
Var sSlip : String;
begin
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
	if btnListMap.Down then
	begin
    if Frm_Main.cxPageControl2.ActivePageIndex = 4 then
		begin
			if Frm_Main.cxPageControl2.Pages[4].Tag = 1 then
			begin
        Frm_Main.cxPageControl2.Pages[4].Tag := 0;
        Frm_Main.BtnFix.Down := False;
        Frm_Main.BtnFixClick(Frm_Main.BtnFix);
        Frm_Main.tmrBtmMenu.Enabled := False;
        Frm_Main.iTmrBtmMenu := 0;
      end;

      if ((GB_CALLMAP_POPUP) And (Frm_Main.Frm_JON52[JON03_MAX_CNT].Showing)) then Frm_Main.Frm_JON52[JON03_MAX_CNT].Hide;
    end;

    pnlMap.Width := Trunc(Self.Width * 0.4);
		pnlMap.Visible := True;
		cxSplitter1.Visible := True;

    if GetCurrentView.DataController.FocusedRecordIndex >= 0 then
    begin
      sSlip := GetCurrentView.DataController.Values[GetCurrentView.DataController.FocusedRecordIndex, giSlip];

      if giMapLastClickCol = 0 then giMapLastClickCol := 99;
      giMapLastClickSlip := sSlip;

      if Trim(giMapLastClickSlip) <> '' then
      begin
        Frm_Main.Frm_JON52[Self.Tag].Proc_SelctOrder(giMapLastClickSlip, giMapLastClickCol);
      end;
    end;
  end else
  begin
    pnlMap.Visible := False;
    cxSplitter1.Visible := False;
  end;

  Grd2.Invalidate;
end;

procedure TFrm_JON03.btnLocalCancelClick(Sender: TObject);
begin
  grpSetLocalS.Visible := False;
end;

procedure TFrm_JON03.btnLocalSelectClick(Sender: TObject);
Var i : Integer;
begin
	for i := 1 to 20 do
 	begin
 		if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '지역선택' then
    begin
      if ( cb_City.ItemIndex <> 0 ) And ( cb_Ward.ItemIndex <> 0 ) then
    		TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text := cb_City.Text + ' ' + cb_Ward.Text
      else
      if ( cb_City.ItemIndex <> 0 ) And ( cb_Ward.ItemIndex = 0 ) then
    		TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text := cb_City.Text
      else
      if ( cb_City.ItemIndex = 0 ) And ( cb_Ward.ItemIndex = 0 ) then
    		TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text := '';

			edtFastKey1Exit(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))));
      Break;
    end;
 	end;
  grpSetLocalS.Visible := False;
end;

procedure TFrm_JON03.BtnLSizeClick(Sender: TObject);
begin
  pnlMap.Width := Trunc(Self.Width * 0.4);
end;

procedure TFrm_JON03.LoadFastFindControls;
Var i, iSLeft, iTrem, iDis, iWidth, iTrueCnt : Integer;
		AValue : String;
begin
	SetDebugeWrite('JON03.LoadFastFindControls');
  try
  	if (GT_USERIF.ID = 'kd-tmap') or (GT_USERIF.ID = 'kd_iphone') then
  	begin
			edtFastKey1.Enabled := False;
  		edtFastKey2.Enabled := False;
  		edtFastKey3.Enabled := False;
  		edtFastKey4.Enabled := False;
  		edtFastKey5.Enabled := False;
  		edtFastKey6.Enabled := False;
  		edtFastKey7.Enabled := False;
  		edtFastKey8.Enabled := False;
  		edtFastKey9.Enabled := False;
  		edtFastKey10.Enabled := False;
  		edtFastKey11.Enabled := False;
  		edtFastKey12.Enabled := False;
  		edtFastKey13.Enabled := False;
  		edtFastKey14.Enabled := False;
  		edtFastKey15.Enabled := False;
  		edtFastKey16.Enabled := False;
  		edtFastKey17.Enabled := False;
  		edtFastKey18.Enabled := False;
  		edtFastKey19.Enabled := False;
  		edtFastKey20.Enabled := False;
  	end else
  	begin
      for i := 1 to 20 do
      begin
				if i = 1  then AValue := gJONFastFind.Key1  else
        if i = 2  then AValue := gJONFastFind.Key2  else
        if i = 3  then AValue := gJONFastFind.Key3  else
        if i = 4  then AValue := gJONFastFind.Key4  else
        if i = 5  then AValue := gJONFastFind.Key5  else
        if i = 6  then AValue := gJONFastFind.Key6  else
        if i = 7  then AValue := gJONFastFind.Key7  else
        if i = 8  then AValue := gJONFastFind.Key8  else
        if i = 9  then AValue := gJONFastFind.Key9  else
        if i = 10 then AValue := gJONFastFind.Key10 else
        if i = 11 then AValue := gJONFastFind.Key11 else
        if i = 12 then AValue := gJONFastFind.Key12 else
        if i = 13 then AValue := gJONFastFind.Key13 else
        if i = 14 then AValue := gJONFastFind.Key14 else
        if i = 15 then AValue := gJONFastFind.Key15 else
				if i = 16 then AValue := gJONFastFind.Key16 else
        if i = 17 then AValue := gJONFastFind.Key17 else
        if i = 18 then AValue := gJONFastFind.Key18 else
        if i = 19 then AValue := gJONFastFind.Key19 else
        if i = 20 then AValue := gJONFastFind.Key20;

				if Trim(AValue) <> ''  then
        begin
					TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Visible := True;
//					TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text := AValue;
					TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint := AValue;
					TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Show;

					TcxLabel(FindComponent('lbFastKey'+IntToStr(i))).Visible  := True;
					TcxLabel(FindComponent('lbFastKey'+IntToStr(i))).Caption  := AValue;
				end else
				begin
					TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Visible := False;
//					TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text := AValue;
					TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint := AValue;

					TcxLabel(FindComponent('lbFastKey'+IntToStr(i))).Visible  := False;
					TcxLabel(FindComponent('lbFastKey'+IntToStr(i))).Caption  := AValue;
				end;
      end;
  	end;

    for i := 0 to pm_FastSearch14.Items.Count - 1 do
      pm_FastSearch14.Items[i].Checked := False;

		for i := 0 to pm_FastSearch15.Items.Count - 1 do
      pm_FastSearch15.Items[i].Checked := False;

    for i := 0 to pm_FastSearch17.Items.Count - 1 do
      pm_FastSearch17.Items[i].Checked := False;

		for i := 1 to 20 do //한글입력 금지 항목은 ImeMode := imSAlpha 변경
		begin
			if (TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '고객번호') or
				 (TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '대표번호') or
				 (TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '접수번호') or
				 (TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '기사사번') or
				 (TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '요금') then
			begin
				TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).properties.ImeMode := imSAlpha;
			end else
      begin
				TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).properties.ImeMode := imSHanguel;
      end;
		end;
		chk_Mileage.Visible     := GS_JON03Mileage;              // [접수현황] 마일리지 옵션추가
		chk_CMPSupportY.Visible := GS_JON03CMPSupportY;          // [접수현황] 지원금 옵션추가
		chk_CMPSupportN.Visible := GS_JON03CMPSupportN;          // [접수현황] 지원금제외 옵션추가

		iTrueCnt := 0; iSLeft := 30;//기본시작위치
		if GS_JON03Mileage     then 
    begin 
      inc(iTrueCnt); 
      if iTrueCnt = 1 then chk_Mileage.Left     := 30;
      iSLeft := iSLeft + chk_Mileage.Width + 3;     
    end;   // [접수현황] 마일리지 옵션추가
		if GS_JON03CMPSupportY then 
    begin 
      inc(iTrueCnt); 
      if iTrueCnt = 1 then chk_CMPSupportY.Left := 30 else
      if iTrueCnt = 2 then chk_CMPSupportY.Left := chk_Mileage.Left + chk_Mileage.width + 2;

      iSLeft := iSLeft + chk_CMPSupportY.Width + 3; 
    end;   // [접수현황] 지원금 옵션추가
		if GS_JON03CMPSupportN then 
    begin 
      inc(iTrueCnt); 
      if iTrueCnt = 1 then chk_CMPSupportN.Left := 30 else
      if iTrueCnt = 2 then 
      begin
        if GS_JON03Mileage     then chk_CMPSupportN.Left := chk_Mileage.Left + chk_Mileage.width + 2;
        if GS_JON03CMPSupportY then chk_CMPSupportN.Left := chk_CMPSupportY.Left + chk_CMPSupportY.width + 2;
      end else
      if iTrueCnt = 3 then chk_CMPSupportN.Left := chk_CMPSupportY.Left + chk_CMPSupportY.width + 2;

      iSLeft := iSLeft + chk_CMPSupportN.Width + 3; 
    end;   // [접수현황] 지원금제외 옵션추가
{		if GS_JON03BubinN      then 
    begin 
      inc(iTrueCnt); 
      if iTrueCnt = 1 then chk_BubinN.Left := 30 else
      if iTrueCnt = 2 then 
      begin
        if GS_JON03Mileage     then chk_BubinN.Left := chk_Mileage.Left + chk_Mileage.width + 2;
        if GS_JON03CMPSupportY then chk_BubinN.Left := chk_CMPSupportY.Left + chk_CMPSupportY.width + 2;
        if GS_JON03CMPSupportN then chk_BubinN.Left := chk_CMPSupportN.Left + chk_CMPSupportN.width + 2;
      end else
      if iTrueCnt = 3 then 
      begin
        if GS_JON03Mileage     then chk_BubinN.Left := chk_Mileage.Left + chk_Mileage.width + 2;
        if GS_JON03CMPSupportY then chk_BubinN.Left := chk_CMPSupportY.Left + chk_CMPSupportY.width + 2;
        if GS_JON03CMPSupportN then chk_BubinN.Left := chk_CMPSupportN.Left + chk_CMPSupportN.width + 2;
      end else
      if iTrueCnt = 4 then chk_BubinN.Left := chk_CMPSupportN.Left + chk_CMPSupportN.width + 2;

      iSLeft := iSLeft + chk_BubinN.Width + 3;      
    end; }  // [접수현황] 법인제외 옵션추가

		iDis := 883 - iSLeft;
		iTrem := iDis Div 7 ;
		iWidth := iTrem - 3;
		
		for i := 1 to 7 do
    begin
			TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Left := iSLeft; 
			TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Width := iWidth; 
			TcxLabel(FindComponent('lbFastKey'+IntToStr(i))).Top  := TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Top  + 2;
			TcxLabel(FindComponent('lbFastKey'+IntToStr(i))).Left := TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Left + 5;
			iSLeft := TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Left + TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Width + 3; 
    end;

		ReSize_edtFastKey;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.LoadPayMethod_FastSearch15;
begin
  SetDebugeWrite('JON03.LoadPayMethod_FastSearch15');
  try
//    if gsJON01AfterMoneyYN <> 'FALSE' then
//    begin
//      fast15_N2.Visible := True;
//      fast15_N3.Visible := True;
//    end else
//    begin
//      fast15_N2.Visible := False;
//      fast15_N3.Visible := False;
//    end;
//
//    if gsJON01CreditMoneyYN <> 'FALSE' then
//    begin
//      fast15_N4.Visible := True;
//    end else
//    begin
//      fast15_N4.Visible := False;
//    end;
//
//    if IsCardUseBranch(GT_SEL_BRNO.BrNo) then
//    begin
//      fast15_N5.Visible := True;
//    end else
//		begin
//      fast15_N5.Visible := False;
//    end;
//
//		// 접수창에서 결제구분(현장카드) 사용여부 설정. 20210128 KHS
//		if gsJON01SelfCard <> 'FALSE' then
//		begin
//			fast15_N5.Visible := True;
//		end else
//		begin
//			fast15_N5.Visible := False;
//		end;
//
//    // 03.KCP, 06.KICC 카드 결제 지사 사용여부 체크. 2011-10-19.
//    if ( IsCardUseBranch_KCP(GT_SEL_BRNO.BrNo) = '03' ) Or
//       ( IsCardUseBranch_KCP(GT_SEL_BRNO.BrNo) = '06' ) then
//    begin
//      fast15_N6.Visible := True;
//    end else
//    begin
//      fast15_N6.Visible := False;
//    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.fast22_N1Click(Sender: TObject);
Var i, iCG : Integer;
begin
	SetDebugeWrite('JON03.fast14_N1Click');

	for i := 1 to 20 do
	begin
		if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '경과시간(분단위)' then
		begin
			iCG := i;
			Break;
		end;
	end;

	if TMenuItem(sender).Tag = 99 then
		TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := ''
	else
		TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := IntToStr(TMenuItem(sender).Tag);
	if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).CanFocus then TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).SetFocus;
end;

procedure TFrm_JON03.fast24_N1Click(Sender: TObject);
Var i, iCG : Integer;
begin
  SetDebugeWrite('JON03.fast24_N1Click');

	for i := 1 to 20 do
	begin
		if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '콜마너2' then
    begin
      iCG := i;
      Break;
    end;
	end;

  case TMenuItem(sender).Tag of
  0: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := '사용';
  1: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := '미사용';
  99 : TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := '';
  end;

	if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).CanFocus then TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).SetFocus;
end;

procedure TFrm_JON03.fast25_N1Click(Sender: TObject);
Var i, iCG : Integer;
begin
	SetDebugeWrite('JON03.fast25_N1Click');

	for i := 1 to 20 do
	begin
		if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '탁송연합콜' then
		begin
			iCG := i;
			Break;
		end;
	end;

	case TMenuItem(sender).Tag of
	99: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := '';
	 1: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := '탁송연합';
	end;
	if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).CanFocus then TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).SetFocus;
end;
								
procedure TFrm_JON03.fast29_N1Click(Sender: TObject);
Var i, iCG : Integer;
begin
	SetDebugeWrite('JON03.fast14_N1Click');

	for i := 1 to 20 do
	begin
		if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '카드승인' then
		begin
			iCG := i;
			Break;
		end;
	end;

	if TMenuItem(sender).Checked then
	begin
		case TMenuItem(sender).Tag of
		0: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '승인', '', [rfReplaceAll]);
		1: TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text, '미승인', '', [rfReplaceAll]);
		end;

//		TMenuItem(sender).Checked := False;
		if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).CanFocus then TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).SetFocus;
	end else
	begin
		TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).Text := TMenuItem(sender).Caption;
//		TMenuItem(sender).Checked := True;
		if TMenuItem(sender).Tag = 0 then fast29_N2.Checked := False else
		if TMenuItem(sender).Tag = 1 then fast29_N1.Checked := False;
		if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).CanFocus then TcxTextEdit(FindComponent('edtFastKey'+IntToStr(iCG))).SetFocus;
	end;
end;

procedure TFrm_JON03.ClearOrderInfo;
begin
  SetDebugeWrite('JON03.ClearOrderInfo');
  try
    GT_OrderInfo[Self.Tag].ACol       := -1;
    GT_OrderInfo[Self.Tag].ARow       := -1;
    GT_OrderInfo[Self.Tag].Value      := '';
    GT_OrderInfo[Self.Tag].Slip       := '';
    GT_OrderInfo[Self.Tag].Status     := '';
    GT_OrderInfo[Self.Tag].BrNo       := '';
    GT_OrderInfo[Self.Tag].Callcenter := '';
    GT_OrderInfo[Self.Tag].AccCenter  := '';
    GT_OrderInfo[Self.Tag].KeyNumber  := '';
    GT_OrderInfo[Self.Tag].CustTel    := '';
    GT_OrderInfo[Self.Tag].CustTel1   := '';
    GT_OrderInfo[Self.Tag].CustTel2   := '';
    GT_OrderInfo[Self.Tag].CustTel22  := '';
    GT_OrderInfo[Self.Tag].CustName   := '';
    GT_OrderInfo[Self.Tag].WkSabun    := '';
    GT_OrderInfo[Self.Tag].WkName     := '';
    GT_OrderInfo[Self.Tag].WkBrNo     := '';
    GT_OrderInfo[Self.Tag].AccTime    := '';
    GT_OrderInfo[Self.Tag].WkHdNo     := '';
    GT_OrderInfo[Self.Tag].Charge     := -1;
    GT_OrderInfo[Self.Tag].CashType   := '';
		GT_OrderInfo[Self.Tag].Deposit    := -1;
		GT_OrderInfo[Self.Tag].HdNo       := '';
  except
  end;
end;

procedure TFrm_JON03.proc_ADDList(AGubun, ASlip, AKeyNumber, ABrNm, ACuNm, AStart, AAcc2: string);
var iRow : integer;
begin
	if AGubun = 'CallBell' then 
	begin
		iRow := CallBellView.DataController.FindRecordIndexByText(0, 0, ASlip, False, True, True);
		if iRow < 0 then 
		begin
			CallBellView.BeginUpdate;
			iRow := CallBellView.DataController.AppendRecord;
			CallBellView.DataController.Values[iRow, 0] := ASlip;   //접수번호
			CallBellView.DataController.Values[iRow, 1] := StrToCall(AKeyNumber);  //대표번호
			CallBellView.DataController.Values[iRow, 2] := ABrNm;  //발주지사
			CallBellView.DataController.Values[iRow, 3] := ACuNm;   //고객명
			CallBellView.DataController.Values[iRow, 4] := AStart;   //출발지
			CallBellView.DataController.Values[iRow, 5] := AAcc2;   //접수시간2
			CallBellView.EndUpdate;
		end;
		if CallBellView.DataController.RecordCount > 0 then
    begin
			grpSetCallBellList.Visible := True;
      grpSetCallBellList.BringToFront;
    end;
	end else
	begin
		iRow := cxGridAIView.DataController.FindRecordIndexByText(0, 0, ASlip, False, True, True);
		if iRow < 0 then 
		begin
			cxGridAIView.BeginUpdate;
			iRow := cxGridAIView.DataController.AppendRecord;
			cxGridAIView.DataController.Values[iRow, 0] := ASlip;   //접수번호
			cxGridAIView.DataController.Values[iRow, 1] := StrToCall(AKeyNumber);  //대표번호
			cxGridAIView.DataController.Values[iRow, 2] := ABrNm;  //발주지사
			cxGridAIView.DataController.Values[iRow, 3] := ACuNm;   //고객명
			cxGridAIView.DataController.Values[iRow, 4] := AStart;   //출발지
			cxGridAIView.DataController.Values[iRow, 5] := AAcc2;   //접수시간2
			cxGridAIView.EndUpdate;
		end;
		if (cxGridAIView.DataController.RecordCount > 0) and (GS_COUNSEL_AIQuestion) then pnl_AIList.Visible := True;
	end;
end;

procedure TFrm_JON03.proc_Change_Title(AView: TcxGridDBTableView);
var
	i, iShow, iHide, iViewFalse: Integer;
  ln_envfile: TIniFile;
begin
	SetDebugeWrite('JON03.proc_Change_Title');
  try
    ln_envfile := TIniFile.Create(ENVPATHFILE);
    try
      ln_envfile.EraseSection('Accept_Title');
      ln_envFile.EraseSection('Accept_Not_Title');
      ln_envFile.EraseSection('Accept_Title_Size');
      //그리드 타이틀, 사이즈 저장

			iShow := 0; iHide := 0; iViewFalse := 0;
      for i := 0 to AView.ColumnCount - 1 do
      begin
        if not AView.Columns[i].Visible then Continue;

        if AView.Columns[i].Width > 0 then
        begin
					ln_envfile.WriteString('Accept_Title', IntToStr(iShow), AView.Columns[i].Caption);
          ln_envfile.WriteString('Accept_Title_Size', IntToStr(iShow), IntToStr(AView.Columns[i].Width));
					Inc(iShow);
        end else
        begin
          ln_envfile.WriteString('Accept_Not_Title', IntToStr(iHide), AView.Columns[i].Caption);
          Inc(iHide);
        end;
      end;
		finally
      FreeAndNil(ln_envfile);
    end;

    pGetColumnIndex(AView);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Tfrm_JON03.func_excel_check(sHd_No : string; sBr_No: string): string;
var
  ls_TxLoad, rv_str, sExcel, sSvrDT : string;
  ls_rxxml: String;
  slReceive: TStringList;
  ErrCode: integer;
  AView: TcxGridDBTableView;
	dtSDTime, stTime : TDateTime;
	bas_date: string;
  bas_date_tmp: string;
  now_date_tmp: string;
	iGubun : integer;
begin
  SetDebugeWrite('JON03.func_excel_check');
  // 2011.01.13 45이전건 엑셀막음
  //-  bas_date:=FormatDateTime('YYYYMMDD',incmonth(Now(),-1)-15+1);

  sSvrDT := Frm_Main.func_sysdate;
  dtSDTime := StrToDateTime(GetStrToLongDateTimeStr(sSvrDT));

  // 2014.04.08 3달이전건 엑셀 막음
//  bas_date:=FormatDateTime('YYYYMMDD',incmonth(dtSDTime,-3)+1);
	// 2020.04.17 4달이전건 엑셀 막음 정승훈팀장님 요청 KHS
//	bas_date:=FormatDateTime('YYYYMMDD',incmonth(dtSDTime,-4)+1);
//2020.04.27 5월 15일 기준으로 3개월로 변경
	stTime := StrToDateTime('2020-05-15 00:00:00');
	if dtSDTime > stTime then  iGubun := 3 else iGubun := 4;
	bas_date:=FormatDateTime('YYYYMMDD',incmonth(dtSDTime, -iGubun)+1);
		
//	bas_date_tmp:=FormatDateTime('YYYY년MM월DD일',incmonth(dtSDTime,-3)+1);
	bas_date_tmp:=FormatDateTime('YYYY년MM월DD일',incmonth(dtSDTime,-iGubun)+1);
	now_date_tmp:=FormatDateTime('YYYY년MM월DD일',incmonth(dtSDTime,0));

  if inp_date < bas_date then
  begin
    result:='';
		GMessagebox('현재일자로부터 '+intTostr(iGubun) + '개월이 지난 데이타는 엑셀다운로드가 불가합니다.' + #13#10 + '조회일자가 '+bas_date_tmp +' 부터 '+now_date_tmp+' 이외의 자료는 업무게시판에 요청하시기 바랍니다.'  ,CDMSE);
    Exit;
  end;

	AView := GetCurrentView;
  try
    if ( GT_USERIF.LV = '60' ) Or ( GT_USERIF.LV = '40' ) then     // 본사관리자
    begin
      if sHd_No = '' then sHd_No := GT_SEL_BRNO.HDNO;
      if sBr_No = '' then sBr_No := pJON03Dock.BrNo;
    end else
    if ( GT_USERIF.LV = '10' ) then     // 상담원
    begin
      if sHd_No = '' then sHd_No := GT_USERIF.HD;
      if sBr_No = '' then sBr_No := GT_USERIF.BR;
    end;

    sExcel := '';
    if pm_Excel.Tag = 1 then sExcel := '접수현황>상세' else
    if pm_Excel.Tag = 2 then sExcel := '접수현황>기본';

//-    if FormatDateTime('yyyymmdd', dedt_Sdate.Date) <> Copy(StartDateTime('yyyymmddhhmmss'), 1, 8) then
    begin
      if ( GT_USERIF.LV = '60' ) then     // 본사관리자
    	begin
        if Not fGetCheck_BlowFish_HdBrNo( GT_SEL_BRNO.HDNO, pJON03Dock.BrNo ) then
        begin
          GMessagebox('다운 권한이 없는 본사.지사 입니다.', CDMSE);
          Assert(False, '[N지사코드변조]' + sExcel + ' : fGetCheck_BlowFish_HdBrNo : ' + GT_SEL_BRNO.HDNO + GT_SEL_BRNO.BrNo + ' - ' + GS_BlowFish_HdBrNo);
          Exit;
        end;
    	end else
      if ( GT_USERIF.LV = '40' ) then     // 지사관리자
    	begin
        if Not fGetCheck_BlowFish_HdBrNo( GT_SEL_BRNO.HDNO, pJON03Dock.BrNo ) then
        begin
          GMessagebox('다운 권한이 없는 본사.지사 입니다.', CDMSE);
          Assert(False, '[N지사코드변조]' + sExcel + ' : fGetCheck_BlowFish_HdBrNo : ' + GT_USERIF.HD + GT_SEL_BRNO.BrNo + ' - ' + GS_BlowFish_HdBrNo);
          Exit;
        end;
      end else
      if ( GT_USERIF.LV = '10' ) then     // 상담원
      begin
        if Not fGetCheck_BlowFish_HdBrNo( GT_USERIF.HD, GT_USERIF.BR ) then
        begin
          GMessagebox('다운 권한이 없는 본사.지사 입니다.', CDMSE);
          Assert(False, '[N지사코드변조]' + sExcel + ' : fGetCheck_BlowFish_HdBrNo : ' + GT_USERIF.HD + GT_USERIF.BR + ' - ' + GS_BlowFish_HdBrNo);
          Exit;
        end;
      end;
    end;

    sExcel := sExcel + ']' + GetMoneyStr(AView.DataController.RecordCount) + '건/' + FExcelDownLog;
    // & --> &amp 치환(XML 파싱오류) 2011.05.18
    sExcel := StringReplace(sExcel, '&', '&amp;', [rfReplaceAll]);

    ls_TxLoad := GTx_UnitXmlLoad('C017.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString', sHd_No, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString', sBr_No, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'MacAddressString', GT_USERIF.MC, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ExcelString', sExcel, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'HDDSNString', RemoveAll(GT_USERIF.HS, '-'), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'LocalIPString', GT_USERIF.IP, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CompNameString', SysInfoRec.ComputerName, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'LoginDateString', GT_USERIF.LoginTime, [rfReplaceAll]);

    if TCK_USER_PER.COM_ExcelNoSMS = '1' then
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'AuthYNString', 'N', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'AUTH0002', [rfReplaceAll]);
    end else
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'AuthYNString', 'Y', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'AUTH0001', [rfReplaceAll]);
    end;

    Result := '';
    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          Result := func_License(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin
      Assert(False, E.Message);
      ls_TxLoad := 'Jon03[func_excel_check]:' + e.Message;
      GMessagebox(PChar(ls_TxLoad), CDMSE);
    end;
  end;
  Screen.Cursor := crDefault;
end;

function Tfrm_JON03.func_License(ss_rxxml: string): string;
var
  xdom: msDomDocument;
  ls_Msg_Err, ls_ClientKey, ls_rxxml: string;
  lst_Result: IXMLDomNodeList;
begin
  SetDebugeWrite('JON03.func_License');
  xdom := ComsDomDocument.Create;
  try
    Result := '';
    if not xdom.loadXML(ss_rxxml) then Exit;

    try
      ls_rxxml := ss_rxxml;
      ls_ClientKey := GetXmlClientKey(ls_rxxml);
      if ls_ClientKey = 'AUTH0001' then
      begin
        ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
        if ls_Msg_Err = '0000' then
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Auth');
          GMessagebox('엑셀 인증번호를 발송하였습니다.', CDMSI);
          Result := lst_Result.item[0].attributes.getNamedItem('Code').Text;
        end else
        begin
          if Copy(ls_Msg_Err, 1, 4) = '9999' then
            Assert(False, '[N지사코드변조]' + ' 서버 체크 AUTH0001 : ' + ls_Msg_Err);

          GMessagebox(ls_Msg_Err, CDMSE);
          Result := '';
          Exit;
        end;
      end else
      if ls_ClientKey = 'AUTH0002' then
      begin
        ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
        if ls_Msg_Err = '0000' then
          Result := '0000'
        else
        begin
          if Copy(ls_Msg_Err, 1, 4) = '9999' then
            Assert(False, '[N지사코드변조]' + ' 서버 체크 AUTH0002 : ' + ls_Msg_Err);

          GMessagebox(ls_Msg_Err, CDMSE);
          Result := '';
          Exit;
        end;
      end else
      begin  // 2011.05.18 Add. CDS.
        ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
        GMessagebox(ls_Msg_Err, CDMSE);
        Result := '';
        Exit;
      end;
    except on E: Exception do
      Assert(False, E.Message);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure Tfrm_JON03.proc_recieve(ls_rxxml: string);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_MSG_Err, ls_ClientKey: string;
  ls_TxLoad: string;
  ls_Rcrd: TStringList;
  li_penvalue: Integer;
  sNum, sTmp : string;
  rv_str: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
	SetDebugeWrite('JON03.proc_recieve');
  xdom := ComsDomDocument.Create;
  try
    try
      if not xdom.loadXML(ls_rxxml) then Exit;
			ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        ls_ClientKey := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);
				if ls_ClientKey = 'TASABAECHA' then
				begin
					if Not GB_J03_NOSHOW_MSG then
						GMessagebox('타사배차 성공하였습니다.', CDMSI);
					proc_Acc_Search(1, GT_OrderInfo[Self.Tag].Slip, 'JON03-3');
				end else
				if ls_ClientKey = 'REBAECHA' then
        begin
					if Not GB_J03_NOSHOW_MSG then
						GMessagebox('재배차 성공하였습니다.', CDMSI);
					proc_Acc_Search(1, GT_OrderInfo[Self.Tag].Slip, 'JON03-4');
        end else
        if ls_ClientKey = 'SHAR0000' then
        begin
					if Not GB_J03_NOSHOW_MSG then
						GMessagebox('즉시 공유 되었습니다.', CDMSI);
          pGridSetFocus;
        end else
				if COPY(ls_clientKey, 1, 4) = 'CANC' then
        begin
					case StrToIntDef(Copy(ls_clientKey, 5, 4), 0) of
						1:
							begin
								ls_MSG_Err := GetXmlErrorMsg(ls_rxxml);
								if Frm_JON15.RbCheckBox1.Checked then
								begin
									if Frm_JON15.ARadioBtn.Tag in [8, 3, 5, 7, 9] then
									begin
										if Not GB_J03_NOSHOW_MSG then
											GMessagebox(ls_MSG_Err, CDMSI);
									end
									else
										proc_cust_smssend(GT_OrderInfo[Self.Tag].Slip);
									Frm_JON15.RbCheckBox1.Checked := False;
								end else
								begin
									//기사부족 체크이고 고객SMS전송이 아닐때..(기사부족 선택모드인지 자동모드인지 확인)
									if Frm_JON15.ARadioBtn.Tag = 6 then
									begin
										//기사부족시 메시지 전송이 체크되어있을때
										if (Frm_JON15.RbCheckBox4.Checked or Frm_JON15.RbCheckBox5.Checked) then
											proc_wk_lack_sms(GT_OrderInfo[Self.Tag].Slip)
										else
										begin
											if Not GB_J03_NOSHOW_MSG then
												GMessagebox(ls_MSG_Err, CDMSI);
										end;
									end else
									begin
										if Not GB_J03_NOSHOW_MSG then
											GMessagebox(ls_MSG_Err, CDMSI);
									end;
								end;
								// 오더취소_고객전화걸기 시
								if Frm_JON15.Tag = 10 then
								begin
									Frm_JON15.Hide;
									if Assigned(Frm_JON16) then Frm_JON16.Close;
									if Assigned(Frm_JON017) then Frm_JON017.Close;
									NOCX_CUST.Click;
								end else
								begin
									Frm_JON15.Hide;
									if Assigned(Frm_JON16) then Frm_JON16.Close;
									if Assigned(Frm_JON017) then Frm_JON017.Close;
								end;

                pGridSetFocus;
							end;

						3:begin
  							if pm_Counsel.Tag = 0 then //0이 아니면 다중명령(90-배차취소패널티+대기)
								begin
									if Not GB_J03_NOSHOW_MSG then
										GMessagebox('배차취소 되었습니다.', CDMSI);
								end;
								bProcOK := True;
								grpSetPanelty.Visible := False;
								grpSetcancel_charge.Visible := False;

                pGridSetFocus;
							end;
						6:begin
								if Not GB_J03_NOSHOW_MSG then
									GMessagebox('완료 되었습니다.', CDMSI);

                pGridSetFocus;
							end;
						7:begin
                pm_share.Click;   // 전화후 즉시공유 처리     2021.04.06
//								if Not GB_J03_NOSHOW_MSG then
//									GMessagebox('전환 되었습니다.', CDMSI);
//
//                pGridSetFocus;
							end;
						8:begin
								if Not GB_J03_NOSHOW_MSG then
									GMessagebox('재접수 되었습니다.', CDMSI);

                pGridSetFocus;
							end;
						13:
						  begin
								if Not GB_J03_NOSHOW_MSG then
								 GMessagebox('취소후 재접수 되었습니다.', CDMSI);
								Frm_JON15.Hide;
								if Assigned(Frm_JON16) then Frm_JON16.Close;
								if Assigned(Frm_JON017) then Frm_JON017.Close;

                pGridSetFocus;
							end;
						14:
							begin
							  if Not GB_J03_NOSHOW_MSG then
								  GMessagebox('즉시배차 되었습니다.', CDMSI);
								Edit4.Text := '';

                pGridSetFocus;
							end;
						9:
              begin
								if Not GB_J03_NOSHOW_MSG then
								  GMessagebox('예약해제 되었습니다(접수되었습니다).', CDMSI);

                pGridSetFocus;
							end;
						20:
              begin
								if Not GB_J03_NOSHOW_MSG then
								  GMessagebox('문의로 변경하였습니다.', CDMSI);
								bProcOK := True;

                pGridSetFocus;
							end;
					end;
			 {   if GT_OrderInfo[Self.Tag].Slip = A01_HIS_POPUP.Slip then
          begin
            Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx].btnCmdExit.Description := 'T';
            Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx].btnCmdExitClick(self);
					end;  }
          proc_Acc_Search(1, GT_OrderInfo[Self.Tag].Slip, 'JON03-5' + Copy(ls_clientKey, 5, 4));
				end else
				if (ls_ClientKey = 'PNLT0001') then        //vosjf
				begin
					if (0 < GetXmlRecordCount(ls_rxxml)) then
          begin
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            try
              GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
							try
								// 2006.08.02 페널티적용
                if GSL_Penalty = nil then
									GSL_Penalty := TStringList.Create;
                GSL_Penalty.Clear;
                GSL_Penalty.Add(IntToStr(StrToIntDef(ls_Rcrd[0], 0)));
								GSL_Penalty.Add(IntToStr(StrToIntDef(ls_Rcrd[1], 0)));
								bProcOK := True;
							except
								bProcOK := False;
              end;
            finally
              ls_Rcrd.Free;
						end;
          end else
          begin
						if GSL_Penalty = nil then
              GSL_Penalty := TStringList.Create;
						GSL_Penalty.Clear;
            GSL_Penalty.Add('0');
            GSL_Penalty.Add('0');
						GSL_Penalty.Add('0');
					end;

					if not bProcOK then
					begin
						GMessagebox('페널티금액 조회오류입니다. 다시 진행해주세요', CDMSE);
						exit;
					end else bProcOK := False;

					ed_penalTime.Text := GSL_Penalty.Strings[0];
          li_penvalue := StrToIntDef(GSL_Penalty.Strings[1], 0);

          ed_penalCharge.Text := IntToStr(li_penvalue);

          if (StrToIntDef(GSL_Penalty.Strings[0], 0) > 0) and (li_penvalue > 0) then
          begin
            grpSetPanelty.Left := (Width - grpSetPanelty.Width) div 2;
            grpSetPanelty.top := (Height - grpSetPanelty.Height) div 2;
						grpSetPanelty.Visible := True;
            grpSetPanelty.BringToFront;
            RadioGroup1.Properties.Items.Clear;
						RadioGroup1.Properties.Items.Add.Caption := '시간 : ' + ed_penalTime.Text + '초';
						RadioGroup1.Properties.Items.Add.Caption := '요금 : ' + ed_penalCharge.Text + '원';
					end else
          begin
						if (StrToIntDef(GSL_Penalty.Strings[0], 0) > 0) and (li_penvalue = 0) then
							sTmp := '배차실수로 ' + ed_penalTime.Text + '초가 정지되었습니다.'
						else if (StrToIntDef(GSL_Penalty.Strings[0], 0) = 0) and (li_penvalue > 0) then
							sTmp := '배차실수로 ' + ed_penalCharge.Text + '원이 차감되었습니다.';
						if pm_Counsel.Tag <> 90 then    //다중실행이 아니면
						begin
							if sTmp <> '' then GMessagebox(sTmp, CDMSE);
						end else   //다중실행이 이면
						begin
							pm_Panelty_reservation.Hint := sTmp;
						end;

						ls_TxLoad := GTx_UnitXmlLoad('C005.XML');
            ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'CANC0003', [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
  					ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'SMSString', '1', [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'ReasonString', '기타 - 배차취소(패널티)', [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'PenalTimeString', ed_penalTime.Text, [rfReplaceAll]);
  					ls_TxLoad := StringReplace(ls_TxLoad, 'PenalChargeString', ed_penalCharge.Text, [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '0', [rfReplaceAll]);
  					ls_TxLoad := StringReplace(ls_TxLoad, 'SMSCustString', '', [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'CancelCD', '8', [rfReplaceAll]);

            slReceive := TStringList.Create;
            try
              if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
              begin
                rv_str := slReceive[0];
                if rv_str <> '' then
                begin
                  ls_rxxml := rv_str;
                  Application.ProcessMessages;
                  proc_recieve(ls_rxxml);
                end;
              end;
            finally
              FreeAndNil(slReceive);
            end;
          end;
        end else
        if ls_ClientKey = 'WKLACKMSG' then
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          if lst_Result.length > 0 then
          begin
            if Trim(lst_Result.item[0].attributes.getNamedItem('Value').Text)<> '' then
            begin
              ls_Rcrd := TStringList.Create;
              try
                GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
                //GMessagebox(ls_Rcrd[0]+#13#10+ls_Rcrd[1]+#13#10+ls_Rcrd[2]+#13#10+ls_Rcrd[3],CDMSE);
                try
                  Frm_JON15.Edit5.Text := ls_Rcrd[0];
                  //기사부족 고가요금 유도 메시지
                  Frm_JON15.Edit7.Text := ls_Rcrd[1]; //기사부족 고객취소 메시지
                  Frm_JON15.Edit6.Text := ls_Rcrd[2];
                  //기사부족 고가요금 유도 회신번호
                  Frm_JON15.Edit8.Text := ls_Rcrd[3]; //기사부족 고객취소 회신번호

                  if ( Assigned(Frm_JON16) ) And ( Frm_JON16 <> Nil ) then
                  begin
                    frm_JON16.Memo1.Text := ls_Rcrd[0];
                    frm_JON16.Memo2.Text := ls_Rcrd[1];
                    frm_JON16.Edit9.Text := ls_Rcrd[2];
                    frm_JON16.Edit10.Text := ls_Rcrd[3];
                  end;
                except
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
        end else
        if ls_ClientKey = 'WK_LACK' then
        begin
          if (0 < GetXmlRecordCount(ls_rxxml)) then
          begin
            Frm_JON15.Edit5.Text := frm_JON16.Memo1.Text;
            Frm_JON15.Edit6.Text := frm_JON16.Edit9.Text;
            Frm_JON15.Edit7.Text := frm_JON16.Memo2.Text;
            Frm_JON15.Edit8.Text := frm_JON16.Edit10.Text;
            GMessagebox('메시지가 설정되었습니다.', CDMSI);
          end;
        end else
        if ls_ClientKey = 'WSMS0001' then
        begin
					if Not GB_J03_NOSHOW_MSG then
						GMessagebox('취소되었습니다.', CDMSI);

          pGridSetFocus;
        end else
        if Copy(ls_ClientKey, 1, 4) = 'RESV' then
        begin
					if Not GB_J03_NOSHOW_MSG then
					begin
            if giReAccNo = 0 then // 정상적인 대기, 대기해제일경우
            begin
              if StrToIntDef(Copy(ls_ClientKey, 5, 4), 0) = 5 then
              begin
                if pm_Counsel.Tag = 90 then	sTmp := pm_Panelty_reservation.Hint + CRLF + '대기로 변경되었습니다.'
                                       else sTmp := '대기로 변경되었습니다.';
              end else
              if StrToIntDef(Copy(ls_ClientKey, 5, 4), 0) = 6 then
                sTmp := '대기해제 되었습니다.';
            end else
						if giReAccNo = 2 then // 재접수(배차지연)에 따른 대기+대기해제일경우
            begin
              sTmp := '재집수되었습니다.';
            end;
						if sTmp <> '' then GMessagebox(sTmp, CDMSI);
					end;

          if giReAccNo In [0, 2] then
          begin
					{  if (GT_OrderInfo[Self.Tag].Slip <> '') and (GT_OrderInfo[Self.Tag].Slip = A01_HIS_POPUP.Slip) then
            begin
							Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx].btnCmdExit.Description := 'T';
              Frm_Main.Frm_JON01N[A01_HIS_POPUP.Idx].btnCmdExitClick(self);
						end; }

            pGridSetFocus;

            proc_Acc_Search(1, GT_OrderInfo[Self.Tag].Slip, 'JON03-6');
          end;
        end else
        if ls_ClientKey = 'SMSP0001' then
        begin
          if Not Assigned(Frm_SMS01) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
          Frm_SMS01.pSMS01Dock.bUnDock := pJON03Dock.bUnDock;
          Frm_SMS01.pSMS01Dock.HdNo    := pJON03Dock.HdNo;
          Frm_SMS01.pSMS01Dock.BrNo    := pJON03Dock.BrNo;
          Frm_SMS01.pSMS01Dock.BrName  := pJON03Dock.BrName;
          Frm_SMS01.pSMS01Dock.Gubun   := pJON03Dock.Gubun;
          Frm_SMS01.pSMS01Dock.Idx     := pJON03Dock.Idx;
          Frm_SMS01.ed_receiver.Enabled := True;  

          if (0 < GetXmlRecordCount(ls_rxxml)) then
          begin
            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
  					//독촉문자
            ls_Rcrd := TStringList.Create;
            try
              GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
              try
                Frm_SMS01.mm_message.Text := ls_Rcrd[2];
                if ls_Rcrd[0] = '0' then    // '0' 접수대표번호
                  Frm_SMS01.ed_send.Text := StringReplace(GT_OrderInfo[Self.Tag].KeyNumber, '-', '', [rfReplaceAll])
                else
                if ls_Rcrd[0] = '3' then    // '3' 고객번호
                  Frm_SMS01.ed_send.Text := gsCustTel
                else
                  Frm_SMS01.ed_send.Text := ls_Rcrd[0];   // '' 사용자 직접 입력

                sNum := ls_Rcrd[1];    // 기사번호
                if (GS_PRJ_AREA = 'S') And (sNum = '') And ( GS_SMS_WKHP <> '' ) then
                begin
                  sNum := GS_SMS_WKHP;
                  GS_SMS_WKHP := '';
                end;
              except
              end;
            finally
              ls_Rcrd.Free;
            end;

            if gbWkGubun then
            begin
              Frm_SMS01.ed_receiverD.Text := sNum;
              Frm_SMS01.ed_receiver.Visible := False;
              Frm_SMS01.ed_receiverD.Visible := True;
            end else
            begin
              Frm_SMS01.ls_sms.Items.Clear;
              Frm_SMS01.ls_sms.Items.Add(sNum);
              Frm_SMS01.ed_receiver.Visible := True;
              Frm_SMS01.ed_receiverD.Visible := False;
            end;
            Frm_SMS01.sMemo := '[기사문자전송]';
            Frm_SMS01.sConfSlip := GT_OrderInfo[Self.Tag].Slip;
            Frm_SMS01.sWkSabun := GT_OrderInfo[Self.Tag].WkSabun;
            Frm_SMS01.Proc_Init;
						Frm_SMS01.sSendKind := '';
						Frm_SMS01.rdo_SMS.visible := False;
						Frm_SMS01.rdo_PUSH.visible := False;
						Frm_SMS01.PageControl1.ActivePageIndex := 2;
						Frm_SMS01.Show;
					end else
          begin
            // 독촉문자 설정이 안되어 있어도 독촉문자 화면을 표시한다.  2012-06-19 LYB
						Frm_SMS01.ed_send.Text := gsCustTel;
						Frm_SMS01.mm_message.Text := '';
						sNum := gsWkHp;
            if gbWkGubun then
            begin
              Frm_SMS01.ed_receiverD.Text := sNum;
              Frm_SMS01.ed_receiver.Visible := False;
              Frm_SMS01.ed_receiverD.Visible := True;
            end else
            begin
              Frm_SMS01.ls_sms.Items.Clear;
              Frm_SMS01.ls_sms.Items.Add(sNum);
              Frm_SMS01.ed_receiver.Visible := True;
              Frm_SMS01.ed_receiverD.Visible := False;
            end;
            Frm_SMS01.sMemo := '[기사문자전송]';
            Frm_SMS01.sConfSlip := GT_OrderInfo[Self.Tag].Slip;
            Frm_SMS01.sWkSabun := GT_OrderInfo[Self.Tag].WkSabun;
            Frm_SMS01.Proc_Init;
						Frm_SMS01.sSendKind := '';
						Frm_SMS01.rdo_SMS.visible := False;
						Frm_SMS01.rdo_PUSH.visible := False;
						Frm_SMS01.PageControl1.ActivePageIndex := 2;
						Frm_SMS01.Show;
          end;
        end;
      end else
      begin
        if giReAccNo = 1 then giReAccNo := 0; // 중간에 오류 체크위해
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    except on E: Exception do
      Assert(False, E.Message);
    end;
  finally
   xdom := Nil;
  end;
end;

procedure TFrm_JON03.proc_reservation(iTag: integer);
var
	ls_TxLoad : string;
	sOrderInfo : TORDERINFO;
	rv_str: string;
	ls_rxxml: String;
	slReceive: TStringList;
	ErrCode: integer;
begin
	SetDebugeWrite('JON03.proc_reservation');

	sOrderInfo :=  GT_OrderInfo[Self.Tag];
	{ TODO : 어떤 이유인지 모르지만 접수번호가 중간에 초기화되는 현상 발생 }
	if Trim(GT_OrderInfo[Self.Tag].Slip) = '' then
			GT_OrderInfo[Self.Tag] := sOrderInfo;

	if IsOtherBranchCall(pm_Reservation) then Exit;

	if ( (Pos('후불', GT_OrderInfo[Self.Tag].CashType) > 0) Or
       (Pos('즉후', GT_OrderInfo[Self.Tag].CashType) > 0) Or
       (Pos('법후', GT_OrderInfo[Self.Tag].CashType) > 0) ) And
     (iTag = 6) then // 후불오더 캐쉬부족 체크..
	begin
		gTmp := ''; gTmp_HD := ''; gTmp_BR := ''; gTmp_Slip := '';
		gTmp_BR := GT_OrderInfo[Self.Tag].BrNo;
		gTmp_HD := GT_OrderInfo[Self.Tag].HdNo;
		gTmp_Slip := GT_OrderInfo[Self.Tag].Slip;
		
		if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A1747') and (gTmp_BR = 'S954') then
		begin
			if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, 0, gBrCharge, gBrSumCharge) then
			begin
				GMessagebox('지사캐쉬(0원미만)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
				Exit;
			end;
		end else
		if (GS_PRJ_AREA <> 'S') and ((GT_USERIF.ShareNo = 'G91') or (GT_USERIF.ShareNo = 'G58') or (gTmp_HD = 'A100') ) then
		begin                       
			if (GS_PRJ_AREA <> 'S') and ((gTmp_HD = 'A1891') or (gTmp_HD = 'A1897') or (gTmp_HD = 'A1756') or
																	 (gTmp_HD = 'A1763') or (gTmp_HD = 'A1768') or (gTmp_HD = 'A1757') or
																	 (gTmp_HD = 'A1844') or (gTmp_HD = 'A1752') or (gTmp_HD = 'A1853') or
																	 (gTmp_HD = 'A1771') or (gTmp_HD = 'A1822') or (gTmp_HD = 'A1753') or
																	 (gTmp_HD = 'A1866') or (gTmp_HD = 'A2014') or (gTmp_HD = 'A2010') or
																	 (gTmp_HD = 'A1769') or (gTmp_HD = 'A1772') or (gTmp_HD = 'A1905') or
																	 (gTmp_HD = 'A1946') or (gTmp_HD = 'A1764') or (gTmp_HD = 'A1879') or
																	 (gTmp_HD = 'A1948')) then
			begin
				if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, -50000, gBrCharge, gBrSumCharge) then
				begin
					GMessagebox('지사캐쉬(-50,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
					Exit;
				end;
			end else
			if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A1745') then
			begin
				if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, -100000, gBrCharge, gBrSumCharge) then
				begin
					GMessagebox('지사캐쉬(-100,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
					Exit;
				end;
			end	else
			if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A2195') and (gTmp_BR = 'U589') then       //20170323 이명재대리요청
			begin
				if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, 100000, gBrCharge, gBrSumCharge) then
				begin
					GMessagebox('지사캐쉬가 100,000원 이하일 경우 후불로 수정할 수 없습니다.', CDMSE);
					Exit;
				end;
			end else 
			begin
				if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, -100000, gBrCharge, gBrSumCharge) then
				begin
					GMessagebox('지사캐쉬(-100,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
					Exit;
				end;
			end;
		end else
		begin
			if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, GT_OrderInfo[Self.Tag].Deposit, 0, gBrCharge, gBrSumCharge) then
			begin
{				gTmp := '해당지사의 캐시가 [%s]원으로 후불접수가 불가합니다' + #13#10 + #13#10
							+ '* 후불접수예정금액 : %s원' + #13#10
							+ '* 지사보유금액 : %s원' + #13#10
							+ '* 현재 후불접수합계 : %s원' + #13#10
				;
				GMessagebox(Format(gTmp, [StrToMoney(FloatToStr(gBrCharge))
															 ,  StrToMoney(FloatToStr(GT_OrderInfo[Self.Tag].Deposit))
															 ,  StrToMoney(FloatToStr(gBrCharge))
															 ,  StrToMoney(FloatToStr(gBrSumCharge))]), CDMSE);
}				gTmp := '해당지사의 캐쉬가 [%s]원으로 후불접수가 불가합니다';
				GMessagebox(Format(gTmp, [StrToMoney(FloatToStr(gBrCharge))]), CDMSE);
				Exit;
			end;
		end;
	end;
	
	try
    ls_TxLoad := GTx_UnitXmlLoad('C007.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'RESV000' + IntToStr(iTag), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', GT_OrderInfo[Self.Tag].Slip, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', GT_OrderInfo[Self.Tag].Status, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'GubunCodeString', IntToStr(iTag), [rfReplaceAll]);

		slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
	except
    on E: Exception do
    begin
      Assert(False, E.Message);
      ls_TxLoad := 'Jon03[pm_CanReResClick]Error : ' + e.Message;
      GMessagebox(PChar(ls_TxLoad), CDMSE);
    end;
  end;
end;

procedure TFrm_JON03.pnl_MultiSearchResize(Sender: TObject);
begin
	ReSize_edtFastKey;
end;

procedure Tfrm_JON03.proc_Acc_Search(iType: Integer; sConf_Slip: string; sNum : String; bAutoStop : Boolean);
var
  sStatus, ALastUpdate, slg_swhere, slg_status : string;
  sBrNoStString, OptionString, KeyWordString, FromCity, FromWard, FromDate, ToDate, MyCall, MyDriver, RouteMS, sKey: string;
  I : integer;
  AView: TcxGridDBTableView;
  aStCnt: array[0..14] of int64;
begin
	SetDebugeWrite('JON03.proc_Acc_Search');
  // 검색항목이 없을경우 전체 검색으로 인해 속도 저하되므로 패스
  if Trim(sConf_Slip) = '' then
  begin
    Assert(False, Format('[proc_Acc_Search Type - %d : 검색항목없음-%s]', [iType, sNum]));
    Exit;
  end;

  slg_swhere := lg_swhere[Self.Tag];
  slg_status := lg_status[Self.Tag];
  for i := 0 to 14 do
		aStCnt[i] := gaStCnt[i];

  AView := GetCurrentView;
  ALastUpdate := dt_sysdate[Self.Tag];
  try
    AAutoSearch_Stop := bAutoStop;
    sBrNoStString := '';
    OptionString := '';
    KeyWordString := '';
    FromCity := '';
    FromWard := '';
		FromDate := '';
    ToDate := '';
    MyCall := '';
    MyDriver := '';
    RouteMS := '';
    sKey := 'AcceptCount3';
    if iType = 0 then
    begin
      sStatus := '''A''';
      OptionString := '5';
      KeyWordString := En_Coding(GT_USERIF.ID);
      lg_status[Self.Tag] := '1'; // 조회 조건 전체 조회[0:전체, 1:변경정보만 조회]
    end else
    if iType = 1 then
    begin
      sStatus := '''A''';
      OptionString := '7';
			KeyWordString := sConf_Slip;
      lg_status[Self.Tag] := '1'; // 조회 조건 전체 조회[0:전체, 1:변경정보만 조회]
			ALastUpdate := '';   //접수현황 그리그에 변경내용 즉시 반영되기위해서 적용함    20191016 KHS
		end else
		if iType = 2 then
    begin
      sStatus := '''A''';
      OptionString := '7';
      KeyWordString := sConf_Slip;
      lg_status[Self.Tag] := '1'; // 조회 조건 전체 조회[0:전체, 1:변경정보만 조회]
    end else
    if iType = 4 then
    begin
      lg_swhere[Self.Tag] := '';
      sStatus := '''A''';
      OptionString := '5';
      KeyWordString := En_Coding(GT_USERIF.ID);
      lg_status[Self.Tag] := '0'; // 조회 조건 전체 조회[0:전체, 1:변경정보만 조회]
      // 변경
      if lg_status[Self.Tag] = '0' then
      begin
        AView.DataController.SetRecordCount(0);
        for i := 0 to 14 do
					gaStCnt[i] := 0;
			end;
    end else
    if iType = 5 then
    begin
      sStatus := '''A''';
      OptionString := '1';
      sConf_Slip := StringReplace(sConf_Slip, '-', '', [rfReplaceAll]);
      KeyWordString := En_Coding(sConf_Slip);

      // 빠른검색인 경우 전체 항목 체크시 전체 항목 검색  2012-06-21 LYB추가
      if ( cb_All.Down ) and ( sConf_Slip <> '' ) then // 조건이 없을 경우 제외
      begin
        sStatus := StringReplace(Func_CheckCondition(2), ' ', '', [rfReplaceAll]);
        cb_All.Hint := 'Y';
      end else cb_All.Hint := 'N';
    end else
    if iType = 6 then
    begin
      lg_swhere[Self.Tag] := '';
      sStatus := '''A''';
      OptionString := '1';
      sConf_Slip := StringReplace(sConf_Slip, '-', '', [rfReplaceAll]);
      KeyWordString := En_Coding(sConf_Slip);
      lg_status[Self.Tag] := '0';
      AView.DataController.SetRecordCount(0);
			for i := 0 to 14 do
				gaStCnt[i] := 0;
		end else
    if iType = 7 then
    begin
      lg_swhere[Self.Tag] := '';
      sStatus := '''A''';
      OptionString := '7';
      KeyWordString := sConf_Slip;
      lg_status[Self.Tag] := '1';
      AView.DataController.SetRecordCount(0);
      for i := 0 to 14 do
				gaStCnt[i] := 0;
		end else
    if iType = 8 then
    begin
      lg_swhere[Self.Tag] := '';
      sStatus := '''A''';
      OptionString := '1';
      KeyWordString := sConf_Slip;
      lg_status[Self.Tag] := '1';
      sKey := 'AcceptCount1';
      AView.DataController.SetRecordCount(0);
      for i := 0 to 14 do
        gaStCnt[i] := 0;
		end else
		if iType = 9 then //기사조회
    begin
      lg_swhere[Self.Tag] := '';
      sStatus := '''A''';
			OptionString := '2';
      KeyWordString := sConf_Slip;
      lg_status[Self.Tag] := '1';
      sKey := 'AcceptCount1';
			AView.DataController.SetRecordCount(0);
      for i := 0 to 14 do
				gaStCnt[i] := 0;
		end;

    if AView.DataController.RecordCount = 0 then
      ALastUpdate := '';

    try
  		RequestOrderList(AView, sKey, sStatus, ALastUpdate, sBrNoStString, RouteMS, OptionString, KeyWordString,
        FromCity, FromWard, FromDate, ToDate, MyCall, MyDriver, '', '', '');
    finally
      // 자동검색중에 sg_counsel일경우에 기존 조회조건을 그대로 넣어줘야 전체검색을 하지 않는다.
      if not Grd2.Visible then
      begin
        lg_swhere[Self.Tag] := slg_swhere;
        lg_status[Self.Tag] := slg_status;
        for i := 0 to 14 do
      		gaStCnt[i] := aStCnt[i];
      end;
    end;
  except
    on E: Exception do
		begin
      Log('proc_Acc_Search Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'proc_Acc_Search Error :' + E.Message);

      rb_Search.Enabled := True;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TFrm_JON03.Proc_BubinListSearch;
var
	i, iRow: Integer;
	sKeyNum, sShortNm, sShortDp, sFullName, sFullDp, sCbCode, sBrNo: string;
begin
	// 선택된 지사정보에서 지사코드.
	sBrNo := GetBrNoFromComboValue(cbokeyNumber.Text);
  // 선택된 지사정보에서 대표번호.
	sKeyNum := GetKeyNumFromComboValue(cbokeyNumber.Text); //대표번호
	sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);

	cxBubinView.BeginUpdate;

  cxBubinView.DataController.SetRecordCount(0);
	for i := 0 to GT_BUBIN_INFO.brNo_KeyNum.Count - 1 do
	begin                                       
    if GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(sBrNo, 5, ' ') + Rpad(sKeyNum, 15, ' ') then
    begin
			if (Trim(FBubinTextEdit.Text) = '') or (Trim(FBubinTextEdit.Text) = '법인명') or
				(Pos(Trim(FBubinTextEdit.Text), GT_BUBIN_INFO.cbEtc.Strings[i]) > 0) then
      begin
				sFullName := Trim(GT_BUBIN_INFO.cbCorpNm.Strings[i]);
				sFullDp   := Trim(GT_BUBIN_INFO.cbDeptNm.Strings[i]);
				sShortNm  := Trim(GT_BUBIN_INFO.cbSCorpNm.Strings[i]);
				sShortDp  := Trim(GT_BUBIN_INFO.cbSDeptNm.Strings[i]);
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

procedure Tfrm_JON03.proc_cust_smssend(sLip: string);
var
  sCust_Tel, sKeyNum: string;
begin
  SetDebugeWrite('JON03.proc_cust_smssend');
  try
    if ( Not Assigned(Frm_JON15) ) Or ( Frm_JON15 = Nil ) then Exit;

    sKeyNum := StringReplace(Frm_JON15.KeyNum, '-', '', [rfReplaceAll]);
    sCust_Tel := Frm_JON15.ed_cancel_custnum.Text;

    if pos('*', sCust_Tel) > 0 then
    begin
      GMessagebox('문자보낼 권한이 없습니다.', CDMSE);
      Exit;
    end;
    edtTelNum.Text := StringReplace(sCust_Tel, '-', '', [rfReplaceAll]);

    if StrToIntDef(copy(edtTelNum.Text, 1, 2), 0) <> 1 then
    begin
      GMessagebox('고객번호가 핸드폰이 아닙니다.' + #13#10 + '문자메세지를 보낼수 없습니다.', CDMSE);
      Exit;
    end;
    try
      if Not Assigned(Frm_SMS01) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
      Frm_SMS01.pSMS01Dock.bUnDock := pJON03Dock.bUnDock;
      Frm_SMS01.pSMS01Dock.HdNo    := pJON03Dock.HdNo;
      Frm_SMS01.pSMS01Dock.BrNo    := pJON03Dock.BrNo;
      Frm_SMS01.pSMS01Dock.BrName    := pJON03Dock.BrName;
      Frm_SMS01.pSMS01Dock.Gubun   := pJON03Dock.Gubun;
      Frm_SMS01.pSMS01Dock.Idx     := pJON03Dock.Idx;
      if Frm_JON15.ed_WhyCancel.Text <> '' then
      begin
        if Frm_JON15.ARadioBtn.Tag = 6 then
        begin
          if Frm_JON15.RbCheckBox4.Checked then
          begin
            Frm_SMS01.mm_message.Text := Frm_JON15.Edit5.Text;
          end else
          if Frm_JON15.RbCheckBox5.Checked then
          begin
            Frm_SMS01.mm_message.Text := Frm_JON15.Edit7.Text;
          end else
          begin
						Frm_SMS01.mm_message.Text := Frm_JON15.ed_WhyCancel.Text + '으로 취소되었습니다.';
					end;
				end else
        if Frm_JON15.ARadioBtn.Tag = 4 then
				begin
					Frm_SMS01.mm_message.Text := Frm_JON15.ed_WhyCancel.Text + '으로 취소되었습니다. 모시지 못해서 죄송합니다.';
				end
				else
					Frm_SMS01.mm_message.Text := Frm_JON15.ed_WhyCancel.Text + '으로 취소되었습니다.';
      end else
      begin
        Frm_SMS01.mm_message.Text := '';
      end;
      Frm_SMS01.ed_send.Text := sKeyNum;
      Frm_SMS01.ls_sms.Items.Clear;
      Frm_SMS01.ls_sms.Items.Add(edtTelNum.Text);
      Frm_SMS01.Proc_Init;
			Frm_SMS01.sSendKind := '';
			Frm_SMS01.rdo_SMS.visible := False;
			Frm_SMS01.rdo_PUSH.visible := False;
			Frm_SMS01.PageControl1.ActivePageIndex := 1;
			Frm_SMS01.Show;
    finally
      if btnAutoRe.Tag = 1 then
      begin
        AAutoSearch_Stop := False;
        tmr_dis.Enabled := True;
      	PnlAuto.Visible := True;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Tfrm_JON03.proc_wk_lack_sms(sConfSlip: string);
var
  sCust_Tel, sCust_Tel2, sKeyNum, send_msg, to_num, sTime: string;
  ls_TxLoad: string;
  rv_str: string;
  ls_rxxml: String;
  slReceive: TStringList;
  ErrCode: integer;
begin
  SetDebugeWrite('JON03.proc_wk_lack_sms');
  try
    sCust_Tel2 := GT_OrderInfo[Self.Tag].CustTel22;
    sCust_Tel := StringReplace(sCust_Tel2, '-', '', [rfReplaceAll]);
    sCust_Tel := GT_OrderInfo[Self.Tag].CustTel;
    sCust_Tel := StringReplace(sCust_Tel, '-', '', [rfReplaceAll]);
    sKeyNum := GT_OrderInfo[Self.Tag].KeyNumber;
    sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
    if ((TCK_USER_PER.JON_CustMaking2 = '1') or (TCK_USER_PER.JON_Cust2Modify = '1') Or (TCK_USER_PER.JON_CustM2Modify = '1')) And (func_check_CallCenter) then
    begin
      sCust_Tel := GT_OrderInfo[Self.Tag].CustTel1;
    end;

    if pos('*', sCust_Tel) > 0 then
    begin
      GMessagebox('문자보낼 권한이 없습니다.', CDMSE);
      Exit;
    end;

    if sCust_Tel2 <> '' then
      edtTelNum.Text := StringReplace(sCust_Tel2, '-', '', [rfReplaceAll])
    else
      edtTelNum.Text := StringReplace(sCust_Tel, '-', '', [rfReplaceAll]);

    if StrToIntDef(copy(sCust_Tel, 1, 2), 0) <> 1 then
    begin
      GMessagebox('고객번호가 핸드폰이 아닙니다.' + #13#10 +
        '문자메세지를 보낼수 없습니다.', CDMSE);
      Exit;
    end;

    if Frm_JON15.RbCheckBox4.Checked then
    begin
      send_msg := Frm_JON15.Edit5.Text; //메시지
      to_num := Frm_JON15.Edit6.Text; //회신번호
      sCust_Tel := StringReplace(sCust_Tel, '-', '', [rfReplaceAll]);
      //고객번호
    end else
    if Frm_JON15.RbCheckBox5.Checked then
    begin
      send_msg := Frm_JON15.Edit7.Text;
      to_num := Frm_JON15.Edit8.Text;
      sCust_Tel := StringReplace(sCust_Tel, '-', '', [rfReplaceAll]);
    end;

    sTime := '';

    ls_TxLoad := GTx_UnitXmlLoad('SMS01.XML');
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'WSMS0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ReceiverString', En_Coding(sCust_Tel), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'SenderString', En_Coding(to_num), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'MessageString', En_Coding(send_msg), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ReservationString', sTime, [rfReplaceAll]);

    if btnAutoRe.Tag = 1 then
    begin
      AAutoSearch_Stop := False;
      tmr_dis.Enabled := True;
     	PnlAuto.Visible := True;
    end;

    slReceive := TStringList.Create;
    try
      if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.pSetSearchViewList;
Var iCnt, iWidth, iLeft, iMWid : Integer;
begin
  BtnSEYmd.Left := btnSetDate.Left + btnSetDate.Width + 3;
  btnSearchSEL.Left := BtnSEYmd.Left + BtnSEYmd.Width + 5;
  gbSearchView.Left := btnSearchSEL.Left + btnSearchSEL.Width;

  if ( GS_COUNSEL_SSEL1 ) And ( GS_COUNSEL_SSEL2 ) And ( GS_COUNSEL_SSEL3 ) And
		 ( GS_COUNSEL_SSEL4 ) And ( GS_COUNSEL_SSEL5 ) And ( GS_COUNSEL_SSEL6 ) And
		 ( GS_COUNSEL_SSEL7 ) And ( GS_COUNSEL_SSEL8 ) And ( GS_COUNSEL_SSEL9 )  And ( GS_COUNSEL_SSEL11 ) then
  begin
    if btnSetDate.Width = 197 then      // 과거일자 조회시 즉시배차 검색 조건 사라짐
    begin
      gbSearchView.Width := 603 + 49;

      cb_branch_Name2.Visible := False;
      Edit4.Visible := False;
      cxLblJaSabunView.Visible := False;

      iMWid := 0;
    end else
    begin
      gbSearchView.Width := 733 + 49;

      cb_branch_Name2.Visible := True;
      cb_branch_Name2.ItemIndex := 0;

      Edit4.Visible := True;
      Edit4.Text := '';

      cxLblJaSabunView.Visible := True;

      iMWid := cb_branch_Name2.Width + Edit4.Width + 4;
    end;

    iCnt := 0;
    if GS_COUNSEL_SSEL1 then Inc(iCnt);
    if GS_COUNSEL_SSEL2 then Inc(iCnt);
    if GS_COUNSEL_SSEL3 then Inc(iCnt);
    if GS_COUNSEL_SSEL4 then Inc(iCnt);
    if GS_COUNSEL_SSEL5 then Inc(iCnt);
		if GS_COUNSEL_SSEL6 then Inc(iCnt);
    if GS_COUNSEL_SSEL7 then Inc(iCnt);
		if GS_COUNSEL_SSEL8 then Inc(iCnt);
		if GS_COUNSEL_SSEL11 then Inc(iCnt);

    iWidth := Trunc( ( ( gbSearchView.Width - iMWid - 6) - ( iCnt * 4) ) / iCnt );

//    if iWidth > 100 then iWidth := 100;

    iLeft := 8;
    if GS_COUNSEL_SSEL1 then
    begin
      cb_ManualBaecha.Left := iLeft;
      cb_ManualBaecha.Width := iWidth;
      cb_ManualBaecha.Visible := True;

      iLeft := cb_ManualBaecha.Left + cb_ManualBaecha.Width + 3;
    end else
      cb_ManualBaecha.Visible := False;

    if GS_COUNSEL_SSEL2 then
    begin
      cb_MyCall.Left := iLeft;
      cb_MyCall.Width := iWidth;
      cb_MyCall.Visible := True;

      iLeft := cb_MyCall.Left + cb_MyCall.Width + 3;
    end else
      cb_MyCall.Visible := False;

    if GS_COUNSEL_SSEL3 then
    begin
      cb_Owner.Left := iLeft;
      cb_Owner.Width := iWidth;
      cb_Owner.Visible := True;

      iLeft := cb_Owner.Left + cb_Owner.Width + 3;
    end else
      cb_Owner.Visible := False;

    if GS_COUNSEL_SSEL4 then
    begin
      cb_MyDriver.Left := iLeft;
      if ( iWidth < 42 )  then
        cb_MyDriver.Width := iWidth + (42 - iWidth)
      else
        cb_MyDriver.Width := iWidth;

      cb_MyDriver.Visible := True;

      iLeft := cb_MyDriver.Left + cb_MyDriver.Width + 3;
    end else
      cb_MyDriver.Visible := False;

    if GS_COUNSEL_SSEL5 then
    begin
      cb_All.Left := iLeft;
      cb_All.Width := iWidth;
      cb_All.Visible := True;

      iLeft := cb_All.Left + cb_All.Width + 3;
    end else
      cb_All.Visible := False;

    if GS_COUNSEL_SSEL6 then
    begin
      cxChkBC1.Left := iLeft;
      cxChkBC1.Width := iWidth;
      if cxChkBC1.Tag = 2 then
        cxChkBC1.Caption := '법인제외' else cxChkBC1.Caption := '법인';
      cxChkBC1.Visible := True;

      iLeft := cxChkBC1.Left + cxChkBC1.Width + 3;
    end else
      cxChkBC1.Visible := False;

    if GS_COUNSEL_SSEL7 then
    begin
      cxChkBC2.Left := iLeft;
      cxChkBC2.Width := iWidth;
      cxChkBC2.Caption := '카드';
      cxChkBC2.Visible := True;

      iLeft := cxChkBC2.Left + cxChkBC2.Width + 3;
    end else
      cxChkBC2.Visible := False;

		if GS_COUNSEL_SSEL8 then
		begin
			cxChkBC3.Left := iLeft;
			cxChkBC3.Width := iWidth;
			cxChkBC3.Caption := '후불';
			cxChkBC3.Visible := True;

			iLeft := cxChkBC3.Left + cxChkBC3.Width + 3;
		end else
			cxChkBC3.Visible := False;

		if GS_COUNSEL_SSEL11 then
		begin
			cxChkBC4.Left := iLeft;
			cxChkBC4.Width := iWidth;
			cxChkBC4.Caption := '탁콜';
			cxChkBC4.Visible := True;

			iLeft := cxChkBC4.Left + cxChkBC4.Width + 3;
		end else
			cxChkBC4.Visible := False;
	end else
  begin
    if btnSetDate.Width = 197 then      // 과거일자 조회시 즉시배차 검색 조건 사라짐
    begin
      gbSearchView.Width := 603 + 49;

      cb_branch_Name2.Visible := False;
      Edit4.Visible := False;
      cxLblJaSabunView.Visible := False;

      iMWid := 0;
    end else
    begin
      gbSearchView.Width := 733 + 49;

      if GS_COUNSEL_SSEL9 then
      begin
        cb_branch_Name2.Visible := True;
        cb_branch_Name2.ItemIndex := 0;

        Edit4.Visible := True;
        Edit4.Text := '';

        cxLblJaSabunView.Visible := True;

        iMWid := cb_branch_Name2.Width + Edit4.Width + 4;
      end else
      begin
        cb_branch_Name2.Visible := False;
        Edit4.Visible := False;
        cxLblJaSabunView.Visible := False;

        iMWid := 0;
      end;
    end;

    iCnt := 0;
    if GS_COUNSEL_SSEL1 then Inc(iCnt);
    if GS_COUNSEL_SSEL2 then Inc(iCnt);
    if GS_COUNSEL_SSEL3 then Inc(iCnt);
    if GS_COUNSEL_SSEL4 then Inc(iCnt);
    if GS_COUNSEL_SSEL5 then Inc(iCnt);
    if GS_COUNSEL_SSEL6 then Inc(iCnt);
    if GS_COUNSEL_SSEL7 then Inc(iCnt);
		if GS_COUNSEL_SSEL8 then Inc(iCnt);
		if GS_COUNSEL_SSEL11 then Inc(iCnt);

    iWidth := Trunc( ( ( gbSearchView.Width - iMWid - 6) - ( iCnt * 4) ) / iCnt );

//    if iWidth > 100 then iWidth := 100;

    iLeft := 8;
    if GS_COUNSEL_SSEL1 then
    begin
      cb_ManualBaecha.Left := iLeft;
      cb_ManualBaecha.Width := iWidth;
      cb_ManualBaecha.Visible := True;

      iLeft := cb_ManualBaecha.Left + cb_ManualBaecha.Width + 3;
    end else
      cb_ManualBaecha.Visible := False;

    if GS_COUNSEL_SSEL2 then
    begin
      cb_MyCall.Left := iLeft;
      cb_MyCall.Width := iWidth;
      cb_MyCall.Visible := True;

      iLeft := cb_MyCall.Left + cb_MyCall.Width + 3;
    end else
      cb_MyCall.Visible := False;

    if GS_COUNSEL_SSEL3 then
    begin
      cb_Owner.Left := iLeft;
      cb_Owner.Width := iWidth;
      cb_Owner.Visible := True;

      iLeft := cb_Owner.Left + cb_Owner.Width + 3;
    end else
      cb_Owner.Visible := False;

    if GS_COUNSEL_SSEL4 then
    begin
      cb_MyDriver.Left := iLeft;
      if ( iWidth < 42 )  then
        cb_MyDriver.Width := iWidth + (42 - iWidth)
      else
        cb_MyDriver.Width := iWidth;

      cb_MyDriver.Visible := True;

      iLeft := cb_MyDriver.Left + cb_MyDriver.Width + 3;
    end else
      cb_MyDriver.Visible := False;

    if GS_COUNSEL_SSEL5 then
    begin
      cb_All.Left := iLeft;
      cb_All.Width := iWidth;
      cb_All.Visible := True;

      iLeft := cb_All.Left + cb_All.Width + 3;
    end else
      cb_All.Visible := False;

    if GS_COUNSEL_SSEL6 then
    begin
      cxChkBC1.Left := iLeft;
      cxChkBC1.Width := iWidth;
      if cxChkBC1.Tag = 2 then
        cxChkBC1.Caption := '법인제외' else cxChkBC1.Caption := '법인';
      cxChkBC1.Visible := True;

      iLeft := cxChkBC1.Left + cxChkBC1.Width + 3;
    end else
      cxChkBC1.Visible := False;

    if GS_COUNSEL_SSEL7 then
    begin
      cxChkBC2.Left := iLeft;
      cxChkBC2.Width := iWidth;
      cxChkBC2.Caption := '카드';
      cxChkBC2.Visible := True;

      iLeft := cxChkBC2.Left + cxChkBC2.Width + 3;
    end else
      cxChkBC2.Visible := False;

		if GS_COUNSEL_SSEL8 then
		begin
			cxChkBC3.Left := iLeft;
			cxChkBC3.Width := iWidth;
			cxChkBC3.Caption := '후불';
			cxChkBC3.Visible := True;

			iLeft := cxChkBC3.Left + cxChkBC3.Width + 3;
		end else
			cxChkBC3.Visible := False;

		if GS_COUNSEL_SSEL11 then
		begin
			cxChkBC4.Left := iLeft;
			cxChkBC4.Width := iWidth;
			cxChkBC4.Caption := '탁콜';
			cxChkBC4.Visible := True;

			iLeft := cxChkBC4.Left + cxChkBC4.Width + 3;
		end else
			cxChkBC4.Visible := False;
	end;
end;

function Tfrm_JON03._IsOverTime(ATime: string; ASec: Integer): Boolean;
var
  sTime, dTime: TDateTime;
  sDate: string;
  Sec: Integer;
begin
  SetDebugeWrite('JON03._IsOverTime');
  Result:= False;
  try
		sDate := dt_ServerTime[Self.Tag];
		if sDate <> '' then
		begin
			sDate := GetStrToLongDateTimeStr(sDate);
			sTime := StrToDateTime(sDate);

			sDate := GetStrToLongDateTimeStr(ATime);
			dTime := StrToDateTime(sDate);

			sDate := FormatDateTime('hhmmss', sTime - dTime);

			Sec := 0;
			Sec := Sec + StrToIntDef(copy(sDate, 5, 2), 0);
			Sec := Sec + (StrToIntDef(copy(sDate, 3, 2), 0) * 60);
			Sec := Sec + (StrToIntDef(copy(sDate, 1, 2), 0) * 60 * 60);

			Result := Sec > ASec;
    end;
	except
		on E: Exception do
  		Assert(False, E.Message);
  end;
end;

procedure Tfrm_JON03.ShowPopupCard(const AShowHistory: Boolean);
var
  AView: TcxGridDBTableView;
  CardData: TCardAccountRec;
  irealbrno, iBubin, iCustType : Integer;
  sTemp: string;
begin
  SetDebugeWrite('JON03.ShowPopupCard');
  AView := GetCurrentView;
  try
    irealbrno   := AView.GetColumnByFieldName('실제등록콜센터').Index;
    iBubin      := AView.GetColumnByFieldName('법인명').Index;
    iCustType   := AView.GetColumnByFieldName('고객구분').Index;

    CardData.ConfSlip   := GT_OrderInfo[Self.Tag].Slip;
    CardData.BrNo       := GT_OrderInfo[Self.Tag].BrNo;
    CardData.Name       := GT_OrderInfo[Self.Tag].CustName;
    CardData.PhoneNo    := func_Cust_Tel(
                      AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giCustTel],
                      AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giAccTime2],
                      AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giBrNo],
                      AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, irealbrno]);
    CardData.AccType    := GT_OrderInfo[Self.Tag].CashType;
    CardData.BubinName  := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, iBubin];
    CardData.CustType   := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, iCustType];
    CardData.StartArea  := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giStartArea];
    CardData.EndArea    := AView.DataController.Values[GT_OrderInfo[Self.Tag].ARow, giEndArea];
    CardData.Price      := GT_OrderInfo[Self.Tag].Charge;
    CardData.WkSabun    := GT_OrderInfo[Self.Tag].WkSabun;
  	CardData.WkName     := GT_OrderInfo[Self.Tag].WkName;
		if (GT_OrderInfo[Self.Tag].Status = '0') then //or (GT_OrderInfo[Self.Tag].Status = 'D') then
      sTemp := '접수'
  	else if GT_OrderInfo[Self.Tag].Status = '1' then
  		sTemp := '배차'
    else if GT_OrderInfo[Self.Tag].Status = '2' then
  		sTemp := '완료'
    else if GT_OrderInfo[Self.Tag].Status = '3' then
      sTemp := '강제'
    else if GT_OrderInfo[Self.Tag].Status = '4' then
      sTemp := '문의'
    else if GT_OrderInfo[Self.Tag].Status = '5' then
      sTemp := '대기'
    else if GT_OrderInfo[Self.Tag].Status = '8' then
      sTemp := '취소'
    else if GT_OrderInfo[Self.Tag].Status = 'R' then
  		sTemp := '예약'
  	else if GT_OrderInfo[Self.Tag].Status = 'B' then
			sTemp := '배중'
		else if GT_OrderInfo[Self.Tag].Status = 'D' then
			sTemp := '운행'
		else if ( GT_OrderInfo[Self.Tag].Status = 'C' ) or ( GT_OrderInfo[Self.Tag].Status = 'M' ) then
			sTemp := '근배'
																																						;
    CardData.Status     := sTemp;

    if Not Assigned(Frm_JON25) then Frm_JON25 := TFrm_JON25.Create(Nil);
    Frm_JON25.Jon03Tag := Self.Tag;
    Frm_JON25.SetData(CardData);
    if AShowHistory then
      Frm_JON25.ShowHistory;
    Frm_JON25.btnHistory.Click;   // 카드결제현황 자동조회.
    Frm_JON25.BringToFront;
    Frm_JON25.FormStyle := fsStayOnTop;
    Frm_JON25.Show;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.TCPClientConnected(Sender: TObject);
begin
  SetDebugeWrite('JON03.TCPClientConnected');
  if assigned(JFOnSessionConnect) then
    JFOnSessionConnect(Sender);

  FReconnectCount03 := 0;
  J03func_login;
end;

procedure TFrm_JON03.TCPClientDisconnected(Sender: TObject);
begin
  SetDebugeWrite('JON03.TCPClientDisconnected');
  if TCPClient.Tag = 1 then Exit;

  FReconnectCount03 := 0;
  tmPing.Enabled := False;
  if FReConnectCheck03 then
    J03DoReConnect
  else
  begin
    if assigned(JFOnSessionDisConnect) then
      JFOnSessionDisConnect(Sender);
  end;
end;

function TFrm_JON03.J03func_login : Boolean;
var
  SendData: string;
  LockCode, sType, sQueryTemp: string;
  ErrCode: Integer;
  slList: TStringList;
begin
  SetDebugeWrite('JON03.J03func_login');
  Result := False;

  FSENDOTP03 := CC_ENCRYPT;
  FRECVOTP03 := CC_DNCRYPT;
  sType := '2';

	fGet_BlowFish_Query(gsClientVer, sQueryTemp);

	if GS_CheckPC then
		LockCode := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'Code')
	else
		LockCode := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), GT_USERIF.ID+'Code');

	if Trim(LockCode) = '' then
    LockCode := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'Code');

  SendData := GetC001Login('LOGIN', GT_USERIF.MC, GT_USERIF.HS, GT_USERIF.VN, '', '',  SysInfoRec.ComputerName, LockCode, GS_PRJ_VERSION, sQueryTemp, sType);

  try
    slList := TStringList.Create;
    try
      if J03SendSock(SendData, slList, ErrCode, True) then
      begin
      end;
    finally
      slList.Free;
    end;
  except
    J03DoReConnect;
  end;
end;

procedure TFrm_JON03.tmPingTimer(Sender: TObject);
var
  RecvData: string;
  ErrCode: Integer;
  slList: TStringList;
begin
//-  SetDebugeWrite('JON03.tmPingTimer');
  try
    tmPing.Enabled := False;
    try
      if FSendPingCount03 = SENDPING_CNT then
      begin
        slList := TStringList.Create;
        try
          if J03SendSock('9999', slList, ErrCode, False) then
            RecvData := slList[0];
          FSendPingCount03 := 0;
        finally
          FreeAndNil(slList);
        end;
      end else
      begin
        Inc(FSendPingCount03);
      end;

      if FSendOTPCount03 >= SENDOPT_CNT then
      begin
        FSendOTPCount03 := 0;
        J03DoReConnect;
      end else
      begin
        Inc(FSendOTPCount03);
      end;
    finally
      tmPing.Enabled := True;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON03.J03DoReConnect : Boolean;
begin
  SetDebugeWrite('JON03.J03DoReConnect');
  Result := True;
  if J03SockConnect(3000) then Exit;

  Dm.SetServerIP;

  while Dm.ServerIPChange do
  begin
    if J03SockConnect(3000) then Exit;
  end;

  SERVER_IP := GS_BACKUP_SVRIP[0];
  if Trim(TESTSERVER_IP) <> '' then
    SERVER_IP := TESTSERVER_IP;

  GMessagebox('네트워크 접속 후 다시 작업 해 주십시오', CDMSE);
  Result := False;
end;

function TFrm_JON03.J03SockConnect(ATimeOut: Integer): Boolean;
begin
  SetDebugeWrite('JON03.J03SockConnect : ' + SERVER_IP + ', FSendOTPCount : ' + IntToStr(FSendOTPCount03));

  Result := True;
  try
      if not TCPClient.Connected then
      begin
        FReConnectCheck03 := True;

        TCPClient.Host := SERVER_IP;
        TCPClient.Port := StrToInt(SERVER_PORT);
        TCPClient.ReadTimeout := ATimeOut;
        TCPClient.ConnectTimeout := ATimeOut;
        TCPClient.Connect();
      end;
  except
    on E: Exception do
    begin
      OutputDebugString(PChar(Format('Failed connect [IP: %s, %s]', [SERVER_IP, SERVER_PORT])));
      Result := False;
    end;
  end;
end;

// 2011.03.10 DORECONNECT
function TFrm_JON03.J03SendSock(const ASendData: string; var slList: TStringList;
	var AErrorCode: Integer; bOptCd: Boolean; ATimeOut: Integer): Boolean;
label
  Retry;
var
  TempStr, TempStr2: AnsiString;
  EndData: Boolean;
  AMsgCode: AnsiString;
  AHeader: TTCKCommonHeader;
  APacketSize: Integer;
  retry_cnt: Integer;
begin
  SetDebugeWrite('JON03.J03SendSock');
  Result := False;
  retry_cnt := 0;

  // 임계영역 설정.
Retry:
  _CS_SockSendJ03[Self.Tag].Acquire;
  try
    if TCPClient.Tag = 1 then
		begin
      slList.Add('');
      Exit;
    end;

    if bOptCd then
      AMsgCode := 'C001'
    else
      AMsgCode := '0000';

    if ASendData = '9999' then
      AMsgCode := '9999'
    else
      FSendOTPCount03 := 0;

    EndData := False;

    try
      tmPing.Enabled := False;
      if TCPClient.Connected then
      begin
				slList.Clear;
        FSendPingCount03 := 0;

        // 2011.04.05 통계화면조회속도지체로 타임아웃 1분까지 연장
				TCPClient.ReadTimeout := ATimeOut;
        Frm_Main.sbar_Message.Panels[4].Text := '';

        try
          AErrorCode := NO_ERROR_CODE;
					TempStr := UTF8Encode(ASendData);
          // [hjf] Blowfish + Base64 -> Blowfish 만(Base64 제거)

          SetDebugeWrite(Format('SendJon03[%d] : [%s]', [Self.Tag, ASendData]));     //로그 제거 20191126 KHS
          APacketSize := MakePacket(Jon03PacketData , AMsgCode, TempStr, FSENDOTP03);

          TCPClient.IOHandler.Write(RawToBytes(Jon03PacketData[0], APacketSize));
        except
          on E: Exception do
          begin
						OutputDebugString(PChar(Format('WriteBuffer: %s[IP: %s]', [E.Message, SERVER_IP])));

            if (retry_cnt = 0) then
            begin
              retry_cnt := 1;
            end;

            raise;
          end;
        end;

        TCPClient.Tag := 1;
        repeat
          // [hjf] Header에서 패킷 길이 읽어와서 메모리를 읽는다.
          try
            SetLength(BRHeader, MaxArrHeadSize);
            TCPClient.IOHandler.ReadBytes(BRHeader, MaxArrHeadSize, False);
            Move(BRHeader[0], AHeader, MaxArrHeadSize);
						AHeader.PacketLength := ntohl(AHeader.PacketLength);
					except
            on E: Exception do
            begin
              OutputDebugString(PChar(Format('ReadBuffer Header: %s[IP: %s]', [E.Message, SERVER_IP])));
              raise;
						end;
          end;

					if AHeader.PacketLength > 0 then
          begin
            try
              SetLength(BRBody, AHeader.PacketLength);
              TCPClient.IOHandler.ReadBytes(BRBody,  AHeader.PacketLength, False);
						except
              on E: Exception do
              begin
                OutputDebugString(PChar(Format('ReadBuffer: %s[IP: %s]',
                  [E.Message, SERVER_IP])));
                raise;
              end;
            end;
            TCPClient.IOHandler.ReadString(1);

            TempStr2 := BlowFishDecrypt(FRECVOTP03, BRBody[0],  AHeader.PacketLength);
            TempStr := UTF8Decode(TempStr2);
//            SetDebugeWrite('RecvJON03 : ');     // 로그 제거 20191126 KHS
            SetDebugeWrite(Format('RecvJon03[%d] : [%s]', [Self.Tag, TempStr]));     // 로그 제거 20191126 KHS

            if AMsgCode = 'C001' then
            // 로그인 전문인 경우 암호화 키 변경
            begin
              J03GetOTPCode(TempStr);
              EndData := True;
            end else
            if Dm.GetRecvPage(TempStr) then
            begin
              EndData := True;
              Frm_Flash.cxPBar1.Properties.Marquee := False;
              Frm_Flash.cxPBar1.Properties.ShowTextStyle := cxtsPercent;
              Frm_Flash.cxPBar1.Properties.Min := 0;
              Frm_Flash.cxPBar1.Position := 0;
              Application.ProcessMessages;
            end;

            slList.Add(TempStr);
          end else
          begin
            slList.Add('');
          end;
        until EndData;

        AErrorCode := NO_ERROR_CODE;
        Result := True;
        tmPing.Enabled := True;
        TCPClient.Tag := 0;
      end else
      begin
        AErrorCode := NO_ERROR_CODE;
        slList.Add('');
        Result := False;
        TCPClient.Tag := 0;
        tmPing.Enabled := False;

				if (retry_cnt = 0) then
        begin
          retry_cnt := 1;
        end;
      end;
    except
			on E: Exception do
      begin
				slList.Add('');
        Result := True;
				TCPClient.Tag := 0;
        tmPing.Enabled := False;
				TCPClient.Disconnect;
				Log(E.Message, LOGDATAPATHFILE);
				if bFamilySearch then
				begin
					GMessagebox('[패밀리전체(통합)조회]' + #13#10+ #13#10 
										+ '경과시간이 초과되어 조회에 실패하였습니다.' + #13#10
										+ '조회조건, 조회기간 등을 변경하시고 조회하여 주십시오', CDMSE);
				end;
      end;
    end;
  finally
    // 2011.04.05
    TCPClient.ReadTimeout := ATimeOut;

//    SetLength(Jon03PacketData, 0);
//-    Jon03PacketData := Nil;
//    BRHeader  := Nil;
//    BRBody  := Nil;
    // 임계영역 설정.
    _CS_SockSendJ03[Self.Tag].Release;
  end;

  if (retry_cnt = 1) then
  begin
    retry_cnt := 2;
    // 재접속후 재호출
    J03DoReConnect;
    goto Retry;
  end;
end;

procedure TFrm_JON03.J03GetOTPCode(AXML: String);
var
  xdom: msDomDocument;
  XMLNode: IXMLDomNodeList;
  TempStr: string;
begin
  SetDebugeWrite('JON03.J03GetOTPCode');
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXML) then
      Exit;
    try
      XMLNode := xdom.documentElement.selectNodes('/cdms/Service/Error');
      TempStr := XMLNode.item[0].attributes.getNamedItem('Code').Text;
      if TempStr = '0000' then
      begin
        XMLNode := xdom.documentElement.selectNodes('/cdms/Service/Data/Member');

        FSENDOTP03 := XMLNode.item[0].attributes.getNamedItem('PrivateKey').Text;
        FRECVOTP03 := FSENDOTP03;
        FSendOTPCount03 := 0;
      end;
    except
    end;
  finally
    xdom := nil;
  end;
end;

procedure TFrm_JON03.tmrAddSndTimer(Sender: TObject);
begin
  tmrAddSnd.Enabled := False;
  proc_PlaySound(GS_ADD_RING_PATH)
end;

procedure TFrm_JON03.tmrDelSndTimer(Sender: TObject);
begin
  tmrDelSnd.Enabled := False;
  proc_PlaySound(GS_DEL_RING_PATH)
end;

procedure TFrm_JON03.tmrSQLSyncTimer(Sender: TObject);
begin
  btnMySqlPoiSync.Enabled := True;
end;

procedure TFrm_JON03.tmr_disTimer(Sender: TObject);
Var i : Integer;
begin
  SetDebugeWrite('JON03.tmr_disTimer');
	try
    tmr_dis.Enabled := False;
    if ( Not btnAutoRe.Tag = 1 ) Or ( AAutoSearch_Stop ) then
    begin
      tmr_dis.Enabled := False;
    	PnlAuto.Visible := False;
      Exit;
    end;

    if Not pJON03Dock.bUNDock then
    begin
      if gbfrmJON00Show then   // LYB 20120523
      begin
        tmr_dis.Enabled := False;
      	PnlAuto.Visible := False;
        Exit;
      end;
    end else
    begin
      if bJON01View then
      begin
        tmr_dis.Enabled := False;
      	PnlAuto.Visible := False;
        Exit;
      end;
    end;

    if dedt_Sdate.Date <>  StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) then
    begin
      dedt_Sdate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      dedt_Edate.Date := dedt_Sdate.Date + 1;
      BtnYmdClose.Click;
    end;

    for i := 0 to JON_MAX_CNT - 1 do
    begin
      if (Frm_Main.JON01MNG[i].CreateYN) And (Frm_Main.JON01MNG[i].Use) then
      begin
        tmr_dis.Enabled := False;
      	PnlAuto.Visible := False;
        Exit;
      end;
    end;

    if ( AAutoSearch_Time = 0 ) Or ( StrToIntDef(cxLblAutSec.Caption, 0) = 1 ) then
    begin
			AAutoSearch_Flag := True;
			if FSearchEnable then
			begin
				SetDebugeWrite('자동검색으로 검색버튼 클릭');
				rb_SearchClick(nil);
			end;

     	if (frm_Main.advTPTPna2.Locked) and (frm_Main.btnSetJonAuto.Down) then
  		begin
  			frm_Main.RbButton9Click(nil);
  		end;

      if Not pJON03Dock.bUNDock then
      begin
        if Frm_Main.cxPageControl1.Pages[Frm_Main.cxPageControl1.ActivePageIndex].Tag < 20 then
        begin
      		tmr_dis.Enabled := True;
          if Not PnlAuto.Visible then PnlAuto.Visible := True;
        end else
        begin
      		tmr_dis.Enabled := False;
          PnlAuto.Visible := False;
          Exit;
        end;
      end;

      cxLblAutSec.Caption := IntToStr(AAutoSearch_Time);
    end else
    begin
      cxLblAutSec.Caption := IntToStr(StrToIntDef(cxLblAutSec.Caption, 0) - 1);

      if AAutoSearch_Time = 6 then
      begin
        if StrToIntDef(cxLblAutSec.Caption, 0) < 4 then
        begin
          TsGridHighLigth.Clear;
          sg_counsel.DataController.Refresh;
        end;
      end else
      if AAutoSearch_Time = 9 then
      begin
        if StrToIntDef(cxLblAutSec.Caption, 0) < 6 then
        begin
          TsGridHighLigth.Clear;
          sg_counsel.DataController.Refresh;
        end;
      end;
    end;
    tmr_dis.Enabled := True;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.tmr_hintTimer(Sender: TObject);
begin
  SetDebugeWrite('JON03.tmr_hintTimer');
  tmr_hint.Enabled := False;
  try
    if (OldHintView.sValue <> HintView.sValue) or (OldHintView.ARow <> HintView.ARow)
      or (OldHintView.ACol <> HintView.ACol) then
    begin
      OldHintView.sValue := HintView.sValue;
      OldHintView.ARow := HintView.ARow;
      OldHintView.ACol := HintView.ACol;
      PnlHelp.Visible := False;  // 20120719 LYB 수정
      proc_Grid_Hint(HintView.sValue, HintView.ACol, HintView.ARow);
    end;
  except
  end;
end;

procedure TFrm_JON03.tmr_searchTimer(Sender: TObject);
begin
  SetDebugeWrite('JON03.tmr_searchTimer');
	tmr_search.Enabled := False;
	rb_Search.Enabled := True;
	FSearchEnable := True;

  AutoFlag := True;
  cxBtnInitialSearch.Enabled := True;
  try
    if Frm_Main.cxPageControl1.Pages[Frm_Main.cxPageControl1.ActivePageIndex].Tag < 20 then
    begin
      if ( btnAutoRe.Tag = 1 ) And ( Not AAutoSearch_Stop ) then
      begin
				cxLblAutSec.Caption := IntToStr(AAutoSearch_Time);
				tmr_dis.Enabled := True;
				PnlAuto.Visible := True;
      end;
    end;
  Except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON03.tm_FlashTimer(Sender: TObject);
var sNTime, sTime : string;
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

	Frm_Flash.lb_SearchTimeDescription.visible := True;

	sNTime := FormatDateTime('hhmmss', Now);
	sTime := copy(sNTime,1,2) + ':' + copy(sNTime,3,2) + ':' + copy(sNTime,5,2);

	Frm_Flash.lb_SearchTime.caption := func_lap_timeSS(sTime);
	Frm_Flash.lb_SearchTime.visible := True;
end;

procedure Tfrm_JON03.RunCustTelBlock(ACustTel, ACustName, ACounselID, ACounselName: string);
const
  ReqCode = '500';
  ErrSucc = '00';
  PktType = '%s%s%s%s(%s),%s';  // 요청코드(3), 결과(2), 전화번호(15), 상담원명, 상담원ID, 고객명
var
  StartTime: TDateTime;
	SendStr : string;
	sTime : TDateTime;
	str, sSend : Ansistring;
	iLen : Integer;
	sTmp, sMsg, sAndMsg : string;
	iDx : integer;
	sIp, sSelSvr : string;
begin
	SetDebugeWrite('JON03.RunCustTelBlock');
  try
    if GT_OCX = 'KLCNS' then
    begin
//-      Frm_Main.TIPCallrabi1.AddRejectPhone(ACustTel, 0);
      try
        if Frm_Main.xCTI_CTI.Socket.Connected = True then
          Frm_Main.xCTI_CTI.Active := False;

        Frm_Main.xCTI_CTI.Host := '127.0.0.1';
        Frm_Main.xCTI_CTI.Port := 18753;
			except
				on e:Exception do
        begin
          ShowMessage('수신거부 Error:' + e.Message);
        end;
      end;

      try
				// 서버에 연결
        if Frm_Main.xCTI_CTI.Socket.Connected = False then
          Frm_Main.xCTI_CTI.Active := True;
      except
        on e:Exception do
        begin
          ShowMessage('수신거부 Error:' + e.Message);
        end;
      end;

      sTime := Now;

      while True do
      begin
        if (Now - sTime) > (1 / 24 / 60 / 10) then
				begin
          break;
        end else
				begin
          Application.ProcessMessages;
          Sleep(200);
          if Frm_Main.xCTI_CTI.Socket.Connected then
          begin
            break;
          end;
        end;
      end;

      if Frm_Main.xCTI_CTI.Socket.Connected = True then
      begin
        // 수신거부 요청
        gtOUTB.sType := '500';
        gtOUTB.sTell := Rpad(ACustTel,   14, ' ');
        gtOUTB.sCLin := Rpad('',  14, ' '); //대표번호
        gtOUTB.sRltc := '  ';
        gtOUTB.sLine := '    ';

				Frm_Main.xCTI_CTI.Socket.SendText(#2 + gtOUTB.sType + gtOUTB.sTell + gtOUTB.sCLin + gtOUTB.sRltc + #3);
      end;
		end else
		if GT_OCX = 'SI415' then
		begin
			sAndMsg := '1) softPhone을 재실행'+#13#10
							 + '2) 관리자메뉴 > 인바운드설정에 해당 대표번호의 착신여부'+#13#10
							 + '3) 관리자메뉴 > 호분배권한설정에 상담원의 권한확인'+#13#10+#13#10
							 + '위의 3가지 내용을 확인하여 주십시오'; 


			if ((not gSI415_A_Login) and (gSI415_A_Close)) and ((not gSI415_C_Login) and (gSI415_C_Close)) then
			begin
				sMsg := '* IPCC연결상태를 확인해주세요.' +#13#10
							+ '상담원 : softPhone 재실행 바랍니다.' +#13#10
							+ '관리자 : IPCC 관리자로그인 후 이용바랍니다.' +#13#10+#13#10
							+ '[확인사항]'+#13#10
							+ sAndMsg; 
																																				
				GMessagebox(sMsg , CDMSE);
				exit;
			end;
			sTmp := CallToStr(GT_OrderInfo[Self.Tag].KeyNumber);

			Try
				iDx := GT_Service_no.IndexOf(sTmp);
			except
				sMsg := '해당 대표번호[' +GT_OrderInfo[Self.Tag].KeyNumber +']는' +#13#10
							+ 'IPCC에 착신설정이 되지 않은 대표번호 입니다.'+#13#10+#13#10
							+ sAndMsg; 
																																				
				GMessagebox(sMsg , CDMSE);
				exit;
			End;
			if iDx < 0 then
			begin
				sMsg := '해당 대표번호[' +GT_OrderInfo[Self.Tag].KeyNumber +']는' +#13#10
							+ 'IPCC에 착신설정이 되지 않은 대표번호 입니다.'+#13#10+#13#10
							+ sAndMsg;
																																				
				GMessagebox(sMsg , CDMSE);
				exit;
			end;
			str := Rpad(GT_Q_exten[iDx],  04, ' ') +    // 호분배 그룹 ( 9000 ~ 9999 까지)
						 Rpad(ACustTel       ,  32, ' ') +    // 수신거부 전화 번호
						 Rpad(ACustName      ,  64, ' ') +    // 수신거부 명
						 Rpad(ACounselID + '/' + ACounselName, 128, ' ') +    // 수신거부 설명
						 Rpad('5'            ,  01, ' ') ;    // 2: 호분배그룹만 거부, 5: 전체 거부

			iLen := Length(str);
			sSend := fSI_MakeHeader('6620', IntToStr(iLen)) + str;

			gJon03BlockIng := False;
			if not gSI415_C_Close then //softphone이 살아있으면
				Frm_Main.bSI415.Socket.SendText(sSend)
			else if not gSI415_A_Close then
			begin
				Frm_Main.bSI415_A.Socket.SendText(sSend);
				gJon03BlockIng := True;
			end	else
			begin
				sMsg := '해당 대표번호[' +GT_OrderInfo[Self.Tag].KeyNumber +']는' +#13#10
							+ 'IPCC에 착신설정이 되지 않은 대표번호 입니다.'+#13#10+#13#10
							+ sAndMsg;
				GMessagebox(sMsg , CDMSE);
				exit;
			end;  
		end else
		begin
      try
        if frm_Main.Tapi_CTI.Socket.Connected = True then
          frm_Main.Tapi_CTI.Active := False;

        frm_Main.Tapi_CTI.Host := GT_POSS_IP;
        frm_Main.Tapi_CTI.Port := 21859;
      except
        on e:Exception do
        begin
          ShowMessage('수신거부 Error:' + e.Message);
        end;
      end;

      try
        // 서버에 연결
        if frm_Main.Tapi_CTI.Socket.Connected = False then
          frm_Main.Tapi_CTI.Active := True;
      except
        on e:Exception do
        begin
          ShowMessage('Error Msg: ' + e.Message );
          Exit;
        end;
      end;

      StartTime := Now;

      while True do
      begin
        if (Now - StartTime) > (1 / 24 / 60 / 10) then
        begin
          break;
        end else
        begin
          Application.ProcessMessages;
          Sleep(200);
          if frm_Main.Tapi_CTI.Socket.Connected then
          begin
            break;
          end;
        end;
      end;

      if frm_Main.Tapi_CTI.Socket.Connected then
      begin
        SendStr := Format(PktType,
                    [
                      ReqCode,
                      ErrSucc,
                      Rpad(ACustTel, 15, ' '),
                      ACounselName,
											ACounselID,
											ACustName
                    ]);

        frm_Main.Tapi_CTI.Socket.SendText(SendStr);
      end else
			begin
				GMessagebox('수신거부등록 서버(CTI서버)에 연결 할 수 없습니다.', CDMSE)
			end;

			//CID 로 한번 더 보내기 20200406 KHS 팀장님지시
			if GS_COUNSEL_BLOCKCIDADD then
			begin
				sSelSvr := GS_EnvFile.ReadString('CID_COMM', 'CID_SELSVR', '1');

				if sSelSvr = '1' then sIp := GS_EnvFile.ReadString('CID_COMM', 'CID_IP', '')
												 else sIp := GS_EnvFile.ReadString('CID_COMM', 'CID_IP2', '');
				frm_Main.Tapi_CTI.Host := sIP;
				try
					if frm_Main.Tapi_CTI.Socket.Connected = True then
						frm_Main.Tapi_CTI.Active := False;

					frm_Main.Tapi_CTI.Host := sIP;
					frm_Main.Tapi_CTI.Port := 21860;
				except
					on e:Exception do
					begin
						ShowMessage('CID수신거부 Error:' + e.Message);
					end;
				end;

				try
					// 서버에 연결
					if frm_Main.Tapi_CTI.Socket.Connected = False then
						frm_Main.Tapi_CTI.Active := True;
				except
					on e:Exception do
					begin
						ShowMessage('Error Msg: ' + e.Message );
						Exit;
					end;
				end;

				StartTime := Now;

				while True do
				begin
					if (Now - StartTime) > (1 / 24 / 60 / 10) then
					begin
						break;
					end else
					begin
						Application.ProcessMessages;
						Sleep(200);
						if frm_Main.Tapi_CTI.Socket.Connected then
						begin
							break;
						end;
					end;
				end;

				if frm_Main.Tapi_CTI.Socket.Connected then
				begin
					SendStr := Format(PktType,
											[
												ReqCode,
												ErrSucc,
												Rpad(ACustTel, 15, ' '),
												ACounselName,
												ACounselID,
												ACustName
											]);

					frm_Main.Tapi_CTI.Socket.SendText(SendStr);
				end else
				begin
					GMessagebox('수신거부등록 서버(CID서버)에 연결 할 수 없습니다.', CDMSE)
				end;
			end;
		end;
  except
    on e:Exception do
    begin
      GMessagebox('수신거부등록에러: ' + e.Message , CDMSE);
    end;
  end;
end;

procedure Tfrm_JON03.proc_excel_NoSms;
var
  ls_TxLoad, sExcel: string;
begin
	SetDebugeWrite('JON03.proc_excel_NoSms');
  sExcel := '';
  if pm_Excel.Tag = 1 then
    sExcel := '접수현황(상세)'
  else
    if pm_Excel.Tag = 2 then
    sExcel := '접수현황(기본)';

  try
    frm_Main.SaveDialog1.FileName := sExcel;
    if pm_Excel.Tag = 1 then
    begin
			proc_excel;
    end
    else if pm_Excel.Tag = 2 then
    begin
      proc_excel_simple;
    end;
  except
    on e: exception do
    begin
      ls_TxLoad := 'Jon03[proc_excel_NoSms]:' + e.Message;
      Assert(False, E.Message);
      GMessagebox(PChar(ls_TxLoad), CDMSE);
    end;
  end;
end;

procedure Tfrm_JON03.proc_excel;
var
  ls_TxLoad, sStatus, sTmp: string;
  sBrNoStString, OptionString, KeyWordString, FromCity,
    FromWard, FromDate, ToDate, MyCall, MyDriver, RouteMS, sOwnerCall, sManualBaecha:
  string;
  i, iSlip: Integer;
  slReceive: TStringList;
  ErrCode: integer;
	AView: TcxGridDBTableView;
begin
	SetDebugeWrite('Frm_JON03.proc_excel');
  try
    sBrNoStString := '';
    OptionString := '';
    KeyWordString := '';
    FromCity := '';
    FromWard := '';
    FromDate := '';
    ToDate := '';
    MyCall := '';
		MyDriver :='';
    RouteMS := '';

    if Not pJON03Dock.bUnDock then pJON03Dock.BrNo  := GT_SEL_BRNO.BrNo;
    if Not pJON03Dock.bUnDock then pJON03Dock.GUBUN := GT_SEL_BRNO.GUBUN;

		sStatus := StringReplace(Func_CheckCondition, ' ', '', [rfReplaceAll]);

		if ( chk_MultiSearch.Checked )  And ( GS_COUNSEL_MULTICHECKSHOW )  then
		begin
			GetKeyTypeCodeList(OptionString, KeyWordString);

			// 빠른검색인 경우 전체 항목 체크시 검색어가 있을 경우에만 전체 항목 검색  2012-06-21 LYB추가
			if ( cb_All.Down ) And ( Trim(OptionString) <> '' ) then
			begin
				sStatus := StringReplace(Func_CheckCondition(2), ' ', '', [rfReplaceAll]);
				cb_All.Hint := 'Y';
			end;
		end else
		begin
      if gsSpeedSchHint <> '' then
      begin
				OptionString := GetKeyTypeCode(gsSpeedSchHint);
				// 법인명이 2개라서 빠른검색 법인명은 하드코딩 함.
//				if gsSpeedSchHint = '법인명' then OptionString := '15';
//				KeyWordString := Param_Filtering(gsSpeedSchText);

				if gsSpeedSchHint = '법인명' then
				begin
					if Trim(FBubInSelectedCode) <> '' then
					begin
						OptionString := '13';
						KeyWordString := Param_Filtering(Copy(Trim(FBubInSelectedCode), 1, Pos(',', FBubInSelectedCode) - 1))
					end else
					begin
						OptionString := '15';
						KeyWordString := Param_Filtering(gsSpeedSchText);
					end;
					// 법인명
					if Trim(FBubInSelectedCode) <> '' then
						sBrNoStString := Copy(Trim(FBubInSelectedCode), Pos(',', FBubInSelectedCode) + 1, Length(FBubInSelectedCode))
				end else
					KeyWordString := Param_Filtering(gsSpeedSchText);   

				if ( OptionString = '16' ) Or
           ( OptionString = '17' ) Or
					 ( OptionString = '19' ) or
					 ( OptionString = '27' ) or
					 ( OptionString = '29' ) then
				begin
  				GetKeyTypeCodeSingleEnter(gsSpeedSchHint, KeyWordString);
        end;
      end else
      begin
				if chk_Mileage.checked then        //마일리지
				begin
					OptionString := '33';
					KeyWordString := 'y';
				end else
				if chk_CMPSupportY.checked then   // 지원금
				begin
					OptionString := '34';
					KeyWordString := 'y';
				end else
				if chk_CMPSupportN.checked then  //, 지원금제외
				begin
					OptionString := '34';
					KeyWordString := 'n';
				end else
        if btnAppSch.Down then
        begin
          OptionString := '31';
          KeyWordString := 'A';
        end else
        begin
          GetKeyTypeCodeSingle(OptionString, KeyWordString);
        end;
      end;

			// 빠른검색인 경우 전체 항목 체크시 검색어가 있을 경우에만 전체 항목 검색  2012-06-21 LYB추가
      if ( cb_All.Down ) And ( Trim(OptionString) <> '' ) then
			begin
				sStatus := StringReplace(Func_CheckCondition(2), ' ', '', [rfReplaceAll]);
				cb_All.Hint := 'Y';
			end;
		end;

    case cxChkBC1.Tag of
      0 :  //전체
      begin
      
      end;
      1 :  //법인만
      begin
        if ( Pos('16', OptionString) = 0 ) And ( Pos('3', KeyWordString) = 0 ) then
        begin
          if OptionString = '' then
          begin
            OptionString := '16';
            KeyWordString := '''3''';
          end else
          begin
            OptionString := OptionString + '│' + '16';
            KeyWordString := KeyWordString + '│' + '''3''';
          end;
        end else
        if ( Pos('16', OptionString) > 0 ) And ( Pos('3', KeyWordString) = 0 ) then
        begin
          KeyWordString := KeyWordString + ',' + '''3''';
        end;
      end;
      2 : //법인만제외
      begin
        if ( Pos('16', OptionString) = 0 ) then
        begin
          if OptionString = '' then
          begin
            OptionString := '16';
            KeyWordString := 'n';
          end else
          begin
            OptionString := OptionString + '│' + '16';
            KeyWordString := KeyWordString + '│' + 'n';
          end;
        end else
        if ( Pos('16', OptionString) > 0 ) And ( Pos('n', KeyWordString) = 0 ) then
        begin
          KeyWordString := KeyWordString + ',' + 'n';
        end;
      end;
      
    end;

		if cxChkBC2.Down then  // 카드
    begin
      if ( Pos('17', OptionString) = 0 ) And ( Pos('7', KeyWordString) = 0 ) then
      begin
        if OptionString = '' then
        begin
          OptionString := '17';
          KeyWordString := '''7''';
        end else
        begin
          OptionString := OptionString + '│' + '17';
          KeyWordString := KeyWordString + '│' + '''7''';
        end;
      end else
      if ( Pos('17', OptionString) > 0 ) And ( Pos('7', KeyWordString) = 0 ) then
      begin
        KeyWordString := KeyWordString + ',' + '''7''';
      end;
    end;

		if cxChkBC3.Down then  // 후불
		begin
			if ( Pos('17', OptionString) = 0 ) then
			begin
				if OptionString = '' then
				begin
					OptionString := '17';
					KeyWordString := '''2'',''7'',''8''';
				end else
        begin
					OptionString := OptionString + '│' + '17';
					KeyWordString := KeyWordString + '│' + '''2'',''7'',''8''';;
				end;
			end else
			if ( Pos('17', OptionString) > 0 ) then
			begin
				KeyWordString := KeyWordString + ',' + '''2'',''7'',''8''';
			end;
		end;

		if cxChkBC4.Down then  // 탁콜
		begin
			if ( Pos('27', OptionString) = 0 ) And ( Pos('y', KeyWordString) = 0 ) then
			begin
				if OptionString = '' then
				begin
					OptionString := '27';
					KeyWordString := '''y''';
				end else
				begin
					OptionString := OptionString + '│' + '27';
					KeyWordString := KeyWordString + '│' + '''y''';
				end;
			end else
			if ( Pos('27', OptionString) > 0 ) And ( Pos('y', KeyWordString) = 0 ) then
			begin
				KeyWordString := KeyWordString + ',' + '''y''';
			end;
		end;

    //콜패스된 오더만 보여줌
    sTmp := '';
    if (GT_USERIF.UseCallPass) or (GT_USERIF.HD = 'A1531') then
    begin
      if btn_CPChk.Tag = 0 then sTmp := 'a'  else
      if btn_CPChk.Tag = 1 then sTmp := 'c';
      if sTmp <> '' then
      begin
        if OptionString = '' then 
        begin
          OptionString  := '99';
          KeyWordString := sTmp;
        end else
        begin
          OptionString := OptionString + '│' + '99';
          KeyWordString := KeyWordString + '│' + '''' + sTmp + '''';
        end;
      end;
    end;

    if cb_MyCall.Down then MyCall := '1'
                      else MyCall := '0';

		if cb_MyDriver.Down then	MyDriver := '1'
                      	else	MyDriver := '0';

    if pJON03Dock.GUBUN = '1' then  // 지사 선택
    begin
      if Trim(GS_CHECKBRLIST) = ''  then
        sBrNoStString := pJON03Dock.BrNo
      else
        sBrNoStString := GS_CHECKBRLIST;
    end else
    if pJON03Dock.GUBUN = '2' then RouteMS := GT_USERIF.RouteMS;

    if ( GS_BRLISTVIEWMODE ) And ( mLEFT_BRLISTVIEWHDCD <> '' ) then
    begin
      lg_BRLISTVIEW[Self.Tag] := '';
      for i := 0 to scb_HdCode.Count - 1 do
      begin
        if mLEFT_BRLISTVIEWHDCD = scb_HdCode[i] then
        begin
          if lg_BRLISTVIEW[Self.Tag] <> '' then lg_BRLISTVIEW[Self.Tag] := lg_BRLISTVIEW[Self.Tag] + ',';
          lg_BRLISTVIEW[Self.Tag] := lg_BRLISTVIEW[Self.Tag] + '''' + scb_BranchCode[i] + '''';
        end;
      end;
      sBrNoStString := lg_BRLISTVIEW[Self.Tag];
    end;

    sOwnerCall := '';
    sManualBaecha := '';

    if cb_Owner.Down then
      sOwnerCall := GT_USERIF.ID;

    if cb_ManualBaecha.Down then
      sManualBaecha := '0';

    ls_TxLoad := GTx_UnitXmlLoad('C002N1.XML');

    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString',     En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'AcceptExcel', [rfReplaceAll]);

    //오늘 또는 이전 날짜 조회 구분
    if FormatDateTime('yyyymmdd', dedt_Sdate.Date) <>
      Copy(StartDateTime('yyyymmddhhmmss'), 1, 8) then
    begin
      // 과거 데이터 조회.
      FromDate := formatDateTime('yyyymmdd', dedt_Sdate.Date) + '090000';
      ToDate := formatDateTime('yyyymmdd', dedt_Edate.Date) + '090000';
    end;

    if (Trim(KeyWordString) = '')
      and (FormatDateTime('yyyymmdd', dedt_Edate.Date) <> Copy(StartDateTime('yyyymmddhhmmss'), 1, 8))
      and ((formatdatetime('hhmm', now) >= '2100') or (formatdatetime('hhmm', now) <= '0100')) then
    begin
      GMessagebox('오후 9시부터 오전 1시에는 기간조회시 빠른검색을 하셔야 합니다.', CDMSE);
      dedt_Sdate.date := StrToDate(Date8to10(Copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      BtnYmdClose.Click;
      Exit;
		end;

    ls_TxLoad := StringReplace(ls_TxLoad, 'LevelString',      GT_USERIF.LV, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'CallCenterString', GT_USERIF.CT, [rfReplaceAll]);
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    begin
      if Not pJON03Dock.bUnDock then pJON03Dock.HdNo  := GT_SEL_BRNO.HdNo;
      if Not pJON03Dock.bUnDock then pJON03Dock.BrNo  := GT_SEL_BRNO.BrNo;

      if (Trim(GS_CHECKBRLIST) <> '') And ( pJON03Dock.GUBUN = '1' ) then
  			ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',     '', [rfReplaceAll])
      else
  			ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',     pJON03Dock.HDNO, [rfReplaceAll]);

      ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString',       pJON03Dock.BrNo, [rfReplaceAll]);
    end else
    begin
      ls_TxLoad := StringReplace(ls_TxLoad, 'HdNoString',       GT_USERIF.HD, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoString',       GT_USERIF.BR, [rfReplaceAll]);
    end;
    ls_TxLoad := StringReplace(ls_TxLoad, 'StatusCode',       sStatus, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'LastUpdateString', '', [rfReplaceAll]);

		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) And ( mLEFT_SectionIndex = 0 ) then     // 20120629 LYB
		begin
  		ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoStString',     'ALL', [rfReplaceAll])
		end
		else
			ls_TxLoad := StringReplace(ls_TxLoad, 'BrNoStString',     sBrNoStString,        [rfReplaceAll]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'RouteMSString',    RouteMS, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'OptionString',     OptionString, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'FromCityString',   FromCity, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'KeywordString',    KeyWordString, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'FromWardString',   FromWard, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'FromDateString',   FromDate, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ToDateString',     ToDate, [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'MyCall="MyCallString"', 'MyCall="MyCallString" MyDriver="MyDriverString"', [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'MyCallString',     MyCall,      [rfReplaceAll]);
		ls_TxLoad := StringReplace(ls_TxLoad, 'MyDriverString',   MyDriver,    [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'OwnerCallString',  En_Coding(sOwnerCall), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ManualBaechaString', sManualBaecha, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'DetailString',     '1', [rfReplaceAll]);

		if GS_JON03DetailExcelView then	AView := sg_xlsView else AView := sg_xls;
		AView.DataController.SetRecordCount(0);

    rb_Search.Enabled := True;
    Screen.Cursor := crDefault;
    slReceive := TStringList.Create;
    try
			if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 180000) then
      begin
        AView.BeginUpdate;
        if slReceive.Count > 0 then
        begin
          Frm_Flash.cxPBar1.Properties.Max := slReceive.Count - 1;

          for i := 0 to slReceive.Count - 1 do
          begin
            Application.ProcessMessages;
            Frm_Flash.cxPBar1.Position := i;
            Frm_Flash.lblCnt.Caption := IntToStr(i + 1) + '/' + IntToStr(slReceive.Count);
						if GS_JON03DetailExcelView then
						begin
							if not func_ExcelInsertView(slReceive.Strings[i]) then     //상세내역 접수현황리스트와 동일하게 처리
								break;
						end else
						begin
							if not func_ExcelInsert(slReceive.Strings[i]) then
								break;
						end;
          end;
        end;
				Application.ProcessMessages;
				if GS_JON03DetailExcelView then	  //상세내역 접수현황형태로
				begin
					proc_lap_timeExcel;
					AView.EndUpdate;
					Frm_Flash.cxPBar1.Position := 0;

					// 엑셀다운로드 권한(고객번호 숨김 체크)
					if GT_USERIF.Excel_Use = 'm' then
					begin
						AView.BeginUpdate;
						AView.Columns[giCustTel].Visible := False;
						AView.Columns[giCustTel2].Visible := False;
						AView.Columns[giCustTel].Width := 0;
						AView.Columns[giCustTel2].Width := 0;
						AView.EndUpdate;
						try
							if frm_Main.SaveDialog1.Execute then
							begin
								CustomExportGridToHTML(frm_Main.SaveDialog1.FileName, cxGrid11, False, True, 'XLS');
							end;
						finally
							AView.BeginUpdate;
							AView.Columns[giCustTel].Visible := True;
							AView.Columns[giCustTel2].Visible := True;
							AView.Columns[giCustTel].Width := 64;
							AView.Columns[giCustTel2].Width := 64;
							AView.EndUpdate;
						end;
					end else
					if GT_USERIF.Excel_Use = 'y' then
					begin
						if frm_Main.SaveDialog1.Execute then
						begin
							CustomExportGridToHTML(frm_Main.SaveDialog1.FileName, cxGrid11, False, True, 'XLS');
						end;
					end;
				end	else 
				begin
					iSlip := sg_xls.GetColumnByFieldName('접수번호').Index;
					proc_lap_timeExcel;      
				
					AView.Columns[iSlip].SortOrder := soDescending;
					AView.EndUpdate;
					Frm_Flash.cxPBar1.Position := 0;

					// 엑셀다운로드 권한(고객번호 숨김 체크)
					if GT_USERIF.Excel_Use = 'm' then
					begin
						AView.BeginUpdate;
						AView.Columns[3].Visible := False;
						AView.Columns[4].Visible := False;
						AView.Columns[3].Width := 0;
						AView.Columns[4].Width := 0;
						AView.EndUpdate;
						try
							if frm_Main.SaveDialog1.Execute then
							begin
								CustomExportGridToHTML(frm_Main.SaveDialog1.FileName, cxGrid1, False, True, 'XLS');
							end;
						finally
							AView.BeginUpdate;
							AView.Columns[3].Visible := True;
							AView.Columns[4].Visible := True;
							AView.Columns[3].Width := 64;
							AView.Columns[4].Width := 64;
							AView.EndUpdate;
						end;
					end else
					if GT_USERIF.Excel_Use = 'y' then
					begin
						if frm_Main.SaveDialog1.Execute then
						begin
							CustomExportGridToHTML(frm_Main.SaveDialog1.FileName, cxGrid1, False, True, 'XLS');
						end;
					end;
				end;
			end;
    finally
      FreeAndNil(slReceive);
      cxProgressBar1.Position := 0;
			Screen.Cursor := crDefault;
			tmr_search.Enabled := True;
      if btnAutoRe.Tag = 1 then
			begin
        AAutoSearch_Stop := False;
				tmr_dis.Enabled := True;
        PnlAuto.Visible := True;
      end;
			Frm_Flash.Hide;
      pnlBubin.Hide;
    end;
  except
    on e: exception do
    begin
      ls_TxLoad := 'Jon03[proc_excel]:' + e.Message;
      Assert(False, E.Message);
      GMessagebox(PChar(ls_TxLoad), CDMSE);
      Screen.Cursor := crDefault;
    end;
	end;
end;

procedure Tfrm_JON03.proc_excel_simple;
var
  I, iAccTime, iAccTime2,	iBaecha, iBaecha2, ifinish, ifinish2, iOrgDay, iCustTel, ColWidth : Integer;

	AView: TcxGridDBTableView;
	sTmp, sOrgDay, sAccTime : string;
begin
  SetDebugeWrite('Frm_JON03.proc_excel_simple');
  try
		AView := GetCurrentView;

    iAccTime    := AView.GetColumnByFieldName('접수시간').Index;
    iaccTime2   := AView.GetColumnByFieldName('접수시간2').Index;
    iBaecha     := AView.GetColumnByFieldName('배차시간').Index;
    iBaecha2    := AView.GetColumnByFieldName('배차시간2').Index;
    ifinish     := AView.GetColumnByFieldName('완료시간').Index;
    ifinish2    := AView.GetColumnByFieldName('완료시간2').Index;
    iCustTel    := AView.GetColumnByFieldName('고객번호').Index;
		iOrgDay     := AView.GetColumnByFieldName('기준일자').Index;

    ColWidth := 0;

    if frm_Main.SaveDialog1.Execute then
    begin
      // 접수시간/배차시간/완료시간에 연(Year)정보가 없을 경우 현재의 연정보로 엑셀에서 표시됨
      // 엑셀 다운 전 연정보 포함된 시간을 설정 후 엑셀 완료 후 다시 복원

			//기준일자 계산
			AView.BeginUpdate;
			AView.Columns[iOrgDay].Width := 80;
			AView.Columns[iOrgDay].Visible := True;
			//기준일자 계산
			if GT_USERIF.Excel_Use = 'm' then
			begin
				ColWidth := AView.Columns[iCustTel].Width;
				AView.Columns[iCustTel].Width := 0;
				AView.Columns[iCustTel].Visible := False;
			end;
			AView.EndUpdate;
			
			AView.BeginUpdate;
      for I := 0 to AView.DataController.RecordCount - 1 do
      begin
				AView.DataController.SetValue(I, iAccTime, GetStrToLongDateTimeStr(AView.DataController.GetValue(I, iAccTime2)));
				AView.DataController.SetValue(I, iBaecha , GetStrToLongDateTimeStr(AView.DataController.GetValue(I, iBaecha2)));
				AView.DataController.SetValue(I, ifinish , GetStrToLongDateTimeStr(AView.DataController.GetValue(I, ifinish2)));

				sAccTime := AView.DataController.GetValue(I, iAccTime);
				//매출일자 계산
				sTmp := StringReplace(sAccTime, ' ', '', [rfReplaceAll]); 
				sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]); 
				sTmp := StringReplace(sTmp, ':', '', [rfReplaceAll]); 
				sOrgDay := func_JON03SalesDate(sTmp);  
				AView.DataController.Values[I, iOrgDay] := sOrgDay;
				//매출일자 계산
			end;
			AView.EndUpdate;
			try
        CustomExportGridToHTML(frm_Main.SaveDialog1.FileName, GetCurrentGrid, False, True, 'XLS');
      finally
        AView.BeginUpdate;
        for I := 0 to AView.DataController.RecordCount - 1 do
        begin
          AView.DataController.SetValue(I, iAccTime, GetStrToDateTimeGStr(AView.DataController.GetValue(I, iAccTime2), GT_MAIN_VIEW_TIME1));
          AView.DataController.SetValue(I, iBaecha, GetStrToDateTimeGStr( AView.DataController.GetValue(I, iBaecha2), GT_MAIN_VIEW_TIME2));
          AView.DataController.SetValue(I, ifinish, GetStrToDateTimeGStr(AView.DataController.GetValue(I, ifinish2), GT_MAIN_VIEW_TIME3));
        end;
				//기준일자 계산
				AView.Columns[iOrgDay].Width := 0;
				AView.Columns[iOrgDay].Visible := False;
				//기준일자 계산
				AView.EndUpdate;
				if GT_USERIF.Excel_Use = 'm' then
        begin
          AView.BeginUpdate;
          AView.Columns[iCustTel].Width := ColWidth;
          AView.Columns[iCustTel].Visible := True;
          AView.EndUpdate;
        end;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON03.func_reservation(AHdNo, ABrNo, ASlip, AStCd, ACashType, ADeposit: string; iTag, iGubun : integer): Boolean;
var  xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_MSG_Err, ls_ClientKey: string;
	ls_TxLoad, sCd: string;
	sOrderInfo : TORDERINFO;
	rv_str: string;
	ls_rxxml: String;
	slReceive: TStringList;
	ErrCode: integer;
begin
	Result := False;
	Try
		SetDebugeWrite('JON03.func_reservation');

		if not func_check_CallCenter then Exit;

		if ( (Pos('후불', ACashType) > 0) Or
				 (Pos('즉후', ACashType) > 0) Or
				 (Pos('법후', ACashType) > 0) ) And
				 (iTag = 6) then // 후불오더 캐쉬부족 체크..
		begin
			gTmp := ''; gTmp_HD := ''; gTmp_BR := ''; gTmp_Slip := '';
			gTmp_BR := ABrNo;
			gTmp_HD := AHdNo;
			gTmp_Slip := ASlip;
		
			if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A1747') and (gTmp_BR = 'S954') then
			begin
				if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, StrToIntDef(ADeposit, 0), 0, gBrCharge, gBrSumCharge) then
				begin
					GMessagebox('지사캐쉬(0원미만)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
					Exit;
				end;
			end else
			if (GS_PRJ_AREA <> 'S') and ((GT_USERIF.ShareNo = 'G91') or (GT_USERIF.ShareNo = 'G58') or (gTmp_HD = 'A100') ) then
			begin                       
				if (GS_PRJ_AREA <> 'S') and ((gTmp_HD = 'A1891') or (gTmp_HD = 'A1897') or (gTmp_HD = 'A1756') or
																		 (gTmp_HD = 'A1763') or (gTmp_HD = 'A1768') or (gTmp_HD = 'A1757') or
																		 (gTmp_HD = 'A1844') or (gTmp_HD = 'A1752') or (gTmp_HD = 'A1853') or
																		 (gTmp_HD = 'A1771') or (gTmp_HD = 'A1822') or (gTmp_HD = 'A1753') or
																		 (gTmp_HD = 'A1866') or (gTmp_HD = 'A2014') or (gTmp_HD = 'A2010') or
																		 (gTmp_HD = 'A1769') or (gTmp_HD = 'A1772') or (gTmp_HD = 'A1905') or
																		 (gTmp_HD = 'A1946') or (gTmp_HD = 'A1764') or (gTmp_HD = 'A1879') or
																		 (gTmp_HD = 'A1948')) then
				begin
					if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, StrToIntDef(ADeposit, 0), -50000, gBrCharge, gBrSumCharge) then
					begin
						GMessagebox('지사캐쉬(-50,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
						Exit;
					end;
				end else
				if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A1745') then
				begin
					if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, StrToIntDef(ADeposit, 0), -100000, gBrCharge, gBrSumCharge) then
					begin
						GMessagebox('지사캐쉬(-100,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
						Exit;
					end;
				end	else
				if (GS_PRJ_AREA <> 'S') and (gTmp_HD = 'A2195') and (gTmp_BR = 'U589') then       //20170323 이명재대리요청
				begin
					if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, StrToIntDef(ADeposit, 0), 100000, gBrCharge, gBrSumCharge) then
					begin
						GMessagebox('지사캐쉬가 100,000원 이하일 경우 후불로 수정할 수 없습니다.', CDMSE);
						Exit;
					end;
				end else 
				begin
					if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, StrToIntDef(ADeposit, 0), -100000, gBrCharge, gBrSumCharge) then
					begin
						GMessagebox('지사캐쉬(-100,000원까지)가 부족하여 후불로 수정할 수 없습니다.', CDMSE);
						Exit;
					end;
				end;
			end else
			begin
				if not frm_main.func_BrCash_V2(gTmp_HD, gTmp_BR, gTmp_Slip, StrToIntDef(ADeposit, 0), 0, gBrCharge, gBrSumCharge) then
				begin
	{				gTmp := '해당지사의 캐시가 [%s]원으로 후불접수가 불가합니다' + #13#10 + #13#10
								+ '* 후불접수예정금액 : %s원' + #13#10
								+ '* 지사보유금액 : %s원' + #13#10
								+ '* 현재 후불접수합계 : %s원' + #13#10
					;
					GMessagebox(Format(gTmp, [StrToMoney(FloatToStr(gBrCharge))
																 ,  StrToMoney(FloatToStr(GT_OrderInfo[Self.Tag].Deposit))
																 ,  StrToMoney(FloatToStr(gBrCharge))
																 ,  StrToMoney(FloatToStr(gBrSumCharge))]), CDMSE);
	}				gTmp := '해당지사의 캐쉬가 [%s]원으로 후불접수가 불가합니다';
					GMessagebox(Format(gTmp, [StrToMoney(FloatToStr(gBrCharge))]), CDMSE);
					Exit;
				end;
			end;
		end;
	
		try
			ls_TxLoad := GTx_UnitXmlLoad('C007.XML');
			ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'JON03' + 'RESV000' + IntToStr(iTag), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString', ASlip, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString', AStCd, [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
			ls_TxLoad := StringReplace(ls_TxLoad, 'GubunCodeString', IntToStr(iTag), [rfReplaceAll]);

			slReceive := TStringList.Create;
			try
				if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
				begin
					rv_str := slReceive[0];
					if rv_str <> '' then
					begin
						ls_rxxml := rv_str;
						Application.ProcessMessages;
						xdom := ComsDomDocument.Create;
						try
							if not xdom.loadXML(ls_rxxml) then Exit;
							ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
							if ('0000' = ls_MSG_Err) then
							begin
								if (iTag = 5) and (iGubun = 0) then
									Result := func_reservation(AHdNo, ABrNo, ASlip, '5', ACashType, ADeposit, 6, 0)
								else if (iTag = 5) and (iGubun = 1) then Result := True
								else if iTag = 6 then Result := True;

							end;
						finally
							xdom := Nil;
						end;
					end;
				end;
			finally
				FreeAndNil(slReceive);
			end;
		except
			on E: Exception do
			begin
				Assert(False, E.Message);
				ls_TxLoad := 'Jon03[func_reservation]Error : ' + e.Message;
				GMessagebox(PChar(ls_TxLoad), CDMSE);
			end;
		end;
	except on E: Exception do
		Assert(False, E.Message);
	End;
end;

function TFrm_JON03.func_check_CallCenter(ASLIP: string): boolean;
var sBrNo : string;
	iBrIdx : integer;
	AView: TcxGridDBTableView;
	iRow : Integer;
	sKeyNumber, sCallcenter, sCallcenter2, sAccCenter : string;
	sSelInfo : string;
begin
	Result := False;
	icheck_CT_Flag := 0;

	///////////////////////////////선택한 오더와 현재 선택된 오더 비교/////////////////2016.08.17KHS
  try
		AView := GetCurrentView;
		iRow  := AView.DataController.FindRecordIndexByText(0, giSlip, ASLIP, False, True, True);
		if Trim(ASLIP) = '_' then Exit;

    if iRow >= 0 then
    begin
			sKeyNumber  := AView.DataController.Values[iRow, giKeyNum];
			sCallcenter := AView.DataController.Values[iRow, giCallcenter];
			if AView.DataController.Values[iRow, giCallcenter2] <> null then
				sCallcenter2 := AView.DataController.Values[iRow, giCallcenter2];
			sAccCenter := AView.DataController.Values[iRow, giAcccenter];
			///  타사콜 오더 취소 막음
      try
    		sBrNo := '';
        iBrIdx := -1;
				sBrNo := AView.DataController.Values[iRow, giBrNo];
    		iBrIdx := scb_BranchCode.IndexOf(sBrNo);

				if (Trim(ASLIP) <> '') and (Trim(sKeyNumber) <> '') then
    		begin
    			if ((GT_USERIF.LV = '60') and (iBrIdx >= 0)) or
    				 ((GT_USERIF.LV = '40') and (iBrIdx >= 0)) or
						 ((GT_USERIF.LV = '10') and ((Trim(sCallcenter) = GT_USERIF.CT) Or (Trim(sAccCenter) = GT_USERIF.CT)))
					then
    				Result := True
    			else
    				Result := False;
        end else
        begin
    			Assert(False, 'Frm_JON03.func_check_CallCenter - ' + sChCallMsg);
				end;
      except on E: Exception do
        Assert(False, E.Message);
      end;
    end;

  except on E: Exception do
    Assert(False, 'Frm_JON03.func_check_CallCenter - ' + E.Message);
  end;
end;

function Tfrm_JON03.func_ExcelInsert(ls_XML: string): Boolean;
var
  i: Integer;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  ls_MSG_Err, sAccDT, sBaecha, sfinish, sFirstTime, sSType, sGongType : string;
  ls_RV_Cnt, iaccTime, iRow, iCustTel, iCustTel2, iBaecha, ifinish, iCnt, iCust_Name,
	icharge, iFirstTime, iBigo, iMemo, iCustInfo, iCardAmt, iPayMethod: Integer;
	wsUName, sCardAMT, sTmp: string;
	sList, slTmp: TStringLIst;
  sM5006Tel, sM5006CuNm : string;
begin
	SetDebugeWrite('Frm_JON03.func_ExcelInsert');
  try
    xdom := ComsDomDocument.Create;
    try
      result := True;
      if not xdom.loadXML(ls_XML) then
			begin
        Result := False;
        rb_Search.Enabled := True;
        Exit;
      end;

      //-------------------------------------------------------------------------------
      //  전송결과 체크('0000' 성공 , 나머지는 에러
      //-------------------------------------------------------------------------------
      ls_MSG_Err := GetXmlErrorCode(ls_XML);
      //-------------------------------------------------------------------------------
      //  선택 Row Color 설정
      //-------------------------------------------------------------------------------
      if ('0000' = ls_MSG_Err) then
      begin
        ls_RV_Cnt := GetXmlRecordCount(ls_XML);
        //-------------------------------------------------------------------------------
        //  전송된 Row수 확인
        //-------------------------------------------------------------------------------
        if (0 < ls_RV_Cnt) then
        begin
          Application.ProcessMessages;

          //-------------------------------------------------------------------------------
          //  자료 조합시 필요한 정보 저장
          //-------------------------------------------------------------------------------
  				iAccTime    := sg_xls.GetColumnByFieldName('접수시간').Index;
  				iCnt        := sg_xls.GetColumnByFieldName('횟수').Index;
  				iCust_Name  := sg_xls.GetColumnByFieldName('고객명').Index;

  				iCustTel    := sg_xls.GetColumnByFieldName('고객번호').Index;
  				iCustTel2   := sg_xls.GetColumnByFieldName('고객번호2').Index;
  				iBaecha     := sg_xls.GetColumnByFieldName('배차시간').Index;
  				ifinish     := sg_xls.GetColumnByFieldName('완료시간').Index;
  				iFirstTime  := sg_xls.GetColumnByFieldName('최초접수시간').Index;
  				icharge     := sg_xls.GetColumnByFieldName('요금').Index;

  				iBigo       := sg_xls.GetColumnByFieldName('적요').Index;
  //				iBigo2      := sg_xls.GetColumnByFieldName('적요2').Index;
  				iMemo       := sg_xls.GetColumnByFieldName('메모').Index;
					iCustInfo   := sg_xls.GetColumnByFieldName('고객정보').Index;
					iCardAmt    := sg_xls.GetColumnByFieldName('카드금액').Index;
					iPayMethod    := sg_xls.GetColumnByFieldName('결제').Index;

          //-------------------------------------------------------------------------------
          //  일반조회
          //-------------------------------------------------------------------------------
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');
          ls_Rcrd := TStringList.Create;
          try
            for i := 0 to lst_Result.length - 1 do
            begin
              GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
  //            ls_Rcrd := GetTextSeperation('│', lst_Result.item[i].attributes.getNamedItem('Value').Text);
              try
                Application.ProcessMessages;
                iRow := sg_xls.DataController.AppendRecord;

                //목포콜센터m5000-3006 아이디의 경우 권한지사가 아니면 전화번호 감춤. 정회귀 탐장 요청
                sM5006Tel := '';  sM5006CuNm := '';                   
                if (GT_UserIf.ID = 'm5000-3007') and (GS_PRJ_AREA = 'O') then
                begin
                  if scb_BrNo_m5000.IndexOf(ls_Rcrd[34]) < 0 then 
                  begin
                    sM5006Tel := '010-****-****';
                    if ls_Rcrd[16] <> '' then sM5006CuNm := '***';
                  end;
                end;

  							sg_xls.DataController.Values[iRow, 0] := strtocall(ls_Rcrd[13]);
	              sg_xls.DataController.Values[iRow, 1] := ls_Rcrd[44];
                sg_xls.DataController.Values[iRow, 2] := ls_Rcrd[14];
                if sM5006Tel <> '' then
                  sg_xls.DataController.Values[iRow, 3] := sM5006Tel  	                // 3-고객번호1
                else
                  sg_xls.DataController.Values[iRow, 3] := ls_Rcrd[15];                          //고객변호
                  
                sg_xls.DataController.Values[iRow, 4] := ls_Rcrd[40];
                if sM5006CuNm <> '' then
                  sg_xls.DataController.Values[iRow, 5] := sM5006CuNm  	                // 4-고객명
                else
                  sg_xls.DataController.Values[iRow, 5] := ls_Rcrd[16];
                sg_xls.DataController.Values[iRow, 6] := StrToFloatDef(ls_Rcrd[19], 0);  // 횟수
                sg_xls.DataController.Values[iRow, 7] := ls_Rcrd[31];
                sg_xls.DataController.Values[iRow, 8] := ls_Rcrd[0];
                sg_xls.DataController.Values[iRow, 9] := ls_Rcrd[28];
                sg_xls.DataController.Values[iRow, 10] := StringReplace(ls_Rcrd[46], '()', '', [rfReplaceAll]);
                sg_xls.DataController.Values[iRow, 11] := ls_Rcrd[17];
                sg_xls.DataController.Values[iRow, 12] := '';
                sg_xls.DataController.Values[iRow, 13] := ls_Rcrd[39];
                sg_xls.DataController.Values[iRow, 14] := ls_Rcrd[42];
                sg_xls.DataController.Values[iRow, 15] := ls_Rcrd[4];
                sg_xls.DataController.Values[iRow, 16] := ls_Rcrd[5];
                sg_xls.DataController.Values[iRow, 17] := ls_Rcrd[6];
                sg_xls.DataController.Values[iRow, 18] := ls_Rcrd[7];
                sg_xls.DataController.Values[iRow, 19] := ls_Rcrd[21];
                sg_xls.DataController.Values[iRow, 20] := ls_Rcrd[8];
                sg_xls.DataController.Values[iRow, 21] := ls_Rcrd[9];
                sg_xls.DataController.Values[iRow, 22] := ls_Rcrd[10];
                sg_xls.DataController.Values[iRow, 23] := ls_Rcrd[11];
                sg_xls.DataController.Values[iRow, 24] := ls_Rcrd[23];
                sg_xls.DataController.Values[iRow, 25] := StrToFloatDef(ls_Rcrd[24], 0);  // 요금
                sg_xls.DataController.Values[iRow, 26] := ls_Rcrd[29];
                sg_xls.DataController.Values[iRow, 27] := ls_Rcrd[25];
                sg_xls.DataController.Values[iRow, 28] := ls_Rcrd[1];
                sg_xls.DataController.Values[iRow, 29] := ls_Rcrd[27];
                sg_xls.DataController.Values[iRow, 30] := ls_Rcrd[26];  //타기사가
                sg_xls.DataController.Values[iRow, 31] := ls_Rcrd[43];
                if (Pos('㉹',ls_Rcrd[26]) = 1) then
                  sg_xls.DataController.Values[iRow, 32] := '**********'    //휴대폰
                else
                  sg_xls.DataController.Values[iRow, 32] := strtocall(ls_Rcrd[2]);    //휴대폰

                if (Pos('㉹',ls_Rcrd[26]) = 1) then
                  sg_xls.DataController.Values[iRow, 33] := '**********'     //단말기
                else
                  sg_xls.DataController.Values[iRow, 33] := strtocall(ls_Rcrd[3]);    //단말기
                sg_xls.DataController.Values[iRow, 34] := ls_Rcrd[12];
                sg_xls.DataController.Values[iRow, 35] := ls_Rcrd[33];
                sg_xls.DataController.Values[iRow, 36] := ls_Rcrd[30];
                sg_xls.DataController.Values[iRow, 37] := ls_Rcrd[32];
                sg_xls.DataController.Values[iRow, 38] := ls_Rcrd[49];
                sg_xls.DataController.Values[iRow, 39] := '';
                sg_xls.DataController.Values[iRow, 40] := RemoveDatetimeSeparator(ls_Rcrd[52]);
								sg_xls.DataController.Values[iRow, 41] := ls_Rcrd[34]; //발주지사
								sg_xls.DataController.Values[iRow, 42] := ''; //플러스콜
  							sg_xls.DataController.Values[iRow, 43] := ls_Rcrd[54];
	  						sg_xls.DataController.Values[iRow, 44] := ls_Rcrd[58];  // 적요2
		  					sg_xls.DataController.Values[iRow, 45] := StrToFloatDef(ls_Rcrd[57], 0);  // 수수료
								sg_xls.DataController.Values[iRow, 46] := ls_Rcrd[61];  // 결제구분

								sCardAMT := '0';
								if ls_Rcrd.Count > 81 then    //ls_Rcrd[81] =  P8|10000 상태|승인금액 20181015KHS 위쪽 카드상태, 금액 주석처리 여기서 적용
								begin
									if ls_Rcrd[81] <> '' then
									begin
										slTmp := TStringList.Create;

										Try
											slTmp.Clear;
											slTmp.Delimiter := '|';
											slTmp.DelimitedText := ls_Rcrd[81];

											sg_xls.DataController.Values[iRow, 46] := slTmp[0]; // 카드결제구분
											if slTmp[0] = 'P8' then
											begin
												sg_xls.DataController.Values[iRow, iPayMethod] := ls_Rcrd[29] + '-승인완료';

												if ( pos('(카드)', ls_Rcrd[29]) > 0 ) Or ( pos('복합', ls_Rcrd[29]) > 0 )  then sCardAMT := slTmp[1];
											end;
										finally
											slTmp.Free;
										End;
									end;
								end;
								sg_xls.DataController.Values[iRow, iCardAmt] := sCardAMT; //카드금액

								if ls_Rcrd.Count > 61 then
									sg_xls.DataController.Values[iRow, 47] := fGetBaechaTypeName(ls_Rcrd[62]);  // 배차구분

                if ls_Rcrd.Count > 62 then sg_xls.DataController.Values[iRow, 48] := StrToIntDef(ls_Rcrd[63], 0);  // [63]고객마일리지
                if ls_Rcrd.Count > 63 then sg_xls.DataController.Values[iRow, 49] := StrToIntDef(ls_Rcrd[64], 0);  // [64]이벤트횟수
                if ls_Rcrd.Count > 64 then
                begin
                  if Trim(ls_Rcrd[65]) <> '' then
    								sg_xls.DataController.Values[iRow, 50] := 'Y'     // [65] CU_CALL_DATE 고객통화여부
                  else
										sg_xls.DataController.Values[iRow, 50] := '';
                end;

								if ls_Rcrd.Count > 65 then sg_xls.DataController.Values[iRow, 51] := ls_Rcrd[66];  // [66] 배차거리

  							if ls_Rcrd.Count > 66 then
                begin
									if (StrToIntDef(ls_Rcrd[67], 0) > 0) and (StrToIntDef(ls_Rcrd[68], 0) > 0) then // [67]기사시작나이, [68]기사종료나이
										sg_xls.DataController.Values[iRow, 51] := ls_Rcrd[67] + '~' + ls_Rcrd[68] + '세까지'
									else if (StrToIntDef(ls_Rcrd[67], 0) > 0) and (StrToIntDef(ls_Rcrd[68], 0) < 1) then
                    sg_xls.DataController.Values[iRow, 51] := ls_Rcrd[67] + '세이상'
									else if (StrToIntDef(ls_Rcrd[67], 0) < 1) and (StrToIntDef(ls_Rcrd[68], 0) > 0) then
										sg_xls.DataController.Values[iRow, 51] := ls_Rcrd[68] + '세이하';
								end;

                if ls_Rcrd.count > 99 then     // 법인프리미엄/일반구분 vip/normal
                  sSType := ls_Rcrd[99];

                if ls_Rcrd.Count > 68 then
                begin
  		  					sg_xls.DataController.Values[iRow, 52] := ls_Rcrd[69];  // [69]적요3
                  if ls_Rcrd.count > 100 then     // 공유여부- y(공유중) , n(공유종료), x(공유실패), null(fail Match)
                  begin
                    if (ls_Rcrd[100] = 'y') Or (ls_Rcrd[100] = 'n') then // y(공유중) , n(공유종료)
                    begin
                      if sSType = 'vip' then
                        sg_xls.DataController.Values[iRow, 52] := _SERVICE_TYPE_VIP + ls_Rcrd[69] else    //57-적요3
                      if sSType = 'normal' then
                        sg_xls.DataController.Values[iRow, 52] := _SERVICE_TYPE_CHANGE + ls_Rcrd[69] 	    //57-적요3
                      else
                        sg_xls.DataController.Values[iRow, 52] := _SERVICE_TYPE_SPACE + ls_Rcrd[69]; 	    //57-적요3
                    end;
                  end;
                end;

                if ls_Rcrd.Count > 69 then
  		  					sg_xls.DataController.Values[iRow, 53] := ls_Rcrd[70];  // [70]거리
								if ls_Rcrd.Count > 72 then
									sg_xls.DataController.Values[iRow, 54] := ls_Rcrd[72];  // [72]수정상담원

								if ls_Rcrd.Count > 82 then
								begin
									if ls_Rcrd[70] = 'y' then
									sg_xls.DataController.Values[iRow, 58] := '탁송연합콜' else //탁송연합콜
									sg_xls.DataController.Values[iRow, 58] := ''; //탁송연합콜
								end;
								if ls_Rcrd.Count > 83 then
								begin
									sg_xls.DataController.Values[iRow, 59] := '';//ls_Rcrd[71];//리콜여부
								end;
								sg_xls.DataController.Values[iRow, 60] := StrToFloatDef(ls_Rcrd[84], 0);//경비지급
								sg_xls.DataController.Values[iRow, 61] := '';//기준일자 20200423 KHS

								sg_xls.DataController.Values[iRow, 62] := GetStrToDateTimeGStr(ls_Rcrd[86], 3);//운행시작시간  ls_Rcrd[85] D콜
								sg_xls.DataController.Values[iRow, 63] := GetStrToLongDateTimeStr(ls_Rcrd[49]);    // 24 최초접수시간고정

                if ls_Rcrd.count > 100 then     // 공유여부  공유여부는체크삭제/ 어떤공유인지만 표시
                begin
									if (ls_Rcrd[100] = 'y') Or (ls_Rcrd[100] = 'n') then // y(공유중) , n(공유종료)
									begin
                    if sSType = 'vip'    then sGongType := 'V' else
                    if sSType = 'normal' then sGongType := 'N'
                                         else sGongType := '';

                    sg_xls.DataController.Values[iRow, 64] := sGongType;     // 102.공유여부
                  end;
                end;
								sTmp := '';
								if ls_Rcrd.Count > 81 then    //ls_Rcrd[81] =  P8|10000 상태|승인금액 20181015KHS 위쪽 카드상태, 금액 주석처리 여기서 적용
								begin
									sTmp := '';
									if ls_Rcrd[81] <> '' then  //P8 : 승인, C8: 취소(미결제), E8 : 결제오류(미결제) 
									begin
										slTmp := TStringList.Create;
										Try
											slTmp.Clear;
											slTmp.Delimiter := '|';
											slTmp.DelimitedText := ls_Rcrd[81];
													
											if slTmp[0] = ''   then sTmp := ''         else
											if slTmp[0] = 'P8' then sTmp := '승인'     else
											if slTmp[0] = 'C8' then sTmp := '취소'     else
											if slTmp[0] = 'E8' then sTmp := '결제오류' else sTmp := '미결제';
										finally
											slTmp.Free;
										End;
									end;     
								end;
								sg_xls.DataController.Values[iRow, 65] := sTmp;

								sg_xls.DataController.Values[iRow, 66] := StrToFloatDef(ls_Rcrd[77], 0);// 지급

								if ls_Rcrd.count > 101 then     // 101 지원금
								begin
									sg_xls.DataController.Values[iRow, 67] := StrToIntDef(ls_Rcrd[101], 0);
								end;
								if ls_Rcrd.count > 102 then     // 102 기타지급금
								begin
									sg_xls.DataController.Values[iRow, 68] := StrToIntDef(ls_Rcrd[102], 0);
								end;
								if ls_Rcrd.count > 103 then     // 103 지원(지원횟수)
								begin
									sg_xls.DataController.Values[iRow, 69] := StrToIntDef(ls_Rcrd[103], 0);
								end;

								if (ls_Rcrd[100] = 'y') then sTmp := '공유중' else
								if (ls_Rcrd[100] = 'n') then sTmp := '공유종료' else sTmp := '';
									sg_xls.DataController.Values[iRow, 72] := sTmp;  // 101 KM공유(여부)

								if ls_Rcrd.count > 105 then      // 104 건당보혐료무료
								begin
									if (ls_Rcrd[105] = 'y') then sTmp := '보험료무료'
									else sTmp := '';
									sg_xls.DataController.Values[iRow, 73] := sTmp; 
								end;
//   							if ls_Rcrd.Count > 73 then
//									sg_xls.DataController.Values[iRow, 55] := ls_Rcrd[73];  // [73]콜마너2

                //타사콜인경우 * 마킹
                // GT_USERIF.LV = '60' : 본사관리자
                // GT_USERIF.LV = '40' : 지사관리자
                // GT_USERIF.LV = '10' : 상담원

                if ((GT_USERIF.LV = '60') and (scb_BranchCode.IndexOf(ls_Rcrd[34]) < 0))
                  or ((GT_USERIF.LV = '40') and ((Trim(ls_Rcrd[34]) <> GT_USERIF.BR)))          // 35.콜센터, 41. 접수콜센터
                  or ((GT_USERIF.LV = '10') and (((Trim(ls_Rcrd[35]) <> GT_USERIF.BR) And (Trim(ls_Rcrd[41]) <> GT_USERIF.BR)) or IsCustInfoDayOpen(ls_Rcrd[34], ls_Rcrd[49]))) then
  							begin
                  // 고객명
                  wsUName := Trim(sg_xls.DataController.Values[iRow, iCust_Name]);
                  if wsUName <> '' then
                    sg_xls.DataController.Values[iRow, iCust_Name] := '***';
  								// 이용횟수
                  if Trim(sg_xls.DataController.Values[iRow, iCnt]) <> '' then
  									sg_xls.DataController.Values[iRow, iCnt] := '99999';
  								// 적요
  								if Trim(sg_xls.DataController.Values[iRow, iBigo]) <> '' then
                    sg_xls.DataController.Values[iRow, iBigo] := '****';
                  // 메모
                  if Trim(sg_xls.DataController.Values[iRow, iMemo]) <> '' then
                    sg_xls.DataController.Values[iRow, iMemo] := '****';
                  // 고객정보
  								if Trim(sg_xls.DataController.Values[iRow, iCustInfo]) <> '' then
  									sg_xls.DataController.Values[iRow, iCustInfo] := '****';
  								// 적요2
  //								if Trim(sg_xls.DataController.Values[iRow, iBigo2]) <> '' then
  //									sg_xls.DataController.Values[iRow, iBigo2] := '****';
                end;

                // 접수시간
                sAccDt := sg_xls.DataController.Values[iRow, iAccTime];
                //DD-HH24:MI
                if (length(sAccDt) <> 11) and (sAccDt <> '') then
                begin
                  sAccDT := GetStrToLongDateTimeStr(sAccDT);
                  sg_xls.DataController.Values[iRow, iAccTime] := sAccDt;
                end;
                // 배차시간
                sBaecha := sg_xls.DataController.Values[iRow, iBaecha];
                if (Length(sBaecha) <> 11) and (sBaecha <> '') then
                begin
                  sBaecha := GetStrToLongDateTimeStr(sBaecha);
                  sg_xls.DataController.Values[iRow, iBaecha] := sBaecha;
                end;
                // 완료시간
                sfinish := sg_xls.DataController.Values[iRow, ifinish];
                if (Length(sfinish) <> 11) and (sfinish <> '') then
                begin
                  sfinish := GetStrToLongDateTimeStr(sfinish);
                  sg_xls.DataController.Values[iRow, ifinish] := sfinish;
                end;
                // 최초접수시간
                sFirstTime := sg_xls.DataController.Values[iRow, iFirstTime];
                if (Length(sFirstTime) <> 11) and (sFirstTime <> '') then
                begin
                  sFirstTime := GetStrToLongDateTimeStr(sFirstTime);
                  sg_xls.DataController.Values[iRow, iFirstTime] := sFirstTime;
                end;

                // 고객번호 마킹 ( 고객번호, 접수시간, 지사코드, 실제지사코드)
                sg_xls.DataController.Values[iRow, iCustTel] :=
                  func_Cust_Tel(sg_xls.DataController.Values[iRow, iCustTel],
                                sg_xls.DataController.Values[iRow, iAccTime], ls_Rcrd[34], ls_Rcrd[41]);
                if sg_xls.DataController.Values[iRow, iCustTel2] <> '' then
                  sg_xls.DataController.Values[iRow, iCustTel2] :=
                    func_Cust_Tel(sg_xls.DataController.Values[iRow, iCustTel2],
                                  sg_xls.DataController.Values[iRow, iAccTime], ls_Rcrd[34], ls_Rcrd[41]);

                sg_xls.DataController.Values[iRow, icharge] := FormatFloat('#,##0',
                  StrToFloatDef(sg_xls.DataController.Values[iRow, icharge], 0.0));
              except
              end;
              // for end
            end;
          finally
            ls_Rcrd.Free;
          end;
          //마지막 페이지 체크
          if UpperCase(GetXmlHasMore(ls_XML)) = 'N' then
					begin
            result := False;
          end; // 접수창에서 조회
        end;
      end else
      begin
        Result := False;
      end;
    finally
      xdom := Nil;
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
			Result := False;
      rb_Search.Enabled := True;
    end;
  end;
end;

function Tfrm_JON03.func_ExcelInsertView(ls_XML: string): Boolean;
	procedure proc_SetGridRowAdd(AView: TcxGridDBTableView; ARow, ACol, AValueIdx : Integer; AValue : Variant );
	var sTmp : string;
	begin
		Try
			AView.DataController.Values[ARow, ACol] := AValue;
		except
			on E: Exception do
			begin
				sTmp := 'proc_SetGridRowAdd: AValueIdx=[' + IntToStr(AValueIdx) + ']  ' + e.Message;
				Assert(False, sTmp);
//				GMessagebox(PChar(sTmp), CDMSE);
			end;   			
		end;
	end; 	

	function _GetJONCodeToIndex(ACode: string): string;
	begin
    Result :='';
    //ini파일에 StatusSort항목이 없을 경우(대기, 예약, 접수, 배차중, 배차, 강제, 취소, 문의 순)
    //ini파일에 StatusSort항목이 있을 경우 설정 순으로 정렬
    //if GS_EnvFile.SectionExists('StatusSort') then
     case ACode[1] of              // a: 1234(string) > a[1] : 1
        '5': Result := GS_EnvFile.ReadString('StatusSort', '대기',  '0');
        'R': Result := GS_EnvFile.ReadString('StatusSort', '예약',  '1');
        '0': Result := GS_EnvFile.ReadString('StatusSort', '접수',  '2');
        'C', 'M' : Result := GS_EnvFile.ReadString('StatusSort', '근배',  '3');
        'B': Result := GS_EnvFile.ReadString('StatusSort', '배차중','4');
        '3': Result := GS_EnvFile.ReadString('StatusSort', '강제',  '5');
        '1': Result := GS_EnvFile.ReadString('StatusSort', '배차',  '6');
        'D': Result := GS_EnvFile.ReadString('StatusSort', '운행',  '7');
        '2': Result := GS_EnvFile.ReadString('StatusSort', '완료',  '8');
        '8': Result := GS_EnvFile.ReadString('StatusSort', '취소',  '9');
        '4': Result := GS_EnvFile.ReadString('StatusSort', '문의',  'A');
		 end;
	end;

	//2010.08.10 상태 정렬 관련 수정 lej  <-----
	procedure _SetTimeFormat(AView: TcxGridDBTableView; ARow, ACol: Integer);
	var
		Temp: string;
	begin
		if AView.DataController.Values[ARow, ACol] = Null then Exit;

		try
			Temp := AView.DataController.Values[ARow, ACol];
			if ACol = giAccTime    then Temp := GetStrToDateTimeGStr(Temp, GT_MAIN_VIEW_TIME1) else
			if ACol = giBaecha     then Temp := GetStrToDateTimeGStr(Temp, GT_MAIN_VIEW_TIME2) else
			if ACol = giFinishTime then Temp := GetStrToDateTimeGStr(Temp, GT_MAIN_VIEW_TIME3) else
			if ACol = giStartTime  then Temp := GetStrToDateTimeGStr(Temp, GT_MAIN_VIEW_TIME4) else
			if ACol = giFirstTime  then Temp := GetStrToDateTimeGStr(Temp, GT_MAIN_VIEW_TIME5);
			AView.DataController.Values[ARow, ACol] := Temp;
		except
		end;
	end;
var
	i, iTCnt, iEcN, tmpAmt : Integer; //iEcN 엑셀용 조회결과 갯수
	xdom: msDomDocument;
	lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	ls_MSG_Err, sAccDT, sBaecha, sfinish, sFirstTime, sSType, sGongType : string;
	ls_RV_Cnt, iaccTime, iRow, iCustTel, iCustTel2, iBaecha, ifinish, iCnt, iCust_Name, iTmp,
	icharge, iFirstTime, iBigo, iMemo, iCustInfo, iCardAmt, iPayMethod, irealbrno: Integer;
	wsUName, wsBigo, wsBigo2, wsCarInfo, sCardAMT, sTmp: string;
	sList, slTmp: TStringLIst;
	sWkPosition, sCaller, sUpCaller : string;
	AView: TcxGridDBTableView ;
  sM5006Tel, sM5006CuNm : string;
begin
	SetDebugeWrite('Frm_JON03.func_ExcelInsertView');
  try
    xdom := ComsDomDocument.Create;
		try
      result := True;
      if not xdom.loadXML(ls_XML) then
			begin
        Result := False;
        rb_Search.Enabled := True;
        Exit;
			end;

      //-------------------------------------------------------------------------------
      //  전송결과 체크('0000' 성공 , 나머지는 에러
      //-------------------------------------------------------------------------------
      ls_MSG_Err := GetXmlErrorCode(ls_XML);
      //-------------------------------------------------------------------------------
      //  선택 Row Color 설정
      //-------------------------------------------------------------------------------
      if ('0000' = ls_MSG_Err) then
			begin
        ls_RV_Cnt := GetXmlRecordCount(ls_XML);
        //-------------------------------------------------------------------------------
        //  전송된 Row수 확인
        //-------------------------------------------------------------------------------
        if (0 < ls_RV_Cnt) then
        begin
          Application.ProcessMessages;

					AView := sg_xlsView; 
					//-------------------------------------------------------------------------------
          //  자료 조합시 필요한 정보 저장
          //-------------------------------------------------------------------------------
					iAccTime    := AView.GetColumnByFieldName('접수시간').Index;
					iCnt        := AView.GetColumnByFieldName('횟수').Index;
					iCust_Name  := AView.GetColumnByFieldName('고객명').Index;

					iCustTel    := AView.GetColumnByFieldName('고객번호').Index;
					iCustTel2   := AView.GetColumnByFieldName('고객번호2').Index;
					iBaecha     := AView.GetColumnByFieldName('배차시간').Index;
					ifinish     := AView.GetColumnByFieldName('완료시간').Index;
					iFirstTime  := AView.GetColumnByFieldName('최초접수시간').Index;
					icharge     := AView.GetColumnByFieldName('요금').Index;

					irealbrno   := AView.GetColumnByFieldName('실제등록콜센터').Index;
					iBigo       := AView.GetColumnByFieldName('적요').Index;

					// 컬럼 인덱스 저장
//					for i := 0 to AView.ColumnCount - 1 - 12 do
//					for i := 0 to AView.ColumnCount - 1 - 13 do //거리 추가
					for i := 0 to AView.ColumnCount - 1 - 14 do
						aiAccTitle[i] := AView.GetColumnByFieldName(lb_Title_List.Items.Strings[i]).Index;

					//-------------------------------------------------------------------------------
          //  일반조회
          //-------------------------------------------------------------------------------
					// 엑셀조회시에만 추가조회결과 기사메모11│카카오대리(X012)│01011111112││서울│송파구│문정동│테라타워2│서울│강서구│내발산동│발산역 5호선
					iEcN := 12;
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');
          ls_Rcrd := TStringList.Create;
          try
						for i := 0 to lst_Result.length - 1 do
						begin
              GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
  //            ls_Rcrd := GetTextSeperation('│', lst_Result.item[i].attributes.getNamedItem('Value').Text);
							try
								Application.ProcessMessages;
                iRow := AView.DataController.AppendRecord;
								//마지막 91 + 12(엑셀용) = 마지막13
								AView.DataController.Values[iRow, aiAccTitle[24]] := ''; //지난시간
								AView.DataController.Values[iRow, aiAccTitle[28]] := dt_ServerTime[Self.Tag];  // 29 현재시간
								AView.DataController.Values[iRow, aiAccTitle[46]] := ''; //배차경과
								AView.DataController.Values[iRow, aiAccTitle[77]] := '';//기준일자
								sCardAMT := '0';
								sTmp := ''; sCaller := ''; sUpCaller := '';
								//for 문으로 사용했지만 팀장님 지시로 제거 20200521KHS
								//마지막 -  ls_Rcrd[74] 운행시작시간
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[22],  0, ls_Rcrd[0+iEcN]);                    // 0-접수번호
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 0],  1, strtocall(ls_Rcrd[1+iEcN])); 	      // 1-대표번호
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 2],  2, ls_Rcrd[2+iEcN]); 	                  // 2-상태정렬값
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[51],  2, _GetJONCodeToIndex(ls_Rcrd[2+iEcN]));// 2-상태정렬값

                //목포콜센터m5000-3006 아이디의 경우 권한지사가 아니면 전화번호 감춤. 정회귀 탐장 요청
                sM5006Tel := '';  sM5006CuNm := '';                   
                if (GT_UserIf.ID = 'm5000-3007') and (GS_PRJ_AREA = 'O') then
                begin
                  if scb_BrNo_m5000.IndexOf(ls_Rcrd[22+iEcN]) < 0 then 
                  begin
                    sM5006Tel := '010-****-****';
                    if ls_Rcrd[4+iEcN] <> '' then sM5006CuNm := '***';
                  end;
                end;

                if sM5006Tel <> '' then
                  proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 3],  3, sM5006Tel)  	                // 3-고객번호1
                else
  								proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 3],  3, ls_Rcrd[3+iEcN]); 	                 // 3-고객번호1
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[45],  3, ls_Rcrd[3+iEcN]);                    // 3-고객번호1
                
                if sM5006CuNm <> '' then
                  proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 4],  4, sM5006CuNm)  	                // 4-고객명
                else
								  proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 4],  4, ls_Rcrd[4+iEcN]);                    // 4-고객명

								proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 6],  5, ls_Rcrd[5+iEcN]);                    // 5-접수시간2
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[32],  5, ls_Rcrd[5+iEcN]);                    // 5-접수시간2
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 7],  6, ls_Rcrd[6+iEcN]);                    // 6-경과시간
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 5],  7, StrToIntDef(ls_Rcrd[7+iEcN], 0)); 	  // 7-횟수
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[30],  8, ls_Rcrd[8+iEcN]); 									  // 8-출발지1
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[10],  9, ls_Rcrd[9+iEcN]);                    // 9-출발지
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[31], 10, ls_Rcrd[10+iEcN]); 								  //10-도착지1
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[11], 11, ls_Rcrd[11+iEcN]);                   //11-도착지
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[12], 12, ls_Rcrd[12+iEcN]);                   //12-요금

								sUpCaller := ls_Rcrd[60+iEcN];
								sTmp      := ls_Rcrd[13+iEcN];
								if GS_IDNAME = 0 then
								begin
									if ( sUpCaller = '' ) then sCaller := ls_Rcrd[13+iEcN] else	sCaller := ls_Rcrd[13+iEcN] + '/' + ls_Rcrd[60+iEcN];
								end else
								begin
									if ( sUpCaller = '' ) then
									begin
										//  copy(ls_Rcrd[13], 1, Pos('(',ls_Rcrd[13]) - 1)        //접수자 이름 감춤
										if Pos('(',ls_Rcrd[13+iEcN]) > 0 then sCaller := Copy(sTmp, Pos('(',sTmp) + 1, Pos(')',sTmp) - Pos('(',sTmp) - 1) //접수자 이름 감춤
																										 else sCaller := ls_Rcrd[13+iEcN];  //접수자
									end else
									begin
										// copy(ls_Rcrd[13], 1, Pos('(',ls_Rcrd[13]) - 1)  + '/' +  copy(ls_Rcrd[60], 1, Pos('(',ls_Rcrd[60]) - 1)        //접수자 이름 감춤
										if Pos('(',ls_Rcrd[13+iEcN]) > 0 then sCaller := Copy(sTmp, Pos('(',sTmp) + 1, Pos(')',sTmp) - Pos('(',sTmp) - 1) + '/' +
																																		 Copy(sUpCaller, Pos('(',sUpCaller) + 1, Pos(')',sUpCaller) - Pos('(',sUpCaller) - 1)        //접수자 이름 감춤
																										 else sCaller := ls_Rcrd[13+iEcN]+ls_Rcrd[60+iEcN];  //접수자
									end;
								end;

								proc_SetGridRowAdd(AView, iRow, aiAccTitle[13], 13, sCaller);                       //13-접수자
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[14], 14, ls_Rcrd[14+iEcN]);                   //14-기사명
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[15], 15, ls_Rcrd[15+iEcN]);                   //15-기사사번
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[18], 16, ls_Rcrd[16+iEcN]); 	                //16-고객구분
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[20], 17, ls_Rcrd[17+iEcN]); 	                //17-결제

								if GB_COUNSEL_TITLE_VIEW1 then
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[17], 18, ls_Rcrd[20+iEcN] + ' ' + ls_Rcrd[18+iEcN])  //18 적요( 취소사유 + 적요 )
								else
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[17], 18, ls_Rcrd[18+iEcN]);                     //18 적요

								proc_SetGridRowAdd(AView, iRow, aiAccTitle[27], 19, ls_Rcrd[19+iEcN]); 	                //19-메모
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[21], 20, ls_Rcrd[20+iEcN]);                   //20-취소사유
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[25], 21, ls_Rcrd[21+iEcN]);                   //21-공유
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[26], 22, ls_Rcrd[22+iEcN]);                   //22-발주지사
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[29], 23, ls_Rcrd[23+iEcN]); 	                //23-콜센타코드
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[33], 24, ls_Rcrd[24+iEcN]); 	                //24-기사본사코드
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[34], 25, ls_Rcrd[25+iEcN]); 	                //25-기사지사코드
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[35], 26, ls_Rcrd[26+iEcN]); 	                //26-기사콜센터
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 8], 27, ls_Rcrd[27+iEcN]); 	                //27-배차시간
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[41], 27, ls_Rcrd[27+iEcN]); 	                //27-배차시간2
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[36], 28, ls_Rcrd[28+iEcN]);                   //28-고객번호2
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[57], 28, ls_Rcrd[28+iEcN]); 	                //28-고객번호22
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[37], 29, ls_Rcrd[29+iEcN]);										//29-실제등록콜센터
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 9], 30, ls_Rcrd[30+iEcN]); 	                //30-완료시간
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[42], 30, ls_Rcrd[30+iEcN]);                   //30-완료시간
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[16], 31, sWkPosition); 	                //31-기사위치

								if GB_COUNSEL_TITLE_VIEW2 then
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 1], 32, ls_Rcrd[32+iEcN] + ' ' + strtocall(ls_Rcrd[1+iEcN])) //32-발주지사명+ 대표번호
								else
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[ 1], 32, ls_Rcrd[32+iEcN]); 	                //32-발주지사명

								proc_SetGridRowAdd(AView, iRow, aiAccTitle[38], 33, ls_Rcrd[33+iEcN]); 				          //33-법인코드
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[19], 34, StringReplace(ls_Rcrd[34+iEcN], '()', '', [rfReplaceall])); 	//34-법인명
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[39], 35, ls_Rcrd[35+iEcN]); 	                //35-공유콜
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[40], 36, ls_Rcrd[36+iEcN]);                   //36-고객코드
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[23], 37, ls_Rcrd[37+iEcN]); 	                //37-최초접수시간
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[79], 37, GetStrToLongDateTimeStr(ls_Rcrd[37+iEcN]));  //37-최초접수시간고정
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[43], 38, ls_Rcrd[38+iEcN]);                   //38-출발지X
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[44], 39, ls_Rcrd[39+iEcN]);                   //39-출발지Y
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[47], 40, RemoveDatetimeSeparator(ls_Rcrd[40+iEcN]));  //40-수정시간
								sTmp := '';
								if GS_STARTDONG then sTmp := RemoveDatetimeSeparator(ls_Rcrd[41+iEcN]) else
								begin
									slTmp := TStringList.Create;
									Try
										GetTextSeperationEx('/', RemoveDatetimeSeparator(ls_Rcrd[41+iEcN]), slTmp);
										if slTmp.Count < 2 then sTmp := RemoveDatetimeSeparator(ls_Rcrd[41+iEcN])  // 출발지 시군구
										else sTmp := slTmp[1];  // 출발지 시군구
									finally
										slTmp.Free;
									end;
								end;
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[48], 41, sTmp);                                   //41-출발지(시군구)
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[49], 42, ls_Rcrd[42+iEcN]);                            //42-DNIS
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[50], 43, ls_Rcrd[43+iEcN]); 	                         //43-사용자고객등급코드
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[59], 43, fGetCustName(ls_Rcrd[43+iEcN]));              //43-사용자고객등급코드
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[52], 44, ls_Rcrd[44+iEcN]);                            //44-플러스콜 여부(y,n)
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[53], 45, StrToIntDef(ls_Rcrd[45+iEcN], 0));            //45-기사수수료
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[54], 46, ls_Rcrd[46+iEcN]);                            //46-적요2
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[55], 47, ls_Rcrd[47+iEcN]); 	                         //47-접수구분(A:어플접수 , 공백:상담원)
								//ls_Rcrd[48], ls_Rcrd[49] 사용안함
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[58], 50, fGetBaechaTypeName(ls_Rcrd[50+iEcN]));        //50-배차구분
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[60], 51, StrToIntDef(ls_Rcrd[51+iEcN], 0));            //51-고객마일리지
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[61], 52, StrToIntDef(ls_Rcrd[52+iEcN], 0));            //52-이벤트횟수
								//ls_Rcrd[53] 사용안함
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[63], 54, ls_Rcrd[54+iEcN]); 	                         //54-배차거리
								sTmp := '';
								if (StrToIntDef(ls_Rcrd[55+iEcN], 0) > 0) and (StrToIntDef(ls_Rcrd[56+iEcN], 0) > 0) then              //55~56-나이제한
									sTmp := ls_Rcrd[55+iEcN] + '~' + ls_Rcrd[56+iEcN] + '세까지'
								else if (StrToIntDef(ls_Rcrd[55+iEcN], 0) > 0) and (StrToIntDef(ls_Rcrd[56+iEcN], 0) < 1) then
									sTmp := ls_Rcrd[55+iEcN] + '세이상'
								else if (StrToIntDef(ls_Rcrd[55+iEcN], 0) < 1) and (StrToIntDef(ls_Rcrd[56+iEcN], 0) > 0) then
									sTmp := ls_Rcrd[56+iEcN] + '세이하';
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[64], 55, sTmp);                                   //55~56-나이제한

								if ls_Rcrd.count > 87+iEcN then     // 법인프리미엄/일반구분 vip/normal
									sSType := ls_Rcrd[87+iEcN];

								proc_SetGridRowAdd(AView, iRow, aiAccTitle[65], iTCnt, ls_Rcrd[57+iEcN]); 	                      //57-적요3
								if ls_Rcrd.count > 88+iEcN then     // 공유여부- y(공유중) , n(공유종료), x(공유실패), null(fail Match)
								begin
									if (ls_Rcrd[88+iEcN] = 'y') Or (ls_Rcrd[88+iEcN] = 'n') then // y(공유중) , n(공유종료)
									begin
										if sSType = 'vip' then
											proc_SetGridRowAdd(AView, iRow, aiAccTitle[65], iTCnt, _SERVICE_TYPE_VIP + ls_Rcrd[57+iEcN]) else    //57-적요3
										if sSType = 'normal' then
											proc_SetGridRowAdd(AView, iRow, aiAccTitle[65], iTCnt, _SERVICE_TYPE_CHANGE + ls_Rcrd[57+iEcN]) 	    //57-적요3
										else
											proc_SetGridRowAdd(AView, iRow, aiAccTitle[65], iTCnt, _SERVICE_TYPE_SPACE + ls_Rcrd[57+iEcN]) 	    //57-적요3
									end;
								end;

								//ls_Rcrd[58] 사용안함 , ls_Rcrd[59]-콜마너2,
								if GS_IDNAME = 0 then sCaller := ls_Rcrd[60+iEcN] else                                            //60-수정상담원
								begin
									if Pos('(',ls_Rcrd[60+iEcN]) > 0 then
										sCaller := Copy(ls_Rcrd[60+iEcN], Pos('(',ls_Rcrd[60+iEcN]) + 1, Pos(')',ls_Rcrd[60+iEcN]) - Pos('(',ls_Rcrd[60+iEcN]) - 1) // copy(ls_Rcrd[60], 1, Pos('(',ls_Rcrd[60]) - 1)        //수정상담원 이름 감춤
									else
										sCaller := ls_Rcrd[60+iEcN];  //수정상담원
								end;
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[66], 60, sCaller);                                //60-수정상담원
								sTmp := '';
								if ls_Rcrd[61+iEcN] = 'y' then sTmp := '승인'   else
								if ls_Rcrd[61+iEcN] = 'n' then sTmp := '미승인' else sTmp := ls_Rcrd[61+iEcN] ;
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[68], iTCnt, sTmp); 	                             //61-법인오더 승인여부
								sTmp := '';
								if ls_Rcrd[62+iEcN] = '1' then sTmp := '콜벨오더' else
								if ls_Rcrd[62+iEcN] = '2' then sTmp := ''         else sTmp := ls_Rcrd[62+iEcN] ;
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[69], 62, sTmp); 	                                 //62- 콜벨오더여부
								//ls_Rcrd[63], ls_Rcrd[64] 사용안함
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[70], 65, StrToIntDef(ls_Rcrd[65+iEcN], 0));            //65-기사입금액
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[71], 66, ls_Rcrd[66+iEcN]);                            //66-발주본사
								sTmp := '';
								if ( Copy(ls_Rcrd[67+iEcN], 1, 1) = '2' ) Or ( Copy(ls_Rcrd[67+iEcN], 1, 1) = '6' ) then
									sTmp := ls_Rcrd[67+iEcN] + '분' else sTmp := ls_Rcrd[67+iEcN];
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[72], 67, sTmp); 	                                 //67-후불충전
								// 숫자 앞에 공백을 한 이유 : 이미지와 겹쳐지는걸 막기 위해
								sTmp := ls_Rcrd[68+iEcN];                                                                         //68-고객통화여부
								if Copy(sTmp, 1, 1) = '1' then sTmp := '① ' else
								if Copy(sTmp, 1, 1) = '2' then sTmp := '② ' else
								if Copy(sTmp, 1, 1) = 'c' then sTmp := 'ⓒ ' else
								if Copy(sTmp, 1, 1) = 'a' then sTmp := 'ⓐ ';
								sTmp := sTmp + Copy(ls_Rcrd[68+iEcN], 2, Length(ls_Rcrd[68+iEcN]) - 1);
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[62], 68, '☎'+sTmp); 	                         //68-고객통화여부
								//69-//상태|승인금액 20181015KHS 위쪽 카드상태, 금액 주석처리 여기서 적용
								if ls_Rcrd[69+iEcN] <> '' then
								begin
									slTmp := TStringList.Create;
									Try
										slTmp.Clear;
										slTmp.Delimiter := '|';
										slTmp.DelimitedText := ls_Rcrd[69+iEcN];

										proc_SetGridRowAdd(AView, iRow, aiAccTitle[56], 69, slTmp[0]); // 카드결제구분
										if slTmp[0] = 'P8' then
										begin
											proc_SetGridRowAdd(AView, iRow, aiAccTitle[20], 69, ls_Rcrd[17+iEcN] + '-승인완료');
											if ( pos('(카드)', ls_Rcrd[17+iEcN]) > 0 ) Or ( pos('복합', ls_Rcrd[17+iEcN]) > 0 ) then sCardAMT := slTmp[1];
										end;
									finally
										slTmp.Free;
									End;
								end else
								begin
									AView.DataController.Values[iRow, aiAccTitle[56]] := '';
								end;
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[73], 69, sCardAMT);                             //69-//상태|승인금액
								if ls_Rcrd[70+iEcN] = 'y' then sTmp := '탁송연합콜' else sTmp := '';
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[74], 70, sTmp);                                 //70- 탁송연합콜


                sTmp := ls_Rcrd[71+iEcN];   // 리콜 여부 = AI_OUT_OPTION || ',' || AI_OUT_MEMO 형식변경
                if ( Pos(',', sTmp) > 0 ) And (( Trim(Copy(sTmp, 1, 1)) = ',' ) Or ( Copy(sTmp, 1, 1) = 'y' ) Or ( Copy(sTmp, 1, 1) = 'n' )) then
                begin
                  if Trim(sTmp) = 'y,' then sTmp := '활성' else
                  if Trim(sTmp) = 'n,' then sTmp := '비활성' else
                  if ( Trim(Copy(sTmp, 1, 1)) = ',' ) then
                  begin
                    // 대표번호별 AI-OB사용여부체크
                    if not GetAIOBKeyNumberYN(ls_Rcrd[1+iEcN]) then sTmp := '비활성' else
                    if Trim(Copy(sTmp, 3, 1)) = ''  then sTmp := '활성'
                                                    else sTmp := '활성' + sTmp;
                  end else
                  if ( Copy(sTmp, 1, 1) = 'y' ) then sTmp := StringReplace(sTmp, 'y', '활성'  , [rfReplaceAll]) else
                  if ( Copy(sTmp, 1, 1) = 'n' ) then
                  begin
                    if Trim(Copy(sTmp, 3, 1)) = ''  then sTmp := '비활성'
                                                    else sTmp := StringReplace(sTmp, 'n', '비활성', [rfReplaceAll]);
                  end;
                end;
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[75], 71, sTmp);                          //71-리콜여부
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[76], 72, StrToFloatDef(ls_Rcrd[72+iEcN], 0));        //72-경비지급
								//ls_Rcrd[73] D콜
								if ls_Rcrd.count > 74+iEcN then
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[78], 74, GetStrToDateTimeGStr(ls_Rcrd[74+iEcN], 3)); //74-운행시작시간
								if ls_Rcrd.count > 75+iEcN then     // 도착지X좌표
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[80], 75, ls_Rcrd[75+iEcN]);                   //38-도착지X
								if ls_Rcrd.count > 76+iEcN then     // 도착지Y좌표
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[81], 76, ls_Rcrd[76+iEcN]);                   //38-도착지Y
								if ls_Rcrd.count > 77+iEcN then     // 후불금액
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[82], 77, StrToIntDef(ls_Rcrd[77+iEcN], 0));                   //77-후불요금
								if ls_Rcrd.count > 78+iEcN then     // 카드금액
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[83], 78, StrToIntDef(ls_Rcrd[78+iEcN], 0));                   //78-카드요금
								if ls_Rcrd.count > 79+iEcN then     // 마일금액
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[84], 79, StrToIntDef(ls_Rcrd[79+iEcN], 0));                   //79-마일요금
								if ls_Rcrd.count > 80+iEcN then     // 콜링지사
								begin
									if Trim(ls_Rcrd[80+iEcN]) = '' then
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[85], 80, ls_Rcrd[22+iEcN])                  //22-발주지사
									else
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[85], 80, ls_Rcrd[80+iEcN]);                 //80-콜링지사
								end;
								if ls_Rcrd.count > 81+iEcN then     // 콜링대표번호
								begin
									if Trim(ls_Rcrd[82+iEcN]) = '' then
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[86], 81, ls_Rcrd[32+iEcN])                  //32-발주지사명
									else
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[86], 81, ls_Rcrd[81+iEcN]);                 //81-콜링지사명
								end;
								if ls_Rcrd.count > 82+iEcN then     // 콜링대표번호
								begin
									if Trim(ls_Rcrd[82+iEcN]) = '' then
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[87], 82, strtocall(ls_Rcrd[01+iEcN]))       //01-대표번호
									else
										proc_SetGridRowAdd(AView, iRow, aiAccTitle[87], 82, strtocall(ls_Rcrd[82+iEcN]));      //82-콜링대표번호
								end;
								if ls_Rcrd.count > 83 then     // 콜센터2
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[90], 83, ls_Rcrd[83+iEcN]);                   //83-콜센터2
								if ls_Rcrd.count > 84 then     // 복수콜번호
								begin
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[91], 84, ls_Rcrd[84+iEcN]);                   //84-복수콜번호

								end;
								if ls_Rcrd.count > 85+iEcN then     // 취소시간
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[92], 85, ls_Rcrd[85+iEcN])                    //85-취소시간
								else
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[92], 85, ''         );

								if ls_Rcrd.count > 86+iEcN then     // 보정요금
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[93], 86, StrToIntDef(ls_Rcrd[86+iEcN], 0))    //86-보정요금
								else
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[93], 86, 0          );

								if ls_Rcrd.count > 87+iEcN then     // 법인프리미엄/일반구분 vip/normal/space
									sSType := ls_Rcrd[87+iEcN];

								proc_SetGridRowAdd(AView, iRow, aiAccTitle[94], 87, ''         );
								if ls_Rcrd.count > 88+iEcN then     // 공유여부  공유여부는체크삭제/ 어떤공유인지만 표시
								begin
									if (ls_Rcrd[88+iEcN] = 'y') Or (ls_Rcrd[88+iEcN] = 'n') then // y(공유중) , n(공유종료)
									begin
										if sSType = 'vip'    then sGongType := 'V' else
										if sSType = 'normal' then sGongType := 'N'
																				 else sGongType := '';

										proc_SetGridRowAdd(AView, iRow, aiAccTitle[94], 87, sGongType  );     // 88.공유여부
									end;
								end;

								//69-//상태|승인금액 20181015KHS 위쪽 카드상태, 금액 주석처리 여기서 적용
								sTmp := '';
								if ls_Rcrd[69+iEcN] <> '' then  //P8 : 승인, C8: 취소(미결제), E8 : 결제오류(미결제) 
								begin
									slTmp := TStringList.Create;
									Try
										slTmp.Clear;
										slTmp.Delimiter := '|';
										slTmp.DelimitedText := ls_Rcrd[69+iEcN];
													
										if slTmp[0] = ''   then sTmp := ''         else
										if slTmp[0] = 'P8' then sTmp := '승인'     else
										if slTmp[0] = 'C8' then sTmp := '취소'     else
										if slTmp[0] = 'E8' then sTmp := '결제오류' else sTmp := '미결제';
									finally
										slTmp.Free;
									End;
								end;     
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[95], 88, sTmp);    // 95 카드승인 20210708 KHS

								proc_SetGridRowAdd(AView, iRow, aiAccTitle[96], 89, 0);
								if ls_Rcrd.count > 89+iEcN then     
								begin
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[96], 89, StrToIntDef(ls_Rcrd[89+iEcN], 0));  // 96 지원금
								end;
										
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[97], 90, 0);
								if ls_Rcrd.count > 90+iEcN then     
								begin
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[97], 90, StrToIntDef(ls_Rcrd[90+iEcN], 0));  // 97 기타지급금
								end;
										
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[98], 91, 0);
								if ls_Rcrd.count > 91+iEcN then     
								begin
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[98], 91, StrToIntDef(ls_Rcrd[91+iEcN], 0));  // 98 지원(지원횟수)
								end;
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[99], 93, ls_Rcrd[13+iEcN]);  // 99//'sntest(콜마너1)'

								if ls_Rcrd.count > 92+iEcN then
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[102], 92, ls_Rcrd[92+iEcN])  // 100 배차지연시간
								else
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[102], 92, '');

								if (ls_Rcrd[88+iEcN] = 'y') then sTmp := '공유중' else
								if (ls_Rcrd[88+iEcN] = 'n') then sTmp := '공유종료' else sTmp := '';
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[103], 93, sTmp);          // 101 KM공유(여부)

								proc_SetGridRowAdd(AView, iRow, aiAccTitle[104], 94, '');
								if ls_Rcrd.count > 93+iEcN then     
								begin
									if (ls_Rcrd[93+iEcN] = 'y') then sTmp := '보험료무료'
									else sTmp := '';
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[104], 94, sTmp);  // 102 건당보혐료무료
								end;
								
								proc_SetGridRowAdd(AView, iRow, aiAccTitle[105], 95, '');
								if ls_Rcrd.count > 94+iEcN then     
								begin
									proc_SetGridRowAdd(AView, iRow, aiAccTitle[105], 95, ls_Rcrd[94+iEcN]);  // 103 odb_wk_sabun
								end;

                // 현금 = 12-요금 - (77-후불요금 + 78-카드요금 + 79-마일요금)
                tmpAmt := StrToIntDef(ls_Rcrd[12+iEcN], 0) - ( StrToIntDef(ls_Rcrd[77+iEcN], 0) + StrToIntDef(ls_Rcrd[78+iEcN], 0) + StrToIntDef(ls_Rcrd[79+iEcN], 0) );

                // 현금
                proc_SetGridRowAdd(AView, iRow, aiAccTitle[106], 96, tmpAmt);                   //106-현금

                // 콜패스여부
                if ls_Rcrd.count > 95+iEcN then     
                begin
                  iTmp := StrToIntDef(ls_Rcrd[95+iEcN], 0);
                  if iTmp > 0 then sTmp := '콜패스' else sTmp := '';
                  proc_SetGridRowAdd(AView, iRow, aiAccTitle[107], 97, sTmp);                   //107-콜패스여부
                end;
								
//*********************그리드 항목 추가 시 아래 고정 항목의 셀 순서도 함께 변경 해아합니다. 중요!!!*********************                
//*********************접수현황에 추가한 필드는 여기도 꼭 추가.  visible false 여도 추가!!!*********************                
								
{               엑셀상세 추가 12개 정보
								고객정보	기사소속지사명	단말기	휴대폰	출발지1	출발지2	출발지3	출발지4	도착지1	도착지2	도착지3	도착지4
								기사메모11	카카오대리(X012)	1011111112		서울	송파구	문정동	테라타워2	서울	강서구	내발산동	발산역 5호선
}
								//엑셀검색 전용 조회 결과는 맨 뒤로 이동
								proc_SetGridRowAdd(AView, iRow, 108, 108, ls_Rcrd[0]);  // 99 고객정보
								proc_SetGridRowAdd(AView, iRow, 109, 109, ls_Rcrd[1]);  // 100 기사소속지사명
								proc_SetGridRowAdd(AView, iRow, 110, 110, ls_Rcrd[2]);  // 101 단말기
								proc_SetGridRowAdd(AView, iRow, 111, 111, ls_Rcrd[3]);  // 102 휴대폰
								proc_SetGridRowAdd(AView, iRow, 112, 112, ls_Rcrd[4]);  // 103 출발지1
								proc_SetGridRowAdd(AView, iRow, 113, 113, ls_Rcrd[5]);  // 104 출발지2
								proc_SetGridRowAdd(AView, iRow, 114, 114, ls_Rcrd[6]);  // 105 출발지3
								proc_SetGridRowAdd(AView, iRow, 115, 115, ls_Rcrd[7]);  // 106 출발지4
								proc_SetGridRowAdd(AView, iRow, 116, 116, ls_Rcrd[8]);  // 107 도착지1
								proc_SetGridRowAdd(AView, iRow, 117, 117, ls_Rcrd[9]);  // 108 도착지2
								proc_SetGridRowAdd(AView, iRow, 118, 118, ls_Rcrd[10]); // 109 도착지3
								proc_SetGridRowAdd(AView, iRow, 119, 119, ls_Rcrd[11]); // 110 도착지4
								proc_SetGridRowAdd(AView, iRow, 120, 120, '');          // 111 기준일자
                //기준일자 계산
                sTmp := ls_Rcrd[5+iEcN];				
                sTmp := StringReplace(sTmp, ' ', '', [rfReplaceAll]); 
                sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]); 
                sTmp := StringReplace(sTmp, ':', '', [rfReplaceAll]); 
                sTmp := func_JON03SalesDate(sTmp);  
								proc_SetGridRowAdd(AView, iRow, 120, 120, sTmp);                // 111 기준일자
        				//기준일자 계산

        				//거리 추가
								proc_SetGridRowAdd(AView, iRow, 121, 121, ls_Rcrd[58+iEcN]);    // 112 거리

//								if ((GT_USERIF.LV = '60') and (scb_BranchCode.IndexOf(ls_Rcrd[34+iEcN]) < 0))
//									or ((GT_USERIF.LV = '40') and ((Trim(ls_Rcrd[34+iEcN]) <> GT_USERIF.BR)))          // 35.콜센터, 41. 접수콜센터
//									or ((GT_USERIF.LV = '10') and (((Trim(ls_Rcrd[35+iEcN]) <> GT_USERIF.BR) And (Trim(ls_Rcrd[41+iEcN]) <> GT_USERIF.BR)) or IsCustInfoDayOpen(ls_Rcrd[34+iEcN], ls_Rcrd[49+iEcN]))) then

								if ((GT_USERIF.LV = '60') and (scb_BranchCode.IndexOf(ls_Rcrd[22+iEcN]) < 0)) or
									 ((GT_USERIF.LV = '40') and ((Trim(ls_Rcrd[22+iEcN]) <> GT_USERIF.BR))) or
									 ((GT_USERIF.LV = '10') and (((Trim(ls_Rcrd[23+iEcN]) <> GT_USERIF.BR) And (Trim(ls_Rcrd[29+iEcN]) <> GT_USERIF.BR)) or    // 23.콜센터, 29.실제등록콜센터
									 IsCustInfoDayOpen(ls_Rcrd[22+iEcN], ls_Rcrd[5+iEcN]))) then

								begin
									// 고객명
									wsUName := Trim(AView.DataController.Values[iRow, giCustNm]);
									if wsUName <> '' then
										AView.DataController.Values[iRow, giCustNm] := '***';
									// 적요
									wsBigo := Trim(AView.DataController.Values[iRow, giBigo]);
									if wsBigo <> '' then
										AView.DataController.Values[iRow, giBigo] := '*****';
									// 적요2
									wsBigo2 := Trim(AView.DataController.Values[iRow, giBigo2]);
									if wsBigo2 <> '' then
										AView.DataController.Values[iRow, giBigo2] := '*****';
									// 이용횟수
									if Trim(AView.DataController.Values[iRow, giCnt]) <> '' then
										AView.DataController.Values[iRow, giCnt] := '99999';

									AView.DataController.Values[iRow, giCustTel]  := '***-****-****';
									AView.DataController.Values[iRow, giCustTel2] := '***-****-****';

									if Pos('(',ls_Rcrd[13+iEcN]) > 0 then
										AView.DataController.Values[iRow, giReceipter] := copy(ls_Rcrd[13+iEcN], 1,Pos('(',ls_Rcrd[13+iEcN]) - 1) ;       //접수자 이름 감춤
								end	else
								begin
									// 고객번호 마킹 ( 고객번호, 접수시간, 지사코드, 실제지사코드)
									AView.DataController.Values[iRow, giCustTel] :=
											func_Cust_Tel(
												AView.DataController.Values[iRow, giCustTel],
												AView.DataController.Values[iRow, giAccTime2],
												AView.DataController.Values[iRow, giBrNo],
												AView.DataController.Values[iRow, irealbrno]);

									AView.DataController.Values[iRow, giCustTel2] :=
											func_Cust_Tel(
												AView.DataController.Values[iRow, giCustTel2],
												AView.DataController.Values[iRow, giAccTime2],
												AView.DataController.Values[iRow, giBrNo],
												AView.DataController.Values[iRow, irealbrno]);
								end;												
								// [설정] 시간보기 형식
								_SetTimeFormat(AView, iRow, giAccTime);      // 접수시간
								_SetTimeFormat(AView, iRow, giBaecha);       // 배차시간
								_SetTimeFormat(AView, iRow, giFinishTime);   // 완료시간
								_SetTimeFormat(AView, iRow, giStartTime);    // 운행시작시간

								// 최초접수시간
								AView.DataController.Values[iRow, giFirstTime] := GetStrToLongDateTimeStr(AView.DataController.Values[iRow, giFirstTime]);
								_SetTimeFormat(AView, iRow, giFirstTime);     // 최초접수시간

								
								AView.DataController.Values[iRow, icharge] := FormatFloat('#,##0',
									StrToFloatDef(AView.DataController.Values[iRow, icharge], 0.0));
              except
              end;
              // for end
            end;
          finally
            ls_Rcrd.Free;
          end;
          //마지막 페이지 체크
          if UpperCase(GetXmlHasMore(ls_XML)) = 'N' then
          begin
						result := False;
          end; // 접수창에서 조회
        end;
      end else
      begin
        Result := False;
      end;
    finally
      xdom := Nil;
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
      Result := False;
      rb_Search.Enabled := True;
    end;
  end;
end;

procedure TFrm_JON03.CallBellViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
	ARow: Integer;
	FirstDatetime: string;
begin
	SetDebugeWrite('Frm_JON03.CallBellViewCellDblClick');

	try
		ARow := CallBellView.DataController.FocusedRecordIndex;
		if ARow < 0 then Exit;

		if CallBellView.DataController.RecordCount = 0 then
		begin
			GB_JON03SELECT_GB := True;
			Exit;
		end;

    if IsMenuOpen(Sender) then Exit;

		tmr_dis.Enabled := False;
    PnlAuto.Visible := False;

		if (Trim(CallBellView.DataController.Values[ARow, giSlip]) <> '') and
			 (Trim(CallToStr(CallBellView.DataController.Values[ARow, giKeyNum])) <> '') then
		begin
			if (TCK_USER_PER.JON_Order = '1') then// and func_check_CallCenter then
			begin
				if ARow > -1 then
				begin
					if Assigned(CallBellView.GetColumnByFieldName('접수시간2')) then
					begin
						FirstDatetime := CallBellView.DataController.Values[ARow, giAccTime2];
						cxGrid6.Enabled := False;
						Frm_Main.AcceptFromCreate(Trim(CallBellView.DataController.Values[ARow, giSlip]), FirstDatetime, '수정', Self.Tag);

						CallBellView.DataController.DeleteRecord(ARow);
						if CallBellView.DataController.RecordCount < 1 then
							grpSetCallBellList.Visible := False;
					end;
				end;
			end else
      begin
        GB_JON03SELECT_GB := True;
//				N12Click(N12);
      end;
    end;
	except on E: Exception do
		begin
			cxGrid6.Enabled := True;
			Assert(False, E.Message);
		end;
	end;
end;

procedure Tfrm_JON03.CallPassToInsung(ATel: string);
var
	WinH : HWND;
	iCnt: Integer;
	fRect : TRect;
	iMainX, iMainY, iMainMenuX, iMainMenuY : Integer;
begin
  SetDebugeWrite('JON03.CallPassToInsung');
  try
  	// 전화번호 복사하기..
    clipboard.settextbuf(Pchar(ATel));

    // 메인창 핸들값 구하기..
  	WinH := FindAllWindowHandle('FNWND380','인성대리2008', True);
  	if WinH > 0 then begin
      // 인성 프로그램 좌표 설정.
      getWindowRect(WinH, fRect);
      // 접수버튼 위치값 설정.
      iMainX := fRect.Left + 975;
      iMainY := fRect.Top  + 105;

  		// 접수창 띄우기..  2013-11-05.
      ProcMouseLeftClick(iMainX, iMainY);
      // 접수창 뜨는시간동안 대기..(약 1.5초)
      Sleep(500);

      iCnt := 0;
      WinH := 0;
      While ((iCnt < 7) and (WinH = 0)) do begin
  			WinH := FindAllWindowHandle('FNWNS380','접수상세현황신규', True);
        Sleep(500);
        iCnt := iCnt + 1;
      end;

      if WinH > 0 then begin
        // 접수창의 위치값을 찾는다.
        getWindowRect(WinH, fRect);
        // 팝업메뉴 위치값 설정.
  			iMainMenuX := fRect.Left + 71;
        iMainMenuY := fRect.Top  + 59;

        // HP 입력란 클릭..  2013-11-05.
        ProcMouseLeftClick(iMainMenuX, iMainMenuY);
        Sleep(50);
        // 붙여넣기 클릭..
  			ClipBdPaste2;
  			Sleep(100);
  			// 엔터 키 이벤트를 날린다.
  			SendPressEnter;

      end else begin
        ShowMessage('인성프로그램 "접수창" 을 찾을 수 없습니다.');
  		end;
    end else begin
      ShowMessage('인성프로그램이 실행 되어있지 않습니다.');
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Tfrm_JON03.GetKeyTypeValue(ACode: string): string;
var
	I, j: Integer;
	ls_Rcrd : TStringList;
	sTemp : string;
begin
  SetDebugeWrite('JON03.GetKeyTypeValue');
  try
  	Result := '';
  	sTemp := '';
  	if pos('│', ACode) > 0 then
  	begin
  		ls_Rcrd := TStringList.Create;
      try
    		GetTextSeperationEx2('│', ACode, ls_Rcrd);
    		for j := 0 to ls_Rcrd.Count-1 do
    		begin
					for I := 0 to Length(KeyTypeValue) - 1 do
    			begin
    				if KeyTypeValue[I].Code = ls_Rcrd[j] then
    				begin
    					if sTemp = '' then
    						sTemp := KeyTypeValue[I].Value
    					else
    						sTemp := sTemp + '/' + KeyTypeValue[I].Value;
    				end;
    			end;
				end;
    		Result := sTemp;
      finally
        FreeAndNil(ls_Rcrd);
      end;
  	end else
  	begin
  		for I := 0 to Length(KeyTypeValue) - 1 do
  		begin
  			if KeyTypeValue[I].Code = ACode then
  			begin
  				Result := KeyTypeValue[I].Value;
  				Exit;
  			end;
  		end;
  	end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Tfrm_JON03.GetKeyTypeCodeList(Var aCode, aWord : String);
var
	I, j: Integer;
  sOrg, sTemp : string;
begin
	SetDebugeWrite('JON03.GetKeyTypeCodeList');
  try
		sTemp := '';                                                           
		for i := 1 to 20 do                                                    
		begin
			if ( TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text <> TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint ) And
				 ( TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text <> '' ) then
			begin
				for j := 0 to Length(KeyTypeValue) - 1 do
				begin
  				if KeyTypeValue[j].Value = TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint then
  				begin
  					if aCode = '' then
            begin
      		  	// 법인명이 2개라서 빠른검색 법인명은 하드코딩 함.
							if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '법인명' then
								aCode := '15'
              else
  	      		if ( TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '경과시간(분단위)' ) Or
                 ( TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '접수시간(분단위)' ) then
              else
								aCode := KeyTypeValue[j].Code;
  					end else
            begin
      		  	// 법인명이 2개라서 빠른검색 법인명은 하드코딩 함.
  	      		if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '법인명' then
              begin
    						if Trim(FBubInSelectedCode) <> '' then
	  							aCode := aCode + '│' + '13'
                else
	  							aCode := aCode + '│' + '15'
              end else
  	      		if ( TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '경과시간(분단위)' ) Or
                 ( TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '접수시간(분단위)' ) then
              else
    						aCode := aCode + '│' + KeyTypeValue[j].Code ;
            end;

  					if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '법인명' then
            begin
  						if Trim(FBubInSelectedCode) <> '' then
	  						sOrg := Param_Filtering(Copy(Trim(FBubInSelectedCode), 1, Pos(',', FBubInSelectedCode) - 1))
		  				else
			  				sOrg := Param_Filtering(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text);
            end else
            if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '고객번호' then
              sOrg := StringReplace(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text, '-', '', [rfReplaceAll])
            else
              sOrg := TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text;

            if ( KeyTypeValue[j].Value  = '경과시간(분단위)' ) then
            begin
              gsOverTime := StrToIntDef(sOrg, -1);
              Continue;
            end else
            if ( KeyTypeValue[j].Value  = '접수시간(분단위)' ) then
            begin
              gsOrderTime := StrToIntDef(sOrg, -1);
              Continue;
            end else
						if ( KeyTypeValue[j].Value  = '카드승인' ) then   //29
						begin
							sTemp := '';
							if pos('승인', sOrg)> 0 then
							begin
								sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''y''';
							end;
							if pos('미승인', sOrg) > 0 then
							begin
								sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''n''';
							end;
						end else
            if ( KeyTypeValue[j].Value  = '수수료' ) then
            begin
							sTemp := StringReplace(sOrg,',','',[rfReplaceAll]);
            end else
            if KeyTypeValue[j].Value  = '고객구분' then
            begin
              sTemp := '';
              if pos('개인/', sOrg)> 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''0''';
							end;
              if pos('업소/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''1''';
              end;
              if pos('법인/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''3''';
              end;
            end else
            if KeyTypeValue[j].Value  = '결제구분' then
            begin
              sTemp := '';
              if pos('현금/', sOrg) > 0 then
              begin
								sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''0''';
              end;
              if pos('후불/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''2''';
              end;
              if pos('외상/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''4''';
              end;
              if pos('현장카드/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''5''';
              end;
              if pos('후불(카드)/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''7''';
              end;
              if pos('후불(마일)/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''8''';
              end;
              if pos('복합/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''9''';
              end;
            end else
            if KeyTypeValue[j].Value  = '배차구분' then
            begin
							sTemp := '';
							if pos('강제배차/', sOrg)> 0 then
							begin
								sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''1''';
							end;
							if pos('문자배차/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''2''';
              end;
              if pos('차감문자배차/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''3''';
              end;
              if pos('현장콜/', sOrg)> 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''F''';
              end;
              if pos('예약배차/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''R''';
              end;
              if pos('근거리배차/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''S''';
              end;
              if pos('스마트배차/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''T''';
              end;
              if pos('도착지근배/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''U''';
              end;
						end else
						if KeyTypeValue[j].Value  = '탁송연합콜' then
						begin
							sTemp := '';
							if pos('탁송연합', sOrg) > 0 then
								sTemp := '''y'''; 
						end
						else sTemp := sOrg;

						if aWord = '' then
       				aWord := Param_Filtering(sTemp)
            else
							aWord := aWord + '│' + Param_Filtering(sTemp);
					end;
  			end;
			end;
  	end;

    if btnAppSch.Down then
    begin
      if aCode = '' then aCode := '31'
                    else aCode := aCode + '│' + '31';

    	if aWord = '' then aWord := 'A'
                    else aWord := aWord + '│' + 'A';
    end;
		if chk_Mileage.Checked then
		begin
			if aCode = '' then aCode := '33'
										else aCode := aCode + '│' + '33';

			if aWord = '' then aWord := 'y'
										else aWord := aWord + '│' + 'y';
		end;
		if chk_CMPSupportY.Checked then
		begin
			if aCode = '' then aCode := '34'
										else aCode := aCode + '│' + '34';

			if aWord = '' then aWord := 'y'
										else aWord := aWord + '│' + 'y';
		end else
		if chk_CMPSupportN.Checked then
		begin
			if aCode = '' then aCode := '34'
										else aCode := aCode + '│' + '34';

			if aWord = '' then aWord := 'n'
										else aWord := aWord + '│' + 'n';
		end;   
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Tfrm_JON03.GetKeyTypeCodeSingle(Var aCode, aWord : String);
var
	I, j: Integer;
  sOrg, sTemp : string;
begin
	SetDebugeWrite('JON03.GetKeyTypeCodeSingle');
  try
  	for i := 1 to 20 do
  	begin
  		if ( TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text <> TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint ) And
         ( TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text <> '' ) then
  		begin
  			for j := 0 to Length(KeyTypeValue) - 1 do
  			begin
  				if KeyTypeValue[j].Value = TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint then
  				begin
  					if aCode = '' then
            begin
      		  	// 법인명이 2개라서 빠른검색 법인명은 하드코딩 함.
							if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '법인명' then
              begin
    						if Trim(FBubInSelectedCode) <> '' then
	  							aCode := '13'
                else
  								aCode := '15'
              end else
  	      		if ( TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '경과시간(분단위)' ) Or
                 ( TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '접수시간(분단위)' ) then
              else
    						aCode := KeyTypeValue[j].Code;
            end;

  					if TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Hint = '법인명' then
            begin
  						if Trim(FBubInSelectedCode) <> '' then
	  						sOrg := Param_Filtering(Copy(Trim(FBubInSelectedCode), 1, Pos(',', FBubInSelectedCode) - 1))
		  				else
			  				sOrg := Param_Filtering(TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text);
            end else
              sOrg := TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Text;

						if ( KeyTypeValue[j].Value  = '카드승인' ) then   //29
						begin
							sTemp := '';
							if pos('승인', sOrg)> 0 then
							begin
								sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''y''';
							end;
							if pos('미승인', sOrg) > 0 then
							begin
								sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''n''';
							end;
						end else
            if KeyTypeValue[j].Value  = '경과시간(분단위)' then
            begin
              gsOverTime := StrToIntDef(sOrg, -1);
            end else
            if KeyTypeValue[j].Value  = '접수시간(분단위)' then
            begin
              gsOrderTime := StrToIntDef(sOrg, -1);
            end else
            if KeyTypeValue[j].Value  = '수수료' then
            begin
							sTemp := StringReplace(sOrg,',','',[rfReplaceAll]);
            end else
            if KeyTypeValue[j].Value  = '고객구분' then
            begin
              sTemp := '';
              if pos('개인/', sOrg)> 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''0''';
              end;
              if pos('업소/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''1''';
              end;
              if pos('법인/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''3''';
              end;
            end else
            if KeyTypeValue[j].Value  = '결제구분' then
            begin
              sTemp := '';
              if pos('현금/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''0''';
              end;
              if pos('후불/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''2''';
              end;
              if pos('외상/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''4''';
              end;
              if pos('현장카드/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''5''';
              end;
              if pos('후불(카드)/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''7''';
              end;
              if pos('후불(마일)/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''8''';
              end;
              if pos('복합/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''9''';
              end;
            end else
            if KeyTypeValue[j].Value  = '배차구분' then
            begin
              sTemp := '';
              if pos('강제배차/', sOrg)> 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''1''';
              end;
              if pos('문자배차/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''2''';
              end;
              if pos('차감문자배차/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''3''';
              end;
              if pos('현장콜/', sOrg)> 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''F''';
              end;
              if pos('예약배차/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''R''';
              end;
              if pos('근거리배차/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''S''';
              end;
              if pos('스마트배차/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''T''';
              end;
              if pos('도착지근배/', sOrg) > 0 then
              begin
          			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''U''';
              end;
            end else
						if KeyTypeValue[j].Value  = '탁송연합콜' then
						begin
							sTemp := '';
							if pos('탁송연합', sOrg) > 0 then
								sTemp := '''y'''; 
						end
						else sTemp := sOrg;

            if aWord = '' then
       				aWord := Param_Filtering(sTemp);

            Break;
  				end;
  			end;
  		end;
  	end;
		if chk_Mileage.Checked then
		begin
			if aCode = '' then aCode := '33';

			if aWord = '' then aWord := 'y';
		end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Tfrm_JON03.GetKeyTypeCodeSingleEnter(aCode : String; Var aWord : String);
var
  sOrg, sTemp : string;
begin
	SetDebugeWrite('JON03.GetKeyTypeCodeSingle');
  try
		sOrg := aWord;

		if aCode = '카드승인' then   //29
		begin
			sTemp := '';
			if sOrg = '승인' then
			begin
				sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''y''';
			end;
			if sOrg = '미승인' then
			begin
				sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''n''';
			end;
		end else
    if aCode = '경과시간(분단위)' then
    begin
      gsOverTime := StrToIntDef(sOrg, -1);
    end else
    if aCode = '접수시간(분단위)' then
    begin
      gsOrderTime := StrToIntDef(sOrg, -1);
    end else
    if aCode = '수수료' then
		begin
      sOrg := StringReplace(sOrg,',','',[rfReplaceAll]);
			//gsFees := StrToIntDef(sOrg, -1);
    end else
		if aCode  = '고객구분' then
    begin
      sTemp := '';
      if pos('개인/', sOrg)> 0 then
      begin
				sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''0''';
			end;
      if pos('업소/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''1''';
      end;
      if pos('법인/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''3''';
      end;
    end else
    if aCode  = '결제구분' then
    begin
      sTemp := '';
      if pos('현금/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''0''';
      end;
      if pos('후불/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''2''';
      end;
      if pos('외상/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''4''';
      end;
      if pos('현장카드/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''5''';
      end;
      if pos('후불(카드)/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''7''';
      end;
      if pos('후불(마일)/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''8''';
      end;
      if pos('복합/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''9''';
			end;
    end else
		if aCode  = '배차구분' then
    begin
      sTemp := '';
      if pos('강제배차/', sOrg)> 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''1''';
      end;
      if pos('문자배차/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''2''';
      end;
      if pos('차감문자배차/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''3''';
      end;
      if pos('현장콜/', sOrg)> 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''F''';
      end;
      if pos('예약배차/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''R''';
      end;
      if pos('근거리배차/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''S''';
      end;
      if pos('스마트배차/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''T''';
      end;
      if pos('도착지근배/', sOrg) > 0 then
      begin
  			sTemp := sTemp + IfThen(sTemp = '', '', ',') + '''U''';
      end;
		end else
		if aCode  = '탁송연합콜' then
		begin
			sTemp := '';
			if pos('탁송연합', sOrg) > 0 then
				sTemp := '''y'''; 
		end else sTemp := sOrg;

		aWord := Param_Filtering(sTemp);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON03.GetKeyNumFromComboValue(AValue: string): string;
var
  iPos2: Integer;
  sKeyNumber, sTmp: string;
begin
  Result := '';
  sTmp := AValue;
  if sTmp = '' then
    Exit;
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

function Tfrm_JON03.GetKeyTypeCode(AValue: string): string;
var
	I: Integer;
begin
	SetDebugeWrite('JON03.GetKeyTypeCode');
  try
  	Result := '';
  	for I := 0 to Length(KeyTypeValue) - 1 do
  	begin
  		if KeyTypeValue[I].Value = AValue then
  		begin
  			Result := KeyTypeValue[I].Code;
  			Exit;
  		end;
  	end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Tfrm_JON03.LabelShowHint(X, Y : Integer; sHint : string);  // 20120719 LYB 수정
Var iHeight : Integer;
begin
  if GT_HINT_SHOW then
  begin
    if sHint = '' then Exit;
    
    Lbl_Hint.Caption := sHint;
  	PnlHelp.Width  := Lbl_Hint.Width + 15;

    if Lbl_Hint.Height > 200 then
    begin
      Lbl_Hint.Height := 200;
      PnlHelp.Height := Lbl_Hint.Height + 10;
    end else
      PnlHelp.Height := Lbl_Hint.Height + 10;

    // 20130627  화면 좌측 끝 부분 마우스 위치 시에 넘어가는거 방지 LYB
    if Grd2.Width > ( X + PnlHelp.Width ) then PnlHelp.Left := X + 15
                                          else PnlHelp.Left := ( ( Grd2.Width ) - PnlHelp.Width ) - 10;

    if cxTCOrderState.Visible then iHeight := cxGroupBox6.Height + cxTCOrderState.Height
                              else iHeight := cxGroupBox6.Height;

    // 20140724  화면 하단 끝 부분 마우스 위치 시에 넘어가는거 방지 LYB
    if Grd2.Height > ( Y + PnlHelp.Height ) then PnlHelp.Top := Y + ( iHeight + 15 )
                                            else PnlHelp.Top := ( ( Grd2.Height + 120 ) - PnlHelp.Height  ) - 10;

  //    PnlHelp.Top  := Y + 110;     // 20120801 LYB 수정
    PnlHelp.Visible := True;
  end;
end;

procedure TFrm_JON03.lbFastKey1Click(Sender: TObject);
	procedure _SetFastFindEdit(AEdit:TcxTextEdit; AKey:string);
	var
		pt: TPoint;
  begin
		if AEdit.Hint = AKey then
		begin
			AEdit.SetFocus;
		end;  
		try
			if AKey = '법인명' then
			begin
				edtFastKey1Click(AEdit);   //라벨을 눌러도 팝업이 되도록 하기우힘 20210630KHS
			end else pnlBubin.Visible := False;

			if AKey = '접수시간(분단위)' then
			begin
				edtFastKey1Click(AEdit);   //라벨을 눌러도 팝업이 되도록 하기우힘 20210630KHS
			end else grpSetOrderDTS.Visible := False;

			if AKey = '지역선택' then
			begin
				edtFastKey1Click(AEdit);  //라벨을 눌러도 팝업이 되도록 하기우힘 20210630KHS
			end else grpSetLocalS.Visible := False;

			if AKey = '카드승인' then
			begin
				GetCursorPos(pt);
				pm_FastSearch29.Popup(pt.X, pt.Y);
			end else
			if AKey = '고객구분' then
			begin
				GetCursorPos(pt);
				pm_FastSearch14.Popup(pt.X, pt.Y);
			end else
			if AKey = '결제구분' then
			begin
				GetCursorPos(pt);
				pm_FastSearch15.Popup(pt.X, pt.Y);
			end else
			if AKey = '배차구분' then
			begin
				GetCursorPos(pt);
				pm_FastSearch17.Popup(pt.X, pt.Y);
			end else
			if AKey = '탁송연합콜' then
			begin
				GetCursorPos(pt);
				pm_FastSearch25.Popup(pt.X, pt.Y);
			end;
			if AKey = '경과시간(분단위)' then
			begin
				GetCursorPos(pt);
				pm_FastSearch22.Popup(pt.X, pt.Y);
			end;
		except on E: Exception do
			Assert(False, E.Message);
		end;
	end;
var
	ALabel : TcxLabel absolute Sender;
begin
	SetDebugeWrite('JON03.lbFastKey1Click');
	try
	// 20120801 LYB 수정
		if ALabel = lbFastKey1 then
			_SetFastFindEdit(edtFastKey1, gJONFastFind.Key1) else
		if ALabel = lbFastKey2 then
			_SetFastFindEdit(edtFastKey2, gJONFastFind.Key2) else
		if ALabel = lbFastKey3 then
			_SetFastFindEdit(edtFastKey3, gJONFastFind.Key3) else
		if ALabel = lbFastKey4 then
			_SetFastFindEdit(edtFastKey4, gJONFastFind.Key4) else
		if ALabel = lbFastKey5 then
			_SetFastFindEdit(edtFastKey5, gJONFastFind.Key5) else
		if ALabel = lbFastKey6 then
			_SetFastFindEdit(edtFastKey6, gJONFastFind.Key6) else
		if ALabel = lbFastKey7 then
			_SetFastFindEdit(edtFastKey7, gJONFastFind.Key7) else
		if ALabel = lbFastKey8 then
			_SetFastFindEdit(edtFastKey8, gJONFastFind.Key8) else
		if ALabel = lbFastKey9 then
			_SetFastFindEdit(edtFastKey9, gJONFastFind.Key9) else
		if ALabel = lbFastKey10 then
			_SetFastFindEdit(edtFastKey10, gJONFastFind.Key10) else
		if ALabel = lbFastKey11 then
			_SetFastFindEdit(edtFastKey11, gJONFastFind.Key11) else
		if ALabel = lbFastKey12 then
			_SetFastFindEdit(edtFastKey12, gJONFastFind.Key12) else
		if ALabel = lbFastKey13 then
			_SetFastFindEdit(edtFastKey13, gJONFastFind.Key13) else
		if ALabel = lbFastKey14 then
			_SetFastFindEdit(edtFastKey14, gJONFastFind.Key14) else
		if ALabel = lbFastKey15 then
			_SetFastFindEdit(edtFastKey15, gJONFastFind.Key15) else
		if ALabel = lbFastKey16 then
			_SetFastFindEdit(edtFastKey16, gJONFastFind.Key16) else
		if ALabel = lbFastKey17 then
			_SetFastFindEdit(edtFastKey17, gJONFastFind.Key17) else
		if ALabel = lbFastKey18 then
			_SetFastFindEdit(edtFastKey18, gJONFastFind.Key18) else
		if ALabel = lbFastKey19 then
			_SetFastFindEdit(edtFastKey19, gJONFastFind.Key19) else
		if ALabel = lbFastKey20 then
			_SetFastFindEdit(edtFastKey20, gJONFastFind.Key20)
		 ;
	except on E: Exception do
		Assert(False, E.Message);
  end;
end;

procedure TFrm_JON03.lb_Title_ListClick(Sender: TObject);
begin

end;

// 접수현황 그리드 선택( sValue : 선택셀 값, Acol, ARow : 콜, Row)
procedure Tfrm_JON03.proc_Grid_Hint(sValue: string; ACol, ARow: Integer);
var
  sPhone, sCustTel, sTemp: string;
  iCallYn : Integer;
  mPoint, P : TPoint;
begin
  SetDebugeWrite('JON03.proc_Grid_Hint');
  try
    if sValue <> '' then
    begin
      mPoint.X  := Mouse.CursorPos.X;
      mPoint.Y  := Mouse.CursorPos.Y;

      P := Grd2.ScreenToClient(Mouse.CursorPos);
      iCallYn   := GetCurrentView.GetColumnByFieldName('고객통화여부').Index;

      if ACol = giKeyNum then
      begin
        sTemp := func_Grid_hint(giKeyNum, ARow);
				LabelShowHint(P.X, P.Y, sValue + '/' + sTemp);
      end else
      if ACol = iCallYn then
      begin
        sTemp := func_Grid_hint(iCallYn, ARow);
				LabelShowHint(P.X, P.Y, sTemp);
      end else
      if ACol = giCustTel then
      begin
        try
          sPhone := func_Grid_hint(giCustTel, ARow);
          // [hjF] 데이터가 안넘어와서 그리드에서 읽기
          sCustTel := strtocall(GetCurrentView.DataController.Values[ARow, giCustTel]);
        except
          sCustTel := '';
        end;

        if (sPhone <> '') then
        begin
          LabelShowHint(P.X, P.Y, sCustTel + ', ' + strtocall(sPhone));
        end else
        begin
          LabelShowHint(P.X, P.Y, sCustTel);
        end;
      end else
      if ACol = giStartArea then
      begin
        sTemp := func_Grid_hint(giStartArea, ARow);

        if GB_365System then   // 원주365는 출발지 힌트 읍면동 만 표시
        begin
          sTemp := fPosEx(sTemp, '/', 3);
          LabelShowHint(P.X, P.Y, sTemp);
        end else
          LabelShowHint(P.X, P.Y, sValue + '/' + sTemp);
      end else
      if ACol = giEndArea then
      begin
        sTemp := func_Grid_hint(giEndArea, ARow);

        if GB_365System then   // 원주365는 도착지 힌트 읍면동 만 표시
        begin
          sTemp := fPosEx(sTemp, '/', 3);
          LabelShowHint(P.X, P.Y, sTemp);
        end else
          LabelShowHint(P.X, P.Y, sValue + '/' + sTemp);
      end else
      if ACol = giReceipter then
      begin
        if sValue <> '' then
        begin
					LabelShowHint(P.X, P.Y, sValue);
        end;
      end else
      if ( ACol = giWkName ) or ( ACol = giWkSabun )  then
      begin
        if sValue <> ''  then
        begin
          sTemp := func_Grid_hint(giWkSabun, ARow);
          sTemp := sTemp + #13#10#13#10 + func_Grid_hint(giWkName, ARow);
          LabelShowHint(P.X, P.Y, sValue + #13#10 + sTemp);
        end else
          LabelShowHint(P.X, P.Y, sTemp);
      end else
      begin
         LabelShowHint(P.X, P.Y, sValue);
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

// 접수현황 그리드 선택( sValue : 선택셀 값, Acol, ARow : 콜, Row)
function Tfrm_JON03.fGetGridHint(sValue: string; ACol, ARow: Integer) : String;
var
  sPhone, sCustTel, sTemp: string;
begin
  OldHintView.sValue := HintView.sValue;
  OldHintView.ARow := HintView.ARow;
  OldHintView.ACol := HintView.ACol;

  SetDebugeWrite('JON03.proc_Grid_Hint');
  try
    if sValue <> '' then
    begin
      if ACol = giKeyNum then
      begin
        sTemp := func_Grid_hint(giKeyNum, ARow);
        Result := sValue + '/' + sTemp;
      end else
      if ACol = giCustTel then
      begin
        try
          sPhone := func_Grid_hint(giCustTel, ARow);
          // [hjF] 데이터가 안넘어와서 그리드에서 읽기
          sCustTel := strtocall(GetCurrentView.DataController.Values[ARow, giSlip]);
        except
          sCustTel := '';
        end;

        if (sPhone <> '') then
        begin
          Result := sCustTel + ', ' + strtocall(sPhone);
        end else
        begin
          Result := sCustTel;
        end;
      end else
      if ACol = giStartArea then
      begin
        sTemp := func_Grid_hint(giStartArea, ARow);
        Result := sValue + '/' + sTemp;
      end else
      if ACol = giEndArea then
      begin
        sTemp := func_Grid_hint(giEndArea, ARow);
        Result := sValue + '/' + sTemp;
      end else
      if ACol = giReceipter then
      begin
        if sValue <> '' then
        begin
					Result := sValue;
        end;
      end else
      if ( ACol = giWkName ) or ( ACol = giWkSabun )  then
      begin
        if sValue <> ''  then
        begin
          sTemp := func_Grid_hint(giWkSabun, ARow);
          sTemp := sTemp + #13#10#13#10 + func_Grid_hint(giWkName, ARow);

          Result := sValue + #13#10 + sTemp;
        end else
          Result := sTemp;
      end else
      begin
        Result := sValue;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON03.fMultiCallNumber(AView: TcxGridDBTableView): Boolean;
Var i, iSeq, idx, iLen : integer;
    slTmp : TStringList;
    sSlip, sMSlip : String;
begin
  try
    slTmp := TStringList.Create;
    try
      for i := 0 to MultiCallNumber.Slip.Count - 1 do
      begin
        slTmp.Add(MultiCallNumber.MultiSlip.Strings[i] + '/' + MultiCallNumber.BaechaTime.Strings[i] + '/' + MultiCallNumber.Slip.Strings[i])
      end;

      slTmp.Sorted := True;
      iSeq := 0;
      for i := 0 to slTmp.Count - 1 do
      begin
        sMSlip := LeftStr(slTmp.Strings[i], 8);
        sSlip  := RightStr(slTmp.Strings[i], 8);
        Inc(iSeq);

        idx := MultiCallNumber.Slip.IndexOf(sSlip);
        MultiCallNumber.Seq.Strings[idx] := IntToStr(iSeq);

        if i < (slTmp.Count-1)  then
        begin
          if sMSlip <> LeftStr(slTmp.Strings[i+1], 8) then iSeq := 0;
        end;
      end;

      try
        AView.BeginUpdate;
        for i := 0 to MultiCallNumber.Slip.Count - 1 do
        begin
          idx := AView.DataController.FindRecordIndexByText(0, giSlip, MultiCallNumber.Slip.Strings[i], False, True, True);
          if idx >= 0 then
          begin
            iLen := Length(AView.DataController.Values[idx, giBigo]);
            if Copy(AView.DataController.Values[idx, giBigo],  iLen-1, 1) = '-' then
              AView.DataController.Values[idx, giBigo] := Copy(AView.DataController.Values[idx, giBigo], 1, iLen-2)
                                                          + '-' + MultiCallNumber.Seq.Strings[i]
            else if Copy(AView.DataController.Values[idx, giBigo], iLen-2, 1) = '-' then
              AView.DataController.Values[idx, giBigo] := Copy(AView.DataController.Values[idx, giBigo], 1, iLen-3)
                                                          + '-' + MultiCallNumber.Seq.Strings[i]
            else
              AView.DataController.Values[idx, giBigo] := AView.DataController.Values[idx, giBigo] + '-' + MultiCallNumber.Seq.Strings[i];
          end;
        end;
      finally
        AView.EndUpdate;
      end;
    finally
      FreeAndNil(slTmp);
      bMultiCallNumber := False;
    end;
  except
  end;
end;

function Tfrm_JON03.func_Grid_hint(ACol, ARow: Integer): string;
var
  ls_TxQry, ls_TxLoad, rv_str, sKeyNum, swk_head, swk_br, swk_cen, sWhere, sSlip, sGubun,
	sAcceptTime2, sInId, sWkSabun, sWkName, sQueryTemp : string;
  li_wk_head, li_wk_br, li_wk_cen, li_wk_name: Integer;
  ls_rxxml, ErrMsg: String;
  sBizDate: string;
  iCallYn : Integer;
  slReceive, ls_Rcrd : TStringList;
  ErrCode, i : Integer;
  AView: TcxGridDBTableView;
	xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
begin
	SetDebugeWrite('JON03.func_Grid_hint');
  AView := GetCurrentView;

  if ARow >= AView.DataController.RecordCount then Exit;

  try
    iCallYn   := AView.GetColumnByFieldName('고객통화여부').Index;

    if ACol in [giKeyNum, giCustTel, giStartArea, giEndArea, giReceipter, giWkName, giWkSabun, iCallYn] then
    begin
      try
        li_wk_head    := AView.GetColumnByFieldName('기사본사코드').Index;
        li_wk_br      := AView.GetColumnByFieldName('기사지사코드').Index;
				li_wk_cen     := AView.GetColumnByFieldName('기사콜센터').Index;
        li_wk_name    := AView.GetColumnByFieldName('기사명').Index;

        if AView.DataController.Values[Arow, giBrNo      ] <> Null then sKeyNum  := AView.DataController.Values[Arow, giBrNo     ];
        if AView.DataController.Values[Arow, giReceipter ] <> Null then sInId    := AView.DataController.Values[Arow, giReceipter];
        if AView.DataController.Values[Arow, giWkSabun   ] <> Null then sWkSabun := AView.DataController.Values[Arow, giWkSabun];
        if AView.DataController.Values[Arow, li_wk_head  ] <> Null then swk_head := AView.DataController.Values[Arow, li_wk_head];
        if AView.DataController.Values[Arow, li_wk_br    ] <> Null then swk_br   := AView.DataController.Values[Arow, li_wk_br];
        if AView.DataController.Values[Arow, li_wk_cen   ] <> Null then swk_cen  := AView.DataController.Values[Arow, li_wk_cen];
        if AView.DataController.Values[Arow, giSlip      ] <> Null then sSlip    := AView.DataController.Values[Arow, giSlip];
        if AView.DataController.Values[Arow, giAccTime2] <> Null then
        begin
          sAcceptTime2  := AView.DataController.Values[Arow, giAccTime2];
          sAcceptTime2  := RemoveDatetimeSeparator(sAcceptTime2);
        end;
        if AView.DataController.Values[Arow, li_wk_name  ] <> Null then sWkName  := AView.DataController.Values[Arow, li_wk_name];
      except on E: Exception do
        Assert(False, E.Message);
      end;

      sBizDate := StartDateTime('yyyymmddhhmmss'); // 영업일자 얻기..

      if sAcceptTime2 >= sBizDate then
        sGubun := '0'
      else
        sGubun := '1';

      if GT_WK_HINT = 1 then
      begin
        if ACol = giWkName then Acol := giWkSabun
        else if Acol = giWkSabun then  Acol := giWkName;
      end;

			if ACol = giWkName then
      begin
				if sWkSabun = '기사NO' then exit;
				if sWkSabun = 'M00001' then exit;
				if ((GT_USERIF.LV = '10') and (GT_USERIF.CT = swk_cen)) or ((GT_USERIF.LV = '40') and
						(GT_USERIF.BR = swk_br)) or ((GT_USERIF.LV = '60') and (GT_USERIF.HD = swk_head)) then
        begin
					sWhere := '';
				end else
        begin
          if GT_USERIF.LV = '10' then
            sWhere := ' AND CALLCENTER = ''' + GT_USERIF.CT + ''' '
          else
            if GT_USERIF.LV = '40' then
						sWhere := ' AND CONF_BRCH = ''' + GT_USERIF.BR + ''' '
          else
            if GT_USERIF.LV = '60' then
            begin
              if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
              begin
                if Not pJON03Dock.bUnDock then pJON03Dock.HdNo  := GT_SEL_BRNO.HdNo;

                sWhere := ' AND CONF_HEAD = ''' + pJON03Dock.HDNO + ''' ';
              end else
                sWhere := ' AND CONF_HEAD = ''' + GT_USERIF.HD + ''' ';
            end;
        end;

        ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
        fGet_BlowFish_Query(GSQ_WK_LIST_TODAY, sQueryTemp);
        ls_TxQry := Format(sQueryTemp, [sWkSabun, swhere]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'WKLS0001', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

        slReceive := TStringList.Create;
        try
          if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
          begin
            rv_str := slReceive[0];
            if rv_str <> '' then
            begin
              ls_rxxml := rv_str;
              Application.ProcessMessages;
              Result := func_recieve_hint(ls_rxxml);
            end;
          end;
        finally
					FreeAndNil(slReceive);
        end;
      end else
      if ACol = iCallYn then
      begin
				if not RequestBase(GetSel06('getcallinglist', 'CAS.get_calling_list', '1000', sGubun + '│' + sSlip), ls_rxxml, ErrCode, ErrMsg) then
				begin
//          GMessagebox(Format('통화 내역 조회 오류' + CRLF + '[%d]%s', [ErrCode, ErrMsg]), CDMSE);
          Exit;
        end;

        xdom := ComsDomDocument.Create;
        try
          if not xdom.loadXML(ls_rxxml) then Exit;
          ErrMsg := GetXmlErrorCode(ls_rxxml);
          if ('0000' = ErrMsg) then
          begin
            if (0 < GetXmlRecordCount(ls_rxxml)) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              ls_Rcrd := TStringList.Create;
              try
                for i := 0 to lst_Result.length - 1 do
                begin
                  GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                  Application.ProcessMessages;
                  if i = 0 then
                  begin
                    rv_str := ls_Rcrd.Strings[0] + '  ' + ls_Rcrd.Strings[1];
                  end else
                  begin
                    rv_str := rv_str + #13#10 + ls_Rcrd.Strings[0] + '  ' + ls_Rcrd.Strings[1];
                  end;
                end;
                Result := rv_str;
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
				ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
        if ACol = giKeyNum then
        begin
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0001', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '1', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sKeyNum, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '', [rfReplaceAll]);
        end else
        if ACol = giCustTel then
        begin
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0004', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '6', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sSlip, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', sGubun, [rfReplaceAll]);
        end else
        if ACol = giStartArea then
        begin
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0004', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '4', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sSlip, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', sGubun, [rfReplaceAll]);
        end else
        if ACol = giEndArea then
        begin
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0004', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '5', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sSlip, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', sGubun, [rfReplaceAll]);
        end else
        if ACol = giReceipter then
        begin
          ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0002', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '2', [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sInId, [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', '', [rfReplaceAll]);
        end else
        if Acol = giWkSabun then
        begin
					if sWkSabun = '기사NO' then exit;
//					if sWkSabun = 'M00001' then exit; //오더에 대한 기사정보는 보여야함.    20190327 KHS
					ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003', [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '3', [rfReplaceAll]);
					ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sWkSabun, [rfReplaceAll]);
          ls_TxLoad := StringReplace(ls_TxLoad, 'Param2String', sGubun, [rfReplaceAll]);
          if (GS_PRJ_AREA = 'O') and (Pos('㉹',sWkName) = 1) and (GT_USERIF.WKVPhone = 'y') then
             ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', 'y', [rfReplaceAll])
          else
             ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', '', [rfReplaceAll])
        end;

				ls_TxLoad := StringReplace(ls_TxLoad, 'Conf_slipString', sSlip, [rfReplaceAll]); //접수번호추가

        slReceive := TStringList.Create;
        try
          if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
          begin
            rv_str := slReceive[0];
            if rv_str <> '' then
            begin
              ls_rxxml := rv_str;
              Application.ProcessMessages;
              Result := func_recieve_hint(ls_rxxml);
            end;
          end;
        finally
          FreeAndNil(slReceive);
        end;
      end;
    end else
    begin
      Result := AView.DataController.Values[ARow, ACol];
    end;
  except on E: Exception do
    Assert(False, E.Message + ' / ' + ls_TxLoad);
  end;
end;

function Tfrm_JON03.func_Recieve_hint(ls_rxxml: string): string;
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_ClientKey: string;
  ls_Rcrd: TStringList;
  i: Integer;
begin
  SetDebugeWrite('JON03.func_Recieve_hint');
  try
    xdom := ComsDomDocument.Create;
    try
      if not xdom.loadXML(ls_rxxml) then Exit;
      ls_ClientKey := GetXmlClientKey(ls_rxxml);
      if copy(ls_ClientKey, 1, 4) = 'HINT' then
      begin
        lst_Result :=
          xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');
        case StrToIntDef(Copy(ls_ClientKey, 5, 4), 1) of
          1: Result :=
            Trim(lst_Result.item[0].attributes.getNamedItem('Info1').Text + ' ' +
              strtocall(lst_Result.item[0].attributes.getNamedItem('Info2').Text));
          2: Result :=
            Trim(lst_Result.item[0].attributes.getNamedItem('Info1').Text + ' ' +
              lst_Result.item[0].attributes.getNamedItem('Info2').Text);
					3:
					begin
						if (GS_PRJ_AREA = 'O') then
							Result :=
								Trim(lst_Result.item[0].attributes.getNamedItem('Info1').Text + #13#10
									+ '단말기 : ' + strtocall(lst_Result.item[0].attributes.getNamedItem('Info2').Text) + #13#10
									+ '휴대폰 : ' + StrToCall(lst_Result.item[0].attributes.getNamedItem('Info3').Text) + #13#10
									+ '상황실 : ' + StrToCall(lst_Result.item[0].attributes.getNamedItem('Info4').Text)) + #13#10
									+ '수수료그룹 : ' + lst_Result.item[0].attributes.getNamedItem('Info5').Text + #13#10
									+ '보험구분 : '   + ifthen(lst_Result.item[0].attributes.getNamedItem('Info6').Text = 'm', '월정액보험', '콜당보험')
						else
							Result :=
								Trim(lst_Result.item[0].attributes.getNamedItem('Info1').Text + #13#10
									+ '단말기 : ' + strtocall(lst_Result.item[0].attributes.getNamedItem('Info2').Text) + #13#10
									+ '휴대폰 : ' + StrToCall(lst_Result.item[0].attributes.getNamedItem('Info3').Text) + #13#10
									+ '상황실 : ' + StrToCall(lst_Result.item[0].attributes.getNamedItem('Info4').Text)) + #13#10
									+ '수수료그룹 : ' + lst_Result.item[0].attributes.getNamedItem('Info5').Text;
					end;
					4: Result := Trim(lst_Result.item[0].attributes.getNamedItem('Info1').Text);
        end;
			end else
      if ls_ClientKey = 'WKLS0001' then
      begin
				if (0 < GetXmlRecordCount(ls_rxxml)) then
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          ls_Rcrd := TStringList.Create;
          try
            GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
            Result := ls_Rcrd[0] + '/' + ls_Rcrd[1] + '-' + ls_Rcrd[2] + '/' + ls_Rcrd[3];
						for i := 1 to lst_Result.length - 1 do
            begin
              GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
              Result := Result + #13#10 + ls_Rcrd[0] + '/' + ls_Rcrd[1] + '-' + ls_Rcrd[2] + '/' + ls_Rcrd[3];
            end;
          finally
            ls_Rcrd.Free;
          end;
        end;
      end;
    finally
      xdom := Nil;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function Tfrm_JON03.CheckCallPass(ATitle: string): Boolean;
var
  sPay, cDate, cDate2, Cdate3: string;
  iRow : Integer;

  AView: TcxGridDBTableView;
begin
  SetDebugeWrite('JON03.CheckCallPass');
  Result := False;

  AView := GetCurrentView;

  try
    iRow := AView.DataController.FocusedRecordIndex;
    if iRow = -1 then Exit;
    sPay := AView.DataController.Values[iRow, giType];

		if not func_check_CallCenter then
		begin
			Assert(False, 'Frm_JON03.CheckCallPass - 타사콜입니다.' + sChCallMsg);
			if icheck_CT_Flag = 0 then
			begin
				GMessagebox('타사콜입니다.' + #13#10 + ATitle + '로 전송할 수 없습니다.', CDMSE);
			end;
			Exit;
		end;

		cDate := GT_OrderInfo[Self.Tag].AccTime;
    cDate := StringReplace(cDate, ' ', '', [rfReplaceAll]);
    cDate2 := StartDateTime('yyyy-mm-dd hh:nn:ss');
    cDate2 := StringReplace(cDate2, ' ', '', [rfReplaceAll]);
    cDate3 := StartDateTime('yyyy-mm-dd');
    cDate3 := StringReplace(cDate3, ' ', '', [rfReplaceAll]);
    if (cDate < cDate2) then
    begin
      GMessagebox('당일 오더가 아닙니다' + #13#10 + ATitle + '로 전송할 수 없습니다.', CDMSE);
      Exit;
    end;

    if (GT_OrderInfo[Self.Tag].Status = '0') and ((sPay = '') or (sPay = '후불')) then
    else
    begin
      GMessagebox('오더 상태가 접수이고 결제가 선불 또는 후불만 ' + ATitle + '로 전송할수 있습니다.', CDMSE);
      Exit;
    end;
    Result := True;
  except
    Result := False;
  end;
end;

procedure TFrm_JON03.chkJon_Multi_ModifyClick(Sender: TObject);
Var i : Integer;
begin
  if chkJon_Multi_Modify.Checked then GB_JON_MULTI_MODIFY := True
                                 else GB_JON_MULTI_MODIFY := False;

  if Assigned(Frm_SETA1) then Frm_SETA1.chkJon_Multi_Modify.Checked := GB_JON_MULTI_MODIFY;

  for i := 0 to JON03_MAX_CNT - 1 do
  begin
    if i = Self.Tag then Continue;
    if ( Frm_Main.JON03MNG[i].Use ) And ( Frm_Main.JON03MNG[i].CreateYN ) then
    begin
      Frm_Main.Frm_Jon03[i].chkJon_Multi_Modify.Checked := GB_JON_MULTI_MODIFY;
		end;
  end;
end;

procedure TFrm_JON03.chk_CMPSupportNPropertiesChange(Sender: TObject);
begin
	if chk_CMPSupportN.Tag = 99 then exit;
	
	chk_CMPSupportY.Tag := 99;
	if chk_CMPSupportN.Checked then chk_CMPSupportY.Checked := False;
	chk_CMPSupportY.Tag := 0;

	rb_SearchClick(rb_Search);
end;

procedure TFrm_JON03.chk_CMPSupportYPropertiesChange(Sender: TObject);
begin
	if chk_CMPSupportY.Tag = 99 then exit;
	
	chk_CMPSupportN.Tag := 99;
	if chk_CMPSupportY.Checked then chk_CMPSupportN.Checked := False;
	chk_CMPSupportN.Tag := 0;

	rb_SearchClick(rb_Search);
end;

procedure TFrm_JON03.chk_MileagePropertiesChange(Sender: TObject);
begin
	rb_SearchClick(rb_Search);
end;

procedure TFrm_JON03.chk_MultiSearchClick(Sender: TObject);
begin
	status_bar.Visible := True;
	pnl_KakaoList.Visible := False;
end;

procedure TFrm_JON03.chk_MultiSearchMouseLeave(Sender: TObject);
begin
	if chk_MultiSearch.checked then 
		chk_OptionAll.Enabled := True else chk_OptionAll.Enabled := False;
end;

procedure TFrm_JON03.chk_MultiSearchMouseUp(Sender: TObject;
	Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	if chk_MultiSearch.checked then 
		chk_OptionAll.Enabled := True else chk_OptionAll.Enabled := False;
end;

procedure TFrm_JON03.chk_MultiSearchPropertiesChange(Sender: TObject);
begin
	if chk_MultiSearch.checked then 
		chk_OptionAll.Enabled := True
	else
	begin
		chk_OptionAll.Enabled := False;
		chk_OptionAll.checked := False;
	end;
end;

//------------------------------------------------------------------------------
// 콜마트로 콜패스
//------------------------------------------------------------------------------
procedure Tfrm_JON03.RunPassToCallMart(AOrderSeq, ATel, AStatus: string);
var
  WinH : HWND;
  iCnt: Integer;
  fRect : TRect;
  iMainX, iMainY, iSubX, iSubY: Integer;

  ls_TxLoad, rv_str: string;
  ls_rxxml: String;

  slReceive: TStringList;
  ErrCode: integer;
begin
  SetDebugeWrite('JON03.RunPassToCallMart');
  try
    // 전화번호 복사하기..
    clipboard.settextbuf(Pchar(ATel));
    // 메인창 핸들값 구하기..

    WinH := FindAllInternetExplorer('IEFrame','http://proxyd.jcallmart.com', True);
    if WinH > 0 then begin
      // F12 키 날리기..
      SendPressF12;
      // 접수창 뜨는시간동안 대기..(약 1.5초)
      Sleep(500);
      //FindAllInternetExplorer('접수등록 -- 웹 페이지 대화 상자');
      iCnt := 0;
      WinH := 0;
      While ((iCnt < 7) and (WinH = 0)) do begin
        WinH := FindAllInternetExplorer('Explorer_TridentDlgFrame','접수등록');
        Sleep(500);
        iCnt := iCnt + 1;
      end;

      if WinH > 0 then begin
        // 접수창의 위치값을 찾는다.
        getWindowRect(WinH, fRect);
        // 팝업메뉴 위치값 설정.
        iMainX := fRect.Left + 106;
        iMainY := fRect.Top  + 133;
        iSubX  := iMainX + 42;
        iSubY  := iMainY + 75;
        // 마우스 우측메뉴 팝업..
        ProcMouseRightClick(iMainX, iMainY);
        // 붙여넣기 클릭..
        ProcMouseLeftClick(iSubX, iSubY);
        // 엔터 키 이벤트를 날린다.
        SendPressEnter;

        //===============================================================
        try
    			slReceive := TStringList.Create;
          try
            ls_TxLoad := GTx_UnitXmlLoad('C007.XML');
            ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
						ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString',  'RESV0005', [rfReplaceAll]);

            ls_TxLoad := StringReplace(ls_TxLoad, 'ConfSlipString',   AOrderSeq, [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'CurStatusString',  AStatus, [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'InSabunString',    GT_USERIF.ID, [rfReplaceAll]);
            ls_TxLoad := StringReplace(ls_TxLoad, 'GubunCodeString',  '5', [rfReplaceAll]);

            if Dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
            begin
              rv_str := slReceive[0];
              if rv_str <> '' then
              begin
                ls_rxxml := rv_str;
                Application.ProcessMessages;
                proc_ReAcceptRead(ls_rxxml);
                proc_Acc_Search(1, AOrderSeq);
              end;
            end;
          finally
            slReceive.Free;
          end;
        except
          on e : exception do begin
            ShowMessage('오더 상태를 변경하던중 에러가 발생 하였습니다.' + #13#10 + e.Message);
          end;
        end;
        //===============================================================
      end else begin
        ShowMessage('콜마트 "접수창" 을 찾을 수 없습니다.');
      end;
    end else begin
      ShowMessage('콜마트가 "로그인" 되어있지 않습니다.');
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Tfrm_JON03.proc_ReAcceptRead(ss_XML: string);
var
  ls_MSG_Err, ls_ClientKey: string;
  ls_XML: string;
begin
  SetDebugeWrite('JON03.proc_ReAcceptRead');
  try
    ls_XML := ss_XML;
    ls_ClientKey := GetXmlClientKey(ls_XML);
    if (Copy(ls_ClientKey, 1, 4) = 'RESV') then
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_XML);
      if ('0000' = ls_Msg_Err) then
      begin
        if StrToIntDef(Copy(ls_ClientKey, 5, 4), 0) = 5 then
          GMessagebox('대기로 변경되었습니다.', CDMSI)
        else
          if StrToIntDef(Copy(ls_ClientKey, 5, 4), 0) = 6 then
          GMessagebox('대기해제 되었습니다.', CDMSI);
        Exit;
      end else
      begin
        GMessagebox(MSG013 + CRLF + ls_Msg_Err, CDMSE);
      end;
    end else
    if ls_ClientKey = 'APWK0001' then
    begin
      ls_Msg_Err := GetXmlErrorCode(ls_XML);
      if ('0000' = ls_Msg_Err) then
        //            Proc_AcceptInfomation(ls_XML)
      else
        GMessagebox(MSG101 + CRLF + ls_Msg_Err, CDMSE);
    end else
    if (ls_ClientKey = 'SMSP0001') then
    begin
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Tfrm_JON03.proc_PlaySound(sFile: string);
begin
	SetDebugeWrite('JON03.proc_PlaySound');
	if FileExists(sFile) then
		sndPlaySound(PChar(sFile), SND_FILENAME or SND_ASYNC or SND_NODEFAULT)
	else
		GMessagebox('지정된 파일이 존재하지 않습니다.', CDMSE);
end;

procedure Tfrm_JON03.DisplayTodayOrders(AXmlData: string);
Var i : Integer;
    aStCnt: array[0..14] of int64;
begin
  SetDebugeWrite('JON03.DisplayTodayOrders Start');
  SetCurrentView(cxViewCounselToday);

  cxViewCounselToday.DataController.SetRecordCount(0);
  Application.ProcessMessages;

  for i := 0 to 14 do
		aStCnt[i] := 0;
 	DispOrderCount(0, aStCnt);

  if Trim(AXmlData) = '' then Exit; 
  try
		cxViewCounselToday.BeginUpdate;
		func_AcceptInsert(cxViewCounselToday, AXmlData);
    proc_lap_time;
    cxViewCounselToday.EndUpdate;

		SetDebugeWrite('JON03.DisplayTodayOrders End');
  except on E: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure Tfrm_JON03.proc_lap_timeExcel;
var
	IsSafe: Boolean;
	i, iAccTime2, ilap, istcd, iFirstTime, iFirstTimeFix, iPassTime, iFinishTime, iBrNo, iCustTel, iUpdateTime,
	iCustName, iBigo, iCnt, iReceipter, iOrgDay, iBDTimeFix : Integer;
	sTemp, OrderState, FirstTime, FirstTimeFix, AccTime2, CustTel, BrNo, Name, Bigo, sOrgDay, BDTime: string;
	SafeTime: Integer;
	sTmp : string;

	Bigo2: string;
	AView: TcxGridDBTableView;
begin
	SetDebugeWrite('Frm_JON03.proc_lap_timeExcel');
	try
		if GS_JON03DetailExcelView then
		begin
			AView := sg_xlsView;

			iBDTimeFix   := AView.GetColumnByFieldName('배차지연시간').Index;		
			for i := 0 to AView.DataController.RecordCount - 1 do
			begin
				OrderState  := AView.DataController.Values[i, giStCd];
				FirstTimeFix:= AView.DataController.Values[i, giFirstTimeFix];  //형번환없는 고정값 20200514KHS
				AccTime2    := AView.DataController.Values[i, giAccTime2];
				CustTel     := AView.DataController.Values[I, giCustTel];
				BrNo        := AView.DataController.Values[I, giBrNo];
				BDTime      := AView.DataController.Values[I, iBDTimeFix];
				SafeTime    := GetCustInfoSafeMin(BrNo);

				// 접수경과시간
				if ( OrderState = '0' ) Or ( OrderState = '1' ) then
				begin
					if gJONOrderColor.Gubun = 0 then
						AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giAccTime2], dt_ServerTime[Self.Tag])
					else
					if gJONOrderColor.Gubun = 1 then
						AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giFirstTimeFix], dt_ServerTime[Self.Tag]);

					if ( OrderState = '0' ) then // 배차지연시간
					begin
						AView.DataController.Values[i, giBDTime] := func_lap_timeDuration(AView.DataController.Values[i, iBDTimeFix], dt_ServerTime[Self.Tag]);
						if gidxSortTime = giBDTime then
							AView.DataController.Values[i, giSortTime] := func_lap_timeDuration(AView.DataController.Values[i, iBDTimeFix], dt_ServerTime[Self.Tag], 1);
					end;
				end;

				// 취소경과시간
//				if ( GB_365System ) And ( OrderState = '8' ) And ( AView.DataController.Values[i, giCancelTime] <> '' ) then
				if ( OrderState = '8' ) And ( AView.DataController.Values[i, giCancelTime] <> '' ) then
				begin
					if gJONOrderColor.Gubun = 0 then
						AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giAccTime2], AView.DataController.Values[i, giCancelTime], 1)
					else
					if gJONOrderColor.Gubun = 1 then
						AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giFirstTimeFix], AView.DataController.Values[i, giCancelTime], 1);
				end;

				// 완료
				if (OrderState = '2') and (FirstTimeFix <> '') then
				begin
					if ( GB_365System ) then
					begin
						// 경과시간도 표시 2020.12.08 정회귀팀장 요청
						if gJONOrderColor.Gubun = 0 then
							AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giAccTime2], AView.DataController.Values[i, giBaecha2], 1)
						else
						if gJONOrderColor.Gubun = 1 then
							AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giFirstTimeFix], AView.DataController.Values[i, giBaecha2], 1);
					end;

					if GS_PASSTIMECHK = 0 then //지난시간 기준이 접수시간2 이면
						AView.DataController.Values[i, giPassTime] := func_lap_time(AccTime2, AView.DataController.Values[i, giFinishTime2], 1)
					else
						AView.DataController.Values[i, giPassTime] := func_lap_time(FirstTimeFix, AView.DataController.Values[i, giFinishTime2], 1);
				end else
				if (StrToIntDef(OrderState, 0) in [0, 1, 3, 5]) and (FirstTimeFix <> '') then
				begin
					if GS_PASSTIMECHK = 0 then //지난시간 기준이 접수시간2 이면
						AView.DataController.Values[i, giPassTime] := func_lap_time(AccTime2, dt_ServerTime[Self.Tag], 1)
					else
						AView.DataController.Values[i, giPassTime] := func_lap_time(FirstTimeFix, dt_ServerTime[Self.Tag], 1);
				end;

				// 배차 후 경과시간
				if ((OrderState = '1') Or (OrderState = '3') Or (OrderState = 'B') Or (OrderState = 'D')) and
						(AView.DataController.Values[i, giBaecha2] <> '') then
				begin
					AView.DataController.Values[i, giPassBaecha] := func_lap_time(AView.DataController.Values[i, giBaecha2], dt_ServerTime[Self.Tag], 1);

					// 경과시간도 표시 2020.12.08 정회귀팀장 요청
					if gJONOrderColor.Gubun = 0 then
						AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giAccTime2], AView.DataController.Values[i, giBaecha2], 1)
					else
					if gJONOrderColor.Gubun = 1 then
						AView.DataController.Values[i, giDuration] := func_lap_timeDuration(AView.DataController.Values[i, giFirstTimeFix], AView.DataController.Values[i, giBaecha2], 1);
				end;

				IsSafe := False;

				//타사이관콜센터 ~분후 고객번호 숨김 처리
				if (GT_USERIF.LV = '10') and (SafeTime > 0) and (OrderState[1] in ['2', '4', '8']) then
				begin
					// 완료 후 경과시간이 ~분이상인 경우 고객정보 마킹처리(완료시간 기준)
					if OrderState = '2' then
					begin
						OutputDebugString(PChar(string(AView.DataController.Values[i, giFinishTime2])));
						if IsOverTime(AView.DataController.Values[i, giFinishTime2], SafeTime) then
							IsSafe := True;
					end else
					// 문의 후 경과시간이 ~분이상인 경우 고객정보 마킹처리(최초접수시간 기준)
					if OrderState = '4' then
					begin
						if IsOverTime(AView.DataController.Values[i, giFirstTimeFix], SafeTime) then
							IsSafe := True;
					end else
					// 취소 후 경과시간이 ~분이상인 경우 고객정보 마킹처리(수정시간 기준)
					if OrderState = '8' then
					begin
						if (AView.DataController.Values[I, giUpdateTime] <> '') and IsOverTime(AView.DataController.Values[I, giUpdateTime], SafeTime) then
							IsSafe := True;
					end;
				end else
				if (GT_USERIF.LV = '10') and (SafeTime = -1) and (OrderState[1] in ['2', '4', '8']) then
				begin
					IsSafe := True;
				end;

				if IsSafe then
				begin
					// 고객번호
					AView.DataController.Values[I, giCustTel] := '***-****-****';
					AView.DataController.Values[I, giCustTel2] := '***-****-****';
					// 고객명
					Name := Trim(AView.DataController.Values[I, giCustNm]);
					if Name <> '' then
						AView.DataController.Values[I, giCustNm] := '***';
					// 적요
					Bigo := Trim(AView.DataController.Values[I, giBigo]);
					if Bigo <> '' then
						AView.DataController.Values[I, giBigo] := '*****';
					// 적요2
					Bigo2 := Trim(AView.DataController.Values[I, giBigo2]);
					if Bigo2 <> '' then
						AView.DataController.Values[I, giBigo2] := '*****';
					// 이용횟수
					AView.DataController.Values[I, giCnt] := '99999';
					//상담원 id(성명)
				 if Pos('(',AView.DataController.Values[I, giReceipter]) > 0 then
						AView.DataController.Values[I, giReceipter] := copy(AView.DataController.Values[I, giReceipter], 1, pos('(', AView.DataController.Values[I, giReceipter]) -1);
				end;
			end;
		end else
		begin
			iOrgDay     := sg_xls.GetColumnByFieldName('기준일자').Index;
			iaccTime2   := sg_xls.GetColumnByFieldName('접수시간').Index;
			iLap        := sg_xls.GetColumnByFieldName('경과시간').Index;
			istcd       := sg_xls.GetColumnByFieldName('상태').Index;
			iFirstTime  := sg_xls.GetColumnByFieldName('최초접수시간').Index;
			iFirstTimeFix  := sg_xls.GetColumnByFieldName('최초접수시간고정').Index;
			iPassTime   := sg_xls.GetColumnByFieldName('지난시간').Index;
			iFinishTime := sg_xls.GetColumnByFieldName('완료시간').Index;
			iBrNo       := sg_xls.GetColumnByFieldName('발주지사').Index;
			iCustTel    := sg_xls.GetColumnByFieldName('고객번호').Index;
			iUpdateTime := sg_xls.GetColumnByFieldName('수정시간').Index;
			iCustName   := sg_xls.GetColumnByFieldName('고객명').Index;
			iBigo       := sg_xls.GetColumnByFieldName('적요').Index;
			iCnt        := sg_xls.GetColumnByFieldName('횟수').Index;
			iReceipter  := sg_xls.GetColumnByFieldName('상담원').Index;

			for I := 0 to sg_xls.DataController.RecordCount - 1 do
			begin
				OrderState  := sg_xls.DataController.Values[i, iStCd];
				FirstTime   := sg_xls.DataController.Values[i, ifirstTime];
				FirstTimeFix   := sg_xls.DataController.Values[i, iFirstTimeFix];
				AccTime2    := sg_xls.DataController.Values[i, iaccTime2];
				CustTel     := sg_xls.DataController.Values[I, iCustTel];
				BrNo        := sg_xls.DataController.Values[I, iBrNo];
				SafeTime    := GetCustInfoSafeMin(BrNo);

				//기준일자 계산
				sTmp := StringReplace(AccTime2, ' ', '', [rfReplaceAll]); 
				sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]); 
				sTmp := StringReplace(sTmp, ':', '', [rfReplaceAll]); 
				sOrgDay := func_JON03SalesDate(sTmp);  
				sg_xls.DataController.Values[I, iOrgDay] := sOrgDay;
				//기준일자 계산
								
				if OrderState = '0' then
					sg_xls.DataController.Values[I, iLap] := func_lap_time(sg_xls.DataController.Values[I, iaccTime2], dt_ServerTime[Self.Tag]);

				if (OrderState = '2') and (sg_xls.DataController.Values[i, iFirstTimeFix] <> '') then
				begin
					if GS_PASSTIMECHK = 0 then //지난시간 기준이 접수시간2 이면
						sg_xls.DataController.Values[i, iPassTime] := func_lap_time(AccTime2, sg_xls.DataController.Values[i, ifinishTime], 1)
					else
						sg_xls.DataController.Values[i, iPassTime] := func_lap_time(FirstTimeFix, sg_xls.DataController.Values[i, ifinishTime], 1);
				end	else
				if (StrToIntDef(OrderState, 0) in [0, 1, 3, 5]) and (FirstTimeFix <> '') then
				begin
					if GS_PASSTIMECHK = 0 then //지난시간 기준이 접수시간2 이면
						sg_xls.DataController.Values[i, iPassTime] := func_lap_time(AccTime2, dt_ServerTime[Self.Tag], 1)
					else
						sg_xls.DataController.Values[i, iPassTime] := func_lap_time(FirstTimeFix, dt_ServerTime[Self.Tag], 1);
				end;

				IsSafe := False;
				//타사이관콜센터 ~분후 고객번호 숨김 처리
				if (SafeTime > 0) and (OrderState[1] in ['2', '4', '8']) then
				begin
					// 완료 후 경과시간이 ~분이상인 경우 고객정보 마킹처리(완료시간 기준)
					if OrderState = '2' then
					begin
						if IsOverTime(sg_xls.DataController.Values[i, iFinishTime], SafeTime) then
							IsSafe := True;
					end
					// 문의 후 경과시간이 ~분이상인 경우 고객정보 마킹처리(최초접수시간 기준)
					else if OrderState = '4' then
					begin
						if IsOverTime(sg_xls.DataController.Values[i, iFirstTimeFix], SafeTime) then
							IsSafe := True;
					end
					// 취소 후 경과시간이 ~분이상인 경우 고객정보 마킹처리(수정시간 기준)
					else if OrderState = '8' then
					begin
						if (sg_xls.DataController.Values[I, iUpdateTime] <> '') and IsOverTime(sg_xls.DataController.Values[I, iUpdateTime], SafeTime) then
							IsSafe := True;
					end;

					if IsSafe then
					begin
						// 고객번호
						sg_xls.DataController.Values[I, iCustTel] := '***-****-****';
						// 고객명
						Name := Trim(sg_xls.DataController.Values[I, iCustName]);
						if Name <> '' then
							sg_xls.DataController.Values[I, iCustName] := '***';
						// 적요
						Bigo := Trim(sg_xls.DataController.Values[I, iBigo]);
						if Bigo <> '' then
							sg_xls.DataController.Values[I, iBigo] := '*****';
						// 이용횟수
						sg_xls.DataController.Values[I, iCnt] := '99999';
						sg_xls.DataController.Values[I, iReceipter] := copy(sg_xls.DataController.Values[I, iReceipter], 1, pos('(', sg_xls.DataController.Values[I, iReceipter]) -1);
					end;
				end;
			end;
		end;
	except
    on E: Exception do
    begin
			sTemp := 'Jon03[proc_lap_timeExcel]Error : ' + e.Message;
      Assert(False, E.Message);
      GMessagebox(PChar(sTemp), CDMSE);
    end;
  end;
end;

procedure TFrm_JON03.proc_MultiChStCd;
var
	AView: TcxGridDBTableView;
	I, iCol, iHdNo, iWkHdNo, iWkBrNo, iCustTel1, iCustTel22 : Integer;
begin
	Try
		AView := GetCurrentView;
		FMultiOrderChange.HdNo.Clear; 
		FMultiOrderChange.BrNo.Clear; 
		FMultiOrderChange.Status.Clear;
		FMultiOrderChange.Slip.Clear;
		FMultiOrderChange.Start.Clear;
		FMultiOrderChange.sEnd.Clear;
		FMultiOrderChange.CustNm.Clear;
		FMultiOrderChange.CustTel.Clear;
		FMultiOrderChange.CustTel1.Clear;
		FMultiOrderChange.CustTel22.Clear;
		FMultiOrderChange.CashType.Clear;
		FMultiOrderChange.Deposit.Clear;
		FMultiOrderChange.Lat.Clear;
		FMultiOrderChange.Lon.Clear;
    FMultiOrderChange.WkSabun.Clear;
		FMultiOrderChange.WkHdNo.Clear;
		FMultiOrderChange.WkBrNo.Clear;
		FMultiOrderChange.KeyNumber.Clear;
    

		iCol    := AView.GetColumnByFieldName('지급').Index;
		iHdNo   := AView.GetColumnByFieldName('발주본사').Index;
		iWkHdNo := AView.GetColumnByFieldName('기사본사코드').Index;
		iWkBrNo := AView.GetColumnByFieldName('기사지사코드').Index;
    iCustTel1 := AView.GetColumnByFieldName('고객번호1').Index;
		iCustTel22  := AView.GetColumnByFieldName('고객번호22').Index;
		for I := 0 to AView.DataController.RecordCount-1 do
		begin
			if AView.ViewData.Records[i].Selected then
			begin
				FMultiOrderChange.HdNo.Add(AView.ViewData.Records[I].Values[iHdNo]);
				FMultiOrderChange.BrNo.Add(AView.ViewData.Records[I].Values[giBrNo]);
				FMultiOrderChange.Slip.Add(AView.ViewData.Records[I].Values[giSlip]);
				FMultiOrderChange.Status.Add(AView.ViewData.Records[I].Values[giStCd]);
				FMultiOrderChange.Start.Add(AView.ViewData.Records[I].Values[giStartArea]);
				FMultiOrderChange.sEnd.Add(AView.ViewData.Records[I].Values[giEndArea]);
				FMultiOrderChange.CustNm.Add(AView.ViewData.Records[I].Values[giCustNm]);
				FMultiOrderChange.CustTel.Add(AView.ViewData.Records[I].Values[giCustTel]);
				FMultiOrderChange.CustTel1.Add(AView.ViewData.Records[I].Values[iCustTel1]);
				FMultiOrderChange.CustTel22.Add(AView.ViewData.Records[I].Values[iCustTel22]);
				FMultiOrderChange.CashType.Add(AView.ViewData.Records[I].Values[giType]);
				FMultiOrderChange.Deposit.Add(AView.ViewData.Records[I].Values[iCol]);
				FMultiOrderChange.Lat.Add(AView.ViewData.Records[I].Values[giLat]);
				FMultiOrderChange.Lon.Add(AView.ViewData.Records[I].Values[giLng]);
        FMultiOrderChange.WkSabun.Add(AView.ViewData.Records[I].Values[giWkSabun]);
				FMultiOrderChange.WkHdNo.Add(AView.ViewData.Records[I].Values[iWkHdNo]);
				FMultiOrderChange.WkBrNo.Add(AView.ViewData.Records[I].Values[iWkBrNo]);
        FMultiOrderChange.KeyNumber.Add(AView.ViewData.Records[I].Values[giKeyNum]);

				AView.ViewData.Records[i].Selected := False;
			end;
		end;
		mmo_AccStatus.lines.Clear;
		lb_ACnt.Caption := '0';
		lb_FCnt.Caption := '0';
		Gauge1.Max := 0;
		Gauge1.Position := 0;
	except

  End;
end;

procedure TFrm_JON03.OnPage(ANowPage, AFinalPage: string);
begin
	SetDebugeWrite('JON03.OnPage');
	if not FStatusView then Exit;

  status_bar.Panels[0].Text := '조회중  [ ' + ANowPage + ' ]';
  Application.ProcessMessages;
end;

procedure TFrm_JON03.proc_UserPer;
begin
  SetDebugeWrite('JON03.proc_UserPer');
  try
    ///////////////////////////////////////////////
    //   권한 적용
    ///////////////////////////////////////////////

    rb_Accept.Enabled := False;
    if TCK_USER_PER.JON_Order = '1' then
    begin
      rb_Accept.Enabled := True;
  		Frm_Main.Server_CID.Port := GT_CAT_PORT.XmlCIDPort;
  		// 8800 --> 8780 변경.2007-12-12 최도순
  		if (GS_EXEC_GUBUN = 1) then
  		begin
  			Frm_Main.Server_CID.Active := True;
  		end;
    end else
    begin
  		rb_Accept.Enabled := False;
  		Frm_Main.Server_CID.Port := GT_CAT_PORT.XmlCIDPort;
  		// 8800 --> 8780 변경.2007-12-12 최도순
  		Frm_Main.Server_CID.Active := False;
    end;

    OnJCMNPacketPage := OnPage;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

function TFrm_JON03.fGetBaechaTypeName( BTCode : String ) : String;
begin
  Result := '';
  try
    if BTCode = ''  then Result := '' else   // '' 미배차
    if BTCode = 'N' then Result := '' else   // 미배차
    if BTCode = '0' then Result := '' else   // 기사배차
    if BTCode = 'M' then Result := '다중근배'     else
    if BTCode = '1' then Result := '강제배차'     else
		if BTCode = '2' then Result := '문자배차'     else
    if BTCode = '3' then Result := '차감문자배차' else
    if BTCode = '6' then Result := '타프로그램배차' else
    if BTCode = 'F' then Result := '현장콜'       else
    if BTCode = 'H' then Result := '전전기사배차' else
    if BTCode = 'K' then Result := '카카오배차'   else
    if BTCode = 'L' then Result := '이전기사배차' else
		if BTCode = 'R' then Result := '예약배차'     else
    if BTCode = 'S' then Result := '근거리배차'   else
		if BTCode = 'T' then Result := '스마트배차'   else
    if BTCode = 'U' then Result := '도착지근배'
                    else Result := BTCode;               // 코드가 없으면 BTCode 그대로 넣어줌
  except
    Result := '';
  end;
end;

// 20120801 LYB 수정
//20190328 KHS 수정
procedure TFrm_JON03.ReSize_edtFastKey;
var i, vWidth, vLeft, iTot : Integer;
begin
	if Not cb_10.Checked then Exit;

  iTot := 0;
	if Trim(gJONFastFind.Key1 ) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key2 ) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key3 ) <> '' then Inc(iTot);
	if Trim(gJONFastFind.Key4 ) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key5 ) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key6 ) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key7 ) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key8 ) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key9 ) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key10) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key11) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key12) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key13) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key14) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key15) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key16) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key17) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key18) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key19) <> '' then Inc(iTot);
  if Trim(gJONFastFind.Key20) <> '' then Inc(iTot);

  if iTot > 7 then
  begin
    pnl_MultiSearch.Height := 21;
    pnl_Search.Height := 118;

    vWidth := Trunc( ( pnl_MultiSearch.Width ) / (iTot-7) );
    vLeft := 3;

    if pnl_MultiSearch.Width > iTot * 166 then  vWidth := 166;  //기본 6개항목에 대한 길이 고정
    //if iTot <= 6 then vWidth := 166;  //기본 6개항목에 대한 길이 고정

    for i := 8 to iTot do
    begin
      TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Width := vWidth;
      TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Top  := 0;
      TcxTextEdit(FindComponent('edtFastKey'+IntToStr(i))).Left := vLeft;

      TcxLabel(FindComponent('lbFastKey'+IntToStr(i))).Top  := 0 + 2;
      TcxLabel(FindComponent('lbFastKey'+IntToStr(i))).Left := vLeft + 5;
      TcxLabel(FindComponent('lbFastKey'+IntToStr(i))).Width := vWidth - 10;

      vLeft := vLeft + vWidth;
    end;
  end;

  if grpSetLocalS.Visible then grpSetLocalS.Visible := False;
end;

procedure TFrm_JON03.pGridSetFocus;
begin
  if Grd2.CanFocus then Grd2.SetFocus else
  if cxGridCounselToday.CanFocus then cxGridCounselToday.SetFocus;
end;

function TFrm_JON03.IsOtherBranchCall(Sender : TObject) : Boolean;
Var sLog : String;
begin
  Result := False;
	if not func_check_CallCenter then
	begin
    if Sender is TMenuItem then sLog := TMenuItem(Sender).Name;

		Assert(False, Format('Frm_JON03.%sClick - 타사콜입니다.' + sChCallMsg, [sLog]));
		if icheck_CT_Flag = 0 then
		begin
			GMessagebox('타사콜입니다.' + #13#10 + '상태변경을 할 수 없습니다.', CDMSE);
		end;
    Result := True;
	end;
end;

function TFrm_JON03.IsMenuOpen(Sender : TObject) : Boolean;
begin
  Result := False;
  if grpSetBrch_select.Visible then
  begin
    GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
    grpSetBrch_select.BringToFront;
    GB_JON03SELECT_GB := True;
    Result := True;
    Exit;
  end;

  if ( Assigned(Frm_JON15) ) And ( Frm_JON15 <> Nil ) then
  begin
    if Frm_JON15.Visible then
    begin
      GMessagebox('오더취소창을 닫고 작업해 주세요', CDMSE);
      Frm_JON15.rg_Cancelchoice.SetFocus;
      GB_JON03SELECT_GB := True;
      Frm_JON15.Show;
      Result := True;
      Exit;
    end;
  end;

  if grpSetPanelty.Visible then
  begin
    GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
    grpSetPanelty.BringToFront;
    GB_JON03SELECT_GB := True;
    Result := True;
    Exit;
  end;

  if grpSetcancel_charge.Visible then
  begin
    GMessagebox('상태변경창을 닫고 작업해 주세요', CDMSE);
    grpSetcancel_charge.BringToFront;
    GB_JON03SELECT_GB := True;
    Result := True;
    Exit;
  end;
end;

end.






{
셀번호	항목	속성	visible
0	대표번호	string	TRUE
1	발주지사명	string	TRUE
2	상태	string	TRUE
3	고객번호	string	TRUE
4	고객명	string	TRUE
5	횟수	integer	TRUE
6	경과시간	string	TRUE
7	접수시간	string	TRUE
8	배차시간	string	TRUE
9	완료시간	string	TRUE
10	출발지	string	TRUE
11	도착지	string	TRUE
12	요금	integer	TRUE
13	상담원	string	TRUE
14	기사명	string	TRUE
15	기사사번	string	TRUE
16	기사위치	string	TRUE
17	적요	string	TRUE
18	고객구분	string	TRUE
19	법인명	string	TRUE
20	결제	string	TRUE
21	취소사유	string	TRUE
22	접수번호	string	TRUE
23	최초접수시간	string	TRUE
24	지난시간	string	TRUE
25	공유	string	FALSE
26	발주지사	string	FALSE
27	메모	string	FALSE
28	현재시간	string	FALSE
29	콜센터코드	string	FALSE
30	출발지1	string	FALSE
31	도착지1	string	FALSE
32	접수시간2	string	FALSE
33	기사본사코드	string	FALSE
34	기사지사코드	string	FALSE
35	기사콜센터	string	FALSE
36	고객번호2	string	TRUE
37	실제등록콜센터	string	FALSE
38	법인코드	string	FALSE
39	공유콜	string	FALSE
40	고객코드	string	FALSE
41	배차시간2	string	FALSE
42	완료시간2	string	FALSE
43	출발지X	string	FALSE
44	출발지Y	string	FALSE
45	고객번호1	string	FALSE
46	배차경과	string	TRUE
47	수정시간	string	FALSE
48	출발지(시군구)	string	TRUE
49	DNIS	string	TRUE
50	고객등급코드	string	FALSE
51	상태정렬	string	FALSE
52	플러스콜	string	FALSE
53	수수료	integer	TRUE
54	적요2	string	TRUE
55	접수구분	string	FALSE
56	결제구분	string	FALSE
57	고객번호22	string	FALSE
58	배차구분	string	TRUE
59	고객등급	string	TRUE
60	고객마일리지	integer	TRUE
61	이벤트횟수	integer	TRUE
62	고객통화여부	string	TRUE
63	배차거리	string	TRUE
64	나이제한	string	TRUE
65	적요3	string	TRUE
66	수정상담원	string	TRUE
67	콜마너2	string	FALSE
68	법인승인	string	TRUE
69	콜벨	string	TRUE
70     지급 TRUE
71	발주본사	string	FALSE
72	후불충전	string	TRUE
73	카드금액	integer	TRUE
74	탁송연합콜	string	TRUE
75	리콜	string	TRUE
76	경비지급	integer	TRUE
77	기준일자	string	FALSE
78	운행시작시간	string	TRUE
79	최초접수시간고정	string	FALSE
80	도착지X string	FALSE
81	도착지Y string	FALSE
82	후불요금 FALSE
83	카드요금 FALSE
84	마일요금 FALSE
85	콜링지사 string	FALSE
86	콜링지사명 string	FALSE
87	콜링대표번호 string	FALSE
88	고객 string	TRUE
89	기사 string	TRUE
90	콜센터2 string	FALSE
91	복수콜번호 FALSE
92	취소시간 FALSE
93	보정요금 integer	TRUE
94	공유여부 TRUE
95	카드승인 TRUE
96	지원금 TRUE
97	기타지급금 integer	TRUE
98	지원 integer	TRUE
99	시간정렬 FALSE
100	상담원ID이름 string	FALSE
101	배차지연 string	TRUE
102	배차지연시간 string	FALSE
103	KM공유 string	TRUE
104	보험료무료 string	TRUE
105	odb_wk_sabun string	FALSE
106	현금 FALSE
}

unit xe_JON30;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Magnetic,
  Dialogs, StdCtrls, iniFiles, GradientLabel, Menus, cxLookAndFeelPainters, System.Math,
  cxGraphics, cxCheckBox, cxLabel, cxMaskEdit, cxDropDownEdit, cxTextEdit, System.JSON,
  cxRadioGroup, cxControls, cxContainer, cxEdit, cxGroupBox, cxButtons, MSXML2_TLB,
  ExtCtrls, cxPC, cxStyles, cxCustomData, cxFilter, SZHash,
  cxLookAndFeels, System.Win.ScktComp, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, dxGDIPlusClasses, Vcl.Grids, AdvObj,
  BaseGrid, AdvGrid, Vcl.OleCtrls, TalMapXLib_TLB, System.StrUtils, SHDocVw,
  cxMemo, cxRichEdit, System.AnsiStrings, Vcl.ImgList, cxPCdxBarPopupMenu, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
	cxGridCustomView, cxGrid, dxBarBuiltInMenu, AdvGlowButton, dxSkinsCore,
	dxSkinscxPCPainter, System.ImageList, AdvUtil, IdSSLOpenSSL,
  cxImageList, dxSkinSharp, dxSkinOffice2010Silver, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type

	TPOILIST = record
		slAddr, slADetail,slNear, slDis, slLat, slLon, slSido, slGugun, slDong, sPoiId, sGUIDE_X, sGUIDE_Y, slGubun, sNo, sEtc, sAddress : TStringList;
	end;
  TMapAddrRec = record
    Sido, Gugun, Dong: string;
  end;
  TMapRecPosRec = record
    Top, Left, Bottom, Right: string;
  end;
  TMapWkInfoRec = record
		Sabun, Name, ATTEND, PASS_TIME, Con_State, BR_Type, FinCnt, MAPX, MAPY, BrNo, BrName, HP, PHONE : string;
  end;
  TMapPosRec = record
    XPos, YPos: string;
  end;
  TPosRec = record
    X, Y: string;
  end;
  TAreaSlot = class(TObject)
  private
    FPosX: string;
    FPosY: string;
  public
    constructor Create(const PosX, PosY: string);

		property PosX: string read FPosX write FPosX;
    property PoxY: string read FPosY write FPosY;
  end;

	TOnSelectedMap =  procedure(const ASido, AGugun, ADong, ADetail, AX, AY: string) of object;

  TFrm_JON30 = class(TForm)
    pnlBottom: TPanel;
    pnlTitle: TPanel;
    btnClose: TcxButton;
    pmAcceptMap: TPopupMenu;
    mniStart: TMenuItem;
    mniEnd: TMenuItem;
    mniSepIndex: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N500m1: TMenuItem;
    N1Km1: TMenuItem;
    N3Km1: TMenuItem;
    N5Km1: TMenuItem;
    N4: TMenuItem;
    pnlMap: TPanel;
    pnlPOI: TPanel;
    tmThread: TTimer;
    TT1: TTimer;
    TT2: TTimer;
    btnClose1: TcxButton;
    pnl_01START: TPanel;
    pnl_02END: TPanel;
    AdvStringGrid2: TAdvStringGrid;
    AdvStringGrid1: TAdvStringGrid;
		AdvStringGrid3: TAdvStringGrid;
    AdvStringGrid4: TAdvStringGrid;
    AdvStringGrid5: TAdvStringGrid;
		AdvStringGrid6: TAdvStringGrid;
    pnl_03VIA: TPanel;
    AdvStringGrid7: TAdvStringGrid;
		AdvStringGrid8: TAdvStringGrid;
    AdvStringGrid9: TAdvStringGrid;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    pm_WKmenu: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    mniWORCallingPDA: TMenuItem;
    mniWORCallingHP: TMenuItem;
    MenuItem5: TMenuItem;
    CSMsn: TClientSocket;
    TT3: TTimer;
    PnlClient3: TPanel;
    PnlClient2: TPanel;
    PnlClient1: TPanel;
    AdvStringGrid1L: TAdvStringGrid;
    AdvStringGrid5L: TAdvStringGrid;
    AdvStringGrid8L: TAdvStringGrid;
    TTL: TTimer;
    TmrChkTag: TTimer;
    cxImageList1: TcxImageList;
    BtnLClose1: TcxButton;
    BtnLClose2: TcxButton;
    BtnLClose3: TcxButton;
    mMap: TTalMapXCtrl;
    btn_Potal_Search: TcxButton;
    pm_DongSelect: TPopupMenu;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    NPOIADD: TMenuItem;
    N11: TMenuItem;
    pm_ErrorPOI: TPopupMenu;
    NErrorPOI: TMenuItem;
		cxLblActive: TLabel;
		TT3_1: TTimer;
    TT2_1: TTimer;
    tmThreadPaste: TTimer;
    TT2_D: TTimer;
    TT2_N: TTimer;
    pnl_NaverMap: TPanel;
    webNaverMap: TWebBrowser;
    Panel1: TPanel;
    btnSPoiMove: TcxButton;
    btnEPoiMove: TcxButton;
    btnSPoiAMove: TcxButton;
    btnEPoiAMove: TcxButton;
    pnlSCnt: TPanel;
    lblSCnt: TcxLabel;
    btnGSort: TcxButton;
    tmrWNSUM: TTimer;
    btnPortalE: TcxButton;
    cxBtnFixPos: TcxButton;
    grpSetPoiOption: TcxGroupBox;
    chkNaverMap: TcxCheckBox;
    Shape3: TShape;
    cxGroupBox2: TcxGroupBox;
    Shape4: TShape;
    rbPOI1: TcxRadioButton;
    rbPOI2: TcxRadioButton;
    cxGroupBox3: TcxGroupBox;
    Shape5: TShape;
    rbSN: TcxRadioButton;
    rbSD: TcxRadioButton;
    rbSA: TcxRadioButton;
    Shape1: TShape;
    chkUseMiniMap: TcxCheckBox;
    cxChkSchSvr: TcxCheckBox;
    chkUseAPIKey: TcxCheckBox;
    cxButton1: TcxButton;
    lblOption: TcxLabel;
    pnl_PoiAddress: TPanel;
    btn_close: TcxButton;
    lb_PoiAddress: TcxRichEdit;
    trm_2ndSearch: TTimer;
    trm_WK3SEC: TTimer;
    btnAllSch: TcxButton;
    lbl1: TcxLabel;
    Shape7: TShape;
    tmrDongPolygon: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mniStartClick(Sender: TObject);
    procedure mniEndClick(Sender: TObject);
    procedure pmAcceptMapPopup(Sender: TObject);
    procedure chkUseMiniMapClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N500m1Click(Sender: TObject);
    procedure N1Km1Click(Sender: TObject);
    procedure N3Km1Click(Sender: TObject);
    procedure N5Km1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure TalMapXCtrl1Create(ASender: TObject; Value: Integer);
    procedure TalMapXCtrl1MouseMove(ASender: TObject; Flag, X, Y: Integer);
    procedure TalMapXCtrl1POI_DblClick(ASender: TObject;
      const POI: IXPOIItem; nFlag, X, Y: Integer);
    procedure TalMapXCtrl1StateChange(ASender: TObject; Code, Value1,
      Value2: Integer);
    procedure TalMapXCtrl1UI_MouseUp(ASender: TObject; const Obj: IXUIObj;
      Flag, X, Y: Integer);
    procedure AdvStringGrid1GetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvStringGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvStringGrid1DblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid1ClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tmThreadTimer(Sender: TObject);
    procedure TT2Timer(Sender: TObject);
    procedure AdvStringGrid3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvStringGrid2DblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid3DblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid2ClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid3ClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure btnClose1Click(Sender: TObject);
    procedure AdvStringGrid4ClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid4DblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvStringGrid5GetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvStringGrid5KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvStringGrid5ClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid5DblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid6ClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid6DblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid6KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvStringGrid7KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvStringGrid7DblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid7ClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid8ClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid8DblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid8GetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvStringGrid8KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvStringGrid9ClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid9DblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid9KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure mMapPOI_Click(ASender: TObject; const POI: IXPOIItem; nFlag,
      X, Y: Integer);
    procedure pm_WKmenuPopup(Sender: TObject);
    procedure mniWORCallingPDAClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
		procedure MenuItem5Click(Sender: TObject);
    procedure CSMsnRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure CSMsnError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure AdvStringGrid8DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure AdvStringGrid5DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure AdvStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure pnlBottomResize(Sender: TObject);
    procedure TT3Timer(Sender: TObject);
    procedure AdvStringGrid8LClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure AdvStringGrid8LDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure AdvStringGrid8LKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvStringGrid5LClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure AdvStringGrid5LDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure AdvStringGrid5LKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvStringGrid1LClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure AdvStringGrid1LDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure AdvStringGrid1LKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TTLTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TmrChkTagTimer(Sender: TObject);
    procedure PnlClient1Resize(Sender: TObject);
    procedure PnlClient2Resize(Sender: TObject);
    procedure PnlClient3Resize(Sender: TObject);
    procedure BtnLClose1Click(Sender: TObject);
    procedure AdvStringGrid1LResize(Sender: TObject);
    procedure BtnLClose2Click(Sender: TObject);
    procedure AdvStringGrid5LResize(Sender: TObject);
    procedure BtnLClose3Click(Sender: TObject);
    procedure AdvStringGrid1GridHint(Sender: TObject; ARow, ACol: Integer;
      var hintstr: string);
    procedure AdvStringGrid5GridHint(Sender: TObject; ARow, ACol: Integer;
      var hintstr: string);
    procedure AdvStringGrid8GridHint(Sender: TObject; ARow, ACol: Integer;
      var hintstr: string);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure btn_Potal_SearchClick(Sender: TObject);
    procedure AdvStringGrid2GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure pm_DongSelectPopup(Sender: TObject);
    procedure cxBtnFixPosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NPOIADDClick(Sender: TObject);
    procedure NErrorPOIClick(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CSMsnConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure cxChkSchSvrClick(Sender: TObject);
    procedure TT3_1Timer(Sender: TObject);
		procedure TT2_1Timer(Sender: TObject);
    procedure tmThreadPasteTimer(Sender: TObject);
    procedure chkUseAPIKeyClick(Sender: TObject);
    procedure mMapUI_MouseHover(ASender: TObject; const Obj: IXUIObj);
    procedure mMapUI_MouseLeave(ASender: TObject; const Obj: IXUIObj);
    procedure TT2_DTimer(Sender: TObject);
    procedure TT2_NTimer(Sender: TObject);
    procedure chkNaverMapPropertiesChange(Sender: TObject);
    procedure webNaverMapDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure webNaverMapNavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure btnSPoiMoveClick(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure btnEPoiMoveClick(Sender: TObject);
    procedure btnSPoiAMoveClick(Sender: TObject);
    procedure btnEPoiAMoveClick(Sender: TObject);
    procedure chkNaverMapClick(Sender: TObject);
    procedure AdvStringGrid3GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure tmrWNSUMTimer(Sender: TObject);
    procedure AdvStringGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure btnGSortClick(Sender: TObject);
    procedure btnPortalEClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure rbPOI1Click(Sender: TObject);
    procedure rbSNClick(Sender: TObject);
    procedure lblOptionClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure trm_2ndSearchTimer(Sender: TObject);
    procedure AdvStringGrid8LResize(Sender: TObject);
    procedure trm_WK3SECTimer(Sender: TObject);
    procedure btnAllSchClick(Sender: TObject);
    procedure AdvStringGrid1Enter(Sender: TObject);
    procedure AdvStringGrid1ColumnSize(Sender: TObject; ACol: Integer; var Allow: Boolean);
    procedure tmrDongPolygonTimer(Sender: TObject);
  private
    FTargetPos: string;
    lsNbCheck : Boolean;
    gMapX, gMapY : Integer;

    slWisePoi, slNaverPoi, slWNPOI : TPOILIST ;
    procedure SetTargetPos(const Value: string);
    procedure SocketSend(ss_SendText: TStringList; socket: TClientSocket);
    function getDist(adist : Integer; ax, ay, bx, by : Double ) : boolean;
    procedure pWiseNaverSUM;
    procedure pSearchAddr(sAddrN, sAddrW, sWord: String);
	private
    { Private declarations }
    FInit: Boolean;
		FOnSelectedMap: TOnSelectedMap;
    szHash1 : TSZHash;

    piCSocketSize1: Cardinal; // ���� ������ ������..
    GS_SendMsg, GS_ReadMsg : TStringList;

    lsPOISvrIP : String;

    sSAPoiGubun, sSAPoiName, sSAPoiAddr, sOrSAPoiAddr, sSAPoiCenterLat, sSApoiCenterLon : String;

		CurDispatch: IDispatch; {save the interface globally }
		bWebLoading : Boolean;

		Naver_URL : string;
		slGubun, slAValue, slAX, slAY : string;

    giCol1, giCol2, giCol3 : Integer;

		pJon01ViaLock : TAdvGlowButton;

		procedure CreateObj;
		procedure GeneralInit;
    function M_ParseTXT(tText : String): string;
    procedure POIPos(const AValue, BValue, SValue, AX, AY: string; Idx : Integer);
    procedure Proc_AddressSvrResult;
    function SearchMapData_Svr_Offset_Final(sWord: AnsiString): boolean;
		function proc_Wisenut_GetPOI_Proc(wURL, word : string ) : Boolean;
		procedure proc_Portal_GetPOI_Daum(word, vRandom : string);
		procedure proc_Portal_GetPOI_DaumAPI(word, vRandom : string);
		procedure proc_Portal_GetPOI_DaumAPIAddr(word, vRandom : string);
    function N_HightlightTXT(tText: String): string;
    function KatecToBessel(x_1, Y_1: Double; var OutX, OutY: double): double;
    procedure Proc_SearchResultGath_Final_LocalWise;
    function proc_Wisenut_GetPOILast( wURL, word : String ) : Boolean;
    function fSetPOIChangeName(AName: String): String;
		function proc_Portal_GetPOI_NaverAPILast_cloud(wURL, vRandom, vApiKey : string): Boolean;
		procedure proc_Portal_GetPOI_NaverAPINew_cloud(word, vRandom, AGubun: string);
		procedure pAutoLockStart;
		procedure pSetFocusStart;
    procedure pAutoLockEnd;
    procedure pSetFocusEnd;
    procedure pSetFocusVia;
    procedure pActiveEditFocus( bLock : Boolean );
    procedure pGridSetFocus(vGrid: TAdvStringGrid);
    procedure pMapDongPolygon(X, Y: Integer);
    property TargetPos: string read FTargetPos write SetTargetPos;
		procedure cp_Naver_cloud(sHttp : String);
		function fGetSchFullName : String;
    procedure proc_Wisenut_GetPOILastSelect;
		procedure pSearchPortal;
		function pSearchPortalInitAndTxt( bPortalClear : Boolean = True ) : String;
    procedure pSearchPortalFirst;
    procedure pLoadNaverMap;
		function fSetAutoUnLock( aText : String ) : Boolean;

    procedure procAddressDelimited(AAdr: String; ASep : Char; Var rlTmp :TStringList);
		function func_MakeRow3(AAdvGrid : TAdvStringGrid; ARow : integer; AAreaName, AGubun:string): string;
		function func_MakeRow4(AAdvGrid : TAdvStringGrid; ARow : integer): string;
    procedure pShowOption;
	public
    { Public declarations }

    mCtrlState : IXMasterControlState;
    mCtrlMan : IXCtrlMan;
    mUiman : IXUIMan;
    mDpsize : IXSize;
		mUtil : IXUtility;
		mPoiman : IXPOIMan;
		mPoimanPos : IXPOIMan;
		mBtnLevle : array [0..12] of IXUIButton;
    MyToolBar1 : array[0..20] of IXUIButton;

		bChkTime : Boolean;

    iChkPoiSvrTag : Integer;

    bMouseDownSelect : Boolean;   // POI �˻� �� ���� ���� üũ

		iNaverSerachStartCnt, iNaverSerachEndCnt : integer; //���̹� �˻� Ƚ�� 2014.07.23 KHS
		iDaumSerachStartCnt, iDaumSerachEndCnt : integer; //���� �˻� Ƚ�� 2017.09.02 LYB

    bEnter : Boolean;   // �Ÿ����� 2�� ���Ǵ°� ���� �ϱ� ����.
    bClick : Boolean;   // POI�˻��� ���콺 Ŭ�� ����

    sPreSearchWord : string;
    bBunji : Boolean; //

    noSearch : Boolean;
    GS_MAX_WORD_STR : string;
		j30Top, j30Left : Integer;

    maxLogicalLevel, minLogicalLevel : Integer;
		FLon, SLon, ELon, FLat, SLat, ELat  : Integer;
    ss_Lon, ss_Lat : integer;
    ws_Lon, ws_Lat : integer;
		BF_Lon, BF_Lat : integer; //���� �˻���ǥ 2012.11.25 KHS
		sw_Lon, sw_Lat : Double;
    sts_Chk : Boolean;
    A1DOWN_chk : Boolean; //����Ű�� �׸����̵�
		A2DOWN_chk : Boolean;
    A1UP_chk : Boolean;
    A3UP_chk : Boolean;
    frm_Size : integer;
    lbPnlTF  : Boolean;
    WK_ING  : Boolean;
		sWk_sabun, sWk_infoC, sWk_Caption : String;
    gsWkHp, gsCustTel : string;  // ��� ���˹��� ���۽� �������� ������� ��� �ڵ��� ��ȣ ����   2012-06-19 LYB

    sStartEndG : String;

		gB_ViaIng : Boolean; //True : ������ �˻��� false : �������˻�����

    sRanDom, sSuggest : String;
    sPastRD : Integer;
    sNRanDom : String;
    bHintShow : Boolean;
		mCenterLL : IXPoint;

		gb2ndSearch : Boolean; //Ȯ��˻� ���࿩�� True : Ȯ��˻� �߰�����, False Ȯ��˻� ����

		procedure StartPos(const AValue, AX, AY: string);
		procedure EndPos(const AValue, AX, AY: string);
		procedure ViaPos(const AValue, AX, AY: string);
 		procedure PointPos(const AValue, AX, AY: string);
    procedure GetJibunAddr;

    procedure BtnLClose1Exec;
    procedure BtnLClose2Exec;
    procedure BtnLClose3Exec;

    property OnSelectedMap: TOnSelectedMap read FOnSelectedMap write FOnSelectedMap;
    procedure Show; reintroduce;

		procedure CreateLevelBar;
    procedure MakeStatusbar;
    function SetCtrlState(setType : Integer):Integer;
    function WGS84ToBessel(Y_1, x_1 : string) : integer;
		function BesselToWGS84(Y_1, x_1 : double) : integer;
    function GetAdminCodeF(GLon, GLot : Integer) : string;
    function GetDongName(GLon, GLot : Integer) : string;
    procedure OnMoveMap(lon, lat : INTEGER);
    procedure OnNaverMoveMap( Ay, Ax : String);
    function Map_SetLevel(level : Integer) : Integer;
    procedure MapLevel_Master(level : INTEGER);
    procedure Map_ZoomIn;
		procedure Map_ZoomOut;

		procedure AddWkIconReady(const AXPos, AYPos: string; AWkInfo: TMapWkInfoRec);
		procedure AddWkIconRunner(const AXPos, AYPos: string; AWkInfo: TMapWkInfoRec);

		procedure Mark_Symbol(Lon, Lat, index : Integer; sCaption, sTitle, sKey : String);
    function StrToken(var ASource: AnsiString;  ADelimiter: AnsiString): String;
		procedure WkSearch(aRound : string; iType : integer);
    procedure RequestDataWorker(const AATTEND, AState, AStatetime, AKeyKind, AKeyWord, ADistance, AX, AY, ABRTYPE : string);
    function RequestDataBase(ATxData: string; var ARxDataDom: msDOMDocument): Boolean;
    procedure ClearWkIcon;
    procedure ClearMarkStartEndVia_Icon;
    procedure ClearNaverMark;
		procedure ClearPOI;
    procedure DestroyUI;
    function chk_Map(chk : Boolean): Boolean;
    function SetWGS84(idata : string) : string;

		procedure Proc_SendParent(ss_Row: Integer; sTF: boolean = False);
		procedure Proc_SendParent_ADV2(ss_Row, ss_Col: Integer; sTF: boolean = False);
		procedure Proc_SendParent_ADV3(ss_Row: Integer; sTF: boolean = False);
		procedure Proc_SendParent_ADV4(ss_Row: Integer; sTF: boolean = False);
    function M_HightlightTXT(tText, wText: String; iColor : Integer): String;
    function D_HightlightTXT(HTEXT : String): String;

    // ��������.
    {**********************************************************************}
    procedure Proc_SearchResultGath_Final_Local;
    function  AddrKeyWord_Separate( s : string ) : string;
    function  DistCalc(sx, sy, ex, ey : string) : string ;
		procedure Proc_AddressResult(lt_Type: integer);     //advstring2
    function  fnc_TruncChar(s : string) : string;
    procedure Proc_AreaSearch_KWBase(ss_Data: AnsiString);
    function Proc_AreaSearch_KWBaseComp(ss_Data: AnsiString): AnsiString;
//		procedure proc_Portal_GetPOI(word, vRandom : string);   // API �����ϰ� �˻� ���̹�
		procedure proc_Portal_GetPOI_V5(word, vRandom : string);   // API �����ϰ� �˻� ���̹�V5
		procedure proc_Portal_GetPOI_V5_New(word, vRandom : string);   // API �����ϰ� �˻� ���̹�V5
//		function proc_Portal_GetPOILast(wURL, vRandom : string) : Boolean;
		function proc_Portal_V5_GetPOILast(wURL, vRandom : string) : Boolean;
		function proc_Portal_V5_New_GetPOILast(wURL, vRandom : string) : Boolean;
//		procedure proc_PortalN_GetPOI(word, vRandom : string);  // API �����ϰ� ���� �˻� ���̹�
		procedure proc_PortalN_V5_GetPOI(word, vRandom : string);  // API �����ϰ� ���� �˻� ���̹�
		procedure proc_PortalN_V5_New_GetPOI(word, vRandom : string);  // API �����ϰ� ���� �˻� ���̹�
		procedure proc_PortalD_GetPOI(word, vRandom : string);
		function proc_PortalD_GetPOILast(wURL, vRandom : string) : Boolean;     //advstring3
		function proc_PortalDAPI_GetPOILast(wURL, vRandom : string) : Boolean;
		function proc_Wisenut_GetPOI(word: string) : Boolean;    //advstring2
		{**********************************************************************}
		function pPDAPI_GetPOIMerge(wURL, vRandom : string) : Boolean;
		function pPNAPI_GetPOIMerge_cloud(wUrl, vRandom, vApiKey : string) : Boolean;
		{**********************************************************************}
		function  Search_Address_Front(sWord: AnsiString; var sOutAddr : string): string;
    function  AddrKeyWord_Separate_N2( s : string; var sl : TStringList) : boolean;
		function  proc_WGSToBessel(bPOI : boolean; sCity, sX, sY: string; var sRCity, sKm : string) : string;
    {**********************************************************************}
    function  Search_Address_Km_AddScore(iKm : Currency): integer;
    function  Search_Area_Km_AddScore(iKm : integer): integer;
		function  fChange_Poi_Do( vSido : String ) : String;

    {----------------------------------------------------------------------120624}
    procedure proc_LocalMapPOI_Data_Select_Mult;
    procedure Proc_LocalMap_ScoreResult;
    function fnc_AreaMatchingScoreCount_localmap(iScore, idx:integer) : integer;
    {----------------------------------------------------------------------120624}

		function proc_FindWKphone ( aSabun : String ) : String;

    procedure WMEnterSizeMove(var Msg: TMessage); message WM_ENTERSIZEMOVE;
    procedure WMSizing(var Msg: TMessage); message WM_SIZING;
    procedure WMMoving(var Msg: TMessage); message WM_MOVING;
    procedure WMExitSizeMove(var Msg: TMessage); message WM_EXITSIZEMOVE;
    procedure WMShowHideWindow(var Msg: TMessage); message WM_WINDOWPOSCHANGED;
    procedure WMSysCommand(var Msg: TMessage); message WM_SYSCOMMAND;
    procedure WMCommand(var Msg: TMessage); message WM_COMMAND;

    procedure Grid_Clear(Panel: string; Grid: Integer);
		procedure Grid_Init(Panel: string; Grid: Integer);
		procedure SetPOIMapDisplay;
    procedure pSelect_Portal( vGubun : String );
  published
    procedure cp_200(Data: string);
	end;

var
  Frm_JON30: TFrm_JON30;

function f_LocalMap_DataCopy: Boolean;

implementation

uses
  xe_gnl, xe_query, xe_dm, xe_xml, xe_func, xe_msg, FastStrings, FastStringFuncs, uLkJSON,
  Main, xe_gnl2, xe_CUT011, xe_JON31, xe_JON32, xe_SMS06, xe_Html, xe_JON012,
  xe_gnl3, xe_packet, xe_JON56, xe_JON01WNThread, xe_JON30S,
	xe_SETA1, xe_BTN, xe_BTN01, xe_WOR11, xe_JON00;

{$R *.dfm}

//Decode
function UrlDecode(const svar: AnsiString): AnsiString;
  function HexToChar(const hx: AnsiString): char;
    const
    HEX_TABLE = '0123456789ABCDEF';
    LAT_TABLE = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var
    cnt,
    digit,
    ascii: byte;
  begin
    ascii := 0;
    for cnt := 1 to 2 do
    begin
      digit := (pos(hx[cnt], HEX_TABLE) - 1);
      if cnt = 1 then
        ascii := ascii + (digit * 16)
      else
        ascii := ascii + digit;
    end;
    result := chr(ascii);
  end;

  var
  i, len: longword;
  c: Ansichar;
begin
  result:= '';
  i:= 1;
  len:= length(svar);
  while i <= len do
  begin
    c:= svar[i];
    if c = '%' then
    begin
      if (i + 2) <= len then
      begin
        inc(i);
        result := result + HexToChar(copy(svar, i, 2));
        i:= i + 2;
      end
      else
      begin
        i:= len;
      end;
    end else
    begin
      if c = '+' then
        result := result + ' '
      else
        result:= result + c;
      inc(i);
    end;
  end;
end;

//---------------------- Custom Message Handling procedures ----------------------
// These procedures shold be placed per every forms which we want to give magnetic
//  effect.

procedure TFrm_JON30.WMEnterSizeMove(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

   inherited;

   if Assigned(MagneticWndProc) then
      MagneticWndProc(Self.Handle, WM_ENTERSIZEMOVE, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON30.WMSizing(var Msg: TMessage);
var
   bHandled: Boolean;
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

   if not Assigned(MagneticWndProc) then
      inherited
   else
      if MagneticWndProc(Self.Handle, WM_SIZING, lGlue, Msg, bHandled) then
         if not bHandled then
            inherited;
end;

procedure TFrm_JON30.WMMoving(var Msg: TMessage);
var
   bHandled: Boolean;
begin
   j30Top  := Self.Top;
   j30Left := Self.Left;

  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

   if not Assigned(MagneticWndProc) then
      inherited
   else
      if MagneticWndProc(Self.Handle, WM_MOVING, lGlue, Msg, bHandled) then
         if not bHandled then
            inherited;
end;

procedure TFrm_JON30.WMExitSizeMove(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
     MagneticWndProc(Self.Handle, WM_EXITSIZEMOVE, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON30.WMShowHideWindow(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

   if Assigned(MagneticWndProc) then
      MagneticWndProc(Self.Handle, WM_WINDOWPOSCHANGED, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON30.WMSysCommand(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
     MagneticWndProc(Self.Handle, WM_SYSCOMMAND, lGlue, Msg, dummyHandled);
end;

procedure TFrm_JON30.WMCommand(var Msg: TMessage);
begin
  if Not GS_JON01_GROUPMOVE then
  begin
    inherited;
    Exit;
  end;

  inherited;

  if Assigned(MagneticWndProc) then
     MagneticWndProc(Self.Handle, WM_COMMAND, lGlue, Msg, dummyHandled);
end;

//------------------- end of Custom Message Handling procedures -----------------

// 2010.12.13 ���ڿ����� ���ڸ� ����(�Ҽ�������)
function str2integer(str:AnsiString):integer;
var
 ii:integer;
 TempStr:String;
begin
  try
    TempStr:= '';
    for ii:= 1 to length(str) do
    begin
      if (str[ii] >= '0') and (str[ii] <= '9') then
        TempStr:= TempStr+str[ii];
    end;
    Result:= strtointDef(TempStr,-1);
  except
     TempStr:= '';
  end;
end;

//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//------- �� �˻� ��� �迭���� �ʱ�ȭ.
procedure f_AddArr_Init;
var i : integer;
begin
  try
    i := 0;
    while i <= 50 do
    begin
      gPAddr[i].sA_FindKey  := '';
      gPAddr[i].iScore      := 0;
      gPAddr[i].sDistanceKm := '';
      gPAddr[i].sA_City     := '';
      gPAddr[i].sA_Ward     := '';
      gPAddr[i].sA_Ward2    := '';
      gPAddr[i].sA_Street   := '';
      gPAddr[i].sA_Stree2   := '';
      gPAddr[i].sA_X        := '';
      gPAddr[i].sA_Y        := '';
      gPAddr[i].iSteeMatchPos:= 0;
      gPAddr[i].sNowAreaCD  := '';
      gPAddr[i].iDistKm     := 0;

      gSteAdr[i].sA_FindKey     := '';
      gSteAdr[i].iScore         := 0;
      gSteAdr[i].sDistanceKm    := '';
      gSteAdr[i].sA_City        := '';
      gSteAdr[i].sA_Ward        := '';
      gSteAdr[i].sA_Ward2       := '';
      gSteAdr[i].sA_Street      := '';
      gSteAdr[i].sA_Stree2      := '';
      gSteAdr[i].sA_X           := '';
      gSteAdr[i].sA_Y           := '';
      gSteAdr[i].iSteeMatchPos  := 0;
      gSteAdr[i].sNowAreaCD     := '';
      gSteAdr[i].iDistKm        := 0;

      inc(i);
    end;
  except

  end;
end;

//------- FindKey �� ������ ã��.
function f_AddArr_Find(sFindKey:string): integer;
var i : integer;
begin
  try
    Result := -1;
    i := 0;
    while i <= 50 do
    begin
      if StrToIntDef(gPAddr[i].sA_FindKey,0) = StrToIntDef(sFindKey,-1) then
      begin
        Result := i;
        Exit;
      end;
      inc(i);
    end;
  except
    Result := -1;
  end;
end;

//------- ���鵿 ���� ������ ã�Ƽ� iSteeMatchPos �� ����.
function f_AddArr_FindStreet(sStreet:string): integer;
var i : integer;
begin
  try
    Result := -1;
    i := 0;
    while i <= 50 do
    begin
      if Pos(sStreet, gPAddr[i].sA_Street) > 0 then
      begin
        Result := gPAddr[i].iSteeMatchPos;
        Exit;
      end;
      inc(i);
    end;
  except
    Result := -1;
  end;
end;

//------- '��'�� ������ ã�Ƽ� iSteeMatchPos �� ����.
function f_AddArr_FindStree2(sStree2:string): integer;
var i : integer;
begin
  try
    Result := -1;
    i := 0;
    while i <= 50 do
    begin
      if Pos(sStree2, gPAddr[i].sA_Stree2) > 0 then
      begin
        Result := gPAddr[i].iSteeMatchPos;
        Exit;
      end;
      inc(i);
    end;
  except
    Result := -1;
  end;
end;

//------- Add Index ã��.
function f_AddArr_AddIdx: integer;
var i : integer;
begin
  try
    Result := -1;
    i := 0;
    while i <= 50 do
    begin
      if gPAddr[i].sA_FindKey = '' then
      begin
        Result := i;
        Exit;
      end;
      inc(i);
    end;
  except
    Result := -1;
  end;
end;

//------- Svr Add Index ã��.
function f_SvrAddArr_AddIdx: integer;
var i : integer;
begin
  try
    Result := -1;
    i := 0;
    while i <= 50 do
    begin
      if gPAddr[i].sA_City = '' then
      begin
        Result := i;
        Exit;
      end;
      inc(i);
    end;
  except
    Result := -1;
  end;
end;

//------- Data Count.
function f_AddArr_Count: integer;
var i : integer;
begin
  try
    Result := 0;
    i := 0;
    while i <= 50 do
    begin
      if gPAddr[i].sA_FindKey <> '' then
      begin
        Result := Result +1;
      end;
      inc(i);
    end;
  except
    Result := 0;
  end;
end;

//------- City �ڵ带 �޾� ��ġ���� �ʴ� �����ʹ� ����.
function f_AddArr_CompDelete(sCity:string): Boolean;
var i : integer;
begin
  try
    Result := False;
    i := 0;
    while i <= 50 do
    begin
      if (gPAddr[i].sA_City <> '') and (gPAddr[i].sA_City <> sCity) then
      begin
        gPAddr[i].sA_FindKey  := '';
        gPAddr[i].iScore      := 0;
        gPAddr[i].sDistanceKm := '';
        gPAddr[i].sA_City     := '';
        gPAddr[i].sA_Ward     := '';
        gPAddr[i].sA_Ward2    := '';
        gPAddr[i].sA_Street   := '';
        gPAddr[i].sA_Stree2   := '';
        gPAddr[i].sA_X        := '';
        gPAddr[i].sA_Y        := '';
        gPAddr[i].iSteeMatchPos:= 0;
        gPAddr[i].sNowAreaCD  := '';
        gPAddr[i].iDistKm     := 0;

        Result := True;
      end;
      inc(i);
    end;
  except
    Result := False;
  end;
end;

//------- ��� �迭���� ����.
function f_AddArr_Add(iSco,iSteMatchPos,iDisKm:integer; sDistKm,sFKey,sCity,sWard,sWar2,sStee,sSte2,sCicd,sWdcd,sW2cd,sStcd,sX,sY : string):boolean;
var i : integer;
begin
  try
    i := f_AddArr_AddIdx;
    if i > -1 then
    begin
      gPAddr[i].sA_FindKey  := sFKey;
      gPAddr[i].iScore      := iSco;
      gPAddr[i].sDistanceKm := sDistKm;
      gPAddr[i].sA_City     := sCity;
      gPAddr[i].sA_Ward     := sWard;
      gPAddr[i].sA_Ward2    := sWar2;
      gPAddr[i].sA_Street   := sStee;
      gPAddr[i].sA_Stree2   := sSte2;
      gPAddr[i].sA_X        := sX;
      gPAddr[i].sA_Y        := sY;
      gPAddr[i].iSteeMatchPos:=iSteMatchPos;
      gPAddr[i].iDistKm     := iDisKm;
      Result := True;
    end
    else
      Result := False;
  except
    Result := False;
  end;
end;

//------- ��� �迭���� ����.
function f_SvrAddArr_Add(iSco,iSteMatchPos,iDisKm:integer; sDistKm,sFKey,sCity,sWard,sWar2,sStee,sSte2,sCicd,sWdcd,sW2cd,sStcd,sX,sY : string):boolean;
var i : integer;
begin
  try
    i := f_SvrAddArr_AddIdx;
    if i > -1 then
    begin
      gPAddr[i].sA_FindKey  := FormatFloat('00', i);
      gPAddr[i].iScore      := iSco;
      gPAddr[i].sDistanceKm := sDistKm;
      gPAddr[i].sA_City     := sCity;
      gPAddr[i].sA_Ward     := sWard;
      gPAddr[i].sA_Ward2    := sWar2;
      gPAddr[i].sA_Street   := sStee;
      gPAddr[i].sA_Stree2   := sSte2;     // SPOI������ ���
      gPAddr[i].sA_X        := sX;
      gPAddr[i].sA_Y        := sY;
      gPAddr[i].iSteeMatchPos:=iSteMatchPos;
      gPAddr[i].iDistKm     := iDisKm;
      Result := True;
    end
    else
      Result := False;
  except
    Result := False;
  end;
end;

//------- ���� ����.
function f_AddArr_Update(iSco, Idx:integer):boolean;
begin
  try
    if Idx > -1 then
    begin
      gPAddr[Idx].iScore := gPAddr[Idx].iScore + iSco;
      Result := True;
    end
    else
      Result := False;
  except
    Result := False;
  end;
end;

//------- ��/��, ��/��/�� ��ġ�� ���� ����.  120315.
function f_AddArr_CitySame_Update(iSco: integer; sCity: string):boolean;
var i : integer;
begin
  try
    Result := False;
    i := 0;

    while (i <= 50) do
    begin
      if (gPAddr[i].sA_City <> '') and (gPAddr[i].sA_City = sCity) then
      begin

        gPAddr[i].iScore := gPAddr[i].iScore + iSco;
        Result := True;
      end;
      inc(i);
    end;
  except
    Result := False;
  end;
end;

//------- ��/��, ��/�� ��ġ�� ���� ����.  120315.
function f_AddArr_WardSame_Update(iSco:integer; sWard: string):boolean;
var i : integer;
begin
  try
    Result := False;
    i := 0;

    while (i <= 50) do
    begin
      if (gPAddr[i].sA_City <> '') and (gPAddr[i].sA_Ward = sWard) then
      begin

        gPAddr[i].iScore := gPAddr[i].iScore + iSco;
        Result := True;
      end;
      inc(i);
    end;
  except
    Result := False;
  end;
end;

//------- �� ��ġ�� ���� ����.  120315.
function f_AddArr_Ward_2_Same_Update(iSco:integer; sWard_2: string):boolean;
var i : integer;
begin
  try
    Result := False;
    i := 0;

    while (i <= 50) do
    begin
      if (gPAddr[i].sA_City <> '') and (gPAddr[i].sA_Ward2 = sWard_2) then
      begin
        gPAddr[i].iScore := gPAddr[i].iScore + iSco;
        Result := True;
      end;
      inc(i);
    end;
  except
    Result := False;
  end;
end;

//------- ���� ó��.
function f_AddArr_Sort:boolean;
var i : integer;
begin
  try
    slR_11[7].Clear;
    i := 0;

    while i <= 50 do
    begin
      if gPAddr[i].sA_FindKey <> '' then
        slR_11[7].Add( format('%.3d%s%s', [ gPAddr[i].iScore, gPAddr[i].sDistanceKm, gPAddr[i].sA_FindKey]) );
      inc(i);
    end;
    slR_11[7].Sorted := True;
  except
    Result := False;
  end;
end;

//------- City �ڵ带 �޾� ��ġ���� �ʴ� �����ʹ� ����.
function f_AddArr_DataCopy(sCity:string): Boolean;
var i, j : integer;
begin
  try
    Result := False;
    j := 0;
    i := 0;

    while i <= 50 do
    begin
      if (gPAddr[i].sA_City <> '') and (gPAddr[i].sA_City = sCity) then
      begin
        gSteAdr[j].sA_FindKey     := gPAddr[i].sA_FindKey  ;
        gSteAdr[j].iScore         := gPAddr[i].iScore      ;
        gSteAdr[j].sDistanceKm    := gPAddr[i].sDistanceKm ;
        gSteAdr[j].sA_City        := gPAddr[i].sA_City     ;
        gSteAdr[j].sA_Ward        := gPAddr[i].sA_Ward     ;
        gSteAdr[j].sA_Ward2       := gPAddr[i].sA_Ward2    ;
        gSteAdr[j].sA_Street      := gPAddr[i].sA_Street   ;
        gSteAdr[j].sA_Stree2      := gPAddr[i].sA_Stree2   ;
        gSteAdr[j].sA_X           := gPAddr[i].sA_X        ;
        gSteAdr[j].sA_Y           := gPAddr[i].sA_Y        ;
        gSteAdr[j].iSteeMatchPos  := gPAddr[i].iSteeMatchPos;
        gSteAdr[j].iDistKm        := gPAddr[i].iDistKm     ;
        inc(j);
        Result := True;
      end;
      inc(i);
    end;
  except
    Result := False;
  end;
end;
//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

{@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@}
//------- Add Index ã��.
function fpoi_AddIdx: integer;
var i : integer;
begin
  try
    Result := -1;
    i := 0;

//    while i <= 500 do
    while i <= Length(gPOI) - 1 do
    begin
      if gPOI[i].sM_FindKey = '' then
      begin
        Result := i;
        Exit;
      end;
      inc(i);
    end;
  except
    Result := -1;
  end;
end;
//------- FindKey �� ������ ã��.
function fpoi_Find(sFindKey:string): integer;
var i : integer;
begin
  try
    Result := -1;
    i := 0;

//    while i <= 500 do
    while i <= Length(gPOI) - 1 do
    begin
      if StrToIntDef(gPOI[i].sM_FindKey,0) = StrToIntDef(sFindKey,-1) then
      begin
        Result := i;
        Exit;
      end;
      inc(i);
    end;
  except
    Result := -1;
  end;
end;
//------- ���� ����.
function fpoi_Update(iSco, Idx:integer; sTmp:string):boolean;
begin
  try
    if Idx > -1 then
    begin
      gPOI[Idx].iScore  := gPOI[Idx].iScore + iSco;
      gPOI[Idx].sM_Hint := gPOI[Idx].sM_Hint + sTmp;
      Result := True;
    end
    else
      Result := False;
  except
    Result := False;
  end;
end;
//------- ���� ó��.
function fpoi_Sort:boolean;
var i : integer;
begin
  try
    slR_11[8].Clear;
    i := 0;

//    while i <= 500 do
    while i <= Length(gPOI) - 1 do
    begin
      if gPOI[i].sM_FindKey <> '' then
        slR_11[8].Add( format('%.4d%s%s', [ gPOI[i].iScore, gPOI[i].sDistanceKm, gPOI[i].sM_FindKey]) );
      inc(i);
    end;
    slR_11[8].Sorted := True;
  except
    Result := False;
  end;
end;
//------- ��� �迭���� ����.
function fpoi_Add(iSco:integer; sDistKm,sFKey,sSSub,sJiJum,sCity,sWard,sStee,sX,sY,sAppro,sKm,sHint : String):boolean;
var i, iPos : integer;
begin
//  Log(sDistKm + sFKey + sSSub + sJiJum + sCity + sWard + sStee + sX + sY + sAppro + sKm + sHint, LOGDATADIRECTORY + 'log.txt');
  try
    i := fpoi_AddIdx;
    if i > -1 then
    begin
      gPOI[i].sM_FindKey  := sFKey;
      gPOI[i].iScore      := iSco;
      gPOI[i].sDistanceKm := sDistKm;
      gPOI[i].sM_Strt_Sub := sSSub;
      gPOI[i].sM_jijum    := sJiJum;
      gPOI[i].sM_City     := sCity;
      gPOI[i].sM_Ward     := sWard;
      iPos := System.AnsiStrings.AnsiPos('_', AnsiString(sStee));   // 20130614 LYB ����
      if iPos > 0 then
      begin
        gPOI[i].sM_Street := Copy(AnsiString(sStee), 1, iPos-1);
        gPOI[i].sM_Stree2 := Copy(AnsiString(sStee), iPos+1, Length(AnsiString(sStee))-iPos);
      end else
      begin
        gPOI[i].sM_Street := sStee;
        gPOI[i].sM_Stree2 := '';
      end;
      gPOI[i].sM_X        := sX;
      gPOI[i].sM_Y        := sY;
      gPOI[i].sM_Approach := sAppro;
      gPOI[i].sM_Km       := sKm;
      gPOI[i].sM_Hint     := sHint;
      Result := True;
    end
    else
      Result := False;
  except
    Result := False;
  end;
end;
//------------------------------------------------------------------------------------------------
{@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@}

//------- ���ø� ������ ����.
function f_LocalMap_DataCopy: Boolean;
var i : integer;
begin
  try
    Result := False;

    GT_MAPLocal_RLT.slCity.Clear;
    GT_MAPLocal_RLT.slWard.Clear;
    GT_MAPLocal_RLT.slStre.Clear;
    GT_MAPLocal_RLT.slSSub.Clear;
    GT_MAPLocal_RLT.slSPOI.Clear;
    GT_MAPLocal_RLT.slMapX.Clear;
    GT_MAPLocal_RLT.slMapY.Clear;

    i := 0;
    while i <= (GT_MAPLocal_RLT_R.slCity.Count -1) do
    begin
      GT_MAPLocal_RLT.slCity.Add(GT_MAPLocal_RLT_R.slCity[i]);
      GT_MAPLocal_RLT.slWard.Add(GT_MAPLocal_RLT_R.slWard[i]);
      GT_MAPLocal_RLT.slStre.Add(GT_MAPLocal_RLT_R.slStre[i]);
      GT_MAPLocal_RLT.slSSub.Add(GT_MAPLocal_RLT_R.slSSub[i]);
      GT_MAPLocal_RLT.slSPOI.Add(GT_MAPLocal_RLT_R.slSPOI[i]);
      GT_MAPLocal_RLT.slMapX.Add(GT_MAPLocal_RLT_R.slMapX[i]);
      GT_MAPLocal_RLT.slMapY.Add(GT_MAPLocal_RLT_R.slMapY[i]);
      inc(i);
    end;
    Result := True;
  except
    Result := False;
  end;
end;

{ TAreaSlot }
constructor TAreaSlot.Create(const PosX, PosY: string);
begin
  FPosX := PosX;
  FPosY := PosY;
end;

{ TfrmJON30 }
procedure TFrm_JON30.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;

	if gb2ndSearch then
	begin
		gb2ndSearch := False; //Ȯ��˻� ���� ����
		Proc_2ndSearchIng(Self.Tag, gb2ndSearch);
  end;
end;

procedure TFrm_JON30.FormClose(Sender: TObject; var Action: TCloseAction);
var
  EnvFile: TIniFile;
begin
  SetDebugeWrite('JON30.FormClose');
  if GS_PRJ_AREA = 'O' then Assert(False, 'JON30.FormClose');
	EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    EnvFile.WriteInteger('WinPos', 'Jon30Left', j30Left);
    EnvFile.WriteInteger('WinPos', 'Jon30Top' , j30Top );
    EnvFile.WriteInteger('WinPos', 'Jon30Width', Self.Width);
    EnvFile.WriteInteger('WinPos', 'Jon30Height' , Self.Height);
  finally
    EnvFile.Free;
  end;

  Action := caFree;
end;

procedure TFrm_JON30.FormCreate(Sender: TObject);
Var iTH, iAH : Integer;
begin
	try
    SetDebugeWrite('JON30.FormCreate');
    if GS_PRJ_AREA = 'O' then Assert(False, 'JON30.FormCreate');
    CreateObj;
    lbPnlTF := False;
		chkUseMiniMap.Checked := GS_MAP_AREA_AUTOSHOW;

    pnl_PoiAddress.Left := 0;
    pnl_PoiAddress.Top  := 330;

    AdvStringGrid3.Height := 64;
    AdvStringGrid6.Height := 64;
    AdvStringGrid9.Height := 64;

    AdvStringGrid1.SelectionRectangleColor := clFuchsia;
    AdvStringGrid2.SelectionRectangleColor := clFuchsia;
    AdvStringGrid3.SelectionRectangleColor := clFuchsia;
    AdvStringGrid4.SelectionRectangleColor := clFuchsia;
    AdvStringGrid5.SelectionRectangleColor := clFuchsia;
    AdvStringGrid6.SelectionRectangleColor := clFuchsia;
    AdvStringGrid7.SelectionRectangleColor := clFuchsia;
    AdvStringGrid8.SelectionRectangleColor := clFuchsia;
    AdvStringGrid9.SelectionRectangleColor := clFuchsia;

    AdvStringGrid1L.SelectionRectangleColor := clFuchsia;
    AdvStringGrid5L.SelectionRectangleColor := clFuchsia;
    AdvStringGrid8L.SelectionRectangleColor := clFuchsia;

    BtnLClose1Exec;
    AdvStringGrid1L.Visible := True;
    BtnLClose1.Visible := True;

    BtnLClose2Exec;
    AdvStringGrid5L.Visible := True;
    BtnLClose2.Visible := True;

    BtnLClose3Exec;
    AdvStringGrid8L.Visible := True;
    BtnLClose3.Visible := True;

    btnPortalE.Caption := 'N������' + #13#10 + 'Ȯ��˻�';

		slWisePoi.slAddr     := TStringList.Create;
		slWisePoi.slADetail  := TStringList.Create;
		slWisePoi.slNear     := TStringList.Create;
		slWisePoi.slDis      := TStringList.Create;
		slWisePoi.slLat      := TStringList.Create;
		slWisePoi.slLon      := TStringList.Create;
		slWisePoi.slSido     := TStringList.Create;
		slWisePoi.slGugun    := TStringList.Create;
		slWisePoi.slDong     := TStringList.Create;
		slWisePoi.sPoiId     := TStringList.Create;
		slWisePoi.sGUIDE_X   := TStringList.Create;
		slWisePoi.sGUIDE_Y   := TStringList.Create;
		slWisePoi.slGubun    := TStringList.Create;
		slWisePoi.sNo        := TStringList.Create;
		slWisePoi.sEtc       := TStringList.Create;
		slWisePoi.sAddress   := TStringList.Create;

		slNaverPoi.slAddr    := TStringList.Create;
		slNaverPoi.slADetail := TStringList.Create;
		slNaverPoi.slNear    := TStringList.Create;
		slNaverPoi.slDis     := TStringList.Create;
		slNaverPoi.slLat     := TStringList.Create;
		slNaverPoi.slLon     := TStringList.Create;
		slNaverPoi.slSido    := TStringList.Create;
		slNaverPoi.slGugun   := TStringList.Create;
		slNaverPoi.slDong    := TStringList.Create;
		slNaverPoi.sPoiId    := TStringList.Create;
		slNaverPoi.sGUIDE_X  := TStringList.Create;
		slNaverPoi.sGUIDE_Y  := TStringList.Create;
		slNaverPoi.slGubun   := TStringList.Create;
		slNaverPoi.sNo       := TStringList.Create;
		slNaverPoi.sEtc      := TStringList.Create;
		slNaverPoi.sAddress  := TStringList.Create;

		slWNPOI.slAddr       := TStringList.Create;
		slWNPOI.slADetail    := TStringList.Create;
		slWNPOI.slNear       := TStringList.Create;
		slWNPOI.slDis        := TStringList.Create;
		slWNPOI.slLat        := TStringList.Create;
		slWNPOI.slLon        := TStringList.Create;
		slWNPOI.slSido       := TStringList.Create;
		slWNPOI.slGugun      := TStringList.Create;
		slWNPOI.slDong       := TStringList.Create;
		slWNPOI.sPoiId       := TStringList.Create;
		slWNPOI.sGUIDE_X     := TStringList.Create;
		slWNPOI.sGUIDE_Y     := TStringList.Create;
		slWNPOI.slGubun      := TStringList.Create;
		slWNPOI.sNo          := TStringList.Create;
		slWNPOI.sEtc         := TStringList.Create;
		slWNPOI.sAddress     := TStringList.Create;

    lbPnlTF := True;

    if GS_EXEC_WIN10 then
    begin
      AdvStringGrid2.Font.Name := '���� ���';
      AdvStringGrid2.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid3.Font.Name := '���� ���';
      AdvStringGrid3.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid1.Font.Name := '���� ���';
      AdvStringGrid1.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid1L.Font.Name := '���� ���';
      AdvStringGrid1L.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid4.Font.Name := '���� ���';
      AdvStringGrid4.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid6.Font.Name := '���� ���';
      AdvStringGrid6.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid5.Font.Name := '���� ���';
      AdvStringGrid5.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid5L.Font.Name := '���� ���';
      AdvStringGrid5L.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid7.Font.Name := '���� ���';
      AdvStringGrid7.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid9.Font.Name := '���� ���';
      AdvStringGrid9.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid8.Font.Name := '���� ���';
      AdvStringGrid8.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid8L.Font.Name := '���� ���';
      AdvStringGrid8L.Font.Size := GS_JON_FONTSIZE;
    end else
    begin
      AdvStringGrid2.Font.Name := 'Verdana';
      AdvStringGrid2.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid3.Font.Name := 'Verdana';
      AdvStringGrid3.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid1.Font.Name := 'Verdana';
      AdvStringGrid1.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid1L.Font.Name := 'Verdana';
      AdvStringGrid1L.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid4.Font.Name := 'Verdana';
      AdvStringGrid4.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid6.Font.Name := 'Verdana';
      AdvStringGrid6.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid5.Font.Name := 'Verdana';
      AdvStringGrid5.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid5L.Font.Name := 'Verdana';
      AdvStringGrid5L.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid7.Font.Name := 'Verdana';
      AdvStringGrid7.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid9.Font.Name := 'Verdana';
      AdvStringGrid9.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid8.Font.Name := 'Verdana';
      AdvStringGrid8.Font.Size := GS_JON_FONTSIZE;
      AdvStringGrid8L.Font.Name := 'Verdana';
      AdvStringGrid8L.Font.Size := GS_JON_FONTSIZE;
    end;

    if GS_JON_FONTSIZE = 9 then
    begin
      iTH := 22;
      iAH := 20;
    end else
    if GS_JON_FONTSIZE = 10 then
    begin
      iTH := 22;
      iAH := 21;
    end else
    if ( GS_JON_FONTSIZE >= 11 ) And ( GS_JON_FONTSIZE <= 15 )  then
    begin
      iTH := 22 + ( GS_JON_FONTSIZE - 11 );
      iAH := iTH
    end else
    begin
      iTH := 22 + (( GS_JON_FONTSIZE - 11 ) * 2);
      iAH := iTH
    end;

    AdvStringGrid2.DefaultRowHeight := iTH;
    AdvStringGrid3.DefaultRowHeight := iAH;
    AdvStringGrid1.DefaultRowHeight := iAH;
    AdvStringGrid1.FixedRowHeight := 5;
    AdvStringGrid1L.DefaultRowHeight := iAH;

    AdvStringGrid4.DefaultRowHeight := iTH;
    AdvStringGrid6.DefaultRowHeight := iAH;
    AdvStringGrid5.DefaultRowHeight := iAH;
    AdvStringGrid5.FixedRowHeight := 5;
    AdvStringGrid5L.DefaultRowHeight := iAH;

    AdvStringGrid7.DefaultRowHeight := iTH;
    AdvStringGrid9.DefaultRowHeight := iAH;
    AdvStringGrid8.DefaultRowHeight := iAH;
    AdvStringGrid8.FixedRowHeight := 5;
    AdvStringGrid8L.DefaultRowHeight := iAH;

    giCol1 := GS_EnvFile.ReadInteger('POISize', 'COL1',  150);
    giCol2 := GS_EnvFile.ReadInteger('POISize', 'COL2',  169);
    giCol3 := GS_EnvFile.ReadInteger('POISize', 'COL3',  130);

    Grid_Clear('meoStartArea',1);
    Grid_Clear('meoStartArea',2);
    Grid_Clear('meoStartArea',3);
    Grid_Clear('meoStartArea',4);
    Grid_Clear('meoEndArea',1);
    Grid_Clear('meoEndArea',2);
    Grid_Clear('meoEndArea',3);
    Grid_Clear('meoEndArea',4);
    Grid_Clear('meoViaArea',1);
    Grid_Clear('meoViaArea',2);
    Grid_Clear('meoViaArea',3);
    Grid_Clear('meoViaArea',4);

    if Area_CenterName = '' then
			lbl1.Caption := '�������� ������. ��/��û��ǥ�̿�'
    else
      lbl1.Caption := '�������� : ' + Area_CenterName;

		WK_ING := False;

    GS_SendMsg := TStringList.Create;
    GS_ReadMsg := TStringList.Create;

    Self.Left  := GS_EnvFile.ReadInteger('WinPos', 'Jon30Left', 0);
    Self.Top   := GS_EnvFile.ReadInteger('WinPos', 'Jon30Top', 0);

		j30Left := Self.Left;
    j30Top  := Self.Top;

    if Self.Left < 0 then Self.Left := 0;
    if Self.Top < 0 then Self.Top := 0;

    cxBtnFixPos.Down := GS_JON30_POSFIX;
    cxBtnFixPosClick(cxBtnFixPos);

    iNaverSerachStartCnt := 0;
    iNaverSerachEndCnt   := 0;

    iDaumSerachStartCnt  := 0;
    iDaumSerachEndCnt    := 0;

  	btn_Potal_Search.Visible := GS_SEARCH_POTAL_2ResultOver;

    chkUseAPIKey.Enabled := GS_NAVER_APIUse = 'y';
    chkUseAPIKey.Checked := GS_DAPIKeyUSE;

    chkNaverMap.Tag := 1;
    chkNaverMap.Checked := GS_SEARCH_NAVER_MAP;
    chkNaverMapPropertiesChange(chkNaverMap);
		chkNaverMap.Tag := 0;

    Self.Width  := GS_EnvFile.ReadInteger('WinPos', 'Jon30Width' , 608);
    Self.Height := GS_EnvFile.ReadInteger('WinPos', 'Jon30Height', 628);

		szHash1 := TSZHash.Create(50000, 3);

		pLoadNaverMap;
  except
    on e: exception do
    begin
      Log('FormCreate Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'FormCreate Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.CreateObj;
var
  Save: LongInt; // ��Ÿ��Ʋ ���ſ�.
begin
  try
    SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
    //====================================================
    // �� Ÿ��Ʋ ����..
    Save := GetWindowLong(Handle,  GWL_STYLE);
    if (Save and ws_Caption) = ws_Caption then
    begin
      case BorderStyle of
        bsSizeable:
          SetWindowLong(Handle, GWL_STYLE, Save and (not (WS_CAPTION)) or WS_BORDER);
      end;
      Height := Height - getSystemMetrics(SM_CYCAPTION);
      Self.Refresh;
    end;

    pnlMap.Tag := pnlMap.Height + 5;
		frm_Size := ( pnlTitle.Height + pnlBottom.Height + 13 ) - pnlMap.Height; //�ǳ���ġ�� ����

		Self.Top := 200;
    j30Top := Self.Top ;
		if Self.Top > Screen.Height then
			Self.Top := Application.MainForm.Top + 100;
  except
    on e: exception do
    begin
      Log('CreateObj Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'CreateObj Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.GeneralInit;
begin
  try
    maxLogicalLevel := 13 -1;
    minLogicalLevel := 0;

    CreateLevelBar;
    mCtrlState.SetLevel(3);
    MakeStatusbar;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON30.FormDestroy(Sender: TObject);
begin
  SetDebugeWrite('JON30.FormDestroy');
  slWisePoi.slAddr    .Free;
  slWisePoi.slADetail .Free;
  slWisePoi.slNear    .Free;
  slWisePoi.slDis     .Free;
  slWisePoi.slLat     .Free;
  slWisePoi.slLon     .Free;
  slWisePoi.slSido    .Free;
  slWisePoi.slGugun   .Free;
  slWisePoi.slDong    .Free;
  slWisePoi.sPoiId    .Free;
  slWisePoi.sGUIDE_X  .Free;
  slWisePoi.sGUIDE_Y  .Free;
  slWisePoi.slGubun   .Free;
  slWisePoi.sNo       .Free;
	slWisePoi.sEtc      .Free;
	slWisePoi.sAddress  .Free;

  slNaverPoi.slAddr   .Free;
  slNaverPoi.slADetail.Free;
  slNaverPoi.slNear   .Free;
  slNaverPoi.slDis    .Free;
  slNaverPoi.slLat    .Free;
  slNaverPoi.slLon    .Free;
  slNaverPoi.slSido   .Free;
  slNaverPoi.slGugun  .Free;
  slNaverPoi.slDong   .Free;
  slNaverPoi.sPoiId   .Free;
  slNaverPoi.sGUIDE_X .Free;
  slNaverPoi.sGUIDE_Y .Free;
  slNaverPoi.slGubun  .Free;
  slNaverPoi.sNo      .Free;
  slNaverPoi.sEtc     .Free;
	slNaverPoi.sAddress .Free;

  slWNPOI.slAddr      .Free;
  slWNPOI.slADetail   .Free;
  slWNPOI.slNear      .Free;
  slWNPOI.slDis       .Free;
  slWNPOI.slLat       .Free;
  slWNPOI.slLon       .Free;
  slWNPOI.slSido      .Free;
  slWNPOI.slGugun     .Free;
  slWNPOI.slDong      .Free;
  slWNPOI.sPoiId      .Free;
  slWNPOI.sGUIDE_X    .Free;
  slWNPOI.sGUIDE_Y    .Free;
  slWNPOI.slGubun     .Free;
  slWNPOI.sNo         .Free;
	slWNPOI.sEtc        .Free;
	slWNPOI.sAddress    .Free;

  if Assigned(GS_SendMsg) then FreeAndNil(GS_SendMsg);
  if Assigned(GS_ReadMsg) then FreeAndNil(GS_ReadMsg);
  if Assigned(mMap) then FreeAndNil(mMap);

  Frm_JON30 := Nil;
end;

procedure TFrm_JON30.StartPos(const AValue, AX, AY: string);
Var FStartPos : TPosRec;
	  slatX, slonY : string;
begin
  try
    if ( Copy(AX, 1, 1) <> '0' ) And ( Copy(AY, 1, 1) <> '1' ) then Exit;

		if GS_SEARCH_NAVER_MAP then
		begin
  		slAValue := AValue;
			slAX := AX;//'037335565';
			slAY := AY;//'126583729';

			if (slAX <> '') and (slAY <> '') and ( bWebLoading )  then
			begin
				slatX := SetWGS84(slAX);
				slonY := SetWGS84(slAY);
				try
					ExecuteJavaScript(webNaverMap,'setStartPoiMark('+slatX+','+ slonY +');');
				except on E: Exception do
          begin
            pLoadNaverMap;
				   	Assert(False, E.Message);
          end;
				end;
			end;
		end else
    begin
      if (AX <> '') and (AY <> '') then
      begin
        WGS84ToBessel(AY, AX);
        OnMoveMap(ws_Lon, ws_Lat);

        SLon := ws_Lon;
        SLat := ws_Lat;
        FStartPos.X := AX;
        FStartPos.Y := AY;

        if lcsActiveEdit = 'meoViaArea' then Exit;
        Mark_Symbol(ws_Lon, ws_Lat, 2, '', '', '');
        TargetPos := '��';

        if (not GS_MAP_AREA_AUTOSHOW) Or ( GS_SEARCH_NAVER_MAP ) then Exit;
				if GS_SEARCH_NEAR_WK3SEC then trm_WK3SEC.Enabled := True else  //3�� �����˻� ���
        if GS_SEARCH_NEAR_WK then WkSearch('0.5', 1);
      end;
    end;
  except
    on e: exception do
    begin
      Log('StartPos Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'StartPos Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.EndPos(const AValue, AX, AY: string);
Var FEndPos: TPosRec;
	  slatX, slonY : string;
begin
  try
    if ( Copy(AX, 1, 1) <> '0' ) And ( Copy(AY, 1, 1) <> '1' ) then Exit;

		if GS_SEARCH_NAVER_MAP then
		begin
			slAValue := AValue;
			slAX := AX;//'037335565';
			slAY := AY;//'126583729';

			if (slAX <> '') and (slAY <> '')  and ( bWebLoading ) then
			begin
				slatX := SetWGS84(slAX);
				slonY := SetWGS84(slAY);
				try
					ExecuteJavaScript(webNaverMap,'setEndPoiMark('+slatX+','+ slonY +');');
				except on E: Exception do
          begin
            pLoadNaverMap;
				   	Assert(False, E.Message);
          end;
				end;
			end;
		end else
    begin
      if (AX <> '') and (AY <> '') then
      begin
        WGS84ToBessel(AY, AX);
        OnMoveMap(ws_Lon, ws_Lat);
        ELon := ws_Lon;
        ELat := ws_Lat;
        FEndPos.X := AX;
        FEndPos.Y := AY;

        if lcsActiveEdit = 'meoViaArea' then Exit;
        Mark_Symbol(ws_Lon, ws_Lat, 3, '', '', '');
        TargetPos := '��';

        if (not GS_MAP_AREA_AUTOSHOW) Or ( GS_SEARCH_NAVER_MAP ) then Exit;
				if GS_SEARCH_NEAR_WK3SEC then trm_WK3SEC.Enabled := True else //3�� �����˻� ���
        if GS_SEARCH_NEAR_WK then WkSearch('0.5', 1);
      end;
    end;
  except
    on e: exception do
    begin
      Log('EndPos Error : AX - ' + AX + ', AY - ' + AY + ' / ' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'EndPos Error : AX - ' + AX + ', AY - ' + AY + ' / ' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.ViaPos(const AValue, AX, AY: string);
Var slatX, slonY : string;
begin
  try
    if ( Copy(AX, 1, 1) <> '0' ) And ( Copy(AY, 1, 1) <> '1' ) then Exit;

		if GS_SEARCH_NAVER_MAP then
		begin
			if AdvStringGrid9.Cells[0,1] = '' then
			begin
				slAValue := '';

				slAX := '';//'037335565';
				slAY := '';//'126583729';
			end else
			begin
				slAValue := AValue;
				slAX := AX;//'037335565';
				slAY := AY;//'126583729';
			end;
			if (slAX <> '') and (slAY <> '')  and ( bWebLoading ) then
			begin
				slatX := SetWGS84(slAX);
				slonY := SetWGS84(slAY);
				try
					ExecuteJavaScript(webNaverMap,'setViaPoiMark('+slatX+','+ slonY +');');
				except on E: Exception do
          begin
            pLoadNaverMap;
				   	Assert(False, E.Message);
          end;
				end;
			end;
		end else
    begin
      if (AX <> '') and (AY <> '') then
      begin
        WGS84ToBessel(AY, AX);
        OnMoveMap(ws_Lon, ws_Lat);

        Mark_Symbol(ws_Lon, ws_Lat, 4, '', '', '');
				TargetPos := '��';
      end;
    end;
  except
    on e: exception do
    begin
      Log('ViaPos Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'ViaPos Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.PointPos(const AValue, AX, AY: string);
Var FStartPos : TPosRec;
	  slatX, slonY : string;
begin
  try
    if ( Copy(AX, 1, 1) <> '0' ) And ( Copy(AY, 1, 1) <> '1' ) then Exit;

    slAX := AX;//'037335565';
    slAY := AY;//'126583729';

    if (slAX <> '') and (slAY <> '') and ( bWebLoading )  then
    begin
      slatX := SetWGS84(slAX);
      slonY := SetWGS84(slAY);
      try
        if AValue = 'A' then ExecuteJavaScript(webNaverMap,'setAPoiMark('+slatX+','+ slonY +');') else
        if AValue = 'B' then ExecuteJavaScript(webNaverMap,'setBPoiMark('+slatX+','+ slonY +');') else
        if AValue = 'C' then ExecuteJavaScript(webNaverMap,'setCPoiMark('+slatX+','+ slonY +');') else
        if AValue = 'D' then ExecuteJavaScript(webNaverMap,'setDPoiMark('+slatX+','+ slonY +');') else
        if AValue = 'E' then ExecuteJavaScript(webNaverMap,'setEPoiMark('+slatX+','+ slonY +');');
      except on E: Exception do
        begin
          pLoadNaverMap;
          Assert(False, E.Message);
        end;
      end;
    end;
  except
    on e: exception do
    begin
      Log('StartPos Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'StartPos Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.webNaverMapDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
	if (pDisp = CurDispatch) then
	begin
		webNaverMap.Visible := True;
		bWebLoading := True;
    CurDispatch := nil;
    SetDebugeWrite('JON30.webNaverMapDocumentComplete');
  end;
end;

procedure TFrm_JON30.webNaverMapNavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
	if CurDispatch = nil then
     CurDispatch := pDisp; { save for comparison }
end;

procedure TFrm_JON30.POIPos(const AValue, BValue, SValue, AX, AY: string; Idx : Integer);
begin
  try
    if ( Copy(AX, 1, 1) <> '0' ) And ( Copy(AY, 1, 1) <> '1' ) then Exit;

  	if (AX <> '') and (AY <> '') then
  	begin
  		WGS84ToBessel(AY, AX);

  		Mark_Symbol(ws_Lon, ws_Lat, Idx, AValue, BValue, SValue);
  		TargetPos := '��';
  	end;
  except
    on e: exception do
    begin
      Log('POIPos Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'POIPos Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.btnCloseClick(Sender: TObject);
begin
	Self.Hide;
end;

procedure TFrm_JON30.btnEPoiAMoveClick(Sender: TObject);
var
  slatX, slonY, sHttp : String;
begin
  SetDebugeWrite('JON30.btnSPoiAMoveClick');
	try
		slatX := ExecuteJavaScriptGetValue(webNaverMap, 'lat');
		slonY := ExecuteJavaScriptGetValue(webNaverMap, 'lng');

    if ( Trim(slatX) = '' ) Or ( Trim(slonY) = '' ) then
    begin
      GMessagebox('���콺 ���� ��ư�� Ŭ���Ͽ� ������ ��ġ�� ������ �ּ���.', CDMSE);
      Exit;
    end;

//		sHttp := 'https://openapi.naver.com/v1/map/reversegeocode?encoding=utf-8&coordType=latlng&query=' + slonY + ',' + slatX;
		sHttp := 'https://naveropenapi.apigw.ntruss.com/map-reversegeocode/v2/gc?coords=' + slonY + ',' + slatX 
					 + '&output=json&orders=addr';
		sStartEndG := 'E';
		sw_Lat  := StrToFloatDef(getWGS84(FormatFloat('0.000000', StrToFloatDef(slatX, 0))), 0);  // y ��ǥ
    sw_Lon  := StrToFloatDef(getWGS84(FormatFloat('0.000000', StrToFloatDef(slonY, 0))), 0);  // x ��ǥ
		cp_Naver_cloud(sHttp);
  except
    on e: exception do
    begin
      Log('btnEPoiAMoveClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnEPoiAMoveClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.btnEPoiMoveClick(Sender: TObject);
var
  slatX, slonY, sX, sY : String;
  ASido, AGugun, ADong, ADetail: string;
  all_W : AnsiString;
begin
  SetDebugeWrite('JON30.btnEPoiMoveClick');
  try
    slatX := ExecuteJavaScriptGetValue(webNaverMap, 'lat');
    slonY := ExecuteJavaScriptGetValue(webNaverMap, 'lng');

    if ( Trim(slatX) = '' ) Or ( Trim(slonY) = '' ) then
    begin
      GMessagebox('���콺 ���� ��ư�� Ŭ���Ͽ� ������ ��ġ�� ������ �ּ���.', CDMSE);
      Exit;
    end;

    sX  := '0'+ getWGS84(FormatFloat('0.000000', StrToFloatDef(slatX, 0)));  // y ��ǥ
    sY  := getWGS84(FormatFloat('0.000000', StrToFloatDef(slonY, 0)));  // x ��ǥ

    WGS84ToBessel(sY, sX);
    all_W := GetDongName(Ws_Lon, Ws_Lat);
    all_W := StringReplace(all_W, ' ',':', [rfReplaceAll]);

    ASido  := fChange_Poi_Do(StrToken(all_W, ':'));
    AGugun := StrToken(all_W, ':');
    ADong  := all_W;
    ADetail := '';

		Frm_Main.Frm_JON01N[Self.Tag].SetEndAreaMap(ASido, AGugun, ADong, ADetail, sX, sY);
		Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'M';
  except
    on e: exception do
    begin
      Log('btnEPoiMoveClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnEPoiMoveClick Error :' + E.Message);
    end;
	end;
end;

procedure TFrm_JON30.btnGSortClick(Sender: TObject);
Var	AGrid : TAdvStringGrid;
begin
	SetDebugeWrite('JON30.btnGSortClick');
	Try
		if ( lcsActiveEdit = 'meoStartArea' ) Or ( lcsActiveEdit = 'meoStartAreaCUT' ) Or ( lcsActiveEdit = 'meoStartAreaWOR11' ) then
		begin
			AGrid := AdvStringGrid1;
		end else
		if ( lcsActiveEdit = 'meoEndArea' ) Or ( lcsActiveEdit = 'meoEndAreaCUT' ) Or ( lcsActiveEdit = 'meoEndAreaWOR11' ) Or ( lcsActiveEdit = 'meoCallBell' ) then
		begin
			AGrid := AdvStringGrid5;
		end else
		if lcsActiveEdit = 'meoViaArea' then
		begin
			AGrid := AdvStringGrid8;
		end;

    if Not GS_SEARCH_WISE_NAVER_SORT then
    begin
      AGrid.SortSettings.Column := 14;
      AGrid.QSort;

      btnGSort.OptionsImage.ImageIndex := 22;
      GS_SEARCH_WISE_NAVER_SORT := True;
    end else
    begin
      AGrid.SortSettings.Column := 15;
      AGrid.QSort;

      btnGSort.OptionsImage.ImageIndex := 21;
      GS_SEARCH_WISE_NAVER_SORT := False;
    end;
  except
    on e: exception do
    begin
      Log('btnGSortClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnGSortClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.BtnLClose1Click(Sender: TObject);
begin
	try
    if AdvStringGrid1L.Top <> AdvStringGrid1.Height then
    begin
      AdvStringGrid1L.Top := AdvStringGrid1.Height;
    end else
    begin
      AdvStringGrid1L.Top := AdvStringGrid1.Height - AdvStringGrid1L.Height;
    end;
    BtnLClose1.Top := AdvStringGrid1L.Top - BtnLClose1.Height;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.BtnLClose1Exec;
begin
  try
    if Trim(AdvStringGrid1L.Cells[0,0]) = '' then
    begin
      AdvStringGrid1L.Top := AdvStringGrid1.Height;
      AdvStringGrid1L.Height := 0;
    end else
    begin
      if AdvStringGrid1L.RowCount <= 2 then
      begin
        AdvStringGrid1L.Top := AdvStringGrid1.Height - (AdvStringGrid1L.RowCount * 22);
        AdvStringGrid1L.Height := AdvStringGrid1L.RowCount * 22;
      end else
      begin
        AdvStringGrid1L.Top := AdvStringGrid1.Height - 65;
        AdvStringGrid1L.Height := 65;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.BtnLClose2Click(Sender: TObject);
begin
  try
    if AdvStringGrid5L.Top <> AdvStringGrid5.Height then
    begin
      AdvStringGrid5L.Top := AdvStringGrid5.Height;
    end else
    begin
      AdvStringGrid5L.Top := AdvStringGrid5.Height - AdvStringGrid5L.Height;
    end;
    BtnLClose2.Top := AdvStringGrid5L.Top - BtnLClose2.Height;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.BtnLClose2Exec;
begin
  try
    if Trim(AdvStringGrid5L.Cells[0,0]) = '' then
    begin
      AdvStringGrid5L.Top := AdvStringGrid5.Height;
      AdvStringGrid5L.Height := 0;
    end else
    begin
      if AdvStringGrid5L.RowCount <= 2 then
      begin
        AdvStringGrid5L.Top := AdvStringGrid5.Height - (AdvStringGrid5L.RowCount * 22);
        AdvStringGrid5L.Height := AdvStringGrid5L.RowCount * 22;
      end else
      begin
        AdvStringGrid5L.Top := AdvStringGrid5.Height - 65;
        AdvStringGrid5L.Height := 65;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.BtnLClose3Click(Sender: TObject);
begin
  try
    if AdvStringGrid8L.Top <> AdvStringGrid8.Height then
    begin
      AdvStringGrid8L.Top := AdvStringGrid8.Height;
    end else
    begin
      AdvStringGrid8L.Top := AdvStringGrid8.Height - AdvStringGrid8L.Height;
    end;
    BtnLClose3.Top := AdvStringGrid8L.Top - BtnLClose3.Height;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.BtnLClose3Exec;
begin
  try
    if Trim(AdvStringGrid8L.Cells[0,0]) = '' then
    begin
      AdvStringGrid8L.Top := AdvStringGrid8.Height;
      AdvStringGrid8L.Height := 0;
    end else
    begin
      if AdvStringGrid8L.RowCount <= 2 then
      begin
        AdvStringGrid8L.Top := AdvStringGrid8.Height - (AdvStringGrid8L.RowCount * 22);
        AdvStringGrid8L.Height := AdvStringGrid8L.RowCount * 22;
      end else
      begin
        AdvStringGrid8L.Top := AdvStringGrid8.Height - 65;
        AdvStringGrid8L.Height := 65;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.SetTargetPos(const Value: string);
begin
  if FTargetPos = Value then Exit;
  FTargetPos := Value;
end;

procedure TFrm_JON30.Show;
Var bLeft : Boolean;
    iTop, iLeft : Integer;
begin
  try
    ShowWindow(Handle, SW_SHOWNA);
		Visible := True;
		if (lcsActiveEdit = 'meoStartAreaWOR11') or (lcsActiveEdit = 'meoEndAreaWOR11') then
    begin
			if Not GS_JON30_POSFIX then
			begin
				Self.Left := Frm_WOR11.Left - Self.Width;
				Self.Top := Frm_WOR11.Top;
			end else
			begin
        if GB_JON_FIXEDPIN then
        begin

        end else
        begin
  				Self.Left := j30Left;
	  			Self.Top  := j30Top;
        end;
			end;
		end else
		if (lcsActiveEdit = 'meoStartAreaCUT') or (lcsActiveEdit = 'meoEndAreaCUT') then
    begin
      if Not GS_JON30_POSFIX then
      begin
        Self.Left := Frm_CUT011.Left - Self.Width;
        Self.Top := Frm_CUT011.Top + 200;
      end else
      begin
        if GB_JON_FIXEDPIN then
        begin

        end else
        begin
          Self.Left := j30Left;
          Self.Top  := j30Top;
        end;
      end;
    end else
		if (lcsActiveEdit = 'meoCallBell') then
		begin
			if Not GS_JON30_POSFIX then
			begin
				Self.Left := Frm_BTN01.Left - Self.Width;
				Self.Top := Frm_BTN01.Top + 200;
			end else
			begin
        if GB_JON_FIXEDPIN then
        begin

        end else
        begin
  				Self.Left := j30Left;
	  			Self.Top  := j30Top;
        end;
			end;
		end else	
    begin
      if Frm_Main.j30 = 1 then
      begin
        if Not GS_JON30_POSFIX then
        begin
          if Frm_Main.JON01MNG[Self.Tag].Dock then
          begin
            Self.Left := Frm_Jon00.Left - (Self.Width + 1);
            Self.Top  := Frm_Jon00.Top + 200;
          end else
          begin
    				Self.Left := Frm_Main.Frm_JON01N[Self.Tag].Left - (Self.Width + 1);
	  				Self.Top  := Frm_Main.Frm_JON01N[Self.Tag].Top + 200;
          end;
        end else
        begin
          if GB_JON_FIXEDPIN then
          begin
            bLeft := GS_EnvFile.ReadBool('AcceptWin', 'Jon30Pos' , True);
            iTop  := GS_EnvFile.ReadInteger('AcceptWin', 'Jon30Top', 200);
            iLeft := GS_EnvFile.ReadInteger('AcceptWin', 'Jon30Left', 0);
            if bLeft then
            begin
              if Frm_Main.JON01MNG[Self.Tag].Dock then
              begin
                Self.Left := Frm_Jon00.Left - (Self.Width + 1);
                Self.Top  := Frm_Jon00.Top + iTop;
              end else
              begin
       				  Self.Left := Frm_Main.Frm_JON01N[Self.Tag].Left - (Self.Width + 1);
  	     				Self.Top  := Frm_Main.Frm_JON01N[Self.Tag].Top + iTop;
              end;
            end else
            begin
              if Frm_Main.JON01MNG[Self.Tag].Dock then
              begin
                Self.Left := Frm_Jon00.Left + iLeft;
                Self.Top  := Frm_Jon00.Top + Frm_Jon00.Height + 1;
              end else
              begin
       				  Self.Left := Frm_Main.Frm_JON01N[Self.Tag].Left + iLeft;
	     				  Self.Top  := Frm_Main.Frm_JON01N[Self.Tag].Top + (Frm_Main.Frm_JON01N[Self.Tag].Height + 1);
              end;
            end;
          end else
          begin
					  Self.Left := j30Left;
            Self.Top  := j30Top;
          end;
        end;
      end;
    end;
    lbl1.Caption := Area_CenterName;
		//POIâ Tag �� �Է� Ȯ�ο� õ�ȷα� 201191126 KHS
//		if (GT_USERIF.CT = 'H227') then 
//		begin
//			Log('JON30.Show JON30Tag[' + IntToStr(Self.Tag) + ']', LOGDATAPATHFILE);
//		end;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.mniStartClick(Sender: TObject);
begin
  OnMoveMap(SLon, SLat);
end;

procedure TFrm_JON30.mniEndClick(Sender: TObject);
begin
	OnMoveMap(ELon, ELat);
end;

procedure TFrm_JON30.pmAcceptMapPopup(Sender: TObject);
begin
  try
  	mniStart.Enabled  := (SLat <> 0);
  	mniEnd.Enabled    := (ELat <> 0);
    mniSepIndex.Visible := False;

    N500m1.Enabled := GS_SEARCH_MAP_NEAR_WK;
    N1Km1.Enabled := GS_SEARCH_MAP_NEAR_WK;
    N3Km1.Enabled := GS_SEARCH_MAP_NEAR_WK;
    N5Km1.Enabled := GS_SEARCH_MAP_NEAR_WK;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.chkNaverMapClick(Sender: TObject);
begin
  if GS_IE_VER > 8 then
  begin
  	GS_SEARCH_NAVER_MAP := TcxCheckBox(Sender).Checked;
    GS_EnvFile.WriteBool('SearchSet', 'SEARCH_NAVER_MAP', GS_SEARCH_NAVER_MAP);
    pShowOption;
  end else
  begin
    if chkNaverMap.Checked then
    begin
      GMessagebox('Internet Explorer ������ ���� ���̹� ������ ����Ҽ� �����ϴ�.' + #13#10 +
                  'Internet Explorer �ֽŹ����� ��ġ �� ��� �ϼ���.', CDMSE);

      chkNaverMap.checked := False;
    end;
  end;
end;

procedure TFrm_JON30.chkNaverMapPropertiesChange(Sender: TObject);
Var slatX, slonY : String;
    idx : Integer;
begin
  try
    webNaverMap.Visible := GS_SEARCH_NAVER_MAP;
    if GS_SEARCH_NAVER_MAP then
    begin
      pnlMap.Visible := False;
      pnl_NaverMap.Align := alClient;
      pnl_NaverMap.Visible := True;
      pnl_NaverMap.BringToFront;
      Assert(False, 'NaverMap OK' );

      if chkNaverMap.Tag = 1 then Exit;

      if lcsActiveEdit = 'meoStartArea' then
      begin
				slAValue := '';
				slAX := Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text;//'037335565';
				slAY := Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text;//'126583729';
			end else
			if lcsActiveEdit = 'meoEndArea' then
			begin
				slAValue := '';
				slAX := Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text;//'037335565';
				slAY := Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text;//'126583729';
			end else
			if lcsActiveEdit = 'meoViaArea' then
			begin
				slAValue := '';
        slAX := AdvStringGrid8.Cells[4,1];//'037335565';
        slAY := AdvStringGrid8.Cells[5,1];//'126583729';
      end;

      if (slAX <> '') and (slAY <> '')  and ( bWebLoading ) then
      begin
        slatX := SetWGS84(slAX);
				slonY := SetWGS84(slAY);
        try
					if lcsActiveEdit = 'meoStartArea' then
						ExecuteJavaScript(webNaverMap,'setStartPoiMark('+slatX+','+ slonY +');') else
          if lcsActiveEdit = 'meoEndArea' then
            ExecuteJavaScript(webNaverMap,'setEndPoiMark('+slatX+','+ slonY +');') else
          if lcsActiveEdit = 'meoViaArea' then
            ExecuteJavaScript(webNaverMap,'setViaPoiMark('+slatX+','+ slonY +');');
        except on E: Exception do
          begin
            pLoadNaverMap;
				   	Assert(False, E.Message);
          end;
        end;
      end else
      begin
        slAValue := '';

				slAX := Area_CenterLat;//'037335565';
				slAY := Area_CenterLon;//'126583729';
				if (slAX <> '') and (slAY <> '') and ( bWebLoading ) then
        begin
					slatX := SetWGS84(slAX);
					slonY := SetWGS84(slAY);
          try
            ExecuteJavaScript(webNaverMap,'CenterMove('+slatX+','+ slonY +');');
          except on E: Exception do
            begin
              pLoadNaverMap;
              Assert(False, E.Message);
            end;
          end;
        end;
      end;
    end else
    begin
      pnlMap.Visible := True;
      pnl_NaverMap.Align := alNone;
      pnl_NaverMap.Visible := False;
      pnl_NaverMap.SendToBack;
      Assert(False, 'NaverMap No' );

      if chkNaverMap.Tag = 1 then Exit;

      if lcsActiveEdit = 'meoStartArea' then
      begin
				StartPos(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text,
								 Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text,
								 Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text);
				OnSelectedMap := Frm_Main.Frm_JON01N[Self.Tag].SetStartAreaMap;
			end else
			if lcsActiveEdit = 'meoEndArea' then
			begin
				EndPos(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text,
							 Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text,
							 Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text);
				OnSelectedMap := Frm_Main.Frm_JON01N[Self.Tag].SetEndAreaMap;
			end else
			if lcsActiveEdit = 'meoViaArea' then
			begin
				idx := Frm_Main.Frm_JON01N[Self.Tag].ViaNowTag;
				if idx = 1 then
				begin
					if Frm_Main.Frm_JON01N[Self.Tag].XposVia[1] <> '' then
						Frm_JON30.ViaPos(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text,
														 Frm_Main.Frm_JON01N[Self.Tag].XposVia[1],
														 Frm_Main.Frm_JON01N[Self.Tag].YposVia[1]);
				end	else
				begin
					if Frm_Main.Frm_JON01N[Self.Tag].XposVia[idx] <> '' then
						Frm_JON30.ViaPos(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[idx].Text,
														 Frm_Main.Frm_JON01N[Self.Tag].XposVia[idx],
														 Frm_Main.Frm_JON01N[Self.Tag].YposVia[idx]);
				end;
			end;
		end;
	except on E: Exception do
		Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.chkUseAPIKeyClick(Sender: TObject);
begin
	GS_DAPIKeyUSE := TcxCheckBox(Sender).Checked;;
	GS_EnvFile.WriteBool('SearchSet', 'SEARCH_DAPIKeyUSE', GS_DAPIKeyUSE);
	if Assigned(Frm_JON30S) then Frm_JON30S.chk_DAPIKey.Checked := GS_DAPIKeyUSE;

  if GS_DAPIKeyUSE then
  begin
    rbSN.Enabled := False;
    if rbSN.Checked then rbSA.Checked := True;
  end else
  begin
    rbSN.Enabled := True;
  end;
end;

procedure TFrm_JON30.chkUseMiniMapClick(Sender: TObject);
begin
	try
    GS_MAP_AREA_AUTOSHOW := TcxCheckBox(Sender).Checked;
		GS_EnvFile.WriteBool('AcceptMap', 'AreaAutoShow', GS_MAP_AREA_AUTOSHOW);
		if Assigned(Frm_SETA1) then Frm_SETA1.chkJONAreaAutoShow.Checked := GS_MAP_AREA_AUTOSHOW;

		lbPnlTF := False;
		chk_Map(GS_MAP_AREA_AUTOSHOW);
    lbPnlTF := True;
  except on E: Exception do
		Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.CreateLevelBar;
var
  mImageman : IXImageMan;
  mBg, mLevelBarBg, mBtnZoomIn, mBtnZoomOut   : IXUIButton;
  i, UIID, CY  : Integer;
  imgName : string;
  mRootPath : string;
  bCreateLevelBar : Boolean;
begin
  try
    if bCreateLevelBar = true then     // true�� �� �ֳ�?..�ǹ�  if bCreateLevelBar then���� �ϸ� true�νĿ���
    begin
  		mLevelBarBg.DestroyUIObj();
  		for i := 0 to 12 do
      begin
  			mBtnLevle[i].DestroyUIObj();
  		end;
  		bCreateLevelBar := false;
  		Exit;
    end;
    mCtrlMan := mMap.GetCtrlMan();
    mUiman := mCtrlMan.GetUIMan;
    mCtrlState := mCtrlMan.GetControlState;
		mDpsize := mCtrlState.GetSizeDP;
    mUtil := mMap.GetUtility;

    mUiman.SetShowCompass(1);

    mCtrlMan := mMap.GetCtrlMan();
    mImageman := mCtrlMan.GetImageMan;
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath +'\Image\');

    // BackGround Image
    mBg := mUiman.CreateUI_Button(mUiman);
    mBg.SetParent(mUiman);
    mBg.SetUIID(11);
    mBg.SetImageList('bg.png', 24, 163);
    mBg.SetBound(mDpsize.GetCX-38, (mDpsize.GetCY - 170) div 2, 28, 170);
    mBg.SetAlpha(70);
    mBg.AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

    // Zoom In Button
    mBtnZoomIn := mUiman.CreateUI_Button(mUiman);
    mBtnZoomIn.SetParent(mBg);
    mBtnZoomIn.SetUIID(12);
    mBtnZoomIn.SetImageList('btn_minus.png', 16, 15);
    mBtnZoomIn.SetBound(6, 5, 16, 15);
  	mBtnZoomIn.SetCanClick(1);
  	mBtnZoomIn.SetCanDrag(1);
  	mBtnZoomIn.SetDragTracker(1);
  	mBtnZoomIn.AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

    // Zoom Out Button
  	mBtnZoomOut := mUiman.CreateUI_Button(mUiman);
  	mBtnZoomOut.SetParent(mBg);
  	mBtnZoomOut.SetUIID(13);
  	mBtnZoomOut.SetImageList('btn_plus.png', 16, 15);
  	mBtnZoomOut.SetBound(6, mBg.GetItemHeight()-18, 16, 15);
  	mBtnZoomOut.SetCanClick(1);
  	mBtnZoomOut.SetCanDrag(1);
  	mBtnZoomOut.SetDragTracker(1);
  	mBtnZoomOut.AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or	mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

    UIID := 14;
    CY := mBtnZoomIn.GetHeight + 9;
    for i := 12 downto 0 do
    begin
  		mBtnLevle[i] := mUiman.CreateUI_Button(mUiman);
  		mBtnLevle[i].SetParent(mBg);
  	  mBtnLevle[i].SetUIID(UIID);
  		imgName := 'level_' + IntToStr(i) + '.png';
  		mBtnLevle[i].SetImageList(imgName, 22, 9);
  		mBtnLevle[i].SetBound(3, CY, 22, 9);
  		mBtnLevle[i].SetCanClick(1);
  		mBtnLevle[i].SetCanDrag(1);
  		mBtnLevle[i].SetDragTracker(1);
  		mBtnLevle[i].SetImageAutoChange(0);
  		mBtnLevle[i].SetItemIndex(1);
  		mBtnLevle[i].AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));
  		CY := CY + 9;
  		Inc(UIID);
  	end;
  	// ���� Level ǥ��
  	MapLevel_Master(mCtrlState.GetLevel());
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.MakeStatusbar;
var
  mDpsize : IXSize;
  btnImg : IXUIImage;
  stcMsgArea : IXUIStaticText;
  mRootPath : string;
begin
  try
    mCtrlMan := mMap.GetCtrlMan();
  	mUiman := mCtrlMan.GetUIMan();
  	mCtrlState := mCtrlMan.GetControlState();
  	mDpsize := mCtrlState.GetSizeDP();
  	mUtil := mMap.GetUtility();

    mRootPath := ExtractFilePath(Application.ExeName);

  	btnImg := mUiman.CreateUI_Image(mUiman);
  	btnImg.SetParent(mUiman);
  	btnImg.SetUIID(300);
  	btnImg.SetImage(mRootPath + '\Image\areaPanel.png');
  	btnImg.SetBound(-65, 0, 470, 37);
  	btnImg.SetCanClick(0);
  	btnImg.SetAlpha(30);
  	btnImg.SetAnchor(mUtil.GetConstToValue('TMUIOBJ_ANCHOR_LEFT') or mUtil.GetConstToValue('TMUIOBJ_ANCHOR_TOP'));

  	stcMsgArea := mUiman.CreateUI_StaticText(mUiman);
  	stcMsgArea.SetParent(btnImg);
  	stcMsgArea.SetUIID(301);
  	stcMsgArea.SetBound(85, 4, 280, 30);
  	stcMsgArea.SetUIObjFontColor(mUtil.RGBColor(255, 255, 255));
  	stcMsgArea.SetFont(12, 1, ('����'),0);
  	stcMsgArea.SetUIObjFontColor(mUtil.RGBColor(255, 255, 255));
  	stcMsgArea.SetCanFocus(0);
  	stcMsgArea.SetCanClick(0);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON30.SetCtrlState(setType: Integer): Integer;
begin
  try
    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlman.GetControlState();
    mUtil := mMap.GetUtility();

    case setType of
      // ���콺 �巡�� �̵�
      11: // ����
          mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAG'), 1);
      12: // ����
          mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAG'), 0);

      // ���콺 �巡�� Ȯ��/���
      21: // ����
          mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAGZOOM'), 1);
      22: // ����
          mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAGZOOM'), 0);

      // ���콺 Ŭ�� �̵�
      31: // ����
          mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_CLICK'), 1);
      32: // ����
          mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_CLICK'), 0);

      // ���콺 Ŭ�� �̵�
      33: // ����
          mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DCLICK'), 1);
      34: // ����
          mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DCLICK'), 0);

      // ���콺 �� Ȯ��/���
      41: // ����
          mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_WHEEL_ZOOM'), 1);
      42: // ����
          mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_WHEEL_ZOOM'), 0);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.SetPOIMapDisplay;
Var slTmpLat, slTmpLon : TStringList;

  function fgetCompareXY(idx : Integer; Alat, Alon : Double ) : Integer;
  Var i : Integer;
      dtlat, dtlon : Double;
	begin
    Result := -1;
    for i := 0 to slTmpLat.Count - 1 do
    begin
      if i = idx then Continue;

  		dtlat := StrToFloatDef(getDEGREE(slTmpLat.Strings[i]), 0);//'037335565';
	  	dtlon := StrToFloatDef(getDEGREE(slTmpLon.Strings[i]), 0);//'126583729';

      if ( getDist(3, Alat, Alon, dtlat, dtlon ) ) then
      begin
        Result := i;
        Break;
      end;
    end;
  end;

Var i, iA, iB, iNo, iImgNo, iRowCnt, idx : Integer;
	sAName, sBName, sKey, sPA, sPB : String;
	mGroup : IXPOIGroup;
  alat, alon, tlat, tlon : Double;
	iTmpW, iTmpN, iMark_WiseCnt, iMark_NaverCnt : Integer;
	AAdvGrid_1st, AAdvGrid_2nd : TAdvStringGrid;
begin
//	if GS_SEARCH_NAVER_MAP then Exit;
	SetDebugeWrite('JON30.SetPOIMapDisplay');

	if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or 
		 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then 
	begin
		AAdvGrid_1st := AdvStringGrid1;
		AAdvGrid_2nd := AdvStringGrid3;
		sPA := 'PSA';
		sPB := 'PSB';
	end else
	if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or 
		 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then 
	begin
		AAdvGrid_1st := AdvStringGrid5;
		AAdvGrid_2nd := AdvStringGrid6;
		sPA := 'PEA';
		sPB := 'PEB';
	end else
	if lcsActiveEdit = 'meoViaArea' then
	begin
		AAdvGrid_1st := AdvStringGrid8;
		AAdvGrid_2nd := AdvStringGrid9;
		sPA := 'PVA';
		sPB := 'PVB';
	end;

  ClearNaverMark;

	try
		iA := AAdvGrid_1st.RowCount;
		iB := AAdvGrid_2nd.RowCount;
		if ( iB  = 1 ) And ( AAdvGrid_2nd.Cells[0,0] = '' ) then iB := 0;
		for i := 1 to AAdvGrid_1st.RowCount - 1 do
		begin
			if i > 10 then Break;
			AAdvGrid_1st.RemoveDataImage(18, i);
		end;
		for i := 0 to AAdvGrid_2nd.RowCount - 1 do
		begin
			if i > 10 then Break;
			AAdvGrid_2nd.RemoveDataImage(9, i);
		end;
		mGroup := mPoiman.FindGroup(50);
		if mGroup <> nil then mPoiman.DeleteGroup(50);

		if GS_SEARCH_WISE_NAVER_COMPARE then
		begin
			iNo := 40;
			iRowCnt := AAdvGrid_1st.RowCount-1;
			if iRowCnt > 10 then
			begin
				iRowCnt := 10;
				iImgNo := 9;
			end else iImgNo := iRowCnt-1;

			slTmpLat := TStringList.Create;
			slTmpLon := TStringList.Create;
			try
				for i := 1 to 10 do
				begin
					if AAdvGrid_1st.Cells[1, i] <> '' then
					begin
						slTmpLat.Add(AAdvGrid_1st.Cells[4, i]);
						slTmpLon.Add(AAdvGrid_1st.Cells[5, i]);
					end;
				end;

				for i := 0 to slTmpLat.Count - 1 do
				begin
					alat := StrToFloatDef(getDEGREE(slTmpLat.Strings[i]), 0);//'037335565';
					alon := StrToFloatDef(getDEGREE(slTmpLon.Strings[i]), 0);//'126583729';

					iRowCnt := fgetCompareXY(i, alat, alon);
					if iRowCnt >= 0 then
					begin
						tlat := alat + 0.00002;
						tlon := alon + 0.00002;

						idx := fgetCompareXY(iRowCnt, tlat, tlon);
						if idx >= 0 then
						begin
							tlat := alat - 0.00002;
							tlon := alon + 0.00002;

							idx := fgetCompareXY(iRowCnt, tlat, tlon);
							if idx >= 0 then
							begin
								tlat := alat + 0.00002;
								tlon := alon - 0.00002;

								idx := fgetCompareXY(iRowCnt, tlat, tlon);
								if idx >= 0 then
								begin
									tlat := alat + 0.00002;
									tlon := alon + 0.00002;
								end;
							end;
						end;
						slTmpLat.Strings[iRowCnt] := '0'+ getWGS84(FormatFloat('0.000000', tlat));  // x ��ǥ
						slTmpLon.Strings[iRowCnt] := getWGS84(FormatFloat('0.000000', tlon));  // y ��ǥ
					end;
				end;

				for i := slTmpLat.Count - 1  downto 0 do
				begin
					if AAdvGrid_1st.Cells[1, (i + 1)] <> '' then
					begin
						sAName := D_HightlightTXT(AAdvGrid_1st.Cells[0, (i + 1)]);
						sBName := D_HightlightTXT(AAdvGrid_1st.Cells[1, (i + 1)]);
						sKey   := sPA + IntToStr(i + 1);

          	if GS_SEARCH_NAVER_MAP then
            begin
              if i > 4 then Continue;
              if i = 0 then sAName := 'A' else
              if i = 1 then sAName := 'B' else
              if i = 2 then sAName := 'C' else
              if i = 3 then sAName := 'D' else
              if i = 4 then sAName := 'E';

  						PointPos(sAName, slTmpLat.Strings[i], slTmpLon.Strings[i]);
   						AAdvGrid_1st.AddDataImage(18, (i + 1), i, haCenter, AdvGrid.vaTop);
            end else
            begin
  						POIPos(sAName, sBName, sKey, slTmpLat.Strings[i], slTmpLon.Strings[i], (i + 1) + iNo);
   						AAdvGrid_1st.AddDataImage(18, (i + 1), i, haCenter, AdvGrid.vaTop);
            end;
					end;
				end;
			finally
				slTmpLat.Free;
				slTmpLon.Free;
			end;
		end else
		begin
			iTmpW := -1; iTmpN := -1; iMark_WiseCnt := -1; iMark_NaverCnt := -1;
			iNo := 40;
			iTmpW := AAdvGrid_1st.RowCount-1;
			iTmpN := AAdvGrid_2nd.RowCount;
			if AAdvGrid_1st.Cells[1, 1] = '' then iTmpW := 0;
			if AAdvGrid_2nd.Cells[1, 0] = '' then iTmpN := 0;

     	if Not GS_SEARCH_NAVER_MAP then
      begin
        if iTmpW >= 5 then
        begin
          if iTmpN > -1 then
          begin
            if iTmpN >= 5 then
            begin
              iMark_WiseCnt := 5;
              iMark_NaverCnt := 4;
            end	else
            begin
              if (iTmpW + iTmpN) >= 10 then iMark_WiseCnt := 10 - iTmpN
                                       else iMark_WiseCnt := iTmpW;

              if iTmpN = 0 then iMark_NaverCnt := 0
                           else iMark_NaverCnt := iTmpN;
            end;
          end else
          begin
            if iTmpW >= 10 then
            begin
              iMark_WiseCnt := 10;
              iMark_NaverCnt := 0;
            end else
            begin
              iMark_WiseCnt := iTmpW;
              iMark_NaverCnt := 0;
            end;
          end;
        end else
        begin
          iMark_WiseCnt := iTmpW;
          iMark_NaverCnt := 9-iMark_WiseCnt;
          if iMark_NaverCnt > iTmpN then iMark_NaverCnt := iTmpN;
        end;

        if iTmpW + iTmpN >= 10 then
        begin
          iRowCnt := 10;
          iImgNo := 9;
        end else
        begin
          iRowCnt := iMark_WiseCnt + iMark_NaverCnt;
          iImgNo := iMark_WiseCnt + iMark_NaverCnt-1;
        end;

        while (iTmpN >= 0) do
        begin
          if AAdvGrid_2nd.Cells[1, iTmpN] <> '' then
          begin
            if iTmpN <= iMark_NaverCnt then
            begin
              sAName := D_HightlightTXT(AAdvGrid_2nd.Cells[0, iTmpN]);
              sBName := D_HightlightTXT(AAdvGrid_2nd.Cells[1, iTmpN]);
              sKey   := sPB + intToStr(iRowCnt);
              POIPos(sAName, sBName, sKey, AAdvGrid_2nd.Cells[4, iTmpN], AAdvGrid_2nd.Cells[5, iTmpN], iRowCnt + iNo);
              AAdvGrid_2nd.AddDataImage(9, iTmpN, iImgNo, haCenter, AdvGrid.vaTop);
              Dec(iRowCnt);
              Dec(iImgNo);
            end;
          end;
          Dec(iTmpN);
        end;

        while (iTmpW > 0) do
        begin
          if AAdvGrid_1st.Cells[1, iTmpW] <> '' then
          begin
            if iTmpW <= iMark_WiseCnt then
            begin
              sAName := D_HightlightTXT(AAdvGrid_1st.Cells[0, iTmpW]);
              sBName := D_HightlightTXT(AAdvGrid_1st.Cells[1, iTmpW]);
              sKey   := sPA + IntToStr(iRowCnt);
              POIPos(sAName, sBName, sKey, AAdvGrid_1st.Cells[4, iTmpW], AAdvGrid_1st.Cells[5, iTmpW], iRowCnt + iNo);
              AAdvGrid_1st.AddDataImage(18, iTmpW, iImgNo, haCenter, AdvGrid.vaTop);
              Dec(iRowCnt);
              Dec(iImgNo);
            end;
          end;
          Dec(iTmpW);
        end;
      end else
      // ���̹� ���� �ϰ��
      begin
        if iTmpW >= 3 then
        begin
          if iTmpN > -1 then
          begin
            if iTmpN >= 2 then
            begin
              iMark_WiseCnt := 3;
              iMark_NaverCnt := 1;
            end	else
            begin
              if (iTmpW + iTmpN) >= 5 then iMark_WiseCnt := 5 - iTmpN
                                      else iMark_WiseCnt := iTmpW;

              if iTmpN = 0 then iMark_NaverCnt := 0
                           else iMark_NaverCnt := iTmpN;
            end;
          end else
          begin
            if iTmpW >= 5 then
            begin
              iMark_WiseCnt := 5;
              iMark_NaverCnt := 0;
            end else
            begin
              iMark_WiseCnt := iTmpW;
              iMark_NaverCnt := 0;
            end;
          end;
        end else
        begin
          iMark_WiseCnt := iTmpW;
          iMark_NaverCnt := 4-iMark_WiseCnt;
          if iMark_NaverCnt > iTmpN then iMark_NaverCnt := iTmpN;
        end;

        if iTmpW + iTmpN >= 5 then
        begin
          iRowCnt := 5;
          iImgNo := 4;
        end else
        begin
          iRowCnt := iMark_WiseCnt + iMark_NaverCnt;
          iImgNo := iMark_WiseCnt + iMark_NaverCnt-1;
        end;

        while (iTmpN >= 0) do
        begin
          if AAdvGrid_2nd.Cells[1, iTmpN] <> '' then
          begin
            if iTmpN <= iMark_NaverCnt then
            begin
              sAName := D_HightlightTXT(AAdvGrid_2nd.Cells[0, iTmpN]);
              sBName := D_HightlightTXT(AAdvGrid_2nd.Cells[1, iTmpN]);
              sKey   := sPB + intToStr(iRowCnt);

              if iRowCnt = 1 then sAName := 'A' else
              if iRowCnt = 2 then sAName := 'B' else
              if iRowCnt = 3 then sAName := 'C' else
              if iRowCnt = 4 then sAName := 'D' else
              if iRowCnt = 5 then sAName := 'E';

  						PointPos(sAName, AAdvGrid_2nd.Cells[4, iTmpN], AAdvGrid_2nd.Cells[5, iTmpN]);
              POIPos(sAName, sBName, sKey, AAdvGrid_2nd.Cells[4, iTmpN], AAdvGrid_2nd.Cells[5, iTmpN], iRowCnt + iNo);
              AAdvGrid_2nd.AddDataImage(9, iTmpN, iImgNo, haCenter, AdvGrid.vaTop);
              Dec(iRowCnt);
              Dec(iImgNo);
            end;
          end;
          Dec(iTmpN);
        end;

        while (iTmpW > 0) do
        begin
          if AAdvGrid_1st.Cells[1, iTmpW] <> '' then
          begin
            if iTmpW <= iMark_WiseCnt then
            begin
              sAName := D_HightlightTXT(AAdvGrid_1st.Cells[0, iTmpW]);
              sBName := D_HightlightTXT(AAdvGrid_1st.Cells[1, iTmpW]);
              sKey   := sPA + IntToStr(iRowCnt);

              if iRowCnt = 1 then sAName := 'A' else
              if iRowCnt = 2 then sAName := 'B' else
              if iRowCnt = 3 then sAName := 'C' else
              if iRowCnt = 4 then sAName := 'D' else
              if iRowCnt = 5 then sAName := 'E';

  						PointPos(sAName, AAdvGrid_1st.Cells[4, iTmpW], AAdvGrid_1st.Cells[5, iTmpW]);
              POIPos(sAName, sBName, sKey, AAdvGrid_1st.Cells[4, iTmpW], AAdvGrid_1st.Cells[5, iTmpW], iRowCnt + iNo);
              AAdvGrid_1st.AddDataImage(18, iTmpW, iImgNo, haCenter, AdvGrid.vaTop);
              Dec(iRowCnt);
              Dec(iImgNo);
            end;
          end;
          Dec(iTmpW);
        end;
      end;
		end;

		if ( lcsActiveEdit = 'meoStartArea' ) then
		begin
			if ( Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text <> '' )  And  ( Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text <> '') then
				StartPos(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text, Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text, Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text)
		end else
		if ( lcsActiveEdit = 'meoStartAreaCUT' ) then
		begin
			if ( Frm_CUT011.cxtStartXval.Text <> '' )  And  ( Frm_CUT011.cxtStartYval.Text <> '') then
				StartPos(Frm_CUT011.meoStartAreaCUT.Text, Frm_CUT011.cxtStartXval.Text, Frm_CUT011.cxtStartYval.Text);
		end else
		if ( lcsActiveEdit = 'meoStartAreaWOR11' ) then
		begin
			if ( Frm_WOR11.cxtStartXval.Text <> '' )  And  ( Frm_WOR11.cxtStartYval.Text <> '') then
				StartPos(Frm_WOR11.meoStartAreaWOR11.Text, Frm_WOR11.cxtStartXval.Text, Frm_WOR11.cxtStartYval.Text);
		end else
		if ( lcsActiveEdit = 'meoEndArea' ) then
		begin
			if ( Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text <> '' )  And  ( Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text <> '') then
				EndPos(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text, Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text, Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text);
		end else
		if ( lcsActiveEdit = 'meoEndAreaCUT' ) then
		begin
			if ( Frm_CUT011.cxtEndXval.Text <> '' )  And  ( Frm_CUT011.cxtEndYval.Text <> '') then
			begin
				EndPos(Frm_CUT011.meoEndAreaCUT.Text, Frm_CUT011.cxtEndXval.Text, Frm_CUT011.cxtEndYval.Text);
			end;
		end else
		if ( lcsActiveEdit = 'meoEndAreaWOR11' ) then
		begin
			if ( Frm_WOR11.cxtEndXval.Text <> '' )  And  ( Frm_WOR11.cxtEndYval.Text <> '') then
			begin
				EndPos(Frm_WOR11.meoEndAreaWOR11.Text, Frm_WOR11.cxtEndXval.Text, Frm_WOR11.cxtEndYval.Text);
			end;
		end else
		if ( lcsActiveEdit = 'meoCallBell' ) then
		begin
			if ( Frm_BTN01.edtXval.Caption <> '' )  And  ( Frm_BTN01.edtYval.Caption <> '') then
			begin
				StartPos(Frm_BTN01.meoCallBellArea.Text, Frm_BTN01.edtXval.Caption, Frm_BTN01.edtYval.Caption);
			end;
		end else
		if ( lcsActiveEdit = 'meoViaArea' ) then
		begin
			if ( Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] <> '') And
				 ( Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] <> '') then
					ViaPos('', Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag], Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag]);
		end;
	except
		on e: exception do
		begin
			Assert(False, 'SetPOIMapDisplay  Error :' + E.Message);
		end;
	end;
end;

function TFrm_JON30.BesselToWGS84(Y_1, x_1: double): integer;
var degree_y, degree_x, min_x, min_y, s_y, s_x, ss_y, ss_x : Double;
  r_x, r_y : integer;
  coord : IXCoordSys;
  pos : IXMapPos;
  d_s, m_s, s_s, ss_s : string;
begin
  try
    if (Y_1 =0) or (x_1 = 0) then Exit;
    coord := mMap.GetCoordSys();
    pos := coord.BesselToWGS84(Y_1, x_1);
    r_y := pos._Lon;
    r_x := pos._Lat;

    ss_Lon := r_y;
    ss_Lat := r_x;

    degree_y := Trunc(r_y/360000.0);
    min_y := Trunc((r_y - degree_y*360000) / 6000.0);
    s_y := Trunc(((r_y - degree_y*360000) - min_y * 6000) / 100);
    ss_y := ((r_y - degree_y*360000) - min_y * 6000) - s_y * 100;

    if Trunc(degree_y) < 10 then d_s := '0' + FloatToStr(Trunc(degree_y))
    else d_s := FloatToStr(Trunc(degree_y));
    if Trunc(min_y) < 10 then m_s := '0' + FloatToStr(Trunc(min_y))
    else m_s := FloatToStr(Trunc(min_y));
    if Trunc(s_y) < 10 then s_s := '0' + FloatToStr(Trunc(s_y))
    else s_s := FloatToStr(Trunc(s_y));
    if Trunc(ss_y) < 10 then ss_s := '0' + FloatToStr(Trunc(ss_y))
    else ss_s := FloatToStr(Trunc(ss_y));
    sw_Lon := StrToFloat(d_s + m_s + s_s + ss_s);

    degree_x := Trunc(r_x/360000.0);
    min_x := Trunc((r_x - degree_x*360000) / 6000.0);
    s_x := Trunc(((r_x - degree_x*360000) - min_x * 6000) / 100);
    ss_x := ((r_x - degree_x*360000) - min_x * 6000) - s_x * 100;

    if Trunc(degree_x) < 10 then d_s := '0' + FloatToStr(Trunc(degree_x))
    else d_s := FloatToStr(Trunc(degree_x));
    if Trunc(min_x) < 10 then m_s := '0' + FloatToStr(Trunc(min_x))
    else m_s := FloatToStr(Trunc(min_x));
    if Trunc(s_x) < 10 then s_s := '0' + FloatToStr(Trunc(s_x))
    else s_s := FloatToStr(Trunc(s_x));
    if Trunc(ss_x) < 10 then ss_s := '0' + FloatToStr(Trunc(ss_x))
    else ss_s := FloatToStr(Trunc(ss_x));
    sw_Lat := StrToFloat(d_s + m_s + s_s + ss_s);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON30.GetAdminCodeF(GLon, GLot: Integer): string;
var
  mAdminman : IXAdminMan;
  mAdmitem : IXAdminItem;
  admcode, admname : string;
  obj : IXUIObj;
begin
  try
    mCtrlMan := mMap.GetCtrlMan();
  	mAdminman := mCtrlMan.GetAdminMan();
  	mCtrlState := mCtrlMan.GetControlState();
  	mCenterLL := mCtrlState.GetLLCenter(); // ������ �߽� ��ǥ
  	mAdmitem := mAdminman.GetAdminItem(GLon, GLot);

  	if mAdmitem <> nil then
    begin
  		admcode := mAdmitem.GetAdminCode();	// ������ �ڵ� ���
      admname := mAdmitem.GetAdminName(' ', 3);//��������
      obj := mUiman.GetChildByUIID(301);
      if (obj <> nil) then obj.SetCaption(mAdmitem.GetAdminName(' ', 3));
  		mAdmitem.Destroy();
  	end;
    Result := admcode;
  except on E: Exception do
    begin
      Result := '';
      Assert(False, E.Message);
    end;
  end;
end;

function TFrm_JON30.WGS84ToBessel(Y_1, x_1: string): integer;
var r_y, r_X : Integer;
  coord : IXCoordSys;
  Mappos : IXMapPos;
  int_string1, int_string2 : string;
begin
  try
		ws_Lon := 0;
		ws_Lat := 0;

    if ( Pos('.', x_1) > 1 ) Or ( Pos('.', Y_1) > 1 ) then Exit;
    if ( Copy(x_1, 1, 1) <> '0' ) Or ( Copy(Y_1, 1, 1) <> '1' ) then Exit;

   	if (Y_1 ='') or (x_1 = '') then Exit;

    int_string1 := Y_1;
    r_y := ((StrToInt64(Copy(int_string1,1,3)) * 360000) + (StrToInt64(Copy(int_string1,4,2)) * 6000) + (StrToInt64(Copy(int_string1,6,2)) * 100) + StrToInt64(Copy(int_string1,8,2)));

    int_string2 := x_1;
    r_X := ((StrToInt64(Copy(int_string2,1,3)) * 360000) + (StrToInt64(Copy(int_string2,4,2)) * 6000) + (StrToInt64(Copy(int_string2,6,2)) * 100) + StrToInt64(Copy(int_string2,8,2)));

    coord := mMap.GetCoordSys();
  	Mappos := coord.WGS84ToBessel(r_y, r_X);
  	ws_Lon := Mappos._Lon;
  	ws_Lat := Mappos._Lat;
  except
    on e: exception do begin
      Assert(False, 'WGS84ToBessel Error : ' + Y_1 + ', ' + x_1 + ':' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.OnMoveMap(lon, lat: INTEGER);
begin
  if (lon = 0) or (lat = 0) then Exit;
  try
    if GS_MAP_AREA_AUTOSHOW then
    begin
      mCtrlMan := mMap.GetCtrlMan();
      mCtrlState := mCtrlMan.GetControlState;
      mCtrlState.SetLLCenter(lon, lat);
      GetAdminCodeF(lon, lat);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.OnNaverMoveMap( Ay, Ax : String);
Var slatX, slonY : String;
begin
	try
    if GS_SEARCH_NAVER_MAP then
    begin
      if (Ax <> '') and (Ay <> '') and ( bWebLoading )  then
      begin
        slatX := SetWGS84(Ax);
        slonY := SetWGS84(Ay);
        try
          ExecuteJavaScript(webNaverMap,'setPoiMove('+slatX+','+ slonY +');');
        except on E: Exception do
          begin
            pLoadNaverMap;
            Assert(False, E.Message);
          end;
        end;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.Panel1Resize(Sender: TObject);
Var iW : Integer;
begin
  try
    iW := Trunc( ( Panel1.Width - 25 ) / 4 );

    btnSPoiMove.Left := 5;
    btnSPoiMove.Width := iW;

    btnEPoiMove.Left := btnSPoiMove.Left + iW + 5;
    btnEPoiMove.Width := iW;

    btnSPoiAMove.Left := btnEPoiMove.Left + iW + 5;
    btnSPoiAMove.Width := iW;

    btnEPoiAMove.Left := btnSPoiAMove.Left + iW + 5;
    btnEPoiAMove.Width := iW;
  except

  end;
end;

function TFrm_JON30.Map_SetLevel(level: Integer): Integer;
begin
  if (level < minLogicalLevel) then Exit;
  if (level > maxLogicalLevel) then Exit;
  try
    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState;
    mCtrlState.SetLevel(level);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.MapLevel_Master(level: INTEGER);
var i, SetEnabled, SetDisable : Integer;
  mLevelBarBg : IXUIButton;
begin
  try
    mLevelBarBg := mUiman.CreateUI_Button(mUiman);
  	if mLevelBarBg = nil then Exit;

  	// Image Index ���� 0~3
  	SetEnabled := 0;
  	SetDisable := 1;
  	for i := 0 to 12  do
    begin
  		if level = i then
        mBtnLevle[i].SetItemIndex(SetEnabled)
  		else mBtnLevle[i].SetItemIndex(SetDisable);
  	end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.Map_ZoomIn;
begin
  try
    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState;
  	if (mCtrlState.GetLevel() > minLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() -1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.Map_ZoomOut;
begin
  try
    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState;
  	if (mCtrlState.GetLevel() < maxLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() +1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.AddWkIconReady(const AXPos, AYPos: string;
  AWkInfo: TMapWkInfoRec);
var
  I: Integer;
  Title, Desc: string;

  itemCount, mAngle : integer;
  mPosLL : IXPoint;
  mGroup : IXPOIGroup;
  mStyle : IXPOIStyle;
  mImageman : IXImageMan;
  mImage : IXMagicImage;
  mItem : IXPOIItem;
  Lon_p, Lat_p : Integer;
  mRootPath : string;
begin
	SetDebugeWrite('JON30.AddWkIconReady');
	try
    if AWkInfo.Con_State = '' then exit;

    if (AXPos = '0') or (AYPos='') then Exit;
    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState();
    mUtil := mMap.GetUtility();
    itemCount := 0;
    mPosLL := mCtrlState.GetLLCenter(); // ������ �߽� ��ǥ

    WGS84ToBessel(AYPos, AXPos);
    mPosLL.SetX(ws_Lon); // ������ X ��ǥ
    mPosLL.SetY(ws_Lat); // ������ Y ��ǥ

    Lon_p := mPosLL.GetX;
    Lat_p := mPosLL.Gety;

    // Step 1. Get POI Manger
    mPoiman := mCtrlMan.GetPOIMan();

    // Step 2. Make POI Group
    mGroup := mPoiman.FindGroup(0);
		if mGroup = nil then mGroup := mPoiman.NewGroup(0);

		mStyle := mPoiman.FindStyle(1);
    if mStyle = nil then
    begin
      mStyle := mPoiman.NewStyle(1);
      mStyle.SetGDIFont(GS_FONTNAME, 0, 8);
      mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
      mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
      mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);
      mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
    end;
      // Step 3. Make POI Items
		mImageman := mCtrlMan.GetImageMan();
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath + '\Image\');

    if (AWkInfo.Con_State = 'B2') and (AWkInfo.BR_Type = '1') then
    begin
			mImage := mImageman.LoadImageList('m0001', 'm0001.png',35,35 );
      Desc := Format('[%s](�Ϸ��:%s)'#13#10'%s(%s)'#13#10'%s'#13#10'%s(%s)',
        [
          '������-�ڻ�', AWkInfo.FinCnt,
          AWkInfo.Name, AWkInfo.Sabun,
					AWkInfo.HP,
          AWkInfo.BrName, AWkInfo.BrNo
        ]
      );
      Title := '';
    end else
    if (AWkInfo.Con_State = 'B2') and (AWkInfo.BR_Type = '2') then
    begin
			mImage := mImageman.LoadImageList('m0002', 'm0002.png',35,35 );
			Desc := Format('[%s](�Ϸ��:%s)'#13#10'%s(%s)',
        [
          '������-Ÿ��', AWkInfo.FinCnt,
          AWkInfo.Name, AWkInfo.Sabun
        ]
      );
      Title := '�� ';
    end else
    if (AWkInfo.Con_State = 'A1') and (AWkInfo.BR_Type = '1') then
    begin
			mImage := mImageman.LoadImageList('m0101', 'm0101.png',35,35 );
      Desc := Format('[%s](�Ϸ��:%s)'#13#10'%s(%s)'#13#10'%s'#13#10'%s(%s)',
        [
          '�ܼ�����-�ڻ�', AWkInfo.FinCnt,
          AWkInfo.Name, AWkInfo.Sabun,
          AWkInfo.HP,
          AWkInfo.BrName, AWkInfo.BrNo
        ]
      );
      Title := '';
    end else
    if (AWkInfo.Con_State = 'A1') and (AWkInfo.BR_Type = '2') then
    begin
			mImage := mImageman.LoadImageList('m0102', 'm0102.png',35,35 );
			Desc := Format('[%s](�Ϸ��:%s)'#13#10'%s(%s)',
        [
          '�ܼ�����-Ÿ��', AWkInfo.FinCnt,
          AWkInfo.Name, AWkInfo.Sabun
        ]
      );
      Title := '�� ';
    end else
    if (AWkInfo.Con_State = 'A2') and (AWkInfo.BR_Type = '1') then
    begin
			mImage := mImageman.LoadImageList('m0201', 'm0201.png',35,35 );
      Desc := Format('[%s](�Ϸ��:%s)'#13#10'%s(%s)'#13#10'%s'#13#10'%s(%s)',
        [
          '��������-�ڻ�', AWkInfo.FinCnt,
          AWkInfo.Name, AWkInfo.Sabun,
          AWkInfo.HP,
					AWkInfo.BrName, AWkInfo.BrNo
        ]
      );
      Title := '';
    end else
    if (AWkInfo.Con_State = 'A2') and (AWkInfo.BR_Type = '2') then
    begin
			mImage := mImageman.LoadImageList('m0202', 'm0202.png',35,35 );
      Desc := Format('[%s](�Ϸ��:%s)'#13#10'%s(%s)',
				[
          '��������-Ÿ��', AWkInfo.FinCnt,
          AWkInfo.Name, AWkInfo.Sabun
        ]
      );
      Title := '�� ';
    end;

    if Not mImage.IsValid then ShowMessage('Image �̻�');
    mAngle := 0;

    mItem := mGroup.NewItem(-1);
    mItem.SetLonLat(Lon_p, Lat_p);
		mItem.SetImage(mImage);
		mItem.SetShowImage(1);
		case mCtrlState.GetLevel() of
			0,1 : mItem.SetImageIndex(0);
			2,3 : mItem.SetImageIndex(1);
			4,5 : mItem.SetImageIndex(2);
			6,7 : mItem.SetImageIndex(3);
			8,9 : mItem.SetImageIndex(4);
			10,11 : mItem.SetImageIndex(5);
		else
			mItem.SetImageIndex(6);
		end;
		mItem.SetImageOffset(4);
    mItem.SetTextStyle(StrToInt('0x12'));

    if i mod 2 <> 0 then mItem.SetStyle(mStyle);
    Title := Format('%s(%s)', [ Title + AWkInfo.Name, AWkInfo.Sabun]);
    mItem.SetCaption(Title);
    mItem.SetContents(Desc);
    mItem.SetSyncAngle(1);
    mItem.SetAngle(mAngle);
    mItem.SetAlpha(100);

    mAngle := mAngle + 10;
    if(mAngle > 360) then mAngle := 0;
  except
    on e: exception do
    begin
      Log('AddWkIconReady Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AddWkIconReady Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AddWkIconRunner(const AXPos, AYPos: string;
  AWkInfo: TMapWkInfoRec);
var
  I: Integer;
  Title, Desc: string;

  itemCount, mAngle : integer;
  mPosLL : IXPoint;
  mGroup : IXPOIGroup;
  mStyle : IXPOIStyle;
  mImageman : IXImageMan;
  mImage : IXMagicImage;
  mItem : IXPOIItem;
  Lon_p, Lat_p : Integer;
  mRootPath : string;
begin
	SetDebugeWrite('JON30.AddWkIconRunner');
  try
    if (AXPos = '0') or (AYPos='') then Exit;

    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState();
    mUtil := mMap.GetUtility();
    itemCount := 0;
    mPosLL := mCtrlState.GetLLCenter(); // ������ �߽� ��ǥ

    WGS84ToBessel(AYPos, AXPos);
    mPosLL.SetX(ws_Lon); // ������ X ��ǥ
    mPosLL.SetY(ws_Lat); // ������ Y ��ǥ

    Lon_p := mPosLL.GetX;
    Lat_p := mPosLL.Gety;
      // Step 1. Get POI Manger
    mPoiman := mCtrlMan.GetPOIMan();

      // Step 2. Make POI Group
		mGroup := mPoiman.FindGroup(33);
    if mGroup = nil then mGroup := mPoiman.NewGroup(33);

		mStyle := mPoiman.FindStyle(1);
    if mStyle = nil then
    begin
      mStyle := mPoiman.NewStyle(1);
			mStyle.SetGDIFont(GS_FONTNAME, 0, 9);  //������ ��� ���� ĸ��ǥ��
			mStyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
			mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
			mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
			mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);
		end;
			// Step 3. Make POI Items
    mImageman := mCtrlMan.GetImageMan();
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath + '\Image\');
    if (AWkInfo.BR_Type = '1') then
    begin
			mImage := mImageman.LoadImageList('Run', 'Run1.png',35,35);
      Desc := Format('[%s](�Ϸ��:%s)'#13#10'%s(%s)'#13#10'%s'#13#10'%s(%s)',
				[
          '����-�ڻ�', AWkInfo.FinCnt,
          AWkInfo.Name, AWkInfo.Sabun,
          AWkInfo.HP,
          AWkInfo.BrName, AWkInfo.BrNo
        ]
      );
      Title := '';
    end else
    if (AWkInfo.BR_Type = '2') then
    begin
      mImage := mImageman.LoadImageList('Run', 'Run2.png',35,35);
			mImage := mImageman.LoadImageList('ready5', 'm0202.png',35,35 );
			Desc := Format('[%s](�Ϸ��:%s)'#13#10'%s(%s)',
				[
					'����-Ÿ��', AWkInfo.FinCnt,
					AWkInfo.Name, AWkInfo.Sabun
				]
      );
      Title := '�� ';
    end;
    if Not mImage.IsValid then ShowMessage('Image �̻�');
    mAngle := 0;

    mItem := mGroup.NewItem(-1);
    mItem.SetLonLat(Lon_p, Lat_p);
    mItem.SetImage(mImage);
		mItem.SetShowImage(1);
		case mCtrlState.GetLevel() of
			0,1 : mItem.SetImageIndex(0);
			2,3 : mItem.SetImageIndex(1);
			4,5 : mItem.SetImageIndex(2);
			6,7 : mItem.SetImageIndex(3);
			8,9 : mItem.SetImageIndex(4);
			10,11 : mItem.SetImageIndex(5);
		else
			mItem.SetImageIndex(6);
		end;
		mItem.SetImageOffset(4);
    mItem.SetTextStyle(StrToInt('0x12'));

    if i mod 2 <> 0 then mItem.SetStyle(mStyle);
    Title := Format('%s(%s)', [Title + AWkInfo.Name, AWkInfo.Sabun]);
    mItem.SetCaption(Title);
    mItem.SetContents(Desc);
    mItem.SetAnimation(200); // 1�� ����
    mItem.SetSyncAngle(1);
    mItem.SetAngle(mAngle);
    mItem.SetAlpha(100);

    mAngle := mAngle + 10;
    if(mAngle > 360) then mAngle := 0;
  except
    on e: exception do
    begin
      Log('AddWkIconRunner Error : AXPos - ' + AXPos + ' , AYPos ' + AYPos + ' [Msg] ' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AddWkIconRunner Error : AXPos - ' + AXPos + ' , AYPos ' + AYPos + ' [Msg] ' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.Mark_Symbol(Lon, Lat, index : Integer; sCaption, sTitle, sKey : String);
var
  mAngle : integer;
  mGroup : IXPOIGroup;
  mGstyle, mStyle : IXPOIStyle;
  mImageman : IXImageMan;
  mImage : IXMagicImage;
  mItem : IXPOIItem;
  mRootPath : String;
begin
  SetDebugeWrite('JON30.Mark_Symbol');
	try
    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState();
    mUtil := mMap.GetUtility();

    // Step 3. Make POI Items
    mImageman := mCtrlMan.GetImageMan();
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath + '\Image\');

    if index = 1 then
    begin
      mImage := mImageman.LoadImage('Spoint','SelectPoint.png');
		end else
    if index = 2 then
    begin
      mImage := mImageman.LoadImage('SP','SPoint.png');
      mPoiman := mCtrlMan.GetPOIMan();
      mGroup := mPoiman.FindGroup(22);
      if mGroup <> nil then mPoiman.DeleteGroup(22);
      mGroup := mPoiman.NewGroup(22);

      mGstyle := mPoiman.FindStyle(22);
      if (mGstyle = nil) then
        mGstyle := mPoiman.NewStyle(22); // -1: ���̵� �ڵ� ����
      mGroup.SetStyle(mGstyle);

      if Not mImage.IsValid then ShowMessage('Image �̻�');
      mAngle := 0;

      mItem := mGroup.NewItem(22) ;
      mItem.SetLonLat(Lon, Lat);
      mItem.SetImage(mImage);
			mItem.SetShowImage(1);
			mItem.SetImageIndex(1);
      mItem.SetImageOffset(7);
			mItem.SetTextStyle(StrToInt('0x12'));
      mItem.SetString('P');

			if Assigned(Frm_Main.Frm_JON01N[Self.Tag]) then
			begin
				mStyle := mPoiman.FindStyle(122);
				if mStyle = nil then
				begin
					mStyle := mPoiman.NewStyle(122);
					mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
					mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
					mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
					mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);
					mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
				end;
				mItem.SetStyle(mStyle);
				mItem.SetCaption(Frm_Main.Frm_JON01N[Self.Tag].sBHSAddr);
				mItem.SetSyncAngle(1);
				mItem.SetAngle(mAngle);
				mItem.SetAlpha(100);

				mAngle := mAngle + 10;
				if(mAngle > 360) then mAngle := 0;
			end;
		end else
    if index = 3 then
		begin
			mImage := mImageman.LoadImage('EP','EPoint.png');
			mPoiman := mCtrlMan.GetPOIMan();
			mGroup := mPoiman.FindGroup(23);
			if mGroup <> nil then mPoiman.DeleteGroup(23);
				mGroup := mPoiman.NewGroup(23);

			mGstyle := mPoiman.FindStyle(23);
			if (mGstyle = nil) then
				mGstyle := mPoiman.NewStyle(23); // -1: ���̵� �ڵ� ����
			mGroup.SetStyle(mGstyle);

      if Not mImage.IsValid then ShowMessage('Image �̻�');
      mAngle := 0;

			mItem := mGroup.NewItem(23) ;
			mItem.SetLonLat(Lon, Lat);
			mItem.SetImage(mImage);
			mItem.SetShowImage(1);
			mItem.SetImageIndex(1);
			mItem.SetImageOffset(7);
			mItem.SetTextStyle(StrToInt('0x12'));
      mItem.SetString('P');

			if Assigned(Frm_Main.Frm_JON01N[Self.Tag]) then
			begin
				mStyle := mPoiman.FindStyle(122);
				if mStyle = nil then
				begin
					mStyle := mPoiman.NewStyle(122);
					mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
					mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
					mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
					mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);
					mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
				end;
				mItem.SetStyle(mStyle);
				mItem.SetCaption(Frm_Main.Frm_JON01N[Self.Tag].sBHEAddr);
				mItem.SetSyncAngle(1);
				mItem.SetAngle(mAngle);
				mItem.SetAlpha(100);

				mAngle := mAngle + 10;
				if(mAngle > 360) then mAngle := 0;
      end;
		end else
    if index = 4 then
		begin
			mImage := mImageman.LoadImage('VP','VPoint.png');
			mPoiman := mCtrlMan.GetPOIMan();
			mGroup := mPoiman.FindGroup(24);
			if mGroup <> nil then mPoiman.DeleteGroup(24);
				mGroup := mPoiman.NewGroup(24);

			mGstyle := mPoiman.FindStyle(24);
			if (mGstyle = nil) then
				mGstyle := mPoiman.NewStyle(24); // -1: ���̵� �ڵ� ����
			mGroup.SetStyle(mGstyle);

			mItem := mGroup.NewItem(24) ;

			mItem.SetLonLat(Lon, Lat);
			mItem.SetImage(mImage);
			mItem.SetShowImage(1);
			mItem.SetImageIndex(1);
			mItem.SetImageOffset(7);
			mItem.SetTextStyle(StrToInt('0x12'));
      mItem.SetString('P');
		end else
    if index In [41..50] then
		begin
      case index of
        41 : mImage := mImageman.LoadImage('PA','PointA.png');
        42 : mImage := mImageman.LoadImage('PB','PointB.png');
        43 : mImage := mImageman.LoadImage('PC','PointC.png');
        44 : mImage := mImageman.LoadImage('PD','PointD.png');
        45 : mImage := mImageman.LoadImage('PE','PointE.png');
        46 : mImage := mImageman.LoadImage('PF','PointF.png');
        47 : mImage := mImageman.LoadImage('PG','PointG.png');
        48 : mImage := mImageman.LoadImage('PH','PointH.png');
        49 : mImage := mImageman.LoadImage('PI','PointI.png');
        50 : mImage := mImageman.LoadImage('PJ','PointJ.png');
      end;

			mPoiman := mCtrlMan.GetPOIMan();
      mGroup := mPoiman.FindGroup(50);
	  	if mGroup = nil then mGroup := mPoiman.NewGroup(50);

			mGstyle := mPoiman.FindStyle(index);
			if (mGstyle = nil) then
				mGstyle := mPoiman.NewStyle(index); // -1: ���̵� �ڵ� ����
			mGroup.SetStyle(mGstyle);

			mItem := mGroup.NewItem(index) ;

			mItem.SetLonLat(Lon, Lat);
			mItem.SetImage(mImage);
			mItem.SetShowImage(1);
			mItem.SetImageIndex(1);
			mItem.SetImageOffset(7);
			mItem.SetTextStyle(StrToInt('0x12'));
      mItem.SetCaption('[ ' + sTitle + ' ]');
      mItem.SetContents(sCaption);
      mItem.SetString(sKey);
      mItem.SetAlpha(30);
		end;
    if Not mImage.IsValid then ShowMessage('Image �̻�');
    mAngle := 0;

    mAngle := mAngle + 10;
    if(mAngle > 360) then mAngle := 0;
  except
    on e: exception do
    begin
      Log('Mark_Symbol Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Mark_Symbol Error :' + gTFindData.sFullWord + '-' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.N1Click(Sender: TObject);
var
  ASido, AGugun, ADong, ADetail : string;
  all_W : AnsiString;
begin
  SetDebugeWrite('JON30.N1Click');
  try
    BesselToWGS84(FLon, FLat);
    all_W := GetDongName(FLon,FLat);
    all_W := StringReplace(all_W, ' ',':', [rfReplaceAll]);

    ASido  := fChange_Poi_Do(StrToken(all_W, ':'));
    AGugun := StrToken(all_W, ':');
    ADong  := all_W;
    ADetail := '';

		Frm_Main.Frm_JON01N[Self.Tag].SetStartAreaMap(ASido, AGugun, ADong, ADetail,'0'+ FloatToStr(sw_Lat),FloatToStr(sw_Lon));
		Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'M';
	except
    on e: exception do
    begin
      Log('N1Click Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'N1Click Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.N2Click(Sender: TObject);
var
  ASido, AGugun, ADong, ADetail : string;
  all_W : AnsiString;
begin
  SetDebugeWrite('JON30.N2Click');
  try
    BesselToWGS84(FLon, FLat);
    all_W := GetDongName(FLon,FLat);
    all_W := StringReplace(all_W, ' ',':', [rfReplaceAll]);

    ASido  := fChange_Poi_Do(StrToken(all_W, ':'));
    AGugun := StrToken(all_W, ':');
    ADong := all_W;
    ADetail := '';

		Frm_Main.Frm_JON01N[Self.Tag].SetEndAreaMap(ASido, AGugun, ADong, ADetail,'0'+ FloatToStr(sw_Lat),FloatToStr(sw_Lon));
		Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'M';
  except
    on e: exception do
    begin
      Log('N2Click Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'N2Click Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON30.GetDongName(GLon, GLot: Integer): string;
var
  mAdminman : IXAdminMan;
  mAdmitem : IXAdminItem;
  admcode, admname : string;
begin
  try
    mCtrlMan := mMap.GetCtrlMan();
    mAdminman := mCtrlMan.GetAdminMan();
    mCtrlState := mCtrlMan.GetControlState();
    mCenterLL := mCtrlState.GetLLCenter(); // ������ �߽� ��ǥ
    mAdmitem := mAdminman.GetAdminItem(GLon, GLot);
    if mAdmitem <> nil then
    begin
      admcode := mAdmitem.GetAdminCode();	// ������ �ڵ� ���
      admname := mAdmitem.GetAdminName(' ', 3);//��������
      mAdmitem.Destroy();
    end;
    Result := admname;
  except
    on e: exception do
    begin
      Log('GetDongName Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'GetDongName Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON30.StrToken(var ASource: AnsiString; ADelimiter: AnsiString): String;
var
  PosToken: integer;
begin
  try
    PosToken := Pos(ADelimiter, ASource);
    result := Copy(ASource, 0, PosToken - 1);
    ASource := Copy(ASource, PosToken + 1, Length(ASource) - PosToken);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.N500m1Click(Sender: TObject);
begin
	WkSearch('0.5', 0);
end;

procedure TFrm_JON30.N1Km1Click(Sender: TObject);
begin
	WkSearch('1', 0);
end;

procedure TFrm_JON30.N3Km1Click(Sender: TObject);
begin
	WkSearch('3', 0);
end;

procedure TFrm_JON30.N5Km1Click(Sender: TObject);
begin
  WkSearch('5', 0);
end;

procedure TFrm_JON30.N4Click(Sender: TObject);
begin
  ClearWkIcon;
end;

procedure TFrm_JON30.WkSearch(aRound: string; iType : integer);
var
  State: string;
  Lon_P, Lat_P : Integer;
  c_Point : IXPoint;
begin
  if (not GS_MAP_AREA_AUTOSHOW) Or ( GS_SEARCH_NAVER_MAP ) then Exit;

  SetDebugeWrite('JON30.WkSearch');
  try
    State := '00';

    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState;
    c_Point := mCtrlState.GetLLCenter;
    Lon_P := c_Point.GetX; //lon
    Lat_p := c_Point.GetY; //lat
    if iType = 1 then
    begin
      if (BF_Lon = Lon_P) and (BF_Lat = Lat_P) then exit;
    end;

    BesselToWGS84(Lon_P, Lat_p);
    mCtrlState.SetLevel(3);
    if WK_ING then
    begin
      OutputDebugString(PChar('���˻�==============================================================='+ FormatDateTime('HH:MM:SS.ZZZ', Now) + ' <==> ������'));
    end
    else if WK_ING = False then
    begin
      if GS_SEARCH_NEAR_WKKIND then
        RequestDataWorker('00', '00', '', '', '', aRound, '0'+FloatToStr(sw_Lat), FloatToStr(sw_Lon), '0' )
      else if not GS_SEARCH_NEAR_WKKIND then
        RequestDataWorker('A2', 'A2', '', '', '', aRound, '0'+FloatToStr(sw_Lat), FloatToStr(sw_Lon), '0' );
    end;
    if iType = 1 then
    begin
      BF_Lon := Lon_P;
      BF_Lat := Lat_P;
    end;
  except
    on e: exception do
    begin
      Log('WkSearch Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'WkSearch Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.RequestDataWorker(const AATTEND, AState, AStatetime, AKeyKind, AKeyWord, ADistance, AX, AY, ABRTYPE : string);
var
  TxData: string;
  RxData: msDomDocument;
  I : Integer;
  lst_Result: IXMLDomNodeList;
  WkRec: TMapWkInfoRec;
begin
  SetDebugeWrite('JON30.RequestDataWorker');
  try
    WK_ING := True;
    RxData := ComsDomDocument.Create;
    try
      TxData := GTx_UnitXmlLoad('C063N2.xml');

      TxData := ReplaceAll(TxData, 'modeStr'      , 'SELECT');
      TxData := ReplaceAll(TxData, 'attendStr'    , AATTEND);
      TxData := ReplaceAll(TxData, 'stateStr'     , AState);
      TxData := ReplaceAll(TxData, 'attendTimeStr', AStatetime);
      TxData := ReplaceAll(TxData, 'distanceStr'  , ADistance);
      TxData := ReplaceAll(TxData, 'keykindstr'   , AKeyKind);
      TxData := ReplaceAll(TxData, 'keywordstr'   , AKeyWord);
      TxData := ReplaceAll(TxData, 'mapXStr'      , AX);
      TxData := ReplaceAll(TxData, 'mapYStr'      , AY);
      TxData := ReplaceAll(TxData, 'BR_Typestr'   , ABRTYPE);
      TxData := ReplaceAll(TxData, 'ClientKeyString', 'C063N2_J30');

      if RequestDataBase(TxData, RxData) then
      begin
        try
          ClearWkIcon;
          lst_Result := RxData.documentElement.selectNodes('/cdms/Service/Response/Data');
          for I := 0 to lst_Result.length - 1 do
          begin
            WkRec.Sabun     := lst_Result.item[I].attributes.getNamedItem('SABUN').Text;
            WkRec.Name      := lst_Result.item[I].attributes.getNamedItem('NAME').Text;
            WkRec.ATTEND    := lst_Result.item[I].attributes.getNamedItem('ATTEND').Text;
            WkRec.PASS_TIME := lst_Result.item[I].attributes.getNamedItem('PASS_TIME').Text;
            WkRec.Con_State := lst_Result.item[I].attributes.getNamedItem('STATE').Text;
            WkRec.BR_Type   := lst_Result.item[I].attributes.getNamedItem('BR_TYPE').Text;
            WkRec.FinCnt    := lst_Result.item[I].attributes.getNamedItem('FINISH_CNT').Text;
            WkRec.MAPX      := lst_Result.item[I].attributes.getNamedItem('MAP_X').Text;
            WkRec.MAPY      := lst_Result.item[I].attributes.getNamedItem('MAP_Y').Text;
            WkRec.BrNo      := lst_Result.item[I].attributes.getNamedItem('BR_NO').Text;
            WkRec.BrName    := lst_Result.item[I].attributes.getNamedItem('BR_NAME').Text;
            WkRec.HP        := lst_Result.item[I].attributes.getNamedItem('HP').Text;
            WkRec.PHONE     := lst_Result.item[I].attributes.getNamedItem('PHONE').Text;
            if WkRec.ATTEND = '01' then
            begin
              if GS_MAP_AREA_AUTOSHOW then AddWkIconReady(WkRec.MAPX, WkRec.MAPY, WkRec);
            end;
            if WkRec.ATTEND = '02' then
            begin
              if GS_MAP_AREA_AUTOSHOW then AddWkIconRunner(WkRec.MAPX, WkRec.MAPY, WkRec);
            end;
          end;
        finally
          WK_ING := False;
        end;
      end;
    finally
      RxData := Nil;
    end;
  except
    on e: exception do
    begin
      Log('RequestDataWorker Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'RequestDataWorker Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON30.RequestDataBase(ATxData: string;
  var ARxDataDom: msDOMDocument): Boolean;
var
  StrList: TStringList;
  ErrCode: Integer;
  ErrorCode, RxData: string;
begin
  SetDebugeWrite('JON30.RequestDataBase');
  try
    Result := False;

    if FInit then Exit;

    ATxData := StringReplace(ATxData, 'UserIDString',     GT_USERIF.ID, [rfReplaceAll]);
    ATxData := StringReplace(ATxData, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);
    StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
    try
      if not dm.SendSock(ATxData, StrList, ErrCode, False) then
      begin
//        GMessagebox('������ ���ۿ� �����߽��ϴ�.'#13#10'�ٽýõ� �ϼ���.', CDMSE);
        Exit;
      end;

      try
        if StrList.Count = 0 then
        begin
          GMessagebox('�˻��� �����Ͱ� �����ϴ�.', CDMSE);
          Exit;
        end;

        RxData := StrList[0];

//				Log('Jon30 :' +RxData, LOGDATAPATHFILE);

				if not ARxDataDom.loadXML(RxData) then
        begin
          GMessagebox('���ŵ����Ͱ� �߸��Ǿ����ϴ�.[XML Format error]', CDMSE);
          Exit;
        end;

        ErrorCode := GetXmlErrorCode(RxData);
        if ErrorCode <> '0000' then
        begin
          GMessagebox(Format('������ ��ȸ �� ������ �߻��߽��ϴ�.'#13#10'[��������: %s]', [GetXmlErrorMsg(RxData)]), CDMSE);
          Exit;
        end;

        Result := True;
      except on E: Exception do
        begin
          Assert(False, E.Message);
          GMessagebox(Format('������ ��ȸ �� ������ �߻��߽��ϴ�.'#13#10'[��������: %s]', [E.Message]), CDMSE);
        end;
      end;
    finally
      FreeAndNil(StrList);
      Screen.Cursor := crDefault;
    end;
  except
    on e: exception do
    begin
      Log('RequestDataBase Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'RequestDataBase Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.ClearWkIcon;
begin
  try
  	if mPoiman.GetGroupCount > 0 then
  	begin
  		 mPoiman.DeleteGroup(0);
  		 mPoiman.DeleteGroup(33);
  	end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.ClearMarkStartEndVia_Icon;
begin
  try
    if Assigned(mPoiman) then
    begin
    	if mPoiman.GetGroupCount > 0 then
    	begin
    		 mPoiman.DeleteGroup(22);
    		 mPoiman.DeleteGroup(23);
    		 mPoiman.DeleteGroup(24);
    		 mPoiman.DeleteGroup(50);
    	end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.ClearNaverMark;
begin
  try
    if ( GS_SEARCH_NAVER_MAP )  and ( bWebLoading ) then
    begin
      try
        ExecuteJavaScript(webNaverMap,'RemovePoiMark();');
      except on E: Exception do
        begin
          pLoadNaverMap;
          Assert(False, E.Message);
        end;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.ClearPOI;
begin
  try
  	if mPoiman.GetGroupCount > 0 then
    begin
       mPoiman.ClearGroup();
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.DestroyUI;
var
obj : IXUIObj;
begin
  try
    obj := mMap.GetCtrlMan.GetUIMan.GetChildByUIID(11);
    if obj <> nil then
    obj.DestroyUIObj();
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.FormResize(Sender: TObject);
begin
  try
//    if Frm_Main.j30 = 1 then  j30Top := Self.Top;
    if sts_Chk then
    begin
      DestroyUI;
      CreateLevelBar;
    end;
    if lbPnlTF then pnlMap.Tag := pnlMap.Height;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.FormShow(Sender: TObject);
begin
	SetDebugeWrite('JON30.FormShow');
//  fSetSkin(Frm_JON30);    skin�� ���ο��� �ѹ��� ����

	if GS_POISCH_ALL then btnAllSch.LookAndFeel.SkinName := 'Office2010Silver'
	                 else btnAllSch.LookAndFeel.SkinName := 'Sharp';
	if GS_JON30_POSFIX then cxBtnFixPos.LookAndFeel.SkinName := 'Office2010Silver'
                     else cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';

//	if GS_JON01_GROUPMOVE then TmrChkTag.Enabled := True;
	TmrChkTag.Enabled := True;   // �ڼ��� �������ϰ� �ɼǿ� ���� �̵�( �������¿��� �ڼ� ������� �ٷ� �����ϱ� ����);

  if GT_DISTANCE_ST = 0 then cxChkSchSvr.Checked := False else
	if GT_DISTANCE_ST = 1 then cxChkSchSvr.Checked := True;

	chkUseMiniMap.Checked := GS_MAP_AREA_AUTOSHOW;

	if GS_SEARCH_WISE_NAVER_COMPARE then
	begin
		rbPOI2.Checked := True;
	end else
	begin
		rbPOI1.Checked := True;
	end;
end;

procedure TFrm_JON30.TalMapXCtrl1Create(ASender: TObject; Value: Integer);
var
  mMapMan : IXMapMan;
  mThemeMan : IXThemeMan;
	mAdminMan : IXAdminMan;
  mRootPath, XPos, YPos : String;
	sTemp : string;
begin
  SetDebugeWrite('JON30.TalMapXCtrl1Create');
	try
    mRootPath := ExtractFilePath(Application.ExeName);

		mCtrlMan := mMap.GetCtrlMan();
		mThemeMan := mCtrlMan.GetThemeMan();
		mMapMan := mCtrlMan.GetMapMan();
		mAdminMan := mCtrlMan.GetAdminMan();

		mPoiman := mCtrlMan.GetPOIMan();
    // CtrlMan�� Default Path�� ���α׷� ���� ���丮�� ����
    mCtrlMan.SetDefaultPath(MAP_URL);

    // ���̼��� ������ Load�Ѵ� ���������� Load�� �ȵǸ� �����޼������� ���.
    if mCtrlMan.LoadLicense(MAP_URL + 'license\CMNAGTXE.tml') <> true then
    begin
      Assert(False, 'TalMap License Error :' + MAP_URL + 'license\CMNAGTXE.tml');
      ShowMessage('���̼��� ������ �����߽��ϴ�.');
      exit
    end;

    // Map �����͸� ���� TM1������ ���� ������ ����.
    // Web Server�� �ø��� ���� �Ʒ��� ���� �����ϰ� TM1������ ���� ���������� �����ϸ� �˴ϴ�.
    // ��: 'http://user-site.co.kr/Map/MapData' --> MapData �ؿ��� TM1������ ��ġ�ϰ� �ϸ� �˴ϴ�.
    if mMapMan.SetDefaultPath(MAP_URL + 'MapData') <> true then
    begin
      Assert(False, 'TalMap Map Data Error :' + MAP_URL + 'MapData');
			ShowMessage('Map ������ ������ �����߽��ϴ�.');
			exit
		end;

		// Theme ������ ����.
		mThemeMan.SetDefaultPath(MAP_URL + 'Theme');
		if mThemeMan.LoadTheme('MNS.TMT') <> 1 then
    begin
			ShowMessage('�׸����� ������ �����߽��ϴ�.');
      exit
		end;

		// Admin ������ ����.
		mAdminMan.SetDefaultPath(MAP_URL + 'Theme');
		if mAdminMan.LoadAdmin('TalMap_M.TMA') <> true then
		begin
			ShowMessage('���������� ������ �����߽��ϴ�.');
			exit
		end;

		mUiman := mCtrlman.GetUIMan();
		mUiman.SetShowCenterLine(2);       //���� ������.

		SetCtrlState(32);//���콺 Ŭ���̵� ����

		mCtrlMan.SetDefaultEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEMOVE'));

    XPos := Area_CenterLat;//'037335565';
    YPos := Area_CenterLon;//'126583729';
    WGS84ToBessel(YPos, XPos);
    OnMoveMap(ws_Lon, ws_Lat);

    sts_Chk := True;
    GeneralInit;
  except
    on E: exception do
    begin
      sTemp := 'Map ����ó�� �߻�:' + e.Message;
      Assert(False, E.Message);
      ShowMessage(sTemp);
    end;
  end;
end;

procedure TFrm_JON30.TalMapXCtrl1MouseMove(ASender: TObject; Flag, X, Y: Integer);
begin
  gMapX := X;
  gMapY := Y;
  tmrDongPolygon.Enabled := True;
end;

procedure TFrm_JON30.TalMapXCtrl1POI_DblClick(ASender: TObject;
  const POI: IXPOIItem; nFlag, X, Y: Integer);
var
  pos : IXMapPos;
  mLayerman : IXLayerMan;
  mLayer : IXLayer;
  m_Lon, m_Lat : Integer;
begin
  SetDebugeWrite('JON30.TalMapXCtrl1POI_DblClick');
  try
    mLayerman := mCtrlman.GetLayerMan();
    mLayer :=  mLayerman.FindLayer(1);
    if mLayer <>nil then
      mLayer.ClearObject();

    pos := mCtrlState.DPToLL(X, Y);
    m_Lon := pos.GetLon;
    m_Lat := pos.GetLat;

    OnMoveMap(m_Lon, m_Lat);
  except
    on e: exception do
    begin
      Log('TalMapXCtrl1POI_DblClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'TalMapXCtrl1POI_DblClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.TalMapXCtrl1StateChange(ASender: TObject; Code, Value1,
  Value2: Integer);
var
  mGroup : IXPOIGroup;
  mGstyle : IXPOIStyle;
  mPoi : IXPOIItem;
  poi_cnt, i : integer;
begin
  SetDebugeWrite('JON30.TalMapXCtrl1StateChange');
	Try
		mUtil := mMap.GetUtility();
		mCtrlMan := mMap.GetCtrlMan();
		mCtrlState := mCtrlman.GetControlState();
		if Code = mUtil.GetConstToValue('TMCHECKCONFIG_LEVEL') then
		begin
			if sts_Chk then
			begin
				MapLevel_Master(mCtrlState.GetLevel());

				mUtil := mMap.GetUtility();

				// Step 2. Make POI Group
				mGroup := mPoiman.FindGroup(0);
				if mGroup = nil then mGroup := mPoiman.NewGroup(0);

      	//������ ��� ���� ĸ��ǥ��//////////////////////////////////
				// �����
				if GS_SEARCH_NEAR_WK_CAPTION then
				begin
					mGstyle := mPoiman.FindStyle(1);
					if (mGstyle <> nil) then
					begin
        		//        mGstyle := mPoiman.NewStyle(1); // -1: ���̵� �ڵ� ����
						if mCtrlState.GetLevel() < 6 then
						begin
							mGstyle.SetGDIFont(GS_FONTNAME, 0, 9);  //������ ��� ���� ĸ��ǥ��
							mGstyle.SetFontColor(mUtil.RGBColor(0, 0, 0));  //ĸ�Ǳ���
							mGstyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));     //ĸ�� �����׵θ�
							mGstyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0); //ĸ�ǹ��
							mGstyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
							mGroup.SetStyle(mGstyle);
						end else
						begin
							mGroup.ClearStyle;
						end;
					end;
				end;

				mGroup := mPoiman.FindGroup(0);
				if mGroup <> nil then
				begin
					poi_cnt := mGroup.GetItemCount;
					for i := 1 to poi_cnt  do
					begin
						mPoi := mGroup.FindItem(i);
						if (mPoi <> nil) then
						begin
							case mCtrlState.GetLevel() of
								0,1 : mPoi.SetImageIndex(0);
								2,3 : mPoi.SetImageIndex(1);
								4,5 : mPoi.SetImageIndex(2);
								6,7 : mPoi.SetImageIndex(3);
								8,9 : mPoi.SetImageIndex(4);
								10,11 : mPoi.SetImageIndex(5);
							else
								mPoi.SetImageIndex(6);
							end;
						end;
					end;
				end;

				//������
				mGroup := mPoiman.FindGroup(33);
				if mGroup <> nil then
				begin
					poi_cnt := mGroup.GetItemCount;

					for i := 1 to poi_cnt do
					begin
						mPoi := mGroup.FindItem(i);
						if (mPoi <> nil) then
						begin
							case mCtrlState.GetLevel() of
								0,1 : mPoi.SetImageIndex(0);
								2,3 : mPoi.SetImageIndex(1);
								4,5 : mPoi.SetImageIndex(2);
								6,7 : mPoi.SetImageIndex(3);
								8,9 : mPoi.SetImageIndex(4);
								10,11 : mPoi.SetImageIndex(5);
							else
								mPoi.SetImageIndex(6);
							end;
						end;
					end;
				end;
      	//������ ��� �����ܺ���/////////////////////////////////////
			end;
		end;
  except
    on e: exception do
    begin
      Log('TalMapXCtrl1StateChange Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'TalMapXCtrl1StateChange Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.TalMapXCtrl1UI_MouseUp(ASender: TObject;
  const Obj: IXUIObj; Flag, X, Y: Integer);
begin
  SetDebugeWrite('JON30.TalMapXCtrl1UI_MouseUp');
  try
    if Obj.GetParent.GetUIID = 11 then
    begin
      case obj.GetUIID of
        12: Map_ZoomOut;
        13: Map_ZoomIn;
        14: Map_SetLevel(12);
        15: Map_SetLevel(11);
        16: Map_SetLevel(10);
        17: Map_SetLevel(9);
        18: Map_SetLevel(8);
        19: Map_SetLevel(7);
        20: Map_SetLevel(6);
        21: Map_SetLevel(5);
        22: Map_SetLevel(4);
        23: Map_SetLevel(3);
        24: Map_SetLevel(2);
        25: Map_SetLevel(1);
        26: Map_SetLevel(0);
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.TmrChkTagTimer(Sender: TObject);
begin
  try
    TmrChkTag.Enabled := False;

    if Not Self.Showing then Exit;

    if ( Self.Tag <> TmrChkTag.Tag ) And ( bChkTime )  then
    begin
      if Frm_Main.JON01MNG[Self.Tag].Dock then
      begin
        if Assigned(MagneticWnd) then
        begin
          MagneticWnd.RemoveWindow(Self.Handle);
        end;

        MagneticWnd.AddWindow(Frm_JON00.Handle, 0, MagneticWndProc);
//        MagneticWndProc := Nil;
        TmrChkTag.Tag := Self.Tag;

        if not assigned(MagneticWndProc) then
          if Assigned(MagneticWnd) then
          begin
            MagneticWnd.AddWindow(Self.Handle, Frm_JON00.Handle, MagneticWndProc);
          end;
      end else
      begin
        if Assigned(MagneticWnd) then
        begin
          MagneticWnd.RemoveWindow(Self.Handle);
        end;

        MagneticWnd.AddWindow(Frm_Main.Frm_JON01N[Self.Tag].Handle, 0, MagneticWndProc);
//        MagneticWndProc := Nil;
        TmrChkTag.Tag := Self.Tag;

        if not assigned(MagneticWndProc) then
          if Assigned(MagneticWnd) then
          begin
            MagneticWnd.AddWindow(Self.Handle, Frm_Main.Frm_JON01N[Self.Tag].Handle, MagneticWndProc);
          end;
      end;
    end;
    TmrChkTag.Enabled := True;
  except
    on e: exception do
    begin
      Assert(False, 'TmrChkTagTimer Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON30.chk_Map(chk: Boolean): Boolean;
Var i : Integer;
	 mGroup : IXPOIGroup;
begin
  try
    if chk then
    begin
      if pnlMap.Tag > 250 then
				Self.Height := (frm_Size) + pnlMap.Tag
      else
        Self.Height := (frm_Size) + 250;

      mMap.Show;
		end else
    if chk = False then
    begin
      for i := 1 to AdvStringGrid1.RowCount - 1 do
      begin
        if i > 10 then Break;
        AdvStringGrid1.RemoveDataImage(9, i);
      end;

      for i := 0 to AdvStringGrid3.RowCount - 1 do
      begin
        if i > 10 then Break;
        AdvStringGrid3.RemoveDataImage(9, i);
      end;

      for i := 1 to AdvStringGrid5.RowCount - 1 do
      begin
        if i > 10 then Break;
        AdvStringGrid5.RemoveDataImage(9, i);
      end;

      for i := 0 to AdvStringGrid6.RowCount - 1 do
      begin
        if i > 10 then Break;
        AdvStringGrid6.RemoveDataImage(9, i);
      end;

      for i := 1 to AdvStringGrid8.RowCount - 1 do
      begin
        if i > 10 then Break;
        AdvStringGrid8.RemoveDataImage(9, i);
      end;

      for i := 0 to AdvStringGrid9.RowCount - 1 do
      begin
        if i > 10 then Break;
        AdvStringGrid9.RemoveDataImage(9, i);
      end;

      for i := 41 to 50 do
      begin
        mGroup := mPoiman.FindGroup(50);
        if mGroup <> nil then mPoiman.DeleteGroup(50);
      end;

			Self.Height := frm_Size;
			mMap.Hide;
    end;
  except
    on e: exception do
    begin
      Log('chk_Map Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'chk_Map Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON30.SetWGS84(idata: string): string;
var
  i_degree : Double;
begin
  try
    if Copy(idata,1,1) = '3' then
      i_degree := StrToFloatDef(Copy(idata, 1, 2), 0) +
                  StrToFloatDef(Copy(idata, 3, 2), 0) / 60 +
                  StrToFloatDef(Copy(idata, 5, 4), 0) / 100 / 60 / 60
    else
      i_degree := StrToFloatDef(Copy(idata, 1, 3), 0) +
                  StrToFloatDef(Copy(idata, 4, 2), 0) / 60 +
                  StrToFloatDef(Copy(idata, 6, 4), 0) / 100 / 60 / 60;

    if ( Copy(idata,1,1) = '0' ) Or ( Copy(idata,1,1) = '3' ) then
    begin
      if i_degree >= 100 THEN i_degree := 0;
    end else
    begin
      if i_degree >= 1000 THEN i_degree := 0;
    end;
    Result := FloatToStr(SimpleRoundTo(i_Degree, -6));
  except on E: Exception do
    begin
      Result := '';
      Assert(False, E.Message);
    end;
  end;
end;

// POI ���� ��
procedure TFrm_JON30.Proc_SendParent(ss_Row: Integer; sTF: boolean);
var
  row3, row4 : string;
  COM_Word, COM_Word1 : string;
	AAdvGrid : TAdvStringGrid;
begin
	SetDebugeWrite('JON30.Proc_SendParent');
  try
		COM_Word := '';

    if ss_Row < 1 then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'E') And ( Not bClick ) then Exit;

        Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area1 := '';
        Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area2 := '';
        Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area3 := '';
        Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area4 := '';
        Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area5 := '';
        Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X := '';
        Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y := '';
        Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X := '';
        Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y := '';
        Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Gubun := '';

				Frm_Main.Frm_JON01N[Self.Tag].sBHSAddr := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsSta4 := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsStaDocId := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsStaCellSel := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsStaSchWord := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsStaDebug := '';
				Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := '';

				Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text := '';
				Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsConfAREA4 := '';
				Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text := '';
				Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text := '';
				Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEXval := '';
				Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEYval := '';
			end else
			if lcsActiveEdit = 'meoEndArea' then
			begin
				if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'S')  And ( Not bClick ) then Exit;
				Frm_Main.Frm_JON01N[Self.Tag].sBHEAddr := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsEndSchWord := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsEndDebug := '';

				Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := '';
				Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption := '';
				Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := '';
				Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Clear;

				Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := '';
				Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := '';
				Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := '';
				Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := '';
			end else
			if lcsActiveEdit = 'meoViaArea' then
			begin
				Frm_Main.Frm_JON01N[Self.Tag].ViaSA1[GS_VIA_Tag] := '';
				Frm_Main.Frm_JON01N[Self.Tag].ViaSA2[GS_VIA_Tag] := '';
				Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] := '';
				if GS_VIA_Tag = 1 then
					Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption := ''
				else
					Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption := '';
				Frm_Main.Frm_JON01N[Self.Tag].ViaAreaDetail[GS_VIA_Tag] := '';
				Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := '';
				Frm_Main.Frm_JON01N[Self.Tag].DocId[GS_VIA_Tag]   := '';
				Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := '';
				Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] := '';
				Frm_Main.Frm_JON01N[Self.Tag].GUIDE_X[GS_VIA_Tag] := '';
				Frm_Main.Frm_JON01N[Self.Tag].GUIDE_Y[GS_VIA_Tag] := '';
			end else
			if lcsActiveEdit = 'meoStartAreaCUT' then
			begin
				Frm_CUT011.lcsSta1 := '';
				Frm_CUT011.lcsSta2 := '';
				Frm_CUT011.lcsSta3 := '';
				Frm_CUT011.cxtSA1.Text := '';
				Frm_CUT011.cxtSA2.Text := '';
				Frm_CUT011.cxtSA3.Text := '';
				Frm_CUT011.lblStartAreaName.Caption := '';
        Frm_CUT011.cxtStartAreaDetail.Text := '';
        Frm_CUT011.cxtStartXval.Text := '';
        Frm_CUT011.cxtStartYval.Text := '';
      end else
      if lcsActiveEdit = 'meoEndAreaCUT' then
      begin
        Frm_CUT011.lcsEnd1 := '';
        Frm_CUT011.lcsEnd2 := '';
        Frm_CUT011.lcsEnd3 := '';
        Frm_CUT011.cxtEd1.Text := '';
        Frm_CUT011.cxtEd2.Text := '';
        Frm_CUT011.cxtEd3.Text := '';
        Frm_CUT011.lblEndAreaName.Caption := '';
				Frm_CUT011.cxtEndAreaDetail.Text := '';
        Frm_CUT011.cxtEndXval.Text := '';
        Frm_CUT011.cxtEndYval.Text := '';
      end else
      if lcsActiveEdit = 'meoCallBell' then
      begin
        Frm_BTN01.lcsCallBell1 := '';
        Frm_BTN01.lcsCallBell2 := '';
        Frm_BTN01.lcsCallBell3 := '';
				Frm_BTN01.lbUpsoAreaName.Caption := '';
        Frm_BTN01.edtUpsoAreaDetail.Caption := '';
        Frm_BTN01.edtXval.Caption := '';
        Frm_BTN01.edtYval.Caption := '';
      end;
    end else
    begin
			bMouseDownSelect := True;
			if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or 
				 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid1 else
			if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or 
				 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid5 else
			if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid8;
			
			if lcsActiveEdit = 'meoStartArea' then 
			begin
				if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'E')  And ( Not bClick ) then Exit;
				begin
					Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
					Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
					Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
					Frm_Main.Frm_JON01N[Self.Tag].lcsSta4 := D_HightlightTXT(AAdvGrid.Cells[2, ss_Row -1]);
					Frm_Main.Frm_JON01N[Self.Tag].lcsStaDocId := D_HightlightTXT(AAdvGrid.Cells[10, ss_Row -1]);
					Frm_Main.Frm_JON01N[Self.Tag].lcsStaDebug := '';
					Frm_Main.Frm_JON01N[Self.Tag].sBHSAddr := '';
					if sTF then
						Frm_Main.Frm_JON01N[Self.Tag].lcsStaCellSel := IntToStr(ss_Row -1);

					Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]) + ' ' +
																																 D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]) + ' ' +
																																 D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
					SetDebugeWrite('JON30.lblStartAreaName.Text 4560 : ' + Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text);
					MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);

					row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text, '-');

					Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text := row3;
					Frm_Main.Frm_JON01N[Self.Tag].lcsConfAREA4 := row3;
					MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);

					row4 := func_MakeRow4(AAdvGrid, ss_Row);

					if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
																									else COM_Word1 := row4 + ' ' + row3;

					////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
					// ��POI�� �ڵ����� ������ ����
					if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;
					// ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
					if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

					if COM_Word = '' then
					begin
						// ������ �׻� POI�տ� ����
						if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 + COM_Word1
																					 else COM_Word := COM_Word1
					end else
					begin
						// ������ �׻� POI�տ� ����
						if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 + COM_Word;
					end;
					////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
					if GS_SEARCH_AUTO_COMPLETE then
					begin
						if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
						Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text := fSetPOIChangeName(COM_Word);
					end else
					begin
						if GS_POIAName.Count <> 0 then
							Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text := fSetPOIChangeName(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text)
					end;

          // 20120805 ��ǥ ���� üũ LYB
          Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area1 := D_HightlightTXT(AdvStringGrid1.Cells[6, ss_Row -1]);
          Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area2 := D_HightlightTXT(AdvStringGrid1.Cells[7, ss_Row -1]);
          Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area3 := D_HightlightTXT(AdvStringGrid1.Cells[8, ss_Row -1]);
          Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area4 := D_HightlightTXT(AdvStringGrid1.Cells[1, ss_Row -1]);
          Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area5 := D_HightlightTXT(AdvStringGrid1.Cells[2, ss_Row -1]);
          Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X := D_HightlightTXT(AdvStringGrid1.Cells[4, ss_Row -1]);
          Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y := D_HightlightTXT(AdvStringGrid1.Cells[5, ss_Row -1]);
          Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X := D_HightlightTXT(AdvStringGrid1.Cells[11, ss_Row -1]);
          Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y := D_HightlightTXT(AdvStringGrid1.Cells[12, ss_Row -1]);

          // tmr1 Ÿ�̸��� �̺�Ʈ�� �ű�.
          try
            Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Gubun := '1';
          finally
            Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X;
            Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y;
            Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEXval := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X;
            Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEYval := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y;
          end;
					Frm_Main.Frm_JON01N[Self.Tag].StartListN := '2';  //����� ����Ʈ ������

					if AAdvGrid.Cells[3, ss_Row -1] = '' then Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'L'
																			  			 else Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'I';

					if AAdvGrid.Cells[10, ss_Row -1] <> '' then Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'W';
					if AAdvGrid.Cells[13, ss_Row -1] = 'N' then Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'N' else
					if AAdvGrid.Cells[13, ss_Row -1] = 'D' then Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'O';

					if ( GT_DISTANCE_ST = 1 ) And ( bEnter ) then
					begin
						Frm_Main.Frm_JON01N[Self.Tag].tmrDistance.Enabled := True;
					end;
				end;
			end else
			if lcsActiveEdit = 'meoEndArea' then
      begin
				if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'S')  And ( Not bClick ) then Exit;
        begin
					Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);// cxGViewArea.DataController.Values[ss_Row - 1, 0];
					Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
					Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
					Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := D_HightlightTXT(AAdvGrid.Cells[2, ss_Row -1]);
					Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := D_HightlightTXT(AAdvGrid.Cells[10, ss_Row -1]);
					Frm_Main.Frm_JON01N[Self.Tag].lcsEndDebug := '';
					Frm_Main.Frm_JON01N[Self.Tag].sBHEAddr := '';
					if sTF then
						Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := IntToStr(ss_Row -1);

					Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]) + ' ' +
																																	D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]) + ' ' +
																																  D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);

					row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption, '-');

					Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := row3;
					Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text := Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption + ' '
																													+ Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption;
					SetDebugeWrite('JON30.cxReEndArea.Text 4727 : ' + Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text);
					MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text), clRed, [fsBold]);

					row4 := func_MakeRow4(AAdvGrid, ss_Row);

					if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
																									else COM_Word1 := row4 + ' ' + row3;
					////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
					// ��POI�� �ڵ����� ������ ����
					if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;
					// ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
					if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

					if COM_Word = '' then
					begin
						// ������ �׻� POI�տ� ����
						if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 + COM_Word1
																					 else COM_Word := COM_Word1
					end else
					begin
						// ������ �׻� POI�տ� ����
						if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 + COM_Word;
					end;
					if (not GS_SEARCH_AUTO_NOTUSE) and (GS_SEARCH_AUTO_COMPLETE) then
					begin
						if GS_SEARCH_AUTO_COMPLETE then
						begin
							if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
						end;
						Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text := COM_Word;
					end;
					////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////

					Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := D_HightlightTXT(AAdvGrid.Cells[4, ss_Row -1]);
					Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := D_HightlightTXT(AAdvGrid.Cells[5, ss_Row -1]);

					Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X := D_HightlightTXT(AAdvGrid.Cells[11, ss_Row -1]);
					Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y := D_HightlightTXT(AAdvGrid.Cells[12, ss_Row -1]);

					try
						Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Gubun := '1';
					finally
						Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X;
						Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y;
						Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X;
						Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y;
					end;

					if ( GT_DISTANCE_ST = 1 ) And ( bEnter ) then
					begin
						Frm_Main.Frm_JON01N[Self.Tag].tmrDistance.Enabled := True;
					end;

					if AAdvGrid.Cells[3, ss_Row -1] = '' then Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'L'
																										 else Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'I';

					if AAdvGrid.Cells[10, ss_Row -1] <> '' then Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'W';
					if AAdvGrid.Cells[13, ss_Row -1] = 'N' then Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'N' else
					if AAdvGrid.Cells[13, ss_Row -1] = 'D' then Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'O';
				end;
			end else
			if lcsActiveEdit = 'meoViaArea' then
			begin
				Frm_Main.Frm_JON01N[Self.Tag].ViaSA1[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].ViaSA2[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].DocId[GS_VIA_Tag]  := D_HightlightTXT(AAdvGrid.Cells[10, ss_Row -1]);
				if sTF then
					Frm_Main.Frm_JON01N[Self.Tag].CellSel[GS_VIA_Tag] := IntToStr(ss_Row -1);

				if GS_VIA_Tag = 1 then
				begin
					Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]) + ' ' +
																																	D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]) + ' ' +
																																	D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
					pJon01ViaLock := Frm_Main.Frm_JON01N[Self.Tag].BtnViaLock1;
					row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption, '-');
				end
				else
				begin
					Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]) + ' ' +
																																						 D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]) + ' ' +
																																						 D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
					pJon01ViaLock := Frm_Main.Frm_JON01N[Self.Tag].BtnViaLock[GS_VIA_Tag];
					row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption, '-');
				end;


				Frm_Main.Frm_JON01N[Self.Tag].ViaAreaDetail[GS_VIA_Tag] := row3;

				if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text
													else Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
																								else COM_Word1 := row4 + ' ' + row3;

				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				// ��POI�� �ڵ����� ������ ����
				if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;
				// ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
				if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

				if COM_Word = '' then
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] + COM_Word1
																				 else	COM_Word := COM_Word1
				end else
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] + COM_Word;
				end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then
				begin
					if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text := COM_Word
														else Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text := COM_Word;
					Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := COM_Word;
				end;
				Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[4, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[5, ss_Row -1]);

				Frm_Main.Frm_JON01N[Self.Tag].ViaOk;
				pJon01ViaLock.Hint := 'F4)���';
				pJon01ViaLock.Tag  := 0;
				pJon01ViaLock.Down := True;
				pJon01ViaLock.ImageIndex := 1;

				if AAdvGrid.Cells[3, ss_Row -1] = '' then GS_Grid_VIA := 'L'
																									 else	GS_Grid_VIA := 'I';
				if AAdvGrid.Cells[10, ss_Row -1] <> '' then GS_Grid_VIA := 'W';
				if AAdvGrid.Cells[13, ss_Row -1] = 'N' then GS_Grid_VIA := 'N' else
				if AAdvGrid.Cells[13, ss_Row -1] = 'D' then GS_Grid_VIA := 'O';
				ViaPos('', Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag], Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag]);
			end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
      begin
				Frm_CUT011.lcsSta1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
        Frm_CUT011.lcsSta2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_CUT011.lcsSta3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);

        Frm_CUT011.cxtSA1.Text := Frm_CUT011.lcsSta1;
        Frm_CUT011.cxtSA2.Text := Frm_CUT011.lcsSta2;
        Frm_CUT011.cxtSA3.Text := Frm_CUT011.lcsSta3;
        Frm_CUT011.lblStartAreaName.Caption := Frm_CUT011.lcsSta1 + ' ' + Frm_CUT011.lcsSta2 + ' ' + Frm_CUT011.lcsSta3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, UpperCase(Frm_CUT011.lblStartAreaName.Caption), '-');

				Frm_CUT011.cxtStartAreaDetail.Text := row3;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

        if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
                                                else COM_Word1 := row4 + ' ' + row3;

        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        // ��POI�� �ڵ����� ������ ����
        if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;
        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
        if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

        if COM_Word = '' then
        begin
          // ������ �׻� POI�տ� ����
          if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_CUT011.lcsSta3 + COM_Word1
																				 else COM_Word := COM_Word1
        end else
        begin
          // ������ �׻� POI�տ� ����
          if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_CUT011.lcsSta3 + COM_Word;
        end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then 
				begin
					if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					Frm_CUT011.meoStartAreaCUT.Text := COM_Word;
				end;
				Frm_CUT011.cxtStartXval.Text := D_HightlightTXT(AdvStringGrid1.Cells[4, ss_Row -1]);
				Frm_CUT011.cxtStartYval.Text := D_HightlightTXT(AdvStringGrid1.Cells[5, ss_Row -1]);
			end else
			if lcsActiveEdit = 'meoEndAreaCUT' then
			begin
				Frm_CUT011.lcsEnd1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
				Frm_CUT011.lcsEnd2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
        Frm_CUT011.lcsEnd3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);

        Frm_CUT011.cxtEd1.Text := Frm_CUT011.lcsEnd1;
        Frm_CUT011.cxtEd2.Text := Frm_CUT011.lcsEnd2;
        Frm_CUT011.cxtEd3.Text := Frm_CUT011.lcsEnd3;
        Frm_CUT011.lblEndAreaName.Caption := Frm_CUT011.lcsEnd1 + ' ' + Frm_CUT011.lcsEnd2+ ' ' + Frm_CUT011.lcsEnd3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, UpperCase(Frm_CUT011.lblEndAreaName.Caption), '-');

				Frm_CUT011.cxtEndAreaDetail.Text := row3;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
                                                else COM_Word1 := row4 + ' ' + row3;

        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        // ��POI�� �ڵ����� ������ ����
        if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;

        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
        if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

        if COM_Word = '' then
        begin
          // ������ �׻� POI�տ� ����
          if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_CUT011.lcsEnd3 + COM_Word1
                                         else COM_Word := COM_Word1
        end else
        begin
          // ������ �׻� POI�տ� ����
          if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_CUT011.lcsEnd3 + COM_Word;
        end;
        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then
				begin
					if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					Frm_CUT011.meoEndAreaCUT.Text := COM_Word;
				end;
				Frm_CUT011.cxtEndXval.Text := D_HightlightTXT(AAdvGrid.Cells[4, ss_Row -1]);
				Frm_CUT011.cxtEndYval.Text := D_HightlightTXT(AAdvGrid.Cells[5, ss_Row -1]);
			end else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				Frm_WOR11.lcsSta1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
				Frm_WOR11.lcsSta2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_WOR11.lcsSta3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);

				Frm_WOR11.cxtSA1.Text := Frm_WOR11.lcsSta1;
				Frm_WOR11.cxtSA2.Text := Frm_WOR11.lcsSta2;
				Frm_WOR11.cxtSA3.Text := Frm_WOR11.lcsSta3;
				Frm_WOR11.lblStartAreaName.Caption := Frm_WOR11.lcsSta1 + ' ' + Frm_WOR11.lcsSta2 + ' ' + Frm_WOR11.lcsSta3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, UpperCase(Frm_WOR11.lblStartAreaName.Caption), '-');

				Frm_WOR11.cxtStartAreaDetail.Text := row3;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

        if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
                                                else COM_Word1 := row4 + ' ' + row3;

        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        // ��POI�� �ڵ����� ������ ����
        if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;
        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
        if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

        if COM_Word = '' then
        begin
          // ������ �׻� POI�տ� ����
          if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_WOR11.lcsSta3 + COM_Word1
                                         else COM_Word := COM_Word1
        end else
        begin
          // ������ �׻� POI�տ� ����
          if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_WOR11.lcsSta3 + COM_Word;
        end;
        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then 
				begin
					if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					Frm_WOR11.meoStartAreaWOR11.Text := COM_Word;
				end;
				Frm_WOR11.cxtStartXval.Text := D_HightlightTXT(AAdvGrid.Cells[4, ss_Row -1]);
				Frm_WOR11.cxtStartYval.Text := D_HightlightTXT(AAdvGrid.Cells[5, ss_Row -1]);
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				Frm_WOR11.lcsEnd1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
				Frm_WOR11.lcsEnd2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_WOR11.lcsEnd3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);

				Frm_WOR11.cxtEd1.Text := Frm_WOR11.lcsEnd1;
        Frm_WOR11.cxtEd2.Text := Frm_WOR11.lcsEnd2;
        Frm_WOR11.cxtEd3.Text := Frm_WOR11.lcsEnd3;
        Frm_WOR11.lblEndAreaName.Caption := Frm_WOR11.lcsEnd1 + ' ' + Frm_WOR11.lcsEnd2+ ' ' + Frm_WOR11.lcsEnd3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, UpperCase(Frm_WOR11.lblEndAreaName.Caption), '-');

				Frm_WOR11.cxtEndAreaDetail.Text := row3;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
                                                else COM_Word1 := row4 + ' ' + row3;

        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        // ��POI�� �ڵ����� ������ ����
        if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;

        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
        if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

        if COM_Word = '' then
        begin
          // ������ �׻� POI�տ� ����
          if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_WOR11.lcsEnd3 + COM_Word1
                                         else COM_Word := COM_Word1
        end else
        begin
          // ������ �׻� POI�տ� ����
          if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_WOR11.lcsEnd3 + COM_Word;
        end;
        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then 
				begin
					if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					Frm_WOR11.meoEndAreaWOR11.Text := COM_Word;
				end;
				Frm_WOR11.cxtEndXval.Text := D_HightlightTXT(AAdvGrid.Cells[4, ss_Row -1]);
				Frm_WOR11.cxtEndYval.Text := D_HightlightTXT(AAdvGrid.Cells[5, ss_Row -1]);
			end else
			if lcsActiveEdit = 'meoCallBell' then
			begin
				Frm_BTN01.lcsCallBell1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
				Frm_BTN01.lcsCallBell2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_BTN01.lcsCallBell3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);

				Frm_BTN01.lbUpsoAreaName.Caption := Frm_BTN01.lcsCallBell1 + ' ' + Frm_BTN01.lcsCallBell2+ ' ' + Frm_BTN01.lcsCallBell3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, UpperCase(StringReplace(Frm_BTN01.lbUpsoAreaName.Caption, ' ','', [rfReplaceAll])), '-');

				Frm_BTN01.edtUpsoAreaDetail.Caption := row3;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
                                                else COM_Word1 := row4 + ' ' + row3;

        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        // ��POI�� �ڵ����� ������ ����
        if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;

        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
        if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

        if COM_Word = '' then
        begin
          // ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_BTN01.lcsCallBell3 + COM_Word1
                                         else COM_Word := COM_Word1
        end else
        begin
          // ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_BTN01.lcsCallBell3 + COM_Word;
				end;
        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then
				begin
					if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					Frm_BTN01.meoCallBellArea.Text := COM_Word;
				end;
				Frm_BTN01.edtXval.Caption := D_HightlightTXT(AAdvGrid.Cells[4, ss_Row -1]);
				Frm_BTN01.edtYval.Caption := D_HightlightTXT(AAdvGrid.Cells[5, ss_Row -1]);
				StartPos(Frm_BTN01.meoCallBellArea.Text, Frm_BTN01.edtXval.Caption, Frm_BTN01.edtYval.Caption)
			end;
    end;
  except
    on e: exception do
    begin
      Log('Proc_SendParent Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_SendParent Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if ARow = 0 then HAlign := taCenter;
end;

procedure TFrm_JON30.AdvStringGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
//  if GB_DARKMODE then
//  begin
//    if TAdvStringGrid(Sender).Cells[13, ARow] = 'D' then ABrush.Color := $00004D4D else
//    if TAdvStringGrid(Sender).Cells[13, ARow] = 'N' then ABrush.Color := $00234600;
//  end else
  begin
    if TAdvStringGrid(Sender).Cells[13, ARow] = 'D' then
    begin
      if GB_DARKMODE then AFont.Color := clBlack;
      ABrush.Color := $0080FFFF;
    end else
    if TAdvStringGrid(Sender).Cells[13, ARow] = 'N' then
    begin
      if GB_DARKMODE then AFont.Color := clBlack;
      ABrush.Color := $00B1DCCB;
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid1GridHint(Sender: TObject; ARow,
  ACol: Integer; var hintstr: string);
begin
  if ( ACol = 2 ) And ( bHintShow ) then HintStr := AdvStringGrid1.Cells[ACol, ARow];
end;

procedure TFrm_JON30.AdvStringGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  iRcIdx: Integer;
  x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid1KeyUp');
  try
		pnl_PoiAddress.Visible := False;
    if AdvStringGrid1.Cells[0,0] = '' then Exit;

    if ( ssCtrl in Shift) and ( Key = VK_RIGHT ) then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        pSetFocusStart;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
      begin
        if Frm_CUT011.meoStartAreaCUT.CanFocus then
          Frm_CUT011.meoStartAreaCUT.SetFocus;
			end else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				if Frm_WOR11.meoStartAreaWOR11.CanFocus then
					Frm_WOR11.meoStartAreaWOR11.SetFocus;
      end;
    end else
		if ( ssCtrl in Shift) and ( Key = VK_Down ) and (not GS_SEARCH_WISE_NAVER_COMPARE) then
    begin
      AdvStringGrid1.ShowSelection := False;
      AdvStringGrid2.ShowSelection := False;
      AdvStringGrid3.ShowSelection := True;
      AdvStringGrid3.SetFocus;

      if GS_MAP_AREA_AUTOSHOW then
      begin
        iRcIdx := AdvStringGrid3.GetRealRow;
        x_Lat := AdvStringGrid3.Cells[4, iRcIdx];
        y_Lon := AdvStringGrid3.Cells[5, iRcIdx];
        if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
        if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
        else
        begin
          WGS84ToBessel(y_Lon, x_Lat);
          OnMoveMap(ws_Lon, ws_Lat);
        end;
      end;

      A1DOWN_chk := False;
    end else
    if ( ssCtrl in Shift) and ( Key = VK_UP ) then
    begin
      AdvStringGrid1.ShowSelection := False;
      AdvStringGrid2.ShowSelection := True;
      AdvStringGrid3.ShowSelection := False;
      AdvStringGrid2.SetFocus;

      if GS_MAP_AREA_AUTOSHOW then
      begin
        iRcIdx := AdvStringGrid2.GetRealRow;
        AdvStringGrid2.FocusCell(0,iRcIdx);

        x_Lat := AdvStringGrid2.Cells[1, iRcIdx];
        y_Lon := AdvStringGrid2.Cells[2, iRcIdx];
        if x_Lat = '' then exit;
        if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
        if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
        else
        begin
          WGS84ToBessel(y_Lon, x_Lat);
          OnMoveMap(ws_Lon, ws_Lat);
        end;
      end;

      A1UP_chk := False;
    end else
    if Key = VK_RETURN then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid1.GetRealRow;
      if iRcIdx > -1 then
      begin
        x_Lat := AdvStringGrid1.Cells[4, iRcIdx];
        y_Lon := AdvStringGrid1.Cells[5, iRcIdx];
        bEnter := False;
				Proc_SendParent(iRcIdx + 1, True);
        pActiveEditFocus(True);
      end;
    end else
    if Key = VK_UP then
    begin
      A1DOWN_chk := False;
      Key := 0;
      iRcIdx := AdvStringGrid1.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid1.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid1.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      if (AdvStringGrid1.GetRealRow = 1) and (A1UP_chk) then
      begin
        AdvStringGrid1.ShowSelection := False;
        AdvStringGrid2.ShowSelection := True;
        AdvStringGrid3.ShowSelection := False;
        AdvStringGrid2.FocusCell(0,0);
        AdvStringGrid2.SetFocus;
        A1UP_chk := False;
      end
      else if (AdvStringGrid1.GetRealRow = 1) then A1UP_chk := True;
    end else
    if Key = VK_DOWN then
    begin
      A1UP_chk := False;
      Key := 0;
      iRcIdx := AdvStringGrid1.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid1.GetRealRow;
          x_Lat := AdvStringGrid1.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid1.Cells[5, iRcIdx];
          if x_Lat = '' then exit;
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
			if ((AdvStringGrid1.RowCount-1) = AdvStringGrid1.GetRealRow) and (A1DOWN_chk) and (not GS_SEARCH_WISE_NAVER_COMPARE) then
      begin
        AdvStringGrid1.ShowSelection := False;
        AdvStringGrid2.ShowSelection := False;
        AdvStringGrid3.ShowSelection := True;
        AdvStringGrid3.SetFocus;
        A1DOWN_chk := False;
      end
      else if (AdvStringGrid1.RowCount-1) = (AdvStringGrid1.GetRealRow) then A1DOWN_chk := True;
    end else
    if Key in [VK_Space] then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        pSetFocusStart;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        pSetFocusEnd;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        pSetFocusVia;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
        Frm_CUT011.meoStartAreaCUT.SetFocus
      else
      if lcsActiveEdit = 'meoEndAreaCUT' then
        Frm_CUT011.meoEndAreaCUT.SetFocus
			else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
				Frm_WOR11.meoStartAreaWOR11.SetFocus
			else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
				Frm_WOR11.meoEndAreaWOR11.SetFocus
			else
			if lcsActiveEdit = 'meoCallBell' then
				Frm_BTN01.meoCallBellArea.SetFocus;
    end;
  except
    on e: exception do
    begin
      Log('AdvStringGrid1KeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid1KeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid1LClickCell(Sender: TObject; ARow,
  ACol: Integer);
var x_Lat, y_Lon : string;
begin
  SetDebugeWrite('JON30.AdvStringGrid1LClickCell');
  try
    if ARow < 0 then Exit;
    if AdvStringGrid1L.Cells[0,0] = '' then Exit;

    AdvStringGrid1.ShowSelection := False;
    AdvStringGrid2.ShowSelection := False;
    AdvStringGrid3.ShowSelection := False;
    AdvStringGrid1L.ShowSelection := True;
    AdvStringGrid1L.SetFocus;

    try
      noSearch := True;
      bClick := True;
      bEnter := True;
			Proc_SendParent_ADV4(ARow + 1, True);
      pActiveEditFocus(False);
    except
      noSearch := False;
    end;

    if GS_MAP_AREA_AUTOSHOW then
    begin
			x_Lat := AdvStringGrid1L.Cells[4, ARow];
      y_Lon := AdvStringGrid1L.Cells[5, ARow];
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except
    on e: exception do
    begin
      Log('AdvStringGrid1LClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid1LClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid1LDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid1LDblClickCell');
  try
    if ARow < 0 then Exit;
    if AdvStringGrid1L.Cells[0,0] = '' then Exit;

    AdvStringGrid1.ShowSelection := False;
    AdvStringGrid2.ShowSelection := False;
    AdvStringGrid3.ShowSelection := False;
    AdvStringGrid1L.ShowSelection := True;
    AdvStringGrid1L.SetFocus;
  //-  AdvStringGrid1L.FocusCell(ACol,ARow);

    bEnter := False;
		Proc_SendParent_ADV4(ARow + 1, True);

    if AdvStringGrid1L.Cells[4, ARow] = '' then Exit;
    pActiveEditFocus(True);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      x_Lat := AdvStringGrid1L.Cells[4, ARow];
      y_Lon := AdvStringGrid1L.Cells[5, ARow];
      if x_Lat = '' then Exit;
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except
    on e: exception do
    begin
      Log('AdvStringGrid1LDblClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid1LDblClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid1LKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var iRcIdx : integer;
x_Lat, y_Lon : string;
begin
  SetDebugeWrite('JON30.AdvStringGrid1LKeyUp');
  try
		pnl_PoiAddress.Visible := False;
    if AdvStringGrid1L.Cells[0,0] = '' then Exit;

    if Key = VK_RETURN then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid1L.GetRealRow;
      if iRcIdx > -1 then
      begin
        x_Lat := AdvStringGrid1L.Cells[4, iRcIdx];
        y_Lon := AdvStringGrid1L.Cells[5, iRcIdx];
        bEnter := True;
        Proc_SendParent_ADV4(iRcIdx + 1, True);
        pActiveEditFocus(True);
      end;
    end else
    if Key = VK_UP then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid1L.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid1L.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid1L.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      if (AdvStringGrid1L.GetRealRow = 0) and (A3UP_chk) then
      begin
        if AdvStringGrid1.Cells[0,1] <> '' then
        begin
          AdvStringGrid1.ShowSelection := True;
          AdvStringGrid2.ShowSelection := False;
          AdvStringGrid3.ShowSelection := False;
  //-        AdvStringGrid1.FocusCell(0,1);
          AdvStringGrid1.SetFocus;
        end else
        if AdvStringGrid2.Cells[0,0] <> '' then
        begin
          AdvStringGrid1.ShowSelection := False;
          AdvStringGrid2.ShowSelection := True;
          AdvStringGrid3.ShowSelection := False;
          AdvStringGrid2.FocusCell(0,0);
          AdvStringGrid2.SetFocus;
        end;
        A3UP_chk := False;
      end else
      if (AdvStringGrid1L.GetRealRow = 0) then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid1L.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid1L.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
        A3UP_chk := True;
      end;
    end else
    if Key = VK_DOWN then
    begin
      A3UP_chk := False;
      Key := 0;
      iRcIdx := AdvStringGrid1L.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid1L.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid1L.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key in [VK_Space] then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        pSetFocusStart;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        pSetFocusEnd;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        pSetFocusVia;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
        Frm_CUT011.meoStartAreaCUT.SetFocus
      else
      if lcsActiveEdit = 'meoEndAreaCUT' then
        Frm_CUT011.meoEndAreaCUT.SetFocus
			else
			if lcsActiveEdit = 'meoStartAreWOR11' then
			begin
				Frm_WOR11.meoStartAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				Frm_WOR11.meoEndAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoCallBell' then
				Frm_BTN01.meoCallBellArea.SetFocus;
    end;
  except
    on e: exception do
    begin
      Log('AdvStringGrid1LKeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid1LKeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid1LResize(Sender: TObject);
begin
  BtnLClose1.Left := AdvStringGrid1L.Left + AdvStringGrid1L.Width - (BtnLClose1.Width+2);
  BtnLClose1.Top  := AdvStringGrid1L.Top - BtnLClose1.Height;
end;

procedure TFrm_JON30.AdvStringGrid1DblClickCell(Sender: TObject; ARow,
	ACol: Integer);
var x_Lat, y_Lon: string;
begin
	SetDebugeWrite('JON30.AdvStringGrid1DblClickCell');
  try
    if ARow <= 0 then Exit;
    if Trim(AdvStringGrid1.Cells[0, ARow]) = '' then Exit;

    AdvStringGrid1.ShowSelection := True;
    AdvStringGrid2.ShowSelection := False;
    AdvStringGrid3.ShowSelection := False;
    AdvStringGrid1.SetFocus;

    bEnter := False;
    Proc_SendParent(ARow + 1, True);
    pActiveEditFocus(True);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      x_Lat := AdvStringGrid1.Cells[4, ARow];
      y_Lon := AdvStringGrid1.Cells[5, ARow];
      if x_Lat = '' then Exit;
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except
    on e: exception do
    begin
      Log('AdvStringGrid1DblClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid1DblClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid1ClickCell(Sender: TObject; ARow,
	ACol: Integer);
var x_Lat, y_Lon : string;
    iRcIdx : Integer;
begin
	SetDebugeWrite('JON30.AdvStringGrid1ClickCell');
	try
    if ARow <= 0 then Exit;
    if Trim(AdvStringGrid1.Cells[0, ARow]) = '' then Exit;

    AdvStringGrid1.ShowSelection := True;
    AdvStringGrid2.ShowSelection := False;
    AdvStringGrid3.ShowSelection := False;
    AdvStringGrid1.SetFocus;

    iRcIdx := AdvStringGrid1.GetRealRow;
    bClick := True;
    bEnter := True;
		Proc_SendParent(iRcIdx + 1, True);
    pActiveEditFocus(False);

		if AdvStringGrid1.Cells[19, iRcIdx] <> '' then
		begin
			pnl_PoiAddress.Visible := True;
			lb_PoiAddress.Text := AdvStringGrid1.Cells[19, iRcIdx];
		end else pnl_PoiAddress.Visible := False;

		if not chkUseMiniMap.checked then
		begin
			if AdvStringGrid1.Cells[19, iRcIdx] <> '' then
				Self.Height := (frm_Size) + pnl_PoiAddress.Height
			else Self.Height := frm_Size;
		end;

    if GS_MAP_AREA_AUTOSHOW then
    begin
      x_Lat := AdvStringGrid1.Cells[4, iRcIdx];
      y_Lon := AdvStringGrid1.Cells[5, iRcIdx];
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
			if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except
    on e: exception do
    begin
      Log('AdvStringGrid1ClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid1ClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid1ColumnSize(Sender: TObject; ACol: Integer; var Allow: Boolean);
begin
  giCol1 := TAdvStringGrid(Sender).ColWidths[0];
  giCol2 := TAdvStringGrid(Sender).ColWidths[1];
  giCol3 := TAdvStringGrid(Sender).ColWidths[2];

  GS_EnvFile.WriteInteger('POISize', 'COL1',  giCol1);
  GS_EnvFile.WriteInteger('POISize', 'COL2',  giCol2);
  GS_EnvFile.WriteInteger('POISize', 'COL3',  giCol3);
end;

procedure TFrm_JON30.AdvStringGrid2KeyUp(Sender: TObject; var Key: Word;
	Shift: TShiftState);
var
  iRcIdx, iCcIdx: Integer;
  x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid2KeyUp');
  try
		pnl_PoiAddress.Visible := False;
    if AdvStringGrid2.Cells[0,0] = '' then Exit;

    iRcIdx := AdvStringGrid2.GetRealRow;
    iCcIdx := AdvStringGrid2.GetRealCol;

    if ( ssCtrl in Shift) and ( Key = VK_Down ) then
    begin
      if AdvStringGrid1.Cells[0,1] <> '' then
      begin
        AdvStringGrid1.ShowSelection := True;
        AdvStringGrid2.ShowSelection := False;
        AdvStringGrid3.ShowSelection := False;
        AdvStringGrid1.SetFocus;

        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid1.GetRealRow;
          x_Lat := AdvStringGrid1.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid1.Cells[5, iRcIdx];
          if x_Lat = '' then exit;
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end else
			if (AdvStringGrid3.Cells[0,0] <> '') and (not GS_SEARCH_WISE_NAVER_COMPARE) then
      begin
        AdvStringGrid1.ShowSelection := False;
        AdvStringGrid2.ShowSelection := False;
        AdvStringGrid3.ShowSelection := True;
        AdvStringGrid3.SetFocus;

        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid3.GetRealRow;
          x_Lat := AdvStringGrid3.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid3.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      A2DOWN_chk := False;
    end else
    if Key = VK_RETURN then
    begin
      Key := 0;
      if iCcIdx In [1, 5, 9] then Exit;

      if iCcIdx = 0 then
      begin
        x_Lat := AdvStringGrid2.Cells[2, iRcIdx];
        y_Lon := AdvStringGrid2.Cells[3, iRcIdx];
      end else
      if iCcIdx = 4 then
      begin
        x_Lat := AdvStringGrid2.Cells[6, iRcIdx];
        y_Lon := AdvStringGrid2.Cells[7, iRcIdx];
      end else
      if iCcIdx = 8 then
      begin
        x_Lat := AdvStringGrid2.Cells[10, iRcIdx];
        y_Lon := AdvStringGrid2.Cells[11, iRcIdx];
      end;

      // ���� ���õ� ���ڵ� index �б�.
      // ��ġ��ȸ �׸��忡�� �׸��� ���ýÿ� ������ �Է� ��Ʈ�ѿ� Display~
      if iRcIdx > -1 then
      begin
        bEnter := True;
        Proc_SendParent_ADV2(iRcIdx + 1, iCcIdx, True);
        pActiveEditFocus(True);
			end;
    end else
    if Key = VK_Down then
    begin
      if ((AdvStringGrid2.RowCount-1) = AdvStringGrid2.GetRealRow) and (A2DOWN_chk) then
      begin
        if AdvStringGrid1.Cells[0,1] <> '' then
        begin
          AdvStringGrid1.ShowSelection := True;
          AdvStringGrid2.ShowSelection := False;
          AdvStringGrid3.ShowSelection := False;
  //-        AdvStringGrid1.FocusCell(1,1);
          AdvStringGrid1.SetFocus;
        end else
				if (AdvStringGrid3.Cells[0,0] <> '') and (not GS_SEARCH_WISE_NAVER_COMPARE) then
        begin
          AdvStringGrid1.ShowSelection := False;
          AdvStringGrid2.ShowSelection := False;
          AdvStringGrid3.ShowSelection := True;
  //-        AdvStringGrid3.FocusCell(0,0);
          AdvStringGrid3.SetFocus;
        end;
        A2DOWN_chk := False;
      end else
      begin
        if (AdvStringGrid2.RowCount-1) = (AdvStringGrid2.GetRealRow) then
          A2DOWN_chk := True;
        if iRcIdx >= 0 then
        begin
          if GS_MAP_AREA_AUTOSHOW then
          begin
            if iCcIdx In [1, 5, 9] then Exit;

            if iCcIdx = 0 then
            begin
              x_Lat := AdvStringGrid2.Cells[2, iRcIdx];
              y_Lon := AdvStringGrid2.Cells[3, iRcIdx];
            end else
            if iCcIdx = 4 then
            begin
              x_Lat := AdvStringGrid2.Cells[6, iRcIdx];
              y_Lon := AdvStringGrid2.Cells[7, iRcIdx];
            end else
            if iCcIdx = 8 then
            begin
              x_Lat := AdvStringGrid2.Cells[10, iRcIdx];
              y_Lon := AdvStringGrid2.Cells[11, iRcIdx];
            end;

            if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
            if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
            else
            begin
              WGS84ToBessel(y_Lon, x_Lat);
              OnMoveMap(ws_Lon, ws_Lat);
            end;
          end;
        end;
      end;
    end else
    if Key = VK_UP then
    begin
      A2DOWN_chk := False;
      if iRcIdx >= 0 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          if iCcIdx In [1, 5, 9] then Exit;

          if iCcIdx = 0 then
          begin
            x_Lat := AdvStringGrid2.Cells[2, iRcIdx];
            y_Lon := AdvStringGrid2.Cells[3, iRcIdx];
          end else
          if iCcIdx = 4 then
          begin
            x_Lat := AdvStringGrid2.Cells[6, iRcIdx];
            y_Lon := AdvStringGrid2.Cells[7, iRcIdx];
          end else
          if iCcIdx = 8 then
          begin
            x_Lat := AdvStringGrid2.Cells[10, iRcIdx];
            y_Lon := AdvStringGrid2.Cells[11, iRcIdx];
          end;

          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key = VK_LEFT then
    begin
      if AdvStringGrid2.GetRealCol In [0] then
      begin
        if AdvStringGrid2.GetRealRow = 0 then
          AdvStringGrid2.FocusCell(8, AdvStringGrid2.RowCount - 1)
        else
          AdvStringGrid2.FocusCell(8, AdvStringGrid2.GetRealRow - 1);
      end else
      if AdvStringGrid2.GetRealCol In [1, 2, 3] then
      begin
        AdvStringGrid2.FocusCell(0, AdvStringGrid2.GetRealRow);
      end else
      if AdvStringGrid2.GetRealCol In [5, 6, 7] then
      begin
        AdvStringGrid2.FocusCell(4, AdvStringGrid2.GetRealRow);
      end;

      iRcIdx := AdvStringGrid2.GetRealRow;
      iCcIdx := AdvStringGrid2.GetRealCol;

      if iCcIdx = 0 then
      begin
        x_Lat := AdvStringGrid2.Cells[2, iRcIdx];
        y_Lon := AdvStringGrid2.Cells[3, iRcIdx];
      end else
      if iCcIdx = 4 then
      begin
        x_Lat := AdvStringGrid2.Cells[6, iRcIdx];
        y_Lon := AdvStringGrid2.Cells[7, iRcIdx];
      end else
      if iCcIdx = 8 then
      begin
        x_Lat := AdvStringGrid2.Cells[10, iRcIdx];
        y_Lon := AdvStringGrid2.Cells[11, iRcIdx];
      end;

      if iRcIdx >= 0 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key = VK_RIGHT then
    begin
      if AdvStringGrid2.GetRealCol In [1, 2, 3] then
      begin
        AdvStringGrid2.FocusCell(4, AdvStringGrid2.GetRealRow);
      end else
      if AdvStringGrid2.GetRealCol In [5, 6, 7] then
      begin
        AdvStringGrid2.FocusCell(8, AdvStringGrid2.GetRealRow);
      end else
      if AdvStringGrid2.GetRealCol In [9, 10, 11] then
      begin
        if AdvStringGrid2.GetRealRow + 1 < AdvStringGrid2.RowCount then
        begin
          AdvStringGrid2.FocusCell(0, AdvStringGrid2.GetRealRow + 1);
        end else
        begin
          AdvStringGrid2.FocusCell(0, 0);
        end;
      end;

      iRcIdx := AdvStringGrid2.GetRealRow;
      iCcIdx := AdvStringGrid2.GetRealCol;

      if iCcIdx = 0 then
      begin
        x_Lat := AdvStringGrid2.Cells[2, iRcIdx];
        y_Lon := AdvStringGrid2.Cells[3, iRcIdx];
      end else
      if iCcIdx = 4 then
      begin
        x_Lat := AdvStringGrid2.Cells[6, iRcIdx];
        y_Lon := AdvStringGrid2.Cells[7, iRcIdx];
      end else
      if iCcIdx = 8 then
      begin
        x_Lat := AdvStringGrid2.Cells[10, iRcIdx];
        y_Lon := AdvStringGrid2.Cells[11, iRcIdx];
      end;

      if iRcIdx >= 0 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key in [VK_Space] then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        pSetFocusStart;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        pSetFocusEnd;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        pSetFocusVia;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
        Frm_CUT011.meoStartAreaCUT.SetFocus
      else
			if lcsActiveEdit = 'meoEndAreaCUT' then
				Frm_CUT011.meoEndAreaCUT.SetFocus
			else
			if lcsActiveEdit = 'meoStartAreWOR11' then
			begin
				Frm_WOR11.meoStartAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				Frm_WOR11.meoEndAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoCallBell' then
				Frm_BTN01.meoCallBellArea.SetFocus;
		end;
	except
    on e: exception do
    begin
      Log('AdvStringGrid2KeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid2KeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.tmrDongPolygonTimer(Sender: TObject);
begin
  tmrDongPolygon.Enabled := False;
  pMapDongPolygon(gMapX, gMapY);
end;

procedure TFrm_JON30.pMapDongPolygon( X, Y : Integer );
var
  pos : IXMapPos;
  mAdminman : IXAdminMan;
  mStyle : IXLayerStyle;
  mLayerman : IXLayerMan;
  mLayer : IXLayer;
  mItem : IXAdminItem;
  mPoll : IXPoint;
  mPolygon : IXLayerPolygon;
  m_Lon, m_Lat : Integer;
begin
  try
    mLayerman := mCtrlman.GetLayerMan();
    mLayer :=  mLayerman.FindLayer(1);
    if mLayer <>nil then
      mLayer.ClearObject();

    pos := mCtrlState.DPToLL(X, Y);
    m_Lon := pos.GetLon;
    m_Lat := pos.GetLat;

    //////////////�˾�����Ʈ//////////////////
    FLon := pos.GetLon;
    FLat := pos.GetLat;
    //////////////�˾�����Ʈ//////////////////

    mLayerman := mCtrlMan.GetLayerMan;
    mUtil := mMap.GetUtility;
    mCtrlMan := mMap.GetCtrlMan;
    mAdminman := mCtrlMan.GetAdminMan;
    // Make Layer Style
    mStyle := mLayerman.FindStyle(200);
    if mStyle = nil then
    begin
      mStyle := mLayerman.NewStyle(200);
      mStyle.SetPen(mUtil.RGBColor(201, 227, 240), 1, mUtil.GetConstToValue('PS_SOLID'));
      mStyle.SetBrush(mUtil.RGBAColor(201, 227, 240, 100), mUtil.GetConstToValue('BS_SOLID'));
      mStyle.SetVisibleLevel(1, 0);
      mStyle.SetVisibleLevel(2, 0);
    end;

    // Make Layer Polygon
    mLayer := mLayerman.FindLayer(1);
    if mLayer = nil then mLayer := mLayerman.NewLayer(1);

    // mAdminMan.LoadAdmin('TalMap_M.TMA');
    mItem := mAdminMan.GetAdminItemByCode(GetAdminCodeF(m_Lon,m_Lat));

    mCtrlState := mCtrlMan.GetControlState();
    mPoll :=  mCtrlState.GetLLCenter();

    mPolygon := mLayer.NewPolygon(-1);

    mPolygon.BeginUpdate();
    // 0: PolyLine, 1: Polygone
    mPolygon.SetClosed(1);
    mPolygon.SetStyle(mStyle);
    mPolygon.SetCanClick(0);
    mPolygon.SetCanFocus(0);
    mPolygon.EndUpdate();

    if mItem <> nil then
      mPolygon.SetAdminShape(mItem,0);
    mPolygon.SetStateModeNew();
  except
    on e: exception do
    begin
      Log('TalMapXCtrl1MouseMove Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'TalMapXCtrl1MouseMove Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.tmrWNSUMTimer(Sender: TObject);
begin
 	tmrWNSUM.Enabled := false;

  btnGSort.OptionsImage.ImageIndex := 21;
  lblSCnt.Caption := '�˻�: 0 ��';
  GS_SEARCH_WISE_NAVER_SORT := False;

  pWiseNaverSUM;
end;

function TFrm_JON30.getDist(adist : Integer; ax, ay, bx, by : Double ) : boolean;
Var fdis : Double;
begin
  try
    Result := False;
    // ���� �����Ÿ� ��� ����
    if ( ax = bx ) and ( by = by ) then
    begin
      Result := True;
    end else
    begin
      fdis := ArcCos(COS(DegToRad(90-ax))*COS(DegToRad(90-bx))+SIN(DegToRad(90-ax)) *SIN(DegToRad(90-bx))*COS(DegToRad(ay-by)))*6371;
      if (fdis * 1000) <= adist then Result := True;
    end;
	except
    on e: exception do
    begin
      Log('getDist Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'getDist Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.pWiseNaverSUM;
  procedure pGetDongDelCheck(sTAd, sTBd, sWrdN, sWrdW : String; Var bOk1, bPass : Boolean);
  Var sTmp1 : String;
  begin
    // '��'�� ����
    sTmp1 := sTAd + sTBd + gTFindData.sFindWord;
    if Copy(sWrdN, 1, Length(sTmp1)) <> sTmp1 then
    begin
      if Copy(sWrdW, 1, Length(sTmp1)) = sTmp1 then bOk1 := True;
    end else
    begin
      // '��'�� ������ ���ڸ�Ǯ��Ī ���̹� ��ġ�� �н� ( ��ô�������� ) -> 2017.12.05
      bPass := True;
      if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0]))) > 0 ) And
         ( sWrdN = gTFindData.sFindWord ) then
      begin
        bOK1 := False;
      end else
      begin
        // '��'�� ������ ���ڸ�Ǯ��Ī ���̹� ��ġ �� �ݸ��� ���и��� POI Ǯ��Ī�� ���� �̵� ( ���⵿�ѽž���Ʈ )
        if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
           ( sWrdW = gTFindData.sFindWord ) then bOk1 := True;
      end;
    end;
  end;

  procedure DongDivCheck(sTAd, sTBd, sWrdN, sWrdW : String; Var bOk1, bPass, bFirst : Boolean);
  Var sNName, sWName : String;
  begin
    if Pos(' ', sWrdN) > 0  then
      sNName := Copy(sWrdN, 1, Pos(' ', sWrdN) - 1)  // 3-1���ǿ����� C���� �����ϰ� ��ó��
    else
      sNName := sWrdN;

    if Pos(' ', sWrdW) > 0  then
      sWName := Copy(sWrdW, 1, Pos(' ', sWrdW) - 1)  // 3-1���ǿ����� C���� �����ϰ� ��ó��
    else
      sWName := sWrdW;

    // �� POI���� �ּ����� ��Ī�ǰ� POI�� �ּҿͰ˻��� �Ѵ� �˻��Ǹ� ���̹� ����
    // �ּҰ� 2�� ������ 2�� ��� üũ  ( �ƻ�¾�������� )
    if sTBd = '' then
    begin
      if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0]))) > 0 ) then
      begin
        if ( Pos(sTAd, sNName) > 0 ) And ( Pos(gTFindData.sFindWord, sNName) > 0 ) then     // ( �Ⳳ�����͹̳�/���굿����þ )
        begin
          bFirst := True;
        end else
        begin
          if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) then
          begin
            if ( Pos(sTAd, sWName) > 0 ) And ( Pos(gTFindData.sFindWord, sWName) > 0 ) then bOk1 := True;
          end;
        end;
      end else
      if ( Pos(gTFindData.sFuRevise, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) then
      begin
        if ( Pos(sTAd, sWName) > 0 ) And ( Pos(gTFindData.sFindWord, sWName) > 0 ) then bOk1 := True;
      end;
    end else
    begin
      if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0]))) > 0 ) And
         ( Pos(sTBd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0]))) > 0 ) then
      begin
        if ( (Pos(sTAd, sNName) > 0) Or (Pos(sTBd, sNName) > 0)  ) And ( Pos(gTFindData.sFindWord, sNName) > 0 ) then
        begin
          bFirst := True;
        end else
        begin
          if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
             ( Pos(sTBd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) then
          begin
            if ( (Pos(sTAd, sWName) > 0) Or (Pos(sTBd, sWName) > 0)  ) And ( Pos(gTFindData.sFindWord, sWName) > 0 ) then bOk1 := True;
          end;
        end;
      end else
      if ( Pos(gTFindData.sFuRevise, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) then
      begin
        if ( (Pos(sTAd, sWName) > 0) Or (Pos(sTBd, sWName) > 0) ) And ( Pos(gTFindData.sFindWord, sWName) > 0 ) then bOk1 := True;
      end;
    end;
  end;

  procedure DongDivFullCheck(sTAd, sTBd, sWrdN, sWrdW : String; Var bOk1, bPass, bFirst : Boolean);
  Var sNName, sWName, sFindNm : String;
  begin
    // 3-2)�� �и��� �� + �κ� Ǯ��Ī üũ (�����±�CC) 2����
    if Pos(' ', sWrdN) > 0  then
      sNName := Copy(sWrdN, 1, Pos(' ', sWrdN) - 1)  // 3-1���ǿ����� C���� �����ϰ� ��ó��
    else
      sNName := sWrdN;

    if Pos(' ', sWrdW) > 0  then
      sWName := Copy(sWrdW, 1, Pos(' ', sWrdW) - 1)  // 3-1���ǿ����� C���� �����ϰ� ��ó��
    else
      sWName := sWrdW;

    // �ּ�2�� üũ ( �ƻ�¾�������� )
    if sTBd = '' then
    begin
      if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0]))) > 0 ) And
         ( Pos(gTFindData.sFindWord, sNName) > 0 ) then
      begin
        // �� �и��� ���˻��� �� + POI Ǯ��Ī�� �ƴϰ�
        if ( sNName <> gTFindData.sFindWord ) then
        begin
          bFirst := True;   // ( �Ⱦ��δ��� )
          // ������� ù��°�� �� + POI Ǯ��Ī�̸� ���� ����
          if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
             ( sWName = gTFindData.sFindWord ) then bOk1 := True;
        end else
        begin
          bOk1 := False;
          bPass := True;
        end;
      end;
    end else
    begin
      if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0]))) > 0 ) And
         ( Pos(sTBd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0]))) > 0 ) And
         ( Pos(gTFindData.sFindWord, sNName) > 0 ) then
      begin
        // �� �и��� ���˻��� �� + POI Ǯ��Ī�� �ƴϰ�
        if ( sNName <> gTFindData.sFindWord ) then
        begin
          bFirst := True;
          // ������� ù��°�� �� + POI Ǯ��Ī�̸� ���� ����
          if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
             ( Pos(sTBd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
             ( sWName = gTFindData.sFindWord ) then bOk1 := True;
        end else
        begin
          bOk1 := False;
          bPass := True;
        end;
      end else
      begin
        // �ּҰ�2���ϰ�� 1���ּҸ� �и��� 1���ּҴ�POI�� �ν��ؼ� üũ �ѹ� ���� ( ���ֿ����ŵ��� )
        sFindNm := sTBd + gTFindData.sFindWord;
        if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0]))) > 0 ) And
           ( Pos(sFindNm, sNName) > 0 ) then
        begin
          // �� �и��� ���˻��� �� + POI Ǯ��Ī�� �ƴϰ�
          if ( sNName <> sFindNm ) then
          begin
            bFirst := True;
            // ������� ù��°�� �� + POI Ǯ��Ī�̸� ���� ����
            if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
               ( sWName = sFindNm ) then bOk1 := True;
          end else
          begin
            bOk1 := False;
            bPass := True;
          end;
        end;
      end;
    end;
  end;

var
	sNaver, sWise, sTmp : string;
	bOk1, bPass, bFirst, bSelWise : Boolean;

	i, j, idx, iWise, iNaver, iTmp , iNo, iNs, icW, icN, ijcW, ijcN : Integer;
	AWiseGrid, ANaverGrid : TAdvStringGrid;
	iSortIndex : integer;
	fDirKm : Real;   // �����Ÿ�
	slTmpWiseNo, slTmpWiseGB, slTmp : TStringList;
	sWLat, sWLon, sNLat, sNLon, sTmp1, sTmp2, sWrdW, sWrdN, sTNm, sTAd, sTBd, sAName : String;

  alat, alon, blat, blon : double;
begin
	SetDebugeWrite('JON30.pWiseNaverSUM Start');
  bOk1 := False;
	Try
		/////////////////////////�˻���� ����//////////////////////////////////////////
		slTmpWiseNo := TStringList.Create;
		slTmpWiseGB := TStringList.Create;

    bSelWise := False;

		if ( lcsActiveEdit = 'meoStartArea' ) Or ( lcsActiveEdit = 'meoStartAreaCUT' ) Or ( lcsActiveEdit = 'meoStartAreaWOR11' ) then
		begin
			AWiseGrid := AdvStringGrid1;
			ANaverGrid := AdvStringGrid3;
		end else
		if ( lcsActiveEdit = 'meoEndArea' ) Or ( lcsActiveEdit = 'meoEndAreaCUT' ) Or ( lcsActiveEdit = 'meoEndAreaWOR11' ) Or ( lcsActiveEdit = 'meoCallBell' ) then
		begin
			AWiseGrid := AdvStringGrid5;
			ANaverGrid := AdvStringGrid6;
		end else
		if lcsActiveEdit = 'meoViaArea' then
		begin
			AWiseGrid := AdvStringGrid8;
			ANaverGrid := AdvStringGrid9;
		end;

    if ANaverGrid.RowCount = 0 then Exit;

    slWisePoi.slAddr   .Clear;
    slWisePoi.slADetail.Clear;
    slWisePoi.slNear   .Clear;
    slWisePoi.slDis		 .Clear;
    slWisePoi.slLat		 .Clear;
    slWisePoi.slLon		 .Clear;
    slWisePoi.slSido	 .Clear;
    slWisePoi.slGugun	 .Clear;
    slWisePoi.slDong	 .Clear;
    slWisePoi.sPoiId   .Clear;
    slWisePoi.sGUIDE_X .Clear;
    slWisePoi.sGUIDE_Y .Clear;
    slWisePoi.slGubun  .Clear;
    slWisePoi.sNo      .Clear;
    slWisePoi.sEtc     .Clear;
		slWisePoi.sAddress .Clear;

    slNaverPoi.slAddr   .Clear;
    slNaverPoi.slADetail.Clear;
    slNaverPoi.slNear   .Clear;
    slNaverPoi.slDis		.Clear;
    slNaverPoi.slLat		.Clear;
    slNaverPoi.slLon		.Clear;
    slNaverPoi.slSido	  .Clear;
    slNaverPoi.slGugun	.Clear;
    slNaverPoi.slDong	  .Clear;
    slNaverPoi.sPoiId   .Clear;
    slNaverPoi.sGUIDE_X .Clear;
    slNaverPoi.sGUIDE_Y .Clear;
    slNaverPoi.slGubun  .Clear;
    slNaverPoi.sNo      .Clear;
    slNaverPoi.sEtc     .Clear;
		slNaverPoi.sAddress .Clear;

    slWNPOI.slAddr   .Clear;
    slWNPOI.slADetail.Clear;
    slWNPOI.slNear   .Clear;
    slWNPOI.slDis		 .Clear;
    slWNPOI.slLat		 .Clear;
    slWNPOI.slLon		 .Clear;
    slWNPOI.slSido	 .Clear;
    slWNPOI.slGugun	 .Clear;
    slWNPOI.slDong	 .Clear;
    slWNPOI.sPoiId   .Clear;
    slWNPOI.sGUIDE_X .Clear;
    slWNPOI.sGUIDE_Y .Clear;
    slWNPOI.slGubun  .Clear;
    slWNPOI.sNo      .Clear;
    slWNPOI.sEtc     .Clear;
		slWNPOI.sAddress .Clear;

		try
      try
        for idx := 1 to  AWiseGrid.RowCount do
        begin
          if AWiseGrid.Cells[0, idx] = '' then Continue;
          if AWiseGrid.Cells[13, idx] = 'N' then Continue;
          if AWiseGrid.Cells[13, idx] = 'D' then Continue;

          slWisePoi.slAddr   .add(AWiseGrid.Cells[0, idx]);
          slWisePoi.slADetail.add(AWiseGrid.Cells[1, idx]);
          slWisePoi.slNear   .add(AWiseGrid.Cells[2, idx]);
          slWisePoi.slDis		 .add(AWiseGrid.Cells[3, idx]);
          slWisePoi.slLat		 .add(AWiseGrid.Cells[4, idx]);
          slWisePoi.slLon		 .add(AWiseGrid.Cells[5, idx]);
          slWisePoi.slSido	 .add(AWiseGrid.Cells[6, idx]);
          slWisePoi.slGugun	 .add(AWiseGrid.Cells[7, idx]);
          slWisePoi.slDong	 .add(AWiseGrid.Cells[8, idx]);
          slWisePoi.sPoiId   .add(AWiseGrid.Cells[10, idx]);
          slWisePoi.sGUIDE_X .add(AWiseGrid.Cells[11, idx]);
          slWisePoi.sGUIDE_Y .add(AWiseGrid.Cells[12, idx]);
          slWisePoi.slGubun  .add('W');
          slWisePoi.sNo      .add(IntToStr(100+iDx));
          slWisePoi.sEtc     .add('');
					slWisePoi.sAddress .add(AWiseGrid.Cells[19, idx]);
        end;
        for idx := 0 to  ANaverGrid.RowCount - 1 do
        begin
          if ANaverGrid.Cells[0, idx] = '' then Continue;
          slNaverPoi.slAddr   .add(ANaverGrid.Cells[0, idx]);
          slNaverPoi.slADetail.add(ANaverGrid.Cells[1, idx]);
          slNaverPoi.slNear   .add(ANaverGrid.Cells[2, idx]);
          slNaverPoi.slDis		.add(ANaverGrid.Cells[3, idx]);
          slNaverPoi.slLat		.add(ANaverGrid.Cells[4, idx]);
          slNaverPoi.slLon		.add(ANaverGrid.Cells[5, idx]);
          slNaverPoi.slSido	  .add(ANaverGrid.Cells[6, idx]);
          slNaverPoi.slGugun	.add(ANaverGrid.Cells[7, idx]);
          slNaverPoi.slDong	  .add(ANaverGrid.Cells[8, idx]);
					slNaverPoi.sPoiId   .add(ANaverGrid.Cells[10, idx]);
					slNaverPoi.sGUIDE_X .add('');
					slNaverPoi.sGUIDE_Y .add('');
					if GS_PORTAL_SEL = 'D' then
            slNaverPoi.slGubun  .add('D') else
          if GS_PORTAL_SEL = 'N' then
						slNaverPoi.slGubun  .add('N') else
          if GS_PORTAL_SEL = 'A' then
						slNaverPoi.slGubun  .add(ANaverGrid.Cells[10, idx]); // ���̹��������а� 10

          slNaverPoi.sNo      .add(IntToStr(200+iDx));
					slNaverPoi.sEtc     .add('');
					slNaverPoi.sAddress .add(ANaverGrid.Cells[12, idx]);
        end;
      except
        on e: exception do
        begin
					Assert(False, 'pWiseNaverSUM Error 0 :' + E.Message);
        end;
      end;

      // �ߺ� ���ź��� ���ְ� ����ó�� �ؾߵ�
      try
        // ������� �� ����
        if slWisePoi.slAddr.Count >= 1 then
        begin
          iNo := 0;
          for i := 0 to slWisePoi.slAddr.Count - 1 do
          begin
            // ���� 7���� �� ó��
            if iNo > 7 then Continue;

            if slWisePoi.sNo[i] = '' then Continue;

            alat := StrToFloatDef(getDEGREE(slWisePoi.slLat[i]), 0);//'037335565';
            alon := StrToFloatDef(getDEGREE(slWisePoi.slLon[i]), 0);//'126583729';

            for idx := i to slWisePoi.slAddr.Count - 1 do
            begin
              if i = idx then Continue;
              if slWisePoi.sNo[idx] = '' then Continue;
              if idx > 20 then Break;   // ���� 20�������� ��

              blat := StrToFloatDef(getDEGREE(slWisePoi.slLat[idx]), 0);//'037335565';
              blon := StrToFloatDef(getDEGREE(slWisePoi.slLon[idx]), 0);//'126583729';

              // ���� ��Ī ���� ó��
              if ( getDist(150, aLat, aLon, bLat, bLon) ) then
              begin
                // ��ǥ 150m�̳��� ��Ī�� ������ ���� ó�� (����������)
                if StringReplace(Trim(D_HightlightTXT(slWisePoi.slADetail[i]))  ,' ','',[rfReplaceAll]) =
                   StringReplace(Trim(D_HightlightTXT(slWisePoi.slADetail[idx])),' ','',[rfReplaceAll]) then
                begin
                  slWisePoi.sNo[Idx] := '';  // No�� ������ �־��༭ ���� ǥ��
                  Continue;
                end;
              end;
            end;

            for idx := 0 to slNaverPoi.slAddr.Count - 1 do
            begin
              if slNaverPoi.sNo[idx] = '' then Continue;

              blat := StrToFloatDef(getDEGREE(slNaverPoi.slLat[idx]), 0);//'037335565';
              blon := StrToFloatDef(getDEGREE(slNaverPoi.slLon[idx]), 0);//'126583729';

              // ���� ��Ī ���� ó��
              if ( getDist(150, aLat, aLon, bLat, bLon) ) then
              begin
                // ��ǥ 150m�̳��� ��Ī�� ������ ���� ó�� (����������)
                if StringReplace(Trim(D_HightlightTXT(slWisePoi.slADetail[i]))  ,' ','',[rfReplaceAll]) =
                   StringReplace(Trim(D_HightlightTXT(slNaverPoi.slADetail[idx])),' ','',[rfReplaceAll]) then
                begin
                  if ( i <> 0 ) And ( idx = 0 ) then Continue;  // �ݸ���ù��°�� �ƴϸ鼭 ���̹� ù��° �ڷ�� �����ϰ� �ߺ����� ( �������� ) 2017.12.21

									if ( i = 0 ) And ( idx = 0 ) then
									begin
										bSelWise := True;
										//���̴���=���̹� �ڷᰰ�� ������� �켱�� ��� ���̹� �ּ� ������ӿ� �־��� 20200121KHS
										slWisePoi.sAddress[i] := slNaverPoi.sAddress[idx];
									end;

                  slNaverPoi.sNo[Idx] := '';  // No�� ������ �־��༭ ���� ǥ��
                  if slNaverPoi.slGubun[idx] = 'N' then slWisePoi.sEtc[i] := 'N' else
                  if slNaverPoi.slGubun[idx] = 'D' then slWisePoi.sEtc[i] := 'D';
                  Continue;
                end;
              end;
            end;
            Inc(iNo);
          end;
        end;

        // ���̹� �� ����
        if slNaverPoi.slAddr.Count >= 1 then
        begin
          iNo := 0;
          for i := 0 to slNaverPoi.slAddr.Count - 1 do
          begin
            // ���� 7���� �� ó��
            if iNo > 7 then Continue;

            if slNaverPoi.sNo[i] = '' then Continue;

            alat := StrToFloatDef(getDEGREE(slNaverPoi.slLat[i]), 0);//'037335565';
            alon := StrToFloatDef(getDEGREE(slNaverPoi.slLon[i]), 0);//'126583729';

            for idx := i to slNaverPoi.slAddr.Count - 1 do
            begin
              if i = idx then Continue;
              if slNaverPoi.sNo[idx] = '' then Continue;
              if idx > 20 then Break;   // ���� 20�������� ��

              blat := StrToFloatDef(getDEGREE(slNaverPoi.slLat[idx]), 0);//'037335565';
              blon := StrToFloatDef(getDEGREE(slNaverPoi.slLon[idx]), 0);//'126583729';

              // ���� ��Ī ���� ó��
              if ( getDist(150, aLat, aLon, bLat, bLon) ) then
              begin
                // ��ǥ 150m�̳��� ��Ī�� ������ ���� ó�� (����������)
                if StringReplace(Trim(D_HightlightTXT(slNaverPoi.slADetail[i]))  ,' ','',[rfReplaceAll]) =
                   StringReplace(Trim(D_HightlightTXT(slNaverPoi.slADetail[idx])),' ','',[rfReplaceAll]) then
                begin
                  slNaverPoi.sNo[Idx] := '';  // No�� ������ �־��༭ ���� ǥ��
                  Continue;
                end;
              end;
            end;

            for idx := 0 to slWisePoi.slAddr.Count - 1 do
            begin
              if slWisePoi.sNo[idx] = '' then Continue;

              blat := StrToFloatDef(getDEGREE(slWisePoi.slLat[idx]), 0);//'037335565';
              blon := StrToFloatDef(getDEGREE(slWisePoi.slLon[idx]), 0);//'126583729';

              // ���� ��Ī ���� ó��
              if ( getDist(150, aLat, aLon, bLat, bLon) ) then
              begin
                // ��ǥ 150m�̳��� ��Ī�� ������ ���� ó�� (����������)
                if StringReplace(Trim(D_HightlightTXT(slNaverPoi.slADetail[i]))  ,' ','',[rfReplaceAll]) =
                   StringReplace(Trim(D_HightlightTXT(slWisePoi.slADetail[idx])),' ','',[rfReplaceAll]) then
                begin
                  slWisePoi.sNo[Idx] := '';  // No�� ������ �־��༭ ���� ǥ��
                  Continue;
                end;
              end;
            end;
            Inc(iNo);
          end;
        end;

        // ������� �ߺ� �ڷ� ����
        idx := slWisePoi.slAddr.Count;
        while 0 < idx do
        begin
          if slWisePoi.sNo[idx-1] = '' then
          begin
            slWisePoi.slAddr   .Delete(idx-1);
            slWisePoi.slADetail.Delete(idx-1);
            slWisePoi.slNear   .Delete(idx-1);
            slWisePoi.slDis    .Delete(idx-1);
            slWisePoi.slLat    .Delete(idx-1);
            slWisePoi.slLon    .Delete(idx-1);
            slWisePoi.slSido   .Delete(idx-1);
            slWisePoi.slGugun  .Delete(idx-1);
            slWisePoi.slDong   .Delete(idx-1);
            slWisePoi.sPoiId   .Delete(idx-1);
            slWisePoi.sGUIDE_X .Delete(idx-1);
            slWisePoi.sGUIDE_Y .Delete(idx-1);
            slWisePoi.slGubun  .Delete(idx-1);
            slWisePoi.sNo      .Delete(idx-1);
            slWisePoi.sEtc     .Delete(idx-1);
						slWisePoi.sAddress .Delete(idx-1);
          end;
          Dec(idx);
        end;

        // ���̹� �ߺ� �ڷ� ����
        idx := slNaverPoi.slAddr.Count;
        while 0 < idx do
        begin
          if slNaverPoi.sNo[idx-1] = '' then
          begin
            slNaverPoi.slAddr   .Delete(idx-1);
            slNaverPoi.slADetail.Delete(idx-1);
            slNaverPoi.slNear   .Delete(idx-1);
            slNaverPoi.slDis    .Delete(idx-1);
            slNaverPoi.slLat    .Delete(idx-1);
            slNaverPoi.slLon    .Delete(idx-1);
            slNaverPoi.slSido   .Delete(idx-1);
            slNaverPoi.slGugun  .Delete(idx-1);
            slNaverPoi.slDong   .Delete(idx-1);
            slNaverPoi.sPoiId   .Delete(idx-1);
            slNaverPoi.sGUIDE_X .Delete(idx-1);
            slNaverPoi.sGUIDE_Y .Delete(idx-1);
            slNaverPoi.slGubun  .Delete(idx-1);
            slNaverPoi.sNo      .Delete(idx-1);
            slNaverPoi.sEtc     .Delete(idx-1);
						slNaverPoi.sAddress .Delete(idx-1);
          end;
          Dec(idx);
        end;
      except
        on e: exception do
        begin
					Assert(False, 'pWiseNaverSUM Error 2 :' + E.Message);
        end;
      end;

      try
        if bSelWise then iSortIndex := 1   // ������� ù��°�� ���̹� ù��°�� �Ȱ��Ƽ� ���̹��� ����������� ������ ������� �ڷᰡ �켱 ( �������Ĵ� )
                    else iSortIndex := 2;  //1 : �������, 2 : ���̹�

        if  (slWisePoi.slADetail.Count > 0) and (slNaverPoi.slADetail.Count > 0) then
        begin
          /// ���� �켱 ���� ����-���̹��켱 ��� ��///
          ///  1) ������� 1�� ����� ���̹� 1�� ����� ���� �Ҷ�(�ִ� 10���� �̳�) ������� ��� ����  fSortIndex := 1(������ӿ켱) : �����ο�, ��⵵�Ƿ��
          ///    bOk1 - ���̹� 1��° ����� 2��°�������� ǥ��
          alat := StrToFloatDef(getDEGREE(slWisePoi.slLat[0]), 0);//'037335565';
          alon := StrToFloatDef(getDEGREE(slWisePoi.slLon[0]), 0);//'126583729';

          blat := StrToFloatDef(getDEGREE(slNaverPoi.slLat[0]), 0);//'037335565';
          blon := StrToFloatDef(getDEGREE(slNaverPoi.slLon[0]), 0);//'126583729';

          if ((slWisePoi.slLat[0] = slNaverPoi.slLat[0]) and
              (slWisePoi.slLon[0] = slNaverPoi.slLon[0]) and
              (System.SysUtils.Trim(D_HightlightTXT(slWisePoi.slADetail[0]))=System.SysUtils.Trim(D_HightlightTXT(slNaverPoi.slADetail[0])))) Or
             ((getDist(20, aLat, aLon, bLat, bLon)) And
              (System.SysUtils.Trim(D_HightlightTXT(slWisePoi.slADetail[0]))=System.SysUtils.Trim(D_HightlightTXT(slNaverPoi.slADetail[0])))) then
          begin
            iSortIndex := 1;
            bOk1 := True;
          end;
        end;
      except
        on e: exception do
        begin
					Assert(False, 'pWiseNaverSUM Error 21 :' + E.Message);
        end;
      end;

      try
        iWise  := 0;
        iNaver := 0;
        idx    := 0;
        if iSortIndex = 1 then //������� �켱����
        begin
          while (iWise <= slWisePoi.slAddr.count - 1) do
          begin
            if iWise > 3 then Break;

            slWNPOI.slAddr   .Add(slWisePoi.slAddr   [idx]);
            slWNPOI.slADetail.Add(slWisePoi.slADetail[idx]);
            slWNPOI.slNear   .Add(slWisePoi.slNear   [idx]);
            slWNPOI.slDis    .Add(slWisePoi.slDis    [idx]);
            slWNPOI.slLat    .Add(slWisePoi.slLat    [idx]);
            slWNPOI.slLon    .Add(slWisePoi.slLon    [idx]);
            slWNPOI.slSido   .Add(slWisePoi.slSido   [idx]);
            slWNPOI.slGugun  .Add(slWisePoi.slGugun  [idx]);
            slWNPOI.slDong   .Add(slWisePoi.slDong   [idx]);
            slWNPOI.sPoiId   .Add(slWisePoi.sPoiId   [idx]);
            slWNPOI.sGUIDE_X .Add(slWisePoi.sGUIDE_X [idx]);
            slWNPOI.sGUIDE_Y .Add(slWisePoi.sGUIDE_Y [idx]);
            slWNPOI.slGubun  .Add(slWisePoi.slGubun  [idx]);
            slWNPOI.sNo      .Add(slWisePoi.sNo      [idx]);
            slWNPOI.sEtc     .Add(slWisePoi.sEtc     [idx]);
						slWNPOI.sAddress .Add(slWisePoi.sAddress [idx]);
            inc(idx);
            inc(iWise);
          end;

          while (iNaver <= slNaverPoi.slAddr.count - 1) do
          begin
            if iNaver > 9 then Break;

            if ( bOk1 ) And ( iNaver = 0 ) then
            begin
              slWNPOI.slAddr   .Insert(1, slNaverPoi.slAddr   [iNaver]);
              slWNPOI.slADetail.Insert(1, slNaverPoi.slADetail[iNaver]);
              slWNPOI.slNear   .Insert(1, slNaverPoi.slNear   [iNaver]);
              slWNPOI.slDis    .Insert(1, slNaverPoi.slDis    [iNaver]);
              slWNPOI.slLat    .Insert(1, slNaverPoi.slLat    [iNaver]);
              slWNPOI.slLon    .Insert(1, slNaverPoi.slLon    [iNaver]);
              slWNPOI.slSido   .Insert(1, slNaverPoi.slSido   [iNaver]);
              slWNPOI.slGugun  .Insert(1, slNaverPoi.slGugun  [iNaver]);
              slWNPOI.slDong   .Insert(1, slNaverPoi.slDong   [iNaver]);
              slWNPOI.sPoiId   .Insert(1, slNaverPoi.sPoiId   [iNaver]);
              slWNPOI.sGUIDE_X .Insert(1, slNaverPoi.sGUIDE_X [iNaver]);
              slWNPOI.sGUIDE_Y .Insert(1, slNaverPoi.sGUIDE_Y [iNaver]);
              slWNPOI.slGubun  .Insert(1, slNaverPoi.slGubun  [iNaver]);
              slWNPOI.sNo      .Insert(1, slNaverPoi.sNo      [iNaver]);
              slWNPOI.sEtc     .Insert(1, slNaverPoi.sEtc     [iNaver]);
							slWNPOI.sAddress .Insert(1, slNaverPoi.sAddress [iNaver]);
            end else
            begin
              slWNPOI.slAddr   .Add(slNaverPoi.slAddr   [iNaver]);
              slWNPOI.slADetail.Add(slNaverPoi.slADetail[iNaver]);
              slWNPOI.slNear   .Add(slNaverPoi.slNear   [iNaver]);
              slWNPOI.slDis    .Add(slNaverPoi.slDis    [iNaver]);
              slWNPOI.slLat    .Add(slNaverPoi.slLat    [iNaver]);
              slWNPOI.slLon    .Add(slNaverPoi.slLon    [iNaver]);
              slWNPOI.slSido   .Add(slNaverPoi.slSido   [iNaver]);
              slWNPOI.slGugun  .Add(slNaverPoi.slGugun  [iNaver]);
              slWNPOI.slDong   .Add(slNaverPoi.slDong   [iNaver]);
              slWNPOI.sPoiId   .Add(slNaverPoi.sPoiId   [iNaver]);
              slWNPOI.sGUIDE_X .Add(slNaverPoi.sGUIDE_X [iNaver]);
              slWNPOI.sGUIDE_Y .Add(slNaverPoi.sGUIDE_Y [iNaver]);
              slWNPOI.slGubun  .Add(slNaverPoi.slGubun  [iNaver]);
              slWNPOI.sNo      .Add(slNaverPoi.sNo      [iNaver]);
              slWNPOI.sEtc     .Add(slNaverPoi.sEtc     [iNaver]);
							slWNPOI.sAddress .Add(slNaverPoi.sAddress [iNaver]);
            end;
            inc(idx);
            inc(iNaver);
          end;

          while (iWise <= slWisePoi.slAddr.count - 1) do
          begin
            slWNPOI.slAddr   .Add(slWisePoi.slAddr   [iWise]);
            slWNPOI.slADetail.Add(slWisePoi.slADetail[iWise]);
            slWNPOI.slNear   .Add(slWisePoi.slNear   [iWise]);
            slWNPOI.slDis    .Add(slWisePoi.slDis    [iWise]);
            slWNPOI.slLat    .Add(slWisePoi.slLat    [iWise]);
            slWNPOI.slLon    .Add(slWisePoi.slLon    [iWise]);
            slWNPOI.slSido   .Add(slWisePoi.slSido   [iWise]);
            slWNPOI.slGugun  .Add(slWisePoi.slGugun  [iWise]);
            slWNPOI.slDong   .Add(slWisePoi.slDong   [iWise]);
            slWNPOI.sPoiId   .Add(slWisePoi.sPoiId   [iWise]);
            slWNPOI.sGUIDE_X .Add(slWisePoi.sGUIDE_X [iWise]);
            slWNPOI.sGUIDE_Y .Add(slWisePoi.sGUIDE_Y [iWise]);
            slWNPOI.slGubun  .Add(slWisePoi.slGubun  [iWise]);
            slWNPOI.sNo      .Add(slWisePoi.sNo      [iWise]);
            slWNPOI.sEtc     .Add(slWisePoi.sEtc     [iWise]);
						slWNPOI.sAddress .Add(slWisePoi.sAddress [iWise]);
            inc(iWise);
          end;
        end else if iSortIndex = 2 then  //���̹��켱
        begin
          while (iNaver <= slNaverPoi.slAddr.count - 1) do
          begin
            if iNaver > 0 then Break;

            slWNPOI.slAddr   .Add(slNaverPoi.slAddr   [iNaver]);
            slWNPOI.slADetail.Add(slNaverPoi.slADetail[iNaver]);
            slWNPOI.slNear   .Add(slNaverPoi.slNear   [iNaver]);
            slWNPOI.slDis    .Add(slNaverPoi.slDis    [iNaver]);
            slWNPOI.slLat    .Add(slNaverPoi.slLat    [iNaver]);
            slWNPOI.slLon    .Add(slNaverPoi.slLon    [iNaver]);
            slWNPOI.slSido   .Add(slNaverPoi.slSido   [iNaver]);
            slWNPOI.slGugun  .Add(slNaverPoi.slGugun  [iNaver]);
            slWNPOI.slDong   .Add(slNaverPoi.slDong   [iNaver]);
            slWNPOI.sPoiId   .Add(slNaverPoi.sPoiId   [iNaver]);
            slWNPOI.sGUIDE_X .Add(slNaverPoi.sGUIDE_X [iNaver]);
            slWNPOI.sGUIDE_Y .Add(slNaverPoi.sGUIDE_Y [iNaver]);
            slWNPOI.slGubun  .Add(slNaverPoi.slGubun  [iNaver]);
            slWNPOI.sNo      .Add(slNaverPoi.sNo      [iNaver]);
            slWNPOI.sEtc     .Add(slNaverPoi.sEtc     [iNaver]);
						slWNPOI.sAddress .Add(slNaverPoi.sAddress [iNaver]);

            inc(idx);
            inc(iNaver);
          end;

          while (iWise <= slWisePoi.slAddr.count - 1) do
          begin
            if iWise > 3 then Break;

            slWNPOI.slAddr   .Add(slWisePoi.slAddr   [iWise]);
            slWNPOI.slADetail.Add(slWisePoi.slADetail[iWise]);
            slWNPOI.slNear   .Add(slWisePoi.slNear   [iWise]);
            slWNPOI.slDis    .Add(slWisePoi.slDis    [iWise]);
            slWNPOI.slLat    .Add(slWisePoi.slLat    [iWise]);
            slWNPOI.slLon    .Add(slWisePoi.slLon    [iWise]);
            slWNPOI.slSido   .Add(slWisePoi.slSido   [iWise]);
            slWNPOI.slGugun  .Add(slWisePoi.slGugun  [iWise]);
            slWNPOI.slDong   .Add(slWisePoi.slDong   [iWise]);
            slWNPOI.sPoiId   .Add(slWisePoi.sPoiId   [iWise]);
            slWNPOI.sGUIDE_X .Add(slWisePoi.sGUIDE_X [iWise]);
            slWNPOI.sGUIDE_Y .Add(slWisePoi.sGUIDE_Y [iWise]);
            slWNPOI.slGubun  .Add(slWisePoi.slGubun  [iWise]);
            slWNPOI.sNo      .Add(slWisePoi.sNo      [iWise]);
            slWNPOI.sEtc     .Add(slWisePoi.sEtc     [iWise]);
						slWNPOI.sAddress .Add(slWisePoi.sAddress [iWise]);

            inc(idx);
            inc(iWise);
          end;

          while (iNaver <= slNaverPoi.slAddr.count - 1) do
          begin
            if iNaver > 9 then Break;

            slWNPOI.slAddr   .Add(slNaverPoi.slAddr   [iNaver]);
            slWNPOI.slADetail.Add(slNaverPoi.slADetail[iNaver]);
            slWNPOI.slNear   .Add(slNaverPoi.slNear   [iNaver]);
            slWNPOI.slDis    .Add(slNaverPoi.slDis    [iNaver]);
            slWNPOI.slLat    .Add(slNaverPoi.slLat    [iNaver]);
            slWNPOI.slLon    .Add(slNaverPoi.slLon    [iNaver]);
            slWNPOI.slSido   .Add(slNaverPoi.slSido   [iNaver]);
            slWNPOI.slGugun  .Add(slNaverPoi.slGugun  [iNaver]);
            slWNPOI.slDong   .Add(slNaverPoi.slDong   [iNaver]);
            slWNPOI.sPoiId   .Add(slNaverPoi.sPoiId   [iNaver]);
            slWNPOI.sGUIDE_X .Add(slNaverPoi.sGUIDE_X [iNaver]);
            slWNPOI.sGUIDE_Y .Add(slNaverPoi.sGUIDE_Y [iNaver]);
            slWNPOI.slGubun  .Add(slNaverPoi.slGubun  [iNaver]);
            slWNPOI.sNo      .Add(slNaverPoi.sNo      [iNaver]);
            slWNPOI.sEtc     .Add(slNaverPoi.sEtc     [iNaver]);
						slWNPOI.sAddress .Add(slNaverPoi.sAddress [iNaver]);

            inc(idx);
            inc(iNaver);
          end;

          while (iWise <= slWisePoi.slAddr.count - 1) do
          begin
            slWNPOI.slAddr   .Add(slWisePoi.slAddr   [iWise]);
            slWNPOI.slADetail.Add(slWisePoi.slADetail[iWise]);
            slWNPOI.slNear   .Add(slWisePoi.slNear   [iWise]);
            slWNPOI.slDis    .Add(slWisePoi.slDis    [iWise]);
            slWNPOI.slLat    .Add(slWisePoi.slLat    [iWise]);
            slWNPOI.slLon    .Add(slWisePoi.slLon    [iWise]);
            slWNPOI.slSido   .Add(slWisePoi.slSido   [iWise]);
            slWNPOI.slGugun  .Add(slWisePoi.slGugun  [iWise]);
            slWNPOI.slDong   .Add(slWisePoi.slDong   [iWise]);
            slWNPOI.sPoiId   .Add(slWisePoi.sPoiId   [iWise]);
            slWNPOI.sGUIDE_X .Add(slWisePoi.sGUIDE_X [iWise]);
            slWNPOI.sGUIDE_Y .Add(slWisePoi.sGUIDE_Y [iWise]);
            slWNPOI.slGubun  .Add(slWisePoi.slGubun  [iWise]);
            slWNPOI.sNo      .Add(slWisePoi.sNo      [iWise]);
            slWNPOI.sEtc     .Add(slWisePoi.sEtc     [iWise]);
						slWNPOI.sAddress .Add(slWisePoi.sAddress [iWise]);

            inc(iWise);
          end;
        end;
      except
        on e: exception do
        begin
					Assert(False, 'pWiseNaverSUM Error 1 :' + gTFindData.sFullWord + '-' + E.Message);
        end;
      end;

      try
        if slWNPOI.slAddr.Count > 1 then
        begin
          icW := 0;
          icN := 0;
          iNo := 0;
          for i := 0 to slWNPOI.slAddr.Count - 1 do
          begin
            // ���� 7���� �� ó��
            if ( slWNPOI.slGubun[i] = 'W') then
            begin
              Inc(icW);
              if icW > 5 then Continue;
            end else
            if ( slWNPOI.slGubun[i] = 'N') Or ( slWNPOI.slGubun[i] = 'D') then
            begin
              Inc(icN);
              if icN > 2 then Continue;
            end;

            if ( icW + icN ) > 7 then Break;
            if slWNPOI.sNo[i] = '' then Continue;

            alat := StrToFloatDef(getDEGREE(slWNPOI.slLat[i]), 0);//'037335565';
            alon := StrToFloatDef(getDEGREE(slWNPOI.slLon[i]), 0);//'126583729';

            iNs := 0;
            for idx := i to slWNPOI.slAddr.Count - 1 do
            begin
              if i = idx then Continue;
              if slWNPOI.sNo[idx] = '' then Continue;
              if idx > 20 then Break;   // ���� 20�������� ��

              blat := StrToFloatDef(getDEGREE(slWNPOI.slLat[idx]), 0);//'037335565';
              blon := StrToFloatDef(getDEGREE(slWNPOI.slLon[idx]), 0);//'126583729';

              // ���� ��ǥ ���� ó��
              if slWNPOI.sNo[idx] = '' then Continue;
              if ( getDist(20, aLat, aLon, bLat, bLon) ) then
              begin
                // ��ǥ 15m�̳��� ������ ����ǥ��(11,12...)
                iTmp := slTmpWiseNo.IndexOf(slWNPOI.sNo[Idx]);
                if iTmp > -1 then
                begin
                  slTmpWiseNo.Add(slWNPOI.sNo[idx]);
                  slTmpWiseGB.Add(slTmpWiseGB[iTmp]);
                end	else
                begin
                  iTmp := slTmpWiseNo.IndexOf(slWNPOI.sNo[i]);
                  if 0 > iTmp then
                  begin
                    inc(iNo);
                    inc(iNs);

                    slTmpWiseNo.Add(slWNPOI.sNo[i]);
                    slTmpWiseGB.Add(IntToStr(iNo) + IntToStr(iNs));
                  end;
                  inc(iNs);
                  slTmpWiseNo.Add(slWNPOI.sNo[idx]);
                  slTmpWiseGB.Add(IntToStr(iNo) + IntToStr(iNs));
                end;
              end;
            end;
          end;
        end;
      except
        on e: exception do
        begin
					Assert(False, 'pWiseNaverSUM Error 2 :' + gTFindData.sFullWord + '-' + E.Message);
        end;
      end;

      try
        // ���̹� ��ǥ 2��° POI�� ���� �Ǿ��� ��� �״��� ���̹� ��ǥ�� 2��° POI�� �÷���.
        if bOk1 then
        begin
          if ( slWNPOI.sNo[1] = '' ) then
          begin
            for i := 0 to slWNPOI.slAddr.Count - 1 do
            begin
              if slWNPOI.sNo[i] = '' then Continue;

              if ( slWNPOI.slGubun[i] = 'N') Or
                 ( slWNPOI.slGubun[i] = 'D') then
              begin
                // �� �˻���� ��3���ڰ� ������ ���
                if LeftStr(gTFindData.sFullWord, 3) = LeftStr(Trim(D_HightlightTXT(slWNPOI.slADetail[i])), 3) then
                begin
                  slWNPOI.slAddr   .Move(i, 1);
                  slWNPOI.slADetail.Move(i, 1);
                  slWNPOI.slNear   .Move(i, 1);
                  slWNPOI.slDis    .Move(i, 1);
                  slWNPOI.slLat    .Move(i, 1);
                  slWNPOI.slLon    .Move(i, 1);
                  slWNPOI.slSido   .Move(i, 1);
                  slWNPOI.slGugun  .Move(i, 1);
                  slWNPOI.slDong   .Move(i, 1);
                  slWNPOI.sPoiId   .Move(i, 1);
                  slWNPOI.sGUIDE_X .Move(i, 1);
                  slWNPOI.sGUIDE_Y .Move(i, 1);
                  slWNPOI.slGubun  .Move(i, 1);
                  slWNPOI.sNo      .Move(i, 1);
                  slWNPOI.sEtc     .Move(i, 1);
									slWNPOI.sAddress .Move(i, 1);

                  Break;
                end;
              end;
            end;
          end;
        end;
      except
        on e: exception do
        begin
					Assert(False, 'pWiseNaverSUM Error 3 :' + gTFindData.sFullWord + '-' + E.Message);
        end;
      end;

      try
        // ������� POI�� ���� �Ǿ��� ��� �״��� ������� ��ǥ�� ����4������ �÷���.
        if slWNPOI.slAddr.Count > 1 then
        begin
          icW := 1;   idx := 0;
          if bOK1 then idx := 2 else
          begin
            // 1��°POI�� �����̳� ���̹� �̸� ������� Count �ʱ�ȭ
            if ( slWNPOI.sNo[0] <> '' ) And
               ( ( slWNPOI.slGubun[0] = 'D' ) Or ( slWNPOI.slGubun[0] = 'N' ) ) then icW := 0;
            idx := 1;
          end;

          for i := idx to slWNPOI.slAddr.Count - 1 do
          begin
            if slWNPOI.sNo[i] = '' then Continue;
            if icW > 3 then Break;
            if ( slWNPOI.slGubun[i] <> 'N') And ( slWNPOI.slGubun[i] <> 'D') then
            begin
              Inc(idx);
              Inc(icW);
            end else
            begin
              for j := i to slWNPOI.slAddr.Count - 1 do
              begin
                if slWNPOI.sNo[j] = '' then Continue;
                if icW > 3 then Break;
                if ( slWNPOI.slGubun[j] <> 'N') And ( slWNPOI.slGubun[j] <> 'D') then
                begin
                  if j = idx then
                  begin
                    Inc(icW);
                  end else
                  begin
                    slWNPOI.slAddr   .Move(j, idx);
                    slWNPOI.slADetail.Move(j, idx);
                    slWNPOI.slNear   .Move(j, idx);
                    slWNPOI.slDis    .Move(j, idx);
                    slWNPOI.slLat    .Move(j, idx);
                    slWNPOI.slLon    .Move(j, idx);
                    slWNPOI.slSido   .Move(j, idx);
                    slWNPOI.slGugun  .Move(j, idx);
                    slWNPOI.slDong   .Move(j, idx);
                    slWNPOI.sPoiId   .Move(j, idx);
                    slWNPOI.sGUIDE_X .Move(j, idx);
                    slWNPOI.sGUIDE_Y .Move(j, idx);
                    slWNPOI.slGubun  .Move(j, idx);
                    slWNPOI.sNo      .Move(j, idx);
                    slWNPOI.sEtc     .Move(j, idx);
										slWNPOI.sAddress .Move(j, idx);

                    Inc(idx);
                    Inc(icW);
                  end;
                end;
              end;
            end;
          end;
        end;
      except
        on e: exception do
        begin
					Assert(False, 'pWiseNaverSUM Error 4 :' + gTFindData.sFullWord + '-' + E.Message);
        end;
      end;

      try
        if slWNPOI.slAddr.Count > 1 then
        begin
          // ��POI�� ù��°�� ���
          bOk1 := False;
          bPass := False;
          bFirst := False;
          if ( slWNPOI.slGubun[0] = 'D' ) Or ( slWNPOI.slGubun[0] = 'N' ) then
          begin
            sWrdN := System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slADetail[0]));
            for i := 1 to slWNPOI.slADetail.Count - 1 do
            begin
              if slWNPOI.sNo[i] = '' then Continue;
              sWrdW := System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slADetail[1]));
              Break;
            end;

						pSearchAddr(System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0])),
                        System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1])),
                        gTFindData.sFullWord);   // �ּ� ���и�


            if ( gTFindData.sFuRevise <> '' ) then
            begin
              if Pos('^', gTFindData.sFuRevise) > 0 then
              begin
                sTAd := Copy(gTFindData.sFuRevise, 1, Pos('^', gTFindData.sFuRevise)-1);
                sTBd := Copy(gTFindData.sFuRevise, Pos('^', gTFindData.sFuRevise)+1, Length(gTFindData.sFuRevise) - Pos('^', gTFindData.sFuRevise)+1 );
              end else
              begin
                sTAd := gTFindData.sFuRevise;
              end;

              if ( ( System.StrUtils.RightStr(sTAd, 1) = '��' ) Or
                   ( System.StrUtils.RightStr(sTAd, 1) = '��' ) Or
                   ( System.StrUtils.RightStr(sTAd, 1) = '��' ) Or
                   ( System.StrUtils.RightStr(sTAd, 1) = '��' ) Or
                   ( System.StrUtils.RightStr(sTAd, 1) = '��' ) Or
                   ( System.StrUtils.RightStr(sTAd, 1) = '��' ) Or
                   ( System.StrUtils.RightStr(sTAd, 1) = '��' ) ) And
                 ( Length(sTAd) >= 3 )then
              begin
                sTAd := Copy(sTAd, 1, Length(sTAd) - 1);
              end;

              if ( ( System.StrUtils.RightStr(sTBd, 1) = '��' ) Or
                   ( System.StrUtils.RightStr(sTBd, 1) = '��' ) Or
                   ( System.StrUtils.RightStr(sTBd, 1) = '��' ) Or
                   ( System.StrUtils.RightStr(sTBd, 1) = '��' ) Or
                   ( System.StrUtils.RightStr(sTBd, 1) = '��' ) Or
                   ( System.StrUtils.RightStr(sTBd, 1) = '��' ) Or
                   ( System.StrUtils.RightStr(sTBd, 1) = '��' ) ) And
                 ( Length(sTBd) >= 3 )then
              begin
                sTBd := Copy(sTBd, 1, Length(sTBd) - 1);
              end;
            end;

            // 1) ���ڸ� Ǯ��Ī ���� �Ǵ�
            sTmp1 := StringReplace(sWrdN, ' ', '', [rfReplaceAll]);
            if Copy(sTmp1, 1, Length(gTFindData.sFullWord)) = gTFindData.sFullWord then
            begin
              // ���̹� POI�� �˻�� Ǯ��Ī�̸� �н�  ( ��ź�ŵ��� ) - 2017.12.04
              if sWrdN <> gTFindData.sFullWord then
              begin
                if sWrdW = gTFindData.sFullWord then   // ( �����Ÿ� )
                begin
                   bOk1 := True;
                end else
                begin
                  if ( gTFindData.sFuRevise <> '' ) then
                  begin
                    if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0]))) > 0 ) And
                       ( Pos(gTFindData.sFindWord, sWrdN) > 0 ) then
                    begin
                      // �� �и��� ���˻��� �� + POI Ǯ��Ī�� �ƴϰ�
                      if ( sWrdN <> gTFindData.sFindWord ) then
                      begin
                        // ������� ù��°�� �� + POI Ǯ��Ī�̸� ���� ����
                        if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
                           ( sWrdW = gTFindData.sFindWord ) then bOk1 := True;
                      end;
                    end else
                    begin
                      // �� �и��� ���˻��� �� + POI �κ� Ǯ��Ī�̰ų� ( �˴ܺ���� )
                      if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
                         ( Pos(gTFindData.sFindWord, sWrdW) > 0 ) then bOk1 := True;
                    end;
                  end;
                end;
              end;
            end else
            begin
              sTmp1 := StringReplace(sWrdW, ' ', '', [rfReplaceAll]);
              if Copy(sTmp1, 1, Length(gTFindData.sFullWord)) = gTFindData.sFullWord then
              begin
                bOk1 := True;
                // �պκ�Ǯ��Īó���� ������������ Ǯ��Ī���ο� ���� �������� ( �д������ )
                DongDivFullCheck(sTAd, sTBd, sWrdN, sWrdW, bOk1, bPass, bFirst);
              end;

              // �ޱ��ڰ� '�ʱ�' Or '��'�� ��� �ʵ��б�, ����б� ġȯ �� ���ڸ� Ǯ��Ī�� ��� ( �����ʱ� )
              if System.StrUtils.RightStr(gTFindData.sFullWord, 2) = '�ʱ�' then
              begin
                sTNm := StringReplace(gTFindData.sFullWord, '�ʱ�','�ʵ��б�', [rfReplaceAll]);
                if Copy(sWrdW, 1, Length(sTNm)) = sTNm then bOk1 := True;
              end else
              if System.StrUtils.RightStr(gTFindData.sFullWord, 2) = '��' then
              begin
                sTNm := StringReplace(gTFindData.sFullWord, '��','����б�', [rfReplaceAll]);
                if Copy(sWrdW, 1, Length(sTNm)) = sTNm then bOk1 := True;
              end;

              if ( gTFindData.sFuRevise <> '' ) then
              begin
                if ( Not bPass ) And ( Not bOk1 ) then
                begin
                  // 2) �� �и��� '��'�� �����ϰ� ���ڸ� ��ġ ���� �Ǵ�  ( ���ʵ�����Ÿ�� )
                  pGetDongDelCheck(sTAd, sTBd, sWrdN, sWrdW, bOk1, bPass);
                end;

                // 3-1) �� �и��� �� + POI�� ����Ī/�κ�Ǯ��Ī 2������ ���� üũ 1���� (��ȵ��ϴ�ä����Ʈ)
                if ( Not bPass ) And ( Not bOk1 ) then
                begin
                  DongDivFullCheck(sTAd, sTBd, sWrdN, sWrdW, bOk1, bPass, bFirst);

                  // POI�κ��� ũ�Ⱑ 2����Ʈ �����ϰ�� �н� (��õ�ߵ���)
                  if Length(gTFindData.sFindWord) < 2 then
                     bPass := True;

                  // 3-2)�� �и��� �� + �κ� Ǯ��Ī üũ (�����±�CC) 2����
                  if ( Not bPass ) And ( Not bOk1 ) then
                  begin
                    DongDivCheck(sTAd, sTBd, sWrdN, sWrdW, bOk1, bPass, bFirst);

                    if ( Not bPass ) And ( Not bOk1 ) then
                    begin
                      // �� �и��� ���˻��� �� + POI �κ� Ǯ��Ī�̰ų�

                      // �ּ�2�� üũ
                      if sTBd = '' then
                      begin
                        if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
                           ( Pos(gTFindData.sFindWord, sWrdW) > 0 ) And ( Not bFirst ) then bOk1 := True;
                      end else
                      begin
                        if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
                           ( Pos(sTBd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
                           ( Pos(gTFindData.sFindWord, sWrdW) > 0 ) And ( Not bFirst ) then bOk1 := True;
                      end;

                      // 4)��Ÿ
                      if ( Not bPass ) And ( Not bOk1 ) then
                      begin
                        // �ڿ����ڰ� �繫�ҷ� ������ �и����ּ��� "��"�� ����+"�繫��" ��Ī üũ ( ��õ����繫�� )
                        if gTFindData.sFindWord = '�繫��' then
                        begin
                          slTmp := TStringList.Create;
                          try
														slTmp.Delimiter     := ' ';
														slTmp.DelimitedText := System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]));

														if slTmp.Count >= 2 then
                            begin
															if ( Pos(slTmp[2], gTFindData.sFuRevise) > 0 ) And
                                 ( System.StrUtils.RightStr(slTmp[2], 1) = '��' ) then
                              begin
                                if ( gTFindData.sFuRevise <> slTmp[2] ) then
                                begin
                                  if ( System.StrUtils.RightStr(gTFindData.sFuRevise, 2) = '����' ) then
                                  begin
                                    sTAd := StringReplace(gTFindData.sFuRevise, slTmp[2]+'��', '', [rfReplaceAll]);
                                  end else
                                  begin
                                    sTAd := StringReplace(gTFindData.sFuRevise, slTmp[2], '', [rfReplaceAll]);
                                  end;
                                  sTAd := StringReplace(gTFindData.sFuRevise, '^', '', [rfReplaceAll]);
                                end else
                                begin
                                  sTAd := slTmp[2];
                                end;

                                sTNm := slTmp[2] + '�繫��';
                                if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0]))) > 0 ) And
                                   ( Copy(sWrdN, 1, Length(sTNm)) = sTNm ) then
                                begin

                                end else
                                begin
                                  if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
                                     ( Copy(sWrdW, 1, Length(sTNm)) = sTNm ) then bOK1 := True;
                                end;

                                sTNm := slTmp[2] + '�ֹμ���';
                                if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0]))) > 0 ) And
                                   ( Copy(sWrdN, 1, Length(sTNm)) = sTNm ) then
                                begin

                                end else
                                begin
                                  if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
                                     ( Copy(sWrdW, 1, Length(sTNm)) = sTNm ) then bOK1 := True;
                                end;
                              end;
                            end;
                          finally
                            slTmp.Free;
                          end;
                        end else
                        begin
                          // �ּ� �и� �� POI�и���Ī�� �ٽ� ��2�ڸ� �и��ؼ� �ּҿ� POI��Ī �� ( �ƻ�¾�������� )
                          if ( gTFindData.sFuRevise <> '' ) And ( Pos('^', gTFindData.sFuRevise ) = 0 ) then
                          begin
                            sTmp := System.StrUtils.LeftStr(gTFindData.sFindWord, 2);
                            sTNm := StringReplace(gTFindData.sFindWord, sTAd,'', [rfReplaceAll]);
                            if ( Pos(sTmp, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0]))) > 0 ) And
                               ( Pos(sTNm, sWrdN) > 0 ) then
                            begin

                            end else
                            begin
                              if ( Pos(sTmp, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
                                 ( Pos(sTNm, sWrdW) > 0 ) then bOk1 := True;
                            end;
                          end;
                        end;
                      end;
                    end;

										// ������������������� ����
                    // ������ + POI���� Ǯ�˻���� �κ���ġ�� �̵� (��ź�ϱ������������) - 2017.12.04 �߰�
//                    if ( Not bPass ) And ( Not bOk1 ) then
//                    begin
//                      if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[0]))) > 0 ) And
//                         ( Pos(sWrdN, gTFindData.sFullWord) > 0 ) then
//                      begin
//                        bPass := False;
//                      end else
//                      begin
//                        if ( Pos(sTAd, System.SysUtils.Trim(D_HightlightTXT(slWNPOI.slAddr[1]))) > 0 ) And
//                           ( Pos(sWrdW, gTFindData.sFullWord) > 0 ) then bOk1 := True;
//                      end;
//                    end;
									end;
                end;
              end;
            end;

            if bOk1 then
            begin
              slWNPOI.slAddr   .Move(1, 0);
              slWNPOI.slADetail.Move(1, 0);
              slWNPOI.slNear   .Move(1, 0);
              slWNPOI.slDis    .Move(1, 0);
              slWNPOI.slLat    .Move(1, 0);
              slWNPOI.slLon    .Move(1, 0);
              slWNPOI.slSido   .Move(1, 0);
              slWNPOI.slGugun  .Move(1, 0);
              slWNPOI.slDong   .Move(1, 0);
              slWNPOI.sPoiId   .Move(1, 0);
              slWNPOI.sGUIDE_X .Move(1, 0);
              slWNPOI.sGUIDE_Y .Move(1, 0);
              slWNPOI.slGubun  .Move(1, 0);
              slWNPOI.sNo      .Move(1, 0);
              slWNPOI.sEtc     .Move(1, 0);
							slWNPOI.sAddress .Move(1, 0);
            end;
          end;
        end;
      except
        on e: exception do
        begin
					Assert(False, 'pWiseNaverSUM Error 5 :' + gTFindData.sFullWord + ' '  + E.Message);
        end;
      end;

      try
        Grid_Clear(lcsActiveEdit, 1);
        idx := 0;
        try
          AWiseGrid.BeginUpdate;
          for i := 0 to slWNPOI.slAddr.count - 1 do
          begin
            if slWNPOI.sNo[i] = '' then Continue;
            if slWNPOI.slAddr[i] = '' then Break;
            if idx <> 0 then
            begin
              AWiseGrid.AddRow; //���� 1��° ���� �߰��Ǿ�����
            end;
            sTmp := '';
            iTmp := slTmpWiseNo.IndexOf(slWNPOI.sNo[i]);
            if iTmp >= 0 then
            begin
              sTmp := slTmpWiseGB[iTmp];
            end;

            AWiseGrid.Cells[0, idx+1] := slWNPOI.slAddr   [i];
            AWiseGrid.Cells[1, idx+1] := slWNPOI.slADetail[i];
            AWiseGrid.Cells[2, idx+1] := slWNPOI.slNear   [i];
            AWiseGrid.Cells[3, idx+1] := slWNPOI.slDis    [i];
            AWiseGrid.Cells[4, idx+1] := slWNPOI.slLat    [i];
            AWiseGrid.Cells[5, idx+1] := slWNPOI.slLon    [i];
            AWiseGrid.Cells[6, idx+1] := slWNPOI.slSido   [i];
            AWiseGrid.Cells[7, idx+1] := slWNPOI.slGugun  [i];
            AWiseGrid.Cells[8, idx+1] := slWNPOI.slDong   [i];
  //          AWiseGrid.Cells[9, idx+1] := '';
            AWiseGrid.Cells[10, idx+1] := slWNPOI.sPoiId  [i];
            AWiseGrid.Cells[11, idx+1] := slWNPOI.sGUIDE_X[i];
            AWiseGrid.Cells[12, idx+1] := slWNPOI.sGUIDE_Y[i];
            AWiseGrid.Cells[13, idx+1] := slWNPOI.slGubun [i];

            if Trim(sTmp) = '' then sTmp := '99';    // ���Ķ����� ������ ��� 99 �־���.
            AWiseGrid.Cells[14, idx+1] := sTmp;
            AWiseGrid.Cells[15, idx+1] := FormatFloat('00', i);

						AWiseGrid.Cells[19, idx+1] := slWNPOI.sAddress[i]; //���� ����

            if AWiseGrid.Cells[13, idx+1] = 'N' then AWiseGrid.AddImageIdx(16,idx+1,19,haCenter, AdvGrid.vaCenter) else
            if AWiseGrid.Cells[13, idx+1] = 'D' then AWiseGrid.AddImageIdx(16,idx+1,20,haCenter, AdvGrid.vaCenter) else
            begin
              if slWNPOI.sEtc[i] = 'N' then AWiseGrid.AddImageIdx(16,idx+1,19,haCenter, AdvGrid.vaCenter) else
              if slWNPOI.sEtc[i] = 'D' then AWiseGrid.AddImageIdx(16,idx+1,20,haCenter, AdvGrid.vaCenter);
            end;

            if LeftStr(sTmp, 1) = '1' then AWiseGrid.AddImageIdx(17,idx+1,11,haCenter, AdvGrid.vaCenter) else
            if LeftStr(sTmp, 1) = '2' then AWiseGrid.AddImageIdx(17,idx+1,12,haCenter, AdvGrid.vaCenter) else
            if LeftStr(sTmp, 1) = '3' then AWiseGrid.AddImageIdx(17,idx+1,13,haCenter, AdvGrid.vaCenter) else
            if LeftStr(sTmp, 1) = '4' then AWiseGrid.AddImageIdx(17,idx+1,14,haCenter, AdvGrid.vaCenter) else
            if LeftStr(sTmp, 1) = '5' then AWiseGrid.AddImageIdx(17,idx+1,15,haCenter, AdvGrid.vaCenter) else
            if LeftStr(sTmp, 1) = '6' then AWiseGrid.AddImageIdx(17,idx+1,16,haCenter, AdvGrid.vaCenter) else
            if LeftStr(sTmp, 1) = '7' then AWiseGrid.AddImageIdx(17,idx+1,17,haCenter, AdvGrid.vaCenter)
                                      else AWiseGrid.AddImageIdx(17,idx+1,18,haCenter, AdvGrid.vaCenter);

            Inc(Idx);
          end;
        finally
          AWiseGrid.EndUpdate;

          lblSCnt.Caption := Format('�˻�: %d ��', [AWiseGrid.RowCount-1]);
        end;
      except
        on e: exception do
        begin
					Assert(False, 'pWiseNaverSUM Error 6 :' + E.Message);
        end;
      end;
    	SetDebugeWrite('JON30.pWiseNaverSUM End');

			if chkUseMiniMap.Checked then SetPOIMapDisplay;
      proc_Wisenut_GetPOILastSelect;
		Finally
			slTmpWiseNo.Free;
			slTmpWiseGB.Free;
		End;
		/////////////////////////�˻���� ����//////////////////////////////////////////
  except
    on e: exception do
    begin
			Assert(False, 'pWiseNaverSUM Error :' + gTFindData.sFullWord + ' ' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.rbPOI1Click(Sender: TObject);
var i : integer;
begin
	if rbPOI2.Checked then
  begin
			Assert(False, 'POI�׸�������' );

      btnGSort.Visible := True;
      pnlSCnt.Visible := True;
      pnlSCnt.BringToFront;

      btnGSort.BringToFront;
			GS_SEARCH_WISE_NAVER_COMPARE := True;

      AdvStringGrid1.ColWidths[16] := 030;
      AdvStringGrid5.ColWidths[16] := 030;
      AdvStringGrid8.ColWidths[16] := 030;

      AdvStringGrid1.ColWidths[17] := 030;
      AdvStringGrid5.ColWidths[17] := 030;
      AdvStringGrid8.ColWidths[17] := 030;
  end else
	if rbPOI1.Checked then
  begin
    Assert(False, 'POI�׸���и�' );

    btnGSort.Visible := False;
    pnlSCnt.Visible := False;

    GS_SEARCH_WISE_NAVER_COMPARE := False;

    AdvStringGrid1.ColWidths[16] := 000;
    AdvStringGrid5.ColWidths[16] := 000;
    AdvStringGrid8.ColWidths[16] := 000;

    AdvStringGrid1.ColWidths[17] := 000;
    AdvStringGrid5.ColWidths[17] := 000;
    AdvStringGrid8.ColWidths[17] := 000;

    i := 1;
    while i <= AdvStringGrid1.RowCount - 1 do
    begin
      if AdvStringGrid1.Cells[13, i] <> 'W' then
      begin
        AdvStringGrid1.RemoveRows(i, 1);
        dec(i);
      end;
      inc(i);
    end;

    i := 1;
    while i <= AdvStringGrid5.RowCount - 1 do
    begin
      if AdvStringGrid5.Cells[13, i] <> 'W' then
      begin
        AdvStringGrid5.RemoveRows(i, 1);
        dec(i);
      end;
      inc(i);
    end;

    i := 1;
    while i <= AdvStringGrid8.RowCount - 1 do
    begin
      if AdvStringGrid8.Cells[13, i] <> 'W' then
      begin
        AdvStringGrid8.RemoveRows(i, 1);
        dec(i);
      end;
      inc(i);
    end;
  end;

	sPreSearchWord := '';
	gmap_forword := '';
	gKWComp := '';
	tmThread.Interval := 90;
	tmThread.Enabled := True;

	AdvStringGrid3.visible := not GS_SEARCH_WISE_NAVER_COMPARE;
	AdvStringGrid6.visible := not GS_SEARCH_WISE_NAVER_COMPARE;
	AdvStringGrid9.visible := not GS_SEARCH_WISE_NAVER_COMPARE;

	if Assigned(Frm_JON30S) then
	begin
		if GS_SEARCH_WISE_NAVER_COMPARE then
		begin
			Frm_JON30.AdvStringGrid3.visible := False;
			Frm_JON30.AdvStringGrid6.visible := False;
			Frm_JON30.AdvStringGrid9.visible := False;
		end	else
		begin
			Frm_JON30.AdvStringGrid3.visible := True;
			Frm_JON30.AdvStringGrid6.visible := True;
			Frm_JON30.AdvStringGrid9.visible := True;
		end;
		Frm_JON30S.Search_SETCHK22.checked := GS_SEARCH_WISE_NAVER_COMPARE;
	end;

	GS_EnvFile.WriteBool('SearchSet', 'GS_SEARCH_WISE_NAVER_COMPARE' , GS_SEARCH_WISE_NAVER_COMPARE);
  pShowOption;
end;

procedure TFrm_JON30.rbSNClick(Sender: TObject);
begin
  if rbSN.Checked then pSelect_Portal('N') else
	if rbSD.Checked then pSelect_Portal('D') else
  if rbSA.Checked then pSelect_Portal('A');

  pShowOption;

  if Assigned(Frm_JON30S) then
  begin
    Frm_JON30S.RbSelN.Tag := 1;
    if GS_PORTAL_SEL = 'N' then Frm_JON30S.RbSelN.Checked := True else
    if GS_PORTAL_SEL = 'D' then Frm_JON30S.RbSelD.Checked := True else
    if GS_PORTAL_SEL = 'A' then Frm_JON30S.RbSelA.Checked := True;
    Frm_JON30S.RbSelN.Tag := 0;
  end;

  if Trim(gTFindData.sFullWord) <> '' then
  begin
    if lcsActiveEdit = 'meoStartArea' then
       gTFindData.sFullWord := Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text else
    if lcsActiveEdit = 'meoEndArea' then
       gTFindData.sFullWord := Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text else
    if lcsActiveEdit = 'meoViaArea' then
    begin
       if GS_VIA_Tag = 1 then gTFindData.sFullWord := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text
                         else gTFindData.sFullWord := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text;
    end;

    TT2.Interval := 10;
		TT2.Enabled  := True;
  end;
end;

procedure TFrm_JON30.pSearchAddr(sAddrN, sAddrW, sWord: String);
  // �ּҿ� ���� ���� ���� üũ
  function fisNumber( sValue : String ) : Boolean;
  Var i : Integer;
  begin
    Result := False;
    for i := 1 to Length(sValue) do
    begin
      if sValue[i] In ['1', '2', '3', '4', '5', '6', '7', '8', '9'] then
      begin
        Result := True;
        Break;
      end;
    end;
  end;

  // �ּҿ��� ���� ����
  function fGetDelNumber( sValue : String ) : String;
  Var i : Integer;
      sResult : String;
  begin
    sResult := '';
    for i := 1 to Length(sValue) do
    begin
      if sValue[i] In ['1', '2', '3', '4', '5', '6', '7', '8', '9'] then
      begin

      end else
      begin
        sResult := sResult + sValue[i];
      end;
    end;
    Result := sResult;
  end;

  // �ּҿ��� �˻������ �ñ������鵿 ���� ����
  procedure pGetAddress( vAddr, vWord : String; Var sVaddr1, sVaddr2 : String );
  var
    i, iStr, iwPos, iLen : integer;
    sChar, sAddTmp, sSchNm : string;
    sAddrRlt : String;
  begin
    sAddTmp := '';
    sAddrRlt := '';
    iStr := 1;
    // �� �ּҿ��� �ñ������鵿 ����
    sSchNm := vWord;
    i := Length(sSchNm);
    while i >= 0 do
    begin
      if Trim(vAddr) = '' then Break;
      sChar := Copy(sSchNm, iStr, i);
      if Length(sChar) <= 1 then Break;

      if Pos(sChar, vAddr) > 0 then
      begin
        if sAddrRlt = ''  then sAddrRlt := sChar
                          else sAddrRlt := sAddrRlt + '^' + sChar;

        sAddTmp := sAddTmp + sChar; // '^'���� �ּҺκ�
        iwPos := Pos(sChar, sSchNm) + Length(sChar);
        iLen := Length(sSchNm)-iwPos;
        sSchNm := Copy(sSchNm, iwPos, iLen+1);
        i := Length(sSchNm) + 1;

        iwPos := Pos(sChar, vAddr) + Length(sChar);
        iLen := Length(vAddr)-iwPos;
        vAddr := Copy(vAddr, iwPos, iLen+1);
      end;
      Dec(i);
    end;
    sVaddr1 := sAddrRlt;
    sVaddr2 := sAddTmp;
  end;

var
  sTAdd, sRAdd, sNRAdd, sNTAdd, sWRAdd, sWTAdd : string;
  iPer : Integer;
begin
	SetDebugeWrite('JON30.pSearchAddr');

  try
    iPer := Trunc(Length(sWord)* 0.6);

    if ( sAddrW = sAddrN ) then
    begin
      // �˻���60%�� ���ڰ� ������
      if ( fisNumber(Copy(sWord, 1, iPer)) ) And ( fisNumber(sAddrN) ) then
      begin
        //1) �����ִ� ���¿��� �ñ������鵿 ����
        pGetAddress( sAddrN, sWord, sTAdd, sRAdd);

        //2) �ּҿ� ����(�Ǽ�1��, �̻�2��..)�� �����ϸ� ���� �����ϰ� �ñ������鵿 ����
        if ( sTAdd = '' ) then
          pGetAddress(fGetDelNumber(sAddrN), sWord, sTAdd, sRAdd);
      end else
      begin
        //1) �ּҿ� ����(�Ǽ�1��, �̻�2��..)�� �����ϸ� ���� �����ϰ� ���� �ñ������鵿 ����
        if fisNumber(sAddrN) then
        begin
          pGetAddress( fGetDelNumber(sAddrN), sWord, sTAdd, sRAdd);
        end;
        //2) 1)������ �ּ� ������ �ȵǸ� �����ִ� ���¿��� �ñ������鵿 ����
        if ( sTAdd = '' ) then
          pGetAddress( sAddrN, sWord, sTAdd, sRAdd);
      end;
    end else
    begin
      // �˻���60%�� ���ڰ� ������
      if ( fisNumber(Copy(sWord, 1, iPer)) ) And ( fisNumber(sAddrN) ) then
      begin
        pGetAddress( sAddrN, sWord, sTAdd, sRAdd);
        if ( sTAdd = '' ) then
          pGetAddress( fGetDelNumber(sAddrN), sWord, sTAdd, sRAdd);
      end else
      if ( fisNumber(Copy(sWord, 1, iPer)) ) And ( fisNumber(sAddrW) ) then
      begin
        pGetAddress( sAddrW, sWord, sTAdd, sRAdd);
        if ( sTAdd = '' ) then
          pGetAddress( fGetDelNumber(sAddrW), sWord, sTAdd, sRAdd);
      end else
      begin
        if fisNumber(sAddrN) then
          pGetAddress( fGetDelNumber(sAddrN), sWord, sNTAdd, sNRAdd)
        else
          pGetAddress( sAddrN, sWord, sNTAdd, sNRAdd);

        if fisNumber(sAddrW) then
          pGetAddress( fGetDelNumber(sAddrW), sWord, sWTAdd, sWRAdd)
        else
          pGetAddress( sAddrW, sWord, sWTAdd, sWRAdd);

        // ���ְ��IC �ּҺи��� ���̹��� �ݸ����� �ּҸ�Ī�� �� ������ ���
        if Pos('^', sNTAdd) > 0 then
        begin
          sTAdd := sNTAdd;
          sRAdd := sNRAdd;
        end else
        if Pos('^', sWTAdd) > 0 then
        begin
          sTAdd := sWTAdd;
          sRAdd := sWRAdd;
        end else
        begin
          if ( Trim(sNTadd) <> '' ) And ( Trim(sWTadd) = '' )  then
          begin
            sTAdd := sNTAdd;
            sRAdd := sNRAdd;
          end else
          if ( Trim(sWTadd) <> '' ) And ( Trim(sNTadd) = '' ) then
          begin
            sTAdd := sWTAdd;
            sRAdd := sWRAdd;
          end else
          begin
            // �ּҰ� �ΰ��� ���� ��� ������ ���Ե� �ּҰ� ������ �װ� ���� ( ���õ�ȣ�ڳ���Ʈ )
            if ( Length(sNTadd) > Length(sWTadd) ) then
            begin
              sTAdd := sNTAdd;
              sRAdd := sNRAdd;
            end else
            if ( Length(sNTadd) < Length(sWTadd) ) then
            begin
              sTAdd := sWTAdd;
              sRAdd := sWRAdd;
            end else
            begin
              sTAdd := sNTAdd;
              sRAdd := sNRAdd;
            end;
          end;
        end;
      end;
    end;

    gTFindData.sFindWord := Copy(String(sWord), Length(sRAdd)+1, Length(String(sWord)) - Length(sRAdd) + 1);
    gTFindData.sFullWord := sWord;
    gTFindData.sFuRevise := sTAdd;
  except

  end;
end;

procedure TFrm_JON30.tmThreadPasteTimer(Sender: TObject);
var
  ls_Text, row3, sFullText : string;
  i, iStart, iMax, iRandom : integer;
begin
  sPastRD := RandomRange(10000, 20000);
  SetDebugeWrite('JON30.tmThreadPasteTimer : ' + IntToStr(sPastRd));
  // meoStartArea �ؽ�Ʈ �ڽ� ����͸� �� �˻�.
  tmThreadPaste.Enabled := False;

  try
    Application.ProcessMessages;
    gbCtrlVCancel := False;
    if lcsActiveEdit = 'meoStartArea' then
    begin
			Frm_Main.Frm_JON01N[Self.Tag].PnlCtrlV.Left := 36;
			Frm_Main.Frm_JON01N[Self.Tag].PnlCtrlV.Top := Frm_Main.Frm_JON01N[Self.Tag].grpStartArea.Top + 3;
		end else
    if lcsActiveEdit = 'meoEndArea' then
    begin
			Frm_Main.Frm_JON01N[Self.Tag].PnlCtrlV.Left := 36;
			Frm_Main.Frm_JON01N[Self.Tag].PnlCtrlV.Top := Frm_Main.Frm_JON01N[Self.Tag].pnlBody.Top + 3;
		end;

		Frm_Main.Frm_JON01N[Self.Tag].PnlCtrlV.Visible := True;

    //=======================================================
    sFullText := fGetSchFullName;

    iMax := Length(sFullText);
		if iMax < 5 then iStart := 2
                else iStart := Length(sFullText) Div 2;

    iRandom := sPastRd;   // �ٿ��ֱ� �� �Ϸ���� ���� ���¿��� �ٽ� �ٿ��ֱ� �Ұ�� ���� �ٿ��ֱ� ������ ó�� �ȵǰ� �ϱ� ���� LYB 20180804
    try
      for i := iStart to iMax do
      begin
        SetDebugeWrite('JON30.tmThreadPasteTimer i : v - ' + IntToStr(sPastRd) + ' : ' + IntToStr(iRandom));
        if iRandom <> sPastRd then Break;

        if lcsActiveEdit = 'meoStartArea' then
          if gbECtrlV then Break;

        if lcsActiveEdit = 'meoEndArea' then
					if gbSCtrlV then Break;

        if gbCtrlVCancel then Break;

        ls_Text := Copy(sFullText, 1, i);
        // ���� �ܾ �˻����� ���� ��� �˻� ����.
        if ls_Text = sPreSearchWord then Break;

        SetDebugeWrite('tmThreadPasteTimer 1 ' + ls_Text);

        if (2 > Length(ls_Text)) or (20 < Length(ls_Text)) then
        begin
          gmap_forword := '';
					Frm_Main.Frm_JON01N[Self.Tag].PnlCtrlV.Visible := False;
          Exit; // 1�� �϶�,, ����
        end;

        lsNbCheck := False;

        if Not fSetAutoUnLock(ls_Text) then
        begin
          if ( pos('�α�', ls_Text) > 1 ) And ( Length(ls_Text) >= 4 ) then  // �α��ֹ� ��ȣ ���� lyb 2018.07.17
          begin
            ls_Text := Copy(ls_Text, 1, pos('�α�', ls_Text) - 1);
            lsNbCheck := True;
          end;

          if ( pos('�α�', ls_Text) > 1 ) And ( Length(ls_Text) >= 4 ) then
          begin
            ls_Text := Copy(ls_Text, 1, pos('�α�', ls_Text) - 1);
            lsNbCheck := True;
          end;

          if ( pos('��ó', ls_Text) > 1 ) And ( Length(ls_Text) >= 4 ) then
          begin
            ls_Text := Copy(ls_Text, 1, pos('��ó', ls_Text) - 1);
            lsNbCheck := True;
          end;

          if ( Copy(ls_Text,Length(ls_Text),1) = '��' ) And ( Length(ls_Text) >= 4 ) then
          begin
            ls_Text := Copy(ls_Text, 1, Length(ls_Text)-1);
            lsNbCheck := True;
          end;
        end;

        SetDebugeWrite('tmThreadPasteTimer 2 ' + ls_Text);

        Proc_AreaSearch_KWBase(ls_Text);
        gbCtrlVRecv := False;
        //=======================================================
        if length(map_ls_Text) > 1 then
        begin
          SetDebugeWrite('StrComp : ' + map_ls_Text + '--' + gmap_forword);
          if (System.SysUtils.AnsiStrComp(PAnsiChar(map_ls_Text), PAnsiChar(gmap_forword)) <> 0) then
          begin
            SearchMapData_Svr_Offset_Final(map_ls_text);
            gmap_forword := map_ls_Text;
            sPreSearchWord := ls_Text;
          end else
          begin
            gbCtrlVRecv := True;
          end;
        end;

        while Not gbCtrlVRecv do
        begin
          Application.ProcessMessages;
          if lcsActiveEdit = 'meoStartArea' then
            if gbECtrlV then Break;

          if lcsActiveEdit = 'meoEndArea' then
            if gbSCtrlV then Break;
          if gbCtrlVCancel then Break;
          if Not Self.Showing then Break;
        end;
      end;
    finally
			gbPasteEnd := True; //�����α� �Ϸ�
			Frm_Main.Frm_JON01N[Self.Tag].PnlCtrlV.Visible := False;
    end;
  except
    on e: exception do
    begin
			Assert(False, 'tmThreadPasteTimer Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.tmThreadTimer(Sender: TObject);
var
  ls_Text : string;
begin
	SetDebugeWrite('JON30.tmThreadTimer');
  // meoStartArea �ؽ�Ʈ �ڽ� ����͸� �� �˻�.
  tmThread.Enabled := False;
  try
    Application.ProcessMessages;

		if (lcsActiveEdit = 'meoStartArea') Or (lcsActiveEdit = 'meoEndArea') Or ( lcsActiveEdit = 'meoViaArea' ) then
    begin
			Frm_Main.Frm_JON01N[Self.Tag].PnlCtrlV.Visible := False
    end;

		if lcsActiveEdit = 'meoCallBell' then
		begin
			sPreSearchWord := '';
			gmap_forword := '';
			gKWComp := '';
		end;

    ls_Text := fGetSchFullName;

    // ���� �ܾ �˻����� ���� ��� �˻� ����.
    if ls_Text = sPreSearchWord then Exit;

    SetDebugeWrite('tmThreadTimer 1 ' + ls_Text);

    if (2 > Length(ls_Text)) or (20 < Length(ls_Text)) then
    begin
      gmap_forword := '';
      Exit; // 1�� �϶�,, ����
    end;

    lsNbCheck := False;

    if Not fSetAutoUnLock(ls_Text) then
    begin
      if ( pos('�α�', ls_Text) > 1 ) And ( Length(ls_Text) >= 4 ) then
      begin
        ls_Text := Copy(ls_Text, 1, pos('�α�', ls_Text) - 1);
        lsNbCheck := True;
      end;

      if ( pos('�α�', ls_Text) > 1 ) And ( Length(ls_Text) >= 4 ) then
      begin
        ls_Text := Copy(ls_Text, 1, pos('�α�', ls_Text) - 1);
        lsNbCheck := True;
      end;

      if ( pos('��ó', ls_Text) > 1 ) And ( Length(ls_Text) >= 4 ) then
      begin
        ls_Text := Copy(ls_Text, 1, pos('��ó', ls_Text) - 1);
        lsNbCheck := True;
      end;

      if ( Copy(ls_Text,Length(ls_Text),1) = '��' ) And ( Length(ls_Text) >= 4 ) then
      begin
        ls_Text := Copy(ls_Text, 1, Length(ls_Text)-1);
        lsNbCheck := True;
      end;
    end;

    SetDebugeWrite('tmThreadTimer 2 ' + ls_Text);

    Proc_AreaSearch_KWBase(ls_Text);
    //=======================================================
    if length(map_ls_Text) > 1 then
    begin
      SetDebugeWrite('StrComp : ' + map_ls_Text + '--' + gmap_forword);
      if (System.SysUtils.AnsiStrComp(PAnsiChar(map_ls_Text), PAnsiChar(gmap_forword)) <> 0) then
      begin
        SearchMapData_Svr_Offset_Final(map_ls_text);
        gmap_forword := map_ls_Text;
        sPreSearchWord := ls_Text;
      end;
    end;
  except
    on e: exception do
    begin
			Assert(False, 'tmThreadTimer Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.trm_2ndSearchTimer(Sender: TObject);
var iTmp : integer;
begin
	trm_2ndSearch.enabled := False;
	if not gb2ndSearch then exit;

	if lcsActiveEdit = 'meoStartArea' then
	begin
    iTmp := 19;
    if length(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.text) < iTmp then //18�ڱ����� Ȯ��˻�
      Proc_2ndSearchIng(Self.Tag, gb2ndSearch, lcsActiveEdit)
    else gb2ndSearch := False;
	end else
	if lcsActiveEdit = 'meoEndArea' then
	begin
    iTmp := 19;
    if length(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.text) < iTmp then //18�ڱ����� Ȯ��˻�
      Proc_2ndSearchIng(Self.Tag, gb2ndSearch, lcsActiveEdit)
    else gb2ndSearch := False;
	end else
	if lcsActiveEdit = 'meoViaArea' then
	begin
    iTmp := 15;
    if GS_VIA_Tag = 1 then
    begin
      if length(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.text) < iTmp then //14�ڱ����� Ȯ��˻�
        Proc_2ndSearchIng(Self.Tag, gb2ndSearch, lcsActiveEdit)
      else gb2ndSearch := False;
    end else
    begin
      if length(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].text) < iTmp then //14�ڱ����� Ȯ��˻�
        Proc_2ndSearchIng(Self.Tag, gb2ndSearch, lcsActiveEdit)
      else gb2ndSearch := False;
    end;
  end;
end;

procedure TFrm_JON30.trm_WK3SECTimer(Sender: TObject);
begin
	trm_WK3SEC.Enabled := False;
	if GS_SEARCH_NEAR_WK3SEC then WkSearch('0.5', 1);
end;

procedure TFrm_JON30.procAddressDelimited(AAdr: String; ASep : Char; Var rlTmp :TStringList);
var
	i : Integer;
	slTmp : TStringList;
begin
//	SetDebugeWrite('JON30.func_AddressDelimited');
	Try
    if Trim(AAdr) = '' then Exit;

    rlTmp.Clear;
		slTmp := TStringList.create;
		Try
			slTmp.Delimiter     := ASep;
			slTmp.DelimitedText := AAdr;

			if (slTmp.Count > 1) and fSejongCheck(slTmp[0]) then  // 20121206 LYB �߰�
			begin
				rlTmp.Add(slTmp[0]);
				if ((copy(D_HightlightTXT(slTmp[1]),length(D_HightlightTXT(slTmp[1])), 1) = '��')
				 or (copy(D_HightlightTXT(slTmp[1]),length(D_HightlightTXT(slTmp[1])), 1) = '��')) then
				begin
					rlTmp.Add('������');
					rlTmp.Add(slTmp[1] + slTmp[2]);  //���鸮
				end else
				if (copy(D_HightlightTXT(slTmp[1]),length(D_HightlightTXT(slTmp[1])), 1) = '��') then
				begin
					rlTmp.Add('������');
					rlTmp.Add(slTmp[1]);  // ��
				end else
				begin
					rlTmp.Add('������');
					rlTmp.Add('');        // ��
				end;
				rlTmp.Add('');  // ��
			end else
			begin
				rlTmp.Add(slTmp[0]);

				if slTmp.Count >= 4 then
				begin
					if ((copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '��')
					 or (copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '��')
					 or (copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '��')) then
					begin
						rlTmp.Add(slTmp[1] + slTmp[2]);   //�ñ���
						if ((copy(D_HightlightTXT(slTmp[3]),length(D_HightlightTXT(slTmp[3])), 1) = '��')
						 or (copy(D_HightlightTXT(slTmp[3]),length(D_HightlightTXT(slTmp[3])), 1) = '��')) And ( slTmp.Count > 4 ) then
							rlTmp.Add(slTmp[3] + slTmp[4])  //����+��
						else
							rlTmp.Add(slTmp[3]);          //��
					end else
					if ((copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '��')
					 or (copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '��')) then
					begin
						rlTmp.Add(slTmp[1]);            //�ñ���
						rlTmp.Add(slTmp[2] + slTmp[3]); //����+��
					end else
					begin
						rlTmp.Add(slTmp[1]);            //�ñ���
						rlTmp.Add(slTmp[2]);            //���鵿
					end;
					rlTmp.Add(slTmp[slTmp.Count-1]); //Bunji -> ���̹�API ���ÿ� �̿�
				end else
				if slTmp.Count = 3 then
				begin
					rlTmp.Add(slTmp[1]);            //�ñ���
					rlTmp.Add(slTmp[2]);            //���鵿
				end else
				if slTmp.Count = 2 then
				begin
					rlTmp.Add(slTmp[1]);            //�ñ���
					rlTmp.Add('');            //���鵿
				end else
				if slTmp.Count = 1 then
				begin
					rlTmp.Add('');            //�ñ���
					rlTmp.Add('');            //���鵿
				end;
			end;  
			if slTmp.Count < rlTmp.Count then
			begin
				for i := rlTmp.Count to slTmp.Count -1 do
				begin
					rlTmp.Add(slTmp[i]);
				end;
			end;
		Finally
			slTmp.Free;
		End;
	except
		on e: exception do
    begin
			Assert(False, 'func_AddressDelimited Error :' + E.Message);
		end;
	end;  
end;

function TFrm_JON30.func_MakeRow3(AAdvGrid: TAdvStringGrid; ARow : integer; AAreaName, AGubun: string): string;
var sLen, eLen : Integer;
	dongNM : string;
begin
	result :='';
	if AGubun = '-' then
	begin
		if Pos(' ', D_HightlightTXT(AAdvGrid.Cells[1, ARow -1])) > 0 then
		begin
			sLen := Pos(' ', D_HightlightTXT(AAdvGrid.Cells[1, ARow -1]));
			eLen := Length(D_HightlightTXT(AAdvGrid.Cells[1, ARow -1]));
			dongNM := Copy(D_HightlightTXT(AAdvGrid.Cells[1, ARow -1]), Pos(' ', D_HightlightTXT(AAdvGrid.Cells[1, ARow -1])) + 1, (eLen - sLen));

			if Copy(dongNM, length(dongNM) + 1 - 2, 2) = '����' then
				dongNM := Copy(dongNM, 1, length(dongNM) - 2);
			if Copy(dongNM, length(dongNM) + 1 - 1, 1) = '��' then
				dongNM := Copy(dongNM, 1, length(dongNM) - 1);

			if Pos(dongNM, AAreaName) > 0 then
				result := Copy(D_HightlightTXT(AAdvGrid.Cells[1, ARow -1]), 1, Pos(' ', D_HightlightTXT(AAdvGrid.Cells[1, ARow -1])) -1)
			else
				result := D_HightlightTXT(AAdvGrid.Cells[1, ARow -1]);
		end else
		if Pos('[', D_HightlightTXT(AAdvGrid.Cells[1, ARow -1])) > 0 then
		begin
			sLen := Pos('[', D_HightlightTXT(AAdvGrid.Cells[1, ARow -1]));
			eLen := Pos(']', D_HightlightTXT(AAdvGrid.Cells[1, ARow -1]));
			dongNM := Copy(D_HightlightTXT(AAdvGrid.Cells[1, ARow -1]), Pos('[', D_HightlightTXT(AAdvGrid.Cells[1, ARow -1])) + 1, (eLen - sLen));

			if Copy(dongNM, length(dongNM) + 1 - 2, 2) = '����' then
				dongNM := Copy(dongNM, 1, length(dongNM) - 2);
			if Copy(dongNM, length(dongNM) + 1 - 1, 1) = '��' then
				dongNM := Copy(dongNM, 1, length(dongNM) - 1);

			if Pos(dongNM, AAreaName) > 0 then
				result := Copy(D_HightlightTXT(AAdvGrid.Cells[1, ARow -1]), 1, Pos('[', D_HightlightTXT(AAdvGrid.Cells[1, ARow -1])) -1)
			else
				result := D_HightlightTXT(AAdvGrid.Cells[1, ARow -1]);
		end else
			result := D_HightlightTXT(AAdvGrid.Cells[1, ARow -1]);
	end else
	if AGubun = '+' then
	begin
		if Pos(' ', D_HightlightTXT(AAdvGrid.Cells[1, ARow+1])) > 0      then
		begin
			result := Copy(D_HightlightTXT(AAdvGrid.Cells[1, ARow+1]), 1, Pos(' ', D_HightlightTXT(AAdvGrid.Cells[1, ARow+1])) -1)
		end else
		if Pos('[', D_HightlightTXT(AAdvGrid.Cells[1, ARow+1])) > 0 then
			result := Copy(D_HightlightTXT(AAdvGrid.Cells[1, ARow+1]), 1, Pos('[', D_HightlightTXT(AAdvGrid.Cells[1, ARow+1])) -1)
		else
			result := D_HightlightTXT(AAdvGrid.Cells[1, ARow+1]);
	end;
end;

function TFrm_JON30.func_MakeRow4(AAdvGrid: TAdvStringGrid; ARow: integer): string;
begin
	result :='';
	if Pos(' ', D_HightlightTXT(AAdvGrid.Cells[2, ARow -1])) > 0      then
		result := Copy(D_HightlightTXT(AAdvGrid.Cells[2, ARow -1]), 1, Pos(' ', D_HightlightTXT(AAdvGrid.Cells[2, ARow -1])) -1)
	else
	if Pos('[', D_HightlightTXT(AAdvGrid.Cells[2, ARow -1])) > 0 then
		result := Copy(D_HightlightTXT(AAdvGrid.Cells[2, ARow -1]), 1, Pos('[', D_HightlightTXT(AAdvGrid.Cells[2, ARow -1])) -1)
	else result := D_HightlightTXT(AAdvGrid.Cells[2, ARow -1]);
end;

function TFrm_JON30.AddrKeyWord_Separate(s: string): string;
var i : integer;
begin
	SetDebugeWrite('JON30.AddrKeyWord_Separate');
	try
    case Length(WideString(s)) of
      2:  Result := s;
      3:  Result := Copy(WideString(s),1,2) +'|'+ Copy(WideString(s),1,3);
      4:  Result := Copy(WideString(s),1,2) +'|'+ Copy(WideString(s),1,3) +'|'+ Copy(WideString(s),1,4) +'|'+ Copy(WideString(s),3,2) +'|'+ s;
      5:  // ����/��õ��, ������/����, ������2��
          Result := Copy(WideString(s),1,2) +'|'+ Copy(WideString(s),1,3) +'|'+ Copy(WideString(s),1,4) +'|' //+ Copy(WideString(s),1,5) +'|'
                  + Copy(WideString(s),3,3) +'|'+ Copy(WideString(s),4,2) +'|'+ s;
      6:  // ����/��������, ���ʱ�/���絿, ����/����/����
          Result := Copy(WideString(s),1,2) +'|'+ Copy(WideString(s),1,3) +'|'+ Copy(WideString(s),1,4) +'|' //+ Copy(WideString(s),1,5) +'|'
                  + Copy(WideString(s),3,3) +'|'+ Copy(WideString(s),3,4) +'|'+ Copy(WideString(s),4,3) +'|'+ s;
      7:  // ����/������/����, ����/����/���絿, ����/����/������, ������/�Ǽ���/��, ��������/������
          Result := Copy(WideString(s),1,2) +'|'+ Copy(WideString(s),1,3) +'|'+ Copy(WideString(s),1,4) +'|' //+ Copy(WideString(s),1,5) +'|'
                  + Copy(WideString(s),3,2) +'|'+ Copy(WideString(s),3,3) +'|'+ Copy(WideString(s),3,4) +'|'+ Copy(WideString(s),4,2) +'|'
                  + Copy(WideString(s),4,3) +'|'+ Copy(WideString(s),4,4) +'|'+ Copy(WideString(s),5,2) +'|'+ Copy(WideString(s),5,3) +'|'+ Copy(WideString(s),6,2);
      8:  // ����/������/������, ����/���ʱ�/���絿, ����/����/����2��, ������/�Ǽ���/�ΰ�, ��������/����2��
          Result := Copy(WideString(s),1,2) +'|'+ Copy(WideString(s),1,3) +'|'+ Copy(WideString(s),1,4) +'|' //+ Copy(WideString(s),1,5) +'|'
                  + Copy(WideString(s),3,2) +'|'+ Copy(WideString(s),3,3) +'|'+ Copy(WideString(s),3,4) +'|'+ Copy(WideString(s),4,2) +'|'
                  + Copy(WideString(s),4,3) +'|'+ Copy(WideString(s),5,2) +'|'+ Copy(WideString(s),5,3) +'|'+ Copy(WideString(s),5,4) +'|'
                  + Copy(WideString(s),6,2) +'|'+ Copy(WideString(s),6,3) +'|'+ Copy(WideString(s),7,2);
      9:  // ����/��������/������, ����/���ʱ�/����2��, ����/���α�/����1��, ������/�Ǽ���/�ΰ赿, ��������/����������
          Result := Copy(WideString(s),1,2) +'|'+ Copy(WideString(s),1,3) +'|'+ Copy(WideString(s),1,4) +'|' //+ Copy(WideString(s),1,5) +'|'
                  + Copy(WideString(s),3,3) +'|'+ Copy(WideString(s),3,4) +'|'+ Copy(WideString(s),4,2) +'|'+ Copy(WideString(s),4,3) +'|'
                  + Copy(WideString(s),4,4) +'|'+ Copy(WideString(s),5,2) +'|'+ Copy(WideString(s),5,3) +'|'+ Copy(WideString(s),5,4) +'|'
                  + Copy(WideString(s),6,2) +'|'+ Copy(WideString(s),6,3) +'|'+ Copy(WideString(s),6,4) +'|'+ Copy(WideString(s),7,3) +'|'+ Copy(WideString(s),8,2);
      10: // ����/��������/��������, ����/���α�/�����2��, ���/������/�Ǽ���/�ΰ�, ��������/��������1��
          Result := Copy(WideString(s),1,2) +'|'+ Copy(WideString(s),1,3) +'|'+ Copy(WideString(s),1,4) +'|' //+ Copy(WideString(s),1,5) +'|'
                  + Copy(WideString(s),3,3) +'|'+ Copy(WideString(s),3,4) +'|'+ Copy(WideString(s),4,3) +'|'+ Copy(WideString(s),4,4) +'|'
                  + Copy(WideString(s),5,3) +'|'+ Copy(WideString(s),5,4) +'|'+ Copy(WideString(s),6,3) +'|'+ Copy(WideString(s),6,4) +'|'
                  + Copy(WideString(s),7,2) +'|'+ Copy(WideString(s),7,3) +'|'+ Copy(WideString(s),7,4) +'|'+ Copy(WideString(s),8,2) +'|'
                  + Copy(WideString(s),8,3) +'|'+ Copy(WideString(s),9,2);
      11: // ����/��������/���ǵ�2��, ����/������/�������2��, ���/������/�Ǽ���/�ΰ赿
          Result := Copy(WideString(s),1,2) +'|'+ Copy(WideString(s),1,3) +'|'+ Copy(WideString(s),1,4) +'|' //+ Copy(WideString(s),1,5) +'|'
                  + Copy(WideString(s),3,3) +'|'+ Copy(WideString(s),3,4) +'|'+ Copy(WideString(s),4,3) +'|'+ Copy(WideString(s),4,4) +'|'
                  + Copy(WideString(s),5,3) +'|'+ Copy(WideString(s),5,4) +'|'+ Copy(WideString(s),6,3) +'|'+ Copy(WideString(s),6,4) +'|'
                  + Copy(WideString(s),7,3) +'|'+ Copy(WideString(s),7,4) +'|'+ Copy(WideString(s),8,3) +'|'+ Copy(WideString(s),8,4) +'|'
                  + Copy(WideString(s),9,3) +'|'+ Copy(WideString(s),10,2);
      else
          Result := Copy(WideString(s),1,2);
          for i := 2 to Length(WideString(s)) -1 do
          begin
            if Length(Copy(WideString(s), i, 2)) > 1 then
              Result := Result +'|'+ Copy(WideString(s), i, 2);
          end;
    end;
  except
    on e: exception do
    begin
			Assert(False, 'AddrKeyWord_Separate Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON30.DistCalc(sx, sy, ex, ey: string): string;
var
  fdis: double;
begin
  try
    fdis := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE, sx, sy, ex, ey) * 1.0, ffNumber, 3, 2), 0.00);
    Result := FloatToStr(fdis);
  except
    Result := '';
  end;
end;

function TFrm_JON30.fnc_TruncChar(s: string): string;
var i, j : integer;
    st : string;
begin
  try
    Result := '';

    for j := 1 to length(s) do
    begin
      st := Copy(s, j, 1);  // 1����.
      for i := 0 to 18 do
        if UniCodeC[i] = st then
        begin
          st := '';
        end;
      if i > 18 then
      begin
        for i := 0 to 20 do
          if UniCodeV[i] = st then
          begin
            st := '';
          end;
        if i > 20 then
          for i := 0 to 27 do
            if UniCodeJ[i] = st then
            begin
              st := '';
            end;
      end;
      Result := Result + st;
    end;
  except
    Result := '';
  end;
end;

procedure TFrm_JON30.Proc_AddressResult(lt_Type: integer);
var
  i, idx : integer;
  sLocCnt : string;
  RowN, CntN : Integer;
  jon01_txt : string;
  M_TXT : string;
	AAdvGrid : TAdvStringGrid;
begin
	SetDebugeWrite('JON30.Proc_AddressResult');
	try
		Application.ProcessMessages;


    RowN := 0;
    CntN := 0;

    if lcsActiveEdit = 'meoStartArea' then
    begin
      jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text);
    end else
    if lcsActiveEdit = 'meoEndArea' then
    begin
      jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text);
    end else
    if lcsActiveEdit = 'meoViaArea' then
    begin
      if GS_VIA_Tag = 1 then
        jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text)
      else
        jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text);
    end else
    if lcsActiveEdit = 'meoStartAreaCUT'   then jon01_txt := UpperCase(Frm_CUT011.meoStartAreaCUT.Text) else
    if lcsActiveEdit = 'meoEndAreaCUT'     then jon01_txt := UpperCase(Frm_CUT011.meoEndAreaCUT.Text) else
    if lcsActiveEdit = 'meoStartAreaWOR11' then jon01_txt := UpperCase(Frm_WOR11.meoStartAreaWOR11.Text) else
    if lcsActiveEdit = 'meoEndAreaWOR11'   then jon01_txt := UpperCase(Frm_WOR11.meoEndAreaWOR11.Text) else
    if lcsActiveEdit = 'meoCallBell'       then jon01_txt := UpperCase(StringReplace(Frm_BTN01.meoCallBellArea.Text, ' ','', [rfReplaceAll]));

    if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or
       (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid2 else
    if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or
       (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid4 else
    if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid7;

		Try
			AAdvGrid.Clear;
			AAdvGrid.RowCount := 1;
			AAdvGrid.BeginUpdate;

			for idx := (slR_11[7].Count -1) downto 0 do
      begin
        i := f_AddArr_Find( Copy(slR_11[7].Strings[idx], Length(slR_11[7].Strings[idx])-4, 5) );  // 20120614  LYB  offset 4�ڸ����� -> 5�ڸ��� ����
        if i > -1 then
        begin
					if CntN = 0 then
					begin
						if RowN >= 1 then AAdvGrid.AddRow;
					end;

					if Length(gPAddr[i].sA_FindKey) > 0 then
          begin        // 037291558/127055991  : ������ ������ǥ.
            M_TXT := '';
            sLocCnt := gPAddr[i].sA_City +' '+ gPAddr[i].sA_Ward +' '+ gPAddr[i].sA_Ward2 +' '+ gPAddr[i].sA_Street + gPAddr[i].sA_Stree2 +' '+ gPAddr[i].sA_X +' '+ gPAddr[i].sA_Y;
            if gPAddr[i].sA_City <> '' then
              M_TXT := M_HightlightTXT(gPAddr[i].sA_City, jon01_txt, 1);

            if gPAddr[i].sA_Ward <> '' then
              M_TXT := M_TXT + ' ' + M_HightlightTXT(gPAddr[i].sA_Ward, jon01_txt, 1);

            if gPAddr[i].sA_Ward2 <> '' then
              M_TXT := M_TXT + ' ' + M_HightlightTXT(gPAddr[i].sA_Ward2, jon01_txt, 1);

            if gPAddr[i].sA_Street <> '' then
              M_TXT := M_TXT + ' ' + M_HightlightTXT(gPAddr[i].sA_Street, jon01_txt, 1);

            if gPAddr[i].sA_Stree2 <> '' then
              M_TXT := M_TXT + M_HightlightTXT(gPAddr[i].sA_Stree2, jon01_txt, 1);  // 20130614  LYB  �� ������ ��/��/�� ������ �ٷ� �ٿ��� ǥ��

						AAdvGrid.Cells[CntN,   RowN] := M_TXT;     //�ּҰ�
						AAdvGrid.Cells[CntN+1, RowN] := gPAddr[i].sA_X;   //Lat
						AAdvGrid.Cells[CntN+2, RowN] := gPAddr[i].sA_Y;   //Lon

						CntN := CntN + 3;
            if CntN = 9 then
            begin
              CntN := 0;
              Inc(RowN);
            end;
          end;
        end;
      end;
    finally
			AAdvGrid.EndUpdate;
		end;
  except
    on e: exception do
    begin
			Assert(False, 'Proc_AddressResult Error : ' + lcsActiveEdit + '-' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.Proc_AddressSvrResult;
var
	i, idx : integer;
  sLocCnt : string;
  RowN, CntN, iColor : Integer;
  jon01_txt : string;
  M_TXT : string;
	AAdvGrid : TAdvStringGrid;
begin
	SetDebugeWrite('JON30.Proc_AddressSvrResult');
  try
		Application.ProcessMessages;

    RowN := 0;
    CntN := 0;

    if lcsActiveEdit = 'meoStartArea' then
    begin
      if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'E')  And ( Not bClick ) then Exit;
      jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text);
    end else
    if lcsActiveEdit = 'meoEndArea' then
    begin
      if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'S')  And ( Not bClick ) then Exit;
      jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text);
    end else
    if lcsActiveEdit = 'meoViaArea' then
    begin
      if GS_VIA_Tag = 1 then
        jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text)
      else
        jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text);
    end else
    if lcsActiveEdit = 'meoStartAreaCUT'   then jon01_txt := UpperCase(Frm_CUT011.meoStartAreaCUT.Text) else
    if lcsActiveEdit = 'meoEndAreaCUT'     then jon01_txt := UpperCase(Frm_CUT011.meoEndAreaCUT.Text) else
    if lcsActiveEdit = 'meoStartAreaWOR11' then jon01_txt := UpperCase(Frm_WOR11.meoStartAreaWOR11.Text) else
    if lcsActiveEdit = 'meoEndAreaWOR11'   then jon01_txt := UpperCase(Frm_WOR11.meoEndAreaWOR11.Text) else
    if lcsActiveEdit = 'meoCallBell'       then jon01_txt := UpperCase(StringReplace(Frm_BTN01.meoCallBellArea.Text, ' ','', [rfReplaceAll]));

    if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or
       (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid2 else
    if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or
       (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid4 else
    if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid7;

    Try
			AAdvGrid.Clear;
			AAdvGrid.RowCount := 1;
			AAdvGrid.Height := 70;   //49
			AAdvGrid.BeginUpdate;

			f_AddArr_Sort;

      for idx := (slR_11[7].Count -1) downto 0 do
      begin
        i := f_AddArr_Find( Copy(slR_11[7].Strings[idx], Length(slR_11[7].Strings[idx])-1, 2) );  // 20120614  LYB  offset 4�ڸ����� -> 5�ڸ��� ����

				if i > -1 then
				begin
					if CntN = 0 then
					begin
						if RowN >= 1 then AAdvGrid.AddRow;
					end;

					iColor := 1;
          if Length(gPAddr[i].sA_FindKey) > 0 then
          begin        // 037291558/127055991  : ������ ������ǥ.
            M_TXT := '';
            sLocCnt := gPAddr[i].sA_City +' '+ gPAddr[i].sA_Ward +' '+ gPAddr[i].sA_Ward2 +' '+ gPAddr[i].sA_Street + gPAddr[i].sA_Stree2 +' '+ gPAddr[i].sA_X +' '+ gPAddr[i].sA_Y;

            if gPAddr[i].sA_Stree2 <> '' then
            begin
              iColor := 2;
              M_TXT := M_TXT + '[' + M_HightlightTXT(gPAddr[i].sA_Stree2, jon01_txt, iColor) + '] ';  // SPOI���� �ִ°Ŵ� Red�� ǥ��
            end;

            if gPAddr[i].sA_City <> '' then
              M_TXT := M_TXT + M_HightlightTXT(gPAddr[i].sA_City, jon01_txt, iColor);

            if gPAddr[i].sA_Ward <> '' then
              M_TXT := M_TXT + ' ' + M_HightlightTXT(gPAddr[i].sA_Ward, jon01_txt, iColor);

            if gPAddr[i].sA_Ward2 <> '' then
              M_TXT := M_TXT + ' ' + M_HightlightTXT(gPAddr[i].sA_Ward2, jon01_txt, iColor);

            if gPAddr[i].sA_Street <> '' then
              M_TXT := M_TXT + ' ' + M_HightlightTXT(gPAddr[i].sA_Street, jon01_txt, iColor);

						AAdvGrid.Cells[CntN,   RowN] := M_TXT;     //�ּҰ�
						AAdvGrid.AddDataImage(CntN+1, RowN, 10, haCenter, AdvGrid.vaCenter);
						AAdvGrid.Cells[CntN+2, RowN] := gPAddr[i].sA_X;   //Lat
						AAdvGrid.Cells[CntN+3, RowN] := gPAddr[i].sA_Y;   //Lon

						CntN := CntN + 4;
            if CntN = 12 then
            begin
              CntN := 0;
              Inc(RowN);
            end;
          end;
        end;
      end;
		finally
			AAdvGrid.EndUpdate;
		end;
	except
    on e: exception do
    begin
			Assert(False, 'Proc_AddressSvrResult Error :' + gTFindData.sFullWord + '-' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.Proc_AreaSearch_KWBase(ss_Data: AnsiString);
var
  i, lt_Type, iAP: Integer;
  dSt_Pos, dEd_Pos : integer;
  n1: integer;
  tm_repb: string;
begin
  SetDebugeWrite('JON30.Proc_AreaSearch_KWBase');
  if lcsActiveEdit = 'meoStartArea' then
  begin
    // �ڷ� ���ﶧ,, �˻� ���� �ʵ��� �ϱ� ���ؼ�,,  2011.05.20
  end else
  if lcsActiveEdit = 'meoEndArea' then
  begin
    // �ڷ� ���ﶧ,, �˻� ���� �ʵ��� �ϱ� ���ؼ�,,  2011.05.20
//    gs_map_old_value_2 := ss_Data;
  end else
	if lcsActiveEdit = 'meoViaArea' then
  begin
    // �ڷ� ���ﶧ,, �˻� ���� �ʵ��� �ϱ� ���ؼ�,,  2011.05.20
//    gs_map_old_value3 := ss_Data;
  end else
	if lcsActiveEdit = 'meoStartAreaCUT' then
	begin
		// �ڷ� ���ﶧ,, �˻� ���� �ʵ��� �ϱ� ���ؼ�,,  2011.05.20
//    gs_map_old_value := ss_Data;
	end else
	if lcsActiveEdit = 'meoEndAreaCUT' then
	begin
		// �ڷ� ���ﶧ,, �˻� ���� �ʵ��� �ϱ� ���ؼ�,,  2011.05.20
//    gs_map_old_value_2 := ss_Data;
	end else
	if lcsActiveEdit = 'meoStartAreaWOR11' then
	begin
		// �ڷ� ���ﶧ,, �˻� ���� �ʵ��� �ϱ� ���ؼ�,,  2011.05.20
//    gs_map_old_value := ss_Data;
	end else
	if lcsActiveEdit = 'meoEndAreaWOR11' then
	begin
		// �ڷ� ���ﶧ,, �˻� ���� �ʵ��� �ϱ� ���ؼ�,,  2011.05.20
//    gs_map_old_value_2 := ss_Data;
	end else
	if lcsActiveEdit = 'meoCallBell' then
	begin
		// �ڷ� ���ﶧ,, �˻� ���� �ʵ��� �ϱ� ���ؼ�,,  2011.05.20
//    gs_map_old_value_2 := ss_Data;
	end;

  try
    map_ls_Text := '';
    map_ls_Area3 := '';
    map_ls_Area4 := '';
    map_ls_detail := '';

    //--------------------------------------------------------------------------------------------------
    //  �Ʒ� ���ڰ� ������� ���� �������� ��ȸ
    //--------------------------------------------------------------------------------------------------
    if System.AnsiStrings.AnsiPos(']', ss_Data) > 0 then
      map_ls_Text := copy(ss_Data, System.AnsiStrings.AnsiPos(']', ss_data) + 1, length(ss_data) -
        System.AnsiStrings.AnsiPos(']', ss_data))
    else
      map_ls_Text := ss_Data;

    if System.AnsiStrings.AnsiPos('#', map_ls_Text) > 0 then
      map_ls_Text := copy(map_ls_Text, System.AnsiStrings.AnsiPos('#', map_ls_Text) + 1,
        length(map_ls_Text) - System.AnsiStrings.AnsiPos('#', map_ls_Text));

    if System.AnsiStrings.AnsiPos('$', map_ls_Text) > 0 then
      map_ls_Text := copy(map_ls_Text, System.AnsiStrings.AnsiPos('$', map_ls_Text) + 1,
        length(map_ls_Text) - System.AnsiStrings.AnsiPos('$', map_ls_Text));

    if System.AnsiStrings.AnsiPos(',', map_ls_Text) > 0 then
      map_ls_Text := copy(map_ls_Text, System.AnsiStrings.AnsiPos(',', map_ls_Text) + 1,
        length(map_ls_Text) - System.AnsiStrings.AnsiPos(',', map_ls_Text));

    // 20130715   LYB  �ĺ�) ���� �ڿ��� ���� �˻�  ����� ����
    if System.AnsiStrings.AnsiPos('�ĺ�)', map_ls_Text) > 0 then
      map_ls_Text := copy(map_ls_Text, System.AnsiStrings.AnsiPos('�ĺ�)', map_ls_Text) + 5, length(map_ls_Text) - System.AnsiStrings.AnsiPos('�ĺ�)', map_ls_Text) + 5)
    else
    if System.AnsiStrings.AnsiPos('����)', map_ls_Text) > 0 then
      map_ls_Text := copy(map_ls_Text, System.AnsiStrings.AnsiPos('����)', map_ls_Text) + 5, length(map_ls_Text) - System.AnsiStrings.AnsiPos('����)', map_ls_Text) + 5)
    else
    if System.AnsiStrings.AnsiPos('��ƽ)', map_ls_Text) > 0 then
      map_ls_Text := copy(map_ls_Text, System.AnsiStrings.AnsiPos('��ƽ)', map_ls_Text) + 5, length(map_ls_Text) - System.AnsiStrings.AnsiPos('��ƽ)', map_ls_Text) + 5)
    else
    if System.AnsiStrings.AnsiPos('����)', map_ls_Text) > 0 then
      map_ls_Text := copy(map_ls_Text, System.AnsiStrings.AnsiPos('����)', map_ls_Text) + 5, length(map_ls_Text) - System.AnsiStrings.AnsiPos('����)', map_ls_Text) + 5)
    else
    if System.AnsiStrings.AnsiPos('����)', map_ls_Text) > 0 then
      map_ls_Text := copy(map_ls_Text, System.AnsiStrings.AnsiPos('����)', map_ls_Text) + 5, length(map_ls_Text) - System.AnsiStrings.AnsiPos('����)', map_ls_Text) + 5)
    else
    if System.AnsiStrings.AnsiPos('Ź��)', map_ls_Text) > 0 then
      map_ls_Text := copy(map_ls_Text, System.AnsiStrings.AnsiPos('Ź��)', map_ls_Text) + 5, length(map_ls_Text) - System.AnsiStrings.AnsiPos('Ź��)', map_ls_Text) + 5)
    else
    if System.AnsiStrings.AnsiPos('ŹȮ)', map_ls_Text) > 0 then
      map_ls_Text := copy(map_ls_Text, System.AnsiStrings.AnsiPos('ŹȮ)', map_ls_Text) + 5, length(map_ls_Text) - System.AnsiStrings.AnsiPos('ŹȮ)', map_ls_Text) + 5)
    else
    if System.AnsiStrings.AnsiPos('����)', map_ls_Text) > 0 then
      map_ls_Text := copy(map_ls_Text, System.AnsiStrings.AnsiPos('����)', map_ls_Text) + 5, length(map_ls_Text) - System.AnsiStrings.AnsiPos('����)', map_ls_Text) + 5);

    dSt_Pos:=System.AnsiStrings.AnsiPos('>',map_ls_Text);
    dEd_Pos:=System.AnsiStrings.AnsiPos('/',map_ls_Text);

    // >������ġ  /������ġ
    if (Length(map_ls_Text)>0) and (dSt_Pos>0) and (dEd_Pos>0) and (dSt_Pos<dEd_Pos) then
    begin
      tm_repb:=Copy(map_ls_Text,dSt_Pos,dEd_Pos-dst_pos+1);
      map_ls_text:=StringReplace(map_ls_Text,tm_repb,'',[rfIgnoreCase]);
    end else
    if (Length(map_ls_Text)>0) and (dSt_Pos>0) and (dEd_Pos<=0) then
    begin
      map_ls_text:= Trim(Copy(map_ls_Text,1,dSt_Pos-1));
    end else
    begin
      map_ls_text:= StringReplace(map_ls_Text,'/','',[rfReplaceAll]);
    end;

    map_ls_text := UpperCase(map_ls_text);

    locRobortCnt     := 0;
    locRobortBaseCnt := 1;

    map_ls_Text_Front := map_ls_Text;
  except
    on e: exception do
    begin
			Log('Proc_AreaSearch_KWBase Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_AreaSearch_KWBase Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON30.Proc_AreaSearch_KWBaseComp(ss_Data: AnsiString) : AnsiString;
var
  i, lt_Type, iAP: Integer;
  dSt_Pos, dEd_Pos : integer;
  n1: integer;
  tm_repb : string;
  ResultText : AnsiString;
begin
  SetDebugeWrite('JON30.Proc_AreaSearch_KWBaseComp');
  try
    //--------------------------------------------------------------------------------------------------
    //  �Ʒ� ���ڰ� ������� ���� �������� ��ȸ
    //--------------------------------------------------------------------------------------------------
    if pos(']', ss_Data) > 0 then
      ResultText := copy(ss_Data, pos(']', ss_data) + 1, length(ss_data) -
        pos(']', ss_data))
    else
      ResultText := ss_Data;

    if pos('#', ResultText) > 0 then
      ResultText := copy(ResultText, pos('#', ResultText) + 1,
        length(ResultText) - pos('#', ResultText));

    if pos('$', ResultText) > 0 then
      ResultText := copy(ResultText, pos('$', ResultText) + 1,
        length(ResultText) - pos('$', ResultText));

    if pos(',', ResultText) > 0 then
      ResultText := copy(ResultText, pos(',', ResultText) + 1,
        length(ResultText) - pos(',', ResultText));

    // 20130715   LYB  �ĺ�) ���� �ڿ��� ���� �˻�   ����� ����
    if pos('�ĺ�)', ResultText) > 0 then
      ResultText := copy(ResultText, pos('�ĺ�)', ResultText) + 5, length(ResultText) - pos('�ĺ�)', ResultText) + 5)
    else
    if pos('����)', ResultText) > 0 then
      ResultText := copy(ResultText, pos('����)', ResultText) + 5, length(ResultText) - pos('����)', ResultText) + 5)
    else
    if pos('��ƽ)', ResultText) > 0 then
      ResultText := copy(ResultText, pos('��ƽ)', ResultText) + 5, length(ResultText) - pos('��ƽ)', ResultText) + 5)
    else
    if pos('����)', ResultText) > 0 then
      ResultText := copy(ResultText, pos('����)', ResultText) + 5, length(ResultText) - pos('����)', ResultText) + 5)
    else
    if pos('����)', ResultText) > 0 then
      ResultText := copy(ResultText, pos('����)', ResultText) + 5, length(ResultText) - pos('����)', ResultText) + 5)
    else
    if pos('Ź��)', ResultText) > 0 then
      ResultText := copy(ResultText, pos('Ź��)', ResultText) + 5, length(ResultText) - pos('Ź��)', ResultText) + 5)
    else
    if pos('ŹȮ)', ResultText) > 0 then
      ResultText := copy(ResultText, pos('ŹȮ)', ResultText) + 5, length(ResultText) - pos('ŹȮ)', ResultText) + 5)
    else
    if pos('����)', ResultText) > 0 then
      ResultText := copy(ResultText, pos('����)', ResultText) + 5, length(ResultText) - pos('����)', ResultText) + 5);


    dSt_Pos:=Pos('>',ResultText);
    dEd_Pos:=Pos('/',ResultText);

    // >������ġ  /������ġ
    if (Length(ResultText)>0) and (dSt_Pos>0) and (dEd_Pos>0) and (dSt_Pos<dEd_Pos) then
    begin
      tm_repb:=Copy(ResultText,dSt_Pos,dEd_Pos-dst_pos+1);
      ResultText:=StringReplace(ResultText,tm_repb,'',[rfIgnoreCase]);
		end else
    if (Length(ResultText)>0) and (dSt_Pos>0) and (dEd_Pos<=0) then
    begin
      ResultText:= Trim(Copy(ResultText,1,dSt_Pos-1));
    end else
    begin
      ResultText:= StringReplace(ResultText,'/','',[rfReplaceAll]);
    end;

    ResultText := UpperCase(ResultText);

    locRobortCnt     := 0;
    locRobortBaseCnt := 1;

    Result := ResultText;
  except
    on e: exception do
    begin
      Log('Proc_AreaSearch_KWBase Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_AreaSearch_KWBase Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.Proc_SearchResultGath_Final_Local;
var
  i, iAP, iViewCnt : Integer;
  idx : integer;
  sTmp : string;

  jon01_txt, row3 : string;
	AAdvGrid : TAdvStringGrid;
	ATEXT : TcxMemo;
begin
	SetDebugeWrite('JON30.Proc_SearchResultGath_Final_Local');
  try
    locRobortCnt := locRobortCnt + 1;

    // ���° ���� ī��Ʈ �Ѵ�.
    if locRobortBaseCnt <> locRobortCnt then Exit;

    try
      Application.ProcessMessages;

      // ������� �迭 �ʱ�ȭ.
      gPOI := gPOI_ini;

			if Not GS_SEARCH_NO_LOCALPOI then
      begin
        // ********* ���ø� ������ �˻���� �������� üũ.[2012.6.26] **********
        sTmp := gTFindData.sFullWord;
        if Length(GS_FULLWORD_CMP) <= Length(gTFindData.sFullWord) then
          sTmp := StringReplace(gTFindData.sFullWord, Copy(WideString(GS_FULLWORD_CMP), 1, Length(WideString(GS_FULLWORD_CMP))-1), '', [rfReplaceAll]);
        if Length(sTmp) < Length(gTFindData.sFullWord) then
        begin
          // ���� �˻� Ű������ ���弱��~~
          if (GT_MAPLocal_RLT_R.slCity.Count > 0) then
            f_LocalMap_DataCopy;        // ���ø� ������ ����.
          Proc_LocalMap_ScoreResult;  // ���ø� ������ �˻� ��� �߰��Ѵ�. 2012.06.25
        end else
        begin
          // ���� �˻� Ű���忡�� ���� ��.
          if (GT_MAPLocal_RLT.slSSub.Count > 0) and (GT_MAPLocal_RLT_R.slCity.Count < 1) then
          begin
            sTmp := GT_MAPLocal_RLT.slSSub[0];
            if Pos(sTmp, gTFindData.sFullWord) < 1 then
              f_LocalMap_DataCopy;        // ���ø� ������ ����.
          end else begin
            f_LocalMap_DataCopy;        // ���ø� ������ ����.
          end;
          Proc_LocalMap_ScoreResult;  // ���ø� ������ �˻� ��� �߰��Ѵ�. 2012.06.25
        end;
        GS_FULLWORD_CMP := gTFindData.sFullWord;
        // *********************************************************************
      end;

      fpoi_Sort;   // slR_11[8] �̰� �� ����.

      if ( ( slR_11[8].Count > 0 ) And ( slR_11[1].Count > 0 ) ) or                    // POI �ڷ� ��˻� �˻��ڷ� ������ Ŭ����
         ( ( slR_11[8].Count > 0 ) And ( GT_MAPLocal_RLT_R.slCity.Count > 0 ) ) then   // ���� POI �ڷ� ��˽� �˻��ڷ� ������ Ŭ����  20130514 LYB
      begin
				Grid_Init(lcsActiveEdit, 4);
      end;

      i := slR_11[8].Count -1;

			ATEXT := TcxMemo.create(nil);
			if lcsActiveEdit = 'meoStartArea' then
			begin
				ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoStartArea;
				if Length(ATEXT.Text) < 2 then exit;
				if sActieEdit <> lcsActiveEdit then Exit;
			end else
			if lcsActiveEdit = 'meoEndArea' then
			begin
				ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoEndArea;
				if Length(ATEXT.Text) < 2 then exit;
				if sActieEdit <> lcsActiveEdit then Exit;
			end;             
			jon01_txt := UpperCase(ATEXT.Text);
			if lcsActiveEdit = 'meoViaArea' then
			begin
				if GS_VIA_Tag = 1 then
					jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text)
				else
					jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text);
			end else
			if lcsActiveEdit = 'meoStartAreaCUT'   then jon01_txt := UpperCase(Frm_CUT011.meoStartAreaCUT.Text) else
			if lcsActiveEdit = 'meoEndAreaCUT'     then jon01_txt := UpperCase(Frm_CUT011.meoEndAreaCUT.Text) else
			if lcsActiveEdit = 'meoStartAreaWOR11' then jon01_txt := UpperCase(Frm_WOR11.meoStartAreaWOR11.Text) else
			if lcsActiveEdit = 'meoEndAreaWOR11'   then jon01_txt := UpperCase(Frm_WOR11.meoEndAreaWOR11.Text) else
			if lcsActiveEdit = 'meoCallBell'       then jon01_txt := UpperCase(StringReplace(Frm_BTN01.meoCallBellArea.Text, ' ','', [rfReplaceAll]));

			if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or 
				 (lcsActiveEdit = 'meoStartAreaWOR11')                                      then 
			begin
				AAdvGrid := AdvStringGrid1L;
				BtnLClose1.Click;
			end else
			if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT') or 
				 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell')   then 
			begin
				AAdvGrid := AdvStringGrid5L;
				BtnLClose2.Click;
			end else
			if lcsActiveEdit = 'meoViaArea' then 
			begin
				AAdvGrid := AdvStringGrid8L;
				BtnLClose3.Click;
			end;

			AAdvGrid.BeginUpdate;
			AAdvGrid.Height := 1;

			iAP := 0;

      // ��� �˻�..  ������.. Exit.
      if (slR_11[1].Count < 1) and (GT_MAPLocal_RLT_R.slCity.Count < 1) then
      begin
        if noSearch = false then
        begin
          Exit;
        end
        else noSearch := false;
      end;

      iViewCnt := 100;    // Grid�� ǥ���Ҽ��� �ִ� �ִ� ����
      if GS_PRJ_AREA = 'S' then iViewCnt := 40;

      while (i >= 0) do
      begin
        if i > (slR_11[8].Count - iViewCnt) then
        begin
          sTmp := CopyStr(slR_11[8].Strings[i], Length(AnsiString(slR_11[8].Strings[i])) -6, 7 );
          idx  := fpoi_Find(sTmp);
          if idx > -1 then
          begin
						if Length(gPOI[idx].sM_FindKey) > 0 then
            begin
							if iAP + 1 > 1 then
							begin
								if ( slR_11[8].Count > AAdvGrid.RowCount - 1 ) And (AAdvGrid.RowCount < iViewCnt)  then
									AAdvGrid.AddRow;
							end;

							AAdvGrid.Cells[6, iAP] := M_HightlightTXT(WideString(gPOI[idx].sM_City), jon01_txt, 1);
							AAdvGrid.Cells[7, iAP] := M_HightlightTXT(WideString(gPOI[idx].sM_Ward), jon01_txt, 1);
							if GS_SEARCH_NO_RI then
								AAdvGrid.Cells[8, iAP] := M_HightlightTXT(WideString(gPOI[idx].sM_Street), jon01_txt, 1) // + IntToStr(gPOI[idx].iScore) + gPOI[idx].sM_Hint ;
							else
								AAdvGrid.Cells[8, iAP] := M_HightlightTXT(WideString(gPOI[idx].sM_Street + gPOI[idx].sM_Stree2), jon01_txt, 1);// + IntToStr(gPOI[idx].iScore) + gPOI[idx].sM_Hint ;

							AAdvGrid.Cells[0, iAP] := AAdvGrid.Cells[6, iAP] + ' ' + AAdvGrid.Cells[7, iAP] + ' ' + AAdvGrid.Cells[8, iAP];

							if gPOI[idx].sM_jijum <> '' then
								AAdvGrid.Cells[1, iAP] := M_HightlightTXT(WideString(FastReplace(gPOI[idx].sM_Strt_Sub,'|','', False) +' '+ FastReplace(gPOI[idx].sM_jijum,'|','', False)), jon01_txt, 1)
							else
								AAdvGrid.Cells[1, iAP] := M_HightlightTXT(WideString(FastReplace(gPOI[idx].sM_Strt_Sub,'|','', False)), jon01_txt, 1);

							AAdvGrid.Cells[2, iAP] := M_HightlightTXT(WideString(FastReplace(gPOI[idx].sM_Approach,'((','(', False)), jon01_txt, 1);

							if StrToIntDef(gPOI[idx].sM_Km, -1) > 0 then
								AAdvGrid.Cells[3, iAP] := '��'+gPOI[idx].sM_Km
							else
								AAdvGrid.Cells[3, iAP] := gPOI[idx].sM_Km;

							AAdvGrid.Cells[4, iAP] := gPOI[idx].sM_X;
							AAdvGrid.Cells[5, iAP] := gPOI[idx].sM_Y;

							row3 := func_MakeRow3(AAdvGrid, i, '', '+');

							if lcsActiveEdit = 'meoStartArea' then
							begin
								if ( iAP + 1 = 1 ) And ( gTFindData.sFullWord = D_HightlightTXT(AAdvGrid.Cells[1, iAP])) then
                begin
									if Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Hint <> 'F4)���' then   // 20130703  LYB  ��ݻ����ϰ�쿡�� ����� ���� �ڵ� ���� �ȵȰ� �Ѵ�.
									begin
										Frm_Main.Frm_JON01N[Self.Tag].lcs_Clear(lcsActiveEdit);
										Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 := D_HightlightTXT(AAdvGrid.Cells[6, iAP]);
										Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 := D_HightlightTXT(AAdvGrid.Cells[7, iAP]);
										Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := D_HightlightTXT(AAdvGrid.Cells[8, iAP]);
										Frm_Main.Frm_JON01N[Self.Tag].lcsSta4 := D_HightlightTXT(AAdvGrid.Cells[2, iAP]);

										Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text := D_HightlightTXT(AAdvGrid.Cells[0, iAP]);
										SetDebugeWrite('JON30.lblStartAreaName.Text 8000 : ' + Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text);
										MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);

                    Frm_Main.Frm_JON01N[Self.Tag].lcsStaDocId := '';
                    Frm_Main.Frm_JON01N[Self.Tag].lcsStaCellSel := 'A';
                    Frm_Main.Frm_JON01N[Self.Tag].lcsStaDebug := '';

                    Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text := row3;
                    Frm_Main.Frm_JON01N[Self.Tag].lcsConfAREA4 := row3;
                    MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);

                    Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X := gPOI[idx].sM_X;
                    Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y := gPOI[idx].sM_Y;
                    Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X := '';
                    Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y := '';

                    Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Gubun := '2';

                    Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X;
                    Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y;
										Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEXval := '';
										Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEYval := '';

										if AdvStringGrid1L.Cells[3, iAP] = '' then Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'L'
																													else Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'I';
									end;
								end;

								Frm_Main.Frm_JON01N[Self.Tag].StartListN := '2';  //����� ����Ʈ ������
							end else
              if lcsActiveEdit = 'meoEndArea' then
              begin
								if ( iAP + 1 = 1 ) And ( gTFindData.sFullWord = D_HightlightTXT(AAdvGrid.Cells[1, iAP])) then
                begin
									if Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Hint <> 'F4)���' then   // 20130703  LYB  ��ݻ����ϰ�쿡�� ������ ���� �ڵ� ���� �ȵȰ� �Ѵ�.
									begin
										Frm_Main.Frm_JON01N[Self.Tag].lcs_Clear(lcsActiveEdit);
										Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := D_HightlightTXT(AAdvGrid.Cells[6, iAP]);
										Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 := D_HightlightTXT(AAdvGrid.Cells[7, iAP]);
										Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := D_HightlightTXT(AAdvGrid.Cells[8, iAP]);
										Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := D_HightlightTXT(AAdvGrid.Cells[2, iAP]);

										Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption := D_HightlightTXT(AAdvGrid.Cells[0, iAP]);


										Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := '';
										Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := 'A';

										Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := row3;
										Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text := Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption + ' ' + Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption;
										SetDebugeWrite('JON30.cxReEndArea.Text 8101 : ' + Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text);
										MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text), clRed, [fsBold]);

										Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := gPOI[idx].sM_X;
										Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := gPOI[idx].sM_Y;
										Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X := '';
										Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y := '';

										Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X;
										Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y;
										Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := '';
										Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := '';

										if AdvStringGrid5L.Cells[3, iAP] = '' then
											Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'L'
										else
											Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'I';
									end;
								end;

								Frm_Main.Frm_JON01N[Self.Tag].StartListN := '2';  //����� ����Ʈ ������
              end else
              if lcsActiveEdit = 'meoViaArea' then
							begin

								if ( iAP + 1 = 1 ) And ( gTFindData.sFullWord = D_HightlightTXT(AAdvGrid.Cells[1, iAP])) then
                begin
									Frm_Main.Frm_JON01N[Self.Tag].lcs_Clear(lcsActiveEdit);
									Frm_Main.Frm_JON01N[Self.Tag].ViaSA1[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[6, iAP]);
									Frm_Main.Frm_JON01N[Self.Tag].ViaSA2[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[7, iAP]);
									Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[8, iAP]);
									Frm_Main.Frm_JON01N[Self.Tag].DocId[GS_VIA_Tag]  := '';
									Frm_Main.Frm_JON01N[Self.Tag].CellSel[GS_VIA_Tag] := 'A';
									Frm_Main.Frm_JON01N[Self.Tag].SchWord[GS_VIA_Tag] := gTFindData.sFullWord;

									if GS_VIA_Tag = 1 then
										Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption := D_HightlightTXT(AAdvGrid.Cells[0, iAP])
									else
										Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption := D_HightlightTXT(AAdvGrid.Cells[0, iAP]);;

									Frm_Main.Frm_JON01N[Self.Tag].ViaAreaDetail[GS_VIA_Tag] := row3;

									if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text
																		else Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text;

									Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := gPOI[idx].sM_X;
									Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] := gPOI[idx].sM_Y;
									ViaPos('', Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag], Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag]);
									if AAdvGrid.Cells[3, iAP] = '' then GS_Grid_VIA := 'L'
																				  			 else GS_Grid_VIA := 'I';
								end;

								Frm_Main.Frm_JON01N[Self.Tag].StartListN := '2';  //����� ����Ʈ ������
              end else
              if lcsActiveEdit = 'meoStartAreaCUT' then
              begin
								if ( iAP + 1 = 1 ) And ( gTFindData.sFullWord = D_HightlightTXT(AAdvGrid.Cells[1, iAP])) then
                begin
                  Frm_CUT011.lcs_Clear(lcsActiveEdit);
									Frm_CUT011.lcsSta1 := D_HightlightTXT(AAdvGrid.Cells[6, iAP]);
									Frm_CUT011.lcsSta2 := D_HightlightTXT(AAdvGrid.Cells[7, iAP]);
									Frm_CUT011.lcsSta3 := D_HightlightTXT(AAdvGrid.Cells[8, iAP]);
                  Frm_CUT011.cxtSA1.Text := Frm_CUT011.lcsSta1;
                  Frm_CUT011.cxtSA2.Text := Frm_CUT011.lcsSta2;
                  Frm_CUT011.cxtSA3.Text := Frm_CUT011.lcsSta3;

									Frm_CUT011.lblStartAreaName.Caption := D_HightlightTXT(AAdvGrid.Cells[0, iAP]);

									Frm_CUT011.cxtStartAreaDetail.Text := row3;
                  Frm_CUT011.cxtStartXval.Text := gPOI[idx].sM_X;
                  Frm_CUT011.cxtStartYval.Text := gPOI[idx].sM_Y;
                end;
              end else
              if lcsActiveEdit = 'meoEndAreaCUT' then
							begin
								if ( iAP + 1 = 1 ) And ( gTFindData.sFullWord = D_HightlightTXT(AAdvGrid.Cells[1, iAP])) then
                begin
                  Frm_CUT011.lcs_Clear(lcsActiveEdit);
									Frm_CUT011.lcsEnd1 := D_HightlightTXT(AAdvGrid.Cells[6, iAP]);
									Frm_CUT011.lcsEnd2 := D_HightlightTXT(AAdvGrid.Cells[7, iAP]);
									Frm_CUT011.lcsEnd3 := D_HightlightTXT(AAdvGrid.Cells[8, iAP]);

                  Frm_CUT011.cxtEd1.Text := Frm_CUT011.lcsEnd1;
                  Frm_CUT011.cxtEd2.Text := Frm_CUT011.lcsEnd2;
                  Frm_CUT011.cxtEd3.Text := Frm_CUT011.lcsEnd3;
									Frm_CUT011.lblEndAreaName.Caption := D_HightlightTXT(AAdvGrid.Cells[0, iAP]);

									Frm_CUT011.cxtEndAreaDetail.Text := row3;
                  Frm_CUT011.cxtEndXval.Text := gPOI[idx].sM_X;
                  Frm_CUT011.cxtEndYval.Text := gPOI[idx].sM_Y;
                end;
							end else
							if lcsActiveEdit = 'meoStartAreaWOR11' then
							begin
								if ( iAP + 1 = 1 ) And ( gTFindData.sFullWord = D_HightlightTXT(AAdvGrid.Cells[1, iAP])) then
                begin
									Frm_WOR11.lcs_Clear(lcsActiveEdit);
									Frm_WOR11.lcsSta1 := D_HightlightTXT(AAdvGrid.Cells[6, iAP]);
									Frm_WOR11.lcsSta2 := D_HightlightTXT(AAdvGrid.Cells[7, iAP]);
									Frm_WOR11.lcsSta3 := D_HightlightTXT(AAdvGrid.Cells[8, iAP]);
                  Frm_WOR11.cxtSA1.Text := Frm_WOR11.lcsSta1;
                  Frm_WOR11.cxtSA2.Text := Frm_WOR11.lcsSta2;
                  Frm_WOR11.cxtSA3.Text := Frm_WOR11.lcsSta3;

									Frm_WOR11.lblStartAreaName.Caption := D_HightlightTXT(AAdvGrid.Cells[0, iAP]);
									Frm_WOR11.cxtStartAreaDetail.Text := row3;
                  Frm_WOR11.cxtStartXval.Text := gPOI[idx].sM_X;
                  Frm_WOR11.cxtStartYval.Text := gPOI[idx].sM_Y;
                end;
							end else
							if lcsActiveEdit = 'meoEndAreaWOR11' then
							begin
								if ( iAP + 1 = 1 ) And ( gTFindData.sFullWord = D_HightlightTXT(AAdvGrid.Cells[1, iAP])) then
                begin
                  Frm_WOR11.lcs_Clear(lcsActiveEdit);
									Frm_WOR11.lcsEnd1 := D_HightlightTXT(AAdvGrid.Cells[6, iAP]);
									Frm_WOR11.lcsEnd2 := D_HightlightTXT(AAdvGrid.Cells[7, iAP]);
									Frm_WOR11.lcsEnd3 := D_HightlightTXT(AAdvGrid.Cells[8, iAP]);

                  Frm_WOR11.cxtEd1.Text := Frm_WOR11.lcsEnd1;
                  Frm_WOR11.cxtEd2.Text := Frm_WOR11.lcsEnd2;
                  Frm_WOR11.cxtEd3.Text := Frm_WOR11.lcsEnd3;
									Frm_WOR11.lblEndAreaName.Caption := D_HightlightTXT(AAdvGrid.Cells[0, iAP]);

									Frm_WOR11.cxtEndAreaDetail.Text := row3;
                  Frm_WOR11.cxtEndXval.Text := gPOI[idx].sM_X;
									Frm_WOR11.cxtEndYval.Text := gPOI[idx].sM_Y;
                end;
							end else
							if lcsActiveEdit = 'meoCallBell' then
							begin
								if ( iAP + 1 = 1 ) And ( gTFindData.sFullWord = D_HightlightTXT(AAdvGrid.Cells[1, iAP])) then
								begin
									Frm_BTN01.lcs_Clear(lcsActiveEdit);
									Frm_BTN01.lcsCallBell1 := D_HightlightTXT(AAdvGrid.Cells[6, iAP]);
									Frm_BTN01.lcsCallBell2 := D_HightlightTXT(AAdvGrid.Cells[7, iAP]);
									Frm_BTN01.lcsCallBell3 := D_HightlightTXT(AAdvGrid.Cells[8, iAP]);

									Frm_BTN01.lbUpsoAreaName.Caption := D_HightlightTXT(AAdvGrid.Cells[0, iAP]);

									Frm_BTN01.edtUpsoAreaDetail.Caption := row3;
									Frm_BTN01.edtXval.Caption := gPOI[idx].sM_X;
									Frm_BTN01.edtYval.Caption := gPOI[idx].sM_Y;
								end;
							end;
              inc(iAP);
            end;
          end;
        end else
        begin
          break;
        end;
        dec(i);
      end;
      OutputDebugString(PChar('���ΰ��[��] : '+ FormatDateTime('HH:MM:SS.ZZZ', Now) + ' <==> ' +  gTFindData.sFullWord));
    finally
			if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or 
				 (lcsActiveEdit = 'meoStartAreaWOR11')                                      then 
			begin
				AdvStringGrid1.ShowSelection := True;
        AdvStringGrid2.ShowSelection := False;
        AdvStringGrid3.ShowSelection := False;

        AdvStringGrid1L.EndUpdate;
        if ( AdvStringGrid1L.Cells[0,0] <> '' ) And ( gTFindData.sFullWord = D_HightlightTXT(AdvStringGrid1L.Cells[1, 0])) then
        begin
          AdvStringGrid1.ShowSelection  := False;
          AdvStringGrid1L.ShowSelection := True;
        end;
        BtnLClose1Exec;
      end else
			if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT') or 
				 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell')   then 
			begin
        AdvStringGrid5.ShowSelection := True;
        AdvStringGrid4.ShowSelection := False;
        AdvStringGrid6.ShowSelection := False;

        AdvStringGrid5L.EndUpdate;
        if ( AdvStringGrid5L.Cells[0,0] <> '' ) And ( gTFindData.sFullWord = D_HightlightTXT(AdvStringGrid5L.Cells[1, 0])) then
        begin
          AdvStringGrid5.ShowSelection  := False;
          AdvStringGrid5L.ShowSelection := True;
        end;
        BtnLClose2Exec;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        AdvStringGrid8.ShowSelection := True;
        AdvStringGrid7.ShowSelection := False;
        AdvStringGrid9.ShowSelection := False;

        AdvStringGrid8L.EndUpdate;
        if ( AdvStringGrid8L.Cells[0,0] <> '' ) And ( gTFindData.sFullWord = D_HightlightTXT(AdvStringGrid8L.Cells[1, 0])) then
        begin
          AdvStringGrid8.ShowSelection  := False;
          AdvStringGrid8L.ShowSelection := True;
        end;
        BtnLClose3Exec;
			end;		end;
  except
    on e: exception do
    begin
			Log('Proc_SearchResultGath_Final_Local Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_SearchResultGath_Final_Local Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.Proc_SearchResultGath_Final_LocalWise;
var
  i, iAP, iViewCnt, idx : integer;
  sTmp, jon01_txt : string;
	AAdvGrid : TAdvStringGrid;
	ATEXT : TcxMemo;
begin
	SetDebugeWrite('JON30.Proc_SearchResultGath_Final_LocalWise');
  try
    locRobortCnt := locRobortCnt + 1;

    // ���° ���� ī��Ʈ �Ѵ�.
    if locRobortBaseCnt <> locRobortCnt then Exit;

    Application.ProcessMessages;

    // ������� �迭 �ʱ�ȭ.
    gPOI := gPOI_ini;

    if GS_SEARCH_NO_LOCALPOI then Exit;

    // ********* ���ø� ������ �˻���� �������� üũ.[2012.6.26] **********
    sTmp := gTFindData.sFullWord;
    if Length(GS_FULLWORD_CMP) <= Length(gTFindData.sFullWord) then
      sTmp := StringReplace(gTFindData.sFullWord, Copy(WideString(GS_FULLWORD_CMP), 1, Length(WideString(GS_FULLWORD_CMP))-1), '', [rfReplaceAll]);
    if Length(sTmp) < Length(gTFindData.sFullWord) then
    begin
      // ���� �˻� Ű������ ���弱��~~
      if (GT_MAPLocal_RLT_R.slCity.Count > 0) then
        f_LocalMap_DataCopy;        // ���ø� ������ ����.
      Proc_LocalMap_ScoreResult;  // ���ø� ������ �˻� ��� �߰��Ѵ�. 2012.06.25
    end else
    begin
      // ���� �˻� Ű���忡�� ���� ��.
      if (GT_MAPLocal_RLT.slSSub.Count > 0) and (GT_MAPLocal_RLT_R.slCity.Count < 1) then
      begin
        sTmp := GT_MAPLocal_RLT.slSSub[0];
        if Pos(sTmp, gTFindData.sFullWord) < 1 then
          f_LocalMap_DataCopy;        // ���ø� ������ ����.
      end else begin
        f_LocalMap_DataCopy;        // ���ø� ������ ����.
      end;
      Proc_LocalMap_ScoreResult;  // ���ø� ������ �˻� ��� �߰��Ѵ�. 2012.06.25
    end;
    GS_FULLWORD_CMP := gTFindData.sFullWord;
    // *********************************************************************

    fpoi_Sort;   // slR_11[8] �̰� �� ����.

    if ( ( slR_11[8].Count > 0 ) ) then   // ���� POI �ڷ� ��˻� �˻��ڷ� ������ Ŭ����  20130514 LYB
    begin
      Grid_Init(lcsActiveEdit, 1);

      if ( lcsActiveEdit = 'meoStartAreaCUT' ) Or ( lcsActiveEdit = 'meoEndAreaCUT' ) then
        Frm_CUT011.lcs_Clear(lcsActiveEdit)
      else
      if ( lcsActiveEdit = 'meoCallBell' ) or ( lcsActiveEdit = 'meoStartAreaWOR11' ) Or ( lcsActiveEdit = 'meoEndAreaWOR11' ) then
      else
      begin
        Frm_Main.Frm_JON01N[Self.Tag].lcs_Clear(lcsActiveEdit)
      end;
    end;

    i := slR_11[8].Count -1;

    ATEXT := TcxMemo.create(nil);
    if lcsActiveEdit = 'meoStartArea' then
    begin
      ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoStartArea;
      if Length(ATEXT.Text) < 2 then exit;
      if sActieEdit <> lcsActiveEdit then Exit;
    end else
    if lcsActiveEdit = 'meoEndArea' then
    begin
      ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoEndArea;
      if Length(ATEXT.Text) < 2 then exit;
      if sActieEdit <> lcsActiveEdit then Exit;
    end;
    jon01_txt := UpperCase(ATEXT.Text);
    if lcsActiveEdit = 'meoViaArea' then
    begin
      if GS_VIA_Tag = 1 then
        jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text)
      else
        jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text);
    end else
    if lcsActiveEdit = 'meoStartAreaCUT'   then jon01_txt := UpperCase(Frm_CUT011.meoStartAreaCUT.Text) else
    if lcsActiveEdit = 'meoEndAreaCUT'     then jon01_txt := UpperCase(Frm_CUT011.meoEndAreaCUT.Text) else
    if lcsActiveEdit = 'meoStartAreaWOR11' then jon01_txt := UpperCase(Frm_WOR11.meoStartAreaWOR11.Text) else
    if lcsActiveEdit = 'meoEndAreaWOR11'   then jon01_txt := UpperCase(Frm_WOR11.meoEndAreaWOR11.Text) else
    if lcsActiveEdit = 'meoCallBell'       then jon01_txt := UpperCase(StringReplace(Frm_BTN01.meoCallBellArea.Text, ' ','', [rfReplaceAll]));

    if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or
       (lcsActiveEdit = 'meoStartAreaWOR11')                                      then AAdvGrid := AdvStringGrid1 else
    if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or
       (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell')     then AAdvGrid := AdvStringGrid5 else
    if lcsActiveEdit = 'meoViaArea'                                               then AAdvGrid := AdvStringGrid8;

    try
			AAdvGrid.BeginUpdate;

			iAP := 1;

      iViewCnt := 100;    // Grid�� ǥ���Ҽ��� �ִ� �ִ� ����
      if GS_PRJ_AREA = 'S' then iViewCnt := 40;
      while (i >= 0) do
      begin
				if i > (slR_11[8].Count - iViewCnt) then
        begin
          sTmp := CopyStr(slR_11[8].Strings[i], Length(AnsiString(slR_11[8].Strings[i])) -6, 7 );
          idx  := fpoi_Find(sTmp);
          if idx > -1 then
          begin
            if Length(gPOI[idx].sM_FindKey) > 0 then
						begin
							if iAP + 1 > 1 then
							begin
								if ( slR_11[8].Count > AAdvGrid.RowCount - 1 ) And (AAdvGrid.RowCount < iViewCnt)  then
									AAdvGrid.AddRow;
							end;

							AAdvGrid.Cells[6, iAP] := M_HightlightTXT(WideString(gPOI[idx].sM_City), jon01_txt, 1);
							AAdvGrid.Cells[7, iAP] := M_HightlightTXT(WideString(gPOI[idx].sM_Ward), jon01_txt, 1);
							if GS_SEARCH_NO_RI then
								AAdvGrid.Cells[8, iAP] := M_HightlightTXT(WideString(gPOI[idx].sM_Street), jon01_txt, 1) // + IntToStr(gPOI[idx].iScore) + gPOI[idx].sM_Hint ;
							else
								AAdvGrid.Cells[8, iAP] := M_HightlightTXT(WideString(gPOI[idx].sM_Street + gPOI[idx].sM_Stree2), jon01_txt, 1);// + IntToStr(gPOI[idx].iScore) + gPOI[idx].sM_Hint ;

							AAdvGrid.Cells[0, iAP] := AAdvGrid.Cells[6, iAP] + ' ' + AAdvGrid.Cells[7, iAP] + ' ' + AAdvGrid.Cells[8, iAP];

							if gPOI[idx].sM_jijum <> '' then
								AAdvGrid.Cells[1, iAP] := M_HightlightTXT(WideString(FastReplace(gPOI[idx].sM_Strt_Sub,'|','', False) +' '+ FastReplace(gPOI[idx].sM_jijum,'|','', False)), jon01_txt, 1)
							else
								AAdvGrid.Cells[1, iAP] := M_HightlightTXT(WideString(FastReplace(gPOI[idx].sM_Strt_Sub,'|','', False)), jon01_txt, 1);

							AAdvGrid.Cells[2, iAP] := M_HightlightTXT(WideString(FastReplace(gPOI[idx].sM_Approach,'((','(', False)), jon01_txt, 1);

							AAdvGrid.Cells[3, iAP] := '������';
							AAdvGrid.Cells[4, iAP] := gPOI[idx].sM_X;
							AAdvGrid.Cells[5, iAP] := gPOI[idx].sM_Y;

							inc(iAP);
            end;
          end;
        end else
        begin
          break;
        end;
        dec(i);
      end;
    finally
			AAdvGrid.EndUpdate;
		end;
	except
    on e: exception do
    begin
			Log('Proc_SearchResultGath_Final_LocalWsie Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_SearchResultGath_Final_LocalWise Error :' + gTFindData.sFullWord + '-' + E.Message);
    end;
  end;
end;

function TFrm_JON30.SearchMapData_Svr_Offset_Final(sWord: AnsiString): boolean;
Var
  i : integer;
  iSpace : integer;
	bSearYN : boolean;

  slR1 : TStringList;
begin
	SetDebugeWrite('JON30.SearchMapData_Svr_Offset_Final');
  try
		Result := False;

    // 1���ڴ� �˻����� ����.
    if length(WideString(sWord)) < 2 then
    begin
      gSKWord := '';
      Exit;
    end;

    iSpace := System.AnsiStrings.AnsiPos(' ', sWord);
  
    sWord := fnc_TruncChar(sWord);

    if iSpace > 0 then
    begin
      Insert(' ', sWord, iSpace);
			Log('JON01 iSpace sWord : ' + sWord + IntToStr(iSpace), LOGDATAPATHFILE);
    end;

    // 1���ڴ� �˻����� ����.
    if length(WideString(sWord)) < 2 then
    begin
      gSKWord := '';
      Exit;
    end;

    if gKWComp = sWord then Exit;
    gKWComp := sWord;
    //----------------------------------------

    gTFindData.sFindWord := '';

    gbSearWordDong := False;
    gbSearWordLee  := False;

    try
			i := 1;

      if Not GB_365System then
        sWord := FastReplace(sWord, '@', '����Ʈ', False);  // '@' �� '����Ʈ' �� ġȯ.

			if fBunjiNameCheck(sWord) then
			begin
				sWord := FastReplace(sWord, '����', '', False);
      end else
      // '4' �� '��Ÿ�' �� ġȯ.
			if Copy(sWord,Length(sWord),1) = '4' then
      begin
        if ( Not StrToIntDef(RightStr(Trim(Copy(sWord,Length(sWord)-1, 1)), 1), -1) In [0,1,2,3,4,5,6,7,8,9] ) And
           ( RightStr(Trim(Copy(sWord,Length(sWord)-1, 1)), 1) <> '-' ) then
          sWord := CopyStr(sWord, 1, Length(sWord)-1) + '��Ÿ�';
      end;

      // 1���ڴ� �˻����� ����.
      if length(WideString(sWord)) <= 1 then
      begin
        bSearYN := True;
      end;

      if Not bSearYN then
      begin
        gTFindData.sFullWord := sWord;

        //--------  ���� �Է��� ���� ������ �˻� -----------//
        proc_LocalMapPOI_Data_Select_Mult;

        // -- �����ڷ�� �����ڷ� �Բ� ����
        if GS_SEARCH_POISVR_LOCALDP then
        begin
          GS_FULLWORD_CMP := '';    // �����ڷ� �Բ������� ���� �ڷ� �����˻��� ���������ִ� �κ� �ʱ�ȭ ó��
          Proc_SearchResultGath_Final_LocalWise;
        end;

        Application.ProcessMessages;
				if ( Not GS_SEARCH_NO_POI ) then  //���� POI ������. then
        begin
          // �������
          iChkPoiSvrTag := 0;
          TT3.Interval := 10;
					TT3.Enabled  := True;
        end;

        Application.ProcessMessages;

        if Not GS_SEARCH_POISVR_LOCALDP then
        begin
          // ���� ���� �˻�
          TTL.Interval := 50;
          TTL.Enabled  := True;
          Application.ProcessMessages;
        end else
        begin
					if ( (lcsActiveEdit = 'meoStartArea') Or (lcsActiveEdit = 'meoStartAreaCUT') Or (lcsActiveEdit = 'meoStartAreaWOR11') ) And ( AdvStringGrid1L.Height <> 0 ) then BtnLClose1Exec else
					if ( (lcsActiveEdit = 'meoEndArea'  ) Or (lcsActiveEdit = 'meoEndAreaCUT'  ) Or (lcsActiveEdit = 'meoEndAreaWOR11'  ) Or (lcsActiveEdit = 'meoCallBell'  ) ) And ( AdvStringGrid5L.Height <> 0 ) then BtnLClose2Exec else
					if ( lcsActiveEdit = 'meoViaArea' ) And ( AdvStringGrid8L.Height <> 0 ) then BtnLClose3Exec;
        end;

        if ( not GS_SEARCH_POTAL_2ResultOver ) then
        begin
          // ���̹� ���� �˻�
          if GS_SEARCH_POTAL_SPACEKEY then
            if GS_JON30_KeyDown <> VK_SPACE then Exit;

          if GS_PORTAL_SEL <> 'D' then  // ���̹��� 1�ʴ���
          begin
            if GS_DAPIKeyUSE then  // API KEY ���� 0.5��
            begin
              TT2.Interval := 500;
              TT2.Enabled  := True;
            end else                     // �̻��� 1��
            begin
              TT2.Interval := 600;
              TT2.Enabled  := True;
            end;
          end else                     // ������  0.7�ʴ���
          begin
            TT2.Interval := 700;
            TT2.Enabled  := True;
          end;
        end;
      end;
    finally
      slR1.Free;
    end;
    Result := True;
  except
    on e: exception do
    begin
      Log('SearchMapData_Svr_Offset_Final Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'SearchMapData_Svr_Offset_Final Error :' + E.Message);
    end;
  end;
end;

// ���� ����Ʈ���� POI ������ ��������..
//procedure TFrm_JON30.proc_Portal_GetPOI(word, vRandom : string);
//var
//	sApiKey, sHttp : string;
//	SCLat, SCLon : string;
//  JON01WNTh : TJON01WNThread;
//begin
//	SetDebugeWrite('JON30.proc_Portal_GetPOI');
//	try
//		if gNaverV4ErrorCnt > 5 then //������ 5������ 6��° �ٸ� URL�� ��ȯ
//		begin
//			if (GB_PORTAL_AutoChk) and (gNaverV4ChangeCnt > 2) and (gNaverV5ChangeCnt > 2)  then
//			begin
//				pSelect_Portal('D');
//				if Assigned(Frm_JON30S) then
//				begin
//					Frm_JON30S.RbSelN.Tag := 1;
//					Frm_JON30S.RbSelD.Checked := True;
//					Frm_JON30S.RbSelN.Tag := 0;
//				end;
//				gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0;  //V4����, ��ȯȽ�� �ʱ�ȭ
//				gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0;  //V5����, ��ȯȽ�� �ʱ�ȭ
//				SetDebugeWrite('Naver - Daum ����');
//				Assert(False, 'Naver - Daum ����');
//
//				exit;
//			end;
//			gNaverV4ErrorCnt := 0;  //V4 ����Ƚ�� �ʱ�ȭ
//			inc(gNaverV5ChangeCnt); //V4 -> V5 ��ȯȽ�� ����
//			proc_Portal_GetPOI_V5(word, vRandom);
//			Assert(False, 'Naver V4 -> V5 ����');
//			exit;
//		end;
//
//		SCLat := getDEGREE(Area_CenterLat);//'037335565';
//		SCLon := getDEGREE(Area_CenterLon);//'126583729';
//
//		if pos('naver_usersession', gNaverCookie) > 0 then
//		begin
//			sHttp := Format('https://v4.map.naver.com/search2/local.nhn?sm=hty&searchCoord=%s;%s&isFirstSearch=true&query=%s&menu=location',
//							 [SCLon, SCLat, UrlEncode(UTF8Encode(trim(word)))]);
//		end else
//		// �ǵڿ� &_ ���� �ٿ��ָ� Cookie�� ���� ���̵� POI ��ȸ�� ��    2018.06.19  LYB
//		begin
//			sHttp := Format('https://v4.map.naver.com/search2/local.nhn?sm=hty&searchCoord=%s;%s&isFirstSearch=true&query=%s&menu=location&_',
//							 [SCLon, SCLat, UrlEncode(UTF8Encode(trim(word)))]);
//		end;
//
////		SetDebugeWrite('Naver : LastRandom - ' + Frm_JON30.sRanDom +', ActiveRandom - ' + vRandom + ', - ' + sHttp);
//
//		try
//			JON01WNTh := TJON01WNThread.Create(Self.Tag, 12, sHttp, sApiKey, vRandom);
//			JON01WNTh.FreeOnTerminate := False;
//		except
//
//		end;
//	except on E: Exception do
//		begin
//			Assert(False, 'proc_Portal_GetPOI_Daum Error : ' + E.Message);
//		end;
//	end;
//end;

// ���� ����Ʈ���� POI ������ ��������..
procedure TFrm_JON30.proc_Portal_GetPOI_V5(word, vRandom : string);
var
	sApiKey, sHttp : string;
	SCLat, SCLon : string;
  JON01WNTh : TJON01WNThread;
begin
	SetDebugeWrite('JON30.proc_Portal_GetPOI_V5');
	try
		if gNaverV5ErrorCnt > 5 then //������ 5������ 6��° �ٸ� URL�� ��ȯ
		begin
			if (GB_PORTAL_AutoChk) and (gNaverV5ChangeCnt > 2)  then
			begin
				pSelect_Portal('D');
				if Assigned(Frm_JON30S) then
				begin
					Frm_JON30S.RbSelN.Tag := 1;
					Frm_JON30S.RbSelD.Checked := True;
					Frm_JON30S.RbSelN.Tag := 0;
				end;
//				gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0;  //V4����, ��ȯȽ�� �ʱ�ȭ
				gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0;  //V5����, ��ȯȽ�� �ʱ�ȭ
				SetDebugeWrite('Naver - Daum ����');
				Assert(False, 'Naver - Daum ����');
				exit;
			end;
			gNaverV5ErrorCnt := 0;  //V5 ����Ƚ�� �ʱ�ȭ
//			inc(gNaverV4ChangeCnt); //V5 -> V4 ��ȯȽ�� ����
//			proc_Portal_GetPOI(word, vRandom);
//			Assert(False, 'Naver V5 -> V4 ����');
			Exit;
		end;
		SCLat := getDEGREE(Area_CenterLat);//'037335565';
		SCLon := getDEGREE(Area_CenterLon);//'126583729';

		word :=  StringReplace(word, '{','', [rfReplaceAll]);
		word :=  StringReplace(word, '}','', [rfReplaceAll]);
		word :=  StringReplace(word, '#','', [rfReplaceAll]);
		sHttp := Format('https://map.naver.com/v5/api/instantSearch?query=%s&lang=ko&caller=pcweb&types=place,address&coords=%s,%s',
							 [UrlEncode(UTF8Encode(trim(word))), SCLat, SCLon ]);

		SetDebugeWrite('Naver : LastRandom - ' + Frm_JON30.sRanDom +', ActiveRandom - ' + vRandom + ', - ' + sHttp);
		gb2ndSearch := False; //Ȯ��˻� ���� ����
		Proc_2ndSearchIng(Self.Tag, gb2ndSearch);
		try
			JON01WNTh := TJON01WNThread.Create(Self.Tag, 14, sHttp, sApiKey, vRandom);
			JON01WNTh.FreeOnTerminate := False;
    except

    end;
  except on E: Exception do
    begin
      Assert(False, 'proc_Portal_GetPOI_Daum Error : ' + E.Message);
		end;
	end;
end;

procedure TFrm_JON30.proc_Portal_GetPOI_V5_New(word, vRandom : string);
var
	sApiKey, sHttp : string;
	SCLat, SCLon : string;
	JON01WNTh : TJON01WNThread;
begin
	SetDebugeWrite('JON30.proc_Portal_GetPOI_V5');
	try   
		SCLat := getDEGREE(Area_CenterLat);//'037335565';
		SCLon := getDEGREE(Area_CenterLon);//'126583729';

		word :=  StringReplace(word, '{','', [rfReplaceAll]);
		word :=  StringReplace(word, '}','', [rfReplaceAll]);
		word :=  StringReplace(word, '#','', [rfReplaceAll]);
		sHttp := Format('https://map.naver.com/v5/api/search?caller=pcweb&query=%s&type=all&searchCoord=%s;%s&page=1&displayCount=10&isPlaceRecommendationReplace=true&lang=ko',
							 [UrlEncode(UTF8Encode(trim(word))), SCLat, SCLon ]);

		SetDebugeWrite('Naver : LastRandom - ' + sRanDom +', ActiveRandom - ' + vRandom + ', - ' + sHttp);
		Assert(False, 'Naver GetPOI_V5_New : LastRandom - ' + sRanDom +', ActiveRandom - ' + vRandom + ', word - ' + word + ', - ' + sHttp);

		try
			JON01WNTh := TJON01WNThread.Create(Self.Tag, 15, sHttp, sApiKey, vRandom);
			JON01WNTh.FreeOnTerminate := False;
    except

    end;
  except on E: Exception do
    begin
      Assert(False, 'proc_Portal_GetPOI_Daum Error : ' + E.Message);
		end;
  end;
end;

//function TFrm_JON30.proc_Portal_GetPOILast(wURL, vRandom : string) : Boolean;
//var
//  js : TlkJSONobject;
//	ja, jc : TlkJSONlist;
//
//  i, iPos : Integer;
//	str, sx, sy, sXX, sPOI, sKm, sRCity, sCate, sTmp : string;
//	jon01_txt : string;
//  slTmp : TStringList;
//	sAddress : string;
//	j: Integer;
//	AAdvGrid : TAdvStringGrid;
//	ATEXT : TcxMemo;
//begin
//	SetDebugeWrite('JON30.proc_Portal_GetPOILast');
//	slTmp := TStringList.Create;
//  try
//		Result := False;
//
//		if Trim(wURL) = '' then Exit;
////		if GT_USERIF.ID = 'sntest' then
////			SetDebugeWrite('Naver B : ActiveRandom - ' + vRandom + ', - ' + Trim(wURL));
//		// ��ȸ�� �˻�� �ʰ� �ö��� �־ ���� �������� ��ȸ�� ��ȣ�� Ʋ���� �н�
//    if sNRanDom <> vRandom  then Exit;
//    if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then Exit;
//		if Pos('ADULT_REDIRECT', wURL) > 0 then Exit;
//
//		if ( Pos('HMAC_AUTH_FAILED', wURL) > 0 ) Or ( Pos('HMAC_EXPIRED', wURL) > 0 ) then
//    begin
//			inc(gNaverV4ErrorCnt);
//			gNaverCookie := '';
//  		SetDebugeWrite('Naver B : Error - ' + Trim(wURL));
//			Assert(False, 'Naver B : Error - ' + Trim(wURL));
//			Exit;
//    end;
//
//		if Pos('������̽� PC �Ǵ� ��Ʈ��ũ����', wURL) > 0 then
//		begin
//			if (GB_PORTAL_AutoChk) and (gNaverV4ChangeCnt > 2) and (gNaverV5ChangeCnt > 2)  then
//			begin
//				pSelect_Portal('D');
//				if Assigned(Frm_JON30S) then
//				begin
//					Frm_JON30S.RbSelN.Tag := 1;
//					Frm_JON30S.RbSelD.Checked := True;
//					Frm_JON30S.RbSelN.Tag := 0;
//				end;
//				gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0;  //V4����, ��ȯȽ�� �ʱ�ȭ
//				gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0;  //V5����, ��ȯȽ�� �ʱ�ȭ
//				SetDebugeWrite('Naver - Daum ����');
//				Assert(False, 'Naver - Daum ����');
//			end;
//			inc(gNaverV4ErrorCnt);
//			Assert(False, 'Naver B : Error - ' + Trim(wURL));
//			Exit;
//		end;
//
//		if Pos('totalCount', wURL) < 1 then
//		begin
//			if (GB_PORTAL_AutoChk) and (gNaverV4ChangeCnt > 2) and (gNaverV5ChangeCnt > 2)  then
//			begin
//				pSelect_Portal('D');
//				if Assigned(Frm_JON30S) then
//				begin
//					Frm_JON30S.RbSelN.Tag := 1;
//					Frm_JON30S.RbSelD.Checked := True;
//					Frm_JON30S.RbSelN.Tag := 0;
//				end;
//				gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0;  //V4����, ��ȯȽ�� �ʱ�ȭ
//				gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0;  //V5����, ��ȯȽ�� �ʱ�ȭ
//				SetDebugeWrite('Naver - Daum ����');
//				Assert(False, 'Naver - Daum ����');
//			end;
//			inc(gNaverV4ErrorCnt);
//			Assert(False, 'Naver B : Error - ' + Trim(wURL));
//			Exit;
//		end;
//
//		gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0; //V4����Ƚ��, ��ȯȽ�� �ʱ�ȭ
//
//		sTmp := '';
//		ATEXT := TcxMemo.create(nil);
//		if lcsActiveEdit = 'meoStartArea' then
//		begin
//			ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoStartArea;
//			if Length(ATEXT.Text) < 2 then exit;
//			if sActieEdit <> lcsActiveEdit then Exit;
//		end else
//		if lcsActiveEdit = 'meoEndArea' then
//		begin
//			ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoEndArea;
//			if Length(ATEXT.Text) < 2 then exit;
//			if sActieEdit <> lcsActiveEdit then Exit;
//		end;
//
//		js := TlkJSON.ParseText(wURL) as TlkJSONobject;
//		try
//			try
//				if strToIntDef(js.Field['result'].Field['totalCount'].Value, 0) > 0 then
//				begin
//					if UpperCase(js.Field['result'].Field['type'].Value) = 'ADDRESS' then
//					begin
//						ja := js.Field['result'].Field['address'].Field['list'] as TlkJSONlist;
//
//						if ( ja.Count <= 0 ) then
//						begin
//							Grid_Init(lcsActiveEdit, 3);
//							Exit;
//						end;
//
//						jon01_txt := pSearchPortalInitAndTxt;
//
//						for i := 0 to ja.Count - 1 do
//            begin
//							str := '11:';
//							//str := str +' '+ ja.Child[i].Field['name'].Value;       // ���θ�Ī
//              sXX := ja.Child[i].Field['display'].Value;                // �ּ� : [�� + ����] ���� �ڸ���.
//              // ["����Ư���� ���ʱ� <em><strong>���絿 206-7</strong></em>"]
//              iPos:= Pos('rong>',sXX);
//              sXX := Copy(sXX,iPos+5,Pos('</str',sXX)-(iPos+5));
//              str := str +' '+ sXX;
//
//              if UpperCase(js.Field['result'].Field['address'].Field['subType'].Value) = 'ADDRESS_JIBUN' then
//              begin
//                sAddress := ja.Child[i].Field['fullAddress'].Value;
//              end else
//              begin
//                try
//									sAddress := ja.Child[i].Field['mappedAddress'].Field['fullAddress'].Value;
//
//                  if Pos(StringReplace(sXX, ' ','', [rfReplaceAll]), StringReplace(gTFindData.sFullWord, ' ','', [rfReplaceAll])) > 0  then
//  									sXX := sXX + '{' + ja.Child[i].Field['mappedAddress'].Field['abbrAddress'].Value + '}'
//                  else
//  									sXX := ja.Child[i].Field['mappedAddress'].Field['abbrAddress'].Value + '{' + sXX + '}' ;
//								except
//                  sAddress := '';
//								end;
//
//                if sAddress = '' then
//                  sAddress := ja.Child[i].Field['fullAddress'].Value;
//              end;
//
//							sy      := '';
//							sx      := '';
//							sPOI    := '';
//							sRCity  := '';
//
//              procAddressDelimited(sAddress, ' ', slTmp);
//
//							// 20130823  LYB  ���̹� �˻��� �ּҿ� ���ڰ� ������ ǥ�� ������ ����..
//							if Not StrToIntDef(RightStr(Trim(sAddress), 1), -1) In [0,1,2,3,4,5,6,7,8,9] then Continue;
//
//							if slTmp.Count >= 1  then
//							begin
//                sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
//                sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ
//
//								proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
//							end;
//
//              if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or
//                 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid3 else
//              if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or
//                 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid6 else
//              if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid9;
//
//              if ja.Count > AAdvGrid.RowCount - 1 then
//                if (i + 1 > 1) then AAdvGrid.AddRow;
//              AAdvGrid.Cells[6, i] := sRCity;//�õ�
//              AAdvGrid.Cells[7, i] := slTmp[1];  //�ñ���
//              AAdvGrid.Cells[8, i] := slTmp[2];  //���鵿
//
//              sTmp := D_HightlightTXT(AAdvGrid.Cells[6, i]) + ' ' +
//                      D_HightlightTXT(AAdvGrid.Cells[7, i]) + ' ' +
//                      D_HightlightTXT(AAdvGrid.Cells[8, i]);
//
//              AAdvGrid.Cells[0, i] := sTmp;
//
//              AAdvGrid.Cells[1, i] := M_HightlightTXT(sXX, jon01_txt, 1);//������
//              AAdvGrid.Cells[2, i] := sPOI;//�α�POI
//              if StrToIntDef(sKm, -1) > 0 then AAdvGrid.Cells[3, i] := '��'+sKm else	AAdvGrid.Cells[3, i] := sKm;//�Ÿ�
//              AAdvGrid.Cells[4, i] := sx;//Lat
//              AAdvGrid.Cells[5, i] := sy;//Lon
//  						AAdvGrid.Cells[12, i] := '';
//						end;
//          end else
//					if ((UpperCase(js.Field['result'].Field['type'].Value) = 'ALL')
//					or (UpperCase(js.Field['result'].Field['type'].Value) = 'SITE_1')) and (GS_SEARCH_POTAL) then
//					begin
//						if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or
//							 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid3 else
//						if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or
//							 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid6 else
//						if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid9;
//
//						ja := js.Field['result'].Field['site'].Field['list'] as TlkJSONlist;
//
//            if ja.Count <= 0 then
//            begin
//							Grid_Init(lcsActiveEdit, 3);
//              Exit;
//						end;
//
//            jon01_txt := pSearchPortalInitAndTxt;
//
//						for i := 0 to ja.Count - 1 do
//            begin
//							try
//                jc := ja.Child[i].Field['category'] as TlkJSONlist;
//                for j := 0 to jc.Count - 1 do
//                begin
//                  if j = 0 then sCate := jc.Child[j].Value
//													 else sCate := sCate + '-' + jc.Child[j].Value;
//                end;
//                sPOI := '��' + sCate + '��';    // �� �α� POI�˻� �ɼ��� �������� ī�װ� �׸��� �̰��� ǥ��  2017.12.26
//              except
//								sPOI := '';
//							end;
//
//							sXX := ja.Child[i].Field['name'].Value;
//							sXX := StringReplace(sXX, ' ','&nbsp;', [rfReplaceAll]);  // ������ &nbsp;�� ġȯ�ϴ� ���� : ��ũ�Ⱑ ������ ������ ���� �������� ���ڰ� ������ ����(��ũ�⸦ �ø��� ����)
//							sXX := M_HightlightTXT(sXX, jon01_txt, 1);
//							if pos('>', sXX) <= 0 then sXX := StringReplace(sXX, '&nbsp;',' ', [rfReplaceAll]);
//
//							sy      := '';
//							sx      := '';
//							sRCity  := '';
//							sAddress := ja.Child[i].Field['address'].Value;
//							procAddressDelimited(sAddress, ' ', slTmp);
//							if slTmp.Count >= 2 then
//							begin
//								sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
//								sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ
//
//								proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
//              end;
//
//							if (i + 1 > 1) then AAdvGrid.AddRow;
//							AAdvGrid.Cells[6, i] := sRCity;//�õ�
//							AAdvGrid.Cells[7, i] := slTmp[1];  //�ñ���
//							AAdvGrid.Cells[8, i] := slTmp[2];  //���鵿
//
//							sTmp := D_HightlightTXT(AAdvGrid.Cells[6, i]) + ' ' +
//											D_HightlightTXT(AAdvGrid.Cells[7, i]) + ' ' +
//											D_HightlightTXT(AAdvGrid.Cells[8, i]);
//
//							AAdvGrid.Cells[0, i] := M_HightlightTXT(sTmp, jon01_txt, 1);
//
//							AAdvGrid.Cells[1, i] := sXX;//������
//							AAdvGrid.Cells[2, i] := sPOI;//�α�POI
//							if StrToIntDef(sKm, -1) > 0 then AAdvGrid.Cells[3, i] := '��'+sKm else	AAdvGrid.Cells[3, i] := sKm;//�Ÿ�
//							AAdvGrid.Cells[4, i] := sx;//Lat
//							AAdvGrid.Cells[5, i] := sy;//Lon
//							AAdvGrid.Cells[12, i] := sAddress;
//            end;
//          end;
//					if GS_SEARCH_WISE_NAVER_COMPARE then tmrWNSUM.Enabled := True;
//        end else
//        begin
//					Grid_Init(lcsActiveEdit, 3);
//					if Assigned(Frm_CUT011) then Frm_CUT011.Grid_Clear(lcsActiveEdit, 3) else
//					if Assigned(Frm_BTN) then Frm_BTN01.Grid_Clear(lcsActiveEdit, 3);
//				end;
//
//				Result := True;
//				if chkUseMiniMap.Checked then SetPOIMapDisplay;
//      except
//        on e: exception do
//				begin
//					Assert(False, Format('Naver : �� - %d �� - %d : Daum : �� - %d �� - %d : wURL : %s',
//                              [iNaverSerachStartCnt, iNaverSerachEndCnt,
//                               iDaumSerachStartCnt , iDaumSerachEndCnt, wURL]));
//					iNaverSerachStartCnt :=0; iNaverSerachEndCnt := 0;
//					iDaumSerachStartCnt  :=0; iDaumSerachEndCnt := 0;
//
//          Result := False;
//				end;
//			end;
//		finally
//			js.Free;
//		end;
//
//		if GS_SEARCH_POTAL_FIRST then
//		begin
//			if lcsActiveEdit = 'meoStartArea' then
//			begin
//				if AdvStringGrid1.Cells[0,1] = '' then
//				begin
//          if (Length(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text) < 2) then Exit;
//          if sActieEdit <> lcsActiveEdit then Exit;
//
//          if noSearch then
//          begin
//            noSearch := False;
//            Exit;
//          end;
//					if ( Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Hint <> 'F4)���' ) And ( not bMouseDownSelect ) then     // 20130703  LYB  ��ݻ����ϰ�쿡�� ����� ���� �ڵ� ���� �ȵȰ� �Ѵ�.
//					begin
//						if AdvStringGrid3.Cells[0,0] <> '' then
//						begin
//							AdvStringGrid1.ShowSelection := False;
//							AdvStringGrid3.ShowSelection := True;
//
//							Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
//							Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
//							Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿
//							Frm_Main.Frm_JON01N[Self.Tag].lcsSta4 := D_HightlightTXT(AdvStringGrid3.Cells[2, 0]);//�α�POI
//							Frm_Main.Frm_JON01N[Self.Tag].lcsStaDocId := '';
//							Frm_Main.Frm_JON01N[Self.Tag].lcsStaCellSel := 'A';
//							Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text :=  Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 + ' ' + Frm_Main.Frm_JON01N[Self.Tag].lcsSta2
//																																+ ' ' + Frm_Main.Frm_JON01N[Self.Tag].lcsSta3;
//							SetDebugeWrite('JON30.lblStartAreaName.Text 12960 : ' + Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text);
//							MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);
//							Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);
//							Frm_Main.Frm_JON01N[Self.Tag].lcsConfAREA4 := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);
//							MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);
//              // 20120805 ��ǥ ���� üũ LYB
//              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
//              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
//              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿
//              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area4 := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);//��������
//              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area5 := D_HightlightTXT(AdvStringGrid3.Cells[2, 0]);//�α�POI
//              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X := AdvStringGrid3.Cells[4, 0];
//              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y := AdvStringGrid3.Cells[5, 0];
//              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X := '';
//              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y := '';
//              try
//                Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Gubun := '5';
//              finally
//                Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X;
//                Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y;
//                Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEXval := '';
//                Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEYval := '';
//              end;
//              Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'N';
//						end;
//					end;
//				end;
//      end else
//			if lcsActiveEdit = 'meoEndArea' then
//      begin
//				if AdvStringGrid5.Cells[0,1] = '' then
//        begin
//          if noSearch then
//          begin
//						noSearch := False;
//						Exit;
//          end;
//
//					if ( Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Hint <> 'F4)���') And ( not bMouseDownSelect ) then     // 20130703  LYB  ��ݻ����ϰ�쿡�� ������ ���� �ڵ� ���� �ȵȰ� �Ѵ�.
//					begin
//						if AdvStringGrid6.Cells[0,0] <> '' then
//						begin
//							AdvStringGrid5.ShowSelection := False;
//							AdvStringGrid6.ShowSelection := True;
//
//							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
//							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
//							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿
//							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := D_HightlightTXT(AdvStringGrid6.Cells[2, 0]);//�α�POI
//							Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := '';
//							Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := 'A';
//							Frm_Main.Frm_JON01N[Self.Tag].lcsStaDebug := Frm_Main.Frm_JON01N[Self.Tag].lcsStaUrl + '��' +
//																												D_HightlightTXT(AdvStringGrid1.Cells[00, 1]) + '/' +
//																												D_HightlightTXT(AdvStringGrid1.Cells[01, 1]) + '/' +
//																												D_HightlightTXT(AdvStringGrid1.Cells[02, 1]) + '/' +
//																												D_HightlightTXT(AdvStringGrid1.Cells[04, 1]) + '/' +
//																												D_HightlightTXT(AdvStringGrid1.Cells[05, 1]) + '/' +
//																												D_HightlightTXT(AdvStringGrid1.Cells[10, 1]);
//							Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption :=  Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 + ' ' +
//																																			 Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 + ' ' +
//																																			 Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3;
//
//							Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);
//							Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text := Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption + ' ' + Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption;
//							SetDebugeWrite('JON30.cxReEndArea.Text 13026 : ' + Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text);
//							MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text), clRed, [fsBold]);
//
//							try
//								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := AdvStringGrid6.Cells[4, 0];
//								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := AdvStringGrid6.Cells[5, 0];
//								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X := '';
//								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y := '';
//							finally
//								Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X;
//								Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y;
//								Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := '';
//								Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := '';
//							end;
//
//							Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'N';
//						end;
//					end;
//				end;
//      end else
//			if lcsActiveEdit = 'meoViaArea' then
//      begin
//        if AdvStringGrid8.Cells[0,1] = '' then
//        begin
//          if noSearch then
//          begin
//            noSearch := False;
//            Exit;
//          end;
//
//					if ( AdvStringGrid9.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
//          begin
//						AdvStringGrid8.ShowSelection := False;
//            AdvStringGrid9.ShowSelection := True;
//
//						Frm_Main.Frm_JON01N[Self.Tag].ViaSA1[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[6, 0]);// cxGViewArea.DataController.Values[ss_Row - 1, 0];
//						Frm_Main.Frm_JON01N[Self.Tag].ViaSA2[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[7, 0]);
//						Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[8, 0]);
//						Frm_Main.Frm_JON01N[Self.Tag].DocId[GS_VIA_Tag] := '';
//						Frm_Main.Frm_JON01N[Self.Tag].CellSel[GS_VIA_Tag] := 'A';
//						if GS_VIA_Tag = 1 then
//							Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption := D_HightlightTXT(AdvStringGrid9.Cells[6, 0])
//																														 + ' ' + D_HightlightTXT(AdvStringGrid9.Cells[7, 0])
//																														 + ' ' + D_HightlightTXT(AdvStringGrid9.Cells[8, 0])
//						else
//							Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption := D_HightlightTXT(AdvStringGrid9.Cells[6, 0])
//																																				+ ' ' + D_HightlightTXT(AdvStringGrid9.Cells[7, 0])
//																																				+ ' ' + D_HightlightTXT(AdvStringGrid9.Cells[8, 0]);
//
//						Frm_Main.Frm_JON01N[Self.Tag].ViaAreaDetail[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[1, 0]);
//
//						if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text
//															else Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text;
//
//						Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := AdvStringGrid9.Cells[4, 0];
//						Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] := AdvStringGrid9.Cells[5, 0];
//						ViaPos('', Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag], Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag]);
//
//						GS_Grid_VIA := 'N';
//					end;
//				end;
//      end else
//      if lcsActiveEdit = 'meoStartAreaCUT' then
//      begin
//        if AdvStringGrid1.Cells[0,1] = '' then
//        begin
//          if noSearch then
//          begin
//            noSearch := False;
//            Exit;
//          end;
//
//					if ( AdvStringGrid3.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
//          begin
//            AdvStringGrid1.ShowSelection := False;
//            AdvStringGrid3.ShowSelection := True;
//
//            Frm_CUT011.lcsSta1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
//            Frm_CUT011.lcsSta2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
//            Frm_CUT011.lcsSta3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿
//
//            Frm_CUT011.cxtSA1.Text := Frm_CUT011.lcsSta1;
//            Frm_CUT011.cxtSA2.Text := Frm_CUT011.lcsSta2;
//            Frm_CUT011.cxtSA3.Text := Frm_CUT011.lcsSta3;
//            Frm_CUT011.lblStartAreaName.Caption := Frm_CUT011.lcsSta1 + ' ' + Frm_CUT011.lcsSta2 + ' ' + Frm_CUT011.lcsSta3;
//
//            Frm_CUT011.cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);
//
//            Frm_CUT011.cxtStartXval.Text := AdvStringGrid3.Cells[4, 0];
//            Frm_CUT011.cxtStartYval.Text := AdvStringGrid3.Cells[5, 0];
//          end;
//        end;
//      end
//      else if lcsActiveEdit = 'meoEndAreaCUT' then
//      begin
//        if AdvStringGrid5.Cells[0,1] = '' then
//        begin
//          if noSearch then
//          begin
//            noSearch := False;
//            Exit;
//          end;
//
//          if ( AdvStringGrid6.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
//          begin
//            AdvStringGrid5.ShowSelection := False;
//            AdvStringGrid6.ShowSelection := True;
//
//            Frm_CUT011.lcsEnd1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
//            Frm_CUT011.lcsEnd2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
//            Frm_CUT011.lcsEnd3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿
//
//						Frm_CUT011.cxtEd1.Text := Frm_CUT011.lcsEnd1;
//            Frm_CUT011.cxtEd2.Text := Frm_CUT011.lcsEnd2;
//            Frm_CUT011.cxtEd3.Text := Frm_CUT011.lcsEnd3;
//
//            Frm_CUT011.lblEndAreaName.Caption := Frm_CUT011.lcsEnd1 + ' ' + Frm_CUT011.lcsEnd2 + ' ' + Frm_CUT011.lcsEnd3;
//
//            Frm_CUT011.cxtEndAreaDetail.Text := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);
//
//            Frm_CUT011.cxtEndXval.Text := AdvStringGrid6.Cells[4, 0];
//            Frm_CUT011.cxtEndYval.Text := AdvStringGrid6.Cells[5, 0];
//          end;
//        end;
//			end	else
//			if lcsActiveEdit = 'meoStartAreaWOR11' then
//			begin
//				if AdvStringGrid1.Cells[0,1] = '' then
//				begin
//					if noSearch then
//					begin
//            noSearch := False;
//            Exit;
//          end;
//
//          if ( AdvStringGrid3.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
//          begin
//            AdvStringGrid1.ShowSelection := False;
//            AdvStringGrid3.ShowSelection := True;
//
//            Frm_WOR11.lcsSta1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
//            Frm_WOR11.lcsSta2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
//            Frm_WOR11.lcsSta3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿
//
//            Frm_WOR11.cxtSA1.Text := Frm_WOR11.lcsSta1;
//            Frm_WOR11.cxtSA2.Text := Frm_WOR11.lcsSta2;
//            Frm_WOR11.cxtSA3.Text := Frm_WOR11.lcsSta3;
//            Frm_WOR11.lblStartAreaName.Caption := Frm_WOR11.lcsSta1 + ' ' + Frm_WOR11.lcsSta2 + ' ' + Frm_WOR11.lcsSta3;
//
//            Frm_WOR11.cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);
//
//            Frm_WOR11.cxtStartXval.Text := AdvStringGrid3.Cells[4, 0];
//            Frm_WOR11.cxtStartYval.Text := AdvStringGrid3.Cells[5, 0];
//					end;
//        end;
//			end
//			else if lcsActiveEdit = 'meoEndAreaWOR11' then
//			begin
//				if AdvStringGrid5.Cells[0,1] = '' then
//				begin
//					if noSearch then
//          begin
//            noSearch := False;
//            Exit;
//          end;
//
//          if ( AdvStringGrid6.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
//          begin
//            AdvStringGrid5.ShowSelection := False;
//            AdvStringGrid6.ShowSelection := True;
//
//            Frm_WOR11.lcsEnd1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
//            Frm_WOR11.lcsEnd2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
//            Frm_WOR11.lcsEnd3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿
//
//            Frm_WOR11.cxtEd1.Text := Frm_WOR11.lcsEnd1;
//            Frm_WOR11.cxtEd2.Text := Frm_WOR11.lcsEnd2;
//            Frm_WOR11.cxtEd3.Text := Frm_WOR11.lcsEnd3;
//
//            Frm_WOR11.lblEndAreaName.Caption := Frm_WOR11.lcsEnd1 + ' ' + Frm_WOR11.lcsEnd2 + ' ' + Frm_WOR11.lcsEnd3;
//
//            Frm_WOR11.cxtEndAreaDetail.Text := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);
//
//            Frm_WOR11.cxtEndXval.Text := AdvStringGrid6.Cells[4, 0];
//						Frm_WOR11.cxtEndYval.Text := AdvStringGrid6.Cells[5, 0];
//          end;
//				end;
//			end	else
//			if lcsActiveEdit = 'meoCallBell' then
//			begin
//				if AdvStringGrid5.Cells[0,1] = '' then
//				begin
//					if noSearch then
//          begin
//						noSearch := False;
//						Exit;
//          end;
//
//          if ( AdvStringGrid6.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
//          begin
//            AdvStringGrid5.ShowSelection := False;
//            AdvStringGrid6.ShowSelection := True;
//
//						Frm_BTN01.lcsCallBell1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
//						Frm_BTN01.lcsCallBell2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
//						Frm_BTN01.lcsCallBell3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿
//
//						Frm_BTN01.lbUpsoAreaName.Caption := Frm_BTN01.lcsCallBell1 + ' ' + Frm_BTN01.lcsCallBell2 + ' ' + Frm_BTN01.lcsCallBell3;
//
//						Frm_BTN01.edtUpsoAreaDetail.Caption := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);
//
//						Frm_BTN01.edtXval.Caption := AdvStringGrid6.Cells[4, 0];
//						Frm_BTN01.edtYval.Caption := AdvStringGrid6.Cells[5, 0];
//          end;
//        end;
//      end;
//    end;
//	finally
//    FreeAndNil(slTmp);
//  end;
//end;

function TFrm_JON30.proc_Portal_v5_GetPOILast(wURL, vRandom : string) : Boolean;
var
	js : TlkJSONobject;
	ja, jc : TlkJSONlist;

  i : Integer;
  sx, sy, sXX, sPOI, sKm, sRCity, sTmp : string;
	jon01_txt : string;
	slTmp : TStringList;
	sAddress : string;
	AAdvGrid : TAdvStringGrid;
	ATEXT : TcxMemo;
begin
	SetDebugeWrite('JON30.proc_Portal_V5_GetPOI');
	slTmp := TStringList.Create;
  try
		Result := False;

		if Trim(wURL) = '' then Exit;
		if GT_USERIF.ID = 'sntest' then
  		SetDebugeWrite('Naver B : ActiveRandom - ' + vRandom + ', - ' + Trim(wURL));
		// ��ȸ�� �˻�� �ʰ� �ö��� �־ ���� �������� ��ȸ�� ��ȣ�� Ʋ���� �н�
    if sNRanDom <> vRandom  then Exit;
    if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then Exit;
		if Pos('ADULT_REDIRECT', wURL) > 0 then Exit;

		if ( Pos('HMAC_AUTH_FAILED', wURL) > 0 ) Or ( Pos('HMAC_EXPIRED', wURL) > 0 ) then
    begin
			inc(gNaverV5ErrorCnt);
			gNaverCookie := '';
			SetDebugeWrite('Naver V5 B : Error - ' + Trim(wURL));
			Assert(False, 'Naver V5 B : Error - ' + Trim(wURL));
      Exit;
		end;

		if Pos('������̽� PC �Ǵ� ��Ʈ��ũ����', wURL) > 0 then
		begin
			if (GB_PORTAL_AutoChk) and (gNaverV5ChangeCnt > 2)  then
			begin
				pSelect_Portal('D');
				if Assigned(Frm_JON30S) then
				begin
					Frm_JON30S.RbSelN.Tag := 1;
					Frm_JON30S.RbSelD.Checked := True;
					Frm_JON30S.RbSelN.Tag := 0;
				end;
//				gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0;  //V4����, ��ȯȽ�� �ʱ�ȭ
				gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0;  //V5����, ��ȯȽ�� �ʱ�ȭ
				SetDebugeWrite('Naver V5 - Daum ����');
				Assert(False, 'Naver V5 - Daum ����');
			end;
			inc(gNaverV5ErrorCnt);
			Assert(False, 'Naver V5 B : Error - ' + Trim(wURL));
			Exit;
		end;

		if Pos('{"meta":{', wURL) < 1 then  //v5������ �´��� Ȯ��
		begin
			if (GB_PORTAL_AutoChk) and (gNaverV5ChangeCnt > 2)  then
			begin
				pSelect_Portal('D');
				if Assigned(Frm_JON30S) then
				begin
					Frm_JON30S.RbSelN.Tag := 1;
					Frm_JON30S.RbSelD.Checked := True;
					Frm_JON30S.RbSelN.Tag := 0;
				end;
//				gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0;  //V4����, ��ȯȽ�� �ʱ�ȭ
				gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0;  //V5����, ��ȯȽ�� �ʱ�ȭ
				SetDebugeWrite('Naver V5 - Daum ����');
				Assert(False, 'Naver V5 - Daum ����');
			end;
			inc(gNaverV5ErrorCnt);
			Assert(False, 'Naver V5 B : Error - ' + Trim(wURL));
			Exit;
		end;

		gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0; //V4����Ƚ��, ��ȯȽ�� �ʱ�ȭ

		ATEXT := TcxMemo.create(nil);
		if lcsActiveEdit = 'meoStartArea' then
		begin
			ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoStartArea;
			if Length(ATEXT.Text) < 2 then exit;
			if sActieEdit <> lcsActiveEdit then Exit;
		end else
		if lcsActiveEdit = 'meoEndArea' then
		begin
			ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoEndArea;
			if Length(ATEXT.Text) < 2 then exit;
			if sActieEdit <> lcsActiveEdit then Exit;
		end;             

		js := TlkJSON.ParseText(wURL) as TlkJSONobject;
    ja := js.Field['place'] as TlkJSONlist;
   	if ja.count = 0 then
  		ja := js.Field['address'] as TlkJSONlist;
    try
      try
				if ja.count = 0 then
				begin
					gb2ndSearch := True; //Ȯ��˻� �ʿ�
					trm_2ndSearch.Interval := 1000;
					trm_2ndSearch.enabled := True;
				end else
				if ja.count > 0 then
        begin
					gb2ndSearch := False; //Ȯ��˻� ���� ����
					Proc_2ndSearchIng(Self.Tag, gb2ndSearch);

					btnPortalE.Visible := False;
          if UpperCase(ja.Child[i].Field['type'].Value) = 'ADDRESS' then
					begin
            jon01_txt := pSearchPortalInitAndTxt;

            for i := 0 to ja.Count - 1 do
            begin
              if UpperCase(ja.Child[i].Field['type'].Value) = 'PLACE' then Continue;

              sAddress := ja.Child[i].Field['fullAddress'].Value;

							if isRoadAddress(sAddress) then Continue;     // ���̹����θ��ּҴ� �������� ǥ�������� �ʾƼ� �н�

							jc := ja.Child[i].Field['shortAddress'] as TlkJSONlist;

              sXX := jc.Child[1].Value;

							procAddressDelimited(sAddress, ' ', slTmp);
							// 20130823  LYB  ���̹� �˻��� �ּҿ� ���ڰ� ������ ǥ�� ������ ����..
							if Not StrToIntDef(RightStr(Trim(slTmp.DelimitedText), 1), -1) In [0,1,2,3,4,5,6,7,8,9] then Continue;

              sy      := '';
              sx      := '';
              sPOI    := '';
              sRCity  := '';
              if slTmp.Count >= 1  then
							begin
                sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
                sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ

                proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
							end;

              if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or
                 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid3 else
              if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or
                 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid6 else
              if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid9;

              if ja.Count > AAdvGrid.RowCount - 1 then
                if (i + 1 > 1) then AAdvGrid.AddRow;
              AAdvGrid.Cells[6, i] := sRCity;//�õ�
              AAdvGrid.Cells[7, i] := slTmp[1];  //�ñ���
              AAdvGrid.Cells[8, i] := slTmp[2];  //���鵿

              sTmp := D_HightlightTXT(AAdvGrid.Cells[6, i]) + ' ' +
                      D_HightlightTXT(AAdvGrid.Cells[7, i]) + ' ' +
                      D_HightlightTXT(AAdvGrid.Cells[8, i]);

              AAdvGrid.Cells[0, i] := sTmp;

              AAdvGrid.Cells[1, i] := M_HightlightTXT(sXX, jon01_txt, 1);//������
              AAdvGrid.Cells[2, i] := sPOI;//�α�POI
              if StrToIntDef(sKm, -1) > 0 then AAdvGrid.Cells[3, i] := '��'+sKm else	AAdvGrid.Cells[3, i] := sKm;//�Ÿ�
              AAdvGrid.Cells[4, i] := sx;//Lat
              AAdvGrid.Cells[5, i] := sy;//Lon
							AAdvGrid.Cells[12, i] := '';
						 end;
					end else
					if (UpperCase(ja.Child[i].Field['type'].Value) = 'PLACE') and (GS_SEARCH_POTAL) then
					begin
						if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or
							 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid3 else
						if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or
							 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid6 else
						if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid9;

						jon01_txt := pSearchPortalInitAndTxt;

						for i := 0 to ja.Count - 1 do
            begin
              if UpperCase(ja.Child[i].Field['type'].Value) = 'ADDRESS' then Continue;

							// �����ּҰ� ������쿡�� ����  2019.12.11
							try
								sAddress := ja.Child[i].Field['jibunAddress'].Value;
  							procAddressDelimited(sAddress, ' ', slTmp);
							except
								Continue;
							end;

							sPOI := '';

							sXX := ja.Child[i].Field['title'].Value;
							sXX := StringReplace(sXX, ' ','&nbsp;', [rfReplaceAll]);  // ������ &nbsp;�� ġȯ�ϴ� ���� : ��ũ�Ⱑ ������ ������ ���� �������� ���ڰ� ������ ����(��ũ�⸦ �ø��� ����)
							sXX := M_HightlightTXT(sXX, jon01_txt, 1);
							if pos('>', sXX) <= 0 then sXX := StringReplace(sXX, '&nbsp;',' ', [rfReplaceAll]);

							sy      := '';
							sx      := '';
							sRCity  := '';

							if slTmp.Count >= 2 then
              begin
                sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
                sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ

								proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
              end;

							if (i + 1 > 1) then AAdvGrid.AddRow;
							AAdvGrid.Cells[6, i] := sRCity;//�õ�
							AAdvGrid.Cells[7, i] := slTmp[1];  //�ñ���
							AAdvGrid.Cells[8, i] := slTmp[2];  //���鵿

							sTmp := D_HightlightTXT(AAdvGrid.Cells[6, i]) + ' ' +
											D_HightlightTXT(AAdvGrid.Cells[7, i]) + ' ' +
											D_HightlightTXT(AAdvGrid.Cells[8, i]);

							AAdvGrid.Cells[0, i] := M_HightlightTXT(sTmp, jon01_txt, 1);

							AAdvGrid.Cells[1, i] := sXX;//������
							AAdvGrid.Cells[2, i] := sPOI;//�α�POI
							if StrToIntDef(sKm, -1) > 0 then AAdvGrid.Cells[3, i] := '��'+sKm else	AAdvGrid.Cells[3, i] := sKm;//�Ÿ�
							AAdvGrid.Cells[4, i] := sx;//Lat
							AAdvGrid.Cells[5, i] := sy;//Lon
  						AAdvGrid.Cells[12, i] := sAddress;
						end;
					end;
					if GS_SEARCH_WISE_NAVER_COMPARE then tmrWNSUM.Enabled := True;
				end else
        begin
					Grid_Init(lcsActiveEdit, 3);
					if Assigned(Frm_CUT011) then Frm_CUT011.Grid_Clear(lcsActiveEdit, 3) else
					if Assigned(Frm_BTN) then Frm_BTN01.Grid_Clear(lcsActiveEdit, 3);
				end;

				Result := True;
				if chkUseMiniMap.Checked then SetPOIMapDisplay;
      except
        on e: exception do
				begin
					Assert(False, Format('Naver : �� - %d �� - %d : Daum : �� - %d �� - %d : wURL : %s',
                              [iNaverSerachStartCnt, iNaverSerachEndCnt,
                               iDaumSerachStartCnt , iDaumSerachEndCnt, wURL]));
					iNaverSerachStartCnt :=0; iNaverSerachEndCnt := 0;
					iDaumSerachStartCnt  :=0; iDaumSerachEndCnt := 0;

          Result := False;
				end;
			end;
		finally
      js.Free;
		end;
		if GS_SEARCH_POTAL_FIRST then
		begin
			if lcsActiveEdit = 'meoStartArea' then
			begin
				if AdvStringGrid1.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

					if ( Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Hint <> 'F4)���' ) And ( not bMouseDownSelect ) then     // 20130703  LYB  ��ݻ����ϰ�쿡�� ����� ���� �ڵ� ���� �ȵȰ� �Ѵ�.
					begin
						if AdvStringGrid3.Cells[0,0] <> '' then
						begin
							AdvStringGrid1.ShowSelection := False;
							AdvStringGrid3.ShowSelection := True;

							Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
							Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿
							Frm_Main.Frm_JON01N[Self.Tag].lcsSta4 := D_HightlightTXT(AdvStringGrid3.Cells[2, 0]);//�α�POI
							Frm_Main.Frm_JON01N[Self.Tag].lcsStaDocId := '';
							Frm_Main.Frm_JON01N[Self.Tag].lcsStaCellSel := 'A';
							Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text :=  Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 + ' ' + Frm_Main.Frm_JON01N[Self.Tag].lcsSta2
																																+ ' ' + Frm_Main.Frm_JON01N[Self.Tag].lcsSta3;
							SetDebugeWrite('JON30.lblStartAreaName.Text 12960 : ' + Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text);
							MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);
							Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].lcsConfAREA4 := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);
							MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);

              // 20120805 ��ǥ ���� üũ LYB
              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area1 := D_HightlightTXT(AAdvGrid.Cells[6, i+1]);
              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area2 := D_HightlightTXT(AAdvGrid.Cells[7, i+1]);
              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area3 := D_HightlightTXT(AAdvGrid.Cells[8, i+1]);
              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area4 := D_HightlightTXT(AAdvGrid.Cells[1, i+1]);
              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area5 := D_HightlightTXT(AAdvGrid.Cells[2, i+1]);
              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X := sx;
              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y := sy;
              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X := '';
              Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y := '';
              try
                Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Gubun := '4';
              finally
                Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X;
                Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y;
                Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEXval := '';
                Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEYval := '';
              end;
              Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'N';
						end;
					end;
				end;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
				if AdvStringGrid5.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

					if ( Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Hint <> 'F4)���') And ( not bMouseDownSelect ) then     // 20130703  LYB  ��ݻ����ϰ�쿡�� ������ ���� �ڵ� ���� �ȵȰ� �Ѵ�.
					begin
						if AdvStringGrid6.Cells[0,0] <> '' then
						begin
							AdvStringGrid5.ShowSelection := False;
							AdvStringGrid6.ShowSelection := True;

							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿
							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := D_HightlightTXT(AdvStringGrid6.Cells[2, 0]);//�α�POI
							Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := '';
							Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := 'A';
							Frm_Main.Frm_JON01N[Self.Tag].lcsStaDebug := Frm_Main.Frm_JON01N[Self.Tag].lcsStaUrl + '��' +
																													 D_HightlightTXT(AdvStringGrid1.Cells[00, 1]) + '/' +
																													 D_HightlightTXT(AdvStringGrid1.Cells[01, 1]) + '/' +
																													 D_HightlightTXT(AdvStringGrid1.Cells[02, 1]) + '/' +
																													 D_HightlightTXT(AdvStringGrid1.Cells[04, 1]) + '/' +
																													 D_HightlightTXT(AdvStringGrid1.Cells[05, 1]) + '/' +
																													 D_HightlightTXT(AdvStringGrid1.Cells[10, 1]);
							Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption :=  Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 + ' ' +
																																			 Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 + ' ' +
																																			 Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3;

							Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text := Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption + ' ' + Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption;
							SetDebugeWrite('JON30.cxReEndArea.Text 13026 : ' + Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text);
							MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text), clRed, [fsBold]);

							try
								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := AdvStringGrid6.Cells[4, 0];
								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := AdvStringGrid6.Cells[5, 0];
								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X := '';
								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y := '';
							finally
								Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X;
								Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y;
								Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := '';
								Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := '';
							end;

							Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'N';
						end;
					end;
				end;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        if AdvStringGrid8.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid9.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid8.ShowSelection := False;
            AdvStringGrid9.ShowSelection := True;

						Frm_Main.Frm_JON01N[Self.Tag].ViaSA1[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[6, 0]);// cxGViewArea.DataController.Values[ss_Row - 1, 0];
						Frm_Main.Frm_JON01N[Self.Tag].ViaSA2[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[7, 0]);
						Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[8, 0]);
						Frm_Main.Frm_JON01N[Self.Tag].DocId[GS_VIA_Tag] := '';
						Frm_Main.Frm_JON01N[Self.Tag].CellSel[GS_VIA_Tag] := 'A';
						if GS_VIA_Tag = 1 then
							Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption := D_HightlightTXT(AdvStringGrid9.Cells[6, 0])
																															+ ' ' + D_HightlightTXT(AdvStringGrid9.Cells[7, 0])
																															+ ' ' + D_HightlightTXT(AdvStringGrid9.Cells[8, 0])
						else
							Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption := D_HightlightTXT(AdvStringGrid9.Cells[6, 0])
																																				 + ' ' + D_HightlightTXT(AdvStringGrid9.Cells[7, 0])
																																				 + ' ' + D_HightlightTXT(AdvStringGrid9.Cells[8, 0]);

						Frm_Main.Frm_JON01N[Self.Tag].ViaAreaDetail[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[1, 0]);

						if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text
															else Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text;

						Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := AdvStringGrid9.Cells[4, 0];
						Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] := AdvStringGrid9.Cells[5, 0];
						ViaPos('', Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag], Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag]);

						GS_Grid_VIA := 'N';
					end;
        end;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
      begin
        if AdvStringGrid1.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid3.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid1.ShowSelection := False;
            AdvStringGrid3.ShowSelection := True;
  //-          AdvStringGrid3.FocusCell(0,0);

            Frm_CUT011.lcsSta1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
            Frm_CUT011.lcsSta2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
            Frm_CUT011.lcsSta3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿

            Frm_CUT011.cxtSA1.Text := Frm_CUT011.lcsSta1;
            Frm_CUT011.cxtSA2.Text := Frm_CUT011.lcsSta2;
            Frm_CUT011.cxtSA3.Text := Frm_CUT011.lcsSta3;
            Frm_CUT011.lblStartAreaName.Caption := Frm_CUT011.lcsSta1 + ' ' + Frm_CUT011.lcsSta2 + ' ' + Frm_CUT011.lcsSta3;

            Frm_CUT011.cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);

            Frm_CUT011.cxtStartXval.Text := AdvStringGrid3.Cells[4, 0];
            Frm_CUT011.cxtStartYval.Text := AdvStringGrid3.Cells[5, 0];
          end;
        end;
      end
      else if lcsActiveEdit = 'meoEndAreaCUT' then
      begin
        if AdvStringGrid5.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid6.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid5.ShowSelection := False;
            AdvStringGrid6.ShowSelection := True;

            Frm_CUT011.lcsEnd1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
            Frm_CUT011.lcsEnd2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
            Frm_CUT011.lcsEnd3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿

            Frm_CUT011.cxtEd1.Text := Frm_CUT011.lcsEnd1;
            Frm_CUT011.cxtEd2.Text := Frm_CUT011.lcsEnd2;
            Frm_CUT011.cxtEd3.Text := Frm_CUT011.lcsEnd3;

            Frm_CUT011.lblEndAreaName.Caption := Frm_CUT011.lcsEnd1 + ' ' + Frm_CUT011.lcsEnd2 + ' ' + Frm_CUT011.lcsEnd3;

            Frm_CUT011.cxtEndAreaDetail.Text := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);

            Frm_CUT011.cxtEndXval.Text := AdvStringGrid6.Cells[4, 0];
            Frm_CUT011.cxtEndYval.Text := AdvStringGrid6.Cells[5, 0];
          end;
        end;
			end	else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				if AdvStringGrid1.Cells[0,1] = '' then
				begin
					if noSearch then
					begin
            noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid3.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid1.ShowSelection := False;
            AdvStringGrid3.ShowSelection := True;

            Frm_WOR11.lcsSta1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
            Frm_WOR11.lcsSta2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
            Frm_WOR11.lcsSta3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿

            Frm_WOR11.cxtSA1.Text := Frm_WOR11.lcsSta1;
            Frm_WOR11.cxtSA2.Text := Frm_WOR11.lcsSta2;
            Frm_WOR11.cxtSA3.Text := Frm_WOR11.lcsSta3;
            Frm_WOR11.lblStartAreaName.Caption := Frm_WOR11.lcsSta1 + ' ' + Frm_WOR11.lcsSta2 + ' ' + Frm_WOR11.lcsSta3;

            Frm_WOR11.cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);

            Frm_WOR11.cxtStartXval.Text := AdvStringGrid3.Cells[4, 0];
            Frm_WOR11.cxtStartYval.Text := AdvStringGrid3.Cells[5, 0];
					end;
        end;
			end
			else if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				if AdvStringGrid5.Cells[0,1] = '' then
				begin
					if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid6.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid5.ShowSelection := False;
            AdvStringGrid6.ShowSelection := True;

            Frm_WOR11.lcsEnd1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
            Frm_WOR11.lcsEnd2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
            Frm_WOR11.lcsEnd3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿

            Frm_WOR11.cxtEd1.Text := Frm_WOR11.lcsEnd1;
            Frm_WOR11.cxtEd2.Text := Frm_WOR11.lcsEnd2;
            Frm_WOR11.cxtEd3.Text := Frm_WOR11.lcsEnd3;

            Frm_WOR11.lblEndAreaName.Caption := Frm_WOR11.lcsEnd1 + ' ' + Frm_WOR11.lcsEnd2 + ' ' + Frm_WOR11.lcsEnd3;

            Frm_WOR11.cxtEndAreaDetail.Text := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);

            Frm_WOR11.cxtEndXval.Text := AdvStringGrid6.Cells[4, 0];
						Frm_WOR11.cxtEndYval.Text := AdvStringGrid6.Cells[5, 0];
          end;
				end;
			end	else
			if lcsActiveEdit = 'meoCallBell' then
			begin
				if AdvStringGrid5.Cells[0,1] = '' then
				begin
					if noSearch then
          begin
            noSearch := False;
						Exit;
          end;

          if ( AdvStringGrid6.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid5.ShowSelection := False;
            AdvStringGrid6.ShowSelection := True;

						Frm_BTN01.lcsCallBell1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
						Frm_BTN01.lcsCallBell2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
						Frm_BTN01.lcsCallBell3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿

						Frm_BTN01.lbUpsoAreaName.Caption := Frm_BTN01.lcsCallBell1 + ' ' + Frm_BTN01.lcsCallBell2 + ' ' + Frm_BTN01.lcsCallBell3;

						Frm_BTN01.edtUpsoAreaDetail.Caption := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);

						Frm_BTN01.edtXval.Caption := AdvStringGrid6.Cells[4, 0];
						Frm_BTN01.edtYval.Caption := AdvStringGrid6.Cells[5, 0];
          end;
        end;
      end;
    end;
	finally
    FreeAndNil(slTmp);
  end;
end;

function TFrm_JON30.proc_Portal_v5_New_GetPOILast(wURL, vRandom : string) : Boolean;
var
  js : TlkJSONobject;
	ja, jc : TlkJSONlist;

  i, iPos, iCnt : Integer;
	str, sx, sy, sXX, sPOI, sKm, sRCity, sCate, sTmp : string;
	jon01_txt : string;
  slTmp : TStringList;
	SCLat, SCLon : string;
	row3, row4, sAddress : string;
  j: Integer;
	AAdvGrid : TAdvStringGrid;
	ATEXT : TcxMemo;
begin
	SetDebugeWrite('JON30.proc_Portal_v5_New_GetPOILast');
  slTmp := TStringList.Create;
  try
		Result := False;

		if Trim(wURL) = '' then Exit;
    if GT_USERIF.ID = 'sntest' then
			SetDebugeWrite('Naver V5 B search: ActiveRandom - ' + vRandom + ', - ' + Trim(wURL));
		// ��ȸ�� �˻�� �ʰ� �ö��� �־ ���� �������� ��ȸ�� ��ȣ�� Ʋ���� �н�
    if sNRanDom <> vRandom  then Exit;
		if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then Exit;
		if Pos('ADULT_REDIRECT', wURL) > 0 then Exit;

		if ( Pos('HMAC_AUTH_FAILED', wURL) > 0 ) Or ( Pos('HMAC_EXPIRED', wURL) > 0 ) then
		begin
			gNaverCookie := '';
			SetDebugeWrite('Naver V5 B search: Error - ' + Trim(wURL));
			Assert(False, 'Naver V5 B search: Error - ' + Trim(wURL));
			Exit;
		end;

		if Pos('������̽� PC �Ǵ� ��Ʈ��ũ����', wURL) > 0 then
		begin
			Assert(False, 'Naver V5 B search: Error - ' + Trim(wURL));
			Exit;
		end;

		if Pos('{"result":{', wURL) < 1 then  //v5������ �´��� Ȯ��
		begin
			Assert(False, 'Naver V5 B search: Error - ' + Trim(wURL));
			Exit;
		end;

		btnPortalE.Visible := False;

		ATEXT := TcxMemo.create(nil);
		if lcsActiveEdit = 'meoStartArea' then
		begin
			ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoStartArea;
			if Length(ATEXT.Text) < 2 then exit;
			if sActieEdit <> lcsActiveEdit then Exit;
		end else
		if lcsActiveEdit = 'meoEndArea' then
		begin
			ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoEndArea;
			if Length(ATEXT.Text) < 2 then exit;
			if sActieEdit <> lcsActiveEdit then Exit;
		end;             

		js := TlkJSON.ParseText(wURL) as TlkJSONobject;
		try
			try
        if UpperCase(js.Field['result'].Field['type'].Value) = 'ADDRESS' then
        begin
          if UpperCase(js.Field['result'].Field['address'].Field['subType'].Value) = 'ROAD-ADDRESS' then
					begin
            iCnt := strToIntDef(js.Field['result'].Field['address'].Field['roadAddress'].Field['totalCount'].Value, 0);
          end else
          if UpperCase(js.Field['result'].Field['address'].Field['subType'].Value) = 'JIBUN-ADDRESS' then
          begin
            iCnt := strToIntDef(js.Field['result'].Field['address'].Field['jibunsAddress'].Field['totalCount'].Value, 0);
          end;
				end else
        if UpperCase(js.Field['result'].Field['type'].Value) = 'PLACE' then
        begin
           iCnt := strToIntDef(js.Field['result'].Field['place'].Field['totalCount'].Value, 0);
        end;

				if iCnt > 0 then
				begin
					if UpperCase(js.Field['result'].Field['type'].Value) = 'ADDRESS' then
					begin
            if UpperCase(js.Field['result'].Field['address'].Field['subType'].Value) = 'ROAD-ADDRESS' then
            begin
  						ja := js.Field['result'].Field['address'].Field['roadAddress'].Field['list'] as TlkJSONlist;
            end else
            if UpperCase(js.Field['result'].Field['address'].Field['subType'].Value) = 'JIBUN-ADDRESS' then
            begin
  						ja := js.Field['result'].Field['address'].Field['jibunsAddress'].Field['list'] as TlkJSONlist;
            end;

						jon01_txt := pSearchPortalInitAndTxt;

            for i := 0 to ja.Count - 1 do
            begin
							str := '11:';
              //str := str +' '+ ja.Child[i].Field['name'].Value;       // ���θ�Ī
              sXX := ja.Child[i].Field['display'].Value;                // �ּ� : [�� + ����] ���� �ڸ���.
              // ["����Ư���� ���ʱ� <em><strong>���絿 206-7</strong></em>"]
              iPos:= Pos('rong>',sXX);
              sXX := Copy(sXX,iPos+5,Pos('</str',sXX)-(iPos+5));
              str := str +' '+ sXX;

              if UpperCase(js.Field['result'].Field['address'].Field['subType'].Value) = 'JIBUN-ADDRESS' then
              begin
                sAddress := ja.Child[i].Field['fullAddress'].Value;
              end else
              begin
                try
                  sAddress := ja.Child[i].Field['mappedAddress'].Field['fullAddress'].Value;
                  if Pos(StringReplace(sXX, ' ','', [rfReplaceAll]), StringReplace(gTFindData.sFullWord, ' ','', [rfReplaceAll])) > 0  then
                    sXX := sXX + '{' + ja.Child[i].Field['mappedAddress'].Field['abbrAddress'].Value + '}'
                  else
                    sXX := ja.Child[i].Field['mappedAddress'].Field['abbrAddress'].Value + '{' + sXX + '}' ;
                except
                  sAddress := '';
                end;

                if sAddress = '' then
                  sAddress := ja.Child[i].Field['fullAddress'].Value;
              end;

							procAddressDelimited(sAddress, ' ', slTmp);

							// 20130823  LYB  ���̹� �˻��� �ּҿ� ���ڰ� ������ ǥ�� ������ ����..
							if Not StrToIntDef(RightStr(Trim(slTmp.DelimitedText), 1), -1) In [0,1,2,3,4,5,6,7,8,9] then Continue;

							sy     := '';
							sx     := '';
							sPOI   := '';
							sRCity := '';
							if slTmp.Count >= 1  then
							begin
                sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
                sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ

                proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
							end;

							if lcsActiveEdit = 'meoStartArea' then
							begin
								if Length(ATEXT.text) < 2 then exit;
								if sActieEdit <> lcsActiveEdit then Exit;
							end else
							if lcsActiveEdit = 'meoEndArea' then
							begin
								if Length(ATEXT.Text) < 2 then exit;
								if sActieEdit <> lcsActiveEdit then Exit;
							end;

              if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or
                 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid3 else
              if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or
                 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid6 else
              if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid9;

              if ja.Count > AAdvGrid.RowCount - 1 then
                if (i + 1 > 1) then AAdvGrid.AddRow;
              AAdvGrid.Cells[6, i] := sRCity;//�õ�
              AAdvGrid.Cells[7, i] := slTmp[1];  //�ñ���
              AAdvGrid.Cells[8, i] := slTmp[2];  //���鵿

              sTmp := D_HightlightTXT(AAdvGrid.Cells[6, i]) + ' ' +
                      D_HightlightTXT(AAdvGrid.Cells[7, i]) + ' ' +
                      D_HightlightTXT(AAdvGrid.Cells[8, i]);

              AAdvGrid.Cells[0, i] := sTmp;
              AAdvGrid.Cells[1, i] := M_HightlightTXT(sXX, jon01_txt, 1);//������
              AAdvGrid.Cells[2, i] := sPOI;//�α�POI
              if StrToIntDef(sKm, -1) > 0 then AAdvGrid.Cells[3, i] := '��'+sKm else	AAdvGrid.Cells[3, i] := sKm;//�Ÿ�
              AAdvGrid.Cells[4, i] := sx;//Lat
              AAdvGrid.Cells[5, i] := sy;//Lon
							AAdvGrid.Cells[12, i] := '';
            end;
					end else
					if (UpperCase(js.Field['result'].Field['type'].Value) = 'PLACE') and (GS_SEARCH_POTAL) then
					begin
						if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or
							 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid3 else
						if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or
							 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid6 else
						if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid9;

						ja := js.Field['result'].Field['place'].Field['list'] as TlkJSONlist;

            if ja.Count <= 0 then
						begin
							Grid_Init(lcsActiveEdit, 3);
              Exit;
            end;

            jon01_txt := pSearchPortalInitAndTxt;

            for i := 0 to ja.Count - 1 do
            begin
              try
                jc := ja.Child[i].Field['category'] as TlkJSONlist;
                for j := 0 to jc.Count - 1 do
                begin
                  if j = 0 then sCate := jc.Child[j].Value
                           else sCate := sCate + '-' + jc.Child[j].Value;
                end;
                sPOI := '��' + sCate + '��';    // �� �α� POI�˻� �ɼ��� �������� ī�װ� �׸��� �̰��� ǥ��  2017.12.26
              except
                sPOI := '';
              end;

							try
								sAddress := ja.Child[i].Field['address'].Value;
  							procAddressDelimited(sAddress, ' ', slTmp);
							except
								Continue;
							end;

							sXX := ja.Child[i].Field['name'].Value;
              sXX := StringReplace(sXX, ' ','&nbsp;', [rfReplaceAll]);  // ������ &nbsp;�� ġȯ�ϴ� ���� : ��ũ�Ⱑ ������ ������ ���� �������� ���ڰ� ������ ����(��ũ�⸦ �ø��� ����)
              sXX := M_HightlightTXT(sXX, jon01_txt, 1);
              if pos('>', sXX) <= 0 then sXX := StringReplace(sXX, '&nbsp;',' ', [rfReplaceAll]);

              sy      := '';
							sx      := '';
              sRCity  := '';
              if slTmp.Count >= 2 then
              begin
                sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
                sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ

								proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
              end;

							if (i + 1 > 1) then AAdvGrid.AddRow;
							AAdvGrid.Cells[6, i] := sRCity;//�õ�
							AAdvGrid.Cells[7, i] := slTmp[1];  //�ñ���
							AAdvGrid.Cells[8, i] := slTmp[2];  //���鵿

							sTmp := D_HightlightTXT(AAdvGrid.Cells[6, i]) + ' ' +
											D_HightlightTXT(AAdvGrid.Cells[7, i]) + ' ' +
											D_HightlightTXT(AAdvGrid.Cells[8, i]);

							AAdvGrid.Cells[0, i] := M_HightlightTXT(sTmp, jon01_txt, 1);
							AAdvGrid.Cells[1, i] := sXX;//������
							AAdvGrid.Cells[2, i] := sPOI;//�α�POI
							if StrToIntDef(sKm, -1) > 0 then AAdvGrid.Cells[3, i] := '��'+sKm else	AAdvGrid.Cells[3, i] := sKm;//�Ÿ�
							AAdvGrid.Cells[4, i] := sx;//Lat
							AAdvGrid.Cells[5, i] := sy;//Lon
  						AAdvGrid.Cells[12, i] := sAddress;
						end;
					end;
					if GS_SEARCH_WISE_NAVER_COMPARE then tmrWNSUM.Enabled := True;
        end else
				begin
					Grid_Init(lcsActiveEdit, 3);
					if Assigned(Frm_CUT011) then Frm_CUT011.Grid_Clear(lcsActiveEdit, 3) else
					if Assigned(Frm_BTN) then Frm_BTN01.Grid_Clear(lcsActiveEdit, 3);
				end;

        Result := True;
				if chkUseMiniMap.Checked then SetPOIMapDisplay;
      except
        on e: exception do
				begin
					Assert(False, Format('Naver : �� - %d �� - %d : Daum : �� - %d �� - %d : wURL : %s',
                              [iNaverSerachStartCnt, iNaverSerachEndCnt,
                               iDaumSerachStartCnt , iDaumSerachEndCnt, wURL]));
					iNaverSerachStartCnt :=0; iNaverSerachEndCnt := 0;
					iDaumSerachStartCnt  :=0; iDaumSerachEndCnt := 0;

          Result := False;
				end;
			end;
		finally
      js.Free;
		end;
		if GS_SEARCH_POTAL_FIRST then
		begin
			if lcsActiveEdit = 'meoStartArea' then
			begin
				if AdvStringGrid1.Cells[0,1] = '' then
				begin
					if noSearch then
					begin
						noSearch := False;
						Exit;
					end;
					if ( Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Hint <> 'F4)���' ) And ( not bMouseDownSelect ) then     // 20130703  LYB  ��ݻ����ϰ�쿡�� ����� ���� �ڵ� ���� �ȵȰ� �Ѵ�.
					begin
						if AdvStringGrid3.Cells[0,0] <> '' then
						begin
							AdvStringGrid1.ShowSelection := False;
							AdvStringGrid3.ShowSelection := True;

							Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
							Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿
							Frm_Main.Frm_JON01N[Self.Tag].lcsSta4 := D_HightlightTXT(AdvStringGrid3.Cells[2, 0]);//�α�POI
							Frm_Main.Frm_JON01N[Self.Tag].lcsStaDocId := '';
							Frm_Main.Frm_JON01N[Self.Tag].lcsStaCellSel := 'A';
							Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text :=  Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 + ' ' + Frm_Main.Frm_JON01N[Self.Tag].lcsSta2
																																+ ' ' + Frm_Main.Frm_JON01N[Self.Tag].lcsSta3;
							SetDebugeWrite('JON30.lblStartAreaName.Text 12960 : ' + Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text);
							MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);
							Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].lcsConfAREA4 := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);
							MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);
							// 20120805 ��ǥ ���� üũ LYB
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area4 := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);//��������
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area5 := D_HightlightTXT(AdvStringGrid3.Cells[2, 0]);//�α�POI
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X := AdvStringGrid3.Cells[4, 0];
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y := AdvStringGrid3.Cells[5, 0];
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X := '';
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y := '';
							try
								Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Gubun := '5';
							finally
								Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X;
								Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y;
								Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEXval := '';
								Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEYval := '';
							end;
							Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'N';
						end;
					end;
				end;		
			end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
				if AdvStringGrid5.Cells[0,1] = '' then
				begin
					if noSearch then
					begin
						noSearch := False;
						Exit;
					end;

					if ( Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Hint <> 'F4)���') And ( not bMouseDownSelect ) then     // 20130703  LYB  ��ݻ����ϰ�쿡�� ������ ���� �ڵ� ���� �ȵȰ� �Ѵ�.
					begin
						if AdvStringGrid6.Cells[0,0] <> '' then
						begin
							AdvStringGrid5.ShowSelection := False;
							AdvStringGrid6.ShowSelection := True;

							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿
							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := D_HightlightTXT(AdvStringGrid6.Cells[2, 0]);//�α�POI
							Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := '';
							Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := 'A';
							Frm_Main.Frm_JON01N[Self.Tag].lcsEndDebug := Frm_Main.Frm_JON01N[Self.Tag].lcsStaUrl + '��' +
																												D_HightlightTXT(AdvStringGrid6.Cells[00, 1]) + '/' +
																												D_HightlightTXT(AdvStringGrid6.Cells[01, 1]) + '/' +
																												D_HightlightTXT(AdvStringGrid6.Cells[02, 1]) + '/' +
																												D_HightlightTXT(AdvStringGrid6.Cells[04, 1]) + '/' +
																												D_HightlightTXT(AdvStringGrid6.Cells[05, 1]) + '/' +
																												D_HightlightTXT(AdvStringGrid6.Cells[10, 1]);
							Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption :=  Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 + ' ' +
																																			 Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 + ' ' +
																																			 Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3;

							Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text := Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption + ' ' + Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption;
							SetDebugeWrite('JON30.cxReEndArea.Text 13026 : ' + Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text);
							MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text), clRed, [fsBold]);

							try
								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := AdvStringGrid6.Cells[4, 0];
								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := AdvStringGrid6.Cells[5, 0];
								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X := '';
								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y := '';
							finally
								Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X;
								Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y;
								Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := '';
								Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := '';
							end;

							Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'N';
						end;
					end;
				end;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        if AdvStringGrid8.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid9.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid8.ShowSelection := False;
            AdvStringGrid9.ShowSelection := True;

						Frm_Main.Frm_JON01N[Self.Tag].ViaSA1[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[6, 0]);// cxGViewArea.DataController.Values[ss_Row - 1, 0];
						Frm_Main.Frm_JON01N[Self.Tag].ViaSA2[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[7, 0]);
						Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[8, 0]);
						Frm_Main.Frm_JON01N[Self.Tag].DocId[GS_VIA_Tag] := '';
						Frm_Main.Frm_JON01N[Self.Tag].CellSel[GS_VIA_Tag] := 'A';
						if GS_VIA_Tag = 1 then
							Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption := D_HightlightTXT(AdvStringGrid9.Cells[6, 0])
																														 + ' ' + D_HightlightTXT(AdvStringGrid9.Cells[7, 0])
																														 + ' ' + D_HightlightTXT(AdvStringGrid9.Cells[8, 0])
						else
							Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption := D_HightlightTXT(AdvStringGrid9.Cells[6, 0])
																																				+ ' ' + D_HightlightTXT(AdvStringGrid9.Cells[7, 0])
																																				+ ' ' + D_HightlightTXT(AdvStringGrid9.Cells[8, 0]);

						Frm_Main.Frm_JON01N[Self.Tag].ViaAreaDetail[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[1, 0]);

						if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text
															else Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text;

						Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := AdvStringGrid9.Cells[4, 0];
						Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] := AdvStringGrid9.Cells[5, 0];
						ViaPos('', Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag], Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag]);

						GS_Grid_VIA := 'N';
					end;
				end;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
      begin
        if AdvStringGrid1.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

					if ( AdvStringGrid3.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid1.ShowSelection := False;
            AdvStringGrid3.ShowSelection := True;
						Frm_CUT011.lcsSta1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
            Frm_CUT011.lcsSta2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
            Frm_CUT011.lcsSta3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿

            Frm_CUT011.cxtSA1.Text := Frm_CUT011.lcsSta1;
            Frm_CUT011.cxtSA2.Text := Frm_CUT011.lcsSta2;
            Frm_CUT011.cxtSA3.Text := Frm_CUT011.lcsSta3;
            Frm_CUT011.lblStartAreaName.Caption := Frm_CUT011.lcsSta1 + ' ' + Frm_CUT011.lcsSta2 + ' ' + Frm_CUT011.lcsSta3;

            Frm_CUT011.cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);

            Frm_CUT011.cxtStartXval.Text := AdvStringGrid3.Cells[4, 0];
            Frm_CUT011.cxtStartYval.Text := AdvStringGrid3.Cells[5, 0];
          end;
        end;
      end
      else if lcsActiveEdit = 'meoEndAreaCUT' then
      begin
        if AdvStringGrid5.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid6.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid5.ShowSelection := False;
            AdvStringGrid6.ShowSelection := True;

            Frm_CUT011.lcsEnd1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
            Frm_CUT011.lcsEnd2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
            Frm_CUT011.lcsEnd3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿

						Frm_CUT011.cxtEd1.Text := Frm_CUT011.lcsEnd1;
            Frm_CUT011.cxtEd2.Text := Frm_CUT011.lcsEnd2;
            Frm_CUT011.cxtEd3.Text := Frm_CUT011.lcsEnd3;

            Frm_CUT011.lblEndAreaName.Caption := Frm_CUT011.lcsEnd1 + ' ' + Frm_CUT011.lcsEnd2 + ' ' + Frm_CUT011.lcsEnd3;

            Frm_CUT011.cxtEndAreaDetail.Text := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);

            Frm_CUT011.cxtEndXval.Text := AdvStringGrid6.Cells[4, 0];
            Frm_CUT011.cxtEndYval.Text := AdvStringGrid6.Cells[5, 0];
          end;
        end;
			end	else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				if AdvStringGrid1.Cells[0,1] = '' then
				begin
					if noSearch then
					begin
            noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid3.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid1.ShowSelection := False;
            AdvStringGrid3.ShowSelection := True;
						Frm_WOR11.lcsSta1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
            Frm_WOR11.lcsSta2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
            Frm_WOR11.lcsSta3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿

            Frm_WOR11.cxtSA1.Text := Frm_WOR11.lcsSta1;
            Frm_WOR11.cxtSA2.Text := Frm_WOR11.lcsSta2;
            Frm_WOR11.cxtSA3.Text := Frm_WOR11.lcsSta3;
            Frm_WOR11.lblStartAreaName.Caption := Frm_WOR11.lcsSta1 + ' ' + Frm_WOR11.lcsSta2 + ' ' + Frm_WOR11.lcsSta3;

            Frm_WOR11.cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);

            Frm_WOR11.cxtStartXval.Text := AdvStringGrid3.Cells[4, 0];
            Frm_WOR11.cxtStartYval.Text := AdvStringGrid3.Cells[5, 0];
					end;
        end;
			end
			else if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				if AdvStringGrid5.Cells[0,1] = '' then
				begin
					if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid6.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid5.ShowSelection := False;
            AdvStringGrid6.ShowSelection := True;

            Frm_WOR11.lcsEnd1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
            Frm_WOR11.lcsEnd2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
            Frm_WOR11.lcsEnd3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿

            Frm_WOR11.cxtEd1.Text := Frm_WOR11.lcsEnd1;
            Frm_WOR11.cxtEd2.Text := Frm_WOR11.lcsEnd2;
            Frm_WOR11.cxtEd3.Text := Frm_WOR11.lcsEnd3;

            Frm_WOR11.lblEndAreaName.Caption := Frm_WOR11.lcsEnd1 + ' ' + Frm_WOR11.lcsEnd2 + ' ' + Frm_WOR11.lcsEnd3;

            Frm_WOR11.cxtEndAreaDetail.Text := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);

            Frm_WOR11.cxtEndXval.Text := AdvStringGrid6.Cells[4, 0];
						Frm_WOR11.cxtEndYval.Text := AdvStringGrid6.Cells[5, 0];
          end;
				end;
			end	else
			if lcsActiveEdit = 'meoCallBell' then
			begin
				if AdvStringGrid5.Cells[0,1] = '' then
				begin
					if noSearch then
          begin
						noSearch := False;
						Exit;
          end;

          if ( AdvStringGrid6.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid5.ShowSelection := False;
            AdvStringGrid6.ShowSelection := True;

						Frm_BTN01.lcsCallBell1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
						Frm_BTN01.lcsCallBell2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
						Frm_BTN01.lcsCallBell3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿

						Frm_BTN01.lbUpsoAreaName.Caption := Frm_BTN01.lcsCallBell1 + ' ' + Frm_BTN01.lcsCallBell2 + ' ' + Frm_BTN01.lcsCallBell3;

						Frm_BTN01.edtUpsoAreaDetail.Caption := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);

						Frm_BTN01.edtXval.Caption := AdvStringGrid6.Cells[4, 0];
						Frm_BTN01.edtYval.Caption := AdvStringGrid6.Cells[5, 0];
          end;
        end;
      end;
    end;
	finally
    FreeAndNil(slTmp);
  end;
end;

// ���� ����Ʈ���� POI ������ ��������..
//procedure TFrm_JON30.proc_PortalN_GetPOI(word, vRandom : string);
//var
//	sHttp, wURL : String;
//	IdHTTPN : TIdHttp;
//	bPass : Boolean;
//
//	alat, alon : double;
//
//	js : TlkJSONobject;
//	ja, jc : TlkJSONlist;
//
//	i, j, iRow, iPos : Integer;
//	str, sx, sy, sName, sPOI, sCate : string;
//	SCLat, SCLon : string;
//	sAddress : string;
//	LHandler: TIdSSLIOHandlerSocketOpenSSL;
//begin
//	SetDebugeWrite('JON30.proc_PortalN_GetPOI');
//	try
//		if gNaverV4ErrorCnt > 5 then //������ 5������ 6��° �ٸ� URL�� ��ȯ
//		begin
//			if (GB_PORTAL_AutoChk) and (gNaverV4ChangeCnt > 2) and (gNaverV5ChangeCnt > 2)  then
//			begin
//				pSelect_Portal('D');
//				if Assigned(Frm_JON30S) then
//				begin
//					Frm_JON30S.RbSelN.Tag := 1;
//					Frm_JON30S.RbSelD.Checked := True;
//					Frm_JON30S.RbSelN.Tag := 0;
//				end;
//				gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0;  //V4����, ��ȯȽ�� �ʱ�ȭ
//				gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0;  //V5����, ��ȯȽ�� �ʱ�ȭ
//				SetDebugeWrite('Naver - Daum ����');
//				Assert(False, 'Naver - Daum ����');
//				exit;
//			end;
//			btnNPOISel.Down := True;
//			btnNPOISelClick(btnNPOISel);
//			gNaverV4ErrorCnt := 0;  //V4����Ƚ�� �ʱ�ȭ
//			inc(gNaverV5ChangeCnt); //V4 -> V5 ��ȯȽ�� ����
//			proc_PortalN_V5_GetPOI(word, vRandom);
//			Assert(False, 'Naver V4 -> V5 ����');
//			exit;
//		end;
//		SCLat := getDEGREE(Area_CenterLat);//'037335565';
//		SCLon := getDEGREE(Area_CenterLon);//'126583729';
//
//		if pos('naver_usersession', gNaverCookie) > 0 then
//    begin
//			sHttp := Format('https://v4.map.naver.com/search2/local.nhn?sm=hty&searchCoord=%s;%s&isFirstSearch=true&query=%s&menu=location',
//							 [SCLon, SCLat, UrlEncode(UTF8Encode(trim(word)))]);
//		end else
//		// �ǵڿ� &_ ���� �ٿ��ָ� Cookie�� ���� ���̵� POI ��ȸ�� ��    2018.06.19  LYB
//		begin
//			sHttp := Format('https://v4.map.naver.com/search2/local.nhn?sm=hty&searchCoord=%s;%s&isFirstSearch=true&query=%s&menu=location&_',
//               [SCLon, SCLat, UrlEncode(UTF8Encode(trim(word)))]);
//    end;
//
//
////		SetDebugeWrite('Naver : LastRandom - ' + sRanDom +', ActiveRandom - ' + vRandom + ', - ' + sHttp);
//
//		IdHTTPN := TIdHttp.Create(nil);
//		try
//			LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
//			try
//				wURL := '';
//				IdHTTPN.ConnectTimeout := 3 * 1000;
//				IdHTTPN.ReadTimeout := 3 * 1000;
//				IdHTTPN.HandleRedirects := True;
//				IdHTTPN.Request.Charset := 'utf-8';
//				IdHTTPN.Request.ContentType := 'application/x-www-form-urlencoded';
//				IdHTTPN.Request.CustomHeaders.Add('Cookie'+IdHTTPN.Request.RawHeaders.NameValueSeparator+gNaverCookie);
//
//				try
//					IdHTTPN.IOHandler := LHandler;
//					wURL := IdHTTPN.Get(sHttp);
//
//					GB_NParser := True;
//				except on E: Exception do
//					begin
//						inc(gNaverV4ErrorCnt);
//						Assert(False, 'Naver B : Error - ' + Trim(sHttp) + ' [' + e.Message + ']' );
//						GB_NParser := True;
//						wURL := '';
//						Log('Naver Get Error : ' + e.Message, LOGDATAPATHFILE);
//					end;
//				end;
//			finally
//				LHandler.Free;
//			end;
//		finally
//      IdHTTPN.Free;
//		end;
//
//		if Trim(wURL) = '' then Exit;
//
////    if GT_USERIF.ID = 'sntest' then
////			SetDebugeWrite('Naver B : ActiveRandom - ' + vRandom + ', - ' + Trim(wURL));
//		// ��ȸ�� �˻�� �ʰ� �ö��� �־ ���� �������� ��ȸ�� ��ȣ�� Ʋ���� �н�
//    if sNRanDom <> vRandom  then Exit;
//    if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then Exit;
//		if Pos('ADULT_REDIRECT', wURL) > 0 then Exit;
//
//		if ( Pos('HMAC_AUTH_FAILED', wURL) > 0 ) Or ( Pos('HMAC_EXPIRED', wURL) > 0 ) then
//		begin
//			inc(gNaverV4ErrorCnt);
//			gNaverCookie := '';
//			SetDebugeWrite('Naver B : Error - ' + Trim(wURL));
//			Assert(False, 'Naver B : Error - ' + Trim(wURL));
//			Exit;
//		end;
//
//    if Pos('������̽� PC �Ǵ� ��Ʈ��ũ����', wURL) > 0 then
//    begin
//			if (GB_PORTAL_AutoChk) and (gNaverV4ChangeCnt > 2) and (gNaverV5ChangeCnt > 2)  then
//			begin
//        pSelect_Portal('D');
//        if Assigned(Frm_JON30S) then
//        begin
//          Frm_JON30S.RbSelN.Tag := 1;
//					Frm_JON30S.RbSelD.Checked := True;
//          Frm_JON30S.RbSelN.Tag := 0;
//        end;
//				gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0;  //V4����, ��ȯȽ�� �ʱ�ȭ
//				gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0;  //V5����, ��ȯȽ�� �ʱ�ȭ
//				SetDebugeWrite('Naver - Daum ����');
//				Assert(False, 'Naver - Daum ����');
//      end;
//			inc(gNaverV4ErrorCnt);
//			Assert(False, 'Naver B : Error - ' + Trim(wURL));
//			Exit;
//    end;
//
//		if Pos('totalCount', wURL) < 1 then
//		begin
//			if (GB_PORTAL_AutoChk) and (gNaverV4ChangeCnt > 2) and (gNaverV5ChangeCnt > 2)  then
//			begin
//				pSelect_Portal('D');
//				if Assigned(Frm_JON30S) then
//				begin
//					Frm_JON30S.RbSelN.Tag := 1;
//					Frm_JON30S.RbSelD.Checked := True;
//					Frm_JON30S.RbSelN.Tag := 0;
//				end;
//				gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0;  //V4����, ��ȯȽ�� �ʱ�ȭ
//				gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0;  //V5����, ��ȯȽ�� �ʱ�ȭ
//				SetDebugeWrite('Naver - Daum ����');
//				Assert(False, 'Naver - Daum ����');
//			end;
//			inc(gNaverV4ErrorCnt);
//			Assert(False, 'Naver B : Error - ' + Trim(wURL));
//			Exit;
//		end;
//
//		gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0; //V4����Ƚ��, ��ȯȽ�� �ʱ�ȭ
//
//		js := TlkJSON.ParseText(wURL) as TlkJSONobject;
//		try
////      GB_NParser := True;
//      if strToIntDef(js.Field['result'].Field['totalCount'].Value, 0) > 0 then
//      begin
//        if UpperCase(js.Field['result'].Field['type'].Value) = 'ADDRESS' then
//        begin
//          ja := js.Field['result'].Field['address'].Field['list'] as TlkJSONlist;
//
//          iRow := 0;
//          for i := 0 to ja.Count - 1 do
//          begin
//            if i > 9 then Break;    // ���� 10�������� ��ȸ
//
//            str := '11:';
//            sName := ja.Child[i].Field['display'].Value;                // �ּ� : [�� + ����] ���� �ڸ���.
//						iPos:= Pos('rong>',sName);
//            sName := Copy(sName,iPos+5,Pos('</str',sName)-(iPos+5));
//            str := str +' '+ sName;
//
//						if UpperCase(js.Field['result'].Field['address'].Field['subType'].Value) = 'ADDRESS_JIBUN' then
//            begin
//              sAddress := ja.Child[i].Field['fullAddress'].Value;
//            end else
//            begin
//              try
//                sAddress := ja.Child[i].Field['mappedAddress'].Field['fullAddress'].Value;
//                if Pos(StringReplace(sName, ' ','', [rfReplaceAll]), StringReplace(gTFindData.sFullWord, ' ','', [rfReplaceAll])) > 0  then
//                  sName := sName + '{' + ja.Child[i].Field['mappedAddress'].Field['abbrAddress'].Value + '}'
//                else
//                  sName := ja.Child[i].Field['mappedAddress'].Field['abbrAddress'].Value + '{' + sName + '}' ;
//              except
//                sAddress := '';
//              end;
//
//              if sAddress = '' then
//                sAddress := ja.Child[i].Field['fullAddress'].Value;
//            end;
//
//						// 20130823  LYB  ���̹� �˻��� �ּҿ� ���ڰ� ������ ǥ�� ������ ����..
//						if Not StrToIntDef(RightStr(Trim(sAddress), 1), -1) In [0,1,2,3,4,5,6,7,8,9] then Continue;
//
//            sy := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
//            sx := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ
//
//						aLat := ja.Child[i].Field['y'].Value;
//            aLon := ja.Child[i].Field['x'].Value;
//
//            gPortalPOI[iRow].sA_XDMS := aLat;
//            gPortalPOI[iRow].sA_YDMS := aLon;
//
//            bPass := False;
//            // ������ ���̹� �ڷ��� ������ Ʋ������ �����Ƿ� �ش� ���� ��/�Ʒ��� ���� ��Ī�� ���� ��쿡�� �ߺ� ����
//            if iRow = 0 then
//            begin
//              if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
//              begin
//                // ���� ��Ī ���� ó��
//                if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
//                begin
//                  gPortalPOI[iRow+1].sA_All := '*';
//                  bPass := True;
//                end;
//              end;
//            end else
//            if iRow = 19 then
//            begin
//              if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
//              begin
//                if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
//                begin
//                  gPortalPOI[iRow-1].sA_All := '*';
//                  bPass := True;
//                end;
//              end;
//            end else
//            begin
//              if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
//              begin
//                if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
//                begin
//                  gPortalPOI[iRow-1].sA_All := '*';
//                  bPass := True;
//                end;
//              end else
//              if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
//              begin
//								if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
//                begin
//                  gPortalPOI[iRow+1].sA_All := '*';
//                  bPass := True;
//                end;
//              end;
//            end;
//
//            if bPass then
//            begin
//              gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
//              gPortalPOI[iRow].sA_Address := '';
//              gPortalPOI[iRow].sA_POI     := '';
//              gPortalPOI[iRow].sA_sPOI    := '';
//              gPortalPOI[iRow].sA_X       := '';
//              gPortalPOI[iRow].sA_Y       := '';
//              gPortalPOI[iRow].sA_Gubun   := '';
//            end else
//            begin
//              gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
//              gPortalPOI[iRow].sA_Address := sAddress;
//              gPortalPOI[iRow].sA_POI     := sName;
//              gPortalPOI[iRow].sA_sPOI    := '';
//              gPortalPOI[iRow].sA_X       := sx;
//              gPortalPOI[iRow].sA_Y       := sy;
//              gPortalPOI[iRow].sA_Gubun   := 'N';
//            end;
//            iRow := iRow + 2;
//          end;
//        end else
//        if ((UpperCase(js.Field['result'].Field['type'].Value) = 'ALL')
//        or (UpperCase(js.Field['result'].Field['type'].Value) = 'SITE_1')) and (GS_SEARCH_POTAL) then
//        begin
//          ja := js.Field['result'].Field['site'].Field['list'] as TlkJSONlist;
//
//          iRow := 0;
//          for i := 0 to ja.Count - 1 do
//          begin
//            if i > 9 then Break;    // ���� 10�������� ��ȸ
//
//            try
//              jc := ja.Child[i].Field['category'] as TlkJSONlist;
//							for j := 0 to jc.Count - 1 do
//              begin
//                if j = 0 then sCate := jc.Child[j].Value
//                         else sCate := sCate + '-' + jc.Child[j].Value;
//              end;
//              sPOI := '��' + sCate + '��';    // �� �α� POI�˻� �ɼ��� �������� ī�װ� �׸��� �̰��� ǥ��  2017.12.26
//            except
//              sPOI := '';
//            end;
//
//            sAddress := ja.Child[i].Field['address'].Value;
//            sName := ja.Child[i].Field['name'].Value;
//
//            sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
//            sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ
//
//            aLat := ja.Child[i].Field['y'].Value;
//            aLon := ja.Child[i].Field['x'].Value;
//
//            gPortalPOI[iRow].sA_XDMS := aLat;
//            gPortalPOI[iRow].sA_YDMS := aLon;
//
//            bPass := False;
//            // ������ ���̹� �ڷ��� ������ Ʋ������ �����Ƿ� �ش� ���� ��/�Ʒ��� ���� ��Ī�� ���� ��쿡�� �ߺ� ����
//            if iRow = 0 then
//            begin
//              if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
//              begin
//                if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
//                begin
//                  gPortalPOI[iRow+1].sA_All := '*';
//                  bPass := True;
//                end;
//              end;
//            end else
//            if iRow = 19 then
//            begin
//              if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
//              begin
//                if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
//                begin
//                  gPortalPOI[iRow-1].sA_All := '*';
//									bPass := True;
//                end;
//              end;
//            end else
//            begin
//              if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
//              begin
//                if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
//                begin
//                  gPortalPOI[iRow-1].sA_All := '*';
//                  bPass := True;
//                end;
//              end else
//              if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
//              begin
//                if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
//                begin
//                  gPortalPOI[iRow+1].sA_All := '*';
//                  bPass := True;
//                end;
//              end;
//            end;
//
//            if bPass then
//            begin
//              gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
//              gPortalPOI[iRow].sA_Address := '';
//              gPortalPOI[iRow].sA_POI     := '';
//              gPortalPOI[iRow].sA_sPOI    := '';
//              gPortalPOI[iRow].sA_X       := '';
//              gPortalPOI[iRow].sA_Y       := '';
//              gPortalPOI[iRow].sA_Gubun   := '';
//            end else
//            begin
//							gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
//              gPortalPOI[iRow].sA_Address := sAddress;
//              gPortalPOI[iRow].sA_POI     := sName;
//              gPortalPOI[iRow].sA_sPOI    := sPOI;
//              gPortalPOI[iRow].sA_X       := sx;
//              gPortalPOI[iRow].sA_Y       := sy;
//              gPortalPOI[iRow].sA_Gubun   := 'N';
//						end;
//						iRow := iRow + 2;
//					end;
//				end;
//			end;
//		finally
//			js.Free;
//		end;
//
//		if (GB_NParser) And (GB_DParser) then
//			pSearchPortal;
//	except on E: Exception do
//		begin
//			Assert(False, 'proc_PortalN_GetPOI Error : ' + word + ' / ' + wURL + ' / ' + sAddress + ' / ' + E.Message);
//		end;
//	end;
//end;

procedure TFrm_JON30.proc_PortalN_V5_GetPOI(word, vRandom : string);
var
  sHttp, wURL : String;
	IdHTTPN : TIdHttp;
  bPass : Boolean;

  alat, alon : double;

  js : TlkJSONobject;
	ja, jc : TlkJSONlist;

  i, iRow : Integer;
	sx, sy, sName : string;
	SCLat, SCLon : string;
	sAddress : string;
	LHandler: TIdSSLIOHandlerSocketOpenSSL;
begin
	SetDebugeWrite('JON30.proc_PortalN_V5_GetPOI');
  try
		if gNaverV5ErrorCnt > 5 then //������ 5������ 6��° �ٸ� URL�� ��ȯ
		begin
			if (GB_PORTAL_AutoChk) and (gNaverV5ChangeCnt > 2)  then
			begin
				pSelect_Portal('D');
				if Assigned(Frm_JON30S) then
				begin
					Frm_JON30S.RbSelN.Tag := 1;
					Frm_JON30S.RbSelD.Checked := True;
					Frm_JON30S.RbSelN.Tag := 0;
				end;
//				gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0;  //V4����, ��ȯȽ�� �ʱ�ȭ
				gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0;  //V5����, ��ȯȽ�� �ʱ�ȭ
				SetDebugeWrite('Naver - Daum ����');
				Assert(False, 'Naver - Daum ����');
				exit;
			end;
			gNaverV5ErrorCnt := 0; //V4����Ƚ�� �ʱ�ȭ
//			inc(gNaverV4ChangeCnt); //V5 -> V4 ��ȯȽ�� ����
//			proc_PortalN_GetPOI(word, vRandom);
//			Assert(False, 'Naver V5 -> V4 ����');
			Exit;
		end;
		SCLat := getDEGREE(Area_CenterLat);//'037335565';
		SCLon := getDEGREE(Area_CenterLon);//'126583729';

		gb2ndSearch := False; //Ȯ��˻� ���� ����
		Proc_2ndSearchIng(Self.Tag, gb2ndSearch);

		word :=  StringReplace(word, '{','', [rfReplaceAll]);
		word :=  StringReplace(word, '}','', [rfReplaceAll]);
		word :=  StringReplace(word, '#','', [rfReplaceAll]);
		sHttp := Format('https://map.naver.com/v5/api/instantSearch?query=%s&lang=ko&caller=pcweb&types=place,address&coords=%s,%s',
							 [UrlEncode(UTF8Encode(trim(word))), SCLat, SCLon ]);

		SetDebugeWrite('Naver : LastRandom - ' + sRanDom +', ActiveRandom - ' + vRandom + ', - ' + sHttp);

		IdHTTPN := TIdHttp.Create(nil);
		try
			LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
			try
				wURL := '';
				IdHTTPN.ConnectTimeout := 3 * 1000;
				IdHTTPN.ReadTimeout := 3 * 1000;
				IdHTTPN.HandleRedirects := True;
				IdHTTPN.Request.Charset := 'utf-8';
				IdHTTPN.Request.ContentType := 'application/x-www-form-urlencoded';
				IdHTTPN.Request.CustomHeaders.Add('Cookie'+IdHTTPN.Request.RawHeaders.NameValueSeparator+gNaverCookie);

				try
					IdHTTPN.IOHandler := LHandler;
					wURL := IdHTTPN.Get(sHttp);

					GB_NParser := True;
				except on E: Exception do
					begin
						inc(gNaverV5ErrorCnt);
						Assert(False, 'Naver V5 B instantSearch : Error - ' + Trim(sHttp) + ' [' + e.Message + ']' );
						GB_NParser := True;					
						wURL := '';
						Log('Naver V5 B instantSearch Get Error : ' + e.Message, LOGDATAPATHFILE);
					end;
				end;
			finally
				LHandler.Free;
			end;
		finally
      IdHTTPN.Free;
		end;

		if Trim(wURL) <> '' then
    begin
      if GT_USERIF.ID = 'sntest' then
        SetDebugeWrite('Naver B : ActiveRandom - ' + vRandom + ', - ' + Trim(wURL));
      // ��ȸ�� �˻�� �ʰ� �ö��� �־ ���� �������� ��ȸ�� ��ȣ�� Ʋ���� �н�
      if sNRanDom <> vRandom  then Exit;
      if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then Exit;
      if Pos('ADULT_REDIRECT', wURL) > 0 then Exit;

      if ( Pos('HMAC_AUTH_FAILED', wURL) > 0 ) Or ( Pos('HMAC_EXPIRED', wURL) > 0 ) then
      begin
        gNaverCookie := '';
        inc(gNaverV5ErrorCnt);
        SetDebugeWrite('Naver V5 B instantSearch: Error - ' + Trim(wURL));
        Assert(False, 'Naver V5 B instantSearch: Error - ' + Trim(wURL));
        Exit;
      end;

      if Pos('������̽� PC �Ǵ� ��Ʈ��ũ����', wURL) > 0 then
      begin
        if (GB_PORTAL_AutoChk) and (gNaverV5ChangeCnt > 2)  then
        begin
          pSelect_Portal('D');
          if Assigned(Frm_JON30S) then
          begin
            Frm_JON30S.RbSelN.Tag := 1;
            Frm_JON30S.RbSelD.Checked := True;
            Frm_JON30S.RbSelN.Tag := 0;
          end;
  //				gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0;  //V4����, ��ȯȽ�� �ʱ�ȭ
          gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0;  //V5����, ��ȯȽ�� �ʱ�ȭ
          SetDebugeWrite('Naver - Daum ����');
          Assert(False, 'Naver - Daum ����');
        end;
        inc(gNaverV5ErrorCnt);
        Assert(False, 'Naver V5 B instantSearch: Error - ' + Trim(wURL));
        Exit;
      end;

      if Pos('{"meta":{', wURL) < 1 then  //v5������ �´��� Ȯ��
      begin
        if (GB_PORTAL_AutoChk) and (gNaverV5ChangeCnt > 2)  then
        begin
          pSelect_Portal('D');
          if Assigned(Frm_JON30S) then
          begin
            Frm_JON30S.RbSelN.Tag := 1;
            Frm_JON30S.RbSelD.Checked := True;
            Frm_JON30S.RbSelN.Tag := 0;
          end;
  //				gNaverV4ErrorCnt := 0; gNaverV4ChangeCnt := 0;  //V4����, ��ȯȽ�� �ʱ�ȭ
          gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0;  //V5����, ��ȯȽ�� �ʱ�ȭ
          SetDebugeWrite('Naver V5 - Daum ����');
          Assert(False, 'Naver V5 - Daum ����');
        end;
        inc(gNaverV5ErrorCnt);
        Assert(False, 'Naver V5 B instantSearch: Error - ' + Trim(wURL));
        Exit;
      end;

      gNaverV5ErrorCnt := 0; gNaverV5ChangeCnt := 0; //V5����Ƚ��, ��ȯȽ�� �ʱ�ȭ
		
      js := TlkJSON.ParseText(wURL) as TlkJSONobject;
      ja := js.Field['place'] as TlkJSONlist;
      if ja.count = 0 then
        ja := js.Field['address'] as TlkJSONlist;
      try
  //      GB_NParser := True;
        if ja.count = 0 then
        begin
          gb2ndSearch := True; //Ȯ��˻� �ʿ�
          trm_2ndSearch.Interval := 1000;
          trm_2ndSearch.enabled := True;
        end else
        if ja.count > 0 then
        begin
          gb2ndSearch := False; //Ȯ��˻� ���� ����
          Proc_2ndSearchIng(Self.Tag, gb2ndSearch);

          btnPortalE.Visible := False;
          iRow := 0;
          for i := 0 to ja.Count - 1 do
          begin
            if i > 9 then Break;    // ���� 10�������� ��ȸ

            if UpperCase(ja.Child[i].Field['type'].Value) = 'ADDRESS' then
            begin
              sAddress := ja.Child[i].Field['fullAddress'].Value;

              if isRoadAddress(sAddress) then Continue;

              jc := ja.Child[i].Field['shortAddress'] as TlkJSONlist;

              sName := jc.Child[1].Value;
            end else
            if UpperCase(ja.Child[i].Field['type'].Value) = 'PLACE' then
            begin
              // �����ּҰ� ������쿡�� ����  2019.12.11
              try
                sAddress := ja.Child[i].Field['jibunAddress'].Value;
              except
                Continue;
              end;
						
              sName := ja.Child[i].Field['title'].Value;
            end;

            // 20130823  LYB  ���̹� �˻��� �ּҿ� ���ڰ� ������ ǥ�� ������ ����..
            if Not StrToIntDef(RightStr(Trim(sAddress), 1), -1) In [0,1,2,3,4,5,6,7,8,9] then Continue;

            sy := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
            sx := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ

            aLat := ja.Child[i].Field['y'].Value;
            aLon := ja.Child[i].Field['x'].Value;

            gPortalPOI[iRow].sA_XDMS := aLat;
            gPortalPOI[iRow].sA_YDMS := aLon;

            bPass := False;
            // ������ ���̹� �ڷ��� ������ Ʋ������ �����Ƿ� �ش� ���� ��/�Ʒ��� ���� ��Ī�� ���� ��쿡�� �ߺ� ����
            if iRow = 0 then
            begin
              if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
              begin
                // ���� ��Ī ���� ó��
                if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
                begin
                  gPortalPOI[iRow+1].sA_All := '*';
                  bPass := True;
                end;
              end;
            end else
            if iRow = 19 then
            begin
              if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
              begin
                if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
                begin
                  gPortalPOI[iRow-1].sA_All := '*';
                  bPass := True;
                end;
              end;
            end else
            begin
              if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
              begin
                if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
                begin
                  gPortalPOI[iRow-1].sA_All := '*';
                  bPass := True;
                end;
              end else
              if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
              begin
                if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
                begin
                  gPortalPOI[iRow+1].sA_All := '*';
                  bPass := True;
                end;
              end;
            end;

            if bPass then
            begin
              gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
              gPortalPOI[iRow].sA_Address := '';
              gPortalPOI[iRow].sA_POI     := '';
              gPortalPOI[iRow].sA_sPOI    := '';
              gPortalPOI[iRow].sA_X       := '';
              gPortalPOI[iRow].sA_Y       := '';
              gPortalPOI[iRow].sA_Gubun   := '';
            end else
            begin
              gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
              gPortalPOI[iRow].sA_Address := sAddress;
              gPortalPOI[iRow].sA_POI     := sName;
              gPortalPOI[iRow].sA_sPOI    := '';
              gPortalPOI[iRow].sA_X       := sx;
              gPortalPOI[iRow].sA_Y       := sy;
              gPortalPOI[iRow].sA_Gubun   := 'N';
            end;
            iRow := iRow + 2;
          end;
        end;
      finally
        js.Free;
      end;
    end;

    if (GB_NParser) And (GB_DParser) then
			pSearchPortal;
  except on E: Exception do
    begin
			Assert(False, 'proc_PortalN_V5_GetPOI Error : ' + word + ' / ' + wURL + ' / ' + sAddress + ' / ' + E.Message);
		end;
  end;
end;

procedure TFrm_JON30.proc_PortalN_V5_New_GetPOI(word, vRandom : string);
var
  sHttp, wURL : String;
  IdHTTPN : TIdHttp;
  bPass : Boolean;

  Stream: TStringStream;

  alat, alon : double;

  js : TlkJSONobject;
	ja, jc : TlkJSONlist;

  i, j, iRow, iPos, iCnt : Integer;
	str, sx, sy, sName, sPOI, sCate : string;
	SCLat, SCLon : string;
	sAddress : string;
	LHandler: TIdSSLIOHandlerSocketOpenSSL;
begin
	SetDebugeWrite('JON30.proc_PortalN_V5_New_GetPOI');
  try
		SCLat := getDEGREE(Area_CenterLat);//'037335565';
		SCLon := getDEGREE(Area_CenterLon);//'126583729';

		word :=  StringReplace(word, '{','', [rfReplaceAll]);
		word :=  StringReplace(word, '}','', [rfReplaceAll]);
		word :=  StringReplace(word, '#','', [rfReplaceAll]);
		sHttp := Format('https://map.naver.com/v5/api/search?caller=pcweb&query=%s&type=all&searchCoord=%s;%s&page=1&displayCount=10&isPlaceRecommendationReplace=true&lang=ko',
							 [UrlEncode(UTF8Encode(trim(word))), SCLat, SCLon ]);

		SetDebugeWrite('Naver : LastRandom - ' + sRanDom +', ActiveRandom - ' + vRandom + ', - ' + sHttp);
		Assert(False, 'Naver Ȯ��˻� : LastRandom - ' + sRanDom +', ActiveRandom - ' + vRandom + ', word - ' + word + ', - ' + sHttp);

		IdHTTPN := TIdHttp.Create(nil);
    Stream  := TStringStream.Create();
		try
			LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
			try
				wURL := '';
				IdHTTPN.ConnectTimeout := 3 * 1000;
				IdHTTPN.ReadTimeout := 3 * 1000;
				IdHTTPN.HandleRedirects := True;
				IdHTTPN.Request.Charset := 'utf-8';
				IdHTTPN.Request.ContentType := 'application/x-www-form-urlencoded';

				IdHTTPN.Request.CustomHeaders.Add('Cookie'+IdHTTPN.Request.RawHeaders.NameValueSeparator+gNaverCookie);

				try
					IdHTTPN.IOHandler := LHandler;

          IdHTTPN.Get(sHttp, Stream, []);
          Stream.Position := 0;
          wURL := TEncoding.UTF8.GetString(Stream.Bytes, 0, Stream.Size);

					GB_NParser := True;
				except on E: Exception do
					begin
						Assert(False, 'Naver V5 B search: Error - ' + Trim(sHttp) + ' [' + e.Message + ']' );
						GB_NParser := True;
						wURL := '';
						Log('Naver B search Get Error : ' + e.Message, LOGDATAPATHFILE);
					end;
				end;
			finally
				LHandler.Free;
			end;
		finally
      Stream.Free;
      IdHTTPN.Free;
		end;

		if Trim(wURL) <> '' then
    begin

      if GT_USERIF.ID = 'sntest' then
        SetDebugeWrite('Naver B search: ActiveRandom - ' + vRandom + ', - ' + Trim(wURL));
      // ��ȸ�� �˻�� �ʰ� �ö��� �־ ���� �������� ��ȸ�� ��ȣ�� Ʋ���� �н�
      if sNRanDom <> vRandom  then Exit;
      if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then Exit;
      if Pos('ADULT_REDIRECT', wURL) > 0 then Exit;

      if ( Pos('HMAC_AUTH_FAILED', wURL) > 0 ) Or ( Pos('HMAC_EXPIRED', wURL) > 0 ) then
      begin
        gNaverCookie := '';
        SetDebugeWrite('Naver V5 B search: Error - ' + Trim(wURL));
        Assert(False, 'Naver V5 B search: Error - ' + Trim(wURL));
        Exit;
      end;

      if Pos('������̽� PC �Ǵ� ��Ʈ��ũ����', wURL) > 0 then
      begin
        Assert(False, 'Naver V5 B search: Error - ' + Trim(wURL));
        Exit;
      end;

      if Pos('{"result":{', wURL) < 1 then  //v5������ �´��� Ȯ��
      begin
        Assert(False, 'Naver V5 B search: Error - ' + Trim(wURL));
        Exit;
      end;

      btnPortalE.Visible := False;
		
      js := TlkJSON.ParseText(wURL) as TlkJSONobject;
      try
        if UpperCase(js.Field['result'].Field['type'].Value) = 'ADDRESS' then
        begin
          if UpperCase(js.Field['result'].Field['address'].Field['subType'].Value) = 'ROAD-ADDRESS' then
          begin
            iCnt := strToIntDef(js.Field['result'].Field['address'].Field['roadAddress'].Field['totalCount'].Value, 0);
          end else
          if UpperCase(js.Field['result'].Field['address'].Field['subType'].Value) = 'JIBUN-ADDRESS' then
          begin
            iCnt := strToIntDef(js.Field['result'].Field['address'].Field['jibunsAddress'].Field['totalCount'].Value, 0);
          end;
        end else
        if UpperCase(js.Field['result'].Field['type'].Value) = 'PLACE' then
        begin
           iCnt := strToIntDef(js.Field['result'].Field['place'].Field['totalCount'].Value, 0);
        end;

        if iCnt > 0 then
        begin
          if UpperCase(js.Field['result'].Field['type'].Value) = 'ADDRESS' then
          begin
            if UpperCase(js.Field['result'].Field['address'].Field['subType'].Value) = 'ROAD-ADDRESS' then
            begin
              ja := js.Field['result'].Field['address'].Field['roadAddress'].Field['list'] as TlkJSONlist;
            end else
            if UpperCase(js.Field['result'].Field['address'].Field['subType'].Value) = 'JIBUN-ADDRESS' then
            begin
              ja := js.Field['result'].Field['address'].Field['jibunsAddress'].Field['list'] as TlkJSONlist;
            end;

            iRow := 0;
            for i := 0 to ja.Count - 1 do
            begin
              if i > 9 then Break;    // ���� 10�������� ��ȸ

              str := '11:';
              sName := ja.Child[i].Field['display'].Value;                // �ּ� : [�� + ����] ���� �ڸ���.
              iPos:= Pos('rong>',sName);
              sName := Copy(sName,iPos+5,Pos('</str',sName)-(iPos+5));
              str := str +' '+ sName;

              if UpperCase(js.Field['result'].Field['address'].Field['subType'].Value) = 'JIBUN-ADDRESS' then
              begin
                sAddress := ja.Child[i].Field['fullAddress'].Value;
              end else
              begin
                try
                  sAddress := ja.Child[i].Field['mappedAddress'].Field['fullAddress'].Value;

                  if Pos(StringReplace(sName, ' ','', [rfReplaceAll]), StringReplace(gTFindData.sFullWord, ' ','', [rfReplaceAll])) > 0  then
                    sName := sName + '{' + ja.Child[i].Field['mappedAddress'].Field['abbrAddress'].Value + '}'
                  else
                    sName := ja.Child[i].Field['mappedAddress'].Field['abbrAddress'].Value + '{' + sName + '}'
                except
                  sAddress := '';
                end;

                if sAddress = '' then
                  sAddress := ja.Child[i].Field['fullAddress'].Value;
              end;

              // 20130823  LYB  ���̹� �˻��� �ּҿ� ���ڰ� ������ ǥ�� ������ ����..
              if Not StrToIntDef(RightStr(Trim(sAddress), 1), -1) In [0,1,2,3,4,5,6,7,8,9] then Continue;

              sy := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
              sx := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ

              aLat := ja.Child[i].Field['y'].Value;
              aLon := ja.Child[i].Field['x'].Value;

              gPortalPOI[iRow].sA_XDMS := aLat;
              gPortalPOI[iRow].sA_YDMS := aLon;

              bPass := False;
              // ������ ���̹� �ڷ��� ������ Ʋ������ �����Ƿ� �ش� ���� ��/�Ʒ��� ���� ��Ī�� ���� ��쿡�� �ߺ� ����
              if iRow = 0 then
              begin
                if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
                begin
                  // ���� ��Ī ���� ó��
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow+1].sA_All := '*';
                    bPass := True;
                  end;
                end;
              end else
              if iRow = 19 then
              begin
                if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow-1].sA_All := '*';
                    bPass := True;
                  end;
                end;
              end else
              begin
                if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow-1].sA_All := '*';
                    bPass := True;
                  end;
                end else
                if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow+1].sA_All := '*';
                    bPass := True;
                  end;
                end;
              end;

              if bPass then
              begin
                gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
                gPortalPOI[iRow].sA_Address := '';
                gPortalPOI[iRow].sA_POI     := '';
                gPortalPOI[iRow].sA_sPOI    := '';
                gPortalPOI[iRow].sA_X       := '';
                gPortalPOI[iRow].sA_Y       := '';
                gPortalPOI[iRow].sA_Gubun   := '';
              end else
              begin
                gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
                gPortalPOI[iRow].sA_Address := sAddress;
                gPortalPOI[iRow].sA_POI     := sName;
                gPortalPOI[iRow].sA_sPOI    := '';
                gPortalPOI[iRow].sA_X       := sx;
                gPortalPOI[iRow].sA_Y       := sy;
                gPortalPOI[iRow].sA_Gubun   := 'N';
              end;
              iRow := iRow + 2;
            end;
          end else
          if (UpperCase(js.Field['result'].Field['type'].Value) = 'PLACE') and (GS_SEARCH_POTAL) then
          begin
            ja := js.Field['result'].Field['place'].Field['list'] as TlkJSONlist;

            iRow := 0;
            for i := 0 to ja.Count - 1 do
            begin
              if i > 9 then Break;    // ���� 10�������� ��ȸ

              try
                jc := ja.Child[i].Field['category'] as TlkJSONlist;
                for j := 0 to jc.Count - 1 do
                begin
                  if j = 0 then sCate := jc.Child[j].Value
                           else sCate := sCate + '-' + jc.Child[j].Value;
                end;
                sPOI := '��' + sCate + '��';    // �� �α� POI�˻� �ɼ��� �������� ī�װ� �׸��� �̰��� ǥ��  2017.12.26
              except
                sPOI := '';
              end;

              sAddress := ja.Child[i].Field['address'].Value;
              sName := ja.Child[i].Field['name'].Value;

              sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
              sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ

              aLat := ja.Child[i].Field['y'].Value;
              aLon := ja.Child[i].Field['x'].Value;

              gPortalPOI[iRow].sA_XDMS := aLat;
              gPortalPOI[iRow].sA_YDMS := aLon;

              bPass := False;
              // ������ ���̹� �ڷ��� ������ Ʋ������ �����Ƿ� �ش� ���� ��/�Ʒ��� ���� ��Ī�� ���� ��쿡�� �ߺ� ����
              if iRow = 0 then
              begin
                if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow+1].sA_All := '*';
                    bPass := True;
                  end;
                end;
              end else
              if iRow = 19 then
              begin
                if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow-1].sA_All := '*';
                    bPass := True;
                  end;
                end;
              end else
              begin
                if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow-1].sA_All := '*';
                    bPass := True;
                  end;
                end else
                if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow+1].sA_All := '*';
                    bPass := True;
                  end;
                end;
              end;

              if bPass then
              begin
                gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
                gPortalPOI[iRow].sA_Address := '';
                gPortalPOI[iRow].sA_POI     := '';
                gPortalPOI[iRow].sA_sPOI    := '';
                gPortalPOI[iRow].sA_X       := '';
                gPortalPOI[iRow].sA_Y       := '';
                gPortalPOI[iRow].sA_Gubun   := '';
              end else
              begin
                gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
                gPortalPOI[iRow].sA_Address := sAddress;
                gPortalPOI[iRow].sA_POI     := sName;
                gPortalPOI[iRow].sA_sPOI    := sPOI;
                gPortalPOI[iRow].sA_X       := sx;
                gPortalPOI[iRow].sA_Y       := sy;
                gPortalPOI[iRow].sA_Gubun   := 'N';
              end;
              iRow := iRow + 2;
            end;
          end;
        end;
      finally
        js.Free;
      end;
    end;

		if (GB_NParser) And (GB_DParser) then
			pSearchPortal;
	except on E: Exception do
		begin
			Assert(False, 'proc_PortalN_GetPOI Error : ' + word + ' / ' + wURL + ' / ' + sAddress + ' / ' + E.Message);
		end;
	end;
end;

// ���� ����Ʈ���� POI ������ ��������..
procedure TFrm_JON30.proc_PortalD_GetPOI(word, vRandom : string);
var
  bPass : Boolean;
  IdHTTPDaum : TIdHttp;
  sHttp, wURL : String;

	alat, alon : double;

  js : TlkJSONobject;
	ja : TlkJSONlist;

  i, iRow : Integer;
  str, sx, sy, swx, swy, sXX, sCate : string;
	sAddress : string;
	LHandler: TIdSSLIOHandlerSocketOpenSSL;
  Stream: TStringStream;
begin
	SetDebugeWrite('JON30.proc_PortalD_GetPOI');
  try
		word :=  StringReplace(word, '{','', [rfReplaceAll]);
		word :=  StringReplace(word, '}','', [rfReplaceAll]);
		word :=  StringReplace(word, '#','', [rfReplaceAll]);
    sHttp := Format('https://search.map.kakao.com/mapsearch/map.daum?callback=&q=%s&msFlag=A&sort=0',
             [UrlEncode(UTF8Encode(trim(word)))]);

    IdHTTPDaum := TIdHttp.Create(nil);
    Stream  := TStringStream.Create();
    try
      wURL := '';

      LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      try
        IdHTTPDaum.ConnectTimeout := 3 * 1000;
        IdHTTPDaum.ReadTimeout := 3 * 1000;
        IdHTTPDaum.HandleRedirects := True;
        IdHTTPDaum.Request.Charset := 'utf-8';
        IdHTTPDaum.Request.ContentType := 'application/x-www-form-urlencoded';
//        IdHTTPDaum.Request.CustomHeaders.Add('Cookie'+IdHTTPDaum.Request.RawHeaders.NameValueSeparator+gNaverCookie);
        IdHTTPDaum.Request.CustomHeaders.Values['Referer'] := 'https://map.kakao.com/';  

{        wURL := '';
        IdHTTPDaum.ConnectTimeout := 3 * 1000;
        IdHTTPDaum.ReadTimeout := 3 * 1000;
        IdHTTPDaum.HandleRedirects := True;
        IdHTTPDaum.Request.CustomHeaders.Values['Referer'] := 'https://map.kakao.com/';  }

        try
					IdHTTPDaum.IOHandler := LHandler;

          IdHTTPDaum.Get(sHttp, Stream, []);
          Stream.Position := 0;
          wURL := TEncoding.UTF8.GetString(Stream.Bytes, 0, Stream.Size);
        except on E: Exception do
          begin
            GB_DParser := True;
            Assert(False, 'Daum Get B : Error - ' + Trim(wURL));
            wURL := '';
            Log('Daum Get Error : ' + e.Message, LOGDATAPATHFILE);
          end;
        end;
      finally
				LHandler.Free;
      end;
    finally
      Stream.Free;
      IdHTTPDaum.Free;
    end;

		if Trim(wURL) <> '' then
    begin

//    if GT_USERIF.ID = 'sntest' then
//			SetDebugeWrite('Daum B : ActiveRandom - ' + vRandom + ', - ' + Trim(wURL));

      // ��ȸ�� �˻�� �ʰ� �ö��� �־ ���� �������� ��ȸ�� ��ȣ�� Ʋ���� �н�
      if sNRanDom <> vRandom  then Exit;
      if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then Exit;
      if Pos('ADULT_REDIRECT', wURL) > 0 then Exit;

      js := TlkJSON.ParseText(wURL) as TlkJSONobject;
      try
        GB_DParser := True;
        if ( strToIntDef(js.Field['addr_count'].Value, 0) > 0 ) Or
           ( strToIntDef(js.Field['place_totalcount'].Value, 0) > 0 ) then
        begin
          if ( strToIntDef(js.Field['addr_count'].Value, 0) > 0 ) then
          begin
            ja := js.Field['address'].Field['list'] as TlkJSONlist;
            iRow := 1;
            for i := 0 to ja.Count - 1 do
            begin
              if i > 9 then Break;    // ���� 10�������� ��ȸ
              if UpperCase(ja.Child[i].Field['d3_roadname'].Value) = '' then
              begin
                sAddress := ja.Child[i].Field['addr'].Value;

                if Trim(ja.Child[i].Field['main_bunji'].Value) <> '0' then
                begin
                  sXX := ja.Child[i].Field['d3_name'].Value + ' ' +
                         ja.Child[i].Field['main_bunji'].Value;

                  if Trim(ja.Child[i].Field['sub_bunji'].Value) <> '0' then
                    sXX := sXX + '-' + ja.Child[i].Field['sub_bunji'].Value
                end;
              end else
              begin
                if Trim(ja.Child[i].Field['d1_name'].Value) <> '����Ư����ġ��' then //������152
                begin
                  if (Trim(ja.Child[i].Field['d1_name'].Value) = '') Or
                     (Trim(ja.Child[i].Field['d2_name'].Value) = '') Or
                     (Trim(ja.Child[i].Field['d3_name'].Value) = '') then Continue;
                end;

                try
                  sAddress := ja.Child[i].Field['d1_name'].Value + ' ' +
                              ja.Child[i].Field['d2_name'].Value + ' ' +
                              ja.Child[i].Field['d3_name'].Value;

                  str := ja.Child[i].Field['related_address'].Value;
                  str := Copy(str, 1, pos('^', str)-1);

                  sXX := ja.Child[i].Field['d3_roadname'].Value;
                  if ja.Child[i].Field['main_bunji'].Value <> '0' then
                    sXX := sXX + ' ' + ja.Child[i].Field['main_bunji'].Value;
                  if ja.Child[i].Field['sub_bunji'].Value <> '0' then        //���ʱ���� 9-9 ������� �߰� 20200211 KHS ���̻�� ��û 
                    sXX := sXX + '-' + ja.Child[i].Field['sub_bunji'].Value;

                  if Trim(str) <> ''  then
                  begin
                    if Pos(StringReplace(sXX, ' ','', [rfReplaceAll]), StringReplace(gTFindData.sFullWord, ' ','', [rfReplaceAll])) > 0  then
                      sXX := sXX + '{' + str + '}'
                    else
                      sXX := str + '{' + sXX + '}' ;
                  end;
                except
                  sAddress := '';
                end;

                if sAddress = '' then
                  sAddress := ja.Child[i].Field['addr'].Value;
              end;

              // 20181123  LYB  �˻��� �ּҿ� ��Ī�� ������ �н�..( �õ�/�ñ���/���鵿 �ڷ�� �н� )
              if Trim(sXX) = '' then Continue;

              sWx  := ja.Child[i].Field['x'].Value;
              sWy  := ja.Child[i].Field['y'].Value;
              pLocWCONGNAMULtoWGS84(swX, swY, sx, sy);

              aLat := StrToFloat(getDEGREE(sx));
              aLon := StrToFloat(getDEGREE(sy));

              gPortalPOI[iRow].sA_XDMS := aLat;
              gPortalPOI[iRow].sA_YDMS := aLon;

              bPass := False;
              // ������ ���̹� �ڷ��� ������ Ʋ������ �����Ƿ� �ش� ���� ��/�Ʒ��� ���� ��Ī�� ���� ��쿡�� �ߺ� ����
              if iRow = 0 then
              begin
                if ( ( gPortalPOI[iRow+1].sA_POI = sXX ) And ( gPortalPOI[iRow+1].sA_Gubun = 'N' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow+1].sA_All := '*';
                    bPass := True;
                  end;
                end;
              end else
              if iRow = 19 then
              begin
                if ( ( gPortalPOI[iRow-1].sA_POI = sXX ) And ( gPortalPOI[iRow-1].sA_Gubun = 'N' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow-1].sA_All := '*';
                    bPass := True;
                  end;
                end;
              end else
              begin
                if ( ( gPortalPOI[iRow-1].sA_POI = sXX ) And ( gPortalPOI[iRow-1].sA_Gubun = 'N' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow-1].sA_All := '*';
                    bPass := True;
                  end;
                end else
                if ( ( gPortalPOI[iRow+1].sA_POI = sXX ) And ( gPortalPOI[iRow+1].sA_Gubun = 'N' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow+1].sA_All := '*';
                    bPass := True;
                  end;
                end;
              end;

              if bPass then
              begin
                gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
                gPortalPOI[iRow].sA_Address := '';
                gPortalPOI[iRow].sA_POI     := '';
                gPortalPOI[iRow].sA_sPOI    := '';
                gPortalPOI[iRow].sA_X       := '';
                gPortalPOI[iRow].sA_Y       := '';
                gPortalPOI[iRow].sA_Gubun   := '';
              end else
              begin
                gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
                gPortalPOI[iRow].sA_Address := sAddress;
                gPortalPOI[iRow].sA_POI     := sXX;
                gPortalPOI[iRow].sA_sPOI    := '';
                gPortalPOI[iRow].sA_X       := sy;
                gPortalPOI[iRow].sA_Y       := sx;
                gPortalPOI[iRow].sA_Gubun   := 'D';
              end;
              iRow := iRow + 2;
            end;
          end else
          if ( strToIntDef(js.Field['place_totalcount'].Value, 0) > 0 ) and (GS_SEARCH_POTAL) then
          begin
            ja := js.Field['place'].Field['list'] as TlkJSONlist;
            iRow := 1;
            for i := 0 to ja.Count - 1 do
            begin
              if i > 9 then Break;    // ���� 10�������� ��ȸ

              sAddress := ja.Child[i].Field['address'].Value;
              sXX := ja.Child[i].Field['name'].Value;

              sWx  := ja.Child[i].Field['x'].Value;
              sWy  := ja.Child[i].Field['y'].Value;
              pLocWCONGNAMULtoWGS84(swX, swY, sx, sy);

              aLat := StrToFloat(getDEGREE(sx));
              aLon := StrToFloat(getDEGREE(sy));

              gPortalPOI[iRow].sA_XDMS := aLat;
              gPortalPOI[iRow].sA_YDMS := aLon;

              try
                sCate := ja.Child[i].Field['cate_name_depth1'].Value + '-' +
                         ja.Child[i].Field['cate_name_depth2'].Value;
                sCate := '��' + sCate + '��';    // �� �α� POI�˻� �ɼ��� �������� ī�װ� �׸��� �̰��� ǥ��  2017.12.26
              except
                sCate := '';
              end;

              bPass := False;
              // ������ ���̹� �ڷ��� ������ Ʋ������ �����Ƿ� �ش� ���� ��/�Ʒ��� ���� ��Ī�� ���� ��쿡�� �ߺ� ����
              if iRow = 0 then
              begin
                if ( ( gPortalPOI[iRow+1].sA_POI = sXX ) And ( gPortalPOI[iRow+1].sA_Gubun = 'N' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow+1].sA_All := '*';
                    bPass := True;
                  end;
                end;
              end else
              if iRow = 19 then
              begin
                if ( ( gPortalPOI[iRow-1].sA_POI = sXX ) And ( gPortalPOI[iRow-1].sA_Gubun = 'N' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow-1].sA_All := '*';
                    bPass := True;
                  end;
                end;
              end else
              begin
                if ( ( gPortalPOI[iRow-1].sA_POI = sXX ) And ( gPortalPOI[iRow-1].sA_Gubun = 'N' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow-1].sA_XDMS, gPortalPOI[iRow-1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow-1].sA_All := '*';
                    bPass := True;
                  end;
                end else
                if ( ( gPortalPOI[iRow+1].sA_POI = sXX ) And ( gPortalPOI[iRow+1].sA_Gubun = 'N' ) ) then
                begin
                  if ( getDist(150, aLat, aLon, gPortalPOI[iRow+1].sA_XDMS, gPortalPOI[iRow+1].sA_YDMS) ) then
                  begin
                    gPortalPOI[iRow+1].sA_All := '*';
                    bPass := True;
                  end;
                end;
              end;

              if bPass then
              begin
                gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
                gPortalPOI[iRow].sA_Address := '';
                gPortalPOI[iRow].sA_POI     := '';
                gPortalPOI[iRow].sA_sPOI    := '';
                gPortalPOI[iRow].sA_X       := '';
                gPortalPOI[iRow].sA_Y       := '';
                gPortalPOI[iRow].sA_Gubun   := '';
              end else
              begin
                gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
                gPortalPOI[iRow].sA_Address := sAddress;
                gPortalPOI[iRow].sA_POI     := sXX;
                gPortalPOI[iRow].sA_sPOI    := sCate;
                gPortalPOI[iRow].sA_X       := sy;
                gPortalPOI[iRow].sA_Y       := sx;
                gPortalPOI[iRow].sA_Gubun   := 'D';
              end;
              iRow := iRow + 2;
            end;
          end;
        end;
      finally
        js.Free;
      end;
    end;

    if (GB_NParser) And (GB_DParser) then
			pSearchPortal;
	except on E: Exception do
    begin
      Assert(False, 'proc_Portal_GetPOID_GetPOI Error : ' + sAddress + ' / ' + E.Message);
    end;
  end;
end;

// ���� ����Ʈ���� POI ������ ��������..
function TFrm_JON30.proc_PortalD_GetPOILast(wURL, vRandom : string) : Boolean;
var
	js : TlkJSONobject;
  ja : TlkJSONlist;

  i : Integer;
  str, sx, sy, swx, swy, sXX, sPOI, sKm, sRCity, sCate, sTmp : string;
  jon01_txt : string;
  slTmp : TStringList;
  sAddress : string;
	AAdvGrid : TAdvStringGrid;
	ATEXT : TcxMemo;
begin
	SetDebugeWrite('JON30.proc_PortalD_GetPOILast');
  slTmp := TStringList.Create;
  try
    Result := False;
    // ��ȸ�� �˻�� �ʰ� �ö��� �־ ���� �������� ��ȸ�� ��ȣ�� Ʋ���� �н�
		if sNRanDom <> vRandom  then Exit;

    if Pos('"addr_count"', wURL) = 0 then
    begin
  		Assert(False, 'Daum Error : '+ wURL);
      Exit;
    end;

		ATEXT := TcxMemo.create(nil);
		if lcsActiveEdit = 'meoStartArea' then
		begin
			ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoStartArea;
			if Length(ATEXT.Text) < 2 then exit;
			if sActieEdit <> lcsActiveEdit then Exit;
		end else
		if lcsActiveEdit = 'meoEndArea' then
		begin
			ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoEndArea;
			if Length(ATEXT.Text) < 2 then exit;
			if sActieEdit <> lcsActiveEdit then Exit;
		end;             
		jon01_txt := UpperCase(ATEXT.Text);
		if lcsActiveEdit = 'meoViaArea' then
		begin
			if GS_VIA_Tag = 1 then
				jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text)
			else
				jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text);
		end else
		if lcsActiveEdit = 'meoStartAreaCUT'   then jon01_txt := UpperCase(Frm_CUT011.meoStartAreaCUT.Text) else
		if lcsActiveEdit = 'meoEndAreaCUT'     then jon01_txt := UpperCase(Frm_CUT011.meoEndAreaCUT.Text) else
		if lcsActiveEdit = 'meoStartAreaWOR11' then jon01_txt := UpperCase(Frm_WOR11.meoStartAreaWOR11.Text) else
		if lcsActiveEdit = 'meoEndAreaWOR11'   then jon01_txt := UpperCase(Frm_WOR11.meoEndAreaWOR11.Text) else
		if lcsActiveEdit = 'meoCallBell'       then jon01_txt := UpperCase(StringReplace(Frm_BTN01.meoCallBellArea.Text, ' ','', [rfReplaceAll]));
		js := TlkJSON.ParseText(wURL) as TlkJSONobject;
    try
      try
        if ( strToIntDef(js.Field['addr_count'].Value, 0) > 0 ) Or
           ( strToIntDef(js.Field['place_totalcount'].Value, 0) > 0 ) then
        begin
					if ( strToIntDef(js.Field['addr_count'].Value, 0) > 0 ) then   // �ּ��ڷ�
          begin
            ja := js.Field['address'].Field['list'] as TlkJSONlist;

						if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or
							 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid3 else
						if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or 
							 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid6 else
						if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid9;
						
						AAdvGrid.Clear;
						AAdvGrid.RowCount := 1;
            for i := 0 to ja.Count - 1 do
            begin
              if UpperCase(ja.Child[i].Field['d3_roadname'].Value) = '' then
              begin
                sAddress := ja.Child[i].Field['addr'].Value;

								if Trim(ja.Child[i].Field['main_bunji'].Value) <> '0' then
                begin
                  sXX := ja.Child[i].Field['d3_name'].Value + ' ' +
                         ja.Child[i].Field['main_bunji'].Value;

                  if Trim(ja.Child[i].Field['sub_bunji'].Value) <> '0' then
                    sXX := sXX + '-' + ja.Child[i].Field['sub_bunji'].Value
                end;
              end else
              begin
								if Trim(ja.Child[i].Field['d1_name'].Value) <> '����Ư����ġ��' then  //������152
								begin
									if (Trim(ja.Child[i].Field['d1_name'].Value) = '') Or
										 (Trim(ja.Child[i].Field['d2_name'].Value) = '') Or
										 (Trim(ja.Child[i].Field['d3_name'].Value) = '') then Continue;
								end;

                try
									sAddress := ja.Child[i].Field['d1_name'].Value + ' ' +
															ja.Child[i].Field['d2_name'].Value + ' ' +
															ja.Child[i].Field['d3_name'].Value;

                  str := ja.Child[i].Field['related_address'].Value;
                  str := Copy(str, 1, pos('^', str)-1);

                  sXX := ja.Child[i].Field['d3_roadname'].Value;
                  if ja.Child[i].Field['main_bunji'].Value <> '0' then
										sXX := sXX + ' ' + ja.Child[i].Field['main_bunji'].Value;
									if ja.Child[i].Field['sub_bunji'].Value <> '0' then        //���ʱ���� 9-9 ������� �߰� 20200211 KHS ���̻�� ��û 
										sXX := sXX + '-' + ja.Child[i].Field['sub_bunji'].Value;

									if Trim(str) <> ''  then
                  begin
                    if Pos(StringReplace(sXX, ' ','', [rfReplaceAll]), StringReplace(gTFindData.sFullWord, ' ','', [rfReplaceAll])) > 0  then
                      sXX := sXX + '{' + str + '}'
                    else
                      sXX := str + '{' + sXX + '}' ;
                  end;
                except
                  sAddress := '';
								end;

                if sAddress = '' then
                  sAddress := ja.Child[i].Field['addr'].Value;
              end;

							// 20181123  LYB  �˻��� �ּҿ� ��Ī�� ������ �н�..( �õ�/�ñ���/���鵿 �ڷ�� �н� )
	  					if Trim(sXX) = '' then Continue;

							procAddressDelimited(sAddress, ' ', slTmp);

							sy      := '';
              sx      := '';
							sPOI    := '';
							sRCity  := '';
							if slTmp.Count >= 1  then
              begin
                sWx  := ja.Child[i].Field['x'].Value;
								sWy  := ja.Child[i].Field['y'].Value;
                pLocWCONGNAMULtoWGS84(swX, swY, sx, sy);

                sPOI := proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
              end;

							if ja.Count > AAdvGrid.RowCount - 1 then
								if (i + 1 > 1) then AAdvGrid.AddRow;

							AAdvGrid.Cells[6, i] := sRCity;//�õ�
							AAdvGrid.Cells[7, i] := slTmp[1];  //�ñ���
							AAdvGrid.Cells[8, i] := slTmp[2];  //���鵿

							sTmp := D_HightlightTXT(AAdvGrid.Cells[6, i]) + ' ' +
											D_HightlightTXT(AAdvGrid.Cells[7, i]) + ' ' +
											D_HightlightTXT(AAdvGrid.Cells[8, i]);

							AAdvGrid.Cells[0, i] := sTmp;
							AAdvGrid.Cells[1, i] := M_HightlightTXT(sXX, jon01_txt, 1);//������
							AAdvGrid.Cells[2, i] := sPOI;//�α�POI
							if StrToIntDef(sKm, -1) > 0 then AAdvGrid.Cells[3, i] := '��'+sKm else	AAdvGrid.Cells[3, i] := sKm;//�Ÿ�
							AAdvGrid.Cells[4, i] := sy;//Lat     //����� ���浵 ��ġ�� ���� AdvStringGrid3.Cells[5, i] := sx AdvStringGrid3.Cells[4, i] := sy
							AAdvGrid.Cells[5, i] := sx;//Lon
							AAdvGrid.Cells[12, i] := sAddress;
						end;
          end else
          if ( strToIntDef(js.Field['place_totalcount'].Value, 0) > 0 ) and (GS_SEARCH_POTAL) then
          begin
						ja := js.Field['place'].Field['list'] as TlkJSONlist;

            if ja.Count <= 0 then
            begin
							Grid_Init(lcsActiveEdit, 3);
              Exit;
						end;

						if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or 
							 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid3 else
						if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or 
							 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid6 else
						if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid9;
						
						AAdvGrid.Clear;
						AAdvGrid.RowCount := 1;
            for i := 0 to ja.Count - 1 do
            begin
							sXX := ja.Child[i].Field['name'].Value;
							sXX := StringReplace(sXX, ' ','&nbsp;', [rfReplaceAll]);  // ������ &nbsp;�� ġȯ�ϴ� ���� : ��ũ�Ⱑ ������ ������ ���� �������� ���ڰ� ������ ����(��ũ�⸦ �ø��� ����)
							sXX := M_HightlightTXT(sXX, jon01_txt, 1);
							if Pos('>', sXX) <= 0 then sXX := StringReplace(sXX, '&nbsp;',' ', [rfReplaceAll]);

							sy      := '';
							sx      := '';
							sPOI    := '';
							sRCity  := '';

							sAddress := ja.Child[i].Field['address'].Value; 
							procAddressDelimited(sAddress, ' ', slTmp);

							if slTmp.Count >= 1 then
							begin
                sWx  := ja.Child[i].Field['x'].Value;
                sWy  := ja.Child[i].Field['y'].Value;
                pLocWCONGNAMULtoWGS84(swX, swY, sx, sy);

                proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
              end;

              try
                sCate := ja.Child[i].Field['cate_name_depth1'].Value + '-' +
                         ja.Child[i].Field['cate_name_depth2'].Value;
                sPOI := '��' + sCate + '��';    // �� �α� POI�˻� �ɼ��� �������� ī�װ� �׸��� �̰��� ǥ��  2017.12.26
              except
                sPOI := '';
              end;

							if ja.Count > AAdvGrid.RowCount - 1 then
								if (i + 1 > 1) then AAdvGrid.AddRow;

							AAdvGrid.Cells[6, i] := sRCity;//�õ�
							AAdvGrid.Cells[7, i] := slTmp[1];  //�ñ���
							AAdvGrid.Cells[8, i] := slTmp[2];  //���鵿

							sTmp := D_HightlightTXT(AAdvGrid.Cells[6, i]) + ' ' +
											D_HightlightTXT(AAdvGrid.Cells[7, i]) + ' ' +
											D_HightlightTXT(AAdvGrid.Cells[8, i]);

							AAdvGrid.Cells[0, i] := sTmp;
							AAdvGrid.Cells[1, i] := M_HightlightTXT(sXX, jon01_txt, 1);//������
							AAdvGrid.Cells[2, i] := sPOI;//�α�POI
							if StrToIntDef(sKm, -1) > 0 then AAdvGrid.Cells[3, i] := '��'+sKm else	AAdvGrid.Cells[3, i] := sKm;//�Ÿ�
							AAdvGrid.Cells[4, i] := sy;//Lat     //����� ���浵 ��ġ�� ���� AdvStringGrid3.Cells[5, i] := sx AdvStringGrid3.Cells[4, i] := sy
							AAdvGrid.Cells[5, i] := sx;//Lon
							AAdvGrid.Cells[12, i] := sAddress;
						end;
          end;
					if GS_SEARCH_WISE_NAVER_COMPARE then tmrWNSUM.Enabled := True;
        end else
        begin
					Grid_Init(lcsActiveEdit, 3);
					if Assigned(Frm_CUT011) then Frm_CUT011.Grid_Clear(lcsActiveEdit, 3) else
					if Assigned(Frm_Btn) then Frm_BTN01.Grid_Clear(lcsActiveEdit, 3);
				end;

        Result := True;
        if chkUseMiniMap.Checked then SetPOIMapDisplay;
      except
        on e: exception do
				begin
					Assert(False, Format('Naver : �� - %d �� - %d : Daum : �� - %d �� - %d : wURL : %s',
                              [iNaverSerachStartCnt, iNaverSerachEndCnt,
                               iDaumSerachStartCnt , iDaumSerachEndCnt, wURL]));
					iNaverSerachStartCnt :=0; iNaverSerachEndCnt := 0;
					iDaumSerachStartCnt  :=0; iDaumSerachEndCnt := 0;
          Result := False;
				end;
      end;
    finally
      js.Free;
    end;
  finally
    FreeAndNil(slTmp);
  end;
end;

// ���� ����Ʈ���� POI ������ ��������..
function TFrm_JON30.proc_PortalDAPI_GetPOILast(wURL, vRandom : string) : Boolean;
var
  jsoRlt : TJSONObject;

	js : TlkJSONobject;
  ja : TlkJSONlist;

  i : Integer;
  str, sx, sy, sXX, sPOI, sKm, sRCity, sCate, sTmp : string;
  jon01_txt : string;
  slTmp : TStringList;
  sAddress : string;
	AAdvGrid : TAdvStringGrid;
	ATEXT : TcxMemo;
begin
	SetDebugeWrite('JON30.proc_PortalD_GetPOILast');
  slTmp := TStringList.Create;
  try
    Result := False;
    // ��ȸ�� �˻�� �ʰ� �ö��� �־ ���� �������� ��ȸ�� ��ȣ�� Ʋ���� �н�
		if sNRanDom <> vRandom  then Exit;

    if Pos('"total_count"', wURL) = 0 then
		begin
  		Assert(False, 'Daum Error : '+ wURL);
			Exit;
    end;

		ATEXT := TcxMemo.create(nil);
		if lcsActiveEdit = 'meoStartArea' then
		begin
			ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoStartArea;
			if Length(ATEXT.Text) < 2 then exit;
			if sActieEdit <> lcsActiveEdit then Exit;
		end else
		if lcsActiveEdit = 'meoEndArea' then
		begin
			ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoEndArea;
			if Length(ATEXT.Text) < 2 then exit;
			if sActieEdit <> lcsActiveEdit then Exit;
		end;             
		jon01_txt := UpperCase(ATEXT.Text);
		if lcsActiveEdit = 'meoViaArea' then
		begin
			if GS_VIA_Tag = 1 then
				jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text)
			else
				jon01_txt := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text);
		end else
		if lcsActiveEdit = 'meoStartAreaCUT'   then jon01_txt := UpperCase(Frm_CUT011.meoStartAreaCUT.Text) else
		if lcsActiveEdit = 'meoEndAreaCUT'     then jon01_txt := UpperCase(Frm_CUT011.meoEndAreaCUT.Text) else
		if lcsActiveEdit = 'meoStartAreaWOR11' then jon01_txt := UpperCase(Frm_WOR11.meoStartAreaWOR11.Text) else
		if lcsActiveEdit = 'meoEndAreaWOR11'   then jon01_txt := UpperCase(Frm_WOR11.meoEndAreaWOR11.Text) else
		if lcsActiveEdit = 'meoCallBell'       then jon01_txt := UpperCase(StringReplace(Frm_BTN01.meoCallBellArea.Text, ' ','', [rfReplaceAll]));

		jsoRlt := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(wURL), 0) as TJSONObject;
    wURL := jsoRlt.ToString;

    js := TlkJSON.ParseText(wURL) as TlkJSONobject;
    try
      if Pos('"same_name"', wURL) = 0 then
      begin
        try
          if strToIntDef(js.Field['meta'].Field['total_count'].Value, 0) > 0 then
          begin
            ja := js.Field['documents'] as TlkJSONlist;
						if ( ja.Count <= 0 ) then
						begin
							Grid_Init(lcsActiveEdit, 3);
							Exit;
						end;

						if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or 
							 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid3 else
						if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or 
							 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid6 else
						if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid9;
						
						AAdvGrid.Clear;
						AAdvGrid.RowCount := 1;
            for i := 0 to ja.Count - 1 do
            begin
              if ( ja.Child[i].Field['address_type'].Value = 'ROAD' ) Or
                 ( ja.Child[i].Field['address_type'].Value = 'ROAD_ADDR' ) then
              begin
                if (Trim(ja.Child[i].Field['road_address'].Field['region_1depth_name'].Value) = '') Or
                   (Trim(ja.Child[i].Field['road_address'].Field['region_2depth_name'].Value) = '') Or
                   (Trim(ja.Child[i].Field['road_address'].Field['region_3depth_name'].Value) = '') then Continue;

                try
                  sAddress := ja.Child[i].Field['road_address'].Field['region_1depth_name'].Value + ' ' +
                              ja.Child[i].Field['road_address'].Field['region_2depth_name'].Value + ' ' +
                              ja.Child[i].Field['road_address'].Field['region_3depth_name'].Value;


                  if ( ja.Child[i].Field['address_type'].Value = 'ROAD_ADDR' ) then
                  begin
                    str := ja.Child[i].Field['address'].Field['region_3depth_name'].Value;  // �ּ� : [�� + ����] ���� �ڸ���.
                    if Trim(ja.Child[i].Field['address'].Field['main_address_no'].Value) <> '' then
                    begin
                      str := str + ' ' + ja.Child[i].Field['address'].Field['main_address_no'].Value;

                      if Trim(ja.Child[i].Field['address'].Field['sub_address_no'].Value) <> '' then
                        str := str + '-' + ja.Child[i].Field['address'].Field['sub_address_no'].Value;
                    end;
                  end;

                  sXX := ja.Child[i].Field['road_address'].Field['road_name'].Value;
                  if Trim(ja.Child[i].Field['road_address'].Field['main_building_no'].Value) <> '' then
                  begin
                    sXX := sXX + ' ' + ja.Child[i].Field['road_address'].Field['main_building_no'].Value;

                    if Trim(ja.Child[i].Field['road_address'].Field['sub_building_no'].Value) <> '' then
                      sXX := sXX + '-' + ja.Child[i].Field['road_address'].Field['sub_building_no'].Value
                  end;

                  if Trim(str) <> ''  then
                  begin
                    if Pos(StringReplace(sXX, ' ','', [rfReplaceAll]), StringReplace(gTFindData.sFullWord, ' ','', [rfReplaceAll])) > 0  then
                      sXX := sXX + '{' + str + '}'
                    else
                      sXX := str + '{' + sXX + '}' ;
                  end;
                except
                  sAddress := '';
                end;

                if sAddress = '' then
                  sAddress := ja.Child[i].Field['address_name'].Value;
              end else
              begin
                if (Trim(ja.Child[i].Field['address'].Field['region_1depth_name'].Value) = '') Or
                   (Trim(ja.Child[i].Field['address'].Field['region_2depth_name'].Value) = '') Or
                   (Trim(ja.Child[i].Field['address'].Field['region_3depth_name'].Value) = '') then Continue;

                sAddress := ja.Child[i].Field['address'].Field['region_1depth_name'].Value + ' ' +
                            ja.Child[i].Field['address'].Field['region_2depth_name'].Value + ' ' +
                            ja.Child[i].Field['address'].Field['region_3depth_name'].Value;

                if Trim(ja.Child[i].Field['address'].Field['main_address_no'].Value) <> '0' then
                begin
                  sXX := ja.Child[i].Field['address'].Field['region_3depth_name'].Value + ' ' +
                         ja.Child[i].Field['address'].Field['main_address_no'].Value;

                  if Trim(ja.Child[i].Field['address'].Field['sub_address_no'].Value) <> '' then
                    sXX := sXX + '-' + ja.Child[i].Field['address'].Field['sub_address_no'].Value
                end;
              end;

							procAddressDelimited(sAddress, ' ', slTmp);

              sy      := '';
              sx      := '';
              sRCity  := '';
              if slTmp.Count >= 2  then
              begin
                sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
                sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ

                proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
              end;

              try
								sCate := ja.Child[i].Field['category_name'].Value;
                sCate := StringReplace(sCate, '>', '-', [rfReplaceAll]);
                sPOI := '��' + sCate + '��';    // �� �α� POI�˻� �ɼ��� �������� ī�װ� �׸��� �̰��� ǥ��  2017.12.26
              except
                sPOI := '';
              end;

							if ja.Count > AAdvGrid.RowCount - 1 then
								if (i + 1 > 1) then AAdvGrid.AddRow;

							AAdvGrid.Cells[6, i] := sRCity;//�õ�
							AAdvGrid.Cells[7, i] := slTmp[1];  //�ñ���
							AAdvGrid.Cells[8, i] := slTmp[2];  //���鵿

							sTmp := D_HightlightTXT(AAdvGrid.Cells[6, i]) + ' ' +
											D_HightlightTXT(AAdvGrid.Cells[7, i]) + ' ' +
											D_HightlightTXT(AAdvGrid.Cells[8, i]);

							AAdvGrid.Cells[0, i] := sTmp;
							AAdvGrid.Cells[1, i] := M_HightlightTXT(sXX, jon01_txt, 1);//������
							AAdvGrid.Cells[2, i] := sPOI;//�α�POI
							if StrToIntDef(sKm, -1) > 0 then AAdvGrid.Cells[3, i] := '��'+sKm else	AAdvGrid.Cells[3, i] := sKm;//�Ÿ�
							AAdvGrid.Cells[4, i] := sx;//Lat     //����� ���浵 ��ġ�� ���� AdvStringGrid3.Cells[5, i] := sx AdvStringGrid3.Cells[4, i] := sy
							AAdvGrid.Cells[5, i] := sy;//Lon
  						AAdvGrid.Cells[12, i] := sAddress;
						end;
          end else
          begin
						Grid_Init(lcsActiveEdit, 3);          // �ڷᰡ ������� �����ڷ� ������ �ƴ� ����ó��
          end;
          Result := True;
        except
          on e: exception do
          begin
            Assert(False, e.message);
            Result := False;
          end;
        end;
      end else
      begin
        try
          if strToIntDef(js.Field['meta'].Field['total_count'].Value, 0) > 0 then
          begin
            ja := js.Field['documents'] as TlkJSONlist;

						if ( ja.Count <= 0 ) then
            begin
							Grid_Init(lcsActiveEdit, 3);
              Exit;
						end;

						if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or 
							 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid3 else
						if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or 
							 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid6 else
						if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid9;
						
						AAdvGrid.Clear;
						AAdvGrid.RowCount := 1;
						for i := 0 to ja.Count - 1 do
						begin
							sXX := ja.Child[i].Field['place_name'].Value;
							sXX := StringReplace(sXX, ' ','&nbsp;', [rfReplaceAll]);  // ������ &nbsp;�� ġȯ�ϴ� ���� : ��ũ�Ⱑ ������ ������ ���� �������� ���ڰ� ������ ����(��ũ�⸦ �ø��� ����)
							sXX := M_HightlightTXT(sXX, jon01_txt, 1);
							if Pos('>', sXX) <= 0 then sXX := StringReplace(sXX, '&nbsp;',' ', [rfReplaceAll]);

							sy      := '';
							sx      := '';
							sPOI    := '';
							sRCity  := '';
							sAddress := ja.Child[i].Field['address_name'].Value; 
							procAddressDelimited(sAddress, ' ', slTmp);
							if slTmp.Count >= 2 then
							begin
                sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
                sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ

                proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
							end;

              try
                sCate := ja.Child[i].Field['category_name'].Value;
                sCate := StringReplace(sCate, '>', '-', [rfReplaceAll]);
                sPOI := '��' + sCate + '��';    // �� �α� POI�˻� �ɼ��� �������� ī�װ� �׸��� �̰��� ǥ��  2017.12.26
              except
                sPOI := '';
              end;

							if ja.Count > AAdvGrid.RowCount - 1 then
								if (i + 1 > 1) then AAdvGrid.AddRow;

							AAdvGrid.Cells[6, i] := sRCity;//�õ�
							AAdvGrid.Cells[7, i] := slTmp[1];  //�ñ���
							AAdvGrid.Cells[8, i] := slTmp[2];  //���鵿

							sTmp := D_HightlightTXT(AAdvGrid.Cells[6, i]) + ' ' +
											D_HightlightTXT(AAdvGrid.Cells[7, i]) + ' ' +
											D_HightlightTXT(AAdvGrid.Cells[8, i]);

							AAdvGrid.Cells[0, i] := sTmp;
							AAdvGrid.Cells[1, i] := M_HightlightTXT(sXX, jon01_txt, 1);//������
							AAdvGrid.Cells[2, i] := sPOI;//�α�POI
							if StrToIntDef(sKm, -1) > 0 then AAdvGrid.Cells[3, i] := '��'+sKm else	AAdvGrid.Cells[3, i] := sKm;//�Ÿ�
							AAdvGrid.Cells[4, i] := sx;//Lat     //����� ���浵 ��ġ�� ���� AdvStringGrid3.Cells[5, i] := sx AdvStringGrid3.Cells[4, i] := sy
							AAdvGrid.Cells[5, i] := sy;//Lon
							AAdvGrid.Cells[12, i] := sAddress;
						end;
          end else
          begin
						Grid_Init(lcsActiveEdit, 3);        // �ڷᰡ ������� �����ڷ� ������ �ƴ� ����ó��
          end;
          Result := True;
        except
          on e: exception do
          begin
            Assert(False, e.message);
            Result := False;
          end;
        end;
      end;

  		if GS_SEARCH_WISE_NAVER_COMPARE then
      begin
        tmrWNSUM.Enabled := True
      end else
      begin
        if chkUseMiniMap.Checked then SetPOIMapDisplay;
      end;
    finally
      js.Free;
      FreeAndNil(jsoRlt);
    end;
  finally
    FreeAndNil(slTmp);
  end;
end;

function TFrm_JON30.pPDAPI_GetPOIMerge(wURL, vRandom : string) : Boolean;
var
  jsoRlt : TJSONObject;

	js : TlkJSONobject;
  ja : TlkJSONlist;

  i, iRow : Integer;
  str, sx, sy, sXX, sPOI, sCate : string;
  slTmp : TStringList;
  sAddress : string;
  bPass : Boolean;
begin
	SetDebugeWrite('JON30.pPDAPI_GetPOIMerge');
  slTmp := TStringList.Create;
  try
    Result := False;
		iRow := 0;
    if Pos('"total_count"', wURL) = 0 then
    begin
  		Assert(False, 'Daum Error : '+ wURL);
      Exit;
    end;

    jsoRlt := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(wURL), 0) as TJSONObject;
    wURL := jsoRlt.ToString;

    js := TlkJSON.ParseText(wURL) as TlkJSONobject;
    try
      if Pos('"same_name"', wURL) = 0 then
      begin
        try
          if strToIntDef(js.Field['meta'].Field['total_count'].Value, 0) > 0 then
          begin
            ja := js.Field['documents'] as TlkJSONlist;

            iRow := 1;
            for i := 0 to ja.Count - 1 do
            begin
              if i > 9 then Break;    // ���� 10�������� ��ȸ

              if ( ja.Child[i].Field['address_type'].Value = 'ROAD' ) Or
                 ( ja.Child[i].Field['address_type'].Value = 'ROAD_ADDR' ) then
              begin
                if (Trim(ja.Child[i].Field['road_address'].Field['region_1depth_name'].Value) = '') Or
                   (Trim(ja.Child[i].Field['road_address'].Field['region_2depth_name'].Value) = '') Or
                   (Trim(ja.Child[i].Field['road_address'].Field['region_3depth_name'].Value) = '') then Continue;

                try
                  sAddress := ja.Child[i].Field['road_address'].Field['region_1depth_name'].Value + ' ' +
                              ja.Child[i].Field['road_address'].Field['region_2depth_name'].Value + ' ' +
                              ja.Child[i].Field['road_address'].Field['region_3depth_name'].Value;


                  if ( ja.Child[i].Field['address_type'].Value = 'ROAD_ADDR' ) then
                  begin
                    str := ja.Child[i].Field['address'].Field['region_3depth_name'].Value;  // �ּ� : [�� + ����] ���� �ڸ���.
                    if Trim(ja.Child[i].Field['address'].Field['main_address_no'].Value) <> '' then
                    begin
                      str := str + ' ' + ja.Child[i].Field['address'].Field['main_address_no'].Value;

                      if Trim(ja.Child[i].Field['address'].Field['sub_address_no'].Value) <> '' then
                        str := str + '-' + ja.Child[i].Field['address'].Field['sub_address_no'].Value;
                    end;
                  end;

                  sXX := ja.Child[i].Field['road_address'].Field['road_name'].Value;
                  if Trim(ja.Child[i].Field['road_address'].Field['main_building_no'].Value) <> '' then
                  begin
                    sXX := sXX + ' ' + ja.Child[i].Field['road_address'].Field['main_building_no'].Value;

                    if Trim(ja.Child[i].Field['road_address'].Field['sub_building_no'].Value) <> '' then
                      sXX := sXX + '-' + ja.Child[i].Field['road_address'].Field['sub_building_no'].Value
                  end;

                  if Trim(str) <> ''  then
                  begin
                    if Pos(StringReplace(sXX, ' ','', [rfReplaceAll]), StringReplace(gTFindData.sFullWord, ' ','', [rfReplaceAll])) > 0  then
                      sXX := sXX + '{' + str + '}'
                    else
                      sXX := str + '{' + sXX + '}' ;
                  end;
                except
                  sAddress := '';
                end;

								if sAddress = '' then
                  sAddress := ja.Child[i].Field['address_name'].Value;
              end else
              begin
                if (Trim(ja.Child[i].Field['address'].Field['region_1depth_name'].Value) = '') Or
                   (Trim(ja.Child[i].Field['address'].Field['region_2depth_name'].Value) = '') Or
                   (Trim(ja.Child[i].Field['address'].Field['region_3depth_name'].Value) = '') then Continue;

                sAddress := ja.Child[i].Field['address'].Field['region_1depth_name'].Value + ' ' +
                            ja.Child[i].Field['address'].Field['region_2depth_name'].Value + ' ' +
                            ja.Child[i].Field['address'].Field['region_3depth_name'].Value;

                if Trim(ja.Child[i].Field['address'].Field['main_address_no'].Value) <> '0' then
                begin
                  sXX := ja.Child[i].Field['address'].Field['region_3depth_name'].Value + ' ' +
                         ja.Child[i].Field['address'].Field['main_address_no'].Value;

                  if Trim(ja.Child[i].Field['address'].Field['sub_address_no'].Value) <> '' then
                    sXX := sXX + '-' + ja.Child[i].Field['address'].Field['sub_address_no'].Value
                end;
              end;

							procAddressDelimited(sAddress, ' ', slTmp);
							sy      := '';
              sx      := '';
							if slTmp.Count >= 2  then
              begin
                sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
                sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ
              end;

              bPass := False;
              // ������ ���̹� �ڷ��� ������ Ʋ������ �����Ƿ� �ش� ���� ��/�Ʒ��� ���� ��Ī�� ���� ��쿡�� �ߺ� ����
              if iRow = 0 then
              begin
                if ( ( gPortalPOI[iRow+1].sA_POI = sXX ) And ( gPortalPOI[iRow+1].sA_Gubun = 'N' ) ) then
                begin
                  gPortalPOI[iRow+1].sA_All := '*';
                  bPass := True;
                end;
              end else
              if iRow = 19 then
              begin
                if ( ( gPortalPOI[iRow-1].sA_POI = sXX ) And ( gPortalPOI[iRow-1].sA_Gubun = 'N' ) ) then
                begin
                  gPortalPOI[iRow-1].sA_All := '*';
                  bPass := True;
                end;
              end else
              begin
                if ( ( gPortalPOI[iRow-1].sA_POI = sXX ) And ( gPortalPOI[iRow-1].sA_Gubun = 'N' ) ) then
                begin
                  gPortalPOI[iRow-1].sA_All := '*';
                  bPass := True;
                end else
                if ( ( gPortalPOI[iRow+1].sA_POI = sXX ) And ( gPortalPOI[iRow+1].sA_Gubun = 'N' ) ) then
                begin
                  gPortalPOI[iRow+1].sA_All := '*';
                  bPass := True;
                end;
              end;

              if bPass then
              begin
                gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
                gPortalPOI[iRow].sA_Address := '';
                gPortalPOI[iRow].sA_POI     := '';
                gPortalPOI[iRow].sA_sPOI    := '';
                gPortalPOI[iRow].sA_X       := '';
                gPortalPOI[iRow].sA_Y       := '';
                gPortalPOI[iRow].sA_Gubun   := '';
              end else
              begin
                gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
                gPortalPOI[iRow].sA_Address := sAddress;
                gPortalPOI[iRow].sA_POI     := sXX;
                gPortalPOI[iRow].sA_sPOI    := '';
                gPortalPOI[iRow].sA_X       := sx;
                gPortalPOI[iRow].sA_Y       := sy;
                gPortalPOI[iRow].sA_Gubun   := 'D';
              end;
              iRow := iRow + 2;
            end;
          end;
          Result := True;
        except
          on e: exception do
          begin
            Assert(False, e.message + ' - ' + gTFindData.sFullWord);
            Result := False;
          end;
        end;
      end else
      begin
        try
          if strToIntDef(js.Field['meta'].Field['total_count'].Value, 0) > 0 then
          begin
            ja := js.Field['documents'] as TlkJSONlist;
            iRow := 1;
            for i := 0 to ja.Count - 1 do
            begin
              if i > 9 then Break;    // ���� 10�������� ��ȸ

              sAddress := ja.Child[i].Field['address_name'].Value;
              sXX := ja.Child[i].Field['place_name'].Value;

							procAddressDelimited(sAddress, ' ', slTmp);
							sy      := '';
              sx      := '';
              if slTmp.Count >= 2 then
              begin
                sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['x'].Value));  // x ��ǥ
                sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['y'].Value));  // y ��ǥ
              end;

              try
                sCate := ja.Child[i].Field['category_name'].Value;
                sCate := StringReplace(sCate, '>', '-', [rfReplaceAll]);
                sPOI := '��' + sCate + '��';    // �� �α� POI�˻� �ɼ��� �������� ī�װ� �׸��� �̰��� ǥ��  2017.12.26
              except
                sPOI := '';
              end;

              bPass := False;
              // ������ ���̹� �ڷ��� ������ Ʋ������ �����Ƿ� �ش� ���� ��/�Ʒ��� ���� ��Ī�� ���� ��쿡�� �ߺ� ����
              if iRow = 0 then
              begin
                if ( ( gPortalPOI[iRow+1].sA_POI = sXX ) And ( gPortalPOI[iRow+1].sA_Gubun = 'N' ) ) then
                begin
                  gPortalPOI[iRow+1].sA_All := '*';
                  bPass := True;
                end;
              end else
              if iRow = 19 then
              begin
                if ( ( gPortalPOI[iRow-1].sA_POI = sXX ) And ( gPortalPOI[iRow-1].sA_Gubun = 'N' ) ) then
                begin
                  gPortalPOI[iRow-1].sA_All := '*';
                  bPass := True;
                end;
              end else
              begin
                if ( ( gPortalPOI[iRow-1].sA_POI = sXX ) And ( gPortalPOI[iRow-1].sA_Gubun = 'N' ) ) then
                begin
                  gPortalPOI[iRow-1].sA_All := '*';
                  bPass := True;
                end else
                if ( ( gPortalPOI[iRow+1].sA_POI = sXX ) And ( gPortalPOI[iRow+1].sA_Gubun = 'N' ) ) then
                begin
                  gPortalPOI[iRow+1].sA_All := '*';
                  bPass := True;
                end;
              end;

              if bPass then
              begin
                gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
                gPortalPOI[iRow].sA_Address := '';
                gPortalPOI[iRow].sA_POI     := '';
                gPortalPOI[iRow].sA_sPOI    := '';
                gPortalPOI[iRow].sA_X       := '';
                gPortalPOI[iRow].sA_Y       := '';
                gPortalPOI[iRow].sA_Gubun   := '';
              end else
              begin
                gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
                gPortalPOI[iRow].sA_Address := sAddress;
                gPortalPOI[iRow].sA_POI     := sXX;  //������
                gPortalPOI[iRow].sA_sPOI    := sPOI;
                gPortalPOI[iRow].sA_X       := sx;
                gPortalPOI[iRow].sA_Y       := sy;
                gPortalPOI[iRow].sA_Gubun   := 'D';
              end;
              iRow := iRow + 2;
            end;
          end;
          Result := True;
        except
          on e: exception do
          begin
            Assert(False, e.message);
            Result := False;
          end;
        end;
      end;
    finally
      js.Free;
      FreeAndNil(jsoRlt);
    end;
	finally
    FreeAndNil(slTmp);
  end;
end;

procedure TFrm_JON30.proc_Portal_GetPOI_Daum(word, vRandom : string);
var
	sApiKey, sHttp : string;
  JON01WNTh : TJON01WNThread;
begin
	SetDebugeWrite('JON30.proc_Portal_GetPOI_Daum');
	try
    sHttp := Format('https://search.map.kakao.com/mapsearch/map.daum?callback=&q=%s&msFlag=A&sort=0',
             [UrlEncode(UTF8Encode(trim(word)))]);
    try
      JON01WNTh := TJON01WNThread.Create(Self.Tag, 3, sHttp, sApiKey, vRandom);
      JON01WNTh.FreeOnTerminate := False;
    except

    end;
  except on E: Exception do
    begin
      Assert(False, 'proc_Portal_GetPOI_Daum Error : ' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.proc_Portal_GetPOI_DaumAPI(word, vRandom : string);
var
	sApiKey, sHttp, SCLat, SCLon : string;
	iRandom : Integer;
  JON01WNTh : TJON01WNThread;
begin
  SetDebugeWrite('JON30.proc_Portal_GetPOI_DaumAPI');
	try
		iRandom := RandomRange(0, GS_DAUM_APIKey.Count );
    if iRandom > ( GS_DAUM_APIKey.Count - 1) then iRandom := 0;

		SCLat := getDEGREE(Area_CenterLat);//'037335565';
		SCLon := getDEGREE(Area_CenterLon);//'126583729';

    sApiKey := GS_DAUM_APIKey[iRandom];
    sHttp := 'https://dapi.kakao.com/v2/local/search/keyword.json?y='+SCLat+'&x='+SCLon+'&query='+ UrlEncode(UTF8Encode(trim(word)));

    try
      JON01WNTh := TJON01WNThread.Create(Self.Tag, 4, sHttp, sApiKey, vRandom);
      JON01WNTh.FreeOnTerminate := False;
    except

    end;
  except on E: Exception do
    begin
      Assert(False, 'proc_Portal_GetPOI_DaumAPI Error : ' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.proc_Portal_GetPOI_DaumAPIAddr(word, vRandom : string);
var
	sApiKey, sHttp : string;
	iRandom : Integer;
  JON01WNTh : TJON01WNThread;
begin
  SetDebugeWrite('JON30.proc_Portal_GetPOI_DaumAPIAddr');
	try
		iRandom := RandomRange(0, GS_DAUM_APIKey.Count );
    if iRandom > ( GS_DAUM_APIKey.Count - 1) then iRandom := 0;

    sApiKey := GS_DAUM_APIKey[iRandom];
    sHttp := 'https://dapi.kakao.com/v2/local/search/address.json?query='+ UrlEncode(UTF8Encode(trim(word)));

    try
      JON01WNTh := TJON01WNThread.Create(Self.Tag, 10, sHttp, sApiKey, vRandom);
      JON01WNTh.FreeOnTerminate := False;
    except

    end;
  except on E: Exception do
    begin
      Assert(False, 'proc_Portal_GetPOI_DaumAPIAddr Error : ' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.proc_Portal_GetPOI_NaverAPINew_cloud(word,
	vRandom, AGubun: string);
var
	sApiKey, sHttp : string;
	iRandom : Integer;
	JON01WNTh : TJON01WNThread;
	sTmpLon, sTmpLat : string;
begin
	SetDebugeWrite('JON30.proc_Portal_GetPOI_NaverAPI');
	try
		sTmpLon := SetWGS84(Area_CenterLon);
		sTmpLat := SetWGS84(Area_CenterLat);      //037XXXXX -> 37.XXXXXXX�� ��ȯ
		
		//https://naveropenapi.apigw.ntruss.com/map-geocode/v2/geocode?query=�Ｚ��127-7&coordinate=127.043625,37.486967&X-NCP-APIGW-API-KEY-ID=l2rcola66c&X-NCP-APIGW-API-KEY=GnVuiD7B41aqS7S9O5OEHNmYJ6NK7lPPGi3oPHVi
		iRandom := RandomRange(0, gslNaverClientID.Count); //���� ������ŭ ��� 0, 5 -> Max index = 4
		if iRandom > ( gslNaverClientID.Count - 1) then iRandom := 0;

		sApiKey := gslNaverClientID[iRandom] + ',' + gslNaverClientKey[iRandom] ;
		if AGubun = 'Places' then
			sHttp := 'https://naveropenapi.apigw.ntruss.com/map-place/v1/search?query=' + UrlEncode(UTF8Encode(trim(word))) 
						 + '&coordinate=' + sTmpLon + ',' + sTmpLat;
		if AGubun = 'Address' then
			sHttp := 'https://naveropenapi.apigw.ntruss.com/map-geocode/v2/geocode?query=' + UrlEncode(UTF8Encode(trim(word))) 
						 + '&coordinate=' + sTmpLon + ',' + sTmpLat;
		try
			JON01WNTh := TJON01WNThread.Create(Self.Tag, 13, sHttp, sApiKey, vRandom);
			JON01WNTh.FreeOnTerminate := False;
		except

    end;
  except on E: Exception do
    begin
      Assert(False, 'proc_Portal_GetPOI_NaverAPI Error : ' + E.Message);
    end;
  end;
end;

function TFrm_JON30.proc_Portal_GetPOI_NaverAPILast_cloud(wUrl, vRandom, vApiKey : string) : Boolean;
var
  js : TlkJSONobject;
	ja, jc : TlkJSONlist;

	jObj, jSubObj, jTmpObj : TJSONObject;
	jPair : TJSONPair;
	jValue : TJSONValue;
	jArray : TJSONArray;

	i, j, iRow, iPos : Integer;
	str, sx, sy, sXX, sYY, sName, sPOI, sKm, sRCity, sRWard, sRStreet, sCate, sTmp : string;
	jon01_txt, sApiKey, sHttp, sErrCd : string;
	ASido, ADong, sAddress: string;
	slTmp : TStringList;
	row3, row4 : string;
	dY, dX : Double;
	AGubun, sBunji : string; //'Address', 'Places'
	AAdvGrid : TAdvStringGrid;
	ATEXT : TcxMemo;
begin
	SetDebugeWrite('JON30.proc_Portal_GetPOI_NaverAPILast_cloud');
	
	try
		// ��ȸ�� �˻�� �ʰ� �ö��� �־ ���� �������� ��ȸ�� ��ȣ�� Ʋ���� �н�
		if sNRanDom <> vRandom  then Exit;
		if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then Exit;
		
		AGubun := '';	
		if pos('"addresses"', wURL) > 0 then AGubun := 'addresses' else //�˻���� ������ ���� �ٸ��� ó��
		if pos('"places"', wURL) > 0 then AGubun := 'places';
		if AGubun = '' then exit;
		
		slTmp := TStringList.Create;
		Try
			jObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(wURL), 0) as TJSONObject;

			jPair := jObj.Get('status');
			jValue := jPair.JsonValue;
			sTmp := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
		
			if sTmp <>  'OK' then  //ok, INVALID_REQUEST, SYSTEM_ERROR
			begin
				Grid_Clear(lcsActiveEdit, 3);
				Exit;
			end;
		
			jPair := jObj.Get('meta');
			jValue := jPair.JsonValue;
			sTmp := jValue.ToString;
		
			jSubObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sTmp), 0) as TJSONObject;
			jPair := jSubObj.Get('count');
			jValue := jPair.JsonValue;
			sTmp := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
			FreeAndNil(jSubObj);

			if StrToIntDef(sTmp, 0) <  1 then  //�˻��Ǽ�Ȯ��
			begin
				Exit;
			end;

			jon01_txt := pSearchPortalInitAndTxt;
		
			jPair := jObj.Get(AGubun);
			jValue := jPair.JsonValue;
			sTmp := jValue.ToString;

			if (sTmp = '') or (sTmp = '{}') then exit;
		
			jArray := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sTmp), 0) as TJSONArray;
			if jArray.Count = 0 then
			begin
				FreeAndNil(jArray);
				FreeAndNil(jObj);
				Grid_Init(lcsActiveEdit, 3);
				if Assigned(Frm_CUT011) then Frm_CUT011.Grid_Clear(lcsActiveEdit, 3) else
				if Assigned(Frm_BTN) then Frm_BTN01.Grid_Clear(lcsActiveEdit, 3);
			end else
			begin
				ATEXT := TcxMemo.create(nil);
				if lcsActiveEdit = 'meoStartArea' then
				begin
					ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoStartArea;
					if Length(ATEXT.Text) < 2 then exit;
					if sActieEdit <> lcsActiveEdit then Exit;
				end else
				if lcsActiveEdit = 'meoEndArea' then
				begin
					ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoEndArea;
					if Length(ATEXT.Text) < 2 then exit;
					if sActieEdit <> lcsActiveEdit then Exit;
				end;             
				jon01_txt := UpperCase(ATEXT.Text);
				
				if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or 
					 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid3 else
				if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or 
					 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid6 else
				if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid9;

				for i := 0 to jArray.Count - 1 do
				begin
					if i > 9 then Break;    // ���� 10�������� ��ȸ
					sBunji := '';
					jSubObj := jArray.Get(i) as TJSONObject;

					if AGubun = 'addresses' then jPair := jSubObj.Get('jibunAddress') else
					if AGubun = 'places'    then jPair := jSubObj.Get('jibun_address');
					jValue := jPair.JsonValue;
					sAddress := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);

					jPair := jSubObj.Get('y');
					jValue := jPair.JsonValue;
					sX := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
					sX := '0' + getWGS84(sX);

					jPair := jSubObj.Get('x');
					jValue := jPair.JsonValue;
					sY := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
					sY := getWGS84(sY);

					procAddressDelimited(sAddress, ' ', slTmp);
				
					sRCity := slTmp[0];
					sRWard := slTmp[1];
					sRStreet := slTmp[2];
					if slTmp.Count > 3 then 	sBunji := slTmp[slTmp.Count-1];

					proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);

					if (i + 1 > 1) then AAdvGrid.AddRow;

					AAdvGrid.Cells[6, i] := sRCity;//�õ�
					AAdvGrid.Cells[7, i] := slTmp[1];  //�ñ���
					AAdvGrid.Cells[8, i] := slTmp[2];  //���鵿

					sTmp := D_HightlightTXT(AAdvGrid.Cells[6, i]) + ' ' +
									D_HightlightTXT(AAdvGrid.Cells[7, i]) + ' ' +
									D_HightlightTXT(AAdvGrid.Cells[8, i]);
					sName:= D_HightlightTXT(slTmp[slTmp.Count-2] + ' ' + sBunji);

					AAdvGrid.Cells[0, i] := M_HightlightTXT(sTmp, jon01_txt, 1);
					AAdvGrid.Cells[1, i] := N_HightlightTXT(sName); //������
					AAdvGrid.Cells[2, i] := sPOI;//�α�POI
					if StrToIntDef(sKm, -1) > 0 then AAdvGrid.Cells[3, i] := '��'+sKm else	AAdvGrid.Cells[3, i] := sKm;//�Ÿ�
					AAdvGrid.Cells[4, i] := sx;//Lat     //���⸸ ���浵 ��ġ�� ���� AdvStringGrid3.Cells[5, i] := sx AdvStringGrid3.Cells[4, i] := sy
					AAdvGrid.Cells[5, i] := sy;//Lon
					AAdvGrid.Cells[12, i] := sAddress;
				end;

				if GS_SEARCH_WISE_NAVER_COMPARE then
				begin
					tmrWNSUM.Enabled := True
				end else
				begin
					if chkUseMiniMap.Checked then SetPOIMapDisplay;
				end;
			end;
		finally
			slTmp.Free;
			Screen.Cursor := crDefault;
		end;
	except on E: Exception do
		begin
			Assert(False, 'proc_Portal_GetPOI_NaverAPILast Error : ' + sAddress + ' / ' + E.Message);
		end;
	end;
end;

function TFrm_JON30.pPNAPI_GetPOIMerge_cloud(wUrl, vRandom,
	vApiKey: string): Boolean;
var
	jObj, jSubObj, jTmpObj : TJSONObject;
	jPair : TJSONPair;
	jValue : TJSONValue;
	jArray : TJSONArray;
	i, iRow : integer;
	sTmp, sCode : string;
	sName, sAddress, sPOI, sKm, sRCity, sRWard, sRStreet, sCate, sx, sy : string;
	slTmp : TStringList;
	AGubun, sBunji : string; //'Address', 'Places'
	bPass : Boolean;
begin
	SetDebugeWrite('JON30.pPNAPI_GetPOIMerge_cloud');
	Result := False;
	iRow := 0;
	// ��ȸ�� �˻�� �ʰ� �ö��� �־ ���� �������� ��ȸ�� ��ȣ�� Ʋ���� �н�
	if sNRanDom <> vRandom  then Exit;

	AGubun := '';	
	if pos('"addresses"', wURL) > 0 then AGubun := 'addresses' else //�˻���� ������ ���� �ٸ��� ó��
	if pos('"places"', wURL) > 0 then AGubun := 'places';
	if AGubun = '' then exit;
	
	jObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(wURL), 0) as TJSONObject;
	try
		jPair := jObj.Get('status');
		jValue := jPair.JsonValue;
		sTmp := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
		
		if sTmp <>  'OK' then  //ok, INVALID_REQUEST, SYSTEM_ERROR
		begin
			Exit;
		end;
		
		jPair := jObj.Get('meta');
		jValue := jPair.JsonValue;
		sTmp := jValue.ToString;
		
		jSubObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sTmp), 0) as TJSONObject;
		jPair := jSubObj.Get('count');
		jValue := jPair.JsonValue;
		sTmp := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
		FreeAndNil(jSubObj);

		if StrToIntDef(sTmp, 0) <  1 then  //�˻��Ǽ�Ȯ��
		begin
			Exit;
		end;

		
		jPair := jObj.Get(AGubun);
		jValue := jPair.JsonValue;
		sTmp := jValue.ToString;

		if (sTmp = '') or (sTmp = '{}') then exit;
		
		jArray := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(sTmp), 0) as TJSONArray;
		if jArray.Count = 0 then
		begin
			FreeAndNil(jArray);
			FreeAndNil(jObj);
		end else
		begin
			try
        slTmp := TStringList.Create;
				if AGubun = 'addresses' then
				begin
					for i := 0 to jArray.Count - 1 do
					begin
						sBunji := ''; sName := '';
						if i > 9 then Break;    // ���� 10�������� ��ȸ
						
						jSubObj := jArray.Get(i) as TJSONObject;

						jPair := jSubObj.Get('jibunAddress');
						jValue := jPair.JsonValue;
						sAddress := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);

						jPair := jSubObj.Get('y');
						jValue := jPair.JsonValue;
						sX := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
						sX := '0' + getWGS84(sX);

						jPair := jSubObj.Get('x');
						jValue := jPair.JsonValue;
						sY := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
						sY := getWGS84(sY);

						procAddressDelimited(sAddress, ' ', slTmp);

						if slTmp.Count > 3 then
						begin
							sBunji := slTmp[slTmp.Count-1];
							sName := slTmp[slTmp.Count-2] + ' ' + sBunji;
						end;

						proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
																																																												 
						bPass := False;
						// ������ ���̹� �ڷ��� ������ Ʋ������ �����Ƿ� �ش� ���� ��/�Ʒ��� ���� ��Ī�� ���� ��쿡�� �ߺ� ����
						if iRow = 0 then
						begin
							if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
							begin
								gPortalPOI[iRow+1].sA_All := '*';
								bPass := True;
							end;
						end else
						if iRow = 19 then
						begin
							if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
							begin
								gPortalPOI[iRow-1].sA_All := '*';
								bPass := True;
							end;
						end else
						begin
							if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
							begin
								gPortalPOI[iRow-1].sA_All := '*';
								bPass := True;
							end else
							if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
							begin
								gPortalPOI[iRow+1].sA_All := '*';
								bPass := True;
							end;
						end;

						if bPass then
						begin
							gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
							gPortalPOI[iRow].sA_Address := '';
							gPortalPOI[iRow].sA_POI     := '';
							gPortalPOI[iRow].sA_sPOI    := '';
							gPortalPOI[iRow].sA_X       := '';
							gPortalPOI[iRow].sA_Y       := '';
							gPortalPOI[iRow].sA_Gubun   := '';
						end else
						begin
							gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
							gPortalPOI[iRow].sA_Address := sAddress;
							gPortalPOI[iRow].sA_POI     := sName;
							gPortalPOI[iRow].sA_sPOI    := sPoi;
							gPortalPOI[iRow].sA_X       := sx;
							gPortalPOI[iRow].sA_Y       := sy;
							gPortalPOI[iRow].sA_Gubun   := 'N';
						end;
						iRow := iRow + 2;
					end;
				end else
				if AGubun = 'places' then
				begin
					for i := 0 to jArray.Count - 1 do
					begin
						if i > 9 then Break;    // ���� 10�������� ��ȸ
				
						jSubObj := jArray.Get(i) as TJSONObject;

						jPair := jSubObj.Get('name');
						jValue := jPair.JsonValue;
						sName := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);

						jPair := jSubObj.Get('jibun_address');
						jValue := jPair.JsonValue;
						sAddress := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);

						jPair := jSubObj.Get('y');
						jValue := jPair.JsonValue;
						sX := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
						sX := '0' + getWGS84(sX);

						jPair := jSubObj.Get('x');
						jValue := jPair.JsonValue;
						sY := StringReplace(jValue.ToString, '"', '', [rfReplaceAll]);
						sY := getWGS84(sY);

						procAddressDelimited(sAddress, ' ', slTmp);

						bPass := False;
						// ������ ���̹� �ڷ��� ������ Ʋ������ �����Ƿ� �ش� ���� ��/�Ʒ��� ���� ��Ī�� ���� ��쿡�� �ߺ� ����
						if iRow = 0 then
						begin
							if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
							begin
								gPortalPOI[iRow+1].sA_All := '*';
								bPass := True;
							end;
						end else
						if iRow = 19 then
						begin
							if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
							begin
								gPortalPOI[iRow-1].sA_All := '*';
								bPass := True;
							end;
						end else
						begin
							if ( ( gPortalPOI[iRow-1].sA_POI = sName ) And ( gPortalPOI[iRow-1].sA_Gubun = 'D' ) ) then
							begin
								gPortalPOI[iRow-1].sA_All := '*';
								bPass := True;
							end else
							if ( ( gPortalPOI[iRow+1].sA_POI = sName ) And ( gPortalPOI[iRow+1].sA_Gubun = 'D' ) ) then
							begin
								gPortalPOI[iRow+1].sA_All := '*';
								bPass := True;
							end;
						end;

						if bPass then
						begin
							gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
							gPortalPOI[iRow].sA_Address := '';
							gPortalPOI[iRow].sA_POI     := '';
							gPortalPOI[iRow].sA_sPOI    := '';
							gPortalPOI[iRow].sA_X       := '';
							gPortalPOI[iRow].sA_Y       := '';
							gPortalPOI[iRow].sA_Gubun   := '';
						end else
						begin
							gPortalPOI[iRow].sA_FindKey := IntToStr(iRow);
							gPortalPOI[iRow].sA_Address := sAddress;
							gPortalPOI[iRow].sA_POI     := sName;
							gPortalPOI[iRow].sA_sPOI    := sPoi;
							gPortalPOI[iRow].sA_X       := sx;
							gPortalPOI[iRow].sA_Y       := sy;
							gPortalPOI[iRow].sA_Gubun   := 'N';
						end;
						iRow := iRow + 2;
					end;
				end;
			finally
				slTmp.free;
				Result := True;
			end;
		end;
	except on E: Exception do
    begin
			Assert(False, 'pPNAPI_GetPOIMerge_cloud Error : ' + sAddress + ' / ' + E.Message);
    end;
  end;
end;

// ������ӿ��� POI ������ ��������..
function TFrm_JON30.proc_Wisenut_GetPOILast( wURL, word : String ) : Boolean;
var
  slTmp : TStringList;
	sAddress : string;
begin
	SetDebugeWrite('JON30.proc_Wisenut_GetPOILast');
  Result := True;

  try
    try
      // ������� ���� ���� ����
      if Trim(wURL) <> '' then
      begin
//�������� �˻� �ȵ� ���� 20181117
//        if ( (Pos('QueryAnalyzerResult', wURL) = 0 ) ) Or
//           ( (Pos('"QueryAnalyzerResult": {"Type": "NONE"}', wURL) > 0 ) ) then  // "Type": "NONE" �ϰ�� ������ ó��  2018.10.07 LYB
				if (Pos('QueryAnalyzerResult', wURL) = 0 ) then
				begin
          if lsPOISvrIP = PoiServer1 then
					begin
						GS_PoiServerIP := PoiServer2;
          end else
          begin
            GS_PoiServerIP := PoiServer1;
          end;
					Result := False;
					if lcsActiveEdit = 'meoViaArea' then 	//������POI�˻����� ����
					begin
						Frm_Main.Frm_JON01N[Self.Tag].pnl_ViaMent.Visible := False;
						gB_ViaIng := False;
					end; 
					Exit;
        end;

        if (Pos('"SearchQueryResult": "0"', wURL) = 0 ) And
           (Pos('"Collection"'            , wURL) > 0 ) And
           (Pos('"Error":{'               , wURL) = 0 ) then
        begin
					proc_Wisenut_GetPOI_Proc(wURL, word);
          Proc_AddressSvrResult;

          //-- �ּ� �ڷ� ����
          if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then
          begin
            if lcsActiveEdit = 'meoStartArea' then
            begin
              if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'E') And ( Not bClick ) then Exit;
              try
                SetDebugeWrite('JON30.AdvStringGrid1.Cells[0,1] : ' + AdvStringGrid1.Cells[0,1]);
                if AdvStringGrid1.Cells[0,1] = '' then
                begin
                  if noSearch then
                  begin
                    noSearch := False;
                    Exit;
                  end;

									if Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Hint <> 'F4)���' then     // 20130703  LYB  ��ݻ����ϰ�쿡�� ����� ���� �ڵ� ���� �ȵȰ� �Ѵ�.
									begin
										slTmp := TStringList.Create;
										try
											AdvStringGrid1.ShowSelection := False;
											AdvStringGrid2.ShowSelection := True;
											AdvStringGrid2.FocusCell(0,0);
												
											sAddress := D_HightlightTXT(AdvStringGrid2.Cells[0, 0]); 
                      if Trim(sAddress) <> '' then
                      begin
                        procAddressDelimited(sAddress, ' ', slTmp);
                        Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 := slTmp[0];
                        Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 := slTmp[1];//�ñ���
                        Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := slTmp[2];//���鵿
                        if slTmp.Count = 5 then
                        begin
                          Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 + slTmp[4];
                        end;
                      end;
										finally
											FreeAndNil(slTmp);
										end;

										Frm_Main.Frm_JON01N[Self.Tag].lcsSta4 := '';  //�α�POI
										Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text := D_HightlightTXT(AdvStringGrid2.Cells[0, 0]);
										SetDebugeWrite('JON30.lblStartAreaName.Text 11745 : ' + Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text);
										MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);
										Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text := '';
										Frm_Main.Frm_JON01N[Self.Tag].lcsConfAREA4 := '';

										Frm_Main.Frm_JON01N[Self.Tag].lcsStaDocId := '';
										Frm_Main.Frm_JON01N[Self.Tag].lcsStaCellSel := 'A';

										// 20120805 ��ǥ ���� üũ LYB
										Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area1 := Frm_Main.Frm_JON01N[Self.Tag].lcsSta1;
										Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area2 := Frm_Main.Frm_JON01N[Self.Tag].lcsSta2;
										Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area3 := Frm_Main.Frm_JON01N[Self.Tag].lcsSta3;
										Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area4 := Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text;
										Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area5 := Frm_Main.Frm_JON01N[Self.Tag].lcsSta4;

										Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X := AdvStringGrid2.Cells[2, 0];
										Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y := AdvStringGrid2.Cells[3, 0];
										Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X := '';
										Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y := '';
										Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Gubun := '3';

										// tmr1 Ÿ�̸��� �̺�Ʈ�� �ű�.
										Frm_Main.Frm_JON01N[Self.Tag].StartListN := '1';  //����� ����Ʈ ������
										Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'D';
									end;
								end else
                begin
                  AdvStringGrid1.ShowSelection := True;
                  AdvStringGrid2.ShowSelection := False;
                end;
              finally
                FreeAndNil(slTmp);
								Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X;
								Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y;
								Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEXval := '';
								Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEYval := '';
							end;
            end else
            if lcsActiveEdit = 'meoEndArea' then
            begin
              if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'S') And ( Not bClick ) then Exit;
              try
                if noSearch then
                begin
                  noSearch := False;
                  Exit;
                end;
                if AdvStringGrid5.Cells[0,1] = '' then
                begin
									if Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Hint <> 'F4)���' then     // 20130703  LYB  ��ݻ����ϰ�쿡�� ����� ���� �ڵ� ���� �ȵȰ� �Ѵ�.
									begin
										if AdvStringGrid4.Cells[0,0] <> '' then
										begin
											slTmp := TStringList.Create;
											try
												AdvStringGrid5.ShowSelection := False;
												AdvStringGrid4.ShowSelection := True;
												AdvStringGrid4.FocusCell(0,0);

												sAddress := D_HightlightTXT(AdvStringGrid4.Cells[0, 0]);
                        if Trim(sAddress) <> '' then
                        begin
                          procAddressDelimited(sAddress, ' ', slTmp);

                          Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := slTmp[0];
                          Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := slTmp[1];//�ñ���
                          Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := slTmp[2];//���鵿
                          if slTmp.Count = 5 then
                          begin
                            Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 + slTmp[4];
                          end;
                        end;
											finally
												FreeAndNil(slTmp);
											end;
											Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := '';//�α�POI
											Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption := D_HightlightTXT(AdvStringGrid4.Cells[0, 0]);

											Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := '';
											Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text := Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption + ' ' + Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption;
											SetDebugeWrite('JON30.cxReEndArea.Text 11858 : ' + Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text);
											Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := '';
											Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := 'A';

											MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text), clRed, [fsBold]);

											Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := AdvStringGrid4.Cells[2, 0];
											Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := AdvStringGrid4.Cells[3, 0];

											Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X := '';
											Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y := '';

											Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'D';
										end;
									end;
								end else
                begin
                  AdvStringGrid5.ShowSelection := True;
                  AdvStringGrid4.ShowSelection := False;
                end;
              finally
                FreeAndNil(slTmp);
								Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X;
								Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y;
								Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := '';
								Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := '';
							end;
            end else
            if lcsActiveEdit = 'meoViaArea' then
            begin
              if noSearch then
              begin
                noSearch := False;
								gB_ViaIng := False;
								Frm_Main.Frm_JON01N[Self.Tag].pnl_ViaMent.Visible := False;
                Exit;
              end;
							if AdvStringGrid8.Cells[0,1] = '' then
              begin
								if AdvStringGrid7.Cells[0,0] <> '' then
								begin
									slTmp := TStringList.Create;
									try
										AdvStringGrid8.ShowSelection := False;
										AdvStringGrid7.ShowSelection := True;
										AdvStringGrid7.FocusCell(0,0);

										sAddress := D_HightlightTXT(AdvStringGrid7.Cells[0, 0]);
                    if Trim(sAddress) <> '' then
                    begin
                      procAddressDelimited(sAddress, ' ', slTmp);
                      Frm_Main.Frm_JON01N[Self.Tag].ViaSA1[GS_VIA_Tag] := slTmp[0];
                      Frm_Main.Frm_JON01N[Self.Tag].ViaSA2[GS_VIA_Tag] := slTmp[1];
                      Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] := slTmp[2];
                      if slTmp.Count = 5 then
                      begin
                        Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] + slTmp[4];
                      end;
                    end;
									finally
										FreeAndNil(slTmp);
									end;

									Frm_Main.Frm_JON01N[Self.Tag].DocId[GS_VIA_Tag] := '';
									Frm_Main.Frm_JON01N[Self.Tag].CellSel[GS_VIA_Tag] := 'A';
									Frm_Main.Frm_JON01N[Self.Tag].SchWord[GS_VIA_Tag] := gTFindData.sFullWord;

									if GS_VIA_Tag = 1 then
										Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption := D_HightlightTXT(AdvStringGrid7.Cells[0, 0])
									else
										Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption := D_HightlightTXT(AdvStringGrid7.Cells[0, 0]);

									Frm_Main.Frm_JON01N[Self.Tag].ViaAreaDetail[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid7.Cells[0, 0]);

									if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text
																		else Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text;

									Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := AdvStringGrid7.Cells[2, 0];
									Frm_Main.Frm_JON01N[Self.Tag].Yposvia[GS_VIA_Tag] := AdvStringGrid7.Cells[3, 0];
									ViaPos('', Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag], Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag]);
									GS_Grid_VIA := 'D';
								end;
							end else
              begin
                AdvStringGrid8.ShowSelection := True;
                AdvStringGrid7.ShowSelection := False;
              end;
            end else
            if lcsActiveEdit = 'meoStartAreaCUT' then
            begin
              if AdvStringGrid1.Cells[0,1] = '' then
              begin
                if noSearch then
                begin
									noSearch := False;
                  Exit;
                end;
                if AdvStringGrid2.Cells[0,0] <> '' then
                begin
                  slTmp := TStringList.Create;
                  try
                    AdvStringGrid1.ShowSelection := False;
                    AdvStringGrid2.ShowSelection := True;
                    AdvStringGrid2.FocusCell(0,0);

										sAddress := D_HightlightTXT(AdvStringGrid2.Cells[0, 0]);
                    if Trim(sAddress) <> '' then
                    begin
        							procAddressDelimited(sAddress, ' ', slTmp);
   										Frm_CUT011.lcsSta1 := slTmp[0];
	   									Frm_CUT011.lcsSta2 := slTmp[1];//�ñ���
		  								Frm_CUT011.lcsSta3 := slTmp[2];//���鵿
                    end;
									finally
                    FreeAndNil(slTmp);
                  end;
                  Frm_CUT011.cxtSA1.Text := Frm_CUT011.lcsSta1;
									Frm_CUT011.cxtSA2.Text := Frm_CUT011.lcsSta2;
                  Frm_CUT011.cxtSA3.Text := Frm_CUT011.lcsSta3;
									Frm_CUT011.lblStartAreaName.Caption := D_HightlightTXT(AdvStringGrid2.Cells[0, 0]);
                  Frm_CUT011.cxtStartAreaDetail.Text := '';
                  Frm_CUT011.cxtStartXval.Text := AdvStringGrid2.Cells[2, 0];
                  Frm_CUT011.cxtStartYval.Text := AdvStringGrid2.Cells[3, 0];

                  FreeAndNil(slTmp);
                end;
              end else
              begin
                AdvStringGrid1.ShowSelection := True;
                AdvStringGrid2.ShowSelection := False;
              end;
            end else
            if lcsActiveEdit = 'meoEndAreaCUT' then
            begin
              if noSearch then
              begin
                noSearch := False;
                Exit;
              end;
              if AdvStringGrid5.Cells[0,1] = '' then
              begin
                if AdvStringGrid4.Cells[0,0] <> '' then
                begin
                  slTmp := TStringList.Create;
                  try
                    AdvStringGrid5.ShowSelection := False;
                    AdvStringGrid4.ShowSelection := True;
                    AdvStringGrid4.FocusCell(0,0);

										sAddress := D_HightlightTXT(AdvStringGrid4.Cells[0, 0]);
                    if Trim(sAddress) <> '' then
                    begin
        							procAddressDelimited(sAddress, ' ', slTmp);
	  									Frm_CUT011.lcsEnd1 := slTmp[0];
		  								Frm_CUT011.lcsEnd2 := slTmp[1];//�ñ���
			  							Frm_CUT011.lcsEnd3 := slTmp[2];//���鵿
                    end;
									finally
										FreeAndNil(slTmp);
                  end;
                  Frm_CUT011.cxtEd1.Text := Frm_CUT011.lcsEnd1;
                  Frm_CUT011.cxtEd2.Text := Frm_CUT011.lcsEnd2;
                  Frm_CUT011.cxtEd3.Text := Frm_CUT011.lcsEnd3;
                  Frm_CUT011.lblEndAreaName.Caption := D_HightlightTXT(AdvStringGrid4.Cells[0, 0]);

                  Frm_CUT011.cxtEndAreaDetail.Text := '';

                  Frm_CUT011.cxtEndXval.Text := AdvStringGrid4.Cells[2, 0];
                  Frm_CUT011.cxtEndYval.Text := AdvStringGrid4.Cells[3, 0];

                  FreeAndNil(slTmp);
                end;
              end else
              begin
                AdvStringGrid5.ShowSelection := True;
                AdvStringGrid4.ShowSelection := False;
              end;
						end else
						if lcsActiveEdit = 'meoStartAreaWOR11' then
						begin
							if AdvStringGrid1.Cells[0,1] = '' then
              begin
                if noSearch then
                begin
                  noSearch := False;
                  Exit;
                end;
                if AdvStringGrid2.Cells[0,0] <> '' then
                begin
                  slTmp := TStringList.Create;
                  try
                    AdvStringGrid1.ShowSelection := False;
                    AdvStringGrid2.ShowSelection := True;
                    AdvStringGrid2.FocusCell(0,0);

										sAddress := D_HightlightTXT(AdvStringGrid2.Cells[0, 0]);
                    if Trim(sAddress) <> '' then
                    begin
        							procAddressDelimited(sAddress, ' ', slTmp);
	  									Frm_WOR11.lcsSta1 := slTmp[0];
		  								Frm_WOR11.lcsSta2 := slTmp[1];//�ñ���
			  							Frm_WOR11.lcsSta3 := slTmp[2];//���鵿
                    end;
									finally
                    FreeAndNil(slTmp);
                  end;
									Frm_WOR11.cxtSA1.Text := Frm_WOR11.lcsSta1;
                  Frm_WOR11.cxtSA2.Text := Frm_WOR11.lcsSta2;
                  Frm_WOR11.cxtSA3.Text := Frm_WOR11.lcsSta3;
                  Frm_WOR11.lblStartAreaName.Caption := D_HightlightTXT(AdvStringGrid2.Cells[0, 0]);
                  Frm_WOR11.cxtStartAreaDetail.Text := '';
                  Frm_WOR11.cxtStartXval.Text := AdvStringGrid2.Cells[2, 0];
                  Frm_WOR11.cxtStartYval.Text := AdvStringGrid2.Cells[3, 0];

                  FreeAndNil(slTmp);
                end;
              end else
              begin
                AdvStringGrid1.ShowSelection := True;
                AdvStringGrid2.ShowSelection := False;
              end;
						end else
						if lcsActiveEdit = 'meoEndAreaWOR11' then
						begin
							if noSearch then
              begin
                noSearch := False;
                Exit;
              end;
              if AdvStringGrid5.Cells[0,1] = '' then
              begin
                if AdvStringGrid4.Cells[0,0] <> '' then
                begin
                  slTmp := TStringList.Create;
                  try
                    AdvStringGrid5.ShowSelection := False;
                    AdvStringGrid4.ShowSelection := True;
                    AdvStringGrid4.FocusCell(0,0);

										sAddress := D_HightlightTXT(AdvStringGrid4.Cells[0, 0]);
                    if Trim(sAddress) <> '' then
                    begin
        							procAddressDelimited(sAddress, ' ', slTmp);
	  									Frm_WOR11.lcsEnd1 := slTmp[0];
		  								Frm_WOR11.lcsEnd2 := slTmp[1];//�ñ���
			  							Frm_WOR11.lcsEnd3 := slTmp[2];//���鵿
                    end;
									finally
										FreeAndNil(slTmp);
                  end;
                  Frm_WOR11.cxtEd1.Text := Frm_WOR11.lcsEnd1;
                  Frm_WOR11.cxtEd2.Text := Frm_WOR11.lcsEnd2;
                  Frm_WOR11.cxtEd3.Text := Frm_WOR11.lcsEnd3;
                  Frm_WOR11.lblEndAreaName.Caption := D_HightlightTXT(AdvStringGrid4.Cells[0, 0]);

                  Frm_WOR11.cxtEndAreaDetail.Text := '';

                  Frm_WOR11.cxtEndXval.Text := AdvStringGrid4.Cells[2, 0];
									Frm_WOR11.cxtEndYval.Text := AdvStringGrid4.Cells[3, 0];

									FreeAndNil(slTmp);
                end;
              end else
              begin
                AdvStringGrid5.ShowSelection := True;
                AdvStringGrid4.ShowSelection := False;
              end;
						end else
						if lcsActiveEdit = 'meoCallBell' then
						begin
							if noSearch then
              begin
                noSearch := False;
                Exit;
							end;
              if AdvStringGrid5.Cells[0,1] = '' then
              begin
                if AdvStringGrid4.Cells[0,0] <> '' then
                begin
									slTmp := TStringList.Create;
                  try
                    AdvStringGrid5.ShowSelection := False;
                    AdvStringGrid4.ShowSelection := True;
                    AdvStringGrid4.FocusCell(0,0);

										sAddress := D_HightlightTXT(AdvStringGrid4.Cells[0, 0]);
                    if Trim(sAddress) <> '' then
                    begin
        							procAddressDelimited(sAddress, ' ', slTmp);
	  									Frm_BTN01.lcsCallBell1 := slTmp[0];
		  								Frm_BTN01.lcsCallBell2 := slTmp[1];//�ñ���
			  							Frm_BTN01.lcsCallBell3 := slTmp[2];//���鵿
                    end;
									finally
                    FreeAndNil(slTmp);
									end;
									Frm_BTN01.lbUpsoAreaName.Caption := D_HightlightTXT(AdvStringGrid4.Cells[0, 0]);
									Frm_BTN01.edtUpsoAreaDetail.Caption := '';
									Frm_BTN01.edtXval.Caption := AdvStringGrid4.Cells[2, 0];
									Frm_BTN01.edtYval.Caption := AdvStringGrid4.Cells[3, 0];

                  FreeAndNil(slTmp);
                end;
              end else
              begin
                AdvStringGrid5.ShowSelection := True;
                AdvStringGrid4.ShowSelection := False;
              end;
						end;
          end;
        end;
      end;
    except
      on E: Exception do
      begin
        Result := False;
      end;
    end;
  finally
     iChkPoiSvrTag := 0;
  end;
end;

// ������ӿ��� POI ������ ��������..
function TFrm_JON30.proc_Wisenut_GetPOI(word: string) : Boolean;
var
  sHttp, sOrHttp : String;
  sYesNo, sViewCnt, sCenterLat, sCenterLon, sFixParam, sOrFixParam : String;

	JON01WNTh : TJON01WNThread;
begin
	SetDebugeWrite('JON30.proc_Wisenut_GetPOI');
  Result := True;

  bClick := False;
  if lcsActiveEdit = 'meoStartArea' then
  begin
    sRanDom := 'S' + IntToStr(RandomRange(10000, 20000));
  end else
	if lcsActiveEdit = 'meoEndArea' then
  begin
    sRanDom := 'E' + IntToStr(RandomRange(10000, 20000));
  end else
    sRanDom := 'abcd' + IntToStr(RandomRange(10000, 20000));

  SetDebugeWrite('WiseNut A : ' + Trim(word) + ' --- ' + sRanDom);

	if GS_SEARCH_POISVR_SPOIUSE then sYesNo := '0' else sYesNo := '1';
  if GS_PRJ_AREA = 'S' then sViewCnt := '40' else sViewCnt := '100';

  if GS_POISCH_ALL then
  begin
    sFixParam := '&region=' + UrlEncode(UTF8Encode(GS_SEARCH_POI_ALL)) + '&recRegion=' + UrlEncode(UTF8Encode(GS_SEARCH_POI_ALL));
    sOrFixParam := '&region=' + GS_SEARCH_POI_ALL + '&recRegion=' + GS_SEARCH_POI_ALL;
  end else
  begin
    sFixParam := '&region=' + UrlEncode(UTF8Encode(GS_SEARCH_POI_ADDR)) + '&recRegion=' + UrlEncode(UTF8Encode(GS_SEARCH_POI_SCH));
    sOrFixParam := '&region=' + GS_SEARCH_POI_ADDR + '&recRegion=' + GS_SEARCH_POI_SCH;
  end;

  sSAPoiName := UrlEncode(UTF8Encode(trim(word)));

  if iChkPoiSvrTag = 1 then
  begin
    sCenterLat := sSApoiCenterLat;
    sCenterLon := sSApoiCenterLon;

    if GS_SEARCH_POISVR_SPOIUSE then
    begin
      if sSAPoiGubun = 'S' then
      begin
        sFixParam := sFixParam + '&fixAddress=&fixSPOI='+ sSAPoiName + '&fixLAT=' + SetWGS84(sCenterLat) + '&fixLON=' + SetWGS84(sCenterLon);
        sOrFixParam := sOrFixParam + '&fixAddress=&fixSPOI='+ trim(word) + '&fixLAT=' + SetWGS84(sCenterLat) + '&fixLON=' + SetWGS84(sCenterLon);
      end else
      if sSAPoiGubun = 'A' then
      begin
        sFixParam := sFixParam + '&fixAddress='+ sSAPoiAddr + '&fixSPOI=&fixLAT=' + SetWGS84(sCenterLat) + '&fixLON=' + SetWGS84(sCenterLon);
        sOrFixParam := sOrFixParam + '&fixAddress='+ sOrSAPoiAddr + '&fixSPOI=&fixLAT=' + SetWGS84(sCenterLat) + '&fixLON=' + SetWGS84(sCenterLon);
      end;
    end else
    begin
      if sSAPoiGubun = 'S' then
      begin
        sFixParam := sFixParam + '&fixAddress=SKIP&fixSPOI='+ sSAPoiName + '&fixLAT=' + SetWGS84(sCenterLat) + '&fixLON=' + SetWGS84(sCenterLon);
        sOrFixParam := sOrFixParam + '&fixAddress=SKIP&fixSPOI='+ trim(word) + '&fixLAT=' + SetWGS84(sCenterLat) + '&fixLON=' + SetWGS84(sCenterLon);
      end else
      if sSAPoiGubun = 'A' then
      begin
        sFixParam := sFixParam + '&fixAddress='+ sSAPoiAddr + '&fixSPOI=SKIP&fixLAT=' + SetWGS84(sCenterLat) + '&fixLON=' + SetWGS84(sCenterLon);
        sOrFixParam := sOrFixParam + '&fixAddress='+ sOrSAPoiAddr + '&fixSPOI=SKIP&fixLAT=' + SetWGS84(sCenterLat) + '&fixLON=' + SetWGS84(sCenterLon);
      end;
    end;
  end else
  begin
    sCenterLat := Area_CenterLat;
    sCenterLon := Area_CenterLon;
  end;

  sOrHttp := '';
  try
		lsPOISvrIP := GS_PoiServerIP;

		if (lcsActiveEdit = 'meoStartArea') or (lcsActiveEdit = 'meoEndArea') then
		begin
			if (GT_USERIF.ID = 'sntest') then
			begin
        if Frm_Main.Frm_JON01N[Self.Tag].cb_WiseNutSntest.ItemIndex = 1 then GS_PoiServerIP := '203.251.202.61' else
        if Frm_Main.Frm_JON01N[Self.Tag].cb_WiseNutSntest.ItemIndex = 2 then GS_PoiServerIP := '61.77.191.75';
        Frm_Main.Frm_JON01N[Self.Tag].edt_POIIP.Text := GS_PoiServerIP;
			end;
		end;

//    GS_PoiServerIP := '111.111.111.111';
    sHttp := 'http://' + GS_PoiServerIP + ':8080/jway/search_crypto.jsp?query='+ UrlEncode(UTF8Encode(trim(word))) +'&lat=' + SetWGS84(sCenterLat) + '&lon=' + SetWGS84(sCenterLon) + '&startCount=0&viewCount=' + sViewCnt + '&session=' + sRanDom + '&ignoreSPOI=' + sYesNo + sFixParam;
    sOrHttp := 'http://' + GS_PoiServerIP + ':8080/jway/search_crypto.jsp?query='+ Trim(word) +'&lat=' + SetWGS84(sCenterLat) + '&lon=' + SetWGS84(sCenterLon) + '&startCount=0&viewCount=' + sViewCnt + '&session=' + sRanDom + '&ignoreSPOI=' + sYesNo + sOrFixParam;

    if GS_SEARCH_NO_RI then
    begin
      sHttp := sHttp + '&ignoreAddressDetail=1';
      sOrHttp := sOrHttp + '&ignoreAddressDetail=1';
    end else
    begin
      sHttp := sHttp + '&ignoreAddressDetail=0';
      sOrHttp := sOrHttp + '&ignoreAddressDetail=0';
    end;

    sHttp := sHttp + '&base64=S';
    sOrHttp := sOrHttp + '&base64=S';

    if lcsActiveEdit = 'meoStartArea' then
    begin
			Frm_Main.Frm_JON01N[Self.Tag].lcsStaSchWord := Trim(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text);
			Frm_Main.Frm_JON01N[Self.Tag].lcsStaUrl := sOrHttp;
		end else
		if lcsActiveEdit = 'meoEndArea' then
		begin
			Frm_Main.Frm_JON01N[Self.Tag].lcsEndSchWord := Trim(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text);
			Frm_Main.Frm_JON01N[Self.Tag].lcsEndUrl := sOrHttp;
		end;

		if lcsActiveEdit = 'meoViaArea' then 	//������POI�˻����� ����
		begin
			gB_ViaIng := True;
		end;

		try
			JON01WNTh := TJON01WNThread.Create(Self.Tag, 0, sHttp, word, sRanDom);
			JON01WNTh.FreeOnTerminate := False;
    except

    end;
  except
    on E: Exception do
    begin
      Log('proc_Wisenut_GetPOI Error:'+E.Message + E.UnitName + E.ClassName, LOGDATAPATHFILE);
      Result := False;
    end;
  end;
end;

// ������ӿ��� POI ������ ��������..
function TFrm_JON30.proc_Wisenut_GetPOI_Proc(wURL, word : String ) : Boolean;
var
  js : TlkJSONobject;
  ja, jCnt  : TlkJSONlist;

  bBChk : Boolean;
  bBGbn : String;

  j, i, iRow, iPos : Integer;
  str, sx, sy, sGX, sGY, sPOI, sKm, sRCity, sAddress : string;
  jon01_txt : string;
	ASido, AWard, AWard2, AStee, AStee2, sCnt, AName, ARi, ADocId, AStreet, AStreetNm, AStreetType : string;
	slTmp, slHTmp, slAddr, slDocId : TStringList;
	row3, row4 : string;
	bInit, bCnt : Boolean;
	bDBgbn : string;

	sTmpSIDO, sTmpGunGU, sTmpDongRI  : String;
	AAdvGrid : TAdvStringGrid;
	ATEXT : TcxMemo;
begin
	SetDebugeWrite('JON30.proc_Wisenut_GetPOI_Proc');
  Result := False;
  try
		slTmp := TStringList.Create;
		slHTmp := TStringList.Create;
		slDocId := TStringList.Create;
		bBChk := False;
		bBGbn := '';
		bDBgbn := '';
    try
			jon01_txt := pSearchPortalInitAndTxt(False);

      js := TlkJSON.ParseText(wURL) as TlkJSONobject;

      if ( js.Field['Session'].Value = sRanDom ) then
			begin
        Result := True;
        jCnt := js.Field['SearchQueryResult'].Field['Collection'] as TlkJSONlist;
        bInit := False;

        // �˻� ����� ���� ��� ���� �˻���� ����
        for j := 0 to jCnt.Count - 1 do
        begin
          if ( jCnt.Child[j].Field['Id'].Value = 'poi' ) And ( jCnt.Child[j].Field['DocumentSet'].Field['Count'].Value > 0 ) then bInit := True else
          if ( jCnt.Child[j].Field['Id'].Value = 'phones' ) And ( jCnt.Child[j].Field['DocumentSet'].Field['Count'].Value > 0 ) then bInit := True else
          if ( jCnt.Child[j].Field['Id'].Value = 'bunji' ) And ( jCnt.Child[j].Field['DocumentSet'].Field['Count'].Value > 0 ) then bInit := True;
        end;

        f_AddArr_Init;
        if bInit then
        begin
          if ( Not GS_SEARCH_POISVR_LOCALDP ) Or ( GS_SEARCH_NO_LOCALPOI ) then
            Grid_Init(lcsActiveEdit, 1)
          else
          begin
           if ( slR_11[8].Count = 0 ) then
            Grid_Init(lcsActiveEdit, 1)
          end;
        end;

        // ���þ �Դµ� POI ID�� Address�̸鼭 �ڷᰡ ������ �����ؾ� ��.
        // �� �̿��� �ڷᰡ ������ ���þ� ó�� ����.
        if GS_SEARCH_POISVR_SGSTERR then
        begin
          bCnt := True;
          if Trim(js.Field['SearchQueryResult'].Field['SuggestedQuery'].Value) <> '' then
          begin
            for j := 0 to jCnt.Count - 1 do
						begin
              if ( js.Field['QueryAnalyzerResult'].Field['Type'].Value = 'ADDRESS' ) Or
                 (( strToIntDef(jCnt.Child[j].Field['DocumentSet'].Field['Count'].Value, 0) > 0 ) And
                 ( jCnt.Child[j].Field['Id'].Value = 'address' )) then
              begin
                bCnt := False;
                Break;
              end;
            end;
          end;
        end;

				ATEXT := TcxMemo.create(nil);
				if lcsActiveEdit = 'meoStartArea' then
				begin
					ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoStartArea;
					if Length(ATEXT.Text) < 2 then exit;
					if sActieEdit <> lcsActiveEdit then Exit;
				end else
				if lcsActiveEdit = 'meoEndArea' then
				begin
					ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoEndArea;
					if Length(ATEXT.Text) < 2 then exit;
					if sActieEdit <> lcsActiveEdit then Exit;
				end;             

				if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or 
					 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid1 else
				if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or 
					 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid5 else
				if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid8;

				for j := 0 to jCnt.Count - 1 do
				begin
          sCnt := jCnt.Child[j].Field['DocumentSet'].Field['Count'].Value;

          if GS_SEARCH_POISVR_SGSTERR then
          begin
            // ��Ÿ���� �����ڷᰡ ��� �Ѿ�ͼ� ������ �ϴ°� ����
            if ( sSuggest = js.Field['SearchQueryResult'].Field['SuggestedQuery'].Value ) And
               ( js.Field['SearchQueryResult'].Field['SuggestedQuery'].Value <> '' ) then Break;

            sSuggest := js.Field['SearchQueryResult'].Field['SuggestedQuery'].Value;

            if ( bCnt ) And ( Trim(sSuggest) <> '' ) then
            begin
              gTFindData.sFullWord := Trim(sSuggest);
              TT3.Interval := 20;
              TT3.Enabled := True;
              SetDebugeWrite('Suggest : ' + Trim(sSuggest));
              Break;
            end;
          end;

          if strToIntDef(sCnt, 0) > 0 then
          begin
						ja := jCnt.Child[j].Field['DocumentSet'].Field['Document'] as TlkJSONlist;

            if ja.Count <= 0 then
						begin
							if lcsActiveEdit = 'meoViaArea' then 	//������POI�˻����� ����
							begin
								Frm_Main.Frm_JON01N[Self.Tag].pnl_ViaMent.Visible := False;
								gB_ViaIng := False;
							end;
							Exit;
            end;

            if GS_SEARCH_POISVR_LOCALDP then
						begin
							if ( lcsActiveEdit = 'meoStartArea' ) Or ( lcsActiveEdit = 'meoStartAreaCUT' ) Or ( lcsActiveEdit = 'meoStartAreaWOR11' ) then iRow := AdvStringGrid1.RowCount - 1 else
							if ( lcsActiveEdit = 'meoEndArea'   ) Or ( lcsActiveEdit = 'meoEndAreaCUT'  ) Or ( lcsActiveEdit = 'meoEndAreaWOR11'  )  Or ( lcsActiveEdit = 'meoCallBell'  ) then iRow := AdvStringGrid5.RowCount - 1 else
							if lcsActiveEdit = 'meoViaArea'   then iRow := AdvStringGrid8.RowCount - 1;

              if ( slR_11[8].Count = 0 ) then iRow := 0;
            end
            else iRow := 0;

            for i := 0 to ja.Count - 1 do
            begin
							sAddress := D_HightlightTXT(ja.Child[i].Field['Field'].Field['ADDRESS'].Value);
							procAddressDelimited(sAddress, ' ', slTmp);

							sAddress := ja.Child[i].Field['Field'].Field['ADDRESS'].Value;;
							procAddressDelimited(sAddress, ' ', slHTmp);

							sTmpSIDO := ''; sTmpGunGU := ''; sTmpDongRI := '';
							
							sy      := '';
              sx      := '';
              sGY     := '';
              sGX     := '';
              sPOI    := '';
              sRCity  := '';
              AWard   := '';
              AWard2  := '';
              AStee   := '';
              AStee2  := '';
              AStreet := '';
              AStreetNm := '';
              AStreetType  := '';
              AName   := '';
              ADocId  := '';
              if slTmp.Count >= 1 then
              begin
                try
                  sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['Field'].Field['LON'].Value));  // x ��ǥ
                  sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['Field'].Field['LAT'].Value));  // y ��ǥ
                  try
                    sGY := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['Field'].Field['GUIDE_LON'].Value));  // x ��ǥ
                  except
                    sGY := '';
                  end;

                  Try
                    sGX := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['Field'].Field['GUIDE_LAT'].Value));  // y ��ǥ
                  except
                    sGX := '';
                  End;
                  ADocId := ja.Child[i].Field['Field'].Field['DOCID'].Value;

                  if jCnt.Child[j].Field['Id'].Value = 'address' then
                  begin
                    ASido := D_HightlightTXT(ja.Child[i].Field['Field'].Field['AREA_CITY'].Value);
										proc_WGSToBessel(False, ASido, sx, sy, sRCity, sKm);
										if POS('<!HS>', slHTmp[0] ) > 0 then
											sTmpSIDO := '<!HS>' + sRCity + '<!HE>'
										else
											sTmpSIDO := sRCity;

                    ASido := sRCity;

                    slAddr := TStringList.Create;
                    try
                      slAddr.Delimiter     := ' ';
				         			slAddr.DelimitedText := D_HightlightTXT(ja.Child[i].Field['Field'].Field['AREA_WARD'].Value);

                      if slAddr.Count = 1 then
                      begin
												AWard := slAddr[0];
                      end else
                      if slAddr.Count = 2 then
											begin
                        AWard  := slAddr[0];
                        AWard2 := slAddr[1];
                      end;

                    finally
                      FreeAndNil(slAddr);
                    end;

				         		AStee := D_HightlightTXT(ja.Child[i].Field['Field'].Field['AREA_STREET'].Value);
				         		AStee := AStee + D_HightlightTXT(ja.Child[i].Field['Field'].Field['AREA_DETAIL'].Value);

                    // ����� �˻�� ��ġ�ϴ��� ���� üũ
                    if Trim(AStee) = Trim(word) then gbSearWordDong := True;
                    SetDebugeWrite('Trim(ADong) = Trim(word) ' + Trim(AStee) + ' = ' + Trim(word));

                    f_SvrAddArr_Add(100-i, 100-i, 100-i, '', '', sRCity, AWard, AWard2, AStee, '','','','','', sx, sy);

                    Continue;
                  end else
                  if jCnt.Child[j].Field['Id'].Value = 'poi' then
                  begin
                    if (( gbSearWordDong ) And ( GS_SEARCH_DONGNAME )) Or ( GS_SEARCH_CALLMANER_POIUSE ) then Continue;

                    if  slDocId.IndexOf(Copy(aDocId, 3, 9)) >= 0 then Continue;
                    slDocId.Add(Copy(aDocId, 3, 9));

										// ù��° ������ DOCID�� 'E'�� ���۵Ǹ� ������/�������� ������ �ڷḸ ǥ�����ش�.

										AName := ja.Child[i].Field['Field'].Field['POI'].Value;
										if (Pos('(', AName) > 0) and (Pos(')', AName) > 0) then
										begin
											AName := StringReplace(AName, '(',' ', [rfReplaceAll]);
											AName := StringReplace(AName, ')','', [rfReplaceAll]);
										end;

                    sPOI := ja.Child[i].Field['Field'].Field['NEAR_POI'].Value;
										sKm  := ja.Child[i].Field['Field'].Field['NEAR_POI_DISTANCE'].Value;

										try
                      AStreet := ja.Child[i].Field['Field'].Field['STREET'].Value;
                      AStreetType := ja.Child[i].Field['Field'].Field['STREET_TYPE'].Value;

                      if ( AStreet <> '' ) And ( GS_SEARCH_POISVR_DONGV ) then
											begin
                        if AStreetType = 'B' then AStreetNm := ' (H'+AStreet+')' else
                        if AStreetType = 'H' then AStreetNm := ' (B'+AStreet+')'
                                             else AStreetNm := '';
                      end;
                    except
                      AStreet := '';
                      AStreetType := '';
                    end;

                    if Trim(sPOI) <> '' then
                    begin
                      if StrToFloatDef(sKm, -1) > 0 then skm := '��' + FloatToStr(StrToFloatDef(sKm, 0) * 1000)
                                                    else sKm := '����ġ';
                    end else sKm := '';
                  end else
                  if jCnt.Child[j].Field['Id'].Value = 'bunji' then
                  begin
                    if (( gbSearWordDong ) And ( GS_SEARCH_DONGNAME )) Or ( GS_SEARCH_CALLMANER_POIUSE ) then Continue;

										bBunji := True;
										AName := ja.Child[i].Field['Field'].Field['JIBUN'].Value;
										if Copy(AName, Length(AName)-1,2) = '-0' then
										begin
											AName := Copy(AName, 1, Length(AName)-2) ;
										end;
                  end else
                  if jCnt.Child[j].Field['Id'].Value = 'phones' then
                  begin
                    if (( gbSearWordDong ) And ( GS_SEARCH_DONGNAME )) Or ( GS_SEARCH_CALLMANER_POIUSE ) then Continue;

                    bHintShow := True;

                    AName := ja.Child[i].Field['Field'].Field['POI'].Value;
                    sPOI  := M_ParseTXT( StringReplace(ja.Child[i].Field['Field'].Field['PHONES'].Value, ' ','; ', [rfReplaceAll])); 
                  end else
                  if jCnt.Child[j].Field['Id'].Value = 'spoi' then
                  begin
                    if ( GS_SEARCH_CALLMANER_POIUSE ) then Continue;
                    AName := D_HightlightTXT(ja.Child[i].Field['Field'].Field['SPOI'].Value);
										proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
										if POS('<!HS>', slHTmp[0] ) > 0 then
											sTmpSIDO := '<!HS>' + sRCity + '<!HE>'
										else
											sTmpSIDO := sRCity;

										ASido := sRCity;
										AWard := slTmp[1];//�ñ���
										AStee := slTmp[2];//���鵿
										if slTmp.Count = 5 then
										begin
											AStee := AStee + slTmp[4];
										end;

                    f_SvrAddArr_Add(50-i, 50-i, 50-i, '', '', sRCity, AWard, AWard2, AStee, AName, '','','','', sx, sy);
                    Continue;
                  end;

									proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
									if POS('<!HS>', slHTmp[0] ) > 0 then
										sTmpSIDO := '<!HS>' + sRCity + '<!HE>'
									else
										sTmpSIDO := sRCity;
								Except
                  sy := '';
                  sx := '';
                  AName := '';
                  sPoi := '';
                end;
              end;

							if lcsActiveEdit = 'meoViaArea' then
							begin
								gB_ViaIng := True;    //������ �˻���
							end;	
							if (iRow + 1 > 1) then AAdvGrid.AddRow;

							AAdvGrid.Cells[6, iRow+1] := sRCity;//�õ�
							AAdvGrid.Cells[7, iRow+1] := slTmp[1];  //�ñ���
							AAdvGrid.Cells[8, iRow+1] := slTmp[2];  //���鵿
							sTmpGunGU  := slHTmp[1];
							sTmpDongRI := slHTmp[2];
							if slTmp.Count = 5 then
							begin
								AAdvGrid.Cells[8, iRow+1] := AAdvGrid.Cells[8, iRow+1] + slTmp[4];
								sTmpDongRI := sTmpDongRI+slHTmp[4];
							end;
							if Trim(AAdvGrid.Cells[8, iRow+1]) = Trim(AStreet) then AStreetNm := '';

							sAddress := D_HightlightTXT(sTmpSIDO + ' ' + sTmpGunGU + ' ' +  sTmpDongRI + AStreetNm);
							AAdvGrid.Cells[0, iRow+1] := M_HightlightTXT(sAddress, jon01_txt, 1);

							if bBunji then
							begin                                  
								if slTmp.Count = 3 then
									AAdvGrid.Cells[ 1, iRow+1] := M_ParseTXT('<!HS>' + slTmp[2] + '<!HE>') + ' ' + M_ParseTXT(AName) else
								if slTmp.Count = 4 then
									AAdvGrid.Cells[ 1, iRow+1] := M_ParseTXT('<!HS>' + slTmp[3] + '<!HE>') + ' ' + M_ParseTXT(AName) else
								if slTmp.Count = 5 then
									AAdvGrid.Cells[ 1, iRow+1] := M_ParseTXT('<!HS>' + slTmp[4] + '<!HE>') + ' ' + M_ParseTXT(AName);
							end
							else
								AAdvGrid.Cells[ 1, iRow+1] := M_ParseTXT(AName);//������
									
							AAdvGrid.Cells[ 2, iRow+1] := sPOI;//�α�POI
							AAdvGrid.Cells[ 3, iRow+1] := sKm;//�Ÿ�
							AAdvGrid.Cells[ 4, iRow+1] := sx;//Lat
							AAdvGrid.Cells[ 5, iRow+1] := sy;//Lon
							AAdvGrid.Cells[10, iRow+1] := ADocId;//DocId
							AAdvGrid.Cells[11, iRow+1] := sGx;//Guide_X
							AAdvGrid.Cells[12, iRow+1] := sGy;//Guide_y

							Inc(iRow);
						end;
						if lcsActiveEdit = 'meoViaArea' then 	//������POI�˻����� ����
						begin
							gB_ViaIng := False;
							Frm_Main.Frm_JON01N[Self.Tag].pnl_ViaMent.Visible := False;
						end;
					end else
					begin
						if Assigned(Frm_CUT011) then Frm_CUT011.Grid_Clear(lcsActiveEdit, 1) else
	  				if Assigned(Frm_BTN) then Frm_BTN01.Grid_Clear(lcsActiveEdit, 1);
					end;
        end;
        if chkUseMiniMap.Checked then SetPOIMapDisplay;
      end;
    except
      on e: exception do
      begin
//				Log('proc_Wisenut_GetPOI_Proc Error :' + wURL, LOGDATAPATHFILE);
				Assert(False, 'proc_Wisenut_GetPOI_Proc Error :' + wURL);
      end;
    end;
  finally
    js.Free;
    FreeAndNil(slTmp);
		FreeAndNil(slHTmp);
    FreeAndNil(slDocId);
	end;
end;

procedure TFrm_JON30.TT2Timer(Sender: TObject);
Var sSearchWord : String;
begin
	SetDebugeWrite('JON30.TT2Timer');
  try
    TT2.Enabled := False;
		GI_ALL_Sch := -1;

    sNRanDom := IntToStr(RandomRange(10000, 20000));

    // 20130813  LYB  �ǽð� ���˻� ��� ���Ұ�� ���̹� �˻� ��Ÿ�� ��.
		if GS_SEARCH_POTAL then
    begin
			if Not GS_DAPIKeyUSE then     // �˻� API Ű ��� ����
			begin
        if GS_PORTAL_SEL = 'D' then
        begin
					proc_Portal_GetPOI_Daum(gTFindData.sFullWord, sNRanDom);
        end else
        if GS_PORTAL_SEL = 'N' then
				begin
//					if GS_NAVERPOI_SEL then
//          begin
						if TT2.Tag = 0 then
							proc_Portal_GetPOI_V5(gTFindData.sFullWord, sNRanDom)
            else
							proc_Portal_GetPOI_V5_New(gTFindData.sFullWord, sNRanDom);    //Ȯ���ư�˻�
//					end else
//						proc_Portal_GetPOI(gTFindData.sFullWord, sNRanDom);
        end else
				if GS_PORTAL_SEL = 'A' then  //�����̶� ������ ������
				begin
					GI_ALL_Sch := 0;
					gPortalPOI := gPortalPOI_Ini;

          GB_NParser := False;
					GB_DParser := False;
//					if GS_NAVERPOI_SEL then
//          begin
						if TT2.Tag = 0 then
							proc_PortalN_V5_GetPOI(gTFindData.sFullWord, sNRanDom)
						else
							proc_PortalN_V5_New_GetPOI(gTFindData.sFullWord, sNRanDom);    //Ȯ���ư�˻�
//					end else
//						proc_PortalN_GetPOI(gTFindData.sFullWord, sNRanDom);
						
					proc_PortalD_GetPOI(gTFindData.sFullWord, sNRanDom);
				end;
        TT2.Tag := 0;
			end else
			begin                               
        if GS_PORTAL_SEL = 'A' then
				begin
          GI_ALL_Sch := 0;
					gPortalPOI := gPortalPOI_Ini;

          sSearchWord := fGetSchFullName;

          GB_NParser := False;
					GB_DParser := False;
//					if GS_NAVERPOI_SEL then
//          begin
						if TT2.Tag = 0 then
							proc_PortalN_V5_GetPOI(gTFindData.sFullWord, sNRanDom)
						else
							proc_PortalN_V5_New_GetPOI(gTFindData.sFullWord, sNRanDom);    //Ȯ���ư�˻�
//					end else
//						proc_PortalN_GetPOI(gTFindData.sFullWord, sNRanDom);

{         // 2020.06.02 �Ϻη� naver SearchPlace ���� ����
					if fBunjiNameCheck(sSearchWord) then
					begin
						proc_Portal_GetPOI_NaverAPINew_cloud(gTFindData.sFullWord, sNRanDom, 'Address');
					end else
					begin
						proc_Portal_GetPOI_NaverAPINew_cloud(gTFindData.sFullWord, sNRanDom, 'Places');
					end;
				 {
					if ( GS_DAUM_APIKey.Count = 0 ) then
					begin
//						proc_PortalD_GetPOI(gTFindData.sFullWord, sNRanDom);
						ShowMessage('D�� API Key ��� �� ���ٶ��ϴ�.');
						pSelect_Portal('N');
            Exit;
					end;      }

					if GS_DAPIKeyUSE then   //����APIKEY ��뿩��
					begin
						if fBunjiNameCheck(sSearchWord) then
							proc_Portal_GetPOI_DaumAPIAddr(gTFindData.sFullWord, sNRanDom)
						else
							proc_Portal_GetPOI_DaumAPI(gTFindData.sFullWord, sNRanDom);
					end else
					begin
						proc_PortalD_GetPOI(gTFindData.sFullWord, sNRanDom);
					end;
				end else
        if GS_PORTAL_SEL = 'D' then
        begin
				{  if GS_DAUM_APIKey.Count = 0 then
					begin
						ShowMessage('API Key ��� �� ���ٶ��ϴ�.');
            chkUseAPIKey.Checked := False;
						chkUseAPIKeyClick(chkUseAPIKey);
					end;   }

					if GS_DAPIKeyUSE then   //����APIKEY ��뿩��
					begin
						if fBunjiNameCheck(sSearchWord) then
							proc_Portal_GetPOI_DaumAPIAddr(gTFindData.sFullWord, sNRanDom)
						else
							proc_Portal_GetPOI_DaumAPI(gTFindData.sFullWord, sNRanDom);
					end else
					begin
						proc_PortalD_GetPOI(gTFindData.sFullWord, sNRanDom);
					end;
				end else
				if GS_PORTAL_SEL = 'N' then
        begin
//					if fBunjiNameCheck(sSearchWord) then
//					begin
//						proc_Portal_GetPOI_NaverAPINew_cloud(gTFindData.sFullWord, sNRanDom, 'Address');
//					end else
//					begin
//						proc_Portal_GetPOI_NaverAPINew_cloud(gTFindData.sFullWord, sNRanDom, 'Places');
//					end;
				end;
        TT2.Tag := 0;
			end;

      if ( GS_PORTAL_SEL = 'D' ) Or ( GS_PORTAL_SEL = 'A' ) then
      begin
        if lcsActiveEdit = 'meoStartArea' then
          iDaumSerachStartCnt := iDaumSerachStartCnt + 1
        else if lcsActiveEdit = 'meoEndArea' then
          iDaumSerachEndCnt   := iDaumSerachEndCnt + 1;
      end;

      if ( GS_PORTAL_SEL = 'N' ) Or ( GS_PORTAL_SEL = 'A' ) then
      begin
        if lcsActiveEdit = 'meoStartArea' then
          iNaverSerachStartCnt := iNaverSerachStartCnt + 1
        else if lcsActiveEdit = 'meoEndArea' then
          iNaverSerachEndCnt   := iNaverSerachEndCnt + 1;
      end;
    end;
  except
    on e: exception do
    begin
			Log('TT2Timer Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'TT2Timer Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.TT2_1Timer(Sender: TObject);
begin
	SetDebugeWrite('JON30.TT2_1Timer');
  try
    TT2_1.Enabled := False;

		if GS_NaverPOIWord = 'Daum' then
		begin
			if Not proc_PortalD_GetPOILast(GS_NaverPOIResult, GS_NaverPOIRadom) then Exit;
		end else
		if ( GS_NaverPOIWord = 'DaumAPI' ) Or ( GS_NaverPOIWord = 'DaumAPIAddr' ) then
    begin
			if Not proc_PortalDAPI_GetPOILast(GS_NaverPOIResult, GS_NaverPOIRadom) then Exit;
		end else
//		if GS_NaverPOIWord = 'Naver' then
//		begin
//			if Not proc_Portal_GetPOILast(GS_NaverPOIResult, GS_NaverPOIRadom) then Exit;
//		end else
		if GS_NaverPOIWord = 'NaverV5' then
		begin
			if Not proc_Portal_V5_GetPOILast(GS_NaverPOIResult, GS_NaverPOIRadom) then Exit;
		end else
		if GS_NaverPOIWord = 'NaverV5_New' then
		begin
			if Not proc_Portal_V5_New_GetPOILast(GS_NaverPOIResult, GS_NaverPOIRadom) then Exit;
		end else
		if GS_NaverPOIWord = 'NaverAPI_cloud' then //cloud APIó��
		begin
			if Not proc_Portal_GetPOI_NaverAPILast_cloud(GS_NaverPOIResult, GS_NaverPOIRadom, GS_NaverAPIKey) then Exit;
		end;

    pSearchPortalFirst;
	except
		on e: exception do
    begin
			Log('TT2_1Timer Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'TT2_1Timer Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.TT2_DTimer(Sender: TObject);
begin
  try
  	SetDebugeWrite('JON30.TT2_DTimer');
    TT2_D.Enabled := False;

    // ��ȸ�� �˻�� �ʰ� �ö��� �־ ���� �������� ��ȸ�� ��ȣ�� Ʋ���� �н�
    if sNRanDom <> GS_NaverPOIRadom  then Exit;

    if ( Trim(GS_DaumPOIResult) <> '' ) And ( Not GB_DParser ) then
    begin
      if Not pPDAPI_GetPOIMerge(GS_DaumPOIResult, GS_NaverPOIRadom) then Exit;
      GB_DParser := True;
    end;

    if (GB_NParser) And (GB_DParser) then
      pSearchPortal;
	except
		on e: exception do
    begin
			Log('TT2_DTimer Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'TT2_DTimer Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.TT2_NTimer(Sender: TObject);
begin
	try
  	SetDebugeWrite('JON30.TT2_NTimer');
    TT2_N.Enabled := False;

		// ��ȸ�� �˻�� �ʰ� �ö��� �־ ���� �������� ��ȸ�� ��ȣ�� Ʋ���� �н�
		if sNRanDom <> GS_NaverPOIRadom  then Exit;

    if ( Trim(GS_NaverPOIResult) <> '' ) And ( Not GB_NParser ) then
    begin
			if Not pPNAPI_GetPOIMerge_cloud(GS_NaverPOIResult, GS_NaverPOIRadom, GS_NaverAPIKey) then Exit;
			GB_NParser := True;
		end;

		if (GB_NParser) And (GB_DParser) then
			pSearchPortal;
	except
		on e: exception do
    begin
			Log('TT2_NTimer Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'TT2_NTimer Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON30.pSearchPortalInitAndTxt( bPortalClear : Boolean ) : String;
begin
	SetDebugeWrite('JON30.pSearchPortalInitAndTxt Start');
	try
		if lcsActiveEdit = 'meoStartArea' then
    begin
      if bPortalClear then
      begin
        AdvStringGrid3.Clear;
        AdvStringGrid3.RowCount := 1;
      end;
			Result := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text)
		end else
		if lcsActiveEdit = 'meoEndArea' then
		begin
      if bPortalClear then
      begin
  			AdvStringGrid6.Clear;
	  		AdvStringGrid6.RowCount := 1;
      end;
			Result := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text)
		end else
		if lcsActiveEdit = 'meoViaArea' then
		begin
      if bPortalClear then
      begin
  			AdvStringGrid9.Clear;
	  		AdvStringGrid9.RowCount := 1;
      end;
			if GS_VIA_Tag = 1 then
				Result := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text)
			else
				Result := UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text);
		end else
		if lcsActiveEdit = 'meoStartAreaCUT' then
		begin
      if bPortalClear then
      begin
  			AdvStringGrid3.Clear;
	  		AdvStringGrid3.RowCount := 1;
      end;
      Result := UpperCase(Frm_CUT011.meoStartAreaCUT.Text);
    end else
    if lcsActiveEdit = 'meoEndAreaCUT' then
    begin
      if bPortalClear then
      begin
        AdvStringGrid6.Clear;
	  		AdvStringGrid6.RowCount := 1;
      end;
      Result := UpperCase(Frm_CUT011.meoEndAreaCUT.Text);
    end else
    if lcsActiveEdit = 'meoStartAreaWOR11' then
    begin
      if bPortalClear then
      begin
        AdvStringGrid3.Clear;
        AdvStringGrid3.RowCount := 1;
      end;
      Result := UpperCase(Frm_WOR11.meoStartAreaWOR11.Text);
    end else
    if lcsActiveEdit = 'meoEndAreaWOR11' then
    begin
      if bPortalClear then
      begin
        AdvStringGrid6.Clear;
        AdvStringGrid6.RowCount := 1;
      end;
			Result := UpperCase(Frm_WOR11.meoEndAreaWOR11.Text);
    end else
		if lcsActiveEdit = 'meoCallBell' then
    begin
      if bPortalClear then
      begin
        AdvStringGrid6.Clear;
        AdvStringGrid6.RowCount := 1;
      end;
      Result := UpperCase(StringReplace(Frm_BTN01.meoCallBellArea.Text, ' ','', [rfReplaceAll]));
    end;

  	SetDebugeWrite('JON30.pSearchPortalInitAndTxt End');
	except
		on e: exception do
    begin
			Log('pSearchPortalInitAndTxt Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'pSearchPortalInitAndTxt Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.pSearchPortal;
Var i, iRow, iCnt : Integer;
	jon01_txt, sRCity, sKm, sTmp, sXX, sPOI : String;
	slTmp : TStringList;
	AAdvGrid : TAdvStringGrid;
	ATEXT : TcxMemo;
begin
	SetDebugeWrite('JON30.pSearchPortal Start');
  try
		slTmp := TStringList.Create;
		try
			iRow := 0;
			ATEXT := TcxMemo.create(nil);
			if lcsActiveEdit = 'meoStartArea' then
			begin
				ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoStartArea;
				if Length(ATEXT.Text) < 2 then exit;
				if sActieEdit <> lcsActiveEdit then Exit;
			end else
			if lcsActiveEdit = 'meoEndArea' then
			begin
				ATEXT := Frm_Main.Frm_JON01N[Self.Tag].meoEndArea;
				if Length(ATEXT.Text) < 2 then exit;
				if sActieEdit <> lcsActiveEdit then Exit;
			end;

      iCnt := 0;
			for i := 0 to 19 do
			begin
				if Trim(gPortalPOI[i].sA_Address) <> '' then Inc(iCnt);
      end;

      // �ڷᰡ �������� �ʱ�ȭ
   		if iCnt > 0 then jon01_txt := pSearchPortalInitAndTxt;

			if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or
				 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid3 else
			if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or
				 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid6 else
			if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid9;
			for i := 0 to 19 do
			begin
				if Trim(gPortalPOI[i].sA_Address) = '' then Continue;

				sXX := gPortalPOI[i].sA_POI;
				sXX := StringReplace(sXX, ' ','&nbsp;', [rfReplaceAll]);  // ������ &nbsp;�� ġȯ�ϴ� ���� : ��ũ�Ⱑ ������ ������ ���� �������� ���ڰ� ������ ����(��ũ�⸦ �ø��� ����)
				sXX := M_HightlightTXT(sXX, jon01_txt, 1);
				if pos('>', sXX) <= 0 then sXX := StringReplace(sXX, '&nbsp;',' ', [rfReplaceAll]);

				sPOI := gPortalPOI[i].sA_sPOI;
				procAddressDelimited(gPortalPOI[i].sA_Address, ' ', slTmp);

				sTmp := gPortalPOI[i].sA_Address;

				sRCity  := '';
				if slTmp.Count >= 1  then
				begin
					proc_WGSToBessel(False, slTmp[0], gPortalPOI[i].sA_Y, gPortalPOI[i].sA_X, sRCity, sKm);
				end;

				if (iRow + 1 > 1) then AAdvGrid.AddRow;
				AAdvGrid.Cells[6, iRow] := sRCity;//�õ�
				AAdvGrid.Cells[7, iRow] := slTmp[1];  //�ñ���
				AAdvGrid.Cells[8, iRow] := slTmp[2];  //���鵿

				sTmp := D_HightlightTXT(AAdvGrid.Cells[6, iRow]) + ' ' +
								D_HightlightTXT(AAdvGrid.Cells[7, iRow]) + ' ' +
								D_HightlightTXT(AAdvGrid.Cells[8, iRow]);

				AAdvGrid.Cells[0, iRow] :=  M_HightlightTXT(sTmp, jon01_txt, 1);

				AAdvGrid.Cells[1, iRow] := sXX;//������
				AAdvGrid.Cells[2, iRow] := sPOI;
				AAdvGrid.Cells[3, iRow] := gPortalPOI[i].sA_All;

				AAdvGrid.Cells[4, iRow] := gPortalPOI[i].sA_X;//Lat
				AAdvGrid.Cells[5, iRow] := gPortalPOI[i].sA_Y;//Lon
				AAdvGrid.Cells[10, iRow] := gPortalPOI[i].sA_Gubun;
				AAdvGrid.Cells[12, iRow] := gPortalPOI[i].sA_Address;

				Inc(iRow);
			end;
    finally
      slTmp.Free;
    end;

		if GS_SEARCH_WISE_NAVER_COMPARE then
		begin
      tmrWNSUM.Enabled := True;
    end else
    begin
      if chkUseMiniMap.Checked then SetPOIMapDisplay;
      pSearchPortalFirst;
    end;

  	SetDebugeWrite('JON30.pSearchPortal End');
	except
		on e: exception do
    begin
			Log('pSearchPortal Error :' + sTmp + E.Message, LOGDATAPATHFILE);
      Assert(False, 'pSearchPortal Error :' + sTmp +  E.Message);
    end;
  end;
end;

procedure  TFrm_JON30.pSearchPortalFirst;
begin
	SetDebugeWrite('JON30.pSearchPortalFirst Start');
	try
		if GS_SEARCH_POTAL_FIRST then
		begin
			if lcsActiveEdit = 'meoStartArea' then
			begin
				if (Length(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text) < 2) then Exit;
				if sActieEdit <> lcsActiveEdit then Exit;
				if AdvStringGrid1.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

					if ( Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Hint <> 'F4)���' ) And ( not bMouseDownSelect ) then     // 20130703  LYB  ��ݻ����ϰ�쿡�� ����� ���� �ڵ� ���� �ȵȰ� �Ѵ�.
					begin
						if AdvStringGrid3.Cells[0,0] <> '' then
						begin
							AdvStringGrid1.ShowSelection := False;
							AdvStringGrid3.ShowSelection := True;

							Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
							Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿
							Frm_Main.Frm_JON01N[Self.Tag].lcsSta4 := D_HightlightTXT(AdvStringGrid3.Cells[2, 0]);//�α�POI
							Frm_Main.Frm_JON01N[Self.Tag].lcsStaDocId := '';
							Frm_Main.Frm_JON01N[Self.Tag].lcsStaCellSel := 'A';
							Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text :=  Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 + ' ' + Frm_Main.Frm_JON01N[Self.Tag].lcsSta2
																																+ ' ' + Frm_Main.Frm_JON01N[Self.Tag].lcsSta3;
							SetDebugeWrite('JON30.lblStartAreaName.Text 12960 : ' + Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text);
							MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);
							Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].lcsConfAREA4 := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);
							MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);

							// 20120805 ��ǥ ���� üũ LYB
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area4 := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);//��������
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area5 := D_HightlightTXT(AdvStringGrid3.Cells[2, 0]);//�α�POI
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X := AdvStringGrid3.Cells[4, 0];
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y := AdvStringGrid3.Cells[5, 0];
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X := '';
							Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y := '';
							try
								Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Gubun := '5';
							finally
								Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X;
								Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y;
								Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEXval := '';
								Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEYval := '';
							end;

							if AdvStringGrid3.Cells[10, 0] = 'D' then Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'O'
																									 else Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'N';
						end;
					end;
				end;
			end else
			if lcsActiveEdit = 'meoEndArea' then
			begin
				if (Length(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text) < 2) then Exit;

        if sActieEdit <> lcsActiveEdit then Exit;

        if AdvStringGrid5.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

					if ( Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Hint <> 'F4)���') And ( not bMouseDownSelect ) then     // 20130703  LYB  ��ݻ����ϰ�쿡�� ������ ���� �ڵ� ���� �ȵȰ� �Ѵ�.
					begin
						if AdvStringGrid6.Cells[0,0] <> '' then
						begin
							AdvStringGrid5.ShowSelection := False;
							AdvStringGrid6.ShowSelection := True;

							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿
							Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := D_HightlightTXT(AdvStringGrid6.Cells[2, 0]);//�α�POI
							Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := '';
							Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := 'A';
							Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption := Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 + ' ' +
																																			Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 + ' ' +
																																			Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3;

							Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);
							Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text := Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption + ' ' + Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption;
							SetDebugeWrite('JON30.cxReEndArea.Text 13026 : ' + Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text);
							MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text), clRed, [fsBold]);

							try
								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := AdvStringGrid6.Cells[4, 0];
								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := AdvStringGrid6.Cells[5, 0];
								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X := '';
								Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y := '';
							finally
								Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X;
								Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y;
								Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := '';
								Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := '';
							end;

							if AdvStringGrid6.Cells[10, 0] = 'D' then Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'O'
																									 else Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'N';
						end;
					end;
        end;
			end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
				if AdvStringGrid8.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid9.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid8.ShowSelection := False;
            AdvStringGrid9.ShowSelection := True;

						Frm_Main.Frm_JON01N[Self.Tag].ViaSA1[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[6, 0]);// cxGViewArea.DataController.Values[ss_Row - 1, 0];
						Frm_Main.Frm_JON01N[Self.Tag].ViaSA2[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[7, 0]);
						Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[8, 0]);
						Frm_Main.Frm_JON01N[Self.Tag].DocId[GS_VIA_Tag] := '';
						Frm_Main.Frm_JON01N[Self.Tag].CellSel[GS_VIA_Tag] := 'A';
						if GS_VIA_Tag = 1 then
							Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption := D_HightlightTXT(AdvStringGrid9.Cells[6, 0])
																															+ ' ' + D_HightlightTXT(AdvStringGrid9.Cells[7, 0])
																															+ ' ' + D_HightlightTXT(AdvStringGrid9.Cells[8, 0])
						else
							Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption := D_HightlightTXT(AdvStringGrid9.Cells[6, 0])
																																				 + ' ' + D_HightlightTXT(AdvStringGrid9.Cells[7, 0])
																																				 + ' ' + D_HightlightTXT(AdvStringGrid9.Cells[8, 0]);

						Frm_Main.Frm_JON01N[Self.Tag].ViaAreaDetail[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid9.Cells[1, 0]);

						if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text
															else Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text;

						Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := AdvStringGrid9.Cells[4, 0];
						Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] := AdvStringGrid9.Cells[5, 0];
						ViaPos('', Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag], Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag]);
						GS_Grid_VIA := 'N';
          end;
        end;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
      begin
        if AdvStringGrid1.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid3.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid1.ShowSelection := False;
            AdvStringGrid3.ShowSelection := True;

            Frm_CUT011.lcsSta1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
            Frm_CUT011.lcsSta2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
            Frm_CUT011.lcsSta3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿

            Frm_CUT011.cxtSA1.Text := Frm_CUT011.lcsSta1;
            Frm_CUT011.cxtSA2.Text := Frm_CUT011.lcsSta2;
            Frm_CUT011.cxtSA3.Text := Frm_CUT011.lcsSta3;
            Frm_CUT011.lblStartAreaName.Caption := Frm_CUT011.lcsSta1 + ' ' + Frm_CUT011.lcsSta2 + ' ' + Frm_CUT011.lcsSta3;

            Frm_CUT011.cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);

            Frm_CUT011.cxtStartXval.Text := AdvStringGrid3.Cells[4, 0];
            Frm_CUT011.cxtStartYval.Text := AdvStringGrid3.Cells[5, 0];
          end;
        end;
      end else
      if lcsActiveEdit = 'meoEndAreaCUT' then
      begin
        if AdvStringGrid5.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid6.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid5.ShowSelection := False;
            AdvStringGrid6.ShowSelection := True;

            Frm_CUT011.lcsEnd1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
            Frm_CUT011.lcsEnd2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
            Frm_CUT011.lcsEnd3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿

            Frm_CUT011.cxtEd1.Text := Frm_CUT011.lcsEnd1;
            Frm_CUT011.cxtEd2.Text := Frm_CUT011.lcsEnd2;
            Frm_CUT011.cxtEd3.Text := Frm_CUT011.lcsEnd3;

            Frm_CUT011.lblEndAreaName.Caption := Frm_CUT011.lcsEnd1 + ' ' + Frm_CUT011.lcsEnd2 + ' ' + Frm_CUT011.lcsEnd3;

            Frm_CUT011.cxtEndAreaDetail.Text := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);

            Frm_CUT011.cxtEndXval.Text := AdvStringGrid6.Cells[4, 0];
            Frm_CUT011.cxtEndYval.Text := AdvStringGrid6.Cells[5, 0];
          end;
        end;
			end else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				if AdvStringGrid1.Cells[0,1] = '' then
				begin
					if noSearch then
					begin
						noSearch := False;
						Exit;
					end;

          if ( AdvStringGrid3.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid1.ShowSelection := False;
            AdvStringGrid3.ShowSelection := True;

						Frm_WOR11.lcsSta1 := D_HightlightTXT(AdvStringGrid3.Cells[6, 0]);
            Frm_WOR11.lcsSta2 := D_HightlightTXT(AdvStringGrid3.Cells[7, 0]);//�ñ���
            Frm_WOR11.lcsSta3 := D_HightlightTXT(AdvStringGrid3.Cells[8, 0]);//���鵿

            Frm_WOR11.cxtSA1.Text := Frm_WOR11.lcsSta1;
            Frm_WOR11.cxtSA2.Text := Frm_WOR11.lcsSta2;
            Frm_WOR11.cxtSA3.Text := Frm_WOR11.lcsSta3;
            Frm_WOR11.lblStartAreaName.Caption := Frm_WOR11.lcsSta1 + ' ' + Frm_WOR11.lcsSta2 + ' ' + Frm_WOR11.lcsSta3;

            Frm_WOR11.cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid3.Cells[1, 0]);

            Frm_WOR11.cxtStartXval.Text := AdvStringGrid3.Cells[4, 0];
            Frm_WOR11.cxtStartYval.Text := AdvStringGrid3.Cells[5, 0];
					end;
				end;
			end	else
      if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				if AdvStringGrid5.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
            noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid6.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid5.ShowSelection := False;
            AdvStringGrid6.ShowSelection := True;

            Frm_WOR11.lcsEnd1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
            Frm_WOR11.lcsEnd2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
            Frm_WOR11.lcsEnd3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿

            Frm_WOR11.cxtEd1.Text := Frm_WOR11.lcsEnd1;
            Frm_WOR11.cxtEd2.Text := Frm_WOR11.lcsEnd2;
            Frm_WOR11.cxtEd3.Text := Frm_WOR11.lcsEnd3;

            Frm_WOR11.lblEndAreaName.Caption := Frm_WOR11.lcsEnd1 + ' ' + Frm_WOR11.lcsEnd2 + ' ' + Frm_WOR11.lcsEnd3;

            Frm_WOR11.cxtEndAreaDetail.Text := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);

            Frm_WOR11.cxtEndXval.Text := AdvStringGrid6.Cells[4, 0];
						Frm_WOR11.cxtEndYval.Text := AdvStringGrid6.Cells[5, 0];
					end;
        end;
			end else
      if lcsActiveEdit = 'meoCallBell' then
			begin
				if AdvStringGrid5.Cells[0,1] = '' then
        begin
          if noSearch then
          begin
						noSearch := False;
            Exit;
          end;

          if ( AdvStringGrid6.Cells[0,0] <> '' ) And ( not bMouseDownSelect ) then
          begin
            AdvStringGrid5.ShowSelection := False;
            AdvStringGrid6.ShowSelection := True;

						Frm_BTN01.lcsCallBell1 := D_HightlightTXT(AdvStringGrid6.Cells[6, 0]);
						Frm_BTN01.lcsCallBell2 := D_HightlightTXT(AdvStringGrid6.Cells[7, 0]);//�ñ���
						Frm_BTN01.lcsCallBell3 := D_HightlightTXT(AdvStringGrid6.Cells[8, 0]);//���鵿

						Frm_BTN01.lbUpsoAreaName.Caption := Frm_BTN01.lcsCallBell1 + ' ' + Frm_BTN01.lcsCallBell2 + ' ' + Frm_BTN01.lcsCallBell3;
						Frm_BTN01.edtUpsoAreaDetail.Caption := D_HightlightTXT(AdvStringGrid6.Cells[1, 0]);

						Frm_BTN01.edtXval.Caption := AdvStringGrid6.Cells[4, 0];
						Frm_BTN01.edtYval.Caption := AdvStringGrid6.Cells[5, 0];
          end;
        end;
			end;
    end;
  	SetDebugeWrite('JON30.pSearchPortalFirst End');
	except
		on e: exception do
    begin
			Log('pSearchPortalFirst Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'pSearchPortalFirst Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.TT3Timer(Sender: TObject);
begin
	SetDebugeWrite('JON30.TT3Timer');
  try
    TT3.Enabled := False;
    bBunji := False;

    if ( GI_PoiServerErr > 1 ) And ( GI_PoiServerErr <= 19 ) then
    begin
      if GS_PoiServerIP = PoiServer1 then
			begin
        GS_PoiServerIP := PoiServer2;
			end else
      begin
        GS_PoiServerIP := PoiServer1;
      end;
    end else
    if ( GI_PoiServerErr > 20 ) then
    begin
      ShowMessage('�˻� ���� ���� �߻� ');
    end;

		proc_Wisenut_GetPOI(gTFindData.sFullWord);
  except
    on e: exception do
    begin
			Log('TT3Timer Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'TT3Timer Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.TT3_1Timer(Sender: TObject);
begin
	TT3_1.Enabled := False;
  try
    SetDebugeWrite('JON30.TT3_1Timer : ' + lcsActiveEdit + ' - ' + sRanDom);

    { TODO :
            ��������� �˻��Ѱ��� ����������� ��ȿ
            ���������� �˻��Ѱ��� ������������ ��ȿ }
    if ( lcsActiveEdit = 'meoStartArea' ) And (Copy(sRanDom, 1, 1) = 'E') then Exit;
		if ( lcsActiveEdit = 'meoEndArea'   ) And (Copy(sRanDom, 1, 1) = 'S') then Exit;

    if Not proc_Wisenut_GetPOILast(GS_WiseNutPOIResult, GS_WiseNutPOIWord) then Exit;
    gbCtrlVRecv := True;

		if GS_SEARCH_WISE_NAVER_COMPARE then tmrWNSUM.Enabled := True
																		else proc_Wisenut_GetPOILastSelect;
	except
    on e: exception do
    begin
			Log('TT3Timer Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'TT3Timer Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.proc_Wisenut_GetPOILastSelect;
Var slTmp : TStringList;
    sErrLine : String;
		sTmp, sName, sTmp1, sTmp2, sTmp3, sTmp4 : String;
		bTmp : Boolean;
begin
	try
    try
			SetDebugeWrite(Format('Frm_JON30.proc_Wisenut_GetPOILastSelect : %s', [lcsActiveEdit]));
      if lcsActiveEdit = 'meoStartArea' then
      begin
        if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'E') And ( Not bClick ) then Exit;

				Frm_Main.Frm_JON01N[Self.Tag].PnlKTPOIYN.Visible := False;
//				Frm_Main.Frm_JON01N[Self.Tag].GBTop3.Color := $00DADCFE;
				if (Length(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text) < 2) then Exit;

				try
					if sActieEdit <> lcsActiveEdit then Exit;

					SetDebugeWrite(Format('AdvStringGrid1L.Cells[0,0] : %s', [AdvStringGrid1L.Cells[0,0]]));
          if ( AdvStringGrid1L.Cells[0,0] = '') Or ( gTFindData.sFullWord <> D_HightlightTXT(AdvStringGrid1L.Cells[1, 0])) then
          begin
            if noSearch then
            begin
							SetDebugeWrite(Format('noSearch : %s', ['True']));
							noSearch := False;
							Exit;
            end;

						if ( Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Hint <> 'F4)���' ) And ( not bMouseDownSelect ) then     // 20130703  LYB  ��ݻ����ϰ�쿡�� ����� ���� �ڵ� ���� �ȵȰ� �Ѵ�.
						begin
							SetDebugeWrite(Format('AdvStringGrid1.Cells[0,0] : %s', [AdvStringGrid1.Cells[0,1]]));
							if AdvStringGrid1.Cells[0,1] <> '' then
							begin
								AdvStringGrid1.ShowSelection := True;
								AdvStringGrid3.ShowSelection := False;

								Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 := D_HightlightTXT(AdvStringGrid1.Cells[6, 1]);
								Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 := D_HightlightTXT(AdvStringGrid1.Cells[7, 1]);//�ñ���
								Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := D_HightlightTXT(AdvStringGrid1.Cells[8, 1]);//���鵿
								Frm_Main.Frm_JON01N[Self.Tag].lcsSta4 := D_HightlightTXT(AdvStringGrid1.Cells[2, 1]);//�α�POI

								Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text := Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 + ' ' +
																																			 Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 + ' ' +
																																			 Frm_Main.Frm_JON01N[Self.Tag].lcsSta3;
								SetDebugeWrite('JON30.lblStartAreaName.Text 13243 : ' + Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text);
								MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);
								Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid1.Cells[1, 1]);
								Frm_Main.Frm_JON01N[Self.Tag].lcsConfAREA4 := D_HightlightTXT(AdvStringGrid1.Cells[1, 1]);
								Frm_Main.Frm_JON01N[Self.Tag].lcsStaDocId := D_HightlightTXT(AdvStringGrid1.Cells[10, 1]);// UID
								Frm_Main.Frm_JON01N[Self.Tag].lcsStaCellSel := 'A';

								MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);

								Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X := AdvStringGrid1.Cells[4, 1];
								Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y := AdvStringGrid1.Cells[5, 1];
								Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X := AdvStringGrid1.Cells[11, 1];
								Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y := AdvStringGrid1.Cells[12, 1];

								try
									Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Gubun := '5';
								finally
									Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X;
									Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y;
									Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEXval := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X;
									Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEYval := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y;
								end;
								Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'W';
							end;
						end;
					end;
        except
          on e: exception do
          begin
						Log('proc_Wisenut_GetPOILastSelect meoStartArea Error :' + sErrLine + ':' + E.Message + ' - ' + gTFindData.sFullWord, LOGDATAPATHFILE);
            Assert(False, 'proc_Wisenut_GetPOILastSelect meoStartArea Error :' + sErrLine + ':' + E.Message);
          end;
        end;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'S') And ( Not bClick ) then Exit;
        try
					if (Length(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text) < 2) then Exit;
					if sActieEdit <> lcsActiveEdit then Exit;

					if ( AdvStringGrid5L.Cells[0,0] = '') Or ( gTFindData.sFullWord <> D_HightlightTXT(AdvStringGrid5L.Cells[1, 0])) then
					begin
						if noSearch then
						begin
              noSearch := False;
              Exit;
						end;

						if ( Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Hint <> 'F4)���' ) And ( not bMouseDownSelect ) then     // 20130703  LYB  ��ݻ����ϰ�쿡�� ������ ���� �ڵ� ���� �ȵȰ� �Ѵ�.
						begin
							if GS_SEARCH_DEST_DONGNAME_G33 then //������� ��Ī�ɼǶ����� �̸� ����Ȯ��
							begin
								bTmp := False; sTmp1 := ''; sTmp2 := ''; sTmp3 := ''; sTmp4 := '';
								slTmp := TStringList.Create;
								Try
									sTmp := D_HightlightTXT(AdvStringGrid4.Cells[0, 0]);
									sName := '';
									if Pos('[', sTmp) > 0 then
									begin
										sName := Trim(Copy(sTmp, 2, Pos(']', sTmp)-2));
										sTmp  := Trim(Copy(sTmp, Pos(']', sTmp) + 2, Length(sTmp) - Length(sName)));
									end;

                  if Trim(sTmp) <> '' then
                  begin
            				procAddressDelimited(sTmp, ' ', slTmp);
	  								sTmp1 := slTmp[0];
		  							sTmp2 := slTmp[1];//�ñ���
			  						sTmp3 := slTmp[2];//���鵿
                  end;
									//�˻��� ����� ������ġ
									if (sTmp1 = gTFindData.sFullWord) and (sTmp2 = '') and (sTmp3 = '') then bTmp := True else
									if (sTmp2 = gTFindData.sFullWord) and (sTmp3 = '') then bTmp := True else
									if (sTmp3 = gTFindData.sFullWord) then bTmp := True;
								finally
									FreeAndNil(slTmp);
								end;
							end;
								
							if (GS_SEARCH_DEST_DONGSINAME) And ( AdvStringGrid4.Cells[0,0] <> '' ) then
							begin
								slTmp := TStringList.Create;
								try
									AdvStringGrid5.ShowSelection := False;
									AdvStringGrid4.ShowSelection := True;

									sTmp := D_HightlightTXT(AdvStringGrid4.Cells[0, 0]);
									sName := '';
									if Pos('[', sTmp) > 0 then
									begin
										sName := Trim(Copy(sTmp, 2, Pos(']', sTmp)-2));
										sTmp  := Trim(Copy(sTmp, Pos(']', sTmp) + 2, Length(sTmp) - Length(sName)));
									end;

                  if Trim(sTmp) <> '' then
                  begin
            				procAddressDelimited(sTmp, ' ', slTmp);
	  								Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := slTmp[0];
			  						Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 := slTmp[1];//�ñ���
				  					Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := slTmp[2];//���鵿
                  end;
								finally
									FreeAndNil(slTmp);
								end;
								Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := '';//�α�POI

								Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption := sTmp;
								Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := sName;
								Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text := Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption + ' ' + Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption;
								SetDebugeWrite('JON30.cxReEndArea.Text 13354 : ' + Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text);
								Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := '';
								Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := 'A';

								MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text), clRed, [fsBold]);

								try
									Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := AdvStringGrid4.Cells[2, 0];
									Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := AdvStringGrid4.Cells[3, 0];
									Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X := '';
									Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y := '';
								finally
									Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X;
									Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y;
                  Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := '';
                  Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := '';
								end;
								Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'D';
							end else
							if (((GS_PRJ_AREA = 'O') and (GT_USERIF.ShareNo = 'G33')) or (GT_USERIF.BR = 'B100')) and 
									 (GS_SEARCH_DEST_DONGNAME_G33) and (bTmp) then    //���� ������ġ�� �ɼ� G33�� ���
							begin
								AdvStringGrid5.ShowSelection := False;
								AdvStringGrid4.ShowSelection := True;

								Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := sTmp1;
								Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 := sTmp2;//�ñ���
								Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := sTmp3;//���鵿

								Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := '';//�α�POI

								Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption := sTmp;
								Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := sName;
								Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text := Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption + ' ' + Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption;
								SetDebugeWrite('JON30.cxReEndArea.Text 13354 : ' + Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text);
								Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := '';
								Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := 'A';

								MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text), clRed, [fsBold]);

								try
									Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := AdvStringGrid4.Cells[2, 0];
									Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := AdvStringGrid4.Cells[3, 0];
									Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X := '';
									Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y := '';
								finally
									Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X;
									Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y;
									Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := '';
									Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := '';
								end;

								Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'D';
							end else
							if AdvStringGrid5.Cells[0,1] <> '' then
							begin
								AdvStringGrid5.ShowSelection := True;
								AdvStringGrid6.ShowSelection := False;

								Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := D_HightlightTXT(AdvStringGrid5.Cells[6, 1]);
								Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 := D_HightlightTXT(AdvStringGrid5.Cells[7, 1]);//�ñ���
								Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := D_HightlightTXT(AdvStringGrid5.Cells[8, 1]);//���鵿
								Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := D_HightlightTXT(AdvStringGrid5.Cells[2, 1]);//�α�POI

								Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption :=  Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 + ' ' +
																																				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 + ' ' +
																																				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3;

								Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := D_HightlightTXT(AdvStringGrid5.Cells[1, 1]);
								Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text := Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption + ' ' + Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption;
								SetDebugeWrite('JON30.cxReEndArea.Text 13391 : ' + Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text);
								Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := D_HightlightTXT(AdvStringGrid5.Cells[10, 1]);
								Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := 'A';

								MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text), clRed, [fsBold]);

								try
									Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := AdvStringGrid5.Cells[4, 1];
									Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := AdvStringGrid5.Cells[5, 1];
									Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X := AdvStringGrid5.Cells[11, 1];
									Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y := AdvStringGrid5.Cells[12, 1];
								finally
									Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X;
									Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y;
									Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X;
									Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y;
								end;

								Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'W';
							end;
						end;
					end;

        except
          on e: exception do
          begin
						Log('proc_Wisenut_GetPOILastSelect meoEndArea Error :' + E.Message + ' - ' + gTFindData.sFullWord, LOGDATAPATHFILE);
            Assert(False, 'proc_Wisenut_GetPOILastSelect meoEndArea Error :' + E.Message);
          end;
        end;
      end else
			if lcsActiveEdit = 'meoViaArea' then
      begin
        try
					if ( AdvStringGrid8L.Cells[0,0] = '') Or ( gTFindData.sFullWord <> D_HightlightTXT(AdvStringGrid8L.Cells[1, 0])) then
          begin
            if noSearch then
            begin
              noSearch := False;
              Exit;
            end;

						if GS_VIA_Tag = 1 then
							pJon01ViaLock := Frm_Main.Frm_JON01N[Self.Tag].BtnViaLock1
						else
							pJon01ViaLock := Frm_Main.Frm_JON01N[Self.Tag].BtnViaLock[GS_VIA_Tag];
						
						if ( pJon01ViaLock.Hint <> 'F4)���' ) and ( AdvStringGrid8.Cells[0,1] <> '' ) And ( not bMouseDownSelect ) then
            begin
              AdvStringGrid8.ShowSelection := True;
              AdvStringGrid9.ShowSelection := False;

							Frm_Main.Frm_JON01N[Self.Tag].ViaSA1[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid8.Cells[6, 1]);// cxGViewArea.DataController.Values[ss_Row - 1, 0];
							Frm_Main.Frm_JON01N[Self.Tag].ViaSA2[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid8.Cells[7, 1]);
							Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid8.Cells[8, 1]);
							Frm_Main.Frm_JON01N[Self.Tag].DocId[GS_VIA_Tag]  := D_HightlightTXT(AdvStringGrid8.Cells[10, 1]);
							Frm_Main.Frm_JON01N[Self.Tag].CellSel[GS_VIA_Tag] := 'A';
							Frm_Main.Frm_JON01N[Self.Tag].SchWord[GS_VIA_Tag] := gTFindData.sFullWord;
							if GS_VIA_Tag = 1 then
								Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption := D_HightlightTXT(AdvStringGrid8.Cells[6, 1])
																															 + ' ' + D_HightlightTXT(AdvStringGrid8.Cells[7, 1])
																															 + ' ' + D_HightlightTXT(AdvStringGrid8.Cells[8, 1])
							else
								Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption := D_HightlightTXT(AdvStringGrid8.Cells[6, 1])
																																					+ ' ' + D_HightlightTXT(AdvStringGrid8.Cells[7, 1])
																																					+ ' ' + D_HightlightTXT(AdvStringGrid8.Cells[8, 1]);

							Frm_Main.Frm_JON01N[Self.Tag].ViaAreaDetail[GS_VIA_Tag] := D_HightlightTXT(AdvStringGrid8.Cells[1, 1]);

							if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text
																else Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text;

							Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := AdvStringGrid8.Cells[4, 1];
							Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] := AdvStringGrid8.Cells[5, 1];
							ViaPos('', Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag], Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag]);
							GS_Grid_VIA := 'W';

							if Frm_Main.Frm_JON01N[Self.Tag].pnl_ViaMent.Hint = 'Enter' then  //POI ã������� Enter, Tab���ý� �ڵ����� POI����
							begin
								Frm_Main.Frm_JON01N[Self.Tag].pnl_ViaMent.Visible := False;
								Frm_Main.Frm_JON01N[Self.Tag].pnl_ViaMent.Hint := '';
								//������ ��� �߰� 20181112KHS
								if GS_VIA_Tag = 1 then
								begin
									pJon01ViaLock := Frm_Main.Frm_JON01N[Self.Tag].BtnViaLock1;
								end	else
								begin
									pJon01ViaLock := Frm_Main.Frm_JON01N[Self.Tag].BtnViaLock[GS_VIA_Tag];
								end;
								Frm_Main.Frm_JON01N[Self.Tag].ViaOk;
								pJon01ViaLock.Hint := 'F4)���';
								pJon01ViaLock.Tag  := 0;
								pJon01ViaLock.Down := True;
								pJon01ViaLock.ImageIndex := 1;              

								if Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag + 1].Text <> '' then
									Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag + 1].SetFocus
								else
								begin
									if Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.CanFocus then Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.SetFocus;
								end;
							end;
						end;
          end;
        except
          on e: exception do
          begin
            Log('proc_Wisenut_GetPOILastSelect meoViaArea Error :' + E.Message + ' - ' + gTFindData.sFullWord, LOGDATAPATHFILE);
            Assert(False, 'proc_Wisenut_GetPOILastSelect meoViaArea Error :' + E.Message);
          end;
        end;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
      begin
        try
          if ( AdvStringGrid1L.Cells[0,0] = '') Or ( gTFindData.sFullWord <> D_HightlightTXT(AdvStringGrid1L.Cells[1, 0])) then
          begin
            if noSearch then
            begin
              noSearch := False;
              Exit;
            end;

            if ( AdvStringGrid1.Cells[0,1] <> '' ) And ( not bMouseDownSelect ) then
            begin
              AdvStringGrid1.ShowSelection := True;
              AdvStringGrid3.ShowSelection := False;

              Frm_CUT011.lcsSta1 := D_HightlightTXT(AdvStringGrid1.Cells[6, 1]);
              Frm_CUT011.lcsSta2 := D_HightlightTXT(AdvStringGrid1.Cells[7, 1]);//�ñ���
              Frm_CUT011.lcsSta3 := D_HightlightTXT(AdvStringGrid1.Cells[8, 1]);//���鵿

              Frm_CUT011.cxtSA1.Text := Frm_CUT011.lcsSta1;
              Frm_CUT011.cxtSA2.Text := Frm_CUT011.lcsSta2;
              Frm_CUT011.cxtSA3.Text := Frm_CUT011.lcsSta3;
              Frm_CUT011.lblStartAreaName.Caption := Frm_CUT011.lcsSta1 + ' ' + Frm_CUT011.lcsSta2 + ' ' + Frm_CUT011.lcsSta3;

              Frm_CUT011.cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid1.Cells[1, 1]);

              Frm_CUT011.cxtStartXval.Text := AdvStringGrid1.Cells[4, 1];
              Frm_CUT011.cxtStartYval.Text := AdvStringGrid1.Cells[5, 1];
            end;
          end;

        except
          on e: exception do
          begin
            Log('proc_Wisenut_GetPOILastSelect meoStartAreaCUT Error :' + E.Message + ' - ' + gTFindData.sFullWord, LOGDATAPATHFILE);
            Assert(False, 'proc_Wisenut_GetPOILastSelect meoStartAreaCUT Error :' + E.Message);
          end;
        end;
      end else
      if lcsActiveEdit = 'meoEndAreaCUT' then
      begin
        try
          if ( AdvStringGrid5L.Cells[0,0] = '') Or ( gTFindData.sFullWord <> D_HightlightTXT(AdvStringGrid5L.Cells[1, 0])) then
          begin
            if noSearch then
            begin
              noSearch := False;
              Exit;
            end;

            if ( AdvStringGrid5.Cells[0,1] <> '' ) And ( not bMouseDownSelect ) then
            begin
              AdvStringGrid5.ShowSelection := True;
              AdvStringGrid6.ShowSelection := False;

              Frm_CUT011.lcsEnd1 := D_HightlightTXT(AdvStringGrid5.Cells[6, 1]);
              Frm_CUT011.lcsEnd2 := D_HightlightTXT(AdvStringGrid5.Cells[7, 1]);//�ñ���
              Frm_CUT011.lcsEnd3 := D_HightlightTXT(AdvStringGrid5.Cells[8, 1]);//���鵿

              Frm_CUT011.cxtEd1.Text := Frm_CUT011.lcsEnd1;
              Frm_CUT011.cxtEd2.Text := Frm_CUT011.lcsEnd2;
              Frm_CUT011.cxtEd3.Text := Frm_CUT011.lcsEnd3;

              Frm_CUT011.lblEndAreaName.Caption := Frm_CUT011.lcsEnd1 + ' ' + Frm_CUT011.lcsEnd2 + ' ' + Frm_CUT011.lcsEnd3;

              Frm_CUT011.cxtEndAreaDetail.Text := D_HightlightTXT(AdvStringGrid5.Cells[1, 1]);

              Frm_CUT011.cxtEndXval.Text := AdvStringGrid5.Cells[4, 1];
              Frm_CUT011.cxtEndYval.Text := AdvStringGrid5.Cells[5, 1];
            end;
          end;

        except
          on e: exception do
          begin
            Log('proc_Wisenut_GetPOILastSelect meoStartAreaCUT Error :' + E.Message + ' - ' + gTFindData.sFullWord, LOGDATAPATHFILE);
            Assert(False, 'proc_Wisenut_GetPOILastSelect meoStartAreaCUT Error :' + E.Message);
          end;
        end;
      end else
  		if lcsActiveEdit = 'meoStartAreaWOR11' then
  		begin
  			try
  				if ( AdvStringGrid1L.Cells[0,0] = '') Or ( gTFindData.sFullWord <> D_HightlightTXT(AdvStringGrid1L.Cells[1, 0])) then
  				begin
  					if noSearch then
  					begin
  						noSearch := False;
  						Exit;
  					end;

            if ( AdvStringGrid1.Cells[0,1] <> '' ) And ( not bMouseDownSelect ) then
            begin
              AdvStringGrid1.ShowSelection := True;
              AdvStringGrid3.ShowSelection := False;

              Frm_WOR11.lcsSta1 := D_HightlightTXT(AdvStringGrid1.Cells[6, 1]);
              Frm_WOR11.lcsSta2 := D_HightlightTXT(AdvStringGrid1.Cells[7, 1]);//�ñ���
              Frm_WOR11.lcsSta3 := D_HightlightTXT(AdvStringGrid1.Cells[8, 1]);//���鵿

              Frm_WOR11.cxtSA1.Text := Frm_WOR11.lcsSta1;
              Frm_WOR11.cxtSA2.Text := Frm_WOR11.lcsSta2;
              Frm_WOR11.cxtSA3.Text := Frm_WOR11.lcsSta3;
              Frm_WOR11.lblStartAreaName.Caption := Frm_WOR11.lcsSta1 + ' ' + Frm_WOR11.lcsSta2 + ' ' + Frm_WOR11.lcsSta3;

              Frm_WOR11.cxtStartAreaDetail.Text := D_HightlightTXT(AdvStringGrid1.Cells[1, 1]);

              Frm_WOR11.cxtStartXval.Text := AdvStringGrid1.Cells[4, 1];
              Frm_WOR11.cxtStartYval.Text := AdvStringGrid1.Cells[5, 1];
            end;
          end;

        except
          on e: exception do
          begin
            Log('proc_Wisenut_GetPOILastSelect meoStartAreaCUT Error :' + E.Message + ' - ' + gTFindData.sFullWord, LOGDATAPATHFILE);
            Assert(False, 'proc_Wisenut_GetPOILastSelect meoStartAreaCUT Error :' + E.Message);
          end;
        end;
  		end else
  		if lcsActiveEdit = 'meoEndAreaWOR11' then
  		begin
  			try
          if ( AdvStringGrid5L.Cells[0,0] = '') Or ( gTFindData.sFullWord <> D_HightlightTXT(AdvStringGrid5L.Cells[1, 0])) then
          begin
            if noSearch then
            begin
              noSearch := False;
              Exit;
            end;

            if ( AdvStringGrid5.Cells[0,1] <> '' ) And ( not bMouseDownSelect ) then
            begin
              AdvStringGrid5.ShowSelection := True;
              AdvStringGrid6.ShowSelection := False;

              Frm_WOR11.lcsEnd1 := D_HightlightTXT(AdvStringGrid5.Cells[6, 1]);
              Frm_WOR11.lcsEnd2 := D_HightlightTXT(AdvStringGrid5.Cells[7, 1]);//�ñ���
              Frm_WOR11.lcsEnd3 := D_HightlightTXT(AdvStringGrid5.Cells[8, 1]);//���鵿

              Frm_WOR11.cxtEd1.Text := Frm_WOR11.lcsEnd1;
              Frm_WOR11.cxtEd2.Text := Frm_WOR11.lcsEnd2;
              Frm_WOR11.cxtEd3.Text := Frm_WOR11.lcsEnd3;

              Frm_WOR11.lblEndAreaName.Caption := Frm_WOR11.lcsEnd1 + ' ' + Frm_WOR11.lcsEnd2 + ' ' + Frm_WOR11.lcsEnd3;

              Frm_WOR11.cxtEndAreaDetail.Text := D_HightlightTXT(AdvStringGrid5.Cells[1, 1]);

              Frm_WOR11.cxtEndXval.Text := AdvStringGrid5.Cells[4, 1];
  						Frm_WOR11.cxtEndYval.Text := AdvStringGrid5.Cells[5, 1];
            end;
          end;
        except
          on e: exception do
          begin
            Log('proc_Wisenut_GetPOILastSelect meoStartAreaCUT Error :' + E.Message + ' - ' + gTFindData.sFullWord, LOGDATAPATHFILE);
            Assert(False, 'proc_Wisenut_GetPOILastSelect meoStartAreaCUT Error :' + E.Message);
          end;
        end;
			end else
			if lcsActiveEdit = 'meoCallBell' then
			begin
				try
          if ( AdvStringGrid5L.Cells[0,0] = '') Or ( gTFindData.sFullWord <> D_HightlightTXT(AdvStringGrid5L.Cells[1, 0])) then
					begin
            if noSearch then
            begin
              noSearch := False;
							Exit;
            end;

            if ( AdvStringGrid5.Cells[0,1] <> '' ) And ( not bMouseDownSelect ) then
            begin
              AdvStringGrid5.ShowSelection := True;
              AdvStringGrid6.ShowSelection := False;

							Frm_BTN01.lcsCallBell1 := D_HightlightTXT(AdvStringGrid5.Cells[6, 1]);
							Frm_BTN01.lcsCallBell2 := D_HightlightTXT(AdvStringGrid5.Cells[7, 1]);//�ñ���
							Frm_BTN01.lcsCallBell3 := D_HightlightTXT(AdvStringGrid5.Cells[8, 1]);//���鵿

							Frm_BTN01.lbUpsoAreaName.Caption := Frm_BTN01.lcsCallBell1 + ' ' + Frm_BTN01.lcsCallBell2 + ' ' + Frm_BTN01.lcsCallBell3;

							Frm_BTN01.edtUpsoAreaDetail.Caption := D_HightlightTXT(AdvStringGrid5.Cells[1, 1]);

							Frm_BTN01.edtXval.Caption := AdvStringGrid5.Cells[4, 1];
							Frm_BTN01.edtYval.Caption := AdvStringGrid5.Cells[5, 1];
            end;
          end;
        except
          on e: exception do
          begin
            Log('proc_Wisenut_GetPOILastSelect meoStartAreaCUT Error :' + E.Message + ' - ' + gTFindData.sFullWord, LOGDATAPATHFILE);
            Assert(False, 'proc_Wisenut_GetPOILastSelect meoStartAreaCUT Error :' + E.Message);
          end;
        end;
			end;

      if lsNbCheck then
			begin
				if ( lcsActiveEdit = 'meoStartArea' ) And ( Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Hint <> 'F4)���' ) then
				begin
					pAutoLockStart;
				end else
				if ( lcsActiveEdit = 'meoEndArea' ) And ( Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Hint <> 'F4)���' ) then
				begin
					if Not GS_End_AUTOLOCK then pAutoLockEnd;
				end;
			end;
		finally
      if GS_SEARCH_POTAL_2ResultOver then
      begin
        if ( (lcsActiveEdit = 'meoStartArea') And (AdvStringGrid1.RowCount < 3) ) Or
           ( (lcsActiveEdit = 'meoEndArea'  ) And (AdvStringGrid5.RowCount < 3) ) Or
           ( (lcsActiveEdit = 'meoViaArea'  ) And (AdvStringGrid8.RowCount < 3) ) then
        begin
          TT2.Interval := 10;
          TT2.Enabled  := True;
        end else
        begin
          Grid_Clear(lcsActiveEdit,3);
        end;
      end;
      Application.ProcessMessages;
			if (lcsActiveEdit = 'meoStartArea')      or (lcsActiveEdit = 'meoStartAreaCUT') or 
				 (lcsActiveEdit = 'meoStartAreaWOR11') then
			begin
				if not bMouseDownSelect then
        begin
          if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then
          begin
						AdvStringGrid1.ShowSelection := False;
						AdvStringGrid2.ShowSelection := True;
          end else
          begin
            AdvStringGrid1.ShowSelection := True;
            AdvStringGrid2.ShowSelection := False;
          end;
          AdvStringGrid3.ShowSelection := False;
        end;
//        AdvStringGrid1.EndUpdate;
      end else
			if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT') or 
				 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell')   then
			begin
        if not bMouseDownSelect then
        begin
          if ( (GS_SEARCH_DEST_DONGSINAME) And ( AdvStringGrid4.Cells[0,0] <> '' ) ) Or
             ( ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) ) then
          begin
            AdvStringGrid5.ShowSelection := False;
            AdvStringGrid4.ShowSelection := True;
            AdvStringGrid6.ShowSelection := False;
          end else
          begin
            AdvStringGrid5.ShowSelection := True;
            AdvStringGrid4.ShowSelection := False;
            AdvStringGrid6.ShowSelection := False;
          end;
        end;
//        AdvStringGrid5.EndUpdate;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        if not bMouseDownSelect then
        begin
					if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then
          begin
						AdvStringGrid8.ShowSelection := False;
            AdvStringGrid7.ShowSelection := True;
          end else
          begin
            AdvStringGrid8.ShowSelection := True;
            AdvStringGrid7.ShowSelection := False;
          end;
          AdvStringGrid9.ShowSelection := False;
        end;
//				AdvStringGrid8.EndUpdate;
      end else
		end;
  except
    on e: exception do
    begin
      Log('proc_Wisenut_GetPOILastSelect Error :' + E.Message + ' - ' + gTFindData.sFullWord, LOGDATAPATHFILE);
      Assert(False, 'proc_Wisenut_GetPOILastSelect Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.TTLTimer(Sender: TObject);
begin
  SetDebugeWrite('JON30.TTLTimer');
  TTL.Enabled := False;

  // ���� �ؽ�Ʈ �˻�. 130114.
  if length(WideString(gTFindData.sFullWord)) > 1 then
  begin
    EnterCriticalSection(_CriticalLockMap);

    Proc_SearchResultGath_Final_Local;    // 120625.

    LeaveCriticalSection(_CriticalLockMap);
  end;
end;

// POI �� ���� ��
procedure TFrm_JON30.Proc_SendParent_ADV2(ss_Row, ss_Col: Integer;  sTF: boolean);
var
  row3, row4, sTmp, sName : string;
  slTmp : TStringList;
begin
	SetDebugeWrite('JON30.Proc_SendParent_ADV2');
	try
    bMouseDownSelect := True;
		slTmp := TStringList.Create;
    try
			if lcsActiveEdit = 'meoStartArea' then
      begin
        if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'E') And ( Not bClick ) then Exit;
        try
					sTmp := D_HightlightTXT(AdvStringGrid2.Cells[ss_Col, ss_Row -1]);
					sName := '';
					if Pos('[', sTmp) > 0 then
					begin
						sName := Trim(Copy(sTmp, 2, Pos(']', sTmp)-2));
						sTmp  := Trim(Copy(sTmp, Pos(']', sTmp) + 2, Length(sTmp) - Length(sName)));
					end;

          if Trim(sTmp) <> '' then
          begin
     				procAddressDelimited(sTmp, ' ', slTmp);
	  				Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 := slTmp[0];
		  			Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 := slTmp[1];//�ñ���
			  		Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := slTmp[2];//���鵿
          end;

					Frm_Main.Frm_JON01N[Self.Tag].sBHSAddr := '';
					Frm_Main.Frm_JON01N[Self.Tag].lcsSta4 := '';//���鵿
					Frm_Main.Frm_JON01N[Self.Tag].lcsStaDocId := '';
					Frm_Main.Frm_JON01N[Self.Tag].lcsStaDebug := '';
					Frm_Main.Frm_JON01N[Self.Tag].lcsStaCellSel := IntToStr(ss_Row -1);
					Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text := sTmp;
					SetDebugeWrite('JON30.lblStartAreaName.Text 13786 : ' + Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text);
					MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);
					Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text := sName;
					Frm_Main.Frm_JON01N[Self.Tag].lcsConfAREA4 := sName;
					MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);

					// 20120805 ��ǥ ���� üũ LYB
					Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area1 := Frm_Main.Frm_JON01N[Self.Tag].lcsSta1;
					Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area2 := Frm_Main.Frm_JON01N[Self.Tag].lcsSta2;//�ñ���
					Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area3 := Frm_Main.Frm_JON01N[Self.Tag].lcsSta3;//���鵿
					Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area4 := Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text;
					Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area5 := Frm_Main.Frm_JON01N[Self.Tag].lcsSta4;//�α�POI
					Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Gubun := '6';

          if ss_Col =  0 then
          begin
            Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X := AdvStringGrid2.Cells[2, ss_Row -1];
            Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y := AdvStringGrid2.Cells[3, ss_Row -1];
          end;
          if ss_Col =  4 then
          begin
            Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X := AdvStringGrid2.Cells[6, ss_Row -1];
            Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y := AdvStringGrid2.Cells[7, ss_Row -1];
          end;
          if ss_Col =  8 then
          begin
            Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X := AdvStringGrid2.Cells[10, ss_Row -1];
            Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y := AdvStringGrid2.Cells[11, ss_Row -1];
          end;

					Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X := '';
					Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y := '';

					Frm_Main.Frm_JON01N[Self.Tag].StartListN := '1';  //����� ����Ʈ ������
					Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X;
					Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y;
					Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEXval := '';
					Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEYval := '';
					Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'D'; //�������� ���ý�
				except
          on e: exception do
          begin
            Log('Proc_SendParent_ADV2 meoStartArea Error :' + E.Message, LOGDATAPATHFILE);
            Assert(False, 'Proc_SendParent_ADV2 meoStartArea Error :' + E.Message);
          end;
        end;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'S') And ( Not bClick ) then Exit;
        try
					sTmp := D_HightlightTXT(AdvStringGrid4.Cells[ss_Col, ss_Row -1]);
					sName := '';
					if Pos('[', sTmp) > 0 then
					begin
						sName := Trim(Copy(sTmp, 2, Pos(']', sTmp)-2));
						sTmp  := Trim(Copy(sTmp, Pos(']', sTmp) + 2, Length(sTmp) - Length(sName)));
					end;

          if Trim(sTmp) <> '' then
          begin
     				procAddressDelimited(sTmp, ' ', slTmp);
	   				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := slTmp[0];
		   			Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 := slTmp[1];//�ñ���
			   		Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := slTmp[2];//���鵿
          end;

					Frm_Main.Frm_JON01N[Self.Tag].sBHEAddr := '';
					Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := '';//���鵿
					Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := '';
					Frm_Main.Frm_JON01N[Self.Tag].lcsEndDebug := '';
					Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := IntToStr(ss_Row -1);
					Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption := sTmp;
					Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := sName;
					Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text := Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption + ' ' + Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption;
					SetDebugeWrite('JON30.cxReEndArea.Text 13931 : ' + Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text);
					MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text), clRed, [fsBold]);

          if ss_Col =  0 then
          begin
            Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := AdvStringGrid4.Cells[2, ss_Row -1];
            Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := AdvStringGrid4.Cells[3, ss_Row -1];
          end;
          if ss_Col =  4 then
          begin
            Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := AdvStringGrid4.Cells[6, ss_Row -1];
            Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := AdvStringGrid4.Cells[7, ss_Row -1];
          end;
          if ss_Col =  8 then
          begin
            Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := AdvStringGrid4.Cells[10, ss_Row -1];
            Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := AdvStringGrid4.Cells[11, ss_Row -1];
          end;

					Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X := '';
					Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y := '';

					Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X;
					Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y;
					Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := '';
					Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := '';
					Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'D';
				except
          on e: exception do
          begin
            Log('Proc_SendParent_ADV2 meoEndArea Error :' + E.Message, LOGDATAPATHFILE);
            Assert(False, 'Proc_SendParent_ADV2 meoEndArea Error :' + E.Message);
          end;
        end;
      end else
      begin
				if lcsActiveEdit = 'meoViaArea' then
        begin
          try
						sTmp := D_HightlightTXT(AdvStringGrid7.Cells[ss_Col, ss_Row -1]);
						sName := '';
						if Pos('[', sTmp) > 0 then
						begin
							sName := Trim(Copy(sTmp, 2, Pos(']', sTmp)-2));
							sTmp  := Trim(Copy(sTmp, Pos(']', sTmp) + 2, Length(sTmp) - Length(sName)));
						end;

            if Trim(sTmp) <> '' then
            begin
       				procAddressDelimited(sTmp, ' ', slTmp);
	  					Frm_Main.Frm_JON01N[Self.Tag].ViaSA1[GS_VIA_Tag] := slTmp[0];
		  				Frm_Main.Frm_JON01N[Self.Tag].ViaSA2[GS_VIA_Tag] := slTmp[1];
			  			Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] := slTmp[2];
            end;

						if GS_VIA_Tag = 1 then
							Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption := sTmp
						else
							Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption := sTmp;

						Frm_Main.Frm_JON01N[Self.Tag].DocId[GS_VIA_Tag] := '';
						Frm_Main.Frm_JON01N[Self.Tag].CellSel[GS_VIA_Tag] := IntToStr(ss_Row -1);
						Frm_Main.Frm_JON01N[Self.Tag].ViaAreaDetail[GS_VIA_Tag] := sName;

						if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text
															else Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text;

						if sName <> '' then
						begin
							if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text := sName
																else Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text := sName;
							Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := sName;
						end;

            if ss_Col =  0 then
            begin
              Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := AdvStringGrid7.Cells[2, ss_Row -1];
              Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] := AdvStringGrid7.Cells[3, ss_Row -1];
            end;
            if ss_Col =  4 then
            begin
              Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := AdvStringGrid7.Cells[6, ss_Row -1];
              Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] := AdvStringGrid7.Cells[7, ss_Row -1];
            end;
            if ss_Col =  8 then
            begin
              Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := AdvStringGrid7.Cells[10, ss_Row -1];
              Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] := AdvStringGrid7.Cells[11, ss_Row -1];
            end;

						ViaPos('', Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag], Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag]);
						GS_Grid_VIA := 'D';
          except
            on e: exception do
            begin
              Log('Proc_SendParent_ADV2 meoViaArea Error :' + E.Message, LOGDATAPATHFILE);
              Assert(False, 'Proc_SendParent_ADV2 meoViaArea Error :' + E.Message);
            end;
          end;
        end else
        if lcsActiveEdit = 'meoStartAreaCUT' then
        begin
          try
            sTmp := D_HightlightTXT(AdvStringGrid2.Cells[ss_Col, ss_Row -1]);
            sName := '';
            if Pos('[', sTmp) > 0 then
            begin
              sName := Trim(Copy(sTmp, 2, Pos(']', sTmp)-2));
              sTmp  := Trim(Copy(sTmp, Pos(']', sTmp) + 2, Length(sTmp) - Length(sName)));
            end;

            if Trim(sTmp) <> '' then
            begin
       				procAddressDelimited(sTmp, ' ', slTmp);
	   					Frm_CUT011.lcsSta1 := slTmp[0];
		   				Frm_CUT011.lcsSta2 := slTmp[1];//�ñ���
			   			Frm_CUT011.lcsSta3 := slTmp[3];//���鵿
            end;

            Frm_CUT011.cxtSA1.Text := Frm_CUT011.lcsSta1;
            Frm_CUT011.cxtSA2.Text := Frm_CUT011.lcsSta2;
            Frm_CUT011.cxtSA3.Text := Frm_CUT011.lcsSta3;
            Frm_CUT011.lblStartAreaName.Caption := sTmp;
            Frm_CUT011.cxtStartAreaDetail.Text := sName;

            if ss_Col =  0 then
            begin
              Frm_CUT011.cxtStartXval.Text := AdvStringGrid2.Cells[2, ss_Row -1];
              Frm_CUT011.cxtStartYval.Text := AdvStringGrid2.Cells[3, ss_Row -1];
            end;
            if ss_Col =  4 then
            begin
              Frm_CUT011.cxtStartXval.Text := AdvStringGrid2.Cells[6, ss_Row -1];
              Frm_CUT011.cxtStartYval.Text := AdvStringGrid2.Cells[7, ss_Row -1];
            end;
            if ss_Col =  8 then
            begin
              Frm_CUT011.cxtStartXval.Text := AdvStringGrid2.Cells[10, ss_Row -1];
              Frm_CUT011.cxtStartYval.Text := AdvStringGrid2.Cells[11, ss_Row -1];
            end;
          except
            on e: exception do
            begin
              Log('Proc_SendParent_ADV2 meoStartAreaCUT Error :' + E.Message, LOGDATAPATHFILE);
              Assert(False, 'Proc_SendParent_ADV2 meoStartAreaCUT Error :' + E.Message);
            end;
          end;
        end else
        if lcsActiveEdit = 'meoEndAreaCUT' then
        begin
          try
            sTmp := D_HightlightTXT(AdvStringGrid4.Cells[ss_Col, ss_Row -1]);
            sName := '';
            if Pos('[', sTmp) > 0 then
            begin
              sName := Trim(Copy(sTmp, 2, Pos(']', sTmp)-2));
              sTmp  := Trim(Copy(sTmp, Pos(']', sTmp) + 2, Length(sTmp) - Length(sName)));
            end;

            if Trim(sTmp) <> '' then
            begin
       				procAddressDelimited(sTmp, ' ', slTmp);
	  					Frm_CUT011.lcsEnd1 := slTmp[0];
		  				Frm_CUT011.lcsEnd2 := slTmp[1];//�ñ���
			  			Frm_CUT011.lcsEnd3 := slTmp[2];//���鵿
            end;
						Frm_CUT011.cxtEd1.Text := Frm_CUT011.lcsEnd1;
            Frm_CUT011.cxtEd2.Text := Frm_CUT011.lcsEnd2;
            Frm_CUT011.cxtEd3.Text := Frm_CUT011.lcsEnd3;
            Frm_CUT011.lblEndAreaName.Caption := sTmp;
            Frm_CUT011.cxtEndAreaDetail.Text := sName;

            if ss_Col =  0 then
            begin
              Frm_CUT011.cxtEndXval.Text := AdvStringGrid4.Cells[2, ss_Row -1];
              Frm_CUT011.cxtEndYval.Text := AdvStringGrid4.Cells[3, ss_Row -1];
            end;
            if ss_Col =  4 then
            begin
              Frm_CUT011.cxtEndXval.Text := AdvStringGrid4.Cells[6, ss_Row -1];
              Frm_CUT011.cxtEndYval.Text := AdvStringGrid4.Cells[7, ss_Row -1];
            end;
            if ss_Col =  8 then
            begin
              Frm_CUT011.cxtEndXval.Text := AdvStringGrid4.Cells[10, ss_Row -1];
              Frm_CUT011.cxtEndYval.Text := AdvStringGrid4.Cells[11, ss_Row -1];
            end;
          except
            on e: exception do
            begin
              Log('Proc_SendParent_ADV2 meoEndAreaCUT Error :' + E.Message, LOGDATAPATHFILE);
              Assert(False, 'Proc_SendParent_ADV2 meoEndAreaCUT Error :' + E.Message);
            end;
          end;
				end else
				if lcsActiveEdit = 'meoStartAreaWOR11' then
				begin
					try
						sTmp := D_HightlightTXT(AdvStringGrid2.Cells[ss_Col, ss_Row -1]);
						sName := '';
						if Pos('[', sTmp) > 0 then
						begin
							sName := Trim(Copy(sTmp, 2, Pos(']', sTmp)-2));
							sTmp  := Trim(Copy(sTmp, Pos(']', sTmp) + 2, Length(sTmp) - Length(sName)));
						end;

            if Trim(sTmp) <> '' then
            begin
       				procAddressDelimited(sTmp, ' ', slTmp);
	   					Frm_WOR11.lcsSta1 := slTmp[0];
		   				Frm_WOR11.lcsSta2 := slTmp[1];//�ñ���
			   			Frm_WOR11.lcsSta3 := slTmp[2];//���鵿
            end;

            Frm_WOR11.cxtSA1.Text := Frm_WOR11.lcsSta1;
            Frm_WOR11.cxtSA2.Text := Frm_WOR11.lcsSta2;
            Frm_WOR11.cxtSA3.Text := Frm_WOR11.lcsSta3;
            Frm_WOR11.lblStartAreaName.Caption := sTmp;
            Frm_WOR11.cxtStartAreaDetail.Text := sName;

            if ss_Col =  0 then
            begin
              Frm_WOR11.cxtStartXval.Text := AdvStringGrid2.Cells[2, ss_Row -1];
              Frm_WOR11.cxtStartYval.Text := AdvStringGrid2.Cells[3, ss_Row -1];
            end;
            if ss_Col =  4 then
            begin
              Frm_WOR11.cxtStartXval.Text := AdvStringGrid2.Cells[6, ss_Row -1];
              Frm_WOR11.cxtStartYval.Text := AdvStringGrid2.Cells[7, ss_Row -1];
            end;
            if ss_Col =  8 then
            begin
              Frm_WOR11.cxtStartXval.Text := AdvStringGrid2.Cells[10, ss_Row -1];
              Frm_WOR11.cxtStartYval.Text := AdvStringGrid2.Cells[11, ss_Row -1];
            end;
          except
            on e: exception do
            begin
              Log('Proc_SendParent_ADV2 meoStartAreaCUT Error :' + E.Message, LOGDATAPATHFILE);
              Assert(False, 'Proc_SendParent_ADV2 meoStartAreaCUT Error :' + E.Message);
            end;
          end;
				end else
				if lcsActiveEdit = 'meoEndAreaWOR11' then
				begin
					try
						sTmp := D_HightlightTXT(AdvStringGrid4.Cells[ss_Col, ss_Row -1]);
						sName := '';
						if Pos('[', sTmp) > 0 then
						begin
              sName := Trim(Copy(sTmp, 2, Pos(']', sTmp)-2));
              sTmp  := Trim(Copy(sTmp, Pos(']', sTmp) + 2, Length(sTmp) - Length(sName)));
            end;

            if Trim(sTmp) <> '' then
            begin
      				procAddressDelimited(sTmp, ' ', slTmp);
  						Frm_WOR11.lcsEnd1 := slTmp[0];
	  					Frm_WOR11.lcsEnd2 := slTmp[1];//�ñ���
		  				Frm_WOR11.lcsEnd3 := slTmp[2];//���鵿
            end;
						Frm_WOR11.cxtEd1.Text := Frm_WOR11.lcsEnd1;
						Frm_WOR11.cxtEd2.Text := Frm_WOR11.lcsEnd2;
						Frm_WOR11.cxtEd3.Text := Frm_WOR11.lcsEnd3;
						Frm_WOR11.lblEndAreaName.Caption := sTmp;
						Frm_WOR11.cxtEndAreaDetail.Text := sName;

            if ss_Col =  0 then
            begin
              Frm_WOR11.cxtEndXval.Text := AdvStringGrid4.Cells[2, ss_Row -1];
              Frm_WOR11.cxtEndYval.Text := AdvStringGrid4.Cells[3, ss_Row -1];
            end;
            if ss_Col =  4 then
            begin
              Frm_WOR11.cxtEndXval.Text := AdvStringGrid4.Cells[6, ss_Row -1];
              Frm_WOR11.cxtEndYval.Text := AdvStringGrid4.Cells[7, ss_Row -1];
            end;
            if ss_Col =  8 then
            begin
              Frm_WOR11.cxtEndXval.Text := AdvStringGrid4.Cells[10, ss_Row -1];
              Frm_WOR11.cxtEndYval.Text := AdvStringGrid4.Cells[11, ss_Row -1];
            end;
          except
						on e: exception do
            begin
              Log('Proc_SendParent_ADV2 meoEndAreaCUT Error :' + E.Message, LOGDATAPATHFILE);
              Assert(False, 'Proc_SendParent_ADV2 meoEndAreaCUT Error :' + E.Message);
            end;
          end;
				end else
				if lcsActiveEdit = 'meoCallBell' then
				begin
					try
						sTmp := D_HightlightTXT(AdvStringGrid4.Cells[ss_Col, ss_Row -1]);
						sName := '';
						if Pos('[', sTmp) > 0 then
						begin
              sName := Trim(Copy(sTmp, 2, Pos(']', sTmp)-2));
              sTmp  := Trim(Copy(sTmp, Pos(']', sTmp) + 2, Length(sTmp) - Length(sName)));
            end;

            if Trim(sTmp) <> '' then
            begin
      				procAddressDelimited(sTmp, ' ', slTmp);
	  					Frm_BTN01.lcsCallBell1 := slTmp[0];
		  				Frm_BTN01.lcsCallBell2 := slTmp[1];//�ñ���
			  			Frm_BTN01.lcsCallBell3 := slTmp[2];//���鵿
            end;
						Frm_BTN01.lbUpsoAreaName.Caption := sTmp;
						Frm_BTN01.edtUpsoAreaDetail.Caption := sName;

            if ss_Col =  0 then
            begin
              Frm_BTN01.edtXval.Caption := AdvStringGrid4.Cells[2, ss_Row -1];
              Frm_BTN01.edtYval.Caption := AdvStringGrid4.Cells[3, ss_Row -1];
            end;
            if ss_Col =  4 then
            begin
              Frm_BTN01.edtXval.Caption := AdvStringGrid4.Cells[6, ss_Row -1];
              Frm_BTN01.edtYval.Caption := AdvStringGrid4.Cells[7, ss_Row -1];
            end;
            if ss_Col =  8 then
            begin
              Frm_BTN01.edtXval.Caption := AdvStringGrid4.Cells[10, ss_Row -1];
              Frm_BTN01.edtYval.Caption := AdvStringGrid4.Cells[11, ss_Row -1];
            end;
          except
            on e: exception do
            begin
							Log('Proc_SendParent_ADV2 meoCallBell Error :' + E.Message, LOGDATAPATHFILE);
							Assert(False, 'Proc_SendParent_ADV2 meoCallBell Error :' + E.Message);
						end;
          end;
				end;
      end;
    finally
			if (lcsActiveEdit = 'meoCallBell') or (lcsActiveEdit = 'meoEndAreaCUT') or (lcsActiveEdit = 'meoStartAreaCUT') 
			or (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoStartAreaWOR11') then 
			else
      begin
				if ( lcsActiveEdit = 'meoStartArea' ) Or ( lcsActiveEdit = 'meoEndArea' ) then
				begin
					if ( GT_DISTANCE_ST = 1 ) And ( bEnter ) then
					begin
						Frm_Main.Frm_JON01N[Self.Tag].tmrDistance.Enabled := True;
					end;
				end else
				//������ ��� �߰� 20181112KHS
				if lcsActiveEdit = 'meoViaArea' then
				begin
					if GS_VIA_Tag = 1 then
					begin
						pJon01ViaLock := Frm_Main.Frm_JON01N[Self.Tag].BtnViaLock1;
					end
					else
					begin
						pJon01ViaLock := Frm_Main.Frm_JON01N[Self.Tag].BtnViaLock[GS_VIA_Tag];
					end;
					Frm_Main.Frm_JON01N[Self.Tag].ViaOk;
					pJon01ViaLock.Hint := 'F4)���';
					pJon01ViaLock.Tag  := 0;
					pJon01ViaLock.Down := True;
					pJon01ViaLock.ImageIndex := 1;
				end;
			end;

			FreeAndNil(slTmp);
    end;
  except
    on e: exception do
    begin
      Log('Proc_SendParent_ADV2 Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_SendParent_ADV2 Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid3KeyUp(Sender: TObject; var Key: Word;
	Shift: TShiftState);
var iRcIdx : integer;
    x_Lat, y_Lon : string;
begin
  SetDebugeWrite('JON30.AdvStringGrid3KeyUp');
  try
 		pnl_PoiAddress.Visible := False;
    if AdvStringGrid3.Cells[0,0] = '' then Exit;

    if ( ssCtrl in Shift) and ( Key = VK_UP ) then
    begin
      if AdvStringGrid1.Cells[0,1] <> '' then
      begin
        AdvStringGrid1.ShowSelection := True;
        AdvStringGrid2.ShowSelection := False;
        AdvStringGrid3.ShowSelection := False;
        AdvStringGrid1.SetFocus;

        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid1.GetRealRow;
          x_Lat := AdvStringGrid1.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid1.Cells[5, iRcIdx];
          if x_Lat = '' then exit;
					if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end else
      if AdvStringGrid2.Cells[0,0] <> '' then
      begin
        AdvStringGrid1.ShowSelection := False;
        AdvStringGrid2.ShowSelection := True;
        AdvStringGrid3.ShowSelection := False;
        AdvStringGrid2.SetFocus;

        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid2.GetRealRow;
          AdvStringGrid2.FocusCell(0,iRcIdx);
          x_Lat := AdvStringGrid2.Cells[1, iRcIdx];
          y_Lon := AdvStringGrid2.Cells[2, iRcIdx];

          if x_Lat = '' then exit;
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      A3UP_chk := False;
    end else
    if Key = VK_RETURN then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid3.GetRealRow;
      if iRcIdx > -1 then
      begin
        x_Lat := AdvStringGrid3.Cells[4, iRcIdx];
        y_Lon := AdvStringGrid3.Cells[5, iRcIdx];
        bEnter := False;
        Proc_SendParent_ADV3(iRcIdx + 1, True);
        pActiveEditFocus(True);
      end;
    end else
    if Key = VK_UP then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid3.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid3.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid3.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      if (AdvStringGrid3.GetRealRow = 0) and (A3UP_chk) then
      begin
        if AdvStringGrid1.Cells[0,1] <> '' then
        begin
          AdvStringGrid1.ShowSelection := True;
          AdvStringGrid2.ShowSelection := False;
          AdvStringGrid3.ShowSelection := False;
  //-        AdvStringGrid1.FocusCell(0,1);
          AdvStringGrid1.SetFocus;
        end else
        if AdvStringGrid2.Cells[0,0] <> '' then
        begin
          AdvStringGrid1.ShowSelection := False;
          AdvStringGrid2.ShowSelection := True;
          AdvStringGrid3.ShowSelection := False;
          AdvStringGrid2.FocusCell(0,0);
          AdvStringGrid2.SetFocus;
        end;
        A3UP_chk := False;
      end else
      if (AdvStringGrid3.GetRealRow = 0) then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid3.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid3.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
        A3UP_chk := True;
      end;
    end else
    if Key = VK_DOWN then
    begin
      A3UP_chk := False;
      Key := 0;
      iRcIdx := AdvStringGrid3.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid3.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid3.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key in [VK_Space] then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        pSetFocusStart;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        pSetFocusEnd;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        pSetFocusVia;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
        Frm_CUT011.meoStartAreaCUT.SetFocus
			else
			if lcsActiveEdit = 'meoEndAreaCUT' then
				Frm_CUT011.meoEndAreaCUT.SetFocus
			else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				Frm_WOR11.meoStartAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				Frm_WOR11.meoEndAreaWOR11.SetFocus;
			end	else
			if lcsActiveEdit = 'meoCallBell' then
				Frm_BTN01.meoCallBellArea.SetFocus;
		end;
  except
    on e: exception do
    begin
      Log('AdvStringGrid3KeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid3KeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid2DblClickCell(Sender: TObject; ARow,
	ACol: Integer);
var x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid2DblClickCell');
  try
    if ARow < 0 then Exit;
    if AdvStringGrid2.Cells[0,0] = '' then Exit;

    AdvStringGrid1.ShowSelection := False;
    AdvStringGrid2.ShowSelection := True;
    AdvStringGrid3.ShowSelection := False;
    AdvStringGrid2.SetFocus;
    AdvStringGrid2.FocusCell(ACol,ARow);

    if ACol In [1, 5, 9] then Exit;

    if ACol = 0 then
    begin
      x_Lat := AdvStringGrid2.Cells[2, ARow];
      y_Lon := AdvStringGrid2.Cells[3, ARow];
    end;
    if ACol = 4 then
    begin
      x_Lat := AdvStringGrid2.Cells[6, ARow];
      y_Lon := AdvStringGrid2.Cells[7, ARow];
    end;
    if ACol = 8 then
    begin
      x_Lat := AdvStringGrid2.Cells[10, ARow];
      y_Lon := AdvStringGrid2.Cells[11, ARow];
    end;

    bEnter := False;
    Proc_SendParent_ADV2(ARow + 1, ACol, True);
    pActiveEditFocus(True);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      if x_Lat = '' then Exit;
      if y_Lon = '' then Exit;
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except
    on e: exception do
    begin
      Log('AdvStringGrid2DblClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid2DblClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid2GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if ARow > 1 then
  begin
    if odd(ARow) then
    else
      VAlign := vtaTop;
  end;
end;

procedure TFrm_JON30.AdvStringGrid3DblClickCell(Sender: TObject; ARow,
	ACol: Integer);
var x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid3DblClickCell');
	try
    if ARow < 0 then Exit;
    if Trim(AdvStringGrid3.Cells[0, ARow]) = '' then Exit;

    AdvStringGrid1.ShowSelection := False;
    AdvStringGrid2.ShowSelection := False;
    AdvStringGrid3.ShowSelection := True;
    AdvStringGrid3.SetFocus;
  //-  AdvStringGrid3.FocusCell(ACol,ARow);

    x_Lat := AdvStringGrid3.Cells[4, ARow];
    y_Lon := AdvStringGrid3.Cells[5, ARow];

    bEnter := False;
    Proc_SendParent_ADV3(ARow + 1, True);

    if AdvStringGrid3.Cells[4, ARow] = '' then Exit;
    pActiveEditFocus(True);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      if x_Lat = '' then Exit;
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except
    on e: exception do
    begin
      Log('AdvStringGrid3DblClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid3DblClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid3GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
//  if GB_DARKMODE then
//  begin
//    if TAdvStringGrid(Sender).Cells[10, ARow] = 'D' then ABrush.Color := $00004D4D else
//    if TAdvStringGrid(Sender).Cells[10, ARow] = 'N' then ABrush.Color := $00234600;
//  end else
  begin
    if TAdvStringGrid(Sender).Cells[10, ARow] = 'D' then
    begin
      if GB_DARKMODE then AFont.Color := clBlack;
      ABrush.Color := $0080FFFF;
    end else
    if TAdvStringGrid(Sender).Cells[10, ARow] = 'N' then
    begin
      if GB_DARKMODE then AFont.Color := clBlack;
      ABrush.Color := $00B1DCCB;
    end;
  end;
end;

// ���̹� POI ���� ��
procedure TFrm_JON30.Proc_SendParent_ADV3(ss_Row: Integer; sTF: boolean);
var
	row3, row4 : string;
  COM_Word, COM_Word1 : string;
	AAdvGrid : TAdvStringGrid;
begin
	SetDebugeWrite('JON30.Proc_SendParent_ADV3');
	try
    try
			bMouseDownSelect := True;
			if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or 
				 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid3 else
			if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or 
				 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid6 else
			if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid9;
			
			if lcsActiveEdit = 'meoStartArea' then
			begin
				if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'E') And ( Not bClick ) then Exit;
				if AAdvGrid.Cells[10, ss_Row-1] = 'D' then Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'O'
																							else Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'N';

				Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);// cxGViewArea.DataController.Values[ss_Row - 1, 0];
				Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsSta4 := D_HightlightTXT(AAdvGrid.Cells[2, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsStaDocId := '';
				Frm_Main.Frm_JON01N[Self.Tag].sBHSAddr := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsStaCellSel := IntToStr(ss_Row -1);
				Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text := D_HightlightTXT(AAdvGrid.Cells[0, ss_Row -1]);
				SetDebugeWrite('JON30.lblStartAreaName.Text 14843 : ' + Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text);
				MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);

				row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text, '-');

				Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text := row3;
				Frm_Main.Frm_JON01N[Self.Tag].lcsConfAREA4 := row3;
				MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
																								else COM_Word1 := row4 + ' ' + row3;

				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				// ��POI�� �ڵ����� ������ ����
				if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;

				// ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
				if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

				if COM_Word = '' then
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 + COM_Word1
																				 else COM_Word := COM_Word1
				end else
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 + COM_Word;
				end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then
				begin
					Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text := fSetPOIChangeName(COM_Word);
				end else
				begin
					if GS_POIAName.Count <> 0 then
						Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text := fSetPOIChangeName(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text)
				end;

				// 20120805 ��ǥ ���� üũ LYB
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area4 := D_HightlightTXT(AAdvGrid.Cells[1, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area5 := D_HightlightTXT(AAdvGrid.Cells[2, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X     := AAdvGrid.Cells[4, ss_Row -1];
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y     := AAdvGrid.Cells[5, ss_Row -1];
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X := '';
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y := '';
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Gubun := '7';

				Frm_Main.Frm_JON01N[Self.Tag].StartListN := '3';  //����� ����Ʈ ������
				Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X;
				Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y;
				Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEXval := '';
				Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEYval := '';

				Frm_Main.Frm_JON01N[Self.Tag].lcsStaDebug := Frm_Main.Frm_JON01N[Self.Tag].lcsStaUrl + '��' +
																										 D_HightlightTXT(AAdvGrid.Cells[00, 1]) + '/' +
																										 D_HightlightTXT(AAdvGrid.Cells[01, 1]) + '/' +
																										 D_HightlightTXT(AAdvGrid.Cells[02, 1]) + '/' +
																										 D_HightlightTXT(AAdvGrid.Cells[04, 1]) + '/' +
																										 D_HightlightTXT(AAdvGrid.Cells[05, 1]) + '/' +
																										 D_HightlightTXT(AAdvGrid.Cells[10, 1]);
			end else
			if lcsActiveEdit = 'meoEndArea' then
      begin
				if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'S') And ( Not bClick ) then Exit;
				if AAdvGrid.Cells[10, ss_Row-1] = 'D' then Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES:= 'O'
																							else Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES:= 'N';

				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := D_HightlightTXT(AAdvGrid.Cells[2, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := '';
				Frm_Main.Frm_JON01N[Self.Tag].sBHEAddr := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := IntToStr(ss_Row -1);
				Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption := D_HightlightTXT(AAdvGrid.Cells[0, ss_Row -1]);

				row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption, '-');

				Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := row3;
				Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text := Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption + ' ' + Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption;
				SetDebugeWrite('JON30.cxReEndArea.Text 15003 : ' + Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text);
				MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text), clRed, [fsBold]);

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
																								else COM_Word1 := row4 + ' ' + row3;

				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				// ��POI�� �ڵ����� ������ ����
				if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;
				// ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
				if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

				if COM_Word = '' then
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 + COM_Word1
																				 else COM_Word := COM_Word1
				end else
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 + COM_Word;
				end;

				if (not GS_SEARCH_AUTO_NOTUSE) and (GS_SEARCH_AUTO_COMPLETE) then
				begin
					Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text := COM_Word;
				end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////

				Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := AAdvGrid.Cells[4, ss_Row -1];
				Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := AAdvGrid.Cells[5, ss_Row -1];
				Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X := '';
				Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y := '';

				Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X;
				Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y;
				Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := '';
				Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := '';

				Frm_Main.Frm_JON01N[Self.Tag].lcsEndDebug := Frm_Main.Frm_JON01N[Self.Tag].lcsEndUrl + '��' +
																										 D_HightlightTXT(AAdvGrid.Cells[00, 1]) + '/' +
																										 D_HightlightTXT(AAdvGrid.Cells[01, 1]) + '/' +
																										 D_HightlightTXT(AAdvGrid.Cells[02, 1]) + '/' +
																										 D_HightlightTXT(AAdvGrid.Cells[04, 1]) + '/' +
																										 D_HightlightTXT(AAdvGrid.Cells[05, 1]) + '/' +
																										 D_HightlightTXT(AAdvGrid.Cells[10, 1]);
			end else
			if lcsActiveEdit = 'meoViaArea' then
			begin
				Frm_Main.Frm_JON01N[Self.Tag].ViaSA1[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].ViaSA2[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].DocId[GS_VIA_Tag]  := '';
				Frm_Main.Frm_JON01N[Self.Tag].CellSel[GS_VIA_Tag] := IntToStr(ss_Row -1);
				if GS_VIA_Tag = 1 then
				begin
					Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption := D_HightlightTXT(AAdvGrid.Cells[0, ss_Row -1]);
					row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption, '-');
				end	else
				begin
					Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption := D_HightlightTXT(AAdvGrid.Cells[0, ss_Row -1]);
					row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption, '-');
				end;


				Frm_Main.Frm_JON01N[Self.Tag].ViaAreaDetail[GS_VIA_Tag] := row3;

				if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text
													else Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
																								else COM_Word1 := row4 + ' ' + row3;

				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				// ��POI�� �ڵ����� ������ ����
				if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;
				// ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
				if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

				if COM_Word = '' then
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]) + COM_Word1
																				 else COM_Word := COM_Word1
				end else
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]) + COM_Word;
				end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then
				begin
					if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text := COM_Word
														else Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text := COM_Word;

					Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := COM_Word;
				end;

				Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := AAdvGrid.Cells[4, ss_Row -1];
				Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] := AAdvGrid.Cells[5, ss_Row -1];
				ViaPos('', Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag], Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag]);
			end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
      begin
        Frm_CUT011.lcsSta1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
        Frm_CUT011.lcsSta2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
        Frm_CUT011.lcsSta3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
        Frm_CUT011.cxtSA1.Text := Frm_CUT011.lcsSta1;
        Frm_CUT011.cxtSA2.Text := Frm_CUT011.lcsSta2;
        Frm_CUT011.cxtSA3.Text := Frm_CUT011.lcsSta3;
				Frm_CUT011.lblStartAreaName.Caption := Frm_CUT011.lcsSta1 + ' ' + Frm_CUT011.lcsSta2 + ' ' + Frm_CUT011.lcsSta3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, UpperCase(Frm_CUT011.lblStartAreaName.Caption), '-');

        Frm_CUT011.cxtStartAreaDetail.Text := row3;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

        if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
                                                else COM_Word1 := row4 + ' ' + row3;

        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        if not GS_SEARCH_AUTO_DETILEPOI then // ��POI�� �ڵ����� ������ ����
          COM_Word := row4;

        if not GS_SEARCH_AUTO_MAINPOI then        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
            COM_Word := row3;

        if COM_Word = '' then
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_CUT011.lcsSta3 + COM_Word1
          else
            COM_Word := COM_Word1
        end else
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_CUT011.lcsSta3 + COM_Word;
        end;
        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then 
				begin
					Frm_CUT011.meoStartAreaCUT.Text := COM_Word;
				end;

        Frm_CUT011.cxtStartXval.Text := AAdvGrid.Cells[4, ss_Row -1];
        Frm_CUT011.cxtStartYval.Text := AAdvGrid.Cells[5, ss_Row -1];
      end else
      if lcsActiveEdit = 'meoEndAreaCUT' then
      begin
        Frm_CUT011.lcsEnd1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);// cxGViewArea.DataController.Values[ss_Row - 1, 0];
        Frm_CUT011.lcsEnd2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
        Frm_CUT011.lcsEnd3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
        Frm_CUT011.cxtEd1.Text := Frm_CUT011.lcsEnd1;
        Frm_CUT011.cxtEd2.Text := Frm_CUT011.lcsEnd2;
        Frm_CUT011.cxtEd3.Text := Frm_CUT011.lcsEnd3;
        Frm_CUT011.lblEndAreaName.Caption := Frm_CUT011.lcsEnd1 + ' ' + Frm_CUT011.lcsEnd2 + ' ' + Frm_CUT011.lcsEnd3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, UpperCase(Frm_CUT011.lblEndAreaName.Caption), '-');

        Frm_CUT011.cxtEndAreaDetail.Text := row3;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

        if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
                                                else COM_Word1 := row4 + ' ' + row3;

        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        if not GS_SEARCH_AUTO_DETILEPOI then // ��POI�� �ڵ����� ������ ����
          COM_Word := row4;

        if not GS_SEARCH_AUTO_MAINPOI then        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
            COM_Word := row3;

        if COM_Word = '' then
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_CUT011.lcsEnd3 + COM_Word1
          else
            COM_Word := COM_Word1
        end else
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_CUT011.lcsEnd3 + COM_Word;
        end;

				if (not GS_SEARCH_AUTO_NOTUSE) and (GS_SEARCH_AUTO_COMPLETE) then
				begin
					Frm_CUT011.meoEndAreaCUT.Text := COM_Word;
				end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        Frm_CUT011.cxtEndXval.Text := AAdvGrid.Cells[4, ss_Row -1];
        Frm_CUT011.cxtEndYval.Text := AAdvGrid.Cells[5, ss_Row -1];
			end else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				Frm_WOR11.lcsSta1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
				Frm_WOR11.lcsSta2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_WOR11.lcsSta3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
				Frm_WOR11.cxtSA1.Text := Frm_WOR11.lcsSta1;
				Frm_WOR11.cxtSA2.Text := Frm_WOR11.lcsSta2;
        Frm_WOR11.cxtSA3.Text := Frm_WOR11.lcsSta3;
        Frm_WOR11.lblStartAreaName.Caption := Frm_WOR11.lcsSta1 + ' ' + Frm_WOR11.lcsSta2 + ' ' + Frm_WOR11.lcsSta3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, UpperCase(Frm_WOR11.lblStartAreaName.Caption), '-');

        Frm_WOR11.cxtStartAreaDetail.Text := row3;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

        if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
                                                else COM_Word1 := row4 + ' ' + row3;

        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        if not GS_SEARCH_AUTO_DETILEPOI then // ��POI�� �ڵ����� ������ ����
          COM_Word := row4;

        if not GS_SEARCH_AUTO_MAINPOI then        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
            COM_Word := row3;

        if COM_Word = '' then
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_WOR11.lcsSta3 + COM_Word1
          else
            COM_Word := COM_Word1
        end else
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_WOR11.lcsSta3 + COM_Word;
        end;
        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then 
				begin
					Frm_WOR11.meoStartAreaWOR11.Text := COM_Word;
				end;

        Frm_WOR11.cxtStartXval.Text := AAdvGrid.Cells[4, ss_Row -1];
				Frm_WOR11.cxtStartYval.Text := AAdvGrid.Cells[5, ss_Row -1];
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				Frm_WOR11.lcsEnd1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);// cxGViewArea.DataController.Values[ss_Row - 1, 0];
				Frm_WOR11.lcsEnd2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
        Frm_WOR11.lcsEnd3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
        Frm_WOR11.cxtEd1.Text := Frm_WOR11.lcsEnd1;
        Frm_WOR11.cxtEd2.Text := Frm_WOR11.lcsEnd2;
        Frm_WOR11.cxtEd3.Text := Frm_WOR11.lcsEnd3;
        Frm_WOR11.lblEndAreaName.Caption := Frm_WOR11.lcsEnd1 + ' ' + Frm_WOR11.lcsEnd2 + ' ' + Frm_WOR11.lcsEnd3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, UpperCase(Frm_WOR11.lblEndAreaName.Caption), '-');

        Frm_WOR11.cxtEndAreaDetail.Text := row3;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

        if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
                                                else COM_Word1 := row4 + ' ' + row3;

        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        if not GS_SEARCH_AUTO_DETILEPOI then // ��POI�� �ڵ����� ������ ����
          COM_Word := row4;

        if not GS_SEARCH_AUTO_MAINPOI then        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
            COM_Word := row3;

        if COM_Word = '' then
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_WOR11.lcsEnd3 + COM_Word1
          else
            COM_Word := COM_Word1
        end else
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_WOR11.lcsEnd3 + COM_Word;
        end;

				if (not GS_SEARCH_AUTO_NOTUSE) and (GS_SEARCH_AUTO_COMPLETE) then
				begin
					Frm_WOR11.meoEndAreaWOR11.Text := COM_Word;
				end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        Frm_WOR11.cxtEndXval.Text := AAdvGrid.Cells[4, ss_Row -1];
				Frm_WOR11.cxtEndYval.Text := AAdvGrid.Cells[5, ss_Row -1];
			end else			
			if lcsActiveEdit = 'meoCallBell' then
			begin
				Frm_BTN01.lcsCallBell1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);// cxGViewArea.DataController.Values[ss_Row - 1, 0];
				Frm_BTN01.lcsCallBell2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_BTN01.lcsCallBell3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
				Frm_BTN01.lbUpsoAreaName.Caption := Frm_BTN01.lcsCallBell1 + ' ' + Frm_BTN01.lcsCallBell2 + ' ' + Frm_BTN01.lcsCallBell3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, UpperCase(Frm_BTN01.lbUpsoAreaName.Caption), '-');

				Frm_BTN01.edtUpsoAreaDetail.Caption := row3;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
                                                else COM_Word1 := row4 + ' ' + row3;

        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        if not GS_SEARCH_AUTO_DETILEPOI then // ��POI�� �ڵ����� ������ ����
          COM_Word := row4;

        if not GS_SEARCH_AUTO_MAINPOI then        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
            COM_Word := row3;

        if COM_Word = '' then
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
						COM_Word := Frm_BTN01.lcsCallBell3 + COM_Word1
          else
            COM_Word := COM_Word1
        end else
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
						COM_Word := Frm_BTN01.lcsCallBell3 + COM_Word;
        end;

				if (not GS_SEARCH_AUTO_NOTUSE) and (GS_SEARCH_AUTO_COMPLETE) then
				begin
					Frm_BTN01.meoCallBellArea.Text := COM_Word;
				end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				Frm_BTN01.edtXval.Caption := AAdvGrid.Cells[4, ss_Row -1];
				Frm_BTN01.edtYval.Caption := AAdvGrid.Cells[5, ss_Row -1];
				StartPos(Frm_BTN01.meoCallBellArea.Text, Frm_BTN01.edtXval.Caption, Frm_BTN01.edtYval.Caption)
			end;
		finally
			if (lcsActiveEdit = 'meoCallBell') or (lcsActiveEdit = 'meoEndAreaCUT') or (lcsActiveEdit = 'meoStartAreaCUT') 
			or (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoStartAreaWOR11')then 
			else
			begin
				if ( lcsActiveEdit = 'meoStartArea' ) Or ( lcsActiveEdit = 'meoEndArea' ) then
				begin
					if ( GT_DISTANCE_ST = 1 ) And ( bEnter ) then
					begin
						Frm_Main.Frm_JON01N[Self.Tag].tmrDistance.Enabled := True;
					end;
				end else
				//������ ��� �߰� 20181112KHS
				if lcsActiveEdit = 'meoViaArea' then
				begin
					if GS_VIA_Tag = 1 then
					begin
						pJon01ViaLock := Frm_Main.Frm_JON01N[Self.Tag].BtnViaLock1;
					end
					else
					begin
						pJon01ViaLock := Frm_Main.Frm_JON01N[Self.Tag].BtnViaLock[GS_VIA_Tag];
					end;
					Frm_Main.Frm_JON01N[Self.Tag].ViaOk;
					pJon01ViaLock.Hint := 'F4)���';
					pJon01ViaLock.Tag  := 0;
					pJon01ViaLock.Down := True;
					pJon01ViaLock.ImageIndex := 1;
				end;
			end;
    end;
	except
    on e: exception do
    begin
      Log('Proc_SendParent_ADV3 Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_SendParent_ADV3 Error :' + E.Message);
    end;
  end;
end;

// POI ���� �˻� ��  ���� �ڷ� ����
procedure TFrm_JON30.Proc_SendParent_ADV4(ss_Row: Integer; sTF: boolean);
var
  row3, row4 : string;
  COM_Word, COM_Word1 : string;
	AAdvGrid : TAdvStringGrid;
begin
	SetDebugeWrite('JON30.Proc_SendParent_ADV4');
	try
    try
      bMouseDownSelect := True;
			if (lcsActiveEdit = 'meoStartArea')    or (lcsActiveEdit = 'meoStartAreaCUT') or 
				 (lcsActiveEdit = 'meoStartAreaWOR11')                                  then AAdvGrid := AdvStringGrid1L else
			if (lcsActiveEdit = 'meoEndArea')      or (lcsActiveEdit = 'meoEndAreaCUT')   or 
				 (lcsActiveEdit = 'meoEndAreaWOR11') or (lcsActiveEdit = 'meoCallBell') then AAdvGrid := AdvStringGrid5L else
			if lcsActiveEdit = 'meoViaArea'                                           then AAdvGrid := AdvStringGrid8L;
			
			if lcsActiveEdit = 'meoStartArea' then
      begin
        if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'E') And ( Not bClick ) then Exit;
				Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'L';
				Frm_Main.Frm_JON01N[Self.Tag].lcsSta1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);// cxGViewArea.DataController.Values[ss_Row - 1, 0];
				Frm_Main.Frm_JON01N[Self.Tag].lcsSta2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsSta4 := D_HightlightTXT(AAdvGrid.Cells[2, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsStaDocId := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsStaDebug := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsStaCellSel := IntToStr(ss_Row -1);

				Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text := D_HightlightTXT(AAdvGrid.Cells[0, ss_Row -1]);
				SetDebugeWrite('JON30.lblStartAreaName.Text 15356 : ' + Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text);
				MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);

				row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_Main.Frm_JON01N[Self.Tag].lblStartAreaName.Text, '-');

				Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text := row3;
				Frm_Main.Frm_JON01N[Self.Tag].lcsConfAREA4 := row3;
				MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text), clRed, [fsBold]);

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
																								else COM_Word1 := row4 + ' ' + row3;

				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				// ��POI�� �ڵ����� ������ ����
				if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;

				// ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
				if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

				if COM_Word = '' then
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 + COM_Word1
																				 else COM_Word := COM_Word1
				end else
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].lcsSta3 + COM_Word;
				end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then
				begin
					if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text := fSetPOIChangeName(COM_Word);
				end else
				begin
					if GS_POIAName.Count <> 0 then
						Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text := fSetPOIChangeName(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text)
				end;

				// 20120805 ��ǥ ���� üũ LYB
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area4 := D_HightlightTXT(AAdvGrid.Cells[1, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Area5 := D_HightlightTXT(AAdvGrid.Cells[2, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X     := AAdvGrid.Cells[4, ss_Row -1];
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y     := AAdvGrid.Cells[5, ss_Row -1];
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_X := '';
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.GUIDE_Y := '';
				Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Gubun := '7';

				Frm_Main.Frm_JON01N[Self.Tag].StartListN := '3';  //����� ����Ʈ ������
				Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.X;
				Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONStaChkXY.Y;
				Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEXval := '';
				Frm_Main.Frm_JON01N[Self.Tag].gsStartGUIDEYval := '';
			end else
			if lcsActiveEdit = 'meoEndArea' then
			begin
				if ( GT_DISTANCE_ST = 1 ) And (Copy(sRanDom, 1, 1) = 'S') And ( Not bClick ) then Exit;
				Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DES := 'L';
				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsEnd4 := D_HightlightTXT(AAdvGrid.Cells[2, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsEndDebug := '';
				Frm_Main.Frm_JON01N[Self.Tag].lcsEndCellSel := IntToStr(ss_Row -1);

				Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption := D_HightlightTXT(AAdvGrid.Cells[0, ss_Row -1]);

				row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption, '-');

				Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption := row3;
				Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text := Frm_Main.Frm_JON01N[Self.Tag].lblEndAreaName.Caption + ' ' + Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption;
				SetDebugeWrite('JON30.cxReEndArea.Text 15511 : ' + Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea.Text);
				MarkAllWords(Frm_Main.Frm_JON01N[Self.Tag].cxReEndArea, UpperCase(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text), clRed, [fsBold]);

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
																								else COM_Word1 := row4 + ' ' + row3;

				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				// ��POI�� �ڵ����� ������ ����
				if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;
				// ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
				if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

				if COM_Word = '' then
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 + COM_Word1
																				 else COM_Word := COM_Word1
				end else
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3 + COM_Word;
				end;

				if (not GS_SEARCH_AUTO_NOTUSE) and (GS_SEARCH_AUTO_COMPLETE) then 
				begin
					if GS_SEARCH_AUTO_COMPLETE then 
					begin
						if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					end;
					Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text := COM_Word;
				end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////

				Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X := AAdvGrid.Cells[4, ss_Row -1];
				Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y := AAdvGrid.Cells[5, ss_Row -1];
				Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_X := '';
				Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.GUIDE_Y := '';

				Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.X;
				Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text := Frm_Main.Frm_JON01N[Self.Tag].gJONEndChkXY.Y;
				Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEXval := '';
				Frm_Main.Frm_JON01N[Self.Tag].gsEndGUIDEYval := '';
			end else
			if lcsActiveEdit = 'meoViaArea' then
			begin
				GS_Grid_VIA := 'L';
				Frm_Main.Frm_JON01N[Self.Tag].ViaSA1[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].ViaSA2[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].ViaSA3[GS_VIA_Tag] := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
				Frm_Main.Frm_JON01N[Self.Tag].DocId[GS_VIA_Tag]  := '';
				Frm_Main.Frm_JON01N[Self.Tag].CellSel[GS_VIA_Tag] := IntToStr(ss_Row -1);

				if GS_VIA_Tag = 1 then
				begin
					Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption := D_HightlightTXT(AAdvGrid.Cells[0, ss_Row -1]);
					row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName1.Caption, '-');
				end	else
				begin
					Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption := D_HightlightTXT(AAdvGrid.Cells[0, ss_Row -1]);
					row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_Main.Frm_JON01N[Self.Tag].cxViaAreaName[GS_VIA_Tag].Caption, '-');
				end;


				Frm_Main.Frm_JON01N[Self.Tag].ViaAreaDetail[GS_VIA_Tag] := row3;

				if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text
													else Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);
				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
																								else COM_Word1 := row4 + ' ' + row3;

				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				// ��POI�� �ڵ����� ������ ����
				if not GS_SEARCH_AUTO_DETILEPOI then COM_Word := row4;
				// ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
				if not GS_SEARCH_AUTO_MAINPOI then COM_Word := row3;

				if COM_Word = '' then
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]) + COM_Word1
																				 else COM_Word := COM_Word1
				end else
				begin
					// ������ �׻� POI�տ� ����
					if GS_SEARCH_AUTO_DONGNAME_ADD then COM_Word := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]) + COM_Word;
				end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then
				begin
					if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					if GS_VIA_Tag = 1 then Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text := COM_Word
														else Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text := COM_Word;
					Frm_Main.Frm_JON01N[Self.Tag].ViaAreaName[GS_VIA_Tag] := COM_Word;
				end;

				Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag] := AAdvGrid.Cells[4, ss_Row -1];
				Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag] := AAdvGrid.Cells[5, ss_Row -1];
				ViaPos('', Frm_Main.Frm_JON01N[Self.Tag].XposVia[GS_VIA_Tag], Frm_Main.Frm_JON01N[Self.Tag].YposVia[GS_VIA_Tag]);
			end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
      begin
        Frm_CUT011.lcsSta1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
        Frm_CUT011.lcsSta2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
        Frm_CUT011.lcsSta3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
        Frm_CUT011.cxtSA1.Text := Frm_CUT011.lcsSta1;
        Frm_CUT011.cxtSA2.Text := Frm_CUT011.lcsSta2;
        Frm_CUT011.cxtSA3.Text := Frm_CUT011.lcsSta3;
				Frm_CUT011.lblStartAreaName.Caption := Frm_CUT011.lcsSta1 + ' ' + Frm_CUT011.lcsSta2 + ' ' + Frm_CUT011.lcsSta3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_CUT011.lblStartAreaName.Caption, '-');

        Frm_CUT011.cxtStartAreaDetail.Text := row3;

        row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
                                                else COM_Word1 := row4 + ' ' + row3;

        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        if not GS_SEARCH_AUTO_DETILEPOI then // ��POI�� �ڵ����� ������ ����
          COM_Word := row4;

        if not GS_SEARCH_AUTO_MAINPOI then        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
            COM_Word := row3;

        if COM_Word = '' then
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_CUT011.lcsSta3 + COM_Word1
          else
            COM_Word := COM_Word1
        end else
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_CUT011.lcsSta3 + COM_Word;
        end;
        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then 
				begin
					if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					Frm_CUT011.meoStartAreaCUT.Text := COM_Word;
				end;

        Frm_CUT011.cxtStartXval.Text := AAdvGrid.Cells[4, ss_Row -1];
        Frm_CUT011.cxtStartYval.Text := AAdvGrid.Cells[5, ss_Row -1];
      end else
      if lcsActiveEdit = 'meoEndAreaCUT' then
      begin
        Frm_CUT011.lcsEnd1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
        Frm_CUT011.lcsEnd2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
        Frm_CUT011.lcsEnd3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
        Frm_CUT011.cxtEd1.Text := Frm_CUT011.lcsEnd1;
        Frm_CUT011.cxtEd2.Text := Frm_CUT011.lcsEnd2;
        Frm_CUT011.cxtEd3.Text := Frm_CUT011.lcsEnd3;
				Frm_CUT011.lblEndAreaName.Caption := Frm_CUT011.lcsEnd1 + ' ' + Frm_CUT011.lcsEnd2 + ' ' + Frm_CUT011.lcsEnd3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_CUT011.lblEndAreaName.Caption, '-');

				Frm_CUT011.cxtEndAreaDetail.Text := row3;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
																								else COM_Word1 := row4 + ' ' + row3;

				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        if not GS_SEARCH_AUTO_DETILEPOI then // ��POI�� �ڵ����� ������ ����
          COM_Word := row4;

        if not GS_SEARCH_AUTO_MAINPOI then        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
            COM_Word := row3;

        if COM_Word = '' then
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_CUT011.lcsEnd3 + COM_Word1
          else
            COM_Word := COM_Word1
        end else
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_CUT011.lcsEnd3 + COM_Word;
        end;

				if (not GS_SEARCH_AUTO_NOTUSE) and (GS_SEARCH_AUTO_COMPLETE) then
				begin
					if GS_SEARCH_AUTO_COMPLETE then
					begin
						if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					end;
					Frm_CUT011.meoEndAreaCUT.Text := COM_Word;
				end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        Frm_CUT011.cxtEndXval.Text := AAdvGrid.Cells[4, ss_Row -1];
        Frm_CUT011.cxtEndYval.Text := AAdvGrid.Cells[5, ss_Row -1];
			end else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				Frm_WOR11.lcsSta1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);
				Frm_WOR11.lcsSta2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_WOR11.lcsSta3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
				Frm_WOR11.cxtSA1.Text := Frm_WOR11.lcsSta1;
        Frm_WOR11.cxtSA2.Text := Frm_WOR11.lcsSta2;
        Frm_WOR11.cxtSA3.Text := Frm_WOR11.lcsSta3;
				Frm_WOR11.lblStartAreaName.Caption := Frm_WOR11.lcsSta1 + ' ' + Frm_WOR11.lcsSta2 + ' ' + Frm_WOR11.lcsSta3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_WOR11.lblStartAreaName.Caption, '-');

        Frm_WOR11.cxtStartAreaDetail.Text := row3;

        row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
                                                else COM_Word1 := row4 + ' ' + row3;

        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        if not GS_SEARCH_AUTO_DETILEPOI then // ��POI�� �ڵ����� ������ ����
          COM_Word := row4;

        if not GS_SEARCH_AUTO_MAINPOI then        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
            COM_Word := row3;

        if COM_Word = '' then
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_WOR11.lcsSta3 + COM_Word1
          else
            COM_Word := COM_Word1
        end else
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_WOR11.lcsSta3 + COM_Word;
        end;
        ////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				if GS_SEARCH_AUTO_COMPLETE then 
				begin
					if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					Frm_WOR11.meoStartAreaWOR11.Text := COM_Word;
				end;

        Frm_WOR11.cxtStartXval.Text := AAdvGrid.Cells[4, ss_Row -1];
				Frm_WOR11.cxtStartYval.Text := AAdvGrid.Cells[5, ss_Row -1];
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				Frm_WOR11.lcsEnd1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);// cxGViewArea.DataController.Values[ss_Row - 1, 0];
        Frm_WOR11.lcsEnd2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
        Frm_WOR11.lcsEnd3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
        Frm_WOR11.cxtEd1.Text := Frm_WOR11.lcsEnd1;
        Frm_WOR11.cxtEd2.Text := Frm_WOR11.lcsEnd2;
        Frm_WOR11.cxtEd3.Text := Frm_WOR11.lcsEnd3;
				Frm_WOR11.lblEndAreaName.Caption := Frm_WOR11.lcsEnd1 + ' ' + Frm_WOR11.lcsEnd2 + ' ' + Frm_WOR11.lcsEnd3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_WOR11.lblEndAreaName.Caption, '-');

				Frm_WOR11.cxtEndAreaDetail.Text := row3;

        row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
																								else COM_Word1 := row4 + ' ' + row3;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        if not GS_SEARCH_AUTO_DETILEPOI then // ��POI�� �ڵ����� ������ ����
          COM_Word := row4;

        if not GS_SEARCH_AUTO_MAINPOI then        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
            COM_Word := row3;

        if COM_Word = '' then
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_WOR11.lcsEnd3 + COM_Word1
          else
            COM_Word := COM_Word1
        end else
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
            COM_Word := Frm_WOR11.lcsEnd3 + COM_Word;
        end;

				if (not GS_SEARCH_AUTO_NOTUSE) and (GS_SEARCH_AUTO_COMPLETE) then
				begin
					if GS_SEARCH_AUTO_COMPLETE then
					begin
						if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					end;
					Frm_WOR11.meoEndAreaWOR11.Text := COM_Word;
				end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        Frm_WOR11.cxtEndXval.Text := AAdvGrid.Cells[4, ss_Row -1];
				Frm_WOR11.cxtEndYval.Text := AAdvGrid.Cells[5, ss_Row -1];
			end else			
			if lcsActiveEdit = 'meoCallBell' then
			begin
				Frm_BTN01.lcsCallBell1 := D_HightlightTXT(AAdvGrid.Cells[6, ss_Row -1]);// cxGViewArea.DataController.Values[ss_Row - 1, 0];
				Frm_BTN01.lcsCallBell2 := D_HightlightTXT(AAdvGrid.Cells[7, ss_Row -1]);
				Frm_BTN01.lcsCallBell3 := D_HightlightTXT(AAdvGrid.Cells[8, ss_Row -1]);
				Frm_BTN01.lbUpsoAreaName.Caption := Frm_BTN01.lcsCallBell1 + ' ' + Frm_BTN01.lcsCallBell2 + ' ' + Frm_BTN01.lcsCallBell3;

				row3 := func_MakeRow3(AAdvGrid, ss_Row, Frm_BTN01.lbUpsoAreaName.Caption, '-');

				Frm_BTN01.edtUpsoAreaDetail.Caption := row3;

				row4 := func_MakeRow4(AAdvGrid, ss_Row);

				if (Pos(row4, row3) > 0) or (row4 = '') then COM_Word1 := row3
                                                else COM_Word1 := row4 + ' ' + row3;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
        if not GS_SEARCH_AUTO_DETILEPOI then // ��POI�� �ڵ����� ������ ����
          COM_Word := row4;

        if not GS_SEARCH_AUTO_MAINPOI then        // ��POI�� ������� ����POI�� �ڵ��ϼ��� ������� ����
            COM_Word := row3;

        if COM_Word = '' then
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
						COM_Word := Frm_BTN01.lcsCallBell3 + COM_Word1
					else
            COM_Word := COM_Word1
        end else
        begin
          if GS_SEARCH_AUTO_DONGNAME_ADD then  // ������ �׻� POI�տ� ����
						COM_Word := Frm_BTN01.lcsCallBell3 + COM_Word;
        end;

				if (not GS_SEARCH_AUTO_NOTUSE) and (GS_SEARCH_AUTO_COMPLETE) then
				begin
					if GS_SEARCH_AUTO_COMPLETE then
					begin
						if pos(' ', COM_Word) > 0 then COM_Word := FastReplace(COM_Word,' ','(',False) + ')';
					end;
					Frm_BTN01.meoCallBellArea.Text := COM_Word;
				end;
				////////////////////////////////////////�ɼ�/////////////////////////////////////////////////////
				Frm_BTN01.edtXval.Caption := AAdvGrid.Cells[4, ss_Row -1];
				Frm_BTN01.edtYval.Caption := AAdvGrid.Cells[5, ss_Row -1];
				StartPos(Frm_BTN01.meoCallBellArea.Text, Frm_BTN01.edtXval.Caption, Frm_BTN01.edtYval.Caption)
			end;
    finally

    end;
  except
    on e: exception do
		begin
      Log('Proc_SendParent_ADV4 Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_SendParent_ADV4 Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON30.M_HightlightTXT(tText, wText: String; iColor : Integer) : string;
var
  wString : TStringList;
  tLen, i, j : integer;
  str_arr : array of string;
  mWord : string;
  clr : string;
begin
  try
    Result := tText;

    if ( Trim(tText) = '' ) Or ( Trim(wText) = '' ) then Exit;
    if ( Length(tText) = 1 ) And ( Length(wText) = 1 ) then Exit;

    if iColor = 1 then clr := '#'+IntToHex($001E8EFF, 6) else
    if iColor = 2 then clr := '#'+IntToHex($00FE0000, 6) else
    if iColor = 3 then clr := '#'+IntToHex($00009300, 6) else
    if iColor = 4 then clr := '#FF0000';

//  Ǯ�ܾ�� ����� Grid ����� ���� ��� �ܾ �Ⱥ��̴� �������� �ѱ��ں��� ����  2018.05.10 LYB
//    if ( Trim(tText) = Trim(wText) ) then
//    begin
//      Result := '<B><FONT Color = "'+clr+'">' + tText + '</FONT></B>';
//      Exit;
//    end;

    wString := TStringList.Create;
    try
      wString.Clear;

      //Ÿ�ٹ��ڿ� ���ھ� �ڸ�
      if Length(tText) >= Length(wText) then
        tLen := Length(tText)
      else
        tLen := Length(wText);

      for i := 0 to tLen - 1 do
      begin
        wString.Add(Copy(tText, i+1 , 1));
      end;

      setlength(str_arr, tLen); //Ÿ�� ���ڼ� ��ŭ �迭����

      for i := 0 to wString.Count -1 do
      begin
        for j := 1 to Length(wText)  do
        begin
          if wText[j] = '' then Exit;
          if wString[i] = wText[j] then
          begin
            if i = 0 then
            begin
              if wString[i+1] = wText[j+1] then
              begin
                str_arr[i] := '<B><FONT Color = "'+clr+'">' + wString[i] + '</FONT></B>';
                Break;
              end else
              begin
                str_arr[i] := wString[i];
                Break;
              end
            end else
            begin
              if (i + 1 > wString.Count -1) or (j + 1 > Length(wText)) then
              begin
                if (wString[i-1] = wText[j-1]) and (j-1 > 0) then
                begin
                  str_arr[i] := '<B><FONT Color = "'+clr+'">' + wString[i] + '</FONT></B>';
                  Break;
                end else
                begin
                  str_arr[i] := wString[i];
                  Break;
                end;
              end else
              if (i - 1 < 0) or (j - 1 < 0) then
              begin
                if wString[i+1] = wText[j+1] then
                begin
                  str_arr[i] := '<B><FONT Color = "'+clr+'">' + wString[i] + '</FONT></B>';
                  Break;
                end else
                begin
                  str_arr[i] := wString[i];
                  Break;
                end;
              end else
              begin
                if wString[i+1] = wText[j+1] then
                begin
                  str_arr[i] := '<B><FONT Color = "'+clr+'">' + wString[i] + '</FONT></B>';
                  Break;
                end else
                if (wString[i-1] = wText[j-1]) and (j-1 > 0) then
                begin
                  str_arr[i] := '<B><FONT Color = "'+clr+'">' + wString[i] + '</FONT></B>';
                  Break;
                end
                else str_arr[i] := wString[i];
              end;
            end;
            Break;
          end
          else str_arr[i] := wString[i];
        end;
        mWord := mWord + str_arr[i];
      end;
    finally
      FreeAndNil(wString);
    end;

    Result := mWord;
  except
    on e: exception do
    begin
      Log('M_HightlightTXT Error tTexttText, wText :' + tText + ',' + wText + ',' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'M_HightlightTXT Error tText, wText :' + tText + ',' + wText + ',' + E.Message);
    end;
  end;
end;

function TFrm_JON30.N_HightlightTXT(tText : String) : string;
var aWord : string;
begin
  aWord := tText;
  if Pos('>', aWord) > 0 then
    aWord := StringReplace(aWord, ' ','&nbsp;', [rfReplaceAll]);   // ���� ������ �� ������ ó��
  aWord := StringReplace(aWord, '<b>', '<B><FONT Color = "#1E8EFF">', [rfReplaceAll]);
  aWord := StringReplace(aWord, '</b>', '</FONT></B>', [rfReplaceAll]);

  Result := aWord;
end;

function TFrm_JON30.D_HightlightTXT(HTEXT: String): String;
var aWord : string;
begin
  try
    aWord := StringReplace(HTEXT, '<b>', '', [rfReplaceAll]);
    aWord := StringReplace(aWord, '<B>', '', [rfReplaceAll]);
    aWord := StringReplace(aWord, '<FONT Color = "#1E8EFF">', '', [rfReplaceAll]);
    aWord := StringReplace(aWord, '<FONT Color = "#FE0000">', '', [rfReplaceAll]);
    aWord := StringReplace(aWord, '</FONT>', '', [rfReplaceAll]);
    aWord := StringReplace(aWord, '</B>', '', [rfReplaceAll]);
    aWord := StringReplace(aWord, '</b>', '', [rfReplaceAll]);

    aWord := StringReplace(aWord, '<!HS>', '', [rfReplaceAll]);
    aWord := StringReplace(aWord, '<!HE>', '', [rfReplaceAll]);
    aWord := StringReplace(aWord, '&nbsp;', ' ', [rfReplaceAll]);
    Result := aWord;
  except on e: exception do
    begin
      Log('D_HightlightTXT Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'D_HightlightTXT Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON30.M_ParseTXT(tText : String) : string;
Var clr, sTmp : String;
begin
  clr := '#'+IntToHex($001E8EFF, 6);

  sTmp := tText;
  if Pos('>', sTmp) > 0 then
    sTmp := StringReplace(sTmp, ' ','&nbsp;', [rfReplaceAll]);   // ���� ������ �� ������ ó��
  sTmp := StringReplace(sTmp, '<!HS>','<B><FONT Color = "'+clr+'">', [rfReplaceAll]);
  sTmp := StringReplace(sTmp, '<!HE>','</B></FONT>', [rfReplaceAll]);

  Result := sTmp;
end;

function TFrm_JON30.AddrKeyWord_Separate_N2(s: string;
  var sl: TStringList): boolean;
begin
  try
    case length(WideString(s)) of
      //1 : //--------------- �˻����� ����.
      2 : begin
            sl.Add( s );
            slR_11[6].Add('');
          end;
      3 : begin
            sl.Add( s );
            sl.Add( Copy(WideString(s),1,2) );
            slR_11[6].Add('');
            slR_11[6].Add( Copy(WideString(s),3,20) );
          end;
      4 : begin
            sl.Add( s );
            sl.Add( Copy(WideString(s),1,3) );
            sl.Add( Copy(WideString(s),1,2) );
            slR_11[6].Add('');
            slR_11[6].Add( Copy(WideString(s),4,20) );
            slR_11[6].Add( Copy(WideString(s),3,20) );
          end;
      5 : begin
            sl.Add( s );
            sl.Add( Copy(WideString(s),1,4) );
            sl.Add( Copy(WideString(s),1,3) );
            sl.Add( Copy(WideString(s),1,2) );
            slR_11[6].Add('');
            slR_11[6].Add( Copy(WideString(s),5,20) );
            slR_11[6].Add( Copy(WideString(s),4,20) );
            slR_11[6].Add( Copy(WideString(s),3,20) );
          end;
      6 : begin
            sl.Add( s );
            sl.Add( Copy(WideString(s),1,5) );
            sl.Add( Copy(WideString(s),1,4) );
            sl.Add( Copy(WideString(s),1,3) );
            sl.Add( Copy(WideString(s),1,2) );
            slR_11[6].Add('');
            slR_11[6].Add( Copy(WideString(s),6,20) );
            slR_11[6].Add( Copy(WideString(s),5,20) );
            slR_11[6].Add( Copy(WideString(s),4,20) );
            slR_11[6].Add( Copy(WideString(s),3,20) );
          end;
    else begin
            sl.Add( s );
            sl.Add( Copy(WideString(s),1,6) );
            sl.Add( Copy(WideString(s),1,5) );
            sl.Add( Copy(WideString(s),1,4) );
            sl.Add( Copy(WideString(s),1,3) );
            sl.Add( Copy(WideString(s),1,2) );
            slR_11[6].Add('');
            slR_11[6].Add( Copy(WideString(s),7,20) );
            slR_11[6].Add( Copy(WideString(s),6,20) );
            slR_11[6].Add( Copy(WideString(s),5,20) );
            slR_11[6].Add( Copy(WideString(s),4,20) );
            slR_11[6].Add( Copy(WideString(s),3,20) );
          end;
    end;
  except on e: exception do
    begin
      Log('AddrKeyWord_Separate_N2 Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AddrKeyWord_Separate_N2 Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON30.Search_Address_Front(sWord: AnsiString; var sOutAddr : string): string;
var
  i, j, k, iL, iWC, iKWCnt, ij, ia, iLoWSco : integer;
  iFindKey, iFindKey2, idx, iWKey, iFKey, iLidx, iRCnt, iConvKey : integer;
  sChar, sParentKey, sCharStr, sCharStr2, sLocCnt, sCharMinus, stmp, sRlt : string;

  sTruncRltStr, sTruncRltStr_2 : string;
  slR1, slR2, slR3 : TStringList;

  sgCity : String;

  iFK_1, iFK_3, iAry1, iAry2, iAry3, iAry4, iFKRlt, i_KW_LC : integer;
  iFK_2, iKm : Currency;

  pr : PADDRSTE2;
  ps : PADDRSTEE;
  pw : PADDRWARD;
  pc : PADDRCITY;
  bPass, bAgree : boolean;
  iStKW, iAx : integer;
begin
  SetDebugeWrite('JON30.Search_Address_Front');
  try
    // 1���ڴ� �˻����� ����.
    if length(WideString(sWord)) < 2 then Exit;

    slR1 := TStringList.Create;
    slR2 := TStringList.Create;
    slR3 := TStringList.Create;
    try
        i_KW_LC := 1;
        i := 1;

        slR2.Clear;
        slR3.Clear;

        slR_11[5].Clear;
        slR_11[5].Sorted := True;
        slR_11[6].Clear;
        slR_11[6].Sorted := False;
        slR_11[7].Clear;
        slR_11[7].Sorted := False;

        sTmp  := '';
        iAry1 := 0;
        sTruncRltStr  := '';
        sTruncRltStr_2:= '';
        f_AddArr_Init;           // �ּҰ�� ������ �迭���� �ʱ�ȭ.

        // ��/�� �˻�...
        slR1.Clear;
        slR1.Add( Copy(WideString(sWord),1,2) );

        for i := (slR1.Count-1) downto 0 do
        begin
          if slR1[i] <> '' then
          begin
            //===========================
            // Address Table Search.
            idx := HashCity.IndexOf( slR1[i] );
            //===========================
            if idx > -1 then
            begin
              pc := PADDRCITY( HashCity.Objects[idx] );

              sTruncRltStr_2 := slR1[i];   // �˻���� �ּҺи�����..
              sTruncRltStr := slR1[i];   // �˻���� �ּҺи�����..

              slR2.AddObject('1' + sTruncRltStr +'/'+ slR1[i], TObject(50));    // �� �˻��ÿ� ��/�� ��ġ�� ���� �ο�.

              iAry2 := f_AddArr_Find(pc.sOffset);
              if iAry2 < 0 then
              begin
                //===========================
                // DataFile Search.
                Seek( mAdd, StrToIntDef( pc.sOffset, 0 )-1 );
                Read( mAdd, madr );
                //===========================                    function TForm1.DistCalc(sx, sy, ex, ey : double) : double ;
                if Length(madr.sA_FindKey) > 0 then
                begin        // 037291558/127055991  : ������ ������ǥ.
                  iKm   := StrToCurr( DistCalc(Area_CenterLat,Area_CenterLon, madr.sA_X, madr.sA_Y) );
                  iFK_2 := 900 - iKm;
                  //iFK_1 := 69;

                  //iFK_1 := 84;
                  iFK_1   := Search_Address_Km_AddScore(iKm);     // �Ÿ� �� ���� �ο�.
                  sTruncRltStr_2 := slR1[i];

                  f_AddArr_Add(iFK_1,i+1,Trunc(iKm),Format('%7f',[iFK_2]),madr.sA_FindKey,madr.sA_City,madr.sA_Ward,madr.sA_Ward2,madr.sA_Street,madr.sA_Stree2,'','','','',madr.sA_X,madr.sA_Y);
                  //f_AddArr_CompDelete(madr.sA_City_cd);   // �õ� �ڵ�� ��ġ���� �ʴ� �����ʹ� ����(�ǹ̾���)
                  sgCity := madr.sA_City;
                end;
              end else
              begin
                //gPAddr[iAry2].iSteeMatchPos:= i+1;               // ��Ī�� ������ ��ġ�� ����.
                f_AddArr_Update(3, iAry2);                       // ���� ī��Ʈ.
                //f_AddArr_CompDelete(gPAddr[iAry2].sA_City_cd);   // �õ� �ڵ�� ��ġ���� �ʴ� �����ʹ� ����(�ǹ̾���)
              end;
            end;
          end;
        end;
        { �õ� ��. ++++++++++++++++++++++++++++++++++++++++++++++++++}

        // ��/��/�� ==> '��/��' �� �˻�..
        if f_AddArr_Count > 0 then
        begin
          sTmp := Copy(WideString(sWord),3,30);    // ��/�� ��Ī�� �� ���� �˻��� ����.
        end else
          sTmp := sWord;

        slR1.Clear;  slR_11[6].Clear;
        AddrKeyWord_Separate_N2(sTmp, slR1);  // Ű���� �и�.

        // 20131205  LYB
        if Copy(WideString(sWord), 1, 2) = '�λ�' then
        begin
          slR1.Add(sWord);  // �λ� �λ�����û ��ȸ�� �ʵ�.. �λ��� ��� �õ� ��Ī�ÿ��� ��ü �ܾ� �˻��� ó��  20131204 LYB
          slR_11[6].Add( Copy(WideString(sWord),3,20) );
       end;

        bAgree := False;
        iKWCnt := length(WideString(sTmp));
        bPass  := False;
        i := 0;  ia := -1;
        while (i <= slR1.Count-1) do
        begin
          if not bPass then
          begin
            if slR1[i] <> '' then
            begin
              //===========================
              // Address Table Search.
              idx := HashWard.IndexOf( slR1[i] );
              //===========================
              if idx > -1 then
              begin
                ia := i;
                bPass := True;
                pw := PADDRWARD( HashWard.Objects[idx] );
                for j := 0 to High(pw.sOffset) do
                begin
                    if Length(sTruncRltStr_2) <= Length(slR1[i]) then
                      sTruncRltStr_2 := slR1[i];   // �˻���� �ּҺи�����..

                    //===========================
                    // DataFile Search.
                    Seek( mAdd, StrToIntDef( pw.sOffset[j], 0 )-1 );
                    Read( mAdd, madr );
                    //===========================

                    //iAry2 := slR_11[6].IndexOfObject(TObject( StrToIntDef( pw.sOffset[j], 0) ));
                    iAry2 := f_AddArr_Find(pw.sOffset[j]);
                    if iAry2 < 0 then
                    begin
                        if Length(madr.sA_FindKey) > 0 then
                        begin
                          // 037291558/127055991  : ������ ������ǥ.
                          iKm   := StrToCurr( DistCalc(Area_CenterLat,Area_CenterLon, madr.sA_X, madr.sA_Y) );
                          iFK_2 := 900 - iKm;
                          iFK_1 := 70;
                          if (madr.sA_Ward = slR1[i]) then
                          begin
                            iFK_1 := 85;
                            bAgree:= True;
                            slR2.AddObject('2' + madr.sA_Ward +'/'+ slR1[i], TObject(50));    // �� �˻��ÿ� ��/�� ��ġ�� ���� �ο�.
                          end else
                          if (Copy(WideString(madr.sA_Ward), 1, length(WideString(slR1[i]))) = slR1[i]) then
                          begin
                            iFK_1 := 80;
                            if Length(sTruncRltStr) <= Length(slR1[i]) then
                              sTruncRltStr := slR1[i];
                            if (iKWCnt <= 6) and (length(WideString(slR1[i])) >= 2) then
                            begin
                              sChar := Copy(WideString(madr.sA_Ward), length(WideString(slR1[i])),1);
                              if (sChar = '��') or (sChar = '��') or (sChar = '��') then
                              begin
                                if PosEx(Copy(WideString(slR1[i]),1,2),sTmp,2) > 2 then   // '���̱����̵�' �Է½� �� ���� �ȵǵ�����.
                                  iFK_1 := 85
                                else begin
                                  iFK_1 := 90;
                                  sTruncRltStr_2 := slR1[i];
                                end;
                              end else
                                iFK_1 := 85;
                            end;
                            slR2.AddObject('2' + madr.sA_Ward +'/'+ slR1[i], TObject(38));    // �� �˻��ÿ� ��/�� ��ġ�� ���� �ο�.
                          end else
                          begin
                            if Length(sTruncRltStr) <= Length(slR1[i]) then
                              sTruncRltStr := slR1[i];   // �˻���� �ּҺи�����..

                            slR2.AddObject('2' + madr.sA_Ward +'/'+ slR1[i], TObject(35));    // �� �˻��ÿ� ��/�� ��ġ�� ���� �ο�.
                          end;

                          iFK_1 := Search_Address_Km_AddScore(iKm);     // �Ÿ� �� ���� �ο�.

                          f_AddArr_Add(iFK_1,i+1,Trunc(iKm),Format('%7f',[iFK_2]),madr.sA_FindKey,madr.sA_City,madr.sA_Ward,madr.sA_Ward2,madr.sA_Street,madr.sA_Stree2,'','','','',madr.sA_X,madr.sA_Y);

                          // 20131205  LYB
                          if sgCity <> '' then
                            f_AddArr_CompDelete(sgCity);   // �õ� �ڵ�� ��ġ���� �ʴ� �����ʹ� ����(�ǹ̾���)
  //                          f_AddArr_CompDelete(madr.sA_City);   // �õ� �ڵ�� ��ġ���� �ʴ� �����ʹ� ����(�ǹ̾���)
                        end;
                    end  else
                    begin
                      //gPAddr[iAry2].iSteeMatchPos:= i+1;               // ��Ī�� ������ ��ġ�� ����.
                      f_AddArr_Update(3, iAry2);                       // ���� ī��Ʈ.
                      //f_AddArr_CompDelete(gPAddr[iAry2].sA_City_cd);   // �õ� �ڵ�� ��ġ���� �ʴ� �����ʹ� ����(�ǹ̾���)
                    end;
                end;
                //if bPass then
                  break;
              end;
            end;
          end;
          inc(i);
        end;
        {=========================================================================================}

        // ��/��/�� ==> '��' �� �˻�..
        if ia > -1 then
        begin
          if bAgree then
          begin
            sTmp := slR_11[6][ia];
            // �� ��Ī�� Ǯ��Ī �ƴϸ� 2������ ��ȸ �Ѵ�.(�κи�Ī ���� ����,, Ǯ����,, )
            slR1.Clear;  slR_11[6].Clear;
            AddrKeyWord_Separate_N2(sTmp, slR1);  // Ű���� �и�.
          end
          else begin
            sTmp := slR_11[6][ia];
            // �� ��Ī�� Ǯ��Ī �ƴϸ� 2������ ��ȸ �Ѵ�.(�κи�Ī ���� ����,, Ǯ����,, )
            AddrKeyWord_Separate_N2(sTmp, slR1);  // Ű���� �и�.
          end;
        end;
        // ��/��/�� ==> '��' �� �˻�..
        bAgree:= False;
        bPass := False;
        i := 0;     ia := -1;
        while (i <= slR1.Count-1) do
        begin
          if not bPass then
          begin
            if slR1[i] <> '' then
            begin
              //===========================
              // Address Table Search.
              idx := HashWar2.IndexOf( slR1[i] );
              //===========================
              if idx > -1 then
              begin
                ia := i;
                bPass     := True;
                sCharStr  := slR1[i];
                pw := PADDRWARD( HashWar2.Objects[idx] );
                for j := 0 to High(pw.sOffset) do
                begin
                    if Length(sTruncRltStr_2) <= Length(slR1[i]) then
                      sTruncRltStr_2 := slR1[i];   // �˻���� �ּҺи�����..

                    iAry2 := f_AddArr_Find(pw.sOffset[j]);
                    if iAry2 < 0 then
                    begin
                        //===========================
                        // DataFile Search.
                        Seek( mAdd, StrToIntDef( pw.sOffset[j], 0 )-1 );
                        Read( mAdd, madr );
                        //===========================
                        // 037291558/127055991  : ������ ������ǥ.
                        iKm   := StrToCurr( DistCalc(Area_CenterLat,Area_CenterLon, madr.sA_X, madr.sA_Y) );
                        iFK_2 := 900 - iKm;
                        iFK_1 := 70;
                        //bPass := False;
                        if (madr.sA_Ward2 = slR1[i]) then
                        begin
                          iFK_1 := 85;
                          bAgree:= True;
                          slR2.AddObject('3' + madr.sA_Ward2 +'/'+ slR1[i], TObject(50));    // �� �˻��ÿ� ��/�� ��ġ�� ���� �ο�.
                        end else
                        if (Copy(WideString(madr.sA_Ward2),1, length(WideString(slR1[i]))) = slR1[i]) then
                        begin
                          iFK_1 := 80;
                          if Length(sTruncRltStr) <= Length(slR1[i]) then
                            sTruncRltStr := slR1[i];
                          if (iKWCnt <= 6) and (length(WideString(slR1[i])) >= 2) then
                          begin
                            sChar := Copy(WideString(madr.sA_Ward2), length(WideString(slR1[i])),1);
                            if (sChar = '��') or (sChar = '��') or (sChar = '��') then
                            begin
                              if PosEx(Copy(WideString(slR1[i]),1,2),sTmp,2) > 2 then   // '���̱����̵�' �Է½� �� ���� �ȵǵ�����.
                                iFK_1 := 85
                              else begin
                                iFK_1 := 90;
                                sTruncRltStr_2 := slR1[i];
                              end;
                            end else
                              iFK_1 := 85;
                          end;

                          slR2.AddObject('3' + madr.sA_Ward2 +'/'+ slR1[i], TObject(38));    // �� �˻��ÿ� ��/�� ��ġ�� ���� �ο�.

                          bPass := True;
                        end else
                        begin
                          if Length(sTruncRltStr) <= Length(slR1[i]) then
                            sTruncRltStr := slR1[i];   // �˻���� �ּҺи�����..

                          slR2.AddObject('3' + madr.sA_Ward2 +'/'+ slR1[i], TObject(35));    // �� �˻��ÿ� ��/�� ��ġ�� ���� �ο�.
                        end;

                        iFK_1 := Search_Address_Km_AddScore(iKm);     // �Ÿ� �� ���� �ο�.

                        f_AddArr_Add(iFK_1,i+1,Trunc(iKm),Format('%7f',[iFK_2]),madr.sA_FindKey,madr.sA_City,madr.sA_Ward,madr.sA_Ward2,madr.sA_Street,madr.sA_Stree2,'','','','',madr.sA_X,madr.sA_Y);

                          // 20131205  LYB
                        if sgCity <> '' then
                          f_AddArr_CompDelete(sgCity);   // �õ� �ڵ�� ��ġ���� �ʴ� �����ʹ� ����(�ǹ̾���)
  //                        f_AddArr_CompDelete(madr.sA_City);   // �õ� �ڵ�� ��ġ���� �ʴ� �����ʹ� ����(�ǹ̾���)
                    end else
                    begin
                      //gPAddr[iAry2].iSteeMatchPos:= i+1;               // ��Ī�� ������ ��ġ�� ����.
                      f_AddArr_Update(3, iAry2);                         // ���� ī��Ʈ.
                      //f_AddArr_CompDelete(gPAddr[iAry2].sA_City_cd);   // �õ� �ڵ�� ��ġ���� �ʴ� �����ʹ� ����(�ǹ̾���)
                    end;
                end;
                //if bPass then
                  break;
              end;
            end;
          end;
          inc(i);
        end;

        if ia > -1 then
        begin
          if bAgree then
          begin
            sTmp := slR_11[6][ia];   // ���� �� Ű���� ���� ���� ����.
            // �� ��Ī�� Ǯ��Ī �ƴϸ� 2������ ��ȸ �Ѵ�.(�κи�Ī ���� ����,, Ǯ����,, )
            slR1.Clear;  slR_11[6].Clear;
            AddrKeyWord_Separate_N2(sTmp, slR1);  // Ű���� �и�.
          end
          else begin
            sTmp := slR_11[6][ia];
            // �� ��Ī�� Ǯ��Ī �ƴϸ� 2������ ��ȸ �Ѵ�.(�κи�Ī ���� ����,, Ǯ����,, )
            AddrKeyWord_Separate_N2(sTmp, slR1);  // Ű���� �и�.
          end;
        end;
        {=========================================================================================}

        // ��/��/�� �˻�...
        bPass := False;
        i := 0;     ia := -1;
        if slR1.Count > 0 then
        begin
          for i := 0 to (slR1.Count-1) do
          begin
            if slR1[i] <> '' then
            begin
              //===========================
              // Address Table Search.
              idx := HashStee.IndexOf( slR1[i] );
              //===========================
              if idx > -1 then
              begin
                ia := i;
                bPass := True;
                ps := PADDRSTEE( HashStee.Objects[idx] );
                for j := 0 to High(ps.sOffset) do
                begin
                  if slR1.Count = 1 then
                    sTruncRltStr_2 := slR1[i]    // �˻���� �ּҺи�����..
                  else
                    if Length(sTruncRltStr_2) <= Length(slR1[i]) then
                      sTruncRltStr_2 := slR1[i];   // �˻���� �ּҺи�����..

                  iConvKey := slR_11[5].Count;
                  iAry1    := slR_11[5].AddObject( ps.sOffset[j], TObject( StrToIntDef( ps.sOffset[j], 0) ) );
                  if i = 0 then bPass := True;
                  if (iConvKey = slR_11[5].Count) or (bPass) then
                  begin
                    //iAry2 := slR_11[6].IndexOfObject(TObject( StrToIntDef( ps.sOffset[j], 0) ));
                    iAry2 := f_AddArr_Find(ps.sOffset[j]);
                    if iAry2 < 0 then
                    begin
                      //===========================
                      // DataFile Search.
                      Seek( mAdd, StrToIntDef( ps.sOffset[j], 0 )-1 );
                      Read( mAdd, madr );
                      //===========================                    function TForm1.DistCalc(sx, sy, ex, ey : double) : double ;
                      if Length(madr.sA_FindKey) > 0 then
                      begin
                        if (madr.sA_Street = slR1[i]) then
                        begin
                          iFK_1 := 85;
                          bAgree:= True;
                          slR2.AddObject('3' + madr.sA_Street +'/'+ slR1[i], TObject(50));    // �� �˻��ÿ� ��/�� ��ġ�� ���� �ο�.
                        end else
                        if (Copy(WideString(madr.sA_Street),1, length(WideString(slR1[i]))) = slR1[i]) then
                        begin
                          iFK_1 := 80;
                          if Length(sTruncRltStr) <= Length(slR1[i]) then
                            sTruncRltStr := slR1[i];
                          if (iKWCnt <= 6) and (length(WideString(slR1[i])) >= 2) then
                          begin
                            sChar := Copy(WideString(madr.sA_Street), length(WideString(slR1[i])),1);
                            if (sChar = '��') or (sChar = '��') or (sChar = '��') then
                            begin
                              if PosEx(Copy(WideString(slR1[i]),1,2),sTmp,2) > 2 then   // '���̱����̵�' �Է½� �� ���� �ȵǵ�����.
                                iFK_1 := 85
                              else begin
                                iFK_1 := 90;
                                sTruncRltStr_2 := slR1[i];
                              end;
                            end else
                              iFK_1 := 85;
                          end;

                          slR2.AddObject('3' + madr.sA_Street +'/'+ slR1[i], TObject(38));    // �� �˻��ÿ� ��/�� ��ġ�� ���� �ο�.

                          bPass := True;
                        end else
                        begin
                          if Length(sTruncRltStr) <= Length(slR1[i]) then
                            sTruncRltStr := slR1[i];   // �˻���� �ּҺи�����..

                          slR2.AddObject('3' + madr.sA_Street +'/'+ slR1[i], TObject(35));    // �� �˻��ÿ� ��/�� ��ġ�� ���� �ο�.
                        end;

                        iKm   := StrToCurr( DistCalc(Area_CenterLat,Area_CenterLon, madr.sA_X, madr.sA_Y) );
                        iFK_2 := 900 - iKm;
                        iFK_1 := 86;
                        bPass := False;

                        iFK_1 := Search_Address_Km_AddScore(iKm);     // �Ÿ� �� ���� �ο�.
                        iAry4 := str2integer(madr.sA_Street);
                        if (iAry4 > 0) and (iAry4 < 10) then
                        begin
                          //iAry3 := 10 - iAry3;
                          iAry3 := 0;
                        end
                        else begin // ��,���� ==> -1 �Ѿ��.
                          iAry3 := 5;
                        end;
                        iFK_1 := iFK_1 + iAry3;

                        if StringMatches(madr.sA_Street, slR1[i]) then
                        begin
                          iFK_1 := iFK_1 + 20;
                          sTruncRltStr := slR1[i];
                          if length(WideString(sWord)) = ((pos(WideString(slR1[i]), WideString(sWord)) -1) + length(WideString(slR1[i]))) then begin
                            gbSearWordDong := True;     // ���� ���� ��ġ.
                            gbSearWordLee  := True;     // ���� ���� ��ġ.
                          end;
                        end else
                        if (i = 0) and ( Copy(WideString(madr.sA_Street), 1, Length(WideString(slR1[i]))) = slR1[i] ) then
                        begin
                          if iAry4 > 0 then  iFK_1 := iFK_1 + 10;
                          if Length(sTruncRltStr) <= Length(slR1[i]) then
                            sTruncRltStr := slR1[i];
                        end else
                        if Copy(WideString(madr.sA_Street), 1, Length(WideString(slR1[i]))) = slR1[i] then
                        begin
                          if iAry4 > 0 then  iFK_1 := iFK_1 + 3;
                          if Length(sTruncRltStr) <= Length(slR1[i]) then
                            sTruncRltStr := slR1[i];
                        end else
                        begin
                          if Length(sTruncRltStr) <= Length(slR1[i]) then
                            sTruncRltStr := slR1[i];
                        end;

                        f_AddArr_Add(iFK_1,i+1,Trunc(iKm),Format('%7f',[iFK_2]),madr.sA_FindKey,madr.sA_City,madr.sA_Ward,madr.sA_Ward2,madr.sA_Street,madr.sA_Stree2,'','','','',madr.sA_X,madr.sA_Y);
                      end;
                    end else
                    begin
                      gPAddr[iAry2].iSteeMatchPos:= i+1;               // ��Ī�� ������ ��ġ�� ����.
                      if Copy(WideString(gPAddr[iAry2].sA_Street), 1, Length(WideString(slR1[i]))) = slR1[i] then begin
                        iFK_3 := Length(WideString(slR1[i])) + 2;
                        f_AddArr_Update(iFK_3, iAry2);                       // ���� ī��Ʈ.
                      end else
                        f_AddArr_Update(3, iAry2);                       // ���� ī��Ʈ.

                      if Length(sTruncRltStr) <= Length(slR1[i]) then
                        sTruncRltStr := slR1[i];
                    end;
                  end else
                  begin
                    if Copy(WideString(ps.sStreet[j]),1,Length(WideString(slR1[i]))) = slR1[i] then begin
                      if f_AddArr_Count < 10 then
                      begin
                        //===========================
                        // DataFile Search.
                        Seek( mAdd, StrToIntDef( ps.sOffset[j], 0 )-1 );
                        Read( mAdd, madr );
                        //===========================                    function TForm1.DistCalc(sx, sy, ex, ey : double) : double ;
                        if Length(madr.sA_FindKey) > 0 then
                        begin        // 037291558/127055991  : ������ ������ǥ.
                          iKm   := StrToCurr( DistCalc(Area_CenterLat,Area_CenterLon, madr.sA_X, madr.sA_Y) );
                          iFK_2 := 900 - iKm;

                          iFK_1 := Search_Address_Km_AddScore(iKm);     // �Ÿ� �� ���� �ο�.
                          iAry3 := str2integer(madr.sA_Street);
                          if (iAry3 > 0) and (iAry3 < 10) then
                          begin
                            //iAry3 := 10 - iAry3;
                            iAry3 := 0;
                          end
                          else begin // ��,���� ==> -1 �Ѿ��.
                            iAry3 := 5;
                          end;
                          iFK_1 := iFK_1 + iAry3;

                          if StringMatches(madr.sA_Street, slR1[i]) then
                          begin
                            iFK_1 := iFK_1 + 20;
                            sTruncRltStr := slR1[i];
                            if length(WideString(sWord)) = ((pos(WideString(slR1[i]), WideString(sWord)) -1) + length(WideString(slR1[i]))) then begin
                              gbSearWordDong := True;     // ���� ���� ��ġ.
                              gbSearWordLee  := True;     // ���� ���� ��ġ.
                            end;
                          end else
                          if (i = 0) and ( Copy(WideString(madr.sA_Street), 1, Length(WideString(slR1[i]))) = slR1[i] ) then
                          begin
                            if iAry4 > 0 then  iFK_1 := iFK_1 + 10;
                            if Length(sTruncRltStr) <= Length(slR1[i]) then
                              sTruncRltStr := slR1[i];
                          end else
                          if Copy(WideString(madr.sA_Street), 1, Length(WideString(slR1[i]))) = slR1[i] then
                          begin
                            if iAry4 > 0 then  iFK_1 := iFK_1 + 3;
                            if Length(sTruncRltStr) <= Length(slR1[i]) then
                              sTruncRltStr := slR1[i];
                          end else
                          begin
                            if Length(sTruncRltStr) <= Length(slR1[i]) then
                              sTruncRltStr := slR1[i];
                          end;

                          f_AddArr_Add(iFK_1,i+1,Trunc(iKm),Format('%7f',[iFK_2]),madr.sA_FindKey,madr.sA_City,madr.sA_Ward,madr.sA_Ward2,madr.sA_Street,madr.sA_Stree2,'','','','',madr.sA_X,madr.sA_Y);
                        end;
                      end;
                    end;
                  end;
                  bPass := False;
                end;
                if bPass then break;
              end;
              if ia > -1 then
              begin
                sTmp := slR_11[6][ia];   // ���� �� Ű���� ���� ���� ����.
                if ( sTmp <> '' ) And ( slR3.IndexOf(stmp) < 0 ) then slR3.Add(sTmp);
              end;
            end;
          end;
        end;

        // =========================================================================================  20130614 LYB �߰�
        for i := 0 to slR3.Count - 1 do
        begin
          AddrKeyWord_Separate_N2(slR3.Strings[i], slR1);  // Ű���� �и�.
        end;

        // �� �˻�...
        bPass := False;
        i := 0;     ia := -1;
        if slR1.Count > 0 then
        begin
          for i := 0 to (slR1.Count-1) do
          begin
            if slR1[i] <> '' then
            begin
              //===========================
              // Address Table Search.
              idx := HashSte2.IndexOf( slR1[i] );
              //===========================
              if idx > -1 then
              begin
                bPass := True;
                pr := PADDRSTE2( HashSte2.Objects[idx] );
                for j := 0 to High(pr.sOffset) do
                begin
                  if slR1.Count = 1 then
                    sTruncRltStr_2 := slR1[i]    // �˻���� �ּҺи�����..
                  else
                  if Length(sTruncRltStr_2) <= Length(slR1[i]) then
                    sTruncRltStr_2 := slR1[i];   // �˻���� �ּҺи�����..

                  iAry2 := f_AddArr_Find(pr.sOffset[j]);
                  if iAry2 < 0 then
                  begin
                    //===========================
                    // DataFile Search.
                    Seek( mAdd, StrToIntDef( pr.sOffset[j], 0 )-1 );
                    Read( mAdd, madr );
                    //===========================                    function TForm1.DistCalc(sx, sy, ex, ey : double) : double ;
                    if Length(madr.sA_FindKey) > 0 then
                    begin        // 037291558/127055991  : ������ ������ǥ.
                      iKm   := StrToCurr( DistCalc(Area_CenterLat,Area_CenterLon, madr.sA_X, madr.sA_Y) );
                      iFK_2 := 900 - iKm;
                      iFK_1 := 86;
                      bPass := False;

                      iFK_1 := Search_Address_Km_AddScore(iKm);     // �Ÿ� �� ���� �ο�.
                      iAry4 := str2integer(madr.sA_Stree2);
                      if (iAry4 > 0) and (iAry4 < 10) then
                      begin
                        //iAry3 := 10 - iAry3;
                        iAry3 := 0;
                      end
                      else begin // ��,���� ==> -1 �Ѿ��.
                        iAry3 := 5;
                      end;
                      iFK_1 := iFK_1 + iAry3;

                      if StringMatches(madr.sA_Stree2, slR1[i]) then
                      begin
                        iFK_1 := iFK_1 + 20;
                        sTruncRltStr := slR1[i];
    //                    if length(WideString(sWord)) = ((pos(WideString(slR1[i]), WideString(sWord)) -1) + length(WideString(slR1[i]))) then begin
    //                      gbSearWordDong := True;     // ���� ���� ��ġ.
    //                      gbSearWordLee  := True;     // ���� ���� ��ġ.
    //                    end;
                      end else
                      if (i = 0) and ( Copy(WideString(madr.sA_Stree2), 1, Length(WideString(slR1[i]))) = slR1[i] ) then
                      begin
                        if iAry4 > 0 then  iFK_1 := iFK_1 + 10;
                        if Length(sTruncRltStr) <= Length(slR1[i]) then
                          sTruncRltStr := slR1[i];
                      end else
                      if Copy(WideString(madr.sA_Stree2), 1, Length(WideString(slR1[i]))) = slR1[i] then
                      begin
                        if iAry4 > 0 then  iFK_1 := iFK_1 + 3;
                        if Length(sTruncRltStr) <= Length(slR1[i]) then
                          sTruncRltStr := slR1[i];
                      end else
                      begin
                        if Length(sTruncRltStr) <= Length(slR1[i]) then
                          sTruncRltStr := slR1[i];
                      end;

                      f_AddArr_Add(iFK_1,i+1,Trunc(iKm),Format('%7f',[iFK_2]),madr.sA_FindKey,madr.sA_City,madr.sA_Ward,madr.sA_Ward2,madr.sA_Street,madr.sA_Stree2,'','','','',madr.sA_X,madr.sA_Y);
                    end;
                  end else
                  begin
                    gPAddr[iAry2].iSteeMatchPos:= i+1;               // ��Ī�� ������ ��ġ�� ����.
                    if Copy(WideString(gPAddr[iAry2].sA_Stree2), 1, Length(WideString(slR1[i]))) = slR1[i] then begin
                      iFK_3 := Length(WideString(slR1[i])) + 2;
                      f_AddArr_Update(iFK_3, iAry2);                       // ���� ī��Ʈ.
                    end else
                      f_AddArr_Update(3, iAry2);                       // ���� ī��Ʈ.

                    if Length(sTruncRltStr) <= Length(slR1[i]) then
                      sTruncRltStr := slR1[i];
                  end;
                end;
                if bPass then break;
              end;
            end;
          end;
        end;

        // ��/��, ��/��/�� ��Ī�� ���� ���� �ο�.
        //slR2.AddObject('2' + madr.sA_Ward, TObject(3));    // �� �˻��ÿ� ��/�� ��ġ�� ���� �ο�.
        for i := 0 to slR2.Count -1 do
        begin
          iFK_1 := integer( slR2.Objects[i] );
          sTmp  := Copy(slR2[i], 1, 1);
          if sTmp = '1' then
          begin
            iFK_3 := FastPos(slR2[i], '/', Length(slR2[i]), 1, 1);
            sTmp  := Copy(slR2[i], 2, iFK_3-2);
            f_AddArr_CitySame_Update(iFK_1, sTmp)
          end else
          if sTmp = '2' then
          begin
            iFK_3 := FastPos(slR2[i], '/', Length(slR2[i]), 1, 1);
            sTmp  := Copy(slR2[i], 2, iFK_3-2);
            f_AddArr_WardSame_Update(iFK_1, sTmp)
          end else
          begin
            iFK_3 := FastPos(slR2[i], '/', Length(slR2[i]), 1, 1);
            sTmp  := Copy(slR2[i], 2, iFK_3-2);
            f_AddArr_Ward_2_Same_Update(iFK_1, sTmp);
          end;

          if i = 0 then
            sOutAddr := Copy(slR2[i], iFK_3 +1, 30)
          else
          begin
            if sOutAddr <> Copy(slR2[i], iFK_3 +1, 30) then                 // 20130614  LYB ����
              sOutAddr := sOutAddr + Copy(slR2[i], iFK_3 +1, 30);
          end;
        end;
    finally
      FreeAndNil(slR1);
      FreeAndNil(slR2);
      FreeAndNil(slR3);
    end;
    Result := sTruncRltStr_2;
  except on e: exception do
    begin
      Log('Search_Address_Front Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Search_Address_Front Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid2ClickCell(Sender: TObject; ARow,
  ACol: Integer);
var x_Lat, y_Lon, sTmp : string;
begin
  SetDebugeWrite('JON30.AdvStringGrid2ClickCell');
  try
		pnl_PoiAddress.Visible := False;
    if ARow < 0 then Exit;
    if AdvStringGrid2.Cells[0,0] = '' then Exit;

    AdvStringGrid1.ShowSelection := False;
    AdvStringGrid2.ShowSelection := True;
    AdvStringGrid3.ShowSelection := False;
    AdvStringGrid2.SetFocus;
    AdvStringGrid2.FocusCell(ACol,ARow);

    if ACol In [0, 1] then
    begin
      x_Lat := AdvStringGrid2.Cells[2, ARow];
      y_Lon := AdvStringGrid2.Cells[3, ARow];
    end;
    if ACol In [4, 5] then
    begin
      x_Lat := AdvStringGrid2.Cells[6, ARow];
      y_Lon := AdvStringGrid2.Cells[7, ARow];
    end;
    if ACol In [8, 9] then
    begin
      x_Lat := AdvStringGrid2.Cells[10, ARow];
      y_Lon := AdvStringGrid2.Cells[11, ARow];
    end;

    if x_Lat = '' then Exit;
    if y_Lon = '' then Exit;

    if ( ACol In [1, 5, 9] )  then
    begin
      iChkPoiSvrTag := 1;

      sTmp := D_HightlightTXT(AdvStringGrid2.Cells[ACol - 1, ARow]);
      if Pos('[', sTmp) > 0 then
      begin
         sSAPoiGubun := 'S';
      end else
      begin
         sSAPoiAddr := UrlEncode(UTF8Encode(trim(sTmp)));
         sOrSAPoiAddr := trim(sTmp);
         sSAPoiGubun := 'A';
      end;

      sSApoiCenterLat := x_Lat;
      sSApoiCenterLon := y_Lon;
      TT3.Enabled := True;
      Exit;
    end;

    bClick := True;
    bEnter := True;
    Proc_SendParent_ADV2(ARow + 1, ACol, True);
    pActiveEditFocus(False);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid2ClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid2ClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid3ClickCell(Sender: TObject; ARow,
  ACol: Integer);
var x_Lat, y_Lon : string;
begin
  SetDebugeWrite('JON30.AdvStringGrid3ClickCell');
  try
    if ARow < 0 then Exit;
    if Trim(AdvStringGrid3.Cells[0, ARow]) = '' then Exit;

    if GI_ALL_Sch = 0 then
    begin
      if AdvStringGRid3.Cells[10, ARow] = 'D' then
      begin
//        if Not GB_DARKMODE then
        begin
          AdvStringGRid3.Color := $0080FFFF;
          AdvStringGRid3.SelectionColor := $0046FFFF;
        end;
      end else
      if AdvStringGRid3.Cells[10, ARow] = 'N' then
      begin
//        if Not GB_DARKMODE then
        begin
          AdvStringGRid3.Color := $00B1DCCB;
          AdvStringGRid3.SelectionColor := $0088CAAF;
        end;
      end;
    end else
    begin
      if GS_PORTAL_SEL = 'D' then
      begin
//        if Not GB_DARKMODE then
        begin
          AdvStringGRid3.Color := $0080FFFF;
          AdvStringGRid3.SelectionColor := $0046FFFF;
        end;
      end else
      if GS_PORTAL_SEL = 'N' then
      begin
//        if Not GB_DARKMODE then
        begin
          AdvStringGRid3.Color := $00B1DCCB;
          AdvStringGRid3.SelectionColor := $0088CAAF;
        end;
      end;
    end;

		AdvStringGrid1.ShowSelection := False;
		AdvStringGrid2.ShowSelection := False;
		AdvStringGrid3.ShowSelection := True;
		AdvStringGrid3.SetFocus;

    try
      noSearch := True;
      bClick := True;
      bEnter := True;
      Proc_SendParent_ADV3(ARow + 1, True);
      pActiveEditFocus(False);
    except
      noSearch := False;
    end;

		if AdvStringGrid3.Cells[12, ARow] <> '' then
		begin
			pnl_PoiAddress.Visible := True;
			lb_PoiAddress.Text := AdvStringGrid3.Cells[12, ARow];
		end else pnl_PoiAddress.Visible := False;

		if not chkUseMiniMap.checked then
		begin
			if AdvStringGrid3.Cells[12, ARow] <> '' then
				Self.Height := (frm_Size) + pnl_PoiAddress.Height
			else Self.Height := frm_Size;
		end;

    if GS_MAP_AREA_AUTOSHOW then
    begin
      x_Lat := AdvStringGrid3.Cells[4, ARow];
      y_Lon := AdvStringGrid3.Cells[5, ARow];
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid3ClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid3ClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.btnAllSchClick(Sender: TObject);
begin
	GS_POISCH_ALL := btnAllSch.Down;

	sPreSearchWord := '';
	gmap_forword := '';
	gKWComp := '';
	tmThread.Interval := 1;
	tmThread.Enabled := True;

	if GS_POISCH_ALL then
	begin
    btnAllSch.LookAndFeel.SkinName := 'Office2010Silver';
	end else
	begin
    btnAllSch.LookAndFeel.SkinName := 'Sharp';
	end;
end;

procedure TFrm_JON30.btnClose1Click(Sender: TObject);
begin
  if Not Assigned(Frm_JON30S) Or (Frm_JON30S = Nil) then Frm_JON30S := TFrm_JON30S.Create(Nil);
  Frm_JON30S.Show;
end;

function TFrm_JON30.proc_WGSToBessel(bPOI : boolean; sCity, sX, sY: string; var sRCity, sKm : string) : string;
var
  sPOI : string;
  i : integer;
begin
  try
    Result := '';

    if sCity = '����Ư����' then          sPOI := '����'
    else if sCity = '��⵵' then         sPOI := '���'
    else if sCity = '��õ������' then     sPOI := '��õ'
    else if sCity = '��û����' then       sPOI := '�泲'
    else if fSejongCheck(sCity) then      sPOI := '�泲' //����Ư����ġ��
    else if sCity = '��û�ϵ�' then       sPOI := '���'
		else if sCity = '������' then         sPOI := '����'
    else if sCity = '���󳲵�' then       sPOI := '����'
    else if sCity = '����ϵ�' then       sPOI := '����'
    else if sCity = '��󳲵�' then       sPOI := '�泲'
    else if sCity = '���ϵ�' then       sPOI := '���'
    else if sCity = '����Ư����ġ��' then sPOI := '����'
    else if sCity = '����������' then     sPOI := '����'
    else if sCity = '�뱸������' then     sPOI := '�뱸'
    else if sCity = '���ֱ�����' then     sPOI := '����'
    else if sCity = '�λ걤����' then     sPOI := '�λ�'
    else if sCity = '��걤����' then     sPOI := '���'
    else sPOI := sCity;

    sRCity := sPOI;
		i := 0;
  except on e: exception do
    begin
      Log('proc_WGSToBessel Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'proc_WGSToBessel Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON30.Search_Address_Km_AddScore(iKm: Currency): integer;
begin
  if (iKm >= 0.00) and (iKm <= 10.99) then          Result := 115
  else if (iKm >= 11.00) and (iKm <= 20.99) then    Result := 107
  else if (iKm >= 21.00) and (iKm <= 30.99) then    Result := 101
  else if (iKm >= 31.00) and (iKm <= 40.99) then    Result := 97
  else if (iKm >= 41.00) and (iKm <= 55.99) then    Result := 93
  else if (iKm >= 56.00) and (iKm <= 72.99) then    Result := 88
  else if (iKm >= 73.00) and (iKm <= 92.99) then    Result := 83
  else if (iKm >= 93.00) and (iKm <= 110.99) then   Result := 79
  else                                        Result := 70;
end;

function TFrm_JON30.Search_Area_Km_AddScore(iKm: integer): integer;
begin
  if (iKm >= 0) and (iKm <= 10) then          Result := 45
  else if (iKm >= 11) and (iKm <= 20) then    Result := 35
  else if (iKm >= 21) and (iKm <= 30) then    Result := 30
  else if (iKm >= 31) and (iKm <= 40) then    Result := 25
  else if (iKm >= 41) and (iKm <= 55) then    Result := 20
  else if (iKm >= 56) and (iKm <= 72) then    Result := 15
  else if (iKm >= 73) and (iKm <= 92) then    Result := 10
  else if (iKm >= 93) and (iKm <= 110) then   Result := 5
  else                                        Result := 0;
end;

procedure TFrm_JON30.AdvStringGrid4ClickCell(Sender: TObject; ARow,
	ACol: Integer);
var x_Lat, y_Lon, sTmp : string;
begin
  SetDebugeWrite('JON30.AdvStringGrid4ClickCell');
  try
		pnl_PoiAddress.Visible := False;
    if ARow < 0 then Exit;
    if Trim(AdvStringGrid4.Cells[0, ARow]) = '' then Exit;

    AdvStringGrid5.ShowSelection := False;
    AdvStringGrid4.ShowSelection := True;
    AdvStringGrid6.ShowSelection := False;
    AdvStringGrid4.SetFocus;
    AdvStringGrid4.FocusCell(ACol,ARow);

    if ACol In [0, 1] then
    begin
      x_Lat := AdvStringGrid4.Cells[2, ARow];
      y_Lon := AdvStringGrid4.Cells[3, ARow];
    end;
    if ACol In [4, 5] then
    begin
      x_Lat := AdvStringGrid4.Cells[6, ARow];
      y_Lon := AdvStringGrid4.Cells[7, ARow];
    end;
    if ACol In [8, 9] then
    begin
      x_Lat := AdvStringGrid4.Cells[10, ARow];
      y_Lon := AdvStringGrid4.Cells[11, ARow];
    end;

    if x_Lat = '' then Exit;
    if y_Lon = '' then Exit;

    if ( ACol In [1, 5, 9] )  then
    begin
      iChkPoiSvrTag := 1;

      sTmp := D_HightlightTXT(AdvStringGrid4.Cells[ACol - 1, ARow]);
      if Pos('[', sTmp) > 0 then
      begin
         sSAPoiGubun := 'S';
      end else
      begin
         sSAPoiAddr := UrlEncode(UTF8Encode(trim(sTmp)));
         sOrSAPoiAddr := Trim(sTmp);
         sSAPoiGubun := 'A';
      end;

      sSApoiCenterLat := x_Lat;
      sSApoiCenterLon := y_Lon;
      TT3.Enabled := True;
      Exit;
    end;

    bClick := True;
    bEnter := True;
    Proc_SendParent_ADV2(ARow + 1, ACol, True);
    pActiveEditFocus(False);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid4ClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid4ClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid4DblClickCell(Sender: TObject; ARow,
	ACol: Integer);
var x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid4DblClickCell');
  try
    if ARow < 0 then Exit;
    if Trim(AdvStringGrid4.Cells[0, ARow]) = '' then Exit;

    AdvStringGrid5.ShowSelection := False;
    AdvStringGrid4.ShowSelection := True;
    AdvStringGrid6.ShowSelection := False;
    AdvStringGrid4.SetFocus;
    AdvStringGrid4.FocusCell(ACol,ARow);

    if ACol = 0 then
    begin
      x_Lat := AdvStringGrid4.Cells[2, ARow];
      y_Lon := AdvStringGrid4.Cells[3, ARow];
    end;
    if ACol = 4 then
    begin
      x_Lat := AdvStringGrid4.Cells[6, ARow];
      y_Lon := AdvStringGrid4.Cells[7, ARow];
    end;
    if ACol = 8 then
    begin
      x_Lat := AdvStringGrid4.Cells[10, ARow];
      y_Lon := AdvStringGrid4.Cells[11, ARow];
    end;

    bEnter := False;
    Proc_SendParent_ADV2(ARow + 1, ACol, True);
    pActiveEditFocus(True);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      if x_Lat = '' then Exit;
      if y_Lon = '' then Exit;
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid4DblClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid4DblClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid4KeyUp(Sender: TObject; var Key: Word;
	Shift: TShiftState);
var
	iRcIdx, iCcIdx: Integer;
  x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid4KeyUp');
	try
		pnl_PoiAddress.Visible := False;
    if AdvStringGrid4.Cells[0,0] = '' then Exit;
    iRcIdx := AdvStringGrid4.GetRealRow;
    iCcIdx := AdvStringGrid4.GetRealCol;

    if ( ssCtrl in Shift) and ( Key = VK_Down ) then
    begin
      if AdvStringGrid5.Cells[0,1] <> '' then
      begin
        AdvStringGrid5.ShowSelection := True;
        AdvStringGrid4.ShowSelection := False;
        AdvStringGrid6.ShowSelection := False;
        AdvStringGrid5.SetFocus;

        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid5.GetRealRow;
          x_Lat := AdvStringGrid5.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid5.Cells[5, iRcIdx];
          if x_Lat = '' then exit;
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end else
      if (AdvStringGrid6.Cells[0,0] <> '') and (not GS_SEARCH_WISE_NAVER_COMPARE) then
      begin
        AdvStringGrid5.ShowSelection := False;
        AdvStringGrid4.ShowSelection := False;
        AdvStringGrid6.ShowSelection := True;
        AdvStringGrid6.SetFocus;

        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid6.GetRealRow;
          x_Lat := AdvStringGrid6.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid6.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      A2DOWN_chk := False;
    end else
    if Key = VK_RETURN then
    begin
      Key := 0;
      if iCcIdx In [0, 1] then
      begin
        x_Lat := AdvStringGrid4.Cells[2, iRcIdx];
        y_Lon := AdvStringGrid4.Cells[3, iRcIdx];
      end else
      if iCcIdx In [4, 5] then
      begin
        x_Lat := AdvStringGrid4.Cells[6, iRcIdx];
        y_Lon := AdvStringGrid4.Cells[7, iRcIdx];
      end else
      if iCcIdx In [8, 9] then
      begin
        x_Lat := AdvStringGrid4.Cells[10, iRcIdx];
        y_Lon := AdvStringGrid4.Cells[11, iRcIdx];
      end;

      // ���� ���õ� ���ڵ� index �б�.
      // ��ġ��ȸ �׸��忡�� �׸��� ���ýÿ� ������ �Է� ��Ʈ�ѿ� Display~
      if iRcIdx > -1 then
      begin
        bEnter := False;
        Proc_SendParent_ADV2(iRcIdx + 1, iCcIdx, True);
        pActiveEditFocus(True);
			end;
    end else
    if Key = VK_Down then
    begin
      if ((AdvStringGrid4.RowCount-1) = AdvStringGrid4.GetRealRow) and (A2DOWN_chk) then
      begin
        if AdvStringGrid5.Cells[0,1] <> '' then
        begin
          AdvStringGrid5.ShowSelection := True;
          AdvStringGrid4.ShowSelection := False;
          AdvStringGrid6.ShowSelection := False;
          AdvStringGrid5.SetFocus;
        end else
        if (AdvStringGrid6.Cells[0,0] <> '') and (not GS_SEARCH_WISE_NAVER_COMPARE) then
        begin
          AdvStringGrid5.ShowSelection := False;
          AdvStringGrid4.ShowSelection := False;
          AdvStringGrid6.ShowSelection := True;
          AdvStringGrid6.SetFocus;
        end;
        A2DOWN_chk := False;
      end else
      begin
        if (AdvStringGrid4.RowCount-1) = (AdvStringGrid4.GetRealRow) then
          A2DOWN_chk := true;
        if iRcIdx >= 0 then
        begin
          if GS_MAP_AREA_AUTOSHOW then
          begin
            if iCcIdx In [0, 1] then
            begin
              x_Lat := AdvStringGrid4.Cells[2, iRcIdx];
              y_Lon := AdvStringGrid4.Cells[3, iRcIdx];
            end else
            if iCcIdx In [4, 5] then
            begin
              x_Lat := AdvStringGrid4.Cells[6, iRcIdx];
              y_Lon := AdvStringGrid4.Cells[7, iRcIdx];
            end else
            if iCcIdx In [8, 9] then
            begin
              x_Lat := AdvStringGrid4.Cells[10, iRcIdx];
              y_Lon := AdvStringGrid4.Cells[11, iRcIdx];
            end;

            if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
            if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
            else
            begin
              WGS84ToBessel(y_Lon, x_Lat);
              OnMoveMap(ws_Lon, ws_Lat);
            end;
          end;
        end;
      end;
    end else
    if Key = VK_UP then
    begin
      A2DOWN_chk := False;
      if iRcIdx >= 0 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          if iCcIdx In [0, 1] then
          begin
            x_Lat := AdvStringGrid4.Cells[2, iRcIdx];
            y_Lon := AdvStringGrid4.Cells[3, iRcIdx];
          end else
          if iCcIdx In [4, 5] then
          begin
            x_Lat := AdvStringGrid4.Cells[6, iRcIdx];
            y_Lon := AdvStringGrid4.Cells[7, iRcIdx];
          end else
          if iCcIdx In [8, 9] then
          begin
            x_Lat := AdvStringGrid4.Cells[10, iRcIdx];
            y_Lon := AdvStringGrid4.Cells[11, iRcIdx];
          end;

          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key = VK_LEFT then
    begin
      if AdvStringGrid4.GetRealCol In [0] then
      begin
        if AdvStringGrid4.GetRealRow = 0 then
          AdvStringGrid4.FocusCell(8, AdvStringGrid4.RowCount - 1)
        else
          AdvStringGrid4.FocusCell(8, AdvStringGrid4.GetRealRow - 1);
      end else
      if AdvStringGrid4.GetRealCol In [1, 2, 3] then
      begin
        AdvStringGrid4.FocusCell(0, AdvStringGrid4.GetRealRow);
      end else
      if AdvStringGrid4.GetRealCol In [5, 6, 7] then
      begin
        AdvStringGrid4.FocusCell(4, AdvStringGrid4.GetRealRow);
      end;

      iRcIdx := AdvStringGrid4.GetRealRow;
      iCcIdx := AdvStringGrid4.GetRealCol;

      if iCcIdx = 0 then
      begin
        x_Lat := AdvStringGrid4.Cells[2, iRcIdx];
        y_Lon := AdvStringGrid4.Cells[3, iRcIdx];
      end else
      if iCcIdx = 4 then
      begin
        x_Lat := AdvStringGrid4.Cells[6, iRcIdx];
        y_Lon := AdvStringGrid4.Cells[7, iRcIdx];
      end else
      if iCcIdx = 8 then
      begin
        x_Lat := AdvStringGrid4.Cells[10, iRcIdx];
        y_Lon := AdvStringGrid4.Cells[11, iRcIdx];
      end;

      if iRcIdx >= 0 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key = VK_RIGHT then
    begin
      if AdvStringGrid4.GetRealCol In [1, 2, 3] then
      begin
        AdvStringGrid4.FocusCell(4, AdvStringGrid4.GetRealRow);
      end else
      if AdvStringGrid4.GetRealCol In [5, 6, 7] then
      begin
        AdvStringGrid4.FocusCell(8, AdvStringGrid4.GetRealRow);
      end else
      if AdvStringGrid4.GetRealCol In [9, 10, 11] then
      begin
        if AdvStringGrid4.GetRealRow + 1 < AdvStringGrid4.RowCount then
        begin
          AdvStringGrid4.FocusCell(0, AdvStringGrid4.GetRealRow + 1);
        end else
        begin
          AdvStringGrid4.FocusCell(0, 0);
        end;
      end;

      iRcIdx := AdvStringGrid4.GetRealRow;
      iCcIdx := AdvStringGrid4.GetRealCol;

      if iCcIdx In [0, 1] then
      begin
        x_Lat := AdvStringGrid4.Cells[2, iRcIdx];
        y_Lon := AdvStringGrid4.Cells[3, iRcIdx];
      end else
      if iCcIdx In [4, 5] then
      begin
        x_Lat := AdvStringGrid4.Cells[6, iRcIdx];
        y_Lon := AdvStringGrid4.Cells[7, iRcIdx];
      end else
      if iCcIdx In [8, 9] then
      begin
        x_Lat := AdvStringGrid4.Cells[10, iRcIdx];
        y_Lon := AdvStringGrid4.Cells[11, iRcIdx];
      end;

      if iRcIdx >= 0 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key in [VK_Space] then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        pSetFocusStart;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        pSetFocusEnd;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        pSetFocusVia;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
        Frm_CUT011.meoStartAreaCUT.SetFocus
      else
			if lcsActiveEdit = 'meoEndAreaCUT' then
				Frm_CUT011.meoEndAreaCUT.SetFocus
			else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoStartAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoEndAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoCallBell' then
				Frm_BTN01.meoCallBellArea.SetFocus;
		end;
  except on e: exception do
    begin
      Log('AdvStringGrid4KeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid4KeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid5LClickCell(Sender: TObject; ARow,
	ACol: Integer);
var x_Lat, y_Lon : string;
begin
  SetDebugeWrite('JON30.AdvStringGrid5LClickCell');
  try
    if ARow < 0 then Exit;
    if AdvStringGrid5L.Cells[0,0] = '' then Exit;

		AdvStringGrid5.ShowSelection := False;
		AdvStringGrid4.ShowSelection := False;
		AdvStringGrid6.ShowSelection := False;
		AdvStringGrid5L.ShowSelection := True;
		AdvStringGrid5L.SetFocus;
    try
      noSearch := True;
      bClick := True;
      bEnter := True;
      Proc_SendParent_ADV4(ARow + 1, True);
      pActiveEditFocus(False);
    except
      noSearch := False;
    end;

    if GS_MAP_AREA_AUTOSHOW then
    begin
      x_Lat := AdvStringGrid5L.Cells[4, ARow];
      y_Lon := AdvStringGrid5L.Cells[5, ARow];
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid5LClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid5LClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid5LDblClickCell(Sender: TObject; ARow,
	ACol: Integer);
var x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid5LDblClickCell');
  try
    if ARow < 0 then Exit;
    if AdvStringGrid5L.Cells[0,0] = '' then Exit;

    AdvStringGrid5.ShowSelection := False;
    AdvStringGrid4.ShowSelection := False;
    AdvStringGrid6.ShowSelection := False;
    AdvStringGrid5L.ShowSelection := True;
    AdvStringGrid5L.SetFocus;
  //-  AdvStringGrid5L.FocusCell(ACol,ARow);

    x_Lat := AdvStringGrid5L.Cells[4, ARow];
    y_Lon := AdvStringGrid5L.Cells[5, ARow];

    bEnter := False;
    Proc_SendParent_ADV4(ARow + 1, True);

    if AdvStringGrid5L.Cells[4, ARow] = '' then Exit;
    pActiveEditFocus(True);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      if x_Lat = '' then Exit;
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid5LDblClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid5LDblClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid5LKeyUp(Sender: TObject; var Key: Word;
	Shift: TShiftState);
var iRcIdx : integer;
x_Lat, y_Lon : string;
begin
  SetDebugeWrite('JON30.AdvStringGrid5LKeyUp');
  try
		pnl_PoiAddress.Visible := False;
    if AdvStringGrid5L.Cells[0,0] = '' then Exit;
    if Key = VK_RETURN then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid5L.GetRealRow;
      if iRcIdx > -1 then
      begin
        x_Lat := AdvStringGrid5L.Cells[4, iRcIdx];
        y_Lon := AdvStringGrid5L.Cells[5, iRcIdx];

        bEnter := False;
        Proc_SendParent_ADV4(iRcIdx + 1, True);
        pActiveEditFocus(True);
			end;
    end else
    if Key = VK_UP then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid5L.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid5L.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid5L.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      if (AdvStringGrid5L.GetRealRow = 0) and (A3UP_chk) then
      begin
        if AdvStringGrid1.Cells[0,1] <> '' then
        begin
          AdvStringGrid5.ShowSelection := True;
          AdvStringGrid4.ShowSelection := False;
          AdvStringGrid6.ShowSelection := False;
  //-        AdvStringGrid5.FocusCell(0,1);
          AdvStringGrid5.SetFocus;
        end else
        if AdvStringGrid2.Cells[0,0] <> '' then
        begin
          AdvStringGrid5.ShowSelection := False;
          AdvStringGrid4.ShowSelection := True;
          AdvStringGrid6.ShowSelection := False;
          AdvStringGrid4.FocusCell(0,0);
          AdvStringGrid4.SetFocus;
        end;
        A3UP_chk := False;
      end else
      if (AdvStringGrid5L.GetRealRow = 0) then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid5L.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid5L.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
        A3UP_chk := True;
      end;
    end else
    if Key = VK_DOWN then
    begin
      A3UP_chk := False;
      Key := 0;
      iRcIdx := AdvStringGrid5L.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid5L.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid5L.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key in [VK_Space] then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        pSetFocusStart;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        pSetFocusEnd;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        pSetFocusVia;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
        Frm_CUT011.meoStartAreaCUT.SetFocus
      else
			if lcsActiveEdit = 'meoEndAreaCUT' then
				Frm_CUT011.meoEndAreaCUT.SetFocus
			else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoStartAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoEndAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoCallBell' then
				Frm_BTN01.meoCallBellArea.SetFocus;
		end;
  except on e: exception do
    begin
      Log('AdvStringGrid5LKeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid5LKeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid5LResize(Sender: TObject);
begin
  BtnLClose2.Left := AdvStringGrid5L.Left + AdvStringGrid5L.Width - (BtnLClose2.Width+2);
  BtnLClose2.Top  := AdvStringGrid5L.Top - BtnLClose2.Height;
end;

procedure TFrm_JON30.AdvStringGrid5GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if ARow = 0 then HAlign := taCenter;
end;

procedure TFrm_JON30.AdvStringGrid5GridHint(Sender: TObject; ARow,
  ACol: Integer; var hintstr: string);
begin
  if ( ACol = 2 ) And ( bHintShow ) then HintStr := AdvStringGrid5.Cells[ACol, ARow];
end;

procedure TFrm_JON30.AdvStringGrid5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
	iRcIdx: Integer;
  x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid5KeyUp');
  try
		pnl_PoiAddress.Visible := False;
    if AdvStringGrid5.Cells[0,0] = '' then Exit;

    if ( ssCtrl in Shift) and ( Key = VK_RIGHT ) then
    begin
      pSetFocusStart;
    end else
    if ( ssCtrl in Shift) and ( Key = VK_Down ) and (not GS_SEARCH_WISE_NAVER_COMPARE) then
    begin
      AdvStringGrid5.ShowSelection := False;
      AdvStringGrid4.ShowSelection := False;
      AdvStringGrid6.ShowSelection := True;
      AdvStringGrid6.SetFocus;

      if GS_MAP_AREA_AUTOSHOW then
      begin
        iRcIdx := AdvStringGrid6.GetRealRow;
        x_Lat := AdvStringGrid6.Cells[4, iRcIdx];
        y_Lon := AdvStringGrid6.Cells[5, iRcIdx];
        if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
        if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
        else
        begin
          WGS84ToBessel(y_Lon, x_Lat);
          OnMoveMap(ws_Lon, ws_Lat);
        end;
      end;
      A1DOWN_chk := False;
    end else
    if ( ssCtrl in Shift) and ( Key = VK_UP ) then
    begin
      AdvStringGrid5.ShowSelection := False;
      AdvStringGrid4.ShowSelection := True;
      AdvStringGrid6.ShowSelection := False;
      AdvStringGrid4.SetFocus;

      if GS_MAP_AREA_AUTOSHOW then
      begin
        iRcIdx := AdvStringGrid4.GetRealRow;
        AdvStringGrid4.FocusCell(0,iRcIdx);
        x_Lat := AdvStringGrid4.Cells[1, iRcIdx];
        y_Lon := AdvStringGrid4.Cells[2, iRcIdx];

        if x_Lat = '' then exit;
        if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
        if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
        else
        begin
          WGS84ToBessel(y_Lon, x_Lat);
          OnMoveMap(ws_Lon, ws_Lat);
        end;
      end;
      A1UP_chk := False;
    end else
    if Key = VK_RETURN then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid5.GetRealRow;
      if iRcIdx > -1 then
      begin
        x_Lat := AdvStringGrid5.Cells[4, iRcIdx];
        y_Lon := AdvStringGrid5.Cells[5, iRcIdx];

        bEnter := False;
        Proc_SendParent(iRcIdx + 1, True);
        pActiveEditFocus(True);
			end;
    end else
    if Key = VK_UP then
    begin
      A1DOWN_chk := False;
      Key := 0;
      iRcIdx := AdvStringGrid5.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid5.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid5.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      if (AdvStringGrid5.GetRealRow = 1) and (A1UP_chk) then
      begin
        AdvStringGrid5.ShowSelection := False;
        AdvStringGrid4.ShowSelection := True;
        AdvStringGrid6.ShowSelection := False;
        AdvStringGrid4.FocusCell(0,0);
        AdvStringGrid4.SetFocus;
        A1UP_chk := False;
      end
      else if (AdvStringGrid5.GetRealRow = 1) then A1UP_chk := True;
    end else
    if Key = VK_DOWN then
    begin
      A1UP_chk := False;
      Key := 0;
      iRcIdx := AdvStringGrid5.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid5.GetRealRow;
          x_Lat := AdvStringGrid5.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid5.Cells[5, iRcIdx];
          if x_Lat = '' then exit;
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      if ((AdvStringGrid5.RowCount-1) = AdvStringGrid5.GetRealRow) and (A1DOWN_chk) and (not GS_SEARCH_WISE_NAVER_COMPARE) then
      begin
        AdvStringGrid5.ShowSelection := False;
        AdvStringGrid4.ShowSelection := False;
        AdvStringGrid6.ShowSelection := True;
  //-      AdvStringGrid6.FocusCell(0,0);
        AdvStringGrid6.SetFocus;
        A1DOWN_chk := False;
      end
      else if (AdvStringGrid5.RowCount-1) = (AdvStringGrid5.GetRealRow) then A1DOWN_chk := True;
    end else
    if Key in [VK_Space] then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        pSetFocusStart;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        pSetFocusEnd;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        pSetFocusVia;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
        Frm_CUT011.meoStartAreaCUT.SetFocus
      else
			if lcsActiveEdit = 'meoEndAreaCUT' then
				Frm_CUT011.meoEndAreaCUT.SetFocus
			else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoStartAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoEndAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoCallBell' then
				Frm_BTN01.meoCallBellArea.SetFocus;
		end;
  except on e: exception do
    begin
      Log('AdvStringGrid5KeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid5KeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid5ClickCell(Sender: TObject; ARow,
  ACol: Integer);
var x_Lat, y_Lon: string;
  iRcIdx : Integer;
begin
  SetDebugeWrite('JON30.AdvStringGrid5ClickCell');
  try
    if ARow <= 0 then Exit;
    if Trim(AdvStringGrid5.Cells[0, ARow]) = '' then Exit;

		AdvStringGrid5.ShowSelection := True;
		AdvStringGrid4.ShowSelection := False;
		AdvStringGrid6.ShowSelection := False;
		AdvStringGrid5.SetFocus;

		iRcIdx := AdvStringGrid5.GetRealRow;
    bClick := True;
    bEnter := True;
    Proc_SendParent(iRcIdx + 1, True);
    pActiveEditFocus(False);

		if AdvStringGrid5.Cells[19, iRcIdx] <> '' then
		begin
			pnl_PoiAddress.Visible := True;
			lb_PoiAddress.Text := AdvStringGrid5.Cells[19, iRcIdx];
		end else pnl_PoiAddress.Visible := False;

		if not chkUseMiniMap.checked then
		begin
			if AdvStringGrid5.Cells[19, iRcIdx] <> '' then
				Self.Height := (frm_Size) + pnl_PoiAddress.Height
			else Self.Height := frm_Size;
		end;

    if GS_MAP_AREA_AUTOSHOW then
    begin
      x_Lat := AdvStringGrid5.Cells[4, iRcIdx];
      y_Lon := AdvStringGrid5.Cells[5, iRcIdx];
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid5ClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid5ClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid5DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid5DblClickCell');
  try
    if ARow <= 0 then Exit;
    if Trim(AdvStringGrid5.Cells[0, ARow]) = '' then Exit;

    AdvStringGrid5.ShowSelection := True;
    AdvStringGrid4.ShowSelection := False;
    AdvStringGrid6.ShowSelection := False;
    AdvStringGrid5.SetFocus;
  //-  AdvStringGrid5.FocusCell(ACol,ARow);

    bEnter := False;
    Proc_SendParent(ARow + 1, True);
    pActiveEditFocus(True);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      x_Lat := AdvStringGrid5.Cells[4, ARow];
      y_Lon := AdvStringGrid5.Cells[5, ARow];
      if x_Lat = '' then Exit;
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid5DblClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid5DblClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid6ClickCell(Sender: TObject; ARow,
  ACol: Integer);
var x_Lat, y_Lon : string;
begin
  SetDebugeWrite('JON30.AdvStringGrid6ClickCell');
  try
    if ARow < 0 then Exit;
    if Trim(AdvStringGrid6.Cells[0, ARow]) = '' then Exit;

    if GI_ALL_Sch = 0 then
    begin
      if AdvStringGRid6.Cells[10, ARow] = 'D' then
      begin
//        if Not GB_DARKMODE then
        begin
          AdvStringGRid6.Color := $0080FFFF;
          AdvStringGRid6.SelectionColor := $0046FFFF;
        end;
      end else
      if AdvStringGRid6.Cells[10, ARow] = 'N' then
      begin
//        if Not GB_DARKMODE then
        begin
          AdvStringGRid6.Color := $00B1DCCB;
          AdvStringGRid6.SelectionColor := $0088CAAF;
        end;
      end;
    end else
    begin
      if GS_PORTAL_SEL = 'D' then
      begin
//        if Not GB_DARKMODE then
        begin
          AdvStringGRid6.Color := $0080FFFF;
          AdvStringGRid6.SelectionColor := $0046FFFF;
        end;
      end else
      if GS_PORTAL_SEL = 'N' then
      begin
//        if Not GB_DARKMODE then
        begin
          AdvStringGRid6.Color := $00B1DCCB;
          AdvStringGRid6.SelectionColor := $0088CAAF;
        end;
      end;
    end;

		AdvStringGrid5.ShowSelection := False;
		AdvStringGrid4.ShowSelection := False;
		AdvStringGrid6.ShowSelection := True;
		AdvStringGrid6.SetFocus;
    try
      noSearch := True;
      bClick := True;
      bEnter := True;
      Proc_SendParent_ADV3(ARow + 1, True);
      pActiveEditFocus(False);
    except
      noSearch := False;
    end;

		if AdvStringGrid6.Cells[12, ARow] <> '' then
		begin
			pnl_PoiAddress.Visible := True;
			lb_PoiAddress.Text := AdvStringGrid6.Cells[12, ARow];
		end else pnl_PoiAddress.Visible := False;

		if not chkUseMiniMap.checked then
		begin
			if AdvStringGrid6.Cells[12, ARow] <> '' then
				Self.Height := (frm_Size) + pnl_PoiAddress.Height
			else Self.Height := frm_Size;
		end;

    if GS_MAP_AREA_AUTOSHOW then
    begin
      x_Lat := AdvStringGrid6.Cells[4, ARow];
      y_Lon := AdvStringGrid6.Cells[5, ARow];
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid6ClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid6ClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid6DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid6DblClickCell');
  try
    if ARow < 0 then Exit;
    if Trim(AdvStringGrid6.Cells[0, ARow]) = '' then Exit;

    AdvStringGrid5.ShowSelection := False;
    AdvStringGrid4.ShowSelection := False;
    AdvStringGrid6.ShowSelection := True;
    AdvStringGrid6.SetFocus;
  //-  AdvStringGrid6.FocusCell(ACol,ARow);

    x_Lat := AdvStringGrid6.Cells[4, ARow];
    y_Lon := AdvStringGrid6.Cells[5, ARow];

    bEnter := False;
    Proc_SendParent_ADV3(ARow + 1, True);

    if AdvStringGrid6.Cells[4, ARow] = '' then Exit;
    pActiveEditFocus(True);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      if x_Lat = '' then Exit;
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid6DblClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid6DblClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid6KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var iRcIdx : integer;
    x_Lat, y_Lon : string;
begin
  SetDebugeWrite('JON30.AdvStringGrid6KeyUp');
  try
		pnl_PoiAddress.Visible := False;
    if AdvStringGrid6.Cells[0,0] = '' then Exit;

    if ( ssCtrl in Shift) and ( Key = VK_UP ) then
    begin
      if AdvStringGrid5.Cells[0,1] <> '' then
      begin
        AdvStringGrid5.ShowSelection := True;
        AdvStringGrid4.ShowSelection := False;
        AdvStringGrid6.ShowSelection := False;
        AdvStringGrid5.SetFocus;

        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid5.GetRealRow;
          x_Lat := AdvStringGrid5.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid5.Cells[5, iRcIdx];
          if x_Lat = '' then exit;
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end else
      if AdvStringGrid4.Cells[0,0] <> '' then
      begin
        AdvStringGrid5.ShowSelection := False;
        AdvStringGrid4.ShowSelection := True;
        AdvStringGrid6.ShowSelection := False;
        AdvStringGrid4.SetFocus;

        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid4.GetRealRow;
          AdvStringGrid4.FocusCell(0,iRcIdx);
          x_Lat := AdvStringGrid4.Cells[1, iRcIdx];
          y_Lon := AdvStringGrid4.Cells[2, iRcIdx];

          if x_Lat = '' then exit;
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      A3UP_chk := False;
    end else
    if Key = VK_RETURN then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid6.GetRealRow;
      if iRcIdx > -1 then
      begin
        x_Lat := AdvStringGrid6.Cells[4, iRcIdx];
        y_Lon := AdvStringGrid6.Cells[5, iRcIdx];
        bEnter := False;
        Proc_SendParent_ADV3(iRcIdx + 1, True);
        pActiveEditFocus(True);
			end;
    end else
    if Key = VK_UP then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid6.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid6.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid6.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      if (AdvStringGrid6.GetRealRow = 0) and (A3UP_chk) then
      begin
        if AdvStringGrid5.Cells[0,1] <> '' then
        begin
          AdvStringGrid5.ShowSelection := True;
          AdvStringGrid4.ShowSelection := False;
          AdvStringGrid6.ShowSelection := False;
          AdvStringGrid5.SetFocus;
        end else
        if AdvStringGrid4.Cells[0,0] <> '' then
        begin
          AdvStringGrid5.ShowSelection := False;
          AdvStringGrid4.ShowSelection := True;
          AdvStringGrid6.ShowSelection := False;
          AdvStringGrid4.FocusCell(0,0);
          AdvStringGrid4.SetFocus;
        end;
        A3UP_chk := False;
      end else
      if (AdvStringGrid6.GetRealRow = 0) then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid6.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid6.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
        A3UP_chk := True;
      end;
    end else
    if Key = VK_DOWN then
    begin
      A3UP_chk := False;
      Key := 0;
      iRcIdx := AdvStringGrid6.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid6.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid6.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key in [VK_Space] then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        pSetFocusStart;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        pSetFocusEnd;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        pSetFocusVia;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
        Frm_CUT011.meoStartAreaCUT.SetFocus
      else
			if lcsActiveEdit = 'meoEndAreaCUT' then
				Frm_CUT011.meoEndAreaCUT.SetFocus
			else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoStartAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoEndAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoCallBell' then
				Frm_BTN01.meoCallBellArea.SetFocus;
		end;
  except on e: exception do
    begin
      Log('AdvStringGrid6KeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid6KeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid7KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  iRcIdx, iCcIdx: Integer;
  x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid7KeyUp');
  try
		pnl_PoiAddress.Visible := False;
    if AdvStringGrid7.Cells[0,0] = '' then Exit;
    iRcIdx := AdvStringGrid7.GetRealRow;
    iCcIdx := AdvStringGrid7.GetRealCol;

    if ( ssCtrl in Shift) and ( Key = VK_Down ) then
    begin
      if AdvStringGrid8.Cells[0,1] <> '' then
      begin
        AdvStringGrid8.ShowSelection := True;
        AdvStringGrid7.ShowSelection := False;
        AdvStringGrid9.ShowSelection := False;
        AdvStringGrid8.SetFocus;

        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid8.GetRealRow;
          x_Lat := AdvStringGrid8.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid8.Cells[5, iRcIdx];
          if x_Lat = '' then exit;
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end else
			if (AdvStringGrid9.Cells[0,0] <> '') and (not GS_SEARCH_WISE_NAVER_COMPARE) then
      begin
        AdvStringGrid8.ShowSelection := False;
        AdvStringGrid7.ShowSelection := False;
        AdvStringGrid9.ShowSelection := True;
        AdvStringGrid9.SetFocus;

        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid9.GetRealRow;
          x_Lat := AdvStringGrid9.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid9.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      A2DOWN_chk := False;
    end else
    if Key = VK_RETURN then
    begin
      Key := 0;
      if iCcIdx In [0, 1] then
      begin
        x_Lat := AdvStringGrid7.Cells[2, iRcIdx];
        y_Lon := AdvStringGrid7.Cells[3, iRcIdx];
      end else
      if iCcIdx In [4, 5] then
      begin
        x_Lat := AdvStringGrid7.Cells[6, iRcIdx];
        y_Lon := AdvStringGrid7.Cells[7, iRcIdx];
      end else
      if iCcIdx In [8, 9] then
      begin
        x_Lat := AdvStringGrid7.Cells[10, iRcIdx];
        y_Lon := AdvStringGrid7.Cells[11, iRcIdx];
      end;

      // ���� ���õ� ���ڵ� index �б�.
      // ��ġ��ȸ �׸��忡�� �׸��� ���ýÿ� ������ �Է� ��Ʈ�ѿ� Display~
      if iRcIdx > -1 then
      begin
        bEnter := False;
        Proc_SendParent_ADV2(iRcIdx + 1, iCcIdx, True);
        pActiveEditFocus(True);
			end;
    end else
    if Key = VK_Down then
    begin
      if ((AdvStringGrid7.RowCount-1) = AdvStringGrid7.GetRealRow) and (A2DOWN_chk) then
      begin
        if AdvStringGrid8.Cells[0,1] <> '' then
        begin
          AdvStringGrid8.ShowSelection := True;
          AdvStringGrid7.ShowSelection := False;
          AdvStringGrid9.ShowSelection := False;
          AdvStringGrid8.SetFocus;
        end else
        if (AdvStringGrid9.Cells[0,0] <> '') and (not GS_SEARCH_WISE_NAVER_COMPARE) then
        begin
          AdvStringGrid8.ShowSelection := False;
          AdvStringGrid7.ShowSelection := False;
          AdvStringGrid9.ShowSelection := True;
          AdvStringGrid9.SetFocus;
        end;
        A2DOWN_chk := False;
      end else
      begin
        if (AdvStringGrid7.RowCount-1) = (AdvStringGrid7.GetRealRow) then
          A2DOWN_chk := true;
        if iRcIdx >= 0 then
        begin
          if GS_MAP_AREA_AUTOSHOW then
          begin
            if iCcIdx In [0, 1] then
            begin
              x_Lat := AdvStringGrid7.Cells[2, iRcIdx];
              y_Lon := AdvStringGrid7.Cells[3, iRcIdx];
            end else
            if iCcIdx In [4, 5] then
            begin
              x_Lat := AdvStringGrid7.Cells[6, iRcIdx];
              y_Lon := AdvStringGrid7.Cells[7, iRcIdx];
            end else
            if iCcIdx In [8, 9] then
            begin
              x_Lat := AdvStringGrid7.Cells[10, iRcIdx];
              y_Lon := AdvStringGrid7.Cells[11, iRcIdx];
            end;

            if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
            if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
            else
            begin
              WGS84ToBessel(y_Lon, x_Lat);
              OnMoveMap(ws_Lon, ws_Lat);
            end;
          end;
        end;
      end;
    end else
    if Key = VK_UP then
    begin
      A2DOWN_chk := False;
      if iRcIdx >= 0 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          if iCcIdx In [0, 1] then
          begin
            x_Lat := AdvStringGrid7.Cells[2, iRcIdx];
            y_Lon := AdvStringGrid7.Cells[3, iRcIdx];
          end else
          if iCcIdx In [4, 5] then
          begin
            x_Lat := AdvStringGrid7.Cells[6, iRcIdx];
            y_Lon := AdvStringGrid7.Cells[7, iRcIdx];
          end else
          if iCcIdx In [8, 9] then
          begin
            x_Lat := AdvStringGrid7.Cells[10, iRcIdx];
            y_Lon := AdvStringGrid7.Cells[11, iRcIdx];
          end;

          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key = VK_LEFT then
    begin
      if AdvStringGrid7.GetRealCol In [0] then
      begin
        if AdvStringGrid7.GetRealRow = 0 then
          AdvStringGrid7.FocusCell(8, AdvStringGrid7.RowCount - 1)
        else
          AdvStringGrid7.FocusCell(8, AdvStringGrid7.GetRealRow - 1);
      end else
      if AdvStringGrid7.GetRealCol In [1, 2, 3] then
      begin
        AdvStringGrid7.FocusCell(0, AdvStringGrid7.GetRealRow);
      end else
      if AdvStringGrid2.GetRealCol In [5, 6, 7] then
      begin
        AdvStringGrid7.FocusCell(4, AdvStringGrid7.GetRealRow);
      end;

      iRcIdx := AdvStringGrid7.GetRealRow;
      iCcIdx := AdvStringGrid7.GetRealCol;

      if iCcIdx = 0 then
      begin
        x_Lat := AdvStringGrid7.Cells[2, iRcIdx];
        y_Lon := AdvStringGrid7.Cells[3, iRcIdx];
      end else
      if iCcIdx = 4 then
      begin
        x_Lat := AdvStringGrid7.Cells[6, iRcIdx];
        y_Lon := AdvStringGrid7.Cells[7, iRcIdx];
      end else
      if iCcIdx = 8 then
      begin
        x_Lat := AdvStringGrid7.Cells[10, iRcIdx];
        y_Lon := AdvStringGrid7.Cells[11, iRcIdx];
      end;

      if iRcIdx >= 0 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key = VK_RIGHT then
    begin
      if AdvStringGrid7.GetRealCol In [1, 2, 3] then
      begin
        AdvStringGrid7.FocusCell(4, AdvStringGrid7.GetRealRow);
      end else
      if AdvStringGrid7.GetRealCol In [5, 6, 7] then
      begin
        AdvStringGrid7.FocusCell(8, AdvStringGrid7.GetRealRow);
      end else
      if AdvStringGrid7.GetRealCol In [9, 10, 11] then
      begin
        if AdvStringGrid7.GetRealRow + 1 < AdvStringGrid7.RowCount then
        begin
          AdvStringGrid7.FocusCell(0, AdvStringGrid7.GetRealRow + 1);
        end else
        begin
          AdvStringGrid7.FocusCell(0, 0);
        end;
      end;

      iRcIdx := AdvStringGrid7.GetRealRow;
      iCcIdx := AdvStringGrid7.GetRealCol;

      if iCcIdx In [0, 1] then
      begin
        x_Lat := AdvStringGrid7.Cells[2, iRcIdx];
        y_Lon := AdvStringGrid7.Cells[3, iRcIdx];
      end else
      if iCcIdx In [4, 5] then
      begin
        x_Lat := AdvStringGrid7.Cells[6, iRcIdx];
        y_Lon := AdvStringGrid7.Cells[7, iRcIdx];
      end else
      if iCcIdx In [8, 9] then
      begin
        x_Lat := AdvStringGrid7.Cells[10, iRcIdx];
        y_Lon := AdvStringGrid7.Cells[11, iRcIdx];
      end;

      if iRcIdx >= 0 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key in [VK_Space] then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        pSetFocusStart;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        pSetFocusEnd;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        pSetFocusVia;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
        Frm_CUT011.meoStartAreaCUT.SetFocus
      else
			if lcsActiveEdit = 'meoEndAreaCUT' then
				Frm_CUT011.meoEndAreaCUT.SetFocus
			else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoStartAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoEndAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoCallBell' then
				Frm_BTN01.meoCallBellArea.SetFocus;
		end;
	except on e: exception do
    begin
      Log('AdvStringGrid7KeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid7KeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid8LClickCell(Sender: TObject; ARow,
  ACol: Integer);
var x_Lat, y_Lon : string;
begin
	SetDebugeWrite('JON30.AdvStringGrid8LClickCell');
  try
    if ARow < 0 then Exit;
    if AdvStringGrid8L.Cells[0,0] = '' then Exit;

		AdvStringGrid8.ShowSelection := False;
		AdvStringGrid7.ShowSelection := False;
		AdvStringGrid9.ShowSelection := False;
		AdvStringGrid8L.ShowSelection := True;
		AdvStringGrid8L.SetFocus;
    try
      noSearch := True;
      bClick := True;
      bEnter := True;
      Proc_SendParent_ADV4(ARow + 1, True);
      pActiveEditFocus(False);
    except
      noSearch := False;
    end;

    if GS_MAP_AREA_AUTOSHOW then
    begin
      x_Lat := AdvStringGrid8L.Cells[4, ARow];
      y_Lon := AdvStringGrid8L.Cells[5, ARow];
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid8LClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid8LClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid8LDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid8LDblClickCell');
  try
    if ARow < 0 then Exit;
    if AdvStringGrid8L.Cells[0,0] = '' then Exit;

    AdvStringGrid8.ShowSelection := False;
    AdvStringGrid7.ShowSelection := False;
    AdvStringGrid9.ShowSelection := False;
    AdvStringGrid8L.ShowSelection := True;
    AdvStringGrid8L.SetFocus;
  //-  AdvStringGrid8L.FocusCell(ACol,ARow);

    x_Lat := AdvStringGrid8L.Cells[4, ARow];
    y_Lon := AdvStringGrid8L.Cells[5, ARow];

    bEnter := False;
    Proc_SendParent_ADV4(ARow + 1, True);

    if AdvStringGrid8L.Cells[4, ARow] = '' then Exit;
    pActiveEditFocus(True);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      if x_Lat = '' then Exit;
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid8LDblClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid8LDblClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid8LKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var iRcIdx : integer;
x_Lat, y_Lon : string;
begin
  SetDebugeWrite('JON30.AdvStringGrid8LKeyUp');
  try
 		pnl_PoiAddress.Visible := False;
    if AdvStringGrid8L.Cells[0,0] = '' then Exit;
    if Key = VK_RETURN then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid8L.GetRealRow;
      if iRcIdx > -1 then
      begin
        x_Lat := AdvStringGrid8L.Cells[4, iRcIdx];
        y_Lon := AdvStringGrid8L.Cells[5, iRcIdx];
        bEnter := False;
        Proc_SendParent_ADV4(iRcIdx + 1, True);
        pActiveEditFocus(True);
			end;
    end else
    if Key = VK_UP then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid8L.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid8L.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid8L.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      if (AdvStringGrid8L.GetRealRow = 0) and (A3UP_chk) then
      begin
        if AdvStringGrid8.Cells[0,1] <> '' then
        begin
          AdvStringGrid8.ShowSelection := True;
          AdvStringGrid7.ShowSelection := False;
          AdvStringGrid9.ShowSelection := False;
  //-        AdvStringGrid8.FocusCell(0,1);
          AdvStringGrid8.SetFocus;
        end else
        if AdvStringGrid7.Cells[0,0] <> '' then
        begin
          AdvStringGrid8.ShowSelection := False;
          AdvStringGrid7.ShowSelection := True;
          AdvStringGrid9.ShowSelection := False;
          AdvStringGrid7.FocusCell(0,0);
          AdvStringGrid7.SetFocus;
        end;
        A3UP_chk := False;
      end else
      if (AdvStringGrid8L.GetRealRow = 0) then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid8L.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid8L.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
        A3UP_chk := True;
      end;
    end else
    if Key = VK_DOWN then
    begin
      A3UP_chk := False;
      Key := 0;
      iRcIdx := AdvStringGrid8L.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid8L.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid8L.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key in [VK_Space] then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        pSetFocusStart;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        pSetFocusEnd;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        pSetFocusVia;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
        Frm_CUT011.meoStartAreaCUT.SetFocus
      else
			if lcsActiveEdit = 'meoEndAreaCUT' then
				Frm_CUT011.meoEndAreaCUT.SetFocus
			else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoStartAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoEndAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoCallBell' then
				Frm_BTN01.meoCallBellArea.SetFocus;
		end;
  except on e: exception do
    begin
      Log('AdvStringGrid8LKeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid8LKeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid8LResize(Sender: TObject);
begin
  BtnLClose3.Left := AdvStringGrid8L.Left + AdvStringGrid8L.Width - (BtnLClose3.Width+2);
  BtnLClose3.Top  := AdvStringGrid8L.Top - BtnLClose3.Height;
end;

procedure TFrm_JON30.AdvStringGrid7DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid7DblClickCell');
  try
    if ARow < 0 then Exit;
    if AdvStringGrid7.Cells[0,0] = '' then Exit;

    AdvStringGrid8.ShowSelection := False;
    AdvStringGrid7.ShowSelection := True;
    AdvStringGrid9.ShowSelection := False;
		AdvStringGrid7.SetFocus;
    AdvStringGrid7.FocusCell(ACol,ARow);

    if ACol = 0 then
    begin
      x_Lat := AdvStringGrid7.Cells[2, ARow];
      y_Lon := AdvStringGrid7.Cells[3, ARow];
    end;
    if ACol = 4 then
    begin
      x_Lat := AdvStringGrid7.Cells[6, ARow];
      y_Lon := AdvStringGrid7.Cells[7, ARow];
    end;
    if ACol = 8 then
    begin
      x_Lat := AdvStringGrid7.Cells[10, ARow];
      y_Lon := AdvStringGrid7.Cells[11, ARow];
    end;

    bEnter := False;
    Proc_SendParent_ADV2(ARow + 1, ACol, True);
    pActiveEditFocus(True);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      if x_Lat = '' then Exit;
      if y_Lon = '' then Exit;
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid7DblClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid7DblClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid7ClickCell(Sender: TObject; ARow,
  ACol: Integer);
var x_Lat, y_Lon, sTmp : string;
begin
  SetDebugeWrite('JON30.AdvStringGrid7ClickCell');
  try
		pnl_PoiAddress.Visible := False;
    if ARow < 0 then Exit;
    if AdvStringGrid7.Cells[0,0] = '' then Exit;

    AdvStringGrid8.ShowSelection := False;
    AdvStringGrid7.ShowSelection := True;
    AdvStringGrid9.ShowSelection := False;
    AdvStringGrid7.SetFocus;
    AdvStringGrid7.FocusCell(ACol,ARow);

    if ACol In [0, 1] then
    begin
      x_Lat := AdvStringGrid7.Cells[2, ARow];
      y_Lon := AdvStringGrid7.Cells[3, ARow];
    end;
    if ACol In [4, 5] then
    begin
      x_Lat := AdvStringGrid7.Cells[6, ARow];
      y_Lon := AdvStringGrid7.Cells[7, ARow];
    end;
    if ACol In [8, 9] then
    begin
      x_Lat := AdvStringGrid7.Cells[10, ARow];
      y_Lon := AdvStringGrid7.Cells[11, ARow];
    end;

    if x_Lat = '' then Exit;
    if y_Lon = '' then Exit;

    if ( ACol In [1, 5, 9] )  then
    begin
      iChkPoiSvrTag := 1;

      sTmp := D_HightlightTXT(AdvStringGrid7.Cells[ACol - 1, ARow]);
      if Pos('[', sTmp) > 0 then
      begin
        sSAPoiGubun := 'S';
      end else
      begin
        sSAPoiAddr := UrlEncode(UTF8Encode(trim(sTmp)));
        sOrSAPoiAddr := Trim(sTmp);
        sSAPoiGubun := 'A';
      end;

      sSApoiCenterLat := x_Lat;
      sSApoiCenterLon := y_Lon;
      TT3.Enabled := True;
      Exit;
    end;

    bClick := True;
    bEnter := True;
    Proc_SendParent_ADV2(ARow + 1, ACol, True);
    pActiveEditFocus(False);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid7ClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid7ClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid8ClickCell(Sender: TObject; ARow,
  ACol: Integer);
var x_Lat, y_Lon: string;
  iRcIdx : Integer;
begin
  SetDebugeWrite('JON30.AdvStringGrid8ClickCell');
  try
    if ARow <= 0 then Exit;
    if Trim(AdvStringGrid8.Cells[0, ARow]) = '' then Exit;

		AdvStringGrid8.ShowSelection := True;
		AdvStringGrid7.ShowSelection := False;
		AdvStringGrid9.ShowSelection := False;
		AdvStringGrid8.SetFocus;

		iRcIdx := AdvStringGrid8.GetRealRow;
    bClick := True;
    bEnter := True;
    Proc_SendParent(iRcIdx + 1, True);
    pActiveEditFocus(False);

		if AdvStringGrid8.Cells[19, iRcIdx] <> '' then
		begin
			pnl_PoiAddress.Visible := True;
			lb_PoiAddress.Text := AdvStringGrid8.Cells[19, iRcIdx];
		end else pnl_PoiAddress.Visible := False;

		if not chkUseMiniMap.checked then
		begin
			if AdvStringGrid8.Cells[19, iRcIdx] <> '' then
				Self.Height := (frm_Size) + pnl_PoiAddress.Height
			else Self.Height := frm_Size;
		end;

    if GS_MAP_AREA_AUTOSHOW then
    begin
      x_Lat := AdvStringGrid8.Cells[4, iRcIdx];
      y_Lon := AdvStringGrid8.Cells[5, iRcIdx];
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid8ClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid8ClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid8DblClickCell(Sender: TObject; ARow,
	ACol: Integer);
var x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid8DblClickCell');
  try
    if ARow <= 0 then Exit;
    if Trim(AdvStringGrid8.Cells[0, ARow]) = '' then Exit;

    AdvStringGrid8.ShowSelection := True;
    AdvStringGrid7.ShowSelection := False;
    AdvStringGrid9.ShowSelection := False;
    AdvStringGrid8.SetFocus;
  //-  AdvStringGrid8.FocusCell(ACol,ARow);

    bEnter := False;
    Proc_SendParent(ARow + 1, True);
    pActiveEditFocus(True);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      x_Lat := AdvStringGrid8.Cells[4, ARow];
      y_Lon := AdvStringGrid8.Cells[5, ARow];
      if x_Lat = '' then Exit;
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid8DblClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid8DblClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid8GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if ARow = 0 then HAlign := taCenter;
end;

procedure TFrm_JON30.AdvStringGrid8GridHint(Sender: TObject; ARow,
  ACol: Integer; var hintstr: string);
begin
  if ( ACol = 2 ) And ( bHintShow ) then HintStr := AdvStringGrid8.Cells[ACol, ARow];
end;

procedure TFrm_JON30.AdvStringGrid8KeyUp(Sender: TObject; var Key: Word;
	Shift: TShiftState);
var
	iRcIdx: Integer;
  x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid8KeyUp');
  try
		pnl_PoiAddress.Visible := False;
    if AdvStringGrid8.Cells[0,0] = '' then Exit;

    if ( ssCtrl in Shift) and ( Key = VK_RIGHT ) then
    begin
      pSetFocusVia;
    end else
    if ( ssCtrl in Shift) and ( Key = VK_Down ) and (not GS_SEARCH_WISE_NAVER_COMPARE) then
    begin
      AdvStringGrid8.ShowSelection := False;
      AdvStringGrid7.ShowSelection := False;
      AdvStringGrid9.ShowSelection := True;
      AdvStringGrid9.SetFocus;

      if GS_MAP_AREA_AUTOSHOW then
      begin
        iRcIdx := AdvStringGrid9.GetRealRow;
        x_Lat := AdvStringGrid9.Cells[4, iRcIdx];
        y_Lon := AdvStringGrid9.Cells[5, iRcIdx];
        if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
        if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
        else
        begin
          WGS84ToBessel(y_Lon, x_Lat);
          OnMoveMap(ws_Lon, ws_Lat);
        end;
      end;
      A1DOWN_chk := False;
    end else
    if ( ssCtrl in Shift) and ( Key = VK_UP ) then
    begin
      AdvStringGrid8.ShowSelection := False;
      AdvStringGrid7.ShowSelection := True;
      AdvStringGrid9.ShowSelection := False;
      AdvStringGrid7.SetFocus;

      if GS_MAP_AREA_AUTOSHOW then
      begin
        iRcIdx := AdvStringGrid7.GetRealRow;
        AdvStringGrid7.FocusCell(0,iRcIdx);
        x_Lat := AdvStringGrid7.Cells[1, iRcIdx];
        y_Lon := AdvStringGrid7.Cells[2, iRcIdx];

        if x_Lat = '' then exit;
        if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
        if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
        else
        begin
          WGS84ToBessel(y_Lon, x_Lat);
          OnMoveMap(ws_Lon, ws_Lat);
        end;
      end;
      A1UP_chk := False;
    end else
    if Key = VK_RETURN then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid8.GetRealRow;
      if iRcIdx > -1 then
      begin
        x_Lat := AdvStringGrid8.Cells[4, iRcIdx];
        y_Lon := AdvStringGrid8.Cells[5, iRcIdx];
        bEnter := False;
        Proc_SendParent(iRcIdx + 1, True);
        pActiveEditFocus(True);
			end;
    end else
    if Key = VK_UP then
    begin
      A1DOWN_chk := False;
      Key := 0;
      iRcIdx := AdvStringGrid8.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid8.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid8.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      if (AdvStringGrid8.GetRealRow = 1) and (A1UP_chk) then
      begin
        AdvStringGrid8.ShowSelection := False;
        AdvStringGrid7.ShowSelection := True;
        AdvStringGrid9.ShowSelection := False;
        AdvStringGrid7.FocusCell(0,0);
        AdvStringGrid7.SetFocus;
        A1UP_chk := False;
      end
      else if (AdvStringGrid8.GetRealRow = 1) then A1UP_chk := True;
    end else
    if Key = VK_DOWN then
    begin
      A1UP_chk := False;
      Key := 0;
      iRcIdx := AdvStringGrid8.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid8.GetRealRow;
          x_Lat := AdvStringGrid8.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid8.Cells[5, iRcIdx];
          if x_Lat = '' then exit;
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      if ((AdvStringGrid8.RowCount-1) = AdvStringGrid8.GetRealRow) and (A1DOWN_chk) and (not GS_SEARCH_WISE_NAVER_COMPARE) then
      begin
        AdvStringGrid8.ShowSelection := False;
        AdvStringGrid7.ShowSelection := False;
        AdvStringGrid9.ShowSelection := True;
        AdvStringGrid9.SetFocus;
        A1DOWN_chk := False;
      end
      else if (AdvStringGrid8.RowCount-1) = (AdvStringGrid8.GetRealRow) then A1DOWN_chk := True;
    end else
    if Key in [VK_Space] then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        pSetFocusStart;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        pSetFocusEnd;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        pSetFocusVia;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
        Frm_CUT011.meoStartAreaCUT.SetFocus
      else
			if lcsActiveEdit = 'meoEndAreaCUT' then
				Frm_CUT011.meoEndAreaCUT.SetFocus
			else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoStartAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoEndAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoCallBell' then
				Frm_BTN01.meoCallBellArea.SetFocus;
		end;
	except on e: exception do
    begin
      Log('AdvStringGrid8KeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid8KeyUp Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid9ClickCell(Sender: TObject; ARow,
	ACol: Integer);
var x_Lat, y_Lon : string;
begin
	SetDebugeWrite('JON30.AdvStringGrid9ClickCell');
  try
    if ARow < 0 then Exit;
		if Trim(AdvStringGrid9.Cells[0, ARow]) = '' then Exit;

    if GI_ALL_Sch = 0 then
    begin
      if AdvStringGRid9.Cells[10, ARow] = 'D' then
      begin
//        if Not GB_DARKMODE then
        begin
          AdvStringGRid9.Color := $0080FFFF;
          AdvStringGRid9.SelectionColor := $0046FFFF;
        end;
      end else
      if AdvStringGRid9.Cells[10, ARow] = 'N' then
      begin
//        if Not GB_DARKMODE then
        begin
          AdvStringGRid9.Color := $00B1DCCB;
          AdvStringGRid9.SelectionColor := $0088CAAF;
        end;
      end;
    end else
    begin
      if GS_PORTAL_SEL = 'D' then
      begin
//        if Not GB_DARKMODE then
        begin
          AdvStringGRid9.Color := $0080FFFF;
          AdvStringGRid9.SelectionColor := $0046FFFF;
        end;
      end else
      if GS_PORTAL_SEL = 'N' then
      begin
//        if Not GB_DARKMODE then
        begin
          AdvStringGRid9.Color := $00B1DCCB;
          AdvStringGRid9.SelectionColor := $0088CAAF;
        end;
      end;
    end;

    AdvStringGrid8.ShowSelection := False;
    AdvStringGrid7.ShowSelection := False;
    AdvStringGrid9.ShowSelection := True;
    AdvStringGrid9.SetFocus;

    try
      noSearch := True;
      bClick := True;
      bEnter := True;
      Proc_SendParent_ADV3(ARow + 1, True);
      pActiveEditFocus(False);
    except
      noSearch := False;
    end;

		if AdvStringGrid9.Cells[12, ARow] <> '' then
		begin
			pnl_PoiAddress.Visible := True;
			lb_PoiAddress.Text := AdvStringGrid9.Cells[12, ARow];
		end else pnl_PoiAddress.Visible := False;

		if not chkUseMiniMap.checked then
		begin
			if AdvStringGrid9.Cells[12, ARow] <> '' then
				Self.Height := (frm_Size) + pnl_PoiAddress.Height
			else Self.Height := frm_Size;
		end;

    if GS_MAP_AREA_AUTOSHOW then
    begin
      x_Lat := AdvStringGrid9.Cells[4, ARow];
      y_Lon := AdvStringGrid9.Cells[5, ARow];
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid9ClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid9ClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid9DblClickCell(Sender: TObject; ARow,
	ACol: Integer);
var x_Lat, y_Lon: string;
begin
  SetDebugeWrite('JON30.AdvStringGrid9DblClickCell');
  try
    if ARow < 0 then Exit;
    if Trim(AdvStringGrid9.Cells[0, ARow]) = '' then Exit;

    AdvStringGrid8.ShowSelection := False;
    AdvStringGrid7.ShowSelection := False;
    AdvStringGrid9.ShowSelection := True;
    AdvStringGrid9.SetFocus;
  //-  AdvStringGrid9.FocusCell(ACol,ARow);

    x_Lat := AdvStringGrid9.Cells[4, ARow];
    y_Lon := AdvStringGrid9.Cells[5, ARow];

    bEnter := False;
    Proc_SendParent_ADV3(ARow + 1, True);

    if AdvStringGrid9.Cells[4, ARow] = '' then Exit;
    pActiveEditFocus(True);

    if GS_MAP_AREA_AUTOSHOW then
    begin
      if x_Lat = '' then Exit;
      if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
      if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
      else
      begin
        WGS84ToBessel(y_Lon, x_Lat);
        OnMoveMap(ws_Lon, ws_Lat);
      end;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid9DblClickCell Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid9DblClickCell Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.AdvStringGrid9KeyUp(Sender: TObject; var Key: Word;
	Shift: TShiftState);
var iRcIdx : integer;
    x_Lat, y_Lon : string;
begin
  SetDebugeWrite('JON30.AdvStringGrid9KeyUp');
  try
		pnl_PoiAddress.Visible := False;
    if AdvStringGrid9.Cells[0,0] = '' then Exit;

    if ( ssCtrl in Shift) and ( Key = VK_UP ) then
    begin
      if AdvStringGrid8.Cells[0,1] <> '' then
      begin
        AdvStringGrid8.ShowSelection := True;
        AdvStringGrid7.ShowSelection := False;
        AdvStringGrid9.ShowSelection := False;
        AdvStringGrid8.SetFocus;

        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid8.GetRealRow;
          x_Lat := AdvStringGrid8.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid8.Cells[5, iRcIdx];
          if x_Lat = '' then exit;
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end else
      if AdvStringGrid7.Cells[0,0] <> '' then
      begin
        AdvStringGrid8.ShowSelection := False;
        AdvStringGrid7.ShowSelection := True;
        AdvStringGrid9.ShowSelection := False;
        AdvStringGrid7.SetFocus;

        if GS_MAP_AREA_AUTOSHOW then
        begin
          iRcIdx := AdvStringGrid7.GetRealRow;
          AdvStringGrid7.FocusCell(0,iRcIdx);
          x_Lat := AdvStringGrid7.Cells[1, iRcIdx];
          y_Lon := AdvStringGrid7.Cells[2, iRcIdx];

          if x_Lat = '' then exit;
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      A3UP_chk := False;
    end else
    if Key = VK_RETURN then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid9.GetRealRow;
      if iRcIdx > -1 then
      begin
        x_Lat := AdvStringGrid9.Cells[4, iRcIdx];
        y_Lon := AdvStringGrid9.Cells[5, iRcIdx];
        bEnter := False;
        Proc_SendParent_ADV3(iRcIdx + 1, True);
        pActiveEditFocus(True);
			end;
    end else
    if Key = VK_UP then
    begin
      Key := 0;
      iRcIdx := AdvStringGrid9.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid9.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid9.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
      if (AdvStringGrid9.GetRealRow = 0) and (A3UP_chk) then
      begin
        if AdvStringGrid8.Cells[0,1] <> '' then
        begin
          AdvStringGrid8.ShowSelection := True;
          AdvStringGrid7.ShowSelection := False;
          AdvStringGrid9.ShowSelection := False;
          AdvStringGrid8.SetFocus;
        end else
        if AdvStringGrid7.Cells[0,0] <> '' then
        begin
          AdvStringGrid8.ShowSelection := False;
          AdvStringGrid7.ShowSelection := True;
          AdvStringGrid9.ShowSelection := False;
          AdvStringGrid7.FocusCell(0,0);
          AdvStringGrid7.SetFocus;
        end;
        A3UP_chk := False;
      end else
      if (AdvStringGrid9.GetRealRow = 0) then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid9.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid9.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
        A3UP_chk := True;
      end;
    end else
    if Key = VK_DOWN then
    begin
      A3UP_chk := False;
      Key := 0;
      iRcIdx := AdvStringGrid9.GetRealRow;
      if iRcIdx >= 1 then
      begin
        if GS_MAP_AREA_AUTOSHOW then
        begin
          x_Lat := AdvStringGrid9.Cells[4, iRcIdx];
          y_Lon := AdvStringGrid9.Cells[5, iRcIdx];
          if Length(x_Lat) < 9 then x_Lat := '0' + x_Lat;
          if GS_SEARCH_NAVER_MAP then OnNaverMoveMap(y_lon, x_lat)
          else
          begin
            WGS84ToBessel(y_Lon, x_Lat);
            OnMoveMap(ws_Lon, ws_Lat);
          end;
        end;
      end;
    end else
    if Key in [VK_Space] then
    begin
      if lcsActiveEdit = 'meoStartArea' then
      begin
        pSetFocusStart;
      end else
      if lcsActiveEdit = 'meoEndArea' then
      begin
        pSetFocusEnd;
      end else
      if lcsActiveEdit = 'meoViaArea' then
      begin
        pSetFocusVia;
      end else
      if lcsActiveEdit = 'meoStartAreaCUT' then
        Frm_CUT011.meoStartAreaCUT.SetFocus
      else
			if lcsActiveEdit = 'meoEndAreaCUT' then
				Frm_CUT011.meoEndAreaCUT.SetFocus
			else
			if lcsActiveEdit = 'meoStartAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoStartAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoEndAreaWOR11' then
			begin
				// ��ġ���� ���� �� �ڵ���� ��� �߰�
				Frm_WOR11.meoEndAreaWOR11.SetFocus;
			end else
			if lcsActiveEdit = 'meoCallBell' then
				Frm_BTN01.meoCallBellArea.SetFocus;
    end;
  except on e: exception do
    begin
      Log('AdvStringGrid9KeyUp Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'AdvStringGrid9KeyUp Error :' + E.Message);
    end;
  end;
end;

function TFrm_JON30.fChange_Poi_Do(vSido: String): String;
begin
  if vSido = '����Ư����' then          Result := '����'
  else if vSido = '��⵵' then         Result := '���'
  else if vSido = '��õ������' then     Result := '��õ'
  else if vSido = '��û����' then       Result := '�泲'
  else if fSejongCheck(vSido) then      Result := '�泲' //����Ư����ġ��
  else if vSido = '��û�ϵ�' then       Result := '���'
  else if vSido = '������'   then       Result := '����'
  else if vSido = '���󳲵�' then       Result := '����'
  else if vSido = '����ϵ�' then       Result := '����'
  else if vSido = '��󳲵�' then       Result := '�泲'
  else if vSido = '���ϵ�' then       Result := '���'
  else if vSido = '����Ư����ġ��' then Result := '����'
  else if vSido = '����������' then     Result := '����'
  else if vSido = '�뱸������' then     Result := '�뱸'
  else if vSido = '���ֱ�����' then     Result := '����'
  else if vSido = '�λ걤����' then     Result := '�λ�'
  else if vSido = '��걤����' then     Result := '���'
  else Result := '';
end;

//--------  ���� �Է��� ���� ������ �˻� -----------//
procedure TFrm_JON30.proc_LocalMapPOI_Data_Select_Mult;
var
  sFW : string;
  n1  : integer;
begin
  SetDebugeWrite('JON30.proc_LocalMapPOI_Data_Select_Mult');
  try
    sFW := gTFindData.sFullWord;

    GT_MAPLocal_RLT_R.slCity.Clear;
    GT_MAPLocal_RLT_R.slWard.Clear;
    GT_MAPLocal_RLT_R.slStre.Clear;
    GT_MAPLocal_RLT_R.slSSub.Clear;
    GT_MAPLocal_RLT_R.slSPOI.Clear;
    GT_MAPLocal_RLT_R.slMapX.Clear;
    GT_MAPLocal_RLT_R.slMapY.Clear;

    //--------------------------------------------------------------------------------------------------
    //  ���� �Է��� �������� ��ȸ
    //--------------------------------------------------------------------------------------------------
    if GT_MAPLocal.slCity.Count > 0 then
    begin
      for n1:= 0 to GT_MAPLocal.slSSub.Count-1 do
      begin
        if (Pos(sFW, StringReplace(GT_MAPLocal.slSSub.Strings[n1], '/', '', [rfReplaceAll])) > 0) then
        begin
          try
            GT_MAPLocal_RLT_R.slCity.Add(GT_MAPLocal.slCity[n1]);
            GT_MAPLocal_RLT_R.slWard.Add(GT_MAPLocal.slWard[n1]);
            GT_MAPLocal_RLT_R.slStre.Add(GT_MAPLocal.slStre[n1]);
            GT_MAPLocal_RLT_R.slSSub.Add(GT_MAPLocal.slSSub[n1]);
            GT_MAPLocal_RLT_R.slSPOI.Add(GT_MAPLocal.slSPOI[n1]);
            GT_MAPLocal_RLT_R.slMapX.Add(GT_MAPLocal.slMapX[n1]);
            GT_MAPLocal_RLT_R.slMapY.Add(GT_MAPLocal.slMapY[n1]);
          except
          end;
        end;
      end;
    end;
  except on e: exception do
    begin
      Log('proc_LocalMapPOI_Data_Select_Mult Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'proc_LocalMapPOI_Data_Select_Mult Error :' + E.Message);
    end;
  end;
end;

// �˻� �κ��� �˻��� ����� �׸��忡 ��´�.
procedure TFrm_JON30.Proc_LocalMap_ScoreResult;
var
  j : Integer;
  iFK_1, iWScore : integer;
  sTmp, sT_1, sT_3 : string;
  iLoWSco : Currency;
begin
  SetDebugeWrite('JON30.Proc_LocalMap_ScoreResult');
  try
    // hit ī��Ʈ�� �Ѵ�.
    j := 0;
    while (j <= GT_MAPLocal_RLT.slCity.Count-1) do
    begin
//        if j > 100 then break;            2017.07.04 2�ڸ���Ī �˻��� �ȵǼ� �ּ� ó��

        iLoWSco := StrToCurr( DistCalc(Area_CenterLat, Area_CenterLon, GT_MAPLocal_RLT.slMapX[j], GT_MAPLocal_RLT.slMapY[j]) );
        iLoWSco := 900 - iLoWSco;

        sTmp := Copy(WideString(gTFindData.sFullWord),1,3);

        if Pos(sTmp, StringReplace(GT_MAPLocal_RLT.slSSub[j],'/','',[rfReplaceAll])) = 1 then // 20130522   Ǯ��Ī�� '/' �����ϰ� ����

          iWScore := 12      //  7 --> 12
        else
          iWScore := 3;      //  3 --> 7

        sT_1  := StringReplace(GT_MAPLocal_RLT.slSSub[j],'/','',[rfReplaceAll]);    // 20130522   Ǯ��Ī�� '/' �����ϰ� ����
        iFK_1 := (55 - length(sT_1)) + iWScore;

        // Full Keyword �պκ� ��Ī ����.
        // -------------------------------
        if gTFindData.sFullWord = sT_1 then
          iFK_1 := iFK_1 + ( 155 * 25 )    // �˻���� Ǯ��Ī�� �����ο�.
        else if FastPos(gTFindData.sFullWord, sT_1, Length(gTFindData.sFullWord), Length(sT_1), 1) = 1 then
          iFK_1 := iFK_1 + 150;   // �˻����� ���ۺ� ���� ��Ī�� �����ο�.
                                 // ��) ���ų���� --> ���ų���Ÿ� : �պκи�Ī, ���ų���� --> �ų���Ÿ� : ���Ī.

        if gTFindData.sFindWord = sT_1 then
          iFK_1 := iFK_1 + 151;   // �˻���� Ǯ��Ī�� �����ο�.

        if Pos(gTFindData.sFullWord, sT_1) > 0 then
          iFK_1 := iFK_1 + (length(gTFindData.sFullWord) * 25);   // �˻���� Ǯ��Ī�� �����ο�.

        if Pos(sT_1, gTFindData.sFullWord) > 0 then
          iFK_1 := iFK_1 + (length(sT_1) * 25);   // �˻���� Ǯ��Ī�� �����ο�.


        //if gStreeAddr.sA_FindKey <> '' then
        //begin    // �õ�,�ñ���,���鵿 �ڵ尪 ��.
          iFK_1 := fnc_AreaMatchingScoreCount_localmap(iFK_1, j);
        //end;

        sT_3 := '999999' + IntToStr(j);
        sT_3 := Copy(sT_3, Length(sT_3)-6, 7);

        if GB_365System then iFK_1 := 0;  // ����365�� �Ÿ����θ� ��Ʈ

        sTmp := 'FK:' + IntToStr(iFK_1) + ', WS:' + IntToStr(iWScore) +', Km:' + format('%7f',[iLoWSco]) + '; ';
        fpoi_Add(iFK_1,format('%7f',[iLoWSco]), sT_3, GT_MAPLocal_RLT.slSSub[j], '', GT_MAPLocal_RLT.slCity[j], GT_MAPLocal_RLT.slWard[j], GT_MAPLocal_RLT.slStre[j], GT_MAPLocal_RLT.slMapX[j], GT_MAPLocal_RLT.slMapY[j], '', '', sTmp);

      inc(j);
    end;
  except on e: exception do
    begin
      Log('Proc_LocalMap_ScoreResult Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Proc_LocalMap_ScoreResult Error :' + E.Message);
    end;
  end;
end;

// [POI���øʵ�����] ���� ���� ���Ͽ� ������ �ش�.   120625.
function TFrm_JON30.fnc_AreaMatchingScoreCount_localmap(iScore, idx:integer) : integer;
var i_1 : integer;
begin
  try
    Result := iScore;
    i_1 := 0;

    while (i_1 <= 10) do
    begin
      if gSteAdr[i_1].iDistKm < 90 then
      begin
        if (Pos(copy(wideString(GT_MAPLocal_RLT.slStre[idx]),1,2), gSteAdr[i_1].sA_Stree2) > 0) then    // 20130614  LYB  '��' ���� �߰�
        begin
          if (GT_MAPLocal_RLT.slStre[idx] = gSteAdr[i_1].sA_Stree2) then
            Result := Result + 20;

          if gStreeAddr.sNowAreaCD = '5' then
            Result := Result + 60
          else
            Result := Result + 40;

          Result := Result + Search_Area_Km_AddScore(gSteAdr[i_1].iDistKm);
          //break;
        end else
        if (Pos(copy(wideString(GT_MAPLocal_RLT.slStre[idx]),1,2), gSteAdr[i_1].sA_Street) > 0) then
        begin
          if (GT_MAPLocal_RLT.slStre[idx] = gSteAdr[i_1].sA_Street) then
            Result := Result + 20;

          if gStreeAddr.sNowAreaCD = '4' then
            Result := Result + 60
          else
            Result := Result + 40;

          Result := Result + Search_Area_Km_AddScore(gSteAdr[i_1].iDistKm);
        end else
        if (Pos(copy(wideString(GT_MAPLocal_RLT.slWard[idx]),1,2), gSteAdr[i_1].sA_Ward2) > 0) then
        begin
          if gStreeAddr.sNowAreaCD = '3' then
            Result := Result + 30
          else
            Result := Result + 15;

          Result := Result + Search_Area_Km_AddScore(gSteAdr[i_1].iDistKm);
        end else
        if (Pos(copy(wideString(GT_MAPLocal_RLT.slWard[idx]),1,2), gSteAdr[i_1].sA_Ward) > 0) then
        begin
          if gStreeAddr.sNowAreaCD = '2' then
            Result := Result + 18
          else
            Result := Result + 10;

          Result := Result + Search_Area_Km_AddScore(gSteAdr[i_1].iDistKm);
        end  else
        if (Length(gSteAdr[i_1].sA_City) > 0) and (GT_MAPLocal_RLT.slCity[idx] = gSteAdr[i_1].sA_City) then
        begin
          if gStreeAddr.sNowAreaCD = '1' then
            Result := Result + 10
          else
            Result := Result + 5;

          Result := Result + Search_Area_Km_AddScore(gSteAdr[i_1].iDistKm);
        end;
      end;
      inc(i_1);
    end;
    Result := Result + iScore;
  except on e: exception do
    begin
      Log('fnc_AreaMatchingScoreCount_localmap Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'fnc_AreaMatchingScoreCount_localmap Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.N6Click(Sender: TObject);
Var sX, sY, sHttp : string;
begin
  SetDebugeWrite('JON30.N6Click');
	BesselToWGS84(FLon, FLat);

  sX := getDEGREE('0'+ FloatToStr(sw_Lat));
  sY := getDEGREE(FloatToStr(sw_Lon));
	sHttp := 'https://naveropenapi.apigw.ntruss.com/map-reversegeocode/v2/gc?coords=' + sY + ',' + sX 
				 + '&output=json&orders=addr';

	sStartEndG := 'S';
	cp_Naver_cloud(sHttp);
end;

procedure TFrm_JON30.N7Click(Sender: TObject);
Var sX, sY, sHttp : string;
begin
	SetDebugeWrite('JON30.N7Click');
	BesselToWGS84(FLon, FLat);

	sX := getDEGREE('0'+ FloatToStr(sw_Lat));
	sY := getDEGREE(FloatToStr(sw_Lon));
	sHttp := 'https://naveropenapi.apigw.ntruss.com/map-reversegeocode/v2/gc?coords=' + sY + ',' + sX 
				 + '&output=json&orders=addr';

  sStartEndG := 'E';
	cp_Naver_cloud(sHttp);
end;

procedure TFrm_JON30.NErrorPOIClick(Sender: TObject);
begin
  if lcsActiveEdit = 'meoStartArea' then
  begin
		Proc_POIRequest(1, Frm_Main.Frm_JON01N[Self.Tag].lcsSta1, Frm_Main.Frm_JON01N[Self.Tag].lcsSta2
										 , Frm_Main.Frm_JON01N[Self.Tag].lcsSta3, Frm_Main.Frm_JON01N[Self.Tag].cxtStartAreaDetail.Text
										 , Frm_Main.Frm_JON01N[Self.Tag].lcsStaDocId, Frm_Main.Frm_JON01N[Self.Tag].cxtStartYval.Text
										 , Frm_Main.Frm_JON01N[Self.Tag].cxtStartXval.Text);
	end else
	if lcsActiveEdit = 'meoEndArea' then
	begin
		Proc_POIRequest(1, Frm_Main.Frm_JON01N[Self.Tag].lcsEnd1, Frm_Main.Frm_JON01N[Self.Tag].lcsEnd2
										 , Frm_Main.Frm_JON01N[Self.Tag].lcsEnd3, Frm_Main.Frm_JON01N[Self.Tag].cxtEndAreaDetail.Caption
										 , Frm_Main.Frm_JON01N[Self.Tag].lcsEndDocId, Frm_Main.Frm_JON01N[Self.Tag].cxtEndYval.Text
										 , Frm_Main.Frm_JON01N[Self.Tag].cxtEndXval.Text);
	end;
end;

procedure TFrm_JON30.NPOIADDClick(Sender: TObject);
begin
  Proc_POIRequest(0, '', '', '', '', '', '', '');

  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState();
  mCenterLL := mCtrlState.GetLLCenter();
  Frm_jon56.OnMoveMap(mCenterLL.GetX,mCenterLL.GetY);
  Frm_jon56.Mark_Symbol(FLon, FLat, 5, '', '', '');
  Frm_jon56.BesselToWGS84(FLon, FLat);
  Frm_jon56.cp_Naver;
  Frm_jon56.cb_00.Down := False;
end;

procedure TFrm_JON30.mMapPOI_Click(ASender: TObject; const POI: IXPOIItem;
  nFlag, X, Y: Integer);
var
    pt: TPoint;
    sWk_info, sKey, sGubun : string;
    iRow : Integer;
begin
  SetDebugeWrite('JON30.mMapPOI_Click');
  try
    GetCursorPos(pt);
    sWk_info := poi.GetCaption();
    sWk_Caption := sWk_Info;
    sKey := poi.GetString();

    if Copy(AnsiString(sKey), 1, 1) <> 'P' then
    begin
      MenuItem4.Caption := sWk_info + '���Բ� ����';
      MenuItem1.Caption := '���������ȸ(' + sWk_info + ')';
      sWk_sabun := copy(sWk_info, pos('(', sWk_info) + 1, pos(')', sWk_info) - pos('(', sWk_info) - 1);
      sWk_infoC := copy(sWk_info, 1, pos('(', sWk_info) - 1);
      pm_WKmenu.Popup(pt.X, pt.Y);
    end else
    begin
      sGubun := Copy(sKey, 1, 3);
			if Length(sKey) = 4 then
				iRow := StrToIntDef(Copy(sKey, 4, 1), 0)
			else
				iRow := StrToIntDef(Copy(sKey, 4, 2), 0);

      if sGubun = 'PSA' then
      begin
        AdvStringGrid1.Row := iRow;
        AdvStringGrid1ClickCell(AdvStringGrid1, iRow, 0);
        AdvStringGrid1.ShowSelection := True;
      end else
      if sGubun = 'PSB' then
      begin
        AdvStringGrid3.Row := iRow;
        AdvStringGrid3ClickCell(AdvStringGrid3, iRow, 0);
        AdvStringGrid3.ShowSelection := True;
      end else
      if sGubun = 'PEA' then
      begin
        AdvStringGrid5.Row := iRow;
        AdvStringGrid5ClickCell(AdvStringGrid5, iRow, 0);
        AdvStringGrid5.ShowSelection := True;
      end else
      if sGubun = 'PEB' then
      begin
        AdvStringGrid6.Row := iRow;
        AdvStringGrid6ClickCell(AdvStringGrid6, iRow, 0);
        AdvStringGrid6.ShowSelection := True;
      end else
      if sGubun = 'PVA' then
      begin
        AdvStringGrid8.Row := iRow;
        AdvStringGrid8ClickCell(AdvStringGrid8, iRow, 0);
        AdvStringGrid8.ShowSelection := True;
      end else
      if sGubun = 'PVB' then
      begin
        AdvStringGrid9.Row := iRow;
        AdvStringGrid9ClickCell(AdvStringGrid9, iRow, 0);
        AdvStringGrid9.ShowSelection := True;
      end;
    end;
  except on e: exception do
    begin
      Log('mMapPOI_Click Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'mMapPOI_Click Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.mMapUI_MouseHover(ASender: TObject; const Obj: IXUIObj);
begin
  if Obj.GetUIID = 11 then // Level Bar BG
     Obj.SetAlpha(0)
  else
  if ( ( Obj.GetUIID > 11 ) And ( Obj.GetUIID < 27 ) ) then
     Obj.GetParent().SetAlpha(0);
end;

procedure TFrm_JON30.mMapUI_MouseLeave(ASender: TObject; const Obj: IXUIObj);
begin
  if Obj.GetUIID = 11 then // Level Bar BG
     Obj.SetAlpha(70)
  else
  if ( ( Obj.GetUIID > 11 ) And ( Obj.GetUIID < 27 ) ) then
     Obj.GetParent().SetAlpha(70);
end;

procedure TFrm_JON30.pm_DongSelectPopup(Sender: TObject);
begin
	if ( lcsActiveEdit = 'meoStartArea' ) Or ( lcsActiveEdit = 'meoStartAreaCUT' ) Or ( lcsActiveEdit = 'meoStartAreaWOR11' ) then
  begin
    if Trim(AdvStringGrid1.Cells[0, AdvStringGrid1.Row]) = '' then Exit;
  end else
	if ( lcsActiveEdit = 'meoEndArea' ) Or ( lcsActiveEdit = 'meoEndAreaCUT' )  Or ( lcsActiveEdit = 'meoEndAreaWOR11' )  Or ( lcsActiveEdit = 'meoCallBell' ) then
	begin
    if Trim(AdvStringGrid5.Cells[0, AdvStringGrid5.Row]) = '' then Exit;
  end else
  if ( lcsActiveEdit = 'meoViaArea' ) then
  begin
    if Trim(AdvStringGrid8.Cells[0, AdvStringGrid8.Row]) = '' then Exit;
  end;
end;

procedure TFrm_JON30.pm_WKmenuPopup(Sender: TObject);
begin
	if TCK_USER_PER.JON_Recon = '1' then
  begin
    MenuItem4.Enabled := False;
  end
	else
		MenuItem4.Enabled := True;
end;

procedure TFrm_JON30.pnlBottomResize(Sender: TObject);
Var iAutoSize : Integer;
begin
  iAutoSize := Trunc( (pnlBottom.Width - 85) / 3);

  AdvStringGrid2.ColCount := 12;
  AdvStringGrid2.ColWidths[0] := iAutoSize;
  AdvStringGrid2.ColWidths[4] := iAutoSize;
  AdvStringGrid2.ColWidths[8] := iAutoSize;

  AdvStringGrid4.ColWidths[0] := iAutoSize;
  AdvStringGrid4.ColWidths[4] := iAutoSize;
  AdvStringGrid4.ColWidths[8] := iAutoSize;

  AdvStringGrid7.ColWidths[0] := iAutoSize;
  AdvStringGrid7.ColWidths[4] := iAutoSize;
  AdvStringGrid7.ColWidths[8] := iAutoSize;
end;

procedure TFrm_JON30.PnlClient1Resize(Sender: TObject);
begin
  AdvStringGrid1L.Left := PnlClient1.Width  - ( AdvStringGrid1L.Width + 20 );
  AdvStringGrid1L.Top  := PnlClient1.Height - ( AdvStringGrid1L.Height );

  BtnLClose1.Left      := AdvStringGrid1L.Left + AdvStringGrid1L.Width - (BtnLClose1.Width+2);
  BtnLClose1.Top       := AdvStringGrid1L.Top - BtnLClose1.Height;
end;

procedure TFrm_JON30.PnlClient2Resize(Sender: TObject);
begin
  AdvStringGrid5L.Left := PnlClient2.Width  - ( AdvStringGrid5L.Width + 20 );
  AdvStringGrid5L.Top  := PnlClient2.Height - ( AdvStringGrid5L.Height );

  BtnLClose2.Left      := AdvStringGrid5L.Left + AdvStringGrid5L.Width - (BtnLClose2.Width+2);
  BtnLClose2.Top       := AdvStringGrid5L.Top - BtnLClose2.Height;
end;

procedure TFrm_JON30.PnlClient3Resize(Sender: TObject);
begin
  AdvStringGrid8L.Left := PnlClient3.Width  - ( AdvStringGrid8L.Width + 20 );
  AdvStringGrid8L.Top  := PnlClient3.Height - ( AdvStringGrid8L.Height );

  BtnLClose3.Left      := AdvStringGrid8L.Left + AdvStringGrid8L.Width - (BtnLClose3.Width+2);
  BtnLClose3.Top       := AdvStringGrid8L.Top - BtnLClose3.Height;
end;

procedure TFrm_JON30.pSelect_Portal( vGubun : String );
begin
	if vGubun = 'D' then
  begin
    GS_PORTAL_SEL    := 'D';

    if GB_DARKMODE then
    begin
      AdvStringGRid3.Color := $00004D4D;
      AdvStringGRid6.Color := AdvStringGRid3.Color;
      AdvStringGRid9.Color := AdvStringGRid3.Color;
    end else
    begin
      AdvStringGRid3.Color := $0080FFFF;
      AdvStringGRid3.SelectionColor := $0046FFFF;

      AdvStringGRid6.Color := AdvStringGRid3.Color;
      AdvStringGRid6.SelectionColor := AdvStringGRid3.SelectionColor;

      AdvStringGRid9.Color := AdvStringGRid3.Color;
      AdvStringGRid9.SelectionColor := AdvStringGRid3.SelectionColor;
    end;
  end else
  if vGubun = 'N' then
  begin
    GS_PORTAL_SEL    := 'N';

    if GB_DARKMODE then
    begin
      AdvStringGRid3.Color := $00234600;
      AdvStringGRid6.Color := AdvStringGRid3.Color;
      AdvStringGRid9.Color := AdvStringGRid3.Color;
    end else
    begin
      AdvStringGRid3.Color := $00B1DCCB;
      AdvStringGRid3.SelectionColor := $0088CAAF;

      AdvStringGRid6.Color := AdvStringGRid3.Color;
      AdvStringGRid6.SelectionColor := AdvStringGRid3.SelectionColor;

      AdvStringGRid9.Color := AdvStringGRid3.Color;
      AdvStringGRid9.SelectionColor := AdvStringGRid3.SelectionColor;
    end;
  end else
  if vGubun = 'A' then
  begin
    GS_PORTAL_SEL    := 'A';

    if GB_DARKMODE then
    begin
      AdvStringGRid3.Color := $00333333;
      AdvStringGRid6.Color := AdvStringGRid3.Color;
      AdvStringGRid9.Color := AdvStringGRid3.Color;
    end else
    begin
      AdvStringGRid3.Color := $00E9F1FE;
      AdvStringGRid3.SelectionColor := $00C4DBFD;

      AdvStringGRid6.Color := AdvStringGRid3.Color;
      AdvStringGRid6.SelectionColor := AdvStringGRid3.SelectionColor;

      AdvStringGRid9.Color := AdvStringGRid3.Color;
      AdvStringGRid9.SelectionColor := AdvStringGRid3.SelectionColor;
    end;
  end;
	Grid_Init(lcsActiveEdit, 3);
end;

procedure TFrm_JON30.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON30.mniWORCallingPDAClick(Sender: TObject);
var
  ls_TxLoad, rv_str, sWkHp, KeyNum: string;
  ls_rxxml: wideString;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  SetDebugeWrite('JON30.mniWORCallingPDAClick');
  try
    if sWk_sabun = '' then
    begin
      GMessagebox('������ ������ �����ϴ�.', CDMSE);
      Exit;
    end;

    try
      ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003',[rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '3', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sWk_sabun, [rfReplaceAll]);

      if (GS_PRJ_AREA = 'O') and (Pos('��', sWk_Caption) = 1) and (GT_USERIF.WKVPhone = 'y') then
         ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', 'y', [rfReplaceAll])
      else
         ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', '', [rfReplaceAll]);

			ls_TxLoad := StringReplace(ls_TxLoad, 'Conf_slipString', '', [rfReplaceAll]); //������ȣ�߰�

			sWkHp := '';
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
                xDom := Nil;
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
      GMessagebox('������ �޴��� ��ȣ��(��) ����ϼ���', CDMSE);
      Exit;
    end;

    if Trim(GT_POSS_KEYNUM) <> '' then begin
      KeyNum := StringReplace(GT_POSS_KEYNUM, '-', '', [rfReplaceAll]);
    end else begin  // 090422. CDs. ��� ��Ȳ�ǹ�ȣ�� ������� ���ÿ����� ��ǥ��ȣ�� ��ȭ�ɱ�.
      KeyNum := StringReplace(GT_OrderInfo[GI_JON03_LastFromIdx].KeyNumber, '-', '', [rfReplaceAll]);
    end;

    SetDebugeWrite('POI�� �����ȭ�ɱ� ' + sWkHp);
    Frm_Main.pCallingCID(sWkHp, KeyNum);

  except on e: exception do
    begin
      Log('mniWORCallingPDAClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'mniWORCallingPDAClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.MenuItem1Click(Sender: TObject);
begin
  SetDebugeWrite('JON30.MenuItem1Click');
  try
    if Not Assigned(Frm_JON32) then Frm_JON32 := TFrm_JON32.Create(Nil);
    Frm_JON32.Jon03Tag := Self.Tag;
  	Frm_JON32.Proc_Flag := 2;
	  Frm_JON32.sWk_sabun32 := sWk_sabun;
		Frm_JON32.sWkName := '';
		Frm_JON32.sKeyNumber := '';
  	Frm_JON32.Show;
  except on e: exception do
    begin
      Log('MenuItem1Click Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'MenuItem1Click Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.MenuItem5Click(Sender: TObject);
var ls_Rcrd : TStringList;
begin
  SetDebugeWrite('JON30.MenuItem5Click');
  try
    if Not Assigned(Frm_SMS06) then Frm_SMS06 := TFrm_SMS06.Create(Nil);
  	ls_Rcrd := TStringList.Create;
  	Try
  		GetTextSeperationEx('��', proc_FindWKphone(sWk_sabun), ls_Rcrd);
  		if ls_Rcrd[1] <> '' then Frm_SMS06.cxTextEdit1.Text := ls_Rcrd[1]
                          else Frm_SMS06.cxTextEdit1.Text := ls_Rcrd[0];
  		Frm_SMS06.cxTextEdit2.Text := ls_Rcrd[2];
  		Frm_SMS06.cxMemo1.Text := '';
  		Frm_SMS06.Show;
  	finally
  		ls_Rcrd.Free;
  	end;
  Except

  end;
end;

function TFrm_JON30.proc_FindWKphone(aSabun: String): String;
var
  ls_TxLoad, rv_str, sWkHp : string;
	ls_rxxml: wideString;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  SetDebugeWrite('JON30.proc_FindWKphone');
  try
    if aSabun = '' then
    begin
      GMessagebox('����� �����ϴ�.', CDMSE);
      Exit;
    end;

    try
			ls_TxLoad := GTx_UnitXmlLoad('C015.XML');
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'HINT0003',[rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'GubunString', '3', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', aSabun, [rfReplaceAll]);

      if (GS_PRJ_AREA = 'O') and (Pos('��', sWk_Caption) = 1) and (GT_USERIF.WKVPhone = 'y') then
         ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', 'y', [rfReplaceAll])
      else
         ls_TxLoad := StringReplace(ls_TxLoad, 'VPhoneString', '', [rfReplaceAll]);

			ls_TxLoad := StringReplace(ls_TxLoad, 'Conf_slipString', '', [rfReplaceAll]); //������ȣ�߰�

      sWkHp := '';
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
              xdom := ComsDomDocument.Create;
              try
                if xdom.loadXML(ls_rxxml) then
                begin
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Accept');
                  sWkHp := lst_Result.item[0].attributes.getNamedItem('Info2').text + '��'   //�ܸ���
                         + lst_Result.item[0].attributes.getNamedItem('Info3').text + '��'   //�޴���
                         + lst_Result.item[0].attributes.getNamedItem('Info4').text + '��';  //��Ȳ��
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
        GMessagebox(PChar('Jon30[Find_WkPhone]:' + e.Message), CDMSE);
      end;
    end;
    if sWkHp = '' then
    begin
      GMessagebox('������ �޴��� ��ȣ��(��) ����ϼ���', CDMSE);
      Exit;
    end;
    Result := sWkHp;
  except on e: exception do
    begin
      Log('proc_FindWKphone Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'proc_FindWKphone Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.CSMsnRead(Sender: TObject; Socket: TCustomWinSocket);
var
   Size: Cardinal;
   Data: Pointer;
   sData, sCode : string;
   rv_str : AnsiString;
   Proc: procedure(Data: string) of object;
   slData: TStringList;
   li_LenRe : Integer;
begin
  SetDebugeWrite('JON30.CSMsnRead');
  try
    if piCSocketSize1 > 0 then
    begin // ���� ������ �б� ����..
       Screen.Cursor := crHourGlass;
       try
          // �޸� �Ҵ�.
          GetMem(Data, piCSocketSize1);

          SetLength(rv_str, piCSocketSize1);
          li_LenRe := Socket.Receivebuf(rv_str[1], piCSocketSize1);
          rv_str := Copy(rv_str, 1, li_LenRe);

          sData := rv_str;
          try // ���ڿ� ������ �Ľ�
            slData := TStringList.Create;
            slData.Text := sData;
            sCode := slData.Values['Code'];
            Proc := nil;
            TMethod(Proc).Data := Self;
            TMethod(Proc).Code := Self.MethodAddress('cp_' + sCode);
            if Assigned(Proc) then
               Proc(sData);
          finally
            slData.Free;
         end;
       finally
          Screen.Cursor := crDefault;
          FreeMem(Data);
          piCSocketSize1 := 0; // ���� ������ ������..
       end;
       Exit;
    end;
    piCSocketSize1 := 0; // ���� ������ ������..

    // �о�� ������ ������ �б�..
    Socket.ReceiveBuf(Size, SizeOf(Size));
    if (Size > 0) and (Size < 9000000) then
    begin
      piCSocketSize1 := Size; // ���� ������ ������..
    end;

  except on e: exception do
    begin
      Log('CSMsnRead Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'CSMsnRead Error :' + E.Message);
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TFrm_JON30.btnPortalEClick(Sender: TObject);
begin
	SetDebugeWrite('JON30.btn_Potal_SearchClick');
  TT2.Tag := 1;
	TT2.Interval := 1;
	TT2.Enabled  := True;
end;

procedure TFrm_JON30.btnSPoiAMoveClick(Sender: TObject);
var
	slatX, slonY, sHttp : String;
begin
	SetDebugeWrite('JON30.btnSPoiAMoveClick');
  try
    slatX := ExecuteJavaScriptGetValue(webNaverMap, 'lat');
    slonY := ExecuteJavaScriptGetValue(webNaverMap, 'lng');

    if ( Trim(slatX) = '' ) Or ( Trim(slonY) = '' ) then
    begin
			GMessagebox('���콺 ���� ��ư�� Ŭ���Ͽ� ����� ��ġ�� ������ �ּ���.', CDMSE);
			Exit;
		end;

//		sHttp := 'https://openapi.naver.com/v1/map/reversegeocode?encoding=utf-8&coordType=latlng&query=' + slonY + ',' + slatX;

//admcode : ������
//legalcode : ������
		sHttp := 'https://naveropenapi.apigw.ntruss.com/map-reversegeocode/v2/gc?coords=' + slonY + ',' + slatX 
					 + '&output=json&orders=addr';
		
    sStartEndG := 'S';
    sw_Lat  := StrToFloatDef(getWGS84(FormatFloat('0.000000', StrToFloatDef(slatX, 0))), 0);  // y ��ǥ
    sw_Lon  := StrToFloatDef(getWGS84(FormatFloat('0.000000', StrToFloatDef(slonY, 0))), 0);  // x ��ǥ
		cp_Naver_cloud(sHttp);
  except
		on e: exception do
    begin
			Log('btnSPoiAMoveClick Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'btnSPoiAMoveClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.btnSPoiMoveClick(Sender: TObject);
var
  slatX, slonY, sX, sY : String;
  ASido, AGugun, ADong, ADetail: string;
  all_W : AnsiString;
begin
  SetDebugeWrite('JON30.btnSPoiMoveClick');
  try
    slatX := ExecuteJavaScriptGetValue(webNaverMap, 'lat');
    slonY := ExecuteJavaScriptGetValue(webNaverMap, 'lng');

    if ( Trim(slatX) = '' ) Or ( Trim(slonY) = '' ) then
    begin
      GMessagebox('���콺 ���� ��ư�� Ŭ���Ͽ� ����� ��ġ�� ������ �ּ���.', CDMSE);
      Exit;
    end;

    sX  := '0'+ getWGS84(FormatFloat('0.000000', StrToFloatDef(slatX, 0)));  // y ��ǥ
    sY  := getWGS84(FormatFloat('0.000000', StrToFloatDef(slonY, 0)));  // x ��ǥ

    WGS84ToBessel(sY, sX);
    all_W := GetDongName(Ws_Lon, Ws_Lat);
    all_W := StringReplace(all_W, ' ',':', [rfReplaceAll]);

    ASido  := fChange_Poi_Do(StrToken(all_W, ':'));
    AGugun := StrToken(all_W, ':');
    ADong  := all_W;
    ADetail := '';

		Frm_Main.Frm_JON01N[Self.Tag].SetStartAreaMap(ASido, AGugun, ADong, ADetail, sX, sY);
		Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'M';
	except
    on e: exception do
    begin
			Log('btnSPoiMoveClick Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'btnSPoiMoveClick Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.btn_closeClick(Sender: TObject);
begin
	pnl_PoiAddress.Visible := False;
	if not chkUseMiniMap.checked then Self.Height := frm_Size;
end;

procedure TFrm_JON30.btn_Potal_SearchClick(Sender: TObject);
begin
  SetDebugeWrite('JON30.btn_Potal_SearchClick');
	TT2.Interval := 10;
	TT2.Enabled  := True;
end;

procedure TFrm_JON30.cxBtnFixPosClick(Sender: TObject);
Var iLeft, iTop, iValue : Integer;
begin
  try
    if Assigned(Frm_Main.Frm_JON01N[Self.Tag]) And (GB_JON_FIXEDPIN) And ( cxBtnFixPos.Down ) then
    begin
      if Frm_Main.JON01MNG[Self.Tag].Dock then
      begin
        iLeft := (Self.Left + Self.Width) - Frm_JON00.Left;
        iTop  := (Self.Top) - (Frm_JON00.Top + Frm_JON00.Height);
        if ( iLeft <= 2 ) And ( iLeft >= -2 ) then
        begin
          iValue := Self.Top - Frm_JON00.Top;
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon30Top' , iValue);
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon30Left', 0);
          GS_EnvFile.WriteBool('AcceptWin', 'Jon30Pos' , True);    // True : Left
        end else
        if ( iTop <= 2 ) And ( iTop >= -2 ) then
        begin
          iValue := Self.Left - Frm_JON00.Left;
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon30Top' , 0);
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon30Left', iValue);
          GS_EnvFile.WriteBool('AcceptWin', 'Jon30Pos' , False);  // False : Top;
        end else
        begin
          GMessagebox('����â�� �پ�������쿡�� �����ɼ��� ��� �Ҽ� �ֽ��ϴ�', CDMSI);
          cxBtnFixPos.Down := False;
          cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';
          Exit;
        end;
      end else
      begin
        iLeft := (Self.Left + Self.Width) - Frm_Main.Frm_JON01N[Self.Tag].Left;
        iTop  := (Self.Top) - (Frm_Main.Frm_JON01N[Self.Tag].Top + Frm_Main.Frm_JON01N[Self.Tag].Height);
        if ( iLeft <= 2 ) And ( iLeft >= -2 ) then
        begin
          iValue := Self.Top - Frm_Main.Frm_JON01N[Self.Tag].Top;
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon30Top' , iValue);
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon30Left', 0);
          GS_EnvFile.WriteBool('AcceptWin', 'Jon30Pos' , True);    // True : Left
        end else
        if ( iTop <= 2 ) And ( iTop >= -2 ) then
        begin
          iValue := Self.Left - Frm_Main.Frm_JON01N[Self.Tag].Left;
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon30Top' , 0);
          GS_EnvFile.WriteInteger('AcceptWin', 'Jon30Left', iValue);
          GS_EnvFile.WriteBool('AcceptWin', 'Jon30Pos' , False);  // False : Top;
        end else
        begin
          GMessagebox('����â�� �پ�������쿡�� �����ɼ��� ��� �Ҽ� �ֽ��ϴ�', CDMSI);
          cxBtnFixPos.Down := False;
          cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';
          Exit;
        end;
      end;
    end;
  except
  end;

	GS_JON30_POSFIX := cxBtnFixPos.Down;
	GS_EnvFile.WriteBool('AcceptWin', 'Jon30Fix', GS_JON30_POSFIX);

	if GS_JON30_POSFIX then cxBtnFixPos.LookAndFeel.SkinName := 'Office2010Silver'
                     else cxBtnFixPos.LookAndFeel.SkinName := 'Sharp';

	j30Top  := Self.Top;
	j30Left := Self.Left;
end;

procedure TFrm_JON30.cxButton1Click(Sender: TObject);
begin
  grpSetPoiOption.Visible := False;
end;

procedure TFrm_JON30.cxChkSchSvrClick(Sender: TObject);
begin
	if cxChkSchSvr.Checked then
	begin
		GT_DISTANCE_ST := 1;
		SR1ErrCnt := 0; SR2ErrCnt := 0; //��Žüũ�� ��Ž����Ƚ�� �ʱ�ȭ
	end else GT_DISTANCE_ST := 0;
	GS_EnvFile.WriteString('CHARGE', 'GT_DISTANCE_ST', IntToStr(GT_DISTANCE_ST));

	if GT_DISTANCE_ST = 1 then
	begin
		Frm_Main.Frm_JON01N[Self.Tag].tmrThRealDis.Tag := 0;
		Frm_Main.Frm_JON01N[Self.Tag].tmrDistance.Enabled := True;

		GT_CHARGE_CAL := 1;
		GS_EnvFile.WriteString('CHARGE', 'CAL', IntToStr(GT_CHARGE_CAL));
	end;

  pShowOption;
end;

procedure TFrm_JON30.cp_Naver_cloud(sHttp: String);
var sAddr: string;
		slTmp : TStringList;
		ASido, AGugun, ADong : string;
begin
	SetDebugeWrite('JON30.cp_Naver_cloud');
  try
		sAddr := fGetNaverAddress_cloud('H', sHttp);
		slTmp := TStringList.Create;
		try
			GetTextSeperationEx2(' ', sAddr, slTmp);    //''����Ư����ġ��  ������ ���߸� 82''     '����Ư����ġ��  ��ġ���� ���︮ 123'     '����Ư���� ���ʱ� ��赿  984-1'

      if slTmp.Count >= 3 then
			begin
				ASido  := fChange_Poi_Do(slTmp[0]);

				//'����Ư����ġ��  ' ���� 20190627 KHS
				if (slTmp.Count > 1) and ( fSejongCheck(slTmp[0]) ) then  // 20121206 LYB �߰�
				begin
					if ((System.StrUtils.RightStr(slTmp[2], 1) = '��') Or
							(System.StrUtils.RightStr(slTmp[2], 1) = '��')) then
          begin
            AGugun := '������';
						ADong  := slTmp[2] + slTmp[3];  // ���鸮
          end else
  				if (System.StrUtils.RightStr(slTmp[2], 1) = '��') then
          begin
            AGugun := '������';
            ADong  := slTmp[2];     // ��
          end else
          begin
            AGugun := '������';
            ADong  := '';           //��
          end;
        end else
				begin
					if ((System.StrUtils.RightStr(slTmp[2], 1) = '��') Or
							(System.StrUtils.RightStr(slTmp[2], 1) = '��') Or
							(System.StrUtils.RightStr(slTmp[2], 1) = '��')) then
					begin
						AGugun := slTmp[1]+slTmp[2];   //�ñ���
						if ((System.StrUtils.RightStr(slTmp[3], 1) = '��') Or
								(System.StrUtils.RightStr(slTmp[3], 1) = '��')) And ( slTmp.Count > 4 ) then
							ADong := slTmp[3]+slTmp[4]  //����+��
						else
							ADong := slTmp[3];          //��
					end else
					if ((System.StrUtils.RightStr(slTmp[2], 1) = '��') Or
							(System.StrUtils.RightStr(slTmp[2], 1) = '��')) then
          begin
            AGugun  := slTmp[1];            //�ñ���
            ADong := slTmp[2] + slTmp[3]; //����+��
          end else
          begin
            AGugun  := slTmp[1];            //�ñ���
            ADong := slTmp[2];            //��
          end;
        end;
      end;
    finally
      slTmp.Free;
    end;

		if sStartEndG = 'S' then
    begin
			Frm_Main.Frm_JON01N[Self.Tag].sBHSAddr := ASido + ' ' + AGugun + ' ' + ADong;
			Frm_Main.Frm_JON01N[Self.Tag].SetStartAreaMapNew(ASido, AGugun, ADong, '','0'+ FloatToStr(sw_Lat),FloatToStr(sw_Lon))
		end else
		if sStartEndG = 'E' then
		begin
			Frm_Main.Frm_JON01N[Self.Tag].sBHEAddr := ASido + ' ' + AGugun + ' ' + ADong;
			Frm_Main.Frm_JON01N[Self.Tag].SetEndAreaMapNew(ASido, AGugun, ADong, '','0'+ FloatToStr(sw_Lat),FloatToStr(sw_Lon))
    end;

    if ( sStartEndG = 'S' ) Or ( sStartEndG = 'E' ) then
    begin
			Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'M'
		end;
	except
		on e: exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_JON30.cp_200(Data: string);
var
   sMsg : string;
   sTmp : TStringList;
   ASido, AGugun, ADong, ADetail : string;
begin
  SetDebugeWrite('JON30.cp_200');
  try
    GS_ReadMsg.Text := Data;

    sTmp := TStringList.Create;
    GetTextSeperationEx('/', GS_ReadMsg.Values['addr'], sTmp);

    if sTmp[0] = '000000' then
    begin
      GMessagebox('��ȸ �� ���� �߻�', CDMSE);
      Exit;
    end;

    sMsg := sTmp[0] + ' ';
    sMsg := sMsg + sTmp[1] + ' ';
    sMsg := sMsg + sTmp[2] + ' ';
    sMsg := sMsg + sTmp[3] + ' ';
    if sTmp[4] = '2' then sMsg := sMsg + '�� ';

    if sTmp[6] = '' then
    begin
      sMsg := sMsg + sTmp[5] + ' ';
    end else
    begin
      sMsg := sMsg + sTmp[5] + '-';
      sMsg := sMsg + sTmp[6];
    end;

    if sStartEndG = 'S' then
    begin
			Frm_Main.Frm_JON01N[Self.Tag].sBHSAddr := sMsg;
		end else
		begin
			Frm_Main.Frm_JON01N[Self.Tag].sBHEAddr := sMsg;
    end;

    ASido  := fChange_Poi_Do(sTmp[0]);
    AGugun := sTmp[1];

    if AGugun = '������' then      // 20121205  LYB ����
    begin
      ADong  := sTmp[2] + sTmp[3];
    end else
      ADong  := sTmp[2] + sTmp[3];    // 20130614  LYB ����  '��' ���� ǥ��

    ADetail := sTmp[5] + ' ' + sTmp[6];

    if sStartEndG = 'S' then
    begin
			Frm_Main.Frm_JON01N[Self.Tag].SetStartAreaMapNew(ASido, AGugun, ADong, ADetail,'0'+ FloatToStr(sw_Lat),FloatToStr(sw_Lon));
		end else
		if sStartEndG = 'E' then
		begin
			Frm_Main.Frm_JON01N[Self.Tag].SetEndAreaMapNew(ASido, AGugun, ADong, ADetail,'0'+ FloatToStr(sw_Lat),FloatToStr(sw_Lon));
    end else
    begin
      gsGetJibunAddr := sMsg;
    end;

    if ( sStartEndG = 'S' ) Or ( sStartEndG = 'E' ) then
    begin
			Frm_Main.Frm_JON01N[Self.Tag].GS_Grid_DEP := 'M';
    end;
  finally
    sTmp.Free;
    CSMsn.Active := False;
  end;
end;

procedure TFrm_JON30.GetJibunAddr;
begin
  SetDebugeWrite('JON30.GetJibunAddr');
  try
    if Not CSMsn.Active then
    begin
//-      CSMsn.Host := '203.251.202.42';
      CSMsn.Host := '203.251.202.15';//'203.251.202.26';   // ������������ �̰�  20150423 LYB
      CSMsn.Port := 17012;
      CSMsn.Active := True;
    end;

  except
    ShowMessage('���� ���� ����');
  end;
end;

procedure TFrm_JON30.SocketSend(ss_SendText: TStringList; socket: TClientSocket);
var
   Size: Cardinal;
   sData: AnsiString;
begin
  SetDebugeWrite('JON30.SocketSend');
   sData := Trim(ss_SendText.Text);
   Size := Length(sData);
   try
      if socket.Active then
      begin
         socket.Socket.SendBuf(Size, SizeOf(Size));
         if Size > 0 then
         begin
            socket.Socket.SendBuf(PAnsiChar(sData)^, Size);
         end;
      end;
   finally

   end;
end;

procedure TFrm_JON30.CSMsnConnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  SetDebugeWrite('CP_100 = ss_Lat : ' + IntToStr(ss_Lat) + ' , ss_Lon : ' + IntToStr(ss_Lon));
  try
    GS_SendMsg.Clear;
    GS_SendMsg.Values['Code' ] := '100';
    GS_SendMsg.Values['sLonY'] := IntToStr(ss_Lat);
    GS_SendMsg.Values['sLatX'] := IntToStr(ss_Lon);
    SocketSend(GS_SendMsg, CSMsn);
  except

  end;
end;

procedure TFrm_JON30.CSMsnError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  GMessagebox('������ ���� �� ���� �߻�', CDMSE);
end;

procedure TFrm_JON30.AdvStringGrid8DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
Var iWid : Integer;
begin
  try
    if ACol < 13 then
    begin
      AdvStringGrid9.ColWidths[ACol] := AdvStringGrid8.ColWidths[ACol];    //  20130619  LYB  �׸��� �÷� ��/��/�� ��� �����ϰ� ����ó��
      AdvStringGrid5.ColWidths[ACol] := AdvStringGrid8.ColWidths[ACol];
      AdvStringGrid1.ColWidths[ACol] := AdvStringGrid8.ColWidths[ACol];
    end else
    if ACol = 18 then
    begin
      AdvStringGrid9.ColWidths[9] := AdvStringGrid8.ColWidths[ACol];    //  20130619  LYB  �׸��� �÷� ��/��/�� ��� �����ϰ� ����ó��
      AdvStringGrid5.ColWidths[9] := AdvStringGrid8.ColWidths[ACol];
      AdvStringGrid1.ColWidths[9] := AdvStringGrid8.ColWidths[ACol];
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;

	try
    if GS_SEARCH_WISE_NAVER_COMPARE then
    begin
      iWid := AdvStringGrid8.ColWidths[00] +
              AdvStringGrid8.ColWidths[01] +
              AdvStringGrid8.ColWidths[02] +
              AdvStringGrid8.ColWidths[03] +
              AdvStringGrid8.ColWidths[16];

      btnGSort.Left := iWid + 2;
      btnGSort.Top  := 63;

      pnlSCnt.Left := btnGSort.Left - ( pnlSCnt.Width );
      pnlSCnt.Top  := 62;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.AdvStringGrid5DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
Var iWid : Integer;
begin
  try
    if ACol < 13 then
    begin
      AdvStringGrid6.ColWidths[ACol] := AdvStringGrid5.ColWidths[ACol];    //  20130619  LYB  �׸��� �÷� ��/��/�� ��� �����ϰ� ����ó��
      AdvStringGrid1.ColWidths[ACol] := AdvStringGrid5.ColWidths[ACol];
      AdvStringGrid8.ColWidths[ACol] := AdvStringGrid5.ColWidths[ACol];
    end else
    if ACol = 18 then
    begin
      AdvStringGrid6.ColWidths[9] := AdvStringGrid5.ColWidths[ACol];    //  20130619  LYB  �׸��� �÷� ��/��/�� ��� �����ϰ� ����ó��
      AdvStringGrid1.ColWidths[9] := AdvStringGrid5.ColWidths[ACol];
      AdvStringGrid8.ColWidths[9] := AdvStringGrid5.ColWidths[ACol];
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;

	try
    if GS_SEARCH_WISE_NAVER_COMPARE then
    begin
      iWid := AdvStringGrid5.ColWidths[00] +
              AdvStringGrid5.ColWidths[01] +
              AdvStringGrid5.ColWidths[02] +
              AdvStringGrid5.ColWidths[03] +
              AdvStringGrid5.ColWidths[16];

      btnGSort.Left := iWid + 2;
      btnGSort.Top  := 63;

      pnlSCnt.Left := btnGSort.Left - ( pnlSCnt.Width );
      pnlSCnt.Top  := 62;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.AdvStringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
Var iWid : Integer;
begin
  try
    if ACol < 13 then
    begin
      AdvStringGrid3.ColWidths[ACol] := AdvStringGrid1.ColWidths[ACol];    //  20130619  LYB  �׸��� �÷� ��/��/�� ��� �����ϰ� ����ó��
      AdvStringGrid5.ColWidths[ACol] := AdvStringGrid1.ColWidths[ACol];
      AdvStringGrid8.ColWidths[ACol] := AdvStringGrid1.ColWidths[ACol];
    end else
    if ACol = 18 then
    begin
      AdvStringGrid3.ColWidths[9] := AdvStringGrid1.ColWidths[ACol];    //  20130619  LYB  �׸��� �÷� ��/��/�� ��� �����ϰ� ����ó��
      AdvStringGrid5.ColWidths[9] := AdvStringGrid1.ColWidths[ACol];
      AdvStringGrid8.ColWidths[9] := AdvStringGrid1.ColWidths[ACol];
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;

  try
    if GS_SEARCH_WISE_NAVER_COMPARE then
    begin
      iWid := AdvStringGrid1.ColWidths[00] +
              AdvStringGrid1.ColWidths[01] +
              AdvStringGrid1.ColWidths[02] +
              AdvStringGrid1.ColWidths[03] +
              AdvStringGrid1.ColWidths[16];

      btnGSort.Left := iWid + 2;
      btnGSort.Top  := 63;

      pnlSCnt.Left := btnGSort.Left - ( pnlSCnt.Width );
      pnlSCnt.Top  := 62;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.AdvStringGrid1Enter(Sender: TObject);
begin
  pGridSetFocus(TAdvStringGrid(Sender));
end;

procedure TFrm_JON30.Grid_Clear(Panel: string; Grid: Integer);
Var iAutoSize : Integer;
begin
//-  SetDebugeWrite('Frm_JON30.Grid_Clear');
	try
    pnl_PoiAddress.Visible := False;
    bHintShow := False;
		if ( Panel = 'meoStartArea' ) Or ( Panel = 'meoStartAreaCUT' ) Or ( Panel = 'meoStartAreaWOR11' ) then
		begin
      if Grid = 1 then
			begin
				AdvStringGrid1.Clear;
				AdvStringGrid1.ColCount := 20;
				AdvStringGrid1.RowCount := 2;

				AdvStringGrid1.ColWidths[00] := giCol1;  AdvStringGrid1.Cells[00, 0] := '�ּ�';
				AdvStringGrid1.ColWidths[01] := giCol2;  AdvStringGrid1.Cells[01, 0] := '��������';
				AdvStringGrid1.ColWidths[02] := giCol3;  AdvStringGrid1.Cells[02, 0] := '�α�POI';
				AdvStringGrid1.ColWidths[03] := 045;     AdvStringGrid1.Cells[03, 0] := '�Ÿ�(m)';
				AdvStringGrid1.ColWidths[04] := 000;     AdvStringGrid1.Cells[04, 0] := 'X��ǥ';
				AdvStringGrid1.ColWidths[05] := 000;     AdvStringGrid1.Cells[05, 0] := 'Y��ǥ';
				AdvStringGrid1.ColWidths[06] := 000;     AdvStringGrid1.Cells[06, 0] := '�õ�';
				AdvStringGrid1.ColWidths[07] := 000;     AdvStringGrid1.Cells[07, 0] := '�ñ���';
				AdvStringGrid1.ColWidths[08] := 000;     AdvStringGrid1.Cells[08, 0] := '���鵿';
				AdvStringGrid1.ColWidths[09] := 000;     AdvStringGrid1.Cells[09, 0] := 'ǥ��';
				AdvStringGrid1.ColWidths[10] := 000;     AdvStringGrid1.Cells[10, 0] := 'POIID';
				AdvStringGrid1.ColWidths[11] := 000;     AdvStringGrid1.Cells[11, 0] := 'GUIDE_X';
				AdvStringGrid1.ColWidths[12] := 000;     AdvStringGrid1.Cells[12, 0] := 'GUIDE_Y';
				AdvStringGrid1.ColWidths[13] := 000;     AdvStringGrid1.Cells[13, 0] := 'S';
				AdvStringGrid1.ColWidths[14] := 000;     AdvStringGrid1.Cells[14, 0] := 'G';
				AdvStringGrid1.ColWidths[15] := 000;     AdvStringGrid1.Cells[15, 0] := 'Index';
				AdvStringGrid1.ColWidths[16] := 030;     AdvStringGrid1.Cells[16, 0] := '����';
				AdvStringGrid1.ColWidths[17] := 030;     AdvStringGrid1.Cells[17, 0] := '����';
				AdvStringGrid1.ColWidths[18] := 030;     AdvStringGrid1.Cells[18, 0] := 'ǥ��';
				AdvStringGrid1.ColWidths[19] := 030;     AdvStringGrid1.Cells[19, 0] := '����';

        AdvStringGrid1.ShowSelection := False;
//        AdvStringGrid1.FocusCell(0,1);
      end else
      if Grid = 2 then
      begin
        AdvStringGrid2.Clear;
				AdvStringGrid2.RowCount := 1;

        iAutoSize := Trunc( (pnlBottom.Width - 85) / 3);
        AdvStringGrid2.ColCount := 12;

        AdvStringGrid2.ColWidths[00] := iAutoSize;
        AdvStringGrid2.ColWidths[01] := 20;
        AdvStringGrid2.ColWidths[02] := 0;
        AdvStringGrid2.ColWidths[03] := 0;
        AdvStringGrid2.ColWidths[04] := iAutoSize;
        AdvStringGrid2.ColWidths[05] := 20;
        AdvStringGrid2.ColWidths[06] := 0;
        AdvStringGrid2.ColWidths[07] := 0;
        AdvStringGrid2.ColWidths[08] := iAutoSize;
        AdvStringGrid2.ColWidths[09] := 20;
        AdvStringGrid2.ColWidths[10] := 0;
        AdvStringGrid2.ColWidths[11] := 0;

        AdvStringGrid2.ShowSelection := False;
      end else
      if Grid = 3 then
      begin
        AdvStringGrid3.Clear;
        AdvStringGrid3.RowCount := 1;
        AdvStringGrid3.ColCount := 13;

        AdvStringGrid3.ColWidths[04] := 000;
				AdvStringGrid3.ColWidths[05] := 000;
				AdvStringGrid3.ColWidths[06] := 000;
        AdvStringGrid3.ColWidths[07] := 000;
        AdvStringGrid3.ColWidths[08] := 000;
                                                 // 9�� ���� ����Ʈ �̹��� ǥ��
        AdvStringGrid3.ColWidths[10] := 000;     // ���� �ᳪ����ǥ
        AdvStringGrid3.ColWidths[11] := 000;
				AdvStringGrid3.ColWidths[12] := 000;     //'����';

        AdvStringGrid3.ShowSelection := False;
      end else
      if Grid = 4 then
      begin
        AdvStringGrid1L.Left := PnlClient1.Width  - ( AdvStringGrid1L.Width + 20 );
        AdvStringGrid1L.Top  := PnlClient1.Height - ( AdvStringGrid1L.Height );
        AdvStringGrid1L.Clear;
        AdvStringGrid1L.RowCount := 1;
        AdvStringGrid1L.ColCount := 10;

        AdvStringGrid1L.ColWidths[0] := 150;
        AdvStringGrid1L.ColWidths[1] := 155;
        AdvStringGrid1L.ColWidths[2] := 000;
        AdvStringGrid1L.ColWidths[3] := 000;
        AdvStringGrid1L.ColWidths[4] := 000;
        AdvStringGrid1L.ColWidths[5] := 000;
        AdvStringGrid1L.ColWidths[6] := 000;
        AdvStringGrid1L.ColWidths[7] := 000;
        AdvStringGrid1L.ColWidths[8] := 000;
        AdvStringGrid1L.ColWidths[9] := 000;

        AdvStringGrid1L.ShowSelection := False;
      end;
    end else
		if ( Panel = 'meoEndArea' ) Or ( Panel = 'meoEndAreaCUT' ) Or ( Panel = 'meoEndAreaWOR11' ) Or ( Panel = 'meoCallBell' ) then
		begin
			if Grid = 1 then
      begin
        AdvStringGrid5.Clear;
				AdvStringGrid5.ColCount := 20;
        AdvStringGrid5.RowCount := 2;

        AdvStringGrid5.ColWidths[00] := giCol1;  AdvStringGrid5.Cells[00, 0] := '�ּ�';
        AdvStringGrid5.ColWidths[01] := giCol2;  AdvStringGrid5.Cells[01, 0] := '��������';
        AdvStringGrid5.ColWidths[02] := giCol3;  AdvStringGrid5.Cells[02, 0] := '�α�POI';
				AdvStringGrid5.ColWidths[03] := 045;     AdvStringGrid5.Cells[03, 0] := '�Ÿ�(m)';
        AdvStringGrid5.ColWidths[04] := 000;     AdvStringGrid5.Cells[04, 0] := 'X��ǥ';
				AdvStringGrid5.ColWidths[05] := 000;     AdvStringGrid5.Cells[05, 0] := 'Y��ǥ';
        AdvStringGrid5.ColWidths[06] := 000;     AdvStringGrid5.Cells[06, 0] := '�õ�';
        AdvStringGrid5.ColWidths[07] := 000;     AdvStringGrid5.Cells[07, 0] := '�ñ���';
        AdvStringGrid5.ColWidths[08] := 000;     AdvStringGrid5.Cells[08, 0] := '���鵿';
				AdvStringGrid5.ColWidths[09] := 000;     AdvStringGrid5.Cells[09, 0] := 'ǥ��';
        AdvStringGrid5.ColWidths[10] := 000;     AdvStringGrid5.Cells[10, 0] := 'POIID';
        AdvStringGrid5.ColWidths[11] := 000;     AdvStringGrid5.Cells[11, 0] := 'GUIDE_X';
				AdvStringGrid5.ColWidths[12] := 000;     AdvStringGrid5.Cells[12, 0] := 'GUIDE_Y';
				AdvStringGrid5.ColWidths[13] := 000;     AdvStringGrid5.Cells[13, 0] := 'S';
				AdvStringGrid5.ColWidths[14] := 000;     AdvStringGrid5.Cells[14, 0] := 'G';
				AdvStringGrid5.ColWidths[15] := 000;     AdvStringGrid5.Cells[15, 0] := 'Index';
				AdvStringGrid5.ColWidths[16] := 030;     AdvStringGrid5.Cells[16, 0] := '����';
				AdvStringGrid5.ColWidths[17] := 030;     AdvStringGrid5.Cells[17, 0] := '����';
				AdvStringGrid5.ColWidths[18] := 030;     AdvStringGrid5.Cells[18, 0] := 'ǥ��';
				AdvStringGrid5.ColWidths[19] := 030;     AdvStringGrid5.Cells[19, 0] := '����';

        AdvStringGrid5.ShowSelection := False;
//        AdvStringGrid5.FocusCell(0,1);
      end else
      if Grid = 2 then
      begin
        AdvStringGrid4.Clear;
        AdvStringGrid4.RowCount := 1;

        iAutoSize := Trunc( (pnlBottom.Width - 85) / 3);
        AdvStringGrid4.ColCount := 12;

        AdvStringGrid4.ColWidths[00] := iAutoSize;
        AdvStringGrid4.ColWidths[01] := 20;
        AdvStringGrid4.ColWidths[02] := 0;
        AdvStringGrid4.ColWidths[03] := 0;
        AdvStringGrid4.ColWidths[04] := iAutoSize;
        AdvStringGrid4.ColWidths[05] := 20;
        AdvStringGrid4.ColWidths[06] := 0;
        AdvStringGrid4.ColWidths[07] := 0;
        AdvStringGrid4.ColWidths[08] := iAutoSize;
        AdvStringGrid4.ColWidths[09] := 20;
        AdvStringGrid4.ColWidths[10] := 0;
        AdvStringGrid4.ColWidths[11] := 0;

        AdvStringGrid4.ShowSelection := False;
      end else
      if Grid = 3 then
			begin
        AdvStringGrid6.Clear;
        AdvStringGrid6.RowCount := 1;
        AdvStringGrid6.ColCount := 13;

        AdvStringGrid6.ColWidths[04] := 000;
				AdvStringGrid6.ColWidths[05] := 000;
        AdvStringGrid6.ColWidths[06] := 000;
        AdvStringGrid6.ColWidths[07] := 000;
        AdvStringGrid6.ColWidths[08] := 000;
                                                 // 9�� ���� ����Ʈ �̹��� ǥ��
        AdvStringGrid6.ColWidths[10] := 000;     // ���� �ᳪ����ǥ
        AdvStringGrid6.ColWidths[11] := 000;
				AdvStringGrid6.ColWidths[12] := 000;     // '����';

        AdvStringGrid6.ShowSelection := False;
      end else
      if Grid = 4 then
      begin
        AdvStringGrid5L.Left := PnlClient2.Width  - ( AdvStringGrid5L.Width + 20 );
        AdvStringGrid5L.Top  := PnlClient2.Height - ( AdvStringGrid5L.Height );
        AdvStringGrid5L.Clear;
        AdvStringGrid5L.RowCount := 1;
        AdvStringGrid5L.ColCount := 10;

        AdvStringGrid5L.ColWidths[0] := 150;
        AdvStringGrid5L.ColWidths[1] := 155;
        AdvStringGrid5L.ColWidths[2] := 000;
        AdvStringGrid5L.ColWidths[3] := 000;
        AdvStringGrid5L.ColWidths[4] := 000;
        AdvStringGrid5L.ColWidths[5] := 000;
        AdvStringGrid5L.ColWidths[6] := 000;
        AdvStringGrid5L.ColWidths[7] := 000;
        AdvStringGrid5L.ColWidths[8] := 000;
        AdvStringGrid5L.ColWidths[9] := 000;

        AdvStringGrid5L.ShowSelection := False;
      end;
    end else
		if Panel = 'meoViaArea' then
		begin
      if Grid = 1 then
      begin
        AdvStringGrid8.Clear;
				AdvStringGrid8.ColCount := 20;
        AdvStringGrid8.RowCount := 2;

        AdvStringGrid8.ColWidths[00] := giCol1;  AdvStringGrid8.Cells[00, 0] := '�ּ�';
        AdvStringGrid8.ColWidths[01] := giCol2;  AdvStringGrid8.Cells[01, 0] := '��������';
				AdvStringGrid8.ColWidths[02] := giCol3;  AdvStringGrid8.Cells[02, 0] := '�α�POI';
        AdvStringGrid8.ColWidths[03] := 045;     AdvStringGrid8.Cells[03, 0] := '�Ÿ�(m)';
        AdvStringGrid8.ColWidths[04] := 000;     AdvStringGrid8.Cells[04, 0] := 'X��ǥ';
        AdvStringGrid8.ColWidths[05] := 000;     AdvStringGrid8.Cells[05, 0] := 'Y��ǥ';
        AdvStringGrid8.ColWidths[06] := 000;     AdvStringGrid8.Cells[06, 0] := '�õ�';
        AdvStringGrid8.ColWidths[07] := 000;     AdvStringGrid8.Cells[07, 0] := '�ñ���';
        AdvStringGrid8.ColWidths[08] := 000;     AdvStringGrid8.Cells[08, 0] := '���鵿';
        AdvStringGrid8.ColWidths[09] := 000;     AdvStringGrid8.Cells[09, 0] := 'ǥ��';
        AdvStringGrid8.ColWidths[10] := 000;     AdvStringGrid8.Cells[10, 0] := 'POIID';
        AdvStringGrid8.ColWidths[11] := 000;     AdvStringGrid8.Cells[11, 0] := 'GUIDE_X';
				AdvStringGrid8.ColWidths[12] := 000;     AdvStringGrid8.Cells[12, 0] := 'GUIDE_Y';
				AdvStringGrid8.ColWidths[13] := 000;     AdvStringGrid8.Cells[13, 0] := 'S';
				AdvStringGrid8.ColWidths[14] := 000;     AdvStringGrid8.Cells[14, 0] := 'G';
				AdvStringGrid8.ColWidths[15] := 000;     AdvStringGrid8.Cells[15, 0] := 'Index';
				AdvStringGrid8.ColWidths[16] := 030;     AdvStringGrid8.Cells[16, 0] := '����';
				AdvStringGrid8.ColWidths[17] := 030;     AdvStringGrid8.Cells[17, 0] := '����';
				AdvStringGrid8.ColWidths[18] := 030;     AdvStringGrid8.Cells[18, 0] := 'ǥ��';
				AdvStringGrid8.ColWidths[19] := 030;     AdvStringGrid8.Cells[19, 0] := '����';

        AdvStringGrid8.ShowSelection := False;
//        AdvStringGrid8.FocusCell(0,1);
      end else
      if Grid = 2 then
      begin
        AdvStringGrid7.Clear;
				AdvStringGrid7.RowCount := 1;
        iAutoSize := Trunc( (pnlBottom.Width - 85) / 3);
        AdvStringGrid7.ColCount := 12;

        AdvStringGrid7.ColWidths[00] := iAutoSize;
        AdvStringGrid7.ColWidths[01] := 20;
        AdvStringGrid7.ColWidths[02] := 0;
        AdvStringGrid7.ColWidths[03] := 0;
        AdvStringGrid7.ColWidths[04] := iAutoSize;
        AdvStringGrid7.ColWidths[05] := 20;
        AdvStringGrid7.ColWidths[06] := 0;
        AdvStringGrid7.ColWidths[07] := 0;
        AdvStringGrid7.ColWidths[08] := iAutoSize;
        AdvStringGrid7.ColWidths[09] := 20;
        AdvStringGrid7.ColWidths[10] := 0;
        AdvStringGrid7.ColWidths[11] := 0;

        AdvStringGrid7.ShowSelection := False;
      end else
      if Grid = 3 then
      begin
        AdvStringGrid9.Clear;
        AdvStringGrid9.RowCount := 1;
        AdvStringGrid9.ColCount := 13;

        AdvStringGrid9.ColWidths[04] := 000;
        AdvStringGrid9.ColWidths[05] := 000;
        AdvStringGrid9.ColWidths[06] := 000;
        AdvStringGrid9.ColWidths[07] := 000;
        AdvStringGrid9.ColWidths[08] := 000;
                                               // 9�� ���� ����Ʈ �̹��� ǥ��
        AdvStringGrid9.ColWidths[10] := 000;   // ���� �ᳪ����ǥ
        AdvStringGrid9.ColWidths[11] := 000;
				AdvStringGrid9.ColWidths[12] := 000;   // '����';

        AdvStringGrid9.ShowSelection := False;
			end else
      if Grid = 4 then
      begin
        AdvStringGrid8L.Left := PnlClient3.Width  - ( AdvStringGrid8L.Width + 20 );
        AdvStringGrid8L.Top  := PnlClient3.Height - ( AdvStringGrid8L.Height );

        AdvStringGrid8L.Clear;
        AdvStringGrid8L.RowCount := 1;
        AdvStringGrid8L.ColCount := 10;

        AdvStringGrid8L.ColWidths[0] := 150;
        AdvStringGrid8L.ColWidths[1] := 155;
        AdvStringGrid8L.ColWidths[2] := 000;
				AdvStringGrid8L.ColWidths[3] := 000;
        AdvStringGrid8L.ColWidths[4] := 000;
        AdvStringGrid8L.ColWidths[5] := 000;
        AdvStringGrid8L.ColWidths[6] := 000;
				AdvStringGrid8L.ColWidths[7] := 000;
        AdvStringGrid8L.ColWidths[8] := 000;
        AdvStringGrid8L.ColWidths[9] := 000;
        AdvStringGrid8L.ShowSelection := False;
      end;
    end;
  except on e: exception do
    begin
      Log('Grid_Clear Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Grid_Clear Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON30.Grid_Init(Panel: string; Grid: Integer);
begin
	SetDebugeWrite('JON30.Grid_Init');
  pnl_PoiAddress.Visible := False;
  grpSetPoiOption.Visible := False;
	if ( Panel = 'meoStartArea' ) Or ( Panel = 'meoStartAreaCUT' ) Or ( Panel = 'meoStartAreaWOR11' ) then
  begin
    if Grid = 1 then
    begin
      TT2.Tag := 0;
			btnPortalE.Visible := False;
      if pnlSCnt.Visible then lblSCnt.Caption := '�˻�: 0 ��';

      AdvStringGrid1.Clear;
      AdvStringGrid1.RowCount := 2;
    end else
    if Grid = 2 then
    begin
      AdvStringGrid2.Clear;
      AdvStringGrid2.RowCount := 1;
    end else
    if Grid = 3 then
    begin
      AdvStringGrid3.Clear;
      AdvStringGrid3.RowCount := 1;
    end else
    if Grid = 4 then
    begin
			AdvStringGrid1L.Clear;
      AdvStringGrid1L.RowCount := 1;
    end;
  end else
	if ( Panel = 'meoEndArea' ) Or ( Panel = 'meoEndAreaCUT' ) Or ( Panel = 'meoEndAreaWOR11' ) Or ( Panel = 'meoCallBell' ) then
  begin
    if Grid = 1 then
    begin
      TT2.Tag := 0;
			btnPortalE.Visible := False;
      if pnlSCnt.Visible then lblSCnt.Caption := '�˻�: 0 ��';

      AdvStringGrid5.Clear;
      AdvStringGrid5.RowCount := 2;
    end else
    if Grid = 2 then
    begin
      AdvStringGrid4.Clear;
      AdvStringGrid4.RowCount := 1;
    end else
    if Grid = 3 then
    begin
      AdvStringGrid6.Clear;
      AdvStringGrid6.RowCount := 1;
    end else
    if Grid = 4 then
    begin
      AdvStringGrid5L.Clear;
			AdvStringGrid5L.RowCount := 1;
    end;
  end else
  if Panel = 'meoViaArea' then
	begin
    if Grid = 1 then
    begin
      TT2.Tag := 0;
			btnPortalE.Visible := False;
      if pnlSCnt.Visible then lblSCnt.Caption := '�˻�: 0 ��';

      AdvStringGrid8.Clear;
      AdvStringGrid8.RowCount := 2;
    end else
    if Grid = 2 then
    begin
      AdvStringGrid7.Clear;
      AdvStringGrid7.RowCount := 1;
    end else
    if Grid = 3 then
    begin
      AdvStringGrid9.Clear;
      AdvStringGrid9.RowCount := 1;
    end else
    if Grid = 4 then
    begin
      AdvStringGrid8L.Clear;
      AdvStringGrid8L.RowCount := 1;
    end;
  end;
end;

function TFrm_JON30.KatecToBessel(x_1, Y_1 : Double; Var OutX, OutY : double) : double;
var coord : IXCoordSys;
   	pos : IXMapPos;
begin
	coord := mMap.GetCoordSys();

//	pos  := coord.KatecToBessel(x_1 * 100 , y_1 * 100);
	pos  := coord.KatecToBessel(x_1, y_1);   // 20170925 eksys�Լ� ��� ����

	OutX := pos._Lon;
	OutY := pos._Lat;
end;

procedure TFrm_JON30.lblOptionClick(Sender: TObject);
begin
  if Not grpSetPoiOption.Visible then
  begin
    grpSetPoiOption.Top  := 31;
    grpSetPoiOption.Left := 11;
    grpSetPoiOption.BringToFront;
    grpSetPoiOption.Visible := True;
  end else
  begin
    grpSetPoiOption.Visible := False;
  end;
end;

function TFrm_JON30.fSetPOIChangeName( AName : String) : String;
var i, iLen, iTotLen : Integer;
    bOk : Boolean;
begin
	try
    bOk := False;
		iTotLen := Length(AnsiString(AName));
    for i := 0 to GS_POIAName.Count - 1 do
    begin
      iLen := Length(AnsiString(GS_POIAName[i]));
      if RightStr(AName, iLen) = GS_POIAName[i] then
      begin
        bOk := True;
				Result := Copy(AnsiString(AName), 1, iTotLen-iLen) + GS_POIRName[i];
        Break;
      end;
    end;
    if Not bOk then Result := AName;
  except
    Result := AName;
  end;
end;

procedure TFrm_JON30.pAutoLockStart;
begin
	Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Hint := 'F4)���';
	Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Tag  := 0;
	Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.ImageIndex := 1;
	Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Down := True;

  N1.Enabled := False;
  N1.Caption := '���������(��ǥ���̵�)-��ݻ���';
  N6.Enabled := False;
  N6.Caption := '���������(�ּ�+��ǥ�̵�)-��ݻ���';
end;

procedure TFrm_JON30.pLoadNaverMap;
Var iRandom : integer;
  	sClient: string;
begin
	SetDebugeWrite('JON30.pLoadNaverMap');
	Try
		iRandom := RandomRange(0, gslNaverClientID.Count); //���� ������ŭ ��� 0, 5 -> Max index = 4
		sClient := gslNaverClientID[iRandom];
		Naver_URL := 'http://203.251.202.13:88/map/makeNaverMap_cloud_New.jsp?ncpClientId=' + sClient;
//		Naver_URL := 'http://203.251.202.13:88/map/makeNaverMap_cloud.jsp?ncpClientId=' + sClient;
		bWebLoading := False;
		try
      webNaverMap.Silent := True;
			webNaverMap.Navigate(Naver_URL);
    except on E: Exception do
      Assert(False, E.Message);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON30.pSetFocusStart;
begin
	if Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.CanFocus then
		Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.SetFocus;
	Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.SelStart := Length(Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text);
end;

procedure TFrm_JON30.pAutoLockEnd;
begin
	Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Hint := 'F4)���';
	Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Tag  := 0;
	Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.ImageIndex := 1;
	Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Down := True;

  N2.Enabled := False;
  N2.Caption := '����������(��ǥ���̵�)-��ݻ���';
  N7.Enabled := False;
  N7.Caption := '����������(�ּ�+��ǥ�̵�)-��ݻ���';
end;

function TFrm_JON30.fSetAutoUnLock( aText : String ) : Boolean;
begin
  Result := False;
  try
    if ( pos('�α��ֹ�', aText) > 0 ) then // �α��ֹ� ��ȣ ���� lyb 2018.07.17
    begin
      Result := True;
			if ( lcsActiveEdit = 'meoStartArea' ) then
			begin
				if ( Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Hint = 'F4)���' ) then
				begin
					Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Hint := 'F4)����';
					Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Tag  := 0;
					Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.Down := False;
					Frm_Main.Frm_JON01N[Self.Tag].BtnStLock.ImageIndex := 0;
					Frm_JON30.N1.Enabled := True;
					Frm_JON30.N1.Caption := '���������(��ǥ���̵�)';
					Frm_JON30.btnSPoiMove.Enabled := True;
					Frm_JON30.N6.Enabled := True;
					Frm_JON30.N6.Caption := '���������(�ּ�+��ǥ�̵�)';
					Frm_JON30.btnSPoiAMove.Enabled := True;
				end;
			end else
			if ( lcsActiveEdit = 'meoEndArea' ) then
			begin
				if ( Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Hint = 'F4)���' ) then
				begin
					Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Hint := 'F4)����';
					Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Tag  := 0;
					Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.Down := False;
					Frm_Main.Frm_JON01N[Self.Tag].BtnEdLock.ImageIndex := 0;
					Frm_JON30.N2.Enabled := True;
					Frm_JON30.N2.Caption := '����������(��ǥ���̵�)';
					Frm_JON30.btnEPoiMove.Enabled := True;
					Frm_JON30.N7.Enabled := True;
					Frm_JON30.N7.Caption := '����������(�ּ�+��ǥ�̵�)';
					Frm_JON30.btnEPoiAMove.Enabled := True;
				end;
			end;
		end;
	except
		Result := False;
	end;
end;

procedure TFrm_JON30.pSetFocusEnd;
begin
	if Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.CanFocus then
		Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.SetFocus;
	Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.SelStart := Length(Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text);
end;

procedure TFrm_JON30.pSetFocusVia;
begin
  if GS_VIA_Tag = 1 then
  begin
    Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.SetFocus;
    Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.SelStart := Length(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text);
  end else
  begin
    Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].SetFocus;
    Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].SelStart := Length(Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text);
  end;
end;

procedure TFrm_JON30.pActiveEditFocus( bLock : Boolean );
begin
  try
    if lcsActiveEdit = 'meoStartArea' then
    begin
      // ��ġ���� ���� �� �ڵ���� ��� �߰�
      if (GS_START_AUTOLOCK) And (bLock) then pAutoLockStart;
      pSetFocusStart;
    end else
    if lcsActiveEdit = 'meoEndArea' then
    begin
      // ��ġ���� ���� �� �ڵ���� ��� �߰�
			if (Not GS_End_AUTOLOCK) And (bLock) then pAutoLockEnd;
      pSetFocusEnd;
    end else
    if lcsActiveEdit = 'meoViaArea' then
    begin
      pSetFocusVia;
    end else
    if lcsActiveEdit = 'meoStartAreaCUT' then
      Frm_CUT011.meoStartAreaCUT.SetFocus
    else
		if lcsActiveEdit = 'meoEndAreaCUT' then
			Frm_CUT011.meoEndAreaCUT.SetFocus
		else
		if lcsActiveEdit = 'meoStartAreaWOR11' then
		begin
			Frm_WOR11.meoStartAreaWOR11.SetFocus;
		end else
		if lcsActiveEdit = 'meoEndAreaWOR11' then
		begin
			Frm_WOR11.meoEndAreaWOR11.SetFocus;
		end else
		if lcsActiveEdit = 'meoCallBell' then
			Frm_BTN01.meoCallBellArea.SetFocus;
  except

  end;
end;

procedure TFrm_JON30.pShowOption;
Var sOption : String;
begin
  if GS_SEARCH_NAVER_MAP then sOption := 'N��(O)'
                         else sOption := 'N��(X)';

  if rbPOI1.Checked then sOption := sOption + ',POI����(X)' else
  if rbPOI2.Checked then sOption := sOption + ',POI����(O)';

  if rbSN.Checked then sOption := sOption + ',N��(O)' else
  if rbSD.Checked then sOption := sOption + ',D��(O)' else
  if rbSA.Checked then sOption := sOption + ',N/D����(O)';

  if cxChkSchSvr.Checked then sOption := sOption + ',��Ž(O)'
                         else sOption := sOption + ',��Ž(X)';

  lblOption.Caption := sOption;
end;

procedure TFrm_JON30.pGridSetFocus( vGrid : TAdvStringGrid );
begin
  try
		if ( lcsActiveEdit = 'meoStartArea' ) Or ( lcsActiveEdit = 'meoStartAreaCUT' ) Or ( lcsActiveEdit = 'meoStartAreaWOR11' ) then
		begin
      AdvStringGrid1.SelectionRectangle := False;
      AdvStringGrid2.SelectionRectangle := False;
      AdvStringGrid3.SelectionRectangle := False;
      AdvStringGrid1L.SelectionRectangle := False;

      vGrid.SelectionRectangle := True;
		end else
		if ( lcsActiveEdit = 'meoEndArea' ) Or ( lcsActiveEdit = 'meoEndAreaCUT' ) Or ( lcsActiveEdit = 'meoEndAreaWOR11' ) Or ( lcsActiveEdit = 'meoCallBell' ) then
		begin
      AdvStringGrid4.SelectionRectangle := False;
      AdvStringGrid5.SelectionRectangle := False;
      AdvStringGrid6.SelectionRectangle := False;
      AdvStringGrid5L.SelectionRectangle := False;

      vGrid.SelectionRectangle := True;
		end else
		if lcsActiveEdit = 'meoViaArea' then
		begin
      AdvStringGrid7.SelectionRectangle := False;
      AdvStringGrid8.SelectionRectangle := False;
      AdvStringGrid9.SelectionRectangle := False;
      AdvStringGrid8L.SelectionRectangle := False;

      vGrid.SelectionRectangle := True;
		end;
  except
  end;
end;

function TFrm_JON30.fGetSchFullName : String;
  function fSpaceDel ( sText : String ) : String;
  begin
    sText := StringReplace(sText, #$D,'', [rfReplaceAll]);
    sText := StringReplace(sText, #$A,'', [rfReplaceAll]);

    Result := sText;
  end;

  function fSignDistDel( sText : String ) : String;
  Var sTmp : String;
      i, iPos, iOk, iCnt : Integer;
  begin
    iPos := Pos('m', LowerCase(sText)) - 1;

    // '3mk' �Ÿ��� ���� ������ ���ܽ�Ű�� �����ε� ���� 5������ ���� �����°Ŵ� �Ÿ��� �ν� ����  LYB  2018.07.17
    if iPos <= 5 then
    begin
      Result := sText;
      Exit;
    end;

    iCnt := 1;
    for i := iPos downto 1 do
    begin
      if StrToIntDef(sText[i], -1) In [0..9] then
      begin
        iOk := i;
        Inc(iCnt);
      end else
        Break;
    end;

    if iPos > 0 then
      sTmp := Copy(sText, iOk, iCnt);
    Result := StringReplace(sText, sTmp, '', [rfReplaceAll]);
  end;
Var AName : String;
begin
  try
    if lcsActiveEdit = 'meoStartArea' then
    begin
			AName := Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text;

			if Pos(#$D, AName) > 0 then
			begin
				AName := fSpaceDel(AName);

				Frm_Main.Frm_JON01N[Self.Tag].meoStartArea.Text := AName;
			end;
		end else
		if lcsActiveEdit = 'meoEndArea' then
		begin
			AName := Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text;

			if Pos(#$D, AName) > 0 then
			begin
				AName := fSpaceDel(AName);

				Frm_Main.Frm_JON01N[Self.Tag].meoEndArea.Text := AName;
      end;
    end else
    if lcsActiveEdit = 'meoViaArea' then
    begin
			if GS_VIA_Tag = 1 then
				AName := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text
			else
				AName := Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text;

      if Pos(#$D, AName) > 0 then
      begin
        AName := fSpaceDel(AName);

				if GS_VIA_Tag = 1 then
					Frm_Main.Frm_JON01N[Self.Tag].meoViaArea1.Text := AName
				else
					Frm_Main.Frm_JON01N[Self.Tag].meoViaArea[GS_VIA_Tag].Text := AName;
			end;
    end else
    if lcsActiveEdit = 'meoStartAreaCUT' then
    begin
      AName := Frm_CUT011.meoStartAreaCUT.Text;

      if Pos(#$D, AName) > 0 then
      begin
        AName := fSpaceDel(AName);

        Frm_CUT011.meoStartAreaCUT.Text := AName;
      end;
    end else
    if lcsActiveEdit = 'meoEndAreaCUT' then
    begin
      AName := Frm_CUT011.meoEndAreaCUT.Text;

      if Pos(#$D, AName) > 0 then
      begin
        AName := fSpaceDel(AName);

        Frm_CUT011.meoEndAreaCUT.Text := AName;
      end;
    end else
    if lcsActiveEdit = 'meoStartAreaWOR11' then
    begin
      AName := Frm_WOR11.meoStartAreaWOR11.Text;

      if Pos(#$D, AName) > 0 then
      begin
        AName := fSpaceDel(AName);

        Frm_WOR11.meoStartAreaWOR11.Text := AName;
      end;
    end else
    if lcsActiveEdit = 'meoEndAreaWOR11' then
    begin
      AName := Frm_WOR11.meoEndAreaWOR11.Text;

      if Pos(#$D, AName) > 0 then
      begin
        AName := fSpaceDel(AName);

        Frm_WOR11.meoEndAreaWOR11.Text := AName;
      end;
    end else
		if lcsActiveEdit = 'meoCallBell' then
    begin
      AName := StringReplace(Frm_BTN01.meoCallBellArea.Text, ' ','', [rfReplaceAll]);

      if Pos(#$D, AName) > 0 then
      begin
        AName := fSpaceDel(AName);

        Frm_BTN01.meoCallBellArea.Text := AName;
			end;
    end;

    Result := fSignDistDel(AName);
  except on e: exception do
    begin
      Log('fGetSchFullName Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'fGetSchFullName Error :' + E.Message);
    end;
  end;
end;

end.

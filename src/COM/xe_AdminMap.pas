unit xe_AdminMap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TalMapXLib_TLB, cxGraphics, cxControls, cxLookAndFeels, MSXML2_TLB,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxLabel,
  Data.DB, cxDBData, cxMemo, cxRichEdit, Vcl.OleCtrls, cxGridDBTableView,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxClasses, dxCore,
  cxGridCustomView, cxGrid, cxPC, Vcl.ExtCtrls, Vcl.StdCtrls, cxButtons,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxTextEdit, cxRadioGroup, cxGroupBox,
	cxSplitter, dxBarBuiltInMenu, dxSkinsCore, math,
	dxSkinscxPCPainter, dxGDIPlusClasses, SHDocVw, cxProgressBar,
  dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TPosRec = record
    X, Y: string;
  end;

  TMapAddrRec = record
    Sido, Gugun, Dong: string;
	end;
  TMapRecPosRec = record
    Top, Left, Bottom, Right: string;
  end;
	TMapWkInfoRec = record
		Sabun, BR_Sabun, Name, ATTEND, PASS_TIME, Con_State, BR_Type, FinCnt, MAPX, MAPY, BrNo, BrName, HP, PHONE : string;
	end;
  TMapPosRec = record
    XPos, YPos: string;
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
  TFrm_AdminMap = class(TForm)
    pnlLargeMenu: TPanel;
    cxGroupBox1: TcxGroupBox;
    rbName: TcxRadioButton;
    btnSearch: TcxButton;
    pnlBottom: TPanel;
    pmAcceptMap: TPopupMenu;
    pnlList: TPanel;
    pnlHelp: TPanel;
    N1Km1: TMenuItem;
    N3Km1: TMenuItem;
    N5Km1: TMenuItem;
    N1: TMenuItem;
    btnClose1: TcxButton;
    N30Km1: TMenuItem;
    cxcbSel_Search: TcxComboBox;
    ed_KEYWORD: TcxTextEdit;
    cxButtonTcxButton19MapHelp: TcxButton;
    rbWK: TcxRadioButton;
    cxButton2: TcxButton;
    N15Km1: TMenuItem;
    lbl1: TLabel;
    lbl2: TLabel;
    PnlConfig: TPanel;
    pnl2: TPanel;
    chkWKB10: TcxCheckBox;
    chkWKB20: TcxCheckBox;
    chkWKB30A: TcxCheckBox;
    chkWKB30: TcxCheckBox;
    chkWKBRNAME: TcxCheckBox;
    chkWKNAME: TcxCheckBox;
    lbl5: TLabel;
    cxcbSelMapLevle: TcxComboBox;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    rbWKWAIT5: TcxRadioButton;
    rbWKWAIT6: TcxRadioButton;
    rbWKWAIT7: TcxRadioButton;
    cxButton1: TcxButton;
    pnl3: TcxGroupBox;
    PnlTitle: TPanel;
    Panel2: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    btnHelpClose: TcxButton;
    splAcceptMap: TcxSplitter;
    cxLblActive: TLabel;
    chkWKSABUN: TcxCheckBox;
    chkWKWAIT1: TcxCheckBox;
    chkWKWAIT2: TcxCheckBox;
    chkWKWAIT3: TcxCheckBox;
    chkWKWAIT4: TcxCheckBox;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Shape2: TShape;
    cb_BrName: TcxComboBox;
    pnlHint: TPanel;
    cxGroupBox6: TcxGroupBox;
    img8: TImage;
    img7: TImage;
    img6: TImage;
    img5: TImage;
    img4: TImage;
    img3: TImage;
    img2: TImage;
    img1: TImage;
    cxLabel8: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxbtnHInt: TcxButton;
    cb_BrCode: TcxComboBox;
    NWkClone: TMenuItem;
    N500m1: TMenuItem;
    chkWKWAITAll: TcxCheckBox;
    TT3: TTimer;
    TT3_1: TTimer;
    edtName: TcxTextEdit;
    pgcList: TcxPageControl;
    tbsNameList: TcxTabSheet;
    cxGridName: TcxGrid;
    cxViewName: TcxGridTableView;
    cxColName: TcxGridColumn;
    cxColNameAddr: TcxGridColumn;
    cxColNameTel: TcxGridColumn;
    cxColNameX: TcxGridColumn;
    cxColNameY: TcxGridColumn;
    cxColNameSido: TcxGridColumn;
    cxColNameGugun: TcxGridColumn;
    cxColNameDong: TcxGridColumn;
    cxLevelName: TcxGridLevel;
    tbsWKList: TcxTabSheet;
    cxGridWkConnect: TcxGrid;
    cxViewWkConnect: TcxGridDBTableView;
    cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn1: TcxGridDBColumn;
    cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn2: TcxGridDBColumn;
    cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn4: TcxGridDBColumn;
    cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn5: TcxGridDBColumn;
    cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn10: TcxGridDBColumn;
    cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn11: TcxGridDBColumn;
    cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn16: TcxGridDBColumn;
    cxGVeOrderListColumnGridDBTableViewViewWkConnectColumn17: TcxGridDBColumn;
    cxViewWkConnectColumn1: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGroupBox7: TcxGroupBox;
    chk_OurWK_Status: TcxCheckBox;
    chk_OurWK_Name: TcxCheckBox;
    chk_OurWK_FinishCnt: TcxCheckBox;
    chk_OurWK_Sabun: TcxCheckBox;
    chk_OurWK_BrName: TcxCheckBox;
    chk_OurWK_HP: TcxCheckBox;
    chk_OurWK_BrNo: TcxCheckBox;
    cxGroupBox8: TcxGroupBox;
    chk_WKTitle_BaeCha: TcxCheckBox;
    chk_WKTitle_BrName: TcxCheckBox;
    chk_WKTitle_WkName: TcxCheckBox;
    pnl_NaverMap: TPanel;
    webNaverMap: TWebBrowser;
    pnl_TalMap: TPanel;
    mMap: TTalMapXCtrl;
    rbo_UseNaverMap: TcxCheckBox;
    trm_Naver: TTimer;
    cxViewWkConnectColumn2: TcxGridDBColumn;
    lb_Title_List: TListBox;
    cxGroupBox9: TcxGroupBox;
    rbSTWAIT5: TcxRadioButton;
    rbSTWAIT6: TcxRadioButton;
    rbSTWAIT7: TcxRadioButton;
    chkAllPoi: TcxCheckBox;
    tmrDongPolygon: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure lblTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rbSelectClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure cxViewNameSelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxViewNameCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edtBunjiKeyPress(Sender: TObject; var Key: Char);
    procedure edtName1KeyPress(Sender: TObject; var Key: Char);
    procedure cxViewNameCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnHelpCloseClick(Sender: TObject);
    procedure cxButtonTcxButton19MapHelpClick(Sender: TObject);
    procedure chkMapRectClick(Sender: TObject);
    procedure mMapUI_MouseMove(ASender: TObject; const Obj: IXUIObj; Flag,
      X, Y: Integer);
		procedure mniIconCaptionClick(Sender: TObject);
		procedure N1Km1Click(Sender: TObject);
    procedure N3Km1Click(Sender: TObject);
		procedure N5Km1Click(Sender: TObject);
		procedure N1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure TalMapXCtrl1POI_DblClick(ASender: TObject;
      const POI: IXPOIItem; nFlag, X, Y: Integer);
		procedure TalMapXCtrl1StateChange(ASender: TObject; Code, Value1,
      Value2: Integer);
    procedure TalMapXCtrl1UI_MouseDown(ASender: TObject;
      const Obj: IXUIObj; Flag, X, Y: Integer);
    procedure TalMapXCtrl1UI_MouseHover(ASender: TObject;
      const Obj: IXUIObj);
    procedure TalMapXCtrl1UI_MouseLeave(ASender: TObject;
      const Obj: IXUIObj);
    procedure TalMapXCtrl1UI_MouseMove(ASender: TObject;
      const Obj: IXUIObj; Flag, X, Y: Integer);
    procedure TalMapXCtrl1UI_MouseUp(ASender: TObject; const Obj: IXUIObj;
      Flag, X, Y: Integer);
    procedure N30Km1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure owton2Click(Sender: TObject);
    procedure N15Km1Click(Sender: TObject);
    procedure ed_KEYWORDKeyPress(Sender: TObject; var Key: Char);
    procedure rbWKWAIT5Click(Sender: TObject);
    procedure rbWKWAIT6Click(Sender: TObject);
    procedure rbWKWAIT7Click(Sender: TObject);
		procedure cxViewWkConnectCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnClose1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxGroupBox5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxcbSel_SearchPropertiesChange(Sender: TObject);
    procedure cxbtnHIntClick(Sender: TObject);
		procedure mMapPOI_Click(ASender: TObject; const POI: IXPOIItem; nFlag, X,
      Y: Integer);
    procedure mMapClickNotify(ASender: TObject; Type_, X, Y: Integer);
    procedure pmAcceptMapPopup(Sender: TObject);
		procedure mMapPOI_MouseUp(ASender: TObject; const POI: IXPOIItem; nFlag, X,
      Y: Integer);
    procedure mMapMouseDown(ASender: TObject; Flag, X, Y: Integer);
    procedure mMapCreate(ASender: TObject; Value: Integer);
    procedure mMapMouseMove(ASender: TObject; Flag, X, Y: Integer);
    procedure NWkCloneClick(Sender: TObject);
    procedure mMapMouseUp(ASender: TObject; Flag, X, Y: Integer);
    procedure chkWKWAITAllClick(Sender: TObject);
    procedure chkWKWAIT3Click(Sender: TObject);
    procedure chkWKWAIT2Click(Sender: TObject);
    procedure edtName1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TT3Timer(Sender: TObject);
		procedure TT3_1Timer(Sender: TObject);
    procedure edtNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
		procedure rbo_UseNaverMapPropertiesChange(Sender: TObject);
    procedure webNaverMapDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure webNaverMapNavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure trm_NaverTimer(Sender: TObject);
    procedure cxViewWkConnectDataControllerSortingChanged(Sender: TObject);
		procedure cxViewWkConnectColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure tmrDongPolygonTimer(Sender: TObject);
  private
    { Private declarations }
    FInit: Boolean;
		sMarkCloneSabun, sMarkCloneTmp1, sMarkCloneTmp2, sMarkCloneTmp3 : string;
		iMarkCloneIdx, FLon, SLon, ELon, FLat, SLat, ELat  : Integer;

		gPOI: IXPOIItem;
		gClone : Boolean; //우측 클릭이벤트가 클론 아이콘 위에서 발생했는지 클론이면 True

		sRanDom, sSuggest : String;
    sSAPoiGubun, sSAPoiName, sSAPoiAddr, sOrSAPoiAddr, sSAPoiCenterLat, sSApoiCenterLon, lsPOISvrIP : String;

		sts_Chk : Boolean;

    gMapX, gMapY : Integer;

		maxLogicalLevel : Integer;
		minLogicalLevel : Integer;
		ws_Lon, ws_Lat : integer;
		sw_Lon, sw_Lat : Double;
		m_Lon, m_Lat : Integer;   //mousemove 값
		off_Lat, off_Lon : string;

		//네이버 맵 관련
		Naver_URL : string;

		CurDispatch: IDispatch; {save the interface globally }
		bWebLoading, bNaverFirst : Boolean;

		ACol : integer;
		
		procedure CreateObj;
    procedure AdminMapSet;
		procedure GeneralInit;

    procedure ClearDongList(AcxCombo: TcxComboBox);

		function RequestDataBase(ATxData: string; var ARxDataDom: msDomDocument): Boolean;
		procedure RequsetDataName(const ASido, AGugun, ADong, AName: string; AUseRect: Boolean);
		procedure RequestDataWorker(const AATTEND, AState, AStatetime, AKeyKind, AKeyWord, ADistance, AX, AY, ABRTYPE : string);

    procedure OnShowContextMenuEx(Sender: TObject);

		procedure DoSelectedMap(const ASido, AGugun, ADong, ADetail, AX, AY: string);
		procedure DestroyUI;

    function CallClickNotify(iType : integer) : Boolean;
    function SetWGS84(idata : string) : string;
		
		function proc_Wisenut_GetPOI(word: string) : Boolean;    //advstring2
		function proc_Wisenut_GetPOILast( wURL, word : String ) : Boolean;
		function proc_Wisenut_GetPOI_Proc(wURL, word : string ) : Boolean;
		function D_HightlightTXT(HTEXT : String): String;
		function  proc_WGSToBessel(bPOI : boolean; sCity, sX, sY: string; var sRCity, sKm : string) : string;
		function M_ParseTXT(tText : String): string;
		function  DistCalc(sx, sy, ex, ey : string) : string ;

		//네이버 맵 관련
		procedure pLoadNaverMap;
		procedure proc_MoveCenter(ALat, ALon, ALevel : string);
		procedure setWkPoiMark(aLat, aLon: String;AWkInfo: TMapWkInfoRec);
		procedure GetQuadPoint(AWidth, Aheight : Integer; var VectY,	VectX : TStringList);
    function WGS84IntToBessel(Y_1, x_1: string): integer;
    procedure pMapDongPolygon(X, Y: Integer);
	public
    { Public declarations }
    mCtrlState : IXMasterControlState;
    mCtrlMan : IXCtrlMan;
    mUiman : IXUIMan;
		mDpsize : IXSize;
		mUtil : IXUtility;
		mPoiman : IXPOIMan;
    mBtnLevle : array [0..12] of IXUIButton;
    MyToolBar1 : array[0..20] of IXUIButton;
		ReadyImage, RunImage : IXMagicImage;
		B201, B202, A101, A102, A201, A202, R0201, R0202, WkClone : IXMagicImage;
		ReadyGroup, RunGroup : IXPOIGroup;
		ReadyGstyle, ReadyStyle, RunGstyle, RunStyle : IXPOIStyle;
		ReadyPoiman : IXPOIMan;

		IsReady: Boolean;

    Skm : string;

    WK_ATTEND, WK_ATTEND_TIME, WK_KEYWORD, WK_KEYKIND, WK_STATE, WK_TYPE  : string;

    procedure Clear;
		procedure Show; reintroduce;

    procedure ClearWkIcon;                                             //기사아이콘삭제

    procedure CreateLevelBar;                                          //레벨생성
    procedure CreateToolBarUI;                                         //툴바생성

    procedure ToggleLevelBar;                                          //현재 레벨표시
    procedure MapLevel_Master(level : INTEGER);
    procedure Map_ZoomIn;
    procedure Map_ZoomOut;
    procedure Map_Rotate;
    procedure HistoryPrev;
    procedure HistoryNext;
    procedure View3D;
    procedure BirdView;
    procedure ViewText;
    procedure CopyToClipboard;
    procedure SaveImage;
    procedure DrawPolygon;
    procedure DrawPolyline;
    procedure RemovePolygon;
    procedure CheckArea;
    procedure CheckDistance;
    procedure DelDistance;
		procedure ObjectModify;
    procedure ShowThemeForm;
    procedure MakeStatusbar;
    procedure SetCboBrName;

		function Map_SetLevel(level : Integer) : Integer;

		procedure OnMoveMap(lon, lat : INTEGER);
		procedure AddWkIconReady(const AXPos, AYPos: string; AWkInfo: TMapWkInfoRec);
		procedure AddWkClone(const AXPos, AYPos: string; AWkInfo: TMapWkInfoRec; ATitle, AContents : string);
		procedure AddWkIconRunner(const AXPos, AYPos: string; AWkInfo: TMapWkInfoRec);
		function WGS84ToBessel(Y_1, x_1 : string) : integer;
		function BesselToWGS84(Y_1, x_1 : double) : integer;

		function WGS84ToBessel_D(Y_1, x_1 : string) : integer;

		function WGS84ToBessel_T(Y_1, x_1 : string) : integer;
		function BesselToWGS84_T(Y_1, x_1 : double) : integer;

		function GetAdminCodeF(GLon, GLot : Integer) : string;
    function SetCtrlState(setType : Integer):Integer;
    function StrToken(var ASource: String;  ADelimiter: String): String;
    procedure WkSearch(aRound : string);
		procedure SetReadyStyle;
		procedure SetRunStyle;

		procedure SetA101Style;
		procedure SetA102Style;
		procedure SetA201Style;
		procedure SetA202Style;
		procedure SetB201Style;
		procedure SetB202Style;
		procedure Set0201Style;
		procedure Set0202Style;
		procedure SetWkCloneStyle;

		procedure ConnectWorker(AOrderView : TcxGridDBTableView ;connWK : Boolean; Xpos, Ypos : string);
		procedure ConnectOneWorker(AOrderView : TcxGridDBTableView ; connWK : Boolean; aRow : integer; Xpos, Ypos : string);
		procedure Mark_Symbol(Lon, Lat, index : Integer);
		procedure Mark_WK(Xpos, Ypos : string; aIndex : integer);

		procedure ClearClone;
		
	end;

var
  Frm_AdminMap: TFrm_AdminMap;

implementation


{$R *.dfm}

uses xe_GNL, xe_Func, xe_gnl2, xe_gnl3, xe_Dm, xe_Msg, xe_xml, Main, xe_packet, xe_JON01WNThread, uLkJSON,
  xe_AdminMap01, xe_Flash;

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
//------- Svr Add Index 찾기.
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
{ TAreaSlot }

constructor TAreaSlot.Create(const PosX, PosY: string);
begin
  FPosX := PosX;
  FPosY := PosY;
end;

{ TfrmJON30 }

procedure TFrm_AdminMap.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Transparent := False;
end;

procedure TFrm_AdminMap.FormClose(Sender: TObject; var Action: TCloseAction);
var sGetLat, sGetLon : string;
begin
	if rbo_UseNaverMap.Checked then
	begin
		Try //기존 마커 삭제
			ExecuteJavaScript(webNaverMap,'getCenterPoi();');  //마커 존재확인
			sGetLat := ExecuteJavaScriptGetValue(webNaverMap, 'lat');  
			sGetLon := ExecuteJavaScriptGetValue(webNaverMap, 'lng');  
			Save_map_Lat := '0' + getWGS84(sGetLat);
			Save_map_Lon := getWGS84(sGetLon);
		except
		End;
	end;
	GS_EnvFile.WriteString('COUNSEL', 'Save_map_Lon', Save_map_Lon);
	GS_EnvFile.WriteString('COUNSEL', 'Save_map_Lat', Save_map_Lat);

	sts_Chk := False;
	Action := caFree;
end;

procedure TFrm_AdminMap.FormCreate(Sender: TObject);
begin
	sts_Chk := False;
	CreateObj;
	AdminMapSet;
	if Area_CenterName = '' then
		lbl2.Caption := '기준위치 미설정. 시도청기준'
  else
  begin
		lbl2.Caption := Area_CenterName;
  end;
	PnlList.Width := 0;
end;

procedure TFrm_AdminMap.CreateObj;
var
	i : Integer;
begin
	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
	SetWindowLong(Handle, GWL_EXSTYLE, WS_EX_APPWINDOW);

  ed_KEYWORD.Text := '';
  cxcbSel_Search.ItemIndex := 0;
  for i := 0 to cxViewWkConnect.ColumnCount - 1 do
		cxViewWkConnect.Columns[i].DataBinding.ValueType := 'String';

	bNaverFirst := False;
	pLoadNaverMap;
end;

procedure TFrm_AdminMap.GeneralInit;
begin
  rbName.OnClick(rbName);
	pgcList.ActivePageIndex := 0;

  maxLogicalLevel := 13 -1;
	minLogicalLevel := 0;

  CreateLevelBar;

	WGS84ToBessel(Area_CenterLon, Area_CenterLat);
  OnMoveMap(ws_Lon, ws_Lat);
  mCtrlState.SetLevel(StrToInt(GS_ADMINMAP_LEVEL));
  CreateToolBarUI;
  MakeStatusbar;
end;

procedure TFrm_AdminMap.lblTitleMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_AdminMap.rbo_UseNaverMapPropertiesChange(Sender: TObject);
begin
	if rbo_UseNaverMap.Checked then
	begin
		pnl_TalMap.Visible := False;
		pnl_NaverMap.Visible := True;

{		Try
			ExecuteJavaScript(webNaverMap,'RemovePoiMark();');
		except
		End;
		Try
			ExecuteJavaScript(webNaverMap,'setArray();');
		except
		End;}
	end	else
	begin
		pnl_TalMap.Visible := True;
		pnl_NaverMap.Visible := False;
	end;

	if not bNaverFirst then
		trm_Naver.Enabled := True;
	bNaverFirst := True;
end;

procedure TFrm_AdminMap.rbSelectClick(Sender: TObject);
begin
	cxcbSel_Search.Enabled := rbWK.Checked;
	cb_BrName.Enabled := rbWK.Checked;
	ed_KEYWORD.Enabled := rbWK.Checked;
	
  if rbName.Checked then edtName.SetFocus  else
  if rbWK.Checked then
  begin
    if cxcbSel_Search.ItemIndex = 0 then cb_BrName.SetFocus
                                    else ed_KEYWORD.SetFocus;
	end;
end;

function TFrm_AdminMap.RequestDataBase(ATxData: string; var ARxDataDom: msDomDocument): Boolean;
var
  StrList: TStringList;
  ErrCode: Integer;
  ErrorCode, RxData: string;
begin
  Result := False;
  if FInit then
    Exit;

	ATxData := StringReplace(ATxData, 'UserIDString',     GT_USERIF.ID, [rfReplaceAll]);
	ATxData := StringReplace(ATxData, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);

  StrList := TStringList.Create;
  Screen.Cursor := crHourGlass;
  try
    if not dm.SendSock(ATxData, StrList, ErrCode, False) then
    begin
      GMessagebox('데이터 전송에 실패했습니다.'#13#10'다시시도 하세요.', CDMSE);
      Exit;
    end;

    try
      if StrList.Count = 0 then
      begin
        GMessagebox('검색된 데이터가 없습니다.', CDMSE);
        Exit;
      end;

			RxData := StrList[0];

//			Log('관제지도 :' +RxData, LOGDATAPATHFILE);

			if not ARxDataDom.loadXML(RxData) then
      begin
				GMessagebox('수신데이터가 잘못되었습니다.[XML Format error]', CDMSE);
        Exit;
      end;

      ErrorCode := GetXmlErrorCode(RxData);
      if ErrorCode <> '0000' then
      begin
				GMessagebox(Format('데이터 조회 중 오류가 발생했습니다.'#13#10'[오류내용: %s]', [GetXmlErrorMsg(RxData)]), CDMSE);
        Exit;
      end;

      Result := True;
    except on E: Exception do
      begin
        Assert(False, E.Message);
        GMessagebox(Format('데이터 조회 중 오류가 발생했습니다.'#13#10'[오류내용: %s]', [E.Message]), CDMSE);
      end;
    end;
  finally
    Frm_Flash.Hide;
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_AdminMap.RequsetDataName(const ASido, AGugun, ADong, AName: string; AUseRect: Boolean);
const
  _FMT_ADDR = '%s %s %s';// 시도 / 시군구 / 읍면동
var
  TxData: string;
  RxData: msDomDocument;
  I, Row: Integer;
  lst_Result: IXMLDomNodeList;
  Name, City, Ward, Street, Tel, XPos, YPos: string;
  RectPos: TMapRecPosRec;
begin
  RxData := ComsDomDocument.Create;
  try
    Map_SetLevel(StrToInt(GS_ADMINMAP_LEVEL));
    TxData := GTx_UnitXmlLoad('C062N1.xml');

    TxData := ReplaceAll(TxData, 'modeStr',   'SELECT');
    TxData := ReplaceAll(TxData, 'nameStr',   AName);
    if AUseRect then
    begin
      TxData := ReplaceAll(TxData, 'cityStr',   '');
      TxData := ReplaceAll(TxData, 'wardStr',   '');
      TxData := ReplaceAll(TxData, 'streetStr', '');
    end else
    begin
      TxData := ReplaceAll(TxData, 'cityStr',   ASido);
      TxData := ReplaceAll(TxData, 'wardStr',   AGugun);
      TxData := ReplaceAll(TxData, 'streetStr', ADong);
    end;
    TxData := ReplaceAll(TxData, 'stXStr',    RectPos.Top);
    TxData := ReplaceAll(TxData, 'stYStr',    RectPos.Left);
    TxData := ReplaceAll(TxData, 'edXStr',    RectPos.Bottom);
    TxData := ReplaceAll(TxData, 'edYStr',    RectPos.Right);

    if RequestDataBase(TxData, RxData) then
    begin
      lst_Result := RxData.documentElement.selectNodes('/cdms/Service/Response/Data');

      pgcList.ActivePage := tbsNameList;

      cxViewName.DataController.SetRecordCount(0);
      cxViewName.BeginUpdate;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          Name    := lst_Result.item[I].attributes.getNamedItem('NAME').Text;
          City    := lst_Result.item[I].attributes.getNamedItem('CITY').Text;
          Ward    := lst_Result.item[I].attributes.getNamedItem('WARD').Text;
          Street  := lst_Result.item[I].attributes.getNamedItem('STREET').Text;
          Tel     := lst_Result.item[I].attributes.getNamedItem('TEL').Text;
          XPos    := lst_Result.item[I].attributes.getNamedItem('MAP_X').Text;
          YPos    := lst_Result.item[I].attributes.getNamedItem('MAP_Y').Text;

          Row := cxViewName.DataController.AppendRecord;
          cxViewName.DataController.Values[Row, cxColName.Index]  := Name;
          cxViewName.DataController.Values[Row, cxColNameAddr.Index] := Format(_FMT_ADDR, [City, Ward, Street]);
          cxViewName.DataController.Values[Row, cxColNameTel.Index] := Tel;
          cxViewName.DataController.Values[Row, cxColNameX.Index] := XPos;
          cxViewName.DataController.Values[Row, cxColNameY.Index] := YPos;
          cxViewName.DataController.Values[Row, cxColNameSido.Index]  := City;
          cxViewName.DataController.Values[Row, cxColNameGugun.Index] := Ward;
          cxViewName.DataController.Values[Row, cxColNameDong.Index]  := Street;
        end;
      finally
        cxViewName.EndUpdate;
      end;

      if cxViewName.DataController.RecordCount > 0 then
      begin
        cxColName.SortOrder := soAscending;
        cxViewName.DataController.FocusedRecordIndex := 0;
      end else
      begin
        GMessagebox('검색결과가 없습니다.', CDMSE);
      end;
    end;
  finally
    RxData := Nil;
  end;
end;

procedure TFrm_AdminMap.RequestDataWorker(const AATTEND, AState, AStatetime, AKeyKind, AKeyWord, ADistance, AX, AY, ABRTYPE : string);
var
  TxData: string;
	RxData: msDomDocument;
	I, j, Row, iNo : Integer;
  lst_Result: IXMLDomNodeList;
  XPos, YPos: string;
	WkRec: TMapWkInfoRec;
	sTmp1, sTmp2, sLon, sLat : string;
	sFind, sGetLat, sGetLon : String;
	slTmp: TStringList;
	iTmp : integer;
	sTmpLon, sTmpLat : string;
	dTmpLon, dTmpLat : Double;
	iwkTitle: array[0..9] of integer;
	slLon, slLat : TStringList;
	bLonLat : Boolean;
begin
	RxData := ComsDomDocument.Create;
	slTmp := TStringList.Create;
	try
		ClearWkIcon;

		SetA101Style;
		SetA102Style;
		SetA201Style;
		SetA202Style;
		SetB201Style;
		SetB202Style;
		Set0201Style;
		Set0202Style;
		SetReadyStyle;
		SetRunStyle;
		SetWkCloneStyle;
		
		if rbo_UseNaverMap.Checked then
		begin
			Try
				ExecuteJavaScript(webNaverMap,'RemovePoiMark();');
			except
			End;
			Try
				ExecuteJavaScript(webNaverMap,'setArray();');
			except
			End;
		end;

		TxData := GTx_UnitXmlLoad('COM00010N2.xml');
		TxData := ReplaceAll(TxData, 'strAutoSearch'  , '0');
		TxData := ReplaceAll(TxData, 'strLastUpdate'  , '');
		TxData := ReplaceAll(TxData, 'strSearchYn'    , 'y');
	  TxData := ReplaceAll(TxData, 'strATTEND'      , AATTEND);
	  TxData := ReplaceAll(TxData, 'strSTATE'       , AState);
		TxData := ReplaceAll(TxData, 'strBR_TYPE'     , ABRTYPE);
		TxData := ReplaceAll(TxData, 'strPASS_TIME'   , AStatetime);
	  TxData := ReplaceAll(TxData, 'strKEYKIND'     , AKeyKind);
	  TxData := ReplaceAll(TxData, 'strKEYWORD'     , AKeyWord);
	  TxData := ReplaceAll(TxData, 'strDISTANCE'    , ADistance);
	  TxData := ReplaceAll(TxData, 'strMAP_X'       , AX);
	  TxData := ReplaceAll(TxData, 'strMAP_Y'       , AY);
		TxData := ReplaceAll(TxData, 'strCallSearchYn', 'n');
	  TxData := ReplaceAll(TxData, 'UserIDString'   , GT_USERIF.ID);
		TxData := ReplaceAll(TxData, 'ClientVerString', VERSIONINFO);

//			Log('관제지도 TxData:' +TxData, LOGDATAPATHFILE);
//		Frm_Flash.lblCnt.Caption := NowPage;
		
		btnSearch.enabled := False;
		rbo_UseNaverMap.enabled := False;
		if RequestDataBase(TxData, RxData) then
		begin
			Frm_Flash.cxPBar1.Properties.Max := -100;
			Frm_Flash.cxPBar1.Properties.Min := -100;
			Frm_Flash.cxPBar1.Properties.Marquee := True;
			Frm_Flash.cxPBar1.Properties.ShowTextStyle := cxtsText;
			Frm_Flash.lb_NoticeAdminMap.visible := True;
			if (not Frm_Flash.Visible) then
			begin
				Frm_Flash.Show;
				Sleep(10);
				Frm_Flash.BringToFront;
			end;
			Application.ProcessMessages;

			lst_Result := RxData.documentElement.selectNodes('/cdms/Service/Data/Workers1/W1');

			cxViewWkConnect.DataController.SetRecordCount(0);
			cxViewWkConnect.BeginUpdate;

			Frm_Flash.cxPBar1.Properties.Max := lst_Result.length;
			Frm_Flash.cxPBar1.Position := 0;

			//화면에 보이는 좌표찾기
			slLon := TStringList.Create; slLat := TStringList.Create;
			Try
				if not rbo_UseNaverMap.Checked then GetQuadPoint(mMap.Width, mMap.Height, slLon, slLat); 
			
				for i := 0 to lb_Title_List.Items.Count - 1 do
					iwkTitle[i] := cxViewWkConnect.GetColumnByFieldName(lb_Title_List.Items.Strings[i]).Index;

				for I := 0 to cxViewWkConnect.ColumnCount - 1 do
				begin
					cxViewWkConnect.Columns[I].SortIndex := -1;
					cxViewWkConnect.Columns[I].SortOrder := soNone;
				end;
				iNo := 1;
				for I := 0 to lst_Result.length - 1 do
				begin
					Frm_Flash.cxPBar1.Position := I + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(I + 1) + '/' + IntToStr(lst_Result.length);
					Application.ProcessMessages;

					//화면 내 좌표에 유요한 기사만 마크 -- 관제지도는 제외  2021.02.09. 정회귀팀장님
//					if ( not rbo_UseNaverMap.Checked ) And ( Not GB_365System ) then
//					begin
//						GetTextSeperationEx(',', lst_Result.item[I].attributes.getNamedItem('xy').Text, slTmp);
//						dTmpLon := StrToFloat(slTmp[1]) /360000;
//						dTmpLat := StrToFloat(slTmp[0]) /360000;
//						bLonLat := PtInPolygon(dTmpLon, dTmpLat, slLon, slLat, slLon.count);
//						if Not bLonLat then Continue;
//					end;

					slTmp.clear;
					WkRec.BR_Sabun  := lst_Result.item[I].attributes.getNamedItem('BR_SABUN').Text;
					WkRec.Sabun     := lst_Result.item[I].attributes.getNamedItem('SABUN').Text;
					WkRec.Name      := lst_Result.item[I].attributes.getNamedItem('NAME').Text;
					if lst_Result.item[I].attributes.getNamedItem('ATTEND').Text = '00' then
						WkRec.ATTEND    := '01'
					else
						WkRec.ATTEND    := lst_Result.item[I].attributes.getNamedItem('ATTEND').Text;
					WkRec.PASS_TIME := lst_Result.item[I].attributes.getNamedItem('PASS_TIME').Text;
					WkRec.Con_State := lst_Result.item[I].attributes.getNamedItem('STATE').Text;
					WkRec.BR_Type   := '1';
					WkRec.FinCnt    := lst_Result.item[I].attributes.getNamedItem('FINISH_CNT').Text;
					
					GetTextSeperationEx(',', lst_Result.item[I].attributes.getNamedItem('xy').Text, slTmp);
					WkRec.MAPX      := slTmp[0];
					WkRec.MAPY      := slTmp[1];
					WkRec.BrNo      := '';
					WkRec.BrName    := lst_Result.item[I].attributes.getNamedItem('BR_NAME').Text;
					WkRec.HP        := lst_Result.item[I].attributes.getNamedItem('HP').Text;
					WkRec.PHONE     := lst_Result.item[I].attributes.getNamedItem('PHONE').Text;

					sTmp1 := ''; sTmp2 := '';
					Row := cxViewWkConnect.DataController.AppendRecord;
					cxViewWkConnect.DataController.Values[Row, iwkTitle[0]] := iNo; inc(iNo);
					cxViewWkConnect.DataController.Values[Row, iwkTitle[1]] := WkRec.BrName;
					cxViewWkConnect.DataController.Values[Row, iwkTitle[2]] := WkRec.BR_Sabun;
					cxViewWkConnect.DataController.Values[Row, iwkTitle[3]] := WkRec.Name;

          GetTextSeperationEx(',', lst_Result.item[I].attributes.getNamedItem('xy').Text, slTmp);
          dTmpLon := StrToFloat(slTmp[1]) /360000;
          dTmpLat := StrToFloat(slTmp[0]) /360000;
          sTmpLon := FloatToStr(dTmpLon);
          sTmpLat := FloatToStr(dTmpLat);
          cxViewWkConnect.DataController.Values[Row, iwkTitle[4]] := '0' + getWGS84(sTmpLat);
          cxViewWkConnect.DataController.Values[Row, iwkTitle[5]] := getWGS84(sTmpLon);
					cxViewWkConnect.DataController.Values[Row, iwkTitle[6]] := WkRec.BrNo;
					if WkRec.ATTEND = '01' then 
					begin
						if WkRec.Con_State = 'A1' then sTmp1 := '단순접속' else 
						if WkRec.Con_State = 'A2' then sTmp1 := '오더접속' else 
						if WkRec.Con_State = 'B2' then sTmp1 := '미접속';
					end else
					if WkRec.ATTEND = '02' then sTmp1 := '운행';
					cxViewWkConnect.DataController.Values[Row, iwkTitle[7]] := sTmp1;
					cxViewWkConnect.DataController.Values[Row, iwkTitle[8]] := StrToCall(WkRec.HP);
					cxViewWkConnect.DataController.Values[Row, iwkTitle[9]] := WkRec.Sabun;

          if rbo_UseNaverMap.Checked then    //네이버 지도사용
          begin
            dTmpLon := StrToFloat(WkRec.MAPY) /360000;
            dTmpLat := StrToFloat(WkRec.MAPX) /360000;
            sTmpLon := FloatToStr(dTmpLon);
            sTmpLat := FloatToStr(dTmpLat);

            WkRec.MAPX      := '0' + getWGS84(sTmpLat);
            WkRec.MAPY      := getWGS84(sTmpLon);
            setWkPoiMark(XPos, YPos, WkRec);
          end else
             AddWkIconReady(WkRec.MAPX, WkRec.MAPY, WkRec);
					//클론이 있으면 클론 추가
					//AddWkClone

					sTmp1 := ''; sTmp2 := '';
					if ((GT_USERIF.HD = 'A1782') and (GS_PRJ_AREA = 'O')) or (GT_USERIF.ID = 'sntest') then
					begin
						iTmp := scb_MapMarkSabun.IndexOf(WkRec.Sabun); //클론이 있는지 확인
						if iTmp > -1 then
						begin
							sTmp1 := scb_MapMarkTitle[iTmp];
							sTmp1 := StringReplace(sTmp1, '복제-', '', [rfReplaceAll]);
						
							sTmp2 := scb_MapMarkContents[iTmp];
							sLon  := scb_MapMarkLon[iTmp];
							sLat  := scb_MapMarkLat[iTmp];
			
							scb_MapMarkIdx.delete(iTmp);                 //기존 정보 삭제
							scb_MapMarkSabun.delete(iTmp);
							scb_MapMarkTitle.delete(iTmp);
							scb_MapMarkContents.delete(iTmp);
							scb_MapMarkLon.delete(iTmp);
							scb_MapMarkLat.delete(iTmp);
			
							WkRec.MAPY      := sLon;
							WkRec.MAPX      := sLat;

							AddWkClone('', '', WkRec, sTmp1, sTmp2);
						end;
					end;
				end;

				Frm_Flash.cxPBar1.Properties.Max := lst_Result.length;
				Frm_Flash.cxPBar1.Position := 0;
				lst_Result := RxData.documentElement.selectNodes('/cdms/Service/Data/Workers2/W2');
				for I := 0 to lst_Result.length - 1 do
				begin
					Frm_Flash.cxPBar1.Position := I + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(I + 1) + '/' + IntToStr(lst_Result.length);
					Application.ProcessMessages;

					//화면 내 좌표에 유요한 기사만 마크 -- 관제지도는 제외  2021.02.09. 정회귀팀장님
//					if ( not rbo_UseNaverMap.Checked ) And ( Not GB_365System ) then
//					begin
//						GetTextSeperationEx(',', lst_Result.item[I].attributes.getNamedItem('xy').Text, slTmp);
//						dTmpLon := StrToFloat(slTmp[1]) /360000;
//						dTmpLat := StrToFloat(slTmp[0]) /360000;
//						bLonLat := PtInPolygon(dTmpLon, dTmpLat, slLon, slLat, slLon.count);
//						if Not bLonLat then Continue;
//					end;

					slTmp.clear;
					WkRec.BR_Sabun  := lst_Result.item[I].attributes.getNamedItem('BR_SABUN').Text;
					WkRec.Sabun     := lst_Result.item[I].attributes.getNamedItem('SABUN').Text;
					WkRec.Name      := lst_Result.item[I].attributes.getNamedItem('NAME').Text;
					if lst_Result.item[I].attributes.getNamedItem('ATTEND').Text = '00' then
						WkRec.ATTEND    := '01'
					else
						WkRec.ATTEND    := lst_Result.item[I].attributes.getNamedItem('ATTEND').Text;
					WkRec.PASS_TIME := lst_Result.item[I].attributes.getNamedItem('PASS_TIME').Text;
					WkRec.Con_State := lst_Result.item[I].attributes.getNamedItem('STATE').Text;
					WkRec.BR_Type   := '2';
					WkRec.FinCnt    := '';

					GetTextSeperationEx(',', lst_Result.item[I].attributes.getNamedItem('xy').Text, slTmp);
					WkRec.MAPX      := slTmp[0];
					WkRec.MAPY      := slTmp[1];
					WkRec.BrNo      := '';
					WkRec.BrName    := lst_Result.item[I].attributes.getNamedItem('BR_NAME').Text;
					if (((GT_USERIF.ShareNo = 'G72') or (GT_USERIF.ShareNo = 'G42') or 
							 (GT_USERIF.ShareNo = 'G64') or (GT_USERIF.ShareNo = 'G19')) And (GS_PRJ_AREA = 'O')) or
						 (GT_USERIF.ID = 'sntest') then //포항2개, 거제2개 신차장님 요청 20190926 KHS 
					begin
						WkRec.HP        := lst_Result.item[I].attributes.getNamedItem('HP').Text;
						WkRec.PHONE     := lst_Result.item[I].attributes.getNamedItem('PHONE').Text;
					end	else
					begin
						WkRec.HP        := '';
						WkRec.PHONE     := '';
					end;
					sTmp1 := ''; sTmp2 := '';
					Row := cxViewWkConnect.DataController.AppendRecord;
					cxViewWkConnect.DataController.Values[Row, iwkTitle[0]] := iNo; inc(iNo);
					cxViewWkConnect.DataController.Values[Row, iwkTitle[1]] := WkRec.BrName;
					cxViewWkConnect.DataController.Values[Row, iwkTitle[2]] := WkRec.BR_Sabun;
					cxViewWkConnect.DataController.Values[Row, iwkTitle[3]] := WkRec.Name;

          GetTextSeperationEx(',', lst_Result.item[I].attributes.getNamedItem('xy').Text, slTmp);
          dTmpLon := StrToFloat(slTmp[1]) /360000;
          dTmpLat := StrToFloat(slTmp[0]) /360000;
          sTmpLon := FloatToStr(dTmpLon);
          sTmpLat := FloatToStr(dTmpLat);
          cxViewWkConnect.DataController.Values[Row, iwkTitle[4]] := '0' + getWGS84(sTmpLat);
          cxViewWkConnect.DataController.Values[Row, iwkTitle[5]] := getWGS84(sTmpLon);
					cxViewWkConnect.DataController.Values[Row, iwkTitle[6]] := WkRec.BrNo;
					if WkRec.ATTEND = '01' then 
					begin
						if WkRec.Con_State = 'A1' then sTmp2 := '단순접속' else
						if WkRec.Con_State = 'A2' then sTmp2 := '오더접속' else
						if WkRec.Con_State = 'B2' then sTmp2 := '미접속';
						sTmp1 := sTmp2 + '(타)';
					end else
					if WkRec.ATTEND = '02' then sTmp1 := '운행' + '(타)';
					cxViewWkConnect.DataController.Values[Row, iwkTitle[7]] := sTmp1;
					cxViewWkConnect.DataController.Values[Row, iwkTitle[8]] := StrToCall(WkRec.HP);
					cxViewWkConnect.DataController.Values[Row, iwkTitle[9]] := WkRec.Sabun;

          if rbo_UseNaverMap.Checked then    //네이버 지도사용
          begin
            dTmpLon := StrToFloat(WkRec.MAPY) /360000;
            dTmpLat := StrToFloat(WkRec.MAPX) /360000;
            sTmpLon := FloatToStr(dTmpLon);
            sTmpLat := FloatToStr(dTmpLat);

            WkRec.MAPX      := '0' + getWGS84(sTmpLat);
            WkRec.MAPY      := getWGS84(sTmpLon);
            setWkPoiMark(XPos, YPos, WkRec);
          end else
             AddWkIconReady(WkRec.MAPX, WkRec.MAPY, WkRec);

  				//클론이 있으면 클론 추가
					//AddWkClone
					sTmp1 := ''; sTmp2 := '';
					if ((GT_USERIF.HD = 'A1782') and (GS_PRJ_AREA = 'O')) or (GT_USERIF.ID = 'sntest') then
					begin
						iTmp := scb_MapMarkSabun.IndexOf(WkRec.Sabun); //클론이 있는지 확인
						if iTmp > -1 then
						begin
							sTmp1 := scb_MapMarkTitle[iTmp];
							sTmp1 := StringReplace(sTmp1, '복제-', '', [rfReplaceAll]);
						
							sTmp2 := scb_MapMarkContents[iTmp];
							sLon  := scb_MapMarkLon[iTmp];
							sLat  := scb_MapMarkLat[iTmp];
			
							scb_MapMarkIdx.delete(iTmp);                 //기존 정보 삭제
							scb_MapMarkSabun.delete(iTmp);
							scb_MapMarkTitle.delete(iTmp);
							scb_MapMarkContents.delete(iTmp);
							scb_MapMarkLon.delete(iTmp);
							scb_MapMarkLat.delete(iTmp);
			
							WkRec.MAPY      := sLon;
							WkRec.MAPX      := sLat;

							AddWkClone('', '', WkRec, sTmp1, sTmp2);
						end;
					end;
				end;
      Finally
				slLon.Free; slLat.Free;
      End;
		end;
	finally
    cxViewWkConnect.EndUpdate;
		slTmp.free;
		RxData := Nil;
		Frm_Flash.Hide;
		Frm_Flash.lb_NoticeAdminMap.visible := False;
		btnSearch.enabled := True;
		rbo_UseNaverMap.enabled := True;
	end;
end;

procedure TFrm_AdminMap.ClearDongList(AcxCombo: TcxComboBox);
var
  I: Integer;
begin
  if not Assigned(AcxCombo) then
    Exit;

  for I := AcxCombo.Properties.Items.Count - 1 downto 0 do
  begin
    AcxCombo.Properties.Items.Objects[I].Free;
    AcxCombo.Properties.Items.Delete(I);
  end;

end;

procedure TFrm_AdminMap.btnSearchClick(Sender: TObject);
begin
	if rbName.Checked then                                       // 명칭 검색
  begin
		if Trim(edtName.Text) <> '' then
			 TT3.Enabled := True;
    pgcList.ActivePageIndex := 0;
//    pnlList.Width := 300;
	end else
	if rbWK.Checked then
  begin
		if cxcbSel_Search.ItemIndex = 0 then WK_KEYKIND := 'BR_CODE' else//'BR_NAME' else
		if cxcbSel_Search.ItemIndex = 1 then WK_KEYKIND := 'WK_NAME' else
		if cxcbSel_Search.ItemIndex = 2 then WK_KEYKIND := 'BR_WK_NUM';

		if cxcbSel_Search.ItemIndex = 0 then  
		begin
//			WK_KEYWORD := Trim(cb_BrName.Text);
			cb_BrCode.ItemIndex := cb_BrName.ItemIndex;
			WK_KEYWORD := Trim(cb_BrCode.Text);
		end
		else
			WK_KEYWORD := Trim(ed_KEYWORD.Text);

//		WK_STATE := 'B2';
//		WK_KEYWORD := '지점';

		RequestDataWorker(WK_ATTEND, WK_STATE, WK_ATTEND_TIME, WK_KEYKIND, WK_KEYWORD, '999', Area_CenterLat, Area_CenterLon, WK_TYPE );
		pgcList.ActivePageIndex := 1;
	end;
	if pnlList.Width = 0 then pnlList.Width := 320;
end;

function TFrm_AdminMap.CallClickNotify(iType: integer): Boolean;
begin
  mCtrlMan := mMap.GetCtrlMan();
   // 사용자 지정 이벤트 설정
  mCtrlMan.SetClickNotify(iType);
end;

procedure TFrm_AdminMap.cxViewNameSelectionChanged(
  Sender: TcxCustomGridTableView);
var
  Idx: Integer;
  XPos, YPos: string;
begin
  Idx := Sender.DataController.FocusedRecordIndex;

  if Idx < 0 then
    Exit;

  XPos := Sender.DataController.Values[Idx, cxColNameX.Index];
  YPos := Sender.DataController.Values[Idx, cxColNameY.Index];

  WGS84ToBessel(YPos, XPos);
  OnMoveMap(ws_Lon, ws_Lat);
  mCtrlState.SetLevel(StrToInt(GS_ADMINMAP_LEVEL));
end;
                                                 
procedure TFrm_AdminMap.cxViewNameCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  XPos, YPos: string;
begin
	XPos := Sender.DataController.Values[ACellViewInfo.GridRecord.RecordIndex, cxColNameX.Index];
  YPos := Sender.DataController.Values[ACellViewInfo.GridRecord.RecordIndex, cxColNameY.Index];

	WGS84ToBessel(YPos, XPos);
  OnMoveMap(ws_Lon, ws_Lat);
  mCtrlState.SetLevel(StrToInt(GS_ADMINMAP_LEVEL));
end;

procedure TFrm_AdminMap.edtBunjiKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    btnSearch.Click;
end;

procedure TFrm_AdminMap.edtName1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    btnSearch.Click;
end;

procedure TFrm_AdminMap.edtName1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);	
end;

procedure TFrm_AdminMap.edtNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if Key = VK_RETURN then
    btnSearch.Click;
end;

procedure TFrm_AdminMap.cxViewNameCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  XPos, YPos, Sido, Gugun, Dong, Detail: string;
begin
	Sido    := Sender.DataController.Values[ACellViewInfo.GridRecord.RecordIndex, cxColNameSido.Index];
  Gugun   := Sender.DataController.Values[ACellViewInfo.GridRecord.RecordIndex, cxColNameGugun.Index];
  Dong    := Sender.DataController.Values[ACellViewInfo.GridRecord.RecordIndex, cxColNameDong.Index];
	Detail  := Sender.DataController.Values[ACellViewInfo.GridRecord.RecordIndex, cxColName.Index];

  XPos := Sender.DataController.Values[ACellViewInfo.GridRecord.RecordIndex, cxColNameX.Index];
  YPos := Sender.DataController.Values[ACellViewInfo.GridRecord.RecordIndex, cxColNameY.Index];
  off_Lat := XPos;
	off_Lon := YPos;
	if rbo_UseNaverMap.Checked then
	begin
		proc_MoveCenter(SetWGS84(XPos), SetWGS84(YPos), GS_ADMINMAP_LEVEL) ;
	end	else
  begin
		WGS84ToBessel(YPos, XPos);
		OnMoveMap(ws_Lon, ws_Lat);
		mCtrlState.SetLevel(StrToInt(GS_ADMINMAP_LEVEL));
	end;
end;

procedure TFrm_AdminMap.Show;
begin
  fSetFont(Frm_AdminMap, GS_FONTNAME);
  ShowWindow(Handle, SW_SHOWNA);
  Visible := True;
end;

procedure TFrm_AdminMap.Clear;
begin
  ClearWkIcon;
end;

procedure TFrm_AdminMap.ClearClone;
var	mGroup : IXPOIGroup;
begin
	mGroup := mPoiman.FindGroup(90);
	if mGroup <> nil then 
		mPoiman.DeleteGroup(90);
end;

procedure TFrm_AdminMap.OnShowContextMenuEx(Sender: TObject);
var
  pt: TPoint;
begin
	GetCursorPos(pt);
  pmAcceptMap.Popup(pt.X, pt.Y);
end;

procedure TFrm_AdminMap.btnHelpCloseClick(Sender: TObject);
begin
  pnlHelp.Visible := False;
end;

procedure TFrm_AdminMap.cxButtonTcxButton19MapHelpClick(Sender: TObject);
begin

	pnlHelp.Left := Trunc(Self.Width/2) - Trunc( pnlHelp.Width / 2 );
  pnlHelp.Top  := Trunc(Self.Height/2) - Trunc( pnlHelp.Height / 2 );
  pnlHelp.Visible := True;
end;

procedure TFrm_AdminMap.cxcbSel_SearchPropertiesChange(Sender: TObject);
begin
  if cxcbSel_Search.ItemIndex = 0 then
  begin
    SetCboBrName;
    cb_BrName.Visible := True;
    ed_KEYWORD.Visible := False;
  end else
  begin
    cb_BrName.Visible := False;
    ed_KEYWORD.Visible := True;
  end;
end;

procedure TFrm_AdminMap.SetCboBrName;
Var i : Integer;
begin
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
	begin
		// 콜센터 지사리스트 와 접수화면의 지사리스트가 다를경우에만 재설정 해준다.
		if (cb_BrName.Properties.Items.Count <> scb_FamilyBrName.Count) or (cb_BrName.Properties.Items.Count = 3) then
		begin
			cb_BrName.Properties.Items.Clear; // 지사명
			cb_BrCode.Properties.Items.Clear; // 지사코드
			// 지사리스트를 담는다.
			cb_BrName.Properties.Items.Add('전체');
			cb_BrCode.Properties.Items.Add('');
			for i := 0 to scb_FamilyBrName.Count - 1 do
      begin
				cb_BrName.Properties.Items.Add(scb_FamilyBrName[i]);
				cb_BrCode.Properties.Items.Add(scb_FamilyBrCode[i]);
			end;
    end;
  end else
  begin
		// 콜센터 지사리스트 와 접수화면의 지사리스트가 다를경우에만 재설정 해준다.
    if ( cb_BrName.Properties.Items.Count <> scb_BranchName.Count ) or (cb_BrName.Properties.Items.Count = 3) then
    begin
      cb_BrName.Properties.Items.Clear; // 지사명
			cb_BrCode.Properties.Items.Clear; // 지사코드
			// 지사리스트를 담는다.
			cb_BrName.Properties.Items.Add('전체');
			cb_BrCode.Properties.Items.Add('');
			for i := 0 to scb_BranchName.Count - 1 do
      begin
				cb_BrName.Properties.Items.Add(scb_BranchName[i]);
				cb_BrCode.Properties.Items.Add(scb_BranchCode[i]);
			end;
		end;
  end;
	cb_BrName.ItemIndex := 0;
end;

procedure TFrm_AdminMap.cxGroupBox5MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(PnlHelp.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_AdminMap.DoSelectedMap(const ASido, AGugun, ADong, ADetail, AX,
  AY: string);
begin
end;

procedure TFrm_AdminMap.chkMapRectClick(Sender: TObject);
begin
  if TcxCheckBox(Sender).Checked and (edtName.Text <> '') then
    btnSearch.Click;
end;

procedure TFrm_AdminMap.chkWKWAIT2Click(Sender: TObject);
begin
	if chkWKWAIT2.checked then
	begin
		chkWKB10.Enabled := True;
		chkWKB20.Enabled := True;
		chkWKB30.Enabled := True;
		chkWKB30A.Enabled := True;
	end
	else
	begin
		chkWKB10.checked := False;
		chkWKB20.checked := False;
		chkWKB30.checked := False;
		chkWKB30A.checked := False;
		
		chkWKB10.Enabled := False;
		chkWKB20.Enabled := False;
		chkWKB30.Enabled := False;
		chkWKB30A.Enabled := False;
	end;
end;

procedure TFrm_AdminMap.chkWKWAIT3Click(Sender: TObject);
begin
	if (chkWKWAIT3.checked) or (chkWKWAIT4.checked) then
		chkWKWAITAll.Enabled := False
	else
		chkWKWAITAll.Enabled := True;
end;

procedure TFrm_AdminMap.chkWKWAITAllClick(Sender: TObject);
begin
	if chkWKWAITAll.checked then
	begin
		chkWKWAIT3.Checked := False;
		chkWKWAIT4.Checked := False;
		
		chkWKWAIT3.Enabled := False;
		chkWKWAIT4.Enabled := False;
	end
	else
	begin
		chkWKWAIT3.Enabled := True;
		chkWKWAIT4.Enabled := True;
	end;
end;

procedure TFrm_AdminMap.ClearWkIcon;
begin

	if mPoiman.GetGroupCount > 0 then
	begin
		 mPoiman.ClearGroup();
	end;
end;

procedure TFrm_AdminMap.CreateLevelBar;
var
  mImageman : IXImageMan;
  mBg, mLevelBarBg, mBtnZoomIn, mBtnZoomOut   : IXUIButton;
  i, UIID, CY  : Integer;
  imgName : string;
  mRootPath : string;
  bCreateLevelBar : Boolean;
begin
  if bCreateLevelBar = true then     // true가 됤 있나?..의문
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

  if mUiman.GetShowCompass = 0 then mUiman.SetShowCompass(1)
  else mUiman.SetShowCompass(0);
  mCtrlMan := mMap.GetCtrlMan();

  mImageman := mCtrlMan.GetImageMan;
  mRootPath := ExtractFilePath(Application.ExeName);
  mImageman.SetDefaultPath(mRootPath + '\Image\');
//  mImageman.SetDefaultPath(MAP_URL + 'Theme\Image\UI\LevelBar');

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
  mBtnZoomIn.SetBound(4, 5, 16, 15);
	mBtnZoomIn.SetCanClick(1);
	mBtnZoomIn.SetCanDrag(1);
	mBtnZoomIn.SetDragTracker(1);
	mBtnZoomIn.AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

  // Zoom Out Button
	mBtnZoomOut := mUiman.CreateUI_Button(mUiman);
	mBtnZoomOut.SetParent(mBg);
	mBtnZoomOut.SetUIID(13);
	mBtnZoomOut.SetImageList('btn_plus.png', 16, 15);
	mBtnZoomOut.SetBound(4, mBg.GetItemHeight()-18, 16, 15);
	mBtnZoomOut.SetCanClick(1);
	mBtnZoomOut.SetCanDrag(1);
	mBtnZoomOut.SetDragTracker(1);
	mBtnZoomOut.AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or	mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

  UIID := 14;
  CY := mBtnZoomIn.GetHeight;
  for i := 12 downto 0 do
  begin
		mBtnLevle[i] := mUiman.CreateUI_Button(mUiman);
		mBtnLevle[i].SetParent(mBg);
  	mBtnLevle[i].SetUIID(UIID);
		imgName := 'level_' + IntToStr(i) + '.png';
		mBtnLevle[i].SetImageList(imgName, 22, 9);
		mBtnLevle[i].SetBound(1, CY, 22, 9);
		mBtnLevle[i].SetCanClick(1);
		mBtnLevle[i].SetCanDrag(1);
		mBtnLevle[i].SetDragTracker(1);
		mBtnLevle[i].SetImageAutoChange(0);
		mBtnLevle[i].SetItemIndex(1);
		mBtnLevle[i].AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));
		CY := CY + 9;
		Inc(UIID);

	end;
	// 현재 Level 표출
	MapLevel_Master(mCtrlState.GetLevel());
end;

procedure TFrm_AdminMap.CreateToolBarUI;
var
  i, UIID : Integer;
  width_px : Integer;
  bCreateToolBarStyle1 : Boolean;
  dpsize : IXSize;
  mImageman : IXImageMan;
  mUrl, mRootPath : string;
begin
  if bCreateToolBarStyle1 = true then
  begin
    for i :=0 to 20 do
    begin
      MyToolBar1[i].DestroyUIObj();
    end;
		bCreateToolBarStyle1 := false;
		Exit;
  end
	else bCreateToolBarStyle1 := true;

	mCtrlMan := mMap.GetCtrlMan();
	mUiman := mCtrlman.GetUIMan();
	mCtrlState := mCtrlman.GetControlState();
	dpsize := mCtrlstate.GetSizeDP();
	mUtil := mMap.GetUtility();

  mImageman := mCtrlMan.GetImageMan;
  mRootPath := ExtractFilePath(Application.ExeName);
  mImageman.SetDefaultPath(mRootPath + '\Image\');
//  mImageman.SetDefaultPath(MAP_URL + 'Theme\Image\level_ico');

	width_px := dpsize.GetCX div 2 - 300;

	UIID := 200;
	for i:=0 to 20 do
  begin
    if (i <> 11) and (i <> 12) and (i <> 16) then
    begin
      MyToolBar1[i] := mUiman.CreateUI_Button(mUiman);
      MyToolBar1[i].SetParent(mUiman);
      MyToolBar1[i].SetUIID(UIID);
      mUrl := 'map_btn_' + IntToStr(i) + '.png';
      MyToolBar1[i].SetImageList(mUrl, 21, 21);
      MyToolBar1[i].SetBound(width_px, dpsize.GetCY()-50, 21, 21);
      MyToolBar1[i].SetAlpha(0);
      MyToolBar1[i].SetCanClick(1);
      MyToolBar1[i].SetCanDrag(1);
      MyToolBar1[i].SetDragTracker(1);
      MyToolBar1[i].SetImageAutoChange(0);
      MyToolBar1[i].SetItemIndex(1);
      if i = 1 then MyToolBar1[i].SetHint('축소') else
      if i = 2 then MyToolBar1[i].SetHint('확대') else
      if i = 3 then MyToolBar1[i].SetHint('회전') else
      if i = 4 then MyToolBar1[i].SetHint('이전화면') else
      if i = 5 then MyToolBar1[i].SetHint('다음화면') else
      if i = 6 then MyToolBar1[i].SetHint('조망보기') else
      if i = 7 then MyToolBar1[i].SetHint('3D보기') else
      if i = 8 then MyToolBar1[i].SetHint('텍스트보기') else
      if i = 9 then MyToolBar1[i].SetHint('클립보드저장') else
      if i = 10then MyToolBar1[i].SetHint('지도화면저장') else
      if i = 13 then MyToolBar1[i].SetHint('폴리곤그리기') else
      if i = 14 then MyToolBar1[i].SetHint('폴리라인그리기') else
      if i = 15 then MyToolBar1[i].SetHint('객체지우기') else
      if i = 16 then MyToolBar1[i].SetHint('반경그리기') else
      if i = 17 then MyToolBar1[i].SetHint('면적측정') else
      if i = 18 then MyToolBar1[i].SetHint('거리측정') else
      if i = 19 then MyToolBar1[i].SetHint('객체삭제') else
      if i = 20 then MyToolBar1[i].SetHint('객체편집');
      MyToolBar1[i].AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP')    or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEDOWN')
                              or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtil.GetConstToValue('TMEVNETTYPE_MOUSEENTER') or mUtil.GetConstToValue('TMEVNETTYPE_MOUSEMOVE'));
      width_px := width_px + 25;
    end;
		Inc(UIID);
	end;
end;

procedure TFrm_AdminMap.Map_ZoomIn;
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
	if (mCtrlState.GetLevel() > minLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() -1);
end;

procedure TFrm_AdminMap.Map_ZoomOut;
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
	if (mCtrlState.GetLevel() < maxLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() +1);
end;

procedure TFrm_AdminMap.MapLevel_Master(level: INTEGER);
var i, SetEnabled, SetDisable : Integer;
  mLevelBarBg : IXUIButton;
begin

  mLevelBarBg := mUiman.CreateUI_Button(mUiman);
	if mLevelBarBg = nil then Exit;

	// Image Index 설정 0~3
	SetEnabled := 0;
	SetDisable := 1;
	for i := 0 to 12  do
  begin
		if level = i then
      mBtnLevle[i].SetItemIndex(SetEnabled)
		else mBtnLevle[i].SetItemIndex(SetDisable);
	end;
end;

procedure TFrm_AdminMap.ToggleLevelBar;
begin
  mCtrlMan := mMap.GetCtrlMan();
	mUiman := mCtrlman.GetUIMan();

	if mUiman.GetShowLevelBar = 0 then mUiman.SetShowLevelBar(1)
	else mUiman.SetShowLevelBar(0);
end;

procedure TFrm_AdminMap.trm_NaverTimer(Sender: TObject);
var XPos, YPos : string;
begin
	trm_Naver.Enabled := False;

	if (Save_map_Lat = '') and (Save_map_Lon = '') then
	begin
		XPos := Area_CenterLat;
		YPos := Area_CenterLon;
	end else
	begin
		XPos := Save_map_Lat;
		YPos := Save_map_Lon;
	end;
	if (XPos = '0') and (YPos = '0') then
		proc_MoveCenter('37.565612', '126.978013', GS_ADMINMAP_LEVEL) //서울시청
	else
		proc_MoveCenter(SetWGS84(XPos), SetWGS84(YPos), GS_ADMINMAP_LEVEL);
end;

procedure TFrm_AdminMap.TT3Timer(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON56.TT3Timer');
  try
    TT3.Enabled := False;

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
    end;
		proc_Wisenut_GetPOI(Trim(edtName.Text));
  except
    on e: exception do
    begin
			Log('TT3Timer Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'TT3Timer Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_AdminMap.TT3_1Timer(Sender: TObject);
Var sErrLine : String;
begin
  SetDebugeWrite('Frm_JON56.TT3_1Timer');
  try
    TT3_1.Enabled := False;
		cxViewName.DataController.SetRecordCount(0);
		if Not proc_Wisenut_GetPOILast(GS_WiseNutPOIResult, GS_WiseNutPOIWord) then Exit;
		try
			SetDebugeWrite(Format('Frm_JON56.TT3_1Timer : %s', [lcsActiveEdit]));
      try
				if (Length(edtName.Text) < 2) then Exit;

				if cxViewName.DataController.RecordCount < 1 then
				begin
					GMessagebox('검색된 결과가 없습니다.', CDMSE);
					Exit;
				end;
			except
        on e: exception do
				begin
          Log('TT3Timer meoStartArea Error :' + sErrLine + ':' + E.Message, LOGDATAPATHFILE);
          Assert(False, 'TT3Timer meoStartArea Error :' + sErrLine + ':' + E.Message);
        end;
      end;
		finally
    end;
  except
    on e: exception do
    begin
      Log('TT3Timer Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'TT3Timer Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_AdminMap.HistoryNext;
begin
  mCtrlman := mMap.GetCtrlMan();
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryNext();
end;

procedure TFrm_AdminMap.HistoryPrev;
begin
  mCtrlman := mMap.GetCtrlMan();
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryPrev();
end;

procedure TFrm_AdminMap.Map_Rotate;
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlMan.SetMapRotation(1);
end;

procedure TFrm_AdminMap.BirdView;
var
  vector : IXVector;
begin
  mCtrlState := mMap.GetCtrlMan.GetControlState ;
  vector := mCtrlState.GetRotate;
  if vector.GetX() <> 0 then
  begin
    vector.SetX(0);
  end
  else
  begin
    vector.SetX(-60);
  end;

  mCtrlState.SetRotate(vector);
end;

procedure TFrm_AdminMap.View3D;
var
  state : Integer;
  mtype : Integer;
begin
  mCtrlMan := mMap.GetCtrlMan();
  mUiman := mCtrlMan.GetUIMan;
  mCtrlState := mCtrlMan.GetControlState;
  mDpsize := mCtrlState.GetSizeDP;
  mUtil := mMap.GetUtility;
  mCtrlState := mMap.GetCtrlMan.GetControlState;
  state := mUtil.GetConstToValue('TMCTRLSTATE_DISPLAY_BUILDING_TYPE');
  mtype := mCtrlState.GetState(state);
  if mtype = 1 then
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_3D_MASK'));
  end
  else if mtype = 16 then
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_3D_1'));
  end
  else if mtype = 17 then
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_3D_2'));
  end
  else if mtype = 18 then
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_NORMAL'));
  end
  else
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_NORMAL'));
  end;
end;

procedure TFrm_AdminMap.ViewText;
var
  mMapMan : IXMapMan;
begin
  mMapMan := mMap.GetCtrlMan.GetMapMan();
  if mMapMan.GetVisible = 5 then mMapMan.SetVisible(7)
  else if mMapMan.GetVisible = 7 then mMapMan.SetVisible(5);
end;

procedure TFrm_AdminMap.webNaverMapDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
	if (pDisp = CurDispatch) then
  begin
		webNaverMap.Visible := True;
		bWebLoading := True;
		CurDispatch := nil;
	end;
end;

procedure TFrm_AdminMap.webNaverMapNavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
	if CurDispatch = nil then
     CurDispatch := pDisp; { save for comparison }
end;

procedure TFrm_AdminMap.CopyToClipboard;
begin
  mMap.CopyToClipboard();
end;

procedure TFrm_AdminMap.DrawPolygon;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  mUtil := mMap.GetUtility();

  style := layerMan.NewStyle(-1);
  style.SetPen(mUtil.RGBColor(0, 0, 255), 2, mUtil.GetConstToValue('PS_SOLID'));
  style.SetBrush(mUtil.RGBAColor(0, 0, 255, 100), mUtil.GetConstToValue('BS_SOLID'));

  obj := layerMan.NewPolygon(1, -1);
  obj.SetStyle(style);
  obj.SetClosed(1);
  obj.SetCanClick(1);
  obj.SetCanFocus(1);

  obj.SetStateModeNew();
end;

procedure TFrm_AdminMap.DrawPolyline;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  mUtil := mMap.GetUtility();

  style := layerMan.NewStyle(-1);
  style.SetPen(mUtil.RGBColor(0, 0, 255), 2, mUtil.GetConstToValue('PS_DOT'));

  obj := layerMan.NewPolygon(1, -1);
  obj.SetStyle(style);
  obj.SetClosed(1);
  obj.SetCanClick(1);
  obj.SetCanFocus(1);

  obj.SetStateModeNew();
end;

function TFrm_AdminMap.D_HightlightTXT(HTEXT: String): String;
var aWord : string;
begin
  try
    aWord := StringReplace(HTEXT, '<B>', '', [rfReplaceAll]);
    aWord := StringReplace(aWord, '<FONT Color = "#1E8EFF">', '', [rfReplaceAll]);
    aWord := StringReplace(aWord, '<FONT Color = "#FE0000">', '', [rfReplaceAll]);
    aWord := StringReplace(aWord, '</FONT>', '', [rfReplaceAll]);
    aWord := StringReplace(aWord, '</B>', '', [rfReplaceAll]);

    aWord := StringReplace(aWord, '<!HS>', '', [rfReplaceAll]);
    aWord := StringReplace(aWord, '<!HE>', '', [rfReplaceAll]);
    Result := aWord;
  except on e: exception do
    begin
      Log('D_HightlightTXT Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'D_HightlightTXT Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_AdminMap.RemovePolygon;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(1);
  if layer <> nil then layer.ClearObject();
end;

procedure TFrm_AdminMap.SaveImage;
var filename : WideString;
begin
	mUtil := mMap.GetUtility();
	filename := mUtil.SaveImageDialog('C:\', 'MapImage.png');
	mMap.SaveImage(filename);
end;

procedure TFrm_AdminMap.CheckArea;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  mUtil := mMap.GetUtility();

  style := layerMan.NewStyle(-1);
  style.SetPen(mUtil.RGBColor(0, 0, 255), 2, mUtil.GetConstToValue('PS_SOLID'));
  style.SetBrush(mUtil.RGBAColor(0, 0, 255, 100), mUtil.GetConstToValue('BS_SOLID'));

  obj := layerMan.NewPolygon(2, -1);
  obj.SetStyle(style);
  obj.SetClosed(1);
	obj.SetShowArea(1);
  obj.SetCanClick(1);
  obj.SetCanFocus(1);

  obj.SetStateModeNew();
end;

procedure TFrm_AdminMap.CheckDistance;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  mUtil := mMap.GetUtility();

  style := layerMan.NewStyle(-1);
  style.SetPen(mUtil.RGBColor(0, 0, 255), 2, mUtil.GetConstToValue('PS_SOLID'));

  obj := layerMan.NewPolygon(2, -1);
  obj.SetStyle(style);
  obj.SetClosed(0);
  obj.SetShowDistance(1);
	obj.SetShowArea(1);
  obj.SetCanClick(1);
  obj.SetCanFocus(1);

  obj.SetStateModeNew();

end;

procedure TFrm_AdminMap.DelDistance;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(2);
  if layer <> nil then layer.ClearObject();
end;

procedure TFrm_AdminMap.MakeStatusbar;
var
  mDpsize : IXSize;
  mImageman : IXImageMan;
  btnImg : IXUIImage;
  stcMsgArea : IXUIStaticText;
  mRootPath : string;
begin
  mCtrlMan := mMap.GetCtrlMan();
	mUiman := mCtrlMan.GetUIMan();
	mCtrlState := mCtrlMan.GetControlState();
	mDpsize := mCtrlState.GetSizeDP();
	mUtil := mMap.GetUtility();

	mImageman := mCtrlMan.GetImageMan();
  mRootPath := ExtractFilePath(Application.ExeName);
  mImageman.SetDefaultPath(mRootPath + '\Image\');
//  mImageman.SetDefaultPath(MAP_URL + 'Theme\image');

	btnImg := mUiman.CreateUI_Image(mUiman);
	btnImg.SetParent(mUiman);
	btnImg.SetUIID(300);
	btnImg.SetImage('areaPanel.png');
//	btnImg.SetBound(0, mDpsize.GetCY()-37, 470, 37);
	btnImg.SetBound(-65, 0, 470, 37);
	btnImg.SetCanClick(0);
	btnImg.SetAlpha(30);
	btnImg.SetAnchor(mUtil.GetConstToValue('TMUIOBJ_ANCHOR_LEFT') or mUtil.GetConstToValue('TMUIOBJ_ANCHOR_TOP'));

	stcMsgArea := mUiman.CreateUI_StaticText(mUiman);
	stcMsgArea.SetParent(btnImg);
	stcMsgArea.SetUIID(301);
	stcMsgArea.SetBound(85, 4, 280, 30);
	stcMsgArea.SetUIObjFontColor(mUtil.RGBColor(255, 255, 255));
	stcMsgArea.SetFont(10, 1, ('돋움'),0);
	stcMsgArea.SetUIObjFontColor(mUtil.RGBColor(255, 255, 255));
	stcMsgArea.SetCanFocus(0);
	stcMsgArea.SetCanClick(0);
end;

procedure TFrm_AdminMap.ObjectModify;
var
  baseman : IXBaseMan;
  layerMan : IXLayerMan;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerman := mCtrlman.GetLayerMan();
  mUtil := mMap.GetUtility();

  baseman := layerman.CastToBaseManager();
  if baseman.GetManMode = mUtil.GetConstToValue('TMMAN_MODE_EDIT') then
      baseman.SetManMode(mUtil.GetConstToValue('TMMAN_MODE_NONE'))
  else baseman.SetManMode(mUtil.GetConstToValue('TMMAN_MODE_EDIT'));
end;

procedure TFrm_AdminMap.ShowThemeForm;
var
  thememan : IXThemeMan;
begin
  mCtrlMan := mMap.GetCtrlMan();
  thememan := mCtrlMan.GetThemeMan();
  thememan.ShowForm();
end;

procedure TFrm_AdminMap.AddWkClone(const AXPos, AYPos: string;
	AWkInfo: TMapWkInfoRec; ATitle, AContents : string);
var
	I, iLog: Integer;
	mAngle : integer;
	mGroup : IXPOIGroup;
	mStyle : IXPOIStyle;
	mItem : IXPOIItem;
	lst_WKLog : TStringList;
begin
	try
//    if (AWkInfo.MAPX = '0') or (AWkInfo.MAPY='') then Exit;
		mCtrlMan := mMap.GetCtrlMan();
		mCtrlState := mCtrlMan.GetControlState();
		mUtil := mMap.GetUtility();

		if pos('.', AWkInfo.MAPY) > 0 then
			WGS84ToBessel_T(AWkInfo.MAPY, AWkInfo.MAPX)
		else
			WGS84IntToBessel(AWkInfo.MAPY, AWkInfo.MAPX);
			
		mGroup := mPoiman.FindGroup(90);
		if mGroup = nil then mGroup := mPoiman.NewGroup(90);
		mStyle := mPoiman.FindStyle(1);
    if mStyle = nil then
		begin
			mStyle := mPoiman.NewStyle(1);
    end;
		if mCtrlState.GetLevel() < 6 then
    begin
			mStyle.SetGDIFont(GS_FONTNAME, 0, 9);  //레벨별 기사 상태 캡션표기
      mStyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
      mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
      mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
			mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);
      mGroup.SetStyle(mStyle);
		end
    else
			mGroup.ClearStyle;

    mAngle := 0;

		mItem := mGroup.NewItem(-1);
		mItem.SetLonLat(ws_Lon, ws_Lat);
		mItem.SetImage(WkClone);

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
		mItem.SetCaption('복제-' + ATitle);
		mItem.SetContents(AContents);
		mItem.SetString('Clone[' + AWkInfo.Sabun + ']');

		mItem.SetAnimation(0); // 1초 단위
		mItem.SetSyncAngle(1);
		mItem.SetAngle(mAngle);
		mItem.SetAlpha(100);

		scb_MapMarkIdx.add(InttoStr(mItem.GetId()));
		scb_MapMarkSabun.add(AWkInfo.Sabun);
		scb_MapMarkTitle.Add('복제-' + ATitle);
		scb_MapMarkContents.Add(AContents);
		scb_MapMarkLon.add(AWkInfo.MAPY);
		scb_MapMarkLat.add(AWkInfo.MAPX);


		lst_WKLog := TStringList.Create;
		try
			if FileExists(WKDATAPATHFILE) then
			begin
				lst_WKLog.LoadFromFile(WKDATAPATHFILE);

				for iLog := 0 to lst_WKLog.count -1 do
				begin 
					if pos(AWkInfo.Sabun, lst_WKLog[iLog]) > 0 then
					begin
						lst_WKLog.delete(iLog);
						Break;
					end;
				end;
				lst_WKLog.SaveToFile(WKDATAPATHFILE);
			end;
		finally
    	lst_WKLog.Free;
		end;
		
		AContents := StringReplace(AContents, #$D#$A, '¶', [rfReplaceAll]);
		AContents := StringReplace(AContents, #13#10, '¶', [rfReplaceAll]);

		WKLog(AWkInfo.Sabun + '│' + InttoStr(mItem.GetId()) + '│' + '복제-' + ATitle + '│' 
				+ AContents + '│' + AWkInfo.MAPY + '│' + AWkInfo.MAPX, WKDATAPATHFILE);
				
//    GetTextSeperationEx2('│', aa, ls_Rcrd)
		mAngle := mAngle + 10;
		if(mAngle > 360) then mAngle := 0;
	except
		btnSearch.enabled := True;
		rbo_UseNaverMap.enabled := True;
	end;
end;

procedure TFrm_AdminMap.AddWkIconReady(const AXPos, AYPos: string;
	AWkInfo: TMapWkInfoRec);
var
	I : Integer;
	Title, Desc: string;

	mAngle : integer;
	mPosLL : IXPoint;
	mGroup : IXPOIGroup;
	mStyle : IXPOIStyle;
	mItem : IXPOIItem;
	statNM : string;
begin
	try
		if (AWkInfo.MAPX = '0') or (AWkInfo.MAPY='') then Exit;
    mCtrlMan := mMap.GetCtrlMan();
		mCtrlState := mCtrlMan.GetControlState();
    mUtil := mMap.GetUtility();
    mPosLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

		if pos('.', AWkInfo.MAPY) > 0 then
			WGS84ToBessel_T(AWkInfo.MAPY, AWkInfo.MAPX)
		else
			WGS84IntToBessel(AWkInfo.MAPY, AWkInfo.MAPX);
		mGroup := mPoiman.FindGroup(0);
    if mGroup = nil then mGroup := mPoiman.NewGroup(0);
    mStyle := mPoiman.FindStyle(1);
    if mStyle = nil then
    begin
      mStyle := mPoiman.NewStyle(1);
    end;
    if mCtrlState.GetLevel() < 6 then
    begin
      mStyle.SetGDIFont(GS_FONTNAME, 0, 9);  //레벨별 기사 상태 캡션표기
      mStyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
      mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
      mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
      mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);
      mGroup.SetStyle(mStyle);
    end
    else
      mGroup.ClearStyle;

    mAngle := 0;

{		iTmp := scb_MapMarkSabun.IndexOf(AWkInfo.Sabun); //클론이 있는지 확인
		if iTmp > -1 then
			mItem := mGroup.NewItem(iTmp)
		else }
 		mItem := mGroup.NewItem(-1);
			
		mItem.SetLonLat(ws_Lon, ws_Lat);
		if AWkInfo.ATTEND = '01' then
    begin
			if (AWkInfo.Con_State = 'B2') and (AWkInfo.BR_Type = '1') then
			begin
				mItem.SetImage(B201);
				statNM := '미접속-자사';
			end
			else
			if (AWkInfo.Con_State = 'B2') and (AWkInfo.BR_Type = '2') then
			begin
				mItem.SetImage(B202);
				statNM := '미접속-타사';
			end
			else
			if (AWkInfo.Con_State = 'A1') and (AWkInfo.BR_Type = '1') then
			begin
				mItem.SetImage(A101);
				statNM := '단순접속-자사';
			end
			else
			if (AWkInfo.Con_State = 'A1') and (AWkInfo.BR_Type = '2') then
			begin
				mItem.SetImage(A102);
				statNM := '단순접속-타사';
			end
			else
			if (AWkInfo.Con_State = 'A2') and (AWkInfo.BR_Type = '1') then
			begin
				mItem.SetImage(A201);
				statNM := '오더접속-자사';
			end
			else
			if (AWkInfo.Con_State = 'A2') and (AWkInfo.BR_Type = '2') then
			begin
				mItem.SetImage(A202);
				statNM := '오더접속-타사';
			end;
		end
		else if AWkInfo.ATTEND = '02' then
		begin
			if AWkInfo.BR_Type = '1' then
			begin
				mItem.SetImage(R0201);
				statNM := '운행-자사';
			end
			else
			if AWkInfo.BR_Type = '2' then
			begin
				mItem.SetImage(R0202);
				statNM := '운행-타사';
			end;

		end
		else
		if AXPos = '1' then
    begin
			mItem.SetImage(ReadyImage);
			statNM := AWkInfo.ATTEND;
    end;

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
		//mItem.SetImageIndex(1);
		mItem.SetImageOffset(4);
    mItem.SetTextStyle(StrToInt('0x12'));

    if i mod 2 <> 0 then mItem.SetStyle(mStyle);

		if AWkInfo.PASS_TIME <> '' then AWkInfo.PASS_TIME := AWkInfo.PASS_TIME + ']';

		Title := '';
		if GS_ADMINMAP_Title_BaeCha then Title := Title + AWkInfo.PASS_TIME;
		if GS_ADMINMAP_Title_BRNAME then Title := Title + ' ' + AWkInfo.BrName;
		if GS_ADMINMAP_Title_WKNAME then
    begin
      if Trim(Title) = '' then Title := AWkInfo.Name
                          else Title := Title + ' - ' + AWkInfo.Name;
    end;
		
//		Title := Format('%s %s (%s)', [AWkInfo.PASS_TIME, AWkInfo.BrName, AWkInfo.Name]);//
		mItem.SetCaption(Title);
		mItem.SetString(AWkInfo.Sabun);

		if AWkInfo.BR_Type = '1' then
		begin
			//불필요한 정보 제외 20180320 KHS 신성현차장 요청
//			Desc := Format('[%s](완료건:%s)'#13#10'%s(%s)'#13#10'%s'#13#10'%s(%s)',
//				[statNM, AWkInfo.FinCnt, AWkInfo.Name, AWkInfo.Sabun, AWkInfo.HP, AWkInfo.BrName, AWkInfo.BrNo] );

			Desc := '';
			if GS_ADMINMAP_TAG_OurWK_Status then Desc := Desc + '[' + statNM + ']';
			if GS_ADMINMAP_TAG_OurWK_FinishCNT then Desc := Desc + '(완료건:' + AWkInfo.FinCnt + ')';
			if GS_ADMINMAP_TAG_OurWK_Name then 
			begin
				if Desc <> '' then Desc := Desc + #13#10 + AWkInfo.Name
				else Desc := Desc + AWkInfo.Name;
			end;
			if GS_ADMINMAP_TAG_OurWK_Sabun then Desc := Desc + '(' + AWkInfo.Sabun + ')';
			if GS_ADMINMAP_TAG_OurWK_HP then 
			begin
				if Desc <> '' then Desc := Desc + #13#10 + AWkInfo.HP
				else Desc := Desc + AWkInfo.HP;
			end;
			if GS_ADMINMAP_TAG_OurWK_BrName then 
			begin
				if Desc <> '' then Desc := Desc + #13#10 + AWkInfo.BrName
				else Desc := Desc + AWkInfo.BrName;
			end;
			if GS_ADMINMAP_TAG_OurWK_BrNo then Desc := Desc + '(' + AWkInfo.BrNo + ')';
			
			mItem.SetContents(Desc);
		end
		else if AWkInfo.BR_Type = '2' then
		begin
			if not GS_ADMINMAP_TAG_BRNAME then AWkInfo.BrName := '';
			if not GS_ADMINMAP_TAG_WKSABUN then AWkInfo.Sabun := '';
			if not GS_ADMINMAP_TAG_WKNAME then AWkInfo.Name := '';
			if (AWkInfo.BrName = '') and (AWkInfo.Sabun = '') and (AWkInfo.Name = '') then
			begin
				if AWkInfo.HP <> '' then
				begin
					if (GT_USERIF.ShareNo = 'G72') And (GS_PRJ_AREA = 'O') then
					begin
						Desc := Format('%s', [StrToCall(AWkInfo.HP)] );
						mItem.SetContents(Desc);
					end;
				end;
			end
			else
			begin
			//불필요한 정보 제외 20180320 KHS 신성현차장 요청
//				Desc := Format('[%s]%s%s[%s](%s)', [statNM, AWkInfo.BrName, AWkInfo.Name, StrToCall(AWkInfo.HP), AWkInfo.Sabun] );
//				mItem.SetContents(Desc);
			end;
		end;
		mItem.SetAnimation(0); // 1초 단위
		mItem.SetSyncAngle(1);
		mItem.SetAngle(mAngle);
    mItem.SetAlpha(100);

    mAngle := mAngle + 10;
    if(mAngle > 360) then mAngle := 0;
	except
		btnSearch.enabled := True;
		rbo_UseNaverMap.enabled := True;
  end;
end;

procedure TFrm_AdminMap.AddWkIconRunner(const AXPos, AYPos: string;
  AWkInfo: TMapWkInfoRec);
var
  I: Integer;
  Title : string;
  itemCount, mAngle : integer;
  mPosLL : IXPoint;
  mGroup : IXPOIGroup;
  mGstyle, mStyle : IXPOIStyle;
  mItem : IXPOIItem;
  Lon_p, Lat_p : Integer;
begin
	try
    Lon_p := 0;
    Lat_p := 0;
    if (AXPos = '0') or (AYPos='') then Exit;
    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState();
    mUtil := mMap.GetUtility();

		mPosLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표
		WGS84ToBessel(AYPos, AXPos);
		mPosLL.SetX(ws_Lon); // 지도의 X 좌표
		mPosLL.SetY(ws_Lat); // 지도의 Y 좌표

		Lon_p := mPosLL.GetX;
    Lat_p := mPosLL.Gety;
      // Step 1. Get POI Manger
		mPoiman := mCtrlMan.GetPOIMan();

      // Step 2. Make POI Group
    mGroup := mPoiman.FindGroup(33);
    if mGroup = nil then mGroup := mPoiman.NewGroup(33);

      // Step 2-1. Make POI Style
    mGstyle := mPoiman.FindStyle(2);
    if (mGstyle = nil) then
    begin
      mGstyle := mPoiman.NewStyle(2); // -1: 아이디 자동 생성
  //    mGstyle.SetGDIFont(GS_FONTNAME, 0, 8);
      mGstyle.SetFontColor(mUtil.RGBColor(0, 0, 0));  //캡션글자
      mGstyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));     //캡션 글자테두리
      mGstyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0); //캡션배경
      // Group에 Style을 지정하면 하위 Item은 별도의 Style을 가지지 않는 한 Group의 Style을 따르게 된다.
      mGroup.SetStyle(mGstyle);
    end;

    mStyle := mPoiman.FindStyle(2);
    if mStyle = nil then
    begin
      mStyle := mPoiman.NewStyle(2);
      mStyle.SetGDIFont(GS_FONTNAME, 1, 9);
      mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
      mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
      mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);
      mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
    end;
		mAngle := 0;

    mItem := mGroup.NewItem(-1);
    mItem.SetLonLat(Lon_p, Lat_p);
    mItem.SetImage(RunImage);
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
    Title := Format('%s(%s)', [AWkInfo.BrName, AWkInfo.Name]);
    mItem.SetCaption(Title);
		mItem.SetString(AWkInfo.Sabun);
		mItem.SetAnimation(0); // 1초 단위
		mItem.SetSyncAngle(1);
    mItem.SetAngle(mAngle);
		mItem.SetAlpha(100);

    mAngle := mAngle + 10;
		if(mAngle > 360) then mAngle := 0;
	except
		btnSearch.enabled := True;
		rbo_UseNaverMap.enabled := True;
  end;
end;

function TFrm_AdminMap.BesselToWGS84(Y_1, x_1: double): integer;
var degree_y, degree_x, min_x, min_y, s_y, s_x, ss_y, ss_x : Double;
	r_x, r_y : integer;
	coord : IXCoordSys;
	pos : IXMapPos;
	d_s, m_s, s_s, ss_s : string;
begin
  coord := mMap.GetCoordSys();
  pos := coord.BesselToWGS84(Y_1, x_1);
  r_y := pos._Lon;
  r_x := pos._Lat;

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
end;

function TFrm_AdminMap.GetAdminCodeF(GLon, GLot: Integer): string;
var
  mAdminman : IXAdminMan;
  mCenterLL : IXPoint;
  mAdmitem : IXAdminItem;
  admcode : string;
  obj : IXUIObj;
begin
  mCtrlMan := mMap.GetCtrlMan();
	mAdminman := mCtrlMan.GetAdminMan();
	mCtrlState := mCtrlMan.GetControlState();
	mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표
	mAdmitem := mAdminman.GetAdminItem(GLon, GLot);

	if mAdmitem <> nil then
  begin
		admcode := mAdmitem.GetAdminCode();	// 행정동 코드 얻기
    obj := mUiman.GetChildByUIID(301);
    if (obj <> nil) then obj.SetCaption(mAdmitem.GetAdminName(' ', 3));
		mAdmitem.Destroy();
	end;
  Result := admcode;
end;


procedure TFrm_AdminMap.GetQuadPoint(AWidth, Aheight: Integer; var VectY,
	VectX: TStringList);
var	pPos : IXMapPos;
	iLon, iLat : integer;
	sLon, sLat : string;
begin
	// '37.494967', '127.123272'
	pPos := mCtrlState.DPToLL(AWidth - AWidth, Aheight - Aheight);   // (0, 0)
	iLon := pPos.GetLon;
	iLat := pPos.GetLat;
	BesselToWGS84(iLon, iLat);
	sLon := Setwgs84(FloatToStr(sw_Lon));      //128.
	sLat := Setwgs84('0'+ FloatToStr(sw_Lat)); //37.
	VectY.Add(sLon);
	VectX.Add(sLat);

	pPos := mCtrlState.DPToLL(AWidth - AWidth, Aheight);              // (0, Aheight)
	iLon := pPos.GetLon;
	iLat := pPos.GetLat;
	BesselToWGS84(iLon, iLat);
	sLon := Setwgs84(FloatToStr(sw_Lon));      //128.
	sLat := Setwgs84('0'+ FloatToStr(sw_Lat)); //37.
	VectY.Add(sLon);
	VectX.Add(sLat);

	pPos := mCtrlState.DPToLL(AWidth, Aheight);              // (AWidth, Aheight)
	iLon := pPos.GetLon;
	iLat := pPos.GetLat;
	BesselToWGS84(iLon, iLat);
	sLon := Setwgs84(FloatToStr(sw_Lon));      //128.
	sLat := Setwgs84('0'+ FloatToStr(sw_Lat)); //37.
	VectY.Add(sLon);
	VectX.Add(sLat);

	pPos := mCtrlState.DPToLL(AWidth, Aheight-Aheight);              // (AWidth, 0)
	iLon := pPos.GetLon;
	iLat := pPos.GetLat;
	BesselToWGS84(iLon, iLat);
	sLon := Setwgs84(FloatToStr(sw_Lon));      //128.
	sLat := Setwgs84('0'+ FloatToStr(sw_Lat)); //37.
	VectY.Add(sLon);
	VectX.Add(sLat);
end;

procedure TFrm_AdminMap.OnMoveMap(lon, lat: INTEGER);
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
  mCtrlState.SetLLCenter(lon, lat);
end;

function TFrm_AdminMap.SetCtrlState(setType: Integer): Integer;
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlman.GetControlState();
  mUtil := mMap.GetUtility();

  case setType of
    // 마우스 드래그 이동
    11: // 설정
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAG'), 1);
    12: // 해제
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAG'), 0);

    // 마우스 드래그 확대/축소
    21: // 설정
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAGZOOM'), 1);
    22: // 해제
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAGZOOM'), 0);

    // 마우스 클릭 이동
    31: // 설정
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_CLICK'), 1);
    32: // 해제
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_CLICK'), 0);

    // 마우스 클릭 이동
    33: // 설정
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DCLICK'), 1);
    34: // 해제
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DCLICK'), 0);

    // 마우스 휠 확대/축소
    41: // 설정
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_WHEEL_ZOOM'), 1);
    42: // 해제
        mCtrlState.SetState(mUtil.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_WHEEL_ZOOM'), 0);
  end;
end;

function TFrm_AdminMap.StrToken(var ASource: String;
  ADelimiter: String): String;
var
  PosToken: integer;
begin
  PosToken := Pos(ADelimiter, ASource);

  result := Copy(ASource, 0, PosToken - 1);
  ASource := Copy(ASource, PosToken + 1, Length(ASource) - PosToken);
end;

function TFrm_AdminMap.WGS84IntToBessel(Y_1, x_1: string): integer;
var r_y, r_X : Integer;
	coord : TalMapXLib_TLB.IXCoordSys;
	pos : IXMapPos;
begin
	coord := mMap.GetCoordSys();
	r_y := strtoint(Y_1);
	r_X := strtoint(x_1);
	pos := coord.WGS84ToBessel(r_y, r_X);
	ws_Lon := pos._Lon;
	ws_Lat := pos._Lat;
end;

function TFrm_AdminMap.WGS84ToBessel(Y_1, x_1: string): integer;
var r_y, r_X : Integer;
	coord : IXCoordSys;
	pos : IXMapPos;
	int_string1, int_string2 : string;
begin
	ws_Lon := 0;
	ws_Lat := 0;
	if ( Copy(x_1, 1, 1) <> '0' ) Or ( Copy(Y_1, 1, 1) <> '1' ) then Exit;

	int_string1 := Y_1;
	r_y := ((StrToInt64(Copy(int_string1,1,3)) * 360000) + (StrToInt64(Copy(int_string1,4,2)) * 6000) + (StrToInt64(Copy(int_string1,6,2)) * 100) + StrToInt64(Copy(int_string1,8,2)));

	int_string2 := x_1;
	r_X := ((StrToInt64(Copy(int_string2,1,3)) * 360000) + (StrToInt64(Copy(int_string2,4,2)) * 6000) + (StrToInt64(Copy(int_string2,6,2)) * 100) + StrToInt64(Copy(int_string2,8,2)));

	coord := mMap.GetCoordSys();
	pos := coord.WGS84ToBessel(r_y, r_X);
	ws_Lon := pos._Lon;
	ws_Lat := pos._Lat;
end;

procedure TFrm_AdminMap.WkSearch(aRound: string);
begin
  BesselToWGS84(m_Lon, m_Lat);
	RequestDataWorker(WK_ATTEND, WK_STATE, WK_ATTEND_TIME, '', '', aRound, '0'+FloatToStr(sw_Lat), FloatToStr(sw_Lon), WK_TYPE );

	rbWK.Checked := True;
  pgcList.ActivePageIndex := 2;
	pnlList.Width := 0;
end;

procedure TFrm_AdminMap.mMapClickNotify(ASender: TObject; Type_, X, Y: Integer);
var	WkRec: TMapWkInfoRec;
	pPos : IXMapPos;
	Notify_Lon, Notify_Lat : integer;
begin
	// '37.494967', '127.123272'
  pPos := mCtrlState.DPToLL(X, Y);
	Notify_Lon := pPos.GetLon;
	Notify_Lat := pPos.GetLat;

	BesselToWGS84(Notify_Lon, Notify_Lat);
	WkRec.MAPY := Setwgs84(FloatToStr(sw_Lon));
	WkRec.MAPX := Setwgs84('0'+ FloatToStr(sw_Lat));
	WkRec.Sabun:= sMarkCloneSabun;

	Try
		if Pos('복제-', sMarkCloneTmp1) = 0  then
			gPOI.SetCaption(sMarkCloneTmp1);  //원본캡션 복원
	except
  End;
	SetWkCloneStyle;
	sMarkCloneTmp1 := StringReplace(sMarkCloneTmp1, '복제-', '', [rfReplaceAll]);
	AddWkClone('', '', WkRec, sMarkCloneTmp1, sMarkCloneTmp2);
end;

procedure TFrm_AdminMap.mMapPOI_Click(ASender: TObject; const POI: IXPOIItem;
	nFlag, X, Y: Integer);
var sSabun, sWk_info : string;
		i, iLog, iDx : Integer;
	mGroup : IXPOIGroup;
	lst_WKLog : TStringList;
begin
	SetDebugeWrite('TFrm_AdminMap.mMapPOI_Click');
	try
		if ((GT_USERIF.HD = 'A1782') and (GS_PRJ_AREA = 'O')) or (GT_USERIF.ID = 'sntest') then
		begin

			mGroup := mPoiman.FindGroup(90);

			gPOI := poi; // mMapClickNotify에서 사용
			iDx:= poi.GetId();
		
			if Copy(poi.GetString(), 1,5) = 'Clone' then 
			begin
				sMarkCloneSabun := poi.GetString();
				sMarkCloneSabun := StringReplace(sMarkCloneSabun, 'Clone[', '', [rfReplaceAll]);
				sMarkCloneSabun := StringReplace(sMarkCloneSabun, ']', '', [rfReplaceAll]);

				lst_WKLog := TStringList.Create;
				try
					for I := 0 to scb_MapMarkSabun.Count - 1 do
					begin
						if sMarkCloneSabun = scb_MapMarkSabun[i] then
						begin 
							sMarkCloneTmp1 := scb_MapMarkTitle[i];
							sMarkCloneTmp2 := scb_MapMarkContents[i];
							sSabun         := scb_MapMarkSabun[i];
					
							mGroup.DeleteItem(iDx);
							scb_MapMarkIdx.delete(i);                 //기존 정보 삭제
							scb_MapMarkSabun.delete(i);
							scb_MapMarkTitle.delete(i);
							scb_MapMarkContents.delete(i);
							scb_MapMarkLon.delete(i);
							scb_MapMarkLat.delete(i);

							if FileExists(WKDATAPATHFILE) then
							begin
								lst_WKLog.LoadFromFile(WKDATAPATHFILE);

								for iLog := 0 to lst_WKLog.count -1 do
								begin 
									if pos(sSabun, lst_WKLog[iLog]) > 0 then
									begin
										lst_WKLog.delete(iLog);
										Break;
									end;
								end;
								lst_WKLog.SaveToFile(WKDATAPATHFILE);
							end;

							Break;
						end;
					end;   
				finally
					lst_WKLog.Free;
				end;
	//			poi.SetCaption('위치설정모드 시작');

				CallClickNotify(1);

				exit;     //선택 POI가 복제면 exit;
			
			end;

			sMarkCloneSabun:= poi.GetString();
			//////////////////////////////기존에 있는지 찾는 부분/////////////////////////
			lst_WKLog := TStringList.Create;
			try
				for I := 0 to scb_MapMarkSabun.Count - 1 do
				begin
					if sMarkCloneSabun = scb_MapMarkSabun[i] then
					begin 
						sSabun := scb_MapMarkSabun[i];

						mGroup.DeleteItem(StrToInt(scb_MapMarkIdx[i]));
						scb_MapMarkIdx.delete(i);                 //기존 정보 삭제
						scb_MapMarkSabun.delete(i);
						scb_MapMarkTitle.delete(i);
						scb_MapMarkContents.delete(i);
						scb_MapMarkLon.delete(i);
						scb_MapMarkLat.delete(i);

						if FileExists(WKDATAPATHFILE) then
						begin
							lst_WKLog.LoadFromFile(WKDATAPATHFILE);

							for iLog := 0 to lst_WKLog.count -1 do
							begin 
								if pos(sSabun, lst_WKLog[iLog]) > 0 then
								begin
									lst_WKLog.delete(iLog);
									Break;
								end;
							end;
							lst_WKLog.SaveToFile(WKDATAPATHFILE);
						end;
				
						Break;
					end;
				end; 
			finally
				lst_WKLog.Free;
			end;
			//////////////////////////////기존에 있는지 찾는 부분/////////////////////////
		
			
			sMarkCloneTmp1 := poi.GetCaption();   //사번_이름(사번)
			sWk_info := sMarkCloneTmp1; 

			sMarkCloneTmp2 := poi.GetContents();    //[오더접속-타사]......
			poi.SetCaption('위치설정모드 시작');

			CallClickNotify(1);
		end;
	except on e: exception do
		begin
			Log('mMapPOI_Click Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'mMapPOI_Click Error :' + E.Message);
		end;
	end;
end;

procedure TFrm_AdminMap.mMapCreate(ASender: TObject; Value: Integer);
var
  mMapMan : IXMapMan;
  mThemeMan : IXThemeMan;
  mAdminMan : IXAdminMan;
  mRootPath, XPos, YPos : String;
begin
	mRootPath := ExtractFilePath(Application.ExeName);

  mCtrlMan := mMap.GetCtrlMan();
  mThemeMan := mCtrlMan.GetThemeMan();
  mMapMan := mCtrlMan.GetMapMan();
  mAdminMan := mCtrlMan.GetAdminMan();

  mPoiman := mCtrlMan.GetPOIMan();


  // CtrlMan의 Default Path를 프로그램 실행 디렉토리로 설정
//  mCtrlMan.SetDefaultPath(WideString(mRootPath));
  mCtrlMan.SetDefaultPath(MAP_URL);

  // 라이센스 파일을 Load한다 정상적으로 Load가 안되면 에러메세지지가 출력.
//  if mCtrlMan.LoadLicense(WideString(mRootPath + 'eksys\license\jway_sn.TML')) <> true then
  if mCtrlMan.LoadLicense(MAP_URL + 'license\CMNAGTXE.tml') <> true then
  begin
    Assert(False, 'TalMap License Error :' + MAP_URL + 'license\CMNAGTXE.tml');
    ShowMessage('라이센스 설정에 실패했습니다.');
    exit
  end;

  // Map 데이터를 설정 TM1폴더의 상위 폴더를 지정.
  // Web Server에 올리실 경우는 아래와 같이 동일하게 TM1폴더의 상위 폴더까지만 지정하면 됩니다.
  // 예: 'http://user-site.co.kr/Map/MapData' --> MapData 밑에는 TM1폴더가 위치하게 하면 됩니다.
//  if mMapMan.SetDefaultPath(WideString(mRootPath + 'eksys\MapData')) <> true then
  if mMapMan.SetDefaultPath(MAP_URL + 'MapData') <> true then
  begin
    ShowMessage('Map 데이터 설정에 실패했습니다.');
    exit
  end;

  // Theme 파일을 설정.
//  mThemeMan.SetDefaultPath(mRootPath + 'eksys\Theme');
  mThemeMan.SetDefaultPath(MAP_URL + 'Theme');
  if mThemeMan.LoadTheme('MNS.TMT') <> 1 then
  begin
    ShowMessage('테마파일 설정에 실패했습니다.');
    Exit
  end;

  // Admin 파일을 설정.
//  mAdminMan.SetDefaultPath(mRootPath + 'eksys\Theme');
  mAdminMan.SetDefaultPath(MAP_URL + 'Theme');

  if mAdminMan.LoadAdmin('TalMap_M.TMA') <> true then
  begin
    ShowMessage('행정도파일 설정에 실패했습니다.');
    Exit
  end;
	mUiman := mCtrlman.GetUIMan();
	mUiman.SetShowCenterLine(2);       //센터 열십자.

  SetCtrlState(32);//마우스 클릭이동 해제

{	mCtrlMan.SetDefaultEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEMOVE'));
	mCtrlMan.SetDefaultEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEDOWN'));
	mCtrlMan.SetDefaultEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP'));
	mCtrlMan.SetDefaultEventMode(mUtil.GetConstToValue('TMEVENTTYPE_POI_MOUSEDOWN')); }
	mCtrlMan.SetDefaultEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEMOVE') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEDOWN') or
															 mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP')   or mUtil.GetConstToValue('TMEVENTTYPE_POI_MOUSEDOWN'));
	
	if (Save_map_Lat = '') and (Save_map_Lon = '') then
  begin
    XPos := Area_CenterLat;
    YPos := Area_CenterLon;
	end else
  begin
    XPos := Save_map_Lat;
    YPos := Save_map_Lon;
	end;
  WGS84ToBessel(YPos, XPos);
  OnMoveMap(ws_Lon, ws_Lat);
//  OnMoveMap(WGS84ToBessel_Lon(YPos, XPos), WGS84ToBessel_Lat(YPos, XPos));

  sts_Chk := True;
  GeneralInit;
	rbo_UseNaverMap.checked := False;   // 20201208 신성현팀장님 체크 해제 요청
end;

procedure TFrm_AdminMap.mMapMouseDown(ASender: TObject; Flag, X, Y: Integer);
begin
	gClone := False;
end;

procedure TFrm_AdminMap.mMapMouseMove(ASender: TObject; Flag, X, Y: Integer);
begin
  gMapX := X;
  gMapY := Y;
  tmrDongPolygon.Enabled := True;
end;

procedure TFrm_AdminMap.pMapDongPolygon( X, Y : Integer );
var
	pos : IXMapPos;
	mAdminman : IXAdminMan;
	mStyle : IXLayerStyle;
	mLayerman : IXLayerMan;
	mLayer : IXLayer;
	mItem : IXAdminItem;
  mPoll : IXPoint;
	mPolygon : IXLayerPolygon;
begin
  try
    mLayerman := mCtrlman.GetLayerMan();
    mLayer :=  mLayerman.FindLayer(1);
    if mLayer <>nil then
      mLayer.ClearObject();

    pos := mCtrlState.DPToLL(X, Y);
    m_Lon := pos.GetLon;
    m_Lat := pos.GetLat;

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

    //  mAdminMan.LoadAdmin('TalMap_M.TMA');
    mItem := mAdminMan.GetAdminItemByCode(GetAdminCodeF(m_Lon,m_Lat));

    mCtrlState := mCtrlMan.GetControlState();
    mPoll :=  mCtrlState.GetLLCenter();

    BesselToWGS84(mPoll.GetX, mPoll.Gety);
    Save_map_Lon := FloatToStr(sw_Lon);
    Save_map_Lat := '0'+ FloatToStr(sw_Lat);

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

  end;
end;

procedure TFrm_AdminMap.mMapMouseUp(ASender: TObject; Flag, X, Y: Integer);
begin
	gClone := False;
end;

procedure TFrm_AdminMap.mMapPOI_MouseUp(ASender: TObject; const POI: IXPOIItem;
	nFlag, X, Y: Integer);
begin
	if Copy(poi.GetString(), 1,5) = 'Clone' then
	begin
		sMarkCloneSabun := poi.GetString();
		sMarkCloneSabun := StringReplace(sMarkCloneSabun, 'Clone[', '', [rfReplaceAll]);
		sMarkCloneSabun := StringReplace(sMarkCloneSabun, ']', '', [rfReplaceAll]);
		iMarkCloneIdx := poi.GetId();
		gClone := True;
	end
	else
		gClone := False;
end;

procedure TFrm_AdminMap.mMapUI_MouseMove(ASender: TObject;
  const Obj: IXUIObj; Flag, X, Y: Integer);
begin
  if Obj.GetUIID > 200 then
  begin
    MyToolBar1[Obj.GetUIID - 200].SetItemIndex(3);
    Obj.SetAlpha(0);
  end;
end;

function TFrm_AdminMap.Map_SetLevel(level: Integer): Integer;
begin
  if (level < minLogicalLevel) then Exit;
  if (level > maxLogicalLevel) then Exit;
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
  mCtrlState.SetLevel(level);
end;

procedure TFrm_AdminMap.mniIconCaptionClick(Sender: TObject);
begin
	WkSearch('0.5');
	Skm := '0.5'
end;

function TFrm_AdminMap.M_ParseTXT(tText: String): string;
Var clr, sTmp : String;
begin
  clr := '#'+IntToHex($001E8EFF, 6);

  sTmp := tText;
	sTmp := StringReplace(sTmp, '<!HS>','<B><FONT Color = "'+clr+'">', [rfReplaceAll]);
  sTmp := StringReplace(sTmp, '<!HE>','</B></FONT>', [rfReplaceAll]);

  Result := sTmp;
end;

procedure TFrm_AdminMap.N1Km1Click(Sender: TObject);
begin
  WkSearch('1');
	Skm := '1'
end;

procedure TFrm_AdminMap.N3Km1Click(Sender: TObject);
begin
  WkSearch('3');
  Skm := '3'
end;

procedure TFrm_AdminMap.N5Km1Click(Sender: TObject);
begin
  WkSearch('5');
  Skm := '5'
end;

procedure TFrm_AdminMap.NWkCloneClick(Sender: TObject);
var mGroup : IXPOIGroup;
		i, iLog : integer;
		lst_WKLog : TStringList;
begin
	SetDebugeWrite('TFrm_AdminMap.NWkCloneClick');
	try


		mGroup := mPoiman.FindGroup(90);
		//////////////////////////////클론선택시 삭제/////////////////////////
		lst_WKLog := TStringList.Create;
		try
			for I := 0 to scb_MapMarkSabun.Count - 1 do
			begin
				if sMarkCloneSabun = scb_MapMarkSabun[i] then
				begin 
					mGroup.DeleteItem(iMarkCloneIdx);
					scb_MapMarkIdx.delete(i);                 //기존 정보 삭제
					scb_MapMarkSabun.delete(i);
					scb_MapMarkTitle.delete(i);
					scb_MapMarkContents.delete(i);
					scb_MapMarkLon.delete(i);
					scb_MapMarkLat.delete(i);

					if FileExists(WKDATAPATHFILE) then
					begin
						lst_WKLog.LoadFromFile(WKDATAPATHFILE);

						for iLog := 0 to lst_WKLog.count -1 do
						begin 
							if pos(sMarkCloneSabun, lst_WKLog[iLog]) > 0 then
							begin
								lst_WKLog.delete(iLog);
								Break;
							end;
						end;
						lst_WKLog.SaveToFile(WKDATAPATHFILE);
					end;

					Break;
				end;
			end;   
		finally
			lst_WKLog.Free;
		end;
		//////////////////////////////클론선택시 삭제////////////////////////
	except on e: exception do
		begin
			Log('NWkCloneClick Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'NWkCloneClick Error :' + E.Message);
		end;
	end;
end;

procedure TFrm_AdminMap.N1Click(Sender: TObject);
begin
	ClearWkIcon;
end;

procedure TFrm_AdminMap.DestroyUI;
var
obj : IXUIObj;
i : Integer;
begin
	obj := mMap.GetCtrlMan.GetUIMan.GetChildByUIID(11);
  if obj <> nil then
		obj.DestroyUIObj();

  for i :=0 to 20 do
  begin
    if (i <> 11) and (i <> 12) and (i <> 16) then
      MyToolBar1[i].DestroyUIObj();
  end;
end;

function TFrm_AdminMap.DistCalc(sx, sy, ex, ey: string): string;
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

procedure TFrm_AdminMap.FormResize(Sender: TObject);
begin
  if sts_Chk then
  begin
		DestroyUI;
    CreateLevelBar;
    CreateToolBarUI;
	end;
end;

procedure TFrm_AdminMap.TalMapXCtrl1POI_DblClick(ASender: TObject;
  const POI: IXPOIItem; nFlag, X, Y: Integer);
var
  pos : IXMapPos;
  mLayerman : IXLayerMan;
  mLayer : IXLayer;
  m_Lon, m_Lat : Integer;
begin
	mLayerman := mCtrlman.GetLayerMan();
  mLayer :=  mLayerman.FindLayer(1);
  if mLayer <>nil then
		mLayer.ClearObject();

  pos := mCtrlState.DPToLL(X, Y);
  m_Lon := pos.GetLon;
  m_Lat := pos.GetLat;

  OnMoveMap(m_Lon, m_Lat);
end;

procedure TFrm_AdminMap.TalMapXCtrl1StateChange(ASender: TObject; Code,
  Value1, Value2: Integer);
var
  mGroup : IXPOIGroup;
  mGstyle : IXPOIStyle;
	mPoi : IXPOIItem;
	poi_cnt, i : integer;
begin
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
					// Step 1. Get POI Manger
  //      mPoiman := mCtrlMan.GetPOIMan();

          // Step 2. Make POI Group
				mGroup := mPoiman.FindGroup(0);
				if mGroup = nil then mGroup := mPoiman.NewGroup(0);

  //레벨별 기사 상태 캡션표기//////////////////////////////////
          // 대기중
        mGstyle := mPoiman.FindStyle(1);
        if (mGstyle <> nil) then
        begin
  //        mGstyle := mPoiman.NewStyle(1); // -1: 아이디 자동 생성
          if mCtrlState.GetLevel() < 6 then
          begin
            mGstyle.SetGDIFont(GS_FONTNAME, 0, 9);  //레벨별 기사 상태 캡션표기
            mGstyle.SetFontColor(mUtil.RGBColor(0, 0, 0));  //캡션글자
            mGstyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));     //캡션 글자테두리
            mGstyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0); //캡션배경
            mGstyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
            mGroup.SetStyle(mGstyle);
          end
          else
          begin
            mGroup.ClearStyle;
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
{						if (mPoi <> nil) and (mCtrlState.GetLevel() > 8) then
						begin
							mPoi.SetImageIndex(4);
						end
						else if (mPoi <> nil) and (mCtrlState.GetLevel() < 9) and (mCtrlState.GetLevel() > 4) then
						begin
							mPoi.SetImageIndex(2);
						end
						else if (mPoi <> nil) and (mCtrlState.GetLevel() < 4)then
						begin
							mPoi.SetImageIndex(1);
						end;  }
          end;
				end;  

	//레벨별 기사 상태 캡션표기clone//////////////////////////////////
				mGroup := mPoiman.FindGroup(90);     //clone
				if mGroup = nil then mGroup := mPoiman.NewGroup(90);

					// 대기중
				mGstyle := mPoiman.FindStyle(1);
				if (mGstyle <> nil) and (mGroup <> nil) then
				begin
	//        mGstyle := mPoiman.NewStyle(1); // -1: 아이디 자동 생성
					if mCtrlState.GetLevel() < 6 then
					begin
						mGstyle.SetGDIFont(GS_FONTNAME, 0, 9);  //레벨별 기사 상태 캡션표기
						mGstyle.SetFontColor(mUtil.RGBColor(0, 0, 0));  //캡션글자
						mGstyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));     //캡션 글자테두리
						mGstyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0); //캡션배경
						mGstyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
						mGroup.SetStyle(mGstyle);
					end
					else
					begin
						mGroup.ClearStyle;
					end;
				end;

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
						{
						if (mPoi <> nil) and (mCtrlState.GetLevel() > 8) then
            begin
							mPoi.SetImageIndex(4);
            end
            else if (mPoi <> nil) and (mCtrlState.GetLevel() < 9) and (mCtrlState.GetLevel() > 4) then
            begin
              mPoi.SetImageIndex(2);
            end
            else if (mPoi <> nil) and (mCtrlState.GetLevel() < 4)then
            begin
              mPoi.SetImageIndex(1);
						end; }
          end;
				end;  

				//운행중
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
						{
						if (mPoi <> nil) and (mCtrlState.GetLevel() > 8) then
            begin
							mPoi.SetImageIndex(4);
            end
            else if (mPoi <> nil) and (mCtrlState.GetLevel() < 9) and (mCtrlState.GetLevel() > 4) then
            begin
              mPoi.SetImageIndex(2);
            end
            else if (mPoi <> nil) and (mCtrlState.GetLevel() < 5)then
            begin
              mPoi.SetImageIndex(1);
						end;  }
          end;
				end;  

  //레벨별 기사 아이콘변경/////////////////////////////////////
      end;
    end;
	except
    btnSearch.enabled := True;
		rbo_UseNaverMap.enabled := True;
	end;
end;

procedure TFrm_AdminMap.TalMapXCtrl1UI_MouseDown(ASender: TObject;
  const Obj: IXUIObj; Flag, X, Y: Integer);
begin
 // Map Tool Bar
  if Obj.GetUIID > 200 then
  begin
    MyToolBar1[Obj.GetUIID - 200].SetItemIndex(2);
    Obj.SetAlpha(80);
  end;
end;

procedure TFrm_AdminMap.TalMapXCtrl1UI_MouseHover(ASender: TObject;
  const Obj: IXUIObj);
begin
// Level Bar
  if Obj.GetUIID = 11 then Obj.SetAlpha(0);

  if Obj.GetParent.GetUIID = 11 then  Obj.GetParent().SetAlpha(0);

  // ToolBar Style 2
  if Obj.GetUIID > 200 then
  begin
    MyToolBar1[Obj.GetUIID - 200].SetItemIndex(3);
    Obj.SetAlpha(0);
  end;
end;

procedure TFrm_AdminMap.TalMapXCtrl1UI_MouseLeave(ASender: TObject;
  const Obj: IXUIObj);
begin
  // Level Bar
  if Obj.GetUIID = 11 then Obj.SetAlpha(80);
  if Obj.GetParent.GetUIID = 11  then Obj.GetParent.SetAlpha(80);

  // ToolBar Style 2
  if Obj.GetUIID > 200 then
  begin
    MyToolBar1[Obj.GetUIID - 200].SetItemIndex(1);
    Obj.SetAlpha(0);
  end;
end;

procedure TFrm_AdminMap.TalMapXCtrl1UI_MouseMove(ASender: TObject;
  const Obj: IXUIObj; Flag, X, Y: Integer);
begin
  if Obj.GetUIID > 200 then
  begin
    MyToolBar1[Obj.GetUIID - 200].SetItemIndex(3);
		Obj.SetAlpha(0);
  end;
end;

procedure TFrm_AdminMap.TalMapXCtrl1UI_MouseUp(ASender: TObject;
  const Obj: IXUIObj; Flag, X, Y: Integer);
var UIID : integer;
begin
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
  end else
  begin
    UIID := obj.GetUIID;
    case UIID of
     201 : Map_ZoomOut;
     202 : Map_ZoomIn;
     203 : Map_Rotate(); 
     204 : HistoryPrev();
     205 : HistoryNext();
     206 : BirdView();
     207 : View3D;
     208 : ViewText();
     209 : CopyToClipboard;
     210 : SaveImage;
     211 : Exit;
     212 : Exit;
     213 : DrawPolygon;
     214 : DrawPolyline;
     215 : RemovePolygon;
     216 : Exit;
     217 : CheckArea;
     218 : CheckDistance;
     219 : DelDistance;
     220 : ObjectModify;
     221 : ShowThemeForm();
    end;
     MyToolBar1[UIID-200].SetItemIndex(1);
  end;
end;

procedure TFrm_AdminMap.tmrDongPolygonTimer(Sender: TObject);
begin
  tmrDongPolygon.Enabled := False;
  pMapDongPolygon(gMapX, gMapY);
end;

procedure TFrm_AdminMap.N30Km1Click(Sender: TObject);
begin
  WkSearch('30');
  Skm := '30'
end;

procedure TFrm_AdminMap.SetReadyStyle;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;
			// Step 3. Make POI Items
		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		ReadyImage := mImageman.LoadImageList('Ready', 'Ready.png',35,35 );
		if Not ReadyImage.IsValid then ShowMessage('ReadyImage 이상');
	except
	end;
end;

procedure TFrm_AdminMap.SetRunStyle;
var
  mImageman : IXImageMan;
  mRootPath : string;
begin
  Try
    mImageman := mCtrlMan.GetImageMan();
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath + '\Image\');
		RunImage := mImageman.LoadImageList('Run', 'Run.png',35,35 );
    if Not RunImage.IsValid then ShowMessage('RunImage 이상');
  except
  end;
end;

function TFrm_AdminMap.SetWGS84(idata: string): string;
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

procedure TFrm_AdminMap.SetWkCloneStyle;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mGroup := mPoiman.FindGroup(90);
		if mGroup <> nil then mGroup.ClearStyle;
		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);

		mImageman.SetDefaultPath(mRootPath + '\Image\');
		WkClone := mImageman.LoadImageList('WkClone', 'WkClone.png',35,35 );
		if Not WkClone.IsValid then ShowMessage('WkClone Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap.setWkPoiMark(aLat, aLon: String;
  AWkInfo: TMapWkInfoRec);
var
	Title, Desc: string;

	mAngle : integer;
	statNM : string;
	aWkName, aWkSabun, aContents, aGubun : string;
begin
	try
		mAngle := 0;
		
		if (AWkInfo.MAPX = '0') or (AWkInfo.MAPY='') then Exit;

		if pos('.', AWkInfo.MAPY) > 0 then
		begin
			aLat := AWkInfo.MAPX;
			aLon := AWkInfo.MAPY;
		end	else
		begin
			aLat := SetWGS84(AWkInfo.MAPX);
			aLon := SetWGS84(AWkInfo.MAPY);
		end;

		if AWkInfo.ATTEND = '01' then
		begin
			if (AWkInfo.Con_State = 'B2') and (AWkInfo.BR_Type = '1') then
			begin
				aGubun := 'm0001';
				statNM := '미접속-자사';
			end	else
			if (AWkInfo.Con_State = 'B2') and (AWkInfo.BR_Type = '2') then
			begin
				aGubun := 'm0002';
				statNM := '미접속-타사';
			end	else
			if (AWkInfo.Con_State = 'A1') and (AWkInfo.BR_Type = '1') then
			begin
				aGubun := 'm0101';
				statNM := '단순접속-자사';
			end	else
			if (AWkInfo.Con_State = 'A1') and (AWkInfo.BR_Type = '2') then
			begin
				aGubun := 'm0102';
				statNM := '단순접속-타사';
			end	else
			if (AWkInfo.Con_State = 'A2') and (AWkInfo.BR_Type = '1') then
			begin
				aGubun := 'm0201';
				statNM := '오더접속-자사';
			end	else
			if (AWkInfo.Con_State = 'A2') and (AWkInfo.BR_Type = '2') then
			begin
				aGubun := 'm0202';
				statNM := '오더접속-타사';
			end;
		end	else
    if AWkInfo.ATTEND = '02' then
		begin
			if AWkInfo.BR_Type = '1' then
			begin
				aGubun := 'Run1';
				statNM := '운행-자사';
			end	else
			if AWkInfo.BR_Type = '2' then
			begin
				aGubun := 'Run2';
				statNM := '운행-타사';
			end;
		end;
		if AWkInfo.PASS_TIME <> '' then AWkInfo.PASS_TIME := AWkInfo.PASS_TIME + ']';
		if GS_ADMINMAP_Title_BaeCha then Title := Title + AWkInfo.PASS_TIME;
		if GS_ADMINMAP_Title_BRNAME then Title := Title + ' ' + AWkInfo.BrName;
		if GS_ADMINMAP_Title_WKNAME then
    begin
      if Trim(Title) = '' then Title := AWkInfo.Name
                          else Title := Title + ' - ' + AWkInfo.Name;
    end;

		aWkName := Title;
		aWkSabun := AWkInfo.Sabun;

		if AWkInfo.BR_Type = '1' then
		begin
			Desc := '';
			if GS_ADMINMAP_TAG_OurWK_Status then Desc := Desc + '[' + statNM + ']';
			if GS_ADMINMAP_TAG_OurWK_FinishCNT then Desc := Desc + '(완료건:' + AWkInfo.FinCnt + ')';
			if GS_ADMINMAP_TAG_OurWK_Name then
			begin
				if Desc <> '' then Desc := Desc + '<br>' + AWkInfo.Name
				              else Desc := Desc + AWkInfo.Name;
			end;
			if GS_ADMINMAP_TAG_OurWK_Sabun then Desc := Desc + '(' + AWkInfo.Sabun + ')';
			if GS_ADMINMAP_TAG_OurWK_HP then
			begin
				if Desc <> '' then Desc := Desc + '<br>' + AWkInfo.HP
				              else Desc := Desc + AWkInfo.HP;
			end;
			if GS_ADMINMAP_TAG_OurWK_BrName then
			begin
				if Desc <> '' then Desc := Desc + '<br>' + AWkInfo.BrName
				              else Desc := Desc + AWkInfo.BrName;
			end;
			if GS_ADMINMAP_TAG_OurWK_BrNo then Desc := Desc + '(' + AWkInfo.BrNo + ')';

			aContents := Desc;
		end else
    if AWkInfo.BR_Type = '2' then
		begin
			if not GS_ADMINMAP_TAG_BRNAME then AWkInfo.BrName := '';
			if not GS_ADMINMAP_TAG_WKSABUN then AWkInfo.Sabun := '';
			if not GS_ADMINMAP_TAG_WKNAME then AWkInfo.Name := '';
			if (AWkInfo.BrName = '') and (AWkInfo.Sabun = '') and (AWkInfo.Name = '') then
			begin
				if AWkInfo.HP <> '' then
				begin
					if (GT_USERIF.ShareNo = 'G72') And (GS_PRJ_AREA = 'O') then
					begin
						Desc := Format('%s', [StrToCall(AWkInfo.HP)] );
						aContents := Desc;
					end;
				end;
			end else
			begin
			//불필요한 정보 제외 20180320 KHS 신성현차장 요청
//				Desc := Format('[%s]%s%s[%s](%s)', [statNM, AWkInfo.BrName, AWkInfo.Name, StrToCall(AWkInfo.HP), AWkInfo.Sabun] );
//				mItem.SetContents(Desc);
			end;
		end;
		mAngle := mAngle + 10;
		if(mAngle > 360) then mAngle := 0;
	except
	end;

	Try
		ExecuteJavaScript(webNaverMap,'setWkPoiMark('+InttoStr(4)+','+ aLat +','+ aLon +','''+ aWkName +''','''+ aWkSabun +''','''+ aContents +''','''+ aGubun +''');');
//		ExecuteJavaScript(webNaverMap,'setWkPoiMark('+ aLat +','+ aLon +','''+ aGubun +''');');
	except
	End;
end;

procedure TFrm_AdminMap.cxbtnHIntClick(Sender: TObject);
begin
  if pnlHint.Visible then pnlHint.Visible := False
                     else pnlHint.Visible := True;
end;

procedure TFrm_AdminMap.cxButton1Click(Sender: TObject);
var
  cLat, cLon : Integer;
  CPoint : IXPoint;
  XmlData, Param, ErrMsg: string;
  ErrCode : Integer;
  mAdminman : IXAdminMan;
  mCenterLL : IXPoint;
  mAdmitem : IXAdminItem;
  admname : string;
begin
  if (GT_USERIF.LV <> '60') and (GT_USERIF.LV <> '40') then
  begin
    GMessagebox('상담원 권한은 기준위치 지정을 할 수 없습니다..', CDMSE);
    exit;
  end;

  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
  CPoint := mCtrlState.GetLLCenter;
  cLon := CPoint._x; //lon
  cLat := CPoint._y; //lat

  BesselToWGS84(cLon, cLat);
  //기준위치 등록
  mCtrlMan := mMap.GetCtrlMan();
	mAdminman := mCtrlMan.GetAdminMan();
	mCtrlState := mCtrlMan.GetControlState();
	mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표
	mAdmitem := mAdminman.GetAdminItem(cLon, cLat);

	if mAdmitem <> nil then
  begin
		admname := mAdmitem.GetAdminName(' ', 3);	// 행정동 코드 얻기
		mAdmitem.Destroy();
	end;

  if GMessagebox(admname + '을 기준지점으로 선택하셨습니다.' + #13#10 + '선택하시겠습니까?', CDMSQ) = idok then
  begin
    Area_CenterName := admname;

		Area_CenterLat := '0' + FloatToStr(sw_Lat);
    Area_CenterLon := FloatToStr(sw_Lon);

    Param := '';
    Param := Area_CenterName + '│' + Area_CenterLat + '│' + Area_CenterLon;
    if not RequestBase(GetCallable05('SET_BASE_LOCATION', 'CAS.SET_BASE_LOCATION', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('기준위치 설정 에러발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
      GT_USERIF.UseCallPass := False;
      ShareMsnYN := 'n';
      Exit;
    end;
    lbl2.Caption := Area_CenterName;
  end;
end;

procedure TFrm_AdminMap.AdminMapSet;
begin
	chkWKWAIT1.Checked := GS_ADMINMAP_WKCON1;
	chkWKWAIT2.Checked := GS_ADMINMAP_WKCON2;

	chkWKWAITAll.Checked := GS_ADMINMAP_WKAll;
	chkWKWAIT3.Checked := GS_ADMINMAP_WKCON3;
	chkWKWAIT4.Checked := GS_ADMINMAP_WKCON4;

	if chkWKWAITAll.checked then
	begin
		chkWKWAIT3.Checked := False;
		chkWKWAIT4.Checked := False;
		
		chkWKWAIT3.Enabled := False;
		chkWKWAIT4.Enabled := False;
	end
	else
	begin
		chkWKWAIT3.Enabled := True;
		chkWKWAIT4.Enabled := True;
	end;


	if ( chkWKWAIT1.Checked ) And ( chkWKWAIT2.Checked ) then WK_ATTEND := '00' else
  if ( chkWKWAIT1.Checked ) And ( Not chkWKWAIT2.Checked ) then WK_ATTEND := 'A2' else
  if ( Not chkWKWAIT1.Checked ) And ( chkWKWAIT2.Checked ) then WK_ATTEND := 'B2' else
	if ( Not chkWKWAIT1.Checked ) And ( Not chkWKWAIT2.Checked ) then WK_ATTEND := '04';

	if chkWKWAITAll.Checked then WK_STATE := '00'
	else
	begin
		if ( chkWKWAIT3.Checked ) And ( chkWKWAIT4.Checked ) then WK_STATE := 'A0' else
		if ( chkWKWAIT3.Checked ) And ( Not chkWKWAIT4.Checked ) then WK_STATE := 'A1' else
		if ( Not chkWKWAIT3.Checked ) And ( chkWKWAIT4.Checked ) then WK_STATE := 'A2' else
		if ( Not chkWKWAIT3.Checked ) And ( Not chkWKWAIT4.Checked ) then WK_STATE := 'B2' ;
	end;

  chkWKB10.Checked := GS_ADMINMAP_B10;
  chkWKB20.Checked := GS_ADMINMAP_B20;
  chkWKB30.Checked := GS_ADMINMAP_B30;
	chkWKB30A.Checked := GS_ADMINMAP_B30A;
	
	WK_ATTEND_TIME := '';
  if GS_ADMINMAP_B10 then WK_ATTEND_TIME := '0-10';
	if GS_ADMINMAP_B20 then
  begin
    if WK_ATTEND_TIME <> '' then
      WK_ATTEND_TIME := WK_ATTEND_TIME + ',' + '10-20'
    else
      WK_ATTEND_TIME := '10-20';
  end;
  if GS_ADMINMAP_B30 then
  begin
    if WK_ATTEND_TIME <> '' then
      WK_ATTEND_TIME := WK_ATTEND_TIME + ',' + '20-30'
    else
      WK_ATTEND_TIME := '20-30';
  end;
  if GS_ADMINMAP_B30A then
  begin
    if WK_ATTEND_TIME <> '' then
      WK_ATTEND_TIME := WK_ATTEND_TIME + ',' + '30-1440'
    else
      WK_ATTEND_TIME := '30-1440';
  end;

  //  횡계365 A5518 / 대관령365 A5519   이명재대리요청 2021.02.10
  if ( GS_PRJ_AREA = 'S' ) And ((GT_USERIF.HD = 'A5518') Or (GT_USERIF.HD = 'A5519')) then
  begin
    GS_ADMINMAP_CHK := '1'; // 자기사만 조회 가능
    rbWKWAIT5.Visible := False;
    rbSTWAIT5.Visible := False;
    rbWKWAIT7.Visible := False;
    rbSTWAIT7.Visible := False;
  end;

	if GS_ADMINMAP_CHK = '0' then
  begin
    rbWKWAIT5.Checked := True;
    rbSTWAIT5.Checked := True;
    WK_TYPE := '0';
  end else
  if GS_ADMINMAP_CHK = '1' then
  begin
    rbWKWAIT6.Checked := True;
    rbSTWAIT6.Checked := True;
    WK_TYPE := '1';
  end else
  if GS_ADMINMAP_CHK = '2' then
  begin
    rbWKWAIT7.Checked := True;
    rbSTWAIT7.Checked := True;
    WK_TYPE := '2';
  end;

	chk_WKTitle_BaeCha.Checked := GS_ADMINMAP_Title_BaeCha;
	chk_WKTitle_WkName.Checked := GS_ADMINMAP_Title_WKNAME;
	chk_WKTitle_BrName.Checked := GS_ADMINMAP_Title_BRNAME;

	chkWKBRNAME.Checked := GS_ADMINMAP_TAG_BRNAME;
	chkWKSABUN.Checked := GS_ADMINMAP_TAG_WKSABUN;
  chkWKNAME.Checked := GS_ADMINMAP_TAG_WKNAME;
	cxcbSelMapLevle.ItemIndex  := StrToInt(GS_ADMINMAP_LEVEL)-1;

	chk_OurWK_Status.Checked    := GS_ADMINMAP_TAG_OurWK_Status   ;
	chk_OurWK_FinishCNT.Checked := GS_ADMINMAP_TAG_OurWK_FinishCNT;
	chk_OurWK_Name.Checked      := GS_ADMINMAP_TAG_OurWK_Name 		; 
	chk_OurWK_Sabun.Checked     := GS_ADMINMAP_TAG_OurWK_Sabun 	  ;
	chk_OurWK_HP.Checked        := GS_ADMINMAP_TAG_OurWK_HP 			; 
	chk_OurWK_BrName.Checked    := GS_ADMINMAP_TAG_OurWK_BrName 	; 
	chk_OurWK_BrNo.Checked      := GS_ADMINMAP_TAG_OurWK_BrNo 		;

end;

procedure TFrm_AdminMap.cxButton3Click(Sender: TObject);
begin
	GS_ADMINMAP_WKCON1 := chkWKWAIT1.Checked;
	GS_ADMINMAP_WKCON2 := chkWKWAIT2.Checked;

	GS_ADMINMAP_WKALL  := chkWKWAITALL.Checked;
	GS_ADMINMAP_WKCON3 := chkWKWAIT3.Checked;
	GS_ADMINMAP_WKCON4 := chkWKWAIT4.Checked;

	GS_ADMINMAP_B10 := chkWKB10.Checked;
	GS_ADMINMAP_B20 := chkWKB20.Checked;
	GS_ADMINMAP_B30 := chkWKB30.Checked;
	GS_ADMINMAP_B30A := chkWKB30A.Checked;

	GS_ADMINMAP_Title_BaeCha := chk_WKTitle_BaeCha.Checked;
	GS_ADMINMAP_Title_WKNAME := chk_WKTitle_WkName.Checked;
	GS_ADMINMAP_Title_BRNAME := chk_WKTitle_BrName.Checked;

	GS_ADMINMAP_TAG_BRNAME  := chkWKBRNAME.Checked;
	GS_ADMINMAP_TAG_WKSABUN := chkWKSABUN.Checked;
	GS_ADMINMAP_TAG_WKNAME  := chkWKNAME.Checked;

	GS_ADMINMAP_TAG_OurWK_Status    := chk_OurWK_Status.Checked;
	GS_ADMINMAP_TAG_OurWK_FinishCNT := chk_OurWK_FinishCNT.Checked;
	GS_ADMINMAP_TAG_OurWK_Name 		  := chk_OurWK_Name.Checked;
	GS_ADMINMAP_TAG_OurWK_Sabun 	  := chk_OurWK_Sabun.Checked;
	GS_ADMINMAP_TAG_OurWK_HP 			  := chk_OurWK_HP.Checked;
	GS_ADMINMAP_TAG_OurWK_BrName 	  := chk_OurWK_BrName.Checked;
	GS_ADMINMAP_TAG_OurWK_BrNo 		  := chk_OurWK_BrNo.Checked;

  if rbSTWAIT5.Checked then GS_ADMINMAP_CHK := '0' else
  if rbSTWAIT6.Checked then GS_ADMINMAP_CHK := '1' else
  if rbSTWAIT7.Checked then GS_ADMINMAP_CHK := '2';

  GS_ADMINMAP_LEVEL := IntToStr(cxcbSelMapLevle.ItemIndex+1);

	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_WKALL'     , GS_ADMINMAP_WKALL);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_WKCON1'    , GS_ADMINMAP_WKCON1);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_WKCON2'    , GS_ADMINMAP_WKCON2);
  GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_WKCON3'    , GS_ADMINMAP_WKCON3);
  GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_WKCON4'    , GS_ADMINMAP_WKCON4);
  GS_EnvFile.WriteString('SearchWKSet', 'ADMINMAP_CHK'      , GS_ADMINMAP_CHK);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_B10'        , GS_ADMINMAP_B10);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_B20'        , GS_ADMINMAP_B20);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_B30'        , GS_ADMINMAP_B30);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_B30A'        , GS_ADMINMAP_B30A);

	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_Title_BaeCha', GS_ADMINMAP_Title_BaeCha);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_Title_WKNAME', GS_ADMINMAP_Title_WKNAME);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_Title_BRNAME', GS_ADMINMAP_Title_BRNAME);

	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_TAG_BRNAME' , GS_ADMINMAP_TAG_BRNAME);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_TAG_WKSABUN', GS_ADMINMAP_TAG_WKSABUN);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_TAG_WKNAME' , GS_ADMINMAP_TAG_WKNAME);
	GS_EnvFile.WriteString('SearchWKSet', 'ADMINMAP_LEVEL'    ,  GS_ADMINMAP_LEVEL);

	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_Status'   , GS_ADMINMAP_TAG_OurWK_Status   );
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_FinishCNT', GS_ADMINMAP_TAG_OurWK_FinishCNT);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_Name'     , GS_ADMINMAP_TAG_OurWK_Name 		);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_Sabun'    , GS_ADMINMAP_TAG_OurWK_Sabun 	  );
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_HP' 			, GS_ADMINMAP_TAG_OurWK_HP 			);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_BrName'	  , GS_ADMINMAP_TAG_OurWK_BrName 	);
	GS_EnvFile.WriteBool('SearchWKSet', 'ADMINMAP_TAG_OurWK_BrNo' 		, GS_ADMINMAP_TAG_OurWK_BrNo 		);

	PnlConfig.Visible := False;
	AdminMapSet;
end;

procedure TFrm_AdminMap.cxButton4Click(Sender: TObject);
begin
	PnlConfig.Visible := False;
	AdminMapSet;
end;

procedure TFrm_AdminMap.owton2Click(Sender: TObject);
begin
  pnlConfig.Left := Trunc(Self.Width/2) - Trunc( pnlConfig.Width / 2 );
  pnlConfig.Top  := Trunc(Self.Height/2) - Trunc( pnlConfig.Height / 2 );
  pnlConfig.Show;
end;

procedure TFrm_AdminMap.PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_AdminMap.proc_MoveCenter(ALat, ALon, ALevel: string);
begin
	Try
    ALevel := IntToStr(20 - StrToInt(ALevel));
		ExecuteJavaScript(webNaverMap,'CenterMove('+ALat+','+ALon+','+ALevel+');');
	except
  	btnSearch.enabled := True;
		rbo_UseNaverMap.enabled := True;
	End;
end;

function TFrm_AdminMap.proc_WGSToBessel(bPOI: boolean; sCity, sX, sY: string; var sRCity, sKm: string): string;
var
  sPOI : string;
begin
	try
    Result := '';

    if sCity = '서울특별시' then          sPOI := '서울'
    else if sCity = '경기도' then         sPOI := '경기'
    else if sCity = '인천광역시' then     sPOI := '인천'
		else if sCity = '충청남도' then       sPOI := '충남'
		else if fSejongCheck(sCity) then      sPOI := '충남' //세종특별자치시
		else if sCity = '충청북도' then       sPOI := '충북'
    else if sCity = '강원도' then         sPOI := '강원'
		else if sCity = '전라남도' then       sPOI := '전남'
    else if sCity = '전라북도' then       sPOI := '전북'
    else if sCity = '경상남도' then       sPOI := '경남'
    else if sCity = '경상북도' then       sPOI := '경북'
    else if sCity = '제주특별자치도' then sPOI := '제주'
    else if sCity = '대전광역시' then     sPOI := '대전'
    else if sCity = '대구광역시' then     sPOI := '대구'
    else if sCity = '광주광역시' then     sPOI := '광주'
		else if sCity = '부산광역시' then     sPOI := '부산'
		else if sCity = '울산광역시' then     sPOI := '울산'
		else sPOI := sCity;

    sRCity := sPOI;
  except on e: exception do
    begin
      Log('proc_WGSToBessel Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'proc_WGSToBessel Error :' + E.Message);
    end;
  end;
end;

function TFrm_AdminMap.proc_Wisenut_GetPOI(word: string): Boolean;
var
  sHttp, sOrHttp : String;
  sYesNo, sViewCnt, sCenterLat, sCenterLon, sFixParam, sOrFixParam : String;

  JON01WNTh : TJON01WNThread;
begin
	SetDebugeWrite('Frm_JON56.proc_Wisenut_GetPOI');
  Result := True;

	sRanDom := 'abcd' + IntToStr(RandomRange(10000, 20000));

  SetDebugeWrite('WiseNut A : ' + Trim(word) + ' --- ' + sRanDom);

	if GS_SEARCH_POISVR_SPOIUSE then sYesNo := '0' else sYesNo := '1';
  if GS_PRJ_AREA = 'S' then sViewCnt := '40' else sViewCnt := '100';


  if chkAllPoi.Checked then
  begin
    sFixParam := '&region=' + UrlEncode(UTF8Encode(GS_SEARCH_POI_ALL)) + '&recRegion=' + UrlEncode(UTF8Encode(GS_SEARCH_POI_ALL));
    sOrFixParam := '&region=' + GS_SEARCH_POI_ALL + '&recRegion=' + GS_SEARCH_POI_ALL;
  end else
  begin
    sFixParam := '&region=' + UrlEncode(UTF8Encode(GS_SEARCH_POI_ADDR)) + '&recRegion=' + UrlEncode(UTF8Encode(GS_SEARCH_POI_SCH));
    sOrFixParam := '&region=' + GS_SEARCH_POI_ADDR + '&recRegion=' + GS_SEARCH_POI_SCH;
  end;

  sSAPoiName := UrlEncode(UTF8Encode(trim(word)));

  sCenterLat := Area_CenterLat;
  sCenterLon := Area_CenterLon;

  sOrHttp := '';
  try

    lsPOISvrIP := GS_PoiServerIP;
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

		try
			JON01WNTh := TJON01WNThread.Create(Self.Tag, 9, sHttp, word, sRanDom);
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

function TFrm_AdminMap.proc_Wisenut_GetPOILast(wURL, word: String): Boolean;
begin
	SetDebugeWrite('TFrm_AdminMap.proc_Wisenut_GetPOILast');
  Result := True;

  try
    try
      // 결과값이 없을 수도 있음
      if Trim(wURL) <> '' then
      begin
        if (Pos('QueryAnalyzerResult', wURL) = 0 ) then
        begin
          if lsPOISvrIP = PoiServer1 then
          begin
            GS_PoiServerIP := PoiServer2;
          end else
					begin
            GS_PoiServerIP := PoiServer1;
          end;
//          Log('GS_PoiServerIP :'+ GS_PoiServerIP, LOGDATAPATHFILE);
          Result := False;
          Exit;
        end;

				if (Pos('"SearchQueryResult": "0"', wURL) = 0 ) And
           (Pos('"Collection"'            , wURL) > 0 ) And
           (Pos('"Error":{'               , wURL) = 0 ) then
        begin
					proc_Wisenut_GetPOI_Proc(wURL, word);
				end;
      end;
    except
      on E: Exception do
      begin
        Result := False;
      end;
    end;
  finally
  end;
end;

function TFrm_AdminMap.proc_Wisenut_GetPOI_Proc(wURL, word: string): Boolean;
var
  js : TlkJSONobject;
  ja, jCnt  : TlkJSONlist;

  bBChk : Boolean;
	bBGbn : String;

  j, i, iRow, iPos : Integer;
  str, sx, sy, sGX, sGY, sPOI, sKm, sRCity : string;
	jon01_txt : string;
	ASido, AGugun, ADong, sCnt, AName, ARi, ADocId, AStreet, AStreetNm, AStreetType : string;
  slTmp : TStringList;
	row3, row4, sTmp : string;
	bInit, bCnt, bSameDongName : Boolean;
begin
	SetDebugeWrite('TFrm_AdminMap.proc_Wisenut_GetPOI_Proc');
  Result := False;
  try
    slTmp := TStringList.Create;
    bBChk := False;
    bBGbn := '';
    try
      js := TlkJSON.ParseText(wURL) as TlkJSONobject;

      if js.Field['Session'].Value = sRanDom then
      begin
        Result := True;
        sRanDom := '';
        jCnt := js.Field['SearchQueryResult'].Field['Collection'] as TlkJSONlist;
        bInit := False;

        // 검색 결과가 없을 경우 이전 검색결과 유지
        for j := 0 to jCnt.Count - 1 do
        begin
          if ( jCnt.Child[j].Field['Id'].Value = 'poi' ) And ( jCnt.Child[j].Field['DocumentSet'].Field['Count'].Value > 0 ) then bInit := True else
          if ( jCnt.Child[j].Field['Id'].Value = 'phones' ) And ( jCnt.Child[j].Field['DocumentSet'].Field['Count'].Value > 0 ) then bInit := True else
					if ( jCnt.Child[j].Field['Id'].Value = 'bunji' ) And ( jCnt.Child[j].Field['DocumentSet'].Field['Count'].Value > 0 ) then bInit := True;
        end;

				f_AddArr_Init;
        if bInit then
        begin
					cxViewName.DataController.SetRecordCount(0);
        end;

        // 제시어가 왔는데 POI ID가 Address이면서 자료가 있으면 무시해야 됨.
        // 그 이외의 자료가 있으면 제시어 처리 않함.
        if GS_SEARCH_POISVR_SGSTERR then
        begin
          bCnt := True;
          if Trim(js.Field['SearchQueryResult'].Field['SuggestedQuery'].Value) <> '' then
          begin
            for j := 0 to jCnt.Count - 1 do
            begin
              if ( strToIntDef(jCnt.Child[j].Field['DocumentSet'].Field['Count'].Value, 0) > 0 ) And
                 ( jCnt.Child[j].Field['Id'].Value <> 'address' ) then
              begin
                bCnt := False;
                Break;
              end;
            end;
          end;
				end;

				cxViewName.BeginUpdate;
				bSameDongName := False;
				for j := 0 to jCnt.Count - 1 do
        begin
          sCnt := jCnt.Child[j].Field['DocumentSet'].Field['Count'].Value;

					if strToIntDef(sCnt, 0) > 0 then
          begin
            ja := jCnt.Child[j].Field['DocumentSet'].Field['Document'] as TlkJSONlist;

            if ja.Count <= 0 then
            begin
              Exit;
            end;
						for i := 0 to ja.Count - 1 do
						begin
              slTmp.Delimiter     := ' ';
							slTmp.DelimitedText := D_HightlightTXT(ja.Child[i].Field['Field'].Field['ADDRESS'].Value);
              sy      := '';
              sx      := '';
              sGY     := '';
							sGX     := '';
              sPOI    := '';
              sRCity  := '';
							AGugun  := '';
              ADong   := '';
              AStreet := '';
							AStreetNm := '';
              AStreetType  := '';
							AName   := '';
              ADocId  := '';
              if slTmp.Count >= 1 then
              begin
                try
                  sy  := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['Field'].Field['LON'].Value));  // x 좌표
									sx  := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['Field'].Field['LAT'].Value));  // y 좌표
                  try
                    sGY := getWGS84(FormatFloat('0.000000', ja.Child[i].Field['Field'].Field['GUIDE_LON'].Value));  // x 좌표
                  except
                    sGY := '';
                  end;

                  Try
                    sGX := '0'+ getWGS84(FormatFloat('0.000000', ja.Child[i].Field['Field'].Field['GUIDE_LAT'].Value));  // y 좌표
                  except
                    sGX := '';
                  End;
                  ADocId := ja.Child[i].Field['Field'].Field['DOCID'].Value;

                  if jCnt.Child[j].Field['Id'].Value = 'address' then
                  begin
										//AName := ja.Child[i].Field['Field'].Field['ADDRESS'].Value;

                    proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);

										if slTmp.Count = 1 then
										begin
											ASido := sRCity;
										end else
										if slTmp.Count = 2 then
										begin
											AGugun := slTmp[1];//시군고
											ADong  := '';
										end else
										begin
											AGugun := slTmp[1];//시군고
											ADong  := slTmp[2];//읍면동
										end;

                    if slTmp.Count > 3 then
                    begin
											if ((copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '구')
                       or (copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '시')
                       or (copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '군')) then
                      begin
												AGugun := slTmp[1]+slTmp[2];//시군고
												ADong  := slTmp[3];//읍면동
                      end else
                      if ((copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '읍')
                       or (copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '면')) then
                      begin
                        AGugun := slTmp[1];
                        ADong  := slTmp[2] + slTmp[3];
											end;

											if slTmp.Count = 5 then
											begin
                        ADong := ADong + slTmp[4];
                      end;
                    end;

										// 동명과 검색어가 일치하는지 여부 체크
										if Trim(ADong) = Trim(word) then 
											bSameDongName := True;
										SetDebugeWrite('Trim(ADong) = Trim(word) ' + Trim(ADong) + ' = ' + Trim(word));

										f_SvrAddArr_Add(100-i, 100-i, 100-i, '', '', sRCity, AGugun, '', ADong, '','','','','', sx, sy);

//                    Continue;
                  end else
                  if jCnt.Child[j].Field['Id'].Value = 'poi' then
                  begin
//										if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then Continue;
										if bSameDongName  then Continue;
										// 첫번째 들어오는 DOCID가 'E'로 시작되면 법정동/행정동중 법정동 자료만 표시해준다.
										if i = 0 then
                    begin
                      if Copy(ADocId, 1, 1) = 'H' then bBGbn := 'E' else
                      if Copy(ADocId, 1, 1) = 'E' then bBGbn := 'H'
                    end;

                    if ( Copy(ADocId, 1, 1) = bBGbn ) then Continue;

										AName := ja.Child[i].Field['Field'].Field['POI'].Value;
										sPOI := ja.Child[i].Field['Field'].Field['NEAR_POI'].Value;
                    sKm  := ja.Child[i].Field['Field'].Field['NEAR_POI_DISTANCE'].Value;

                    try
											AStreet := ja.Child[i].Field['Field'].Field['STREET'].Value;
                      AStreetType := ja.Child[i].Field['Field'].Field['STREET_TYPE'].Value;

                      if AStreet <> '' then
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
                      if StrToFloatDef(sKm, -1) > 0 then skm := '→' + FloatToStr(StrToFloatDef(sKm, 0) * 1000)
                                                    else sKm := '→일치';
                    end else sKm := '';
                  end else
                  if jCnt.Child[j].Field['Id'].Value = 'bunji' then
                  begin
//										if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then Continue;

//										bBunji := True;
										AName := ja.Child[i].Field['Field'].Field['JIBUN'].Value;
//										Continue;  
									end else
                  if jCnt.Child[j].Field['Id'].Value = 'phones' then
                  begin
										{if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then Continue;

                    bHintShow := True;

                    AName := ja.Child[i].Field['Field'].Field['POI'].Value;
                    sPOI  := M_ParseTXT( StringReplace(ja.Child[i].Field['Field'].Field['PHONES'].Value, ' ','; ', [rfReplaceAll]));
										}Continue;  
									end else
                  if jCnt.Child[j].Field['Id'].Value = 'spoi' then
                  begin
										Continue;  
									end;

									proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);
                Except
                  sy := '';
                  sx := '';
									AName := '';
                  sPoi := '';
                end;
              end;

							if (Length(edtName.Text) < 2) then Exit;
							Try
                if D_HightlightTXT(AName) = '' then continue;
								iRow := cxViewName.DataController.AppendRecord;

								cxViewName.DataController.Values[iRow, 5] := sRCity;
								if fSejongCheck(slTmp[0]) then  // 20121206 LYB 추가
								begin
									if ((copy(slTmp[1],length(slTmp[1]), 1) = '면')
									 or (copy(slTmp[1],length(slTmp[1]), 1) = '읍')) then
									begin
										cxViewName.DataController.Values[iRow, 6] := '세종시' + slTmp[1];// 세종시 읍면
										cxViewName.DataController.Values[iRow, 7] := slTmp[2];// 리
									end else
          				if (copy(slTmp[1],length(slTmp[1]), 1) = '동') then
									begin
										cxViewName.DataController.Values[iRow, 6] := '세종시';
										cxViewName.DataController.Values[iRow, 7] := slTmp[1]; //동
									end else
									begin
										cxViewName.DataController.Values[iRow, 6] := '세종시';
										cxViewName.DataController.Values[iRow, 7] := '';
									end;
								end else
								begin
									if slTmp.Count > 1 then
										cxViewName.DataController.Values[iRow, 6] := slTmp[1]//시군고
									else
										cxViewName.DataController.Values[iRow, 6] := '';//시군고
									if slTmp.Count > 2 then
										cxViewName.DataController.Values[iRow, 7] := slTmp[2]
									else
										cxViewName.DataController.Values[iRow, 7] := '';//읍면동
								end;

								if slTmp.Count > 3 then
								begin
									if ((copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '구')
									 or (copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '시')
									 or (copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '군')) then
									begin
										cxViewName.DataController.Values[iRow, 6] := slTmp[1]+slTmp[2];//시군고
										cxViewName.DataController.Values[iRow, 7] := slTmp[3];//읍면동
									end else
									if ((copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '읍')
									 or (copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '면')) then
									begin
										cxViewName.DataController.Values[iRow, 6] := slTmp[1];
										cxViewName.DataController.Values[iRow, 7] := slTmp[2] + slTmp[3];
									end;

									if slTmp.Count = 5 then
									begin
										cxViewName.DataController.Values[iRow, 7] := cxViewName.DataController.Values[iRow, 2] + slTmp[4];
									end;
								end;
								sTmp := M_ParseTXT(cxViewName.DataController.Values[iRow, 5]) + ' '
											+ M_ParseTXT(cxViewName.DataController.Values[iRow, 6]) + ' '
											+ M_ParseTXT(cxViewName.DataController.Values[iRow, 7]);
								if Trim(cxViewName.DataController.Values[iRow, 7]) = Trim(AStreet) then AStreetNm := '';

								cxViewName.DataController.Values[iRow, 0] := D_HightlightTXT(AName);
								cxViewName.DataController.Values[iRow, 1] := sTmp;
								cxViewName.DataController.Values[iRow, 2] := '';
								cxViewName.DataController.Values[iRow, 3] := sx;
								cxViewName.DataController.Values[iRow, 4] := sy;//Lat
								cxViewName.DataController.Values[iRow, 5] := M_ParseTXT(cxViewName.DataController.Values[iRow, 5]);//Lon
								cxViewName.DataController.Values[iRow, 6] := M_ParseTXT(cxViewName.DataController.Values[iRow, 6]);//Lon
								cxViewName.DataController.Values[iRow, 7] := M_ParseTXT(cxViewName.DataController.Values[iRow, 7]);//Lon

							except
								cxViewName.EndUpdate;
              End;
						end;
					end;
				end;
				cxViewName.EndUpdate;
      end;
    except
			on e: exception do
      begin
				Log('proc_Wisenut_GetPOI_Proc Error :' + wURL, LOGDATAPATHFILE);
        Assert(False, 'proc_Wisenut_GetPOI_Proc Error :' + wURL);
      end;
    end;
  finally
    js.Free;
    FreeAndNil(slTmp);
  end;
end;

procedure TFrm_AdminMap.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  PostMessage(PnlConfig.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_AdminMap.pLoadNaverMap;
var iRandom : integer;
		sClient: string;
begin
	Try
		iRandom := RandomRange(0, gslNaverClientID.Count); //실제 갯수만큼 사용 0, 5 -> Max index = 4
		sClient := gslNaverClientID[iRandom];
		Naver_URL := 'http://203.251.202.13:88/map/makeNaverMap_AdminMap_cloud_20200103.jsp?ncpClientId=' + sClient;
//		Naver_URL := 'http://203.251.202.13:88/map/makeNaverMap_AdminMap_cloud.jsp?ncpClientId=' + sClient;
//		Naver_URL := 'http://203.251.202.13:88/map/makeNaverMap_Shuttle.jsp?clientId=' + sClient;
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

procedure TFrm_AdminMap.pmAcceptMapPopup(Sender: TObject);
begin

	if gClone then
	begin
		N500m1.visible := False;
		N1Km1.visible := False;
		N3Km1.visible := False;
		N5Km1.visible := False;
		N15Km1.visible := False;
		N30Km1.visible := False;
		N1.visible := False;

		NWkClone.visible := True;
	end
	else
	begin
		N500m1.visible := True;
		N1Km1.visible := True;
		N3Km1.visible := True;
		N5Km1.visible := True;
		N15Km1.visible := True;
		N30Km1.visible := True;
		N1.visible := True;

		NWkClone.visible := False;
	end;

end;

procedure TFrm_AdminMap.N15Km1Click(Sender: TObject);
begin
  WkSearch('15');
  Skm := '15'
end;

procedure TFrm_AdminMap.ed_KEYWORDKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    btnSearch.Click;
end;

procedure TFrm_AdminMap.rbWKWAIT5Click(Sender: TObject);
begin
  WK_TYPE := '0';
end;

procedure TFrm_AdminMap.rbWKWAIT6Click(Sender: TObject);
begin
  WK_TYPE := '1';
end;

procedure TFrm_AdminMap.rbWKWAIT7Click(Sender: TObject);
begin
  WK_TYPE := '2';
end;

procedure TFrm_AdminMap.cxViewWkConnectCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var sXp, sYp : string;
  iXp, iYp, iRow : integer;
begin
	iRow := cxViewWkConnect.DataController.FocusedRecordIndex;
  iXp := cxViewWkConnect.GetColumnByFieldName('위치X').Index;
	iYp := cxViewWkConnect.GetColumnByFieldName('위치Y').Index;
	sXp := cxViewWkConnect.DataController.Values[iRow, iXp];
	sYp := cxViewWkConnect.DataController.Values[iRow, iYp];

	if rbo_UseNaverMap.Checked then
	begin
		if pos('.', sYp) > 0 then proc_MoveCenter((sXp), (sYp), GS_ADMINMAP_LEVEL)
                      	 else	proc_MoveCenter(SetWGS84(sXp), SetWGS84(sYp), GS_ADMINMAP_LEVEL) ;
	end else
  begin
		if pos('.', sYp) > 0 then	WGS84ToBessel_T(sYp, sXp)
                       	 else	WGS84ToBessel(sYp, sXp);
		OnMoveMap(ws_Lon, ws_Lat);
		Map_SetLevel(StrToInt(GS_ADMINMAP_LEVEL));
	end;
end;

procedure TFrm_AdminMap.cxViewWkConnectColumnHeaderClick(
	Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	ACol := AColumn.Index;
end;

procedure TFrm_AdminMap.cxViewWkConnectDataControllerSortingChanged(
  Sender: TObject);
begin
	gfSetIndexNo(cxViewWkConnect, ACol, GS_SortNoChange);
end;

procedure TFrm_AdminMap.btnClose1Click(Sender: TObject);
begin
  try
    if Not Assigned(Frm_AdminMap01) then Frm_AdminMap01 := TFrm_AdminMap01.Create(Nil);
    Frm_AdminMap01.Caption := '공유 기사 현황';
    Frm_AdminMap01.Show;
    Frm_AdminMap01.ClearWkIcon;
  Except
  end;
end;

procedure TFrm_AdminMap.ConnectWorker(AOrderView : TcxGridDBTableView ;connWK: Boolean; Xpos, Ypos : string);           //a2, a2, '', '', '', '999', x,y ,0
begin
	try
    Map_SetLevel(StrToInt(GS_ADMINMAP_LEVEL));
		SetA101Style;
		SetA102Style;
		SetA201Style;
		SetA202Style;
		SetB201Style;
		SetB202Style;
		Set0201Style;
		Set0202Style;
		SetReadyStyle;
		SetRunStyle;

    ClearWkIcon;

    cxViewWkConnect.DataController.SetRecordCount(0);
    cxViewWkConnect.BeginUpdate;
{		for I := 0 to frm_main.tvWkConnect.DataController.RecordCount - 1 do
		begin
			WkRec.Sabun     := AOrderView.DataController.Values[i, AOrderView.GetColumnByFieldName('기사사번').Index];
			WkRec.Name      := AOrderView.DataController.Values[i, AOrderView.GetColumnByFieldName('기사명').Index];
			if pos('대기', AOrderView.DataController.Values[i, AOrderView.GetColumnByFieldName('상태').Index]) > -1 then
				WkRec.ATTEND    := '01'
			else
			if pos('운행', AOrderView.DataController.Values[i, AOrderView.GetColumnByFieldName('상태').Index]) > -1 then
				WkRec.ATTEND    := '02';
			WkRec.PASS_TIME := '';
			if pos('접속', AOrderView.DataController.Values[i, AOrderView.GetColumnByFieldName('상태').Index]) > -1 then
				WkRec.Con_State    := 'A2'
			else WkRec.Con_State    := 'B2';

      WkRec.BR_Type   := '1';
			WkRec.FinCnt    := AOrderView.DataController.Values[i, AOrderView.GetColumnByFieldName('완료건수').Index];
			WkRec.MAPX      := AOrderView.DataController.Values[i, AOrderView.GetColumnByFieldName('위치X').Index];
			WkRec.MAPY      := AOrderView.DataController.Values[i, AOrderView.GetColumnByFieldName('위치Y').Index];
      WkRec.BrNo      := AOrderView.DataController.Values[i, AOrderView.GetColumnByFieldName('지사코드').Index];
      WkRec.BrName    := AOrderView.DataController.Values[i, AOrderView.GetColumnByFieldName('지사명').Index];
      WkRec.HP        := AOrderView.DataController.Values[i, AOrderView.GetColumnByFieldName('휴대폰').Index];
      WkRec.PHONE     := AOrderView.DataController.Values[i, AOrderView.GetColumnByFieldName('휴대폰').Index];

			if not connWK then
      begin
        Row := cxViewWkConnect.DataController.AppendRecord;
        cxViewWkConnect.DataController.Values[Row, 0] := i;
        cxViewWkConnect.DataController.Values[Row, 1] := WkRec.BrName;
				cxViewWkConnect.DataController.Values[Row, 2] := WkRec.Sabun;
				cxViewWkConnect.DataController.Values[Row, 3] := WkRec.Name;
				cxViewWkConnect.DataController.Values[Row, 4] := WkRec.MAPX;
				cxViewWkConnect.DataController.Values[Row, 5] := WkRec.MAPY;
        cxViewWkConnect.DataController.Values[Row, 6] := WkRec.BrNo;
        cxViewWkConnect.DataController.Values[Row, 7] := WkRec.Con_State;
				AddWkIconReady('1', '', WkRec);
      end else
      if connWK then
      begin
        if WkRec.ATTEND <> '' then
        begin
          Row := cxViewWkConnect.DataController.AppendRecord;
          cxViewWkConnect.DataController.Values[Row, 0] := i;
          cxViewWkConnect.DataController.Values[Row, 1] := WkRec.BrName;
					cxViewWkConnect.DataController.Values[Row, 2] := WkRec.Sabun;
          cxViewWkConnect.DataController.Values[Row, 3] := WkRec.Name;
					cxViewWkConnect.DataController.Values[Row, 4] := WkRec.MAPX;
					cxViewWkConnect.DataController.Values[Row, 5] := WkRec.MAPY;
					cxViewWkConnect.DataController.Values[Row, 6] := WkRec.BrNo;
          cxViewWkConnect.DataController.Values[Row, 7] := WkRec.Con_State;
					AddWkIconReady('1', '', WkRec);
				end;
      end
    end;}
  finally
    cxViewWkConnect.EndUpdate;
    pgcList.ActivePageIndex := 2;
  end;
end;

procedure TFrm_AdminMap.Mark_Symbol(Lon, Lat, index: Integer);
var
  mAngle : integer;
  mGroup : IXPOIGroup;
  mGstyle : IXPOIStyle;
  mImageman : IXImageMan;
  mImage : IXMagicImage;
  mItem : IXPOIItem;
  mRootPath : String;
begin
	try
    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState();
    mUtil := mMap.GetUtility();

      // Step 3. Make POI Items
    mImageman := mCtrlMan.GetImageMan();
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath + '\Image\');
  //  mImageman.SetDefaultPath(MAP_URL + 'Theme\Image');

    if index = 1 then
    begin
			mImage := mImageman.LoadImage('Spoint','SelectPoint.png');
      mPoiman := mCtrlMan.GetPOIMan();
      mGroup := mPoiman.FindGroup(22);
      if mGroup <> nil then mPoiman.DeleteGroup(22);
      mGroup := mPoiman.NewGroup(22);

      mGstyle := mPoiman.FindStyle(22);
      if (mGstyle = nil) then
        mGstyle := mPoiman.NewStyle(22); // -1: 아이디 자동 생성
      mGroup.SetStyle(mGstyle);

      mItem := mGroup.NewItem(22) ;
      mItem.SetLonLat(Lon, Lat);
      mItem.SetImage(mImage);
      mItem.SetShowImage(1);
			mItem.SetImageIndex(0);
      mItem.SetImageOffset(7);
      mItem.SetTextStyle(StrToInt('0x12'));
    end
    else if index = 2 then
    begin
      mImage := mImageman.LoadImage('SP','SPoint.png');
      mPoiman := mCtrlMan.GetPOIMan();
      mGroup := mPoiman.FindGroup(22);
      if mGroup <> nil then mPoiman.DeleteGroup(22);
      mGroup := mPoiman.NewGroup(22);

			mGstyle := mPoiman.FindStyle(22);
      if (mGstyle = nil) then
        mGstyle := mPoiman.NewStyle(22); // -1: 아이디 자동 생성
			mGroup.SetStyle(mGstyle);

      mItem := mGroup.NewItem(22) ;
      mItem.SetLonLat(Lon, Lat);
      mItem.SetImage(mImage);
			mItem.SetShowImage(1);
			mItem.SetImageIndex(0);
      mItem.SetImageOffset(7);
      mItem.SetTextStyle(StrToInt('0x12'));
    end
    else if index = 3 then
    begin
			mImage := mImageman.LoadImage('EP','EPoint.png');
      mPoiman := mCtrlMan.GetPOIMan();
			mGroup := mPoiman.FindGroup(23);
			if mGroup <> nil then mPoiman.DeleteGroup(23);
			mGroup := mPoiman.NewGroup(23);

			mGstyle := mPoiman.FindStyle(23);
      if (mGstyle = nil) then
        mGstyle := mPoiman.NewStyle(23); // -1: 아이디 자동 생성
      mGroup.SetStyle(mGstyle);

      mItem := mGroup.NewItem(23) ;

      mItem.SetLonLat(Lon, Lat);
      mItem.SetImage(mImage);
      mItem.SetShowImage(1);
			mItem.SetImageIndex(0);
      mItem.SetImageOffset(7);
      mItem.SetTextStyle(StrToInt('0x12'));
    end;
    if Not mImage.IsValid then ShowMessage('Image 이상');
		mAngle := 0;
    mAngle := mAngle + 10;
    if(mAngle > 360) then mAngle := 0;
  except
  end;
end;

procedure TFrm_AdminMap.Mark_WK(Xpos, Ypos : string; aIndex : integer);
begin
	ConnectWorker(Frm_Main.tvWkConnect, Frm_Main.chkConnWK, Xpos, Ypos);
  WGS84ToBessel(Ypos, Xpos);
  OnMoveMap(ws_Lon, ws_Lat);
  Mark_Symbol(ws_Lon, ws_Lat, 1);
end;

procedure TFrm_AdminMap.ConnectOneWorker(AOrderView: TcxGridDBTableView; connWK : Boolean; aRow: integer; Xpos, Ypos : string);
var i, Row, iTmp : Integer;
	WkRec: TMapWkInfoRec;
	sTmp1, sTmp2, sLon, sLat : string;
begin
	try
    Map_SetLevel(StrToInt(GS_ADMINMAP_LEVEL));
		SetA101Style;
		SetA102Style;
		SetA201Style;
		SetA202Style;
		SetB201Style;
		SetB202Style;
		Set0201Style;
		Set0202Style;
		SetReadyStyle;
		SetRunStyle;

		ClearWkIcon;

		cxViewWkConnect.DataController.SetRecordCount(0);
    cxViewWkConnect.BeginUpdate;

		WkRec.Sabun     := AOrderView.DataController.Values[aRow, AOrderView.GetColumnByFieldName('기사사번').Index];
		WkRec.Name      := AOrderView.DataController.Values[aRow, AOrderView.GetColumnByFieldName('기사명').Index];
		sTmp1 := AOrderView.DataController.Values[aRow, AOrderView.GetColumnByFieldName('상태').Index];
		if pos('운행', sTmp1) > 0 then
			WkRec.ATTEND    := '02'
		else WkRec.ATTEND    := '01';
			
		WkRec.PASS_TIME := '';
		if pos('단순접속', sTmp1) > 0 then
			WkRec.Con_State    := 'A1'
		else
		if pos('오더접속', sTmp1) > 0 then
			WkRec.Con_State    := 'A2'
		else WkRec.Con_State    := 'B2';
//		WkRec.Con_State := AOrderView.DataController.Values[aRow, AOrderView.GetColumnByFieldName('기사상태').Index];
		WkRec.BR_Type   := '1';
		WkRec.FinCnt    := AOrderView.DataController.Values[aRow, AOrderView.GetColumnByFieldName('완료건수').Index];
		WkRec.MAPX      := AOrderView.DataController.Values[aRow, AOrderView.GetColumnByFieldName('위치X').Index];
		WkRec.MAPY      := AOrderView.DataController.Values[aRow, AOrderView.GetColumnByFieldName('위치Y').Index];
		WkRec.BrNo      := AOrderView.DataController.Values[aRow, AOrderView.GetColumnByFieldName('지사코드').Index];
		WkRec.BrName    := AOrderView.DataController.Values[aRow, AOrderView.GetColumnByFieldName('지사명').Index];
    WkRec.HP        := AOrderView.DataController.Values[aRow, AOrderView.GetColumnByFieldName('휴대폰').Index];
		WkRec.PHONE     := AOrderView.DataController.Values[aRow, AOrderView.GetColumnByFieldName('휴대폰').Index];

//        if WkRec.ATTEND = '01' then
    if not connWK then
    begin
      Row := cxViewWkConnect.DataController.AppendRecord;
      cxViewWkConnect.DataController.Values[Row, 0] := i;
			cxViewWkConnect.DataController.Values[Row, 1] := WkRec.BrName;
			cxViewWkConnect.DataController.Values[Row, 2] := WkRec.Sabun;
      cxViewWkConnect.DataController.Values[Row, 3] := WkRec.Name;
      cxViewWkConnect.DataController.Values[Row, 4] := WkRec.MAPX;
      cxViewWkConnect.DataController.Values[Row, 5] := WkRec.MAPY;
      cxViewWkConnect.DataController.Values[Row, 6] := WkRec.BrNo;
			cxViewWkConnect.DataController.Values[Row, 7] := WkRec.Con_State;
			cxViewWkConnect.DataController.Values[Row, 8] := StrToCall(WkRec.PHONE);
//      if GS_MAP_AREA_AUTOSHOW = True then
			AddWkIconReady('1', '', WkRec);
		end
		else if connWK then
    begin
      if WkRec.ATTEND <> '' then
      begin
        Row := cxViewWkConnect.DataController.AppendRecord;
        cxViewWkConnect.DataController.Values[Row, 0] := i;
				cxViewWkConnect.DataController.Values[Row, 1] := WkRec.BrName;
				cxViewWkConnect.DataController.Values[Row, 2] := WkRec.Sabun;
        cxViewWkConnect.DataController.Values[Row, 3] := WkRec.Name;
				cxViewWkConnect.DataController.Values[Row, 4] := WkRec.MAPX;
        cxViewWkConnect.DataController.Values[Row, 5] := WkRec.MAPY;
        cxViewWkConnect.DataController.Values[Row, 6] := WkRec.BrNo;
				cxViewWkConnect.DataController.Values[Row, 7] := WkRec.Con_State;
				cxViewWkConnect.DataController.Values[Row, 8] := StrToCall(WkRec.PHONE);
				AddWkIconReady('1', '', WkRec);
			end;
		end;
		OnMoveMap(ws_Lon, ws_Lat);

		if ((GT_USERIF.HD = 'A1782') and (GS_PRJ_AREA = 'O')) or (GT_USERIF.ID = 'sntest') then
		begin
			iTmp := scb_MapMarkSabun.IndexOf(WkRec.Sabun); //클론이 있는지 확인
			if iTmp > -1 then
			begin
				SetWkCloneStyle;
				sTmp1 := scb_MapMarkTitle[iTmp];
				sTmp1 := StringReplace(sTmp1, '복제-', '', [rfReplaceAll]);
				sTmp2 := scb_MapMarkContents[iTmp];
				sLon  := scb_MapMarkLon[iTmp];
				sLat  := scb_MapMarkLat[iTmp];
			
				scb_MapMarkIdx.delete(iTmp);                 //기존 정보 삭제
				scb_MapMarkSabun.delete(iTmp);
				scb_MapMarkTitle.delete(iTmp);
				scb_MapMarkContents.delete(iTmp);
				scb_MapMarkLon.delete(iTmp);
				scb_MapMarkLat.delete(iTmp);
			
				WkRec.MAPY      := sLon;
				WkRec.MAPX      := sLat;

				AddWkClone('', '', WkRec, sTmp1, sTmp2);
			end;
		end;
	finally
    cxViewWkConnect.EndUpdate;
    pgcList.ActivePageIndex := 2;
  end;
end;

procedure TFrm_AdminMap.Set0201Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;

		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);

		mImageman.SetDefaultPath(mRootPath + '\Image\');
		R0201 := mImageman.LoadImageList('Run', 'Run1.png',35,35 );
		if Not R0201.IsValid then ShowMessage('Run1Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap.Set0202Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;

		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);

		mImageman.SetDefaultPath(mRootPath + '\Image\');
		R0202 := mImageman.LoadImageList('Run2', 'Run2.png',35,35 );
		if Not R0202.IsValid then ShowMessage('Run2Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap.SetA101Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;

		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);

		mImageman.SetDefaultPath(mRootPath + '\Image\');
		A101 := mImageman.LoadImageList('m0101', 'm0101.png',35,35 );
		if Not A101.IsValid then ShowMessage('m0101Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap.SetA102Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;

		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);

		mImageman.SetDefaultPath(mRootPath + '\Image\');
		A102 := mImageman.LoadImageList('m0102', 'm0102.png',35,35 );
		if Not A102.IsValid then ShowMessage('m0102Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap.SetA201Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;

		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);

		mImageman.SetDefaultPath(mRootPath + '\Image\');
		A201 := mImageman.LoadImageList('m0201', 'm0201.png',35,35 );
		if Not A201.IsValid then ShowMessage('m0201Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap.SetA202Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;

		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);

		mImageman.SetDefaultPath(mRootPath + '\Image\');
		A202 := mImageman.LoadImageList('m0202', 'm0202.png',35,35 );
		if Not A202.IsValid then ShowMessage('m0202Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap.SetB201Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;

		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);

		mImageman.SetDefaultPath(mRootPath + '\Image\');
		B201 := mImageman.LoadImageList('m0001', 'm0001.png',35,35 );
		if Not B201.IsValid then ShowMessage('m0001Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap.SetB202Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;

		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);

		mImageman.SetDefaultPath(mRootPath + '\Image\');
		B202 := mImageman.LoadImageList('m0002', 'm0002.png',35,35 );
		if Not B202.IsValid then ShowMessage('m0002Image 이상');
	except
	end;
end;

function TFrm_AdminMap.BesselToWGS84_T(Y_1, x_1: double): integer;
var degree_y, degree_x, min_x, min_y, s_y, s_x, ss_y, ss_x : Double;
	r_x, r_y : integer;
	coord : IXCoordSys;
	pos : IXMapPos;
	d_s, m_s, s_s, ss_s : string;
begin

  coord := mMap.GetCoordSys();
  pos := coord.BesselToWGS84(Y_1, x_1);
  r_y := pos._Lon;
  r_x := pos._Lat;

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
end;

function TFrm_AdminMap.WGS84ToBessel_T(Y_1, x_1: string): integer;
var r_y, r_X : double;
	coord : IXCoordSys;
	pos : IXMapPos;
begin
	r_y := StrToFloat(Y_1) * 360000;
	r_X := StrToFloat(x_1) * 360000;

	coord := mMap.GetCoordSys();
	pos := coord.WGS84ToBessel(r_y, r_X);
	ws_Lon := pos._Lon;
	ws_Lat := pos._Lat;
end;

function TFrm_AdminMap.WGS84ToBessel_D(Y_1, x_1: string): integer;
var r_y, r_X : Integer;
	coord : IXCoordSys;
	pos : IXMapPos;
	int_string1, int_string2 : string;
	sDD, sMM : string;
	dMM, dMM1, dSS : double;
begin
	if length(StringReplace(Y_1, '.', '', [rfReplaceAll])) = 8 then
		sDD := '0' + Copy(int_string1,1,2)
	else if length(StringReplace(Y_1, '.', '', [rfReplaceAll])) = 9 then
		sDD := Copy(int_string1,1,3);

	dMM := Trunc((StrToFloat(Y_1) - StrToInt(sDD)) * 60);  //분
	dMM1 := ((StrToFloat(Y_1) - StrToInt(sDD)) * 60) - dMM;   //초계산
	if dMM < 10 then
		sMM := '0' + FloatToStr(dMM)
	else
		sMM := FloatToStr(dMM);

	dSS := Trunc(dMM1 * 60 * 100) ;

	int_string1 := sDD + sMM + FloatToStr(dSS);
	r_y := ((StrToInt64(Copy(int_string1,1,3)) * 360000) + (StrToInt64(Copy(int_string1,4,2)) * 6000) + (StrToInt64(Copy(int_string1,6,2)) * 100) + StrToInt64(Copy(int_string1,8,2)));

	int_string2 := x_1;
	r_X := ((StrToInt64(Copy(int_string2,1,3)) * 360000) + (StrToInt64(Copy(int_string2,4,2)) * 6000) + (StrToInt64(Copy(int_string2,6,2)) * 100) + StrToInt64(Copy(int_string2,8,2)));

	coord := mMap.GetCoordSys();
	pos := coord.WGS84ToBessel(r_y, r_X);
	ws_Lon := pos._Lon;
	ws_Lat := pos._Lat;
end;

procedure TFrm_AdminMap.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Transparent := True;
end;

procedure TFrm_AdminMap.FormDestroy(Sender: TObject);
begin
	if Assigned(mMap) then FreeAndNil(mMap);
  Frm_AdminMap := Nil;
end;

procedure TFrm_AdminMap.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Home then 	
		SendMessage(self.Handle, WM_SYSCOMMAND, SC_MINIMIZE, 0 );
end;

end.

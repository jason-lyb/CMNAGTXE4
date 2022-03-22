unit xe_AdminMap02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Math,
  Dialogs, MSXML2_TLB, TalMapXLib_TLB, IniFiles, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.OleCtrls, Vcl.StdCtrls, cxButtons, cxCurrencyEdit, cxRadioGroup,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox, cxLabel, cxCheckBox,
  dxSkinsCore, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  dxGDIPlusClasses, SHDocVw, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TPosRec = record
    X, Y: string;
  end;
  TTmappos = record
    lon: LONG;
    lat: LONG;
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
  TMapStWkInfoRec = record
    Sabun, Name, Con_State, MAPX, MAPY, pMAPX, pMAPY, HdNo, BrNo, BrName, HP, PHONE, BR_Type : string;
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
  TFrm_AdminMap02 = class(TForm)
    pnlLargeMenu: TPanel;
    cbbSido: TcxComboBox;
    cbbGugun: TcxComboBox;
    cbbDong: TcxComboBox;
    pnlBottom: TPanel;
    cxLblActive: TLabel;
    cxGroupBox2: TcxGroupBox;
    Panel4: TPanel;
    tmr_Sdis: TTimer;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    Shape4: TShape;
    Label5: TLabel;
    Shape5: TShape;
    Label6: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    Panel5: TPanel;
    rbStateSA: TcxRadioButton;
    rbStateSB: TcxRadioButton;
    rbStateSC: TcxRadioButton;
    rbStateSD: TcxRadioButton;
    Panel7: TPanel;
    rbWKWAITS5: TcxRadioButton;
    rbWKWAITS6: TcxRadioButton;
    rbWKWAITS7: TcxRadioButton;
    btnShSch: TcxButton;
    cb_SUpDate: TcxComboBox;
    cxCESdt: TcxCurrencyEdit;
    cxGroupBox4: TcxGroupBox;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    cxLabel11: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel1: TcxLabel;
    pnl_TalMap: TPanel;
    mMap: TTalMapXCtrl;
    pnl_NaverMap: TPanel;
    webNaverMap: TWebBrowser;
    rbo_UseNaverMap: TcxCheckBox;
    trm_Naver: TTimer;
    tmrDongPolygon: TTimer;
    procedure cbbGugunPropertiesChange(Sender: TObject);
    procedure cbbSidoPropertiesChange(Sender: TObject);
    procedure cbbDongPropertiesChange(Sender: TObject);
    procedure mMapCreate(ASender: TObject; Value: Integer);
    procedure mMapMouseMove(ASender: TObject; Flag, X, Y: Integer);
    procedure mMapPOI_DblClick(ASender: TObject; const POI: IXPOIItem;
      nFlag, X, Y: Integer);
    procedure mMapStateChange(ASender: TObject; Code, Value1,
      Value2: Integer);
    procedure mMapUI_MouseDown(ASender: TObject; const Obj: IXUIObj; Flag,
      X, Y: Integer);
    procedure mMapUI_MouseHover(ASender: TObject; const Obj: IXUIObj);
    procedure mMapUI_MouseLeave(ASender: TObject; const Obj: IXUIObj);
    procedure mMapUI_MouseMove(ASender: TObject; const Obj: IXUIObj; Flag,
      X, Y: Integer);
    procedure mMapUI_MouseUp(ASender: TObject; const Obj: IXUIObj; Flag, X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cbbSidoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
		procedure btnShSchClick(Sender: TObject);
    procedure cb_SUpDateClick(Sender: TObject);
    procedure tmr_SdisTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rbo_UseNaverMapPropertiesChange(Sender: TObject);
		procedure trm_NaverTimer(Sender: TObject);
    procedure tmrDongPolygonTimer(Sender: TObject);
  private
    { Private declarations }
    FInit: Boolean;
		AutoFlag  : Boolean; //자동검색 시 검색 버튼 안눌임  2014.11.23 KHS
		sl_STInfo, sl_STInfo_Status : THashedStringList;  //셔틀

    gMapX, gMapY : Integer;

		sts_Chk : Boolean;

		maxLogicalLevel : Integer;
		minLogicalLevel : Integer;
		ws_Lon, ws_Lat : integer;
		sw_Lon, sw_Lat : Double;
		m_Lon, m_Lat : Integer;   //mousemove 값

		gAngle : integer;

		//네이버 맵 관련
		Naver_URL : string;
		CurDispatch: IDispatch; {save the interface globally }
		bWebLoading, bNaverFirst : Boolean;

		function RequestDataBase(ATxData: string; var ARxDataDom: msDomDocument): Boolean;
    procedure RequestDataArea(AcxComboGugun, AcxComboDong: TcxComboBox; const ASido: string; AGugun: string; AUseAll: Boolean);
    procedure ClearDongList(AcxCombo: TcxComboBox);
		procedure CreateObj;
    procedure GeneralInit;
    procedure DestroyUI;
		procedure AddStIconReady(const AXPos, AYPos: string;
			AWkInfo: TMapStWkInfoRec; iItmiDx : integer);
		function SK_GetAngleFromLine(pt1, pt2: TPoint): Double;
		function Angle(Pt1, Pt2: TTmappos): Double;

		procedure proc_Shuttle_Search;

		//네이버 맵 관련
		procedure pLoadNaverMap;
		procedure proc_MoveCenter(ALat, ALon, ALeavel : string);
		procedure setSTPoiMark(aLat, aLon: String;AWkInfo: TMapStWkInfoRec);
		procedure proc_AutoSearchStop;
    procedure pMapDongPolygon(X, Y: Integer);
	public
    { Public declarations }
		Skm : string;
		WK_ATTEND, WK_ATTEND_TIME, WK_KEYWORD, WK_KEYKIND, WK_STATE, WK_TYPE, ALastUpdate, ACallSearchYn  : string;
    mCtrlState : IXMasterControlState;
    mCtrlMan : IXCtrlMan;
    mUiman : IXUIMan;
		mDpsize : IXSize;
		mUtil : IXUtility;
    mPoiman : IXPOIMan;
    mBtnLevle : array [0..12] of IXUIButton;
    MyToolBar1 : array[0..20] of IXUIButton;
		s0001, s0002, s0101, s0102, s0201, s0202 : IXMagicImage;
		ReadyGstyle, ReadyStyle, RunGstyle, RunStyle : IXPOIStyle;
		ReadyImage, RunImage, GongUImage : IXMagicImage;
    ReadyPoiman : IXPOIMan;

    function WGS84ToBessel(Y_1, x_1 : string) : integer;
		function WGS84IntToBessel(Y_1, x_1 : string) : integer;
    function BesselToWGS84(Y_1, x_1 : double) : integer;
    function GetAdminCodeF(GLon, GLot : Integer) : string;

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

    function Map_SetLevel(level : Integer) : Integer;

    function SetCtrlState(setType : Integer):Integer;
    procedure OnMoveMap(lon, lat : INTEGER);
		procedure Sets0001Style;
		procedure Sets0002Style;
		procedure Sets0101Style;
		procedure Sets0102Style;
		procedure Sets0201Style;
		procedure Sets0202Style;
  end;

var
  Frm_AdminMap02: TFrm_AdminMap02;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_Msg, xe_xml, xe_Flash, xe_packet;
{ TAreaSlot }

constructor TAreaSlot.Create(const PosX, PosY: string);
begin
  FPosX := PosX;
  FPosY := PosY;
end;

{ TfrmJON30 }

procedure TFrm_AdminMap02.cbbGugunPropertiesChange(Sender: TObject);
begin
  if cbbGugun.Text <> '' then
    RequestDataArea(cbbGugun, cbbDong, cbbSido.Text, cbbGugun.Text, False);
end;

procedure TFrm_AdminMap02.cbbSidoPropertiesChange(Sender: TObject);
begin
  RequestDataArea(cbbGugun, cbbDong, cbbSido.Text, '', False);
end;

procedure TFrm_AdminMap02.cbbDongPropertiesChange(Sender: TObject);
var
  Info: TAreaSlot;
begin
  if cbbDong.ItemIndex = -1 then
    Exit;

  Info := TAreaSlot(cbbDong.Properties.Items.Objects[cbbDong.ItemIndex]);
  if Assigned(Info) then
  begin
    WGS84ToBessel(Info.PoxY, Info.PosX);
    OnMoveMap(ws_Lon, ws_Lat);
  end
  else
    GMessagebox('해당 동의 좌표정보를 찾을 수 없습니다.', CDMSE);
end;


procedure TFrm_AdminMap02.RequestDataArea(AcxComboGugun,
  AcxComboDong: TcxComboBox; const ASido: string; AGugun: string;
  AUseAll: Boolean);
var
  TxData, TxQry: string;
  RxData: msDomDocument;
  I: Integer;
  lst_Result: IXMLDomNodeList;
begin
  if AUseAll and (ASido = '전체') then
  begin
    AcxComboGugun.Properties.Items.Text := '전체';
    AcxComboGugun.ItemIndex := 0;
    Exit;
  end;

  RxData := ComsDomDocument.Create;
  try
    TxData := GTx_UnitXmlLoad('C064N1.xml');
    TxData := ReplaceAll(TxData, 'cityStr',   ASido);
    TxData := ReplaceAll(TxData, 'wardStr',   AGugun);
    TxData := StringReplace(TxData, 'QueryString', TxQry, [rfReplaceAll]);
    if RequestDataBase(TxData, RxData) then
    begin
      if AGugun = '' then
      begin
        lst_Result := RxData.documentElement.selectNodes('/cdms/Service/Response/Ward');

        AcxComboGugun.Properties.Items.Clear;
        if AUseAll then
          AcxComboGugun.Properties.Items.Add('전체');
        for I := 0 to lst_Result.length - 1 do
        begin
          AcxComboGugun.Properties.Items.Add(lst_Result.item[I].Text);
        end;

        if AcxComboGugun.Properties.Items.Count > 0 then
          AcxComboGugun.ItemIndex := 0;
      end else
      begin
        lst_Result := RxData.documentElement.selectNodes('/cdms/Service/Response/Street');
        ClearDongList(AcxComboDong);
        for I := 0 to lst_Result.length - 1 do
        begin
          AcxComboDong.Properties.Items.AddObject(lst_Result.item[I].text,
            TAreaSlot.Create(
                lst_Result.item[I].attributes.getNamedItem('MapX').Text
              , lst_Result.item[I].attributes.getNamedItem('MapY').Text
            ));
        end;
        if AcxComboDong.Properties.Items.Count > 0 then
          AcxComboDong.ItemIndex := 0;
      end;
    end;
  finally
    RxData := Nil;
  end;
end;

function TFrm_AdminMap02.RequestDataBase(ATxData: string;
  var ARxDataDom: msDomDocument): Boolean;
var
  StrList: TStringList;
  ErrCode: Integer;
  ErrorCode, RxData: string;
begin
  Result := False;
  if FInit then Exit;

  ATxData := StringReplace(ATxData, 'UserIDString',     GT_USERIF.ID, [rfReplaceAll]);
  ATxData := StringReplace(ATxData, 'ClientVerString',  VERSIONINFO, [rfReplaceAll]);

  StrList := TStringList.Create;
  Screen.Cursor := crHourGlass;
  try
    if not dm.SendSock(ATxData, StrList, ErrCode, False) then
    begin
      GMessagebox('데이터 전송에 실패했습니다.'#13#10'다시시도 하세요.', CDMSE);
      cb_SUpDate.ItemIndex := 0;
      Exit;
    end;

    try
      if StrList.Count = 0 then
      begin
        GMessagebox('검색된 데이터가 없습니다.', CDMSE);
        cb_SUpDate.ItemIndex := 0;
        Exit;
      end;

      RxData := StrList[0];
      if not ARxDataDom.loadXML(RxData) then
      begin
        GMessagebox('수신데이터가 잘못되었습니다.[XML Format error]', CDMSE);
        cb_SUpDate.ItemIndex := 0;
        Exit;
      end;

      ErrorCode := GetXmlErrorCode(RxData);
      if ErrorCode <> '0000' then
      begin
        GMessagebox(Format('데이터 조회 중 오류가 발생했습니다.'#13#10'[오류내용: %s]', [GetXmlErrorMsg(RxData)]), CDMSE);
        cb_SUpDate.ItemIndex := 0;
        Exit;
      end;

      Result := True;
    except on E: Exception do
      begin
        Assert(False, E.Message);
        GMessagebox(Format('데이터 조회 중 오류가 발생했습니다.'#13#10'[오류내용: %s]', [E.Message]), CDMSE);
        cb_SUpDate.ItemIndex := 0;
      end;
    end;
  finally
    Frm_Flash.Hide;
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

function TFrm_AdminMap02.BesselToWGS84(Y_1, x_1: double): integer;
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

function TFrm_AdminMap02.GetAdminCodeF(GLon, GLot: Integer): string;
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

function TFrm_AdminMap02.WGS84IntToBessel(Y_1, x_1: string): integer;
var r_y, r_X : Integer;
	coord : IXCoordSys;
	pos : IXMapPos;
begin
 	coord := mMap.GetCoordSys();
	r_y := strtoint(Y_1);
	r_X := strtoint(x_1);
	pos := coord.WGS84ToBessel(r_y, r_X);
	ws_Lon := pos._Lon;
	ws_Lat := pos._Lat;
end;

function TFrm_AdminMap02.WGS84ToBessel(Y_1, x_1: string): integer;
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

procedure TFrm_AdminMap02.mMapCreate(ASender: TObject; Value: Integer);
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
    exit
  end;

  // Admin 파일을 설정.
//  mAdminMan.SetDefaultPath(mRootPath + 'eksys\Theme');
  mAdminMan.SetDefaultPath(MAP_URL + 'Theme');
  if mAdminMan.LoadAdmin('TalMap_M.TMA') <> true then
  begin
    ShowMessage('행정도파일 설정에 실패했습니다.');
    exit
  end;
	mUiman := mCtrlman.GetUIMan();
  mUiman.SetShowCenterLine(2);       //센터 열십자.

//  SetCtrlState(32);//마우스 클릭이동 해제

  mCtrlMan.SetDefaultEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEMOVE'));
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

  sts_Chk := True;
	GeneralInit;

	rbo_UseNaverMap.checked := True; 
end;

procedure TFrm_AdminMap02.mMapMouseMove(ASender: TObject; Flag, X, Y: Integer);
begin
  gMapX := X;
  gMapY := Y;
  tmrDongPolygon.Enabled := True;
end;

procedure TFrm_AdminMap02.mMapPOI_DblClick(ASender: TObject;
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

procedure TFrm_AdminMap02.mMapStateChange(ASender: TObject; Code, Value1,
	Value2: Integer);
var
	mGroup : IXPOIGroup;
  mGstyle : IXPOIStyle;
  mPoi : IXPOIItem;
  poi_cnt, i, iCaptionLvl : integer;
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
        mGstyle := mPoiman.FindStyle(1);
        if (mGstyle <> nil) then
        begin
          // 지방권만 레벨6일경우 캡션 표시
          if GS_PRJ_AREA = 'O' then iCaptionLvl := 7
                               else iCaptionLvl := 6;

          if mCtrlState.GetLevel() < iCaptionLvl then
          begin
            mGstyle.SetGDIFont(GS_FONTNAME, 0, 9);  //레벨별 기사 상태 캡션표기
            mGstyle.SetFontColor(mUtil.RGBColor(0, 0, 0));  //캡션글자
            mGstyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));     //캡션 글자테두리
            mGstyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0); //캡션배경
            mGstyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
            mGroup.SetStyle(mGstyle);
          end else
          begin
            mGroup.ClearStyle;
          end;
        end;
        //레벨별 기사 상태 캡션표기//////////////////////////////////

        //레벨별 기사 아이콘변경/////////////////////////////////////
        //대기중
        mGroup := mPoiman.FindGroup(0);
        if mGroup <> nil then
        begin
          poi_cnt := mGroup.GetItemCount;

          for i := 1 to poi_cnt  do
          begin
            mPoi := mGroup.FindItem(i);
            if (mPoi <> nil) and (mCtrlState.GetLevel() > 8) then
            begin
              mPoi.SetImageIndex(4);
            end else
            if (mPoi <> nil) and (mCtrlState.GetLevel() < 9) and (mCtrlState.GetLevel() > 4) then
            begin
              mPoi.SetImageIndex(2);
            end else
            if (mPoi <> nil) and (mCtrlState.GetLevel() < 5)then
            begin
              mPoi.SetImageIndex(1);
            end;
          end;
        end;
        //레벨별 기사 아이콘변경/////////////////////////////////////
      end;
    end;
  except
  end;
end;

procedure TFrm_AdminMap02.mMapUI_MouseDown(ASender: TObject;
  const Obj: IXUIObj; Flag, X, Y: Integer);
begin
 // Map Tool Bar
  if Obj.GetUIID > 200 then
  begin
    MyToolBar1[Obj.GetUIID - 200].SetItemIndex(2);
    Obj.SetAlpha(80);
  end;
end;

procedure TFrm_AdminMap02.mMapUI_MouseHover(ASender: TObject;
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

procedure TFrm_AdminMap02.mMapUI_MouseLeave(ASender: TObject;
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

procedure TFrm_AdminMap02.mMapUI_MouseMove(ASender: TObject;
  const Obj: IXUIObj; Flag, X, Y: Integer);
begin
  if Obj.GetUIID > 200 then
  begin
    MyToolBar1[Obj.GetUIID - 200].SetItemIndex(3);
    Obj.SetAlpha(0);
  end;
end;

procedure TFrm_AdminMap02.mMapUI_MouseUp(ASender: TObject;
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

procedure TFrm_AdminMap02.OnMoveMap(lon, lat: INTEGER);
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
  mCtrlState.SetLLCenter(lon, lat);
end;

procedure TFrm_AdminMap02.pLoadNaverMap;
var iRandom : integer;
		sClient: string;
begin
	Try
		iRandom := RandomRange(0, gslNaverClientID.Count); //실제 갯수만큼 사용 0, 5 -> Max index = 4
		sClient := gslNaverClientID[iRandom];
		Naver_URL := 'http://203.251.202.13:88/map/makeNaverMap_AdminMap_cloud.jsp?ncpClientId=' + sClient;
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

procedure TFrm_AdminMap02.PnlTitleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_AdminMap02.proc_AutoSearchStop;
begin
	cb_SUpDate.ItemIndex := 0;
	tmr_Sdis.Enabled := False;
	cxCESdt.Value := 0; // 갱신시간 카운트.
end;

procedure TFrm_AdminMap02.proc_MoveCenter(ALat, ALon, ALeavel: string);
begin
	Try
		ExecuteJavaScript(webNaverMap,'CenterMove('+ALat+','+ALon+','+ALeavel+');');
	except
	End;
end;

procedure TFrm_AdminMap02.proc_Shuttle_Search;
var
  Lon_P, Lat_P, iCnt, tmpCnt : Integer;
	c_Point : TalMapXLib_TLB.IXPoint;
	AState, AType : string;
  sBrCd, XmlData, Param, ErrMsg, tmpCntStr, tmpStr, sContent : string;

	TxData: string;
	i, j, Row, ErrCode, iNum, k : Integer;
  XPos, YPos: string;
	StRec: TMapStWkInfoRec;
	slTmp, slList, StrList : TStringList;
  ArrSt: Array of String;

	slIngCall, slDeadCall,slDeadCallIdx : TStringList;
	sTmp : string;
	mPoi : IXPOIItem;
	mGroup : IXPOIGroup;
	iGetID, iDx : integer;
	mPoll : TalMapXLib_TLB.IXPoint;
	sTmpLon, sTmpLat : string;
	dTmpLon, dTmpLat : Double;
	sFind, sGetLat, sGetLon : String;
	fDis : Double;
begin
	SetDebugeWrite('TFrm_AdminMap02.proc_ Shuttle_Search');
	Try
		btnShSch.Enabled := False;
		rbo_UseNaverMap.Enabled := False;

		if rbStateSA.Checked then AState := '0' else
		if rbStateSB.Checked then AState := '1' else
		if rbStateSC.Checked then AState := '9' else
		if rbStateSD.Checked then AState := '5';

		if rbWKWAITS5.Checked then AType := '0' else
		if rbWKWAITS6.Checked then AType := '1' else
		if rbWKWAITS7.Checked then AType := '2';

		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearItem;

		mGroup := mPoiman.FindGroup(90);
		if mGroup <> nil then mGroup.ClearItem;

		sl_STInfo_Status.clear;
		sl_STInfo.clear;
		
		mCtrlMan := mMap.GetCtrlMan();
		mCtrlState := mCtrlMan.GetControlState;
		c_Point := mCtrlState.GetLLCenter;
		Lon_P := c_Point.GetX; //lon
		Lat_p := c_Point.GetY; //lat

		BesselToWGS84(Lon_P, Lat_p);

		slTmp := TStringList.Create;
		Screen.Cursor := crHourGlass;
		slList := TStringList.Create;

		slIngCall := TStringList.create;
		slDeadCall := TStringList.create;
		slDeadCallIdx:= TStringList.create;
		try
			Sets0001Style; // 운행자사
			Sets0002Style; // 운행타사
			Sets0101Style; // 대기자사
			Sets0102Style; // 대기타사
			Sets0201Style; // 종료자사
			Sets0202Style; // 종료타사

			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			begin
				Param := GT_SEL_BRNO.BrNo;
			end else
			begin
				if GT_SEL_BRNO.GUBUN = '0' then
				begin
					Param := GT_USERIF.BR;
				end else
				begin
					Param := GT_SEL_BRNO.BrNo;
				end;
			end;

			Param := Param + '│' + AType + '│' + AState;
			if not RequestBasePaging(GetSel06('GETWKSHUTTLESEARCH', 'MNG.GET_WK_SHUTTLE_SEARCH', '100', Param), slList, ErrCode, ErrMsg) then
			begin
				Screen.Cursor := crDefault;
//				cb_SUpDate.ItemIndex := 0;
				Log(Format('셔틀기사현황 조회 중 오류발생[셔틀관제]'#13#10'[%d]%s', [ErrCode, ErrMsg]), LOGDATAPATHFILE);
//				GMessagebox(Format('셔틀기사현황 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Exit;
			end;

			StrList := TStringList.Create;
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
				if tmpCnt<1 then Exit;

				SetLength(ArrSt,tmpCnt);
				tmpStr:=xmlData;
				tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
				tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
				tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

				if Pos('<Result Value=',XmlData)>0 then
					tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

				iNum := 0;
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

						if sl_STInfo.indexOf(StrList.Strings[0]) > -1 then
						begin
							sTmp := ArrSt[k];
							if sl_STInfo_Status.IndexOf(sTmp) > -1 then continue;
						end;
						
						slTmp.clear;
						StRec.Sabun     := StrList.Strings[0];  // 기사사번
						StRec.Name      := StrList.Strings[1];  // 기사이름
						StRec.Con_State := StrList.Strings[2];  // 기사상태 1:운행중, 9:종료, 5:대기

						GetTextSeperationEx(',', StrList.Strings[3], slTmp); // 좌표 밀리초값      13498273,45764548
						if slTmp[0] = '' then	StRec.MAPX  := '0' else	StRec.MAPX := slTmp[0];
						if slTmp[1] = '' then	StRec.MAPY  := '0' else	StRec.MAPY := slTmp[1];

						GetTextSeperationEx(',', StrList.Strings[4], slTmp); // 이전 좌표 밀리초값
						if slTmp[0] = '' then	StRec.pMAPX := '0' else	StRec.pMAPX := slTmp[0];
						if slTmp[1] = '' then	StRec.pMAPY := '0' else	StRec.pMAPY := slTmp[1];

						StRec.HdNo      := StrList.Strings[5];  // 본사코드
						StRec.BrNo      := StrList.Strings[6];  // 지사코드
						StRec.BrName    := StrList.Strings[7];  // 지사명
						StRec.HP        := StrToCall(StrList.Strings[8]);  // 기사휴대번호-실번호
						StRec.PHONE     := StrToCall(StrList.Strings[9]);  // 기사휴대번호-가상번호
						if StrList.Strings[11] = '자' then
							StRec.BR_Type   := '1' else
						if StrList.Strings[11] = '타' then
							StRec.BR_Type   := '2';

						if not rbo_UseNaverMap.Checked then    //탈맵지도사용
						begin
							mGroup := mPoiman.FindGroup(90);
							mPoi := Nil;
							iGetID := -1;
							if mGroup <> nil then
							begin
								iCnt := mGroup.GetItemCount;

								for i := 1 to iCnt  do
								begin
									mPoi := mGroup.FindItem(i);
									if mPoi.GetString() = StRec.Sabun then
									begin
										iGetID := mPoi.GetId();
										Break;
									end;
									mPoi := Nil;
								end;
							end;

							if mPoi = nil then
							begin
								AddSTIconReady(StRec.MAPX, StRec.MAPY, StRec, -1);
								sl_STInfo.add(StRec.Sabun);
								sl_STInfo_Status.add(ArrSt[k]);
							end
							else
							begin
								mPoll := mPoi.GetLonLat;
								BesselToWGS84(mPoll.GetX, mPoll.Gety);
						
								if (FloatToStr(sw_Lon) = getWgs84(StRec.MAPY)) and ('0'+FloatToStr(sw_Lat) = '0'+getWgs84(StRec.MAPX)) then //이전좌표와 비교하여 변경됐으면 좌표이동
								else
									AddSTIconReady(StRec.MAPX, StRec.MAPY, StRec, iGetID);
							end;
						end else
						begin
							dTmpLon := StrToFloat(StRec.MAPY) /360000;
							dTmpLat := StrToFloat(StRec.MAPX) /360000;
							sTmpLon := FloatToStr(dTmpLon);
							sTmpLat := FloatToStr(dTmpLat);

							StRec.MAPX      := '0' + getWGS84(sTmpLat);
							StRec.MAPY      := getWGS84(sTmpLon);
							
							dTmpLon := StrToFloat(StRec.pMAPY) /360000;
							dTmpLat := StrToFloat(StRec.pMAPX) /360000;
							sTmpLon := FloatToStr(dTmpLon);
							sTmpLat := FloatToStr(dTmpLat);

							if sTmpLat <> '0' then StRec.pMAPX      := '0' + getWGS84(sTmpLat);
							if sTmpLon <> '0' then StRec.pMAPY      := getWGS84(sTmpLon);
							
							Try //기존 마커 삭제
								ExecuteJavaScript(webNaverMap,'FindOneMark('''+StRec.Sabun+''');');  //마커 존재확인
								sFind := ExecuteJavaScriptGetValue(webNaverMap, 'Result');   //결과 받음
								if sFind = 'True' then
								begin
									sGetLat := ExecuteJavaScriptGetValue(webNaverMap, 'lat');  
									sGetLon := ExecuteJavaScriptGetValue(webNaverMap, 'lng');  

									fDis := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
													StRec.MAPX, StRec.MAPY, StRec.pMAPX, StRec.pMAPY)
													* 1.0, ffNumber, 3, 1), 0.0);

									
//									if (SetWGS84(StRec.MAPX) <> sGetLat) or (SetWGS84(StRec.MAPY) <> sGetLon) then
									begin
										ExecuteJavaScript(webNaverMap,'RemoveOneMark('''+StRec.Sabun+''');');  //기존 마커 삭제
										setSTPoiMark(XPos, YPos, StRec);
									end;
								end else setSTPoiMark(XPos, YPos, StRec);  

							except
							end;   
						end;
						slIngCall.add(StRec.Sabun);
					end;
				end;

				slDeadCall.clear;
				slDeadCallIdx.clear;
				mGroup := mPoiman.FindGroup(90);
				if mGroup <> nil then
				begin
					iCnt := mGroup.GetItemCount;
					for i := 1 to iCnt do        //삭제해야할 마커  slDeadCall에 추가
					begin
						mPoi := mGroup.FindItem(i);
						if mPoi <> nil then
						begin
							iDx := sl_STInfo.indexOf(mPoi.GetString());
							if iDx < 0 then
							begin
								Try
									if mPoi.GetString() <> '' then
									begin
										slDeadCall.add(mPoi.GetString());
										slDeadCallIdx.add(IntToStr(mPoi.GetId()));
									end;
								except
								End;
							end;
						end;
					end;
				end;

				for I := 0 to slDeadCall.count -1 do   //layer 에서 삭제
				begin
					iGetID := StrToIntDef(slDeadCallIdx[i], -1);
					mPoi := mGroup.FindItem(iGetID);
					
					if mPoi <> nil then
					begin
						mGroup.DeleteItem(iGetID);
						
						iDx := sl_STInfo.indexOf(slDeadCall[i]);
						if iDx > -1 then
						begin
							sl_STInfo.delete(iDx);
							sl_STInfo_Status.delete(iDx); 
            end;
					end;
				end;

			end;
		finally
			slIngCall.free;
			slDeadCall.free;
			slDeadCallIdx.free;

			slList.Free;
			StrList.Free;
			slTmp.free;
			Screen.Cursor := crDefault;
			btnShSch.Enabled := True;
			rbo_UseNaverMap.Enabled := True;
		end;
	except
		on e: exception do
		begin
			btnShSch.Enabled := True;
			rbo_UseNaverMap.Enabled := True;
			Log('pShuttleSearch Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'pShuttleSearch Error :' + E.Message);
		end;
	end;
end;

procedure TFrm_AdminMap02.rbo_UseNaverMapPropertiesChange(Sender: TObject);
begin
	proc_AutoSearchStop;
	if rbo_UseNaverMap.Checked then
	begin
		pnl_TalMap.Visible := False;
		pnl_NaverMap.Visible := True;

	end
	else
	begin
		pnl_TalMap.Visible := True;
		pnl_NaverMap.Visible := False;
	end;

	if not bNaverFirst then
		trm_Naver.Enabled := True;
	bNaverFirst := True;
end;

procedure TFrm_AdminMap02.ClearDongList(AcxCombo: TcxComboBox);
var
  I: Integer;
begin
  if not Assigned(AcxCombo) then Exit;

  for I := AcxCombo.Properties.Items.Count - 1 downto 0 do
  begin
    AcxCombo.Properties.Items.Objects[I].Free;
    AcxCombo.Properties.Items.Delete(I);
  end;
end;

procedure TFrm_AdminMap02.BirdView;
var
  vector : IXVector;
begin
  mCtrlState := mMap.GetCtrlMan.GetControlState ;
  vector := mCtrlState.GetRotate;
  if vector.GetX() <> 0 then
  begin
    vector.SetX(0);
  end else
  begin
    vector.SetX(-60);
  end;

  mCtrlState.SetRotate(vector);
end;

procedure TFrm_AdminMap02.CheckArea;
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

procedure TFrm_AdminMap02.CheckDistance;
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

procedure TFrm_AdminMap02.Clear;
begin
  ClearWkIcon;
end;

procedure TFrm_AdminMap02.ClearWkIcon;
Var mGroup : IXPOIGroup;
begin
  if mPoiman = nil then Exit;

  if mPoiman.GetGroupCount > 0 then
  begin
    mGroup := mPoiman.FindGroup(0);
    if mGroup <> nil then mGroup.ClearItem;

//     mPoiman.ClearGroup();
  end;
end;

procedure TFrm_AdminMap02.CopyToClipboard;
begin
  mMap.CopyToClipboard();
end;

procedure TFrm_AdminMap02.CreateLevelBar;
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

procedure TFrm_AdminMap02.CreateToolBarUI;
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
      if i = 1  then MyToolBar1[i].SetHint('축소');
      if i = 2  then MyToolBar1[i].SetHint('확대');
      if i = 3  then MyToolBar1[i].SetHint('회전');
      if i = 4  then MyToolBar1[i].SetHint('이전화면');
      if i = 5  then MyToolBar1[i].SetHint('다음화면');
      if i = 6  then MyToolBar1[i].SetHint('조망보기');
      if i = 7  then MyToolBar1[i].SetHint('3D보기');
      if i = 8  then MyToolBar1[i].SetHint('텍스트보기');
      if i = 9  then MyToolBar1[i].SetHint('클립보드저장');
      if i = 10 then MyToolBar1[i].SetHint('지도화면저장');
      if i = 13 then MyToolBar1[i].SetHint('폴리곤그리기');
      if i = 14 then MyToolBar1[i].SetHint('폴리라인그리기');
      if i = 15 then MyToolBar1[i].SetHint('객체지우기');
      if i = 16 then MyToolBar1[i].SetHint('반경그리기');
      if i = 17 then MyToolBar1[i].SetHint('면적측정');
      if i = 18 then MyToolBar1[i].SetHint('거리측정');
      if i = 19 then MyToolBar1[i].SetHint('객체삭제');
      if i = 20 then MyToolBar1[i].SetHint('객체편집');
      MyToolBar1[i].AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP')    or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEDOWN')
                              or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtil.GetConstToValue('TMEVNETTYPE_MOUSEENTER') or mUtil.GetConstToValue('TMEVNETTYPE_MOUSEMOVE'));
      width_px := width_px + 25;
    end;
		Inc(UIID);
	end;
end;

procedure TFrm_AdminMap02.DelDistance;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(2);
  if layer <> nil then layer.ClearObject();
end;

procedure TFrm_AdminMap02.DrawPolygon;
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

procedure TFrm_AdminMap02.DrawPolyline;
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

procedure TFrm_AdminMap02.HistoryNext;
begin
  mCtrlman := mMap.GetCtrlMan();
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryNext();
end;

procedure TFrm_AdminMap02.HistoryPrev;
begin
  mCtrlman := mMap.GetCtrlMan();
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryPrev();
end;

procedure TFrm_AdminMap02.MakeStatusbar;
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

	btnImg := mUiman.CreateUI_Image(mUiman);
	btnImg.SetParent(mUiman);
	btnImg.SetUIID(300);
	btnImg.SetImage('areaPanel.png');
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

procedure TFrm_AdminMap02.Map_Rotate;
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlMan.SetMapRotation(1);
end;

function TFrm_AdminMap02.Map_SetLevel(level: Integer): Integer;
begin
  if (level < minLogicalLevel) then Exit;
  if (level > maxLogicalLevel) then Exit;
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
  mCtrlState.SetLevel(level);
end;

procedure TFrm_AdminMap02.Map_ZoomIn;
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
	if (mCtrlState.GetLevel() > minLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() -1);
end;

procedure TFrm_AdminMap02.Map_ZoomOut;
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
	if (mCtrlState.GetLevel() < maxLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() +1);
end;

procedure TFrm_AdminMap02.MapLevel_Master(level: INTEGER);
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

procedure TFrm_AdminMap02.ObjectModify;
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

procedure TFrm_AdminMap02.RemovePolygon;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(1);
  if layer <> nil then layer.ClearObject();
end;

procedure TFrm_AdminMap02.SaveImage;
var filename : WideString;
begin
  mUtil := mMap.GetUtility();
  filename := mUtil.SaveImageDialog('C:\', 'MapImage.png');
  mMap.SaveImage(filename);
end;

procedure TFrm_AdminMap02.Show;
begin
  fSetFont(Frm_AdminMap02, GS_FONTNAME);
  ShowWindow(Handle, SW_SHOWNA);
  Visible := True;
end;

procedure TFrm_AdminMap02.ShowThemeForm;
var
  thememan : IXThemeMan;
begin
  mCtrlMan := mMap.GetCtrlMan();
  thememan := mCtrlMan.GetThemeMan();
  thememan.ShowForm();
end;

procedure TFrm_AdminMap02.ToggleLevelBar;
begin
  mCtrlMan := mMap.GetCtrlMan();
	mUiman := mCtrlman.GetUIMan();

	if mUiman.GetShowLevelBar = 0 then mUiman.SetShowLevelBar(1)
	else mUiman.SetShowLevelBar(0);
end;

procedure TFrm_AdminMap02.trm_NaverTimer(Sender: TObject);
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
		proc_MoveCenter('37.565612', '126.978013', '7') //서울시청
	else
		proc_MoveCenter(SetWGS84(XPos), SetWGS84(YPos), '7');  
end;

procedure TFrm_AdminMap02.View3D;
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
  end else
  if mtype = 16 then
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_3D_1'));
  end else
  if mtype = 17 then
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_3D_2'));
  end else
  if mtype = 18 then
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_NORMAL'));
  end else
  begin
    mCtrlState.SetState(state, mUtil.GetConstToValue('TMCTRLSTATE_CODE_BUILDING_NORMAL'));
  end;
end;

procedure TFrm_AdminMap02.ViewText;
var
  mMapMan : IXMapMan;
begin
  mMapMan := mMap.GetCtrlMan.GetMapMan();
  if mMapMan.GetVisible = 5 then mMapMan.SetVisible(7) else
  if mMapMan.GetVisible = 7 then mMapMan.SetVisible(5);
end;

procedure TFrm_AdminMap02.CreateObj;
begin
	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
	SetWindowLong(Handle, GWL_EXSTYLE, WS_EX_APPWINDOW);

	sl_STInfo := THashedStringList.create;
	sl_STInfo_Status := THashedStringList.create;

  cbbSido.Clear;
  cbbSido.Properties.BeginUpdate;
  try
    cbbSido.Properties.Items.CommaText := '서울,경기,인천,대전,충남,충북,강원,대구,경북,부산,울산,경남,전북,광주,전남,제주';
    cbbSido.ItemIndex := -1;
  finally
    cbbSido.Properties.EndUpdate;
  end;
	AutoFlag := True;

	bNaverFirst := False;
	pLoadNaverMap;   

	
end;

procedure TFrm_AdminMap02.GeneralInit;
begin
	maxLogicalLevel := 13 -1;
  minLogicalLevel := 0;

  CreateLevelBar;
  mCtrlState.SetLevel(StrToInt(GS_ADMINMAP_LEVEL));
  CreateToolBarUI;
  MakeStatusbar;
end;

procedure TFrm_AdminMap02.AddStIconReady(const AXPos, AYPos: string;
  AWkInfo: TMapStWkInfoRec; iItmiDx : integer);
var
  I, iCaptionLvl : Integer;
  Title, Desc: string;
  itemCount, mAngle : integer;
  mPosLL : IXPoint;
  mGroup : IXPOIGroup;
  mGstyle, mStyle : IXPOIStyle;
  mItem : IXPOIItem;
  Lon_p, Lat_p : Integer;
  statNM : string;
  Pt1, Pt2 : TTmappos;
	sTmpLon_N, sTmpLat_N : string;
	dTmpLon_N, dTmpLat_N : Double;
	sTmpLon_P, sTmpLat_P : string;
	dTmpLon_P, dTmpLat_P : Double;
begin
	try
    Lon_p := 0;
    Lat_p := 0;
		if (AWkInfo.MAPX = '0') or (AWkInfo.MAPY='') then Exit;
		mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState();
    mUtil := mMap.GetUtility();
    itemCount := 0;
    mPosLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

    mGroup := mPoiman.FindGroup(0);
    if mGroup = nil then mGroup := mPoiman.NewGroup(0);

      // Step 2-1. Make POI Style
     mGstyle := mPoiman.FindStyle(1);

    mStyle := mPoiman.FindStyle(1);
    if mStyle = nil then
    begin
      mStyle := mPoiman.NewStyle(1);
    end;

    // 지방권만 레벨6일경우 캡션 표시
    if GS_PRJ_AREA = 'O' then iCaptionLvl := 7
                         else iCaptionLvl := 6;

    if mCtrlState.GetLevel() < iCaptionLvl then
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


		WGS84IntToBessel(AWkInfo.MAPY, AWkInfo.MAPX);

		if iItmiDx > -1 then       
			mItem := mGroup.FindItem(iItmiDx) //기존 마커 변경
		else
			mItem := mGroup.NewItem(-1);      //마커신규생성
		mItem.SetLonLat(ws_Lon, ws_Lat); // 45765228  46408987       //46406148  45765178
																		 // 13497210  12681230       //12680945  13497257
		if (AWkInfo.Con_State = '1') and (AWkInfo.BR_Type = '1') then
		begin
			mItem.SetImage(s0001);
			statNM := '운행중-자사';
		end else
		if (AWkInfo.Con_State = '1') and (AWkInfo.BR_Type = '2') then
		begin
			mItem.SetImage(s0002);
			statNM := '운행중-타사';
		end else
		if (AWkInfo.Con_State = '5') and (AWkInfo.BR_Type = '1') then
		begin
			mItem.SetImage(s0101);
			statNM := '대기-자사';
		end else
		if (AWkInfo.Con_State = '5') and (AWkInfo.BR_Type = '2') then
		begin
			mItem.SetImage(s0102);
			statNM := '대기-타사';
		end else
		if (AWkInfo.Con_State = '9') and (AWkInfo.BR_Type = '1') then
		begin
			mItem.SetImage(s0201);
			statNM := '종료-자사';
		end else
		if (AWkInfo.Con_State = '9') and (AWkInfo.BR_Type = '2') then
		begin
			mItem.SetImage(s0202);
			statNM := '종료-타사';
		end;

		mItem.SetShowImage(1);
		if (mCtrlState.GetLevel() > 8) then
		begin
			mItem.SetImageIndex(4);
		end else
    if (mCtrlState.GetLevel() < 9) and (mCtrlState.GetLevel() > 4) then
		begin
			mItem.SetImageIndex(2);
		end else
    if (mCtrlState.GetLevel() < 5)then
		begin
			mItem.SetImageIndex(1);
		end;
		mItem.SetImageOffset(4);
    mItem.SetTextStyle(StrToInt('0x12'));

    if i mod 2 <> 0 then mItem.SetStyle(mStyle);
		Title := Format('%s(%s)', [AWkInfo.BrName, AWkInfo.Name]);
    mItem.SetCaption(Title);
		mItem.SetString(AWkInfo.Sabun);

    if AWkInfo.BR_Type = '1' then
    begin
      Desc := Format('[%s]'#13#10'%s(%s)'#13#10'%s'#13#10'%s(%s)',
        [statNM, AWkInfo.Name, AWkInfo.Sabun, AWkInfo.HP, AWkInfo.BrName, AWkInfo.BrNo] );
      mItem.SetContents(Desc);
    end else
    if AWkInfo.BR_Type = '2' then
    begin
      if not GS_ADMINMAP_TAG_BRNAME then AWkInfo.BrName := '';
      if not GS_ADMINMAP_TAG_WKSABUN then AWkInfo.Sabun := '';
      if not GS_ADMINMAP_TAG_WKNAME then AWkInfo.Name := '';
			if (AWkInfo.BrName = '') and (AWkInfo.Sabun = '') and (AWkInfo.Name = '') then
      else
      begin
        Desc := Format('[%s]%s%s(%s)', [statNM, AWkInfo.BrName, AWkInfo.Name, AWkInfo.Sabun] );
				mItem.SetContents(Desc);
      end;
    end;

		mItem.SetAnimation(200); // 1초 단위
		mItem.SetSyncAngle(1);

		mAngle := 0;

		dTmpLon_N := StrToFloat(AWkInfo.MAPY) /360000;
		dTmpLat_N := StrToFloat(AWkInfo.MAPX) /360000;
		sTmpLon_N := FloatToStr(dTmpLon_N);
		sTmpLat_N := FloatToStr(dTmpLat_N);
						
		WGS84ToBessel(getWgs84(sTmpLon_N), '0'+ getWgs84(sTmpLat_N));
		Pt1.lon := ws_Lon;
		Pt1.lat := ws_Lat;  

		dTmpLon_P := StrToFloat(AWkInfo.pMAPY) /360000;
		dTmpLat_P := StrToFloat(AWkInfo.pMAPX) /360000;
		sTmpLon_P := FloatToStr(dTmpLon_P);
		sTmpLat_P := FloatToStr(dTmpLat_P);
						
		WGS84ToBessel(getWgs84(sTmpLon_P), '0'+ getWgs84(sTmpLat_P));
		Pt2.lon := ws_Lon;
		Pt2.lat := ws_Lat; 

		if (Pt1.lon >0) and (Pt1.lat >0) and (Pt2.lon >0) and (Pt2.lat >0) then
		begin
//			dx := dTmpLat_N - dTmpLat_P;
//			dy := dTmpLon_N - dTmpLon_P;
//			dTmp := atan2(dx, dy);
//		 var degree = (rad*180)/Math.PI ;

			mAngle := Trunc(Angle(Pt1, Pt2)) - 90;

		end;
		mItem.SetAngle(mAngle);
		mItem.SetAlpha(100);

//    mAngle := mAngle + 10;
//    if(mAngle > 360) then mAngle := 0;
	except
		btnShSch.Enabled := True;
		rbo_UseNaverMap.Enabled := True;
	end;
end;

function TFrm_AdminMap02.SetCtrlState(setType: Integer): Integer;
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

procedure TFrm_AdminMap02.btnShSchClick(Sender: TObject);
begin
	if not AutoFlag then
	begin
		Exit;
	end;

	cb_SUpDate.ItemIndex := 0;
	tmr_Sdis.Enabled := False;
	cxCESdt.Value := 0; // 갱신시간 카운트.

	proc_Shuttle_Search;
end;

procedure TFrm_AdminMap02.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_AdminMap02.FormClose(Sender: TObject; var Action: TCloseAction);
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
	cb_SUpDate.ItemIndex := 0;
  Action := caFree;
end;

procedure TFrm_AdminMap02.FormCreate(Sender: TObject);
begin
	sts_Chk := False;
	CreateObj;
	cb_SUpDate.ItemIndex := 0;
end;

procedure TFrm_AdminMap02.FormResize(Sender: TObject);
begin
  if sts_Chk then
  begin
		DestroyUI;
    CreateLevelBar;
    CreateToolBarUI;
  end;
end;

procedure TFrm_AdminMap02.DestroyUI;
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

procedure TFrm_AdminMap02.cbbSidoClick(Sender: TObject);
begin
  if cbbGugun.Text = '' then
    RequestDataArea(cbbGugun, cbbDong, cbbSido.Text, '', False);
end;

procedure TFrm_AdminMap02.Sets0001Style;
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
		s0001 := mImageman.LoadImageList('s0001', 's0001.png',18,41);
		if Not s0001.IsValid then ShowMessage('s0001Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap02.Sets0002Style;
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
		s0002 := mImageman.LoadImageList('i0002', 's0002.png',18,41);
		if Not s0002.IsValid then ShowMessage('s0002Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap02.Sets0101Style;
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
		s0101 := mImageman.LoadImageList('s0101', 's0101.png',17,31);
		if Not s0101.IsValid then ShowMessage('s0101Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap02.Sets0102Style;
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
		s0102 := mImageman.LoadImageList('s0102', 's0102.png',17,31);
		if Not s0102.IsValid then ShowMessage('s0102Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap02.Sets0201Style;
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
		s0201 := mImageman.LoadImageList('s0201', 's0201.png',17,31);
		if Not s0201.IsValid then ShowMessage('s0201Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap02.Sets0202Style;
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
		s0202 := mImageman.LoadImageList('s0202', 's0202.png',17,31);
		if Not s0202.IsValid  then ShowMessage('s0202Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap02.setSTPoiMark(aLat, aLon: String;
  AWkInfo: TMapStWkInfoRec);
var
	Title, Desc: string;
	Lon_p, Lat_p : Integer;
	statNM, sPLat, sPLon : string;
	aWkName, aWkSabun, aContents, aGubun : string;
begin
	try
		Lon_p := 0;
		Lat_p := 0;
		if (AWkInfo.MAPX = '0') or (AWkInfo.MAPY='') then Exit;
		if pos('.', AWkInfo.MAPY) > 0 then
		begin
			aLat := AWkInfo.MAPX;
			aLon := AWkInfo.MAPY;
		end
		else
		begin
			aLat := SetWGS84(AWkInfo.MAPX);
			aLon := SetWGS84(AWkInfo.MAPY);
		end;

		if pos('.', AWkInfo.pMAPY) > 0 then
		begin
			sPLat := AWkInfo.pMAPX;
			sPLon := AWkInfo.pMAPY;
		end
		else
		begin
			sPLat := SetWGS84(AWkInfo.pMAPX);
			sPLon := SetWGS84(AWkInfo.pMAPY);
		end;

		if (AWkInfo.Con_State = '1') and (AWkInfo.BR_Type = '1') then
		begin
			aGubun := 's0001';
			statNM := '운행중-자사';
		end else
		if (AWkInfo.Con_State = '1') and (AWkInfo.BR_Type = '2') then
		begin
			aGubun := 's0002';
			statNM := '운행중-타사';
		end else
		if (AWkInfo.Con_State = '5') and (AWkInfo.BR_Type = '1') then
		begin
			aGubun := 's0101';
			statNM := '대기-자사';
		end else
		if (AWkInfo.Con_State = '5') and (AWkInfo.BR_Type = '2') then
		begin
			aGubun := 's0102';
			statNM := '대기-타사';
		end else
		if (AWkInfo.Con_State = '9') and (AWkInfo.BR_Type = '1') then
		begin
			aGubun := 's0201';
			statNM := '종료-자사';
		end else
		if (AWkInfo.Con_State = '9') and (AWkInfo.BR_Type = '2') then
		begin
			aGubun := 's0202';
			statNM := '종료-타사';
		end;


		Title := Format('%s(%s)', [AWkInfo.BrName, AWkInfo.Name]);

		aWkName := Title;
		aWkSabun := AWkInfo.Sabun;

		if AWkInfo.BR_Type = '1' then
		begin
			//불필요한 정보 제외 20180320 KHS 신성현차장 요청
//			Desc := Format('[%s]'#13#10'%s(%s)'#13#10'%s'#13#10'%s(%s)',
//				[statNM, AWkInfo.Name, AWkInfo.Sabun, AWkInfo.HP, AWkInfo.BrName, AWkInfo.BrNo] );
			Desc := Format('%s', [StrToCall(AWkInfo.HP)] );
		end else
		if AWkInfo.BR_Type = '2' then
		begin
			if not GS_ADMINMAP_TAG_BRNAME then AWkInfo.BrName := '';
			if not GS_ADMINMAP_TAG_WKSABUN then AWkInfo.Sabun := '';
			if not GS_ADMINMAP_TAG_WKNAME then AWkInfo.Name := '';
			if (AWkInfo.BrName = '') and (AWkInfo.Sabun = '') and (AWkInfo.Name = '') then
			else
			begin
			//불필요한 정보 제외 20180320 KHS 신성현차장 요청
//        Desc := Format('[%s]%s%s(%s)', [statNM, AWkInfo.BrName, AWkInfo.Name, AWkInfo.Sabun] );
//        mItem.SetContents(Desc);
			end;
		end;
		aContents := Desc;

		Try
			ExecuteJavaScript(webNaverMap,'setShuttleMK('+ InttoStr(3) +','+ sPLat +','+ sPLon +','+ aLat +','+ aLon +','''+ aWkName +''','''+ aWkSabun +''','''+ aContents +''','''+ aGubun +''');');
		except
	  	btnShSch.Enabled := True;
			rbo_UseNaverMap.Enabled := True;
		End;

	except
		btnShSch.Enabled := True;
		rbo_UseNaverMap.Enabled := True;
	end;  
end;

procedure TFrm_AdminMap02.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_AdminMap02.FormDestroy(Sender: TObject);
begin
	if Assigned(sl_STInfo) then FreeAndNil(sl_STInfo);
	if Assigned(sl_STInfo_Status) then FreeAndNil(sl_STInfo_Status);

	if Assigned(mMap) then FreeAndNil(mMap);
  Frm_AdminMap02 := Nil;
end;

procedure TFrm_AdminMap02.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Home then 	
		SendMessage(self.Handle, WM_SYSCOMMAND, SC_MINIMIZE, 0 );
end;

procedure TFrm_AdminMap02.cb_SUpDateClick(Sender: TObject);
var
  iCnt: integer;
begin
	try
    case cb_SUpDate.ItemIndex of
			0:
        begin
					cxCESdt.Value := 0;
					cxCESdt.Visible := False;
					btnShSch.Enabled := True;
					AutoFlag := True;

					tmr_Sdis.Enabled := (cb_SUpDate.ItemIndex > 0);
				end;
		else
      begin
				iCnt := StrToIntDef(Trim(Copy(cb_SUpDate.Text, 1, 3)), 0);
				if iCnt > 0 then
				begin
					cxCESdt.Value := iCnt; // 갱신시간 카운트.
					cxCESdt.Visible := True;

					tmr_Sdis.Enabled := (cb_SUpDate.ItemIndex > 0);
        end else
				begin
					if cb_SUpDate.ItemIndex <> 0 then
						cb_SUpDate.ItemIndex := 0;
        end;

        case cb_SUpDate.ItemIndex of
					1: tmr_Sdis.Interval := 1000;//1800;
					2: tmr_Sdis.Interval := 1000;//1500;
        else
					tmr_Sdis.Interval := 1000;//1300;
        end;
      end;
    end;
    if cxCESdt.Visible = True then
    begin
      cxCESdt.SetFocus;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_AdminMap02.tmrDongPolygonTimer(Sender: TObject);
begin
  tmrDongPolygon.Enabled := False;
  pMapDongPolygon(gMapX, gMapY);
end;

procedure TFrm_AdminMap02.pMapDongPolygon( X, Y : Integer );
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

procedure TFrm_AdminMap02.tmr_SdisTimer(Sender: TObject);
begin
	try
    if (cb_SUpDate.ItemIndex = 0) then
		begin
			tmr_Sdis.Enabled := False;
			cxCESdt.Value := 0; // 갱신시간 카운트.
      Exit;
		end;

		cxCESdt.Value := cxCESdt.Value - 1; // 갱신시간 카운트.
		if cxCESdt.Value < 0 then
			cxCESdt.Value := StrToIntDef(Trim(Copy(cb_SUpDate.Text, 1, 3)), 30);

		if cxCESdt.Value = 0 then
		begin
			proc_Shuttle_Search;
			tmr_Sdis.Enabled := True;
			cxCESdt.Value := 0;
    end;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_AdminMap02.Angle(Pt1, Pt2: TTmappos): Double;
var ang : Double;
 p1, p2 : TPoint;
begin
	p1.x := pt1.lon;		p1.y := pt1.lat;
	p2.x := pt2.lon;		p2.y := pt2.lat;
	ang := SK_GetAngleFromLine(p1, p2);

	if (ang < 0) then
  begin
		ang := ang + 360.;
	end;
	ang := 360. - ang;
	Result := ang;
end;

function TFrm_AdminMap02.SK_GetAngleFromLine(pt1, pt2: TPoint): Double;
var ang, theta : Double;
  a, b : Double;
begin
	a := pt2.x - pt1.x;
	b := pt2.y - pt1.y;
	ang := 0;

	if (a = 0) and (b = 0) then
	begin
		Result := 0.0;
	end;

	theta := arctan2(b, a) * 180 /K_PI;
  Result := theta;
end;

end.

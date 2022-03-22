unit xe_SET03;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL,
  MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
	cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxStyles, cxCustomData, FastStringFuncs,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, TalMapXLib_TLB,
	Vcl.OleCtrls, Vcl.Dialogs, cxGroupBox, Math, DateUtils,
	cxCheckBox, cxSplitter, cxSpinEdit, cxTimeEdit, dxSkinsCore, dxSkinscxPCPainter,
  Vcl.Mask, AdvDropDown, AdvTimePickerDropDown,
  System.ImageList, Vcl.ImgList, cxImageList, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver, cxMemo,
  cxCurrencyEdit, cxRadioGroup, dxScrollbarAnnotations;

type
  pKSPoint = ^TKSPoint;
  TKSPoint = record
    _x: integer;
    _y: integer;
	end;
type
  TTmappos = record
    lon: LONG;
    lat: LONG;
  end;
type
  TRoutePoint = record
    lon: TStringList;
    lat: TStringList;
    Idx: TStringList;
  end;
type
  TAreaSlot = class(TObject)
  private
    FPosX: string;
    FPosY: string;
  public
    constructor Create(const PosX, PosY: string);

    property PosX: string read FPosX write FPosX;
    property PoxY: string read FPosY write FPosY;
  end;
type
  TFrm_SET03 = class(TForm)
    PnlBtm: TPanel;
    mMap: TTalMapXCtrl;
    pnlTitle: TPanel;
    cxGrdMV: TcxGrid;
    grdPoly: TcxGridDBTableView;
    grdPolyColumn1: TcxGridDBColumn;
    grdPolyColumn2: TcxGridDBColumn;
    grdPolyColumn3: TcxGridDBColumn;
    grdPolyColumn4: TcxGridDBColumn;
    grdPolyColumn5: TcxGridDBColumn;
    grdPolyColumn6: TcxGridDBColumn;
    grdPolyColumn7: TcxGridDBColumn;
    grdPolyColumn8: TcxGridDBColumn;
    cxGrdMV_Level: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    PnlMain: TPanel;
    PnlTop: TPanel;
    cxLblActive: TLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cbbSido: TcxComboBox;
    cbbGugun: TcxComboBox;
    cbbDong: TcxComboBox;
    tmrDongPolygon: TTimer;
    btnSave: TcxButton;
    btnDelete: TcxButton;
    btnModify: TcxButton;
    btnInsert: TcxButton;
    grpModify: TcxGroupBox;
    btnCancel: TcxButton;
    btnSave1: TcxButton;
    cxLabel218: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    edtPolygonNm: TcxTextEdit;
    curStrAmt: TcxCurrencyEdit;
    curEndAmt: TcxCurrencyEdit;
    mBigo: TcxMemo;
    rbSameN: TcxRadioButton;
    rbSameY: TcxRadioButton;
    Shape45: TShape;
    cxLabel13: TcxLabel;
    lblSosokName: TcxLabel;
    cxLabel5: TcxLabel;
    lblArea: TcxLabel;
    txtPolygon: TcxTextEdit;
    btnSearch: TcxButton;
    grdPolyColumn9: TcxGridDBColumn;
    cxStyleSelect: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure mMapCreate(ASender: TObject; Value: Integer);
    procedure mMapStateChange(ASender: TObject; Code, Value1,
      Value2: Integer);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure mMapUI_MouseHover(ASender: TObject; const Obj: IXUIObj);
    procedure mMapUI_MouseLeave(ASender: TObject; const Obj: IXUIObj);
    procedure mMapUI_MouseUp(ASender: TObject; const Obj: IXUIObj;
      Flag, X, Y: Integer);
    procedure mMapUI_MouseMove(ASender: TObject; const Obj: IXUIObj;
      Flag, X, Y: Integer);
    procedure btnMapPosClick(Sender: TObject);
    procedure PnlBtmResize(Sender: TObject);
    procedure btnMapFPlayClick(Sender: TObject);
    procedure cbbSidoClick(Sender: TObject);
    procedure cbbGugunPropertiesChange(Sender: TObject);
    procedure cbbDongPropertiesChange(Sender: TObject);
    procedure mMapMouseMove(ASender: TObject; Flag, X, Y: Integer);
    procedure tmrDongPolygonTimer(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure grpModifyMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnCancelClick(Sender: TObject);
    procedure edtPolygonNmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure curStrAmtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure curEndAmtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rbSameYKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rbSameNKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mBigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSave1Click(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure grdPolyCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grdPolyStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mMapKeyDown(ASender: TObject; Code, RepCnt, Flag: Cardinal);
    procedure mMapLayerObject_Click(ASender: TObject; const LayerObject: IXLayerObject; nFlag, X, Y: Integer);
    procedure mMapUI_MouseDown(ASender: TObject; const Obj: IXUIObj; Flag, X, Y: Integer);
    procedure mMapUI_Click(ASender: TObject; const Obj: IXUIObj; Flag, X, Y: Integer);

  private
    { Private declarations }
    mCtrlState : IXMasterControlState;
    mCtrlMan : IXCtrlMan;
    mUiman : IXUIMan;
    mDpsize : IXSize;
    mUtil : IXUtility;
    mPoiman : TalMapXLib_TLB.IXPOIMan;
		FLon, SLon, ELon, FLat, SLat, ELat  : Integer;

    maxLogicalLevel : Integer;
    minLogicalLevel : Integer;
    ws_Lon, ws_Lat : integer;
    sw_Lon, sw_Lat : Double;
    m_Lon, m_Lat : Integer;   //mousemove 값
    mBtnLevle : array [0..12] of IXUIButton;
    MyToolBar1 : array[0..20] of IXUIButton;
    btnImg : IXUIImage;
    stcMsgArea: IXUIStaticText;
    layerMan : IXLayerMan;

    gMapX, gMapY : Integer;

		sts_Chk : Boolean;
    giPreId, giStrId, giEndId, giModifyId, gstrAmt, gendAmt, giPgNo : Integer;
    sArea, sPolygonNm, sBigo : String;
    gbSame, gbFirst : Boolean;
    gPolyColor : array [1..100] of TColor;

    slLonList, slLatList : TStringList;
    function SetCtrlState(setType : Integer):Integer;
    function WGS84ToBessel(Y_1, x_1 : string) : integer;
    function BesselToWGS84(Y_1, x_1 : double) : integer;
    procedure OnMoveMap(lon, lat : INTEGER);
    procedure GeneralInit;
    procedure CreateToolBarUI;
    procedure CreateLevelBar;                                          //레벨생성
    procedure DestroyUI;
    procedure MapLevel_Master(level : INTEGER);
    procedure MakeStatusbar;
    function GetAdminCodeF(GLon, GLot : Integer) : string;
    procedure SetMapRectLevel(LLon, LLat, RLon, RLat : Integer);
    procedure Clear_WKPOI;
    Function SK_GetAngleFromLine(pt1, pt2 : TPoint) : Double;
    function Angle(Pt1, Pt2: TTmappos): Double;
    function fmod(const A,B:Extended): Extended;
    procedure Map_ZoomIn;
    procedure Map_ZoomOut;
    function Map_SetLevel(level: Integer): Integer;
    procedure BirdView;
    procedure CopyToClipboard;
    procedure DrawPolygon;
    procedure DrawPolyline;
    procedure Map_Rotate;
    procedure View3D;
    procedure ViewText;
    procedure HistoryNext;
    procedure HistoryPrev;
    procedure CheckArea;
    procedure CheckDistance;
    procedure DelDistance;
    procedure SaveImage;
    procedure RemovePolygon;
    procedure ObjectModify;
    procedure ShowThemeForm;
    procedure pSetMapMove(LLon, LLat, RLon, RLat: Integer);
    procedure pSetLineAdd( ALon, ALat : String );
    procedure RequestDataArea(AcxComboGugun, AcxComboDong: TcxComboBox; const ASido: string; AGugun: string; AUseAll: Boolean);
    function RequestDataBase(ATxData: string; var ARxDataDom: msDomDocument): Boolean;
    procedure ClearDongList(AcxCombo: TcxComboBox);
    procedure pMapDongPolygon(X, Y: Integer);
    function GetMapAddr(GLon, GLot: Integer): string;
    procedure pSearchList;
    procedure AddPolygon(iTag : Integer; sList, sName : String; bModify : Boolean );
    procedure RemoveListPolygon( objectID : Integer = 0 );
    procedure Mark_Symbol(bImage : Boolean; Lon, Lat, index : Integer; AId, AName: string);
    procedure pFocusPolygon(ARow: Integer);
  public
    FHdNo : String;
    FBrNo : String;
    { Public declarations }
    procedure proc_init;
  end;

var
  Frm_SET03: TFrm_SET03;

implementation

{$R *.dfm}

uses xe_Func, xe_packet, xe_Msg, xe_GNL2, xe_XML, xe_Dm, Main, xe_gnl3, xe_Flash, xe_charge;

{ TAreaSlot }

constructor TAreaSlot.Create(const PosX, PosY: string);
begin
  FPosX := PosX;
  FPosY := PosY;
end;

procedure TFrm_SET03.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_SET03.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  sts_Chk := False;
  Action := caFree;
end;

procedure TFrm_SET03.FormCreate(Sender: TObject);
begin
	sts_Chk := False;
  giPreId := -1;
  giStrId := -1;
  giEndId := -1;

  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  slLonList := TStringList.Create;
  slLatList := TStringList.Create;

  cbbSido.Clear;
  cbbSido.Properties.BeginUpdate;
  try
    cbbSido.Properties.Items.CommaText := '서울,경기,인천,대전,충남,충북,강원,대구,경북,부산,울산,경남,전북,광주,전남,제주';
    cbbSido.ItemIndex := -1;
  finally
    cbbSido.Properties.EndUpdate;
  end;

  proc_init;
end;

procedure TFrm_SET03.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_SET03.FormDestroy(Sender: TObject);
begin
  Frm_SET03 := Nil;
  if Assigned(mMap) then FreeAndNil(mMap);

  FreeAndNil(slLonList);
  FreeAndNil(slLatList);
end;

procedure TFrm_SET03.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
//  if Key = VK_RIGHT then ShowMessage('1');
end;

procedure TFrm_SET03.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_SET03, GS_FONTNAME);
  for i := 0 to pred(cxStyleRepository1.Count) do
  begin
    TcxStyle(cxStyleRepository1.Items[i]).Font.Name := GS_FONTNAME;
  end;
end;

procedure TFrm_SET03.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SET03.proc_init;
var
  I : Integer;
begin
  for i := 0 to grdPoly.ColumnCount - 1 do
  begin
    case i of
      0, 3, 4 : grdPoly.Columns[i].DataBinding.ValueType := 'Integer';
      else grdPoly.Columns[i].DataBinding.ValueType := 'String';
    end;
  end;

  btnSave.Enabled := False;
end;

function TFrm_SET03.SetCtrlState(setType: Integer): Integer;
begin
  mCtrlState := mCtrlman.GetControlState();

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

procedure TFrm_SET03.SetMapRectLevel(LLon, LLat, RLon, RLat: Integer);
Var
  mCenterLL : TalMapXLib_TLB.IXPoint;
  mMapRect  : IXMapRect;
begin
	mCtrlState := mCtrlMan.GetControlState();
	mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

	mMapRect := mUtil.GetMapRect();

	mMapRect.SetLLat(LLat);
	mMapRect.SetLLong(LLon);
	mMapRect.SetRLong(RLon);
	mMapRect.SetULat(RLat);

  mCtrlState.SetMapRectLevel(mMapRect, 0);
end;

function TFrm_SET03.SK_GetAngleFromLine(pt1, pt2: TPoint): Double;
var theta : Double;
  a, b : Double;
begin
	a := pt2.x - pt1.x;
  b := pt2.y - pt1.y;

	if (a = 0) and (b = 0) then
	begin
		Result := 0.0;
	end;

	theta := arctan2(b, a) * 180 /K_PI;
  Result := theta;
end;

procedure TFrm_SET03.tmrDongPolygonTimer(Sender: TObject);
begin
  tmrDongPolygon.Enabled := False;
  pMapDongPolygon(gMapX, gMapY);
end;

procedure TFrm_SET03.pMapDongPolygon( X, Y : Integer );
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

    //////////////팝업포인트//////////////////
    FLon := pos.GetLon;
    FLat := pos.GetLat;
    //////////////팝업포인트//////////////////

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

function TFrm_SET03.WGS84ToBessel(Y_1, x_1: string): integer;
var r_y, r_X : Integer;
  coord : TalMapXLib_TLB.IXCoordSys;
  pos : IXMapPos;
  int_string1, int_string2 : string;
begin
	ws_Lon := 0;
	ws_Lat := 0;
	if ( Copy(x_1, 1, 1) <> '0' ) Or ( Copy(Y_1, 1, 1) <> '1' ) then Exit;

 	if (Y_1 ='') or (x_1 = '') then Exit;

  int_string1 := Y_1;
  r_y := ((StrToInt64(Copy(int_string1,1,3)) * 360000) + (StrToInt64(Copy(int_string1,4,2)) * 6000) + (StrToInt64(Copy(int_string1,6,2)) * 100) + StrToInt64(Copy(int_string1,8,2)));

  int_string2 := x_1;
  r_X := ((StrToInt64(Copy(int_string2,1,3)) * 360000) + (StrToInt64(Copy(int_string2,4,2)) * 6000) + (StrToInt64(Copy(int_string2,6,2)) * 100) + StrToInt64(Copy(int_string2,8,2)));

  coord := mMap.GetCoordSys();
  pos := coord.WGS84ToBessel(r_y, r_X);
  ws_Lon := pos._Lon;
  ws_Lat := pos._Lat;
end;

//function TFrm_WOR17.Angle(Pt1, Pt2: TPoint): Double;
function TFrm_SET03.Angle(Pt1, Pt2: TTmappos): Double;
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

function TFrm_SET03.BesselToWGS84(Y_1, x_1: double): integer;
var degree_y, degree_x, min_x, min_y, s_y, s_x, ss_y, ss_x : Double;
  r_x, r_y : integer;
  coord : TalMapXLib_TLB.IXCoordSys;
  pos : IXMapPos;
  d_s, m_s, s_s, ss_s : string;
begin

	sw_Lon := 0;
	sw_Lat := 0;
	
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
  sw_Lon := StrToFloatDef(d_s + m_s + s_s + ss_s, 0);

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
  sw_Lat := StrToFloatDef(d_s + m_s + s_s + ss_s, 0);
end;

procedure TFrm_SET03.btnMapPosClick(Sender: TObject);
begin
  // 위치 조정
  DestroyUI;
  CreateLevelBar;
  CreateToolBarUI;
end;

procedure TFrm_SET03.btnModifyClick(Sender: TObject);
Var iRow : Integer;
begin
  iRow := grdPoly.DataController.FocusedRecordIndex;
  if iRow < 0 then
  begin
    GMessagebox('수정할 경계요금제를 선택하세요.', CDMSI);
    Exit;
  end;

  if btnModify.Tag = 0 then
  begin
    btnModify.Tag := 1;
    btnModify.Caption := '취소';

    btnInsert.Enabled := False;
    btnDelete.Enabled := False;
    btnSave.Enabled := True;

    giModifyId := iRow+1;
    pFocusPolygon(iRow);

    sArea := grdPoly.DataController.Values[iRow, 2];
    sPolygonNm := grdPoly.DataController.Values[iRow, 1];
    gstrAmt := StrToIntDef(StringReplace(grdPoly.DataController.Values[iRow, 3], ',', '', [rfReplaceAll]), 0);
    gendAmt := StrToIntDef(StringReplace(grdPoly.DataController.Values[iRow, 4], ',', '', [rfReplaceAll]), 0);
    if grdPoly.DataController.Values[iRow, 5] = '적용' then gbSame := True
                                                       else gbSame := False;
    sBigo := grdPoly.DataController.Values[iRow, 6];
    giPgNo := StrToIntDef(grdPoly.DataController.Values[iRow, 8], 0);

    GMessagebox(Format('%s 경계를 수정합니다.', [sPolygonNm]), CDMSI);

    RemoveListPolygon(giModifyId);
    AddPolygon(giModifyId, grdPoly.DataController.Values[iRow, 7], sPolygonNm, True);
  end else
  begin
    btnModify.Tag := 0;
    btnModify.Caption := '수정';

    btnInsert.Enabled := True;
    btnDelete.Enabled := True;
    btnSave.Enabled := False;

    RemoveListPolygon(giModifyId);
    AddPolygon(giModifyId, grdPoly.DataController.Values[iRow, 7], sPolygonNm, False);
  end;
end;

procedure TFrm_SET03.btnSave1Click(Sender: TObject);
Var sSameYn : String;
begin
  try
    if rbSameY.Checked then sSameYn := 'y' else
    if rbSameN.Checked then sSameYn := 'n';

    if grpModify.Tag = 1 then
    begin
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := Format('UPDATE CDMS_POLYGON SET PG_ADDR = ''%s'', PG_NAME = ''%s'', PG_STVALUE = %f, PG_EDVALUE = %f ' +
                                              ' , PG_SAMEAREA_YN = ''%s'', PG_BIGO = ''%s'', PG_POINT = ''%s'', UP_ID = ''%s'', UP_DATE = now() ' +
                                           ' WHERE HD_NO = ''%s'' AND BR_NO = ''%s'' AND PG_NO = ''%d'' ',
                                          [lblArea.Caption, edtPolygonNm.Text, curStrAmt.Value, curEndAmt.Value,
                                           sSameYn, mBigo.Text, txtPolygon.Text, GT_USERIF.ID, FHdNo, FBrNo, giPgNo]);
      dmCharge.FDQuery1.ExecSql;
    end else
    begin
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := Format('INSERT INTO CDMS_POLYGON(HD_NO, BR_NO, PG_ADDR, PG_NAME, PG_STVALUE, PG_EDVALUE ' +
                                                                  ' ,PG_SAMEAREA_YN, PG_BIGO, PG_POINT, PG_STAT, IN_ID, IN_DATE) ' +
                                          ' VALUES (''%s'', ''%s'', ''%s'', ''%s'', %f, %f, ''%s'', ''%s'', ''%s'', ''0'', ''%s'', now()) ',
                                   [FHdNo, FBrNo, lblArea.Caption, edtPolygonNm.Text, curStrAmt.Value, curEndAmt.Value,
                                    sSameYn, mBigo.Text, txtPolygon.Text, GT_USERIF.ID]);
      dmCharge.FDQuery1.ExecSql;
    end;
    grpModify.Visible := False;
    btnSearch.Click;
    GMessagebox('저장되었습니다.', CDMSI);
  except on E: Exception do
    GMessagebox(Format('데이터 저장 중 오류가 발생했습니다.'#13#10'%s', [E.Message]), CDMSE);
  end;
end;

procedure TFrm_SET03.btnSaveClick(Sender: TObject);
var
  layerMan : IXLayerMan;
  mLayer : IXLayer;
  mPolygon : IXLayerPolygon;
  mPoint : TalMapXLib_TLB.IXPoint;
  i : Integer;
  aa : String;
begin
  if ( btnInsert.Tag = 0 ) And ( btnModify.Tag = 0 ) then Exit;

  try
    lblArea.Caption := '';
    edtPolygonNm.Clear;
    curStrAmt.Value := 0;
    curEndAmt.Value := 0;
    rbSameN.Checked := True;
    mBigo.Clear;

    txtPolygon.Clear;

    mCtrlMan := mMap.GetCtrlMan();
    layerMan := mCtrlMan.GetLayerMan();

    if btnInsert.Tag = 1 then mLayer :=  layerMan.FindLayer(99) else
    if btnModify.Tag = 1 then mLayer :=  layerMan.FindLayer(98);
    if mLayer <> nil then
    begin
      if btnInsert.Tag = 1 then mPolygon := IXLayerPolygon(mLayer.FindObject(99)) else
      if btnModify.Tag = 1 then mPolygon := IXLayerPolygon(mLayer.FindObject(giModifyId));
      if mPolygon <> nil then
      begin
        for i:= 0 to mPolygon.GetPointCount - 1 do
        begin
          mPoint := mPolygon.GetPoint(i);
          m_Lon := mPoint.GetX;
          m_Lat := mPoint.GetY;
          if i = 0 then lblArea.Caption := GetMapAddr(m_Lon, m_lat);
          BesselToWGS84(m_Lon, m_Lat);
          if i = 0 then txtPolygon.Text := Format('%s,%s', ['0'+ FloatToStr(sw_Lat),FloatToStr(sw_Lon)])
                   else txtPolygon.Text := txtPolygon.Text + '│' + Format('%s,%s', ['0'+ FloatToStr(sw_Lat),FloatToStr(sw_Lon)]);
        end;
      end;
    end;

    grpModify.Left := (Self.Width - grpModify.Width) div 2;
    grpModify.top := (Self.Height - grpModify.Height) div 2;
    grpModify.BringToFront;

    if btnInsert.Tag = 1 then
    begin
      grpModify.Tag := 0;
      grpModify.Caption := '요금제 저장';
    end else
    if btnModify.Tag = 1 then
    begin
      grpModify.Tag := 1;
      grpModify.Caption := '요금제 수정';

      lblArea.Caption := sArea;
      edtPolygonNm.Text := sPolygonNm;
      curStrAmt.Value := gstrAmt;
      curEndAmt.Value := gendAmt;
      if gbSame then rbSameY.Checked := True
                else rbSameN.Checked := True;
      mBigo.Text := sBigo;
    end;

    grpModify.Visible := True;
  except
  end;
end;

procedure TFrm_SET03.btnSearchClick(Sender: TObject);
Var mGroup : IXPOIGroup;
begin
  if btnInsert.Tag = 1 then
  begin
    btnInsert.Tag := 0;
    btnInsert.Caption := '추가';
  end;
  if btnModify.Tag = 1 then
  begin
    btnModify.Tag := 0;
    btnModify.Caption := '수정';
  end;

  if mPoiman <> nil then
  begin
  	mGroup := mPoiman.FindGroup(99);
    if mGroup <> nil then mGroup.ClearItem;
  end;

  btnInsert.Enabled := True;
  btnModify.Enabled := True;
  btnSave.Enabled := False;

  giModifyId := 0;
  RemovePolygon;
  RemoveListPolygon;
  pSearchList;

  if Not gbFirst then
  begin
    mCtrlState.SetLevel(StrToInt(GS_ADMINMAP_LEVEL));
    gbFirst := True;
  end;
end;

procedure TFrm_SET03.cbbDongPropertiesChange(Sender: TObject);
var
  Info: TAreaSlot;
begin
  if cbbDong.ItemIndex = -1 then Exit;

  Info := TAreaSlot(cbbDong.Properties.Items.Objects[cbbDong.ItemIndex]);
  if Assigned(Info) then
  begin
    WGS84ToBessel(Info.PoxY, Info.PosX);
    OnMoveMap(ws_Lon, ws_Lat);
  end
  else
    GMessagebox('해당 동의 좌표정보를 찾을 수 없습니다.', CDMSE);
end;

procedure TFrm_SET03.cbbGugunPropertiesChange(Sender: TObject);
begin
  if cbbGugun.Text <> '' then
    RequestDataArea(cbbGugun, cbbDong, cbbSido.Text, cbbGugun.Text, False);
end;

procedure TFrm_SET03.cbbSidoClick(Sender: TObject);
begin
  if cbbGugun.Text = '' then
    RequestDataArea(cbbGugun, cbbDong, cbbSido.Text, '', False);
end;

procedure TFrm_SET03.Clear_WKPOI;
begin
  if Assigned(mPoiman) then
  begin
    mPoiman.DeleteGroup(0);
    layerMan := mCtrlMan.GetLayerMan();
    layerMan.ClearLayer;            //경로탐색 삭제
  end;
end;

procedure TFrm_SET03.CreateLevelBar;
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

procedure TFrm_SET03.DestroyUI;
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

procedure TFrm_SET03.btnMapFPlayClick(Sender: TObject);
begin
  slLonList.Clear;
  slLatList.Clear;
end;

function TFrm_SET03.fmod(const A, B: Extended): Extended;
begin
  Result := A - (B*Trunc(A / B));
end;

procedure TFrm_SET03.GeneralInit;
begin
	maxLogicalLevel := 13 -1;
  minLogicalLevel := 0;

  mCtrlMan := mMap.GetCtrlMan;
  CreateLevelBar;
  mCtrlState.SetLevel(3);
//  CreateToolBarUI;
  MakeStatusbar;
end;

procedure TFrm_SET03.CreateToolBarUI;
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

procedure TFrm_SET03.curEndAmtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then rbSameY.SetFocus;
end;

procedure TFrm_SET03.curStrAmtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then curEndAmt.SetFocus;
end;

procedure TFrm_SET03.btnCancelClick(Sender: TObject);
begin
  grpModify.Visible := False;
end;

procedure TFrm_SET03.btnDeleteClick(Sender: TObject);
Var iRow, iSeq : Integer;
    sName : String;
begin
  iRow := grdPoly.DataController.FocusedRecordIndex;
  if iRow < 0 then
  begin
    GMessagebox('삭제할 경계요금제를 선택하세요.', CDMSI);
    Exit;
  end;
  try
    sName := grdPoly.DataController.Values[iRow, 2];
    if Application.MessageBox(PChar(sName + ' 경계요금을 삭제하시겠습니까?'), PChar(GS_APPNAME), MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;

    iSeq := grdPoly.DataController.Values[iRow, 8];
    dmCharge.proc_mysql_init('update');
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := Format('UPDATE CDMS_POLYGON SET PG_STAT = ''4'', UP_ID = ''%s'', UP_DATE = now() ' +
                                         ' WHERE PG_NO = %d AND HD_NO = ''%s'' AND BR_NO = ''%s'' ',
                      [GT_USERIF.ID, iSeq, FHdNo, FBrNo]);
    dmCharge.FDQuery1.ExecSql;

    btnSearch.Click;
    GMessagebox('삭제 되었습니다.', CDMSI);
  except on E: Exception do
    GMessagebox(Format('데이터 저장 중 오류가 발생했습니다.'#13#10'%s', [E.Message]), CDMSE);
  end;
end;

procedure TFrm_SET03.btnInsertClick(Sender: TObject);
begin
  if btnInsert.Tag = 0 then
  begin
    GMessagebox('경계요금을 추가합니다.' + CRLF +
                '※주의:마우스 우클릭 사용금지' + CRLF +
                '        마우스 우클릭시 경계요금 설정이 종료됩니다.', CDMSI);

    DrawPolygon;
    btnInsert.Tag := 1;
    btnInsert.Caption := '취소';
    grpModify.Tag := 1;

    btnModify.Enabled := False;
    btnDelete.Enabled := False;
    btnSave.Enabled := True;
  end else
  begin
    RemovePolygon;
    btnInsert.Tag := 0;
    btnInsert.Caption := '추가';

    btnModify.Enabled := True;
    btnDelete.Enabled := True;
    btnSave.Enabled := False;
  end;
end;

function TFrm_SET03.GetAdminCodeF(GLon, GLot: Integer): string;
var
  mAdminman : IXAdminMan;
  mCenterLL : TalMapXLib_TLB.IXPoint;
  mAdmitem : IXAdminItem;
  admcode, admname : string;
  obj : IXUIObj;
begin
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

function TFrm_SET03.GetMapAddr(GLon, GLot: Integer): string;
var
  mAdminman : IXAdminMan;
  mCenterLL : TalMapXLib_TLB.IXPoint;
  mAdmitem : IXAdminItem;
  admname : string;
begin
	mAdminman := mCtrlMan.GetAdminMan();
	mCtrlState := mCtrlMan.GetControlState();
	mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표
	mAdmitem := mAdminman.GetAdminItem(GLon, GLot);
	if mAdmitem <> nil then
  begin
    admname := mAdmitem.GetAdminName(' ', 3);
    admname := Copy(admname, pos(' ', admname), length(admname)-(pos(' ', admname)-1));
    Result := admname;
		mAdmitem.Destroy();
	end;
end;

procedure TFrm_SET03.grdPolyCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var sTmp, sXp, sYp : string;
    iRow, iPos : integer;
begin
	iRow := grdPoly.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  pFocusPolygon(iRow);
end;

procedure TFrm_SET03.pFocusPolygon( ARow : Integer);
var sTmp, sXp, sYp : string;
    iRow, iPos : integer;
begin
  // 첫번째 좌표만 가져와서 위치 표시
  try
    iPos := Pos('│', grdPoly.DataController.Values[ARow, 7]);
    sTmp := Copy(grdPoly.DataController.Values[ARow, 7], 1, iPos-1);

    iPos := Pos(',', sTmp);

    sXp := Copy(sTmp, 1, iPos-1);
    sYp := Copy(sTmp, iPos+1, length(sTmp)-(iPos));

    WGS84ToBessel(sYp, sXp);
    OnMoveMap(ws_Lon, ws_Lat);
//    Map_SetLevel(StrToInt(GS_ADMINMAP_LEVEL));
  except
  end;
end;

procedure TFrm_SET03.grdPolyStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
Var iRow : Integer;
begin
  try
		if (AItem.Index = 0) then
		begin
      iRow := grdPoly.DataController.GetRowInfo(ARecord.Index).RecordIndex;
			AStyle  := cxStyle1;
			AStyle.Color := gPolyColor[iRow+1];
		end;
  except
  end;
end;

procedure TFrm_SET03.grpModifyMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(grpModify.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_SET03.MakeStatusbar;
var
  mDpsize : IXSize;
  mImageman : IXImageMan;
  mRootPath : string;
begin
	mUiman := mCtrlMan.GetUIMan();
	mCtrlState := mCtrlMan.GetControlState();
	mDpsize := mCtrlState.GetSizeDP();

	mImageman := mCtrlMan.GetImageMan();
  mRootPath := ExtractFilePath(Application.ExeName);
  mImageman.SetDefaultPath(mRootPath + '\Image\');

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

procedure TFrm_SET03.MapLevel_Master(level: INTEGER);
var i, SetEnabled, SetDisable : Integer;
  mLevelBarBg : IXUIButton;
begin
	mUiman := mCtrlman.GetUIMan();
  mLevelBarBg := mUiman.CreateUI_Button(mUiman);
	if mLevelBarBg = nil then Exit;

	// Image Index 설정 0~3
	SetEnabled := 0;
	SetDisable := 1;
	for i := 0 to 12  do
  begin
    if not Assigned(mBtnLevle[i]) then break;
    
		if level = i then
      mBtnLevle[i].SetItemIndex(SetEnabled)
		else mBtnLevle[i].SetItemIndex(SetDisable);
	end;
end;

procedure TFrm_SET03.mBigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then btnSave1.SetFocus;
end;

procedure TFrm_SET03.mMapCreate(ASender: TObject; Value: Integer);
var
  mMapMan : IXMapMan;
  mThemeMan : IXThemeMan;
  mAdminMan : IXAdminMan;
  mRootPath, XPos, YPos : String;
  sTemp : string;
begin
  try
    mRootPath := ExtractFilePath(Application.ExeName);

    mCtrlMan := mMap.GetCtrlMan();
    mThemeMan := mCtrlMan.GetThemeMan();
    mMapMan := mCtrlMan.GetMapMan();
    mAdminMan := mCtrlMan.GetAdminMan();

    mPoiman := mCtrlMan.GetPOIMan();

    // CtrlMan의 Default Path를 프로그램 실행 디렉토리로 설정
    // mCtrlMan.SetDefaultPath(WideString(mRootPath));
    mCtrlMan.SetDefaultPath(MAP_URL);

    // 라이센스 파일을 Load한다 정상적으로 Load가 안되면 에러메세지지가 출력.
    // if mCtrlMan.LoadLicense(WideString(mRootPath + 'eksys\license\jway_sn.TML')) <> true then
    if mCtrlMan.LoadLicense(MAP_URL + 'license\CMNAGTXE.tml') <> true then
    begin
      Assert(False, 'TalMap License Error :' + MAP_URL + 'license\CMNAGTXE.tml');
      ShowMessage('라이센스 설정에 실패했습니다.');
      Exit
    end;

    // Map 데이터를 설정 TM1폴더의 상위 폴더를 지정.
    // Web Server에 올리실 경우는 아래와 같이 동일하게 TM1폴더의 상위 폴더까지만 지정하면 됩니다.
    // 예: 'http://user-site.co.kr/Map/MapData' --> MapData 밑에는 TM1폴더가 위치하게 하면 됩니다.
    //  if mMapMan.SetDefaultPath(WideString(mRootPath + 'eksys\MapData')) <> true then
    if mMapMan.SetDefaultPath(MAP_URL + 'MapData') <> true then
    begin
      ShowMessage('Map 데이터 설정에 실패했습니다.');
      Exit
    end;

    // Theme 파일을 설정.
    // mThemeMan.SetDefaultPath(mRootPath + 'eksys\Theme');
    mThemeMan.SetDefaultPath(MAP_URL + 'Theme');
    if mThemeMan.LoadTheme('MNS.TMT') <> 1 then
    begin
      ShowMessage('테마파일 설정에 실패했습니다.');
      Exit
    end;

    // Admin 파일을 설정.
    // mAdminMan.SetDefaultPath(mRootPath + 'eksys\Theme');
    mAdminMan.SetDefaultPath(MAP_URL + 'Theme');

    if mAdminMan.LoadAdmin('TalMap_M.TMA') <> true then
    begin
      ShowMessage('행정도파일 설정에 실패했습니다.');
      Exit
    end;
    mUiman := mCtrlman.GetUIMan();
    mUiman.SetShowCenterLine(2);       //센터 열십자.

    SetCtrlState(32);//마우스 클릭이동 해제

    mCtrlMan.SetDefaultEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEMOVE') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEDOWN') or
                                 mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP')   or mUtil.GetConstToValue('TMEVENTTYPE_POI_MOUSEDOWN'));

    XPos := Area_CenterLat;//'037335565';
    YPos := Area_CenterLon;//'126583729';
    WGS84ToBessel(YPos, XPos);
    OnMoveMap(ws_Lon, ws_Lat);

    sts_Chk := True;
		GeneralInit;

    btnSearch.Click;
	except
    on E: exception do
    begin
      sTemp := 'Map 예외처리 발생:' + e.Message;
      Assert(False, E.Message);
      ShowMessage(sTemp);
    end;
  end;
end;

procedure TFrm_SET03.mMapKeyDown(ASender: TObject; Code, RepCnt, Flag: Cardinal);
begin
//  if Flag = 0 then ShowMessage('2')
//              else ShowMessage('3');
end;

procedure TFrm_SET03.mMapLayerObject_Click(ASender: TObject; const LayerObject: IXLayerObject; nFlag, X, Y: Integer);
begin
//  if nFlag = 0 then ShowMessage('4')
//               else ShowMessage('5');
end;

procedure TFrm_SET03.mMapMouseMove(ASender: TObject; Flag, X, Y: Integer);
begin
  gMapX := X;
  gMapY := Y;
  tmrDongPolygon.Enabled := True;
end;

procedure TFrm_SET03.mMapStateChange(ASender: TObject; Code, Value1,
  Value2: Integer);
var
  mGroup : IXPOIGroup;
  mGstyle : IXPOIStyle;
begin
  Try
    mUtil := mMap.GetUtility;
    mCtrlMan := mMap.GetCtrlMan;
    mPoiman := mCtrlMan.GetPOIMan();

    mCtrlState := mCtrlman.GetControlState();
    if Code = mUtil.GetConstToValue('TMCHECKCONFIG_LEVEL') then
    begin
      MapLevel_Master(mCtrlState.GetLevel());

      mGroup := mPoiman.FindGroup(0);
      if mGroup = nil then mGroup := mPoiman.NewGroup(0);

      mGstyle := mPoiman.FindStyle(1);
      if (mGstyle <> nil) then
      begin
        if mCtrlState.GetLevel() < 6 then
        begin
          mGstyle.SetGDIFont(GS_FONTNAME, 0, 9);                           // 레벨별 기사 상태 캡션표기
          mGstyle.SetFontColor(mUtil.RGBColor(0, 0, 0));              // 캡션글자
          mGstyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));     // 캡션 글자테두리
          mGstyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);         // 캡션배경
          mGstyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
          mGroup.SetStyle(mGstyle);
        end else
        begin
          mGroup.ClearStyle;
        end;
      end;
    end;
  except
  end;
end;

procedure TFrm_SET03.mMapUI_Click(ASender: TObject; const Obj: IXUIObj; Flag, X, Y: Integer);
begin
//  if Flag = 0 then ShowMessage('8')
//              else ShowMessage('9');
end;

procedure TFrm_SET03.mMapUI_MouseDown(ASender: TObject; const Obj: IXUIObj; Flag, X, Y: Integer);
begin
//  if Flag = 0 then ShowMessage('6')
//              else ShowMessage('7');
end;

procedure TFrm_SET03.mMapUI_MouseHover(ASender: TObject;
  const Obj: IXUIObj);
begin
  if Obj.GetUIID = 11 then // Level Bar BG
     Obj.SetAlpha(0)
  else
  if ( ( Obj.GetUIID > 11 ) And ( Obj.GetUIID < 27 ) ) then
     Obj.GetParent().SetAlpha(0);
end;

procedure TFrm_SET03.mMapUI_MouseLeave(ASender: TObject;
  const Obj: IXUIObj);
begin
  if Obj.GetUIID = 11 then // Level Bar BG
     Obj.SetAlpha(70)
  else
  if ( ( Obj.GetUIID > 11 ) And ( Obj.GetUIID < 27 ) ) then
     Obj.GetParent().SetAlpha(70);
end;

procedure TFrm_SET03.mMapUI_MouseMove(ASender: TObject;
  const Obj: IXUIObj; Flag, X, Y: Integer);
begin
  if Obj.GetUIID > 200 then
  begin
    MyToolBar1[Obj.GetUIID - 200].SetItemIndex(3);
    Obj.SetAlpha(0);
  end;
end;

procedure TFrm_SET03.Map_ZoomIn;
begin
  try
    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState;
  	if (mCtrlState.GetLevel() > minLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() -1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_SET03.Map_ZoomOut;
begin
  try
    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState;
  	if (mCtrlState.GetLevel() < maxLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() +1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_SET03.Map_SetLevel(level: Integer): Integer;
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

procedure TFrm_SET03.mMapUI_MouseUp(ASender: TObject;
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

procedure TFrm_SET03.pSetLineAdd( ALon, ALat : String );
Var
  style : IXLayerStyle;
  mPolygon : IXLayerPolygon;
  i : Integer;
begin
  try
    // Step 1. Make XLayer Style
    style := layerMan.FindStyle(500);
    if (style = Nil) then
    begin
      style := layerMan.NewStyle(500);
      style.SetPen(mUtil.RGBColor(13, 136, 230), 5, 0);//mUtilL.GetConstToValue('PS_SOLID'));
    end;

    slLonList.Add(ALon);
    slLatList.Add(ALat);

    // Step 2. Make XLayer PolyLine
    mPolygon := layerMan.NewPolygon(0, -1);

    mPolygon.BeginUpdate();
    try
      for i := 0 to slLonList.Count - 1 do
      begin
        WGS84ToBessel(getWGS84(slLonList.Strings[i]), '0'+ getWGS84(slLatList.Strings[i]));
        mPolygon.AddPoint(ws_Lon, ws_Lat);
      end;
      mPolygon.SetCanClick(1);
      mPolygon.SetCanFocus(1);
      mPolygon.SetClosed(0);   // 0: Line, 1: Polygon
      mPolygon.SetStyle(style);
    finally
      mPolygon.EndUpdate();
    end;
  Except
  end;
end;

procedure TFrm_SET03.OnMoveMap(lon, lat: INTEGER);
begin
  mCtrlState := mCtrlMan.GetControlState;
  mCtrlState.SetLLCenter(lon, lat);
end;

procedure TFrm_SET03.PnlBtmResize(Sender: TObject);
begin
  if sts_Chk then
  begin
		DestroyUI;
    CreateLevelBar;
    CreateToolBarUI;
	end;
end;

procedure TFrm_SET03.ObjectModify;
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

procedure TFrm_SET03.ShowThemeForm;
var
  thememan : IXThemeMan;
begin
  mCtrlMan := mMap.GetCtrlMan();
  thememan := mCtrlMan.GetThemeMan();
  thememan.ShowForm();
end;

procedure TFrm_SET03.RemovePolygon;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(99);
  if layer <> nil then
    layer.ClearObject()
end;

procedure TFrm_SET03.RemoveListPolygon( objectID : Integer );
var
  layerMan : IXLayerMan;
  mGroup : IXPOIGroup;
  layer : IXLayer;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(98);
  if layer <> nil then
  begin
    if objectID = 0 then layer.ClearObject()
                    else layer.DeleteObject(objectID);
  end;

  mGroup := mPoiman.FindGroup(99);
	if mGroup <> nil then mGroup.ClearItem;
  mGroup := mPoiman.FindGroup(98);
	if mGroup <> nil then mGroup.ClearItem;
end;

procedure TFrm_SET03.SaveImage;
var FileName : WideString;
begin
	mUtil := mMap.GetUtility();
	filename := mUtil.SaveImageDialog('C:\', 'MapImage.png');
	mMap.SaveImage(FileName);
end;

procedure TFrm_SET03.CheckArea;
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

procedure TFrm_SET03.CheckDistance;
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

procedure TFrm_SET03.DelDistance;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(2);
  if layer <> nil then layer.ClearObject();
end;

procedure TFrm_SET03.HistoryNext;
begin
  mCtrlman := mMap.GetCtrlMan();
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryNext();
end;

procedure TFrm_SET03.HistoryPrev;
begin
  mCtrlman := mMap.GetCtrlMan();
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryPrev();
end;

procedure TFrm_SET03.Map_Rotate;
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlMan.SetMapRotation(1);
end;

procedure TFrm_SET03.BirdView;
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

procedure TFrm_SET03.View3D;
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

procedure TFrm_SET03.ViewText;
var
  mMapMan : IXMapMan;
begin
  mMapMan := mMap.GetCtrlMan.GetMapMan();
  if mMapMan.GetVisible = 5 then mMapMan.SetVisible(7)
  else if mMapMan.GetVisible = 7 then mMapMan.SetVisible(5);
end;

procedure TFrm_SET03.CopyToClipboard;
begin
  mMap.CopyToClipboard();
end;

procedure TFrm_SET03.DrawPolygon;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
  cR, cG, cB : Integer;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  mUtil := mMap.GetUtility();

  cR := RandomRange(0,255);
  cG := RandomRange(0,255);
  cB := RandomRange(0,255);

  style := layerMan.NewStyle(-1);
  style.SetPen(mUtil.RGBColor(cR, cG, cB), 2, mUtil.GetConstToValue('PS_SOLID'));
  style.SetBrush(mUtil.RGBAColor(cR, cG, cB, 100), mUtil.GetConstToValue('BS_SOLID'));

  obj := layerMan.NewPolygon(99, 99);
  obj.SetStyle(style);
  obj.SetClosed(1);
  obj.SetCanClick(1);
  obj.SetCanFocus(1);

  obj.SetStateModeNew();
end;

procedure TFrm_SET03.AddPolygon(iTag : Integer; sList, sName : String; bModify : Boolean );
var
  layerMan : IXLayerMan;
  xStyle : IXLayerStyle;
  xPolygon : IXLayerPolygon;

  slTmp : TStringList;
  i : Integer;
  sX, sY : String;
  cR, cG, cB : Integer;
begin
  try
    mCtrlMan := mMap.GetCtrlMan();
    layerMan := mCtrlMan.GetLayerMan();
    mUtil := mMap.GetUtility();

    cR := RandomRange(0,255);
    cG := RandomRange(0,255);
    cB := RandomRange(0,255);

    xStyle := layerMan.FindStyle(iTag);
    if xStyle = nil then
    begin
      xStyle := layerMan.NewStyle(iTag);
      xStyle.SetPen(mUtil.RGBColor(cR, cG, cB), 2, mUtil.GetConstToValue('PS_SOLID'));
      xStyle.SetBrush(mUtil.RGBAColor(cR, cG, cB, 100), mUtil.GetConstToValue('BS_SOLID'));
      gPolyColor[iTag] := RGB(cR, cG, cB);
    end;

    slTmp := TStringList.Create;
    try
      xPolygon := layerMan.NewPolygon(98, iTag);
      xPolygon.BeginUpdate;

      slTmp.Delimiter := '│';
      slTmp.DelimitedText := sList;

      for i := 0 to slTmp.Count - 1 do
      begin
        sX := Copy(slTmp[i], 1, Pos(',', slTmp[i])-1);
        sY := Copy(slTmp[i], Pos(',', slTmp[i])+1, Length(slTmp[i])-(Pos(',', slTmp[i])));
        WGS84ToBessel(sY, sX);
        xPolygon.AddPoint(ws_Lon, ws_Lat);

        if i = 0 then Mark_Symbol(bModify, ws_Lon, ws_Lat, 1, IntToStr(iTag), sName)
        else
        begin
          if bModify then Mark_Symbol(bModify, ws_Lon, ws_Lat, 2, IntToStr(iTag), IntToStr(i+1));
        end;
      end;

      xPolygon.SetShowDistance(0);
//      xPolygon.SetShowArea(1);
      xPolygon.SetShowCaption(1);
      xPolygon.SetCanClick(1);
      xPolygon.SetCanFocus(1);
      xPolygon.SetClosed(1);
      xPolygon.SetStyle(xStyle);
      if bModify then xPolygon.SetStateModeNew();

      xPolygon.EndUpdate;
    finally
      FreeAndNil(slTmp);
    end;
  except;
  end;
end;

procedure TFrm_SET03.DrawPolyline;
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

procedure TFrm_SET03.edtPolygonNmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then curStrAmt.SetFocus;
end;

procedure TFrm_SET03.pSetMapMove(LLon, LLat, RLon, RLat: Integer);
Var
  mPoint, mCenterLL : TalMapXLib_TLB.IXPoint;
  mPos   : IXMapPos;
  iX, iY, CLon, CLat : Integer;
begin
  try
    mCtrlState := mCtrlMan.GetControlState();
    mPoint := mCtrlState.LLToDP(LLon, LLat, 0);

    iX := mPoint.GetX;
    iY := mPoint.GetY;

    if ( iX <= 100 ) Or ( iY <= 100 ) Or
       ( iX >= mMap.Width - 100 ) Or ( iY >= mMap.Height - 100 ) then
    begin
      cLon := 0;
      cLat := 0;
      mCenterLL := mCtrlState.GetLLCenter();

      if ( iX <= 100 ) And ( iY <= 100 ) then
      begin
        mPos := mCtrlState.DPToLL(100, 100);

        CLon := (LLon - mPos._Lon);
        CLat := (LLat - mPos._Lat);
      end else
      begin
        if ( iX <= 100 ) then
        begin
          mPos := mCtrlState.DPToLL(100, iY);

          CLon := (LLon - mPos._Lon);
        end else
        if ( iY <= 100 ) then
        begin
          mPos := mCtrlState.DPToLL(iX, 100);

          CLat := (LLat - mPos._Lat);
        end;
      end;

      if ( iX >= mMap.Width - 100 ) And ( iY >= mMap.Height - 100 ) then
      begin
        mPos := mCtrlState.DPToLL(mMap.Width - 100, mMap.Height - 100);
        CLon := (LLon - mPos._Lon);
        CLat := (LLat - mPos._Lat);
      end else
      begin
        if ( iX >= mMap.Width ) then
        begin
          mPos := mCtrlState.DPToLL(mMap.Width - 100, iY);
          CLon := (LLon - mPos._Lon);
        end else
        if ( iY >= mMap.Height ) then
        begin
          mPos := mCtrlState.DPToLL(iX, mMap.Height - 100);
          CLat := (LLat - mPos._Lat);
        end;
      end;
      mCtrlState.SetLLCenter(mCenterLL._X + CLon, mCenterLL._Y + CLat);
    end;
  except
  end;
end;

procedure TFrm_SET03.rbSameNKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then mBigo.SetFocus;
end;

procedure TFrm_SET03.rbSameYKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then rbSameN.SetFocus;
end;

procedure TFrm_SET03.RequestDataArea(AcxComboGugun, AcxComboDong: TcxComboBox; const ASido: string; AGugun: string; AUseAll: Boolean);
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

procedure TFrm_SET03.ClearDongList(AcxCombo: TcxComboBox);
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

function TFrm_SET03.RequestDataBase(ATxData: string; var ARxDataDom: msDomDocument): Boolean;
var
  StrList: TStringList;
  ErrCode: Integer;
  ErrorCode, RxData: string;
begin
  Result := False;
//  if FInit then Exit;

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

procedure TFrm_SET03.pSearchList;
var i, iRow : Integer;
begin
  grdPoly.DataController.SetRecordCount(0);
	try
    dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := Format('SELECT PG_ADDR, PG_NAME, PG_STVALUE, PG_EDVALUE, PG_SAMEAREA_YN, PG_BIGO, PG_POINT, PG_NO FROM CDMS_POLYGON WHERE PG_STAT = ''0'' AND HD_NO = ''%s'' AND BR_NO = ''%s'' ORDER BY PG_NAME ', [FHdNo, FBrNo]);
    dmCharge.FDQuery1.Open;
    if not dmCharge.FDQuery1.IsEmpty then
    begin
      grdPoly.BeginUpdate;
      try
        while not dmCharge.FDQuery1.Eof do
        begin
          iRow := grdPoly.DataController.AppendRecord;
          grdPoly.DataController.Values[iRow, 0] := iRow+1;
          grdPoly.DataController.Values[iRow, 1] := dmCharge.FDQuery1.Fields[1].AsString;
          grdPoly.DataController.Values[iRow, 2] := dmCharge.FDQuery1.Fields[0].AsString;
          grdPoly.DataController.Values[iRow, 3] := dmCharge.FDQuery1.Fields[2].AsInteger;
          grdPoly.DataController.Values[iRow, 4] := dmCharge.FDQuery1.Fields[3].AsInteger;
          if dmCharge.FDQuery1.Fields[4].AsString = 'y' then grdPoly.DataController.Values[iRow, 5] := '적용'
                                                        else grdPoly.DataController.Values[iRow, 5] := '미적용';
          grdPoly.DataController.Values[iRow, 6] := dmCharge.FDQuery1.Fields[5].AsString;
          grdPoly.DataController.Values[iRow, 7] := dmCharge.FDQuery1.Fields[6].AsString;
          grdPoly.DataController.Values[iRow, 8] := dmCharge.FDQuery1.Fields[7].AsString;
          AddPolygon(iRow+1, dmCharge.FDQuery1.Fields[6].AsString, dmCharge.FDQuery1.Fields[1].AsString, False);
          dmCharge.FDQuery1.Next;
        end;
      finally
        grdPoly.EndUpdate;
      end;
    end;
  except on E: Exception do
    GMessagebox(Format('데이터 조회 중 오류가 발생했습니다.'#13#10'%s', [E.Message]), CDMSE);
  end;
end;

procedure TFrm_SET03.Mark_Symbol(bImage : Boolean; Lon, Lat, index : Integer; AId, AName : string);
var
  mAngle : integer;
  mGroup : IXPOIGroup;
  mGstyle, mStyle : IXPOIStyle;
  mImageman : IXImageMan;
  mItem : IXPOIItem;
  mImage : IXMagicImage;
  mRootPath : String;
begin
	try
    mCtrlState := mCtrlMan.GetControlState();

    // Step 3. Make POI Items
    mImageman := mCtrlMan.GetImageMan();
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath + '\Image\');
		mPoiman := mCtrlMan.GetPOIMan();

    if index = 1 then
    begin
			mImage := mImageman.LoadImageList('PT','bPoint.png', 7, 7);
      mGroup := mPoiman.FindGroup(99); //99.이동 방향
      if mGroup = nil then mGroup := mPoiman.NewGroup(99);

      mGstyle := mPoiman.FindStyle(1);
      if (mGstyle = nil) then
      begin
        mGstyle := mPoiman.NewStyle(1); // -1: 아이디 자동 생성
        mGroup.SetStyle(mGstyle);
      end;

      if Not mImage.IsValid then ShowMessage('Image 이상');

      mItem := mGroup.NewItem(StrToInt(Aid)) ;
      if bImage then mItem.SetCaption('1')
                else mItem.SetCaption('[' + AName + ']');
      mItem.SetLonLat(Lon, Lat);
      if bImage then
      begin
        mItem.SetImage(mImage);
        mItem.SetShowImage(1);
		  	mItem.SetImageIndex(0);
        mItem.SetImageOffset(4);
      end;
      mItem.SetTextStyle(StrToInt('0x12'));

      mStyle := mPoiman.FindStyle(1);
      if mStyle = nil then
      begin
        mStyle := mPoiman.NewStyle(-1);
        mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
        mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
        mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
        mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);
        mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
      end;
      mItem.SetStyle(mStyle);
      mItem.SetSyncAngle(1);
      mItem.SetAlpha(100);
      mItem.SetShowCaption(1);
    end else
    if index = 2 then
    begin
			mImage := mImageman.LoadImageList('PT','bPoint.png', 7, 7);
			mGroup := mPoiman.FindGroup(98);
      if mGroup = nil then mGroup := mPoiman.NewGroup(98);

      mGstyle := mPoiman.FindStyle(1);
      if (mGstyle = nil) then
      begin
        mGstyle := mPoiman.NewStyle(1); // -1: 아이디 자동 생성
        mGroup.SetStyle(mGstyle);
      end;

      if Not mImage.IsValid then ShowMessage('Image 이상');

      mItem := mGroup.NewItem(StrToInt(AName)) ;
      mItem.SetCaption(AName);
      mItem.SetLonLat(Lon, Lat);
      mItem.SetImage(mImage);
      mItem.SetShowImage(1);
			mItem.SetImageIndex(0);
      mItem.SetImageOffset(4);
      mItem.SetTextStyle(StrToInt('0x12'));

      mStyle := mPoiman.FindStyle(1);
      if mStyle = nil then
      begin
        mStyle := mPoiman.NewStyle(-1);
        mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
        mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
        mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
        mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);
        mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
      end;
      mItem.SetStyle(mStyle);
      mItem.SetAlpha(100);
    end;
	except
  end;
end;

end.

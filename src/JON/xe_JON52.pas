unit xe_JON52;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TalMapXLib_TLB, IniFiles, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.ExtCtrls, FastStringFuncs,
  Vcl.OleCtrls, Vcl.StdCtrls, cxButtons, cxCurrencyEdit, cxRadioGroup, MSXML2_TLB,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox, Math, SmartSRXLib_TLB,
  cxCheckBox, cxLabel, dxSkinsCore,  AdvGlowButton, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TCONFMAPINFO = record
    ConfSlip: string;
    ConfStatus: string;
    UpDate: string;
    DepLat: string;
    DepLng: string;
    DepName: string;
    ArrLat: string;
    ArrLng: string;
    ArrName: string;
    BaechaLat: string;
    BaechaLng: string;
    BaechaName: string;
    ViaCnt: Integer;
    ViaLat: TStringList;
    ViaLng: TStringList;
    ViaName: TStringList;
    WkSabun: string;
    WKConnState: string;
    WKLocLat: string;
    WKLocLng: string;
    WKLocType: string;
    WKLocElapseTime: string;
//    OrderType: string;
  end;
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
    Sabun, Name, ATTEND, PASS_TIME, Con_State, BR_Type, FinCnt, MAPX, MAPY, BrNo, BrName, HP, PHONE : string;
  end;
  TMapPosRec = record
    XPos, YPos: string;
  end;

  TFrm_JON52 = class(TForm)
    pnlRight: TPanel;
    BtnMod5: TcxButton;
    pnlBasic: TPanel;
    mMap: TTalMapXCtrl;
    cxButton1: TcxButton;
    PnlSingleMap: TPanel;
    mSingleMap: TTalMapXCtrl;
    cbRoute: TcxCheckBox;
    pnlMap: TPanel;
    cxLabel1: TcxLabel;
    btn_Mod1: TcxButton;
    btn_Mod2: TcxButton;
    btn_Mod3: TcxButton;
    btn_Mod4: TcxButton;
    lblBasic: TLabel;
    shp_Mod1: TShape;
    shp_Mod2: TShape;
    shp_Mod3: TShape;
    shp_Mod4: TShape;
    chkCallMapPopup: TcxCheckBox;
    tmrPopup: TTimer;
    procedure mMapCreate(ASender: TObject; Value: Integer);
    procedure mMapPOI_DblClick(ASender: TObject; const POI: IXPOIItem;
      nFlag, X, Y: Integer);
    procedure mMapStateChange(ASender: TObject; Code, Value1,
      Value2: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnMod5Click(Sender: TObject);
    procedure mRMapMouseMove(ASender: TObject; Flag, X, Y: Integer);
    procedure mSingleMapCreate(ASender: TObject; Value: Integer);
    procedure mSingleMapStateChange(ASender: TObject; Code, Value1,
      Value2: Integer);
    procedure rb_Mod1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_Mod1Click(Sender: TObject);
    procedure btn_Mod2Click(Sender: TObject);
    procedure btn_Mod3Click(Sender: TObject);
    procedure btn_Mod4Click(Sender: TObject);
    procedure mMapUI_MouseUp(ASender: TObject; const Obj: IXUIObj; Flag, X,
      Y: Integer);
    procedure mMapUI_MouseLeave(ASender: TObject; const Obj: IXUIObj);
    procedure mMapUI_MouseHover(ASender: TObject; const Obj: IXUIObj);
    procedure pnlBasicResize(Sender: TObject);
    procedure mSingleMapUI_MouseUp(ASender: TObject; const Obj: IXUIObj; Flag,
      X, Y: Integer);
    procedure PnlSingleMapResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbRouteClick(Sender: TObject);
    procedure tmrPopupTimer(Sender: TObject);
    procedure chkCallMapPopupClick(Sender: TObject);
  private
    { Private declarations }
    FInit: Boolean;
    ViaCnt : integer;

    ADis : double;
		BF_Lon, BF_Lat : integer; //이전 검색좌표 2012.11.25 KHS
    aMapTypeACol : integer; //접수현황에서 선택된 항목

    maxLogicalLevel : Integer;
    minLogicalLevel : Integer;
    ws_Lon, ws_Lat : integer;
    sw_Lon, sw_Lat : Double;
    m_Lon, m_Lat : Integer;   //mousemove 값

    function RequestDataBase(ATxData: string; var ARxDataDom: msDomDocument): Boolean;
    procedure RequestDataWorker(const AATTEND, AState, AStatetime, AKeyKind, AKeyWord, ADistance, AX, AY, ABRTYPE : string; AMAP_Type : integer);
    procedure ClearDongList(AcxCombo: TcxComboBox);
    procedure GeneralInit;
    procedure GeneralInit_SingleMap;
    procedure AdminMapSet;

    procedure Mark_Symbol(Lon, Lat, index : Integer);
    procedure Mark_SymbolSingle(Lon, Lat, index : Integer);
    procedure AddMsg(AGubun : String);
    procedure Proc_recieve(ls_rxxml: String);
    function GET_DIST(FLon, FLat, TLon, TLat : Double) : Double;

    procedure MakeLayerPolyLine(FLon, FLat, TLon, TLat : Integer);
    procedure MakeLayerPolyLineSingle(FLon, FLat, TLon, TLat: Integer);

		procedure WkSearch(aRound : string; iType, ALon, ALat : integer);
		procedure WkSearchSingle(aRound : string; iType, ALon, ALat : integer);
    procedure Proc_RouteLine(AFromLon, AFromLat, AToLon, AToLat : integer; AViaLon, AViaLat : array of integer; fDirKm : Real); //메인지도 경로 표기

    procedure Proc_MapMode_No1;
    procedure Proc_MapMode_No2;
    procedure Proc_MapMode_No3(AGubun : integer);

    function SetCtrlState(setType : Integer):Integer;
    function SetCtrlStateSingle(setType : Integer):Integer;

    procedure SetMapRectLevel(LLon, LLat, RLon, RLat : Integer);
    procedure SetMapRectLevelSingle(LLon, LLat, RLon, RLat : Integer);

    procedure MakeStatusbar;
    procedure MakeStatusbarSingle;

    procedure MakeMSGBox;
    procedure MakeMSGBoxSingle;
    procedure ClearSVEMark;                                             //기사아이콘삭제
    procedure Clear_MapMode_No1;
    procedure Clear_MapMode_No2;
    procedure Clear_MapMode_No3;

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

    procedure SetReadyStyleSingle;
    procedure SetRunStyleSingle;
		procedure SetA101StyleSingle;
		procedure SetA102StyleSingle;
		procedure SetA201StyleSingle;
		procedure SetA202StyleSingle;
		procedure SetB201StyleSingle;
		procedure SetB202StyleSingle;
		procedure Set0201StyleSingle;
		procedure Set0202StyleSingle;

		procedure AddWkIconReady(const AXPos, AYPos: string; AWkInfo: TMapWkInfoRec);
		procedure AddWkIconReadySingle(const AXPos, AYPos: string; AWkInfo: TMapWkInfoRec);
    function proc_dis_alculation : Real;

    procedure CreateLevelBarG;
    procedure CreateLevelBarGS;

    procedure DestroyUI;
    procedure DestroyUIS;
  public
    { Public declarations }
    Skm : string;
    WK_ATTEND, WK_ATTEND_TIME, WK_KEYWORD, WK_KEYKIND, WK_STATE, WK_TYPE  : string;

    mCtrlState : IXMasterControlState;
    mCtrlMan : IXCtrlMan;
    mUiman : IXUIMan;
    mDpsize : IXSize;
    mUtil : IXUtility;
    mPoiman : TalMapXLib_TLB.IXPOIMan;

    mCtrlStateSingle : IXMasterControlState;
    mCtrlManSingle : IXCtrlMan;
    mUimanSingle : IXUIMan;
    mDpsizeSingle : IXSize;
    mUtilSingle : IXUtility;

    sts_Chk : Boolean;

    mBtnLevle  : array [0..12] of IXUIButton;
    mBtnLevleS : array [0..12] of IXUIButton;
    MyToolBar1 : array[0..20] of IXUIButton;
    ReadyImage, RunImage : IXMagicImage;
		B201, B202, A101, A102, A201, A202, R0201, R0202 : IXMagicImage;
		B201single, B202single, A101single, A102single, A201single, A202single, R0201single, R0202single : IXMagicImage;
		ReadyGstyle, ReadyStyle, RunGstyle, RunStyle : IXPOIStyle;
    ReadyPoiman : IXPOIMan;
    btnImg : IXUIImage;
    stcMsgArea: IXUIStaticText;
    stcMsgAreaSingle: IXUIStaticText;

    CONFRec : TCONFMAPINFO;
    sXList, sYList : array[0..10] of integer;

    procedure WGS84ToBessel(Y_1, X_1 : string; Var Y_2, X_2 : Integer);
    function BesselToWGS84(Y_1, X_1 : double) : integer;
    function GetAdminCodeF(GLon, GLot : Integer) : string;
    function GetAdminCodeF_Single(GLon, GLot : Integer) : string;

    procedure Clear;
    procedure Show; reintroduce;

    procedure ClearWkIcon;                                             //기사아이콘삭제
    procedure MapLevel_Master(level : INTEGER);
    procedure MapLevel_MasterSingle(level : INTEGER);

    procedure Map_ZoomIn;
    procedure Map_ZoomInS;

    procedure Map_ZoomOut;
    procedure Map_ZoomOutS;

    function Map_SetLevel(level : Integer) : Integer;
    function Map_SetLevelS(level : Integer) : Integer;

    procedure Map_Rotate;
    procedure HistoryPrev;
    procedure HistoryNext;
    procedure View3D;
    procedure BirdView;
    procedure ViewText;
    procedure SaveImage;
    procedure DrawPolygon;
    procedure DrawPolyline;
    procedure RemovePolygon;
    procedure CheckArea;
    procedure DelDistance;
    procedure ObjectModify;
    procedure ShowThemeForm;
    procedure Proc_MapMode_Bessel1( fDirKm : Real );
    procedure OnMoveMap(lon, lat : INTEGER);
    procedure OnMoveMapSingle(lon, lat : INTEGER);
    procedure Proc_SelctOrder(AConfSlip : String; ACOL : integer);//오더 선택 시 지도띄우기 위한 정보 요청
  end;

var
  Frm_JON52: TFrm_JON52;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_Msg, xe_xml, xe_Flash, xe_gnl3;

function TFrm_JON52.RequestDataBase(ATxData: string;
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

procedure TFrm_JON52.RequestDataWorker(const AATTEND, AState, AStatetime,
  AKeyKind, AKeyWord, ADistance, AX, AY, ABRTYPE: string; AMAP_Type : integer);
var
  TxData: string;
  RxData: msDomDocument;
  I : Integer;
  lst_Result: IXMLDomNodeList;
  XPos, YPos: string;
  WkRec: TMapWkInfoRec;
begin
  if ( AMAP_Type = 1 ) Or ( AMAP_Type = 2 ) then
  begin
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
  end else
  if AMAP_Type = 3 then
  begin       
    SetA101StyleSingle;
    SetA102StyleSingle;
    SetA201StyleSingle;
    SetA202StyleSingle;
    SetB201StyleSingle;
    SetB202StyleSingle;
    Set0201StyleSingle;
    Set0202StyleSingle;
    SetReadyStyleSingle;
    SetRunStyleSingle;
  end;

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
	  TxData := ReplaceAll(TxData, 'ClientKeyString', 'C063N2_AMap01');

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

          if AMAP_Type = 1 then	AddWkIconReady(XPos, YPos, WkRec) else
          if AMAP_Type = 2 then AddWkIconReady(XPos, YPos, WkRec) else
          if AMAP_Type = 3 then AddWkIconReadySingle(XPos, YPos, WkRec);
        end;
      finally
      end;
    end;
  finally
    RxData := Nil;
  end;
end;

procedure TFrm_JON52.Proc_RouteLine(AFromLon, AFromLat, AToLon, AToLat : integer; AViaLon, AViaLat : array of integer; fDirKm : Real);
Var StartLon, StartLat, EndLon, EndLat, i, j : Integer;
  aDistance : Double;
  aTime, aHour, aMin, aSec, SRPort, iErr : integer;
  sy, sx, sTmp, SRIp : string;
  ViaLon, ViaLat : array of integer;
  info : IXRouteInfo4;
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  mPolygon : IXLayerPolygon;
	mCenterLL : TalMapXLib_TLB.IXPoint;
	startTick, delta      : DWord;
begin
  //<-------------------출발지. 도착지. 경유지 좌표변환--------------------------------->
  //<-------------------경로탐색 시작--------------------------------------------------->
	startTick := GetTickCount;
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
        if GS_SmartServerIP = SearchRoute1[0].IP then Inc(SR1ErrCnt)
                                                 else Inc(SR2ErrCnt);

        GetSearchRouteIpPort(SRIp, SRPort);

        SetDebugeWrite('1. SmartSR Open : IP - ' + SRIp + ',' + ' Port - ' + IntToStr(SRPort));

        if RouteMan.Open(SRIp, SRPort) then
          RouteMan.Clear()
        else
        begin
          GMessagebox('경로 탐색 서버 접속 장애 발생으로 인해 연결할수 없습니다.', CDMSE);
          Exit;
        end;
      end;

      if ( SR1ErrCnt > 4 ) And ( SR2ErrCnt > 4 ) then
      begin
        cbRoute.Checked := False;
        GMessagebox('경로 탐색 서버 접속 장애 발생으로 인해 연결할수 없습니다.', CDMSE);
        Exit;
      end;

      SetDebugeWrite('3. SmartSR Start Bessel : ' + IntToStr(AFromLon) + ',' + IntToStr(AFromLat));
      RouteMan.SetOrgLonLat(AFromLon, AFromLat);
			RouteMan.ClearNode();
			for i := 0 to Length(AViaLon) -1 do
      begin
        RouteMan.AddNode(AViaLon[i], AViaLat[i]);  //// 경유지는 필요하면 추가하세요.
      end;
      RouteMan.SetDstLonLat(AToLon, AToLat);
      SetDebugeWrite('3. SmartSR End Bessel : ' + IntToStr(AToLon) + ',' + IntToStr(AToLat) + ' -  IP : ' + SRIp + ' Port : ' + IntToStr(SRPort));

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
      if GT_DISTANCE_SVR = 1 then
      begin
        if fDirKm < 70 then
          RouteMan.Remote_SetRPCType(2, 1, 2)  // 최단, 일반도로, 유로
        else
          RouteMan.Remote_SetRPCType(2, 2, 2);  // 최단, 고속도로, 유로
      end else
      begin
        RouteMan.Remote_SetRPCType(GT_DISTANCE_ROUTETYPE, GT_DISTANCE_ROADTYPE, GT_DISTANCE_TOLLTYPE);
//        RouteMan.Remote_SetRPCType(2, 1, 2)  // 최단
      end;
      /////////////////////////////////////////////////////////////////
      info := RouteMan.SearchRoute4;
      if (info <> nil) then
      begin
        try
          iErr := info.GetResult;

          if iErr <= 0 then
          begin
            if GS_SmartServerIP = SearchRoute1[0].IP then Inc(SR1ErrCnt)
                                                     else Inc(SR2ErrCnt);
            Exit;
          end;
        Except
        end;

        if GS_SmartServerIP = SearchRoute1[0].IP then SR1ErrCnt := 0
                                                 else SR2ErrCnt := 0;

        sTmp := Format('%s,%s', [inttostr(info.GetTotalDistance), inttostr(info.GetTotalTime())]);
        aDistance := 0;
        aTime := 0;
        for i := 0 to info.GetNodeCount - 1 do
        begin
          info.SetCurrentNodeIndex(i);

          aDistance := aDistance + info.GetNodeRemainDist();
//          aTime := aTime + info.GetNodeRemainTime();
        end;
        mCtrlState := mctrlMan.GetControlState();
        layerMan := mCtrlMan.GetLayerMan();
        mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

        // Step 1. Make XLayer Style
        style := layerMan.FindStyle(500);
        if (style = Nil) then
        begin
          style := layerMan.NewStyle(500);
          style.SetPen(mUtil.RGBColor(13, 136, 230), 5, 0);//mUtilL.GetConstToValue('PS_SOLID'));
        end;
        // Step 2. Make XLayer PolyLine
        mPolygon := layerMan.NewPolygon(0, -1);
        mPolygon.BeginUpdate();
        for i := 0 to info.GetLinkCount - 1 do
        begin
          info.SetCurrentLinkIndex(i);
          for j := 0 to info.GetLinkNumPoint-1 do
          begin
            if (info.GetLinkPointLon(j) > 0) and (info.GetLinkPointLat(j) > 0) then
            begin
              mPolygon.AddPoint(info.GetLinkPointLon(j), info.GetLinkPointLat(j));
              mPolygon.SetCanClick(1);
              mPolygon.SetCanFocus(1);
              mPolygon.SetClosed(0);   // 0: Line, 1: Polygon
              mPolygon.SetStyle(style);
            end;
          end;
        end;
				mPolygon.EndUpdate();

				
				delta := GetTickCount - startTick;
				if GT_USERIF.HD = 'A100' then
					cxLabel1.caption := Format('%d', [delta]);

        ///거리 및 시간 표기///
        mUiman := mCtrlMan.GetUIMan;
        aDistance := Roundto(aDistance / 1000,-1);

//        aHour := aTime div 3600;
//        aMin  := (aTime - (aHour * 3600)) div 60;
//        aSec  := (aTime - (aHour * 3600) - (aMin * 60));
//        if aHour > 0 then
//          stcMsgArea.SetCaption('출->도 거리:' + FloatToStr(aDistance) + 'Km 시간:' + IntToStr(aHour) + '시간' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초')
//        else
//          stcMsgArea.SetCaption('출->도 거리:' + FloatToStr(aDistance) + 'Km 시간:' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초');
        stcMsgArea.SetCaption('출->도 거리:' + FloatToStr(aDistance) + 'Km');
        stcMsgArea.SetCanFocus(0);
				stcMsgArea.SetCanClick(0);
      end;
    Except
      on e: exception do
      begin
        FreeAndNil(SmartSR);
        RouteMan := nil;
        Assert(False, E.Message);
//        ShowMessage('Proc_RouteLine Error:' + e.message);
      end;
    end;
  finally
    SetDebugeWrite('3. SmartSR Distance : ' + FloatToStr(aDistance));
    FreeAndNil(SmartSR);
    RouteMan := nil;
  end;
end;

function TFrm_JON52.BesselToWGS84(Y_1, x_1: double): integer;
var degree_y, degree_x, min_x, min_y, s_y, s_x, ss_y, ss_x : Double;
  r_x, r_y : integer;
  coord : TalMapXLib_TLB.IXCoordSys;
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

function TFrm_JON52.GetAdminCodeF(GLon, GLot: Integer): string;
var
  mAdminman : IXAdminMan;
  mCenterLL : TalMapXLib_TLB.IXPoint;
  mAdmitem : IXAdminItem;
  admcode : string;
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

function TFrm_JON52.GetAdminCodeF_Single(GLon, GLot: Integer): string;
var
  mAdminman : IXAdminMan;
  mCenterLL : TalMapXLib_TLB.IXPoint;
  mAdmitem : IXAdminItem;
  admcode : string;
  obj : IXUIObj;
begin
	mAdminman := mCtrlManSingle.GetAdminMan();
	mCtrlStateSingle := mCtrlManSingle.GetControlState();
	mCenterLL := mCtrlStateSingle.GetLLCenter(); // 지도의 중심 좌표
	mAdmitem := mAdminman.GetAdminItem(GLon, GLot);

	if mAdmitem <> nil then
  begin
		admcode := mAdmitem.GetAdminCode();	// 행정동 코드 얻기
    obj := mUimanSingle.GetChildByUIID(307);
    if (obj <> nil) then obj.SetCaption(mAdmitem.GetAdminName(' ', 3));
		mAdmitem.Destroy();
	end;
  Result := admcode;
end;

function TFrm_JON52.GET_DIST(FLon, FLat, TLon, TLat: Double): Double;
var II_LNG_DIFF, II_LAT_DIFF : Double;
begin
  if FLon > TLon then
    II_LNG_DIFF := FLon - TLon
  else
    II_LNG_DIFF := TLon - FLon;
  if FLat > TLat then
    II_LAT_DIFF := FLat - TLat
  else
    II_LAT_DIFF := TLat - FLat;

  ADis := TRUNC((SQRT(POWER(II_LAT_DIFF * 1.25, 2) + POWER(II_LNG_DIFF, 2)) * 88.8) * 1000);//, 3);
  result := ADis;
end;

procedure TFrm_JON52.WGS84ToBessel(Y_1, x_1: String; Var Y_2, X_2 : Integer);
var r_y, r_X : Integer;
  coord : TalMapXLib_TLB.IXCoordSys;
  pos : IXMapPos;
  int_string1, int_string2 : string;
begin
  try
    int_string1 := Y_1;
    r_y := ((StrToInt64(Copy(int_string1,1,3)) * 360000) + (StrToInt64(Copy(int_string1,4,2)) * 6000) + (StrToInt64(Copy(int_string1,6,2)) * 100) + StrToInt64(Copy(int_string1,8,2)));

    int_string2 := x_1;
    r_X := ((StrToInt64(Copy(int_string2,1,3)) * 360000) + (StrToInt64(Copy(int_string2,4,2)) * 6000) + (StrToInt64(Copy(int_string2,6,2)) * 100) + StrToInt64(Copy(int_string2,8,2)));

    coord := mMap.GetCoordSys();
    pos := coord.WGS84ToBessel(r_y, r_X);
    Y_2 := pos._Lon;
    X_2 := pos._Lat;
  except
  end;
end;

procedure TFrm_JON52.WkSearch(aRound: string; iType, ALon, ALat: integer);
var
  Lon_P, Lat_P : Integer;
  c_Point : TalMapXLib_TLB.IXPoint;
begin
	mCtrlState := mCtrlMan.GetControlState;
	c_Point := mCtrlState.GetLLCenter;
	Lon_P := ALon; //lon
	Lat_p := ALon; //lat
	if iType = 1 then
	begin
		if (BF_Lon = Lon_P) and (BF_Lat = Lat_P) then exit;
	end;

	BesselToWGS84(Lon_P, Lat_p);
//  mCtrlState.SetLevel(3);
  if GS_SEARCH_NEAR_WKKIND then
    RequestDataWorker('00', '00', '', '', '', aRound, '0'+FloatToStr(sw_Lat), FloatToStr(sw_Lon), '0',1 )
  else if not GS_SEARCH_NEAR_WKKIND then
    RequestDataWorker('A2', 'A2', '', '', '', aRound, '0'+FloatToStr(sw_Lat), FloatToStr(sw_Lon), '0',1 );

	if iType = 1 then
	begin
		BF_Lon := Lon_P;
		BF_Lat := Lat_P;
	end;
end;

procedure TFrm_JON52.WkSearchSingle(aRound: string; iType, ALon, ALat: integer);
var
  Lon_P, Lat_P : Integer;
  c_Point : TalMapXLib_TLB.IXPoint;
begin
	mCtrlStateSingle := mCtrlManSingle.GetControlState;
	c_Point := mCtrlStateSingle.GetLLCenter;
	Lon_P := ALon; //lon
	Lat_p := ALat; //lat
	if iType = 1 then
	begin
		if (BF_Lon = Lon_P) and (BF_Lat = Lat_P) then exit;
	end;

	BesselToWGS84(Lon_P, Lat_p);
//  mCtrlState.SetLevel(3);
  if GS_SEARCH_NEAR_WKKIND then
    RequestDataWorker('00', '00', '', '', '', aRound, '0'+FloatToStr(sw_Lat), FloatToStr(sw_Lon), '0', 3 )
  else if not GS_SEARCH_NEAR_WKKIND then
    RequestDataWorker('A2', 'A2', '', '', '', aRound, '0'+FloatToStr(sw_Lat), FloatToStr(sw_Lon), '0', 3 );

	if iType = 1 then
	begin
		BF_Lon := Lon_P;
		BF_Lat := Lat_P;
	end;
end;

procedure TFrm_JON52.mMapCreate(ASender: TObject; Value: Integer);
var
  mMapMan : IXMapMan;
  mThemeMan : IXThemeMan;
  mAdminMan : IXAdminMan;
  mRootPath, XPos, YPos : String;
  sTemp : string;
begin
  SetDebugeWrite('Frm_JON52.mMapCreate');
  try
    mRootPath := ExtractFilePath(Application.ExeName);

    mUtil := mMap.GetUtility;
    mCtrlMan := mMap.GetCtrlMan;
    mThemeMan := mCtrlMan.GetThemeMan();
    mMapMan := mCtrlMan.GetMapMan();
    mAdminMan := mCtrlMan.GetAdminMan();

    mPoiman := mCtrlMan.GetPOIMan();
    // CtrlMan의 Default Path를 프로그램 실행 디렉토리로 설정
    mCtrlMan.SetDefaultPath(MAP_URL);

    // 라이센스 파일을 Load한다 정상적으로 Load가 안되면 에러메세지지가 출력.
    if mCtrlMan.LoadLicense(MAP_URL + 'license\CMNAGTXE.tml') <> true then
    begin
      Assert(False, 'TalMap License Error :' + MAP_URL + 'license\CMNAGTXE.tml');
      ShowMessage('라이센스 설정에 실패했습니다.');
      exit
    end;

    // Map 데이터를 설정 TM1폴더의 상위 폴더를 지정.
    // Web Server에 올리실 경우는 아래와 같이 동일하게 TM1폴더의 상위 폴더까지만 지정하면 됩니다.
    // 예: 'http://user-site.co.kr/Map/MapData' --> MapData 밑에는 TM1폴더가 위치하게 하면 됩니다.
    if mMapMan.SetDefaultPath(MAP_URL + 'MapData') <> true then
    begin
      ShowMessage('Map 데이터 설정에 실패했습니다.');
      exit
    end;

    // Theme 파일을 설정.
    mThemeMan.SetDefaultPath(MAP_URL + 'Theme');
    if mThemeMan.LoadTheme('MNS.TMT') <> 1 then
    begin
      ShowMessage('테마파일 설정에 실패했습니다.');
      exit
    end;

    // Admin 파일을 설정.
    mAdminMan.SetDefaultPath(MAP_URL + 'Theme');
    if mAdminMan.LoadAdmin('TalMap_M.TMA') <> true then
    begin
      ShowMessage('행정도파일 설정에 실패했습니다.');
      exit
    end;
    mUiman := mCtrlman.GetUIMan();
    mUiman.SetShowCenterLine(2);       //센터 열십자.

    SetCtrlState(32);//마우스 클릭이동 해제

    mCtrlMan.SetDefaultEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEMOVE'));

		if ( Area_CenterLat <> '0' ) And ( Area_CenterLon <> '0') And
       ( Area_CenterLat <> ''  ) And ( Area_CenterLon <> '') then
		begin
      XPos := Area_CenterLat;//'037335565';
      YPos := Area_CenterLon;//'126583729';
      WGS84ToBessel(YPos, XPos, ws_Lon, ws_Lat);
      OnMoveMap(ws_Lon, ws_Lat);
		end;

		sts_Chk := True;
		GeneralInit;
	except
    on E: exception do
    begin
      sTemp := 'Map 예외처리 발생:' + e.Message;
      Assert(False, E.Message);
//      ShowMessage(sTemp);
    end;
  end;
  AddMsg('');
end;

procedure TFrm_JON52.mMapPOI_DblClick(ASender: TObject;
  const POI: IXPOIItem; nFlag, X, Y: Integer);
var
  pos : IXMapPos;
  mLayerman : IXLayerMan;
  mLayer : IXLayer;
  m_Lon, m_Lat : Integer;
begin
  SetDebugeWrite('Frm_JON52.mMapPOI_DblClick');
  mUtil := mMap.GetUtility;
  mCtrlMan := mMap.GetCtrlMan;
  mLayerman := mCtrlman.GetLayerMan();
  mLayer :=  mLayerman.FindLayer(1);
  if mLayer <>nil then
    mLayer.ClearObject();

  pos := mCtrlState.DPToLL(X, Y);
  m_Lon := pos.GetLon;
  m_Lat := pos.GetLat;

  OnMoveMap(m_Lon, m_Lat);
end;

procedure TFrm_JON52.mMapStateChange(ASender: TObject; Code, Value1,
  Value2: Integer);
var
  mGroup : IXPOIGroup;
  mGstyle : IXPOIStyle;
  mPoi : IXPOIItem;
  poi_cnt, i : integer;
begin
  if Not PnlBasic.Visible then Exit;
  SetDebugeWrite('Frm_JON52.mMapStateChange');
  if Not Assigned(mMap) then Exit;
  Try
    mUtil := mMap.GetUtility;
    mCtrlMan := mMap.GetCtrlMan;
    mCtrlState := mCtrlman.GetControlState();

    if Code = mUtil.GetConstToValue('TMCHECKCONFIG_LEVEL') then
    begin
      if sts_Chk then
      begin
        MapLevel_Master(mCtrlState.GetLevel());
        if not Assigned(mPoiman) then Exit;

        mGroup := mPoiman.FindGroup(0);
        if mGroup = nil then mGroup := mPoiman.NewGroup(0);

  //레벨별 기사 상태 캡션표기//////////////////////////////////
          // 대기중
        mGstyle := mPoiman.FindStyle(1);
        if (mGstyle <> nil) then
        begin
  //        mGstyle := mPoiman.NewStyle(1); // -1: 아이디 자동 생성
          if mCtrlState.GetLevel() < 1 then
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
					end;
        end;

  //레벨별 기사 아이콘변경/////////////////////////////////////
      end;
    end;
  except
  end;
end;

procedure TFrm_JON52.mMapUI_MouseHover(ASender: TObject; const Obj: IXUIObj);
begin
  if ( Obj.GetUIID = 1011 ) Or ( Obj.GetUIID = 2011 ) Or
     ( Obj.GetUIID = 3011 ) Or ( Obj.GetUIID = 4011 ) then // Level Bar BG
     Obj.SetAlpha(0)
  else
  if ( ( Obj.GetUIID > 1011 ) And ( Obj.GetUIID < 1027 ) ) Or
     ( ( Obj.GetUIID > 2011 ) And ( Obj.GetUIID < 2027 ) ) Or
     ( ( Obj.GetUIID > 3011 ) And ( Obj.GetUIID < 3027 ) ) Or
     ( ( Obj.GetUIID > 4011 ) And ( Obj.GetUIID < 4027 ) ) then
     Obj.GetParent().SetAlpha(0);
end;

procedure TFrm_JON52.mMapUI_MouseLeave(ASender: TObject; const Obj: IXUIObj);
begin
  if ( Obj.GetUIID = 1011 ) Or ( Obj.GetUIID = 2011 ) Or
     ( Obj.GetUIID = 3011 ) Or ( Obj.GetUIID = 4011 ) then // Level Bar BG
     Obj.SetAlpha(70)
  else
  if ( ( Obj.GetUIID > 1011 ) And ( Obj.GetUIID < 1027 ) ) Or
     ( ( Obj.GetUIID > 2011 ) And ( Obj.GetUIID < 2027 ) ) Or
     ( ( Obj.GetUIID > 3011 ) And ( Obj.GetUIID < 3027 ) ) Or
     ( ( Obj.GetUIID > 4011 ) And ( Obj.GetUIID < 4027 ) ) then
     Obj.GetParent().SetAlpha(70);
end;

procedure TFrm_JON52.mMapUI_MouseUp(ASender: TObject; const Obj: IXUIObj; Flag,
  X, Y: Integer);
begin
  try
    if obj.GetParent.GetUIID = 1011 then
    begin
      case obj.GetUIID of
        1012: Map_ZoomOut;
        1013: Map_ZoomIn;
        1014: Map_SetLevel(12);
        1015: Map_SetLevel(11);
        1016: Map_SetLevel(10);
        1017: Map_SetLevel(9);
        1018: Map_SetLevel(8);
        1019: Map_SetLevel(7);
        1020: Map_SetLevel(6);
        1021: Map_SetLevel(5);
        1022: Map_SetLevel(4);
        1023: Map_SetLevel(3);
        1024: Map_SetLevel(2);
        1025: Map_SetLevel(1);
        1026: Map_SetLevel(0);
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.mRMapMouseMove(ASender: TObject; Flag, X, Y: Integer);
begin
  Frm_Main.iTmrBtmMenu := 0;
end;

procedure TFrm_JON52.mSingleMapCreate(ASender: TObject; Value: Integer);
var
  mMapMan : IXMapMan;
  mThemeMan : IXThemeMan;
  mAdminMan : IXAdminMan;
  mRootPath : String;
  sTemp : string;
begin
  SetDebugeWrite('Frm_JON52.mSingleMapCreate');
  try
    mRootPath := ExtractFilePath(Application.ExeName);

    mUtilSingle := mSingleMap.GetUtility;
    mCtrlManSingle := mSingleMap.GetCtrlMan;

    mThemeMan := mCtrlManSingle.GetThemeMan();
    mMapMan := mCtrlManSingle.GetMapMan();
    mAdminMan := mCtrlManSingle.GetAdminMan();

    mPoiman := mCtrlManSingle.GetPOIMan();
    // CtrlMan의 Default Path를 프로그램 실행 디렉토리로 설정
    mCtrlManSingle.SetDefaultPath(MAP_URL);

    // 라이센스 파일을 Load한다 정상적으로 Load가 안되면 에러메세지지가 출력.
    if mCtrlManSingle.LoadLicense(MAP_URL + 'license\CMNAGTXE.tml') <> true then
    begin
      Assert(False, 'TalMap License Error :' + MAP_URL + 'license\CMNAGTXE.tml');
      ShowMessage('라이센스 설정에 실패했습니다.');
      exit
    end;

    // Map 데이터를 설정 TM1폴더의 상위 폴더를 지정.
    // Web Server에 올리실 경우는 아래와 같이 동일하게 TM1폴더의 상위 폴더까지만 지정하면 됩니다.
    // 예: 'http://user-site.co.kr/Map/MapData' --> MapData 밑에는 TM1폴더가 위치하게 하면 됩니다.
    if mMapMan.SetDefaultPath(MAP_URL + 'MapData') <> true then
    begin
      ShowMessage('Map 데이터 설정에 실패했습니다.');
      exit
    end;

    // Theme 파일을 설정.
    mThemeMan.SetDefaultPath(MAP_URL + 'Theme');
    if mThemeMan.LoadTheme('MNS.TMT') <> 1 then
    begin
      ShowMessage('테마파일 설정에 실패했습니다.');
      exit
    end;

    // Admin 파일을 설정.
    mAdminMan.SetDefaultPath(MAP_URL + 'Theme');
    if mAdminMan.LoadAdmin('TalMap_M.TMA') <> true then
    begin
      ShowMessage('행정도파일 설정에 실패했습니다.');
      exit
    end;
    mUimanSingle := mCtrlManSingle.GetUIMan();
    mUimanSingle.SetShowCenterLine(2);       //센터 열십자.

    SetCtrlStateSingle(32);//마우스 클릭이동 해제

    mCtrlManSingle.SetDefaultEventMode(mUtilSingle.GetConstToValue('TMEVENTTYPE_MOUSEMOVE'));

		GeneralInit_SingleMap;
	except
    on E: exception do
    begin
      sTemp := 'MapSingle 예외처리 발생:' + e.Message;
      Assert(False, E.Message);
//      ShowMessage(sTemp);
    end;
  end;
end;

procedure TFrm_JON52.mSingleMapStateChange(ASender: TObject; Code, Value1,
  Value2: Integer);
var
  mGroup : IXPOIGroup;
  mGstyle : IXPOIStyle;
  mPoi : IXPOIItem;
  poi_cnt, i : integer;
begin
  if Not PnlSingleMap.Visible then Exit;
  SetDebugeWrite('Frm_JON52.mSingleMapStateChange');
  if Not Assigned(mSingleMap) then Exit;
  Try
    mUtilSingle := mSingleMap.GetUtility;
    mCtrlManSingle := mSingleMap.GetCtrlMan;
    mPoiman := mCtrlManSingle.GetPOIMan();

    mCtrlStateSingle := mCtrlManSingle.GetControlState();
    if Code = mUtilSingle.GetConstToValue('TMCHECKCONFIG_LEVEL') then
    begin
      if sts_Chk then
      begin
        MapLevel_MasterSingle(mCtrlStateSingle.GetLevel());
        if not Assigned(mPoiman) then Exit;

        mGroup := mPoiman.FindGroup(0);
        if mGroup = nil then mGroup := mPoiman.NewGroup(0);

  //레벨별 기사 상태 캡션표기//////////////////////////////////
          // 대기중
        mGstyle := mPoiman.FindStyle(1);
        if (mGstyle <> nil) then
        begin
  //        mGstyle := mPoiman.NewStyle(1); // -1: 아이디 자동 생성
          if mCtrlStateSingle.GetLevel() < 13 then
          begin
            mGstyle.SetGDIFont(GS_FONTNAME, 0, 9);  //레벨별 기사 상태 캡션표기
            mGstyle.SetFontColor(mUtilSingle.RGBColor(0, 0, 0));  //캡션글자
            mGstyle.SetFontOutColor(mUtilSingle.RGBColor(255, 255, 255));     //캡션 글자테두리
            mGstyle.SetBrush(mUtilSingle.RGBColor(251, 249, 250), 0); //캡션배경
            mGstyle.SetPen(mUtilSingle.RGBColor(175, 57, 54), 1, 0);
            mGroup.SetStyle(mGstyle);
          end
          else
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
            if (mPoi <> nil) and (mCtrlStateSingle.GetLevel() > 8) then
            begin
              mPoi.SetImageIndex(4);
            end
            else if (mPoi <> nil) and (mCtrlStateSingle.GetLevel() < 9) and (mCtrlStateSingle.GetLevel() > 4) then
            begin
              mPoi.SetImageIndex(2);
            end
            else if (mPoi <> nil) and (mCtrlStateSingle.GetLevel() < 5)then
            begin
              mPoi.SetImageIndex(1);
            end;
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
            if (mPoi <> nil) and (mCtrlStateSingle.GetLevel() > 8) then
            begin
              mPoi.SetImageIndex(4);
            end
            else if (mPoi <> nil) and (mCtrlStateSingle.GetLevel() < 9) and (mCtrlStateSingle.GetLevel() > 4) then
            begin
              mPoi.SetImageIndex(2);
            end
            else if (mPoi <> nil) and (mCtrlStateSingle.GetLevel() < 5)then
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

procedure TFrm_JON52.mSingleMapUI_MouseUp(ASender: TObject; const Obj: IXUIObj;
  Flag, X, Y: Integer);
begin
  try
    if obj.GetParent.GetUIID = 4011 then
    begin
      case obj.GetUIID of
        4012: Map_ZoomOutS;
        4013: Map_ZoomInS;
        4014: Map_SetLevelS(12);
        4015: Map_SetLevelS(11);
        4016: Map_SetLevelS(10);
        4017: Map_SetLevelS(9);
        4018: Map_SetLevelS(8);
        4019: Map_SetLevelS(7);
        4020: Map_SetLevelS(6);
        4021: Map_SetLevelS(5);
        4022: Map_SetLevelS(4);
        4023: Map_SetLevelS(3);
        4024: Map_SetLevelS(2);
        4025: Map_SetLevelS(1);
        4026: Map_SetLevelS(0);
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.OnMoveMap(lon, lat: INTEGER);
begin
  mCtrlState := mCtrlMan.GetControlState;
  mCtrlState.SetLLCenter(lon, lat);
end;

procedure TFrm_JON52.OnMoveMapSingle(lon, lat: INTEGER);
begin
  mCtrlStateSingle := mCtrlManSingle.GetControlState;
  mCtrlStateSingle.SetLLCenter(lon, lat);
end;

procedure TFrm_JON52.Proc_recieve(ls_rxxml: String);
var
  xdom: msDomDocument;
  ls_Msg_Err: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  i : integer;
begin
  try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      if not xdom.loadXML(ls_rxxml) then
      begin
        Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Accept');
        CONFRec.ConfSlip := lst_Result.item[0].attributes.getNamedItem('ConfSlip').Text;
        CONFRec.ConfStatus := lst_Result.item[0].attributes.getNamedItem('ConfStatus').Text;
        CONFRec.UpDate := lst_Result.item[0].attributes.getNamedItem('UpDate').Text;
        CONFRec.DepLat := lst_Result.item[0].attributes.getNamedItem('DepLat').Text;
        CONFRec.DepLng := lst_Result.item[0].attributes.getNamedItem('DepLng').Text;
        CONFRec.DepName := lst_Result.item[0].attributes.getNamedItem('DepName').Text;
        CONFRec.ArrLat := lst_Result.item[0].attributes.getNamedItem('ArrLat').Text;
        CONFRec.ArrLng := lst_Result.item[0].attributes.getNamedItem('ArrLng').Text;
        CONFRec.ArrName := lst_Result.item[0].attributes.getNamedItem('ArrName').Text;
        CONFRec.BaechaLat := lst_Result.item[0].attributes.getNamedItem('BaechaLat').Text;
        CONFRec.BaechaLng := lst_Result.item[0].attributes.getNamedItem('BaechaLng').Text;
        CONFRec.BaechaName := lst_Result.item[0].attributes.getNamedItem('BaechaName').Text;
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Accept/ViaInfo');
        CONFRec.ViaCnt := StrToIntDef(lst_Result.item[0].attributes.getNamedItem('Count').Text,0);
        CONFRec.ViaLat.Clear;
        CONFRec.ViaLng.Clear;
        CONFRec.ViaName.Clear;
        if CONFRec.ViaCnt > 0 then
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Accept/ViaInfo/Via');
          try
            for i := 0 to lst_Result.length - 1 do
            begin
              CONFRec.ViaLat.Add(lst_Result.item[i].attributes.getNamedItem('Lat').Text);
              CONFRec.ViaLng.Add(lst_Result.item[i].attributes.getNamedItem('Lng').Text);
              CONFRec.ViaName.Add(lst_Result.item[i].attributes.getNamedItem('Name').Text);
            end;
          finally
            ls_Rcrd.Free;
          end;
        end;
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Driver');
        CONFRec.WkSabun := lst_Result.item[0].attributes.getNamedItem('WkSabun').Text;
        CONFRec.WKConnState := lst_Result.item[0].attributes.getNamedItem('ConnState').Text;
        CONFRec.WKLocLat := lst_Result.item[0].attributes.getNamedItem('LocLat').Text;
        CONFRec.WKLocLng := lst_Result.item[0].attributes.getNamedItem('LocLng').Text;
        CONFRec.WKLocType := lst_Result.item[0].attributes.getNamedItem('LocType').Text;
        CONFRec.WKLocElapseTime := lst_Result.item[0].attributes.getNamedItem('LocElapseTime').Text;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
        Exit;
      end;

      btn_Mod2.Enabled := True;
      btn_Mod3.Enabled := True;
      btn_Mod4.Enabled := True;

      ADis := 0;
      if aMapTypeACol = 10 then  //출발지
      begin
        if (CONFRec.DepLat = '') or (copy(CONFRec.DepLat, 1, 1) <> '3') then exit;
        if (CONFRec.DepLng = '') or (copy(CONFRec.DepLng, 1, 2) <> '12') then exit;

        Proc_MapMode_No3(0); //출발지

        btn_Mod1.Down := False;
        btn_Mod2.Down := False;
        btn_Mod3.Down := True;
        btn_Mod4.Down := False;
      end else
      if aMapTypeACol = 11 then     //도착지
      begin
        if (CONFRec.ArrLat = '') or (copy(CONFRec.ArrLat, 1, 1) <> '3') then exit;
        if (CONFRec.ArrLng = '') or (copy(CONFRec.ArrLng, 1, 2) <> '12') then exit;

        Proc_MapMode_No3(1); //도착지

        btn_Mod1.Down := False;
        btn_Mod2.Down := False;
        btn_Mod3.Down := False;
        btn_Mod4.Down := True;
      end else
      if aMapTypeACol in [3,4,14,15,16] then //출발지|도착지
      begin
        if (CONFRec.DepLat = '') or (copy(CONFRec.DepLat, 1, 1) <> '3') then exit;
        if (CONFRec.DepLng = '') or (copy(CONFRec.DepLng, 1, 2) <> '12') then exit;

        if (CONFRec.ArrLat = '') or (copy(CONFRec.ArrLat, 1, 1) <> '3') then exit;
        if (CONFRec.ArrLng = '') or (copy(CONFRec.ArrLng, 1, 2) <> '12') then exit;

        Proc_MapMode_No2;   //출발지|도착지

        btn_Mod1.Down := False;
        btn_Mod2.Down := True;
        btn_Mod3.Down := False;
        btn_Mod4.Down := False;
      end else
      begin
        if (CONFRec.DepLat = '') or (copy(CONFRec.DepLat, 1, 1) <> '3') then exit;
        if (CONFRec.DepLng = '') or (copy(CONFRec.DepLng, 1, 2) <> '12') then exit;

        if (CONFRec.ArrLat = '') or (copy(CONFRec.ArrLat, 1, 1) <> '3') then exit;
        if (CONFRec.ArrLng = '') or (copy(CONFRec.ArrLng, 1, 2) <> '12') then exit;

        Proc_MapMode_No1; //출발지 도착지 한지도

        btn_Mod1.Down := True;
        btn_Mod2.Down := False;
        btn_Mod3.Down := False;
        btn_Mod4.Down := False;
      end;
    except
      Screen.Cursor := crDefault;
      GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
    end;
    Screen.Cursor := crDefault;
  except
  end;
end;

procedure TFrm_JON52.Proc_SelctOrder(AConfSlip: String; ACOL : integer);
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  ErrCode: integer;
begin
	try
    ClearSVEMark;
    aMapTypeACol := ACOL;
    //////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////
    ls_TxLoad := GTx_UnitXmlLoad('JON06050.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'JON06050');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfSlipString', AConfSlip);

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;
          proc_recieve(ls_rxxml);   // [hjf]
        end;
      end;
    finally
      slRcvList.Free;
      Screen.Cursor := crDefault;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.rb_Mod1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Frm_Main.iTmrBtmMenu := 0;
end;

procedure TFrm_JON52.ClearDongList(AcxCombo: TcxComboBox);
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

procedure TFrm_JON52.ClearSVEMark;
begin
  SetDebugeWrite('Frm_JON52.ClearSVEMark');
  if Assigned(mPoiman) then
  begin
    mPoiman.DeleteGroup(22);
    mPoiman.DeleteGroup(23);
    mPoiman.DeleteGroup(24);
    mPoiman.DeleteGroup(25);
  end;
end;

procedure TFrm_JON52.SetReadyStyle;
var
  mImageman : IXImageMan;
  mRootPath : string;
begin
	SetDebugeWrite('Frm_JON52.SetReadyStyle');
  try
      // Step 3. Make POI Items
    mImageman := mCtrlMan.GetImageMan();
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath + '\Image\');
		ReadyImage := mImageman.LoadImageList('Ready', 'Ready.png',35,35 );
    if Not ReadyImage.IsValid then ShowMessage('ReadyImage 이상');
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.SetReadyStyleSingle;
var
  mImageman : IXImageMan;
  mRootPath : string;
begin
  SetDebugeWrite('Frm_JON52.SetReadyStyleSingle');
  try
      // Step 3. Make POI Items
    mImageman := mCtrlManSingle.GetImageMan();
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath + '\Image\');
		ReadyImage := mImageman.LoadImageList('Ready', 'Ready.png',35,35 );
    if Not ReadyImage.IsValid then ShowMessage('ReadyImage 이상');
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.SetRunStyle;
var
  mImageman : IXImageMan;
  mRootPath : string;
begin
  SetDebugeWrite('Frm_JON52.SetRunStyle');
  try
    mImageman := mCtrlMan.GetImageMan();
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath + '\Image\');
		RunImage := mImageman.LoadImageList('Run', 'Run.png',35,35 );
    if Not RunImage.IsValid then ShowMessage('RunImage 이상');
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.SetRunStyleSingle;
var
  mImageman : IXImageMan;
  mRootPath : string;
begin
  SetDebugeWrite('Frm_JON52.SetRunStyleSingle');
  try
    mImageman := mCtrlManSingle.GetImageMan();
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath + '\Image\');
		RunImage := mImageman.LoadImageList('Run', 'Run.png',35,35 );
    if Not RunImage.IsValid  then ShowMessage('RunImage 이상');
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.BirdView;
var
  vector : IXVector;
begin
  SetDebugeWrite('Frm_JON52.BirdView');
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

procedure TFrm_JON52.BtnMod5Click(Sender: TObject);
begin
  //출발지, 도착지, 기사위치
  AddMsg('E');
end;

procedure TFrm_JON52.btn_Mod1Click(Sender: TObject);
begin
  cbRoute.Visible := True;
  Proc_MapMode_No1;
end;

procedure TFrm_JON52.btn_Mod2Click(Sender: TObject);
begin
  cbRoute.Visible := False;
  Proc_MapMode_No2;
end;

procedure TFrm_JON52.btn_Mod3Click(Sender: TObject);
begin
  cbRoute.Visible := False;
  Proc_MapMode_No3(0);
end;

procedure TFrm_JON52.btn_Mod4Click(Sender: TObject);
begin
  cbRoute.Visible := False;
  Proc_MapMode_No3(1);
end;

procedure TFrm_JON52.cbRouteClick(Sender: TObject);
var layerMan : IXLayerMan;
begin
	if btn_Mod1.Down then
	begin
		if cbRoute.checked then
		begin
			Proc_MapMode_No1;
		end
		else
		begin
			layerMan := mCtrlMan.GetLayerMan();
		  layerMan.ClearLayer;            //경로탐색 삭제
		end;
	end;
end;

procedure TFrm_JON52.CheckArea;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  layerMan := mCtrlMan.GetLayerMan();

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

procedure TFrm_JON52.chkCallMapPopupClick(Sender: TObject);
begin
  tmrPopup.Enabled := True;
end;

procedure TFrm_JON52.Clear;
begin
  ClearWkIcon;
end;

procedure TFrm_JON52.ClearWkIcon;
begin
  SetDebugeWrite('Frm_JON52.ClearWkIcon');
  if Assigned(mCtrlMan) then
  begin
    mPoiman := mCtrlMan.GetPOIMan();
    if Assigned(mPoiman) then
    begin
      if mPoiman.GetGroupCount > 0 then
      begin
         mPoiman.DeleteGroup(0);
      end;
    end;
  end;

  if Assigned(mCtrlManSingle) then
  begin
    mPoiman := mCtrlManSingle.GetPOIMan();
    if Assigned(mPoiman) then
    begin
      if mPoiman.GetGroupCount > 0 then
      begin
         mPoiman.DeleteGroup(0);
      end;
    end;
  end;
end;

procedure TFrm_JON52.Clear_MapMode_No1;
var layerMan : IXLayerMan;
begin
  SetDebugeWrite('Frm_JON52.Clear_MapMode_No1');
  if Not Assigned(mCtrlMan) then Exit;

  mPoiman := mCtrlMan.GetPOIMan();
  if Assigned(mPoiman) then
  begin
    begin
       mPoiman.DeleteGroup(22);
       mPoiman.DeleteGroup(23);
       mPoiman.DeleteGroup(24);
       mPoiman.DeleteGroup(25);
       mPoiman.DeleteGroup(0);
       mPoiman.DeleteGroup(33);

       layerMan := mCtrlMan.GetLayerMan();
       layerMan.ClearLayer;            //경로탐색 삭제
    end;
  end;
end;

procedure TFrm_JON52.Clear_MapMode_No2;
var layerMan : IXLayerMan;
begin
  SetDebugeWrite('Frm_JON52.Clear_MapMode_No2');
  if Not Assigned(mCtrlMan) then Exit;
  mPoiman := mCtrlMan.GetPOIMan();
  if Assigned(mPoiman) then
  begin
    begin
       mPoiman.DeleteGroup(22);
       mPoiman.DeleteGroup(23);
       mPoiman.DeleteGroup(24);
       mPoiman.DeleteGroup(25);
       mPoiman.DeleteGroup(0);
       mPoiman.DeleteGroup(33);
       mPoiman.ClearStyle;
    end;
  end;

  if Not Assigned(mCtrlManSingle) then Exit;
  mPoiman := mCtrlManSingle.GetPOIMan();
  if Assigned(mPoiman) then
  begin
    begin
       mPoiman.DeleteGroup(22); //출발지
       mPoiman.DeleteGroup(23);
       mPoiman.DeleteGroup(24); //경유지
       mPoiman.DeleteGroup(25);
       mPoiman.DeleteGroup(0);  //기사
       mPoiman.DeleteGroup(33); //기사
       mPoiman.ClearStyle;
    end;
  end;
  layerMan := mCtrlMan.GetLayerMan();
  layerMan.FindLayer(500);
  layerMan.ClearLayer;
end;

procedure TFrm_JON52.Clear_MapMode_No3;
var layerMan : IXLayerMan;
begin
  SetDebugeWrite('Frm_JON52.Clear_MapMode_No3');
  if Not Assigned(mCtrlManSingle) then Exit;
  mPoiman := mCtrlManSingle.GetPOIMan();
  if Assigned(mPoiman) then
  begin
    begin
       mPoiman.DeleteGroup(22);
       mPoiman.DeleteGroup(23);
       mPoiman.DeleteGroup(24);
       mPoiman.DeleteGroup(25);
       mPoiman.DeleteGroup(0);
       mPoiman.DeleteGroup(33);
       mPoiman.ClearStyle;
    end;
  end;
  layerMan := mCtrlManSingle.GetLayerMan();
  layerMan.FindLayer(500);
  layerMan.ClearLayer;
end;

procedure TFrm_JON52.DelDistance;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(2);
  if layer <> nil then layer.ClearObject();
end;

procedure TFrm_JON52.DrawPolygon;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  layerMan := mCtrlMan.GetLayerMan();

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

procedure TFrm_JON52.DrawPolyline;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  layerMan := mCtrlMan.GetLayerMan();

  style := layerMan.NewStyle(-1);
  style.SetPen(mUtil.RGBColor(0, 0, 255), 2, mUtil.GetConstToValue('PS_DOT'));

  obj := layerMan.NewPolygon(1, -1);
  obj.SetStyle(style);
  obj.SetClosed(1);
  obj.SetCanClick(1);
  obj.SetCanFocus(1);

  obj.SetStateModeNew();
end;

procedure TFrm_JON52.HistoryNext;
begin
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryNext();
end;

procedure TFrm_JON52.HistoryPrev;
begin
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryPrev();
end;

procedure TFrm_JON52.MakeLayerPolyLine(FLon, FLat, TLon, TLat : Integer);
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  mPolygon : IXLayerPolygon;
  mCenterLL : TalMapXLib_TLB.IXPoint;
begin
  mCtrlState := mctrlMan.GetControlState();
  layerMan := mCtrlMan.GetLayerMan();
  mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

  // Step 1. Make XLayer Style
  style := layerMan.FindStyle(500);
  if (style = Nil) then
  begin
    style := layerMan.NewStyle(500);
//    style.SetPen(mUtilL.RGBColor(255, 0, 0), 1, 0);//mUtilL.GetConstToValue('PS_SOLID'));
    style.SetPen(mUtil.RGBColor(13, 136, 230), 5, 0);//mUtilL.GetConstToValue('PS_SOLID'));
  end;
  // Step 2. Make XLayer PolyLine
  mPolygon := layerMan.NewPolygon(0, -1);
  mPolygon.BeginUpdate();
  mPolygon.AddPoint(FLon, FLat);
  mPolygon.AddPoint(TLon, TLat);
  mPolygon.SetCanClick(1);
  mPolygon.SetCanFocus(1);
  mPolygon.SetClosed(0);   // 0: Line, 1: Polygon
  mPolygon.SetStyle(style);
  mPolygon.EndUpdate();
end;

procedure TFrm_JON52.MakeLayerPolyLineSingle(FLon, FLat, TLon, TLat: Integer);
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  mPolygon : IXLayerPolygon;
  mCenterLL : TalMapXLib_TLB.IXPoint;
begin
  mCtrlStateSingle := mCtrlManSingle.GetControlState();
  layerMan := mCtrlManSingle.GetLayerMan();
  mCenterLL := mCtrlStateSingle.GetLLCenter(); // 지도의 중심 좌표

  // Step 1. Make XLayer Style
  style := layerMan.FindStyle(500);
  if (style = Nil) then
  begin
    style := layerMan.NewStyle(500);
    style.SetPen(mUtilSingle.RGBColor(255, 0, 0), 3, 0);//mUtilL.GetConstToValue('PS_SOLID'));
  end;
  // Step 2. Make XLayer PolyLine
  mPolygon := layerMan.NewPolygon(0, -1);
  mPolygon.BeginUpdate();
  mPolygon.AddPoint(FLon, FLat);
  mPolygon.AddPoint(TLon, TLat);
  mPolygon.SetCanClick(1);
  mPolygon.SetCanFocus(1);
  mPolygon.SetClosed(0);   // 0: Line, 1: Polygon

  mPolygon.SetStyle(style);
  mPolygon.EndUpdate();
end;

procedure TFrm_JON52.MakeStatusbar;
var
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

procedure TFrm_JON52.MakeMSGBox;
begin
  mUtil    := mMap.GetUtility;
  mCtrlMan := mMap.GetCtrlMan;
  mUiman   := mCtrlMan.GetUIMan;

  btnImg := mUiman.CreateUI_Image(mUiman);
  btnImg.SetParent(mUiman);
  btnImg.SetUIID(300);
  btnImg.SetImage('areaPanel.png');

//  btnImg.SetBound(pnlBasic.Width - 200, 0, 200, 37);
	btnImg.SetBound(-65, 30, 470, 37);
  btnImg.SetCanClick(0);
  btnImg.SetAlpha(30);
  btnImg.SetAnchor(mUtil.GetConstToValue('TMUIOBJ_ANCHOR_LEFT') or mUtil.GetConstToValue('TMUIOBJ_ANCHOR_TOP'));

  stcMsgArea := mUiman.CreateUI_StaticText(mUiman);
  stcMsgArea.SetParent(btnImg);
	stcMsgArea.SetUIID(301);
//	stcMsgArea.SetBound(10, 4, 180, 30);
	stcMsgArea.SetBound(85, 4, 280, 30);

	stcMsgArea.SetUIObjFontColor(mUtil.RGBColor(255, 255, 255));
	stcMsgArea.SetFont(10, 1, ('돋움'),0);
	stcMsgArea.SetUIObjFontColor(mUtil.RGBColor(255, 255, 255));
  stcMsgArea.SetCaption('');
	stcMsgArea.SetCanFocus(0);
	stcMsgArea.SetCanClick(0);
end;

procedure TFrm_JON52.MakeStatusbarSingle;
var
  mImageman : IXImageMan;
  mRootPath : string;
begin
  SetDebugeWrite('Frm_JON52.MakeStatusbarSingle');
	mUimanSingle := mCtrlManSingle.GetUIMan();
	mCtrlStateSingle := mCtrlManSingle.GetControlState();

	mImageman := mCtrlManSingle.GetImageMan();
  mRootPath := ExtractFilePath(Application.ExeName);
  mImageman.SetDefaultPath(mRootPath + '\Image\');

	btnImg := mUimanSingle.CreateUI_Image(mUimanSingle);
	btnImg.SetParent(mUimanSingle);
	btnImg.SetUIID(306);
	btnImg.SetImage('areaPanel.png');
	btnImg.SetBound(-65, 0, 470, 37);
	btnImg.SetCanClick(0);
	btnImg.SetAlpha(30);
	btnImg.SetAnchor(mUtilSingle.GetConstToValue('TMUIOBJ_ANCHOR_LEFT') or mUtilSingle.GetConstToValue('TMUIOBJ_ANCHOR_TOP'));

	stcMsgAreaSingle := mUimanSingle.CreateUI_StaticText(mUimanSingle);
	stcMsgAreaSingle.SetParent(btnImg);
	stcMsgAreaSingle.SetUIID(307);
	stcMsgAreaSingle.SetBound(85, 4, 280, 30);
	stcMsgAreaSingle.SetUIObjFontColor(mUtilSingle.RGBColor(255, 255, 255));
	stcMsgAreaSingle.SetFont(10, 1, ('돋움'),0);
	stcMsgAreaSingle.SetUIObjFontColor(mUtilSingle.RGBColor(255, 255, 255));
	stcMsgAreaSingle.SetCanFocus(0);
	stcMsgAreaSingle.SetCanClick(0);
end;

procedure TFrm_JON52.MakeMSGBoxSingle;
begin
  mUtilSingle    := mSingleMap.GetUtility;
  mCtrlManSingle := mSingleMap.GetCtrlMan;
  mUimanSingle   := mCtrlManSingle.GetUIMan;

  btnImg := mUimanSingle.CreateUI_Image(mUimanSingle);
  btnImg.SetParent(mUimanSingle);
  btnImg.SetUIID(300);
  btnImg.SetImage('areaPanel.png');
//	btnImg.SetBound(-65, 0, 470, 37);
	btnImg.SetBound(-65, 30, 470, 37);
  btnImg.SetCanClick(0);
  btnImg.SetAlpha(30);
  btnImg.SetAnchor(mUtilSingle.GetConstToValue('TMUIOBJ_ANCHOR_LEFT') or mUtilSingle.GetConstToValue('TMUIOBJ_ANCHOR_TOP'));

  stcMsgAreaSingle := mUimanSingle.CreateUI_StaticText(mUimanSingle);
  stcMsgAreaSingle.SetParent(btnImg);
	stcMsgAreaSingle.SetUIID(301);
	stcMsgAreaSingle.SetBound(85, 4, 280, 30);
//	stcMsgArea.SetBound(pnlBottom.Width - 405, 4, 280, 30);
	stcMsgAreaSingle.SetUIObjFontColor(mUtilSingle.RGBColor(255, 255, 255));
	stcMsgAreaSingle.SetFont(10, 1, ('돋움'),0);
	stcMsgAreaSingle.SetUIObjFontColor(mUtilSingle.RGBColor(255, 255, 255));
  stcMsgAreaSingle.SetCaption('');
	stcMsgAreaSingle.SetCanFocus(0);
	stcMsgAreaSingle.SetCanClick(0);
end;

procedure TFrm_JON52.Map_Rotate;
begin
  SetDebugeWrite('Frm_JON52.Map_Rotate');
  mCtrlMan.SetMapRotation(1);
end;

function TFrm_JON52.Map_SetLevel(level: Integer): Integer;
begin
  SetDebugeWrite('Frm_JON52.Map_SetLevel');
  if (level < minLogicalLevel) then Exit;
  if (level > maxLogicalLevel) then Exit;
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
  mCtrlState.SetLevel(level);
end;

function TFrm_JON52.Map_SetLevelS(level: Integer): Integer;
begin
  SetDebugeWrite('Frm_JON52.Map_SetLevelS');
  if (level < minLogicalLevel) then Exit;
  if (level > maxLogicalLevel) then Exit;
  mCtrlManSingle := mSingleMap.GetCtrlMan();
  mCtrlStateSingle := mCtrlManSingle.GetControlState;
  mCtrlStateSingle.SetLevel(level);
end;

procedure TFrm_JON52.Map_ZoomIn;
begin
  SetDebugeWrite('Frm_JON52.Map_ZoomIn');
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
	if (mCtrlState.GetLevel() > minLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() -1);
end;

procedure TFrm_JON52.Map_ZoomInS;
begin
  SetDebugeWrite('Frm_JON52.Map_ZoomInS');
  mCtrlManSingle := mSingleMap.GetCtrlMan();
  mCtrlStateSingle := mCtrlManSingle.GetControlState;
	if (mCtrlStateSingle.GetLevel() > minLogicalLevel) then mCtrlStateSingle.SetLevel(mCtrlStateSingle.GetLevel() -1);
end;

procedure TFrm_JON52.Map_ZoomOut;
begin
  SetDebugeWrite('Frm_JON52.Map_ZoomOut');
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
	if (mCtrlState.GetLevel() < maxLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() +1);
end;

procedure TFrm_JON52.Map_ZoomOutS;
begin
  SetDebugeWrite('Frm_JON52.Map_ZoomOutS');
  mCtrlManSingle := mSingleMap.GetCtrlMan();
  mCtrlStateSingle := mCtrlManSingle.GetControlState;
	if (mCtrlStateSingle.GetLevel() < maxLogicalLevel) then mCtrlStateSingle.SetLevel(mCtrlStateSingle.GetLevel() +1);
end;

procedure TFrm_JON52.MapLevel_Master(level: INTEGER);
var i, SetEnabled, SetDisable : Integer;
  mLevelBarBg : IXUIButton;
begin
  SetDebugeWrite('Frm_JON52.MapLevel_Master');
  if not Assigned(mCtrlman) then Exit;

	mUiman := mCtrlman.GetUIMan();
  mLevelBarBg := mUiman.CreateUI_Button(mUiman);
	if mLevelBarBg = nil then Exit;

	// Image Index 설정 0~3
	SetEnabled := 0;
	SetDisable := 1;
	for i := 0 to 12  do
  begin
    if not Assigned(mBtnLevle[i]) then Continue;
		if level = i then
    begin
      mBtnLevle[i].SetItemIndex(SetEnabled)
		end else
    begin
      mBtnLevle[i].SetItemIndex(SetDisable);
    end;
	end;
end;

procedure TFrm_JON52.MapLevel_MasterSingle(level: INTEGER);
var i, SetEnabled, SetDisable : Integer;
  mLevelBarBg : IXUIButton;
begin
  SetDebugeWrite('Frm_JON52.MapLevel_MasterSingle');
  if not Assigned(mCtrlmanSingle) then Exit;

	mUimanSingle := mCtrlmanSingle.GetUIMan();
  mLevelBarBg := mUimanSingle.CreateUI_Button(mUimanSingle);
	if mLevelBarBg = nil then Exit;

	// Image Index 설정 0~3
	SetEnabled := 0;
	SetDisable := 1;
	for i := 0 to 12  do
  begin
    if not Assigned(mBtnLevleS[i]) then Continue;
		if level = i then
      mBtnLevleS[i].SetItemIndex(SetEnabled)
		else
      mBtnLevleS[i].SetItemIndex(SetDisable);
	end;
end;

procedure TFrm_JON52.Proc_MapMode_No1;
Var i : Integer;
  sy, sx : string;
  rlDirKm : Real;
  AYMax, AXMax, AYMin, AXMin : integer;
  FLon, FLat, TLon, TLat, iDx : integer;
  ViaLon, ViaLat : array of integer;
begin
  if CONFRec.ConfSlip = 'A' then Exit;

  if (CONFRec.DepLat = '') or (CONFRec.DepLng = '') then Exit;
  Try
    pnlBasic.Visible := True;
    pnlBasic.Align := alClient;
    lblBasic.Visible := False;
    pnlBasic.BringToFront;

    pnlSingleMap.Visible := False;

    Clear_MapMode_No1;
    // 고객과 기사와의 거리 표시
//    fillChar(sYList,sizeof(sYList),0);
//    fillChar(sXList,sizeof(sXList),0);
//   SetLength(sYList, CONFRec.ViaLat.Count + 2);
//    SetLength(sXList, CONFRec.ViaLat.Count + 2);

    if (copy(CONFRec.DepLng,1,2) = '12') and (copy(CONFRec.DepLat,1,1) = '3') then
    begin
      sy := getWGS84(CONFRec.DepLng);
      sx := '0'+ getWGS84(CONFRec.DepLat);
      WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);

      Mark_Symbol(ws_Lon, ws_Lat, 2);

      sYList[0] := ws_Lon;
      sXList[0] := ws_lat;
      FLon := ws_Lon;
      FLat := ws_lat;
    end;

    if (copy(CONFRec.ArrLng,1,2) = '12') and (copy(CONFRec.ArrLat,1,1) = '3') then
    begin
      sy := getWGS84(CONFRec.ArrLng);
      sx := '0'+ getWGS84(CONFRec.ArrLat);
      WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);
      Mark_Symbol(ws_Lon, ws_Lat, 3);
      sYList[1] := ws_Lon;
      sXList[1] := ws_lat;
      TLon := ws_Lon;
      TLat := ws_lat;
    end;
    iDx := 2;
    if CONFRec.ViaLat.Count > 0 then
    begin
      SetLength(ViaLon, CONFRec.ViaLng.Count);
      SetLength(ViaLat, CONFRec.ViaLat.Count);
      for i := 0 to CONFRec.ViaLat.Count - 1 do
      begin
        if (copy(CONFRec.ViaLng[i],1,2) = '12') and (copy(CONFRec.ViaLat[i],1,1) = '3') then
        begin
          sy := getWGS84(FormatFloat('0.000000',strtofloat(CONFRec.ViaLng[i])));
          sx := '0'+ getWGS84(FormatFloat('0.000000',strtofloat(CONFRec.ViaLat[i])));
          WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);
          ViaCnt := i;
          Mark_Symbol(ws_Lon, ws_Lat, 4);

          sYList[iDx] := ws_Lon;
          sXList[iDx] := ws_lat;
          ViaLon[i] := ws_Lon;
          ViaLat[i] := ws_lat;
          inc(iDx);
        end;
      end;
    end;

    if ( cbRoute.Checked ) then
    begin
      rlDirKm := proc_dis_alculation;
      Proc_RouteLine(FLon, FLat, TLon, TLat, ViaLon, ViaLat, rlDirKm);
    end else
    begin
      AddMsg('A');
    end;

    if (copy(CONFRec.WKLocLng,1,2) = '12') and (copy(CONFRec.WKLocLat,1,1) = '3') then
    begin
      sy := getWGS84(CONFRec.WKLocLng);
      sx := '0'+ getWGS84(CONFRec.WKLocLat);
      WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);
      Mark_Symbol(ws_Lon, ws_Lat, 5);
      sYList[iDx+1] := ws_Lon;
      sXList[iDx+1] := ws_lat;
    end;

    i := 0;
    while i <= (CONFRec.ViaLat.Count -1) + 2 do
    begin
      if i = 0 then AYMax := sYList[i]
      else
      begin
        if AYMax < sYList[i] then
          AYMax := sYList[i];
      end;

      if i = 0 then AXMax := sXList[i]
      else
      begin
        if AXMax < sXList[i] then
          AXMax := sXList[i];
      end;

      if i = 0 then
      begin
        if sYList[i] > 0 then
          AYMin := sYList[i]
      end else
      begin
        if sYList[i] > 0 then
          if AYMin > sYList[i] then
            AYMin := sYList[i];
      end;

      if i = 0 then
      begin
        if sXList[i] > 0 then
          AXMin := sXList[i]
      end else
      begin
        if sXList[i] > 0 then
          if AXMin > sXList[i] then
            AXMin := sXList[i];
      end;
      inc(i);
    end;

    SetMapRectLevel(AYMax, AXMin, AYMin, AXMax);
    WkSearch('1', 0, sYList[0], sXList[0]);
  except on E: Exception do
    Assert(False, E.Message);
  End;
end;

procedure TFrm_JON52.pnlBasicResize(Sender: TObject);
begin
  if sts_Chk then
  begin
    DestroyUI;
    CreateLevelBarG;
  end;
end;

procedure TFrm_JON52.PnlSingleMapResize(Sender: TObject);
begin
  if sts_Chk then
  begin
    DestroyUIS;
    CreateLevelBarGS;
  end;
end;

function TFrm_JON52.proc_dis_alculation : Real;
var i: Integer;
    sy, sx, vy, vx, vy1, vx1, ey, ex : String;
begin
  SetDebugeWrite('TFrm_JON52.proc_dis_alculation');
  Result := 0;
  try
    if (CONFRec.DepLng = '') or (CONFRec.DepLat = '') or
  		 (CONFRec.ArrLng = '') or (CONFRec.ArrLat = '') then Exit;

  	if CONFRec.ViaLat.Count = 0 then
    begin
      sy := getWGS84(CONFRec.DepLng);
      sx := '0'+ getWGS84(CONFRec.DepLat);

      ey := getWGS84(CONFRec.ArrLng);
      ex := '0'+ getWGS84(CONFRec.ArrLat);

      Result := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
        sx, sy, ex, ey), ffNumber, 3, 1), 0.0);  // 배수 없는 직선거리 임시 저장
    end else
    if CONFRec.ViaLat.Count = 1 then
    begin
      sy := getWGS84(CONFRec.DepLng);
      sx := '0'+ getWGS84(CONFRec.DepLat);

      vy := getWGS84(CONFRec.ViaLng[0]);
      vx := '0'+ getWGS84(CONFRec.ViaLat[0]);

      ey := getWGS84(CONFRec.ArrLng);
      ex := '0'+ getWGS84(CONFRec.ArrLat);

      Result := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
  			sx, sy, vx, vy), ffNumber, 3, 1), 0.0)
  			+ StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
  			vx, vy, ex, ey), ffNumber, 3, 1), 0.0);  // 배수 없는 직선거리 임시 저장
    end else
    begin
      sy := getWGS84(CONFRec.DepLng);
      sx := '0'+ getWGS84(CONFRec.DepLat);

      vy := getWGS84(CONFRec.ViaLng[0]);
      vx := '0'+ getWGS84(CONFRec.ViaLat[0]);

      Result := StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
        sx, sy, vx, vy), ffNumber, 3, 1), 0.0);  // 배수 없는 직선거리 임시 저장
      for i := 1 to CONFRec.ViaLat.Count - 2 do
      begin
        vy1 := getWGS84(CONFRec.ViaLng[i-1]);
        vx1 := '0'+ getWGS84(CONFRec.ViaLat[i-1]);

        vy := getWGS84(CONFRec.ViaLng[i]);
        vx := '0'+ getWGS84(CONFRec.ViaLat[i]);

         Result := Result +
  				StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
          vy1, vx1, vy, vx), ffNumber, 3, 1), 0.0); // 배수 없는 직선거리 임시 저장
      end;

      ey := getWGS84(CONFRec.ArrLng);
      ex := '0'+ getWGS84(CONFRec.ArrLat);

      vy := CONFRec.ViaLng[CONFRec.ViaLng.Count - 1];
      vx := CONFRec.ViaLng[CONFRec.ViaLat.Count - 1];

      Result := Result + StrToFloatDef(FloatToStrF(GetRoadLength(STANDFUNCPATHFILE,
        vx, vy, ex, ey), ffNumber, 3, 1), 0.0);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.Proc_MapMode_Bessel1( fDirKm : Real );
Var i : Integer;
    sy, sx : string;
    AYMax, AXMax, AYMin, AXMin : integer;
    FLon, FLat, TLon, TLat, iDx : integer;
    ViaLon, ViaLat : array of integer;
begin
  if (CONFRec.DepLat = '') or (CONFRec.DepLng = '') then Exit;
  if (CONFRec.ArrLat = '') or (CONFRec.ArrLng = '') then Exit;

  Try
    Clear_MapMode_No1;
    pnlSingleMap.Visible := False;
    lblBasic.Visible := False;
    pnlBasic.Align := alClient;
    pnlBasic.Visible := True;
    pnlBasic.BringToFront;

    if (Trim(CONFRec.DepLng) <> '') and (Trim(CONFRec.DepLat) <> '') then
    begin
      WGS84ToBessel(CONFRec.DepLng, CONFRec.DepLat, ws_Lon, ws_Lat);
      Mark_Symbol(ws_Lon, ws_Lat, 2);

      sYList[0] := ws_Lon;
      sXList[0] := ws_lat;
      FLon := ws_Lon;
      FLat := ws_lat;
    end;

    if (Trim(CONFRec.ArrLng) <> '') and (Trim(CONFRec.ArrLat) <> '') then
    begin
      WGS84ToBessel(CONFRec.ArrLng, CONFRec.ArrLat, ws_Lon, ws_Lat);
      Mark_Symbol(ws_Lon, ws_Lat, 3);

      sYList[1] := ws_Lon;
      sXList[1] := ws_lat;
      TLon := ws_Lon;
      TLat := ws_lat;
    end;

    iDx := 2;
    if CONFRec.ViaLat.Count > 0 then
    begin
      SetLength(ViaLon, CONFRec.ViaLng.Count);
      SetLength(ViaLat, CONFRec.ViaLat.Count);
      for i := 0 to CONFRec.ViaLat.Count - 1 do
      begin
        if (Trim(CONFRec.ViaLng[i]) <> '') and (Trim(CONFRec.ViaLat[i]) <> '') then
        begin
          SetDebugeWrite('3. SmartSR Via  : ' + CONFRec.ViaLng[i] + ',' + CONFRec.ViaLat[i]);

          WGS84ToBessel(CONFRec.ViaLng[i], CONFRec.ViaLat[i], ws_Lon, ws_Lat);
          ViaCnt := i;
          Mark_Symbol(ws_Lon, ws_Lat, 4);

          sYList[iDx] := ws_Lon;
          sXList[iDx] := ws_lat;
          ViaLon[i] := ws_Lon;
          ViaLat[i] := ws_lat;
          inc(iDx);
        end;
      end;
    end;


    Proc_RouteLine(FLon, FLat, TLon, TLat, ViaLon, ViaLat, fDirKm);

    i := 0;
    while i <= (CONFRec.ViaLat.Count -1) + 2 do
    begin
      if i = 0 then AYMax := sYList[i]
      else
      begin
        if AYMax < sYList[i] then
          AYMax := sYList[i];
      end;
      if i = 0 then AXMax := sXList[i]
      else
      begin
        if AXMax < sXList[i] then
          AXMax := sXList[i];
      end;

      if i = 0 then
      begin
        if sYList[i] > 0 then
          AYMin := sYList[i]
      end else
      begin
        if sYList[i] > 0 then
          if AYMin > sYList[i] then
            AYMin := sYList[i];
      end;

      if i = 0 then
      begin
        if sXList[i] > 0 then
          AXMin := sXList[i]
      end else
      begin
        if sXList[i] > 0 then
          if AXMin > sXList[i] then
            AXMin := sXList[i];
      end;
      inc(i);
    end;

    SetMapRectLevel(AYMax, AXMin, AYMin, AXMax);
  except on E: Exception do
    Assert(False, E.Message);
  End;
end;

procedure TFrm_JON52.Proc_MapMode_No2;
Var i : Integer;
  sy, sx : string;
  AYMax, AXMax, AYMin, AXMin : integer;
begin
  if CONFRec.ConfSlip = 'A' then Exit;

  if (CONFRec.DepLat = '') or (CONFRec.DepLng = '') then Exit;
  Try
    pnlBasic.Align := alLeft;
    pnlBasic.width := self.Width div 2;
    lblBasic.Visible := True;
    pnlBasic.Visible := True;
    pnlBasic.BringToFront;

    pnlSingleMap.Visible := True;
    pnlSingleMap.BringToFront;

    Clear_MapMode_No2;
    // 고객과 기사와의 거리 표시
//    fillChar(sYList,sizeof(sYList),0);
//    fillChar(sXList,sizeof(sXList),0);
//    SetLength(sYList, CONFRec.ViaLat.Count + 3);
//    SetLength(sXList, CONFRec.ViaLat.Count + 3);

    if (copy(CONFRec.DepLng,1,2) = '12') and (copy(CONFRec.DepLat,1,1) = '3') then
    begin
      sy := getWGS84(CONFRec.DepLng);
      sx := '0'+ getWGS84(CONFRec.DepLat);
      WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);

      Mark_Symbol(ws_Lon, ws_Lat, 2);

      sYList[0] := ws_Lon;
      sXList[0] := ws_lat;
    end;

    if (copy(CONFRec.ArrLng,1,2) = '12') and (copy(CONFRec.ArrLat,1,1) = '3') then
    begin
      sy := getWGS84(CONFRec.ArrLng);
      sx := '0'+ getWGS84(CONFRec.ArrLat);
      WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);
      Mark_SymbolSingle(ws_Lon, ws_Lat, 3);
      sYList[1] := ws_Lon;
      sXList[1] := ws_lat;
    end;

    ViaCnt := 0;
    if CONFRec.ViaLat.Count > 0 then
    begin
      for i := 0 to CONFRec.ViaLat.Count - 1 do
      begin
        if (copy(CONFRec.ViaLng[i],1,2) = '12') and (copy(CONFRec.ViaLat[i],1,1) = '3') then
        begin
          sy := getWGS84(FormatFloat('0.000000',strtofloat(CONFRec.ViaLng[i])));
          sx := '0'+ getWGS84(FormatFloat('0.000000',strtofloat(CONFRec.ViaLat[i])));
          WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);
          ViaCnt := i;
          Mark_SymbolSingle(ws_Lon, ws_Lat, 4);

          sYList[i+1] := ws_Lon;
          sXList[i+1] := ws_lat;
        end;
      end;
    end;

    if (copy(CONFRec.WKLocLng,1,2) = '12') and (copy(CONFRec.WKLocLat,1,1) = '3') then
    begin
      if (CONFRec.DepLng = '') or (CONFRec.DepLat = '') or (CONFRec.WKLocLng = '') or (CONFRec.WKLocLat = '') then
      else
        GET_DIST(StrToFloat(CONFRec.DepLng), StrToFloat(CONFRec.DepLat), StrToFloat(CONFRec.WKLocLng), StrToFloat(CONFRec.WKLocLat)) ;

      sy := getWGS84(CONFRec.WKLocLng);
      sx := '0'+ getWGS84(CONFRec.WKLocLat);

      WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);
      Mark_Symbol(ws_Lon, ws_Lat, 5);
      sYList[ViaCnt+1+1] := ws_Lon;
      sXList[ViaCnt+1+1] := ws_lat;

      MakeLayerPolyLine(sYList[0], sXList[0], ws_Lon, ws_lat);
    end;

    i := 0;
    while i <= (CONFRec.ViaLat.Count -1) + 3 do
    begin
      if i = 0 then AYMax := sYList[i]
      else
      begin
        if AYMax < sYList[i] then
          AYMax := sYList[i];
      end;
      if i = 0 then AXMax := sXList[i]
      else
      begin
        if AXMax < sXList[i] then
          AXMax := sXList[i];
      end;

      if i = 0 then
      begin
        if sYList[i] > 0 then
          AYMin := sYList[i]
      end else
      begin
        if sYList[i] > 0 then
          if AYMin > sYList[i] then
            AYMin := sYList[i];
      end;

      if i = 0 then
      begin
        if sXList[i] > 0 then
          AXMin := sXList[i]
      end else
      begin
        if sXList[i] > 0 then
          if AXMin > sXList[i] then
            AXMin := sXList[i];
      end;
      inc(i);
    end;

    if CONFRec.WKLocLng <> '' then
      SetMapRectLevel(sYList[0], sXList[0], ws_Lon, ws_lat)
    else
      SetMapRectLevel(sYList[0], sXList[0], sYList[0], sXList[0]);

    SetMapRectLevelSingle(AYMax, AXMin, AYMin, AXMax);

    WkSearch('1', 0, sYList[0], sXList[0]);

    AddMsg('B');
  except on E: Exception do
    Assert(False, E.Message);
  End;
end;

procedure TFrm_JON52.Proc_MapMode_No3(AGubun : integer); //0 :출발지 + 기사, 1 : 도착지
Var sy, sx : string;
    iPointLng, iPointLat, iWkLng, iWkLat : integer;
begin
  if CONFRec.ConfSlip = 'A' then Exit;

  if AGubun = 0 then
  begin
    if (CONFRec.DepLat = '') or (CONFRec.DepLng = '') then Exit
  end else
  if AGubun = 1 then
  begin
    if (CONFRec.ArrLat = '') or (CONFRec.ArrLng = '') then Exit;
  end;

  try
    pnlBasic.Visible := False;
    lblBasic.Visible := False;

    pnlSingleMap.Visible := True;
    pnlSingleMap.BringToFront;

    Clear_MapMode_No3;

    if AGubun = 0 then
    begin
      if (copy(CONFRec.DepLng,1,2) = '12') and (copy(CONFRec.DepLat,1,1) = '3') then
      begin
        sy := getWGS84(CONFRec.DepLng);
        sx := '0'+ getWGS84(CONFRec.DepLat);
        WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);

        Mark_SymbolSingle(ws_Lon, ws_Lat, 2);

        iPointLng := ws_Lon;
        iPointLat := ws_lat;

        if (copy(CONFRec.WKLocLng,1,2) = '12') and (copy(CONFRec.WKLocLat,1,1) = '3') then
        begin
          if (CONFRec.DepLng = '') or (CONFRec.DepLat = '') or (CONFRec.WKLocLng = '') or (CONFRec.WKLocLat = '') then
          else
            GET_DIST(StrToFloat(CONFRec.DepLng), StrToFloat(CONFRec.DepLat), StrToFloat(CONFRec.WKLocLng), StrToFloat(CONFRec.WKLocLat)) ;

          sy := getWGS84(CONFRec.WKLocLng);
          sx := '0'+ getWGS84(CONFRec.WKLocLat);
          WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);
          Mark_SymbolSingle(ws_Lon, ws_Lat, 5);
          iWkLng := ws_Lon;
          iWkLat := ws_lat;

          MakeLayerPolyLineSingle(iPointLng, iPointLat, iWkLng, iWkLat);
        end;
        AddMsg('C');
      end;

      WkSearchSingle('1',0, iPointLng, iPointLat);

      if iWkLng <> 0 then
        SetMapRectLevelSingle(iPointLng, iPointLat, iWkLng, iWkLat)
      else
        SetMapRectLevelSingle(iPointLng, iPointLat, iPointLng, iPointLat);
    end else
    if AGubun = 1 then
    begin
      if (copy(CONFRec.ArrLng,1,2) = '12') and (copy(CONFRec.ArrLat,1,1) = '3') then
      begin
        sy := getWGS84(CONFRec.ArrLng);
        sx := '0'+ getWGS84(CONFRec.ArrLat);
        WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);
        Mark_SymbolSingle(ws_Lon, ws_Lat, 3);
        iPointLng := ws_Lon;
        iPointLat := ws_lat;
        AddMsg('D');
      end;
      SetMapRectLevelSingle(iPointLng, iPointLat, iPointLng, iPointLat);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  End;
end;

procedure TFrm_JON52.ObjectModify;
var
  baseman : IXBaseMan;
  layerMan : IXLayerMan;
begin
  SetDebugeWrite('Frm_JON52.ObjectModify');
//  mCtrlMan := mMap.GetCtrlMan();
//  mUtil := mMap.GetUtility();
  layerman := mCtrlman.GetLayerMan();

  baseman := layerman.CastToBaseManager();
  if baseman.GetManMode = mUtil.GetConstToValue('TMMAN_MODE_EDIT') then
      baseman.SetManMode(mUtil.GetConstToValue('TMMAN_MODE_NONE'))
  else baseman.SetManMode(mUtil.GetConstToValue('TMMAN_MODE_EDIT'));
end;

procedure TFrm_JON52.RemovePolygon;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  SetDebugeWrite('Frm_JON52.RemovePolygon');
//  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(1);
  if layer <> nil then layer.ClearObject();
end;

procedure TFrm_JON52.SaveImage;
var filename : WideString;
begin
  SetDebugeWrite('Frm_JON52.SaveImage');
//  mUtil := mMap.GetUtility();
  filename := mUtil.SaveImageDialog('C:\', 'MapImage.png');
//  mMap.SaveImage(filename);
end;

procedure TFrm_JON52.Show;
begin
  ShowWindow(Handle, SW_SHOWNA);
  Visible := True;
end;

procedure TFrm_JON52.ShowThemeForm;
var
  thememan : IXThemeMan;
begin
  SetDebugeWrite('Frm_JON52.ShowThemeForm');
//  mCtrlMan := mMap.GetCtrlMan();
  thememan := mCtrlMan.GetThemeMan();
  thememan.ShowForm();
end;

procedure TFrm_JON52.tmrPopupTimer(Sender: TObject);
begin
  tmrPopup.Enabled := False;
  Frm_Main.pCallMapPopup( chkCallMapPopup.Checked );
end;

procedure TFrm_JON52.View3D;
var
  state : Integer;
  mtype : Integer;
begin
//  mCtrlMan := mMap.GetCtrlMan();
//  mUtil := mMap.GetUtility;
  mUiman := mCtrlMan.GetUIMan;
  mCtrlState := mCtrlMan.GetControlState;
  mDpsize := mCtrlState.GetSizeDP;
//  mCtrlState := mMap.GetCtrlMan.GetControlState;
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

procedure TFrm_JON52.ViewText;
var
  mMapMan : IXMapMan;
begin
//  mMapMan := mMap.GetCtrlMan.GetMapMan();
  if mMapMan.GetVisible = 5 then mMapMan.SetVisible(7)
  else
  if mMapMan.GetVisible = 7 then mMapMan.SetVisible(5);
end;

procedure TFrm_JON52.GeneralInit;
begin
  SetDebugeWrite('Frm_JON52.GeneralInit');
	maxLogicalLevel := 13 -1;
  minLogicalLevel := 0;

  CreateLevelBarG;
  mCtrlState.SetLevel(3);
  MakeStatusbar;
  MakeMSGBox;
end;

procedure TFrm_JON52.DestroyUI;
var
obj : IXUIObj;
begin
  try
    if ( Assigned(mMap) ) And ( Assigned(mCtrlMan) ) then
    begin
      obj := mCtrlMan.GetUIMan.GetChildByUIID(1011);
      if obj <> nil then
      obj.DestroyUIObj();
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.DestroyUIS;
var
obj : IXUIObj;
begin
  try
    if ( Assigned(mSingleMap) ) And ( Assigned(mCtrlManSingle) ) then
    begin
      obj := mCtrlManSingle.GetUIMan.GetChildByUIID(4011);
      if obj <> nil then
      obj.DestroyUIObj();
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.CreateLevelBarG;
var
  mImageman : IXImageMan;
  mBg, mLevelBarBg, mBtnZoomIn, mBtnZoomOut   : IXUIButton;
  i, UIID, CY  : Integer;
  imgName : string;
  mRootPath : string;
  bCreateLevelBar : Boolean;
begin
  try
    if ( Not Assigned(mMap) ) then Exit;

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

    mUiman.SetShowCompass(1);
    mImageman := mCtrlMan.GetImageMan;
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath +'\Image\');

    // BackGround Image
    mBg := mUiman.CreateUI_Button(mUiman);
    mBg.SetParent(mUiman);
    mBg.SetUIID(1011);
    mBg.SetImageList('bg.png', 24, 163);
    mBg.SetBound(mDpsize.GetCX-38, (mDpsize.GetCY - 170) div 2, 28, 170);
    mBg.SetAlpha(70);
    mBg.AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

    // Zoom In Button
    mBtnZoomIn := mUiman.CreateUI_Button(mUiman);
    mBtnZoomIn.SetParent(mBg);
    mBtnZoomIn.SetUIID(1012);
    mBtnZoomIn.SetImageList('btn_minus.png', 16, 15);
    mBtnZoomIn.SetBound(6, 5, 16, 15);
  	mBtnZoomIn.SetCanClick(1);
  	mBtnZoomIn.SetCanDrag(1);
  	mBtnZoomIn.SetDragTracker(1);
  	mBtnZoomIn.AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

    // Zoom Out Button
  	mBtnZoomOut := mUiman.CreateUI_Button(mUiman);
  	mBtnZoomOut.SetParent(mBg);
  	mBtnZoomOut.SetUIID(1013);
  	mBtnZoomOut.SetImageList('btn_plus.png', 16, 15);
  	mBtnZoomOut.SetBound(6, mBg.GetItemHeight()-18, 16, 15);
  	mBtnZoomOut.SetCanClick(1);
  	mBtnZoomOut.SetCanDrag(1);
  	mBtnZoomOut.SetDragTracker(1);
  	mBtnZoomOut.AddEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtil.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or	mUtil.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

    UIID := 1014;
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
  	// 현재 Level 표출
  	MapLevel_Master(mCtrlState.GetLevel());
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.CreateLevelBarGS;
var
  mImageman : IXImageMan;
  mBg, mLevelBarBg, mBtnZoomIn, mBtnZoomOut   : IXUIButton;
  i, UIID, CY  : Integer;
  imgName : string;
  mRootPath : string;
  bCreateLevelBar : Boolean;
begin
  try
    if (Not Assigned(mSingleMap) ) then Exit;

    if bCreateLevelBar = true then     // true가 됤 있나?..의문
    begin
  		mLevelBarBg.DestroyUIObj();
  		for i := 0 to 12 do
      begin
  			mBtnLevleS[i].DestroyUIObj();
  		end;
  		bCreateLevelBar := false;
  		Exit;
    end;
    mCtrlManSingle := mSingleMap.GetCtrlMan();
    mUimanSingle := mCtrlManSingle.GetUIMan;
    mCtrlStateSingle := mCtrlManSingle.GetControlState;
		mDpsizeSingle := mCtrlStateSingle.GetSizeDP;
    mUtilSingle := mSingleMap.GetUtility;

    mUimanSingle.SetShowCompass(1);
    mImageman := mCtrlManSingle.GetImageMan;
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath +'\Image\');

    // BackGround Image
    mBg := mUimanSingle.CreateUI_Button(mUimanSingle);
    mBg.SetParent(mUimanSingle);
    mBg.SetUIID(4011);
    mBg.SetImageList('bg.png', 24, 163);
    mBg.SetBound(mDpsizeSingle.GetCX-38, (mDpsizeSingle.GetCY - 170) div 2, 28, 170);
    mBg.SetAlpha(70);
    mBg.AddEventMode(mUtilSingle.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtilSingle.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

    // Zoom In Button
    mBtnZoomIn := mUimanSingle.CreateUI_Button(mUimanSingle);
    mBtnZoomIn.SetParent(mBg);
    mBtnZoomIn.SetUIID(4012);
    mBtnZoomIn.SetImageList('btn_minus.png', 16, 15);
    mBtnZoomIn.SetBound(6, 5, 16, 15);
  	mBtnZoomIn.SetCanClick(1);
  	mBtnZoomIn.SetCanDrag(1);
  	mBtnZoomIn.SetDragTracker(1);
  	mBtnZoomIn.AddEventMode(mUtilSingle.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtilSingle.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtilSingle.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

    // Zoom Out Button
  	mBtnZoomOut := mUimanSingle.CreateUI_Button(mUimanSingle);
  	mBtnZoomOut.SetParent(mBg);
  	mBtnZoomOut.SetUIID(4013);
  	mBtnZoomOut.SetImageList('btn_plus.png', 16, 15);
  	mBtnZoomOut.SetBound(6, mBg.GetItemHeight()-18, 16, 15);
  	mBtnZoomOut.SetCanClick(1);
  	mBtnZoomOut.SetCanDrag(1);
  	mBtnZoomOut.SetDragTracker(1);
  	mBtnZoomOut.AddEventMode(mUtilSingle.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtilSingle.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or	mUtilSingle.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));

    UIID := 4014;
    CY := mBtnZoomIn.GetHeight + 9;
    for i := 12 downto 0 do
    begin
  		mBtnLevleS[i] := mUimanSingle.CreateUI_Button(mUimanSingle);
  		mBtnLevleS[i].SetParent(mBg);
  	  mBtnLevleS[i].SetUIID(UIID);
  		imgName := 'level_' + IntToStr(i) + '.png';
  		mBtnLevleS[i].SetImageList(imgName, 22, 9);
  		mBtnLevleS[i].SetBound(3, CY, 22, 9);
  		mBtnLevleS[i].SetCanClick(1);
  		mBtnLevleS[i].SetCanDrag(1);
  		mBtnLevleS[i].SetDragTracker(1);
  		mBtnLevleS[i].SetImageAutoChange(0);
  		mBtnLevleS[i].SetItemIndex(1);
  		mBtnLevleS[i].AddEventMode(mUtilSingle.GetConstToValue('TMEVENTTYPE_MOUSEUP') or mUtilSingle.GetConstToValue('TMEVENTTYPE_MOUSELEAVE') or mUtilSingle.GetConstToValue('TMEVENTTYPE_MOUSEENTER'));
  		CY := CY + 9;
  		Inc(UIID);
  	end;
  	// 현재 Level 표출
  	MapLevel_MasterSingle(mCtrlStateSingle.GetLevel());
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.GeneralInit_SingleMap;
begin
  SetDebugeWrite('Frm_JON52.GeneralInit_SingleMap');
	maxLogicalLevel := 13 -1;
  minLogicalLevel := 0;

  CreateLevelBarGS;
  mCtrlStateSingle.SetLevel(3);
  MakeStatusbarSingle;
  MakeMSGBoxSingle;
end;

procedure TFrm_JON52.AddMsg(AGubun: String);
begin
  if AGubun  = 'A' then
  begin
    mUiman := mCtrlMan.GetUIMan;
    stcMsgArea.SetCaption('출발지와 도착지 표시');
    stcMsgArea.SetCanFocus(0);
    stcMsgArea.SetCanClick(0);
  end else
  if AGubun = 'B' then
  begin
    mUiman := mCtrlMan.GetUIMan;
    stcMsgArea.SetCaption('출발지-기사 (거리 : ' + FloatToStr(ADis) + 'm)') ;
    stcMsgArea.SetCanFocus(0);
    stcMsgArea.SetCanClick(0);

    mUimanSingle := mCtrlManSingle.GetUIMan;
    stcMsgAreaSingle.SetCaption('경유지와 도착지 표시');
    stcMsgAreaSingle.SetCanFocus(0);
    stcMsgAreaSingle.SetCanClick(0);
  end else
  if AGubun = 'C' then
  begin
    mUimanSingle := mCtrlManSingle.GetUIMan;
    stcMsgAreaSingle.SetCaption('출발지-기사 (거리 : ' + FloatToStr(ADis) + 'm)') ;
    stcMsgAreaSingle.SetCanFocus(0);
    stcMsgAreaSingle.SetCanClick(0);
  end else
  if AGubun = 'D' then
    stcMsgAreaSingle.SetCaption('도착지표시')
  else
  if AGubun = 'E' then
    stcMsgArea.SetCaption('출발지, 도착지, 기사위치')
  else
  begin
    mUiman := mCtrlMan.GetUIMan;
    stcMsgArea.SetCaption('기준위치 표시');
    stcMsgArea.SetCanFocus(0);
    stcMsgArea.SetCanClick(0);
  end;
end;

procedure TFrm_JON52.AddWkIconReady(const AXPos, AYPos: string;
  AWkInfo: TMapWkInfoRec);
var
  I: Integer;
  Title, Desc: string;
  itemCount, mAngle : integer;
  mPosLL : TalMapXLib_TLB.IXPoint;
  mGroup : IXPOIGroup;
  mGstyle, mStyle : IXPOIStyle;
  mItem : IXPOIItem;
  Lon_p, Lat_p : Integer;
  statNM : string;
begin
  try
    Lon_p := 0;
    Lat_p := 0;
    if (AWkInfo.MAPX = '0') or (AWkInfo.MAPY='') then Exit;
//    mCtrlMan := mMap.GetCtrlMan();
//    mUtil := mMap.GetUtility();
    mPoiman := mCtrlMan.GetPOIMan();
    mCtrlState := mCtrlMan.GetControlState();
    itemCount := 0;
    mPosLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

    WGS84ToBessel(AWkInfo.MAPY, AWkInfo.MAPX, ws_Lon, ws_Lat);

    mGroup := mPoiman.FindGroup(0);
    if mGroup = nil then mGroup := mPoiman.NewGroup(0);

      // Step 2-1. Make POI Style
     mGstyle := mPoiman.FindStyle(1);

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
		mItem.SetImageOffset(4);
    mItem.SetTextStyle(StrToInt('0x12'));

		if i mod 2 <> 0 then mItem.SetStyle(mStyle);
    if AWkInfo.PASS_TIME <> '' then AWkInfo.PASS_TIME := AWkInfo.PASS_TIME + ']';
    Title := Format('%s%s(%s)', [AWkInfo.PASS_TIME, AWkInfo.BrName, AWkInfo.Name]);//
    mItem.SetCaption(Title);
    if AWkInfo.BR_Type = '1' then
    begin
      Desc := Format('[%s](완료건:%s)'#13#10'%s(%s)'#13#10'%s'#13#10'%s(%s)',
        [statNM, AWkInfo.FinCnt, AWkInfo.Name, AWkInfo.Sabun, AWkInfo.HP, AWkInfo.BrName, AWkInfo.BrNo] );
      mItem.SetContents(Desc);
    end
    else if AWkInfo.BR_Type = '2' then
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
    mItem.SetAngle(mAngle);
    mItem.SetAlpha(100);

    mAngle := mAngle + 10;
    if(mAngle > 360) then mAngle := 0;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.AddWkIconReadySingle(const AXPos, AYPos: string;
  AWkInfo: TMapWkInfoRec);
var
  I: Integer;
  Title, Desc: string;
  itemCount, mAngle : integer;
  mPosLL : TalMapXLib_TLB.IXPoint;
  mGroup : IXPOIGroup;
  mGstyle, mStyle : IXPOIStyle;
  mItem : IXPOIItem;
  Lon_p, Lat_p : Integer;
  statNM : string;
begin
	try
    Lon_p := 0;
    Lat_p := 0;
    if (AWkInfo.MAPX = '0') or (AWkInfo.MAPY='') then Exit;
//    mCtrlMan := mMap.GetCtrlMan();
//    mUtil := mMap.GetUtility();
    mCtrlStateSingle := mCtrlManSingle.GetControlState();
    mPoiman := mCtrlManSingle.GetPOIMan();
    itemCount := 0;
    mPosLL := mCtrlStateSingle.GetLLCenter(); // 지도의 중심 좌표

    WGS84ToBessel(AWkInfo.MAPY, AWkInfo.MAPX, ws_Lon, ws_Lat);

    mGroup := mPoiman.FindGroup(0);
    if mGroup = nil then mGroup := mPoiman.NewGroup(0);

      // Step 2-1. Make POI Style
    mGstyle := mPoiman.FindStyle(1);

    mStyle := mPoiman.FindStyle(1);
    if mStyle = nil then
    begin
      mStyle := mPoiman.NewStyle(1);
    end;
    if mCtrlStateSingle.GetLevel() < 6 then
    begin
      mStyle.SetGDIFont(GS_FONTNAME, 0, 9);  //레벨별 기사 상태 캡션표기
      mStyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
      mStyle.SetFontColor(mUtilSingle.RGBColor(0, 0, 0));
      mStyle.SetFontOutColor(mUtilSingle.RGBColor(255, 255, 255));
      mStyle.SetBrush(mUtilSingle.RGBColor(251, 249, 250), 0);
      mGroup.SetStyle(mStyle);
    end
    else
      mGroup.ClearStyle;

    mAngle := 0;

    mItem := mGroup.NewItem(-1);
    mItem.SetLonLat(ws_Lon, ws_Lat);
    if AWkInfo.ATTEND = '01' then
    begin
			if (AWkInfo.Con_State = 'B2') and (AWkInfo.BR_Type = '1') then
			begin
				mItem.SetImage(B201Single);
				statNM := '미접속-자사';
			end
			else
			if (AWkInfo.Con_State = 'B2') and (AWkInfo.BR_Type = '2') then
			begin
				mItem.SetImage(B202Single);
				statNM := '미접속-타사';
			end
			else
			if (AWkInfo.Con_State = 'A1') and (AWkInfo.BR_Type = '1') then
			begin
				mItem.SetImage(A101Single);
				statNM := '단순접속-자사';
			end
			else
			if (AWkInfo.Con_State = 'A1') and (AWkInfo.BR_Type = '2') then
			begin
				mItem.SetImage(A102Single);
				statNM := '단순접속-타사';
			end
			else
			if (AWkInfo.Con_State = 'A2') and (AWkInfo.BR_Type = '1') then
			begin
				mItem.SetImage(A201Single);
				statNM := '오더접속-자사';
			end
			else
			if (AWkInfo.Con_State = 'A2') and (AWkInfo.BR_Type = '2') then
			begin
				mItem.SetImage(A202Single);
				statNM := '오더접속-타사';
			end;
		end
    else if AWkInfo.ATTEND = '02' then
    begin
			if AWkInfo.BR_Type = '1' then
			begin
				mItem.SetImage(R0201Single);
				statNM := '운행-자사';
			end
			else
			if AWkInfo.BR_Type = '2' then
			begin
				mItem.SetImage(R0202Single);
				statNM := '운행-타사';
			end;
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
		mItem.SetImageOffset(4);
		mItem.SetTextStyle(StrToInt('0x12'));

		if i mod 2 <> 0 then mItem.SetStyle(mStyle);
    if AWkInfo.PASS_TIME <> '' then AWkInfo.PASS_TIME := AWkInfo.PASS_TIME + ']';
    Title := Format('%s%s(%s)', [AWkInfo.PASS_TIME, AWkInfo.BrName, AWkInfo.Name]);//
    mItem.SetCaption(Title);
    if AWkInfo.BR_Type = '1' then
    begin
      Desc := Format('[%s](완료건:%s)'#13#10'%s(%s)'#13#10'%s'#13#10'%s(%s)',
        [statNM, AWkInfo.FinCnt, AWkInfo.Name, AWkInfo.Sabun, AWkInfo.HP, AWkInfo.BrName, AWkInfo.BrNo] );
      mItem.SetContents(Desc);
    end
    else if AWkInfo.BR_Type = '2' then
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
    mItem.SetAngle(mAngle);
    mItem.SetAlpha(100);

    mAngle := mAngle + 10;
    if(mAngle > 360) then mAngle := 0;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON52.SetCtrlState(setType: Integer): Integer;
begin
  SetDebugeWrite('Frm_JON52.SetCtrlState');
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

function TFrm_JON52.SetCtrlStateSingle(setType: Integer): Integer;
begin
  SetDebugeWrite('Frm_JON52.SetCtrlStateSingle');
  mCtrlStateSingle := mCtrlmanSingle.GetControlState();

  case setType of
    // 마우스 드래그 이동
    11: // 설정
        mCtrlStateSingle.SetState(mUtilSingle.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAG'), 1);
    12: // 해제
        mCtrlStateSingle.SetState(mUtilSingle.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAG'), 0);

    // 마우스 드래그 확대/축소
    21: // 설정
        mCtrlStateSingle.SetState(mUtilSingle.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAGZOOM'), 1);
    22: // 해제
        mCtrlStateSingle.SetState(mUtilSingle.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DRAGZOOM'), 0);

    // 마우스 클릭 이동
    31: // 설정
        mCtrlStateSingle.SetState(mUtilSingle.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_CLICK'), 1);
    32: // 해제
        mCtrlStateSingle.SetState(mUtilSingle.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_CLICK'), 0);

    // 마우스 클릭 이동
    33: // 설정
        mCtrlStateSingle.SetState(mUtilSingle.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DCLICK'), 1);
    34: // 해제
        mCtrlStateSingle.SetState(mUtilSingle.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_MAPMOVE_DCLICK'), 0);

    // 마우스 휠 확대/축소
    41: // 설정
        mCtrlStateSingle.SetState(mUtilSingle.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_WHEEL_ZOOM'), 1);
    42: // 해제
        mCtrlStateSingle.SetState(mUtilSingle.GetConstToValue('TMCTRLSTATE_ACT_MOUSE_WHEEL_ZOOM'), 0);
  end;
end;

procedure TFrm_JON52.FormClose(Sender: TObject; var Action: TCloseAction);
Var i : Integer;
begin
  if Self.Tag = 99 then
  begin
    Action := caFree;
  end else
  begin
    Action := caHide;

    if ( GS_JON03HeaderColor ) then
    begin
      for i := 0 to JON03_MAX_CNT - 1 do
      begin
        if ( Frm_Main.JON03MNG[i].Use = True ) And ( Frm_Main.JON03MNG[i].CreateYN = True ) And ( Not Frm_Main.Frm_Jon03[i].pJON03Dock.bUNDock ) then
        begin
          Frm_Main.Frm_Jon03[i].Grd2.Invalidate;
        end;
      end;
    end;
  end;
end;

procedure TFrm_JON52.FormCreate(Sender: TObject);
begin
  SetDebugeWrite('JON52.FormCreate');
	AdminMapSet;
  CONFRec.ViaLat := TStringList.Create;
  CONFRec.ViaLng := TStringList.Create;
  CONFRec.ViaName := TStringList.Create;

  cbRoute.Checked := True;

//  chkCallMapPopup.Checked := GB_CALLMAP_POPUP;
end;

procedure TFrm_JON52.AdminMapSet;
begin
	WK_ATTEND := '00';
	WK_STATE  := '00';
	WK_ATTEND_TIME := '';

  pnlBasic.Visible := True;
  pnlBasic.Align := alClient;
  lblBasic.Visible := False;
  pnlBasic.BringToFront;

  PnlSingleMap.Visible := True;
end;

procedure TFrm_JON52.FormResize(Sender: TObject);
begin
  if sts_Chk then
  begin
    if btn_Mod2.Down then pnlBasic.Width := Self.Width div 2;
  end;
end;

procedure TFrm_JON52.FormShow(Sender: TObject);
begin
  SetDebugeWrite('JON52.FormShow');
  PnlSingleMap.Visible := False;
  if Assigned(Frm_Main.Frm_JON03[Self.Tag]) then
  begin
    Frm_Main.Frm_JON03[Self.Tag].BtnLSize.BringToFront;
    Frm_Main.Frm_JON03[Self.Tag].BtnRSize.BringToFront;
  end;
end;

procedure TFrm_JON52.Set0201Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
  SetDebugeWrite('Frm_JON52.Set0201Style');
	try
		mPoiman := mCtrlMan.GetPOIMan();
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;
		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		R0201 := mImageman.LoadImageList('Run', 'Run1.png',35,35 );
		if Not R0201.IsValid then ShowMessage('Run1Image 이상');
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.Set0201StyleSingle;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlManSingle.GetPOIMan();
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;
		mImageman := mCtrlManSingle.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		R0201Single := mImageman.LoadImageList('Run', 'Run1.png',35,35 );
		if Not R0201Single.IsValid then ShowMessage('Run1Image 이상');
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.Set0202Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlMan.GetPOIMan();
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;
		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		R0202 := mImageman.LoadImageList('Run', 'Run2.png',35,35 );
		if Not R0202.IsValid then ShowMessage('Run2Image 이상');
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.Set0202StyleSingle;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlManSingle.GetPOIMan();
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;
		mImageman := mCtrlManSingle.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		R0202Single := mImageman.LoadImageList('Run', 'Run2.png',35,35 );
		if Not R0202Single.IsValid then ShowMessage('Run2Image 이상');
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.SetA101Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlMan.GetPOIMan();
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;
		mImageman := mCtrlMan.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		A101 := mImageman.LoadImageList('m0101', 'm0101.png',35,35 );
		if Not A101.IsValid then ShowMessage('m0101Image 이상');
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.SetA101StyleSingle;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlManSingle.GetPOIMan();
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;
		mImageman := mCtrlManSingle.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		A101Single := mImageman.LoadImageList('m0101', 'm0101.png',35,35 );
		if Not A101Single.IsValid then ShowMessage('m0101Image 이상');
	except
	end;
end;

procedure TFrm_JON52.SetA102Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlMan.GetPOIMan();
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

procedure TFrm_JON52.SetA102StyleSingle;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlManSingle.GetPOIMan();
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;
		mImageman := mCtrlManSingle.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		A102Single := mImageman.LoadImageList('m0102', 'm0102.png',35,35 );
		if Not A102Single.IsValid then ShowMessage('m0102Image 이상');
	except
	end;
end;

procedure TFrm_JON52.SetA201Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlMan.GetPOIMan();
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

procedure TFrm_JON52.SetA201StyleSingle;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlManSingle.GetPOIMan();
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;
		mImageman := mCtrlManSingle.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		A201Single := mImageman.LoadImageList('m0201', 'm0201.png',35,35 );
		if Not A201Single.IsValid then ShowMessage('m0201Image 이상');
	except
	end;
end;

procedure TFrm_JON52.SetA202Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlMan.GetPOIMan();
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

procedure TFrm_JON52.SetA202StyleSingle;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlManSingle.GetPOIMan();
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;
		mImageman := mCtrlManSingle.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		A202Single := mImageman.LoadImageList('m0202', 'm0202.png',35,35 );
		if Not A202Single.IsValid then ShowMessage('m0202Image 이상');
	except
	end;
end;

procedure TFrm_JON52.SetB201Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlMan.GetPOIMan();
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

procedure TFrm_JON52.SetB201StyleSingle;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlManSingle.GetPOIMan();
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;
		mImageman := mCtrlManSingle.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		B201Single := mImageman.LoadImageList('m0001', 'm0001.png',35,35 );
		if Not B201Single.IsValid then ShowMessage('m0001Image 이상');
	except
	end;
end;

procedure TFrm_JON52.SetB202Style;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlMan.GetPOIMan();
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

procedure TFrm_JON52.SetB202StyleSingle;
var
	mImageman : IXImageMan;
	mRootPath : string;
	mGroup : IXPOIGroup;
begin
	try
		mPoiman := mCtrlManSingle.GetPOIMan();
		mGroup := mPoiman.FindGroup(0);
		if mGroup <> nil then mGroup.ClearStyle;
		mImageman := mCtrlManSingle.GetImageMan();
		mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		B202Single := mImageman.LoadImageList('m0002', 'm0002.png',35,35 );
		if Not B202Single.IsValid then ShowMessage('m0002Image 이상');
	except
	end;
end;

procedure TFrm_JON52.FormDestroy(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON52.FormDestroy');
  try
    if Assigned(mMap) then FreeAndNil(mMap);
    if Assigned(mSingleMap) then FreeAndNil(mSingleMap);
    FreeAndNil(CONFRec.ViaLat);
    FreeAndNil(CONFRec.ViaLng);
    FreeAndNil(CONFRec.ViaName);
  finally
    Frm_JON52 := Nil;
  end;
end;

procedure TFrm_JON52.Mark_Symbol(Lon, Lat, index : Integer);
var
  mAngle : integer;
  mGroup : IXPOIGroup;
  mGstyle, mStyle : IXPOIStyle;
  mImageman : IXImageMan;
  mImage : IXMagicImage;
  mItem : IXPOIItem;
  mRootPath, viaName : String;
  ls_Rcrd : TStringList;
begin
	try
    mCtrlState := mCtrlMan.GetControlState();
		mPoiman := mCtrlMan.GetPOIMan();

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
      mGroup := mPoiman.FindGroup(22);
      if mGroup <> nil then mPoiman.DeleteGroup(22);
      mGroup := mPoiman.NewGroup(22);

      mGstyle := mPoiman.FindStyle(22);
      if (mGstyle = nil) then
        mGstyle := mPoiman.NewStyle(22); // -1: 아이디 자동 생성
      mGroup.SetStyle(mGstyle);

      if Not mImage.IsValid then ShowMessage('Image 이상');
      mAngle := 0;

      mItem := mGroup.NewItem(22) ;
      Try
        ls_Rcrd := TStringList.Create;
        GetTextSeperationEx('|', CONFRec.DepName, ls_Rcrd);

        if ls_Rcrd.Count >= 4 then
        begin
          if Trim(ls_Rcrd[3]) <> '' then mItem.SetCaption('출발지 : ' + ls_Rcrd[3])
                                    else mItem.SetCaption('출발지 : ' + ls_Rcrd[2]);

          mItem.SetContents(ls_Rcrd[0] + ' ' + ls_Rcrd[1] + ' ' + ls_Rcrd[2]);
        end;
      Finally
        ls_Rcrd.Free;
      End;
      mItem.SetLonLat(Lon, Lat);
      mItem.SetImage(mImage);
      mItem.SetShowImage(1);
      mItem.SetImageIndex(1);
      mItem.SetImageOffset(7);
      mItem.SetTextStyle(StrToInt('0x12'));

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
      mItem.SetSyncAngle(1);
      mItem.SetAngle(mAngle);
      mItem.SetAlpha(100);

      mAngle := mAngle + 10;
      if(mAngle > 360) then mAngle := 0;
		end else
    if index = 3 then
		begin
			mImage := mImageman.LoadImage('EP','EPoint.png');
			mGroup := mPoiman.FindGroup(23);
			if mGroup <> nil then mPoiman.DeleteGroup(23);
				mGroup := mPoiman.NewGroup(23);

			mGstyle := mPoiman.FindStyle(23);
			if (mGstyle = nil) then
				mGstyle := mPoiman.NewStyle(23); // -1: 아이디 자동 생성
			mGroup.SetStyle(mGstyle);

      if Not mImage.IsValid then ShowMessage('Image 이상');
      mAngle := 0;

			mItem := mGroup.NewItem(23) ;
      Try
        ls_Rcrd := TStringList.Create;
        GetTextSeperationEx('|', CONFRec.ArrName, ls_Rcrd);

        if ls_Rcrd.Count >= 4 then
        begin
          if Trim(ls_Rcrd[3]) <> '' then mItem.SetCaption('도착지 : ' + ls_Rcrd[3])
                                    else mItem.SetCaption('도착지 : ' + ls_Rcrd[2]);

          mItem.SetContents(ls_Rcrd[0] + ' ' + ls_Rcrd[1] + ' ' + ls_Rcrd[2]);
        end;
      Finally
        ls_Rcrd.Free;
      End;
			mItem.SetLonLat(Lon, Lat);
			mItem.SetImage(mImage);
			mItem.SetShowImage(1);
			mItem.SetImageIndex(1);
			mItem.SetImageOffset(7);
			mItem.SetTextStyle(StrToInt('0x12'));

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
      mItem.SetSyncAngle(1);
      mItem.SetAngle(mAngle);
      mItem.SetAlpha(100);

      mAngle := mAngle + 10;
      if(mAngle > 360) then mAngle := 0;
		end else
    if index = 4 then
		begin
      viaName := 'Via' + IntToStr(ViaCnt+1) + '.png';
			mImage := mImageman.LoadImage('VP'+ IntToStr(ViaCnt+1) ,viaName);
			mGroup := mPoiman.FindGroup(24);
			if mGroup = nil then mGroup := mPoiman.NewGroup(24);

      Try
        ls_Rcrd := TStringList.Create;
        GetTextSeperationEx('|', CONFRec.ViaName[ViaCnt], ls_Rcrd);
        if ls_Rcrd.Count >= 4 then
        begin
          mItem := mGroup.NewItem(-1) ;
          mItem.SetCaption('경유지'+ IntToStr(ViaCnt+1) + ' : ' + ls_Rcrd[3]);
          mItem.SetContents(ls_Rcrd[0] + ' ' + ls_Rcrd[1] + ' ' + ls_Rcrd[2]);
        end;
      Finally
        ls_Rcrd.Free;
      End;
			mItem.SetLonLat(Lon, Lat);
			mItem.SetImage(mImage);
			mItem.SetShowImage(1);
			mItem.SetImageIndex(1);
			mItem.SetImageOffset(7);
			mItem.SetTextStyle(StrToInt('0x12'));

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
      mItem.SetSyncAngle(1);
      mItem.SetAngle(mAngle);
      mItem.SetAlpha(100);

      mAngle := mAngle + 10;
      if(mAngle > 360) then mAngle := 0;
		end else
    if index = 5 then
		begin
      if CONFRec.DepLat >= CONFRec.WKLocLat then
  			mImage := mImageman.LoadImage('RM','WKR.png')
      else
  			mImage := mImageman.LoadImage('RM','WKL.png');
			mGroup := mPoiman.FindGroup(25);
			if mGroup <> nil then mPoiman.DeleteGroup(25);
				mGroup := mPoiman.NewGroup(25);

			mGstyle := mPoiman.FindStyle(25);
			if (mGstyle = nil) then
				mGstyle := mPoiman.NewStyle(25); // -1: 아이디 자동 생성
			mGroup.SetStyle(mGstyle);

      if Not mImage.IsValid then ShowMessage('Image 이상');
      mAngle := 0;

			mItem := mGroup.NewItem(25) ;
      if ADis <> 0 then
        mItem.SetCaption('기사사번 : ' + CONFRec.WkSabun + #13#10 +
                         '출발지와의 거리 : ' + FloatToStr(ADis) + 'm')
      else
        mItem.SetCaption('기사사번 : ' + CONFRec.WkSabun);
      mItem.SetContents('');
			mItem.SetLonLat(Lon, Lat);
			mItem.SetImage(mImage);
			mItem.SetShowImage(1);
			mItem.SetImageIndex(1);
			mItem.SetImageOffset(7);
			mItem.SetTextStyle(StrToInt('0x12'));

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
      mItem.SetSyncAngle(1);
      mItem.SetAngle(mAngle);
      mItem.SetAlpha(100);

      mAngle := mAngle + 10;
      if(mAngle > 360) then mAngle := 0;
		end;
    if Not mImage.IsValid then ShowMessage('Image 이상');
    mAngle := 0;

    mAngle := mAngle + 10;
    if(mAngle > 360) then mAngle := 0;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.Mark_SymbolSingle(Lon, Lat, index: Integer);
var
  mAngle : integer;
  mGroup : IXPOIGroup;
  mGstyle, mStyle : IXPOIStyle;
  mImageman : IXImageMan;
  mImage : IXMagicImage;
  mItem : IXPOIItem;
  mRootPath, viaName : String;
  ls_Rcrd : TStringList;
begin
	try
    mCtrlStateSingle := mCtrlManSingle.GetControlState();

    // Step 3. Make POI Items
    mImageman := mCtrlManSingle.GetImageMan();
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath + '\Image\');
		mPoiman := mCtrlManSingle.GetPOIMan();

    if index = 1 then
    begin
      mImage := mImageman.LoadImage('Spoint','SelectPoint.png');
		end else
    if index = 2 then
    begin
      mImage := mImageman.LoadImage('SP','SPoint.png');
      mGroup := mPoiman.FindGroup(22);
      if mGroup <> nil then mPoiman.DeleteGroup(22);
      mGroup := mPoiman.NewGroup(22);

      mGstyle := mPoiman.FindStyle(22);
      if (mGstyle = nil) then
        mGstyle := mPoiman.NewStyle(22); // -1: 아이디 자동 생성
      mGroup.SetStyle(mGstyle);

      if Not mImage.IsValid then ShowMessage('Image 이상');
      mAngle := 0;

      mItem := mGroup.NewItem(22) ;
      Try
        ls_Rcrd := TStringList.Create;
        GetTextSeperationEx('|', CONFRec.DepName, ls_Rcrd);

        mItem.SetCaption('출발지 : ' + ls_Rcrd[3]);
        mItem.SetContents(ls_Rcrd[0] + ' ' + ls_Rcrd[1] + ' ' + ls_Rcrd[2]);
      Finally
        ls_Rcrd.Free;
      End;
      mItem.SetLonLat(Lon, Lat);
      mItem.SetImage(mImage);
      mItem.SetShowImage(1);
      mItem.SetImageIndex(1);
      mItem.SetImageOffset(7);
      mItem.SetTextStyle(StrToInt('0x12'));

      mStyle := mPoiman.FindStyle(122);
      if mStyle = nil then
      begin
        mStyle := mPoiman.NewStyle(122);
        mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
        mStyle.SetFontColor(mUtilSingle.RGBColor(0, 0, 0));
        mStyle.SetFontOutColor(mUtilSingle.RGBColor(255, 255, 255));
        mStyle.SetBrush(mUtilSingle.RGBColor(251, 249, 250), 0);
        mStyle.SetPen(mUtilSingle.RGBColor(185, 183, 186), 1, 0);
      end;
      mItem.SetStyle(mStyle);
      mItem.SetSyncAngle(1);
      mItem.SetAngle(mAngle);
      mItem.SetAlpha(100);

      mAngle := mAngle + 10;
      if(mAngle > 360) then mAngle := 0;
		end else
    if index = 3 then
		begin
			mImage := mImageman.LoadImage('EP','EPoint.png');
			mGroup := mPoiman.FindGroup(23);
			if mGroup <> nil then mPoiman.DeleteGroup(23);
				mGroup := mPoiman.NewGroup(23);

			mGstyle := mPoiman.FindStyle(23);
			if (mGstyle = nil) then
				mGstyle := mPoiman.NewStyle(23); // -1: 아이디 자동 생성
			mGroup.SetStyle(mGstyle);

      if Not mImage.IsValid then ShowMessage('Image 이상');
      mAngle := 0;

			mItem := mGroup.NewItem(23) ;
      Try
        ls_Rcrd := TStringList.Create;
        GetTextSeperationEx('|', CONFRec.ArrName, ls_Rcrd);

        mItem.SetCaption('도착지 : ' + ls_Rcrd[3]);
        mItem.SetContents(ls_Rcrd[0] + ' ' + ls_Rcrd[1] + ' ' + ls_Rcrd[2]);
      Finally
        ls_Rcrd.Free;
      End;
			mItem.SetLonLat(Lon, Lat);
			mItem.SetImage(mImage);
			mItem.SetShowImage(1);
			mItem.SetImageIndex(1);
			mItem.SetImageOffset(7);
			mItem.SetTextStyle(StrToInt('0x12'));

      mStyle := mPoiman.FindStyle(122);
      if mStyle = nil then
      begin
        mStyle := mPoiman.NewStyle(122);
        mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
        mStyle.SetFontColor(mUtilSingle.RGBColor(0, 0, 0));
        mStyle.SetFontOutColor(mUtilSingle.RGBColor(255, 255, 255));
        mStyle.SetBrush(mUtilSingle.RGBColor(251, 249, 250), 0);
        mStyle.SetPen(mUtilSingle.RGBColor(185, 183, 186), 1, 0);
      end;
      mItem.SetStyle(mStyle);
      mItem.SetSyncAngle(1);
      mItem.SetAngle(mAngle);
      mItem.SetAlpha(100);

      mAngle := mAngle + 10;
      if(mAngle > 360) then mAngle := 0;
		end else
    if index = 4 then
		begin
      viaName := 'Via' + IntToStr(ViaCnt+1) + '.png';
			mImage := mImageman.LoadImage('VP'+ IntToStr(ViaCnt+1) ,viaName);
			mGroup := mPoiman.FindGroup(24);
			if mGroup = nil then mGroup := mPoiman.NewGroup(24);

      Try
        ls_Rcrd := TStringList.Create;
        GetTextSeperationEx('|', CONFRec.ViaName[ViaCnt], ls_Rcrd);

        mItem := mGroup.NewItem(-1) ;
        mItem.SetCaption('경유지'+ IntToStr(ViaCnt+1) + ' : ' + ls_Rcrd[3]);
        mItem.SetContents(ls_Rcrd[0] + ' ' + ls_Rcrd[1] + ' ' + ls_Rcrd[2]);
      Finally
        ls_Rcrd.Free;
      End;
			mItem.SetLonLat(Lon, Lat);
			mItem.SetImage(mImage);
			mItem.SetShowImage(1);
			mItem.SetImageIndex(1);
			mItem.SetImageOffset(7);
			mItem.SetTextStyle(StrToInt('0x12'));

      mStyle := mPoiman.FindStyle(122);
      if mStyle = nil then
      begin
        mStyle := mPoiman.NewStyle(122);
        mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
        mStyle.SetFontColor(mUtilSingle.RGBColor(0, 0, 0));
        mStyle.SetFontOutColor(mUtilSingle.RGBColor(255, 255, 255));
        mStyle.SetBrush(mUtilSingle.RGBColor(251, 249, 250), 0);
        mStyle.SetPen(mUtilSingle.RGBColor(185, 183, 186), 1, 0);
      end;
      mItem.SetStyle(mStyle);
      mItem.SetSyncAngle(1);
      mItem.SetAngle(mAngle);
      mItem.SetAlpha(100);

      mAngle := mAngle + 10;
      if(mAngle > 360) then mAngle := 0;
		end else
    if index = 5 then
		begin
      if CONFRec.DepLat >= CONFRec.WKLocLat then
  			mImage := mImageman.LoadImage('RM','WKR.png')
      else
  			mImage := mImageman.LoadImage('RM','WKL.png');
			mGroup := mPoiman.FindGroup(25);
			if mGroup <> nil then mPoiman.DeleteGroup(25);
				mGroup := mPoiman.NewGroup(25);

			mGstyle := mPoiman.FindStyle(25);
			if (mGstyle = nil) then
				mGstyle := mPoiman.NewStyle(25); // -1: 아이디 자동 생성
			mGroup.SetStyle(mGstyle);

      if Not mImage.IsValid then ShowMessage('Image 이상');
      mAngle := 0;

			mItem := mGroup.NewItem(25) ;
      if ADis <> 0 then
        mItem.SetCaption('기사사번 : ' + CONFRec.WkSabun + #13#10 +
                         '출발지와의 거리 : ' + FloatToStr(ADis) + 'm')
      else
        mItem.SetCaption('기사사번 : ' + CONFRec.WkSabun);
      mItem.SetContents('');
			mItem.SetLonLat(Lon, Lat);
			mItem.SetImage(mImage);
			mItem.SetShowImage(1);
			mItem.SetImageIndex(1);
			mItem.SetImageOffset(7);
			mItem.SetTextStyle(StrToInt('0x12'));

      mStyle := mPoiman.FindStyle(122);
      if mStyle = nil then
      begin
        mStyle := mPoiman.NewStyle(122);
        mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
        mStyle.SetFontColor(mUtilSingle.RGBColor(0, 0, 0));
        mStyle.SetFontOutColor(mUtilSingle.RGBColor(255, 255, 255));
        mStyle.SetBrush(mUtilSingle.RGBColor(251, 249, 250), 0);
        mStyle.SetPen(mUtilSingle.RGBColor(185, 183, 186), 1, 0);
      end;
      mItem.SetStyle(mStyle);
      mItem.SetSyncAngle(1);
      mItem.SetAngle(mAngle);
      mItem.SetAlpha(100);

      mAngle := mAngle + 10;
      if(mAngle > 360) then mAngle := 0;
		end else
    if index = 6 then
		begin
			mImage := mImageman.LoadImage('PC','Policeman.png');
			mGroup := mPoiman.FindGroup(26);
			if mGroup <> nil then mPoiman.DeleteGroup(26);
				mGroup := mPoiman.NewGroup(26);

			mGstyle := mPoiman.FindStyle(26);
			if (mGstyle = nil) then
				mGstyle := mPoiman.NewStyle(26); // -1: 아이디 자동 생성
			mGroup.SetStyle(mGstyle);

      if Not mImage.IsValid then ShowMessage('Image 이상');
      mAngle := 0;

			mItem := mGroup.NewItem(26);
			mItem.SetLonLat(Lon, Lat);
			mItem.SetImage(mImage);
			mItem.SetShowImage(1);
			mItem.SetImageIndex(1);
			mItem.SetImageOffset(7);
			mItem.SetTextStyle(StrToInt('0x12'));
		end;
    if Not mImage.IsValid then ShowMessage('Image 이상');
    mAngle := 0;

    mAngle := mAngle + 10;
    if(mAngle > 360) then mAngle := 0;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON52.SetMapRectLevel(LLon, LLat, RLon, RLat : Integer);
Var
  mCenterLL : TalMapXLib_TLB.IXPoint;
  mMapRect  : IXMapRect;
begin
  SetDebugeWrite('Frm_JON52.SetMapRectLevel');
	mCtrlState := mCtrlMan.GetControlState();
	mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

	mMapRect := mUtil.GetMapRect();

	mMapRect.SetLLat(LLat);
	mMapRect.SetLLong(LLon);
	mMapRect.SetRLong(RLon);
	mMapRect.SetULat(RLat);

  mCtrlState.SetMapRectLevel(mMapRect, 0);
end;

procedure TFrm_JON52.SetMapRectLevelSingle(LLon, LLat, RLon, RLat: Integer);
Var
  mCenterLL : TalMapXLib_TLB.IXPoint;
  mMapRect  : IXMapRect;
begin
  SetDebugeWrite('Frm_JON52.SetMapRectLevelSingle');
	mCtrlStateSingle := mCtrlManSingle.GetControlState();
	mCenterLL := mCtrlStateSingle.GetLLCenter(); // 지도의 중심 좌표

	mMapRect := mUtilSingle.GetMapRect();

	mMapRect.SetLLat(LLat);
	mMapRect.SetLLong(LLon);
	mMapRect.SetRLong(RLon);
	mMapRect.SetULat(RLat);

  mCtrlStateSingle.SetMapRectLevel(mMapRect, 0);
end;

end.


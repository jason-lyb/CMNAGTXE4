unit xe_WOR17;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL,
  MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
	cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxStyles, cxCustomData, FastStringFuncs,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, TalMapXLib_TLB,
	Vcl.OleCtrls, Vcl.Dialogs, cxGroupBox, SmartSRXLib_TLB, Math, DateUtils,
	cxCheckBox, cxSplitter, cxSpinEdit, cxTimeEdit, dxSkinsCore, dxSkinscxPCPainter,
  Vcl.Mask, AdvDropDown, AdvTimePickerDropDown,
  System.ImageList, Vcl.ImgList, cxImageList, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

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
  TFrm_WOR17 = class(TForm)
    PnlBtm: TPanel;
    mMap_WKmoveLog: TTalMapXCtrl;
    pnlTitle: TPanel;
    cxGrdMV: TcxGrid;
    cxGrdMV_List: TcxGridDBTableView;
    cxGrdMV_ListColumn1: TcxGridDBColumn;
    cxGrdMV_ListColumn2: TcxGridDBColumn;
    cxGrdMV_ListColumn3: TcxGridDBColumn;
    cxGrdMV_ListColumn4: TcxGridDBColumn;
    cxGrdMV_ListColumn5: TcxGridDBColumn;
    cxGrdMV_ListColumn6: TcxGridDBColumn;
    cxGrdMV_ListColumn7: TcxGridDBColumn;
    cxGrdMV_ListColumn8: TcxGridDBColumn;
    cxGrdMV_ListColumn9: TcxGridDBColumn;
    cxGrdMV_ListColumn10: TcxGridDBColumn;
    cxGrdMV_Level: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    Shape20: TShape;
    cxButton1: TcxButton;
    cb_WKmove_Option: TcxComboBox;
    cxLabel1: TcxLabel;
    PnlMain: TPanel;
    PnlTop: TPanel;
    chk_WKHIS_AllSearch: TcxCheckBox;
    cxLabel75: TcxLabel;
    cxTimeStart: TcxTimeEdit;
    cxTimeEnd: TcxTimeEdit;
    cxLblActive: TLabel;
    cxImageList1: TcxImageList;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape1: TShape;
    Shape7: TShape;
    btn_WKSabun: TcxButton;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    btnMapPos: TcxButton;
    chkCenter: TcxCheckBox;
    chk_Search_Route: TcxCheckBox;
    cxGroupBox3: TcxGroupBox;
    cxLabel8: TcxLabel;
    btnRView: TcxButton;
    lb_ConnState: TcxLabel;
    lb_LocElapseTime: TcxLabel;
    lb_LocLat: TcxLabel;
    lb_LocLng: TcxLabel;
    lb_LocType: TcxLabel;
    pnlHint: TPanel;
    cxLabel10: TcxLabel;
    cxLabel9: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    btnMapPlay: TcxButton;
    btnMapStop: TcxButton;
    pnlRView: TPanel;
    cxLabel11: TcxLabel;
    cxGrdMC: TcxGrid;
    cxGrdMC_List: TcxGridDBTableView;
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
    cxGridLevel1: TcxGridLevel;
    btnExit: TcxButton;
    btnMapFPlay: TcxButton;
    chk_RView: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure mMap_WKmoveLogCreate(ASender: TObject; Value: Integer);
    procedure mMap_WKmoveLogStateChange(ASender: TObject; Code, Value1,
      Value2: Integer);
    procedure btn_WKSabunClick(Sender: TObject);
    procedure mMap_WKmoveLogPOI_DblClick(ASender: TObject; const POI: IXPOIItem;
      nFlag, X, Y: Integer);
    procedure chk_Search_RouteClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure chk_WKHIS_AllSearchClick(Sender: TObject);
		procedure cb_WKmove_OptionPropertiesChange(Sender: TObject);
    procedure mMap_WKmoveLogUI_MouseHover(ASender: TObject; const Obj: IXUIObj);
    procedure mMap_WKmoveLogUI_MouseLeave(ASender: TObject; const Obj: IXUIObj);
    procedure mMap_WKmoveLogUI_MouseUp(ASender: TObject; const Obj: IXUIObj;
      Flag, X, Y: Integer);
    procedure mMap_WKmoveLogUI_MouseMove(ASender: TObject; const Obj: IXUIObj;
      Flag, X, Y: Integer);
    procedure btnMapPosClick(Sender: TObject);
    procedure cxGrdMV_ListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrdMV_ListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrdMV_ListStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure btnRViewClick(Sender: TObject);
    procedure PnlBtmResize(Sender: TObject);
    procedure cxGrdMV_ListKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrdMV_ListMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnMapPlayClick(Sender: TObject);
    procedure btnMapStopClick(Sender: TObject);
    procedure cxGrdMV_ListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnExitClick(Sender: TObject);
    procedure cxGrdMC_ListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnMapFPlayClick(Sender: TObject);

  private
    { Private declarations }
    mCtrlState : IXMasterControlState;
    mCtrlMan : IXCtrlMan;
    mUiman : IXUIMan;
    mDpsize : IXSize;
    mUtil : IXUtility;
    mPoiman : TalMapXLib_TLB.IXPOIMan;

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

    gbPlayStop : Boolean;

		sts_Chk : Boolean;
    giPreId, giStrId, giEndId : Integer;

    Pt1, Pt2 : TTmappos;
    pWkSabun, pConnState, pLocLat, pLocLng, pLocType, pLocElapseTime, pLocPOI : string;
    FRoutePoint : TRoutePoint;

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
    procedure Mark_Symbol(Lon, Lat, index : Integer;AId, AGu : string);
    Procedure Proc_WK_Point(sLon, sLat, AId, AGu : string);    //선택 기사 위치에 마크
    procedure SetMapRectLevel(LLon, LLat, RLon, RLat : Integer);
    procedure Clear_WKPOI;
//    procedure Proc_RouteLine(AFromLon, AFromLat, AToLon, AToLat : integer; AViaLon, AViaLat : array of integer); //메인지도 경로 표기
    procedure Proc_RouteLine(ARoutePoint : TRoutePoint);
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
    procedure pSetDriverPoint;
    procedure pSetMapMove(LLon, LLat, RLon, RLat: Integer);
    function GetCurrentView: TcxGridDBTableView;
    procedure pSetPoiLoad;
    procedure pMapPlay( idx : Integer );
    procedure pSetLineAdd( ALon, ALat : String );
  public
    sWkSabun : String;
    sConfSlip : String;   // 접수번호;
    sBeaChaTime : String;
    pWOR17Dock : TUNDOCKMNG;
		Jon03Tag : integer;
    { Public declarations }
    procedure proc_init;
    procedure Proc_WKMoveHis_Sreach(ASabun : string; AChk : Boolean);
  end;

var
  Frm_WOR17: TFrm_WOR17;

implementation

{$R *.dfm}

uses xe_Func, xe_packet, xe_Msg, xe_GNL2, xe_XML, xe_Dm, Main, xe_gnl3;

procedure TFrm_WOR17.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_WOR17.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	if Assigned(Frm_Main.Frm_JON03[Jon03Tag]) then
  begin
    if Frm_Main.JON03MNG[Jon03Tag].Use then
    begin
			if Frm_Main.Frm_JON03[Jon03Tag].Grd2.CanFocus then
        Frm_Main.Frm_JON03[Jon03Tag].Grd2.SetFocus
      else
      if Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.CanFocus then
				Frm_Main.Frm_JON03[Jon03Tag].cxGridCounselToday.SetFocus;
    end;
  end;

  sts_Chk := False;
  Action := caFree;
end;

procedure TFrm_WOR17.FormCreate(Sender: TObject);
begin
	sts_Chk := False;
  giPreId := -1;
  giStrId := -1;
  giEndId := -1;

  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  FRoutePoint.lon := TStringList.Create;
  FRoutePoint.lat := TStringList.Create;
  FRoutePoint.Idx := TStringList.Create;

  slLonList := TStringList.Create;
  slLatList := TStringList.Create;
end;

procedure TFrm_WOR17.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR17.FormDestroy(Sender: TObject);
begin
  Frm_WOR17 := Nil;
  if Assigned(mMap_WKmoveLog) then FreeAndNil(mMap_WKmoveLog);
  FreeAndNil(FRoutePoint.lon);
  FreeAndNil(FRoutePoint.lat);
  FreeAndNil(FRoutePoint.Idx);

  FreeAndNil(slLonList);
  FreeAndNil(slLatList);
end;

procedure TFrm_WOR17.FormShow(Sender: TObject);
Var i : Integer;
begin
  fSetFont(Frm_WOR17, GS_FONTNAME);
  for i := 0 to pred(cxStyleRepository1.Count) do
  begin
    TcxStyle(cxStyleRepository1.Items[i]).Font.Name := GS_FONTNAME;
  end;

  btn_WKSabun.Click;
end;

procedure TFrm_WOR17.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR17.PopupMenu1Popup(Sender: TObject);
begin
  if cxGrdMV_List.DataController.GetSelectedCount > 1 then N1.Visible := True
                                                      else N1.Visible := False;
end;

procedure TFrm_WOR17.proc_init;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode: Integer;
begin
	//그리드 초기화
	cxGrdMV_List.DataController.SetRecordCount(0);
	cxGrdMV_List.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxGrdMV_List.ColumnCount - 1 do
		cxGrdMV_List.Columns[i].DataBinding.ValueType := 'String';

	cxGrdMC_List.DataController.SetRecordCount(0);
	cxGrdMC_List.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxGrdMC_List.ColumnCount - 1 do
		cxGrdMC_List.Columns[i].DataBinding.ValueType := 'String';

	cxTimeStart.Text := '09:00:00';
	cxTimeEnd  .Text := FormatDateTime('HH:NN:SS', Now);

	lb_ConnState.Caption := '';
  lb_LocType.Caption := '';
  lb_LocElapseTime.Caption := '';
  lb_LocLat.Caption := '';
  lb_LocLng.Caption := '';

  cb_WKmove_Option.ItemIndex := 0;
  sBeaChaTime := '';
	Param := sWkSabun;

  if not RequestBase(GetSel05('GETPLUSINFO', 'worker.get_plus_info', '100', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('기사 정보 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
    Exit;
  end;

  xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);

    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

    ls_Rcrd := TStringList.Create;
    try
      for I := 0 to lst_Result.length - 1 do
      begin
        if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then
          Continue;
        GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
        Self.Caption := '기사 이동 로그 ( 기사정보 : ' + ls_Rcrd[4] + '/' + ls_Rcrd[17] + ' )';
      end;
    finally
      ls_Rcrd.Free;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_WOR17.Proc_RouteLine(ARoutePoint: TRoutePoint);
Var i, j : Integer;
  aDistance : Double;
  aTime, aHour, aMin, aSec, SRPort : integer;
  sTmp, SRIp : string;
  RouteMan : IXRouteMan;
  SmartSR : TSmartSRXCtrl;
  info : IXRouteInfo4;
  style : IXLayerStyle;
  mPolygon : IXLayerPolygon;
  mCenterLL : TalMapXLib_TLB.IXPoint;
  iRouteCnt, iRouteDraw, iIdx, xIdx : integer;
begin
  Try
    Screen.Cursor := crHourGlass;
    SmartSR := TSmartSRXCtrl.Create(nil);
    if RouteMan = nil then
      RouteMan := SmartSR.GetRouteMan();

    try
      GetSearchRouteIpPort(SRIp, SRPort);

//      SRIp := '211.219.153.75';

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
        chk_Search_Route.Checked := False;
        GMessagebox('경로 탐색 서버 접속 장애 발생으로 인해 연결할수 없습니다.', CDMSE);
        Exit;
      end;

      iRouteCnt := 0; //전체적인 횟수
      iRouteDraw := 0; //동일인덱스 횟수
      iIdx := 0; xIdx := 0;
      while ARoutePoint.Idx.Count > 0 do
      begin
        iIdx := StrToInt(ARoutePoint.Idx[0]);
        if iIdx = xIdx then
        begin
          if iRouteCnt = 0 then
          begin
            RouteMan.SetOrgLonLat(strtoint(ARoutePoint.lon[0]), strtoint(ARoutePoint.lat[0]));
          end
          else if ARoutePoint.Idx.Count > 1 then
          begin
            if (iIdx <> StrToIntDef(ARoutePoint.Idx[1],0)) then
            begin
              RouteMan.SetDstLonLat(strtoint(ARoutePoint.lon[0]), strtoint(ARoutePoint.lat[0]));
              iRouteCnt := 0;
              xIdx := StrToInt(ARoutePoint.Idx[1]);
              ARoutePoint.lon.Delete(0);
              ARoutePoint.lat.Delete(0);
              ARoutePoint.Idx.Delete(0);

              RouteMan.SetOrgDirectionToBoth();
              RouteMan.SetViaDirectionToBoth();
              RouteMan.SetDstDirectionToBoth();

              ////// Toll비
              RouteMan.SetTollFareType(1);

              ////// 탐색 옵션
              RouteMan.Remote_SetRPCType(GT_DISTANCE_ROUTETYPE, GT_DISTANCE_ROADTYPE, GT_DISTANCE_TOLLTYPE);
//              RouteMan.Remote_SetRPCType(2, 1, 2);  // 최단, 일반도로, 유로
              /////////////////////////////////////////////////////////////////
              info := RouteMan.SearchRoute4;
              if (info <> nil) then
              begin
                if GS_SmartServerIP = SearchRoute1[0].IP then SR1ErrCnt := 0
                                                         else SR2ErrCnt := 0;

                aDistance := 0;
                aTime := 0;
                for i := 0 to info.GetNodeCount - 1 do
                begin
                  info.SetCurrentNodeIndex(i);

                  aDistance := aDistance + info.GetNodeRemainDist();
                  aTime := aTime + info.GetNodeRemainTime();
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

                ///거리 및 시간 표기///
                mUiman := mCtrlMan.GetUIMan;
                aDistance := Roundto(aDistance / 1000,-1);
                aHour := aTime div 3600;
                aMin  := (aTime - (aHour * 3600)) div 60;
                aSec  := (aTime - (aHour * 3600) - (aMin * 60));
                if aHour > 0 then
                  sTmp := '이동 거리:' + FloatToStr(aDistance) + 'Km 시간:' + IntToStr(aHour) + '시간' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초'
                else
                  sTmp := '이동 거리:' + FloatToStr(aDistance) + 'Km 시간:' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초';
                stcMsgArea.SetCaption(sTmp);
                stcMsgArea.SetCanFocus(0);
                stcMsgArea.SetCanClick(0);
  //              mItem.SetContents(sTmp);
              end;
              Continue;
            end
            else
            begin
              RouteMan.AddNode(strtoint(ARoutePoint.lon[0]), strtoint(ARoutePoint.lat[0]));
            end;
          end
          else if ARoutePoint.Idx.Count = 1 then
          begin
            RouteMan.SetDstLonLat(strtoint(ARoutePoint.lon[0]), strtoint(ARoutePoint.lat[0]));
            ARoutePoint.lon.Delete(0);
            ARoutePoint.lat.Delete(0);
            ARoutePoint.Idx.Delete(0);

            RouteMan.SetOrgDirectionToBoth();
            RouteMan.SetViaDirectionToBoth();
            RouteMan.SetDstDirectionToBoth();

            ////// Toll비
            RouteMan.SetTollFareType(1);

            ////// 탐색 옵션
            RouteMan.Remote_SetRPCType(GT_DISTANCE_ROUTETYPE, GT_DISTANCE_ROADTYPE, GT_DISTANCE_TOLLTYPE);
//            RouteMan.Remote_SetRPCType(2, 1, 2);  // 최단, 일반도로, 유로
            /////////////////////////////////////////////////////////////////
            info := RouteMan.SearchRoute4;
            if (info <> nil) then
            begin
              if GS_SmartServerIP = SearchRoute1[0].IP then SR1ErrCnt := 0
                                                       else SR2ErrCnt := 0;

              aDistance := 0;
              aTime := 0;
              for i := 0 to info.GetNodeCount - 1 do
              begin
                info.SetCurrentNodeIndex(i);

                aDistance := aDistance + info.GetNodeRemainDist();
                aTime := aTime + info.GetNodeRemainTime();
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

              ///거리 및 시간 표기///
              mUiman := mCtrlMan.GetUIMan;
              aDistance := Roundto(aDistance / 1000,-1);
              aHour := aTime div 3600;
              aMin  := (aTime - (aHour * 3600)) div 60;
              aSec  := (aTime - (aHour * 3600) - (aMin * 60));
              if aHour > 0 then
                sTmp := '이동 거리:' + FloatToStr(aDistance) + 'Km 시간:' + IntToStr(aHour) + '시간' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초'
              else
                sTmp := '이동 거리:' + FloatToStr(aDistance) + 'Km 시간:' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초';
              stcMsgArea.SetCaption(sTmp);
              stcMsgArea.SetCanFocus(0);
              stcMsgArea.SetCanClick(0);
            end;

            Continue;
          end
          else
          begin
            RouteMan.AddNode(strtoint(ARoutePoint.lon[0]), strtoint(ARoutePoint.lat[0]));
          end;
          ARoutePoint.lon.Delete(0);
          ARoutePoint.lat.Delete(0);
          ARoutePoint.Idx.Delete(0);
          xIdx := iIdx;
          inc(iRouteCnt);
        end
        else if iIdx <> xIdx then
        begin
          ARoutePoint.lon.Delete(iRouteCnt);
          ARoutePoint.lat.Delete(iRouteCnt);
          ARoutePoint.Idx.Delete(iRouteCnt);
          iRouteCnt := 0;
          xIdx := iIdx;
        end;
      end;
    finally
      FreeAndNil(SmartSR);
      RouteMan := nil;
    end;
  except
    ShowMessage('기사이동로그-경로탐색 오류');
  End;
    Screen.Cursor := crDefault;

{  for i := 0 to ARoutePoint.lon.count -1 do
  begin
    if i = 0 then
    begin
      RouteMan.SetOrgLonLat(strtoint(ARoutePoint.lon[0]), strtoint(ARoutePoint.lat[0]));
    end
    else if i = ARoutePoint.lon.count -1 then
    begin
      RouteMan.SetDstLonLat(strtoint(ARoutePoint.lon[i]), strtoint(ARoutePoint.lat[i]));
    end
    else
    begin
      RouteMan.AddNode(strtoint(ARoutePoint.lon[i]), strtoint(ARoutePoint.lat[i]));
    end;
  end;   }

  ////// 양방향 탐색을 위해서는 아래의 옵션을 추가해 주세요. //////
end;

procedure TFrm_WOR17.Proc_WKMoveHis_Sreach(ASabun: string; AChk : Boolean);
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode, iRow, iNo : Integer;
  ls_MSG_Err, sTmp: string;
  aTime, aHour, aMin, aSec : integer;
  AYMax, AXMax, AYMin, AXMin, AWKLon, AWKLat : integer;
  FLon, FLat, TLon, TLat : integer;
  sTime, eTime : TDatetime;
  iFlag : integer;
	LonLatTemp : Double;
	sTmpDate1, sTmpTime1, sTmpDate2 : string;
	dTmpDate1, dTmpDate2 : TDateTime;
	iDay : integer;
	iLng, iLat : integer;
	sLng, sLat : string;
	dTmpLon, dTmpLat : Double;
	bLonLat : Boolean; //좌표유효성 검사
begin
		//////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////
	Try
	
		ls_TxLoad := GTx_UnitXmlLoad('WOR00010.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString'         , GT_USERIF.ID);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString'      , VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString'      , 'WOR00010');
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'WkSabunString'        , ASabun);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'DayGubunString'       , IntToStr(cb_WKmove_Option.ItemIndex));

		ls_TxLoad := ReplaceAll(ls_TxLoad, 'WKBeachaTimeString'   , cxTimeStart.Text);    // 시작시간
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'EndWkBeachaTimeString', cxTimeEnd.Text);   // 종료시간
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ConfSlipString'       , sConfSlip);          // 오더접수번호
    if chk_WKHIS_AllSearch.Checked then
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'SearchGubunString'  , '1')       // 0.자동(오더접수번호) 1.수동(기간입력)
    else
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'SearchGubunString'  , '0');

    iFlag := 0;
		FRoutePoint.lon.Clear;
    FRoutePoint.lat.Clear;
		FRoutePoint.Idx.Clear;
    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
		try
      if dm.SendSockAccept(ls_TxLoad, slRcvList, ErrCode, False) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          Clear_WKPOI;
					ls_rxxml := rv_str;
					xdom := ComsDomDocument.Create;
					try
            xdom.loadXML(ls_rxxml);

            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
						pWkSabun := ''; pConnState := ''; pLocLat := ''; pLocLng := ''; pLocType := ''; pLocElapseTime := ''; pLocPOI := '';
						if ('0000' <> ls_MSG_Err) then 
						begin
							GMessagebox(ls_Msg_Err, CDMSE);
							Screen.Cursor := crDefault;
							Exit;
						end;

            // 접수번호에 의한 시작시간,종료시간 서버에서 받음
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');
						//EditText
						sTmpDate1 := lst_Result.item[0].attributes.getNamedItem('WkBeachaTime').Text;     //20161012032704
						cxTimeStart.Text := Copy(sTmpDate1,9,2) + ':' + Copy(sTmpDate1,11,2) + ':' + Copy(sTmpDate1,13,2);
//						Copy(lst_Result.item[0].attributes.getNamedItem('WkBeachaTime')   .Text, 9, 6);
						sTmpDate1 := lst_Result.item[0].attributes.getNamedItem('EndWkBeachaTime').Text;     //20161012032704
						cxTimeEnd  .Text := Copy(sTmpDate1,9,2) + ':' + Copy(sTmpDate1,11,2) + ':' + Copy(sTmpDate1,13,2);//Copy(lst_Result.item[0].attributes.getNamedItem('EndWkBeachaTime').Text, 9, 6);
						if not chk_WKHIS_AllSearch.Checked then
						begin

							sTmpDate1 := GetStrToDateTimeGStr(sTmpDate1, 3);                                  //2016-10-12 03:27:04
							sTmpTime1 := Copy(sTmpDate1,12,8);
							if StrTointDef(Copy(sTmpTime1,1,2),0) < 9 then
							begin
								sTmpDate1 := Copy(sTmpDate1,1,10);
								dTmpDate1 := StrToDateTime(sTmpDate1) - 1;
//								sTmpDate1 := FormatDateTime('yyyy-mm-dd', dTmpDate1) + ' ' + sTmpTime1;
//								dTmpDate1 := StrToDateTime(sTmpDate1);
							end
							else
								dTmpDate1 := StrToDateTime(copy(sTmpDate1,1,10));
						
							sTmpDate2 := StartDateTime('yyyy-mm-dd hh:nn:ss');
							dTmpDate2 := StrToDateTime(copy(sTmpDate2,1,10));
//							iDay := HoursBetween(dTmpDate2, dTmpDate1) Div 24 ; //0 : 당일, 1 : 전일
							iDay := DaysBetween(dTmpDate2, dTmpDate1) ; //0 : 당일, 1 : 전일
							cb_WKmove_Option.Tag := 99;
							if iDay < 8 then
								cb_WKmove_Option.itemIndex := iDay
							else
								cb_WKmove_Option.itemIndex := -1;  //이전일 조회안됨
							cb_WKmove_Option.Tag := 0;
						end;
						
            // 기사 위치 정보 받음
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Driver');

            pWkSabun       := lst_Result.item[0].attributes.getNamedItem('WkSabun').Text ;
            if pWkSabun = '' then btn_WkSabun.Caption := ASabun
            else btn_WkSabun.Caption := pWkSabun;

            pConnState     := lst_Result.item[0].attributes.getNamedItem('ConnState').Text ;
            lb_ConnState.Caption := pConnState;
            pLocLat        := lst_Result.item[0].attributes.getNamedItem('LocLat').Text ;
//            pLocLat := '37.5557454' ;
            if pLocLat = '' then
            begin
              pLocLat := Area_CenterLat;
              lb_LocLat.Caption := '콜센터기준위치';
            end else
            begin
              LonLatTemp := StrToFloatDef(pLocLat, 0.0);
              sTmp := FloatToStr(Trunc(LonLatTemp/1));
              lb_LocLat.Caption := sTmp + '도 ';

              LonLatTemp := (LonLatTemp - StrToFloatDef(sTmp, 0)) * 60;
              sTmp := FloatToStr(Trunc(LonLatTemp/1));
              lb_LocLat.Caption := lb_LocLat.Caption + sTmp + '분 ';

              LonLatTemp := (LonLatTemp - StrToFloatDef(sTmp, 0)) * 60;
              sTmp := FloatToStrF(LonLatTemp, ffNumber,10,0);
              lb_LocLat.Caption := lb_LocLat.Caption + sTmp + '초';
  //            lb_LocLat.Caption := pLocLat;
            end;
            pLocLng        := lst_Result.item[0].attributes.getNamedItem('LocLng').Text ;
//            pLocLng := '127.0436848';
            if pLocLng = '' then
            begin
              pLocLng := Area_CenterLon;
              lb_LocLng.Caption := '콜센터기준위치';
            end else
            begin
              LonLatTemp := StrToFloatDef(pLocLng, 0);
              sTmp := FloatToStr(Trunc(LonLatTemp/1));
              lb_LocLng.Caption := sTmp + '도 ';

              LonLatTemp := (LonLatTemp - StrToFloatDef(sTmp, 0)) * 60;
              sTmp := FloatToStr(Trunc(LonLatTemp/1));
              lb_LocLng.Caption := lb_LocLng.Caption + sTmp + '분 ';

              LonLatTemp := (LonLatTemp - StrToFloatDef(sTmp, 0)) * 60;
              sTmp := FloatToStrF(LonLatTemp, ffNumber,10,0);
              lb_LocLng.Caption := lb_LocLng.Caption + sTmp + '초';
            end;

            if (pLocLng <> '') and (pLocLat <> '') then
            begin
              WGS84ToBessel(getWGS84(pLocLng), getWGS84(pLocLat));
//              WGS84ToBessel(getWGS84(pLocLng), '0'+ getWGS84(pLocLat));
              OnMoveMap(ws_Lon, ws_Lat);     //기사 현재 위치
							AWKLon := ws_Lon;
              AWKLat := ws_Lat;

							pLocType       := lst_Result.item[0].attributes.getNamedItem('LocType').Text ;
							if UpperCase(pLocType) = 'G' then lb_LocType.Caption := 'GPS위치'      else
							if UpperCase(pLocType) = 'N' then lb_LocType.Caption := '네트워크위치' else
							if UpperCase(pLocType) = 'M' then lb_LocType.Caption := '지도선택'     else
							if UpperCase(pLocType) = 'A' then lb_LocType.Caption := '지역선택'     else
							if UpperCase(pLocType) = 'S' then lb_LocType.Caption := '로그인초기값'
																					 else lb_LocType.Caption := '' ;

              pLocElapseTime := lst_Result.item[0].attributes.getNamedItem('LocElapseTime').Text ;
              if pLocElapseTime <> '' then
              begin
                aTime := strtoint(pLocElapseTime);
                aHour := aTime div 3600;
                aMin  := (aTime - (aHour * 3600)) div 60;
                aSec  := (aTime - (aHour * 3600) - (aMin * 60));
                if aTime > 3600 then
                begin
                  lb_LocElapseTime.Caption := IntToStr(aHour) + '시간' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초';
                end
                else
                if aTime > 60 then
                begin
                  lb_LocElapseTime.Caption := IntToStr(aMin) + '분' + IntToStr(aSec) + '초';
                end
                else
                  lb_LocElapseTime.Caption := IntToStr(aSec) + '초';
              end
              else lb_LocElapseTime.Caption := '';
            end;
            pLocPOI := lst_Result.item[0].attributes.getNamedItem('LocPoi').Text;
						lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Driver/Tracking');
						ls_Rcrd := TStringList.Create;
						cxGrdMV_List.DataController.SetRecordCount(0);
            cxGrdMV_List.BeginUpdate;
            try
              if lst_Result.length > 0 then
              begin
                for I := 0 to lst_Result.length - 1 do
                begin
									pLocLat := lst_Result.item[i].attributes.getNamedItem('Lat').Text;
									pLocLng := lst_Result.item[i].attributes.getNamedItem('Lng').Text;

									dTmpLon := StrToFloatDef(pLocLng, 0);                        //더블형으로 변환
									dTmpLat := StrToFloatDef(pLocLat, 0);

									bLonLat := PtInPolygon(dTmpLon, dTmpLat, FKOREAAREA_XY.Lon, FKOREAAREA_XY.Lat, FKOREAAREA_XY.Lon.count);
									if Not bLonLat then   
										Continue;//유효한 좌표가 아니면

									iRow := cxGrdMV_List.DataController.AppendRecord;

                  iNo := lst_Result.length - i;
                  cxGrdMV_List.DataController.Values[iRow, 0] := IntToStr(iNo);
                  sTmp := lst_Result.item[i].attributes.getNamedItem('Type').Text;
									if sTmp = '10' then cxGrdMV_List.DataController.Values[iRow, 1] := '로그인' else
									if sTmp = '11' then cxGrdMV_List.DataController.Values[iRow, 1] := '수동위치설정' else
									if sTmp = '12' then cxGrdMV_List.DataController.Values[iRow, 1] := '위치수신' else
									if sTmp = '13' then cxGrdMV_List.DataController.Values[iRow, 1] := '위치수신(콜마너N)' else
									if sTmp = '18' then cxGrdMV_List.DataController.Values[iRow, 1] := '접속종료' else
									if sTmp = '21' then cxGrdMV_List.DataController.Values[iRow, 1] := '오더배차' else
									if sTmp = '22' then cxGrdMV_List.DataController.Values[iRow, 1] := '오더완료' else
									if sTmp = '23' then cxGrdMV_List.DataController.Values[iRow, 1] := '오더근거리배차' else
									if sTmp = '27' then cxGrdMV_List.DataController.Values[iRow, 1] := '오더배차취소' else
									if sTmp = '28' then cxGrdMV_List.DataController.Values[iRow, 1] := '오더취소'
																 else cxGrdMV_List.DataController.Values[iRow, 1] := '기타[' + sTmp + ']';
									cxGrdMV_List.DataController.Values[iRow, 2] := lst_Result.item[i].attributes.getNamedItem('Lat').Text;
                  cxGrdMV_List.DataController.Values[iRow, 3] := lst_Result.item[i].attributes.getNamedItem('Lng').Text;
                  if i = 0 then
                  begin
                    pLocLat := lst_Result.item[i].attributes.getNamedItem('Lat').Text;
                    pLocLng := lst_Result.item[i].attributes.getNamedItem('Lng').Text;
									end;

                  sTmp := lst_Result.item[i].attributes.getNamedItem('Name').Text;
  		            sTmp := StringReplace(sTmp, ' ', '' , [rfReplaceAll]);
  		            sTmp := StringReplace(sTmp, '/', ' ', [rfReplaceAll]);
  		            sTmp := StringReplace(sTmp, '|', ' ', [rfReplaceAll]);
                  cxGrdMV_List.DataController.Values[iRow, 4] := sTmp;
                  cxGrdMV_List.DataController.Values[iRow, 5] := lst_Result.item[i].attributes.getNamedItem('Time').Text;
                  if i = 0 then
                  begin
                    sTime := StrToDateTimeDef(lst_Result.item[i].attributes.getNamedItem('Time').Text,0);
                    eTime := StrToDateTimeDef(lst_Result.item[i].attributes.getNamedItem('Time').Text,0);
                  end else
                  begin
                    eTime := sTime;
                    sTime := StrToDateTimeDef(lst_Result.item[i].attributes.getNamedItem('Time').Text,0)
                  end;
                  if MinutesBetween(sTime, eTime) > 9  then
                  begin
                    iFlag := iFlag + 1;
                  end;

									pLocType := lst_Result.item[i].attributes.getNamedItem('LocType').Text;
									if UpperCase(pLocType) = 'G' then cxGrdMV_List.DataController.Values[iRow, 6] := 'GPS위치'      else
									if UpperCase(pLocType) = 'N' then cxGrdMV_List.DataController.Values[iRow, 6] := '네트워크위치' else
									if UpperCase(pLocType) = 'M' then cxGrdMV_List.DataController.Values[iRow, 6] := '지도선택'     else
									if UpperCase(pLocType) = 'A' then cxGrdMV_List.DataController.Values[iRow, 6] := '지역선택'     else
									if UpperCase(pLocType) = 'S' then cxGrdMV_List.DataController.Values[iRow, 6] := '로그인초기값'
																							 else begin
																											cxGrdMV_List.DataController.Values[iRow, 6] := '없음';
																											pLocType := '';
																										end;

                  sTmp := lst_Result.item[i].attributes.getNamedItem('WkState').Text;
                  cxGrdMV_List.DataController.Values[iRow, 7] := sTmp;
//                  if sTmp = 'A2' then cxGrdMV_List.DataController.Values[iRow, 7] := '오더접속(운행대기)' else
//                  if sTmp = 'A3' then cxGrdMV_List.DataController.Values[iRow, 7] := '오더접속(픽업대기)' else
//                  if sTmp = 'B2' then cxGrdMV_List.DataController.Values[iRow, 7] := '운행'
//                  else cxGrdMV_List.DataController.Values[iRow, 7] := '기타';
                  cxGrdMV_List.DataController.Values[iRow, 8] := lst_Result.item[i].attributes.getNamedItem('Memo').Text;
                  cxGrdMV_List.DataController.Values[iRow, 9] := lst_Result.item[i].attributes.getNamedItem('ConfSlip').Text;

                  if (copy(lst_Result.item[i].attributes.getNamedItem('Lat').Text,1,1) = '3') and
                     (copy(lst_Result.item[i].attributes.getNamedItem('Lng').Text,1,2) = '12') then
                  begin
                    WGS84ToBessel(getWGS84(lst_Result.item[i].attributes.getNamedItem('Lng').Text), '0'+ getWGS84(lst_Result.item[i].attributes.getNamedItem('Lat').Text));
                    FRoutePoint.lon.add(inttostr(ws_Lon));
                    FRoutePoint.lat.add(inttostr(ws_Lat));
                    FRoutePoint.Idx.add(inttostr(iFlag));
                  end;
                end;
							end;
            finally
							ls_Rcrd.Free;
              cxGrdMV_List.EndUpdate;

              pSetPoiLoad;

							if AChk then Proc_RouteLine(FRoutePoint);
            end;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      slRcvList.Free;
      Screen.Cursor := crDefault;
    end;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;

end;

procedure TFrm_WOR17.Proc_WK_Point(sLon, sLat, Aid, AGu : string);
begin
  WGS84ToBessel(getWGS84(sLon), '0'+ getWGS84(sLat));
//  pWKPntF := Point(ws_Lon, ws_Lat);
//  pWKPntT := Point(ws_Lon, ws_Lat);

  OnMoveMap(ws_Lon, ws_Lat);
  Mark_Symbol(ws_Lon, ws_Lat, 1, Aid, AGu);
end;

procedure TFrm_WOR17.pSetDriverPoint;
var iRow, iLng, iLat, iNo : integer;
		sLng, sLat, sId : string;
  	mGroup : IXPOIGroup;
  	mPoi : IXPOIItem;
    mStyle : IXPOIStyle;
    AView: TcxGridDBTableView;
begin
  AView := GetCurrentView;

	iRow := AView.DataController.FocusedRecordIndex;
	if iRow = -1 then	Exit;

	iLng := AView.GetColumnByFieldName('Lon').Index;
	sLng := AView.DataController.Values[iRow, iLng];

	iLat := AView.GetColumnByFieldName('Lat').Index;
	sLat := AView.DataController.Values[iRow, iLat];

	iNo := AView.GetColumnByFieldName('No').Index;
	sId := AView.DataController.Values[iRow, iNo];

  pnlHint.Visible := False;
  if Trim(sLng) = '' then
  begin
    if PnlTop.Align = alLeft then
    begin
      pnlHint.Left := PnlTop.Width + (PnlBtm.Width  - pnlHint.Width ) div 2;
      pnlHint.Top  := pnlTitle.Height + (PnlBtm.Height - pnlHint.Height) div 2;
    end else
    begin
      pnlHint.Left := (PnlBtm.Width  - pnlHint.Width ) div 2;
      pnlHint.Top  := pnlTitle.Height + PnlTop.Height + (PnlBtm.Height - pnlHint.Height) div 2;
    end;
    pnlHint.BringToFront;
    pnlHint.Visible := True;
    pnlHint.Repaint;
    Exit;
  end;

  WGS84ToBessel(getWGS84(sLng), '0'+ getWGS84(sLat));

  if (chkCenter.Checked) Or (chkCenter.Tag = 1) then
  begin
    OnMoveMap(ws_Lon, ws_Lat);     //기사 현재 위치
    chkCenter.Tag := 0;
  end;

  pSetMapMove(ws_Lon, ws_Lat, 2, 3);

  try
    mGroup := mPoiman.FindGroup(0);

    if ( giPreID >= 0 ) And ( giPreID <> giStrID ) And ( giPreID <> giEndID ) then
    begin
      mPoi := mGroup.FindItem(giPreID);
      mStyle := mPoiman.FindStyle(100);
      if mStyle = nil then
      begin
        mStyle := mPoiman.NewStyle(100);
        mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
        mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
        mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
        mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);
        mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
      end;
      if mPoi <> nil then
        mPoi.SetStyle(mStyle);
    end;

    mPoi := mGroup.FindItem(StrToInt(sId));
    mStyle := mPoiman.FindStyle(200);
    if mStyle = nil then
    begin
      mStyle := mPoiman.NewStyle(200);
      mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
      mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
      mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
      mStyle.SetBrush(mUtil.RGBColor(255, 255, 0), 0);
      mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
    end;

    if mPoi <> nil then
    begin
      if ( StrToInt(sId) <> giStrID ) And ( StrToInt(sId) <> giEndID ) then
        mPoi.SetStyle(mStyle);
      mPoiman.SetTopItem(mPoi);
    end;

    giPreID := StrToInt(sId);
  except

  end;
end;

procedure TFrm_WOR17.cb_WKmove_OptionPropertiesChange(Sender: TObject);
begin
	if cb_WKmove_Option.Tag = 99 then exit;
	if cb_WKmove_Option.ItemIndex = 0 then
	begin
		cxTimeStart.Text := '09:00:00';
		cxTimeEnd  .Text := FormatDateTime('HH:NN:SS', Now);
	end else
	begin
		cxTimeStart.Text := '09:00:00';
		cxTimeEnd  .Text := '09:00:00';
	end;
end;

procedure TFrm_WOR17.chk_Search_RouteClick(Sender: TObject);
begin
  if chk_Search_Route.Checked then
	begin
    if chk_Search_Route.Tag = 0 then cxButton1.Click;
  end else
  begin
    if Assigned(mCtrlMan) then
    begin
      layerMan := mCtrlMan.GetLayerMan();
      layerMan.ClearLayer;                                   //경로탐색 삭제
    end;
  end;
  chk_Search_Route.Tag := 0;
end;

procedure TFrm_WOR17.chk_WKHIS_AllSearchClick(Sender: TObject);
begin
  if chk_WKHIS_AllSearch.Checked then
  begin
    cb_WKmove_Option.Enabled := True;
		cxTimeStart.Enabled := True;
    cxTimeEnd.Enabled := True;
  end else
  begin
    if sConfSlip = '' then
    begin
      ShowMessage('조건조회만 가능합니다');
      chk_WKHIS_AllSearch.Checked := True;
      chk_WKHIS_AllSearchClick(chk_WKHIS_AllSearch);
      Exit;
    end;
    cb_WKmove_Option.Enabled := False;
		cxTimeStart.Enabled := False;
		cxTimeEnd.Enabled := False;
  end;
end;

function TFrm_WOR17.SetCtrlState(setType: Integer): Integer;
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

procedure TFrm_WOR17.SetMapRectLevel(LLon, LLat, RLon, RLat: Integer);
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

function TFrm_WOR17.SK_GetAngleFromLine(pt1, pt2: TPoint): Double;
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

function TFrm_WOR17.WGS84ToBessel(Y_1, x_1: string): integer;
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

  coord := mMap_WKmoveLog.GetCoordSys();
  pos := coord.WGS84ToBessel(r_y, r_X);
  ws_Lon := pos._Lon;
  ws_Lat := pos._Lat;
end;

//function TFrm_WOR17.Angle(Pt1, Pt2: TPoint): Double;
function TFrm_WOR17.Angle(Pt1, Pt2: TTmappos): Double;
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

function TFrm_WOR17.BesselToWGS84(Y_1, x_1: double): integer;
var degree_y, degree_x, min_x, min_y, s_y, s_x, ss_y, ss_x : Double;
  r_x, r_y : integer;
  coord : TalMapXLib_TLB.IXCoordSys;
  pos : IXMapPos;
  d_s, m_s, s_s, ss_s : string;
begin

	sw_Lon := 0;
	sw_Lat := 0;
	
	coord := mMap_WKmoveLog.GetCoordSys();
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

procedure TFrm_WOR17.btnExitClick(Sender: TObject);
begin
  layerMan := mCtrlMan.GetLayerMan();
  layerMan.ClearLayer;            //경로 삭제

  chk_RView.Enabled := True;
  btnRView.Enabled := True;
  pnlRView.Visible := False;

  pSetPoiLoad;
end;

procedure TFrm_WOR17.btnMapPlayClick(Sender: TObject);
Var AView: TcxGridDBTableView;
begin
  AView := GetCurrentView;
	pMapPlay(AView.DataController.FocusedRecordIndex);
end;

procedure TFrm_WOR17.pMapPlay( idx : Integer );
Var i, iLng, iLat : Integer;
    sLng, sLat : String;
    AView: TcxGridDBTableView;
begin
  AView := GetCurrentView;

  if idx < 0 then
    idx := AView.DataController.RecordCount;

	iLng := AView.GetColumnByFieldName('Lon').Index;
	iLat := AView.GetColumnByFieldName('Lat').Index;

  gbPlayStop := False;
  for i := idx - 1 downto 0 do
  begin
    if gbPlayStop then Break;
    AView.DataController.FocusedRecordIndex := i;

    if ( AView = cxGrdMV_List ) then
    begin
      layerMan := mCtrlMan.GetLayerMan();
      layerMan.ClearLayer;
    end;

    if ( AView = cxGrdMV_List ) And ( chk_RView.Checked ) then
    begin
    	sLng := AView.DataController.Values[i, iLng];
    	sLat := AView.DataController.Values[i, iLat];
      pSetLineAdd( sLng, sLat );
    end;

    pSetDriverPoint;

    Sleep(150);
    Application.ProcessMessages;
  end;
end;

procedure TFrm_WOR17.btnMapPosClick(Sender: TObject);
begin
  if btnMapPos.Tag = 1 then
  begin
    btnMapPos.Tag := 0;
    PnlTop.Align := alLeft;
    cxSplitter1.Align := alLeft;
    pnlTop.Width := 600;
  end else
  begin
    btnMapPos.Tag := 1;
    PnlTop.Align := alTop;
    cxSplitter1.Align := alTop;
    pnlTop.Height := 300;
  end;
  btnMapPos.OptionsImage.ImageIndex := btnMapPos.Tag;

  // 위치 조정
  DestroyUI;
  CreateLevelBar;
  CreateToolBarUI;
end;

procedure TFrm_WOR17.btnMapStopClick(Sender: TObject);
begin
  gbPlayStop := True;
end;

procedure TFrm_WOR17.btn_WKSabunClick(Sender: TObject);
begin
  WGS84ToBessel(getWGS84(pLocLng), '0'+ getWGS84(pLocLat));
  OnMoveMap(ws_Lon, ws_Lat);     //기사 현재 위치
end;

procedure TFrm_WOR17.Clear_WKPOI;
begin
  if Assigned(mPoiman) then
  begin
   mPoiman.DeleteGroup(0);
   layerMan := mCtrlMan.GetLayerMan();
   layerMan.ClearLayer;            //경로탐색 삭제
  end;
end;

procedure TFrm_WOR17.CreateLevelBar;
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
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  mUiman := mCtrlMan.GetUIMan;
  mCtrlState := mCtrlMan.GetControlState;
  mDpsize := mCtrlState.GetSizeDP;
  mUtil := mMap_WKmoveLog.GetUtility;

  if mUiman.GetShowCompass = 0 then mUiman.SetShowCompass(1)
                               else mUiman.SetShowCompass(0);
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();

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

procedure TFrm_WOR17.DestroyUI;
var
obj : IXUIObj;
i : Integer;
begin
	obj := mMap_WKmoveLog.GetCtrlMan.GetUIMan.GetChildByUIID(11);
  if obj <> nil then
		obj.DestroyUIObj();

  for i :=0 to 20 do
  begin
    if (i <> 11) and (i <> 12) and (i <> 16) then
      MyToolBar1[i].DestroyUIObj();
  end;
end;

procedure TFrm_WOR17.cxButton1Click(Sender: TObject);
begin
  pnlHint.Visible := False;
  Proc_WKMoveHis_Sreach(sWkSabun, chk_Search_Route.Checked);
end;

procedure TFrm_WOR17.btnMapFPlayClick(Sender: TObject);
begin
  slLonList.Clear;
  slLatList.Clear;
  pMapPlay(-1);
end;

procedure TFrm_WOR17.btnRViewClick(Sender: TObject);
begin
  N1.Click;
  btnRView.Tag := 1;
end;

procedure TFrm_WOR17.cxGrdMC_ListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pSetDriverPoint;
end;

procedure TFrm_WOR17.cxGrdMV_ListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if cxGrdMV_List.DataController.GetSelectedCount > 1 then btnRView.Enabled := True
                                                      else btnRView.Enabled := False;

  pSetDriverPoint;
end;

procedure TFrm_WOR17.cxGrdMV_ListCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iSlip, iAccTime, iOInfo : integer;
	  sSlip, sAccTime : string;
    i : Integer;
    iCheck : Boolean;

    AView: TcxGridDBTableView;
begin
  AView := GetCurrentView;

	iRow := AView.DataController.FocusedRowIndex;
	if iRow < 0 then Exit;       

	iSlip  := AView.GetColumnByFieldName('접수번호').Index;
	iOInfo := AView.GetColumnByFieldName('오더정보').Index;

  if ( ACellViewInfo.item.Index = iSlip ) Or
     ( ACellViewInfo.item.Index = iOInfo ) then
  begin
    iCheck := False;
    for I := 0 to JON03_MAX_CNT - 1 do
    begin
      if Frm_Main.JON03MNG[i].Use then
      begin
         iCheck := True;
      end;
    end;

    if Not iCheck then Frm_Main.procMainMenuCreateActive(200);

		sSlip := AView.DataController.Values[iRow,iSlip];
    iAccTime    := AView.GetColumnByFieldName('등록일시').Index;
    sAccTime := AView.DataController.Values[iRow,iAccTime];
    if sSlip = '' then exit;
    Frm_Main.AcceptFromCreate(sSlip, sAccTime, '조회', GI_JON03_LastFromIdx);
  end else
  begin
    chkCenter.Tag := 1;
  end;
end;

procedure TFrm_WOR17.cxGrdMV_ListCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Focused then
    ACanvas.FillRect(AViewInfo.Bounds, clSkyBlue)
  else
    ACanvas.FillRect(AViewInfo.Bounds, AViewInfo.Params.Color);

  ACanvas.DrawTexT(AViewInfo.Text, AViewInfo.TextBounds, 0, True);
  ADone := True;
end;

procedure TFrm_WOR17.cxGrdMV_ListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ( Key = VK_Down ) Or ( Key = VK_UP ) then pSetDriverPoint;
end;

procedure TFrm_WOR17.cxGrdMV_ListMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cxGrdMV_List.DataController.GetSelectedCount > 1 then btnRView.Enabled := True
                                                      else btnRView.Enabled := False;
end;

procedure TFrm_WOR17.cxGrdMV_ListStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var sType : String;
    iRow : Integer;
begin
	iRow := cxGrdMV_List.DataController.GetRowInfo(ARecord.Index).RecordIndex;
  if cxGrdMV_List.DataController.Values[iRow, 1] <> Null then
    sType := cxGrdMV_List.DataController.Values[iRow, 1];

  AStyle  := cxStyle1;
  if sType = '로그인' then AStyle.Color := $00CFF7B3 else
  if sType = '오더배차' then AStyle.Color := $00CACAFF
                        else AStyle.Color := clWhite;
end;

function TFrm_WOR17.fmod(const A, B: Extended): Extended;
begin
  Result := A - (B*Trunc(A / B));
end;

procedure TFrm_WOR17.GeneralInit;
begin
	maxLogicalLevel := 13 -1;
  minLogicalLevel := 0;

  mCtrlMan := mMap_WKmoveLog.GetCtrlMan;
  CreateLevelBar;
  mCtrlState.SetLevel(3);
  CreateToolBarUI;
  MakeStatusbar;
end;

procedure TFrm_WOR17.CreateToolBarUI;
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

	mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
	mUiman := mCtrlman.GetUIMan();
	mCtrlState := mCtrlman.GetControlState();
	dpsize := mCtrlstate.GetSizeDP();
	mUtil := mMap_WKmoveLog.GetUtility();

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

function TFrm_WOR17.GetAdminCodeF(GLon, GLot: Integer): string;
var
  mAdminman : IXAdminMan;
  mCenterLL : TalMapXLib_TLB.IXPoint;
  mAdmitem : IXAdminItem;
  admcode, admname : string;
  obj : IXUIObj;
begin
//  mCtrlMan := mMap.GetCtrlMan();
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

procedure TFrm_WOR17.MakeStatusbar;
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

procedure TFrm_WOR17.MapLevel_Master(level: INTEGER);
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

procedure TFrm_WOR17.Mark_Symbol(Lon, Lat, index: Integer; AId, AGu : string);
var
  mAngle : integer;
  mGroup : IXPOIGroup;
  mGstyle, mStyle : IXPOIStyle;
  mImageman : IXImageMan;
  mImage : IXMagicImage;
  mItem : IXPOIItem;
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
      mImage := mImageman.LoadImageList('WK','Arrow.png', 16, 16);
      mGroup := mPoiman.FindGroup(0); //현재 기사위치
      if mGroup = nil then mGroup := mPoiman.NewGroup(0);

      mGstyle := mPoiman.FindStyle(1);
      if (mGstyle = nil) then
      begin
        mGstyle := mPoiman.NewStyle(1); // -1: 아이디 자동 생성
        mGstyle.SetGDIFont(GS_FONTNAME, 0, 9);                           // 레벨별 기사 상태 캡션표기
        mGstyle.SetFontColor(mUtil.RGBColor(0, 0, 0));              // 캡션글자
        mGstyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));     // 캡션 글자테두리
        mGstyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);         // 캡션배경
        mGstyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
      end;
      mGroup.SetStyle(mGstyle);

      if Not mImage.IsValid then ShowMessage('Image 이상');

      mItem := mGroup.NewItem(StrToInt(Aid)) ;
      if AGu = '' then mItem.SetCaption('[' + Aid + ']')
                  else mItem.SetCaption('[' + Aid + '.' + AGu + ']');
//      mItem.SetContents(Aname);
      mItem.SetLonLat(Lon, Lat);
      mItem.SetImage(mImage);
      mItem.SetShowImage(1);
      mItem.SetImageIndex(0);
      mItem.SetImageOffset(4);
      mItem.SetTextStyle(StrToInt('0x12'));
      mItem.SetString(Aid);

      mStyle := mPoiman.FindStyle(1);
      if mStyle = nil then
      begin
        mStyle := mPoiman.NewStyle(1);
        mStyle.SetGDIFont(GS_FONTNAME, 0, 9);                           // 레벨별 기사 상태 캡션표기
        mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));              // 캡션글자
        mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));     // 캡션 글자테두리
        mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);         // 캡션배경
        mStyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
      end;
      mItem.SetStyle(mStyle);
      mItem.SetSyncAngle(1);
      if (Pt1.lon >0) and (Pt1.lat >0) and (Pt2.lon >0) and (Pt2.lat >0) then
      mAngle := Trunc(Angle(Pt1, Pt2)); //+ 180;
      mItem.SetAngle(mAngle);
      mItem.SetAlpha(100);
    end;
  except
  end;
end;

procedure TFrm_WOR17.mMap_WKmoveLogCreate(ASender: TObject; Value: Integer);
var
  mMapMan : IXMapMan;
  mThemeMan : IXThemeMan;
  mAdminMan : IXAdminMan;
  mRootPath, XPos, YPos : String;
  sTemp : string;
begin
  try
    mRootPath := ExtractFilePath(Application.ExeName);

    mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
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

    XPos := Area_CenterLat;//'037335565';
    YPos := Area_CenterLon;//'126583729';
    WGS84ToBessel(YPos, XPos);
    OnMoveMap(ws_Lon, ws_Lat);

    sts_Chk := True;
		GeneralInit;
	except
    on E: exception do
    begin
      sTemp := 'Map 예외처리 발생:' + e.Message;
      Assert(False, E.Message);
      ShowMessage(sTemp);
    end;
  end;
end;

procedure TFrm_WOR17.mMap_WKmoveLogPOI_DblClick(ASender: TObject;
  const POI: IXPOIItem; nFlag, X, Y: Integer);
var
  pos : IXMapPos;
  mLayerman : IXLayerMan;
  mLayer : IXLayer;
  m_Lon, m_Lat : Integer;
begin
  mLayerman := mCtrlman.GetLayerMan();
  mLayer :=  mLayerman.FindLayer(1);
  if mLayer <> nil then
    mLayer.ClearObject();

  pos := mCtrlState.DPToLL(X, Y);
  m_Lon := pos.GetLon;
  m_Lat := pos.GetLat;

  OnMoveMap(m_Lon, m_Lat);
  cxGrdMV.SetFocus;
	cxGrdMV_List.DataController.FocusedRecordIndex := strtoint(POI.GetString) - 1 ;
end;

procedure TFrm_WOR17.mMap_WKmoveLogStateChange(ASender: TObject; Code, Value1,
  Value2: Integer);
var
  mGroup : IXPOIGroup;
  mGstyle : IXPOIStyle;
begin
  Try
    mUtil := mMap_WKmoveLog.GetUtility;
    mCtrlMan := mMap_WKmoveLog.GetCtrlMan;
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

procedure TFrm_WOR17.mMap_WKmoveLogUI_MouseHover(ASender: TObject;
  const Obj: IXUIObj);
begin
  if Obj.GetUIID = 11 then // Level Bar BG
     Obj.SetAlpha(0)
  else
  if ( ( Obj.GetUIID > 11 ) And ( Obj.GetUIID < 27 ) ) then
     Obj.GetParent().SetAlpha(0);
end;

procedure TFrm_WOR17.mMap_WKmoveLogUI_MouseLeave(ASender: TObject;
  const Obj: IXUIObj);
begin
  if Obj.GetUIID = 11 then // Level Bar BG
     Obj.SetAlpha(70)
  else
  if ( ( Obj.GetUIID > 11 ) And ( Obj.GetUIID < 27 ) ) then
     Obj.GetParent().SetAlpha(70);
end;

procedure TFrm_WOR17.mMap_WKmoveLogUI_MouseMove(ASender: TObject;
  const Obj: IXUIObj; Flag, X, Y: Integer);
begin
  if Obj.GetUIID > 200 then
  begin
    MyToolBar1[Obj.GetUIID - 200].SetItemIndex(3);
    Obj.SetAlpha(0);
  end;
end;

procedure TFrm_WOR17.Map_ZoomIn;
begin
  try
    mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState;
  	if (mCtrlState.GetLevel() > minLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() -1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_WOR17.Map_ZoomOut;
begin
  try
    mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState;
  	if (mCtrlState.GetLevel() < maxLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() +1);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_WOR17.Map_SetLevel(level: Integer): Integer;
begin
  if (level < minLogicalLevel) then Exit;
  if (level > maxLogicalLevel) then Exit;
  try
    mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState;
    mCtrlState.SetLevel(level);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_WOR17.mMap_WKmoveLogUI_MouseUp(ASender: TObject;
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
  end
  else
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

procedure TFrm_WOR17.N1Click(Sender: TObject);
Var
  style : IXLayerStyle;
  mPolygon : IXLayerPolygon;
  mCenterLL : TalMapXLib_TLB.IXPoint;

	mGroup : IXPOIGroup;
	mPoi : IXPOIItem;
  mStyle : IXPOIStyle;

  sLng, sLat, sNo : String;
  i, j, iLng, iLat, iNo, iRow : Integer;
begin
 // 경로보기
  try
    cxGrdMC_List.DataController.SetRecordCount(0);
    cxGrdMC_List.BeginUpdate;
    try
      for i := 0 to cxGrdMV_List.DataController.RecordCount - 1 do
      begin
        if cxGrdMV_List.ViewData.Records[i].Selected then
        begin
          iRow := cxGrdMC_List.DataController.AppendRecord;
          for j := 1 to cxGrdMV_List.ColumnCount - 1 do
          begin
            cxGrdMC_List.DataController.Values[iRow, j] := cxGrdMV_List.ViewData.Records[i].Values[j];
          end;
        end;
      end;
    finally
      cxGrdMC_List.endUpdate;
    end;

    cxGrdMC_List.BeginUpdate;
    try
      for i := 0 to cxGrdMC_List.DataController.RecordCount - 1 do
      begin
        cxGrdMC_List.DataController.Values[i, 0] := cxGrdMC_List.DataController.RecordCount - i;
      end;
    finally
      cxGrdMC_List.endUpdate;
    end;

    chk_RView.Enabled := False;
    btnRView.Enabled := False;

    pnlRView.BringToFront;
    pnlRView.Visible := True;

    pSetPoiLoad;

    layerMan := mCtrlMan.GetLayerMan();
    layerMan.ClearLayer;            //경로 삭제

    mCtrlState := mctrlMan.GetControlState();
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
    try
      iLng := cxGrdMC_List.GetColumnByFieldName('Lon').Index;
      iLat := cxGrdMC_List.GetColumnByFieldName('Lat').Index;
      iNo  := cxGrdMC_List.GetColumnByFieldName('No').Index;
      for i := 0 to cxGrdMC_List.DataController.RecordCount - 1 do
      begin
        sLng := cxGrdMC_List.ViewData.Records[i].Values[iLng];
        sLat := cxGrdMC_List.ViewData.Records[i].Values[iLat];
        sNo  := cxGrdMC_List.ViewData.Records[i].Values[iNo];

        if ( Trim(sLng) = '' ) Or ( Trim(sLat) = '' ) then Continue;

        if giEndId = -1 then giEndId := StrToInt(sNo);
        WGS84ToBessel(getWGS84(sLng), '0'+ getWGS84(sLat));
        mPolygon.AddPoint(ws_Lon, ws_Lat);
        mPolygon.SetCanClick(1);
        mPolygon.SetCanFocus(1);
        mPolygon.SetClosed(0);   // 0: Line, 1: Polygon
        mPolygon.SetStyle(style);
      end;
      giStrId := StrToInt(sNo);
    finally
      mPolygon.EndUpdate();
    end;

    mGroup := mPoiman.FindGroup(0);
    mPoi := mGroup.FindItem(giStrId);
    mStyle := mPoiman.FindStyle(300);
    if mStyle = nil then
    begin
      mStyle := mPoiman.NewStyle(300);
      mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
      mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
      mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
      mStyle.SetBrush(mUtil.RGBColor(255, 0, 0), 0);
      mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
    end;
    mPoi.SetStyle(mStyle);
    mPoiman.SetTopItem(mPoi);

    mPoi := mGroup.FindItem(giEndId);
    mStyle := mPoiman.FindStyle(400);
    if mStyle = nil then
    begin
      mStyle := mPoiman.NewStyle(400);
      mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
      mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
      mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
      mStyle.SetBrush(mUtil.RGBColor(0, 0, 255), 0);
      mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
    end;
    mPoi.SetStyle(mStyle);
    mPoiman.SetTopItem(mPoi);
  Except

  end;
end;

procedure TFrm_WOR17.pSetLineAdd( ALon, ALat : String );
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

procedure TFrm_WOR17.OnMoveMap(lon, lat: INTEGER);
begin
  mCtrlState := mCtrlMan.GetControlState;
  mCtrlState.SetLLCenter(lon, lat);
end;

procedure TFrm_WOR17.PnlBtmResize(Sender: TObject);
begin
  if PnlTop.Align = alLeft then
  begin
    pnlHint.Left := PnlTop.Width + (PnlBtm.Width  - pnlHint.Width ) div 2;
    pnlHint.Top  := pnlTitle.Height + (PnlBtm.Height - pnlHint.Height) div 2;
  end else
  begin
    pnlHint.Left := (PnlBtm.Width  - pnlHint.Width ) div 2;
    pnlHint.Top  := pnlTitle.Height + PnlTop.Height + (PnlBtm.Height - pnlHint.Height) div 2;
  end;

  if sts_Chk then
  begin
		DestroyUI;
    CreateLevelBar;
    CreateToolBarUI;
	end;
end;

procedure TFrm_WOR17.ObjectModify;
var
  baseman : IXBaseMan;
  layerMan : IXLayerMan;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  layerman := mCtrlman.GetLayerMan();
  mUtil := mMap_WKmoveLog.GetUtility();

  baseman := layerman.CastToBaseManager();
  if baseman.GetManMode = mUtil.GetConstToValue('TMMAN_MODE_EDIT') then
      baseman.SetManMode(mUtil.GetConstToValue('TMMAN_MODE_NONE'))
  else baseman.SetManMode(mUtil.GetConstToValue('TMMAN_MODE_EDIT'));
end;

procedure TFrm_WOR17.ShowThemeForm;
var
  thememan : IXThemeMan;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  thememan := mCtrlMan.GetThemeMan();
  thememan.ShowForm();
end;

procedure TFrm_WOR17.RemovePolygon;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(1);
  if layer <> nil then layer.ClearObject();
end;

procedure TFrm_WOR17.SaveImage;
var filename : WideString;
begin
	mUtil := mMap_WKmoveLog.GetUtility();
	filename := mUtil.SaveImageDialog('C:\', 'MapImage.png');
	mMap_WKmoveLog.SaveImage(filename);
end;

procedure TFrm_WOR17.CheckArea;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  mUtil := mMap_WKmoveLog.GetUtility();

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

procedure TFrm_WOR17.CheckDistance;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  mUtil := mMap_WKmoveLog.GetUtility();

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

procedure TFrm_WOR17.DelDistance;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(2);
  if layer <> nil then layer.ClearObject();
end;

procedure TFrm_WOR17.HistoryNext;
begin
  mCtrlman := mMap_WKmoveLog.GetCtrlMan();
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryNext();
end;

procedure TFrm_WOR17.HistoryPrev;
begin
  mCtrlman := mMap_WKmoveLog.GetCtrlMan();
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryPrev();
end;

procedure TFrm_WOR17.Map_Rotate;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  mCtrlMan.SetMapRotation(1);
end;

procedure TFrm_WOR17.BirdView;
var
  vector : IXVector;
begin
  mCtrlState := mMap_WKmoveLog.GetCtrlMan.GetControlState ;
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

procedure TFrm_WOR17.View3D;
var
  state : Integer;
  mtype : Integer;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  mUiman := mCtrlMan.GetUIMan;
  mCtrlState := mCtrlMan.GetControlState;
  mDpsize := mCtrlState.GetSizeDP;
  mUtil := mMap_WKmoveLog.GetUtility;
  mCtrlState := mMap_WKmoveLog.GetCtrlMan.GetControlState;
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

procedure TFrm_WOR17.ViewText;
var
  mMapMan : IXMapMan;
begin
  mMapMan := mMap_WKmoveLog.GetCtrlMan.GetMapMan();
  if mMapMan.GetVisible = 5 then mMapMan.SetVisible(7)
  else if mMapMan.GetVisible = 7 then mMapMan.SetVisible(5);
end;

procedure TFrm_WOR17.CopyToClipboard;
begin
  mMap_WKmoveLog.CopyToClipboard();
end;

procedure TFrm_WOR17.DrawPolygon;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  mUtil := mMap_WKmoveLog.GetUtility();

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

procedure TFrm_WOR17.DrawPolyline;
var
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  obj : IXLayerPolygon;
begin
  mCtrlMan := mMap_WKmoveLog.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  mUtil := mMap_WKmoveLog.GetUtility();

  style := layerMan.NewStyle(-1);
  style.SetPen(mUtil.RGBColor(0, 0, 255), 2, mUtil.GetConstToValue('PS_DOT'));

  obj := layerMan.NewPolygon(1, -1);
  obj.SetStyle(style);
  obj.SetClosed(1);
  obj.SetCanClick(1);
  obj.SetCanFocus(1);

  obj.SetStateModeNew();
end;

procedure TFrm_WOR17.pSetMapMove(LLon, LLat, RLon, RLat: Integer);
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
       ( iX >= mMap_WKmoveLog.Width - 100 ) Or ( iY >= mMap_WKmoveLog.Height - 100 ) then
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

      if ( iX >= mMap_WKmoveLog.Width - 100 ) And ( iY >= mMap_WKmoveLog.Height - 100 ) then
      begin
        mPos := mCtrlState.DPToLL(mMap_WKmoveLog.Width - 100, mMap_WKmoveLog.Height - 100);

        CLon := (LLon - mPos._Lon);
        CLat := (LLat - mPos._Lat);
      end else
      begin
        if ( iX >= mMap_WKmoveLog.Width ) then
        begin
          mPos := mCtrlState.DPToLL(mMap_WKmoveLog.Width - 100, iY);

          CLon := (LLon - mPos._Lon);
        end else
        if ( iY >= mMap_WKmoveLog.Height ) then
        begin
          mPos := mCtrlState.DPToLL(iX, mMap_WKmoveLog.Height - 100);

          CLat := (LLat - mPos._Lat);
        end;
      end;

      mCtrlState.SetLLCenter(mCenterLL._X + CLon, mCenterLL._Y + CLat);
    end;
  except

  end;
end;

procedure TFrm_WOR17.pSetPoiLoad;
Var AView: TcxGridDBTableView;
    i, iLng, iLat, iLocType : Integer;
    AYMax, AXMax, AYMin, AXMin, AWKLon, AWKLat : integer;
    sLng, sLat : String;
begin
  AView := GetCurrentView;

	iLng := AView.GetColumnByFieldName('Lon').Index;
	iLat := AView.GetColumnByFieldName('Lat').Index;
	iLocType := AView.GetColumnByFieldName('위치타입').Index;

  try
    Clear_WKPOI;
    for i := 0 to AView.DataController.RecordCount - 1 do
    begin
      sLng := AView.DataController.Values[i, iLng];
      sLat := AView.DataController.Values[i, iLat];

      pLocType := AView.DataController.Values[i, iLocType];
      if (UpperCase(pLocType) <> 'G') Or ( UpperCase(pLocType) <> 'N' ) then pLocType := '';

      if ( Copy(sLat, 1, 1) = '3' ) and ( Copy(sLng, 1, 2) = '12' ) then
      begin
        WGS84ToBessel(getWGS84(sLng), '0'+ getWGS84(sLat));

        /////이동경로 표기를 위한 좌표 값 저장, 각도를 구하기 위한 좌표 값 저장////
        if i = 0 then
        begin
          Pt1.lon := ws_Lon;
          Pt1.lat := ws_Lat;
        end else
        if i = (AView.DataController.RecordCount - 1) then
        begin
          Pt2.lon := Pt1.lon;
          Pt2.lat := Pt1.lat;
          Pt1.lon := ws_Lon;
          Pt1.lat := ws_Lat;
        end else
        begin
          Pt2.lon := Pt1.lon;
          Pt2.lat := Pt1.lat;
          Pt1.lon := ws_Lon;
          Pt1.lat := ws_Lat;
        end;
        /////이동경로 표기를 위한 좌표 값 저장////

        /////지도 크기를 정하기 위한 좌표 값 저장////
        if i = 0 then AYMax := ws_Lon
        else
        begin
          if AYMax < ws_Lon then
            AYMax := ws_Lon;
        end;
        if i = 0 then AXMax := ws_Lat
        else
        begin
          if AXMax < ws_Lat then
            AXMax := ws_Lat;
        end;

        if i = 0 then AYMin := ws_Lon
        else
        begin
          if AYMin > ws_Lon then
            AYMin := ws_Lon;
        end;
        if i = 0 then AXMin := ws_Lat
        else
        begin
          if AXMin > ws_Lat then
            AXMin := ws_Lat;
        end;
        /////지도 크기를 정하기 위한 좌표 값 저장////

        //기사 위치 마크
        Proc_WK_Point(sLng, sLat, IntToStr(AView.DataController.Values[i, 0]), pLocType);
      end;
    end;
    if AYMin > AWKLon then AYMin := AWKLon;
    if AXMin > AWKLat then AXMin := AWKLat;
    if AYMax < AWKLon then AYMax := AWKLon;
    if AXMax > AWKLon then AXMax := AWKLon;
    SetMapRectLevel(AYMax, AXMax, AYMin, AXMin);

    if Not chk_Search_Route.Checked then
    begin
      if AView.DataController.RecordCount > 0 then
      begin
        Try
          iLng := AView.GetColumnByFieldName('Lon').Index;
          sLng := AView.DataController.Values[0, iLng];
          iLat := AView.GetColumnByFieldName('Lat').Index;
          sLat := AView.DataController.Values[0, iLat];
          WGS84ToBessel(getWGS84(sLng), '0'+ getWGS84(sLat));
          OnMoveMap(ws_Lon, ws_Lat);     //기사 현재 위치
//										mCtrlState.SetLevel(2);
        except

        end;
      end;
    end;

    giPreId := -1;
    giStrId := -1;
    giEndId := -1;
  except

  end;
end;

function TFrm_WOR17.GetCurrentView: TcxGridDBTableView;
begin
	Result := cxGrdMV_List;

  if pnlRView.Visible then
		Result := cxGrdMC_List;    // 당일 내역 목록
end;

end.

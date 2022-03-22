unit xe_WOR19;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, xe_GNL,
  MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxStyles, cxCustomData, FastStringFuncs,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, TalMapXLib_TLB,
  Vcl.OleCtrls, Vcl.Dialogs, cxGroupBox, SmartSRXLib_TLB, Math, DateUtils,
	cxCheckBox, cxSplitter, ComObj, cxSpinEdit, cxTimeEdit, dxSkinsCore,
  dxSkinscxPCPainter, cxCurrencyEdit, dxSkinOffice2010Silver, dxDateRanges,
  dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_WOR19 = class(TForm)
    PnlBtm: TPanel;
    mMap_WKAccident: TTalMapXCtrl;
    pnlTitle: TPanel;
    cxGB_WK_Status: TcxGroupBox;
    cxGrdWKAccidentList: TcxGrid;
		cxGrdWKAccidentList_List: TcxGridDBTableView;
    cxGrdWKAccidentList_ListColumn1: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn8: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn9: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn2: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn10: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn11: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn12: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn13: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn15: TcxGridDBColumn;
		cxGrdWKAccidentList_ListColumn16: TcxGridDBColumn;
    cxGrdWKAccidentList_Level: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    BtnClose: TcxButton;
    Label1: TLabel;
    PnlMain: TPanel;
    PnlTop: TPanel;
    cxLblActive: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    btnAccidentList: TcxButton;
    cxLabel2: TcxLabel;
    lblSosokNameA3: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDtStart: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxDtEnd: TcxDateEdit;
    cxLabel6: TcxLabel;
    cbSelList: TcxComboBox;
    cxEdtSelText: TcxTextEdit;
    cxLabel7: TcxLabel;
    RbButton1: TcxButton;
    btnExcelA3: TcxButton;
    cxGrdWKAccidentList_ListColumn17: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn18: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn19: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn20: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn21: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn22: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn3: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn23: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn24: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn25: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn26: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn27: TcxGridDBColumn;
    pm_WorkderAccident: TPopupMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N21: TMenuItem;
    pop_date: TPopupMenu;
    MiToday: TMenuItem;
    MiYesterday: TMenuItem;
    MiOneWeek: TMenuItem;
    MiOneMonth: TMenuItem;
    MiStartMonth: TMenuItem;
    N2: TMenuItem;
    cxGrdWKAccidentList_ListColumn14: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn4: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn5: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn6: TcxGridDBColumn;
    cxGrdWKAccidentList_ListColumn7: TcxGridDBColumn;
    N3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure mMap_WKAccidentCreate(ASender: TObject; Value: Integer);
    procedure mMap_WKAccidentStateChange(ASender: TObject; Code, Value1,
      Value2: Integer);
		procedure btn_WKSabunClick(Sender: TObject);
		procedure cxGrdWKAccidentList_ListCellDblClick(Sender: TcxCustomGridTableView;
			ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
		procedure FormDeactivate(Sender: TObject);
		procedure FormActivate(Sender: TObject);
		procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
			Shift: TShiftState; X, Y: Integer);
		procedure FormShow(Sender: TObject);
		procedure btnAccidentListClick(Sender: TObject);
		procedure MiTodayClick(Sender: TObject);
		procedure MiYesterdayClick(Sender: TObject);
		procedure MiOneWeekClick(Sender: TObject);
		procedure MiOneMonthClick(Sender: TObject);
		procedure MiStartMonthClick(Sender: TObject);
		procedure cxGrdWKAccidentList_ListCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
			AShift: TShiftState; var AHandled: Boolean);
		procedure N6Click(Sender: TObject);
		procedure N2Click(Sender: TObject);
		procedure btnExcelA3Click(Sender: TObject);
		procedure N7Click(Sender: TObject);
		procedure mMap_WKAccidentPOI_Click(ASender: TObject; const POI: IXPOIItem; nFlag, X, Y: Integer);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure cxEdtSelTextKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);

	private
		{ Private declarations }
		mCtrlState : IXMasterControlState;
		mCtrlMan : IXCtrlMan;
		mUiman : IXUIMan;
		mDpsize : IXSize;
		mUtil : IXUtility;
		mPoiman : TalMapXLib_TLB.IXPOIMan;
		mPoll : TalMapXLib_TLB.IXPoint;
		mImageman : IXImageMan;
		mBPoi : iXPOIItem;


		maxLogicalLevel : Integer;
		minLogicalLevel : Integer;
		ws_Lon, ws_Lat : integer;
		sw_Lon, sw_Lat : Double;
    m_Lon, m_Lat : Integer;   //mousemove 값
    mBtnLevle : array [0..12] of IXUIButton;
    btnImg : IXUIImage;
    stcMsgArea: IXUIStaticText;
    layerMan : IXLayerMan;

		pWkSabun, pConnState, pLocLat, pLocLng, pLocType, pLocElapseTime, pLocPOI : string;
		FExcelDownCash, FExcelDownBeach, FExcelDownBlock : string;

    function SetCtrlState(setType : Integer):Integer;
		procedure WGS84ToBessel(Y_1, X_1 : string; Var Y_2, X_2 : Integer);
		function BesselToWGS84(Y_1, x_1 : double) : integer;
    function SetWGS84(idata : string) : string;

		procedure OnMoveMap(lon, lat : INTEGER);
    procedure GeneralInit;
		procedure CreateLevelBar;                                          //레벨생성
    procedure MapLevel_Master(level : INTEGER);
		procedure MakeStatusbar;
		function GetAdminCodeF(GLon, GLot : Integer) : string;
		procedure Mark_Symbol(Lon, Lat, index: Integer; AName : string);

		procedure SetAccidentPoint(ALon, ALat : Integer; ACaption, AContents: string); //사고위치 표기

		procedure SetMapRectLevel(LLon, LLat, RLon, RLat : Integer);
		procedure ClearPOI;

		procedure Proc_MapMode_No1(DepName, DepLng, DepLat, ArrName, ArrLng, ArrLat, AccName, AccLng, AccLat : string);
		procedure Proc_RouteLine(AFromLon, AFromLat, AToLon, AToLat : integer; AViaLon, AViaLat : array of integer); //메인지도 경로 표기
	public
		gBrNo : string;
		sWkSabun : String;
		sConfSlip : String;   // 접수번호;
		sBeaChaTime : String;
		pWOR19Dock : TUNDOCKMNG;
		{ Public declarations }
		procedure proc_init;
	end;

var
	Frm_WOR19: TFrm_WOR19;

implementation

{$R *.dfm}

uses xe_Func, xe_packet, xe_Msg, xe_GNL2,  xe_GNL3, xe_XML, xe_Dm, xe_Lib, main, xe_JON32, xe_Flash;//, xe_WOR20;

procedure TFrm_WOR19.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
	cxLblActive.Visible := True;
end;

procedure TFrm_WOR19.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_WOR19.FormCreate(Sender: TObject);
var
	Save: LongInt;
begin
	if BorderStyle = bsNone then Exit;
  //====================================================
  // 폼 타이틀 제거..
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

  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

end;

procedure TFrm_WOR19.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_WOR19.FormDestroy(Sender: TObject);
begin
	Frm_WOR19 := Nil;
	if Assigned(mMap_WKAccident) then FreeAndNil(mMap_WKAccident);
end;

procedure TFrm_WOR19.FormShow(Sender: TObject);
begin
  fSetFont(Frm_WOR19, GS_FONTNAME);
  btnAccidentList.Click;
end;

procedure TFrm_WOR19.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_WOR19.proc_init;
var
	I : Integer;
begin
	//그리드 초기화
	cxGrdWKAccidentList_List.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cxGrdWKAccidentList_List.ColumnCount - 1 do
		cxGrdWKAccidentList_List.Columns[i].DataBinding.ValueType := 'String';

	i := cxGrdWKAccidentList_List.GetColumnByFieldName('지급보험금').Index;
	cxGrdWKAccidentList_List.Columns[i].DataBinding.ValueType := 'Currency';   //지급보험금
	i := cxGrdWKAccidentList_List.GetColumnByFieldName('자기부담금').Index;
	cxGrdWKAccidentList_List.Columns[i].DataBinding.ValueType := 'Currency';   //자기부담금
	cxGrdWKAccidentList_List.DataController.SetRecordCount(0);

	cxDtStart.Date := StrToDate(Copy(startDateTime('yyyy-mm-dd hh:nn:ss'), 1, 10));
	cxDtEnd.Date := cxDtStart.Date + 1;
	cxEdtSelText.Text := '';
	gBrNo := '';

end;

procedure TFrm_WOR19.Proc_MapMode_No1(DepName, DepLng, DepLat, ArrName, ArrLng, ArrLat, AccName, AccLng, AccLat : string);
Var i : Integer;
  sy, sx : string;
	AYMax, AXMax, AYMin, AXMin : integer;
  FLon, FLat, TLon, TLat : integer;
  ViaLon, ViaLat : array of integer;

	sXList, sYList : array[0..10] of integer;
begin
	if (DepLat = '') or (DepLng = '') then Exit;
  Try
		ClearPOI;

		if (copy(DepLng,1,2) = '12') and (copy(DepLat,1,2) = '03') then
		begin
			sy := getWGS84(DepLng);
//			sx := getWGS84(DepLat);
			sx := '0'+ getWGS84(inttostr(strtoint(DepLat)));
			WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);

			Mark_Symbol(ws_Lon, ws_Lat, 2, DepName);

      sYList[0] := ws_Lon;
			sXList[0] := ws_lat;
      FLon := ws_Lon;
      FLat := ws_lat;
    end;

		if (copy(ArrLng,1,2) = '12') and (copy(ArrLat,1,2) = '03') then
		begin
			sy := getWGS84(ArrLng);
			sx := '0'+ getWGS84(inttostr(strtoint(ArrLat)));
//			sx := '0'+ getWGS84(ArrLat);
			WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);
			Mark_Symbol(ws_Lon, ws_Lat, 3, ArrName);
			sYList[1] := ws_Lon;
			sXList[1] := ws_lat;
			TLon := ws_Lon;
			TLat := ws_lat;
		end;

		if (copy(AccLng,1,2) = '12') and (copy(AccLat,1,2) = '03') then
		begin
			sy := getWGS84(AccLng);
			sx := '0'+ getWGS84(inttostr(strtoint(AccLat)));
//			sx := '0'+ getWGS84(ArrLat);
			WGS84ToBessel(sy, sx, ws_Lon, ws_Lat);
			SetAccidentPoint(ws_Lon, ws_Lat, '사고위치', AccName);
			sYList[2] := ws_Lon;
			sXList[2] := ws_lat;
//			TLon := ws_Lon;
//			TLat := ws_lat;
		end;    
{    if ViaLat.Count > 0 then
		begin
      SetLength(ViaLon, ViaLng.Count);
      SetLength(ViaLat, ViaLat.Count);
      for i := 0 to ViaLat.Count - 1 do
      begin
				if (copy(ViaLng[i],1,2) = '12') and (copy(ViaLat[i],1,1) = '3') then
        begin
          sy := getWGS84(FormatFloat('0.000000',strtofloat(ViaLng[i])));
          sx := '0'+ getWGS84(FormatFloat('0.000000',strtofloat(ViaLat[i])));
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
		end;   }
		Proc_RouteLine(FLon, FLat, TLon, TLat, ViaLon, ViaLat);


    i := 0;
		while i <=  2 do
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
      end
      else
      begin
        if sYList[i] > 0 then
          if AYMin > sYList[i] then
            AYMin := sYList[i];
      end;

      if i = 0 then
      begin
        if sXList[i] > 0 then
          AXMin := sXList[i]
      end
      else
      begin
        if sXList[i] > 0 then
          if AXMin > sXList[i] then
						AXMin := sXList[i];
      end;
      inc(i);
    end;

		SetMapRectLevel(AYMax, AXMin, AYMin, AXMax);  
  except
    on e: Exception do
    begin
      ShowMessage('Proc_MapMode_No1 에러');
      Assert(False, E.Message);
    end;
	End;    
end;

procedure TFrm_WOR19.Proc_RouteLine(AFromLon, AFromLat, AToLon, AToLat: integer; AViaLon, AViaLat: array of integer);
Var StartLat, EndLon, EndLat, i, j, FLon, FLat, TLon, TLat : Integer;
  aDistance : Double;
  aTime, aHour, aMin, aSec, SRPort, iErr : integer;
  sy, sx, sTmp, SRIp : string;
  ViaLon, ViaLat : array of integer;
  info : IXRouteInfo4;
//  AYMax, AXMax, AYMin, AXMin : integer;
  layerMan : IXLayerMan;
  style : IXLayerStyle;
  mPolygon : IXLayerPolygon;
	mCenterLL : TalMapXLib_TLB.IXPoint;
begin
  //<-------------------출발지. 도착지. 경유지 좌표변환--------------------------------->
  //<-------------------경로탐색 시작--------------------------------------------------->

  Frm_Main.Frm_JON01N[GI_JON01_LastFromIdx].proc_dis_alculation(GI_JON01_LastFromIdx, False);

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
				GMessagebox('경로 탐색 서버 접속 장애 발생으로 인해 연결할수 없습니다.', CDMSE);
        Exit;
      end;

      SetDebugeWrite('3. SmartSR Start Bessel : ' + IntToStr(AFromLon) + ',' + IntToStr(AFromLat));
      RouteMan.SetOrgLonLat(AFromLon, AFromLat);
      RouteMan.ClearNode();
      for i := 0 to Length(AViaLon) -1 do
      begin
        RouteMan.AddNode(AViaLon[i], AViaLat[i]);  //// 경유지는 필요하면 하면 추가하세요.
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
        if Frm_Main.Frm_JON01N[Self.Tag].fDirKm < 70 then
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
        FLon := 0; FLat := 0; TLon := 0; TLat := 0;
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
          stcMsgArea.SetCaption('출->도 거리:' + FloatToStr(aDistance) + 'Km 시간:' + IntToStr(aHour) + '시간' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초')
        else
          stcMsgArea.SetCaption('출->도 거리:' + FloatToStr(aDistance) + 'Km 시간:' + IntToStr(aMin) + '분' + IntToStr(aSec) + '초');
        stcMsgArea.SetCanFocus(0);
        stcMsgArea.SetCanClick(0);
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
    SetDebugeWrite('3. SmartSR Distance : ' + FloatToStr(aDistance));
    FreeAndNil(SmartSR);
    RouteMan := nil;
  end;
end;

procedure TFrm_WOR19.SetAccidentPoint(ALon, ALat: Integer; ACaption, AContents: string);
var
  I: Integer;
	Title, Desc: string;
	Lon_p, Lat_p : Integer;
	itemCount, mAngle : integer;
	mGroup : IXPOIGroup;
	mStyle : IXPOIStyle;
	mImage : IXMagicImage;
	mItem : IXPOIItem;
	mRootPath : string;
	ls_Rcrd : TStringList;
begin
	SetDebugeWrite('frm_BOK03.SetIcon');
	try
		itemCount := 0;
		mPoll := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

		mPoll.SetX(ALon); // 지도의 X 좌표
		mPoll.SetY(ALat); // 지도의 Y 좌표

		Lon_p := mPoll.GetX;
		Lat_p := mPoll.Gety;

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
		mImage := mImageman.LoadImage('Problem','Problem.png');

				 
		Desc := AContents;
		Title := ACaption;

    if Not mImage.IsValid then ShowMessage('Image 이상');
		mAngle := 0;

		if mGroup.FindItem(0) = nil then
		begin
			mItem := mGroup.NewItem(0);
			Try
				ls_Rcrd := TStringList.Create;
				GetTextSeperationEx(' ', AContents, ls_Rcrd);
				if ls_Rcrd.Count >= 4 then
				begin
					if Trim(ls_Rcrd[3]) <> '' then mItem.SetCaption('사고위치 :' + ls_Rcrd[3])
																		else mItem.SetCaption('사고위치 :' + ls_Rcrd[2]);

					mItem.SetContents(ls_Rcrd[0] + ' ' + ls_Rcrd[1] + ' ' + ls_Rcrd[2]);
				end;
			Finally
				ls_Rcrd.Free;
			End;
			mItem.SetLonLat(Lon_p, Lat_p);
			mItem.SetImage(mImage);
			mItem.SetShowImage(1);
			mItem.SetImageIndex(0);
			mItem.SetImageOffset(4);
			mItem.SetTextStyle(StrToInt('0x12'));
			mItem.SetString('club/'+IntToStr(ALon) + '/' + IntToStr(ALat));
			mItem.SetTag(1000);

			if i mod 2 <> 0 then mItem.SetStyle(mStyle);
//			mItem.SetCaption(Title);
//			mItem.SetContents(Desc);
			mItem.SetSyncAngle(1);
			mItem.SetAngle(mAngle);
			mItem.SetAlpha(100);

			mAngle := mAngle + 10;
			if(mAngle > 360) then mAngle := 0;
		end;
	except
		on e: exception do
		begin
			Log('SetIcon Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'SetIcon Error :' + E.Message);
    end;
  end;
end;

function TFrm_WOR19.SetCtrlState(setType: Integer): Integer;
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

procedure TFrm_WOR19.SetMapRectLevel(LLon, LLat, RLon, RLat: Integer);
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


function TFrm_WOR19.SetWGS84(idata: string): string;
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

procedure TFrm_WOR19.WGS84ToBessel(Y_1, x_1: String; Var Y_2, X_2 : Integer);
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

		coord := mMap_WKAccident.GetCoordSys();
    pos := coord.WGS84ToBessel(r_y, r_X);
    Y_2 := pos._Lon;
    X_2 := pos._Lat;
  except

  end;
end;

//function TFrm_WOR19.Angle(Pt1, Pt2: TPoint): Double;

function TFrm_WOR19.BesselToWGS84(Y_1, x_1: double): integer;
var degree_y, degree_x, min_x, min_y, s_y, s_x, ss_y, ss_x : Double;
  r_x, r_y : integer;
  coord : TalMapXLib_TLB.IXCoordSys;
  pos : IXMapPos;
  d_s, m_s, s_s, ss_s : string;
begin

  coord := mMap_WKAccident.GetCoordSys();
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

procedure TFrm_WOR19.btnAccidentListClick(Sender: TObject);
var
	ErrCode : Integer;
	Param, XmlData, ErrMsg : String;
	lst_Result: IXMLDomNodeList;
	xdom: msDomDocument;
	ls_Rcrd, slTmp, slList : TStringList;
	iRow, i, j : integer;
begin
	Param := pWOR19Dock.HdNo;
	Param := Param + '│' + gBrNo;
	Param := Param + '│' + IntToStr(cbSelList.ItemIndex + 1);
	Param := Param + '│' + Trim(cxEdtSelText.Text);
	Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtStart.Date);
	Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEnd.Date);

	slList := TStringList.Create;
	Screen.Cursor := crHourGlass;
	try
		if not RequestBasePaging(GetSEL06('GET_INS_CALL_ACCIDENT', 'INS.GET_INS_CALL_ACCIDENT', '100', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('콜당보험사고접수현황 조회 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
		try
			Frm_Flash.cxPBar1.Properties.Max := slList.Count;
			Frm_Flash.cxPBar1.Position := 0;
			cxGrdWKAccidentList_List.DataController.SetRecordCount(0);
			cxGrdWKAccidentList_List.BeginUpdate;
			for j := 0 to slList.Count - 1 do
			begin
				Frm_Flash.cxPBar1.Position := j + 1;
				Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
				Application.ProcessMessages;
				xmlData := slList.Strings[j];
				xdom.loadXML(XmlData);

				if (0 < GetXmlRecordCount(XmlData)) then
				begin
					lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
					ls_Rcrd := TStringList.Create;
					try
						for i := 0 to lst_Result.length - 1 do
						begin
							GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							iRow := cxGrdWKAccidentList_List.DataController.AppendRecord;
							ls_Rcrd.Insert(0, IntToStr(iRow + 1));

		// 접수번호    │고객연락처    │기사사번  │자체사번  │기사명│기사연락처│사고시간  │소속지사명  │소속지사코드│발주지사명│
		// 발주지사코드│발주사대표번호│출발지    │출발지좌표│도착지│도착지좌표│사고위치명│사고위치좌표│사고진행상태│보험사접수번호│
		// 담보구분    │지급보험금    │자기부담금│사고처리담당자(이름,부서,직급,핸드폰번호)           사고진행상태(10:접수, 20:조사, 30:심사, 40:종결, 50: 면책)
			 // 담보구분(1-대인: 책임, 2-대인: 임의, 3-대물: 책임, 4-대물: 임의, 5-대손: 책임, 6-대손: 임의, 6-대차: 책임, 7-대차: 임의)
   
							cxGrdWKAccidentList_List.DataController.Values[iRow,  0] := ls_Rcrd[ 0];   					 //순번
							cxGrdWKAccidentList_List.DataController.Values[iRow,  1] := GetStrToDateTimeGStr(ls_Rcrd[ 7], 3); //사고시간      ;
							cxGrdWKAccidentList_List.DataController.Values[iRow,  2] := ls_Rcrd[20]; 					   //보험사접수번호
							cxGrdWKAccidentList_List.DataController.Values[iRow,  3] := ls_Rcrd[ 3];   					 //기사사번
							cxGrdWKAccidentList_List.DataController.Values[iRow,  4] := ls_Rcrd[ 4];   					 //자체사번
							cxGrdWKAccidentList_List.DataController.Values[iRow,  5] := ls_Rcrd[ 5];   					 //기사명
							cxGrdWKAccidentList_List.DataController.Values[iRow,  6] := StrToCall(ls_Rcrd[ 6]);  //기사연락처
							cxGrdWKAccidentList_List.DataController.Values[iRow,  7] := ls_Rcrd[ 1];   					 //접수번호
							cxGrdWKAccidentList_List.DataController.Values[iRow,  8] := StrToCall(ls_Rcrd[ 2]);  //고객연락처
							cxGrdWKAccidentList_List.DataController.Values[iRow,  9] := ls_Rcrd[ 8];   					 //소속지사명
							cxGrdWKAccidentList_List.DataController.Values[iRow, 10] := ls_Rcrd[ 9];   					 //소속지사코드
							cxGrdWKAccidentList_List.DataController.Values[iRow, 11] := ls_Rcrd[10];   					 //발주지사명
							cxGrdWKAccidentList_List.DataController.Values[iRow, 12] := ls_Rcrd[11];   					 //발주지사코드
							cxGrdWKAccidentList_List.DataController.Values[iRow, 13] := StrToCall(ls_Rcrd[12]);  //발주사연락처
							cxGrdWKAccidentList_List.DataController.Values[iRow, 14] := StringReplace(ls_Rcrd[13], '|', ' ', [rfReplaceAll]); //출발지
							cxGrdWKAccidentList_List.DataController.Values[iRow, 15] := ls_Rcrd[14];   					 //출발지좌표(Lon, Lat)
							cxGrdWKAccidentList_List.DataController.Values[iRow, 16] := StringReplace(ls_Rcrd[15], '|', ' ', [rfReplaceAll]); //도착지
							cxGrdWKAccidentList_List.DataController.Values[iRow, 17] := ls_Rcrd[16]; 					   //도착지좌표(Lon, Lat)
							cxGrdWKAccidentList_List.DataController.Values[iRow, 18] := ls_Rcrd[17]; 					   //사고위치명
							cxGrdWKAccidentList_List.DataController.Values[iRow, 19] := ls_Rcrd[18]; 					   //사고위치좌표
							cxGrdWKAccidentList_List.DataController.Values[iRow, 20] := '사진보기';              //사진

							Case StrToIntDef(ls_Rcrd[19],-1) of //사고진행상태(10:접수, 20:조사, 30:심사, 40:종결, 50: 면책)
								10 : cxGrdWKAccidentList_List.DataController.Values[iRow, 21] := '접수';
								20 : cxGrdWKAccidentList_List.DataController.Values[iRow, 21] := '조사';
								30 : cxGrdWKAccidentList_List.DataController.Values[iRow, 21] := '심사';
								40 : cxGrdWKAccidentList_List.DataController.Values[iRow, 21] := '종결';
								50 : cxGrdWKAccidentList_List.DataController.Values[iRow, 21] := '면책';
								-1 : cxGrdWKAccidentList_List.DataController.Values[iRow, 21] := '';
							End;
							cxGrdWKAccidentList_List.DataController.Values[iRow, 22] := ls_Rcrd[21]; //담보구분(1-대인: 책임, 2-대인: 임의, 3-대물: 책임, 4-대물: 임의, 5-대손: 책임, 6-대손: 임의, 6-대차: 책임, 7-대차: 임의)
							if ls_Rcrd[22] = '' then ls_Rcrd[22] := '0';
							cxGrdWKAccidentList_List.DataController.Values[iRow, 23] := ls_Rcrd[22]; //지급보험금
							if ls_Rcrd[23] = '' then ls_Rcrd[23] := '0';
							cxGrdWKAccidentList_List.DataController.Values[iRow, 24] := ls_Rcrd[23]; //자기부담금
							cxGrdWKAccidentList_List.DataController.Values[iRow, 25] := ls_Rcrd[24]; //사고처리담당자(이름,부서,직급,핸드폰번호)

							if ls_Rcrd[24] <> '' then
							begin
								slTmp := TStringList.Create;
								GetTextSeperationEx2(',', Trim(ls_Rcrd[24]), slTmp);
								if slTmp.Count = 4 then
									cxGrdWKAccidentList_List.DataController.Values[iRow, 26] := slTmp[3]; //사고처리담당자연락처
							end;
						end;
					finally
						ls_Rcrd.Free;
					end;
				end;
			end;
		finally
			xdom := Nil;
			cxGrdWKAccidentList_List.EndUpdate;
			Frm_Flash.hide;    
			Screen.Cursor := crDefault;
			FreeAndNil(slList);
		end;
	except
		on E: Exception do
		begin
			FreeAndNil(slList);
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
			Frm_Flash.Hide;
		end;
	end;
end;

procedure TFrm_WOR19.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_WOR19.btnExcelA3Click(Sender: TObject);
begin
	if cxGrdWKAccidentList_List.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSE);
    exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
		GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSE);
		Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[엑셀다운로드[기사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

	Frm_Main.sgExcel := '콜당보험사고현황.xls';
	Frm_Main.sgRpExcel := Format('기사>콜당보험사고현황]%s건/%s', [GetMoneyStr(cxGrdWKAccidentList_List.DataController.RecordCount), FExcelDownBeach]);
	Frm_Main.cxGridExcel := cxGrdWKAccidentList;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR19.btn_WKSabunClick(Sender: TObject);
begin
  WGS84ToBessel(getWGS84(pLocLng), '0'+ getWGS84(pLocLat), ws_Lon, ws_Lat);
  OnMoveMap(ws_Lon, ws_Lat);     //기사 현재 위치
	mCtrlState.SetLevel(5);
end;

procedure TFrm_WOR19.ClearPOI;
begin
	if Assigned(mPoiman) then
	begin
   mPoiman.DeleteGroup(0);
	 mPoiman.DeleteGroup(22);
	 mPoiman.DeleteGroup(23);
	 mPoiman.DeleteGroup(24);
	 mPoiman.DeleteGroup(25);
	 layerMan := mCtrlMan.GetLayerMan();
	 layerMan.ClearLayer;            //경로탐색 삭제
  end;
end;

procedure TFrm_WOR19.CreateLevelBar;
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
//  mCtrlMan := mMap.GetCtrlMan();
//  mUtil := mMap.GetUtility;
  mUiman := mCtrlMan.GetUIMan;
  mCtrlState := mCtrlMan.GetControlState;
  mDpsize := mCtrlState.GetSizeDP;

  mUiman.SetShowCompass(1);

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
  CY := mBtnZoomIn.GetHeight+9;
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
end;

procedure TFrm_WOR19.cxButton1Click(Sender: TObject);
begin
{			if Not Assigned(Frm_WOR20) then Frm_WOR20 := TFrm_WOR20.Create(Nil);

			Frm_WOR20.Proc_AddidentInfo(''
																,'' 
																,'' 
																,'' 
																,'' 
																,'' 
																,'' 
																,'' 
																,'' );
			Frm_WOR20.Show;		 }											
end;

procedure TFrm_WOR19.cxEdtSelTextKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	TcxTextEdit(Sender).Text := Enc_Control(TcxTextEdit(Sender).Text);
end;

procedure TFrm_WOR19.cxGrdWKAccidentList_ListCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
	AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var iRow : integer;
	slTmp : TStringList;
	iColAccPt, iColAccPicture, iColAccDate, iColInsrNo, iColInsrMan, iColWkSabun, iColWkName, iColWkHp, iColAccName, iColSlip, iCustHp : integer;
	IE : Variant;
	Value : Cardinal;
	sURL : String;
	iMainX, iMainY, iSubX, iSubY: Integer;
	RVHandle : Hwnd;
begin
	SetDebugeWrite('Frm_WOR19.cxGrdWKAccidentList_ListCellClick');
	try
		slTmp := TStringList.Create;

		iRow := cxGrdWKAccidentList_List.DataController.FocusedRowIndex;
		iColAccPt      := cxGrdWKAccidentList_List.GetColumnByFieldName('사고좌표').Index;
		iColAccName    := cxGrdWKAccidentList_List.GetColumnByFieldName('사고위치').Index;
		iColAccPicture := cxGrdWKAccidentList_List.GetColumnByFieldName('사진').Index;
		iColAccDate 	 := cxGrdWKAccidentList_List.GetColumnByFieldName('사고접수일시').Index; 
		iColInsrNo 		 := cxGrdWKAccidentList_List.GetColumnByFieldName('보험사접수번호').Index; 
		iColInsrMan 	 := cxGrdWKAccidentList_List.GetColumnByFieldName('사고처리자정보').Index; 
		iColWkSabun 	 := cxGrdWKAccidentList_List.GetColumnByFieldName('기사사번').Index; 
		iColWkName 		 := cxGrdWKAccidentList_List.GetColumnByFieldName('기사명').Index; 
		iColWkHp 			 := cxGrdWKAccidentList_List.GetColumnByFieldName('기사연락처').Index; 
		iColAccName 	 := cxGrdWKAccidentList_List.GetColumnByFieldName('사고위치').Index; 
		iColSlip 			 := cxGrdWKAccidentList_List.GetColumnByFieldName('접수번호').Index; 
		iCustHp 			 := cxGrdWKAccidentList_List.GetColumnByFieldName('고객연락처').Index; 
		
		if ( ACellViewInfo.item.Index = iColAccPicture ) then    //사진
		begin
{			if Not Assigned(Frm_WOR20) then Frm_WOR20 := TFrm_WOR20.Create(Nil);

			Frm_WOR20.Proc_AddidentInfo(cxGrdWKAccidentList_List.DataController.Values[iRow, iColAccDate]
																, cxGrdWKAccidentList_List.DataController.Values[iRow, iColInsrNo]
																, cxGrdWKAccidentList_List.DataController.Values[iRow, iColInsrMan]
																, cxGrdWKAccidentList_List.DataController.Values[iRow, iColWkSabun]
																, cxGrdWKAccidentList_List.DataController.Values[iRow, iColWkName]
																, cxGrdWKAccidentList_List.DataController.Values[iRow, iColWkHp]
																, cxGrdWKAccidentList_List.DataController.Values[iRow, iColAccName]
																, cxGrdWKAccidentList_List.DataController.Values[iRow, iColSlip]
																, cxGrdWKAccidentList_List.DataController.Values[iRow, iCustHp]);			
			Frm_WOR20.Show;		}											
		end
		else
		if ( ACellViewInfo.item.Index = iColAccPt ) then    //로드뷰
		begin
{			GetTextSeperationEx2(',', Trim(cxGrdWKAccidentList_List.DataController.Values[iRow, iColAccPt]), slTmp);

			if slTmp.Count <> 2 then 
			begin
				GMessagebox('사고위치 정보가 정확하지 않아 로드뷰를 찾을 수 없습니다..', CDMSE);
				exit;
			end
			else
			begin
				AccLng := slTmp[0]; AccLat := slTmp[1];
				if (AccLat = '') or (copy(AccLat, 1, 1) <> '3') then 
				begin
					GMessagebox('사고위치 정보가 정확하지 않아 로드뷰를 찾을 수 없습니다.', CDMSE);
					exit;
				end else
				if (AccLng = '') or (copy(AccLng, 1, 2) <> '12') then exit;
				begin
					GMessagebox('사고위치 정보가 정확하지 않아 로드뷰를 찾을 수 없습니다.', CDMSE);
					exit;
				end;
			end;

			if RVHandle > 0 then
			begin
				PostMessage (RVHandle, WM_CLOSE, 0, 0);
				RVHandle := 0;
			end;

			try
				DAUMROADVIEW_URL := 'http://map.daum.net/link/roadview/%s,%s';

				IE := CreateOleObject('InternetExplorer.Application');

				sURL := Format(DAUMROADVIEW_URL, [SetWGS84(AccLat), SetWGS84(AccLng)]);
				IE.Navigate( sURL );
				IE.AddressBar := False;
				IE.MenuBar := False;
				IE.ToolBar := False;
				IE.StatusBar := False;

				IE.Width := 780;
				IE.Height := 580;
				IE.Top := ((Self.Top * 2 + Self.Height) - IE.Height)/2;
				IE.Left := Self.Left - IE.Width;

				Value := IE.Hwnd;
				RegSetValue(HKEY_CURRENT_USER, 'HKSFA\IE_HWND', REG_DWORD, @Value, SizeOf(Cardinal));
				IE.Visible := true;
				SetForegroundWindow(Value);
				IE := Unassigned;
			except on E:Exception do
				begin
					ShowMessage('test' + E.Message);
				end;
			end;  }

		end
		else
		begin

{			iRow := cxGrdWKAccidentList_List.DataController.FocusedRowIndex;

			iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('출발지좌표').Index;
			GetTextSeperationEx2(',', Trim(cxGrdWKAccidentList_List.DataController.Values[iRow, iTmp]), slTmp);

			if slTmp.Count <> 2 then 
			begin
				GMessagebox('출발지 정보가 정확하지 않아 위치를 표시할 수 없습니다.', CDMSE);
				exit;
			end
			else
			begin
				DepLat := slTmp[0]; DepLng := slTmp[1]; 
				if (DepLat = '') or (copy(DepLat, 1, 2) <> '03') then 
				begin
					GMessagebox('출발지 정보가 정확하지 않아 위치를 표시할 수 없습니다.', CDMSE);
					exit;
				end else
				if (DepLng = '') or (copy(DepLng, 1, 2) <> '12') then
				begin
					GMessagebox('출발지 정보가 정확하지 않아 위치를 표시할 수 없습니다.', CDMSE);
					exit;
				end;
			end;
		
			iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('도착지좌표').Index;
			GetTextSeperationEx2(',', Trim(cxGrdWKAccidentList_List.DataController.Values[iRow, iTmp]), slTmp);

			if slTmp.Count <> 2 then 
			begin
				GMessagebox('도착지 정보가 정확하지 않아 위치를 표시할 수 없습니다.', CDMSE);
				exit;
			end
			else
			begin
				ArrLat := slTmp[0]; ArrLng := slTmp[1]; 
				if (ArrLat = '') or (copy(ArrLat, 1, 2) <> '03') then 
				begin
					GMessagebox('도착지 정보가 정확하지 않아 위치를 표시할 수 없습니다.', CDMSE);
					exit;
				end else
				if (ArrLng = '') or (copy(ArrLng, 1, 2) <> '12') then
				begin
					GMessagebox('도착지 정보가 정확하지 않아 위치를 표시할 수 없습니다.', CDMSE);
					exit;
				end;
			end;

			iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('사고좌표').Index;
			GetTextSeperationEx2(',', Trim(cxGrdWKAccidentList_List.DataController.Values[iRow, iTmp]), slTmp);

			if slTmp.Count <> 2 then 
			begin
				GMessagebox('사고위치 정보가 정확하지 않아 위치를 표시할 수 없습니다.', CDMSE);
				exit;
			end
			else
			begin
				AccLat := slTmp[0]; AccLng := slTmp[1]; 
				if (AccLat = '') or (copy(AccLat, 1, 2) <> '03') then 
				begin
					GMessagebox('사고위치 정보가 정확하지 않아 위치를 표시할 수 없습니다.', CDMSE);
					exit;
				end else
				if (AccLng = '') or (copy(AccLng, 1, 2) <> '12') then 
				begin
					GMessagebox('사고위치 정보가 정확하지 않아 위치를 표시할 수 없습니다.', CDMSE);
					exit;
				end;
			end;

			iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('출발지').Index;
			DepName := cxGrdWKAccidentList_List.DataController.Values[iRow, iTmp];
			iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('도착지').Index;
			ArrName := cxGrdWKAccidentList_List.DataController.Values[iRow, iTmp];
			iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('사고위치').Index;
			AccName := cxGrdWKAccidentList_List.DataController.Values[iRow, iTmp];

			Proc_MapMode_No1(DepName, DepLng, DepLat, ArrName, ArrLng, ArrLat, AccName, AccLng, AccLat); //출발지 도착지 한지도   }
		end;
		slTmp.Free;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR19.cxGrdWKAccidentList_ListCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iSlip : integer;
		sSlip : string;
		i : Integer;
		iCheck : Boolean;
begin
	SetDebugeWrite('Frm_WOR19.cxGrdWKAccidentList_ListCellDbClick');
	try
		iRow := cxGrdWKAccidentList_List.DataController.FocusedRowIndex;
		iSlip := cxGrdWKAccidentList_List.GetColumnByFieldName('접수번호').Index;

		if ( ACellViewInfo.item.Index = iSlip ) then
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

			sSlip := cxGrdWKAccidentList_List.DataController.Values[iRow,iSlip];
			if sSlip = '' then exit;
			Frm_Main.AcceptFromCreate(sSlip, cxGrdWKAccidentList_List.DataController.Values[iRow,iSlip], '조회', GI_JON03_LastFromIdx);
		end;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR19.GeneralInit;
begin
	maxLogicalLevel := 13 -1;
  minLogicalLevel := 0;

	mCtrlMan := mMap_WKAccident.GetCtrlMan;
  CreateLevelBar;
  mCtrlState.SetLevel(3);
//  CreateToolBarUI;
  MakeStatusbar;
end;

function TFrm_WOR19.GetAdminCodeF(GLon, GLot: Integer): string;
var
  mAdminman : IXAdminMan;
  mCenterLL : TalMapXLib_TLB.IXPoint;
  mAdmitem : IXAdminItem;
  admcode : string;
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

procedure TFrm_WOR19.MakeStatusbar;
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

procedure TFrm_WOR19.MapLevel_Master(level: INTEGER);
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

procedure TFrm_WOR19.Mark_Symbol(Lon, Lat, index: Integer; AName : string);
var
	mAngle : integer;
  mGroup : IXPOIGroup;
  mGstyle, mStyle : IXPOIStyle;
	mImageman : IXImageMan;
  mImage : IXMagicImage;
  mItem : IXPOIItem;
	mRootPath : String;
	ls_Rcrd : TStringList;
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
				GetTextSeperationEx(' ', AName, ls_Rcrd);

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
				GetTextSeperationEx(' ', AName, ls_Rcrd);

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
{      viaName := 'Via' + IntToStr(ViaCnt+1) + '.png';
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
			if(mAngle > 360) then mAngle := 0;  }
		end;
    if Not mImage.IsValid then ShowMessage('Image 이상');
    mAngle := 0;

    mAngle := mAngle + 10;
    if(mAngle > 360) then mAngle := 0;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
			ShowMessage('Frm_WOR19[Mark_Symbol] Error' + e.message);
    end;
  end;
end;

procedure TFrm_WOR19.MiOneMonthClick(Sender: TObject);
begin
	SetDateControl(cxDtStart, cxDtEnd, tdStartMonth);
end;

procedure TFrm_WOR19.MiOneWeekClick(Sender: TObject);
begin
  SetDateControl(cxDtStart, cxDtEnd, tdOneWeek);
end;

procedure TFrm_WOR19.MiStartMonthClick(Sender: TObject);
begin
	SetDateControl(cxDtStart, cxDtEnd, tdStartMonth);
end;

procedure TFrm_WOR19.MiTodayClick(Sender: TObject);
begin
	SetDateControl(cxDtStart, cxDtEnd, tdToday);
end;

procedure TFrm_WOR19.MiYesterdayClick(Sender: TObject);
begin
  SetDateControl(cxDtStart, cxDtEnd, tdYesterday);
end;

procedure TFrm_WOR19.mMap_WKAccidentCreate(ASender: TObject; Value: Integer);
var
	mMapMan : IXMapMan;
  mThemeMan : IXThemeMan;
  mAdminMan : IXAdminMan;
  mRootPath, XPos, YPos : String;
  sTemp : string;
begin
	try
    mRootPath := ExtractFilePath(Application.ExeName);

		mUtil := mMap_WKAccident.GetUtility;
    mCtrlMan := mMap_WKAccident.GetCtrlMan;
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

    XPos := Area_CenterLat;//'037335565';
    YPos := Area_CenterLon;//'126583729';
		WGS84ToBessel(YPos, XPos, ws_Lon, ws_Lat);
		OnMoveMap(ws_Lon, ws_Lat);


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

procedure TFrm_WOR19.mMap_WKAccidentPOI_Click(ASender: TObject; const POI: IXPOIItem; nFlag, X, Y: Integer);
var sKey : string;
begin
	SetDebugeWrite('frm_BOK03.mMapPOI_Click');
	try
		if POI.Gettag = 1000 then    //사고위치가 아니면 인포박스 안띄움
		begin
			if mBPoi <> nil then
				mBPoi.DestroyInfoBox();

			mBPoi := POI;
			sKey := poi.GetString();

			poi.CreateInfoBox(0, poi.GetCaption(), poi.GetContents(), true, False);
    end;
	except on e: exception do
		begin
			Log('mMapPOI_Click Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'mMapPOI_Click Error :' + E.Message);
		end;
	end;  
end;

procedure TFrm_WOR19.mMap_WKAccidentStateChange(ASender: TObject; Code, Value1,
  Value2: Integer);
var
	mGroup : IXPOIGroup;
	mGstyle : IXPOIStyle;
begin
	Try
		mUtil := mMap_WKAccident.GetUtility;
		mCtrlMan := mMap_WKAccident.GetCtrlMan;
    mPoiman := mCtrlMan.GetPOIMan();

    mCtrlState := mCtrlman.GetControlState();
    if Code = mUtil.GetConstToValue('TMCHECKCONFIG_LEVEL') then
    begin
      MapLevel_Master(mCtrlState.GetLevel());

      mGroup := mPoiman.FindGroup(0);
      if mGroup = nil then mGroup := mPoiman.NewGroup(0);

//레벨별 기사 시간 캡션표기//////////////////////////////////
        // 대기중
      mGstyle := mPoiman.FindStyle(1);
      if (mGstyle <> nil) then
      begin
//        mGstyle := mPoiman.NewStyle(1); // -1: 아이디 자동 생성
        if mCtrlState.GetLevel() < 4 then
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

	//레벨별 기사 시간 캡션표기//////////////////////////////////


    end;
  except
	end;  
end;

procedure TFrm_WOR19.N1Click(Sender: TObject);
var iRow, iSlip : integer;
		sSlip : string;
		i : Integer;
		iCheck : Boolean;
begin
	SetDebugeWrite('Frm_WOR19.N1Click');
	try
		iRow := cxGrdWKAccidentList_List.DataController.FocusedRowIndex;
		iSlip := cxGrdWKAccidentList_List.GetColumnByFieldName('접수번호').Index;

		iCheck := False;
		for I := 0 to JON03_MAX_CNT - 1 do
		begin
			if Frm_Main.JON03MNG[i].Use then
			begin
				 iCheck := True;
			end;
		end;

		if Not iCheck then Frm_Main.procMainMenuCreateActive(200);

		sSlip := cxGrdWKAccidentList_List.DataController.Values[iRow,iSlip];
		if sSlip = '' then exit;
		Frm_Main.AcceptFromCreate(sSlip, cxGrdWKAccidentList_List.DataController.Values[iRow,iSlip], '조회', GI_JON03_LastFromIdx);
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR19.N2Click(Sender: TObject);
var	sSabun, sName: string;
	iSabun,iName, iRow : integer;
begin
	SetDebugeWrite('Frm_WOR19.N2Click');
  try
		iRow := cxGrdWKAccidentList_List.DataController.FocusedRowIndex;

    if iRow < 0 then Exit;

		iSabun := cxGrdWKAccidentList_List.GetColumnByFieldName('기사사번').Index;
		sSabun := cxGrdWKAccidentList_List.DataController.Values[iRow,iSabun];
		iName := cxGrdWKAccidentList_List.GetColumnByFieldName('기사명').Index;
		sName := cxGrdWKAccidentList_List.DataController.Values[iRow,iName];
		if sSabun = '' then
    begin
			GMessagebox('선택된 기사가 없습니다.', CDMSE);
			Exit;
    end else
		begin
			if ( Not Assigned(Frm_JON32) ) Or ( Frm_JON32 = NIl ) then Frm_JON32 := TFrm_JON32.Create(Nil);
			Frm_JON32.pJON32Dock.bUnDock := pWOR19Dock.bUnDock;
			Frm_JON32.pJON32Dock.HdNo    := pWOR19Dock.HdNo;
			Frm_JON32.pJON32Dock.BrNo    := pWOR19Dock.BrNo;
			Frm_JON32.pJON32Dock.BrName  := pWOR19Dock.BrName;
			Frm_JON32.pJON32Dock.Gubun   := pWOR19Dock.Gubun;
			Frm_JON32.pJON32Dock.Idx     := pWOR19Dock.Idx;

      Frm_JON32.Jon03Tag := Self.Tag;
			Frm_JON32.Proc_Flag := 2;
			Frm_JON32.sWk_sabun32 := sSabun;
			Frm_JON32.sWkName := sName;
			Frm_JON32.sKeyNumber := '';
			Frm_JON32.Show;
    end;
  except on E: Exception do
    Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR19.N3Click(Sender: TObject);
var iRow, iColAccPt : integer;
	slTmp : TStringList;
	AccLng, AccLat : string;
	IE : Variant;
	Value : Cardinal;
	sURL : String;
	RVHandle : Hwnd;
begin
	SetDebugeWrite('Frm_WOR19.N3Click');
	try
		slTmp := TStringList.Create;
		iRow := cxGrdWKAccidentList_List.DataController.FocusedRowIndex;
		iColAccPt      := cxGrdWKAccidentList_List.GetColumnByFieldName('사고좌표').Index;
		GetTextSeperationEx2(',', Trim(cxGrdWKAccidentList_List.DataController.Values[iRow, iColAccPt]), slTmp);

		if slTmp.Count <> 2 then 
		begin
			GMessagebox('사고위치 정보가 정확하지 않아 로드뷰를 찾을 수 없습니다..', CDMSE);
			slTmp.Free;
			exit;
		end
		else
		begin
			AccLng := slTmp[0]; AccLat := slTmp[1];
			slTmp.Free;
			if (AccLat = '') or (copy(AccLat, 1, 1) <> '3') then 
			begin
				GMessagebox('사고위치 정보가 정확하지 않아 로드뷰를 찾을 수 없습니다.', CDMSE);
				exit;
			end else
			if (AccLng = '') or (copy(AccLng, 1, 2) <> '12') then exit;
			begin
				GMessagebox('사고위치 정보가 정확하지 않아 로드뷰를 찾을 수 없습니다.', CDMSE);
				exit;
			end;
		end;

		if RVHandle > 0 then
		begin
			PostMessage (RVHandle, WM_CLOSE, 0, 0);
			RVHandle := 0;
		end;

		try
			DAUMROADVIEW_URL := 'http://map.daum.net/link/roadview/%s,%s';

			IE := CreateOleObject('InternetExplorer.Application');

			sURL := Format(DAUMROADVIEW_URL, [SetWGS84(AccLat), SetWGS84(AccLng)]);
			IE.Navigate( sURL );
			IE.AddressBar := False;
			IE.MenuBar := False;
			IE.ToolBar := False;
			IE.StatusBar := False;

			IE.Width := 780;
			IE.Height := 580;
			IE.Top := ((Self.Top * 2 + Self.Height) - IE.Height)/2;
			IE.Left := Self.Left - IE.Width;

			Value := IE.Hwnd;
			RegSetValue(HKEY_CURRENT_USER, 'HKSFA\IE_HWND', REG_DWORD, @Value, SizeOf(Cardinal));
			IE.Visible := true;
			SetForegroundWindow(Value);
			IE := Unassigned;
		except on E:Exception do
			begin
				ShowMessage('test' + E.Message);
			end;
		end;

	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR19.N4Click(Sender: TObject);
var iRow, iTmp : integer;
	sTmp : string;
begin
	SetDebugeWrite('Frm_WOR19.N4Click');
	try
		iRow := cxGrdWKAccidentList_List.DataController.FocusedRowIndex;
		iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('기사연락처').Index;
		sTmp := cxGrdWKAccidentList_List.DataController.Values[iRow,iTmp];
		sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);

		Frm_Main.pCallingCID(sTmp, GT_POSS_KEYNUM);
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR19.N5Click(Sender: TObject);
var iRow, iWkHp : integer;
	sWkHp : string;
begin
	SetDebugeWrite('Frm_WOR19.N5Click');
	try
		iRow := cxGrdWKAccidentList_List.DataController.FocusedRowIndex;
		iWkHp := cxGrdWKAccidentList_List.GetColumnByFieldName('기사연락처').Index;
		sWkHp := cxGrdWKAccidentList_List.DataController.Values[iRow,iWkHp];
		sWkHp := StringReplace(sWkHp, '-', '', [rfReplaceAll]);

		Frm_Main.pCallingCID(sWkHp, GT_POSS_KEYNUM);
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR19.N6Click(Sender: TObject);
var iRow, iCustTel : integer;
	sCustTel : string;
begin
	SetDebugeWrite('Frm_WOR19.N6Click');
	try
		iRow := cxGrdWKAccidentList_List.DataController.FocusedRowIndex;
		iCustTel := cxGrdWKAccidentList_List.GetColumnByFieldName('고객연락처').Index;
		sCustTel := cxGrdWKAccidentList_List.DataController.Values[iRow,iCustTel];
		sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

		Frm_Main.pCallingCID(sCustTel, GT_POSS_KEYNUM);
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR19.N7Click(Sender: TObject);
var iRow, iTmp : integer;
	sTmp : string;
begin
	SetDebugeWrite('Frm_WOR19.N7Click');
	try
		iRow := cxGrdWKAccidentList_List.DataController.FocusedRowIndex;
		iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('담당자연락처').Index;

		sTmp := cxGrdWKAccidentList_List.DataController.Values[iRow,iTmp];

		if sTmp = '' then 
		begin
			GMessagebox('사고 담당자 연락처가 없습니다.', CDMSE);
			exit;
		end;
		sTmp := StringReplace(sTmp, '-', '', [rfReplaceAll]);
		
		Frm_Main.pCallingCID(sTmp, GT_POSS_KEYNUM);


	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_WOR19.OnMoveMap(lon, lat: INTEGER);
begin
  mCtrlState := mCtrlMan.GetControlState;
  mCtrlState.SetLLCenter(lon, lat);
end;

end.

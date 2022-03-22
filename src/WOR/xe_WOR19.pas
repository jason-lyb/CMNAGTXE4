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
    m_Lon, m_Lat : Integer;   //mousemove ��
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
		procedure CreateLevelBar;                                          //��������
    procedure MapLevel_Master(level : INTEGER);
		procedure MakeStatusbar;
		function GetAdminCodeF(GLon, GLot : Integer) : string;
		procedure Mark_Symbol(Lon, Lat, index: Integer; AName : string);

		procedure SetAccidentPoint(ALon, ALat : Integer; ACaption, AContents: string); //�����ġ ǥ��

		procedure SetMapRectLevel(LLon, LLat, RLon, RLat : Integer);
		procedure ClearPOI;

		procedure Proc_MapMode_No1(DepName, DepLng, DepLat, ArrName, ArrLng, ArrLat, AccName, AccLng, AccLat : string);
		procedure Proc_RouteLine(AFromLon, AFromLat, AToLon, AToLat : integer; AViaLon, AViaLat : array of integer); //�������� ��� ǥ��
	public
		gBrNo : string;
		sWkSabun : String;
		sConfSlip : String;   // ������ȣ;
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
	//�׸��� �ʱ�ȭ
	cxGrdWKAccidentList_List.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cxGrdWKAccidentList_List.ColumnCount - 1 do
		cxGrdWKAccidentList_List.Columns[i].DataBinding.ValueType := 'String';

	i := cxGrdWKAccidentList_List.GetColumnByFieldName('���޺����').Index;
	cxGrdWKAccidentList_List.Columns[i].DataBinding.ValueType := 'Currency';   //���޺����
	i := cxGrdWKAccidentList_List.GetColumnByFieldName('�ڱ�δ��').Index;
	cxGrdWKAccidentList_List.Columns[i].DataBinding.ValueType := 'Currency';   //�ڱ�δ��
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
			SetAccidentPoint(ws_Lon, ws_Lat, '�����ġ', AccName);
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
      ShowMessage('Proc_MapMode_No1 ����');
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
  //<-------------------�����. ������. ������ ��ǥ��ȯ--------------------------------->
  //<-------------------���Ž�� ����--------------------------------------------------->

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
          GMessagebox('��� Ž�� ���� ���� ��� �߻����� ���� �����Ҽ� �����ϴ�.', CDMSE);
          Exit;
        end;
      end;

      if ( SR1ErrCnt > 4 ) And ( SR2ErrCnt > 4 ) then
      begin
				GMessagebox('��� Ž�� ���� ���� ��� �߻����� ���� �����Ҽ� �����ϴ�.', CDMSE);
        Exit;
      end;

      SetDebugeWrite('3. SmartSR Start Bessel : ' + IntToStr(AFromLon) + ',' + IntToStr(AFromLat));
      RouteMan.SetOrgLonLat(AFromLon, AFromLat);
      RouteMan.ClearNode();
      for i := 0 to Length(AViaLon) -1 do
      begin
        RouteMan.AddNode(AViaLon[i], AViaLat[i]);  //// �������� �ʿ��ϸ� �ϸ� �߰��ϼ���.
      end;
      RouteMan.SetDstLonLat(AToLon, AToLat);
      SetDebugeWrite('3. SmartSR End Bessel : ' + IntToStr(AToLon) + ',' + IntToStr(AToLat) + ' -  IP : ' + SRIp + ' Port : ' + IntToStr(SRPort));

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
      if GT_DISTANCE_SVR = 1 then
      begin
        if Frm_Main.Frm_JON01N[Self.Tag].fDirKm < 70 then
          RouteMan.Remote_SetRPCType(2, 1, 2)  // �ִ�, �Ϲݵ���, ����
        else
          RouteMan.Remote_SetRPCType(2, 2, 2);  // �ִ�, ��ӵ���, ����
      end else
      begin
        RouteMan.Remote_SetRPCType(GT_DISTANCE_ROUTETYPE, GT_DISTANCE_ROADTYPE, GT_DISTANCE_TOLLTYPE);
//        RouteMan.Remote_SetRPCType(2, 1, 2)  // �ִ�
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
        mCenterLL := mCtrlState.GetLLCenter(); // ������ �߽� ��ǥ

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

        ///�Ÿ� �� �ð� ǥ��///
        mUiman := mCtrlMan.GetUIMan;
        aDistance := Roundto(aDistance / 1000,-1);
        aHour := aTime div 3600;
        aMin  := (aTime - (aHour * 3600)) div 60;
        aSec  := (aTime - (aHour * 3600) - (aMin * 60));
        if aHour > 0 then
          stcMsgArea.SetCaption('��->�� �Ÿ�:' + FloatToStr(aDistance) + 'Km �ð�:' + IntToStr(aHour) + '�ð�' + IntToStr(aMin) + '��' + IntToStr(aSec) + '��')
        else
          stcMsgArea.SetCaption('��->�� �Ÿ�:' + FloatToStr(aDistance) + 'Km �ð�:' + IntToStr(aMin) + '��' + IntToStr(aSec) + '��');
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
		mPoll := mCtrlState.GetLLCenter(); // ������ �߽� ��ǥ

		mPoll.SetX(ALon); // ������ X ��ǥ
		mPoll.SetY(ALat); // ������ Y ��ǥ

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

    if Not mImage.IsValid then ShowMessage('Image �̻�');
		mAngle := 0;

		if mGroup.FindItem(0) = nil then
		begin
			mItem := mGroup.NewItem(0);
			Try
				ls_Rcrd := TStringList.Create;
				GetTextSeperationEx(' ', AContents, ls_Rcrd);
				if ls_Rcrd.Count >= 4 then
				begin
					if Trim(ls_Rcrd[3]) <> '' then mItem.SetCaption('�����ġ :' + ls_Rcrd[3])
																		else mItem.SetCaption('�����ġ :' + ls_Rcrd[2]);

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
end;

procedure TFrm_WOR19.SetMapRectLevel(LLon, LLat, RLon, RLat: Integer);
Var
  mCenterLL : TalMapXLib_TLB.IXPoint;
  mMapRect  : IXMapRect;
begin
	mCtrlState := mCtrlMan.GetControlState();
	mCenterLL := mCtrlState.GetLLCenter(); // ������ �߽� ��ǥ

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
	Param := Param + '��' + gBrNo;
	Param := Param + '��' + IntToStr(cbSelList.ItemIndex + 1);
	Param := Param + '��' + Trim(cxEdtSelText.Text);
	Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtStart.Date);
	Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEnd.Date);

	slList := TStringList.Create;
	Screen.Cursor := crHourGlass;
	try
		if not RequestBasePaging(GetSEL06('GET_INS_CALL_ACCIDENT', 'INS.GET_INS_CALL_ACCIDENT', '100', Param), slList, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('�ݴ纸����������Ȳ ��ȸ ����'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
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
							GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
							iRow := cxGrdWKAccidentList_List.DataController.AppendRecord;
							ls_Rcrd.Insert(0, IntToStr(iRow + 1));

		// ������ȣ    ��������ó    �������  ����ü���  ��������翬��ó�����ð�  ���Ҽ������  ���Ҽ������ڵ妢���������
		// ���������ڵ妢���ֻ��ǥ��ȣ�������    ���������ǥ������������������ǥ�������ġ�������ġ��ǥ�����������¦������������ȣ��
		// �㺸����    �����޺����    ���ڱ�δ�ݦ����ó�������(�̸�,�μ�,����,�ڵ�����ȣ)           ����������(10:����, 20:����, 30:�ɻ�, 40:����, 50: ��å)
			 // �㺸����(1-����: å��, 2-����: ����, 3-�빰: å��, 4-�빰: ����, 5-���: å��, 6-���: ����, 6-����: å��, 7-����: ����)
   
							cxGrdWKAccidentList_List.DataController.Values[iRow,  0] := ls_Rcrd[ 0];   					 //����
							cxGrdWKAccidentList_List.DataController.Values[iRow,  1] := GetStrToDateTimeGStr(ls_Rcrd[ 7], 3); //���ð�      ;
							cxGrdWKAccidentList_List.DataController.Values[iRow,  2] := ls_Rcrd[20]; 					   //�����������ȣ
							cxGrdWKAccidentList_List.DataController.Values[iRow,  3] := ls_Rcrd[ 3];   					 //�����
							cxGrdWKAccidentList_List.DataController.Values[iRow,  4] := ls_Rcrd[ 4];   					 //��ü���
							cxGrdWKAccidentList_List.DataController.Values[iRow,  5] := ls_Rcrd[ 5];   					 //����
							cxGrdWKAccidentList_List.DataController.Values[iRow,  6] := StrToCall(ls_Rcrd[ 6]);  //��翬��ó
							cxGrdWKAccidentList_List.DataController.Values[iRow,  7] := ls_Rcrd[ 1];   					 //������ȣ
							cxGrdWKAccidentList_List.DataController.Values[iRow,  8] := StrToCall(ls_Rcrd[ 2]);  //������ó
							cxGrdWKAccidentList_List.DataController.Values[iRow,  9] := ls_Rcrd[ 8];   					 //�Ҽ������
							cxGrdWKAccidentList_List.DataController.Values[iRow, 10] := ls_Rcrd[ 9];   					 //�Ҽ������ڵ�
							cxGrdWKAccidentList_List.DataController.Values[iRow, 11] := ls_Rcrd[10];   					 //���������
							cxGrdWKAccidentList_List.DataController.Values[iRow, 12] := ls_Rcrd[11];   					 //���������ڵ�
							cxGrdWKAccidentList_List.DataController.Values[iRow, 13] := StrToCall(ls_Rcrd[12]);  //���ֻ翬��ó
							cxGrdWKAccidentList_List.DataController.Values[iRow, 14] := StringReplace(ls_Rcrd[13], '|', ' ', [rfReplaceAll]); //�����
							cxGrdWKAccidentList_List.DataController.Values[iRow, 15] := ls_Rcrd[14];   					 //�������ǥ(Lon, Lat)
							cxGrdWKAccidentList_List.DataController.Values[iRow, 16] := StringReplace(ls_Rcrd[15], '|', ' ', [rfReplaceAll]); //������
							cxGrdWKAccidentList_List.DataController.Values[iRow, 17] := ls_Rcrd[16]; 					   //��������ǥ(Lon, Lat)
							cxGrdWKAccidentList_List.DataController.Values[iRow, 18] := ls_Rcrd[17]; 					   //�����ġ��
							cxGrdWKAccidentList_List.DataController.Values[iRow, 19] := ls_Rcrd[18]; 					   //�����ġ��ǥ
							cxGrdWKAccidentList_List.DataController.Values[iRow, 20] := '��������';              //����

							Case StrToIntDef(ls_Rcrd[19],-1) of //����������(10:����, 20:����, 30:�ɻ�, 40:����, 50: ��å)
								10 : cxGrdWKAccidentList_List.DataController.Values[iRow, 21] := '����';
								20 : cxGrdWKAccidentList_List.DataController.Values[iRow, 21] := '����';
								30 : cxGrdWKAccidentList_List.DataController.Values[iRow, 21] := '�ɻ�';
								40 : cxGrdWKAccidentList_List.DataController.Values[iRow, 21] := '����';
								50 : cxGrdWKAccidentList_List.DataController.Values[iRow, 21] := '��å';
								-1 : cxGrdWKAccidentList_List.DataController.Values[iRow, 21] := '';
							End;
							cxGrdWKAccidentList_List.DataController.Values[iRow, 22] := ls_Rcrd[21]; //�㺸����(1-����: å��, 2-����: ����, 3-�빰: å��, 4-�빰: ����, 5-���: å��, 6-���: ����, 6-����: å��, 7-����: ����)
							if ls_Rcrd[22] = '' then ls_Rcrd[22] := '0';
							cxGrdWKAccidentList_List.DataController.Values[iRow, 23] := ls_Rcrd[22]; //���޺����
							if ls_Rcrd[23] = '' then ls_Rcrd[23] := '0';
							cxGrdWKAccidentList_List.DataController.Values[iRow, 24] := ls_Rcrd[23]; //�ڱ�δ��
							cxGrdWKAccidentList_List.DataController.Values[iRow, 25] := ls_Rcrd[24]; //���ó�������(�̸�,�μ�,����,�ڵ�����ȣ)

							if ls_Rcrd[24] <> '' then
							begin
								slTmp := TStringList.Create;
								GetTextSeperationEx2(',', Trim(ls_Rcrd[24]), slTmp);
								if slTmp.Count = 4 then
									cxGrdWKAccidentList_List.DataController.Values[iRow, 26] := slTmp[3]; //���ó������ڿ���ó
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
    GMessagebox('�ڷᰡ �����ϴ�.', CDMSE);
    exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
		GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSE);
		Exit;
  end;

	if TCK_USER_PER.WOR_ExcelDown <> '1' then
	begin
    ShowMessage('[�����ٿ�ε�[���޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
		Exit;
  end;

	Frm_Main.sgExcel := '�ݴ纸������Ȳ.xls';
	Frm_Main.sgRpExcel := Format('���>�ݴ纸������Ȳ]%s��/%s', [GetMoneyStr(cxGrdWKAccidentList_List.DataController.RecordCount), FExcelDownBeach]);
	Frm_Main.cxGridExcel := cxGrdWKAccidentList;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_WOR19.btn_WKSabunClick(Sender: TObject);
begin
  WGS84ToBessel(getWGS84(pLocLng), '0'+ getWGS84(pLocLat), ws_Lon, ws_Lat);
  OnMoveMap(ws_Lon, ws_Lat);     //��� ���� ��ġ
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
	 layerMan.ClearLayer;            //���Ž�� ����
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
  if bCreateLevelBar = true then     // true�� �� �ֳ�?..�ǹ�
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
	// ���� Level ǥ��
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
		iColAccPt      := cxGrdWKAccidentList_List.GetColumnByFieldName('�����ǥ').Index;
		iColAccName    := cxGrdWKAccidentList_List.GetColumnByFieldName('�����ġ').Index;
		iColAccPicture := cxGrdWKAccidentList_List.GetColumnByFieldName('����').Index;
		iColAccDate 	 := cxGrdWKAccidentList_List.GetColumnByFieldName('��������Ͻ�').Index; 
		iColInsrNo 		 := cxGrdWKAccidentList_List.GetColumnByFieldName('�����������ȣ').Index; 
		iColInsrMan 	 := cxGrdWKAccidentList_List.GetColumnByFieldName('���ó��������').Index; 
		iColWkSabun 	 := cxGrdWKAccidentList_List.GetColumnByFieldName('�����').Index; 
		iColWkName 		 := cxGrdWKAccidentList_List.GetColumnByFieldName('����').Index; 
		iColWkHp 			 := cxGrdWKAccidentList_List.GetColumnByFieldName('��翬��ó').Index; 
		iColAccName 	 := cxGrdWKAccidentList_List.GetColumnByFieldName('�����ġ').Index; 
		iColSlip 			 := cxGrdWKAccidentList_List.GetColumnByFieldName('������ȣ').Index; 
		iCustHp 			 := cxGrdWKAccidentList_List.GetColumnByFieldName('������ó').Index; 
		
		if ( ACellViewInfo.item.Index = iColAccPicture ) then    //����
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
		if ( ACellViewInfo.item.Index = iColAccPt ) then    //�ε��
		begin
{			GetTextSeperationEx2(',', Trim(cxGrdWKAccidentList_List.DataController.Values[iRow, iColAccPt]), slTmp);

			if slTmp.Count <> 2 then 
			begin
				GMessagebox('�����ġ ������ ��Ȯ���� �ʾ� �ε�並 ã�� �� �����ϴ�..', CDMSE);
				exit;
			end
			else
			begin
				AccLng := slTmp[0]; AccLat := slTmp[1];
				if (AccLat = '') or (copy(AccLat, 1, 1) <> '3') then 
				begin
					GMessagebox('�����ġ ������ ��Ȯ���� �ʾ� �ε�並 ã�� �� �����ϴ�.', CDMSE);
					exit;
				end else
				if (AccLng = '') or (copy(AccLng, 1, 2) <> '12') then exit;
				begin
					GMessagebox('�����ġ ������ ��Ȯ���� �ʾ� �ε�並 ã�� �� �����ϴ�.', CDMSE);
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

			iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('�������ǥ').Index;
			GetTextSeperationEx2(',', Trim(cxGrdWKAccidentList_List.DataController.Values[iRow, iTmp]), slTmp);

			if slTmp.Count <> 2 then 
			begin
				GMessagebox('����� ������ ��Ȯ���� �ʾ� ��ġ�� ǥ���� �� �����ϴ�.', CDMSE);
				exit;
			end
			else
			begin
				DepLat := slTmp[0]; DepLng := slTmp[1]; 
				if (DepLat = '') or (copy(DepLat, 1, 2) <> '03') then 
				begin
					GMessagebox('����� ������ ��Ȯ���� �ʾ� ��ġ�� ǥ���� �� �����ϴ�.', CDMSE);
					exit;
				end else
				if (DepLng = '') or (copy(DepLng, 1, 2) <> '12') then
				begin
					GMessagebox('����� ������ ��Ȯ���� �ʾ� ��ġ�� ǥ���� �� �����ϴ�.', CDMSE);
					exit;
				end;
			end;
		
			iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('��������ǥ').Index;
			GetTextSeperationEx2(',', Trim(cxGrdWKAccidentList_List.DataController.Values[iRow, iTmp]), slTmp);

			if slTmp.Count <> 2 then 
			begin
				GMessagebox('������ ������ ��Ȯ���� �ʾ� ��ġ�� ǥ���� �� �����ϴ�.', CDMSE);
				exit;
			end
			else
			begin
				ArrLat := slTmp[0]; ArrLng := slTmp[1]; 
				if (ArrLat = '') or (copy(ArrLat, 1, 2) <> '03') then 
				begin
					GMessagebox('������ ������ ��Ȯ���� �ʾ� ��ġ�� ǥ���� �� �����ϴ�.', CDMSE);
					exit;
				end else
				if (ArrLng = '') or (copy(ArrLng, 1, 2) <> '12') then
				begin
					GMessagebox('������ ������ ��Ȯ���� �ʾ� ��ġ�� ǥ���� �� �����ϴ�.', CDMSE);
					exit;
				end;
			end;

			iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('�����ǥ').Index;
			GetTextSeperationEx2(',', Trim(cxGrdWKAccidentList_List.DataController.Values[iRow, iTmp]), slTmp);

			if slTmp.Count <> 2 then 
			begin
				GMessagebox('�����ġ ������ ��Ȯ���� �ʾ� ��ġ�� ǥ���� �� �����ϴ�.', CDMSE);
				exit;
			end
			else
			begin
				AccLat := slTmp[0]; AccLng := slTmp[1]; 
				if (AccLat = '') or (copy(AccLat, 1, 2) <> '03') then 
				begin
					GMessagebox('�����ġ ������ ��Ȯ���� �ʾ� ��ġ�� ǥ���� �� �����ϴ�.', CDMSE);
					exit;
				end else
				if (AccLng = '') or (copy(AccLng, 1, 2) <> '12') then 
				begin
					GMessagebox('�����ġ ������ ��Ȯ���� �ʾ� ��ġ�� ǥ���� �� �����ϴ�.', CDMSE);
					exit;
				end;
			end;

			iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('�����').Index;
			DepName := cxGrdWKAccidentList_List.DataController.Values[iRow, iTmp];
			iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('������').Index;
			ArrName := cxGrdWKAccidentList_List.DataController.Values[iRow, iTmp];
			iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('�����ġ').Index;
			AccName := cxGrdWKAccidentList_List.DataController.Values[iRow, iTmp];

			Proc_MapMode_No1(DepName, DepLng, DepLat, ArrName, ArrLng, ArrLat, AccName, AccLng, AccLat); //����� ������ ������   }
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
		iSlip := cxGrdWKAccidentList_List.GetColumnByFieldName('������ȣ').Index;

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
			Frm_Main.AcceptFromCreate(sSlip, cxGrdWKAccidentList_List.DataController.Values[iRow,iSlip], '��ȸ', GI_JON03_LastFromIdx);
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
	mCenterLL := mCtrlState.GetLLCenter(); // ������ �߽� ��ǥ
	mAdmitem := mAdminman.GetAdminItem(GLon, GLot);

	if mAdmitem <> nil then
  begin
		admcode := mAdmitem.GetAdminCode();	// ������ �ڵ� ���
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
	stcMsgArea.SetFont(10, 1, ('����'),0);
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

	// Image Index ���� 0~3
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
        mGstyle := mPoiman.NewStyle(22); // -1: ���̵� �ڵ� ����
			mGroup.SetStyle(mGstyle);

      if Not mImage.IsValid then ShowMessage('Image �̻�');
      mAngle := 0;

			mItem := mGroup.NewItem(22) ;
			Try
				ls_Rcrd := TStringList.Create;
				GetTextSeperationEx(' ', AName, ls_Rcrd);

				if ls_Rcrd.Count >= 4 then
				begin
					if Trim(ls_Rcrd[3]) <> '' then mItem.SetCaption('����� : ' + ls_Rcrd[3])
																		else mItem.SetCaption('����� : ' + ls_Rcrd[2]);

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
				mGstyle := mPoiman.NewStyle(23); // -1: ���̵� �ڵ� ����
			mGroup.SetStyle(mGstyle);

      if Not mImage.IsValid then ShowMessage('Image �̻�');
      mAngle := 0;

			mItem := mGroup.NewItem(23) ;
			Try
        ls_Rcrd := TStringList.Create;
				GetTextSeperationEx(' ', AName, ls_Rcrd);

        if ls_Rcrd.Count >= 4 then
				begin
          if Trim(ls_Rcrd[3]) <> '' then mItem.SetCaption('������ : ' + ls_Rcrd[3])
                                    else mItem.SetCaption('������ : ' + ls_Rcrd[2]);

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
          mItem.SetCaption('������'+ IntToStr(ViaCnt+1) + ' : ' + ls_Rcrd[3]);
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
    if Not mImage.IsValid then ShowMessage('Image �̻�');
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
		WGS84ToBessel(YPos, XPos, ws_Lon, ws_Lat);
		OnMoveMap(ws_Lon, ws_Lat);


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

procedure TFrm_WOR19.mMap_WKAccidentPOI_Click(ASender: TObject; const POI: IXPOIItem; nFlag, X, Y: Integer);
var sKey : string;
begin
	SetDebugeWrite('frm_BOK03.mMapPOI_Click');
	try
		if POI.Gettag = 1000 then    //�����ġ�� �ƴϸ� �����ڽ� �ȶ��
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

//������ ��� �ð� ĸ��ǥ��//////////////////////////////////
        // �����
      mGstyle := mPoiman.FindStyle(1);
      if (mGstyle <> nil) then
      begin
//        mGstyle := mPoiman.NewStyle(1); // -1: ���̵� �ڵ� ����
        if mCtrlState.GetLevel() < 4 then
        begin
          mGstyle.SetGDIFont(GS_FONTNAME, 0, 9);  //������ ��� ���� ĸ��ǥ��
					mGstyle.SetFontColor(mUtil.RGBColor(0, 0, 0));  //ĸ�Ǳ���
          mGstyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));     //ĸ�� �����׵θ�
					mGstyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0); //ĸ�ǹ��
          mGstyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
          mGroup.SetStyle(mGstyle);
        end
        else
        begin
          mGroup.ClearStyle;
        end;
      end;

	//������ ��� �ð� ĸ��ǥ��//////////////////////////////////


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
		iSlip := cxGrdWKAccidentList_List.GetColumnByFieldName('������ȣ').Index;

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
		Frm_Main.AcceptFromCreate(sSlip, cxGrdWKAccidentList_List.DataController.Values[iRow,iSlip], '��ȸ', GI_JON03_LastFromIdx);
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

		iSabun := cxGrdWKAccidentList_List.GetColumnByFieldName('�����').Index;
		sSabun := cxGrdWKAccidentList_List.DataController.Values[iRow,iSabun];
		iName := cxGrdWKAccidentList_List.GetColumnByFieldName('����').Index;
		sName := cxGrdWKAccidentList_List.DataController.Values[iRow,iName];
		if sSabun = '' then
    begin
			GMessagebox('���õ� ��簡 �����ϴ�.', CDMSE);
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
		iColAccPt      := cxGrdWKAccidentList_List.GetColumnByFieldName('�����ǥ').Index;
		GetTextSeperationEx2(',', Trim(cxGrdWKAccidentList_List.DataController.Values[iRow, iColAccPt]), slTmp);

		if slTmp.Count <> 2 then 
		begin
			GMessagebox('�����ġ ������ ��Ȯ���� �ʾ� �ε�並 ã�� �� �����ϴ�..', CDMSE);
			slTmp.Free;
			exit;
		end
		else
		begin
			AccLng := slTmp[0]; AccLat := slTmp[1];
			slTmp.Free;
			if (AccLat = '') or (copy(AccLat, 1, 1) <> '3') then 
			begin
				GMessagebox('�����ġ ������ ��Ȯ���� �ʾ� �ε�並 ã�� �� �����ϴ�.', CDMSE);
				exit;
			end else
			if (AccLng = '') or (copy(AccLng, 1, 2) <> '12') then exit;
			begin
				GMessagebox('�����ġ ������ ��Ȯ���� �ʾ� �ε�並 ã�� �� �����ϴ�.', CDMSE);
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
		iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('��翬��ó').Index;
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
		iWkHp := cxGrdWKAccidentList_List.GetColumnByFieldName('��翬��ó').Index;
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
		iCustTel := cxGrdWKAccidentList_List.GetColumnByFieldName('������ó').Index;
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
		iTmp := cxGrdWKAccidentList_List.GetColumnByFieldName('����ڿ���ó').Index;

		sTmp := cxGrdWKAccidentList_List.DataController.Values[iRow,iTmp];

		if sTmp = '' then 
		begin
			GMessagebox('��� ����� ����ó�� �����ϴ�.', CDMSE);
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

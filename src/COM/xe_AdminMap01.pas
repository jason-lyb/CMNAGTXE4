unit xe_AdminMap01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Math,
  Dialogs, TalMapXLib_TLB, IniFiles, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.ExtCtrls, MSXML2_TLB,
  Vcl.OleCtrls, Vcl.StdCtrls, cxButtons, cxCurrencyEdit, cxRadioGroup,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox, cxLabel, cxCheckBox,
  dxSkinsCore, cxSplitter, dxGDIPlusClasses, cxStyles, dxCore,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxProgressBar,
  SHDocVw, dxSkinOffice2010Silver, dxDateRanges, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

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
		Sabun, BR_Sabun, Name, ATTEND, PASS_TIME, Con_State, BR_Type, FinCnt, MAPX, MAPY, BrNo, BrName, HP, PHONE : string;
  end;
  TMapStWkInfoRec = record
		Sabun, Name, Con_State, MAPX, MAPY, pMAPX, pMAPY, HdNo, BrNo, BrName, HP, PHONE, BR_Type : string;
  end;
	TMapGongUInfoRec = record
		SLIP, XY, MAPX, MAPY : string;
	end;	

	TMapPosRec = record
    XPos, YPos: string;
  end;
  TRoutePoint = record
    lon: TStringList;
    lat: TStringList;
    Idx: TStringList;
  end;

  TFrm_AdminMap01 = class(TForm)
    pnlLargeMenu: TPanel;
    cxGroupBox1: TcxGroupBox;
    btnSearch: TcxButton;
    pnlBottom: TPanel;
    cb_UpDate: TcxComboBox;
    cxCEdt: TcxCurrencyEdit;
    tmr_dis: TTimer;
    cxLblActive: TLabel;
    rbWKWAIT5: TcxRadioButton;
    rbWKWAIT6: TcxRadioButton;
    rbWKWAIT7: TcxRadioButton;
    GrpWorkerSch: TcxGroupBox;
    chkAttendA: TcxCheckBox;
    chkAttendB: TcxCheckBox;
    chkStateA: TcxCheckBox;
    chkStateB: TcxCheckBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pmAcceptMap: TPopupMenu;
    mniIconCaption: TMenuItem;
    N1Km1: TMenuItem;
    N3Km1: TMenuItem;
    N5Km1: TMenuItem;
    N15Km1: TMenuItem;
    N30Km1: TMenuItem;
    N1: TMenuItem;
    ChkWorkerSch: TcxCheckBox;
    ChkGongUCall: TcxCheckBox;
    GrpShuttleSch: TcxGroupBox;
    Panel4: TPanel;
    rbStateSA: TcxRadioButton;
    rbStateSB: TcxRadioButton;
    rbStateSC: TcxRadioButton;
    rbStateSD: TcxRadioButton;
    Panel5: TPanel;
    rbWKWAITS5: TcxRadioButton;
    rbWKWAITS6: TcxRadioButton;
    rbWKWAITS7: TcxRadioButton;
    btnShSch: TcxButton;
    cb_SUpDate: TcxComboBox;
    cxCESdt: TcxCurrencyEdit;
    ChkShuttleSch: TcxCheckBox;
    pnlHint: TPanel;
    cxButton1: TcxButton;
    cxCheckBox1: TcxCheckBox;
    cxGroupBox3: TcxGroupBox;
    cxLabel8: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
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
    cxGroupBox5: TcxGroupBox;
    Image2: TImage;
    cxLabel13: TcxLabel;
    pnl7: TPanel;
    Image1: TImage;
    cxLabel29: TcxLabel;
    pnlLeft: TPanel;
    splAcceptMap: TcxSplitter;
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
    cxbtnHInt: TcxButton;
    chkWKWAITAll: TcxCheckBox;
    cxLabel12: TcxLabel;
    pnl_TalMap: TPanel;
    mMap: TTalMapXCtrl;
    pnl_NaverMap: TPanel;
    webNaverMap: TWebBrowser;
    rbo_UseNaverMap: TcxCheckBox;
    trm_Naver: TTimer;
    cxViewWkConnectColumn2: TcxGridDBColumn;
    lb_Title_List: TListBox;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Label1: TcxLabel;
    Label3: TcxLabel;
    Label2: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label5: TcxLabel;
    cxLabel21: TcxLabel;
    txtSearch: TcxTextEdit;
    btnSearch2: TcxButton;
    btnHint1: TcxButton;
    chkWKView: TcxCheckBox;
    tmrDongPolygon: TTimer;
    N2: TMenuItem;
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
		procedure btnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cb_UpDateClick(Sender: TObject);
    procedure tmr_disTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rbWKWAIT5Click(Sender: TObject);
    procedure rbWKWAIT6Click(Sender: TObject);
    procedure rbWKWAIT7Click(Sender: TObject);
    procedure mniIconCaptionClick(Sender: TObject);
    procedure N1Km1Click(Sender: TObject);
    procedure N3Km1Click(Sender: TObject);
    procedure N5Km1Click(Sender: TObject);
    procedure N15Km1Click(Sender: TObject);
    procedure N30Km1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ChkWorkerSchClick(Sender: TObject);
    procedure ChkShuttleSchClick(Sender: TObject);
    procedure cxbtnHIntClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxViewWkConnectCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure webNaverMapDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure webNaverMapNavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure rbo_UseNaverMapPropertiesChange(Sender: TObject);
		procedure trm_NaverTimer(Sender: TObject);
    procedure cxViewWkConnectDataControllerSortingChanged(Sender: TObject);
    procedure cxViewWkConnectColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure chkWKWAITAllClick(Sender: TObject);
    procedure chkStateAClick(Sender: TObject);
    procedure btnHint1Click(Sender: TObject);
    procedure btnSearch2Click(Sender: TObject);
    procedure txtSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tmrDongPolygonTimer(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
    FInit: Boolean;
		AutoFlag  : Boolean; //자동검색 시 검색 버튼 안눌임  2014.11.23 KHS

    Pt1, Pt2 : TTmappos;
    FRoutePoint : TRoutePoint;
    layerMan : IXLayerMan;

    gMapX, gMapY : Integer;

		//자기사
		sl_WKInfo, sl_WKInfo_Status ,       //리스트에 조회되는 기사의 사번 과 상태값
		sl_Info_WKName, sl_Info_WKContents,        //지도내 기사의 사번과 내용
		//타기사
		sl_T_WKInfo, sl_T_WKInfo_Status ,       //리스트에 조회되는 기사의 사번 과 상태값
		sl_T_Info_WKName, sl_T_Info_WKContents,        //지도내 기사의 사번과 내용
		//공유콜
		sl_GongUSlip,  sl_GongUContens,
		//셔틀
		sl_STInfo, sl_STInfo_Status : THashedStringList;  //셔틀

		mRootPath : String;
		
		sts_Chk : Boolean;

		maxLogicalLevel : Integer;
		minLogicalLevel : Integer;
		ws_Lon, ws_Lat : integer;
		sw_Lon, sw_Lat : Double;
		m_Lon, m_Lat : Integer;   //mousemove 값
  	FLon, FLat : Integer;

		//네이버 맵 관련
		Naver_URL : string;
		CurDispatch: IDispatch; {save the interface globally }
		bWebLoading, bNaverFirst : Boolean;
		gSearchOption : string;
		
		ACol : integer;

		function RequestDataBase(ATxData: string; var ARxDataDom: msDomDocument): Boolean;
		procedure RequestDataWorker(const AAutoSearch, ALastUpdate, ASearchYn, AATTEND, AState, ABR_TYPE, APASS_TIME
																		, AKeyKind, AKeyWord, ADistance, AX, AY, ACallSearchYn: string);
    procedure ClearDongList(AcxCombo: TcxComboBox);
    procedure CreateObj;
		procedure GeneralInit;
    procedure AdminMapSet;
    procedure DestroyUI;
    procedure WkSearch(aRound: string);
		procedure pWorkerSearch;
		procedure pShuttleSearch;
		procedure AddStIconReady(const AXPos, AYPos: string;
			AWkInfo: TMapStWkInfoRec; iItmiDx : integer);
		function Angle(Pt1, Pt2: TTmappos): Double;
		function SK_GetAngleFromLine(pt1, pt2: TPoint): Double;
		procedure Mark_Symbol(Lon, Lat, index: Integer; AId, ATime, Aname: string);
    procedure SetMapRectLevel(LLon, LLat, RLon, RLat: Integer);
		procedure Proc_Line(ARoutePoint: TRoutePoint);
		procedure proc_Search;

		//네이버 맵 관련
		procedure pLoadNaverMap;
		procedure proc_MoveCenter(ALat, ALon, ALevel : string);
		procedure setWkPoiMark(aLat, aLon: String;AWkInfo: TMapWkInfoRec);
		procedure setSTPoiMark(aLat, aLon: String;AWkInfo: TMapStWkInfoRec);
		procedure setGongUMark(aLat, aLon: String;AWkInfo: TMapGongUInfoRec);
		procedure proc_AutoSearchStop;
		function getDist(adist : Integer; ax, ay, bx, by : Double;var ADis : Double ) : boolean;
		procedure GetQuadPoint(AWidth, Aheight : Integer; var VectY,	VectX : TStringList);
    procedure pViewWorker(bStop : Boolean);
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
		mPoiman : TalMapXLib_TLB.IXPOIMan;
		mBtnLevle : array [0..12] of IXUIButton;
		MyToolBar1 : array[0..20] of IXUIButton;
		B201, B202, A101, A102, A201, A202, R0201, R0202 : IXMagicImage;
		s0001, s0002, s0101, s0102, s0201, s0202 : IXMagicImage;
		ReadyGstyle, ReadyStyle, RunGstyle, RunStyle : IXPOIStyle;
		ReadyImage, RunImage, GongUImage : IXMagicImage;
    ReadyPoiman : IXPOIMan;

		function WGS84ToBessel(Y_1, x_1 : string) : integer;
		function WGS84ToBessel_T(Y_1, x_1 : string) : integer;
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
		procedure SetGongUStyle;
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

		procedure Sets0001Style;
		procedure Sets0002Style;
		procedure Sets0101Style;
		procedure Sets0102Style;
		procedure Sets0201Style;
		procedure Sets0202Style;

		procedure AddWkIconReady(const AXPos, AYPos: string; AWkInfo: TMapWkInfoRec; iItmiDx : integer);
		procedure AddGongU(const AXPos, AYPos: string; AWkInfo: TMapGongUInfoRec; iItmiDx : integer);
  end;

var
  Frm_AdminMap01: TFrm_AdminMap01;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_Msg, xe_xml, xe_Flash, xe_packet;

function TFrm_AdminMap01.RequestDataBase(ATxData: string;
  var ARxDataDom: msDomDocument): Boolean;
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
//  ATxData := StringReplace(ATxData, 'ClientKeyString',  AKey, [rfReplaceAll]);

  StrList := TStringList.Create;
  Screen.Cursor := crHourGlass;
  try
		if not dm.SendSock(ATxData, StrList, ErrCode, False) then
		begin
			if StrList[0] = '' then
			begin
				ErrCode := -1;
				Exit;
			end else
			begin
				GMessagebox('데이터 전송에 실패했습니다.'#13#10'다시시도 하세요.', CDMSE);
				cb_UpDate.ItemIndex := 0;
				Screen.Cursor := crDefault;
				Exit;
			end;
		end;

    try
      if StrList.Count = 0 then
      begin
        GMessagebox('검색된 데이터가 없습니다.', CDMSE);
				cb_UpDate.ItemIndex := 0;
				Screen.Cursor := crDefault;
        Exit;
      end;

      RxData := StrList[0];
			if not ARxDataDom.loadXML(RxData) then
			begin
        GMessagebox('수신데이터가 잘못되었습니다.[XML Format error]', CDMSE);
				cb_UpDate.ItemIndex := 0;
				Screen.Cursor := crDefault;
        Exit;
      end;

      ErrorCode := GetXmlErrorCode(RxData);
      if ErrorCode <> '0000' then
      begin
        GMessagebox(Format('데이터 조회 중 오류가 발생했습니다.'#13#10'[오류내용: %s]', [GetXmlErrorMsg(RxData)]), CDMSE);
				cb_UpDate.ItemIndex := 0;
				Screen.Cursor := crDefault;
        Exit;
      end;

      Result := True;
    except on E: Exception do
      begin
				Assert(False, E.Message);
				Screen.Cursor := crDefault;
        GMessagebox(Format('데이터 조회 중 오류가 발생했습니다.'#13#10'[오류내용: %s]', [E.Message]), CDMSE);
        cb_UpDate.ItemIndex := 0;
      end;
    end;
  finally
    Frm_Flash.Hide;
    StrList.Free;
		Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_AdminMap01.RequestDataWorker(const AAutoSearch, ALastUpdate,
  ASearchYn, AATTEND, AState, ABR_TYPE, APASS_TIME, AKeyKind, AKeyWord,
  ADistance, AX, AY, ACallSearchYn: string);
var
	TxData: string;
  RxData: msDomDocument;
	I, j, iRow, ErrCode: Integer;
	lst_Result: IXMLDomNodeList;
  XPos, YPos: string;
	WkRec: TMapWkInfoRec;
	GongURec : TMapGongUInfoRec;
	slTmp: TStringList;
	slIngCall, slDeadCall, slDeadCallIdx : TStringList;
	sTmp, sTmp1, sTmp2 : string;
	mPoi : IXPOIItem;
	mGroup : IXPOIGroup;
	iCnt, iGetID, iDx, iNo : integer;
	mPoll : TalMapXLib_TLB.IXPoint;
	sTmpLon, sTmpLat : string;
	dTmpLon, dTmpLat : Double;
	sFind, sGetLat, sGetLon : String;
	iTmp : integer;
	sAttend : String;
	alat, alon, blat, blon : double;
	fdis : Double;
	iwkTitle: array[0..9] of integer;
	slLon, slLat : TStringList;
	bLonLat : Boolean;
begin
	SetDebugeWrite('TFrm_AdminMap01.RequestDataWorker');
	try
		slTmp := TStringList.Create;
		slIngCall := TStringList.create;
		slDeadCall := TStringList.create;
		slDeadCallIdx:= TStringList.create;
		RxData := ComsDomDocument.Create;
		try
			SetGongUStyle;
			SetA101Style;
			SetA102Style;
			SetA201Style;
			SetA202Style;
			SetB201Style;
			SetB202Style;
			Set0201Style;
			Set0202Style;
			SetReadyStyle;

			TxData := GTx_UnitXmlLoad('COM00010N2.xml');
			TxData := ReplaceAll(TxData, 'strAutoSearch'  , AAutoSearch);
			TxData := ReplaceAll(TxData, 'strLastUpdate'  , ALastUpdate);
			TxData := ReplaceAll(TxData, 'strSearchYn'    , ASearchYn);
			TxData := ReplaceAll(TxData, 'strATTEND'      , AATTEND);
			TxData := ReplaceAll(TxData, 'strSTATE'       , AState);
			TxData := ReplaceAll(TxData, 'strBR_TYPE'     , ABR_TYPE);
			TxData := ReplaceAll(TxData, 'strPASS_TIME'   , APASS_TIME);
			TxData := ReplaceAll(TxData, 'strKEYKIND'     , AKeyKind);
			TxData := ReplaceAll(TxData, 'strKEYWORD'     , AKeyWord);
			TxData := ReplaceAll(TxData, 'strDISTANCE'    , ADistance);
			TxData := ReplaceAll(TxData, 'strMAP_X'       , AX);
			TxData := ReplaceAll(TxData, 'strMAP_Y'       , AY);
			TxData := ReplaceAll(TxData, 'strCallSearchYn', ACallSearchYn);
			TxData := ReplaceAll(TxData, 'UserIDString'   , GT_USERIF.ID);
			TxData := ReplaceAll(TxData, 'ClientVerString', VERSIONINFO);

			if RequestDataBase(TxData, RxData) then
			begin
				if Not AutoFlag then //자동검색 아님
				begin
					Frm_Flash.lb_NoticeAdminMap.Caption := '※ 기사가 많을수록 속도가 지연될 수 있습니다.';
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
				end;

				Screen.Cursor := crHourGlass;
				slIngCall.clear;
				lst_Result := RxData.documentElement.selectNodes('/cdms/Service/Data/Workers1/W1');

				cxViewWkConnect.DataController.SetRecordCount(0);
				cxViewWkConnect.BeginUpdate;
				//화면에 보이는 좌표찾기
				slLon := TStringList.Create; slLat := TStringList.Create;
				Try
					Try
						if not rbo_UseNaverMap.Checked then GetQuadPoint(mMap.Width, mMap.Height, slLon, slLat); 
				
						iRow := 0;
						if Not AutoFlag then //자동검색 아님
						begin
							Frm_Flash.cxPBar1.Properties.Max := lst_Result.length;
							Frm_Flash.cxPBar1.Position := 0;
						end;
						for I := 0 to cxViewWkConnect.ColumnCount - 1 do
						begin
							cxViewWkConnect.Columns[I].SortIndex := -1;
							cxViewWkConnect.Columns[I].SortOrder := soNone;
						end;

						for i := 0 to lb_Title_List.Items.Count - 1 do
						  iwkTitle[i] := cxViewWkConnect.GetColumnByFieldName(lb_Title_List.Items.Strings[i]).Index;

						iNo := 1;
						for I := 0 to lst_Result.length - 1 do    //자기사
						begin
							if Not AutoFlag then //자동검색 아님
							begin
								Frm_Flash.cxPBar1.Position := I + 1;
								Frm_Flash.lblCnt.Caption := IntToStr(I + 1) + '/' + IntToStr(lst_Result.length);
								Application.ProcessMessages;
							end;

							//화면 내 좌표에 유요한 기사만 마크
							if ( not rbo_UseNaverMap.Checked ) And ( Not GB_365System ) then
							begin
								GetTextSeperationEx(',', lst_Result.item[I].attributes.getNamedItem('xy').Text, slTmp);
								dTmpLon := StrToFloat(slTmp[1]) /360000;
								dTmpLat := StrToFloat(slTmp[0]) /360000;
								bLonLat := PtInPolygon(dTmpLon, dTmpLat, slLon, slLat, slLon.count);
								if Not bLonLat then Continue;
							end;

              if ( Trim(txtSearch.Text) <> '' ) And
                 (pos(txtSearch.Text, lst_Result.item[I].attributes.getNamedItem('NAME').Text) <= 0 ) then continue;

							iTmp := -1;
							if sl_WKInfo.indexOf(lst_Result.item[I].attributes.getNamedItem('SABUN').Text) > -1 then
							begin
								sTmp := lst_Result.item[I].attributes.getNamedItem('SABUN').Text      + ',' +
												lst_Result.item[I].attributes.getNamedItem('ATTEND').Text     + ',' +
												lst_Result.item[I].attributes.getNamedItem('PASS_TIME').Text  + ',' +
												lst_Result.item[I].attributes.getNamedItem('STATE').Text      + ',' +
												lst_Result.item[I].attributes.getNamedItem('FINISH_CNT').Text + ',' +
												lst_Result.item[I].attributes.getNamedItem('xy').Text;
								iTmp := sl_WKInfo_Status.IndexOf(sTmp);
								if iTmp > -1 then
									continue;
							end;

							WkRec.ATTEND    := lst_Result.item[I].attributes.getNamedItem('ATTEND').Text;
							sAttend := WkRec.ATTEND;
							if iTmp > -1 then //이전 마커의 상태값 확인
							begin
								slTmp.clear;
								GetTextSeperationEx(',', sl_WKInfo_Status[iTmp], slTmp);
								sAttend := slTmp[1]; //이전 상태값
							end;
							slTmp.clear;

							WkRec.BR_Sabun  := lst_Result.item[I].attributes.getNamedItem('BR_SABUN').Text;
							WkRec.Sabun     := lst_Result.item[I].attributes.getNamedItem('SABUN').Text;
							WkRec.Sabun     := lst_Result.item[I].attributes.getNamedItem('SABUN').Text;
							WkRec.Name      := lst_Result.item[I].attributes.getNamedItem('NAME').Text;
							WkRec.PASS_TIME := lst_Result.item[I].attributes.getNamedItem('PASS_TIME').Text;
							WkRec.Con_State := lst_Result.item[I].attributes.getNamedItem('STATE').Text;
							WkRec.BR_Type   := '1';
							WkRec.FinCnt   := lst_Result.item[I].attributes.getNamedItem('FINISH_CNT').Text;

							GetTextSeperationEx(',', lst_Result.item[I].attributes.getNamedItem('xy').Text, slTmp);
							WkRec.MAPX      := slTmp[0];
							WkRec.MAPY      := slTmp[1];
							WkRec.BrNo      := '';
							WkRec.BrName    := lst_Result.item[I].attributes.getNamedItem('BR_NAME').Text;
							WkRec.HP        := lst_Result.item[I].attributes.getNamedItem('HP').Text;
							WkRec.PHONE     := lst_Result.item[I].attributes.getNamedItem('PHONE').Text;

							if chkWKView.Checked then
							begin
								iRow := cxViewWkConnect.DataController.AppendRecord;
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[0]] := iNo; inc(iNo);
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[1]] := lst_Result.item[I].attributes.getNamedItem('BR_NAME').Text;
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[2]] := lst_Result.item[I].attributes.getNamedItem('BR_SABUN').Text;
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[3]] := lst_Result.item[I].attributes.getNamedItem('NAME').Text;
								slTmp.clear;
								GetTextSeperationEx(',', lst_Result.item[I].attributes.getNamedItem('xy').Text, slTmp);
								dTmpLon := StrToFloat(slTmp[1]) /360000;
								dTmpLat := StrToFloat(slTmp[0]) /360000;
								sTmpLon := FloatToStr(dTmpLon);
								sTmpLat := FloatToStr(dTmpLat);
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[4]] := '0' + getWGS84(sTmpLat);
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[5]] := getWGS84(sTmpLon);
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[6]] := '';

								if WkRec.ATTEND = '01' then 
								begin
									if WkRec.Con_State = 'A1' then sTmp1 := '단순접속' else 
									if WkRec.Con_State = 'A2' then sTmp1 := '오더접속' else 
									if WkRec.Con_State = 'B2' then sTmp1 := '미접속';
								end else
								if WkRec.ATTEND = '02' then sTmp1 := '운행';
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[7]] := sTmp1;
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[8]] := StrToCall(lst_Result.item[I].attributes.getNamedItem('PHONE').Text);
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[9]] := lst_Result.item[I].attributes.getNamedItem('SABUN').Text;
							end;

							if not rbo_UseNaverMap.Checked then    //탈맵지도사용
							begin
								mGroup := mPoiman.FindGroup(1);
								mPoi := Nil;
								iGetID := -1;
								if mGroup <> nil then
								begin
									iCnt := mGroup.GetItemCount;
									for j := 1 to iCnt  do
									begin
										mPoi := mGroup.FindItem(j);
										if mPoi.GetString() = WkRec.Sabun then
										begin
											iGetID := mPoi.GetId();
											Break;
										end;
										mPoi := Nil;
									end;
								end;

								if mPoi = nil then
								begin
									AddWkIconReady(WkRec.MAPX, WkRec.MAPY, WkRec, -1);
									sl_WKInfo.add(WkRec.Sabun);
									sl_WKInfo_Status.add(WkRec.Sabun  + ',' + WkRec.ATTEND + ',' + WkRec.PASS_TIME + ',' + WkRec.Con_State
															 + ',' + WkRec.FinCnt + ',' + sTmp);
								end	else
								begin
									mPoll := mPoi.GetLonLat;
									BesselToWGS84(mPoll.GetX, mPoll.Gety);

									dTmpLon := StrToFloat(WkRec.MAPY) /360000;
									dTmpLat := StrToFloat(WkRec.MAPX) /360000;
									sTmpLon := FloatToStr(dTmpLon);
									sTmpLat := FloatToStr(dTmpLat);
						
									if (FloatToStr(sw_Lon) = getWgs84(sTmpLon)) and 
										 ('0'+FloatToStr(sw_Lat) = '0'+getWgs84(sTmpLat)) and 
										 (sAttend = WkRec.ATTEND) then //이전좌표와 비교하여 변경됐으면 좌표이동
									else
									begin
										AddWkIconReady(WkRec.MAPX, WkRec.MAPY, WkRec, iGetID);
									end;
								end;
							end else //네이버 지도사용
							begin
								dTmpLon := StrToFloat(WkRec.MAPY) /360000;
								dTmpLat := StrToFloat(WkRec.MAPX) /360000;
								sTmpLon := FloatToStr(dTmpLon);
								sTmpLat := FloatToStr(dTmpLat);

								WkRec.MAPX      := '0' + getWGS84(sTmpLat);
								WkRec.MAPY      := getWGS84(sTmpLon);
							
								Try //기존 마커 삭제
									sGetLat := '0'; sGetLon := '0';
									iTmp := sl_WKInfo.IndexOf(WkRec.Sabun);
									if iTmp > -1 then //이전 마커의 상태값 확인
									begin
										slTmp.clear;
										GetTextSeperationEx(',', sl_WKInfo_Status[iTmp], slTmp);

										dTmpLon := StrToFloat(slTmp[6]) /360000;
										dTmpLat := StrToFloat(slTmp[5]) /360000;
										sTmpLon := FloatToStr(dTmpLon);
										sTmpLat := FloatToStr(dTmpLat);
										sGetLat := sTmpLat;
										sGetLon := sTmpLon;

										alat := StrToFloatDef(getDEGREE(WkRec.MAPX), 0);
										alon := StrToFloatDef(getDEGREE(WkRec.MAPY), 0);
										blat := StrToFloatDef(sGetLat, 0);
										blon := StrToFloatDef(sGetLon, 0);
										if ( getDist(20, alat, alon, blat, blon, fdis) ) or (sAttend <> WkRec.ATTEND)  then
	//									if (SetWGS84(WkRec.MAPX) <> sGetLat) or (SetWGS84(WkRec.MAPY) <> sGetLon) or (sAttend <> WkRec.ATTEND) then
										begin
											ExecuteJavaScript(webNaverMap,'RemoveOneMark('''+WkRec.Sabun+''');');  //기존 마커 삭제
											setWkPoiMark(XPos, YPos, WkRec);
										end;
									end else
									begin
										setWkPoiMark(XPos, YPos, WkRec);
										sl_WKInfo.add(WkRec.Sabun);
										sl_WKInfo_Status.add(WkRec.Sabun  + ',' + WkRec.ATTEND + ',' + WkRec.PASS_TIME + ',' + WkRec.Con_State
																 + ',' + WkRec.FinCnt + ',' + sTmp);
									end;
								except
								end;
							end;
							slIngCall.add(WkRec.Sabun);
						end;
						cxViewWkConnect.EndUpdate;
					Except
						cxViewWkConnect.EndUpdate;
					end;

					if lst_Result.length < 1 then
					begin
						sl_WKInfo.Clear;
						sl_WKInfo_Status.Clear;
						sl_Info_WKName.Clear;
						sl_Info_WKContents.Clear;
					end;

					slDeadCall.clear;
					slDeadCallIdx.clear;
					mGroup := mPoiman.FindGroup(1);
					mPoi := Nil;
					if mGroup <> nil then
					begin
						iCnt := mGroup.GetItemCount;
						for j := 1 to iCnt do        //삭제해야할 마커  slDeadCall에 추가
						begin
							mPoi := mGroup.FindItem(j);
							if mPoi <> nil then
							begin
								iGetID := sl_WKInfo.indexOf(mPoi.GetString());
								if iGetID < 0 then
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
							iDx := sl_Info_WKName.indexOf(slDeadCall[i]);
							if iDx > -1 then
							begin
								sl_Info_WKName.delete(iDx);
								sl_Info_WKContents.delete(iDx); 
							end;
							iDx := sl_WKInfo.indexOf(slDeadCall[i]);
							if iDx > -1 then
							begin
								sl_WKInfo.delete(iDx);
								sl_WKInfo_Status.delete(iDx); 
							end;
						end;
					end;

					cxViewWkConnect.BeginUpdate;  //타기사
					Try
						slIngCall.clear;
						lst_Result := RxData.documentElement.selectNodes('/cdms/Service/Data/Workers2/W2');
						for I := 0 to lst_Result.length - 1 do
						begin
							if Not AutoFlag then //자동검색 아님
							begin
								Frm_Flash.cxPBar1.Position := I + 1;
								Frm_Flash.lblCnt.Caption := IntToStr(I + 1) + '/' + IntToStr(lst_Result.length);
								Application.ProcessMessages;
							end;

							//화면 내 좌표에 유요한 기사만 마크
							if ( not rbo_UseNaverMap.Checked ) And ( Not GB_365System ) then
							begin
								GetTextSeperationEx(',', lst_Result.item[I].attributes.getNamedItem('xy').Text, slTmp);
								dTmpLon := StrToFloat(slTmp[1]) /360000;
								dTmpLat := StrToFloat(slTmp[0]) /360000;
								bLonLat := PtInPolygon(dTmpLon, dTmpLat, slLon, slLat, slLon.count);
								if Not bLonLat then Continue;
							end;

              if ( Trim(txtSearch.Text) <> '' ) And
                 (pos(txtSearch.Text, lst_Result.item[I].attributes.getNamedItem('NAME').Text) <= 0 ) then continue;

							iTmp := -1;
							if sl_T_WKInfo.indexOf(lst_Result.item[I].attributes.getNamedItem('SABUN').Text) > -1 then
							begin
								sTmp := lst_Result.item[I].attributes.getNamedItem('SABUN').Text      + ',' + 
												lst_Result.item[I].attributes.getNamedItem('ATTEND').Text     + ',' +
												lst_Result.item[I].attributes.getNamedItem('PASS_TIME').Text  + ',' +
												lst_Result.item[I].attributes.getNamedItem('STATE').Text      + ',' + '' + ',' +
												lst_Result.item[I].attributes.getNamedItem('xy').Text;
								iTmp := sl_T_WKInfo_Status.IndexOf(sTmp);
								if iTmp > -1 then 
									continue;
							end;

							WkRec.ATTEND    := lst_Result.item[I].attributes.getNamedItem('ATTEND').Text;
							sAttend := WkRec.ATTEND;
							if iTmp > -1 then //이전 마커의 상태값 확인
							begin
								slTmp.clear;
								GetTextSeperationEx(',', sl_T_WKInfo_Status[iTmp], slTmp);
								sAttend := slTmp[1]; //이전 상태값
							end;

							slTmp.clear;

							WkRec.Sabun     := lst_Result.item[I].attributes.getNamedItem('SABUN').Text;
							WkRec.BR_Sabun  := lst_Result.item[I].attributes.getNamedItem('BR_SABUN').Text;
							WkRec.Sabun     := lst_Result.item[I].attributes.getNamedItem('SABUN').Text;
							WkRec.Name      := lst_Result.item[I].attributes.getNamedItem('NAME').Text;
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
									 (GT_USERIF.ShareNo = 'G72') or (GT_USERIF.ShareNo = 'G42')) And (GS_PRJ_AREA = 'O')) or
								 (GT_USERIF.ID = 'sntest') then //포항2개, 거제2개 신차장님 요청 20190926 KHS 
							begin
								WkRec.HP        := lst_Result.item[I].attributes.getNamedItem('HP').Text;
								WkRec.PHONE     := lst_Result.item[I].attributes.getNamedItem('PHONE').Text;
							end	else
							begin
								WkRec.HP        := '';
								WkRec.PHONE     := '';
							end;

							if chkWKView.Checked then
							begin
								iRow := cxViewWkConnect.DataController.AppendRecord;
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[0]] := iNo; inc(iNo);
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[1]] := lst_Result.item[I].attributes.getNamedItem('BR_NAME').Text;
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[2]] := lst_Result.item[I].attributes.getNamedItem('BR_SABUN').Text;
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[3]] := lst_Result.item[I].attributes.getNamedItem('NAME').Text;
								slTmp.clear;
								GetTextSeperationEx(',', lst_Result.item[I].attributes.getNamedItem('xy').Text, slTmp);
								dTmpLon := StrToFloat(slTmp[1]) /360000;
								dTmpLat := StrToFloat(slTmp[0]) /360000;
								sTmpLon := FloatToStr(dTmpLon);
								sTmpLat := FloatToStr(dTmpLat);
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[4]] := '0' + getWGS84(sTmpLat);
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[5]] := getWGS84(sTmpLon);
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[6]] := '';
								if WkRec.ATTEND = '01' then 
								begin
									if WkRec.Con_State = 'A1' then sTmp2 := '단순접속' else 
									if WkRec.Con_State = 'A2' then sTmp2 := '오더접속' else 
									if WkRec.Con_State = 'B2' then sTmp2 := '미접속';
									sTmp1 := sTmp2 + '(타)';
								end else
								if WkRec.ATTEND = '02' then sTmp1 := '운행' + '(타)';
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[7]] := sTmp1;

								if (((GT_USERIF.ShareNo = 'G72') or (GT_USERIF.ShareNo = 'G42') or 
										 (GT_USERIF.ShareNo = 'G64') or (GT_USERIF.ShareNo = 'G19')) And (GS_PRJ_AREA = 'O')) or
									 (GT_USERIF.ID = 'sntest') then //포항2개, 거제2개 신차장님 요청 20190926 KHS 
								begin
									cxViewWkConnect.DataController.Values[iRow, iwkTitle[8]] := StrToCall(lst_Result.item[I].attributes.getNamedItem('PHONE').Text);
								end else
								begin
									cxViewWkConnect.DataController.Values[iRow, iwkTitle[8]] := '';
								end;
								cxViewWkConnect.DataController.Values[iRow, iwkTitle[9]] := lst_Result.item[I].attributes.getNamedItem('SABUN').Text;
							end;

							if not rbo_UseNaverMap.Checked then    //탈맵지도사용
							begin
								mGroup := mPoiman.FindGroup(2);
								mPoi := Nil;
								iGetID := -1;
								if mGroup <> nil then
								begin
									iCnt := mGroup.GetItemCount;
									for j := 1 to iCnt  do
									begin
										mPoi := mGroup.FindItem(j);
										if mPoi.GetString() = WkRec.Sabun then
										begin
											iGetID := mPoi.GetId();
											Break;
										end;
										mPoi := Nil;
									end;
								end;

								if mPoi = nil then
								begin
									AddWkIconReady(WkRec.MAPX, WkRec.MAPY, WkRec, -1);
									sl_T_WKInfo.add(WkRec.Sabun);
									sl_T_WKInfo_Status.add(WkRec.Sabun  + ',' + WkRec.ATTEND + ',' + WkRec.PASS_TIME + ',' + WkRec.Con_State
															 + ',' + WkRec.FinCnt + ',' + sTmp);
								end	else
								begin
									mPoll := mPoi.GetLonLat;
									BesselToWGS84(mPoll.GetX, mPoll.Gety);

									dTmpLon := StrToFloat(WkRec.MAPY) /360000;
									dTmpLat := StrToFloat(WkRec.MAPX) /360000;
									sTmpLon := FloatToStr(dTmpLon);
									sTmpLat := FloatToStr(dTmpLat);
						
	//								if (FloatToStr(sw_Lon) = getWgs84(sTmpLon)) and ('0'+FloatToStr(sw_Lat) = '0'+getWgs84(sTmpLat)) then //이전좌표와 비교하여 변경됐으면 좌표이동
									if (FloatToStr(sw_Lon) = getWgs84(sTmpLon)) and 
										 ('0'+FloatToStr(sw_Lat) = '0'+getWgs84(sTmpLat)) and 
										 (sAttend = WkRec.ATTEND) then //이전좌표와 비교하여 변경됐으면 좌표이동
									else
										AddWkIconReady(WkRec.MAPX, WkRec.MAPY, WkRec, iGetID);
								end;
							end else //네이버 지도사용
							begin
								dTmpLon := StrToFloat(WkRec.MAPY) /360000;
								dTmpLat := StrToFloat(WkRec.MAPX) /360000;
								sTmpLon := FloatToStr(dTmpLon);
								sTmpLat := FloatToStr(dTmpLat);

								WkRec.MAPX      := '0' + getWGS84(sTmpLat);
								WkRec.MAPY      := getWGS84(sTmpLon);
							
								Try //기존 마커 삭제
									sGetLat := '0'; sGetLon := '0';
									iTmp := sl_T_WKInfo.IndexOf(WkRec.Sabun);
									if iTmp > -1 then //이전 마커의 상태값 확인
									begin
										slTmp.clear;
										GetTextSeperationEx(',', sl_T_WKInfo_Status[iTmp], slTmp);

										dTmpLon := StrToFloat(slTmp[6]) /360000;
										dTmpLat := StrToFloat(slTmp[5]) /360000;
										sTmpLon := FloatToStr(dTmpLon);
										sTmpLat := FloatToStr(dTmpLat);
										sGetLat := sTmpLat;
										sGetLon := sTmpLon;

										alat := StrToFloatDef(getDEGREE(WkRec.MAPX), 0);
										alon := StrToFloatDef(getDEGREE(WkRec.MAPY), 0);
										blat := StrToFloatDef(sGetLat, 0);
										blon := StrToFloatDef(sGetLon, 0);
										if ( getDist(20, alat, alon, blat, blon, fdis) ) or (sAttend <> WkRec.ATTEND)  then
	//									if (SetWGS84(WkRec.MAPX) <> sGetLat) or (SetWGS84(WkRec.MAPY) <> sGetLon) or (sAttend <> WkRec.ATTEND) then
										begin
											ExecuteJavaScript(webNaverMap,'RemoveOneMark('''+WkRec.Sabun+''');');  //기존 마커 삭제
											setWkPoiMark(XPos, YPos, WkRec);
										end;
									end else
									begin
										setWkPoiMark(XPos, YPos, WkRec);
										sl_T_WKInfo.add(WkRec.Sabun);
										sl_T_WKInfo_Status.add(WkRec.Sabun  + ',' + WkRec.ATTEND + ',' + WkRec.PASS_TIME + ',' + WkRec.Con_State
																 + ',' + WkRec.FinCnt + ',' + sTmp);
									end;
									{ExecuteJavaScript(webNaverMap,'FindOneMark('''+WkRec.Sabun+''');');  //마커 존재확인
									sFind := ExecuteJavaScriptGetValue(webNaverMap, 'Result');   //결과 받음
									if sFind = 'True' then
									begin
										sGetLat := ExecuteJavaScriptGetValue(webNaverMap, 'lat');  
										sGetLon := ExecuteJavaScriptGetValue(webNaverMap, 'lng');  

										alat := StrToFloatDef(getDEGREE(WkRec.MAPX), 0);
										alon := StrToFloatDef(getDEGREE(WkRec.MAPY), 0);
										blat := StrToFloatDef(sGetLat, 0);
										blon := StrToFloatDef(sGetLon, 0);
	//									if ( getDist(10, alat, alon, blat, blon, fdis) )  then
										if (SetWGS84(WkRec.MAPX) <> sGetLat) or (SetWGS84(WkRec.MAPY) <> sGetLon) or (sAttend <> WkRec.ATTEND) then
										begin
											ExecuteJavaScript(webNaverMap,'RemoveOneMark('''+WkRec.Sabun+''');');  //기존 마커 삭제
											setWkPoiMark(XPos, YPos, WkRec);
										end;
									end else
									begin
										setWkPoiMark(XPos, YPos, WkRec);
										sl_T_WKInfo.add(WkRec.Sabun);
										sl_T_WKInfo_Status.add(WkRec.Sabun  + ',' + WkRec.ATTEND + ',' + WkRec.PASS_TIME + ',' + WkRec.Con_State
																 + ',' + WkRec.FinCnt + ',' + sTmp);
									end;  }

								except
								end;
							end;

							slIngCall.add(WkRec.Sabun);
						end;
						cxViewWkConnect.EndUpdate;
					except
						cxViewWkConnect.EndUpdate;
					end;

					if lst_Result.length < 1 then
					begin
						sl_T_WKInfo.Clear;
						sl_T_WKInfo_Status.Clear;
						sl_T_Info_WKName.Clear;
						sl_T_Info_WKContents.Clear;
					end;

					slDeadCall.clear;
					slDeadCallIdx.clear;
					mGroup := mPoiman.FindGroup(2);
					mPoi := Nil;
					if mGroup <> nil then
					begin
						iCnt := mGroup.GetItemCount;
						for j := 1 to iCnt do        //삭제해야할 마커  slDeadCall에 추가
						begin
							mPoi := mGroup.FindItem(j);
							if mPoi <> nil then
							begin
								iDx := sl_T_WKInfo.indexOf(mPoi.GetString());
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
							iDx := sl_T_Info_WKName.indexOf(slDeadCall[i]);
							if iDx > -1 then
							begin
								sl_T_Info_WKName.delete(iDx);
								sl_T_Info_WKContents.delete(iDx); 
							end;
							iDx := sl_T_WKInfo.indexOf(slDeadCall[i]);
							if iDx > -1 then
							begin
								sl_T_WKInfo.delete(iDx);
								sl_T_WKInfo_Status.delete(iDx); 
							end;
						end;
					end;

					slIngCall.clear;
					if rbo_UseNaverMap.Checked then
					begin
						Try
							ExecuteJavaScript(webNaverMap,'RemoveGongU();');
						except
						End;
					end;

					lst_Result := RxData.documentElement.selectNodes('/cdms/Service/Data/Calls/Call');
					for I := 0 to lst_Result.length - 1 do
					begin
						if Not AutoFlag then //자동검색 아님
						begin
							Frm_Flash.cxPBar1.Position := I + 1;
							Frm_Flash.lblCnt.Caption := IntToStr(I + 1) + '/' + IntToStr(lst_Result.length);
							Application.ProcessMessages;
						end;

						//화면 내 좌표에 유요한 기사만 마크
						if not rbo_UseNaverMap.Checked then
						begin
							GetTextSeperationEx(',', lst_Result.item[I].attributes.getNamedItem('xy').Text, slTmp);
							dTmpLon := StrToFloat(slTmp[1]) /360000;
							dTmpLat := StrToFloat(slTmp[0]) /360000;
							bLonLat := PtInPolygon(dTmpLon, dTmpLat, slLon, slLat, slLon.count);
							if Not bLonLat then Continue;
						end;

						if not rbo_UseNaverMap.Checked then    //탈맵지도사용
						begin
							if sl_GongUSlip.indexOf(lst_Result.item[I].attributes.getNamedItem('slip').Text) > -1 then
							begin
								sTmp := lst_Result.item[I].attributes.getNamedItem('slip').Text + ',' + 
												lst_Result.item[I].attributes.getNamedItem('xy').Text;
								if sl_GongUContens.IndexOf(sTmp) > -1 then 
									continue;
							end;     
						end;

						slTmp.clear;

						GongURec.SLIP := lst_Result.item[I].attributes.getNamedItem('slip').Text;
						GetTextSeperationEx(',', lst_Result.item[I].attributes.getNamedItem('xy').Text, slTmp);
						GongURec.XY := lst_Result.item[I].attributes.getNamedItem('xy').Text;

						GongURec.MAPX      := slTmp[0];
						GongURec.MAPY      := slTmp[1];

						if not rbo_UseNaverMap.Checked then    //탈맵지도사용
						begin
							mGroup := mPoiman.FindGroup(80);
							iGetID := -1;
							if mGroup <> nil then
							begin
								iCnt := mGroup.GetItemCount;

								for j := 1 to iCnt  do
								begin
									mPoi := mGroup.FindItem(j);
									if mPoi.GetString() = GongURec.SLIP then
									begin
										iGetID := mPoi.GetId();
										Break;
									end;
									mPoi := Nil;
								end;
							end;

							if mPoi = nil then
							begin
								AddGongU(GongURec.MAPX, GongURec.MAPY, GongURec, -1);
								sl_GongUSlip.add(GongURec.SLIP);
								sl_GongUContens.add(GongURec.SLIP  + ',' + GongURec.XY);
							end	else
							begin
								mPoll := mPoi.GetLonLat;
								BesselToWGS84(mPoll.GetX, mPoll.Gety);

								dTmpLon := StrToFloat(GongURec.MAPY) /360000;
								dTmpLat := StrToFloat(GongURec.MAPX) /360000;
								sTmpLon := FloatToStr(dTmpLon);
								sTmpLat := FloatToStr(dTmpLat);

								if (FloatToStr(sw_Lon) = getWgs84(sTmpLon)) and ('0'+FloatToStr(sw_Lat) = '0'+getWgs84(sTmpLat)) then //이전좌표와 비교하여 변경됐으면 좌표이동
								else
									AddGongU(GongURec.MAPX, GongURec.MAPY, GongURec, iGetID);
							end;
						end else //네이버 지도사용
						begin
							dTmpLon := StrToFloat(GongURec.MAPY) /360000;
							dTmpLat := StrToFloat(GongURec.MAPX) /360000;
							sTmpLon := FloatToStr(dTmpLon);
							sTmpLat := FloatToStr(dTmpLat);

							GongURec.MAPX      := '0' + getWGS84(sTmpLat);
							GongURec.MAPY      := getWGS84(sTmpLon);
							
							Try //기존 마커 삭제
								ExecuteJavaScript(webNaverMap,'FindOneMark('''+GongURec.SLIP+''');');  //마커 존재확인
								sFind := ExecuteJavaScriptGetValue(webNaverMap, 'Result');   //결과 받음
								if sFind = 'True' then
								begin
									sGetLat := ExecuteJavaScriptGetValue(webNaverMap, 'lat');  
									sGetLon := ExecuteJavaScriptGetValue(webNaverMap, 'lng');
									if (SetWGS84(GongURec.MAPX) <> sGetLat) or (SetWGS84(GongURec.MAPY) <> sGetLon) then
									begin
										ExecuteJavaScript(webNaverMap,'RemoveOneMark('''+GongURec.SLIP+''');');  //기존 마커 삭제
										setGongUMark(XPos, YPos, GongURec);
									end;
								end else
								begin
									setGongUMark(XPos, YPos, GongURec);
									sl_GongUSlip.add(GongURec.SLIP);
									sl_GongUContens.add(GongURec.SLIP  + ',' + GongURec.XY);
								end;
	//							sl_GongUSlip.add(GongURec.SLIP);
	//							sl_GongUContens.add(GongURec.SLIP  + ',' + GongURec.XY);
							except
							end;
						end;
					end;
				
					slDeadCall.clear;
					slDeadCallIdx.clear;
					mGroup := mPoiman.FindGroup(80);
					if mGroup <> nil then
					begin
						iCnt := mGroup.GetItemCount;
						for j := 1 to iCnt do        //삭제해야할 마커  slDeadCall에 추가
						begin
							mPoi := mGroup.FindItem(j);
							if mPoi <> nil then
							begin
								iGetID := sl_GongUSlip.indexOf(mPoi.GetString());
								if iGetID < 0 then
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
							iDx := sl_GongUSlip.indexOf(slDeadCall[i]);
							if iDx > -1 then
							begin
								sl_GongUSlip.delete(iDx);
								sl_GongUContens.delete(iDx); 
							end;
						end;
					end;
				Finally
					slLon.Free; slLat.Free;
				End;
			end;
		finally
			slTmp.free;
			slIngCall.free;
			slDeadCall.free;
			slDeadCallIdx.free;
			RxData := Nil;
			Frm_Flash.Hide;
			Frm_Flash.lb_NoticeAdminMap.visible := False;
			Screen.Cursor := crDefault;
		end;
	except
		on e: exception do
		begin
			btnSearch.Enabled := True;
			rbo_UseNaverMap.Enabled := True;
			Log('RequestDataWorker Error :' + E.Message, LOGDATAPATHFILE);
			Screen.Cursor := crDefault;
			Assert(False, 'RequestDataWorker  Error :' + E.Message);
		end;
	end;
end;

function TFrm_AdminMap01.BesselToWGS84(Y_1, x_1: double): integer;
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

function TFrm_AdminMap01.GetAdminCodeF(GLon, GLot: Integer): string;
var
  mAdminman : IXAdminMan;
  mCenterLL : TalMapXLib_TLB.IXPoint;
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

function TFrm_AdminMap01.getDist(adist: Integer; ax, ay, bx,
	by: Double; var ADis : Double): boolean;
var fdis : Double;
begin
	try
		Result := False;
		// 도값 직선거리 계산 공식
		if ( ax = bx ) and ( by = by ) then
		begin
			Result := True;
		end else
		begin
			fdis := ArcCos(COS(DegToRad(90-ax))*COS(DegToRad(90-bx))+SIN(DegToRad(90-ax)) *SIN(DegToRad(90-bx))*COS(DegToRad(ay-by)))*6371;
			ADis := fDis;
			if (fdis * 1000) >= adist then Result := True;
		end;
	except
		on e: exception do
		begin
			Log('getDist Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'getDist Error :' + E.Message);
		end;
	end;
end;

procedure TFrm_AdminMap01.GetQuadPoint(AWidth, Aheight: Integer; var VectY,
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

function TFrm_AdminMap01.WGS84IntToBessel(Y_1, x_1: string): integer;
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

function TFrm_AdminMap01.WGS84ToBessel(Y_1, x_1: string): integer;
var r_y, r_X : Integer;
  coord : TalMapXLib_TLB.IXCoordSys;
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

function TFrm_AdminMap01.WGS84ToBessel_T(Y_1, x_1: string): integer;
var r_y, r_X : double;
	coord : TalMapXLib_TLB.IXCoordSys;
	pos : IXMapPos;
begin
	r_y := StrToFloat(Y_1) * 360000;
	r_X := StrToFloat(x_1) * 360000;

	coord := mMap.GetCoordSys();
	pos := coord.WGS84ToBessel(r_y, r_X);
	ws_Lon := pos._Lon;
	ws_Lat := pos._Lat;
end;

procedure TFrm_AdminMap01.mMapCreate(ASender: TObject; Value: Integer);
var
  mMapMan : IXMapMan;
  mThemeMan : IXThemeMan;
  mAdminMan : IXAdminMan;
  XPos, YPos : String;
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
  rbo_UseNaverMap.checked := False;
end;

procedure TFrm_AdminMap01.mMapMouseMove(ASender: TObject; Flag, X,
  Y: Integer);
begin
  gMapX := X;
  gMapY := Y;
  tmrDongPolygon.Enabled := True;
end;

procedure TFrm_AdminMap01.mMapPOI_DblClick(ASender: TObject;
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
end;

procedure TFrm_AdminMap01.mMapStateChange(ASender: TObject; Code, Value1,
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
				mGroup := mPoiman.FindGroup(1);
				if mGroup = nil then mGroup := mPoiman.NewGroup(1);

				//레벨별 기사 상태 캡션표기//////////////////////////////////
				mGstyle := mPoiman.FindStyle(1);
				if (mGstyle <> nil) then
				begin
					// 지방권만 레벨6일경우 캡션 표시
					if GS_PRJ_AREA = 'O' then iCaptionLvl := 7
															 else iCaptionLvl := 6;

					if ( mCtrlState.GetLevel() < iCaptionLvl ) Or ( GB_365System ) then
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
				//레벨별 기사 아이콘변경/////////////////////////////////////
				mGroup := mPoiman.FindGroup(2);
				if mGroup = nil then mGroup := mPoiman.NewGroup(2);

				//레벨별 기사 상태 캡션표기//////////////////////////////////
				mGstyle := mPoiman.FindStyle(1);
				if (mGstyle <> nil) then
				begin
					// 지방권만 레벨6일경우 캡션 표시
					if GS_PRJ_AREA = 'O' then iCaptionLvl := 7
															 else iCaptionLvl := 6;

					if ( mCtrlState.GetLevel() < iCaptionLvl ) Or ( GB_365System ) then
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
				//레벨별 기사 아이콘변경/////////////////////////////////////
			end;
    end;
	except
		btnSearch.Enabled := True;
		rbo_UseNaverMap.Enabled := True;  
	end;
end;

procedure TFrm_AdminMap01.mMapUI_MouseDown(ASender: TObject;
  const Obj: IXUIObj; Flag, X, Y: Integer);
begin
 // Map Tool Bar
  if Obj.GetUIID > 200 then
  begin
    MyToolBar1[Obj.GetUIID - 200].SetItemIndex(2);
    Obj.SetAlpha(80);
  end;
end;

procedure TFrm_AdminMap01.mMapUI_MouseHover(ASender: TObject;
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

procedure TFrm_AdminMap01.mMapUI_MouseLeave(ASender: TObject;
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

procedure TFrm_AdminMap01.mMapUI_MouseMove(ASender: TObject;
  const Obj: IXUIObj; Flag, X, Y: Integer);
begin
  if Obj.GetUIID > 200 then
  begin
    MyToolBar1[Obj.GetUIID - 200].SetItemIndex(3);
    Obj.SetAlpha(0);
  end;
end;

procedure TFrm_AdminMap01.mMapUI_MouseUp(ASender: TObject;
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

procedure TFrm_AdminMap01.mniIconCaptionClick(Sender: TObject);
begin
  WkSearch('0.5');
end;

procedure TFrm_AdminMap01.N15Km1Click(Sender: TObject);
begin
  WkSearch('15');
end;

procedure TFrm_AdminMap01.N1Click(Sender: TObject);
begin
  ClearWkIcon;
end;

procedure TFrm_AdminMap01.N1Km1Click(Sender: TObject);
begin
  WkSearch('1');
end;

procedure TFrm_AdminMap01.N2Click(Sender: TObject);
Var sAddr : String;
    sX, sY, sHttp : string;
begin
  try
    BesselToWGS84(FLon, FLat);
    sX := getDEGREE('0'+ FloatToStr(sw_Lat));
    sY := getDEGREE(FloatToStr(sw_Lon));
    sHttp := 'https://naveropenapi.apigw.ntruss.com/map-reversegeocode/v2/gc?coords=' + sY + ',' + sX
           + '&output=json&orders=addr';
    sAddr := fGetNaverAddress_cloud('H', sHttp);
    Mark_Symbol(FLon, FLat, 9, '9', '', sAddr);
  except

  end;
end;

procedure TFrm_AdminMap01.N30Km1Click(Sender: TObject);
begin
  WkSearch('30');
end;

procedure TFrm_AdminMap01.N3Km1Click(Sender: TObject);
begin
  WkSearch('3');
end;

procedure TFrm_AdminMap01.N5Km1Click(Sender: TObject);
begin
  WkSearch('5');
end;

procedure TFrm_AdminMap01.OnMoveMap(lon, lat: INTEGER);
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
  mCtrlState.SetLLCenter(lon, lat);
end;

procedure TFrm_AdminMap01.pLoadNaverMap;
var iRandom : integer;
		sClient: string;
begin
	Try
		iRandom := RandomRange(0, gslNaverClientID.Count); //실제 갯수만큼 사용 0, 5 -> Max index = 4
		sClient := gslNaverClientID[iRandom];
		Naver_URL := 'http://203.251.202.13:88/map/makeNaverMap_AdminMap_cloud_20200103.jsp?ncpClientId=' + sClient;
		//Naver_URL := 'http://203.251.202.13:88/map/makeNaverMap_AdminMap_cloud.jsp?ncpClientId=' + sClient;
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

procedure TFrm_AdminMap01.PnlTitleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_AdminMap01.proc_AutoSearchStop;
begin
	cb_UpDate.ItemIndex := 0;
	tmr_dis.Enabled := False;
	cxCEdt.Value := 0; // 갱신시간 카운트.
end;

procedure TFrm_AdminMap01.ClearDongList(AcxCombo: TcxComboBox);
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

procedure TFrm_AdminMap01.SetReadyStyle;
var
  mImageman : IXImageMan;
begin
  try
      // Step 3. Make POI Items
    mImageman := mCtrlMan.GetImageMan();
    mImageman.SetDefaultPath(mRootPath + '\Image\');
    ReadyImage := mImageman.LoadImageList('Ready', 'Ready.png',16,16 );
    if Not ReadyImage.IsValid then ShowMessage('ReadyImage 이상');
  except
  end;
end;

procedure TFrm_AdminMap01.SetRunStyle;
var
  mImageman : IXImageMan;
begin
  try
    mImageman := mCtrlMan.GetImageMan();
    mImageman.SetDefaultPath(mRootPath + '\Image\');
    RunImage := mImageman.LoadImageList('Run', 'Run.png',16,16 );
    if Not RunImage.IsValid then ShowMessage('RunImage 이상');
  except
  end;
end;

procedure TFrm_AdminMap01.BirdView;
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

procedure TFrm_AdminMap01.CheckArea;
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

procedure TFrm_AdminMap01.CheckDistance;
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

procedure TFrm_AdminMap01.ChkShuttleSchClick(Sender: TObject);
begin
  if ChkShuttleSch.Checked then GrpShuttleSch.Enabled := True
                           else GrpShuttleSch.Enabled := False;
end;

procedure TFrm_AdminMap01.chkStateAClick(Sender: TObject);
begin
  if chkWKWAITAll.Tag = 1 then Exit;

  if ( chkStateA.Checked ) Or ( chkStateB.Checked )  then
  begin
    chkWKWAITAll.Checked := False;
  end;
end;

procedure TFrm_AdminMap01.chkWKWAITAllClick(Sender: TObject);
begin
  if chkWKWAITAll.Checked then
  begin
    chkWKWAITAll.Tag := 1;
    chkStateA.Checked := False;
    chkStateB.Checked := False;
    chkWKWAITAll.Tag := 0;
  end;
end;

procedure TFrm_AdminMap01.ChkWorkerSchClick(Sender: TObject);
begin
  if chkWorkerSch.Checked then GrpWorkerSch.Enabled := True
                          else GrpWorkerSch.Enabled := False;
end;

procedure TFrm_AdminMap01.Clear;
begin
  ClearWkIcon;
end;

procedure TFrm_AdminMap01.ClearWkIcon;
Var mGroup : IXPOIGroup;
begin
	if mPoiman = nil then Exit;

//	if not ChkWorkerSch.checked then
	begin
		sl_WKInfo.Clear;
		sl_WKInfo_Status.Clear;
		sl_Info_WKName.Clear;
		sl_Info_WKContents.Clear;

		sl_T_WKInfo.Clear;
		sl_T_WKInfo_Status.Clear;
		sl_T_Info_WKName.Clear;
		sl_T_Info_WKContents.Clear;

		mGroup := mPoiman.FindGroup(1);
		if mGroup <> nil then mGroup.ClearItem;
		mGroup := mPoiman.FindGroup(2);
		if mGroup <> nil then mGroup.ClearItem;
	end;

//	if not ChkShuttleSch.checked then
	begin
		sl_GongUSlip.Clear;
		sl_GongUContens.Clear;

		mGroup := mPoiman.FindGroup(80);
		if mGroup <> nil then mGroup.ClearItem;
	end;


//	if not ChkGongUCall.checked then
	begin
		sl_STInfo.Clear;
		sl_STInfo_Status.Clear;
		mGroup := mPoiman.FindGroup(90);
		if mGroup <> nil then mGroup.ClearItem;
	end;
end;

procedure TFrm_AdminMap01.CopyToClipboard;
begin
  mMap.CopyToClipboard();
end;

procedure TFrm_AdminMap01.CreateLevelBar;
var
  mImageman : IXImageMan;
  mBg, mLevelBarBg, mBtnZoomIn, mBtnZoomOut   : IXUIButton;
  i, UIID, CY  : Integer;
  imgName : string;
  
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

procedure TFrm_AdminMap01.CreateToolBarUI;
var
  i, UIID : Integer;
  width_px : Integer;
  bCreateToolBarStyle1 : Boolean;
  dpsize : IXSize;
  mImageman : IXImageMan;
	mUrl : string;
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

procedure TFrm_AdminMap01.cxbtnHIntClick(Sender: TObject);
begin
  if pnlHint.Visible then pnlHint.Visible := False
                     else pnlHint.Visible := True;
end;

procedure TFrm_AdminMap01.cxButton1Click(Sender: TObject);
Const
	List_Point : array[0..7] of AnsiString
	= ('037294186,127072414'
	 , '037293319,127070730'
	 , '037294276,127065810'
	 , '037295170,127064998'
	 , '037295612,127065822'
	 , '037300068,127070674'
	 , '037294718,127071894'
	 , '037294187,127072298');

Var i : Integer;
   AYMax, AXMax, AYMin, AXMin : integer;
   ALng, ALat : String;
begin
  try
    FRoutePoint.lon.Clear;
    FRoutePoint.lat.Clear;
    FRoutePoint.Idx.Clear;

    ClearWkIcon;
    for i := 0 to Length(List_Point) - 1 do
    begin
      ALat := Copy(List_Point[i],  2, 8);
      ALng := Copy(List_Point[i], 11, 9);

      WGS84ToBessel(getWGS84(ALng), '0' + getWGS84(ALat));
      FRoutePoint.lon.add(IntToStr(ws_Lon));
      FRoutePoint.lat.add(IntToStr(ws_Lat));
      FRoutePoint.Idx.add(IntToStr(i));
  //                    /////이동경로 표기를 위한 좌표 값 저장, 각도를 구하기 위한 좌표 값 저장////
      if i = 0 then
      begin
        Pt1.lon := ws_Lon;
        Pt1.lat := ws_Lat;
      end else
      if i = (Length(List_Point) - 1) then
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

      if i = 0 then
      begin
        if ws_Lon > 0 then
          AYMin := ws_Lon
      end else
      begin
        if ws_Lon > 0 then
          if AYMin > ws_Lon then
            AYMin := ws_Lon;
      end;

      if i = 0 then
      begin
        if ws_Lat > 0 then
          AXMin := ws_Lat
      end else
      begin
        if ws_Lat > 0 then
          if AXMin > ws_Lat then
            AXMin := ws_Lat;
      end;
      /////지도 크기를 정하기 위한 좌표 값 저장////

      OnMoveMap(ws_Lon, ws_Lat);
      Mark_Symbol(ws_Lon, ws_Lat, 1, IntToStr(I+1), '', '');

      if i = 7 then Exit;
    end;
  finally
    SetMapRectLevel(AYMax, AXMax, AYMin, AXMin);
		Proc_Line(FRoutePoint);
  end;
end;

procedure TFrm_AdminMap01.btnSearch2Click(Sender: TObject);
begin
  btnSearch.Click;

  if ( Trim(txtSearch.Text) <> '' ) then
  begin
    if ( cxViewWkConnect.DataController.RecordCount = 0 ) then
       GMessagebox('검색한 사원이 없습니다.', CDMSE)
    else
    begin
      cxViewWkConnect.DataController.FocusedRecordIndex := 0;
      pViewWorker(False);
    end;
  end;
end;

procedure TFrm_AdminMap01.cxViewWkConnectCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  pViewWorker(True);
end;

procedure TFrm_AdminMap01.pViewWorker(bStop : Boolean);
var sXp, sYp : string;
  iXp, iYp, iRow : integer;
begin
	if bStop then proc_AutoSearchStop;

	iRow := cxViewWkConnect.DataController.FocusedRecordIndex;
  iXp := cxViewWkConnect.GetColumnByFieldName('위치X').Index;
	iYp := cxViewWkConnect.GetColumnByFieldName('위치Y').Index;
	sXp := cxViewWkConnect.DataController.Values[iRow, iXp];
	sYp := cxViewWkConnect.DataController.Values[iRow, iYp];

	if rbo_UseNaverMap.Checked then
	begin
		if pos('.', sYp) > 0 then
			proc_MoveCenter((sXp), (sYp), GS_ADMINMAP_LEVEL)
		else
			proc_MoveCenter(SetWGS84(sXp), SetWGS84(sYp), GS_ADMINMAP_LEVEL) ;
	end else
  begin
		if pos('.', sYp) > 0 then
			WGS84ToBessel_T(sYp, sXp)
		else
			WGS84ToBessel(sYp, sXp);
		OnMoveMap(ws_Lon, ws_Lat);
		Map_SetLevel(StrToInt(GS_ADMINMAP_LEVEL));
	end;
end;

procedure TFrm_AdminMap01.cxViewWkConnectColumnHeaderClick(
	Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
	ACol := AColumn.Index;
end;

procedure TFrm_AdminMap01.cxViewWkConnectDataControllerSortingChanged(
  Sender: TObject);
begin
	gfSetIndexNo(cxViewWkConnect, ACol, GS_SortNoChange);
end;

procedure TFrm_AdminMap01.Proc_Line(ARoutePoint: TRoutePoint);
Var
	style : IXLayerStyle;
  mPolygon : IXLayerPolygon;
  mLayer : IXLayer;
  iIdx : integer;
begin
	Try
    Screen.Cursor := crHourGlass;
    try
      layerMan := mCtrlMan.GetLayerMan();
      mLayer :=  layerMan.FindLayer(0);
      if mLayer <> nil then
        mLayer.ClearObject();

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

      For iIdx := 0 to ARoutePoint.Idx.Count - 1 do
      begin
        mPolygon.AddPoint(StrToInt(ARoutePoint.lon[iIdx]), StrToInt(ARoutePoint.lat[iIdx]));
        mPolygon.SetCanClick(1);
        mPolygon.SetCanFocus(1);
        mPolygon.SetClosed(0);   // 0: Line, 1: Polygon
        mPolygon.SetStyle(style);
      end;
    finally
      mPolygon.EndUpdate();
    end;
	except
    ShowMessage('셔틀노선-오류');
  End;
  Screen.Cursor := crDefault;
end;

procedure TFrm_AdminMap01.proc_MoveCenter(ALat, ALon, ALevel: string);
begin
	Try
    ALevel := IntToStr(20 - StrToInt(ALevel));
		ExecuteJavaScript(webNaverMap,'CenterMove('+ALat+','+ALon+','+ALevel+');');
	except
	End;
end;

procedure TFrm_AdminMap01.SetMapRectLevel(LLon, LLat, RLon, RLat: Integer);
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

procedure TFrm_AdminMap01.DelDistance;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(2);
  if layer <> nil then layer.ClearObject();
end;

procedure TFrm_AdminMap01.DrawPolygon;
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

procedure TFrm_AdminMap01.DrawPolyline;
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

procedure TFrm_AdminMap01.HistoryNext;
begin
  mCtrlman := mMap.GetCtrlMan();
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryNext();
end;

procedure TFrm_AdminMap01.HistoryPrev;
begin
  mCtrlman := mMap.GetCtrlMan();
  mCtrlState := mCtrlman.GetControlState();
  mCtrlState.HistoryPrev();
end;

procedure TFrm_AdminMap01.Image1Click(Sender: TObject);
begin
	if cxLabel29.visible then
		cxLabel29.visible := False
	else if not cxLabel29.visible then
		cxLabel29.visible := True;  

	cxLabel29.Left := 403;
	cxLabel29.Top := 39;
end;

procedure TFrm_AdminMap01.MakeStatusbar;
var
	mDpsize : IXSize;
	mImageman : IXImageMan;
  btnImg : IXUIImage;
  stcMsgArea : IXUIStaticText;
  
begin
  mCtrlMan := mMap.GetCtrlMan();
	mUiman := mCtrlMan.GetUIMan();
	mCtrlState := mCtrlMan.GetControlState();
	mDpsize := mCtrlState.GetSizeDP();
	mUtil := mMap.GetUtility();

	mImageman := mCtrlMan.GetImageMan();
  
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

procedure TFrm_AdminMap01.Map_Rotate;
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlMan.SetMapRotation(1);
end;

function TFrm_AdminMap01.Map_SetLevel(level: Integer): Integer;
begin
  if (level < minLogicalLevel) then Exit;
  if (level > maxLogicalLevel) then Exit;
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
  mCtrlState.SetLevel(level);
end;

procedure TFrm_AdminMap01.Map_ZoomIn;
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
	if (mCtrlState.GetLevel() > minLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() -1);
end;

procedure TFrm_AdminMap01.Map_ZoomOut;
begin
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
	if (mCtrlState.GetLevel() < maxLogicalLevel) then	mCtrlState.SetLevel(mCtrlState.GetLevel() +1);
end;

procedure TFrm_AdminMap01.MapLevel_Master(level: INTEGER);
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

procedure TFrm_AdminMap01.ObjectModify;
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

procedure TFrm_AdminMap01.RemovePolygon;
var
  layerMan : IXLayerMan;
  layer : IXLayer;
begin
  mCtrlMan := mMap.GetCtrlMan();
  layerMan := mCtrlMan.GetLayerMan();
  layer :=  layerMan.FindLayer(1);
  if layer <> nil then layer.ClearObject();
end;

procedure TFrm_AdminMap01.SaveImage;
var filename : WideString;
begin
  mUtil := mMap.GetUtility();
	filename := mUtil.SaveImageDialog('C:\', 'MapImage.png');
  mMap.SaveImage(filename);
end;

procedure TFrm_AdminMap01.Show;
begin
  fSetFont(Frm_AdminMap01, GS_FONTNAME);
  ShowWindow(Handle, SW_SHOWNA);
  Visible := True;
end;

procedure TFrm_AdminMap01.ShowThemeForm;
var
  thememan : IXThemeMan;
begin
  mCtrlMan := mMap.GetCtrlMan();
  thememan := mCtrlMan.GetThemeMan();
  thememan.ShowForm();
end;

procedure TFrm_AdminMap01.ToggleLevelBar;
begin
  mCtrlMan := mMap.GetCtrlMan();
	mUiman := mCtrlman.GetUIMan();

	if mUiman.GetShowLevelBar = 0 then mUiman.SetShowLevelBar(1)
	else mUiman.SetShowLevelBar(0);
end;

procedure TFrm_AdminMap01.trm_NaverTimer(Sender: TObject);
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

procedure TFrm_AdminMap01.txtSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then btnSearch2.Click;
end;

procedure TFrm_AdminMap01.View3D;
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

procedure TFrm_AdminMap01.ViewText;
var
  mMapMan : IXMapMan;
begin
  mMapMan := mMap.GetCtrlMan.GetMapMan();
  if mMapMan.GetVisible = 5 then mMapMan.SetVisible(7)
  else if mMapMan.GetVisible = 7 then mMapMan.SetVisible(5);
end;

procedure TFrm_AdminMap01.webNaverMapDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
	if (pDisp = CurDispatch) then
  begin
		webNaverMap.Visible := True;
		bWebLoading := True;
		CurDispatch := nil;
	end;
end;

procedure TFrm_AdminMap01.webNaverMapNavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
	if CurDispatch = nil then
		 CurDispatch := pDisp; { save for comparison }
end;

procedure TFrm_AdminMap01.CreateObj;
var
  i : Integer;
begin
	SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
	SetWindowLong(Handle, GWL_EXSTYLE, WS_EX_APPWINDOW);

	PnlLeft.Width := 320;

	if (GS_PRJ_AREA = 'S') Or 
		 ( (GT_USERIF.ShareNo = 'G03') And (GS_PRJ_AREA = 'O') ) Or
		 ( (GT_USERIF.ShareNo = 'G73') And (GS_PRJ_AREA = 'O') ) Or
		 ( (GT_USERIF.ShareNo = 'G61') And (GS_PRJ_AREA = 'O') ) Or
		 ( (GT_USERIF.ShareNo = 'G64') And (GS_PRJ_AREA = 'O') ) Or
		 ( (GT_USERIF.ShareNo = 'G19') And (GS_PRJ_AREA = 'O') ) Or ( GT_USERIF.BR = 'B100') then
	begin
		ChkShuttleSch.Visible := True;
		GrpShuttleSch.Visible := True;
		cxGroupBox4.Visible := True;
		pnl7.Visible := True;
	end else
	begin
		ChkShuttleSch.Visible := False;
		GrpShuttleSch.Visible := False;
		cxGroupBox4.Visible := False;
		pnl7.Visible := False;
	end;

  ChkShuttleSch.checked := GB_365System;

  for i := 0 to cxViewWkConnect.ColumnCount - 1 do
		cxViewWkConnect.Columns[i].DataBinding.ValueType := 'String';

	FRoutePoint.lon := TStringList.Create;
  FRoutePoint.lat := TStringList.Create;
	FRoutePoint.Idx := TStringList.Create;

	sl_WKInfo := THashedStringList.create;
	sl_WKInfo_Status := THashedStringList.create;
		
	sl_Info_WKName := THashedStringList.create;
	sl_Info_WKContents := THashedStringList.create;

	sl_T_WKInfo := THashedStringList.create;
	sl_T_WKInfo_Status := THashedStringList.create;
		
	sl_T_Info_WKName := THashedStringList.create;
	sl_T_Info_WKContents := THashedStringList.create;

	sl_GongUSlip := THashedStringList.create;
	sl_GongUContens := THashedStringList.create;

	sl_STInfo := THashedStringList.create;
	sl_STInfo_Status := THashedStringList.create;

	AutoFlag := False;

	bNaverFirst := False;
	pLoadNaverMap;
end;

procedure TFrm_AdminMap01.GeneralInit;
begin
	maxLogicalLevel := 13 -1;
  minLogicalLevel := 0;

  CreateLevelBar;

	WGS84ToBessel(Area_CenterLon, Area_CenterLat);
  OnMoveMap(ws_Lon, ws_Lat);
  mCtrlState.SetLevel(StrToInt(GS_ADMINMAP_LEVEL));
  CreateToolBarUI;
  MakeStatusbar;
end;

procedure TFrm_AdminMap01.AddGongU(const AXPos, AYPos: string;
	AWkInfo: TMapGongUInfoRec; iItmiDx : integer);
var
	I: Integer;
	itemCount, mAngle : integer;
	mPosLL : TalMapXLib_TLB.IXPoint;
  mGroup : IXPOIGroup;
	mGstyle, mStyle : IXPOIStyle;
  mItem : IXPOIItem;
begin
	try
		if (AWkInfo.MAPX = '0') or (AWkInfo.MAPY='') then Exit;
		mCtrlMan := mMap.GetCtrlMan();
		mCtrlState := mCtrlMan.GetControlState();
		mUtil := mMap.GetUtility();
		itemCount := 0;
		mPosLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

		WGS84IntToBessel(AWkInfo.MAPY, AWkInfo.MAPX);

		mGroup := mPoiman.FindGroup(80);
		if mGroup = nil then mGroup := mPoiman.NewGroup(80);

			// Step 2-1. Make POI Style
		 mGstyle := mPoiman.FindStyle(1);

    mStyle := mPoiman.FindStyle(1);

    if mStyle = nil then
		begin
      mStyle := mPoiman.NewStyle(1);
    end;
		mGroup.ClearStyle;
		mAngle := 0;
		if iItmiDx > -1 then       
			mItem := mGroup.FindItem(iItmiDx) //기존 마커 변경
		else
			mItem := mGroup.NewItem(-1);      //마커신규생성
		mItem.SetString(AWkInfo.Slip);
		mItem.SetLonLat(ws_Lon, ws_Lat);
		mItem.SetImage(GongUImage);
		mItem.SetShowImage(1);
		mItem.SetImageIndex(0);
		mItem.SetImageOffset(4);
		mItem.SetTextStyle(StrToInt('0x12'));

		if i mod 2 <> 0 then mItem.SetStyle(mStyle);
		mItem.SetAnimation(200); // 1초 단위
		mItem.SetSyncAngle(1);
    mItem.SetAngle(mAngle);
    mItem.SetAlpha(100);

		mAngle := mAngle + 10;
		if(mAngle > 360) then mAngle := 0;
	except
		btnSearch.Enabled := True;
		rbo_UseNaverMap.Enabled := True;
	end;
end;

procedure TFrm_AdminMap01.AddWkIconReady(const AXPos, AYPos: string;
	AWkInfo: TMapWkInfoRec; iItmiDx : integer);
var
  I, iCaptionLvl : Integer;
  Title, Desc: string;

  itemCount, mAngle : integer;
  mPosLL : TalMapXLib_TLB.IXPoint;
  mGroup : IXPOIGroup;
  mGstyle, mStyle : IXPOIStyle;
	mItem : IXPOIItem;
	statNM, sTmp : string;
begin
	SetDebugeWrite('TFrm_AdminMap01.AddWkIconReady');
	Try
		try
			if (AWkInfo.MAPX = '0') or (AWkInfo.MAPY='') then Exit;
			mCtrlMan := mMap.GetCtrlMan();
			mCtrlState := mCtrlMan.GetControlState();
			mUtil := mMap.GetUtility();
			itemCount := 0;
			mPosLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

			WGS84IntToBessel(AWkInfo.MAPY, AWkInfo.MAPX);

			if AWkInfo.BR_Type = '1' then
			begin
				mGroup := mPoiman.FindGroup(1);
				if mGroup = nil then mGroup := mPoiman.NewGroup(1);
			end
			else if AWkInfo.BR_Type = '2' then
			begin
				mGroup := mPoiman.FindGroup(2);
				if mGroup = nil then mGroup := mPoiman.NewGroup(2);
			end;

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

			if ( mCtrlState.GetLevel() < iCaptionLvl ) Or ( GB_365System ) then
			begin
				mStyle.SetGDIFont(GS_FONTNAME, 0, 9);  //레벨별 기사 상태 캡션표기
				mStyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
				mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
				mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
				mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);
		//    mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
		//    mStyle.SetPen(mUtil.RGBColor(175, 57, 54), 1, 0);
				mGroup.SetStyle(mStyle);
			end
			else
				mGroup.ClearStyle;

			mAngle := 0;

			if iItmiDx > -1 then       
				mItem := mGroup.FindItem(iItmiDx) //기존 마커 변경
			else
				mItem := mGroup.NewItem(-1);      //마커신규생성
			
			mItem.SetLonLat(ws_Lon, ws_Lat);
			if AWkInfo.ATTEND = '01' then
			begin
				if (AWkInfo.Con_State = 'B2') and (AWkInfo.BR_Type = '1') then
				begin
					mItem.SetImage(B201);
					statNM := '미접속-자사';
				end else
				if (AWkInfo.Con_State = 'B2') and (AWkInfo.BR_Type = '2') then
				begin
					mItem.SetImage(B202);
					statNM := '미접속-타사';
				end else
				if (AWkInfo.Con_State = 'A1') and (AWkInfo.BR_Type = '1') then
				begin
					mItem.SetImage(A101);
					statNM := '단순접속-자사';
				end else
				if (AWkInfo.Con_State = 'A1') and (AWkInfo.BR_Type = '2') then
				begin
					mItem.SetImage(A102);
					statNM := '단순접속-타사';
				end else
				if (AWkInfo.Con_State = 'A2') and (AWkInfo.BR_Type = '1') then
				begin
					mItem.SetImage(A201);
					statNM := '오더접속-자사';
				end else
				if (AWkInfo.Con_State = 'A2') and (AWkInfo.BR_Type = '2') then
				begin
					mItem.SetImage(A202);
					statNM := '오더접속-타사';
				end;
			end else
			if AWkInfo.ATTEND = '02' then
			begin
				if AWkInfo.BR_Type = '1' then
				begin
					mItem.SetImage(R0201);
					statNM := '운행-자사';
				end else
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
			Title := '';
			if GS_ADMINMAP_Title_BaeCha then Title := Title + AWkInfo.PASS_TIME;
			if GS_ADMINMAP_Title_BRNAME then Title := Title + ' ' + AWkInfo.BrName;
			if GS_ADMINMAP_Title_WKNAME then
      begin
         if Trim(Title) = '' then Title := AWkInfo.Name
                             else Title := Title + ' - ' + AWkInfo.Name;
      end;

//			Title := Format('%s%s(%s)', [AWkInfo.PASS_TIME, AWkInfo.BrName, AWkInfo.Name]);//
			mItem.SetCaption(Title);
			mItem.SetString(AWkInfo.Sabun);
			sTmp := AWkInfo.Sabun; //타사일경우에 사용
			if AWkInfo.BR_Type = '1' then
			begin
			//불필요한 정보 제외 20180320 KHS 신성현차장 요청
//				Desc := Format('[%s](완료건:%s)'#13#10'%s(%s)'#13#10'%s'#13#10'%s(%s)',
//					[statNM, AWkInfo.FinCnt, AWkInfo.Name, AWkInfo.Sabun, AWkInfo.HP, AWkInfo.BrName, AWkInfo.BrNo] );

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
							mItem.SetContents(Desc);
						end;
					end;
				end
				else
				begin
			//불필요한 정보 제외 20180320 KHS 신성현차장 요청
//					Desc := Format('[%s]%s%s[%s](%s)', [statNM, AWkInfo.BrName, AWkInfo.Name, StrToCall(AWkInfo.HP), AWkInfo.Sabun] );
//					mItem.SetContents(Desc);
				end;
			end;

			mItem.SetAnimation(200); // 1초 단위
			mItem.SetSyncAngle(1);
			mItem.SetAngle(mAngle);
			mItem.SetAlpha(100);

			mAngle := mAngle + 10;
			if(mAngle > 360) then mAngle := 0;

			if AWkInfo.BR_Type = '1' then
			begin
				if iItmiDx > -1 then       
				begin
					if sl_Info_WKName.indexOf(AWkInfo.Sabun) > -1 then
						sl_Info_WKContents.delete(sl_Info_WKName.indexOf(AWkInfo.Sabun));
				end
				else
				begin
					sl_Info_WKName.Add(AWkInfo.Sabun);
				end;
				sl_Info_WKContents.Add(Desc);
			end	else
      if AWkInfo.BR_Type = '2' then
			begin
				if iItmiDx > -1 then       
				begin
					if sl_T_Info_WKName.indexOf(sTmp) > -1 then
						sl_T_Info_WKContents.delete(sl_T_Info_WKName.indexOf(sTmp));
				end	else
				begin
					sl_T_Info_WKName.Add(sTmp);
				end;
				sl_T_Info_WKContents.Add(Desc);
			end;
		except
		end;
	except
		on e: exception do
		begin
			btnSearch.Enabled := True;
			rbo_UseNaverMap.Enabled := True;
			Log('AddWkIconReady Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'AddWkIconReady Error :' + E.Message);
		end;
	end;
end;

function TFrm_AdminMap01.SetCtrlState(setType: Integer): Integer;
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

procedure TFrm_AdminMap01.setGongUMark(aLat, aLon: String;
	AWkInfo: TMapGongUInfoRec);
var
	sSLIP : string;
begin
	try
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
		sSLIP := AWkInfo.SLIP;

		Try
			ExecuteJavaScript(webNaverMap,'setGongUMark('+InttoStr(3)+','+ aLat +','+ aLon +','''+ sSLIP +''');');
		except
		End;
	except
		btnSearch.Enabled := True;
		rbo_UseNaverMap.Enabled := True;
	end;
end;

procedure TFrm_AdminMap01.SetGongUStyle;
var
	mImageman : IXImageMan;
begin
	try
			// Step 3. Make POI Items
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		GongUImage := mImageman.LoadImageList('gongu', 'gongu.png',16,16 );
		if Not GongUImage.IsValid then ShowMessage('GongUImage 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.btnHint1Click(Sender: TObject);
begin
  if pnlLargeMenu.Visible then
  begin
    pnlHint.Visible := False;
    pnlLargeMenu.Visible := False;
  end else
  begin
    pnlHint.Visible := True;
    pnlLargeMenu.Visible := True;
  end;
end;

procedure TFrm_AdminMap01.btnSearchClick(Sender: TObject);
Var mGroup : IXPOIGroup;
begin
  if Not GB_365System then	proc_AutoSearchStop;

	sl_WKInfo.Clear;
	sl_WKInfo_Status.Clear;
		
	sl_Info_WKName.Clear;
	sl_Info_WKContents.Clear;

	sl_T_WKInfo.Clear;
	sl_T_WKInfo_Status.Clear;
		
	sl_T_Info_WKName.Clear;
	sl_T_Info_WKContents.Clear;

	sl_GongUSlip.Clear;
	sl_GongUContens.Clear;

	sl_STInfo.Clear;
	sl_STInfo_Status.Clear;

	mGroup := mPoiman.FindGroup(1);
	if mGroup <> nil then mGroup.ClearItem;
	mGroup := mPoiman.FindGroup(2);
	if mGroup <> nil then mGroup.ClearItem;
	mGroup := mPoiman.FindGroup(80);
	if mGroup <> nil then mGroup.ClearItem;
	mGroup := mPoiman.FindGroup(90);
	if mGroup <> nil then mGroup.ClearItem;

  if ( Not cxCEdt.Visible ) And ( Not GB_365System ) then
  begin
  	cb_UpDate.ItemIndex := 0;
	  tmr_dis.Enabled := False;
  	cxCEdt.Value := 0; // 갱신시간 카운트.
  end;

	AutoFlag := False;
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
	gSearchOption := '';
	proc_Search;
end;

procedure TFrm_AdminMap01.pWorkerSearch;
var
  Lon_P, Lat_P : Integer;
  c_Point : TalMapXLib_TLB.IXPoint;
	AAutoSearch, ASearchYn, sTmp : string;
begin
	WK_KEYKIND := '';
  WK_KEYWORD := '';

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

	if chkWorkerSch.Checked then ASearchYn := 'y'
                          else ASearchYn := 'n';

	if ( chkAttendA.Checked ) And ( chkAttendB.Checked ) then WK_ATTEND := '00' else
  if ( chkAttendA.Checked ) And ( Not chkAttendB.Checked ) then WK_ATTEND := 'A2' else
	if ( Not chkAttendA.Checked ) And ( chkAttendB.Checked ) then WK_ATTEND := 'B2' else
  if ( Not chkAttendA.Checked ) And ( Not chkAttendB.Checked ) then WK_ATTEND := '04';

	if chkWKWAITAll.Checked then WK_STATE := '00'
	else
	begin
		if ( chkStateA.Checked ) And ( chkStateB.Checked ) then WK_STATE := 'A0' else
		if ( chkStateA.Checked ) And ( Not chkStateB.Checked ) then WK_STATE := 'A1' else
		if ( Not chkStateA.Checked ) And ( chkStateB.Checked ) then WK_STATE := 'A2' else
		if ( Not chkStateA.Checked ) And ( Not chkStateB.Checked ) then WK_STATE := 'B2' ;
	end;

  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
	c_Point := mCtrlState.GetLLCenter;
	Lon_P := c_Point.GetX; //lon
	Lat_p := c_Point.GetY; //lat

	BesselToWGS84(Lon_P, Lat_p);

  case cb_UpDate.ItemIndex of
	 0 : AAutoSearch := '0';
	 1 : AAutoSearch := '3';
	 2 : AAutoSearch := '5';
	end;

  if chkGongUCall.Checked then ACallSearchYn := 'y'
                          else ACallSearchYn := 'n';

	sTmp := ASearchYn+WK_ATTEND+WK_STATE+WK_TYPE+WK_ATTEND_TIME+WK_KEYKIND+WK_KEYWORD;												
	if rbo_UseNaverMap.Checked then  
	begin
		if gSearchOption <> sTmp then
		begin
			Try
				ExecuteJavaScript(webNaverMap,'RemovePoiMark();');
				sl_WKInfo.Clear;
				sl_WKInfo_Status.Clear;
		
				sl_Info_WKName.Clear;
				sl_Info_WKContents.Clear;

				sl_T_WKInfo.Clear;
				sl_T_WKInfo_Status.Clear;
		
				sl_T_Info_WKName.Clear;
				sl_T_Info_WKContents.Clear;

				sl_GongUSlip.Clear;
				sl_GongUContens.Clear;

				sl_STInfo.Clear;
				sl_STInfo_Status.Clear;
			except
			End;
			Try
				ExecuteJavaScript(webNaverMap,'setArray();');
			except
			End;
		end;
  end;
	gSearchOption := sTmp;
	RequestDataWorker(AAutoSearch, ALastUpdate, ASearchYn, WK_ATTEND, WK_STATE, WK_TYPE, WK_ATTEND_TIME
									, WK_KEYKIND, WK_KEYWORD, '999', '0'+FloatToStr(sw_Lat), FloatToStr(sw_Lon), ACallSearchYn);
end;

procedure TFrm_AdminMap01.proc_Search;
begin
	btnSearch.Enabled := False;
	rbo_UseNaverMap.Enabled := False;
	ClearWkIcon;
	cxViewWkConnect.DataController.SetRecordCount(0);
	if ( chkWorkerSch.Checked ) Or ( chkGongUCall.Checked ) then pWorkerSearch;
	if ChkShuttleSch.Checked then pShuttleSearch;
	btnSearch.Enabled := True;
	rbo_UseNaverMap.Enabled := True;
end;

procedure TFrm_AdminMap01.pShuttleSearch;
var
  Lon_P, Lat_P, iCnt, tmpCnt : Integer;
  c_Point : TalMapXLib_TLB.IXPoint;
	AState, AType : string;
  sBrCd, XmlData, Param, ErrMsg, tmpCntStr, tmpStr, sContent : string;

	TxData: string;
  RxData: msDomDocument;
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
	alat, alon, blat, blon : double;
	fdis : Double;
begin
	SetDebugeWrite('TFrm_AdminMap01.pShuttleSearch');
	Try
		if rbStateSA.Checked then AState := '0' else
		if rbStateSB.Checked then AState := '1' else
		if rbStateSC.Checked then AState := '9' else
		if rbStateSD.Checked then AState := '5';

		if rbWKWAITS5.Checked then AType := '0' else
		if rbWKWAITS6.Checked then AType := '1' else
		if rbWKWAITS7.Checked then AType := '2';

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
//				GMessagebox(Format('셔틀기사현황 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				Log(Format('셔틀기사현황 조회 중 오류발생[공유기사]'#13#10'[%d]%s', [ErrCode, ErrMsg]), LOGDATAPATHFILE);
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

						GetTextSeperationEx(',', StrList.Strings[3], slTmp); // 좌표 밀리초값
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
							iGetID := -1;
							mPoi := Nil;
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
							end	else
							begin
								mPoll := mPoi.GetLonLat;
								BesselToWGS84(mPoll.GetX, mPoll.Gety);

								dTmpLon := StrToFloat(StRec.MAPY) /360000;
								dTmpLat := StrToFloat(StRec.MAPX) /360000;
								sTmpLon := FloatToStr(dTmpLon);
								sTmpLat := FloatToStr(dTmpLat);
						
								if (FloatToStr(sw_Lon) = getWgs84(sTmpLon)) and ('0'+FloatToStr(sw_Lat) = '0'+getWgs84(sTmpLat)) then //이전좌표와 비교하여 변경됐으면 좌표이동
								else
									AddSTIconReady(StRec.MAPX, StRec.MAPY, StRec, iGetID);
							end;
						end else //네이버 지도사용
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
									alat := StrToFloatDef(getDEGREE(StRec.MAPX), 0);
									alon := StrToFloatDef(getDEGREE(StRec.MAPY), 0);
									blat := StrToFloatDef(getDEGREE(StRec.pMAPX), 0);
									blon := StrToFloatDef(getDEGREE(StRec.pMAPY), 0);
									if ( getDist(10, alat, alon, blat, blon, fdis) ) then
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
		end;
	except
		on e: exception do
		begin
			btnSearch.Enabled := True;
			rbo_UseNaverMap.Enabled := True;
			Log('pShuttleSearch Error :' + E.Message, LOGDATAPATHFILE);
			Assert(False, 'pShuttleSearch Error :' + E.Message);
		end;
	end;
end;

procedure TFrm_AdminMap01.AddStIconReady(const AXPos, AYPos: string;
	AWkInfo: TMapStWkInfoRec; iItmiDx : integer);
var
	I, iCaptionLvl : Integer;
	Title, Desc: string;
	itemCount, mAngle : integer;
  mPosLL : TalMapXLib_TLB.IXPoint;
	mGroup : IXPOIGroup;
  mGstyle, mStyle : IXPOIStyle;
	mItem : IXPOIItem;
	statNM : string;
  Pt1, Pt2 : TTmappos;
begin
	try
		if (AWkInfo.MAPX = '0') or (AWkInfo.MAPY='') then Exit;
		mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState();
    mUtil := mMap.GetUtility();
    itemCount := 0;
    mPosLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표

		mGroup := mPoiman.FindGroup(90);
		if mGroup = nil then mGroup := mPoiman.NewGroup(90);

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

  	if ( mCtrlState.GetLevel() < iCaptionLvl ) Or ( GB_365System ) then
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

  	WGS84IntToBessel(AWkInfo.MAPY, AWkInfo.MAPX);
		Pt1.lon := ws_Lon;
		Pt1.lat := ws_Lat;

		if iItmiDx > -1 then       
			mItem := mGroup.FindItem(iItmiDx) //기존 마커 변경
		else
			mItem := mGroup.NewItem(-1);      //마커신규생성

		mItem.SetLonLat(ws_Lon, ws_Lat);

    if ( AWkInfo.pMAPY <> '' ) And ( AWkInfo.pMAPX <> '' ) then
    begin
    	WGS84IntToBessel(AWkInfo.pMAPY, AWkInfo.pMAPX);
    end;
    Pt2.lon := ws_Lon;
		Pt2.lat := ws_Lat;

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
		mItem.SetImageIndex(0);    //셔틀은 이미지 1개
		mItem.SetImageOffset(4);
    mItem.SetTextStyle(StrToInt('0x12'));

    if i mod 2 <> 0 then mItem.SetStyle(mStyle);
    Title := Format('%s - %s', [AWkInfo.BrName, AWkInfo.Name]);
    mItem.SetCaption(Title);
		mItem.SetString(AWkInfo.Sabun);

    if AWkInfo.BR_Type = '1' then
    begin
			//불필요한 정보 제외 20180320 KHS 신성현차장 요청
//			Desc := Format('[%s]'#13#10'%s(%s)'#13#10'%s'#13#10'%s(%s)',
//				[statNM, AWkInfo.Name, AWkInfo.Sabun, AWkInfo.HP, AWkInfo.BrName, AWkInfo.BrNo] );
			Desc := Format('%s', [StrToCall(AWkInfo.HP)] );
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
			//불필요한 정보 제외 20180320 KHS 신성현차장 요청
//        Desc := Format('[%s]%s%s(%s)', [statNM, AWkInfo.BrName, AWkInfo.Name, AWkInfo.Sabun] );
//        mItem.SetContents(Desc);
			end;
    end;

    mItem.SetAnimation(200); // 1초 단위
		mItem.SetSyncAngle(1);
		mAngle := 0;
    if (Pt1.lon >0) and (Pt1.lat >0) and (Pt2.lon >0) and (Pt2.lat >0) then
			mAngle := Trunc(Angle(Pt1, Pt2)) + 90;
    mItem.SetAngle(mAngle);
		mItem.SetAlpha(100);

		mAngle := mAngle + 10;
		if(mAngle > 360) then mAngle := 0;

	except
		btnSearch.Enabled := True;
		rbo_UseNaverMap.Enabled := True;
	end;
end;

function TFrm_AdminMap01.Angle(Pt1, Pt2: TTmappos): Double;
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

function TFrm_AdminMap01.SK_GetAngleFromLine(pt1, pt2: TPoint): Double;
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

procedure TFrm_AdminMap01.WkSearch(aRound: string);
var
	AAutoSearch, ASearchYn: string;
begin
  WK_KEYKIND := '';
  WK_KEYWORD := '';

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

  // 거리제한 조회시에는 기사 및 공유콜 현황 조회 같이 가능하게 처리
  ASearchYn := 'y';
  ACallSearchYn := 'y';

  if ( chkAttendA.Checked ) And ( chkAttendB.Checked ) then WK_ATTEND := '00' else
  if ( chkAttendA.Checked ) And ( Not chkAttendB.Checked ) then WK_ATTEND := 'A2' else
  if ( Not chkAttendA.Checked ) And ( chkAttendB.Checked ) then WK_ATTEND := 'B2' else
  if ( Not chkAttendA.Checked ) And ( Not chkAttendB.Checked ) then WK_ATTEND := '04';

	if chkWKWAITAll.Checked then WK_STATE := '00'
	else
	begin
		if ( chkStateA.Checked ) And ( chkStateB.Checked ) then WK_STATE := 'A0' else
		if ( chkStateA.Checked ) And ( Not chkStateB.Checked ) then WK_STATE := 'A1' else
		if ( Not chkStateA.Checked ) And ( chkStateB.Checked ) then WK_STATE := 'A2' else
		if ( Not chkStateA.Checked ) And ( Not chkStateB.Checked ) then WK_STATE := 'B2' ;
	end;

	BesselToWGS84(m_Lon, m_Lat);   // 마우스 클릭 위치 기준

	case cb_UpDate.ItemIndex of
	 0 : AAutoSearch := '0';
	 1 : AAutoSearch := '3';
	 2 : AAutoSearch := '5';
	end;

	RequestDataWorker(AAutoSearch, ALastUpdate, ASearchYn, WK_ATTEND, WK_STATE, WK_TYPE, WK_ATTEND_TIME
									, WK_KEYKIND, WK_KEYWORD, aRound, '0'+FloatToStr(sw_Lat), FloatToStr(sw_Lon), ACallSearchYn);
end;

procedure TFrm_AdminMap01.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Transparent := False;
end;

procedure TFrm_AdminMap01.FormClose(Sender: TObject; var Action: TCloseAction);
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

	if Assigned(sl_WKInfo) then FreeAndNil(sl_WKInfo);
	if Assigned(sl_WKInfo_Status) then FreeAndNil(sl_WKInfo_Status);
	
	if Assigned(sl_Info_WKName) then FreeAndNil(sl_Info_WKName);
	if Assigned(sl_Info_WKContents) then FreeAndNil(sl_Info_WKContents);

	if Assigned(sl_T_WKInfo) then FreeAndNil(sl_T_WKInfo);
	if Assigned(sl_T_WKInfo_Status) then FreeAndNil(sl_T_WKInfo_Status);
	
	if Assigned(sl_T_Info_WKName) then FreeAndNil(sl_T_Info_WKName);
	if Assigned(sl_T_Info_WKContents) then FreeAndNil(sl_T_Info_WKContents);

	if Assigned(sl_GongUSlip) then FreeAndNil(sl_GongUSlip);
	if Assigned(sl_GongUContens) then FreeAndNil(sl_GongUContens);

	if Assigned(sl_STInfo) then FreeAndNil(sl_STInfo);
	if Assigned(sl_STInfo_Status) then FreeAndNil(sl_STInfo_Status);

//	sts_Chk := False;
	cb_UpDate.ItemIndex := 0;
  Action := caFree;
end;

procedure TFrm_AdminMap01.FormCreate(Sender: TObject);
begin
	sts_Chk := False;
	CreateObj;
	AdminMapSet;
end;

procedure TFrm_AdminMap01.AdminMapSet;
begin
  if GS_ADMINMAP_WKCON1 then chkAttendA.Checked := True;
  if GS_ADMINMAP_WKCON2 then chkAttendB.Checked := True;
	if GS_ADMINMAP_WKCON3 then chkStateA.Checked := True;
  if GS_ADMINMAP_WKCON4 then chkStateB.Checked := True;

	WK_ATTEND := '00';
	WK_STATE  := '00';
	WK_ATTEND_TIME := '';
	cb_UpDate.ItemIndex := 0;

  //  횡계365 A5518 / 대관령365 A5519   이명재대리요청 2021.02.10
  if ( GS_PRJ_AREA = 'S' ) And ((GT_USERIF.HD = 'A5518') Or (GT_USERIF.HD = 'A5519')) then
  begin
    GS_ADMINMAP_CHK := '1'; // 자기사만 조회 가능
    rbWKWAIT5.Visible := False;
    rbWKWAIT7.Visible := False;
  end;

  if GS_ADMINMAP_CHK = '0' then
  begin
    rbWKWAIT5.Checked := True;
    WK_TYPE := '0';
  end else
  if GS_ADMINMAP_CHK = '1' then
  begin
    rbWKWAIT6.Checked := True;
    WK_TYPE := '1';
  end else
  if GS_ADMINMAP_CHK = '2' then
  begin
    rbWKWAIT7.Checked := True;
    WK_TYPE := '2';
  end;
end;

procedure TFrm_AdminMap01.FormResize(Sender: TObject);
begin
  if sts_Chk then
  begin
    DestroyUI;
    CreateLevelBar;
    CreateToolBarUI;
  end;
end;

procedure TFrm_AdminMap01.DestroyUI;
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

procedure TFrm_AdminMap01.Set0201Style;
var
	mImageman : IXImageMan;
begin
	try
			// Step 3. Make POI Items
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		R0201 := mImageman.LoadImageList('Run', 'Run1.png',35,35 );
		if Not R0201.IsValid then ShowMessage('Run1Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.Set0202Style;
var
	mImageman : IXImageMan;
begin
	try
		// Step 3. Make POI Items
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		R0202 := mImageman.LoadImageList('Run2', 'Run2.png',35,35 );
		if Not R0202.IsValid then ShowMessage('Run2Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.SetA101Style;
var
	mImageman : IXImageMan;
begin
	try
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		A101 := mImageman.LoadImageList('m0101', 'm0101.png',35,35 );
		if Not A101.IsValid then ShowMessage('m0101Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.SetA102Style;
var
	mImageman : IXImageMan;
begin
	try
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		A102 := mImageman.LoadImageList('m0102', 'm0102.png',35,35 );
		if Not A102.IsValid then ShowMessage('m0102Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.SetA201Style;
var
	mImageman : IXImageMan;
begin
	try
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		A201 := mImageman.LoadImageList('m0201', 'm0201.png',35,35 );
		if Not A201.IsValid then ShowMessage('m0201Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.SetA202Style;
var
	mImageman : IXImageMan;
begin
	try
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		A202 := mImageman.LoadImageList('m0202', 'm0202.png',35,35 );
		if Not A202.IsValid then ShowMessage('m0202Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.SetB201Style;
var
	mImageman : IXImageMan;
begin
	try
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		B201 := mImageman.LoadImageList('m0001', 'm0001.png',35,35 );
		if Not B201.IsValid then ShowMessage('m0001Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.SetB202Style;
var
	mImageman : IXImageMan;
begin
	try
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		B202 := mImageman.LoadImageList('m0002', 'm0002.png',35,35 );
		if Not B202.IsValid then ShowMessage('m0002Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.Sets0001Style;
var
	mImageman : IXImageMan;
begin
	try
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		s0001 := mImageman.LoadImageList('s0001', 's0001.png',18,41);
		if Not s0001.IsValid then ShowMessage('s0001Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.Sets0002Style;
var
	mImageman : IXImageMan;
begin
	try
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		s0002 := mImageman.LoadImageList('s0002', 's0002.png',18,41);
		if Not s0002.IsValid then ShowMessage('s0002Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.Sets0101Style;
var
	mImageman : IXImageMan;
begin
	try
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		s0101 := mImageman.LoadImageList('s0101', 's0101.png',17,31);
		if Not s0101.IsValid then ShowMessage('s0101Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.Sets0102Style;
var
	mImageman : IXImageMan;
begin
	try
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		s0102 := mImageman.LoadImageList('s0102', 's0102.png',17,31);
		if Not s0102.IsValid then ShowMessage('s0102Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.Sets0201Style;
var
	mImageman : IXImageMan;
begin
	try
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		s0201 := mImageman.LoadImageList('s0201', 's0201.png',17,31);
		if Not s0201.IsValid then ShowMessage('s0201Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.Sets0202Style;
var
	mImageman : IXImageMan;
begin
	try
		mImageman := mCtrlMan.GetImageMan();
		mImageman.SetDefaultPath(mRootPath + '\Image\');
		s0202 := mImageman.LoadImageList('s0202', 's0202.png',17,31);
		if Not s0202.IsValid then ShowMessage('s0202Image 이상');
	except
	end;
end;

procedure TFrm_AdminMap01.setSTPoiMark(aLat, aLon: String;
  AWkInfo: TMapStWkInfoRec);
var
	Title, Desc: string;
	statNM, sPLat, sPLon : string;
	aWkName, aWkSabun, aContents, aGubun : string;
begin
	try
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
//		Log('현재좌표 : ' + aLat + '|' +  aLon, LOGDATAPATHFILE);
		if pos('.', AWkInfo.pMAPY) > 0 then
		begin
			sPLat := AWkInfo.pMAPX;
			sPLon := AWkInfo.pMAPY;
		end	else
		begin
			sPLat := SetWGS84(AWkInfo.pMAPX);
			sPLon := SetWGS84(AWkInfo.pMAPY);
		end;
//		Log('이전좌표 : ' + sPLat + '|' +  sPLon, LOGDATAPATHFILE);

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

		Title := Format('%s - %s', [AWkInfo.BrName, AWkInfo.Name]);

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
		End;
	except
		btnSearch.Enabled := True;
		rbo_UseNaverMap.Enabled := True;
	end;  
end;

procedure TFrm_AdminMap01.setWkPoiMark(aLat, aLon: String;
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
		end else
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
			end else
			if (AWkInfo.Con_State = 'B2') and (AWkInfo.BR_Type = '2') then
			begin
				aGubun := 'm0002';
				statNM := '미접속-타사';
			end else
			if (AWkInfo.Con_State = 'A1') and (AWkInfo.BR_Type = '1') then
			begin
				aGubun := 'm0101';
				statNM := '단순접속-자사';
			end else
			if (AWkInfo.Con_State = 'A1') and (AWkInfo.BR_Type = '2') then
			begin
				aGubun := 'm0102';
				statNM := '단순접속-타사';
			end else
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
		end else
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
		end	else
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
			end	else
			begin
			//불필요한 정보 제외 20180320 KHS 신성현차장 요청
//				Desc := Format('[%s]%s%s[%s](%s)', [statNM, AWkInfo.BrName, AWkInfo.Name, StrToCall(AWkInfo.HP), AWkInfo.Sabun] );
//				mItem.SetContents(Desc);
			end;
		end;
		mAngle := mAngle + 10;
		if(mAngle > 360) then mAngle := 0;
	except
		btnSearch.Enabled := True;
		rbo_UseNaverMap.Enabled := True;
	end;

	Try
		ExecuteJavaScript(webNaverMap,'setWkPoiMark('+InttoStr(4)+','+ aLat +','+ aLon +','''+ aWkName +''','''+ aWkSabun +''','''+ aContents +''','''+ aGubun +''');');
//		ExecuteJavaScript(webNaverMap,'setWkPoiMark('+ aLat +','+ aLon +','''+ aGubun +''');');
	except
		btnSearch.Enabled := True;
		rbo_UseNaverMap.Enabled := True;
	End;
end;

procedure TFrm_AdminMap01.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Transparent := True;
end;

procedure TFrm_AdminMap01.FormDestroy(Sender: TObject);
begin
	FreeAndNil(FRoutePoint.lon);
	FreeAndNil(FRoutePoint.lat);
  FreeAndNil(FRoutePoint.Idx);
	mMap.Free;
//	if Assigned(mMap) then FreeAndNil(mMap);
  Frm_AdminMap01 := Nil;
end;

procedure TFrm_AdminMap01.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Home then
		SendMessage(self.Handle, WM_SYSCOMMAND, SC_MINIMIZE, 0 );
end;

procedure TFrm_AdminMap01.cb_UpDateClick(Sender: TObject);
var
	iCnt: integer;
begin
	try
    case cb_UpDate.ItemIndex of
			0:
        begin
					cxCEdt.Value := 0;
					cxCEdt.Visible := False;
					btnSearch.Enabled := True;
					AutoFlag := False;

          tmr_dis.Enabled := (cb_UpDate.ItemIndex > 0);
        end;
		else
      begin
				iCnt := StrToIntDef(Trim(Copy(cb_UpDate.Text, 1, 3)), 0);
				if iCnt > 0 then
				begin
					cxCEdt.Value := iCnt; // 갱신시간 카운트.
					cxCEdt.Visible := True;

					tmr_dis.Enabled := (cb_UpDate.ItemIndex > 0);
        end else
				begin
					if cb_UpDate.ItemIndex <> 0 then
						cb_UpDate.ItemIndex := 0;
        end;

        case cb_UpDate.ItemIndex of
					1: tmr_dis.Interval := 1500;
					2: tmr_dis.Interval := 1800;
				else
					tmr_dis.Interval := 1300;
				end;
      end;
    end;
    if cxCEdt.Visible = True then
    begin
      cxCEdt.SetFocus;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_AdminMap01.tmrDongPolygonTimer(Sender: TObject);
begin
  tmrDongPolygon.Enabled := False;
  pMapDongPolygon(gMapX, gMapY);
end;

procedure TFrm_AdminMap01.pMapDongPolygon( X, Y : Integer );
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

procedure TFrm_AdminMap01.tmr_disTimer(Sender: TObject);
begin
	try
    if (cb_UpDate.ItemIndex = 0) then
		begin
			tmr_dis.Enabled := False;
			cxCEdt.Value := 0; // 갱신시간 카운트.
      Exit;
		end;

		cxCEdt.Value := cxCEdt.Value - 1; // 갱신시간 카운트.
		if cxCEdt.Value < 0 then
			cxCEdt.Value := StrToIntDef(Trim(Copy(cb_UpDate.Text, 1, 3)), 30);

		if cxCEdt.Value = 0 then
		begin
			proc_Search;
			//최초 1회는 프로그레스 뛰움
			AutoFlag := True;
			//btnSearchClick(nil);
			tmr_dis.Enabled := True;
      cxCEdt.Value := 0;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_AdminMap01.rbo_UseNaverMapPropertiesChange(Sender: TObject);
begin
	proc_AutoSearchStop;
	if rbo_UseNaverMap.Checked then
	begin
		pnl_TalMap.Visible := False;
		pnl_NaverMap.Visible := True;
	end	else
	begin
		pnl_TalMap.Visible := True;
		pnl_NaverMap.Visible := False;
	end;

	if not bNaverFirst then
		trm_Naver.Enabled := True;
	bNaverFirst := True;
end;

procedure TFrm_AdminMap01.rbWKWAIT5Click(Sender: TObject);
begin
  WK_TYPE := '0';
end;

procedure TFrm_AdminMap01.rbWKWAIT6Click(Sender: TObject);
begin
  WK_TYPE := '1';
end;

procedure TFrm_AdminMap01.rbWKWAIT7Click(Sender: TObject);
begin
  WK_TYPE := '2';
end;

procedure TFrm_AdminMap01.Mark_Symbol(Lon, Lat, index: Integer; AId, ATime, Aname : string);
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
			mGroup := mPoiman.FindGroup(99); //99.이동 방향
      if mGroup = nil then mGroup := mPoiman.NewGroup(99);

      mGstyle := mPoiman.FindStyle(1);
      if (mGstyle = nil) then
      begin
//        mGstyle := mPoiman.NewStyle(StrToInt(Aid)); // -1: 아이디 자동 생성
        mGstyle := mPoiman.NewStyle(1); // -1: 아이디 자동 생성
        mGroup.SetStyle(mGstyle);
      end;

      if Not mImage.IsValid then ShowMessage('Image 이상');

      mItem := mGroup.NewItem(StrToInt(Aid)) ;
      mItem.SetCaption('[' + Aid + ']');//+ATime);
      mItem.SetContents(Aname);
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
        mStyle := mPoiman.NewStyle(-1);
        mStyle.SetGDIFont(GS_FONTNAME, 0, 9);
        mStyle.SetFontColor(mUtil.RGBColor(0, 0, 0));
        mStyle.SetFontOutColor(mUtil.RGBColor(255, 255, 255));
        mStyle.SetBrush(mUtil.RGBColor(251, 249, 250), 0);
        mStyle.SetPen(mUtil.RGBColor(185, 183, 186), 1, 0);
        mItem.SetStyle(mStyle);
      end;
      mItem.SetSyncAngle(1);
      if (Pt1.lon >0) and (Pt1.lat >0) and (Pt2.lon >0) and (Pt2.lat >0) and ( StrToInt(Aid) > 1 ) then
				mAngle := Trunc(Angle(Pt1, Pt2)) + 180 ;
      mItem.SetAngle(mAngle);
      mItem.SetAlpha(100);
		end else
    if index = 3 then
		begin
		end else
    if index = 4 then
		begin
		end else
    if index = 5 then
		begin
		end else
    if index = 6 then
		begin
		end else
    if index = 9 then
    begin
			mImage := mImageman.LoadImageList('Spoint','SelectPoint.png', 24, 30);
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
      mItem.SetCaption(Aname);
      mItem.SetSyncAngle(1);
      mItem.SetAngle(mAngle);
      mItem.SetAlpha(100);

      mAngle := mAngle + 10;
      if(mAngle > 360) then mAngle := 0;
    end;
    if Not mImage.IsValid then ShowMessage('Image 이상');
	except
		btnSearch.Enabled := True;
		rbo_UseNaverMap.Enabled := True;
  end;
end;

end.

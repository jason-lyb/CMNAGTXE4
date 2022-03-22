unit xe_JON56;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TalMapXLib_TLB, cxGraphics, cxControls, MSXML2_TLB,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.OleCtrls, Vcl.ExtCtrls, cxCheckBox,
  Vcl.StdCtrls, cxRadioGroup, cxTextEdit, cxLabel, cxButtons, cxGroupBox,
  cxMemo, dxGDIPlusClasses, cxMaskEdit, cxDropDownEdit, System.Win.ScktComp, System.Math,
  AdvGlowButton, dxSkinsCore, cxStyles, System.StrUtils,
	dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,System.DateUtils,
  cxNavigator, Data.DB, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ComCtrls, dxCore, cxDateUtils, cxSplitter,
	cxCalendar, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver,
  dxScrollbarAnnotations;

type
  TFrm_JON56 = class(TForm)
    CSMsn: TClientSocket;
    BtnClose: TcxButton;
    TT3: TTimer;
    TT3_1: TTimer;
		pnlTitle: TPanel;
    cxLblActive: TLabel;
    cxButton1: TcxButton;
    Panel1: TPanel;
		Panel2: TPanel;
		pnlPoiSearch: TcxGroupBox;
    pnlSearch: TPanel;
    edtPoi: TcxTextEdit;
    cxLabel1: TcxLabel;
    btnPOISearch: TcxButton;
    cbbSido: TcxComboBox;
    cbbDong: TcxComboBox;
    cbbGugun: TcxComboBox;
    cxLabel3: TcxLabel;
    edtBunji: TcxTextEdit;
    cxLabel4: TcxLabel;
    pnlList: TPanel;
    cxGrid3: TcxGrid;
		cxViewPOI: TcxGridDBTableView;
		cxViewPOIColumn1: TcxGridDBColumn;
    cxViewPOIColumn2: TcxGridDBColumn;
    cxViewPOIColumn3: TcxGridDBColumn;
    cxViewPOIColumn4: TcxGridDBColumn;
    cxViewPOIColumn5: TcxGridDBColumn;
    cxViewPOIColumn6: TcxGridDBColumn;
    cxViewPOIColumn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGbCTI: TcxGroupBox;
    cxLabel17: TcxLabel;
    cb_POITYPE: TcxComboBox;
    cxLabel2: TcxLabel;
    lb_Addr_B: TcxLabel;
    lb_Addr_H: TcxLabel;
    cxLabel5: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxMemo1: TcxMemo;
    edt_ADDPOI_X: TcxTextEdit;
    edt_ADDPOI_Y: TcxTextEdit;
    cxLabel22: TcxLabel;
    cb_00: TAdvGlowButton;
    lb_MapGubun: TcxTextEdit;
    lb_DONG_B: TcxTextEdit;
    lb_GU_B: TcxTextEdit;
    lb_SIDO_B: TcxTextEdit;
    lb_SIDO_H: TcxTextEdit;
    lb_GU_H: TcxTextEdit;
    lb_DONG_H: TcxTextEdit;
    lb_POITYPE: TcxLabel;
    btn_POISAVE: TcxButton;
    Panel3: TPanel;
    mMap: TTalMapXCtrl;
    btnSearch: TcxButton;
    pmMark: TPopupMenu;
    N1: TMenuItem;
    lb_DocID: TcxTextEdit;
    pnl_POINAME: TPanel;
    edt_POINAME: TcxTextEdit;
    Pnl_List: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    cxLabel6: TcxLabel;
    btnPOIListSearch: TcxButton;
    cb_State: TcxComboBox;
    cxLabel8: TcxLabel;
    cxDtStartA1: TcxDateEdit;
    cxLabel75: TcxLabel;
    Shape3: TShape;
    cxDtEndA1: TcxDateEdit;
    splAcceptMap: TcxSplitter;
    cxGrid1: TcxGrid;
		cxViewPOI2: TcxGridDBTableView;
		cxViewPOI2Column1: TcxGridDBColumn;
    cxViewPOI2Column17: TcxGridDBColumn;
    cxViewPOI2Column18: TcxGridDBColumn;
    cxViewPOI2Column6: TcxGridDBColumn;
    cxViewPOI2Column7: TcxGridDBColumn;
    cxViewPOI2Column8: TcxGridDBColumn;
    cxViewPOI2Column9: TcxGridDBColumn;
    cxViewPOI2Column10: TcxGridDBColumn;
    cxViewPOI2Column11: TcxGridDBColumn;
    cxViewPOI2Column12: TcxGridDBColumn;
    cxViewPOI2Column13: TcxGridDBColumn;
    cxViewPOI2Column14: TcxGridDBColumn;
    cxViewPOI2Column15: TcxGridDBColumn;
    cxViewPOI2Column4: TcxGridDBColumn;
    cxViewPOI2Column16: TcxGridDBColumn;
    cxViewPOI2Column5: TcxGridDBColumn;
    cxViewPOI2Column2: TcxGridDBColumn;
    cxViewPOI2Column3: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxLabel7: TcxLabel;
    cb_Gubun: TcxComboBox;
    btnPcSave: TcxButton;
    btn_List: TcxButton;
    procedure mMapCreate(ASender: TObject; Value: Integer);
    function GetAdminCodeF(GLon, GLot : Integer) : string;
    function GetAddrH(GLon, GLot : Integer) : string;
    procedure GeneralInit;
    procedure FormCreate(Sender: TObject);
    procedure mMapStateChange(ASender: TObject; Code, Value1, Value2: Integer);
    procedure FormResize(Sender: TObject);
    procedure CSMsnRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure CSMsnError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure mMapClickNotify(ASender: TObject; Type_, X, Y: Integer);
    procedure cxCheckBox1Click(Sender: TObject);
		procedure cb_00Click(Sender: TObject);
    procedure pnlCTISetting1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_POISAVEClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure CSMsnConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure btnPOISearchClick(Sender: TObject);
    procedure TT3Timer(Sender: TObject);
		procedure TT3_1Timer(Sender: TObject);
		procedure cxViewPOICellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edtPoiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlPoiSearchExit(Sender: TObject);
    procedure cbbSidoClick(Sender: TObject);
    procedure edtBunjiKeyPress(Sender: TObject; var Key: Char);
    procedure btnSearchClick(Sender: TObject);
    procedure cbbSidoPropertiesChange(Sender: TObject);
    procedure cbbGugunPropertiesChange(Sender: TObject);
    procedure cbbDongPropertiesChange(Sender: TObject);
    procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N1Click(Sender: TObject);
    procedure pmMarkPopup(Sender: TObject);
    procedure mMapMouseDown(ASender: TObject; Flag, X, Y: Integer);
		procedure mMapMouseUp(ASender: TObject; Flag, X, Y: Integer);
    procedure cb_POITYPEPropertiesChange(Sender: TObject);
    procedure btn_ListClick(Sender: TObject);
		procedure btnPOIListSearchClick(Sender: TObject);
    procedure cb_StateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDtStartA1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDtEndA1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_GubunKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxViewPOI2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure btnPcSaveClick(Sender: TObject);
    procedure cxMemo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure mMapMouseMove(ASender: TObject; Flag, X, Y: Integer);
  private
    { Private declarations }
    maxLogicalLevel, minLogicalLevel : Integer;
		FLon, FLat : Integer;
    ss_Lon, ss_Lat : integer;
		sw_Lon, sw_Lat : Double;
    sts_Chk : Boolean;
    piCSocketSize1: Cardinal; // 소켓 데이터 사이즈..
    GS_SendMsg, GS_ReadMsg : TStringList;

		mCtrlMan : IXCtrlMan;
    mUiman : IXUIMan;
    mDpsize : IXSize;
		mUtil : IXUtility;
		mPoiman : IXPOIMan;
	  mLayerman : IXLayerMan;
		mBtnLevle : array [0..12] of IXUIButton;

		stcMsgAreaL: IXUIStaticText;

		sRanDom : String;
    sSAPoiName : String;
    lsPOISvrIP : String;

    FInit: Boolean;
    timeMouseDown, timeMouseUp : TDateTime;
		function SetCtrlState(setType : Integer):Integer;
    procedure CreateLevelBar;
    procedure MakeStatusbar;
    procedure MapLevel_Master(level : INTEGER);
    procedure CreateObj;
    procedure DestroyUI;
    procedure SocketSend(ss_SendText: TStringList; socket: TClientSocket);
		function  fChange_Poi_Do( vSido : String ) : String;
		function  fReplace_Poi_Do( vAddr : String ) : String;
    function CallClickNotify(iType : integer) : Boolean;
    function proc_Wisenut_GetPOI(word: string) : Boolean;    //advstring2
    function proc_Wisenut_GetPOILast( wURL, word : String ) : Boolean;
    function proc_Wisenut_GetPOI_Proc(wURL, word : string ) : Boolean;
    function D_HightlightTXT(HTEXT : String): String;
    function  proc_WGSToBessel(bPOI : boolean; sCity, sX, sY: string; var sRCity, sKm : string) : string;
    function M_ParseTXT(tText : String): string;
    function  DistCalc(sx, sy, ex, ey : string) : string ;

    function SetWGS84(idata : string) : string;


		function RequestDataBase(ATxData: string; var ARxDataDom: msDomDocument): Boolean;
		procedure RequestDataArea(AcxComboGugun, AcxComboDong: TcxComboBox; const ASido: string; AGugun: string; AUseAll: Boolean);
		procedure RequestDataAddr(const ASido, AGugun, ADong, ANo: string);
		procedure ClearDongList(AcxCombo: TcxComboBox);
		function Map_SetLevel(level : Integer) : Integer;

		procedure MarkPoint;
	public
		{ Public declarations }
		mCtrlState : IXMasterControlState;
		ws_Lon, ws_Lat : integer;
		procedure proc_init(iType : integer=0);
		procedure OnMoveMap(lon, lat : INTEGER);
		procedure ClearADDPOI;
		procedure Mark_Symbol(Lon, Lat, index : Integer; sCaption, sTitle, sKey : String);
		function BesselToWGS84(Y_1, x_1 : double) : integer;
		function WGS84ToBessel(Y_1, x_1 : string) : integer;
		procedure GetJibunAddr;
		procedure MakeMSGBox;
    procedure cp_Naver;
	published
    procedure cp_200(Data: string);
  end;

var
  Frm_JON56: TFrm_JON56;

implementation

uses
  xe_gnl, xe_gnl2, xe_JON30, xe_Func, Main, xe_xml, xe_Dm, xe_msg, uLkJSON, xe_JON01WNThread,
  xe_Flash, xe_packet;
{$R *.dfm}

//------- 동 검색 결과 배열변수 초기화.
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

function TFrm_JON56.BesselToWGS84(Y_1, x_1: double): integer;
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

procedure TFrm_JON56.BtnCloseClick(Sender: TObject);
begin
	hide;
//  btn_Close.Click;
end;

procedure TFrm_JON56.btnPcSaveClick(Sender: TObject);
var
	st_List, slTmp: TStringList;
  sTemp, sTemp1, sPOI: string;
begin
	SetDebugeWrite('Frm_JON56.btnPcSaveClick');
	st_List := TStringList.Create;
  try
    st_List.Clear;
		sTemp := StringReplace(edt_POINAME.Text, ' ', '', [rfReplaceAll]);  // 공백제거후 저장  20130514 LYB

		if pos('#', sTemp) > 0 then
			sTemp := copy(sTemp, pos('#', sTemp) + 1, length(sTemp) - pos('#', sTemp));
		if pos(']', sTemp) > 0 then
			sTemp := copy(sTemp, pos(']', sTemp) + 1, length(sTemp) - pos(']', sTemp));
		if pos('$', sTemp) > 0 then
			sTemp := copy(sTemp, pos('$', sTemp) + 1, length(sTemp) - pos('$', sTemp));
		if pos('-', sTemp) > 0 then
			sTemp := copy(sTemp, pos('-', sTemp) + 1, length(sTemp) - pos('-', sTemp));

		slTmp := TStringList.Create;
		Try
			GetTextSeperationEx2(' ', lb_Addr_H.Caption, slTmp);
			if slTmp.count <> 3 then
			begin
				GMessagebox('행정동 정보가 정확하지 않습니다.' + #13#10 +'요청위치를 정확히 선택하여 주십시오.', CDMSE);
				slTmp.Free;

				exit;
			end;
		Except
			slTmp.Free;
		End;
		lb_SIDO_H.Text := slTmp[0];
		lb_GU_H.Text   := slTmp[1];
		lb_DONG_H.Text := slTmp[2];
		sTemp1 := Trim(lb_SIDO_H.Text) + '|' + Trim(lb_GU_H.Text) + '|' + Trim(lb_DONG_H.Text) + '|' + sTemp
					 + '|' + '' + '|' + edt_ADDPOI_X.Text + '|' + edt_ADDPOI_Y.Text;


		if FileExists(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT') then
			st_List.LoadFromFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');

		sPOI := sTemp1 + '|' + '999';    // 20130508  LYB 수정  로컬 저장 후 mySQL변환시 저장 안되는 문제 해결

    if st_List.IndexOf(sPOI) < 0 then
    begin
      st_List.Add(sPOI);
			GT_MAPLocal.slCity.Add(lb_SIDO_H.Text); // 시도
			GT_MAPLocal.slWard.Add(lb_GU_H.Text); // 시군구
			GT_MAPLocal.slStre.Add(lb_DONG_H.Text); // 읍면동
			GT_MAPLocal.slSSub.Add(sTemp); // 세부지명
			GT_MAPLocal.slSPOI.Add(''); // 인근POI
			GT_MAPLocal.slMapX.Add(edt_ADDPOI_X.Text); // X 좌표
			GT_MAPLocal.slMapY.Add(edt_ADDPOI_Y.Text); // Y 좌표
			GMessagebox('해당위치의 세부지역정보가 저장 되었습니다.', CDMSI)
		end else
		begin
			st_list.Delete(st_List.IndexOf(sPOI));
			st_List.Add(sPOI);
			GMessagebox('동일한 위치와 명칭의 POI가 이미 등록되어 있습니다.', CDMSE)
		end;
		st_List.SaveToFile(DBDIRECTORY + 'LOCAL_MAP_NEW.DAT');
	finally
		FreeAndNil(st_List);
	end;
end;

procedure TFrm_JON56.btnPOIListSearchClick(Sender: TObject);
var
  XmlData, Param, ErrMsg, ls_MSG_Err : string;
  ErrCode, iRow, i : Integer;
  xdom: msDomDocument;
	lst_Result : IXMLDomNodeList;
	ls_Rcrd, slList : TStringList;
	sTmp : string;
	j : integer;
begin
	if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := GT_SEL_BRNO.HDNO
  else
    Param := GT_USERIF.HD;

	Param := Param + '│' + formatdatetime('yyyymmdd', cxDtStartA1.Date);
	Param := Param + '│' + formatdatetime('yyyymmdd', cxDtEndA1.Date);
	if cb_State.itemIndex = 0 then sTmp := '' else sTmp := IntToStr(cb_State.itemIndex-1); 
	Param := Param + '│' + sTmp;
	if cb_Gubun.itemIndex = 0 then sTmp := '' else sTmp := IntToStr(cb_Gubun.itemIndex-1); 
	Param := Param + '│' + sTmp;


	try
		slList := TStringList.Create;
		try
			if not RequestBasePaging(GetSel06('GET_POI_LIST', 'MNG.GET_POI_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('POI요청 리스트 오류'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSE);
				FreeAndNil(slList);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			try
				Frm_Flash.cxPBar1.Properties.Max := slList.Count;
				Frm_Flash.cxPBar1.Position := 0;
				cxViewPOI2.DataController.SetRecordCount(0);
				cxViewPOI2.BeginUpdate;
				for j := 0 to slList.Count - 1 do
				begin
					Frm_Flash.cxPBar1.Position := j + 1;
					Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
					Application.ProcessMessages;
					xmlData := slList.Strings[j];
					xdom.loadXML(XmlData);

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
									GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
									Application.ProcessMessages;

							iRow := cxViewPOI2.DataController.AppendRecord; // 1 Record 추가

									cxViewPOI2.DataController.Values[iRow,  0] := iRow + 1;
									cxViewPOI2.DataController.Values[iRow,  1] := GetStrToDateTimeGStr(ls_Rcrd[13], 3);   //요청일자
									cxViewPOI2.DataController.Values[iRow,  2] := ls_Rcrd[14];    //요청자
									cxViewPOI2.DataController.Values[iRow,  3] := ls_Rcrd[10];    //POI구분
									cxViewPOI2.DataController.Values[iRow,  4] := ls_Rcrd[12];    //POI상태
									cxViewPOI2.DataController.Values[iRow,  5] := ls_Rcrd[ 2];    //시도(법)
									cxViewPOI2.DataController.Values[iRow,  6] := ls_Rcrd[ 3];    //시군구(법)
									cxViewPOI2.DataController.Values[iRow,  7] := ls_Rcrd[ 4];    //읍면동(법)
									cxViewPOI2.DataController.Values[iRow,  8] := ls_Rcrd[ 2];    //시도(법)
									cxViewPOI2.DataController.Values[iRow,  9] := ls_Rcrd[ 3];    //시군구(법)
									cxViewPOI2.DataController.Values[iRow, 10] := ls_Rcrd[ 5];    //읍며면동(행)
									cxViewPOI2.DataController.Values[iRow, 11] := ls_Rcrd[ 6];    //POI명
									cxViewPOI2.DataController.Values[iRow, 12] := ls_Rcrd[ 7];    //좌표X
									cxViewPOI2.DataController.Values[iRow, 13] := ls_Rcrd[ 8];    //좌표Y
									cxViewPOI2.DataController.Values[iRow, 14] := ls_Rcrd[ 9];    //메모
									cxViewPOI2.DataController.Values[iRow, 15] := ls_Rcrd[11];    //POI타입
									cxViewPOI2.DataController.Values[iRow, 16] := ls_Rcrd[ 0];    //본사코드
									cxViewPOI2.DataController.Values[iRow, 17] := ls_Rcrd[ 1];    //지사코드
								end;
							finally
								ls_Rcrd.Free;
							end;
						end;
					end;
				end;
			finally
				xdom := Nil;
				cxViewPOI2.EndUpdate;
			end;
		finally
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
		end;
	end;
end;

procedure TFrm_JON56.btnPOISearchClick(Sender: TObject);
begin
	if Trim(edtPoi.Text) <> '' then
     TT3.Enabled := True;
end;

procedure TFrm_JON56.btnSearchClick(Sender: TObject);
begin
    if edtBunji.Text = '' then
      cbbDongPropertiesChange(cbbDong)
    else
			RequestDataAddr(cbbSido.Text, cbbGugun.Text, cbbDong.Text, edtBunji.Text);
end;

procedure TFrm_JON56.btn_ListClick(Sender: TObject);
begin
	if btn_List.Tag = 0 then
	begin
		pnl_List.Height := 200;
		btn_List.Tag := 1;
		splAcceptMap.visible := True;
	end
	else
	if btn_List.Tag = 1 then
	begin
		pnl_List.Height := 41;
		btn_List.Tag := 0;
		splAcceptMap.visible := False;
	end;
end;

procedure TFrm_JON56.btn_POISAVEClick(Sender: TObject);
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  xdom: MSDomDocument;
  ErrCode : Integer;
  ls_MSG_Err: string;
  sTmp : TStringList;
begin
	Try
		if cb_POITYPE.ItemIndex = 0 then
		begin
			if Trim(lb_Addr_B.Caption) = '' then
			begin
				GMessagebox('법정동 정보가 정확하지 않습니다.' + #13#10 +'요청위치를 정확히 선택하여 주십시오.', CDMSE);
				exit;
			end;
			if Trim(lb_Addr_H.Caption) = '' then
			begin
				GMessagebox('행정동 정보가 정확하지 않습니다.' + #13#10 +'요청위치를 정확히 선택하여 주십시오.', CDMSE);
				exit;
			end;
			if Trim(edt_POINAME.Text) = '' then
			begin
				GMessagebox('추가할 POI명을 입력하여 주십시오.', CDMSE);
				exit;
			end;
		end;
		if cb_POITYPE.ItemIndex = 1 then
		begin
			if Trim(lb_Addr_B.Caption) = '' then
			begin
				GMessagebox('법정동 정보가 정확하지 않습니다.' + #13#10 +'검색 후 다시 선택하여주십시오.', CDMSE);
				exit;
			end;
			if Trim(lb_Addr_H.Caption) = '' then
			begin
				GMessagebox('행정동 정보가 정확하지 않습니다.' + #13#10 +'검색 후 다시 선택하여주십시오.', CDMSE);
				exit;
			end;
			if Trim(edt_POINAME.Text) = '' then
			begin
				GMessagebox('삭제할 POI명이 없습니다.' + #13#10 + '검색 후 다시 선택하여주십시오', CDMSE);
				exit;
			end;
			if Trim(lb_DocID.Text) = '' then
			begin
				GMessagebox('POI선택이 잘못되었습니다.' + #13#10 + '검색 후 다시 선택하여주십시오', CDMSE);
				exit;
			end;

			if (length(Trim(cxMemo1.text)) < 5) or (Trim(cxMemo1.text) = '') then
			begin
				GMessagebox('오류신고 사유가 자세하지 않거나 입력되지 않았습니다.' + #13#10 + '신고내용을 자세히 기술해주세요', CDMSE);
				exit;
			end;
		end;
		sTmp := TStringList.Create;
		GetTextSeperationEx2(' ', lb_Addr_B.Caption, sTmp);
		if sTmp.count <> 3 then
		begin
			GMessagebox('법정동 정보가 정확하지 않습니다.' + #13#10 +'요청위치를 정확히 선택하여 주십시오.', CDMSE);
			sTmp.Free;

			exit;
		end;
		lb_SIDO_B.Text := sTmp[0];
		lb_GU_B.Text   := sTmp[1];
		lb_DONG_B.Text := sTmp[2];
		GetTextSeperationEx2(' ', lb_Addr_H.Caption, sTmp);
		if sTmp.count <> 3 then
		begin
			GMessagebox('행정동 정보가 정확하지 않습니다.' + #13#10 +'요청위치를 정확히 선택하여 주십시오.', CDMSE);
			sTmp.Free;

			exit;
		end;
		lb_SIDO_H.Text := sTmp[0];
		lb_GU_H.Text   := sTmp[1];
		lb_DONG_H.Text := sTmp[2];

	Finally
		sTmp.Free;
	End;

 	if Not func_EucKr_Check(edt_POINAME, 0) then Exit;
 	if Not func_EucKr_Check(cxMemo1, 0) then Exit;

	Try
		Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;

    ls_TxLoad := GTx_UnitXmlLoad('JON03090.xml');

    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo'    , GT_USERIF.HD);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo'    , GT_USERIF.BR);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPoiGubun', IntToStr(cb_POITYPE.ItemIndex));
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBArea1'  , lb_SIDO_B.Text);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBArea2'  , lb_GU_B.Text);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBArea3'  , lb_DONG_B.Text);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHArea1'  , lb_SIDO_H.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHArea2'  , lb_GU_H.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHArea3'  , lb_DONG_H.Text);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPoiName' , edt_POINAME.Text);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMemo'    , cxMemo1.Text);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMapX'    , edt_ADDPOI_X.Text);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMapY'    , edt_ADDPOI_Y.Text);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPOIID'   , lb_DocID.Text);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPoiType' , lb_MapGubun.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPoiOpt'  , '0');
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString'   , GT_USERIF.ID);
		ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := CoMSDomDocument.Create;
          try
            xdom.loadXML(ls_rxxml);

            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' <> ls_MSG_Err) then
						begin
              GMessagebox(ls_Msg_Err, CDMSE);
              exit;
            end
            else
            begin
							if cb_POITYPE.ItemIndex = 0 then
								GMessagebox('정상적으로 POI추가요청이 되었습니다.', CDMSI)
							else
								GMessagebox('POI오류신고가 정상 처리 되었습니다.', CDMSE);

							proc_init(1);	
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

function TFrm_JON56.CallClickNotify(iType: integer): Boolean;
begin
  mCtrlMan := mMap.GetCtrlMan();
   // 사용자 지정 이벤트 설정
  mCtrlMan.SetClickNotify(iType);
end;

procedure TFrm_JON56.cbbDongPropertiesChange(Sender: TObject);
var
  Info: TAreaSlot;
begin
  if cbbDong.ItemIndex = -1 then
    Exit;

  Info := TAreaSlot(cbbDong.Properties.Items.Objects[cbbDong.ItemIndex]);
  if Assigned(Info) then
  begin
    WGS84ToBessel(Info.PoxY, Info.PosX);
		mCtrlState.SetLevel(5);
		OnMoveMap(ws_Lon, ws_Lat);
  end
  else
    GMessagebox('해당 동의 좌표정보를 찾을 수 없습니다.', CDMSE);
end;

procedure TFrm_JON56.cbbGugunPropertiesChange(Sender: TObject);
begin
  if cbbGugun.Text <> '' then
    RequestDataArea(cbbGugun, cbbDong, cbbSido.Text, cbbGugun.Text, False);
end;

procedure TFrm_JON56.cbbSidoClick(Sender: TObject);
begin
	if cbbGugun.Text = '' then
		RequestDataArea(cbbGugun, cbbDong, cbbSido.Text, '', False);
end;

procedure TFrm_JON56.cbbSidoPropertiesChange(Sender: TObject);
begin
	RequestDataArea(cbbGugun, cbbDong, cbbSido.Text, '', False);
end;

procedure TFrm_JON56.cb_00Click(Sender: TObject);
begin
	if TAdvGlowButton(Sender).Down then CallClickNotify(1)
	else CallClickNotify(-1);
//  pnlPoiSearch.Height := 60;
end;

procedure TFrm_JON56.cb_GubunKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then cb_State.SetFocus;
end;

procedure TFrm_JON56.cb_POITYPEPropertiesChange(Sender: TObject);
begin
  try
		if stcMsgAreaL = nil then exit;
		if cb_POITYPE.ItemIndex = 0 then
			stcMsgAreaL.SetCaption('[추가요청]우클릭하시면 위치표시가 됩니다.')
		else
			stcMsgAreaL.SetCaption('[오류신고]POI를 검색하신 뒤 선택하십시오.');
		stcMsgAreaL.SetCanFocus(0);
		stcMsgAreaL.SetCanClick(0);
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_JON56.cb_StateKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if key = vk_Return then btnPOIListSearch.click;
end;

procedure TFrm_JON56.ClearADDPOI;
begin
  try
		if mPoiman = nil then exit;
		if mPoiman.GetGroupCount > 0 then
    begin
       mPoiman.DeleteGroup(25);
    end;
	except on E: Exception do
		Assert(False, E.Message);
	end;
end;

procedure TFrm_JON56.ClearDongList(AcxCombo: TcxComboBox);
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

procedure TFrm_JON56.cp_Naver;
var
   sHttp, sX, sY, sAddr: string;
   slTmp : TStringList;
   ASido, AGugun, ADong : string;
begin
  SetDebugeWrite('Frm_JON56.cp_Naver');
  try
    sX := getDEGREE('0'+ FloatToStr(sw_Lat));
    sY := getDEGREE(FloatToStr(sw_Lon));

//		sHttp := 'https://openapi.naver.com/v1/map/reversegeocode?encoding=utf-8&coordType=latlng&query=' + sY + ',' + sX;
		sHttp := 'https://naveropenapi.apigw.ntruss.com/map-reversegeocode/v2/gc?coords=' + sY + ',' + sX 
					 + '&output=json&orders=addr';
		sAddr := fGetNaverAddress_cloud('B', sHttp);

    slTmp := TStringList.Create;
		try
      GetTextSeperationEx2(' ', sAddr, slTmp);

      if slTmp.Count >= 3 then
      begin
        ASido := fChange_Poi_Do(slTmp[0]);

        if fSejongCheck(slTmp[0]) then  // 20121206 LYB 추가
        begin
					if ((System.StrUtils.RightStr(slTmp[2], 1) = '읍') Or
							(System.StrUtils.RightStr(slTmp[2], 1) = '면')) then
					begin
            AGugun := '세종시';
						ADong  := slTmp[2] + slTmp[3];  // 읍면리
          end else
   				if (System.StrUtils.RightStr(slTmp[2], 1) = '동') then
          begin
            AGugun := '세종시';
            ADong  := slTmp[2]; //동
          end else
          begin
            AGugun := '세종시';
            ADong  := '';      //동
          end;
        end else
        begin
          if ((System.StrUtils.RightStr(slTmp[2], 1) = '구') Or
              (System.StrUtils.RightStr(slTmp[2], 1) = '시') Or
              (System.StrUtils.RightStr(slTmp[2], 1) = '군')) then
          begin
            AGugun := slTmp[1]+slTmp[2];   //시군구
            if ((System.StrUtils.RightStr(slTmp[3], 1) = '읍') Or
								(System.StrUtils.RightStr(slTmp[3], 1) = '면')) and ( slTmp.Count > 4 ) then
              ADong := slTmp[3]+slTmp[4]  //읍면+리
            else
              ADong := slTmp[3];          //동
          end else
          if ((System.StrUtils.RightStr(slTmp[2], 1) = '읍') Or
              (System.StrUtils.RightStr(slTmp[2], 1) = '면')) then
          begin
            AGugun  := slTmp[1];            //시군구
            ADong := slTmp[2] + slTmp[3]; //읍면+리
          end else
          begin
            AGugun  := slTmp[1];            //시군구
            ADong := slTmp[2];            //동
          end;
        end;
      end;
    finally
      slTmp.Free;
    end;

    lb_Addr_B.Caption := ASido + ' ' + AGugun + ' ' + ADong;

    edt_ADDPOI_X.Text := '0'+ FloatToStr(sw_Lat);
    edt_ADDPOI_Y.Text := FloatToStr(sw_Lon);
	except
		on e: exception do
		begin
			Assert(False, E.Message);
		end;
	end;
end;

procedure TFrm_JON56.cp_200(Data: string);
var
   sMsg : string;
   sTmp : TStringList;
   ASido, AGugun, ADong, ADetail : string;
begin
  SetDebugeWrite('Frm_JON56.cp_200');
  try
    GS_ReadMsg.Text := Data;

    sTmp := TStringList.Create;
    GetTextSeperationEx('/', GS_ReadMsg.Values['addr'], sTmp);

    if sTmp[0] = '000000' then
    begin
      ShowMessage('조회 중 오류 발생');
      Exit;
    end;

    sMsg := sTmp[0] + ' ';
    sMsg := sMsg + sTmp[1] + ' ';
    sMsg := sMsg + sTmp[2] + ' ';
    sMsg := sMsg + sTmp[3] + ' ';
    if sTmp[4] = '2' then sMsg := sMsg + '산 ';

    if sTmp[6] = '' then
    begin
      sMsg := sMsg + sTmp[5] + ' ';
    end else
    begin
      sMsg := sMsg + sTmp[5] + '-';
      sMsg := sMsg + sTmp[6];
    end;

//    if Frm_Main.JON01MNG[Self.Tag].FrmGubun = 2 then
//      Frm_Main.Frm_JON01B[Self.Tag].sBHAddr := sMsg
//    else
//      Frm_Main.Frm_JON01[Self.Tag].sBHAddr := sMsg;

    ASido  := fChange_Poi_Do(sTmp[0]);
    AGugun := sTmp[1];

    if AGugun = '세종시' then      // 20121205  LYB 수정
    begin
      AGugun := AGugun + sTmp[2];
      ADong  := sTmp[3];
    end else
      ADong  := sTmp[2] + sTmp[3];    // 20130614  LYB 수정  '리' 정보 표시

    ADetail := sTmp[5] + ' ' + sTmp[6];

    lb_Addr_B.Caption := ASido + ' ' + AGugun + ' ' + ADong;
//    Mark_Symbol(FLon, FLat, 5, '', '', '');

    edt_ADDPOI_X.Text := '0'+ FloatToStr(sw_Lat);
    edt_ADDPOI_Y.Text := FloatToStr(sw_Lon);

  finally
    sTmp.Free;
    CSMsn.Active := False;
  end;
end;

procedure TFrm_JON56.CreateLevelBar;
var
	mImageman : IXImageMan;
  mBg, mLevelBarBg, mBtnZoomIn, mBtnZoomOut   : IXUIButton;
  i, UIID, CY  : Integer;
  imgName : string;
  mRootPath : string;
	bCreateLevelBar : Boolean;
begin
  try
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
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON56.CreateObj;
var
	Save: LongInt; // 폼타이틀 제거용.
	ii : integer;
begin
	try
    SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
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
    GS_SendMsg := TStringList.Create;
		GS_ReadMsg := TStringList.Create;

    for ii := 0 to cxViewPOI.ColumnCount - 1 do
      cxViewPOI.Columns[ii].DataBinding.ValueType := 'String';
    cxViewPOI.DataController.SetRecordCount(0);

    cxViewPOI2.Columns[0].DataBinding.ValueType := 'integer';
    for ii := 1 to cxViewPOI2.ColumnCount - 1 do
      cxViewPOI2.Columns[ii].DataBinding.ValueType := 'String';
    cxViewPOI2.DataController.SetRecordCount(0);

    try
      // 한글인 경우에 ImeName가 공백이 아니면 사용자PC에서 한글 키가 안먹힐때가 있음. ImeName을 공백으로 넣어주면 무조건 적용
      for ii := 0 to ComponentCount - 1 do
      begin
        if Components[ii] is TcxTextEdit then
          (Components[ii] as TcxTextEdit).ImeName := '';
      end;
    except

    end;
    cxDtStartA1.Date := Now - 30;
    cxDtEndA1.Date := Now;
  except
    on e: exception do
    begin
      Assert(False, 'CreateObj Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON56.CSMsnConnect(Sender: TObject; Socket: TCustomWinSocket);
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

procedure TFrm_JON56.CSMsnError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  ShowMessage('서버와 연결 중 오류 발생');
end;

procedure TFrm_JON56.CSMsnRead(Sender: TObject; Socket: TCustomWinSocket);
var
   Size: Cardinal;
   Data: Pointer;
   sData, sCode : string;
   rv_str : AnsiString;
   Proc: procedure(Data: string) of object;
   slData: TStringList;
   li_LenRe : Integer;
begin
  SetDebugeWrite('Frm_JON56.CSMsnRead');
  try
    if piCSocketSize1 > 0 then
    begin // 소켓 데이터 읽기 여부..
       Screen.Cursor := crHourGlass;
       try
          // 메모리 할당.
          GetMem(Data, piCSocketSize1);

          SetLength(rv_str, piCSocketSize1);
          li_LenRe := Socket.Receivebuf(rv_str[1], piCSocketSize1);
          rv_str := Copy(rv_str, 1, li_LenRe);

          sData := rv_str;
          try // 문자열 데이터 파싱
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
          piCSocketSize1 := 0; // 소켓 데이터 사이즈..
       end;
       Exit;
    end;
    piCSocketSize1 := 0; // 소켓 데이터 사이즈..

    // 읽어올 데이터 사이즈 읽기..
    Socket.ReceiveBuf(Size, SizeOf(Size));
    if (Size > 0) and (Size < 9000000) then
    begin
       piCSocketSize1 := Size; // 소켓 데이터 사이즈..
    end;

  except on e: exception do
    begin
      Log('CSMsnRead Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'CSMsnRead Error :' + E.Message);
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TFrm_JON56.cxCheckBox1Click(Sender: TObject);
begin
	if TcxCheckBox(sender).Checked  then CallClickNotify(1)
  else CallClickNotify(-1);
end;

procedure TFrm_JON56.cxDtEndA1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then cb_Gubun.SetFocus;
end;

procedure TFrm_JON56.cxDtStartA1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then cxDtEndA1.SetFocus;
end;

procedure TFrm_JON56.cxMemo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  TcxMemo(sender).Text := Enc_Control(TcxMemo(sender).Text);
end;

procedure TFrm_JON56.cxViewPOI2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var ARow : integer;
	y_Lon, x_Lat : string;
begin
	ARow := cxViewPOI2.DataController.FocusedRecordIndex;
	x_Lat := cxViewPOI2.DataController.Values[Arow, 12];
	y_Lon := cxViewPOI2.DataController.Values[ARow, 13];

	WGS84ToBessel(y_Lon, x_Lat);
	OnMoveMap(ws_Lon, ws_Lat);
	Mark_Symbol(ws_Lon, ws_Lat, 5, '', cxViewPOI2.DataController.Values[ARow, 11], '');
	BesselToWGS84(ws_Lon, ws_Lat);
	cp_Naver;
end;

procedure TFrm_JON56.cxViewPOICellClick(Sender: TcxCustomGridTableView;
	ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
	AShift: TShiftState; var AHandled: Boolean);
var ARow : integer;
	y_Lon, x_Lat : string;
begin
	ARow := cxViewPOI.DataController.FocusedRecordIndex;
	if 0 > ARow then
    Exit;

	lb_DocID.Text := '';
	lb_Addr_B.Caption := '';
	lb_Addr_H.Caption := '';
	lb_SIDO_B.Text := '';
	lb_GU_B.Text   := '';
	lb_DONG_B.Text := '';
	lb_SIDO_H.Text := '';
	lb_GU_H.Text   := '';
	lb_DONG_H.Text := '';
	edt_POINAME.Text := '';
	edt_ADDPOI_X.Text := '';
	edt_ADDPOI_Y.Text := '';
		
	x_Lat := cxViewPOI.DataController.Values[Arow, 4];
	y_Lon := cxViewPOI.DataController.Values[ARow, 5];
	edt_POINAME.text := cxViewPOI.DataController.Values[ARow, 3];
	lb_DocID.text := cxViewPOI.DataController.Values[ARow, 6];
	WGS84ToBessel(y_Lon, x_Lat);
	OnMoveMap(ws_Lon, ws_Lat);
	Mark_Symbol(ws_Lon, ws_Lat, 5, '', cxViewPOI.DataController.Values[ARow, 3], '');
	BesselToWGS84(ws_Lon, ws_Lat);
	cp_Naver;

//  pnlList.Visible := False;
//  pnlPoiSearch.Height := 60;
end;

procedure TFrm_JON56.edtBunjiKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then btnSearch.Click;
end;

procedure TFrm_JON56.edtPoiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then btnPOISearch.Click;
end;

procedure TFrm_JON56.DestroyUI;
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

function TFrm_JON56.DistCalc(sx, sy, ex, ey: string): string;
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

function TFrm_JON56.D_HightlightTXT(HTEXT: String): String;
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

function TFrm_JON56.fChange_Poi_Do(vSido: String): String;
begin
  if vSido = '서울특별시' then          Result := '서울'
  else if vSido = '경기도' then         Result := '경기'
  else if vSido = '인천광역시' then     Result := '인천'
  else if vSido = '충청남도' then       Result := '충남'
  else if fSejongCheck(vSido) then      Result := '충남' // 세종특별자치시
  else if vSido = '충청북도' then       Result := '충북'
  else if vSido = '강원도' then         Result := '강원'
  else if vSido = '전라남도' then       Result := '전남'
  else if vSido = '전라북도' then       Result := '전북'
  else if vSido = '경상남도' then       Result := '경남'
  else if vSido = '경상북도' then       Result := '경북'
  else if vSido = '제주특별자치도' then Result := '제주'
  else if vSido = '대전광역시' then     Result := '대전'
  else if vSido = '대구광역시' then     Result := '대구'
  else if vSido = '광주광역시' then     Result := '광주'
  else if vSido = '부산광역시' then     Result := '부산'
  else if vSido = '울산광역시' then     Result := '울산'
  else Result := '';
end;

procedure TFrm_JON56.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON56.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := Cafree;
end;

procedure TFrm_JON56.FormCreate(Sender: TObject);
begin
	CreateObj;
	proc_init;
end;

procedure TFrm_JON56.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON56.FormDestroy(Sender: TObject);
begin
  if Assigned(GS_SendMsg) then FreeAndNil(GS_SendMsg);
  if Assigned(GS_ReadMsg) then FreeAndNil(GS_ReadMsg);
	if Assigned(mMap) then FreeAndNil(mMap);
	Frm_JON56 := nil;
end;

procedure TFrm_JON56.FormResize(Sender: TObject);
begin
  if sts_Chk then
  begin
    DestroyUI;
    CreateLevelBar;
  end;
end;


procedure TFrm_JON56.FormShow(Sender: TObject);
begin
  fSetFont(Frm_JON56, GS_FONTNAME);
  fSetSkin(Frm_JON56);
end;

function TFrm_JON56.fReplace_Poi_Do(vAddr: String): String;
begin
       if pos('서울특별시'    , vAddr) > 0 then  Result := StringReplace(vAddr, '서울특별시', '서울', [rfReplaceAll])
  else if pos('경기도'        , vAddr) > 0 then  Result := StringReplace(vAddr, '경기도', '경기', [rfReplaceAll])
  else if pos('인천광역시'    , vAddr) > 0 then  Result := StringReplace(vAddr, '인천광역시', '인천', [rfReplaceAll])
  else if pos('충청남도'      , vAddr) > 0 then  Result := StringReplace(vAddr, '충청남도', '충남', [rfReplaceAll])
  else if pos('세종특별자치시', vAddr) > 0 then  Result := StringReplace(vAddr, '세종특별자치시', '충남', [rfReplaceAll])
  else if pos('충청북도'      , vAddr) > 0 then  Result := StringReplace(vAddr, '충청북도', '충북', [rfReplaceAll])
  else if pos('강원도'        , vAddr) > 0 then  Result := StringReplace(vAddr, '강원도', '강원', [rfReplaceAll])
  else if pos('전라남도'      , vAddr) > 0 then  Result := StringReplace(vAddr, '전라남도', '전남', [rfReplaceAll])
  else if pos('전라북도'      , vAddr) > 0 then  Result := StringReplace(vAddr, '전라북도', '전북', [rfReplaceAll])
  else if pos('경상남도'      , vAddr) > 0 then  Result := StringReplace(vAddr, '경상남도', '경남', [rfReplaceAll])
  else if pos('경상북도'      , vAddr) > 0 then  Result := StringReplace(vAddr, '경상북도', '경북', [rfReplaceAll])
  else if pos('제주특별자치도', vAddr) > 0 then  Result := StringReplace(vAddr, '제주특별자치도', '제주', [rfReplaceAll])
  else if pos('대전광역시'    , vAddr) > 0 then  Result := StringReplace(vAddr, '대전광역시', '대전', [rfReplaceAll])
  else if pos('대구광역시'    , vAddr) > 0 then  Result := StringReplace(vAddr, '대구광역시', '대구', [rfReplaceAll])
  else if pos('광주광역시'    , vAddr) > 0 then  Result := StringReplace(vAddr, '광주광역시', '광주', [rfReplaceAll])
  else if pos('부산광역시'    , vAddr) > 0 then  Result := StringReplace(vAddr, '부산광역시', '부산', [rfReplaceAll])
  else if pos('울산광역시'    , vAddr) > 0 then  Result := StringReplace(vAddr, '울산광역시', '울산', [rfReplaceAll])
  else Result := '';
end;

procedure TFrm_JON56.GeneralInit;
begin
  try
    maxLogicalLevel := 13 -1;
		minLogicalLevel := 0;               

    CreateLevelBar;
    mCtrlState.SetLevel(3);
    MakeStatusbar;
//		ClearADDPOI;
		MakeMSGBox;
	except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON56.GetAddrH(GLon, GLot: Integer): string;
var
  mAdminman : IXAdminMan;
  mCenterLL : IXPoint;
  mAdmitem : IXAdminItem;
  admcode : string;
begin
  try
    mCtrlMan := mMap.GetCtrlMan();
  	mAdminman := mCtrlMan.GetAdminMan();
  	mCtrlState := mCtrlMan.GetControlState();
  	mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표
  	mAdmitem := mAdminman.GetAdminItem(GLon, GLot);

  	if mAdmitem <> nil then
    begin
      lb_Addr_H.Caption := fReplace_Poi_Do(mAdmitem.GetAdminName(' ', 3));
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

function TFrm_JON56.GetAdminCodeF(GLon, GLot: Integer): string;
var
  mAdminman : IXAdminMan;
  mCenterLL : IXPoint;
  mAdmitem : IXAdminItem;
  admcode, admname : string;
  obj : IXUIObj;
begin
  try
    mCtrlMan := mMap.GetCtrlMan();
  	mAdminman := mCtrlMan.GetAdminMan();
  	mCtrlState := mCtrlMan.GetControlState();
  	mCenterLL := mCtrlState.GetLLCenter(); // 지도의 중심 좌표
  	mAdmitem := mAdminman.GetAdminItem(GLon, GLot);

  	if mAdmitem <> nil then
    begin
  		admcode := mAdmitem.GetAdminCode();	// 행정동 코드 얻기
      admname := mAdmitem.GetAdminName(' ', 3);//행정동명
      obj := mUiman.GetChildByUIID(301);
      if (obj <> nil) then obj.SetCaption(mAdmitem.GetAdminName(' ', 3));
//      lb_Addr_H.Caption := fReplace_Poi_Do(mAdmitem.GetAdminName(' ', 3));
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

procedure TFrm_JON56.GetJibunAddr;
begin
  SetDebugeWrite('Frm_JON56.GetJibunAddr');
  try
    if Not CSMsn.Active then
    begin
//      CSMsn.Host := '203.251.202.42';
      CSMsn.Host := '203.251.202.15';//'203.251.202.26';   // 수도권웹서버 이관  20150423 LYB
      CSMsn.Port := 17012;//57012;
      CSMsn.Active := True;
    end;
  except
    ShowMessage('서버 연결 오류');
  end;
end;

procedure TFrm_JON56.MakeMSGBox;
var
	btnImg : IXUIImage;
begin
	mUtil    := mMap.GetUtility;
  mCtrlMan := mMap.GetCtrlMan;
  mUiman   := mCtrlMan.GetUIMan;
	btnImg := mUiman.CreateUI_Image(mUiman);
	btnImg.SetParent(mUiman);
	btnImg.SetUIID(300);
  btnImg.SetImage('areaPanel.png');

	btnImg.SetBound(Panel3.Width - 470, 0, 470, 37);
  btnImg.SetCanClick(0);
  btnImg.SetAlpha(30);
  btnImg.SetAnchor(mUtil.GetConstToValue('TMUIOBJ_ANCHOR_RIGHT') or mUtil.GetConstToValue('TMUIOBJ_ANCHOR_TOP'));

	stcMsgAreaL := mUiman.CreateUI_StaticText(mUiman);
	stcMsgAreaL.SetParent(btnImg);
	stcMsgAreaL.SetUIID(301);
	stcMsgAreaL.SetBound(85, 4, 280, 30);

	stcMsgAreaL.SetUIObjFontColor(mUtil.RGBColor(255, 255, 255));
	stcMsgAreaL.SetFont(10, 1, ('돋움'),0);
	stcMsgAreaL.SetUIObjFontColor(mUtil.RGBColor(255, 255, 255));
	stcMsgAreaL.SetCanFocus(0);
	stcMsgAreaL.SetCanClick(0);
end;

procedure TFrm_JON56.MakeStatusbar;
var
	mDpsize : IXSize;
	mImageman : IXImageMan;
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

  	mImageman := mCtrlMan.GetImageMan();
    mRootPath := ExtractFilePath(Application.ExeName);
    mImageman.SetDefaultPath(mRootPath + '\image\');

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
  	stcMsgArea.SetFont(12, 1, ('돋움'),0);
		stcMsgArea.SetUIObjFontColor(mUtil.RGBColor(255, 255, 255));
  	stcMsgArea.SetCanFocus(0);
  	stcMsgArea.SetCanClick(0);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON56.MapLevel_Master(level: INTEGER);
var i, SetEnabled, SetDisable : Integer;
  mLevelBarBg : IXUIButton;
begin
	try
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
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON56.Map_SetLevel(level: Integer): Integer;
begin
  if (level < minLogicalLevel) then Exit;
  if (level > maxLogicalLevel) then Exit;
  mCtrlMan := mMap.GetCtrlMan();
  mCtrlState := mCtrlMan.GetControlState;
	mCtrlState.SetLevel(level);
end;

procedure TFrm_JON56.MarkPoint;
var	mValue : IXValue; 
	mMapMan : IXMapMan;
	strText : string;
	nTextLen : integer;
begin
	mUtil := mMap.GetUtility;
	mValue := mUtil.GetValue;
	mCtrlMan := mMap.GetCtrlMan();
	mMapMan := mCtrlMan.GetMapMan();
	mMapMan.GetTextInfoByNear(-1, mValue,FLon, FLat, True, 0);
	nTextLen := mValue.GetI(4);
	if nTextLen > 0 then
		strText := mValue.GetVAsString(0, nTextLen);
	if Trim(strText) <> '' then 
	begin
		if length(strText) > 1 then
			edt_POINAME.text := strText
		else
			edt_POINAME.text := '';
	end
	else
		edt_POINAME.text := '';
	
	lb_DocID.Text := '';
	lb_Addr_B.Caption := '';
	lb_Addr_H.Caption := '';
	lb_SIDO_B.Text := '';
	lb_GU_B.Text   := '';
	lb_DONG_B.Text := '';
	lb_SIDO_H.Text := '';
	lb_GU_H.Text   := '';
	lb_DONG_H.Text := '';
	edt_ADDPOI_X.Text := '';
	edt_ADDPOI_Y.Text := '';
	
	Mark_Symbol(FLon, FLat, 5, '', '', '');
	BesselToWGS84(FLon, FLat);
	cp_Naver;
end;

procedure TFrm_JON56.Mark_Symbol(Lon, Lat, index: Integer; sCaption, sTitle,
  sKey: String);
var
  mAngle : integer;
  mPoiman : IXPOIMan;
  mGroup : IXPOIGroup;
  mGstyle : IXPOIStyle;
  mImageman : IXImageMan;
  mImage : IXMagicImage;
  mItem : IXPOIItem;
  mRootPath : String;
begin
  SetDebugeWrite('Frm_JON56.Mark_Symbol');
	try
    GetAddrH(Lon, Lat);
    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState();
    mUtil := mMap.GetUtility();

    // Step 3. Make POI Items
    mImageman := mCtrlMan.GetImageMan();
    mRootPath := ExtractFilePath(Application.ExeName);
		mImageman.SetDefaultPath(mRootPath + '\Image\');

		mImage := mImageman.LoadImage('AP','ADDPOI.png');
		mPoiman := mCtrlMan.GetPOIMan();
    mGroup := mPoiman.FindGroup(25);
    if mGroup <> nil then mPoiman.DeleteGroup(25);
      mGroup := mPoiman.NewGroup(25);

    mGstyle := mPoiman.FindStyle(25);
    if (mGstyle = nil) then
      mGstyle := mPoiman.NewStyle(25); // -1: 아이디 자동 생성
    mGroup.SetStyle(mGstyle);

    mItem := mGroup.NewItem(25) ;

    mItem.SetLonLat(Lon, Lat);
    mItem.SetImage(mImage);
    mItem.SetShowImage(1);
    mItem.SetImageIndex(1);
    mItem.SetImageOffset(7);
    mItem.SetTextStyle(StrToInt('0x12'));
		mItem.SetString('A');

    if Not mImage.IsValid then ShowMessage('Image 이상');
    mAngle := 0;

    mAngle := mAngle + 10;
    if(mAngle > 360) then mAngle := 0;
  except
		on e: exception do
    begin
      Log('Mark_Symbol Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'Mark_Symbol Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON56.mMapClickNotify(ASender: TObject; Type_, X, Y: Integer);
begin
	Mark_Symbol(FLon, FLat, 5, '', '', '');
  BesselToWGS84(FLon, FLat);
	cp_Naver;
//  cb_00.Down := False;
//  if cxCheckBox1.Checked  then     CallClickNotify(1);
end;

procedure TFrm_JON56.mMapCreate(ASender: TObject; Value: Integer);
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
      Assert(False, 'TalMap Map Data Error :' + MAP_URL + 'MapData');
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
//		mCtrlMan.SetDefaultEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEDOWN'));
//		mCtrlMan.SetDefaultEventMode(mUtil.GetConstToValue('TMEVENTTYPE_MOUSEUP'));

    XPos := Area_CenterLat;//'037335565';
    YPos := Area_CenterLon;//'126583729';
    WGS84ToBessel(YPos, XPos);
		OnMoveMap(ws_Lon, ws_Lat);

    sts_Chk := True;

    GeneralInit;
    if cb_POITYPE.ItemIndex = 1 then
    begin
      WGS84ToBessel(edt_ADDPOI_Y.Text, edt_ADDPOI_X.Text);
      Mark_Symbol(ws_Lon, ws_Lat, 5, '', '', '');
    end;
		try
			if stcMsgAreaL = nil then exit;
			if cb_POITYPE.ItemIndex = 0 then
				stcMsgAreaL.SetCaption('[추가요청]우클릭하시면 위치표시가 됩니다.')
			else
				stcMsgAreaL.SetCaption('[오류신고]POI를 검색하신 뒤 선택하십시오.');
			stcMsgAreaL.SetCanFocus(0);
			stcMsgAreaL.SetCanClick(0);
		except on E: Exception do
			Assert(False, E.Message);
		end;
	except
    on E: exception do
    begin
      sTemp := 'Map 예외처리 발생:' + e.Message;
      Assert(False, E.Message);
      ShowMessage(sTemp);
    end;
  end;
end;

procedure TFrm_JON56.mMapMouseDown(ASender: TObject; Flag, X, Y: Integer);
var	mLayer : IXLayer;
	pos : IXMapPos;
begin
	try
		mLayerman := mCtrlman.GetLayerMan();
		mLayer :=  mLayerman.FindLayer(1);
		if mLayer <>nil then
			mLayer.ClearObject();

		pos := mCtrlState.DPToLL(X, Y);
		//////////////팝업포인트//////////////////
		FLon := pos.GetLon;
		FLat := pos.GetLat;
		//////////////팝업포인트//////////////////
		timeMouseDown := Now;
//    n1.click;
	except
	end;
end;

procedure TFrm_JON56.mMapMouseMove(ASender: TObject; Flag, X, Y: Integer);
var
	mAdminman : IXAdminMan;
  mStyle : IXLayerStyle;
	mLayer : IXLayer;
	mItem : IXAdminItem;
  mPoll : IXPoint;
  mPolygon : IXLayerPolygon;
	m_Lon, m_Lat : Integer;
	pos : IXMapPos;
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
      Log('mMapMouseMove Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'mMapMouseMove Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON56.mMapMouseUp(ASender: TObject; Flag, X, Y: Integer);
var	mLayer : IXLayer;
	pos : IXMapPos;
begin
	try
		mLayerman := mCtrlman.GetLayerMan();
		mLayer :=  mLayerman.FindLayer(1);
		if mLayer <>nil then
			mLayer.ClearObject();

		pos := mCtrlState.DPToLL(X, Y);
		//////////////팝업포인트//////////////////
		FLon := pos.GetLon;
		FLat := pos.GetLat;
		//////////////팝업포인트//////////////////
		timeMouseUp := Now;

		if MilliSecondsBetween(timeMouseUp, timeMouseDown) < 1000 then
		begin

		end;
	except
	end;
end;

procedure TFrm_JON56.mMapStateChange(ASender: TObject; Code, Value1,
  Value2: Integer);
var
	mGroup : IXPOIGroup;
  mPoi : IXPOIItem;
  poi_cnt, i : integer;
begin
  SetDebugeWrite('Frm_JON56.TalMapXCtrl1StateChange');
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
        mGroup := mPoiman.FindGroup(0);
        if mGroup = nil then mGroup := mPoiman.NewGroup(0);


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
            if (mPoi <> nil) and (mCtrlState.GetLevel() < 4)then
            begin
              mPoi.SetImageIndex(1);
            end;
          end;
        end;

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

function TFrm_JON56.M_ParseTXT(tText: String): string;
Var clr, sTmp : String;
begin
  clr := '#'+IntToHex($001E8EFF, 6);

  sTmp := tText;
	sTmp := StringReplace(sTmp, '<!HS>','<B><FONT Color = "'+clr+'">', [rfReplaceAll]);
  sTmp := StringReplace(sTmp, '<!HE>','</B></FONT>', [rfReplaceAll]);

  Result := sTmp;
end;

procedure TFrm_JON56.N1Click(Sender: TObject);
var	mValue : IXValue; 
	mMapMan : IXMapMan;
	strText : string;
	nTextLen : integer;
begin
	mUtil := mMap.GetUtility;
	mValue := mUtil.GetValue;
	mCtrlMan := mMap.GetCtrlMan();
	mMapMan := mCtrlMan.GetMapMan();
	mMapMan.GetTextInfoByNear(-1, mValue,FLon, FLat, True, 0);
	nTextLen := mValue.GetI(4);
	if nTextLen > 0 then
		strText := mValue.GetVAsString(0, nTextLen);
	if Trim(strText)<>'' then 
		edt_POINAME.text := strText
	else
		edt_POINAME.text := '';
	
	lb_DocID.Text := '';
	lb_Addr_B.Caption := '';
	lb_Addr_H.Caption := '';
	lb_SIDO_B.Text := '';
	lb_GU_B.Text   := '';
	lb_DONG_B.Text := '';
	lb_SIDO_H.Text := '';
	lb_GU_H.Text   := '';
	lb_DONG_H.Text := '';
	edt_ADDPOI_X.Text := '';
	edt_ADDPOI_Y.Text := '';
	
	Mark_Symbol(FLon, FLat, 5, '', '', '');
	BesselToWGS84(FLon, FLat);
	cp_Naver;
//  cb_00.Down := False;

{	SetDebugeWrite('TFrm_JON56.N1Click');
	CallClickNotify(1);
	BesselToWGS84(FLon, FLat);

	GetJibunAddr;   }
end;

procedure TFrm_JON56.OnMoveMap(lon, lat: INTEGER);
begin
  if (lon = 0) or (lat = 0) then Exit;
  try
    mCtrlMan := mMap.GetCtrlMan();
    mCtrlState := mCtrlMan.GetControlState;
    mCtrlState.SetLLCenter(lon, lat);
		GetAdminCodeF(lon, lat);
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_JON56.pmMarkPopup(Sender: TObject);
begin
	N1.Visible := False;
	if cb_POITYPE.itemindex = 0 then
		MarkPoint;
end;

procedure TFrm_JON56.pnlCTISetting1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON56.pnlPoiSearchExit(Sender: TObject);
begin
//  pnlPoiSearch.Height := 60;
end;

procedure TFrm_JON56.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON56.proc_init(iType : integer);
begin
	if iType = 0 then
	begin
		cbbSido.Clear;
		cbbSido.Properties.BeginUpdate;
		try
			cbbSido.Properties.Items.CommaText := '서울,경기,인천,대전,충남,충북,강원,대구,경북,부산,울산,경남,전북,광주,전남,제주';
			cbbSido.ItemIndex := -1;
		finally
			cbbSido.Properties.EndUpdate;
		end;
		cbbGugun.Properties.items.Clear;
		cbbGugun.ItemIndex := -1;
		cbbDong.Properties.items.Clear;
		cbbDong.ItemIndex := -1;
		edtBunji.text := '';
	
		cxViewPOI.DataController.SetRecordCount(0);
		cb_POITYPE.ItemIndex := -1;

		pnl_List.Height := 41;
		btn_List.Tag := 0;
	end;

	edtPoi.Text := '';
	lb_MapGubun.Text := '';
	lb_DocID.Text := '';
	lb_Addr_B.Caption := '';
	lb_Addr_H.Caption := '';
	lb_SIDO_B.Text := '';
	lb_GU_B.Text   := '';
	lb_DONG_B.Text := '';
	lb_SIDO_H.Text := '';
	lb_GU_H.Text   := '';
	lb_DONG_H.Text := '';
	edt_POINAME.Text := '';
	edt_ADDPOI_X.Text := '';
	edt_ADDPOI_Y.Text := '';
	cxMemo1.Clear;
end;

function TFrm_JON56.proc_WGSToBessel(bPOI: boolean; sCity, sX, sY: string;
  var sRCity, sKm: string): string;
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

function TFrm_JON56.proc_Wisenut_GetPOI(word: string): Boolean;
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

  sFixParam := '&region=' + UrlEncode(UTF8Encode(GS_SEARCH_POI_ADDR)) + '&recRegion=' + UrlEncode(UTF8Encode(GS_SEARCH_POI_SCH));
  sOrFixParam := '&region=' + GS_SEARCH_POI_ADDR + '&recRegion=' + GS_SEARCH_POI_SCH;

  sSAPoiName := UrlEncode(UTF8Encode(trim(word)));

  sCenterLat := Area_CenterLat;
  sCenterLon := Area_CenterLon;
{  begin
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
  end; }

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
      JON01WNTh := TJON01WNThread.Create(Self.Tag, 5, sHttp, word, sRanDom);
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

function TFrm_JON56.proc_Wisenut_GetPOILast(wURL, word: String): Boolean;
begin
	SetDebugeWrite('Frm_JON30.proc_Wisenut_GetPOILast');
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
          Log('GS_PoiServerIP :'+ GS_PoiServerIP, LOGDATAPATHFILE);
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

function TFrm_JON56.proc_Wisenut_GetPOI_Proc(wURL, word: string): Boolean;
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
  row3, row4 : string;
	bInit, bCnt, bSameDongName : Boolean;
begin
	SetDebugeWrite('Frm_JON30.proc_Wisenut_GetPOI_Proc');
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
          cxViewPOI.DataController.SetRecordCount(0);
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

        cxViewPOI.BeginUpdate;
				bSameDongName := False;
				for j := 0 to jCnt.Count - 1 do
        begin
          sCnt := jCnt.Child[j].Field['DocumentSet'].Field['Count'].Value;

{          if GS_SEARCH_POISVR_SGSTERR then
          begin
            // 오타보정 같은자료가 계속 넘어와서 재쿼리 하는거 방지
            if ( sSuggest = js.Field['SearchQueryResult'].Field['SuggestedQuery'].Value ) And
               ( js.Field['SearchQueryResult'].Field['SuggestedQuery'].Value <> '' ) then Break;

            sSuggest := js.Field['SearchQueryResult'].Field['SuggestedQuery'].Value;

            if ( bCnt ) And ( Trim(sSuggest) <> '' ) then
            begin
              gTFindData[0].sFullWord := Trim(sSuggest);
							TT3.Interval := 20;
              TT3.Enabled := True;
              SetDebugeWrite('Suggest : ' + Trim(sSuggest));
              Break;
            end;
          end; }

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
										{if ( gbSearWordDong ) And ( GS_SEARCH_DONGNAME ) then Continue;

                    bBunji := True;
                    AName := ja.Child[i].Field['Field'].Field['JIBUN'].Value;
										}Continue;  
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
										{AName := D_HightlightTXT(ja.Child[i].Field['Field'].Field['SPOI'].Value);
                    proc_WGSToBessel(False, slTmp[0], sx, sy, sRCity, sKm);

                    ASido := sRCity;
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

                    f_SvrAddArr_Add(50-i, 50-i, 50-i, '', '', sRCity, AGugun, '', ADong, AName,'','','','', sx, sy);
										}
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

              if (Length(edtPoi.Text) < 2) then Exit;
							Try
								iRow := cxViewPOI.DataController.AppendRecord;

								cxViewPOI.DataController.Values[iRow, 0] := sRCity;
								if fSejongCheck(slTmp[0]) then  // 20121206 LYB 추가
								begin
									if ((copy(slTmp[1],length(slTmp[1]), 1) = '면')
									 or (copy(slTmp[1],length(slTmp[1]), 1) = '읍')) then
									begin
										cxViewPOI.DataController.Values[iRow, 1] := '세종시';// 세종시 읍면
										cxViewPOI.DataController.Values[iRow, 2] := slTmp[1]+slTmp[2];// 리
									end else
          				if (copy(slTmp[1],length(slTmp[1]), 1) = '동') then
									begin
										cxViewPOI.DataController.Values[iRow, 1] := '세종시';
										cxViewPOI.DataController.Values[iRow, 2] := slTmp[1]; //동
									end else
									begin
										cxViewPOI.DataController.Values[iRow, 1] := '세종시';
										cxViewPOI.DataController.Values[iRow, 2] := '';       //동
									end;
								end else
								begin
									if slTmp.Count > 1 then
										cxViewPOI.DataController.Values[iRow, 1] := slTmp[1]//시군고
									else
										cxViewPOI.DataController.Values[iRow, 1] := '';//시군고
									if slTmp.Count > 2 then
										cxViewPOI.DataController.Values[iRow, 2] := slTmp[2]
									else
										cxViewPOI.DataController.Values[iRow, 2] := '';//읍면동
								end;

								if slTmp.Count > 3 then
								begin
									if ((copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '구')
									 or (copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '시')
									 or (copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '군')) then
									begin
										cxViewPOI.DataController.Values[iRow, 1] := slTmp[1]+slTmp[2];//시군고
										cxViewPOI.DataController.Values[iRow, 2] := slTmp[3];//읍면동
									end else
									if ((copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '읍')
									 or (copy(D_HightlightTXT(slTmp[2]),length(D_HightlightTXT(slTmp[2])), 1) = '면')) then
									begin
										cxViewPOI.DataController.Values[iRow, 1] := slTmp[1];
										cxViewPOI.DataController.Values[iRow, 2] := slTmp[2] + slTmp[3];
									end;

									if slTmp.Count = 5 then
									begin
										cxViewPOI.DataController.Values[iRow, 2] := cxViewPOI.DataController.Values[iRow, 2] + slTmp[4];
									end;
								end;

								if Trim(cxViewPOI.DataController.Values[iRow, 2]) = Trim(AStreet) then AStreetNm := '';

								cxViewPOI.DataController.Values[iRow, 0] := M_ParseTXT(cxViewPOI.DataController.Values[iRow, 0]);
								cxViewPOI.DataController.Values[iRow, 1] := M_ParseTXT(cxViewPOI.DataController.Values[iRow, 1]);
								cxViewPOI.DataController.Values[iRow, 2] := M_ParseTXT(cxViewPOI.DataController.Values[iRow, 2]);
								cxViewPOI.DataController.Values[iRow, 3] := D_HightlightTXT(AName);
								cxViewPOI.DataController.Values[iRow, 4] := sx;//Lat
								cxViewPOI.DataController.Values[iRow, 5] := sy;//Lon
								cxViewPOI.DataController.Values[iRow, 6] := ADocId;//Lon
							except
								cxViewPOI.EndUpdate;
              End;
						end;
					end;
        end;
				cxViewPOI.EndUpdate;
      end;
    except
			on e: exception do
      begin
				Assert(False, 'proc_Wisenut_GetPOI_Proc Error :' + wURL);
      end;
    end;
  finally
    js.Free;
    FreeAndNil(slTmp);
  end;
end;

procedure TFrm_JON56.RequestDataAddr(const ASido, AGugun, ADong, ANo: string);
const
  _FMT_ADDR = '%s %s %s%s %s';// 시도 / 시군구 / 읍면동 / 리 /번지(리가 없을 수 있음)

var
  TxData: string;
  RxData: msDomDocument;
  I : Integer;
  lst_Result: IXMLDomNodeList;
  Detail, No, XPos, YPos: string;
begin
	RxData := ComsDomDocument.Create;
	try
		mCtrlState.SetLevel(5);
		TxData := GTx_UnitXmlLoad('C061N1.xml');

    TxData := ReplaceAll(TxData, 'modeStr',   'SELECT');
    TxData := ReplaceAll(TxData, 'cityStr',   ASido);
    TxData := ReplaceAll(TxData, 'wardStr',   AGugun);
    TxData := ReplaceAll(TxData, 'streetStr', ADong);
    TxData := ReplaceAll(TxData, 'noStr',     ANo);

    if RequestDataBase(TxData, RxData) then
    begin
      lst_Result := RxData.documentElement.selectNodes('/cdms/Service/Response/Data');

			try
				for I := 0 to lst_Result.length - 1 do
        begin
					Detail  := lst_Result.item[I].attributes.getNamedItem('DETAIL').Text;
          if Detail <> '' then
            Detail := ' ' + Detail;
          No      := lst_Result.item[I].attributes.getNamedItem('NO').Text;
          XPos    := lst_Result.item[I].attributes.getNamedItem('MAP_X').Text;
          YPos    := lst_Result.item[I].attributes.getNamedItem('MAP_Y').Text;

					WGS84ToBessel(YPos, XPos);
					OnMoveMap(ws_Lon, ws_Lat);
					mCtrlState.SetLevel(5);
					Break;
				end;
			finally

			end;
			if lst_Result.length < 1 then
			begin
        GMessagebox('검색결과가 없습니다.', CDMSE);
      end;
    end;
  finally
    rxdata := Nil;
	end; 
end;

procedure TFrm_JON56.RequestDataArea(AcxComboGugun, AcxComboDong: TcxComboBox;
  const ASido: string; AGugun: string; AUseAll: Boolean);
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

function TFrm_JON56.RequestDataBase(ATxData: string;
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

function TFrm_JON56.SetCtrlState(setType: Integer): Integer;
begin
  try
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
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

function TFrm_JON56.SetWGS84(idata: string): string;
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

procedure TFrm_JON56.SocketSend(ss_SendText: TStringList;
  socket: TClientSocket);
var
   Size: Cardinal;
   sData: AnsiString;
begin
  SetDebugeWrite('Frm_JON56.SocketSend');
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

procedure TFrm_JON56.TT3Timer(Sender: TObject);
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
    proc_Wisenut_GetPOI(Trim(edtPoi.Text));
  except
    on e: exception do
    begin
			Log('TT3Timer Error :' + E.Message, LOGDATAPATHFILE);
      Assert(False, 'TT3Timer Error :' + E.Message);
    end;
  end;
end;

procedure TFrm_JON56.TT3_1Timer(Sender: TObject);
Var sErrLine : String;
begin
  SetDebugeWrite('Frm_JON56.TT3_1Timer');
  try
    TT3_1.Enabled := False;

		if Not proc_Wisenut_GetPOILast(GS_WiseNutPOIResult, GS_WiseNutPOIWord) then Exit;
    try
      SetDebugeWrite(Format('Frm_JON56.TT3_1Timer : %s', [lcsActiveEdit]));
      try
        if (Length(edtPoi.Text) < 2) then Exit;

				if cxViewPOI.DataController.RecordCount < 1 then
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

function TFrm_JON56.WGS84ToBessel(Y_1, x_1: string): integer;
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
  	r_X := 0;
    r_Y := 0;
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

end.

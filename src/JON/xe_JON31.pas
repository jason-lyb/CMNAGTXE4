unit xe_JON31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TalMapXLib_TLB, IniFiles, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxLabel,
  cxMemo, Vcl.OleCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxClasses, cxGridCustomView, cxGrid, cxPC, Vcl.StdCtrls, cxButtons, dxCore,
	cxCheckBox, cxMaskEdit, cxDropDownEdit, cxTextEdit, cxRadioGroup, cxGroupBox,
  Vcl.ExtCtrls, SHDocVw,  dxBarBuiltInMenu, dxSkinsCore,
  dxSkinscxPCPainter, System.Math, dxDateRanges, dxSkinOffice2010Silver, dxSkinSharp, dxSkinMetropolisDark, dxSkinOffice2007Silver;

type
  TTrackingMode = (tmDirect = 0, tmAround = 1);

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

  TFrm_JON31 = class(TForm)
    pnlBottom: TPanel;
    pnlList: TPanel;
    pnlTitle: TPanel;
    cxButton1: TcxButton;
    pnlHelp: TcxGroupBox;
    cxLabel2: TcxLabel;
    btnHelpClose: TcxButton;
    WebBrowser1: TWebBrowser;
    cxLblActive: TLabel;
    pnlWeb: TPanel;
    Shape1: TShape;
    TT3: TTimer;
    TT3_1: TTimer;
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
    pnlLargeMenu: TPanel;
    btnSearch: TcxButton;
    edtName: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
		procedure cxViewNameSelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxViewNameCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edtBunjiKeyPress(Sender: TObject; var Key: Char);
    procedure edtNameKeyPress(Sender: TObject; var Key: Char);
    procedure btnMapHelpClick(Sender: TObject);
    procedure chkMapRectClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnHelpCloseClick(Sender: TObject);
    procedure pnlHelpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
		procedure pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure WebBrowser1NavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure btnSearchClick(Sender: TObject);
		procedure TT3Timer(Sender: TObject);
		procedure TT3_1Timer(Sender: TObject);
  private
    FTargetPos: string;
    CurDispatch: IDispatch; {save the interface globally }
    procedure SetTargetPos(const Value: string);
  private
    { Private declarations }
    FOnSelectedMap: TOnSelectedMap;

		sRanDom : String;
    sSAPoiName, lsPOISvrIP : String;

		procedure CreateObj;
    procedure DestroyObj;

    procedure DoSelectedMap(const ASido, AGugun, ADong, ADetail, AX, AY: string);
		function proc_Wisenut_GetPOI(word: string) : Boolean;    //advstring2
		function proc_Wisenut_GetPOILast( wURL, word : String ) : Boolean;
		function proc_Wisenut_GetPOI_Proc(wURL, word : string ) : Boolean;
    function D_HightlightTXT(HTEXT : String): String;
		function  proc_WGSToBessel(bPOI : boolean; sCity, sX, sY: string; var sRCity, sKm : string) : string;
    function M_ParseTXT(tText : String): string;
		function  DistCalc(sx, sy, ex, ey : string) : string ;
	public
    { Public declarations }
		maxLogicalLevel, minLogicalLevel : Integer;
		FLon, SLon, ELon, FLat, SLat, ELat  : Integer;
		ws_Lon, ws_Lat : integer;
		sw_Lon, sw_Lat : Double;
		sts_Chk : Boolean;

		bWebLoading : Boolean;

		procedure StartPos(const AValue, AX, AY: string);
    procedure EndPos(const AValue, AX, AY: string);

    property OnSelectedMap: TOnSelectedMap read FOnSelectedMap write FOnSelectedMap;
    procedure Show; reintroduce;
    procedure SetTargetCaption(AValue: string);

    function StrToken(var ASource: String;  ADelimiter: String): String;
  end;

var
	Frm_JON31: TFrm_JON31;

implementation

{$R *.dfm}

uses xe_GNL, xe_Dm, xe_Func, xe_Msg, xe_xml, Main, xe_JON01WNThread, uLkJSON, xe_JON30, xe_Gnl2;

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

{ TODO : TAreaSlot }

constructor TAreaSlot.Create(const PosX, PosY: string);
begin
  FPosX := PosX;
  FPosY := PosY;
end;

{ TODO : TfrmJON30 }

procedure TFrm_JON31.CreateObj;
var
  Save: LongInt; // 폼타이틀 제거용.
  EnvFile: TIniFile;
begin
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);
//  FInit := True;
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

  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    Self.Left  := EnvFile.ReadInteger('MapPosLarge', 'Left', 0);
    Self.Top   := EnvFile.ReadInteger('MapPosLarge', 'Top', 0);
    Self.Width := EnvFile.ReadInteger('MapPosLarge', 'Width', 950);
    Self.Height:= EnvFile.ReadInteger('MapPosLarge', 'Height', 700);
    if Self.Top < 0 then Self.Top := 0;
  finally
    EnvFile.Free;
  end;

end;

procedure TFrm_JON31.FormActivate(Sender: TObject);
begin
  cxLblActive.Color := GS_ActiveColor;
  cxLblActive.Visible := True;
end;

procedure TFrm_JON31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_JON31.FormCreate(Sender: TObject);
begin
{  bWebLoading := False;
  try
    WebBrowser1.Silent := True;
    WebBrowser1.Navigate(DAUMMAP_URL);
  except

	end; }
  CreateObj;
end;

procedure TFrm_JON31.Show;
begin
  fSetFont(Frm_JON31, GS_FONTNAME);
  fSetSkin(Frm_JON31);
  ShowWindow(Handle, SW_SHOWNA);
  Visible := True;
end;

procedure TFrm_JON31.FormDeactivate(Sender: TObject);
begin
  cxLblActive.Visible := False;
end;

procedure TFrm_JON31.FormDestroy(Sender: TObject);
begin
  DestroyObj;
  Frm_JON31 := Nil;
end;

procedure TFrm_JON31.DestroyObj;
var
  EnvFile: TIniFile;
begin
  EnvFile := TIniFile.Create(ENVPATHFILE);
  try
    EnvFile.WriteInteger('MapPosLarge', 'Left',   Self.Left  );
    EnvFile.WriteInteger('MapPosLarge', 'Top',    Self.Top   );
    EnvFile.WriteInteger('MapPosLarge', 'Width',  Self.Width );
    EnvFile.WriteInteger('MapPosLarge', 'Height', Self.Height);
  finally
    EnvFile.Free;
  end;
end;

function TFrm_JON31.DistCalc(sx, sy, ex, ey: string): string;
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

procedure TFrm_JON31.StartPos(const AValue, AX, AY: string);
Var slatX, slonY : String;
    i : Integer;
begin
  if (AX <> '') and (AY <> '') then
  begin
    slatX := SetWGS84(AX);
    slonY := SetWGS84(AY);

   	SetDebugeWrite('Frm_JON31.StartPos : ' + DAUMMAP_URL + '?xLat=' + slatX + '&yLon=' + slonY);

		bWebLoading := False;
		try
			WebBrowser1.Silent := True;
			WebBrowser1.Navigate(DAUMMAP_URL + '?xLat=' + slatX + '&yLon=' + slonY);
    except on E: Exception do
      Assert(False, E.Message);
    end;

		i := 0;
    while Not bWebLoading do
    begin
			Application.ProcessMessages;
			sleep(100);
      Inc(i);
      if i > 20 then Break;
		end;

    try
			ExecuteJavaScript(WebBrowser1,'setStartpanTo('+slatX+','+slonY+','''+AValue+''');');
    except on E: Exception do
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_JON31.EndPos(const AValue, AX, AY: string);
Var slatX, slonY : String;
    i : Integer;
begin
  if (AX <> '') and (AY <> '') then
  begin
    slatX := SetWGS84(AX);
    slonY := SetWGS84(AY);

   	SetDebugeWrite('Frm_JON31.EndPos : ' + DAUMMAP_URL + '?xLat=' + slatX + '&yLon=' + slonY);

		bWebLoading := False;
		try
			WebBrowser1.Silent := True;
			WebBrowser1.Navigate(DAUMMAP_URL + '?xLat=' + slatX + '&yLon=' + slonY);
    except on E: Exception do
      Assert(False, E.Message);
    end;

    i := 0;
    while Not bWebLoading do
    begin
			Application.ProcessMessages;
			sleep(100);
      Inc(i);
      if i > 20 then Break;
    end;

    try
      ExecuteJavaScript(WebBrowser1,'setEndpanTo('+slatX+','+ slonY+','''+AValue+''');');
    except on E: Exception do
      Assert(False, E.Message);
    end;

    if WebBrowser1.Visible then Exit;
  end;
end;

procedure TFrm_JON31.btnCloseClick(Sender: TObject);
begin
  Self.Hide;
end;

procedure TFrm_JON31.btnHelpCloseClick(Sender: TObject);
begin
  pnlHelp.Visible := False;
end;

procedure TFrm_JON31.cxViewNameSelectionChanged(
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

  if WebBrowser1.Visible then Exit;

//  WGS84ToBessel(YPos, XPos);
//-  OnMoveMap(ws_Lon, ws_Lat);
end;

procedure TFrm_JON31.btnSearchClick(Sender: TObject);
begin
	if Trim(edtName.Text) <> '' then
		 TT3.Enabled := True;
end;

procedure TFrm_JON31.cxViewNameCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  XPos, YPos, slatX, slonY, sValue : string;
  i : Integer;
begin
  XPos := Sender.DataController.Values[ACellViewInfo.GridRecord.RecordIndex, cxColNameX.Index];
  YPos := Sender.DataController.Values[ACellViewInfo.GridRecord.RecordIndex, cxColNameY.Index];
  sValue := Sender.DataController.Values[ACellViewInfo.GridRecord.RecordIndex, cxColName.Index];

  slatX := SetWGS84(XPos);
  slonY := SetWGS84(YPos);

	bWebLoading := False;
	try
		WebBrowser1.Silent := True;
		WebBrowser1.Navigate(DAUMMAP_URL + '?xLat=' + slatX + '&yLon=' + slonY);
  except on E: Exception do
    Assert(False, E.Message);
  end;

	i := 0;
	while Not bWebLoading do
  begin
		Application.ProcessMessages;
		sleep(100);
    Inc(i);
    if i > 20 then Break;
  end;

  try
    ExecuteJavaScript(WebBrowser1,'setStartpanTo('+slatX+','+slonY+','''+sValue+''');');
  except on E: Exception do
    Assert(False, E.Message);
  end;
  if WebBrowser1.Visible then Exit;
end;

procedure TFrm_JON31.edtBunjiKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    btnSearch.Click;
end;

procedure TFrm_JON31.edtNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    btnSearch.Click;
end;

procedure TFrm_JON31.SetTargetPos(const Value: string);
begin
  if FTargetPos = Value then Exit;

  FTargetPos := Value;
end;

procedure TFrm_JON31.pnlTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(self.Handle, WM_SYSCOMMAND, $F012, 0);
end;

function TFrm_JON31.proc_WGSToBessel(bPOI: boolean; sCity, sX, sY: string; var sRCity, sKm: string): string;
var
  sPOI : string;
begin
  try
    Result := '';

    if sCity = '서울특별시' then          sPOI := '서울'
    else if sCity = '경기도' then         sPOI := '경기'
    else if sCity = '인천광역시' then     sPOI := '인천'
		else if sCity = '충청남도' then       sPOI := '충남'
		else if fSejongCheck(sCity) then      sPOI := '충남' // 세종특별자치시
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

function TFrm_JON31.proc_Wisenut_GetPOI(word: string): Boolean;
var
  sHttp, sOrHttp : String;
  sYesNo, sViewCnt, sCenterLat, sCenterLon, sFixParam, sOrFixParam : String;

  JON01WNTh : TJON01WNThread;
begin
	SetDebugeWrite('Frm_JON31.proc_Wisenut_GetPOI');
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
      JON01WNTh := TJON01WNThread.Create(Self.Tag, 8, sHttp, word, sRanDom);
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

function TFrm_JON31.proc_Wisenut_GetPOILast(wURL, word: String): Boolean;
begin
	SetDebugeWrite('Frm_JON31.proc_Wisenut_GetPOILast');
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

function TFrm_JON31.proc_Wisenut_GetPOI_Proc(wURL, word: string): Boolean;
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
	SetDebugeWrite('Frm_JON31.proc_Wisenut_GetPOI_Proc');
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
										cxViewName.DataController.Values[iRow, 6] := '세종시';// 세종시 읍면
										cxViewName.DataController.Values[iRow, 7] := slTmp[1]+slTmp[2];// 리
									end else
          				if (copy(slTmp[1],length(slTmp[1]), 1) = '동') then
									begin
										cxViewName.DataController.Values[iRow, 6] := '세종시';
										cxViewName.DataController.Values[iRow, 7] := slTmp[1]; //동
									end else
									begin
										cxViewName.DataController.Values[iRow, 6] := '세종시';
										cxViewName.DataController.Values[iRow, 7] := '';        //동
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

procedure TFrm_JON31.pnlHelpMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(PnlHelp.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_JON31.btnMapHelpClick(Sender: TObject);
begin
  PnlHelp.Left := Trunc(Self.Width/2) - Trunc( PnlHelp.Width / 2 );
  PnlHelp.Top  := Trunc(Self.Height/2) - Trunc( PnlHelp.Height / 2 );
  pnlHelp.Visible := True;
end;

procedure TFrm_JON31.SetTargetCaption(AValue: string);
begin
  if AValue = '' then
    PnlTitle.Caption := Format('  상담지도(%s)', [FTargetPos])
  else
    PnlTitle.Caption := Format('  상담지도(%s: %s)', [FTargetPos, AValue]);
end;

procedure TFrm_JON31.DoSelectedMap(const ASido, AGugun, ADong, ADetail, AX,
  AY: string);
var
  Desc: string;
begin
  if Assigned(OnSelectedMap) then
    OnSelectedMap(ASido, AGugun, ADong, ADetail, AX, AY);

  if ADetail= '' then
    Desc := ADong
  else
    Desc := ADetail;

  SetTargetCaption(Desc);
end;

function TFrm_JON31.D_HightlightTXT(HTEXT: String): String;
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

procedure TFrm_JON31.chkMapRectClick(Sender: TObject);
begin
  if TcxCheckBox(Sender).Checked and (edtName.Text <> '') then
    btnSearch.Click;
end;

function TFrm_JON31.StrToken(var ASource: String;
  ADelimiter: String): String;
var
  PosToken: integer;
begin
  PosToken := Pos(ADelimiter, ASource);

  result := Copy(ASource, 0, PosToken - 1);
  ASource := Copy(ASource, PosToken + 1, Length(ASource) - PosToken);
end;


procedure TFrm_JON31.TT3Timer(Sender: TObject);
begin
  SetDebugeWrite('Frm_JON31.TT3Timer');
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

procedure TFrm_JON31.TT3_1Timer(Sender: TObject);
Var sErrLine : String;
begin
  SetDebugeWrite('Frm_JON31.TT3_1Timer');
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

procedure TFrm_JON31.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
	if (pDisp = CurDispatch) then
  begin
    WebBrowser1.Visible := True;
    bWebLoading := True;
    CurDispatch := nil;
  end;
end;

procedure TFrm_JON31.WebBrowser1NavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  if CurDispatch = nil then
     CurDispatch := pDisp; { save for comparison }
end;

procedure TFrm_JON31.FormResize(Sender: TObject);
begin
  if PnlHelp.Visible then
  begin
    PnlHelp.Left := Trunc(Self.Width/2) - Trunc( PnlHelp.Width / 2 );
    PnlHelp.Top  := Trunc(Self.Height/2) - Trunc( PnlHelp.Height / 2 );
  end;
end;


function TFrm_JON31.M_ParseTXT(tText: String): string;
Var clr, sTmp : String;
begin
  clr := '#'+IntToHex($001E8EFF, 6);

  sTmp := tText;
	sTmp := StringReplace(sTmp, '<!HS>','<B><FONT Color = "'+clr+'">', [rfReplaceAll]);
  sTmp := StringReplace(sTmp, '<!HE>','</B></FONT>', [rfReplaceAll]);

  Result := sTmp;
end;

end.

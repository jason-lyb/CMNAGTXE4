unit xe_Dm;

interface

uses
	Forms, System.SysUtils, System.Classes, Vcl.ExtCtrls, IdComponent,
	IdTCPConnection, xe_gnl, cxProgressBar, MSXML2_TLB, Vcl.Dialogs,
	IdTCPClient, IdBaseComponent, IdAntiFreezeBase, Windows,
	System.SyncObjs, IDGlobal, WinSock, System.StrUtils, System.Math,
	System.Win.ScktComp, IdAntiFreeze, SQLiteTable3, System.ImageList, Vcl.ImgList, Vcl.Controls, cxImageList, cxGraphics, IdSSLOpenSSL, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL;

const
	DLL_NAME = 'lc.dll';
	
type
	TOnCMNPacketPage = procedure(ANowPage, AFinalPage: string) of object;
  TOnCMNSessionDisConnect = procedure(Sender: TObject) of object;
	TOnCMNSessionConnect = procedure(Sender: TObject) of object;
	 
type
  Tdm = class(TDataModule)
    IdAntiFreeze: TIdAntiFreeze;
    TCPClient: TIdTCPClient;
    TCPAccept: TIdTCPClient;
		tmPing: TTimer;
    tmPing2: TTimer;
    tmrErrorUp: TTimer;
    IdTCPCtOShotMMS: TIdTCPClient;
    IdTCPCtOShotSMS: TIdTCPClient;
    ssMessenger: TServerSocket;
    TCPClientLBS: TIdTCPClient;
    tmPing3: TTimer;
    cxImg24: TcxImageList;
    cxImg16: TcxImageList;
    cxImg33: TcxImageList;
    cxImg42: TcxImageList;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    procedure tmPingTimer(Sender: TObject);
    procedure TCPClientConnected(Sender: TObject);
    procedure TCPClientDisconnected(Sender: TObject);
    procedure TCPAcceptConnected(Sender: TObject);
    procedure TCPAcceptDisconnected(Sender: TObject);
		procedure tmPing2Timer(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure tmrErrorUpTimer(Sender: TObject);
    procedure ssMessengerClientRead(Sender: TObject; Socket: TCustomWinSocket);

    procedure ssMessengerClientError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ssMessengerClientConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ssMessengerClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    function IdSSLIOHandlerSocketOpenSSL1VerifyPeer(Certificate: TIdX509; AOk: Boolean; ADepth, AError: Integer): Boolean;  private
		{ Private declarations }
		FSENDOTP, FSENDOTP2, FSENDOTP3: AnsiString;
		/// Send OTP (One Time password)

		FSendPingCount, FSendPingCount2, FSendPingCount3 : Integer;
		FSendOTPCount, FSendOTPCount2, FSendOTPCount3 : Integer;

    FOnSessionConnect: TOnCMNSessionConnect;
    FOnSessionDisConnect: TOnCMNSessionDisConnect;
    FOnCMNPacketPage: TOnCMNPacketPage;

    FReconnectCount, FReconnectCount2, FReconnectCount3: Integer;
    /// 재접속 Count

    SendPacketData, SendAcceptPacketData : array of Byte;
    BRHeader, BRBody: TIdBytes;
    gsErrorTxt : String;


    function func_login(iType: Integer): Boolean;

    function RequestCIS(AURL: string): string;
    function SetSvrIP(ASvrs: string): Boolean;
    procedure SetServerALL;
	public
		FReConnectCheck, FReconnectCheck2, FReconnectCheck3: Boolean;
    gsTestPORTYN : String;
    /// 재접속 여부 채크(서버와 접속 단절된 경우 암호화키를 새로 받기 위해 로그인 처리 용도)
		FRECVOTP, FRECVOTP2, FRECVOTP3: AnsiString;
    /// Recv OTP (One Time password)
    gbConnectedMessager : Boolean;

		{ Public declarations }
		property SendOTP: AnsiString read FSENDOTP write FSENDOTP;
		property RecvOTP: AnsiString read FRECVOTP write FRECVOTP;
    property OnSessionConnect: TOnCMNSessionConnect read FOnSessionConnect write FOnSessionConnect;
    property OnSessionDisConnect: TOnCMNSessionDisConnect read FOnSessionDisConnect write FOnSessionDisConnect;
    property OnCMNPacketPage: TOnCMNPacketPage read FOnCMNPacketPage write FOnCMNPacketPage;

    procedure GetOTPCode(AXML: WideString; iType: Integer);
		function GetRecvPage(AXML: WideString): Boolean;
		function GetRecvPage_JON54(AXML: WideString): Boolean;

    function SendSock(const ASendData: string; var slList: TStringList;
      var AErrorCode: Integer; bOptCd: Boolean;
			ATimeOut: Integer = 60000 { 3000 }; AXML : String = ''  ): Boolean;
		function SendSockAccept(const ASendData: string; var slList: TStringList;
			var AErrorCode: Integer; bOptCd: Boolean;
			ATimeOut: Integer = 15000; AConfSlip : String = '' { 3000 } ): Boolean;
		function SendSockLBS(const ASendData: string; var slList: TStringList;
			var AErrorCode: Integer; bOptCd: Boolean;
			ATimeOut: Integer = 360000; AConfSlip : String = '' { 3000 } ): Boolean;
		function DoReConnect(iType: Integer): Boolean;


    procedure LoadServerIP;
		procedure SetServerIP;
    function RandomIP: Boolean;
    function GetSvrCodeToIP(ACode: string): string;
    function GetRandomSvrCodeRange(var AList: TStringList;
      ASCode, AECode: Integer; ACount: Integer = 0): string;

    function ServerIPChange: Boolean;

    function SockConnect(iType: Integer; ATimeOut: Integer = 3000): Boolean;
    procedure SockDisconnect;

    procedure Set_Web_URL;
    procedure pSendCMessenger( bErrView : boolean; sData : String );
  end;

var
  dm: Tdm;

  _CS_SockSend: TCriticalSection; // 임계영역 설정.
  _CS_SockSendJ03: Array [0..JON03_MAX_CNT - 1] of TCriticalSection; // 임계영역 설정. 접수현황 전용
  _CS_SockSendJ54: TCriticalSection; // 임계영역 설정. 통화관리 전용
	_CS_SockSendAcc: TCriticalSection; // 임계영역 설정. 접수창 전용.
	_CS_SockSendLBS: TCriticalSection; // 임계영역 설정. LBS 전용.

function ServerIPIndex: Integer;
procedure SVRAUTOINCREMENT_CREATE; // 20120717 자동증가 컬럼으로 변경처리
//MYSql, Online
procedure SVRPREM_TUN; // MY-SQL테이블을 튜닝해서 할증요금구조추가
procedure SVRPREM_TUNMAST; // MY-SQL테이블을 튜닝해서 할증요금구조추가(할증마스터)
procedure SVRPREM_TUNDET; // MY-SQL테이블을 튜닝해서 할증요금구조추가(할증디테일)
procedure SVRBGROUP_CREATE; // 20120607 법인 요금제 테이블 체크 LYB 추가
procedure SVRALLSEVEN_CREATE; // 20200601 올세븐요금제 추가
procedure SVRPREM_Local; // MY-SQL테이블을 튜닝해서 할증요금구조추가(할증디테일)
procedure pCREATE_SvrNewDistance;

//SQLITE
procedure LOCPREM_TUN; // SQLite-로컬테이블을 튜닝해서 할증요금구조추가
procedure MakeTable_SQLite; // SQLite-로컬테이블을 튜닝해서 할증요금구조추가

procedure Set_PremRec;
function Get_PremMax: Integer;
function Chk_CidPer: Boolean;

procedure SetJONLMT(memid: string; jonlmt: Integer);
function GetJONLMT(smemid: string): Integer;
function HmasYN: Boolean;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses xe_Func
	 , xe_Msg
	 , xe_packet
	 , xe_system
	 , xe_Login   //<=|도움말
	 , xe_charge  //<=|안나오게
	 , Main       //<=|함
	 , xe_xml
	 , xe_Flash, xe_JON01Share;

{$R *.dfm}

procedure Tdm.tmPing2Timer(Sender: TObject);
var
	RecvData: string;
	ErrCode: Integer;
  slList: TStringList;
begin
  try
    if FSendPingCount2 = SENDPING_CNT then
    begin
      slList := TStringList.Create;
      if SendSockAccept('9999', slList, ErrCode, False) then
				RecvData := slList[0];
			FSendPingCount2 := 0;
      gsSEndSockAcceptHb := FSendPingCount2;
      FreeAndNil(slList);
    end else
    begin
      Inc(FSendPingCount2);
      gsSEndSockAcceptHb := FSendPingCount2;
    end;
		
    if FSendOTPCount2 >= SENDOPT_CNT then
    begin
      FSendOTPCount2 := 0;
      DoReConnect(1);
    end else
    begin
      Inc(FSendOTPCount2);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Tdm.tmPingTimer(Sender: TObject);
var
  RecvData: string;
  ErrCode: Integer;
  slList: TStringList;
begin
  try
    if FSendPingCount = SENDPING_CNT then
    begin
      slList := TStringList.Create;
      if SendSock('9999', slList, ErrCode, False) then
        RecvData := slList[0];
      FSendPingCount := 0;
      FreeAndNil(slList);
    end else
    begin
      Inc(FSendPingCount);
    end;

    if FSendOTPCount >= SENDOPT_CNT then
    begin
      FSendOTPCount := 0;
      DoReConnect(0);
    end else
    begin
      Inc(FSendOTPCount);
    end;

    if Trim(gsErrorTxt) <> '' then
      tmrErrorUp.Enabled := True;

  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Tdm.tmrErrorUpTimer(Sender: TObject);
begin
  tmrErrorUp.Enabled := False;

  try
    Log('tmrErrorUp : ' + gsErrorTxt, LOGDATAPATHFILE);
    Assert(False, gsErrorTxt);
    gsErrorTxt := '';
  except

  end;
end;

{ *==============================================================================
  CMN Server 에 데이터 전송
  @param AMsgCode 전문코드
  @param ASendData 전송할 전문
  @param AErrCode 오류코드 전송
  @param bOptCd 로그인 여부
  @param ATimeOut 전송 후 TimeOut 시간
  @return 전송받을 전문
  =============================================================================== }

// 2011.03.10 DORECONNECT
function Tdm.SendSock(const ASendData: string; var slList: TStringList;
	var AErrorCode: Integer; bOptCd: Boolean; ATimeOut: Integer; AXML : String): Boolean;
label
  Retry;
var
  TempStr, TempStr2: AnsiString;
  EndData: Boolean;
  AMsgCode: AnsiString;
  AHeader: TTCKCommonHeader;
  APacketSize: Integer;
  retry_cnt: Integer;
begin
  Result := False;
  retry_cnt := 0;

  // 임계영역 설정.
Retry:
  _CS_SockSend.Acquire;
  try
    if TCPClient.Tag = 1 then
    begin
      slList.Add('');
      Exit;
    end;

    if bOptCd then
      AMsgCode := 'C001'
    else
      AMsgCode := '0000';

    if ASendData = '9999' then
      AMsgCode := '9999'
    else
      FSendOTPCount := 0;

    EndData := False;

    try
      tmPing.Enabled := False;
			SetDebugeWrite(Format('SendSock Start : [OPTCnt - %d] [PingCnt - %d]', [FSendOTPCount, FSendPingCount]));
      if TCPClient.Connected then
      begin
        slList.Clear;
        FSendPingCount := 0;

        if AXML = 'C600' then TCPClient.ReadTimeout := ATimeOut;
        // 2011.04.05 통계화면조회속도지체로 타임아웃 1분까지 연장
        TCPClient.ReadTimeout := ATimeOut;
				//20200929 KHS 실시간출금-검증전문의 경우 ReadTimeout을 옵션값으로
				if AXML = 'C600' then TCPClient.ReadTimeout := ATimeOut;
        Frm_Main.sbar_Message.Panels[4].Text := '';

        try
          AErrorCode := NO_ERROR_CODE;
          TempStr := UTF8Encode(ASendData);
          // [hjf] Blowfish + Base64 -> Blowfish 만(Base64 제거)
          SetDebugeWrite(Format('SendSock End : %s [OPTCnt - %d] [PingCnt - %d]', [ASendData, FSendOTPCount, FSendPingCount]));
          APacketSize := MakePacket(SendPacketData, AMsgCode, TempStr, FSENDOTP);

          TCPClient.IOHandler.Write(RawToBytes(SendPacketData[0], APacketSize));
        except
          on E: Exception do
          begin
            OutputDebugString(PChar(Format('WriteBuffer: %s[IP: %s]', [E.Message, SERVER_IP])));
            if (retry_cnt = 0) then
            begin
              retry_cnt := 1;
            end;

            raise;
          end;
        end;

        TCPClient.Tag := 1;
        repeat
          // [hjf] Header에서 패킷 길이 읽어와서 메모리를 읽는다.
					try
            SetLength(BRHeader, MaxArrHeadSize);
            TCPClient.IOHandler.ReadBytes(BRHeader, MaxArrHeadSize, False);
            Move(BRHeader[0], AHeader, MaxArrHeadSize);
						AHeader.PacketLength := ntohl(AHeader.PacketLength);
					except
            on E: Exception do
            begin
              OutputDebugString(PChar(Format('ReadBuffer Header: %s[IP: %s]',
                [E.Message, SERVER_IP])));
              raise;
            end;
          end;

          if AHeader.PacketLength > 0 then
          begin
            try
              SetLength(BRBody, AHeader.PacketLength);
              TCPClient.IOHandler.ReadBytes(BRBody, AHeader.PacketLength, False);
            except
              on E: Exception do
              begin
                OutputDebugString(PChar(Format('ReadBuffer: %s[IP: %s]',
                  [E.Message, SERVER_IP])));
                raise;
              end;
            end;
            TCPClient.IOHandler.ReadString(1);

            TempStr2 := BlowFishDecrypt(FRECVOTP, BRBody[0],  AHeader.PacketLength);
            TempStr := UTF8Decode(TempStr2);

//            SetDebugeWrite('RecvSock : ');
            SetDebugeWrite('RecvSock : ' + TempStr);

            if AMsgCode = 'C001' then
            // 로그인 전문인 경우 암호화 키 변경
            begin
              GetOTPCode(TempStr, 0);
              EndData := True;
            end else
            begin
              if GetRecvPage(TempStr) then
              begin
                EndData := True;
                Frm_Flash.cxPBar1.Properties.Marquee := False;
                Frm_Flash.cxPBar1.Properties.ShowTextStyle := cxtsPercent;
                Frm_Flash.cxPBar1.Properties.Min := 0;
                Frm_Flash.cxPBar1.Position := 0;
                Application.ProcessMessages;
              end;
            end;

            slList.Add(TempStr);
          end else
          begin
            slList.Add('');
          end;
        until EndData;

        AErrorCode := NO_ERROR_CODE;
        Result := True;
        tmPing.Enabled := True;
        TCPClient.Tag := 0;
      end else
      begin
        AErrorCode := NO_ERROR_CODE;
        slList.Add('');
        Result := False;
        TCPClient.Tag := 0;
        tmPing.Enabled := False;

        if (retry_cnt = 0) then
        begin
          retry_cnt := 1;
        end;
      end;
    except
      on E: Exception do
      begin
        slList.Add('');
        Result := True;
        TCPClient.Tag := 0;
        tmPing.Enabled := False;
        TCPClient.Disconnect;
        Log(E.Message, LOGDATAPATHFILE);
      end;
    end;
  finally
    // 2011.04.05
//    TCPClient.ReadTimeout := ATimeOut;
    // 임계영역 설정.

    ZeroMemory(SendPacketData, MaxCommandSize);
//    SendPacketData := Nil;
//    BRHeader  := Nil;
//    BRBody  := Nil;
    _CS_SockSend.Release;
  end;

  if (retry_cnt = 1) then
  begin
    retry_cnt := 2;
    // 재접속후 재호출
    DoReConnect(0);
    goto Retry;
  end;
end;

{ *==============================================================================
  CMN Server 에 데이터 전송
  @param AMsgCode 전문코드
  @param ASendData 전송할 전문
  @param AErrCode 오류코드 전송
  @param bOptCd 로그인 여부
  @param ATimeOut 전송 후 TimeOut 시간
	@return 전송받을 전문
  =============================================================================== }

// 2011.03.10 DORECONNECT
function Tdm.SendSockAccept(const ASendData: string; var slList: TStringList;
  var AErrorCode: Integer; bOptCd: Boolean; ATimeOut: Integer; AConfSlip : String): Boolean;
const
	_PACKET_SIZE = 4 * 1024;
label
	Retry;
var
	TempStr : AnsiString;

  EndData: Boolean;
	RecvData: string;
	AMsgCode: AnsiString;
  AHeader: TTCKCommonHeader;
	APacketSize: Integer;
	retry_cnt: Integer;
begin
	Result := False;
	retry_cnt := 0;
	// _CS_SockSendAcc.Acquire; // 임계영역 설정. 접수창 전용.

Retry:
	_CS_SockSendAcc.Acquire;

	try
    if TCPAccept.Tag = 1 then
    begin
      slList.Add('');
      Exit;
    end;

    if bOptCd then
      AMsgCode := 'C001'
    else
      AMsgCode := '0000';

    if ASendData = '9999' then
      AMsgCode := '9999'
    else
      FSendOTPCount2 := 0;

    EndData := False;
    RecvData := '';
		gsSendSockAcceptCon := 'None';
    SetDebugeWrite(Format('SendSockAccept Start : [OPTCnt - %d] [PingCnt - %d]', [FSendOTPCount2, FSendPingCount2]));
    try
			tmPing2.Enabled := False;
      gsSendSockAcceptData := Format('[%s] : %s', [ FormatDateTime('YYYY-MM-DD HH:NN:SS', Now), ASendData]);

      SetDebugeWrite('SendSockAccept Start : 1');
      if TCPAccept.Connected then
      begin
        SetDebugeWrite('SendSockAccept Start : 2');
        slList.Clear;
        FSendPingCount2 := 0;
        gsSEndSockAcceptHb := FSendPingCount2;
        TCPAccept.ReadTimeout := ATimeOut;
				gsSendSockAcceptCon := 'True';
        try
          AErrorCode := NO_ERROR_CODE;
          TempStr := UTF8Encode(ASendData);
          // [hjf] Blowfish + Base64 -> Blowfish 만(Base64 제거)
          SetDebugeWrite(Format('SendSockAccept End : %s [OPTCnt - %d] [PingCnt - %d]', [ASendData, FSendOTPCount2, FSendPingCount2]));
					APacketSize := MakePacket(SendAcceptPacketData, AMsgCode, TempStr, FSENDOTP2);

          TCPAccept.IOHandler.Write(RawToBytes(SendAcceptPacketData[0], APacketSize));
        except
          on E: Exception do
          begin
            OutputDebugString
              (PChar(Format('TCPAccept - WriteBuffer: %s[IP: %s]',
              [E.Message, SERVER_IP])));

            if (retry_cnt = 0) then
            begin
              retry_cnt := 1;
            end;

            raise;
          end;
        end;

        // [hjf] Header에서 패킷 길이 읽어와서 메모리를 읽는다.
        try
          SetLength(BRHeader, MaxArrHeadSize);
          TCPAccept.IOHandler.ReadBytes(BRHeader, MaxArrHeadSize, False);
          Move(BRHeader[0], AHeader, MaxArrHeadSize);
          AHeader.PacketLength := ntohl(AHeader.PacketLength);
        except
          on E: Exception do
          begin
            OutputDebugString
              (PChar(Format('TCPAccept - ReadBuffer[Header]: %s[IP: %s]',
              [E.Message, SERVER_IP])));
            raise;
          end;
        end;

        TCPAccept.Tag := 1;
        repeat
          if AHeader.PacketLength > 0 then
          begin
            try
              SetLength(BRBody, AHeader.PacketLength);
              TCPAccept.IOHandler.ReadBytes(BRBody, AHeader.PacketLength, False);
            except
              on E: Exception do
              begin
                Log('ReadBytes fail ' + (PChar(Format('TCPAccept - ReadBuffer: %s[IP: %s]', [E.Message, SERVER_IP]))), LOGDATAPATHFILE);
                raise;
              end;
            end;
            TCPAccept.IOHandler.ReadString(1);

						TempStr := BlowFishDecrypt(FRECVOTP2, BRBody[0], AHeader.PacketLength);
            TempStr := UTF8Decode(TempStr);

//            SetDebugeWrite('RecvSockAccept : ');
            SetDebugeWrite('RecvSockAccept : ' + TempStr);

            if AMsgCode = 'C001' then
            begin
              GetOTPCode(TempStr, 1);
              EndData := True;
            end else
            if GetRecvPage(TempStr) then
              EndData := True;

            slList.Add(TempStr);
          end else
          begin
            slList.Add('');
          end;
        until EndData;
        AErrorCode := NO_ERROR_CODE;
        gsPreMsgCode := AMsgCode;
        Result := True;
        tmPing2.Enabled := True;
        TCPAccept.Tag := 0;
      end else
      begin
				gsSendSockAcceptCon := 'False';
        tmPing2.Enabled := False;
        if (retry_cnt = 0) then
        begin
          retry_cnt := 1;
        end;
      end;
    except
      on E: Exception do
      begin
        Log(E.Message, LOGDATAPATHFILE);
        slList.Add('');
        Result := False;
        TCPAccept.Tag := 0;
        tmPing2.Enabled := False;
        TCPAccept.Disconnect;
      end;
    end;
  finally
//    SendAcceptPacketData := Nil;
//    BRHeader  := Nil;
//    BRBody  := Nil;
    _CS_SockSendAcc.Release; // 임계영역 설정. 접수창 전용.
  end;

  if (retry_cnt = 1) then
  begin
    if ( AConfSlip <> '' ) And ( Trim(gsErrorTxt) = '' ) then
    begin
      gsErrorTxt := ' SendSockAccept DoReConnect : ' + FormatDateTime('YYYY-MM-DD HH:NN:SS', Now) +
										' - 접수번호 : ' + AConfSlip +
                    ' - Heart Bit Count : ' + IntToStr(gsSEndSockAcceptHb) +
                    ' - PreMsgCode : ' + gsPreMsgCode +
										' - ConnectYN : ' + gsSendSockAcceptCon +
                    ' - XML전문 : ' + En_Coding(gsSendSockAcceptData);
    end;

    retry_cnt := 2;
    DoReConnect(1);  // 재접속후 재호출

    goto Retry;
  end;
end;

function Tdm.SendSockLBS(const ASendData: string; var slList: TStringList;
  var AErrorCode: Integer; bOptCd: Boolean; ATimeOut: Integer;
  AConfSlip: String): Boolean;
const
	_PACKET_SIZE = 4 * 1024;
label
	Retry;
var
	TempStr : AnsiString;

  EndData: Boolean;
	RecvData: string;
	AMsgCode: AnsiString;
  AHeader: TTCKCommonHeader;
	APacketSize: Integer;
	retry_cnt: Integer;
begin
	Result := False;
	retry_cnt := 0;
	// _CS_SockSendAcc.Acquire; // 임계영역 설정. 접수창 전용.

Retry:
	_CS_SockSendLBS.Acquire;

	try
		if TCPClientLBS.Tag = 1 then
    begin
			slList.Add('');
      Exit;
    end;

    if bOptCd then
      AMsgCode := 'C001'
    else
      AMsgCode := '0000';

    if ASendData = '9999' then
      AMsgCode := '9999'
    else
			FSendOTPCount3 := 0;

    EndData := False;
		RecvData := '';
		gsSendSockAcceptLBS := 'None';
		SetDebugeWrite(Format('SendSockLBS Start : [OPTCnt - %d] [PingCnt - %d]', [FSendOTPCount3, FSendPingCount2]));
    try
			tmPing3.Enabled := False;
			gsSendSockAcceptData := Format('[%s] : %s', [ FormatDateTime('YYYY-MM-DD HH:NN:SS', Now), ASendData]);

			SetDebugeWrite('SendSockLBS Start : 1');
			if TCPClientLBS.Connected then
			begin
				SetDebugeWrite('SendSockLBS Start : 2');
        slList.Clear;
				FSendPingCount3 := 0;
				gsSEndSockAcceptHb := FSendPingCount3;
				TCPClientLBS.ReadTimeout := ATimeOut;
				gsSendSockAcceptLBS := 'True';
        try
          AErrorCode := NO_ERROR_CODE;
					TempStr := UTF8Encode(ASendData);
          // [hjf] Blowfish + Base64 -> Blowfish 만(Base64 제거)
					SetDebugeWrite(Format('SendSockLBS End : %s [OPTCnt - %d] [PingCnt - %d]', [ASendData, FSendOTPCount3, FSendPingCount3]));
					APacketSize := MakePacket(SendAcceptPacketData, AMsgCode, TempStr, FSENDOTP3);

					TCPClientLBS.IOHandler.Write(RawToBytes(SendAcceptPacketData[0], APacketSize));
				except
          on E: Exception do
          begin
            OutputDebugString
							(PChar(Format('TCPClientLBS - WriteBuffer: %s[IP: %s]',
							[E.Message, SERVER_IP])));

            if (retry_cnt = 0) then
            begin
              retry_cnt := 1;
            end;

            raise;
          end;
        end;

        // [hjf] Header에서 패킷 길이 읽어와서 메모리를 읽는다.
        try
					SetLength(BRHeader, MaxArrHeadSize);
					TCPClientLBS.IOHandler.ReadBytes(BRHeader, MaxArrHeadSize, False);
					Move(BRHeader[0], AHeader, MaxArrHeadSize);
          AHeader.PacketLength := ntohl(AHeader.PacketLength);
        except
          on E: Exception do
          begin
						OutputDebugString
							(PChar(Format('TCPClientLBS - ReadBuffer[Header]: %s[IP: %s]',
              [E.Message, SERVER_IP])));
            raise;
          end;
        end;

				TCPClientLBS.Tag := 1;
        repeat
          if AHeader.PacketLength > 0 then
          begin
            try
              SetLength(BRBody, AHeader.PacketLength);
							TCPClientLBS.IOHandler.ReadBytes(BRBody, AHeader.PacketLength, False);
            except
              on E: Exception do
              begin
								Log('ReadBytes fail ' + (PChar(Format('TCPClientLBS - ReadBuffer: %s[IP: %s]', [E.Message, SERVER_IP]))), LOGDATAPATHFILE);
								raise;
              end;
            end;
            TCPClientLBS.IOHandler.ReadString(1);

						TempStr := BlowFishDecrypt(FRECVOTP3, BRBody[0], AHeader.PacketLength);
						TempStr := UTF8Decode(TempStr);

						SetDebugeWrite('RecvSockLBS : ' + TempStr);

            if AMsgCode = 'C001' then
            begin
							GetOTPCode(TempStr, 3);
							EndData := True;
						end else
            if GetRecvPage(TempStr) then
              EndData := True;

            slList.Add(TempStr);
          end else
          begin
            slList.Add('');
          end;
				until EndData;
        AErrorCode := NO_ERROR_CODE;
				gsPreMsgCode := AMsgCode;
        Result := True;
				tmPing3.Enabled := True;
				TCPClientLBS.Tag := 0;
			end else
			begin
				gsSendSockAcceptLBS := 'False';
				tmPing3.Enabled := False;
        if (retry_cnt = 0) then
        begin
					retry_cnt := 1;
        end;
      end;
    except
      on E: Exception do
      begin
        Log(E.Message, LOGDATAPATHFILE);
				slList.Add('');
				Result := False;
				TCPClientLBS.Tag := 0;
				tmPing3.Enabled := False;
				TCPClientLBS.Disconnect;
      end;
    end;
  finally
//    SendAcceptPacketData := Nil;
//    BRHeader  := Nil;
//    BRBody  := Nil;
    _CS_SockSendLBS.Release; // 임계영역 설정. 접수창 전용.
  end;

  if (retry_cnt = 1) then
  begin
    if ( AConfSlip <> '' ) And ( Trim(gsErrorTxt) = '' ) then
    begin
      gsErrorTxt := ' SendSockAccept DoReConnect : ' + FormatDateTime('YYYY-MM-DD HH:NN:SS', Now) +
                    ' - 접수번호 : ' + AConfSlip +
                    ' - Heart Bit Count : ' + IntToStr(gsSEndSockAcceptHb) +
										' - PreMsgCode : ' + gsPreMsgCode +
										' - ConnectYN : ' + gsSendSockAcceptLBS +
                    ' - XML전문 : ' + En_Coding(gsSendSockAcceptData);
    end;

    retry_cnt := 2;
		DoReConnect(2);  // 재접속후 재호출

    goto Retry;
  end;
end;

{ *==============================================================================
  재접속
  @return Check
  =============================================================================== }
function Chk_CidPer: Boolean;
var
  xmldata, errmsg: string;
  ErrCode: Integer;
  tmpStr: string;
  tmParam: string;
begin
  try
    tmParam := '';
    if not RequestBase(GetCallable05('chk_cid_per', 'cas.chk_cid_per', tmParam),
      xmldata, ErrCode, errmsg) then
    begin
      GMessagebox('CID대표번호DNIS관리 설정권한 조회중 오류가 발생했습니다.', CDMSE);
      Result := False;
      Exit;
    end;
    tmpStr := xmldata;
    tmpStr := stringreplace(tmpStr, '"', '', [rfReplaceAll]);
    tmpStr := stringreplace(tmpStr, #13, '', [rfReplaceAll]);
    tmpStr := stringreplace(tmpStr, #10, '', [rfReplaceAll]);
    tmpStr := UpperCase(tmpStr);

    if Pos('<RESULT VALUE=', tmpStr) > 1 then
      tmpStr := Copy(tmpStr, Pos('<RESULT VALUE=', tmpStr) + 14, 1)
    else
      tmpStr := 'N';
    OutputDebugString(PChar('CID대표번호DNIS관리:' + tmpStr));
    if tmpStr <> 'Y' then
    begin
      Result := False;
    end else
    begin
      Result := True;
    end;

  except
    on E: Exception do
    begin
      GMessagebox('CID대표번호DNIS관리 설정권한 조회중 오류발생' + #13#10 + '(' + E.Message +
        ')', CDMSE);
      Result := False;
    end;
  end;
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
Var i : Integer;
begin
  try
    _CS_SockSend := TCriticalSection.Create; // 임계영역 설정.
    for i := 0 to JON03_MAX_CNT - 1 do
      _CS_SockSendJ03[i] := TCriticalSection.Create; // 임계영역 설정. 접수현황 전용
    _CS_SockSendJ54 := TCriticalSection.Create;
		_CS_SockSendAcc := TCriticalSection.Create; // 임계영역 설정. 접수창 전용.
		_CS_SockSendLBS := TCriticalSection.Create; // LBS
		_CS_MakePacket := TCriticalSection.Create;
		_CS_XMLParse   := TCriticalSection.Create;

    // 오샷 SMS전용
    Dm.IdTCPCtOShotSMS.Host := '203.251.202.55';
    Dm.IdTCPCtOShotSMS.Port := 33300;
    // 오샷 MMS전용
    Dm.IdTCPCtOShotMMS.Host := '203.251.202.55';
    Dm.IdTCPCtOShotMMS.Port := 33002;

    SetLength(SendPacketData, MaxCommandSize);
    SetLength(SendAcceptPacketData, MaxCommandSize);
  except
    on E: Exception do
    begin
      Log('DataBase Connect fail ' + CRLF + E.Message, LOGDATAPATHFILE);
    end;
  end;
end;

procedure Tdm.DataModuleDestroy(Sender: TObject);
Var i : Integer;
begin
    _CS_SockSend.Free;
    for i := 0 to JON03_MAX_CNT - 1 do
      _CS_SockSendJ03[i].Free;
    _CS_SockSendJ54.Free;
		_CS_SockSendAcc.Free;
		_CS_SockSendLBS.Free;
    _CS_MakePacket.Free;
    _CS_XMLParse.Free;

    SendPacketData := Nil;
    SendAcceptPacketData :=Nil;
end;

function Tdm.DoReConnect(iType: Integer): Boolean;
begin
	SetDebugeWrite('dm.DoReConnect');
  Result := True;
  try
		if SockConnect(iType, 3000) then Exit;

		SetServerIP;

    while ServerIPChange do
    begin
      if SockConnect(iType, 3000) then Exit;
    end;

    SERVER_IP := GS_BACKUP_SVRIP[0];
    if Trim(TESTSERVER_IP) <> '' then
      SERVER_IP := TESTSERVER_IP;

    GMessagebox('네트워크 접속 후 다시 작업 해 주십시오', CDMSE);
    Result := False;
  except
    Result := False;
  end;
end;

{ *==============================================================================
  CMN Server 접속
  @param AIP 접속 서버 IP
  @param APort 접속서버 Port
  @param ATimeOut 전속 후 TimeOut 시간
  @return 접속 성공 실패
  =============================================================================== }
function Tdm.SockConnect(iType: Integer; ATimeOut: Integer): Boolean;
begin
	Result := True;

  SetDebugeWrite( 'TCPClient.Host : ' + SERVER_IP + ', FSendOTPCount : ' + IntToStr(FSendOTPCount) + ', FSendOTPCount2 : ' + IntToStr(FSendOTPCount2));

  try
		if iType = 0 then
		begin
			if not TCPClient.Connected then
			begin
				FReConnectCheck := True;
				// FReconnectCount := 0;

				TCPClient.Host := SERVER_IP;
				TCPClient.Port := StrToInt(SERVER_PORT);
				TCPClient.ReadTimeout := ATimeOut;
				TCPClient.ConnectTimeout := ATimeOut;
				TCPClient.Connect;
			end;
		end else
		if iType = 1 then
		begin
			if not TCPAccept.Connected then
			begin
				FReconnectCheck2 := True;
				// FReconnectCount2 := 0;

				TCPAccept.Host := SERVER_IP;
				TCPAccept.Port := StrToInt(SERVER_PORT);
				TCPAccept.ReadTimeout := ATimeOut;
				TCPAccept.ConnectTimeout := ATimeOut;
				TCPAccept.Connect;
			end;
		end else
		if iType = 2 then
		begin
			if not TCPClientLBS.Connected then
			begin
				FReconnectCheck3 := True;

				TCPClientLBS.Host := SERVER_IP;
				TCPClientLBS.Port := StrToInt(SERVER_PORT);
				TCPClientLBS.ReadTimeout := ATimeOut;
				TCPClientLBS.ConnectTimeout := ATimeOut;
				TCPClientLBS.Connect;
			end;
		end;
  except
    on E: Exception do
    begin
      /// DebugMessage
      OutputDebugString(PChar(Format('Failed connect [IP: %s, %d]', [SERVER_IP, iType])));
      Result := False;
    end;
  end;
end;

{ *==============================================================================
  OTP 코드 가져오기
  @param AXML XML 전문
  @return Check
  =============================================================================== }
procedure Tdm.GetOTPCode(AXML: WideString; iType: Integer);
var
  xdom: msDomDocument;
  XMLNode: IXMLDomNodeList;
  TempStr: string;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXML) then Exit;
    try
      XMLNode := xdom.documentElement.selectNodes('/cdms/Service/Error');
      TempStr := XMLNode.item[0].attributes.getNamedItem('Code').Text;
      if TempStr = '0000' then
      begin
        XMLNode := xdom.documentElement.selectNodes('/cdms/Service/Data/Member');

        if iType = 0 then
        begin
          FSENDOTP := XMLNode.item[0].attributes.getNamedItem('PrivateKey').Text;
          FRECVOTP := FSENDOTP;
          FSendOTPCount := 0;
        end else
        if iType = 1 then
        begin
          FSENDOTP2 := XMLNode.item[0].attributes.getNamedItem('PrivateKey').Text;
          FRECVOTP2 := FSENDOTP2;
          FSendOTPCount2 := 0;
        end else
        if iType = 3 then
        begin
          FSENDOTP3 := XMLNode.item[0].attributes.getNamedItem('PrivateKey').Text;
          FRECVOTP3 := FSENDOTP3;
          FSendOTPCount3 := 0;
        end;
      end;
    except
    end;
  finally
    xdom := nil;
  end;
end;

{ *==============================================================================
  마지막 페이지 확인
  @param AXML XML 전문
  @return Check
  =============================================================================== }
function Tdm.GetRecvPage(AXML: WideString): Boolean;
var
  xdom: msDomDocument;
  XMLNode: IXMLDomNodeList;
  NowPage: string;
  FinalPage: string;
  sPage: string;
begin
	Result := True;
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXML) then Exit;

    try
      XMLNode := xdom.documentElement.selectNodes('/cdms/Service/Data');

      if XMLNode.length = 0 then
      begin
        NowPage := '1';
        FinalPage := 'N';
        Result := True;

        Exit;
      end;

      Frm_Flash.cxPBar1.Properties.Max := -100;
      Frm_Flash.cxPBar1.Properties.Min := -100;
      Frm_Flash.cxPBar1.Properties.Marquee := True;
      Frm_Flash.cxPBar1.Properties.ShowTextStyle := cxtsText;

      if XMLNode.item[0].attributes.length in [3, 4] then
      begin
        NowPage := XMLNode.item[0].attributes.getNamedItem('CurPage').Text;
        FinalPage := UpperCase(XMLNode.item[0].attributes.getNamedItem('HasMore').Text);
        if NowPage = '' then
          NowPage := '1';
        if FinalPage = '' then
          FinalPage := 'N';
        if Pos('/', NowPage) > 0 then
          sPage := Copy(NowPage, 1, Pos('/', NowPage) - 1)
        else
          sPage := NowPage;
        if StrToIntDef(sPage, 0) > 1 then
        begin
          Frm_Flash.lblCnt.Caption := NowPage;
          if (not Frm_Flash.Visible) then
          begin
            Frm_Flash.Show;
            Sleep(10);
            Frm_Flash.BringToFront;
          end;
          Application.ProcessMessages;
        end;
      end else
      begin
        NowPage := '1';
        FinalPage := 'N';
      end;
      if assigned(FOnCMNPacketPage) then
        FOnCMNPacketPage(NowPage, FinalPage);

      Result := (FinalPage = 'N');
    except
    end;
  finally
    xdom := nil;
  end;
end;

function Tdm.GetRecvPage_JON54(AXML: WideString): Boolean;
var
  xdom: msDomDocument;
  XMLNode: IXMLDomNodeList;
  NowPage: string;
  FinalPage: string;
begin
  Result := True;
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXML) then Exit;
    try
      XMLNode := xdom.documentElement.selectNodes('/cdms/Service/Data');

      if XMLNode.length = 0 then
      begin
        NowPage := '1';
        FinalPage := 'N';
        Result := True;

        Exit;
      end;

      if XMLNode.item[0].attributes.length in [4,5,6] then
      begin
        NowPage := XMLNode.item[0].attributes.getNamedItem('CurPage').Text;
        FinalPage := UpperCase(XMLNode.item[0].attributes.getNamedItem('HasMore').Text);
        if NowPage = '' then
          NowPage := '1';
        if FinalPage = '' then
          FinalPage := 'N';
       { if Pos('/', NowPage) > 0 then
          sPage := Copy(NowPage, 1, Pos('/', NowPage) - 1)
        else
          sPage := NowPage;
        if StrToIntDef(sPage, 0) > 1 then
        begin
          Frm_Flash.lblCnt.Caption := NowPage;
          if (not Frm_Flash.Visible) then
          begin
            Frm_Flash.Show;
            Sleep(10);
            Frm_Flash.BringToFront;
          end;
          Application.ProcessMessages;
        end; }
      end else
      begin
        NowPage := '1';
        FinalPage := 'N';
      end;
      if assigned(FOnCMNPacketPage) then
        FOnCMNPacketPage(NowPage, FinalPage);

      Result := (FinalPage = 'N');
    except
    end;
  finally
    xdom := nil;
  end;
end;

procedure Tdm.LoadServerIP;
var
  I: Integer;
begin
  try
    if GT_ConnectionType = ct203 then
    begin
      SetLength(GS_BACKUP_SVRIP_STATIC, length(GS_BACKUP_SVRIP_STATIC_203));

      for I := 0 to length(GS_BACKUP_SVRIP_STATIC_203) - 1 do
      begin
        GS_BACKUP_SVRIP_STATIC[I] := GS_BACKUP_SVRIP_STATIC_203[I];
      end;
    end else
    if GT_ConnectionType = ct58 then
    begin
      SetLength(GS_BACKUP_SVRIP_STATIC, length(GS_BACKUP_SVRIP_STATIC_58));

      for I := 0 to length(GS_BACKUP_SVRIP_STATIC_58) - 1 do
      begin
        GS_BACKUP_SVRIP_STATIC[I] := GS_BACKUP_SVRIP_STATIC_58[I];
      end;
    end else
    if GT_ConnectionType = ct61 then
    begin
      SetLength(GS_BACKUP_SVRIP_STATIC, length(GS_BACKUP_SVRIP_STATIC_61));

      for I := 0 to length(GS_BACKUP_SVRIP_STATIC_61) - 1 do
      begin
        GS_BACKUP_SVRIP_STATIC[I] := GS_BACKUP_SVRIP_STATIC_61[I];
      end;
    end else
    if GT_ConnectionType = ctTest then
    begin
      SetLength(GS_BACKUP_SVRIP_STATIC, 1);
      GS_BACKUP_SVRIP_STATIC[0].IP := SERVER_IP_TEST;
    end else
    begin
      SetLength(GS_BACKUP_SVRIP_STATIC, length(GS_BACKUP_SVRIP_STATIC_ALL));

      for I := 0 to length(GS_BACKUP_SVRIP_STATIC_ALL) - 1 do
        GS_BACKUP_SVRIP_STATIC[I] := GS_BACKUP_SVRIP_STATIC_ALL[I];
    end;
  except
  end;
end;

procedure LOCPREM_TUN;
var
	sQuery: string;
begin
	MakeTable_SQLite;

	Try

		sQuery := 'select * from CHARGE_GROUP where CG_GUBUN = ''SM'' ';
		dmCharge.proc_SQLite_init;
		dmCharge.FDQuery_SQLite.Close;
		dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
		dmCharge.FDQuery_SQLite.OPEN;
		
		if dmCharge.FDQuery_SQLite.eof then       //스마트요금제 <=요금제 전체등록 20150330 KHS
		begin
			sQuery := 'INSERT INTO CHARGE_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
							+ 'VALUES (' + IntToStr(9999) + ',''SM'',''SM001'',''스마트요금제'',0) ';
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.Close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

    sQuery := 'select * from CHARGE_GROUP where CG_CD = ''CF999'' ';
		dmCharge.proc_SQLite_init;
		dmCharge.FDQuery_SQLite.Close;
		dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
		dmCharge.FDQuery_SQLite.OPEN;

		if dmCharge.FDQuery_SQLite.eof then    //스마트요금제 <=우선요금제 전체등록 20150330 KHS
    begin
			sQuery := 'INSERT INTO CHARGE_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
              + 'VALUES (' + IntToStr(9998) + ',''CF'',''CF999'',''스마트요금(우선)'',0) ';
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.Close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

		Set_PremRec;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure MakeTable_SQLite;
var
	sQuery: string;
	iTmp : Integer;
	slTable : TStringList;
begin
	slTable := TStringList.Create;
	try                             
		sQuery := 'Select * from sqlite_master where type = ''table'' ' ;
		dmCharge.proc_SQLite_init;
		dmCharge.FDQuery_SQLite.close;
		dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
		dmCharge.FDQuery_SQLite.open;

		while Not dmCharge.FDQuery_SQLite.Eof do
		begin
			slTable.Add(dmCharge.FDQuery_SQLite.FieldByName('name').AsString);	
			dmCharge.FDQuery_SQLite.Next;
		end;

		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_BGROUP_CHARGE_TYPE');           //법인 요금제
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_BGROUP_CHARGE_TYPE( '
							+ 'CT_NO integer NOT NULL, '
							+ 'CT_BR_NO varchar(5) NOT NULL, '
							+ 'CT_KEY_NUM varchar(15) NOT NULL, '
							+ 'CT_CB_CODE varchar(5) NOT NULL, '
							+ 'CT_GUBUN varchar(2) DEFAULT NULL, '
							+ 'CT_CD varchar(5) DEFAULT NULL, '
							+ 'IN_DATE varchar(10) DEFAULT NULL, '
							+ 'CT_PASSVALUE integer DEFAULT NULL, '
							+ 'CT_FIRST_CD varchar(5) DEFAULT NULL, '
							+ 'CT_PASS_GUBUN varchar(5) DEFAULT NULL, '
							+ 'CT_PASS_CD varchar(5) DEFAULT NULL, '
							+ 'CT_PASS_VIEW varchar(1) DEFAULT NULL, '
							+ 'PREM_NSEQ integer DEFAULT NULL, '
							+ 'PREM_STTIME char(5) DEFAULT NULL, '
							+ 'PREM_EDTIME char(5) DEFAULT NULL, '
							+ 'CT_GUBUN2 CHAR(2) DEFAULT NULL, '
							+ 'CT_CD2 CHAR(5) DEFAULT NULL, '
							+ 'PRIMARY KEY (CT_NO,CT_BR_NO,CT_KEY_NUM,CT_CB_CODE), '
							+ 'UNIQUE(CT_CB_CODE) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_CHART_CHARGE');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_CHART_CHARGE( '
							+ 'CC_NO integer NOT NULL, '
							+ 'CC_CD varchar(5) NOT NULL, '
							+ 'CC_VALUE integer NOT NULL, '
							+ 'CC_STCITY varchar(4) NOT NULL, '
							+ 'CC_STWARD varchar(20) DEFAULT NULL, '
							+ 'CC_STDONG varchar(20) DEFAULT NULL, '
							+ 'CC_EDCITY varchar(4) DEFAULT NULL, '
							+ 'CC_EDWARD varchar(20) DEFAULT NULL, '
							+ 'CC_EDDONG varchar(20) DEFAULT NULL, '
							+ 'PRIMARY KEY (CC_NO,CC_CD), '
							+ 'UNIQUE(CC_CD,CC_STCITY,CC_STWARD,CC_EDCITY,CC_EDWARD) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_DIS_CHARGE');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_DIS_CHARGE( '
							+ 'DC_NO integer NOT NULL, '
							+ 'DC_CD varchar(5) NOT NULL, '
							+ 'DC_GERVALUE integer DEFAULT ''0'', '
							+ 'DC_GERTERM integer DEFAULT ''0'', '
							+ 'DC_OVERVALUE integer DEFAULT ''0'', '
							+ 'DC_OVERTERM integer DEFAULT ''0'', '
							+ 'DC_LOWVALUE integer DEFAULT ''0'', '
							+ 'DC_STCITY varchar(4) NOT NULL, '
							+ 'DC_STWARD varchar(20) DEFAULT NULL, '
							+ 'DC_STDONG varchar(20) DEFAULT NULL, '
							+ 'DC_EDCITY varchar(4) DEFAULT NULL, '
							+ 'DC_EDWARD varchar(20) DEFAULT NULL, '
							+ 'DC_EDDONG varchar(20) DEFAULT NULL, '
							+ 'PRIMARY KEY (DC_NO,DC_CD), '
							+ 'UNIQUE(DC_CD,DC_STCITY,DC_STWARD,DC_STDONG,DC_EDCITY,DC_EDWARD,DC_EDDONG) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_FIRST_CHARGE');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_FIRST_CHARGE( '
							+ 'FC_NO integer NOT NULL, '
							+ 'FC_CD varchar(5) NOT NULL, '
							+ 'FC_VALUE integer NOT NULL, '
							+ 'FC_STCITY varchar(4) NOT NULL, '
							+ 'FC_STWARD varchar(20) DEFAULT NULL, '
							+ 'FC_STDONG varchar(20) DEFAULT NULL, '
							+ 'FC_EDCITY varchar(4) DEFAULT NULL, '
							+ 'FC_EDWARD varchar(20) DEFAULT NULL, '
							+ 'FC_EDDONG varchar(20) DEFAULT NULL, '
							+ 'PRIMARY KEY (FC_NO,FC_CD), '
							+ 'UNIQUE(FC_CD,FC_STCITY,FC_STWARD,FC_STDONG,FC_EDCITY,FC_EDWARD,FC_EDDONG) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_FIRST_DETAIL_CHARGE');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_FIRST_DETAIL_CHARGE( '
							+ 'FP_NO integer NOT NULL, '
							+ 'FP_CD varchar(5) NOT NULL, '
							+ 'FP_VALUE integer NOT NULL, '
							+ 'FP_STCITY varchar(4) NOT NULL, '
							+ 'FP_STWARD varchar(20) DEFAULT NULL, '
							+ 'FP_STDONG varchar(20) DEFAULT NULL, '
							+ 'FP_STPOI varchar(30) DEFAULT NULL, '
							+ 'FP_EDCITY varchar(4) DEFAULT NULL, '
							+ 'FP_EDWARD varchar(20) DEFAULT NULL, '
							+ 'FP_EDDONG varchar(20) DEFAULT NULL, '
							+ 'FP_EDPOI varchar(30) DEFAULT NULL, '
							+ 'PRIMARY KEY (FP_NO,FP_CD), '
							+ 'UNIQUE(FP_CD,FP_STCITY,FP_STWARD,FP_STDONG,FP_STPOI,FP_EDCITY,FP_EDWARD,FP_EDDONG,FP_EDPOI) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

		iTmp := -1;
		iTmp := slTable.IndexOf('CHARGE_GROUP');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CHARGE_GROUP( '
							+ 'CG_NO integer NOT NULL DEFAULT ''0'', '
							+ 'CG_CD varchar(5) NOT NULL, '
							+ 'CG_GUBUN varchar(2) NOT NULL, '
							+ 'CG_NM varchar(20) NOT NULL, '
							+ 'CG_GERVALUE integer DEFAULT NULL, '
							+ 'PRIMARY KEY (CG_NO,CG_CD) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

		{
		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_LOCAL_MASTER');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_LOCAL_MASTER( '
							+ 'MASTER_PW varchar(10) DEFAULT NULL, '
							+ 'IN_DATE datetime DEFAULT NULL )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;
		
		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_LOCAL_POI');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_LOCAL_POI( '
							+ 'SI varchar(15)  NOT NULL, '
							+ 'GU varchar(20)  NOT NULL, '
							+ 'DONG varchar(20)  NOT NULL, '
							+ 'DNAME varchar(60)  NOT NULL, '
							+ 'NPOI varchar(60)  DEFAULT NULL, '
							+ 'XPOINT varchar(15)  DEFAULT NULL, '
							+ 'YPOINT varchar(15)  DEFAULT NULL, '
							+ 'UserID varchar(10)  DEFAULT NULL, '
							+ 'UserName varchar(20)  DEFAULT NULL, '
							+ 'LastUpTime varchar(30)  DEFAULT NULL, '
							+ 'Sync varchar(3)  DEFAULT NULL, '
							+ 'SyncL varchar(3)  DEFAULT NULL, '
							+ 'PRIMARY KEY (SI,GU,DONG,DNAME) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end; }

		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_SVPREM_MAST');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_SVPREM_MAST( '
							+ 'NSEQ integer NOT NULL DEFAULT ''0'', '
							+ 'CP_TIT varchar(30) NOT NULL, '
							+ 'USE_YN char(1) default ''Y'', '
							+ 'PRIMARY KEY (NSEQ,CP_TIT) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_SVPREM_DETAIL');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_SVPREM_DETAIL( '
							+ 'NSEQ integer NOT NULL DEFAULT ''0'', '
							+ 'ST_AMT integer NOT NULL DEFAULT ''0'', '
							+ 'ED_AMT integer NOT NULL DEFAULT ''0'', '
							+ 'RESULT_AMT integer DEFAULT ''0'', '
							+ 'PRIMARY KEY (NSEQ,ST_AMT,ED_AMT) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_PREM_MAST');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_PREM_MAST( '
							+ 'NSEQ integer NOT NULL DEFAULT ''0'', '
							+ 'CP_TIT varchar(30) NOT NULL, '
							+ 'USE_YN char(1) default ''Y'', '
							+ 'PRIMARY KEY (NSEQ,CP_TIT) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_PREM_DETAIL');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_PREM_DETAIL( '
							+ 'NSEQ int(4), '
							+ 'ST_AMT integer, '
							+ 'ED_AMT integer, '
							+ 'RESULT_AMT integer, '
							+ 'PRIMARY KEY (NSEQ,ST_AMT,ED_AMT) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

		iTmp := -1;
		iTmp := slTable.IndexOf('CHARGE_TERM_TYPE');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CHARGE_TERM_TYPE( '
							+ 'CT_NO integer NOT NULL, '
							+ 'CT_CD varchar(5) NOT NULL, '
							+ 'CT_KM0 integer DEFAULT NULL, '
							+ 'CT_KM1 integer DEFAULT NULL, '
							+ 'CT_VALUE integer DEFAULT NULL, '
							+ 'PRIMARY KEY (CT_NO,CT_CD), '
							+ 'UNIQUE(CT_CD,CT_KM0,CT_KM1) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_CHARGE_TYPE');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_CHARGE_TYPE( '
							+ 'CT_NO integer NOT NULL, '
							+ 'CT_BR_NO varchar(5) NOT NULL, '
							+ 'CT_KEY_NUM varchar(15) NOT NULL, '
							+ 'CT_GUBUN varchar(2) DEFAULT NULL, '
							+ 'CT_CD varchar(5) DEFAULT NULL, '
							+ 'IN_DATE varchar(10) DEFAULT NULL, '
							+ 'CT_PASSVALUE integer DEFAULT NULL, '
							+ 'CT_FIRST_CD varchar(5) DEFAULT NULL, '
							+ 'CT_PASS_GUBUN varchar(5) DEFAULT NULL, '
							+ 'CT_PASS_CD varchar(5) DEFAULT NULL, '
							+ 'CT_PASS_VIEW varchar(1) DEFAULT NULL, '
							+ 'PREM_NSEQ integer DEFAULT NULL, '
							+ 'PREM_STTIME char(5) DEFAULT NULL, '
							+ 'PREM_EDTIME char(5) DEFAULT NULL, '
							+ 'CT_GUBUN2 CHAR(2) DEFAULT NULL, '
							+ 'CT_CD2 CHAR(5) DEFAULT NULL, '
							+ 'PRIMARY KEY (CT_NO,CT_BR_NO,CT_KEY_NUM), '
							+ 'UNIQUE(CT_KEY_NUM) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;

		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_TERM_CHARGE');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_TERM_CHARGE( '
							+ 'TC_NO integer NOT NULL, '
							+ 'TC_CD varchar(5) NOT NULL, '
							+ 'TC_VALUE integer DEFAULT NULL, '
							+ 'TC_STCITY varchar(4) DEFAULT NULL, '
							+ 'TC_STWARD varchar(20) DEFAULT NULL, '
							+ 'TC_STDONG varchar(20) DEFAULT NULL, '
							+ 'TC_EDCITY varchar(4) DEFAULT NULL, '
							+ 'TC_EDWARD varchar(20) DEFAULT NULL, '
							+ 'TC_EDDONG varchar(20) DEFAULT NULL, '
							+ 'TC_SUB_CD varchar(5) DEFAULT NULL, '
							+ 'TC_BV varchar(10) DEFAULT NULL, '
							+ 'TC_PASS_CD varchar(5) DEFAULT NULL, '
							+ 'PRIMARY KEY (TC_NO,TC_CD), '
							+ 'UNIQUE(TC_CD,TC_STCITY,TC_STWARD,TC_STDONG,TC_EDCITY,TC_EDWARD,TC_EDDONG) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;
		
		iTmp := -1;
		iTmp := slTable.IndexOf('CDMS_CHART_CHARGE_PLUS');
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE CDMS_CHART_CHARGE_PLUS( '
							+ 'CC_NO integer NOT NULL, '
							+ 'CC_CD varchar(5) NOT NULL, '
							+ 'CC_VALUE integer NOT NULL, '
							+ 'CC_STCITY varchar(4) NOT NULL, '
							+ 'CC_STWARD varchar(20) DEFAULT NULL, '
							+ 'CC_STDONG varchar(20) DEFAULT NULL, '
							+ 'CC_EDCITY varchar(4) DEFAULT NULL, '
							+ 'CC_EDWARD varchar(20) DEFAULT NULL, '
							+ 'CC_EDDONG varchar(20) DEFAULT NULL, '
							+ 'PRIMARY KEY (CC_NO,CC_CD), '
							+ 'UNIQUE(CC_CD,CC_STCITY,CC_STWARD,CC_EDCITY,CC_EDWARD) )'; 
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.ExecSQL;
		end;
		
		
		
	Finally
		slTable.Free;
	end;

end;

procedure Tdm.SetServerIP;
Var SPort, OPort : String;
begin
  LoadServerIP; // 접속타입에 따라 아이피 할당

  // GS_BACKUP_SVRIP : 실제 접속 목록
  GS_BACKUP_SVRIP.Clear;

  SetServerALL;

  if GT_ConnectionType <> ctCIS then RandomIP; // 랜덤으로 IP 목록(GS_BACKUP_SVRIP) 생성

  SERVER_IP := GS_BACKUP_SVRIP[0];

  if Trim(TESTSERVER_IP) <> '' then
    SERVER_IP := TESTSERVER_IP;

  if GT_ConnectionType = ctTest then
  begin
    if gsTestPORTYN = 'Y' then
    begin
      SPort := '21108'; // 테스트 스마트요금
      OPort := '21109'; // 테스트 스마트요금
    end else
    begin
      SPort := '21106';  // 운영 DB테스트 포트 - 상담원 업데이트 시에는 무조건 실 운영테스트 포트로 업데이트 해야됨 20130405 LYB ..
      OPort := '21107';
    end;
  end;

  if GS_PRJ_AREA = 'O' then // 지방
    SERVER_PORT := IfThen(GT_ConnectionType = ctTest, OPort, SERVER_PORT_REAL_O)
  else
    SERVER_PORT := IfThen(GT_ConnectionType = ctTest, SPort, SERVER_PORT_REAL_S);
end;

function Tdm.ServerIPChange: Boolean;
var
  I: Integer;
begin
  Result := False;

  for I := 0 to GS_BACKUP_SVRIP.Count - 1 do
  begin
    if GS_BACKUP_SVRIP[I] = SERVER_IP then
    begin
      if I = GS_BACKUP_SVRIP.Count - 1 then
        Break
      else
        SERVER_IP := GS_BACKUP_SVRIP[I + 1];

      Result := True;
      Exit;
    end;
  end;
end;

function ServerIPIndex: Integer;
var
  I: Integer;
begin
  Result := 0;

  for I := 0 to GS_BACKUP_SVRIP.Count - 1 do
  begin
    if GS_BACKUP_SVRIP[I] = SERVER_IP then
    begin
      Result := I;
      Exit;
    end;
  end;
end;

procedure Set_PremRec;
var
  nn: Integer;
  sQuery: string;
begin
	SetDebugeWrite('dm.Set_PremRec');
  try
    if CHARGE_GUBUN = 'P' then
    begin
			sQuery := 'select * from CDMS_PREM_MAST order by nseq ';
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.Close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.OPEN;

			SetLength(Prem_rec, dmCharge.FDQuery_SQLite.RecordCount + 1);
			Prem_rec[0].nseq := 0;
			Prem_rec[0].tit := '';
			if dmCharge.FDQuery_SQLite.RecordCount > 0 then
			begin
				dmCharge.FDQuery_SQLite.FindFirst;
				for nn := 0 to dmCharge.FDQuery_SQLite.RecordCount - 1 do
				begin
					Prem_rec[nn + 1].nseq := StrToInt(dmCharge.FDQuery_SQLite.Fieldbyname('nseq').asstring);
					Prem_rec[nn + 1].tit := dmCharge.FDQuery_SQLite.Fieldbyname('CP_TIT').asstring;
					dmCharge.FDQuery_SQLite.FindNext;
				end;
			end;
		end else
		if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
		begin
			sQuery := 'select * from CDMS_SVPREM_MAST order by nseq ';
			dmCharge.proc_mysql_init;
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.OPEN;
			SetLength(Prem_rec, dmCharge.FDQuery1.RecordCount + 1);
      Prem_rec[0].nseq := 0;
      Prem_rec[0].tit := '';
			if dmCharge.FDQuery1.RecordCount > 0 then
			begin
				dmCharge.FDQuery1.FindFirst;
				for nn := 0 to dmCharge.FDQuery1.RecordCount - 1 do
        begin
					Prem_rec[nn + 1].nseq := StrToInt(dmCharge.FDQuery1.Fieldbyname('nseq').asstring);
					Prem_rec[nn + 1].tit := dmCharge.FDQuery1.Fieldbyname('CP_TIT').asstring;
					dmCharge.FDQuery1.FindNext;
				end;
      end;
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure Tdm.Set_Web_URL;
var
  xmldata: string;
  FList: TStringList;
begin
  // CIS 접속 시도
  try
    if GS_PRJ_AREA = 'S' then xmldata := GetHttpData(GS_WEB_URL1) else
    if GS_PRJ_AREA = 'O' then xmldata := GetHttpData(GS_WEB_URL2);

{$IFDEF OUT_DEBUG_ON}
    OutputDebugString(PChar(Format('1.1> CIS 접속목록: %s', [xmldata])));
{$ENDIF}
  except
    xmldata := '';
  end;

 // CIS 접속 실패 시 외부서버
  if XmlData = '' then
  begin
    try
			if GS_PRJ_AREA = 'S' then	XmlData := GetHttpData(GS_WEB_URL1_EX) else
      if GS_PRJ_AREA = 'O' then	XmlData := GetHttpData(GS_WEB_URL2_EX);

      {$IFDEF OUT_DEBUG_ON}
			OutputDebugString(PChar(Format('1.2> GS_WEB_URL_EX 서버 접속목록: %s', [XmlData])));
			{$ENDIF}
    except
      XmlData := '';
    end;
	end;

  if (xmldata <> '') and (Copy(xmldata, 1, 2) = 'S|') then
  begin
    FList := TStringList.Create;
    try
      FList.Delimiter := '|';
      FList.DelimitedText := xmldata;

      if FList.Count < 5 then
        Exit;

      SERVER_WEB_IP := FList[1];
      SERVER_WEB_PORT := FList[2];

//      SERVER_WEB_IP := '203.251.202.13';

      MAP_URL := 'http://' + SERVER_WEB_IP + ':' + inttostr(StrToIntDef(SERVER_WEB_PORT, 8070)) + '/map/';
			DAUMMAP_URL := 'http://203.251.202.13:88/map/Daum1.jsp';
//			DAUMMAP_URL := 'http://gmgm.net/map/Daum1.html';
      ROADMAP_URL := 'http://gmgm.net/map/RoadView.html';
    finally
      FList.Free;
    end;
  end;
end;

procedure Tdm.SetServerALL;
Var Servers, WebUrl, CSIList, SchSvr, SchSvrIP, RotSvr, RotSvrIP : String;
    i, iPos, iPos1, iPos2 : Integer;
    FList : TStringList;
begin
  SetDebugeWrite('dm.SetServerALL');
  // CIS에 서버목록 요청
  try
    if GS_PRJ_AREA = 'S' then Servers := GetHttpData(GS_WEB_ALL1) else
    if GS_PRJ_AREA = 'O' then Servers := GetHttpData(GS_WEB_ALL2);
  except
    Servers := '';
  end;

  // CIS 접속 실패 시 외부서버
  if Servers = '' then
  begin
    try
      if GS_PRJ_AREA = 'S' then Servers := GetHttpData(GS_WEB_ALL1_EX) else
      if GS_PRJ_AREA = 'O' then Servers := GetHttpData(GS_WEB_ALL2_EX);
    except
      Servers := '';
    end;
	end;

  if Servers <> '' then
  begin
    iPos  := PosEx('<br>', Servers, 1);
    CSIList := Copy(Servers, 1, iPos-1);

    iPos1 := PosEx('<br>', Servers, iPos+1);
    WebUrl := Copy(Servers, iPos + 4, (iPos1-(iPos+3)-1));

    iPos2 := PosEx('<br>', Servers, iPos1+1);
    SchSvr := Copy(Servers, iPos1 + 4, (iPos2-(iPos1+3)-1));

    RotSvr := Copy(Servers, iPos2 + 4, (Length(Servers)-(iPos2+3)));

//    SetDebugeWrite('CSIList : ' + CSIList);
//    SetDebugeWrite('WebUrl  : ' + WebUrl);
//    SetDebugeWrite('SchSvr  : ' + SchSvr);
//    SetDebugeWrite('RotSvr  : ' + RotSvr);

    // 서버목록 수신
    if GT_ConnectionType = ctCIS then
    begin
      if ( GS_BACKUP_SVRIP.Count = 0 ) And ( CSIList <> '' ) then
      begin
        SetSvrIP(CSIList);

        // 서버목록 수신 실패 시 기본 IP 테이블로 목록 구성
        if GS_BACKUP_SVRIP.Count = 0 then
        begin
          RandomIP;
          for I := 0 to GS_BACKUP_SVRIP.Count - 1 do
            DebugLog(Format('2.5> (%d) %s', [I, GS_BACKUP_SVRIP[I]]));
        end;
      end;
    end;

    // TallMap Map URL 및 다음 맵 URL
    if (WebUrl <> '') and (Copy(WebUrl, 1, 2) = 'S|') then
    begin
      FList := TStringList.Create;
      try
        FList.Delimiter := '|';
        FList.DelimitedText := WebUrl;

        if FList.Count < 5 then Exit;

        SERVER_WEB_IP := FList[1];
				SERVER_WEB_PORT := FList[2];

				MAP_URL := 'http://' + SERVER_WEB_IP + ':' + IntToStr(StrToIntDef(SERVER_WEB_PORT, 8070)) + '/map/';
				DAUMMAP_URL := 'http://203.251.202.13:88/map/Daum1.jsp';
//        DAUMMAP_URL := 'http://gmgm.net/map/Daum1.html';
        ROADMAP_URL := 'http://gmgm.net/map/RoadView.html';
      finally
        FList.Free;
			end;
    end;

		// 'S|11|10|' 검색서버
    if SchSvr <> '' then
    begin
      GI_PoiServerErr := 0;
      if (Copy(SchSvr, 1, 2) = 'S|') then
      begin
        SchSvrIP := Copy(SchSvr, 3, 2);
      end else
      if (Copy(SchSvr, 1, 2) = 'R|') then
      begin
        if RandomRange(1, 100) mod 2 = 0 then SchSvrIP := Copy(SchSvr, 3, 2)
                                         else SchSvrIP := Copy(SchSvr, 6, 2);
      end;

      for i := 0 to Length(GS_POISVR_ROTSVR_IP) do
      begin
        if SchSvrIP = IntToStr(GS_POISVR_ROTSVR_IP[i].Code) then
        begin
          GS_PoiServerIP := GS_POISVR_ROTSVR_IP[i].IP;
        end;

        if Copy(SchSvr, 3, 2) = IntToStr(GS_POISVR_ROTSVR_IP[i].Code) then
        begin
          PoiServer1 := GS_POISVR_ROTSVR_IP[i].IP;
        end else
        if Copy(SchSvr, 6, 2) = IntToStr(GS_POISVR_ROTSVR_IP[i].Code) then
        begin
          PoiServer2 := GS_POISVR_ROTSVR_IP[i].IP;
        end;
      end;
    end;

    // 'S|22|23|' 경로탐색서버
    if RotSvr <> '' then
    begin
      if (Copy(RotSvr, 1, 2) = 'S|') then
      begin
        RotSvrIP := Copy(RotSvr, 3, 2);
      end else
      if (Copy(SchSvr, 1, 2) = 'R|') then
      begin
        RotSvrIP := IntToStr(RandomRange(StrToIntDef(Copy(RotSvr, 3, 2), 0), StrToIntDef(Copy(RotSvr, 6, 2), 0)));
      end;

      for i := 0 to Length(GS_POISVR_ROTSVR_IP) do
      begin
        if RotSvrIP = IntToStr(GS_POISVR_ROTSVR_IP[i].Code) then
        begin
          GS_SmartServerIP := GS_POISVR_ROTSVR_IP[i].IP;
        end;

        if Copy(RotSvr, 3, 2) = IntToStr(GS_POISVR_ROTSVR_IP[i].Code) then
        begin
          SearchRoute1[0].IP := GS_POISVR_ROTSVR_IP[i].IP;
          SearchRoute1[1].IP := GS_POISVR_ROTSVR_IP[i].IP;
          SearchRoute1[2].IP := GS_POISVR_ROTSVR_IP[i].IP;
          SearchRoute1[3].IP := GS_POISVR_ROTSVR_IP[i].IP;

          SearchRoute1[0].PORT := 1095;
          SearchRoute1[1].PORT := 1195;
          SearchRoute1[2].PORT := 1295;
          SearchRoute1[3].PORT := 1395;
        end else
        if Copy(RotSvr, 6, 2) = IntToStr(GS_POISVR_ROTSVR_IP[i].Code) then
        begin
          SearchRoute2[0].IP := GS_POISVR_ROTSVR_IP[i].IP;
          SearchRoute2[1].IP := GS_POISVR_ROTSVR_IP[i].IP;
          SearchRoute2[2].IP := GS_POISVR_ROTSVR_IP[i].IP;
          SearchRoute2[3].IP := GS_POISVR_ROTSVR_IP[i].IP;

          SearchRoute2[0].PORT := 1095;
          SearchRoute2[1].PORT := 1195;
          SearchRoute2[2].PORT := 1295;
          SearchRoute2[3].PORT := 1395;
        end;
      end;
    end;
  end;
end;

function Tdm.RequestCIS(AURL: string): string;
begin
  Result := GetHttpData(AURL);
  if length(Result) < 3 then
    Result := '';
end;

function Tdm.RandomIP: Boolean;
var
  I: Integer;
  IP: string;
  FList: TStringList;
begin
  Result := False;

  FList := TStringList.Create;
  try
    for I := 0 to length(GS_BACKUP_SVRIP_STATIC) - 1 do
      FList.Add(inttostr(GS_BACKUP_SVRIP_STATIC[I].Code) + '=' +
        GS_BACKUP_SVRIP_STATIC[I].IP);

    IP := GetRandomSvrCodeRange(FList, 80, 89);
    if IP <> '' then
    begin
      GS_BACKUP_SVRIP.Add(IP);
    end;

    IP := GetRandomSvrCodeRange(FList, 0, 49, -1);
    if IP <> '' then
    begin
      GS_BACKUP_SVRIP.Add(IP);
    end;

    while True do
    begin
      IP := GetRandomSvrCodeRange(FList, -1, -1);
      if IP <> '' then
      begin
        GS_BACKUP_SVRIP.Add(IP);
      end
      else
        Break;
    end;
  finally
    FList.Free;
  end;
end;

function Tdm.GetRandomSvrCodeRange(var AList: TStringList;
  ASCode, AECode, ACount: Integer): string;
var
  I, J, Idx, Idx2: Integer;
begin
  Result := '';

  if AList.Count = 0 then
    Exit;

  if (ASCode = -1) and (AECode = -1) then
  begin
    ASCode := 0;
    AECode := 99;
  end;

  Sleep(Random(AList.Count));
  Application.ProcessMessages;
  Idx := StrToInt(FormatDateTime('ZZZ', Now)) mod AList.Count;

  if StrToInt(AList.Names[Idx]) in [ASCode .. AECode] then
  begin
    Result := AList.ValueFromIndex[Idx];
    AList.Delete(Idx);
  end else
  begin
    if ACount = -1 then
    begin
      for I := 0 to AList.Count - 1 do
      begin
        J := I + Idx;
        Idx2 := IfThen(J > AList.Count - 1, J - AList.Count, J);
        if StrToInt(AList.Names[Idx2]) in [ASCode .. AECode] then
        begin
          Result := AList.ValueFromIndex[Idx2];
          AList.Delete(Idx2);
          Exit;
        end;
      end;
    end else
    begin
      if ACount < AList.Count then
        Result := GetRandomSvrCodeRange(AList, ASCode, AECode, ACount + 1);
    end;
  end;
end;

function Tdm.SetSvrIP(ASvrs: string): Boolean;
var
  I: Integer;
  IP: string;
  SvrList: TStringList;
begin
  Result := False;
  SvrList := TStringList.Create;
  try
    if length(ASvrs) < 3 then Exit;

    if Copy(ASvrs, 1, 2) <> 'S|' then
    begin
      DebugLog(Format('2.3. ''S|'' 구분자가 포함되지 않음: %s', [ASvrs]));
      Exit;
    end;

    ASvrs := Copy(ASvrs, 3, length(ASvrs) - 1);

    SvrList.Delimiter := '|';
    SvrList.DelimitedText := ASvrs;

    if SvrList.Count = 0 then
      Exit;

    for I := 0 to SvrList.Count - 1 do
    begin
      IP := GetSvrCodeToIP(SvrList[I]);
      if IP <> '' then
      begin
        // Log('SetSvrIP' + IntToStr(i) + ' : ' + IP, LOGDATADIRECTORY + 'log.txt');
        if GS_BACKUP_SVRIP.IndexOf(IP) < 0 then
        begin
          GS_BACKUP_SVRIP.Add(IP);
        end;
      end;
    end;
    Result := True;
  finally
    SvrList.Free;
  end;
end;

function Tdm.GetSvrCodeToIP(ACode: string): string;
var
  I: Integer;
begin
  {
    Result := '58.180.30.21';
    Exit;
  }
  Result := '';

  if length(ACode) > 2 then
  begin
    Result := ACode;
    Exit;
  end;

  if StrToIntDef(ACode, -1) = -1 then
    Exit;

  for I := 0 to length(GS_BACKUP_SVRIP_STATIC) - 1 do
  begin
    if GS_BACKUP_SVRIP_STATIC[I].Code = StrToInt(ACode) then
    begin
      Result := GS_BACKUP_SVRIP_STATIC[I].IP;
      Exit;
    end;
  end;
end;

function Tdm.IdSSLIOHandlerSocketOpenSSL1VerifyPeer(Certificate: TIdX509; AOk: Boolean; ADepth, AError: Integer): Boolean;
begin
  Result := AOk;
end;

{ *==============================================================================
  CMN Server 접속종료
  =============================================================================== }
procedure Tdm.SockDisconnect;
begin
  FReConnectCheck := False;
  if TCPClient.Connected then
    TCPClient.Disconnect;
end;

procedure Tdm.ssMessengerClientConnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  gbConnectedMessager := True;
end;

procedure Tdm.ssMessengerClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  gbConnectedMessager := False;
end;

procedure Tdm.ssMessengerClientError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
	if ErrorEvent = eeGeneral then SetDebugeWrite('Main.ssMessengerClientError - eeGeneral');
  if ErrorEvent = eeSend then SetDebugeWrite('Main.ssMessengerClientError - eeSend');
  if ErrorEvent = eeReceive then SetDebugeWrite('Main.ssMessengerClientError - eeReceive');
  if ErrorEvent = eeConnect then SetDebugeWrite('Main.ssMessengerClientError - eeConnect');
  if ErrorEvent = eeDisconnect then SetDebugeWrite('Main.ssMessengerClientError - eeDisconnect');
  if ErrorEvent = eeAccept then SetDebugeWrite('Main.ssMessengerClientError - eeAccept')
                           else SetDebugeWrite('Main.ssMessengerClientError');
  ErrorCode := 0;
end;

procedure Tdm.ssMessengerClientRead(Sender: TObject; Socket: TCustomWinSocket);
Var bOk : Boolean;
begin
  gsMessengerData := gsMessengerData + Socket.ReceiveText;

  while Not bOk do
  begin
    if Pos(ETX, gsMessengerData) > 0 then
    begin
      bOk := True;
      Break;
    end;
//    SetDebugeWrite('ssMessenger : ' + gsMessengerData);
    gsMessengerData := gsMessengerData + Socket.ReceiveText;
  end;

  if Pos(ETX, gsMessengerData) > 0 then
    TThread.Queue(Nil, procedure begin pMsnExecute(gsMessengerData);  end);
end;

procedure Tdm.TCPAcceptConnected(Sender: TObject);
begin
	if assigned(FOnSessionConnect) then
    FOnSessionConnect(Sender);

	if TIdTCPClient(Sender).Name = 'TCPClient' then
  begin
    FReconnectCount := 0;
    func_login(0);
	end else
	if TIdTCPClient(Sender).Name = 'TCPAccept' then
	begin
		FReconnectCount2 := 0;
		func_login(1);
	end else
	if TIdTCPClient(Sender).Name = 'TCPClientLBS' then
	begin
		FReconnectCount3 := 0;
		func_login(2);
	end;
end;

procedure Tdm.TCPAcceptDisconnected(Sender: TObject);
begin
	if TIdTCPClient(Sender).Name = 'TCPClient' then
  begin
    FReconnectCount := 0;
    tmPing.Enabled := False;
    if FReConnectCheck then
      DoReConnect(0)
    else
    begin
      if assigned(FOnSessionDisConnect) then
        FOnSessionDisConnect(Sender);
    end;
  end else
  if TIdTCPClient(Sender).Name = 'TCPAccept' then
  begin
		FReconnectCount2 := 0;
    tmPing2.Enabled := False;
		if FReconnectCheck2 then
      DoReConnect(1)
    else
    begin
      if assigned(FOnSessionDisConnect) then
        FOnSessionDisConnect(Sender);
    end;
  end else
	if TIdTCPClient(Sender).Name = 'TCPClientLBS' then
  begin
		FReconnectCount3 := 0;
		tmPing3.Enabled := False;
		if FReconnectCheck3 then
			DoReConnect(1)
    else
    begin
      if assigned(FOnSessionDisConnect) then
        FOnSessionDisConnect(Sender);
    end;
	end;
end;

procedure Tdm.TCPClientConnected(Sender: TObject);
begin
  SetDebugeWrite('dm.TCPClientConnected');

  if assigned(FOnSessionConnect) then
    FOnSessionConnect(Sender);

  if TIdTCPClient(Sender).Name = 'TCPClient' then
  begin
    FReconnectCount := 0;
    func_login(0);
  end else
  if TIdTCPClient(Sender).Name = 'TCPAccept' then
  begin
    FReconnectCount2 := 0;
    func_login(1);
  end;
end;

procedure Tdm.TCPClientDisconnected(Sender: TObject);
begin
  SetDebugeWrite('dm.TCPClientDisconnected');

  if TIdTCPClient(Sender).Name = 'TCPClient' then
  begin
    FReconnectCount := 0;
    tmPing.Enabled := False;
    if FReConnectCheck then
      DoReConnect(0)
    else
    begin
      if assigned(FOnSessionDisConnect) then
        FOnSessionDisConnect(Sender);
    end;
  end else
  if TIdTCPClient(Sender).Name = 'TCPAccept' then
  begin
		FReconnectCount2 := 0;
    tmPing2.Enabled := False;
    if FReconnectCheck2 then
			DoReConnect(1)
    else
    begin
      if assigned(FOnSessionDisConnect) then
        FOnSessionDisConnect(Sender);
    end;
  end;
end;

procedure TDm.pSendCMessenger( bErrView : boolean; sData : String );
begin
  if (FileExists('C:\sqnmsg.crc')) Or ( Not gbConnectedMessager ) then Exit;

  try
    if ssMessenger.Socket.Connections[0].Connected then
    begin
      ssMessenger.Socket.Connections[0].SendText(STX + Trim(sData) + ETX);
    end else
    begin
      if bErrView then
      begin
        GMessagebox('메신저와 연결이 되지 않아서 작업을 처리할수 없습니다.' + #13#10 +
                    '메신저를 다시 실행하세요', CDMSE);
      end;
    end;
  except on E: Exception do
    begin
      Assert(False, E.Message);
      if bErrView then
      begin
        GMessagebox('메신저와 연결이 되지 않아서 작업을 처리할수 없습니다.' + #13#10 +
                    '메신저를 다시 실행하세요', CDMSE);
      end;
    end;
  end;
end;

function Tdm.func_login(iType: Integer): Boolean;
var
  SendData: string;
  RecvData: string;
  LockCode, sType: string;
  ErrCode: Integer;
  slList: TStringList;

	sQueryTemp : String;
begin
	SetDebugeWrite('dm.func_login');

  Result := False;
	if iType = 0 then    //TCPClient
	begin
		FSENDOTP := CC_ENCRYPT;
		FRECVOTP := CC_DNCRYPT;
		sType := '0';
	end else
	if iType = 1 then    //TCPAccept
	begin
		FSENDOTP2 := CC_ENCRYPT;
		FRECVOTP2 := CC_DNCRYPT;
		sType := '1';
	end else
	if iType = 2 then    //TCPClientLBS
	begin
		FSENDOTP3 := CC_ENCRYPT;
		FRECVOTP3 := CC_DNCRYPT;
		sType := '4';
	end;

	fGet_BlowFish_Query(gsClientVer, sQueryTemp);
	if GS_CheckPC then
		LockCode := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'Code')
	else
		LockCode := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), GT_USERIF.ID+'Code');

	if Trim(LockCode) = '' then
    LockCode := GetRegistry(HKEY_LOCAL_MACHINE, Format('SYSTEM\WLKXE\%s', [GS_PRJ_AREA]), 'Code');
	SendData := GetC001Login('LOGIN', GT_USERIF.MC, GT_USERIF.HS, GT_USERIF.VN, '', '', SysInfoRec.ComputerName, LockCode, GS_PRJ_VERSION, sQueryTemp, sType);

  try
    slList := TStringList.Create;
    try
      if iType = 0 then
      begin
				if SendSock(SendData, slList, ErrCode, True) then
        begin
        end;
			end else
			if iType = 1 then
			begin
				if SendSockAccept(SendData, slList, ErrCode, True) then
				begin
					RecvData := slList[0];
				end;
			end else
			if iType = 2 then
			begin
				if SendSockLBS(SendData, slList, ErrCode, True) then
				begin
					RecvData := slList[0];
				end;
			end;

			RecvData := slList[0];

      if (GT_USERIF.LOGIN <> '1') and (iType = 0) then
      begin
        // 로그인 정보 처리(권한 처리 등)
        if frm_login.func_LoginCheck(RecvData) then
        begin
          GT_USERIF.LOGIN := '1';
          GT_USERIF.LoginTime := GetStrToLongDateTimeStr(Frm_Main.func_sysdate);
        end;
      end;
    finally
      slList.Free;
    end;
  except
    DoReConnect(iType);
  end;
end;

procedure SVRAUTOINCREMENT_CREATE; // 20120717 자동증가 컬럼으로 변경처리
var
  sQuery: string;
begin
  try
    sQuery := 'SHOW TABLES LIKE ''CDMS_FIRST''';
    dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
    dmCharge.FDQuery1.OPEN;

    if not dmCharge.FDQuery1.eof then
    begin
      sQuery := ' ALTER TABLE CDMS_FIRST MODIFY COLUMN FC_NO INT(10) NOT NULL AUTO_INCREMENT ';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery2.Close;
      dmCharge.FDQuery2.SQL.Text := sQuery;
      dmCharge.FDQuery2.ExecSQL;
    end;

    sQuery := 'SHOW TABLES LIKE ''CDMS_CHART''';
    dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
    dmCharge.FDQuery1.OPEN;

    if not dmCharge.FDQuery1.eof then
    begin
      sQuery := ' ALTER TABLE CDMS_CHART MODIFY COLUMN CC_NO INT(10) NOT NULL AUTO_INCREMENT ';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery2.Close;
      dmCharge.FDQuery2.SQL.Text := sQuery;
      dmCharge.FDQuery2.ExecSQL;
    end;

    sQuery := 'SHOW TABLES LIKE ''CDMS_DISTANCE''';
    dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
    dmCharge.FDQuery1.OPEN;

    if not dmCharge.FDQuery1.eof then
    begin
      sQuery := ' ALTER TABLE CDMS_DISTANCE MODIFY COLUMN DC_NO INT(10) NOT NULL AUTO_INCREMENT ';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery2.Close;
      dmCharge.FDQuery2.SQL.Text := sQuery;
      dmCharge.FDQuery2.ExecSQL;
    end;

    sQuery := 'SHOW TABLES LIKE ''CDMS_TERM''';
    dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
    dmCharge.FDQuery1.OPEN;

    if not dmCharge.FDQuery1.eof then
    begin
      sQuery := ' ALTER TABLE CDMS_TERM MODIFY COLUMN TC_NO INT(10) NOT NULL AUTO_INCREMENT ';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery2.Close;
      dmCharge.FDQuery2.SQL.Text := sQuery;
      dmCharge.FDQuery2.ExecSQL;
    end;
  except on E: Exception do
    Log('SVRAUTOINCREMENT_CREATE Error :' + E.Message, LOGDATAPATHFILE);
  end;
end;

procedure SVRBGROUP_CREATE;
var iTmp : Integer;
	sQuery, sTable : string;
begin
	SetDebugeWrite('dm.SVRBGROUP_CREATE');
	try
		sTable := 'CDMS_BGROUP_TYPE';
		if (CHARGE_GUBUN = 'P') or (CHARGE_GUBUN = 'O') then	
			sTable := UpperCase(sTable) 
		else
			sTable := LowerCase(sTable); 
		
		iTmp := gslTable.Indexof(sTable);
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE ' + sTable + ' ( CT_NO int(10) NOT NULL, CT_BR_NO varchar(5) NOT NULL, CT_KEY_NUM varchar(15) NOT NULL, CT_CB_CODE varchar(5) NOT NULL, '
				+ #13 + '  CT_GUBUN varchar(2) DEFAULT NULL, CT_CD varchar(5) DEFAULT NULL, IN_DATE varchar(10) DEFAULT NULL, CT_PASSVALUE int(10) DEFAULT NULL, CT_FIRST_CD varchar(5) DEFAULT NULL, '
				+ #13 + '  CT_PASS_GUBUN varchar(5) DEFAULT NULL, CT_PASS_CD varchar(5) DEFAULT NULL, CT_PASS_VIEW varchar(1) DEFAULT NULL, PREM_NSEQ int(11) DEFAULT NULL, PREM_STTIME char(5) DEFAULT NULL, '
				+ #13 + '  PREM_EDTIME char(5) DEFAULT NULL,  PRIMARY KEY (CT_NO,CT_BR_NO,CT_KEY_NUM,CT_CB_CODE),  UNIQUE KEY IDX_TYPE (CT_CB_CODE) )'
				+ #13 + '  ENGINE=MyISAM DEFAULT CHARSET=euckr ';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.ExecSQL;
		end;

 except
		on E: Exception do
		begin
			Log('SVRBGROUP_CREATE Error :' + E.Message, LOGDATAPATHFILE);
		end;
  end;
end;

procedure SVRALLSEVEN_CREATE;
var iTmp : Integer;
	sQuery, sTable : string;
begin
	SetDebugeWrite('dm.SVRALLSEVEN_CREATE');
	try
		sTable := 'CDMS_A7_CHARGE';
		if (CHARGE_GUBUN = 'P') or (CHARGE_GUBUN = 'O') then	
			sTable := UpperCase(sTable) 
		else
			sTable := LowerCase(sTable); 
		
		iTmp := gslTable.Indexof(sTable);
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE ' + sTable + ' ( A7_NO int(10) NOT NULL AUTO_INCREMENT, A7_STPOI varchar(20) NOT NULL, A7_EDPOI varchar(20) NOT NULL, A7_CHARGE varchar(20) NOT NULL, '
				+ #13 + 'PRIMARY KEY (A7_NO) )'
				+ #13 + '  ENGINE=MyISAM DEFAULT CHARSET=euckr ';

			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.ExecSQL;
		end;
	except
		on E: Exception do
    begin
			Log('SVRALLSEVEN_CREATE Error :' + E.Message, LOGDATAPATHFILE);
		end;
	end;
end;

procedure SVRPREM_Local;
var iTmp, fidx1 : Integer;
	sQuery, sTable : string;
begin
	SetDebugeWrite('dm.SVRPREM_Local');
	try
		sTable := 'CDMS_LOCAL_POI';
		if (CHARGE_GUBUN = 'P') or (CHARGE_GUBUN = 'O') then	
			sTable := UpperCase(sTable) 
		else
			sTable := LowerCase(sTable); 
		
		iTmp := gslTable.Indexof(sTable);
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE ' + sTable + ' (SI varchar(15) CHARACTER SET utf8, GU varchar(20) CHARACTER SET utf8, '
				+ #13 + '                            DONG varchar(20) CHARACTER SET utf8, DNAME varchar(60) CHARACTER SET utf8, '
				+ #13 + '                            NPOI varchar(60) CHARACTER SET utf8, XPOINT varchar(15) CHARACTER SET utf8, '
				+ #13 + '                            YPOINT varchar(15) CHARACTER SET utf8, UserID varchar(10) CHARACTER SET utf8, '
				+ #13 + '                            UserName varchar(20) CHARACTER SET utf8, LastUpTime varchar(30) CHARACTER SET utf8, '
				+ #13 + '                            Sync varchar(3) CHARACTER SET utf8, SyncL varchar(3) CHARACTER SET utf8, primary key(SI,GU,DONG,DNAME) )'
				+ #13 + '  ENGINE=MyISAM DEFAULT CHARSET=euckr ';
      dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery2.Close;
			dmCharge.FDQuery2.SQL.Text := sQuery;
			dmCharge.FDQuery2.ExecSQL;
		end else
		begin
			sQuery := 'ALTER TABLE ' + sTable + ' MODIFY COLUMN SI VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci, '
				+ '                                MODIFY COLUMN gu VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci, '
				+ '                           		 MODIFY COLUMN DONG VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci, '
				+ '             		               MODIFY COLUMN DNAME VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci, '
				+ '            		                 MODIFY COLUMN NPOI VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci, '
				+ '              			             MODIFY COLUMN XPOINT VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci, '
				+ '                			           MODIFY COLUMN YPOINT VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci, '
				+ '                 			         MODIFY COLUMN UserID VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci, '
				+ '                   			       MODIFY COLUMN UserName VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci, '
				+ '                         		   MODIFY COLUMN LastUpTime VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci, '
				+ '                         		   MODIFY COLUMN Sync VARCHAR(3) CHARACTER SET utf8 COLLATE utf8_general_ci ';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery2.Close;
			dmCharge.FDQuery2.SQL.Text := sQuery;
			dmCharge.FDQuery2.ExecSQL;   
		end;

		sQuery := 'select * from ' + sTable;
		dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
		dmCharge.FDQuery1.OPEN;
		fidx1 := dmCharge.FDQuery1.FieldDefs.IndexOf('SyncL');
    if fidx1 < 0 then
    begin
			sQuery := 'ALTER TABLE ' + sTable + ' add  SyncL VARCHAR(3) CHARACTER SET utf8 COLLATE utf8_general_ci ';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery2.Close;
      dmCharge.FDQuery2.SQL.Text := sQuery;
      dmCharge.FDQuery2.ExecSQL;
    end;
  except on E: Exception do
    Log('SVRPREM_Local Error :' + E.Message, LOGDATAPATHFILE);
  end;

	try
		sTable := 'CDMS_LOCAL_MASTER';
		iTmp := gslTable.Indexof(LowerCase(sTable));
		if iTmp < 0 then iTmp := gslTable.Indexof(UpperCase(sTable));

		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE ' + sTable + ' (MASTER_PW varchar(10) CHARACTER SET utf8, IN_DATE DATETIME )'      
				+ #13 + '  ENGINE=MyISAM DEFAULT CHARSET=euckr ';

			dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery2.Close;
      dmCharge.FDQuery2.SQL.Text := sQuery;
			dmCharge.FDQuery2.ExecSQL;
		end;
  except on E: Exception do
		Log('SVRPREM_Local Error :' + E.Message, LOGDATAPATHFILE);
	end;
end;

procedure SVRPREM_TUN;
var
	sQuery, sTable: string;
  fidx1, fidx2, fidx3, fidx4, fidx5, fidx6 : integer;
begin
	SetDebugeWrite('dm.SVRPREM_TUN');
	Try
		dmCharge.proc_mysql_init;
		dmCharge.FDQuery1.Close;
		sQuery := 'SHOW TABLE STATUS';
		dmCharge.FDQuery1.SQL.Text := sQuery;
		dmCharge.FDQuery1.OPEN;
		gslTable.Clear;
		while Not dmCharge.FDQuery1.Eof do
		begin
			gslTable.Add(dmCharge.FDQuery1.Fields[0].AsString);
			dmCharge.FDQuery1.Next;
		end;

		SVRPREM_TUNMAST;
		SVRPREM_TUNDET;
		SVRBGROUP_CREATE; // 20120607 LYB 추가
		if GS_ALL_SEVEN then SVRALLSEVEN_CREATE; // 20200601 KHS 추가
		SVRPREM_Local; // 20120703 KHS 추가

		if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
    begin
  		dmCharge.proc_mysql_init;
      dmCharge.FDQuery1.Close;
      sQuery := 'SHOW TRIGGERS';
      dmCharge.FDQuery1.SQL.Text := sQuery;
      dmCharge.FDQuery1.OPEN;
      gslTrigger.Clear;
      while Not dmCharge.FDQuery1.Eof do
      begin
        gslTrigger.Add(dmCharge.FDQuery1.Fields[0].AsString);
        dmCharge.FDQuery1.Next;
      end;

      pCREATE_SvrNewDistance;
    end;
	except

  End;

  try
    sQuery := 'select * from CDMS_TYPE ';
    dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
    dmCharge.FDQuery1.OPEN;

    fidx1 := dmCharge.FDQuery1.FieldDefs.IndexOf('PREM_NSEQ');
    fidx2 := dmCharge.FDQuery1.FieldDefs.IndexOf('PREM_STTIME');
    fidx3 := dmCharge.FDQuery1.FieldDefs.IndexOf('PREM_EDTIME');
		fidx4 := dmCharge.FDQuery1.FieldDefs.IndexOf('CT_GUBUN2');
		fidx5 := dmCharge.FDQuery1.FieldDefs.IndexOf('CT_CD2');
		fidx6 := dmCharge.FDQuery1.FieldDefs.IndexOf('CT_NEWDIST_YN');

    // OutputDebugString(PChar(IntToStr(fidx)));
    if fidx1 < 0 then
    begin
      sQuery := 'ALTER TABLE CDMS_TYPE ADD COLUMN PREM_NSEQ INT';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := sQuery;
      dmCharge.FDQuery1.ExecSQL;
    end;

    if fidx2 < 0 then
    begin
      sQuery := 'ALTER TABLE CDMS_TYPE ADD COLUMN PREM_STTIME CHAR(5)';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := sQuery;
      dmCharge.FDQuery1.ExecSQL;
    end;

    if fidx3 < 0 then
    begin
      sQuery := 'ALTER TABLE CDMS_TYPE ADD COLUMN PREM_EDTIME CHAR(5)';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := sQuery;
      dmCharge.FDQuery1.ExecSQL;
    end;

		if fidx4 < 0 then
    begin
			sQuery := 'ALTER TABLE CDMS_TYPE ADD COLUMN CT_GUBUN2 CHAR(2)';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := sQuery;
      dmCharge.FDQuery1.execsql;
		end;

		if fidx5 < 0 then
		begin
			sQuery := 'ALTER TABLE CDMS_TYPE ADD COLUMN CT_CD2 CHAR(5)';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.execsql;
		end;

		if fidx6 < 0 then
		begin
			sQuery := 'ALTER TABLE CDMS_TYPE ADD COLUMN CT_NEWDIST_YN CHAR(1)';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.execsql;
		end;

    sQuery := 'select * from CDMS_GROUP where CG_GUBUN = ''SM'' ';
    dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
    dmCharge.FDQuery1.OPEN;

    if dmCharge.FDQuery1.eof then    //스마트요금제 <=요금제 전체등록 20150330 KHS
    begin
      sQuery := 'INSERT INTO CDMS_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
              + 'VALUES (' + IntToStr(9999) + ',''SM'',''SM001'',''스마트요금제'',0) ';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery2.Close;
      dmCharge.FDQuery2.SQL.Text := sQuery;
      dmCharge.FDQuery2.ExecSQL;
    end;

    sQuery := 'select * from CDMS_GROUP where CG_CD = ''CF999'' ';
    dmCharge.proc_mysql_init;
    dmCharge.FDQuery1.Close;
    dmCharge.FDQuery1.SQL.Text := sQuery;
    dmCharge.FDQuery1.OPEN;

    if dmCharge.FDQuery1.eof then    //스마트요금제 <=우선요금제 전체등록 20150330 KHS
    begin
      sQuery := 'INSERT INTO CDMS_GROUP (CG_NO, CG_GUBUN, CG_CD, CG_NM, CG_GERVALUE) '
              + 'VALUES (' + IntToStr(9998) + ',''CF'',''CF999'',''스마트요금(우선)'',0) ';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery2.Close;
      dmCharge.FDQuery2.SQL.Text := sQuery;
      dmCharge.FDQuery2.ExecSQL;
    end;
    Set_PremRec;
  except on E: Exception do
    Log('SVRPREM_TUN Error :' + E.Message, LOGDATAPATHFILE);
	end;
end;

procedure SVRPREM_TUNDET;
var iTmp : Integer;
	sQuery, sTable : string;
begin
	SetDebugeWrite('dm.SVRPREM_TUNDET');
	try
		sTable := 'CDMS_SVPREM_DETAIL';
		if (CHARGE_GUBUN = 'P') or (CHARGE_GUBUN = 'O') then	
			sTable := UpperCase(sTable) 
		else
			sTable := LowerCase(sTable); 
		
		iTmp := gslTable.Indexof(sTable);
		if iTmp < 0 then
		begin
			sQuery := 'create table ' + sTable + ' ( nseq INT, ST_AMT INT default 0, ED_AMT INT default 0, RESULT_AMT INT default 0, primary key(nseq,ST_AMT,ED_AMT))'
				+ #13 + '  ENGINE=MyISAM DEFAULT CHARSET=euckr ';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.ExecSQL; 
		end;
	except
		on E: Exception do
		begin
			Log('SVRPREM_TUNDET Error :' + E.Message, LOGDATAPATHFILE);
		end;
  end;
end;

procedure SVRPREM_TUNMAST;
var iTmp : Integer;
	sQuery, sTable : string;
begin
	SetDebugeWrite('dm.SVRPREM_TUNMAST');
	try
		sTable := 'CDMS_SVPREM_MAST';
		if (CHARGE_GUBUN = 'P') or (CHARGE_GUBUN = 'O') then	
			sTable := UpperCase(sTable) 
		else
			sTable := LowerCase(sTable); 
		
		iTmp := gslTable.Indexof(sTable);
		if iTmp < 0 then
		begin
			sQuery := 'create table ' + sTable + ' ( nseq int, CP_TIT varchar(30), USE_YN char(1) default ''Y'' not null, primary key (nseq, CP_TIT))'
				+ #13 + '  ENGINE=MyISAM DEFAULT CHARSET=euckr ';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.ExecSQL; 
		end;
		
	except
		on E: Exception do
		begin
			Log('SVRPREM_TUNMAST Error :' + E.Message, LOGDATAPATHFILE);
		end;
  end;
end;

procedure pCREATE_SvrNewDistance;
var iTmp : Integer;
	sQuery, sTable, sTrigger, sTmp : string;
begin
	SetDebugeWrite('dm.pCREATE_SvrNewDistance');
	try
    // 신거리 요금제 출/도 요금 테이블
		sTable := 'CDMS_DIST_NEW';
		if (CHARGE_GUBUN = 'O') then sTable := UpperCase(sTable)
                        		else sTable := LowerCase(sTable);
		iTmp := gslTable.Indexof(sTable);
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE ' + sTable +
                ' ( DN_NO INT AUTO_INCREMENT' +
                ' , BR_NO VARCHAR(5)' +
                ' , DN_STCITY VARCHAR(4)' +
                ' , DN_STWARD VARCHAR(20)' +
                ' , DN_STDONG VARCHAR(20)' +
                ' , DN_EDCITY VARCHAR(4)' +
                ' , DN_EDWARD VARCHAR(20)' +
                ' , DN_EDDONG VARCHAR(20)' +
                ' , DN_DEFAULT VARCHAR(10)' +
                ' , DN_TYPE1 VARCHAR(10)' +
                ' , DN_TYPE2 VARCHAR(10)' +
                ' , DN_TYPE3 VARCHAR(10)' +
                ' , DN_TYPE4 VARCHAR(10)' +
                ' , IN_ID VARCHAR(12)' +
                ' , IN_DATE DATETIME' +
                ' , UP_ID VARCHAR(12)' +
                ' , UP_DATE DATETIME' +
                ' , PRIMARY KEY(DN_NO, BR_NO))' +
                ' ENGINE=MyISAM DEFAULT CHARSET=euckr ';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.ExecSQL;
		end;
	except
		on E: Exception do
		begin
			Log('CDMS_DIST_NEW Error :' + E.Message, LOGDATAPATHFILE);
		end;
  end;

	try
    // 신거리 요금제 타입명 테이블
		sTable := 'CDMS_DIST_TYPE_M';
		if (CHARGE_GUBUN = 'O') then sTable := UpperCase(sTable)
                        		else sTable := LowerCase(sTable);
		iTmp := gslTable.Indexof(sTable);
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE ' + sTable +
                ' ( DT_NO INT AUTO_INCREMENT ' +
                ' , HD_NO VARCHAR(5)' +
                ' , BR_NO VARCHAR(5)' +
                ' , TYPE_NO VARCHAR(5)' +
                ' , TYPE_NAME VARCHAR(50)' +
                ' , IN_ID VARCHAR(12)' +
                ' , IN_DATE DATETIME' +
                ' , UP_ID VARCHAR(12)' +
                ' , UP_DATE DATETIME' +
                ' , PRIMARY KEY(DT_NO, HD_NO, BR_NO))' +
                ' ENGINE=MyISAM DEFAULT CHARSET=euckr ';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.ExecSQL;
		end;
	except
		on E: Exception do
		begin
			Log('CDMS_DIST_TYPE_M Error :' + E.Message, LOGDATAPATHFILE);
		end;
  end;

	try
    // 신거리 요금제 타입별 설정 테이블
		sTable := 'CDMS_DIST_TYPE_D';
		if (CHARGE_GUBUN = 'O') then sTable := UpperCase(sTable)
                        		else sTable := LowerCase(sTable);
		iTmp := gslTable.Indexof(sTable);
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE ' + sTable +
                ' ( DT_NO INT AUTO_INCREMENT' +
                ' , HD_NO VARCHAR(5)' +
                ' , BR_NO VARCHAR(5)' +
                ' , TYPE_NO VARCHAR(5)' +
                ' , DT_STKM DECIMAL(7,1)' +
                ' , DT_EDKM DECIMAL(7,1)' +
                ' , DT_VALUE INT' +
                ' , IN_ID VARCHAR(12)' +
                ' , IN_DATE DATETIME' +
                ' , UP_ID VARCHAR(12)' +
                ' , UP_DATE DATETIME' +
                ' , PRIMARY KEY(DT_NO, HD_NO, BR_NO))' +
                ' ENGINE=MyISAM DEFAULT CHARSET=euckr ';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.ExecSQL;
		end;
	except
		on E: Exception do
		begin
			Log('CDMS_DIST_TYPE_D Error :' + E.Message, LOGDATAPATHFILE);
		end;
  end;

	try
    // 신거리요금 피크 타임별 설정 테이블
		sTable := 'CDMS_DIST_PEAK';
		if (CHARGE_GUBUN = 'O') then sTable := UpperCase(sTable)
                        		else sTable := LowerCase(sTable);
		iTmp := gslTable.Indexof(sTable);
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE ' + sTable +
                ' ( DP_NO INT AUTO_INCREMENT' +
                ' , BR_NO VARCHAR(5)' +
                ' , DP_USE_YN VARCHAR(5)' +
                ' , DP_1_USE_YN CHAR(1)' +
                ' , DP_1_ADD_YN CHAR(1)' +
                ' , DP_1_SNEXTDAY CHAR(1)' +
                ' , DP_1_STIME VARCHAR(10)' +
                ' , DP_1_ENEXTDAY CHAR(1)' +
                ' , DP_1_ETIME VARCHAR(10)' +
                ' , DP_2_USE_YN CHAR(1)' +
                ' , DP_2_ADD_YN CHAR(1)' +
                ' , DP_2_SNEXTDAY CHAR(1)' +
                ' , DP_2_STIME VARCHAR(10)' +
                ' , DP_2_ENEXTDAY CHAR(1)' +
                ' , DP_2_ETIME VARCHAR(10)' +
                ' , DP_3_USE_YN CHAR(1)' +
                ' , DP_3_ADD_YN CHAR(1)' +
                ' , DP_3_SNEXTDAY CHAR(1)' +
                ' , DP_3_STIME VARCHAR(10)' +
                ' , DP_3_ENEXTDAY CHAR(1)' +
                ' , DP_3_ETIME VARCHAR(10)' +
                ' , DP_4_USE_YN CHAR(1)' +
                ' , DP_4_ADD_YN CHAR(1)' +
                ' , DP_4_SNEXTDAY CHAR(1)' +
                ' , DP_4_STIME VARCHAR(10)' +
                ' , DP_4_ENEXTDAY CHAR(1)' +
                ' , DP_4_ETIME VARCHAR(10)' +
                ' , DP_SATURDAY_YN CHAR(1)' +
                ' , DP_HOLIDAY_YN CHAR(1)' +
                ' , IN_ID VARCHAR(12)' +
                ' , IN_DATE DATETIME' +
                ' , UP_ID VARCHAR(12)' +
                ' , UP_DATE DATETIME' +
                ' , PRIMARY KEY(DP_NO, BR_NO))' +
                ' ENGINE=MyISAM DEFAULT CHARSET=euckr ';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.ExecSQL;
		end else
    begin
      sQuery := 'SELECT * FROM ' + sTable;
      dmCharge.proc_mysql_init;
      dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := sQuery;
      dmCharge.FDQuery1.OPEN;

      if dmCharge.FDQuery1.FieldDefs.IndexOf('DP_1_ADD_YN') < 0 then
      begin
        sQuery := 'ALTER TABLE ' + sTable + ' ADD COLUMN DP_1_ADD_YN CHAR(1)';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
      end;

      if dmCharge.FDQuery1.FieldDefs.IndexOf('DP_2_ADD_YN') < 0 then
      begin
        sQuery := 'ALTER TABLE ' + sTable + ' ADD COLUMN DP_2_ADD_YN CHAR(1)';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
      end;

      if dmCharge.FDQuery1.FieldDefs.IndexOf('DP_3_ADD_YN') < 0 then
      begin
        sQuery := 'ALTER TABLE ' + sTable + ' ADD COLUMN DP_3_ADD_YN CHAR(1)';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
      end;

      if dmCharge.FDQuery1.FieldDefs.IndexOf('DP_4_ADD_YN') < 0 then
      begin
        sQuery := 'ALTER TABLE ' + sTable + ' ADD COLUMN DP_4_ADD_YN CHAR(1)';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
      end;
    end;
	except
		on E: Exception do
		begin
			Log('CDMS_DIST_PEAK Error :' + E.Message, LOGDATAPATHFILE);
		end;
  end;

	try
    // 경계 요금제 정보 설정
		sTable := 'CDMS_POLYGON';
		if (CHARGE_GUBUN = 'O') then sTable := UpperCase(sTable)
                        		else sTable := LowerCase(sTable);
		iTmp := gslTable.Indexof(sTable);
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE ' + sTable +
                ' ( PG_NO INT AUTO_INCREMENT' +
                ' , HD_NO VARCHAR(5)' +
                ' , BR_NO VARCHAR(5)' +
                ' , PG_ADDR VARCHAR(20)' +
                ' , PG_NAME VARCHAR(50)' +
                ' , PG_STVALUE INT' +
                ' , PG_EDVALUE INT' +
                ' , PG_SAMEAREA_YN CHAR(1)' +
                ' , PG_BIGO VARCHAR(500)' +
                ' , PG_POINT VARCHAR(1000)' +
                ' , PG_STAT VARCHAR(1)' +
                ' , IN_ID VARCHAR(12)' +
                ' , IN_DATE DATETIME' +
                ' , UP_ID VARCHAR(12)' +
                ' , UP_DATE DATETIME' +
                ' , PRIMARY KEY(PG_NO, HD_NO, BR_NO))' +
                ' ENGINE=MyISAM DEFAULT CHARSET=euckr ';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.ExecSQL;
		end else
    begin
      sQuery := 'SELECT * FROM ' + sTable;
      dmCharge.proc_mysql_init;
      dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := sQuery;
      dmCharge.FDQuery1.OPEN;

      if dmCharge.FDQuery1.FieldDefs.IndexOf('PG_STAT') < 0 then
      begin
        sQuery := 'ALTER TABLE CDMS_POLYGON ADD COLUMN PG_STAT VARCHAR(1)';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
      end;

      if dmCharge.FDQuery1.FieldDefs.IndexOf('HD_NO') < 0 then
      begin
        sQuery := 'ALTER TABLE CDMS_POLYGON ADD COLUMN HD_NO VARCHAR(5)';
        dmCharge.proc_mysql_init('update');
        dmCharge.FDQuery1.Close;
        dmCharge.FDQuery1.SQL.Text := sQuery;
        dmCharge.FDQuery1.ExecSQL;
      end;

			sQuery := 'ALTER TABLE CDMS_POLYGON MODIFY PG_ADDR VARCHAR(20)';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.ExecSQL;

			sQuery := 'ALTER TABLE CDMS_POLYGON MODIFY PG_NAME VARCHAR(50)';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.ExecSQL;
    end;
	except
		on E: Exception do
		begin
			Log('CDMS_POLYGON Error :' + E.Message, LOGDATAPATHFILE);
		end;
  end;

	try
    // 신거리요금제 로그 테이블
		sTable := 'CDMS_DIST_LOG';
		if (CHARGE_GUBUN = 'O') then sTable := UpperCase(sTable)
                        		else sTable := LowerCase(sTable);
		iTmp := gslTable.Indexof(sTable);
		if iTmp < 0 then
		begin
			sQuery := 'CREATE TABLE ' + sTable +
                ' ( DL_NO INT AUTO_INCREMENT' +
                ' , BR_NO VARCHAR(5)' +
                ' , DL_MEMO VARCHAR(10)' +
                ' , DL_SADDR VARCHAR(50)' +
                ' , DL_EADDR VARCHAR(50)' +
                ' , DL_DEFAULT_B VARCHAR(10)' +
                ' , DL_DEFAULT_A VARCHAR(10)' +
                ' , DL_TYPE1_B VARCHAR(10)' +
                ' , DL_TYPE1_A VARCHAR(10)' +
                ' , DL_TYPE2_B VARCHAR(10)' +
                ' , DL_TYPE2_A VARCHAR(10)' +
                ' , DL_TYPE3_B VARCHAR(10)' +
                ' , DL_TYPE3_A VARCHAR(10)' +
                ' , DL_TYPE4_B VARCHAR(10)' +
                ' , DL_TYPE4_A VARCHAR(10)' +
                ' , IN_ID VARCHAR(12)' +
                ' , IN_DATE DATETIME' +
                ' , UP_ID VARCHAR(12)' +
                ' , UP_DATE DATETIME' +
                ' , PRIMARY KEY(DL_NO, BR_NO))' +
                ' ENGINE=MyISAM DEFAULT CHARSET=euckr ';
			dmCharge.proc_mysql_init('update');
			dmCharge.FDQuery1.Close;
			dmCharge.FDQuery1.SQL.Text := sQuery;
			dmCharge.FDQuery1.ExecSQL;
		end;
	except
		on E: Exception do
		begin
			Log('CDMS_DIST_LOG Error :' + E.Message, LOGDATAPATHFILE);
		end;
  end;

	try
    // tINSERTLOG 로그 트리거
		sTrigger := 'tINSERTLOG';
		iTmp := gslTrigger.Indexof(sTrigger);
		if iTmp >= 0 then
    begin
//      sQuery := 'DROP TRIGGER tINSERTLOG ';
//      dmCharge.proc_mysql_init('update');
//      dmCharge.FDQuery1.Close;
//      dmCharge.FDQuery1.SQL.Text := sQuery;
//      dmCharge.FDQuery1.ExecSQL;
//    end; // else
    end else
    begin
      sQuery :=
       'CREATE TRIGGER tINSERTLOG ' + CRLF +
       'AFTER INSERT ON CDMS_DIST_NEW ' + CRLF +
       'FOR EACH ROW ' + CRLF +
       'BEGIN ' + CRLF +
       '  INSERT INTO CDMS_DIST_LOG(BR_NO, DL_MEMO, DL_SADDR, DL_EADDR, DL_DEFAULT_B, DL_TYPE1_B, DL_TYPE2_B, DL_TYPE3_B, DL_TYPE4_B, IN_ID, IN_DATE) ' + CRLF +
       '		 VALUES(NEW.BR_NO, "Insert", CONCAT(NEW.DN_STCITY, " ", NEW.DN_STWARD, " ", NEW.DN_STDONG), CONCAT(NEW.DN_EDCITY, " ", NEW.DN_EDWARD, " ", NEW.DN_EDDONG), ' + CRLF +
       '                NEW.DN_DEFAULT, NEW.DN_TYPE1, NEW.DN_TYPE2, NEW.DN_TYPE3, NEW.DN_TYPE4, NEW.IN_ID, now() ); ' + CRLF +
       'END ';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := sQuery;
      dmCharge.FDQuery1.ExecSQL;
    end;
	except
		on E: Exception do
		begin
			Log('tINSERTLOG Error :' + E.Message, LOGDATAPATHFILE);
		end;
  end;

	try
    // tUPDATELOG 로그(수정/삭제) 트리거
		sTrigger := 'tUPDATELOG';
		iTmp := gslTrigger.Indexof(sTrigger);
		if iTmp >= 0 then
    begin
//      sQuery := 'DROP TRIGGER tUPDATELOG ';
//      dmCharge.proc_mysql_init('update');
//      dmCharge.FDQuery1.Close;
//      dmCharge.FDQuery1.SQL.Text := sQuery;
//      dmCharge.FDQuery1.ExecSQL;
//    end; // else
    end else
    begin
      sQuery :=
       'CREATE TRIGGER tUPDATELOG ' + CRLF +
       'AFTER UPDATE ON CDMS_DIST_NEW ' + CRLF +
       'FOR EACH ROW ' + CRLF +
       'BEGIN ' + CRLF +
       '  DECLARE sMEMO VARCHAR(10); ' + CRLF +
       '  SET SMEMO = "Modify"; ' + CRLF +
       '  IF ( OLD.DN_DEFAULT <> " " ) AND ( NEW.DN_DEFAULT = " ") THEN SET sMEMO = "Delete"; END IF; ' + CRLF +
       '  IF ( OLD.DN_TYPE1 <> " " ) AND ( NEW.DN_TYPE1 = " ") THEN SET sMEMO = "Delete"; END IF; ' + CRLF +
       '  IF ( OLD.DN_TYPE2 <> " " ) AND ( NEW.DN_TYPE2 = " ") THEN SET sMEMO = "Delete"; END IF; ' + CRLF +
       '  IF ( OLD.DN_TYPE3 <> " " ) AND ( NEW.DN_TYPE3 = " ") THEN SET sMEMO = "Delete"; END IF; ' + CRLF +
       '  IF ( OLD.DN_TYPE4 <> " " ) AND ( NEW.DN_TYPE4 = " ") THEN SET sMEMO = "Delete"; END IF; ' + CRLF +
       '  INSERT INTO CDMS_DIST_LOG(BR_NO, DL_MEMO, DL_SADDR, DL_EADDR, DL_DEFAULT_B, DL_DEFAULT_A, DL_TYPE1_B, DL_TYPE1_A, DL_TYPE2_B, DL_TYPE2_A, DL_TYPE3_B, DL_TYPE3_A, DL_TYPE4_B, DL_TYPE4_A, IN_ID, IN_DATE) ' + CRLF +
       '		 VALUES(NEW.BR_NO, SMEMO, CONCAT(NEW.DN_STCITY, " ", NEW.DN_STWARD, " ", NEW.DN_STDONG), CONCAT(NEW.DN_EDCITY, " ", NEW.DN_EDWARD, " ", NEW.DN_EDDONG), ' + CRLF +
       '                OLD.DN_DEFAULT, NEW.DN_DEFAULT, OLD.DN_TYPE1, NEW.DN_TYPE1, OLD.DN_TYPE2, NEW.DN_TYPE2, OLD.DN_TYPE3, NEW.DN_TYPE3, OLD.DN_TYPE4, NEW.DN_TYPE4, NEW.IN_ID, now() ); ' + CRLF +
       'END ';
      dmCharge.proc_mysql_init('update');
      dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := sQuery;
      dmCharge.FDQuery1.ExecSQL;
    end;
	except
		on E: Exception do
		begin
			Log('tUPDATELOG Error :' + E.Message, LOGDATAPATHFILE);
		end;
  end;
end;

function HmasYN: Boolean;
begin
  try
    if (GT_USERIF.lv = '60') and (GT_USERIF.master = 'y') then
      Result := True
    else
      Result := False;
  except
    Result := False;
  end;
end;

function GetJONLMT(smemid: string): Integer;
var
  ls_TxLoad, sNode, rv_str: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDomNodeList;
  slReceive: TStringList;
  ErrCode: Integer;
  ls_MSG_Err: string;
begin
  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      // Screen.Cursor := crDefault;
      // ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Result := 0;
      Exit;
    end;
    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'JONLMT01';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'JONLMT';
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := smemid;
    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xdom.documentElement.xml;

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          Application.ProcessMessages;

          if not xdom.loadXML(ls_rxxml) then
          begin
            Result := 0;
            Exit;
          end;
          ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
          if ('0000' = ls_MSG_Err) then
          begin
            lst_Node := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            Result := StrToIntDef(lst_Node.item[0].attributes.getNamedItem('Value').Text, 0);
          end else
          begin
            Result := 0;
          end;
        end;
      end;
    finally
      FreeAndNil(slReceive);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure SetJONLMT(memid: string; jonlmt: Integer);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad: string;
  sTemp, sParam : string;
  ls_rxxml: WideString;
  I, iCnt : Integer;
  asParam: array [1 .. 2] of string;
  slReceive: TStringList;
  ErrCode: Integer;
begin
  asParam[1] := memid;
  asParam[2] := inttostr(jonlmt);

  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE.xml');
  sTemp := 'SAVE_JONLMT(?';
  iCnt := 2;
  for I := 1 to iCnt do
  begin
    sTemp := sTemp + ',?';
    sParam := sParam + stringreplace(ls_Param, 'ParamString', En_Coding(asParam[I]), [rfReplaceAll]);
  end;
  sTemp := sTemp + ')';
  ls_TxLoad := stringreplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := stringreplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := stringreplace(ls_TxLoad, 'ClientKeyString', 'USR00', [rfReplaceAll]);
  ls_TxLoad := stringreplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := stringreplace(ls_TxLoad, 'CountString', inttostr(iCnt), [rfReplaceAll]);
  ls_TxLoad := stringreplace(ls_TxLoad, 'ParamString', sParam, [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        Application.ProcessMessages;
      end;
    end;
  finally
    FreeAndNil(slReceive);
  end;
end;

function Get_PremMax: Integer;
var
  sQuery: string;
  tmMax: Integer;
begin
  try
    if CHARGE_GUBUN = 'P' then
    begin
      sQuery := 'select nseq from CDMS_PREM_MAST ORDER BY nseq desc ';
			dmCharge.proc_SQLite_init;
			dmCharge.FDQuery_SQLite.Close;
			dmCharge.FDQuery_SQLite.SQL.Text := sQuery;
			dmCharge.FDQuery_SQLite.OPEN;
			dmCharge.FDQuery_SQLite.FindFirst;
			if dmCharge.FDQuery_SQLite.RecordCount <= 0 then
				tmMax := 0
      else
				tmMax := dmCharge.FDQuery_SQLite.Fields[0].AsInteger;
		end else
		if (CHARGE_GUBUN = 'S') or (CHARGE_GUBUN = 'O') then
		begin
      sQuery := 'select nseq from CDMS_SVPREM_MAST ORDER BY nseq ';
      dmCharge.proc_mysql_init;
			dmCharge.FDQuery1.Close;
      dmCharge.FDQuery1.SQL.Text := sQuery;
      dmCharge.FDQuery1.OPEN;
      dmCharge.FDQuery1.FindFirst;
      if dmCharge.FDQuery1.RecordCount <= 0 then
        tmMax := 0
      else
				tmMax := dmCharge.FDQuery1.Fields[0].AsInteger;
		end;
    Result := tmMax;
    OutputDebugString(PChar('심야할증최대순번:' + inttostr(tmMax)));
  except
    Result := 0;
  end;
end;

end.

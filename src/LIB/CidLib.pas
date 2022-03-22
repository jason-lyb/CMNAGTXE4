unit CidLib;

interface
uses
  Windows, SysUtils, Registry, inifiles, Variants, comobj, ADODB, StdCtrls,
  Forms, Classes, IdTCPClient, IdSocketHandle, IdTCPServer, xe_func;

{--------------------------------------------------------------------------------
                   CID DATA HEADER
---------------------------------------------------------------------------------
    Variable     |  Length   |  Description
---------------------------------------------------------------------------------
    sType        |       3   |  전문구분[Inbound(100,101,,), Outbound(201,202,,)
    sLine        |       4   |  전화국선라인(PRI,DID,DOD,국선,,)
    sStation     |       4   |  상담원 내선번호
    sResult      |       2   |  결과코드[00:성공,01:CID오류,02:실패,,]
    sTelNum      |      14   |  전화번호[일반전호, 핸드폰,,]
---------------------------------------------------------------------------------
CTI CID Receive Listening Server Port : 9557   // 9457 --> 9557 : 변경함.2007-12-12 최도순
CTI MakeCall    Listening Server Port : 9497
---------------------------------------------------------------------------------
CID Data Header Total Size : 27 Byte }

{Type
  HEADER = record
    sType        : array[0..2]  of char;   //  3   |  전문구분[Inbound(100,101,,), Outbound(201,202,,)
    sLine        : array[0..3]  of char;   //  4   |  전화국선라인(PRI,DID,DOD,국선,,)
    sStation     : array[0..3]  of char;   //  4   |  상담원 내선번호
    sResult      : array[0..1]  of char;   //  2   |  결과코드[00:성공,01:CID오류,02:실패,,]
    sTelNum      : array[0..13] of char;   // 14   |  전화번호[일반전호, 핸드폰,,]
  End; }
type
  HEADER = record
    sType: string[3];     //  3   |  전문구분[Inbound(100,101,,), Outbound(201,202,,)
    sLine: string[4];     //  4   |  전화국선라인(PRI,DID,DOD,국선,,)
    sMainLn: string[14];  // 14   |  대표전화번호(PRI,DID,DOD,국선대표번호,,)
    sStation: string[4];  //  4   |  상담원 내선번호
    sResult: string[2];   //  2   |  결과코드[00:성공,01:CID오류,02:실패,,]
    sTelNum: string[14];  // 14   |  전화번호[일반전호, 핸드폰,,]
    sSndTime: string[8];  //  8   |  전화 Inbound 시간[hh:mm:ss]        추가 2007-12-28
    sCityStr: string[4];  //  4   |  고객의 시/도    추가 2008-01-28
    sWardStr: string[20]; // 20   |  고객의 시/군/구 추가 2008-01-28
    sPostStr: string[20]; // 20   |  고객 현재 위치값(우편번호를 읍/면/동 으로 치환하여 넘겨줌) 추가 2007-12-28
  end; // total : 41 byte(Old) --> 93 byte(Now)

  // CTI Server Logout 문자열 만들기
function CTI_MakeLogoutStruct(sStation: string): string;
// CTI Server Login 문자열 만들기
function CTI_MakeLoginStruct(sStation: string): string;
// CTI Server 자료저장
function CTI_Check_Save(sRecieve: string): Boolean;

const

  // sType 에 대한 명령처리 상수 선언 ------------------------------------------------------
  // Login/Logout Scope
  PTYPE_CLIENT_LOGIN = '101'; // Client: 연결 요구 (login)
  //    Header.sType    = PTYPE_CLIENT_LOGIN; ( PC --> CTI )
  //    Header.sLine    = "0000";
  //    Header.sMainLn  = “              "; //대표번호
  //    Header.sStation = "0001";    // 0001은 내선 번호
  //    Header.sResult  = RSLT_OK;
  //    Header.sTelNum  = “               ";

  PTYPE_CONN_WAIT = '102'; // Client: 전화 받기 대기 중(상담원 접수 준비상태)
  //    Header.sType    = PTYPE_CONN_WAIT; ( PC --> CTI )
  //    Header.sLine    = "0000";
  //    Header.sMainLn  = “              "; //대표번호
  //    Header.sStation = "0001"; // 001은 Station 번호
  //    Header.sResult  = RSLT_OK;
  //    Header. sTelNum = “               ";

  PTYPE_NO_WAIT = '103'; // Client: 자리 비움(전화 받지 않음)
  //    Header.sType    = PTYPE_NO_WAIT; ( PC --> CTI )
  //    Header.sLine    = "0000"; // CTI 회선 번호
  //    Header.sMainLn  = “              "; //대표번호
  //    Header.sStation = "0001"; // 001은 Station 번호
  //    Header.sResult  = RSLT_OK;
  //    Header.sLength  = “               ";

  PTYPE_CLIENT_LOGOUT = '105'; // Client: 연결 종료 (logout)
  //    Header.sType    = PTYPE_CLIENT_LOGOUT;  ( PC --> CTI )
  //    Header.sLine    = "0000"; // CTI 회선 번호
  //    Header.sMainLn  = “              "; //대표번호
  //    Header.sStation = "0001"; // 001은 Station 번호
  //    Header.sResult  = RSLT_OK;
  //    Header.sLength  = “               ";

  PTYPE_LOGIN_SUCCESS = '106'; // Client: LOGIN 연결 성공
  //    Header.sType    = PTYPE_IN_DISCONNECT; ( CTI --> PC )
  //    Header.sLine    = "012"; // CTI 회선 번호
  //    Header.sMainLn  = “              "; //대표번호
  //    Header.sStation = "001"; // 001은 Station 번호
  //    Header.sResult  = RSLT_OK;
  //    Header.sLength  = "000";

//----------- Inbound Scope -------------
  PTYPE_REQ_INCONN = '111'; // Inbound: 개별 상담원 연결 요구
  //    Header.sType    = PTYPE_REQ_INCONN; ( CTI -> PC )
  //    Header.sLine    = "012"; // CTI 회선 번호
  //    Header.sMainLn  = “              "; //대표번호
  //    Header.sStation = "001"; // 001은 Station 번호
  //    Header.sResult  = RSLT_OK;
  //    Header.sTelNum  = “               ";  // 발신자 번호 : 14 Byte

  PTYPE_CONF_INCONN = '112'; // Inbound: 개별 상담원 연결 확인 ( PC -> CTI )
  //          PC에서 PTYPE_REQINCONN를 받고 PTYPE_CONFINCONN를
  //          보내면 상담원과 고객이 통화 연결됨
  //    Header.sType    = PTYPE_CONF_INCONN;
  //    Header.sLine    = "012"; // CTI 회선 번호
  //    Header.sMainLn  = “              "; //대표번호
  //    Header.sStation = "001"; // 001은 Station 번호
  //    Header.sResult  = RSLT_OK;
  //    Header.sTelNum  = “               ";

  PTYPE_INCONNECTED = '117'; // Inbound: 전화가 연결되었음 ( CTI -> PC )
  //          PC에서 PTYPE_REQINCONN를 받고 PTYPE_INCONNECTED를
  //          보내면 상담원과 고객이 통화 연결됨
  //    Header.sType    = PTYPE_CONFINCONN;
  //    Header.sLine    = "012"; // CTI 회선 번호
  //    Header.sMainLn  = “              "; //대표번호
  //    Header.sStation = "001"; // 001은 Station 번호
  //    Header.sResult  = RSLT_OK;
  //    Header.sTelNum  = “               ";
//----------- Outbound Scope -------------
  PTYPE_REQ_DIAL = '211'; // Outbound: 개별 상담원 Dial 요구   pc -> cti
  //    Header.sType    = PTYPE_REQ_DIAL;
  //    Header.sLine    = "0000";   // CTI 회선 번호
  //    Header.sMainLn  = “              "; //대표번호
  //    Header.sStation = “0001"; // 001은 Station 번호
  //    Header.sResult  = RSLT_OK;
  //    Header.sLength  = “               ";
  //    "21010000000010001601039055636"
  PTYPE_RSLT_DIAL = '212';
  // Outbound: 개별 상담원 Dial 결과 cti -> pc (전화걸기 성공)
//    Header.sType    = PTYPE_RSLT_DIAL;
//    Header.sLine    = "0001";   // 국선 번호
//    Header.sMainLn  = “              "; //대표번호
//    Header.sStation = "0001"; // 001은 Station 번호
//    Header.sResult  = RSLT_OK;
//    Header.sTelNum  = “               ";
  PTYPE_CONFRSLT_DIAL = '213';
  // Outbound: 개별 상담원 Dial 결과 확인     cti -> pc (연결)
//    Header.sType    = PTYPE_CONFRSLT_DIAL;
//    Header.sLine    = "0001";   // 국선 번호
//    Header.sMainLn  = “              "; //대표번호
//    Header.sStation = "0001"; // 001은 Station 번호
//    Header.sResult  = RSLT_OK;
//    Header.sTelNum  = “               ";
  PTYPE_OUT_DISCONNECT = '209'; // Outbound: 연결 종료[전화 끈어짐]  cti --> pc
  //    Header.sType    = PTYPE_OUT_DISCONNECT;
  //    Header.sLine    = "0001";   // 국선 번호
  //    Header.sMainLn  = “              "; //대표번호
  //    Header.sStation = "0001"; // 001은 Station 번호
  //    Header.sResult  = RSLT_OK;
  //    Header.sTelNum  = “               ";

//---------------------------------------------------------------------------------
//    sResult 결과코드 Constant
  RSLT_OK = '00'; // 명령 성공
  RSLT_BUSY = '01'; // Line 사용중..
  RSLT_TBUSY = '02'; // Trunk Busy
  RSLT_GBUSY = '03'; // 상담원 Group Busy
  RSLT_LOGOUT = '04'; // 상담원이 Logout상태임
  RSLT_INVALIDSTATION = '06'; // 상담원 번호 오류
  RSLT_INVALIDGROUP = '07'; // 상담원 Group번호 오류
  RSLT_STATIONBUSY = '08'; // 다른 Group으로 Station사용중
  RSLT_OUTCONN = '10'; // Outbound 통화 연결
  RSLT_NOANSWER = '11'; // No Answer
  RSLT_ERROR = '99'; // ERROR
  //---------------------------------------------------------------------------------

  //  F_HANDLE            = $FFFFFFFF;
  //  MemoryName          = 'SharedMemory';
  Space = #$20;
  backspace = #8;
  del = #48; //if not ((Key in [del,backspace,'0'..'9'])) then   Key := #0;
  Stx = #2;
  Etx = #3;
  CR = #13; //D
  LF = #10; //A
  ACK = #6;
  NAK = #21;
  Enq = #5;
  EOT = #4;

var
  // CID 통신 구조체 변수
  gSendHeader: HEADER;
  gRecvHeader: HEADER;

  gCIDSender: string[93];

implementation

// CTI Server Login 문자열 만들기
function CTI_MakeLoginStruct(sStation: string): string;
begin
  Result := '';

  sStation := StringReplace(sStation, ' ', '', [rfReplaceAll]);

  // CID 서버 로그인
  FillChar(gSendHeader, sizeof(gSendHeader), ' ');
  if pos(',', sStation) = 0 then
  begin
    gSendHeader.sType := PTYPE_CLIENT_LOGIN;
    gSendHeader.sLine := '0000';
    gSendHeader.sMainLn := '              ';
    gSendHeader.sStation := Rpad(Copy(sStation, 1, 4), 4, ' ');
    gSendHeader.sResult := RSLT_OK;
    gSendHeader.sTelNum := '              ';
    gSendHeader.sSndTime := '        '; // time    : hh:mm:ss        2008-01-22
    gSendHeader.sCityStr := '    '; // 시/도
    gSendHeader.sWardStr := '                    '; // 시/군/구
    gSendHeader.sPostStr := '                    '; // 읍/면/동
  end
  else
  begin
    gSendHeader.sType := PTYPE_CLIENT_LOGIN;
    gSendHeader.sLine := '9999';
    gSendHeader.sMainLn := '              ';
    case length(sStation) of
      0..4:
        begin
          gSendHeader.sStation := Rpad(Copy(sStation, 1, 4), 4, ' ');
          gSendHeader.sResult := '  ';
          gSendHeader.sTelNum := '              ';
        end;
      5..6:
        begin
          gSendHeader.sStation := Rpad(Copy(sStation, 1, 4), 4, ' ');
          gSendHeader.sResult := Rpad(Copy(sStation, 5, 2), 2, ' ');
          gSendHeader.sTelNum := '              ';
        end;
    else
      begin
        gSendHeader.sStation := Rpad(Copy(sStation, 1, 4), 4, ' ');
        gSendHeader.sResult := Rpad(Copy(sStation, 5, 2), 2, ' ');
        gSendHeader.sTelNum := Rpad(Copy(sStation, 7, 14), 14, ' ');
      end;
    end;
    gSendHeader.sSndTime := '        ';
    // time    : hh:mm:ss         2008-01-22
    gSendHeader.sCityStr := '    '; // 시/도
    gSendHeader.sWardStr := '                    '; // 시/군/구
    gSendHeader.sPostStr := '                    '; // PostStr : space 20 byte
  end;

  gCIDSender := gSendHeader.sType + gSendHeader.sLine + gSendHeader.sMainLn +
    gSendHeader.sStation
    + gSendHeader.sResult + gSendHeader.sTelNum + gSendHeader.sSndTime
    + gSendHeader.sCityStr + gSendHeader.sWardStr + gSendHeader.sPostStr;
  // 2008-01-22

  Result := gCIDSender;
end;

// CTI Server Logout 문자열 만들기

function CTI_MakeLogoutStruct(sStation: string): string;
begin
  Result := '';

  // CID 서버 로그아웃
  if pos(',', sStation) = 0 then
  begin
    gSendHeader.sType := PTYPE_CLIENT_LOGOUT;
    gSendHeader.sLine := '0000';
    gSendHeader.sMainLn := '              ';
    gSendHeader.sStation := Rpad(Copy(sStation, 1, 4), 4, ' ');
    gSendHeader.sResult := RSLT_OK;
    gSendHeader.sTelNum := '              ';
    gSendHeader.sSndTime := '        '; // time    : hh:mm:ss        2008-01-22
    gSendHeader.sCityStr := '    '; // 시/도
    gSendHeader.sWardStr := '                    '; // 시/군/구
    gSendHeader.sPostStr := '                    '; // PostStr : space 20 byte
  end else
  begin
    gSendHeader.sType := PTYPE_CLIENT_LOGOUT;
    gSendHeader.sLine := '9999';
    gSendHeader.sMainLn := '              ';
    case length(sStation) of
      0..4:
        begin
          gSendHeader.sStation := Rpad(Copy(sStation, 1, 4), 4, ' ');
          gSendHeader.sResult  := '  ';
          gSendHeader.sTelNum  := '              ';
        end;
      5..6:
        begin
          gSendHeader.sStation := Rpad(Copy(sStation, 1, 4), 4, ' ');
          gSendHeader.sResult  := Rpad(Copy(sStation, 5, 2), 2, ' ');
          gSendHeader.sTelNum  := '              ';
        end;
    else
      begin
        gSendHeader.sStation  := Rpad(Copy(sStation, 1, 4), 4, ' ');
        gSendHeader.sResult   := Rpad(Copy(sStation, 5, 2), 2, ' ');
        gSendHeader.sTelNum   := Rpad(Copy(sStation, 7, 14), 14, ' ');
      end;
    end;
    gSendHeader.sSndTime := '        ';
    // time    : hh:mm:ss         2008-01-22
    gSendHeader.sCityStr := '    '; // 시/도
    gSendHeader.sWardStr := '                    '; // 시/군/구
    gSendHeader.sPostStr := '                    '; // PostStr : space 20 byte

  end;

  gCIDSender := gSendHeader.sType + gSendHeader.sLine + gSendHeader.sMainLn +
                gSendHeader.sStation + gSendHeader.sResult + gSendHeader.sTelNum +
                gSendHeader.sSndTime + gSendHeader.sCityStr + gSendHeader.sWardStr +
                gSendHeader.sPostStr;

  Result := gCIDSender;
end;

// CTI Server 자료저장

function CTI_Check_Save(sRecieve: string): Boolean;
begin
  Result := False;

  gRecvHeader.sType    := Trim(copy(sRecieve,  1,  3));  //  3   3  |  전문구분[Inbound(100,101,,), Outbound(201,202,,)
  gRecvHeader.sLine    := Trim(copy(sRecieve,  4,  4));  //  4   7  |  전화국선라인(PRI,DID,DOD,국선,,)
  gRecvHeader.sMainLn  := Trim(copy(sRecieve,  8, 14));  // 14  21  |  대표전화번호(PRI,DID,DOD,국선대표번호,,)
  gRecvHeader.sStation := Trim(copy(sRecieve, 22,  4));  //  4  25  |  상담원 내선번호
  gRecvHeader.sResult  := Trim(copy(sRecieve, 26,  2));  //  2  27  |  결과코드[00:성공,01:CID오류,02:실패,,]
  gRecvHeader.sTelNum  := Trim(copy(sRecieve, 28, 14));  // 14  41  |  전화번호[일반전호, 핸드폰,,]
  gRecvHeader.sSndTime := Trim(copy(sRecieve, 42,  8));  //  8  49  |  time    : hh:mm:ss    2008-01-22
  gRecvHeader.sCityStr := Trim(copy(sRecieve, 50,  4));  //  4  53  |  시/도
  gRecvHeader.sWardStr := Trim(copy(sRecieve, 54, 20));  // 20  73  |  시/군/구
  gRecvHeader.sPostStr := Trim(copy(sRecieve, 74, 20));  // 20  93  |  읍/면/동

  Result := True;
end;

end.


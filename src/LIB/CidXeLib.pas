unit CidXeLib;

interface
uses
  Windows, SysUtils, Registry, inifiles, Variants, comobj, ADODB, StdCtrls,
  Forms, Classes, IdTCPClient, IdSocketHandle, IdTCPServer, xe_func;

{--------------------------------------------------------------------------------
                   CID XE DATA HEADER
---------------------------------------------------------------------------------
    Variable     |  Length   |  Description
---------------------------------------------------------------------------------
    sType        |       1   |  전문구분[Inbound(A,B,,), Outbound(,,,)
    sLine        |      13   |  전화국선라인(Tindex: PRI, DID, DOD, 국선번호,,)
    sMainln      |      13   |  대표전화번호(PRI, DID, DOD, 국선대표번호,,)
    sStation     |      10   |  상담원 내선번호
    sTelNum      |      13   |  전화번호[일반전호, 핸드폰,,]
    sSndTime     |       8   |  전송시간[hh:mm:ss]
    sBrNo        |       5   |  지사코드
---------------------------------------------------------------------------------
CTI CID Receive Listening Server Port : 9557
CTI MakeCall    Listening Server Port : 9497
---------------------------------------------------------------------------------
CID Data Header Total Size : 63 Byte }

type
  XEHEADER = record
    sType    : string[01];  //  1 | 전문구분[Inbound(100,101,,), Outbound(201,202,,)
    sLine    : string[13];  // 13 | 전화국선라인(PRI,DID,DOD,국선,,)
    sMainLn  : string[13];  // 13 | 대표전화번호(PRI,DID,DOD,국선대표번호,,)
    sStation : string[10];  // 10 | 상담원 내선번호
    sTelNum  : string[13];  // 13 | 전화번호[일반전호, 핸드폰,,]
    sSndTime : string[08];  //  8 | 전화 Inbound 시간[hh:mm:ss]        추가 2014-04-20
    sBrNo    : string[05];  //  5 | 지사코드                           추가 2014-04-25
  end; // total : 63 byte

// CTI Server Login 문자열 만들기
function CTIXE_MakeLoginStruct(sStation: string): string;
// CTI Server 자료저장
function CTIXE_Check_Save(sRecieve: string): Boolean;
// CTI HeartBeat
function CTIXE_MakeHeartbeat(sStation: string) : string;
// CTI LUG+ 센트릭스 070번호 전송 -> 서버에서 대표번호로 변환 재 수신
function CTIXE_MakeLGUMake(sStation: string) : string;

const
  // sType 에 대한 명령처리 상수 선언 ------------------------------------------------------
  T_LOGIN_REQUEST  = 'L'; // 로그인 요청
  T_LOGIN_RESPONSE = 'R'; // 로그인 응답
	T_CALLING_INFO   = 'C'; // CID 콜링
	T_HEARTBEAT      = 'H'; // Alive 하트비트
	T_AUTOCALL       = 'A'; // 오토콜
	T_LGUCENTREX     = 'G'; // LGU+ 센트릭스
	T_SERVERDISCONNECT = 'T'; // 상담원 서버 종료하기 전 연결끊고 4초후부터 재접속 시도 요청전문[2019-11-19]

  // sResult 결과코드 Constant
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

  FCID_CON_Y = 'CID 서버 연결 완료';
  FCID_CON_N = 'CID 서버 연결 종료';
  FCID_CON_I = 'CID 서버 연결 시도중..';

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
  gXeSendHeader: XEHEADER;
  gXeRecvHeader: XEHEADER;

  gCIDXESender: string[63]; //  63 byte

implementation

// CTI Server Login 문자열 만들기


uses xe_GNL;

function CTIXE_MakeLoginStruct(sStation: string): string;
Var sMultiLine : string[30];
    sMultiId   : string[19];
begin
  Result := '';

  sStation := StringReplace(sStation, ' ', '', [rfReplaceAll]);

  // CID 서버 로그인
  FillChar(gXeSendHeader, sizeof(gXeSendHeader), ' ');
  if pos(',', sStation) = 0 then
  begin
    gXeSendHeader.sType    := T_LOGIN_REQUEST;
    gXeSendHeader.sLine    := Rpad('', 13, ' ');
    gXeSendHeader.sMainLn  := Rpad('', 13, ' ');
    gXeSendHeader.sStation := Rpad(Copy(sStation, 1, 4), 10, ' ');
    gXeSendHeader.sTelNum  := Rpad(GT_USERIF.ID, 13, ' ');
    gXeSendHeader.sSndTime := Rpad('',  8, ' ');
    gXeSendHeader.sBrNo    := Rpad('',  5, ' ');

    gCIDXESender := gXeSendHeader.sType + gXeSendHeader.sLine + gXeSendHeader.sMainLn +
                    gXeSendHeader.sStation + gXeSendHeader.sTelNum + gXeSendHeader.sSndTime + gXeSendHeader.sBrNo;
  end else
  begin
    gXeSendHeader.sType := T_LOGIN_REQUEST;
    gXeSendHeader.sLine := Rpad('9999', 13, ' ');
    sMultiLine := Rpad(sStation, 30, ' ');
    sMultiId   := Rpad(GT_USERIF.ID,  19, ' ');

    gCIDXESender := gXeSendHeader.sType + gXeSendHeader.sLine + sMultiLine + sMultiId;
  end;

  Result := gCIDXESender;
end;

// CTI Server Heartbeat
function CTIXE_MakeHeartbeat(sStation: string) : string;
begin
  Result := '';

  FillChar(gXeSendHeader, sizeof(gXeSendHeader), ' ');

  gXeSendHeader.sType    := T_HEARTBEAT;
  gXeSendHeader.sLine    := Rpad('', 13, ' ');
  gXeSendHeader.sMainLn  := Rpad('', 13, ' ');
  gXeSendHeader.sStation := Rpad(Copy(sStation, 1, 4), 10, ' ');
  gXeSendHeader.sTelNum  := Rpad('', 13, ' ');
  gXeSendHeader.sSndTime := Rpad('',  8, ' ');
  gXeSendHeader.sBrNo    := Rpad('',  5, ' ');

  gCIDXESender := gXeSendHeader.sType + gXeSendHeader.sLine + gXeSendHeader.sMainLn +
                  gXeSendHeader.sStation + gXeSendHeader.sTelNum + gXeSendHeader.sSndTime + gXeSendHeader.sBrNo;

  Result := gCIDXESender;
end;

function CTIXE_MakeLGUMake(sStation: string) : string;
begin
  Result := '';

  FillChar(gXeSendHeader, sizeof(gXeSendHeader), ' ');

  gXeSendHeader.sType    := T_LGUCENTREX;
  gXeSendHeader.sLine    := Rpad(Trim(Copy(sStation, 23, 14)), 13, ' '); // 070번호
  gXeSendHeader.sMainLn  := Rpad('', 13, ' ');
  gXeSendHeader.sStation := Rpad(Trim(Copy(sStation, 18, 5 )), 10, ' '); // 내선번호
  gXeSendHeader.sTelNum  := Rpad(Trim(Copy(sStation, 4 , 14)), 13, ' '); // 고객번호
  gXeSendHeader.sSndTime := Rpad(FormatDateTime('HH:NN:SS', Now),  8, ' ');
  gXeSendHeader.sBrNo    := Rpad('',  5, ' ');

  gCIDXESender := gXeSendHeader.sType + gXeSendHeader.sLine + gXeSendHeader.sMainLn +
                  gXeSendHeader.sStation + gXeSendHeader.sTelNum + gXeSendHeader.sSndTime + gXeSendHeader.sBrNo;

  Result := gCIDXESender;
end;

// CTI Server 자료저장
function CTIXE_Check_Save(sRecieve: string): Boolean;
begin
	Result := False;

	gXeRecvHeader.sType    := Trim(copy(sRecieve,   1,  1));  //  1   1  |  전문구분[Inbound(100,101,,), Outbound(201,202,,)
	gXeRecvHeader.sLine    := Trim(copy(sRecieve,   2, 13));  // 13  14  |  전화국선라인(PRI,DID,DOD,국선,,)
  gXeRecvHeader.sMainLn  := Trim(copy(sRecieve,  15, 13));  // 13  27  |  대표전화번호(PRI,DID,DOD,국선대표번호,,)
	gXeRecvHeader.sStation := Trim(copy(sRecieve,  28, 10));  // 10  37  |  상담원 내선번호
  gXeRecvHeader.sTelNum  := Trim(copy(sRecieve,  38, 13));  // 13  50  |  전화번호[일반전호, 핸드폰,,]
  gXeRecvHeader.sSndTime := Trim(copy(sRecieve,  51,  8));  //  8  58  |  time    : hh:mm:ss
  gXeRecvHeader.sBrNo    := Trim(copy(sRecieve,  59,  5));  //  5  63  |  지사코드

  Result := True;
end;

end.

